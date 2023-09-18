DROP SEQUENCE SEQ_RESERVATION_AUDIT_LOG;

CREATE SEQUENCE SEQ_RESERVATION_AUDIT_LOG
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;

DROP TABLE ReservationAuditLog;

CREATE TABLE ReservationAuditLog (
    auditID NUMBER,
    customerID VARCHAR(12) NOT NULL,
    reservationID VARCHAR(12) NOT NULL,
    status_change_timestamp TIMESTAMP,
    PRIMARY KEY (auditID)
);

CREATE OR REPLACE FUNCTION ReservationExists(p_customerID IN VARCHAR, p_orderDate IN DATE)
RETURN BOOLEAN IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM Reservations
    WHERE customerID = p_customerID 
	AND TRUNC(reservationDate) = TRUNC(p_orderDate);

    RETURN v_count > 0;
END;
/

CREATE OR REPLACE TRIGGER trigUpdateReservationStatus
AFTER INSERT ON Orders
FOR EACH ROW
DECLARE
    v_reservation_status VARCHAR(20);
	v_reservation_id VARCHAR(10);
    v_audit_id NUMBER;
	
	no_reservation_found EXCEPTION;
	reservation_already_arrived EXCEPTION;
BEGIN
	IF ReservationExists(:NEW.customerID, :NEW.orderDate) THEN
		-- Check if the customer has made a reservation on the order date
		SELECT reservationStatus, reservationID
		INTO v_reservation_status, v_reservation_id
		FROM Reservations
		WHERE customerID = :NEW.customerID
		AND TRUNC(reservationDate) = TRUNC(:NEW.orderDate); -- truncate the time portion from a date
		
		IF v_reservation_status IS NOT NULL THEN
		
			-- Update reservation status to 'ARRIVED'
			UPDATE Reservations
			SET reservationStatus = 'ARRIVED'
			WHERE reservationID = v_reservation_id;
			
			DBMS_OUTPUT.PUT_LINE('Reservation ' || v_reservation_id || ' Updated ');
				
			-- insert to ReservationAuditLog table
			SELECT SEQ_RESERVATION_AUDIT_LOG.NEXTVAL INTO v_audit_id FROM DUAL;
			INSERT INTO ReservationAuditLog (auditID, customerID, reservationID, status_change_timestamp)
			VALUES (v_audit_id, :NEW.customerID, v_reservation_id, SYSTIMESTAMP);
				
			IF v_reservation_status != 'ARRIVED' THEN	
				DBMS_OUTPUT.PUT_LINE('Reservation ' || v_reservation_id || ' status from '|| v_reservation_status ||' changed to ARRIVED.');
			ELSE
				RAISE reservation_already_arrived;
			END IF;
		END IF;
		
	ELSE
		-- customer not exists in the reservation table 
		RAISE no_reservation_found;
		
	END IF;
	
EXCEPTION
	WHEN no_reservation_found THEN
        DBMS_OUTPUT.PUT_LINE('No reservation found for this customer on the order date, cannot update reservation status.');
		
	WHEN reservation_already_arrived THEN
		DBMS_OUTPUT.PUT_LINE('Customer reservation status is already marked as "ARRIVED".');
		
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error in the trigger: ' || SQLERRM);
END;
/

