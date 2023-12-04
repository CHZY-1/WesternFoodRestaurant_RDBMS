CREATE TABLE OrderReservations (
	orderReservationID VARCHAR(10) NOT NULL,
    orderID VARCHAR(10) NOT NULL,
    reservationID VARCHAR(10) NOT NULL,
    PRIMARY KEY (orderReservationID),
    FOREIGN KEY (orderID) REFERENCES Orders (orderID),
    FOREIGN KEY (reservationID) REFERENCES Reservations (reservationID),
	CONSTRAINT chk_orderReservationID CHECK (orderReservationID LIKE 'RT%'),
	CONSTRAINT chk_forderid6 CHECK (orderID LIKE 'O%'),
	CONSTRAINT chk_reservationid2 CHECK (reservationID LIKE 'R%')
);

INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0001', 'O0002', 'R001');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0002', 'O0004', 'R001');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0003', 'O0005', 'R001');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0004', 'O0007', 'R002');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0005', 'O0008', 'R002');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0006', 'O0005', 'R002');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0007', 'O0017', 'R003');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0008', 'O0018', 'R003');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0009', 'O0008', 'R003');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0010', 'O0015', 'R004');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0011', 'O0008', 'R004');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0012', 'O0010', 'R004');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0013', 'O0010', 'R005');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0014', 'O0013', 'R005');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0015', 'O0013', 'R006');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0016', 'O0013', 'R007');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0017', 'O0014', 'R007');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0018', 'O0014', 'R008');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0019', 'O0016', 'R008');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0020', 'O0016', 'R009');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0021', 'O0021', 'R010');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0022', 'O0021', 'R011');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0023', 'O0025', 'R011');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0024', 'O0025', 'R012');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0025', 'O0026', 'R012');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0026', 'O0026', 'R013');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0027', 'O0027', 'R014');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0028', 'O0027', 'R014');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0029', 'O0027', 'R015');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0030', 'O0027', 'R016');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0031', 'O0029', 'R017');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0032', 'O0030', 'R018');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0033', 'O0030', 'R019');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0034', 'O0031', 'R021');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0035', 'O0031', 'R021');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0036', 'O0031', 'R021');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0037', 'O0032', 'R022');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0038', 'O0033', 'R023');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0039', 'O0033', 'R024');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0040', 'O0037', 'R025');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0041', 'O0037', 'R026');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0042', 'O0040', 'R027');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0043', 'O0043', 'R028');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0044', 'O0043', 'R029');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0045', 'O0045', 'R030');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0046', 'O0045', 'R030');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0047', 'O0046', 'R031');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0048', 'O0047', 'R032');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0049', 'O0048', 'R033');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0050', 'O0052', 'R034');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0051', 'O0074', 'R002');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0052', 'O0097', 'R012');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0053', 'O0097', 'R022');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0054', 'O0103', 'R032');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0055', 'O0106', 'R041');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0056', 'O0025', 'R003');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0057', 'O0058', 'R004');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0058', 'O0105', 'R014');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0059', 'O0014', 'R006');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0060', 'O0073', 'R016');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0061', 'O0045', 'R009');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0062', 'O0050', 'R010');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0063', 'O0090', 'R011');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0064', 'O0092', 'R032');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0065', 'O0077', 'R041');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0066', 'O0093', 'R003');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0067', 'O0112', 'R004');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0068', 'O0094', 'R014');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0069', 'O0100', 'R006');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0070', 'O0090', 'R016');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0071', 'O0081', 'R002');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0072', 'O0080', 'R010');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0073', 'O0078', 'R011');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0074', 'O0077', 'R004');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0075', 'O0092', 'R041');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0076', 'O0084', 'R014');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0077', 'O0086', 'R004');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0078', 'O0090', 'R032');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0079', 'O0092', 'R006');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0080', 'O0093', 'R034');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0081', 'O0076', 'R039');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0082', 'O0071', 'R010');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0083', 'O0090', 'R041');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0084', 'O0074', 'R032');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0085', 'O0092', 'R041');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0086', 'O0093', 'R003');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0087', 'O0120', 'R004');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0088', 'O0119', 'R014');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0089', 'O0118', 'R006');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0090', 'O0073', 'R016');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0091', 'O0099', 'R043');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0092', 'O0100', 'R043');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0093', 'O0099', 'R042');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0094', 'O0092', 'R050');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0095', 'O0115', 'R041');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0096', 'O0093', 'R042');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0097', 'O0112', 'R044');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0098', 'O0111', 'R044');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0099', 'O0109', 'R050');
INSERT INTO OrderReservations (orderReservationID, orderID, reservationID) VALUES ('RT0100', 'O0100', 'R050');