--1. Delete records of Customer table who belongs to BOMBAY City.
DELETE FROM CUSTOMERS WHERE CITY='BOMBAY'
--2. Delete all account numbers whose amount less than equals to 1000.
DELETE FROM DEPOSIT WHERE AMOUNT<=1000
--3. Delete borrowers whose branch name is ‘AJNI’.
DELETE FROM BORROW WHERE BNAME='AJNI'
--4. Delete all the borrowers whose loan number between 201 to 210.
DELETE FROM BORROW WHERE LOANNO <202 AND LOANNO>211 
--5. Delete customers who opened account after date '1-12-96'. (Use DEPOSIT table)
DELETE FROM DEPOSIT WHERE ADATE > '1-12-96'
--6. Delete all the records of Customers table. (Use TRUNCATE)
TRUNCATE TABLE CUSTOMER
--7. Remove all customers whose name is ANIL & Account Number is 101.
DELETE FROM DEPOSIT WHERE CNAME='ANIL' AND ACTNO=101
--8. Delete all the depositors who do not belongs to ‘ANDHERI’ branch.
DELETE FROM DEPOSIT WHERE BNAME <> 'ANDHERI'
--9. Delete all the borrowers whose loan amount is less than 2000 and does not belong to VRCE branch.
DELETE FROM BORROW WHERE AMOUNT<2000 AND BNAME<>'VRCE'
--10. Remove Branch table. (Use DROP)
DROP TABLE BRANCH