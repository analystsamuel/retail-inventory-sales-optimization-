	-- EXPLORATORY DATA ANALYSIS

set global local_infile = 1;

CREATE TABLE Retail_inventory
(row_id INT AUTO_INCREMENT PRIMARY KEY,
 sale_date DATE NOT NULL,
 store_id VARCHAR(20) NOT NULL,
 product_id VARCHAR(20) NOT NULL,
 category VARCHAR(50) NOT NULL,
 region VARCHAR(50) NOT NULL,
 inventory_level DECIMAL(10,2) NOT NULL,
 units_sold INT NOT NULL,
 units_ordered INT NOT NULL,
 demand_forecast DECIMAL(10,2) NOT NULL,
 price DECIMAL(10,2) NOT NULL,
 discount DECIMAL(5,2) NOT NULL,
 weather_condition VARCHAR(50) NOT NULL,
 holiday_promotion TINYINT NOT NULL,
 competitor_pricing DECIMAL(10,2) NOT NULL,
 seasonality VARCHAR(20) NOT NULL);

show variables like 'secure_file_priv';
set global local_infile = 1;


load data local infile 'c:/users/samuel/documents/retail inventory & sales optimization tool/retail_inventory_cleaned.csv'
into table retail_inventory
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows
(sale_date, store_id, product_id, category, region, inventory_level,
 units_sold, units_ordered, demand_forecast, price, discount,
 weather_condition, holiday_promotion, competitor_pricing, seasonality);

select *
from retail_inventory ri;

select count(distinct store_id) as total_stores  
from retail_inventory ri;

select count(distinct category) as total_categories
from retail_inventory ri ;

select distinct category
from retail_inventory ri ;

select distinct region
from retail_inventory ri ;

select SUM(inventory_level)
from retail_inventory ri ;

select sum(inventory_level) as total_grocery_inventory_level
from retail_inventory ri 
where category = "Groceries";

select sum(inventory_level) as total_toys_inventory_level
from retail_inventory ri 
where category = "Toys";

select sum(inventory_level) as total_electronics_inventory_level
from retail_inventory ri 
where category = "Electronics";

select sum(inventory_level) as total_furniture_inventory_level
from retail_inventory ri 
where category = "Furniture";

select sum(inventory_level) as total_clothing_inventory_level
from retail_inventory ri 
where category = "Clothing";

select avg(inventory_level)
from retail_inventory ri ;

select *
from retail_inventory ri;

select SUM(units_sold) as total_units_sold
from retail_inventory ri ;

select SUM(Discount) as total_Discount
from retail_inventory ri ;

select avg(discount) as avg_discount
from retail_inventory ri 

select category,sum(inventory_level) as total_inventory,round(avg(price), 2) as avg_price,
	   round(avg(discount), 2) as avg_discount,sum(units_sold) as total_units_sold,
       sum(units_ordered) as total_units_ordered
from retail_inventory
group by category
order by total_inventory desc;


select category,sum(units_sold) as total_units_sold,
       concat('$', round(sum(units_sold * price) / 1000000, 2), ' M') as revenue_millions,
       round(sum(units_sold * price) * 100.0 / sum(sum(units_sold * price)) over(), 2) as revenue_share_pct
from retail_inventory
group by category
order by sum(units_sold * price) desc;

select concat('$', format(sum(units_sold * price), 2)) as grand_total_revenue
from retail_inventory;

select distinct seasonality,sum(units_sold) as total_units_sold,
        concat('$', format(sum(units_sold * price), 2)) as seasonal_revenue
from retail_inventory ri 
group by seasonality
order by sum(units_sold) desc;

       
       

