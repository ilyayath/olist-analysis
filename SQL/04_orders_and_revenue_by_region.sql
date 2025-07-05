SELECT
  c.customer_state,
  COUNT(DISTINCT o.order_id) AS total_orders,
  ROUND(SUM(oi.price)) AS total_revenue
FROM olist_customers_dataset AS c
JOIN olist_orders_dataset AS o ON c.customer_id = o.customer_id
JOIN olist_order_items_dataset AS oi ON o.order_id = oi.order_id
GROUP BY c.customer_state
ORDER BY total_orders DESC;
