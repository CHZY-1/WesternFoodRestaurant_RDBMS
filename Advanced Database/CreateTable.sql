CREATE TABLE Categories (
	categoryID VARCHAR(10) NOT NULL,
	categoryName VARCHAR(50),
	categoryDescription VARCHAR(255),
	PRIMARY KEY (categoryID),
	CONSTRAiNT chk_categoryid CHECK (categoryID LIKE 'CA%')
); 
/*1*/ 

CREATE TABLE Customers (
	customerID VARCHAR(10) NOT NULL,
	customerName VARCHAR(50),
	customerEmail VARCHAR(50),
	customerPhone VARCHAR(20),
	customerAddress VARCHAR(255),
	PRIMARY KEY (customerID),
	CONSTRAiNT chk_customerid CHECK (customerID LIKE 'C%')
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
	CONSTRAINT checkingItemPrice Check(itemPrice >= 0),
	CONSTRAiNT chk_itemsid CHECK (itemsID LIKE 'I%')
);
/*3*/

CREATE TABLE Suppliers (
	supplierID VARCHAR(10) NOT NULL,
	supplierName VARCHAR(50),
	supplierPhone VARCHAR(20),
	supplierEmail VARCHAR(50),
	PRIMARY KEY (supplierID),
	CONSTRAiNT chk_supplierid CHECK (supplierID LIKE 'S%')
);
/*4*/

CREATE TABLE Working_Sections (
	sectionID VARCHAR(10) NOT NULL,
	sectionName VARCHAR(50),
	sectionDescription VARCHAR(50),
	PRIMARY KEY (sectionID),
	CONSTRAiNT chk_sectionid CHECK (sectionID LIKE 'WS%')
);  
/*5*/

CREATE TABLE Employees (
	employeeID VARCHAR(10) NOT NULL,
	employeeName VARCHAR(100),
	employeePhone VARCHAR(20),
	employeePosition VARCHAR(50),
	employeeSalary NUMBER(6,2),
	employeeHireDate DATE,
	sectionID VARCHAR(10) NOT NULL,
	PRIMARY KEY (employeeID),
	FOREIGN KEY (sectionID) REFERENCES Working_Sections (sectionID),
	CONSTRAINT checkingEmployeeSalary Check(employeeSalary >= 0),
	CONSTRAiNT chk_employeeid CHECK (employeeID LIKE 'E%'),
	CONSTRAiNT chk_fsectionid CHECK (sectionID LIKE 'WS%')
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
	CONSTRAINT checkingSetMealPrice Check(setMealPrice >= 0),
	CONSTRAiNT chk_setMealid CHECK (setMealID LIKE 'SM%'),
	CONSTRAiNT chk_fcategoryid CHECK (categoryID LIKE 'CA%')
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
	CONSTRAINT checkingIngredientPrice Check(ingredientPrice >= 0),
	CONSTRAINT chk_ingredientid CHECK (ingredientID LIKE 'ING%'),
	CONSTRAINT chk_fsupplierid CHECK (supplierID LIKE 'S%')
);
/*8*/

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
/*9*/

CREATE TABLE SetMealItems (
	setMealItemID VARCHAR(10) NOT NULL,
	setMealID VARCHAR(10),
	itemsID VARCHAR(10) NOT NULL,
	PRIMARY KEY (setMealItemID),
	FOREIGN KEY (setMealID) REFERENCES SetMeals (setMealID),
	FOREIGN KEY (itemsID) REFERENCES Items (itemsID),
	CONSTRAINT chk_setmealitemid CHECK (setMealItemID LIKE 'SMI%'),
	CONSTRAINT chk_fitemsid CHECK (itemsID LIKE 'I%')
);
/*10*/

CREATE TABLE Orders(
	orderID VARCHAR(10) NOT NULL,
	orderDate DATE,
	orderStatus VARCHAR(20),
	employeeID VARCHAR(10) NOT NULL,
	customerID VARCHAR(10),
	PRIMARY KEY (orderID),
	FOREIGN KEY (employeeID) REFERENCES Employees (employeeID),
	CONSTRAiNT chk_orderid CHECK (orderID LIKE 'O%'),
	CONSTRAiNT chk_femployeeid CHECK (employeeID LIKE 'E%')
);
/*11*/

CREATE TABLE Tables (
	tableID VARCHAR(10) NOT NULL,
	tableNumber NUMBER(3),
	tableCapacity NUMBER(3),
	tableType VARCHAR(50),
	tableReservationStatus VARCHAR(20),
	PRIMARY KEY (tableID),
	CONSTRAINT checkingTableCapacity Check(tableCapacity >= 0),
	CONSTRAiNT chk_tableid CHECK (tableID LIKE 'T%')
);
/*12 ## removed foreign key orderID*/

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
	FOREIGN KEY (orderID) REFERENCES Orders (orderID),
	CONSTRAiNT chk_deliveryid CHECK (deliveryID LIKE 'D%'),
	CONSTRAiNT chk_fcustomerid CHECK (customerID LIKE 'C%'),
	CONSTRAiNT chk_forderid CHECK (orderID LIKE 'O%')
);
/*13*/

