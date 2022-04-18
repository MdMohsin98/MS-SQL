use Sample1

/** Advanced or Intelligent Joins of tables **/

select * from tblEmployee2
select * from tblDepartment

/** 1. Left Joins without matching rows from both the tables **/

select		Name, Gender, Salary, DepartmentID
from		tblEmployee2
left join	tblDepartment 
On			tblEmployee2.DepartmentId = tblDepartment.Id
where		tblEmployee2.DepartmentId is null

/** or **/

select		Name, Gender, Salary, DepartmentName
from		tblEmployee2
left join	tblDepartment 
On			tblEmployee2.DepartmentId = tblDepartment.Id
where		tblDepartment.Id is null


/** 2. Right Joins without matching rows from both the tables **/

select		Name, Gender, Salary, DepartmentName
from		tblEmployee2
right join	tblDepartment 
On			tblEmployee2.DepartmentId = tblDepartment.Id
where		DepartmentId is null


/** 3. Joins of tables without matching rows from both the tables **/

select		Name, Gender, Salary, DepartmentName
from		tblEmployee2
full join	tblDepartment 
On			tblEmployee2.DepartmentId = tblDepartment.Id
where		tblEmployee2.DepartmentId is null
or			tblDepartment.Id is null
