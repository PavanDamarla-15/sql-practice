
-- ============================================
-- DAY 21: WINDOW FUNCTIONS
-- Database: sql_practice
-- ============================================

-- EXERCISE 1: AVG() OVER()
SELECT
    name, branch, marks,
    AVG(marks) OVER() AS overall_average
FROM students;

-- EXERCISE 2: ROW_NUMBER()
SELECT
    name, branch, marks,
    ROW_NUMBER() OVER(ORDER BY marks DESC) AS row_num
FROM students;

-- EXERCISE 3: RANK()
SELECT
    name, marks,
    RANK() OVER(ORDER BY marks DESC) AS student_rank
FROM students;

-- EXERCISE 4: DENSE_RANK()
SELECT
    name, marks,
    DENSE_RANK() OVER(ORDER BY marks DESC) AS dense_rank_marks
FROM students;

-- EXERCISE 5: RANK() WITH PARTITION BY
SELECT
    name, branch, marks,
    RANK() OVER(
        PARTITION BY branch
        ORDER BY marks DESC
    ) AS branch_rank
FROM students;

-- EXERCISE 6: BRANCH AVERAGE
SELECT
    name, branch, marks,
    AVG(marks) OVER(PARTITION BY branch) AS branch_average
FROM students;

-- EXERCISE 7: ROW_NUMBER() WITH PARTITION BY
SELECT
    name, branch, marks,
    ROW_NUMBER() OVER(
        PARTITION BY branch
        ORDER BY marks DESC
    ) AS branch_row_number
FROM students;

-- EXERCISE 8: RUNNING TOTAL
SELECT
    name, marks,
    SUM(marks) OVER(
        ORDER BY id
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_total
FROM students;

-- EXERCISE 9: BRANCH RUNNING TOTAL
SELECT
    name, branch, marks,
    SUM(marks) OVER(
        PARTITION BY branch
        ORDER BY id
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS branch_running_total
FROM students;

-- EXERCISE 10: LAG()
SELECT
    name, marks,
    LAG(marks) OVER(ORDER BY id) AS previous_marks
FROM students;

-- EXERCISE 11: LEAD()
SELECT
    name, marks,
    LEAD(marks) OVER(ORDER BY id) AS next_marks
FROM students;

-- EXERCISE 12: LAG() WITH PARTITION BY
SELECT
    name, branch, marks,
    LAG(marks) OVER(
        PARTITION BY branch
        ORDER BY id
    ) AS previous_branch_marks
FROM students;

-- EXERCISE 13: FIRST_VALUE()
SELECT
    name, branch, marks,
    FIRST_VALUE(marks) OVER(
        PARTITION BY branch
        ORDER BY marks DESC
    ) AS highest_branch_marks
FROM students;

-- EXERCISE 14: LAST_VALUE()
SELECT
    name, branch, marks,
    LAST_VALUE(marks) OVER(
        PARTITION BY branch
        ORDER BY marks DESC
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS lowest_branch_marks
FROM students;

-- EXERCISE 15: NTILE()
SELECT
    name, marks,
    NTILE(4) OVER(ORDER BY marks DESC) AS marks_group
FROM students;

-- EXERCISE 16: WINDOW FUNCTION WITH WHERE
SELECT
    name, branch, marks,
    RANK() OVER(
        PARTITION BY branch
        ORDER BY marks DESC
    ) AS student_rank
FROM students
WHERE branch = 'CSE';

-- EXERCISE 17: TOP 2 STUDENTS FROM EACH BRANCH
WITH ranked_students AS (
    SELECT
        name, branch, marks,
        RANK() OVER(
            PARTITION BY branch
            ORDER BY marks DESC
        ) AS student_rank
    FROM students
)
SELECT *
FROM ranked_students
WHERE student_rank <= 2;

-- EXERCISE 18: SECOND-HIGHEST MARKS IN EACH BRANCH
WITH student_rank AS (
    SELECT
        name, branch, marks,
        DENSE_RANK() OVER(
            PARTITION BY branch
            ORDER BY marks DESC
        ) AS stu_rank
    FROM students
    WHERE marks IS NOT NULL
)
SELECT *
FROM student_rank
WHERE stu_rank = 2;

-- EXERCISE 19: TOP 3 STUDENTS FROM EACH BRANCH
WITH student_rank AS (
    SELECT
        name, branch, marks,
        DENSE_RANK() OVER(
            PARTITION BY branch
            ORDER BY marks DESC
        ) AS stu_rank
    FROM students
    WHERE marks IS NOT NULL
)
SELECT *
FROM student_rank
WHERE stu_rank <= 3
ORDER BY branch, stu_rank;

-- EXERCISE 20: BRANCH PERFORMANCE REPORT
SELECT
    name,
    branch,
    marks,
    AVG(marks) OVER(
        PARTITION BY branch
    ) AS branch_average,
    RANK() OVER(
        PARTITION BY branch
        ORDER BY marks DESC
    ) AS branch_rank,
    marks - AVG(marks) OVER(
        PARTITION BY branch
    ) AS difference_from_average
FROM students
WHERE marks IS NOT NULL;
