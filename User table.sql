use mydatabase;
create table User(
username varchar(30) unique not null,
email varchar(30) unique not null,
first_name varchar(20),
last_name varchar(20),
phone_no char(11) unique not null,
address varchar(50),
hsc_result float,
date_of_birth date not null,
age decimal(3),
password varchar(15) unique not null,
constraint primary key(username)
);

insert into User values("obaidur","obaidur@gmail.com", "obaidur", "rahman","01712345678","faridpur engineering college",4.50,'1999-10-10',24,"1fdsfdf");
select * from User;




drop table User;
use mydatabase;
create table User(
username varchar(30),
email varchar(30),
first_name varchar(20),
last_name varchar(20),
phone_no char(11),
address varchar(50),
hsc_result float,
date_of_birth date,
age decimal(3),
password varchar(15)
);
