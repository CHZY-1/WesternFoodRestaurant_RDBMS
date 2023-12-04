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

INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI001', 1, 25.00, 'O0001', 'I046');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI002', 3, 39.00, 'O0001', 'I019');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI003', 2, 39.00, 'O0002', 'I019');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI004', 3, 19.00, 'O0002', 'I042');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI005', 1, 39.00, 'O0004', 'I019');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI006', 1, 30.00, 'O0006', 'I003');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI007', 2, 11.00, 'O0006', 'I026');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI008', 3, 31.00, 'O0008', 'I016');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI009', 4, 10.00, 'O0008', 'I024');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI010', 1, 25.00, 'O0010', 'I044');

INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI011', 1, 12.00, 'O0011', 'I034');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI012', 3, 12.00, 'O0011', 'I033');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI013', 2, 34.00, 'O0012', 'I007');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI014', 3, 24.00, 'O0012', 'I001');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI015', 1, 23.00, 'O0014', 'I010');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI016', 1, 16.00, 'O0015', 'I030');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI017', 2, 22.00, 'O0016', 'I031');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI018', 3, 12.00, 'O0016', 'I033');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI019', 4, 29.00, 'O0018', 'I012');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI020', 1, 29.00, 'O0019', 'I006');

INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI021', 1, 16.00, 'O0020', 'I030');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI022', 3, 15.00, 'O0020', 'I049');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI023', 2, 25.00, 'O0022', 'I045');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI024', 3, 22.00, 'O0024', 'I011');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI025', 1, 43.00, 'O0026', 'I023');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI026', 1, 14.00, 'O0026', 'I027');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI027', 2, 10.00, 'O0027', 'I024');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI028', 3, 12.00, 'O0028', 'I033');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI029', 4, 30.00, 'O0029', 'I021');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI030', 1, 32.00, 'O0029', 'I015');

INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI031', 1, 22.00, 'O0030', 'I011');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI032', 3, 12.00, 'O0031', 'I034');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI033', 2, 19.00, 'O0032', 'I041');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI034', 3, 39.00, 'O0033', 'I019');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI035', 1, 24.00, 'O0035', 'I018');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI036', 1, 11.00, 'O0035', 'I026');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI037', 2, 15.00, 'O0036', 'I049');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI038', 3, 34.00, 'O0038', 'I014');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI039', 4, 29.00, 'O0040', 'I012');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI040', 1, 17.00, 'O0040', 'I038');

INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI041', 1, 8.00, 'O0041', 'I036');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI042', 3, 25.00, 'O0042', 'I047');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI043', 2, 43.00, 'O0043', 'I023');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI044', 3, 22.00, 'O0045', 'I031');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI045', 1, 25.00, 'O0045', 'I046');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI046', 1, 29.00, 'O0047', 'I012');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI047', 2, 23.00, 'O0047', 'I010');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI048', 3, 31.00, 'O0048', 'I020');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI049', 4, 16.00, 'O0049', 'I030');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI050', 1, 8.00, 'O0050', 'I035');

INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI051', 1, 30.00, 'O0050', 'I021');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI052', 3, 25.00, 'O0052', 'I044');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI053', 2, 8.00, 'O0054', 'I036');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI054', 3, 23.00, 'O0054', 'I022');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI055', 1, 16.00, 'O0056', 'I030');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI056', 1, 29.00, 'O0056', 'I017');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI057', 2, 12.00, 'O0057', 'I033');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI058', 3, 11.00, 'O0057', 'I026');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI059', 4, 29.00, 'O0059', 'I006');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI060', 1, 31.00, 'O0060', 'I004');

INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI061', 1, 31.00, 'O0061', 'I020');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI062', 3, 15.00, 'O0061', 'I049');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI063', 2, 24.00, 'O0063', 'I029');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI064', 3, 31.00, 'O0064', 'I016');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI065', 1, 34.00, 'O0064', 'I014');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI066', 1, 43.00, 'O0066', 'I023');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI067', 2, 25.00, 'O0068', 'I045');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI068', 3, 30.00, 'O0068', 'I021');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI069', 4, 22.00, 'O0069', 'I031');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI070', 1, 19.00, 'O0070', 'I041');

INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI071', 1, 15.00, 'O0070', 'I050');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI072', 3, 19.00, 'O0072', 'I042');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI073', 2, 18.00, 'O0072', 'I040');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI074', 3, 12.00, 'O0075', 'I032');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI075', 1, 31.00, 'O0075', 'I013');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI076', 1, 30.00, 'O0076', 'I003');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI077', 2, 24.00, 'O0076', 'I029');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI078', 3, 31.00, 'O0078', 'I013');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI079', 4, 25.00, 'O0080', 'I045');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI080', 1, 39.00, 'O0080', 'I019');

INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI081', 1, 25.00, 'O0081', 'I046');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI082', 3, 39.00, 'O0081', 'I019');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI083', 2, 39.00, 'O0082', 'I019');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI084', 3, 19.00, 'O0082', 'I042');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI085', 1, 39.00, 'O0084', 'I019');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI086', 1, 30.00, 'O0086', 'I003');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI087', 2, 11.00, 'O0086', 'I026');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI088', 3, 31.00, 'O0088', 'I016');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI089', 4, 10.00, 'O0088', 'I024');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI090', 1, 25.00, 'O0090', 'I044');

INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI091', 1, 12.00, 'O0091', 'I034');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI092', 3, 12.00, 'O0091', 'I033');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI093', 2, 34.00, 'O0092', 'I007');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI094', 3, 24.00, 'O0092', 'I001');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI095', 1, 23.00, 'O0094', 'I010');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI096', 1, 16.00, 'O0095', 'I030');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI097', 2, 22.00, 'O0096', 'I031');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI098', 3, 12.00, 'O0096', 'I033');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI099', 4, 29.00, 'O0098', 'I012');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI100', 1, 29.00, 'O0099', 'I006');

INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI101', 1, 16.00, 'O0100', 'I030');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI102', 3, 15.00, 'O0100', 'I049');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI103', 2, 25.00, 'O0102', 'I045');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI104', 3, 22.00, 'O0104', 'I011');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI105', 1, 43.00, 'O0106', 'I023');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI106', 1, 14.00, 'O0106', 'I027');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI107', 2, 10.00, 'O0107', 'I024');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI108', 3, 12.00, 'O0108', 'I033');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI109', 4, 30.00, 'O0109', 'I021');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI110', 1, 32.00, 'O0110', 'I015');

INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI111', 1, 25.00, 'O0111', 'I046');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI112', 3, 39.00, 'O0111', 'I019');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI113', 2, 39.00, 'O0112', 'I019');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI114', 3, 19.00, 'O0112', 'I042');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI115', 1, 39.00, 'O0114', 'I019');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI116', 1, 30.00, 'O0116', 'I003');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI117', 2, 11.00, 'O0117', 'I026');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI118', 3, 31.00, 'O0118', 'I016');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI119', 4, 10.00, 'O0118', 'I024');
INSERT INTO OrderItems (orderItemID, orderQuantity, orderPrice, orderID, itemsID) values ('OI120', 1, 25.00, 'O0120', 'I044');
