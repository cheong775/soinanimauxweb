-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: soinanimauxDB
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'clé primaire',
  `name` varchar(100) NOT NULL COMMENT 'nom de paramètres configuration',
  `value` varchar(100) DEFAULT NULL COMMENT 'valeur du parametre',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='fiches des configurer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmjl5mx/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmjl5mx/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmjl5mx/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanxinxi`
--

DROP TABLE IF EXISTS `dingdanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'clé primaire',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'temps de Création',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT 'command',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT 'médicament',
  `guige` varchar(200) DEFAULT NULL COMMENT 'teneur',
  `shengchanshang` varchar(200) DEFAULT NULL COMMENT 'entreprise',
  `shuliang` int(11) DEFAULT NULL COMMENT 'quantité',
  `jiage` varchar(200) DEFAULT NULL COMMENT 'prix',
  `zongjine` int(11) DEFAULT NULL COMMENT 'Prix total',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT 'Nom de utilisateur',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT 'Nom et prénom ',
  `ispay` varchar(200) DEFAULT 'non payé' COMMENT 'si il a payé ou pas',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615479808500 DEFAULT CHARSET=utf8 COMMENT='informations de commande';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanxinxi`
--

LOCK TABLES `dingdanxinxi` WRITE;
/*!40000 ALTER TABLE `dingdanxinxi` DISABLE KEYS */;
INSERT INTO `dingdanxinxi` VALUES (91,'2021-03-11 03:24:06','commande1','médicament1','teneur1','entreprise1',1,'8.97€',1,'','Arlette','non payé'),(92,'2021-03-11 03:24:06','commande2','médicament2','teneur2','entreprise2',2,'prix2',2,'Nom de utilisateur2','Nom et prénom 2','non payé'),(93,'2021-03-11 03:24:06','command3','médicament3','teneur3','entreprise3',3,'prix3',3,'Nom de utilisateur3','Nom et prénom 3','non payé'),(94,'2021-03-11 03:24:06','command4','médicament4','teneur4','entreprise4',4,'prix4',4,'Nom de utilisateur4','Nom et prénom 4','non payé'),(95,'2021-03-11 03:24:06','command5','médicament5','teneur5','entreprise5',5,'prix5',5,'Nom de utilisateur5','Nom et prénom 5','non payé'),(96,'2021-03-11 03:24:06','command6','médicament6','teneur6','entreprise6',6,'prix6',6,'Nom de utilisateur6','Nom et prénom 6','non payé'),(1615479808499,'2021-03-11 16:23:27','20213120232631044685','médicament1','teneur1','entreprise1',1,'18',18,'11','Aurore','payé');
/*!40000 ALTER TABLE `dingdanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keshixinxi`
--

DROP TABLE IF EXISTS `keshixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'clé primaire',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'temps de Création',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT 'Spécialité',
  `tupian` varchar(200) DEFAULT NULL COMMENT 'image',
  `yishengrenshu` varchar(200) DEFAULT NULL COMMENT 'Vétérinaire Quantité',
  `keshijianjie` longtext COMMENT 'introduire',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='Département Informations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keshixinxi`
--

LOCK TABLES `keshixinxi` WRITE;
/*!40000 ALTER TABLE `keshixinxi` DISABLE KEYS */;
INSERT INTO `keshixinxi` VALUES (41,'2021-03-11 03:24:06','Spécialité1','http://localhost:8080/jspmjl5mx/upload/keshixinxi_tupian1.jpg','Vétérinaire Quantité1','introduire1'),(42,'2021-03-11 03:24:06','Spécialité2','http://localhost:8080/jspmjl5mx/upload/keshixinxi_tupian2.jpg','Vétérinaire Quantité2','introduire2'),(43,'2021-03-11 03:24:06','Spécialité3','http://localhost:8080/jspmjl5mx/upload/keshixinxi_tupian3.jpg','Vétérinaire Quantité3','introduire3'),(44,'2021-03-11 03:24:06','Spécialité4','http://localhost:8080/jspmjl5mx/upload/keshixinxi_tupian4.jpg','Vétérinaire Quantité4','introduire4'),(45,'2021-03-11 03:24:06','Spécialité5','http://localhost:8080/jspmjl5mx/upload/keshixinxi_tupian5.jpg','Vétérinaire Quantité5','introduire5'),(46,'2021-03-11 03:24:06','Spécialité6','http://localhost:8080/jspmjl5mx/upload/keshixinxi_tupian6.jpg','Vétérinaire Quantité6','introduire6');
/*!40000 ALTER TABLE `keshixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'clé primaire',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'temps de Création',
  `userid` bigint(20) NOT NULL COMMENT 'Client id',
  `username` varchar(200) DEFAULT NULL COMMENT 'Nom de utilisateur',
  `content` longtext NOT NULL COMMENT 'consultation',
  `reply` longtext COMMENT 'réponse',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='Babillard';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (111,'2021-03-11 03:24:06',1,'Nom de utilisateur1','consultation1','réponse1'),(112,'2021-03-11 03:24:06',2,'Nom de utilisateur2','consultation2','réponse2'),(113,'2021-03-11 03:24:06',3,'Nom de utilisateur3','consultation3','réponse3'),(114,'2021-03-11 03:24:06',4,'Nom de utilisateur4','consultation4','réponse4'),(115,'2021-03-11 03:24:06',5,'Nom de utilisateur5','consultation5','réponse5'),(116,'2021-03-11 03:24:06',6,'Nom de utilisateur6','consultation6','réponse6');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'clé primaire',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'temps de Création',
  `title` varchar(200) NOT NULL COMMENT 'article',
  `introduction` longtext COMMENT 'précis',
  `picture` varchar(200) NOT NULL COMMENT 'image',
  `content` longtext NOT NULL COMMENT 'contenu',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='actualité';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-03-11 03:24:06','article1','précis1','http://localhost:8080/jspmjl5mx/upload/news_picture1.jpg','contenu1'),(102,'2021-03-11 03:24:06','article2','précis2','http://localhost:8080/jspmjl5mx/upload/news_picture2.jpg','contenu2'),(103,'2021-03-11 03:24:06','article3','précis3','http://localhost:8080/jspmjl5mx/upload/news_picture3.jpg','contenu3'),(104,'2021-03-11 03:24:06','article4','précis4','http://localhost:8080/jspmjl5mx/upload/news_picture4.jpg','contenu4'),(105,'2021-03-11 03:24:06','article5','précis5','http://localhost:8080/jspmjl5mx/upload/news_picture5.jpg','contenu5'),(106,'2021-03-11 03:24:06','article6','précis6','http://localhost:8080/jspmjl5mx/upload/news_picture6.jpg','contenu6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'clé primaire',
  `userid` bigint(20) NOT NULL COMMENT 'utilisateurid',
  `username` varchar(100) NOT NULL COMMENT 'Nom de utilisateur',
  `tablename` varchar(100) DEFAULT NULL COMMENT ' formule名',
  `role` varchar(100) DEFAULT NULL COMMENT 'rôle',
  `token` varchar(200) NOT NULL COMMENT 'mot de passe',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'temps de ajouté',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'temps de exprimé',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','manager','kqhewakub4ohpbutbgefrht1lr6p9kx7','2021-03-11 16:14:37','2021-03-11 17:25:15'),(2,1615479400838,'11','yonghu','utilisateur','y405o8oofynjyjj1tefvp771nc69cgna','2021-03-11 16:16:50','2021-03-11 17:16:51'),(3,21,'vétérinaire1','yisheng','vétérinaire','q93nal823wr5gwukvdobsag90uqn73w2','2021-03-11 16:21:36','2021-03-11 17:21:36');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'clé primaire',
  `username` varchar(100) NOT NULL COMMENT 'Nom de utilisateur',
  `password` varchar(100) NOT NULL COMMENT 'mot de passe',
  `role` varchar(100) DEFAULT 'manager' COMMENT 'rôle',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'temps de ajouté',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='utilisateur formule';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','manager','2021-03-11 03:24:06');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaopinxinxi`
--

DROP TABLE IF EXISTS `yaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'liaison primaire',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'temps de Création',
  `yaopinmingcheng` varchar(200) NOT NULL COMMENT 'médicament',
  `tupian` varchar(200) DEFAULT NULL COMMENT 'image',
  `guige` varchar(200) DEFAULT NULL COMMENT 'teneur',
  `shengchanshang` varchar(200) DEFAULT NULL COMMENT 'entreprise',
  `shuliang` int(11) DEFAULT NULL COMMENT 'quantité',
  `jiage` int(11) DEFAULT NULL COMMENT 'prix',
  `yaopinxiangqing` longtext COMMENT 'information détail',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='informations de médicament ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaopinxinxi`
--

LOCK TABLES `yaopinxinxi` WRITE;
/*!40000 ALTER TABLE `yaopinxinxi` DISABLE KEYS */;
INSERT INTO `yaopinxinxi` VALUES (81,'2021-03-11 03:24:06','médicament1','http://localhost:8080/jspmjl5mx/upload/yaopinxinxi_tupian1.jpg','teneur1','entreprise1',4,18,'information détail1'),(82,'2021-03-11 03:24:06','médicament2','http://localhost:8080/jspmjl5mx/upload/yaopinxinxi_tupian2.jpg','teneur2','entreprise2',2,20,'information détail2'),(83,'2021-03-11 03:24:06','médicament3','http://localhost:8080/jspmjl5mx/upload/yaopinxinxi_tupian3.jpg','teneur3','entreprise3',3,3,'information détail3'),(84,'2021-03-11 03:24:06','médicament4','http://localhost:8080/jspmjl5mx/upload/yaopinxinxi_tupian4.jpg','teneur4','entreprise4',4,4,'information détail4'),(85,'2021-03-11 03:24:06','médicament5','http://localhost:8080/jspmjl5mx/upload/yaopinxinxi_tupian5.jpg','teneur5','entreprise5',5,5,'information détail5'),(86,'2021-03-11 03:24:06','médicament6','http://localhost:8080/jspmjl5mx/upload/yaopinxinxi_tupian6.jpg','teneur6','entreprise6',6,6,'information détail6');
/*!40000 ALTER TABLE `yaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yisheng`
--

DROP TABLE IF EXISTS `yisheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'clé primaire',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'temps de Création',
  `yishenggonghao` varchar(200) NOT NULL COMMENT 'vétérinaireNuméro',
  `mima` varchar(200) NOT NULL COMMENT 'mot de passe',
  `yishengxingming` varchar(200) NOT NULL COMMENT 'Nom de vétérinaire',
  `touxiang` varchar(200) DEFAULT NULL COMMENT 'image de tête',
  `xingbie` varchar(200) DEFAULT NULL COMMENT 'sexe',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT 'coordonnée',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yishenggonghao` (`yishenggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='vétérinaire';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yisheng`
--

LOCK TABLES `yisheng` WRITE;
/*!40000 ALTER TABLE `yisheng` DISABLE KEYS */;
INSERT INTO `yisheng` VALUES (21,'2021-03-11 03:24:06','vétérinaire1','123456','Nom de vétérinaire1','http://localhost:8080/jspmjl5mx/upload/yisheng_touxiang1.jpg','masculin','13823888881'),(22,'2021-03-11 03:24:06','vétérinaire2','123456','Nom de vétérinaire2','http://localhost:8080/jspmjl5mx/upload/yisheng_touxiang2.jpg','masculin','13823888882'),(23,'2021-03-11 03:24:06','vétérinaire3','123456','Nom de vétérinaire3','http://localhost:8080/jspmjl5mx/upload/yisheng_touxiang3.jpg','masculin','13823888883'),(24,'2021-03-11 03:24:06','vétérinaire4','123456','Nom de vétérinaire4','http://localhost:8080/jspmjl5mx/upload/yisheng_touxiang4.jpg','masculin','13823888884'),(25,'2021-03-11 03:24:06','vétérinaire5','123456','Nom de vétérinaire5','http://localhost:8080/jspmjl5mx/upload/yisheng_touxiang5.jpg','masculin','13823888885'),(26,'2021-03-11 03:24:06','vétérinaire6','123456','Nom de vétérinaire6','http://localhost:8080/jspmjl5mx/upload/yisheng_touxiang6.jpg','masculin','13823888886');
/*!40000 ALTER TABLE `yisheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yishengxinxi`
--

DROP TABLE IF EXISTS `yishengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yishengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'clé primaire',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'temps de Création',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT 'vétérinaireNuméro',
  `touxiang` varchar(200) DEFAULT NULL COMMENT 'image de tête',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT 'Nom de vétérinaire',
  `xingbie` varchar(200) DEFAULT NULL COMMENT 'sexe',
  `yiling` varchar(200) DEFAULT NULL COMMENT 'Expérience',
  `shanzhanglingyu` varchar(200) DEFAULT NULL COMMENT 'Domaine maîtrise',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT 'Spécialité',
  `gerenjianjie` longtext COMMENT '个人précis',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='informations de vétérinaire';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yishengxinxi`
--

LOCK TABLES `yishengxinxi` WRITE;
/*!40000 ALTER TABLE `yishengxinxi` DISABLE KEYS */;
INSERT INTO `yishengxinxi` VALUES (51,'2021-03-11 03:24:06','vétérinaire1','http://localhost:8080/jspmjl5mx/upload/yishengxinxi_touxiang1.jpg','Nom de vétérinaire1','masculin','Expérience1','Domaine maîtrise1','Spécialité1','个人précis1'),(52,'2021-03-11 03:24:06','vétérinaire2','http://localhost:8080/jspmjl5mx/upload/yishengxinxi_touxiang2.jpg','Nom de vétérinaire2','masculin','Expérience2','Domaine maîtrise2','Spécialité2','个人précis2'),(53,'2021-03-11 03:24:06','vétérinaire3','http://localhost:8080/jspmjl5mx/upload/yishengxinxi_touxiang3.jpg','Nom de vétérinaire3','masculin','Expérience3','Domaine maîtrise3','Spécialité3','个人précis3'),(54,'2021-03-11 03:24:06','vétérinaire4','http://localhost:8080/jspmjl5mx/upload/yishengxinxi_touxiang4.jpg','Nom de vétérinaire4','masculin','Expérience4','Domaine maîtrise4','Spécialité4','个人précis4'),(55,'2021-03-11 03:24:06','vétérinaire5','http://localhost:8080/jspmjl5mx/upload/yishengxinxi_touxiang5.jpg','Nom de vétérinaire5','masculin','Expérience5','Domaine maîtrise5','Spécialité5','个人précis5'),(56,'2021-03-11 03:24:06','vétérinaire6','http://localhost:8080/jspmjl5mx/upload/yishengxinxi_touxiang6.jpg','Nom de vétérinaire6','masculin','Expérience6','Domaine maîtrise6','Spécialité6','个人précis6');
/*!40000 ALTER TABLE `yishengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yixuezhishi`
--

DROP TABLE IF EXISTS `yixuezhishi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yixuezhishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'clé primaire',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'temps de Création',
  `wenzhangbiaoti` varchar(200) NOT NULL COMMENT 'article',
  `tupian` varchar(200) DEFAULT NULL COMMENT 'image',
  `wenzhangneirong` varchar(200) DEFAULT NULL COMMENT 'Contenu de article ',
  `faburiqi` date DEFAULT NULL COMMENT 'date de publier',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='connaissance de santé animaux ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yixuezhishi`
--

LOCK TABLES `yixuezhishi` WRITE;
/*!40000 ALTER TABLE `yixuezhishi` DISABLE KEYS */;
INSERT INTO `yixuezhishi` VALUES (31,'2021-03-11 03:24:06','article1','http://localhost:8080/jspmjl5mx/upload/yixuezhishi_tupian1.jpg','Contenu de article 1','2021-03-11'),(32,'2021-03-11 03:24:06','article2','http://localhost:8080/jspmjl5mx/upload/yixuezhishi_tupian2.jpg','Contenu de article 2','2021-03-11'),(33,'2021-03-11 03:24:06','article3','http://localhost:8080/jspmjl5mx/upload/yixuezhishi_tupian3.jpg','Contenu de article 3','2021-03-11'),(34,'2021-03-11 03:24:06','article4','http://localhost:8080/jspmjl5mx/upload/yixuezhishi_tupian4.jpg','Contenu de article 4','2021-03-11'),(35,'2021-03-11 03:24:06','article5','http://localhost:8080/jspmjl5mx/upload/yixuezhishi_tupian5.jpg','Contenu de article 5','2021-03-11'),(36,'2021-03-11 03:24:06','article6','http://localhost:8080/jspmjl5mx/upload/yixuezhishi_tupian6.jpg','Contenu de article 6','2021-03-11');
/*!40000 ALTER TABLE `yixuezhishi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yizhuxinxi`
--

DROP TABLE IF EXISTS `yizhuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yizhuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'clé primaire',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'temps de Création',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT 'Nom de utilisateur',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT 'Nom et prénom ',
  `chongwuming` varchar(200) DEFAULT NULL COMMENT 'Nom animaux',
  `chongwuzhuangkuang` varchar(200) DEFAULT NULL COMMENT 'Condition animaux',
  `yizhu` longtext COMMENT 'Conseil de traitement',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT 'vétérinaireNuméro',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT 'Nom de vétérinaire',
  `keshi` varchar(200) DEFAULT NULL COMMENT 'Département',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615479743217 DEFAULT CHARSET=utf8 COMMENT='Conseil de traitement Informations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yizhuxinxi`
--

LOCK TABLES `yizhuxinxi` WRITE;
/*!40000 ALTER TABLE `yizhuxinxi` DISABLE KEYS */;
INSERT INTO `yizhuxinxi` VALUES (71,'2021-03-11 03:24:06','Nom de utilisateur1','Nom et prénom 1','Nom animaux','Condition animaux ','Conseil de traitement1','2021-03-11 11:24:06','vétérinaireNuméro1','Nom de vétérinaire1','Département1'),(72,'2021-03-11 03:24:06','Nom de utilisateur2','Nom et prénom 2','Nom animaux2','Condition animaux2','Conseil de traitement2','2021-03-11 11:24:06','vétérinaireNuméro2','Nom de vétérinaire2','Département2'),(73,'2021-03-11 03:24:06','Nom de utilisateur3','Nom et prénom 3','Nom animaux3','Condition animaux3','Conseil de traitement3','2021-03-11 11:24:06','vétérinaireNuméro3','Nom de vétérinaire3','Département3'),(74,'2021-03-11 03:24:06','Nom de utilisateur4','Nom et prénom 4','Nom animaux4','Condition animaux4','Conseil de traitement4','2021-03-11 11:24:06','vétérinaireNuméro4','Nom de vétérinaire4','Département4'),(75,'2021-03-11 03:24:06','Nom de utilisateur5','Nom et prénom 5','Nom animaux5','Condition animaux5','Conseil de traitement5','2021-03-11 11:24:06','vétérinaireNuméro5','Nom de vétérinaire5','Département5'),(76,'2021-03-11 03:24:06','Nom de utilisateur6','Nom et prénom 6','Nom animaux6','Condition animaux6','Conseil de traitement6','2021-03-11 11:24:06','vétérinaireNuméro6','Nom de vétérinaire6','Département6'),(1615479743216,'2021-03-11 16:22:22','11','Aurore','Labrador','dsfdsfsdff','sdfgfdgdfgdfgdfg','2021-03-12 10:10:07','vétérinaire1','Nom de vétérinaire1','');
/*!40000 ALTER TABLE `yizhuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'clé primaire',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'temps de Création',
  `yonghuming` varchar(200) NOT NULL COMMENT 'Nom de utilisateur',
  `mima` varchar(200) NOT NULL COMMENT 'mot de passe',
  `yonghuxingming` varchar(200) NOT NULL COMMENT 'Nom et prénom ',
  `touxiang` varchar(200) DEFAULT NULL COMMENT 'image de tête',
  `xingbie` varchar(200) DEFAULT NULL COMMENT 'sexe',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT 'Numéro téléphone',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1615479400839 DEFAULT CHARSET=utf8 COMMENT='utilisateur';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-11 03:24:06','utilisateur1','123456','Nom et prénom 1','http://localhost:8080/jspmjl5mx/upload/yonghu_touxiang1.jpg','masculin','13823888881'),(12,'2021-03-11 03:24:06','utilisateur2','123456','Nom et prénom 2','http://localhost:8080/jspmjl5mx/upload/yonghu_touxiang2.jpg','masculin','13823888882'),(13,'2021-03-11 03:24:06','utilisateur3','123456','Nom et prénom 3','http://localhost:8080/jspmjl5mx/upload/yonghu_touxiang3.jpg','masculin','13823888883'),(14,'2021-03-11 03:24:06','utilisateur4','123456','Nom et prénom 4','http://localhost:8080/jspmjl5mx/upload/yonghu_touxiang4.jpg','masculin','13823888884'),(15,'2021-03-11 03:24:06','utilisateur5','123456','Nom et prénom 5','http://localhost:8080/jspmjl5mx/upload/yonghu_touxiang5.jpg','masculin','13823888885'),(16,'2021-03-11 03:24:06','utilisateur6','123456','Nom et prénom 6','http://localhost:8080/jspmjl5mx/upload/yonghu_touxiang6.jpg','masculin','13823888886'),(1615479400838,'2021-03-11 16:16:40','11','123456','Aurore','http://localhost:8080/jspmjl5mx/upload/1615479617045.jpg','féminin','13823866666');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyueguahao`
--

DROP TABLE IF EXISTS `yuyueguahao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyueguahao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'clé primaire',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'temps de Création',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT 'Nom de utilisateur',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT 'Nom et prénom ',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT 'Numéro téléphone',
  `chongwuming` varchar(200) DEFAULT NULL COMMENT 'Nom animaux',
  `chongwuzhuangkuang` varchar(200) DEFAULT NULL COMMENT 'Condition animaux',
  `yuyueriqi` datetime DEFAULT NULL COMMENT 'Date de rendez-vous',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT 'vétérinaireNuméro',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT 'Nom de vétérinaire',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT 'Spécialité',
  `sfsh` varchar(200) DEFAULT 'Non' COMMENT 'ouiNonexaminer ',
  `shhf` longtext COMMENT 'examiner réponse ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615479675210 DEFAULT CHARSET=utf8 COMMENT='prendre rendez-vous';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyueguahao`
--

LOCK TABLES `yuyueguahao` WRITE;
/*!40000 ALTER TABLE `yuyueguahao` DISABLE KEYS */;
INSERT INTO `yuyueguahao` VALUES (61,'2021-03-11 03:24:06','Nom de utilisateur1','Nom et prénom 1','Numéro téléphone1','Nom animaux','Condition animaux ','2021-03-11 11:24:06','vétérinaireNuméro1','Nom de vétérinaire1','Spécialité1','oui',''),(62,'2021-03-11 03:24:06','Nom de utilisateur2','Nom et prénom 2','Numéro téléphone2','Nom animaux2','Condition animaux2','2021-03-11 11:24:06','vétérinaireNuméro2','Nom de vétérinaire2','Spécialité2','oui',''),(63,'2021-03-11 03:24:06','Nom de utilisateur3','Nom et prénom 3','Numéro téléphone3','Nom animaux3','Condition animaux3','2021-03-11 11:24:06','vétérinaireNuméro3','Nom de vétérinaire3','Spécialité3','oui',''),(64,'2021-03-11 03:24:06','Nom de utilisateur4','Nom et prénom 4','Numéro téléphone4','Nom animaux4','Condition animaux4','2021-03-11 11:24:06','vétérinaireNuméro4','Nom de vétérinaire4','Spécialité4','oui',''),(65,'2021-03-11 03:24:06','Nom de utilisateur5','Nom et prénom 5','Numéro téléphone5','Nom animaux5','Condition animaux5','2021-03-11 11:24:06','vétérinaireNuméro5','Nom de vétérinaire5','Spécialité5','oui',''),(66,'2021-03-11 03:24:06','Nom de utilisateur6','Nom et prénom 6','Numéro téléphone6','Nom animaux6','Condition animaux6','2021-03-11 11:24:06','vétérinaireNuméro6','Nom de vétérinaire6','Spécialité6','oui',''),(1615479675209,'2021-03-11 16:21:14','11','Aurore','13823866666','Labrador','dsfdsfsdff','2020-03-13 09:00:00','vétérinaire1','Nom de vétérinaire1','Spécialité1','oui','');
/*!40000 ALTER TABLE `yuyueguahao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-30 11:49:09
