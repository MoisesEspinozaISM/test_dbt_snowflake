
  
    

        create or replace transient table MATERIALES.staging.sapprd_mara
         as
        (

SELECT
    MATNR,
    VOLEH,
    VOLUM,
    MTART,
    MATKL
FROM STAGING_RD_HT_GT.SAP.mara
        );
      
  