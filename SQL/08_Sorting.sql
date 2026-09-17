-- SORTING
-- the ORDER BY clause is used to sort the result of a query based on one or more columns.
SELECT * FROM ayush.smartphones ;

-- top 5 samsung phones having higher screen_size
select model,screen_size from ayush.smartphones
where brand_name ='samsung'
order by screen_size desc 
limit 5;

-- sort the phones in desc order on the basis of no. of total cam
select model,num_rear_cameras+num_front_cameras as 'total_cam' from ayush.smartphones
order by total_cam desc
limit 10;

-- limit can take two parameters: LIMIT offset, count;
-- find phone with 2nd largest battery capacity
select model,battery_capacity from ayush.smartphones
order by battery_capacity desc
limit 1,1; 

-- find name and rating of worst rated apple phone
select model,rating from ayush.smartphones 
where brand_name='apple'
order by rating asc
limit 1;

-- Sorting on the basis of multiple col
select model,price from ayush.smartphones 
order by brand_name asc,price asc;