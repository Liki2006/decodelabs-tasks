CREATE DATABASE ecommerce_db;
USE ecommerce_db;

SELECT * 
FROM orders LIMIT 5;

-- Overall revenue
SELECT SUM(total_price) AS Total_Revenue
FROM orders;

-- Average Revenue
SELECT AVG(total_price) AS Average_Order_Value
FROM orders;

-- Highest Order Value
SELECT MAX(total_price) AS Highest_Order
FROM orders;

-- Lowest Order Value.
SELECT MIN(total_price) AS Lowest_Order
FROM orders;

SELECT product_name,SUM(total_price) AS total_price
FROM orders
GROUP BY product_name;

SELECT COUNT(*) AS Total_Orders
FROM orders;

SELECT COUNT(*)
FROM orders
WHERE total_price>1000;

SELECT COUNT(*)
FROM orders
WHERE order_status='Delivered';

-- Number of Orders by Payment Method.
SELECT payment_method,
COUNT(*) AS Total_Orders
FROM orders
GROUP BY payment_method;

-- Total Revenue by Payment Method.
SELECT payment_method,
SUM(total_price) AS Revenue
FROM orders
GROUP BY payment_method;

-- Number of Orders by Referral Source.
SELECT referral_source,
COUNT(*) AS Orders
FROM orders
GROUP BY referral_source;

-- Revenue by Referral Source.
SELECT referral_source,
SUM(total_price) AS Revenue
FROM orders
GROUP BY referral_source;

-- Most Ordered Product.
SELECT product_name,
COUNT(*) AS Orders
FROM orders
GROUP BY product_name
ORDER BY Orders DESC;

-- Product with Highest Revenue.
SELECT product_name,
SUM(total_price) AS Revenue
FROM orders
GROUP BY product_name
ORDER BY Revenue DESC;

-- TOP 5 Orders Sorted by Highest Price.
SELECT *
FROM orders
ORDER BY total_price DESC LIMIT 5;

-- Average Quantity Purchased.
SELECT AVG(quantity) AS Average_Quantity
FROM orders;

-- Orders by Status.
SELECT order_status,
COUNT(*) AS Orders
FROM orders
GROUP BY order_status;
