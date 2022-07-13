-- MySQL dump 10.19  Distrib 10.3.34-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Easyloc
-- ------------------------------------------------------
-- Server version	10.3.34-MariaDB-0ubuntu0.20.04.1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Commentaires`
--

DROP TABLE IF EXISTS `Commentaires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Commentaires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Pseudo` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Commentaire` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Commentaires`
--

LOCK TABLES `Commentaires` WRITE;
/*!40000 ALTER TABLE `Commentaires` DISABLE KEYS */;
INSERT INTO `Commentaires` VALUES (1,'test13','testest@hotmail.fr','test'),(2,'test','test@mail.fr','test 123'),(3,'test13','testest@hotmail.fr','test\r\n'),(4,'test ','tes123@hotmail.fr','blabla'),(5,'test','tes123@hotmail.fr','testets\r\n'),(6,'s4nji','testest@hotmail.fr','test'),(7,'s4nji','testest@hotmail.fr','test'),(8,'test13','testest@hotmail.fr','test'),(9,'ni','ni@mail','test test test ');
/*!40000 ALTER TABLE `Commentaires` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(15) NOT NULL,
  `Prenom` varchar(15) NOT NULL,
  `Pseudo` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `is_admin` int(11) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (5,'Letang','Nicolas','jak','pand@panda.fr','$2y$10$6ympRjSOdlMXvpMV1pJV4uDmzU7bFnBglZk5SL4qHKn6XKdLllVZi',0),(6,'pierre','paul','jacque','pand@panda.fr','$2y$10$HFkV2Nyh62/tN16fE4jFzO7yeMIDJVjXAKM5mBD4LlWyeFeCYREK2',0),(7,'Letang','Nicolas','s4nj1','fake@mail.fr','$2y$10$mxgadibrkt5O/i/h9rTxY.VjSIi3IhslT7/7i5.qVfQ6xeVItEu1S',1),(9,'','','','','$2y$10$nf8iWkw/lq2MPIvDBBx7iO4oHTI857QN4434/or61LnnPYnwkEZbS',0),(10,'','','','','$2y$10$K/98v0i44yD9LA.Z4gLO7u6Y96tWQgv7NC7prrN.5IL0G3OT6AH4u',0),(11,'','','s4nji','testest@hotmail.fr','$2y$10$DywsPUWGNFOwI0/Aw9eX0uRUIaWFeZoFVqVhc0oRyVMpdqDaxD.dC',0);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appartement`
--

DROP TABLE IF EXISTS `appartement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appartement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Titre` varchar(255) NOT NULL,
  `Adresse` varchar(255) NOT NULL,
  `Nb_piece` int(11) NOT NULL,
  `Prix` int(11) NOT NULL,
  `Dispo` tinyint(1) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Other_image` varchar(255) DEFAULT NULL,
  `Other_image2` varchar(255) DEFAULT NULL,
  `Description` text NOT NULL,
  `Superficie` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appartement`
--

