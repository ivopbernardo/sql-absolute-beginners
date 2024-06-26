/* Just like we can create and insert data into tables,
we can also delete data from tables and delete entire tables*/

-- First let's see our table:
select * 
from countries.countries;

-- Let's delete the row with name = "Canada"
delete from countries.countries
where name = 'Canada';

/* Notice that mysql is in safe mode, preventing us
from deleting the row because we are not using the key
to delete - head up to the preferences on WorkBench and remove that option */

-- After removing, you are able to delete the row

-- Let's now check our table
select * 
from countries.countries;

-- How can we drop an entire table?

drop table countries.countries;

-- The SQL object does not exist anymore - let's confirm that with a select
select * from countries.countries;