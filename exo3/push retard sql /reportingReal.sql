-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Ven 29 Avril 2016 à 16:21
-- Version du serveur: 5.5.47-0ubuntu0.14.04.1
-- Version de PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `reporting`
--

-- --------------------------------------------------------

--
-- Structure de la table `abonnées`
--

CREATE TABLE IF NOT EXISTS `abonnées` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `magazine` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `abonnées`
--

INSERT INTO `abonnées` (`id`, `name`, `gender`, `birthdate`, `magazine`) VALUES
(1, 'Alice', 'Femme', '1981-08-27', 'Géo,Télé Loisir'),
(2, 'Bob', 'Homme', '1979-01-19', 'Géo'),
(3, 'Claire', 'Femme', '1971-03-20', 'Géo,Ca m''interesse,Gala,Télé Loisir'),
(4, 'David', 'Homme', '1972-07-22', 'Ca m''interesse'),
(5, 'Eve', 'Femme', '1959-12-11', 'Télé Loisir'),
(6, 'Felix', 'Homme', '1999-07-16', 'Gala,Télé Loisir,Néon'),
(7, 'Geraldine', 'Femme', '2000-07-09', 'Néon');

-- --------------------------------------------------------

--
-- Structure de la table `informations`
--

CREATE TABLE IF NOT EXISTS `informations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `date` int(11) NOT NULL,
  `parution` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `abonnées` int(11) NOT NULL,
  `averageAge` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `informations`
--

INSERT INTO `informations` (`id`, `titre`, `date`, `parution`, `type`, `abonnées`, `averageAge`) VALUES
(1, 'Géo', 1979, 'mensuel', 'Découverte', 3, 39),
(2, 'Ca m''interesse', 1981, 'mensuel', 'Découverte', 2, 45),
(3, 'Télé Loisir', 1986, 'hebdomadaire', 'Télévision', 4, 39),
(4, 'Néon', 2012, 'bimestriel', 'Actualité', 2, 17),
(5, 'Gala', 1993, 'hebdomadaire', 'Actualité', 2, 31);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
