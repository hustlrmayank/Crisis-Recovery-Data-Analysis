SELECT
    r.restaurant_id,
    r.restaurant_name,
    r.city,
    r.cuisine_type,
    r.partner_type,
    r.is_active,

    COUNT(o.order_id) AS total_orders,

    SUM(o.total_amount) AS total_revenue,

    SUM(
        CASE 
            WHEN o.is_cancelled = 'Y' THEN 1 ELSE 0 
        END
    ) AS cancelled_orders,

    COUNT(DISTINCT o.customer_id) AS unique_customers,

    MAX(o.order_timestamp) AS last_order_date,

    CASE
        WHEN MAX(o.order_timestamp) < '2025-06-01' THEN 'left_before_crisis'
        WHEN MAX(o.order_timestamp) BETWEEN '2025-06-01' AND '2025-06-30' THEN 'left_during_crisis'
        ELSE 'active_or_recovered'
    END AS restaurant_status

FROM fact_orders o
JOIN dim_restaurant r
    ON o.restaurant_id = r.restaurant_id

GROUP BY
    r.restaurant_id,
    r.restaurant_name,
    r.city,
    r.cuisine_type,
    r.partner_type,
    r.is_active;