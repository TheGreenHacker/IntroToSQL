USE coffee_store;

-- 1. From customers table, select distinc last names and order alphabetically (ascending)
SELECT DISTINCT last_name FROM customers
ORDER BY last_name;

-- 2. From orders table, select first 3 orders placed by customer with id1 in February 2017
SELECT * FROM orders
WHERE customer_id = 1 AND order_time BETWEEN '2017/2/1' AND '2017/2/28'
ORDER BY order_time
LIMIT 3;

-- 3. From products table, select name, price, and coffee origin but name price to retail_price in resulting query
SELECT name, price AS retail_price, coffee_origin FROM products