select * from tblGender
select * from tblPerson

Insert into tblPerson (ID,Name,Email)
values (7,'Rich', 'r@r.com')

Alter table tblPerson
Add constraint DF_tblPerson_GenderID
Default 3 for GENDERID

insert into tblPerson (ID, Name , Email) values (8, 'Mike', 'mike@r.com')

insert into tblPerson (ID, Name, Email, GenderID) values (9, 'sara', 's@r.com', 1)

insert into tblPerson (ID, Name, Email, GenderID) values (10, 'johny', 'j@r.com', NULL)


Alter table tblPerson
Drop constraint DF_tblPerson_GenderID


delete from tblGender where ID = 1


delete from tblGender where ID = 3


select * from tblPerson
insert into tblPerson values(6,'sara','s@s.com', 2, 15)

delete from tblPerson where ID = 11


insert into tblPerson values (7, 'sara', 's@s.com', 2, NULL)

delete from tblPerson where ID = 6

select * from tblPerson

alter table tblPerson
drop constraint CK_tblPerson_Age


Alter table tblPerson
Add constraint CK_tblPerson_Age check (AGE > 0 AND AGE < 150)

select * from tblPerson