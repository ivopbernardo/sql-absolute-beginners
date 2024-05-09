-- Run the statements below to create the structure and data
-- we'll need for the exercises

CREATE DATABASE exercises;

CREATE TABLE exercises.transactions (transaction_id integer, product_name varchar(10), price float, discount float, product_category varchar(20));

INSERT INTO exercises.transactions (
   transaction_id, product_name, price, discount, product_category
)
 VALUES (1, "Toy Car", 2, 0, "Toys"), 
    	  (2, "Toy Box", 200, 0, "Toys"), 
        (3, "Jacket", 79, 0, "Clothes"), 
        (4, "Blouse", 80, 20, "Clothes");


-- exercise 1: Select all the transactions where the product_category is equal to "Toys". Select all the columns also.

-- exercise 2: Select all the transactions where the price is > 10 or the category is not equal to "Toys". Select all the columns also.

-- exercise 3: Select all the columns in the transactions table plus create a column where you subtract the discount from the price. Call this column price_minus_discount

-- exercise 4: Sum all the prices by Product Category from the transactions table but only consider products that cost more than 10 dollars. Call the summed prices column sum_price.

-- exercise 5: Select the product_name from the transactions table and order the result by this column, in descending order.