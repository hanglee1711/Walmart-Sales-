-- 1. Check missing values
/* SELECT * FROM sales WHERE 
    "Invoice ID" IS NULL OR
    Branch IS NULL OR
    City IS NULL OR
    "Customer type" IS NULL OR
    Gender IS NULL OR
    "Product line" IS NULL OR
    "Unit price" IS NULL OR
    Quantity IS NULL OR
    "Tax 5%" IS NULL OR
    Total IS NULL OR
    Date IS NULL OR
    Time IS NULL OR
    Payment IS NULL OR
    COGS IS NULL OR
    "Gross margin percentage" IS NULL OR
    "Gross income" IS NULL OR
    Rating IS NULL; */
-- => There are no missing values in the dataset 

-- 2. Check duplicate records
-- SELECT DISTINCT(COUNT(*)) FROM sales;
-- => There are no duplicate records in the dataset



