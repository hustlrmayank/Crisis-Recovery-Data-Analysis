SELECT
    c.customer_id,
    c.city,
    c.acquisition_channel,

    COUNT(o.order_id) AS total_orders,

    SUM(
        CASE 
            WHEN o.order_timestamp < '2025-06-01' 
            THEN 1 ELSE 0 
        END
    ) AS orders_pre,

    SUM(
        CASE 
            WHEN o.order_timestamp BETWEEN '2025-06-01' AND '2025-06-30'
            THEN 1 ELSE 0 
        END
    ) AS orders_crisis,

    SUM(
        CASE 
            WHEN o.order_timestamp > '2025-06-30'
            THEN 1 ELSE 0 
        END
    ) AS orders_recovery,

    MAX(o.order_timestamp) AS last_order_date

FROM fact_orders o
JOIN dim_customer c
    ON o.customer_id = c.customer_id

GROUP BY
    c.customer_id,
    c.city,
    c.acquisition_channel;


