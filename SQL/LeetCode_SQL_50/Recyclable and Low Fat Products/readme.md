# Recyclable and Low Fat Products

## Problem

Table: `Products`

```text
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| product_id  | int     |
| low_fats    | enum    |
| recyclable  | enum    |
+-------------+---------+
```

### Description

- `product_id` is the primary key.
- `low_fats` is an ENUM with values:
  - `'Y'` → Product is low fat
  - `'N'` → Product is not low fat
- `recyclable` is an ENUM with values:
  - `'Y'` → Product is recyclable
  - `'N'` → Product is not recyclable

### Task

Find the IDs of products that are **both low fat and recyclable**.

Return the result table in any order.

---

## Example

### Input

```text
Products
+------------+----------+------------+
| product_id | low_fats | recyclable |
+------------+----------+------------+
| 0          | Y        | N          |
| 1          | Y        | Y          |
| 2          | N        | Y          |
| 3          | Y        | Y          |
| 4          | N        | N          |
+------------+----------+------------+
```

### Output

```text
+------------+
| product_id |
+------------+
| 1          |
| 3          |
+------------+
```

### Explanation

- Product **1** is low fat (`Y`) and recyclable (`Y`).
- Product **3** is low fat (`Y`) and recyclable (`Y`).
- All other products fail at least one condition.

---

## Approach

Use the `WHERE` clause to filter products that satisfy both conditions:

1. `low_fats = 'Y'`
2. `recyclable = 'Y'`

The `AND` operator ensures that only products meeting **both** requirements are returned.

---

## Complexity Analysis

- **Time Complexity:** `O(n)`
- **Space Complexity:** `O(1)`

Where `n` is the number of rows in the `Products` table.

---

## Key SQL Concepts

### Using Multiple Conditions

```sql
WHERE low_fats = 'Y'
  AND recyclable = 'Y'
```

The `AND` operator returns rows only when **all conditions are true**.

✅ Low Fat (`Y`) + Recyclable (`Y`) → Included  
❌ Low Fat (`N`) or Recyclable (`N`) → Excluded

---

## Tags

`SQL` `Database` `Filtering` `WHERE Clause` `AND Operator`
