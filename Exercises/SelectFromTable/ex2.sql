USE coffee_store;

SELECT * FROM products;

DESC orders;

-- From products table, select name and price of all products with origin of 'Colombia' or 'Indonesia' ordered alphabetically (ascending)
SELECT name, price
FROM products
WHERE coffee_origin = 'Colombia' OR coffee_origin = 'Indonesia'
ORDER BY name; 

-- 2. From orders table, select all orders from February 2017 for customers with id's 2, 4, 6, or 8
SELECT * FROM orders
WHERE customer_id IN (2, 4, 6, 8) AND order_time BETWEEN '2017/02/01' AND '2017/02/28';

-- 3. From customers table, select first name and phone number of all customers whose last names contain 'ar'
SELECT first_name, phone_number
FROM customers
WHERE last_name LIKE '%ar%';