-- Day 9: Data Modification and NULL Handling
-- Topics: INSERT, UPDATE, DELETE, IS NULL, IS NOT NULL, COALESCE, ORDER BY

-- 1. Insert a new student
INSERT INTO students (id, name, branch, marks, age)
VALUES (7, 'Anjali', 'CSE', 91, 20);

-- 2. Update Anjali's marks
UPDATE students
SET marks = 96
WHERE id = 7;

-- 3. Delete a specific student
DELETE FROM students
WHERE id = 4;

-- 4. Find students with missing marks
SELECT *
FROM students
WHERE marks IS NULL;

-- 5. Find students whose marks are available
SELECT *
FROM students
WHERE marks IS NOT NULL;

-- 6. Insert a student whose marks are unavailable
INSERT INTO students (id, name, branch, marks, age)
VALUES (8, 'Kiran', 'ECE', NULL, 19);

-- 7. Display NULL marks as zero
SELECT name, COALESCE(marks, 0) AS displayed_marks
FROM students;

-- 8. Sort by displayed marks, highest first
SELECT name, COALESCE(marks, 0) AS displayed_marks
FROM students
ORDER BY displayed_marks DESC;
