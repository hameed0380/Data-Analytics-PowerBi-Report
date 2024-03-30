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

-- multiplying the number of sales 
-- and the sales price or average service price

SELECT ROUND(SUM(orders.product_quantity * dim_product.sale_price)::numeric, 1) as revenue,
        EXTRACT(MONTH FROM orders.order_date::date) as month

FROM orders

INNER JOIN dim_product on dim_product.product_code = orders.product_code

WHERE EXTRACT(YEAR FROM orders.order_date::date) = 2022
GROUP BY month
ORDER BY revenue DESC;


SELECT *

FROM dim_product

-- Which German store type had the highest revenue for 2022? 

SELECT ROUND(SUM(orders.product_quantity * dim_product.sale_price)::numeric, 1) as revenue, 
        dim_store.store_type

FROM orders

INNER JOIN dim_product on dim_product.product_code = orders.product_code
INNER JOIN dim_store on dim_store.store_code = orders.store_code

WHERE EXTRACT(YEAR FROM orders.order_date::date) = 2022 AND country LIKE '%Germany%'
GROUP BY dim_store.store_type
ORDER BY revenue DESC;

-- Create a view where the rows are the store types and the columns are the total sales, percentage of total sales and the count of orders 

CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition; 


CREATE VIEW view_555 AS (

WITH CTE AS (

    SELECT ROUND(SUM(orders.product_quantity * dim_product.sale_price)::numeric, 1) as revenue, 
            dim_store.store_type,
            COUNT(orders.order_date_uuid) AS count_orders

    FROM orders

    INNER JOIN dim_product on dim_product.product_code = orders.product_code
    INNER JOIN dim_store on dim_store.store_code = orders.store_code

    GROUP BY dim_store.store_type
    ORDER BY revenue DESC

    ),

CTE2 AS (
    SELECT SUM(revenue) AS total_sales_sum
    FROM CTE
)

SELECT store_type,
        revenue,
        count_orders,
        (revenue / (SELECT total_sales_sum FROM CTE2)*100) as perc

FROM CTE
)

--  Which product category generated the most profit for the "Wiltshire, UK" region in 2021?
WITH cte AS (SELECT  dim_product.sale_price, 
        dim_product.cost_price,
        dim_product.category, 
        dim_store.country_region,
        orders.product_quantity
FROM orders
JOIN dim_product on dim_product.product_code = orders.product_code
JOIN dim_store on orders.store_code = dim_store.store_code
WHERE dim_product.cost_price IS NOT NULL AND dim_store.country_region LIKE 'Wiltshire')
SELECT  category,
        SUM((sale_price - cte.cost_price) * product_quantity) AS profit
FROM cte    
GROUP BY category
ORDER BY profit DESC