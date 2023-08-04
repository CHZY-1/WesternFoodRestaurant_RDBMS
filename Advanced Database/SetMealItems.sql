CREATE TABLE SetMealItems (
	setMealItemID VARCHAR(10) NOT NULL,
	setMealID VARCHAR(10),
	itemID VARCHAR(10) NOT NULL,
	PRIMARY KEY (setMealItemID),
	FOREIGN KEY (setMealID) REFERENCES SetMeals (setMealID),
	FOREIGN KEY (itemID) REFERENCES Items (itemID)
);

INSERT INTO SetMealItems (setMealItemID, setMealID, itemID) VALUES ('', '', '');