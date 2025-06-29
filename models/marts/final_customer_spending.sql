SELECT 
  c.customer_id,
  c.name,
  c.loyalty_member,
  COUNT(DISTINCT o.order_id) AS total_orders,
  SUM(ir.order_total) AS total_spent
FROM {{ ref('stg_customers') }} c
JOIN {{ ref('stg_orders') }} o ON c.customer_id = o.customer_id
JOIN {{ ref('int_order_revenue') }} ir ON o.order_id = ir.order_id
GROUP BY c.customer_id, c.name, c.loyalty_member