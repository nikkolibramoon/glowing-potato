\c vintage_marketplace

\echo '\n Get a list of product names for each category:\n'
SELECT
  category,
  ARRAY_AGG(name) AS product_names
FROM
  Products
GROUP BY
  category;

\echo '\n  Get a comma-separated list of product names for each category:\n'
SELECT
  category,
  STRING_AGG(name, ', ') AS product_list
FROM
  Products
GROUP BY
  category;

\echo '\n  Get a JSON array of products and their prices:\n'
SELECT
  JSON_AGG(
    JSON_BUILD_OBJECT('product_name', name, 'price', price)
  ) AS products_json
FROM
  Products;

\echo '\n List each customer with an array of product IDs they have reviewed:\n'
SELECT
  c.customer_id,
  c.name AS customer_name,
  ARRAY_AGG(r.product_id) AS reviewed_products
FROM
  Customers c
LEFT JOIN
  Reviews r ON c.customer_id = r.customer_id
GROUP BY
  c.customer_id, c.name;

\echo '\n Aggregate review texts for each product into an array:\n'
SELECT
  p.product_id,
  p.name AS product_name,
  ARRAY_AGG(r.review_text) AS review_texts
FROM
  Products p
LEFT JOIN
  Reviews r ON p.product_id = r.product_id
GROUP BY
  p.product_id, p.name;

