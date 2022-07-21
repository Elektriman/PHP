-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 24 Octobre 2017 à 08:27
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `coursive`
--

-- --------------------------------------------------------

--
-- Structure de la table `typespectacle`
--

CREATE TABLE `typespectacle` (
  `idSpec` int(11) NOT NULL PRIMARY KEY auto_increment,
  `type` varchar(128) NOT NULL
) ENGINE=InnoDB;

--
-- Contenu de la table `typespectacle`
--

INSERT INTO `typespectacle` (`idSpec`, `type`) VALUES
(null, 'Danse'),
(null, 'Théâtre'),
(null, 'Musique'),
(null, 'Art de la piste');

-- --------------------------------------------------------

--
-- Structure de la table `spectacle`
--

CREATE TABLE `spectacle` (
  `id` int(11) NOT NULL PRIMARY KEY auto_increment,
  `nom` varchar(256) NOT NULL,
  `compagnie` varchar(256) NOT NULL,
  `type` int(11) NOT NULL,
  `date` date NOT NULL,
  `plusieursDate` tinyint(1) NOT NULL,
  `description` text NOT NULL,
  `photos` varchar(256) NOT NULL,
  `nomDossierPhotos` varchar(256) NOT NULL,
     CONSTRAINT fk_type_spectacle
	FOREIGN KEY (type)
	REFERENCES typespectacle(idSpec)
) ENGINE=InnoDB;

--
-- Contenu de la table `spectacle`
--

