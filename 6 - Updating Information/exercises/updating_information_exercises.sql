-- Run the statements below to create the structure and data
-- we'll need for the exercises

create table exercises.students (
	student_id integer auto_increment primary key,
    student_full_name varchar(30),
    favorite_classes varchar(150),
    student_age integer,
    birth_date date,
    degree varchar(30)
    );
    
insert into exercises.students (
	student_full_name, favorite_classes, student_age, birth_date, degree
) values ('John Smith', 'Mathematics, Political Science, Biology', 23, '1999-03-01', 'Engineering'),
	('Amy Smith', 'History, Political Science, Biology', 23, '1999-03-01', 'History'),
    ('Joe Adams', 'History, Mathematics', 23, '1999-06-01', 'History'),
    ('Joe Williams', 'Biology, Chemistry', 22, '2000-03-01', 'Chemistry'),
    ('Anne Williams', 'Mathematics, Arts', 22, '2000-03-16', 'Mathematics'),
    ('May Taylor', 'History, Geography', 22, '2000-05-19', 'History'),
    ('Zoe Brown', 'Physical Education, History', 21, '2001-02-18', 'Physical Education'),
    ('Jennifer Davies', 'Biology, Chemistry', 21, '2001-03-19', 'Chemistry'),
    ('Robert Jones', 'Chemistry, Biology, Mathematics', 21, '2001-06-02', 'Chemistry');    (3, "Anne Anne");

-- Exercise 1: Update the degree of the student with the full name "John Smith" to "Chemistry"

-- Exercise 2: Update the favorite_classes of the students with degree "Chemistry" and 21 years old to "Chemistry, Science"

-- Exercise 3: Update the birth_date of the students with student_id 1 or 2 to '2001-01-01'

-- Exercise 4: Update the age and degree to 19 and "Arts" of students with the id 1 or 4.
