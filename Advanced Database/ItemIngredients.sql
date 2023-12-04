CREATE TABLE ItemIngredients (
	itemIngredientID VARCHAR(10) NOT NULL,
	itemsID VARCHAR(10),
	ingredientID VARCHAR(10) NOT NULL,
	PRIMARY KEY (itemIngredientID),
	FOREIGN KEY (itemsID) REFERENCES Items (itemsID),
	FOREIGN KEY (ingredientID) REFERENCES Ingredients (ingredientID),
	CONSTRAINT chk_ingredientid2 CHECK (itemIngredientID LIKE 'II%'),
	CONSTRAINT chk_fingredientid CHECK (ingredientID LIKE 'ING%')
);

INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II001', 'I001', 'ING001');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II002', 'I002', 'ING001');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II003', 'I003', 'ING004');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II004', 'I004', 'ING002');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II005', 'I005', 'ING009');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II006', 'I006', 'ING001');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II007', 'I007', 'ING002');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II008', 'I008', 'ING001');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II009', 'I009', 'ING009');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II010', 'I010', 'ING018');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II011', 'I011', 'ING018');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II012', 'I012', 'ING018');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II013', 'I013', 'ING018');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II014', 'I014', 'ING018');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II015', 'I015', 'ING018');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II016', 'I016', 'ING018');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II017', 'I017', 'ING004');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II018', 'I018', 'ING002');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II019', 'I019', 'ING003');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II020', 'I020', 'ING001');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II021', 'I021', 'ING021');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II022', 'I022', 'ING021');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II023', 'I023', 'ING021');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II024', 'I024', 'ING022');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II025', 'I025', 'ING023');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II026', 'I026', 'ING024');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II027', 'I027', 'ING005');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II028', 'I028', 'ING006');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II029', 'I029', 'ING001');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II030', 'I030', 'ING007');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II031', 'I031', 'ING001');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II032', 'I032', 'ING017');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II033', 'I033', 'ING017');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II034', 'I034', 'ING017');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II035', 'I035', 'ING013');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II036', 'I036', 'ING013');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II037', 'I037', 'ING013');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II038', 'I038', 'ING019');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II039', 'I039', 'ING019');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II040', 'I040', 'ING020');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II041', 'I041', 'ING020');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II042', 'I042', 'ING025');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II043', 'I043', 'ING015');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II044', 'I044', 'ING015');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II045', 'I045', 'ING015');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II046', 'I046', 'ING015');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II047', 'I047', 'ING015');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II048', 'I048', 'ING016');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II049', 'I049', 'ING016');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II050', 'I050', 'ING016');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II051', 'I051', 'ING026');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II052', 'I052', 'ING026');
INSERT INTO ItemIngredients (itemIngredientID, itemsID, ingredientID) VALUES ('II053', 'I053', 'ING027');
