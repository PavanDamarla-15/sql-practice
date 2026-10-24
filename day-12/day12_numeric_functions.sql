
-- Day 12: SQL Numeric Functions
-- Database: sql_practice

-- 1. ROUND(): Round a decimal number
SELECT ROUND(45.678, 2) AS rounded_value;

-- 2. CEIL(): Round up to the next integer
SELECT CEIL(6.2) AS ceiling_value;

-- 3. FLOOR(): Round down to the previous integer
SELECT FLOOR(9.8) AS floor_value;

-- 4. ABS(): Return the absolute value
SELECT ABS(-12) AS absolute_value;

-- 5. MOD(): Return the remainder
SELECT MOD(14, 4) AS remainder_value;

-- 6. POWER(): Raise a number to a power
SELECT POWER(2, 5) AS power_value;

-- 7. Combine all six numeric functions in one query
SELECT
    ROUND(45.678, 2) AS rounded_value,
    CEIL(6.2) AS ceiling_value,
    FLOOR(9.8) AS floor_value,
    ABS(-12) AS absolute_value,
    MOD(14, 4) AS remainder_value,
    POWER(2, 5) AS power_value;
