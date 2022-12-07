create database if not exists Wat_A_Pizza;
use Wat_A_Pizza;
-- Task1
create table pizzamenu (pizzaname varchar(100) not null, topping varchar(50) not null, size varchar(20) not null, pizzaid int not null Primary key, price int not null);

-- task2
insert into pizzamenu values ('Margherita', 'extra cheese', 'L', 101, 400);
insert into pizzamenu values ('Farmhouse', 'extra cheese', 'M', 102, 300);
insert into pizzamenu values ('Barbecue veg', 'veg topping', 'S', 104, 450);
insert into pizzamenu values ('Tandori veg', 'veg topping', 'M', 105, 290);

-- task3
Create table crust (name varchar(50), crustid int, rate int);
insert into crust values ('Hand tossed', 12, 60);
insert into crust values ('Wheat thin', 13, 70);
insert into crust values ('Fresh pan base', 15, 50);
select * from pizzamenu;

create table customers (name varchar(20) not null, customerid int not null primary key, phoneno varchar(50) not null, address varchar(100) not null);
Insert into customers values ('Neha', 1001, '9877467333', 'Lodhi Road, Delhi');
Insert into customers values ('Prerna', 1006, '9877465633', 'Maharani Bagh, Delhi');
Insert into customers values ('Aayushi', 1008, '7977467333', 'Preet Vihar, Delhi');
Insert into customers values ('Kartik', 1003, '9877409333', 'Lajpat Nagar, Delhi');
Select * from customers;

-- task4
create table orders (orderid int primary key not null, customerid int, orderdate date not null, amount int, servetype varchar(50), pizzaid int, constraint customerid foreign key(customerid) references customers(customerid), constraint pizzaid foreign key (pizzaid) references pizzamenu (pizzaid));

insert into orders values (1, 1001, '2021-05-23', 560, 'Dinein', 101);
insert into orders values (5, 1006, '2021-06-02', 500, 'Delivery', 101);
insert into orders values (7, 1003, '2021-05-20', 400, 'Delivery', 104);
insert into orders values (2, 1008, '2021-05-01', 700, 'Delivery', 102);

-- task5
select * from orders;
insert into pizzamenu values ('Non veg', 'extra cheese', 'M', 1007, 600);

-- task6
insert into crust values('cheese burst', 20, 100);

-- task7
select * from pizzamenu;

-- task8
select customers.name from customers join orders using (customerid) join pizzamenu using (pizzaid) where pizzamenu.size ='L';

-- task9
select pizzamenu.topping, count(pizzamenu.topping) from pizzamenu join orders using (pizzaid) group by pizzamenu.topping;

-- task10
select customers.name, orders.amount from orders inner join customers using (customerid) order by orders.amount desc limit 1;

-- task11
 select orders.servetype, count(orders.servetype) from orders where orders.servetype = 'Delivery' ;
 
 -- task12
 
 update orders join pizzamenu using (pizzaid) set orders.amount = 0.9 *(orders.amount) where pizzamenu.size = 'L'; 








