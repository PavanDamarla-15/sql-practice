-- Day 3: SQL HAVING and WHERE vs HAVING
-- Topics: WHERE, GROUP BY, HAVING, AND, aggregate filtering

USE sql_practice;

-- Q1: Display students whose marks are greater than 80
SELECT *
FROM students
WHERE marks > 80;

-- Q2: Display each branch and its average marks
SELECT branch, AVG(marks) AS average_marks
FROM students
GROUP BY branch;

-- Q3: Display branches whose average marks are greater than 80
SELECT branch, AVG(marks) AS average_marks
FROM students
GROUP BY branch
HAVING AVG(marks) > 80;

-- Q4: Count students in each branch, showing branches
-- with more than one student
SELECT branch, COUNT(*) AS student_count
FROM students
GROUP BY branch
HAVING COUNT(*) > 1;

-- Q5: Find the average marks of CSE students only
SELECT branch, AVG(marks) AS average_marks
FROM students
WHERE branch = 'CSE'
GROUP BY branch;

-- Q6: Display branches with at least 2 students
-- and average marks above 80
SELECT branch, AVG(marks) AS average_marks,
       COUNT(*) AS student_count
FROM students
GROUP BY branch
HAVING AVG(marks) > 80
   AND COUNT(*) >= 2;

-- Bonus: Average marks for students aged at least 19,
-- showing branches whose average is at least 70
SELECT branch, AVG(marks) AS average_marks
FROM students
WHERE age >= 19
GROUP BY branch
HAVING AVG(marks) >= 70;
