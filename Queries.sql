-- Q1
SELECT cus_id, cus_name, cus_email
FROM customers;

-- Q2
SELECT *
FROM products
ORDER BY prod_price DESC;

-- Q3
SELECT customers.cus_name, cus_order.cus_order_id, cus_order.cus_order_prod
FROM customers 
JOIN cus_order ON customers.cus_id = cus_order.cus_order_cus_id;

-- Q4
SELECT COUNT(*)  
FROM customers;

-- Q5
SELECT prod_name, prod_price
FROM products
WHERE prod_price > (SELECT AVG(prod_price) FROM products);

-- Q6
SELECT DISTINCT customers.cus_name
FROM customers JOIN cus_order ON customers.cus_id = cus_order_cus_id;

-- Q7
SELECT customers.cus_name
FROM customers
WHERE customers.cus_id NOT IN (SELECT cus_order_cus_id FROM cus_order);

-- Q8
SELECT warehouses.ware_name, COUNT(inventory_product.inv_prod_id)
FROM warehouses
JOIN inventory_product ON warehouses.ware_id = inventory_product.inv_prod_ware_id
GROUP BY ware_id;

-- Q9
SELECT p.prod_name, p.prod_price, ip.inv_prod_ware_id
FROM products p
JOIN inventory_product ip ON p.prod_id = ip.inv_prod_id
WHERE p.prod_price > (
	SELECT AVG(p2.prod_price)
    FROM products p2
    JOIN inventory_product ip2 ON p2.prod_id = ip2.inv_prod_id
    WHERE ip2.inv_prod_ware_id = ip.inv_prod_ware_id
);

-- Q10
SELECT prod_name, prod_price, RANK() OVER (ORDER BY prod_price DESC) AS price_rank
FROM products;
