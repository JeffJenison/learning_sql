/* **************************************************

LEARNING SQL
by: Alan Beaulieu
BOOK EXERCISES

Jeffrey Jenison
Started: 2023-01-23
Completed: 

Database: Sakila

************************************************** */

-- Exercise 3-1
-- Retrieve the actor ID, first name, and last name for all actors.
-- Sort by last name and then by first name

SELECT actor_id,
	first_name,
  last_name
FROM actor 

ORDER BY 3,2;


-- Exercise 3-2
-- Retrieve the actor ID, first name, and last name of all actors whose last name equals 'WILLIAMS' or 'DAVIS'

SELECT actor_id,
  first_name,
  last_name
FROM actor

WHERE last_name IN ('WILLIAMS', 'DAVIS');

-- Exercise 3-3
-- Write a query against the rental table that returns the IDs of the customers who rented
--a film on July 5, 2005 (use the rental.rental_date column, and you can use the
-- date() function to ignore the time component). Include a single row for each distinct
-- customer ID.

SELECT DISTINCT customer_id
FROM rental

WHERE DATE(rental_date) = '2005-07-05';


-- Exercise 3-4
-- Fill in the blanks (denoted by <#>) for this multitable querey to achieve the following
-- result (see book) 

SELECT c.email,
  r.return_date
FROM customer c 

INNER JOIN rental r 
ON c.customer_id = r.customer_id

WHERE date(r.rental_date) = '2005-06-14'
ORDER BY 2 desc;

-- Exercise 4-1
-- Filter for customer ID not equal to 5 and either an amount less than 8 or a payment
-- date of August 23, 2005

SELECT payment_id,
  customer_id,
  amount,
  DATE(payment_date)
FROM payment

WHERE payment_id BETWEEN 101 AND 120
  AND customer_id <> 5
  AND (amount > 8 or DATE(payment_date) = '2005-08-23');

-- Exercise 4-2
-- Filter for customer ID equal to 5 and not having either an amount greater than 6 or a 
-- payment date of June 19, 2005

SELECT payment_id,
  customer_id,
  amount,
  DATE(payment_date)
FROM payment

WHERE payment_id BETWEEN 101 AND 120
  AND customer_id = 5
  AND NOT (amount > 6 OR DATE(payment_date) = '2005-06-19');

-- Exercise 4-3
-- Construct a query that retrieves all rows from the payments table where the amount
-- is either 1.98, 7.98 or 9.98

SELECT *
FROM payment

WHERE amount IN (1.98, 7.98, 9.98);

-- Exercise 4-4
-- Construct a querey that finds all customers whose last name contains an A in the
-- second position and a W anywhere after the A.

SELECT *
FROM customer

WHERE last_name LIKE '_A%W%';