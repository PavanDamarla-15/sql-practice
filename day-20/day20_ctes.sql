
-- ==========================================
-- DAY 20: COMMON TABLE EXPRESSIONS (CTEs)
-- ==========================================

-- Exercise 1: Basic CTE
WITH cse_students AS (
    SELECT id, name, marks
    FROM students
    WHERE branch = 'CSE'
)
SELECT * FROM cse_students;


-- Exercise 2: CTE with AVG()
WITH branch_average AS (
    SELECT branch, AVG(marks) AS avg_marks
    FROM students
    GROUP BY branch
)
SELECT * FROM branch_average;


-- Exercise 3: CTE with WHERE
WITH branch_average AS (
    SELECT branch, AVG(marks) AS avg_marks
    FROM students
    GROUP BY branch
)
SELECT *
FROM branch_average
WHERE avg_marks > 80;


-- Exercise 4: Multiple CTEs with JOIN
WITH branch_average AS (
    SELECT branch, AVG(marks) AS avg_marks
    FROM students
    GROUP BY branch
),
high_scores AS (
    SELECT s.name, s.branch, s.marks, b.avg_marks
    FROM students s
    JOIN branch_average b
        ON s.branch = b.branch
    WHERE s.marks > b.avg_marks
)
SELECT * FROM high_scores;


-- Exercise 5: CTE with HAVING
WITH exercise_5 AS (
    SELECT branch, AVG(marks) AS avg_marks
    FROM students
    GROUP BY branch
    HAVING avg_marks > 75
)
SELECT branch FROM exercise_5;


-- Exercise 6: CTE with ORDER BY
WITH branch_average AS (
    SELECT branch, AVG(marks) AS avg_marks
    FROM students
    GROUP BY branch
)
SELECT *
FROM branch_average
ORDER BY avg_marks DESC;


-- Exercise 7: CTE with JOIN and WHERE
WITH branch_average AS (
    SELECT branch, AVG(marks) AS avg_marks
    FROM students
    GROUP BY branch
),
exercise_7 AS (
    SELECT s.name, s.branch, s.marks, b.avg_marks
    FROM students s
    JOIN branch_average b
        ON s.branch = b.branch
    WHERE s.marks > 80
)
SELECT * FROM exercise_7;


-- Exercise 8: CTE with CASE
WITH exercise_8 AS (
    SELECT name, marks,
        CASE
            WHEN marks IS NULL THEN 'NOT AVAILABLE'
            WHEN marks >= 90 THEN 'EXCELLENT'
            WHEN marks >= 80 THEN 'GOOD'
            WHEN marks >= 70 THEN 'AVERAGE'
            ELSE 'Needs Improvement'
        END AS performance
    FROM students
)
SELECT name, marks, performance
FROM exercise_8;


-- Exercise 9: CTE with multiple conditions
WITH exercise_9 AS (
    SELECT name, branch, marks
    FROM students
    WHERE branch = 'CSE' AND marks >= 80
)
SELECT * FROM exercise_9;


-- Exercise 10: CTE with AVG()
WITH exercise_10 AS (
    SELECT name, marks, branch
    FROM students
    WHERE marks > 75
)
SELECT AVG(marks) AS average_marks
FROM exercise_10;


-- ==========================================
-- RECURSIVE CTEs
-- ==========================================

-- Exercise 11: Generate numbers from 1 to 5
WITH RECURSIVE numbers AS (
    SELECT 1 AS num
    UNION ALL
    SELECT num + 1
    FROM numbers
    WHERE num < 5
)
SELECT * FROM numbers;


-- Exercise 12: Generate even numbers from 2 to 10
WITH RECURSIVE even_numbers AS (
    SELECT 2 AS num
    UNION ALL
    SELECT num + 2
    FROM even_numbers
    WHERE num < 10
)
SELECT * FROM even_numbers;


-- Exercise 13: Generate numbers from 10 down to 1
WITH RECURSIVE rev_numbers AS (
    SELECT 10 AS num
    UNION ALL
    SELECT num - 1
    FROM rev_numbers
    WHERE num > 1
)
SELECT * FROM rev_numbers;


-- Exercise 14: Multiplication table of 5
WITH RECURSIVE multiplication_table AS (
    SELECT 1 AS num
    UNION ALL
    SELECT num + 1
    FROM multiplication_table
    WHERE num < 10
)
SELECT num AS Number, num * 5 AS Result
FROM multiplication_table;


-- Exercise 15: Sum of numbers from 1 to 10
WITH RECURSIVE sum_of_numbers AS (
    SELECT 1 AS num
    UNION ALL
    SELECT num + 1
    FROM sum_of_numbers
    WHERE num < 10
)
SELECT SUM(num) AS total
FROM sum_of_numbers;


-- Exercise 16: Squares of numbers from 1 to 5
WITH RECURSIVE square_numbers AS (
    SELECT 1 AS num
    UNION ALL
    SELECT num + 1
    FROM square_numbers
    WHERE num < 5
)
SELECT num, num * num AS square
FROM square_numbers;


-- Exercise 17: Factorial of 5
WITH RECURSIVE fact AS (
    SELECT 1 AS num, 1 AS factorial
    UNION ALL
    SELECT num + 1, factorial * (num + 1)
    FROM fact
    WHERE num < 5
)
SELECT factorial
FROM fact
WHERE num = 5;


-- Exercise 18: Generate dates from November 1 to 5
WITH RECURSIVE date_sequence AS (
    SELECT CAST('2026-11-01' AS DATE) AS dt
    UNION ALL
    SELECT DATE_ADD(dt, INTERVAL 1 DAY)
    FROM date_sequence
    WHERE dt < '2026-11-05'
)
SELECT * FROM date_sequence;


-- Exercise 19: Generate multiples of 3 up to 30
WITH RECURSIVE numbers AS (
    SELECT 3 AS num
    UNION ALL
    SELECT num + 3
    FROM numbers
    WHERE num < 30
)
SELECT * FROM numbers;


-- Exercise 20: Generate numbers 1 to 10 and filter odd numbers
WITH RECURSIVE odd_numbers AS (
    SELECT 1 AS num
    UNION ALL
    SELECT num + 1
    FROM odd_numbers
    WHERE num < 10
)
SELECT num
FROM odd_numbers
WHERE num % 2 = 1;


-- ==========================================
-- END OF DAY 20
-- TOPICS: CTEs AND RECURSIVE CTEs
-- ==========================================
