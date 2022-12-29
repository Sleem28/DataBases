/*Используя транзакцию, написать функцию, которая удаляет всю информацию об указанном пользователе из БД. 
Пользователь задается по id. Удалить нужно все сообщения, лайки, медиа записи, профиль и запись из таблицы users. 
Функция должна возвращать номер пользователя.*/
USE vk;
START TRANSACTION;
	DROP FUNCTION IF EXISTS del_all_userinfo;
	DELIMITER //
	CREATE FUNCTION del_all_userinfo(this_user_id BIGINT UNSIGNED)
    RETURNS BIGINT READS SQL DATA
		BEGIN
			DELETE FROM messages WHERE messages.from_user_id = this_user_id;                      -- delete from messages
			DELETE FROM messages WHERE messages.to_user_id = this_user_id;                        -- delete from messages
            
			DELETE FROM friend_requests WHERE friend_requests.initiator_user_id = this_user_id;   -- delete from friend requests
			DELETE FROM friend_requests WHERE friend_requests.target_user_id = this_user_id;      -- delete from friend requests
            
            DELETE FROM likes WHERE likes.user_id = this_user_id;                                 -- delete from likes
            DELETE FROM media WHERE media.user_id = this_user_id;                                 -- delete from media
            DELETE FROM `profiles` WHERE `profiles`.user_id = this_user_id;                       -- delete from profiles
            DELETE FROM users_communities WHERE users_communities.user_id = this_user_id;         -- delete from users communities
            DELETE FROM `users` WHERE `users`.id = this_user_id;                                  -- delete from users
            
            RETURN this_user_id; -- return user id
        END//
	DELIMITER ;
COMMIT;

SELECT del_all_userinfo(12); -- Erase all info about and from a user who has the number 12