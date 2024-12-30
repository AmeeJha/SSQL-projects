use project;
/*select sum(order_id) as total_orders
from orders;*/

/*select date_format(order_date, "%y-%m") as month, count(order_id) as order_count
from orders
group by date_format(order_date, "%y-%m")
order by month;*/

select date_format(order_date, "%y-%m") as month, avg(order_id) as avg_ord_value
from orders
group by date_format(order_date, "%y-%m")
order by month;