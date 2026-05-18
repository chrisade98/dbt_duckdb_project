select
        orderid as order_id,
        amount,
        payment_method,
        status,
        created,
        _batched_at
    from {{ source('raw_files', 'stripe_payment') }}