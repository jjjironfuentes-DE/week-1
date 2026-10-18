CREATE DATABASE IF NOT EXISTS britmart_lab;

USE britmart_lab;

CREATE TABLE orders_perf (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    city VARCHAR(100) NOT NULL,
    amount_gbp DECIMAL(10,2) NOT NULL,
    status VARCHAR(20) NOT NULL
);
SELECT *
FROM orders_perf;

INSERT INTO orders_perf
    (order_id, customer_id, order_date, city, amount_gbp, status)
VALUES
    (1, 101, '2026-08-01', 'London', 45.50, 'complete'),
    (2, 102, '2026-08-01', 'Manchester', 18.00, 'cancelled'),
    (3, 101, '2026-08-02', 'London', 62.25, 'complete'),
    (4, 103, '2026-08-02', 'Leeds', 30.00, 'complete'),
    (5, 104, '2026-08-03', 'Bristol', 55.50, 'complete'),
    (6, 102, '2026-08-03', 'Manchester', 12.00, 'pending'),
    (7, 101, '2026-08-04', 'London', 80.00, 'complete'),
    (8, 105, '2026-08-04', 'Leeds', 20.00, 'complete'),
    (9, 106, '2026-08-05', 'Bristol', 100.00, 'complete'),
    (10, 102, '2026-08-05', 'Manchester', 40.00, 'complete');
    
    SELECT *
FROM orders_perf;

EXPLAIN
SELECT
    order_id,
    order_date,
    amount_gbp
FROM orders_perf
WHERE customer_id = 101;

CREATE INDEX idx_orders_customer
ON orders_perf (customer_id);

EXPLAIN
SELECT
    order_id,
    order_date,
    amount_gbp
FROM orders_perf
WHERE customer_id = 101;


### Q.4 When is an index most likely to help? B. a query filters a large table using a selective column

SELECT *
FROM orders_perf
WHERE status = 'complete';

SELECT
    order_id,
    order_date,
    amount_gbp
FROM orders_perf
WHERE status = 'complete';

###Query B asks for only the required columns.

#This can reduce unnecessary data transfer and makes the query intent clearer.

##SELECT * is convenient during exploration, but it may read or return columns the consumer does not need.


SELECT
    order_id,
    customer_id,
    order_date,
    amount_gbp
FROM orders_perf
WHERE status = 'complete'
  AND order_date >= '2026-08-03'
  AND amount_gbp >= 40
ORDER BY order_date, order_id;

# Q.7 

Create Table Customers_Perf (
	customer_id INT primary KEY,
	Customer_name VARCHAR(50) NOT NULL,
    CITY VARCHAR(50) NOT NULL
    );
    
    SELECT * FROM customers_perf;
    
    SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    o.order_id,
    o.amount_gbp,
    o.status
FROM customers_perf AS c
INNER JOIN orders_perf AS o
    ON c.customer_id = o.customer_id
ORDER BY o.order_id;
    
# why wpould joining on city be unsafe? 
	# joining on city would be unsafe because multiple customer can live in the same city. for example Emliy Wilson and Aisha Khan both live in leeds, while Harry
	# and Noah both live in bristol. if we join the table using city, ione order could incorrectly match multiple customers from tje same city. this can create multiple rows and 
    # innacurrate results.
    
    
# Q.8 why should a querry select only the columns it needs?
# C. it can reduce unnecessary data read or transfer.

# Q.9 Choose partitioning column   
 # which is the best starting choice for the stated access pattern?   The best starting choice is `order_date` because most BritMart reports filter orders by date. 
# Partitioning by `order_date` can help the database scan only the relevant date partitions, improving query performance for date-based reports. 
# The other columns do not match the stated access pattern as well. Actual performance depends on the partition design, query optimizer, and data distribution.

# Q.10 Design a Data base layout
    
#orders/
#├── order_date=2026-08-01/
#├── order_date=2026-08-02/
#└── order_date=2026-08-03/

# Q.11 --- which design is more likely to create excessive file management and task overhead?
# Design B because i have 10,000 files instead of 100. that multiply the overhead from the metadata, eahc task procees very few data that ir cost to coordinate is greater than the real work.alter








