-- 9. Count the number of orders per payment method.
SELECT payment_method,count(payment_method) AS total_no_of_payment 
FROM orders 
GROUP BY payment_method;