CREATE TABLE Orders(
	orderID VARCHAR(10) NOT NULL,
	orderDate DATE,
	orderStatus VARCHAR(20),
	employeeID VARCHAR(10) NOT NULL,
	customerID VARCHAR(10),
	PRIMARY KEY (orderID),
	FOREIGN KEY (employeeID) REFERENCES Employees (employeeID),
	CONSTRAiNT chk_orderid CHECK (orderID LIKE 'O%'),
	CONSTRAiNT chk_femployeeid CHECK (employeeID LIKE 'E%')
);

INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0001', TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E014', 'C001');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0002', TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E007', 'C021');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0003', TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E015', 'C003');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0004', TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E009', 'C004');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0005', TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E007', 'C005');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0006', TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E014', 'C006');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0007', TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E009', 'C022');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0008', TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E005', 'C007');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0009', TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E015', 'C002');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0010', TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E006', 'C010');

INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0011', TO_DATE('06/13/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E014', 'C008');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0012', TO_DATE('06/13/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E015', 'C026');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0013', TO_DATE('06/13/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E006', 'C027');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0014', TO_DATE('06/13/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E005', 'C009');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0015', TO_DATE('06/13/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E005', 'C030');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0016', TO_DATE('06/13/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E014', 'C028');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0017', TO_DATE('06/13/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E005', 'C029');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0018', TO_DATE('06/13/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E007', 'C024');

INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0019', TO_DATE('06/14/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E015', 'C025');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0020', TO_DATE('06/14/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E014', 'C023');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0021', TO_DATE('06/14/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E009', 'C011');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0022', TO_DATE('06/14/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E015', 'C012');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0023', TO_DATE('06/14/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E010', 'C013');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0024', TO_DATE('06/14/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E014', 'C014');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0025', TO_DATE('06/14/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E007', 'C015');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0026', TO_DATE('06/14/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E007', 'C016');

INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0027', TO_DATE('06/15/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E008', 'C017');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0028', TO_DATE('06/15/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E015', 'C018');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0029', TO_DATE('06/15/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E007', 'C019');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0030', TO_DATE('06/15/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E010', 'C020');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0031', TO_DATE('06/15/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E007', 'C022');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0032', TO_DATE('06/15/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E007', 'C023');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0033', TO_DATE('06/15/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E008', 'C023');

INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0034', TO_DATE('06/16/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E009', 'C024');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0035', TO_DATE('06/16/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E014', 'C025');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0036', TO_DATE('06/16/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E015', 'C026');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0037', TO_DATE('06/16/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E009', 'C027');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0038', TO_DATE('06/16/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E014', 'C028');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0039', TO_DATE('06/16/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E005', 'C029');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0040', TO_DATE('06/16/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E006', 'C030');

INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0041', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E015', 'C031');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0042', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E014', 'C032');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0043', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E006', 'C033');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0044', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E015', 'C034');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0045', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E005', 'C035');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0046', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E006', 'C036');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0047', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E005', 'C037');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0048', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E007', 'C038');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0049', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E007', 'C039');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0050', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E014', 'C040');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0051', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E015', 'C041');

INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0052', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E007', 'C042');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0053', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E014', 'C043');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0054', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E015', 'C044');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0055', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E007', 'C045');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0056', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E007', 'C046');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0057', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E008', 'C047');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0058', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E009', 'C048');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0059', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E014', 'C049');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0060', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E015', 'C050');

INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0061', TO_DATE('06/19/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E014', 'C016');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0062', TO_DATE('06/19/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E010', 'C045');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0063', TO_DATE('06/19/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E005', 'C023');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0064', TO_DATE('06/19/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E007', 'C021');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0065', TO_DATE('06/19/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E015', 'C002');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0066', TO_DATE('06/19/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E009', 'C006');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0067', TO_DATE('06/19/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E014', 'C050');

INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0068', TO_DATE('06/20/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E010', 'C024');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0069', TO_DATE('06/20/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E005', 'C036');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0070', TO_DATE('06/20/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E015', 'C048');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0071', TO_DATE('06/20/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E006', 'C022');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0072', TO_DATE('06/20/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E014', 'C008');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0073', TO_DATE('06/20/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E008', 'C009');

INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0074', TO_DATE('06/21/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E010', 'C012');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0075', TO_DATE('06/21/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E015', 'C019');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0076', TO_DATE('06/21/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E008', 'C029');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0077', TO_DATE('06/21/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E009', 'C021');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0078', TO_DATE('06/21/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E006', 'C022');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0079', TO_DATE('06/21/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E010', 'C016');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0080', TO_DATE('06/21/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E007', 'C004');

INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0081', TO_DATE('06/22/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E010', 'C031');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0082', TO_DATE('06/22/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E014', 'C029');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0083', TO_DATE('06/22/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E015', 'C049');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0084', TO_DATE('06/22/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E009', 'C046');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0085', TO_DATE('06/22/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E014', 'C019');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0086', TO_DATE('06/22/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E010', 'C033');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0087', TO_DATE('06/22/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E015', 'C017');

INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0088', TO_DATE('06/23/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E014', 'C008');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0089', TO_DATE('06/23/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E015', 'C012');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0090', TO_DATE('06/23/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E008', 'C001');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0091', TO_DATE('06/23/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E014', 'C015');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0092', TO_DATE('06/23/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E006', 'C032');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0093', TO_DATE('06/23/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E010', 'C027');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0094', TO_DATE('06/23/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E015', 'C014');

INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0095', TO_DATE('06/24/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E014', 'C002');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0096', TO_DATE('06/24/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E015', 'C046');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0097', TO_DATE('06/24/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E008', 'C012');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0098', TO_DATE('06/24/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E014', 'C039');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0099', TO_DATE('06/24/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E006', 'C031');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0100', TO_DATE('06/24/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E010', 'C024');

INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0101', TO_DATE('06/25/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E015', 'C041');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0102', TO_DATE('06/25/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E014', 'C007');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0103', TO_DATE('06/25/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E008', 'C012');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0104', TO_DATE('06/25/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E015', 'C039');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0105', TO_DATE('06/25/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E006', 'C048');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0106', TO_DATE('06/25/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E010', 'C012');

INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0107', TO_DATE('06/26/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E014', 'C013');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0108', TO_DATE('06/26/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E015', 'C046');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0109', TO_DATE('06/26/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E008', 'C043');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0110', TO_DATE('06/26/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E014', 'C032');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0111', TO_DATE('06/26/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E006', 'C024');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0112', TO_DATE('06/26/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E010', 'C016');

INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0113', TO_DATE('06/27/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E015', 'C008');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0114', TO_DATE('06/27/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E014', 'C004');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0115', TO_DATE('06/27/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E008', 'C029');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0116', TO_DATE('06/27/2023', 'MM/DD/YYYY'), 'DELIVERED', 'E015', 'C021');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0117', TO_DATE('06/27/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E006', 'C022');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0118', TO_DATE('06/27/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E010', 'C031');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0119', TO_DATE('06/27/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E010', 'C002');
INSERT INTO Orders (orderID, orderDate, orderStatus, employeeID, customerID) VALUES ('O0120', TO_DATE('06/27/2023', 'MM/DD/YYYY'), 'COMPLETE', 'E010', 'C005');
