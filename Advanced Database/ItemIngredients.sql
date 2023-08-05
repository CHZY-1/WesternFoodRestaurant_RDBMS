CREATE TABLE ItemIngredients (
	itemIngredientID VARCHAR(10) NOT NULL,
	itemsID VARCHAR(10),
	ingredientID VARCHAR(10) NOT NULL,
	PRIMARY KEY (itemIngredientID),
	FOREIGN KEY (itemsID) REFERENCES Items (itemsID),
	FOREIGN KEY (ingredientID) REFERENCES Ingredients (ingredientID)
);

INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('', '', '');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('', '', '');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('', '', '');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('', '', '');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('', '', '');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('', '', '');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('', '', '');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('', '', '');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('', '', '');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('', '', '');
