SELECT title AS film_title, SUM(amount) AS rental_amount
FROM payment p
LEFT JOIN rental r
ON p.rental_id = r.rental_id
LEFT JOIN inventory i
ON r.inventory_id = i.inventory_id
LEFT JOIN film f
ON i.film_id = f.film_id
GROUP BY title
ORDER BY rental_amount DESC
LIMIT 10