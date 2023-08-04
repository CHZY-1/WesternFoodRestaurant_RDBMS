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

INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F001', 5, "The Premium Chicken Chop was absolutely divine!", '12/6/2023', 'E007', 'C001');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F002', 5, "The Grilled Chicken Chop was tender and flavorful", '12/6/2023', 'E007', 'C021');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F003', 5, "The Grilled Pork Chop was a delightful surprise", '12/6/2023', 'E008', 'C003');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F004', 4, "I loved the crispy and succulent Golden Fish Fillet", '12/6/2023', 'E009', 'C004');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F005', 5, "Kerabu Chicken Chop had a fantastic blend of flavors", '12/6/2023', 'E007', 'C005');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F006', 5, "Kerabu Fish Fillet was a unique and tasty dish", '12/6/2023', 'E010', 'C006');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F007', 4, "Chicken Bolognese was a comforting and hearty choice", '12/6/2023', 'E009', 'C022');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F008', 5, "Seafood Aglio Olio had a perfect balance of spices", '12/6/2023', 'E005', 'C007');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F009', 4, "Seafood Marinara was a seafood lover's dream", '12/6/2023', 'E005', 'C002');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F010', 2, "The Premium Chicken Chop was dry and tasteless.", '12/6/2023', 'E006', 'C010');

INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F011', 5, "Golden Fish Burger was a mouthwatering treat", '13/6/2023', 'E005', 'C008');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F012', 2, "The Grilled Chicken Chop was overcooked and tough.", '13/6/2023', 'E005', 'C026');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F013', 4, "Wagyu Beef Burger was juicy and worth the hype", '13/6/2023', 'E006', 'C027');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F014', 2, "Grilled Pork Chop was disappointing, lacked flavor.", '13/6/2023', 'E005', 'C009');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F015', 5, "French Fries were perfectly crispy and seasoned", '13/6/2023', 'E005', 'C030');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F016', 5, "Mushroom Soup was creamy and satisfying", '13/6/2023', 'E006', 'C028');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F017', 4, "Signature Cheese Pizza had the right cheesy goodness", '13/6/2023', 'E005', 'C029');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F018', 5, "Hawaiian Chicken Pizza was a delightful combination", '13/6/2023', 'E007', 'C024');

INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F019', 5, "Royal Martini was a refreshing and elegant drink", '14/6/2023', 'E007', 'C025');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F020', 4, "Classic Mojito was a great choice for a summer evening", '14/6/2023', 'E008', 'C023');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F021', 5, "Heineken was served ice-cold and hit the spot", '14/6/2023', 'E009', 'C011');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F022', 5, "The presentation of dishes was impressive", '14/6/2023', 'E007', 'C012');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F023', 5, "The ambiance added to the overall experience", '14/6/2023', 'E010', 'C013');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F024', 4, "The staff was friendly and attentive", '14/6/2023', 'E009', 'C014');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F025', 1, "Golden Fish Fillet was greasy and not fresh.", '14/6/2023', 'E007', 'C015');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F026', 2, "Kerabu Chicken Chop had too much spice, couldn't taste anything else.", '14/6/2023', 'E007', 'C016');

INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F027', 5, "The restaurant had a cozy and inviting atmosphere", '15/6/2023', 'E008', 'C017');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F028', 5, "The food portions were generous and satisfying", '15/6/2023', 'E009', 'C018');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F029', 5, "The flavors in each dish were well-balanced", '15/6/2023', 'E007', 'C019');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F030', 5, "A wide variety of options for all preferences", '15/6/2023', 'E010', 'C020');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F031', 5, "The Golden Fish Fillet was a must-try", '15/6/2023', 'E007', 'C022');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F032', 4, "The Wagyu Beef Burger melted in my mouth", '15/6/2023', 'E007', 'C023');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F033', 5, "French Fries were the perfect side dish", '15/6/2023', 'E008', 'C023');

INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F034', 5, "The Mushroom Soup warmed my soul", '16/6/2023', 'E009', 'C024');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F035', 5, "The Hawaiian Chicken Pizza was a winner", '16/6/2023', 'E007', 'C025');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F036', 4, "Royal Martini was crafted to perfection", '16/6/2023', 'E010', 'C026');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F037', 5, "The Seafood Aglio Olio had the right kick", '16/6/2023', 'E009', 'C027');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F038', 4, "The Grilled Chicken Chop was seasoned to perfection", '16/6/2023', 'E005', 'C028');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F039', 5, "The Kerabu Chicken Chop was a delightful twist", '16/6/2023', 'E005', 'C029');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F040', 1, "Kerabu Fish Fillet was too salty, couldn't finish it.", '16/6/2023', 'E006', 'C030');

INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F041', 2, "Chicken Bolognese was bland and lacked seasoning.", '17/6/2023', 'E005', 'C031');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F042', 5, "The Seafood Marinara was a seafood lover's paradise", '17/6/2023', 'E005', 'C032');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F043', 4, "Heineken added the perfect touch to the meal", '17/6/2023', 'E006', 'C033');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F044', 5, "The Classic Mojito was a refreshing delight", '17/6/2023', 'E005', 'C034');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F045', 1, "Seafood Aglio Olio was way too oily and didn't taste good.", '17/6/2023', 'E005', 'C035');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F046', 5, "The staff's recommendations were spot on", '17/6/2023', 'E006', 'C036');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F047', 5, "The Premium Chicken Chop was a true delight", '17/6/2023', 'E005', 'C037');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F048', 5, "The Grilled Pork Chop was succulent and juicy", '17/6/2023', 'E007', 'C038');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F049', 1, "Signature Cheese Pizza was burnt and inedible.", '17/6/2023', 'E007', 'C039');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F050', 4, "The Signature Cheese Pizza was heavenly", '17/6/2023', 'E008', 'C040');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F051', 5, "The Kerabu Fish Fillet had a burst of flavors", '17/6/2023', 'E009', 'C041');

INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F052', 1, "Service was slow and the staff seemed indifferent.", '18/6/2023', 'E007', 'C042');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F053', 5, "Seafood Aglio Olio satisfied my pasta craving", '18/6/2023', 'E010', 'C043');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F054', 5, "The Golden Fish Burger was worth every bite", '18/6/2023', 'E009', 'C044');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F055', 4, "The Wagyu Beef Burger was a gourmet experience", '18/6/2023', 'E007', 'C045');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F056', 5, "The Hawaiian Chicken Pizza had the right balance", '18/6/2023', 'E007', 'C046');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F057', 5, "Mushroom Soup was a comforting choice", '18/6/2023', 'E008', 'C047');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F058', 5, "The Royal Martini was a perfect start to the meal", '18/6/2023', 'E009', 'C048');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F059', 5, "Classic Mojito was a crowd-pleaser", '18/6/2023', 'E007', 'C049');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F060', 4, "Overall, a five-star experience at this restaurant", '18/6/2023', 'E010', 'C050');

/*Done