CREATE OR REPLACE PROCEDURE placeReservation(
    p_customerID IN VARCHAR,
    p_reservationDate IN DATE,
    p_noOfPeople IN NUMBER,
    p_tableID OUT VARCHAR
) AS
    v_tableID VARCHAR(10);
	v_new_reservation_id VARCHAR(10);
BEGIN
    -- Input validation for parameters.
    IF p_customerID IS NULL OR p_reservationDate IS NULL OR p_noOfPeople IS NULL THEN
        DBMS_OUTPUT.PUT_LINE('Invalid input parameters.');
        p_tableID := NULL;
        RETURN;
    END IF;

    -- Check if the table is available
    SELECT tableID
    INTO v_tableID
    FROM Tables
    WHERE tableReservationStatus = 'EMPTY'
      AND tableCapacity >= p_noOfPeople
      AND ROWNUM = 1
    ORDER BY tableCapacity ASC;

    -- If a table is available, proceed with the reservation
    IF v_tableID IS NOT NULL THEN
        -- Start a transaction
        BEGIN
            -- Update table reservation status
            UPDATE Tables
            SET tableReservationStatus = 'BOOKED'
            WHERE tableID = v_tableID;
			
			-- ReservationID based on the latest reservation.
			SELECT 'R' || TO_CHAR(TO_NUMBER(SUBSTR(MAX(reservationID), 2)) + 1, 'FM000')
			INTO v_new_reservation_id
			FROM Reservations;

            -- Insert new reservation
            INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID)
			VALUES (v_new_reservation_id, p_reservationDate, p_noOfPeople, 'BOOKED', p_customerID, v_tableID );
				
            p_tableID := v_tableID;
            DBMS_OUTPUT.PUT_LINE('Reservation id '|| v_new_reservation_id ||' placed successfully. Table reserved: ' || v_tableID);
        EXCEPTION
            WHEN DUP_VAL_ON_INDEX THEN
                -- Handle unique constraint violation (fail to insert reservation)
                DBMS_OUTPUT.PUT_LINE('Error: Duplicate reservation.');
                p_tableID := NULL;
            WHEN OTHERS THEN
                -- Handle other exceptions
                DBMS_OUTPUT.PUT_LINE('Error placing reservation: ' || SQLERRM);
                p_tableID := NULL;
        END;
    ELSE
        p_tableID := NULL;
        DBMS_OUTPUT.PUT_LINE('No available table for the given number of people.');
    END IF;
	
EXCEPTION
    WHEN OTHERS THEN
        p_tableID := NULL;
        DBMS_OUTPUT.PUT_LINE('Error placing reservation: ' || SQLERRM);
END;
/