-- 15. Generate a monthly sales report with total revenue, total orders, and average order value
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    round(SUM(total_price),2)AS total_revenue,
    COUNT(orders.order_id) AS total_orders,
    ROUND(AVG(total_price), 2) AS average_order_value
FROM orders inner join order_details on 
orders.order_id=order_details.order_id
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;
