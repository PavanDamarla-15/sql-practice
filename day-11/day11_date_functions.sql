-- Day 11: SQL Date and Time Functions
-- Topics: CURRENT_DATE, CURRENT_TIME, YEAR, MONTH, DAY,
-- DATEDIFF, DATE_ADD, DATE_SUB, DATE_FORMAT

-- 1. Display today's date and current time
SELECT
    CURRENT_DATE() AS today,
    CURRENT_TIME() AS time_now;

-- 2. Extract year, month, and day
SELECT
    YEAR(CURRENT_DATE()) AS year_value,
    MONTH(CURRENT_DATE()) AS month_value,
    DAY(CURRENT_DATE()) AS day_value;

-- 3. Calculate days between two dates
SELECT
    DATEDIFF(CURRENT_DATE(), '2026-10-01') AS days_difference;

-- 4. Calculate a date 30 days in the future
SELECT
    DATE_ADD(CURRENT_DATE(), INTERVAL 30 DAY) AS future_date;

-- 5. Calculate a date 15 days in the past
SELECT
    DATE_SUB(CURRENT_DATE(), INTERVAL 15 DAY) AS past_date;

-- 6. Format today's date
SELECT
    DATE_FORMAT(CURRENT_DATE(), '%M %d, %Y') AS formatted_date;

-- 7. Final challenge: combine date functions
SELECT
    CURRENT_DATE() AS today,
    DATE_ADD(CURRENT_DATE(), INTERVAL 30 DAY) AS future_date,
    DATE_SUB(CURRENT_DATE(), INTERVAL 15 DAY) AS past_date,
    DATE_FORMAT(CURRENT_DATE(), '%M %d, %Y') AS formatted_date;
