# Exercise 1
select * from 
books_and_books.books 
where BookID IN (
select distinct BookID
from books_and_books.invoices
);

# Exercise 2
	select avg(NumberPages) as avg_pages from 
	books_and_books.books 
	where BookID IN (
	select distinct BookID
	from books_and_books.invoices
	);

# Exercise 3
select avg(aux_table.price) as avg_price
from (
	select price 
    from books_and_books.invoices 
    where store_id = 4
) as aux_table;

# Exercise 4
delete from books_and_books.invoices_new
where invoice_id = 19994;

# Exercise 5
insert into books_and_books.invoices( 
	invoice_id, store_id, BookID, invoice_date, price, discount
) select invoice_id, store_id, BookID, invoice_date, price, discount
from books_and_books.invoices_new;