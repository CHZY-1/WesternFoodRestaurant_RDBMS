CREATE TABLE Working_Sections (
	sectionID VARCHAR(10) NOT NULL,
	sectionName VARCHAR(50),
	sectionDescription VARCHAR(50),
	PRIMARY KEY (sectionID),
	CONSTRAiNT chk_sectionid CHECK (sectionID LIKE 'WS%')
);  

INSERT INTO working_Sections (sectionID, sectionName, sectionDescription) VALUES ('WS001', 'Dining', 'Serve customer');
INSERT INTO working_Sections (sectionID, sectionName, sectionDescription) VALUES ('WS002', 'Counter', 'Make payment');
INSERT INTO working_Sections (sectionID, sectionName, sectionDescription) VALUES ('WS003', 'Bar', 'Prepare beveranges');
INSERT INTO working_Sections (sectionID, sectionName, sectionDescription) VALUES ('WS004', 'Kitchen', 'Prepare food');
