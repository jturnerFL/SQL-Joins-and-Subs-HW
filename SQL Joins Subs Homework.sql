--1. List all customers who live in Texas (use joins)
select customer.first_name, customer.last_name, postal_code
from customer 
right join address 
on customer.address_id = address.address_id

Cannot find 'state' anywhere



--2. Get all payments above $6.99 with the Customers full_ name_
select first_name, last_name
from customer 




--3. Show all customers names who have made payments over $175(use subqueries)
select amount, customer_id
from payment
where amount >175


--4. List all customers that live in Nepal (use the citytable)
select customer.first_name, customer.last_name, customer.email, country 
from customer 
full join address  
on customer.address_id = address.address_id
full join city
on address.city_id = city.city_id 
full join country 
on city.country_id = country.country_id 
where country = 'Nepal'


--5. Which staff member had the most transactions?
select staff.first_name, staff.last_name, 


--6. How many movies of each rating are there?
select rating, film_id 
from film
group by film_id, rating;


--7.Show all customers who have made a single payment above $6.99 (Use Subqueries)
select amount, customer_id
from payment
where amount > 6.99


--8. How many free rentals did our store give away?
select amount
from payment
group by amount
order by sum(amount)=0 desc;

