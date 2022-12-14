#Написать скрипт, удаляющий сообщения «из будущего» (дата позже сегодняшней)
USE vk;
DELETE FROM messages
WHERE (UNIX_TIMESTAMP(created_at) - UNIX_TIMESTAMP(NOW()) > 0);