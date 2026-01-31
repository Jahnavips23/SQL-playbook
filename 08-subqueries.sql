-- ---------------------------------------------------------
-- WHAT IS A SUBQUERY?
-- ---------------------------------------------------------
-- A subquery is executed first and its result
-- is used by the outer (main) query.


-- ---------------------------------------------------------
-- SUBQUERY IN WHERE CLAUSE
-- PURPOSE:
-- Filters data using the result of another query
-- ---------------------------------------------------------

-- Example:
-- Get students whose age is greater than the average age

SELECT *
FROM students
WHERE student_age >
(
  SELECT AVG(student_age)
  FROM students
);


-- ---------------------------------------------------------
-- SUBQUERY WITH IN
-- PURPOSE:
-- Matches values returned by a subquery
-- ---------------------------------------------------------

-- Example:
-- Get students who are enrolled in any course

SELECT *
FROM students
WHERE id IN
(
  SELECT student_id
  FROM courses
);


-- ---------------------------------------------------------
-- SUBQUERY WITH NOT IN
-- PURPOSE:
-- Excludes values returned by a subquery
-- ---------------------------------------------------------

-- Example:
-- Get students who are NOT enrolled in any course

SELECT *
FROM students
WHERE id NOT IN
(
  SELECT student_id
  FROM courses
);


-- ---------------------------------------------------------
-- SUBQUERY IN SELECT CLAUSE
-- PURPOSE:
-- Uses subquery as a column value
-- ---------------------------------------------------------

-- Example:
SELECT name,
       (SELECT COUNT(*) FROM courses WHERE courses.student_id = students.id)
       AS total_courses
FROM students;


-- ---------------------------------------------------------
-- SUBQUERY IN FROM CLAUSE (DERIVED TABLE)
-- PURPOSE:
-- Uses subquery as a temporary table
-- ---------------------------------------------------------

-- Example:
SELECT student_age, COUNT(*) AS total_students
FROM
(
  SELECT student_age
  FROM students
) AS age_table
GROUP BY student_age;


-- ---------------------------------------------------------
-- EXISTS
-- PURPOSE:
-- Checks whether subquery returns any rows
-- ---------------------------------------------------------

-- Example:
SELECT *
FROM students s
WHERE EXISTS
(
  SELECT 1
  FROM courses c
  WHERE c.student_id = s.id
);


-- ---------------------------------------------------------
-- INTERVIEW NOTES (VERY IMPORTANT)
-- ---------------------------------------------------------
-- 1. Subqueries execute before the outer query
-- 2. Subqueries can be used in WHERE, SELECT, and FROM
-- 3. IN is used when subquery returns multiple values
-- 4. EXISTS checks for presence of rows
-- 5. Correlated subqueries depend on outer query
-- 6. Subqueries can reduce or replace joins in some cases