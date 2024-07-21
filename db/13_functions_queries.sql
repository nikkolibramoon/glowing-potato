
\echo '\n Add a new customer:\n'
SELECT add_new_customer('Alessandra Moscow', 'moscowmule12@gmail.com', '2024-07-21');

\echo '\n Add a new product:\n'
SELECT add_new_product('Vintage Cap', 25.50, 10, '2024-07-21', 'Accessories');

\echo '\n Update product quantity:\n'
SELECT update_product_quantity(1, 15);

\echo '\n Delete a product:\n'
SELECT delete_product(1);
