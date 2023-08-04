CREATE TABLE ItemIngredients (
	itemIngredientID VARCHAR(10) NOT NULL,
	itemID VARCHAR(10),
	ingredientID VARCHAR(10) NOT NULL,
	PRIMARY KEY (itemIngredientID),
	FOREIGN KEY (itemID) REFERENCES Items (itemID),
	FOREIGN KEY (ingredientID) REFERENCES Ingredients (ingredientID)
);

INSERT INTO ItemIngredients (itemIngredientID, itemID, ingredientID) VALUES ('', '', '');
INSERT INTO ItemIngredients (itemIngredientID, itemID, ingredientID) VALUES ('', '', '');
INSERT INTO ItemIngredients (itemIngredientID, itemID, ingredientID) VALUES ('', '', '');
INSERT INTO ItemIngredients (itemIngredientID, itemID, ingredientID) VALUES ('', '', '');
INSERT INTO ItemIngredients (itemIngredientID, itemID, ingredientID) VALUES ('', '', '');
INSERT INTO ItemIngredients (itemIngredientID, itemID, ingredientID) VALUES ('', '', '');
INSERT INTO ItemIngredients (itemIngredientID, itemID, ingredientID) VALUES ('', '', '');
INSERT INTO ItemIngredients (itemIngredientID, itemID, ingredientID) VALUES ('', '', '');
INSERT INTO ItemIngredients (itemIngredientID, itemID, ingredientID) VALUES ('', '', '');
INSERT INTO ItemIngredients (itemIngredientID, itemID, ingredientID) VALUES ('', '', '');
