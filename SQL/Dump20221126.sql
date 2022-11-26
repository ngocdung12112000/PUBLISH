-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: elearning
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `bought_course`
--

DROP TABLE IF EXISTS `bought_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bought_course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` char(36) DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AVG_ROW_LENGTH=1170 COMMENT='Khóa học đã sở hữu';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bought_course`
--

LOCK TABLES `bought_course` WRITE;
/*!40000 ALTER TABLE `bought_course` DISABLE KEYS */;
INSERT INTO `bought_course` VALUES (1,'4760d71f-6e2f-5b32-19cb-66948daf6128',1),(2,'4760d71f-6e2f-5b32-19cb-66948daf6128',2),(3,'4760d71f-6e2f-5b32-19cb-66948daf6128',3),(4,'4760d71f-6e2f-5b32-19cb-66948daf6128',4),(5,'4d7b21db-2e02-12b7-a9db-e5d54223c257',1),(6,'4d7b21db-2e02-12b7-a9db-e5d54223c257',2),(7,'4d7b21db-2e02-12b7-a9db-e5d54223c257',3),(12,'4d7b21db-2e02-12b7-a9db-e5d54223c257',4),(13,'4d7b21db-2e02-12b7-a9db-e5d54223c257',10),(24,'47f60f67-6087-2a86-abdb-e5d54223c257',1),(25,'47f60f67-6087-2a86-abdb-e5d54223c257',2),(26,'4d79d901-1edc-5c5b-0780-e8e2a817c80e',1),(27,'4d79d901-1edc-5c5b-0780-e8e2a817c80e',2),(28,'4d79d901-1edc-5c5b-0780-e8e2a817c80e',3),(29,'4d79d901-1edc-5c5b-0780-e8e2a817c80e',4);
/*!40000 ALTER TABLE `bought_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL,
  `created_date` date DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_cart_user_id` (`user_id`),
  CONSTRAINT `FK_cart_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AVG_ROW_LENGTH=4096;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'2022-10-15','4760d71f-6e2f-5b32-19cb-66948daf6128'),(2,'2022-10-15','47f60f67-6087-2a86-abdb-e5d54223c257'),(3,'2022-10-15','4d7b21db-2e02-12b7-a9db-e5d54223c257'),(4,'2022-10-15','5660d465-6020-48f3-75dd-867949feb8b5'),(5,'2022-11-11','4d79d901-1edc-5c5b-0780-e8e2a817c80e'),(6,'2022-11-26','9825d59c-eb45-4b79-93da-044d3b06ce45'),(7,'2022-11-26','3a677296-2112-4a2f-9d79-6699ef6fde74');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cart_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_cart_item_cart_id` (`cart_id`),
  KEY `FK_cart_item_course_id` (`course_id`),
  CONSTRAINT `FK_cart_item_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  CONSTRAINT `FK_cart_item_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AVG_ROW_LENGTH=2730;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item`
--

