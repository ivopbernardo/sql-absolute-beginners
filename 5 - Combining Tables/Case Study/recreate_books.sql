CREATE DATABASE IF NOT EXISTS books_and_books;

DROP TABLE IF EXISTS books_and_books.books;

create table books_and_books.books (
	BookID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    BookName varchar(255) NOT NULL,
    AuthorFirstName varchar(100),
    AuthorLastName varchar(100),
    ReleaseYear INT,
    NumberPages INT
);

DROP TABLE IF EXISTS books_and_books.authors;

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

DROP TABLE IF EXISTS books_and_books.stores;

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