SELECT
  DATE_TRUNC('month', order_purchase_timestamp::timestamp) AS month,
  ROUND(SUM(price)) AS total_revenue,
  COUNT(DISTINCT oi.order_id) AS num_orders
FROM olist_orders_dataset AS ord
JOIN olist_order_items_dataset AS oi ON ord.order_id = oi.order_id
GROUP BY month
ORDER BY month ASC;
