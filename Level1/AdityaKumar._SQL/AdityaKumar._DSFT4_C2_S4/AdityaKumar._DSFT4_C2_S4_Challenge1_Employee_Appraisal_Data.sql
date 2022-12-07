use hr;

-- task1
select count(employee_id) from employees;

-- task2
select count(employee_id), department_id from employees group by department_id;

-- task3
select first_name, salary from employees where salary > 6000;

-- task 4
select count(employee_id), salary from employees where salary>20000;

-- task5
select count(employee_id), salary from employees where department_id=60 and salary>6000;

-- task6
alter table employees add ( Annual_CTC int);

-- task7
update employees set annual_CTC= (1.2*(salary))*12 where salary<=15000;
update employees set annual_CTC= (1.1*(salary))*12 where salary between 16000 and 20000;
update employees set annual_CTC=(1.05*(salary))*12 where salary between 21000 and 25000;

-- task8
select * from employees where commission_pct is not null;

-- task9
select concat(first_name, ' ', last_name) as full_name from employees where commission_pct is null;

-- task10
select first_name, last_name, email, phone_number, employee_id from employees where commission_pct is not null;

-- task11
select distinct department_id from employees;
select * from employees order by Annual_CTC desc limit 3;

-- task12
select distinct department_id from employees order by Annual_CTC desc limit 3 ;

-- task13
select * from employees where job_id like '%CLERK%';

-- task 14
select count(job_id like '%CLERK%')as no_of_clerks,avg(salary) from employees where job_id like '%CLERK%'; 

-- task15
select department_id, count(*) as no_of_employees from employees group by department_id;

-- task16
select avg(salary), department_id from employees group by department_id;

-- task17
select distinct department_id from employees where salary between 7000 and 10000 order by department_id;

-- task 18
select first_name, last_name, hire_date, employee_id, (current_date-hire_date)/365 as experience_today from employees;






