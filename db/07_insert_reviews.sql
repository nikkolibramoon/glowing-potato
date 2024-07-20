\c vintage_marketplace;

INSERT INTO Reviews
(product_id, customer_id, rating, review_date, review_text)
VALUES
(
    1,
    2,
    3,
    DATE('2024-01-16'),
    'The leather jacket was not as expected. The quality is average and the fit is off.'
),
(
    2,
    1,
    5,
    DATE('2024-01-21'),
    'Absolutely love this floral dress. It fits perfectly and the fabric is wonderful.'
),
(
    3,
    5,
    2,
    DATE('2024-02-11'),
    'The wool sweater was disappointing. The material feels cheap and it doesn’t keep me warm.'
),
(
    4,
    3,
    4,
    DATE('2024-02-16'),
    'These jeans are pretty good, though they felt a bit snug after a few wears.'
),
(
    5,
    6,
    3,
    DATE('2024-06-02'),
    'The high-waisted skirt is okay, but it arrived with some loose threads.'
),
(
    6,
    4,
    4,
    DATE('2024-05-06'),
    'The silk scarf is nice, but I expected a brighter color based on the pictures.'
),
(
    7,
    7,
    5,
    DATE('2024-07-11'),
    'Fantastic trench coat! The quality is superb and it looks great.'
),
(
    8,
    8,
    3,
    DATE('2024-07-16'),
    'The cardigan is decent, but it’s not as soft as I hoped.'
),
(
    9,
    9,
    4,
    DATE('2024-06-02'),
    'The tweed jacket is good, but the fit was a bit off for me.'
),
(
    10,
    11,
    5,
    DATE('2024-06-06'),
    'Great vintage blazer. The condition is excellent and it fits well.'
),
(
    11,
    10,
    2,
    DATE('2024-05-11'),
    'The polka dot dress was a letdown. The fabric is thin and the stitching is poor.'
),
(
    12,
    12,
    5,
    DATE('2024-07-15'),
    'The fur stole is amazing. It’s elegant and perfect for formal events.'
),
(
    13,
    13,
    3,
    DATE('2024-06-02'),
    'The knit hat is okay, but it’s a bit too tight and uncomfortable.'
),
(
    14,
    15,
    4,
    DATE('2024-07-06'),
    'The leather boots are good quality, but the sizing was slightly off.'
),
(
    15,
    14,
    5,
    DATE('2024-06-11'),
    'Perfect button-up shirt! The fit is great and the fabric is top-notch.'
),
(
    16,
    17,
    2,
    DATE('2024-05-16'),
    'The polo shirt is not great. The color is different from what was shown and it feels cheap.'
),
(
    17,
    18,
    4,
    DATE('2024-06-02'),
    'The vest is stylish and fits well, but the quality could be improved.'
),
(
    18,
    19,
    5,
    DATE('2024-06-06'),
    'Beautiful lace gloves! They are delicate and perfect for special occasions.'
),
(
    19,
    20,
    3,
    DATE('2024-06-11'),
    'The overalls are fine, but they were a bit tight and uncomfortable.'
),
(
    20,
    9,
    1,
    DATE('2024-06-15'),
    'The flannel shirt was a huge disappointment. The fabric feels cheap and the fit is off.'
);

SELECT * FROM Reviews;
