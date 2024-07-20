\c vintage_marketplace

\echo '\n Find customers with a specific email domain:\n'
SELECT * 
FROM Customers 
WHERE email LIKE '%@yahoo.com';

\echo '\n Update the email address of a customer with a specific customer_id:\n'
UPDATE Customers 
SET email = 'alice_new_email@gmail.com' 
WHERE customer_id = 1;
SELECT * 
FROM Customers ;

\echo '\n Delete a customer record based on customer_id:\n'
DELETE FROM Customers 
WHERE customer_id = 5;
SELECT * 
FROM Customers ;

\echo '\n Retrieve the names and signup dates of the most recent 10 customers:\n'
SELECT name, signup_date 
FROM Customers 
ORDER BY signup_date DESC 
LIMIT 10;

\echo '\n Find the most recent customer:\n'
SELECT customer_id, name, email, signup_date
FROM Customers
ORDER BY signup_date DESC
LIMIT 1;