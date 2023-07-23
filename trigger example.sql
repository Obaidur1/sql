use phitron;
create table emp_names (
	id decimal(10),
    first_name varchar(20),
    last_name varchar(20),
    primary key(id)
);

CREATE TRIGGER EMP_trigger
BEFORE INSERT ON emp_names
FOR EACH ROW
SET new.first_name = upper(new.first_name),
new.last_name = upper(new.last_name)

drop trigger EMP_trigger



insert into emp_names(id,first_name,last_name)
value(15,"Sazzad","Hasan");

SELECT * 
FROM emp_names;