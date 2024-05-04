/* Operator Precedences may be confusing at first
but they are just a mimic of what mathematical equations are */

-- An example - Without using parenthesis 
select * from sandbox.students
where degree = 'Chemistry' OR student_age = 23 AND favorite_classes = 'History, Mathematics';

-- Using Parenthesis
select * from sandbox.students
where (degree = 'Chemistry' OR student_age = 23) AND favorite_classes = 'History, Mathematics';

/* These two queries have a completely different behavior - why? 
Main reason is because there are two important rules regarding AND/OR precedences: 

-- The AND clause has priority over the OR clause, every single time! 
-- This means that if you have two clauses connected by an AND in a complex expression
they should be treated as a "single clause".

-- Parenthesis break that precedence and order of operations - by using parenthesis, we
are giving priority to the code inside the parenthesis, meaning that code should
be treated as a single clause.

*/

-- More examples: 
select * from sandbox.students
where (degree = 'Chemistry' OR student_age = 23 OR student_full_name = 'May Taylor') 
AND student_id > 3;

-- Another Example
select * from sandbox.students
where (degree = 'John Smith' AND student_age = 23) 
AND degree = 'History';

