CREATE TABLE Tables (
	tableID VARCHAR(10) NOT NULL,
	tableNumber NUMBER(3),
	tableCapacity NUMBER(3),
	tableType VARCHAR(50),
	tableReservationStatus VARCHAR(20),
	orderID VARCHAR(10),
	PRIMARY KEY (tableID),
	FOREIGN KEY (orderID) REFERENCES Orders (orderID),
	CONSTRAINT checkingTableCapacity Check(tableCapacity >= 0),
	CONSTRAiNT chk_tableid CHECK (tableID LIKE 'T%')
);

INSERT INTO Tables (tableID, tableNumber, tableCapacity, tableType, tableReservationStatus) VALUES ('T01', 1, 4, 'Small', 'BOOKED');
INSERT INTO Tables (tableID, tableNumber, tableCapacity, tableType, tableReservationStatus) VALUES ('T02', 2, 4, 'Small', 'BOOKED');
INSERT INTO Tables (tableID, tableNumber, tableCapacity, tableType, tableReservationStatus) VALUES ('T03', 3, 4, 'Small', 'EMPTY');
INSERT INTO Tables (tableID, tableNumber, tableCapacity, tableType, tableReservationStatus) VALUES ('T04', 4, 4, 'Small', 'EMPTY');
INSERT INTO Tables (tableID, tableNumber, tableCapacity, tableType, tableReservationStatus) VALUES ('T05', 5, 6, 'Medium', 'BOOKED');
INSERT INTO Tables (tableID, tableNumber, tableCapacity, tableType, tableReservationStatus) VALUES ('T06', 6, 6, 'Medium', 'BOOKED');
INSERT INTO Tables (tableID, tableNumber, tableCapacity, tableType, tableReservationStatus) VALUES ('T07', 7, 6, 'Medium', 'EMPTY');
INSERT INTO Tables (tableID, tableNumber, tableCapacity, tableType, tableReservationStatus) VALUES ('T08', 8, 6, 'Medium', 'EMPTY');
INSERT INTO Tables (tableID, tableNumber, tableCapacity, tableType, tableReservationStatus) VALUES ('T09', 9, 2, 'Twin', 'BOOKED');
INSERT INTO Tables (tableID, tableNumber, tableCapacity, tableType, tableReservationStatus) VALUES ('T10', 10, 2, 'Twin', 'BOOKED');
INSERT INTO Tables (tableID, tableNumber, tableCapacity, tableType, tableReservationStatus) VALUES ('T11', 11, 2, 'Twin', 'BOOKED');
INSERT INTO Tables (tableID, tableNumber, tableCapacity, tableType, tableReservationStatus) VALUES ('T12', 12, 2, 'Twin', 'EMPTY');
INSERT INTO Tables (tableID, tableNumber, tableCapacity, tableType, tableReservationStatus) VALUES ('T13', 13, 8, 'Big', 'BOOKED');
INSERT INTO Tables (tableID, tableNumber, tableCapacity, tableType, tableReservationStatus) VALUES ('T14', 14, 8, 'Big', 'BOOKED');
INSERT INTO Tables (tableID, tableNumber, tableCapacity, tableType, tableReservationStatus) VALUES ('T15', 15, 8, 'Big', 'BOOKED');
INSERT INTO Tables (tableID, tableNumber, tableCapacity, tableType, tableReservationStatus) VALUES ('T16', 16, 8, 'Big', 'EMPTY');
