select * from dbo.tblPerson1

set identity_insert tblPerson1 ON
set identity_insert tblPerson1 OFF

insert into dbo.tblPerson1 values ('John')
insert into dbo.tblPerson1 values ('Tom')
insert into dbo.tblPerson1 values ('Sara')

delete from tblPerson1 where PersonID = 1


insert into dbo.tblPerson1  (PersonId, Name) values (1,'Jack')

insert into dbo.tblPerson1 values ('Jane')

DBCC CHECKIDENT(tblPerson1, Reseed, 0)

delete from tblPerson1