INSERT INTO `spectacle` (`id`, `nom`, `compagnie`, `type`, `date`, `plusieursDate`, `description`, `photos`, `nomDossierPhotos`) VALUES
(1, 'BOXE BOXE', 'MOURAD MERZOUKI', 1, '2015-11-10', 0, '« La boxe, c’est déjà de la danse », affirme haut et fort Mourad Merzouki, chorégraphe pionnier du hip-hop en France et actuel directeur du Centre Chorégraphique National de Créteil.\r\n\r\nLe ring est une scène, le gong un lever de rideau, l’arbitre pourrait être un critique, l’excitation du combat le trac de l’artiste et l’effort est tout aussi violent. Le danseur comme l’athlète doivent, dans la sueur, dompter leurs corps pour offrir le meilleur. Une bataille avec soi-même. C’est sur ce postulat de départ, bousculer deux arts parallèles, que naît l’idée de Boxe Boxe.\r\n\r\nL’autre particularité vivifiante de cet atypique ballet est la présence sur scène d’un quatuor à cordes, réglant les combats sur les accords de Schubert, Ravel ou Mendelssohn et tirant les images vers un romantisme digne des premiers films de Scorsese ou Chaplin. Une pellicule en noir et blanc percée de touches écarlates. Boxe Boxe possède bien ce sens aigu du burlesque, cher à Mourad Merzouki, cette touche d’humour poétique magnifiée par huit danseurs virtuoses et félins. Adepte des projets décalés, c’est le Quatuor Varèse qui officie aux cordes.\r\n\r\nBoxe Boxe est gonflé, d’une audace époustouflante tant par le sens du propos que les trouvailles esthétiques, résumant bien toute la liberté de la Compagnie Käfig, loin de s’enfermer dans de quelconques codes imposés.\r\n\r\nProuesses physiques, réjouissante dérision, beauté formelle et mélodique, avec Boxe Boxe, Mourad Merzouki renvoie joyeusement le hip-hop dans les cordes et met le public KO, debout.', 'boxeboxe.jpg', 'boxeboxe'),
(2, 'ANCIEN MALADE DES HÔPITAUX DE PARIS / DANIEL PENNAC', 'BENJAMIN GUILLARD', 2, '2015-10-05', 1, 'C’est un conte médical, une fable curative, une farce thérapeutique. Mieux, un road-movie hospitalier. Daniel Pennac l’a, quant à lui, baptisé «monologue gesticulatoire». Ancien malade des hôpitaux de Paris est une pantomime verbale qui va comme un gant– de chirurgien!– à l’excellent Olivier Saladin.\r\n\r\nLe docteur Galvan, interne fraîchement diplômé, est en poste aux urgences de nuit. Alors qu’il rêve, entre un accidenté et un suicidaire, à l’intitulé de sa future carte de visite, un mystérieux malade va rassembler à lui seul une multitude de symptômes. Des symptômes qui disparaissent aussi vite qu’ils sont arrivés…\r\n\r\nA la saveur délicieuse de la plume de Pennac, unique, extrêmement drôle et imaginative, à sa précision chirurgicale s’ajoute l’exquise performance d’Olivier Saladin et l’astucieuse mise en espace de Benjamin Guillard (qui a mis en scène François Morel dans La fin du monde est pour dimanche).\r\n\r\nL’inoubliable Deschiens est ici survolté, incarnant chaque personnage dans une bourrasque d’énergie et un sens aigu du burlesque, pour croquer au scalpel une galerie à la Daumier sur son physique protéiforme. Un seul geste et hop, il passe de l’interne ébahi au ponte de cardiologie, de l’infirmière blasée au spécialiste bourru…\r\n\r\nAncien malade des hôpitaux de Paris est une perle d’humour tout autant qu’un grand moment de théâtre. A prescrire d’urgence.', 'ancien_malade.jpg', 'ancien_malade'),
(3, 'LILIOM (OU LA VIE ET LA MORT D’UN VAURIEN) ', 'FERENC MOLNAR / JEAN BELLORINI', 2, '2015-10-12', 1, 'C\'est l\'évènement théâtral de cette rentrée, d\'une puissance esthétique bouleversante et servi par une mise en scène implacable. Dans une fête foraine où se percutent des auto-tamponneuses va se jouer la vie de deux êtres que tout oppose, sauf l’amour. Voyou à gueule d’ange, petite frappe de la banlieue de Budapest, Liliom est un bonimenteur à l’âme tourmentée, toxique, rebelle à la morale, d’où qu’elle vienne. Il aime Julie et Julie l’aime. Mais il la bat quand la rage le submerge. Alors qu’un enfant s’annonce, Liliom lui promet l’Amérique et s’embarque dans un énième mauvais coup, un braquage qui va mal tourner. L’amour parviendra-t-il à sauver celui qui ne mérite pas forcément de l’être?\r\n\r\nEcrit en 1909 par l’auteur hongrois Ferenc Molnár, Liliom est une fable désenchantée, un conte musical pailleté de violence, de tendresse, de magie aussi. L’ingénieux metteur en scène Jean Bellorini, nouveau directeur du Théâtre Gérard Philipe de Saint-Denis, installe sur la scène une vraie piste d’auto-tamponneuses. Chocs, grésil électrique, phares éblouissants, calandres multicolores… l’effet est saisissant ! Et le reste de la scénographie brille aussi par son inventivité. Dans les rôles des amants errants, deux jeunes comédiens, justes et intenses: Clara Mayer et Julien Bouanich –un des prêtres de la série de très bonne facture Ainsi soient-ils, sur ARTE.\r\n\r\nJusqu’au bout, Jean Bellorini promène le spectateur sur une montagne russe de sentiments contraires et il réalise un coup de maître. Liliom est une pièce ultra rythmée et pleine d’audace, saillante, âpre, merveilleuse et terrible. Un coeur transpercé, gravé au cran d’arrêt sur le capot d’une Mercedes volée.\r\n\r\nUn mélodrame forain dont on ressort changé.\r\n', 'liliom.jpg', 'liliom'),
(4, 'LE JEU DE L’AMOUR ET DU HASARD / MARIVAUX ', 'LAURENT LAFFARGUE', 2, '2015-11-03', 1, 'Entre Laurent Laffargue et La Coursive, c’est une belle histoire inscrite dans le temps. Chacune de ses mises en scène y a été présentée, certaines y furent créées, à l’image d’Après la répétition avec Didier Bezace, de Casteljaloux ou de Molly Bloom, irradiée par Céline Sallette.\r\n\r\nLaurent Laffargue, c’est une certaine vision du théâtre. Un art vivant, sincère, s’appuyant sur les codes d’aujourd’hui pour explorer inlassablement la psyché humaine, sur une troupe, libre et soudée, sur une scénographie toujours astucieuse, souvent impressionnante. Un art où s’applique à merveille la diatribe marivaldienne, «la seule vérité est celle du coeur».\r\n\r\nEn prenant à bras le corps la plus célèbre pièce de Marivaux, Laurent Laffargue s’amuse du trouble jeu qui affole les coeurs, les corps et les esprits. Sous une apparente légèreté, cette comédie questionne les préjugés sociaux en inversant les rapports maîtres-valets, sans pour autant se réduire à une cocasse mascarade. Pour se jouer de l’amour et du hasard, Laurent Laffargue s’est appuyé, entre autres, sur une distribution de jeunes acteurs épatants, fraîchement sortis du Conservatoire. Ces interprètes, dans l’âge des rôles, font merveille dans la partition millimétrée écrite par Marivaux. Et le père est Georges Bigot, délicieusement survolté.\r\n\r\nAutour d’une scénographie originale, un double plateau tournant, miroir des ambivalences et du tourbillon amoureux, chavirent les premières bourrasques du désir, les faux-semblants, l’ordre social… Doit-on suivre l’amour ou garder son rang?\r\n\r\nSous l’habile regard de Laurent Laffargue, le coeur ardent de Marivaux palpite à un rythme effréné, n’ayant, décidément, toujours pas pris une ride.', 'le_jeu_de_lamour.jpg', 'le_jeu_de_lamour'),
(5, 'RECITAL', 'PHILIPPE BIANCONI ', 3, '2015-10-16', 0, 'Philippe Bianconi fait partie du cercle des poètes. Pianiste subtil ayant fait le tour de la planète, tant en récital qu’avec les plus grands orchestres, Bianconi a fait de son instrument le réceptacle de l’âme des compositeurs. Célébré pour son intégrale des Préludes de Debussy en 2012 – disque nommé aux Victoires de la musique classique, Prix de l’Académie Charles Cros et Diapason d’Or –, encensé l’année passée pour son enregistrement consacré à Chopin, Philippe Bianconi a réveillé public et critique.\r\n\r\nIl possède à la fois la délicatesse sensuelle du calligraphe et la force instinctive du peintre, éclaboussant les chefs-d’oeuvre maintes fois parcourus de pigments inédits, les éclairant d’une nouvelle lumière. Un poète, définitivement, à l’impressionnant parcours.\r\n\r\nRévélé au début des années 80 par son succès au concours Van Cliburn, Philippe Bianconi poursuit son extraordinaire chemin musical sans esbroufe. Formé au Conservatoire de Nice, puis à Paris sous l’égide de Gaby Casadesus, il approfondit ensuite sa connaissance des répertoires allemand et russe à Freiburg, auprès de Vitalij Margulis. En 1987, soutenu par l’immense pianiste Hermann Prey, il joue son premier récital au Carnegie Hall de New York et va, dès lors, se produire dans les salles les plus réputées, tant en Amérique (Orchestra Hall de Chicago, Kennedy Center à Washington, San Francisco...) qu’en Europe (Wigmore Hall à Londres, Philharmonie de Berlin, Konzerthaus de Vienne, Milan, Madrid, Hamburg, Paris…), ainsi qu’au Japon et en Australie.\r\n\r\nIl vient d’être nommé directeur du prestigieux Conservatoire Américain de Fontainebleau, qui a vu passer depuis 1921 nombre de génies comme Maurice Ravel, Henri Dutilleux, Elliott Carter ou Philip Glass…\r\n\r\nPhilippe Bianconi, la grâce au bout des doigts.', 'biancomi.jpg', 'biancomi'),
(6, 'MOCKROOT', 'TIGRAN', 3, '2015-11-06', 0, 'Tignasse de jais et Ray-Ban noires, gueule ténébreuse et sourire renversant, Tigran Hamasyan n’est pas un pianiste ordinaire. Découvert par le grand public alors qu’il s’imposait au prestigieux concours Thelonious Monk, cuvée 2006, la planète jazz est subjuguée par les doigts de velours du prodige arménien depuis quelques années déjà.\r\n\r\nA seulement onze ans, il parvient ainsi à se produire lors du premier Festival de jazz d’Erevan, capitale arménienne, et lors de l’édition suivante, en 2000, ce sont les pointures Chick Corea et Avishai Cohen qui viennent le féliciter. Rien que ça. Jusqu’au fameux concours Thelonious Monk, le surdoué enchaîne les distinctions.\r\n\r\nAussi à l’aise en solo qu’en trio –dont il commence sérieusement à révolutionner le genre– brillant en quintet – comme à La Sirène, en février 2014 –, Tigran navigue sans complexe entre les styles. Il passe avec une fluidité surnaturelle d’un Moyen- Orient fantasmé à une indolence jazzy subtilement pétrie de références rock ou de gimmicks électro, sans pour autant oublier ses racines, les gammes de la musique arménienne. Un langage qu’il distille avec discrétion, sans pathos ni volonté folklorique.\r\n\r\nA vingt-huit printemps et sept albums, Tigran a d’ores et déjà créé une oeuvre unique, exubérante, à l’intensité et à la précision renversantes. Son dernier opus, Mockroot, est constitué de compositions personnelles et de chants traditionnels arméniens. Un bijou d’alchimie paru sur le mythique label newyorkais Nonesuch.\r\n\r\nSur scène, il faut voir sa musique, immédiate et fiévreuse, musclée, observer le rythme s’élever à travers ses jambes, son torse, ses bras, s’imprimer sur les touches d’ivoire autant que dans le bois martyrisé du piano… Décidément, Tigran Hamasyan n’est pas un pianiste ordinaire.', 'tygran.jpg', 'tygran'),
(7, 'BALLET FLAMENCO DE ANDALUCÍA / IMAGENES', 'RAFAELA CARRASCO', 1, '2015-11-10', 1, 'Le flamenco est sans doute la danse la plus incarnée qui soit. Chaque interprète semble jouer sa vie, mettre toute son âme au service de chaque pas, de chaque geste, le corps traversé par la foudre d’une danse fière, expression des sentiments de tout un peuple. Le Ballet d’Andalousie porte une part immense du renouveau de cet art viscéral, en y ajoutant une patte graphique proche des plus grands ballets contemporains. Ses spectacles sont passés sur les cinq continents, marqués par de nombreuses récompenses et un accueil public toujours plus chaleureux.\r\n\r\nLe Ballet d’Andalousie est aussi une école, un vivier inépuisable de talents dont sont sorties les figures de la danse mondiale comme Israel Galván, Mercedes Ruiz, Rafael Campallo.\r\n\r\nPur produit du Ballet, Rafaela Carrasco y fut élève, répétitrice puis soliste avant d’en prendre la direction artistique. Une activiste de la danse doublée d’une superbe interprète. Pour cette tournée, la Sévillane a choisi cinq morceaux emblématiques de l’histoire du Ballet d’Andalousie, avec les images les plus marquantes, pour en tirer une interprétation renouvelée et extrêmement personnelle.\r\n\r\nImágenes est un hommage charnel aux maîtres qui l’ont formée. Une ode à la mélancolie sauvage du Flamenco, pour douze danseurs. Poignant.\r\n\r\n \r\n\r\nchorégraphie pour 12 danseurs, 2 guitaristes et 2 chanteurs', 'bfa-imagenes.jpg', 'bfa-imagenes'),
(8, 'LE PRINCE (TOUS LES HOMMES SONT MÉCHANTS) / D\'APRÈS MACHIAVEL', 'LAURENT GUTMANN', 2, '2015-11-16', 1, 'La saison dernière, Laurent Gutmann présentait à La Coursive sa relecture piquante du Petit Poucet, au sous-titre évocateur –Du bienfait des balades en forêt dans l’éducation des enfants. Cette fois, il s’attaque à un texte fondamental de la littérature politique, vieux d’exactement cinq cents ans : Le Prince de Machiavel et sa réflexion acide sur le pouvoir. Foncièrement ambivalent, Le Prince a pour objet l’éducation politique des puissants en même temps qu’il porte à la connaissance du peuple l’art de gouverner, et fait prendre conscience à ce même peuple la domination dont il est l’objet.\r\n\r\nAvec cette version théâtrale, la scène est transposée dans un bureau préfabriqué où ronfle péniblement une cafetière bon marché. Un jeune cadre dynamique y encadre trois stagiaires sous l’oeil d’un impassible précepteur. Face à leurs formateurs, ils sont confrontés à un certain nombre de mises en situations censées leur enseigner comment prendre le pouvoir et, surtout, comment le garder. Tous les coups sont permis pour obtenir la couronne. Face à cet enseignement immoral, comment Rémi le timide, Max l’extraverti et Myriam la névrosée vont-ils saisir leur chance? L’impitoyable jeu du pouvoir peut commencer, nous en sommes témoins et acteurs.\r\n\r\nLaurent Gutmann a adapté lui-même Machiavel avec une grande finesse, collant à l’époque en plaçant nos apprentis dirigeants dans un stage de réorientation professionnelle. Servi par cinq impeccables comédiens, Le Prince fait subtilement fusionner théorie politique et comédie enlevée, réflexion sociétale et pur art dramatique. Une guerre des trônes devant la machine à café. Férocement drôle et édifiant.', 'le-prince.jpg', 'le-prince'),
(9, 'CELUI QUI TOMBE', '', 4, '2015-11-24', 1, 'O lourde légèreté! Entre ciel et terre, six hommes et femmes sont embarqués sur un drôle de navire, un parquet suspendu qui tangue sous le roulis de leurs corps. Un agrès monumental capable de s’orienter sous tous les axes et de prendre une vitesse déstabilisante. Les curieux oiseaux perchés sur leur branche instable doivent négocier avec l’apesanteur jusqu’à la limite, flirter avec la force centrifuge jusqu’au bord de lâcher. C’est un ballet céleste où une communauté humaine avance ensemble dans un univers a priori hostile, se bat contre les lois, implacables, de la physique. Vertigineux défi…\r\n\r\nJongleur, acrobate, chorégraphe, danseur et spécialiste du trampoline, Yoann Bourgeois, trente-trois printemps, est depuis cinq ans le chef d’une compagnie excellant dans les formes courtes (Cavale, L’Art de la fugue…), chapelet de haïkus circassiens où l’homme décolle et glisse dans l’air avec poésie. Venu du cirque, Yoann Bourgeois s’est formé au CNAC (Centre national des arts du cirque de Châlons-en-Champagne, école de perfection qui fête cette année ses trente ans d’existence) avant d’explorer les jeux de vertige chez le Cirque Plume puis d’intégrer la compagnie de la chorégraphe Maguy Marin. Il y passera cinq années à apprendre la place du corps dans l’espace, à étudier la grâce, à comprendre comment donner du sens à chaque geste. Le 1er janvier 2016, Yoann Bourgeois succèdera à Jean-Claude Gallotta à la tête du Centre Chorégraphique national de Grenoble.\r\n\r\nCelui qui tombe est une aventure sidérante, tant pour le spectateur scotché à son fauteuil que pour ses interprètes risquant l’éjection à chaque instant, fragiles Don Quichotte accrochés à leur monstre mouvant.\r\n\r\n ', 'celui_qui_tombe.jpg', 'celui_qui_tombe'),
(10, 'CELEBRATING NAT KING COLE', 'RONALD BAKER QUINTET', 3, '2015-11-26', 1, 'Ronald Baker fait partie de la famille des trompettistes chanteurs, à laquelle Louis Armstrong a donné ses lettres de noblesse voilà presque un siècle. Enfant naturel d’Eddie Jefferson et John Hendricks (pères fondateurs du style vocalese), il sait aussi tout ce qu’il doit à Nat King Cole. Pour célébrer les cinquante ans de la disparition du mythique crooner, Ronald Baker rend hommage à son père spirituel.\r\n\r\nInitié à la musique par ses frères à l’âge de treize ans, Ronald étudie la trompette à la Baltimore School for the Arts, puis à l’Oberlin Conservatory of Music. Au sortir de l\'université, il débute sa carrière de musicien à Miami. Il s’installe en France en 1992. Six ans plus tard, il fonde le Ronald Baker Quintet, un groupe à la remarquable longévité se produisant dans les plus grands festivals tels que Montreux, Montréal ou Marciac et qui a su construire une belle discographie chez Cristal Records. Un étincelant collier de perles jazzistiques. A noter que l’excellent pianiste rochelais Alain Mayeras est un membre fondateur du quintet et un fidèle compagnon d’aventure de Baker, tant sur scène que sur disques.\r\n\r\nLeur dernier album, Celebrating, consacré à Nat King Cole, a reçu un très bel accueil. Une des plus belles surprises discographiques de l’année 2014. Il faut dire qu’en plus de ses musiciens complices, Ronald Baker a eu la bonne idée d’y convier les chanteuses China Moses et Michele Hendrix, ainsi que le saxophoniste américain Jesse Davis – exceptionnellement présent sur scène pour les deux soirées rochelaises! Avec la complicité du Conservatoire de La Rochelle, un ensemble de onze cordes rejoindra également le quintet pour un moment de partage unique. Ronald Baker «and friends» à La Coursive… un bon bain de swing!', 'ronald_baker.jpg', 'ronald_baker'),
(11, 'PIXEL', 'MOURAD MERZOUKI', 1, '2015-11-13', 1, 'Avec Pixel, Mourad Merzouki signe une oeuvre phare tout autant qu’un défi technique. A la tête du Centre Chorégraphique National de Créteil, le fameux chorégraphe issu du hip hop a fait de Pixel une expérience esthétique captivante, le carrefour entre danse et vidéo interactive, entre l’énergie corporelle virtuose du hip hop et un système de projection 3D à la pointe de la technologie scénique. Et le résultat est vertigineux.\r\n\r\nA la croisée des arts, onze danseurs et circassiens évoluent dans un décor numérique mouvant constitué de milliers de petits points blancs. Un trompe-l’oeil époustouflant, un écrin vivant où les corps s’expriment dans toute leur splendeur musculeuse, tantôt sculptés par les bourrasques de lumière projetées à l’infini, tantôt maîtres de l’impalpable texture, l’envoyant carrément valser, l’explosant, plongeant en elle, y glissant… Sous cette collision imaginée par le magicien Merzouki, tout n’est plus qu’illusion.\r\n\r\nSans se départir de la grâce, Pixel ouvre le champ des possibles en offrant de nouvelles perspectives artistiques au secteur du spectacle vivant. Il faut citer tous les artisans de la création de cet univers sensoriel inédit : les concepteurs vidéo Adrien Mondot et Claire Bardainne, le Geppetto des lumières Yoann Tivoli, l’architecte de scène Benjamin Lebreton sans oublier le compositeur d’une bande sonore pleine de poésie, le baroudeur Armand Amar…\r\n\r\nPixel est une fascinante révolution. Un ballet futuriste à la fois ludique, extrêmement joyeux et touchant. Une merveille.', 'pixel.jpg', 'pixel'),
(12, 'LE NOZZE DI FIGARO / MOZART / ALEXIS KOSSENKO ', 'GALIN STOEV', 3, '2015-11-17', 1, 'Voilà l’un des opéras les plus miraculeux du répertoire, l’un des plus parfaits jamais écrit. L’intrigue, drôle entre toutes, est menée tambour battant et s’enrichit de péripéties qui servent l’équilibre des quatre actes. Mais derrière l’humour et le piquant des situations, ici la colère de Figaro, là l’arrogance du Comte, ailleurs la malice de Susanna ou la mélancolie de la Comtesse, Mozart sonde les âmes et les coeurs et verse une indicible nostalgie sur ces jeux de l’amour et du hasard. C’est Mozart le véritable dramaturge de ses Noces, glissant, dans une narration lumineuse, des airs qui se transforment en duos, des duos en trios, des trios en tutti, avec une invention mélodique vertigineuse, toujours jaillissante et renouvelée.\r\n\r\nC’est porté par un nouveau collectif de plusieurs théâtres –la co[opéra]tive, dirigée par Loïc Boissier, fondateur des Brigands et fer de lance d’une nouvelle production lyrique en France– qu’a pu se monter cet opéra-bouffe. Côté fosse d’orchestre, l’ensemble Les Ambassadeurs, mené par le talentueux soliste Alexis Kossenko, trace une voie à l’écart des dogmes où précision et instinct de jouer sont mis sur le même plan. Côté plateau, neuf chanteurs dirigés d’une main de maître par le metteur en scène bulgare Galin Stoev, qui a oeuvré tant à la Comédie-Française ou au Théâtre de la Colline qu’à la tête de grands opéras dans toute l’Europe.\r\n\r\nLes Noces de Figaro, c’est le plaisir du lyrique dans le Grand Théâtre à l’acoustique rénovée, un opéra porté par une ambition de perfection et de beauté.', 'les_noces_de_figaro.jpg', 'les_noces_de_figaro'),
(13, 'SEPTEM', 'SEPTEM', 1, '2015-11-18', 1, 'En Chine, la légende raconte qu’un empereur du XVIe siècle fit tomber un carreau de faïence qui se brisa en sept morceaux. Il n’arriva jamais à le reconstituer, mais l’homme s’aperçut qu’avec ces sept pièces, il était possible de créer une infinité de formes. Le jeu de Tangram naquit de cet accident. Imaginez maintenant que ces «planches de la ruse» s’incarnent en sept femmes, danseuses hip hop, devenant les pièces d’un puzzle mouvant aux mille et un visages…\r\n\r\nPour la troisième création de sa jeune compagnie Chikri’Z, Amine Boussa a vu les choses en grand. Et en finesse… SEPTeM explore ainsi la relation de l’individu face au groupe à travers sept identités féminines, sept manières de bouger, à travers sept caractères qui se confrontent pour former une communauté en mouvement. Une tribu d’Amazones, libres et déterminées.\r\n\r\nEn détournant les clichés de virilité du hip hop pour cette création 100% féminine, Amine Boussa affirme l’universalité de sa danse, proclame avec poésie qu’un corps, qu’il soit masculin ou féminin, est une force de proposition unique en son genre. Et, justement, sans genre.\r\n\r\nAvec la volonté d’une initiative commune, SEPTeM sera présenté au Centre Chorégraphique National de La Rochelle, qu’Amine Boussa connaît bien puisqu’il a participé comme danseur aux dernières créations du maître des lieux, Kader Attou.', 'septem.jpg', 'septem');

-- --------------------------------------------------------


