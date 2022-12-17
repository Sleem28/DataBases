-- Выведите количество мужчин старше 35 лет
USE vk;
SELECT COUNT(*)
FROM `profiles`
WHERE `gender`= 'M' AND (`birthday` + INTERVAL 35 YEAR) < NOW();