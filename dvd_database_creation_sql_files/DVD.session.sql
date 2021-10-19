---- This is a comment!
---- Select all records from the actor TABLE

SELECT *
FROM actor
LIMIT 10 OFFSET 5;

---- LIMIT says how many records to get
-----------------------

----Query for first and last columns
SELECT first_name, last_name
FROM actor
-----------------------

----Query for first_name that equals Nick
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick'
-----------------------

---- Querty wher ename is Nick but using LIKE
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Nick'

---- Querty where name starts with a J- % is a wild card
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'J%'

---- Querty where name contains a lowercase y
SELECT first_name, last_name
FROM actor
-WHERE first_name LIKE '%y%'

---- % is any number 0-infinity spaces
---- _ is just one space
---- all the names that start with a K and has 2 letters after the K
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K__'

---- for all first_name that starts with a K and ends with a THEN
SELECT first_name
FROM actor
WHERE first_name LIKE 'K%th'

----Comparison operators
---- > < >= <= <>(not equals like !=)
---- Query the payment tables who paid an amount greater than $2
SELECT customer_id, amount
FROM payment
WHERE amount > 2.00;
ORDER is smallest to largest by default
ORDER BY amount;
ORDER with DESC is opposite
ORDER BY amount DESC;

----between
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 2.00 AND 7.99;

---- not equal to 0.00 order descending order
SELECT customer_id, amount
FROM payment
WHERE amount <> 0.00
ORDER BY amount DESC;

----SQL aggregations SUM, AVG, COUNT, MIN, MAX
----Querty to display sum of amounts paid that are greater than 5.99
SELECT SUM(amount)
FROM payment
WHERE amount > 5.99;

---- Querty to display average amounts paid that are greater than 5.99
SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

---- Querty how many amounts paid that are greater than 5.99
SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99;

---- Querty how many DISTINCT amounts paid that are greater than 5.99
SELECT COUNT(DISTINCT amount) --amounts we haven't seen before, unique, no duplicates
FROM payment
WHERE amount > 5.99;

---- Query to display the min amount greater than 7.99
SELECT MIN(amount) AS Min_Num_Payments -- changes title
FROM payment
WHERE amount > 7.99;

---- Query to display the max amount greater than 7.99
SELECT MAX(amount)
FROM payment
WHERE amount > 7.99;

---- GROUP_BY
---- Query to display diffferent amounts grouped together
SELECT amount, COUNT(amount)
FROM payment
GROUP BY amount;
ORDER BY amount;

---- GROUP_BY
---- Query to display diffferent amounts grouped together with the summed amounts for each customer_id
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id;
ORDER BY customer_id DESC;






