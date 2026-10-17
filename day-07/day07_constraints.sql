-- Day 7: SQL Constraints and Data Integrity
-- Topics: PRIMARY KEY, NOT NULL, UNIQUE, DEFAULT, CHECK, FOREIGN KEY

USE sql_practice;

-- 1. PRIMARY KEY and NOT NULL
-- Demo table created during practice:
-- students_demo(id, name, marks)
-- id is unique and cannot be NULL.
-- name cannot be NULL.

INSERT INTO students_demo (id, name, marks)
VALUES (1, 'Pavan', 85);

-- Duplicate ID and NULL name tests were intentionally rejected.
-- Do not rerun the duplicate test expecting success.

-- 2. UNIQUE and DEFAULT
-- Demo table created during practice:
-- student_constraints(id, name, email, city)

INSERT INTO student_constraints (id, name, email)
VALUES (1, 'Pavan', 'pavan@example.com');

-- The city defaults to Guntur when omitted.
-- A duplicate email is rejected by the UNIQUE constraint.

INSERT INTO student_constraints (id, name, email, city)
VALUES (2, 'Rahul', 'rahul@example.com', 'Vijayawada');

-- 3. CHECK constraint
-- Demo table created during practice:
-- marks_demo(id, name, marks)
-- marks must be between 0 and 100.

INSERT INTO marks_demo (id, name, marks)
VALUES (1, 'Pavan', 85);

-- Values 150 and -5 were rejected by the CHECK constraint.

-- 4. FOREIGN KEY
CREATE TABLE IF NOT EXISTS departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

-- Insert departments only if they do not already exist.
INSERT INTO departments (dept_id, dept_name)
SELECT 1, 'CSE'
WHERE NOT EXISTS (
    SELECT 1 FROM departments WHERE dept_id = 1
);

INSERT INTO departments (dept_id, dept_name)
SELECT 2, 'ECE'
WHERE NOT EXISTS (
    SELECT 1 FROM departments WHERE dept_id = 2
);

CREATE TABLE IF NOT EXISTS department_students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Insert the practice record only if it does not already exist.
INSERT INTO department_students (student_id, name, dept_id)
SELECT 1, 'Pavan', 1
WHERE NOT EXISTS (
    SELECT 1 FROM department_students WHERE student_id = 1
);

-- View student names and their department names.
SELECT ds.name, d.dept_name
FROM department_students AS ds
INNER JOIN departments AS d
    ON ds.dept_id = d.dept_id;

-- Key learning:
-- Constraints help preserve data integrity and enforce database rules.
