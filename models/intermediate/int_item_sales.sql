SELECT 
  item_name,
  SUM(quantity) AS total_quantity,
  SUM(quantity * price) AS total_sales
FROM {{ ref('stg_order_item') }}
GROUP BY item_name
ORDER BY total_sales DESC