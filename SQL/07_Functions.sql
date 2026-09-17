-- SQL FUNCTIONS
-- SQL functions are mainly classified into 2 major types 1.Scalar funcions and 2. Aggrigate functions

 /*                SQL FUNCTIONS
                       │
          ┌────────────┴────────────┐
          │                         │
   Single-Row / Scalar       Multi-Row / Aggregate
          │                         │
    ┌─────┼─────┬─────┐       ┌────┼────┬────┬────┐
    │     │     │     │       │    │    │    │    │
 String Numeric Date  NULL   COUNT SUM  AVG MAX MIN  */
-- 2. Aggrigate functions :These operate on multiple rows and return one result for a group of rows.
SELECT * FROM ayush.smartphones;
SELECT MAX(price) FROM ayush.smartphones;
SELECT MIN(price) FROM ayush.smartphones;
SELECT MAX(ram_capacity) FROM ayush.smartphones; 
-- price of the costliest samsung phone
SELECT MAX(price) FROM ayush.smartphones WHERE brand_name = 'samsung';
SELECT * FROM ayush.smartphones WHERE brand_name ='samsung' AND price=110999;
-- finding avg rating of apple phones
SELECT AVG(rating) FROM ayush.smartphones WHERE brand_name='apple';
-- Total price of the phones
SELECT SUM(price) FROM ayush.smartphones;
-- no of phones of samsung
SELECT COUNT(*) FROM ayush.smartphones WHERE brand_name='samsung';
-- total no of brands
SELECT COUNT(DISTINCT(brand_name)) FROM ayush.smartphones;


-- 2. Scalar functions : These operate on one row at a time and return one result for each row
-- using abs(absolute function)
SELECT abs( price-100000 ) as 'temp' from ayush.smartphones;
SELECT  ROUND(screen_size,2) FROM ayush.smartphones;
SELECT CEIL(screen_size) FROM ayush.smartphones;
SELECT FLOOR(screen_size) FROM ayush.smartphones;