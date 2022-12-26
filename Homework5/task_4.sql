/*Сколько новостей (записей в таблице media) у каждого пользователя? 
Вывести поля: news_count (количество новостей), user_id (номер пользователя), user_email (email пользователя). 
Попробовать решить с помощью CTE или с помощью обычного JOIN.*/

USE vk;
WITH cte1 AS (
	SELECT
		COUNT(*) as news_count,
        user_id
	FROM media
    GROUP BY user_id
)

SELECT news_count, user_id, email
FROM cte1
JOIN users as u on u.id = cte1.user_id;
