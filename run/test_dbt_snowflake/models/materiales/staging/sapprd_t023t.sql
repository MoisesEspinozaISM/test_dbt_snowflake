
  
    

        create or replace transient table MATERIALES.staging.sapprd_t023t
         as
        (

SELECT
    MATKL,
    WGBEZ
FROM STAGING_RD_HT_GT.SAP.t023t
        );
      
  