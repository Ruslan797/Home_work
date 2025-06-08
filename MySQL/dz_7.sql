# 1   Вывести названия продуктов таблица products, 
# включая количество заказанных единиц quantity для каждого продукта таблица order_details.
# Решить задачу с помощью cte и подзапроса
# variant 1. с помощью cte :
with cte as (
SELECT product_id, sum(quantity) as sum_quantity,
GROUP_CONCAT(order_id) # 24 str
FROM order_details
GROUP BY product_id
)
SELECT p.id, p.product_name, 
(SELECT cte.sum_quantity
FROM cte
where p.id = cte.product_id )  
from products as p;
    
# variant 2.  с помощью подзапроса :
SELECT p.id, p.product_name, 
(SELECT sum(od.quantity) from order_details as od
where od.product_id = p.id
 )  
from products as p;       # 45 

# variant с помощью join:
SELECT p.id, p.product_name, sum(od.quantity), GROUP_CONCAT(od.order_id) as spisok_zakazov # nomerov zakazov
FROM products as p
LEFT JOIN
order_details as od
on p.id = od.product_id
GROUP BY 1;

# 2  Найти все заказы таблица orders, сделанные после даты самого первого заказа клиента Lee таблица customers.

SELECT * FROM orders
WHERE order_date > (
    SELECT MIN(order_date)
    FROM orders
    WHERE customer_id in (
        SELECT id FROM customers WHERE last_name = 'Lee'
    )
);

# 3 Найти все продукты таблицы  products c максимальным target_level

SELECT 
    *
FROM
    products
WHERE
    target_level = (SELECT 
            MAX(target_level)
        FROM
            products);




