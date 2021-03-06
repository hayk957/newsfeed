-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 24 2018 г., 20:26
-- Версия сервера: 10.1.32-MariaDB
-- Версия PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `news_app`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Art'),
(2, 'Sport'),
(3, 'Government'),
(4, 'Environmental\r\n'),
(5, 'Politics'),
(6, 'Weather'),
(7, 'Universe');

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `title`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'American Samoa'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Anguilla'),
(8, 'Antarctica'),
(9, 'Antigua and Barbuda'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Aruba'),
(13, 'Australia'),
(14, 'Austria'),
(15, 'Azerbaijan'),
(16, 'Bahamas'),
(17, 'Bahrain'),
(18, 'Bangladesh'),
(19, 'Barbados'),
(20, 'Belarus'),
(21, 'Belgium'),
(22, 'Belize'),
(23, 'Benin'),
(24, 'Bermuda'),
(25, 'Bhutan'),
(26, 'Bolivia'),
(27, 'Bosnia and Herzegowina'),
(28, 'Botswana'),
(29, 'Bouvet Island'),
(30, 'Brazil'),
(31, 'British Indian Ocean Territory'),
(32, 'Brunei Darussalam'),
(33, 'Bulgaria'),
(34, 'Burkina Faso'),
(35, 'Burundi'),
(36, 'Cambodia'),
(37, 'Cameroon'),
(38, 'Canada'),
(39, 'Cape Verde'),
(40, 'Cayman Islands'),
(41, 'Central African Republic'),
(42, 'Chad'),
(43, 'Chile'),
(44, 'China'),
(45, 'Christmas Island'),
(46, 'Cocos (Keeling) Islands'),
(47, 'Colombia'),
(48, 'Comoros'),
(49, 'Congo'),
(50, 'Congo, the Democratic Republic of the'),
(51, 'Cook Islands'),
(52, 'Costa Rica'),
(53, 'Cote d\'Ivoire'),
(54, 'Croatia (Hrvatska)'),
(55, 'Cuba'),
(56, 'Cyprus'),
(57, 'Czech Republic'),
(58, 'Denmark'),
(59, 'Djibouti'),
(60, 'Dominica'),
(61, 'Dominican Republic'),
(62, 'East Timor'),
(63, 'Ecuador'),
(64, 'Egypt'),
(65, 'El Salvador'),
(66, 'Equatorial Guinea'),
(67, 'Eritrea'),
(68, 'Estonia'),
(69, 'Ethiopia'),
(70, 'Falkland Islands (Malvinas)'),
(71, 'Faroe Islands'),
(72, 'Fiji'),
(73, 'Finland'),
(74, 'France'),
(75, 'France Metropolitan'),
(76, 'French Guiana'),
(77, 'French Polynesia'),
(78, 'French Southern Territories'),
(79, 'Gabon'),
(80, 'Gambia'),
(81, 'Georgia'),
(82, 'Germany'),
(83, 'Ghana'),
(84, 'Gibraltar'),
(85, 'Greece'),
(86, 'Greenland'),
(87, 'Grenada'),
(88, 'Guadeloupe'),
(89, 'Guam'),
(90, 'Guatemala'),
(91, 'Guinea'),
(92, 'Haiti'),
(93, 'Heard and Mc Donald Islands'),
(94, 'Holy See (Vatican City State)'),
(95, 'Honduras'),
(96, 'Hong Kong'),
(97, 'Hungary'),
(98, 'Iceland'),
(99, 'India'),
(100, 'Indonesia'),
(101, 'Iran (Islamic Republic of)'),
(102, 'Iraq'),
(103, 'Ireland'),
(104, 'Israel'),
(105, 'Italy'),
(106, 'Jamaica'),
(107, 'Japan'),
(108, 'Jordan'),
(109, 'Kazakhstan'),
(110, 'Kenya'),
(111, 'Kiribati'),
(112, 'Korea, Democratic People\'s Republic of'),
(113, 'Korea, Republic of'),
(114, 'Kuwait'),
(115, 'Kyrgyzstan'),
(116, 'Lao, People\'s Democratic Republic'),
(117, 'Latvia'),
(118, 'Lebanon'),
(119, 'Lesotho'),
(120, 'Liberia'),
(121, 'Libyan Arab Jamahiriya'),
(122, 'Liechtenstein'),
(123, 'Lithuania'),
(124, 'Luxembourg'),
(125, 'Macau'),
(126, 'Macedonia, The Former Yugoslav Republic of'),
(127, 'Madagascar'),
(128, 'Malawi'),
(129, 'Maldives'),
(130, 'Mali'),
(131, 'Malta'),
(132, 'Marshall Islands'),
(133, 'Martinique'),
(134, 'Mauritania'),
(135, 'Mauritius'),
(136, 'Mayotte'),
(137, 'Mexico'),
(138, 'Micronesia, Federated States of'),
(139, 'Moldova, Republic of'),
(140, 'Monaco'),
(141, 'Mongolia'),
(142, 'Montserrat'),
(143, 'Morocco'),
(144, 'Mozambique'),
(145, 'Myanmar'),
(146, 'Namibia'),
(147, 'Nauru'),
(148, 'Nepal'),
(149, 'Netherlands'),
(150, 'Netherlands Antilles'),
(151, 'New Caledonia'),
(152, 'New Zealand'),
(153, 'Nicaragua'),
(154, 'Niger'),
(155, 'Nigeria'),
(156, 'Niue'),
(157, 'Norfolk Island'),
(158, 'Northern Mariana Islands'),
(159, 'Norway'),
(160, 'Oman'),
(161, 'Pakistan'),
(162, 'Palau'),
(163, 'Panama'),
(164, 'Papua New Guinea'),
(165, 'Paraguay'),
(166, 'Peru'),
(167, 'Philippines'),
(168, 'Pitcairn'),
(169, 'Poland'),
(170, 'Portugal'),
(171, 'Puerto Rico'),
(172, 'Qatar'),
(173, 'Reunion'),
(174, 'Romania'),
(175, 'Russian Federation'),
(176, 'Rwanda'),
(177, 'Saint Kitts and Nevis'),
(178, 'Saint Lucia'),
(179, 'Saint Vincent and the Grenadines'),
(180, 'Samoa'),
(181, 'San Marino'),
(182, 'Sao Tome and Principe'),
(183, 'Saudi Arabia'),
(184, 'Senegal'),
(185, 'Seychelles'),
(186, 'Sierra Leone'),
(187, 'Singapore'),
(188, 'Slovakia (Slovak Republic)'),
(189, 'Slovenia'),
(190, 'Solomon Islands'),
(191, 'Somalia'),
(192, 'South Africa'),
(193, 'South Georgia and the South Sandwich Islands'),
(194, 'Spain'),
(195, 'Sri Lanka'),
(196, 'St. Helena'),
(197, 'St. Pierre and Miquelon'),
(198, 'Sudan'),
(199, 'Suriname'),
(200, 'Svalbard and Jan Mayen Islands'),
(201, 'Swaziland'),
(202, 'Sweden'),
(203, 'Switzerland'),
(204, 'Syrian Arab Republic'),
(205, 'Taiwan, Province of China'),
(206, 'Tajikistan'),
(207, 'Tanzania, United Republic of'),
(208, 'Thailand'),
(209, 'Togo'),
(210, 'Tokelau'),
(211, 'Tonga'),
(212, 'Trinidad and Tobago'),
(213, 'Tunisia'),
(214, 'Turkey'),
(215, 'Turkmenistan'),
(216, 'Turks and Caicos Islands'),
(217, 'Tuvalu'),
(218, 'Uganda'),
(219, 'Ukraine'),
(220, 'United Arab Emirates'),
(221, 'United Kingdom'),
(222, 'United States'),
(223, 'United States Minor Outlying Islands'),
(224, 'Uruguay'),
(225, 'Uzbekistan'),
(226, 'Vanuatu'),
(227, 'Venezuela'),
(228, 'Vietnam'),
(229, 'Virgin Islands (British)'),
(230, 'Virgin Islands (U.S.)'),
(231, 'Wallis and Futuna Islands'),
(232, 'Western Sahara'),
(233, 'Yemen'),
(234, 'Yugoslavia'),
(235, 'Zambia'),
(236, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `heading` varchar(255) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `content` text CHARACTER SET latin1 NOT NULL,
  `image_path` varchar(255) CHARACTER SET latin1 NOT NULL,
  `category_id` int(11) NOT NULL,
  `date_of_creating` date NOT NULL,
  `autor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `heading`, `description`, `content`, `image_path`, `category_id`, `date_of_creating`, `autor_id`) VALUES
(1, 'news 1', 'aaaaa aaaaaaaaaaaa aqqq', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'test.jpg', 1, '0000-00-00', 0),
(2, 'title 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesett', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'test.jpg', 1, '0000-00-00', 0),
(23, 'bjsbcjsbjc', 'wdwkd', 'dwjdbnkwn ', '96 (3).jpg ', 6, '2018-08-02', 0),
(24, 'news conserning iuniverse', 'The Universe is all of space and time[a] and their contents,[10] including planets,', 'The Universe is all of space and time[a] and their contents,[10] including planets, stars, galaxies, and all other forms of matter and energy. While the spatial size of the entire Universe is still unknown,[3] it is possible to measure the observable universe.\r\n\r\nT ', '96 (3).jpg ', 7, '2018-08-02', 0),
(25, 'There are many', 'There are many variations of passages of Lorem Ipsum available', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ', '5.jpg ', 1, '2018-08-02', 0),
(26, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ', '5.jpg ', 4, '2018-08-02', 0),
(27, 'Does ugliness have aesthetic value?', 'Hence, beautiful wallpapers can also come in many different', 'Can the ugliness have aesthetic value? And above all, how to define beauty? What aesthetic pleasure is he different from any other pleasure? What is the nature of aesthetic pleasure? Is a beautiful property of things? All these questions have no universally accepted response. Hence, beautiful wallpapers can also come in many different ', '13.jpg ', 1, '2018-08-02', 0),
(29, 'In pto demonstrate t', 'In publishing and graphic design, lorem ipsum is common placeholder text used to demonstrate the graphic elements of a document or visual presentation, such as web pages, typography, and graphical layout. It is a form of \"greeking\".', 'In publishing and graphic design, lorem ipsum is common placeholder text used to demonstrate the graphic elements of a document or visual presentation, such as web pages, typography, and graphical layout. It is a form of \"greeking\".\r\n\r\nEven though using \"lorem ipsum\" often arouses curiosity due to its resemblance to classical Latin, it is not intended to have meaning. Where text is visible in a document, people tend to focus on the textual content rather than upon overall presentation, so publishers use lorem ipsum when displaying a typeface or design in order to direct the focus to presentation. \"Lorem ipsum\" also approximates a typical distribution of letters in English.In publishing and graphic design, lorem ipsum is common placeholder text used to demonstrate the graphic elements of a document or visual presentation, such as web pages, typography, and graphical layout. It is a form of \"greeking\".\r\n\r\nEven though using \"lorem ipsum\" often arouses curiosity due to its resemblance to classical Latin, it is not intended to have meaning. Where text is visible in a document, people tend to focus on the textual content rather than upon overall presentation, so publishers use lorem ipsum when displaying a typeface or design in order to direct the focus to presentation. \"Lorem ipsum\" also approximates a typical distribution of letters in English.In publishing and graphic design, lorem ipsum is common placeholder text used to demonstrate the graphic elements of a document or visual presentation, such as web pages, typography, and graphical layout. It is a form of \"greeking\".\r\n\r\nEven though using \"lorem ipsum\" often arouses curiosity due to its resemblance to classical Latin, it is not intended to have meaning. Where text is visible in a document, people tend to focus on the textual content rather than upon overall presentation, so publishers use lorem ipsum when displaying a typeface or design in order to direct the focus to presentation. \"Lorem ipsum\" also approximates a typical distribution of letters in English. ', '11.jpg ', 6, '2018-08-02', 0),
(30, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years o', 'to demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate t\r\nContrary to', 'to demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate t ', '10.jpg ', 3, '2018-08-02', 0),
(31, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years o', 'wdnjndwjk', 'wjdiqwkd ', '3.jpg ', 1, '2018-08-02', 0),
(32, 'there are a lot of environmental issues', 'Our Mother Earth is currently facing lot of environmental concerns. The environmental problems like global warming, acid rain, air pollution, urban', 'Our Mother Earth is currently facing lot of environmental concerns. The environmental problems like global warming, acid rain, air pollution, urban sprawl, waste disposal, ozone layer depletion, water pollution, climate change and many more affect every human, animal and nation on this planet. Over the last few decades, the exploitation of our planet and degradation of our environment have  gone up at an alarming rate. As our actions have been not in favor of protecting this planet, we have seen natural disasters striking us more often in the form of flash floods, tsunamis and cyclones. ', '1.jpg ', 4, '2018-08-02', 0),
(47, 'wqjdnjqwnd', 'wndkwndnwdn', 'wdbjwbdjw ', '1533226833.jpg ', 1, '2018-08-02', 0),
(48, 'nuture', 'content from clients can often be a frustrating process), and is used in place o', 'content from clients can often be a frustrating process), and is used in place of meaningful content during the design phase.With roots in classical Latin literature, lorem ipsum has ', '1533226940.jpg ', 6, '2018-08-02', 0),
(49, 'again test', 'about something', 'just testing ', '1533228447.jpg ', 1, '2018-08-02', 0),
(51, 'Contrary to popular belief, L', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years', 'vContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years ', '1533228912.jpg ', 6, '2018-08-02', 0),
(52, 'jnwjnjnwdfjnwjd', 'djndnkq', 'dnqjkdnqndk ', '1533230014.jpg ', 4, '2018-08-02', 0),
(53, 'The Minions are small, yellow henchmen', 'The Minions are small, yellow henchmen', 'The Minions are small, yellow henchmen ', '1533288851.jpg ', 1, '2018-08-03', 0),
(54, 'nwkwnk', 'nkwnfknw', 'kwnkwn ', '1533292357.jpg ', 4, '2018-08-03', 0),
(55, 'efnkefenf', 'ejkfenknfkf', 'ebjbefkefnk ', '1533302618.jpg ', 4, '2018-08-03', 0),
(56, 'kjn3rk3nrk3nrkn3rk3nkr', '3fk3nr3nrk3nrk', '3nk3nkn3krn3k ', '1533308473.jpg ', 4, '2018-08-03', 0),
(57, 'hbhjb', 'bj', 'bjbj ', '1533384524.jpg ', 1, '2018-08-04', 0),
(58, 'Õ¸Õ°Õ«Õ°ÕµÕ¸Õ«Ö†Õ°', 'Õ¸Ö†Õ¶Õ¯Õ¶Õ¸Ö†', 'Õ¸Õ¶Ö†Õ¯Õ¸Õ¶Ö† ', '1533385236.jpg ', 6, '2018-08-04', 0),
(59, 'nbdjknwkdnkw', 'Õ¶Õ¸ÕµÕ¤Õ¶Õ¸Õ¯Õ¤Õ¶Õ¸Õ¯Õ¤Õ¶Õ¯Õ¸Õ¶Õ¤', 'Ñ‚Ð¾Ñ†Ñ‚Ð²Ð»Ñ†Ð²Ð» ', '1533386097.jpg ', 3, '2018-08-04', 0),
(60, 'wdnkwndk', 'djqbdjqbdj', 'wnkdnwkln ', '1533386524.jpg ', 6, '2018-08-04', 0),
(61, 'djwnfkwnfk', 'wnfklnwflwnfl', 'wldmwlfmwl ', '1533386744.jpg ', 5, '2018-08-04', 0),
(62, 'Õ¸Õ¶Õ¯Õ¤Õ¸Õ¯Õ¤', 'Õ¸ Õ¤Õ¢Õ¸ÕµÕ¢Õ¤Õµ', 'Õ¸Õ¤Õ¶Õ¯Õ¶Õ¸Õ¤ ', '1533387511.jpg ', 4, '2018-08-04', 0),
(63, 'Õ¶Õ¯Õ¸Õ¶Ö†Õ¯Õ¸Ö†', 'Õ¸ÕµÕ¯Õ¢Ö†Õ¯', 'Õ¸Õ¶Õ¤Õ¯Õ¶Õ¸Ö† ', '1533387600.jpg ', 1, '2018-08-04', 0),
(64, 'Õ¶Õ¯Õ¤Õ¶Õ¸Õ¯Õ¤Ö†Õ¶Õ¯', 'Õ¶Õ¸Õ¯Õ¶Ö†Õ¯Õ¸Õ¶', 'Õ¸Õ¶Õ¤Õ¯Õ¸Õ¶Õ¤Õ¯ ', '1533387816.jpg ', 5, '2018-08-04', 0),
(65, 'nejfnkefn', 'bjwjdf', 'w dkwnfdk ', '1533387863.jpg ', 6, '2018-08-04', 0),
(66, 'Ñ‚Ð¾Ñ†', 'Ñ†Ð²Ð¾Ð»Ñ†Ð¸Ð²Ð»', 'Ñ†Ñ‚Ð²Ð°Ð»Ñ†Ð° ', '1533387880.jpg ', 1, '2018-08-04', 0),
(67, 'Ð¸Ñ†Ð²Ð¾Ð¸Ñ†Ð²Ð¾Ð¸Ð¾', 'wbdjwd', 'bdjwbdjwbdjbwj ', '1533387955.jpg ', 6, '2018-08-04', 0),
(69, 'Õ¢ÕµÕ¸Õ¤Õ¢Õ¸Õ¤ÕµÕ¢Õ¤Õ¸Õµ', 'Õ¤Õ¸Õ¶Õ¯Õ¤Õ¶Õ¯', 'Õ¤Õ¸Õ¯Õ¤Õ¶Õ¯ ', '1533388215.jpg ', 1, '2018-08-04', 0),
(70, 'fekjnfkefnk', 'dfjefjefbjef', 'ejfebfbjbjbjbj ', '1533398401.jpg ', 4, '2018-08-04', 0),
(71, 'ecjecje', 'hkcrhkc', 'chjehcjehcj ', '1533453359.jpg ', 4, '2018-08-05', 0),
(72, 'dwkdkwndk', 'nfkwnf', 'wnknwkdfn ', '1533537201.jpg ', 1, '2018-08-06', 0),
(73, 'wfjwfj', 'fjfjwfbw', 'wjfwnjfkn ', '1533545760.jpg ', 1, '2018-08-06', 0),
(74, 'qsbjqbdsj', 'wdbjwdjwb', 'wdkwbdkw ', '1533547802.jpg ', 1, '2018-08-06', 0),
(75, 'vjhjbj', 'bvjjbj', 'bjbjj ', '1533556416.jpg ', 4, '2018-08-06', 0),
(76, 'vjhjbj', 'bvjjbj', 'bjbjj ', '1533556417.jpg ', 4, '2018-08-06', 0),
(77, 'qdjdqd', 'dqbdj', 'dhjbqbdq ', '1533559864.jpg ', 3, '2018-08-06', 0),
(78, 'wdfwkfnnfkfnk', 'wnkfwnfk', 'wknkfnk ', '1533632470.jpg ', 4, '2018-08-07', 0),
(79, 'nqjkdnkndkqnde', 'qdknqdknqdk', 'qnkdndknqwkd ', '1533640046.jpg ', 2, '2018-08-07', 0),
(81, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years ', 'wnkwnfkwnfkief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years o', 'kfefkeflmwief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years oief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years oief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years o ', '1533650846.jpg ', 5, '2018-08-07', 0),
(82, 'dfjwnfjwnfjw', 'wdbjwdbj', 'wdjwndknwd ', '1533707087.jpg ', 5, '2018-08-08', 0),
(83, 'enkfnerkfkrfn', 'nnjknkmnkn', 'enfknkrngkr ', '1533713478.jpg ', 1, '2018-08-08', 0),
(84, 'bdjwbdjbwdjwd', 'dqnknqdknq', 'ndkqndkqndk ', '1533717102.jpg ', 4, '2018-08-08', 0),
(85, 'dkqwndqkdk', 'qdnqnd,qdn,', 'qdnqndqd, ', '1533743475.jpg ', 5, '2018-08-08', 0),
(86, ' nknk', 'mlmlmlm', 'knknk ', '1533903869.jpg ', 4, '2018-08-10', 0),
(89, 'test for autor_id', 'axlamxlamlmaldnkqndkdnkqnd', 'qskqnskqnskd ', '1534316282.jpg ', 5, '2018-08-15', 88),
(91, 'nwknfkwnf', 'fmlqmflqm', 'fkqnkfn ', '1534319211.jpg ', 4, '2018-08-15', 88),
(92, 'Sport article', 'ndkwnknwf kdmlqmdl kqndkd', 'dnqkndkqnd kqdnkqndkq mkn dlkqmldmqldmql lqmdlqmdld ', '1534333118.jpg ', 2, '2018-08-15', 120),
(93, 'jvbjbj', 'vhvh', '<p>bkbkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk<i>kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk</i>kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk</p> ', '1534336329.jpg ', 4, '2018-08-15', 88),
(94, 'mdlqdmlmdlq', 'qmdlmqdml', '<p>qdknqdln qdnl<strong>mqndl qkdnk</strong>qdn<s>lqdn nlqm</s>;l,q;,; n nfwk<em>nknnnkfn mf</em>nkwnfknwfk</p>\r\n ', '1534350197.jpg ', 5, '2018-08-15', 88),
(95, 'wdnkdn', 'dwnkdnk', '<p>dnkn<s>dwknwd wjn</s>dkndw</p>\r\n ', '1534350560.jpg ', 4, '2018-08-15', 88),
(96, 'asfas', 'asdfsa', '<p>sadfsa</p>\r\n', '1535042219.jpg', 2, '2018-08-23', 0),
(97, 'rtfdchgf', 'ghvh', '<p>khgkg</p>\r\n', '1535042241.jpg', 2, '2018-08-23', 0),
(98, 'rtfdchgf', 'lmk', 'gjfgy\r\n', '1535042492.jpg', 2, '2018-08-23', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `email` varchar(320) NOT NULL,
  `password` varchar(40) NOT NULL,
  `profile_path` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `registr_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_country_id_registr_s` (`country_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `fk_category_id_news` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_country_id_registr_s` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
