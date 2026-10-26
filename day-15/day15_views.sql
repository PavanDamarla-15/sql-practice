
-- Day 15: SQL Views
-- Topics: CREATE VIEW, SELECT from VIEW,
-- CREATE OR REPLACE VIEW, DROP VIEW

USE sql_practice;

-- 1. Create a view for CSE students scoring above 80
CREATE OR REPLACE VIEW cse_top_students AS
SELECT name, marks
FROM students
WHERE branch = 'CSE' AND marks > 80;

-- 2. Retrieve all rows from the view
SELECT * FROM cse_top_students;

-- 3. Filter a view using WHERE
SELECT name, marks
FROM cse_top_students
WHERE marks > 90;

-- 4. Replace the view to show students scoring above 90
CREATE OR REPLACE VIEW cse_top_students AS
SELECT name, marks
FROM students
WHERE branch = 'CSE' AND marks > 90;

-- 5. Check the updated view
SELECT * FROM cse_top_students;

-- 6. Remove the practice view
DROP VIEW cse_top_students;
