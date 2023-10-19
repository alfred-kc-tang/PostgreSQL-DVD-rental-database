SELECT DATE(rental_date) AS rent_date, COUNT(rental_id) AS rental_count
FROM rental
GROUP BY rent_date
ORDER BY rent_date