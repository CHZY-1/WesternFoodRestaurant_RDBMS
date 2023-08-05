CREATE TABLE Categories (
	categoryID VARCHAR(10),
	categoryName VARCHAR(50),
	categoryDescription VARCHAR(255),
	PRIMARY KEY (categoryID)
); 
/*1*/ 

CREATE TABLE Customers (
	customerID VARCHAR(10) NOT NULL,
	customerName VARCHAR(50),
	customerEmail VARCHAR(50),
	customerPhone VARCHAR(20),
	customerAddress VARCHAR(255),
	PRIMARY KEY (customerID)
);
/*2*/

CREATE TABLE Items (
	itemsID VARCHAR(10) NOT NULL,
	itemName VARCHAR(50),
	itemDescription VARCHAR(255),
	itemPrice NUMBER(7,2),
	itemAvailability VARCHAR(50),
	categoryID VARCHAR(10),
	PRIMARY KEY (itemsID),
	FOREIGN KEY (categoryID) REFERENCES Categories (categoryID),
	CONSTRAINT checkingItemPrice Check(itemPrice >= 0)
);
/*3*/

CREATE TABLE Suppliers (
	supplierID VARCHAR(10) NOT NULL,
	supplierName VARCHAR(50),
	supplierPhone VARCHAR(20),
	supplierEmail VARCHAR(50),
	PRIMARY KEY (supplierID)
);
/*4*/

CREATE TABLE Working_Sections (
	sectionID VARCHAR(10) NOT NULL,
	sectionName VARCHAR(50),
	sectionDescription VARCHAR(50),
	PRIMARY KEY (sectionID)
);  
/*5*/

CREATE TABLE Employees (
	employeeid VARCHAR(10) NOT NULL,
	employeeName VARCHAR(100),
	employeePhone VARCHAR(20),
	employeePosition VARCHAR(50),
	employeeSalary NUMBER(6,2),
	employeeHireDate DATE,
	sectionID VARCHAR(10) NOT NULL,
	PRIMARY KEY (employeeID),
	FOREIGN KEY (sectionID) REFERENCES Working_Sections (sectionID),
	CONSTRAINT checkingEmployeeSalary Check(employeeSalary >= 0)
);
/*6*/

CREATE TABLE SetMeals (
	setMealID VARCHAR(10) NOT NULL,
	setMealName VARCHAR(50),
	setMealDescription VARCHAR(255),
	setMealPrice NUMBER(7,2),
    categoryID VARCHAR(10) NOT NULL,
	PRIMARY KEY (setMealID),
    FOREIGN KEY (categoryID) REFERENCES Categories (categoryID),
	CONSTRAINT checkingSetMealPrice Check(setMealPrice >= 0)
);
/*7*/

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
	CONSTRAINT checkingIngredientPrice Check(ingredientPrice >= 0)
);
/*8*/

CREATE TABLE ItemIngredients (
	itemIngredientID VARCHAR(10) NOT NULL,
	itemsID VARCHAR(10),
	ingredientID VARCHAR(10) NOT NULL,
	PRIMARY KEY (itemIngredientID),
	FOREIGN KEY (itemsID) REFERENCES Items (itemsID),
	FOREIGN KEY (ingredientID) REFERENCES Ingredients (ingredientID)
);
/*9*/

CREATE TABLE SetMealItems (
	setMealItemID VARCHAR(10) NOT NULL,
	setMealID VARCHAR(10),
	itemsID VARCHAR(10) NOT NULL,
	PRIMARY KEY (setMealItemID),
	FOREIGN KEY (setMealID) REFERENCES SetMeals (setMealID),
	FOREIGN KEY (itemsID) REFERENCES Items (itemsID)
);
/*10*/

