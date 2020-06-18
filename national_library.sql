-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 18, 2020 at 04:29 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `national_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'Suzanne Collins'),
(2, 'J.K. Rowling'),
(3, 'Nelson Mandela'),
(4, 'Plato');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `author` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `description`, `author`, `genre`, `status`, `date_added`, `date_updated`, `image`) VALUES
(1, 'Catching Fire', 'Against all odds, Katniss Everdeen has survived the Hunger Games. She and fellow District 12 tribute Peeta Mellark are miraculously still alive. Katniss should be relieved, happy even. Yet nothing is the way Katniss wishes it to be. Gale holds her at an icy distance. Peeta has turned his back on her completely. And there are whispers of a rebellion against the Capitol - a rebellion that Katniss and Peeta may have helped create.\n\nMuch to her shock, Katniss has fueled an unrest that she\'s afraid she cannot stop. And what scares her even more is that she\'s not entirely convinced she should try. As time draws near for Katniss and Peeta to visit the districts on the Capitol\'s cruel Victory Tour, the stakes are higher than ever. If they can\'t prove, without a shadow of a doubt, that they are lost in their love for each other, the consequences will be horrifying. Katniss is about to be tested as never before.', 1, 1, 'Available', '2020-06-18 02:06:58', '2020-06-18 02:06:58', 'catching-fire.jpg'),
(2, 'The Hunger Games', 'In the ruins of a place once known as North America lies the nation of Panem, a shining Capitol surrounded by twelve outlying districts. The Capitol is harsh and cruel and keeps the districts in line by forcing them all to send one boy and once girl between the ages of twelve and eighteen to participate in the annual Hunger Games, a fight to the death on live TV.\n', 1, 1, 'Not Available', '2020-06-18 02:09:02', '2020-06-18 02:09:02', 'the-hunger-games.jpg'),
(3, 'Long Walk to Freedom', 'Nelson Mandela is one of the great moral and political leaders of our time: an international hero whose lifelong dedication to the fight against racial oppression in South Africa won him the Nobel Peace Prize and the presidency of his country.', 3, 2, 'Available', '2020-06-18 02:12:23', '2020-06-18 02:12:23', 'long-walk-to-freedom.jpg'),
(4, 'Conversation With Myself', 'Nelson Mandela is widely considered to be one of the most inspiring and iconic figures of our age. Now, after a lifetime of taking pen to paper to record thoughts and events, hardships and victories, he has bestowed his entire extant personal papers, which offer an unprecedented insight into his remarkable life.', 3, 2, 'Not Available', '2020-06-18 02:13:40', '2020-06-18 02:13:40', 'conversation-with-myself.jpg'),
(5, 'Catching Fire', 'Against all odds, Katniss Everdeen has survived the Hunger Games. She and fellow District 12 tribute Peeta Mellark are miraculously still alive. Katniss should be relieved, happy even. Yet nothing is the way Katniss wishes it to be. Gale holds her at an icy distance. Peeta has turned his back on her completely. And there are whispers of a rebellion against the Capitol - a rebellion that Katniss and Peeta may have helped create.\r\n\r\nMuch to her shock, Katniss has fueled an unrest that she\'s afraid she cannot stop. And what scares her even more is that she\'s not entirely convinced she should try. As time draws near for Katniss and Peeta to visit the districts on the Capitol\'s cruel Victory Tour, the stakes are higher than ever. If they can\'t prove, without a shadow of a doubt, that they are lost in their love for each other, the consequences will be horrifying. Katniss is about to be tested as never before.', 1, 1, 'Available', '2020-06-18 02:06:58', '2020-06-18 02:06:58', 'catching-fire.jpg'),
(6, 'The Hunger Games', 'In the ruins of a place once known as North America lies the nation of Panem, a shining Capitol surrounded by twelve outlying districts. The Capitol is harsh and cruel and keeps the districts in line by forcing them all to send one boy and once girl between the ages of twelve and eighteen to participate in the annual Hunger Games, a fight to the death on live TV.\r\n', 1, 1, 'Not Available', '2020-06-18 02:09:02', '2020-06-18 02:09:02', 'the-hunger-games.jpg'),
(7, 'Long Walk to Freedom', 'Nelson Mandela is one of the great moral and political leaders of our time: an international hero whose lifelong dedication to the fight against racial oppression in South Africa won him the Nobel Peace Prize and the presidency of his country.', 3, 2, 'Available', '2020-06-18 02:12:23', '2020-06-18 02:12:23', 'long-walk-to-freedom.jpg'),
(8, 'Conversation With Myself', 'Nelson Mandela is widely considered to be one of the most inspiring and iconic figures of our age. Now, after a lifetime of taking pen to paper to record thoughts and events, hardships and victories, he has bestowed his entire extant personal papers, which offer an unprecedented insight into his remarkable life.', 3, 2, 'Not Available', '2020-06-18 02:13:40', '2020-06-18 02:13:40', 'conversation-with-myself.jpg'),
(9, 'Catching Fire', 'Against all odds, Katniss Everdeen has survived the Hunger Games. She and fellow District 12 tribute Peeta Mellark are miraculously still alive. Katniss should be relieved, happy even. Yet nothing is the way Katniss wishes it to be. Gale holds her at an icy distance. Peeta has turned his back on her completely. And there are whispers of a rebellion against the Capitol - a rebellion that Katniss and Peeta may have helped create.\r\n\r\nMuch to her shock, Katniss has fueled an unrest that she\'s afraid she cannot stop. And what scares her even more is that she\'s not entirely convinced she should try. As time draws near for Katniss and Peeta to visit the districts on the Capitol\'s cruel Victory Tour, the stakes are higher than ever. If they can\'t prove, without a shadow of a doubt, that they are lost in their love for each other, the consequences will be horrifying. Katniss is about to be tested as never before.', 1, 1, 'Available', '2020-06-18 02:06:58', '2020-06-18 02:06:58', 'catching-fire.jpg'),
(10, 'The Hunger Games', 'In the ruins of a place once known as North America lies the nation of Panem, a shining Capitol surrounded by twelve outlying districts. The Capitol is harsh and cruel and keeps the districts in line by forcing them all to send one boy and once girl between the ages of twelve and eighteen to participate in the annual Hunger Games, a fight to the death on live TV.\r\n', 1, 1, 'Not Available', '2020-06-18 02:09:02', '2020-06-18 02:09:02', 'the-hunger-games.jpg'),
(11, 'Long Walk to Freedom', 'Nelson Mandela is one of the great moral and political leaders of our time: an international hero whose lifelong dedication to the fight against racial oppression in South Africa won him the Nobel Peace Prize and the presidency of his country.', 3, 2, 'Available', '2020-06-18 02:12:23', '2020-06-18 02:12:23', 'long-walk-to-freedom.jpg'),
(12, 'Conversation With Myself', 'Nelson Mandela is widely considered to be one of the most inspiring and iconic figures of our age. Now, after a lifetime of taking pen to paper to record thoughts and events, hardships and victories, he has bestowed his entire extant personal papers, which offer an unprecedented insight into his remarkable life.', 3, 2, 'Not Available', '2020-06-18 02:13:40', '2020-06-18 02:13:40', 'conversation-with-myself.jpg'),
(13, 'Catching Fire', 'Against all odds, Katniss Everdeen has survived the Hunger Games. She and fellow District 12 tribute Peeta Mellark are miraculously still alive. Katniss should be relieved, happy even. Yet nothing is the way Katniss wishes it to be. Gale holds her at an icy distance. Peeta has turned his back on her completely. And there are whispers of a rebellion against the Capitol - a rebellion that Katniss and Peeta may have helped create.\r\n\r\nMuch to her shock, Katniss has fueled an unrest that she\'s afraid she cannot stop. And what scares her even more is that she\'s not entirely convinced she should try. As time draws near for Katniss and Peeta to visit the districts on the Capitol\'s cruel Victory Tour, the stakes are higher than ever. If they can\'t prove, without a shadow of a doubt, that they are lost in their love for each other, the consequences will be horrifying. Katniss is about to be tested as never before.', 1, 1, 'Available', '2020-06-18 02:06:58', '2020-06-18 02:06:58', 'catching-fire.jpg'),
(14, 'The Hunger Games', 'In the ruins of a place once known as North America lies the nation of Panem, a shining Capitol surrounded by twelve outlying districts. The Capitol is harsh and cruel and keeps the districts in line by forcing them all to send one boy and once girl between the ages of twelve and eighteen to participate in the annual Hunger Games, a fight to the death on live TV.\r\n', 1, 1, 'Not Available', '2020-06-18 02:09:02', '2020-06-18 02:09:02', 'the-hunger-games.jpg'),
(15, 'Long Walk to Freedom', 'Nelson Mandela is one of the great moral and political leaders of our time: an international hero whose lifelong dedication to the fight against racial oppression in South Africa won him the Nobel Peace Prize and the presidency of his country.', 3, 2, 'Available', '2020-06-18 02:12:23', '2020-06-18 02:12:23', 'long-walk-to-freedom.jpg'),
(16, 'Conversation With Myself', 'Nelson Mandela is widely considered to be one of the most inspiring and iconic figures of our age. Now, after a lifetime of taking pen to paper to record thoughts and events, hardships and victories, he has bestowed his entire extant personal papers, which offer an unprecedented insight into his remarkable life.', 3, 2, 'Not Available', '2020-06-18 02:13:40', '2020-06-18 02:13:40', 'conversation-with-myself.jpg'),
(17, 'Catching Fire', 'Against all odds, Katniss Everdeen has survived the Hunger Games. She and fellow District 12 tribute Peeta Mellark are miraculously still alive. Katniss should be relieved, happy even. Yet nothing is the way Katniss wishes it to be. Gale holds her at an icy distance. Peeta has turned his back on her completely. And there are whispers of a rebellion against the Capitol - a rebellion that Katniss and Peeta may have helped create.\r\n\r\nMuch to her shock, Katniss has fueled an unrest that she\'s afraid she cannot stop. And what scares her even more is that she\'s not entirely convinced she should try. As time draws near for Katniss and Peeta to visit the districts on the Capitol\'s cruel Victory Tour, the stakes are higher than ever. If they can\'t prove, without a shadow of a doubt, that they are lost in their love for each other, the consequences will be horrifying. Katniss is about to be tested as never before.', 1, 1, 'Available', '2020-06-18 02:06:58', '2020-06-18 02:06:58', 'catching-fire.jpg'),
(18, 'Catching Fire', 'Against all odds, Katniss Everdeen has survived the Hunger Games. She and fellow District 12 tribute Peeta Mellark are miraculously still alive. Katniss should be relieved, happy even. Yet nothing is the way Katniss wishes it to be. Gale holds her at an icy distance. Peeta has turned his back on her completely. And there are whispers of a rebellion against the Capitol - a rebellion that Katniss and Peeta may have helped create.\r\n\r\nMuch to her shock, Katniss has fueled an unrest that she\'s afraid she cannot stop. And what scares her even more is that she\'s not entirely convinced she should try. As time draws near for Katniss and Peeta to visit the districts on the Capitol\'s cruel Victory Tour, the stakes are higher than ever. If they can\'t prove, without a shadow of a doubt, that they are lost in their love for each other, the consequences will be horrifying. Katniss is about to be tested as never before.', 1, 1, 'Available', '2020-06-18 02:06:58', '2020-06-18 02:06:58', 'catching-fire.jpg'),
(19, 'Catching Fire', 'Against all odds, Katniss Everdeen has survived the Hunger Games. She and fellow District 12 tribute Peeta Mellark are miraculously still alive. Katniss should be relieved, happy even. Yet nothing is the way Katniss wishes it to be. Gale holds her at an icy distance. Peeta has turned his back on her completely. And there are whispers of a rebellion against the Capitol - a rebellion that Katniss and Peeta may have helped create.\r\n\r\nMuch to her shock, Katniss has fueled an unrest that she\'s afraid she cannot stop. And what scares her even more is that she\'s not entirely convinced she should try. As time draws near for Katniss and Peeta to visit the districts on the Capitol\'s cruel Victory Tour, the stakes are higher than ever. If they can\'t prove, without a shadow of a doubt, that they are lost in their love for each other, the consequences will be horrifying. Katniss is about to be tested as never before.', 1, 1, 'Available', '2020-06-18 02:06:58', '2020-06-18 02:06:58', 'catching-fire.jpg'),
(20, 'Catching Fire', 'Against all odds, Katniss Everdeen has survived the Hunger Games. She and fellow District 12 tribute Peeta Mellark are miraculously still alive. Katniss should be relieved, happy even. Yet nothing is the way Katniss wishes it to be. Gale holds her at an icy distance. Peeta has turned his back on her completely. And there are whispers of a rebellion against the Capitol - a rebellion that Katniss and Peeta may have helped create.\r\n\r\nMuch to her shock, Katniss has fueled an unrest that she\'s afraid she cannot stop. And what scares her even more is that she\'s not entirely convinced she should try. As time draws near for Katniss and Peeta to visit the districts on the Capitol\'s cruel Victory Tour, the stakes are higher than ever. If they can\'t prove, without a shadow of a doubt, that they are lost in their love for each other, the consequences will be horrifying. Katniss is about to be tested as never before.', 1, 1, 'Available', '2020-06-18 02:06:58', '2020-06-18 02:06:58', 'catching-fire.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Fiction'),
(2, 'Biography'),
(3, 'Classic'),
(4, 'History');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `date_added`, `date_updated`) VALUES
(1, 'daniel', '$2b$10$WlZyHh88Drbsm.Hd66XaWe3ejCpZiKu7UUaJ9ZmTjnliTSkbB.cpu', 1, '2020-06-18 02:06:33', '2020-06-18 02:06:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
