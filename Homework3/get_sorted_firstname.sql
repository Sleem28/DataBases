-- Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке.

SELECT firstname
FROM vk.users
ORDER BY firstname;