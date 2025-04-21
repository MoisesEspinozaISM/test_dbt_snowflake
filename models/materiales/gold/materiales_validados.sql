{{ config(
    materialized='table',
    database=generate_database_name_from_node(this),
    schema=generate_schema_name_from_node(this)
) }}

SELECT *
FROM {{ ref('silver.materiales_enriquecidos') }}
WHERE
    (VOLEH = 'ML' AND VOLUM >= 100)
    OR (VOLEH = 'L' AND (VOLUM > 0 OR VOLUM < 10))
