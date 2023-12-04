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

INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0001', 'T01', 'O0002');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0002', 'T05', 'O0004');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0003', 'T06', 'O0005');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0004', 'T07', 'O0007');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0005', 'T05', 'O0008');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0006', 'T09', 'O0010');

INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0007', 'T12', 'O0013');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0008', 'T11', 'O0014');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0009', 'T10', 'O0015');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0010', 'T09', 'O0017');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0011', 'T08', 'O0018');

INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0012', 'T02', 'O0021');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0013', 'T03', 'O0023');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0014', 'T04', 'O0025');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0015', 'T05', 'O0026');

INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0016', 'T06', 'O0027');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0017', 'T07', 'O0029');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0018', 'T08', 'O0030');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0019', 'T09', 'O0031');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0020', 'T10', 'O0032');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0021', 'T11', 'O0033');

INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0022', 'T12', 'O0034');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0023', 'T13', 'O0037');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0024', 'T14', 'O0039');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0025', 'T15', 'O0040');

INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0026', 'T16', 'O0043');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0027', 'T01', 'O0045');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0028', 'T02', 'O0046');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0029', 'T03', 'O0047');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0030', 'T04', 'O0048');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0031', 'T05', 'O0049');

INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0032', 'T06', 'O0052');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0033', 'T07', 'O0055');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0034', 'T08', 'O0056');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0035', 'T09', 'O0057');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0036', 'T10', 'O0058');

INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0037', 'T11', 'O0062');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0038', 'T12', 'O0063');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0039', 'T13', 'O0064');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0040', 'T14', 'O0066');

INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0041', 'T15', 'O0068');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0042', 'T16', 'O0069');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0043', 'T01', 'O0071');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0044', 'T02', 'O0073');

INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0045', 'T03', 'O0074');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0046', 'T04', 'O0076');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0047', 'T05', 'O0077');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0048', 'T06', 'O0078');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0049', 'T07', 'O0079');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0050', 'T08', 'O0080');

INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0051', 'T01', 'O0081');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0052', 'T04', 'O0084');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0053', 'T06', 'O0086');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0054', 'T09', 'O0090');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0055', 'T07', 'O0092');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0056', 'T08', 'O0093');

INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0057', 'T02', 'O0097');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0058', 'T04', 'O0099');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0059', 'T06', 'O0100');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0060', 'T09', 'O0103');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0061', 'T12', 'O0105');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0062', 'T16', 'O0106');

INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0063', 'T06', 'O0109');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0064', 'T08', 'O0111');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0065', 'T09', 'O0112');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0066', 'T11', 'O0115');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0067', 'T13', 'O0117');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0068', 'T14', 'O0118');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0069', 'T15', 'O0119');
INSERT INTO OrderTables (orderTableID, tableID, orderID) VALUES ('OT0070', 'T16', 'O0120');
