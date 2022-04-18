select * from tblEmployee4

/** coalesce() returns the first non null value from a table **/

/** 1. Uses of coalesce() **/

select ID, coalesce(FirstName, MiddleName, LastName) as Name
from tblEmployee4