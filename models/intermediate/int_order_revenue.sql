SELECT 
  oi.order_id,
  SUM(oi.quantity * oi.price) AS order_total
FROM {{ ref('stg_order_item') }} oi
JOIN {{ ref('stg_orders') }} o
  ON oi.order_id = o.order_id
GROUP BY 1