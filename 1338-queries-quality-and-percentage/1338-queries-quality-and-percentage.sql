# Write your MySQL query statement below
select query_name, round(avg(rating/position), 2)as quality, round(avg(rating<3)*100, 2) as poor_query_percentage
FROM Queries
group by query_name;