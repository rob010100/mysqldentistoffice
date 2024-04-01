Use Dental;


--Make Some Relations


CREATE TABLE PATIENT
(PatientNumber	Varchar(50)		NOT NULL,
FirstName		Varchar(50)		NOT NULL,
LastName		Varchar(50)		NOT NULL,
Address			Varchar(35)		NULL,
City			Varchar(35)		NULL,
State			Char(2)			NULL,
Zip				Varchar(10)		NULL,
Phone			Varchar(10)		NULL,
SSN				Varchar(10)		NOT NULL,
DOB				Varchar(10)		NOT NULL,
Gender			Varchar(35)		NULL,
CONSTRAINT		PatientPK	PRIMARY KEY (PatientNumber),
);

CREATE TABLE SERVICES
(PatientNumber		Varchar(50)		NOT NULL,
VisitDate			Varchar(10)		NOT NULL,
ProcedureServices	Varchar(50)		NULL,
Charge				Varchar(35)		NULL,
Supplies			Varchar(50)		NULL,
DentistName			Varchar(50)		NULL,
CONSTRAINT			ServicesPK	PRIMARY KEY(PatientNumber, VisitDate),
CONSTRAINT			SupplyFK	FOREIGN KEY(Supplies),
CONSTRAINT			DentistFK	FOREIGN KEY(DentistName),
);

CREATE TABLE SUPPLY
(Supplies	Varchar(50)		NOT NULL,
Company		Varchar(50)		NOT NULL,
Phone		Varchar(10)		NULL,
City		Varchar(35)		NULL,
State		Char(2)			NULL,
CONSTRAINT	SupplyPK		PRIMARY KEY(Supplies),
);

CREATE TABLE DENTIST
(DentistName	Varchar(50)		NOT NULL,
DentistSalary	Varchar(35)		NULL),
CONSTRAINT		DentistPK	PRIMARY KEY(DentistName),
);


--Input info about patients

INSERT INTO PATIENT VALUES
('1736', 'Harriet', 'Maness', '9368 Hillcrest Street', 'Bucklin', 'MO', '64631', '4177716403', '237763124', '6/16/1954','F'); 
INSERT INTO PATIENT VALUES
('2649', 'Jess', 'Fraga', '30 Polygon St.', 'Oronogo', 'MO', '64855', '8168921621', '448299828', '10/11/2003', 'F');
INSERT INTO PATIENT VALUES
('2657', 'Arcelia', 'Ibarra', '35 Smoky Hollow Dr.', 'Scotts City', 'MO', '65756', '8168322641', '546754766', '12/6/1991', 'F');
INSERT INTO PATIENT VALUES
('2834', 'Kelli', 'Holiman', '128 Golden Star Ave.', 'Saginaw', 'MO', '64864', '3142802397', '390395751', '5/4/1929', 'F');
INSERT INTO PATIENT VALUES
('3271', 'Iona', 'Piatt', '8981 Galvin St.', 'Ionia', 'MO', '65335', '8169433490', '271523900', '8/24/2004', 'F');
INSERT INTO PATIENT VALUES
('3682', 'Bert', 'Llewellyn', '18 Autumn Street', 'Bernie', 'MO', '63822', '5735989702', '229412809', '12/28/1993', 'M');
INSERT INTO PATIENT VALUES
('3695', 'Loni', 'Asmussen', '6 Swanson St.', 'Eminence', 'MO', '65466', '8168322641', '807762312', '12/6/1991', 'F');

--Input info about what we do

