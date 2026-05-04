# 📊 Retail Sales Analysis SQL Project

![SQL](https://img.shields.io/badge/SQL-PostgreSQL-blue)
![Project](https://img.shields.io/badge/Project-Data%20Analysis-green)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Level](https://img.shields.io/badge/Level-Beginner-orange)

---

## 🚀 Project Overview

**Project Title**: Retail Sales Analysis
**Level**: Beginner
**Database**: `p1_retail_db`

This project demonstrates essential SQL skills used in real-world data analysis. It covers the complete workflow including **database setup, data cleaning, exploratory data analysis (EDA), and business insights generation**.

It is designed for beginners aiming to build a strong foundation in SQL and data analytics.

---

## 🎯 Objectives

* 🏗️ Set up a structured retail sales database
* 🧹 Clean and preprocess raw data
* 🔍 Perform exploratory data analysis (EDA)
* 📊 Solve business problems using SQL queries
* 💡 Generate actionable insights

---

## 🗂️ Dataset Description

| Column Name     | Description             |
| --------------- | ----------------------- |
| transactions_id | Unique transaction ID   |
| sale_date       | Date of transaction     |
| sale_time       | Time of transaction     |
| customer_id     | Unique customer ID      |
| gender          | Customer gender         |
| age             | Customer age            |
| category        | Product category        |
| quantity        | Items sold              |
| price_per_unit  | Price per item          |
| cogs            | Cost of goods sold      |
| total_sale      | Total transaction value |

---

## 🏗️ Database Setup

```sql
CREATE DATABASE p1_retail_db;

CREATE TABLE retail_sales (
    transactions_id INT PRIMARY KEY,
    sale_date DATE,
    sale_time TIME,
    customer_id INT,
    gender VARCHAR(15),
    age INT,
    category VARCHAR(35),
    quantity INT,
    price_per_unit FLOAT,
    cogs FLOAT,
    total_sale FLOAT
);
```

---

## 🧹 Data Cleaning

✔ Removed records with NULL values
✔ Ensured data consistency
✔ Validated dataset before analysis

```sql
DELETE FROM retail_sales
WHERE 
    sale_date IS NULL OR sale_time IS NULL OR customer_id IS NULL OR 
    gender IS NULL OR age IS NULL OR category IS NULL OR 
    quantity IS NULL OR price_per_unit IS NULL OR cogs IS NULL OR total_sale IS NULL;
```

---

## 🔍 Exploratory Data Analysis

### 📌 Basic Insights

* Total number of sales
* Total unique customers
* Distinct product categories

### 📌 Sample Query

```sql
SELECT 
    category,
    SUM(total_sale) AS net_sale,
    COUNT(*) AS total_orders
FROM retail_sales
GROUP BY category;
```

---

## 📈 Business Analysis Queries

### 🏆 Key Problems Solved

* 📅 Sales on a specific date
* 👕 High-quantity clothing transactions
* 💰 Total sales per category
* 👥 Average age of customers (category-wise)
* 💸 High-value transactions (>1000)
* ⚧️ Transactions by gender and category
* 📊 Monthly sales trends & best-performing month
* 👑 Top 5 customers by total sales
* 🧍 Unique customers per category
* ⏰ Sales distribution by time shifts

---

## 🔥 Advanced SQL Concepts Used

✔ Aggregations (`SUM`, `COUNT`, `AVG`)
✔ `GROUP BY`, `ORDER BY`, `LIMIT`
✔ Window Functions (`RANK() OVER`)
✔ Date Functions (`EXTRACT`, `TO_CHAR`)
✔ CTEs (Common Table Expressions)

---

## 📊 Key Insights

✨ Identified top-performing product categories
✨ Discovered high-value customers
✨ Analyzed peak sales months
✨ Understood customer purchase behavior
✨ Observed time-based sales patterns

---

## 📑 Reports Generated

* 📊 Sales Summary Report
* 📈 Monthly Trend Analysis
* 👥 Customer Insights Report

---

## 🧰 Tech Stack

* 🗄️ Database: PostgreSQL / MySQL
* 💻 Language: SQL

---

## ⚙️ How to Use

```bash
# 1. Clone the repository
git clone <your-repo-link>

# 2. Create database & table
Run the SQL script

# 3. Insert dataset

# 4. Execute queries
```

---

## 🎯 Project Value

✔ Beginner-friendly SQL project
✔ Strong portfolio addition
✔ Covers real-world business scenarios

