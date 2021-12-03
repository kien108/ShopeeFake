-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: shopee
-- ------------------------------------------------------
-- Server version	8.0.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `account_id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `cart_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `UK_k8h1bgqoplx0rkngj01pm1rgp` (`username`),
  KEY `FKsyxxui4rhtth0mqg6apq4cj7w` (`cart_id`),
  KEY `FKnjuop33mo69pd79ctplkck40n` (`user_id`),
  CONSTRAINT `FKnjuop33mo69pd79ctplkck40n` FOREIGN KEY (`user_id`) REFERENCES `users` (`userId`),
  CONSTRAINT `FKsyxxui4rhtth0mqg6apq4cj7w` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (8,'123456','kien108',42,4),(9,'123456','kien109',45,5),(10,'123456','kien1',48,6),(11,'123456','kien2',49,7),(12,'123456','kien3',12,8),(13,'1','admin',43,9),(30,'123','admin113',30,26),(31,'123','admin1231231',31,27);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `quantity` int DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (8,4,19896000),(9,1,24615000),(10,2,19625000),(11,1,19625000),(12,0,NULL),(13,1,7775000),(30,0,NULL),(31,1,NULL),(32,0,NULL),(33,2,6346000),(34,2,6425000),(35,2,30124000),(36,1,5490000),(37,1,3490000),(38,4,54648000),(39,1,5635000),(40,1,5635000),(41,1,19625000),(42,1,5635000),(43,2,12885000),(44,1,6346000),(45,0,0),(46,1,200000),(47,1,64705000),(48,0,0),(49,1,13990000);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Bluetooth'),(2,'Bluetooth 1 bên'),(3,'Chụp tai'),(4,'Có dây'),(5,'Gaming'),(6,'Không dây - True Wireless'),(7,'Thể thao - Neckband'),(8,'Nhét tai - In-ear');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `comment` varchar(200) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `account_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FKagkmt4oa6cdwdop1odcp2ala4` (`account_id`),
  KEY `FK6uv0qku8gsu6x1r2jkrtqwjtn` (`product_id`),
  CONSTRAINT `FK6uv0qku8gsu6x1r2jkrtqwjtn` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKagkmt4oa6cdwdop1odcp2ala4` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'9.5 điểm, mua đi các homie','2021-11-08 06:10:20.000000',8,1),(6,'Tai nghe âm cực đầm quẩy vinahouse là số dách','2021-11-08 06:10:20.000000',9,1),(14,'Buồn lắm em ơi','2021-11-08 06:10:20.000000',10,1),(18,'Đánh giá cho có','2021-11-08 21:12:20.461000',10,1),(23,'Buồn lắm em ơi','2021-11-08 22:10:49.221000',8,32),(24,'Mua đê đại hạ giá nè','2021-11-08 22:11:04.661000',8,9),(25,'hú hú hú hú','2021-11-08 22:12:16.539000',8,22),(26,'Ế quá mấy anh ơi mua ủng hộ em','2021-11-08 22:13:07.839000',8,2),(27,'Mua đê mua đê mua về combat căng cực nè','2021-11-08 22:13:45.930000',13,2),(28,'Solo yasuo đê','2021-11-08 22:14:32.027000',11,2),(29,'Mua đi còn chần chờ chi','2021-11-10 16:38:24.773000',13,7),(30,'Tai nghe âm cực đầm quẩy vinahouse là số dách','2021-11-11 16:42:31.261000',10,50);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history` (
  `history_id` int NOT NULL AUTO_INCREMENT,
  `date` datetime(6) DEFAULT NULL,
  `acc_id` int DEFAULT NULL,
  `cart_id` int DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `FKktb70tbl3jrwcro70ty5htjb` (`acc_id`),
  KEY `FK4xjsb6ie14i5mh56cag55w7au` (`cart_id`),
  CONSTRAINT `FK4xjsb6ie14i5mh56cag55w7au` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`),
  CONSTRAINT `FKktb70tbl3jrwcro70ty5htjb` FOREIGN KEY (`acc_id`) REFERENCES `accounts` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (1,'2021-11-07 21:19:05.786000',8,34),(2,'2021-11-07 21:44:02.448000',8,35),(3,'2021-11-07 21:48:15.677000',8,36),(4,'2021-11-07 21:51:44.394000',8,37),(5,'2021-11-07 22:48:17.543000',13,13),(6,'2021-11-07 22:50:35.353000',13,39),(7,'2021-11-07 22:56:24.379000',13,40),(8,'2021-11-08 16:30:13.027000',8,38),(9,'2021-11-08 16:31:32.057000',13,41),(10,'2021-11-08 16:41:36.871000',9,9),(11,'2021-11-08 16:47:27.377000',9,44),(12,'2021-11-08 20:48:40.675000',10,10),(13,'2021-11-08 22:14:11.147000',11,11),(14,'2021-11-11 16:41:53.672000',10,46),(15,'2021-11-11 16:56:38.627000',11,47);
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineitem`
--

DROP TABLE IF EXISTS `lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lineitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int DEFAULT NULL,
  `cart_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlsm40c4io577sw2klwr5v0syf` (`cart_id`),
  KEY `FK2qcfxxvwmq60ofhj1vq1fgcd3` (`product_id`),
  CONSTRAINT `FK2qcfxxvwmq60ofhj1vq1fgcd3` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKlsm40c4io577sw2klwr5v0syf` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineitem`
--

LOCK TABLES `lineitem` WRITE;
/*!40000 ALTER TABLE `lineitem` DISABLE KEYS */;
INSERT INTO `lineitem` VALUES (1,1,31,1),(43,1,8,3),(44,2,8,4),(45,1,8,1),(46,3,8,33),(47,1,33,1),(48,1,33,3),(49,1,34,1),(50,1,34,32),(51,10,35,9),(52,1,35,6),(53,1,36,22),(54,1,37,35),(57,3,38,3),(59,1,13,1),(60,1,13,7),(61,1,39,1),(62,1,40,1),(63,10,38,8),(64,1,38,9),(65,1,38,1),(66,1,38,2),(67,1,42,1),(68,1,41,1),(69,1,41,2),(70,1,43,1),(71,1,9,1),(72,1,9,2),(73,1,9,5),(74,1,44,1),(75,1,44,3),(76,1,10,1),(77,1,10,2),(78,1,11,2),(79,1,11,1),(80,9,47,1),(81,5,43,10),(82,1,46,50),(83,1,47,2),(84,1,49,2);
/*!40000 ALTER TABLE `lineitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturers` (
  `manufacturer_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturers`
--

LOCK TABLES `manufacturers` WRITE;
/*!40000 ALTER TABLE `manufacturers` DISABLE KEYS */;
INSERT INTO `manufacturers` VALUES (1,'Apple'),(2,'Samsung'),(3,'Sony'),(4,'Beats'),(5,'JBL'),(6,'Xiaomi'),(7,'LG'),(8,'Kanen'),(9,'Awei');
/*!40000 ALTER TABLE `manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_desc`
--

DROP TABLE IF EXISTS `product_desc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_desc` (
  `pDesc_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `detail` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`pDesc_id`),
  KEY `FKfajqwi6xbntrqf87smimqjfll` (`product_id`),
  CONSTRAINT `FKfajqwi6xbntrqf87smimqjfll` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=395 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_desc`
--

LOCK TABLES `product_desc` WRITE;
/*!40000 ALTER TABLE `product_desc` DISABLE KEYS */;
INSERT INTO `product_desc` VALUES (8,1,'Thời gian tai nghe:','Dùng 4.5 giờ - Sạc 2 giờ',''),(9,1,'Thời gian hộp sạc:','Dùng 24 giờ - Sạc 3 giờ',''),(10,1,'Cổng sạc:','Lightning, Sạc không dây',''),(11,1,'Công nghệ âm thanh:','Active Noise Cancellation, Adaptive EQ',''),(12,1,'Tương thích:','Android, iOS (iPhone)',''),(13,1,'Tiện ích:','Chống nước, Chống ồn, Có mic thoại',''),(14,1,'Điều khiển bằng:','Cảm ứng chạm',''),(15,1,'Hãng','Apple',''),(16,1,'','','Thiết kế in-ear hoàn toàn mới và độc đáo.\nTích hợp công nghệ chống ồn chủ động (Active Noise Cancellation).\nChip H1 mạnh mẽ, xử lý âm thanh kỹ thuật số với độ trễ gần như bằng không.\nNghe nhạc đến 4.5 giờ khi bật chống ồn, 5 giờ khi tắt chống ồn.\nSử dụng song song với hộp sạc có thể dùng được đến 24 giờ nghe nhạc.\nHỗ trợ sạc nhanh, cho thời gian sử dụng đến 1 giờ chỉ với 5 phút sạc.\nHộp sạc hỗ trợ sạc không dây chuẩn Qi, tiện lợi khi sạc lại.\nTrang bị chuẩn chống nước IPX4, bảo vệ tai nghe an toàn dưới mưa nhỏ và mồ hôi.'),(17,2,'Thời gian tai nghe:','Dùng 20 giờ - Sạc 3 giờ',''),(18,2,'Cổng sạc:','Lightning',''),(19,2,'Công nghệ âm thanh:','Active Noise Cancellation, Adaptive EQ, Spatial Audio, Transparency Mode',''),(20,2,'Tương thích:','Android, iOS (iPhone)',''),(21,2,'Tiện ích:','Chống ồn',''),(22,2,'Điều khiển bằng:','Phím nhấn',''),(23,2,'Hãng','Apple',''),(24,2,'','','AirPods Max tai nghe chụp tai chống ồn chủ động.\nSử dụng chip H1 Apple cho kết nối nhanh chóng.\nTrang bị Bluetooth 5.0 kết nối mượt mà khoảng cách 10 m.\nTích hợp công nghệ chống ồn ANC, âm thanh xuyên âm (Transperency Mode).\nHỗ trợ Spatial Audio giúp tạo hiệu ứng âm thanh vòm khi xem phim và trải nghiệm nội dung Dolby Atmos được tốt hơn.\nDigital Crown điều chỉnh linh hoạt, nhạy bén.\nTích hợp trợ lý ảo Siri điều khiển thêm tiện lợi.\nNghe nhân cuộc gọi trực tiếp từ tai nghe.\nThời gian sử dụng 20 giờ khi sử dụng chống ồn ANC và Transparency Mode.\nSạc nhanh 5 phút có thể sử dụng được 1.5 giờ.'),(25,3,'Jack cắm:','3.5 mm',''),(26,3,'Tương thích:','Android, iOS (iPhone), Windows',''),(27,3,'Tiện ích:','Có mic thoại',''),(28,3,'Điều khiển bằng:','Phím nhấn',''),(29,3,'Hãng','Apple',''),(30,3,'','','Thiết kế hiện đại, sang trọng và thoải mái.\nCó phím điều chỉnh âm lượng, nghe/nhận cuộc gọi.\nCổng 3.5mm phù hợp nhiều loại điện thoại, máy tính bảng, laptop.'),(31,4,'Pin:','Dùng 5 giờ - Sạc 2 giờ',''),(32,4,'Cổng sạc:','Lightning',''),(33,4,'Tương thích:','Android, iOS (iPhone)',''),(34,4,'Ứng dụng kết nối:','Siri',''),(35,4,'Tiện ích:','Có mic thoại',''),(36,4,'Điều khiển bằng:','Cảm ứng chạm',''),(37,4,'Hãng','Apple',''),(38,4,'','','Thiết kế đơn giản, thời trang và nhỏ gọn.\nTrang bị chip H1 hoàn toàn mới, cho tốc độ kết nối, chuyển đổi giữa các thiết bị nhanh chóng.\nKích hoạt nhanh trợ lý ảo Siri bằng cách nói \"Hey, Siri\".\nCó thể sử dụng nghe nhạc lên đến 5 giờ (âm lượng 50%) cho mỗi một lần sạc đầy.\nTích hợp công nghệ sạc nhanh hiện đại. Sạc nhanh 15 phút có thể nghe nhạc 3 giờ (âm lượng 50%).\nSử dụng song song với hộp sạc có thể dùng được lên đến 24 giờ.\nTính năng nhận cuộc gọi, kích hoạt Siri, nghe hoặc tạm dừng đoạn nhạc đang phát.'),(39,5,'Thời gian nghe:','Dùng 8 giờ - Sạc 3 giờ',''),(40,5,'Thời gian hộp sạc:','Dùng 20 giờ - Sạc 3 giờ',''),(41,5,'Cổng sạc:','Type-C',''),(42,5,'Tương thích:','Android, iOS (iPhone), Windows',''),(43,5,'Tiện ích:','Chống nước, Chống ồn',''),(44,5,'Điều khiển bằng:','Cảm ứng chạm',''),(45,5,'Hãng','Samsung',''),(46,5,'','','Nâng tầm trải nghiệm âm và chất lượng cuộc gọi với chống ồn chủ động (ANC).\nKết nối không dây Bluetooth 5.0 dễ dàng với các thiết bị ngoài, đường truyền ổn định.\nChuẩn âm thanh studio với loa 2 chiều AKG mạnh mẽ.\nTận hưởng âm thanh vòm lôi cuốn, chuẩn điện ảnh từ 360 Audio.\nĐàm thoại rõ ràng với hệ thống 3 mic và bộ phận thu nhận giọng nói (Voice Pickup Unit).\nLoa 2 chiều (loa trầm 11mm, loa bổng 6.5mm).\nKhả năng kháng nước hiệu quả cùng xếp hạng kháng nước IPX7.\nThời gian sử dụng 5 giờ và 13 giờ cùng hộp sạc (bật chống ồn), sử dụng 8 giờ và 20 giờ cùng hộp sạc (tắt chống ồn).'),(47,6,'Jack cắm:','3.5 mm',''),(48,6,'Tương thích:','Android, iOS (iPhone), Windows',''),(49,6,'Tiện ích:','Có mic thoại, Đệm tai đi kèm, Tai nghe nhét tai',''),(50,6,'Điều khiển bằng:','Mic thoại, Nghe/nhận cuộc gọi, Phát/dừng chơi nhạc, Tăng/giảm âm lượng',''),(51,6,'Hãng','Samsung',''),(52,6,'','','Thiết kế gọn đẹp, có 2 màu đen và đỏ.\nDây dài 1.2 m, đệm tai có móc giúp đeo chắc chắn.\nÂm thanh trong trẻo, trung thực.\nCó mic thoại, nút chỉnh nhận cuộc gọi, chuyển bài hát, dừng/chơi nhạc, tăng/giảm âm lượng.'),(53,7,'Thời gian nghe:','Dùng 11 giờ - Sạc 2 giờ',''),(54,7,'Thời gian hộp sạc:','Dùng 22 giờ - Sạc 3 giờ',''),(55,7,'Cổng sạc:','Type-C',''),(56,7,'Công nghệ âm thanh:','Ambient Sound',''),(57,7,'Tương thích:','Android, iOS (iPhone), Windows',''),(58,7,'Điều khiển bằng:','Cảm ứng chạm',''),(59,7,'Hãng','Samsung',''),(60,7,'','','Thiết kế thời thượng, đeo vừa vặn, phù hợp cho mọi đối tượng sử dụng. \nChuẩn âm thanh studio với loa 2 chiều AKG mạnh mẽ.\nKết nối không dây Bluetooth 5.0 dễ dàng với các thiết bị.\nThời gian sử dụng 11 giờ và 22 giờ cùng hộp sạc.\nSạc nhanh 3 phút cung cấp đến 1 giờ sử dụng.\nCó thể sạc ngay với thiết bị sạc không dây chuẩn Qi bất kì.'),(61,8,'Thời gian nghe:','Dùng 7.5 giờ - Sạc 1.5 giờ',''),(62,8,'Thời gian hộp sạc:','Dùng 29 giờ - Sạc 1.5 giờ',''),(63,8,'Cổng sạc:','Type-C',''),(64,8,'Công nghệ âm thanh:','Active Noise Cancellation, Ambient Sound',''),(65,8,'Tương thích:','Android',''),(66,8,'Tiện tích:','Chống nước IPX2, Có mic thoại',''),(67,8,'Hỗ trợ kết nối:','Bluetooth 5.2',''),(68,8,'Điều khiển bằng:','Cảm ứng chạm',''),(69,8,'Hãng','Samsung',''),(70,8,'','','Thiết kế thời thượng, cá tính.\nChất âm chuẩn studio với loa 2 chiều.\nHiệu quả chống ồn lên đến 98%.\nĐàm thoại dễ dàng với 3 micro và bộ cảm biến nhận diện giọng nói.\nĐồng bộ với các thiết bị Samsung Galaxy.\nThời gian nghe nhạc: Khoảng 5 giờ (bật chống ồn), khoảng 7.5 giờ (tắt chống ồn).\nThời gian đàm thoại: Khoảng 3.5 giờ (bật chống ồn), khoảng 3.5 giờ (tắt chống ồn).\n 5 phút sạc cho 1 giờ chơi nhạc.\nĐạt tiêu chuẩn chống nước IPX2.\nĐiều khiển cảm ứng dừng/phát, trả lời cuộc gọi, chuyển bài.'),(71,9,'Pin:','Dùng 9 giờ - Sạc 2 giờ',''),(72,9,'Cổng sạc:','Micro USB',''),(73,9,'Tương thích:','Android, iOS (iPhone)',''),(74,9,'Tiện ích:','Có mic thoại, Tai nghe nhét tai',''),(75,9,'Điều khiển bằng:','Phím nhấn',''),(76,9,'Hãng','Samsung',''),(77,9,'','','Kiểu dáng nhỏ gọn, vỏ nhựa giả da sang trọng.\nChuẩn Bluetooth V3.0 kết nối mượt mà tối đa đến 10 m.\nPhối ghép với 2 thiết bị cùng lúc.\nÂm thanh rõ ràng với công nghệ giảm tạp âm.\nSử dụng kéo dài đến 9 tiếng, sạc trong 2 tiếng.'),(78,10,'Pin:','Dùng 9 giờ - Sạc 3 giờ',''),(79,10,'Cổng sạc:','Micro USB',''),(80,10,'Tương thích:','Android, iOS (iPhone)',''),(81,10,'Tiện ích:','Có mic thoại, Đệm tai đi kèm, Tai nghe nhét tai',''),(82,10,'Điều khiển bằng:','Phím nhấn',''),(83,10,'Hãng','Samsung',''),(84,10,'','',' Đệm tai được thiết kế mềm mại, linh hoạt.\nCung cấp hơn 9 giờ nghe nhạc, 9 giờ đàm thoại và 300 giờ cho thời gian chờ.\nChất lượng âm thanh tuyệt hảo nhờ công nghệ giảm tiếng ồn NR và EC.\nKết nối nam châm giữa hai đầu tai nghe của Level U sẽ giữ tai nghe khi không sử dụng.\nDung lượng pin 200 mAh (lõi pin Li-Ion). Thời gian sạc trung bình khoảng 3 giờ.'),(85,11,'Thời gian nghe:','Dùng 8 giờ - Sạc 1.5 giờ',''),(86,11,'Thời gian hộp sạc:','Dùng 16 giờ - Sạc 2.5 giờ',''),(87,11,'Cổng sạc:','Type-C',''),(88,11,'Công nghệ âm thanh:','Chống ồn HD QN1',''),(89,11,'Tương thích:','Android, iOS (iPhone, iPad), Windows',''),(90,11,'Tiện tích:','Chống nước, Chống ồn',''),(91,11,'Điều khiển bằng:','Cảm ứng chạm',''),(92,11,'Hãng','Sony',''),(93,11,'','','Kiểu dáng nhỏ gọn thiết kế sang trọng.\nThưởng thức âm thanh Hi-Res có chất lượng vượt trội nhờ công nghệ LDAC.\nKhả năng chống ồn tuyệt vời nhờ con chip V1 thế hệ mới.\nDung lượng pin lớn, hỗ trợ sạc nhanh 5 phút dùng 60 phút.\nThưởng thức trọn vẹn bài hát nhờ loại bỏ tiếng ồn của gió.\nTắt nhạc khi bạn trò chuyện với người xung quanh.\nChuẩn chống nước IPX4 bảo vệ tai nghe an toàn trước nước mưa và mồ hôi.\nDễ dàng tiếp nhận thông tin hơn với trợ lý ảo.'),(94,12,'Thời gian nghe:','Dùng 9 giờ - Sạc 2.5 giờ',''),(95,12,'Thời gian hộp sạc:','Dùng 18 giờ - Sạc 3 giờ',''),(96,12,'Cổng sạc:','Type-C',''),(97,12,'Công nghệ âm thanh:','Extra Bass',''),(98,12,'Tương thích:','Android, iOS (iPhone, iPad), Windows',''),(99,12,'Tiện tích:','Có mic thoại, Đệm tai đi kèm, Chống nước & bụi IP54',''),(100,12,'Điều khiển bằng:','Phím nhấn',''),(101,12,'Hãng','Sony',''),(102,12,'','','Thiết kế không dây thời thượng, có nút đệm êm tai.\nTái hiện chi tiết từng dải âm với công nghệ Extra Bass.\nTrang bị chuẩn kháng nước IPX4 chống thấm nước cho tai nghe hiệu quả.\nTùy chỉnh nghe nhạc, gọi rảnh tay tương tác với Google Assistant, Siri tiện lợi.\nThời gian sử dụng tối đa lên tới 18 tiếng.\nKết nối Bluetooth 5.0 ổn định với khoảng cách xa đến 10 m.'),(103,13,'Thời gian nghe:','Dùng 9 giờ - Sạc 2.5 giờ',''),(104,13,'Thời gian hộp sạc:','Dùng 26 giờ - Sạc 3 giờ',''),(105,13,'Cổng sạc:','Type-C',''),(106,13,'Công nghệ âm thanh:','Extra Bass',''),(107,13,'Tương thích:','Android, iOS (iPhone, iPad), Windows',''),(108,13,'Ứng dụng kết nối:','Sony Headphones Connect',''),(109,13,'Tiện tích:','Có mic thoại, Đệm tai đi kèm, Chống nước & bụi IP54',''),(110,13,'Điều khiển bằng:','Phím nhấn',''),(111,13,'Hãng','Sony',''),(112,13,'','','Thiết kế sang trọng, êm ái và chắc chắn khi sử dụng, nhiều cỡ đệm tai thay đổi theo người dùng.\nChuẩn âm thanh Extra Bass độc quyền của Sony cho âm bass trầm sâu lắng và mạnh mẽ.\nKết nối không dây Bluetooth 5.0 ổn định với phạm vi xa đến 10 m.\nĐiều khiển cảm ứng touch control, ứng dụng điều khiển Sony Connect Headphone (iOS/Android) tùy chỉnh tính năng theo sở thích.\nKháng nước và bụi chuẩn IP55 thoải mái sử dụng ngoài trời, khi luyện tập.\nChống ồn chủ động (ANC) cho trải nghiệm âm nhạc hoàn hảo nhất.\nThời gian sử dụng 9 giờ (13 giờ khi tắt chống ồn), thêm 9 giờ cùng hộp sạc (13 giờ khi tắt chống ồn).\nThời gian sạc 2.5 giờ, sạc nhanh 10 phút cho sử dụng thêm đến 60 phút.'),(113,14,'Pin:','Dùng 30 giờ - Sạc 3 giờ',''),(114,14,'Cổng sạc:','Type-C',''),(115,14,'Công nghệ âm thanh:','Chống ồn HD QN1',''),(116,14,'Tương thích:','Android, iOS (iPhone)',''),(117,14,'Tiện ích:','Chống ồn',''),(118,14,'Điều khiển bằng:','Cảm ứng chạm',''),(119,14,'Hãng','Sony',''),(120,14,'','','Thiết kế trẻ trung, gọn nhẹ đẽ dàng mang theo bên mình.\nChất âm chân thực, sâu lắng với màng loa 40 mm, màng chắn Polymer tinh thể lỏng (LCD) và công nghệ Hi-Res Audio.\nTự động ngừng phát nhạc khi bạn trò chuyện và phát nhạc lại khi bạn ngừng nói chuyện.\nTự động điều chỉnh âm thanh cho phù hợp với hành động của bạn, đem đến trải nghiệm tuyệt vời.\nTự động ngừng phát nhạc khi bạn tháo tai nghe ra.\nHạ thấp âm lượng chỉ với một cái chạm vào tai nghe.\nThỏa sức nghe nhạc cả ngày dài với thời lượng pin khủng đến 30 giờ, và sạc lại trong 3 giờ.\nCông nghệ chống ồn HD QN1 cho chất lượng âm hoàn hảo khi thưởng thức.\nKiểm soát việc vận hành của tai nghe một cách nhanh chóng và đơn giản.'),(121,15,'Pin:','Dùng 30 giờ - Sạc 7 giờ',''),(122,15,'Cổng sạc:','Type-C',''),(123,15,'Công nghệ âm thanh:','Extra Bass',''),(124,15,'Tương thích:','Android, iOS (iPhone)',''),(125,15,'Ứng dụng kết nối:','Sony Headphones Connect',''),(126,15,'Tiện ích:','Chống ồn',''),(127,15,'Điều khiển bằng:','Cảm ứng chạm, Phím nhấn',''),(128,15,'Hãng','Sony',''),(129,15,'','','Đệm tai dày, êm ái, mang lại cảm giác thoải mái khi đeo.\nÂm thanh bùng nổ với EXTRA BASS và công nghệ chống ồn kỹ thuật số.\nKết nối không dây với công nghệ kết nối 1 chạm NFC và Bluetooth 4.2.\nTích hợp trợ lý giọng nói Google Assistant tiện lợi, Amazon Alexa và Siri.\nĐiều chỉnh âm thanh ứng dụng Sony | Headphones Connect. \nThời gian sử dụng khoảng 30 giờ, sạc đầy 7 giờ.\nSạc nhanh trong 10 phút để có thể nghe nhạc thêm 60 phút.\nTrang bị micro hỗ trợ đàm thoại và nhiều nút tính năng tiện lợi.'),(130,16,'Pin:','Dùng 35 giờ - Sạc 4.5 giờ',''),(131,16,'Cổng sạc:','Type-C',''),(132,16,'Tương thích:','Android, iOS (iPhone), MacOS (Macbook, iMac), Windows',''),(133,16,'Tiện ích:','Có mic thoại',''),(134,16,'Điều khiển bằng:','Phím nhấn',''),(135,16,'Hãng','Sony',''),(136,16,'','','Thiết kế đẹp mắt, có thể gập phần đệm tai, gọn gàng dễ mang theo.\nKết nối Bluetooth 5.0 ổn định, tiện lợi, khoảng cách kết nối tối đa là 10 m.\nĐệm tai nghe dày dặn, êm ái khi đeo trong thời gian dài.\nSạc lại trong 4.5 giờ, thời lượng sử dụng pin cực khủng lên đến 35 giờ (sạc 10 phút có thể nghe thêm đến 90 phút).\nTích hợp micro đàm thoại tiện lợi, có thể nhận cuộc gọi dễ dàng mà không cần thao tác trên điện thoại.\nTrang bị các nút nhấn như: Nhận cuộc gọi, phát/dừng chơi nhạc, chuyển bài hát, tăng/giảm âm lượng.'),(137,17,'Jack cắm:','3.5 mm',''),(138,17,'Tương thích:','Android, Windows',''),(139,17,'Tiện ích:','Có mic thoại',''),(140,17,'Điều khiển bằng:','Phím nhấn, Chuyển bài hát, Mic thoạiNghe/nhận cuộc gọi, Phát/dừng chơi nhạc',''),(141,17,'Hãng','Sony',''),(142,17,'','','Thiết kế hiện đại, đệm tai lớn, mềm, thoải mái khi đeo.\nQuai đeo tai nghe có thể kéo dãn 4.5 cm.\nTái tạo âm thanh trong trẻo, rõ nét.\nDây dài 1.2 m, jack cắm 3.5 mm thông dụng.'),(143,18,'Pin:','Dùng 15 giờ - Sạc 3 giờ',''),(144,18,'Cổng sạc:','Type-C',''),(145,18,'Công nghệ âm thanh:','Extra Bass',''),(146,18,'Tương thích:','Android, iOS (iPhone), MacOS (Macbook, iMac), Windows',''),(147,18,'Tiện ích:','Chống nước, Có mic thoại',''),(148,18,'Điều khiển bằng:','Phím nhấn',''),(149,18,'Hãng','Sony',''),(150,18,'','','Thiết kế gọn đẹp, kiểu vòng cổ thoải mái, có móc cố định kèm đệm êm dễ dùng.\nChống thấm nước chuẩn IPX5 bảo vệ tai nghe khi tập luyện, tiếp xúc với nước.\nÂm thanh sâu lắng với công nghệ Extra Bass hiện đại.\nDễ dàng tùy chỉnh tác vụ nghe nhạc, gọi rảnh tay, tương tác với Google Assistant, Siri.\nDùng mọi lúc mọi nơi với thời gian tối đa 15 tiếng.\nKết nối Bluetooth 5.0 với khoảng cách 10 m, đường truyền ổn định.'),(151,19,'Pin:','Dùng 8.5 giờ - Sạc 2.5 giờ',''),(152,19,'Cổng sạc:','Micro USB',''),(153,19,'Công nghệ âm thanh:','Extra Bass',''),(154,19,'Tương thích:','Android, iOS (iPhone), MacOS (Macbook, iMac), Windows',''),(155,19,'Tiện ích:','Có mic thoại, Đệm tai đi kèm, Tai nghe nhét tai',''),(156,19,'Hỗ trợ kết nối:','NFC, Bluetooth 4.1',''),(157,19,'Điều khiển bằng:','Phím nhấn',''),(158,19,'Hãng','Sony',''),(159,19,'','','Được thiết kế bền và cứng cáp phù hợp trong hoạt động thể thao.\nSử dụng công nghệ EXTRA BASS giúp tăng cường âm trầm, phù hợp cho các dòng nhạc điện tử.\nThiết kế IPX4 chống tia nước bắn phù hợp để sử dụng cho mọi thời tiết.\nKết nối không dây với Bluetooth 4.1, khoảng cách kết nối đến 10 m.\nMóc cố định giúp giữ tai nghe nằm ở đúng vị trí.\nMột micro tích hợp để thực hiện cuộc gọi rảnh tay.\nThời gian đàm thoại/nghe nhạc có thể lên đến 8.5 giờ, thời gian sạc khoảng 2.5 giờ.\nThời gian chờ có thể lên đến 200 giờ.'),(160,20,'Thời gian nghe:','Dùng 8 giờ - Sạc 3 giờ',''),(161,20,'Thời gian hộp sạc:','Dùng 16 giờ - Sạc 3 giờ',''),(162,20,'Cổng sạc:','Type-C',''),(163,20,'Công nghệ âm thanh:','Active Noise Cancelling, Transparency Mode',''),(164,20,'Tương thích:','Android, iOS (iPhone, iPad)',''),(165,20,'Ứng dụng kết nối:','Bluetooth TWS',''),(166,20,'Tiện tích:','Chống ồn, Đệm tai đi kèm',''),(167,20,'Điều khiển bằng:','Phím nhấn',''),(168,20,'Hãng','Beats',''),(169,20,'','','Thiết kế hình bầu dục lạ mắt, 2 màu đen - trắng thời trang, đeo vừa vặn.\nChất âm mạnh mẽ, cân bằng. \nHỗ trợ Bluetooth 5.0 Class-1 cho kết nối nhanh chóng.\nSử dụng phù hợp hoàn cảnh với công nghệ Chống ồn chủ động ANC và Transparency mode (Xuyên âm).\nTai nghe dùng được 8 tiếng, hộp sạc 16 tiếng, sạc nhanh Fast Fuel 5 phút cho 1 tiếng sử dụng.\nYên tâm luyện tập với tiêu chuẩn chống nước IPX4.\nPhím nhấn dễ chỉnh phát/dừng nhạc, bật trợ lý ảo, nhận cuộc gọi,...'),(170,21,'Thời gian nghe:','Dùng 9 giờ - Sạc 3 giờ',''),(171,21,'Thời gian hộp sạc:','Dùng 24 giờ - Sạc 3 giờ',''),(172,21,'Cổng sạc:','Lightning',''),(173,21,'Tương thích:','Android, iOS (iPhone)',''),(174,21,'Ứng dụng kết nối:','Siri',''),(175,21,'Tiện tích:','Chống nước, Có mic thoại',''),(176,21,'Điều khiển bằng:','Phím nhấn',''),(177,21,'Hãng','Beats',''),(178,21,'','','Tích hợp chip H1 cho tốc độ kết nối, chuyển đổi, dùng ổn định.\nTrang bị cảm biến Auto Play khi bỏ tai, nhạc sẽ tạm dừng phát ngay.\nCổng sạc Lighting chuẩn hãng, gọi trợ lý ảo Siri thông qua khẩu lệch \"Hey Siri\" quen thuộc.\nChuẩn chống nước, mồ hôi IP57 yên tâm khi chơi thể thao cường độ cao.\nThời gian nghe nhạc và đàm thoại lên tới 9 giờ và kết hợp hộp sạc là 24 giờ.\nCó tính năng Fast Fuel phát nhạc 1.5 giờ sau khi sạc 5 phút và 4.5 giờ phát nhạc khi sạc sau 15 phút.'),(179,22,'Thời gian tai nghe:','Dùng 40 giờ - Sạc 3 giờ',''),(180,22,'Cổng sạc:','Micro USB',''),(181,22,'Tương thích:','Android, iOS (iPhone), Windows',''),(182,22,'Ứng dụng kết nối:','Siri',''),(183,22,'Điều khiển bằng:','Phím nhấn',''),(184,22,'Hãng','Beats',''),(185,22,'','','Thiết kế gọn nhẹ, sang trọng, đệm tai mềm thoải mai khi đeo.\nKết nối không dây Bluetooth 4.0 mượt mà xa đến 10 m. \nSử dụng chip Apple W1 tạo âm thanh mạnh mẽ, chất lượng cao.\nThời gian sử dụng 40 giờ liên tục sau 1 lần sạc.\nTính năng Fast Fuel sạc nhanh 5 phút sử dụng được 3 giờ.'),(186,23,'Thời gian tai nghe:','Dùng 22 giờ - Sạc 3 giờ',''),(187,23,'Cổng sạc:','Micro USB',''),(188,23,'Công nghệ âm thanh:','Active Noise Cancelling',''),(189,23,'Tương thích:','Android, iOS (iPhone), Windows',''),(190,23,'Tiện ích:','Chống ồn',''),(191,23,'Điều khiển bằng:','Phím nhấn',''),(192,23,'Hãng','Beats',''),(193,23,'','','Thiết kế gọn nhẹ, tinh tế, đệm tai mềm thoải mái khi đeo.\nKết nối không dây với Bluetooth 4.0, khoảng cách kết nối đến 10 m.\nSử dụng chip Apple W1 mới kết nối nhanh và ổn định, âm thanh mạnh mẽ.\nTrang bị công nghệ chống ồn chủ động (Pure Active Noise Cancelling).\nThời gian sử dụng 22 giờ (bật chống ồn), 40 giờ (tắt chống ồn).\nTính năng Fast Fuel sạc nhanh 10 phút sử dụng được 3 giờ.'),(194,24,'Pin:','Dùng 12 giờ - Sạc 2 giờ',''),(195,24,'Công nghệ âm thanh:','Audio Sharing',''),(196,24,'Tương thích:','Android, iOS (iPhone), Windows',''),(197,24,'Tiện ích:','Đệm tai đi kèm',''),(198,24,'Điều khiển bằng:','Phím nhấn',''),(199,24,'Hãng','Beats',''),(200,24,'','','Thiết kế gọn nhẹ, phù hợp với các hoạt động thể thao.\nTích hợp chip Apple W1 cho âm thanh mạnh mẽ, chất lượng cao.\nThời gian sử dụng 12 giờ liên tục sau 1 lần sạc.\nTính năng Fast Fuel sạc nhanh 10 phút sử dụng được 1.5 giờ.'),(201,25,'Pin:','Dùng 12 giờ - Sạc 2 giờ',''),(202,25,'Cổng sạc:','Micro USB',''),(203,25,'Tương thích:','Android, iOS (iPhone), Windows',''),(204,25,'Tiện ích:','Chống nước',''),(205,25,'Điều khiển bằng:','Phím nhấn',''),(206,25,'Hãng','Beats',''),(207,25,'','','Thiết kế năng động, 2 phiên bản màu đen - đen đỏ lựa chọn tùy thích.  \nCải thiện chất lượng âm thanh tối ưu với chip Apple W1. \nThời gian sử dụng liên tục đến 12 giờ sau 1 lần sạc.\nTính năng Fast Fuel sạc nhanh 5 phút sử dụng được trong 1 giờ.\nDual-Driver mang đến hiệu suất âm thanh cao.\nChuẩn IPX4 chống mồ hôi và tia nước bắn.'),(208,26,'Pin:','Dùng 6 giờ - Sạc 2 giờ',''),(209,26,'Cổng sạc:','Micro USB',''),(210,26,'Tương thích:','Android, iOS (iPhone), Windows',''),(211,26,'Tiện ích:','Có mic thoại, Đệm tai đi kèm, Tai nghe nhét tai',''),(212,26,'Điều khiển bằng:','Phím nhấn',''),(213,26,'Hãng','JBL',''),(214,26,'','','Tai nghe với thiết kế dạng in-ear với kiểu dáng trẻ trung, năng động, trọng lượng chỉ 16.5g.\nKích thước màng loa 9mm mang đến âm thanh mạnh mẽ và cân bằng.\nĐệm tai nghe mềm mại tạo cảm giác thoải mái khi đeo.\nKết nối không dây với Bluetooth 4.0 nhanh, ổn định.\nTương thích với nhiều dòng điện thoại, máy tính bảng.\nThời gian sử dụng 6 giờ, thời gian sạc 2 giờ.'),(215,27,'Pin:','Dùng 8 giờ - Sạc 2 giờ',''),(216,27,'Cổng sạc:','Micro USB',''),(217,27,'Tương thích:','Android, iOS (iPhone), Windows',''),(218,27,'Tiện ích:','Có mic thoại, Đệm tai đi kèm, Tai nghe nhét tai',''),(219,27,'Hãng','JBL',''),(220,27,'','','Tai nghe thể thao thiết kế gọn nhẹ với kiểu dáng trẻ trung, năng động.\nThời gian sử dụng 8 giờ đồng hồ, thời gian sạc 2 giờ.\nCông nghệ Bluetooth 4.2 cho kết nối tới 10 m mượt mà, ổn định.\nHỗ trợ bằng giọng nói Google Assistant chỉ với 1 nút bấm.\nTích hợp Microphone với công nghệ khử tiếng vang cho âm thanh cuộc gọi trong trẻo, rõ ràng.\nCung cấp các nút tai nghe với các kích cỡ khác nhau phù hợp với người dùng.'),(221,28,'Thời gian nghe:','Dùng 3 giờ - Sạc 2 giờ',''),(222,28,'Thời gian hộp sạc:','Dùng 16 giờ - Sạc 2 giờ',''),(223,28,'Cổng sạc:','Micro USB',''),(224,28,'Công nghệ âm thanh:','JBL Pure Bass',''),(225,28,'Tương thích:','Android, iOS (iPhone), Windows',''),(226,28,'Tiện tích:','Có mic thoại',''),(227,28,'Điều khiển bằng:','Phím nhấn',''),(228,28,'Hãng','JBL',''),(229,28,'','','Thiết kế earbuds sành điệu, trẻ trung và bắt mắt.\nTrang bị Bluetooth 5.0 cho kết nối nhanh và ổn định.\nChất lượng âm thanh vượt trội với driver 12.5 mm và công nghệ JBL Pure Bass Sound.\nThời gian sử dụng 3 giờ, hộp sạc cung cấp thêm 16 giờ cho tai nghe.'),(230,29,'Thời gian nghe:','Dùng 10 giờ - Sạc 2 giờ',''),(231,29,'Thời gian hộp sạc:','Dùng 20 giờ - Sạc 2 giờ',''),(232,29,'Cổng sạc:','Micro USB',''),(233,29,'Công nghệ âm thanh:','Ambient Aware, JBL Signature Sound, TalkThru',''),(234,29,'Tương thích:','Android, iOS (iPhone), Windows',''),(235,29,'Tiện tích:','Chống nước, Có mic thoại, Đệm tai đi kèm, Tai nghe nhét tai',''),(236,29,'Điều khiển bằng:','Phím nhấn',''),(237,29,'Hãng','JBL',''),(238,29,'','','Thiết kế nhỏ gọn, hiện đại và cá tính.\nCông nghệ bluetooth 5.0 cho kết nối nhanh và ổn định.\nCông nghệ âm thanh JBL Signature Sound.\nTrang bị các công nghệ TalkThru và Ambient Aware.\nCó khả năng chống nước đạt chuẩn IPX7.\nThời gian sử dụng 10 giờ, thêm 20 giờ cùng hộp sạc.\nThời gian sạc 2 giờ, sạc nhanh 10 phút sử dụng đến 60 phút.'),(239,30,'Jack cắm:','3.5 mm',''),(240,30,'Công nghệ âm thanh:','Ambient Aware, JBL Signature Sound, TalkThru',''),(241,30,'Tương thích:','MacOS (Macbook, iMac), Windows',''),(242,30,'Điều khiển bằng:','Phím nhấn',''),(243,30,'Hãng','JBL',''),(244,30,'','','Tai nghe chụp tai thời thượng, đệm xốp siêu nhẹ, phù hợp tín đồ chơi game.\nTái tạo âm thanh chân thật, sắc nét nhờ màng loa 40 mm, công nghệ JBL QuantumSOUND Signature.\nCó microphone cho đàm thoại to, rõ, kêu gọi đồng đội dễ dàng hơn. \nSử dụng jack kết nối 3.5 mm kết nối đa thiết bị. \nTích hợp nút cơ bật/tắt, tăng giảm âm lượng linh hoạt. '),(245,31,'Pin:','Dùng 16 giờ - Sạc 2 giờ',''),(246,31,'Cổng sạc:','Micro USB',''),(247,31,'Tương thích:','Android,iOS (iPhone)',''),(248,31,'Tiện ích:','Có mic thoại',''),(249,31,'Điều khiển bằng:','Phím nhấn',''),(250,31,'Hãng','JBL',''),(251,31,'','','Thiết kế thể thao sành điệu, có thể gấp gọn.\nCó thể kéo dãn phần chụp tai phù hợp nhiều người dùng khác nhau.\nCông nghệ Bluetooth 4.1, kết nối trong khoảng cách đến 10 m.\nBật trợ lý ảo nhanh chóng ra lệnh ngay trên tai nghe.\nPin 16 giờ, hoạt động cả ngày dài.\nTrang bị các nút nhấn điều khiển như: Phát/dừng chơi nhạc, nhận cuộc gọi, tăng, giảm âm lượng.'),(252,32,'Thời gian nghe:','Dùng 4 giờ - Sạc 1.5 giờ',''),(253,32,'Thời gian hộp sạc:','Dùng 12 giờ - Sạc 2 giờ',''),(254,32,'Cổng sạc:','Micro USB',''),(255,32,'Công nghệ âm thanh:','Lọc âm, khử ồn DSP',''),(256,32,'Tương thích:','Android, iOS (iPhone), Windows',''),(257,32,'Tiện tích:','Chống nước',''),(258,32,'Điều khiển bằng:','Phím nhấn',''),(259,32,'Hãng','Xiaomi',''),(260,32,'','','Thiết kế nhỏ gọn, phù hợp với nhiều kích cỡ tai.\nMàng loa có kích thước 7.2 mm cho âm bass các thêm dày và sâu.\nBắt trọn âm thanh với công nghệ khử tiếng ồn DSP.\nYên tâm sử dụng với khả năng chống nước IPX4.\nNghe nhạc thả ga, sạc đầy pin nhanh chóng.\nKết nối không dây nhanh chóng, tương thích với nhiều thiết bị nhờ công nghệ Bluetooth 5.0.\nTự động kết nối, điều khiển tai nghe tiện lợi.'),(261,33,'Thời gian nghe:','Dùng 5 giờ - Sạc 1.5 giờ',''),(262,33,'Thời gian hộp sạc:','Dùng 20 giờ - Sạc 1.5 giờ',''),(263,33,'Cổng sạc:','Type-C',''),(264,33,'Công nghệ âm thanh:','codecAAC',''),(265,33,'Tương thích:','Android, iOS (iPhone), Windows',''),(266,33,'Tiện tích:','Chống nước',''),(267,33,'Điều khiển bằng:','Cảm ứng chạm',''),(268,33,'Hãng','Xiaomi',''),(269,33,'','','Thiết kế nhỏ gọn, tiện lợi mang theo.\nChuẩn Bluetooth 5.0 kết nối mượt mà đến 10m.\nKhả năng chống nước chuẩn IPX5.\nĐiều khiển bằng cảm ứng trên tai nghe.\nTrang bị công nghệ khử tiếng ồn môi trường.\nÂm thanh tuyệt vời với codec AAC và màng loa 14,2 mm.\nThời gian sử dụng 5 giờ, kèm hộp sạc 20 giờ và sạc 1.5 giờ.'),(270,34,'Thời gian nghe:','Dùng 4 giờ - Sạc 1 giờ',''),(271,34,'Thời gian hộp sạc:','Dùng 18 giờ - Sạc 1.5 giờ',''),(272,34,'Cổng sạc:','Type-C',''),(273,34,'Tương thích:','Android, iOS (iPhone), Windows',''),(274,34,'Tiện tích:','Chống nước',''),(275,34,'Điều khiển bằng:','Cảm ứng chạm',''),(276,34,'Hãng','Xiaomi',''),(277,34,'','','Kiểu dáng nhỏ gọn cùng thiết kế hiện đại, trẻ trung.\nKết nối nhanh chóng và ổn định trong phạm vi 10 m nhờ Bluetooth 5.0.\nDễ dàng điều khiển chỉ bằng cảm ứng thao tác chạm.\nTrò chuyện điện thoại thoải mái và rõ ràng hơn nhờ công nghệ khử tiếng ồn.\nBảo vệ tai nghe khỏi tác hại của nước với chuẩn chống nước IPX5.\nChất âm sống động, tận hưởng trọn vẹn các giai điệu.\nThời gian sử dụng 4 giờ, kèm hộp sạc 18 giờ và sạc 1 giờ.'),(278,35,'Thời gian nghe:','Dùng 6 giờ - Sạc 1 giờ',''),(279,35,'Thời gian hộp sạc:','Dùng 12 giờ - Sạc 1.5 giờ',''),(280,35,'Cổng sạc:','Type-C',''),(281,35,'Công nghệ âm thanh:','Headphone Spatial Processing, Meridian, Truyền phát nhạc MQA',''),(282,35,'Tương thích:','Android, iOS (iPhone), Windows',''),(283,35,'Ứng dụng kết nối:','TONE Free',''),(284,35,'Tiện tích:','Chống nước, Đệm tai đi kèm',''),(285,35,'Hỗ trợ kết nối:','Bluetooth 5.0',''),(286,35,'Điều khiển bằng:','Cảm ứng chạm',''),(287,35,'Hãng','LG',''),(288,35,'','','Hộp sạc UVnano mới kháng khuẩn đến 99.9%, hỗ trợ sạc không dây.\nÂm thanh độ phân giải cao, chân thực với công nghệ của Meridian từ Anh Quốc.\nThiết kế vừa vặn, đệm silicone chống ồn, tích hợp micro kép để cuộc gọi rõ ràng hơn.\nChuẩn Bluetooth 5.0 với khoảng cách kết nối đến 10 m.\nKhả năng chống nước chuẩn IPX4 bảo vệ tai nghe.\nSạc qua cổng Type-C hoặc có thể sạc không dây.\nThời lượng pin lên đến 18 giờ khi kết hợp với hộp sạc, sạc nhanh 5 phút dùng thêm đến 1 giờ.\nDễ dàng tùy chỉnh và tìm kiếm tai nghe với ứng dụng TONE Free.'),(289,36,'Pin:','Dùng 12 giờ - Sạc 2 giờ',''),(290,36,'Cổng sạc:','Micro USB',''),(291,36,'Công nghệ âm thanh:','Quad Layer',''),(292,36,'Tương thích:','Android, iOS (iPhone), Windows',''),(293,36,'Điều khiển bằng:','Phím nhấn',''),(294,36,'Hãng','LG',''),(295,36,'','','Thiết kế gọn nhẹ, liền mạch tinh xảo và thanh lịch, nút tai có thể thu vào.\nÂm thanh được điều chỉnh bởi Harman Kardon, cho ra chất âm tốt nhất.\nCông nghệ Bluetooth 4.2 cho kết nối ổn định, mượt mà đến 10 m.\nTích hợp micro, có nút Google Assistant chuyên dụng.\nDung lượng pin 220 mAh, thời gian sạc 2 giờ, thời gian nghe nhạc 12 giờ, thời gian đàm thoại 13 giờ.'),(296,37,'Pin:','Dùng 13 giờ - Sạc 2 giờ',''),(297,37,'Cổng sạc:','Micro USB',''),(298,37,'Công nghệ âm thanh:','Quad Layer',''),(299,37,'Tương thích:','Android, iOS (iPhone), Windows',''),(300,37,'Tiện ích:','Có mic thoại, Đệm tai đi kèm, Tai nghe nhét tai',''),(301,37,'Điều khiển bằng:','Phím nhấn',''),(302,37,'Hãng','LG',''),(303,37,'','','Thiết kế dạng vòng cổ gọn nhẹ, đệm tai mềm êm ái.\nCông nghệ Quad Layer tiên tiến tạo nên sự hài hòa, cân bằng cho âm thanh.\nThông báo rung khi có cuộc gọi đến, tích hợp micro.\nCông nghệ bluetooth 4.1 cho kết nối ổn định, mượt mà đến 10m.\nDung lượng pin 210 mAh, thời gian sạc 2 giờ, thời gian nghe nhạc 13 giờ, thời gian đàm thoại 14 giờ.'),(304,38,'Pin:','Dùng 10 giờ - Sạc 2 giờ',''),(305,38,'Cổng sạc:','Micro USB',''),(306,38,'Tương thích:','Android, iOS (iPhone), Windows',''),(307,38,'Tiện ích:','Có mic thoại',''),(308,38,'Điều khiển bằng:','Phím nhấn',''),(309,38,'Hãng','Kanen',''),(310,38,'','','Công nghệ bluetooth 4.1 cho khoảng cách kết nối lên đến 10m.\nCó thể gọi nhanh, nghe nhạc, tạo cuộc hẹn, v.v.. thông qua Siri hay Google Voice.\nĐệm tai nghe dày, thoải mái khi sử dụng khoảng thời gian dài.\nDung lượng pin: 300 mAh, cho thời gian sử dụng có thể lên đến 10 giờ, thời gian sạc khoảng 2 giờ.'),(311,39,'Pin:','Dùng 18 giờ - Sạc 2 giờ',''),(312,39,'Cổng sạc:','Micro USB',''),(313,39,'Tương thích:','Android, iOS (iPhone), Windows',''),(314,39,'Tiện ích:','Có mic thoại',''),(315,39,'Điều khiển bằng:','Phím nhấn',''),(316,39,'Hãng','Kanen',''),(317,39,'','','Thiết kế hiện đại, năng động, có thể gấp gọn khi không sử dụng.\nKhoảng cách kết nối xa đến 10 m qua công nghệ Bluetooth 4.1. \nSử dụng liên tục trong 18 giờ, sạc đầy trong 2 giờ.\nDễ dàng điều khiển qua giọng nói với Siri, Google Voice.'),(318,40,'Jack cắm:','3.5 mm',''),(319,40,'Tương thích:','Android, iOS (iPhone), Windows',''),(320,40,'Tiện ích:','Có mic thoại',''),(321,40,'Điều khiển bằng:','Phím nhấn',''),(322,40,'Phím điều khiển:','Chuyển bài hát, Mic thoạiNghe/nhận cuộc gọi, Phát/dừng chơi nhạc, Tăng/giảm âm lượng',''),(323,40,'Hãng','Kanen',''),(324,40,'','','Lớp đệm tai êm và dày, giúp đeo tai thoải mái và hạn chế bị rách.\nCó thể kéo dãn tai nghe 4 cm để vừa vặn hơn khi sử dụng.\nTương thích với hầu hết điện thoại hiện nay.\nDây dài lên đến 150 cm thoải mái để vừa dùng máy vừa nghe nhạc.'),(325,41,'Jack cắm:','3.5 mm',''),(326,41,'Tương thích:','Android, iOS (iPhone), Windows',''),(327,41,'Tiện ích:','Có mic thoại',''),(328,41,'Điều khiển bằng:','Phím nhấn',''),(329,41,'Phím điều khiển:','Chuyển bài hát, Mic thoạiNghe/nhận cuộc gọi, Phát/dừng chơi nhạc, Tăng/giảm âm lượng',''),(330,41,'Hãng','Kanen',''),(331,41,'','','Có thể gấp gọn khi muốn cho vào trong balo.\nLớp đệm tai êm và dày, giúp đeo tai thoải mái và hạn chế bị rách.\nCó thể kéo dãn tai nghe 3 cm để vừa vặn hơn khi sử dụng.\nTương thích với hầu hết điện thoại hiện nay.\nCó nút nhận cuộc gọi, phát/dừng chơi nhạc, tăng giảm âm lượng.\nDây dài lên đến 1.5 m thoải mái để vừa dùng máy vừa nghe nhạc.'),(332,42,'Jack cắm:','3.5 mm',''),(333,42,'Tương thích:','Android, iOS (iPhone), Windows',''),(334,42,'Tiện ích:','Có mic thoại, Đệm tai đi kèm, Tai nghe nhét tai',''),(335,42,'Điều khiển bằng:','Phím nhấn',''),(336,42,'Phím điều khiển:','Chuyển bài hát, Mic thoạiNghe/nhận cuộc gọi, Phát/dừng chơi nhạc, Tăng/giảm âm lượng',''),(337,42,'Hãng','Kanen',''),(338,42,'','','Thiết kế sang trọng, màu sắc thời trang, dây 1.2 m dẹt chống rối. \nĐệm tai êm ái, có 3 cặp dễ lựa chọn đeo vừa vặn.\nCó mic thoại, nút bấm để nghe/nhận cuộc gọi, phát/dừng chơi nhạc, tăng/giảm âm lượng.\nTrang bị jack cắm 3.5 mm phối ghép được với nhiều điện thoại, máy tính bảng.'),(339,43,'Jack cắm:','3.5 mm',''),(340,43,'Tương thích:','Android, iOS (iPhone), Windows',''),(341,43,'Tiện ích:','Có mic thoại, Đệm tai đi kèm, Tai nghe nhét tai',''),(342,43,'Điều khiển bằng:','Phím nhấn',''),(343,43,'Phím điều khiển:','Chuyển bài hát, Mic thoạiNghe/nhận cuộc gọi, Phát/dừng chơi nhạc, Tăng/giảm âm lượng',''),(344,43,'Hãng','Kanen',''),(345,43,'','','Thiết kế bắt mắt, dây dẹt chống xoắn rối, dài 1.2 m.\nKết nối được với nhiều thiết bị có tích hợp cổng 3.5mm.\nMic thoại cho âm thanh trong trẻo, rõ nét.\nCó nút nhấn - nút gạt điều chỉnh tăng/giảm âm lượng, ngừng/chơi nhạc, chuyển bài, nhận cuộc gọi tiện lợi.\nThiết kế móc tai đảm bảo đeo tai nghe chắc chắn hơn.'),(346,44,'Jack cắm:','3.5 mm',''),(347,44,'Tương thích:','Android, iOS (iPhone), Windows',''),(348,44,'Tiện ích:','Có mic thoại, Đệm tai đi kèm, Tai nghe nhét tai',''),(349,44,'Điều khiển bằng:','Phím nhấn',''),(350,44,'Phím điều khiển:','Nghe/nhận cuộc gọi, Phát/dừng chơi nhạc, Tăng/giảm âm lượng',''),(351,44,'Hãng','Awei',''),(352,44,'','','Thiết kế gọn nhẹ, dây dài 124 cm.\nDạng tai nghe nút cho khả năng cách âm tốt.\nJack cắm 3.5 mm tương thích với nhiều thiết bị.\nTích hợp mic thoại, nút công tắc để nhận cuộc gọi, dừng/phát chơi nhạc, tăng/giảm âm lượng.'),(353,45,'Jack cắm:','3.5 mm',''),(354,45,'Tương thích:','Android, iOS (iPhone), Windows',''),(355,45,'Tiện ích:','Có mic thoại, Đệm tai đi kèm, Tai nghe nhét tai',''),(356,45,'Điều khiển bằng:','Phím nhấn',''),(357,45,'Phím điều khiển:','Nghe/nhận cuộc gọi, Phát/dừng chơi nhạc, Tăng/giảm âm lượng',''),(358,45,'Hãng','Awei',''),(359,45,'','','Thiết kế nhỏ gọn, dễ mang theo, có dây dài 134 cm.\nĐệm tai cao su cách âm tốt, cho âm thanh rõ ràng. \nJack 3.5mm dạng chữ L chịu lực, kết nối được nhiều thiết bị.\nTrang bị mic thoại, dễ dàng nhận cuộc gọi, tăng/giảm âm lượng, dừng/phát nhạc qua nút bấm.'),(360,46,'Jack cắm:','3.5 mm',''),(361,46,'Tương thích:','Android, iOS (iPhone), Windows',''),(362,46,'Tiện ích:','Có mic thoại, Đệm tai đi kèm, Tai nghe nhét tai',''),(363,46,'Điều khiển bằng:','Phím nhấn',''),(364,46,'Phím điều khiển:','Nghe/nhận cuộc gọi, Phát/dừng chơi nhạc, Tăng/giảm âm lượng',''),(365,46,'Hãng','Awei',''),(366,46,'','','Thiết kế thời trang, nhỏ gọn, dễ dàng mang theo.\nCó jack cắm 3.5mm, tương thích với nhiều thiết bị.\nCó đệm tai cao su cho cảm giác dễ chịu, hạn chế tiếng ồn và có âm thanh ra tốt.\nNút điều khiển trên tai nghe tiện lợi.'),(367,47,'Jack cắm:','3.5 mm',''),(368,47,'Tương thích:','Android, iOS (iPhone), Windows',''),(369,47,'Tiện ích:','Có mic thoại, Đệm tai đi kèm, Tai nghe nhét tai',''),(370,47,'Điều khiển bằng:','Phím nhấn',''),(371,47,'Phím điều khiển:','Nghe/nhận cuộc gọi, Phát/dừng chơi nhạc, Tăng/giảm âm lượng',''),(372,47,'Hãng','Awei',''),(373,47,'','','Thiết kế đẹp mắt, trọng lượng nhẹ, dây dài 1.34 m.\nĐệm tai bằng cao su chống ồn, đeo thoải mái.\nKết hợp được với các máy cổng 3.5 mm.\nCó nút nhấn tiện nhận cuộc gọi, tăng giảm âm lượng, dừng/phát nhạc.'),(374,48,'Jack cắm:','3.5 mm',''),(375,48,'Tương thích:','Android, iOS (iPhone), Windows',''),(376,48,'Tiện ích:','Có mic thoại, Đệm tai đi kèm, Tai nghe nhét tai',''),(377,48,'Điều khiển bằng:','Phím nhấn',''),(378,48,'Phím điều khiển:','Nghe/nhận cuộc gọi, Phát/dừng chơi nhạc, Tăng/giảm âm lượng',''),(379,48,'Hãng','Awei',''),(380,48,'','','Kiểu dáng đơn giản, màu đen và bạc sành điệu.\nHỗ trợ mic thoại, âm thanh sống động, không bị vỡ tiếng.\nJack 3.5 mm thông dụng, chiều dài dây đến 1.2 m.\nCó nút chỉnh nhận cuộc gọi, tăng/giảm âm lượng, chuyển bài, ngừng/chơi nhạc,....'),(381,49,'Jack cắm:','3.5 mm',''),(382,49,'Tương thích:','Android, iOS (iPhone), Windows',''),(383,49,'Tiện ích:','Có mic thoại, Đệm tai đi kèm, Tai nghe nhét tai',''),(384,49,'Điều khiển bằng:','Phím nhấn',''),(385,49,'Phím điều khiển:','Nghe/nhận cuộc gọi, Phát/dừng chơi nhạc, Tăng/giảm âm lượng',''),(386,49,'Hãng','Awei',''),(387,49,'','','Tương thích tốt với nhiều dòng điện thoại.\nTai nghe dạng nút giúp cách âm tốt với bên ngoài.\nCó nút ấn nhận cuộc gọi, ngừng/chơi nhạc, chuyển bài hát.\nDây dài 120 cm thoải mái để vừa dùng máy vừa nghe nhạc.'),(388,50,'Jack cắm:','3.5 mm',''),(389,50,'Tương thích:','Android, iOS (iPhone), Windows',''),(390,50,'Tiện ích:','Có mic thoại, Đệm tai đi kèm, Tai nghe nhét tai',''),(391,50,'Điều khiển bằng:','Phím nhấn',''),(392,50,'Phím điều khiển:','Nghe/nhận cuộc gọi, Phát/dừng chơi nhạc, Tăng/giảm âm lượng',''),(393,50,'Hãng','Awei',''),(394,50,'','','Có nút chỉnh tương thích với các dòng điện thoại khác nhau.\nTai nghe dạng nút giúp cách âm tốt với bên ngoài.\nCó nút ấn nhận cuộc gọi, ngừng/chơi nhạc.\nDây dài 120 cm thoải mái để vừa dùng máy vừa nghe nhạc.');
/*!40000 ALTER TABLE `product_desc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `pi_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `pi_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pi_id`),
  KEY `FKqnq71xsohugpqwf3c9gxmsuy` (`product_id`),
  CONSTRAINT `FKqnq71xsohugpqwf3c9gxmsuy` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,1,'./assets/imgs/Apple/1/0.jpg'),(2,1,'./assets/imgs/Apple/1/1.jpg'),(3,1,'./assets/imgs/Apple/1/2.jpg'),(4,1,'./assets/imgs/Apple/1/3.jpg'),(5,1,'./assets/imgs/Apple/1/4.jpg'),(6,2,'./assets/imgs/Apple/2/0.jpg'),(7,2,'./assets/imgs/Apple/2/1.jpg'),(8,2,'./assets/imgs/Apple/2/2.jpg'),(9,2,'./assets/imgs/Apple/2/3.jpg'),(10,3,'./assets/imgs/Apple/3/0.jpg'),(11,3,'./assets/imgs/Apple/3/1.jpg'),(12,3,'./assets/imgs/Apple/3/2.jpg'),(13,3,'./assets/imgs/Apple/3/3.jpg'),(14,4,'./assets/imgs/Apple/4/0.jpg'),(15,4,'./assets/imgs/Apple/4/1.jpg'),(16,4,'./assets/imgs/Apple/4/2.jpg'),(17,4,'./assets/imgs/Apple/4/3.jpg'),(18,5,'./assets/imgs/Samsung/1/0.jpg'),(19,5,'./assets/imgs/Samsung/1/1.jpg'),(20,5,'./assets/imgs/Samsung/1/2.jpg'),(21,5,'./assets/imgs/Samsung/1/3.jpg'),(22,6,'./assets/imgs/Samsung/2/0.jpg'),(23,6,'./assets/imgs/Samsung/2/1.jpg'),(24,6,'./assets/imgs/Samsung/2/2.jpg'),(25,6,'./assets/imgs/Samsung/2/3.jpg'),(26,7,'./assets/imgs/Samsung/3/0.jpg'),(27,7,'./assets/imgs/Samsung/3/1.jpg'),(28,7,'./assets/imgs/Samsung/3/2.jpg'),(29,7,'./assets/imgs/Samsung/3/3.jpg'),(30,8,'./assets/imgs/Samsung/4/0.jpg'),(31,8,'./assets/imgs/Samsung/4/1.jpg'),(32,8,'./assets/imgs/Samsung/4/2.jpg'),(33,8,'./assets/imgs/Samsung/4/3.jpg'),(34,9,'./assets/imgs/Samsung/5/0.jpg'),(35,9,'./assets/imgs/Samsung/5/1.jpg'),(36,9,'./assets/imgs/Samsung/5/2.jpg'),(37,9,'./assets/imgs/Samsung/5/3.jpg'),(38,10,'./assets/imgs/Samsung/6/0.jpg'),(39,10,'./assets/imgs/Samsung/6/1.jpg'),(40,10,'./assets/imgs/Samsung/6/2.jpg'),(41,10,'./assets/imgs/Samsung/6/3.jpg'),(42,11,'./assets/imgs/Sony/1/0.jpg'),(43,11,'./assets/imgs/Sony/1/1.jpg'),(44,11,'./assets/imgs/Sony/1/2.jpg'),(45,11,'./assets/imgs/Sony/1/3.jpg'),(46,12,'./assets/imgs/Sony/2/0.jpg'),(47,12,'./assets/imgs/Sony/2/1.jpg'),(48,12,'./assets/imgs/Sony/2/2.jpg'),(49,12,'./assets/imgs/Sony/2/3.jpg'),(50,13,'./assets/imgs/Sony/3/0.jpg'),(51,13,'./assets/imgs/Sony/3/1.jpg'),(52,13,'./assets/imgs/Sony/3/2.jpg'),(53,13,'./assets/imgs/Sony/3/3.jpg'),(54,14,'./assets/imgs/Sony/4/0.jpg'),(55,14,'./assets/imgs/Sony/4/1.jpg'),(56,14,'./assets/imgs/Sony/4/2.jpg'),(57,14,'./assets/imgs/Sony/4/3.jpg'),(58,15,'./assets/imgs/Sony/5/0.jpg'),(59,15,'./assets/imgs/Sony/5/1.jpg'),(60,15,'./assets/imgs/Sony/5/2.jpg'),(61,15,'./assets/imgs/Sony/5/3.jpg'),(62,16,'./assets/imgs/Sony/6/0.jpg'),(63,16,'./assets/imgs/Sony/6/1.jpg'),(64,16,'./assets/imgs/Sony/6/2.jpg'),(65,16,'./assets/imgs/Sony/6/3.jpg'),(66,17,'./assets/imgs/Sony/7/0.jpg'),(67,17,'./assets/imgs/Sony/7/1.jpg'),(68,17,'./assets/imgs/Sony/7/2.jpg'),(69,17,'./assets/imgs/Sony/7/3.jpg'),(70,18,'./assets/imgs/Sony/8/0.jpg'),(71,18,'./assets/imgs/Sony/8/1.jpg'),(72,18,'./assets/imgs/Sony/8/2.jpg'),(73,18,'./assets/imgs/Sony/8/3.jpg'),(74,19,'./assets/imgs/Sony/10/0.jpg'),(75,19,'./assets/imgs/Sony/10/1.jpg'),(76,19,'./assets/imgs/Sony/10/2.jpg'),(77,19,'./assets/imgs/Sony/10/3.jpg'),(78,20,'./assets/imgs/Beats/1/0.jpg'),(79,20,'./assets/imgs/Beats/1/1.jpg'),(80,20,'./assets/imgs/Beats/1/2.jpg'),(81,20,'./assets/imgs/Beats/1/3.jpg'),(82,21,'./assets/imgs/Beats/2/0.jpg'),(83,21,'./assets/imgs/Beats/2/1.jpg'),(84,21,'./assets/imgs/Beats/2/2.jpg'),(85,21,'./assets/imgs/Beats/2/3.jpg'),(86,22,'./assets/imgs/Beats/3/0.jpg'),(87,22,'./assets/imgs/Beats/3/1.jpg'),(88,22,'./assets/imgs/Beats/3/2.jpg'),(89,22,'./assets/imgs/Beats/3/3.jpg'),(90,23,'./assets/imgs/Beats/4/0.jpg'),(91,23,'./assets/imgs/Beats/4/1.jpg'),(92,23,'./assets/imgs/Beats/4/2.jpg'),(93,23,'./assets/imgs/Beats/4/3.jpg'),(94,24,'./assets/imgs/Beats/5/0.jpg'),(95,24,'./assets/imgs/Beats/5/1.jpg'),(96,24,'./assets/imgs/Beats/5/2.jpg'),(97,24,'./assets/imgs/Beats/5/3.jpg'),(98,25,'./assets/imgs/Beats/6/0.jpg'),(99,25,'./assets/imgs/Beats/6/1.jpg'),(100,25,'./assets/imgs/Beats/6/2.jpg'),(101,25,'./assets/imgs/Beats/6/3.jpg'),(102,26,'./assets/imgs/JBL/1/0.jpg'),(103,26,'./assets/imgs/JBL/1/1.jpg'),(104,26,'./assets/imgs/JBL/1/2.jpg'),(105,26,'./assets/imgs/JBL/1/3.jpg'),(106,27,'./assets/imgs/JBL/2/0.jpg'),(107,27,'./assets/imgs/JBL/2/1.jpg'),(108,27,'./assets/imgs/JBL/2/2.jpg'),(109,27,'./assets/imgs/JBL/2/3.jpg'),(110,28,'./assets/imgs/JBL/3/0.jpg'),(111,28,'./assets/imgs/JBL/3/1.jpg'),(112,28,'./assets/imgs/JBL/3/2.jpg'),(113,28,'./assets/imgs/JBL/3/3.jpg'),(114,29,'./assets/imgs/JBL/4/0.jpg'),(115,29,'./assets/imgs/JBL/4/1.jpg'),(116,29,'./assets/imgs/JBL/4/2.jpg'),(117,29,'./assets/imgs/JBL/4/3.jpg'),(118,30,'./assets/imgs/JBL/5/0.jpg'),(119,30,'./assets/imgs/JBL/5/1.jpg'),(120,30,'./assets/imgs/JBL/5/2.jpg'),(121,30,'./assets/imgs/JBL/5/3.jpg'),(122,31,'./assets/imgs/JBL/6/0.jpg'),(123,31,'./assets/imgs/JBL/6/1.jpg'),(124,31,'./assets/imgs/JBL/6/2.jpg'),(125,31,'./assets/imgs/JBL/6/3.jpg'),(126,32,'./assets/imgs/Xiaomi/1/0.jpg'),(127,32,'./assets/imgs/Xiaomi/1/1.jpg'),(128,32,'./assets/imgs/Xiaomi/1/2.jpg'),(129,32,'./assets/imgs/Xiaomi/1/3.jpg'),(130,33,'./assets/imgs/Xiaomi/2/0.jpg'),(131,33,'./assets/imgs/Xiaomi/2/1.jpg'),(132,33,'./assets/imgs/Xiaomi/2/2.jpg'),(133,33,'./assets/imgs/Xiaomi/2/3.jpg'),(134,34,'./assets/imgs/Xiaomi/3/0.jpg'),(135,34,'./assets/imgs/Xiaomi/3/1.jpg'),(136,34,'./assets/imgs/Xiaomi/3/2.jpg'),(137,34,'./assets/imgs/Xiaomi/3/3.jpg'),(138,35,'./assets/imgs/LG/1/0.jpg'),(139,35,'./assets/imgs/LG/1/1.jpg'),(140,35,'./assets/imgs/LG/1/2.jpg'),(141,35,'./assets/imgs/LG/1/3.jpg'),(142,36,'./assets/imgs/LG/2/0.jpg'),(143,36,'./assets/imgs/LG/2/1.jpg'),(144,36,'./assets/imgs/LG/2/2.jpg'),(145,36,'./assets/imgs/LG/2/3.jpg'),(146,37,'./assets/imgs/LG/3/0.jpg'),(147,37,'./assets/imgs/LG/3/1.jpg'),(148,37,'./assets/imgs/LG/3/2.jpg'),(149,37,'./assets/imgs/LG/3/3.jpg'),(150,38,'./assets/imgs/Kanen/1/0.jpg'),(151,38,'./assets/imgs/Kanen/1/1.jpg'),(152,38,'./assets/imgs/Kanen/1/2.jpg'),(153,38,'./assets/imgs/Kanen/1/3.jpg'),(154,39,'./assets/imgs/Kanen/2/0.jpg'),(155,39,'./assets/imgs/Kanen/2/1.jpg'),(156,39,'./assets/imgs/Kanen/2/2.jpg'),(157,39,'./assets/imgs/Kanen/2/3.jpg'),(158,40,'./assets/imgs/Kanen/3/0.jpg'),(159,40,'./assets/imgs/Kanen/3/1.jpg'),(160,40,'./assets/imgs/Kanen/3/2.jpg'),(161,40,'./assets/imgs/Kanen/3/3.jpg'),(162,41,'./assets/imgs/Kanen/4/0.jpg'),(163,41,'./assets/imgs/Kanen/4/1.jpg'),(164,41,'./assets/imgs/Kanen/4/2.jpg'),(165,41,'./assets/imgs/Kanen/4/3.jpg'),(166,42,'./assets/imgs/Kanen/5/0.jpg'),(167,42,'./assets/imgs/Kanen/5/1.jpg'),(168,42,'./assets/imgs/Kanen/5/2.jpg'),(169,42,'./assets/imgs/Kanen/5/3.jpg'),(170,43,'./assets/imgs/Kanen/6/0.jpg'),(171,43,'./assets/imgs/Kanen/6/1.jpg'),(172,43,'./assets/imgs/Kanen/6/2.jpg'),(173,43,'./assets/imgs/Kanen/6/3.jpg'),(174,44,'./assets/imgs/Awei/1/0.jpg'),(175,44,'./assets/imgs/Awei/1/1.jpg'),(176,44,'./assets/imgs/Awei/1/2.jpg'),(177,44,'./assets/imgs/Awei/1/3.jpg'),(178,45,'./assets/imgs/Awei/2/0.jpg'),(179,45,'./assets/imgs/Awei/2/1.jpg'),(180,45,'./assets/imgs/Awei/2/2.jpg'),(181,45,'./assets/imgs/Awei/2/3.jpg'),(182,46,'./assets/imgs/Awei/3/0.jpg'),(183,46,'./assets/imgs/Awei/3/1.jpg'),(184,46,'./assets/imgs/Awei/3/2.jpg'),(185,46,'./assets/imgs/Awei/3/3.jpg'),(186,47,'./assets/imgs/Awei/4/0.jpg'),(187,47,'./assets/imgs/Awei/4/1.jpg'),(188,47,'./assets/imgs/Awei/4/2.jpg'),(189,47,'./assets/imgs/Awei/4/3.jpg'),(190,48,'./assets/imgs/Awei/5/0.jpg'),(191,48,'./assets/imgs/Awei/5/1.jpg'),(192,48,'./assets/imgs/Awei/5/2.jpg'),(193,48,'./assets/imgs/Awei/5/3.jpg'),(194,49,'./assets/imgs/Awei/6/0.jpg'),(195,49,'./assets/imgs/Awei/6/1.jpg'),(196,49,'./assets/imgs/Awei/6/2.jpg'),(197,49,'./assets/imgs/Awei/6/3.jpg'),(198,50,'./assets/imgs/Awei/7/0.jpg'),(199,50,'./assets/imgs/Awei/7/1.jpg'),(200,50,'./assets/imgs/Awei/7/2.jpg'),(201,50,'./assets/imgs/Awei/7/3.jpg');
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `discout` double DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `sold` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `insurance` varchar(20) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `c_id` int DEFAULT NULL,
  `m_id` int DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `FK85jw6odle31rh94953xj7pvxy` (`c_id`),
  KEY `FKr0fv63sc6rgwpucanfuoi299j` (`m_id`),
  CONSTRAINT `FK85jw6odle31rh94953xj7pvxy` FOREIGN KEY (`c_id`) REFERENCES `category` (`category_id`),
  CONSTRAINT `FKr0fv63sc6rgwpucanfuoi299j` FOREIGN KEY (`m_id`) REFERENCES `manufacturers` (`manufacturer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,5635000,0.5,'Tai nghe Bluetooth AirPods Pro Wireless Charge Apple MWP22',117,991,'12 tháng','Trắng',8,1),(2,13990000,0.5,'Tai nghe chụp tai Bluetooth AirPods Max Apple MGYH3/ MGYJ3/ MGYL3 ',108,1000,'12 tháng','Đen',3,1),(3,711000,0.5,'Tai nghe nhét tai Earpods Apple MNHF2',108,1000,'12 tháng','Trắng',8,1),(4,4390000,0.5,'Tai nghe Bluetooth AirPods 2 Apple MV7N2',108,1000,'12 tháng','Trắng',6,1),(5,4990000,0.5,'Tai nghe Bluetooth True Wireless Galaxy Buds Pro',108,1000,'12 tháng','Bạc',1,2),(6,224000,0.5,'Tai nghe nhét tai Samsung EG920',108,1000,'12 tháng','Xanh',8,2),(7,2140000,0.5,'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds+ R175',108,1000,'12 tháng','Đen',6,2),(8,2990000,0.5,'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds 2 R177N',108,1000,'12 tháng','Trắng',6,2),(9,2990000,0.5,'Tai nghe Bluetooth 1 Bên Samsung MG900E',108,1000,'12 tháng','Đen',2,2),(10,1450000,0.5,'Tai nghe Bluetooth Samsung Level U Pro BN920C',108,1000,'12 tháng','Vàng',1,2),(11,6490000,0.4,'Tai nghe Bluetooth True Wireless Sony WF-1000XM4 ',55,1000,'12 tháng','Đen',6,3),(12,2990000,0.4,'Tai nghe Bluetooth Sony Extra Bass True Wireless WF-XB700',55,1000,'12 tháng','Xanh',6,3),(13,4790000,0.4,'Tai nghe Bluetooth True Wireless Sony WF-SP800N',55,1000,'12 tháng','Xanh',6,3),(14,8490000,0.4,'Tai nghe chụp tai Bluetooth Sony WH-1000XM4',55,1000,'12 tháng','Đen',3,3),(15,5790000,0.4,'Tai nghe chụp tai Bluetooth Sony WH-XB900N',55,1000,'12 tháng','Đen',3,3),(16,1190000,0.4,'Tai nghe chụp tai Bluetooth Sony WH-CH510/BC',55,1000,'12 tháng','Đen',3,3),(17,540000,0.4,'Tai nghe chụp tai Sony MDR - ZX110AP',55,1000,'12 tháng','Đen',3,3),(18,1890000,0.4,'Tai nghe Bluetooth Sony Extra Bass WI-SP510/BZ E',55,1000,'12 tháng','Đen',1,3),(19,1690000,0.4,'Tai nghe Bluetooth Sony Extra Bass MDR-XB50BS',55,1000,'12 tháng','Đen',1,3),(20,3990000,0.4,'Tai nghe Bluetooth True Wireless Beats Studio Buds MJ4X3',55,1000,'12 tháng','Đen',6,4),(21,5990000,0.3,'Tai nghe Bluetooth True Wireless Beats Powerbeats Pro MV6Y2/ MV702',69,1000,'12 tháng','Xanh',6,4),(22,5490000,0.3,'Tai nghe chụp tai Beats Solo3 Wireless MX432/ MV8T2/ MX472',69,1000,'12 tháng','Đỏ',3,4),(23,7490000,0.3,'Tai nghe chụp tai Beats Studio3 Wireless MX422/ MX432',69,1000,'12 tháng','Đen, Đỏ',3,4),(24,1290000,0.3,'Tai nghe Bluetooth Beats Flex MYMC2/ MYMD2',69,1000,'12 tháng','Vàng',1,4),(25,2190000,0.3,'Tai nghe Bluetooth Beats Powerbeats 3 ML8V2/ MRQ92',69,1000,'12 tháng','Đỏ, Đen',1,4),(26,890000,0.3,'Tai nghe Bluetooth JBL T110BT ',69,1000,'12 tháng','Xanh',1,5),(27,2190000,0.3,'Tai nghe Bluetooth thể thao JBL V110 ',69,1000,'12 tháng','Trắng, Bạc',1,5),(28,2890000,0.3,'Tai nghe Bluetooth True Wireless JBL Tune 220 ',69,1000,'12 tháng','Xám',6,5),(29,2872000,0.3,'Tai nghe Bluetooth True Wireless JBL REFFLOW',69,1000,'12 tháng','Đen',6,5),(30,891000,0.3,'Tai nghe chụp tai Gaming JBL QUANTUM 100',69,1000,'12 tháng','Đen',3,5),(31,1690000,0.2,'Tai nghe chụp tai Bluetooth JBL T500',201,1000,'12 tháng','Xanh',3,5),(32,790000,0.2,'Tai nghe Bluetooth True Wireless Xiaomi Earbuds Basic 2 BHR4272GL',201,1000,'12 tháng','Đen',6,6),(33,1590000,0.2,'Tai nghe Bluetooth True Wireless Earphones 2 Basic Xiaomi BHR4089GL',201,1000,'12 tháng','Trắng',6,6),(34,2590000,0.2,'Tai nghe Bluetooth True Wireless Earphones 2 Xiaomi ZBW4493GL',201,1000,'12 tháng','Trắng',6,6),(35,3490000,0.2,'Tai nghe Bluetooth True Wireless LG Tone Free HBS-FN6',201,1000,'12 tháng','Đen',6,7),(36,3490000,0.2,'Tai nghe Bluetooth Thể Thao LG Tone Platinum SE HBS-1120',201,1000,'12 tháng','Đen',1,7),(37,899000,0.2,'Tai nghe Bluetooth Thể Thao LG Tone Triumph HBS-510',201,1000,'12 tháng','Đen',1,7),(38,450000,0.2,'Tai nghe Bluetooth Kanen K9',201,1000,'12 tháng','Xanh',1,8),(39,600000,0.2,'Tai nghe Bluetooth Kanen K6',201,1000,'12 tháng','Xám',1,8),(40,350000,0.2,'Tai nghe chụp tai Kanen IP-892 ',201,1000,'12 tháng','Đen',3,8),(41,350000,0.1,'Tai nghe chụp tai Kanen IP-2090',201,1000,'12 tháng','Trắng',3,8),(42,150000,0.1,'Tai nghe nhét tai Kanen IP-218',201,1000,'12 tháng','Xám',8,8),(43,200000,0.1,'Tai nghe nhét tai Kanen S40',201,1000,'12 tháng','Xanh',8,8),(44,200000,0.1,'Tai nghe EP Awei Q60Hi',201,1000,'12 tháng','Trắng',4,9),(45,150000,0.1,'Tai nghe EP Awei Q50Hi',201,1000,'12 tháng','Đen',4,9),(46,150000,0.1,'Tai nghe Có Dây Awei Q29Hi',201,1000,'12 tháng','Đen',4,9),(47,150000,0.1,'Tai nghe Có Dây Awei Q27Hi',201,1000,'12 tháng','Đen',4,9),(48,150000,0.1,'Tai nghe Có Dây Awei Q19Hi',201,1000,'12 tháng','Đen',4,9),(49,150000,0.1,'Tai nghe Có Dây Awei Q7Ni',201,1000,'12 tháng','Đen',4,9),(50,200000,0.1,'Tai nghe nhét tai Awei ES500Ni',201,1000,'12 tháng','Đen',4,9);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `address` varchar(100) DEFAULT NULL,
  `gender` tinyint DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,NULL,NULL,'',NULL),(5,NULL,NULL,'temp',NULL),(6,NULL,NULL,'chua co ten',NULL),(7,NULL,NULL,'chua co ten',NULL),(8,NULL,NULL,'chua co ten',NULL),(9,NULL,NULL,'chua co ten',NULL),(26,NULL,NULL,'chua co ten',NULL),(27,NULL,NULL,'chua co ten',NULL);
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

-- Dump completed on 2021-11-11 18:25:26
