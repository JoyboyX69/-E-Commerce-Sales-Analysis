-- 5. Find the total revenue generated from each state
SELECT 
    customers.state, 
    round(SUM(order_details.total_price),0) AS total_revenue
FROM 
    order_details
INNER JOIN 
    orders ON order_details.order_id = orders.order_id
INNER JOIN 
    customers ON orders.customer_id = customers.customer_id
GROUP BY 
    customers.state;
