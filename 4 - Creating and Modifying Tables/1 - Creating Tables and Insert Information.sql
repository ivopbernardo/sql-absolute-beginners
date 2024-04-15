# We can create databases and tables using code or the UI

create database countries;

# Let's now create a table inside the countries database/schema
create table countries.countries (
	country_id TINYINT AUTO_INCREMENT PRIMARY KEY,
    name varchar(56) NOT NULL,
    foundation_date DATE,
    population SMALLINT UNSIGNED
    );
    
# Let's see our empty table
select * from countries.countries;
    
/* How can we insert data into this table? 
We have the INSERT INTO command */

insert into countries.countries (
	name, foundation_date, population
) values ( 
	'Portugal', 
    '1143-10-05',
    10154934
    );
    
# What happens? We can't insert this row because the population
# does not fit the range of values accepted by SMALLINT! 

# We will reconstruct the data - let's use a command to delete
# a database
drop database countries;

# Now I'll create the table again but with INT instead of SMALLINT
create database countries;
create table countries.countries (
	country_id TINYINT AUTO_INCREMENT PRIMARY KEY,
    name varchar(56) NOT NULL,
    foundation_date DATE,
    population INT UNSIGNED
    );
    
insert into countries.countries (
	name, foundation_date, population
) values ( 
	'Portugal', 
    '1143-10-05',
    10154934
    );
    
# Insert successful!
# Let's check the table now
select * from countries.countries;

/* I can insert data only for specific columns - the only mandatory are keys 
and NOT NULL*/

insert into countries.countries (
	name, population
) values ( 
	'France', 
    65476395
    );
    
# Let's check the table now
select * from countries.countries;

# We can also do multiple inserts 
insert into countries.countries (
	name, population
) values ('Spain', 46780219),
('Canada', 38205830);

# Let's check the table now
select * from countries.countries;

# Really important is always to understand the restrictions
# we've set up on the data types and properties.

# For example, is it possible to insert Negative population? 
insert into countries.countries (
	name, population
) values ('United Kingdom', -1000);

# No! Because we have set this column to unsigned.
# With integers, when we have an overflow, we have an error.

# What happens if we pass text?
insert into countries.countries (
	name, population
) values ('United Kingdom', "ABC");

# We also have an error - "Incorrect Integer Value"!

# We saw what happened when we overflow Integer values.
# Let's see an example of what happens when we overflow varchar values
create table countries.codes (
	country_code varchar(3) NOT NULL
    );
    
insert into countries.codes (
	country_code
) values ('PRT');

# What if I insert something with 4 letters?
insert into countries.codes (
	country_code
) values ('GERM');

# We have a "Data too long" error! Normally, when inserting data MYSQL
# is pretty explicit when we are commiting errors regarding the data
# our table expects

# What if we try to insert a decimal?
insert into countries.codes (
	country_code
) values (1.1);

# MySQL performs implicit conversion!
select * from countries.codes;

# Notice that the column didn't change
describe countries.codes;

# Always make sure you know the data type 
# and behavior that your table is expecting for each column
# and now that most times MYSQL will yield errors, except 
# where it can perform implicit conversions.