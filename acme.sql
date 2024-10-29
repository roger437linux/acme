-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: acme.mysql.database.azure.com    Database: acme_filmes
-- ------------------------------------------------------
-- Server version	8.0.37-azure

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
-- Table structure for table `ator_filme`
--

DROP TABLE IF EXISTS `ator_filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ator_filme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_filme` int NOT NULL,
  `id_ator` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FilmeAtor_Filme` (`id_filme`),
  KEY `FilmeAtor_Ator` (`id_ator`),
  CONSTRAINT `FilmeAtor_Ator` FOREIGN KEY (`id_ator`) REFERENCES `atores` (`id`),
  CONSTRAINT `FilmeAtor_Filme` FOREIGN KEY (`id_filme`) REFERENCES `filmes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ator_filme`
--

LOCK TABLES `ator_filme` WRITE;
/*!40000 ALTER TABLE `ator_filme` DISABLE KEYS */;
INSERT INTO `ator_filme` VALUES
(1,1,2),
(2,1,3),
(3,1,4),
(4,1,5),
(5,1,6),
(6,1,7),
(7,1,8),
(8,1,9),
(9,1,10),
(10,2,11),
(11,2,12),
(12,2,13),
(13,3,14),
(14,3,15),
(15,3,16),
(16,3,17),
(17,4,18),
(18,4,19),
(19,4,20),
(20,5,21),
(21,5,22),
(22,5,23),
(23,5,24),
(24,6,25),
(25,6,26),
(26,6,27),
(27,6,28),
(28,6,29),
(29,7,30),
(30,7,31),
(31,7,32),
(32,7,33),
(33,8,34),
(34,8,35),
(35,8,36),
(36,8,37),
(37,8,38),
(38,9,39),
(39,9,40),
(40,9,41),
(41,9,42),
(42,9,43),
(43,10,1),
(44,10,44),
(45,10,45),
(46,10,46),
(47,10,47),
(48,10,48),
(49,10,49),
(50,10,50),
(51,10,15),
(52,10,33);
/*!40000 ALTER TABLE `ator_filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ator_nacionalidade`
--

DROP TABLE IF EXISTS `ator_nacionalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ator_nacionalidade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_ator` int NOT NULL,
  `id_nacionalidade` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `NacionalidadeDoAtor_ator` (`id_ator`),
  KEY `NacionalidadeDoAtor_nacionalidade` (`id_nacionalidade`),
  CONSTRAINT `NacionalidadeDoAtor_ator` FOREIGN KEY (`id_ator`) REFERENCES `atores` (`id`),
  CONSTRAINT `NacionalidadeDoAtor_nacionalidade` FOREIGN KEY (`id_nacionalidade`) REFERENCES `nacionalidades` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ator_nacionalidade`
--

