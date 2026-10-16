-- Day 6: SQL CASE Expressions
-- Topics: CASE, WHEN, THEN, ELSE, END, aliases, ORDER BY

USE sql_practice;

-- Q1: Classify students by marks
SELECT name, marks,
    CASE
        WHEN marks >= 90 THEN 'Excellent'
        WHEN marks >= 75 THEN 'Good'
        WHEN marks >= 60 THEN 'Average'
        ELSE 'Needs Improvement'
    END AS classification
FROM students;

-- Q2: Classify students by age
SELECT name, age,
    CASE
        WHEN age >= 19 THEN 'SENIOR'
        ELSE 'JUNIOR'
    END AS age_category
FROM students;

-- Q3: Determine pass or fail
SELECT name, marks,
    CASE
        WHEN marks >= 40 THEN 'PASS'
        ELSE 'FAIL'
    END AS result
FROM students;

-- Q4: Map branches to department names
SELECT name, branch,
    CASE
        WHEN branch = 'CSE' THEN 'Computer Science'
        WHEN branch = 'ECE' THEN 'Electronics'
        WHEN branch = 'IT' THEN 'Information Technology'
        ELSE 'Other'
    END AS department
FROM students;

-- Q5: Assign grades and sort by marks
SELECT name, marks,
    CASE
        WHEN marks >= 90 THEN 'A'
        WHEN marks >= 80 THEN 'B'
        WHEN marks >= 70 THEN 'C'
        ELSE 'D'
    END AS grade
FROM students
ORDER BY marks DESC;
