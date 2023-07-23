create table Customers(
id int,
Name varchar(30)
);

insert into Customers (id, Name)
values
    (1, 'John Doe'),
    (2, 'Jane Smith'),
    (3, 'Michael Johnson'),
    (4, 'Emily Davis'),
    (5, 'David Wilson');
    
create table Orders (
id int,
customerId int
);
insert into Orders (id, customerId)
values
    (1, 1),
    (2, 2),
    (3, 3);
    
    

SELECT customers.Name
FROM customers
WHERE customers.id NOT IN(select c.id
FROM customers c
JOIN orders o
ON c.id=o.customerId);



select *
from customers c
left join orders
on c.id=orders.customerId;


select *
from customers
left join orders
on customers.id = orders.customerId
where orders.customerId = null
