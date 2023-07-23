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
    
    
    
select *
from customers
join orders
on customers.id=orders.customerId
