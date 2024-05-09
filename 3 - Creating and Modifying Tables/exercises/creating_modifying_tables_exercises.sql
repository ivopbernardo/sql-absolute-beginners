-- Run the statements below to create the structure and data
-- we'll need for the exercises

CREATE TABLE exercises.customers (
      customer_id integer,
      customer_name varchar(30), 
      customer_age integer, 
      birth_date varchar(10), 
      country_code varchar(4));

-- Exercise 1:
-- Insert two customers into the customers table:
-- Customer ID 1, "John" with 25 years old that was born on the 1st of September of 1991 and has a country code of "123".
-- Customer ID 2, "Anne" with 45 years old that was born on the 4th of October of 1975 and has a country code of "324".

-- Exercise 2:
-- Insert a new customer into the customers table:
-- Customer ID 3, "Joseph" that has a country code of "123". The other variables are unknown.

-- Exercise 3
-- Delete all the customers from the customers table with country_code = '123'

-- Exercise 4
-- Delete all the customers from the customers table with country_code = '324' OR that are less than 26 years old.

-- Exercise 5
-- Delete the birth_date column from the customers table