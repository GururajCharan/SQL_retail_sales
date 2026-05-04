# 📊 SQL Retail Sales Analysis

## 🚀 Project Overview

This project focuses on analyzing retail sales data using SQL. It demonstrates a complete data analysis workflow including **data cleaning, exploration, and business insight generation**.

The goal is to extract meaningful insights from raw transactional data to support **data-driven decision-making**.

---

## 🗂️ Dataset Description

| Column Name     | Description           |
| --------------- | --------------------- |
| transactions_id | Unique transaction ID |
| sale_date       | Date of transaction   |
| sale_time       | Time of transaction   |
| customer_id     | Unique customer ID    |
| gender          | Customer gender       |
| age             | Customer age          |
| category        | Product category      |
| quantity        | Number of items sold  |
| price_per_unit  | Price per item        |
| cogs            | Cost of goods sold    |
| total_sale      | Total sale value      |

---

## 🧹 Data Cleaning

✔ Removed records with missing values
✔ Ensured data consistency
✔ Validated key columns before analysis

---

## 🔍 Exploratory Data Analysis

### 📌 Basic Insights

* Total number of sales
* Total customers
* Distinct product categories

### 📌 Business Questions Solved

* 📅 Sales on a specific date
* 👕 High-quantity clothing transactions
* 💰 Total sales per category
* 👥 Customer demographics (average age)
* 💸 High-value transactions (>1000)
* ⚧️ Transactions by gender & category

---

## 📈 Advanced Analysis

### 🏆 Best Selling Month Per Year

Used window functions to identify top-performing months.

### 👑 Top 5 Customers

Identified customers contributing the highest revenue.

### 🧍 Unique Customers Per Category

Measured customer distribution across categories.

### ⏰ Sales by Time Shift

* 🌅 Morning (<12)
* ☀️ Afternoon (12–17)
* 🌙 Evening (>17)

---

## 🛠️ SQL Skills Demonstrated

```sql
-- Example Query
SELECT 
    category,
    SUM(total_sale) AS net_sale,
    COUNT(*) AS total_orders
FROM retail_sales
GROUP BY category;
```

✔ Aggregations (`SUM`, `COUNT`, `AVG`)
✔ `GROUP BY`, `ORDER BY`
✔ Window Functions (`RANK()`)
✔ Date Functions (`EXTRACT`, `TO_CHAR`)
✔ CTEs (Common Table Expressions)

---

## 📊 Key Insights

✨ Identified top-performing categories
✨ Found high-value customers
✨ Discovered peak sales periods
✨ Analyzed customer behavior trends

---

## 🧰 Tech Stack

* 🗄️ Database: PostgreSQL / MySQL
* 💻 Language: SQL

---

## 📌 How to Run

```bash
# Step 1: Create table
Run the SQL script

# Step 2: Insert dataset

# Step 3: Execute queries
```
