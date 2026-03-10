CREATE database Amazon_analytics;

CREATE TABLE sales_data (
order_id INT,
order_date DATE,
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

LOAD DATA LOCAL INFILE 'C:\Users\grama\OneDrive\Documents\DA Projects\7E-Commerce Marketing Performance & Sales Analytics - Amazon\Data\cleaned_sales_data'
INTO TABLE my_table
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;