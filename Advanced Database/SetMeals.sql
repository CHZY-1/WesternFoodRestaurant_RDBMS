CREATE TABLE SetMeals (
	setMealID VARCHAR(10) NOT NULL,
	setMealName VARCHAR(50),
	setMealDescription VARCHAR(255),
	setMealPrice NUMBER(7,2),
    categoryID VARCHAR(10) NOT NULL,
	PRIMARY KEY (setMealID),
    FOREIGN KEY categoryID REFERENCES Categories (categoryID),
	CONSTRAINT checkingSetMealPrice Check(setMealPrice >= 0)

);

INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('', '', '',  ,'');
