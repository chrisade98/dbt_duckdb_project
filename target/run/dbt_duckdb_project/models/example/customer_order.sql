
  
  create view "dev"."main"."customer_order__dbt_tmp" as (
    select
        customer_id,
        min(order_date) as first_order_date,
        max(order_date) as most_recent_order_date,
        count(order_id) as number_of_orders
    from "dev"."main"."stg_orders"
    group by customer_id
  );
