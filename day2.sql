create database dummy;
use dummy;
create table students (id int unique,name varchar(50) not null ,
age tinyint check( age >=20) ,course varchar(50) default("DA"), subject enum("excel","tableau","sql"));
desc students;
-- dml
select * from students;
insert into students values (1,"prabhakar",21,"DS","excel");
insert into students values (1,"raju",21,"ds","excel");-- unique constraint
insert into students(id,age,course) values (1,21,"ds");-- null constraint
insert into students(id,name) values (2,"raju");
insert into students values (3,"manoj",19,"DS","excel");-- cheeck (age) constraint
insert into students values (3,"manoj",19,"DS","java");-- enum constraint
select * from students;
-- DDL
ALTER table students add column email text;-- adding a new column
alter table students drop column age; -- removing a column
alter table students rename column name to student_name;-- renaming a column
alter table students modify column student_name varchar(100);-- modifying data types before constraint is 50 now its 100
rename table students to myclass;
select * from myclass;
set sql_safe_updates=0; -- switching safe mode to off to perform upadtes
update myclass set email="prabha@gmail.com" where id=1;-- since the emails are empty now we are applying here if where clas sis missing the email i sgoing to fill every row in email column
update myclass set email="raju@gmail.com" where id=2;
delete from myclass where id=1 and student_name="prabhakar";-- deleting the person data whoose id is 1 ehen u r having more than 1 people with same id we need to use and keyword and  name
select * from myclass;

insert into myclass values (1,"prabhakar","DS","EXCEL","prabha@gmail.com"),
(3,"roja","DA","TABLEAU","roja@gmail.com"),
(4,"rana","Ds","TABLEAU","rana@gmail.com"),
(5,"rafal","DA","TABLEAU","rafal@gmail.com"),
(6,"rock","Ds","TABLEAU","rock@gmail.com"); -- ONE METHOD OF INSERTING
select * from myclass;
insert into myclass (id,student_name,course) values 
(20,"A","DS"),
(21,"B","DA"),
(22,"C","DS");-- NEW METHOD OF INSERTING

DELETE FROM MYCLASS where id=22; -- one method of deleting
select * from myclass;
truncate myclass;-- deletes the data permanently
drop database dummy;-- deletes the data base permanenetly
select * from myclass;-- here myclass doesn"t exist