SELECT r.customer_id, COUNT(rental_id) AS rental_count
FROM rental r
LEFT JOIN customer c
ON r.customer_id = c.customer_id
GROUP BY r.customer_id
ORDER BY rental_count DESC
LIMIT 10