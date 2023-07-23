select e1.first_name,e1.last_name,e1.email,e1.phone_number,e1.salary,e2.first_name as manager,e2.salary as manager_salary
from employees e1
join employees e2
on e1.manager_id = e2.employee_id
where e1.salary > e2.salary