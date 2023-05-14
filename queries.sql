-- write your queries here
SELECT owners.id, owners.first_name, owners.last_name, vehicles.id, vehicles.make, vehicles.model, vehicles.year, vehicles.price, vehicles.owner_id
FROM owners
LEFT JOIN vehicles ON owners.id = vehicles.owner_id;


SELECT owners.first_name, owners.last_name, COUNT(vehicles.id) AS count
FROM owners
LEFT JOIN vehicles ON owners.id = vehicles.owner_id
GROUP BY owners.id, owners.first_name, owners.last_name
ORDER BY owners.first_name ASC;


SELECT owners.first_name, owners.last_name, ROUND(AVG(vehicles.price)) AS average_price, COUNT(vehicles.id) AS count
FROM owners
LEFT JOIN vehicles ON owners.id = vehicles.owner_id
GROUP BY owners.id, owners.first_name, owners.last_name
HAVING COUNT(vehicles.id) > 1 AND AVG(vehicles.price) > 10000
ORDER BY owners.first_name DESC;
