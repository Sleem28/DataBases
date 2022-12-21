# Пусть задан некоторый пользователь. Из всех пользователей соц. сети найдите человека, который больше всех общался с выбранным пользователем (написал ему сообщений).
USE vk;
SELECT 
	to_user_id as `to user`,
    (SELECT firstname FROM `users` WHERE id = mg.from_user_id) as `name`,
    (SELECT lastname FROM `users` WHERE id = mg.from_user_id) as `last name`,
    COUNT(*) as messages
FROM `messages` as mg
join `users` as u on u.id = mg.to_user_id
WHERE to_user_id = 1
GROUP BY mg.from_user_id
ORDER BY messages DESC
LIMIT 1;
