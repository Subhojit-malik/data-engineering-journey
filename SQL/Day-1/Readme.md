# 🚀 SQLBolt Day 01 - SQL Fundamentals

## 📖 Overview

Today I completed Exercises 1 to 4 from SQLBolt.

Topics Covered:

- SELECT
- FROM
- WHERE
- BETWEEN
- NOT BETWEEN
- LIKE
- DISTINCT
- ORDER BY
- LIMIT
- OFFSET

---

# 🎯 Learning Objectives

After completing these exercises, I can:

✅ Retrieve data from a table

✅ Select specific columns

✅ Filter records

✅ Search using patterns

✅ Sort query results

✅ Remove duplicates

✅ Limit returned rows

✅ Skip rows using OFFSET

---

# Exercise 1 - Basic Data Retrieval

## Concepts Learned

### SELECT

Used to retrieve data from a table.

Example:

```sql
SELECT title
FROM movies;
```

### FROM

Specifies which table to read data from.

### *

Returns all columns from a table.

Example:

```sql
SELECT *
FROM movies;
```

### Practice Questions

1. Find the title of each film.
2. Find the director of each film.
3. Find the title and director of each film.
4. Find the title and year of each film.
5. Find all information about each film.

---

# Exercise 2 - Filtering Data

## Concepts Learned

### WHERE

Filters rows based on a condition.

Example:

```sql
SELECT *
FROM movies
WHERE id = 6;
```

### BETWEEN

Returns values within a range.

Example:

```sql
WHERE year BETWEEN 2000 AND 2010
```

### NOT BETWEEN

Excludes values within a range.

Example:

```sql
WHERE year NOT BETWEEN 2000 AND 2010
```

### LIMIT

Returns only a specified number of rows.

Example:

```sql
LIMIT 5
```

### Practice Questions

1. Find the movie with row id 6.
2. Find movies released between 2000 and 2010.
3. Find movies not released between 2000 and 2010.
4. Find the first five Pixar movies and their release year.

---

# Exercise 3 - Pattern Matching

## Concepts Learned

### LIKE

Used for pattern matching.

Example:

```sql
WHERE title LIKE 'Toy Story%'
```

### Wildcard (%)

Represents any number of characters.

Example:

```text
Toy Story
Toy Story 2
Toy Story 3
```

### Not Equal (!=)

Used to exclude matching records.

Example:

```sql
WHERE director != 'John Lasseter'
```

### Practice Questions

1. Find all Toy Story movies.
2. Find all movies directed by John Lasseter.
3. Find all movies not directed by John Lasseter.
4. Find all WALL-* movies.

---

# Exercise 4 - Sorting and Pagination

## Concepts Learned

### DISTINCT

Removes duplicate values.

Example:

```sql
SELECT DISTINCT director
FROM movies;
```

### ORDER BY

Sorts results.

Example:

```sql
ORDER BY year DESC
```

### ASC

Ascending order.

### DESC

Descending order.

### OFFSET

Skips a specific number of rows.

Example:

```sql
LIMIT 5 OFFSET 5;
```

### Practice Questions

1. List all directors alphabetically without duplicates.
2. List the last four Pixar movies released.
3. List the first five Pixar movies sorted alphabetically.
4. List the next five Pixar movies sorted alphabetically.

---

# 🧠 SQL Syntax Summary

## SELECT

Retrieves data from a table.

```sql
SELECT column_name
FROM table_name;
```

## WHERE

Filters rows.

```sql
SELECT *
FROM movies
WHERE year = 2004;
```

## BETWEEN

Filters within a range.

```sql
WHERE year BETWEEN 2000 AND 2010
```

## LIKE

Pattern matching.

```sql
WHERE title LIKE 'Toy Story%'
```

## DISTINCT

Removes duplicate values.

```sql
SELECT DISTINCT director
FROM movies;
```

## ORDER BY

Sorts query results.

```sql
ORDER BY title ASC;
```

## LIMIT

Restricts row count.

```sql
LIMIT 5;
```

## OFFSET

Skips rows.

```sql
LIMIT 5 OFFSET 5;
```

---

# ✅ Day 01 Summary

Topics Learned:

- [x] SELECT
- [x] FROM
- [x] WHERE
- [x] BETWEEN
- [x] NOT BETWEEN
- [x] LIKE
- [x] DISTINCT
- [x] ORDER BY
- [x] LIMIT
- [x] OFFSET

📅 Date: 30-08-2026

📚 Platform: SQLBolt

🚀 Next Topic:

- Aggregate Functions
- GROUP BY
- HAVING
