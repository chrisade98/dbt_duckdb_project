
  
  create view "dev"."main"."customers__dbt_tmp" as (
    with customers as (
    select *
    from "dev"."main"."stg_customers"
),

orders as (
    select *
    from "dev"."main"."stg_orders"
),

stripe_payments as (
    select *
    from "dev"."main"."stg_payments"
),

customer_orders as (
    select
        *
        from "dev"."main"."customer_order"
),

final as (
    select
        c.customer_id,
        c.firstname,
        c.lastname,
        co.first_order_date,
        co.most_recent_order_date,
        co.number_of_orders,
        sum(sp.amount) as total_amount,
        array_agg(distinct sp.payment_method) as payment_methods
    from customers c
    left join customer_orders co 
        on c.customer_id = co.customer_id
    left join orders o 
        on c.customer_id = o.customer_id
    left join stripe_payments sp 
        on o.order_id = sp.order_id
    group by 
        c.customer_id,
        c.firstname,
        c.lastname,
        co.first_order_date,
        co.most_recent_order_date,
        co.number_of_orders
)

select * from final
  );
