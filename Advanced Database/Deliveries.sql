CREATE TABLE Deliveries (
	deliveryID VARCHAR(10) NOT NULL,
	deliveryDate DATE,
	deliveryAddress VARCHAR(255),
	deliveryStatus VARCHAR(20),
    customerID VARCHAR(10) NOT NULL,
	employeeID VARCHAR(10),
	orderID VARCHAR(10) NOT NULL,
	PRIMARY KEY (deliveryID),
    FOREIGN KEY (customerID) REFERENCES Customers (customerID),
	FOREIGN KEY (employeeID) REFERENCES Employees (employeeID),
	FOREIGN KEY (orderID) REFERENCES Orders (orderID),
	CONSTRAiNT chk_deliveryid CHECK (deliveryID LIKE 'D%'),
	CONSTRAiNT chk_fcustomerid CHECK (customerID LIKE 'C%'),
	CONSTRAiNT chk_forderid CHECK (orderID LIKE 'O%')
);

INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0001', TO_DATE('06/12/2023', 'MM/DD/YYYY'), '8009 Barnett Way', 'DELIVERED', 'C001', 'E014','O0001');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0002', TO_DATE('06/12/2023', 'MM/DD/YYYY'), '8 crest Line crossing', 'DELIVERED', 'C003', 'E015','O0003');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0003', TO_DATE('06/12/2023', 'MM/DD/YYYY'), '2 Maywood Junction', 'DELIVERED', 'C006', 'E014','O0006');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0004', TO_DATE('06/12/2023', 'MM/DD/YYYY'), '67752 Southridge Plaza', 'DELIVERED', 'C002', 'E015','O0009');

INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0005', TO_DATE('06/13/2023', 'MM/DD/YYYY'), '5 Kipling Lane', 'DELIVERED', 'C008', 'E014','O0011');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0006', TO_DATE('06/13/2023', 'MM/DD/YYYY'), '49573 Sycamore Pass', 'DELIVERED', 'C026', 'E015','O0012');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0007', TO_DATE('06/13/2023', 'MM/DD/YYYY'), '4 Leroy Park', 'DELIVERED', 'C028', 'E014','O0016');

INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0008', TO_DATE('06/14/2023', 'MM/DD/YYYY'), '46021 Service Point', 'DELIVERED', 'C025', 'E015','O0019');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0009', TO_DATE('06/14/2023', 'MM/DD/YYYY'), '1424 Darwin court', 'DELIVERED', 'C023', 'E014','O0020');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0010', TO_DATE('06/14/2023', 'MM/DD/YYYY'), '47911 Talisman Trail', 'DELIVERED', 'C012', 'E015','O0022');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0011', TO_DATE('06/14/2023', 'MM/DD/YYYY'), '9990 Buell Junction', 'DELIVERED', 'C014', 'E014','O0024');

INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0012', TO_DATE('06/15/2023', 'MM/DD/YYYY'), '50 Victoria Parkway', 'DELIVERED', 'C018', 'E015','O0028');

INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0013', TO_DATE('06/16/2023', 'MM/DD/YYYY'), '46021 Service Point', 'DELIVERED', 'C025', 'E014','O0035');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0014', TO_DATE('06/16/2023', 'MM/DD/YYYY'), '49573 Sycamore Pass', 'DELIVERED', 'C026', 'E015','O0036');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0015', TO_DATE('06/16/2023', 'MM/DD/YYYY'), '4 Leroy Park', 'DELIVERED', 'C028', 'E014','O0038');

INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0016', TO_DATE('06/17/2023', 'MM/DD/YYYY'), '9142 Manitowish Lane', 'DELIVERED', 'C031', 'E015','O0041');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0017', TO_DATE('06/17/2023', 'MM/DD/YYYY'), '1 Forster Street', 'DELIVERED', 'C032', 'E014','O0042');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0018', TO_DATE('06/17/2023', 'MM/DD/YYYY'), '95 Briar crest Street', 'DELIVERED', 'C034', 'E015','O0044');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0019', TO_DATE('06/17/2023', 'MM/DD/YYYY'), '68 Karstens crossing', 'DELIVERED', 'C040', 'E014','O0050');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0020', TO_DATE('06/17/2023', 'MM/DD/YYYY'), '22029 Longview Lane', 'DELIVERED', 'C041', 'E015','O0051');

INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0021', TO_DATE('06/18/2023', 'MM/DD/YYYY'), '18 Northview Plaza', 'DELIVERED', 'C043', 'E014','O0053');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0022', TO_DATE('06/18/2023', 'MM/DD/YYYY'), '68 Bobwhite Road', 'DELIVERED', 'C044', 'E015','O0054');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0023', TO_DATE('06/18/2023', 'MM/DD/YYYY'), '7 Anzinger Park', 'DELIVERED', 'C049', 'E014','O0059');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0024', TO_DATE('06/18/2023', 'MM/DD/YYYY'), '3 Bay Parkway', 'DELIVERED', 'C050', 'E015','O0060');

INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0025', TO_DATE('06/19/2023', 'MM/DD/YYYY'), '7782 Elmside Parkway', 'DELIVERED', 'C016', 'E014','O0061');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0026', TO_DATE('06/19/2023', 'MM/DD/YYYY'), '67752 Southridge Plaza', 'DELIVERED', 'C002', 'E015','O0065');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0027', TO_DATE('06/19/2023', 'MM/DD/YYYY'), '3 Bay Parkway', 'DELIVERED', 'C050', 'E014','O0067');

INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0028', TO_DATE('06/202023', 'MM/DD/YYYY'), '63 Reindahl Way', 'DELIVERED', 'C048', 'E015','O0070');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0029', TO_DATE('06/20/2023', 'MM/DD/YYYY'), '5 Kipling Lane', 'DELIVERED', 'C008', 'E014','O0072');

INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0030', TO_DATE('06/21/2023', 'MM/DD/YYYY'), '104 Fairfield Way', 'DELIVERED', 'C019', 'E015','O0075');

INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0031', TO_DATE('06/22/2023', 'MM/DD/YYYY'), '0 Esker Avenue', 'DELIVERED', 'C029', 'E014','O0082');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0032', TO_DATE('06/22/2023', 'MM/DD/YYYY'), '7 Anzinger Park', 'DELIVERED', 'C049', 'E015','O0083');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0033', TO_DATE('06/22/2023', 'MM/DD/YYYY'), '104 Fairfield Way', 'DELIVERED', 'C019', 'E014','O0085');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0034', TO_DATE('06/22/2023', 'MM/DD/YYYY'), '8 Jackson Drive', 'DELIVERED', 'C017', 'E015','O0087');

INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0035', TO_DATE('06/23/2023', 'MM/DD/YYYY'), '5 Kipling Lane', 'DELIVERED', 'C008', 'E014','O0088');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0036', TO_DATE('06/23/2023', 'MM/DD/YYYY'), '47911 Talisman Trail', 'DELIVERED', 'C012', 'E015','O0089');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0037', TO_DATE('06/23/2023', 'MM/DD/YYYY'), '803 Summer Ridge Junctiont', 'DELIVERED', 'C015', 'E014','O0091');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0038', TO_DATE('06/23/2023', 'MM/DD/YYYY'), '9990 Buell Junction', 'DELIVERED', 'C014', 'E015','O0094');

INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0039', TO_DATE('06/24/2023', 'MM/DD/YYYY'), '67752 Southridge Plaza', 'DELIVERED', 'C002', 'E014','O0095');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0040', TO_DATE('06/24/2023', 'MM/DD/YYYY'), '2144 Superior court', 'DELIVERED', 'C046', 'E015','O0096');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0041', TO_DATE('06/24/2023', 'MM/DD/YYYY'), '7 Express Drive', 'DELIVERED', 'C039', 'E014','O0098');

INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0042', TO_DATE('06/25/2023', 'MM/DD/YYYY'), '22029 Longview Lane', 'DELIVERED', 'C041', 'E015','O0101');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0043', TO_DATE('06/25/2023', 'MM/DD/YYYY'), '246 Kinsman Terrace', 'DELIVERED', 'C007', 'E014','O0102');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0044', TO_DATE('06/25/2023', 'MM/DD/YYYY'), '7 Express Drive', 'DELIVERED', 'C039', 'E015','O0104');

INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0045', TO_DATE('06/26/2023', 'MM/DD/YYYY'), '2080 Emmet Terrace', 'DELIVERED', 'C013', 'E014','O0107');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0046', TO_DATE('06/26/2023', 'MM/DD/YYYY'), '2144 Superior court', 'DELIVERED', 'C046', 'E015','O0108');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0047', TO_DATE('06/26/2023', 'MM/DD/YYYY'), '1 Forster Street', 'DELIVERED', 'C032', 'E014','O0110');

INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0048', TO_DATE('06/27/2023', 'MM/DD/YYYY'), '5 Kipling Lane', 'DELIVERED', 'C008', 'E015','O0113');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0049', TO_DATE('06/27/2023', 'MM/DD/YYYY'), '20237 Upham Road', 'DELIVERED', 'C004', 'E014','O0114');
INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('D0050', TO_DATE('06/27/2023', 'MM/DD/YYYY'), '90025 Swallow court', 'DELIVERED', 'C021', 'E015','O0116');
