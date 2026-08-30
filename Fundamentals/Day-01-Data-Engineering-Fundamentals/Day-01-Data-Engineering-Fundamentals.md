# 🚀 Day 01 - Data Engineering Fundamentals

> My Data Engineering Learning Journey
>
> Date:30-08-2026

---

# 📚 Table of Contents

1. What is Data?
2. What is a Database?
3. What is a Data Warehouse?
4. What is ETL?
5. What is a Data Pipeline?
6. What is OLTP?
7. What is OLAP?
8. OLTP vs OLAP
9. Complete Data Engineering Flow
10. Role of a Data Engineer
11. Interview Questions
12. English Speaking Practice
13. Quick Revision
14. Key Takeaways

---

# 1️⃣ What is Data?

Data is a collection of raw facts and figures.

### Example

```text
Subhojit
25
Kolkata
```

These values alone are called data.

When data is organized and given meaning, it becomes information.

### Example

```text
Name     : Subhojit
Age      : 25
City     : Kolkata
```

---

## Why is Data Important?

- Helps businesses make decisions
- Tracks company performance
- Identifies trends and patterns
- Supports reporting and analytics

---

# 2️⃣ What is a Database?

A Database is an organized collection of data used to store, manage, update, and retrieve information efficiently.

---

## Real-Life Example

A school stores:

- Student Name
- Roll Number
- Marks
- Attendance

All these records are stored in a database.

---

## Example Table

```text
Students
-----------------------------------
ID     Name        City
-----------------------------------
1      Subhojit    Kolkata
2      Rahul       Delhi
3      Priya       Mumbai
```

---

## Why Do We Need Databases?

Without Database:

❌ Data scattered everywhere

❌ Difficult to search

❌ Duplicate records

❌ High risk of errors

With Database:

✅ Organized storage

✅ Fast retrieval

✅ Easy updates

✅ Better security

---

## Popular Databases

### Relational Databases

- MySQL
- PostgreSQL
- SQL Server
- Oracle
- SQLite

### NoSQL Databases

- MongoDB
- Cassandra
- DynamoDB

---

## Interview Definition

> A database is an organized collection of data used for efficient storage, retrieval, and management of information.

---

# 3️⃣ What is a Data Warehouse?

A Data Warehouse is a centralized repository that stores historical data collected from multiple sources for reporting and analytics.

---

## Real-Life Example

A company has:

```text
Sales Database
Customer Database
Product Database
HR Database
```

Management asks:

```text
Which product generated the highest revenue
during the last 5 years?
```

Data from all systems is collected into a Data Warehouse to answer such questions.

---

## Data Warehouse Architecture

```text
Sales System
Customer System
ERP System
     ↓
    ETL
     ↓
Data Warehouse
     ↓
Analytics / Reports
```

---

## Characteristics

### Centralized Storage

Stores data from multiple systems.

### Historical Data

Keeps years of data.

### Read Optimized

Designed for reporting and analysis.

### Business Focused

Supports business decisions.

---

## Popular Data Warehouses

- Snowflake
- Amazon Redshift
- Google BigQuery
- Azure Synapse
- Databricks Lakehouse

---

## Interview Definition

> A Data Warehouse is a centralized storage system designed for reporting, analytics, and business intelligence using historical data.

---

# 4️⃣ What is ETL?

ETL stands for:

```text
E = Extract
T = Transform
L = Load
```

ETL is the process of collecting data from source systems, modifying it, and loading it into a target system.

---

# Step 1: Extract

Data is collected from different sources.

### Sources

```text
Database
CSV Files
Excel Files
API
Applications
Cloud Storage
```

---

# Step 2: Transform

Data is cleaned and converted into a usable format.

### Before

```text
subhojit
SUBHOJIT
Subhojit
```

### After

```text
Subhojit
```

---

## Common Transformations

- Remove duplicates
- Handle null values
- Standardize formats
- Data validation
- Business calculations

---

# Step 3: Load

The transformed data is loaded into:

```text
Data Warehouse
Database
Data Lake
Reporting System
```

---

## ETL Workflow

```text
Source Systems
      ↓
   Extract
      ↓
  Transform
      ↓
     Load
      ↓
Data Warehouse
```

---

## Interview Definition

> ETL is a process used to extract data from source systems, transform it into the required format, and load it into a target system.

---

# 5️⃣ What is a Data Pipeline?

A Data Pipeline is an automated workflow that moves data from one system to another.

Think of it as the complete journey of data.

---

## Example Pipeline

```text
MySQL Database
       ↓
      ETL
       ↓
Data Warehouse
       ↓
 Power BI
       ↓
Dashboard
```

---

## Water Pipeline Analogy

```text
River
  ↓
Treatment Plant
  ↓
Home
```

Data Pipeline:

```text
Source
  ↓
Processing
  ↓
Destination
```

---

## Benefits of Data Pipelines

✅ Automation

✅ Scalability

✅ Faster Reporting

✅ Better Data Quality

✅ Less Manual Effort

---

## Popular Tools

- Apache Airflow
- Azure Data Factory
- Databricks Workflows
- AWS Glue
- Informatica

---

## Interview Definition

> A Data Pipeline is a series of automated processes used to collect, process, and move data from source systems to destination systems.

---

# 6️⃣ What is OLTP?

OLTP stands for:

```text
Online Transaction Processing
```

OLTP systems handle day-to-day business operations and transactions.

---

## Examples

### Banking

