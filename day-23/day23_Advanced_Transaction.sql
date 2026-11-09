
-- Day 23: Advanced SQL Transactions

-- 1. SAVEPOINT and ROLLBACK TO SAVEPOINT
START TRANSACTION;

UPDATE students
SET marks = 95
WHERE name = 'Pavan';

SAVEPOINT sp1;

UPDATE students
SET marks = 80
WHERE name = 'Rahul';

ROLLBACK TO SAVEPOINT sp1;

COMMIT;


-- 2. Check transaction isolation levels
SELECT @@GLOBAL.transaction_isolation,
       @@SESSION.transaction_isolation;


-- 3. Check current transaction isolation
SELECT @@transaction_isolation;


-- 4. Set isolation level for current session
SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;


-- 5. Phantom Read experiment
-- Session 1:
START TRANSACTION;

SELECT *
FROM students
WHERE branch = 'CSE';

-- Keep Session 1 transaction open.
-- In Session 2, execute the following:

-- START TRANSACTION;
-- INSERT INTO students (id, name, branch, marks, age)
-- VALUES (11, 'PhantomTest', 'CSE', 88, 20);
-- COMMIT;

-- Back in Session 1:
SELECT *
FROM students
WHERE branch = 'CSE';

COMMIT;

-- Verify and clean up the test record
SELECT *
FROM students
WHERE name = 'PhantomTest';

DELETE FROM students
WHERE name = 'PhantomTest';


-- 6. Verify cleanup
SELECT *
FROM students
WHERE name = 'PhantomTest';
