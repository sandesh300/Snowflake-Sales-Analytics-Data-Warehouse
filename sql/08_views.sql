-- ============================================
-- Sales Summary View
-- ============================================

CREATE OR REPLACE VIEW SALES_SUMMARY AS

SELECT

CATEGORY,

SUM(TOTAL_AMOUNT) AS REVENUE,

SUM(QUANTITY) AS TOTAL_ITEMS

FROM SALES_CLEAN

GROUP BY CATEGORY;

SELECT *

FROM SALES_SUMMARY;