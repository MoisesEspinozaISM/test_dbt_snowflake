

SELECT 
    O_ORDERKEY     AS order_id,
    O_CUSTKEY      AS customer_id,
    O_ORDERDATE    AS order_date,
    O_TOTALPRICE   AS total_price
FROM snowflake_sample_data.tpch_sf1.orders