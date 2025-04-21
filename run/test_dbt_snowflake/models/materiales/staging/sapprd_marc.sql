
  
    

        create or replace transient table MATERIALES.staging.sapprd_marc
         as
        (

SELECT
    MATNR,
    WERKS
FROM STAGING_RD_HT_GT.SAP.marc
        );
      
  