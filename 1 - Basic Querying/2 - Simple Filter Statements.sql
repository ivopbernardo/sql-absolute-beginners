-- Selects all columns from the 'film' table where the title is 'BULL SHAWSHANK'
SELECT *
FROM sakila.film
WHERE title = 'BULL SHAWSHANK';

-- Selects all columns from the 'film' table where the title is not 'BULL SHAWSHANK'
SELECT *
FROM sakila.film
WHERE title != 'BULL SHAWSHANK';

-- Selects all columns from the 'film' table where the title is either 'BULL SHAWSHANK' or 'AIRPORT POLLOCK'
SELECT *
FROM sakila.film
WHERE title IN ('BULL SHAWSHANK', 'AIRPORT POLLOCK');

-- Selects all columns from the 'film' table where the title is 'BULL SHAWSHANK' or the rental rate is less than 1.99
SELECT *
FROM sakila.film
WHERE title = 'BULL SHAWSHANK' OR rental_rate < 1.99;

-- Selects all columns from the 'film' table where the rental rate is less than 1.99
SELECT *
FROM sakila.film
WHERE rental_rate < 1.99;

-- Selects all columns from the 'film' table where the rental rate is less than or equal to 1.99
SELECT *
FROM sakila.film
WHERE rental_rate <= 1.99;

-- Selects all columns from the 'film' table where the rental rate is greater than 1.99
SELECT *
FROM sakila.film
WHERE rental_rate > 1.99;

-- Selects all columns from the 'film' table where the rental rate is greater than or equal to 1.99
SELECT *
FROM sakila.film
WHERE rental_rate >= 1.99;
