CREATE DATABASE Amazon_Analytics;
USE Amazon_Analytics;

CREATE TABLE sales_data (
order_id INT,
order_date VARCHAR(20),
product_id INT,
product_category VARCHAR(50),
price FLOAT,
discount_percent FLOAT,
discounted_price FLOAT,
quantity_sold INT,
customer_region VARCHAR(50),
payment_method VARCHAR(50),
rating FLOAT,
review_count INT,
total_revenue FLOAT
);

SELECT COUNT(*) FROM sales_data;


SELECT * FROM sales_data
LIMIT 10;

SELECT order_date FROM sales_data LIMIT 5;


SELECT SUM(total_revenue) AS total_revenue FROM sales_data;

SELECT SUM(quantity_sold) AS total_units FROM sales_data;

SELECT AVG(rating) AS avg_rating FROM sales_data;

SELECT product_category, SUM(total_revenue) AS revenue
FROM sales_data
GROUP BY product_category
ORDER BY revenue DESC;

SELECT customer_region,
SUM(total_revenue) AS revenue
FROM sales_data
GROUP BY customer_region
ORDER BY revenue DESC;

SELECT product_id,
SUM(quantity_sold) AS units_sold
FROM sales_data
GROUP BY product_id
ORDER BY units_sold DESC
LIMIT 10;

SELECT discount_percent,
SUM(quantity_sold) AS total_units
FROM sales_data
GROUP BY discount_percent
ORDER BY discount_percent;

SELECT rating,
SUM(quantity_sold) AS total_units
FROM sales_data
GROUP BY rating
ORDER BY rating DESC;

SELECT payment_method,
SUM(total_revenue) AS revenue
FROM sales_data
GROUP BY payment_method
ORDER BY revenue DESC;