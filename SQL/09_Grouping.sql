-- GROUPING ( GROUP BY)
-- GROUP BY is used to group rows having the same value in one or more columns. It is mainly used with aggregate functions like COUNT(), SUM(), AVG(), MIN(), and MAX()
select * from ayush.smartphones;
select count(model) as 'total_phones' from ayush.smartphones;
-- Group smartphones by their brand_namd and get the count
select brand_name,count(*) as 'num_phones'
from ayush.smartphones
group by brand_name;

-- Group smartphones by their brand_namd and get the count,avg price
select brand_name,count(*) as 'num_phones',round(avg(price),2) as 'avg_price'
from ayush.smartphones
group by brand_name
order by avg_price desc;

-- Group smartphones by their brand_namd and get the count,avg price,max rating
select brand_name, count(*) as 'no_of _phones',round(avg(price),2) as 'avg_price' ,max(rating) as 'max_rating'
from ayush.smartphones
group by brand_name 
order by max_rating desc;

-- Group smartphones by whether they have NFC and get the avg price and rating 
select has_nfc , avg(price) as 'avg_price' , avg(rating) as 'avg_rating'
from ayush.smartphones 
group by has_nfc;

-- Group smartphones by extended memory available and get the avg price
select extended_memory_available ,round(avg(price),2) as 'avg_price'
from ayush.smartphones
group by extended_memory_available;

-- GROUP BY ON THE BASIS OF MULTIPLE COLS
-- Group by smartphones by the brand and processor brand and get the count of models and the avg primary cam resolution
select brand_name ,
processor_brand,count(*) as 'no_models',
round(avg(primary_camera_rear),2) as 'avg_cam_resolution'
from ayush.smartphones
group by brand_name,processor_brand
order by brand_name asc;

-- top 5 most costly phone brands
select brand_name,
round(avg(price),2) as'avg_price'
from ayush.smartphones
group by brand_name
order by avg_price desc
limit 5;

-- which brand makes the smallest screen phone brands
select brand_name,
round( avg (screen_size),2) as 'avg_screensize'
from ayush.smartphones
group by brand_name 
order by avg_screensize asc
limit 1;

-- avg price of 5g phones vs avg price of non 5g phones
select has_5g,round(avg(price),2) as 'avg_price'
from ayush.smartphones
group by has_5g;

-- Group smartphones by the brand name and find the brand with highest non of models that have both nfc and ir blasters
select brand_name,
count(*) as 'count'
from ayush.smartphones 
where has_nfc='True' and has_ir_blaster ='True'
group by brand_name
order by count desc;

-- find all samsung 5g enabled phones and find out avg price for NFC and NON-NFC phones
select has_nfc ,
round(avg(price),2) as avg_price
from ayush.smartphones 
where brand_name ='samsung' and has_5g='True'
group by has_nfc;

-- Find the name and the price of most costiliest phone
select model,price 
from ayush.smartphones
order by price desc
limit 1;

