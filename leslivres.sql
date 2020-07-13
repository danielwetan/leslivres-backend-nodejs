-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 13, 2020 at 10:15 PM
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
-- Database: `leslivres`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL COMMENT 'Author ID',
  `name` varchar(255) NOT NULL COMMENT 'Author Name'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'J.K Rowling'),
(2, 'J.K. Rowling'),
(3, 'Nelson Mandela'),
(4, 'Plato'),
(6, 'Daniel'),
(7, 'Idris'),
(8, 'Shev'),
(9, 'Shevv'),
(10, 'sdafsd'),
(11, 'Shev'),
(26, 'adssad'),
(27, 'dsf'),
(28, 'zz'),
(29, 'dsd');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL COMMENT 'Book ID',
  `title` varchar(255) NOT NULL COMMENT 'Book title',
  `description` text NOT NULL COMMENT 'Book description',
  `author` int(11) NOT NULL COMMENT 'Book author',
  `genre` int(11) NOT NULL COMMENT 'Book genre',
  `status` varchar(255) NOT NULL COMMENT 'Book status',
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Date added',
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Date updated',
  `img` varchar(255) NOT NULL COMMENT 'Book image'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `description`, `author`, `genre`, `status`, `date_added`, `date_updated`, `img`) VALUES
(25, 'Harry Potter and the Deathly Hallows', 'Harry Potter is leaving Privet Drive for the last time. But as he climbs into the sidecar of Hagrid’s motorbike and they take to the skies, he knows Lord Voldemort and the Death Eaters will not be far behind.\r\nThe protective charm that has kept him safe until now is broken. But the Dark Lord is breathing fear into everything he loves. And he knows he can’t keep hiding.\r\n', 1, 1, 'Not Available', '2020-07-02 02:56:59', '2020-07-02 02:56:59', 'harry-potter-7.jpg'),
(26, 'Harry Potter and the Sorcerer\'s Stone', 'Harry Potter\'s life is miserable. His parents are dead and he\'s stuck with his heartless relatives, who force him to live in a tiny closet under the stairs. But his fortune changes when he receives a letter that tells him the truth about himself: he\'s a wizard. A mysterious visitor rescues him from his relatives and takes him to his new home, Hogwarts School of Witchcraft and Wizardry.', 1, 1, 'Available', '2020-07-02 02:50:00', '2020-07-02 02:50:00', 'harry-potter-1.jpg'),
(27, 'Harry Potter and the Chamber of Secrets', 'Ever since Harry Potter had come home for the summer, the Dursleys had been so mean and hideous that all Harry wanted was to get back to the Hogwarts School for Witchcraft and Wizardry. But just as he’s packing his bags, Harry receives a warning from a strange impish creature who says that if Harry returns to Hogwarts, disaster will strike.', 1, 1, 'Available', '2020-07-02 02:52:09', '2020-07-02 02:52:09', 'harry-potter-2.jpg'),
(28, 'Harry Potter and the Half-Blood Prince\r\n', 'The war against Voldemort is not going well; even Muggle governments are noticing. Ron scans the obituary pages of the Daily Prophet, looking for familiar names. Dumbledore is absent from Hogwarts for long stretches of time, and the Order of the Phoenix has already suffered losses.', 1, 1, 'Available', '2020-07-02 02:55:49', '2020-07-02 02:55:49', 'harry-potter-6.jpg'),
(29, 'Harry Potter and the Deathly Hallows', 'Harry Potter is leaving Privet Drive for the last time. But as he climbs into the sidecar of Hagrid’s motorbike and they take to the skies, he knows Lord Voldemort and the Death Eaters will not be far behind.\r\nThe protective charm that has kept him safe until now is broken. But the Dark Lord is breathing fear into everything he loves. And he knows he can’t keep hiding.\r\n', 1, 1, 'Available', '2020-07-02 02:56:59', '2020-07-02 02:56:59', 'harry-potter-7.jpg'),
(30, 'Harry Potter and the Chamber of Secrets', 'Ever since Harry Potter had come home for the summer, the Dursleys had been so mean and hideous that all Harry wanted was to get back to the Hogwarts School for Witchcraft and Wizardry. But just as he’s packing his bags, Harry receives a warning from a strange impish creature who says that if Harry returns to Hogwarts, disaster will strike.', 1, 1, 'Available', '2020-07-02 02:52:09', '2020-07-02 02:52:09', 'harry-potter-2.jpg'),
(31, 'Harry Potter and the Goblet of Fire\r\n', 'Harry Potter is midway through his training as a wizard and his coming of age. Harry wants to get away from the pernicious Dursleys and go to the International Quidditch Cup with Hermione, Ron, and the Weasleys. He wants to dream about Cho Chang, his crush (and maybe do more than dream). He wants to find out about the mysterious event that\'s supposed to take place at Hogwarts this year, an event involving two other rival schools of magic, and a competition that hasn\'t happened for hundreds of years. He wants to be a normal, fourteen-year-old wizard. But unfortunately for Harry Potter, he\'s not normal - even by wizarding standards.', 1, 1, 'Available', '2020-07-02 02:53:54', '2020-07-02 02:53:54', 'harry-potter-4.jpg'),
(32, 'Harry Potter and the Order of the Phoenix\r\n', 'There is a door at the end of a silent corridor. And it’s haunting Harry Pottter’s dreams. Why else would he be waking in the middle of the night, screaming in terror?\r\n\r\nHarry has a lot on his mind for this, his fifth year at Hogwarts: a Defense Against the Dark Arts teacher with a personality like poisoned honey; a big surprise on the Gryffindor Quidditch team; and the looming terror of the Ordinary Wizarding Level exams', 1, 1, 'Available', '2020-07-02 02:54:52', '2020-07-02 02:54:52', 'harry-potter-5.jpg'),
(33, 'Harry Potter and the Half-Blood Prince\r\n', 'The war against Voldemort is not going well; even Muggle governments are noticing. Ron scans the obituary pages of the Daily Prophet, looking for familiar names. Dumbledore is absent from Hogwarts for long stretches of time, and the Order of the Phoenix has already suffered losses.', 1, 1, 'Available', '2020-07-02 02:55:49', '2020-07-02 02:55:49', 'harry-potter-6.jpg'),
(34, 'Harry Potter and the Deathly Hallows', 'Harry Potter is leaving Privet Drive for the last time. But as he climbs into the sidecar of Hagrid’s motorbike and they take to the skies, he knows Lord Voldemort and the Death Eaters will not be far behind.\r\nThe protective charm that has kept him safe until now is broken. But the Dark Lord is breathing fear into everything he loves. And he knows he can’t keep hiding.\r\n', 1, 1, 'Available', '2020-07-02 02:56:59', '2020-07-02 02:56:59', 'harry-potter-7.jpg'),
(35, 'Harry Potter and the Sorcerer\'s Stone', 'Harry Potter\'s life is miserable. His parents are dead and he\'s stuck with his heartless relatives, who force him to live in a tiny closet under the stairs. But his fortune changes when he receives a letter that tells him the truth about himself: he\'s a wizard. A mysterious visitor rescues him from his relatives and takes him to his new home, Hogwarts School of Witchcraft and Wizardry.', 1, 1, 'Available', '2020-07-02 02:50:00', '2020-07-02 02:50:00', 'harry-potter-1.jpg'),
(36, 'Harry Potter and the Chamber of Secrets', 'Ever since Harry Potter had come home for the summer, the Dursleys had been so mean and hideous that all Harry wanted was to get back to the Hogwarts School for Witchcraft and Wizardry. But just as he’s packing his bags, Harry receives a warning from a strange impish creature who says that if Harry returns to Hogwarts, disaster will strike.', 1, 1, 'Available', '2020-07-02 02:52:09', '2020-07-02 02:52:09', 'harry-potter-2.jpg'),
(37, 'Harry Potter and the Goblet of Fire\r\n', 'Harry Potter is midway through his training as a wizard and his coming of age. Harry wants to get away from the pernicious Dursleys and go to the International Quidditch Cup with Hermione, Ron, and the Weasleys. He wants to dream about Cho Chang, his crush (and maybe do more than dream). He wants to find out about the mysterious event that\'s supposed to take place at Hogwarts this year, an event involving two other rival schools of magic, and a competition that hasn\'t happened for hundreds of years. He wants to be a normal, fourteen-year-old wizard. But unfortunately for Harry Potter, he\'s not normal - even by wizarding standards.', 1, 1, 'Available', '2020-07-02 02:53:54', '2020-07-02 02:53:54', 'harry-potter-4.jpg'),
(38, 'Harry Potter and the Order of the Phoenix\r\n', 'There is a door at the end of a silent corridor. And it’s haunting Harry Pottter’s dreams. Why else would he be waking in the middle of the night, screaming in terror?\r\n\r\nHarry has a lot on his mind for this, his fifth year at Hogwarts: a Defense Against the Dark Arts teacher with a personality like poisoned honey; a big surprise on the Gryffindor Quidditch team; and the looming terror of the Ordinary Wizarding Level exams', 1, 1, 'Available', '2020-07-02 02:54:52', '2020-07-02 02:54:52', 'harry-potter-5.jpg'),
(39, 'Harry Potter and the Half-Blood Prince\r\n', 'The war against Voldemort is not going well; even Muggle governments are noticing. Ron scans the obituary pages of the Daily Prophet, looking for familiar names. Dumbledore is absent from Hogwarts for long stretches of time, and the Order of the Phoenix has already suffered losses.', 1, 1, 'Available', '2020-07-02 02:55:49', '2020-07-02 02:55:49', 'harry-potter-6.jpg'),
(40, 'Harry Potter and the Deathly Hallows', 'Harry Potter is leaving Privet Drive for the last time. But as he climbs into the sidecar of Hagrid’s motorbike and they take to the skies, he knows Lord Voldemort and the Death Eaters will not be far behind.\r\nThe protective charm that has kept him safe until now is broken. But the Dark Lord is breathing fear into everything he loves. And he knows he can’t keep hiding.\r\n', 1, 1, 'Available', '2020-07-02 02:56:59', '2020-07-02 02:56:59', 'harry-potter-7.jpg'),
(58, 'Harry Potter and the Deathly Hallows', 'Harry Potter is leaving Privet Drive for the last time. But as he climbs into the sidecar of Hagrid’s motorbike and they take to the skies, he knows Lord Voldemort and the Death Eaters will not be far behind.\r\nThe protective charm that has kept him safe until now is broken. But the Dark Lord is breathing fear into everything he loves. And he knows he can’t keep hiding.\r\n', 1, 1, 'Available', '2020-07-02 02:56:59', '2020-07-02 02:56:59', 'harry-potter-7.jpg'),
(59, 'Harry Potter and the Half-Blood Prince\r\n', 'The war against Voldemort is not going well; even Muggle governments are noticing. Ron scans the obituary pages of the Daily Prophet, looking for familiar names. Dumbledore is absent from Hogwarts for long stretches of time, and the Order of the Phoenix has already suffered losses.', 1, 1, 'Available', '2020-07-02 02:55:49', '2020-07-02 02:55:49', 'harry-potter-6.jpg'),
(60, 'Harry Potter and the Order of the Phoenix\r\n', 'There is a door at the end of a silent corridor. And it’s haunting Harry Pottter’s dreams. Why else would he be waking in the middle of the night, screaming in terror?\r\n\r\nHarry has a lot on his mind for this, his fifth year at Hogwarts: a Defense Against the Dark Arts teacher with a personality like poisoned honey; a big surprise on the Gryffindor Quidditch team; and the looming terror of the Ordinary Wizarding Level exams', 1, 1, 'Available', '2020-07-02 02:54:52', '2020-07-02 02:54:52', 'harry-potter-5.jpg'),
(61, 'Harry Potter and the Goblet of Fire\r\n', 'Harry Potter is midway through his training as a wizard and his coming of age. Harry wants to get away from the pernicious Dursleys and go to the International Quidditch Cup with Hermione, Ron, and the Weasleys. He wants to dream about Cho Chang, his crush (and maybe do more than dream). He wants to find out about the mysterious event that\'s supposed to take place at Hogwarts this year, an event involving two other rival schools of magic, and a competition that hasn\'t happened for hundreds of years. He wants to be a normal, fourteen-year-old wizard. But unfortunately for Harry Potter, he\'s not normal - even by wizarding standards.', 1, 1, 'Available', '2020-07-02 02:53:54', '2020-07-02 02:53:54', 'harry-potter-4.jpg'),
(62, 'Harry Potter and the Chamber of Secrets', 'Ever since Harry Potter had come home for the summer, the Dursleys had been so mean and hideous that all Harry wanted was to get back to the Hogwarts School for Witchcraft and Wizardry. But just as he’s packing his bags, Harry receives a warning from a strange impish creature who says that if Harry returns to Hogwarts, disaster will strike.', 1, 1, 'Available', '2020-07-02 02:52:09', '2020-07-02 02:52:09', 'harry-potter-2.jpg'),
(63, '[Classic] Harry Potter and the Deathly Hallows', 'Harry Potter is leaving Privet Drive for the last time. But as he climbs into the sidecar of Hagrid’s motorbike and they take to the skies, he knows Lord Voldemort and the Death Eaters will not be far behind.\r\nThe protective charm that has kept him safe until now is broken. But the Dark Lord is breathing fear into everything he loves. And he knows he can’t keep hiding.\r\n', 1, 3, 'Not Available', '2020-07-02 02:56:59', '2020-07-02 02:56:59', 'harry-potter-7.jpg'),
(64, '[Classic] Harry Potter and the Sorcerer\'s Stone', 'Harry Potter\'s life is miserable. His parents are dead and he\'s stuck with his heartless relatives, who force him to live in a tiny closet under the stairs. But his fortune changes when he receives a letter that tells him the truth about himself: he\'s a wizard. A mysterious visitor rescues him from his relatives and takes him to his new home, Hogwarts School of Witchcraft and Wizardry.', 1, 3, 'Available', '2020-07-02 02:50:00', '2020-07-02 02:50:00', 'harry-potter-1.jpg'),
(65, 'Harry Potter and the Half-Blood Prince\r\n', 'The war against Voldemort is not going well; even Muggle governments are noticing. Ron scans the obituary pages of the Daily Prophet, looking for familiar names. Dumbledore is absent from Hogwarts for long stretches of time, and the Order of the Phoenix has already suffered losses.', 1, 1, 'Available', '2020-07-02 02:55:49', '2020-07-02 02:55:49', 'harry-potter-6.jpg'),
(66, 'Harry Potter and the Deathly Hallows', 'Harry Potter is leaving Privet Drive for the last time. But as he climbs into the sidecar of Hagrid’s motorbike and they take to the skies, he knows Lord Voldemort and the Death Eaters will not be far behind.\r\nThe protective charm that has kept him safe until now is broken. But the Dark Lord is breathing fear into everything he loves. And he knows he can’t keep hiding.\r\n', 1, 1, 'Available', '2020-07-02 02:56:59', '2020-07-02 02:56:59', 'harry-potter-7.jpg'),
(67, 'Harry Potter and the Chamber of Secrets', 'Ever since Harry Potter had come home for the summer, the Dursleys had been so mean and hideous that all Harry wanted was to get back to the Hogwarts School for Witchcraft and Wizardry. But just as he’s packing his bags, Harry receives a warning from a strange impish creature who says that if Harry returns to Hogwarts, disaster will strike.', 1, 1, 'Available', '2020-07-02 02:52:09', '2020-07-02 02:52:09', 'harry-potter-2.jpg'),
(68, 'Harry Potter and the Goblet of Fire\r\n', 'Harry Potter is midway through his training as a wizard and his coming of age. Harry wants to get away from the pernicious Dursleys and go to the International Quidditch Cup with Hermione, Ron, and the Weasleys. He wants to dream about Cho Chang, his crush (and maybe do more than dream). He wants to find out about the mysterious event that\'s supposed to take place at Hogwarts this year, an event involving two other rival schools of magic, and a competition that hasn\'t happened for hundreds of years. He wants to be a normal, fourteen-year-old wizard. But unfortunately for Harry Potter, he\'s not normal - even by wizarding standards.', 1, 1, 'Available', '2020-07-02 02:53:54', '2020-07-02 02:53:54', 'harry-potter-4.jpg'),
(69, 'Harry Potter and the Order of the Phoenix\r\n', 'There is a door at the end of a silent corridor. And it’s haunting Harry Pottter’s dreams. Why else would he be waking in the middle of the night, screaming in terror?\r\n\r\nHarry has a lot on his mind for this, his fifth year at Hogwarts: a Defense Against the Dark Arts teacher with a personality like poisoned honey; a big surprise on the Gryffindor Quidditch team; and the looming terror of the Ordinary Wizarding Level exams', 1, 1, 'Available', '2020-07-02 02:54:52', '2020-07-02 02:54:52', 'harry-potter-5.jpg'),
(70, 'Harry Potter and the Half-Blood Prince\r\n', 'The war against Voldemort is not going well; even Muggle governments are noticing. Ron scans the obituary pages of the Daily Prophet, looking for familiar names. Dumbledore is absent from Hogwarts for long stretches of time, and the Order of the Phoenix has already suffered losses.', 1, 1, 'Available', '2020-07-02 02:55:49', '2020-07-02 02:55:49', 'harry-potter-6.jpg'),
(71, 'Harry Potter and the Deathly Hallows', 'Harry Potter is leaving Privet Drive for the last time. But as he climbs into the sidecar of Hagrid’s motorbike and they take to the skies, he knows Lord Voldemort and the Death Eaters will not be far behind.\r\nThe protective charm that has kept him safe until now is broken. But the Dark Lord is breathing fear into everything he loves. And he knows he can’t keep hiding.\r\n', 1, 1, 'Available', '2020-07-02 02:56:59', '2020-07-02 02:56:59', 'harry-potter-7.jpg'),
(72, 'Harry Potter and the Sorcerer\'s Stone', 'Harry Potter\'s life is miserable. His parents are dead and he\'s stuck with his heartless relatives, who force him to live in a tiny closet under the stairs. But his fortune changes when he receives a letter that tells him the truth about himself: he\'s a wizard. A mysterious visitor rescues him from his relatives and takes him to his new home, Hogwarts School of Witchcraft and Wizardry.', 1, 1, 'Available', '2020-07-02 02:50:00', '2020-07-02 02:50:00', 'harry-potter-1.jpg'),
(73, '[Classic] Harry Potter and the Deathly Hallows', 'Harry Potter is leaving Privet Drive for the last time. But as he climbs into the sidecar of Hagrid’s motorbike and they take to the skies, he knows Lord Voldemort and the Death Eaters will not be far behind.\r\nThe protective charm that has kept him safe until now is broken. But the Dark Lord is breathing fear into everything he loves. And he knows he can’t keep hiding.\r\n', 1, 3, 'Not Available', '2020-07-02 02:56:59', '2020-07-02 02:56:59', 'harry-potter-7.jpg'),
(74, '[Classic] Harry Potter and the Sorcerer\'s Stone', 'Harry Potter\'s life is miserable. His parents are dead and he\'s stuck with his heartless relatives, who force him to live in a tiny closet under the stairs. But his fortune changes when he receives a letter that tells him the truth about himself: he\'s a wizard. A mysterious visitor rescues him from his relatives and takes him to his new home, Hogwarts School of Witchcraft and Wizardry.', 1, 3, 'Available', '2020-07-02 02:50:00', '2020-07-02 02:50:00', 'harry-potter-1.jpg'),
(75, 'Harry Potter and the Half-Blood Prince\r\n', 'The war against Voldemort is not going well; even Muggle governments are noticing. Ron scans the obituary pages of the Daily Prophet, looking for familiar names. Dumbledore is absent from Hogwarts for long stretches of time, and the Order of the Phoenix has already suffered losses.', 1, 1, 'Available', '2020-07-02 02:55:49', '2020-07-02 02:55:49', 'harry-potter-6.jpg'),
(76, 'Harry Potter and the Deathly Hallows', 'Harry Potter is leaving Privet Drive for the last time. But as he climbs into the sidecar of Hagrid’s motorbike and they take to the skies, he knows Lord Voldemort and the Death Eaters will not be far behind.\r\nThe protective charm that has kept him safe until now is broken. But the Dark Lord is breathing fear into everything he loves. And he knows he can’t keep hiding.\r\n', 1, 1, 'Available', '2020-07-02 02:56:59', '2020-07-02 02:56:59', 'harry-potter-7.jpg'),
(77, 'Harry Potter and the Chamber of Secrets', 'Ever since Harry Potter had come home for the summer, the Dursleys had been so mean and hideous that all Harry wanted was to get back to the Hogwarts School for Witchcraft and Wizardry. But just as he’s packing his bags, Harry receives a warning from a strange impish creature who says that if Harry returns to Hogwarts, disaster will strike.', 1, 1, 'Available', '2020-07-02 02:52:09', '2020-07-02 02:52:09', 'harry-potter-2.jpg'),
(78, 'Harry Potter and the Goblet of Fire\r\n', 'Harry Potter is midway through his training as a wizard and his coming of age. Harry wants to get away from the pernicious Dursleys and go to the International Quidditch Cup with Hermione, Ron, and the Weasleys. He wants to dream about Cho Chang, his crush (and maybe do more than dream). He wants to find out about the mysterious event that\'s supposed to take place at Hogwarts this year, an event involving two other rival schools of magic, and a competition that hasn\'t happened for hundreds of years. He wants to be a normal, fourteen-year-old wizard. But unfortunately for Harry Potter, he\'s not normal - even by wizarding standards.', 1, 1, 'Available', '2020-07-02 02:53:54', '2020-07-02 02:53:54', 'harry-potter-4.jpg'),
(79, 'Harry Potter and the Order of the Phoenix\r\n', 'There is a door at the end of a silent corridor. And it’s haunting Harry Pottter’s dreams. Why else would he be waking in the middle of the night, screaming in terror?\r\n\r\nHarry has a lot on his mind for this, his fifth year at Hogwarts: a Defense Against the Dark Arts teacher with a personality like poisoned honey; a big surprise on the Gryffindor Quidditch team; and the looming terror of the Ordinary Wizarding Level exams', 1, 1, 'Available', '2020-07-02 02:54:52', '2020-07-02 02:54:52', 'harry-potter-5.jpg'),
(80, 'Harry Potter and the Half-Blood Prince\r\n', 'The war against Voldemort is not going well; even Muggle governments are noticing. Ron scans the obituary pages of the Daily Prophet, looking for familiar names. Dumbledore is absent from Hogwarts for long stretches of time, and the Order of the Phoenix has already suffered losses.', 1, 1, 'Available', '2020-07-02 02:55:49', '2020-07-02 02:55:49', 'harry-potter-6.jpg'),
(81, 'Harry Potter and the Sorcerer\'s Stone', 'Harry Potter\'s life is miserable. His parents are dead and he\'s stuck with his heartless relatives, who force him to live in a tiny closet under the stairs. But his fortune changes when he receives a letter that tells him the truth about himself: he\'s a wizard. A mysterious visitor rescues him from his relatives and takes him to his new home, Hogwarts School of Witchcraft and Wizardry.', 1, 1, 'Available', '2020-07-02 02:50:00', '2020-07-02 02:50:00', 'harry-potter-1.jpg'),
(82, 'Harry Potter and the Chamber of Secrets', 'Ever since Harry Potter had come home for the summer, the Dursleys had been so mean and hideous that all Harry wanted was to get back to the Hogwarts School for Witchcraft and Wizardry. But just as he’s packing his bags, Harry receives a warning from a strange impish creature who says that if Harry returns to Hogwarts, disaster will strike.', 1, 1, 'Available', '2020-07-02 02:52:09', '2020-07-02 02:52:09', 'harry-potter-2.jpg'),
(83, 'Harry Potter and the Goblet of Fire\r\n', 'Harry Potter is midway through his training as a wizard and his coming of age. Harry wants to get away from the pernicious Dursleys and go to the International Quidditch Cup with Hermione, Ron, and the Weasleys. He wants to dream about Cho Chang, his crush (and maybe do more than dream). He wants to find out about the mysterious event that\'s supposed to take place at Hogwarts this year, an event involving two other rival schools of magic, and a competition that hasn\'t happened for hundreds of years. He wants to be a normal, fourteen-year-old wizard. But unfortunately for Harry Potter, he\'s not normal - even by wizarding standards.', 1, 1, 'Available', '2020-07-02 02:53:54', '2020-07-02 02:53:54', 'harry-potter-4.jpg'),
(84, 'Harry Potter and the Order of the Phoenix\r\n', 'There is a door at the end of a silent corridor. And it’s haunting Harry Pottter’s dreams. Why else would he be waking in the middle of the night, screaming in terror?\r\n\r\nHarry has a lot on his mind for this, his fifth year at Hogwarts: a Defense Against the Dark Arts teacher with a personality like poisoned honey; a big surprise on the Gryffindor Quidditch team; and the looming terror of the Ordinary Wizarding Level exams', 1, 1, 'Available', '2020-07-02 02:54:52', '2020-07-02 02:54:52', 'harry-potter-5.jpg'),
(85, 'Harry Potter and the Half-Blood Prince\r\n', 'The war against Voldemort is not going well; even Muggle governments are noticing. Ron scans the obituary pages of the Daily Prophet, looking for familiar names. Dumbledore is absent from Hogwarts for long stretches of time, and the Order of the Phoenix has already suffered losses.', 1, 1, 'Available', '2020-07-02 02:55:49', '2020-07-02 02:55:49', 'harry-potter-6.jpg'),
(86, 'Harry Potter and the Deathly Hallows', 'Harry Potter is leaving Privet Drive for the last time. But as he climbs into the sidecar of Hagrid’s motorbike and they take to the skies, he knows Lord Voldemort and the Death Eaters will not be far behind.\r\nThe protective charm that has kept him safe until now is broken. But the Dark Lord is breathing fear into everything he loves. And he knows he can’t keep hiding.\r\n', 1, 1, 'Available', '2020-07-02 02:56:59', '2020-07-02 02:56:59', 'harry-potter-7.jpg'),
(90, 'Something', 'Some description', 1, 1, 'Available', '2020-07-09 03:35:12', '2020-07-09 03:35:12', '2.png'),
(91, 'Arkademy', 'Description', 1, 1, 'Available', '2020-07-09 09:36:07', '2020-07-09 09:36:07', 'with_div.png'),
(92, 'Check', 'Check', 1, 1, 'Available', '2020-07-10 06:41:32', '2020-07-10 06:41:32', 'devops.png'),
(93, 'Check', 'Check', 1, 1, 'Available', '2020-07-10 06:48:48', '2020-07-10 06:48:48', 'devops.png'),
(94, 'Check', 'Check', 1, 1, 'Available', '2020-07-10 06:49:00', '2020-07-10 06:49:00', 'devops.png'),
(95, 'Check', 'Check', 1, 1, 'Available', '2020-07-10 06:49:07', '2020-07-10 06:49:07', 'devops.png'),
(96, 'Check', 'Check', 1, 1, 'Available', '2020-07-10 06:49:11', '2020-07-10 06:49:11', 'devops.png'),
(97, 'Check', 'Check', 1, 1, 'Available', '2020-07-10 06:49:28', '2020-07-10 06:49:28', 'devops.png'),
(98, 'Check', 'Check', 1, 1, 'Available', '2020-07-10 06:49:30', '2020-07-10 06:49:30', 'devops.png'),
(99, 'Check', 'Check', 1, 1, 'Available', '2020-07-10 06:49:35', '2020-07-10 06:49:35', 'devops.png'),
(100, 'Check', 'Check', 1, 1, 'Available', '2020-07-10 23:40:02', '2020-07-10 23:40:02', 'devops.png'),
(101, 'Check', 'Check', 1, 1, 'Available', '2020-07-11 01:13:38', '2020-07-11 01:13:38', 'devops.png'),
(102, 'adasad', 'Check', 1, 1, 'Available', '2020-07-11 01:14:10', '2020-07-11 01:14:10', 'devops.png'),
(103, 'adasad', 'Check', 1, 1, 'Available', '2020-07-11 01:15:47', '2020-07-11 01:15:47', 'devops.png'),
(104, 'adasad', 'Check', 1, 1, 'Available', '2020-07-11 01:20:57', '2020-07-11 01:20:57', 'testing.jpg'),
(105, 'adasad', 'Check', 1, 1, 'Available', '2020-07-11 01:21:03', '2020-07-11 01:21:03', 'testing.jpg'),
(106, 'adasad', 'Check', 1, 1, 'Available', '2020-07-11 01:21:06', '2020-07-11 01:21:06', 'testing.jpg'),
(107, 'adasad', 'Check', 1, 1, 'Available', '2020-07-11 01:21:09', '2020-07-11 01:21:09', 'testing.jpg'),
(108, 'adasad', 'Check', 1, 1, 'Available', '2020-07-11 01:21:12', '2020-07-11 01:21:12', 'testing.jpg'),
(109, 'adasad', 'Check', 1, 1, 'Available', '2020-07-11 01:21:23', '2020-07-11 01:21:23', 'testing.jpg'),
(110, 'adasad', 'Check', 1, 1, 'Available', '2020-07-11 01:21:27', '2020-07-11 01:21:27', 'testing.jpg'),
(111, 'adasad', 'Check', 1, 1, 'Available', '2020-07-11 01:22:54', '2020-07-11 01:22:54', 'section1.png'),
(112, 'adasad', 'Check', 1, 1, 'Available', '2020-07-11 01:29:09', '2020-07-11 01:29:09', 'Redux Presentation.zip'),
(113, 'adasad', 'Check', 1, 1, 'Available', '2020-07-11 01:30:20', '2020-07-11 01:30:20', 'Redux Presentation.zip'),
(114, 'adasad', 'Check', 1, 1, 'Available', '2020-07-11 01:32:09', '2020-07-11 01:32:09', 'Redux Presentation.zip'),
(115, 'adasad', 'Check', 1, 1, 'Available', '2020-07-11 01:32:23', '2020-07-11 01:32:23', 'Redux Presentation.zip'),
(116, 'adasad', 'Check', 1, 1, 'Available', '2020-07-11 01:32:25', '2020-07-11 01:32:25', 'Redux Presentation.zip'),
(117, 'adasad', 'Check', 1, 1, 'Available', '2020-07-11 01:32:49', '2020-07-11 01:32:49', 'l192_1_001s.pdf'),
(118, 'Check', 'Check', 1, 1, 'Available', '2020-07-11 15:17:24', '2020-07-11 15:17:24', 'devops.png');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL COMMENT 'Genre ID',
  `name` varchar(255) NOT NULL COMMENT 'Genre name'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Fiction'),
