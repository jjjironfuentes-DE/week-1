
CREATE DATABASE IF NOT EXISTS britmart_lab;

USE britmart_lab;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    email VARCHAR(120) UNIQUE,
    joined_date DATE NOT NULL,
    is_active BOOLEAN NOT NULL
);

INSERT INTO customers
    (customer_id, customer_name, city, email, joined_date, is_active)
VALUES
    (1, 'Amelia Clarke', 'London', 'amelia@example.com', '2026-07-01', TRUE),
    (2, 'Oliver Bennett', 'Manchester', 'oliver@example.com', '2026-07-03', TRUE),
    (3, 'Aisha Khan', 'Leeds', NULL, '2026-07-05', TRUE),
    (4, 'Harry Thompson', 'Bristol', 'harry@example.com', '2026-07-07', FALSE);

SELECT * FROM customers;


USE britmart_lab;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE NOT NULL,
    amount_gbp DECIMAL(10,2) NOT NULL,
    status VARCHAR(20) NOT NULL,
    created_at DATETIME NOT NULL,

    CONSTRAINT chk_order_amount
        CHECK (amount_gbp >= 0),

    CONSTRAINT fk_orders_customers
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);


INSERT INTO orders
    (order_id, customer_id, order_date, amount_gbp, status, created_at)
VALUES
    (101, 1, '2026-08-01', 45.50, 'complete',  '2026-08-01 09:00:00'),
    (102, 2, '2026-08-01', 18.00, 'cancelled', '2026-08-01 09:05:00'),
    (103, 1, '2026-08-01', 62.25, 'complete',  '2026-08-01 09:10:00');


SELECT
    COUNT(*) AS row_count,
    MIN(order_id) AS min_order_id,
    MAX(order_id) AS max_order_id
FROM orders;


INSERT INTO orders
    (order_id, customer_id, order_date, amount_gbp, status, created_at)
VALUES
    (104, 3, '2026-08-02', 30.00, 'complete', '2026-08-02 10:00:00'),
    (105, 2, '2026-08-02', 55.50, 'complete', '2026-08-02 10:05:00'),
    (106, 4, '2026-08-02', 12.00, 'pending',  '2026-08-02 10:10:00');


INSERT INTO orders
    (order_id, customer_id, order_date, amount_gbp, status, created_at)
VALUES
    (107, 3, '2026-08-03', 80.00, 'complete', '2026-08-03 11:00:00'),
    (108, 1, '2026-08-03', 20.00, 'complete', '2026-08-03 11:05:00'),
    (109, 2, '2026-08-03', 100.00, 'complete', '2026-08-03 11:10:00');


SELECT order_id, order_date, amount_gbp, status
FROM orders
ORDER BY order_id;


SELECT order_id, order_date, amount_gbp, status
FROM orders
ORDER BY order_id
LIMIT 4;

SELECT *
FROM orders
ORDER BY amount_gbp DESC
LIMIT 3;


SELECT *
FROM orders
WHERE order_id = 106;


UPDATE orders
SET status = 'complete'
WHERE order_id = 106;

SELECT *
FROM orders
WHERE order_id = 106;


SELECT *
FROM orders
WHERE order_id = 102;


DELETE FROM orders
WHERE order_id = 102
  AND status = 'cancelled';

SELECT *
FROM orders
WHERE order_id = 102;


-- Completed orders above £50
SELECT *
FROM orders
WHERE status = 'complete'
  AND amount_gbp > 50;

-- Orders from 2 August 2026 onwards
SELECT *
FROM orders
WHERE order_date >= '2026-08-02';

-- Five highest order amounts
SELECT *
FROM orders
ORDER BY amount_gbp DESC
LIMIT 5;

-- Orders that are not complete
SELECT *
FROM orders
WHERE status <> 'complete';


-- Distinct customer cities
SELECT DISTINCT city
FROM customers;

-- Customers in London or Leeds
SELECT *
FROM customers
WHERE city IN ('London', 'Leeds');

-- Orders between £30 and £80, inclusive
SELECT *
FROM orders
WHERE amount_gbp BETWEEN 30 AND 80;

-- Customer names starting with A
SELECT *
FROM customers
WHERE customer_name LIKE 'A%';


-- Customers without an email
SELECT *
FROM customers
WHERE email IS NULL;

-- Customers with an email
SELECT *
FROM customers
WHERE email IS NOT NULL;


SELECT
    customer_id,
    COUNT(*) AS order_count,
    SUM(amount_gbp) AS total_sales_gbp,
    AVG(amount_gbp) AS average_order_gbp,
    MIN(amount_gbp) AS minimum_order_gbp,
    MAX(amount_gbp) AS maximum_order_gbp
FROM orders
WHERE status = 'complete'
GROUP BY customer_id
HAVING SUM(amount_gbp) >= 75
ORDER BY total_sales_gbp DESC;


SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    o.order_id,
    o.amount_gbp,
    o.status
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
ORDER BY c.customer_id, o.order_id;


SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    o.order_id,
    o.amount_gbp,
    o.status
FROM customers AS c
LEFT JOIN orders AS o
    ON c.customer_id = o.customer_id
ORDER BY c.customer_id, o.order_id;


SELECT
    c.city,
    COUNT(o.order_id) AS completed_order_count,
    COALESCE(SUM(o.amount_gbp), 0) AS completed_revenue_gbp
FROM customers AS c
LEFT JOIN orders AS o
    ON c.customer_id = o.customer_id
    AND o.status = 'complete'
GROUP BY c.city
ORDER BY c.city;


INSERT INTO orders
    (order_id, customer_id, order_date, amount_gbp, status, created_at)
VALUES
    (110, 4, '2026-08-04', 75.00, 'complete',  '2026-08-04 12:00:00'),
    (111, 1, '2026-08-04', 40.00, 'complete',  '2026-08-04 12:05:00'),
    (112, 3, '2026-08-04', 25.00, 'cancelled', '2026-08-04 12:10:00');
    
    
SELECT
    COUNT(*) AS row_count,
    MIN(order_id) AS min_order_id,
    MAX(order_id) AS max_order_id
FROM orders;


USE britmart_lab;

SELECT *
FROM orders
ORDER BY order_id;

SELECT * FROM customers
ORDER BY customer_id;











