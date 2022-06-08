-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 03 juin 2022 à 21:58
-- Version du serveur :  8.0.22
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projetj2ee`
--
CREATE DATABASE IF NOT EXISTS `projetj2ee` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `projetj2ee`;

-- --------------------------------------------------------

--
-- Structure de la table `annonce`
--

CREATE TABLE `annonce` (
  `id` int NOT NULL,
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateDePub` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_annonceur` int DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallerie` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int DEFAULT NULL,
  `telephone_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_terrain` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `annonce`
--

INSERT INTO `annonce` (`id`, `title`, `dateDePub`, `id_annonceur`, `description`, `tags`, `video_url`, `thumbnail`, `gallerie`, `price`, `telephone_number`, `email`, `facebook`, `instagram`, `twitter`, `id_terrain`) VALUES
(58000, 'big title energy', '2022-05-29 21:37:46', 12345, 'big desc enegy', 'tag1,tag2', 'url', NULL, NULL, 9999, '0612123312', 'test@s.c', 'fblink', 'instalink', 'twlink', 83682),
(22641, 'District Creative Administrator', '2022-05-29 22:04:03', 12345, 'Repellat sed quisquam et nobis doloribus.', 'tag1', NULL, NULL, NULL, 8844, '620', 'your.email+fakedata58178@gmail.com', NULL, NULL, NULL, 89957),
(17911, 'District Operations Planner', '2022-05-29 22:14:13', 12345, 'Odit ut aut et eos.', 'tag1', NULL, NULL, NULL, 44, '159', 'your.email+fakedata53718@gmail.com', NULL, NULL, NULL, 52270),
(25456, 'Global Assurance Developer', '2022-05-30 00:30:18', 12345, 'Nisi corrupti facilis nihil cumque iure inventore quia ut reprehenderit.', 'tag1', 'Doloremque nesciunt iste similique nemo non saepe dolorem.', NULL, NULL, 8872, '350', 'your.email+fakedata44108@gmail.com', NULL, NULL, NULL, 52571),
(38683, 'Global Assurance Developer', '2022-05-30 00:44:31', 12345, 'Nisi corrupti facilis nihil cumque iure inventore quia ut reprehenderit.', 'tag1', 'Doloremque nesciunt iste similique nemo non saepe dolorem.', NULL, NULL, 8872, '350', 'your.email+fakedata44108@gmail.com', NULL, NULL, NULL, 38748),
(28869, 'Global Assurance Developer', '2022-05-30 01:10:38', 12345, 'Nisi corrupti facilis nihil cumque iure inventore quia ut reprehenderit.', 'tag1', 'Doloremque nesciunt iste similique nemo non saepe dolorem.', NULL, NULL, 8872, '350', 'your.email+fakedata44108@gmail.com', NULL, NULL, NULL, 6074),
(71356, 'International Data Producer', '2022-05-30 12:22:37', 12345, 'Dolor et sint qui recusandae pariatur.', 'taggy1', 'https://www.youtube.com/watch?v=Z-RE1QuUWPg', NULL, NULL, 6498498, '0690069911', 'bdromarsd@gmail.com', NULL, NULL, NULL, 4008),
(28382, 'International Data Producer', '2022-05-30 12:25:08', 12345, 'Dolor et sint qui recusandae pariatur.', 'taggy1', 'https://www.youtube.com/watch?v=Z-RE1QuUWPg', NULL, NULL, 6498498, '0690069911', 'bdromarsd@gmail.com', NULL, NULL, NULL, 67508),
(71619, 'International Data Producer', '2022-05-30 13:03:22', 12345, 'Dolor et sint qui recusandae pariatur.', 'taggy1', 'https://www.youtube.com/watch?v=Z-RE1QuUWPg', NULL, NULL, 6498498, '0690069911', 'bdromarsd@gmail.com', NULL, NULL, NULL, 15590),
(20771, 'International Data Producer', '2022-05-30 13:09:36', 12345, 'Dolor et sint qui recusandae pariatur.', 'taggy1', 'https://www.youtube.com/watch?v=Z-RE1QuUWPg', NULL, NULL, 6498498, '0690069911', 'bdromarsd@gmail.com', NULL, NULL, NULL, 27669),
(91203, 'International Data Producer', '2022-05-30 13:12:07', 12345, 'Dolor et sint qui recusandae pariatur.', 'taggy1', 'https://www.youtube.com/watch?v=Z-RE1QuUWPg', NULL, NULL, 6498498, '0690069911', 'bdromarsd@gmail.com', NULL, NULL, NULL, 18807),
(97705, 'International Data Producer', '2022-05-30 16:57:06', 12345, 'Dolor et sint qui recusandae pariatur.', 'taggy1', 'https://www.youtube.com/watch?v=Z-RE1QuUWPg', 'C:\\Users\\DELL\\Desktop\\Etudes Supérieures\\Master\\.S2\\J2EE\\Projet S2\\src\\main\\webapp\\images\\annonces_thumbnails\\', 'C:\\Users\\DELL\\Desktop\\Etudes Supérieures\\Master\\.S2\\J2EE\\Projet S2\\src\\main\\webapp\\images\\annonces_galleries\\,C:\\Users\\DELL\\Desktop\\Etudes Supérieures\\Master\\.S2\\J2EE\\Projet S2\\src\\main\\webapp\\images\\annonces_galleries\\,', 6498498, '0690069911', 'bdromarsd@gmail.com', NULL, NULL, NULL, 35822),
(62182, 'International Data Producer', '2022-05-30 17:01:59', 12345, 'Dolor et sint qui recusandae pariatur.', 'taggy1', 'https://www.youtube.com/watch?v=Z-RE1QuUWPg', 'C:\\Users\\DELL\\Desktop\\Etudes Supérieures\\Master\\.S2\\J2EE\\Projet S2\\src\\main\\webapp\\images\\annonces_thumbnails\\DARIUS RUCKER_ Sundae Conversation with Caleb Pressley 3-11 screenshot.png', 'C:\\Users\\DELL\\Desktop\\Etudes Supérieures\\Master\\.S2\\J2EE\\Projet S2\\src\\main\\webapp\\images\\annonces_galleries\\JIMMY JOHN_ Sundae Conversation with Caleb Pressley 0-33 screenshot.png,C:\\Users\\DELL\\Desktop\\Etudes Supérieures\\Master\\.S2\\J2EE\\Projet S2\\src\\main\\webapp\\images\\annonces_galleries\\JIMMY JOHN_ Sundae Conversation with Caleb Pressley 0-43 screenshot.png,', 6498498, '0690069911', 'bdromarsd@gmail.com', NULL, NULL, NULL, 46027);

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` int NOT NULL,
  `nom` varchar(40) DEFAULT NULL,
  `prenom` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `password` varchar(70) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `adresse` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `nom`, `prenom`, `email`, `password`, `adresse`) VALUES
(6380, 'bdr', 'fouad', 'err@kok.com', 'err1234', 'err'),
(10092, 'hamid', 'loualji', 'hamid@s.com', '$2a$10$/WA/mghGYR2jK7a3.u5dZOhYkuiXgqPc9bie99uGp5ySG3r2rUZwi', 'les orangers ,RABAT'),
(12345, 'bdr', 'omar', 'bdr@s.co', '$2a$10$Hhi.XDeVilZnXBmCxOjY.eQiZdn2wQu9Ezr6HtAIAzrnf4RtcHI0W', 'random address'),
(12926, 'Bartoletti', 'Jose', 'your.email+fakedata23273@gmail.com', '84FDcN8rjDDSWps', '7981 Fritz Run'),
(24245, 'fouad', 'safiri', 'kamal@ho.com', '$2a$10$1CshnjNXDGQZI.1AUTE70.nOULFnjnEaIiZWcphYfw20fpSY5t5dW', 'NR 89,diour jamaa,RABAT'),
(33486, 'fouad', 'safiri', 'fouadsafiri00@gmail.com', '$2a$10$e3f3Rp6DHSN66Ry/BSIKdObJWQl6dP8y1FBPIrkBr4QXq4a8z5y1y', 'NR 89,diour jamaa,RABAT'),
(37435, 'Hoeger', 'Kellie', 'your.email+fakedata88523@gmail.com', 'v6BKQERn4Q3K149', '23658 Davin Trail'),
(43205, 'Hagenes', 'Myrl', 'kok@kok.com', '123456', 'zerktouni'),
(68131, 'Lamkhanter', 'Ouss', 'ouss@sla.ma', '$2a$10$Hhi.XDeVilZnXBmCxOjY.eQiZdn2wQu9Ezr6HtAIAzrnf4RtcHI0W', 'tabrikt, salé'),
(76098, 'Collier', 'Carmen', 'your.email+fakedata11279@gmail.com', 'cNJG04frDtWazo5', '5969 Alanis Well'),
(87994, 'fouad', 'safiri', 'NR 89,diour jamaa,RABAT', '$2a$10$Hhi.XDeVilZnXBmCxOjY.eQiZdn2wQu9Ezr6HtAIAzrnf4RtcHI0W', 'fouadsafiri00@gmail.com'),
(88250, 'Beahan', 'Mckayla', 'your.email+fakedata67017@gmail.com', 'ylrzFssF112wQom', '5524 Tessie Parks');

-- --------------------------------------------------------

--
-- Structure de la table `terrains`
--

CREATE TABLE `terrains` (
  `id` int NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `region` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `terrains`
--

INSERT INTO `terrains` (`id`, `latitude`, `longitude`, `region`, `ville`) VALUES
(1, 33.6183, -7.52498, 'casa-settat', 'casa'),
(4008, 33.618453223279886, -7.482453688535197, 'Casablanca-Settat', 'Casablanca'),
(6074, 33.569004225374336, -7.630396791618049, 'Casablanca-Settat', 'Casablanca'),
(8407, 30.760718908944472, -5.704984397436724, 'Drâa-Tafilalet', 'undefined'),
(11339, 30.760718908944472, -5.704984397436724, 'Drâa-Tafilalet', 'undefined'),
(15590, 33.618453223279886, -7.482453688535197, 'Casablanca-Settat', 'Casablanca'),
(18807, 33.618453223279886, -7.482453688535197, 'Casablanca-Settat', 'Casablanca'),
(27669, 33.618453223279886, -7.482453688535197, 'Casablanca-Settat', 'Casablanca'),
(35822, 33.618453223279886, -7.482453688535197, 'Casablanca-Settat', 'Casablanca'),
(38748, 33.569004225374336, -7.630396791618049, 'Casablanca-Settat', 'Casablanca'),
(46027, 33.618453223279886, -7.482453688535197, 'Casablanca-Settat', 'Casablanca'),
(52270, 33.56311488107194, -7.552819246953091, 'Casablanca-Settat', 'Casablanca'),
(52571, 33.569004225374336, -7.630396791618049, 'Casablanca-Settat', 'Casablanca'),
(67508, 33.618453223279886, -7.482453688535197, 'Casablanca-Settat', 'Casablanca'),
(69488, 33.618453223279886, -7.482453688535197, 'Casablanca-Settat', 'Casablanca'),
(81180, 33.54139466898275, 33.54139466898275, 'Prefecture of Casablanca', 'arrondissement d\'Aîn-Chock'),
(83682, 33.57449958860068, 33.57449958860068, 'regiona', 'villa'),
(89957, 33.575214699000504, -7.595605586541271, 'Casablanca-Settat', 'Casablanca');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `annonce`
--
ALTER TABLE `annonce`
  ADD KEY `fk_terrain_annonce` (`id_terrain`),
  ADD KEY `fk_client_annonce` (`id_annonceur`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_client` (`email`);

--
-- Index pour la table `terrains`
--
ALTER TABLE `terrains`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `terrains`
--
ALTER TABLE `terrains`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89958;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `annonce`
--
ALTER TABLE `annonce`
  ADD CONSTRAINT `annonce_ibfk_1` FOREIGN KEY (`id_terrain`) REFERENCES `terrains` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `annonce_ibfk_2` FOREIGN KEY (`id_annonceur`) REFERENCES `clients` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
