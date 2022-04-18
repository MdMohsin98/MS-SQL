use Sample1
go
CREATE TABLE [dbo].[tblEmployee3](
	[EmployeeId] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[ManagerID] [int] NULL,
)
select * from tblEmployee3

/** 1. Left Outer Self Join of a table **/

select * from tblEmployee3;

select		E.name as Employee, M.name as Manager
from		tblEmployee3 as E
left join	tblEmployee3 as M
on			E.ManagerID = M.EmployeeId


/** 2. Inner Self Join of a table **/

select		E.name as Employee, M.name as Manager
from		tblEmployee3 E
Inner join	tblEmployee3 M
on			E.ManagerID = M.EmployeeId


/** 3. Cross Self Join of a table **/

select		E.name as Employee, M.name as Manager
from		tblEmployee3 E
Cross join	tblEmployee3 M


