-- ============================================
-- Create Warehouse
-- ============================================

CREATE OR REPLACE WAREHOUSE SALES_WH
WITH
WAREHOUSE_SIZE='XSMALL'
AUTO_SUSPEND=60
AUTO_RESUME=TRUE;

USE WAREHOUSE SALES_WH;

SHOW WAREHOUSES;