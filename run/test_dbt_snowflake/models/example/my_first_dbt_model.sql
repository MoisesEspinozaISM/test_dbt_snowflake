
  create or replace   view dbt_sandbox.public.my_first_dbt_model
  
   as (
    select 1 as id
union all
select 2 as id
  );

