create database if not exists  Car_Sales_Data_;
use car_sales_data_;
-- task1, tasl2, task3
create table sales_person_ (sales_id int primary key, first_name varchar(100), city varchar(100), commission_rate int);
create table customer_data_ (customer_id int primary key, first_name varchar(100) not null, last_name varchar(100), city varchar(100), Rating int, sales_id int, foreign key (sales_id) references sales_person_(sales_id));
create table orders_received_ ( order_id int primary key, Amount int, Order_date date, customer_id int, foreign key (customer_id) references customer_data_ (customer_id));
-- task4
insert into sales_person_ ( sales_id , first_name, city, commission_rate) values ( 1002, 'Peter', 'London', 12),(1003,'Rifkin','Barcelona',15),(1004,'Judith','London', 11),(1008, 'John','London', 0),(1009, 'Charles', 'Florida', Null);
-- task5 , task6
insert into customer_data_ (customer_id, first_name, last_name, city, rating) values (2001,'Hoffman','Anny','London', 100),(2002, 'Glovany','Jenny','Rome', 200),(2003,'Liu','Williams','Sane Jose',100),(2004,'Grass','Harry','Berlin', 300),(2005,'Clemens', 'John', 'London', 200),(2006,'Cisnores','Fanny','San Jose', 200),(2007,'Pereira', 'Jonathan', 'Rome', 300); 
-- task7
insert into orders_received_ (order_id, Amount, Order_date) values (3001, 123, '2020-02-01'),(3003, 187, '2020-10-02'),(3002, 100, '2000-07-30'),(3005, 201, '2011-10-09'),(3009, 145, '2012-10-10'),(3007, 167, '2020-04-02'),(3008, 189, '2020-03-06'),(3010, 200, '2012-02-23'),(3011, 100, '2000-09-18'); 
-- task8
delete from orders_received_ where order_id=3011;

-- task9
delete from sales_person_ where commission_rate=0;

-- task10
update orders_received_ set amount= 1.2*(amount) where amount<100;

-- task 11
alter table Customer_data_ add index customerid_index (customer_id);

-- task12
update sales_person_ set commission_rate=28 where commission_rate=26;

-- task 13
update customer_data_ set rating=150 where rating=100;
select * from customer_data_;


