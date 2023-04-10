-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 10 avr. 2023 à 12:50
-- Version du serveur : 5.7.36
-- Version de PHP : 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `soutombd`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `Idclient` int(11) NOT NULL AUTO_INCREMENT,
  `Nomclient` varchar(40) NOT NULL,
  `Numero Fiscal` varchar(30) NOT NULL,
  `Adresse` varchar(40) NOT NULL,
  `Telephone` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  PRIMARY KEY (`Idclient`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

DROP TABLE IF EXISTS `facture`;
CREATE TABLE IF NOT EXISTS `facture` (
  `Idfacture` int(11) NOT NULL AUTO_INCREMENT,
  `Numref` varchar(30) NOT NULL,
  `BCN` varchar(30) NOT NULL,
  `TVA` int(2) NOT NULL,
  `Datefacture` date NOT NULL,
  `Type` varchar(30) NOT NULL,
  PRIMARY KEY (`Idfacture`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `idrole` int(11) NOT NULL AUTO_INCREMENT,
  `nomrole` varchar(15) NOT NULL,
  PRIMARY KEY (`idrole`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `societe`
--

DROP TABLE IF EXISTS `societe`;
CREATE TABLE IF NOT EXISTS `societe` (
  `idsociete` int(11) NOT NULL AUTO_INCREMENT,
  `numfiscal` varchar(50) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `RCCM` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `Tel` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  PRIMARY KEY (`idsociete`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `idtype` int(11) NOT NULL AUTO_INCREMENT,
  `nomtype` varchar(30) NOT NULL,
  PRIMARY KEY (`idtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `idutilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `Nomuti` varchar(30) NOT NULL,
  `Mdp` varchar(10) NOT NULL,
  `statut` varchar(15) NOT NULL,
  `role` varchar(20) NOT NULL,
  `datecreation` date NOT NULL,
  `datelast` date NOT NULL,
  PRIMARY KEY (`idutilisateur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

DROP TABLE IF EXISTS `voiture`;
CREATE TABLE IF NOT EXISTS `voiture` (
  `idvoiture` int(11) NOT NULL AUTO_INCREMENT,
  `numchassi` varchar(30) NOT NULL,
  `km` varchar(10) NOT NULL,
  `marque` varchar(20) NOT NULL,
  `imatriculation` varchar(10) NOT NULL,
  `nomclient` varchar(30) NOT NULL,
  PRIMARY KEY (`idvoiture`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
