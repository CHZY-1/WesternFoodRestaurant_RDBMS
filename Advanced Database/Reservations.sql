CREATE TABLE Reservations (
	reservationID VARCHAR(10) NOT NULL,
	reservationDate DATE,
	reservationNoOfPeople NUMBER(3),
	reservationStatus VARCHAR(20),
	customerID VARCHAR(10) NOT NULL,
	tableID VARCHAR(10) NOT NULL,
	PRIMARY KEY (reservationID),
	FOREIGN KEY (customerID) REFERENCES Customers (customerID),
	FOREIGN KEY (tableID) REFERENCES Tables (tableID),
	CONSTRAINT checkingReservationNoOfPeople Check(reservationNoOfPeople >= 0),
	CONSTRAiNT chk_reservationid CHECK (reservationID LIKE 'R%'),
	CONSTRAiNT chk_fcustomerid3 CHECK (customerID LIKE 'C%'),
	CONSTRAiNT chk_ftableid2 CHECK (tableID LIKE 'T%')
);

INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R001', TO_DATE('06/15/2023', 'MM/DD/YYYY'), 5, 'ACCEPT', 'C001', 'T05');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R002', TO_DATE('06/15/2023', 'MM/DD/YYYY'), 7, 'ACCEPT', 'C012', 'T13');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R003', TO_DATE('06/15/2023', 'MM/DD/YYYY'), 2, 'ACCEPT', 'C015', 'T09');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R004', TO_DATE('06/15/2023', 'MM/DD/YYYY'), 8, 'ACCEPT', 'C048', 'T14');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R005', TO_DATE('06/15/2023', 'MM/DD/YYYY'), 4, 'ACCEPT', 'C025', 'T01');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R006', TO_DATE('06/15/2023', 'MM/DD/YYYY'), 7, 'ACCEPT', 'C009', 'T15');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R007', TO_DATE('06/15/2023', 'MM/DD/YYYY'), 6, 'ACCEPT', 'C014', 'T06');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R008', TO_DATE('06/15/2023', 'MM/DD/YYYY'), 3, 'ACCEPT', 'C026', 'T02');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R009', TO_DATE('06/15/2023', 'MM/DD/YYYY'), 2, 'ACCEPT', 'C035', 'T10');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R010', TO_DATE('06/15/2023', 'MM/DD/YYYY'), 2, 'ACCEPT', 'C040', 'T11');

INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R011', TO_DATE('06/16/2023', 'MM/DD/YYYY'), 5, 'ACCEPT', 'C001', 'T05');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R012', TO_DATE('06/16/2023', 'MM/DD/YYYY'), 7, 'ACCEPT', 'C012', 'T13');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R013', TO_DATE('06/16/2023', 'MM/DD/YYYY'), 2, 'ACCEPT', 'C015', 'T09');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R014', TO_DATE('06/16/2023', 'MM/DD/YYYY'), 8, 'ACCEPT', 'C048', 'T14');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R015', TO_DATE('06/16/2023', 'MM/DD/YYYY'), 4, 'ACCEPT', 'C025', 'T01');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R016', TO_DATE('06/16/2023', 'MM/DD/YYYY'), 7, 'ACCEPT', 'C009', 'T15');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R017', TO_DATE('06/16/2023', 'MM/DD/YYYY'), 6, 'ACCEPT', 'C014', 'T06');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R018', TO_DATE('06/16/2023', 'MM/DD/YYYY'), 3, 'ACCEPT', 'C026', 'T02');

INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R019', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 2, 'ACCEPT', 'C035', 'T10');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R020', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 2, 'ACCEPT', 'C040', 'T11');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R021', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 5, 'ACCEPT', 'C001', 'T05');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R022', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 7, 'ACCEPT', 'C012', 'T13');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R023', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 2, 'ACCEPT', 'C015', 'T09');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R024', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 8, 'ACCEPT', 'C048', 'T14');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R025', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 4, 'ACCEPT', 'C025', 'T01');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R026', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 7, 'ACCEPT', 'C009', 'T15');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R027', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 6, 'ACCEPT', 'C014', 'T06');

INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R028', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 3, 'ACCEPT', 'C026', 'T02');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R029', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 2, 'ACCEPT', 'C035', 'T10');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R030', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 2, 'ACCEPT', 'C040', 'T11');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R031', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 5, 'ACCEPT', 'C001', 'T05');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R032', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 7, 'ACCEPT', 'C012', 'T13');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R033', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 2, 'ACCEPT', 'C015', 'T09');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R034', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 8, 'ACCEPT', 'C048', 'T14');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R035', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 4, 'ACCEPT', 'C025', 'T01');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R036', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 7, 'ACCEPT', 'C009', 'T15');

INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R037', TO_DATE('06/19/2023', 'MM/DD/YYYY'), 6, 'ACCEPT', 'C014', 'T06');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R038', TO_DATE('06/19/2023', 'MM/DD/YYYY'), 3, 'ACCEPT', 'C026', 'T02');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R039', TO_DATE('06/19/2023', 'MM/DD/YYYY'), 2, 'ACCEPT', 'C035', 'T10');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R040', TO_DATE('06/19/2023', 'MM/DD/YYYY'), 2, 'ACCEPT', 'C040', 'T11');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R041', TO_DATE('06/19/2023', 'MM/DD/YYYY'), 5, 'ACCEPT', 'C001', 'T05');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R042', TO_DATE('06/19/2023', 'MM/DD/YYYY'), 7, 'ACCEPT', 'C012', 'T13');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R043', TO_DATE('06/19/2023', 'MM/DD/YYYY'), 2, 'ACCEPT', 'C015', 'T09');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R044', TO_DATE('06/19/2023', 'MM/DD/YYYY'), 8, 'ACCEPT', 'C048', 'T14');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R045', TO_DATE('06/19/2023', 'MM/DD/YYYY'), 4, 'ACCEPT', 'C025', 'T01');

INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R046', TO_DATE('06/20/2023', 'MM/DD/YYYY'), 7, 'ACCEPT', 'C009', 'T15');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R047', TO_DATE('06/20/2023', 'MM/DD/YYYY'), 6, 'ACCEPT', 'C014', 'T06');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R048', TO_DATE('06/20/2023', 'MM/DD/YYYY'), 3, 'ACCEPT', 'C026', 'T02');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R049', TO_DATE('06/20/2023', 'MM/DD/YYYY'), 2, 'ACCEPT', 'C035', 'T10');
INSERT INTO Reservations (reservationID, reservationDate, reservationNoOfPeople, reservationStatus, customerID, tableID) VALUES ('R050', TO_DATE('06/20/2023', 'MM/DD/YYYY'), 2, 'ACCEPT', 'C040', 'T11');
