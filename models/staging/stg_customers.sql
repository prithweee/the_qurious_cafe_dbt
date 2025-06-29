SELECT 
  customer_id,
  name,
  join_date,
  loyalty_member 
FROM {{ ref('Customers') }} 
