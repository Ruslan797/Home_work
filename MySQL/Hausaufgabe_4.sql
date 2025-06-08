USE 210225_Buievskyi;


CREATE TABLE weather_H (
    id INT AUTO_INCREMENT PRIMARY KEY,
    record_date DATE NOT NULL,
    day_temp INT CHECK (day_temp BETWEEN -30 AND 30),
    night_temp INT CHECK (night_temp BETWEEN -30 AND 30),
    wind_speed DECIMAL(4,1) CHECK (wind_speed >= 0) -- Скорость ветра может быть дробным числом
);

INSERT INTO weather_H (record_date, day_temp, night_temp, wind_speed) VALUES
('2025-03-28', 15, 5, 2.5),
('2025-03-29', 12, 4, 3.0),
('2025-03-30', 18, 6, 1.8),
('2025-03-31', 20, 8, 4.5),
('2025-04-01', 10, 2, 5.8);

UPDATE weather_H
SET night_temp = night_temp + 1
WHERE wind_speed <= 3.0;

CREATE VIEW weather_summary AS
SELECT id, record_date, day_temp, night_temp,
       (day_temp + night_temp) / 2 AS avg_temp,
       CASE 
           WHEN wind_speed <= 2 THEN 'штиль'
           WHEN wind_speed BETWEEN 2 AND 5 THEN 'умеренный ветер'
           ELSE 'сильный ветер'
       END AS wind_category
FROM weather_H;

SELECT * from weather_H;







