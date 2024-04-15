# Our last SQL filtering concept is the wildcard. 
# Wildcard are super useful to filter based on a "subset" condition. 

# For instance, imagine that we would like to select all students
# Wildcards are centered around three different elements: 
# The LIKE clause;
# The % character;
# The _ character;

# Starting with our example - selecting all the students with last name "Smith":

select * from sandbox.students
where student_full_name LIKE '%Smith';

# In this wildcard selection, the % works as 
# "does not matter what's before Smith". 
# Translating this query into a sentence 
# we are selecting "every row where the full name ends 
# with "Smith", regardless of what's before that".

# What if we want to select all the "Joes" from our table? 
select * from sandbox.students
where student_full_name LIKE 'Joe%';

# We can also use a double sided % :
select * from sandbox.students
where student_full_name LIKE '%am%';

# Finally, let's check the _ character: 
select * from sandbox.students
where student_full_name LIKE '_o%';

# The _ specifically points to a position where we are searching for a specific letter or string. 
# For instance, here we are searching for all the names that contain an "o" in the second position.

select * from sandbox.students
where student_full_name LIKE '__e%';