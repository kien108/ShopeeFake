-- CREATE DATABASE shopee1 CHARACTER SET utf8 COLLATE utf8_general_ci;

use shopee1;
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

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,NULL,NULL,'',NULL),(5,NULL,NULL,'temp',NULL),(6,NULL,NULL,'chua co ten',NULL),(7,NULL,NULL,'chua co ten',NULL),(8,NULL,NULL,'chua co ten',NULL),(9,NULL,NULL,'chua co ten',NULL),(26,NULL,NULL,'chua co ten',NULL),(27,NULL,NULL,'chua co ten',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (8,4,19896000),(9,1,24615000),(10,2,19625000),(11,1,19625000),(12,0,NULL),(13,1,7775000),(30,0,NULL),(31,1,NULL),(32,0,NULL),(33,2,6346000),(34,2,6425000),(35,2,30124000),(36,1,5490000),(37,1,3490000),(38,4,54648000),(39,1,5635000),(40,1,5635000),(41,1,19625000),(42,1,5635000),(43,2,12885000),(44,1,6346000),(45,0,0),(46,1,200000),(47,1,64705000),(48,0,0),(49,1,13990000);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;


LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (8,'123456','kien108',42,4),(9,'123456','kien109',45,5),(10,'123456','kien1',48,6),(11,'123456','kien2',49,7),(12,'123456','kien3',12,8),(13,'1','admin',43,9),(30,'123','admin113',30,26),(31,'123','admin1231231',31,27);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;


LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Bluetooth'),(2,'Bluetooth 1 bÃªn'),(3,'Chá»¥p tai'),(4,'CÃ³ dÃ¢y'),(5,'Gaming'),(6,'KhÃ´ng dÃ¢y - True Wireless'),(7,'Thá»ƒ thao - Neckband'),(8,'NhÃ©t tai - In-ear');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;


LOCK TABLES `manufacturers` WRITE;
/*!40000 ALTER TABLE `manufacturers` DISABLE KEYS */;
INSERT INTO `manufacturers` VALUES (1,'Apple'),(2,'Samsung'),(3,'Sony'),(4,'Beats'),(5,'JBL'),(6,'Xiaomi'),(7,'LG'),(8,'Kanen'),(9,'Awei');
/*!40000 ALTER TABLE `manufacturers` ENABLE KEYS */;
UNLOCK TABLES;


/*
product_id -> price -> discount -> title -> sold -> quantity -> insurance -> color -> c_id -> m_id
*/
LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES 
(1,'Trắng',0.5,'12 thÃ¡ng',5635000,991, 117,'Tai nghe Bluetooth AirPods Pro Wireless Charge Apple MWP22',8,1),
(2,'Đen', 0.5,'12 thÃ¡ng',13990000, 1000,108,'Tai nghe chá»¥p tai Bluetooth AirPods Max Apple MGYH3/ MGYJ3/ MGYL3',3,1),
(3,'Trắng',0.5,'12 thÃ¡ng',711000, 1000,108,'Tai nghe nhÃ©t tai Earpods Apple MNHF2',8,1),
(4,'Trắng',0.5,'12 thÃ¡ng',4390000,1000,108,'Tai nghe Bluetooth AirPods 2 Apple MV7N2',6,1),
(5,'Bạc',  0.5,'12 thÃ¡ng',4990000,1000,108,'Tai nghe Bluetooth True Wireless Galaxy Buds Pro',1,2),
(6,'Xanh',   0.5,'12 thÃ¡ng',224000, 1000,108,'Tai nghe nhÃ©t tai Samsung EG920',8,2),
(7,'Đen',   0.5,'12 thÃ¡ng',2140000,1000,108,'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds+ R175',6,2),
(8,'Trắng',0.5,'12 thÃ¡ng',2990000,1000,108,'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds 2 R177N',6,2),
(9,'Đen',   0.5,'12 thÃ¡ng',2990000,1000,108,'Tai nghe Bluetooth 1 BÃªn Samsung MG900E',2,2),
(10,'Vàng', 0.5,'12 thÃ¡ng',1450000,1000,108,'Tai nghe Bluetooth Samsung Level U Pro BN920C',1,2),
(11,'Đen',  0.4,'12 thÃ¡ng',6490000,1000,55, 'Tai nghe Bluetooth True Wireless Sony WF-1000XM4',6,3),
(12,'Xanh',  0.4,'12 thÃ¡ng',2990000,1000,55, 'Tai nghe Bluetooth Sony Extra Bass True Wireless WF-XB700',6,3),
(13,'Xanh',  0.4,'12 thÃ¡ng',4790000,1000,55, 'Tai nghe Bluetooth True Wireless Sony WF-SP800N',6,3),
(14,'Đen',  0.4,'12 thÃ¡ng',8490000,1000,55, 'Tai nghe chá»¥p tai Bluetooth Sony WH-1000XM4',3,3),
(15,'Đen',  0.4,'12 thÃ¡ng',5790000,1000,55, 'Tai nghe chá»¥p tai Bluetooth Sony WH-XB900N',3,3),
(16,'Đen',  0.4,'12 thÃ¡ng',1190000,1000,55, 'Tai nghe chá»¥p tai Bluetooth Sony WH-CH510/BC',3,3),
(17,'Đen',  0.4,'12 thÃ¡ng', 540000, 1000,55, 'Tai nghe chá»¥p tai Sony MDR - ZX110AP',3,3),
(18,'Đen',  0.4,'12 thÃ¡ng',1890000,1000,55, 'Tai nghe Bluetooth Sony Extra Bass WI-SP510/BZ E',1,3),
(19,'Đen',  0.4,'12 thÃ¡ng',1690000,1000,55, 'Tai nghe Bluetooth Sony Extra Bass MDR-XB50BS',1,3),
(20,'Đen',  0.4,'12 thÃ¡ng',3990000,1000,55, 'Tai nghe Bluetooth True Wireless Beats Studio Buds MJ4X3',6,4),
(21,'Xanh',  0.3,'12 thÃ¡ng',5990000,1000,69, 'Tai nghe Bluetooth True Wireless Beats Powerbeats Pro MV6Y2/ MV702',6,4),
(22,'Đen', 0.3,'12 thÃ¡ng', 5490000,1000,69, 'Tai nghe chá»¥p tai Beats Solo3 Wireless MX432/ MV8T2/ MX472',3,4),
(23, 'Đen', 0.3,'12 thÃ¡ng', 7490000,1000,69, 'Tai nghe chá»¥p tai Beats Studio3 Wireless MX422/ MX432',3,4),
(24,'Vàng', 0.3,'12 thÃ¡ng', 1290000,1000,69, 'Tai nghe Bluetooth Beats Flex MYMC2/ MYMD2',1,4),
(25, 'Đen',  0.3,'12 thÃ¡ng',2190000,1000,69, 'Tai nghe Bluetooth Beats Powerbeats 3 ML8V2/ MRQ92',1,4),
(26,'Xanh',  0.3,'12 thÃ¡ng',890000, 1000,69, 'Tai nghe Bluetooth JBL T110BT',1,5),
(27, 'Bạc', 0.3,'12 thÃ¡ng',2190000,1000,69, 'Tai nghe Bluetooth thá»ƒ thao JBL V110',1,5),
(28,'Xám',  0.3,'12 thÃ¡ng',2890000,1000,69, 'Tai nghe Bluetooth True Wireless JBL Tune 220',6,5),
(29,'Đen',  0.3,'12 thÃ¡ng',2872000,1000,69, 'Tai nghe Bluetooth True Wireless JBL REFFLOW',6,5),
(30,'Đen',  0.3,'12 thÃ¡ng',891000, 1000,69, 'Tai nghe chá»¥p tai Gaming JBL QUANTUM 100',3,5),
(31,'Xanh',  0.2,'12 thÃ¡ng',1690000,1000,201,'Tai nghe chá»¥p tai Bluetooth JBL T500',3,5),
(32,'Đen',  0.2,'12 thÃ¡ng',790000, 1000,201,'Tai nghe Bluetooth True Wireless Xiaomi Earbuds Basic 2 BHR4272GL',6,6),
(33,'Xanh',  0.2,'12 thÃ¡ng',1590000,1000,201,'Tai nghe Bluetooth True Wireless Earphones 2 Basic Xiaomi BHR4089GL',6,6),
(34,'Xanh',  0.2,'12 thÃ¡ng',2590000,1000,201,'Tai nghe Bluetooth True Wireless Earphones 2 Xiaomi ZBW4493GL',6,6),
(35,'Đen',  0.2,'12 thÃ¡ng',3490000,100,201,'Tai nghe Bluetooth True Wireless LG Tone Free HBS-FN6',6,7),
(36,'Đen',  0.2,'12 thÃ¡ng',3490000,1000,201,'Tai nghe Bluetooth Thá»ƒ Thao LG Tone Platinum SE HBS-1120',1,7),
(37,'Đen',  0.2,'12 thÃ¡ng',899000, 1000,201,'Tai nghe Bluetooth Thá»ƒ Thao LG Tone Triumph HBS-510',1,7),
(38,'Xanh',  0.2,'12 thÃ¡ng',450000, 1000,201,'Tai nghe Bluetooth Kanen K9',1,8),
(39,'Xám',  0.2,'12 thÃ¡ng',600000, 1000,201,'Tai nghe Bluetooth Kanen K6',1,8),
(40,'Đen',  0.2,'12 thÃ¡ng',350000, 1000,201,'Tai nghe chá»¥p tai Kanen IP-892',3,8),
(41,'Trắng', 0.1,'12 thÃ¡ng',350000, 1000,201,'Tai nghe chá»¥p tai Kanen IP-2090',3,8),
(42,'Xám',  0.1,'12 thÃ¡ng',150000, 1000,201,'Tai nghe nhÃ©t tai Kanen IP-218',8,8),
(43,'Xanh',  0.1,'12 thÃ¡ng',200000, 1000,201,'Tai nghe nhÃ©t tai Kanen S40',8,8),
(44,'Trắng', 0.1,'12 thÃ¡ng',200000, 1000,201,'Tai nghe EP Awei Q60Hi',4,9),
(45,'Đen',  0.1,'12 thÃ¡ng',150000, 1000,201,'Tai nghe EP Awei Q50Hi',4,9),
(46,'Đen',  0.1,'12 thÃ¡ng',150000, 1000,201,'Tai nghe CÃ³ DÃ¢y Awei Q29Hi',4,9),
(47,'Đen',  0.1,'12 thÃ¡ng',150000, 1000,201,'Tai nghe CÃ³ DÃ¢y Awei Q27Hi',4,9),
(48,'Đen',  0.1,'12 thÃ¡ng',150000, 1000,201,'Tai nghe CÃ³ DÃ¢y Awei Q19Hi',4,9),
(49,'Đen',  0.1,'12 thÃ¡ng',150000, 1000,201,'Tai nghe CÃ³ DÃ¢y Awei Q7Ni',4,9),
(50,'Đen',  0.1,'12 thÃ¡ng',200000, 1000,201,'Tai nghe nhÃ©t tai Awei ES500Ni',4,9);

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


/*
pDesc_id -> product_id -> name -> detail -> description
pDesc_id -> desc -> detail -> name -> product_id
*/

LOCK TABLES `product_desc` WRITE;
/*!40000 ALTER TABLE `product_desc` DISABLE KEYS */;
INSERT INTO `product_desc` VALUES


(8,'','DÃ¹ng 4.5 giá» - Sáº¡c 2 giá»','Thá»i gian tai nghe:',1),
(9,'','DÃ¹ng 24 giá» - Sáº¡c 3 giá»','Thá»i gian há»™p sáº¡c:',1),
(10,'','Lightning, Sáº¡c khÃ´ng dÃ¢y','Cá»•ng sáº¡c:',1),
(11,'','Active Noise Cancellation, Adaptive EQ','CÃ´ng nghá»‡ Ã¢m thanh:',1),
(12,'','Android, iOS (iPhone)','TÆ°Æ¡ng thÃ­ch:',1),
(13,'','Chá»‘ng nÆ°á»›c, Chá»‘ng á»“n, CÃ³ mic thoáº¡i','Tiá»‡n Ã­ch:',1),
(14,'','Cáº£m á»©ng cháº¡m','Äiá»u khiá»ƒn báº±ng:',1),
(15,'','Apple','HÃ£ng',1),
(16,'Thiáº¿t káº¿ in-ear hoÃ n toÃ n má»›i vÃ  Ä‘á»™c Ä‘Ã¡o.\nTÃ­ch há»£p cÃ´ng nghá»‡ chá»‘ng á»“n chá»§ Ä‘á»™ng (Active Noise Cancellation).\nChip H1 máº¡nh máº½, xá»­ lÃ½ Ã¢m thanh ká»¹ thuáº­t sá»‘ vá»›i Ä‘á»™ trá»… gáº§n nhÆ° báº±ng khÃ´ng.\nNghe nháº¡c Ä‘áº¿n 4.5 giá» khi báº­t chá»‘ng á»“n, 5 giá» khi táº¯t chá»‘ng á»“n.\nSá»­ dá»¥ng song song vá»›i há»™p sáº¡c cÃ³ thá»ƒ dÃ¹ng Ä‘Æ°á»£c Ä‘áº¿n 24 giá» nghe nháº¡c.\nHá»— trá»£ sáº¡c nhanh, cho thá»i gian sá»­ dá»¥ng Ä‘áº¿n 1 giá» chá»‰ vá»›i 5 phÃºt sáº¡c.\nHá»™p sáº¡c há»— trá»£ sáº¡c khÃ´ng dÃ¢y chuáº©n Qi, tiá»‡n lá»£i khi sáº¡c láº¡i.\nTrang bá»‹ chuáº©n chá»‘ng nÆ°á»›c IPX4, báº£o vá»‡ tai nghe an toÃ n dÆ°á»›i mÆ°a nhá» vÃ  má»“ hÃ´i.','','',1),
(17,'','DÃ¹ng 20 giá» - Sáº¡c 3 giá»','Thá»i gian tai nghe:',2),
(18,'','Lightning','Cá»•ng sáº¡c:',2),
(19,'','Active Noise Cancellation, Adaptive EQ, Spatial Audio, Transparency Mode','CÃ´ng nghá»‡ Ã¢m thanh:',2),
(20,'','Android, iOS (iPhone)','TÆ°Æ¡ng thÃ­ch:',2),
(21,'','Chá»‘ng á»“n','Tiá»‡n Ã­ch:',2),
(22,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',2),
(23,'','Apple','HÃ£ng',2),
(24,'AirPods Max tai nghe chá»¥p tai chá»‘ng á»“n chá»§ Ä‘á»™ng.\nSá»­ dá»¥ng chip H1 Apple cho káº¿t ná»‘i nhanh chÃ³ng.\nTrang bá»‹ Bluetooth 5.0 káº¿t ná»‘i mÆ°á»£t mÃ  khoáº£ng cÃ¡ch 10 m.\nTÃ­ch há»£p cÃ´ng nghá»‡ chá»‘ng á»“n ANC, Ã¢m thanh xuyÃªn Ã¢m (Transperency Mode).\nHá»— trá»£ Spatial Audio giÃºp táº¡o hiá»‡u á»©ng Ã¢m thanh vÃ²m khi xem phim vÃ  tráº£i nghiá»‡m ná»™i dung Dolby Atmos Ä‘Æ°á»£c tá»‘t hÆ¡n.\nDigital Crown Ä‘iá»u chá»‰nh linh hoáº¡t, nháº¡y bÃ©n.\nTÃ­ch há»£p trá»£ lÃ½ áº£o Siri Ä‘iá»u khiá»ƒn thÃªm tiá»‡n lá»£i.\nNghe nhÃ¢n cuá»™c gá»i trá»±c tiáº¿p tá»« tai nghe.\nThá»i gian sá»­ dá»¥ng 20 giá» khi sá»­ dá»¥ng chá»‘ng á»“n ANC vÃ  Transparency Mode \nSáº¡c nhanh 5 phÃºt cÃ³ thá»ƒ sá»­ dá»¥ng Ä‘Æ°á»£c 1.5 giá».','','',2),
(25,'','3.5 mm','Jack cáº¯m:',3),
(26,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',3),
(27,'','CÃ³ mic thoáº¡i','Tiá»‡n Ã­ch:',3),
(28,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',3),
(29,'','Apple','HÃ£ng',3),
(30,'Thiáº¿t káº¿ hiá»‡n Ä‘áº¡i, sang trá»ng vÃ  thoáº£i mÃ¡i.\nCÃ³ phÃ­m Ä‘iá»u chá»‰nh Ã¢m lÆ°á»£ng, nghe/nháº­n cuá»™c gá»i.\nCá»•ng 3 5mm phÃ¹ há»£p nhiá»u loáº¡i Ä‘iá»‡n thoáº¡i, mÃ¡y tÃ­nh báº£ng, laptop.','','',3),
(31,'','DÃ¹ng 5 giá» - Sáº¡c 2 giá»','Pin:',4),
(32,'','Lightning','Cá»•ng sáº¡c:',4),
(33,'','Android, iOS (iPhone)','TÆ°Æ¡ng thÃ­ch:',4),
(34,'','Siri','á»¨ng dá»¥ng káº¿t ná»‘i:',4),
(35,'','CÃ³ mic thoáº¡i','Tiá»‡n Ã­ch:',4),
(36,'','Cáº£m á»©ng cháº¡m','Äiá»u khiá»ƒn báº±ng:',4),
(37,'','Apple','HÃ£ng',4),
(38,'Thiáº¿t káº¿ Ä‘Æ¡n giáº£n, thá»i trang vÃ  nhá» gá»n.\nTrang bá»‹ chip H1 hoÃ n toÃ n má»›i, cho tá»‘c Ä‘á»™ káº¿t ná»‘i, chuyá»ƒn Ä‘á»•i giá»¯a cÃ¡c thiáº¿t bá»‹ nhanh chÃ³ng.\nKÃ­ch hoáº¡t nhanh trá»£ lÃ½ áº£o Siri báº±ng cÃ¡ch nÃ³i \"Hey, Siri\".\nCÃ³ thá»ƒ sá»­ dá»¥ng nghe nháº¡c lÃªn Ä‘áº¿n 5 giá» (Ã¢m lÆ°á»£ng 50%) cho má»—i má»™t láº§n sáº¡c Ä‘áº§y.\nTÃ­ch há»£p cÃ´ng nghá»‡ sáº¡c nhanh hiá»‡n Ä‘áº¡i Sáº¡c nhanh 15 phÃºt cÃ³ thá»ƒ nghe nháº¡c 3 giá» (Ã¢m lÆ°á»£ng 50%).\nSá»­ dá»¥ng song song vá»›i há»™p sáº¡c cÃ³ thá»ƒ dÃ¹ng Ä‘Æ°á»£c lÃªn Ä‘áº¿n 24 giá».\nTÃ­nh nÄƒng nháº­n cuá»™c gá»i, kÃ­ch hoáº¡t Siri, nghe hoáº·c táº¡m dá»«ng Ä‘oáº¡n nháº¡c Ä‘ang phÃ¡t.','','',4),
(39,'','DÃ¹ng 8 giá» - Sáº¡c 3 giá»','Thá»i gian nghe:',5),
(40,'','DÃ¹ng 20 giá» - Sáº¡c 3 giá»','Thá»i gian há»™p sáº¡c:',5),
(41,'','Type-C','Cá»•ng sáº¡c:',5),
(42,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',5),
(43,'','Chá»‘ng nÆ°á»›c, Chá»‘ng á»“n','Tiá»‡n Ã­ch:',5),
(44,'','Cáº£m á»©ng cháº¡m','Äiá»u khiá»ƒn báº±ng:',5),
(45,'','Samsung','HÃ£ng',5),
(46,'NÃ¢ng táº§m tráº£i nghiá»‡m Ã¢m vÃ  cháº¥t lÆ°á»£ng cuá»™c gá»i vá»›i chá»‘ng á»“n chá»§ Ä‘á»™ng (ANC).\nKáº¿t ná»‘i khÃ´ng dÃ¢y Bluetooth 5.0 dá»… dÃ ng vá»›i cÃ¡c thiáº¿t bá»‹ ngoÃ i, Ä‘Æ°á»ng truyá»n á»•n Ä‘á»‹nh.\nChuáº©n Ã¢m thanh studio vá»›i loa 2 chiá»u AKG máº¡nh máº½.\nTáº­n hÆ°á»Ÿng Ã¢m thanh vÃ²m lÃ´i cuá»‘n, chuáº©n Ä‘iá»‡n áº£nh tá»« 360 Audio.\nÄÃ m thoáº¡i rÃµ rÃ ng vá»›i há»‡ thá»‘ng mic vÃ  bá»™ pháº­n thu nháº­n giá»ng nÃ³i (Voice Pickup Unit).\nLoa 2 chiá»u (loa tráº§m 11mm, loa bá»•ng 6.5mm).\nKháº£ nÄƒng khÃ¡ng nÆ á»›c hiá»‡u quáº£ cÃ¹ng xáº¿p háº¡ng khÃ¡ng nÆ°á»›c IPX7.\nThá»i gian sá»­ dá»¥ng 5 giá» vÃ  13 giá» cÃ¹ng há»™p sáº¡c (báº­t chá»‘ng á»“n , sá»­ dá»¥ng 8 giá» vÃ  20 giá» cÃ¹ng há»™p sáº¡c (táº¯t chá»‘ng á»“n).','','',5),
(47,'','3.5 mm','Jack cáº¯m:',6),
(48,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',6),
(49,'','CÃ³ mic thoáº¡i, Äá»‡m tai Ä‘i kÃ¨m, Tai nghe nhÃ©t tai','Tiá»‡n Ã­ch:',6),
(50,'','Mic thoáº¡i, Nghe/nháº­n cuá»™c gá»i, PhÃ¡t/dá»«ng chÆ¡i nháº¡c, TÄƒng/giáº£m Ã¢m lÆ°á»£ng','Äiá»u khiá»ƒn báº±ng:',6),
(51,'','Samsung','HÃ£ng',6),
(52,'Thiáº¿t káº¿ gá»n Ä‘áº¹p, cÃ³ 2 mÃ u Ä‘en vÃ  Ä‘á».\nDÃ¢y dÃ i 1.2 m, Ä‘á»‡m tai cÃ³ mÃ³c giÃºp Ä‘eo cháº¯c cháº¯n.\nÃ‚m thanh trong tráº»o, trung thá»±c.\nCÃ³ mic thoáº¡i, nÃºt chá»‰nh nháº­n cuá»™c gá»i, chuyá»ƒn bÃ i hÃ¡t, dá»«ng/chÆ¡i nháº¡c, tÄƒng/giáº£m Ã¢m lÆ°á»£ng','','',6),
(53,'','DÃ¹ng 11 giá» - Sáº¡c 2 giá»','Thá»i gian nghe:',7),
(54,'','DÃ¹ng 22 giá» - Sáº¡c 3 giá»','Thá»i gian há»™p sáº¡c:',7),
(55,'','Type-C','Cá»•ng sáº¡c:',7),
(56,'','Ambient Sound','CÃ´ng nghá»‡ Ã¢m thanh:',7),
(57,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',7),
(58,'','Cáº£m á»©ng cháº¡m','Äiá»u khiá»ƒn báº±ng:',7),
(59,'','Samsung','HÃ£ng',7),
(60,'Thiáº¿t káº¿ thá»i thÆ°á»£ng, Ä‘eo vá»«a váº·n, phÃ¹ há»£p cho má»i Ä‘á»‘i tÆ°á»£ng sá»­ dá»¥ng. \nChuáº©n Ã¢m thanh studio vá»›i loa 2 chiá»u AKG máº¡nh máº½.\nKáº¿t ná»‘i khÃ´ng dÃ¢y Bluetooth 5.0 dá»… dÃ ng vá»›i cÃ¡c thiáº¿t bá»‹.\nThá»i gian sá»­ dá»¥ng 11 giá» vÃ 22 giá» cÃ¹ng há»™p sáº¡c.\nSáº¡c nhanh 3 phÃºt cung cáº¥p Ä‘áº¿n 1 giá» sá»­ dá»¥ng.\nCÃ³ thá»ƒ sáº¡c ngay vá»›i thiáº¿t bá»‹ sáº¡c khÃ´ng dÃ y chuáº©n Qi báº¥t kÃ¬.','','',7),
(61,'','DÃ¹ng 7.5 giá» - Sáº¡c 1.5 giá»','Thá»i gian nghe:',8),
(62,'','DÃ¹ng 29 giá» - Sáº¡c 1.5 giá»','Thá»i gian há»™p sáº¡c:',8),
(63,'','Type-C','Cá»•ng sáº¡c:',8),
(64,'','Active Noise Cancellation, Ambient Sound','CÃ´ng nghá»‡ Ã¢m thanh:',8),
(65,'','Android','TÆ°Æ¡ng thÃ­ch:',8),
(66,'','Chá»‘ng nÆ°á»›c IPX2, CÃ³ mic thoáº¡i','Tiá»‡n tÃ­ch:',8),
(67,'','Bluetooth 5.2','Há»— trá»£ káº¿t ná»‘i:',8),
(68,'','Cáº£m á»©ng cháº¡m','Äiá»u khiá»ƒn báº±ng:',8),
(69,'','Samsung','HÃ£ng',8),
(70,'Thiáº¿t káº¿ thá»i thÆ°á»£ng, cÃ¡ tÃ­nh.\nCháº¥t Ã¢m chuáº©n studio vá»›i loa 2 chiá»u.\nHiá»‡u quáº£ chá»‘ng á»“n lÃªn Ä‘áº¿n 98% \nÄÃ m thoáº¡i dá»… dÃ ng vá»›i 3 micro vÃ  bá»™ cáº£m biáº¿n nháº­n diá»‡n giá»ng nÃ³i.\nÄá»“ng bá»™ vá»›i cÃ¡c thiáº¿t bá»‹ Samsung Galaxy.\nThá»i gian nghe nháº¡c: Khoáº£ng 5 giá» (báº­t chá»‘ng á»“n), khoáº£ng 7.5 giá» (táº¯t chá»‘ng á»“n).\nThá»i gian Ä‘Ã m thoáº¡i: Khoáº£ng 3.5 giá» (báº­t chá»‘ng á»“n), khoáº£ng 3.5 giá» (táº¯t chá»‘ng á»“n).\n 5 phÃºt sáº¡c cho 1 giá» chÆ¡i nháº¡c.\nÄáº¡t tiÃªu chuáº©n chá»‘ng nÆ°á»›c IPX2.\nÄiá»u khiá»ƒn cáº£m á»©ng dá»«ng/phÃ¡t, tráº£ lá»i cuá»™c gá»i, chuyá»ƒn bÃ i.','','',8),
(71,'','DÃ¹ng 9 giá» - Sáº¡c 2 giá»','Pin:',9),
(72,'','Micro USB','Cá»•ng sáº¡c:',9),
(73,'','Android, iOS (iPhone)','TÆ°Æ¡ng thÃ­ch:',9),
(74,'','CÃ³ mic thoáº¡i, Tai nghe nhÃ©t tai','Tiá»‡n Ã­ch:',9),
(75,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',9),
(76,'','Samsung','HÃ£ng',9),
(77,'Kiá»ƒu dÃ¡ng nhá» gá»n, vá» nhá»±a giáº£ da sang trá»ng.\nChuáº©n Bluetooth V3.0 káº¿t ná»‘i mÆ°á»£t mÃ  tá»‘i Ä‘a Ä‘áº¿n 10 m.\nPhá»‘i ghÃ©p vá»›i 2 thiáº¿t bá»‹ cÃ¹ng lÃºc.\nÃ‚m thanh rÃµ rÃ ng vá»›i cÃ´ng nghá»‡ giáº£m táº¡p Ã¢m.\nSá»­ dá»¥ng kÃ©o dÃ i Ä‘áº¿n 9 tiáº¿ng,sáº¡c trong 2 tiáº¿ng.','','',9),
(78,'','DÃ¹ng 9 giá» - Sáº¡c 3 giá»','Pin:',10),
(79,'','Micro USB','Cá»•ng sáº¡c:',10),
(80,'','Android, iOS (iPhone)','TÆ°Æ¡ng thÃ­ch:',10),
(81,'','CÃ³ mic thoáº¡i, Äá»‡m tai Ä‘i kÃ¨m, Tai nghe nhÃ©t tai','Tiá»‡n Ã­ch:',10),
(82,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',10),
(83,'','Samsung','HÃ£ng',10),
(84,' Äá»‡m tai Ä‘Æ°á»£c thiáº¿t káº¿ má»m máº¡i, linh hoáº¡t.\nCung cáº¥p hÆ¡n 9 giá» nghe nháº¡c, 9 giá» Ä‘Ã m thoáº¡i vÃ  300 giá» cho thá»i gian chá».\nCháº¥t lÆ°á»£ng Ã¢m thanh tuyá»‡t háº£o nhá» cÃ´ng nghá»‡ giáº£m tiáº¿ng á»“n NR vÃ  EC.\nKáº¿t ná»‘i nam chÃ¢m giá»¯a hai Ä‘áº§u tai nghe cá»§a Level U sáº½ giá»¯ tai nghe khi khÃ´ng sá»­ dá»¥ng.\nDung lÆ°á»£ng pin 200 mAh (lÃµi pin Li-Ion). Thá»i gian sáº¡c trung bÃ¬nh khoáº£ng 3 giá».','','',10),
(85,'','DÃ¹ng 8 giá» - Sáº¡c 1.5 giá»','Thá»i gian nghe:',11),
(86,'','DÃ¹ng 16 giá» - Sáº¡c 2.5 giá»','Thá»i gian há»™p sáº¡c:',11),
(87,'','Type-C','Cá»•ng sáº¡c:',11),
(88,'','Chá»‘ng á»“n HD QN1','CÃ´ng nghá»‡ Ã¢m thanh:',11),
(89,'','Android, iOS (iPhone, iPad), Windows','TÆ°Æ¡ng thÃ­ch:',11),
(90,'','Chá»‘ng nÆ°á»›c, Chá»‘ng á»“n','Tiá»‡n tÃ­ch:',11),
(91,'','Cáº£m á»©ng cháº¡m','Äiá»u khiá»ƒn báº±ng:',11),
(92,'','Sony','HÃ£ng',11),
(93,'Kiá»ƒu dÃ¡ng nhá» gá»n thiáº¿t káº¿ sang trá»ng.\nThÆ°á»Ÿng thá»©c Ã¢m thanh Hi-Res cÃ³ cháº¥t lÆ°á»£ng vÆ°á»£t trá»™i nhá» cÃ´ng nghá»‡ LDAC.\nKháº£ nÄƒng chá»‘ng á»“n tuyá»‡t vá»i nhá» con chip V1 tháº¿ há»‡ má»›i.\nDung lÆ°á»£ng pin lá»›n, há»— trá»£ sáº¡c nhanh phÃºt dÃ¹ng 60 phÃºt.\nThÆ°á»Ÿng thá»©c trá»n váº¹n bÃ i hÃ¡t nhá» loáº¡i bá» tiáº¿ng á»“n cá»§a giÃ³.\nTáº¯t nháº¡c khi báº¡n trÃ² chuyá»‡n vá»›i ngÆ°á»i xung quanh.\nChuáº©n chá»‘ng nÆ°á»›c IPX4 báº£o vá»‡ tai nghe an toÃ n trÆ°á»›c nÆ°á»›c mÆ°a vÃ  má»“ hÃ´i.\nDá»… dÃ ng tiáº¿p nháº­n thÃ´ng tin hÆ¡n vá»›i trá»£ lÃ½ áº£o.','','',11),
(94,'','DÃ¹ng 9 giá» - Sáº¡c 2.5 giá»','Thá»i gian nghe:',12),
(95,'','DÃ¹ng 18 giá» - Sáº¡c 3 giá»','Thá»i gian há»™p sáº¡c:',12),
(96,'','Type-C','Cá»•ng sáº¡c:',12),
(97,'','Extra Bass','CÃ´ng nghá»‡ Ã¢m thanh:',12),
(98,'','Android, iOS (iPhone, iPad), Windows','TÆ°Æ¡ng thÃ­ch:',12),
(99,'','CÃ³ mic thoáº¡i, Äá»‡m tai Ä‘i kÃ¨m, Chá»‘ng nÆ°á»›c & bá»¥i IP54','Tiá»‡n tÃ­ch:',12),
(100,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',12),
(101,'','Sony','HÃ£ng',12),
(102,'Thiáº¿t káº¿ khÃ´ng dÃ¢y thá»i thÆ°á»£ng, cÃ³ nÃºt Ä‘á»‡m Ãªm tai.\nTÃ¡i hiá»‡n chi tiáº¿t tá»«ng dáº£i Ã¢m vá»›i cÃ´ng nghá»‡ Extra Bass.\nTrang bá»‹ chuáº©n khÃ¡ng nÆ°á»›c IPX4 chá»‘ng tháº¥m nÆ°á»›c cho tai nghe hiá»‡u quáº£.\nTÃ¹y chá»‰nh nghe nháº¡c, gá»i ráº£nh tay tÆ°Æ¡ng tÃ¡c vá»›i Google Assistant, Siri tiá»‡n lá»£i.\nThá»i gian sá»­ dá»¥ng tá»‘i Ä‘a lÃªn tá»›i 18 tiáº¿ng.\nKáº¿t ná»‘i Bluetooth 5.0 á»•n Ä‘á»‹nh vá»›i khoáº£ng cÃ¡ch xa Ä‘áº¿n 10 m.','','',12),
(103,'','DÃ¹ng 9 giá» - Sáº¡c 2.5 giá»','Thá»i gian nghe:',13),
(104,'','DÃ¹ng 26 giá» - Sáº¡c 3 giá»','Thá»i gian há»™p sáº¡c:',13),
(105,'','Type-C','Cá»•ng sáº¡c:',13),
(106,'','Extra Bass','CÃ´ng nghá»‡ Ã¢m thanh:',13),
(107,'','Android, iOS (iPhone, iPad), Windows','TÆ°Æ¡ng thÃ­ch:',13),
(108,'','Sony Headphones Connect','á»¨ng dá»¥ng káº¿t ná»‘i:',13),
(109,'','CÃ³ mic thoáº¡i, Äá»‡m tai Ä‘i kÃ¨m, Chá»‘ng nÆ°á»›c & bá»¥i IP54','Tiá»‡n tÃ­ch:',13),
(110,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',13),
(111,'','Sony','HÃ£ng',13),
(112,'Thiáº¿t káº¿ sang trá»ng, Ãªm Ã¡i vÃ  cháº¯c cháº¯n khi sá»­ dá»¥ng, nhiá»u cá»¡ Ä‘á»‡m tai thay Ä‘á»•i theo ngÆ°á»i dÃ¹ng.\nChuáº©n Ã¢m thanh Extra Bass Ä‘á»™c quyá»n cá»§a Sony cho Ã¢m bass tráº§m sÃ¢u láº¯ng vÃ  máº¡nh máº½.\nKáº¿t ná»‘i khÃ´ng dÃ¢y Bluetooth 5.0 á»•n Ä‘á»‹nh vá»›i pháº¡m vi xa Ä‘áº¿n 10 m.\nÄiá»u khiá»ƒn cáº£m á»©ng touch control, á»©ng dá»¥ng Ä‘iá»u khiá»ƒn Sony Connect Headphone (iOS Android) tÃ¹y chá»‰nh tÃ­nh nÄƒng theo sá»Ÿ thÃ­ch.\nKhÃ¡ng nÆ°á»›c vÃ  bá»¥i chuáº©n IP55 thoáº£i mÃ¡i sá»­ dá»¥ng ngoÃ i trá»i, khi luyá»‡n táº­p.\nChá»‘ng á»“n chá»§ Ä‘á»™ng (ANC) cho tráº£i nghiá»‡m Ã¢m nháº¡c hoÃ n háº£o nháº¥t.\nThá»i gian sá»­ dá»¥ng 9 giá» (13 giá» khi táº¯t chá»‘ng á»“n), thÃªm 9 giá» cÃ¹ng há»™p sáº¡c (13 giá» khi táº¯t chá»‘ng á»“n).\nThá»i gian sáº¡c 2.5 giá», sáº¡c nhanh 10 phÃºt cho sá»­ dá»¥ng thÃªm Ä‘áº¿n 60 phÃºt.','','',13),
(113,'','DÃ¹ng 30 giá» - Sáº¡c 3 giá»','Pin:',14),
(114,'','Type-C','Cá»•ng sáº¡c:',14),
(115,'','Chá»‘ng á»“n HD QN1','CÃ´ng nghá»‡ Ã¢m thanh:',14),
(116,'','Android, iOS (iPhone)','TÆ°Æ¡ng thÃ­ch:',14),
(117,'','Chá»‘ng á»“n','Tiá»‡n Ã­ch:',14),
(118,'','Cáº£m á»©ng cháº¡m','Äiá»u khiá»ƒn báº±ng:',14),
(119,'','Sony','HÃ£ng',14),
(120,'Thiáº¿t káº¿ tráº» trung, gá»n nháº¹ Ä‘áº½ dÃ ng mang theo bÃªn mÃ¬nh.\nCháº¥t Ã¢m chÃ¢n thá»±c, sÃ¢u láº¯ng vá»›i mÃ ng loa 40 mm, mÃ ng cháº¯n Polymer tinh thá»ƒ lá»ng (LCD) vÃ  cÃ´ng nghá»‡ Hi-Res Audio.\nTá»± Ä‘á»™ng ngá»«ng phÃ¡t nháº¡c khi báº¡n trÃ² chuyá»‡n vÃ  phÃ¡t nháº¡c láº¡i khi báº¡n ngá»«ng nÃ³i chuyá»‡n.\nTá»± Ä‘á»™ng Ä‘iá»u chá»‰nh Ã¢m thanh cho phÃ¹ há»£p vá»›i hÃ nh Ä‘á»™ng cá»§a báº¡n, Ä‘em Ä‘áº¿n tráº£i nghiá»‡m tuyá»‡t vá»i.\nTá»± Ä‘á»™ng ngá»«ng phÃ¡t nháº¡c khi báº¡n thÃ¡o tai nghe ra.\nHáº¡ tháº¥p Ã¢m lÆ°á»£ng chá» vá»›i má»™t cÃ¡i cháº¡m vÃ o tai nghe.\nThá»a sá»©c nghe nháº¡c cáº£ ngÃ y dÃ i vá»›i thá»i lÆ°á»£ng pin khá»§ng Ä‘áº¿n 30 giá», vÃ  sáº¡c láº¡i trong 3 giá».\nCÃ´ng nghá»‡ chá»‘ng á»“n HD QN1 cho cháº¥t lÆ°á»£ng Ã¢m hoÃ n háº£o khi thÆ°á»Ÿng thá»©c.\nKiá»ƒm soÃ¡t viá»‡c váº­n hÃ nh cá»§a tai nghe má»™t cÃ¡ch nhanh chÃ³ng vÃ  Ä‘Æ¡n giáº£n.','','',14),
(121,'','DÃ¹ng 30 giá» - Sáº¡c 7 giá»','Pin:',15),
(122,'','Type-C','Cá»•ng sáº¡c:',15),
(123,'','Extra Bass','CÃ´ng nghá»‡ Ã¢m thanh:',15),
(124,'','Android, iOS (iPhone)','TÆ°Æ¡ng thÃ­ch:',15),
(125,'','Sony Headphones Connect','á»¨ng dá»¥ng káº¿t ná»‘i:',15),
(126,'','Chá»‘ng á»“n','Tiá»‡n Ã­ch:',15),
(127,'','Cáº£m á»©ng cháº¡m, PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',15),
(128,'','Sony','HÃ£ng',15),
(129,'Äá»‡m tai dÃ y, Ãªm Ã¡i, mang láº¡i cáº£m giÃ¡c thoáº£i mÃ¡i khi Ä‘eo.\nÃ‚m thanh bÃ¹ng ná»• vá»›i EXTRA BASS vÃ  cÃ´ng nghá»‡ chá»‘ng á»“n ká»¹ thuáº­t sá»‘.\nKáº¿t ná»‘i khÃ´ng dÃ¢y vá»›i cÃ´ng nghá»‡ káº¿t ná»‘i 1 cháº¡m NFC vÃ  Bluetooth 4.2.\nTÃ­ch há»£p trá»£ lÃ½ giá»ng nÃ³i Google Assistant tiá»‡n lá»£i, Amazon Alexa vÃ  Siri.\nÄiá»u chá»‰nh Ã¢m thanh á»©ng dá»¥ng Sony | Headphones Connect.\nThá»i gian sá»­ dá»¥ng khoáº£ng 30 giá», sáº¡c Ä‘áº§y 7 giá».\nSáº¡c nhanh trong 10 phÃºt Ä‘á»ƒ cÃ³ thá»ƒ nghe nháº¡c thÃªm 60 phÃºt.\nTrang bá»‹ micro há»— trá»£ Ä‘Ã m thoáº¡i vÃ  nhiá»u nÃºt tÃ­nh nÄƒng tiá»‡n lá»£i.','','',15),
(130,'','DÃ¹ng 35 giá» - Sáº¡c 4.5 giá»','Pin:',16),
(131,'','Type-C','Cá»•ng sáº¡c:',16),
(132,'','Android, iOS (iPhone), MacOS (Macbook, iMac), Windows','TÆ°Æ¡ng thÃ­ch:',16),
(133,'','CÃ³ mic thoáº¡i','Tiá»‡n Ã­ch:',16),
(134,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',16),
(135,'','Sony','HÃ£ng',16),
(136,'Thiáº¿t káº¿ Ä‘áº¹p máº¯t, cÃ³ thá»ƒ gáº­p pháº§n Ä‘á»‡m tai, gá»n gÃ ng dá»… mang theo.\nKáº¿t ná»‘i Bluetooth 5.0 á»•n Ä‘á»‹nh, tiá»‡n lá»£i, khoáº£ng cÃ¡ch káº¿t ná»‘i tá»‘i Ä‘a lÃ  10 m.\nÄá»‡m tai nghe dÃ y dáº·n, Ãªm Ã¡i khi Ä‘eo trong thá»i gian dÃ i.\nSáº¡c láº¡i trong 4.5 giá», thá»i lÆ°á»£ng sá»­ dá»¥ng pin cá»±c khá»§ng lÃªn Ä‘áº¿n 35 giá» (sáº¡c 10 phÃºt cÃ³ thá»ƒ nghe thÃªm Ä‘áº¿n 90 phÃºt).\nTÃ­ch há»£p micro Ä‘Ã m thoáº¡i tiá»‡n lá»£i, cÃ³ thá»ƒ nháº­n cuá»™c gá»i dá»… dÃ ng mÃ  khÃ´ng cáº§n thao tÃ¡c trÃªn Ä‘iá»‡n thoáº¡i.\nTrang bá»‹ cÃ¡c nÃºt nháº¥n nhÆ°: Nháº­n cuá»™c gá»i, phÃ¡t/dá»«ng chÆ¡i nháº¡c, chuyá»ƒn bÃ i hÃ¡t, tÄƒng/giáº£m Ã¢m lÆ°á»£ng.','','',16),
(137,'','3.5 mm','Jack cáº¯m:',17),
(138,'','Android, Windows','TÆ°Æ¡ng thÃ­ch:',17),
(139,'','CÃ³ mic thoáº¡i','Tiá»‡n Ã­ch:',17),
(140,'','PhÃ­m nháº¥n, Chuyá»ƒn bÃ i hÃ¡t, Mic thoáº¡iNghe/nháº­n cuá»™c gá»i, PhÃ¡t/dá»«ng chÆ¡i nháº¡c','Äiá»u khiá»ƒn báº±ng:',17),
(141,'','Sony','HÃ£ng',17),
(142,'Thiáº¿t káº¿ hiá»‡n Ä‘áº¡i, Ä‘á»‡m tai lá»›n, má»m, thoáº£i mÃ¡i khi Ä‘eo.\nQuai Ä‘eo tai nghe cÃ³ thá»ƒ kÃ©o dÃ£n 4.5 cm.\nTÃ¡i táº¡o Ã¢m thanh trong tráº»o, rÃµ nÃ©t.\nDÃ¢y dÃ i 1.2 m, jack cáº¯m 3.5 mm thÃ´ng dá»¥ng.','','',17),
(143,'','DÃ¹ng 15 giá» - Sáº¡c 3 giá»','Pin:',18),
(144,'','Type-C','Cá»•ng sáº¡c:',18),
(145,'','Extra Bass','CÃ´ng nghá»‡ Ã¢m thanh:',18),
(146,'','Android, iOS (iPhone), MacOS (Macbook, iMac), Windows','TÆ°Æ¡ng thÃ­ch:',18),
(147,'','Chá»‘ng nÆ°á»›c, CÃ³ mic thoáº¡i','Tiá»‡n Ã­ch:',18),
(148,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',18),
(149,'','Sony','HÃ£ng',18),
(150,'Thiáº¿t káº¿ gá»n Ä‘áº¹p, kiá»ƒu vÃ²ng cá»• thoáº£i mÃ¡i, cÃ³ mÃ³c cá»‘ Ä‘á»‹nh kÃ¨m Ä‘á»‡m Ãªm dá»… dÃ¹ng.\nChá»‘ng tháº¥m nÆ°á»›c chuáº©n IPX5 báº£o vá»‡ tai nghe khi táº­p luyá»‡n, tiáº¿p xÃºc vá»›i nÆ°á»›c.\nÃ‚m thanh sÃ¢u láº¯ng vá»›i cÃ´ng nghá»‡ Extra Bass hiá»‡n Ä‘áº¡i.\nDá»… dÃ ng tÃ¹y chá»‰nh tÃ¡c vá»¥ nghe nháº¡c, gá»i ráº£nh tay, tÆ°Æ¡ng tÃ¡c vá»›i Google Assistant, Siri.\nDÃ¹ng má»i lÃºc má»i nÆ¡i vá»›i thá»i gian tá»‘i Ä‘a 15 tiáº¿ng.\nKáº¿t ná»‘i Bluetooth 5.0 vá»›i khoáº£ng cÃ¡ch 10 m, Ä‘Æ°á»ng truyá»n á»•n Ä‘á»‹nh.','','',18),
(151,'','DÃ¹ng 8.5 giá» - Sáº¡c 2.5 giá»','Pin:',19),
(152,'','Micro USB','Cá»•ng sáº¡c:',19),
(153,'','Extra Bass','CÃ´ng nghá»‡ Ã¢m thanh:',19),
(154,'','Android, iOS (iPhone), MacOS (Macbook, iMac), Windows','TÆ°Æ¡ng thÃ­ch:',19),
(155,'','CÃ³ mic thoáº¡i, Äá»‡m tai Ä‘i kÃ¨m, Tai nghe nhÃ©t tai','Tiá»‡n Ã­ch:',19),
(156,'','NFC, Bluetooth 4.1','Há»— trá»£ káº¿t ná»‘i:',19),
(157,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',19),
(158,'','Sony','HÃ£ng',19),
(159,'ÄÆ°á»£c thiáº¿t káº¿ bá»n vÃ  cá»©ng cÃ¡p phÃ¹ há»£p trong hoáº¡t Ä‘á»™ng thá»ƒ thao.\nSá»­ dá»¥ng cÃ´ng nghá»‡ EXTRA BASS giÃºp tÄƒng cÆ°á»ng Ã¢m tráº§m, phÃ¹ há»£p cho cÃ¡c dÃ²ng nháº¡c Ä‘iá»‡n tá»­.\nThiáº¿t káº¿ IPX4 chá»‘ng tia nÆ°á»›c báº¯n phÃ¹ há»£p Ä‘á»ƒ sá»­ dá»¥ng cho má»i thá»i tiáº¿t.\nKáº¿t ná»‘i khÃ´ng dÃ¢y vá»›i Bluetooth 4.1, khoáº£ng cÃ¡ch káº¿t ná»‘i Ä‘áº¿n 10 m.\nMÃ³c cá»‘ Ä‘á»‹nh giÃºp giá»¯ tai nghe náº±m á»Ÿ Ä‘Ãºng vá»‹ trÃ­.\nMá»™t micro tÃ­ch há»£p Ä‘á»ƒ thá»±c hiá»‡n cuá»™c gá»i ráº£nh tay.\nThá»i gian Ä‘Ã m thoáº¡i/nghe nháº¡c cÃ³ thá»ƒ lÃªn Ä‘áº¿n 8.5 giá», thá»i gian sáº¡c khoáº£ng 2.5 giá».\nThá»i gian chá» cÃ³ thá»ƒ lÃªn Ä‘áº¿n 200 giá» ','','',19),
(160,'','DÃ¹ng 8 giá» - Sáº¡c 3 giá»','Thá»i gian nghe:',20),
(161,'','DÃ¹ng 16 giá» - Sáº¡c 3 giá»','Thá»i gian há»™p sáº¡c:',20),
(162,'','Type-C','Cá»•ng sáº¡c:',20),
(163,'','Active Noise Cancelling, Transparency Mode','CÃ´ng nghá»‡ Ã¢m thanh:',20),
(164,'','Android, iOS (iPhone, iPad)','TÆ°Æ¡ng thÃ­ch:',20),
(165,'','Bluetooth TWS','á»¨ng dá»¥ng káº¿t ná»‘i:',20),
(166,'','Chá»‘ng á»“n, Äá»‡m tai Ä‘i kÃ¨m','Tiá»‡n tÃ­ch:',20),
(167,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',20),
(168,'','Beats','HÃ£ng',20),
(169,'Thiáº¿t káº¿ hÃ¬nh báº§u dá»¥c láº¡ máº¯t, 2 mÃ u Ä‘en - tráº¯ng thá»i trang, Ä‘eo vá»«a váº·n.\nCháº¥t Ã¢m máº¡nh máº½, cÃ¢n báº±ng. \nHá»— trá»£ Bluetooth 5.0 Class-1 cho káº¿t ná»‘i nhanh chÃ³ng.\nSá»­ dá»¥ng phÃ¹ há»£p hoÃ n cáº£nh vá»›i cÃ´ng nghá»‡ Chá»‘ng á»“n chá»§ Ä‘á»™ng ANC vÃ  Transparency mode (XuyÃªn Ã¢m).\nTai nghe dÃ¹ng Ä‘Æ°á»£c 8 tiáº¿ng, há»™p sáº¡c 16 tiáº¿ng, sáº¡c nhanh Fast Fuel 5 phÃºt cho 1 tiáº¿ng sá»­ dá»¥ng.\nYÃªn tÃ¢m luyá»‡n táº­p vá»›i tiÃªu chuáº©n chá»‘ng nÆ°á»›c IPX4.\nPhÃ­m nháº¥n dá»… chá»‰nh phÃ¡t/dá»«ng nháº¡c, báº­t trá»£ lÃ½ áº£o, nháº­n cuá»™c gá»i,...','','',20),
(170,'','DÃ¹ng 9 giá» - Sáº¡c 3 giá»','Thá»i gian nghe:',21),
(171,'','DÃ¹ng 24 giá» - Sáº¡c 3 giá»','Thá»i gian há»™p sáº¡c:',21),
(172,'','Lightning','Cá»•ng sáº¡c:',21),
(173,'','Android, iOS (iPhone)','TÆ°Æ¡ng thÃ­ch:',21),
(174,'','Siri','á»¨ng dá»¥ng káº¿t ná»‘i:',21),
(175,'','Chá»‘ng nÆ°á»›c, CÃ³ mic thoáº¡i','Tiá»‡n tÃ­ch:',21),
(176,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',21),
(177,'','Beats','HÃ£ng',21),
(178,'TÃ­ch há»£p chip H1 cho tá»‘c Ä‘á»™ káº¿t ná»‘i, chuyá»ƒn Ä‘á»•i, dÃ¹ng á»•n Ä‘á»‹nh.\nTrang bá»‹ cáº£m biáº¿n Auto Play khi bá» tai, nháº¡c sáº½ táº¡m dá»«ng phÃ¡t ngay.\nCá»•ng sáº¡c Lighting chuáº©n hÃ£ng, gá»i trá»£ lÃ½ áº£o Siri thÃ´ng qua kháº©u lá»‡ch \"Hey Siri\" quen thuá»™c.\nChuáº©n chá»‘ng nÆ°á»›c, má»“ hÃ´i IP57 yÃªn tÃ¢m khi chÆ¡i thá»ƒ thao cÆ°á»ng Ä‘á»™ cao.\nThá»i gian nghe nháº¡c vÃ  Ä‘Ã m thoáº¡i lÃªn tá»›i 9 giá» vÃ  káº¿t há»£p há»™p sáº¡c lÃ  24 giá».\nCÃ³ tÃ­nh nÄƒng Fast Fuel phÃ¡t nháº¡c 1.5 giá» sau khi sáº¡c 5 phÃºt vÃ  4.5 giá» phÃ¡t nháº¡c khi sáº¡c sau 15 phÃºt.','','',21),
(179,'','DÃ¹ng 40 giá» - Sáº¡c 3 giá»','Thá»i gian tai nghe:',22),
(180,'','Micro USB','Cá»•ng sáº¡c:',22),
(181,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',22),
(182,'','Siri','á»¨ng dá»¥ng káº¿t ná»‘i:',22),
(183,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',22),
(184,'','Beats','HÃ£ng',22),
(185,'Thiáº¿t káº¿ gá»n nháº¹, sang trá»ng, Ä‘á»‡m tai má»m thoáº£i mai khi Ä‘eo.\nKáº¿t ná»‘i khÃ´ng dÃ¢y Bluetooth 4.0 mÆ°á»£t mÃ  xa Ä‘áº¿n 10 m. \nSá»­ dá»¥ng chip Apple W1 táº¡o Ã¢m thanh máº¡nh máº½, cháº¥t lÆ°á»£ng cao.\nThá»i gian sá»­ dá»¥ng 40 giá» liÃªn tá»¥c sau 1 láº§n sáº¡c.\nTÃ­nh nÄƒng Fast Fuel sáº¡c nhanh 5 phÃºt sá»­ dá»¥ng Ä‘Æ°á»£c 3 giá».','','',22),
(186,'','DÃ¹ng 22 giá» - Sáº¡c 3 giá»','Thá»i gian tai nghe:',23),
(187,'','Micro USB','Cá»•ng sáº¡c:',23),
(188,'','Active Noise Cancelling','CÃ´ng nghá»‡ Ã¢m thanh:',23),
(189,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',23),
(190,'','Chá»‘ng á»“n','Tiá»‡n Ã­ch:',23),
(191,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',23),
(192,'','Beats','HÃ£ng',23),
(193,'Thiáº¿t káº¿ gá»n nháº¹, tinh táº¿, Ä‘á»‡m tai má»m thoáº£i mÃ¡i khi Ä‘eo.\nKáº¿t ná»‘i khÃ´ng dÃ¢y vá»›i Bluetooth 4.0, khoáº£ng cÃ¡ch káº¿t ná»‘i Ä‘áº¿n 10 m.\nSá»­ dá»¥ng chip Apple W1 má»›i káº¿t ná»‘i nhanh vÃ  á»•n Ä‘á»‹nh, Ã¢m thanh máº¡nh máº½.\nTrang bá»‹ cÃ´ng nghá»‡ chá»‘ng á»“n chá»§ Ä‘á»™ng (Pure Active Noise Cancelling).\nThá»i gian sá»­ dá»¥ng 22 giá» (báº­t chá»‘ng á»“n), 40 giá» (táº¯t chá»‘ng á»“n).\nTÃ­nh nÄƒng Fast Fuel sáº¡c nhanh 10 phÃºt sá»­ dá»¥ng Ä‘Æ°á»£c 3 giá».','','',23),
(194,'','DÃ¹ng 12 giá» - Sáº¡c 2 giá»','Pin:',24),
(195,'','Audio Sharing','CÃ´ng nghá»‡ Ã¢m thanh:',24),
(196,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',24),
(197,'','Äá»‡m tai Ä‘i kÃ¨m','Tiá»‡n Ã­ch:',24),
(198,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',24),
(199,'','Beats','HÃ£ng',24),
(200,'Thiáº¿t káº¿ gá»n nháº¹, phÃ¹ há»£p vá»›i cÃ¡c hoáº¡t Ä‘á»™ng thá»ƒ thao.\nTÃ­ch há»£p chip Apple W1 cho Ã¢m thanh máº¡nh máº½, cháº¥t lÆ°á»£ng cao.\nThá»i gian sá»­ dá»¥ng 12 giá» liÃªn tá»¥c sau 1 láº§n sáº¡c.\nTÃ­nh nÄƒng Fast Fuel sáº¡c nhanh 10 phÃºt sá»­ dá»¥ng Ä‘Æ°á»£c 1.5 giá».','','',24),
(201,'','DÃ¹ng 12 giá» - Sáº¡c 2 giá»','Pin:',25),
(202,'','Micro USB','Cá»•ng sáº¡c:',25),
(203,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',25),
(204,'','Chá»‘ng nÆ°á»›c','Tiá»‡n Ã­ch:',25),
(205,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',25),
(206,'','Beats','HÃ£ng',25),
(207,'Thiáº¿t káº¿ nÄƒng Ä‘á»™ng, 2 phiÃªn báº£n mÃ u Ä‘en - Ä‘en Ä‘á» lá»±a chá»n tÃ¹y thÃ­ch.  \nCáº£i thiá»‡n cháº¥t lÆ°á»£ng Ã¢m thanh tá»‘i Æ°u vá»›i chip Apple W1. \nThá»i gian sá»­ dá»¥ng liÃªn tá»¥c Ä‘áº¿n 12 giá» sau 1 láº§n sáº¡c.\nTÃ­nh nÄƒng Fast Fuel sáº¡c nhanh 5 phÃºt sá»­ dá»¥ng Ä‘Æ°á»£c trong 1 giá».\nDual-Driver mang Ä‘áº¿n hiá»‡u suáº¥t Ã¢m thanh cao.\nChuáº©n IPX4 chá»‘ng má»“ hÃ´i vÃ  tia nÆ°á»›c báº¯n.','','',25),
(208,'','DÃ¹ng 6 giá» - Sáº¡c 2 giá»','Pin:',26),
(209,'','Micro USB','Cá»•ng sáº¡c:',26),
(210,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',26),
(211,'','CÃ³ mic thoáº¡i, Äá»‡m tai Ä‘i kÃ¨m, Tai nghe nhÃ©t tai','Tiá»‡n Ã­ch:',26),
(212,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',26),
(213,'','JBL','HÃ£ng',26),
(214,'Tai nghe vá»›i thiáº¿t káº¿ dáº¡ng in-ear vá»›i kiá»ƒu dÃ¡ng tráº» trung, nÄƒng Ä‘á»™ng, trá»ng lÆ°á»£ng chá»‰ 16.5g.\nKÃ­ch thÆ°á»›c mÃ ng loa 9mm mang Ä‘áº¿n Ã¢m thanh máº¡nh máº½ vÃ  cÃ¢n báº±ng.\nÄá»‡m tai nghe má»m máº¡i táº¡o cáº£m giÃ¡c thoáº£i mÃ¡i khi Ä‘eo.\nKáº¿t ná»‘i khÃ´ng dÃ¢y vá»›i Bluetooth 4.0 nhanh, á»•n Ä‘á»‹nh.\nTÆ°Æ¡ng thÃ­ch vá»›i nhiá»u dÃ²ng Ä‘iá»‡n thoáº¡i, mÃ¡y tÃ­nh báº£ng.\nThá»i gian sá»­ dá»¥ng 6 giá», thá»i gian sáº¡c 2 giá».','','',26),
(215,'','DÃ¹ng 8 giá» - Sáº¡c 2 giá»','Pin:',27),
(216,'','Micro USB','Cá»•ng sáº¡c:',27),
(217,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',27),
(218,'','CÃ³ mic thoáº¡i, Äá»‡m tai Ä‘i kÃ¨m, Tai nghe nhÃ©t tai','Tiá»‡n Ã­ch:',27),
(219,'','JBL','HÃ£ng',27),
(220,'Tai nghe thá»ƒ thao thiáº¿t káº¿ gá»n nháº¹ vá»›i kiá»ƒu dÃ¡ng tráº» trung, nÄƒng Ä‘á»™ng.\nThá»i gian sá»­ dá»¥ng 8 giá» Ä‘á»“ng há»“, thá»i gian sáº¡c 2 giá».\nCÃ´ng nghá»‡ Bluetooth 4.2 cho káº¿t ná»‘i tá»›i 10 m mÆ°á»£t mÃ , á»•n Ä‘á»‹nh.\nHá»— trá»£ báº±ng giá»ng nÃ³i Google Assistant chá»‰ vá»›i 1 nÃºt báº¥m.\nTÃ­ch há»£p Microphone vá»›i cÃ´ng nghá»‡ khá»­ tiáº¿ng vang cho Ã¢m thanh cuá»™c gá»i trong tráº»o, rÃµ rÃ ng.\nCung cáº¥p cÃ¡c nÃºt tai nghe vá»›i cÃ¡c kÃ­ch cá»¡ khÃ¡c nhau phÃ¹ há»£p vá»›i ngÆ°á»i dÃ¹ng.','','',27),
(221,'','DÃ¹ng 3 giá» - Sáº¡c 2 giá»','Thá»i gian nghe:',28),
(222,'','DÃ¹ng 16 giá» - Sáº¡c 2 giá»','Thá»i gian há»™p sáº¡c:',28),
(223,'','Micro USB','Cá»•ng sáº¡c:',28),
(224,'','JBL Pure Bass','CÃ´ng nghá»‡ Ã¢m thanh:',28),
(225,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',28),
(226,'','CÃ³ mic thoáº¡i','Tiá»‡n tÃ­ch:',28),
(227,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',28),
(228,'','JBL','HÃ£ng',28),
(229,'Thiáº¿t káº¿ earbuds sÃ nh Ä‘iá»‡u, tráº» trung vÃ  báº¯t máº¯t.\nTrang bá»‹ Bluetooth 5.0 cho káº¿t ná»‘i nhanh vÃ  á»•n Ä‘á»‹nh.\nCháº¥t lÆ°á»£ng Ã¢m thanh vÆ°á»£t trá»™i vá»›i driver 12.5 mm vÃ  cÃ´ng nghá»‡ JBL Pure Bass Sound.\nThá»i gian sá»­ dá»¥ng 3 giá», há»™p sáº¡c cung cáº¥p thÃªm 16 giá» cho tai nghe.','','',28),
(230,'','DÃ¹ng 10 giá» - Sáº¡c 2 giá»','Thá»i gian nghe:',29),
(231,'','DÃ¹ng 20 giá» - Sáº¡c 2 giá»','Thá»i gian há»™p sáº¡c:',29),
(232,'','Micro USB','Cá»•ng sáº¡c:',29),
(233,'','Ambient Aware, JBL Signature Sound, TalkThru','CÃ´ng nghá»‡ Ã¢m thanh:',29),
(234,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',29),
(235,'','Chá»‘ng nÆ°á»›c, CÃ³ mic thoáº¡i, Äá»‡m tai Ä‘i kÃ¨m, Tai nghe nhÃ©t tai','Tiá»‡n tÃ­ch:',29),
(236,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',29),
(237,'','JBL','HÃ£ng',29),
(238,'Thiáº¿t káº¿ nhá» gá»n, hiá»‡n Ä‘áº¡i vÃ  cÃ¡ tÃ­nh.\nCÃ´ng nghá»‡ bluetooth 5.0 cho káº¿t ná»‘i nhanh vÃ  á»•n Ä‘á»‹nh.\nCÃ´ng nghá»‡ Ã¢m thanh JBL Signature Sound.\nTrang bá»‹ cÃ¡c cÃ´ng nghá»‡ TalkThru vÃ  Ambient Aware.\nCÃ³ kháº£ nÄƒng chá»‘ng nÆ°á»›c Ä‘áº¡t chuáº©n IPX7.\nThá»i gian sá»­ dá»¥ng 10 giá», thÃªm 20 giá» cÃ¹ng há»™p sáº¡c.\nThá»i gian sáº¡c 2 giá», sáº¡c nhanh 10 phÃºt sá»­ dá»¥ng Ä‘áº¿n 60 phÃºt.','','',29),
(239,'','3.5 mm','Jack cáº¯m:',30),
(240,'','Ambient Aware, JBL Signature Sound, TalkThru','CÃ´ng nghá»‡ Ã¢m thanh:',30),
(241,'','MacOS (Macbook, iMac), Windows','TÆ°Æ¡ng thÃ­ch:',30),
(242,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',30),
(243,'','JBL','HÃ£ng',30),
(244,'Tai nghe chá»¥p tai thá»i thÆ°á»£ng, Ä‘á»‡m xá»‘p siÃªu nháº¹, phÃ¹ há»£p tÃ­n Ä‘á»“ chÆ¡i game.\nTÃ¡i táº¡o Ã¢m thanh chÃ¢n tháº­t, sáº¯c nÃ©t nhá» mÃ ng loa 40 mm, cÃ´ng nghá»‡ JBL QuantumSOUND Signature.\nCÃ³ microphone cho Ä‘Ã m thoáº¡i to, rÃµ, kÃªu gá»i Ä‘á»“ng Ä‘á»™i dá»… dÃ ng hÆ¡n. \nSá»­ dá»¥ng jack káº¿t ná»‘i 3.5 mm káº¿t ná»‘i Ä‘a thiáº¿t bá»‹. \nTÃ­ch há»£p nÃºt cÆ¡ báº­t/táº¯t, tÄƒng giáº£m Ã¢m lÆ°á»£ng linh hoáº¡t. ','','',30),
(245,'','DÃ¹ng 16 giá» - Sáº¡c 2 giá»','Pin:',31),
(246,'','Micro USB','Cá»•ng sáº¡c:',31),
(247,'','Android,iOS (iPhone)','TÆ°Æ¡ng thÃ­ch:',31),
(248,'','CÃ³ mic thoáº¡i','Tiá»‡n Ã­ch:',31),
(249,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',31),
(250,'','JBL','HÃ£ng',31),
(251,'Thiáº¿t káº¿ thá»ƒ thao sÃ nh Ä‘iá»‡u, cÃ³ thá»ƒ gáº¥p gá»n.\nCÃ³ thá»ƒ kÃ©o dÃ£n pháº§n chá»¥p tai phÃ¹ há»£p nhiá»u ngÆ°á»i dÃ¹ng khÃ¡c nhau.\nCÃ´ng nghá»‡ Bluetooth 4.1, káº¿t ná»‘i trong khoáº£ng cÃ¡ch Ä‘áº¿n 10 m.\nBáº­t trá»£ lÃ½ áº£o nhanh chÃ³ng ra lá»‡nh ngay trÃªn tai nghe.\nPin 16 giá», hoáº¡t Ä‘á»™ng cáº£ ngÃ y dÃ i.\nTrang bá»‹ cÃ¡c nÃºt nháº¥n Ä‘iá»u khiá»ƒn nhÆ°: PhÃ¡t/dá»«ng chÆ¡i nháº¡c, nháº­n cuá»™c gá»i, tÄƒng, giáº£m Ã¢m lÆ°á»£ng.','','',31),
(252,'','DÃ¹ng 4 giá» - Sáº¡c 1.5 giá»','Thá»i gian nghe:',32),
(253,'','DÃ¹ng 12 giá» - Sáº¡c 2 giá»','Thá»i gian há»™p sáº¡c:',32),
(254,'','Micro USB','Cá»•ng sáº¡c:',32),
(255,'','Lá»c Ã¢m, khá»­ á»“n DSP','CÃ´ng nghá»‡ Ã¢m thanh:',32),
(256,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',32),
(257,'','Chá»‘ng nÆ°á»›c','Tiá»‡n tÃ­ch:',32),
(258,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',32),
(259,'','Xiaomi','HÃ£ng',32),
(260,'Thiáº¿t káº¿ nhá» gá»n, phÃ¹ há»£p vá»›i nhiá»u kÃ­ch cá»¡ tai.\nMÃ ng loa cÃ³ kÃ­ch thÆ°á»›c 7.2 mm cho Ã¢m bass cÃ¡c thÃªm dÃ y vÃ  sÃ¢u.\nBáº¯t trá»n Ã¢m thanh vá»›i cÃ´ng nghá»‡ khá»­ tiáº¿ng á»“n DSP.\nYÃªn tÃ¢m sá»­ dá»¥ng vá»›i kháº£ nÄƒng chá»‘ng nÆ°á»›c IPX4.\nNghe nháº¡c tháº£ ga, sáº¡c Ä‘áº§y pin nhanh chÃ³ng.\nKáº¿t ná»‘i khÃ´ng dÃ¢y nhanh chÃ³ng, tÆ°Æ¡ng thÃ­ch vá»›i nhiá»u thiáº¿t bá»‹ nhá» cÃ´ng nghá»‡ Bluetooth 5.0.\nTá»± Ä‘á»™ng káº¿t ná»‘i, Ä‘iá»u khiá»ƒn tai nghe tiá»‡n lá»£i.','','',32),
(261,'','DÃ¹ng 5 giá» - Sáº¡c 1.5 giá»','Thá»i gian nghe:',33),
(262,'','DÃ¹ng 20 giá» - Sáº¡c 1.5 giá»','Thá»i gian há»™p sáº¡c:',33),
(263,'','Type-C','Cá»•ng sáº¡c:',33),
(264,'','codecAAC','CÃ´ng nghá»‡ Ã¢m thanh:',33),
(265,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',33),
(266,'','Chá»‘ng nÆ°á»›c','Tiá»‡n tÃ­ch:',33),
(267,'','Cáº£m á»©ng cháº¡m','Äiá»u khiá»ƒn báº±ng:',33),
(268,'','Xiaomi','HÃ£ng',33),
(269,'Thiáº¿t káº¿ nhá» gá»n, tiá»‡n lá»£i mang theo.\nChuáº©n Bluetooth 5.0 káº¿t ná»‘i mÆ°á»£t mÃ  Ä‘áº¿n 10m.\nKháº£ nÄƒng chá»‘ng nÆ°á»›c chuáº©n IPX5.\nÄiá»u khiá»ƒn báº±ng cáº£m á»©ng trÃªn tai nghe.\nTrang bá»‹ cÃ´ng nghá»‡ khá»­ tiáº¿ng á»“n mÃ´i trÆ°á»ng.\nÃ‚m thanh tuyá»‡t vá»i vá»›i codec AAC vÃ  mÃ ng loa 14,2 mm.\nThá»i gian sá»­ dá»¥ng 5 giá», kÃ¨m há»™p sáº¡c 20 giá» vÃ  sáº¡c 1.5 giá».','','',33),
(270,'','DÃ¹ng 4 giá» - Sáº¡c 1 giá»','Thá»i gian nghe:',34),
(271,'','DÃ¹ng 18 giá» - Sáº¡c 1.5 giá»','Thá»i gian há»™p sáº¡c:',34),
(272,'','Type-C','Cá»•ng sáº¡c:',34),
(273,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',34),
(274,'','Chá»‘ng nÆ°á»›c','Tiá»‡n tÃ­ch:',34),
(275,'','Cáº£m á»©ng cháº¡m','Äiá»u khiá»ƒn báº±ng:',34),
(276,'','Xiaomi','HÃ£ng',34),
(277,'Kiá»ƒu dÃ¡ng nhá» gá»n cÃ¹ng thiáº¿t káº¿ hiá»‡n Ä‘áº¡i, tráº» trung.\nKáº¿t ná»‘i nhanh chÃ³ng vÃ  á»•n Ä‘á»‹nh trong pháº¡m vi 10 m nhá» Bluetooth 5.0.\nDá»… dÃ ng Ä‘iá»u khiá»ƒn chá»‰ báº±ng cáº£m á»©ng thao tÃ¡c cháº¡m.\nTrÃ² chuyá»‡n Ä‘iá»‡n thoáº¡i thoáº£i mÃ¡i vÃ  rÃµ rÃ ng hÆ¡n nhá» cÃ´ng nghá»‡ khá»­ tiáº¿ng á»“n.\nBáº£o vá»‡ tai nghe khá»i tÃ¡c háº¡i cá»§a nÆ°á»›c vá»›i chuáº©n chá»‘ng nÆ°á»›c IPX5.\nCháº¥t Ã¢m sá»‘ng Ä‘á»™ng, táº­n hÆ°á»Ÿng trá»n váº¹n cÃ¡c giai Ä‘iá»‡u.\nThá»i gian sá»­ dá»¥ng 4 giá», kÃ¨m há»™p sáº¡c 18 giá» vÃ  sáº¡c 1 giá».','','',34),
(278,'','DÃ¹ng 6 giá» - Sáº¡c 1 giá»','Thá»i gian nghe:',35),
(279,'','DÃ¹ng 12 giá» - Sáº¡c 1.5 giá»','Thá»i gian há»™p sáº¡c:',35),
(280,'','Type-C','Cá»•ng sáº¡c:',35),
(281,'','Headphone Spatial Processing, Meridian, Truyá»n phÃ¡t nháº¡c MQA','CÃ´ng nghá»‡ Ã¢m thanh:',35),
(282,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',35),
(283,'','TONE Free','á»¨ng dá»¥ng káº¿t ná»‘i:',35),
(284,'','Chá»‘ng nÆ°á»›c, Äá»‡m tai Ä‘i kÃ¨m','Tiá»‡n tÃ­ch:',35),
(285,'','Bluetooth 5.0','Há»— trá»£ káº¿t ná»‘i:',35),
(286,'','Cáº£m á»©ng cháº¡m','Äiá»u khiá»ƒn báº±ng:',35),
(287,'','LG','HÃ£ng',35),
(288,'Há»™p sáº¡c UVnano má»›i khÃ¡ng khuáº©n Ä‘áº¿n 99.9%, há»— trá»£ sáº¡c khÃ´ng dÃ¢y.\nÃ‚m thanh Ä‘á»™ phÃ¢n giáº£i cao, chÃ¢n thá»±c vá»›i cÃ´ng nghá»‡ cá»§a Meridian tá»« Anh Quá»‘c.\nThiáº¿t káº¿ vá»«a váº·n, Ä‘á»‡m silicone chá»‘ng á»“n, tÃ­ch há»£p micro kÃ©p Ä‘á»ƒ cuá»™c gá»i rÃµ rÃ ng hÆ¡n.\nChuáº©n Bluetooth 5.0 vá»›i khoáº£ng cÃ¡ch káº¿t ná»‘i Ä‘áº¿n 10 m.\nKháº£ nÄƒng chá»‘ng nÆ°á»›c chuáº©n IPX4 báº£o vá»‡ tai nghe.\nSáº¡c qua cá»•ng Type-C hoáº·c cÃ³ thá»ƒ sáº¡c khÃ´ng dÃ¢y.\nThá»i lÆ°á»£ng pin lÃªn Ä‘áº¿n 18 giá» khi káº¿t há»£p vá»›i há»™p sáº¡c, sáº¡c nhanh 5 phÃºt dÃ¹ng thÃªm Ä‘áº¿n 1 giá».\nDá»… dÃ ng tÃ¹y chá»‰nh vÃ  tÃ¬m kiáº¿m tai nghe vá»›i á»©ng dá»¥ng TONE Free.','','',35),
(289,'','DÃ¹ng 12 giá» - Sáº¡c 2 giá»','Pin:',36),
(290,'','Micro USB','Cá»•ng sáº¡c:',36),
(291,'','Quad Layer','CÃ´ng nghá»‡ Ã¢m thanh:',36),
(292,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',36),
(293,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',36),
(294,'','LG','HÃ£ng',36),
(295,'Thiáº¿t káº¿ gá»n nháº¹, liá»n máº¡ch tinh xáº£o vÃ  thanh lá»‹ch, nÃºt tai cÃ³ thá»ƒ thu vÃ o.\nÃ‚m thanh Ä‘Æ°á»£c Ä‘iá»u chá»‰nh bá»Ÿi Harman Kardon, cho ra cháº¥t Ã¢m tá»‘t nháº¥t.\nCÃ´ng nghá»‡ Bluetooth 4.2 cho káº¿t ná»‘i á»•n Ä‘á»‹nh, mÆ°á»£t mÃ  Ä‘áº¿n 10 m.\nTÃ­ch há»£p micro, cÃ³ nÃºt Google Assistant chuyÃªn dá»¥ng.\nDung lÆ°á»£ng pin 220 mAh, thá»i gian sáº¡c 2 giá», thá»i gian nghe nháº¡c 12 giá», thá»i gian Ä‘Ã m thoáº¡i 13 giá».','','',36),
(296,'','DÃ¹ng 13 giá» - Sáº¡c 2 giá»','Pin:',37),
(297,'','Micro USB','Cá»•ng sáº¡c:',37),
(298,'','Quad Layer','CÃ´ng nghá»‡ Ã¢m thanh:',37),
(299,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',37),
(300,'','CÃ³ mic thoáº¡i, Äá»‡m tai Ä‘i kÃ¨m, Tai nghe nhÃ©t tai','Tiá»‡n Ã­ch:',37),
(301,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',37),
(302,'','LG','HÃ£ng',37),
(303,'Thiáº¿t káº¿ dáº¡ng vÃ²ng cá»• gá»n nháº¹, Ä‘á»‡m tai má»m Ãªm Ã¡i.\nCÃ´ng nghá»‡ Quad Layer tiÃªn tiáº¿n táº¡o nÃªn sá»± hÃ i hÃ²a, cÃ¢n báº±ng cho Ã¢m thanh.\nThÃ´ng bÃ¡o rung khi cÃ³ cuá»™c gá»i Ä‘áº¿n, tÃ­ch há»£p micro.\nCÃ´ng nghá»‡ bluetooth 4.1 cho káº¿t ná»‘i á»•n Ä‘á»‹nh, mÆ°á»£t mÃ  Ä‘áº¿n 10m.\nDung lÆ°á»£ng pin 210 mAh, thá»i gian sáº¡c 2 giá», thá»i gian nghe nháº¡c 13 giá», thá»i gian Ä‘Ã m thoáº¡i 14 giá».','','',37),
(304,'','DÃ¹ng 10 giá» - Sáº¡c 2 giá»','Pin:',38),
(305,'','Micro USB','Cá»•ng sáº¡c:',38),
(306,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',38),
(307,'','CÃ³ mic thoáº¡i','Tiá»‡n Ã­ch:',38),
(308,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',38),
(309,'','Kanen','HÃ£ng',38),
(310,'CÃ´ng nghá»‡ bluetooth 4.1 cho khoáº£ng cÃ¡ch káº¿t ná»‘i lÃªn Ä‘áº¿n 10m.\nCÃ³ thá»ƒ gá»i nhanh, nghe nháº¡c, táº¡o cuá»™c háº¹n, v.v.. thÃ´ng qua Siri hay Google Voice.\nÄá»‡m tai nghe dÃ y, thoáº£i mÃ¡i khi sá»­ dá»¥ng khoáº£ng thá»i gian dÃ i.\nDung lÆ°á»£ng pin: 300 mAh, cho thá»i gian sá»­ dá»¥ng cÃ³ thá»ƒ lÃªn Ä‘áº¿n 10 giá», thá»i gian sáº¡c khoáº£ng 2 giá».','','',38),
(311,'','DÃ¹ng 18 giá» - Sáº¡c 2 giá»','Pin:',39),
(312,'','Micro USB','Cá»•ng sáº¡c:',39),
(313,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',39),
(314,'','CÃ³ mic thoáº¡i','Tiá»‡n Ã­ch:',39),
(315,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',39),
(316,'','Kanen','HÃ£ng',39),
(317,'Thiáº¿t káº¿ hiá»‡n Ä‘áº¡i, nÄƒng Ä‘á»™ng, cÃ³ thá»ƒ gáº¥p gá»n khi khÃ´ng sá»­ dá»¥ng.\nKhoáº£ng cÃ¡ch káº¿t ná»‘i xa Ä‘áº¿n 10 m qua cÃ´ng nghá»‡ Bluetooth 4.1. \nSá»­ dá»¥ng liÃªn tá»¥c trong 18 giá», sáº¡c Ä‘áº§y trong 2 giá».\nDá»… dÃ ng Ä‘iá»u khiá»ƒn qua giá»ng nÃ³i vá»›i Siri, Google Voice.','','',39),
(318,'','3.5 mm','Jack cáº¯m:',40),
(319,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',40),
(320,'','CÃ³ mic thoáº¡i','Tiá»‡n Ã­ch:',40),
(321,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',40),
(322,'','Chuyá»ƒn bÃ i hÃ¡t, Mic thoáº¡iNghe/nháº­n cuá»™c gá»i, PhÃ¡t/dá»«ng chÆ¡i nháº¡c, TÄƒng/giáº£m Ã¢m lÆ°á»£ng','PhÃ­m Ä‘iá»u khiá»ƒn:',40),
(323,'','Kanen','HÃ£ng',40),
(324,'Lá»›p Ä‘á»‡m tai Ãªm vÃ  dÃ y, giÃºp Ä‘eo tai thoáº£i mÃ¡i vÃ  háº¡n cháº¿ bá»‹ rÃ¡ch.\nCÃ³ thá»ƒ kÃ©o dÃ£n tai nghe 4 cm Ä‘á»ƒ vá»«a váº·n hÆ¡n khi sá»­ dá»¥ng.\nTÆ°Æ¡ng thÃ­ch vá»›i háº§u háº¿t Ä‘iá»‡n thoáº¡i hiá»‡n nay.\nDÃ¢y dÃ i lÃªn Ä‘áº¿n 150 cm thoáº£i mÃ¡i Ä‘á»ƒ vá»«a dÃ¹ng mÃ¡y vá»«a nghe nháº¡c.','','',40),
(325,'','3.5 mm','Jack cáº¯m:',41),
(326,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',41),
(327,'','CÃ³ mic thoáº¡i','Tiá»‡n Ã­ch:',41),
(328,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',41),
(329,'','Chuyá»ƒn bÃ i hÃ¡t, Mic thoáº¡iNghe/nháº­n cuá»™c gá»i, PhÃ¡t/dá»«ng chÆ¡i nháº¡c, TÄƒng/giáº£m Ã¢m lÆ°á»£ng','PhÃ­m Ä‘iá»u khiá»ƒn:',41),
(330,'','Kanen','HÃ£ng',41),
(331,'CÃ³ thá»ƒ gáº¥p gá»n khi muá»‘n cho vÃ o trong balo.\nLá»›p Ä‘á»‡m tai Ãªm vÃ  dÃ y, giÃºp Ä‘eo tai thoáº£i mÃ¡i vÃ  háº¡n cháº¿ bá»‹ rÃ¡ch.\nCÃ³ thá»ƒ kÃ©o dÃ£n tai nghe 3 cm Ä‘á»ƒ vá»«a váº·n hÆ¡n khi sá»­ dá»¥ng.\nTÆ°Æ¡ng thÃ­ch vá»›i háº§u háº¿t Ä‘iá»‡n thoáº¡i hiá»‡n nay.\nCÃ³ nÃºt nháº­n cuá»™c gá»i, phÃ¡t/dá»«ng chÆ¡i nháº¡c, tÄƒng giáº£m Ã¢m lÆ°á»£ng.\nDÃ¢y dÃ i lÃªn Ä‘áº¿n 1.5 m thoáº£i mÃ¡i Ä‘á»ƒ vá»«a dÃ¹ng mÃ¡y vá»«a nghe nháº¡c.','','',41),
(332,'','3.5 mm','Jack cáº¯m:',42),
(333,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',42),
(334,'','CÃ³ mic thoáº¡i, Äá»‡m tai Ä‘i kÃ¨m, Tai nghe nhÃ©t tai','Tiá»‡n Ã­ch:',42),
(335,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',42),
(336,'','Chuyá»ƒn bÃ i hÃ¡t, Mic thoáº¡iNghe/nháº­n cuá»™c gá»i, PhÃ¡t/dá»«ng chÆ¡i nháº¡c, TÄƒng/giáº£m Ã¢m lÆ°á»£ng','PhÃ­m Ä‘iá»u khiá»ƒn:',42),
(337,'','Kanen','HÃ£ng',42),
(338,'Thiáº¿t káº¿ sang trá»ng, mÃ u sáº¯c thá»i trang, dÃ¢y 1.2 m dáº¹t chá»‘ng rá»‘i. \nÄá»‡m tai Ãªm Ã¡i, cÃ³ 3 cáº·p dá»… lá»±a chá»n Ä‘eo vá»«a váº·n.\nCÃ³ mic thoáº¡i, nÃºt báº¥m Ä‘á»ƒ nghe/nháº­n cuá»™c gá»i, phÃ¡t/dá»«ng chÆ¡i nháº¡c, tÄƒng/giáº£m Ã¢m lÆ°á»£ng.\nTrang bá»‹ jack cáº¯m 3.5 mm phá»‘i ghÃ©p Ä‘Æ°á»£c vá»›i nhiá»u Ä‘iá»‡n thoáº¡i, mÃ¡y tÃ­nh báº£ng.','','',42),
(339,'','3.5 mm','Jack cáº¯m:',43),
(340,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',43),
(341,'','CÃ³ mic thoáº¡i, Äá»‡m tai Ä‘i kÃ¨m, Tai nghe nhÃ©t tai','Tiá»‡n Ã­ch:',43),
(342,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',43),
(343,'','Chuyá»ƒn bÃ i hÃ¡t, Mic thoáº¡iNghe/nháº­n cuá»™c gá»i, PhÃ¡t/dá»«ng chÆ¡i nháº¡c, TÄƒng/giáº£m Ã¢m lÆ°á»£ng','PhÃ­m Ä‘iá»u khiá»ƒn:',43),
(344,'','Kanen','HÃ£ng',43),
(345,'Thiáº¿t káº¿ báº¯t máº¯t, dÃ¢y dáº¹t chá»‘ng xoáº¯n rá»‘i, dÃ i 1.2 m.\nKáº¿t ná»‘i Ä‘Æ°á»£c vá»›i nhiá»u thiáº¿t bá»‹ cÃ³ tÃ­ch há»£p cá»•ng 3.5mm.\nMic thoáº¡i cho Ã¢m thanh trong tráº»o, rÃµ nÃ©t.\nCÃ³ nÃºt nháº¥n - nÃºt gáº¡t Ä‘iá»u chá»‰nh tÄƒng/giáº£m Ã¢m lÆ°á»£ng, ngá»«ng/chÆ¡i nháº¡c, chuyá»ƒn bÃ i, nháº­n cuá»™c gá»i tiá»‡n lá»£i.\nThiáº¿t káº¿ mÃ³c tai Ä‘áº£m báº£o Ä‘eo tai nghe cháº¯c cháº¯n hÆ¡n.','','',43),
(346,'','3.5 mm','Jack cáº¯m:',44),
(347,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',44),
(348,'','CÃ³ mic thoáº¡i, Äá»‡m tai Ä‘i kÃ¨m, Tai nghe nhÃ©t tai','Tiá»‡n Ã­ch:',44),
(349,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',44),
(350,'','Nghe/nháº­n cuá»™c gá»i, PhÃ¡t/dá»«ng chÆ¡i nháº¡c, TÄƒng/giáº£m Ã¢m lÆ°á»£ng','PhÃ­m Ä‘iá»u khiá»ƒn:',44),
(351,'','Awei','HÃ£ng',44),
(352,'Thiáº¿t káº¿ gá»n nháº¹, dÃ¢y dÃ i 124 cm.\nDáº¡ng tai nghe nÃºt cho kháº£ nÄƒng cÃ¡ch Ã¢m tá»‘t.\nJack cáº¯m 3.5 mm tÆ°Æ¡ng thÃ­ch vá»›i nhiá»u thiáº¿t bá»‹.\nTÃ­ch há»£p mic thoáº¡i, nÃºt cÃ´ng táº¯c Ä‘á»ƒ nháº­n cuá»™c gá»i, dá»«ng/phÃ¡t chÆ¡i nháº¡c, tÄƒng/giáº£m Ã¢m lÆ°á»£ng.','','',44),
(353,'','3.5 mm','Jack cáº¯m:',45),
(354,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',45),
(355,'','CÃ³ mic thoáº¡i, Äá»‡m tai Ä‘i kÃ¨m, Tai nghe nhÃ©t tai','Tiá»‡n Ã­ch:',45),
(356,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',45),
(357,'','Nghe/nháº­n cuá»™c gá»i, PhÃ¡t/dá»«ng chÆ¡i nháº¡c, TÄƒng/giáº£m Ã¢m lÆ°á»£ng','PhÃ­m Ä‘iá»u khiá»ƒn:',45),
(358,'','Awei','HÃ£ng',45),
(359,'Thiáº¿t káº¿ nhá» gá»n, dá»… mang theo, cÃ³ dÃ¢y dÃ i 134 cm.\nÄá»‡m tai cao su cÃ¡ch Ã¢m tá»‘t, cho Ã¢m thanh rÃµ rÃ ng. \nJack 3.5mm dáº¡ng chá»¯ L chá»‹u lá»±c, káº¿t ná»‘i Ä‘Æ°á»£c nhiá»u thiáº¿t bá»‹.\nTrang bá»‹ mic thoáº¡i, dá»… dÃ ng nháº­n cuá»™c gá»i, tÄƒng/giáº£m Ã¢m lÆ°á»£ng, dá»«ng/phÃ¡t nháº¡c qua nÃºt báº¥m.','','',45),
(360,'','3.5 mm','Jack cáº¯m:',46),
(361,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',46),
(362,'','CÃ³ mic thoáº¡i, Äá»‡m tai Ä‘i kÃ¨m, Tai nghe nhÃ©t tai','Tiá»‡n Ã­ch:',46),
(363,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',46),
(364,'','Nghe/nháº­n cuá»™c gá»i, PhÃ¡t/dá»«ng chÆ¡i nháº¡c, TÄƒng/giáº£m Ã¢m lÆ°á»£ng','PhÃ­m Ä‘iá»u khiá»ƒn:',46),
(365,'','Awei','HÃ£ng',46),
(366,'Thiáº¿t káº¿ thá»i trang, nhá» gá»n, dá»… dÃ ng mang theo.\nCÃ³ jack cáº¯m 3.5mm, tÆ°Æ¡ng thÃ­ch vá»›i nhiá»u thiáº¿t bá»‹.\nCÃ³ Ä‘á»‡m tai cao su cho cáº£m giÃ¡c dá»… chá»‹u, háº¡n cháº¿ tiáº¿ng á»“n vÃ  cÃ³ Ã¢m thanh ra tá»‘t.\nNÃºt Ä‘iá»u khiá»ƒn trÃªn tai nghe tiá»‡n lá»£i.','','',46),
(367,'','3.5 mm','Jack cáº¯m:',47),
(368,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',47),
(369,'','CÃ³ mic thoáº¡i, Äá»‡m tai Ä‘i kÃ¨m, Tai nghe nhÃ©t tai','Tiá»‡n Ã­ch:',47),
(370,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',47),
(371,'','Nghe/nháº­n cuá»™c gá»i, PhÃ¡t/dá»«ng chÆ¡i nháº¡c, TÄƒng/giáº£m Ã¢m lÆ°á»£ng','PhÃ­m Ä‘iá»u khiá»ƒn:',47),
(372,'','Awei','HÃ£ng',47),
(373,'Thiáº¿t káº¿ Ä‘áº¹p máº¯t, trá»ng lÆ°á»£ng nháº¹, dÃ¢y dÃ i 1.34 m.\nÄá»‡m tai báº±ng cao su chá»‘ng á»“n, Ä‘eo thoáº£i mÃ¡i.\nKáº¿t há»£p Ä‘Æ°á»£c vá»›i cÃ¡c mÃ¡y cá»•ng 3.5 mm.\nCÃ³ nÃºt nháº¥n tiá»‡n nháº­n cuá»™c gá»i, tÄƒng giáº£m Ã¢m lÆ°á»£ng, dá»«ng/phÃ¡t nháº¡c.','','',47),
(374,'','3.5 mm','Jack cáº¯m:',48),
(375,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',48),
(376,'','CÃ³ mic thoáº¡i, Äá»‡m tai Ä‘i kÃ¨m, Tai nghe nhÃ©t tai','Tiá»‡n Ã­ch:',48),
(377,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',48),
(378,'','Nghe/nháº­n cuá»™c gá»i, PhÃ¡t/dá»«ng chÆ¡i nháº¡c, TÄƒng/giáº£m Ã¢m lÆ°á»£ng','PhÃ­m Ä‘iá»u khiá»ƒn:',48),
(379,'','Awei','HÃ£ng',48),
(380,'Kiá»ƒu dÃ¡ng Ä‘Æ¡n giáº£n, mÃ u Ä‘en vÃ  báº¡c sÃ nh Ä‘iá»‡u.\nHá»— trá»£ mic thoáº¡i, Ã¢m thanh sá»‘ng Ä‘á»™ng, khÃ´ng bá»‹ vá»¡ tiáº¿ng.\nJack 3.5 mm thÃ´ng dá»¥ng, chiá»u dÃ i dÃ¢y Ä‘áº¿n 1.2 m.\nCÃ³ nÃºt chá»‰nh nháº­n cuá»™c gá»i, tÄƒng/giáº£m Ã¢m lÆ°á»£ng, chuyá»ƒn bÃ i, ngá»«ng/chÆ¡i nháº¡c,....','','',48),
(381,'','3.5 mm','Jack cáº¯m:',49),
(382,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',49),
(383,'','CÃ³ mic thoáº¡i, Äá»‡m tai Ä‘i kÃ¨m, Tai nghe nhÃ©t tai','Tiá»‡n Ã­ch:',49),
(384,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',49),
(385,'','Nghe/nháº­n cuá»™c gá»i, PhÃ¡t/dá»«ng chÆ¡i nháº¡c, TÄƒng/giáº£m Ã¢m lÆ°á»£ng','PhÃ­m Ä‘iá»u khiá»ƒn:',49),
(386,'','Awei','HÃ£ng',49),
(387,'TÆ°Æ¡ng thÃ­ch tá»‘t vá»›i nhiá»u dÃ²ng Ä‘iá»‡n thoáº¡i.\nTai nghe dáº¡ng nÃºt giÃºp cÃ¡ch Ã¢m tá»‘t vá»›i bÃªn ngoÃ i.\nCÃ³ nÃºt áº¥n nháº­n cuá»™c gá»i, ngá»«ng/chÆ¡i nháº¡c, chuyá»ƒn bÃ i hÃ¡t.\nDÃ¢y dÃ i 120 cm thoáº£i mÃ¡i Ä‘á»ƒ vá»«a dÃ¹ng mÃ¡y vá»«a nghe nháº¡c.','','',49),
(388,'','3.5 mm','Jack cáº¯m:',50),
(389,'','Android, iOS (iPhone), Windows','TÆ°Æ¡ng thÃ­ch:',50),
(390,'','CÃ³ mic thoáº¡i, Äá»‡m tai Ä‘i kÃ¨m, Tai nghe nhÃ©t tai','Tiá»‡n Ã­ch:',50),
(391,'','PhÃ­m nháº¥n','Äiá»u khiá»ƒn báº±ng:',50),
(392,'','Nghe/nháº­n cuá»™c gá»i, PhÃ¡t/dá»«ng chÆ¡i nháº¡c, TÄƒng/giáº£m Ã¢m lÆ°á»£ng','PhÃ­m Ä‘iá»u khiá»ƒn:',50),
(393,'','Awei','HÃ£ng',50),
(394,'CÃ³ nÃºt chá»‰nh tÆ°Æ¡ng thÃ­ch vá»›i cÃ¡c dÃ²ng Ä‘iá»‡n thoáº¡i khÃ¡c nhau.\nTai nghe dáº¡ng nÃºt giÃºp cÃ¡ch Ã¢m tá»‘t vá»›i bÃªn ngoÃ i.\nCÃ³ nÃºt áº¥n nháº­n cuá»™c gá»i, ngá»«ng/chÆ¡i nháº¡c.\nDÃ¢y dÃ i 120 cm thoáº£i mÃ¡i Ä‘á»ƒ vá»«a dÃ¹ng mÃ¡y vá»«a nghe nháº¡c.','','',50);
/*!40000 ALTER TABLE `product_desc` ENABLE KEYS */;
UNLOCK TABLES;














LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,1,'./assets/imgs/Apple/1/0.jpg'),(2,1,'./assets/imgs/Apple/1/1.jpg'),(3,1,'./assets/imgs/Apple/1/2.jpg'),(4,1,'./assets/imgs/Apple/1/3.jpg'),(5,1,'./assets/imgs/Apple/1/4.jpg'),(6,2,'./assets/imgs/Apple/2/0.jpg'),(7,2,'./assets/imgs/Apple/2/1.jpg'),(8,2,'./assets/imgs/Apple/2/2.jpg'),(9,2,'./assets/imgs/Apple/2/3.jpg'),(10,3,'./assets/imgs/Apple/3/0.jpg'),(11,3,'./assets/imgs/Apple/3/1.jpg'),(12,3,'./assets/imgs/Apple/3/2.jpg'),(13,3,'./assets/imgs/Apple/3/3.jpg'),(14,4,'./assets/imgs/Apple/4/0.jpg'),(15,4,'./assets/imgs/Apple/4/1.jpg'),(16,4,'./assets/imgs/Apple/4/2.jpg'),(17,4,'./assets/imgs/Apple/4/3.jpg'),(18,5,'./assets/imgs/Samsung/1/0.jpg'),(19,5,'./assets/imgs/Samsung/1/1.jpg'),(20,5,'./assets/imgs/Samsung/1/2.jpg'),(21,5,'./assets/imgs/Samsung/1/3.jpg'),(22,6,'./assets/imgs/Samsung/2/0.jpg'),(23,6,'./assets/imgs/Samsung/2/1.jpg'),(24,6,'./assets/imgs/Samsung/2/2.jpg'),(25,6,'./assets/imgs/Samsung/2/3.jpg'),(26,7,'./assets/imgs/Samsung/3/0.jpg'),(27,7,'./assets/imgs/Samsung/3/1.jpg'),(28,7,'./assets/imgs/Samsung/3/2.jpg'),(29,7,'./assets/imgs/Samsung/3/3.jpg'),(30,8,'./assets/imgs/Samsung/4/0.jpg'),(31,8,'./assets/imgs/Samsung/4/1.jpg'),(32,8,'./assets/imgs/Samsung/4/2.jpg'),(33,8,'./assets/imgs/Samsung/4/3.jpg'),(34,9,'./assets/imgs/Samsung/5/0.jpg'),(35,9,'./assets/imgs/Samsung/5/1.jpg'),(36,9,'./assets/imgs/Samsung/5/2.jpg'),(37,9,'./assets/imgs/Samsung/5/3.jpg'),(38,10,'./assets/imgs/Samsung/6/0.jpg'),(39,10,'./assets/imgs/Samsung/6/1.jpg'),(40,10,'./assets/imgs/Samsung/6/2.jpg'),(41,10,'./assets/imgs/Samsung/6/3.jpg'),(42,11,'./assets/imgs/Sony/1/0.jpg'),(43,11,'./assets/imgs/Sony/1/1.jpg'),(44,11,'./assets/imgs/Sony/1/2.jpg'),(45,11,'./assets/imgs/Sony/1/3.jpg'),(46,12,'./assets/imgs/Sony/2/0.jpg'),(47,12,'./assets/imgs/Sony/2/1.jpg'),(48,12,'./assets/imgs/Sony/2/2.jpg'),(49,12,'./assets/imgs/Sony/2/3.jpg'),(50,13,'./assets/imgs/Sony/3/0.jpg'),(51,13,'./assets/imgs/Sony/3/1.jpg'),(52,13,'./assets/imgs/Sony/3/2.jpg'),(53,13,'./assets/imgs/Sony/3/3.jpg'),(54,14,'./assets/imgs/Sony/4/0.jpg'),(55,14,'./assets/imgs/Sony/4/1.jpg'),(56,14,'./assets/imgs/Sony/4/2.jpg'),(57,14,'./assets/imgs/Sony/4/3.jpg'),(58,15,'./assets/imgs/Sony/5/0.jpg'),(59,15,'./assets/imgs/Sony/5/1.jpg'),(60,15,'./assets/imgs/Sony/5/2.jpg'),(61,15,'./assets/imgs/Sony/5/3.jpg'),(62,16,'./assets/imgs/Sony/6/0.jpg'),(63,16,'./assets/imgs/Sony/6/1.jpg'),(64,16,'./assets/imgs/Sony/6/2.jpg'),(65,16,'./assets/imgs/Sony/6/3.jpg'),(66,17,'./assets/imgs/Sony/7/0.jpg'),(67,17,'./assets/imgs/Sony/7/1.jpg'),(68,17,'./assets/imgs/Sony/7/2.jpg'),(69,17,'./assets/imgs/Sony/7/3.jpg'),(70,18,'./assets/imgs/Sony/8/0.jpg'),(71,18,'./assets/imgs/Sony/8/1.jpg'),(72,18,'./assets/imgs/Sony/8/2.jpg'),(73,18,'./assets/imgs/Sony/8/3.jpg'),(74,19,'./assets/imgs/Sony/10/0.jpg'),(75,19,'./assets/imgs/Sony/10/1.jpg'),(76,19,'./assets/imgs/Sony/10/2.jpg'),(77,19,'./assets/imgs/Sony/10/3.jpg'),(78,20,'./assets/imgs/Beats/1/0.jpg'),(79,20,'./assets/imgs/Beats/1/1.jpg'),(80,20,'./assets/imgs/Beats/1/2.jpg'),(81,20,'./assets/imgs/Beats/1/3.jpg'),(82,21,'./assets/imgs/Beats/2/0.jpg'),(83,21,'./assets/imgs/Beats/2/1.jpg'),(84,21,'./assets/imgs/Beats/2/2.jpg'),(85,21,'./assets/imgs/Beats/2/3.jpg'),(86,22,'./assets/imgs/Beats/3/0.jpg'),(87,22,'./assets/imgs/Beats/3/1.jpg'),(88,22,'./assets/imgs/Beats/3/2.jpg'),(89,22,'./assets/imgs/Beats/3/3.jpg'),(90,23,'./assets/imgs/Beats/4/0.jpg'),(91,23,'./assets/imgs/Beats/4/1.jpg'),(92,23,'./assets/imgs/Beats/4/2.jpg'),(93,23,'./assets/imgs/Beats/4/3.jpg'),(94,24,'./assets/imgs/Beats/5/0.jpg'),(95,24,'./assets/imgs/Beats/5/1.jpg'),(96,24,'./assets/imgs/Beats/5/2.jpg'),(97,24,'./assets/imgs/Beats/5/3.jpg'),(98,25,'./assets/imgs/Beats/6/0.jpg'),(99,25,'./assets/imgs/Beats/6/1.jpg'),(100,25,'./assets/imgs/Beats/6/2.jpg'),(101,25,'./assets/imgs/Beats/6/3.jpg'),(102,26,'./assets/imgs/JBL/1/0.jpg'),(103,26,'./assets/imgs/JBL/1/1.jpg'),(104,26,'./assets/imgs/JBL/1/2.jpg'),(105,26,'./assets/imgs/JBL/1/3.jpg'),(106,27,'./assets/imgs/JBL/2/0.jpg'),(107,27,'./assets/imgs/JBL/2/1.jpg'),(108,27,'./assets/imgs/JBL/2/2.jpg'),(109,27,'./assets/imgs/JBL/2/3.jpg'),(110,28,'./assets/imgs/JBL/3/0.jpg'),(111,28,'./assets/imgs/JBL/3/1.jpg'),(112,28,'./assets/imgs/JBL/3/2.jpg'),(113,28,'./assets/imgs/JBL/3/3.jpg'),(114,29,'./assets/imgs/JBL/4/0.jpg'),(115,29,'./assets/imgs/JBL/4/1.jpg'),(116,29,'./assets/imgs/JBL/4/2.jpg'),(117,29,'./assets/imgs/JBL/4/3.jpg'),(118,30,'./assets/imgs/JBL/5/0.jpg'),(119,30,'./assets/imgs/JBL/5/1.jpg'),(120,30,'./assets/imgs/JBL/5/2.jpg'),(121,30,'./assets/imgs/JBL/5/3.jpg'),(122,31,'./assets/imgs/JBL/6/0.jpg'),(123,31,'./assets/imgs/JBL/6/1.jpg'),(124,31,'./assets/imgs/JBL/6/2.jpg'),(125,31,'./assets/imgs/JBL/6/3.jpg'),(126,32,'./assets/imgs/Xiaomi/1/0.jpg'),(127,32,'./assets/imgs/Xiaomi/1/1.jpg'),(128,32,'./assets/imgs/Xiaomi/1/2.jpg'),(129,32,'./assets/imgs/Xiaomi/1/3.jpg'),(130,33,'./assets/imgs/Xiaomi/2/0.jpg'),(131,33,'./assets/imgs/Xiaomi/2/1.jpg'),(132,33,'./assets/imgs/Xiaomi/2/2.jpg'),(133,33,'./assets/imgs/Xiaomi/2/3.jpg'),(134,34,'./assets/imgs/Xiaomi/3/0.jpg'),(135,34,'./assets/imgs/Xiaomi/3/1.jpg'),(136,34,'./assets/imgs/Xiaomi/3/2.jpg'),(137,34,'./assets/imgs/Xiaomi/3/3.jpg'),(138,35,'./assets/imgs/LG/1/0.jpg'),(139,35,'./assets/imgs/LG/1/1.jpg'),(140,35,'./assets/imgs/LG/1/2.jpg'),(141,35,'./assets/imgs/LG/1/3.jpg'),(142,36,'./assets/imgs/LG/2/0.jpg'),(143,36,'./assets/imgs/LG/2/1.jpg'),(144,36,'./assets/imgs/LG/2/2.jpg'),(145,36,'./assets/imgs/LG/2/3.jpg'),(146,37,'./assets/imgs/LG/3/0.jpg'),(147,37,'./assets/imgs/LG/3/1.jpg'),(148,37,'./assets/imgs/LG/3/2.jpg'),(149,37,'./assets/imgs/LG/3/3.jpg'),(150,38,'./assets/imgs/Kanen/1/0.jpg'),(151,38,'./assets/imgs/Kanen/1/1.jpg'),(152,38,'./assets/imgs/Kanen/1/2.jpg'),(153,38,'./assets/imgs/Kanen/1/3.jpg'),(154,39,'./assets/imgs/Kanen/2/0.jpg'),(155,39,'./assets/imgs/Kanen/2/1.jpg'),(156,39,'./assets/imgs/Kanen/2/2.jpg'),(157,39,'./assets/imgs/Kanen/2/3.jpg'),(158,40,'./assets/imgs/Kanen/3/0.jpg'),(159,40,'./assets/imgs/Kanen/3/1.jpg'),(160,40,'./assets/imgs/Kanen/3/2.jpg'),(161,40,'./assets/imgs/Kanen/3/3.jpg'),(162,41,'./assets/imgs/Kanen/4/0.jpg'),(163,41,'./assets/imgs/Kanen/4/1.jpg'),(164,41,'./assets/imgs/Kanen/4/2.jpg'),(165,41,'./assets/imgs/Kanen/4/3.jpg'),(166,42,'./assets/imgs/Kanen/5/0.jpg'),(167,42,'./assets/imgs/Kanen/5/1.jpg'),(168,42,'./assets/imgs/Kanen/5/2.jpg'),(169,42,'./assets/imgs/Kanen/5/3.jpg'),(170,43,'./assets/imgs/Kanen/6/0.jpg'),(171,43,'./assets/imgs/Kanen/6/1.jpg'),(172,43,'./assets/imgs/Kanen/6/2.jpg'),(173,43,'./assets/imgs/Kanen/6/3.jpg'),(174,44,'./assets/imgs/Awei/1/0.jpg'),(175,44,'./assets/imgs/Awei/1/1.jpg'),(176,44,'./assets/imgs/Awei/1/2.jpg'),(177,44,'./assets/imgs/Awei/1/3.jpg'),(178,45,'./assets/imgs/Awei/2/0.jpg'),(179,45,'./assets/imgs/Awei/2/1.jpg'),(180,45,'./assets/imgs/Awei/2/2.jpg'),(181,45,'./assets/imgs/Awei/2/3.jpg'),(182,46,'./assets/imgs/Awei/3/0.jpg'),(183,46,'./assets/imgs/Awei/3/1.jpg'),(184,46,'./assets/imgs/Awei/3/2.jpg'),(185,46,'./assets/imgs/Awei/3/3.jpg'),(186,47,'./assets/imgs/Awei/4/0.jpg'),(187,47,'./assets/imgs/Awei/4/1.jpg'),(188,47,'./assets/imgs/Awei/4/2.jpg'),(189,47,'./assets/imgs/Awei/4/3.jpg'),(190,48,'./assets/imgs/Awei/5/0.jpg'),(191,48,'./assets/imgs/Awei/5/1.jpg'),(192,48,'./assets/imgs/Awei/5/2.jpg'),(193,48,'./assets/imgs/Awei/5/3.jpg'),(194,49,'./assets/imgs/Awei/6/0.jpg'),(195,49,'./assets/imgs/Awei/6/1.jpg'),(196,49,'./assets/imgs/Awei/6/2.jpg'),(197,49,'./assets/imgs/Awei/6/3.jpg'),(198,50,'./assets/imgs/Awei/7/0.jpg'),(199,50,'./assets/imgs/Awei/7/1.jpg'),(200,50,'./assets/imgs/Awei/7/2.jpg'),(201,50,'./assets/imgs/Awei/7/3.jpg');
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;



LOCK TABLES `lineitem` WRITE;
/*!40000 ALTER TABLE `lineitem` DISABLE KEYS */;
INSERT INTO `lineitem` VALUES (1,1,31,1),(43,1,8,3),(44,2,8,4),(45,1,8,1),(46,3,8,33),(47,1,33,1),(48,1,33,3),(49,1,34,1),(50,1,34,32),(51,10,35,9),(52,1,35,6),(53,1,36,22),(54,1,37,35),(57,3,38,3),(59,1,13,1),(60,1,13,7),(61,1,39,1),(62,1,40,1),(63,10,38,8),(64,1,38,9),(65,1,38,1),(66,1,38,2),(67,1,42,1),(68,1,41,1),(69,1,41,2),(70,1,43,1),(71,1,9,1),(72,1,9,2),(73,1,9,5),(74,1,44,1),(75,1,44,3),(76,1,10,1),(77,1,10,2),(78,1,11,2),(79,1,11,1),(80,9,47,1),(81,5,43,10),(82,1,46,50),(83,1,47,2),(84,1,49,2);
/*!40000 ALTER TABLE `lineitem` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'9.5 Ä‘iá»ƒm, mua Ä‘i cÃ¡c homie','2021-11-08 06:10:20.000000',8,1),(6,'Tai nghe Ã¢m cá»±c Ä‘áº§m quáº©y vinahouse lÃ  sá»‘ dÃ¡ch','2021-11-08 06:10:20.000000',9,1),(14,'Buá»“n láº¯m em Æ¡i','2021-11-08 06:10:20.000000',10,1),(18,'ÄÃ¡nh giÃ¡ cho cÃ³','2021-11-08 21:12:20.461000',10,1),(23,'Buá»“n láº¯m em Æ¡i','2021-11-08 22:10:49.221000',8,32),(24,'Mua Ä‘Ãª Ä‘áº¡i háº¡ giÃ¡ nÃ¨','2021-11-08 22:11:04.661000',8,9),(25,'hÃº hÃº hÃº hÃº','2021-11-08 22:12:16.539000',8,22),(26,'áº¾ quÃ¡ máº¥y anh Æ¡i mua á»§ng há»™ em','2021-11-08 22:13:07.839000',8,2),(27,'Mua Ä‘Ãª mua Ä‘Ãª mua vá» combat cÄƒng cá»±c nÃ¨','2021-11-08 22:13:45.930000',13,2),(28,'Solo yasuo Ä‘Ãª','2021-11-08 22:14:32.027000',11,2),(29,'Mua Ä‘i cÃ²n cháº§n chá» chi','2021-11-10 16:38:24.773000',13,7),(30,'Tai nghe Ã¢m cá»±c Ä‘áº§m quáº©y vinahouse lÃ  sá»‘ dÃ¡ch','2021-11-11 16:42:31.261000',10,50);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (1,'2021-11-07 21:19:05.786000',8,34),(2,'2021-11-07 21:44:02.448000',8,35),(3,'2021-11-07 21:48:15.677000',8,36),(4,'2021-11-07 21:51:44.394000',8,37),(5,'2021-11-07 22:48:17.543000',13,13),(6,'2021-11-07 22:50:35.353000',13,39),(7,'2021-11-07 22:56:24.379000',13,40),(8,'2021-11-08 16:30:13.027000',8,38),(9,'2021-11-08 16:31:32.057000',13,41),(10,'2021-11-08 16:41:36.871000',9,9),(11,'2021-11-08 16:47:27.377000',9,44),(12,'2021-11-08 20:48:40.675000',10,10),(13,'2021-11-08 22:14:11.147000',11,11),(14,'2021-11-11 16:41:53.672000',10,46),(15,'2021-11-11 16:56:38.627000',11,47);
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;



