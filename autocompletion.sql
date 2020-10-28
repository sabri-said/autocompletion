-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 28 oct. 2020 à 11:57
-- Version du serveur :  8.0.22-0ubuntu0.20.10.2
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `autocompletion`
--
CREATE DATABASE IF NOT EXISTS `autocompletion` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `autocompletion`;

-- --------------------------------------------------------

--
-- Structure de la table `data`
--

CREATE TABLE `data` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `data`
--

INSERT INTO `data` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Benoit S.A.S.', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(2, 'Maillot', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(3, 'Didier', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(4, 'Poirier Peltier SARL', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(5, 'Paul Gay S.A.', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(6, 'Delahaye S.A.S.', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(7, 'Paris SARL', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(8, 'Nicolas S.A.', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(9, 'Dupuis S.A.S.', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(10, 'Blondel Guillon SA', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(11, 'Bernard S.A.R.L.', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(12, 'Dumas Lenoir et Fils', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(13, 'Fleury', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(14, 'Regnier', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(15, 'Joly', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(16, 'Bouvier', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(17, 'Dupuis', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(18, 'Leconte', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(19, 'Renard', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(20, 'Meyer', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(21, 'Maury Da Costa S.A.R.L.', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(22, 'Lebrun SAS', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(23, 'Maillard Traore SA', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(24, 'Briand Gros S.A.S.', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(25, 'Lopes', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(26, 'Clerc SARL', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(27, 'Diallo Gauthier SAS', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(28, 'Bigot', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(29, 'Bertrand Mahe SAS', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(30, 'Hebert S.A.', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(31, 'Baudry Delahaye S.A.R.L.', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(32, 'Imbert SAS', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(33, 'Leclercq', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(34, 'Gillet', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(35, 'Blanchard', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(36, 'Faivre', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(37, 'Bailly', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(38, 'Guillet', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(39, 'Dijoux', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(40, 'Henry', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(41, 'Joubert', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(42, 'Carpentier', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(43, 'Guyon Bailly SA', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(44, 'De Sousa Turpin SA', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(45, 'Leconte S.A.', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(46, 'Nicolas Descamps et Fils', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(47, 'Da Costa Hoarau SARL', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(48, 'Lamy', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(49, 'Wagner SA', '2020-10-21 12:58:07', '2020-10-21 12:58:07'),
(50, 'Fontaine SARL', '2020-10-21 12:58:07', '2020-10-21 12:58:07');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `data`
--
ALTER TABLE `data`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
