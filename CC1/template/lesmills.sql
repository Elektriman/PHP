-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 18 Octobre 2018 à 12:51
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `lesmills`
--

-- --------------------------------------------------------


--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `id_personne` int(11)  PRIMARY KEY NOT NULL AUTO_INCREMENT ,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `nbSeance` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB;

--
-- Contenu de la table `personne`
--

INSERT INTO `personne` (`id_personne`, `nom`, `prenom`, `nbSeance`) VALUES
(1, 'dupont', 'georges', 6),
(2, 'durant', 'amanda', 9),
(3, 'lalanne', 'jean', 10);

-- --------------------------------------------------------

--
-- Structure de la table `typecours`
--

CREATE TABLE `typecours` (
  `id_typecours` int(11)  PRIMARY KEY NOT NULL AUTO_INCREMENT ,
  `nom` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB;

--
-- Contenu de la table `typecours`
--

INSERT INTO `typecours` (`id_typecours`, `nom`, `photo`, `description`) VALUES
(1, 'bodypump', 'img/bodypump.jpg', 'BODYPUMP est pour toutes les personnes qui souhaitent s’affiner, se tonifier et se remettre en forme – rapidement.'),
(2, 'bodycombat', 'img/bodycombat.jpg', 'Le cours à haute intensité inspiré des arts martiaux, le tout sans contact. Un combat vers la remise en forme'),
(3, 'rpm', 'img/rpm.jpg', 'Le cours de vélo indoor, au rythme d’une musique motivante. Brûlez des calories et augmentez vos performances rapidement.'),
(4, 'cardio', 'img/cardio.jpg', 'Le cours à haute intensité de 30 minutes qui améliore la forme cardio, augmente la vitesse et maximise la dépense énergétique.');

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `id_cours` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT ,
  `heure` time NOT NULL,
  `date` date NOT NULL,
  `id_typecours` int(11) NOT NULL,
  CONSTRAINT fk_cours_tycours
	FOREIGN KEY (id_typecours)
	REFERENCES typecours(id_typecours)


) ENGINE=InnoDB;

--
-- Contenu de la table `cours`
--

INSERT INTO `cours` (`id_cours`, `heure`, `date`, `id_typecours`) VALUES
(1, '09:00:00', '2018-10-16', 1),
(2, '09:00:00', '2018-10-23', 2),
(3, '10:00:00', '2018-10-22', 3),
(4, '18:00:00', '2018-10-22', 2),
(5, '19:00:00', '2018-10-22', 3),
(6, '16:00:00', '2018-10-22', 4),
(7, '11:00:00', '2018-10-23', 1),
(8, '17:00:00', '2018-10-23', 4),
(9, '18:00:00', '2018-10-23', 3),
(10, '19:00:00', '2018-10-23', 2),
(11, '10:00:00', '2018-10-24', 1),
(12, '11:00:00', '2018-10-23', 3),
(13, '17:00:00', '2018-10-23', 4),
(14, '18:00:00', '2018-10-23', 4),
(15, '09:00:00', '2018-10-25', 2),
(16, '11:00:00', '2018-10-25', 3),
(17, '18:00:00', '2018-10-25', 1),
(18, '19:00:00', '2018-10-25', 3);

-- --------------------------------------------------------

--
-- Structure de la table `participe`
--

CREATE TABLE `participe` (
  `id` int(11)  PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `id_cours` int(11) NOT NULL,
  `id_personne` int(11) NOT NULL,
	  CONSTRAINT fk_cours_particpe
	FOREIGN KEY (id_cours)
	REFERENCES cours(id_cours),
	  CONSTRAINT fk_personne_particpe
	FOREIGN KEY (id_personne)
	REFERENCES personne(id_personne)

) ENGINE=InnoDB;

--
-- Contenu de la table `participe`
--

INSERT INTO `participe` (`id`, `id_cours`, `id_personne`) VALUES
(1, 3, 1),
(2, 11, 2),
(3, 2, 1);

-- --------------------------------------------------------




