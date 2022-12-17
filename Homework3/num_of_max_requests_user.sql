-- Выведите номер пользователя, который отправил больше всех заявок в друзья (таблица friend_requests)

USE vk;

SELECT `initiator_user_id`, COUNT(*) AS request_count
FROM friend_requests
GROUP BY `initiator_user_id`
ORDER BY request_count DESC
LIMIT 1;