(2, 'Biography'),
(3, 'Classic'),
(4, 'History'),
(6, 'IT'),
(8, 'Novel'),
(9, '121231'),
(10, '121231');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(12) NOT NULL COMMENT 'Transaction ID',
  `user` int(12) NOT NULL COMMENT 'User ID',
  `book` int(12) NOT NULL COMMENT 'Book ID',
  `status` int(12) NOT NULL COMMENT 'Transaction Status (1=borrowed, 0=returned)',
  `count` int(12) NOT NULL COMMENT 'Number of book borrowed',
  `borrow_date` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Borrow date',
  `return_date` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Return date'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `user`, `book`, `status`, `count`, `borrow_date`, `return_date`) VALUES
(2, 2, 29, 0, 1, '2020-07-11 00:40:34', '2020-07-11 00:40:34'),
(3, 1, 30, 0, 2, '2020-07-11 00:33:56', '2020-07-11 00:33:56'),
(4, 2, 25, 1, 1, '2020-07-11 00:40:34', '2020-07-11 00:40:34'),
(5, 1, 25, 1, 1, '2020-07-11 00:33:56', '2020-07-11 00:33:56'),
(6, 2, 25, 1, 1, '2020-07-11 00:40:34', '2020-07-11 00:40:34'),
(7, 1, 25, 1, 1, '2020-07-11 00:33:56', '2020-07-11 00:33:56'),
(8, 2, 25, 1, 1, '2020-07-11 00:40:34', '2020-07-11 00:40:34'),
(9, 1, 25, 1, 1, '2020-07-11 00:33:56', '2020-07-11 00:33:56'),
(10, 2, 25, 1, 1, '2020-07-11 00:40:34', '2020-07-11 00:40:34'),
(11, 1, 25, 1, 1, '2020-07-11 00:33:56', '2020-07-11 00:33:56'),
(12, 2, 25, 1, 1, '2020-07-11 00:40:34', '2020-07-11 00:40:34'),
(13, 1, 25, 1, 1, '2020-07-11 00:33:56', '2020-07-11 00:33:56'),
(14, 2, 25, 1, 1, '2020-07-11 00:40:34', '2020-07-11 00:40:34'),
(15, 1, 25, 1, 1, '2020-07-11 00:33:56', '2020-07-11 00:33:56'),
(16, 2, 25, 1, 1, '2020-07-11 00:40:34', '2020-07-11 00:40:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL COMMENT 'User ID',
  `username` varchar(255) NOT NULL COMMENT 'Username',
  `full_name` varchar(255) NOT NULL COMMENT 'User full name',
  `email` varchar(255) NOT NULL COMMENT 'User Email',
  `password` varchar(255) NOT NULL COMMENT 'User password',
  `role` int(11) NOT NULL COMMENT 'User role',
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Date added',
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Date updated'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `full_name`, `email`, `password`, `role`, `date_added`, `date_updated`) VALUES
(1, 'daniel', 'Daniel Saputra', 'danielwetan.io@gmail.com', '$2b$10$WlZyHh88Drbsm.Hd66XaWe3ejCpZiKu7UUaJ9ZmTjnliTSkbB.cpu', 1, '2020-06-18 02:06:33', '2020-06-18 02:06:33'),
(21, 'idris', 'Idris', 'idris@mail.com', '$2b$10$CHELkIZRh83yuK7XpeVXo.D08LVkvHDU7Kdjs.Y7CIubITii02soS', 2, '2020-07-13 17:44:02', '2020-07-13 17:44:02'),
(22, 'adam', 'Adam', 'adam@mail.com', '$2b$10$cEYeegNfzws8NGNMYpyYEe2HRmHKZRkeWjNYPpmk.9kKiN2vTuoYm', 2, '2020-07-13 17:44:37', '2020-07-13 17:44:37'),
(23, 'fdf', '', '', '$2b$10$c.vGsmIr./N9aHBLeEpkH.m6c8MnejunvmeWbsQVNEH1Upwda3Gfm', 2, '2020-07-13 17:51:57', '2020-07-13 17:51:57');

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
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Author ID', AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Book ID', AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Genre ID', AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'Transaction ID', AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'User ID', AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
