-- ---------------------------------------------------------
-- SAMPLE TABLES (for understanding joins)
-- ---------------------------------------------------------
-- students (id, name)
-- courses (course_id, student_id, course_name)

-- ---------------------------------------------------------
-- COMMAND: INNER JOIN
-- PURPOSE: Returns only matching rows from both tables
-- ---------------------------------------------------------

-- Syntax:
-- SELECT columns
-- FROM table1
-- INNER JOIN table2 ON condition;

-- Example:
SELECT s.id, s.name, c.course_name
FROM students s
INNER JOIN courses c
ON s.id = c.student_id;

-- ---------------------------------------------------------
-- COMMAND: LEFT JOIN (LEFT OUTER JOIN)
-- PURPOSE: Returns all rows from left table and matching rows
-- from right table
-- ---------------------------------------------------------

-- Syntax:
-- SELECT columns
-- FROM table1
-- LEFT JOIN table2 ON condition;

-- Example:
SELECT s.id, s.name, c.course_name
FROM students s
LEFT JOIN courses c
ON s.id = c.student_id;

-- ---------------------------------------------------------
-- COMMAND: RIGHT JOIN (RIGHT OUTER JOIN)
-- PURPOSE: Returns all rows from right table and matching rows
-- from left table
-- ---------------------------------------------------------

-- Syntax:
-- SELECT columns
-- FROM table1
-- RIGHT JOIN table2 ON condition;

-- Example:
SELECT s.id, s.name, c.course_name
FROM students s
RIGHT JOIN courses c
ON s.id = c.student_id;

-- ---------------------------------------------------------
-- COMMAND: FULL JOIN (CONCEPT)
-- PURPOSE: Returns all rows from both tables
-- MySQL does NOT support FULL JOIN directly
-- ---------------------------------------------------------

-- Conceptual Syntax:
-- SELECT * FROM table1 FULL JOIN table2 ON condition;

-- MySQL workaround using UNION:
SELECT s.id, s.name, c.course_name
FROM students s
LEFT JOIN courses c ON s.id = c.student_id

UNION

SELECT s.id, s.name, c.course_name
FROM students s
RIGHT JOIN courses c ON s.id = c.student_id;

-- ---------------------------------------------------------
-- COMMAND: SELF JOIN
-- PURPOSE: A table joined with itself
-- ---------------------------------------------------------

-- Example:
-- employees (emp_id, emp_name, manager_id)

SELECT e1.emp_name AS employee, e2.emp_name AS manager
FROM employees e1
LEFT JOIN employees e2
ON e1.manager_id = e2.emp_id;

-- ---------------------------------------------------------
-- INTERVIEW NOTES (VERY IMPORTANT)
-- ---------------------------------------------------------
-- 1. INNER JOIN returns matching records only
-- 2. LEFT JOIN returns all records from left table
-- 3. RIGHT JOIN returns all records from right table
-- 4. FULL JOIN is not supported in MySQL directly
-- 5. SELF JOIN joins a table with itself
-- 6. JOIN condition is written using ON keyword
-- 7. Aliases improve query readability
