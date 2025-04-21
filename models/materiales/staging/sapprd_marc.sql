SELECT
    MATNR,
    WERKS
FROM {{ source('sapprd', 'marc') }}
