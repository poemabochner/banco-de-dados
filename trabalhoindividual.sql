
--1 - Listar todos os atores;
--2 - Listar todos os atores com o primeiro nome igual a Christian;
--3 - Listar apenas o nome e sobrenome dos atores com a inicial D;
--4 - Listar os 10 primeiros atores.

--1
select * from actor;
select * from actor where first_name='Christian';
select first_name, last_name from actor where last_name like 'D%';
select * from actor limit 10;

--2
select * from address;
select * from address where district='California';
select city_id, district from address where city_id=449;
select * from address limit 10;

--3
select * from category;
select * from category where name='Drama';
select name, last_update from actor where last_name like 'D%';
select * from actor limit 10;

--4
select * from city;
select * from city where country_id=88;
select city, country_id from city where city like 'P%';
select * from city limit 15;

--5
select * from country;
select * from country where country_id=88;
select last_update, country from country where country like 'P%';
select * from country limit 8;

--6
select * from customer;
select * from customer where first_name = 'Mary';
select first_name, email from customer where last_name  like 'L%';
select * from customer limit 13;

--7
select * from film;
select * from film where rental_duration  = 7;
select title, description  from film where replacement_cost = 14.99;
select * from film limit 12;

--8
select * from 
    film_actor fa 
inner join
    actor a
on
    fa.actor_id = a.actor_id
inner join
    film f
on
    fa.film_id = f.film_id;
 
 
select * from 
    film_actor fa 
inner join
    actor a
on
    fa.actor_id = a.actor_id
inner join
    film f
on
    fa.film_id = f.film_id
where
	f.title like 'P%';

select 
    a.first_name, f.title 
from 
    film_actor fa 
inner join
    actor a
on
    fa.actor_id = a.actor_id
inner join
    film f
on
    fa.film_id = f.film_id
where
    fa.film_id = 5;

select 
    a.first_name, f.title 
from 
    film_actor fa 
inner join
    actor a
on
    fa.actor_id = a.actor_id
inner join
    film f
on
    fa.film_id = f.film_id
limit 7;

--9
select * from 
	film_category fc 
inner join
	film f
on
	fc.film_id = f.film_id
inner join
	category c
on
	fc.category_id = c.category_id;

select * from 
	film_category fc 
inner join
	film f
on
	fc.film_id = f.film_id
inner join
	category c
on
	fc.category_id = c.category_id
where
	f.title like 'A%';

select 
   f.title , f.description  
from 
    film_category fc  
inner join
	film f
on
	fc.film_id = f.film_id
inner join
	category c
on
	fc.category_id = c.category_id
where
	fc.film_id = 5;

select * from 
	film_category fc 
inner join
	film f
on
	fc.film_id = f.film_id
inner join
	category c
on
	fc.category_id = c.category_id
limit 8;
	
--10
select * from 
	inventory i  
inner join
	film f 
on
	i.film_id  = f.film_id
inner join
	rental r 
on
	i.inventory_id  = r.inventory_id;

select * from 
	inventory i  
inner join
	film f 
on
	i.film_id  = f.film_id
inner join
	rental r 
on
	i.inventory_id  = r.inventory_id
where
	f.film_id = 271;

select  
	r.rental_date, r.return_date  
from
	inventory i 
inner join
	film f 
on
	i.film_id  = f.film_id
inner join
	rental r 
on
	i.inventory_id  = r.inventory_id
where
	f.title like 'T%';

select * from 
	inventory i  
inner join
	film f 
on
	i.film_id  = f.film_id
inner join
	rental r 
on
	i.inventory_id  = r.inventory_id
limit 18;

--11 language 
select * from 
    "language" l
inner join 
    film f 
on 
    l.language_id = f.language_id;

select * from 
    "language" l
inner join 
    film f 
on 
    l.language_id = f.language_id
where 
    f.title = 'Alabama Devil'; 

select * from 
    "language" l
inner join 
    film f 
on 
    l.language_id = f.language_id
where 
    f.title like 'D%'; 

select
    name, title 
from 
    "language" l
inner join 
    film f 
on 
    l.language_id = f.language_id
 limit 5;


--12 payment

select * from 
	payment p  
inner join
	customer c  
on
	p.customer_id  = c.customer_id;
	
select * from 
	payment p  
inner join
	customer c  
on
	p.customer_id  = c.customer_id
where
	c.customer_id = 348;


select
	c.first_name, c.last_name
from
	payment p 
inner join
	customer c  
on
	p.customer_id  = c.customer_id
where
	p.amount = 2.99;

select * from 
	payment p  
inner join
	customer c  
on
	p.customer_id  = c.customer_id
limit 11;

--13 rental
select * from 
	rental r 
inner join
	customer c  
on
	r.customer_id  = c.customer_id;
	
select * from 
	rental r 
inner join
	customer c  
on
	r.customer_id  = c.customer_id
where
	c.first_name like 'A%';

select
	c.last_name, r.return_date
from
	rental r 
inner join
	customer c  
on
	r.customer_id  = c.customer_id
where
	c.customer_id  = 51;

select * from 
	rental r 
inner join
	customer c  
on
	r.customer_id  = c.customer_id
limit 4;

--14 staff
select * from staff;
select * from staff where username = 'Mike';
select first_name, last_name from staff where store_id = 1;
select * from staff limit 2;

--15 store
select * from 
	store s  
inner join
	staff s2  
on
	s.manager_staff_id  = s2.staff_id
inner join
	address a
on
	s.address_id = a.address_id;
	
select * from 
	store s  
inner join
	staff s2  
on
	s.manager_staff_id  = s2.staff_id
inner join
	address a
on
	s.address_id = a.address_id
where
	a.city_id = 300;

select 
	s2.first_name, s2.last_name
from
	store s 
inner join
	staff s2  
on
	s.manager_staff_id  = s2.staff_id
inner join
	address a
on
	s.address_id = a.address_id
where
	s2.first_name like 'M%';

select * from 
	store s  
inner join
	staff s2  
on
	s.manager_staff_id  = s2.staff_id
inner join
	address a
on
	s.address_id = a.address_id
limit 1;