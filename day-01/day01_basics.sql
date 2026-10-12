-- Day 1: SQL Basics
-- Topics: SELECT, WHERE, ORDER BY, LIMIT

CREATE DATABASE IF NOT EXISTS sql_practice;
USE sql_practice;

CREATE TABLE IF NOT EXISTS students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    branch VARCHAR(20),
    marks INT,
    age INT
);

INSERT INTO students (id, name, branch, marks, age)
VALUES
    (1, 'Pavan', 'CSE', 85, 19),
    (2, 'Rahul', 'ECE', 72, 20),
    (3, 'Priya', 'CSE', 94, 19),
    (4, 'Sneha', 'IT', 68, 20),
    (5, 'Arjun', 'CSE', 78, 18)
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    branch = VALUES(branch),
    marks = VALUES(marks),
    age = VALUES(age);

-- Query 1: Display every student
SELECT * FROM students;

-- Query 2: Display only names and marks
SELECT name, marks FROM students;

-- Query 3: Find students scoring above 80
SELECT * FROM students
WHERE marks > 80;

-- Query 4: Find CSE students
SELECT * FROM students
WHERE branch = 'CSE';

-- Query 5: Sort students by marks, highest first
SELECT * FROM students
ORDER BY marks DESC;

-- Query 6: Display the top 3 students by marks
SELECT * FROM students
ORDER BY marks DESC
LIMIT 3;
