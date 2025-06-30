
# 🛒 Zepto Sales Analysis with PostgreSQL

This project is a simulation of a sales and inventory analysis for **Zepto**, an online grocery delivery platform. Using PostgreSQL, we analyze various aspects of the product catalog — including stock status, discount performance, and potential revenue — to demonstrate strong SQL data analysis and cleaning capabilities.

---
Key Columns:
sku_id: Unique product identifier

name: Product name

category: Product category (e.g., Fruits, Beverages)

mrp: Maximum Retail Price

discountpercent: % discount on MRP

discountedsellingprice: Final price after discount

weightingrams: Product weight

availabequantity: Stock quantity available

outofstock: Boolean flag (TRUE if not available)

quantity: Units of the product (for future expansion)


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

# 🔎 Next Steps: Advanced Analysis

To deepen the analysis and simulate real-world data-driven decision-making, here are some advanced steps planned or recommended for this project:

## 📦 1. Basket Value & Product Bundling
Analyze combinations of products frequently purchased together and calculate:
- Average basket value per category
- Top bundled categories (e.g., Fruits + Dairy)

## 📉 2. Price Elasticity Simulation
Estimate how demand (quantity sold) responds to price changes by:
- Modeling impact of MRP vs discounted price
- Segmenting price-sensitive vs inelastic products

## 🛍️ 3. Seasonal Stock Trends
If time-series or dated transaction data is added:
- Detect seasonal demand spikes (e.g., Summer drinks, Winter dry fruits)
- Recommend stock adjustments for peak periods

## 🚚 4. Supply Chain Optimization
Based on `weightingrams` and `availabequantity`, calculate:
- Total shipping weight per category
- Propose warehouse restocking priorities

## 💰 5. Profit Margin Analysis
Add a `cost_price` column (if available) to calculate:
- Gross profit = Selling price – Cost price
- High-profit vs low-profit SKUs across categories

---

# 🧠 Potential Enhancements

- 🔄 **Automation**: Use Python scripts to automate data loading and reporting
- 📈 **Dashboards**: Integrate with Power BI or Tableau for dynamic visualization
- 🧪 **Machine Learning**: Forecast out-of-stock probability or recommend optimal pricing

---

Stay tuned for updates! 📌  
Feel free to fork, contribute, or raise issues to improve this project further.


