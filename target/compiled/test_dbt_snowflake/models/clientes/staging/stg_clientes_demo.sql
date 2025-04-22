

SELECT
    c_custkey AS customer_id,
    c_name AS customer_name,
    c_nationkey AS nation_id,
    c_mktsegment AS market_segment
FROM snowflake_sample_data.tpch_sf1.customer