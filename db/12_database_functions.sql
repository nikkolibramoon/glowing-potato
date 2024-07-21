-- Add a new customer
CREATE OR REPLACE FUNCTION add_new_customer(
    p_name VARCHAR,
    p_email VARCHAR,
    p_signup_date DATE
) RETURNS VOID AS $$
BEGIN
    INSERT INTO Customers (name, email, signup_date)
    VALUES (p_name, p_email, p_signup_date);
END;
$$ LANGUAGE plpgsql;

-- Add a new product
CREATE OR REPLACE FUNCTION add_new_product(
    p_name VARCHAR,
    p_price FLOAT,
    p_quantity_in_stock INT,
    p_listing_date DATE,
    p_category VARCHAR
) RETURNS VOID AS $$
BEGIN
    INSERT INTO Products (name, price, quantity_in_stock, listing_date, category)
    VALUES (p_name, p_price, p_quantity_in_stock, p_listing_date, p_category);
END;
$$ LANGUAGE plpgsql;


-- Update product quantity
CREATE OR REPLACE FUNCTION update_product_quantity(
    p_product_id INT,
    p_new_quantity INT
) RETURNS VOID AS $$
BEGIN
    UPDATE Products
    SET quantity_in_stock = p_new_quantity
    WHERE product_id = p_product_id;
END;
$$ LANGUAGE plpgsql;

-- Delete a product
CREATE OR REPLACE FUNCTION delete_product(
    p_product_id INT
) RETURNS VOID AS $$
BEGIN
    DELETE FROM Products
    WHERE product_id = p_product_id;
END;
$$ LANGUAGE plpgsql;
