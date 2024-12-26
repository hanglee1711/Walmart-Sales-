-- Exploratory Data Analysis (EDA)
-- 1. Total of volumes
-- SELECT COUNT(*) AS total_transaction FROM hanglee.sales;

-- 2. How many distinct cities in the dataset?
-- SELECT DISTINCT City FROM sales;

-- 3. In which city is each brand situated?
-- SELECT DISTINCT Branch, City FROM sales;

-- Product Analysis
-- 1. How many distinct product lines are there ?
-- SELECT COUNT(DISTINCT `Product line`) FROM sales;

-- 2. What is the most common payment method?
/* SELECT Payment ,COUNT(payment) AS common_payment_method FROM sales
GROUP BY Payment
ORDER BY common_payment_method DESC
LIMIT 1; */

-- 3. What is the most selling product line?
/* SELECT `Product line`, COUNT(`Product line`) AS most_selling_product_line 
FROM sales
GROUP BY `Product line`
ORDER BY most_selling_product_line DESC
LIMIT 1; */

-- 4. What is the total revenue by month?
/* SELECT month_name, SUM(Total) AS total_revenue FROM sales
GROUP BY month_name
ORDER BY total_revenue DESC ; */

-- 5. Which month has the highest COGS?
/* SELECT month_name, SUM(cogs) AS total_cogs FROM sales
GROUP BY month_name
ORDER BY total_cogs DESC
LIMIT 1; */

-- 6. Add a column named product_category, indicating 'Good' or 'Bad', based on total revenue
-- ALTER TABLE sales ADD COLUMN product_category VARCHAR (10);
-- SET @avg_total = (SELECT AVG(Total) FROM sales);
/* UPDATE sales
SET product_category = 
    CASE
         WHEN Total >= @avg_total THEN 'Good'
         ELSE 'Bad'
    END; */

-- 7. Which brand sold more products than average product sold?
/* SELECT Branch, SUM(Quantity) AS total_quantity FROM Sales
GROUP BY Branch
HAVING total_quantity >= AVG(Quantity)
ORDER BY total_quantity DESC
LIMIT 1; */

-- 8. What is the most common product line in each genger?
/*  s.Gender, s.`Product line`, COUNT(*) AS total_product FROM sales s
GROUP BY s.Gender, s.`Product line`
HAVING COUNT(*) = (
     SELECT MAX(total_product) 
     FROM (
         SELECT Gender, `Product line`, COUNT(*) AS total_product FROM Sales
         GROUP BY Gender, `Product line`
         ) AS sub
	WHERE sub.Gender = s.Gender
)
ORDER BY s.Gender; */

-- 9. What is the average rating of each product line?
/* SELECT `Product line`, ROUND(AVG(rating),2) AS avg_rating FROM sales
GROUP BY `Product line`
ORDER BY avg_rating DESC; */

-- Sale Analysis
-- 1. Number of Sales Transactions by Time of Day and Weekdays (Excluding Weekends)
/* SELECT day_name, time_of_day, COUNT(`Invoice ID`) AS total_sales FROM sales
WHERE day_name NOT IN ('Saturday', 'Sunday')
GROUP BY day_name, time_of_day; */

-- 2. Which Customer Type contributes the most Revenue?
/* SELECT `Customer type`, SUM(Total) AS highest_revenue FROM sales
GROUP BY `Customer Type`
ORDER BY highest_revenue DESC 
LIMIT 1; */

-- 3. Which Gender Purchases the Most Products?
/* SELECT Gender, SUM(Quantity) AS total_quantity FROM sales
GROUP BY Gender
ORDER BY total_quantity DESC
LIMIT 1; */

-- 4. What is the total tax collected from each product line?
/* SELECT `Product line`, SUM(`Tax 5%`) AS total_tax FROM sales
GROUP BY `Product line`
ORDER BY total_tax DESC; */

-- 5. What is the total gross income generated from each city?
/* SELECT City, SUM(`gross income`) total_gross_income FROM sales
GROUP BY City
ORDER BY total_gross_income DESC; */

-- 6. How has the total sales evolved over time (monthly or yearly)?
/* SELECT YEAR(Date) AS year, month_name AS month, SUM(Total) AS total_revenue FROM sales
GROUP BY year, month
ORDER BY total_revenue DESC; */

-- Customer Analysis
-- 1. How many unique customer types exist in the dataset?
-- SELECT DISTINCT `Customer type` FROM sales;

-- 2. How many distinct payment methods are used by customers?
-- SELECT DISTINCT(Payment) FROM sales;

-- 3. Which customer type appears most frequently in the data?
/* SELECT `Customer type`, COUNT(`Customer type`) AS total_customers FROM sales
GROUP BY `Customer type`
ORDER BY total_customers DESC
LIMIT 1; */

-- 4. Which customer type contributes the highest total sales?
/* SELECT `Customer type`, SUM(Total) as total_sales FROM sales 
GROUP BY `Customer type` 
ORDER BY total_sales DESC 
LIMIT 1; */

-- 5. Which customer type makes the highest number of purchases?
/* SELECT `Customer type` , COUNT(*) AS most_buyer
FROM sales 
GROUP BY `Customer type`  
ORDER BY most_buyer DESC 
LIMIT 1; */

-- 6. How is the gender distribution across different branches?
/* SELECT branch, gender, COUNT(gender) AS gender_distribution
FROM sales 
GROUP BY branch, gender 
ORDER BY branch; */

-- 7. At which time of day do customers tend to provide the highest average ratings?
/* SELECT time_of_day, AVG(rating) AS average_rating
FROM sales 
GROUP BY time_of_day 
ORDER BY average_rating DESC 
LIMIT 1;  */

-- 8. Which time of day do customers give the highest ratings at each branch?
/* SELECT branch, time_of_day, AVG(rating) AS average_rating
FROM sales 
GROUP BY branch, time_of_day 
ORDER BY average_rating DESC; */

-- 9. Which customer type gives the highest average rating to products?
/* SELECT `Customer type`, AVG(rating) AS average_rating
FROM sales
GROUP BY `Customer type` */ 

-- 10. How do customer ratings vary across different product lines?
/* SELECT `Product line`, AVG(rating) AS average_rating
FROM sales
GROUP BY `Product line`
ORDER BY average_rating DESC; */

-- 11. Which branch has the highest number of unique customers?
/* SELECT branch, COUNT(DISTINCT `Customer type`) AS unique_customers
FROM sales
GROUP BY branch
ORDER BY unique_customers DESC
LIMIT 1; */










