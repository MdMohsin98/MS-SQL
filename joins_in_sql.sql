/**Cross Join, Inner Join & Outer Join of Two or More than two tables**/

/** 1. Inner Join or Join **/
use Sample1

select * from tblEmployee2
select * from tblDepartment

/** Inner Join of Tables **/

select * from tblEmployee2
select * from tblDepartment

select Name, Gender, Salary, DepartmentName 
from tblEmployee2
Join tblDepartment
on tblEmployee2.DepartmentId = tblDepartment.Id

/** or we also can type **/

select Name, Gender, Salary, DepartmentName 
from tblEmployee2
Inner Join tblDepartment
on tblEmployee2.DepartmentId = tblDepartment.Id

/** Left Outer Join or Outer Join of Tables **/

select * from tblEmployee2
select * from tblDepartment

select Name, Gender, Salary, DepartmentName 
from tblEmployee2
Left Join tblDepartment
on tblEmployee2.DepartmentId = tblDepartment.Id

/** Or **/

select Name, Gender, Salary, DepartmentName 
from tblEmployee2
Left Outer Join tblDepartment
on tblEmployee2.DepartmentId = tblDepartment.Id

/** Right Outer Join or Right Join of Tables **/

select * from tblEmployee2
select * from tblDepartment

select Name, Gender, Salary, DepartmentName 
from tblEmployee2
Right Outer Join tblDepartment
on tblEmployee2.DepartmentId = tblDepartment.Id


/** Full Outer Join or Full Join of Tables **/

select * from tblEmployee2
select * from tblDepartment

select Name, Gender, Salary, DepartmentName 
from tblEmployee2
Full Outer Join tblDepartment
on tblEmployee2.DepartmentId = tblDepartment.Id

/** Or **/
select Name, Gender, Salary, DepartmentName 
from tblEmployee2
Full Join tblDepartment
on tblEmployee2.DepartmentId = tblDepartment.Id


/** Cross Join of Tables of Cartesian Product of Tables **/

select * from tblEmployee2
select * from tblDepartment

select Name, Gender, Salary, DepartmentName 
from tblEmployee2
Cross Join tblDepartment


/** Generic Formula to remember the Joining of tables **/

select		ColumnList
From		LeftTable
JoinType	RightTable
On			JoinCondition
