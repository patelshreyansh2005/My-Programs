--1. Display the Highest, Lowest, Total, and Average salary of all employees & label the columns Maximum, Minimum, Total_Sal and Average_Sal, respectively.
SELECT MAX(salary) as Maximum,min(salary) as Minimum,sum(salary) as Total_Sal,avg(salary) as Average_Sal from Employee

--2. Find total number of employees of EMPLOYEE table.
select count(*) from Employee

--3. Retrieve maximum salary from IT department.
select max(salary) from Employee where department = 'IT'

--4. Count total number of cities of employee without duplication.
select count(distinct city) from Employee

--5. Display city with the total number of employees belonging to each city.
select city,count(*) from Employee
group by city

--6. Display city having more than one employee.
select city,count(*) from Employee
group by city
having count(*)>1

--7. Give total salary of each department of EMPLOYEE table.
select department,sum(salary) from Employee
group by department

--8. Give average salary of each department of EMPLOYEE table without displaying the respective department name.
select avg(salary) from Employee
group by department

--9. Give minimum salary of employee who belongs to Ahmedabad.
select min(salary) from Employee
where city='Ahmedabad'

--10. List the departments having total salaries more than 50000 and located in city Rajkot.
select department from Employee
where city = 'rajkot'
group by department
having sum(salary)>50000

--11. Count the number of employees living in Rajkot.
select count(*) from Employee
where city = 'rajkot'

--12. Display the difference between the highest and lowest salaries. Label the column name to SAL_DIFFERENCE.
select (max(salary)-min(salary)) as SAL_DIFFERENCE from Employee

--13. Display the total number of employees hired before 1st January, 1991.
select count(*) from Employee
where JoiningDate<'1-2-1991'

--14. Display total salary of each department with total salary exceeding 35000 and sort the list by total salary.
select sum(salary) from Employee
where salary>35000
group by department
order by sum(salary)

--15. List out department names in which more than two employees.
select department,count(*) from Employee
group by department
having count(*)>2

--16. Display Minimum salary of Rajkot City.
select min(salary) from Employee
where city ='Rajkot'

--17. Display City wise total employees count.
select count(*) from Employee
group by city



