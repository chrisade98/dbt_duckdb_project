select 
        id as customer_id,
        firstname,
        lastname
    from {{ ref('shop_customers') }}
    