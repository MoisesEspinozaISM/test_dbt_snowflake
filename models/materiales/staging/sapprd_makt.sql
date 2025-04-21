{{ config(
    materialized='table',
    database=generate_database_name_from_node(this),
    schema=generate_schema_name_from_node(this)
) }}

SELECT
    MATNR,
    MAKTX
FROM {{ source('sapprd', 'makt') }}
