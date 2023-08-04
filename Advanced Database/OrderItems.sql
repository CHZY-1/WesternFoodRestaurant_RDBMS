CREATE TABLE OrderItems (
	orderItemID VARCHAR(10) NOT NULL,
	orderQuantity NUMBER(5),
	orderPrice NUMBER(7,2),
	orderID VARCHAR(10) NOT NULL,
	itemID VARCHAR(10) NOT NULL,
	PRIMARY KEY (orderItemID),
	FOREIGN KEY (orderID) REFERENCES Orders (orderID),
	FOREIGN KEY (itemID) REFERENCES Items (itemID),
	CONSTRAINT checkingOrderQuantity Check(orderQuantity >= 0),
	CONSTRAINT checkingOrderPrice Check(orderPrice >= 0)
);

INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemID) values ('OI001', 1, 42, 68, 5);
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemID) values ('OI002', 3, 79, 51, 26);
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemID) values ('OI003', 2, 33, 70, 84);
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemID) values ('OI004', 3, 47, 47, 2);
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemID) values ('OI005', 1, 123, 18, 75);
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemID) values ('OI006', 1, 126, 56, 66);
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemID) values ('OI007', 2, 62, 82, 48);
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemID) values ('OI008', 3, 21, 6, 73);
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemID) values ('OI009', 4, 109, 2, 86);
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemID) values ('OI010', 1, 74, 73, 51);

(Not Complete)