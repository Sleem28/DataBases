# Подсчитать количество пользователей в каждом сообществе.

# Вариант 1
-- USE vk;
-- SELECT
-- 	(SELECT `name` FROM communities WHERE id = community_id) as `comunity name`,
-- 	COUNT(*) as `user counter`
-- FROM users_communities
-- GROUP BY community_id;

# Вариант 2
USE vk;
SELECT
	com.name as `comunity name`,
	COUNT(*) as `user counter`
FROM users_communities
JOIN communities as com ON id = community_id
GROUP BY community_id;