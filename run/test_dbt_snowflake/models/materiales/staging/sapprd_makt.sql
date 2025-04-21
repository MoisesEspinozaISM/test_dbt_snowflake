
  
    

        create or replace transient table MATERIALES.staging.sapprd_makt
         as
        (

SELECT
    MATNR,
    MAKTX
FROM STAGING_RD_HT_GT.SAP.makt
        );
      
  