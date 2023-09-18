-- INSERT INTO Customers (customerID, customerName, customerEmail, customerPhone, customerAddress) VALUES ('C015', 'Norbie Grabbam', 'ngrabbam4@gmail.com', '011-725-1749', '803 Summer Ridge Junction');
-- INSERT INTO Customers (customerID, customerName, customerEmail, customerPhone, customerAddress) VALUES ('C001', 'Dimitri Roney', 'droney0@gmail.com', '011-961-9537', '8009 Barnett Way');

-- INSERT INTO Tables (tableID, tableNumber, tableCapacity, tableType, tableReservationStatus) VALUES ('T04', 4, 4, 'Small', 'EMPTY');
-- INSERT INTO Tables (tableID, tableNumber, tableCapacity, tableType, tableReservationStatus) VALUES ('T05', 5, 6, 'Medium', 'BOOKED');

-- INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R001', TO_DATE('06/15/2023', 'MM/DD/YYYY'), 5, 'ACCEPT', 'C001', 'T05');

-- Test procedure 1 : Add New Reservation

SET SERVEROUTPUT ON

SELECT * FROM reservations WHERE customerID = 'C001';
SELECT * FROM tables;

UPDATE Tables SET tableReservationStatus = 'EMPTY' WHERE tableID = 'T07' OR tableID = 'T08';

DELETE FROM reservations WHERE reservationID = 'R082';

DECLARE
    v_tableID VARCHAR(10);
BEGIN

    PlaceReservation('C001', TO_DATE('09/17/2023', 'MM/DD/YYYY'), 6, v_tableID);
	
	-- PlaceReservation(NULL, NULL, NULL, '');
	
    IF v_tableID IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Reservation successful. Table reserved: ' || v_tableID);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Reservation failed.');
    END IF;
END;
/

select * from reservations where customerID = 'C001';

select * from tables where tableID = 'T07';

UPDATE Tables SET tableReservationStatus = 'EMPTY' WHERE tableID = 'T07';



-- Test procedure 2 Update Order Status


-- INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) 
-- VALUES ('O0001', TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E014', 'C001');

-- INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) 
-- VALUES ('O0017', TO_DATE('06/13/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E005', 'C029');

-- INSERT INTO Customers (customerID, customerName, customerEmail, customerPhone, customerAddress) 
-- VALUES ('C001', 'Dimitri Roney', 'droney0@gmail.com', '011-961-9537', '8009 Barnett Way');

-- INSERT INTO Customers (customerID, customerName, customerEmail, customerPhone, customerAddress) 
-- VALUES ('C029', 'Jervis Beteriss', 'jbeterissi@gmail.com', '010-548-2583', '0 Esker Avenue');


DECLARE
    v_orderID VARCHAR(10);
    v_newStatus VARCHAR(20);
BEGIN

    v_orderID := 'O0017';
    v_newStatus := 'COMPLETE';

    UpdateOrderStatus(v_orderID, v_newStatus);

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);
END;
/

SELECT * FROM orders WHERE orderID = 'O0017';

UPDATE orders SET orderStatus = 'COMPLETED' WHERE orderID = 'O0017';





