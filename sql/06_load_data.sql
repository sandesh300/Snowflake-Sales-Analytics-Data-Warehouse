-- ============================================
-- Load CSV into Table
-- ============================================

COPY INTO SALES_RAW
FROM @SALES_STAGE
FILE_FORMAT=(FORMAT_NAME=CSV_FORMAT)
ON_ERROR='CONTINUE';

SELECT *
FROM SALES_RAW;

SELECT COUNT(*)
FROM SALES_RAW;