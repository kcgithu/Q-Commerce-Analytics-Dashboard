        -- CUSTOMER INSIGHTS

-- Who are the top 10 customers by total spend?
use project1;
select c.customer_id, c.name, sum(p.price * od.quantity * (1- od.discount_percent/100)) as Total_spend
from customers c 
join orders o on c.customer_id = o.customer_id
join order_details od on o.order_id = od.order_id
join products p on od.product_id = p.product_id
group by c.customer_id, c.name
order by Total_spend desc limit 10;


-- What’s the average order value by age group?
use project1;
select age, avg(order_value) as avg_order_value
from ( 
select o.order_id, c.age, sum(p.price * od.quantity * (1-od.discount_percent/100)) as order_value
from customers c 
join orders o on c.customer_id = o.customer_id
join order_details od on o.order_id = od.order_id
join products p on od.product_id = p.product_id
group by o.order_id, c.age
)
as order_age_data
group by age 
order by age;


-- What’s the repeat purchase rate?
select 
round(count( case when order_count > 1 then 1 end ) * 100 / count(*), 2 )
as   RPR
from ( 
select customer_id, count(order_id) as order_count 
from orders 
group by customer_id) as co;


           -- PRODUCT & SALES ANALYSIS
-- Top-selling products (by quantity and revenue)

select 
p.product_name, 
sum(od.quantity) as total_quantity_sold,
round(sum(p.price * od.quantity * (1- od.discount_percent/100)), 2) as total_revenue 
from order_details od  
join products p on od.product_id = p.product_id
group by p.product_name
order by total_quantity_sold desc, total_revenue desc limit 10;

-- Revenue trends month-on-month

select
 month(o.order_date) as Months,
 sum(p.price * od.quantity * ( 1 - od.discount_percent/100 )) as MoM_revenue 
from orders o
join order_details od on o.order_id = od.order_id
join products p on od.product_id = p.product_id
group by Months
order by Months;

-- What’s the impact of discounts on sales volume?
select 
case 
when od.discount_percent between 0 and 5 then '0-5'
when od.discount_percent between 5.01 and 10 then '5-10'
when od.discount_percent between 10.01 and 15 then '10-15'
when od.discount_percent >15 then '15+'
end as discount_range ,
sum(od.quantity) as total_quantity_sold,
round(sum(p.price * od.quantity * (1 - od.discount_percent/100)),2) as total_revenue
from order_details od 
join products p on od.product_id = p.product_id
group by discount_range
order by discount_range;


		-- OPERATIONS

-- What % of orders were returned or cancelled?
select 
round(
count(
case when status in ('returned', 'cancelled') then 1 end ) *100 / count(*),1) as orders_return_cancelled
from orders;


-- Delivery rate by region
use project1;
select c.location as region,
count(case when status = 'delivered' then 1 end) * 100/ count(status) as delivery_rate_percent
from orders o 
join customers c on o.customer_id = c.customer_id 
group by c.location
order by delivery_rate_percent desc;