LOCK TABLES `cart_item` WRITE;
/*!40000 ALTER TABLE `cart_item` DISABLE KEYS */;
INSERT INTO `cart_item` VALUES (3,1,1),(4,1,2),(5,1,3),(21,3,5),(28,2,3),(29,2,4),(34,2,7);
/*!40000 ALTER TABLE `cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AVG_ROW_LENGTH=2730;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Học Tiếng anh theo chủ đề'),(2,'Tiếng Anh giao tiếp'),(3,'IELTS'),(4,'Tiếng Anh Thương Mại'),(5,'Phát Âm Tiếng Anh'),(6,'Toeic');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(19,4) DEFAULT NULL,
  `discount` decimal(10,0) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `teacher_id` int DEFAULT NULL,
  `exam_id` int DEFAULT NULL,
  `image` text,
  `description` text,
  `created_date` date DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_course_category_id` (`category_id`),
  KEY `FK_course_teacher_id` (`teacher_id`),
  CONSTRAINT `FK_course_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FK_course_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AVG_ROW_LENGTH=1694;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Học tiếng Anh theo chủ đề: Food and drink',50000.0000,10,1,1,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F5a7a63749f7bfc459700033e%252Fproduct%252F600105ab44d203002598bdbe&w=1920&q=50',' ','2022-09-13','2022-09-15'),(2,'Học tiếng Anh theo chủ đề: Health',50000.0000,10,1,2,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F5a7a63749f7bfc459700033e%252Fproduct%252F6001826244d203002598c16c&w=1920&q=50',' ','2022-09-17','2022-09-19'),(3,'Học tiếng Anh theo chủ đề: Weather',50000.0000,10,1,3,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F5a7a63749f7bfc459700033e%252Fproduct%252F600108ba44d203002598bddd&w=1920&q=50',' ','2022-08-12','2022-08-14'),(4,'Học tiếng Anh theo chủ đề: Children',50000.0000,10,1,4,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F5a7a63749f7bfc459700033e%252Fproduct%252F60017c8f44d203002598c15e&w=1920&q=50',' ','2022-10-04','2022-10-06'),(5,'Học tiếng Anh theo chủ đề: Daily life',50000.0000,10,1,5,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F5a7a63749f7bfc459700033e%252Fproduct%252F600107ea44d203002598bdd5&w=1920&q=50',' ','2022-10-16','2022-10-18'),(6,'Học tiếng Anh theo chủ đề: Festival and Noel',50000.0000,10,1,6,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F5a7a63749f7bfc459700033e%252Fproduct%252F60016c2444d203002598c0cf&w=1080&q=50',' ','2022-11-01','2022-11-03'),(7,'Học tiếng Anh theo chủ đề: At the workplace',50000.0000,10,1,1,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F5a7a63749f7bfc459700033e%252Fproduct%252F600182ea44d203002598c171&w=1920&q=50',' ','2022-08-21','2022-08-23'),(8,'Tiếng Anh giao tiếp cho người bắt đầu',350000.0000,10,2,7,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F191ab4fd-9c62-4494-b209-51f86a3924d3%252Fproduct%252F6076602d31b9ae0024d5da96&w=1080&q=50','Vốn tiếng Anh của bạn còn hạn chế? Bạn mong muốn thay đổi khả năng giao tiếp của mình nhưng chưa biết phải bắt đầu từ đâu? Khóa học này là lựa chọn hoàn hảo giúp bạn cải thiện vốn tiếng Anh nghèo nàn, khả năng giao tiếp hạn chế của mình. Trò chuyện thoải mái với người nước ngoài không chỉ giúp bạn cải thiện khả năng ngôn ngữ mà còn là chìa khóa giúp bạn gây thiện cảm với các đối tác nước ngoài,bước đệm thành công trên con đường phát triển sự nghiệp. Khóa học với những bài giảng chi tiết, cung cấp cho bạn những kiến thức, những tình huống giao tiếp cụ thể, những hướng dẫn để bạn có thể vận dụng trong các tình huống thực tế..','2022-10-31','2022-11-02'),(9,'Tiếng Anh giao tiếp khi đi mua sắm',600000.0000,45,2,8,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F191ab4fd-9c62-4494-b209-51f86a3924d3%252Fproduct%252F613dfb3ee9404100256a4ee3&w=1920&q=50','Mô tả về khóa học','2022-10-05','2022-10-07'),(10,'Tiếng Anh giao tiếp nhà hàng khách sạn',300000.0000,20,2,9,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F5a7a63749f7bfc459700033e%252Fproduct%252F5fffc02c44d203002598bb12&w=1920&q=50','Bạn đang làm việc trong một Nhà Hàng – Khách Sạn nào đó, hẳn là bạn sẽ có nhiều cơ hội gặp gỡ những vị khách đến từ nhiều quốc gia khác nhau. Do đó, bạn cần phải có nền tảng tiếng Anh tốt. Khi bạn có vốn tiếng Anh vững chắc, nó không chỉ giúp bạn hoàn thành công việc dễ dàng mà còn thúc đẩy khả năng thăng tiến nhanh chóng. . Khóa học được thiết kế phù hợp với mọi cấp độ từ cơ bản đến nâng cao, từ cấp bậc nhân viên đến quản lý. Chỉ sau 1 thời gian ngắn, học viên sẽ nắm được toàn bộ kiến thức chuyên môn về ngành Nhà Hàng – Khách Sạn, bao gồm từ vựng, cấu trúc ngữ pháp, thuật ngữ chuyên ngành, các mẫu câu đối thoại từ cơ bản đến nâng cao, cách giải quyết tình huống với khách hàng, giúp học viên tự tin xử lý các tình huống nghiệp vụ thuộc mảng Nhà Hàng – Khách Sạn.','2022-10-19','2022-10-21'),(11,'Tiếng Anh giao tiếp trong công việc',250000.0000,20,2,10,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F99e8262a-7b95-4050-a1a0-d6977c9d98ed%252Fproduct%252F5fffbdbd44d203002598bafe&w=1920&q=50','Nếu bạn đang còn rụt rè khi nói chuyện với đồng nghiệp ngoại quốc...Nếu bạn cảm thấy khó khăn khi đạt được những thảo thuận với đối tác nước ngoài...Nếu bạn phải làm việc với môi trường sử dụng tiếng anh là ngôn ngữ chính...Vậy thì bạn cần khóa học Giao tiếp trong công việc bằng tiếng anh này.Khóa học không chỉ cung cấp cho bạn thuần về kiến thức khô khan, các từ vựng hay ngữ pháp nhàm chán. Bạn sẽ được tiếp cận với những casestudy điển hình và dễ dàng nhận thấy sự quen thuộc khi nó vẫn diễn ra hằng ngày tại nơi làm việc của bạn.','2022-07-20','2022-07-22'),(12,'Phát âm tiếng Anh và giao tiếp căn bản',300000.0000,20,2,11,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F191ab4fd-9c62-4494-b209-51f86a3924d3%252Fproduct%252F61381f29e818b400255e2969&w=1920&q=50','Đến với khóa học, bạn sẽ được học kỹ về các yếu tố để có phát âm chuẩn tiếng Anh là khẩu hình và trọng âm chính xác.Ngoài ra, bạn còn học được cách dùng từ và biểu đạt ý mình sao cho chuẩn xác trong một số tình huống thông dụng hằng ngày.Bạn không còn phải lo lắng tại sao mình nói tiếng Anh \"đúng\" mà khi giao tiếp, người bản xứ lại không thể hiểu được, hoặc bạn không nghe hiểu được họ nói gì.','2022-10-29','2022-10-31'),(13,'IELTS Writing 6.0 cho người mới',600000.0000,50,3,12,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F191ab4fd-9c62-4494-b209-51f86a3924d3%252Fproduct%252F6041b5289a780e0025784b36&w=1920&q=50','Giảng viên có kinh nghiệm thi Ielts 7.0 và đã truyền đạt thành công kiến thức bản thân tích lũy cho nhiều đối tượng khác nhau.- Dạy chú trọng, súc tích ngữ pháp liên quan đến Ielts writing- Sinh động, đơn giản, dễ hiểu, dễ áp dụng. Khóa học được thiết kế dựa trên kinh nghiệm bản thân giảng viên: các lỗi dễ gặp phải, sắp xếp thời gian học tập hợp lý cho hiệu quả nhất,....có thể hiểu được tâm lý của đa số học viên, đặc biệt là các bạn sinh viên.- Ôn tập ngữ pháp, cấu trúc câu cơ bản trong tếng anh cho học viên, không chỉ cần thiết cho Ielts writing mà còn các kĩ năng còn lại.- Hướng dẫn các dạng bài trong writing task 1 và một số chủ đề cơ bản, phổ biến trong writing task 2.','2022-08-29','2022-08-31'),(14,'Luyện thi IELTS Writing task 2',800000.0000,20,3,13,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F191ab4fd-9c62-4494-b209-51f86a3924d3%252Fproduct%252F606d65939a780e002578f107&w=1920&q=50','Khóa học hướng dẫn chi tiết các cách viết, đưa ra các mẫu câu. Giáo trình do chính Ms. Linh biên soạn và chỉnh sửa bằng các tài liệu thông qua quá trình giảng dạy nhiều năm. Đến với khóa học online, học viên sẽ không chỉ đơn thuần là biết làm một bài task 2 mà còn có thể luyện khả năng ứng biến nhận biết từng loại bài và tư duy logic nhanh, cung cấp và củng cố cho học viên những kỹ năng và cách phát triển ý cho từng dạng bài trong Writing task 2 IELTS. Sau khóa học, học viên sẽ tự tin đạt điểm 6.0-6.5+ IELTS Writing Task 2. Khoá học cấp tốc dành cho học sinh có thể nắm bắt và thi IELTS task 2 trong vòng 1 tuần.','2022-08-23','2022-08-25'),(15,'Luyện thi IELTS 7.0',900000.0000,30,3,14,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F99e8262a-7b95-4050-a1a0-d6977c9d98ed%252Fproduct%252F6004eaac44d203002598c1f3&w=1920&q=50','Khóa học cung cấp những bí quyết để đạt điểm cao trong bài thi IELTS về từ vựng, ngữ pháp, phát âm và 4 kỹ năng nghe, nói, đọc viết. Sau khi học xong khóa học kết hợp với việc tự luyện thêm người học có thể tự tin để thi IELTS với kết quả từ 6 đến 7.','2022-09-23','2022-09-25'),(16,'Luyện thi IELTS 5.5',500000.0000,15,3,15,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F191ab4fd-9c62-4494-b209-51f86a3924d3%252Fproduct%252F6075593031b9ae0024d5d764&w=1920&q=50','Bạn đang lo lắng về trình độ tiếng Anh của mình?Bạn muốn tìm hiểu về bài thi IELTS? Bạn muốn cải thiện trình độ tiếng Anh.Đây là khóa học dành cho bạn. Khóa học cung cấp những kiến thức cơ bản để để đạt mức điểm từ 5.0 đến 5.5 trong bài thi IELTS.Sau khi học xong khóa này, người học sẽ tự tin với các kiến thức cơ bản về bài thi IELTS và có động lục để học thêm với mục đích đạt được số điểm thi IELTS như mong muốn.','2022-07-20','2022-07-22'),(17,'Tiếng Anh khi đi phỏng vấn',300000.0000,20,4,16,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F5a7a63749f7bfc459700033e%252Fproduct%252F60001e0a44d203002598bcfa&w=1920&q=50','Nội dung khóa học cung cấp những bí quyết để người học thành công khi đi phỏng vấn bằng tiếng Anh. Đặc biệt trong trường hợp người học muốn phỏng vấn để xin visa đi Mỹ làm việc hay du lịch. Giáo viên giải thích rõ ràng, đưa ra nhiều ví dụ cụ thể và luôn có phần dịch tiếng Việt để đảm bảo người học hiểu hết nội dung của từng bài.','2022-09-16','2022-09-18'),(18,'English for Marketing',300000.0000,20,4,17,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F191ab4fd-9c62-4494-b209-51f86a3924d3%252Fproduct%252F6080e551379fdd0025f2c610&w=1920&q=50','Bạn đang muốn tìm hiểu về lĩnh vực tiếp thị, bạn đang làm việc trong những ngành liên quan đến kinh tế, thương mại và muốn cải thiện kỹ năng giao tiếp với khách hàng bằng tiếng Anh. Đây là khóa học dành cho bạn. Khóa học được thiết kế hợp lý, khoa học, hệ thống với mong muốn cung cấp cho người học vốn từ vựng và cấu trúc cơ bản trong lĩnh vực tiếp thị. Nội dung mỗi bài học xoay quanh một chủ điểm liên quan đến chủ đề tiếp thị. Giáo viên đưa ra tình huống, cung cấp những cách diễn đạt cần thiết và đưa ra bí quyết để học viên có thể vừa học thêm kiến thức vừa cải thiện kỹ năng nghiệp vụ.','2022-09-24','2022-09-26'),(19,'Thuyết trình bằng tiếng Anh',300000.0000,20,4,18,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F5a7a63749f7bfc459700033e%252Fproduct%252F5fffea1144d203002598bb9f&w=1920&q=50','Dẫn dắt người học từ chỗ hứng thú với tiêu đề trở nên hiểu rõ và tin tưởng vào khóa học. Hướng dẫn cực chi tiết và dễ hiểu cách để phát âm hay, chuẩn giọng Anh Mỹ hơn, học viên sẽ có ngữ điệu của giọng Anh Mỹ. Tạo động lực nói chuẩn tiếng Anh, đam mê và sự quyết tâm, kiên trì học tập tiếng Anh.','2022-09-11','2022-09-13'),(20,'Luyện thi TOEIC mục tiêu 450-650+',300000.0000,20,6,19,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F99e8262a-7b95-4050-a1a0-d6977c9d98ed%252Fproduct%252F6000083c44d203002598bc0c&w=1920&q=50','Với kinh nghiệm luyện thi TOEIC hơn 10 năm, cùng cách truyền đạt hấp dẫn, lôi cuốn và sự tương tác với học viên thông qua các câu hỏi, các ví dụ minh họa sống động, cùng hàng nghìn bài luyện tập được giải thích một cách chi tiết và cẩn thận, khóa học TOEIC online này giúp bạn luyện thi TOEIC cấp tốc mục tiêu 450 đến 650+.','2022-10-08','2022-10-10'),(21,'450 điểm TOEIC cho người mất gốc',300000.0000,20,6,20,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F191ab4fd-9c62-4494-b209-51f86a3924d3%252Fproduct%252F607698c031b9ae0024d5dbaa&w=1920&q=50','Phần Listening gồm 12 bài và Reading gồm 12 bài. Khóa học là sự đúc kết của giảng viên trong suốt quá trình tự học và dạy ôn thi TOEIC, bao gồm kiến thức ngữ âm, ngữ pháp, kĩ năng và phương pháp làm bài cũng như lời khuyên khi đi thi. Học sinh cần hiểu, nắm rõ và bám sát những kiến thức và lưu ý của giảng viên trong khóa học để đảm bảo đạt được mục tiêu đầu ra.','2022-08-07','2022-08-09'),(22,'Luyện TOEIC cấp tốc mục tiêu 650-800+',500000.0000,20,6,21,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn1.edumall.io%252F640%252Fk-5768aeb1047c995f75fdbf6b%252F20180924-phuongch01_24_9%252Flearn-english-writing-grammar.png&w=1920&q=50','Khóa học không dàn trải theo kiểu lý thuyết mà trình bày các mẹo làm bài thi, các bẫy cần tránh trong bài thi TOEIC. Với hơn 10 năm kinh nghiệm luyện thi TOEIC cho hàng chục nghìn học viên, tác giả khóa học đã đúc kết lại những bí kíp luyện thi tinh túy, hiệu quả nhất. Hàng chục bí kíp luyện thi trình bày một cách logic, dễ hiểu, dễ nhớ, sẽ giúp các sĩ tử tăng điểm một cách thần kỳ.','2022-07-07','2022-07-09'),(23,'Luyện thi TOEIC mục tiêu 450-750+',400000.0000,30,6,22,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F191ab4fd-9c62-4494-b209-51f86a3924d3%252Fproduct%252F60ae7544d12b64002515ccde&w=1920&q=50','Khóa học TOEIC new format mục tiêu 450-750+ kéo dài trong 66 buổi học, tập trung vào kiến thức cần có khi đi thi TOEIC kiểu mới và mẹo theo chủ đề để học viên có thể làm bài nhanh hơn. Khóa học tập trung vào giảng những KIẾN THỨC mà bài thi TOEIC kiểu mới đề cập và các KỸ NĂNG làm bài CẦN CÓ để có thể tối ưu hóa điểm của học viên.','2022-08-04','2022-08-06'),(24,'Luyện thi TOEIC 500+ từ con số 0',400000.0000,30,6,23,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F99e8262a-7b95-4050-a1a0-d6977c9d98ed%252Fproduct%252F6001051944d203002598bdbb&w=1920&q=50','Khóa học chia ra thành 2 phần chính: nghe và đọc. Phần nghe sẽ cung cấp cho học viên các mẹo làm bài, từng dạng đề để có thể học ít nhưng điểm số vẫn cao. Phần đọc sẽ dạy lại ngữ pháp căn bản và các mẹo thi, cung cấp từ vựng, phương pháp ra đề và giải quyết đề.','2022-07-30','2022-08-01'),(25,'LUYỆN PHÁT ÂM TIẾNG ANH CHUẨN GIỌNG MỸ CÙNG GIÁO VIÊN BẢN NGỮ',400000.0000,30,5,24,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F191ab4fd-9c62-4494-b209-51f86a3924d3%252Fproduct%252F60c1c1cae1383a0025b58b57&w=1920&q=50','Phát âm tiếng Anh thực sự là một kỹ năng vô cùng quan trọng trong việc học tiếng Anh. Bởi việc phát âm đúng có thể giúp bạn nghe hiểu và giao tiếp được với người nước ngoài. Ngoài việc luyện thành thạo các nguyên âm thì bạn cần phải biết cách phân biệt các phụ âm trong tiếng Anh. Ngoài ra, bạn sẽ biết cách đọc đúng âm điệu theo chuẩn tiếng Anh giọng Mỹ.','2022-08-11','2022-08-13'),(26,'Luyện phát âm tiếng anh cơ bản',400000.0000,30,5,25,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F191ab4fd-9c62-4494-b209-51f86a3924d3%252Fproduct%252F606e89cd9a780e002578f5e2&w=1920&q=50','Trong đó, người dạy cũng chỉ ra những khó khăn mà người Việt thường mắc phải khi phát âm và cách khắc phục.Khoá học ngoài phần lý thuyết cũng cung cấp cho các bạn các bài tập luyện tập, video hướng dẫn và file nghe.Mọi thắc mắc của các học viên sẽ được giáo viên trực tiếp giải đáp trong thời gian nhanh nhất.','2022-10-24','2022-10-26'),(27,'Phát âm tiếng Anh chuẩn',500000.0000,25,5,26,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F99e8262a-7b95-4050-a1a0-d6977c9d98ed%252Fproduct%252F600513f144d203002598c2a4&w=1920&q=50','Có phải bạn đang:Mất gốc tiếng Anh hoặc học từ không biết gì nhưng không biết nên bắt đầu từ đâu? Muốn tự tin giao tiếp với người nước ngoài nhưng lại sợ nói sai và không nghe được người nước ngoài nói? Muốn sở hữu bộ âm chuẩn 100% âm Anh, Mỹ để thấy việc nghe nói tiếng Anh cực kì dễ, thêm yêu thích và tự tin nói tiếng Anh?','2022-09-25','2022-09-27'),(28,'Nền tảng tiếng Anh cho người mới bắt đầu',500000.0000,25,5,27,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F99e8262a-7b95-4050-a1a0-d6977c9d98ed%252Fproduct%252F600140fe44d203002598bf76&w=1920&q=50','Rất nhiều bạn học tiếng Anh và đang gặp phải các vấn đề như: - Không biết nên học tiếng Anh như thế nào cho hiệu quả - Học tiếng Anh đã lâu rồi nhưng chưa thể nói ra thành phản xạ các chủ đề thông dụng trong giao tiếp hàng ngày - Bối rối và không biết nói gì khi giao tiếp với người nước ngoài - Mất tự tin khi sử dụng tiếng Anh trong học tập cũng như công việc hàng ngày Khóa học này giúp bạn giải quyết các vấn đề trên thông qua 97 bài học chia làm các chủ đề khác nhau để bạn cải thiện vốn từ và ngữ pháp một cách hiệu quả nhất.','2022-09-21','2022-09-23'),(29,'Làm chủ Ngữ âm tiếng Anh',500000.0000,25,5,28,0,'https://edumall.vn/_next/image?url=%2Fapi%2Fimageproxy%3Furl%3Dhttps%253A%252F%252Fcdn2.topica.vn%252F191ab4fd-9c62-4494-b209-51f86a3924d3%252Fproduct%252F61377ad4e818b400255e27fa&w=1920&q=50','Khóa học này với tiêu chí \"chuẩn từ đầu\" qua 5 bước với 20 quy luật chính chắc chắn sẽ giúp bạn cảm nhận ngay sự thay đổi về khả năng phát âm, từ đó tự tin và hào hứng sử dụng tiếng Anh. Khóa học được xây dựng dựa trên nội dung cuốn sách \"Làm chủ Ngữ âm tiếng Anh\" của chúng tôi do NXB ĐHQG HN ấn hành sẽ là người bạn đồng hành cung cấp kiến thức lí thuyết và các bài luyện tập một cách hệ thống, toàn diện và hiệu quả!','2022-08-01','2022-08-03');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_document_course_id` (`course_id`),
  CONSTRAINT `FK_document_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_question`
--

DROP TABLE IF EXISTS `exam_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam_question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `exam_id` int DEFAULT NULL,
  `question_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_exam_question_exam_id` (`exam_id`),
  KEY `FK_exam_question_question_id` (`question_id`),
  CONSTRAINT `FK_exam_question_exam_id` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`id`),
  CONSTRAINT `FK_exam_question_question_id` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_question`
--

LOCK TABLES `exam_question` WRITE;
/*!40000 ALTER TABLE `exam_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follow`
--

DROP TABLE IF EXISTS `follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follow` (
  `id` int NOT NULL AUTO_INCREMENT,
  `follower_id` char(36) DEFAULT NULL,
  `following_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AVG_ROW_LENGTH=1365 COMMENT='Bảng người theo dõi';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follow`
--

LOCK TABLES `follow` WRITE;
/*!40000 ALTER TABLE `follow` DISABLE KEYS */;
INSERT INTO `follow` VALUES (6,'4d79d901-1edc-5c5b-0780-e8e2a817c80e','4760d71f-6e2f-5b32-19cb-66948daf6128'),(7,'4e272fc4-7875-78d6-7d32-6a1673ffca7c','4760d71f-6e2f-5b32-19cb-66948daf6128'),(8,'4d7b21db-2e02-12b7-a9db-e5d54223c257','4760d71f-6e2f-5b32-19cb-66948daf6128'),(12,'4760d71f-6e2f-5b32-19cb-66948daf6128','4e272fc4-7875-78d6-7d32-6a1673ffca7c'),(13,'4d7b21db-2e02-12b7-a9db-e5d54223c257','4d79d901-1edc-5c5b-0780-e8e2a817c80e'),(14,'4d7b21db-2e02-12b7-a9db-e5d54223c257','4eceddac-7dc2-38ea-7bdd-867949feb8b5'),(15,'4d7b21db-2e02-12b7-a9db-e5d54223c257','52f7159d-5242-1af8-9c7d-e8c757976496'),(16,'4d7b21db-2e02-12b7-a9db-e5d54223c257','5660d465-6020-48f3-75dd-867949feb8b5'),(17,'59d19422-6657-452e-a7db-e5d54223c257','4d7b21db-2e02-12b7-a9db-e5d54223c257'),(18,'5ae2d70b-201d-3e23-7f32-6a1673ffca7c','4d7b21db-2e02-12b7-a9db-e5d54223c257'),(19,'5badffd8-18c8-3f76-6492-08c864661f9c','4d7b21db-2e02-12b7-a9db-e5d54223c257'),(20,'60084fec-3509-2779-8432-6a1673ffca7c','4d7b21db-2e02-12b7-a9db-e5d54223c257');
/*!40000 ALTER TABLE `follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `learned_word`
--

DROP TABLE IF EXISTS `learned_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `learned_word` (
  `id` int NOT NULL AUTO_INCREMENT,
  `word_id` int DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `last_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_learnedword_user_id` (`user_id`),
  KEY `FK_learnedword_word_id` (`word_id`),
  CONSTRAINT `FK_learnedword_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK_learnedword_word_id` FOREIGN KEY (`word_id`) REFERENCES `word` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AVG_ROW_LENGTH=963 COMMENT='Bảng các từ đã học';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learned_word`
--

LOCK TABLES `learned_word` WRITE;
/*!40000 ALTER TABLE `learned_word` DISABLE KEYS */;
INSERT INTO `learned_word` VALUES (1,1,'4d7b21db-2e02-12b7-a9db-e5d54223c257','2022-10-29 00:00:00'),(2,2,'4d7b21db-2e02-12b7-a9db-e5d54223c257','2022-10-29 00:00:00'),(3,3,'4d7b21db-2e02-12b7-a9db-e5d54223c257','2022-10-29 00:00:00'),(4,4,'4d7b21db-2e02-12b7-a9db-e5d54223c257','2022-10-29 00:00:00'),(12,1,'4e272fc4-7875-78d6-7d32-6a1673ffca7c','2022-11-02 22:47:47'),(13,2,'4e272fc4-7875-78d6-7d32-6a1673ffca7c','2022-11-02 22:47:47'),(14,3,'4e272fc4-7875-78d6-7d32-6a1673ffca7c','2022-11-02 22:47:47'),(15,4,'4e272fc4-7875-78d6-7d32-6a1673ffca7c','2022-11-02 22:47:47'),(16,5,'4e272fc4-7875-78d6-7d32-6a1673ffca7c','2022-11-02 22:49:23'),(17,6,'4e272fc4-7875-78d6-7d32-6a1673ffca7c','2022-11-02 22:49:23'),(18,7,'4e272fc4-7875-78d6-7d32-6a1673ffca7c','2022-11-02 22:49:23'),(19,5,'4d7b21db-2e02-12b7-a9db-e5d54223c257','2022-11-03 22:46:32'),(20,6,'4d7b21db-2e02-12b7-a9db-e5d54223c257','2022-11-03 22:46:32'),(21,7,'4d7b21db-2e02-12b7-a9db-e5d54223c257','2022-11-03 22:46:32'),(22,8,'4d7b21db-2e02-12b7-a9db-e5d54223c257','2022-11-03 22:47:28'),(23,9,'4d7b21db-2e02-12b7-a9db-e5d54223c257','2022-11-03 22:47:28'),(24,10,'4d7b21db-2e02-12b7-a9db-e5d54223c257','2022-11-03 22:47:28'),(25,11,'4d7b21db-2e02-12b7-a9db-e5d54223c257','2022-11-03 22:49:02'),(26,12,'4d7b21db-2e02-12b7-a9db-e5d54223c257','2022-11-03 22:49:02'),(27,13,'4d7b21db-2e02-12b7-a9db-e5d54223c257','2022-11-03 22:49:02'),(28,1,'47f60f67-6087-2a86-abdb-e5d54223c257','2022-11-13 07:58:28'),(29,2,'47f60f67-6087-2a86-abdb-e5d54223c257','2022-11-13 07:58:28'),(30,3,'47f60f67-6087-2a86-abdb-e5d54223c257','2022-11-13 07:58:28'),(31,4,'47f60f67-6087-2a86-abdb-e5d54223c257','2022-11-13 07:58:28');
/*!40000 ALTER TABLE `learned_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson`
--

DROP TABLE IF EXISTS `lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `topic_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_lesson_topic_id` (`topic_id`),
  CONSTRAINT `FK_lesson_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AVG_ROW_LENGTH=1092 COMMENT='Bảng lesson';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson`
--

LOCK TABLES `lesson` WRITE;
/*!40000 ALTER TABLE `lesson` DISABLE KEYS */;
INSERT INTO `lesson` VALUES (1,'1',1),(2,'2',1),(3,'3',1),(4,'4',1),(5,'5',1),(6,'1',2),(7,'2',2),(8,'3',2),(9,'4',2),(10,'5',2),(11,'1',3),(12,'2',3),(13,'3',3),(14,'4',3),(15,'5',3);
/*!40000 ALTER TABLE `lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson_question`
--

DROP TABLE IF EXISTS `lesson_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson_question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lesson_id` int DEFAULT NULL,
  `question_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_lesson_question_lesson_id` (`lesson_id`),
  KEY `FK_lesson_question_question_id` (`question_id`),
  CONSTRAINT `FK_lesson_question_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`),
  CONSTRAINT `FK_lesson_question_question_id` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AVG_ROW_LENGTH=303 COMMENT='Bảng lesson_question';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson_question`
--

LOCK TABLES `lesson_question` WRITE;
/*!40000 ALTER TABLE `lesson_question` DISABLE KEYS */;
INSERT INTO `lesson_question` VALUES (1,1,11),(2,1,2),(3,1,7),(4,1,10),(5,1,5),(6,2,12),(7,2,1),(8,2,17),(9,2,21),(10,2,9),(11,1,8),(12,2,28),(13,3,13),(14,3,4),(15,3,18),(16,3,22),(17,3,25),(18,3,29),(19,4,14),(20,4,6),(21,4,19),(22,4,26),(23,4,23),(24,4,30),(25,5,15),(26,5,16),(27,5,20),(28,5,27),(29,5,24),(30,5,31),(31,6,32),(32,6,33),(33,6,34),(34,6,35),(35,6,36),(36,6,37),(37,7,38),(38,7,39),(39,7,40),(40,7,41),(41,7,42),(42,7,43),(43,8,44),(44,8,45),(45,8,46),(46,8,47),(47,8,48),(48,8,49),(49,9,50),(50,9,51),(51,9,52),(52,9,53),(53,9,54),(54,9,55);
/*!40000 ALTER TABLE `lesson_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(255) DEFAULT NULL,
  `total_price` decimal(19,4) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AVG_ROW_LENGTH=5461;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'Paypal',90000.0000,'47f60f67-6087-2a86-abdb-e5d54223c257','2022-11-08'),(2,'Paypal',180000.0000,'4d79d901-1edc-5c5b-0780-e8e2a817c80e','2022-11-11'),(3,'Cash',500000.0000,'4760d71f-6e2f-5b32-19cb-66948daf6128','2021-01-01');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AVG_ROW_LENGTH=2730;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (1,1,1),(2,1,2),(3,2,1),(4,2,2),(5,2,3),(6,2,4);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AVG_ROW_LENGTH=1024 COMMENT='Bảng câu hỏi';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'Làm sao để nói những chiếc áo khoác?','coats','QuesSelectHorizon','{\"id\":2,\"question_text\":{\"name\":\"Làm sao để nói \'những chiếc áo khoác?\' \",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"Good morning\",\"value\":1},{\"id\":2,\"name\":\"hi\",\"value\":2},{\"id\":3,\"name\":\"coats\",\"value\":3}],\"lang\":\"EN\"},\"answer\":\"coats\",\"is_show_switch\":false}'),(2,'Làm sao để nói \"cà phê\"','Coffee','QuesSelectHorizon','{\"id\":2,\"question_text\":{\"name\":\"Làm sao để nói \\\"cà phê\\\"? \",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"Coffee\",\"value\":1},{\"id\":2,\"name\":\"Tea\",\"value\":2},{\"id\":3,\"name\":\"Milk\",\"value\":3}],\"lang\":\"EN\"},\"answer\":\"Coffee\",\"is_show_switch\":false}'),(4,'Làm sao để nói \"tạm biệt\"','Bye','QuesSelectHorizon','{\"id\":2,\"question_text\":{\"name\":\"Làm sao để nói \\\"Tạm biệt\\\"? \",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"Bye\",\"value\":1},{\"id\":2,\"name\":\"Good morning\",\"value\":2},{\"id\":3,\"name\":\"Hi\",\"value\":3}],\"lang\":\"EN\"},\"answer\":\"Bye\",\"is_show_switch\":false}'),(5,'Đọc lại câu này','Coffee or water','QuesSpeak','{\"id\":6,\"question_text\":{\"name\":\"Đọc lại câu này\",\"text\":\"Coffee or water?\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[],\"lang\":\"EN\"},\"answer\":\"Coffee or water\",\"is_show_switch\":false}'),(6,'Làm sao để nói \"xin chào\"','Hi','QuesSelectHorizon','{\"id\":2,\"question_text\":{\"name\":\"Làm sao để nói \\\"xin chào\\\"? \",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"Hi\",\"value\":1},{\"id\":2,\"name\":\"Coffee\",\"value\":2},{\"id\":3,\"name\":\"And\",\"value\":3}],\"lang\":\"EN\"},\"answer\":\"Hi\",\"is_show_switch\":false}'),(7,'Chọn cặp từ','','QuesSelectPair','{\"id\":3,\"question_text\":{\"name\":\"Chọn cặp từ\",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"xin chào\",\"value\":1},{\"id\":2,\"name\":\"vui lòng\",\"value\":2},{\"id\":3,\"name\":\"sữa\",\"value\":3},{\"id\":4,\"name\":\"cà phê\",\"value\":4},{\"id\":5,\"name\":\"và\",\"value\":5}],\"arr2\":[{\"id\":1,\"name\":\"coffee\",\"value\":4},{\"id\":2,\"name\":\"and\",\"value\":5},{\"id\":3,\"name\":\"hi\",\"value\":1},{\"id\":4,\"name\":\"milk\",\"value\":3},{\"id\":5,\"name\":\"please\",\"value\":2}],\"lang\":\"EN\"},\"answer\":\"\",\"is_show_switch\":false}'),(8,'Nhấn vào những gì bạn nghe','No thank you','QuesHearSelectMulti','{\"id\":5,\"question_text\":{\"name\":\"Nhấn vào những gì bạn nghe\",\"text\":\"\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"thank\",\"value\":1},{\"id\":2,\"name\":\"you\",\"value\":2},{\"id\":3,\"name\":\"yes\",\"value\":3},{\"id\":4,\"name\":\"No\",\"value\":4},{\"id\":5,\"name\":\"water\",\"value\":5},{\"id\":6,\"name\":\"Milk\",\"value\":6}],\"lang\":\"EN\"},\"answer\":\"No thank you\",\"is_show_switch\":true}'),(9,'Nhấn vào những gì bạn nghe','Thank you bye','QuesHearSelectMulti','{\"id\":5,\"question_text\":{\"name\":\"Nhấn vào những gì bạn nghe\",\"text\":\"\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"thank\",\"value\":1},{\"id\":2,\"name\":\"bye\",\"value\":2},{\"id\":3,\"name\":\"yes\",\"value\":3},{\"id\":4,\"name\":\"you\",\"value\":4},{\"id\":5,\"name\":\"noodles\",\"value\":5},{\"id\":6,\"name\":\"water\",\"value\":6}],\"lang\":\"EN\"},\"answer\":\"thank you bye\",\"is_show_switch\":true}'),(10,'Bạn nghe được gì?','Hi','QuesHearSelect','{\"id\":4,\"question_text\":{\"name\":\"Bạn nghe được gì?\",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"Hi\",\"value\":1},{\"id\":2,\"name\":\"Bye\",\"value\":2},{\"id\":3,\"name\":\"Sky\",\"value\":3},{\"id\":4,\"name\":\"Light\",\"value\":4}],\"lang\":\"EN\"},\"answer\":\"Hi\",\"is_show_switch\":false}'),(11,'Viết lại bằng tiếng Việt','sữa và cà phê','QuesMultiWords','{\"id\":1,\"question_text\":{\"name\":\"Viết lại bằng tiếng Việt\",\"text\":\"Milk and coffee\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"Sữa\",\"value\":1},{\"id\":2,\"name\":\"Cà phê\",\"value\":2},{\"id\":3,\"name\":\"nóng\",\"value\":3},{\"id\":4,\"name\":\"và\",\"value\":4},{\"id\":5,\"name\":\"Mì\",\"value\":5},{\"id\":6,\"name\":\"Có\",\"value\":6},{\"id\":7,\"name\":\"hai\",\"value\":7}],\"lang\":\"VN\"},\"answer\":\"sữa và cà phê\",\"is_show_switch\":true}'),(12,'Viết lại bằng tiếng Việt','hai tách cà phê','QuesMultiWords','{\"id\":1,\"question_text\":{\"name\":\"Viết lại bằng tiếng Việt\",\"text\":\"Two cups of coffee\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"Hai\",\"value\":1},{\"id\":2,\"name\":\"xe\",\"value\":2},{\"id\":3,\"name\":\"tách\",\"value\":3},{\"id\":4,\"name\":\"phê\",\"value\":4},{\"id\":5,\"name\":\"cà\",\"value\":5},{\"id\":6,\"name\":\"Tôi\",\"value\":6},{\"id\":7,\"name\":\"có\",\"value\":7},{\"id\":8,\"name\":\"này\",\"value\":8}],\"lang\":\"VN\"},\"answer\":\"Hai tách cà phê\",\"is_show_switch\":true}'),(13,'Viết lại bằng tiếng Việt','Tạm biệt hẹn gặp lại','QuesMultiWords','{\"id\":1,\"question_text\":{\"name\":\"Viết lại bằng tiếng Việt\",\"text\":\"Bye, see you\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"Tạm\",\"value\":1},{\"id\":2,\"name\":\"xe\",\"value\":2},{\"id\":3,\"name\":\"hẹn\",\"value\":3},{\"id\":4,\"name\":\"biệt\",\"value\":4},{\"id\":5,\"name\":\"lại\",\"value\":5},{\"id\":6,\"name\":\"gặp\",\"value\":6},{\"id\":7,\"name\":\"có\",\"value\":7},{\"id\":8,\"name\":\"này\",\"value\":8}],\"lang\":\"VN\"},\"answer\":\"Tạm biệt hẹn gặp lại\",\"is_show_switch\":true}'),(14,'Viết lại bằng tiếng Việt','Chào buổi sáng Kelvin','QuesMultiWords','{\"id\":1,\"question_text\":{\"name\":\"Viết lại bằng tiếng Việt\",\"text\":\"Good morning Kelvin\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"sáng\",\"value\":1},{\"id\":2,\"name\":\"Chào\",\"value\":2},{\"id\":3,\"name\":\"hẹn\",\"value\":3},{\"id\":4,\"name\":\"buổi\",\"value\":4},{\"id\":5,\"name\":\"lại\",\"value\":5},{\"id\":6,\"name\":\"gặp\",\"value\":6},{\"id\":7,\"name\":\"Kelvin\",\"value\":7},{\"id\":8,\"name\":\"này\",\"value\":8}],\"lang\":\"VN\"},\"answer\":\"Chào buổi sáng Kelvin\",\"is_show_switch\":true}'),(15,'Viết lại bằng tiếng Việt','Xin chào tôi đến từ Việt Nam','QuesMultiWords','{\"id\":1,\"question_text\":{\"name\":\"I am from Vietnam\",\"text\":\"Good morning Kelvin\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"đến\",\"value\":1},{\"id\":2,\"name\":\"Việt\",\"value\":2},{\"id\":3,\"name\":\"chào\",\"value\":3},{\"id\":4,\"name\":\"Nam\",\"value\":4},{\"id\":5,\"name\":\"Xin\",\"value\":5},{\"id\":6,\"name\":\"tôi\",\"value\":6},{\"id\":7,\"name\":\"từ\",\"value\":7},{\"id\":8,\"name\":\"này\",\"value\":8}],\"lang\":\"VN\"},\"answer\":\"Xin chào tôi đến từ Việt Nam\",\"is_show_switch\":true}'),(16,'Làm sao để nói chào buổi sáng?','Good morning','QuesSelectHorizon','{\"id\":2,\"question_text\":{\"name\":\"Làm sao để nói \\\"chào buổi sáng?\\\"\",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"Good morning\",\"value\":1},{\"id\":2,\"name\":\"hi\",\"value\":2},{\"id\":3,\"name\":\"noodles\",\"value\":3}],\"lang\":\"EN\"},\"answer\":\"Good morning\",\"is_show_switch\":false}'),(17,'Chọn cặp từ','','QuesSelectPair','{\"id\":3,\"question_text\":{\"name\":\"Chọn cặp từ\",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"cơm\",\"value\":1},{\"id\":2,\"name\":\"cà phê\",\"value\":2},{\"id\":3,\"name\":\"Cảm ơn\",\"value\":3},{\"id\":4,\"name\":\"nóng\",\"value\":4},{\"id\":5,\"name\":\"vâng\",\"value\":5}],\"arr2\":[{\"id\":1,\"name\":\"Thank you\",\"value\":3},{\"id\":2,\"name\":\"Yes\",\"value\":5},{\"id\":3,\"name\":\"Hot\",\"value\":4},{\"id\":4,\"name\":\"Rice\",\"value\":1},{\"id\":5,\"name\":\"Coffee\",\"value\":2}],\"lang\":\"EN\"},\"answer\":\"\",\"is_show_switch\":false}'),(18,'Chọn cặp từ','','QuesSelectPair','{\"id\":3,\"question_text\":{\"name\":\"Chọn cặp từ\",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"cơm\",\"value\":1},{\"id\":2,\"name\":\"cà phê\",\"value\":2},{\"id\":3,\"name\":\"cơm\",\"value\":3},{\"id\":4,\"name\":\"nóng\",\"value\":4},{\"id\":5,\"name\":\"mì\",\"value\":5}],\"arr2\":[{\"id\":1,\"name\":\"Rice\",\"value\":3},{\"id\":2,\"name\":\"Noodles\",\"value\":5},{\"id\":3,\"name\":\"Hot\",\"value\":4},{\"id\":4,\"name\":\"Rice\",\"value\":1},{\"id\":5,\"name\":\"Coffee\",\"value\":2}],\"lang\":\"EN\"},\"answer\":\"\",\"is_show_switch\":false}'),(19,'Chọn cặp từ','','QuesSelectPair','{\"id\":3,\"question_text\":{\"name\":\"Chọn cặp từ\",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"Chào buổi sáng\",\"value\":1},{\"id\":2,\"name\":\"trà\",\"value\":2},{\"id\":3,\"name\":\"tạm biệt\",\"value\":3},{\"id\":4,\"name\":\"nóng\",\"value\":4},{\"id\":5,\"name\":\"mì\",\"value\":5}],\"arr2\":[{\"id\":1,\"name\":\"Bye\",\"value\":3},{\"id\":2,\"name\":\"Noodles\",\"value\":5},{\"id\":3,\"name\":\"Hot\",\"value\":4},{\"id\":4,\"name\":\"Good morning\",\"value\":1},{\"id\":5,\"name\":\"Tea\",\"value\":2}],\"lang\":\"EN\"},\"answer\":\"\",\"is_show_switch\":false}'),(20,'Chọn cặp từ','','QuesSelectPair','{\"id\":3,\"question_text\":{\"name\":\"Chọn cặp từ\",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"Sữa\",\"value\":1},{\"id\":2,\"name\":\"trà\",\"value\":2},{\"id\":3,\"name\":\"Chào buổi tối\",\"value\":3},{\"id\":4,\"name\":\"nóng\",\"value\":4},{\"id\":5,\"name\":\"mì\",\"value\":5}],\"arr2\":[{\"id\":1,\"name\":\"Good evening\",\"value\":3},{\"id\":2,\"name\":\"Noodles\",\"value\":5},{\"id\":3,\"name\":\"Hot\",\"value\":4},{\"id\":4,\"name\":\"Milk\",\"value\":1},{\"id\":5,\"name\":\"Tea\",\"value\":2}],\"lang\":\"EN\"},\"answer\":\"\",\"is_show_switch\":false}'),(21,'Bạn nghe được gì?','Hi','QuesHearSelect','{\"id\":4,\"question_text\":{\"name\":\"Bạn nghe được gì?\",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"Me\",\"value\":1},{\"id\":2,\"name\":\"Tree\",\"value\":2},{\"id\":3,\"name\":\"Free\",\"value\":3},{\"id\":4,\"name\":\"Coffee\",\"value\":4}],\"lang\":\"EN\"},\"answer\":\"Coffee\",\"is_show_switch\":false}'),(22,'Bạn nghe được gì?','Hi','QuesHearSelect','{\"id\":4,\"question_text\":{\"name\":\"Bạn nghe được gì?\",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"Hot\",\"value\":1},{\"id\":2,\"name\":\"Not\",\"value\":2},{\"id\":3,\"name\":\"Short\",\"value\":3},{\"id\":4,\"name\":\"Pot\",\"value\":4}],\"lang\":\"EN\"},\"answer\":\"Hot\",\"is_show_switch\":false}'),(23,'Bạn nghe được gì?','Hi','QuesHearSelect','{\"id\":4,\"question_text\":{\"name\":\"Bạn nghe được gì?\",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"Nice\",\"value\":1},{\"id\":2,\"name\":\"Rice\",\"value\":2},{\"id\":3,\"name\":\"Ice\",\"value\":3},{\"id\":4,\"name\":\"Slice\",\"value\":4}],\"lang\":\"EN\"},\"answer\":\"Rice\",\"is_show_switch\":false}'),(24,'Bạn nghe được gì?','Hi','QuesHearSelect','{\"id\":4,\"question_text\":{\"name\":\"Bạn nghe được gì?\",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"Tea\",\"value\":1},{\"id\":2,\"name\":\"He\",\"value\":2},{\"id\":3,\"name\":\"Tear\",\"value\":3},{\"id\":4,\"name\":\"Meat\",\"value\":4}],\"lang\":\"EN\"},\"answer\":\"Tea\",\"is_show_switch\":false}'),(25,'Nhấn vào những gì bạn nghe','I am from Vietnam','QuesHearSelectMulti','{\"id\":5,\"question_text\":{\"name\":\"Nhấn vào những gì bạn nghe\",\"text\":\"\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"Vietnam\",\"value\":1},{\"id\":2,\"name\":\"from\",\"value\":2},{\"id\":3,\"name\":\"I\",\"value\":3},{\"id\":4,\"name\":\"am\",\"value\":4},{\"id\":5,\"name\":\"water\",\"value\":5},{\"id\":6,\"name\":\"Milk\",\"value\":6}],\"lang\":\"EN\"},\"answer\":\"I am from Vietnam\",\"is_show_switch\":true}'),(26,'Nhấn vào những gì bạn nghe','Two water please','QuesHearSelectMulti','{\"id\":5,\"question_text\":{\"name\":\"Nhấn vào những gì bạn nghe\",\"text\":\"\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"please\",\"value\":1},{\"id\":2,\"name\":\"Two\",\"value\":2},{\"id\":3,\"name\":\"hi\",\"value\":3},{\"id\":4,\"name\":\"am\",\"value\":4},{\"id\":5,\"name\":\"water\",\"value\":5},{\"id\":6,\"name\":\"Milk\",\"value\":6}],\"lang\":\"EN\"},\"answer\":\"Two water please\",\"is_show_switch\":true}'),(27,'Nhấn vào những gì bạn nghe','Good morning everyone','QuesHearSelectMulti','{\"id\":5,\"question_text\":{\"name\":\"Nhấn vào những gì bạn nghe\",\"text\":\"\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"please\",\"value\":1},{\"id\":2,\"name\":\"Two\",\"value\":2},{\"id\":3,\"name\":\"everyone\",\"value\":3},{\"id\":4,\"name\":\"morning\",\"value\":4},{\"id\":5,\"name\":\"water\",\"value\":5},{\"id\":6,\"name\":\"Good\",\"value\":6}],\"lang\":\"EN\"},\"answer\":\"Good morning everyone\",\"is_show_switch\":true}'),(28,'Đọc lại câu này','Two coffee please','QuesSpeak','{\"id\":6,\"question_text\":{\"name\":\"Đọc lại câu này\",\"text\":\"Two coffee please\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[],\"lang\":\"EN\"},\"answer\":\"Two coffee please\",\"is_show_switch\":false}'),(29,'Đọc lại câu này','Good morning everyone','QuesSpeak','{\"id\":6,\"question_text\":{\"name\":\"Đọc lại câu này\",\"text\":\"Good morning everyone\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[],\"lang\":\"EN\"},\"answer\":\"Good morning everyone\",\"is_show_switch\":false}'),(30,'Đọc lại câu này','Bye see you','QuesSpeak','{\"id\":6,\"question_text\":{\"name\":\"Đọc lại câu này\",\"text\":\"Bye see you\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[],\"lang\":\"EN\"},\"answer\":\"Bye see you\",\"is_show_switch\":false}'),(31,'Đọc lại câu này','Bye see you','QuesSpeak','{\"id\":6,\"question_text\":{\"name\":\"Đọc lại câu này\",\"text\":\"Can I have noodle\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[],\"lang\":\"EN\"},\"answer\":\"Can I have noodle\",\"is_show_switch\":false}'),(32,'Viết lại bằng tiếng Việt','Xin chào tôi đến từ Việt Nam','QuesMultiWords','{\"id\":1,\"question_text\":{\"name\":\"Viết lại bằng tiếng Việt\",\"text\":\"Tôi là một học sinh\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"đúng\",\"value\":1},{\"id\":2,\"name\":\"là\",\"value\":2},{\"id\":3,\"name\":\"học\",\"value\":3},{\"id\":4,\"name\":\"chiếc\",\"value\":4},{\"id\":5,\"name\":\"Tôi\",\"value\":5},{\"id\":6,\"name\":\"một\",\"value\":6},{\"id\":7,\"name\":\"không\",\"value\":7},{\"id\":8,\"name\":\"sinh\",\"value\":8}],\"lang\":\"VN\"},\"answer\":\"Tôi là một học sinh\",\"is_show_switch\":true}'),(33,'Làm sao để nói chào buổi sáng?','Good morning','QuesSelectHorizon','{\"id\":2,\"question_text\":{\"name\":\"Làm sao để nói \\\"Chào buổi sáng?\\\"\",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"Good morning\",\"value\":1},{\"id\":2,\"name\":\"hi\",\"value\":2},{\"id\":3,\"name\":\"coats\",\"value\":3}],\"lang\":\"EN\"},\"answer\":\"Good morning\",\"is_show_switch\":false}'),(34,'Chọn cặp từ','','QuesSelectPair','{\"id\":3,\"question_text\":{\"name\":\"Chọn cặp từ\",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"Việt Nam\",\"value\":1},{\"id\":2,\"name\":\"tạm biệt\",\"value\":2},{\"id\":3,\"name\":\"nóng\",\"value\":3},{\"id\":4,\"name\":\"vâng\",\"value\":4},{\"id\":5,\"name\":\"cà phê\",\"value\":5}],\"arr2\":[{\"id\":1,\"name\":\"hot\",\"value\":3},{\"id\":2,\"name\":\"coffee\",\"value\":5},{\"id\":3,\"name\":\"yes\",\"value\":4},{\"id\":4,\"name\":\"Vietnam\",\"value\":1},{\"id\":5,\"name\":\"bye\",\"value\":2}],\"lang\":\"EN\"},\"answer\":\"\",\"is_show_switch\":false}'),(35,'Bạn nghe được gì?','Hi','QuesHearSelect','{\"id\":4,\"question_text\":{\"name\":\"Bạn nghe được gì?\",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"Dance\",\"value\":1},{\"id\":2,\"name\":\"Dad\",\"value\":2},{\"id\":3,\"name\":\"Drap\",\"value\":3},{\"id\":4,\"name\":\"Do\",\"value\":4}],\"lang\":\"EN\"},\"answer\":\"Dad\",\"is_show_switch\":false}'),(36,'Nhấn vào những gì bạn nghe','Good morning everyone','QuesHearSelectMulti','{\"id\":5,\"question_text\":{\"name\":\"Nhấn vào những gì bạn nghe\",\"text\":\"\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"hot\",\"value\":1},{\"id\":2,\"name\":\"my\",\"value\":2},{\"id\":3,\"name\":\"mom\",\"value\":3},{\"id\":4,\"name\":\"This\",\"value\":4},{\"id\":5,\"name\":\"and\",\"value\":5},{\"id\":6,\"name\":\"is\",\"value\":6}],\"lang\":\"EN\"},\"answer\":\"This is my mom\",\"is_show_switch\":true}'),(37,'Đọc lại câu này','Bye see you','QuesSpeak','{\"id\":6,\"question_text\":{\"name\":\"Đọc lại câu này\",\"text\":\"I have a younger brother\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[],\"lang\":\"EN\"},\"answer\":\"I have a younger brother\",\"is_show_switch\":false}'),(38,'Viết lại bằng tiếng Việt','Đây là mẹ của tôi','QuesMultiWords','{\"id\":1,\"question_text\":{\"name\":\"Viết lại bằng tiếng Việt\",\"text\":\"This is my mom\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"đúng\",\"value\":1},{\"id\":2,\"name\":\"của\",\"value\":2},{\"id\":3,\"name\":\"là\",\"value\":3},{\"id\":4,\"name\":\"tôi\",\"value\":4},{\"id\":5,\"name\":\"Đây\",\"value\":5},{\"id\":6,\"name\":\"mẹ\",\"value\":6},{\"id\":7,\"name\":\"không\",\"value\":7},{\"id\":8,\"name\":\"sinh\",\"value\":8}],\"lang\":\"VN\"},\"answer\":\"Đây là mẹ của tôi\",\"is_show_switch\":true}'),(39,'Làm sao để nói chào buổi sáng?','older sister','QuesSelectHorizon','{\"id\":2,\"question_text\":{\"name\":\"Làm sao để nói \\\"chị gái?\\\"\",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"class\",\"value\":1},{\"id\":2,\"name\":\"older sister\",\"value\":2},{\"id\":3,\"name\":\"counter\",\"value\":3}],\"lang\":\"EN\"},\"answer\":\"older sister\",\"is_show_switch\":false}'),(40,'Chọn cặp từ','','QuesSelectPair','{\"id\":3,\"question_text\":{\"name\":\"Chọn cặp từ\",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"chú\",\"value\":1},{\"id\":2,\"name\":\"ngôi nhà\",\"value\":2},{\"id\":3,\"name\":\"gia đình\",\"value\":3},{\"id\":4,\"name\":\"phòng bếp\",\"value\":4},{\"id\":5,\"name\":\"ông\",\"value\":5}],\"arr2\":[{\"id\":1,\"name\":\"house\",\"value\":2},{\"id\":2,\"name\":\"kitchen\",\"value\":4},{\"id\":3,\"name\":\"uncle\",\"value\":1},{\"id\":4,\"name\":\"grandfather\",\"value\":5},{\"id\":5,\"name\":\"family\",\"value\":3}],\"lang\":\"EN\"},\"answer\":\"\",\"is_show_switch\":false}'),(41,'Bạn nghe được gì?','Buddy','QuesHearSelect','{\"id\":4,\"question_text\":{\"name\":\"Bạn nghe được gì?\",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"Baby\",\"value\":1},{\"id\":2,\"name\":\"Bunny\",\"value\":2},{\"id\":3,\"name\":\"Buddy\",\"value\":3},{\"id\":4,\"name\":\"Bungalow\",\"value\":4}],\"lang\":\"EN\"},\"answer\":\"Buddy\",\"is_show_switch\":false}'),(42,'Nhấn vào những gì bạn nghe','My parents love me','QuesHearSelectMulti','{\"id\":5,\"question_text\":{\"name\":\"Nhấn vào những gì bạn nghe\",\"text\":\"\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"me\",\"value\":1},{\"id\":2,\"name\":\"love\",\"value\":2},{\"id\":3,\"name\":\"mom\",\"value\":3},{\"id\":4,\"name\":\"My\",\"value\":4},{\"id\":5,\"name\":\"and\",\"value\":5},{\"id\":6,\"name\":\"parents\",\"value\":6}],\"lang\":\"EN\"},\"answer\":\"My parents love me\",\"is_show_switch\":true}'),(43,'Đọc lại câu này','I live with my parents','QuesSpeak','{\"id\":6,\"question_text\":{\"name\":\"Đọc lại câu này\",\"text\":\"I live with my parents and my sister\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[],\"lang\":\"EN\"},\"answer\":\"I live with my parents\",\"is_show_switch\":false}'),(44,'Viết lại bằng tiếng Việt','Bố tôi 30 tuổi','QuesMultiWords','{\"id\":1,\"question_text\":{\"name\":\"Viết lại bằng tiếng Việt\",\"text\":\"My dad is 30 years old\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"tôi\",\"value\":1},{\"id\":2,\"name\":\"30\",\"value\":2},{\"id\":3,\"name\":\"Bố\",\"value\":3},{\"id\":4,\"name\":\"tuổi\",\"value\":4},{\"id\":5,\"name\":\"Hai\",\"value\":5},{\"id\":6,\"name\":\"vâng\",\"value\":6},{\"id\":7,\"name\":\"có\",\"value\":7},{\"id\":8,\"name\":\"này\",\"value\":8}],\"lang\":\"VN\"},\"answer\":\"Bố tôi 30 tuổi\",\"is_show_switch\":true}'),(45,'Làm sao để nói chào buổi sáng?','son','QuesSelectHorizon','{\"id\":2,\"question_text\":{\"name\":\"Làm sao để nói \\\"con trai?\\\"\",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"son\",\"value\":1},{\"id\":2,\"name\":\"hi\",\"value\":2},{\"id\":3,\"name\":\"dad\",\"value\":3}],\"lang\":\"EN\"},\"answer\":\"son\",\"is_show_switch\":false}'),(46,'Chọn cặp từ','','QuesSelectPair','{\"id\":3,\"question_text\":{\"name\":\"Chọn cặp từ\",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"bố\",\"value\":1},{\"id\":2,\"name\":\"mẹ\",\"value\":2},{\"id\":3,\"name\":\"con trai\",\"value\":3},{\"id\":4,\"name\":\"con gái\",\"value\":4},{\"id\":5,\"name\":\"chú/bác\",\"value\":5}],\"arr2\":[{\"id\":1,\"name\":\"son\",\"value\":3},{\"id\":2,\"name\":\"uncle\",\"value\":5},{\"id\":3,\"name\":\"daughter\",\"value\":4},{\"id\":4,\"name\":\"dad\",\"value\":1},{\"id\":5,\"name\":\"mom\",\"value\":2}],\"lang\":\"EN\"},\"answer\":\"\",\"is_show_switch\":false}'),(47,'Bạn nghe được gì?','Buddy','QuesHearSelect','{\"id\":4,\"question_text\":{\"name\":\"Bạn nghe được gì?\",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"Mom\",\"value\":1},{\"id\":2,\"name\":\"Hunt\",\"value\":2},{\"id\":3,\"name\":\"Month\",\"value\":3},{\"id\":4,\"name\":\"Most\",\"value\":4}],\"lang\":\"EN\"},\"answer\":\"Red\",\"is_show_switch\":false}'),(48,'Nhấn vào những gì bạn nghe','My parents love me','QuesHearSelectMulti','{\"id\":5,\"question_text\":{\"name\":\"Nhấn vào những gì bạn nghe\",\"text\":\"\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"hot\",\"value\":1},{\"id\":2,\"name\":\"I\",\"value\":2},{\"id\":3,\"name\":\"two\",\"value\":3},{\"id\":4,\"name\":\"hat\",\"value\":4},{\"id\":5,\"name\":\"have \",\"value\":5},{\"id\":6,\"name\":\"sisters\",\"value\":6}],\"lang\":\"EN\"},\"answer\":\"I have two sisters\",\"is_show_switch\":true}'),(49,'Đọc lại câu này','I live with my parents','QuesSpeak','{\"id\":6,\"question_text\":{\"name\":\"Đọc lại câu này\",\"text\":\"He has three brothers\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[],\"lang\":\"EN\"},\"answer\":\"He has three brothers\",\"is_show_switch\":false}'),(50,'Viết lại bằng tiếng Việt','Bố tôi 30 tuổi','QuesMultiWords','{\"id\":1,\"question_text\":{\"name\":\"Viết lại bằng tiếng Việt\",\"text\":\"My dad and my mom\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"tôi\",\"value\":1},{\"id\":2,\"name\":\"và\",\"value\":2},{\"id\":3,\"name\":\"Bố\",\"value\":3},{\"id\":4,\"name\":\"tôi\",\"value\":4},{\"id\":5,\"name\":\"Hai\",\"value\":5},{\"id\":6,\"name\":\"mẹ\",\"value\":6},{\"id\":7,\"name\":\"có\",\"value\":7},{\"id\":8,\"name\":\"này\",\"value\":8}],\"lang\":\"VN\"},\"answer\":\"Bố tôi và mẹ tôi\",\"is_show_switch\":true}'),(51,'Làm sao để nói chào buổi sáng?','son','QuesSelectHorizon','{\"id\":2,\"question_text\":{\"name\":\"Làm sao để nói \\\"bố mẹ?\\\"\",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"son\",\"value\":1},{\"id\":2,\"name\":\"parents\",\"value\":2},{\"id\":3,\"name\":\"dad\",\"value\":3}],\"lang\":\"EN\"},\"answer\":\"parents\",\"is_show_switch\":false}'),(52,'Chọn cặp từ','','QuesSelectPair','{\"id\":3,\"question_text\":{\"name\":\"Chọn cặp từ\",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"bố\",\"value\":1},{\"id\":2,\"name\":\"mẹ\",\"value\":2},{\"id\":3,\"name\":\"con trai\",\"value\":3},{\"id\":4,\"name\":\"con gái\",\"value\":4},{\"id\":5,\"name\":\"chú/bác\",\"value\":5}],\"arr2\":[{\"id\":1,\"name\":\"son\",\"value\":3},{\"id\":2,\"name\":\"uncle\",\"value\":5},{\"id\":3,\"name\":\"daughter\",\"value\":4},{\"id\":4,\"name\":\"dad\",\"value\":1},{\"id\":5,\"name\":\"mom\",\"value\":2}],\"lang\":\"EN\"},\"answer\":\"\",\"is_show_switch\":false}'),(53,'Bạn nghe được gì?','Buddy','QuesHearSelect','{\"id\":4,\"question_text\":{\"name\":\"Bạn nghe được gì?\",\"text\":\"\",\"lang\":\"VN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"Uncle\",\"value\":1},{\"id\":2,\"name\":\"Under\",\"value\":2},{\"id\":3,\"name\":\"Undone\",\"value\":3},{\"id\":4,\"name\":\"Undated\",\"value\":4}],\"lang\":\"EN\"},\"answer\":\"Uncle\",\"is_show_switch\":false}'),(54,'Nhấn vào những gì bạn nghe','My parents love me','QuesHearSelectMulti','{\"id\":5,\"question_text\":{\"name\":\"Nhấn vào những gì bạn nghe\",\"text\":\"\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[{\"id\":1,\"name\":\"mother\",\"value\":1},{\"id\":2,\"name\":\"my\",\"value\":2},{\"id\":3,\"name\":\"two\",\"value\":3},{\"id\":4,\"name\":\"is\",\"value\":4},{\"id\":5,\"name\":\"have \",\"value\":5},{\"id\":6,\"name\":\"She\",\"value\":6}],\"lang\":\"EN\"},\"answer\":\"She is my mother\",\"is_show_switch\":true}'),(55,'Đọc lại câu này','I live with my parents','QuesSpeak','{\"id\":6,\"question_text\":{\"name\":\"Đọc lại câu này\",\"text\":\"I love my family\",\"lang\":\"EN\"},\"arr_words\":{\"arr\":[],\"lang\":\"EN\"},\"answer\":\"I love my family\",\"is_show_switch\":false}');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AVG_ROW_LENGTH=327;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'Stock','09122693134','Dolorem error necessitatibus est ut accusantium. Blanditiis minima voluptatibus! At ex omnis. Laborum ut aperiam. Sit aut velit. Autem nostrum dolor.'),(2,'Sayre','09064816801','Voluptatem sit dicta provident consequatur consequuntur cumque. Omnis veritatis est ad ea quibusdam ipsam.'),(3,'Kimberely','09084562104','Et aspernatur voluptas. Necessitatibus laboriosam vel. In quidem molestiae? Quae odio minus; sed est quisquam? Aut voluptatem quaerat! Ut quae fugit. Nihil!'),(4,'Sammie','09858970947','Quis consectetur rerum. Asperiores sed corrupti. Et debitis sed; error asperiores voluptatem. Odio dignissimos et. Aut perspiciatis magni. Ab quia minima.'),(5,'Louie','09803239311','Ratione accusamus rerum et corporis facilis omnis. Iusto ut nisi voluptas non impedit sequi.'),(6,'Beverly','09849176885','Eveniet distinctio ut; doloremque exercitationem recusandae. Dolorem deserunt quae? Obcaecati quo porro. Corporis debitis sit. Quia eaque deleniti. Autem.'),(7,'Abbott','09061262235','Voluptatem sint velit quaerat quisquam. Quibusdam est enim aut. Et ut odio ea unde enim. Error rerum qui.'),(8,'Wilbur','09000490945','Obcaecati nesciunt sit officiis; enim obcaecati voluptas vitae. Ratione aut doloribus omnis soluta repellendus dicta! Dolorem similique voluptatem. Sed autem.'),(9,'Jim','09835732595','Iste praesentium sed. Quo numquam dolorum! Numquam porro praesentium. Unde dolor ipsam; corporis a velit. Tenetur eveniet est. Impedit maxime et! Rerum;'),(10,'Rosendo','09145111001','Quasi sit et quos voluptas vel libero. Aspernatur cumque dolorum quia voluptas earum amet.'),(11,'Jeremiah','09007995096','Ut natus qui dolorem corporis est eaque. Repellendus quaerat et voluptatem cum. Quis nisi maiores. Fugit odit natus? A eaque natus.'),(12,'Breaux','09816696820','Inventore perspiciatis amet error dolorum hic ea. Voluptatibus ut commodi labore deleniti autem labore.'),(13,'Betsey','09875989148','Vero voluptatem et. Ut ex iusto. Ut consequatur totam. Praesentium voluptatem eligendi. Et doloremque voluptates. Praesentium qui alias. Voluptatem nihil...'),(14,'Rutha','09098485049','Aspernatur autem rerum molestiae dolore. Perspiciatis laboriosam veniam perspiciatis? Mollitia ipsa illum quia natus repellat voluptatem.'),(15,'Field','09037938820','Voluptatum accusamus neque sed mollitia exercitationem sint. Sint et sint culpa doloremque nihil impedit...'),(16,'Faustino','09169558573','Atque ad et. Explicabo et enim! Explicabo asperiores molestiae; sunt nisi fuga. Aut doloribus sint. Accusantium quas rem? Facere sit voluptatem.'),(17,'Franz','09897562363','Aperiam mollitia et sit aspernatur architecto. Unde voluptatum aspernatur sunt. Blanditiis repellat omnis ut non aut libero!'),(18,'Alexis','09838614593','Aut est amet deserunt eos neque. Natus unde aut error fugit aut! Nesciunt dolorum quia quisquam fuga ut quasi. Corrupti cumque ut.'),(19,'Albertson','09132971857','Nobis aut possimus et labore laudantium enim.'),(20,'Natalia','09188011166','Asperiores et labore. Inventore ex perspiciatis! Iste laboriosam eveniet. Quia veritatis laborum? Vel qui repellendus. Quia ipsam ea. Aut facilis sit.'),(21,'Vincent','09135762795','Quas aspernatur odio aut quo iusto. Facere ipsam odit placeat! Ut sed eos qui totam et sit. A dolorem incidunt soluta rerum.'),(22,'Adah','09151730405','Id autem fugiat. Nihil harum qui. Alias omnis ut. Autem distinctio doloremque. Voluptas distinctio iste. Rerum qui inventore. Rem consequatur consequuntur.'),(23,'Hong','09038534334','Reiciendis in unde ut reprehenderit ut nesciunt. Omnis odio sed eius. Quia et sit repudiandae sint quia perspiciatis.'),(24,'Alexis','09006361446','Explicabo vero ea sunt dolorum enim omnis; iste officia dolor tempora vel dignissimos vitae.'),(25,'Marianne','09194369798','Consequatur architecto aperiam. Culpa cupiditate quidem. Alias voluptas excepturi. Soluta voluptas amet. Quam dolorem ut. Atque ullam voluptatum?'),(26,'Alejandro','09147191323','Laboriosam error sint aut iste amet a.'),(27,'Marlen','09848579388','Deserunt quia ut quod ut quod. Consequuntur quia voluptatem quo harum aut eligendi. Deleniti nobis exercitationem. Aliquam dolores natus? Possimus beatae.'),(28,'Adella','09048109327','Ad debitis sit. Laboriosam sunt quae. Eveniet natus ullam! Sed nesciunt ea. Sit distinctio nisi. Doloribus asperiores hic. Temporibus quaerat ut. Quasi...'),(29,'Vivien','09047801908','Odio sed dolore esse obcaecati ea est.'),(30,'Alica','09891597959','Qui rerum at iure ipsum consequatur repudiandae. Atque perspiciatis assumenda et deleniti voluptatem magnam.'),(31,'Pitts','09185051262','Natus labore quaerat; quo sunt eligendi. Esse non quo. Iusto sapiente doloremque. Explicabo est perspiciatis. Voluptas quia perspiciatis. Quibusdam sunt a.'),(32,'Anthony','09120112253','Et sit quia ullam dolores voluptas. Minima ut delectus omnis mollitia inventore laborum. Natus vitae ex error possimus quia autem.'),(33,'Emelda','09853126452','Ratione id illum; sit placeat repellat. Dolorem praesentium natus? Quia voluptatem ut. Nihil voluptate soluta? Dolorum iste perferendis. Est voluptatem.'),(34,'India','09013771830','Vel sit sed et possimus illo hic. Eum veritatis id! Voluptates minus ratione delectus at quas fugiat.'),(35,'Gary','09170265629','Veritatis voluptatem accusantium. Non nisi et. Obcaecati molestiae placeat! Voluptas natus error; aut est necessitatibus. Magnam deleniti natus. Tempore eius!'),(36,'Ada','09896987476','Culpa nihil perspiciatis; magnam iste assumenda. Unde deserunt mollitia? Debitis ut hic. Eum dolorem dolore! Velit doloremque non; cupiditate optio.'),(37,'Diego','09064648458','Necessitatibus quod labore sit itaque labore fugit. Sint perspiciatis omnis quia excepturi deserunt doloremque.'),(38,'Choi','09892025148','Nam voluptate ea quis voluptatem; omnis aut cumque officia animi sed. Omnis maiores itaque et cupiditate temporibus rerum.'),(39,'Wilhelm','09113204409','Repellat repellendus animi velit possimus nesciunt eum.'),(40,'Felipe','09196891140','Ut iste quisquam eius saepe ullam optio. Sapiente sit ut sint minus! Earum natus et. Consequatur est perspiciatis. Voluptatem error harum.'),(41,'Brunilda','09874188433','Aliquam beatae suscipit maiores unde porro repellat.'),(42,'Roni','09032012856','Eveniet tempore iste sequi quidem necessitatibus et. Sint earum maiores est aliquid eos debitis. Architecto doloribus quia officia labore cumque enim? Quam.'),(43,'Zula','09059768390','Tempora voluptas eveniet dolor a rerum voluptas.'),(44,'Cleotilde','09017541465','Dolorem perspiciatis dignissimos dolor corrupti aliquid. Qui minus quia quod aut. Sit amet id nihil magnam nam voluptatem.'),(45,'Despina','09009328369','Ut dolores aut sed ab neque explicabo.'),(46,'Carl','09859395489','Aut a voluptate. Obcaecati ea sed pariatur debitis ipsa? Voluptatem similique vitae soluta! Dolorem aliquid asperiores ut sed dolore id.'),(47,'Lesa','09032669673','Amet architecto voluptatum porro dolores perspiciatis officiis. Molestiae dicta fugiat alias assumenda sed nisi! Velit amet dignissimos recusandae illo...'),(48,'Addie','09058936574','Ut corporis consectetur. Omnis natus amet! Ipsam aut veritatis; itaque et aperiam. Accusantium voluptatem at. Iusto maiores eaque. Accusantium error unde...'),(49,'Alesia','09871549719','Distinctio aperiam numquam minus sit minima aut.'),(50,'Christian','09828354844','Qui et corporis; quam aliquam sunt iste; omnis ea pariatur nisi cupiditate impedit inventore. Iure nemo aut.');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topic` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AVG_ROW_LENGTH=3276 COMMENT='Bảng topic';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES (1,'Gọi đồ uống, chào hỏi'),(2,'Giới thiệu bản thân, miêu tả gia đình'),(3,'Mua quần áo'),(4,'Tả người, giao tiếp ở nhà hàng'),(5,'Nói chuyện trường lớp');
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` char(36) NOT NULL DEFAULT '',
  `user_name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `full_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` char(20) DEFAULT NULL,
  `image` text,
  `role` varchar(255) DEFAULT NULL,
  `target` int DEFAULT NULL,
  `point` int DEFAULT NULL,
  `gem` int DEFAULT NULL,
  `current_lesson_id` int DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AVG_ROW_LENGTH=329 COMMENT='Bảng người dùng';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('11cd3a51-3627-15e4-4b29-aef25fbc82b3','Keenan359','12345678','Adell Abrams','Gagne343@gmail.com','09856176093','user.jpg','learner',30,0,0,1,'2022-07-31'),('11cf33c0-44f7-725b-685f-4db9ab45a18c','Victor87','12345678','Mable Sena','psncc0538@gmail.com','09020898176','user.jpg','learner',20,0,0,1,'2021-11-09'),('1235d530-6191-4f13-4132-1fe60697734c','Langdon983','12345678','Rosario Beckman','Glendora.Hutto2@gmail.com','09868040919','user.jpg','learner',40,0,0,1,'2022-05-20'),('133d1062-2711-3cb4-5351-59dcbd91f22d','Celeste531','12345678','Carl Aleman','Brownlee@gmail.com','09119414810','user.jpg','learner',20,0,0,1,'2022-08-25'),('13855e01-6c0b-5cb9-5b7d-9d97eb2e0d66','David786','12345678','Dahlia Jolley','MilesSouthern8@gmail.com','09869513941','user.jpg','learner',40,0,0,1,'2021-12-02'),('13a3283b-3f77-17ac-bab9-81afd5456b90','Armando879','12345678','Alex Abrams','Acker234@example.com','09137967241','user.jpg','learner',130,0,0,1,'2022-07-13'),('13c1e966-4093-22d2-627d-9d97eb2e0d66','Frank19','12345678','Rudy Roach','FrederickWBrothers@gmail.com','09156187457','user.jpg','learner',20,0,0,1,'2021-10-24'),('151d1b07-74ea-566b-5614-cf07c7ad0773','Emelina2021','12345678','Lucio Abernathy','GailKilgore@gmail.com','09036232556','user.jpg','learner',20,0,0,1,'2021-12-26'),('152da10c-3c4c-24e3-677d-9d97eb2e0d66','Streeter1958','12345678','Leia Byers','bhgnlqsn_betelmgqzu@gmail.com','09893537770','user.jpg','learner',50,0,0,1,'2022-05-18'),('153913d6-421a-5191-4f32-1fe60697734c','Marty74','12345678','Kate Graves','MaiAbrams12@gmail.com','09106242652','user.jpg','learner',20,0,0,1,'2022-01-17'),('163dff40-45cc-1aac-2b82-5c64e076bbcf','Derrick1967','12345678','Alfonso Deleon','Sadler815@example.com','09867489006','user.jpg','learner',30,0,0,1,'2022-11-03'),('16927fb6-7472-3cae-30de-2f417b24e999','Adam2025','12345678','Malika Wentworth','Berger@gmail.com','09858536172','user.jpg','learner',20,0,0,1,'2022-03-27'),('16c92b58-2834-74f1-b2b9-81afd5456b90','Robins633','12345678','Leopoldo Alderman','Acosta387@example.com','09066962750','user.jpg','learner',120,0,0,1,'2022-07-05'),('17b8c65d-7b87-6e0f-2d61-aa21d0714907','Gabriel95','12345678','Howard Heath','Odelia_Acosta318@example.com','09014164181','user.jpg','learner',20,0,0,1,'2022-10-09'),('17c3b790-4d09-3a60-4bac-28d3b409e320','Jenkins1972','12345678','Russel Abraham','MaximoAMedeiros@nowhere.com','09867337379','user.jpg','learner',110,0,0,1,'2022-08-07'),('17c59359-4d4e-1ee0-49ac-28d3b409e320','Ashley2012','12345678','Monty Burk','SheenaAcker4@example.com','09172055872','user.jpg','learner',100,0,0,1,'2022-07-16'),('188ff888-1dfe-1881-4529-aef25fbc82b3','Small824','12345678','Bambi Woodward','SueM.Dillard@gmail.com','09837489591','user.jpg','learner',50,0,0,1,'2021-11-09'),('19473832-1c3b-50b9-283a-e116be82f154','Addie844','12345678','Adolfo Abney','BobbiOjeda323@nowhere.com','09108394252','user.jpg','learner',20,0,0,1,'2022-07-22'),('194814d6-1207-5f75-3e29-aef25fbc82b3','Malcolm823','12345678','Elina Wilhite','IsidroTalbert54@gmail.com','09850604813','user.jpg','learner',30,0,0,1,'2022-09-17'),('1998f087-5320-231d-567d-9d97eb2e0d66','Stanley2008','12345678','Raymundo Bottoms','English@gmail.com','09046000392','user.jpg','learner',30,0,0,1,'2022-01-28'),('1a72ef68-31f6-6771-b945-a68677dd5ef3','Acker66','12345678','Emiko Colbert','egjs2447@gmail.com','09147876752','user.jpg','learner',50,0,0,1,'2021-10-22'),('1aca12e5-2938-27be-45cd-da15c50e55e9','Ali4','12345678','Dalila Havens','DanialColby@nowhere.com','09137027902','user.jpg','learner',120,0,0,1,'2022-07-12'),('1afa1cab-40d2-3cb9-0aef-6265d9ea573b','Copeland983','12345678','Ollie Vernon','DamienGrisham8@example.com','09075551738','user.jpg','learner',90,0,0,1,'2022-10-19'),('1bdc4101-49d4-7623-2a82-5c64e076bbcf','Janie2012','12345678','Leah Ainsworth','August418@nowhere.com','09892703517','user.jpg','learner',140,0,0,1,'2022-06-15'),('1c301144-2654-7f4c-3906-db2ad9f95814','Abdul12','12345678','Michel Greene','dvxygzmz.kscuh@gmail.com','09192478093','user.jpg','learner',50,0,0,1,'2022-01-05'),('1c500c79-4acd-4d84-3c29-aef25fbc82b3','Esteban2015','12345678','Senaida Redmond','Gustavo_Acker5@gmail.com','09874694983','user.jpg','learner',30,0,0,1,'2022-08-03'),('1c5d7244-44c2-6838-597d-9d97eb2e0d66','Stanley12','12345678','Paige Welsh','Bayer@gmail.com','09171785681','user.jpg','learner',50,0,0,1,'2022-07-18'),('1c79ec51-6d21-780a-5132-1fe60697734c','Chae2013','12345678','Claretha Mcmahon','Queenie_Adame281@gmail.com','09145627007','user.jpg','learner',20,0,0,1,'2021-12-26'),('1c92c91e-2cb3-4bbd-2b61-aa21d0714907','Scarborough2026','12345678','Adelaida Ayala','jkwkg2922@nowhere.com','09077846880','user.jpg','learner',130,0,0,1,'2022-08-14'),('1ca61012-388a-7665-4332-1fe60697734c','Cary7','12345678','Regina Abraham','Julio_Abraham357@gmail.com','09848959734','user.jpg','learner',20,0,0,1,'2022-04-07'),('1ca8a715-657a-7643-667d-9d97eb2e0d66','Solomon21','12345678','Abby Whitmore','JerniganK@gmail.com','09113820922','user.jpg','learner',40,0,0,1,'2022-08-18'),('1cd42e09-417a-7575-b7b9-81afd5456b90','Jerald86','12345678','Golda Eaves','LoretaAbraham@example.com','09831634720','user.jpg','learner',130,0,0,1,'2022-10-25'),('1cd71dba-417f-27bf-2ade-2f417b24e999','Greg2006','12345678','Garry Sneed','Sykes592@gmail.com','09053707675','user.jpg','learner',40,0,0,1,'2022-02-17'),('1cf52b47-2235-4576-4929-aef25fbc82b3','Mckinley6','12345678','Addie Manuel','OlenBeltran756@gmail.com','09029541949','user.jpg','learner',50,0,0,1,'2022-08-18'),('1d924db9-12ea-7c5f-966e-03fef0add176','Demers2021','12345678','Benedict Demers','Demers@example.com','09121167549','user.jpg','learner',20,0,0,1,'2022-08-30'),('1dae7706-7c88-69b3-3606-db2ad9f95814','Elroy1971','12345678','Roman Ward','Howe5@gmail.com','09134453893','user.jpg','learner',30,0,0,1,'2022-02-12'),('1db13c47-13e4-2bc3-2bde-2f417b24e999','Abernathy2022','12345678','Barton Dunlap','fszut6746@gmail.com','09043596274','user.jpg','learner',40,0,0,1,'2022-01-18'),('1dea3389-4c50-2756-28de-2f417b24e999','Dalia745','12345678','Adrian Lemons','Batten@gmail.com','09157189968','user.jpg','learner',40,0,0,1,'2021-10-20'),('1e160c2f-73eb-5f31-4032-1fe60697734c','Parker1991','12345678','Jenelle Woodard','AddieEdgar@gmail.com','09184776176','user.jpg','learner',50,0,0,1,'2021-11-05'),('1e574bb9-3294-7d53-a2fa-27d59245c5d9','Kowalski1994','12345678','Agripina Mcclendon','LeonWitte8@gmail.com','09007863707','user.jpg','learner',50,0,0,1,'2022-05-05'),('1ecaf76a-4769-4c2c-5914-cf07c7ad0773','Reich5','12345678','Adelia Oneil','EmmittAbbott@gmail.com','09138169167','user.jpg','learner',40,0,0,1,'2022-10-13'),('1f265ca4-6dce-2e42-5014-cf07c7ad0773','Dennison5','12345678','Agnus Abbott','TanishaLopes@gmail.com','09146745886','user.jpg','learner',40,0,0,1,'2022-06-03'),('1f52e293-16f8-5331-4f51-59dcbd91f22d','Erin948','12345678','Lance Maynard','Edge@gmail.com','09124275640','user.jpg','learner',30,0,0,1,'2021-10-29'),('1fd15cdc-3d72-38f0-46cd-da15c50e55e9','Liana2000','12345678','Alease Ames','Coward61@example.com','09133706076','user.jpg','learner',140,0,0,1,'2022-10-03'),('201dc1c7-6083-3fbd-e3bc-80eebd861ac2','Cantu1974','12345678','Annemarie Cobbs','FrancescaGrigsby355@nowhere.com','09195408698','user.jpg','learner',30,0,0,1,'2022-08-05'),('20b2c186-721a-1d2d-b745-a68677dd5ef3','Adah395','12345678','Curt Munoz','MarianoBozeman@gmail.com','09103101046','user.jpg','learner',30,0,0,1,'2021-11-09'),('20d25c61-7957-3a83-4b51-59dcbd91f22d','Lenard1952','12345678','Lonnie Akins','Abernathy@gmail.com','09084297539','user.jpg','learner',20,0,0,1,'2022-04-03'),('21a5131f-1ce1-11bf-697d-9d97eb2e0d66','Keren185','12345678','Stanley Cisneros','Duane.Estes@gmail.com','09815188927','user.jpg','learner',50,0,0,1,'2022-03-31'),('21a52d98-639a-6a76-3061-aa21d0714907','Michal2020','12345678','Lester Melancon','EarnestStrauss885@example.com','09146764505','user.jpg','learner',70,0,0,1,'2022-06-04'),('23becab8-73ce-4e02-2c06-db2ad9f95814','Bates2017','12345678','Yevette Vanwinkle','Isidro_Orourke@gmail.com','09195404590','user.jpg','learner',30,0,0,1,'2022-02-06'),('23f7a1e3-6f7b-3463-3f32-1fe60697734c','Durand2023','12345678','Cordie Acker','Herb.Boggs1@gmail.com','09842902848','user.jpg','learner',20,0,0,1,'2022-08-16'),('246d0431-1d4e-6308-3f29-aef25fbc82b3','Cathern2004','12345678','Alec Kohler','cwioc32@gmail.com','09834554620','user.jpg','learner',40,0,0,1,'2021-12-10'),('24e25cc5-70fc-7fe3-577d-9d97eb2e0d66','Jamaal138','12345678','Bradford Meza','Maas146@gmail.com','09119729549','user.jpg','learner',50,0,0,1,'2021-11-24'),('259d2b20-6192-4e5d-aafa-27d59245c5d9','York2020','12345678','Lucius Ostrander','Alba1@gmail.com','09184677024','user.jpg','learner',50,0,0,1,'2021-11-27'),('25b12236-3506-2487-c045-a68677dd5ef3','Bob1994','12345678','Kaylee Souza','Danyell_Wilhite@gmail.com','09120278876','user.jpg','learner',20,0,0,1,'2022-05-15'),('25f3965e-12d8-47e7-976e-03fef0add176','Jason2014','12345678','Marya Labbe','LuigiBabin@example.com','09167836749','user.jpg','learner',100,0,0,1,'2022-06-14'),('262b7339-2a71-17bd-45ac-28d3b409e320','Jenifer691','12345678','Denice Abel','Akiko.Mata@example.com','09120250470','user.jpg','learner',90,0,0,1,'2022-09-18'),('26e9261b-547e-6dce-bd45-a68677dd5ef3','Keeley2029','12345678','Harold Mccutcheon','Babin2@gmail.com','09089859027','user.jpg','learner',40,0,0,1,'2022-08-17'),('26eca510-1d8f-729a-4829-aef25fbc82b3','Tish375','12345678','Adelaida Settle','Barham72@gmail.com','09808905006','user.jpg','learner',20,0,0,1,'2022-09-12'),('275ab1b9-73a0-34c4-3561-aa21d0714907','Menard2014','12345678','Harrison Carrion','EldridgeBillups@nowhere.com','09161523516','user.jpg','learner',80,0,0,1,'2022-08-16'),('2842146f-4469-3465-44ac-28d3b409e320','Kandy2021','12345678','Yanira Orosco','Malcolm123@example.com','09107158097','user.jpg','learner',40,0,0,1,'2022-06-06'),('292042da-1aa6-76c8-cb71-023dd9ee80a8','Robin1962','12345678','Emery Forrest','AbrahamLivingston@nowhere.com','09143978487','user.jpg','learner',90,0,0,1,'2022-06-14'),('297591ec-63f1-5502-b2fa-27d59245c5d9','Bigelow1966','12345678','Jame Andrade','Abraham73@gmail.com','09881853291','user.jpg','learner',50,0,0,1,'2022-02-16'),('2a63434e-17a5-5fbb-5814-cf07c7ad0773','Terrance2006','12345678','Brigette Pitts','GinoAbney@gmail.com','09805384943','user.jpg','learner',50,0,0,1,'2022-10-05'),('2aac4c2f-6bba-5827-33de-2f417b24e999','Abel4','12345678','Jarvis Allard','Dickson65@gmail.com','09018581911','user.jpg','learner',30,0,0,1,'2022-04-29'),('2acbee3a-5c89-66ff-abfa-27d59245c5d9','Ada1987','12345678','Daisey Shields','Burnett515@gmail.com','09152101657','user.jpg','learner',40,0,0,1,'2022-05-24'),('2b14ee0c-49be-4bbf-4d51-59dcbd91f22d','Shery1959','12345678','Shawn Harwell','Falls8@gmail.com','09161814553','user.jpg','learner',50,0,0,1,'2022-10-16'),('2b187df1-2701-43db-2ede-2f417b24e999','Adam1954','12345678','Jeromy Giles','Albina.Qualls@gmail.com','09824714638','user.jpg','learner',30,0,0,1,'2022-11-12'),('2bd0ed28-752b-6195-6b5f-4db9ab45a18c','Abraham1976','12345678','Temple Carranza','Mason@gmail.com','09835812492','user.jpg','learner',50,0,0,1,'2022-05-05'),('2c3ed621-4f84-7683-bc45-a68677dd5ef3','Massey1996','12345678','Teresa Almeida','CherylCabral@gmail.com','09894839295','user.jpg','learner',30,0,0,1,'2021-11-03'),('2d1187f2-76a0-7a6e-5a7d-9d97eb2e0d66','Bernardo2001','12345678','Abigail Bartels','urhch5707@gmail.com','09091058897','user.jpg','learner',50,0,0,1,'2022-11-11'),('2e5bba14-7e6a-7abc-b1fa-27d59245c5d9','Jolly418','12345678','Jason Crawford','CarmeloAlicea739@gmail.com','09837263960','user.jpg','learner',20,0,0,1,'2022-06-12'),('2e644c77-723d-57b9-2cde-2f417b24e999','Russel148','12345678','Abbie Alderman','Jenni.Gallegos937@gmail.com','09109123287','user.jpg','learner',30,0,0,1,'2022-08-16'),('2fe88f01-38a1-3b72-4329-aef25fbc82b3','Elton766','12345678','Evelyne Bohn','AveryCowan@gmail.com','09800542395','user.jpg','learner',50,0,0,1,'2021-10-24'),('30817f1e-6473-5a39-5214-cf07c7ad0773','Deloris1977','12345678','Carlotta Lachance','Luther48@gmail.com','09897929093','user.jpg','learner',50,0,0,1,'2021-11-06'),('309fd538-7a6c-39ce-b0fa-27d59245c5d9','Phillis2013','12345678','Luke Fairbanks','Vance.M_Applegate@gmail.com','09142428180','user.jpg','learner',40,0,0,1,'2021-11-01'),('31154dcf-356f-71c6-c971-023dd9ee80a8','Wenona2028','12345678','Alfonso Colley','ClintonCrum487@nowhere.com','09803365474','user.jpg','learner',60,0,0,1,'2022-09-03'),('3218ab5c-485e-125c-745f-4db9ab45a18c','Eliseo2018','12345678','Arden Solano','Christensen9@gmail.com','09804724344','user.jpg','learner',50,0,0,1,'2022-03-28'),('328abbda-5e71-524d-2d82-5c64e076bbcf','Maida2012','12345678','Rod Devries','Moreau@example.com','09189197399','user.jpg','learner',120,0,0,1,'2022-07-21'),('331a96bf-139a-47a4-635f-4db9ab45a18c','Ahern4','12345678','Kina Abraham','Huddleston@gmail.com','09089129510','user.jpg','learner',30,0,0,1,'2021-11-24'),('33348a66-6edd-1fde-c371-023dd9ee80a8','Grady4','12345678','Douglas Graves','Mcfarlane2@nowhere.com','09034079499','user.jpg','learner',110,0,0,1,'2022-09-30'),('33cdbc49-1e22-4ec1-22de-2f417b24e999','Brunilda677','12345678','Adeline Abraham','Thurman.Schofield52@gmail.com','09842914395','user.jpg','learner',40,0,0,1,'2022-10-01'),('33e1ea0d-501e-28d7-4751-59dcbd91f22d','Cathryn1965','12345678','Lucrecia Cason','Cleo_Berube432@gmail.com','09809396531','user.jpg','learner',30,0,0,1,'2022-02-12'),('33e901ea-54c3-3cd8-4632-1fe60697734c','Alia8','12345678','Clair Lira','GeraldDrury@gmail.com','09083542883','user.jpg','learner',40,0,0,1,'2022-11-08'),('34061b3b-5764-32f2-e0bc-80eebd861ac2','Abney561','12345678','Abraham Rizzo','Quintana@example.com','09881905588','user.jpg','learner',80,0,0,1,'2022-10-31'),('34632285-3a65-5f75-a6fa-27d59245c5d9','Eloise2005','12345678','Hans Montano','Bella.Weldon@gmail.com','09824987369','user.jpg','learner',20,0,0,1,'2022-01-09'),('34aa17f6-258c-422c-5251-59dcbd91f22d','Debby1971','12345678','Deshawn Pullen','CharleyBoucher@gmail.com','09877703046','user.jpg','learner',50,0,0,1,'2021-10-26'),('3507e409-5bc5-3974-2c82-5c64e076bbcf','Adrian497','12345678','Quyen Ames','AbramTownes@example.com','09017551525','user.jpg','learner',50,0,0,1,'2022-06-30'),('355788d5-65df-4ae7-3206-db2ad9f95814','Lemuel2','12345678','Henry Cobbs','WinifredPike@gmail.com','09098186103','user.jpg','learner',30,0,0,1,'2022-06-24'),('3607ada5-7e56-6e8f-4c51-59dcbd91f22d','Barry1968','12345678','Giovanna August','sgbruek7@gmail.com','09806622683','user.jpg','learner',50,0,0,1,'2022-08-24'),('3622e097-3b65-5400-c745-a68677dd5ef3','Derrick2018','12345678','Devon Aleman','Frank_Y_Vaughn89@gmail.com','09041318014','user.jpg','learner',30,0,0,1,'2021-12-29'),('36284e50-7813-2d40-3929-aef25fbc82b3','Casey31','12345678','Cathrine Southerland','FelixGoodrich@gmail.com','09067416078','user.jpg','learner',40,0,0,1,'2022-01-13'),('365e8ce2-7e27-5133-4429-aef25fbc82b3','Aleman2010','12345678','Ali Hayden','Baca@gmail.com','09802522677','user.jpg','learner',20,0,0,1,'2021-10-20'),('373c4bda-7436-26ca-43ac-28d3b409e320','Abreu188','12345678','Miles Mcdaniels','Odom@example.com','09072065828','user.jpg','learner',80,0,0,1,'2022-06-15'),('37e37fe4-28b0-2855-a9fa-27d59245c5d9','Rose532','12345678','Lavera Fishman','Link9@gmail.com','09176340707','user.jpg','learner',40,0,0,1,'2021-11-15'),('37eecc38-17b6-2e8c-a7fa-27d59245c5d9','Villarreal949','12345678','Lindy Abbott','Lemay@gmail.com','09023233088','user.jpg','learner',50,0,0,1,'2022-10-31'),('37ff8b06-73d5-5c6a-665f-4db9ab45a18c','Heckman472','12345678','Neville Triplett','NicolasF.Acevedo@gmail.com','09091069051','user.jpg','learner',40,0,0,1,'2021-10-23'),('38a77404-1724-6a3e-4a51-59dcbd91f22d','Dewayne542','12345678','Brandi Abney','AlexandraFierro@gmail.com','09035012428','user.jpg','learner',20,0,0,1,'2022-07-22'),('397335e2-2518-6df0-4e14-cf07c7ad0773','Ursula782','12345678','Maxie Parnell','CharlotteH.Reno@gmail.com','09887028203','user.jpg','learner',20,0,0,1,'2021-11-13'),('39a4494e-7df6-72c9-243a-e116be82f154','Applegate256','12345678','Theron Stauffer','Caraballo@nowhere.com','09026912851','user.jpg','learner',120,0,0,1,'2022-06-25'),('39e1a5b9-5e5b-7404-557d-9d97eb2e0d66','Alfonso219','12345678','Garry Metzger','MilanWeinstein@gmail.com','09163217522','user.jpg','learner',30,0,0,1,'2022-01-17'),('3a41c021-7f58-5de9-5032-1fe60697734c','Marisela9','12345678','Agnes Abernathy','Adah_Beeler@gmail.com','09062271360','user.jpg','learner',40,0,0,1,'2022-04-03'),('3a677296-2112-4a2f-9d79-6699ef6fde74','bndung2','12345678','','km25@example.com','','user.jpg','learner',20,0,0,1,NULL),('3a89640a-4fd7-6b8a-48ac-28d3b409e320','Breen1984','12345678','Marti Cunningham','Nieves@example.com','09027404094','user.jpg','learner',20,0,0,1,'2022-08-23'),('3ae3784c-2d94-77b4-2a61-aa21d0714907','Jerry1985','12345678','Barry Merchant','Stanfield@example.com','09188017645','user.jpg','learner',50,0,0,1,'2022-06-06'),('3b07953c-16e8-7ec9-2c61-aa21d0714907','Sparkle244','12345678','Florine Montalvo','LaraineKraft@nowhere.com','09190365305','user.jpg','learner',70,0,0,1,'2022-08-16'),('3b23e19e-51ef-1155-3306-db2ad9f95814','Wilmer399','12345678','Curt Barth','ValdaAbraham@gmail.com','09014810506','user.jpg','learner',30,0,0,1,'2022-03-22'),('3c080cca-713e-4c4c-a3fa-27d59245c5d9','Anglin1976','12345678','Fay Matson','Hurt774@gmail.com','09189658282','user.jpg','learner',40,0,0,1,'2022-10-15'),('3cefc2f2-1897-2f46-5714-cf07c7ad0773','Poindexter83','12345678','Lindsey Sykes','Osteen@gmail.com','09154558569','user.jpg','learner',40,0,0,1,'2021-10-20'),('3cf2fd41-4672-58e7-4629-aef25fbc82b3','Giordano617','12345678','Dale Gibson','Hightower956@gmail.com','09189028661','user.jpg','learner',30,0,0,1,'2022-05-26'),('3cf716d2-1621-775c-5051-59dcbd91f22d','Agustin49','12345678','Benjamin Roman','Marcelo.Arredondo@gmail.com','09138940221','user.jpg','learner',50,0,0,1,'2021-12-23'),('3d3d630f-5a99-6371-a4fa-27d59245c5d9','Alger2022','12345678','Vernon Tibbs','AbbySammons@gmail.com','09129714648','user.jpg','learner',30,0,0,1,'2022-08-23'),('3d4fa24c-2a60-31c0-2f82-5c64e076bbcf','Kunkel688','12345678','Bobby Antonio','Florence563@nowhere.com','09081607023','user.jpg','learner',110,0,0,1,'2022-10-14'),('3d91869d-59bb-7ade-4029-aef25fbc82b3','Baxter9','12345678','Kiana Abney','zlbsppcj.uqwirjcss@gmail.com','09174158721','user.jpg','learner',30,0,0,1,'2022-10-06'),('3d991ef6-694b-425e-b545-a68677dd5ef3','Agustin1966','12345678','Charlsie Alston','Annabelle_Slocum65@gmail.com','09006297132','user.jpg','learner',20,0,0,1,'2021-10-28'),('3fbc98de-53ac-5936-2e82-5c64e076bbcf','Adrian55','12345678','Thanh Proffitt','Norman9@nowhere.com','09825863348','user.jpg','learner',120,0,0,1,'2022-09-14'),('3fe537a4-3f0c-23cb-5a14-cf07c7ad0773','Alysia55','12345678','Ahmad Abney','GarrettAutry@gmail.com','09065496066','user.jpg','learner',30,0,0,1,'2022-05-08'),('4020bbf4-4681-6afb-c645-a68677dd5ef3','Aide1','12345678','Consuelo Acevedo','Alger766@gmail.com','09047707049','user.jpg','learner',30,0,0,1,'2022-10-10'),('4054ea66-5041-41df-5c7d-9d97eb2e0d66','Miranda1964','12345678','Arlene Michael','SalvatoreFAbernathy38@gmail.com','09021422621','user.jpg','learner',30,0,0,1,'2022-05-23'),('40e4d045-2b7c-3694-3c06-db2ad9f95814','Man1970','12345678','Andres Lemke','BoyceAlarcon@gmail.com','09165568548','user.jpg','learner',50,0,0,1,'2022-04-16'),('416fb62a-7aa6-6664-645f-4db9ab45a18c','Abrams87','12345678','Emely Shull','Alonzo.Robertson881@gmail.com','09854600414','user.jpg','learner',50,0,0,1,'2021-10-25'),('41e3c2dc-4443-12c2-c345-a68677dd5ef3','Page776','12345678','Maida Castellano','Mathis@gmail.com','09085336507','user.jpg','learner',40,0,0,1,'2021-11-21'),('420861d7-5dfc-669f-b9b9-81afd5456b90','Anthony963','12345678','Sue Sanborn','SanbornH@example.com','09896374951','user.jpg','learner',80,0,0,1,'2022-10-12'),('422659c3-452c-7297-b6b9-81afd5456b90','Conception19','12345678','Mikel Matlock','BartonEasterling@nowhere.com','09858270385','user.jpg','learner',80,0,0,1,'2022-07-28'),('4237540d-7107-1306-3006-db2ad9f95814','Ada1','12345678','Kevin Stephen','ebcskr9@gmail.com','09025998446','user.jpg','learner',20,0,0,1,'2022-02-09'),('434b53e5-236b-2683-3406-db2ad9f95814','Lashaunda85','12345678','Diego Farrow','August_Granados@gmail.com','09183234487','user.jpg','learner',50,0,0,1,'2022-06-18'),('440e6e3d-66ae-376f-29de-2f417b24e999','Angelika1960','12345678','Kirby Couture','Nance831@gmail.com','09834914279','user.jpg','learner',40,0,0,1,'2021-12-25'),('44295296-7d6c-5203-4a32-1fe60697734c','Sales2023','12345678','Benjamin Conley','Donald93@gmail.com','09042120566','user.jpg','learner',40,0,0,1,'2022-09-29'),('4452f261-297f-4695-263a-e116be82f154','Adam613','12345678','Adrien Wilkins','Darell.Mason@example.com','09195148000','user.jpg','learner',20,0,0,1,'2022-06-07'),('44a28e98-7776-6e2c-715f-4db9ab45a18c','Charlott7','12345678','Martha Colburn','Adame@gmail.com','09140378432','user.jpg','learner',20,0,0,1,'2022-02-01'),('44ee882f-7d40-4a4a-4c14-cf07c7ad0773','Thelma5','12345678','Timika Leger','psghzwuc415@gmail.com','09835484952','user.jpg','learner',20,0,0,1,'2021-12-18'),('451dee76-52c4-1d37-25de-2f417b24e999','Runyon2002','12345678','Marisa Aguilar','AlbertaCoburn@gmail.com','09127809626','user.jpg','learner',40,0,0,1,'2021-10-29'),('454caec2-3ac7-63d4-c245-a68677dd5ef3','Denese478','12345678','Ada Bellamy','Shook381@gmail.com','09128300644','user.jpg','learner',40,0,0,1,'2022-05-22'),('45bf67ed-5510-6953-c471-023dd9ee80a8','Neil2005','12345678','Epifania Ennis','dqtjwnhv_fyoeh@example.com','09039038217','user.jpg','learner',20,0,0,1,'2022-06-25'),('46313c15-7042-6c74-4129-aef25fbc82b3','Beach434','12345678','Colin Dobbins','Adam.Addison@gmail.com','09060576885','user.jpg','learner',30,0,0,1,'2021-10-20'),('46597d72-3e77-78f2-32de-2f417b24e999','Adam1992','12345678','Abbie Battle','Baron2@gmail.com','09887787948','user.jpg','learner',30,0,0,1,'2022-05-03'),('4760d71f-6e2f-5b32-19cb-66948daf6128','admin','12345678','Nathan Salisbury','uadm55@example.com','09825168740','user.jpg','admin',20,0,0,1,'2022-08-04'),('47f60f67-6087-2a86-abdb-e5d54223c257','Carlson9','12345678','Oliva Coble','Sturgill@example.com','09157694042','user.jpg','learner',20,5,0,2,'2022-08-15'),('4817b7dc-293a-6e36-4cac-28d3b409e320','Blackburn996','12345678','Alvaro Bryan','Hulda.Quintana@nowhere.com','09801487483','user.jpg','learner',120,0,0,1,'2022-09-09'),('489e2ed5-7249-2e77-0fef-6265d9ea573b','Lakesha117','12345678','Abe August','HassanHuskey@example.com','09145615079','user.jpg','learner',150,0,0,1,'2022-06-15'),('48bb6029-4c1c-360b-4b32-1fe60697734c','Lacresha81','12345678','Davis Hutchins','Lane_Silvers1@gmail.com','09190390416','user.jpg','learner',40,0,0,1,'2021-10-21'),('48ca29f0-6bb3-30cb-2e06-db2ad9f95814','Bourgeois1952','12345678','Daniele Hundley','drwopljy43@gmail.com','09802196484','user.jpg','learner',20,0,0,1,'2022-10-18'),('48cf7b00-3fee-40c7-4451-59dcbd91f22d','Dallas2017','12345678','Alexis Laflamme','Bobbitt71@gmail.com','09059525028','user.jpg','learner',40,0,0,1,'2022-01-25'),('4917d4e0-6c17-183d-5d14-cf07c7ad0773','Simonson2006','12345678','Adolph Collazo','BostonW43@gmail.com','09835981172','user.jpg','learner',50,0,0,1,'2022-07-11'),('497284d0-6d15-44f0-725f-4db9ab45a18c','Albertina484','12345678','Mirian Olvera','Blackmon@gmail.com','09852810900','user.jpg','learner',30,0,0,1,'2022-07-16'),('49d1be49-52b8-5731-cc71-023dd9ee80a8','Mackey1953','12345678','Lovetta Adair','cayor5@example.com','09100529854','user.jpg','learner',150,0,0,1,'2022-10-26'),('4a7bdb92-26fd-199c-a16e-03fef0add176','Olimpia376','12345678','Rudolf Lerma','lrlgut8063@example.com','09121075407','user.jpg','learner',110,0,0,1,'2022-06-10'),('4ada1214-1cc9-68ce-a26e-03fef0add176','Giuseppe1963','12345678','Ismael Mosby','GregorioHannon738@example.com','09119510834','user.jpg','learner',50,0,0,1,'2022-10-05'),('4bbe43c8-54c4-2288-ba45-a68677dd5ef3','Adaline653','12345678','Versie Andrade','kaxjucrg_kzwkwj@gmail.com','09819116124','user.jpg','learner',20,0,0,1,'2022-06-16'),('4bcddfb6-1b23-3887-a0fa-27d59245c5d9','Michele4','12345678','Casey Pleasant','Abraham63@gmail.com','09097699117','user.jpg','learner',50,0,0,1,'2022-02-02'),('4c7abf91-4ab5-15c7-735f-4db9ab45a18c','Oates362','12345678','Robt Lemieux','Charlton@gmail.com','09177800337','user.jpg','learner',30,0,0,1,'2022-03-10'),('4ce0c8ac-3369-5692-4729-aef25fbc82b3','Idella1978','12345678','Bettina Garvin','Wentz6@gmail.com','09174037763','user.jpg','learner',40,0,0,1,'2022-04-09'),('4cebf0a5-1a4d-4f81-43cd-da15c50e55e9','Alise2016','12345678','Corey Winter','Whitlow@nowhere.com','09194875880','user.jpg','learner',60,0,0,1,'2022-08-24'),('4d79d901-1edc-5c5b-0780-e8e2a817c80e','Burnham429','12345678','Selina Pfeiffer','HomerCalvin@example.com','09000260149','user.jpg','learner',50,25,0,1,'2022-06-25'),('4d7b21db-2e02-12b7-a9db-e5d54223c257','Aguilera','12345678','Winnifred','gxsgr25@example.com','09083886817','user.jpg',NULL,30,45,0,7,'2022-07-10'),('4dd618a0-3e4b-6ebb-5451-59dcbd91f22d','Mcnair2016','12345678','Casey Darby','CatriceLemke9@gmail.com','09019512608','user.jpg','learner',40,0,0,1,'2022-06-12'),('4e272fc4-7875-78d6-7d32-6a1673ffca7c','Quintin5','12345678','Marcos Abraham','qpzre411@example.com','09142022492','user.jpg','learner',20,10,0,3,'2022-09-20'),('4e4cf6da-15aa-295c-4e32-1fe60697734c','Vi9','12345678','Brock Mclaurin','apqt1991@gmail.com','09112099826','user.jpg','learner',30,0,0,1,'2022-09-11'),('4e572bd3-72d1-6a57-dfbc-80eebd861ac2','Lesli1960','12345678','Aleida Broadway','ValGavin256@nowhere.com','09011828527','user.jpg','learner',30,0,0,1,'2022-09-28'),('4e5afd6d-15e4-297c-5551-59dcbd91f22d','Addie641','12345678','Brent Andrew','EllanHeard@gmail.com','09884531491','user.jpg','learner',40,0,0,1,'2022-10-04'),('4ea5adc9-7ada-121c-c145-a68677dd5ef3','Lucia44','12345678','Mallie Almond','AdamWesley@gmail.com','09056769653','user.jpg','learner',20,0,0,1,'2021-12-17'),('4eceddac-7dc2-38ea-7bdd-867949feb8b5','Walter2005','12345678','Mervin Lyon','Cohen311@example.com','09180240505','user.jpg','learner',50,0,0,1,'2022-10-10'),('4ef639d0-752d-20f2-6c5f-4db9ab45a18c','Gorham385','12345678','Marquis Cowles','uxeaxrav6@gmail.com','09826650856','user.jpg','learner',20,0,0,1,'2022-04-27'),('4f590a34-7106-2c82-5b14-cf07c7ad0773','Corey2027','12345678','Lynette Pulley','beqhzos0@gmail.com','09879000968','user.jpg','learner',40,0,0,1,'2022-09-27'),('4f605b8a-4f99-167a-6a5f-4db9ab45a18c','Abe2000','12345678','Alida Anglin','King@gmail.com','09856727242','user.jpg','learner',50,0,0,1,'2022-06-26'),('4f9256ae-2083-589d-5232-1fe60697734c','Ariel855','12345678','Cherelle Abel','Milagros_PMarcus648@gmail.com','09020207541','user.jpg','learner',50,0,0,1,'2022-07-20'),('4f933a74-5c22-3d68-4d14-cf07c7ad0773','Huskey2023','12345678','Mickey Brubaker','jcoy5056@gmail.com','09126404812','user.jpg','learner',30,0,0,1,'2022-02-15'),('4fcff059-456a-5a1c-0def-6265d9ea573b','Adell2028','12345678','Ayanna Almanza','ajrcqvyo6686@example.com','09032295613','user.jpg','learner',140,0,0,1,'2022-06-06'),('4fd45ce7-26c4-26e7-4a29-aef25fbc82b3','Matt47','12345678','Nakita Tomlin','Sloan36@gmail.com','09056996523','user.jpg','learner',40,0,0,1,'2022-01-22'),('500d1aa0-79f9-7b9d-6c7d-9d97eb2e0d66','Anthony589','12345678','Alva Lord','HortenseBoyles228@gmail.com','09869893189','user.jpg','learner',40,0,0,1,'2021-10-27'),('501d90e1-762e-6233-607d-9d97eb2e0d66','Brady8','12345678','Anne Benitez','Barnhart42@gmail.com','09012786422','user.jpg','learner',50,0,0,1,'2022-03-31'),('503e949b-2746-2661-3b06-db2ad9f95814','Fran226','12345678','Dawn Schaffer','Donita_Hutson5@gmail.com','09818128116','user.jpg','learner',30,0,0,1,'2022-08-15'),('50c7ba39-2833-3459-44cd-da15c50e55e9','Louise223','12345678','Patrick Nunes','BoyceMiner7@nowhere.com','09800868559','user.jpg','learner',90,0,0,1,'2022-06-25'),('50d28ed9-71cf-6cc4-b4b9-81afd5456b90','Alissa2013','12345678','Aubrey Berryman','Landon.Robbins@example.com','09869617260','user.jpg','learner',90,0,0,1,'2022-09-08'),('50f6e921-3444-6bd3-5414-cf07c7ad0773','Beth1999','12345678','Arron Barnard','Andres.Y.Knowlton@gmail.com','09038481934','user.jpg','learner',20,0,0,1,'2021-10-24'),('511292d9-1a33-73d8-c571-023dd9ee80a8','Sean2028','12345678','Elicia Hatchett','Hiram.FAponte@example.com','09144153208','user.jpg','learner',130,0,0,1,'2022-11-03'),('51b501de-1b67-1d6c-21de-2f417b24e999','Breana957','12345678','Dave Browder','Adam.Deloach46@gmail.com','09880897357','user.jpg','learner',50,0,0,1,'2021-10-30'),('51e7f3cf-6de1-7384-4551-59dcbd91f22d','Winnifred838','12345678','Jefferey Abrams','Alfredo_Barker@gmail.com','09002325138','user.jpg','learner',20,0,0,1,'2021-11-12'),('52f7159d-5242-1af8-9c7d-e8c757976496','Tommie793','12345678','Hobert Adam','Ackerman@example.com','09817067150','user.jpg','learner',20,0,0,1,'2022-06-12'),('532dcba6-7236-5e52-c771-023dd9ee80a8','Johnson2017','12345678','Miles Romeo','ujtgwg24@nowhere.com','09120057456','user.jpg','learner',50,0,0,1,'2022-10-19'),('539e5421-14cb-15fa-5151-59dcbd91f22d','Alvaro96','12345678','Antony Adler','ukjt742@gmail.com','09822353149','user.jpg','learner',30,0,0,1,'2022-02-19'),('53b0102d-137c-125d-6a7d-9d97eb2e0d66','Alves1996','12345678','Adolfo Mark','FrankPassmore265@gmail.com','09041991036','user.jpg','learner',40,0,0,1,'2022-06-11'),('53f6b59c-6af6-4204-6292-08c864661f9c','Krissy913','12345678','Jeanna Maxwell','ymqukl565@example.com','09027677982','user.jpg','learner',50,0,0,1,'2022-09-16'),('55985acc-31fd-7bbd-9e6e-03fef0add176','Lawrence2028','12345678','Dale Clancy','Adolph.BEngle@example.com','09198169945','user.jpg','learner',70,0,0,1,'2022-06-26'),('55e776e0-3f12-64e9-b1b9-81afd5456b90','Lucile262','12345678','Abraham Abernathy','DedeAngel@example.com','09154859506','user.jpg','learner',80,0,0,1,'2022-06-12'),('56087135-3040-2fc6-4651-59dcbd91f22d','Emelda1953','12345678','Nicola Neil','DeanRutledge@gmail.com','09014088919','user.jpg','learner',40,0,0,1,'2022-08-30'),('5608f456-3b97-2e05-5d92-08c864661f9c','Elise28','12345678','Jerome Gipson','Hoover@example.com','09047630471','user.jpg','learner',20,0,0,1,'2022-07-13'),('56435623-348d-77cc-3506-db2ad9f95814','Anderson71','12345678','Ellis Kaiser','Salas855@gmail.com','09821269575','user.jpg','learner',30,0,0,1,'2022-09-28'),('5660d465-6020-48f3-75dd-867949feb8b5','Johnston1952','12345678','Laura Barger','phkfhcmu_jjjdjuvrms@example.com','09804878184','user.jpg','learner',20,0,0,1,'2022-07-02'),('56957607-562f-5d6d-1ecb-66948daf6128','Gatewood3','12345678','Glynis Redman','AbigailBloom@example.com','09000642302','user.jpg','learner',20,0,0,1,'2022-06-22'),('56f84f1f-5935-516a-2e61-aa21d0714907','Loria2012','12345678','Abigail Levin','Cronin@example.com','09849312984','user.jpg','learner',80,0,0,1,'2022-06-29'),('5760a115-1eab-6d66-40cd-da15c50e55e9','Akiko152','12345678','Demetrius Ponder','HallieBland573@nowhere.com','09129863839','user.jpg','learner',150,0,0,1,'2022-10-26'),('581e2086-15a4-280f-c445-a68677dd5ef3','Ricky216','12345678','Abram Abreu','Adame83@gmail.com','09887063350','user.jpg','learner',20,0,0,1,'2022-04-25'),('584f63ed-5bc6-7611-655f-4db9ab45a18c','Jonathan133','12345678','Angelika Hinkle','Adam_Winter@gmail.com','09104154143','user.jpg','learner',40,0,0,1,'2021-12-14'),('58ee428e-2bf4-5ed7-4532-1fe60697734c','Garvin1985','12345678','Abigail Humphries','Andres_Evers@gmail.com','09877459596','user.jpg','learner',20,0,0,1,'2022-05-27'),('59152223-3098-5bce-2f06-db2ad9f95814','Akins8','12345678','Tosha Fischer','Behrens@gmail.com','09009896438','user.jpg','learner',50,0,0,1,'2022-01-14'),('5936ed98-4e22-6872-4b14-cf07c7ad0773','Abel7','12345678','Adolfo Bergeron','Myles@gmail.com','09170939660','user.jpg','learner',20,0,0,1,'2022-02-26'),('594fce29-7250-6e32-e4bc-80eebd861ac2','Lyndsay191','12345678','Alessandra Hurst','Roldan7@example.com','09190941466','user.jpg','learner',100,0,0,1,'2022-07-25'),('59cf635f-4ec7-68bb-5c14-cf07c7ad0773','Shaun2','12345678','Avery Russ','Hortensia.Griffis@gmail.com','09019120057','user.jpg','learner',20,0,0,1,'2021-12-02'),('59d19422-6657-452e-a7db-e5d54223c257','Chantel318','12345678','Denisha Mcginnis','FelipaAbernathy@nowhere.com','09890507234','user.jpg','learner',50,0,0,1,'2022-11-03'),('59ee723f-63f6-510b-9b6e-03fef0add176','Everett2012','12345678','Cori Briscoe','lziws4@nowhere.com','09143155398','user.jpg','learner',60,0,0,1,'2022-10-07'),('5a9554f9-36d3-77f6-0cef-6265d9ea573b','Abbie9','12345678','Jesus Zamora','KentPotts@example.com','09853272416','user.jpg','learner',90,0,0,1,'2022-06-10'),('5ae2d70b-201d-3e23-7f32-6a1673ffca7c','Abreu232','12345678','Gertie Abel','sdyfq9887@nowhere.com','09015742683','user.jpg','learner',20,0,0,1,'2022-09-10'),('5af810fe-50f9-4b96-4932-1fe60697734c','Taunya1985','12345678','Carlena Witte','DomenicWallace@gmail.com','09860436472','user.jpg','learner',50,0,0,1,'2022-06-01'),('5afdd3ed-3725-53a8-755f-4db9ab45a18c','Johnsie1984','12345678','Barrett Gerard','Vega@gmail.com','09170671753','user.jpg','learner',40,0,0,1,'2022-09-11'),('5b2fcdf5-2050-7cb2-8f90-67245e8b283e','Stephan1976','12345678','Burton Bunnell','Caldwell@example.com','09014516278','user.jpg','learner',20,0,0,1,'2022-07-04'),('5b3bc1f8-614f-6801-46ac-28d3b409e320','Corey1957','12345678','Maisie Comer','Staples@example.com','09030620264','user.jpg','learner',70,0,0,1,'2022-08-03'),('5badffd8-18c8-3f76-6492-08c864661f9c','Stephine2005','12345678','Freeman Blevins','Rosalee_RMatney542@example.com','09172564455','user.jpg','learner',50,0,0,1,'2022-10-31'),('5be8e48b-1eb8-7ace-e1bc-80eebd861ac2','Belkis2004','12345678','Abigail Mattox','LavetteBurgos@example.com','09892979710','user.jpg','learner',140,0,0,1,'2022-06-20'),('5c63ba8f-59bb-6d2f-9990-67245e8b283e','Paris2005','12345678','Drew Burt','ConnieAllard@example.com','09066121683','user.jpg','learner',20,0,0,1,'2022-07-22'),('5c81fc59-2d92-582c-a1fa-27d59245c5d9','Maier1999','12345678','Terrell Fryer','BeauCRobins59@gmail.com','09877915305','user.jpg','learner',30,0,0,1,'2022-01-25'),('5d6c08b9-2cdb-5cc3-3e32-1fe60697734c','Crisp598','12345678','Tresa Mallory','Mitsuko_Braden@gmail.com','09094135392','user.jpg','learner',50,0,0,1,'2022-10-01'),('5e453b39-4d0f-78a8-4232-1fe60697734c','Adolph2013','12345678','Jarrett Moses','Robertson@gmail.com','09899536088','user.jpg','learner',30,0,0,1,'2022-03-23'),('5e553b4b-7317-5418-647d-9d97eb2e0d66','Alene1966','12345678','Carlee Swafford','Rosenbaum13@gmail.com','09050546609','user.jpg','learner',50,0,0,1,'2022-08-05'),('5e88eba9-2ccc-6101-5114-cf07c7ad0773','Alex2','12345678','Rich Nava','Brian.Ahmed637@gmail.com','09108547052','user.jpg','learner',40,0,0,1,'2022-03-08'),('5e94e81b-2c68-4f65-5514-cf07c7ad0773','Corrina6','12345678','Sherill Connelly','Trammell@gmail.com','09854460052','user.jpg','learner',20,0,0,1,'2022-05-02'),('5f4a6385-33bd-5c30-3082-5c64e076bbcf','Allen838','12345678','Sabrina Carman','Carl@example.com','09859210249','user.jpg','learner',130,0,0,1,'2022-09-27'),('5f593e45-1d82-4cfa-675f-4db9ab45a18c','Delmar2017','12345678','Alva Westfall','jkwmazig.ibcw@gmail.com','09849858197','user.jpg','learner',20,0,0,1,'2022-10-09'),('5f6d0a72-78f4-201c-587d-9d97eb2e0d66','Abdul53','12345678','Alphonso Artis','Knox41@gmail.com','09157275896','user.jpg','learner',20,0,0,1,'2021-11-16'),('5f8398fd-2f1f-16f1-b8b9-81afd5456b90','Antione1964','12345678','Adolph Harder','fnjoihww86@example.com','09079615508','user.jpg','learner',30,0,0,1,'2022-10-11'),('5fbbda7e-7566-416f-9b7d-e8c757976496','Abbie3','12345678','Myrtis Thornhill','TraciCloud@nowhere.com','09095752975','user.jpg','learner',20,0,0,1,'2022-09-02'),('60084fec-3509-2779-8432-6a1673ffca7c','Lakeesha764','12345678','Abel Christian','Aiken@example.com','09068539460','user.jpg','learner',50,0,0,1,'2022-10-30'),('6081dc00-4df0-5184-9690-67245e8b283e','Nathan716','12345678','Abram Fenton','Darrell_Mcintyre21@example.com','09875596590','user.jpg','learner',20,0,0,1,'2022-06-21'),('608e257f-4efd-530f-9ffa-27d59245c5d9','Duane1995','12345678','Julienne Baxley','Linwood.Alba@gmail.com','09007774305','user.jpg','learner',50,0,0,1,'2022-08-15'),('60d419e7-60ab-6508-3806-db2ad9f95814','Cassandra7','12345678','Denita Ocasio','Pritchett@gmail.com','09820273626','user.jpg','learner',50,0,0,1,'2022-03-26'),('612687ec-11c1-50f0-617d-9d97eb2e0d66','Nedra2010','12345678','Pearlie Garrett','MetaAshton@gmail.com','09894806936','user.jpg','learner',50,0,0,1,'2022-10-26'),('61359946-6b4d-3c0a-0bef-6265d9ea573b','Arletha2011','12345678','Belia Stackhouse','Alise.Bailey@example.com','09035360156','user.jpg','learner',100,0,0,1,'2022-06-01'),('61a45b9e-55c1-3dbb-f917-7000f455f3d5','Christian1985','12345678','Lizzie Krueger','SanfordRivas721@example.com','09893309795','user.jpg','learner',20,0,0,1,'2022-08-29'),('622f02a6-3578-18a5-4432-1fe60697734c','Hamilton2000','12345678','Marcelino Larson','Washington419@gmail.com','09173954922','user.jpg','learner',20,0,0,1,'2022-06-25'),('62d0562c-4e46-5f5e-6d5f-4db9ab45a18c','Adler61','12345678','Idalia Halsey','Thaddeus.Wirth599@gmail.com','09865467442','user.jpg','learner',40,0,0,1,'2022-03-16'),('62d5265a-5d7b-2bca-223a-e116be82f154','Bacon2019','12345678','Thresa Homer','KingCruz62@example.com','09870564867','user.jpg','learner',70,0,0,1,'2022-09-28'),('62f0ccc4-561b-17f0-47ac-28d3b409e320','Mercedes25','12345678','Rudolf Crews','dqobjeyg_dkyulj@example.com','09897049508','user.jpg','learner',130,0,0,1,'2022-06-05'),('635a96d9-5086-6f6e-5314-cf07c7ad0773','Julianne9','12345678','Marvis Mcnutt','RoselleFrederick92@gmail.com','09017723523','user.jpg','learner',30,0,0,1,'2022-10-07'),('635ff3b6-49bd-6ca4-a06e-03fef0add176','Joleen1979','12345678','Arlette Hawley','LornaFenner8@example.com','09108585128','user.jpg','learner',50,0,0,1,'2022-07-31'),('6371a23e-216e-7f14-dcbc-80eebd861ac2','Montalvo2008','12345678','Jame Abney','Rucker3@example.com','09813610145','user.jpg','learner',120,0,0,1,'2022-09-25'),('63a68ba7-7551-7c97-27de-2f417b24e999','Stanford1974','12345678','Tuan Almond','ChrisE.Clarke94@gmail.com','09854747214','user.jpg','learner',50,0,0,1,'2021-11-30'),('63ec3b6f-46c2-1e0f-26de-2f417b24e999','Majorie2028','12345678','Nakisha Hemphill','Abraham825@gmail.com','09830131665','user.jpg','learner',50,0,0,1,'2022-08-08'),('63f025fb-41b2-2494-637d-9d97eb2e0d66','Wilfredo1957','12345678','Ada Ezell','ArielleClifford@gmail.com','09091480401','user.jpg','learner',20,0,0,1,'2022-01-12'),('63f24943-19ac-7549-be45-a68677dd5ef3','Marcus1950','12345678','Dominica Bozeman','BronwynIsaacson24@gmail.com','09152467694','user.jpg','learner',20,0,0,1,'2022-06-10'),('64112187-6592-24f7-afb9-81afd5456b90','Joel528','12345678','Abdul Whiteside','Madelaine.Laird63@example.com','09194806999','user.jpg','learner',30,0,0,1,'2022-09-17'),('6429b0f4-1391-7f32-9390-67245e8b283e','Jefferies7','12345678','Corey Musgrove','pcvmbj959@nowhere.com','09862000439','user.jpg','learner',50,0,0,1,'2022-08-16'),('64376cea-3e8e-15d2-3b29-aef25fbc82b3','Moises5','12345678','Abby Webster','FindleyF@gmail.com','09861754638','user.jpg','learner',40,0,0,1,'2022-05-23'),('645f2e5c-7670-66a0-6092-08c864661f9c','Abdul134','12345678','Malcolm Coward','Alley91@example.com','09879396695','user.jpg','learner',30,0,0,1,'2022-09-15'),('649ba936-5102-68b8-2dde-2f417b24e999','Troy66','12345678','Laurette Townsend','Saxon547@gmail.com','09068161739','user.jpg','learner',20,0,0,1,'2021-11-29'),('64b8d5ee-19dc-2eb2-5e7d-9d97eb2e0d66','Wilkes843','12345678','Christa Abraham','Hunter_Ackerman@gmail.com','09089816976','user.jpg','learner',30,0,0,1,'2021-10-28'),('64d11c11-267a-7360-e2bc-80eebd861ac2','Weddle2017','12345678','Alton Mcclure','DannieReddy@example.com','09151688952','user.jpg','learner',100,0,0,1,'2022-10-01'),('64f5c8d8-7c60-4d97-3a06-db2ad9f95814','Justin83','12345678','Gladys Worden','Kim@gmail.com','09842793967','user.jpg','learner',40,0,0,1,'2021-12-05'),('6500ebf2-7648-3570-4229-aef25fbc82b3','Jeffrey1997','12345678','Abby Sammons','EbonyLeal9@gmail.com','09873056726','user.jpg','learner',50,0,0,1,'2022-08-03'),('6562cd21-6e22-4c49-9c6e-03fef0add176','Adan1984','12345678','Reynaldo Beard','Jacklyn_Moseley474@nowhere.com','09076731013','user.jpg','learner',30,0,0,1,'2022-08-10'),('6591fa4c-1366-6d19-b845-a68677dd5ef3','Aleida1953','12345678','Hue Reece','Gannon24@gmail.com','09078912727','user.jpg','learner',30,0,0,1,'2021-10-28'),('6764ab86-6fcc-2757-8032-6a1673ffca7c','Alcala1977','12345678','Lilla Perez','Russell@nowhere.com','09044328100','user.jpg','learner',50,0,0,1,'2022-10-20'),('676a0b19-3adf-6877-3c32-1fe60697734c','Michael15','12345678','Michael Johnson','Michael_Johnson145@gmail.com','09177132164','user.jpg','learner',20,0,0,1,'2021-10-20'),('676ffbfa-2e58-61a0-3d06-db2ad9f95814','Felton193','12345678','Adrien Leclair','Alvarado@gmail.com','09844787665','user.jpg','learner',50,0,0,1,'2022-02-07'),('67a50322-2c7f-1b78-9d6e-03fef0add176','Branden96','12345678','Leroy Carney','Mcafee679@example.com','09811931694','user.jpg','learner',60,0,0,1,'2022-06-06'),('67b5c284-1c59-4a0a-0580-e8e2a817c80e','Crosby1970','12345678','Carlton Beaudoin','AngelitaX.Sandoval@example.com','09039192955','user.jpg','learner',30,0,0,1,'2022-08-21'),('68478414-705a-2626-5c92-08c864661f9c','Carpenter1994','12345678','Adam Geer','Valdez@example.com','09179760869','user.jpg','learner',20,0,0,1,'2022-10-02'),('684cddb7-58f9-334d-a8fa-27d59245c5d9','Delicia681','12345678','Adolph Prichard','Tirado74@gmail.com','09033741020','user.jpg','learner',40,0,0,1,'2022-02-27'),('6903a564-75c8-4f0e-b0b9-81afd5456b90','Hannelore418','12345678','Edmund Mora','Karissa.Ellington@example.com','09831346055','user.jpg','learner',140,0,0,1,'2022-09-28'),('6916f8cf-1279-16d8-9290-67245e8b283e','Hubert2025','12345678','Elli Robertson','OlgaFerry@example.com','09106682732','user.jpg','learner',20,0,0,1,'2022-08-03'),('69453dfa-1561-2c13-687d-9d97eb2e0d66','Valeria1966','12345678','Shiloh Preston','Erick.C.Crenshaw@gmail.com','09884756002','user.jpg','learner',50,0,0,1,'2022-06-28'),('694f5467-20fe-64c9-253a-e116be82f154','Aponte2018','12345678','Floyd Bunnell','Latrisha_Gossett@example.com','09012051479','user.jpg','learner',130,0,0,1,'2022-06-12'),('69860775-6256-48fe-aefa-27d59245c5d9','Dyer1986','12345678','Eugenia Ahrens','Abney5@gmail.com','09850904864','user.jpg','learner',30,0,0,1,'2022-09-29'),('698623e9-1def-6cb3-fa17-7000f455f3d5','Abe1988','12345678','Calvin Abrams','Hairston5@example.com','09159709162','user.jpg','learner',30,0,0,1,'2022-08-27'),('69cdb3c5-55bc-2a7a-9a7d-e8c757976496','Crystle2000','12345678','Tamica Goins','Tanner_Banuelos@example.com','09085866654','user.jpg','learner',50,0,0,1,'2022-08-29'),('69f5835d-422e-683b-acfa-27d59245c5d9','Wooden1983','12345678','Adah Bland','MaximoMcgowan1@gmail.com','09022512053','user.jpg','learner',30,0,0,1,'2022-02-07'),('6a07877b-57ba-16c0-5f7d-9d97eb2e0d66','Robin4','12345678','Rosalva Hurt','AbbottJ71@gmail.com','09814554351','user.jpg','learner',50,0,0,1,'2021-10-21'),('6a4d99cd-242a-6200-7add-867949feb8b5','Opal1955','12345678','Alphonso Meeks','Adolph.Antoine@example.com','09115229767','user.jpg','learner',30,0,0,1,'2022-06-26'),('6a941ff4-43a5-234e-4951-59dcbd91f22d','Jose2013','12345678','Camie Cosgrove','Nelly.Callahan@gmail.com','09852228696','user.jpg','learner',30,0,0,1,'2022-10-17'),('6a9ca5c3-1fe6-152b-4851-59dcbd91f22d','Esparza66','12345678','Alisa Almeida','RisaJ_Major251@gmail.com','09831267145','user.jpg','learner',30,0,0,1,'2022-03-30'),('6abe64fb-40a5-3976-c545-a68677dd5ef3','Raymond4','12345678','Abigail Phelps','KareyHester61@gmail.com','09855313152','user.jpg','learner',20,0,0,1,'2022-07-22'),('6ae05040-43df-2d36-4dac-28d3b409e320','Settle1985','12345678','Emery Boykin','AdamHerrera26@example.com','09866761269','user.jpg','learner',60,0,0,1,'2022-08-20'),('6b247db5-21cf-4b38-a5fa-27d59245c5d9','Numbers2002','12345678','Terrence Hazel','Mcdaniel7@gmail.com','09834475932','user.jpg','learner',40,0,0,1,'2022-09-08'),('6be747d4-59c4-3fc2-2fde-2f417b24e999','Huynh2019','12345678','Nelly Callahan','Barton.T_Beall@gmail.com','09167869148','user.jpg','learner',30,0,0,1,'2021-11-10'),('6bf61928-7b91-2f6e-3106-db2ad9f95814','Brogan2004','12345678','Jack Mohr','MeliaMesser@gmail.com','09004641439','user.jpg','learner',50,0,0,1,'2022-09-20'),('6bff9ac2-6e11-2f19-4f14-cf07c7ad0773','Lackey925','12345678','Ramona Correia','Irvin66@gmail.com','09864649165','user.jpg','learner',40,0,0,1,'2022-03-05'),('6c475b73-4c3b-5137-4c32-1fe60697734c','Tyson2005','12345678','Allan Waite','JudiAngulo@gmail.com','09822559992','user.jpg','learner',20,0,0,1,'2021-11-26'),('6c6e9ec9-782a-76e0-657d-9d97eb2e0d66','Dan1998','12345678','Britt Eckert','Joyce@gmail.com','09051104235','user.jpg','learner',50,0,0,1,'2022-08-16'),('6c97b353-5d7d-4095-1dcb-66948daf6128','Arnold5','12345678','Alice Gonzales','Edwardo_P.Mcclintock965@nowhere.com','09161935063','user.jpg','learner',20,0,0,1,'2022-10-29'),('6ca5f4e1-7f05-6159-705f-4db9ab45a18c','Beers1964','12345678','Sharonda Trinidad','sxjumwep.drdixsxq@gmail.com','09100045085','user.jpg','learner',30,0,0,1,'2022-02-14'),('6d564623-636a-2616-3361-aa21d0714907','Alarcon4','12345678','Tressa Clayton','yrchm0@example.com','09139615983','user.jpg','learner',70,0,0,1,'2022-08-04'),('6dd07775-49c8-51fa-2d06-db2ad9f95814','Sherilyn166','12345678','Randee Quinonez','Nilsa.Berry62@gmail.com','09833032053','user.jpg','learner',20,0,0,1,'2022-10-22'),('6e3b1a7a-2ed6-32e8-b5b9-81afd5456b90','Dye2015','12345678','Aurelio Ricketts','Hunter@example.com','09194969208','user.jpg','learner',40,0,0,1,'2022-07-04'),('6e9a6aed-764b-6782-2f61-aa21d0714907','Gaither1961','12345678','Cherie Banks','Arianne.Lyle92@example.com','09860611382','user.jpg','learner',140,0,0,1,'2022-08-05'),('6f2475a8-1ff5-13e7-0680-e8e2a817c80e','Breedlove49','12345678','Machelle Andersen','CleoAbraham329@example.com','09813213448','user.jpg','learner',20,0,0,1,'2022-08-07'),('70253ec7-2e38-67a9-b1db-e5d54223c257','Rory7','12345678','Alan Judd','bfcv409@example.com','09874913529','user.jpg','learner',30,0,0,1,'2022-06-25'),('7050d79b-6948-3c66-1fcb-66948daf6128','Lyn1953','12345678','Elaina Gruber','MatthewHindman@example.com','09182203984','user.jpg','learner',50,0,0,1,'2022-08-02'),('705cb01c-40c7-6bed-3fcd-da15c50e55e9','Abraham22','12345678','Margherita Stiltner','Herrington847@nowhere.com','09063257133','user.jpg','learner',50,0,0,1,'2022-09-07'),('708183fb-38e2-1aa9-3d29-aef25fbc82b3','Adalberto2014','12345678','Kali Spencer','EfrainG.Sykes9@gmail.com','09003961385','user.jpg','learner',30,0,0,1,'2021-12-03'),('7098453c-6c74-3b9d-b645-a68677dd5ef3','Andrew2018','12345678','Sophia Driscoll','Schumacher@gmail.com','09070423454','user.jpg','learner',40,0,0,1,'2022-11-05'),('70af83de-413e-63ef-6592-08c864661f9c','Aurelio6','12345678','Graham Alger','Dalila_JRust@example.com','09810826929','user.jpg','learner',20,0,0,1,'2022-08-19'),('71f409c4-56a8-17a0-4832-1fe60697734c','Mclaughlin2019','12345678','Donald Hemphill','jkgo2181@gmail.com','09831392812','user.jpg','learner',30,0,0,1,'2022-10-03'),('720175eb-39f1-4a65-6e5f-4db9ab45a18c','Bridgett338','12345678','Tom Acevedo','Lemuel.J_Anglin@gmail.com','09110668222','user.jpg','learner',50,0,0,1,'2021-11-19'),('721a4912-2d8a-2448-9f6e-03fef0add176','Hester2','12345678','Abram Steiner','AdolfoD.Cohen5@nowhere.com','09889692072','user.jpg','learner',150,0,0,1,'2022-10-24'),('72ce912f-6015-2e14-fb17-7000f455f3d5','Faviola546','12345678','Milton Gay','LourdesAbraham@example.com','09197742050','user.jpg','learner',50,0,0,1,'2022-07-24'),('7325f44f-127c-240c-afdb-e5d54223c257','Augustina1986','12345678','Alexa Saucedo','Abram.Burdette919@nowhere.com','09181603504','user.jpg','learner',30,0,0,1,'2022-06-18'),('73b54309-388b-5f8d-dbbc-80eebd861ac2','Emmons311','12345678','Nilda Bruton','Alderman131@example.com','09190146837','user.jpg','learner',60,0,0,1,'2022-09-10'),('73cc64d5-7678-1400-23de-2f417b24e999','Acker1965','12345678','Clifford Ellison','Abram.Bolton15@gmail.com','09814934230','user.jpg','learner',40,0,0,1,'2022-05-09'),('7400b62e-357b-175d-3161-aa21d0714907','Vincenzo1953','12345678','Lamont Dube','CoyCosgrove153@example.com','09187663299','user.jpg','learner',20,0,0,1,'2022-07-08'),('74017ba6-559b-3426-8532-6a1673ffca7c','Alger64','12345678','Logan Flannery','Isaacs9@example.com','09150194934','user.jpg','learner',50,0,0,1,'2022-08-10'),('745db66b-1c92-5317-c845-a68677dd5ef3','Kacie1997','12345678','Kristan Abel','Sizemore281@gmail.com','09109095396','user.jpg','learner',20,0,0,1,'2022-01-15'),('74c52e3b-7a7a-41e4-bf45-a68677dd5ef3','Vita1976','12345678','Ada Mace','CharlotteWallace139@gmail.com','09096259716','user.jpg','learner',20,0,0,1,'2021-10-20'),('74e7fd6f-6867-4fb8-695f-4db9ab45a18c','Adelle1963','12345678','Hien Ahmed','AckermanO@gmail.com','09853944036','user.jpg','learner',50,0,0,1,'2022-01-11'),('756997b3-7634-6202-b3b9-81afd5456b90','Karly2015','12345678','Jenise Littleton','Judi_Leach@example.com','09156820849','user.jpg','learner',50,0,0,1,'2022-10-03'),('7623d42f-35f4-1ce5-987d-e8c757976496','Shank212','12345678','Myles Angel','Newsome21@example.com','09888800236','user.jpg','learner',50,0,0,1,'2022-10-17'),('763f3697-1c6c-33a4-bb45-a68677dd5ef3','Buckley636','12345678','Adah Caballero','FaustinoSierra6@gmail.com','09151533896','user.jpg','learner',30,0,0,1,'2022-07-01'),('767111e6-3dbc-615a-0880-e8e2a817c80e','Camila492','12345678','Kizzy Hightower','Adan_Busch@nowhere.com','09009201884','user.jpg','learner',30,0,0,1,'2022-06-25'),('7686595d-16d5-33b3-0080-e8e2a817c80e','Woodrow2009','12345678','Eusebia Noland','Gutierrez73@example.com','09049311698','user.jpg','learner',30,0,0,1,'2022-10-24'),('768f8e64-7d10-20c9-967d-e8c757976496','Shenita2027','12345678','Oma Lawler','xmhz1900@nowhere.com','09060842012','user.jpg','learner',20,0,0,1,'2022-07-18'),('7696e230-2dea-5f2c-233a-e116be82f154','Kirk2014','12345678','Lorrie Shrader','Mackenzie@nowhere.com','09865670541','user.jpg','learner',110,0,0,1,'2022-08-10'),('769f9544-7f32-2556-4aac-28d3b409e320','Huey264','12345678','Willena Manley','Adelaida_Ruiz@example.com','09898882928','user.jpg','learner',40,0,0,1,'2022-07-23'),('76c2871c-1d0e-6880-4eac-28d3b409e320','Kenny52','12345678','Orlando Ferrell','Beam@example.com','09014432538','user.jpg','learner',30,0,0,1,'2022-07-02'),('771e3dd1-42bb-2339-acdb-e5d54223c257','Lanette688','12345678','Newton Graves','CierraCheatham@nowhere.com','09098915179','user.jpg','learner',20,0,0,1,'2022-08-31'),('77511a1e-6e93-4192-4e51-59dcbd91f22d','Sorrell1988','12345678','Mellisa Arsenault','kgjr4@gmail.com','09879117638','user.jpg','learner',40,0,0,1,'2022-06-19'),('7775d890-20f5-7d10-41cd-da15c50e55e9','Reynalda361','12345678','Addie Noyes','LacieO_Chen3@example.com','09810560516','user.jpg','learner',150,0,0,1,'2022-07-04'),('77a4cea9-5a08-3331-ca71-023dd9ee80a8','Neta1992','12345678','Marjorie Alley','Wiese6@example.com','09175622106','user.jpg','learner',20,0,0,1,'2022-07-17'),('7882d27b-79be-50cb-986e-03fef0add176','Whiteside161','12345678','Brande Dunbar','Paula.Baxter821@example.com','09110726547','user.jpg','learner',30,0,0,1,'2022-06-01'),('78d66cb6-7307-7cb9-c871-023dd9ee80a8','Anglin2024','12345678','Kayla Blackmon','Eufemia.Webber554@nowhere.com','09144634227','user.jpg','learner',100,0,0,1,'2022-06-02'),('79114056-7ae8-1a6b-273a-e116be82f154','Monson288','12345678','Elwanda Redmond','Guerra2@example.com','09165843549','user.jpg','learner',140,0,0,1,'2022-08-06'),('791b9e6b-6010-1e33-b0db-e5d54223c257','Waneta756','12345678','Armando Alvarez','Tessie_Sommers@example.com','09019497305','user.jpg','learner',20,0,0,1,'2022-11-03'),('796e032c-497e-6796-ddbc-80eebd861ac2','Georgetta2010','12345678','Adelaida Lessard','Kuntz88@example.com','09023817960','user.jpg','learner',60,0,0,1,'2022-07-01'),('79990821-32c4-5193-42cd-da15c50e55e9','Acker258','12345678','Zack Allman','Shirlene.Vanmeter9@example.com','09000638661','user.jpg','learner',110,0,0,1,'2022-06-17'),('79e387c3-4e3d-5635-3a29-aef25fbc82b3','Eldora2009','12345678','Earleen Sessions','Adela_Adcock@gmail.com','09001274863','user.jpg','learner',50,0,0,1,'2021-12-01'),('79fa8253-391f-4864-b2db-e5d54223c257','Carol263','12345678','Lesia Hatch','Card@example.com','09063847092','user.jpg','learner',50,0,0,1,'2022-07-13'),('7a270942-1c56-4c03-adfa-27d59245c5d9','Russell2027','12345678','Garth Blank','Batiste5@gmail.com','09846497812','user.jpg','learner',20,0,0,1,'2022-06-27'),('7a2af468-28d1-7b07-9a6e-03fef0add176','Calkins2010','12345678','Bernetta Hooper','Cecil_Goldsmith@nowhere.com','09863719936','user.jpg','learner',40,0,0,1,'2022-10-16'),('7ab1cee7-529a-4b57-24de-2f417b24e999','Roosevelt9','12345678','Debroah Farr','JarvisH.High184@gmail.com','09029669349','user.jpg','learner',20,0,0,1,'2022-10-06'),('7ab247da-313b-1661-3461-aa21d0714907','Amber1962','12345678','Arthur Beavers','Minor42@example.com','09053308771','user.jpg','learner',40,0,0,1,'2022-08-02'),('7abe18db-2b8a-5fcb-aedb-e5d54223c257','Tandra1967','12345678','Calvin Looney','AddieD.Armstead@example.com','09870350588','user.jpg','learner',50,0,0,1,'2022-07-11'),('7aee6b6a-2a0a-2f01-5d7d-9d97eb2e0d66','Ada296','12345678','Allegra Winkler','Paris.V.Ragsdale@gmail.com','09035638555','user.jpg','learner',30,0,0,1,'2022-01-04'),('7b5c2767-7b37-46d7-4732-1fe60697734c','Weston2025','12345678','Dortha Abrams','Chadwick@gmail.com','09028421709','user.jpg','learner',20,0,0,1,'2022-10-28'),('7bec5682-21c4-666f-a8db-e5d54223c257','Doyle2','12345678','Freeman Selby','Rich.F_Hutchins@example.com','09102630285','user.jpg','learner',50,0,0,1,'2022-08-02'),('7c357fee-11ca-4cd7-3706-db2ad9f95814','Clay2000','12345678','Neil Kohler','Harley@gmail.com','09172718861','user.jpg','learner',40,0,0,1,'2022-06-04'),('7c431cef-118b-7304-affa-27d59245c5d9','Jamika76','12345678','Blake Beavers','Higgs@gmail.com','09876371959','user.jpg','learner',20,0,0,1,'2022-09-30'),('7c4ff8c6-6cc5-461f-debc-80eebd861ac2','Hanley2012','12345678','Belkis Pennell','Byers@example.com','09186802712','user.jpg','learner',110,0,0,1,'2022-10-14'),('7c575650-5ce2-4369-3261-aa21d0714907','Humberto1953','12345678','Kira Erickson','Gayle.X_Mclemore6@example.com','09115046265','user.jpg','learner',90,0,0,1,'2022-08-17'),('7cd25f54-3576-7faa-3d32-1fe60697734c','Edgar2014','12345678','Roxy Julian','Ambrose.Allen@gmail.com','09040348513','user.jpg','learner',40,0,0,1,'2021-12-21'),('7d0cb27f-5134-5a7a-3ecd-da15c50e55e9','Keven1954','12345678','Gerry Laird','Amos_Montano@nowhere.com','09846334646','user.jpg','learner',40,0,0,1,'2022-06-01'),('7d432595-3866-75a0-6b7d-9d97eb2e0d66','Bennett17','12345678','Edgar Bray','Belcher@gmail.com','09808813464','user.jpg','learner',20,0,0,1,'2021-12-03'),('7db87fb5-5efd-1927-5332-1fe60697734c','Alexander1964','12345678','Beau Randolph','Hirsch332@gmail.com','09159640890','user.jpg','learner',20,0,0,1,'2022-08-18'),('7e055f7a-6290-48f4-bbb9-81afd5456b90','Huddleston84','12345678','Ada Bruce','rpdz93@example.com','09879433460','user.jpg','learner',70,0,0,1,'2022-07-10'),('7e31a62a-17f0-441f-996e-03fef0add176','Aguilera263','12345678','Buster Stine','EulaliaAllen@example.com','09838268393','user.jpg','learner',100,0,0,1,'2022-07-13'),('7e4a64ed-3925-5bb5-6392-08c864661f9c','Velasquez896','12345678','Halley Bostic','ConcettaEnnis544@example.com','09881806121','user.jpg','learner',30,0,0,1,'2022-07-03'),('7e64562a-51ae-5ee4-31de-2f417b24e999','Karima2005','12345678','Yanira Ackerman','Sumner@gmail.com','09139337863','user.jpg','learner',30,0,0,1,'2022-07-02'),('7e8f50b2-5100-74d8-0480-e8e2a817c80e','Carden228','12345678','Adan Pulido','Kinney@example.com','09873918382','user.jpg','learner',50,0,0,1,'2022-09-24'),('7eb97cfe-4104-14a5-0eef-6265d9ea573b','August1951','12345678','Garrett Applegate','Hyatt@example.com','09196526864','user.jpg','learner',40,0,0,1,'2022-07-08'),('7f4552ee-20f2-2f82-9890-67245e8b283e','Palmer854','12345678','Sonya Tinsley','kthkuizh3830@nowhere.com','09192403760','user.jpg','learner',50,0,0,1,'2022-06-22'),('9825d59c-eb45-4b79-93da-044d3b06ce45','bndung','12345678','','g9625@example.com','','user.jpg','learner',20,0,0,1,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_streak`
--

DROP TABLE IF EXISTS `user_streak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_streak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` char(36) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `score` int DEFAULT NULL,
  `week_day` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AVG_ROW_LENGTH=1170;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_streak`
--

LOCK TABLES `user_streak` WRITE;
/*!40000 ALTER TABLE `user_streak` DISABLE KEYS */;
INSERT INTO `user_streak` VALUES (1,'4760d71f-6e2f-5b32-19cb-66948daf6128','2022-10-03',5,'T2'),(2,'4760d71f-6e2f-5b32-19cb-66948daf6128','2022-10-17',100,'T3'),(3,'4760d71f-6e2f-5b32-19cb-66948daf6128','2022-10-18',200,'T4'),(4,'4760d71f-6e2f-5b32-19cb-66948daf6128','2022-10-19',130,'T5'),(5,'4760d71f-6e2f-5b32-19cb-66948daf6128','2022-10-20',80,'T6'),(6,'4760d71f-6e2f-5b32-19cb-66948daf6128','2022-10-22',150,'T7'),(7,'4760d71f-6e2f-5b32-19cb-66948daf6128','2022-10-24',160,'CN'),(9,'4760d71f-6e2f-5b32-19cb-66948daf6128','2022-10-27',0,NULL),(10,'4d7b21db-2e02-12b7-a9db-e5d54223c257','2022-11-08',5,NULL),(11,'4d7b21db-2e02-12b7-a9db-e5d54223c257','2022-11-09',15,NULL),(12,'4d7b21db-2e02-12b7-a9db-e5d54223c257','2022-11-10',5,NULL),(13,'4d7b21db-2e02-12b7-a9db-e5d54223c257','2022-11-11',5,NULL),(14,'4e272fc4-7875-78d6-7d32-6a1673ffca7c','2022-11-02',10,NULL),(15,'4d7b21db-2e02-12b7-a9db-e5d54223c257','2022-11-12',15,NULL),(16,'47f60f67-6087-2a86-abdb-e5d54223c257','2022-11-13',5,NULL);
/*!40000 ALTER TABLE `user_streak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `time` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_video_course_id` (`course_id`),
  CONSTRAINT `FK_video_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AVG_ROW_LENGTH=963;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,'WHAT KIND OF FOOD DO YOU LIKE?','https://www.youtube.com/watch?v=4uuGYHfnVRE',306,1),(2,'EATING OUT AT A RESTAURANT','https://www.youtube.com/watch?v=iNkUYuLr6jk',738,1),(3,'HOW TO MAKE A CAKE?','https://www.youtube.com/watch?v=PN_4IpCgVIQ',341,1),(4,'IN A CAFE','https://www.youtube.com/watch?v=ScKfpYyG7Oc',484,1),(5,'BUYING FOOD AT A SUPERMARKET','https://www.youtube.com/watch?v=GlNbzAGZC2M',348,1),(6,'BREAKFAST RECOMMENDATIONS','https://www.youtube.com/watch?v=OajafTa_THU',609,1),(7,'BEING A VEGETARIAN','https://www.youtube.com/watch?v=J-QY_NH0_3M',751,1),(8,'SCHEDULING A DOCTOR\'S APPOINTMENT','https://www.youtube.com/watch?v=DNVFzxqfbOY',423,2),(9,'AT THE DOCTOR OFFICE','https://www.youtube.com/watch?v=2PCgztYXnxk',690,2),(10,'HAVING A PHYSICAL CHECK-UP','https://www.youtube.com/watch?v=IDkHSgfcrE0',639,2),(11,'GOING TO THE DENTIST','https://www.youtube.com/watch?v=dNr88R14bBA',915,2),(12,'ASKING A DOCTOR ABOUT THE SIDE EFFECTS OF MEDICATION','https://www.youtube.com/watch?v=RaB5Bydz8rE',977,2),(13,'MAKING AN EMERGENCY CALL','https://www.youtube.com/watch?v=Z7oiS2W3aV4',592,2),(14,'VISITING A PATIENT AT THE HOSPITAL','https://youtu.be/zMJqDFPf-sk',336,2),(15,'A NEW COLLEAGUE','https://www.youtube.com/watch?v=12NKpNx0860',712,2),(16,'GETTING ON WELL WITH YOUR COLLEAGUE','https://www.youtube.com/watch?v=2bodeNQNkrQ',1024,2),(17,'ASKING A COLLEAGUE ABOUT HOW TO USE A DEVICE','https://www.youtube.com/watch?v=AG2kYShBZl0',645,2);
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `word`
--

DROP TABLE IF EXISTS `word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `word` (
  `id` int NOT NULL AUTO_INCREMENT,
  `en_meaning` varchar(255) DEFAULT NULL,
  `vn_meaning` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `lesson_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_word_lesson_id` (`lesson_id`),
  CONSTRAINT `FK_word_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AVG_ROW_LENGTH=1260 COMMENT='Bảng word';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `word`
--

LOCK TABLES `word` WRITE;
/*!40000 ALTER TABLE `word` DISABLE KEYS */;
INSERT INTO `word` VALUES (1,'Tea','Trà','Noun',1),(2,'Milk','Sữa','Noun',1),(3,'Bye','Tạm biệt','Noun',1),(4,'Hot','Nóng','Adjective',1),(5,'Hi','Xin chào','',2),(6,'Rice','Cơm','Noun',2),(7,'Noodles','Mì','Noun',2),(8,'Yes','Vâng','',3),(9,'Coffee','Cà phê','Noun',3),(10,'Thank you','Cảm ơn','',3),(11,'Good morning','Chào buổi sáng','',4),(12,'Good evening','Chào buổi tối','',4),(13,'See you','Hẹn gặp lại','',4);
/*!40000 ALTER TABLE `word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'elearning'
--

--
-- Dumping routines for database 'elearning'
--
/*!50003 DROP PROCEDURE IF EXISTS `Proc_GetCurrentUserInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Proc_GetCurrentUserInfo`(IN UserId char(36), IN CurrDate datetime)
    COMMENT 'Store lấy dữ liệu người dùng hiện tại đăng nhập'
BEGIN
  SELECT
    u.user_id,
    u.user_name,
    u.password,
    u.full_name,
    u.email,
    u.phone_number,
    u.image,
    us.score,
    us.time,
    CASE WHEN WEEKDAY(us.time) <> 6 THEN CONCAT('T', WEEKDAY(us.time) + 2) ELSE 'CN' END AS weekday
  FROM user u
    INNER JOIN user_streak us
      ON u.user_id = us.user_id
  WHERE us.time <= CurrDate
  AND u.user_id = UserId
  ORDER BY us.time DESC LIMIT 7;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Proc_GetDataCourseChart` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Proc_GetDataCourseChart`(IN Time int)
    SQL SECURITY INVOKER
    COMMENT 'Store lấy dữ liệu cho chart course'
BEGIN
  SELECT
    CONCAT('T', MONTH(u.created_date)) AS time,
    COUNT(*) AS quantity
  FROM course u
  WHERE u.created_date >= (CURDATE() - INTERVAL Time MONTH)
  GROUP BY MONTH(u.created_date)
  ORDER BY u.created_date;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Proc_GetDataProceedChart` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Proc_GetDataProceedChart`(IN Time int)
    SQL SECURITY INVOKER
BEGIN
  SELECT
    CONCAT('T', MONTH(u.created_date)) AS time,
    SUM(u.total_price) AS quantity
  FROM `order` u
  WHERE u.created_date >= (CURDATE() - INTERVAL Time MONTH)
  GROUP BY MONTH(u.created_date)
  ORDER BY u.created_date;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Proc_GetDataUserChart` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Proc_GetDataUserChart`(IN Time int)
    SQL SECURITY INVOKER
    COMMENT 'Store lấy dữ liệu cho chart user'
BEGIN
  SELECT
    CONCAT('T', MONTH(u.created_date)) AS time,
    COUNT(*) AS quantity
  FROM user u
  WHERE u.created_date >= (CURDATE() - INTERVAL Time MONTH)
  GROUP BY MONTH(u.created_date)
  ORDER BY u.created_date;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Proc_GetOverView` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Proc_GetOverView`(IN Time int)
    SQL SECURITY INVOKER
    COMMENT 'Store lấy dữ liệu tổng quan'
BEGIN
  DECLARE totalUser int;
  DECLARE totalUserLast int;
  DECLARE totalNewUser int;
  DECLARE totalCourse int;
  DECLARE totalCourseLast int;
  DECLARE totalMoney decimal(19, 4);
  DECLARE totalMoneyLast decimal(19, 4);

  SET totalUser = (SELECT
      COUNT(*)
    FROM user u
    WHERE u.created_date <= CURRENT_DATE);

  SET totalUserLast = (SELECT
      COUNT(*)
    FROM user u
    WHERE u.created_date <= (CURRENT_DATE - INTERVAL Time DAY));

  SET totalNewUser = (SELECT
      COUNT(*)
    FROM user u
    WHERE u.created_date BETWEEN (CURRENT_DATE - INTERVAL (Time - 1) DAY) AND CURRENT_DATE);

  SET totalCourse = (SELECT
      COUNT(*)
    FROM course u
    WHERE u.created_date <= CURRENT_DATE);

  SET totalCourseLast = (SELECT
      COUNT(*)
    FROM course u
    WHERE u.created_date <= (CURRENT_DATE - INTERVAL Time DAY));

  SET totalMoney = (SELECT
      SUM(o.total_price)
    FROM `order` o
    WHERE o.created_date <= CURRENT_DATE);

  SET totalMoneyLast = (SELECT
      IFNULL(SUM(o.total_price), 0)
    FROM `order` o
    WHERE o.created_date <= (CURRENT_DATE - INTERVAL Time DAY));

  --   SELECT totalUser, totalUserLast, totalNewUser, totalCourse, totalCourseLast, totalMoney, totalMoneyLast;

  DROP TEMPORARY TABLE IF EXISTS tblRes;
  CREATE TEMPORARY TABLE tblRes
  SELECT
    totalUser,
    totalUserLast,
    totalNewUser,
    totalCourse,
    totalCourseLast,
    totalMoney,
    totalMoneyLast;

  SELECT
    *
  FROM tblRes;
  DROP TEMPORARY TABLE IF EXISTS tblRes;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Proc_GetUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Proc_GetUsers`()
    COMMENT 'Store lấy tất cả user'
BEGIN
  SELECT
    *
  FROM user;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Proc_InsertCourse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Proc_InsertCourse`(in Name varchar(255),in Price decimal, in Discount decimal, in CategoryId int,
in TeacherId int, in Image varchar(255))
BEGIN
	insert into course(name,price,discount,category_id,teacher_id,image)
	values(Name,Price,Discount,CategoryId,TeacherId,Image);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Proc_InsertCoursecourse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Proc_InsertCoursecourse`(in Name varchar(255),in Price decimal, in Discount decimal, in CategoryId int,
in TeacherId int, in Image varchar(255))
BEGIN
	insert into course(name,price,discount,category_id,teacher_id,image)
	values(Name,Price,Discount,CategoryId,TeacherId,Image);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Proc_InsertUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Proc_InsertUser`(IN user_name varchar(100), IN password varchar(100), IN full_name varchar(200), IN email varchar(50), IN phone_number char(20),
IN image text, IN role varchar(255), IN target int, IN point int)
BEGIN
  INSERT INTO user (user_id, user_name, password, full_name, email, phone_number, image, role, target, point)
    VALUES (UUID(), user_name, password, full_name, email, phone_number, image, role, target, point);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Proc_UpdateUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Proc_UpdateUser`(IN UserId varchar(100), IN UserName varchar(100),
IN Password varchar(100), IN FullName varchar(200), IN Email varchar(50),
IN PhoneNumber char(20), IN Image text, IN Role varchar(255), IN Target int, IN Point int)
    SQL SECURITY INVOKER
BEGIN
  UPDATE user u
  SET user_name = UserName,
      password = Password,
      full_name = FullName,
      email = Email,
      phone_number = PhoneNumber,
      image = Image,
      role = Role,
      target = Target,
      point = Point
  WHERE user_id = UserId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-26 11:28:29
