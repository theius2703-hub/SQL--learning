-- DQL (select)
-- Data Query Language is used to fetch the data from a database , it only reads data does not changes it 

-- Select all
SELECT * FROM  ayush.smartphones WHERE 1;

-- Filter columns
SELECT model,price,rating FROM ayush.smartphones;
SELECT model,battery_capacity,os FROM ayush.smartphones;

-- Alias(renaming columns)
-- it is used to temprory provide a name to the column which improves the readiblity of the select query
SELECT model,battery_capacity,os AS 'Operating sys' FROM ayush.smartphones;
SELECT model,battery_capacity AS 'maH',os AS 'Operating sys' FROM ayush.smartphones;

-- Creating expressions using columns
SELECT model,
round(SQRT ( resolution_width*resolution_width + resolution_height*resolution_height)/screen_size,3) AS 'PPI'
FROM ayush.smartphones;

-- CONSTANT Cols
-- constant cols are created in the result where the same cnst values is to be displayed
SELECT model, 'smartphones' AS 'type' FROM ayush.smartphones;

-- DISINCT (unique)
-- it is used to retrive the unique values after removing the duplicate values
SELECT DISTINCT (brand_name) AS 'ALL BRANDS' FROM ayush.smartphones;
SELECT DISTINCT processor_brand AS 'All Processors' FROM ayush.smartphones;

-- DISTINCT COMBINATIONS
SELECT DISTINCT brand_name,processor_brand FROM ayush.smartphones;

-- filtring rows (using WHERE CLAUSE)
SELECT * FROM ayush.smartphones
WHERE brand_name='samsung';
SELECT model,price FROM ayush.smartphones 
WHERE price>50000;

-- BETWEEN
-- between is used to filter the values in a range and it is genrally used with where
SELECT model,price FROM ayush.smartphones
WHERE price BETWEEN 10000 AND 20000;
SELECT model,price,rating FROM ayush.smartphones 
WHERE price<25000 AND rating >80 ;






