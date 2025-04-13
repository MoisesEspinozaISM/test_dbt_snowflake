select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      





with validation_errors as (

    select
        customer_id
    from CLIENTES.gold.gold_segmentacion_clientes
    group by customer_id
    having count(*) > 1

)

select *
from validation_errors



      
    ) dbt_internal_test