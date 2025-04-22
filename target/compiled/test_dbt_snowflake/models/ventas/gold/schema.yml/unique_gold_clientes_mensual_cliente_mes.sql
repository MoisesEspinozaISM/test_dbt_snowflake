
    
    

select
    cliente_mes as unique_field,
    count(*) as n_records

from VENTAS.gold.gold_clientes_mensual
where cliente_mes is not null
group by cliente_mes
having count(*) > 1


