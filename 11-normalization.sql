-- =========================================================
-- FILE: 11-normalization.sql
-- TOPIC: NORMALIZATION
-- DESCRIPTION:
-- This file explains database normalization concepts.
-- Normalization is used to reduce redundancy and
-- improve data integrity.
-- Very commonly asked in interviews (theory-heavy).
-- =========================================================


-- ---------------------------------------------------------
-- WHAT IS NORMALIZATION?
-- ---------------------------------------------------------
-- Normalization is the process of organizing data
-- in a database to:
-- 1. Reduce data redundancy
-- 2. Avoid data anomalies
-- 3. Improve data integrity


-- ---------------------------------------------------------
-- TYPES OF DATA ANOMALIES
-- ---------------------------------------------------------
-- 1. Insertion Anomaly
-- 2. Update Anomaly
-- 3. Deletion Anomaly


-- ---------------------------------------------------------
-- FIRST NORMAL FORM (1NF)
-- ---------------------------------------------------------
-- RULES:
-- 1. Table should have a primary key
-- 2. Each column should contain atomic (indivisible) values
-- 3. No repeating groups or multivalued attributes

-- Example (NOT in 1NF):
-- student_id | name  | subjects
-- 1          | Rahul | Math, Science

-- Converted to 1NF:
-- student_id | name  | subject
-- 1          | Rahul | Math
-- 1          | Rahul | Science


-- ---------------------------------------------------------
-- SECOND NORMAL FORM (2NF)
-- ---------------------------------------------------------
-- RULES:
-- 1. Table must be in 1NF
-- 2. No partial dependency
--    (Non-key attribute should depend on full primary key)

-- Example:
-- enrollment(student_id, course_id, student_name)

-- Issue:
-- student_name depends only on student_id

-- Solution:
-- students(student_id, student_name)
-- enrollments(student_id, course_id)


-- ---------------------------------------------------------
-- THIRD NORMAL FORM (3NF)
-- ---------------------------------------------------------
-- RULES:
-- 1. Table must be in 2NF
-- 2. No transitive dependency
--    (Non-key attribute should not depend on another non-key attribute)

-- Example:
-- employee(emp_id, emp_name, dept_id, dept_name)

-- Issue:
-- dept_name depends on dept_id, not emp_id

-- Solution:
-- employees(emp_id, emp_name, dept_id)
-- departments(dept_id, dept_name)


-- ---------------------------------------------------------
-- BOYCE-CODD NORMAL FORM (BCNF) (ADVANCED)
-- ---------------------------------------------------------
-- A stronger version of 3NF
-- Every determinant must be a candidate key
-- Usually asked only theoretically


-- ---------------------------------------------------------
-- INTERVIEW NOTES (VERY IMPORTANT)
-- ---------------------------------------------------------
-- 1. Normalization reduces redundancy
-- 2. 1NF = atomic values
-- 3. 2NF = no partial dependency
-- 4. 3NF = no transitive dependency
-- 5. Normalization improves consistency
-- 6. Over-normalization can affect performance
