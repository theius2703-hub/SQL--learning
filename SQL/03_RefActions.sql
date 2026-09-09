-- REFERENTIAL ACTIONS----------------------------------------
-- Referential actions are rules associated with a FOREIGN KEY that define what happens to records in a child table when the related record in the parent table is updated or deleted.


-- 1.RESTRICT(DEFAULT)
-- It prevents the parent record from being deleted or updated if related records exist in the child table.
CREATE DATABASE college;
USE college;
CREATE TABLE departments(
dprt_id INT PRIMARY KEY,
dprt_name VARCHAR(255));
INSERT INTO departments VALUES
(1,'CSE'),
(2,'AI'),
(3,'DS'),
(4, 'Civil');
SELECT * FROM departments;

CREATE TABLE students(
st_id INT PRIMARY KEY,
st_name VARCHAR(255),
dprt_id INT,

CONSTRAINT st_dprt
FOREIGN KEY (dprt_id)
REFERENCES departments(dprt_id)
ON DELETE RESTRICT);
INSERT INTO students VALUES
(101, 'Rahul', 1),
(102, 'Aman', 1),
(103, 'Priya', 2),
(104, 'Neha', 3);
SELECT * FROM students;

-- the below deletion will be failed 
DELETE FROM departments
WHERE dprt_id = 1;

-- this will work
DELETE FROM departments
WHERE dprt_id = 4;

-- 2.CASCADE
-- CASCADE is a referential action used with a FOREIGN KEY. It automatically applies the change made to a parent record to the related child records.
CREATE TABLE departments2 (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);
INSERT INTO departments2 (dept_id, dept_name)
VALUES
(1, 'CSE'),
(2, 'ECE'),
(3, 'ME');
SELECT * FROM departments2;
CREATE TABLE students2(
std_id INT PRIMARY KEY,
std_name VARCHAR(255),
dept_id INT,
CONSTRAINT fk_st2_dept2
FOREIGN KEY (dept_id)
REFERENCES departments2(dept_id)
ON DELETE CASCADE
);
INSERT INTO students2
VALUES
(101, 'Rahul', 1),
(102, 'Aman', 1),
(103, 'Priya', 2),
(104, 'Neha', 3);
SELECT * FROM students2;
DELETE FROM departments2
WHERE dept_id = 1;
SELECT * FROM departments2;

-- we can also use ON UPDATE CASCADE
CREATE TABLE students3(
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    dept_id INT,

    FOREIGN KEY (dept_id)
    REFERENCES departments2(dept_id)
    ON UPDATE CASCADE
);
INSERT INTO students3
VALUES
(101, 'Rahul', 1),
(102, 'Aman', 1),
(103, 'Priya', 2),
(104, 'Neha', 3);
SELECT * FROM students3;
UPDATE departments2
SET dept_id = 10
WHERE dept_id = 1;

-- 3.SET NULL
-- SET NULL is a referential action used with a FOREIGN KEY. When a referenced record in the parent table is deleted or updated, MySQL automatically changes the corresponding foreign key value in the child table to NULL.

CREATE TABLE students4(
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    dept_id INT NULL,

    FOREIGN KEY (dept_id)
    REFERENCES departments2(dept_id)
    ON DELETE SET NULL
);
INSERT INTO students4 (student_id, student_name, dept_id)
VALUES
(101, 'Rahul', 1),
(102, 'Aman', 1),
(103, 'Priya', 2),
(104, 'Neha', 3);
SELECT * FROM students4;
DELETE FROM departments2
WHERE dept_id = 1;


-- 4.NO ACTION
-- NO ACTION is a referential action used with a FOREIGN KEY. In MySQL, NO ACTION has essentially the same behavior as RESTRICT.
-- It prevents a parent record from being deleted or updated if that record is still referenced by a child table.
