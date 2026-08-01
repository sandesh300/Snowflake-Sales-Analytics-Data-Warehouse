-- ============================================
-- Stream
-- ============================================

CREATE OR REPLACE STREAM SALES_STREAM
ON TABLE SALES_CLEAN;

INSERT INTO SALES_CLEAN
VALUES
(
1011,
211,
'Rohit Sharma',
'Laptop',
'Electronics',
1,
70000,
70000,
'2026-03-01',
'Pune',
'Maharashtra'
);

SELECT *
FROM SALES_STREAM;

-- ============================================
-- Task
-- ============================================

ALTER WAREHOUSE SALES_WH RESUME;

CREATE OR REPLACE TASK SALES_TASK

WAREHOUSE=SALES_WH

SCHEDULE='USING CRON 0 * * * * UTC'

AS

INSERT INTO SALES_CLEAN

SELECT *

FROM SALES_RAW

WHERE ORDER_ID NOT IN

(
SELECT ORDER_ID
FROM SALES_CLEAN
);

ALTER TASK SALES_TASK RESUME;

SHOW TASKS;