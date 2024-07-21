
\echo '\n List all views:\n'
SELECT table_name
FROM information_schema.views
WHERE table_schema = 'public';


\echo '\n Query the top_rated_products view:\n'
SELECT * FROM top_rated_products;

\echo '\n Query the top_rated_products view:\n'
SELECT * FROM recent_customer_signups;

\echo '\n Low Stock Products:\n'
SELECT * FROM low_stock_products;
