-- Day 8: SQL Data Modification and Transactions
-- Topics: UPDATE, DELETE, START TRANSACTION, COMMIT, ROLLBACK

USE sql_practice;

-- 1. Update one student's marks
UPDATE student_updates
SET marks = 80
WHERE id = 2;

-- 2. Increase all students' marks by 5
UPDATE student_updates
SET marks = marks + 5;

-- 3. Delete one student's record
DELETE FROM student_updates
WHERE id = 2;

-- 4. Demonstrate ROLLBACK
START TRANSACTION;

UPDATE student_updates
SET marks = 50
WHERE id = 1;

SELECT * FROM student_updates;

ROLLBACK;

-- Verify that the uncommitted update was undone
SELECT * FROM student_updates;

-- 5. Demonstrate COMMIT
START TRANSACTION;

UPDATE student_updates
SET marks = 95
WHERE id = 1;

SELECT * FROM student_updates;

COMMIT;

-- Verify the committed change
SELECT * FROM student_updates;

-- Key learning:
-- UPDATE modifies existing records.
-- DELETE removes selected records.
-- COMMIT saves transactional changes.
-- ROLLBACK undoes uncommitted transactional changes.
