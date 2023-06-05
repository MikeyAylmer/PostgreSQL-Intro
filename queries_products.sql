-- Comments in SQL Start with dash-dash --

-- Answers to section 3 product querying
-- #1
INSERT INTO products (name, price, can_be_returned)
VALUES ('chair', 44.00, false);
-- #2
INSERT INTO products (name, price, can_be_returned)
VALUES ('stool', 25.99, true);
-- #3
INSERT INTO products (name, price, can_be_returned)
VALUES ('table', 124.00, false);
-- #4
SELECT * FROM products;
-- #5
SELECT name FROM products;
-- #6
SELECT name, price FROM products;
-- #7
SELECT * FROM products WHERE can_be_returned = true;
-- #8
SELECT name, price FROM products WHERE price < 44.00;
-- #9
SELECT name, price FROM products WHERE price > 22.50 AND price < 99.99;
-- #10
UPDATE products SET price = price - 20.00;
-- #11
DELETE FROM products WHERE price < 25.00;
-- #12
DELETE FROM products WHERE price < 25.00;
-- #13
UPDATE products SET price = price + 20.00;
-- #14
UPDATE products SET can_be_returned = true;
