/** Group by Function **/
create table tblEmployee
(
ID int Not Null primary key,
Name nvarchar(50) not null,
Gender nvarchar(50),
Salary int,
City nvarchar(50)
)
Alter table tblEmployee
insert into tblEmployee (ID, Name, Gender, Salary, City) values 

(2, 'Pam', 'Female', 3000, 'New York'),
(3, 'John', 'Male', 3500, 'London'),
(4, 'Sam', 'Male', 4500, 'London'),
(5, 'Pam', 'Female', 3000, 'New York')

select * from tblEmployee
/**Finding Sum, Min, Max**/
select sum(Salary) from tblEmployee

select min(Salary) from tblEmployee

select max(Salary) from tblEmployee

/** Using Group By Functions **/

select  City, Gender, sum(Salary) as 'Total Salary' 
from tblEmployee 
Group by City, Gender
Order by City



select   Gender, City, sum(Salary) as 'Total Salary' 
from tblEmployee 
Group by Gender, City


/**Using count function**/

select count(*) from tblEmployee

select   Gender, City, sum(Salary) as 'Total Salary' , count(ID) as 'Total Employee'
from tblEmployee 
Group by Gender, City

/** Filtering Groups **/

select   Gender, City, sum(Salary) as 'Total Salary' , count(ID) as 'Total Employee'
from tblEmployee 
where Gender = 'Male'
Group by Gender, City

/** Having clause **/

select   Gender, City, sum(Salary) as 'Total Salary' , count(ID) as 'Total Employee'
from tblEmployee 
Group by Gender, City
Having Gender = 'Male'


/** Having clause **/

select   Gender, City, sum(Salary) as 'Total Salary' , count(ID) as 'Total Employee'
from tblEmployee 
Group by Gender, City
Having sum(Salary) > 5000