-- 11. Calculate the average delivery time (delivery_date – order_date) for each state.
SELECT customers.state,
round(AVG(DATEDIFF(delivery_date,order_date)),1)
AS average_time FROM orders 
INNER JOIN customers 
ON customers.customer_id=orders.customer_id 
GROUP BY state;