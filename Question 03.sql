SELECT * FROM sakila.actor;

-- Question 3a
ALTER TABLE actor ADD middle_name varchar(30) AFTER first_name;
SELECT * FROM sakila.actor;

-- Question 3b
ALTER TABLE actor MODIFY COLUMN middle_name BLOB;
SELECT * FROM sakila.actor;

-- Question 3c
ALTER TABLE actor DROP middle_name;
SELECT * FROM sakila.actor;