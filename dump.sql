-- Adminer 4.2.4 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `genre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `books` (`id`, `name`, `author`, `year`, `isbn`, `genre`) VALUES
(1,	'Жесткий тайм-менеджмент. Возьмите свою жизнь под контроль',	'Дэн Кеннеди',	2015,	'978-5-9614-5086-6',	'Самосовершенствование'),
(2,	'Совершенный код. Практическое руководство по разработке программного обеспечения',	'Стив Макконнелл',	2005,	'978-5-7502-0064-1',	'Программирование'),
(3,	'Богатый папа, бедный папа',	'Роберт Кийосаки',	2011,	'978-985-15-1659-5',	'Бизнес'),
(4,	'Scrum. Революционный метод управления проектами',	'Джефф Сазерленд',	2014,	'978-5-00057-722-6',	'Менеджмент'),
(5,	'Пятьдесят оттенков серого',	'Э. Л. Джеймс',	2012,	'978-5-699-78002-0',	'Современная зарубежная литература'),
(6,	'Remote. Офис не обязателен',	'Джейсон Фрайд',	2013,	'978-500057-038-8',	'Карьера'),
(7,	'Rework: бизнес без предрассудков',	'Джейсон Фрайд',	2010,	'978-5-91657-119-6',	'Бизнес'),
(8,	'Сначала скажите «нет». Секреты профессиональных переговорщиков',	'Джим Кэмп',	1998,	'978-5-98124-453-7',	'Психология'),
(9,	'Квадрант денежного потока',	'Роберт Кийосаки',	2011,	'978-9-8515-2315-9',	'Бизнес'),
(10,	'Руководство богатого папы по инвестированию',	'Роберт Кийосаки',	2008,	'978-985-15-0420-2',	'Бизнес');

-- 2016-06-01 16:34:57