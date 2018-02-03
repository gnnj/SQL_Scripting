-- Question 2a

SELECT actor_id, first_name, last_name
from actor
WHERE first_name LIKE 'Joe';

-- Question 2b

SELECT actor_id, first_name, last_name
from actor
WHERE last_name LIKE '%gen%';

-- Question 2c

SELECT last_name, first_name
from actor
WHERE last_name LIKE '%li%';

-- Question 2d

SELECT country_id, country
FROM country
WHERE country IN ('Afghanistan', 'Bangladesh', 'China');