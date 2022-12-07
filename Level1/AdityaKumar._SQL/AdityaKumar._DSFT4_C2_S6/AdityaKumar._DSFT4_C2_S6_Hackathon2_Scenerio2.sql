use sakila;

-- task 1
select c.name, sum(rental_rate) as profit from film f inner join film_category fc on f.film_id = fc.film_id inner join category c on fc.category_id = c.category_id group by c.name order by sum(rental_rate)  desc;

-- task 2 
select concat(a.first_name,' ',a.last_name) as actor_name, a.actor_id, f.replacement_cost from actor a inner join film_actor fa on a.actor_id = fa.actor_id inner join film f on fa.film_id = f.film_id group by a.actor_id order by f.replacement_cost desc;

-- task3 

select f.film_id, c.name, count(r.inventory_id)*f.rental_rate as TotalRentalEarned from inventory i join rental r on r.inventory_id = i.inventory_id 
join film_category fc on i.film_id = fc.film_id
join film f on f.film_id = fc.film_id 
join category c on c.category_id = fc.category_id group by film_id;

-- task 4
select flm.title, count(*) number_in_inventory from film flm inner join inventory inv on flm.film_id = inv.film_id where lower(flm.title)=lower('BROTHERHOOD BLANKET') group by flm.title;
select flm.title, count(*) number_in_inventory from film flm inner join inventory inv on flm.film_id = inv.film_id where lower(flm.title)=lower('SOUP WISDOM') group by flm.title;

-- Task 5
select cat.name category_name , sum(ifnull(pay.amount,0))revenue from category cat
left join film_category flm_cat on cat.category_id = flm_cat.category_id
left join film fil
on flm_cat.film_id = fil.film_id
left join inventory inv on fil.film_id = inv.film_id left join
rental ren on inv.inventory_id = ren.inventory_id
left join payment pay on ren.rental_id = pay.rental_id
group by cat.name
order by revenue desc limit 10;


-- task 6
select sum(p.amount) as revenue, f.title as cultural_movie from payment p inner join rental r on p.rental_id = r.rental_id inner join inventory i on i.inventory_id = r.inventory_id inner join film f
on f.film_id = i.film_id where f.description like '%sumo%'or f.description like '%wrestle%' group by f.title order by revenue desc limit 5;

-- task 7
select f.film_id, f.title from city ci inner join country cou on ci.country_id = cou.country_id inner join address ad on ci.city_id = ad.city_id inner join customer c on ad.address_id = c.address_id inner join store st on c.address_id = st.store_id
inner join inventory iv on st.store_id = iv.store_id 
inner join film f on iv.film_id = f.film_id where cou.country = 44 or cou.country =103 or cou.country =101;







