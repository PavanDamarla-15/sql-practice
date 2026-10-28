
-- Day 17: SQL Stored Procedures
-- Topics: CREATE PROCEDURE, CALL, IN parameters,
-- BEGIN, END, DELIMITER

USE sql_practice;

-- 1. Procedure to retrieve CSE students
DROP PROCEDURE IF EXISTS get_cse_students;

DELIMITER //

CREATE PROCEDURE get_cse_students()
BEGIN
    SELECT name, marks
    FROM students
    WHERE branch = 'CSE';
END //

-- 2. Procedure to retrieve students by branch
DROP PROCEDURE IF EXISTS get_students_by_branch;

CREATE PROCEDURE get_students_by_branch(
    IN branch_name VARCHAR(10)
)
BEGIN
    SELECT name, marks
    FROM students
    WHERE branch = branch_name;
END //

-- 3. Procedure to retrieve students by branch and minimum marks
DROP PROCEDURE IF EXISTS get_students_by_branch_and_marks;

CREATE PROCEDURE get_students_by_branch_and_marks(
    IN branch_name VARCHAR(10),
    IN minimum_marks INT
)
BEGIN
    SELECT name, marks
    FROM students
    WHERE branch = branch_name
      AND marks >= minimum_marks;
END //

DELIMITER ;

-- 4. Test the procedures
CALL get_cse_students();

CALL get_students_by_branch('CSE');
CALL get_students_by_branch('ECE');

CALL get_students_by_branch_and_marks('CSE', 80);
CALL get_students_by_branch_and_marks('ECE', 70);
