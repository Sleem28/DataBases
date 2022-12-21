# Подсчитать количество групп, в которые вступил каждый пользователь.

# Вариант 1
-- USE vk;
-- SELECT
-- 	user_id,
-- 	(SELECT firstname FROM users WHERE user_id = id) as `user name`,
-- 	(SELECT lastname FROM users WHERE user_id = id) as `user last name`,
-- 	COUNT(*) as quantity
-- FROM users_communities
-- GROUP BY user_id;

# Вариант 2
USE vk;
SELECT
	user_id,
	u.firstname as `user name`,
	u.lastname as `user last name`,
	COUNT(*) as quantity
FROM users_communities
JOIN users as u ON user_id = id
GROUP BY user_id;