--Lab-5

--1. Display the name of students whose name starts with ‘k’.
SELECT FirstName FROM STUDENTS WHERE FirstName LIKE 'K%'

--2. Display the name of students whose name consists of five characters.
SELECT FirstName FROM STUDENTS WHERE FirstName LIKE '_____'

--3. Retrieve the first name & last name of students whose city name ends with a & contains six characters.
SELECT FirstName,LastName FROM STUDENTS WHERE city LIKE '_____a'

--4. Display all the students whose last name ends with ‘tel’.
SELECT * FROM STUDENTS WHERE LastName LIKE '%tel'

--5. Display all the students whose first name starts with ‘ha’ & ends with ‘t’.
SELECT FirstName FROM STUDENTS WHERE FirstName LIKE 'ha%t'

--6. Display all the students whose first name starts with ‘k’ and third character is ‘y’.
SELECT * FROM STUDENTS WHERE FirstName LIKE 'k_y%'

--7. Display the name of students having no website and name consists of five characters.
SELECT FirstName FROM STUDENTS WHERE WEBSITE IS NULL AND FirstName LIKE '_____'

--8. Display all the students whose last name consist of ‘jer’.
SELECT * FROM STUDENTS WHERE LastName LIKE '%jer%'

--9. Display all the students whose city name starts with either ‘r’ or ‘b’.
SELECT * FROM STUDENTS WHERE city LIKE 'r%' OR CITY LIKE 'b%'

--10. Display all the name students having websites.
SELECT * FROM STUDENTS WHERE WEBSITE IS NOT NULL

--11. Display all the students whose name starts from alphabet A to H.
SELECT * FROM STUDENTS WHERE FirstName LIKE '[A,H]%'

--12. Display all the students whose name’s second character is vowel.
SELECT * FROM STUDENTS WHERE FirstName LIKE '_[a,e,i,o,u]%'

--13. Display student’s name whose city name consist of ‘rod’.
SELECT * FROM STUDENTS WHERE CITY LIKE '%rod%'

--14. Retrieve the First & Last Name of students whose website name starts with ‘bi’.
SELECT FirstName,LastName FROM STUDENTS WHERE WEBSITE LIKE 'bi%'

--15. Display student’s city whose last name consists of six characters.
SELECT city FROM STUDENTS WHERE LastName LIKE '______'

--16. Display all the students whose city name consist of five characters & not starts with ‘ba’.
SELECT * FROM STUDENTS WHERE city LIKE '______' AND CITY NOT LIKE 'ba%'

--17. Show all the student’s whose division starts with ‘II’.
SELECT * FROM STUDENTS WHERE Division LIKE 'II%'

--18. Find out student’s first name whose division contains ‘bc’ anywhere in division name.
SELECT FirstName FROM STUDENTS WHERE Division LIKE '%bc%'

--19. Show student id and city name in which division consist of six characters and having website name.
SELECT StuID,city FROM STUDENTS WHERE Division LIKE '______' AND WEBSITE IS NOT NULL

--20. Display all the students whose name’s third character is consonant.
SELECT * FROM STUDENTS WHERE FirstName NOT LIKE '__[A,E,I,O,U]%'
