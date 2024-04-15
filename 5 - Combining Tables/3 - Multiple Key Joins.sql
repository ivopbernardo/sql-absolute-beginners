# Another common thing to find in SQL tables is to
# have joins by two columns. This is extremely 
# useful when we have composite keys (more than one column)

# Let's see an example:

CREATE TEMPORARY TABLE sandbox.customer_month(
	customer_id INT,
    month INT,
	customer_name varchar(255) NOT NULL,
    PRIMARY KEY (customer_id, month)
    );
    
CREATE TEMPORARY TABLE sandbox.customer_balance(
	customer_id INT,
	month INT,
    balance numeric(10,2),
    PRIMARY KEY (customer_id, month)
    );

insert into sandbox.customer_month (
	customer_id, month, customer_name
) values (1, 201903, 'John'), (1, 201904, 'John'), (1, 201905, 'John'), 
(2, 201903, 'May'), (2, 201904, 'May'), (2, 201905, 'May'), (2, 201906, 'May');

insert into sandbox.customer_balance (
	customer_id, month, balance
) values (1, 201903, 10.00), (1, 201904, 15.00),
 (2, 201903, 1524.00), (2, 201904, 225.00), (3, 201905, 360.00);

# Should I just join by customer ID?
# Let's see
select a.customer_id, a.customer_name, b.month, b.balance
from sandbox.customer_month as a
inner join sandbox.customer_balance as b
on a.customer_id = b.customer_id;

# Why do we have so many rows? 
# Because we've produced duplicates!

# Duplicates are one of the most common
# mistakes beginners make when doing queries
# in sql 

# You sometimes want to produce duplicates on purpose
# for example, if we would only have a single customer_id
# on the customer_month table. as we have several lines
# for the same customer, these will be duplicated because
# each line will match 2 times with the right table for customer_id = 1
# and three times for customer_id = 2 

# An example:
select customer_id 
from sandbox.customer_month;

# customer ID_1 is repeated 3 times
# customer ID_2 is reapeat 4 times
# in the customer_month 

# On the right table we have two rows with customer_id 1 and 2:
select customer_id from 
sandbox.customer_balance;

# The result will be the multiplication of these "keys" 
# 3 * 2, 6 rows for customer id 1
# 4 * 2, 8 rows for customer id 2
select a.customer_id, b.month, b.balance
from sandbox.customer_month as a
inner join sandbox.customer_balance as b
on a.customer_id = b.customer_id;

# How to solve this? The primary keys of our table
# are Customer ID + Month so we can use a multiple column 
# join!
select a.customer_id, a.customer_name, b.month, b.balance
from sandbox.customer_month as a
inner join sandbox.customer_balance as b
on a.customer_id = b.customer_id and
a.month = b.month;

# Notice that now we have the correct inner join. As we only
# have two balances for March and April on the balances table
# those are the only ones carried forward in the joined table.

# No more duplicate rows because each join key is unique (pair Customer_Id + Month).

# Sometimes you may want to produce duplicates on purpose - imagining
# we had something like this: 
CREATE TEMPORARY TABLE sandbox.unique_customer(
	customer_id INT,
    PRIMARY KEY (customer_id)
    );
    
insert into sandbox.unique_customer (
	customer_id
) values (1), (2), (3);    
    
    
select * from sandbox.unique_customer;

# As we have unique customer_ids on the left table
# we may want to get the balance for different months
# in this case we can do a join only with the customer id 
# as the months will generate a row by each month of balance
select a.customer_id, b.month, b.balance
from sandbox.unique_customer as a
inner join sandbox.customer_balance as b
on a.customer_id = b.customer_id;

