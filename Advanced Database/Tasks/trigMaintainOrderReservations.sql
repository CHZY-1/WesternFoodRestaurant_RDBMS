-- create the sequence for orderReservationID, recreate this sequence if it already exists.
DROP SEQUENCE SEQ_LOG_ORDER_RESERVATIONS;

CREATE SEQUENCE SEQ_LOG_ORDER_RESERVATIONS
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;


DROP TABLE OrderReservationAudit;

CREATE TABLE OrderReservationAudit (
    auditID NUMBER,
    orderReservationID VARCHAR(10),
    orderID VARCHAR(10),
    reservationID VARCHAR(10),
    auditTimestamp TIMESTAMP
	);

-- trigger to generate auditID	
CREATE OR REPLACE TRIGGER trigOrderReservationAudit
BEFORE INSERT ON OrderReservationAudit
FOR EACH ROW
BEGIN
    SELECT SEQ_LOG_ORDER_RESERVATIONS.NEXTVAL INTO :NEW.auditID FROM DUAL;
END;
/


DROP SEQUENCE SEQ_ORDER_RESERVATIONID;

-- procedure to get the latest orderReservationID for auto increment.
DECLARE
   v_max_order_reservation_id VARCHAR2(10);
   v_start_with NUMBER;
BEGIN
   SELECT MAX(orderReservationID)
   INTO v_max_order_reservation_id
   FROM OrderReservations;

   IF v_max_order_reservation_id IS NOT NULL THEN
      v_start_with := TO_NUMBER(SUBSTR(v_max_order_reservation_id, 3)) + 1;
   ELSE
      v_start_with := 1; -- If no existing values, start with 1.
   END IF;

   -- Create or replace the sequence with the calculated START WITH value.
   EXECUTE IMMEDIATE 'CREATE SEQUENCE SEQ_ORDER_RESERVATIONID START WITH ' || v_start_with || ' INCREMENT BY 1 NOCACHE NOCYCLE';
END;
/

-- Function to check whether the customer has made a reservation on the order date
CREATE OR REPLACE FUNCTION ReservationExists(p_customerID IN VARCHAR, p_orderDate IN DATE)
RETURN BOOLEAN IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM Reservations
    WHERE customerID = p_customerID 
	AND TRUNC(reservationDate) = TRUNC(p_orderDate); -- truncate the time portion from a date

    RETURN v_count > 0;
END;
/

-- Function to retrieve reservation id for the particular customer that has made a reservation on the order date
CREATE OR REPLACE FUNCTION GetReservationID(p_customerID IN VARCHAR, p_orderDate IN DATE)
RETURN VARCHAR IS
   v_reservation_id VARCHAR(10);
BEGIN
   v_reservation_id := NULL;
   
   -- Retrieve the reservation ID
   SELECT reservationID
   INTO v_reservation_id
   FROM Reservations
   WHERE customerID = p_customerID
   AND TRUNC(reservationDate) = TRUNC(p_orderDate);
   
   RETURN v_reservation_id;
EXCEPTION
   WHEN NO_DATA_FOUND THEN
      RETURN NULL;
   WHEN OTHERS THEN
      RETURN NULL;
END;
/


CREATE OR REPLACE TRIGGER trigMaintainOrderReservations
AFTER INSERT ON Orders
FOR EACH ROW
DECLARE
   v_next_order_reservation_id VARCHAR(10);
   v_reservation_id VARCHAR(10);
   
   no_matching_reservation EXCEPTION;
BEGIN
	-- Check if the customer exists in the reservations table
	IF ReservationExists(:NEW.customerID, :NEW.orderDate) THEN
	
		v_reservation_id := GetReservationID(:NEW.customerID, :NEW.orderDate); 

		-- If a customer exists and the order and reservation date matched.
		IF v_reservation_id IS NOT NULL THEN
		  -- Get the next orderReservationID
		  SELECT 'RT' || TO_CHAR(SEQ_ORDERRESERVATIONID.NEXTVAL, 'FM0000')
		  INTO v_next_order_reservation_id
		  FROM DUAL;

		  -- Insert into OrderReservations
		  INSERT INTO OrderReservations (orderReservationID, orderID, reservationID)
		  VALUES (v_next_order_reservation_id, :NEW.orderID, v_reservation_id);
		  DBMS_OUTPUT.PUT_LINE('Order '|| :NEW.orderID ||' and Reservation '
								||  v_reservation_id ||' added to OrderReservations ' 
								|| v_next_order_reservation_id);

		  -- Insert into OrderReservationAudit
		  INSERT INTO OrderReservationAudit (orderReservationID, orderID, reservationID, auditTimestamp)
		  VALUES (v_next_order_reservation_id, :NEW.orderID, v_reservation_id, SYSTIMESTAMP);
		  
		END IF;
	ELSE
		RAISE no_matching_reservation;
		
	END IF;
EXCEPTION
	WHEN no_matching_reservation THEN
        DBMS_OUTPUT.PUT_LINE('No matching reservation found for the provided customer and order date, no data added to orderReservations.');

	WHEN OTHERS THEN
		DBMS_OUTPUT.PUT_LINE('Error Message: ' || SQLERRM);
		RAISE_APPLICATION_ERROR(-20004, 'An unexpected error occurred.');
END;
/





