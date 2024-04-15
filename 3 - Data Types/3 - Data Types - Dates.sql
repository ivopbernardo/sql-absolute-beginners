/* Another common data type is Dates,
these are the ones that help us to understand 
temporal events and they are crucial for 
logging and database creation and updating.
*/

describe sakila.film;

# In the sakila.film we have the release_year, which
# is a year column - and we have the last_update
# which is a timestamp

select title, release_year, last_update
from sakila.film;

# Commonly used is also the DATE type
# which is a date without the timepart

# One of the most common functions that one can use
# with date types is the the datediff to find the 
# difference between two dates

# This returns the resulting days of difference between
# two dates

select datediff("2020-09-01", "2020-10-01");

# Notice that we are using '' to give dates to SQL
# this is one of the rare cases where you pass '' with something
# other than strings

# If I try to do datediff on a pure string, I'll 
# have a NULL as a return

select datediff("A", "B");

# If you use integers - you will also get a NULL
select datediff(150000, 1545222);
