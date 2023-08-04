CREATE TABLE Categories (
	categoryID VARCHAR(10),
	categoryName VARCHAR(50),
	categoryDescription VARCHAR(255),
	PRIMARY KEY (categoryID)
);
INSERT INTO Items (categoryID, categoryName, categoryDescription) VALUES ('CA001', 'Main Courses', 'Delicious chicken chop and fish fillet dishes, perfect as the heart of your meal.');
INSERT INTO Items (categoryID, categoryName, categoryDescription) VALUES ('CA002', 'Spaghetti', 'Authentic Italian pasta dishes with rich sauces and savory toppings.');
INSERT INTO Items (categoryID, categoryName, categoryDescription) VALUES ('CA003', 'Burgers', 'Juicy, handcrafted burgers made with premium ingredients and unique toppings.');
INSERT INTO Items (categoryID, categoryName, categoryDescription) VALUES ('CA004', 'Pizza', 'Mouthwatering pizzas baked to perfection with a delightful blend of flavors.');
INSERT INTO Items (categoryID, categoryName, categoryDescription) VALUES ('CA005', 'Appetizers', 'Tantalizing bites to kickstart your meal, perfect for sharing.');
INSERT INTO Items (categoryID, categoryName, categoryDescription) VALUES ('CA006', 'Snacks', 'Quick and satisfying treats, ideal for a quick bite.');
INSERT INTO Items (categoryID, categoryName, categoryDescription) VALUES ('CA007', 'Pure Juices', 'Freshly squeezed, natural juices for a healthy and refreshing choice.');
INSERT INTO Items (categoryID, categoryName, categoryDescription) VALUES ('CA008', 'Soft Beverages', 'Assorted drinks, including sodas and mocktails, to quench your thirst.');
INSERT INTO Items (categoryID, categoryName, categoryDescription) VALUES ('CA009', 'Ice Blended & Milkshakes', 'Refreshing blended beverages and creamy milkshakes.');
INSERT INTO Items (categoryID, categoryName, categoryDescription) VALUES ('CA010', 'Cocktail', 'Handcrafted cocktails for a touch of sophistication and enjoyment.');

/*Done