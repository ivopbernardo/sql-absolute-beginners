/* One Central concept in SQL are Data Types
- Data Types define how the data is stored in memory
- Data types also define which types of functions you 
can apply to a column
Let's start by studying numeric data types. There
are actually more types than the ones we will be approaching
but we will go through the most relevant ones.
*/

# We can obtain the data types of a specific table using 
# the command DESCRIBE
DESCRIBE sakila.film;

/* Notice that in the sakila.film
we have the following text columns:
- text
- varchar
- enum
- set

Each data type describes what data the column can contain
- text columns hold free text up until 65535 bytes
- VARCHAR - similar to text and can be used as index.
- set and enum are similar to each other and allows you
to use pre-defined values to fill the column. Set allows multiple 
values, enum allows only 1.
*/

# There are certain functions only used by strings:
select title, concat(title, title) as calc
from sakila.film;

# What if we try with a integer column?
# We end up doing an "implicit" conversion
# SQL automatically converts the column rental_rate to
# text before doing the calculation
select title, concat(rental_rate, rental_rate) as calc
from sakila.film;

# Let's just create a temporary table to see the type
# of the calc column - we'll study how to create tables next

CREATE TEMPORARY TABLE sakila.temp_table as
select title, concat(rental_rate, rental_rate) as calc
from sakila.film;

# As you can check the calc is a varchar(12) column
# 12 because that was the maximum length created by the 
# concat(rental_rate, rental_rate) expression
describe sakila.temp_table;

