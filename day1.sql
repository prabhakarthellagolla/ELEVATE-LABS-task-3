show databases;
create database 12pmbatch;
use 12pmbatch;
show tables;
select * from authors;-- 8 authors
select * from book_sales;-- 0 sales 
select * from books; -- 14books
select * from myemp; 
select * from employees; 
select * from myemp;
select emp_id,first_name,salary from myemp;
select concat(first_name," ",last_name) as fullname,salary from myemp;
-- filtering
select * from myemp where dep_id=80;
select * from myemp where dep_id=50;
select * from myemp where dep_id=50 and mgr_id=120;
select * from myemp where salary>15000;
select emp_id,concat(first_name," ",last_name),salary from myemp where salary between 8000 and 15000;
select emp_id,concat(first_name," ",last_name),salary from myemp where salary>=8000 and salary <=15000;
select emp_id,concat(first_name," ",last_name),salary from myemp where salary not between 8000 and 15000;
select * from myemp where salary <8000 or salary >15000;
select * from myemp where salary >8000 and dep_id=50;
select * from myemp where dep_id=80 or dep_id=50;
select * from myemp where dep_id=80 or dep_id=50 or dep_id=100;
select * from myemp where dep_id not in (80,100,50);
select * from myemp where salary != 8000;
select * from myemp where first_name="steven";
select * from myemp where last_name="kumar";
select * from myemp where first_name="steven" and last_name="king"; -- return persons ehose first and alst name are steven king
select * from myemp where first_name like "s%";-- fisrt nAME begins with s
select * from myemp where first_name like "%s";-- fist name ends with s
select * from myemp where first_name like "%s%";-- name includes s
select * from myemp where first_name like "_a%";-- second letter should be a
select * from myemp where last_name like "%es";-- last  name ends with es
select * from myemp where last_name like "%e_";-- last  name ends with e but one place further