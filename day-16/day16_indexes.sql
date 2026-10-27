
-- Day 16: SQL Indexes
-- Topics: CREATE INDEX, SHOW INDEX, EXPLAIN, DROP INDEX

USE sql_practice;

-- 1. Create an index on student names
CREATE INDEX idx_students_name
ON students(name);

-- 2. Inspect indexes on the students table
SHOW INDEX FROM students;

-- 3. Check whether the name index is used
EXPLAIN
SELECT *
FROM students
WHERE name = 'Pavan';

-- 4. Remove the name index
DROP INDEX idx_students_name ON students;

-- 5. Create an index on branch
CREATE INDEX idx_students_branch
ON students(branch);

-- 6. Inspect the branch search plan
EXPLAIN
SELECT *
FROM students
WHERE branch = 'CSE';

-- 7. Inspect the final indexes
SHOW INDEX FROM students;

-- Optional cleanup:
-- Run this only if you want to remove the branch index.
-- DROP INDEX idx_students_branch ON students;
