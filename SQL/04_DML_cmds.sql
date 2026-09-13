-- DML COMMANDS

-- 1.INSERT 
CREATE DATABASE office;
USE office;
CREATE TABLE users(
	user_id INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255));

INSERT INTO users VALUES 
(1,'Ayush','ayush@123'),
(2,'Virat','vrt@123'),
(3,'Hussaimn','hsbn@123'),
(4,'Arman','nvdeep@123'),
(5,'Anshu','ansu@123');

-- INSERTING ONLY SPECIFIC VALUES INTHE COLUMN
INSERT INTO users (user_id,name) VALUES 
(6,'Shaktiman');

-- 2.UPDATE
-- it is used to update the values in the table 
UPDATE ayush.smartphones
SET processor_brand = 'dimensity'
WHERE processor_brand='mediatek';
SELECT DISTINCT processor_brand FROM ayush.smartphones;

-- UPDATING MULTIPLE VALUES AT ONCE
SELECT * FROM users;
UPDATE office.users 
SET name='Sparsh',email='sparh@13'
WHERE user_id =3;

-- 3. DELETE
DELETE FROM ayush.smartphones 
WHERE price>140000;
SELECT model,price FROM ayush.smartphones 
WHERE price>140000;




