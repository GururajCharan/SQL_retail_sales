-- SQL Retail Sales Analysis -

-- Create Table
DROP TABLE IF EXISTS retail_sales;
CREATE TABLE retail_sales
			(
				transactions_id INT PRIMARY KEY,
				sale_date DATE,
				sale_time TIME,
				customer_id INT,
				gender VARCHAR(15),
				age INT,
				category VARCHAR(15),
				quantity INT,
				price_per_unit FLOAT,
				cogs FLOAT,
				total_sale FLOAT
			);

select * from retail_sales
limit 10

select count(*) from retail_sales

select * from retail_sales
where 
transactions_id is null
or sale_date is null
or sale_time is null
or customer_id is null
or gender is null
or category is null
or quantity is null
or price_per_unit is null
or cogs is null
or total_sale is null

--DATA CLEANING
delete from retail_sales
where
transactions_id is null
or sale_date is null
or sale_time is null
or customer_id is null
or gender is null
or category is null
or quantity is null
or price_per_unit is null
or cogs is null
or total_sale is null

-- DATA Exploration

--How man sales we have ?
select count(*) as total_sale from retail_sales

--How man customers we have ?
select count(DISTINCT customer_id) as total_sale from retail_sales

--Distinct categories
select distinct category from retail_sales

--1.Write a SQL query to retrieve all columns for sales made on '2022-11-05'
select * from retail_sales where sale_date = '2022-11-05'

--2.Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022
select 
	*
from retail_sales
where 
	category= 'Clothing'
	and 
	TO_CHAR(sale_date,'YYYY-MM')='2022-11'
	and 
	quantity >=4

--3.Write a SQL query to calculate the total sales (total_sale) for each category.
select 
	category,
	sum(total_sale) as net_sale,
	count (*) as total_orders
from retail_sales
group by 1

--4.Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
select
	ROUND(avg(age),2) as avg_age
from retail_sales
	where category = 'Beauty'

--5.Write a SQL query to find all transactions where the total_sale is greater than 1000.
select 
	*
from retail_sales
	where total_sale >1000
	
--6.Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
select
	category,
	gender,
	count(*) as no_of_transactions
from retail_sales
group by category,gender
order by 1

--7.Write a SQL query to calculate the average sale for each month. Find out best selling month in each year.
select * from(
select 
	EXTRACT(YEAR from sale_date) as year,
	EXTRACT(MONTH from sale_date) as month,
	avg(total_sale) as avg_sale,
	rank() over(partition by extract(YEAR from sale_date) order by avg(total_sale) desc) as rank
from retail_sales
group by 1,2
) as t1
where rank=1

--8.Write a SQL query to find the top 5 customers based on the highest total sales.
select
	customer_id,
	sum(total_sale) as sum_total
from retail_sales
group by 1
order by sum_total desc
limit 5

--9.Write a SQL query to find the number of unique customers who purchased items from each category.
select 
	category,
	count(distinct customer_id) as number_cus
from retail_sales
group by 1

select * from retail_sales
--10.Write a SQL query to create each shift and number of orders (Example Morning <12, Afternoon Between 12 & 17, Evening >17)
with hourly_sales
AS 
(
select *,
	case
		when extract(HOUR from sale_time)< 12 then 'Morning'
		when extract(HOUR from sale_time)between 12 and 17 then 'Afternoon'
		else 'Evening'
	END as shift
from retail_sales
)
SELECT 
    shift,
    COUNT(*) as total_orders    
FROM hourly_sales
GROUP BY shift

--END





