CREATE OR REPLACE VIEW recent_customer_signups AS
SELECT 
    customer_id,
    name,
    email,
    signup_date
FROM 
    Customers
WHERE 
    signup_date >= CURRENT_DATE - INTERVAL '3 months';
