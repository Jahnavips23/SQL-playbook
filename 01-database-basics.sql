-- ---------------------------------------------------------------------
-- Command: SHOW DATABASES
-- Purpose: Displays all databases present in the MySQL Server
-- ---------------------------------------------------------------------

SHOW DATABASES;

-- ---------------------------------------------------------
-- COMMAND: CREATE DATABASE
-- PURPOSE: Creates a new database
-- IF NOT EXISTS prevents error if database already exists
-- ---------------------------------------------------------

-- Syntax:
-- CREATE DATABASE database_name;

-- Example:
CREATE DATABASE IF NOT EXISTS school;
CREATE DATABASE IF NOT EXISTS mobile;

SHOW DATABASES;

-- ---------------------------------------------------------
-- COMMAND: USE DATABASE
-- PURPOSE: Selects a database to work with
-- All tables created after this belong to this database
-- ---------------------------------------------------------

-- Syntax:
-- USE database_name;

-- Example:
USE school;

-- ---------------------------------------------------------
-- COMMAND: SHOW TABLES
-- PURPOSE:
-- Displays all tables inside the currently selected database
-- ---------------------------------------------------------

SHOW TABLES;

-- ---------------------------------------------------------
-- COMMAND: DROP DATABASE
-- PURPOSE: Permanently deletes a database and all its tables
-- Use carefully
-- ---------------------------------------------------------

-- Syntax:
-- DROP DATABASE database_name;

-- Safe Example (commented to avoid accidental deletion):
-- DROP DATABASE IF EXISTS school_backup;

-- ---------------------------------------------------------
-- INTERVIEW NOTES (IMPORTANT)
-- ---------------------------------------------------------
-- 1. CREATE DATABASE creates a schema in MySQL
-- 2. USE sets the active database
-- 3. SHOW DATABASES lists all databases
-- 4. DROP DATABASE deletes everything permanently
-- 5. IF NOT EXISTS avoids runtime errors during re-execution