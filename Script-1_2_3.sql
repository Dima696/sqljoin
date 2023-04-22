create schema netologyjon;

create table netologyjon.CUSTOMERS(
id serial PRIMARY key,
name varchar(30),
surname varchar(50),
age Integer,
phone_number Integer
)



create table netologyjon.ORDERS(
id serial PRIMARY KEY,
date date,
customer_id integer references netologyjon.CUSTOMERS(id),
product_name varchar(110),
amount Integer
)

drop table netologyjon.orders
drop table netologyjon.CUSTOMERS;

INSERT INTO netologyjon.customers (name,surname,age,phone_number)
values
('Ivan','Ivanov',24,77777777),
('Avan','Avanov',37,88888888),
('Gvan','Gvanov',50,99999999)


INSERT INTO netologyjon.orders(product_name,amount)
values
('piza',100),
('sosiska',200),
('kapusta',150)


select product_name
from netologyjon.orders o 
join netologyjon.customers c on c.id = o.id
where lower (c."name") = 'gvan'






