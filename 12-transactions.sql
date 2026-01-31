-- =========================================================
-- FILE: 12-transactions.sql
-- TOPIC: TRANSACTIONS
-- DESCRIPTION:
-- This file covers database transactions in MySQL.
-- Transactions ensure data consistency and reliability.
-- Frequently asked in interviews (theory + basic syntax).
-- =========================================================


-- ---------------------------------------------------------
-- WHAT IS A TRANSACTION?
-- ---------------------------------------------------------
-- A transaction is a sequence of operations performed
-- as a single logical unit of work.
-- Either all operations succeed or none are applied.


-- ---------------------------------------------------------
-- COMMAND: START TRANSACTION
-- PURPOSE:
-- Begins a new transaction
-- ---------------------------------------------------------

START TRANSACTION;


-- ---------------------------------------------------------
-- COMMAND: COMMIT
-- PURPOSE:
-- Permanently saves all changes made in a transaction
-- ---------------------------------------------------------

-- Example:
INSERT INTO students (id, name, student_age, email)
VALUES (10, 'Demo', 25, 'demo@gmail.com');

COMMIT;


-- ---------------------------------------------------------
-- COMMAND: ROLLBACK
-- PURPOSE:
-- Reverts all changes made since the last COMMIT
-- ---------------------------------------------------------

-- Example:
START TRANSACTION;

INSERT INTO students (id, name, student_age, email)
VALUES (11, 'Temp', 26, 'temp@gmail.com');

ROLLBACK;


-- ---------------------------------------------------------
-- ACID PROPERTIES (VERY IMPORTANT)
-- ---------------------------------------------------------
-- A - Atomicity:
--     All operations succeed or none do
-- C - Consistency:
--     Database moves from one valid state to another
-- I - Isolation:
--     Transactions do not interfere with each other
-- D - Durability:
--     Once committed, data is permanently saved


-- ---------------------------------------------------------
-- INTERVIEW NOTES (IMPORTANT)
-- ---------------------------------------------------------
-- 1. Transactions ensure data integrity
-- 2. COMMIT saves changes permanently
-- 3. ROLLBACK undoes changes
-- 4. Transactions work only with transactional storage engines (InnoDB)
-- 5. TRUNCATE cannot be rolled back
