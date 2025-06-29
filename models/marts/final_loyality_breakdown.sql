SELECT 
  loyalty_member,
  COUNT(DISTINCT c.customer_id) AS num_customers,
  SUM(ir.order_total) AS total_revenue
FROM {{ ref('stg_customers') }} c
JOIN {{ ref('stg_orders') }} o ON c.customer_id = o.customer_id
JOIN {{ ref('int_order_revenue') }} ir ON o.order_id = ir.order_id
GROUP BY loyalty_member
