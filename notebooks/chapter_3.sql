/* *********************************

LEARNING NOTEBOOK
Learning SQL by Alan Beaulieu

Jeffrey Jenison
Started on: 2023-01-23

********************************* */

/* CHAPTER 3 */

-- Empty query

SELECT last_name, first_name
FROM customer
WHERE last_name = 'ZIEGLER';

-- Select All from Tables
SELECT * 
FROM category;

SELECT *
FROM language;

-- Selecting individual cloumns
SELECT name 
FROM language;

-- Adding to select statements
SELECT language_id,
    'COMMON' language_usage,
    language_id * 3.1415927 lang_pi_value,
    upper(name) language_name
FROM language;

-- Built in functions
SELECT version(),
    user(),
    database();


