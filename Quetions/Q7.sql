-- 7. Show top 5 customers with the highest total spending.
 SElECT customers.first_name,customers.last_name,round(sum(order_details.total_price),2) AS total_spending 
 FROM customers
 INNER JOIN orders 
 ON customers.customer_id=orders.customer_id
 INNER JOIN order_details on orders.order_id=order_details.order_id
 GROUP BY customers.first_name,customers.last_name 
 ORDER BY total_spending DESC LIMIT 5;