INSERT INTO SERVICES VALUES
('1736', '10/7/2020', 'Braces', '$3,500.00', 'ImpressionMaterials, ImpressionTrays', 'Felicia Hunter');
INSERT INTO SERVICES VALUES
('1736', '8/25/2022', 'Cleaning', '$200.00', 'Flouride and Cleaners', 'Felicia Hunter');
INSERT INTO SERVICES VALUES
('2649', '9/15/2021', 'Cleaning', '$200.00', 'Flouride and Cleaners', 'Felicia Hunter');
INSERT INTO SERVICES VALUES
('2649', '3/9/2021', 'Fillngs and Repairs', '$185.00', 'NumbingAgent', 'Felicia Hunter');
INSERT INTO SERVICES VALUES
('2657', '7/23/2020', 'Braces', '$3,500.00', 'ImpressionMaterials, ImpressionTrays', 'Keith Reynolds');
INSERT INTO SERVICES VALUES
('2657', '1/31/2019', 'Cleaning', '$200.00', 'Flouride and Cleaners', 'Keith Reynolds');
INSERT INTO SERVICES VALUES
('2657', '9/9/2018', 'Crowns and Caps', '$1,200.00', 'Crowns and Caps', 'NumbingAgent', 'Keith Reynolds');
INSERT INTO SERVICES VALUES
('2834', '3/1/2020', 'Cleaning', '$200.00', 'Flouride and Cleaners', 'Rita Jensen');
INSERT INTO SERVICES VALUES
('2834', '5/22/2021', 'Cleaning', '$200.00', 'Flouride and Cleaners', 'Rita Jensen');
INSERT INTO SERVICES VALUES
('2834', '11/24/2019', 'Dentures', '$950.00', 'ImpressionMaterials, ImpressionTrays', 'Rita Jensen');
INSERT INTO SERVICES VALUES
('2834', '6/10/2022', 'Fillngs and Repairs', '$185.00', 'NumbingAgent', 'Rita Jensen');
INSERT INTO SERVICES VALUES
('3271', '5/18/2016', 'Cleaning', '$200.00', 'Flouride and Cleaners', 'Bethany Tucker');
INSERT INTO SERVICES VALUES
('3271', '7/18/2018', 'Crowns and Caps', '$1,200.00', 'Crowns and Caps, NumbingAgent', 'Bethany Tucker');
INSERT INTO SERVICES VALUES
('3271', '10/13/2019', 'Extractions', '$263.00', 'NumbingAgent', 'Bethany Tucker');
INSERT INTO SERVICES VALUES
('3271', '7/22/2020', 'Fillngs and Repairs', '$185.00', 'NumbingAgent', 'Bethany Tucker');
INSERT INTO SERVICES VALUES
('3682', '2/9/2018', 'Cleaning', '$200.00', 'Flouride and Cleaners', 'Bethany Tucker');
INSERT INTO SERVICES VALUES
('3682', '11/27/2019', 'Dentures', '$950.00', 'ImpressionMaterial', 'Bethany Tucker');
INSERT INTO SERVICES VALUES
('3682', '8/29/2021', 'Fillngs and Repairs', '$185.00', 'NumbingAgent', 'Bethany Tucker');
INSERT INTO SERVICES VALUES
('3695', '4/27/2021', 'Fillngs and Repairs', '$185.00', 'NumbingAgent', 'Felicia Hunter');
INSERT INTO SERVICES VALUES
('3695', '9/6/2019', 'Root Canal', '$2,550.00', 'Filling Material, NumbingAgent', 'Felicia Hunter');



--Input info about supply used

INSERT INTO SUPPLY VALUES
('ImpressionMaterials', 'Patterson Dental', '800/328-5536', 'Fort Worth', 'TX');
INSERT INTO SUPPLY VALUES
('ImpressionMatierals', 'Smart Practice', '800/522-0800', 'Huntington', 'NY');
INSERT INTO SUPPLY VALUES
('ImpressionTrays', 'Smart Practice', '800/522-0800', 'Huntington', 'NY');
INSERT INTO SUPPLY VALUES
('ImpressionTrays', 'Ultimate Dental', '800/388-7868', 'Birmingham', 'AL');
INSERT INTO SUPPLY VALUES
('Numbing Agent', 'Nanova Biomaterials', '573-875-6682', 'Raleigh', 'NC');
INSERT INTO SUPPLY VALUES
('Numbing Agent', 'Burkhardt Dental', '800/562-8176', 'Raleigh', 'NC');
INSERT INTO SUPPLY VALUES
('Numbing Agent', 'Darby Dental', '800/645-2310', 'Henderson', 'NV');
INSERT INTO SUPPLY VALUES
('Flouride', 'Darby Dental', '800/645-2310', 'Henderson', 'NV');
INSERT INTO SUPPLY VALUES
('Flouride', 'Dentsply', '800/989-8826', 'Greensboro', 'NC');
INSERT INTO SUPPLY VALUES
('Flouride', 'Dental City', '800/353-9595', 'Greensboro', 'NC');
INSERT INTO SUPPLY VALUES
('Cleaners', 'Goetze Dental Company', '800/692-0804', '', '');
INSERT INTO SUPPLY VALUES
('Cleaners', 'Dentsply', '800/989-8826', 'Greensboro', 'NC');
INSERT INTO SUPPLY VALUES
('Filling Material', 'Ivoclar Vivident Inc.', '800/533-6829', 'Raleigh', 'NC');





--Input info about doctors

INSERT INTO DENTIST VALUES
('Felicia Hunter', '150000');
INSERT INTO DENTIST VALUES
('Keith Reynolds', '160000');
INSERT INTO DENTIST VALUES
('Rita Jensen', '155000');
INSERT INTO DENTIST VALUES
('Bethany Tucker', '175000');
INSERT INTO DENTIST VALUES
('Felicia Hunter', '165000');