SELECT
    m.MATNR,
    m.VOLEH,
    m.VOLUM,
    c.WERKS,
    k.MAKTX,
    t.WGBEZ
FROM {{ ref('sapprd_mara') }} m
JOIN {{ ref('sapprd_marc') }} c ON m.MATNR = c.MATNR
JOIN {{ ref('sapprd_makt') }} k ON m.MATNR = k.MATNR
JOIN {{ ref('sapprd_t023t') }} t ON m.MATKL = t.MATKL
WHERE m.MTART = 'ZFER'
