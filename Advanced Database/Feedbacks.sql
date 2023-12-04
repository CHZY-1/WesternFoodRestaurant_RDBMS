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

INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F001', 5, 'The Premium Chicken Chop was absolutely divine!', TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'O0007', 'C001');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F002', 5, 'The Grilled Chicken Chop was tender and flavorful', TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'O0007', 'C021');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F003', 5, 'The Grilled Pork Chop was a delightful surprise', TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'O0008', 'C003');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F004', 4, 'I loved the crispy and succulent Golden Fish Fillet', TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'O0009', 'C004');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F005', 5, 'Kerabu Chicken Chop had a fantastic blend of flavors', TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'O0007', 'C005');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F006', 5, 'Kerabu Fish Fillet was a unique and tasty dish', TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'O0010', 'C006');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F007', 4, 'Chicken Bolognese was a comforting and hearty choice', TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'O0009', 'C022');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F008', 5, 'Seafood Aglio Olio had a perfect balance of spices', TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'O0005', 'C007');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F009', 4, 'Seafood Marinara was a seafood lover"s dream', TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'O0005', 'C002');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F010', 2, 'The Premium Chicken Chop was dry and tasteless.', TO_DATE('06/12/2023', 'MM/DD/YYYY'), 'O0006', 'C010');

INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F011', 5, 'Golden Fish Burger was a mouthwatering treat', TO_DATE('06/13/2023', 'MM/DD/YYYY'), 'O0005', 'C008');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F012', 2, 'The Grilled Chicken Chop was overcooked and tough.', TO_DATE('06/13/2023', 'MM/DD/YYYY'), 'O0005', 'C026');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F013', 4, 'Wagyu Beef Burger was juicy and worth the hype', TO_DATE('06/13/2023', 'MM/DD/YYYY'), 'O0006', 'C027');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F014', 2, 'Grilled Pork Chop was disappointing, lacked flavor.', TO_DATE('06/13/2023', 'MM/DD/YYYY'), 'O0005', 'C009');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F015', 5, 'French Fries were perfectly crispy and seasoned', TO_DATE('06/13/2023', 'MM/DD/YYYY'), 'O0005', 'C030');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F016', 5, 'Mushroom Soup was creamy and satisfying', TO_DATE('06/13/2023', 'MM/DD/YYYY'), 'O0006', 'C028');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F017', 4, 'Signature Cheese Pizza had the right cheesy goodness', TO_DATE('06/13/2023', 'MM/DD/YYYY'), 'O0005', 'C029');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F018', 5, 'Hawaiian Chicken Pizza was a delightful combination', TO_DATE('06/13/2023', 'MM/DD/YYYY'), 'O0007', 'C024');

INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F019', 5, 'Royal Martini was a refreshing and elegant drink', TO_DATE('06/14/2023', 'MM/DD/YYYY'), 'O0007', 'C025');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F020', 4, 'Classic Mojito was a great choice for a summer evening', TO_DATE('06/14/2023', 'MM/DD/YYYY'), 'O0008', 'C023');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F021', 5, 'Heineken was served ice-cold and hit the spot', TO_DATE('06/14/2023', 'MM/DD/YYYY'), 'O0009', 'C011');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F022', 5, 'The presentation of dishes was impressive', TO_DATE('06/14/2023', 'MM/DD/YYYY'), 'O0007', 'C012');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F023', 5, 'The ambiance added to the overall experience', TO_DATE('06/14/2023', 'MM/DD/YYYY'), 'O0010', 'C013');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F024', 4, 'The staff was friendly and attentive', TO_DATE('06/14/2023', 'MM/DD/YYYY'), 'O0009', 'C014');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F025', 1, 'Golden Fish Fillet was greasy and not fresh.', TO_DATE('06/14/2023', 'MM/DD/YYYY'), 'O0007', 'C015');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F026', 2, 'Kerabu Chicken Chop had too much spice, could not taste anything else.', TO_DATE('06/14/2023', 'MM/DD/YYYY'), 'O0007', 'C016');

INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F027', 5, 'The restaurant had a cozy and inviting atmosphere', TO_DATE('06/15/2023', 'MM/DD/YYYY'), 'O0008', 'C017');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F028', 5, 'The food portions were generous and satisfying', TO_DATE('06/15/2023', 'MM/DD/YYYY'), 'O0009', 'C018');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F029', 5, 'The flavors in each dish were well-balanced', TO_DATE('06/15/2023', 'MM/DD/YYYY'), 'O0007', 'C019');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F030', 5, 'A wide variety of options for all preferences', TO_DATE('06/15/2023', 'MM/DD/YYYY'), 'O0010', 'C020');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F031', 5, 'The Golden Fish Fillet was a must-try', TO_DATE('06/15/2023', 'MM/DD/YYYY'), 'O0007', 'C022');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F032', 4, 'The Wagyu Beef Burger melted in my mouth', TO_DATE('06/15/2023', 'MM/DD/YYYY'), 'O0007', 'C023');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F033', 5, 'French Fries were the perfect side dish', TO_DATE('06/15/2023', 'MM/DD/YYYY'), 'O0008', 'C023');

INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F034', 5, 'The Mushroom Soup warmed my soul', TO_DATE('06/16/2023', 'MM/DD/YYYY'), 'O0009', 'C024');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F035', 5, 'The Hawaiian Chicken Pizza was a winner', TO_DATE('06/16/2023', 'MM/DD/YYYY'), 'O0007', 'C025');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F036', 4, 'Royal Martini was crafted to perfection', TO_DATE('06/16/2023', 'MM/DD/YYYY'), 'O0010', 'C026');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F037', 5, 'The Seafood Aglio Olio had the right kick', TO_DATE('06/16/2023', 'MM/DD/YYYY'), 'O0009', 'C027');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F038', 4, 'The Grilled Chicken Chop was seasoned to perfection', TO_DATE('06/16/2023', 'MM/DD/YYYY'), 'O0005', 'C028');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F039', 5, 'The Kerabu Chicken Chop was a delightful twist', TO_DATE('06/16/2023', 'MM/DD/YYYY'), 'O0005', 'C029');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F040', 1, 'Kerabu Fish Fillet was too salty, could not finish it.', TO_DATE('06/16/2023', 'MM/DD/YYYY'), 'O0006', 'C030');

INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F041', 2, 'Chicken Bolognese was bland and lacked seasoning.', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'O0005', 'C031');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F042', 5, 'The Seafood Marinara was a seafood lovers paradise', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'O0005', 'C032');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F043', 4, 'Heineken added the perfect touch to the meal', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'O0006', 'C033');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F044', 5, 'The Classic Mojito was a refreshing delight', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'O0005', 'C034');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F045', 1, 'Seafood Aglio Olio was way too oily and did not taste good.', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'O0005', 'C035');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F046', 5, 'The staff recommendations were spot on', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'O0006', 'C036');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F047', 5, 'The Premium Chicken Chop was a true delight', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'O0005', 'C037');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F048', 5, 'The Grilled Pork Chop was succulent and juicy', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'O0007', 'C038');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F049', 1, 'Signature Cheese Pizza was burnt and inedible.', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'O0007', 'C039');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F050', 4, 'The Signature Cheese Pizza was heavenly', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'O0008', 'C040');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F051', 5, 'The Kerabu Fish Fillet had a burst of flavors', TO_DATE('06/17/2023', 'MM/DD/YYYY'), 'O0009', 'C041');

INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F052', 1, 'Service was slow and the staff seemed indifferent.', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'O0007', 'C042');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F053', 5, 'Seafood Aglio Olio satisfied my pasta craving', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'O0010', 'C043');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F054', 5, 'The Golden Fish Burger was worth every bite', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'O0009', 'C044');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F055', 4, 'The Wagyu Beef Burger was a gourmet experience', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'O0007', 'C045');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F056', 5, 'The Hawaiian Chicken Pizza had the right balance', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'O0007', 'C046');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F057', 5, 'Mushroom Soup was a comforting choice', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'O0008', 'C047');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F058', 5, 'The Royal Martini was a perfect start to the meal', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'O0009', 'C048');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F059', 5, 'Classic Mojito was a crowd-pleaser', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'O0007', 'C049');
INSERT INTO Feedbacks (feedbackID, feedbackRating, feedbackComment, feedbackDate, orderID, customerID) VALUES ('F060', 4, 'Overall, a five-star experience at this restaurant', TO_DATE('06/18/2023', 'MM/DD/YYYY'), 'O0010', 'C050');
