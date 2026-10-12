
-- Day 2: SQL Aggregate Functions
-- Topics: COUNT, SUM, AVG, MIN, MAX, GROUP BY, ORDER BY

USE sql_practice;

-- Q1: Count the total number of students
SELECT COUNT(*) AS total_students
FROM students;

-- Q2: Calculate the total marks of all students
SELECT SUM(marks) AS total_marks
FROM students;

-- Q3: Calculate the average age of all students
SELECT AVG(age) AS average_age
FROM students;

-- Q4: Find the highest marks among CSE students
SELECT MAX(marks) AS highest_cse_marks
FROM students
WHERE branch = 'CSE';

-- Q5: Count the students in each branch
SELECT branch, COUNT(*) AS student_count
FROM students
GROUP BY branch
ORDER BY branch;

-- Q6: Find the average marks for each branch,
-- from highest average to lowest
SELECT branch, AVG(marks) AS average_marks
FROM students
GROUP BY branch
ORDER BY average_marks DESC;
