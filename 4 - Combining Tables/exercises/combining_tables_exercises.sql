-- Run the statements below to create the structure and data
-- we'll need for the exercises

insert into exercises.stores(
    store_id, record_id, stock
    ) values
    (1, 'Record Club', 'Sammy Gilmour'),
    (2, 'Spin it!', 'Sammy Gilmour'),
    (3, 'The Oak House', 'Jimmy Plant');

CREATE TABLE exercises.la_store_sales (store_id integer, record_id integer, sold_items integer, price float);

CREATE TABLE exercises.ny_store_sales (store_id integer, record_id integer, sold_items integer, price float);


insert into exercises.la_store_sales(
    store_id, record_id, sold_items, price
    ) values
    (1, 1, 10, 10.99),
    (2, 1, 5, 11.99),
    (3, 1, 20, 8.99);
    

insert into exercises.la_store_sales(
    store_id, record_id, sold_items, price
    ) values
    (5, 1, 13, 10.99),
    (6, 1, 52, 11.99),
    (7, 1, 48, 8.99);

-- Exercise 1 : Select all rows from the stores table and add the column record_id and stock from the store_stock table using store_id as key in the join. 
-- Retrieve every row from the stores table, even if it is not on the store_stock table.

-- Exercise 2: Select all the rows from the store_stock table and add the column store_name from the stores table using store_id as key in the join. 
-- Retrieve only common rows.

-- Exercise 3: Sum the stock of each store by its name. Retrieve a table with the following columns:
-- > store_name
-- > total_stock, a column containing the total stock of all records of the store. 
-- Note: You'll need to join the stores and store_stock tables.

-- Exercise 4: Create a table that contains all the information for both la and ny stores by combining the tables la_store_sales and ny_store_sales. 
-- Select all the columns from both tables in the process.

-- Exercise 5: Create a table that contains all rows for both la and ny store. 
-- Select store_id, record_id and a calculated column called revenue where you multiply the sold_items by the price