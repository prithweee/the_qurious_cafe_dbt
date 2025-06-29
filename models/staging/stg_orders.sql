SELECT   
    order_id,      
    customer_id,  
    order_date,  
    order_status  
FROM {{ ref('Orders') }}
WHERE order_status = 'Completed'
