SELECT
    MATNR,
    VOLEH,
    VOLUM,
    MTART,
    MATKL
FROM {{ source('sapprd', 'mara') }}
