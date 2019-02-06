-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mer 06 Février 2019 à 22:23
-- Version du serveur :  5.7.25-0ubuntu0.18.04.2
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `HP_Fan`
--

-- --------------------------------------------------------

--
-- Structure de la table `Les films`
--

CREATE TABLE `Les films` (
  `ID du film` int(11) NOT NULL,
  `Nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Les films`
--

INSERT INTO `Les films` (`ID du film`, `Nom`) VALUES
(3, 'Brice de Nice'),
(4, '007'),
(5, 'Fast and Furious');

-- --------------------------------------------------------

--
-- Structure de la table `Les maisons`
--

CREATE TABLE `Les maisons` (
  `ID de la maison` int(11) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Fondateur` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Les maisons`
--

INSERT INTO `Les maisons` (`ID de la maison`, `Nom`, `Fondateur`) VALUES
(3, 'Serpentard', 'Voldemort surement'),
(4, 'Griffondor', 'Dumbledore surement'),
(5, 'Prison', 'L\'état lol\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `Les sorts`
--

CREATE TABLE `Les sorts` (
  `Nom` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Interdiction` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Les sorts`
--

INSERT INTO `Les sorts` (`Nom`, `Description`, `Interdiction`) VALUES
('Blabla Leviossa', 'Permet de mute sur discord', 'Non'),
('La Gifle', 'Permet de remettre les idées en place, parfois..', 'Oui'),
('Blabla Leviossa', 'Permet de mute sur discord', 'Non'),
('La Gifle', 'Permet de remettre les idées en place, parfois..', 'Oui');

-- --------------------------------------------------------

--
-- Structure de la table `Personnages`
--

CREATE TABLE `Personnages` (
  `ID` int(11) NOT NULL,
  `Prénom` varchar(255) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Age` varchar(255) NOT NULL,
  `1er apparition dans un film` varchar(255) NOT NULL,
  `Maison` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Personnages`
--

INSERT INTO `Personnages` (`ID`, `Prénom`, `Nom`, `Age`, `1er apparition dans un film`, `Maison`) VALUES
(1, 'Harry', 'Potter', '19', 'Je sais pas', 'Griffondor'),
(11, 'Drago', 'Malefoy', '19', 'je sais pas', 'Serpentard'),
(14, 'Sirius', 'Black', '32', 'je sais pas 2', 'Prison');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Les films`
--
ALTER TABLE `Les films`
  ADD PRIMARY KEY (`ID du film`);

--
-- Index pour la table `Les maisons`
--
ALTER TABLE `Les maisons`
  ADD UNIQUE KEY `ID de la maison` (`ID de la maison`);

--
-- Index pour la table `Personnages`
--
ALTER TABLE `Personnages`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Les films`
--
ALTER TABLE `Les films`
  MODIFY `ID du film` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `Les maisons`
--
ALTER TABLE `Les maisons`
  MODIFY `ID de la maison` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `Personnages`
--
ALTER TABLE `Personnages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
