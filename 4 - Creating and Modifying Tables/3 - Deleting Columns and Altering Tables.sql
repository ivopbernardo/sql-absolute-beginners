/* After defining and writing a table, we can modify
the table with simple statements based on the ALTER
TABLE command */

# Let's start by checking how we can delete a column 

ALTER TABLE countries.countries 
	DROP COLUMN foundation_date;
    
/* Notice that the column is gone 
from the select * statement below:
*/
select * from countries.countries;

# Just like we can drop (or delete) columns
# We can also change the datatype 

# Let's see what happens when we change 
# population to SMALLINT
ALTER TABLE countries.countries 
	MODIFY population SMALLINT;
    
# We can't! Why? Because we already have values
# in there that can't be converted because of their range

ALTER TABLE countries.countries 
	MODIFY population BIGINT;
    
# Now we were able to modify - let's check
# the metadata of the table
DESCRIBE countries.countries;

# We can also convert it back again
ALTER TABLE countries.countries 
	MODIFY population INT;
    
# Let's see the impact of changing 
# character columns
ALTER TABLE countries.countries
	MODIFY name varchar(4);
    
# Same trouble! We are trying to fit data
# that doesn't fit in this change

# We can also rename columns
ALTER TABLE countries.countries 
	CHANGE COLUMN name country_name
    varchar(60);
    
select * from countries.countries;

# We can also rename tables
ALTER TABLE countries.countries
	rename to countries.country_summary;
