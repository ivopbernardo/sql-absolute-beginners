-- Exercise 1
select a.*, b.store_name from 
exercises.store_stock as a 
inner join 
exercises.stores as b 
on a.store_id = b.store_id;

-- Exercise 2
select a.*, b.record_id, b.stock from 
exercises.stores as a 
left join 
exercises.store_stock as b 
on a.store_id = b.store_id;

-- Exercise 3
select a.store_name, sum(b.stock) as total_stock 
from exercises.stores as a 
inner join exercises.store_stock as b 
on a.store_id = b.store_id;

-- Exercise 4
select * 
from exercises.la_store_sales 
union 
select * 
from exercises.ny_store_sales;

-- Exercise 5
select store_id, record_id, sold_items * price as revenue 
from exercises.la_store_sales 
union 
select store_id, record_id, sold_items * price as revenue  
from exercises.ny_store_sales;
