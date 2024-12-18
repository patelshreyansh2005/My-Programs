--1. Update deposit amount of all customers from 3000 to 5000.
UPDATE DEPOSIT SET amount = 5000
--2. Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table)
UPDATE Borrow SET bname = 'C.G. ROAD' WHERE cname = 'ANIL'
--3. Update Account No of SANDIP to 111 & Amount to 5000.
UPDATE DEPOSIT SET actno = 111, amount = 5000 WHERE CNAME = 'SANDIP'
--4. Give 10% Increment in Loan Amount.
UPDATE BORROW SET amount =AMOUNT + amount * 1.1
--5. Update deposit amount of all depositors to 5000 whose account no between 103 & 107.
UPDATE Deposit SET amount = 5000 WHERE actno BETWEEN 103 AND 107
--6. Update amount of loan no 321 to NULL.
UPDATE BORROW SET amount = NULL WHERE loanno = 321
--7. Change Loan number from 201 to 401 & also change branch name from VRCE to AJNI.
UPDATE BORROW SET loanno = 401, bname = 'AJNI' WHERE loanno = 201
--8. Modify customer name ANIL to ANIL JAIN.
UPDATE customers SET cname = 'ANIL JAIN' WHERE cname = 'ANIL'
--9. Change Name to Ramesh, Branch Name VRCE & Amount 5500, Whose Account Number is 102.
UPDATE DEPOSIT SET cname = 'Ramesh', bname = 'VRCE', amount = 5500 WHERE ACTNO = 102
--10. Make Branch Name & Amount NULL, Whose Loan Number is 481 & Name is KRANTI.
UPDATE Borrow SET bname = NULL, amount = NULL WHERE loanno = 481 AND cname = 'KRANTI'