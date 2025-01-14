
select * from classicmodels.customers;
select * from customers;
select customerName, phone from classicmodels.customers;
select customerName as 'Customer Name', phone as 'Phone Number' from classicmodels.customers;

select count(2) from classicmodels.customers;
select count(city), count(distinct city) from classicmodels.customers;
select * from payments order by paymentDate asc, amount desc;
select * from payments order by amount desc limit 5;
select * from payments order by amount asc limit 3,  5;
select max(amount), min(amount), avg(amount), sum(amount) from payments;
select * from offices where city = 'Boston';

#2. Retrieve all the data from the tables `actor`, `film` and `customer`.
select * from actor, film, customer;

# 3.1 Titles of all films from the film table
select * from film;
select title from film;

# 3.2. List of languages used in films, with the column aliased as language from the language table
select * from language;


#3.3 List of first names of all employees from the staff table
select * from staff;

select first_name from staff;

#4. Retrieve unique release years.

select distinct release_year from film;  

#5. Counting records for database insights:
#5.1 Determine the number of stores that the company has.

select count(store_id) from store;

#5.2 Determine the number of employees that the company has.
select count(staff_id) from staff;


#5.3 Determine how many films are available for rent and how many have been rented.

select  films from rental_id;

#5.4 Determine the number of distinct last names of the actors in the database.

select distinct last_name from actor;

#6 Retrieve the 10 longest films.
select title, length from film order by length desc limit 10;

#7.1 Retrieve all actors with the first name "SCARLETT".

select * from actor where first_name = 'SCARLETT';

#7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes. 
select * from film where title like '%ARMAGEDDON%';

#7.3 Determine the number of films that include Behind the Scenes content
select * from film where special_features = 'Behind the Scenes';


select * from film;
-- 
-- where city in

select min(status), max(status) from orders;

select datediff(min(orderdate), max(orderdate)) from orders;

select datediff('2023-01-10', '2023-01-01');

select * from orders
where  year (orderDate) = 2005; 

-- select * from orders
-- where  year OrderDate like '2005'; orderDate
-- 
-- select * from payment;
-- 
-- 
-- floor (amount) r
-- 
-- round (amount)
-- 
-- celie

select now();


-- select * from city;