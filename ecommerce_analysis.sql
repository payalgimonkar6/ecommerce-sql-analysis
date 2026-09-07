SELECT 'customers' , COUNT(*) FROM customers
UNION ALL
SELECT 'orders',COUNT(*) FROM orders
UNION ALL
SELECT 'order_items',COUNT(*) FROM order_items
UNION ALL
SELECT 'order_payments', COUNT(*) FROM order_payments
UNION ALL 
SELECT 'order reviews' , COUNT(*) FROM order_reviews
UNION ALL
SELECT 'products',COUNT(*) FROM products
UNION ALL
SELECT 'sellers', COUNT(*) FROM sellers
UNION ALL
SELECT 'geolocation',COUNT(*) FROM geolocation
UNION ALL
SELECT 'category_translation', COUNT(*) FROM category_translation;


-- Q1) Find the total number of customers in the dataset.
SELECT COUNT(*)
FROM customers;

-- Q2) Find the number of customers in each state.
SELECT customer_state, COUNT(*) AS customer_count
FROM customers
GROUP BY customer_state;

-- Q3) Find the number of customers in each city.
SELECT customer_city, COUNT(*) AS customer_count
FROM customers
GROUP BY customer_city;

-- Q4) Find all unique states from the customers table
SELECT DISTINCT customer_state
FROM customers;

-- Q5) Find the total number of unique cities in the customers table.
SELECT COUNT(DISTINCT customer_city) AS unique_cities
FROM customers;

-- Q6) Find the total number of unique states in the customers table
SELECT COUNT(DISTINCT customer_state) AS total_states
FROM customers;

-- Q7) Find the top 10 cities with highest number of customers
SELECT customer_city,COUNT(*) AS customer_count
FROM customers
GROUP BY customer_city
ORDER BY customer_count DESC
LIMIT 10;

-- Q8) Find the 10 cities with the lowest number of customers.
SELECT customer_city, COUNT(*) AS customer_count
FROM customers
GROUP BY customer_city
ORDER BY customer_count ASC
LIMIT 10;

-- Q9) Find the total number of customers from the Sao Paulo(SP) state 
SELECT COUNT(*) AS sp_customers
FROM customers
WHERE customer_state = 'SP';

-- Q10) Find the total number of customers from the SP and RJ states.
SELECT COUNT(*)
FROM customers
WHERE customer_state IN ('SP','RJ');

-- Q11) Find the total number of orders in the dataset.
SELECT COUNT(*)
FROM orders;

-- Q12) Find the number of orders for each order_count
SELECT order_status, COUNT(*) AS order_count
FROM orders
GROUP BY order_status;

-- Q13) Find the total number of delivered orders.
SELECT COUNT(*)
FROM orders
WHERE order_status = 'delivered';

-- Q14) Find the total number of canceled orders
SELECT COUNT(*)
FROM orders
WHERE order_status = 'canceled';

-- Q15) Find the top 10 customers based on the number of orders they have placed.
SELECT customer_id, COUNT(*) AS order_count
FROM orders
GROUP BY customer_id
ORDER BY order_count DESC
LIMIT 10;

