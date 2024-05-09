-- Exercise 1
select cast(customer_age as varchar(20)) as convert_cust_age from exercises.customers;

-- Exercise 2
select cast(birth_date as date) as convert_birth_date from exercises.customers;

-- Exercise 3
select customer_id, cast(country_code as integer) as convert_country_code from exercises.customers;
