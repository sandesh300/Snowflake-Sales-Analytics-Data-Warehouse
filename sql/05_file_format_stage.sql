-- ============================================
-- Create File Format
-- ============================================

CREATE OR REPLACE FILE FORMAT CSV_FORMAT
TYPE='CSV'
FIELD_DELIMITER=','
SKIP_HEADER=1;

SHOW FILE FORMATS;

-- ============================================
-- Create Internal Stage
-- ============================================

CREATE OR REPLACE STAGE SALES_STAGE
FILE_FORMAT = CSV_FORMAT;

SHOW STAGES;

LIST @SALES_STAGE;