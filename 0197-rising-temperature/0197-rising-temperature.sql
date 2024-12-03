# Write your MySQL query statement below
select w1.id
from weather w1
cross join weather w2
on w1.recordDate= Date_add(w2.RecordDate, interval 1 day)
where w1.temperature > w2.temperature;