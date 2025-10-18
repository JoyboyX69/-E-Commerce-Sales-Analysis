-- 13. Identify orders where the discount_percent > 20%.
SELECT orders.order_id,max(order_details.discount_percent ) AS discount_percentage
FROM order_details INNER JOIN orders
ON orders.order_id=order_details.order_id
WHERE discount_percent > 20
GROUP BY order_details.order_id;