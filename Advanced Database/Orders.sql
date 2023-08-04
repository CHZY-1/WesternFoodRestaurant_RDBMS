CREATE TABLE Orders(
	orderID VARCHAR(10) NOT NULL,
	orderDate DATE,
	orderStatus VARCHAR(20),
	employeeID VARCHAR(10) NOT NULL,
	customerID VARCHAR(10),
	tableID VARCHAR(10) NOT NULL,
	PRIMARY KEY (orderID),
	FOREIGN KEY (employeeID) REFERENCES Employees (employeeID),
	FOREIGN KEY (tableID) REFERENCES Tables (tableID)

);
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0001', '12/6/2023', 'COMPLETE', 'E007', 'C001', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0002', '12/6/2023', 'COMPLETE', 'E007', 'C021', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0003', '12/6/2023', 'COMPLETE', 'E008', 'C003', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0004', '12/6/2023', 'COMPLETE', 'E009', 'C004', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0005', '12/6/2023', 'COMPLETE', 'E007', 'C005', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0006', '12/6/2023', 'COMPLETE', 'E010', 'C006', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0007', '12/6/2023', 'COMPLETE', 'E009', 'C022', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0008', '12/6/2023', 'COMPLETE', 'E005', 'C007', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0009', '12/6/2023', 'COMPLETE', 'E005', 'C002', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0010', '12/6/2023', 'COMPLETE', 'E006', 'C010', '');

INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0011', '13/6/2023', 'COMPLETE', 'E005', 'C008', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0012', '13/6/2023', 'COMPLETE', 'E005', 'C026', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0013', '13/6/2023', 'COMPLETE', 'E006', 'C027', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0014', '13/6/2023', 'COMPLETE', 'E005', 'C009', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0015', '13/6/2023', 'COMPLETE', 'E005', 'C030', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0016', '13/6/2023', 'COMPLETE', 'E006', 'C028', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0017', '13/6/2023', 'COMPLETE', 'E005', 'C029', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0018', '13/6/2023', 'COMPLETE', 'E007', 'C024', '');

INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0019', '14/6/2023', 'COMPLETE', 'E007', 'C025', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0020', '14/6/2023', 'COMPLETE', 'E008', 'C023', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0021', '14/6/2023', 'COMPLETE', 'E009', 'C011', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0022', '14/6/2023', 'COMPLETE', 'E007', 'C012', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0023', '14/6/2023', 'COMPLETE', 'E010', 'C013', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0024', '14/6/2023', 'COMPLETE', 'E009', 'C014', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0025', '14/6/2023', 'COMPLETE', 'E007', 'C015', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0026', '14/6/2023', 'COMPLETE', 'E007', 'C016', '');

INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0027', '15/6/2023', 'COMPLETE', 'E008', 'C017', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0028', '15/6/2023', 'COMPLETE', 'E009', 'C018', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0029', '15/6/2023', 'COMPLETE', 'E007', 'C019', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0030', '15/6/2023', 'COMPLETE', 'E010', 'C020', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0031', '15/6/2023', 'COMPLETE', 'E007', 'C022', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0032', '15/6/2023', 'COMPLETE', 'E007', 'C023', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0033', '15/6/2023', 'COMPLETE', 'E008', 'C023', '');

INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0034', '16/6/2023', 'COMPLETE', 'E009', 'C024', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0035', '16/6/2023', 'COMPLETE', 'E007', 'C025', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0036', '16/6/2023', 'COMPLETE', 'E010', 'C026', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0037', '16/6/2023', 'COMPLETE', 'E009', 'C027', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0038', '16/6/2023', 'COMPLETE', 'E005', 'C028', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0039', '16/6/2023', 'COMPLETE', 'E005', 'C029', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0040', '16/6/2023', 'COMPLETE', 'E006', 'C030', '');

INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0041', '17/6/2023', 'COMPLETE', 'E005', 'C031', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0042', '17/6/2023', 'COMPLETE', 'E005', 'C032', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0043', '17/6/2023', 'COMPLETE', 'E006', 'C033', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0044', '17/6/2023', 'COMPLETE', 'E005', 'C034', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0045', '17/6/2023', 'COMPLETE', 'E005', 'C035', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0046', '17/6/2023', 'COMPLETE', 'E006', 'C036', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0047', '17/6/2023', 'COMPLETE', 'E005', 'C037', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0048', '17/6/2023', 'COMPLETE', 'E007', 'C038', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0049', '17/6/2023', 'COMPLETE', 'E007', 'C039', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0050', '17/6/2023', 'COMPLETE', 'E008', 'C040', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0051', '17/6/2023', 'COMPLETE', 'E009', 'C041', '');

INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0052', '18/6/2023', 'COMPLETE', 'E007', 'C042', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0053', '18/6/2023', 'COMPLETE', 'E010', 'C043', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0054', '18/6/2023', 'COMPLETE', 'E009', 'C044', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0055', '18/6/2023', 'COMPLETE', 'E007', 'C045', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0056', '18/6/2023', 'COMPLETE', 'E007', 'C046', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0057', '18/6/2023', 'COMPLETE', 'E008', 'C047', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0058', '18/6/2023', 'COMPLETE', 'E009', 'C048', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0059', '18/6/2023', 'COMPLETE', 'E007', 'C049', '');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID, tableID) VALUES ('O0060', '18/6/2023', 'COMPLETE', 'E010', 'C050', '');

/*Done