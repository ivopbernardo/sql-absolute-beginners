/* A common operation is converting columns from 
one type to another 

For example numbers that are stored as strings
and that you want to convert to an integer
*/

# To convert from text columns you can 
# use CONVERT or CAST

select "123";

select CONVERT("2017",SIGNED INTEGER);

select CAST("2017" AS SIGNED INTEGER);

# Convert a numeric into character
select CONVERT(2017, CHAR);

select CAST(2017 AS CHAR);

# Certain types can't be casted to - such as varchar
# bigint, etc.

# You have to physically alter a table to do that, as
# we will see next

# The only supported types to convert to are: 
# BINARY, CHAR, DATE, DATETIME, TIME,DECIMAL, INTEGER