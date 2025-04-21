SELECT *
FROM {{ ref('materiales_enriquecidos') }}
WHERE
    (VOLEH = 'ML' AND VOLUM >= 100)
    OR (VOLEH = 'L' AND (VOLUM > 0 OR VOLUM < 10))
