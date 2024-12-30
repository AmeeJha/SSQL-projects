use project;
/*select count(cust_name) as total_customer
from customers;*/

/*select city, count(cust_name) as custmor_city
from customers
group by city;*/

SELECT customers.customer_id, cust_name, AVG(cust_name) AS avg_order_values
FROM customers 
JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id, cust_name