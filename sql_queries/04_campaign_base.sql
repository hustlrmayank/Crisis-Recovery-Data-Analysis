SELECT
    c.city,
    c.acquisition_channel,

    CASE
        WHEN o.order_timestamp < '2025-06-01' THEN 'pre_crisis'
        WHEN o.order_timestamp BETWEEN '2025-06-01' AND '2025-06-30' THEN 'crisis'
        ELSE 'recovery'
    END AS company_phase,

    COUNT(DISTINCT o.customer_id) AS active_customers,
    COUNT(o.order_id) AS total_orders,
    SUM(o.total_amount) AS total_revenue,

    SUM(
        CASE 
            WHEN o.is_cancelled = 'Y' THEN 1 ELSE 0 
        END
    ) AS cancelled_orders

FROM fact_orders o
JOIN dim_customer c
    ON o.customer_id = c.customer_id

GROUP BY
    c.city,
    c.acquisition_channel,
    company_phase

ORDER BY
    c.city,
    company_phase;
