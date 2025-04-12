-- models/marts/sales/gold_customers_summary.sql



SELECT
    segment,
    COUNT(*) AS total_customers,
    ROUND(AVG(balance), 2) AS avg_balance
FROM dbt_sandbox.public.stg_customers
GROUP BY 1