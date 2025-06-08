#Выведите Ваш возраст на текущий день в секундах

SELECT TIMESTAMPDIFF(SECOND, '1984-07-20 00:00:00', NOW()) AS возраст_в_секундах;

#2. Выведите какая дата будет через 51 день

select date_add(curdate(), interval 51 day) as new_day;

#3. Отформатируйте предыдущей запрос - выведите день недели для этой даты Используйте документацию My SQL

SELECT DATE_ADD(CURDATE(), INTERVAL 51 DAY) AS new_day,
       DAYNAME(DATE_ADD(CURDATE(), INTERVAL 51 DAY)) AS day_week;

#4.  Подключитесь к базе данных northwind Выведите столбец с исходной датой создания транзакции transaction_created_date из таблицы inventory_transactions, 
#а также столбец полученный прибавлением 3 часов к этой дате

SELECT 
    transaction_created_date,
    DATE_ADD(transaction_created_date, INTERVAL 3 HOUR) AS transaction_plus_3_hours
FROM 
    inventory_transactions;

#5. Выведите столбец с текстом  'Клиент с id <customer_id> сделал заказ <order_date>' из таблицы orders
#Запрос написать двумя способами - с использованием неявных преобразований а также с указанием изменения типа данных для столбца customer_id
#Внимание В MySQL функция CAST не принимает VARCHAR в качестве параметра для длины. Вместо этого, нужно использовать CHAR для указания длины.

 SELECT 
    CONCAT('Клиент с id ', CAST(customer_id AS CHAR), ' сделал заказ ', order_date) AS new
FROM 
    orders;

SELECT 
    CONCAT('Клиент с id ', customer_id, ' сделал заказ ', order_date) AS new
FROM 
    orders;

#6.  Отформатируйте стиль написания запросов


#7. Сохраните запросы в виде файла с расширением .sql и загрузите на платформу