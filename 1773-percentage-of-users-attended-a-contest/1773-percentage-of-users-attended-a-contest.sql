# Write your MySQL query statement below
select r.contest_id, 
round(count(distinct user_id) *100 /(select count(user_id) from users u) ,2) as percentage
from register r
group by r.contest_id
order by percentage desc, contest_id;