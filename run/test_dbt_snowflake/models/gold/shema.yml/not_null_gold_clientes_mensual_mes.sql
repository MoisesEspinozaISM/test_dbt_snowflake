select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select mes
from dbt_sandbox.public_gold.gold_clientes_mensual
where mes is null



      
    ) dbt_internal_test