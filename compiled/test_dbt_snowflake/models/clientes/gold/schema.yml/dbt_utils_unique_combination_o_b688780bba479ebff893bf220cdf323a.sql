





with validation_errors as (

    select
        customer_id
    from CLIENTES.gold.gold_segmentacion_clientes
    group by customer_id
    having count(*) > 1

)

select *
from validation_errors


