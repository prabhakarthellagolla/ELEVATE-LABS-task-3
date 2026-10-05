use 12pmbatch;
-- student name and their friend name
select s.s_name as student_name , o.s_name as friend_name from students s left join students o on s.friend_id=o.student_id;

-- if statement
select * from myemp;
select *, if(salary>12000,"high",if(salary<8000,"low","avg")) as saltype from myemp;

-- case statement
select * ,
case
when salary>12000 then "high"
when salary<8000 then "low"
else "avg"

end as saltype
from myemp;

CREATE TABLE pt1 (
    id INT,
    name VARCHAR(23),
    ph1 CHAR(5),
    ph2 CHAR(5),
    ph3 CHAR(5)
);

INSERT INTO pt1 VALUES
(1, 'A', '12345', NULL, '65412'),
(2, 'B', NULL, '65412', '12345'),
(3, 'C', NULL, NULL, '65412'),
(4, 'D', NULL, NULL, NULL);
-- the coalesce finds the first not null value
select *,coalesce(ph1,ph2,ph3,"not available") from pt1;
select * from pt1 where coalesce(ph1,ph2,ph3,"not available")="not available";


-- views are virtual tables and do not occupy space
-- used for security purpose
-- views cxan store lengthy queries
-- views are just like your tbale

create view dep60 as select * from myemp where dep_id=60;
-- create  a view showing menu of meals and drinks
create view menu as select m.mealname,d.drinkname,m.rate + d.rate from meals m cross join drinks d;