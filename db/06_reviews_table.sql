\c vintage_marketplace;

DROP TABLE IF EXISTS Reviews;

CREATE TABLE Reviews (
    review_id SERIAL PRIMARY KEY,
    product_id INT,
    customer_id INT,
    rating INT CHECK (rating >= 1 AND rating <= 5),
    review_date DATE,
    review_text TEXT,
    FOREIGN KEY (product_id) REFERENCES Products(product_id) ON DELETE SET NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON DELETE SET NULL
);
