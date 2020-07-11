-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 03, 2020 at 03:54 PM
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
(1, 'J.K. Rowling'),
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
(7, 'Harry Potter and the Deathly Hallows', 'Harry Potter is leaving Privet Drive for the last time. But as he climbs into the sidecar of Hagrid’s motorbike and they take to the skies, he knows Lord Voldemort and the Death Eaters will not be far behind.\nThe protective charm that has kept him safe until now is broken. But the Dark Lord is breathing fear into everything he loves. And he knows he can’t keep hiding.\n', 1, 1, 'Not Available', '2020-07-02 02:56:59', '2020-07-02 02:56:59', 'harry-potter-7.jpg'),
(8, 'Harry Potter and the Sorcerer\'s Stone', 'Harry Potter\'s life is miserable. His parents are dead and he\'s stuck with his heartless relatives, who force him to live in a tiny closet under the stairs. But his fortune changes when he receives a letter that tells him the truth about himself: he\'s a wizard. A mysterious visitor rescues him from his relatives and takes him to his new home, Hogwarts School of Witchcraft and Wizardry.', 1, 1, 'Available', '2020-07-02 02:50:00', '2020-07-02 02:50:00', 'harry-potter-1.jpg'),
(9, 'Harry Potter and the Chamber of Secrets', 'Ever since Harry Potter had come home for the summer, the Dursleys had been so mean and hideous that all Harry wanted was to get back to the Hogwarts School for Witchcraft and Wizardry. But just as he’s packing his bags, Harry receives a warning from a strange impish creature who says that if Harry returns to Hogwarts, disaster will strike.', 1, 1, 'Available', '2020-07-02 02:52:09', '2020-07-02 02:52:09', 'harry-potter-2.jpg'),
(12, 'Harry Potter and the Half-Blood Prince\r\n', 'The war against Voldemort is not going well; even Muggle governments are noticing. Ron scans the obituary pages of the Daily Prophet, looking for familiar names. Dumbledore is absent from Hogwarts for long stretches of time, and the Order of the Phoenix has already suffered losses.', 1, 1, 'Available', '2020-07-02 02:55:49', '2020-07-02 02:55:49', 'harry-potter-6.jpg'),
(13, 'Harry Potter and the Deathly Hallows', 'Harry Potter is leaving Privet Drive for the last time. But as he climbs into the sidecar of Hagrid’s motorbike and they take to the skies, he knows Lord Voldemort and the Death Eaters will not be far behind.\r\nThe protective charm that has kept him safe until now is broken. But the Dark Lord is breathing fear into everything he loves. And he knows he can’t keep hiding.\r\n', 1, 1, 'Available', '2020-07-02 02:56:59', '2020-07-02 02:56:59', 'harry-potter-7.jpg'),
(14, 'Harry Potter and the Chamber of Secrets', 'Ever since Harry Potter had come home for the summer, the Dursleys had been so mean and hideous that all Harry wanted was to get back to the Hogwarts School for Witchcraft and Wizardry. But just as he’s packing his bags, Harry receives a warning from a strange impish creature who says that if Harry returns to Hogwarts, disaster will strike.', 1, 1, 'Available', '2020-07-02 02:52:09', '2020-07-02 02:52:09', 'harry-potter-2.jpg'),
(15, 'Harry Potter and the Goblet of Fire\r\n', 'Harry Potter is midway through his training as a wizard and his coming of age. Harry wants to get away from the pernicious Dursleys and go to the International Quidditch Cup with Hermione, Ron, and the Weasleys. He wants to dream about Cho Chang, his crush (and maybe do more than dream). He wants to find out about the mysterious event that\'s supposed to take place at Hogwarts this year, an event involving two other rival schools of magic, and a competition that hasn\'t happened for hundreds of years. He wants to be a normal, fourteen-year-old wizard. But unfortunately for Harry Potter, he\'s not normal - even by wizarding standards.', 1, 1, 'Available', '2020-07-02 02:53:54', '2020-07-02 02:53:54', 'harry-potter-4.jpg'),
(16, 'Harry Potter and the Order of the Phoenix\r\n', 'There is a door at the end of a silent corridor. And it’s haunting Harry Pottter’s dreams. Why else would he be waking in the middle of the night, screaming in terror?\r\n\r\nHarry has a lot on his mind for this, his fifth year at Hogwarts: a Defense Against the Dark Arts teacher with a personality like poisoned honey; a big surprise on the Gryffindor Quidditch team; and the looming terror of the Ordinary Wizarding Level exams', 1, 1, 'Available', '2020-07-02 02:54:52', '2020-07-02 02:54:52', 'harry-potter-5.jpg'),
(17, 'Harry Potter and the Half-Blood Prince\r\n', 'The war against Voldemort is not going well; even Muggle governments are noticing. Ron scans the obituary pages of the Daily Prophet, looking for familiar names. Dumbledore is absent from Hogwarts for long stretches of time, and the Order of the Phoenix has already suffered losses.', 1, 1, 'Available', '2020-07-02 02:55:49', '2020-07-02 02:55:49', 'harry-potter-6.jpg'),
(18, 'Harry Potter and the Deathly Hallows', 'Harry Potter is leaving Privet Drive for the last time. But as he climbs into the sidecar of Hagrid’s motorbike and they take to the skies, he knows Lord Voldemort and the Death Eaters will not be far behind.\r\nThe protective charm that has kept him safe until now is broken. But the Dark Lord is breathing fear into everything he loves. And he knows he can’t keep hiding.\r\n', 1, 1, 'Available', '2020-07-02 02:56:59', '2020-07-02 02:56:59', 'harry-potter-7.jpg'),
(19, 'Harry Potter and the Sorcerer\'s Stone', 'Harry Potter\'s life is miserable. His parents are dead and he\'s stuck with his heartless relatives, who force him to live in a tiny closet under the stairs. But his fortune changes when he receives a letter that tells him the truth about himself: he\'s a wizard. A mysterious visitor rescues him from his relatives and takes him to his new home, Hogwarts School of Witchcraft and Wizardry.', 1, 1, 'Available', '2020-07-02 02:50:00', '2020-07-02 02:50:00', 'harry-potter-1.jpg'),
(20, 'Harry Potter and the Chamber of Secrets', 'Ever since Harry Potter had come home for the summer, the Dursleys had been so mean and hideous that all Harry wanted was to get back to the Hogwarts School for Witchcraft and Wizardry. But just as he’s packing his bags, Harry receives a warning from a strange impish creature who says that if Harry returns to Hogwarts, disaster will strike.', 1, 1, 'Available', '2020-07-02 02:52:09', '2020-07-02 02:52:09', 'harry-potter-2.jpg'),
(21, 'Harry Potter and the Goblet of Fire\r\n', 'Harry Potter is midway through his training as a wizard and his coming of age. Harry wants to get away from the pernicious Dursleys and go to the International Quidditch Cup with Hermione, Ron, and the Weasleys. He wants to dream about Cho Chang, his crush (and maybe do more than dream). He wants to find out about the mysterious event that\'s supposed to take place at Hogwarts this year, an event involving two other rival schools of magic, and a competition that hasn\'t happened for hundreds of years. He wants to be a normal, fourteen-year-old wizard. But unfortunately for Harry Potter, he\'s not normal - even by wizarding standards.', 1, 1, 'Available', '2020-07-02 02:53:54', '2020-07-02 02:53:54', 'harry-potter-4.jpg'),
(22, 'Harry Potter and the Order of the Phoenix\r\n', 'There is a door at the end of a silent corridor. And it’s haunting Harry Pottter’s dreams. Why else would he be waking in the middle of the night, screaming in terror?\r\n\r\nHarry has a lot on his mind for this, his fifth year at Hogwarts: a Defense Against the Dark Arts teacher with a personality like poisoned honey; a big surprise on the Gryffindor Quidditch team; and the looming terror of the Ordinary Wizarding Level exams', 1, 1, 'Available', '2020-07-02 02:54:52', '2020-07-02 02:54:52', 'harry-potter-5.jpg'),
(23, 'Harry Potter and the Half-Blood Prince\r\n', 'The war against Voldemort is not going well; even Muggle governments are noticing. Ron scans the obituary pages of the Daily Prophet, looking for familiar names. Dumbledore is absent from Hogwarts for long stretches of time, and the Order of the Phoenix has already suffered losses.', 1, 1, 'Available', '2020-07-02 02:55:49', '2020-07-02 02:55:49', 'harry-potter-6.jpg'),
(24, 'Harry Potter and the Deathly Hallows', 'Harry Potter is leaving Privet Drive for the last time. But as he climbs into the sidecar of Hagrid’s motorbike and they take to the skies, he knows Lord Voldemort and the Death Eaters will not be far behind.\r\nThe protective charm that has kept him safe until now is broken. But the Dark Lord is breathing fear into everything he loves. And he knows he can’t keep hiding.\r\n', 1, 1, 'Available', '2020-07-02 02:56:59', '2020-07-02 02:56:59', 'harry-potter-7.jpg');

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
(1, 'daniel', '$2b$10$WlZyHh88Drbsm.Hd66XaWe3ejCpZiKu7UUaJ9ZmTjnliTSkbB.cpu', 1, '2020-06-18 02:06:33', '2020-06-18 02:06:33'),
(2, 'ahmad', '$2b$10$SBB0Bshj2SmvYbmuvu/gGOl6t0qRKS4HCiKENrJoIsXiXRqhoAkQq', 1, '2020-06-29 14:00:38', '2020-06-29 14:00:38'),
(3, 'idris', '$2b$10$jRqo0uvBlXf5qSK4nyLYduJiEcF3XukN.L34uzZe/TkPf0rpvtjYO', 2, '2020-06-29 16:03:55', '2020-06-29 16:03:55'),
(4, 'idris', '$2b$10$HzL5IPLkfRvUHOs.8YDpmOnMkHP3pXlvzefHeZNoT.xkMMo.Ceo9C', 2, '2020-06-29 16:03:56', '2020-06-29 16:03:56'),
(5, 'idris', '$2b$10$UUN5xq.AI6qXVJahtfTQ6uBpqvckDLNp4Bhm0qXAesEUfWxPEHsWy', 2, '2020-06-29 16:03:58', '2020-06-29 16:03:58'),
(6, 'idris', '$2b$10$eCunJ7yi8tEowtp1CrF4qej00FzzC09gDMsmOatH9eh4unnRDwJZC', 2, '2020-06-29 16:03:59', '2020-06-29 16:03:59'),
(7, 'idris', '$2b$10$QTQBMYCefdnu2u12QN9zfOOKxZqhpg6OTkJoOhDakPtpggi/rK5Ju', 2, '2020-06-29 16:03:59', '2020-06-29 16:03:59'),
(8, 'idris', '$2b$10$n9hD/KK0GbGUZqLtZKwnkuSzRV5sonaNguT9pwznHkuZHI1Ob.IjO', 2, '2020-06-29 16:04:49', '2020-06-29 16:04:49'),
(9, 'ahmad', '$2b$10$1gxFy1s5TivOAgSK0CbudOwlGxv4NgHP9O27cOw9Z2yT8h75BZQK.', 2, '2020-07-01 11:14:37', '2020-07-01 11:14:37'),
(10, 'arkademy', '$2b$10$GfXJVSUiItVcIkzY9Pn2C.nxwtkDgxHR0qFuShJHjBsJp6L/vFxrK', 2, '2020-07-02 04:36:51', '2020-07-02 04:36:51');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
