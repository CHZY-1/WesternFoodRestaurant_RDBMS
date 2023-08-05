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
	CONSTRAINT checkingPaymentAmoung Check(paymentAmount >= 0)
);

INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0001', '', '12/6/2023', 'TNG', 'E007', 'O0001','C001');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0002', '', '12/6/2023', 'TNG', 'E007', 'O0002','C021');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0003', '', '12/6/2023', 'TNG', 'E008', 'O0003','C003');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0004', '', '12/6/2023', 'Bank Card', 'E009', 'O0004','C004');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0005', '', '12/6/2023', 'TNG', 'E007', 'O0005','C005');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0006', '', '12/6/2023', 'TNG', 'E010', 'O0006','C006');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0007', '', '12/6/2023', 'Cash', 'E009', 'O0007','C022');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0008', '', '12/6/2023', 'TNG', 'E005', 'O0008','C007');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0009', '', '12/6/2023', 'TNG', 'E005', 'O0009','C002');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0010', '', '12/6/2023', 'Bank Card', 'E006', 'O0010','C010');

INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0011', '', '13/6/2023', 'Cash', 'E005', 'O0011','C008');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0012', '', '13/6/2023', 'TNG', 'E005', 'O0012','C026');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0013', '', '13/6/2023', 'Cash', 'E006', 'O0013','C027');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0014', '', '13/6/2023', 'TNG', 'E005', 'O0014','C009');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0015', '', '13/6/2023', 'Cash', 'E005', 'O0015','C030');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0016', '', '13/6/2023', 'TNG', 'E006', 'O0016','C028');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0017', '', '13/6/2023', 'TNG', 'E005', 'O0017','C029');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0018', '', '13/6/2023', 'Cash', 'E007', 'O0018','C024');

INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0019', '', '14/6/2023', 'TNG', 'E007', 'O0019','C025');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0020', '', '14/6/2023', 'TNG', 'E008', 'O0020','C023');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0021', '', '14/6/2023', 'Cash', 'E009', 'O0021','C011');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0022', '', '14/6/2023', 'Bank Card', 'E007', 'O0022','C012');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0023', '', '14/6/2023', 'TNG', 'E010', 'O0023','C013');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0024', '', '14/6/2023', 'TNG', 'E009', 'O0024','C014');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0025', '', '14/6/2023', 'Cash', 'E007', 'O0025','C015');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0026', '', '14/6/2023', 'TNG', 'E007', 'O0026','C016');

INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0027', '', '15/6/2023', 'TNG', 'E008', 'O0027','C017');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0028', '', '15/6/2023', 'TNG', 'E009', 'O0028','C018');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0029', '', '15/6/2023', 'Bank Card', 'E007', 'O0029','C019');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0030', '', '15/6/2023', 'TNG', 'E010', 'O0030','C020');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0031', '', '15/6/2023', 'Bank Card', 'E007', 'O0031','C022');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0032', '', '15/6/2023', 'TNG', 'E007', 'O0032','C023');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0033', '', '15/6/2023', 'TNG', 'E008', 'O0033','C023');

INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0034', '', '16/6/2023', 'Bank Card', 'E009', 'O0034','C024');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0035', '', '16/6/2023', 'Bank Card', 'E007', 'O0035','C025');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0036', '', '16/6/2023', 'TNG', 'E010', 'O0036','C026');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0037', '', '16/6/2023', 'TNG', 'E009', 'O0037','C027');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0038', '', '16/6/2023', 'Cash', 'E005', 'O0038','C028');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0039', '', '16/6/2023', 'TNG', 'E005', 'O0039','C029');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0040', '', '16/6/2023', 'TNG', 'E006', 'O0040','C030');

INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0041', '', '17/6/2023', 'TNG', 'E005', 'O0041','C031');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0042', '', '17/6/2023', 'TNG', 'E005', 'O0042','C032');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0043', '', '17/6/2023', 'TNG', 'E006', 'O0043','C033');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0044', '', '17/6/2023', 'Bank Card', 'E005', 'O0044','C034');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0045', '', '17/6/2023', 'TNG', 'E005', 'O0045','C035');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0046', '', '17/6/2023', 'TNG', 'E006', 'O0046','C036');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0047', '', '17/6/2023', 'Bank Card', 'E005', 'O0047','C037');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0048', '', '17/6/2023', 'TNG', 'E007', 'O0048','C038');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0049', '', '17/6/2023', 'Cash', 'E007', 'O0049','C039');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0050', '', '17/6/2023', 'Cash', 'E008', 'O0050','C040');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0051', '', '17/6/2023', 'TNG', 'E009', 'O0051','C041');

INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0052', '', '18/6/2023', 'TNG', 'E007', 'O0052','C042');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0053', '', '18/6/2023', 'TNG', 'E010', 'O0053','C043');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0054', '', '18/6/2023', 'Bank Card', 'E009', 'O0054','C044');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0055', '', '18/6/2023', 'Cash', 'E007', 'O0055','C045');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0056', '', '18/6/2023', 'TNG', 'E007', 'O0056','C046');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0057', '', '18/6/2023', 'Cash', 'E008', 'O0057','C047');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0058', '', '18/6/2023', 'TNG', 'E009', 'O0058','C048');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0059', '', '18/6/2023', 'Bank Card', 'E007', 'O0059','C049');
INSERT INTO Payments (paymentID, paymentAmount, paymentDate, paymentMethod, employeeID, orderID, customerID) values ('P0060', '', '18/6/2023', 'TNG', 'E010', 'O0060');

/*Done