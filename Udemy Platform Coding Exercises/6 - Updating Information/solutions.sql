/*
TABLES STRUCTURE: students table: 
- student_id integer auto_increment primary key,
- student_full_name varchar(30),
- favorite_classes varchar(150),
- student_age integer,
- birth_date date,
- degree varchar(30)
*/

-- Exercise 1: Update the degree of the student with the name "John Smith" to "Chemistry"
update students
set degree = 'Chemistry'
where student_full_name = 'John Smith';

-- Exercise 2: Update the favorite_classes of the students with degree "Chemistry" and 21 years old to "Chemistry, Science"
update students
set favorite_classes = 'Chemistry, Science'
where degree = 'Chemistry' and student_age = 21;

-- Exercise: Update the birth_date of the students with student_id 1 or 2 to '2001-01-01'
update students
set birth_date = '2001-01-01'
where student_id in (1, 2);

-- Exercise 4: Update the age and degree to 19 and "Arts" of students with the id 1 and 4.
-- Do everything in the same SQL query
update students
set degree = 'Arts', student_age = 19
where student_id in (1,4);

