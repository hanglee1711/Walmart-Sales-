-- 1. time_of_day
/* SELECT time,
(CASE 
    WHEN `time` BETWEEN "00:00:00" AND "12:00:00" THEN "Morning"
    WHEN `time` BETWEEN "12:01:00" AND "16:00:00" THEN "Afternoon"
    ELSE "Evening" 
END) AS time_of_day
FROM sales; */

-- ALTER TABLE sales ADD COLUMN time_of_day VARCHAR(20);

-- SET SQL_SAFE_UPDATES = 0;
/* UPDATE sales
SET time_of_day = (
    CASE 
        WHEN `time` BETWEEN "00:00:00" AND "12:00:00" THEN "Morning"
        WHEN `time` BETWEEN "12:01:00" AND "16:00:00" THEN "Afternoon"
        ELSE "Evening" 
    END
); */

-- 2. day_name
-- ALTER TABLE sales ADD COLUMN day_name VARCHAR(20);
-- UPDATE sales SET day_name = DAYNAME(date);

-- 3. month_name
-- ALTER TABLE sales ADD COLUMN month_name VARCHAR(20);
-- UPDATE sales SET month_name = MONTHNAME(date);
