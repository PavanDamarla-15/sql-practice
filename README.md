# SQL Practice 🚀

A hands-on journey to mastering SQL using MySQL 8, with daily practice, interview questions, and real-world data analysis.

## 🎯 Goals
- Strengthen SQL fundamentals
- Practise SQL interview questions
- Learn advanced queries and data analysis
- Build a portfolio for my AI Engineer journey

## 🛠️ Technologies
- MySQL 8
- Git
- GitHub

## 📚 Daily Progress
x
### Day 1: SQL Basics
**Topics covered:**
- `SELECT` — retrieve data
- `WHERE` — filter records
- `ORDER BY` — sort results
- `ASC` and `DESC` — sorting order
- `LIMIT` — restrict the number of rows

**Practice file:** `day-01/day01_basics.sql`

### Upcoming Topics
- Aggregate functions: `COUNT()`, `SUM()`, `AVG()`, `MIN()`, `MAX()`
- `GROUP BY` and `HAVING`
- SQL joins and subqueries
- CTEs and window functions
- SQL interview problems
- SQL with Python and Machine Learning

## 📈 My Commitment

I aim to practise SQL consistently, document my learning, and push my progress to GitHub.

---

*Learning step by step, one query at a time!*

### Day 2: SQL Aggregate Functions

**Topics covered:**
- COUNT()
- SUM()
- AVG()
- MIN() and MAX()
- GROUP BY
- ORDER BY with aggregate functions

**Practice file:** `day-02/day02_aggregates.sql`

### Day 3: HAVING and WHERE vs HAVING

**Topics covered:**
- Filtering rows with `WHERE`
- Grouping records with `GROUP BY`
- Filtering groups with `HAVING`
- Combining conditions with `AND`
- Aggregate functions with `COUNT()` and `AVG()`
- Comparison operators such as `>` and `>=`

**Practice file:** `day-03/day03_having.sql`

**Key learning:** `WHERE` filters rows before grouping, while `HAVING` filters groups after grouping.

### Day 4: SQL JOINs

**Topics covered:**
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- Joining tables using matching IDs
- Table aliases
- Filtering joined results using WHERE
- Sorting joined results using ORDER BY
- Finding unmatched records using IS NULL

**Practice file:** `day-04/day04_joins.sql`

**Key learning:** INNER JOIN returns matching records, LEFT JOIN preserves all left-table records, and RIGHT JOIN preserves all right-table records.

### Day 5: SQL Subqueries

**Topics covered:**
- Scalar subqueries
- Subqueries with `WHERE`
- `AVG()` and `MAX()` in subqueries
- `IN` and `NOT IN`
- Subqueries combined with `GROUP BY` and `HAVING`

**Practice file:** `day-05/day05_subqueries.sql`

**Key learning:** A subquery allows one SQL query to use the result of another query.

### Day 6: SQL CASE Expressions

**Topics covered:**
- `CASE`, `WHEN`, `THEN`, `ELSE`, and `END`
- Conditional classification of student marks
- Age categorization
- Pass/fail evaluation
- Mapping branches to department names
- Assigning grades using multiple conditions
- Combining `CASE` with `ORDER BY DESC`

**Practice file:** `day-06/day06_case.sql`

**Key learning:** The `CASE` expression evaluates conditions in order and returns the result for the first matching condition.

### Day 7: SQL Constraints and Data Integrity

**Topics covered:**
- `PRIMARY KEY` — uniquely identifies each record
- `NOT NULL` — prevents missing values
- `UNIQUE` — prevents duplicate values
- `DEFAULT` — supplies a default value
- `CHECK` — enforces a condition on column values
- `FOREIGN KEY` — maintains relationships between tables
- `INNER JOIN` with related tables

**Practice file:** `day-07/day07_constraints.sql`

**Key learning:** SQL constraints enforce data rules and help maintain data integrity across related tables.

### Day 8: SQL Data Modification and Transactions

**Topics covered:**
- `UPDATE` — modify existing records
- `WHERE` — target specific rows
- Arithmetic updates using `SET marks = marks + 5`
- `DELETE` — remove selected records
- `START TRANSACTION` — begin a transaction
- `ROLLBACK` — undo uncommitted changes
- `COMMIT` — save transactional changes

**Practice file:** `day-08/day08_data_modification.sql`

**Key learning:** Use `WHERE` carefully when modifying or deleting data, and use transactions to control changes before committing them.

