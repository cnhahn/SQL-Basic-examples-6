DROP SCHEMA Lab2 CASCADE; 							
CREATE SCHEMA Lab2;									

ALTER ROLE cnhahn SET SEARCH_PATH to Lab2;

CREATE TABLE TaxReturns(
taxpayerID integer,
taxYear integer,
kind char(1),
dateFiled date NOT NULL,
income decimal(11,2),
taxOwed decimal(11,2),
PRIMARY key(taxpayerID, taxYear),
UNIQUE(taxpayerID, dateFiled)
);

CREATE TABLE Payments(
taxpayerID integer,
datePaid date,
amountPaid decimal(11,2) NOT NULL,
Primary Key(taxpayerID, datePaid)
);

CREATE TABLE Individuals(
taxpayerID integer,
name varchar(30),
address varchar(30),
spouseID integer,
lastDateFiled date,
lastDatePaid date,
totalTaxOwed decimal(11,2),
Primary Key(taxpayerID),
UNIQUE(spouseID)
);

CREATE TABLE Businesses(
taxpayerID integer,
name varchar(30),
address varchar(30),
businessesType char(1),
lastDateFiled date,
lastDatePaid date,
totalTaxOwed decimal(11,2),
Primary Key(taxpayerID),
UNIQUE(name, address)
);

CREATE TABLE IRSagents(
IRSagentID CHAR(6),
taxpayerID integer NOT NULL,
jobLevel integer,
active boolean,
Primary key(IRSagentID)
);

CREATE TABLE Delinquents(
taxpayerID integer,
IRSagentID char(6),
collectionAgencyID integer,
Primary key(taxpayerID)
);
