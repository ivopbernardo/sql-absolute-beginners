-- Exercise 1:
INSERT INTO customers (
   customer_id, customer_name, customer_age, birth_date, country_code
)
 VALUES (1, "John", 25, '1991-09-01', "123"), 
    	(2, "Anne", 45, '1975-10-04', "324");

-- Exercise 2: 
INSERT INTO customers (
   customer_id, customer_name, country_code
)
 VALUES (3, "Joseph", "123");
 
 -- Exercise 3:
 delete from customers
where country_code = "123";

-- Exercise 4:
delete from customers
where country_code = "324" OR customer_age <26;

-- Exercise 5:
alter table customers
    drop column birth_date;