CREATE TABLE Reservations (
	reservationID VARCHAR(10) NOT NULL,
	reservationDate DATE,
	reservationNoOfPeople NUMBER(3),
	reservationStatus VARCHAR(20),
	customerID VARCHAR(10) NOT NULL,
	tableID VARCHAR(10) NOT NULL,
	PRIMARY KEY (reservationID),
	FOREIGN KEY (customerID) REFERENCES Customer (customerID),
	FOREIGN KEY (tableID) REFERENCES Tables (tableID),
	CONSTRAINT checkingReservationNoOfPeople Check(reservationNoOfPeople >= 0)
);

INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R001', '15/6/2023', 5, 'ACCEPT', 'C001', 'T05');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R002', '15/6/2023', 7, 'ACCEPT', 'C012', 'T13');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R003', '15/6/2023', 2, 'ACCEPT', 'C015', 'T09');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R004', '15/6/2023', 8, 'ACCEPT', 'C048', 'T14');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R005', '15/6/2023', 4, 'ACCEPT', 'C025', 'T01');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R006', '15/6/2023', 7, 'ACCEPT', 'C009', 'T15');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R007', '15/6/2023', 6, 'ACCEPT', 'C014', 'T06');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R008', '15/6/2023', 3, 'ACCEPT', 'C026', 'T02');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R009', '15/6/2023', 2, 'ACCEPT', 'C035', 'T10');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R010', '15/6/2023', 2, 'ACCEPT', 'C040', 'T11');
