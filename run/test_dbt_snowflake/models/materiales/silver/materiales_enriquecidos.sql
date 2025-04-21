
  
    

        create or replace transient table MATERIALES.silver.materiales_enriquecidos
         as
        (

SELECT
    m.MATNR,
    m.VOLEH,
    m.VOLUM,
    c.WERKS,
    k.MAKTX,
    t.WGBEZ
FROM MATERIALES.staging.sapprd_mara m
JOIN MATERIALES.staging.sapprd_marc c ON m.MATNR = c.MATNR
JOIN MATERIALES.staging.sapprd_makt k ON m.MATNR = k.MATNR
JOIN MATERIALES.staging.sapprd_t023t t ON m.MATKL = t.MATKL
WHERE m.MTART = 'ZFER'
        );
      
  