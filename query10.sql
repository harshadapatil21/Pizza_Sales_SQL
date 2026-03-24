-- group the orders by date and calculate the average number of pizzas ordered per day

select round(avg(quantity),0)as avg_pizza_ordered_per_day from
(select orders.order_date , sum(order_details.quantity) as quantity
from orders join order_details
on orders.order_id = order_details_id
group by orders.order_date) as order_quantity;