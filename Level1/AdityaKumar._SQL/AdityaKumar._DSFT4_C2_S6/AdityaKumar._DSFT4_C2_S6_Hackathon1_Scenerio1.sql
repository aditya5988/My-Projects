use sakila;
-- Task1
select first_name, last_name, last_update from actor;

-- Task2
-- task 2.1

select concat(first_name, ' ' , last_name) as full_name from actor;

-- task2.2

select count(actor_id)from actor where first_name = last_name;

-- task2.3

select distinct last_name from actor;
select count(distinct last_name) from actor;

 
 -- task3
 
 select actor_id, first_name from actor group by actor_id having count(actor_id)=1; -- names are not repeated
 
 select actor_id, first_name,count(first_name) from actor group by first_name having count('First_name')>1; -- names are repeated
 
 -- task4
 
 select a.first_name, a.last_name, a.actor_id, f.film_id, fc.category_id, c.name from actor a inner join  film_actor f on a.actor_id = f.actor_id inner join film_category fc on f.film_id = fc.film_id inner join category c on fc.category_id = c.category_id;
 
 -- task5
 
 select * from film where rating = 'R';
 select * from film where rating <> 'R';
 select * from film where rating != 'R' ;
 select rating, count(rating)from film group by rating;
 
 select * from film where rating in ('G', 'R', 'PG');
  select rating, avg(rental_rate)  as r, max(rental_rate), min(rental_rate) from film group by rating order by r desc;
 
 select fl.film_id, fl.title, fl.description, fl.rating, c.category_id, c.name from film fl  inner join film_category fc on fl.film_id = fc.film_id inner join category c on fc.category_id = c.category_id;
 
 select fl.film_id, fl.title, fl.description, fl.rating, c.category_id, c.name from film fl  inner join film_category fc on fl.film_id = fc.film_id inner join category c on fc.category_id = c.category_id group by c.name;
 
 
 -- task6
 
 select film_id, title, replacement_cost from film where replacement_cost< 9;
 
 select film_id, title, replacement_cost from film where replacement_cost  between 15 and 20; 
 
 select film_id, title, replacement_cost  from film where replacement_cost = 29.99;
 select film_id, title, replacement_cost  from film where replacement_cost = 9.99;
 
 -- task7
 
 select  count(actor_id), film_id from film_actor group by film_id ;
 
 -- task8
 
 select title, film_id from film where title like 'K%' or title like 'Q%';
 
 -- task9
 
 select a.actor_id, a.first_name, f.film_id, f.title from actor a inner join film_actor fa on a.actor_id = fa.actor_id inner join film f on fa.film_id = f.film_id where f.film_id = 6;
 
 -- task 10
 select f.title, f.description, f.rating, c.name from film f inner join film_category fc on f.film_id = fc.film_id inner join category c on fc.category_id = c. category_id where c.category_id = 8;
 
 -- task 11 
 
 select f.title, count(rental_id) as 'Times Rented'
 from rental r 
 join inventory i 
 on (r.inventory_id = i.inventory_id)
 join film f 
 on (i.film_id = f.film_id)
 group by f.title
 order by 'Times Rented' Desc;
 
 -- task 12
 
 select f.title, f.rating, c.name from film f inner join film_category fc on f.film_id = fc.film_id  inner join category c on fc.category_id = c.category_id where (f.replacement_cost - f.rental_rate) > 15;
 
 -- task13
 
select name, count(film_id) as Number_of_films
from film_category inner join category using (category_id)
group by category_id
having Number_of_films >65 and Number_of_films <70
order by Number_of_films;
 
 
 
 