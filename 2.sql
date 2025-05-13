
select * from order_details;

select * from order_details
order by order_date;
select min(order_date), max(order_date) from order_details;

select count(distinct order_id) from order_details;

select count(*) from order_details;

select order_id, count(item_id) as num from order_details
group by order_id
order by num desc;

-- more than 12
select order_id, count(item_id) as num from order_details
group by order_id
having num > 12;

-- subquery
select count(*) from
(select order_id, count(item_id) as num from order_details
group by order_id
having num > 12) as num_orders;
