-- ============================================
-- Total Revenue
-- ============================================

SELECT
SUM(QUANTITY*PRICE) AS TOTAL_REVENUE
FROM SALES_RAW;

-- ============================================
-- Total Orders
-- ============================================

SELECT
COUNT(*) AS TOTAL_ORDERS
FROM SALES_RAW;

-- ============================================
-- Revenue by State
-- ============================================

SELECT

STATE,

SUM(QUANTITY*PRICE) AS REVENUE

FROM SALES_RAW

GROUP BY STATE

ORDER BY REVENUE DESC;

-- ============================================
-- Revenue by Category
-- ============================================

SELECT

CATEGORY,

SUM(QUANTITY*PRICE) AS REVENUE

FROM SALES_RAW

GROUP BY CATEGORY

ORDER BY REVENUE DESC;

-- ============================================
-- Top Selling Products
-- ============================================

SELECT

PRODUCT,

SUM(QUANTITY) AS TOTAL_QUANTITY

FROM SALES_RAW

GROUP BY PRODUCT

ORDER BY TOTAL_QUANTITY DESC;

-- ============================================
-- Monthly Sales
-- ============================================

SELECT

MONTH(ORDER_DATE) AS MONTH,

SUM(QUANTITY*PRICE) AS SALES

FROM SALES_RAW

GROUP BY MONTH

ORDER BY MONTH;

-- ============================================
-- City-wise Revenue
-- ============================================

SELECT

CITY,

SUM(QUANTITY*PRICE) AS REVENUE

FROM SALES_RAW

GROUP BY CITY

ORDER BY REVENUE DESC;