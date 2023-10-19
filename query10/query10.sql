SELECT name AS film_category_name, SUM(amount) AS rental_amount
FROM payment p
LEFT JOIN rental r
ON p.rental_id = r.rental_id
LEFT JOIN inventory i
ON r.inventory_id = i.inventory_id
LEFT JOIN film_category fc
ON i.film_id = fc.film_id
LEFT JOIN category c
ON fc.category_id = c.category_id
GROUP BY name
ORDER BY rental_amount DESC
LIMIT 10