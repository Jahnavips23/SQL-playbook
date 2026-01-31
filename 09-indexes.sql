-- =========================================================
-- FILE: 09-indexes.sql
-- TOPIC: INDEXES
-- DESCRIPTION:
-- This file covers indexes in MySQL.
-- Indexes improve query performance by speeding up data retrieval.
-- Mostly asked as theory + basic syntax in interviews.
-- =========================================================


-- ---------------------------------------------------------
-- WHAT IS AN INDEX?
-- ---------------------------------------------------------
-- An index is a database object that improves the speed
-- of SELECT queries by creating a faster lookup structure.
-- It works like an index in a book.


-- ---------------------------------------------------------
-- COMMAND: CREATE INDEX
-- PURPOSE:
-- Creates an index on one or more columns
-- ---------------------------------------------------------

-- Syntax:
-- CREATE INDEX index_name ON table_name(column_name);

-- Example:
CREATE INDEX idx_students_name
ON students(name);


-- ---------------------------------------------------------
-- COMMAND: CREATE UNIQUE INDEX
-- PURPOSE:
-- Ensures all values in the indexed column are unique
-- ---------------------------------------------------------

-- Syntax:
-- CREATE UNIQUE INDEX index_name ON table_name(column_name);

-- Example:
CREATE UNIQUE INDEX idx_students_email
ON students(email);


-- ---------------------------------------------------------
-- COMMAND: SHOW INDEX
-- PURPOSE:
-- Displays indexes created on a table
-- ---------------------------------------------------------

-- Syntax:
-- SHOW INDEX FROM table_name;

-- Example:
SHOW INDEX FROM students;


-- ---------------------------------------------------------
-- COMMAND: DROP INDEX
-- PURPOSE:
-- Deletes an existing index
-- ---------------------------------------------------------

-- Syntax:
-- DROP INDEX index_name ON table_name;

-- Example:
DROP INDEX idx_students_name ON students;


-- ---------------------------------------------------------
-- WHEN TO USE INDEXES
-- ---------------------------------------------------------
-- 1. Columns frequently used in WHERE clause
-- 2. Columns used in JOIN conditions
-- 3. Columns used in ORDER BY or GROUP BY


-- ---------------------------------------------------------
-- WHEN NOT TO USE INDEXES
-- ---------------------------------------------------------
-- 1. Small tables
-- 2. Columns with many duplicate values
-- 3. Tables with frequent INSERT, UPDATE, DELETE


-- ---------------------------------------------------------
-- INTERVIEW NOTES (VERY IMPORTANT)
-- ---------------------------------------------------------
-- 1. Indexes speed up SELECT queries
-- 2. Indexes slow down INSERT, UPDATE, DELETE
-- 3. PRIMARY KEY creates an index automatically
-- 4. UNIQUE constraint also creates an index
-- 5. Too many indexes reduce performance