CREATE TABLE Orders(
	orderID VARCHAR(10) NOT NULL,
	orderDate DATE,
	orderStatus VARCHAR(20),
	employeeID VARCHAR(10) NOT NULL,
	customerID VARCHAR(10),
	tableID VARCHAR(10) NOT NULL,
	PRIMARY KEY (orderID),
	FOREIGN KEY (employeeID) REFERENCES Employees (employeeID)
	-- FOREIGN KEY (tableID) REFERENCES Tables (tableID)
);
/*11*/

CREATE TABLE Tables (
	tableID VARCHAR(10) NOT NULL,
	tableNumber NUMBER(3),
	tableCapacity NUMBER(3),
	tableType VARCHAR(50),
	tableReservationStatus VARCHAR(20),
	orderID VARCHAR(10),
	PRIMARY KEY (tableID),
	FOREIGN KEY (orderID) REFERENCES Orders (orderID),
	CONSTRAINT checkingTableCapacity Check(tableCapacity >= 0)
);
/*12*/

ALTER TABLE Orders
      ADD FOREIGN KEY (tableID) REFERENCES Tables(tableID)
/*13*/

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
/*14*/


CREATE TABLE Feedbacks (
	feedbackID VARCHAR(10) NOT NULL,
	feedbackRating NUMBER(2) NOT NULL,
	feedbackComment VARCHAR(255),
	feedbackDate DATE,
	orderID VARCHAR(10),
	customerID VARCHAR(10),
    PRIMARY KEY (feedbackID),
	FOREIGN KEY (orderID) REFERENCES Orders (orderID),
	FOREIGN KEY (customerID) REFERENCES Customers (customerID)
);
/*15*/

CREATE TABLE OrderItems (
	orderItemID VARCHAR(10) NOT NULL,
	orderQuantity NUMBER(5),
	orderPrice NUMBER(7,2),
	orderID VARCHAR(10) NOT NULL,
	itemsID VARCHAR(10) NOT NULL,
	PRIMARY KEY (orderItemID),
	FOREIGN KEY (orderID) REFERENCES Orders (orderID),
	FOREIGN KEY (itemsID) REFERENCES Items (itemsID),
	CONSTRAINT checkingOrderQuantity Check(orderQuantity >= 0),
	CONSTRAINT checkingOrderPrice Check(orderPrice >= 0)
);
/*16*/

CREATE TABLE OrderSetMeals (
	orderSetMealID VARCHAR(10) NOT NULL,
	orderID VARCHAR(10) NOT NULL,
	setMealID VARCHAR(10) NOT NULL,
	PRIMARY KEY (orderSetMealID),
	FOREIGN KEY (orderID) REFERENCES Orders (orderID),
	FOREIGN KEY (setMealID) REFERENCES SetMeals (setMealID)
);
/*17*/

CREATE TABLE Payments (
	paymentID VARCHAR(10) NOT NULL,
	paymentAmount NUMBER(7,2),
	paymentDate DATE,
	paymentMethod VARCHAR(30),
	employeeID VARCHAR(10) NOT NULL,
	orderID VARCHAR(10) NOT NULL,
	customerID VARCHAR(10) NOT NULL,
	PRIMARY KEY (paymentID),
	FOREIGN KEY (employeeID) REFERENCES Employees (employeeID),
	FOREIGN KEY (orderID) REFERENCES Orders (orderID),
	FOREIGN KEY (customerID) REFERENCES Customers (customerID),
	CONSTRAINT checkingPaymentAmoung Check(paymentAmount >= 0)
);
/*18*/

CREATE TABLE Reservations (
	reservationID VARCHAR(10) NOT NULL,
	reservationDate DATE,
	reservationNoOfPeople NUMBER(3),
	reservationStatus VARCHAR(20),
	customerID VARCHAR(10) NOT NULL,
	tableID VARCHAR(10) NOT NULL,
	PRIMARY KEY (reservationID),
	FOREIGN KEY (customerID) REFERENCES Customers (customerID),
	FOREIGN KEY (tableID) REFERENCES Tables (tableID),
	CONSTRAINT checkingReservationNoOfPeople Check(reservationNoOfPeople >= 0)
);
/*19*/