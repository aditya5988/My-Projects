create database if not exists Car_Sales;
-- Task1, Task2
create table Sales_Car (Sales_id int, Customer Varchar(1000), city varchar(100), Commission_rate int);
-- Task3
insert into Sales_Car (Sales_id, Customer, city, Commission_rate) values (1002, 'Peter', 'London', 12),(1002, 'Peter', 'London', 12),(1003,'Rifkin','Barcelona',15),(1004,'Judith','London', 11),(1008, 'John', 'London', 0),(1009, 'Charles', 'Florida',Null),(1009, 'Charles', 'Florida',Null),(1004,'Judith','London',11),(1004,'Judith','London',11),(1003,'Rifkin','Barcelona',15),(1003,'Rifkin','Barcelona',15),(1003,'Rifkin','Barcelona',15),(1001,'Serres', 'San Jose', 13),(1001,'Serres', 'San Jose', 13),(1009, 'Charles', 'Florida',Null),(1008, 'John', 'London', 0),(1008, 'John', 'London', 0),(1008, 'John', 'London', 0);
-- Task4
Select* from sales_car;