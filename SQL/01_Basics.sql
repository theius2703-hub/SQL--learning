-- ==============================
-- DATABASE CREATION
-- ==============================

CREATE DATABASE college;

USE college;


-- ==============================
-- TABLE CREATION
-- ==============================

CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    age INT
);


-- ==============================
-- RETRIEVING DATA
-- ==============================

SELECT * FROM students;