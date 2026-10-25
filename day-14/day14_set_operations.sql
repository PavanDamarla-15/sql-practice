
-- Day 14: SQL Set Operations
-- Topics: UNION, UNION ALL, ORDER BY

USE sql_practice;

-- 1. UNION: removes duplicate rows
SELECT 'CSE' AS branch
UNION
SELECT 'ECE' AS branch
UNION
SELECT 'CSE' AS branch;

-- 2. UNION ALL: keeps duplicate rows
SELECT 'CSE' AS branch
UNION ALL
SELECT 'ECE' AS branch
UNION ALL
SELECT 'CSE' AS branch;

-- 3. Combine CSE and ECE student names
SELECT name
FROM students
WHERE branch = 'CSE'
UNION
SELECT name
FROM students
WHERE branch = 'ECE';

-- 4. Combine and sort student names
SELECT name
FROM students
WHERE branch = 'CSE'
UNION
SELECT name
FROM students
WHERE branch = 'ECE'
ORDER BY name ASC;

-- 5. Combine CSE students and students scoring above 80
-- UNION ALL preserves duplicate names
SELECT name
FROM students
WHERE branch = 'CSE'
UNION ALL
SELECT name
FROM students
WHERE marks > 80;

-- 6. Same query using UNION to remove duplicate names
SELECT name
FROM students
WHERE branch = 'CSE'
UNION
SELECT name
FROM students
WHERE marks > 80;

-- 7. UNION can combine compatible values in one column
SELECT name AS value
FROM students
UNION
SELECT branch AS value
FROM students;
