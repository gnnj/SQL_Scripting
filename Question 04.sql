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

-- Question 4d
