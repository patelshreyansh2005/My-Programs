--1. Display name of students who is either in Computer or in Electrical.
SELECT NAME FROM COMPUTER
UNION
SELECT NAME FROM ELECTRICAL

--2. Display name of students who is either in Computer or in Electrical including duplicate data.
SELECT NAME FROM COMPUTER
UNION ALL
SELECT NAME FROM ELECTRICAL

--3. Display name of students who is in both Computer and Electrical.
SELECT NAME FROM COMPUTER
INTERSECT
SELECT NAME FROM ELECTRICAL

--4. Display name of students who are in Computer but not in Electrical.
SELECT NAME FROM COMPUTER
EXCEPT
SELECT NAME FROM ELECTRICAL

--5. Display name of students who are in Electrical but not in Computer.
SELECT NAME FROM ELECTRICAL
EXCEPT
SELECT NAME FROM COMPUTER

--6. Display all the details of students who is either in Computer or in Electrical.
SELECT * FROM ELECTRICAL
UNION
SELECT * FROM COMPUTER

--7. Display all the details of students who is in both Computer and Electrical.
SELECT * FROM ELECTRICAL
INTERSECT
SELECT * FROM COMPUTER





