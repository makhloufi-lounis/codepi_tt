-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 13 Janvier 2016 à 00:02
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `codepi_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `concerts`
--

CREATE TABLE IF NOT EXISTS `concerts` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Artiste` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `Lieu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Adresse` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Ville` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Prix` decimal(10,0) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=121 ;

--
-- Contenu de la table `concerts`
--

INSERT INTO `concerts` (`Id`, `Artiste`, `Lieu`, `Adresse`, `Ville`, `Date`, `Prix`) VALUES
(1, 'Bassnectar', 'La Maroquinerie', '23 Rue Boyer', 'Paris', '10/01/2014 20:00:00', '12'),
(2, 'Bassnectar', 'La Flèche d''Or', '102 Bis Rue de Bagnolet', 'Paris', '13/01/2014 19:00:00', '39'),
(3, 'Bassnectar', '', '13 Rue Delandine', 'Lyon', '20/01/2014 20:00:00', '26'),
(4, 'Bassnectar', 'Les Subsistances', '8 bis Quai Saint-Vincent', 'Lyon', '27/01/2014 19:30:00', '43'),
(5, 'Boogaloo Joe Jones', 'La Flèche d''Or', '102 Bis Rue de Bagnolet', 'Paris', '09/02/2014 20:00:00', '28'),
(6, 'Boogaloo Joe Jones', 'Rock School Barbey  ', '18 Cours Barbey', 'Bordeaux', '10/01/2014 20:00:00', '15'),
(7, 'Boogaloo Joe Jones', 'La Flèche d''Or', '102 Bis Rue de Bagnolet', 'Paris', '18/02/2014 20:30:00', '30'),
(8, 'Boogaloo Joe Jones', 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '20/01/2014 20:00:00', '48'),
(9, 'Curtis Mayfield', 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '13/01/2014 19:00:00', '37'),
(10, 'Curtis Mayfield', 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '25/02/2014 20:30:00', '23'),
(11, 'Curtis Mayfield', 'La Flèche d''Or', '102 Bis Rue de Bagnolet', 'Paris', '04/03/2014 20:00:00', '36'),
(12, 'Curtis Mayfield', 'Le Dôme  ', '48 Avenue de Saint-Just', 'Marseille', '09/02/2014 20:00:00', '42'),
(13, 'Cypress Hill', 'Cabaret Aléatoire  ', '41 Rue Jobin', 'Marseille', '10/01/2014 20:00:00', '36'),
(14, 'Cypress Hill', 'La Flèche d''Or', '102 Bis Rue de Bagnolet', 'Paris', '27/01/2014 19:30:00', '17'),
(15, 'Cypress Hill', 'Le Mandala  ', '23 Rue des Amidonniers', 'Toulouse', '11/04/2014 20:00:00', '33'),
(16, 'Cypress Hill', 'La Plateforme', '4 Quai Victor Augagneur', 'Lyon', '15/04/2014 19:30:00', '39'),
(17, 'Daft Punk', 'el Chicho  ', '52 Place des Capucins', 'Bordeaux', '18/02/2014 20:30:00', '16'),
(18, 'Daft Punk', 'Le bijou  ', '123 Avenue de Muret,', 'Toulouse', '04/03/2014 20:00:00', '25'),
(19, 'Daft Punk', 'La Maroquinerie', '23 Rue Boyer', 'Paris', '25/02/2014 20:30:00', '46'),
(20, 'Daft Punk', 'Le Dôme  ', '48 Avenue de Saint-Just', 'Marseille', '13/01/2014 19:00:00', '20'),
(21, 'Django Reinhardt', 'Café des Moines  ', '12 Rue des Menuts', 'Bordeaux', '15/04/2014 19:30:00', '21'),
(22, 'Django Reinhardt', 'Espace Julien  ', '39 Cours Julien', 'Marseille', '09/02/2014 20:00:00', '13'),
(23, 'Django Reinhardt', 'Le Périscope', '13 Rue Delandine', 'Lyon', '15/04/2014 19:30:00', '12'),
(24, 'Django Reinhardt', 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '20/01/2014 20:00:00', '30'),
(25, 'The Beatles', 'La Maroquinerie', '23 Rue Boyer', 'Paris', '12/01/2014 20:00:00', '40'),
(26, 'The Beatles', 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '10/01/2014 20:00:00', '45'),
(27, 'The Beatles', 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '27/01/2014 19:30:00', '47'),
(28, 'The Beatles', 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '15/04/2014 19:30:00', '16'),
(29, 'Ennio Morricone', 'Les Subsistances', '8 bis Quai Saint-Vincent', 'Lyon', '27/01/2014 19:30:00', '43'),
(30, 'Ennio Morricone', 'Le Dôme  ', '48 Avenue de Saint-Just', 'Marseille', '25/02/2014 20:30:00', '10'),
(31, 'Ennio Morricone', 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '13/01/2014 19:00:00', '20'),
(32, 'Ennio Morricone', 'Le Dôme  ', '48 Avenue de Saint-Just', 'Marseille', '04/03/2014 20:00:00', '27'),
(33, 'Flux Pavilion', 'La Maroquinerie', '23 Rue Boyer', 'Paris', '09/02/2014 20:00:00', '14'),
(34, 'Flux Pavilion', 'Le Périscope', '13 Rue Delandine', 'Lyon', '18/02/2014 20:30:00', '11'),
(35, 'Flux Pavilion', 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '10/01/2014 20:00:00', '13'),
(36, 'Flux Pavilion', 'La Flèche d''Or', '102 Bis Rue de Bagnolet', 'Paris', '20/01/2014 20:00:00', '17'),
(37, 'Gentlemans Dub Club', 'Rock School Barbey  ', '18 Cours Barbey', 'Bordeaux', '13/01/2014 19:00:00', '16'),
(38, 'Gentlemans Dub Club', 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '25/02/2014 20:30:00', '22'),
(39, 'Gentlemans Dub Club', 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '27/01/2014 19:30:00', '16'),
(40, 'Gentlemans Dub Club', 'Le Périscope', '13 Rue Delandine', 'Lyon', '11/04/2014 20:00:00', '24'),
(41, 'Gramatik', 'La Maroquinerie', '23 Rue Boyer', 'Paris', '12/01/2014 20:00:00', '38'),
(42, 'Gramatik', 'Le Dôme  ', '48 Avenue de Saint-Just', 'Marseille', '09/02/2014 20:00:00', '20'),
(43, 'Gramatik', 'Les Subsistances', '8 bis Quai Saint-Vincent', 'Lyon', '15/04/2014 19:30:00', '30'),
(44, 'Gramatik', 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '04/03/2014 20:00:00', '39'),
(45, 'James Brown', 'Rock School Barbey  ', '18 Cours Barbey', 'Bordeaux', '20/01/2014 20:00:00', '37'),
(46, 'James Brown', 'La Maroquinerie', '23 Rue Boyer', 'Paris', '12/01/2014 20:00:00', '24'),
(47, 'James Brown', 'Le Périscope', '13 Rue Delandine', 'Lyon', '09/02/2014 20:00:00', '22'),
(48, 'James Brown', 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '11/04/2014 20:00:00', '26'),
(49, 'James Brown', 'Le Dôme  ', '48 Avenue de Saint-Just', 'Marseille', '18/02/2014 20:30:00', '46'),
(50, 'Kavinsky', 'La Maroquinerie', '23 Rue Boyer', 'Paris', '25/02/2014 20:30:00', '11'),
(51, 'Kavinsky', 'La Maroquinerie', '23 Rue Boyer', 'Paris', '27/01/2014 19:30:00', '32'),
(52, 'Kavinsky', 'Rock School Barbey  ', '18 Cours Barbey', 'Bordeaux', '04/03/2014 20:00:00', '36'),
(53, 'Kavinsky', 'La Flèche d''Or', '102 Bis Rue de Bagnolet', 'Paris', '13/01/2014 19:00:00', '28'),
(54, 'Queen', 'Cabaret Aléatoire  ', '41 Rue Jobin', 'Marseille', '09/02/2014 20:00:00', '20'),
(55, 'Queen', 'La Maroquinerie', '23 Rue Boyer', 'Paris', '12/01/2014 20:00:00', '38'),
(56, 'Queen', 'Les Subsistances', '8 bis Quai Saint-Vincent', 'Lyon', '20/01/2014 20:00:00', '34'),
(57, 'Queen', 'Cabaret Aléatoire  ', '41 Rue Jobin', 'Marseille', '16/01/2014 20:00:00', '31'),
(58, 'Major Lazer', 'Le Périscope', '13 Rue Delandine', 'Lyon', '18/02/2014 20:30:00', '35'),
(59, 'Major Lazer', 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '15/04/2014 19:30:00', '16'),
(60, 'Major Lazer', 'La Flèche d''Or', '102 Bis Rue de Bagnolet', 'Paris', '10/01/2014 20:00:00', '49'),
(61, 'Major Lazer', 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '11/04/2014 20:00:00', '42'),
(62, 'Mc solaar', 'Les Subsistances', '8 bis Quai Saint-Vincent', 'Lyon', '25/02/2014 20:30:00', '29'),
(63, 'Mc solaar', 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '27/01/2014 19:30:00', '36'),
(64, 'Mc solaar', 'La Maroquinerie', '23 Rue Boyer', 'Paris', '18/02/2014 20:30:00', '46'),
(65, 'Mc solaar', 'Cabaret Aléatoire  ', '41 Rue Jobin', 'Marseille', '16/01/2014 20:00:00', '30'),
(66, 'MGMT', 'Le Périscope', '13 Rue Delandine', 'Lyon', '13/01/2014 19:00:00', '38'),
(67, 'MGMT', 'Rock School Barbey  ', '18 Cours Barbey', 'Bordeaux', '12/01/2014 20:00:00', '19'),
(68, 'MGMT', 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '09/02/2014 20:00:00', '40'),
(69, 'MGMT', 'La Maroquinerie', '23 Rue Boyer', 'Paris', '04/03/2014 20:00:00', '10'),
(70, 'Michael Jackson', 'La Maroquinerie', '23 Rue Boyer', 'Paris', '16/01/2014 20:00:00', '18'),
(71, 'Michael Jackson', 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '25/02/2014 20:30:00', '24'),
(72, 'Michael Jackson', 'Cabaret Aléatoire  ', '41 Rue Jobin', 'Marseille', '16/01/2014 20:00:00', '13'),
(73, 'Michael Jackson', 'La Maroquinerie', '23 Rue Boyer', 'Paris', '15/04/2014 19:30:00', '28'),
(74, 'Moby', 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '09/02/2014 20:00:00', '34'),
(75, 'Moby', 'Les Subsistances', '8 bis Quai Saint-Vincent', 'Lyon', '11/04/2014 20:00:00', '25'),
(76, 'Moby', 'La Maroquinerie', '23 Rue Boyer', 'Paris', '12/01/2014 20:00:00', '16'),
(77, 'Moby', 'Rock School Barbey  ', '18 Cours Barbey', 'Bordeaux', '18/02/2014 20:30:00', '33'),
(78, 'Mr. Oizo', 'La Flèche d''Or', '102 Bis Rue de Bagnolet', 'Paris', '04/03/2014 20:00:00', '42'),
(79, 'Mr. Oizo', '', '', '', '27/01/2014 19:30:00', '31'),
(80, 'Mr. Oizo', 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '25/02/2014 20:30:00', '22'),
(81, 'Mr. Oizo', '', '', '', '16/01/2014 20:00:00', '37'),
(82, 'Mungo''s Hifi', 'Le Périscope', '13 Rue Delandine', 'Lyon', '20/01/2014 20:00:00', '19'),
(83, 'Mungo''s Hifi', 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '16/01/2014 20:00:00', '30'),
(84, 'Mungo''s Hifi', '', '', '', '15/04/2014 19:30:00', '27'),
(85, 'Mungo''s Hifi', 'La Maroquinerie', '23 Rue Boyer', 'Paris', '11/04/2014 20:00:00', '15'),
(86, 'Nirvana', 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '27/01/2014 19:30:00', '40'),
(87, 'Nirvana', 'Les Subsistances', '8 bis Quai Saint-Vincent', 'Lyon', '09/02/2014 20:00:00', '16'),
(88, 'Nirvana', 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '16/01/2014 20:00:00', '28'),
(89, 'Nirvana', 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '20/01/2014 20:00:00', '43'),
(90, 'Panda Dub', 'La Flèche d''Or', '102 Bis Rue de Bagnolet', 'Paris', '18/02/2014 20:30:00', '30'),
(91, 'Panda Dub', 'Cabaret Aléatoire  ', '41 Rue Jobin', 'Marseille', '11/04/2014 20:00:00', '15'),
(92, 'Panda Dub', 'Les Subsistances', '8 bis Quai Saint-Vincent', 'Lyon', '04/03/2014 20:00:00', '50'),
(93, 'Panda Dub', 'La Maroquinerie', '23 Rue Boyer', 'Paris', '13/01/2014 19:00:00', '36'),
(94, 'Puppetmastaz', 'Cabaret Aléatoire  ', '41 Rue Jobin', 'Marseille', '15/04/2014 19:30:00', '49'),
(95, 'Puppetmastaz', 'Le Périscope', '13 Rue Delandine', 'Lyon', '12/01/2014 20:00:00', '38'),
(96, 'Puppetmastaz', 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '18/02/2014 20:30:00', '40'),
(97, 'Puppetmastaz', 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '25/02/2014 20:30:00', '11'),
(98, 'Radiohead', 'La Flèche d''Or', '102 Bis Rue de Bagnolet', 'Paris', '09/02/2014 20:00:00', '41'),
(99, 'Radiohead', 'Cabaret Aléatoire  ', '41 Rue Jobin', 'Marseille', '16/01/2014 20:00:00', '17'),
(100, 'Radiohead', 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '10/01/2014 20:00:00', '13'),
(101, 'Radiohead', 'Les Subsistances', '8 bis Quai Saint-Vincent', 'Lyon', '27/01/2014 19:30:00', '47'),
(102, 'Rusko', 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '12/01/2014 20:00:00', '28'),
(103, 'Rusko', 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '11/04/2014 20:00:00', '33'),
(104, 'Rusko', 'La Maroquinerie', '23 Rue Boyer', 'Paris', '18/02/2014 20:30:00', '40'),
(105, 'Rusko', 'Rock School Barbey  ', '18 Cours Barbey', 'Bordeaux', '25/02/2014 20:30:00', '29'),
(106, 'Stand High Patrol', 'Les Subsistances', '8 bis Quai Saint-Vincent', 'Lyon', '09/02/2014 20:00:00', '12'),
(107, 'Stand High Patrol', 'Les Subsistances', '8 bis Quai Saint-Vincent', 'Lyon', '15/04/2014 19:30:00', '19'),
(108, 'Stand High Patrol', 'Rock School Barbey  ', '18 Cours Barbey', 'Bordeaux', '11/04/2014 20:00:00', '48'),
(109, 'Stand High Patrol', 'Le Dôme  ', '48 Avenue de Saint-Just', 'Marseille', '20/01/2014 20:00:00', '15'),
(110, 'The xx', 'La Flèche d''Or', '102 Bis Rue de Bagnolet', 'Paris', '04/03/2014 20:00:00', '25'),
(111, 'The xx', 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '27/01/2014 19:30:00', '27'),
(112, 'The xx', 'Les Subsistances', '8 bis Quai Saint-Vincent', 'Lyon', '18/02/2014 20:30:00', '11'),
(113, 'Uppermost', 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '10/01/2014 20:00:00', '38'),
(114, 'Uppermost', 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '04/03/2014 20:00:00', '39'),
(115, 'Uppermost', 'La Maroquinerie', '23 Rue Boyer', 'Paris', '25/02/2014 20:30:00', '24'),
(116, 'Uppermost', 'Rock School Barbey  ', '18 Cours Barbey', 'Bordeaux', '09/02/2014 20:00:00', '49'),
(117, 'Paul Kalkbrenner', 'Le Périscope', '13 Rue Delandine', 'Lyon', '18/02/2014 20:30:00', '24'),
(118, 'Paul Kalkbrenner', 'Les Subsistances', '8 bis Quai Saint-Vincent', 'Lyon', '27/01/2014 19:30:00', '25'),
(119, 'Paul Kalkbrenner', 'Rock School Barbey  ', '18 Cours Barbey', 'Bordeaux', '20/01/2014 20:00:00', '22'),
(120, 'Paul Kalkbrenner', 'La Maroquinerie', '23 Rue Boyer', 'Paris', '13/01/2014 19:00:00', '27');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
