-- ---------------------------------------------------------
-- COMMAND: PRIMARY KEY
-- PURPOSE: Uniquely identifies each record in a table
-- Does not allow NULL values
-- ---------------------------------------------------------

-- Example:
CREATE TABLE IF NOT EXISTS departments (
  dept_id INT PRIMARY KEY,
  dept_name VARCHAR(50)
);

-- ---------------------------------------------------------
-- COMMAND: UNIQUE
-- PURPOSE: Ensures all values in a column are unique
-- ---------------------------------------------------------

-- Example:
CREATE TABLE IF NOT EXISTS employees (
  emp_id INT PRIMARY KEY,
  emp_email VARCHAR(100) UNIQUE,
  emp_name VARCHAR(50)
);

-- ---------------------------------------------------------
-- COMMAND: NOT NULL
-- PURPOSE: Ensures a column cannot have NULL values
-- ---------------------------------------------------------

-- Example:
CREATE TABLE IF NOT EXISTS customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(50) NOT NULL
);

-- ---------------------------------------------------------
-- COMMAND: DEFAULT
-- PURPOSE: Assigns a default value if no value is provided
-- ---------------------------------------------------------

-- Example:
CREATE TABLE IF NOT EXISTS orders (
  order_id INT PRIMARY KEY,
  order_status VARCHAR(20) DEFAULT 'PENDING'
);

-- ---------------------------------------------------------
-- COMMAND: CHECK
-- PURPOSE: Ensures values satisfy a condition
-- ---------------------------------------------------------

-- Example:
CREATE TABLE IF NOT EXISTS products (
  product_id INT PRIMARY KEY,
  price DECIMAL(10,2),
  CHECK (price > 0)
);

-- ---------------------------------------------------------
-- COMMAND: FOREIGN KEY
-- PURPOSE: Creates a relationship between two tables
-- ---------------------------------------------------------

-- Example:
CREATE TABLE IF NOT EXISTS enrollments (
  enrollment_id INT PRIMARY KEY,
  student_id INT,
  CONSTRAINT fk_student
  FOREIGN KEY (student_id)
  REFERENCES students(id)
);

-- ---------------------------------------------------------
-- INTERVIEW NOTES (IMPORTANT)
-- ---------------------------------------------------------
-- 1. PRIMARY KEY uniquely identifies a row
-- 2. UNIQUE allows NULL but ensures uniqueness
-- 3. NOT NULL disallows NULL values
-- 4. DEFAULT assigns default value
-- 5. CHECK enforces condition on values
-- 6. FOREIGN KEY maintains referential integrity

-- Older MySQL versions ignored CHECK
-- MySQL 8+ supports CHECK constraints