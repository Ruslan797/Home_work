# 1. Для каждого заказа order_id выведите минимальный, максмальный и средний unit_price.

SELECT  order_id,
	   MIN(unit_price) as min_price,
       MAX(unit_price) as max_price,
       AVG(unit_price) as avg_price
FROM order_details
GROUP BY order_id;

# 2. Оставьте только уникальные строки из предыдущего запроса.

SELECT DISTINCT order_id,
	   MIN(unit_price) as min_price,
       MAX(unit_price) as max_price,
       AVG(unit_price) as avg_price
FROM order_details
GROUP BY order_id;

SELECT * from order_details;

# 3. Посчитайте стоимость продукта в заказе как quantity*unit_price 
# Выведите суммарную стоимость продуктов с помощью оконной функции. 
# Сделайте то же самое с помощью GROUP BY.


select round(quantity*unit_price,2)  as kost_product_id,
round(sum(quantity*unit_price) over (PARTITION BY order_id),3) as sum_order
from order_details 
ORDER BY order_id;


SELECT order_id,
       round(quantity*unit_price,2) as cost_product,
       round(SUM(quantity*unit_price) OVER(PARTITION BY order_id),2) as sum_order
FROM order_details;

SELECT order_id,
       quantity*unit_price as product_total
FROM order_details
GROUP BY order_id;

SELECT * FROM orders;

# 4 Посчитайте количество заказов по дате получения и posted_to_inventory 
# Если оно превышает 1 то выведите '>1' в противном случае '=1'
# Выведите purchase_order_id, date_received и вычисленный столбец

SELECT purchase_order_id, date_received, posted_to_inventory ,
CASE
WHEN count(*) > 1 THEN '>1'
ELSE '=1'
END AS order_count
FROM purchase_order_details
GROUP BY purchase_order_id, date_received, posted_to_inventory;



