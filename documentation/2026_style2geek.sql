-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 23 mars 2026 à 08:03
-- Version du serveur : 9.1.0
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `2026_style2geek`
--
CREATE DATABASE IF NOT EXISTS `2026_style2geek` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
USE `2026_style2geek`;

-- --------------------------------------------------------

--
-- Structure de la table `artiste`
--

DROP TABLE IF EXISTS `artiste`;
CREATE TABLE IF NOT EXISTS `artiste` (
  `id_artiste` int NOT NULL AUTO_INCREMENT,
  `pseudo_artiste` varchar(80) NOT NULL,
  `informations_artiste` varchar(250) NOT NULL,
  PRIMARY KEY (`id_artiste`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `artiste`
--

INSERT INTO `artiste` (`id_artiste`, `pseudo_artiste`, `informations_artiste`) VALUES
(1, 'alemaglia_designs', 'Italian tee designer and illustrator //https://www.instagram.com/alemaglia_designs/'),
(2, 'edu.ely', 'Illustrations, Graphic Design, T-shirt Designs & Cool Stuff from Brazil //https://www.instagram.com/edu.ely/'),
(3, 'arigatees', 'Designs about oriental culture, pop stuff and other awesome things!// https://www.instagram.com/arigatees/'),
(4, 'barbadifuoco', 'Salut ! Je suis Barbadifuoco alias Firebeard, un musicien geek et illustrateur (un peu) fou vivant en Italie ! //https://www.instagram.com/antoniobarbadifuoco/'),
(5, 'blancavidal', 'Espagne'),
(6, 'carloj1956', 'an italian designer'),
(7, 'daletheskater', 'Dale Hutchinson //https://www.instagram.com/daletheskater/'),
(8, 'damglynn', 'Irish artist, gif animator and designer. Fond of making funny, punny designs'),
(9, 'ddjvigo', 'Denís Vigo Ibiza //https://www.instagram.com/ddjvigo/'),
(10, 'deepfriesart', 'Graphic Artist - design fun and geeky t-shirts'),
(11, 'drmonekers', 'graphic designer from Spain //https://www.instagram.com/drmonekers/'),
(12, 'drsimonbutler', 'Freelance illustrator'),
(13, 'fanfabio', 'Italian tee designer,illustrator and 3D artist.//https://www.instagram.com/fanfabio_drawings/'),
(14, 'getsousa', 'Independent Artist, Madrid, Spain // https://www.instagram.com/getsousa_tees/?hl=fr'),
(15, 'happypeople', ''),
(16, 'hypertwenty', 'https://linktr.ee/hypertwentee'),
(17, 'itsdanielle91', 'Tee Designer, Graphic Designer // https://www.instagram.com/itsdanielle91/'),
(18, 'koalastudio', ''),
(19, 'laurarghh', ''),
(20, 'maxoart', ''),
(21, 'melonseta', 'https://www.instagram.com/melonseta/?hl=fr'),
(22, 'monastart', 'https://www.instagram.com/monastarts/'),
(23, 'mrtee', ''),
(24, 'nemimakeit', 'Nemi, italian tee designer since 2015 // https://www.instagram.com/nemimakeit_designs/'),
(25, 'nerdshizzle', 'Designer of nerd-themed merch // https://www.instagram.com/nerdshizzle/'),
(26, 'patrol', ''),
(27, 'pumberry', ''),
(28, 'qjo', ''),
(29, 'retrodivision', 'https://www.instagram.com/the_retro_division/'),
(30, 'reymatix', 'https://www.instagram.com/reymatix/'),
(31, 'rocketmantees', 'Designer/Artist/ See link to buy t-shirts, stickers & more // https://www.instagram.com/rocketmantees/?locale=fr&hl=en'),
(32, 'sebasebi', 'Sebastian Govino, aka Sebasebi, was originally from Rosario, Argentina but has been living in Biarritz, France for the last several years'),
(33, 'sirraines', ''),
(34, 'sithlorddesigns', ''),
(35, 'snouleaf', 'Tee Artist from a Portuguese shore, Kawaii, creepy and geeky tshirt illustrations // https://www.instagram.com/snouleaf/?locale=fr&hl=en'),
(36, 'stromptidompti', 'Graphic design, silly stuff. Freelancer and a dumbass // https://www.instagram.com/zeroqualityguaranteed/?locale=fr&hl=en'),
(37, 'studiomootant', 'Creating cool geek stuff by mixing art and design // Creating cool geek stuff by mixing art and design'),
(38, 'theduc', ''),
(39, 'trulymadlygeekly', 'https://www.instagram.com/trulymadlygeekly/?locale=fr&hl=en'),
(40, 'turborat', ''),
(41, 'vallina84', 'Artist, Illustrator e designer Freelance.//https://www.facebook.com/photo/?fbid=774207126888314&set=a.774207086888318&__tn__=%3C'),
(42, 'yiannistees', 'I design creative and geeky tees. // https://www.instagram.com/yiannistees/'),
(43, 'brilliantTees', ''),
(44, 'clingcling', ''),
(45, 'dylonGogh', ''),
(46, 'eagleflyfree', ''),
(47, 'edesigns', ''),
(48, 'experiment22', ''),
(49, 'tronyx79', 'Illustrator. https://www.instagram.com/tronyx79/'),
(50, 'tobiasfonseca', 'My name is Tobias Fonseca, I\'m a freelance illustrator from Brazil. I try to translate my love for nature through some ink;  https://tobias-fonseca.pixels.com/'),
(51, 'gleydson Barboza', 'T-shirt Design • Cover Album • etc;www.instagram.com/gleydsonart/?hl=fr'),
(52, 'fanFreak', 'Graphics & Illustrations, https://www.instagram.com/fanfreakdesign/'),
(53, 'graphicVerbiage', '');

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id_image` int NOT NULL AUTO_INCREMENT,
  `nom_image` varchar(50) NOT NULL,
  `designer_image` int DEFAULT NULL,
  `nb_vote_image` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_image`),
  KEY `designer_image` (`designer_image`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `images`
--

INSERT INTO `images` (`id_image`, `nom_image`, `designer_image`, `nb_vote_image`) VALUES
(1, '0-220706-250x250', 1, 0),
(2, '1-210433-255x306', 1, 0),
(3, '1-228574-255x306', 1, 0),
(4, '0-230241-250x250', 3, 0),
(5, '0-230294-250x250', 3, 0),
(6, '0-230425-250x250', 3, 0),
(7, '0-230727-250x250', 3, 1),
(8, '1_225839-255x306', 3, 0),
(9, '1_229686-255x306', 3, 0),
(10, '1_23003-255x306', 3, 0),
(11, '0-228922-250x250', 4, 0),
(12, '1-223915-255x306', 4, 0),
(13, '0-221233-250x250', 4, 0),
(14, '0-228131-250x250', 5, 0),
(15, '1-136210-250x250', 5, 0),
(16, '0-220938-250x250', 6, 0),
(17, '0-220935-250x250', 43, 0),
(18, '0-221228-250x250', 43, 0),
(19, '0-230136-250x250', 44, 0),
(20, '0-230541-250x250', 44, 0),
(21, '0-219515-250x250', 8, 0),
(22, '0-220631-250x250', 9, 0),
(23, '0-229106-250x250', 9, 0),
(24, '0-230152-250x250', 9, 0),
(25, '0-220816-250x250', 7, 0),
(26, '1-214421-250x250', 9, 0),
(27, '1-229241-250x250', 9, 0),
(28, '1-133572-255x306', 10, 0),
(29, '1-222241-255x306', 11, 0),
(30, '0-230848-250x250', 12, 0),
(31, '1-215426-255x306', 12, 0),
(32, '0-221451-250x250', 45, 0),
(33, '1-122488-255x306', 46, 0),
(34, '0-230515-250x250', 47, 0),
(35, '0-228371-250x250', 48, 0),
(36, '0-229356-250x250', 48, 0),
(37, '0-229357-250x250', 48, 0),
(38, '0-229547-250x250', 48, 0),
(39, '0-229620-250x250', 48, 0),
(40, '1-229355-250x250', 48, 0),
(41, '0-217777-250x250', 13, 0),
(42, '0-221025-250x250', 13, 0),
(43, '0-221121-250x250', 13, 1),
(44, '0-221359-250x250', 13, 0),
(45, '0-228586-250x250', 13, 0),
(46, '0-228587-250x250', 13, 0),
(47, '0-228588-250x250', 13, 0),
(48, '0-229238-250x250', 13, 0),
(49, '1-176414-250x250', 13, 0),
(50, '1-163440-250x250', 13, 0),
(51, '1-189194-250x250', 13, 0),
(52, '1-229504-250x250', 13, 0),
(53, '0-221124-250x250', 14, 0),
(54, '0-228214-250x250', 15, 0),
(55, '0-228215-250x250', 15, 0),
(56, '0-228218-250x250', 15, 0),
(57, '0-228260-250x250', 15, 0),
(58, '0-228263-250x250', 15, 0),
(59, '0-228274-250x250', 15, 0),
(60, '0-228462-250x250', 15, 0),
(61, '0-228466-250x250', 15, 0),
(62, '0-228471-250x250', 15, 0),
(63, '0-228476-250x250', 15, 0),
(64, '0-219063-250x250', 16, 0),
(65, '0-219067-250x250', 16, 0),
(66, '0-221151-250x250', 16, 0),
(67, '0-220986-250x250', 17, 2),
(68, '0-230579-250x250', 18, 0),
(69, '1-82701-255x306', 19, 0),
(70, '0-230666-250x250', 20, 0),
(71, '0-220998-250x250', 21, 0),
(72, '0-221337-250x250', 21, 0),
(73, '0-230522-250x250', 21, 0),
(74, '0-221485-250x250', 22, 0),
(75, '0-208844-250x250', 23, 0),
(76, '1-143683-255x306', 23, 0),
(77, '1-143076-250x250', 24, 0),
(78, '1-225777-250x250', 24, 0),
(79, '1-229720-250x250', 24, 0),
(80, '0-204071-250x250', 25, 0),
(81, '1-204071-250x250', 25, 0),
(82, '1-222212-250x250', 25, 0),
(83, '1-206790-255x306', 26, 0),
(84, '0-230561-250x250', 27, 0),
(85, '0-230669-250x250', 28, 0),
(86, '0-230670-250x250', 28, 0),
(87, '1-230671-250x250', 28, 0),
(88, '0-228682-250x250', 29, 0),
(89, '1-179605-250x250', 29, 0),
(90, '1-196673-250x250', 29, 0),
(91, '0-221340-250x250', 30, 0),
(92, '0-220841-250x250', 31, 0),
(93, '0-230530-250x250', 32, 1),
(94, '0-221225-250x250', 33, 0),
(95, '1-200360-255x306', 34, 0),
(96, '0-228495-250x250', 35, 0),
(97, '0-228707-250x250', 35, 0),
(98, '0-230480-250x250', 35, 0),
(99, '1-204194-250x250', 35, 0),
(100, '1-153503-250x250', 36, 0),
(101, '0-229006-250x250', 37, 0),
(102, '0-230183-250x250', 37, 0),
(103, '0-230467-250x250', 37, 0),
(104, '0-230775-250x250', 37, 0),
(105, '0-228636-250x250', 38, 0),
(106, '1-210444-250x250', 38, 1),
(107, '0-230722-250x250', 39, 0),
(108, '0-217762-250x250', 40, 0),
(109, '0-218029-250x250', 40, 0),
(110, '0-229149-250x250', 40, 0),
(111, '0-229333-250x250', 40, 0),
(112, '0-230324-250x250', 40, 0),
(113, '0-230624-250x250', 40, 0),
(114, '0-230625-250x250', 40, 0),
(115, '0-230631-250x250', 40, 0),
(116, '0-230756-250x250', 40, 0),
(117, '1-218330-250x250', 40, 0),
(118, '1-224364-255x306', 40, 0),
(119, '0-221481-250x250', 41, 3),
(120, '0-228796-250x250', 41, 0),
(121, '0-228838-250x250', 41, 0),
(122, '0-228841-250x250', 41, 0),
(123, '0-229484-250x250', 41, 0),
(124, '1-229700-250x250', 41, 0),
(125, '1-229698-250x250', 41, 0),
(126, '1-148645-250x250', 42, 0),
(127, '1-149782-250x250', 42, 0),
(128, '1-139515-250x250', 42, 0),
(129, '1-224280-250x250', 42, 0),
(130, '0-235692-250x250', 40, 0),
(131, '0-235693-250x250', 40, 0),
(132, '0-235696-250x250', 40, 0),
(133, '0-235206-250x250', 49, 0),
(134, '0-235033-250x250', 41, 0),
(135, '0-235183-250x250', 50, 0),
(136, '0-235184-250x250', 50, 0),
(137, '0-234940-250x250', 11, 0),
(138, '0-234991-250x250', 41, 0),
(139, '0-235092-250x250', 4, 0),
(140, '0-235198-250x250', 51, 0),
(141, '0-235412-250x250', 52, 0),
(142, '0-235610-250x250', 8, 0),
(143, '0-235430-250x250', 31, 0),
(144, '0-235303-250x250', 53, 1);

-- --------------------------------------------------------

--
-- Structure de la table `images_teeshirt`
--

DROP TABLE IF EXISTS `images_teeshirt`;
CREATE TABLE IF NOT EXISTS `images_teeshirt` (
  `id` int NOT NULL,
  `nom` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `images_teeshirt`
--

INSERT INTO `images_teeshirt` (`id`, `nom`) VALUES
(1, '0-220706-full-900x500'),
(13, '0-221233-full-900x500'),
(16, '0-220938-full-900x500'),
(17, '0-220935-full-900x500'),
(18, '0-221228-full-900x500'),
(21, '0-219515-full-900x500'),
(22, '0-220631-full-900x500'),
(25, '0-220816-full-900x500'),
(28, '0-133572-full-900x500'),
(32, '0-221451-full-900x500'),
(41, '0-217777-full-900x500'),
(42, '0-221025-full-900x500'),
(43, '0-221121-full-900x500'),
(44, '0-221359-full-900x500'),
(53, '0-221124-full-900x500'),
(64, '0-219063-full-900x500'),
(65, '0-219067-full-900x500'),
(66, '0-221151-full-900x500'),
(67, '0-220986-full-900x500'),
(71, '0-220998-full-900x500'),
(72, '0-221337-full-900x500'),
(74, '0-221485-full-900x500'),
(75, '0-208844-full-900x500'),
(80, '0-204071-full-900x500'),
(91, '0-221340-full-900x500'),
(92, '0-220841-full-900x500'),
(94, '0-221225-full-900x500'),
(108, '0-217762-full-900x500'),
(109, '0-218029-full-900x500'),
(119, '0-221481-full-900x500'),
(130, '0-235692-full-900x500'),
(131, '0-235693-full-900x500'),
(132, '0-235696-full-900x500'),
(133, '0-235206-full-900x500'),
(134, '0-235033-full-900x500'),
(135, '0-235183-full-900x500'),
(136, '0-235184-full-900x500'),
(137, '0-234940-full-900x500'),
(138, '0-234991-full-900x500'),
(139, '0-235092-full-900x500'),
(140, '0-235198-full-900x500'),
(141, '0-235412-full-900x500'),
(142, '0-235610-full-900x500'),
(143, '0-235430-full-900x500'),
(144, '0-235303-full-900x500');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifiant` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `mdp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `identifiant` (`identifiant`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `identifiant`, `mdp`) VALUES
(8, 'llaforet', '$2y$10$vCU8XSDkFRxB2sr8uHukFu2lyUSeqRFfO7YDFChzU2izo9V/fsDoG'),
(10, 'lucien.laf', '$2y$10$rntYb6qX6cs8uRVyevyNIef6J7pwfCB7aYTmqLuWevuAtAM88rcVC'),
(11, 'lulu', '$2y$10$DyP8D7TuuDaJyCoraHFOP.0ksTRd.X8qrIor7RX1X3MXftOrNrP2W');

-- --------------------------------------------------------

--
-- Structure de la table `vote`
--

DROP TABLE IF EXISTS `vote`;
CREATE TABLE IF NOT EXISTS `vote` (
  `id_user` int NOT NULL,
  `id_image` int NOT NULL,
  `date_vote` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_user`,`id_image`),
  UNIQUE KEY `unique_vote` (`id_user`,`id_image`),
  KEY `id_image` (`id_image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `vote`
--

INSERT INTO `vote` (`id_user`, `id_image`, `date_vote`) VALUES
(8, 67, '2025-07-03 10:33:56'),
(8, 93, '2025-07-03 10:52:40'),
(8, 106, '2025-07-04 15:13:21'),
(8, 119, '2025-07-03 10:33:09'),
(8, 144, '2025-07-04 12:35:13'),
(10, 67, '2025-07-04 15:25:11'),
(10, 119, '2025-07-04 15:25:30'),
(11, 7, '2025-07-04 16:39:09'),
(11, 43, '2025-07-04 16:40:27'),
(11, 119, '2025-07-04 16:40:40');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`designer_image`) REFERENCES `artiste` (`id_artiste`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `images_teeshirt`
--
ALTER TABLE `images_teeshirt`
  ADD CONSTRAINT `images_teeshirt_ibfk_1` FOREIGN KEY (`id`) REFERENCES `images` (`id_image`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `vote`
--
ALTER TABLE `vote`
  ADD CONSTRAINT `vote_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vote_ibfk_2` FOREIGN KEY (`id_image`) REFERENCES `images` (`id_image`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
