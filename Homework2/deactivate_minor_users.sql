/*Написать скрипт, отмечающий несовершеннолетних пользователей как неактивных (поле is_active = true). 
При необходимости предварительно добавить такое поле в таблицу profiles со значением по умолчанию = false (или 0)*/
USE vk;
#Добавим инфы
-- INSERT INTO `profiles`(user_id, gender, birthday)
-- VALUES
-- (1, 'M', '2015-09-02');
# Добавим колонку
-- ALTER TABLE `profiles` ADD is_active BOOL DEFAULT false;
SET @cur_time := NOW();
SET SQL_SAFE_UPDATES = 0; -- отключим safe updates
UPDATE `profiles`
SET is_active = true WHERE (YEAR(@cur_time) - YEAR(birthday) < 18 AND MONTH(@cur_time) - MONTH(birthday) >= 0 AND DAY(@cur_time) - DAY(birthday) >= 0);
		