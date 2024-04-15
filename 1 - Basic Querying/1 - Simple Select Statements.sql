-- Simple select statement example - selects all columns from the 'film' table
SELECT *
FROM sakila.film;

-- Selects only the 'title' and 'release_year' columns from the 'film' table
SELECT title, release_year
FROM sakila.film;

-- Using aliases to rename columns during the query
SELECT title AS movie_title, release_year AS year
FROM sakila.film;

/*
  Comments in the code can be achieved in two ways:
  1. Single-line comments using hashtags or "--"
  2. Multi-line comments using the /* */ syntax
*/

-- Aliases are also supported for table names:
SELECT movie_table.title
FROM sakila.film AS movie_table;