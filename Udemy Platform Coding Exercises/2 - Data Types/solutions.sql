/* TABLES STRUCTURE: customers table: 
- customer_id integer
- customer_name varchar(30)
- customer_age integer
- birth_date varchar(10)
- country_code varchar(4) */


-- Exercise 1: Use a select statement to convert the customer_age column into a varchar(20) - only show that converted column in the result and call it convert_cust_age
select cast(customer_age as varchar(20)) as convert_cust_age from customers;

-- Exercise 2: Use a select statement to convert the birth_date column into a date - only show that converted column in the result and call it convert_birth_date
select cast(birth_date as date) as convert_birth_date from customers;

-- Exercise 3: Use a select statement to select the customer_id and convert the country_code column into a integer - only show both columns in the result and call the converted column convert_country_code
select customer_id, cast(country_code as integer) as convert_country_code from customers;

