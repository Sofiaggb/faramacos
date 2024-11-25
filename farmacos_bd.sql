/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE IF NOT EXISTS `farmacos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `farmacos`;

CREATE TABLE IF NOT EXISTS `farmaco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_comercial` varchar(50) NOT NULL,
  `fecha_elaboracion` date NOT NULL,
  `principio_activo` varchar(30) NOT NULL,
  `miligramos` float NOT NULL,
  `id_tipo` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tipo` (`id_tipo`),
  CONSTRAINT `farmaco_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `tipo` (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `farmaco` (`id`, `nombre_comercial`, `fecha_elaboracion`, `principio_activo`, `miligramos`, `id_tipo`) VALUES
	(7, 'Acetaminofen', '2024-11-13', 'Paracetamol', 650, 13),
	(8, 'Desloratadina', '2024-11-02', 'desloratadina', 5, 20),
	(9, 'Vitamina C', '2024-10-16', 'ácido ascórbico', 500, 17),
	(10, 'Zolpidem', '2024-11-08', 'Zolpidem', 50, 16);

CREATE TABLE IF NOT EXISTS `tipo` (
  `id_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tipo` (`id_tipo`, `descripcion`) VALUES
	(13, 'Analgésico'),
	(14, 'Antibiótico'),
	(15, 'Antihistamínico'),
	(16, 'Somnífero'),
	(17, 'Vitaminas'),
	(18, 'Anestésicos'),
	(19, 'Anticonceptivos'),
	(20, 'Antialérgicos'),
	(21, 'Antiinflamatorio');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
