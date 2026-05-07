-- V1
CREATE OR REPLACE VIEW total_value_per_warehouse AS 
SELECT
  w.ware_id,
  w.ware_name,
  ROUND(SUM(p.prod_price * ip.inv_quantity), 2) AS total_value
FROM warehouses w
JOIN inventory_product ip ON w.ware_id = ip.inv_prod_ware_id
JOIN products p ON p.prod_id = ip.inv_prod_id
GROUP BY w.ware_id, w.ware_name
ORDER BY total_value DESC;

SELECT * FROM total_value_per_warehouse;

-- V2 
CREATE OR REPLACE VIEW total_value_per_customer_order AS 
SELECT customers.cus_name, ROUND(SUM(products.prod_price * 1.0), 2) AS total_order
FROM customers 
JOIN cus_order ON customers.cus_id = cus_order.cus_order_cus_id
JOIN products ON cus_order.cus_order_prod = products.prod_id
GROUP BY customers.cus_name
ORDER BY total_order DESC;

SELECT * FROM total_value_per_customer_order;

-- V3 
CREATE OR REPLACE VIEW products_per_warehouse AS
SELECT
  w.ware_id,
  w.ware_name,
  COUNT(DISTINCT ip.inv_prod_id) AS total_product_types,  
  SUM(ip.inv_quantity) AS total_items                     
FROM warehouses w
JOIN inventory_product ip ON w.ware_id = ip.inv_prod_ware_id
GROUP BY w.ware_id, w.ware_name
ORDER BY total_product_types DESC, total_items DESC;

SELECT * FROM products_per_warehouse;