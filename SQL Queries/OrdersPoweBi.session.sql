-- Print a list of the tables in the database and save the result to a csv file for your reference.
-- Print a list of the columns in the orders table and save the result to a csv file called orders_columns.csv
-- Repeat the same process for each other table in the database, saving the results to a csv file with the same name as the table


SELECT table_name FROM information_schema.tables WHERE table_schema = 'public';

SELECT *
FROM dim_customer

SELECT column_name
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = N'orders'

SELECT column_name
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = N'dim_customer'

SELECT column_name
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = N'dim_date'

SELECT column_name
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = N'dim_product'

SELECT column_name
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = N'dim_store'


SELECT *

FROM dim_store

-- How many staff are there in all of the UK stores? 
SELECT SUM(staff_numbers)

FROM dim_store
WHERE country = 'UK'

-- Which month in 2022 has had the highest revenue?

SELECT *

FROM dim_date

SELECT *

FROM orders
