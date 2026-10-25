
-- Day 13: SQL NULL-Handling Functions
-- Database: sql_practice

-- 1. IFNULL(): Replace NULL with a specified value
SELECT IFNULL(NULL, 100) AS result1;
SELECT IFNULL(85, 100) AS result2;

-- 2. IFNULL() with the students table
SELECT
    name,
    IFNULL(marks, 0) AS displayed_marks
FROM students;

-- 3. NULLIF(): Return NULL when both values are equal
SELECT NULLIF(10, 10) AS result1;
SELECT NULLIF(10, 20) AS result2;

-- 4. NULLIF() to handle division by zero
SELECT 100 / NULLIF(5, 0) AS result1;
SELECT 100 / NULLIF(0, 0) AS result2;

-- 5. COALESCE(): Return the first non-NULL value
SELECT COALESCE(NULL, NULL, 25, 50) AS result1;
SELECT COALESCE(NULL, 0, 100) AS result2;
SELECT COALESCE(NULL, NULL, NULL) AS result3;

-- 6. Final challenge: Combine all three functions
SELECT
    IFNULL(NULL, 50) AS value1,
    NULLIF(10, 10) AS value2,
    COALESCE(NULL, NULL, 75, 100) AS value3,
    100 / NULLIF(0, 0) AS value4;
