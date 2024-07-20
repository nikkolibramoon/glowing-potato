\c vintage_marketplace

\echo '\n Find the average rating for each product:\n'
SELECT product_id, ROUND(AVG(rating), 2) AS average_rating
FROM Reviews
GROUP BY product_id;

\echo '\n Retrieve all reviews for a specific product:\n'
SELECT * 
FROM Reviews 
WHERE product_id = 5;

\echo '\n Retrieve the most recent 5 reviews with their product names and customer names:\n'
SELECT r.review_id, p.name AS product_name, 
c.name AS customer_name, r.rating, r.review_text 
FROM Reviews r
JOIN Products p ON r.product_id = p.product_id
JOIN Customers c ON r.customer_id = c.customer_id
ORDER BY r.review_date DESC 
LIMIT 5;

\echo '\n Find Customers Who Have Never Made a Review:\n'
SELECT c.customer_id, c.name, c.email
FROM Customers c
LEFT JOIN Reviews r ON c.customer_id = r.customer_id
WHERE r.customer_id IS NULL;

