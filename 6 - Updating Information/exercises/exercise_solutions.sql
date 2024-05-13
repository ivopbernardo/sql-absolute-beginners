-- exercise 1
update exercises.students
set degree = 'Chemistry'
where student_full_name = 'John Smith';

-- exercise 2
update exercises.students
set favorite_classes = 'Chemistry, Science'
where degree = 'Chemistry' and student_age = 21;

-- exercise 3
update exercises.students
set birth_date = '2001-01-01'
where student_id in (1, 2);

-- exercise 4
update exercises.students
set degree = 'Arts', student_age = 19
where student_id in (1,4);

