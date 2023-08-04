CREATE TABLE OrderSetMeals (
	orderSetMealID VARCHAR(10) NOT NULL,
	orderID VARCHAR(10) NOT NULL,
	setMealID VARCHAR(10) NOT NULL,
	PRIMARY KEY (orderSetMealID),
	FOREIGN KEY (orderID) REFERENCES Orders (orderID),
	FOREIGN KEY (setMealID) REFERENCES SetMeals (setMealID)
);

INSERT INTO OrderSetMeals (orderSetMealID, orderID, setMealID) VALUES ('', '', '');