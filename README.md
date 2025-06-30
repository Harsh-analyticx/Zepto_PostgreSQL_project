# Zepto_PostgreSQL_project
# 🛒 Zepto Sales Analysis with PostgreSQL

This project is a simulation of a sales and inventory analysis for **Zepto**, an online grocery delivery platform. Using PostgreSQL, we analyze various aspects of the product catalog — including stock status, discount performance, and potential revenue — to demonstrate strong SQL data analysis and cleaning capabilities.

---

## 📁 1. Project Overview

This project involves:
- Creating a structured table to store product data.
- Cleaning and validating raw input values (e.g., correcting units, removing nulls).
- Performing analytical queries to extract business insights.
- Demonstrating practical use-cases for inventory and pricing strategy.

### ✅ Key Goals:
- Clean and transform messy or incomplete data.
- Extract insights on product pricing, stock, and revenue.
- Identify value-for-money products and inefficient stock.

---

## 🧾 2. Database Design

### `zepto` Table Schema

```sql
CREATE TABLE zepto (
  sku_id SERIAL PRIMARY KEY,
  category VARCHAR(120),
  name VARCHAR(150) NOT NULL,
  mrp NUMERIC(8,2),
  discountpercent NUMERIC(8,2),
  availabequantity INTEGER,
  discountedsellingprice NUMERIC(8,2),
  weightingrams INTEGER,
  outofstock BOOLEAN,
  quantity INTEGER
);
