CREATE TABLE Payments (
	paymentID VARCHAR(10) NOT NULL,
	paymentAmount NUMBER(7,2),
	paymentDate DATE,
	paymentMethod VARCHAR(30),
	employeeID VARCHAR(10) NOT NULL,
	orderID VARCHAR(10) NOT NULL,
	customerID VARCHAR(10) NOT NULL,
	PRIMARY KEY (paymentID),
	FOREIGN KEY (employeeID) REFERENCES Employees (employeeID),
	FOREIGN KEY (orderID) REFERENCES Orders (orderID),
	FOREIGN KEY (customerID) REFERENCES Customers (customerID),
	CONSTRAINT checkingPaymentAmoung Check(paymentAmount >= 0),
	CONSTRAiNT chk_paymentid CHECK (paymentID LIKE 'P%'),
	CONSTRAiNT chk_employeeid2 CHECK (employeeID LIKE 'E%'),
	CONSTRAiNT chk_forderid4 CHECK (orderID LIKE 'O%'),
	CONSTRAiNT chk_fcustomerid2 CHECK (customerID LIKE 'C%')
);

INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0001', 175.00, TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0001','C001');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0002', 135.00, TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0002','C021');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0003', 70.00, TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0003','C003');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0004', 68.50, TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'Bank Card', 'E004', 'O0004','C004');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0005', 104.00, TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0005','C005');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0006', 52.00, TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0006','C006');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0007', 23.00, TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'Cash', 'E004', 'O0007','C022');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0008', 153.50, TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0008','C007');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0009', 36.00, TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0009','C002');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0010', 25.00, TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'Bank Card', 'E004', 'O0010','C010');

INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0011', 48.00, TO_DATE('06/13/2023', 'MM/DD/YYYY'), 'Cash', 'E004', 'O0011','C008');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0012', 140.00, TO_DATE('06/13/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0012','C026');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0013', 40.00, TO_DATE('06/13/2023', 'MM/DD/YYYY'), 'Cash', 'E004', 'O0013','C027');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0014', 65.00, TO_DATE('06/13/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0014','C009');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0015', 16.00, TO_DATE('06/13/2023', 'MM/DD/YYYY'), 'Cash', 'E004', 'O0015','C030');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0016', 104.00, TO_DATE('06/13/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0016','C028');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0017', 63.50, TO_DATE('06/13/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0017','C029');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0018', 164.00, TO_DATE('06/13/2023', 'MM/DD/YYYY'), 'Cash', 'E004', 'O0018','C024');

INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0019', 57.00, TO_DATE('06/14/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0019','C025');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0020', 61.00, TO_DATE('06/14/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0020','C023');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0021', 24.50, TO_DATE('06/14/2023', 'MM/DD/YYYY'), 'Cash', 'E004', 'O0021','C011');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0022', 50.00, TO_DATE('06/14/2023', 'MM/DD/YYYY'), 'Bank Card', 'E004', 'O0022','C012');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0023', 134.00, TO_DATE('06/14/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0023','C013');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0024', 122.50, TO_DATE('06/14/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0024','C014');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0025', 61.00, TO_DATE('06/14/2023', 'MM/DD/YYYY'), 'Cash', 'E004', 'O0025','C015');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0026', 83.00, TO_DATE('06/14/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0026','C016');

INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0027', 39.50, TO_DATE('06/15/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0027','C017');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0028', 36.00, TO_DATE('06/15/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0028','C018');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0029', 170.00, TO_DATE('06/15/2023', 'MM/DD/YYYY'), 'Bank Card', 'E004', 'O0029','C019');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0030', 42.00, TO_DATE('06/15/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0030','C020');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0031', 106.50, TO_DATE('06/15/2023', 'MM/DD/YYYY'), 'Bank Card', 'E004', 'O0031','C022');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0032', 88.00, TO_DATE('06/15/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0032','C023');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0033', 117.00, TO_DATE('06/15/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0033','C023');

INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0034', 29.50, TO_DATE('06/16/2023', 'MM/DD/YYYY'), 'Bank Card', 'E004', 'O0034','C024');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0035', 88.00, TO_DATE('06/16/2023', 'MM/DD/YYYY'), 'Bank Card', 'E004', 'O0035','C025');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0036', 59.00, TO_DATE('06/16/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0036','C026');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0037', 68.00, TO_DATE('06/16/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0037','C027');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0038', 102.00, TO_DATE('06/16/2023', 'MM/DD/YYYY'), 'Cash', 'E004', 'O0038','C028');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0039', 55.50, TO_DATE('06/16/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0039','C029');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0040', 179.00, TO_DATE('06/16/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0040','C030');

INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0041', 28.50, TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0041','C031');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0042', 75.00, TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0042','C032');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0043', 104.00, TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0043','C033');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0044', 57.50, TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'Bank Card', 'E004', 'O0044','C034');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0045', 91.00, TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0045','C035');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0046', 69.00, TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0046','C036');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0047', 97.50, TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'Bank Card', 'E004', 'O0047','C037');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0048', 111.50, TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0048','C038');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0049', 80.00, TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'Cash', 'E004', 'O0049','C039');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0050', 38.00, TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'Cash', 'E004', 'O0050','C040');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0051', 84.00, TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0051','C041');

INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0052', 75.00, TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0052','C042');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0053', 24.50, TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0053','C043');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0054', 85.00, TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'Bank Card', 'E004', 'O0054','C044');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0055', 33.50, TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'Cash', 'E004', 'O0055','C045');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0056', 74.00, TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0056','C046');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0057', 57.00, TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'Cash', 'E004', 'O0057','C047');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0058', 85.50, TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0058','C048');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0059', 116.00, TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'Bank Card', 'E004', 'O0059','C049');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0060', 31.00, TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0060','C050');

INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0061', 102.00, TO_DATE('06/19/2023', 'MM/DD/YYYY'), 'Bank Card', 'E004', 'O0061','C016');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0062', 123.50, TO_DATE('06/19/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0062','C045');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0063', 84.00, TO_DATE('06/19/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0063','C023');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0064', 147.00, TO_DATE('06/19/2023', 'MM/DD/YYYY'), 'Cash', 'E004', 'O0064','C021');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0065', 67.00, TO_DATE('06/19/2023', 'MM/DD/YYYY'), 'Cash', 'E004', 'O0065','C002');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0066', 43.00, TO_DATE('06/19/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0066','C006');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0067', 25.00, TO_DATE('06/19/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0067','C050');

INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0068', 140.00, TO_DATE('06/20/2023', 'MM/DD/YYYY'), 'Cash', 'E004', 'O0068','C024');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0069', 88.00, TO_DATE('06/20/2023', 'MM/DD/YYYY'), 'Bank Card', 'E004', 'O0069','C036');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0070', 34.00, TO_DATE('06/20/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0070','C048');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0071', 14.50, TO_DATE('06/20/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0071','C022');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0072', 93.00, TO_DATE('06/20/2023', 'MM/DD/YYYY'), 'Cash', 'E004', 'O0072','C008');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0073', 15.00, TO_DATE('06/20/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0073','C009');

INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0074', 113.50, TO_DATE('06/21/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0074','C012');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0075', 67.00, TO_DATE('06/21/2023', 'MM/DD/YYYY'), 'Bank Card', 'E004', 'O0075','C019');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0076', 78.00, TO_DATE('06/21/2023', 'MM/DD/YYYY'), 'Cash', 'E004', 'O0076','C029');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0077', 103.00, TO_DATE('06/21/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0077','C021');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0078', 93.00, TO_DATE('06/21/2023', 'MM/DD/YYYY'), 'Cash', 'E004', 'O0078','C022');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0079', 29.50, TO_DATE('06/21/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0079','C016');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0080', 139.00, TO_DATE('06/21/2023', 'MM/DD/YYYY'), 'TNG', 'E004', 'O0080', 'C004');

INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0081', 142.00, TO_DATE('06/22/2023', 'MM/DD/YYYY'), 'TNG', 'E010', 'O0081', 'C031');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0082', 135.00, TO_DATE('06/22/2023', 'MM/DD/YYYY'), 'Bank Card', 'E014', 'O0082', 'C029');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0083', 26.00, TO_DATE('06/22/2023', 'MM/DD/YYYY'), 'TNG', 'E015', 'O0083', 'C049');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0084', 39.00, TO_DATE('06/22/2023', 'MM/DD/YYYY'), 'Cash', 'E009', 'O0084', 'C046');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0085', 46.00, TO_DATE('06/22/2023', 'MM/DD/YYYY'), 'Bank Card', 'E014', 'O0085', 'C019');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0086', 52.00, TO_DATE('06/22/2023', 'MM/DD/YYYY'), 'TNG', 'E010', 'O0086', 'C033');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0087', 20.50, TO_DATE('06/22/2023', 'MM/DD/YYYY'), 'Cash', 'E015', 'O0087', 'C017');

INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0088', 133.00, TO_DATE('06/23/2023', 'MM/DD/YYYY'), 'Bank Card', 'E014', 'O0088', 'C008');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0089', 18.00, TO_DATE('06/23/2023', 'MM/DD/YYYY'), 'TNG', 'E015', 'O0089', 'C012');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0090', 25.00, TO_DATE('06/23/2023', 'MM/DD/YYYY'), 'Cash', 'E008', 'O0090', 'C001');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0091', 48.00, TO_DATE('06/23/2023', 'MM/DD/YYYY'), 'TNG', 'E014', 'O0091', 'C015');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0092', 140.00, TO_DATE('06/23/2023', 'MM/DD/YYYY'), 'Bank Card', 'E006', 'O0092', 'C032');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0093', 22.50, TO_DATE('06/23/2023', 'MM/DD/YYYY'), 'TNG', 'E010', 'O0093', 'C027');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0094', 23.00, TO_DATE('06/23/2023', 'MM/DD/YYYY'), 'Cash', 'E015', 'O0094', 'C014');

INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0095', 16.00, TO_DATE('06/24/2023', 'MM/DD/YYYY'), 'Cash', 'E014', 'O0095', 'C002');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0096', 80.00, TO_DATE('06/24/2023', 'MM/DD/YYYY'), 'Bank Card', 'E015', 'O0096', 'C046');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0097', 17.50, TO_DATE('06/24/2023', 'MM/DD/YYYY'), 'TNG', 'E008', 'O0097', 'C012');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0098', 116.00, TO_DATE('06/24/2023', 'MM/DD/YYYY'), 'Cash', 'E014', 'O0098', 'C039');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0099', 29.00, TO_DATE('06/24/2023', 'MM/DD/YYYY'), 'TNG', 'E006', 'O0099', 'C031');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0100', 127.00, TO_DATE('06/24/2023', 'MM/DD/YYYY'), 'TNG', 'E010', 'O0100', 'C024');

INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0101', 22.50, TO_DATE('06/25/2023', 'MM/DD/YYYY'), 'Bank Card', 'E015','O0101',  'C041');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0102', 68.50, TO_DATE('06/25/2023', 'MM/DD/YYYY'), 'TNG', 'E014','O0102','C007');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0103', 60.00, TO_DATE('06/25/2023', 'MM/DD/YYYY'), 'Cash', 'E008','O0103','C012');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0104', 66.00, TO_DATE('06/25/2023', 'MM/DD/YYYY'), 'Cash', 'E015','O0104', 'C039');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0105', 24.50, TO_DATE('06/25/2023', 'MM/DD/YYYY'), 'TNG', 'E006','O0105', 'C048');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0106', 57.00, TO_DATE('06/25/2023', 'MM/DD/YYYY'), 'TNG', 'E010','O0106', 'C012');

INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0107', 20.00, TO_DATE('06/26/2023', 'MM/DD/YYYY'), 'TNG', 'E014','O0107', 'C013');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0108', 69.50, TO_DATE('06/26/2023', 'MM/DD/YYYY'), 'TNG', 'E015','O0108', 'C046');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0109', 178.00, TO_DATE('06/26/2023', 'MM/DD/YYYY'), 'Cash', 'E008','O0109', 'C043');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0110', 59.50, TO_DATE('06/26/2023', 'MM/DD/YYYY'), 'Bank Card', 'E014', 'O0110', 'C032');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0111', 142.00, TO_DATE('06/26/2023', 'MM/DD/YYYY'), 'TNG', 'E006', 'O0111', 'C024');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0112', 222.00, TO_DATE('06/26/2023', 'MM/DD/YYYY'), 'Cash', 'E010', 'O0112', 'C016');

INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0113', 77.50, TO_DATE('06/27/2023', 'MM/DD/YYYY'), 'Bank Card', 'E015', 'O0113', 'C008');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0114', 62.50, TO_DATE('06/27/2023', 'MM/DD/YYYY'), 'Bank Card', 'E014', 'O0114', 'C004');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0115', 39.50, TO_DATE('06/27/2023', 'MM/DD/YYYY'), 'Cash', 'E008', 'O0115', 'C029');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0116', 86.50, TO_DATE('06/27/2023', 'MM/DD/YYYY'), 'TNG', 'E015', 'O0116', 'C021');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0117', 113.00, TO_DATE('06/27/2023', 'MM/DD/YYYY'), 'Cash', 'E006', 'O0117', 'C022');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0118', 188.00, TO_DATE('06/27/2023', 'MM/DD/YYYY'), 'Bank Card', 'E010', 'O0118', 'C031');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0119', 75.00, TO_DATE('06/27/2023', 'MM/DD/YYYY'), 'TNG', 'E010', 'O0119', 'C002');
INSERT INTO Payments (paymentId, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) VALUES ('P0120', 63.50, TO_DATE('06/27/2023', 'MM/DD/YYYY'), 'TNG', 'E010', 'O0120', 'C005');
