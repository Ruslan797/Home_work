USE 210225_Buievskyi;




#2 Создайте таблицу, которая отражает погоду в Вашем городе за последние 5 дней и включает следующее столбцы
#Id - первичный ключ, заполняется автоматически
#Дата - не может быть пропуском
#Дневная температура - целое число, принимает значения от -30 до 30
#Ночная температура - целое число, принимает значения от -30 до 30
#Скорость ветра - подумайте какой тип данных и ограничения необходимы для этого столбца

CREATE TABLE weather(
ID INT AUTO_INCREMENT PRIMARY KEY,
date DATE NOT NULL,
daytime_t INT CHECK(daytime_t BETWEEN -30 and 30),
nightime_t INT CHECK(nightime_t BETWEEN -30 and 30),
wind_speed DECIMAL(5,2) CHECK(wind_speed >=0)
);


#3 Заполните таблицу 5 строками - за последние 5 дней 

insert into weather(date, daytime_t, nightime_t, wind_speed) 
values('2025-03-23', 15, 8, 5.50),
('2025-03-24', 18, 10, 3.20),
('2025-03-25', 12, 5, 4.75),
('2025-03-26', 10, 3, 6.00),
('2025-03-27', 14, 7, 2.80);

select * from weather;


#4 Увеличьте значения ночной температуры на градус если скорость ветра не превышала 3 м/с

select  nightime_t,
case
when wind_speed <= 3 then nightime_t + 1 end as w_wet

from weather;
UPDATE weather
SET nightime_t = nightime_t + 1
WHERE wind_speed <= 3.00;


#5 На основе полученной таблицы создайте представление в своей базе данных - включите все строки Вашей таблицы и дополнительно рассчитанные столбцы
#Средняя суточная температура - среднее арифметическое между ночной и дневной температурами
#Столбец на основе скорости ветра - если скорость ветра не превышала 2 м/с то значение ‘штиль’, от 2 включительно до 5 - ‘умеренный ветер’, в остальных случаях - ‘сильный ветер’
create view v_weather as
select *,
cast((daytime_t + nightime_t) / 2 as decimal(4,2)) as avg_temp,
case when (wind_speed > 5) then 'strong' 
when wind_speed > 2 and wind_speed <= 5 then 'windy' 
else 'calm' end as wetherstatus 
from weather;
select * from v_weather;
show tables;

#6 Отформатируйте стиль написания запросов


#7 Сохраните запросы в виде файла с расширением .sql и загрузите на платформу





