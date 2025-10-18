-- 12 Find customers who have never placed an order.
SELECT customers.* FROM customers 
LEFT JOIN orders 
ON customers.customer_id=orders.customer_id 
WHERE orders.order_id IS NULL LIMIT 15;