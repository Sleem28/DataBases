-- Выведите названия и номера групп, имена которых состоят из 5 символов

SELECT `name`
FROM vk.communities
WHERE `name` LIKE '_____'; -- 5 тире