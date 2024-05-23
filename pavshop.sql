-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: pavshop
-- ------------------------------------------------------
-- Server version       5.7.33

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nameVN` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Phấn Trắng','Phấn Trắng New'),(52,'Son Môi Cao Cấp','Son Môi Cao Cấp'),(57,'Nước Tăng Lực','Nước Tăng Lực'),(61,'Đồ Gia Dụng','Đồ Gia Dụng'),(69,'Đồ dùng trẻ em','Đồ dùng trẻ em');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crders`
--

DROP TABLE IF EXISTS `crders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
-- CREATE TABLE `crders` (
--   `id` int(11) NOT NULL,
--   `address` varchar(255) DEFAULT NULL,
--   `amount` double DEFAULT NULL,
--   `description` varchar(255) DEFAULT NULL,
--   `orderDate` date DEFAULT NULL,
--   `receiver` varchar(255) DEFAULT NULL,
--   `requireDate` date DEFAULT NULL,
--   `total_price` double DEFAULT NULL,
--   `customerId` varchar(255) DEFAULT NULL,
--   PRIMARY KEY (`id`),
--   KEY `FKh4llcexnm0f68mc2rb2jtgh7t` (`customerId`)
-- ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
-- /*!40101 SET character_set_client = @saved_cs_client */;
--
-- --
-- -- Dumping data for table `crders`
-- --
--
-- LOCK TABLES `crders` WRITE;
-- /*!40000 ALTER TABLE `crders` DISABLE KEYS */;
-- INSERT INTO `crders` VALUES (109,'60 Trung Ti?t Thành Ph? Hà T?nh',NULL,'?âsdasdsadasd',NULL,'nguyen van tu','2016-06-06',0,NULL),(111,'60 Trung Ti?t Thành Ph? Hà T?nh',NULL,'?âsdasdsadasd',NULL,'nguyen van tu','2016-06-06',0,NULL),(113,'60 Trung Ti?t Thành Ph? Hà T?nh',NULL,'?âsdasdsadasd',NULL,'nguyen van tu','2016-06-06',0,NULL),(115,'60 Trung Ti?t Thành Ph? Hà T?nh',NULL,'?âsdasdsadasd',NULL,'nguyen van tu','2016-06-06',0,NULL),(117,'60 Trung Ti?t Thành Ph? Hà T?nh',NULL,'?âsdasdsadasd',NULL,'nguyen van tu','2016-06-06',0,NULL),(119,'60 Trung Ti?t Thành Ph? Hà T?nh',NULL,'?âsdasdsadasd',NULL,'nguyen van tu','2016-06-06',0,NULL);
-- /*!40000 ALTER TABLE `crders` ENABLE KEYS */;
-- UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `roleId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES
('','',_binary '','','','',NULL),
('1','1',_binary '','1','1','1',NULL),
('123','222@a',_binary '','vantu','$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu','1','0'),
('1997','tubang24@gmail.com',NULL,'vantu12','123','','ROLE_ADMIN'),
('2','2',_binary '','1','1','1',NULL),
('nguyenvantu','nguyenvantu@gmail.com',_binary '','nguyenvantu','123456','a',NULL),
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (121),(121),(121),(121),(121),(121),(1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `discount` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `unitPrice` double DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs7i5eyowhf8cl163vl9u3gjuj` (`orderId`),
  KEY `FK4mpkddctx7awuh7b27w8uw7hl` (`productId`),
  CONSTRAINT `FK2w2qtb1sucxrh05nk4tp03i51` FOREIGN KEY (`productId`) REFERENCES `products` (`id`),
  CONSTRAINT `FK4mpkddctx7awuh7b27w8uw7hl` FOREIGN KEY (`productId`) REFERENCES `products` (`id`),
  CONSTRAINT `FKs7i5eyowhf8cl163vl9u3gjuj` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (5,NULL,1,NULL,1,NULL,4,3),(7,NULL,2,NULL,2,NULL,6,3),(9,NULL,1,NULL,1,NULL,8,3),(11,NULL,1,NULL,1,NULL,10,3),(13,NULL,1,NULL,1,NULL,12,3),(15,NULL,1,NULL,1,NULL,14,3),(17,NULL,1,NULL,1,NULL,16,3),(19,NULL,1,NULL,1,NULL,18,3),(21,NULL,1,NULL,1,NULL,20,3),(23,NULL,3,NULL,3,NULL,22,3),(25,NULL,1,NULL,1,NULL,24,3),(27,NULL,1,NULL,1,NULL,26,3),(29,NULL,1,NULL,1,NULL,28,3),(31,NULL,1,'Đang Giao Dịch',1,NULL,30,3),(34,NULL,60,'Đang Giao Dịch',5,NULL,33,32),(35,NULL,1,'Đang Giao Dịch',1,NULL,33,3),(38,NULL,1,'Đang Giao Dịch',1,NULL,37,3),(41,NULL,1,'Đang Giao Dịch',5,NULL,40,32),(43,NULL,1,'Đang Giao Dịch',1,NULL,42,3),(73,NULL,2,'Đang Giao Dịch',2,NULL,72,3),(74,NULL,1,'Đang Giao Dịch',5,NULL,72,32),(75,NULL,2,'Đang Giao Dịch',10,NULL,72,56),(76,NULL,1,'Đang Giao Dịch',22,NULL,72,63),(78,NULL,1,'Đang Giao Dịch',30,NULL,77,71),(80,NULL,1,'Đang Giao Dịch',30,NULL,79,71),(82,NULL,1,'Đang Giao Dịch',30,NULL,81,71),(85,NULL,1,'Đang Giao Dịch',12,NULL,84,65),(87,NULL,1,'Đang Giao Dịch',28,NULL,86,67),(89,NULL,1,'Đang Giao Dịch',12,NULL,88,65),(91,NULL,1,'Đang Giao Dịch',22,NULL,90,63),(94,NULL,1,'Đang Giao Dịch',22,NULL,93,63),(96,NULL,1,'Đang Giao Dịch',30,NULL,95,71),(98,NULL,1,'Đang Giao Dịch',5,NULL,97,56),(100,NULL,1,'Đang Giao Dịch',22,NULL,99,63),(103,NULL,1,'Đang Giao Dịch',30,NULL,102,71),(105,0,1,'Thanh Toán',30,0,104,71),(107,NULL,1,'Đang Giao Dịch',30,NULL,106,71),(255,NULL,NULL,NULL,NULL,NULL,106,NULL);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `requireDate` date DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `customerId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKefsx996vcyghwrr7cokhlliur` (`customerId`),
  CONSTRAINT `FKefsx996vcyghwrr7cokhlliur` FOREIGN KEY (`customerId`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (4,'hà tĩnh',NULL,'clgt','2017-01-09','nguyễn văn tú','2016-06-06',1,NULL),(6,'hà tĩnh',NULL,'clgt','2016-02-10','nguyễn văn tú','2016-06-06',2,NULL),(8,'hà tĩnh',NULL,'clgt','2015-03-10','nguyễn văn tú','2016-06-06',1,NULL),(10,'hà tĩnh',NULL,'clgt','2018-04-10','nguyễn văn tú','2016-06-06',1,NULL),(12,'clgt',NULL,'clgt','2018-05-10','clgt','2016-06-06',1,NULL),(14,'hà tĩnh',NULL,'a','2018-06-10','ádasdsad','2016-06-06',1,NULL),(16,'hà tĩnh',NULL,'a','2018-07-10','nguyễn văn tú','2016-06-06',1,NULL),(18,'hà tĩnh',NULL,'asdkl;jaskl;djaskl;dmas;dml;asmd;lasmkdl;asmd;asmd;áldasdasdasd','2018-08-10','Tao Là Tú Bằng','2016-06-06',1,NULL),(20,'3',NULL,'a','2018-09-10','nguyễn văn tú','2016-06-06',1,NULL),(22,'3',NULL,'clgt','2018-10-11','clgt','2016-06-06',3,NULL),(24,'hà tĩnh',NULL,'clgt','2018-11-11','nguyễn văn tú','2016-06-06',1,NULL),(26,'clgt',NULL,'clgt','2018-12-11','nguyễn văn tú','2016-06-06',1,NULL),(28,'hà tĩnh',NULL,'clgt','2018-03-11','nguyễn văn tú','2016-06-06',1,NULL),(30,'hà tĩnh',NULL,'clgt','2018-03-12','nguyễn văn tú','2016-06-06',1,NULL),(33,'clgt',NULL,'1','2018-03-12','nguyễn văn tú','2016-06-06',6,NULL),(37,'',NULL,NULL,'2018-03-15',NULL,NULL,1,NULL),(39,'',NULL,'',NULL,'',NULL,0,NULL),(40,'hà tĩnh',NULL,'clgt','2018-03-15','nguyễn văn tú','2016-06-06',5,NULL),(42,'',NULL,'','2018-03-15','',NULL,1,NULL),(44,'',NULL,'',NULL,'',NULL,0,NULL),(45,'',NULL,'',NULL,'',NULL,0,NULL),(46,'',NULL,'',NULL,'',NULL,0,NULL),(47,'',NULL,'',NULL,'',NULL,0,NULL),(48,'',NULL,'',NULL,'',NULL,0,NULL),(50,'',NULL,'a',NULL,'a','2016-06-06',0,NULL),(51,'a',NULL,'a',NULL,'a','2016-06-06',0,NULL),(72,'hà tĩnh',NULL,'giao nhanh nhanh lên','2018-03-20','nguyễn văn tú','2016-06-06',39,NULL),(77,'hà tĩnh',NULL,'clgt','2018-03-20','nguyễn văn tú','2016-06-06',30,NULL),(79,'hà tĩnh',NULL,'clgt','2018-03-20','nguyễn văn tú','2016-06-06',30,NULL),(81,'hà tĩnh',NULL,'clgt','2018-03-20','nguyễn văn tú','2016-06-06',30,NULL),(83,'hà tĩnh',NULL,'clgt',NULL,'nguyễn văn tú','2016-06-06',0,NULL),(84,'hà tĩnh',NULL,'clgt','2018-03-20','nguyễn văn tú','2016-06-06',12,NULL),(86,'clgt',NULL,'clgt','2018-03-20','nguyễn văn tú','2016-06-06',28,NULL),(88,'hà tĩnh',NULL,'1','2018-03-20','or','2016-06-06',12,NULL),(90,'hà tĩnh',NULL,'clgt','2018-03-20','nguyễn văn tú','2016-06-06',22,NULL),(92,'hà tĩnh',NULL,'clgt',NULL,'nguyễn văn tú','2016-06-06',0,NULL),(93,'hà tĩnh',NULL,'clgt','2018-03-20','nguyễn văn tú','2016-06-06',22,NULL),(95,'hà tĩnh',NULL,'1','2018-03-20','nguyễn văn tú','2016-06-06',30,'2'),(97,'hà tĩnh',NULL,'clgt','2018-03-21','nguyễn văn tú','2016-06-06',5,NULL),(99,'hà tĩnh',NULL,'clgt','2018-03-21','nguyễn văn tú','2016-06-06',22,'2'),(102,'hà tĩnh',NULL,'clgt','2018-03-21','nguyễn văn tú','2016-06-06',30,'nguyenvantu'),(104,'clgt',NULL,'clgt','2018-03-22','nguyễn văn tú','2016-06-06',30,'2'),(106,'',NULL,'clgt','2018-03-27','d','2016-06-06',30,NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `productDate` date DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unitBrief` varchar(255) DEFAULT NULL,
  `unitPrice` double DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `supplierId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3ess0s7i9qs6sim1pf9kxhkpq` (`categoryId`),
  KEY `FK541dtjfewvmifm7xytqyu8ykn` (`supplierId`),
  CONSTRAINT `FK3ess0s7i9qs6sim1pf9kxhkpq` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`),
  CONSTRAINT `FK541dtjfewvmifm7xytqyu8ykn` FOREIGN KEY (`supplierId`) REFERENCES `suppliers` (`id`),
  CONSTRAINT `FKej2ob3ifydf846t2a2tntna4e` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`),
  CONSTRAINT `FKs2xbxi7wmu948op6qiho9yr8d` FOREIGN KEY (`supplierId`) REFERENCES `suppliers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (3,'-Hương thơm ngọt ngào từ chocolate và vanilla  -Giúp giữ ẩm cho làn môi mọi lúc mọi nơi, không khiến môi bị khô  -Thành phần tinh chất thiên nhiên giúp thúc đẩy sự tổng hợp collagen',1,'product7.jpg',' ĐỒNG HỒ DIAMOND','2018-03-09',1,'1',1,NULL,1,2),(32,'hay',0,'product6.jpg','ĐỒNG HỒ DIAMOND','2018-03-12',4,'1ML',5,NULL,1,2),(56,'- Công thức kiểm soát dầu nhờn vượt trội, giữ được lớp makeup lâu trôi đến 24 giờ đồng hồ  - Đặc biệt, sản phẩm có khả năng tạo độ ẩm cân bằng trên da giúp da thông thoáng không bị bí dầu  - Thành phần 100% từ thiên nhiên, không gây kích ứng, dị ứng da',0,'product4.jpg','ĐỒNG HỒ DIAMOND','2018-03-19',5,'hop',5,NULL,52,2),(59,'Với mong muốn đáp ứng nhu cầu xu thế của thế giới hiện đại của người tiêu dùng, Coca-Cola đã cho ra đời sản phẩm chất lượng Coca-cola thêm vị cà phê.  Sản phẩm là sự kết hợp sáng tạo giữa coca và cà phê quen thuộc tạo sản phẩm mới mang lại cảm giác sảng khoái, bừng tỉnh kèm theo vị đắng mùi thơm cà phê sữa độc đáo.  Sản phẩm có dạng bao bì lon dung tích 330ml và chai 390ml tiện lợi, thích hợp cho bạn sử sụng khi vui chơi giải trí, tham gia các hoạt động ngoài trời hoặc đơn giản chỉ là uống để “sống ngày tươi trẻ”!',0,'product5.jpg','ĐỒNG HỒ DIAMOND','2018-03-10',100,'Chai',2,NULL,57,58),(60,'Nước cam Teppy là sản phẩm của 2 thương hiệu lớn là Coca-Cola và Minute Maid – nhãn hiệu nước uống trái cây bán chạy nhất thế giới trong kênh siêu thị và tạp hóa.  Sản phẩm được làm từ những thành phần tự nhiên, không chứa các hóa chất tạo mùi độc hại, với công nghệ sản xuất hiện đại, sản phẩm đạt tiêu chuẩn vệ sinh an toàn thực phẩm, không gây ảnh hưởng đến sức khỏe của bạn.  Được chiết xuất từ những trái cam tự nhiên, sản phẩm có mùi vị thơm ngon và giữ nguyên những tép cam hấp dẫn tự nhiên, chứa nhiều vitamin C sẽ cung cấp năng lượng cho cơ thể trong một ngày dài hoạt động.',0,'product5.jpg','ĐỒNG HỒ DIAMOND','2018-03-18',100,'Lốc',6,NULL,57,58),(63,'Thông tin sơ lược:  - Làm từ hợp kim nhôm có độ dày 2,0mm.  - Lòng chảo được phủ 3 lớp chống dính WHITFORD USA  - Bên ngoài được sơn lớp sơn màu chịu nhiệt, chống bám bụi, dễ dàng vệ sinh.  - Kích thước chảo lớn, dẫn nhiệt nhanh, tỏa nhiệt đều.  - An toàn cho sức khỏe.',0,'product3.jpg','ĐỒNG HỒ DIAMOND','2018-03-24',20,'Cái',22,NULL,61,2),(64,'- Chảo đá chống dính được làm từ hợp kim nhôm  - Sử dụng công nghệ đúc Hàn Quốc cho sản phẩm bền và chắc chắn hơn.  - Lớp chống dính được nhập khẩu từ Hoa Kỳ.  - Bề mặt phủ vân đá  - An toàn cho sức khỏe.  - Kiểu dáng hiện đại, chắc chắn',0,'product1.jpg','ĐỒNG HỒ DIAMOND ','2018-03-16',20,'Cái',19,NULL,61,2),(65,'- Bộ nồi được làm từ nhôm tấm cao cấp.  - Vung làm từ kính chịu nhiệt dày 4mm.  - Quai núm, vung được chế tạo bằng nhựa chịu nhiệt chống nóng khi sử dụng.  - Bên trong nồi được phủ 3 lớp chống dính. Bên ngoài được sơn 1 lớp sơn chịu nhiệt.',0,'product7.jpg','ĐỒNG HỒ DIAMOND','2018-03-17',12,'Cái',12,NULL,61,2),(66,'- Bộ nồi được làm từ nhôm tấm cao cấp.  - Vung kính cường lực, chịu nhiệt tốt  - Quai núm được chế tạo bằng nhựa chống nóng  - Đáy từ, sử dụng được trên mọi loại bếp',0,'product8.jpg','ĐỒNG HỒ DIAMOND','2018-03-17',1000,'Bộ',23,NULL,61,2),(67,'- Không bị Oxy hóa, giảm thiểu biến dạng khi va đập.  - Cấu tạo từ hợp kim siêu bền, bề mặt xử lý công nghệ Anod tiên tiến  - Quai nồi được chế tạo bằng nhựa chịu nhiệt nhập khẩu và Inox cao cấp  - Gioăng cao su có tuổi thọ cao.  - Giữ nhiệt tốt, tỏa nhiệt đều.  - Sản phẩm có độ bền cao, bề mặt chống xước.',0,'product6.jpg','ĐỒNG HỒ DIAMOND','2018-03-18',5,'Cái',28,NULL,61,2),(71,'Tắm gội cho bé thật không phải là việc dễ dàng, nhất là khi bé còn nhỏ, hiếu động lại chưa biết tự tránh cho mình khỏi những tác động từ bên ngoài, nên khi gội đầu rất dễ bị xà phòng, nước trôi vào tai hoặc vào mắt. Vì thế mà có không ít bà mẹ đã chọn cách đưa con mình ta tiệm gội đầu, vừa tốn kém vừa mất thời gian. Bạn đừng nên lo lắng với chiếc ghế gội đầu cho bé Jialeda giúp việc gội đầu cho bé từ 6 tháng – 9 tuổi thật dễ dàng, không lo xà phòng, nước trôi vào tai hay dính vào mắt bé.',0,'product2.jpg','ĐỒNG HỒ DIAMOND','2018-03-30',15,'Cái',30,NULL,69,70);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `customerId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKl96oqrb83lbqtlywh6yp2xxeo` (`customerId`),
  CONSTRAINT `FKl96oqrb83lbqtlywh6yp2xxeo` FOREIGN KEY (`customerId`) REFERENCES `customers` (`id`),
  CONSTRAINT `FKpdya827ewvjwdvbbkk4avp8fj` FOREIGN KEY (`customerId`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (2,'tubang24@gmail.com','th3.jpg','Sun House','0976704644'),(58,'cocacola@gmail.com','coca-cola-logo.jpg','CocaCola','0962811257'),(62,'Sunhouse@gmail.com','Logo-Sunhouse-Enjoy-better-life.jpg','Sun House','0987571454'),(70,'kidsplazae@gmail.com','kids-plaza-td.png','Kids Plaza','0985858547');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-27  7:47:55