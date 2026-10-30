
-- Day 19: User-Defined Functions
-- Topics: CREATE FUNCTION, DROP FUNCTION, RETURNS,
-- DETERMINISTIC, DECLARE, IF, ELSEIF, ELSE, RETURN

USE sql_practice;

-- 1. Remove existing functions before recreating them
DROP FUNCTION IF EXISTS calculate_grade;
DROP FUNCTION IF EXISTS calculate_bonus;

-- 2. Function to calculate student grade
DELIMITER //

CREATE FUNCTION calculate_grade(marks INT)
RETURNS VARCHAR(5)
DETERMINISTIC
BEGIN
    DECLARE grade VARCHAR(5);

    IF marks IS NULL THEN
        SET grade = 'N/A';
    ELSEIF marks >= 90 THEN
        SET grade = 'A';
    ELSEIF marks >= 80 THEN
        SET grade = 'B';
    ELSEIF marks >= 70 THEN
        SET grade = 'C';
    ELSE
        SET grade = 'D';
    END IF;

    RETURN grade;
END //

-- 3. Function to calculate student bonus
CREATE FUNCTION calculate_bonus(marks INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE bonus INT;

    IF marks IS NULL THEN
        SET bonus = 0;
    ELSEIF marks >= 90 THEN
        SET bonus = 1000;
    ELSEIF marks >= 80 THEN
        SET bonus = 500;
    ELSE
        SET bonus = 200;
    END IF;

    RETURN bonus;
END //

DELIMITER ;

-- 4. Test grade function
SELECT calculate_grade(95);
SELECT calculate_grade(85);
SELECT calculate_grade(75);
SELECT calculate_grade(NULL);

-- 5. Test bonus function
SELECT calculate_bonus(95);
SELECT calculate_bonus(85);
SELECT calculate_bonus(75);
SELECT calculate_bonus(NULL);

-- 6. Apply both functions to students
SELECT
    name,
    marks,
    calculate_grade(marks) AS grade,
    calculate_bonus(marks) AS bonus
FROM students
ORDER BY marks DESC;
