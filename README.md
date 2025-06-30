# Zepto_PostgreSQL_project
🛒 Zepto Sales Analysis using PostgreSQL
This project showcases a data analysis pipeline using SQL on Zepto's product inventory dataset. It simulates real-world retail data, including MRP, discounts, availability, and stock status of various SKUs (stock-keeping units). The goal is to perform insightful analysis, data cleaning, and business intelligence operations to uncover trends and anomalies in retail sales.

📌 Project Objective
To explore and clean the Zepto inventory dataset.

To gain insights on product pricing, stock status, revenue potential, and category performance.

To simulate business use-cases for decision-making using SQL queries.

🧾 Database Schema
A single table named zepto is created to store product information.

sql
Copy
Edit
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
📊 Key Analytical Queries
🔍 Data Exploration
Count of total records

Preview of sample data

Identification of NULL values

Distinct product categories

In-stock vs out-of-stock distribution

Duplicate product names

🧹 Data Cleaning
Removal of records with MRP = 0

Conversion of paise to rupees

Fixing incorrectly formatted values

📈 Business Insights
Q1. Top 10 Best-Value Products
Products offering the highest discounts.

Q2. Premium Products Out of Stock
High-MRP products that are currently unavailable.

Q3. Estimated Revenue per Category
Potential revenue based on available quantity and discounted price.

Q4. High-Value, Low-Discount Products
Products priced over ₹500 but with discounts under 10%.

Q5. Top 5 Discounted Categories
Categories offering the highest average discount.

Q6. Price Per Gram Value Analysis
Price efficiency for products weighing over 100g.

Q7. Weight Category Segmentation
Grouping products as 'Low', 'Medium', or 'Bulk' based on weight.

Q8. Total Inventory Weight by Category
Calculating overall inventory weight to understand stock distribution.

⚙️ Technologies Used
Database: PostgreSQL

Language: SQL

📁 Usage
Clone the repository

Import the schema into a PostgreSQL environment

Load your dataset into the zepto table

Execute the provided SQL scripts for analysis

💡 Key Takeaways
Demonstrates practical SQL skills for business analysis

Covers essential data cleaning, aggregation, and transformation tasks

Suitable for portfolio projects and case study interviews in data analytics or BI roles

🧑‍💻 Author
Harsh Vishwakarma

If you found this project useful, consider ⭐ starring the repo and sharing it!
