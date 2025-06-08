SELECT * FROM order_details;


# 1. Для каждого product_id выведите inventory_id а также предыдущий и последующей inventory_id по убыванию quantity


SELECT product_id, inventory_id,
LAG(inventory_id) over (PARTITION BY product_id ORDER BY quantity DESC) as lg,
LEAD(inventory_id) over (PARTITION BY product_id ORDER BY quantity DESC) as ld
FROM order_details;


# 2. Выведите максимальный и минимальный unit_price для каждого order_id с помощью функции FIRST VALUE  
#    Вывести order_id и полученные значения


SELECT order_id,
FIRST_VALUE(unit_price) over (PARTITION BY order_id ORDER BY unit_price DESC) as max_value,
FIRST_VALUE(unit_price) over (PARTITION BY order_id ORDER BY unit_price) as min_value
FROM order_details 
LIMIT 1;


# 3. Выведите order_id и столбец с разнице между  unit_price для каждой заказа и минимальным unit_price в рамках одного заказа 
#    Задачу решить двумя способами - с помощью First VAlue и MIN

# 1. MIN
SELECT unit_price, order_id, unit_price - MIN(unit_price) over (PARTITION BY order_id) as dif_price
from order_details;

# 2. FIRST_VALUE
SELECT unit_price, order_id, unit_price - FIRST_VALUE(unit_price) over (PARTITION BY order_id ORDER BY unit_price ASC) as dif_price
FROM order_details;


# 4. Присвойте ранг каждой строке используя RANK по убыванию quantity

SELECT *,
RANK() over (ORDER BY quantity DESC) as r_k
FROM order_details;


# 5.  Из предыдущего запроса выберите только строки с рангом до 10 включительно

SELECT * FROM (
SELECT *,
RANK() over (ORDER BY quantity DESC) as r_k
FROM order_details) as rank_
WHERE r_k = 10
;

