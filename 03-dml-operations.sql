-- ---------------------------------------------------------
-- COMMAND: INSERT INTO
-- PURPOSE: Inserts data into a table
-- ---------------------------------------------------------

-- Syntax:
-- INSERT INTO table_name (column1, column2)
-- VALUES (value1, value2);

-- Example (single row):
INSERT INTO students (id, name, student_age, email)
VALUES (1, 'Rahul', 21, 'rahul@gmail.com');

-- ---------------------------------------------------------
-- COMMAND: INSERT INTO (MULTIPLE ROWS)
-- PURPOSE: Inserts multiple rows in a single query
-- ---------------------------------------------------------

-- Syntax:
-- INSERT INTO table_name VALUES
-- (value1, value2),
-- (value1, value2);

-- Example:
INSERT INTO students (id, name, student_age, email)
VALUES
  (2, 'Anita', 22, 'anita@gmail.com'),
  (3, 'Kiran', 20, 'kiran@gmail.com');

-- ---------------------------------------------------------
-- COMMAND: SELECT
-- PURPOSE: Retrieves data from a table
-- ---------------------------------------------------------

-- Syntax:
-- SELECT * FROM table_name;

-- Example:
SELECT * FROM students;

-- ---------------------------------------------------------
-- COMMAND: UPDATE
-- PURPOSE: Modifies existing data in a table
-- ---------------------------------------------------------

-- Syntax:
-- UPDATE table_name
-- SET column = value
-- WHERE condition;

-- Example:
UPDATE students
SET student_age = 23
WHERE name = 'Anita';

-- ---------------------------------------------------------
-- COMMAND: DELETE
-- PURPOSE: Deletes specific rows from a table
-- ---------------------------------------------------------

-- Syntax:
-- DELETE FROM table_name WHERE condition;

-- Example:
DELETE FROM students
WHERE id = 3;

-- ---------------------------------------------------------
-- COMMAND: DELETE ALL ROWS
-- PURPOSE: Deletes all rows from a table (structure remains)
-- ---------------------------------------------------------

-- Syntax:
-- DELETE FROM table_name;

-- Example:
DELETE FROM students;

-- ---------------------------------------------------------
-- DIFFERENCE: DELETE vs TRUNCATE
-- ---------------------------------------------------------
-- DELETE:
-- 1. Can use WHERE clause
-- 2. Deletes selected rows
-- 3. Slower than TRUNCATE
-- 4. Can be rolled back (if using transactions)

-- TRUNCATE:
-- 1. Cannot use WHERE clause
-- 2. Deletes all rows
-- 3. Faster than DELETE
-- 4. Cannot be rolled back
-- 5. Resets auto-increment counter

-- Example:
TRUNCATE TABLE students;

-- ---------------------------------------------------------
-- INTERVIEW NOTES (IMPORTANT)
-- ---------------------------------------------------------
-- 1. DML commands modify table data
-- 2. INSERT adds new records
-- 3. UPDATE modifies existing records
-- 4. DELETE removes records conditionally
-- 5. TRUNCATE removes all records quickly
-- 6. WHERE clause is critical in UPDATE and DELETE