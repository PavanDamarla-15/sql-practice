
-- ==========================================
-- DAY 22: SQL PERFORMANCE ANALYSIS
-- ==========================================

-- 1. Display all records
SELECT * FROM students;

-- 2. Analyze a basic SELECT query
EXPLAIN
SELECT * FROM students;

-- 3. Analyze filtering using WHERE
EXPLAIN
SELECT *
FROM students
WHERE branch = 'CSE';

-- 4. Create a single-column index
CREATE INDEX idx_branch
ON students(branch);

-- 5. Display indexes on students table
SHOW INDEX FROM students;

-- 6. Analyze query using single-column index
EXPLAIN
SELECT *
FROM students
WHERE branch = 'CSE';

-- 7. Create a composite index
CREATE INDEX idx_branch_marks
ON students(branch, marks);

-- 8. Analyze query using composite index
EXPLAIN
SELECT *
FROM students
WHERE branch = 'CSE'
AND marks > 80;

-- 9. Test the leftmost prefix rule
EXPLAIN
SELECT *
FROM students
WHERE branch = 'CSE';

-- 10. Analyze query without the leftmost column
EXPLAIN
SELECT *
FROM students
WHERE marks > 80;

-- 11. Analyze a covering index query
EXPLAIN
SELECT branch, marks
FROM students
WHERE branch = 'CSE'
AND marks > 80;

-- 12. Compare normal filtering with a function
-- Normal query
EXPLAIN
SELECT *
FROM students
WHERE branch = 'CSE';

-- Function applied to indexed column
EXPLAIN
SELECT *
FROM students
WHERE UPPER(branch) = 'CSE';

-- 13. Analyze sorting
EXPLAIN
SELECT *
FROM students
ORDER BY branch;

-- 14. Analyze grouping
EXPLAIN
SELECT
    branch,
    COUNT(*) AS student_count
FROM students
GROUP BY branch;

-- 15. Analyze filtering and grouping together
EXPLAIN
SELECT
    branch,
    COUNT(*) AS student_count
FROM students
WHERE marks > 70
GROUP BY branch;

-- ==========================================
-- END OF DAY 22
-- ==========================================
