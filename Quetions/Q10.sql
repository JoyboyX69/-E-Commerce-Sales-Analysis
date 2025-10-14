-- 10. Find the most returned product and number of returns.
SELECT products.product_name,COUNT(returns.return_id) AS total_return 
FROM products INNER JOIN order_details
ON products.product_id=order_details.product_id
INNER JOIN returns ON 
order_details.order_detail_id=returns.order_detail_id
GROUP BY products.product_name
ORDER BY total_return DESC LIMIT 10;
 


