# Добавим таблицу с музыкальными альбомами
USE vk;
-- DROP TABLE IF EXISTS music_albums;  если есть то удалим таблицу
CREATE TABLE music_albums(
	id SERIAL,
	`name` varchar(255) DEFAULT NULL,
    user_id BIGINT UNSIGNED DEFAULT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id),
  	PRIMARY KEY (id)
);