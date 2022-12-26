/*1. Создайте представление с произвольным SELECT-запросом из прошлых уроков [CREATE VIEW]
  2. Выведите данные, используя написанное представление [SELECT]
  3. Удалите представление [DROP VIEW]*/
  
USE vk;
#------------------------Создал view----------------------------+
CREATE VIEW group_counter AS
	SELECT
		com.name as `comunity name`,
		COUNT(*) as `user counter`
	FROM users_communities
	JOIN communities as com ON id = community_id
	GROUP BY community_id;
#---------------------Вывод данных из VIEW----------------------+
SELECT *
FROM group_counter;
# -------------------------Удалим VIEW--------------------------+
DROP VIEW group_counter;
