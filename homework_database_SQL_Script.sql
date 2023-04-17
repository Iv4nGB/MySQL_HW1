-- 1. Создайте таблицу с мобильными телефонами, используя графический интерфейс. 
use homework_database;
CREATE TABLE `homework_database`.`mobile_phones` (
  `id_mobile_phones` INT NOT NULL AUTO_INCREMENT,
  `models_mobile_phones` VARCHAR(45) NOT NULL,
  `manufacturers_mobile_phones` VARCHAR(45) NOT NULL,
  `prices_mobile_phones` DECIMAL NULL,
  `quantity_mobile_phones` INT NOT NULL,
  PRIMARY KEY (`id_mobile_phones`));
  
-- Заполните БД данными
INSERT INTO `homework_database`.`mobile_phones` 
  (`models_mobile_phones`, `manufacturers_mobile_phones`, `prices_mobile_phones`, `quantity_mobile_phones`) 
VALUES
('Galaxy 3', 'Samsung', 20000, 1),
('Galaxy 4', 'Samsung', 25000, 9),
('Galaxy 5', 'Samsung', 27000, 22),
('Galaxy 6', 'Samsung', 35000, 1),
('Redmi Note 8', 'Xiaomi', 10000, 33),
('Redmi 9', 'Xiaomi', 15000, 2),
('Redmi 10', 'Xiaomi', 20000, 99);
('iPhone 12 64 Gb', 'Apple', 80000, 2),
('iPhone 13 64 Gb', 'Apple', 90000, 18),
('iPhone 14 128 Gb', 'Apple', 100000, 4),


-- 2. Выведите название, производителя и цену для товаров, количество которых превышает 2
SELECT models_mobile_phones, manufacturers_mobile_phones, prices_mobile_phones 
FROM mobile_phones
WHERE quantity_mobile_phones > 2;

-- 3. Выведите весь ассортимент товаров марки “Samsung”
SELECT * FROM mobile_phones
WHERE manufacturers_mobile_phones = 'Samsung';