```text
Deposit Money
Withdraw Money
Transfer Money
```

### E-Commerce

```text
Place Order
Update Cart
Make Payment
```

### Railway Reservation

```text
Book Ticket
Cancel Ticket
```

---

## Characteristics

- Fast response time
- Supports many users
- Current data
- Frequent insert/update/delete operations

---

## Example SQL

```sql
INSERT INTO Orders
VALUES (101,'Laptop',50000);
```

This is an OLTP operation.

---

## Interview Definition

> OLTP is a system designed to efficiently process real-time business transactions.

---

# 7️⃣ What is OLAP?

OLAP stands for:

```text
Online Analytical Processing
```

OLAP systems are used for reporting, analysis, and decision-making.

---

## Business Questions Answered by OLAP

```text
Top-selling product?

Highest revenue city?

Monthly sales trend?

Year-over-year growth?
```

---

## Characteristics

- Historical data
- Complex queries
- Read intensive
- Reporting focused
- Analytics driven

---

## Example SQL

```sql
SELECT city,
SUM(revenue)
FROM sales
GROUP BY city;
```

This is an OLAP query.

---

## Examples

- Power BI Reports
- Tableau Dashboards
- Data Warehouse Analytics
- Management Reports

---

## Interview Definition

> OLAP is a system designed for analyzing large volumes of historical data to support business intelligence and reporting.

---

# 8️⃣ OLTP vs OLAP

## Comparison

### OLTP

```text
Purpose      : Run business operations
Data         : Current data
Users        : Customers, Employees
Queries      : Simple
Operations   : Insert, Update, Delete
Examples     : Banking, Amazon Orders
```

### OLAP

```text
Purpose      : Business analysis
Data         : Historical data
Users        : Analysts, Managers
Queries      : Complex
Operations   : Read and Analyze
Examples     : Power BI, Tableau
```

---

## Easy Interview Answer

```text
OLTP runs the business.

OLAP analyzes the business.
```

---

# 9️⃣ Complete Data Engineering Flow

```text
Source Systems
(Database, API, CSV)
          ↓
       Extract
          ↓
      Transform
          ↓
         Load
          ↓
   Data Warehouse
          ↓
 Analytics Tools
          ↓
 Reports & Dashboards
```

---

# 🔟 Role of a Data Engineer

A Data Engineer is responsible for:

### Data Collection

Collecting data from multiple sources.

### Data Transformation

Cleaning and preparing data.

### Data Storage

Loading data into warehouses and lakes.

### Pipeline Development

Building automated workflows.

### Data Availability

Making data accessible for analysts and business users.

---

## What Does a Data Engineer Do?

> A Data Engineer builds and maintains data pipelines that collect, transform, and load data into data warehouses for analytics and reporting.

---

# 🎤 Interview Questions

## Q1. What is a Database?

**Answer:**

A database is an organized collection of data used for efficient storage, retrieval, and management.

---

## Q2. What is a Data Warehouse?

**Answer:**

A data warehouse is a centralized repository used to store historical data from multiple sources for reporting and analytics.

---

## Q3. What is ETL?

**Answer:**

ETL stands for Extract, Transform, and Load. It is the process of collecting, cleaning, and loading data into a target system.

---

## Q4. What is a Data Pipeline?

**Answer:**

A data pipeline is an automated process that moves data from source systems to destination systems.

---

## Q5. Difference Between OLTP and OLAP?

**Answer:**

OLTP is used for day-to-day transactions, while OLAP is used for reporting and analytics.

---

# 🗣️ English Speaking Practice

Read aloud daily.

### Self Introduction

> Hello, my name is Subhojit. I work as an Associate at Cognizant. I am learning Data Engineering to improve my skills and grow my career.

### Database

> A database stores data in an organized manner.

### Data Warehouse

> A data warehouse stores historical data from multiple sources for reporting and analytics.

### ETL

> ETL stands for Extract, Transform, and Load.

### Data Pipeline

> A data pipeline automates the movement of data between systems.

### OLTP

> OLTP systems process daily business transactions.

### OLAP

> OLAP systems help businesses analyze historical data.

---

# ⚡ Quick Revision

```text
Database
→ Stores operational data

Data Warehouse
→ Stores historical data

ETL
→ Extract, Transform, Load

Data Pipeline
→ Automated movement of data

OLTP
→ Daily transactions

OLAP
→ Reporting and analysis

Data Engineer
→ Builds data pipelines
```

---

# 🧠 Memory Trick

```text
Database stores data.

ETL moves data.

Pipeline automates data movement.

Data Warehouse stores history.

OLTP runs the business.

OLAP analyzes the business.

Data Engineers connect everything together.
```

---

# ✅ Day 01 Completed

Topics Covered:

- [x] Database
- [x] Data Warehouse
- [x] ETL
- [x] Data Pipeline
- [x] OLTP
- [x] OLAP
- [x] OLTP vs OLAP

---

# 🎯 Next Learning Plan (Day 02)

```sql
SELECT
WHERE
ORDER BY
DISTINCT
LIMIT
```

Goal:

✅ Write basic SQL queries

✅ Solve first SQL practice questions

✅ Push Day-02 notes to GitHub

---

## 💡 Final Learning Statement

> I completed Day 01 of my Data Engineering journey. I learned the fundamentals of databases, data warehouses, ETL processes, data pipelines, OLTP systems, and OLAP systems. These concepts form the foundation of modern data engineering.
