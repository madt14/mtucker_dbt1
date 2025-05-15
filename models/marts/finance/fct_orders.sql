SELECT 
order_id,
customer_id,
p.amount
FROM {{ ref('stg_jaffle_shop__orders') }} AS o
INNER JOIN {{ ref('stg_stripe__payments') }} AS p
ON o.order_id = p.orderid