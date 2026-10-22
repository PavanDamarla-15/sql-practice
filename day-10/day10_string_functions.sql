-- Day 10: SQL String Functions
-- Topics: UPPER, LOWER, CONCAT, LENGTH, SUBSTRING, TRIM

-- 1. Convert names and branches to uppercase/lowercase
SELECT UPPER(name) AS uppercase_name,
       LOWER(branch) AS lowercase_branch
FROM students;

-- 2. Combine student name and branch
SELECT CONCAT(name, ' studies ', branch) AS student_info
FROM students;

-- 3. Find names longer than 5 bytes
SELECT name, LENGTH(name) AS name_length
FROM students
WHERE LENGTH(name) > 5;

-- 4. Extract the first two characters
SELECT name, SUBSTRING(name, 1, 2) AS first_two
FROM students;

-- 5. Remove leading and trailing spaces
SELECT TRIM('    SQL Buddy     ') AS clean_text;

-- 6. Combine string functions and sort by name length
SELECT UPPER(name) AS uppercase_name,
       SUBSTR(name, 1, 3) AS first_three,
       LENGTH(name) AS name_length,
       branch
FROM students
ORDER BY name_length DESC;
