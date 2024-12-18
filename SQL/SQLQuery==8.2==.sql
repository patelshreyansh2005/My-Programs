--5
select city,count(city) from employee
group by city

--8
select avg(salary) from employee
group by Department

--10
select department from Employee
group by Department
having sum(Salary) > 50000

--14
select sum(salary) from employee






--1
select count(distinct company) from product_mast

--2
select sum(qty) from product_mast
where rate = 25

--3
select company,count(product) from product_mast
group by company

--4
select company,sum(qty) from product_mast
group by company 
having sum(qty) > 10

--5
select company,count(product),sum(cost) from product_mast
group by company

--6
select company,count(product) from product_mast
where qty>2
group by company
having sum(cost)>100

--7
select product,rate,rate+rate*0.1 from PRODUCT_MAST

--8
update PRODUCT_MAST set rate = rate+rate*0.1

--9
select cost-cost*0.05 from PRODUCT_MAST

--10
select company,sum(cost),sum(cost)-sum(cost)*0.05 from PRODUCT_MAST
group by COMPANY 
having sum(cost)-sum(cost)*0.05 > 300

--11
select company,sum(cost),sum(cost)-sum(cost)*0.05 from PRODUCT_MAST
where COMPANY like '%2'
group by COMPANY 
having sum(cost)-sum(cost)*0.05 > 300
