/*
TABLES STRUCTURE: students table: 
- student_id integer auto_increment primary key,
- student_full_name varchar(30),
- favorite_classes varchar(150),
- student_age integer,
- birth_date date,
- degree varchar(30)
*/

-- Exercise 1: Select all students whose name is not "John Smith". Make sure you use the not syntax. Select all columns.
select * from
students 
where not student_full_name = 'John Smith';

-- Exercise 2: Select all students that have a degree in History and that are not named "Amy Smith". Make sure you use the not syntax. Select all columns.
select * from
students 
where degree = 'History' and not student_full_name = 'Amy Smith';

-- Exercise 3: Select all students that have a degree in History and that are not 23 years old or students that have a degree in Mathematics. Select all columns.
select * from
students 
where (degree = 'History' and not student_age = 23) or degree = 'Mathematics';

-- Exercise 4: Select all students whose first name is "Amy". Select all columns.
select * from
students 
where student_full_name LIKE 'Amy%';

-- Exercise 5: Select all students whose degree contains an 'h' as the second letter. Select all columns.
select * from
students 
where degree LIKE '_h%';