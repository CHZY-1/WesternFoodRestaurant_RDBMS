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
INSERT INTO Employees (employeeid, employeeName, employeePhone, employeePosition, employeeSalary, employeeHireDate, sectionID) VALUES ('E001', 'Fancy Cornock', '011-525-9231', 'Manager', 5000, '9/5/2023', 'S001');
INSERT INTO Employees (employeeid, employeeName, employeePhone, employeePosition, employeeSalary, employeeHireDate, sectionID) VALUES ('E002', 'Dominica Allsup', '011-922-3867', 'Head Chef', 4300, '7/5/2023', 'S004');
INSERT INTO Employees (employeeid, employeeName, employeePhone, employeePosition, employeeSalary, employeeHireDate, sectionID) VALUES ('E003', 'Filmer Fallows', '016-529-3513', 'Supervisor', 4300, '1/5/2023', 'S001');
INSERT INTO Employees (employeeid, employeeName, employeePhone, employeePosition, employeeSalary, employeeHireDate, sectionID) VALUES ('E004', 'Carmina Absalom', '017-865-6870', 'Cashier', 3000, '10/5/2023', 'S002');
INSERT INTO Employees (employeeid, employeeName, employeePhone, employeePosition, employeeSalary, employeeHireDate, sectionID) VALUES ('E005', 'Hugues Lindell', '016-145-6109', 'Waiter', 2800, '18/5/2023', 'S001');
INSERT INTO Employees (employeeid, employeeName, employeePhone, employeePosition, employeeSalary, employeeHireDate, sectionID) VALUES ('E006', 'Xymenes Marini', '012-560-1710', 'Waiter', 2800, '14/5/2023', 'S001');
INSERT INTO Employees (employeeid, employeeName, employeePhone, employeePosition, employeeSalary, employeeHireDate, sectionID) VALUES ('E007', 'Cobbie Iorizzo', '017-483-0496', 'Waiter', 2800, '9/5/2023', 'S001');
INSERT INTO Employees (employeeid, employeeName, employeePhone, employeePosition, employeeSalary, employeeHireDate, sectionID) VALUES ('E008', 'Emmye Bevington', '011-560-6288', 'Waiter', 2800, '2/6/2023', 'S001');
INSERT INTO Employees (employeeid, employeeName, employeePhone, employeePosition, employeeSalary, employeeHireDate, sectionID) VALUES ('E009', 'Mommy Plaide', '016-825-9057', 'Waiter', 2800, '31/5/2023', 'S001');
INSERT INTO Employees (employeeid, employeeName, employeePhone, employeePosition, employeeSalary, employeeHireDate, sectionID) VALUES ('E010', 'Mindy Sommerlin', '010-451-5730', 'Waiter', 2800, '29/6/2023', 'S001')
INSERT INTO Employees (employeeid, employeeName, employeePhone, employeePosition, employeeSalary, employeeHireDate, sectionID) VALUES ('E011', 'Emily Barbie', '014-411-5470', 'Bartender', 3000, '29/6/2023', 'S003')
INSERT INTO Employees (employeeid, employeeName, employeePhone, employeePosition, employeeSalary, employeeHireDate, sectionID) VALUES ('E012', 'Kitty Bosh', '014-144-7540', 'Cheif', 3000, '8/5/2023', 'S004')
INSERT INTO Employees (employeeid, employeeName, employeePhone, employeePosition, employeeSalary, employeeHireDate, sectionID) VALUES ('E013', 'Bobby Hush', '014-231-2145', 'Cheif', 3000, '8/5/2023', 'S004')

/*Done