use project;
/*select SUM(order_id) AS total_products_sold
FROM orders;*/

/*select products.product_id,products.product_name, SUM(order_items.quantity) AS total_quantity_sold
FROM order_items 
JOIN products ON order_items.product_id = products.product_id
GROUP BY product_id,product_name
ORDER BY total_quantity_sold DESC
LIMIT 5;*/									

select products.category, SUM(order_items.quantity * order_items.price) AS total
from products 
join order_items on order_items.product_id = products.product_id 
group by products.category;