CREATE TABLE working_Sections (
	sectionID VARCHAR(10) NOT NULL,
	sectionName VARCHAR(50),
	sectionDescription VARCHAR(50)
	PRIMARY KEY (sectionID)
);
INSERT INTO working_Sections (sectionID, sectionName, sectionDescription) VALUES ('S001', 'Dining', 'Serve customer');
INSERT INTO working_Sections (sectionID, sectionName, sectionDescription) VALUES ('S002', 'Counter', 'Make payment');
INSERT INTO working_Sections (sectionID, sectionName, sectionDescription) VALUES ('S003', 'Bar', 'Prepare beveranges');
INSERT INTO working_Sections (sectionID, sectionName, sectionDescription) VALUES ('S004', 'Kitchen', 'Prepare food');

/*Done