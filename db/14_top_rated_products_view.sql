CREATE OR REPLACE VIEW top_rated_products AS
SELECT 
    p.product_id,
    p.name,
    p.category,
    ROUND(AVG(r.rating), 2) AS avg_rating
FROM 
    Products p
JOIN 
    Reviews r ON p.product_id = r.product_id
GROUP BY 
    p.product_id
ORDER BY 
    avg_rating DESC;
