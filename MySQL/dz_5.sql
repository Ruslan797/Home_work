use northwind;





#1 Посчитайте основные статистики - среднее, сумму, минимум, максимум столбца unit_cost.
SELECT 
    AVG(unit_cost) as u_AVG,
    MIN(unit_cost) as u_MIN,
    MAX(unit_cost) as u_MAX,
    Sum(unit_cost) as u_Sum
FROM
    purchase_order_details;

#2 Посчитайте количество уникальных заказов purchase_order_id
select count(distinct purchase_order_id) as c_purchase from purchase_order_details;

SELECT 
    COUNT(product_id) AS prod, purchase_order_id
FROM
    purchase_order_details
GROUP BY 2
ORDER BY 1 DESC
;

#3 Посчитайте количество продуктов product_id в каждом заказе purchase_order_id 
#Отсортируйте полученные данные по убыванию количества
SELECT purchase_order_id, COUNT(product_id) AS product_count
FROM purchase_order_details
GROUP BY purchase_order_id
ORDER BY product_count DESC;

#4 Посчитайте заказы по дате доставки date_received Считаем только те продукты,
# количество quantity которых больше 30

SELECT date_received, count(purchase_order_id) as "Количество заказов"
from purchase_order_details
where quantity>30
GROUP BY date_received,purchase_order_id;

#5 Посчитайте суммарную стоимость заказов в каждую из дат 
#Стоимость заказа - произведение quantity на unit_cost
SELECT date_received, sum(quantity*unit_cost) as "Общая сумма заказов"
from purchase_order_details
GROUP BY date_received;

#6 Сгруппируйте товары по unit_cost и вычислите среднее и максимальное значение quantity только для товаров где purchase_order_id не больше 100

SELECT unit_cost, avg(quantity) as a_avg, max(quantity) as max_quantity
from purchase_order_details
where purchase_order_id <= 100
group by unit_cost;

#7 Выберите только строки где есть значения в столбце inventory_id 
#Создайте столбец category - если unit_cost > 20 то 'Expensive' в остальных случаях 'others'
# Посчитайте количество продуктов в каждой категории

SELECT 
    CASE
        WHEN unit_cost > 20 THEN 'Expensive'
        ELSE 'others'
    END AS categori,
    sum(quantity) as "Количество продуктов"
FROM
    purchase_order_details
WHERE
    inventory_id IS NOT NULL
    group by categori 
    ORDER BY 1;


