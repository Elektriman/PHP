-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 19 Novembre 2018 à 12:01
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.19

DROP TABLE IF EXISTS ville ;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  voyage
--

-- --------------------------------------------------------

--
-- Structure de la table ville
--

CREATE TABLE ville (
  id serial NOT NULL,
  nom varchar(256) NOT NULL,
  pop integer NOT NULL,
  lat integer NOT NULL,
  long integer NOT NULL,
  pays_id integer NOT NULL
);

--
-- Contenu de la table ville
--

INSERT INTO ville (id, nom, pop, lat, long, pays_id) VALUES
(1, 'Negombo', 121701, 7, 80, 1),
(2, 'Anuradhapura', 50595, 8, 80, 1),
(3, 'Trincomalee', 99135, 9, 81, 1),
(4, 'Bangkok', 9280567, 14, 101, 2);

--
-- Index pour les tables exportées
--

--
-- Index pour la table ville
--
ALTER TABLE ville
  ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table ville
--

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
