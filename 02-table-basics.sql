-- ---------------------------------------------------------
-- COMMAND: CREATE TABLE
-- PURPOSE: Creates a new table inside the selected database
-- ---------------------------------------------------------

-- Syntax:
-- CREATE TABLE table_name (
--   column_name datatype,
--   column_name datatype
-- );

-- Example:
CREATE TABLE IF NOT EXISTS students (
  id INT,
  name VARCHAR(50),
  age INT
);

-- ---------------------------------------------------------
-- COMMAND: DESCRIBE TABLE (DESC)
-- PURPOSE: Displays the structure of a table
-- ---------------------------------------------------------

-- Syntax:
-- DESC table_name;

-- Example:
DESC students;

-- ---------------------------------------------------------
-- COMMAND: ALTER TABLE (ADD COLUMN)
-- PURPOSE: Adds a new column to an existing table
-- ---------------------------------------------------------

-- Syntax:
-- ALTER TABLE table_name ADD column datatype;

-- Example:
ALTER TABLE students
ADD email VARCHAR(100);

DESCRIBE students;

-- ---------------------------------------------------------
-- COMMAND: ALTER TABLE (MODIFY COLUMN)
-- PURPOSE: Changes the datatype or size of an existing column
-- ---------------------------------------------------------

-- Syntax:
-- ALTER TABLE table_name MODIFY column new_datatype;

-- Example:
ALTER TABLE students
MODIFY name VARCHAR(100);

-- ---------------------------------------------------------
-- COMMAND: ALTER TABLE (RENAME COLUMN)
-- PURPOSE: Renames an existing column
-- ---------------------------------------------------------

-- Syntax:
-- ALTER TABLE table_name RENAME COLUMN old_name TO new_name;

-- Example:
ALTER TABLE students
RENAME COLUMN age TO student_age;

DESCRIBE students;

-- ---------------------------------------------------------
-- COMMAND: TRUNCATE TABLE
-- PURPOSE: Deletes all rows from a table
-- Table structure remains
-- Faster than DELETE
-- ---------------------------------------------------------

-- Syntax:
-- TRUNCATE TABLE table_name;

-- Example:
TRUNCATE TABLE students;

DESCRIBE students;

SELECT * FROM STUDENTS;

-- ---------------------------------------------------------
-- COMMAND: DROP TABLE
-- PURPOSE: Permanently deletes a table and its structure
-- ---------------------------------------------------------

-- Syntax:
-- DROP TABLE table_name;

-- Safe Example:
DROP TABLE IF EXISTS temp_table;

-- ---------------------------------------------------------
-- INTERVIEW NOTES (IMPORTANT)
-- ---------------------------------------------------------
-- 1. CREATE TABLE defines table structure
-- 2. DESC is used to view table schema
-- 3. ALTER TABLE modifies table structure
-- 4. TRUNCATE removes all data but keeps structure
-- 5. DROP TABLE deletes table completely
-- 6. TRUNCATE is faster than DELETE
-- 7. IF NOT EXISTS avoids runtime errors