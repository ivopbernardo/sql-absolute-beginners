-- Run the statements below to create the structure and data
-- we'll need for the exercises

CREATE TABLE exercises.customers (customer_id integer, customer_name varchar(30), customer_age integer, birth_date varchar(10), country_code varchar(4));

INSERT INTO exercises.customers (
   customer_id, customer_name, customer_age, birth_date, country_code
)
 VALUES (1, "John", 25, '1995-09-01', "123"), 
    	(2, "Anne", 45, 0, '1975-10-04', "324"), 
        (3, "Melissa", 21, 0, '1999-04-23', "324"), 
        (4, "Charles", 60, 20, '1960-08-22', "123");


-- exercise 1: Use a select statement to convert the customer_age column into a varchar(20) - only show the converted column in the result and call it convert_cust_age

-- exercise 2: Use a select statement to convert the birth_date column into a date - only show that converted column in the result and call it convert_birth_date.

-- exercise 3: 3.	Use a select statement to select the customer_id and convert the country_code column into a integer - only show both columns in the result and call the converted column convert_country_code.
