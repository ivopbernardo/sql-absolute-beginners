-- Exercise 1
select employee_id, count(customer_id) as count_customers
from (
select employee_id, customer_id, count(*) as count_cust
from exercises.transactions
group by employee_id, customer_id
)
group by employee_id;

-- Exercise 2
select distinct store_id
from exercises.transactions;


-- Exercise 3
insert into customers_val (
    customer_id
    ) select distinct customer_id
      from exercises.transactions;

-- Exercise 4
insert into customers_val (
    customer_id
    ) select distinct customer_id
      from exercises.transactions
      where store_id = 2;
