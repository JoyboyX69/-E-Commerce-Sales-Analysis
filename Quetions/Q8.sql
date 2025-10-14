-- 8. Find products with the highest quantity sold.
SELECT products.product_name,order_details.quantity AS large_quantity 
FROM order_details
INNER JOIN products 
ON order_details.product_id=products.product_id 
ORDER BY order_details.quantity DESC 
LIMIT 1;