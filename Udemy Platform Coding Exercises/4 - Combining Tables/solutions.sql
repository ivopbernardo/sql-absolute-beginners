-- Exercise 1: Select all the rows from the store_stock table and add the column store_name from the stores table using store_id as key in the join. Retrieve only common rows.
select a.*, b.store_name from 
store_stock as a 
inner join 
stores as b 
on a.store_id = b.store_id;

-- Exercise 2: Select all the rows from the stores table and add the column record_id and stock from the store_stock table using store_id as key in the join. Retrieve every row from the stores table, even if it is not on the store_stock table.
select a.*, b.record_id, b.stock from 
stores as a 
left join 
store_stock as b 
on a.store_id = b.store_id;

-- Exercise 3: Sum the stock of each store by it's name. Retrieve a table with the following columns:
-- :store_name
-- :total_stock, a column containin  the total stock of all records of the store. 
-- Note: This is an exercise with a medium/hard level difficulty.
select a.store_name, sum(b.stock) as total_stock 
from stores as a 
inner join store_stock as b 
on a.store_id = b.store_id;

-- Exercise 4: Create a table that contains all the information for both la and ny stores, combining the tables la_store_sales and ny_store_sales. Select all the columns from both tables in the process.
select * 
from la_store_sales 
union 
select * 
from ny_store_sales;


-- Exercise 5: Create a table that contains all the rows for both la and ny store. Select the store_id, the record_id and a calculated column called revenue where you multiply the sold_items by the price
select store_id, record_id, sold_items * price as revenue 
from la_store_sales 
union 
select store_id, record_id, sold_items * price as revenue  
from ny_store_sales;