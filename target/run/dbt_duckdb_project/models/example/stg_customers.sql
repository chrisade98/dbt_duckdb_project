
  
  create view "dev"."main"."stg_customers__dbt_tmp" as (
    select 
        id as customer_id,
        firstname,
        lastname
    from "dev"."main"."shop_customers"
  );
