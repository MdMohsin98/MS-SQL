/** All about SELECT command **/
USE [Sample1]
GO

SELECT [ID]
      ,[Name]
      ,[Email]
      ,[GenderID]
      ,[Age]
      ,[City]
  FROM [dbo].[tblPerson]

GO



/**Selecting All people from tblPerson**/
select * from tblPerson

/**Selecting distinct Cities from tblPerson**/
select distinct City from tblPerson

/**Selecting distinct Name, Cities from tblPerson**/
select distinct Name, City from tblPerson

/**Selecting All people residing in London**/
select * from tblPerson where City = 'London'

/**Selecting All people not residing in London**/
select * from tblPerson where City <> 'London'
/**Or**/
select * from tblPerson where city != 'London'

/** Using 'or' Operator**/
select * from tblPerson where age = 20 or age = 21 or age = 29

/** Using '>' , '<', '>=' and '<=' Operator**/
select * from tblPerson where age > 20
select * from tblPerson where age < 20
select * from tblPerson where age >= 20
select * from tblPerson where age <= 20

/** Using 'IN' operator **/
select * from tblPerson where age in (20,21,29)

/** Using 'BETWEEN' operator **/
select * from tblPerson where age BETWEEN 20 AND 25

/** Using 'LIKE' operator **/
select * from tblPerson where City LIKE 'L%'

select * from tblPerson where Email LIKE '%@%'

/** Using 'NOT LIKE' operator **/

select * from tblPerson where Email NOT LIKE '%@%'

/** Using 'Underscore(_)' operator **/
select * from tblPerson where Email NOT LIKE '_@_.com'

select * from tblPerson where Email LIKE '_@_.com'


/** Using Squaring Bracket [] **/

select * from tblPerson where Name Like '[MST]%'

/** Using Squaring Bracket [^] **/

select * from tblPerson where Name Like '[^MST]%'

/**Using multiple conditions**/
select * from tblPerson where (City = 'London' Or City = 'Mumbai') And Age > 25

/**Sorting function **/
select * from tblPerson order by Name

select * from tblPerson order by Name DESC

select * from tblPerson order by Name DESC, Age ASC

select * from tblPerson order by Age DESC

select top 1 * from tblPerson order by Age DESC

/** Using "top" keyword we can select only top values **/

select top 3 * from tblPerson order by Age Desc

select top 3 Name, Age from tblPerson order by Age Desc

select top 3 Name, Age from tblPerson order by Age ASC

/**We can also use "Percent" keyword with 'top' command**/

select top 30 Percent Name, Age from tblPerson order by Age ASC

select top 30 Percent * from tblPerson