-- exercise 1:
select * from
Exercises.students 
where not student_full_name = 'John Smith';

-- exercise 2:
select * from
exercises.students 
where degree = 'History' and not student_full_name = 'Amy Smith';

-- exercise 3:
select * from
exercises.students 
where (degree = 'History' and not student_age = 23) or degree = 'Mathematics';

-- exercise 4:
select * from
exercises.students 
where student_full_name LIKE 'Amy%';

-- exercise 5:
select * from
exercises.students 
where degree LIKE '_h%';
