# 📊 Retail Sales Analytics Dashboard
![dashboard preview](/images/retaildashboard.png)

## 🚀 Project Overview


### This project is an end-to-end Retail Sales Analytics Solution built using:

- SQL for data cleaning & preprocessing

- PostgreSQL for structured data storage

- Power BI for dashboard development

- DAX for advanced analytics and KPIs

The goal of this project was to transform raw retail transaction data into a professional, interactive business intelligence dashboard that provides actionable insights into sales performance, customer behavior, and revenue trends.

## 🗄️ Database & Data Engineering (PostgreSQL + SQL)
### 🔹 Data Storage

The dataset was stored and managed in a PostgreSQL relational database to ensure:

Structured schema design

Efficient querying

Data consistency

Scalability for BI tools

### 🔹 Data Cleaning & Preprocessing (SQL)

Using SQL, the following transformations were performed:

Removed null or invalid customer IDs

Cleaned inconsistent date formats

Filtered cancelled/negative invoices

Created calculated revenue column (quantity * unit_price)

Standardized column naming conventions (lowercase schema)

Handled duplicates

Optimized data types for performance

## 📈 Power BI Dashboard

The dashboard provides an executive-level summary of retail performance.

### 🔹 Key Dashboard Sections
#### 1️⃣ Sales Overview Panel

Total Sales: $8.9M

Total Orders: 397K

Total Customers: 4,338

Total Quantity Sold

#### 2️⃣ Sales Trend Analysis

Monthly Revenue Trend

Daily Sales Distribution

Quarter-based customer growth

#### 3️⃣ Customer Analytics

Monthly distinct customers

Repeated vs One-time customers

Retention indicators

#### 4️⃣ Product Performance

Top 3 Products by Revenue

Revenue contribution breakdown

#### 5️⃣ Interactive Monthly Analytics Panel

Custom Month Button Slicer (Jan–Dec)

Dynamic KPI updates

Performance-driven visual filtering

Interactive trend visualization

### 📊 DAX Measures & Business Logic

Advanced DAX measures were created to power dynamic analytics:

#### 🔹 Average Order Value (AOV)
![AOV](/images/AOV%20DAX.png)

#### 🔹 Previous Month Revenue
![pmr](/images/previousmonthdax.png)

#### 🔹 Order Per Customer
![OPC](/images/orderpercus.png)

#### 🔹 Customer Type
![repeat](/images/custormertype.png)

#### New Date Table
![date](/images/newdatetabledax.png)

## 🧠 Skills Demonstrated
### 🔹 SQL & Data Engineering

Data cleaning & transformation

Conditional filtering

Calculated columns

Data validation

Query optimization

Schema structuring

### 🔹 PostgreSQL

Database creation

Table management

Data integrity handling

Relational data modeling

### 🔹 Power BI

Data modeling

Relationship management

Date table implementation

Interactive slicers

Edit interactions

Executive KPI layout design

Visual storytelling

### 🔹 DAX

Aggregation functions

Time intelligence (PREVIOUSMONTH)

Context transition (CALCULATE)

FILTER logic

DIVIDE for safe calculations

Customer segmentation logic

### 🔹 Business Intelligence Concepts

Revenue analysis

Customer retention metrics

AOV calculation

Month-over-Month growth

KPI performance monitoring

Executive dashboard design

## 🛠️ Tech Stack

### SQL

### PostgreSQL

### Power BI

### DAX

### Data Modeling

### Business Intelligence
