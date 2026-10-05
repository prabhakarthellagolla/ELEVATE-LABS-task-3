use 12pmbatch;
select * from orders1;
select * from customers1;
-- left join : brings all the records from left and matching records from right.
select * from orders1 left join customers1 on orders1.cid=customers1.cid;
-- right join : brings all the records from right and matching records from left.
select * from orders1 right join customers1 on orders1.cid=customers1.cid;
-- inner join : brings only common records also we can write join with ou twriting inner join completely
select * from orders1 inner join customers1 on orders1.cid=customers1.cid;

-- outeer join / full join : brings all tthe records
-- in mysql we doint have any keyword like full join so we combine left join result and right join result using " UNION " keyword
select * from orders1 left join customers1 on orders1.cid=customers1.cid union select * from orders1 right join customers1 on orders1.cid=customers1.cid;

-- if u want select particular columns u should mention tablename.column name 
select orders1.oid,orders1.amount,customers1.name from orders1 left join customers1 on orders1.cid=customers1.cid;
select orders1.oid,orders1.amount,customers1.name from orders1 left join customers1 on orders1.cid=customers1.cid union select orders1.oid,orders1.amount,customers1.name from orders1 right join customers1 on orders1.cid=customers1.cid;
-- shortcut : use "as" keyword
select o.oid,o.amount,c.name from orders1 as o left join customers1 as c on o.cid=c.cid;



-- practice on joins
select * from members;
select * from movies;
select concat(a.first_name," ",a.last_name) as member,b.title from members as a left join movies as b on a.movieid=b.id;

-- people who are not watchooing any movies it can be done by "is" keyword not "="
select concat(a.first_name," ",a.last_name) as member,b.title from members as a left join movies as b on a.movieid=b.id where b.title is null;

-- except people who are not watchooing any movies it can be done by "is not" keyword not "=!"
select concat(a.first_name," ",a.last_name) as member,b.title from members as a left join movies as b on a.movieid=b.id where b.title is not null;

-- cross join : every row from 1 table paired / ccombined with all the rows in second tbalemeals
select * from meals cross join drinks;
select m.mealname, d.drinkname , d.rate+m.rate as  bill from meals as m cross join drinks as d;
-- find bill for pancake and tea
select m.mealname, d.drinkname , d.rate+m.rate as  bill from meals as m cross join drinks as d where mealname = "pancake" and drinkname = "tea";

-- self join
select e.emp_id,concat(e.first_name," ",e.last_name) as employee, concat(m.first_name," ",m.last_name) as manager from myemp as e left join myemp m on e.MGR_ID = m.emp_id;