#1. Создайте таблицу с мобильными телефонами, используя графический интерфейс. Заполните БД данными

CREATE SCHEMA `store`;

CREATE TABLE `store`.`mobile_phones` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `brand` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `quantity` INT NOT NULL,
  `price` DECIMAL NOT NULL,
  PRIMARY KEY (`id`));

INSERT INTO `store`.`mobile_phones` (`id`, `brand`, `model`, `quantity`, `price`) VALUES ('1', 'Samsung', 'Galaxy A52', '3', '49.94');
INSERT INTO `store`.`mobile_phones` (`id`, `brand`, `model`, `quantity`, `price`) VALUES ('2', 'Apple', 'iPhone14', '1', '149.95');
INSERT INTO `store`.`mobile_phones` (`id`, `brand`, `model`, `quantity`, `price`) VALUES ('3', 'Apple', 'iPhone13', '5', '130.26');
INSERT INTO `store`.`mobile_phones` (`id`, `brand`, `model`, `quantity`, `price`) VALUES ('4', 'Samsung', 'A52', '2', '45.23');
INSERT INTO `store`.`mobile_phones` (`id`, `brand`, `model`, `quantity`, `price`) VALUES ('5', 'Honor', 'X7', '1', '29.23');
INSERT INTO `store`.`mobile_phones` (`id`, `brand`, `model`, `quantity`, `price`) VALUES ('6', 'Xiaomi', 'Readmi 10', '3', '17.45');

#2.Выведите название, производителя и цену для товаров, количество которых превышает 2

SELECT model, brand, price
FROM store.mobile_phones
WHERE quantity > 2;

#3.Выведите весь ассортимент товаров марки “Samsung”

SELECT *
FROM store.mobile_phones
WHERE brand = 'Samsung';