LOCK TABLES `ator_nacionalidade` WRITE;
/*!40000 ALTER TABLE `ator_nacionalidade` DISABLE KEYS */;
INSERT INTO `ator_nacionalidade` VALUES
(1,1,63),
(2,2,63),
(3,3,63),
(4,4,63),
(5,5,63),
(6,6,120),
(7,6,63),
(8,7,63),
(9,8,63),
(10,9,63),
(11,10,63),
(12,11,63),
(13,12,63),
(14,13,63),
(15,14,63),
(16,15,63),
(17,16,63),
(18,17,63),
(19,18,63),
(20,19,63),
(21,20,149),
(22,21,63),
(23,22,63),
(24,23,63),
(25,24,63),
(26,25,63),
(27,26,63),
(28,27,63),
(29,28,63),
(30,29,63),
(31,30,35),
(32,30,63),
(33,31,149),
(34,32,63),
(35,33,135),
(36,34,97),
(37,35,97),
(38,36,97),
(39,37,97),
(40,38,97),
(41,39,63),
(42,40,63),
(43,41,63),
(44,42,63),
(45,43,63),
(46,44,63),
(47,45,63),
(48,46,12),
(49,47,63),
(50,47,52),
(51,48,63),
(52,49,63),
(53,50,63);
/*!40000 ALTER TABLE `ator_nacionalidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atores`
--

DROP TABLE IF EXISTS `atores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `nascimento` date NOT NULL,
  `falecimento` date DEFAULT NULL,
  `foto` varchar(200) NOT NULL,
  `id_sexo` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SexoAtor` (`id_sexo`),
  CONSTRAINT `SexoAtor` FOREIGN KEY (`id_sexo`) REFERENCES `sexos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atores`
--

LOCK TABLES `atores` WRITE;
/*!40000 ALTER TABLE `atores` DISABLE KEYS */;
INSERT INTO `atores` VALUES
(1,'Robert Downey Jr.','1965-04-04',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/18/06/29/00/35/0101925.jpg',1),
(2,'Adam Sandler','1966-09-09',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/17/06/20/16/57/103535.jpg',1),
(3,'Chris Rock','1965-02-07',NULL,'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/93/31/36/20248941.jpg',1),
(4,'Kevin James','1965-04-26',NULL,'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/94/12/15/20304513.jpg',1),
(5,'David Spade','1964-07-22',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/18/06/29/16/57/2462090.jpg',1),
(6,'Salma Hayek','1966-09-02',NULL,'https://br.web.img2.acsta.net/c_310_420/pictures/19/11/19/01/46/3123891.jpg',2),
(7,'Cameron Boyce','1999-05-28','2019-07-06','https://br.web.img3.acsta.net/c_310_420/pictures/19/03/15/21/15/2143380.jpg',1),
(8,'Jake Goldberg','1996-02-07',NULL,'https://m.media-amazon.com/images/M/MV5BNmNkNTVhMGYtZjE5Mi00MjQ0LWExNTYtZjU2NDczM2JmNTVjXkEyXkFqcGdeQXVyMTM2MTE1Nzg0._V1_.jpg',1),
(9,'Alexys Nycole Sanchez','2003-06-29',NULL,'https://m.media-amazon.com/images/M/MV5BNzMyODg5MDEtOWQ4ZS00MzE5LTllYTYtNGRhOGJmYzBmY2U3XkEyXkFqcGdeQXVyMjEyMzc2NTk@._V1_FMjpg_UX1000_.jpg',2),
(10,'Taylor Lautner','1992-02-11',NULL,'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/95/53/48/20412947.jpg',1),
(11,'Jason Schwartzman','1980-06-26',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/18/09/19/22/28/1040525.jpg',1),
(12,'Rashida Jones','1976-02-25',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/18/09/13/19/52/4932131.jpg',2),
(13,'J.K. Simmons','1955-01-09',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/15/10/21/14/41/204594.jpg',1),
(14,'John Travolta','1954-02-18',NULL,'https://br.web.img2.acsta.net/c_310_420/medias/nmedia/18/35/26/97/20186850.jpg',1),
(15,'Samuel L. Jackson','1948-12-21',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/18/07/26/21/10/4344066.jpg',1),
(16,'Bruce Willis','1955-03-19',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/18/07/26/20/59/1349875.jpg',1),
(17,'Uma Thurman','1970-04-29',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/19/08/29/21/14/0483094.jpg',2),
(18,'Edward Norton','1969-08-18',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/18/07/25/21/56/3416190.jpg',1),
(19,'Brad Pitt','1963-12-18',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/19/03/19/17/23/0985270.jpg',1),
(20,'Helena Bonham Carter','1966-05-26',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/18/09/03/22/10/1336392.jpg',2),
(21,'Nicolas Cage','1964-01-07',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/15/07/20/18/14/582462.jpg',1),
(22,'Eva Mendes','1974-03-05',NULL,'https://br.web.img2.acsta.net/c_310_420/pictures/19/05/08/00/26/4952129.jpg',2),
(23,'Sam Elliott','1944-08-09',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/18/09/17/15/38/5936959.jpg',1),
(24,'Wes Bentley','1978-09-04',NULL,'https://br.web.img2.acsta.net/c_310_420/pictures/15/06/01/16/47/325178.jpg',1),
(25,'Elijah Wood','1981-01-28',NULL,'https://br.web.img2.acsta.net/c_310_420/pictures/15/05/28/17/28/399384.jpg',1),
(26,'Sean Astin','1971-02-25',NULL,'https://br.web.img2.acsta.net/c_310_420/pictures/19/07/08/16/07/4147422.jpg',1),
(27,'Viggo Mortensen','1958-10-20',NULL,'https://br.web.img2.acsta.net/c_310_420/pictures/18/09/18/21/23/3866488.jpg',1),
(28,'Ian McKellen','1939-05-25',NULL,'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/92/43/17/20198915.jpg',1),
(29,'Ian Holm','1931-09-12','2020-06-19','https://br.web.img3.acsta.net/c_310_420/pictures/15/07/16/21/22/426928.jpg',1),
(30,'Ryan Reynolds','1976-10-23',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/15/07/28/17/15/280194.jpg',1),
(31,'Jodie Comer','1993-03-11',NULL,'https://br.web.img2.acsta.net/c_310_420/pictures/20/01/06/23/10/1440387.jpg',2),
(32,'Joe Keery','1994-04-24',NULL,'https://br.web.img2.acsta.net/c_310_420/pictures/19/07/08/15/54/5563340.jpg',1),
(33,'Taika Waititi','1975-08-16',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/19/10/16/00/10/5197437.jpg',1),
(34,'Jun Shison','1995-03-05',NULL,'https://br.web.img2.acsta.net/c_310_420/pictures/19/03/20/17/53/1795301.jpg',1),
(35,'Mamoru Miyano','1983-06-08',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/15/12/15/19/17/507859.jpg',1),
(36,'Yûki Kaji','1985-09-03',NULL,'https://br.web.img2.acsta.net/c_310_420/pictures/17/08/03/19/02/204125.jpg',1),
(37,'Shin\'ichirô Miki','1968-03-18',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/21/07/06/17/44/3935117.jpg',1),
(38,'Sayaka Senbongi','1995-11-24',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/21/07/14/17/08/5273739.jpg',2),
(39,'Shawn Wayans','1971-01-19',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/16/03/03/13/58/317633.jpg',1),
(40,'Marlon Wayans','1972-07-23',NULL,'https://br.web.img2.acsta.net/c_310_420/pictures/15/06/11/14/51/401681.jpg',1),
(41,'Maitland Ward','1977-02-03',NULL,'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/94/42/50/20328099.jpg',2),
(42,'Anne Dudek','1975-03-22',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/17/03/24/15/25/154337.jpg',2),
(43,'Terry Crews','1968-07-30',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/18/08/01/20/13/3535250.jpg',1),
(44,'Chris Evans','1981-06-13',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/19/04/22/19/59/2129500.jpg',1),
(45,'Mark Ruffalo','1967-11-22',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/19/04/22/20/02/3083743.jpg',1),
(46,'Chris Hemsworth','1983-08-11',NULL,'https://br.web.img2.acsta.net/c_310_420/pictures/19/06/05/12/04/5240675.jpg',1),
(47,'Scarlett Johansson','1984-11-22',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/20/01/07/02/04/3952839.jpg',2),
(48,'Jeremy Renner','1971-01-07',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/19/04/23/01/02/3070093.jpg',1),
(49,'Brie Larson','1989-10-01',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/16/02/29/14/46/104223.jpg',2),
(50,'Paul Rudd','1969-04-06',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/18/07/05/00/54/2308079.jpg',1);
/*!40000 ALTER TABLE `atores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classificacao_indicativa`
--

DROP TABLE IF EXISTS `classificacao_indicativa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classificacao_indicativa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idade` varchar(2) NOT NULL,
  `icone` varchar(200) NOT NULL,
  `descricao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classificacao_indicativa`
--

LOCK TABLES `classificacao_indicativa` WRITE;
/*!40000 ALTER TABLE `classificacao_indicativa` DISABLE KEYS */;
INSERT INTO `classificacao_indicativa` VALUES
(1,'L','https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/DJCTQ_-_L.svg/75px-DJCTQ_-_L.svg.png','Violência: Arma sem violência; Morte sem Violência; Ossada ou esqueleto sem violência; Violência Fantasiosa.\nSexo e Nudez: Nudez não erótica.\nDrogas: Consumo moderado ou insinuado de droga lícita.'),
(2,'10','https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/DJCTQ_-_10.svg/75px-DJCTQ_-_10.svg.png','Violência: Angústia; Arma com violência; Ato criminoso sem violência; Linguagem depreciativa; Medo ou tensão; Ossada ou esqueleto com resquício de ato de violência\nSexo e Nudez: Conteúdo educativo sobre sexo.\nDrogas: Descrição do consumo de droga lícita; Discussão sobre o tema tráfico de drogas[15]; Uso medicinal de droga ilícita.'),
(3,'12','https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/DJCTQ_-_12.svg/75px-DJCTQ_-_12.svg.png','Violência: Agressão verbal; Assédio sexual; Ato violento; Ato violento contra animal; Bullying; Descrição de violência; Exposição ao perigo; Exposição de cadáver; Exposição de pessoa em situação constrangedora ou degradante; Lesão corporal; Morte derivada de ato heróico; Morte natural ou acidental com dor ou violência; Obscenidade; Presença de sangue; Sofrimento da vítima; Supervalorização da beleza física; Supervalorização do consumo; Violência psicológica.\nSexo e Nudez: Apelo sexual; Carícia sexual; Insinuação sexual; Linguagem chula; Linguagem de conteúdo sexual; Masturbação; Nudez velada; Simulação de sexo.\nDrogas: Consumo de droga lícita; Consumo irregular de medicamento; Discussão sobre legalização de droga ilícita; Indução ao uso de droga lícita; Menção a droga ilícita.'),
(4,'14','https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/DJCTQ_-_14.svg/75px-DJCTQ_-_14.svg.png','Violência: Aborto;\nAssassinato; Estigma ou preconceito; Eutanásia;\nExploração sexual; Morte intencional; Pena de morte.\nSexo e Nudez: Erotização; Nudez; Prostituição; Relação sexual; Vulgaridade.\nDrogas: Consumo insinuado de droga ilícita; Descrição do consumo ou tráfico de droga ilícita.'),
(5,'16','https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/DJCTQ_-_16.svg/75px-DJCTQ_-_16.svg.png','Violência: Ato de pedofilia; Crime de ódio; Estupro ou coação sexual; Mutilação; Suicídio; Tortura; Violência gratuita ou banalização da violência.\nSexo e Nudez: Relação sexual intensa.\nDrogas: Consumo de droga ilícita; Indução ao consumo de droga ilícita; Produção ou tráfico de droga ilícita.'),
(6,'18','https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/DJCTQ_-_18.svg/75px-DJCTQ_-_18.svg.png','Violência: Apologia à violência; Crueldade.\nSexo e Nudez: Sexo explícito; Situação sexual complexa ou de forte impacto.\nDrogas: Apologia ao uso de droga ilícita.');
/*!40000 ALTER TABLE `classificacao_indicativa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diretor_filme`
--

DROP TABLE IF EXISTS `diretor_filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diretor_filme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_diretor` int NOT NULL,
  `id_filme` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FilmeDiretor_Diretor` (`id_diretor`),
  KEY `FilmeDiretor_Filme` (`id_filme`),
  CONSTRAINT `FilmeDiretor_Diretor` FOREIGN KEY (`id_diretor`) REFERENCES `diretores` (`id`),
  CONSTRAINT `FilmeDiretor_Filme` FOREIGN KEY (`id_filme`) REFERENCES `filmes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diretor_filme`
--

LOCK TABLES `diretor_filme` WRITE;
/*!40000 ALTER TABLE `diretor_filme` DISABLE KEYS */;
INSERT INTO `diretor_filme` VALUES
(1,1,3),
(2,2,10),
(3,3,10),
(4,4,1),
(5,5,2),
(6,6,4),
(7,7,5),
(8,8,6),
(9,9,7),
(10,10,8),
(11,11,9);
/*!40000 ALTER TABLE `diretor_filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diretor_nacionalidade`
--

DROP TABLE IF EXISTS `diretor_nacionalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diretor_nacionalidade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_diretor` int NOT NULL,
  `id_nacionalidade` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `NacionalidadeDoDiretor_diretor` (`id_diretor`),
  KEY `NacionalidadeDoDiretor_nacionalidade` (`id_nacionalidade`),
  CONSTRAINT `NacionalidadeDoDiretor_diretor` FOREIGN KEY (`id_diretor`) REFERENCES `diretores` (`id`),
  CONSTRAINT `NacionalidadeDoDiretor_nacionalidade` FOREIGN KEY (`id_nacionalidade`) REFERENCES `nacionalidades` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diretor_nacionalidade`
--

LOCK TABLES `diretor_nacionalidade` WRITE;
/*!40000 ALTER TABLE `diretor_nacionalidade` DISABLE KEYS */;
INSERT INTO `diretor_nacionalidade` VALUES
(1,1,63),
(2,2,63),
(3,3,63),
(4,4,63),
(5,5,62),
(6,6,63),
(7,7,63),
(8,8,135),
(9,9,35),
(10,9,63),
(11,10,97),
(12,11,63);
/*!40000 ALTER TABLE `diretor_nacionalidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diretores`
--

DROP TABLE IF EXISTS `diretores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diretores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `nascimento` date NOT NULL,
  `falecimento` date DEFAULT NULL,
  `foto` varchar(200) NOT NULL,
  `id_sexo` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SexoDiretor` (`id_sexo`),
  CONSTRAINT `SexoDiretor` FOREIGN KEY (`id_sexo`) REFERENCES `sexos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diretores`
--

LOCK TABLES `diretores` WRITE;
/*!40000 ALTER TABLE `diretores` DISABLE KEYS */;
INSERT INTO `diretores` VALUES
(1,'Quentin Tarantino','1963-03-27',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/19/03/19/17/22/2985063.jpg',1),
(2,'Joe Russo','1971-07-08',NULL,'https://br.web.img2.acsta.net/c_310_420/pictures/15/11/24/17/01/231901.jpg',1),
(3,'Anthony Russo','1970-02-03',NULL,'https://br.web.img2.acsta.net/c_310_420/pictures/15/11/24/16/59/250993.jpg',1),
(4,'Dennis Dugan','1946-09-05',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/14/01/15/19/07/112586.jpg',1),
(5,'Sergio Pablos','1970-01-01',NULL,'https://static.wikia.nocookie.net/disney/images/9/91/Sergio_Pablos.webp/revision/latest?cb=20211109044038',1),
(6,'David Fincher','1946-08-28',NULL,'https://br.web.img2.acsta.net/c_310_420/medias/nmedia/18/64/19/48/19965756.jpg',1),
(7,'Mark Steven Johnson','1964-10-30',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/15/05/27/21/15/457245.jpg',1),
(8,'Peter Jackson','1961-10-31',NULL,'https://br.web.img2.acsta.net/c_310_420/medias/nmedia/18/92/91/45/20224862.jpg',1),
(9,'Shawn Levy','1968-07-23',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/15/06/10/18/29/294598.jpg',1),
(10,'Tetsurô Araki','1976-11-05',NULL,'https://images.static-bluray.com/products/22/41785_1_large.jpg',1),
(11,'Keenen Ivory Wayans','1958-06-08',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/15/05/28/20/24/237848.jpg',1);
/*!40000 ALTER TABLE `diretores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favoritos`
--

DROP TABLE IF EXISTS `favoritos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favoritos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `id_filme` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `UsuarioFavorito_usuario` (`id_usuario`),
  KEY `UsuarioFavorito_filme` (`id_filme`),
  CONSTRAINT `UsuarioFavorito_filme` FOREIGN KEY (`id_filme`) REFERENCES `filmes` (`id`),
  CONSTRAINT `UsuarioFavorito_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favoritos`
--

LOCK TABLES `favoritos` WRITE;
/*!40000 ALTER TABLE `favoritos` DISABLE KEYS */;
INSERT INTO `favoritos` VALUES
(1,1,3),
(2,1,6),
(3,2,3),
(4,1,2),
(5,1,1),
(6,1,7),
(7,1,8),
(8,1,9),
(9,1,4),
(10,1,5),
(11,1,2);
/*!40000 ALTER TABLE `favoritos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filme_genero`
--

DROP TABLE IF EXISTS `filme_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filme_genero` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_filme` int NOT NULL,
  `id_genero` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FilmeGenero_Filme` (`id_filme`),
  KEY `FilmeGenero_Genero` (`id_genero`),
  CONSTRAINT `FilmeGenero_Filme` FOREIGN KEY (`id_filme`) REFERENCES `filmes` (`id`),
  CONSTRAINT `FilmeGenero_Genero` FOREIGN KEY (`id_genero`) REFERENCES `generos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme_genero`
--

LOCK TABLES `filme_genero` WRITE;
/*!40000 ALTER TABLE `filme_genero` DISABLE KEYS */;
INSERT INTO `filme_genero` VALUES
(1,1,6),
(2,1,10),
(3,2,3),
(4,2,5),
(5,2,10),
(6,3,1),
(7,3,8),
(8,3,20),
(9,4,8),
(10,4,20),
(11,5,1),
(12,5,8),
(13,5,11),
(14,5,12),
(15,5,19),
(16,6,1),
(17,6,5),
(18,6,8),
(19,6,11),
(20,6,14),
(21,7,1),
(22,7,5),
(23,7,6),
(24,7,13),
(25,7,17),
(26,8,1),
(27,8,3),
(28,8,4),
(29,8,5),
(30,8,8),
(31,8,13),
(32,9,6),
(33,9,10),
(34,10,1),
(35,10,13),
(36,10,14),
(37,10,19);
/*!40000 ALTER TABLE `filme_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filmes`
--

DROP TABLE IF EXISTS `filmes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filmes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `sinopse` text NOT NULL,
  `duracao` time NOT NULL,
  `data_lancamento` date NOT NULL,
  `data_relancamento` date DEFAULT NULL,
  `foto_capa` varchar(200) NOT NULL,
  `foto_fundo` varchar(200) NOT NULL,
  `cor` varchar(7) NOT NULL,
  `id_classificacao_indicativa` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `Classificacao_filme` (`id_classificacao_indicativa`),
  CONSTRAINT `Classificacao_filme` FOREIGN KEY (`id_classificacao_indicativa`) REFERENCES `classificacao_indicativa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmes`
--

LOCK TABLES `filmes` WRITE;
/*!40000 ALTER TABLE `filmes` DISABLE KEYS */;
INSERT INTO `filmes` VALUES
(1,'Gente Grande 2','Lenny (Adam Sandler), Eric (Kevin James), Kurt (Chris Rock) e Marcus (David Spade) voltam a morar na mesma cidade. Lá, suas vidas seguem o curso natural dos adultos, seja pela existência dos problemas com as esposas para uns, com os filhos para outros, ou tudo junto e misturado. A coisa dá uma complicada quando os marmanjos pretendiam matar a saudade num dia de folga e acabam encarando os jovens da região, que agora dominam o lugar. É quando eles acabam tendo que enfrentar alguns fantasmas do passado, entre eles a covardia diante de valentões e o famigerado bullying na escola. Mas algumas surpresas estão para acontecer, como a chegada de um filho rebelde para Marcus domar, uma possível gravidez e uma festa de arromba, que não vai deixar pedra sobre pedra.','01:41:00','2013-08-16',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/210/049/21004903_20130510170049514.jpg','https://occ-0-2794-2219.1.nflxso.net/dnm/api/v6/E8vDc_W8CLv7-yMQu8KMEC7Rrr8/AAAABQDRNfcHClquNiwuG4sA97e769TjAeNCiVbX31NdgzVU4uMZCcobLI1wFBO9sRpSTHD98gWlEegOjdITw_E6WFksoInYPbYpA9XW.jpg?r=075','#299EFF',3),
(2,'Klaus','Em Smeerensburg, remota ilha localizada acima do Círculo Ártico, Jesper (Jason Schwartzman) é um estudante da Academia Postal que enfrenta um sério problema: os habitantes da cidade brigam o tempo todo, sem demonstrar o menor interesse por cartas. Prestes a desistir da profissão, ele encontra apoio na professora Alva (Rashida Jones) e no misterioso carpinteiro Klaus (J.K. Simmons), que vive sozinho em sua casa repleta de brinquedos feitos a mão.','01:36:00','2020-04-08',NULL,'https://br.web.img2.acsta.net/c_310_420/pictures/19/10/09/17/03/0582059.jpg','https://sm.ign.com/ign_br/screenshot/default/images-8_g9k6.jpg','#FF2929',2),
(3,'Pulp Fiction - Tempo de Violência','Vincent Vega (John Travolta) e Jules Winnfield (Samuel L. Jackson) são dois assassinos profissionais trabalham fazendo cobranças para Marsellus Wallace (Ving Rhames), um poderosos gângster. Vega é forçado a sair com a garota do chefe, temendo passar dos limites; enquanto isso, o pugilista Butch Coolidge (Bruce Willis) se mete em apuros por ganhar luta que deveria perder.','02:29:00','1995-02-18',NULL,'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/87/16/32/19872655.jpg','https://tm.ibxk.com.br/2021/11/03/03153403215312.jpg','#DD7C55',6),
(4,'Clube da Luta','Jack (Edward Norton) é um executivo jovem, trabalha como investigador de seguros, mora confortavelmente, mas ele está ficando cada vez mais insatisfeito com sua vida medíocre. Para piorar ele está enfrentando uma terrível crise de insônia, até que encontra uma cura inusitada para o sua falta de sono ao frequentar grupos de auto-ajuda. Nesses encontros ele passa a conviver com pessoas problemáticas como a viciada Marla Singer (Helena Bonham Carter) e a conhecer estranhos como Tyler Durden (Brad Pitt). Misterioso e cheio de ideias, Tyler apresenta para Jack um grupo secreto que se encontra para extravasar suas angústias e tensões através de violentos combates corporais.','02:19:00','1999-08-29',NULL,'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/90/95/96/20122166.jpg','https://c4.wallpaperflare.com/wallpaper/752/9/318/movie-fight-club-brad-pitt-edward-norton-wallpaper-preview.jpg','#98D40E',6),
(5,'Motoqueiro Fantasma','Quando Johnny Blaze (Nicolas Cage) descobre que seu pai tem câncer terminal, ele aceita um pacto com Mefistófeles, dando sua alma pela saúde de seu amado pai. Em troca Johnny se transforma à noite no Motoqueiro Fantasma, o justiceiro de alguns demônios bastante cruéis. Mas o diabo o engana e Johnny então deixa sua cidade, seus amigos e sua namorada. Muitos anos depois, agora trabalhando como dublê, Johnny Blaze torna-se famoso, e reencontra Roxanne, sua namorada da adolescência, que virou repórter de televisão. Ainda forçado a obedecer as ordens de Mefistófeles, Johnny decide enfrentá-lo de forma a usar sua maldição para proteger pessoas inocentes.','01:50:00','2007-03-02',NULL,'https://br.web.img2.acsta.net/c_310_420/medias/nmedia/18/90/84/14/20115747.jpg','https://i0.wp.com/nerdizmo.uai.com.br/wp-content/uploads/sites/29/2023/03/nicolas-cage-afirma-nao-precisar-estar-no-mcu.jpeg?fit=1280%2C720&ssl=1','#F02C02',4),
(6,'O Senhor dos Anéis - A Sociedade do Anel','Numa terra fantástica e única, chamada Terra-Média, um hobbit (seres de estatura entre 80 cm e 1,20 m, com pés peludos e bochechas um pouco avermelhadas) recebe de presente de seu tio o Um Anel, um anel mágico e maligno que precisa ser destruído antes que caia nas mãos do mal. Para isso o hobbit Frodo (Elijah Woods) terá um caminho árduo pela frente, onde encontrará perigo, medo e personagens bizarros. Ao seu lado para o cumprimento desta jornada aos poucos ele poderá contar com outros hobbits, um elfo, um anão, dois humanos e um mago, totalizando 9 pessoas que formarão a Sociedade do Anel.','02:58:00','2002-01-01',NULL,'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/92/91/32/20224832.jpg','https://static01.nyt.com/images/2021/12/20/arts/19lotr-fans/merlin_10447475_b4b04c7c-8b20-483c-8ca2-6214e5dd302c-articleLarge.jpg?quality=75&auto=webp&disable=upscale','#E0E30D',3),
(7,'Free Guy - Assumindo o Controle','Em Free Guy - Assumindo o Controle, Guy é um personagem não-jogador (NPC) em Free City, um jogo de RPG online multijogador massivo (MMORPG) desenvolvido pela Soonami Studio. Sem saber que o mundo em que vive é um videogame, ele trabalha como caixa de banco ao lado de seu melhor amigo, o segurança do banco Buddy, em uma entediante rotina. No mundo real, Millie Rusk está tentando encontrar evidências de que o código-fonte que ela escreveu junto com seu amigo Walter McKey foi roubado pelo desenvolvedor chefe de Soonami, Antwan Hovachelik. No jogo, Millie, que joga como Molotov Girl, chama a atenção de Guy cantando sua música favorita, de Mariah Carey, e ele começa a se desviar de sua programação. Pegando um par de óculos de sol de um jogador roubando o banco, Guy vê Free City através de uma versão única da interface do jogador e surpreendentemente vira um jogador. Agora ele precisa aceitar sua realidade e lidar com o fato de que é o único que pode salvar o mundo.','01:55:00','2021-08-19',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/21/06/10/20/47/1652456.jpg','https://isabelaboscov.files.wordpress.com/2021/09/free-guy_feat.jpg','#0DD3E3',3),
(8,'Bubble','Em Bubble, após uma chuva de bolhas, uma cidade vira um mundo sem gravidade, completamente isolada dos outros locais. Por essa particularidade, o lugar vira um refúgio de  jovens órfãos, praticantes de parkour. Hibiki, uma dessas crianças, acaba caindo no mar, fora da cidade sem gravidade, após uma manobra arriscada. Ele cai no mar, mas é salvo por Uta, uma garota com poderes especiais. E esse encontro pode mudar a vida de ambos.','01:40:00','2022-04-28',NULL,'https://br.web.img3.acsta.net/c_310_420/pictures/21/12/07/02/28/1507296.jpg','https://occ-0-2794-2219.1.nflxso.net/dnm/api/v6/6AYY37jfdO6hpXcMjf9Yu5cnmO0/AAAABbmBI_ETtHxHcOEngBqHGH_6eWPpqXXeS45G50FcXvtj7oYLHurC3BSXEAycHYUPW6oKeOsyIBvLSnrqFwlT1T57afj9_HLhUeQy.jpg?r=6dc','#0DD3E3',3),
(9,'As Branquelas','Em As Branquelas, os irmãos Marcus (Marlon Wayans) e Kevin Copeland (Shawn Wayans) são detetives do FBI que estão com problemas no trabalho. A última investigação da dupla foi um grande fracasso e eles estão sob a ameaça de serem demitidos. Quando um plano para sequestrar as mimadas irmãs Brittany (Maitland Ward) e Tiffany Wilson (Anne Dudek) é descoberto, o caso é entregue aos principais rivais dos irmãos Copeland, os agentes Vincent Gomez (Eddie Velez) e Jack Harper (Lochlyn Munro). Para aumentar ainda mais a humilhação da dupla, eles são escalados para escoltar as jovens mimadas do aeroporto até o local de um evento pelo qual elas esperaram por meses. Porém no trajeto um acidente de carro provoca um verdadeiro desastre: enquanto uma das irmãs arranha o nariz, a outra corta o lábio. Desesperadas, elas se recusam a ir ao evento. É quando,para salvar o emprego, Marcus e Kevin decidem por assumir as identidades das irmãs.','01:49:00','2004-08-27','2005-02-26','https://br.web.img2.acsta.net/c_310_420/medias/nmedia/18/97/52/82/20534159.jpg','https://sm.ign.com/ign_br/screenshot/default/blob_v2xz.jpg','#ffb5a5',3),
(10,'Vingadores: Ultimato','Em Vingadores: Ultimato, após Thanos eliminar metade das criaturas vivas em Vingadores: Guerra Infinita, os heróis precisam lidar com a dor da perda de amigos e seus entes queridos. Com Tony Stark (Robert Downey Jr.) vagando perdido no espaço sem água nem comida, o Capitão América/Steve Rogers (Chris Evans) e a Viúva Negra/Natasha Romanov (Scarlett Johansson) precisam liderar a resistência contra o titã louco.','03:01:00','2019-04-25',NULL,'https://br.web.img2.acsta.net/c_310_420/pictures/19/04/26/17/30/2428965.jpg','https://assets.b9.com.br/wp-content/uploads/2019/06/EBC2000_v829.1233-1280x720.jpg','#563f8c',3);
/*!40000 ALTER TABLE `filmes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES
(1,'Ação'),
(2,'Adolescente'),
(3,'Animação'),
(4,'Anime'),
(5,'Aventura'),
(6,'Comédia'),
(7,'Documentário'),
(8,'Drama'),
(9,'Esporte'),
(10,'Família'),
(11,'Fantasia'),
(12,'Faroeste'),
(13,'Ficção Científica'),
(14,'Guerra'),
(15,'Musical'),
(16,'Policial'),
(17,'Romance'),
(18,'Slasher'),
(19,'Super-herói'),
(20,'Suspense'),
(21,'Terror');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nacionalidades`
--

DROP TABLE IF EXISTS `nacionalidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nacionalidades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pais` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nacionalidades`
--

LOCK TABLES `nacionalidades` WRITE;
/*!40000 ALTER TABLE `nacionalidades` DISABLE KEYS */;
INSERT INTO `nacionalidades` VALUES
(1,'Afeganistão'),
(2,'África do Sul'),
(3,'Albânia'),
(4,'Alemanha'),
(5,'Andorra'),
(6,'Angola'),
(7,'Antígua e Barbuda'),
(8,'Arábia Saudita'),
(9,'Argélia'),
(10,'Argentina'),
(11,'Armênia'),
(12,'Austrália'),
(13,'Áustria'),
(14,'Azerbaijão'),
(15,'Bahamas'),
(16,'Bangladesh'),
(17,'Barbados'),
(18,'Barein'),
(19,'Bélgica'),
(20,'Belize'),
(21,'Benin'),
(22,'Bielorrússia'),
(23,'Bolívia'),
(24,'Bósnia e Herzegovina'),
(25,'Botsuana'),
(26,'Brasil'),
(27,'Brunei'),
(28,'Bulgária'),
(29,'Burquina Faso'),
(30,'Burundi'),
(31,'Butão'),
(32,'Cabo Verde'),
(33,'Camarões'),
(34,'Camboja'),
(35,'Canadá'),
(36,'Catar'),
(37,'Cazaquistão'),
(38,'Chade'),
(39,'Chile'),
(40,'China'),
(41,'Chipre'),
(42,'Cingapura'),
(43,'Colômbia'),
(44,'Comores'),
(45,'Congo'),
(46,'Coreia do Norte'),
(47,'Coreia do Sul'),
(48,'Costa do Marfim'),
(49,'Costa Rica'),
(50,'Croácia'),
(51,'Cuba'),
(52,'Dinamarca'),
(53,'Djibuti'),
(54,'Dominica'),
(55,'Egito'),
(56,'El Salvador'),
(57,'Emirados Árabes Unidos'),
(58,'Equador'),
(59,'Eritreia'),
(60,'Eslováquia'),
(61,'Eslovênia'),
(62,'Espanha'),
(63,'Estados Unidos'),
(64,'Estônia'),
(65,'Eswatini'),
(66,'Etiópia'),
(67,'Fiji'),
(68,'Filipinas'),
(69,'Finlândia'),
(70,'França'),
(71,'Gabão'),
(72,'Gâmbia'),
(73,'Gana'),
(74,'Geórgia'),
(75,'Granada'),
(76,'Grécia'),
(77,'Guatemala'),
(78,'Guiana'),
(79,'Guiné'),
(80,'Guiné Equatorial'),
(81,'Guiné-Bissau'),
(82,'Haiti'),
(83,'Honduras'),
(84,'Hungria'),
(85,'Iémen'),
(86,'Ilhas Marshall'),
(87,'Ilhas Salomão'),
(88,'Índia'),
(89,'Indonésia'),
(90,'Irã'),
(91,'Iraque'),
(92,'Irlanda'),
(93,'Islândia'),
(94,'Israel'),
(95,'Itália'),
(96,'Jamaica'),
(97,'Japão'),
(98,'Jordânia'),
(99,'Kiribati'),
(100,'Kosovo'),
(101,'Kuwait'),
(102,'Laos'),
(103,'Lesoto'),
(104,'Letônia'),
(105,'Líbano'),
(106,'Libéria'),
(107,'Líbia'),
(108,'Liechtenstein'),
(109,'Lituânia'),
(110,'Luxemburgo'),
(111,'Madagascar'),
(112,'Malásia'),
(113,'Malaui'),
(114,'Maldivas'),
(115,'Mali'),
(116,'Malta'),
(117,'Marrocos'),
(118,'Maurício'),
(119,'Mauritânia'),
(120,'México'),
(121,'Micronésia'),
(122,'Moçambique'),
(123,'Moldávia'),
(124,'Mônaco'),
(125,'Mongólia'),
(126,'Montenegro'),
(127,'Myanmar'),
(128,'Namíbia'),
(129,'Nauru'),
(130,'Nepal'),
(131,'Nicarágua'),
(132,'Níger'),
(133,'Nigéria'),
(134,'Noruega'),
(135,'Nova Zelândia'),
(136,'Omã'),
(137,'Países Baixos'),
(138,'Palau'),
(139,'Panamá'),
(140,'Papua-Nova Guiné'),
(141,'Paquistão'),
(142,'Paraguai'),
(143,'Peru'),
(144,'Polônia'),
(145,'Portugal'),
(146,'Quênia'),
(147,'Quirguistão'),
(148,'Quiribati'),
(149,'Reino Unido'),
(150,'República Centro-Africana'),
(151,'República Checa'),
(152,'República Democrática do Congo'),
(153,'República Dominicana'),
(154,'Romênia'),
(155,'Ruanda'),
(156,'Rússia'),
(157,'Salvador'),
(158,'Samoa'),
(159,'San Marino'),
(160,'Santa Lúcia'),
(161,'São Cristóvão e Nevis'),
(162,'São Tomé e Príncipe'),
(163,'São Vicente e Granadinas'),
(164,'Seicheles'),
(165,'Senegal'),
(166,'Serra Leoa'),
(167,'Sérvia'),
(168,'Síria'),
(169,'Somália'),
(170,'Sri Lanka'),
(171,'Suazilândia'),
(172,'Sudão'),
(173,'Sudão do Sul'),
(174,'Suécia'),
(175,'Suíça'),
(176,'Suriname'),
(177,'Tailândia'),
(178,'Taiwan'),
(179,'Tajiquistão'),
(180,'Tanzânia'),
(181,'Timor-Leste'),
(182,'Togo'),
(183,'Tonga'),
(184,'Trinidad e Tobago'),
(185,'Tunísia'),
(186,'Turcomenistão'),
(187,'Turquia'),
(188,'Tuvalu'),
(189,'Ucrânia'),
(190,'Uganda'),
(191,'Uruguai'),
(192,'Uzbequistão'),
(193,'Vanuatu'),
(194,'Vaticano'),
(195,'Venezuela'),
(196,'Vietnã'),
(197,'Zâmbia'),
(198,'Zimbábue');
/*!40000 ALTER TABLE `nacionalidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexos`
--

DROP TABLE IF EXISTS `sexos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sexos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  `sigla` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexos`
--

LOCK TABLES `sexos` WRITE;
/*!40000 ALTER TABLE `sexos` DISABLE KEYS */;
INSERT INTO `sexos` VALUES
(1,'Masculino','M'),
(2,'Feminino','F'),
(3,'Não-declarado','N');
/*!40000 ALTER TABLE `sexos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `nascimento` date NOT NULL,
  `login` varchar(50) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `id_sexo` int DEFAULT NULL,
  `admin` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `Usuario_Sexo` (`id_sexo`),
  CONSTRAINT `Usuario_Sexo` FOREIGN KEY (`id_sexo`) REFERENCES `sexos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES
(1,'Rubens Luiz Lobo de Almeida','2007-03-16','rubens@','senha',1,1),
(2,'Otavio Ugá','1983-06-20','otavio@email','superoito',1,0),
(3,'rubensusuario','2000-10-04','rubensusuario@email.com','12345678',1,0);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-02 15:50:02
