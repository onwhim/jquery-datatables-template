-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2018 at 02:11 PM
-- Server version: 5.7.12-log
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dttable`
--

-- --------------------------------------------------------

--
-- Table structure for table `educational_stage`
--

CREATE TABLE `educational_stage` (
  `educational_stage_id` int(11) NOT NULL,
  `educational_stage_text` varchar(128) NOT NULL,
  `ages` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `educational_stage`
--

INSERT INTO `educational_stage` (`educational_stage_id`, `educational_stage_text`, `ages`) VALUES
(1, 'Kindergarten', '4–6'),
(2, 'Grade 1', '6–7'),
(3, 'Grade 2', '7–8'),
(4, 'Grade 3', '8–9'),
(5, 'Grade 4', '9–10'),
(6, 'Grade 5', '10–11'),
(7, 'Grade 6', '11–12'),
(8, 'Grade 7', '12–13'),
(9, 'Grade 8', '13–14'),
(10, 'Grade 9', '14–15'),
(11, 'Grade 10', '15–16'),
(12, 'Grade 11', '16–17'),
(13, 'Grade 12', '17–18'),
(14, 'College', '18+'),
(15, 'MA', '3-9'),
(16, 'PhD', '24+');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `middle_name` varchar(128) NOT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  `contact_number` varchar(32) DEFAULT NULL,
  `educational_stage_id` int(3) DEFAULT NULL,
  `photo` varchar(256) DEFAULT NULL,
  `date_enrolled` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `first_name`, `middle_name`, `last_name`, `contact_number`, `educational_stage_id`, `photo`, `date_enrolled`) VALUES
(1, 'Egay', 'Echavez', 'Reyes', '207-8540', 14, 'yo', '2016-05-15 07:25:31'),
(2, 'Lanie', 'Din', 'Rivera', '207-8540', 9, 'C:\\Users\\karlo\\Documents\\NetBeansProjects\\MyFirstJavaFX\\DSC_0752.JPG', '2016-10-29 18:19:25'),
(3, 'Ellen', 'Mercado', 'Sereno', '649-6816', 13, 'C:\\Users\\karlo\\Documents\\NetBeansProjects\\MyFirstJavaFX\\DSC_0752.JPG', '2015-09-16 06:27:06'),
(5, 'Ismael', 'Rivero', 'Oritz', '207-8540', 14, 'C:\\Users\\karlo\\Documents\\NetBeansProjects\\MyFirstJavaFX\\DSC_0752.JPG', '2017-02-26 17:44:34'),
(6, 'Danny', 'Aguas', 'Romero', '623-4551', 8, '', '2016-04-18 18:37:51'),
(7, 'Ronny', 'Paras', 'Magsino', '408-6732', 8, '', '2016-09-08 01:02:07'),
(8, 'Arvin', 'Castillo', 'Ingram', '143-6958', 8, '', '2017-03-20 06:23:40'),
(9, 'Daniel', 'Duterte', 'Ramos', '500-1605', 8, '', '2016-09-10 13:58:33'),
(10, 'Yano', 'Blanco', 'Mamaril', '654-7879', 8, '', '2016-06-29 11:48:21'),
(11, 'Maribel', 'Alavarez', 'Cruz', '978-5258', 8, '', '2017-01-22 02:12:42'),
(12, 'Howie', 'David', 'Hoya2', '695-8980', 8, '', '2016-06-28 08:45:03'),
(13, 'Jenny', 'Smith', 'Canasa', '405-3308', 8, '', '2015-12-12 22:13:46'),
(14, 'Joem', 'Estrada', 'Quezon', '439-2033', 8, 'C:\\Users\\karlo\\Documents\\NetBeansProjects\\MyFirstJavaFX\\DSC_0752.JPG', '2016-12-07 22:00:14'),
(15, 'Rey', 'Aguilar', 'Padilla', '699-8854', 8, '', '2015-07-07 04:26:28'),
(16, 'Ariel', 'Gomez', 'Barrientos', '330-9930', 8, 'C:\\Users\\karlo\\Documents\\NetBeansProjects\\MyFirstJavaFX\\DSC_0752.JPG', '2015-06-05 13:18:12'),
(17, 'Mark', 'Lapid', 'Geronimo', '976-8993', 8, '', '2017-04-06 14:18:11'),
(18, 'Dondon', 'Pascua', 'Sotto', '569-1484', 8, '', '2016-09-18 16:42:53'),
(19, 'Richard', 'Marudo', 'Ocampo', '340-7263', 8, 'C:\\Users\\karlo\\Documents\\NetBeansProjects\\MyFirstJavaFX\\DSC_0752.JPG', '2016-06-18 01:46:31'),
(20, 'Ricardo', 'Mayo', 'Esplata', '529-4637', 8, 'C:\\Users\\karlo\\Documents\\NetBeansProjects\\MyFirstJavaFX\\DSC_0752.JPG', '2016-11-01 15:50:31'),
(21, 'Rene', 'Alva', 'Cosim', '733-2735', 8, 'C:\\Users\\karlo\\Documents\\NetBeansProjects\\MyFirstJavaFX\\green-width-longer.png', '2015-06-21 10:59:37'),
(22, 'Abegaile', 'Maullon', 'Sena', '169-2390', 8, '', '2015-07-05 16:33:08'),
(23, 'Anna', 'Belga', 'Sy', '613-9929', 8, '', '2015-10-22 10:53:26'),
(24, 'Homer', 'Sy', 'Tan', '126-6504', 8, 'C:\\Users\\karlo\\Documents\\NetBeansProjects\\MyFirstJavaFX\\DSC_0752.JPG', '2017-03-06 13:54:19'),
(25, 'Elizabeth', 'Tan', 'Medrano', '874-4203', 8, 'C:\\Users\\karlo\\Documents\\NetBeansProjects\\MyFirstJavaFX\\DSC_0752.JPG', '2017-02-23 21:57:51'),
(26, 'Jenny', 'Canoy', 'Galido', '479-1320', 8, 'C:\\Users\\karlo\\Documents\\NetBeansProjects\\MyFirstJavaFX\\black.png', '2016-11-19 05:12:57'),
(27, 'Carl', 'Din', 'Garcia', '224-7250', 8, 'C:\\Users\\karlo\\Documents\\NetBeansProjects\\MyFirstJavaFX\\black.png', '2015-08-25 17:17:45'),
(28, 'Georgina', 'Ramirez', 'Mercado', '952-5868', 8, 'C:\\Users\\karlo\\Documents\\NetBeansProjects\\MyFirstJavaFX\\green-width-longer.png', '2016-04-04 07:56:31'),
(29, 'Carlo', 'Mendoza', 'Guno', '770-6245', 8, 'C:\\Users\\karlo\\Documents\\NetBeansProjects\\MyFirstJavaFX\\black.png', '2017-01-06 20:55:53'),
(30, 'Joan', 'Sabino', 'Ilagan', '891-5837', 8, 'C:\\Users\\karlo\\Documents\\NetBeansProjects\\MyFirstJavaFX\\DSC_0752.JPG', '2016-12-27 17:56:28'),
(31, 'Rene', 'Aguilar', 'Reyes', '244-4704', 8, '', '2016-07-27 12:01:18'),
(32, 'Ismael', 'Timothy', 'Isaac', '619-6847', 8, 'C:\\Users\\karlo\\Documents\\NetBeansProjects\\MyFirstJavaFX\\green-width-longer.png', '2016-07-21 15:23:39'),
(34, 'Donnie', 'Marasigan', 'Bates', '566-7756', 8, '', '2015-09-26 02:00:59'),
(35, 'Anthony', 'Gallo', 'Banal', '180-5742', 8, 'C:\\Users\\karlo\\Documents\\NetBeansProjects\\MyFirstJavaFX\\black.png', '2015-09-05 21:00:34'),
(36, 'Danny', 'Isidro', 'Bautista', '331-9300', 8, '', '2015-11-12 12:06:28'),
(37, 'Ereneo', 'Gabica', 'Munoz', '658-5017', 8, 'C:\\Users\\karlo\\Documents\\NetBeansProjects\\MyFirstJavaFX\\DSC_0752.JPG', '2016-12-15 06:37:13'),
(38, 'Borneo', 'Ignacio', 'Alcasid', '533-1617', 2, '', '2015-11-12 05:53:17'),
(39, 'Denok', 'Smith', 'Espino', '208-5570', 3, '', '2017-02-12 18:41:21'),
(40, 'Dennis', 'Marsan', 'Paras', '160-1278', 3, '', '2016-09-05 12:53:30'),
(41, 'Ronald', 'Santos', 'Pascual', '160-4158', 3, '', '2016-09-18 17:30:02'),
(50, 'Ronald', 'De la Cruz', 'Romero', '599-7489', 3, '', '2016-03-19 09:56:17'),
(51, 'Manny', 'Gonzales', 'Agustin', '947-4876', 3, '', '2015-08-06 06:17:54'),
(52, 'Emannuel', 'Reyes', 'Pena', '597-5242', 4, '', '2016-01-02 10:47:12'),
(53, 'Elena', 'Reyes', 'Cusi', '829-5706', 4, '', '2015-11-27 20:08:55'),
(54, 'Estrella', 'Magsino', 'Molina', '367-1241', 4, '', '2016-03-11 05:29:35'),
(55, 'Rene', 'Alva', 'Gonzaga', '519-2227', NULL, NULL, '2015-12-01 00:07:45'),
(56, 'May', 'Drillon', 'Aguas', '556-1139', 6, NULL, '2015-09-02 17:16:36'),
(57, 'Simon', 'Dion', 'Archuleta', '900-1597', NULL, NULL, '2017-04-11 23:06:19'),
(58, 'Dinesh', 'Gillermo', 'Ramirez', '980-9600', NULL, NULL, '2016-01-22 00:48:23'),
(59, 'Jorge', 'Gomez', 'Cabrera', '755-7454', NULL, NULL, '2017-02-13 15:49:33'),
(60, 'Leo', 'Santos', 'Alvarez', '462-7530', NULL, NULL, '2016-02-10 13:49:11'),
(61, 'Vince', 'Romeo', 'Banal', '990-7228', 11, NULL, '2015-11-11 06:43:50'),
(62, 'Ezekiel', 'Munoz', 'Tan', '645-5590', 10, NULL, '2015-08-24 01:18:15'),
(63, 'Timothy', 'Reyes', 'Sena', '345-5570', NULL, NULL, '2017-04-22 19:26:21'),
(64, 'Alfred', 'Estrada', 'Escalona', '750-8020', NULL, NULL, '2016-04-14 06:23:33'),
(65, 'Jeffrey', 'Rigodon', 'Munzon', '150-5099', NULL, NULL, '2016-03-04 06:45:19'),
(66, 'Carlos', 'Ortiz', 'Duran', '990-9668', NULL, NULL, '2016-09-05 23:42:32'),
(67, 'Roberto', 'Marquez', 'Pinol', '536-7791', NULL, NULL, '2015-07-25 11:23:20'),
(68, 'Donavan', 'Reyes', 'Cordero', '288-1020', NULL, NULL, '2016-06-09 18:55:37'),
(69, 'Isaac', 'Santana', 'Ramirez', '646-9257', NULL, NULL, '2016-03-08 21:34:42'),
(70, 'Karen', 'Mendoza', 'Emannuel', '690-6705', NULL, NULL, '2016-04-12 12:13:12'),
(71, 'Egay', 'Echavez', 'Romero', '207-8540', 14, NULL, '2015-07-09 05:28:29'),
(72, 'Fernando', 'Ramirez', 'Serrano', '192-7352', NULL, NULL, '2015-06-03 23:49:26'),
(73, 'Dennis', 'Manuel', 'Diaz', '990-2884', NULL, NULL, '2017-03-23 15:48:19'),
(74, 'Erich', 'Manuel', 'Serrano', '146-8630', NULL, NULL, '2016-07-15 16:39:53'),
(75, 'Neo', 'Pascual', 'Anderson', '878-8009', NULL, NULL, '2015-09-08 21:01:03'),
(76, 'Billy', 'Chu', 'Tan', '371-4512', NULL, NULL, '2015-06-29 16:12:12'),
(77, 'Rene', 'Ismael', 'Ortiz', '144-3640', NULL, NULL, '2017-01-26 03:04:26'),
(78, 'Liza', 'Dino', 'Dimacuha', '389-8545', NULL, NULL, '2015-07-21 23:52:09'),
(79, 'Oscar', 'Valbuena', 'Mendoza', '104-9590', NULL, NULL, '2017-03-22 23:14:03'),
(80, 'Dino', 'Mendoza', 'Banal', '482-5307', 11, NULL, '2016-02-19 05:40:22'),
(81, 'Richard', 'Ortiz', 'Pastor', '209-4527', NULL, NULL, '2015-09-03 15:46:19'),
(82, 'Orly', 'Reyes', 'Pastor', '637-8250', NULL, NULL, '2016-08-18 22:57:03'),
(83, 'Jennifer', 'Chu', 'Custodio', '215-6007', NULL, NULL, '2016-10-25 04:32:52'),
(84, 'Benny', 'Reyes', 'Medrano', '358-9891', NULL, NULL, '2016-11-09 10:59:48'),
(85, 'Jerome', 'Reyes', 'Escolta', '871-3863', NULL, NULL, '2016-07-07 02:27:01'),
(86, 'Jerome', 'Alba', 'Valbuena', '319-4371', NULL, NULL, '2016-09-02 12:22:15'),
(87, 'Reymart', 'Ortiz', 'Regino', '228-8292', NULL, NULL, '2016-06-27 15:36:50'),
(88, 'Donnie', 'Remata', 'Dimaunahan', '462-8203', NULL, NULL, '2017-02-06 02:03:57'),
(89, 'Jake', 'Reyes', 'Bautista', '717-1236', NULL, NULL, '2016-09-16 20:35:50'),
(90, 'Randy', 'Gomez', 'Estrada', '467-9650', NULL, NULL, '2016-12-04 09:53:57'),
(91, 'Cherry', 'Emannuel', 'Mercado', '424-2236', NULL, NULL, '2017-03-03 20:48:49'),
(92, 'Johnson', 'Guno', 'Lee', '847-5630', NULL, NULL, '2015-10-02 11:28:50'),
(93, 'Johnnson', 'Diaz', 'Fernandez', '275-6853', NULL, NULL, '2015-12-01 04:04:19'),
(94, 'Ricky', 'Ayala', 'Moreno', '602-9537', NULL, NULL, '2016-12-28 19:01:38'),
(95, 'Morris', 'Diaz', 'Castro', '963-9530', NULL, NULL, '2015-11-23 20:01:51'),
(96, 'Vergel', 'Reyes', 'Dionisio', '877-5240', NULL, NULL, '2017-03-02 04:10:57'),
(97, 'Andy', 'Gibson', 'Oriondo', '990-3786', NULL, NULL, '2016-10-27 17:55:45'),
(98, 'Lee', 'Mercado', 'Ortiz', '923-4780', NULL, NULL, '2017-04-15 14:12:28'),
(99, 'Marco', 'Morales', 'Marquez', '622-6745', NULL, NULL, '2016-08-24 02:21:44'),
(100, 'Estella', 'Gabia', 'Ramirez', '507-5135', NULL, NULL, '2016-01-15 02:17:49'),
(101, 'Diego', 'Castillo', 'Garcia', '450-6860', NULL, NULL, '2016-12-03 13:30:31'),
(102, 'Mike', 'Marquez', 'Velasquez', '294-4132', NULL, NULL, '2017-03-06 21:45:41'),
(103, 'Regina', 'Magsino', 'Lopez', '183-6765', NULL, NULL, '2015-10-20 05:23:29'),
(104, 'Rene', 'Aguilar', 'Roque', '723-9988', 3, '', '2018-05-14 20:19:07'),
(105, 'Renato', 'Mendoza', 'Mariano', '898-2233', 3, '', '2018-05-14 20:22:26'),
(106, 'Rigor', 'Galido', 'Lastimosa', '398-1233', 3, '', '2018-05-14 20:22:26'),
(107, 'Larry', 'Gomez', 'Guno', '298-2233', 3, '', '2018-05-14 20:22:26'),
(108, 'Ato', 'Belga', 'Ramirez', '198-2243', 3, '', '2018-05-14 20:22:26'),
(109, 'Romeo', 'Galido', 'Laguna', '898-2233', 3, '', '2018-05-14 20:22:26'),
(110, 'Romeo', 'Brin', 'Barriga', '775-2211', 3, '', '2018-05-14 20:33:04'),
(111, 'Sonny', 'Pelayo', 'Ramirez', '723-3381', 3, '', '2018-05-14 20:34:49'),
(112, 'Ismael', 'Rodriguez', 'Palao', '887-1231', 3, '', '2018-05-14 20:34:58'),
(113, 'John', 'Lima', 'Lee', '877-1231', 3, '', '2018-05-14 20:38:19'),
(124, 'Oliver', 'Tomayo', 'Ramirez', '231-3912', 3, '', '2018-05-14 21:37:48'),
(129, 'Donald', 'Remirez', 'Rosa', '893-1215', 3, '', '2018-05-14 22:02:01'),
(131, 'Andres', 'Roldan', 'Camilla', '234-1121', 3, '', '2018-05-14 22:06:33'),
(135, 'Augie', 'Sanchez', 'Garcia', '331-6623', 3, '', '2018-05-14 22:08:22'),
(140, 'Rene', 'Barios', 'Marios', '743-1231', 3, '', '2018-05-14 22:13:52'),
(146, 'Oscar', 'Mendoza', 'Ignacio', '672-1122', 3, '', '2018-05-14 22:17:46'),
(148, 'Renie', 'Vasquez', 'Linares', '388-3312', 3, '', '2018-05-14 22:29:35'),
(153, 'Arnel', 'Guererro', 'David', '241-1215', 3, '', '2018-05-14 22:32:56'),
(163, 'Anjo', 'Recaido', 'Guevarra', '827-1231', 3, '', '2018-05-14 22:47:29'),
(165, 'Anyano', 'De la Cruz', 'Banal', '344-1222', 12, '', '2018-05-14 22:50:20'),
(170, 'Aga', 'Milan', 'Herrera', '121-1299', 3, '', '2018-05-15 08:13:36'),
(172, 'Egay', 'Ramirez', 'Closa', '377-0989', 3, '', '2018-05-15 08:16:39'),
(173, 'Echor', 'Guno', 'Lapid', '444-2135', 3, '', '2018-05-15 08:19:27'),
(174, 'Antonio', 'Barios', 'Dacia', '344-1221', 3, '', '2018-05-15 08:30:11'),
(175, 'Esteban', 'Bella', 'Fabregas', '777-1216', 3, '', '2018-05-15 08:32:30'),
(176, 'Manuel', 'Santos', 'Pumaren', '777-1231', 3, '', '2018-05-15 08:36:54'),
(177, 'Denok', 'Ramirez', 'Pamintuan', '788-1221', 3, '', '2018-05-15 08:39:43'),
(178, 'Gary', 'Malapitan', 'Reyes', '788-2221', 3, '', '2018-05-15 08:40:01'),
(183, 'Michelle', 'Esplana', 'Rios', '09194448290', 3, '', '2018-05-15 09:06:23'),
(186, 'Esteban', 'Mercedes', 'Cabal', '999-1223', 3, '', '2018-05-15 10:15:19'),
(187, 'Johnny', 'Lee', 'Tan', '888-1233', 3, '', '2018-05-15 10:17:46'),
(207, 'Alvin', 'Magramo', 'Basti', '989-1221', 3, '', '2018-05-15 14:21:03'),
(209, 'Imelda', 'Puris', 'Santos', '09998293133', 3, '', '2018-05-15 14:24:03'),
(210, 'Rey', 'Puno', 'Barrientos', '09199992312', 3, '', '2018-05-15 14:25:05'),
(212, 'Ramil', 'Ignacio', 'Perez', '989-1231', 3, '', '2018-05-15 14:26:00'),
(236, 'Cesar', 'Gonzales', 'Tokuyama', '999-2221', 8, '', '2018-05-15 17:15:30'),
(243, 'Aljor', 'Jimenez', 'Cristobal', '09192223151', 13, '', '2018-05-15 18:50:37'),
(254, 'Jeremy', 'Sanchez', 'Galido', '898-3421', 11, '', '2018-05-17 18:45:45'),
(255, 'Eddie', 'Santos', 'Gabica', '343-1221', 4, '', '2018-05-17 21:07:37'),
(256, 'Arnold', 'Dimacuha', 'Ramirez', '824-1221', 9, '', '2018-05-17 21:08:06'),
(259, 'Homer', 'Yo', 'Ramirez', '123-2211', 14, '', '2018-05-25 09:25:38'),
(260, 'Test', 'Medrano', 'Ramirez', '897-222', 14, '', '2018-05-25 09:26:56'),
(261, 'Sonny', 'Ancahas', 'Senor', '999-9993', 13, '', '2018-05-25 09:38:38'),
(262, 'Vince', 'Perez', 'SIson', '434-1221', 12, '', '2018-05-25 09:43:23'),
(263, 'Gan', 'Lee', 'Estrella', '993-1222', 12, '', '2018-05-25 09:46:06'),
(264, 'Rommy', 'Perez', 'Perez', '908-1231', 11, '', '2018-05-25 09:51:57'),
(265, 'Beatris', 'Almazan', 'Mendoza', '343-0922', 13, '', '2018-05-25 09:52:43'),
(266, 'Ogie', 'Ramirez', 'Alcaraz', '987-1211', 12, '', '2018-05-25 09:53:03'),
(267, 'Agnes', 'Perez', 'Cruz', '321-3498', 11, '', '2018-05-25 10:27:10'),
(268, 'Donnie', 'Neri', 'Kaban', '342-1399', 12, '', '2018-05-25 10:27:30'),
(269, 'Ellen', 'Cabrera', 'Santos', '879-0981', 14, '', '2018-05-27 08:52:15'),
(270, 'Isagani', 'Din', 'Moreno', '988-2212', 8, '', '2018-05-27 08:53:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `educational_stage`
--
ALTER TABLE `educational_stage`
  ADD PRIMARY KEY (`educational_stage_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `educational_stage`
--
ALTER TABLE `educational_stage`
  MODIFY `educational_stage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
