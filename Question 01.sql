-- Question 1A
SELECT first_name, last_name
FROM sakila.actor;

-- Question 1B
SELECT CONCAT(first_name, " ", last_name) AS actor_name
FROM sakila.actor;
