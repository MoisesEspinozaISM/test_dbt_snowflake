-- back compat for old kwarg name
  
  begin;
    
        
            
	    
	    
            
        
    

    

    merge into VENTAS.gold.gold_clientes_mensual as DBT_INTERNAL_DEST
        using VENTAS.gold.gold_clientes_mensual__dbt_tmp as DBT_INTERNAL_SOURCE
        on ((DBT_INTERNAL_SOURCE.cliente_mes = DBT_INTERNAL_DEST.cliente_mes))

    
    when matched then update set
        "CUSTOMER_ID" = DBT_INTERNAL_SOURCE."CUSTOMER_ID","MES" = DBT_INTERNAL_SOURCE."MES","TOTAL_VENTAS" = DBT_INTERNAL_SOURCE."TOTAL_VENTAS","TOTAL_PEDIDOS" = DBT_INTERNAL_SOURCE."TOTAL_PEDIDOS","CLIENTE_MES" = DBT_INTERNAL_SOURCE."CLIENTE_MES"
    

    when not matched then insert
        ("CUSTOMER_ID", "MES", "TOTAL_VENTAS", "TOTAL_PEDIDOS", "CLIENTE_MES")
    values
        ("CUSTOMER_ID", "MES", "TOTAL_VENTAS", "TOTAL_PEDIDOS", "CLIENTE_MES")

;
    commit;