-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июл 31 2021 г., 09:09
-- Версия сервера: 10.6.3-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `project_d`
--

-- --------------------------------------------------------

--
-- Структура таблицы `app`
--

CREATE TABLE `app` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `app`
--

INSERT INTO `app` (`id`, `name`, `number`, `mail`, `message`) VALUES
(1, 'qwe', '', '', 'hello'),
(2, 'max', '', '', 'helloi'),
(3, 'den', '21312312', 'qwer@mail.ru', 'asjdkasf'),
(4, 'den', '21312312', 'qwer@mail.ru', 'asjdkasf'),
(5, 'den', '21312312', 'qwer@mail.ru', 'asjdkasf'),
(6, 'den', '21312312', 'qwer@mail.ru', 'asjdkasf'),
(7, 'qwer qwer', '123124124', 'qwer@mail.ru', ''),
(8, 'qwer qwer', '123124124', 'qwer@mail.ru', ''),
(9, 'max', '79898989', 'user12@mail.ru', 'asdas'),
(10, 'qwer qwer', '123124124', 'qwer@mail.ru', 'dc'),
(11, 'dada', '23123123', 'dada@mail.ru', '123'),
(12, 'dada', '23123123', 'dada@mail.ru', '123'),
(13, 'dada', '23123123', 'dada@mail.ru', '123');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(8) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `education` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `information` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `education`, `role`, `city`, `email`, `password`, `information`, `file_name`, `file_path`) VALUES
(47, 'user1', 'user1', 'school', 'school', 'KZN', 'user1@mail.ru', '$2y$10$5TEp0jlBKUGpy1dyC26MpuGnLRgqvpOZdzSOczBE1Gvq7mqB.lQyS', '', '', 'images/'),
(49, 'user2', 'user2', 'school', 'student', 'ULSK', 'user2@mail.ru', '$2y$10$u7lTMFt/wLE6COyPyzDVCORuJgU43gn/Xg8hGnWwbGNLHvtTU8hry', 'Hello!', '', 'images/'),
(50, 'user3', 'user3', 'school', 'teacher', 'SPB', 'user3@mai.ru', '$2y$10$/N.fNO13InkgfedMl7JGfOHhfFwKqxrl6.q5qQU8PuNPNuHXNN1h.', 'Hello1', 'fashion1.jpg', 'images/fashion1.jpg'),
(51, 'user4', 'user4', 'non', 'teacher', 'ULSK', 'user4@mail.ru', '$2y$10$ls1t0qUgSK2LmzlhXclP3umNhEXyQ8xuUzSvo7VFt85wXACjLPhz.', '', '', 'images/'),
(52, 'user5', 'user5', 'hight_school', 'teacher', 'ULSK', 'user5@mail.ru', '$2y$10$hvBB.4kbt5JR.kyY.imWcuOFsXRn2KJ5vcONURylTg5VvakJv.tz2', '', '', 'images/'),
(53, 'user6', 'user6', 'non', 'teacher', 'ULSK', 'user6@mail.ru', '$2y$10$T2hvlSPS7ZUT4Gswjj5FbucmhgpaZL8BUiTIzL08t6Iod6/Xxyame', '', '', 'images/'),
(54, 'useru7', 'user7', 'non', 'teacher', 'ULSK', 'user7@mail.ru', '$2y$10$jghoQ9Iw3K/GeHqF8i0DG.t6IPP.Xob8S98x8epu3ckzWru8tLzEq', '', '', 'images/'),
(55, 'user8', 'user8', 'non', 'teacher', 'ULSK', 'user8@mail.ru', '$2y$10$FFWco/oRe9OfChWLx1zSEefKfJosCUHkoj2WmIk8CcOGM4t2vIIKe', '', '', 'images/'),
(56, 'user9', 'user9', 'non', 'teacher', 'ULSK', 'user9@mail.ru', '$2y$10$K4S0zF5hq/HYxCY7rEnXHuJRkoKdCj7ChLtnQn2Rt6F85warXEvsi', '', '', 'images/'),
(57, 'user10', 'user10', 'non', 'teacher', 'ULSK', 'user10@mail.ru', '$2y$10$PMRoO/VfP1Y6oVgM4sbMnOHAm8VmY4SoPMzJ2MgV6LwWIpeZxO/Im', '', '', 'images/'),
(58, 'user11', 'user11', 'non', 'teacher', 'ULSK', 'user11@mail.ru', '$2y$10$SpGZK/SXBGekYF/nJojqNOzn1nO24TKkrkGrkzbiTHuejU0P9RxB.', '', '', 'images/'),
(59, 'user12', 'user12', 'non', 'teacher', 'ULSK', 'user12@mail.ru', '$2y$10$46KE0PbRwIb6.ka8dmeH3.yKPduvGRLeU0XCUEhjoSrZ3FrYsVs4m', '', '', 'images/'),
(60, 'user13', 'user13', 'non', 'teacher', 'ULSK', 'user13@mail.ru', '$2y$10$i0M4QTMGENOxAcjAcs7GP.QC5EBq.p38szysINxELLz3qq937BtGy', '', '', 'images/'),
(61, 'qwer', 'qwer', 'non', 'teacher', 'ULSK', 'qwer@mail.ru', '$2y$10$nASOWYivncsCJLE.3cFNVOvVVFoAfnNNU1lbm3O4zcHJ4NvoJUPVO', 'qwer', '', 'images/'),
(62, 'zxcv', 'zxcv', 'hight_school', 'student', 'SMR', 'zxcv@mail.ru', '$2y$10$aXxlIn5ihcG6kksJmZ4Nme5NKKHjIVdgSpYARFjPV9kFM8lraLrhC', '', '', 'images/'),
(63, 'asd', 'asd', 'school', 'student', 'MSK', 'asd@mail.ru', '$2y$10$gavRSi1W/7UiueBGLqRAxOb3dvejyGqPYqY2iLTjx/U2FR5iimd6C', 'asd', '', 'images/'),
(64, 'test1', 'test1', 'hight_school', 'student', 'MSK', 'test1@mail.ru', '$2y$10$GLBVBEBJo1fnAiztscs8gO0t6Mk.4/jd1kEokUjw16p4nLzuYO6Uy', 'qywdiuqiwdyiuwdiw', '', 'images/'),
(65, 'ÐœÐ°ÐºÑÐ¸Ð¼', 'Ð”ÐµÑ€Ð³ÑƒÐ½Ð¾Ð²', 'school', 'teacher', 'ULSK', 'dergan73@mail.ru', '$2y$10$Beelwy9GjcJKgd6yUKI8lOK4UjiULbCeV0RrvCTXCNqmf/tnmYv.e', 'SADASDASDA', '', 'images/'),
(68, 'derga13', 'derga', 'hight_school', 'teacher', 'ULSK', 'derga@mail.ru', '$2y$10$7xWwsbHyXSdTacsQXpXZ/ep8ESo1aMDDtlm1.ZtSX4G54LDVboixy', 'qweqwrqwrqwre', '', 'images/'),
(69, 'user1555', 'user155', 'non', 'teacher', 'ULSK', 'u15@mail.ru', '$2y$10$CDJG1GlEXmmwrF6MLUYgAefEFGOKOIEDMYZHtlXR45VR5mbhs3Q6K', '', '', 'images/'),
(70, 'rrr', 'rrr', 'non', 'teacher', 'ULSK', 'rrr@mail.ru', '$2y$10$TamD3cV64hCEzYPL6WNwKuDbwxTSc99QVUe//853VRsRES0UWfEfG', '', '', 'images/'),
(71, 'user16', '', 'non', 'teacher', 'ULSK', 'user16@mail.ru', '$2y$10$sxq9pgeFC/d5xjg813t4b.0.Va3kFbbgGN39DKmt4jHO/ffD0FxuO', '', '', 'images/');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `app`
--
ALTER TABLE `app`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `app`
--
ALTER TABLE `app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
