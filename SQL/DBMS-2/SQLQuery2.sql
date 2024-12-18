
-- CREATE DEPARTMENT TABLE
CREATE TABLE Department(
DepartmentID Int Primary Key,
DepartmentName	Varchar (100) Not Null Unique,
DepartmentCode	Varchar (50) Not Null Unique,
Location Varchar (50) Not Null)

--INSERT DATA INTO DEPARTMENT
INSERT INTO Department VALUES(1,'Admin','Adm','A-Block')
INSERT INTO Department VALUES(2,'Computer','CE','C-Block')
INSERT INTO Department VALUES(3,'Civil','CI','G-Block')
INSERT INTO Department VALUES(4,'Electrical','EE','E-Block')
INSERT INTO Department VALUES(5,'Mechanical','ME','B-Block')

--CREATE Person TABLE
CREATE TABLE Person(
PersonID Int Primary Key,
PersonName Varchar(100) Not Null,
DepartmentID Int Null FOREIGN KEY REFERENCES Department(DepartmentID),
Salary Decimal(8,2) Not Null,
JoiningDate	Datetime Not Null,
City Varchar(100) Not Null)

-- INSERT DATA INTO PERSON
INSERT INTO Person VALUES(101,'Rahul Tripathi',2,56000,'01-01-2000','Rajkot')
INSERT INTO Person VALUES(102,'Hardik Pandya',3,18000,'25-sep-2001','Ahmedabad')
INSERT INTO Person VALUES(103,'Bhavin Kanani',4,25000,'14-may-2000','Baroda')
INSERT INTO Person VALUES(104,'Bhoomi Vaishnav',1,39000,'08-feb-2005','Rajkot')
INSERT INTO Person VALUES(105,'Rohit Topiya',2,17000,'23-jul-2001','Jamnagar')
INSERT INTO Person VALUES(106,'Priya Menpara',NULL,9000,'18-oct-2000','Ahmedabad')
INSERT INTO Person VALUES(107,'Neha Sharma',2,34000,'25-dec-2002','Rajkot')
INSERT INTO Person VALUES(108,'Nayan Goswami',3,25000,'01-jul-2001','Rajkot')
INSERT INTO Person VALUES(109,'Mehul Bhundiya',4,13500,'09-jan-2005','Baroda')
INSERT INTO Person VALUES(110,'Mohit Maru',5,14000,'25-may-2000','Jamnagar')

