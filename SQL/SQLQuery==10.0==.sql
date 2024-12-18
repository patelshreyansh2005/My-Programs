--1. Combine information from student and result table using cross join or Cartesian product.
select * from Student cross join Result

--2. Display Rno, Name, Branch and SPI of CE branch’s student only.
select student.RollNo,Student.Name,Student.Department,Result.SPI from Student
left outer join Result
on Result.RollNo=Student.RollNo

--3. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
select student.RollNo,Student.Name,Student.Department,Result.SPI from Student
left outer join Result
on Result.RollNo=Student.RollNo
where Department = 'EC'

--4. Display average result of each branch.
select Student.Department,AVG(Result.SPI) from Student
left outer join Result
on Result.RollNo=Student.RollNo
group by Student.Department

--5. Display average result of each branch and sort them in ascending order by SPI.
select Student.Department,AVG(Result.SPI) as AVJSPI from Student
left outer join Result
on Result.RollNo=Student.RollNo
group by Student.Department
order by AVJSPI

--6. Display average result of CE and ME branch.
select Student.Department,AVG(Result.SPI) from Student
left outer join Result
on Result.RollNo=Student.RollNo
group by Student.Department
having Student.Department = 'CE' or Student.Department = 'ME'

--7. Perform the left outer join on Student and Result tables.
select student.RollNo,Student.Name,Student.Department,Result.SPI from Student
left outer join Result
on Result.RollNo=Student.RollNo

--8. Perform the right outer join on Student and Result tables.
select student.RollNo,Student.Name,Student.Department,Result.SPI from Student
right outer join Result
on Result.RollNo=Student.RollNo

--9. Perform the full outer join on Student and Result tables.
select student.RollNo,Student.Name,Student.Department,Result.SPI from Student
full outer join Result
on Result.RollNo=Student.RollNo

--10. Retrieve the names of employee along with their manager’s name from the Employee table.