LOCK TABLES `appartement` WRITE;
/*!40000 ALTER TABLE `appartement` DISABLE KEYS */;
INSERT INTO `appartement` VALUES (1,'Prestigieux immeuble de rapport à 1000 Biscayne Blvd Miami','FL 33132 Miami Comté de Miami-Dade Florida',17,500,1,'image/Appartement/appartLux1.jpg','oiAppart/appart1ext.jpg','oiAppart/appart1int.jpg','Créez votre propre musée dans le ciel dans cette résidence d\'un demi-étage de Zaha Hadid. Avec plus de 30 000 pieds carrés de commodités conçues de manière architecturale et d\'espaces de rassemblement. Opulence définie. Vivez dans un immeuble de luxe de première classe véritablement boutique dans le centre des quartiers les plus passionnants de Miami',NULL),(2,'Prestigieux duplex de 870 m2 en vente Miami Florida','Miami Florida',16,800,1,'image/Appartement/appartLux2.jpg','oiAppart/appart2ext.jpg','oiAppart/appart2int.jpg','Cette luxueuse villa duplex en duplex entretient un lien très fort avec le paysage environnant, tous les espaces intérieurs et extérieurs offrant une vue directe sur une ligne d\'horizon continue. L\'espace de 9 363 pieds carrés est entouré de baies vitrées offrant une vue imprenable et dispose d\'une terrasse de piscine privée avec une cuisine extérieure et une douche',NULL),(3,'Prestigieux apportement de rapport en location à Miami, États-Unis','Miami, États-Unis',6,1200,1,'image/Appartement/appartLux3.jpg','oiAppart/appart3ext.jpg','oiAppart/appart3int.jpg','Un véritable appartement de design dans le ciel à l\'intérieur de la tour résidentielle la plus exclusive de Miami - One Thousand Museum Residence 4401 est une expression triomphante de l\'architecture légendaire de Zaha Hadid et du design d\'intérieur et du mobilier personnalisé du plus haut calibre de la société de design CEU. résidence d\'un demi-étage comprenant 4 chambres généreuses, un salon d\'exposition de 1 000 pieds carrés à l\'est et une cuisine élégante de Poliform avec appareils électroménagers Gaggenau et Subzero. Les terrasses de cette résidence à flux continu offrent des vues spectaculaires sur le lever et le coucher du soleil combinant la baie, la ville et un ciel infini. Seulement 84 maisons, des équipements extraordinaires offrent un style de vie sur mesure adapté à chaque résident, du spa cinq étoiles avec entraînement personnel personnalisé aux piscines intérieure et extérieure, en passant par un hall et un sky lounge dignes d\'un hôtel de classe mondiale.',1000),(4,'Prestigieux appartement de rapport en location à Miami, États-Unis','Miami, États-Unis',12,1500,1,'image/Appartement/appartLux4.jpg','oiAppart/appart4ext.jpg','oiAppart/appart4int.jpg','L\'appartement le plus exclusif et le plus luxueux de tout Brickell | Centre-ville de Miami! Un vrai\r\nMANSION DANS LE CIEL au coeur de Brickell, mais sur l\'île exclusive de Brickell Key - \"Une île dans la\r\nville\". Maison sur 3 niveaux avec 6 lits, 6 salles de bain complètes et 2 demi-bains, plafonds hauts de 12 pieds, ascenseur privé, vue imprenable sur l\'eau et le\r\nSKYLINE, et 4 terrasses de près de 2000 pieds carrés d\'espace de vie extérieur + une piscine privée sur le toit entourée de ciel bleu, la baie et les toits de Miami. Vivez la «vie insulaire» et marchez vers l\'agitation de Brickell: Shopping,\r\ndivertissement, restaurants et le centre-ville de Brickell! 3 places de parking Premium + voiturier et toutes élégamment meublées par Artefacto. L\'Asie est le premier bâtiment de luxe de Brickell Key avec des équipements 5 étoiles. Entièrement meublé. Bail d\'un an\r\nseul.',2000);
/*!40000 ALTER TABLE `appartement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bateau`
--

DROP TABLE IF EXISTS `bateau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bateau` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Titre` varchar(255) NOT NULL,
  `Adresse` varchar(255) NOT NULL,
  `Nb_piece` int(11) NOT NULL,
  `Prix` int(11) NOT NULL,
  `Dispo` tinyint(1) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Other_image` varchar(255) DEFAULT NULL,
  `Other_image2` varchar(255) DEFAULT NULL,
  `Description` text NOT NULL,
  `Superficie` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bateau`
--

LOCK TABLES `bateau` WRITE;
/*!40000 ALTER TABLE `bateau` DISABLE KEYS */;
INSERT INTO `bateau` VALUES (1,'272 pieds OMEGA LUXURY VIP YACHT - 30 PERSONNES','St-Tropez',5,2000,1,'image/Yacht/yachtLux1.jpg','oiBateau/yacht1ext.jpg','oiBateau/yacht1int.jpg','Le yacht de luxe bien connu de 83 mètres O\'MEGA peut obliger et engager jusqu\'à 30 visiteurs dans l\'extravagance la plus extrême, O\'Mega garantit les solaces d\'un énorme et vaste navire personnel mais en plus l\'accomplissement de vos occasions d\'entreprise engageantes ou inhabituelles Mega Yacht o «méga son immense salle de réunion est facilement accessible depuis le salon fondamental et donne la protection nécessaire. Détendez-vous dans le salon de massage du dos, pratiquez dans la salle d\'exercice / studio de yoga, restaurez-vous avec votre cosmétologue privé, entraînez-vous dans le centre de loisirs et laissez-vous aller dans le jacuzzi intérieur et extérieur.',83),(2,'236 pieds SERENITY LUXURY VIP YACHT - 30 PERSONNES','Dubai',6,2500,1,'image/Yacht/yachtLux2.jpg','oiBateau/yacht2ext.jpg','oiBateau/yacht2int.jpg','Les bureaux de détente et de divertissement remarquables de Peacefulness en font le yacht contractuel idéal pour se mêler et s\'engager avec la famille et les amis.Le yacht à moteur de 236,22 pieds de 72 m, spécialement implicite en 2004 par Austal et réaménagé pour la dernière fois en 2017. L\'intérieur de Tranquility comprend 15 chambres, dont un expert suite, 6 cabines VIP, 5 pavillons doubles, 2 pavillons jumeaux et 2 lits pullman. Elle est en outre équipée pour transporter jusqu\'à 31 équipes disponibles localement afin de garantir un aperçu occasionnel du yacht extravagance. Un style immortel, d\'excellentes décorations et des sièges luxueux mettent en valeur tout au long pour créer un air exquis et agréable.',72),(3,'Bateau de fête pour jusqu\'à 90 personnes','Dubai',5,3000,1,'image/Yacht/yachtLux3.jpg','oiBateau/yacht3ext.jpg','oiBateau/yacht3int.jpg','\r\nParfait pour votre:\r\nMariage\r\nDate d\'anniversaire\r\nAnniversaires\r\nÉvénements d\'entreprise\r\nOu simplement pour faire la fête avec vos amis et votre famille\r\n',150),(4,'YACHT VIP LUXURY SENSATION de 164 pieds','Miami, Etat-unis',5,2800,1,'image/Yacht/yachtLux4.jpg','oiBateau/yacht4ext.jpg','oiBateau/yacht4int.jpg','Le yacht Sensation de 164 pieds peut accueillir dix personnes dans cinq cabines. Le stateroom de son propriétaire pleine largeur, qui est placé sur le pont principal, est très remarquable. Il y a un lit king-size à bâbord et à tribord, un immense dressing. La salle de bains du propriétaire est située à l\'avant de cette chambre et dispose d\'installations pour lui et pour elle ainsi que d\'une superbe salle de bain centrale.\r\nLe yacht sensation est le yacht de location idéal pour socialiser et se divertir en famille et entre amis, grâce à ses superbes installations de loisirs et de divertissement. Une excursion en bateau vous laissera un effet indélébile et vous vous en souviendrez pendant de nombreuses années. Glisser sur la surface aquatique vous donne une sensation de liberté et de sérénité absolue. Cabines: 5',100);
/*!40000 ALTER TABLE `bateau` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maison`
--

DROP TABLE IF EXISTS `maison`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maison` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Titre` varchar(255) NOT NULL,
  `Adresse` varchar(255) NOT NULL,
  `Nb_piece` int(11) NOT NULL,
  `Prix` int(11) NOT NULL,
  `Dispo` tinyint(1) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Other_image` varchar(255) DEFAULT NULL,
  `Other_image2` varchar(255) DEFAULT NULL,
  `Description` text NOT NULL,
  `Superficie` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maison`
--

LOCK TABLES `maison` WRITE;
/*!40000 ALTER TABLE `maison` DISABLE KEYS */;
INSERT INTO `maison` VALUES (1,'Demeure de prestige 7 chambres en vente Dubaï, Émirats Arabes Unis','Dubaï, Émirats Arabes Unis',7,4000,1,'image/Maison/maisonLux1.jpg','oiMaison/maison1ext.jpg','oiMaison/maison1int.jpg','Qu\'est-ce que la vie de luxe? Il ne s\'agit pas seulement d\'extravagance et d\'opulence, mais aussi d\'embrasser et de profiter d\'un style de vie luxueux. XXII Carat offre non seulement des vues magnifiques sur Dubaï et Palm Jumeirah, une intimité ultime, un hébergement spacieux et des équipements de première classe, mais aussi la possibilité de vous immerger dans un mode de vie vraiment magnifique. XXII CARAT est la quintessence de la vie somptueuse et c\'est tout simplement unique en son genre. Caractéristiques uniques: -L\'expérience ultime de la vie au bord de l\'eau -Collection de 22 manoirs luxueux sur la plage -Communauté fermée -Vue panoramique sur les toits de la marina de Dubaï et Palm Jumeirah -Les hôtels voisins One & Only The Palm, Zabeel Sary et W Dubaï -Les plus grands jardins paysagers privés sur le Palm Jumierah -Accès exclusif à la plage -La disposition de chaque villa dispose de 7 suites-chambres Villas: -360 degrés eau dégagée et vue sur la ville -Piscine privée -Jardin paysager privé et terrasse -Les villas de première ligne offrent un accès privé exclusif directement depuis la parcelle -Les villas centrales ont accès à une terrasse privée sur le toit et un ascenseur direct au parking en sous-sol -Des plans d\'étage vastes -Les villas sélectionnées ont des espaces de bureau et de bibliothèque -Personnalisation sur les plans d\'étage -Chambres de femme avec entrée séparée et débarras propre hammam Caractéristiques intérieures: - Armoires de cuisine fabriquées en France, conçues sur mesure et entièrement accessoirisées finies en bois naturel - Application de cuisine de qualité professionnelle liances de Miele et La Cornue - Plan de travail en pierre et dosseret en marbre dans la cuisine - Cave à vin climatisée par Miele - Armoires de salle de bain fabriquées en Italie et conçues sur mesure - Robinets et accessoires faits à la main en Italie - Baignoire en cristal Baldi, fabriquée à la main en Italie - Livre sélectionné à la main -Marbre italien assorti -Raccords électriques européens importés -Les caractéristiques d\'aménagement sont personnalisables selon les préférences du client.Services et équipements: -Service de conciergerie -Service de sécurité -Parking valet -Parking sécurisé en sous-sol pour les résidents -Meet & Greet -Ménage -Jardinage - Entretien de la piscine -Soutien technique -Installations du club -82 pi / 25mt. piscine centrale avec accès à la plage -Bar Caribana -Restaurant Caractéristiques du bâtiment: -Style architectural méditerranéen -Structure du site en terrasse -Villas couvertes de peintures Keim: peinture minérale bavaroise de haute qualité avec une garantie de 50 ans sur la décoloration -Murs remplis de briques d\'argile rouge par Yamama, un matériau naturel d\'Arabie Saoudite -Profil Windows-Schuco équipé de systèmes de réduction de la poussière et du bruit -Système de clôture antibruit -30% du site est couvert par un espace vert paysager -Smart home Système Gira -Equipement de hammam Tylo Talise Ottoman spa Le programme de partenariat avec Talise Ottoman Spa propose un abonnement familial annuel pour tous les nouveaux propriétaires de demeures XXII Carat.',2000),(2,'Maison de 6 chambres de luxe en vente à Novelia Village, Dubai,','Novelia Village, Dubai,',6,2900,1,'image/Maison/maisonLux2.jpg','oiMaison/maison2ext.jpg','oiMaison/maison2int.jpg','Luxhabitat Sotheby’s International Realty a l’honneur de vous présenter cette exquise villa de 6 chambres à coucher à Bromellia, Al Barari.\r\nIl est difficile d’imaginer une propriété plus susceptible d’évoquer des images de charme extraordinaire et de style luxueux que cette captivante villa de six chambres. Somptueux à tous points de vue, il est doté d’intérieurs vraiment remarquables, d’un design illustre et d’une vue imprenable sur le lac. Chaque détail a été soigné dans les moindres détails sur l’ensemble de la parcelle, qui fait plus de 19 000 pieds carrés. C’est une villa unique en son genre, une maison de rêve avec des caractéristiques absolument fantastiques.\r\nL’un de nos aspects préférés est le tout nouveau relooking extérieur qui a transformé l’énorme jardin en un spectacle extravagant de splendeur avec son propre bar de natation, sa piscine de plongée, son foyer, son espace barbecue et la rivière tranquille qui coule le long de la propriété. À l’intérieur, le grand hall d’entrée offre une première impression dominante et s’ouvre sur les élégants salons et salles à manger avec leur mobilier design. Aucun amateur de cuisine ne pourrait être déçu par la cuisine et ses appareils de qualité professionnelle. Il y a beaucoup d’espace pour se divertir ainsi qu’un bureau privé au rez-de-chaussée et deux sous-sols. Toutes les chambres spacieuses ont leur propre salle de bains, ainsi que des salles de bains et des salles d’eau supplémentaires pour les clients et le personnel. Il y a également une grande terrasse sur le toit et un jardin, ce qui vous permet de toujours organiser une soirée avec vue.\r\nAl Barari est l’une des communautés les plus recherchées de Dubaï grâce à son environnement exclusif, son atmosphère retirée, son cadre luxuriant et ses équipements de luxe. Cette propriété de luxe de rêve est l’une des villas les plus accueillantes du développement d’Al Barari. Les résidents peuvent toujours se sentir comme s’ils avaient échappé au stress de la ville tout en profitant d’un accès rapide à l’autoroute, de restaurants raffinés, de magasins pratiques et d’un centre de remise en forme et de bien-être tranquille.\r\nUn luxe chic et contemporain à un niveau que vous ne trouverez nulle part ailleurs ; contactez Luxhabitat Sotheby’s International Realty pour organiser une visite privée dès aujourd’hui.',1500),(3,'Villa de luxe de 7 chambres en vente Dubaï','Dubaï',7,4500,1,'image/Maison/maisonLux3.jpg','oiMaison/maison3ext.jpg','oiMaison/maison3int.jpg','Qu\'est-ce que la vie de luxe? Il ne s\'agit pas seulement d\'extravagance et d\'opulence, mais aussi d\'embrasser et de profiter d\'un style de vie luxueux. XXII Carat offre non seulement des vues magnifiques sur Dubaï et Palm Jumeirah, une intimité ultime, un hébergement spacieux et des équipements de première classe, mais aussi la possibilité de vous immerger dans un mode de vie vraiment magnifique. XXII CARAT est la quintessence de la vie somptueuse et c\'est tout simplement unique en son genre. Caractéristiques uniques: -L\'expérience ultime de la vie au bord de l\'eau -Collection de 22 manoirs luxueux sur la plage -Communauté fermée -Vue panoramique sur les toits de la marina de Dubaï et Palm Jumeirah -Les hôtels voisins One & Only The Palm, Zabeel Sary et W Dubaï -Les plus grands jardins paysagers privés sur le Palm Jumierah -Accès exclusif à la plage -La disposition de chaque villa dispose de 7 suites-chambres Villas: -360 degrés eau dégagée et vue sur la ville -Piscine privée -Jardin paysager privé et terrasse -Les villas de première ligne offrent un accès privé exclusif directement depuis la parcelle -Les villas centrales ont accès à une terrasse privée sur le toit et un ascenseur direct au parking en sous-sol -Des plans d\'étage vastes -Les villas sélectionnées ont des espaces de bureau et de bibliothèque -Personnalisation sur les plans d\'étage -Chambres de femme avec entrée séparée et débarras propre hammam Caractéristiques intérieures: - Armoires de cuisine fabriquées en France, conçues sur mesure et entièrement accessoirisées finies en bois naturel - Application de cuisine de qualité professionnelle liances de Miele et La Cornue - Plan de travail en pierre et dosseret en marbre dans la cuisine - Cave à vin climatisée par Miele - Armoires de salle de bain fabriquées en Italie et conçues sur mesure - Robinets et accessoires faits à la main en Italie - Baignoire en cristal Baldi, fabriquée à la main en Italie - Livre sélectionné à la main -Marbre italien assorti -Raccords électriques européens importés -Les caractéristiques d\'aménagement sont personnalisables selon les préférences du client.Services et équipements: -Service de conciergerie -Service de sécurité -Parking valet -Parking sécurisé en sous-sol pour les résidents -Meet & Greet -Ménage -Jardinage - Entretien de la piscine -Soutien technique -Installations du club -82 pi / 25mt. piscine centrale avec accès à la plage -Bar Caribana -Restaurant Caractéristiques du bâtiment: -Style architectural méditerranéen -Structure du site en terrasse -Villas couvertes de peintures Keim: peinture minérale bavaroise de haute qualité avec une garantie de 50 ans sur la décoloration -Murs remplis de briques d\'argile rouge par Yamama, un matériau naturel d\'Arabie Saoudite -Profil Windows-Schuco équipé de systèmes de réduction de la poussière et du bruit -Système de clôture antibruit -30% du site est couvert par un espace vert paysager -Smart home Système Gira -Equipement de hammam Tylo Talise Ottoman spa Le programme de partenariat avec Talise Ottoman Spa propose un abonnement familial annuel pour tous les nouveaux propriétaires de demeures XXII Carat.',2500),(4,'Villa de luxe de 13 pièces en vente Dubaï','Dubaï',5,3000,1,'image/Maison/maisonLux4.jpg','oiMaison/maison4ext.jpg','oiMaison/maison4int.jpg','La Maison iKeys est honoré de présenter cette villa exceptionnelle de 5 chambres de luxe unique en son genre à Palm Jumeirah.\r\nCette toute nouvelle villa personnalisée représente le summum de l\'excellence et de la qualité disponible dans une propriété de luxe. Chaque détail des cuisines gastronomiques, aux meubles design Bentley respire l\'élégance et le style Haute couture. Il est difficile d\'imaginer une propriété de luxe dans le monde qui pourrait rivaliser avec cette somptueuse villa en qualité et en emplacement.\r\nCette Propriété exceptionnelle répartie sur trois étages, occupe un terrain de 14 000 pieds carrés à l\'extrémité de la façade la plus recherchée du Palm Jumeirah. Ce petit bout de paradis est bénéficie de sa propre plage privée et des vues extraordinaires à 360 degrés.',14000);
/*!40000 ALTER TABLE `maison` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penthouse`
--

DROP TABLE IF EXISTS `penthouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penthouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Titre` varchar(255) NOT NULL,
  `Adresse` varchar(255) NOT NULL,
  `Nb_piece` int(11) NOT NULL,
  `Prix` int(11) NOT NULL,
  `Dispo` tinyint(1) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Other_image` varchar(255) DEFAULT NULL,
  `Other_image2` varchar(255) DEFAULT NULL,
  `Description` text NOT NULL,
  `Superficie` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penthouse`
--

LOCK TABLES `penthouse` WRITE;
/*!40000 ALTER TABLE `penthouse` DISABLE KEYS */;
INSERT INTO `penthouse` VALUES (1,'Penthouse de luxe de 1347 m2 en location New York, État de New York','État de New York',7,5000,1,'image/Penthouse/penthouseLux1.jpg','oiPenthouse/penthouse1ext.jpg','oiPenthouse/penthouse1int.jpg','THE PENTHOUSE à One Hundred Barclay offre une opportunité exclusive de posséder les deux derniers étages du premier gratte-ciel Art déco du monde, l\'une des plus grandes résidences privées de New York. Ce palais dans le ciel, qui s\'étend sur 14 500 pieds carrés, est idéal pour un acheteur exigeant qui veut la toile de luxe parfaite pour concevoir leur maison de rêve.\r\n\r\nLa galerie d\'entrée vitrée mène à l\'une des plus grandes salles de séjour de New York, mesurant près de 100 pieds de long par plus de 30 pieds de large, abritant l\'un des plus longs murs d\'art continu dans n\'importe quelle maison privée. Les hauts plafonds de 21 pieds et les fenêtres cintrées spectaculaires encadrent les vues emblématiques de l\'horizon de New York, de la Statue de la Liberté et de la rivière Hudson.\r\n\r\nLa cuisine professionnelle, vaste espace de divertissement de plus de 1 000 pieds carrés, comprend un garde-manger, une salle à manger, une cave à vins (capacité de 630 bouteilles) et un salon après-dîner avec bar et foyer au gaz à deux faces. Il y a des comptoirs et dosseret en marbre Calacatta Gold, des armoires en chêne sur mesure, des éviers Franke et un ensemble d\'appareils Gaggenau haut de gamme avec deux réfrigérateurs et congélateurs, un four à micro-ondes, deux fours à convection de 30 po et une cuisinière à huit brûleurs. plaque de cuisson, table de cuisson à induction de 36 po et cuisinière accessoire: cuiseur à vapeur, friteuse et teppanyaki, ainsi que deux lave-vaisselle.\r\n\r\nEn plus du salon et de la cuisine, le Penthouse comprend plus de 6 000 pieds carrés d\'espace entièrement personnalisable, pouvant accueillir des aménagements allant de une à sept chambres. En tant que l\'une des premières résidences de la ville, cet espace superlatif offre des possibilités presque illimitées pour créer une résidence parfaitement adaptée. La maison entière comporte l\'infrastructure électrique complète pour soutenir l\'éclairage fait sur commande, les montages de style de lustre, la domotique, et un ascenseur interne.\r\n\r\nOne Hundred Barclay offre aux résidents plus de 40 000 pieds carrés de commodités, le forfait le plus robuste de Tribeca, avec deux piscines, une salle de jeux, un centre de fitness avec hammam et sauna, un salon multimédia, des salles de musique, un salon Landmarked bar, stockage du vin et salle de dégustation, vélo et stockage privé, avec quatre terrasses tentaculaires pour divertir.\r\n',1347),(2,'Penthouse de luxe de 4 chambres en location Dubaï','Dubaï',4,2650,1,'image/Penthouse/penthouseLux2.jpg','oiPenthouse/penthouse2ext.jpg','oiPenthouse/penthouse2int.jpg','\r\nPenthouse en demi-étage dans l\'exclusif Bulgari Resort and Residences situé sur l\'élite Jumeirah Bay Island, Dubaï, EAU. Cette propriété est entourée d\'une crique de plage de sable, de jardins verdoyants et d\'une vue panoramique sur le centre-ville de Dubaï et le port de plaisance. Le Bulgari Resort Dubai est l\'un des six seuls hôtels et complexes Bulgari au monde. Les résidents et les utilisateurs disposent d\'un pont de 300 mètres construit exclusivement pour leur commodité et leur facilité d\'utilisation. Caractéristiques de l\'établissement; - Penthouse de luxe de 4 chambres. - une vue sur la mer, l\'horizon, le port de plaisance, le Burj Khalifa et le Burj Al Arab. - Accès par ascenseur privé au penthouse. - Terrasses entièrement aménagées. - Salles de bains attenantes. - Cuisine ouverte et entièrement équipée. - Chambre de bonne. Caractéristiques de Bulgari Residences: - Salle de sport et installations de relaxation ultramodernes. -Plage privée. - Service de voiturier. - Concierge 24h / 24. - l\'accès aux restaurants gastronomiques, au spa et au yacht club de l\'hôtel Bulgari.\r\n',991),(3,'Penthouse de luxe de 4 chambres en location Dubaï, Émirats Arabes Unis','Dubaï, Émirats Arabes Unis',4,1854,1,'image/Penthouse/penthouseLux3.jpg','oiPenthouse/penthouse3ext.jpg','oiPenthouse/penthouse3int.jpg','\r\nUne destination résidentielle majestueuse nichée dans le croissant ouest de Palm Jumeirah. Exclusivement desservies par W Dubai - The Palm, les luxueuses résidences incarnent le summum de la vie en bord de mer à Dubaï. Comprenant 104 maisons conçues avec goût réparties sur huit manoirs, ce développement unique offre une expérience de vie extraordinaire garantissant une intimité, une sécurité et un confort optimaux. L\'architecture fluide distincte est inspirée par l\'érosion éolienne naturelle des montagnes de la région, permettant à sa sculpture moderne de se fondre sans effort avec la beauté de son environnement naturel. Cet appartement de grand standing avec services exclusifs s\'étend sur 8271 pieds carrés et dispose d\'un vaste aménagement décloisonné et de chambres somptueuses bien aménagées. Les fenêtres du sol au plafond entourent tout l\'espace de vie et s\'ouvrent sur de vastes terrasses privées qui donnent sur une vue imprenable sur le golfe Persique scintillant et la ligne d\'horizon à couper le souffle de la ville. La cuisine ouverte est entièrement équipée d\'armoires Poggenpohl exceptionnelles et d\'appareils électroménagers de qualité professionnelle de Miele. Une palette neutre apaisante enrichie par la lumière naturelle et complétée par un mobilier soigneusement sélectionné imprègne ses intérieurs sophistiqués. Les résidents sont récompensés par une multitude de commodités remarquables sur place, notamment une piscine à débordement incurvée au niveau du podium, un accès direct à la plage privée immaculée, des services de conciergerie dédiés et un accès exclusif au Club 104 qui offre un centre de remise en forme entièrement équipé, une salle polyvalente, un cinéma et un restaurant signature. Cet appartement serait un choix résidentiel ou une option d\'investissement spectaculaire. Toutes les photos proviennent d\'appartements témoins et peuvent ne pas être des photos du numéro d\'unité spécifique mentionné.\r\n',1132),(4,'Penthouse de luxe de 4 pièces en location ','1451 Brickell Avenue, Miami, FL 33131, Miami, Comté de Miami-Dade, Florida',4,1254,1,'image/Penthouse/penthouseLux4.jpg','oiPenthouse/penthouse4ext.jpg','oiPenthouse/penthouse4int.jpg','Echo Brickell est une boutique, résidentiel de grande hauteur dans l\'épicentre de la plus rapide quartier métropolitaine croissante de Miami, situé sur le côté Est de la convoitée Brickell Avenue. Echo Brickell est le résultat d\'une collaboration en temps de première entre le célèbre architecte Carlos Ott et les innovateurs estimés à yoo Studio. Avec seulement 180 résidences, Echo Brickell est l\'icône architecturale la plus exclusive au sud de New York. Les résidences entièrement fini, au design raffiné disposent d\'une cuisine d\'été et des appareils haut de gamme. Terrasses expansives apporter l\'extérieur et sol en marbre dans les espaces de vie élève l\'échelle de grandeur. Ces résidences en édition limitée réunir l\'architecture innovante et un design intérieur moderne pour créer un espace de vie qui est impeccable, passionnante et unique. L\'état de l\'art des résidences d\'Echo Brickell seront redéfinir la norme d\'excellence pour la Floride du Sud haute lever vie. Développeur ECHO BRICKELL CARLOS OTT Penthouse Propriété entièrement redéfini ce qu\'on peut attendre d\'un penthouse ultra-luxe avec le Carlos Ott Penthouse à Echo Brickell. Top-of-the-line matériaux, la conception inégalée, et une vue imprenable se réunissent tout au long de 13 618 pieds carrés de l\'Attique d\'annoncer clairement et indéniablement que cette résidence de classe mondiale est non seulement unique; il est inégalée. Deux étages ultra-luxueux 4 chambres + salle de bain + 7,5 Piscine + Gym + Service Suite total Pieds carrés: 13,618 pieds carrés / 1,265 m² Intérieur: 10,110 pieds carrés / 938 m² Extérieur: 3,518 Pieds carrés / 326 m²\r\n',3210);
/*!40000 ALTER TABLE `penthouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studio`
--

DROP TABLE IF EXISTS `studio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Titre` varchar(255) NOT NULL,
  `Adresse` varchar(255) NOT NULL,
  `Nb_piece` int(11) NOT NULL,
  `Prix` int(11) NOT NULL,
  `Dispo` tinyint(1) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Other_image` varchar(255) DEFAULT NULL,
  `Other_image2` varchar(255) DEFAULT NULL,
  `Description` text NOT NULL,
  `Superficie` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studio`
--

LOCK TABLES `studio` WRITE;
/*!40000 ALTER TABLE `studio` DISABLE KEYS */;
INSERT INTO `studio` VALUES (5,'Studio de luxe en location de 100 m²','Rue de la Verrerie dans le 4ème arrondissement de Paris',3,550,1,'image/Studio/studioLux1.jpg','oiStudio/studio1ext.jpg','oiStudio/studio1int.jpg','3 pièces au 3ème étage d\'un immeuble du 18ème siècle et il peut accueillir 4 personnes. Cet appartement est équipé avec : un lave linge, un sèche linge, un lave-vaisselle, un accès internet haut débit illimité avec le wifi, un balcon.\r\n\r\nL\'immeuble du 18ème siècle est équipé avec : un ascenseur, un code d entrée, vidéophone.',100),(6,'Studio de luxe en location de 116 m²','Rue Meslay dans le 3ème arrondissement de Paris',4,651,1,'image/Studio/studioLux2.jpg','oiStudio/studio2ext.jpg','oiStudio/studio2int.jpg','4 pièces au 2ème étage d\'un immeuble du 19ème siècle et il peut accueillir 6 personnes. Cet appartement est équipé avec : un lave linge, un sèche linge, un lave-vaisselle, les chaines cablées, la télévision, un accès internet haut débit illimité avec le wifi.\r\n\r\nL\'immeuble du 19ème siècle est équipé avec : un code d entrée, un interphone.',116),(7,'Studio de luxe en location de 113 m²','Quai de Grenelle dans le 15ème arrondissement de Paris',4,514,1,'image/Studio/studioLux3.jpg','oiStudio/studio3ext.jpg','oiStudio/studio3int.jpg','4 pièces, est situé quai de Grenelle dans le 15ème arrondissement de Paris , au 24ème étage d\'un immeuble du 20ème siècle et il peut accueillir 6 personnes. Cet appartement est équipé avec : un lave linge, un sèche linge, un lave-vaisselle, les chaines cablées, la télévision, un accès internet haut débit illimité avec le wifi.\r\n\r\nL\'immeuble du 20ème siècle est équipé avec : un ascenseur, un code d entrée, une concierge.',113),(8,'Studio de luxe en location de 100 m²','Quai d Orsay dans le 7ème arrondissement de Paris',3,642,1,'image/Studio/studioLux4.jpg','oiStudio/studio4ext.jpg','oiStudio/studio4int.jpg','3 pièces, est situé quai d Orsay dans le 7ème arrondissement , au 6ème étage d\'un immeuble du 19ème siècle et il peut accueillir 4 personnes. Cet appartement est équipé avec : un lave linge, un sèche linge, un lave-vaisselle, les chaines cablées, la télévision, un accès internet haut débit illimité avec le wifi, un balcon, une chaine hifi, Air Conditionné.\r\n\r\nL\'immeuble du 19ème siècle est équipé avec : un parking, un ascenseur, un code d entrée, vidéophone, une concierge.\r\n',100);
/*!40000 ALTER TABLE `studio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(15) NOT NULL,
  `Prenom` varchar(15) NOT NULL,
  `Pseudo` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` longtext NOT NULL,
  `is_admin` int(11) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Letang','Nicolas','sanji','nicolas@travail.com','f7c3bc1d808e04732adf679965ccc34ca7ae3441',0),(2,'Letang','Nicolas','sanji','nicolas@travail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',0),(3,'pierre ','pauls ','popol','popol@pol.fr','f7c3bc1d808e04732adf679965ccc34ca7ae3441',0),(4,'Letang','Nicolas','s4nj1','fake@mail.fr','8a847452935321628e2c31c3092860dd9519c852',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-13 16:51:06
