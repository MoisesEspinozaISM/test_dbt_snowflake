-- back compat for old kwarg name
  
  begin;
    
        
            
	    
	    
            
        
    

    

    merge into VENTAS.silver.silver_incremental_ventas as DBT_INTERNAL_DEST
        using VENTAS.silver.silver_incremental_ventas__dbt_tmp as DBT_INTERNAL_SOURCE
        on ((DBT_INTERNAL_SOURCE.order_id = DBT_INTERNAL_DEST.order_id))

    
    when matched then update set
        "ORDER_ID" = DBT_INTERNAL_SOURCE."ORDER_ID","CUSTOMER_ID" = DBT_INTERNAL_SOURCE."CUSTOMER_ID","ORDER_DATE" = DBT_INTERNAL_SOURCE."ORDER_DATE","TOTAL_PRICE" = DBT_INTERNAL_SOURCE."TOTAL_PRICE"
    

    when not matched then insert
        ("ORDER_ID", "CUSTOMER_ID", "ORDER_DATE", "TOTAL_PRICE")
    values
        ("ORDER_ID", "CUSTOMER_ID", "ORDER_DATE", "TOTAL_PRICE")

;
    commit;