SELECT
  c.customer_state,
  COUNT(DISTINCT o.order_id) AS total_orders,
  ROUND(SUM(oi.price)) AS total_revenue,
  ROUND(SUM(oi.price) / COUNT(DISTINCT o.order_id)) AS avg_order_value,
  COUNT(DISTINCT c.customer_id) AS num_customers
FROM olist_customers_dataset AS c
JOIN olist_orders_dataset AS o ON c.customer_id = o.customer_id
JOIN olist_order_items_dataset AS oi ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY c.customer_state
ORDER BY total_orders DESC;