### Day 9: Data Modification and NULL Handling

**Topics covered:**
- `INSERT` — add new records
- `UPDATE` with `WHERE` — modify selected records
- `DELETE` with `WHERE` — remove selected records
- `IS NULL` and `IS NOT NULL` — identify missing values
- `COALESCE()` — substitute a value for `NULL` in query results
- `ORDER BY DESC` — sort results in descending order

**Practice file:** `day-09/day09_data_modification_nulls.sql`

**Key learning:** Always use appropriate `WHERE` conditions when modifying or deleting records. Use `IS NULL` to check missing values and `COALESCE()` to display a fallback value without changing the stored data.

### Day 10: SQL String Functions

**Topics covered:**
- `UPPER()` — convert text to uppercase
- `LOWER()` — convert text to lowercase
- `CONCAT()` — combine strings
- `LENGTH()` — count string bytes
- `SUBSTRING()` and `SUBSTR()` — extract part of a string
- `TRIM()` — remove leading and trailing spaces
- Combining string functions with `ORDER BY`

**Practice file:** `day-10/day10_string_functions.sql`

**Key learning:** String functions help format, inspect, and clean text data in SQL queries.

### Day 11: SQL Date and Time Functions

**Topics covered:**
- `CURRENT_DATE()` and `CURRENT_TIME()` — retrieve the current date and time
- `YEAR()`, `MONTH()`, and `DAY()` — extract date components
- `DATEDIFF()` — calculate the difference between dates
- `DATE_ADD()` and `DATE_SUB()` — perform date arithmetic
- `DATE_FORMAT()` — format dates for readable output
- Combining date functions in a single query

**Practice file:** `day-11/day11_date_functions.sql`

**Key learning:** Date functions are useful for analysing time-based data, calculating durations, and formatting dates for reports.


## Day 12: SQL Numeric Functions

Topics covered:
- ROUND()
- CEIL()
- FLOOR()
- ABS()
- MOD()
- POWER()

Practice file: `day-12/day12_numeric_functions.sql`

Learned to round numbers, find absolute values and remainders, and calculate powers.


## Day 13: SQL NULL-Handling Functions

Topics covered:
- IFNULL()
- NULLIF()
- COALESCE()
- Handling NULL values in query results
- Preventing division by zero using NULLIF()

Practice file: `day-13/day13_null_functions.sql`

Learned to replace missing values in query results, identify matching values, and return the first non-NULL value.


## Day 14: SQL Set Operations

Topics covered:
- UNION
- UNION ALL
- Removing duplicate rows
- Combining results from multiple SELECT statements
- ORDER BY with UNION
- Combining compatible values from different columns

Practice file: `day-14/day14_set_operations.sql`


## Day 15: SQL Views

Topics covered:
- CREATE VIEW
- SELECT from a view
- Filtering views using WHERE
- CREATE OR REPLACE VIEW
- DROP VIEW
- Difference between a view and a table

Practice file: `day-15/day15_views.sql`


## Day 16: SQL Indexes

Topics covered:
- CREATE INDEX
- SHOW INDEX
- EXPLAIN query execution plans
- Understanding possible_keys, key, type, and rows
- DROP INDEX
- Choosing indexes based on query conditions

Practice file: `day-16/day16_indexes.sql`


## Day 17: SQL Stored Procedures

Topics covered:
- CREATE PROCEDURE
- CALL
- Input parameters using IN
- BEGIN and END
- DELIMITER
- Filtering by branch and minimum marks
- Reusable SQL logic

Practice file: `day-17/day17_stored_procedures.sql`


## Day 18: SQL Triggers

Topics covered:
- AFTER INSERT trigger
- AFTER UPDATE trigger
- BEFORE INSERT trigger
- NEW and OLD row references
- SIGNAL SQLSTATE for custom errors
- Audit tables for insertions and marks updates
- Validating marks between 0 and 100

Practice file: `day-18/day18_triggers.sql`


## Day 19: User-Defined Functions

Topics covered:
- CREATE FUNCTION
- DROP FUNCTION
- RETURNS
- DETERMINISTIC
- DECLARE variables
- IF, ELSEIF, ELSE
- RETURN
- NULL handling in functions
- Creating a grade calculator
- Creating a bonus calculator
- Using custom functions inside SELECT queries

Practice file: `day-19/day19_user_defined_functions.sql`

