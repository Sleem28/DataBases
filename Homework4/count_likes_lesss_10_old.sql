# Подсчитать общее количество лайков, которые получили пользователи младше 10 лет.
USE vk;
SELECT
   COUNT(*) as `likes less 10 old`
FROM likes as lk
JOIN `profiles` AS pf ON lk.user_id = pf.user_id
WHERE (pf.birthday + INTERVAL 10 YEAR) < NOW();