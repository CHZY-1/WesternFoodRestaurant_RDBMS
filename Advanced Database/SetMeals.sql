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

INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM001', 'Premium Chicken Chop Set', 'Premium Chicken Chop with mushroom soup as appetizer, and mix flavoured ice cream as dessert.', 33.00,'CA001');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM002', 'Grill Chicken Chop Set', 'Grill Chicken Chop with mashed potato on the side, and cheese cake as dessert.', 35.00,'CA001');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM003', 'Deluxe Chicken Burger Set', 'Deluxe chicken burger with crispy fries and caramel sundae as dessert.', 29.50,'CA003');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM004', 'Classic Margherita Pizza Set', 'Classic margherita pizza with garlic knots and chocolate truffle cake as dessert.', 26.00,'CA004');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM005', 'Mozzarella Sticks Set', 'Golden mozzarella sticks with marinara sauce and vanilla milkshake as dessert.', 23.00,'CA005');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM006', 'Green Detox Juice Set', 'Green detox juice with avocado toast and matcha cheesecake as dessert.', 20.50,'CA007');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM007', 'Iced Coffee Set', 'Iced coffee with breakfast sandwich and coffee cream pie as dessert.', 18.00,'CA008');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM008', 'Veggie Wrap Set', 'Healthy veggie wrap with mixed greens and fruit medley as dessert.', 22.50,'CA006');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM009', 'Classic Hot Dog Set', 'Classic hot dog with crispy onion rings and cherry pie as dessert.', 17.50,'CA005');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM010', 'Citrus Burst Smoothie Set', 'Refreshing citrus burst smoothie with tropical fruit bowl and citrus tart as dessert.', 21.00,'CA007');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM011', 'Margarita Cocktail Set', 'Classic margarita cocktail with nacho platter and churros as dessert.', 24.00,'CA010');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM012', 'Mojito Set', 'Refreshing mojito with Caribbean-style rice and mango sorbet as dessert.', 22.50,'CA010');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM013', 'Chocolate Mousse Set', 'Rich chocolate mousse with whipped cream and chocolate shavings.', 18.50,'CA011');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM014', 'Tropical Fruit Salad Set', 'Tropical fruit salad with yogurt and honey drizzle.', 16.00,'CA011');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM015', 'Grilled Portobello Mushroom Set', 'Grilled portobello mushroom with quinoa salad and fresh fruit platter as dessert.', 28.00,'CA001');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM016', 'Chicken Shawarma Set', 'Flavorful chicken shawarma with hummus and baklava as dessert.', 24.50,'CA001');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM017', 'Seafood Paella Set', 'Savory seafood paella with garlic bread and tres leches cake as dessert.', 33.50,'CA002');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM018', 'Spaghetti Carbonara Set', 'Classic spaghetti carbonara with Caesar salad and tiramisu as dessert.', 29.00,'CA002');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM019', 'Vegan Beyond Burger Set', 'Vegan beyond burger with sweet potato fries and coconut bliss as dessert.', 27.50,'CA003');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM020', 'Pepperoni Lover"s Pizza Set', 'Pepperoni lover"s pizza with cheesy breadsticks and cannoli as dessert.', 30.50,'CA004');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM021', 'Loaded Potato Skins Set', 'Loaded potato skins with sour cream and chives, and banana fritters as dessert.', 26.00,'CA005'); 
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM022', 'Fruit Punch Set', 'Refreshing fruit punch with club sandwich and tropical fruit parfait as dessert.', 19.50,'CA007');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM023', 'Iced Tea Set', 'Refreshing iced tea with chicken Caesar wrap and lemon bars as dessert.', 18.00,'CA008');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM024', 'Tropical Smoothie Set', 'Tropical smoothie with tropical fruit salad and coconut macaroons as dessert.', 20.00,'CA007');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM025', 'Cosmopolitan Cocktail Set', 'Cosmopolitan cocktail with cheese platter and raspberry cheesecake as dessert.', 23.50,'CA010');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM026', 'Piña Colada Set', 'Classic piña colada with jerk chicken tacos and pineapple upside-down cake as dessert.', 25.00,'CA010');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM027', 'Mango Sorbet Set', 'Refreshing mango sorbet served in a fresh mango shell.', 14.50,'CA011');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM028', 'Cookies And Cream Parfait Set', 'Cookies And cream parfait with layers of cookies, cream, and chocolate fudge.', 15.00,'CA011');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM029', 'Stuffed Bell Peppers Set', 'Stuffed bell peppers with Mediterranean salad and fruit salad as dessert.', 26.50,'CA001');
INSERT INTO SetMeals (setMealID, setMealName, setMealDescription, setMealPrice, categoryID) values ('SM030', 'Salmon Fillet Set', 'Grilled salmon fillet with quinoa and mixed greens, and berry compote as dessert.', 29.00,'CA001');
