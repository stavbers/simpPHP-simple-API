-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 05 2023 г., 22:57
-- Версия сервера: 5.7.41-log-cll-lve
-- Версия PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ch655e6de3_apitest`
--

-- --------------------------------------------------------

--
-- Структура таблицы `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `country_code` varchar(100) NOT NULL,
  `population` varchar(100) NOT NULL,
  `info` varchar(10000) NOT NULL,
  `img` varchar(100) NOT NULL,
  `imgFull` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `city`
--

INSERT INTO `city` (`id`, `name`, `country_code`, `population`, `info`, `img`, `imgFull`) VALUES
(1, 'Kabul', 'AFG', '1780000', 'Kabul is the capital and largest city of Afghanistan. Located in the Eastern half of the country, it is also a municipality, forming part of the Kabul Province; it is administratively divided into 22 municipal districts. According to 2023 estimates, the population of Kabul was 5 million people', 'https://files.stavbers.site/imgApi_city/kabul-min.jpeg', 'https://files.stavbers.site/imgFullApi_city/kabul.png'),
(3, 'Amsterdam', 'NLD', '731200', 'Амстерда́м — столиця Нідерландів. Розташований у провінції Північна Голландія в гирлі річки Амстел. Амстердам сполучений з Північним морем морським каналом', 'https://files.stavbers.site/imgApi_city/Amsterdam-min.jpeg', 'https://files.stavbers.site/imgFullApi_city/Amsterdam.png'),
(4, 'Rotterdam', 'NLD', '593321', 'Роттерда́м — друге найбільше місто у Нідерландах після Амстердама, у якому розташований найбільший порт у Європі. За даними перепису 2018 року, населення міста становить 641 356 жителів. Місто розташоване у провінції Південна Голландія. Муніципалітет займає площу 304,22 км². Сучасний Роттердам відомий своїми хмарочосами — вони численні, але не виділяються особливою висотою', 'https://files.stavbers.site/imgApi_city/Rotterdam-min.jpeg', 'https://files.stavbers.site/imgFullApi_city/Rotterdam.png'),
(5, 'Breda', 'NLD', '160398', 'Breda is a city and municipality in the southern part of the Netherlands, located in the province of North Brabant. The name derived from brede Aa and refers to the confluence of the rivers Mark and Aa', 'https://files.stavbers.site/imgApi_city/Breda-min.jpeg', 'https://files.stavbers.site/imgFullApi_city/Breda.png'),
(6, 'Annaba', 'DZA', '183377', 'Annaba, formerly known as Bon, Bona and Bône, is a seaport city in the northeastern corner of Algeria, close to the border with Tunisia. Annaba is near the small Seybouse River and is in the Annaba Province. With a population of about 464,740 and 1,000,000 for the metropole, Annaba is the third-largest city and the leading industrial center in Algeria', 'https://files.stavbers.site/imgApi_city/Annaba-min.jpeg', 'https://files.stavbers.site/imgFullApi_city/Annaba.png'),
(7, 'Godoy', 'ARG', '206998', 'Godøya or Godøy is an island in Giske Municipality in Møre og Romsdal county, Norway. The island is famous for its beautiful nature, dominated by the 497-metre tall mountain Storhornet and the large lake Alnesvatnet. The 10.9-square-kilometre island had 1,117 residents in 2015', 'https://files.stavbers.site/imgApi_city/Godoy-min.jpeg', 'https://files.stavbers.site/imgFullApi_city/Godoy.png'),
(8, 'Oruro', 'BOL', '223553', 'Oruro or Uru Uru is a city in Bolivia with a population of 264,683, about halfway between La Paz and Sucre in the Altiplano, approximately 3,709 meters above sea level. It is Bolivias fifth-largest city by population, after Santa Cruz de la Sierra, El Alto, La Paz, and Cochabamba', 'https://files.stavbers.site/imgApi_city/Oruro-min.jpeg', 'https://files.stavbers.site/imgFullApi_city/Oruro.png'),
(9, 'Dourados', 'BRA', '164716', 'Dourados is a Brazilian municipality, situated in the state of Mato Grosso do Sul, 225 km Southwest of Campo Grande. It has a population of about 225,000 inhabitants, and its economy is based mainly in arable agriculture and in cattle ranching. Dourados is also the second most populous and important city of this state', 'https://files.stavbers.site/imgApi_city/Dourados-min.jpeg', 'https://files.stavbers.site/imgFullApi_city/Dourados.png'),
(10, 'Liverpool', 'GBR', '461000', 'Liverpool is a city and metropolitan borough in North West England. With a population of 500,500 in 2022, it is located within the county of Merseyside and is the principal city of the wider Liverpool City Region. Its metropolitan area is the fifth largest in the United Kingdom, with a population of 2.24 million', 'https://files.stavbers.site/imgApi_city/Liverpool-min.jpeg', 'https://files.stavbers.site/imgFullApi_city/Liverpool.png'),
(11, 'Grimsby', 'GBR', '89000', 'Grimsby or Great Grimsby is a port town and the administrative centre of North East Lincolnshire, Lincolnshire, England. Grimsby adjoins the town of Cleethorpes directly to the south-east forming a conurbation', 'https://files.stavbers.site/imgApi_city/Grimsby-min.jpeg', 'https://files.stavbers.site/imgFullApi_city/Grimsby.png'),
(12, 'Qina', 'EGY', '171275', 'Qena is a city in Upper Egypt, and the capital of the Qena Governorate. Situated on the east bank of the Nile, it was known in antiquity as Kaine and Maximianopolis. Gauthier identifies Qena with ancient Shabt', 'https://files.stavbers.site/imgApi_city/Qina-min.jpeg', 'https://files.stavbers.site/imgFullApi_city/Qina.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
