{{ config(
    materialized='table',
    database=generate_database_name_from_node(this),
    schema=generate_schema_name_from_node(this)
) }}

SELECT
    MATNR,
    VOLEH,
    VOLUM,
    MTART,
    MATKL
FROM {{ source('sapprd', 'mara') }}
