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

INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM001', 1, 33.00, 'O0001', 'SM001');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM002', 2, 35.00, 'O0003', 'SM002');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM003', 1, 29.50, 'O0004', 'SM003');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM004', 4, 26.00, 'O0005', 'SM004');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM005', 1, 23.00, 'O0007', 'SM005');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM006', 1, 20.50, 'O0008', 'SM006');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM007', 2, 18.00, 'O0009', 'SM007');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM008', 1, 22.50, 'O0013', 'SM008');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM009', 1, 17.50, 'O0013', 'SM009');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM010', 2, 21.00, 'O0014', 'SM010');

INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM011', 1, 24.00, 'O0016', 'SM011');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM012', 2, 22.50, 'O0017', 'SM012');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM013', 1, 18.50, 'O0017', 'SM013');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM014', 3, 16.00, 'O0018', 'SM014');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM015', 1, 28.00, 'O0019', 'SM015');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM016', 1, 24.50, 'O0021', 'SM016');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM017', 4, 33.50, 'O0023', 'SM017');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM018', 1, 29.00, 'O0024', 'SM018');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM019', 1, 27.50, 'O0024', 'SM019');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM020', 2, 30.50, 'O0025', 'SM020');

INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM021', 1, 26.00, 'O0026', 'SM021');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM022', 1, 19.50, 'O0027', 'SM022');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM023', 1, 18.00, 'O0029', 'SM023');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM024', 1, 20.00, 'O0030', 'SM024');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM025', 3, 23.50, 'O0031', 'SM025');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM026', 2, 25.00, 'O0032', 'SM026');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM027', 1, 14.50, 'O0034', 'SM027');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM028', 1, 15.00, 'O0034', 'SM028');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM029', 2, 26.50, 'O0035', 'SM029');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM030', 1, 29.00, 'O0036', 'SM030');

INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM031', 1, 33.00, 'O0037', 'SM001');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM032', 1, 35.00, 'O0037', 'SM002');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM033', 1, 29.50, 'O0039', 'SM003');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM034', 1, 26.00, 'O0039', 'SM004');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM035', 2, 23.00, 'O0040', 'SM005');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM036', 1, 20.50, 'O0041', 'SM006');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM037', 1, 18.00, 'O0043', 'SM007');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM038', 1, 22.50, 'O0044', 'SM008');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM039', 2, 17.50, 'O0044', 'SM009');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM040', 1, 21.00, 'O0046', 'SM010');

INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM041', 2, 24.00, 'O0046', 'SM011');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM042', 1, 22.50, 'O0047', 'SM012');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM043', 1, 18.50, 'O0048', 'SM013');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM044', 1, 16.00, 'O0049', 'SM014');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM045', 3, 28.00, 'O0051', 'SM015');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM046', 1, 24.50, 'O0053', 'SM016');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM047', 1, 33.50, 'O0055', 'SM017');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM048', 1, 29.00, 'O0056', 'SM018');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM049', 2, 27.50, 'O0058', 'SM019');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM050', 1, 30.50, 'O0058', 'SM020');

INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM051', 1, 26.00, 'O0061', 'SM021');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM052', 4, 26.00, 'O0062', 'SM021');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM053', 1, 19.50, 'O0062', 'SM022');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM054', 1, 18.00, 'O0063', 'SM023');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM055', 1, 18.00, 'O0063', 'SM023');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM056', 1, 20.00, 'O0064', 'SM024');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM057', 1, 20.00, 'O0065', 'SM024');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM058', 2, 23.50, 'O0065', 'SM025');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM059', 1, 25.00, 'O0067', 'SM026');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM060', 1, 14.50, 'O0071', 'SM027');

INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM061', 1, 15.00, 'O0073', 'SM028');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM062', 1, 26.50, 'O0074', 'SM029');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM063', 3, 29.00, 'O0074', 'SM030');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM064', 1, 33.00, 'O0077', 'SM001');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM065', 2, 35.00, 'O0077', 'SM002');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM066', 1, 29.50, 'O0079', 'SM003');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM067', 1, 26.00, 'O0083', 'SM004');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM068', 2, 23.00, 'O0085', 'SM005');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM069', 1, 20.50, 'O0087', 'SM006');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM070', 1, 18.00, 'O0089', 'SM007');

INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM071', 1, 22.50, 'O0093', 'SM008');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM072', 1, 17.50, 'O0097', 'SM009');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM073', 2, 21.00, 'O0100', 'SM010');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM074', 1, 24.00, 'O0100', 'SM011');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM075', 1, 22.50, 'O0101', 'SM012');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM076', 1, 18.50, 'O0102', 'SM013');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM077', 2, 16.00, 'O0103', 'SM014');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM078', 1, 28.00, 'O0103', 'SM015');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM079', 1, 24.50, 'O0105', 'SM016');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM080', 1, 33.50, 'O0108', 'SM017');

INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM081', 2, 29.00, 'O0109', 'SM018');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM082', 1, 27.50, 'O0110', 'SM019');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM083', 2, 30.50, 'O0112', 'SM020');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM084', 1, 26.00, 'O0112', 'SM021');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM085', 1, 19.50, 'O0113', 'SM022');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM086', 1, 18.00, 'O0113', 'SM023');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM087', 2, 20.00, 'O0113', 'SM024');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM088', 1, 23.50, 'O0114', 'SM025');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM089', 1, 25.00, 'O0115', 'SM026');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM090', 1, 14.50, 'O0115', 'SM027');

INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM091', 2, 15.00, 'O0116', 'SM028');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM092', 1, 26.50, 'O0116', 'SM029');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM093', 2, 29.00, 'O0117', 'SM030');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM094', 1, 33.00, 'O0117', 'SM001');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM095', 1, 25.50, 'O0118', 'SM002');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM096', 1, 29.50, 'O0118', 'SM003');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM097', 2, 26.00, 'O0119', 'SM004');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM098', 1, 23.00, 'O0119', 'SM005');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM099', 1, 20.50, 'O0120', 'SM006');
INSERT INTO OrderSetMeals (orderSetMealID, orderQuantity, orderPrice, orderID, setMealID) VALUES ('OSM100', 1, 18.00, 'O0120', 'SM007');
