-- 1	
select * from exercises.transactions where product_category = 'Toys';

-- 2	
select * from exercises.transactions where (price > 10) or (product_category != 'Toys');

-- 3
select *, price-discount as price_minus_discount from exercises.transactions;

-- 4
select product_category, sum(price) as sum_price
from exercises.transactions
where price > 10
group by product_category;

-- 5
select product_name
from exercises.transactions
order by product_name desc ;
