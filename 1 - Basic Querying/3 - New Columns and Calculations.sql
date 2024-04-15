/* One of the most common things we can do in SQL 
is create new columns - These columns can be totally
new or created using existing information!*/

-- Let's check this using the actor table
-- Creating a person_role with the value 'actor' 

select *, 'actor' as person_role
from sakila.actor;

-- We will learn more advanced stuff using if else later to create complex columns

-- Let's now use an expression to build a new column based on existing information
-- Also, notice how we are using a function here for the first time!

select first_name, last_name, concat(first_name, last_name) as full_name
from sakila.actor;

-- Something's odd with the result! 
-- We can still add a space between the first and last name!

select first_name, last_name, concat(first_name, ' ', last_name) as full_name
from sakila.actor;

-- We can also create new columns based on mathematical expressions
select *, actor_id * 100
from sakila.actor;

-- Most mathematical operations work the same way as they do in the real world
-- Let's test the order of operations
select *, actor_id * (100+10)
from sakila.actor;

-- * is for multiplication
-- / is for division
-- + is for adding
-- - is for subtracting

-- Example of division:
select *, (actor_id / 100)+10
from sakila.actor;

-- There are also other commonly used expressions such as logarithms or exponentials
-- that we can use

-- Notice that if I don't use a "FROM" I can evaluate the expression in a single return
select log(10);
