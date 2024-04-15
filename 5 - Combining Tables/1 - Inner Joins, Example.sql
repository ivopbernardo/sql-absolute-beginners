# One of the most common things to do in SQL 
# is combining tables

# The concept of combining tables is called "join"

# There are multiple join types that you can
# check in this resource: https://www.w3schools.com/sql/sql_join.asp

# Let's first see the INNER JOIN 

select rental_id, customer_id from 
sakila.rental;

# Here we only have rental_id and customer_id per each rental
# what if we want to obtain the names of customer?

# If you check the customer table, you have a mapping
# between the ID and the name

select customer_id, first_name, last_name 
from sakila.customer;

# How can we combine this information?
# Using joins!

select rental.rental_id, rental.customer_id,
cust.first_name, cust.last_name
from sakila.rental as rental
inner join sakila.customer as cust
on rental.customer_id = cust.customer_id;

# We referrence the left table before 
# the keyword "inner join" and the right table
# after the keyword.
# On the "on" clause, we enter they joining key - it
# can be a single column or a multiple one

# Inner joins retrieves only everything that has a correspondece between
# the two tables 

# Building two temporary tables for exemplification
# and inserting some data
CREATE TEMPORARY TABLE sandbox.customers(
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
	customer_name varchar(255) NOT NULL
    );
    
CREATE TEMPORARY TABLE sandbox.customer_country(
	customer_id INT PRIMARY KEY,
	customer_country varchar(255) NOT NULL
    );

insert into sandbox.customers (
	customer_name
) values ('John'), ('Adam'), ('Anne'), ('May');

insert into sandbox.customer_country (
	customer_id, customer_country
) values (1, 'USA'), (3, 'USA'), (4, 'UK'), (5, 'UK');

# If I want to pickup the country of each customer
# what key can I use?

# Let's check:
select cust.customer_id, cust.customer_name, country.customer_country
from sandbox.customers as cust
inner join sandbox.customer_country as country
on cust.customer_id = country.customer_id;

# Notice that "Adam" is not on the output query
# Why? Because we don't have the "Adam" key - in this case customer_id = 2
# in the customer_country table 

