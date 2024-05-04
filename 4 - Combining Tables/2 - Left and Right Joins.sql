-- Let's now see the :LEFT JOIN 

-- Building temporary tables and inserting some data
CREATE TEMPORARY TABLE sandbox.customers_right_left(
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
	customer_name varchar(255) NOT NULL
    );
    
CREATE TEMPORARY TABLE sandbox.customer_country_right_left(
	customer_id INT PRIMARY KEY,
	customer_country varchar(255) NOT NULL
    );

insert into sandbox.customers_right_left (
	customer_name
) values ('John'), ('Adam'), ('Anne'), ('May'), ('Susan'), ('Joe');

insert into sandbox.customer_country_right_left (
	customer_id, customer_country
) values (1, 'USA'), (3, 'USA'), (4, 'UK'), (5, 'UK'), (7, 'UK');


-- Let's check:
select cust.customer_id, cust.customer_name, country.customer_country
from sandbox.customers_right_left as cust
left join sandbox.customer_country_right_left as country
on cust.customer_id = country.customer_id;

-- What about the right join?
select cust.customer_id, cust.customer_name, country.customer_country
from sandbox.customers_right_left as cust
right join sandbox.customer_country_right_left as country
on cust.customer_id = country.customer_id;

-- Notice how when we don't have a "key" matching on the opposing table the rest of the fields are null

-- If I use the ID coming from the "master table" , I'll be able to see it now on this query 
-- although the name will be null becaus we still don't know the name of this customer
select country.customer_id, cust.customer_name, country.customer_country
from sandbox.customers_right_left as cust
right join sandbox.customer_country_right_left as country
on cust.customer_id = country.customer_id;