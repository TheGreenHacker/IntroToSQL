USE coffee_store;

DESC orders;
DESC customers;
DESC products;

-- 1. Select order id and customers phone number for all orders of product id 4.
SELECT orders.id, customers.phone_number
FROM orders
LEFT JOIN customers ON orders.customer_id = customers.id
WHERE orders.product_id = 4;

-- 2. Select product name and order time for filter coffees sold between January 15th 2017 and February 14th 2017.
SELECT products.name, orders.order_time
FROM products
JOIN orders ON orders.product_id = products.id
WHERE products.name = 'Filter' AND orders.order_time BETWEEN '2017/1/15' AND '2017/2/14';

-- 3. Select product name, price, and order time for all orders from females in January 2017.
SELECT products.name, products.price ,orders.order_time
FROM products
RIGHT JOIN orders ON products.id = orders.product_id
JOIN customers ON orders.customer_id = customers.id
WHERE customers.gender = 'F' AND orders.order_time BETWEEN '2017/1/1' AND '2017/1/31';