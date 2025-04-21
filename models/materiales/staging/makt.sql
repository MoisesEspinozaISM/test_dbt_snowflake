SELECT
    MATNR,
    MAKTX
FROM {{ source('sapprd', 'makt') }}
