# 1. Для каждого заказа order_id выведите минимальный, максмальный и средний unit_price.
#  Оставьте только уникальные строки из предыдущего запроса.



# 2. Посчитайте стоимость продукта в заказе как quantity*unit_price 
# Выведите суммарную стоимость продуктов с помощью оконной функции. 
# Сделайте то же самое с помощью GROUP BY.

# variant 5 - mit subquery:

SELECT * from
(
select cte.order_id, min_unit_price, max_unit_price, avg_unit_price , 
ROW_NUMBER() over (PARTITION BY cte.order_id ORDER BY cte.order_id) as rn
 from cte
) as query_
where rn = 1;


# Таблица purchase_order_details

# 3. Посчитайте количество продуктов в каждом заказе с учетом их статуса с помощью оконной функции.

# variant 1 - mit dem Fensterfunction:

select round(quantity*unit_price,2)  as kost_product_id,
round(sum(quantity*unit_price) over (PARTITION BY order_id),3) as sum_order,
od.* 
from order_details as od
ORDER BY order_id;


# 4. Посчитайте кумулятивную количество товаров quantity по дате получения date_received.


select pod.purchase_order_id, po.status_id,
round(sum(pod.quantity) over (partition by pod.purchase_order_id, po.status_id),2) as sum_
from purchase_order_details as pod
join purchase_orders as po
on pod.purchase_order_id=po.id;


select *, 
round(count(product_id) over (partition by purchase_order_id),2) as count_
from purchase_order_details;

# 5. Посчитайте кумулятивную выручку quantity*unit_cost по дате получения date_received для каждого product_id.

select *,
 sum(quantity) over (order by date_received, id) as sum_
 from purchase_order_details
 ;




