-- Run the statements below to create the structure and data
-- we'll need for the exercises

CREATE TABLE exercises.transactions (store_id integer, employee_id integer, customer_id integer, total_value float);

CREATE TABLE exercises.employees (employee_id integer, employee_full_name varchar(40));

CREATE TABLE exercises.customers (customer_id integer, customer_full_name varchar(40));

insert into exercises.transactions(
    store_id, employee_id, customer_id, total_value
    ) values(1, 1, 2, 10.5),
    (1, 1, 2, 20),
    (1, 1, 1, 18),
    (1, 2, 2, 25),
    (1, 3, 1, 27),
    (1, 2, 3, 19),
    (1, 2, 4, 29);
    
insert into exercises.employees(
    employee_id, employee_full_name
    ) values
    (1, "Richerd Richard"),
    (2, "May May"),
    (3, "Anne Anne");

-- Exercise 1: Count the number of distinct customers that each employee assisted. Notice that one employee might attend the same customer on the transactions table multiple times. You can use a subquery and a double group by for the effect. 
-- The output table should have an employee_id and a count_customers column.

-- Exercise 2: Select the distinct number of stores in the transactions table. 
-- The output table should only have one column: store_id

-- Exercise 3: Insert into the customers table all customers that have done transactions. 
-- The customers table only has a single column, customer_id.

-- Exercise 4: Insert into the customers table the customers that have done transactions on store_id number 2. Note: The customers table should have only one line per customer. 
-- The customers table only has a single column, customer_id.