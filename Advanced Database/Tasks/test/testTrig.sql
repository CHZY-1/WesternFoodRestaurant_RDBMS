
-- test trig

-- trigger 1 update reservation status based on order (check if the customer has made a reservation on specific date)
-- trigger 2 maintain order reservation table

SELECT * FROM OrderReservationAudit; -- maintain order reservation

SELECT * FROM ReservationAuditLog;  -- update reservation status

-- valid

SELECT * FROM reservations WHERE reservationID = 'R078';

DELETE FROM orders WHERE orderID = 'O0154' OR orderID = 'O0155' OR orderID = 'O0156' OR orderID = 'O0157' OR orderID = 'O0158';

INSERT INTO Customers (customerID,customerName,customerEmail,customerPhone,customerAddress) VALUES ('C078','Uriah Stephens','uriahstephens@outlook.com','018-389-7433','Ap #446-9001 Auctor Avenue');
INSERT INTO Customers (customerID,customerName,customerEmail,customerPhone,customerAddress) VALUES ('C079','Ruby Herman','rubyherman2161@yahoo.com','015-248-4166','5658 Vehicula Av.');
INSERT INTO Customers (customerID,customerName,customerEmail,customerPhone,customerAddress) VALUES ('C080','Rae Russo','raerusso@hotmail.com','019-576-3218','Ap #665-8705 Ante. St.');

INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID)  VALUES ('R078', TO_DATE('09/10/2023', 'MM/DD/YYYY'), 2, 'BOOKED', 'C078', 'T12');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID)  VALUES ('R079', TO_DATE('09/10/2023', 'MM/DD/YYYY'), 4, 'ARRIVED', 'C079', 'T03');


UPDATE reservations SET reservationStatus = 'BOOKED' where reservationID = 'R078' OR reservationID = 'R079';

SELECT * FROM ORDERS;

SELECT * FROM reservations WHERE customerID = 'C078';
SELECT * FROM reservations WHERE customerID = 'C079';

SELECT * FROM orders WHERE customerID = 'C078'

INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID)  VALUES ('O0154', TO_DATE('09/10/2023', 'MM/DD/YYYY'), 'PROCESSING', 'E006', 'C078');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID)  VALUES ('O0155', TO_DATE('09/10/2023', 'MM/DD/YYYY'), 'PROCESSING', 'E007', 'C079');


SELECT * FROM OrderReservations;

-- not valid

-- customerID -> null
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID)  VALUES ('O0156', TO_DATE('09/10/2023', 'MM/DD/YYYY'), 'PROCESSING', 'E008', null);
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID)  VALUES ('O0157', TO_DATE('09/10/2023', 'MM/DD/YYYY'), 'PROCESSING', 'E010', null);

-- no matching reservation (date not matched)

DELETE FROM reservations WHERE reservationID = 'R080';

INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID)  VALUES ('R080', TO_DATE('11/30/2023', 'MM/DD/YYYY'), 4, 'BOOKED', 'C080', 'T03');

SELECT * FROM reservations WHERE customerID = 'C080';

INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID)  VALUES ('O0158', TO_DATE('09/10/2023', 'MM/DD/YYYY'), 'PROCESSING', 'E007', 'C080');

SELECT * FROM ORDERS;



-- 

SELECT * FROM OrderReservations;

DELETE FROM OrderReservations;

DELETE FROM orders WHERE orderID = 'O0154' OR orderID = 'O0155' OR orderID = 'O0156' OR orderID = 'O0157' OR orderID = 'O0158';

DELETE FROM reservations WHERE reservationID = 'R078' OR reservationID = 'R079' OR reservationID = 'R080';

