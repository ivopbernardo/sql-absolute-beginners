# Exercise 1
create table books_and_books.invoices (
	invoice_id INTEGER PRIMARY KEY,
    store_id INTEGER NOT NULL,
    BookID INTEGER NOT NULL,
    invoice_date DATE,
    price decimal(19,4)
    );

# Exercise 2
insert into books_and_books.invoices (
	invoice_id, store_id, BookID, invoice_date, price
    ) values (19994, 2, 3, '2021-01-01', 19),
			 (19995, 4, 7, '2020-03-03', 1.5),
			 (19996, 4, 15, '2021-04-03', 21.5);
             
# Exercise 3 
select a.invoice_id, a.store_id, a.BookID, a.invoice_date, a.price,
b.BookName 
from books_and_books.invoices as a 
inner join books_and_books.books as b
on a.BookID = b.BookID;

# Exercise 4
select a.invoice_id, a.store_id, a.BookID, a.invoice_date, a.price,
b.BookName, c.store_name
from books_and_books.invoices as a 
inner join books_and_books.books as b
on a.BookID = b.BookID
inner join books_and_books.stores as c
on a.store_id = c.store_id;

# Exercise 5 
select a.invoice_id, a.store_id, a.BookID, a.invoice_date, a.price,
b.BookName 
from books_and_books.invoices as a 
left join books_and_books.books as b
on a.BookID = b.BookID;

# Exercise 6
create table books_and_books.invoices_new (
	invoice_id INTEGER PRIMARY KEY,
    store_id INTEGER NOT NULL,
    BookID INTEGER NOT NULL,
    invoice_date DATE,
    price decimal(19,4),
    discount decimal(19,4)
    );
    
# Exercise 7
insert into books_and_books.invoices_new (
	invoice_id, store_id, BookID, invoice_date, price, discount
    ) values (19994, 2, 3, '2021-01-01', 19, 0),
			 (19997, 2, 1, '2020-11-03', 2, 1);
             
# Exercise 8
select invoice_id, store_id, BookID, invoice_date, price
from books_and_books.invoices 
UNION ALL
select invoice_id, store_id, BookID, invoice_date, price
from books_and_books.invoices_new;

# Exercise 9
select invoice_id, price
from books_and_books.invoices 
UNION 
select invoice_id, price
from books_and_books.invoices_new;

# Exercise 10
alter table books_and_books.invoices
add column discount decimal(19,4);

# Exercise 11
select invoice_id, store_id, BookID, invoice_date, price, discount/price as price_discount
from books_and_books.invoices 
UNION ALL
select invoice_id, store_id, BookID, invoice_date, price, discount/price as price_discount
from books_and_books.invoices_new;