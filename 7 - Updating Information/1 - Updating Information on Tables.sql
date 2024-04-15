# Create a new table called Students and add
# information about students

create table sandbox.students (
	student_id integer,
    student_full_name varchar(40) not null,
    birth_date date,
    favorite_class varchar(40)
    );
    
insert into sandbox.students (
	student_id, student_full_name, birth_date, favorite_class
    ) values (1, 'Joe Doe', '2000-04-03', 'History'),
             (2, 'Mary Doe', '2000-06-02', 'Mathematics'),
             (3, 'John Smith', '2000-02-10', 'English'),
             (4, 'Anne Smith', '2000-01-02', 'Mathematics'),
             (5, 'May John', '2000-06-06', 'History');

# Updating Information on Tables
# Let's imagine that we collected information about students
# but we got May John's favorite class wrong - she really likes Mathematics!

# How can we update this table without recreating it or deleting the row?

# We have the UPDATE -> SET -> WHERE combination

# We need to turn off safe update mode
SET SQL_SAFE_UPDATES = 0;

update sandbox.students
set favorite_class = "Mathematics"
where student_id = 5;

# Let's now look and the sandbox.students
select * from sandbox.students;

# Cool, we've just changed "May John's" favorite class!

# Cool part? Everything we've learned with where applies 
# here, for example using multiple conditions

# Imagining we would like to change favorite_class 
# of multiple students at the same time
update sandbox.students
set favorite_class = "Arts"
where student_full_name = 'Joe Doe' or student_full_name = 'John Smith';

select * from sandbox.students;

# Of course, updating these values are also restricted
# In our case, we can't set the name of the student 
# to null because of the properties of the table
update sandbox.students
set student_full_name = NULL
where student_id = 1;

# You can also update multiple columns at once:
update sandbox.students
set student_full_name = "John", favorite_class = "Mathematics"
where student_id = 1;

select * from sandbox.students;

# Be very mindful of having a where clause or 
# else you will end up updating the entire table
update sandbox.students
set student_full_name = "John";

select * from sandbox.students;