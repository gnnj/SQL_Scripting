-- Question 6a
SELECT first_name, last_name, address from staff s
INNER JOIN address a ON s.address_id = a.address_id;

-- Question 6b
SELECT s.staff_id, first_name, last_name, SUM(amount) as 'Total Amount Rung Up'
FROM staff s
INNER JOIN payment p 
ON s.staff_id = p.staff_id
GROUP BY s.staff_id;

-- Question 6c
Select f.title, COUNT(fa.actor_id) as 'Number of Actors'
FROM film f
LEFT JOIN film_actor fa
ON f.film_id = fa.film_id
GROUP BY f.film_id;

-- Question 6d
SELECT f.title, COUNT(i.inventory_id) as 'Number in Inventory'
FROM film f
INNER JOIN inventory i
ON f.film_id = i.film_id
GROUP BY f.film_id
HAVING title = "Hunchback Impossible";

-- Question 6e
SELECT c.last_name, c.first_name, SUM(p.amount) as 'Total Paid'
FROM customer c
INNER JOIN payment p
ON c.customer_id = p.customer_id
GROUP BY p.customer_id
ORDER BY last_name, first_name;