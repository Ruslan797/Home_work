#1 Выведите одним запросом с использованием UNION столбцы id, 
# employee_id из таблицы orders и соответствующие им столбцы из таблицы purchase_orders 
# В таблице purchase_orders  created_by соответствует employee_id


SELECT id,employee_id from orders 
union
SELECT id, created_by from purchase_orders;


# 2 Из предыдущего запроса удалите записи там где employee_id не имеет значения 
# Добавьте дополнительный столбец со сведениями из какой таблицы была взята запись


SELECT id,employee_id, 'orders' as table_ from orders where employee_id IS NOT NULL
union
SELECT id, created_by, 'purshase_orders' as table_ from purchase_orders where created_by IS NOT NULL;

# 3 Выведите все столбцы таблицы order_details а также дополнительный столбец payment_method из таблицы purchase_orders 
# Оставьте только заказы для которых известен payment_method


SELECT od.*,po.payment_method from order_details  as od
LEFT JOIN orders as o
on od.order_id = o.id
left JOIN employees as emp
on emp.id = o.employee_id
LEFT JOIN purchase_orders as po
on po.created_by = emp.id
where po.payment_method is NOT NULL
;


# 4 Выведите заказы orders и фамилии клиентов customers для тех заказов по которым были инвойсы таблица invoices

SELECT o.customer_id, o.order_date, c.last_name
FROM orders AS o
INNER JOIN invoices i 
ON o.customer_id = i.id
INNER JOIN customers AS c 
ON o.customer_id = c.id;



#5 Подсчитайте количество инвойсов для каждого клиента из предыдущего запроса

SELECT o.*, c.last_name,first_name, count(i.order_id) as count_or 
from orders as o
JOIN
customers as c
on c.id = o.customer_id
JOIN
invoices as i
on i.order_id = o.id
GROUP BY c.last_name, c.first_name
ORDER BY c.last_name DESC;