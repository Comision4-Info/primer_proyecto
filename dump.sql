-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: db_disco
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_usuarios'),(22,'Can change user',6,'change_usuarios'),(23,'Can delete user',6,'delete_usuarios'),(24,'Can view user',6,'view_usuarios'),(25,'Can add discos',7,'add_discos'),(26,'Can change discos',7,'change_discos'),(27,'Can delete discos',7,'delete_discos'),(28,'Can view discos',7,'view_discos'),(29,'Can add categoria',8,'add_categoria'),(30,'Can change categoria',8,'change_categoria'),(31,'Can delete categoria',8,'delete_categoria'),(32,'Can view categoria',8,'view_categoria'),(33,'Can add opinion',9,'add_opinion'),(34,'Can change opinion',9,'change_opinion'),(35,'Can delete opinion',9,'delete_opinion'),(36,'Can view opinion',9,'view_opinion');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discos_categoria`
--

DROP TABLE IF EXISTS `discos_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discos_categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `discos_categoria_nombre_47973c6c_uniq` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discos_categoria`
--

LOCK TABLES `discos_categoria` WRITE;
/*!40000 ALTER TABLE `discos_categoria` DISABLE KEYS */;
INSERT INTO `discos_categoria` VALUES (1,'Sep7timo dia','categorias/sep7imo-dia.jpg'),(2,'Me verás volver','categorias/gira-me-veras-volver-1.jpg'),(3,'Ruido blanco','categorias/ruido-blanco.jpg');
/*!40000 ALTER TABLE `discos_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discos_discos`
--

DROP TABLE IF EXISTS `discos_discos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discos_discos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `autor` varchar(20) NOT NULL,
  `letra` longtext NOT NULL,
  `fecha_agregado` datetime(6) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `categoria_id` bigint DEFAULT NULL,
  `colaborador_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `discos_discos_categoria_id_feab5993_fk_discos_categoria_id` (`categoria_id`),
  KEY `discos_discos_colaborador_id_a9c09d8b_fk_usuarios_usuarios_id` (`colaborador_id`),
  CONSTRAINT `discos_discos_categoria_id_feab5993_fk_discos_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `discos_categoria` (`id`),
  CONSTRAINT `discos_discos_colaborador_id_a9c09d8b_fk_usuarios_usuarios_id` FOREIGN KEY (`colaborador_id`) REFERENCES `usuarios_usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discos_discos`
--

LOCK TABLES `discos_discos` WRITE;
/*!40000 ALTER TABLE `discos_discos` DISABLE KEYS */;
INSERT INTO `discos_discos` VALUES (4,'Persiana americana','Soda Stereo','Yo te prefiero\r\nFuera de foco\r\nInalcanzable\r\nYo te prefiero\r\nIrreversible\r\nCasi intocable\r\nTus ropas caen lentamente\r\nSoy un espía, un espectador\r\nY el ventilador desgarrándote\r\nSé que te excita pensar hasta dónde llegaré\r\nEs difícil de creer\r\nCreo que nunca lo podré saber\r\nSolo así yo te veré\r\nA través de mi persiana americana','2023-12-04 05:14:22.493979','discos/sep7imo-dia_AQjLHCs.jpg',1,NULL),(5,'Cuando pase el temblor','Soda Stereo','Yo caminaré entre las piedras\r\nHasta sentir el temblor\r\nEn mis piernas\r\nA veces tengo temor, lo sé\r\nA veces, vergüenza, oh-oh\r\nEstoy sentado en un cráter desierto\r\nSigo aguardando el temblor\r\nEn mi cuerpo\r\nNadie me vio partir, lo sé\r\nNadie me espera, uoh-oh\r\nHay una grieta, en mi corazón\r\nUn planeta con desilusión','2023-12-04 05:18:28.263194','discos/gira-me-veras-volver-1.jpg',2,4),(6,'Signos','Soda Stereo','No hay un modo\r\nNo hay un punto exacto\r\nTe doy todo\r\nY siempre guardo algo\r\nSi estás oculta\r\nComo sabré quien eres\r\nMe amas a oscuras\r\nDuermes envuelta en redes\r\nSignos\r\nMi parte insegura\r\nBajo una luna hostil\r\nSignos, oh\r\nMar de fondo\r\nNo caeré en la trampa\r\nLlámame pronto\r\nAcertijos bajo el agua','2023-12-06 19:35:53.353447','discos/ruido-blanco.jpg',3,4),(7,'Juegos de seduccion','Soda Stereo','Voy a ser tu mayordomo\r\nY vos harás el rol de señora bien\r\nO puedo ser tu violador\r\nLa imaginación esta noche todo lo puede\r\nTe llevaré hasta el extremo\r\nTe llevaré (eh, eh, eh)\r\nAbrázame, este es el juego de seducción\r\nEstamos solos en la selva\r\nNadie puede venir a rescatarnos\r\nEstoy muriéndome de sed\r\nY es tu propia piel\r\nLa que me hace sentir este infierno','2023-12-06 19:36:29.489023','discos/ruido-blanco_tjllvgm.jpg',3,4),(8,'Tratame suavemente','Soda Stereo','Alguien me ha dicho que la soledad\r\nSe esconde tras tus ojos\r\nY que tu blusa atora sentimientos\r\nQue respirás\r\nTenés que comprender que no puse tus miedos\r\nDonde están guardados\r\nY que no podré quitártelos\r\nSi al hacerlo me desgarrás\r\nNo quiero soñar mil veces las mismas cosas\r\nNi contemplarlas sabiamente\r\nQuiero que me trates suavemente','2023-12-08 05:08:34.541920','discos/ruido-blanco_2ymeywL.jpg',3,4),(9,'Texturas','Soda Stereo','Son las seis\r\nTus relieves me despiertan\r\nDespués de tanto\r\nDescansar\r\nTiempo al tiempo de volver\r\nA celebrar\r\nNecesito al mundo\r\nPara darme cuenta\r\nMe hace falta\r\nDespués de todo\r\nSiempre vamos a encontrar\r\nTexturas\r\nTexturas','2023-12-08 05:09:35.570588','discos/gira-me-veras-volver-1_XYuL6ef.jpg',2,4),(10,'En la ciudad de la furia','Soda Stereo','Me verás volar\r\nPor la ciudad de la furia\r\nDonde nadie sabe de mí\r\nY yo soy parte de todos\r\nNada cambiará\r\nCon un aviso de curva\r\nEn sus caras veo el temor\r\nYa no hay fábulas\r\nEn la ciudad de la furia\r\nMe verás caer\r\nComo un ave de presa\r\nMe verás caer\r\nSobre terrazas desiertas','2023-12-08 05:10:25.879580','discos/gira-me-veras-volver-1_onuT3OK.jpg',2,4),(11,'En el septimo dia','Soda Stereo','El comienzo fue un big-bang y fue caliente\r\nOh oh oh oh oh\r\nOdio este domingo híbrido de siempre\r\nMe da igual, me da igual\r\nEs un beso en la pantalla del auto cine\r\nSin gozar, sin gozar\r\nEl ojo de la aguja\r\nLa punta de mi lengua\r\nEs igual, es igual\r\nSolo Dios sabe que es el séptimo día\r\nEl abismo y la luna en el séptimo día\r\nNo descansaré\r\nOuh Ouh Ouh Ouh Ouh\r\nOuh Ouh Ouh Ouh Ouh','2023-12-08 05:11:37.704560','discos/sep7imo-dia_7ELAMNe.jpg',1,4),(12,'Un millón de años luz','Soda Stereo','No vuelvas\r\nNo vuelvas sin razón\r\nNo vuelvas\r\nEstaré a un millón de años luz\r\nY cuando el mundo enmudece\r\nY las promesas engañan\r\nNos revolcamos\r\nEn el jardín, por donde nadie pasa\r\nDel fuego vino el diluvio\r\nLa nave vuelve a partir\r\nY me alimento\r\nSon las cenizas de una noche larga\r\nNo vuelvas\r\nNo vuelvas sin razón\r\nNo vuelvas\r\nYo estaré a un millón de años luz de casa','2023-12-08 05:12:23.286521','discos/sep7imo-dia_lPn51Sa.jpg',1,4);
/*!40000 ALTER TABLE `discos_discos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_usuarios_usuarios_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_usuarios_usuarios_id` FOREIGN KEY (`user_id`) REFERENCES `usuarios_usuarios` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-12-07 13:55:30.049438','3','Ruido blanco',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',8,2),(2,'2023-12-07 13:55:39.906225','2','Me verás volver',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',8,2),(3,'2023-12-07 13:55:49.402953','1','Sep7timo dia',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',8,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(8,'discos','categoria'),(7,'discos','discos'),(9,'opiniones','opinion'),(5,'sessions','session'),(6,'usuarios','usuarios');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-11-22 19:26:36.636936'),(2,'contenttypes','0002_remove_content_type_name','2023-11-22 19:26:36.710937'),(3,'auth','0001_initial','2023-11-22 19:26:36.966936'),(4,'auth','0002_alter_permission_name_max_length','2023-11-22 19:26:37.056938'),(5,'auth','0003_alter_user_email_max_length','2023-11-22 19:26:37.082941'),(6,'auth','0004_alter_user_username_opts','2023-11-22 19:26:37.095938'),(7,'auth','0005_alter_user_last_login_null','2023-11-22 19:26:37.113941'),(8,'auth','0006_require_contenttypes_0002','2023-11-22 19:26:37.118941'),(9,'auth','0007_alter_validators_add_error_messages','2023-11-22 19:26:37.139939'),(10,'auth','0008_alter_user_username_max_length','2023-11-22 19:26:37.159939'),(11,'auth','0009_alter_user_last_name_max_length','2023-11-22 19:26:37.178956'),(12,'auth','0010_alter_group_name_max_length','2023-11-22 19:26:37.217967'),(13,'auth','0011_update_proxy_permissions','2023-11-22 19:26:37.240939'),(14,'auth','0012_alter_user_first_name_max_length','2023-11-22 19:26:37.261942'),(15,'usuarios','0001_initial','2023-11-22 19:26:37.738939'),(16,'admin','0001_initial','2023-11-22 19:26:37.919938'),(17,'admin','0002_logentry_remove_auto_add','2023-11-22 19:26:37.935939'),(18,'admin','0003_logentry_add_action_flag_choices','2023-11-22 19:26:37.954936'),(19,'sessions','0001_initial','2023-11-22 19:26:38.004939'),(20,'discos','0001_initial','2023-11-27 19:44:53.141693'),(21,'discos','0002_alter_categoria_nombre','2023-12-04 19:02:50.873358'),(22,'opiniones','0001_initial','2023-12-04 19:02:51.058363'),(23,'discos','0003_categoria_imagen','2023-12-07 13:47:10.282389');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('5b5itgnb09sgcou8t693j82tejo0pb40','.eJxVjEEOwiAQRe_C2hAgbWFcuvcMZBhmpGogKe3KeHdt0oVu_3vvv1TEbS1x67zEOauzcur0uyWkB9cd5DvWW9PU6rrMSe-KPmjX15b5eTncv4OCvXxrFOFAHtDYYMElR5MJfkTx6CDJgEO2CJMQ-AQmMznPMgZvQx6MI1bvD_rNOHU:1r7hbx:zkwdmBqM7LTje8zQ4l7JALGUjUnnYlrAH3i6VvU0ZhY','2023-12-11 19:49:41.510509'),('c848bi3dyw4ircwllmjr0m3s9uyfss6y','.eJxVjMsOwiAQRf-FtSEdykuX7v0GMsOAVA0kpV0Z_92QdKHbe865bxFw30rYe1rDwuIiQJx-N8L4THUAfmC9Nxlb3daF5FDkQbu8NU6v6-H-HRTsZdRegVaQLVtGbSJPNjI5cNpzNs4mQJ9nGyelZns2fjZoNHhCQsdIJD5f3Cs3-Q:1r8QWx:q5akoT5nkyZQ0z4w9F7-HZvacBA6louSWbDOAKuR3s8','2023-12-13 19:47:31.855783');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opiniones_opinion`
--

DROP TABLE IF EXISTS `opiniones_opinion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opiniones_opinion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `texto` longtext NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `disco_id` bigint NOT NULL,
  `usuario_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `opiniones_opinion_disco_id_dc384da6_fk_discos_discos_id` (`disco_id`),
  KEY `opiniones_opinion_usuario_id_6c8a7eea_fk_usuarios_usuarios_id` (`usuario_id`),
  CONSTRAINT `opiniones_opinion_disco_id_dc384da6_fk_discos_discos_id` FOREIGN KEY (`disco_id`) REFERENCES `discos_discos` (`id`),
  CONSTRAINT `opiniones_opinion_usuario_id_6c8a7eea_fk_usuarios_usuarios_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios_usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opiniones_opinion`
--

LOCK TABLES `opiniones_opinion` WRITE;
/*!40000 ALTER TABLE `opiniones_opinion` DISABLE KEYS */;
/*!40000 ALTER TABLE `opiniones_opinion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_usuarios`
--

DROP TABLE IF EXISTS `usuarios_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_usuarios` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `es_colaborador` tinyint(1) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_usuarios`
--

LOCK TABLES `usuarios_usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios_usuarios` DISABLE KEYS */;
INSERT INTO `usuarios_usuarios` VALUES (2,'pbkdf2_sha256$600000$ymQDuRat2Sy4o0XBxfC2hj$MeqvOqjfi5la/2P7z1l8iSYJZNGwkdAvoApGpgUEuQI=','2023-12-07 13:55:04.962849',1,'admin','','','admin@masd.com',1,1,'2023-11-27 19:49:10.268547','','','2000-01-01',0,'usuarios/default.png'),(3,'pbkdf2_sha256$600000$DU8k46wmO7AR5aPYNPm0YZ$AoKwca/GFsb9hP82z2/1UD1uAlduxJSag6Akd8rpMpg=','2023-12-06 18:57:25.818820',0,'Comision4','','','comision@asdasd.com',0,1,'2023-11-29 18:47:55.150402','Comision','Comision','2000-01-01',0,'usuarios/default.png'),(4,'pbkdf2_sha256$600000$JU8hXzLUtHijzjqhmWrGNr$EPFCTeJiQZ5KVJ0rdgTzPUaYFwkmFaMg+qAPqyTXxzk=','2023-12-08 05:07:30.126614',0,'Colaborador44','','','comision@asdasd.com',0,1,'2023-12-04 05:15:32.916736','Colaborador','Colab','2000-01-01',1,'usuarios/logo.png'),(5,'pbkdf2_sha256$600000$SNxCuTf9h8ZwJlcrtS3CDV$LgJ2zGTReOXw1WjG7S+Je61vBo1b3Myn9bFk9+4CJlM=','2023-12-08 05:34:25.566727',0,'ceciliarey95','','','asdasdas@asddd.com',0,1,'2023-12-08 05:34:10.653855','Ceci','Rey','2000-01-01',0,'usuarios/559879_4375309458999_736835067_n_vxSfOP2.jpg');
/*!40000 ALTER TABLE `usuarios_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_usuarios_groups`
--

DROP TABLE IF EXISTS `usuarios_usuarios_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_usuarios_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `usuarios_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuarios_usuarios_groups_usuarios_id_group_id_31056d4d_uniq` (`usuarios_id`,`group_id`),
  KEY `usuarios_usuarios_groups_group_id_1e265f46_fk_auth_group_id` (`group_id`),
  CONSTRAINT `usuarios_usuarios_gr_usuarios_id_65c166be_fk_usuarios_` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios_usuarios` (`id`),
  CONSTRAINT `usuarios_usuarios_groups_group_id_1e265f46_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_usuarios_groups`
--

LOCK TABLES `usuarios_usuarios_groups` WRITE;
/*!40000 ALTER TABLE `usuarios_usuarios_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios_usuarios_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_usuarios_user_permissions`
--

DROP TABLE IF EXISTS `usuarios_usuarios_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_usuarios_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `usuarios_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuarios_usuarios_user_p_usuarios_id_permission_i_1fb72da5_uniq` (`usuarios_id`,`permission_id`),
  KEY `usuarios_usuarios_us_permission_id_394f07a6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `usuarios_usuarios_us_permission_id_394f07a6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `usuarios_usuarios_us_usuarios_id_d860a7b5_fk_usuarios_` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios_usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_usuarios_user_permissions`
--

LOCK TABLES `usuarios_usuarios_user_permissions` WRITE;
/*!40000 ALTER TABLE `usuarios_usuarios_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios_usuarios_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-18  6:27:57
