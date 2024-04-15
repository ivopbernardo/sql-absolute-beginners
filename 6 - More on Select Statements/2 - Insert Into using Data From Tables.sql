# Another cool thing we can do is that
# we can do insert into statements using data 
# from other tables.

# In this bit, we will also learn the distinct command

# Let's start by looking at the actor table

select * from sakila.actor
order by first_name;

# As expected, we have repeated first names from actors
# Angela appears twice, Burt appears three times
# and most first names are repeated.

# Imagine that we would like to have 
# only the distinct values from this column - we can
# use a new clause in the select - select distinct

SELECT DISTINCT first_name
from sakila.actor
order by first_name;

# This functions similarly to the UNION operator
# without UNION ALL - it collapses all equal first_names
# into a single row

# Now - do we have an easy way to insert this into a table? 

# Yes we do! 

# Let's create a sakila.first_names table 

create table sakila.first_names (
	first_name varchar(20)
    );
    
# First Names table is now empty 
select * from sakila.first_names;

# We can use the query as instead of the values!
insert into sakila.first_names (
	first_name
    ) SELECT DISTINCT first_name
			  from sakila.actor
			  order by first_name;

# Now let's check our table: 
select * from sakila.first_names;

# We can do this with more columns, of course! 
# Let's create a table that will contain only the 
# pg_movies 

create table sakila.pg_movies (
	film_id smallint,
    title varchar(128),
    description text
    )

# We can filter PG_Movies using a where clause
select * from 
sakila.film 
where rating = 'PG';


insert into sakila.pg_movies (
	film_id, title, description
    ) select film_id, title, description from 
	sakila.film 
	where rating = 'PG';
    
# Now we have all our pg_movies in this table!
select * from sakila.pg_movies;

# This usage of select into is probably more relevant than
# the values one. Although the VALUES are easier to understand,
# there are more use cases where you want to use data from
# other tables to input in new tables.

# Imagine writing all the descriptions of the movies 
# manually!