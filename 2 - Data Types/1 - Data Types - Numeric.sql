/* One Central concept in SQL are Data Types
- Data Types define how the data is stored in memory
- Data types also define which types of functions you can apply to a table column

Let's start by studying numeric data types. There are actually more types than the 
ones we will be approaching but we will go through the most relevant ones.
*/

-- We can obtain the data types of a specific table using the command DESCRIBE
DESCRIBE sakila.film;

/* Notice that in the sakila.film
we have the following numeric column types:
- smallint
- tinyint
- decimal

We also have date type columns called timestamp and year
and text columns (that we will discuss next).

Each data type describes what data the column can contain
- int columns only contain integer numbers
- decimals can contain float numbers.

These data types are fairly general although they 
may have other names in other SQL implementations

With numeric types we can perform numerical calculations
*/

select rental_rate, rental_rate*4 as calc
from sakila.film;

-- We can also do this with datetime columns although the result is a bit meaningless
select last_update, last_update*4 as calc
from sakila.film;

-- We can't do this with text columns, though! the result will be the same for the entire row 
select title, title*4 as calc
from sakila.film;

-- We can't also apply mathematical functions to character columns as that throws a NULL result
select title, log(title) as calc
from sakila.film;

select title, log(rental_rate) as calc
from sakila.film;

/* A recap on numeric data types:
- bit (binary or boolean value)
- tinyint: whole numbers from 0 to 255
- smallint: ranges from -32,768 to 32,767
- int: ranges from -2,147,483,648 to 2,147,483,647
- bigint
- decimal/numeric - they are quite equivalenta and store decimal values
- float - less "precise" than the ones above, but faster
