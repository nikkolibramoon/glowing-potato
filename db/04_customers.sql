\c vintage_marketplace;

DROP TABLE IF EXISTS Customers;


CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    signup_date DATE
);


