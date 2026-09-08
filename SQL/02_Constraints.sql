-- CONSTRAINTS --

-- Constraints are rules applied to columns in a table to control the type of data that can be stored.

-- 1.NOT NULL (it does not allow to enter the null values in the column)------------------------------------
USE college;
CREATE TABLE students(
id INT NOT NULL,
name VARCHAR(55),
course VARCHAR(55));
INSERT INTO students VALUES (1,'Ayush','Btech');
SELECT * FROM students;

-- 2.UNIQUE(it does not allows to enter the duplicate values inthe column )----------------------------------

CREATE TABLE students2(
id INT UNIQUE,
name VARCHAR(55),
course VARCHAR(55));
INSERT INTO students2 VALUES (1,'Ayush','DS'),
(2,'Kunal','BBA');
SELECT * FROM students2;

-- 3.PRIMARY KEY (it is the combination of not null and unique )------------------------------------------

CREATE TABLE students3(
id INT PRIMARY KEY ,
name VARCHAR(55),
course VARCHAR (55)
);
INSERT INTO students3 VALUES (1,'Ayush','Ds');
SELECT * FROM students3;

-- 4.AUTO_INCREMENT (is a constraint that automatically generates a unique sequential number for a column whenever a new row is inserted.It is mostly used for primary key )

CREATE TABLE students4 (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT
);
INSERT INTO students4 (name, age)
VALUES
('Ayush', 22),
('Rahul', 21),
('Aman', 22),
('Rohit', 20);
SELECT * FROM students4;

-- ANOTHER WAY OF MAKING CONSTRAINTS--------------------------

CREATE TABLE students5 (
    student_id INT,
    email VARCHAR(100),

    CONSTRAINT uq_students_email
    UNIQUE (email)
);

-- 5.CHECK CONSTRAINTS----------------------------------------
-- CHECK constraint is used to restrict the values that can be inserted into a column based on a specified condition.

CREATE TABLE students6 (
    id INT,
    name VARCHAR(50),
    age INT CHECK (age >= 18)
);
INSERT INTO students6
VALUES (1, 'Ayush', 22);
SELECT * FROM students6;


-- 6.DEFAULT --------------------------------------------------------------------
-- DEFAULT constraint is used to automatically assign a predefined value to a column when no value is provided during INSERT.

CREATE TABLE students7 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50) DEFAULT 'Dehradun'
);
INSERT INTO students7 (id, name)
VALUES (1, 'Ayush');
SELECT * FROM students7;


-- 7.FOREIGN KEY----------------------------------------------
-- A FOREIGN KEY is a constraint used to create a relationship between two tables

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);
INSERT INTO departments
VALUES
(1, 'Data Science'),
(2, 'Computer Science'),
(3, 'Artificial Intelligence');
CREATE TABLE students8 (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,

    CONSTRAINT fk_student_department
    FOREIGN KEY (dept_id)
    REFERENCES departments(dept_id)
);
INSERT INTO students8
VALUES
(101, 'Ayush', 1),
(102, 'Rahul', 2);
SELECT * FROM departments;
SELECT * FROM students8;