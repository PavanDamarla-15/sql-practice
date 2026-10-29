
-- Day 18: SQL Triggers
-- Topics: AFTER INSERT, AFTER UPDATE, BEFORE INSERT,
-- NEW, OLD, SIGNAL SQLSTATE, audit tables

USE sql_practice;

-- 1. Audit table for student insertions
CREATE TABLE IF NOT EXISTS student_audit (
    audit_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(50),
    action_type VARCHAR(20),
    action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2. Audit table for marks updates
CREATE TABLE IF NOT EXISTS marks_audit (
    audit_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    student_name VARCHAR(50),
    old_marks INT,
    new_marks INT,
    action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 3. Automatically log student insertions
DROP TRIGGER IF EXISTS after_student_insert;

DELIMITER //

CREATE TRIGGER after_student_insert
AFTER INSERT ON students
FOR EACH ROW
BEGIN
    INSERT INTO student_audit (student_name, action_type)
    VALUES (NEW.name, 'INSERT');
END //

-- 4. Automatically log marks changes
DROP TRIGGER IF EXISTS after_student_marks_update;

CREATE TRIGGER after_student_marks_update
AFTER UPDATE ON students
FOR EACH ROW
BEGIN
    IF NOT (OLD.marks <=> NEW.marks) THEN
        INSERT INTO marks_audit (
            student_id, student_name, old_marks, new_marks
        )
        VALUES (
            NEW.id, NEW.name, OLD.marks, NEW.marks
        );
    END IF;
END //

-- 5. Reject marks outside the range 0–100
DROP TRIGGER IF EXISTS validate_student_marks;

CREATE TRIGGER validate_student_marks
BEFORE INSERT ON students
FOR EACH ROW
BEGIN
    IF NEW.marks < 0 OR NEW.marks > 100 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Marks must be between 0-100';
    END IF;
END //

DELIMITER ;

-- 6. Verify the audit records
SELECT * FROM student_audit ORDER BY audit_id;
SELECT * FROM marks_audit ORDER BY audit_id;
