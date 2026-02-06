SELECT
    CASE
        WHEN o.order_timestamp < '2025-06-01' THEN 'pre_crisis'
        WHEN o.order_timestamp BETWEEN '2025-06-01' AND '2025-06-30' THEN 'crisis'
        ELSE 'recovery'
    END AS company_phase,

    r.restaurant_id,
    dr.restaurant_name,
    dr.city,

    COUNT(r.order_id) AS total_reviews,

    AVG(r.rating) AS avg_rating,

    AVG(r.sentiment_score) AS avg_sentiment,

    SUM(
        CASE
            WHEN r.rating <= 2 OR r.sentiment_score < 0 THEN 1
            ELSE 0
        END
    ) AS negative_reviews

    FROM fact_ratings r
    JOIN fact_orders o
        ON r.order_id = o.order_id
    JOIN dim_restaurant dr
        ON r.restaurant_id = dr.restaurant_id

    GROUP BY
        company_phase,
        r.restaurant_id,
        dr.restaurant_name,
        dr.city

    ORDER BY
        company_phase,
        dr.city;