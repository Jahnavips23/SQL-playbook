-- ---------------------------------------------------------
-- COMMAND: COUNT
-- PURPOSE: Returns the number of rows
-- ---------------------------------------------------------

-- Syntax:
-- SELECT COUNT(column_name) FROM table_name;

-- Example:
SELECT COUNT(*) AS total_students
FROM students;

-- ---------------------------------------------------------
-- COMMAND: SUM
-- PURPOSE: Returns the total sum of a numeric column
-- ---------------------------------------------------------

-- Syntax:
-- SELECT SUM(column_name) FROM table_name;

-- Example:
SELECT SUM(student_age) AS total_age
FROM students;

-- ---------------------------------------------------------
-- COMMAND: AVG
-- PURPOSE: Returns the average value of a numeric column
-- ---------------------------------------------------------

-- Syntax:
-- SELECT AVG(column_name) FROM table_name;

-- Example:
SELECT AVG(student_age) AS average_age
FROM students;

-- ---------------------------------------------------------
-- COMMAND: MIN
-- PURPOSE: Returns the minimum value
-- ---------------------------------------------------------

-- Example:
SELECT MIN(student_age) AS youngest_student
FROM students;

-- ---------------------------------------------------------
-- COMMAND: MAX
-- PURPOSE: Returns the maximum value
-- ---------------------------------------------------------

-- Example:
SELECT MAX(student_age) AS oldest_student
FROM students;

-- ---------------------------------------------------------
-- COMMAND: GROUP BY
-- PURPOSE: Groups rows that have the same values
-- ---------------------------------------------------------

-- Example:
SELECT student_age, COUNT(*) AS count_per_age
FROM students
GROUP BY student_age;

-- ---------------------------------------------------------
-- COMMAND: HAVING
-- PURPOSE: Filters groups created by GROUP BY
-- ---------------------------------------------------------

-- Example:
SELECT student_age, COUNT(*) AS count_per_age
FROM students
GROUP BY student_age
HAVING COUNT(*) > 1;

-- ---------------------------------------------------------
-- INTERVIEW NOTES (IMPORTANT)
-- ---------------------------------------------------------
-- 1. Aggregate functions work on multiple rows
-- 2. COUNT(*) counts all rows including NULLs
-- 3. COUNT(column) ignores NULL values
-- 4. GROUP BY groups rows before aggregation
-- 5. HAVING filters aggregated data
-- 6. WHERE filters rows before GROUP BY