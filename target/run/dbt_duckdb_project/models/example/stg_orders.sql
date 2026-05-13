
  
  create view "dev"."main"."stg_orders__dbt_tmp" as (
    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status,
        _etl_loaded_at
    from "dev"."main"."orders"
  );
