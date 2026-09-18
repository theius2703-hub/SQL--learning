-- HAVING 
-- HAVING clause is used to filter groups after data has been grouped using GROUP BY.
-- It is similar to the where cluse that we use with select , and having is used with group by 

select * from ayush.smartphones;

-- Find the avg price of phone brands that have atleast 20 phone models
select brand_name,
round(avg(price),2) as avg_price,
count(*) as count
from ayush.smartphones
group by brand_name
having count>20
order by avg_price desc;

-- Find the avg price of all the phone brands with avg rating>70 and num of phones >10 among all the 5g enabled phones
select brand_name,
round(avg(price),2),
round(avg(rating)) as avg_rating,
count(*) as count
from ayush.smartphones 
where has_5g='True'
group by brand_name
having avg(rating)>70 and count(*) >10;

-- Find the top 3 brands with the highest avg ram that have a refresh rate of at least 90 hz and fast charging available and dont consider those brands which have less than 10 phones
select brand_name ,
round(avg(ram_capacity),2) as avg_ram
from ayush.smartphones
where fast_charging_available = 1
group by brand_name
having count(*)>10 and avg(refresh_rate)>90
order by avg_ram desc
limit 3 ; 


