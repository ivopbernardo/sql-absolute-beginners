-- Exercise 1
INSERT INTO exercises.customers_validation (
   customer_id, customer_name, customer_age, birth_date, country_code
)VALUES (1, "John", 25, '1991-09-01', "123"), 
    	(2, "Anne", 45, '1975-10-04', "324");

-- Exercise 2
INSERT INTO exercises.customers (
   customer_id, customer_name, country_code
)VALUES (3, "Joseph", "123");

-- Exercise 3
DELETE FROM exercises.customers
WHERE country_code = "123";

-- Exercise 4
DELETE FROM exercises.customers
WHERE country_code = "324" OR customer_age <26;

-- Exercise 5
ALTER TABLE exercises.customers
    DROP COLUMN birth_date;

