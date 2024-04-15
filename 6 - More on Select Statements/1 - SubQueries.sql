# SubQueries are a really powerful concept in
# SQL - they enable you to compound on several instructions
# Let's check!

select * from sakila.film;

# Let's start with a by doing a join on sakila.film 
# with sakila.language to obtain the name of the language
# of the movie, instead of the id

select a.language_id, b.name, a.length
from sakila.film as a 
inner join 
sakila.language as b 
on a.language_id = b.language_id;

# This will give me the language id, name and length 
# for each movie.
# I can treat this as a table and do everything we've learned
# so far with tables 

# How? By enclosing our instruction in parenthesis and giving
# it an alias!


select my_query.* from 
(select a.language_id, b.name, a.length
from sakila.film as a 
inner join 
sakila.language as b 
on a.language_id = b.language_id) as my_query
;

# I can do a group by on top of this!
select my_query.name, avg(length) as avg_length 
from 
(select a.language_id, b.name, a.length
from sakila.film as a 
inner join 
sakila.language as b 
on a.language_id = b.language_id) as my_query
group by my_query.name
;

# Let's see another example - with a double group by:

select * from sakila.payment;

# Summing the total amount by customer and staff
select customer_id, staff_id, 
sum(amount) as total_amount
from sakila.payment
group by 1, 2;

# Now imagine I would like to count the total number 
# of customers by each staff_id 
# We can use a subquery!

select staff_id, count(customer_id) as nb_customers 
from 
(select customer_id, staff_id, 
sum(amount) as total_amount
from sakila.payment
group by 1, 2) as summed_customers
group by staff_id;

# We can't do it directly on the payment table because 
# we don't have a single row per customer and staff! 
# Those rows are multiplicated by the number of movies
# the customer bought.

# Always refer to the primary keys of the table 
# when you have these questions. In this case, this would
# be easy to understand just by visiting the structure
# of the table - as the primary key is a rental_id that identifies
# the row.