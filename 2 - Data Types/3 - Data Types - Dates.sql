/* Another common data type is Dates,
these are the ones that help us to understand temporal events and they are crucial for 
logging database creation and updating values.
*/

describe sakila.film;

-- In the sakila.film we have the release_year, which is a year column
-- we also have the last_update column which is a timestamp

select title, release_year, last_update
from sakila.film;

-- Developers commonly use the DATE type,  which is a date without the timepart

-- One of the most common functions that one can use with date types is the the datediff
-- it finds the difference between two dates, returning the resulting days of difference

select datediff("2020-09-01", "2020-10-01");

-- Notice that we are using '' to pass dates to SQL
-- this is one of the rare cases where you pass '' with something other than text

-- If I try to do datediff on a pure string, I'll have a NULL as a return

select datediff("A", "B");

-- If we use integers, we will also get a NULL
select datediff(150000, 1545222);
