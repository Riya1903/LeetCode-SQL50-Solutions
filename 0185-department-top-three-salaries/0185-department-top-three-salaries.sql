# Write your MySQL query statement below
select d.name as Department,
      e1.name as Employee,
      e1.salary as Salary
from
employee e1 
inner join department d
on e1.departmentid=d.id
where 3>(
    select count(distinct (e2.salary)) from employee e2
    where e2.salary>e1.salary and
    e1.departmentId=e2.departmentId
)