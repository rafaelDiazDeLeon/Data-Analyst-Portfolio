-- ==========================================================
-- BLINKIT - GROCERIES APP SALES DATABASE - Schema Definition
-- ==========================================================
-- 5 TABLES: customers, products, orders, order_items, delivery_performance
-- SOURCE: Kaggle's "Blinkit Sales Dataset"
-- Engine: MySQL / MariaDB

CREATE TABLE customers (
    customer_id         INT PRIMARY KEY,
    customer_name       VARCHAR(100),
    email                VARCHAR(100),
    area                 VARCHAR(100),
    registration_date    DATE
);

CREATE TABLE products (
    product_id           INT PRIMARY KEY,
    product_name         VARCHAR(150),
    category             VARCHAR(100),
    brand                VARCHAR(100),
    price                DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id              BIGINT PRIMARY KEY,   -- BIGINT: source IDs surpass INT's range
    customer_id           INT,
    order_date            DATETIME,
    payment_method        VARCHAR(20),
    order_total           DECIMAL(10,2),
    delivery_status       VARCHAR(30),

    FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);

CREATE TABLE order_items (
    order_id              BIGINT,
    product_id            INT,
    quantity              INT,
    unit_price             DECIMAL(10,2),

    FOREIGN KEY (order_id) REFERENCES orders (order_id),
    FOREIGN KEY (product_id) REFERENCES products (product_id)
);

CREATE TABLE delivery_performance (
    order_id                 BIGINT,
    delivery_time_minutes    INT,
    distance_km               DECIMAL(6,2),
    reasons_if_delayed        VARCHAR(100),

    FOREIGN KEY (order_id) REFERENCES orders (order_id)
);


-- ============================================
-- Analysis Queries
-- ============================================

-- 1.- Total revenue
SELECT SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM order_items oi;

-- 2.- Total registered customers / products
SELECT COUNT(*) AS total_customers FROM customers;
SELECT COUNT(*) AS total_products FROM products;

-- 3.- Most expensive / cheapest product
SELECT product_name, price FROM products ORDER BY price DESC LIMIT 1;
SELECT product_name, price FROM products ORDER BY price ASC LIMIT 1;

-- 4.- Top 10 best-selling products
SELECT
    p.product_name,
    SUM(oi.quantity) AS units_sold,
    SUM(oi.quantity * oi.unit_price) AS revenue
FROM order_items oi
JOIN products p ON p.product_id = oi.product_id
GROUP BY p.product_id
ORDER BY units_sold DESC
LIMIT 10;

-- 5.- Bottom 10 worst-selling products
SELECT
    p.product_name,
    SUM(oi.quantity) AS units_sold
FROM order_items oi
JOIN products p ON p.product_id = oi.product_id
GROUP BY p.product_id
ORDER BY units_sold ASC
LIMIT 10;

-- 6.- Products that have never been sold
SELECT
    p.product_id,
    p.product_name,
    p.category
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;

-- 7.- Monthly revenue trend
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(order_total) AS monthly_revenue
FROM orders
GROUP BY month
ORDER BY month;

-- 8.- Customer tier classification (Premium / Frequent / Occasional)
WITH customer_totals AS (
    SELECT
        c.customer_id,
        c.customer_name,
        COUNT(o.order_id) AS total_orders
    FROM customers c
    JOIN orders o ON o.customer_id = c.customer_id
    GROUP BY c.customer_id
)
SELECT
    *,
    CASE
        WHEN total_orders >= 5 THEN 'Premium'
        WHEN total_orders BETWEEN 2 AND 4 THEN 'Frequent'
        ELSE 'Occasional'
    END AS customer_tier
FROM customer_totals;

-- 9.- Customers who bought more than one distinct product
WITH distinct_products_per_customer AS (
    SELECT
        o.customer_id,
        c.customer_name,
        COUNT(DISTINCT oi.product_id) AS distinct_products
    FROM orders o
    JOIN order_items oi ON oi.order_id = o.order_id
    JOIN customers c ON c.customer_id = o.customer_id
    GROUP BY o.customer_id, c.customer_name
)
SELECT *
FROM distinct_products_per_customer
WHERE distinct_products > 1
ORDER BY distinct_products DESC;

-- 10.- On-time delivery rate
SELECT
    delivery_status,
    COUNT(*) AS num_orders,
    ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM orders), 1) AS pct_of_total
FROM orders
GROUP BY delivery_status;


-- ============================================
-- IMPORTANT NOTES
-- ============================================
-- When importing the CSVs via DBeaver's "Import Data" tool, there will be an "Incorrect date/datetime value" error on insert.

-- Solution: Before importing, temporarily switch both columns to VARCHAR, import the CSVs, then convert them back:

--   ALTER TABLE customers MODIFY registration_date VARCHAR(20);
--   ALTER TABLE orders MODIFY order_date VARCHAR(30);

--   -- ... import the CSVs ...
--   UPDATE customers SET registration_date = STR_TO_DATE(registration_date, '%m/%d/%Y');
--   ALTER TABLE customers MODIFY registration_date DATE;
--   UPDATE orders SET order_date = STR_TO_DATE(order_date, '%m/%d/%Y %H:%i');
--   ALTER TABLE orders MODIFY order_date DATETIME;


