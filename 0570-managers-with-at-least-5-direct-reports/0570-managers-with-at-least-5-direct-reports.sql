# Write your MySQL query statement below
select e.name 
from employee e
where id in(select managerid
            from employee m
            group by m.managerid 
            having count(m.managerid)>= 5);
