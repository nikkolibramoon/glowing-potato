# Vintage Marketplace Customer Reviews Database

This project implements a database for a vintage marketplace, focusing on managing products, customers, and reviews. It includes tables for storing product information, customer data, and reviews left by customers.

## Installation

To set up the database, use the provided SQL scripts. Ensure you have PostgreSQL installed and running on your system.

1. Connect to PostgreSQL:
    ```bash
    psql -U your_username
    ```

2. Create the database:
    ```sql
    CREATE DATABASE vintage_marketplace;
    ```

3. Connect to the database:
    ```sql
    \c vintage_marketplace;
    ```

4. Run the provided SQL scripts to create tables and insert sample data.

## Database Schema

The database schema consists of the following tables:

### Products Table
Stores information about the products available in the marketplace.

Columns:
- `product_id`: INT, Primary Key, Unique identifier for each product.
- `name`: VARCHAR(255), Name of the product.
- `price`: FLOAT, Price of the product in pounds.
- `quantity_in_stock`: INT, Number of units in stock.
- `listing_date`: DATE, Date the product was listed in the marketplace.
- `category`: VARCHAR(255), Category of the product (e.g., Clothing).

### Customers Table
Store information about the customers registered in the marketplace.

Columns:
- `customer_id`: INT, Primary Key, Unique identifier for each customer.
- `name`: VARCHAR(255), Name of the customer.
- `email`: VARCHAR(255), Email address of the customer.
- `signup_date`: DATE, Date the customer signed up.

### Reviews Table
Store reviews left by customers for products.

Columns:
- `review_id`: SERIAL, Primary Key, Unique identifier for each review.
- `product_id`: INT, Foreign Key, References `Products(product_id)`, ID of the reviewed product.
- `customer_id`: INT, Foreign Key, References `Customers(customer_id)`, ID of the customer who left the review.
- `rating`: INT, Rating given by the customer (between 1 and 5).
- `review_date`: DATE, Date the review was left.
- `review_text`: TEXT, Text of the review.

## Sample Data

### Products Table

```sql
INSERT INTO Products (product_id, name, price, quantity_in_stock, listing_date, category)
VALUES
(1, 'Vintage Leather Jacket', 120.30, 3, DATE('2024-01-15'), 'Clothing'),
(2, 'Retro Floral Dress', 70.00, 5, DATE('2024-01-20'), 'Clothing'),
(3, 'Classic Wool Sweater', 50.00, 10, DATE('2024-02-10'), 'Clothing'),
(4, 'Vintage Denim Jeans', 80.00, 7, DATE('2024-02-15'), 'Clothing'),
(5, 'Retro High-Waisted Skirt', 45.50, 6, DATE('2024-03-01'), 'Clothing');
```

### Customers Table

```sql
INSERT INTO Customers (customer_id, name, email, signup_date)
VALUES
(1, 'Alice Johnson', 'alice99@yahoo.com', DATE('2024-01-01')),
(2, 'Bob Smith', 'bobs@gmail.com', DATE('2024-01-05')),
(3, 'Carol Davis', 'caroldavida@gmail.com', DATE('2024-01-10')),
(4, 'David Wilson', 'david_genius@yahoo.com', DATE('2024-01-15')),
(5, 'Emily Clark', 'emspark@hotmail.com', DATE('2024-01-20'));
```

### Reviews Table

```sql
INSERT INTO Reviews (product_id, customer_id, rating, review_date, review_text)
VALUES
(1, 2, 3, DATE('2024-01-16'), 'The leather jacket was not as expected. The quality is average and the fit is off.'),
(2, 1, 5, DATE('2024-01-21'), 'Absolutely love this floral dress. It fits perfectly and the fabric is wonderful.'),
(3, 5, 2, DATE('2024-02-11'), 'The wool sweater was disappointing. The material feels cheap and it doesn’t keep me warm.'),
(4, 3, 4, DATE('2024-02-16'), 'These jeans are pretty good, though they felt a bit snug after a few wears.')
(5, 6, 3, DATE('2024-06-02'), 'The high-waisted skirt is okay, but it arrived with some loose threads.'),
```

## Sample Queries

### Retrieve all products

```sql
SELECT * FROM Products;
```

### Find customers with a specific email domain (e.g., gmail.com)

```sql
SELECT * FROM Customers WHERE email LIKE '%@gmail.com';
```

### Get the average rating for each product

```sql
SELECT product_id, AVG(rating) AS avg_rating 
FROM Reviews 
GROUP BY product_id;
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)




