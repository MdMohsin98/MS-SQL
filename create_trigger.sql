create table Test1
(
ID int identity(1,1),
Value nvarchar(20)
)

create table Test2
(
ID int identity(1,1),
Value nvarchar(20)
)


insert into Test1 Values ('X')

select SCOPE_IDENTITY()
select @@IDENTITY
select IDENT_CURRENT('Test2')

select * from Test1
select * from Test2

create trigger trForInsert on Test1 for insert
as
begin
	Insert into Test2 Values ('YYYY')
end


insert into Test2 Values ('zzz')
