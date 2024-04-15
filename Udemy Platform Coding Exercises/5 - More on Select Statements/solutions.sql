/* TABLES STRUCTURE: transactions table: 
- store_id integer
- employee_id integer
- customer_id integer
- total_value float

employees table:
- employee_id integer
- employee_full_name varchar(50)

customers table:
- customer_id integer*/

-- Exercise: Count the number of distinct customers that each employee assisted. Notice that one employee might attend the same customer on the transactions table multiple times. You can use a subquery and a double group by for the effect. The output table should have an employee_id and a count_customers column.
-- This is an exercise with a high level of difficulty.
-- Note: When using group by clauses, you can use named group by instead of numeric ones such as "GROUP BY employee_id" instead of "GROUP BY 1"

select employee_id, count(customer_id) as count_customers
from (
select employee_id, customer_id, count(*) as count_cust
from transactions
group by employee_id, customer_id
)
group by employee_id;

-- Exercise: Select the distinct number of stores in the transactions table. The output table should only have one column: store_id

select distinct store_id
from transactions;

-- Exercise: Insert into the customers table all the customers that have done transactions. Note: The customers table should have only one line per customer. The customers table only has a single column, customer_id.

insert into customers (
    customer_id
    ) select distinct customer_id
      from transactions;
      
-- Exercise: Insert into the customers table the customers that have done transactions on store 2. Note: The customers table should have only one line per customer. The customers table only has a single column, customer_id.

insert into customers (
    customer_id
    ) select distinct customer_id
      from transactions
      where store_id = 2;
