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

INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI001', 'SM001', 'I001');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI002', 'SM001', 'I025');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI003', 'SM001', 'I051');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI004', 'SM001', 'I052');

INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI005', 'SM002', 'I002');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI006', 'SM002', 'I026');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI007', 'SM002', 'I053');

INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI008', 'SM003', 'I003');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI009', 'SM003', 'I027');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI010', 'SM003', 'I048');

INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI011', 'SM004', 'I021');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI012', 'SM004', 'I033');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI013', 'SM004', 'I052');

INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI014', 'SM005', 'I024');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI015', 'SM005', 'I030');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI016', 'SM005', 'I040');

INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI017', 'SM006', 'I001');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI018', 'SM006', 'I007');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI019', 'SM006', 'I052');

INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI020', 'SM007', 'I036');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI021', 'SM007', 'I041');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI022', 'SM007', 'I045');

INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI023', 'SM008', 'I028');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI024', 'SM008', 'I034');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI025', 'SM008', 'I043');

INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI026', 'SM009', 'I030');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI027', 'SM009', 'I046');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI028', 'SM009', 'I048');

INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI029', 'SM010', 'I032');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI030', 'SM010', 'I033');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI031', 'SM010', 'I052');

INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI032', 'SM011', 'I043');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI033', 'SM011', 'I024');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI034', 'SM011', 'I029');

INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI035', 'SM012', 'I043');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI036', 'SM012', 'I027');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI037', 'SM012', 'I051');

INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI038', 'SM013', 'I052');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI039', 'SM013', 'I052');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI040', 'SM013', 'I053');

INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI041', 'SM014', 'I051');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI042', 'SM014', 'I032');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI043', 'SM014', 'I047');

INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI044', 'SM015', 'I003');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI045', 'SM015', 'I008');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI046', 'SM015', 'I019');

INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI047', 'SM016', 'I001');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI048', 'SM016', 'I006');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI049', 'SM016', 'I051');

INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI050', 'SM017', 'I004');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI051', 'SM017', 'I005');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI052', 'SM017', 'I018');

INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI053', 'SM018', 'I012');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI054', 'SM018', 'I013');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI055', 'SM018', 'I053');

INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI056', 'SM019', 'I010');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI057', 'SM019', 'I027');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI058', 'SM019', 'I051');

INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI059', 'SM030', 'I005');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI060', 'SM030', 'I022');
INSERT INTO SetMealItems (setMealItemID, setMealID, itemsID) VALUES ('SMI061', 'SM030', 'I052');
