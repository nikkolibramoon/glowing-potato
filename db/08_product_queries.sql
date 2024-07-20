\c vintage_marketplace

\echo '\n Retrieve all products in the "Clothing" category:\n'
SELECT * 
FROM Products 
WHERE category = 'Clothing';

\echo '\n Find products with a price greater than £100:\n'
SELECT * 
FROM Products 
WHERE price > 100.00;

\echo '\n Update the price of a product with a specific product_id:\n'
UPDATE Products 
SET price = 130.00 
WHERE product_id = 1;
SELECT * 
FROM Products;

\echo '\n Delete products that have been in stock for more than 6 months:\n'
DELETE FROM Products 
WHERE listing_date < CURRENT_DATE - INTERVAL '6 months';
SELECT * 
FROM Products;

\echo '\n Retrieve the top 5 most expensive products:\n'
SELECT * 
FROM Products 
ORDER BY price DESC 
LIMIT 5;
