select 
        id as customer_id,
        firstname,
        lastname
    from {{ source('raw_files', 'shop_customers') }}