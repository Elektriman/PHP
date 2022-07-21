-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 21 oct. 2019 à 09:08
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cuisine`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nom`) VALUES
(1, 'entrée'),
(2, 'plat'),
(3, 'dessert'),
(4, 'boisson');

-- --------------------------------------------------------

--
-- Structure de la table `recette`
--

DROP TABLE IF EXISTS `recette`;
CREATE TABLE IF NOT EXISTS `recette` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `recette` mediumtext NOT NULL,
  `temps` int(11) NOT NULL,
  `personne` int(11) NOT NULL,
  `difficulte` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `categorie` int(11) NOT NULL,
  PRIMARY KEY (`id`),
    CONSTRAINT fk_categorie_recette
	FOREIGN KEY (categorie)
	REFERENCES categorie(id)
) ENGINE=InnoDB;

--
-- Déchargement des données de la table `recette`
--

INSERT INTO `recette` (`id`, `nom`, `recette`, `temps`, `personne`, `difficulte`, `image`, `categorie`) VALUES
(1, 'Tacos mexicains', '\r\n<h3>Etape 1</h3\r\n<p>A la poêle, faire dorer l\'oignon émincé dans un peu d\'huile d\'olive.</p>\r\n<h3>Etape 2</h3>\r\n<p>Rajouter la viande, assaisonner et laisser cuire 5 min.</p>\r\n<h3>Etape 3</h3>\r\n<p>Laver les feuilles de laitue.</p>\r\n<h3>Etape 4</h3>\r\n<p>Couper les tomates et le poivron en petits dés.</p>\r\n<h3>Etape 5</h3>\r\n<p>Incorporer le tout à la poêlée avec le coulis de tomate, et poursuivre la cuisson pendant 5 min.</p>\r\n<h3>Etape 6</h3>\r\n<p>Egoutter les haricots rouges et les ajouter 2 min avant la fin de cuisson.</p>\r\n<h3>Etape 7</h3\r\n<p>Hors du feu, ajuster l\'assaisonnement et saupoudrer généreusement de cumin; on peut aussi rajouter quelques gouttes de Tabasco.</p>\r\n<h3>Etape 8</h3>\r\n<p>Garnir les tortillas de préparation et les refermer en les roulant comme des crêpes. Disposer 1 feuille de laitue sur chaque tacos avant de servir.</h3>\r\n', 55, 4, 1, 'img/recette/tacos.jpg', 1),
(2, 'velouté de potiron et carottes', '<h3>Etape 1</h3>\r\n<p>Éplucher et couper en dés le potiron, les pommes de terre, les carottes en rondelles.</p>\r\n<h3>Etape 2</h3>\r\n<p>Emincer l\'ail et l\'oignon.</p>\r\n<h3>Etape 3</h3>\r\n<p>Faire suer l\'oignon dans l\'huile d\'olive.</p>\r\n<h3>Etape 4</h3>\r\n<p>Ajouter tous les légumes et l\'ail puis verser le bouillon et le lait.</p>\r\n<h3>Etape 5</h3>\r\n<p>Saler, poivrer, \"muscader\" et laisser cuire environ une trentaine de minutes.</p>\r\n<h3>Etape 6</h3>\r\n<p>Mixer le tout (ajouter éventuellement la crème) et rectifier l\'assaisonnement si nécessaire.</p>\r\n<h3>Etape 7</h3>\r\n<p>Bon appétit !</p>\r\n', 60, 4, 1, 'img/recette/veloute-potiron.jpg', 1),
(3, 'Lasagnes à la bolognaise', '<h3>Etape 1</h3>\r\n<p>Faire revenir gousses hachées d\'ail et les oignons émincés dans un peu d\'huile d\'olive.</p>\r\n<h3>Etape 2</h3>\r\n<p>Ajouter la carotte et la branche de céleri hachée puis la viande et faire revenir le tout.</p>\r\n<h3>Etape 3</h3>\r\n<p>Au bout de quelques minutes, ajouter le vin rouge. Laisser cuire jusqu\'à évaporation.</p>\r\n<h3>Etape 4</h3>\r\n<p>Ajouter la purée de tomates, l\'eau et les herbes.</p>\r\n<p>Saler, poivrer, puis laisser mijoter à feu doux 45 minutes.</p>\r\n<h3>Etape 5</h3>\r\n<p>Préparer la béchamel : faire fondre le beurre.</p>\r\n<h3>Etape 6</h3>\r\n<p>Hors du feu, ajouter la farine d\'un coup.</p>\r\n<h3>Etape 7</h3>\r\n<p>Remettre sur le feu et remuer avec un fouet jusqu\'à l\'obtention d\'un mélange bien lisse.</p>\r\n<h3>Etape 8</h3>\r\n<p>Ajouter le lait peu à peu.</p>\r\n<h3>Etape 9</h3>\r\n<p>Remuer sans cesse, jusqu\'à ce que le mélange s\'épaississe.</p>\r\n<h3>Etape 10</h3>\r\n<p>Ensuite, parfumer avec la muscade, saler, poivrer. Laisser cuire environ 5 minutes, à feu très doux, en remuant. Réserver.</p>\r\n<h3>Etape 11</h3>\r\n<p>Préchauffer le four à 200°C (thermostat 6-7).</p>\r\n<p>Huiler le plat à lasagnes. Poser une fine couche de béchamel puis des feuilles de lasagnes, de la bolognaise, de la béchamel et du parmesan.</p>\r\n<p>Répéter l\'opération 3 fois de suite.</p>\r\n<h3>Etape 12</h3>\r\n<p>Sur la dernière couche de lasagnes, ne mettre que de la béchamel et recouvrir de fromage râpé. Parsemer quelques noisettes de beurre.</p>\r\n<h3>Etape 13</h3>\r\n<p>Enfourner pour environ 25 minutes de cuisson.</p>\r\n<h3>Etape 14</h3>\r\n<p>Déguster</p>\r\n', 125, 8, 3, 'img/recette/lasagne.jpg', 2),
(4, 'magret de canard au miel', '<h3>Etape 1</h3>\r\n<p>Inciser les magrets côté peau en quadrillage sans couper la viande.</p>\r\n<h3>Etape 2</h3>\r\n<p>Cuire les magrets à feu vif dans une cocotte en fonte, en commençant par le coté peau.</p>\r\n<h3>Etape 3</h3>\r\n<p>Le temps de cuisson dépend du fait qu\'on aime la viande plus ou moins saignante. Compter environ 5 min de chaque côté. Retirer régulièrement la graisse en cours de cuisson.</p>\r\n<h3>Etape 4</h3>\r\n<p>Réserver les magrets au chaud (au four, couverts par une feuille d\'aluminium).</p>\r\n<h3>Etape 5</h3>\r\n<p>Déglacer la cocotte avec le miel et le vinaigre balsamique. Ne pas faire bouillir, la préparation tournerait au caramel. Bien poivrer.</p>\r\n<h3>Etape 6</h3>\r\n<p>Mettre en saucière accompagnant le magret coupé en tranches.</p>\r\n<h3>Etape 7</h3>\r\n<p>Comme accompagnement, je suggère des petits navets glacés (cuits à l\'eau puis passés au beurre avec un peu de sucre).</p>\r\n', 20, 2, 2, 'img/recette/magret-canard.jpg', 2),
(5, 'mousse au chocolat facile', '<h3>Etape 1</h3>\r\n<p>Séparer les blancs des jaunes d\'oeufs.</p>\r\n<h3>Etape 2</h3>\r\n<p>Faire ramollir le chocolat dans une casserole au bain-marie.</p>\r\n<h3>Etape 3</h3>\r\n<p>Hors du feu, incorporer les jaunes et le sucre.</p>\r\n<h3>Etape 4</h3>\r\n<p>Battre les blancs en neige ferme.</p>\r\n<h3>Etape 5</h3>\r\n<p>Ajouter délicatement les blancs au mélange à l\'aide d\'une spatule.</p>\r\n<h3>Etape 6</h3>\r\n<p>Verser dans une terrine ou des verrines.</p>\r\n<h3>Etape 7</h3>\r\n<p>Mettre au frais 2h minimum.</p>\r\n<h3>Etape 8</h3>\r\n<p>Décorer de cacao ou de chocolat râpé</p>\r\n<h3>Etape 9</h3>\r\n<p>Déguster</p>\r\n', 15, 4, 1, 'img/recette/mousse-chocolat.jpg', 3),
(6, 'Falafel (croquettes de pois chiches)', '<h3>Etape 1</h3>\r\n<p>faites tremper les pois chiches et les fèves dans l\'eau 12 h, les égoutter et les cuire 45 mn à l\'auto cuiseur.</p>\r\n<h3>Etape 2</h3>\r\n<p>peler oignon et ail, les hacher ainsi que le persil.</p>\r\n<h3>Etape 3</h3>\r\n<p>Passer les fèves et les pois chiches au mixer (ou robot).</p>\r\n<h3>Etape 4</h3>\r\n<p>Mélanger avec le persil, l\'oignon, l\'ail, la farine, les épices, le sel.</p>\r\n<h3>Etape 5</h3>\r\n<p>Pétrissez le tout avec vos mains en ajoutant un peu d\'eau si nécessaire.</p>\r\n<h3>Etape 6</h3>\r\n<p>Rassemblez la pâte et laisser reposer au réfrigérateur pendant minimum 30 mn.</p>\r\n<h3>Etape 7</h3>\r\n<p>façonner une trentaine de boulettes de la grosseur d\'une pièce de 2 euros.</p>\r\n<h3>Etape 8</h3>\r\n<p>Les faire frire 2/3 mn puis les égoutter sur dupapier absorbant.</p>\r\n<h3>Etape 9</h3>\r\n<p>Servir chaud ou froid avec des petites sauces tomates aux herbes, ou sauces yaourts.</p>\r\n', 80, 4, 3, 'img/recette/falafel.jpg', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
