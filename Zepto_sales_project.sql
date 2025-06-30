drop table if exists zepto;

create table zepto(
sku_id serial primary key,
category varchar(120),
name varchar(150)not null,
mrp Numeric (8,2),
discountpercent numeric(8,2),
availabequantity integer,
discountedsellingprice Numeric (8,2),
weightingrams integer,
outofstock Boolean,
quantity integer
);

--data exportation

--count of rows
select count(*) from zepto;

--sample data
select * from zepto
limit 10;


--null values
select * from  zepto
where name is null
or
category is null
or
mrp is null
or
discountpercent is null
or
availabequantity is null
or
discountedsellingprice is null
or
weightingrams is null
or
outofstock is null
or
quantity is null;

--different roducct categgories
select distinct category
from zepto
order by category;

--products in stock vs out of stock
select outofstock , count(sku_id) 
from zepto
group by outofstock;

--product name present multiple times
select name , count(sku_id) as "number of SKUs"
from zepto
group by name
having count(sku_id)>1
order by count (sku_id) desc;

--data cleaning 

--product with price = 0
select * from zepto
where mrp = 0 or discountedsellingprice = 0 ;

delete from zepto
where mrp = 0;

--convert pesa into rupees
update zepto
set mrp = mrp/100.0,
discountedsellingprice = discountedsellingprice/100.0;

select mrp , discountedsellingprice  from zepto;

-- Q1. Find the top 10 best-value products based on the discount percentage.
SELECT DISTINCT name, mrp, discountPercent
FROM zepto
ORDER BY discountPercent DESC
LIMIT 10;

--Q2.What are the Products with High MRP but Out of Stock

SELECT DISTINCT name,mrp
FROM zepto
WHERE outOfStock = TRUE and mrp > 300
ORDER BY mrp DESC;

--Q3.Calculate Estimated Revenue for each category
SELECT category,
SUM(discountedSellingPrice * availabeQuantity) AS total_revenue
FROM zepto
GROUP BY category
ORDER BY total_revenue;

-- Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%.
SELECT DISTINCT name, mrp, discountPercent
FROM zepto
WHERE mrp > 500 AND discountPercent < 10
ORDER BY mrp DESC, discountPercent DESC;

-- Q5. Identify the top 5 categories offering the highest average discount percentage.
SELECT category,
ROUND(AVG(discountPercent),2) AS avg_discount
FROM zepto
GROUP BY category
ORDER BY avg_discount DESC
LIMIT 5;

-- Q6. Find the price per gram for products above 100g and sort by best value.
SELECT DISTINCT name, weightingrams, discountedSellingPrice,
ROUND(discountedSellingPrice/weightingrams,2) AS price_per_gms
FROM zepto
WHERE weightingrams >= 100
ORDER BY price_per_gms;

--Q7.Group the products into categories like Low, Medium, Bulk.
SELECT DISTINCT name, weightingrams,
CASE WHEN weightingrams < 1000 THEN 'Low'
	WHEN weightingrams < 5000 THEN 'Medium'
	ELSE 'Bulk'
	END AS weight_category
FROM zepto;

--Q8.What is the Total Inventory Weight Per Category 
SELECT category,
SUM(weightingrams * availabeQuantity) AS total_weight
FROM zepto
GROUP BY category
ORDER BY total_weight;


