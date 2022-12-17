-- Сколько заявок в друзья в каждом статусе? (таблица friend_requests)

USE vk;

SELECT `status`, COUNT(*) AS status_count
FROM friend_requests
GROUP BY `status`;