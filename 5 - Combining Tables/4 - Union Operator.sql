# Another cool way to combine tables is to use set operators 
# such as UNION - other operators in this context are INTERSECT
# and EXCEPT but they are not supported by MYSQL

# Let's create two different tables with sales and orders
# from different stores

create temporary table sandbox.store_1 (
	invoice_id smallint primary key,
    customer_id smallint,
    item_quantity smallint,
    order_value decimal (19,4),
    product varchar(100)
    );

create temporary table sandbox.store_2 (
	invoice_id smallint primary key,
    item_quantity smallint,
    order_value decimal (19,4),
    product varchar(100)
    );

# Insert data into Store 1
insert into sandbox.store_1 (
	invoice_id, customer_id, item_quantity, order_value, product
) values (123, 10, 100, 20.2, 'Dog Food'), 
			(165, 35, 100, 20.2, 'Cat Food'), 
            (166, 10, 5, 0.95, 'Dog Food');

# Insert data into Store 2
insert into sandbox.store_2 (
	invoice_id, item_quantity, order_value, product
) values (652, 15, 18.2, 'Cat Toy'), (685, 50, 21.3, 'Cat Food');

# Let's append all the orders in a single table
select invoice_id, item_quantity, order_value, product
from sandbox.store_1
union
select invoice_id, item_quantity, order_value, product
from sandbox.store_2;

# Union all retains duplicates (there is no case in our tables)
# Let's append all the orders in a single table
select invoice_id, item_quantity, order_value, product
from sandbox.store_1
union all
select invoice_id, item_quantity, order_value, product
from sandbox.store_2;

# We can also use where clauses to produce unions
# that are bounded
select invoice_id, item_quantity, order_value, product
from sandbox.store_1
where item_quantity >= 100
union all
select invoice_id, item_quantity, order_value, product
from sandbox.store_2
where item_quantity >= 100;
