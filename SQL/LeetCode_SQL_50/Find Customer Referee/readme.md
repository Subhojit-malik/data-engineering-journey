# Customers Who Were Not Referred by Customer 2

## Problem

Table: `Customer`

```text
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| referee_id  | int     |
+-------------+---------+
```

- `id` is the primary key.
- Each row contains a customer's ID, name, and the ID of the customer who referred them.
- `referee_id` can be `NULL`, meaning the customer was not referred by anyone.

### Task

Find the names of customers who are:

1. Referred by a customer whose `id != 2`
2. Not referred by any customer (`referee_id IS NULL`)

Return the result in any order.

---

## Example

### Input

```text
Customer
+----+------+------------+
| id | name | referee_id |
+----+------+------------+
| 1  | Will | NULL       |
| 2  | Jane | NULL       |
| 3  | Alex | 2          |
| 4  | Bill | NULL       |
| 5  | Zack | 1          |
| 6  | Mark | 2          |
+----+------+------------+
```

### Output

```text
+------+
| name |
+------+
| Will |
| Jane |
| Bill |
| Zack |
+------+
```

### Explanation

- `Will`, `Jane`, and `Bill` have no referee (`referee_id IS NULL`).
- `Zack` was referred by customer `1`, which is not `2`.
- `Alex` and `Mark` were referred by customer `2`, so they are excluded.

---

## Approach

We need to include:

- Customers whose `referee_id` is not `2`
- Customers whose `referee_id` is `NULL`

Since comparisons with `NULL` return unknown in SQL, we must explicitly check for `NULL` using `IS NULL`.

to include customers without a referee.
