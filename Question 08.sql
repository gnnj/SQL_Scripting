-- Question 8a
CREATE VIEW top_5_by_genre AS
SELECT c.name, sum(p.amount) as 'Revenue per Category' FROM category c
JOIN film_category fc
ON c.category_id = fc.category_id
JOIN inventory i
ON fc.film_id = i.film_id
JOIN rental r
ON r.inventory_id = i.inventory_id
JOIN payment p
ON p.rental_id = r.rental_id
GROUP BY name
ORDER BY SUM(p.amount) DESC
LIMIT 5;

-- Question 8b
SELECT * FROM top_5_by_genre;

-- Question 8c
DROP VIEW top_5_by_genre;