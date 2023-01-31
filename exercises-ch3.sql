/* **************************************************

LEARNING SQL
BOOK EXERCISES

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