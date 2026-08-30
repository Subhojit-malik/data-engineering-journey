/*
====================================================
SQLBolt Day 01
Author : Subhojit
Topic  : SQL Fundamentals
Date   : 30-08-2026
====================================================
*/

----------------------------------------------------
-- Exercise 1
-- Basic Data Retrieval
----------------------------------------------------

-- Question 1
-- Find the title of each film

SELECT title
FROM movies;

----------------------------------------------------

-- Question 2
-- Find the director of each film

SELECT director
FROM movies;

----------------------------------------------------

-- Question 3
-- Find the title and director of each film

SELECT title,
       director
FROM movies;

----------------------------------------------------

-- Question 4
-- Find the title and year of each film

SELECT title,
       year
FROM movies;

----------------------------------------------------

-- Question 5
-- Find all information about each film

SELECT *
FROM movies;

----------------------------------------------------
-- Exercise 2
-- Filtering Data
----------------------------------------------------

-- Question 1
-- Find the movie with row id 6

SELECT *
FROM movies
WHERE id = 6;

----------------------------------------------------

-- Question 2
-- Find movies released between 2000 and 2010

SELECT *
FROM movies
WHERE year BETWEEN 2000 AND 2010;

----------------------------------------------------

-- Question 3
-- Find movies not released between 2000 and 2010

SELECT *
FROM movies
WHERE year NOT BETWEEN 2000 AND 2010;

----------------------------------------------------

-- Question 4
-- Find the first five Pixar movies and their release year

SELECT title,
       year
FROM movies
LIMIT 5;

----------------------------------------------------
-- Exercise 3
-- Pattern Matching
----------------------------------------------------

-- Question 1
-- Find all Toy Story movies

SELECT *
FROM movies
WHERE title LIKE 'Toy Story%';

----------------------------------------------------

-- Question 2
-- Find all movies directed by John Lasseter

SELECT *
FROM movies
WHERE director = 'John Lasseter';

----------------------------------------------------

-- Question 3
-- Find all movies not directed by John Lasseter

SELECT *
FROM movies
WHERE director != 'John Lasseter';

----------------------------------------------------

-- Question 4
-- Find all WALL-* movies

SELECT *
FROM movies
WHERE title LIKE 'WALL-%';

----------------------------------------------------
-- Exercise 4
-- Sorting and Pagination
----------------------------------------------------

-- Question 1
-- List all directors alphabetically without duplicates

SELECT DISTINCT director
FROM movies
ORDER BY director ASC;

----------------------------------------------------

-- Question 2
-- List the last four Pixar movies released

SELECT *
FROM movies
ORDER BY year DESC
LIMIT 4;

----------------------------------------------------

-- Question 3
-- List the first five Pixar movies sorted alphabetically

SELECT *
FROM movies
ORDER BY title ASC
LIMIT 5;

----------------------------------------------------

-- Question 4
-- List the next five Pixar movies sorted alphabetically

SELECT *
FROM movies
ORDER BY title ASC
LIMIT 5
OFFSET 5;
