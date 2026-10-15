-- Day 5: SQL Subqueries
-- Topics: Scalar subqueries, IN, NOT IN, AVG, MAX, GROUP BY, HAVING

USE sql_practice;

-- Q1: Find students scoring above the overall average
SELECT name, marks
FROM students
WHERE marks > (SELECT AVG(marks) FROM students);

-- Q2: Find students with the highest marks
SELECT name, marks
FROM students
WHERE marks = (SELECT MAX(marks) FROM students);

-- Q3: Find students scoring below the overall average
SELECT name, marks
FROM students
WHERE marks < (SELECT AVG(marks) FROM students);

-- Q4: Find students in branches with average marks above 75
SELECT name, marks
FROM students
WHERE branch IN (
    SELECT branch
    FROM students
    GROUP BY branch
    HAVING AVG(marks) > 75
);

-- Q5: Find students older than the average age
SELECT name, age
FROM students
WHERE age > (SELECT AVG(age) FROM students);

-- Q6: Find students who do not belong to CSE
SELECT name, branch
FROM students
WHERE branch NOT IN (
    SELECT branch
    FROM students
    WHERE branch = 'CSE'
);
