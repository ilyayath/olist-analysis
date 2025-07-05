SELECT
    c.customer_state,
    pt.product_category_name_english,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(SUM(oi.price)) AS total_revenue
FROM olist_customers_dataset AS c
JOIN olist_orders_dataset AS o ON c.customer_id = o.customer_id
JOIN olist_order_items_dataset AS oi ON o.order_id = oi.order_id
JOIN olist_products_dataset AS p ON oi.product_id = p.product_id
JOIN product_category_name_translation AS pt ON p.product_category_name = pt.product_category_name
WHERE o.order_status = 'delivered'
GROUP BY c.customer_state, pt.product_category_name_english
ORDER BY total_orders DESC;
