select * from tblPerson

Alter table tblPerson
Add constraint UQ_tblPerson_Email Unique (Email)

insert into tblPerson values (7, 'ABC', 'a@a.com',1, 20)

insert into tblPerson values (8, 'XYZ', 'a@a.com',2, 21)

Alter table tblPerson
drop UQ_tblPerson_Email

insert into tblPerson values (8, 'XYZ', 'a@a.com',2, 21)