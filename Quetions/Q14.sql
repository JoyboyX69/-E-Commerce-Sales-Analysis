-- 14. Find customers who have ordered products from more than 3 categories.
SELECT customers.first_name,count(products.category) AS Total_Category
FROM customers INNER JOIN orders 
ON customers.customer_id=orders.customer_id
INNER JOIN order_details 
ON order_details.order_id=orders.order_id 
INNER JOIN products 
ON products.product_id=order_details.product_id
GROUP BY customers.customer_id 
HAVING Total_Category > 3