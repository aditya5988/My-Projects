create database if not exists abc_inc; -- Task1
use abc_inc;
-- Task2, Task3

create table A_Sql (employee_id int, age int, Proficiency int);
insert into A_sql ( employee_id, age, Proficiency) values (100, 25, 2), (101, 26, 3), (102, 27, 4), (103, 28, 5);
Select * from A_Sql;

create table B_Oracle (employee_id int, age int, Proficiency int);
insert into B_Oracle (employee_id, age, Proficiency) values (104, 24, 2), (105, 26, 3), (106, 27, 4), (107, 29, 5);
create table C_html (employee_id int, age int, Proficiency int);
insert into C_html (employee_id, age, Proficiency) values (108, 24, 2), (109, 26, 3), (110, 27, 4), (111, 29, 5);
-- Task4
Alter Table B_Oracle rename to B_Sql;
-- Task5
Truncate table B_Sql;


-- Task6
Drop table C_html;
-- Task7
Create Table AB_Sql Select * from A_Sql;
insert into AB_SQl Select * from B_Sql;
Select * from AB_Sql;




















