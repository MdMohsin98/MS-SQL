select * from tblEmployee3

/** 1. Using ISNULL() function **/

select		E.Name as Employee, isnull(M.Name, 'No Manager') as Manager
from		tblEmployee3 E
Left join	tblEmployee3 M
on			E.ManagerId = M.EmployeeID


/** 2. Using COALESCE() function **/

select		E.Name as Employee, COALESCE(M.Name, 'No Manager') as Manager
from		tblEmployee3 E
Left join	tblEmployee3 M
on			E.ManagerId = M.EmployeeID



/** 3. Case Statements **/

select		E.Name as Employee, CASE WHEN M.NAME IS NULL THEN 'No Manager ' ELSE M.NAME END as Manager
from		tblEmployee3 E
Left join	tblEmployee3 M
on			E.ManagerId = M.EmployeeID