CREATE TABLE Feedbacks (
	feedbackID VARCHAR(10) NOT NULL,
	feedbackRating NUMBER(2) NOT NULL,
	feedbackComment VARCHAR(255),
	feedbackDate DATE,
	orderID VARCHAR(10),
	customerID VARCHAR(10),
    PRIMARY KEY (feedbackID),
	FOREIGN KEY (orderID) REFERENCES Orders (orderID),
	FOREIGN KEY (customerID) REFERENCES Customers (customerID),
	CONSTRAINT chk_ffeedbackrating Check(feedbackRating Between 1 and 5),
	CONSTRAiNT chk_ffeedbackid CHECK (feedbackID LIKE 'F%')
);
/*14*/

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
	CONSTRAINT checkingOrderPrice Check(orderPrice >= 0),
	CONSTRAINT chk_orderitemid CHECK (orderItemID LIKE 'OI%'),
	CONSTRAINT chk_forderid2 CHECK (orderID LIKE 'O%'),
	CONSTRAINT chk_fitemid CHECK (itemsID LIKE 'I%')
);
/*15*/

CREATE TABLE OrderSetMeals (
	orderSetMealID VARCHAR(10) NOT NULL,
	orderQuantity NUMBER(5),
	orderPrice NUMBER(7,2),
	orderID VARCHAR(10) NOT NULL,
	setMealID VARCHAR(10) NOT NULL,
	PRIMARY KEY (orderSetMealID),
	FOREIGN KEY (orderID) REFERENCES Orders (orderID),
	FOREIGN KEY (setMealID) REFERENCES SetMeals (setMealID),
	CONSTRAINT chk_ordersetmealid CHECK (orderSetMealID LIKE 'OSM%'),
	CONSTRAINT chk_forderid3 CHECK (orderID LIKE 'O%'),
	CONSTRAINT chk_fsetmealid CHECK (setMealID LIKE 'SM%')
);
/*16 ## updated erd*/

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
	CONSTRAINT checkingPaymentAmoung Check(paymentAmount >= 0),
	CONSTRAiNT chk_paymentid CHECK (paymentID LIKE 'P%'),
	CONSTRAiNT chk_employeeid2 CHECK (employeeID LIKE 'E%'),
	CONSTRAiNT chk_forderid4 CHECK (orderID LIKE 'O%'),
	CONSTRAiNT chk_fcustomerid2 CHECK (customerID LIKE 'C%')
);
/*17*/

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
	CONSTRAINT checkingReservationNoOfPeople Check(reservationNoOfPeople >= 0),
	CONSTRAiNT chk_reservationid CHECK (reservationID LIKE 'R%'),
	CONSTRAiNT chk_fcustomerid3 CHECK (customerID LIKE 'C%'),
	CONSTRAiNT chk_ftableid2 CHECK (tableID LIKE 'T%')
);
/*18*/

CREATE TABLE OrderTables (
	orderTableID VARCHAR(10) NOT NULL,
	tableID VARCHAR(10) NOT NULL,
	orderID VARCHAR(10) NOT NULL,
	PRIMARY KEY (orderTableID),
    FOREIGN KEY (tableID) REFERENCES Tables (tableID),
	FOREIGN KEY (orderID) REFERENCES Orders (orderID),
	CONSTRAINT chk_ordertableid CHECK (orderTableID LIKE 'OT%'),
	CONSTRAINT chk_ftableid3 CHECK (tableID LIKE 'T%'),
	CONSTRAINT chk_forderid5 CHECK (orderID LIKE 'O%')
);
/*19*/

CREATE TABLE OrderReservations (
	orderReservationID VARCHAR(10) NOT NULL,
    orderID VARCHAR(10) NOT NULL,
    reservationID VARCHAR(10) NOT NULL,
    PRIMARY KEY (orderReservationID),
    FOREIGN KEY (orderID) REFERENCES Orders (orderID),
    FOREIGN KEY (reservationID) REFERENCES Reservations (reservationID),
	CONSTRAINT chk_orderReservationID CHECK (orderReservationID LIKE 'RT%'),
	CONSTRAINT chk_forderid6 CHECK (orderID LIKE 'O%'),
	CONSTRAINT chk_reservationid2 CHECK (reservationID LIKE 'R%')
);
/*20*/