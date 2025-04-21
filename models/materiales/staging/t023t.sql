SELECT
    MATKL,
    WGBEZ
FROM {{ source('sapprd', 't023t') }}

