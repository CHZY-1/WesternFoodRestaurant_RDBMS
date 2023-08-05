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
	FOREIGN KEY (orderID) REFERENCES Orders (orderID)
);

INSERT INTO Deliveries (deliveryID, deliveryDate, deliveryAddress, deliveryStatus, customerID, employeeID, orderID) values ('P0001', '12/6/2023', '', '', '', '','');
