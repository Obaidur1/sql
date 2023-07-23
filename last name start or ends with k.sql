use hr;
select * 
from employees
where last_name like '%k' or last_name like 'k%'
