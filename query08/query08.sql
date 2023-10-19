SELECT p.customer_id, SUM(amount) AS total_payment
FROM payment p
LEFT JOIN customer c
ON p.customer_id = c.customer_id
GROUP BY p.customer_id
ORDER BY total_payment DESC
LIMIT 10