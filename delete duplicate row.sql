create table Person(
id int,
email varchar(50));


INSERT INTO Person (id, email)
VALUES
    (1, 'john@example.com'),
    (2, 'jane@example.com'),
    (3, 'mark@example.com'),
    (4, 'alice@example.com'),
    (5, 'bob@example.com'),
    (6, 'bob@example.com'),
    (7, 'jim@example.com'),
    (8, 'mark@example.com'),
    (9, 'jane@example.com');
    
    
 --    find duplicate
select distinct p1.email
from Person p1
inner join person p2
on p1.email = p2.email
where p1.id <> p2.id;


select * 
from person;

-- disable safe update 
SET SQL_SAFE_UPDATES = 0;

-- remove all the rows only 
truncate person;

-- delete from person condition id>id and email=email
DELETE p1
FROM person p1
JOIN person p2
WHERE p1.id > p2.id AND p1.email = p2.email;

-- return only unique 
select min(id),email
from person
group by email;



-- how inner join works
select *
FROM person p1
JOIN person p2
WHERE p1.id > p2.id AND p1.email = p2.email;

