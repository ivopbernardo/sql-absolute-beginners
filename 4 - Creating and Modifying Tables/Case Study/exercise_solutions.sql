# Exercise 1
create table books_and_books.stores (
	store_id INT AUTO_INCREMENT PRIMARY KEY,
    store_name varchar(30) NOT NULL,
    capacity TINYINT
    );
    
# Exercise 2
ALTER TABLE books_and_books.stores
	MODIFY capacity SMALLINT;

# Exercise 3
insert into books_and_books.stores (
	store_name, capacity
) values ( 
	'Booksy',
    500
    );

# Exercise 4
insert into books_and_books.stores (
	store_name, capacity
) values ('Pagey',200),
		 ('Leaflet',250);
         
# Exercise 5
SET SQL_SAFE_UPDATES = 0;

# Exercise 6
delete from books_and_books.stores
where store_name IN ('Leaflet','Booksy');

# Exercise 7
insert into books_and_books.stores (
	store_name, capacity
) values ( 
	'Library',
    2000
    );

# Exercise 8
ALTER TABLE books_and_books.stores 
	CHANGE COLUMN capacity book_capacity
    varchar(30);
    
# Exercise 9
ALTER TABLE books_and_books.stores 
	ADD COLUMN region varchar(100);