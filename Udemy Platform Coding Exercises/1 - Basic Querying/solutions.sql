/* TABLES STRUCTURE: transactions table: 
- transaction_id integer
- product_name varchar(10)
- price float
- discount float
- product_category varchar(20) */


-- Exercise 1: Select all the transactions where the product_category is equal to "Toys". Select all the columns also.
select * from transactions where product_category = 'Toys';

-- Exercise 2: Select all the transactions where the price is > 10 or the category is not equal to "Toys". Select all the columns also.
select * from transactions where (price > 10) or (product_category != 'Toys');

-- Exercise 3: Select all the columns in the transactions table and in the select also create a column where you subtract the discount from the price. Call this column price_minus_discount
select *, price-discount as price_minus_discount from transactions;

-- Exercise 4: Sum all the prices by Product Category from the transactions table but only consider products that cost more than 10. Call the summed prices column sum_price.
select product_category, sum(price) as sum_price
from transactions
where price > 10
group by product_category;

-- Exercise 5: Select the product_name from the transactions name and order the result by this column, in descending order.
select product_name
from transactions
order by product_name desc;