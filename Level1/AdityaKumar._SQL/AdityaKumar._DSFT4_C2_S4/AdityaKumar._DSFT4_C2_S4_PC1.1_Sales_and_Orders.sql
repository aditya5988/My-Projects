create database if not exists Sales_and_orders_;
use sales_and_orders_;
create table customer_data_(customer_id int primary key, customer_name varchar(50), address varchar(50), rating int);
insert into customer_data_ (customer_id, customer_name, address, rating) values (101, 'Adam', 'Bangalore',200),(102, 'Alex', 'Delhi',300),(103, 'Stuart', 'Rohtak',100),( 2001,'Hoffman','London', 100),(2002, 'Glovany','Rome', 200),(2003,'Liu','Sane Jose',100),(2004,'Grass','Berlin', 300),(2005,'Clemens', 'London', 200),(2006,'Cisnores','San Jose', 200),(2007,'Pereira', 'Rome', 300);
create table order_data(order_id int primary key, order_name varchar(50), Amount int, Order_date date, customer_id int, foreign key (customer_id) references customer_data_(customer_id));
insert into order_data(order_id, order_name, Amount, Order_date) values (10, 'Order 1', 123, '2020-02-01'), (11, 'Order 2', 187, '2020-10-02'),(12, 'Order 3', 100, '2000-07-30'),(3005, 'Order 4', 201, '2011-10-09'),(3009, 'Order 5', 145, '2012-10-10'),(3007, 'Order 6', 167, '2020-04-02'),(3008, 'Order 7', 189, '2020-03-06'),(3010, 'Order 8', 200, '2012-02-23'),(3011, 'Order 9', 100, '2000-09-18');
create table sales_data(sales_id int, First_name varchar(50), city varchar (50), commission_rate int);
insert into sales_data(sales_id, First_name, city, commission_rate) values (1002, 'Peter', 'London', 12), (1002, 'Peter', 'London', 12),(1003, 'Rifkin', 'Barcelona', 15), (1004, 'Judith','London', 11),(1008, 'John', 'London', 0),(1009, 'Charles', 'Florida', Null),(1009, 'Charles', 'Florida', Null),(1004, 'Judith','London', 11);
-- task1
select * from Customer_data_ where address = 'London';

-- task2
select * from sales_data where first_name like 'P_L';

-- task3
select * from sales_data where city in ( 'San Jose', 'London', 'Brazil');

-- task4
select * from customer_data_ where customer_name like 'A%' or customer_name like 'G%';

-- task5
select max(rating), address from customer_data_ group by address;

-- Task6
Select * from sales_data where city in ('Barcelona', 'London');

-- Task7
Select * from order_data where date(order_date) between '2020-10-02' and '2020-12-04';

-- task 8
select sum(amount) from order_data;

-- task9
select * from customer_data_ where rating is not null;

-- Task10
select concat(customer_name) as customer_name from customer_data_;

-- Task11
select * from Customer_data_ where rating between 100 and 200;

-- task12
select * from customer_data_ order by customer_name;

-- task 13
select * from order_data order by amount desc;

-- task14
select avg(amount) from order_data;

-- task 15
select count(customer_id), address from customer_data_ group by address;

-- task16
select reverse(customer_name), address from customer_data_ group by address;

-- task17
select * from order_data where month(order_date)=4;


-- task18
select amount from order_data order by amount desc limit 5;

-- task19
select max(commission_rate) from sales_data;

-- task20
select commission_rate from sales_data order by commission_rate limit 2,3;

