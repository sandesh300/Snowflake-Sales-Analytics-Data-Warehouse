# Snowflake Sales Analytics Data Warehouse

An end-to-end Snowflake Data Warehouse project that demonstrates how to ingest, transform, and analyze sales data using Snowflake SQL. This project covers the complete data loading workflow from a CSV file to analytics using Snowflake features such as Warehouses, Databases, Schemas, Internal Stages, File Formats, Streams, Tasks, Time Travel, and Zero-Copy Cloning.

---

## 📌 Project Overview

This project simulates a real-world Sales Analytics Data Warehouse where sales data is loaded from a CSV file into Snowflake, transformed into a clean analytical table, and used to generate business insights.

The project follows the ELT (Extract, Load, Transform) approach commonly used in modern cloud data warehouses.

---

## 🛠️ Technologies Used

- Snowflake
- SQL
- Snowsight
- CSV Files
- Git & GitHub

---

## 📂 Project Structure

```
snowflake-sales-data-warehouse/
│
├── datasets/
│   └── sales.csv
│
├── sql/
│   ├── 01_create_warehouse.sql
│   ├── 02_create_database.sql
│   ├── 03_create_schema.sql
│   ├── 04_create_tables.sql
│   ├── 05_file_format_stage.sql
│   ├── 06_load_data.sql
│   ├── 07_transformations.sql
│   ├── 08_views.sql
│   ├── 09_streams_tasks.sql
│   └── 10_analytics_queries.sql
│
├── screenshots/
│
├── architecture.png
│
└── README.md
```

---

## 🏗️ Project Architecture

```
                     sales.csv
                         │
                         ▼
                 Internal Stage
                         │
                         ▼
                  File Format (CSV)
                         │
                         ▼
                    COPY INTO
                         │
                         ▼
                  SALES_RAW Table
                         │
                Data Transformation
                         │
                         ▼
                 SALES_CLEAN Table
                         │
              ┌──────────┴──────────┐
              │                     │
              ▼                     ▼
         Analytics View      SQL Queries
              │
              ▼
      Streams & Tasks (CDC)
```

---

## 🚀 Features Implemented

### Data Warehouse Setup

- Create Warehouse
- Create Database
- Create Schema
- Create Tables

### Data Ingestion

- Internal Stage
- File Format
- Upload CSV File
- COPY INTO Command

### Data Transformation

- Raw Sales Table
- Clean Sales Table
- Data Standardization
- Calculated Columns

### Analytics

- Total Revenue
- Total Orders
- Revenue by State
- Revenue by Category
- Top Selling Products
- Monthly Sales
- City-wise Revenue

### Advanced Snowflake Features

- Views
- Time Travel
- Zero-Copy Cloning
- Streams
- Tasks

---

## 📊 Database Objects

### Warehouse

```
SALES_WH
```

### Database

```
SALES_DB
```

### Schema

```
RAW
```

### Tables

- SALES_RAW
- SALES_CLEAN

### View

- SALES_SUMMARY

### Stage

- SALES_STAGE

### File Format

- CSV_FORMAT

### Stream

- SALES_STREAM

### Task

- SALES_TASK

---

## 📁 Dataset

The dataset contains sales transaction records with the following columns:

| Column | Description |
|---------|-------------|
| ORDER_ID | Unique Order ID |
| CUSTOMER_ID | Customer Identifier |
| CUSTOMER_NAME | Customer Name |
| PRODUCT | Product Name |
| CATEGORY | Product Category |
| QUANTITY | Quantity Purchased |
| PRICE | Unit Price |
| ORDER_DATE | Order Date |
| CITY | Customer City |
| STATE | Customer State |

---

## 📈 Sample Business Queries

- Calculate Total Revenue
- Find Total Orders
- Revenue by State
- Revenue by Category
- Top Selling Products
- Monthly Sales Trend
- City-wise Revenue Analysis

---

## 📚 Snowflake Concepts Covered

- Warehouses
- Databases
- Schemas
- Tables
- Internal Stages
- File Formats
- COPY INTO
- SQL Transformations
- Views
- Time Travel
- Zero-Copy Cloning
- Streams
- Tasks

---

## ▶️ How to Run the Project

### Step 1

Create the Warehouse

```
01_create_warehouse.sql
```

### Step 2

Create the Database

```
02_create_database.sql
```

### Step 3

Create the Schema

```
03_create_schema.sql
```

### Step 4

Create the Tables

```
04_create_tables.sql
```

### Step 5

Create File Format and Internal Stage

```
05_file_format_stage.sql
```

Upload the `sales.csv` file to the internal stage.

### Step 6

Load the CSV Data

```
06_load_data.sql
```

### Step 7

Transform Raw Data

```
07_transformations.sql
```

### Step 8

Create Analytics View

```
08_views.sql
```

### Step 9

Create Stream and Task

```
09_streams_tasks.sql
```

### Step 10

Execute Analytics Queries

```
10_analytics_queries.sql
```

---

## 🎯 Learning Outcomes

After completing this project, you will understand:

- Snowflake Architecture
- Data Warehouse Design
- Data Loading using COPY INTO
- Internal Stages
- File Formats
- SQL Transformations
- Analytical Queries
- Change Data Capture (Streams)
- Task Scheduling
- Time Travel
- Zero-Copy Cloning
- ELT Workflow in Snowflake

---

## 📸 Screenshots

Add screenshots for the following:

- Warehouse Creation
- Database and Schema
- Internal Stage
- Data Loading
- SALES_RAW Table
- SALES_CLEAN Table
- SALES_SUMMARY View
- Analytics Query Results
- Stream Output
- Task Details

---




