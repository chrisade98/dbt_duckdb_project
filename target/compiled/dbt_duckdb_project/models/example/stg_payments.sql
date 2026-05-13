select
        orderid as order_id,
        amount,
        payment_method,
        status,
        created,
        _batched_at
    from "dev"."main"."stripe_payment"