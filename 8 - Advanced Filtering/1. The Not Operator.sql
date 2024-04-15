# Let's create our example table that contains 
# Students from an arbitrary College

create table sandbox.students (
	student_id integer auto_increment primary key,
    student_full_name varchar(30),
    favorite_classes varchar(150),
    student_age integer,
    birth_date date,
    degree varchar(30)
    );
    
insert into sandbox.students (
	student_full_name, favorite_classes, student_age, birth_date, degree
) values ('John Smith', 'Mathematics, Political Science, Biology', 23, '1999-03-01', 'Engineering'),
	('Amy Smith', 'History, Political Science, Biology', 23, '1999-03-01', 'History'),
    ('Joe Adams', 'History, Mathematics', 23, '1999-06-01', 'History'),
    ('Joe Williams', 'Biology, Chemistry', 22, '2000-03-01', 'Chemistry'),
    ('Anne Williams', 'Mathematics, Arts', 22, '2000-03-16', 'Mathematics'),
    ('May Taylor', 'History, Geography', 22, '2000-05-19', 'History'),
    ('Zoe Brown', 'Physical Education, History', 21, '2001-02-18', 'Physical Education'),
    ('Jennifer Davies', 'Biology, Chemistry', 21, '2001-03-19', 'Chemistry'),
    ('Robert Jones', 'Chemistry, Biology, Mathematics', 21, '2001-06-02', 'Chemistry');
    
    
# Remember the IN operator that substituted the multiple or conditions? 
select * from sandbox.students
where student_full_name IN ('Joe Adams','John Smith','Amy Smith');

# NOT is able to negate commands - when combined with IN we are asking for 
# every student that has a name different than the ones named on the list
select * from sandbox.students
where student_full_name NOT IN ('Joe Adams','John Smith','Amy Smith');

# Another feature of NOT is that we can use it with the other
# filters we've seen to negate that condition 

# An example is negating: 
select * from sandbox.students
where NOT student_full_name = 'Joe Adams';

# Or helping with other more complex conditions
select * from sandbox.students
where student_age = 22 and NOT student_full_name = 'Joe Williams';

# NOT operator negates the condition and extracts everything except 
# what's stated in the condition right next to it.
