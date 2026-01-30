-- ---------------------------------------------------------
-- COMMAND: SELECT ALL
-- PURPOSE: Retrieves all columns and all rows from a table
-- ---------------------------------------------------------

-- Syntax:
-- SELECT * FROM table_name;

-- Example:
SELECT * FROM students;

-- ---------------------------------------------------------
-- COMMAND: SELECT SPECIFIC COLUMNS
-- PURPOSE: Retrieves only selected columns
-- ---------------------------------------------------------

-- Syntax:
-- SELECT column1, column2 FROM table_name;

-- Example:
SELECT name, student_age FROM students;

-- ---------------------------------------------------------
-- COMMAND: WHERE
-- PURPOSE: Filters records based on a condition
-- ---------------------------------------------------------

-- Syntax:
-- SELECT * FROM table_name WHERE condition;

-- Example:
SELECT * FROM students
WHERE student_age > 20;

-- ---------------------------------------------------------
-- COMMAND: AND / OR
-- PURPOSE: Combines multiple conditions
-- ---------------------------------------------------------

-- Example (AND):
SELECT * FROM students
WHERE student_age > 20 AND name = 'Rahul';

-- Example (OR):
SELECT * FROM students
WHERE student_age = 20 OR student_age = 21;

-- ---------------------------------------------------------
-- COMMAND: BETWEEN
-- PURPOSE: Filters values within a range (inclusive)
-- ---------------------------------------------------------

-- Syntax:
-- SELECT * FROM table_name WHERE column BETWEEN value1 AND value2;

-- Example:
SELECT * FROM students
WHERE student_age BETWEEN 20 AND 22;


-- ---------------------------------------------------------
-- COMMAND: IN
-- PURPOSE: Matches values from a given list
-- ---------------------------------------------------------

-- Syntax:
-- SELECT * FROM table_name WHERE column IN (value1, value2);

-- Example:
SELECT * FROM students
WHERE name IN ('Rahul', 'Anita');

-- ---------------------------------------------------------
-- COMMAND: LIKE
-- PURPOSE: Searches for a pattern in a column
-- ---------------------------------------------------------

-- Syntax:
-- LIKE 'pattern%';

-- Example (starts with 'R'):
SELECT * FROM students
WHERE name LIKE 'R%';

-- Example (contains 'it'):
SELECT * FROM students
WHERE name LIKE '%it%';

-- ---------------------------------------------------------
-- COMMAND: IS NULL
-- PURPOSE: Checks for NULL values
-- ---------------------------------------------------------

-- Example:
SELECT * FROM students
WHERE email IS NULL;

-- ---------------------------------------------------------
-- COMMAND: DISTINCT
-- PURPOSE: Removes duplicate records from the result
-- ---------------------------------------------------------

-- Example:
SELECT DISTINCT student_age FROM students;

-- ---------------------------------------------------------
-- COMMAND: ORDER BY
-- PURPOSE: Sorts the result set
-- ---------------------------------------------------------

-- Syntax:
-- ORDER BY column ASC | DESC;

-- Example (Ascending):
SELECT * FROM students
ORDER BY student_age ASC;

-- Example (Descending):
SELECT * FROM students
ORDER BY student_age DESC;

-- ---------------------------------------------------------
-- COMMAND: LIMIT
-- PURPOSE:
-- Limits the number of rows returned
-- ---------------------------------------------------------

-- Syntax: LIMIT number;

-- Example:
SELECT * FROM students
LIMIT 2;

-- ---------------------------------------------------------
-- INTERVIEW NOTES (IMPORTANT)
-- ---------------------------------------------------------
-- 1. SELECT is used to fetch data
-- 2. WHERE filters rows
-- 3. AND / OR combine conditions
-- 4. BETWEEN includes both boundary values
-- 5. LIKE uses wildcards (%) and (_)
-- 6. ORDER BY sorts result set
-- 7. LIMIT is used for pagination