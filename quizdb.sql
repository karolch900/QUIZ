-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 09 Mar 2020, 20:36
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `quizdb`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `person`
--

CREATE TABLE `person` (
  `PersonID` int(11) NOT NULL,
  `man` varchar(255) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `person`
--

INSERT INTO `person` (`PersonID`, `man`) VALUES
(56, ''),
(57, 'Karol'),
(58, 'Karol'),
(59, ''),
(60, ''),
(61, ''),
(62, ''),
(63, ''),
(64, ''),
(65, ''),
(66, ''),
(67, ''),
(68, ''),
(69, ''),
(70, ''),
(71, ''),
(72, ''),
(73, ''),
(74, ''),
(75, ''),
(76, ''),
(77, 'Karol'),
(78, 'Karol'),
(79, 'Karol'),
(80, 'Karol'),
(81, ''),
(82, ''),
(83, ''),
(84, ''),
(85, ''),
(86, ''),
(87, ''),
(88, ''),
(89, ''),
(90, ''),
(91, ''),
(92, ''),
(93, ''),
(94, ''),
(95, ''),
(96, ''),
(97, ''),
(98, ''),
(99, 'Karol'),
(100, 'Karol'),
(101, 'Karol'),
(102, 'Karol'),
(103, 'Karol'),
(104, 'Karol'),
(105, 'Karol'),
(106, 'Karol'),
(107, 'Karol'),
(108, 'Karol'),
(109, 'Karol'),
(110, 'Karol'),
(111, 'Karol'),
(112, 'Karol'),
(113, 'Karol'),
(114, 'Karol'),
(115, 'Karol'),
(116, 'Karol'),
(117, 'Karol'),
(118, 'Karol'),
(119, 'Karol'),
(120, 'Karol'),
(121, 'Karol'),
(122, 'Karol'),
(123, 'Karol'),
(124, 'Karol'),
(125, 'Karol'),
(126, 'Karol'),
(127, 'Karol'),
(128, 'Karol'),
(129, 'Karol'),
(130, 'Karol'),
(131, 'Karol'),
(132, 'Karol'),
(133, 'Karol'),
(134, 'Karol'),
(135, 'Karol'),
(136, 'Karol'),
(137, 'Karol'),
(138, 'Karol'),
(139, 'Karol'),
(140, 'Karol'),
(141, 'Karol'),
(142, 'Karol'),
(143, 'Karol'),
(144, 'Karol'),
(145, 'Karol'),
(146, 'Karol'),
(147, 'Karol'),
(148, 'Karol'),
(149, 'Karol'),
(150, 'Karol'),
(151, 'Karol'),
(152, 'Karol'),
(153, 'Karol'),
(154, 'Karol'),
(155, 'Karol'),
(156, 'Karol'),
(157, 'Karol'),
(158, 'Karol'),
(159, 'Karol'),
(160, 'Karol'),
(161, 'Karol'),
(162, 'Karol'),
(163, 'Karol'),
(164, 'Karol'),
(165, 'Karol'),
(166, 'Karol'),
(167, 'Karol'),
(168, 'Karol'),
(169, 'Karol'),
(170, 'Karol'),
(171, 'Karol'),
(172, 'Karol'),
(173, 'Karol'),
(174, 'Karol'),
(175, 'Karol'),
(176, 'Karol');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `quiz`
--

CREATE TABLE `quiz` (
  `quizID` int(255) NOT NULL,
  `question` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `choice1` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `choice2` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `choice3` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `quiz`
--

INSERT INTO `quiz` (`quizID`, `question`, `choice1`, `choice2`, `choice3`, `answer`) VALUES
(1, 'Ile pikseli posiada rozdzielczość 4K?', '1920x1080', '2048x1080', '3840x2160', '3840x2016'),
(2, 'Co w warsztacie filmowym oznaczamy skrótem „CTB”?', 'Typ jednostki świetlnej\r\n', 'Folię używaną do zmiany temperatury barwowej światła', 'Tworzywo używane do dyfuzji światła', 'Folię używaną do zmiany temperatury barwowej światła'),
(3, 'W jakich jednostkach mierzona jest temperatura barwowa światła?\r\n', 'W kelvinach', 'W amperach', 'W saturacji', 'W kelvinach'),
(4, 'W jakim filmie po raz pierwszy została użyta technika filmowa znana jako „dolly zoom”?\r\n', 'Vertigo', 'Wodny świat', 'Władca Pierścieni', 'Vertigo'),
(5, 'Czym jest LOG?\r\n', 'Typem lampy', 'Rodzajem kamery', 'Trybem wysokiej rozpiętości tonalnej', 'Trybem wysokiej rozpiętości tonalnej'),
(6, 'Z jakiego typu filmów wywodzi się plan amerykański?\r\n', 'Z horrorów', 'Z westernów', 'Z filmów science-fiction', 'Z westernów'),
(7, 'Według uniwersalnej zasady ostrzenia podczas filmowania postaci, na co powinna być koncentrowana ostrość?', 'Na oczy', 'Na włosy', 'Na twarz', 'Na oczy'),
(8, 'Który z reżyserów uważa że storyboardy to „narzędzie tchórzy”?\r\n', 'Werner Herzog', 'Robert Bresson', 'David Lynch', 'Werner Herzog'),
(9, 'Co nazywamy transfokacją?\r\n', 'Odjazd kamerowy.', 'Najazd kamerowy.', 'Zmianę ogniskowej podczas nagrywania', 'Zmianę ogniskowej podczas nagrywania'),
(10, 'Jakie obiektywy charakteryzują się podłużnym efektem „bokeh”?\r\n', 'Obiektywy anamorficzne', 'Obiektywy makro', 'Obiektywy typu rybie oko', 'Obiektywy anamorficzne'),
(11, 'Jak nazywamy główne źródło światła podczas typowego „3 Light Setup”?\r\n', 'Fill light', 'Kontra', 'Key light', 'Key light'),
(12, 'Co w żargonie filmowym określamy mianem „murzyna”?\r\n', 'Czarny statyw', 'Flagę odcinającą dopływ światła', 'Dyfuzję', 'Flagę odcinającą dopływ światła'),
(13, 'Jak nazywa się soczewka używana często w światłach typu HMI?\r\n', 'Tungsten', 'Fresnel', 'CTO', 'Fresnel'),
(14, 'Jak nazywa się operator znany z karkołomnego filmowania kamerami IMAX prosto „z ręki”?\r\n', 'Sven Nykvist', 'Roger Daekins', 'Hoyte Van Hoytema', 'Hoyte Van Hoytema'),
(15, 'Jak nazywamy typ techniki filmowej, który charakteryzuje się długim, pojedynczym ujęciem, sfilmowanym bez żadnych cięć?\r\n', 'Jib', 'Detal', 'Mastershot', 'Mastershot');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `score`
--

CREATE TABLE `score` (
  `ID` int(11) NOT NULL,
  `personName` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `score`
--

INSERT INTO `score` (`ID`, `personName`, `score`) VALUES
(3, 'Karol', 0),
(4, 'Karol', 0),
(5, 'Karol', 0),
(6, 'Karol', 0),
(7, 'Karol', 0),
(8, 'Karol', 0),
(9, 'Karol', 1),
(10, 'Karol', 1),
(11, 'Karol', 1),
(12, 'Karol', 1),
(13, 'Karol', 0),
(14, 'Karol', 0),
(15, 'Karol', 0),
(16, 'Karol', 0),
(17, 'Karol', 0),
(18, 'Karol', 0),
(19, 'Karol', 0),
(20, 'Karol', 0),
(21, 'Karol', 0),
(22, 'Karol', 0),
(23, 'Karol', 0),
(24, 'Karol', 0),
(25, 'Karol', 0),
(26, 'Karol', 0),
(27, 'Karol', 0),
(28, 'Karol', 0),
(29, 'Karol', 0),
(30, 'Karol', 0),
(31, '', 0),
(32, '', 0),
(33, '', 0),
(34, '', 0),
(35, 'karol', 0),
(36, 'karol', 0),
(37, 'Karol', 0),
(38, 'Karol', 0),
(39, 'Karol', 0),
(40, 'Karol', 0),
(41, 'Karol', 0),
(42, 'Karol', 0),
(43, 'Karol', 0),
(44, 'Karol', 0),
(45, 'Karol', 0),
(46, 'Karol', 0),
(47, 'Karol', 0),
(48, 'Karol', 0),
(49, 'Karol', 0),
(50, 'Karol', 0),
(51, 'Karol', 0),
(52, 'Karol', 0),
(53, 'Karol', 0),
(54, 'Karol', 0),
(55, 'Karol', 0),
(56, 'Karol', 0),
(57, 'kAROL', 0),
(58, 'kAROL', 0),
(59, 'kAROL', 0),
(60, 'kAROL', 0),
(61, 'kAROL', 0),
(62, 'kAROL', 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`PersonID`);

--
-- Indeksy dla tabeli `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quizID`);

--
-- Indeksy dla tabeli `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `person`
--
ALTER TABLE `person`
  MODIFY `PersonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT dla tabeli `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quizID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `score`
--
ALTER TABLE `score`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
