USE coffee_store;

DESC customers;

-- 1. From customers table, select first name and phone number of all females with last name 'Bluth'
SELECT first_name, phone_number
FROM customers
WHERE gender = 'F' AND last_name = 'Bluth';

-- 2. From products table, select name of all products with price greater than 3.00 or coffee origin of Sri Lanka
SELECT name
FROM products
WHERE price > 3.00 OR coffee_origin = 'Sri Lanka';

-- 3. How many male customers don't have a phone number?
SELECT COUNT(*)
FROM customers
WHERE gender = 'M' AND phone_number IS NULL;