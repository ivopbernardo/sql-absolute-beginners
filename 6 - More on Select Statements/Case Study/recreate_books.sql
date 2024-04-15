CREATE DATABASE IF NOT EXISTS books_and_books;

DROP TABLE IF EXISTS books_and_books.books;
DROP TABLE IF EXISTS books_and_books.authors;
DROP TABLE IF EXISTS books_and_books.stores;
DROP TABLE IF EXISTS books_and_books.invoices;
DROP TABLE IF EXISTS books_and_books.invoices_new;

create table books_and_books.books (
	BookID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    BookName varchar(255) NOT NULL,
    AuthorFirstName varchar(100),
    AuthorLastName varchar(100),
    ReleaseYear INT,
    NumberPages INT
);

create table books_and_books.authors (
	AuthorID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    AuthorFirstName varchar(100),
    AuthorLastName varchar(100)
);

insert into books_and_books.books (
	BookName, AuthorFirstName, AuthorLastName, ReleaseYear, NumberPages
) values  
	('Sapiens', 'Yuval', 'Harari', 2011,459),
	('To Kill a MockingBird', 'Harper', 'Lee', 1960, 281),
	('Moby Dick', 'Herman', 'Melville', 1851, 635),
	('1984', 'George', 'Orwell', 1949, 328),
	('Brave New World', 'Aldous', 'Huxley', 1932, 311),
	('Dune', 'Frank', 'Herbert', 1965, 412),
	('The Black Swan', 'Nassim', 'Taleb', 2007, 400),
	('The Shining', 'Stephen', 'King', 1977, 447),
	('Under the Dome', 'Stephen', 'King', 2009, 1074);

create table books_and_books.stores (
	store_id INT AUTO_INCREMENT PRIMARY KEY,
    store_name varchar(30) NOT NULL,
    capacity TINYINT
    );

ALTER TABLE books_and_books.stores
	MODIFY capacity SMALLINT;

insert into books_and_books.stores (
	store_name, capacity
) values ( 
	'Booksy',
    500
    );

insert into books_and_books.stores (
	store_name, capacity
) values ('Pagey',200),
		 ('Leaflet',250);
         
SET SQL_SAFE_UPDATES = 0;

delete from books_and_books.stores
where store_name IN ('Leaflet','Booksy');

insert into books_and_books.stores (
	store_name, capacity
) values ( 
	'Library',
    2000
    );

ALTER TABLE books_and_books.stores 
	CHANGE COLUMN capacity book_capacity
    varchar(30);

ALTER TABLE books_and_books.stores 
	ADD COLUMN region varchar(100);

create table books_and_books.invoices (
	invoice_id INTEGER PRIMARY KEY,
    store_id INTEGER NOT NULL,
    BookID INTEGER NOT NULL,
    invoice_date DATE,
    price decimal(19,4),
    discount decimal(19,4)
    );

insert into books_and_books.invoices (
	invoice_id, store_id, BookID, invoice_date, price, discount
    ) values (19994, 2, 3, '2021-01-01', 19, 0),
			 (19995, 4, 7, '2020-03-03', 1.5, 0),
			 (19996, 4, 15, '2021-04-03', 21.5, 0);
             
create table books_and_books.invoices_new (
	invoice_id INTEGER PRIMARY KEY,
    store_id INTEGER NOT NULL,
    BookID INTEGER NOT NULL,
    invoice_date DATE,
    price decimal(19,4),
    discount decimal(19,4)
    );

insert into books_and_books.invoices_new (
	invoice_id, store_id, BookID, invoice_date, price, discount
    ) values (19994, 2, 3, '2021-01-01', 19, 0),
			 (19997, 2, 1, '2020-11-03', 2, 1);