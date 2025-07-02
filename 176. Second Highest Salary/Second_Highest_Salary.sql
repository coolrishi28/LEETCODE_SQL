select max(salary) as SecondHighestSalary
from (
    select salary, dense_rank() over (order by salary desc) as r
    from employee
) as sub
where r = 2
