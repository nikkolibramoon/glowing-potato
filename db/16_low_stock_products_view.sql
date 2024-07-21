CREATE OR REPLACE VIEW low_stock_products AS
SELECT 
    product_id,
    name,
    quantity_in_stock
FROM 
    Products
WHERE 
    quantity_in_stock <= 5;
