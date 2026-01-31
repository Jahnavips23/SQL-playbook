-- =========================================================
-- FILE: 10-views.sql
-- TOPIC: VIEWS
-- DESCRIPTION:
-- This file covers views in MySQL.
-- A view is a virtual table created using a SELECT query.
-- Commonly asked as a theory + syntax question in interviews.
-- =========================================================


-- ---------------------------------------------------------
-- WHAT IS A VIEW?
-- ---------------------------------------------------------
-- A view is a virtual table that does not store data itself.
-- It displays data from one or more tables using a SELECT query.


-- ---------------------------------------------------------
-- COMMAND: CREATE VIEW
-- PURPOSE:
-- Creates a virtual table based on a SELECT query
-- ---------------------------------------------------------

-- Syntax:
-- CREATE VIEW view_name AS
-- SELECT columns FROM table_name;

-- Example:
CREATE VIEW student_basic_info AS
SELECT id, name, student_age
FROM students;


-- ---------------------------------------------------------
-- COMMAND: SELECT FROM VIEW
-- PURPOSE:
-- Retrieves data from a view
-- ---------------------------------------------------------

-- Example:
SELECT * FROM student_basic_info;


-- ---------------------------------------------------------
-- COMMAND: UPDATE VIEW DATA
-- PURPOSE:
-- Updates data in the underlying table through the view
-- (Allowed only if the view is simple)
-- ---------------------------------------------------------

-- Example:
UPDATE student_basic_info
SET student_age = 22
WHERE id = 1;


-- ---------------------------------------------------------
-- COMMAND: DROP VIEW
-- PURPOSE:
-- Deletes a view
-- ---------------------------------------------------------

-- Syntax:
-- DROP VIEW view_name;

-- Safe Example:
DROP VIEW IF EXISTS student_basic_info;


-- ---------------------------------------------------------
-- WHY USE VIEWS?
-- ---------------------------------------------------------
-- 1. Simplifies complex queries
-- 2. Improves security (hide columns)
-- 3. Provides abstraction layer
-- 4. Reusable SQL logic


-- ---------------------------------------------------------
-- INTERVIEW NOTES (VERY IMPORTANT)
-- ---------------------------------------------------------
-- 1. Views do not store data physically
-- 2. Data comes from underlying tables
-- 3. A view can be created from one or more tables
-- 4. Indexes cannot be created directly on views
-- 5. Views improve readability and security
