USE coffee_store;

SHOW TABLES;

DESC products;

INSERT INTO products (name, price, coffee_origin)
VALUES ('Espresso', 2.50, 'Brazil'), ('Macchiato', 3.00, 'Brazil'), 
('Cappuccino', 3.50, 'Costa Rica'), ('Latte', 3.50, 'Indonesia'),
('Americano', 3.00, 'Brazil'), ('Flat White', 3.50, 'Indonesia'),
('Filter', 3.00, 'India');

SELECT * FROM products;