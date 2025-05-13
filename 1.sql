USE restaurant_db;

-- 1. View the menu_items table
select * from menu_items;

-- 2. Find the number of items on the menu
select count(*) from menu_items;

-- 3. What are the least and most expensive items on the menu?
select * from menu_items
order by price;
select * from menu_items
order by price desc;

-- 4. number of italian dishes
select count(*) from menu_items
where category = 'italian';

-- 5. most and least expensive italian dishes
select * from menu_items
where category = 'italian'
order by price;
select * from menu_items
where category = 'italian'
order by price desc;

-- 6. number of dishes in each category
select category, count(menu_item_id) as num from menu_items
group by category;

-- 7. Average dish price within each category
select category, avg(price) as avg_price from menu_items
group by category;