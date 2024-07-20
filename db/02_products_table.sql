\c vintage_marketplace;

DROP TABLE IF EXISTS Products;

CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    price FLOAT,
    quantity_in_stock INT,
    listing_date DATE,
    category VARCHAR(255)
);
