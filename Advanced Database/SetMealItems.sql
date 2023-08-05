CREATE TABLE SetMealItems (
	setMealItemID VARCHAR(10) NOT NULL,
	setMealID VARCHAR(10),
	itemsID VARCHAR(10) NOT NULL,
	PRIMARY KEY (setMealItemID),
	FOREIGN KEY (setMealID) REFERENCES SetMeals (setMealID),
	FOREIGN KEY (itemsID) REFERENCES Items (itemsID)
);

INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('', '', '');