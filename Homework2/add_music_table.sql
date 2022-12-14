# Добавим таблицу с музыкой
USE vk;
-- DROP TABLE IF EXISTS music;  если есть то удалим таблицу
CREATE TABLE music(
	id SERIAL,
	album_id BIGINT unsigned NULL,
	media_id BIGINT unsigned NOT NULL,

	FOREIGN KEY (album_id) REFERENCES music_albums(id),
    FOREIGN KEY (media_id) REFERENCES media(id)
);