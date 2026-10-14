-- Day 4: SQL JOINs
-- Topics: INNER JOIN, LEFT JOIN, RIGHT JOIN, NULL filtering

USE sql_practice;

-- Q1: Display students and courses with matching records
SELECT s.name, sc.course
FROM students AS s
INNER JOIN student_courses AS sc
    ON s.id = sc.student_id;

-- Q2: Display all students and their courses
SELECT s.name, sc.course
FROM students AS s
LEFT JOIN student_courses AS sc
    ON s.id = sc.student_id;

-- Q3: Display all courses and matching student names
SELECT s.name, sc.course
FROM students AS s
RIGHT JOIN student_courses AS sc
    ON s.id = sc.student_id;

-- Q4: Display CSE students and their matching courses
SELECT s.name, sc.course
FROM students AS s
INNER JOIN student_courses AS sc
    ON s.id = sc.student_id
WHERE s.branch = 'CSE';

-- Q5: Display all students and courses alphabetically
SELECT s.name, sc.course
FROM students AS s
LEFT JOIN student_courses AS sc
    ON s.id = sc.student_id
ORDER BY s.name ASC;

-- Q6: Find students without a matching course
SELECT s.name, sc.course
FROM students AS s
LEFT JOIN student_courses AS sc
    ON s.id = sc.student_id
WHERE sc.student_id IS NULL;
