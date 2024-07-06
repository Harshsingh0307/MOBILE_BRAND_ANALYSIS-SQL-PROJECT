Create schema Mobilebrands;

-- Q1 check mobile features and price list ? 

SELECT 
    phone_name, price
FROM
    mobilebrands.`mobile analysis`;


-- Q2 find out the price of 5 most expensive phones ? 

Select * from mobilebrands.`mobile analysis` 
order by price 
desc limit 5;

-- Q3 Find out the price of 5 most cheapest phones ? 
Select * from mobilebrands.`mobile analysis` 
order by price 
Asc limit 5;

-- Q4 List of top 5 Samsung phones with price and all features ? 

Select * from mobilebrands.`mobile analysis`  where brands = 'Samsung'
order by price 
desc limit 5;

-- Q5 Must have android phone list 	then top 5 High price  android phones ? 
Select * from mobilebrands.`mobile analysis`  where Operating_System_Type = 'Android'
order by price 
desc limit 5;

-- Q6 Must have android phone list 	then top 5 	lower price android phones ? 
Select * from mobilebrands.`mobile analysis`  where Operating_System_Type = 'Android'
order by price 
Asc limit 5;

-- Q7 Must have IOS phones list then top 5 high price IOS phones ? 
Select * from mobilebrands.`mobile analysis`  where Operating_System_Type = 'IOS'
order by price 
desc limit 5;

-- Q8 Must have IOS phone list 	then top 5 	lower price IOS phones ? 
Select * from mobilebrands.`mobile analysis`  where Operating_System_Type = 'IOS'
order by price 
Asc limit 5;

-- Q9 Write a query which phone support 5g and also 5 phone with 5g Support ?
Select * from mobilebrands.`mobile analysis` where 5G_Availability = 'yes'
order by Price
limit 5;

-- Q10 Total Price of all mobile is to be found with brand name ? 
Select brands, Sum(price) as Total_amountof_all_brand from mobilebrands.`mobile analysis` group by brands;
