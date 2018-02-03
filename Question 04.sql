-- Question 4a
SELECT last_name, COUNT(*)
FROM sakila.actor
GROUP BY last_name;

-- Question 4b
SELECT last_name, COUNT(*) AS cnt
FROM sakila.actor
GROUP BY last_name
HAVING cnt > 2;

-- Question 4c
UPDATE actor
SET first_name = 'HARPO' 
WHERE first_name = "GROUCHO" AND last_name = "WILLIAMS";

-- Question 4d
UPDATE actor
SET first_name = 
	CASE 
		WHEN first_name = "HARPO"
			THEN "GROUCHO"
		ELSE "MUCHO GROUCHO"
	END
WHERE actor_id = 172;