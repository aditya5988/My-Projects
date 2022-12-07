create database if not exists Sales_andorders_;
use sales_andorders_;
create table customers (customer_id int primary key, customer_name varchar(50), address varchar(50), rating int, sales_id int);
insert into customers (customer_id, customer_name, address, rating, sales_id) values (101, 'Adam', 'Bangalore',200, 1001),(102, 'Alex', 'Delhi',300, 1002),(103, 'Stuart', 'Rohtak',100, 1007),( 2001,'Hoffman','London', 100, 1004),(2002, 'Glovany','Rome', 200, 1003),(2003,'Liu','Sane Jose',100, 1005),(2004,'Grass','Berlin', 300, 1008),(2005,'Clemens', 'London', 200, 1009),(2006,'Cisnores','San Jose', 200, 1001),(2007,'Pereira', 'Rome', 300, 1004);
create table orders (order_id int primary key, order_name varchar(50), Amount int, Order_date date, customer_id int, foreign key (customer_id) references customers(customer_id));
insert into orders (order_id, order_name, Amount, Order_date) values (10, 'Order 1', 123, '2020-02-01'), (11, 'Order 2', 187, '2020-10-02'),(12, 'Order 3', 100, '2000-07-30'),(3005, 'Order 4', 201, '2011-10-09'),(3009, 'Order 5', 145, '2012-10-10'),(3007, 'Order 6', 167, '2020-04-02'),(3008, 'Order 7', 189, '2020-03-06'),(3010, 'Order 8', 200, '2012-02-23'),(3011, 'Order 9', 100, '2000-09-18');
create table salespersons (sales_id int, First_name varchar(50), city varchar (50), commission_rate int, order_id int, foreign key (order_id) references orders(order_id));
insert into salespersons (sales_id, First_name, city, commission_rate) values (1002, 'Peter', 'London', 12), (1002, 'Peter', 'London', 12),(1003, 'Rifkin', 'Barcelona', 15), (1004, 'Judith','London', 11),(1008, 'John', 'London', 0),(1009, 'Charles', 'Florida', Null),(1009, 'Charles', 'Florida', Null),(1004, 'Judith','London', 11);

-- task1
select first_name as 'Full_name' from salespersons s inner join customers c on s.sales_id = c.sales_id inner join orders o on o.customer_id = c.customer_id;

-- task2

select concat(first_name) as 'customerfullname', first_name as 'salespersonfullname' from customers c inner join salespersons s on c.sales_id = s.sales_id;

-- task3
select concat (First_name)as 'customerfullname', first_name as 'Salespersonfullname' from customers c inner join salespersons s on c.sales_id = s.sales_id group by salespersonfullname having count('salespersonfullname')>1;

-- task4
select s.first_name, o.order_id from salespersons s inner join customers c on s.sales_id = c.sales_id inner join orders o on o.customer_id = c.customer_id group by first_name having count ('full_name')>1;

-- task5
select s.first_name, o.amount, o.order_date, o.order_id, o.customer_id from salespersons s inner join customers c on s.sales_id = c.sales_id right join orders o on o.customer_id = c.customer_id where first_name = 'Judith';

-- task 6
 select * from salespersons where city != All ( select city from customers);
 
 -- task7
 select * from salespersons where city = any (select city from customers);
 
 -- task8
 select s.sales_id, s.city, c.customer_id, c.address, o.order_id, o.order_date from orders o join customers c on o.customer_id = c.customer_id join salespersons s on c.sales_id = s.sales_id where not c.address = s.city;
 
 -- task9
 select c.customer_name, s.commission_rate from customers c inner join salespersons s on c.sales_id = s.sales_id where c.address='London';
 
 -- task10
 create view salespersons_view as select * from salespersons where commission_rate>12;
 
 -- task11
 select s.sales_id, s.first_name, s.city, c.customer_id, c.address from salespersons s join customers c on s.sales_id = c.sales_id where not  s.city = c.address;
 
 -- task12
 select s.first_name from salespersons s inner join customers c on s.sales_id = c.sales_id inner join orders o on o.customer_id = c.customer_id where not o.order_date between '2020-03-10' and '2020-05-10';
 
 -- task13
 select s.first_name from salespersons s inner join customers c on s.sales_id = c.sales_id inner join orders o on o.customers_id = c.customer_id group by first_name having count(First_name);
 
 -- task14
 select s.sales_id, s.first_name, o.order_date, max(o.amount) from orders o join customers c on o.customer_id = c.customer_id join salespersons s on c.sales_id = s.sales_id group by s.sales_id order by amount desc;
 
 -- task15
 create view customer_name as select concat(upper(substring(first_name,1,1)), Upper(substring(First_name,2)), ' ', upper (substring(last_name,1,1)), Upper(substring (last_name,2))) as full_name from customers;
 
 
 
 

