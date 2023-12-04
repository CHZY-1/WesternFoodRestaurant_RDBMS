CREATE TABLE Ingredients (
	ingredientID VARCHAR(10) NOT NULL,
	ingredientName VARCHAR(50),
	ingredientQuantity NUMBER(4),
	ingredientUnitOfMeasurement VARCHAR(8),
	ingredientPrice NUMBER(6,2),
	supplierID VARCHAR(10) NOT NULL,
	PRIMARY KEY (ingredientID),
	FOREIGN KEY (supplierID) REFERENCES Suppliers (supplierID),
	CONSTRAINT checkingIngredientQuantity Check(ingredientQuantity >= 0),
	CONSTRAINT checkingIngredientPrice Check(ingredientPrice >= 0),
	CONSTRAINT chk_ingredientid CHECK (ingredientID LIKE 'ING%'),
	CONSTRAINT chk_fsupplierid CHECK (supplierID LIKE 'S%')
);

INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING001', 'Chicken', 50, 'Unit', 5.00, 'S001');
INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING002', 'Fish', 50, 'Unit', 4.00, 'S002');
INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING003', 'Wagyu', 20, 'Unit', 4.00, 'S003');
INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING004', 'Pork', 50, 'Unit', 5.00, 'S001');
INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING005', 'French Fries', 10, 'Pack', 20.00, 'S004');
INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING006', 'Wedges', 10, 'Pack', 6.00, 'S004');
INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING007', 'Jumbo Hotdog', 10, 'Pack', 10.00, 'S004');
INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING000', 'Chicken Wings', 10, 'Pack', 10.00, 'S004');
INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING009', 'Salmon', 20, 'Unit', 4.00, 'S005');
INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING010', 'Parmesan Cheese', 10, 'Pack', 6.00, 'S006');
INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING011', 'Chili Sauce', 20, 'Bottle', 5.00, 'S007');
INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING012', 'Tomato Sauce', 20, 'Bottle', 15.00, 'S007');
INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING013', 'Soft Beverage', 9, 'Carton', 7.00, 'S008');
INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING014', 'Milk', 10, 'Bottle', 2.00, 'S008');
INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING015', 'Liquor', 20, 'Botttle', 10.00, 'S009');
INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING016', 'Beer', 50, 'Bottle', 8.00, 'S009');
INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING017', 'Fruit', 30, 'Unit', 2.00, 'S010');
INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING018', 'Spaghetti', 50, 'Pack', 5.00, 'S006');
INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING019', 'Oreo Powder', 5, 'Pack', 8.00, 'S008');
INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING020', 'Chocolate Powder', 5, 'Pack', 10.00, 'S008');
INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING021', 'Pizza Dough', 5, 'Pack', 8.00, 'S008');
INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING022', 'Garlic Bread', 5, 'Pack', 3.00, 'S006');
INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING023', 'Mushroom', 5, 'Pack', 3.00, 'S006');
INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING024', 'Potato', 50, 'Pack', 1.00, 'S008');
INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING025', 'Matcha Powder', 10, 'Pack', 10.00, 'S002');
INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING026', 'Ice Cream', 10, 'Pack', 3.00, 'S002');
INSERT INTO Ingredients (ingredientID, ingredientName, ingredientQuantity, ingredientUnitOfMeasurement,ingredientPrice, supplierID) VALUES ('ING027', 'Cheese Cake', 10, 'Unit', 5.00, 'S002');
