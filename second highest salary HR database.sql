use hr;
SELECT max(salary)
FROM employees
WHERE salary <> (SELECT MAX(salary) FROM employees);








select *
from employees
order by salary desc