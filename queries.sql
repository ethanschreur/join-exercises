-- write your queries here

SELECT * FROM owners FULL JOIN vehicles ON owners.id = vehicles.owner_id;

SELECT first_name, last_name, COUNT(*) FROM owners INNER JOIN vehicles ON owners.id = vehicles.owner_id GROUP BY owners.id ORDER BY first_name;

SELECT first_name, last_name, ROUND(AVG(price)) AS avrg, COUNT(*) AS cnt FROM owners INNER JOIN vehicles ON owners.id = vehicles.owner
_id GROUP BY owners.id HAVING AVG(price) > 10000 AND COUNT(*) > 1 ORDER BY first_name DESC;
