-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: itwillbs-rds-class1-team3.cwyqfeylunq5.ap-northeast-2.rds.amazonaws.com    Database: project2
-- ------------------------------------------------------
-- Server version	8.0.32

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `cli_cd` varchar(50) NOT NULL,
  `cli_nm` varchar(100) DEFAULT NULL,
  `cli_type` varchar(20) DEFAULT NULL,
  `cli_num` varchar(30) DEFAULT NULL,
  `cli_business` varchar(50) DEFAULT NULL,
  `cli_prod` varchar(50) DEFAULT NULL,
  `cli_boss` varchar(50) DEFAULT NULL,
  `cli_emp` varchar(50) DEFAULT NULL,
  `cli_postno` varchar(50) DEFAULT NULL,
  `cli_addr` varchar(500) DEFAULT NULL,
  `cli_addr2` varchar(50) DEFAULT NULL,
  `cli_tel` varchar(50) DEFAULT NULL,
  `cli_phone` varchar(50) DEFAULT NULL,
  `cli_fax` varchar(50) DEFAULT NULL,
  `cli_email` varchar(50) DEFAULT NULL,
  `cli_note` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`cli_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES ('C001','(주)서울원단','협력사','5528700875','제조업','원단','문상민','김일준','03198','서울 종로구 종로 266','C동 2층 2028호 (종로6가, 동대문종합시장)','027609200','01012451562','0222331160','moonsmin@naver.com',''),('C002','코리아텍스타일','협력사','2062471055','제조업','원단','유복상','우하영','11426','경기 양주시 은현면 운하로 102','106동 205호','0315503200','01094216251','0318602662','ubs6321@naver.com',''),('C003','디비스토리','협력사','2687159728','제조업','부자재','문소리','이수겸','17585','경기 안성시 가사길 11','508동 302호','0316537892','01053446217','0316283489','dbsotry@gmail.com',NULL),('C004','몽실촉감','협력사','3842642965','제조업','솜','남준태','손희라','03055','서울 종로구 북촌로 33','306동  201호','026589752','01069873295','026853941','mongsil@gmail.com',NULL),('C005','타래명가','협력사','2056495766','제조업','실','김명자','강희준','48095','부산 해운대구 구남로 5','C동 1층','0512368896','01029735654','0512369455','tarae@naver.com',NULL),('C006','토이팩토리','고객사','5214259725','도매 및 소매업','완구','양주하','김주원','46702','부산 강서구 대저로 265','B동 1층','0512351556','01094841258','0511254493','toyfactory@gmail.com',NULL),('C007','(주)미미완구','고객사','1012585236','도매 및 소매업','완구','하영미','이지원','05831','서울 송파구 동남로 99','가락빌딩 6층','0269617425','01062241691','0262149238','mimitoy@gmail.com',NULL),('C008','네이버웹툰','고객사','1258631602','도매 및 소매업','웹툰굿즈','김준구','유가영','13529','경기 성남시 분당구 분당내곡로 117','그레이츠 판교','03123987756','01098756687','03123894546','naverwebtoon@naver.com',NULL),('C009','카카오페이지','고객사','2208802594','도매 및 소매업','웹툰굿즈','서현진','이진수','13494','경기 성남시 분당구 삼평동 672','투썬월드빌딩 6층','03150563075','01061562336','03180164704','kakaogoods@kakaopage.com',NULL),('C010','솜솜마을','자사','1051682426','제조업','봉제인형','남상미','박주민','47288','부산 부산진구 서면로 1','삼한게이트 7층','0512327951','01072364295','0512953897','dollstory@naver.com',NULL);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `code`
--

DROP TABLE IF EXISTS `code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `code` (
  `code_grp` varchar(50) NOT NULL,
  `code_cd` varchar(50) NOT NULL,
  `code_grp_nm` varchar(100) DEFAULT NULL,
  `code_nm` varchar(100) DEFAULT NULL,
  `code_num` int DEFAULT NULL,
  `code_note` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`code_grp`,`code_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `code`
--

LOCK TABLES `code` WRITE;
/*!40000 ALTER TABLE `code` DISABLE KEYS */;
INSERT INTO `code` VALUES ('C','cli_addr','거래처','주소',120,''),('C','cli_addr2','거래처','상세주소',130,''),('C','cli_boss','거래처','대표자',100,''),('C','cli_business','거래처','업태',80,''),('C','cli_email','거래처','이메일',20,''),('C','cli_emp','거래처','담당자',110,''),('C','cli_emp_tel','거래처','휴대폰번호',150,''),('C','cli_fax','거래처','팩스번호',30,''),('C','cli_nm','거래처','거래처명',40,''),('C','cli_note','거래처','비고',50,''),('C','cli_num','거래처','사업자번호',70,''),('C','cli_prod','거래처','종목',90,''),('C','cli_tel','거래처','전화번호',140,''),('C','cli_type','거래처','거래처구분',60,''),('D','PRO01','상품','완제품',10,NULL),('E','emp_cd','사용자','사용자코드',10,''),('E','emp_dept','사용자','부서',50,'40'),('E','emp_email','사용자','이메일',60,''),('E','emp_nm','사용자','사용자명',20,''),('E','emp_pass','사용자','비밀번호',30,''),('E','emp_position','사용자','직책',50,''),('E','emp_tel','사용자','전화번호',70,''),('L','line_cd','라인정보','라인번호',10,NULL),('L','line_nm','라인정보','라인명',20,NULL),('L','line_note','라인정보','비고',70,NULL),('L','line_num','라인정보','정렬순서',50,NULL),('L','line_place','라인정보','작업장',40,NULL),('L','line_process','라인정보','공정',30,NULL),('L','line_st','라인정보','설비상태',60,NULL),('MI','imat_cd','자재입고','입고번호',10,NULL),('MI','imat_count','자재입고','입고수량',50,NULL),('MI','imat_date','자재입고','입고일자',30,NULL),('MI','imat_note','자재입고','비고',60,NULL),('MI','imat_stg','자재입고','입고창고',40,NULL),('MI','prod_cd','자재입고','상품코드',20,NULL),('MO','omat_cd','자재출고','출고번호',10,NULL),('MO','omat_count','자재출고','출고수량',50,NULL),('MO','omat_date','자재출고','출고일자',30,NULL),('MO','omat_note','자재출고','비고',60,NULL),('MO','omat_stg','자재출고','출고창고',40,NULL),('MO','prod_cd','자재출고','상품코드',20,NULL),('O','emp_cd','수주','사용자코드',30,NULL),('O','ord_cd','수주','수주번호',10,NULL),('O','ord_count','수주','수주량',70,NULL),('O','ord_d_date','수주','납품예정일',60,NULL),('O','ord_date','수주','수주일자',50,NULL),('O','prod_cd','수주','상품코드',20,NULL),('P','cli_cd','품목','거래처코드',20,NULL),('P','prod_cd','품목','상품코드',10,NULL),('P','prod_count','품목','현재고',100,NULL),('P','prod_inprice','품목','매입단가',80,NULL),('P','prod_mat','품목','자재유형',40,NULL),('P','prod_nm','품목','상품이름',30,NULL),('P','prod_note','품목','비고',110,NULL),('P','prod_outprice','품목','매출단가',90,NULL),('P','prod_size','품목','규격',70,NULL),('P','prod_text','품목','재질',60,NULL),('P','prod_unit','품목','단위',50,NULL),('R','prod_cd','소요량','상품코드(원부자재)',20,''),('R','prod_fcd','소요량','상품코드(완제품)',40,NULL),('R','prod_fnm','소요량','상품이름(완제품)',50,NULL),('R','prod_nm','소요량','상품이름(원부자재)',30,NULL),('R','req_add_date','소요량','등록일',80,NULL),('R','req_add_emp','소요량','등록자',70,NULL),('R','req_edit_date','소요량','변경일',100,NULL),('R','req_edit_emp','소요량','변경자',90,NULL),('R','req_req','소요량','소요량',60,NULL),('R','requ_num','소요량','소요량기본키',10,NULL),('S','ord_cd','출하','수주번호',20,NULL),('S','ship_cd','출하','출하번호',10,NULL),('S','ship_count','출하','출하량',40,NULL),('S','ship_date','출하','출하일자',70,NULL),('S','ship_ifcount','출하','출하예정량',30,NULL),('S','ship_inven','출하','재고',60,NULL),('S','ship_over','출하','과부족',50,NULL),('WI','iine_cd','작업지시','라인코드',20,NULL),('WI','inst_cd','작업지시','작업지시번호',10,NULL),('WI','inst_count','작업지시','지시수량',60,NULL),('WI','inst_date','작업지시','지시일자',50,NULL),('Wi','inst_fcount','작업지시','생산량',70,NULL),('WI','inst_st','작업지시','지시상태',40,NULL),('WI','ord_cd','작업지시','수주번호',30,NULL),('WP','inst_cd','실적','작업지시번호',20,NULL),('WP','perf_cause','실적','불량사유',60,NULL),('WP','perf_date','실적','실적일자',30,NULL),('WP','perf_err','실적','불량',50,NULL),('WP','perf_good','실적','양품',40,NULL),('WP','perf_note','실적','비고',70,NULL),('WP','perf_num','실적','실적기본키',10,'');
/*!40000 ALTER TABLE `code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `emp_cd` varchar(50) NOT NULL,
  `emp_nm` varchar(50) DEFAULT NULL,
  `emp_pass` varchar(50) DEFAULT NULL,
  `emp_position` varchar(30) DEFAULT NULL,
  `emp_email` varchar(100) DEFAULT NULL,
  `emp_tel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`emp_cd`),
  UNIQUE KEY `emp_email_UNIQUE` (`emp_email`),
  UNIQUE KEY `emp_tel_UNIQUE` (`emp_tel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('2023001','노은주','7894','관리자','nej@somsom.com','01054987894'),('2023002','박은지','7498','관리자','pej@somsom.com','01048917498'),('2023003','심예린','6584','관리자','syr@somsom.com','01098746584'),('2023004','우수빈','1846','관리자','wsb@somsom.com','01089841846'),('2023005','우정임','8684','관리자','wji@somsom.com','01084718684'),('2023006','이솜솜','9495','파트장','lss@gmail.com','01087239495'),('2023007','김마을','6124','파트장','kme@naver.com','01074846124'),('2023008','박폼폼','5496','파트장','ppp@nate.com','01049865496'),('2023009','노몽실','8483','파트장','nms@gmail.com','01021268483'),('2023010','우미미','5468','사원','wmm@somsom.com','01051665468'),('2023011','심봉자','9148','사원','sbj@somsom.com','01065489148'),('2023012','임치즈','4684','사원','icz@naver.com','01047354684'),('2023013','이주민','9489','사원','jjm@somsom.com','01056469489'),('2023014','김아이티윌','1234','관리자','itwillbs@somsom.com','01012341234');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `in_material`
--

DROP TABLE IF EXISTS `in_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `in_material` (
  `imat_cd` varchar(100) NOT NULL,
  `prod_cd` varchar(50) DEFAULT NULL,
  `imat_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `imat_stg` varchar(30) DEFAULT NULL,
  `imat_count` int DEFAULT NULL,
  `imat_note` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`imat_cd`),
  KEY `FK_product_TO_in_material_1` (`prod_cd`),
  CONSTRAINT `FK_product_TO_in_material_1` FOREIGN KEY (`prod_cd`) REFERENCES `product` (`prod_cd`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `in_material`
--

LOCK TABLES `in_material` WRITE;
/*!40000 ALTER TABLE `in_material` DISABLE KEYS */;
INSERT INTO `in_material` VALUES ('MI001','P001','2023-04-12 11:14:39','완제품',100,NULL),('MI002','P002','2023-04-12 13:53:09','원자재',100,''),('MI003','P001','2023-04-12 13:54:57','완제품',100,''),('MI004','P002','2023-04-12 13:55:29','원자재',100,''),('MI005','P003','2023-04-12 13:55:48','부자재',100,''),('MI006','P003','2023-04-12 13:56:22','부자재',100,''),('MI007','P004','2023-04-12 13:56:39','완제품',100,''),('MI008','P004','2023-04-12 13:57:25','완제품',100,''),('MI009','P002','2023-04-12 13:57:47','원자재',100,''),('MI010','P005','2023-04-12 13:58:09','부자재',100,''),('MI011','P005','2023-04-12 13:58:29','부자재',100,''),('MI012','P006','2023-04-12 14:00:15','완제품',100,''),('MI013','P006','2023-04-12 14:00:17','완제품',100,''),('MI014','P007','2023-04-12 14:01:28','완제품',100,''),('MI015','P008','2023-04-12 14:02:11','완제품',100,''),('MI016','P007','2023-04-12 14:03:48','완제품',100,''),('MI017','P010','2023-04-12 14:05:42','부자재',100,''),('MI018','P001','2023-04-12 14:06:36','완제품',100,''),('MI019','P010','2023-04-12 14:07:15','부자재',100,''),('MI020','P011','2023-04-12 14:07:47','부자재',100,''),('MI021','P011','2023-04-12 14:10:35','부자재',100,''),('MI022','P010','2023-04-12 14:10:56','부자재',100,''),('MI023','P010','2023-04-12 14:11:25','부자재',100,''),('MI024','P010','2023-04-12 14:11:59','부자재',100,''),('MI025','P002','2023-04-12 14:27:24','원자재',100,''),('MI026','P001','2023-04-12 14:27:44','완제품',100,''),('MI027','P001','2023-04-12 16:27:18','완제품',500,''),('MI028','P001','2023-04-13 18:01:55','완제품',100,''),('MI029','P001','2023-04-13 18:13:10','완제품',100,''),('MI030','P001','2023-04-14 01:48:42','완제품',1000,''),('MI031','P001','2023-04-14 01:57:54','완제품',1000,''),('MI032','P001','2023-04-14 03:24:36','완제품',100,''),('MI033','P001','2023-04-14 03:34:06','완제품',200,''),('MI034','P001','2023-04-14 04:23:36','완제품',200,''),('MI035','P001','2023-04-14 04:33:55','완제품',540,''),('MI036','P005','2023-04-14 09:28:45','부자재',300,'');
/*!40000 ALTER TABLE `in_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instruction`
--

DROP TABLE IF EXISTS `instruction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instruction` (
  `inst_cd` varchar(50) NOT NULL,
  `line_cd` varchar(50) DEFAULT NULL,
  `ord_cd` varchar(50) DEFAULT NULL,
  `inst_st` varchar(50) DEFAULT NULL,
  `inst_date` datetime DEFAULT NULL,
  `inst_count` int DEFAULT NULL,
  `inst_fcount` int DEFAULT NULL,
  PRIMARY KEY (`inst_cd`),
  KEY `FK_line_TO_instruction_1` (`line_cd`),
  KEY `FK_order_TO_instruction_1` (`ord_cd`),
  CONSTRAINT `FK_line_TO_instruction_1` FOREIGN KEY (`line_cd`) REFERENCES `line` (`line_cd`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_order_TO_instruction_1` FOREIGN KEY (`ord_cd`) REFERENCES `orders` (`ord_cd`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instruction`
--

LOCK TABLES `instruction` WRITE;
/*!40000 ALTER TABLE `instruction` DISABLE KEYS */;
INSERT INTO `instruction` VALUES ('WI001','L001','O00120230414','완료','2023-04-14 11:10:37',5,5),('WI002','L002','O00120230408','완료','2023-04-14 11:10:46',100,100),('WI003','L005','O00220230407','진행','2023-04-14 11:11:11',100,30),('WI004','L012','O00220230411','완료','2023-04-14 11:11:24',20,30),('WI005','L010','O00620230403','완료','2023-04-14 11:11:31',100,100),('WI006','L011','O00120230412','완료','2023-04-14 11:11:53',20,20),('WI007','L012','O00620230403','진행','2023-04-14 12:48:29',100,30),('WI008','L010','O00220230407','대기','2023-04-14 12:48:43',100,NULL);
/*!40000 ALTER TABLE `instruction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `line`
--

DROP TABLE IF EXISTS `line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `line` (
  `line_cd` varchar(50) NOT NULL,
  `line_nm` varchar(100) DEFAULT NULL,
  `line_process` varchar(20) DEFAULT NULL,
  `line_place` varchar(50) DEFAULT NULL,
  `line_num` varchar(50) DEFAULT NULL,
  `line_st` varchar(50) DEFAULT NULL COMMENT '가동중/대기중/고장',
  `line_note` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`line_cd`),
  UNIQUE KEY `line_num_UNIQUE` (`line_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `line`
--

LOCK TABLES `line` WRITE;
/*!40000 ALTER TABLE `line` DISABLE KEYS */;
INSERT INTO `line` VALUES ('L001','재단001','재단','sp001','1001','대기',''),('L002','재단002','재단','sp002','1002','정상',''),('L003','재단003','재단','sp003','1003','대기',''),('L004','재단004','재단','sp004','1004','err',''),('L005','조립001','조립','sp001','1005','대기',''),('L006','조립002','재단','sp001','1006','대기',''),('L007','조립003','재단','sp001','1007','대기',''),('L008','검수001','재단','sp001','1008','대기',''),('L009','검수002','검수','sp001','1009','대기',''),('L010','검수003','재단','sp001','1010','대기',''),('L011','검수004','재단','sp001','1011','정상',''),('L012','조립004','재단','sp001','1012','대기','');
/*!40000 ALTER TABLE `line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `ord_cd` varchar(50) NOT NULL,
  `prod_cd` varchar(50) DEFAULT NULL,
  `emp_cd` varchar(50) DEFAULT NULL,
  `cli_cd` varchar(50) DEFAULT NULL,
  `ord_date` datetime DEFAULT NULL,
  `ord_d_date` datetime DEFAULT NULL,
  `ord_count` int DEFAULT NULL,
  PRIMARY KEY (`ord_cd`),
  KEY `FK_empolyee_TO_order_1` (`emp_cd`),
  KEY `FK_product_TO_order_1` (`prod_cd`),
  KEY `FK_cli_TO_order_1` (`cli_cd`),
  CONSTRAINT `FK_cli_TO_order_1` FOREIGN KEY (`cli_cd`) REFERENCES `client` (`cli_cd`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_empolyee_TO_order_1` FOREIGN KEY (`emp_cd`) REFERENCES `employee` (`emp_cd`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_product_TO_order_1` FOREIGN KEY (`prod_cd`) REFERENCES `product` (`prod_cd`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('O00120230228','P001','2023001','C003','2023-02-28 23:59:59','2023-04-04 23:59:59',5),('O00120230325','P001','2023002','C010','2023-03-25 23:59:59','2023-04-14 23:59:59',5),('O00120230401','P006','2023003','C001','2023-04-01 23:59:59','2023-04-15 23:59:59',500),('O00120230402','P001','2023005','C006','2023-04-02 23:59:59','2023-04-03 23:59:59',100),('O00120230404','P004','2023002','C002','2023-04-04 23:59:59','2023-04-05 23:59:59',100),('O00120230405','P006','2023003','C006','2023-04-05 23:59:59','2023-04-05 23:59:59',10),('O00120230407','P004','2023004','C007','2023-04-07 23:59:59','2023-04-10 23:59:59',50),('O00120230408','P007','2023005','C001','2023-04-08 23:59:59','2023-04-15 23:59:59',100),('O00120230411','P007','2023012','C007','2023-04-11 23:59:59','2023-04-16 23:59:59',10),('O00120230412','P004','2023011','C003','2023-04-12 23:59:59','2023-04-17 23:59:59',20),('O00120230414','P001','2023003','C002','2023-04-14 23:59:59','2023-04-15 23:59:59',5),('O00220230407','P006','2023004','C007','2023-04-07 23:59:59','2023-04-14 23:59:59',100),('O00220230411','P006','2023008','C008','2023-04-11 23:59:59','2023-04-16 23:59:59',20),('O00220230414','P007','2023006','C005','2023-04-14 23:59:59','2023-04-15 23:59:59',5),('O00320230403','P006','2023006','C007','2023-04-03 23:59:59','2023-04-04 23:59:59',100),('O00320230414','P006','2023007','C003','2023-04-14 23:59:59','2023-04-15 23:59:59',5),('O00420230403','P007','2023007','C010','2023-04-03 23:59:59','2023-04-04 23:59:59',200),('O00520230403','P004','2023001','C001','2023-04-03 23:59:59','2023-04-08 23:59:59',100),('O00620230403','P008','2023009','C007','2023-04-03 23:59:59','2023-04-08 23:59:59',100);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `out_material`
--

DROP TABLE IF EXISTS `out_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `out_material` (
  `omat_cd` varchar(100) NOT NULL,
  `prod_cd` varchar(50) DEFAULT NULL,
  `omat_date` datetime DEFAULT NULL,
  `omat_stg` varchar(30) DEFAULT NULL,
  `omat_count` int DEFAULT NULL,
  `omat_note` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`omat_cd`),
  KEY `FK_product_TO_out_material_1` (`prod_cd`),
  CONSTRAINT `FK_product_TO_out_material_1` FOREIGN KEY (`prod_cd`) REFERENCES `product` (`prod_cd`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `out_material`
--

LOCK TABLES `out_material` WRITE;
/*!40000 ALTER TABLE `out_material` DISABLE KEYS */;
INSERT INTO `out_material` VALUES ('MO001','P001','2023-04-06 09:32:02','원단',100,NULL),('MO002','P002','2023-04-06 09:32:04','원단',1004,''),('MO003','P003','2023-04-06 09:32:06','원단',100,NULL),('MO004','P004','2023-04-06 09:32:08','원단',100,NULL),('MO005','P005','2023-04-06 09:32:11','원단',1004,''),('MO006','P006','2023-04-06 09:32:13','원단',100,NULL),('MO007','P007','2023-04-07 23:58:26','원단',1004,''),('MO009','P009','2023-04-06 10:32:29','원단',100,NULL),('MO012','P006','2023-04-08 20:52:30','완제품',1,'1'),('MO013','P008','2023-04-09 03:26:51','완제품',1,'1'),('MO014','P004','2023-04-09 03:26:59','완제품',12,'12'),('MO015','P001','2023-04-11 00:03:32','완제품',123,''),('MO016','P001','2023-04-13 19:02:08','완제품',100,''),('MO017','P001','2023-04-14 01:31:58','완제품',600,''),('MO018','P001','2023-04-14 01:58:13','완제품',400,''),('MO019','P001','2023-04-14 08:19:58','완제품',20,''),('MO020','P002','2023-04-14 09:29:27','원자재',200,'');
/*!40000 ALTER TABLE `out_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performance`
--

DROP TABLE IF EXISTS `performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `performance` (
  `perf_cd` varchar(50) NOT NULL,
  `inst_cd` varchar(50) DEFAULT NULL,
  `perf_date` datetime DEFAULT NULL,
  `perf_good` int DEFAULT NULL,
  `perf_err` int DEFAULT NULL,
  `perf_cause` varchar(1000) DEFAULT NULL,
  `perf_note` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`perf_cd`),
  KEY `FK_instruction_TO_performance_1` (`inst_cd`),
  CONSTRAINT `FK_instruction_TO_performance_1` FOREIGN KEY (`inst_cd`) REFERENCES `instruction` (`inst_cd`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performance`
--

LOCK TABLES `performance` WRITE;
/*!40000 ALTER TABLE `performance` DISABLE KEYS */;
INSERT INTO `performance` VALUES ('WP001','WI001','2023-04-14 11:12:27',5,0,NULL,''),('WP002','WI002','2023-04-14 11:12:34',100,0,NULL,''),('WP004','WI006','2023-04-14 11:28:10',20,0,NULL,''),('WP005','WI004','2023-04-14 11:32:02',10,0,NULL,''),('WP006','WI003','2023-04-14 11:38:25',20,0,NULL,''),('WP007','WI003','2023-04-14 11:40:06',10,0,NULL,''),('WP008','WI004','2023-04-14 11:57:18',20,0,NULL,''),('WP009','WI005','2023-04-14 12:47:56',100,0,NULL,''),('WP010','WI007','2023-04-14 12:48:54',50,20,'기계이상','');
/*!40000 ALTER TABLE `performance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `prod_cd` varchar(50) NOT NULL,
  `cli_cd` varchar(50) DEFAULT NULL,
  `prod_nm` varchar(100) DEFAULT NULL,
  `prod_mat` varchar(20) DEFAULT NULL COMMENT '원자재, 부자재, 완제품',
  `prod_unit` varchar(30) DEFAULT NULL,
  `prod_text` varchar(30) DEFAULT NULL,
  `prod_size` varchar(30) DEFAULT NULL,
  `prod_inprice` int DEFAULT NULL,
  `prod_outprice` int DEFAULT NULL,
  `prod_count` int DEFAULT NULL,
  `prod_note` varchar(2000) DEFAULT NULL,
  `prod_number` int DEFAULT NULL,
  PRIMARY KEY (`prod_cd`),
  KEY `FK_client_TO_product_1` (`cli_cd`),
  CONSTRAINT `FK_client_TO_product_1` FOREIGN KEY (`cli_cd`) REFERENCES `client` (`cli_cd`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('P001',NULL,'곰돌이인형','완제품','EA','코튼','30*30',11000,13000,2020,'',1),('P002','C001','원단','원자재','EA','천','10*10',0,0,-200,'',2),('P003','C004','솜','부자재','PK','올가닉솜','기타',300,500,1900,'',3),('P004',NULL,'토끼인형','완제품','EA','코튼','30*30',11000,13000,105,'',4),('P005','C005','실','부자재','EA','양모실','기타',3000,4500,720,'기준 : 45g, 60cm',5),('P006',NULL,'강아지인형','완제품','EA','천','20*20',8000,11000,108,'',6),('P007',NULL,'돌고래인형','완제품','EA','양모','20*20',8000,11000,115,'',7),('P008',NULL,'고양이인형','완제품','EA','천','10*10',5000,7500,30,'',8),('P009','C003','인형눈','부자재','EA','플라스틱','기타',100,120,500,NULL,9),('P010','C003','단추','부자재','EA','플라스틱','기타',50,70,850,NULL,10),('P011','C005','실','부자재','기타','코튼','기타',300,450,250,'',11);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requirement`
--

DROP TABLE IF EXISTS `requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requirement` (
  `req_num` int NOT NULL,
  `prod_cd` varchar(50) DEFAULT NULL,
  `prod_fcd` varchar(50) DEFAULT NULL,
  `prod_nm` varchar(100) DEFAULT NULL,
  `prod_fnm` varchar(100) DEFAULT NULL,
  `req_req` varchar(30) DEFAULT NULL,
  `req_add_emp` varchar(50) DEFAULT NULL,
  `req_add_date` date DEFAULT NULL,
  `req_edit_emp` varchar(50) DEFAULT NULL,
  `req_edit_date` date DEFAULT NULL,
  PRIMARY KEY (`req_num`),
  KEY `FK_product_TO_requirement_1` (`prod_cd`),
  KEY `FK_product_TO_requirement_2_idx` (`prod_fcd`),
  CONSTRAINT `FK_product_TO_requirement_1` FOREIGN KEY (`prod_cd`) REFERENCES `product` (`prod_cd`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_product_TO_requirement_2` FOREIGN KEY (`prod_fcd`) REFERENCES `product` (`prod_cd`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requirement`
--

LOCK TABLES `requirement` WRITE;
/*!40000 ALTER TABLE `requirement` DISABLE KEYS */;
INSERT INTO `requirement` VALUES (1,'P002','P001','원단','곰돌이인형','10','우정임','2023-03-28','우정임','2023-03-28'),(2,'P003','P001','솜','곰돌이인형','3','우수빈','2023-03-28','우수빈','2023-03-28'),(3,'P005','P001','실','곰돌이인형','10','노은주','2023-03-01','노은주','2023-03-04'),(4,'P002','P004','원단','토끼인형','10','박은지','2023-04-04','박은지','2023-04-04'),(5,'P003','P004','솜','토끼인형','3','신영환','2023-04-01','신영환','2023-04-01'),(6,'P005','P004','실','토끼인형','10','심예린','2023-03-30','심예린','2023-03-30'),(7,'P009','P004','인형눈','토끼인형','2','우정임','2023-03-28','우정임','2023-03-28'),(8,'P002','P006','원단','강아지인형','10','우수빈','2023-03-28','우수빈','2023-03-28'),(9,'P003','P006','솜','강아지인형','3','노은주','2023-03-01','노은주','2023-03-01'),(10,'P005','P006','실','강아지인형','10','박은지','2023-04-04','박은지','2023-04-04'),(11,'P010','P006','단추','강아지인형','2','신영환','2023-04-01','신영환','2023-04-01'),(12,'P002','P007','원단','돌고래인형','10','심예린','2023-03-30','심예린','2023-03-30'),(13,'P003','P007','솜','돌고래인형','3','우정임','2023-03-28','우정임','2023-03-28'),(14,'P005','P007','실','돌고래인형','10','우수빈','2023-03-28','우수빈','2023-03-28'),(15,'P009','P009','인형눈','돌고래인형','2','노은주','2023-03-01','노은주','2023-03-01'),(16,'P002','P008','원단','고양이인형','10','박은지','2023-04-04','박은지','2023-04-04'),(17,'P003','P008','솜','고양이인형','3','신영환','2023-04-01','신영환','2023-04-01'),(18,'P005','P008','실','고양이인형','10','심예린','2023-03-30','심예린','2023-03-30'),(19,'P010','P008','단추','고양이인형','2','우정임','2023-03-28','우정임','2023-03-28'),(20,'P010','P001','단추','곰돌이인형','2','우수빈','2023-03-28','우수빈','2023-03-28');
/*!40000 ALTER TABLE `requirement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ship`
--

DROP TABLE IF EXISTS `ship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ship` (
  `ship_cd` varchar(50) NOT NULL,
  `ord_cd` varchar(50) DEFAULT NULL,
  `ship_ifcount` int DEFAULT NULL,
  `ship_count` int DEFAULT NULL,
  `ship_over` int DEFAULT NULL,
  `ship_inven` int DEFAULT NULL,
  `ship_date` datetime DEFAULT NULL,
  PRIMARY KEY (`ship_cd`),
  KEY `FK_order_TO_ship_1` (`ord_cd`),
  KEY `FK_product_TO_ship_1_idx` (`ship_inven`),
  CONSTRAINT `FK_order_TO_ship_1` FOREIGN KEY (`ord_cd`) REFERENCES `orders` (`ord_cd`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ship`
--

LOCK TABLES `ship` WRITE;
/*!40000 ALTER TABLE `ship` DISABLE KEYS */;
INSERT INTO `ship` VALUES ('S00120230404','O00120230228',5,5,999,1,'2023-04-04 23:59:59'),('S00120230405','O00420230403',200,200,999,15,'2023-04-05 23:59:59'),('S00120230410','O00120230407',50,50,0,0,'2023-04-10 23:59:59'),('S00120230415','O00220230414',5,5,0,0,'2023-04-15 23:59:59'),('S00120230416','O00320230414',5,5,0,0,'2023-04-16 23:59:59'),('S00120230426','O00120230405',10,5,0,0,'2023-04-26 23:59:59'),('S00220230404','O00320230403',100,100,999,8,'2023-04-04 23:59:59'),('S00220230415','O00120230402',100,1,0,0,'2023-04-15 23:59:59'),('S00320230404','O00520230403',100,15,0,0,'2023-04-04 23:59:59'),('S00320230415','O00120230404',100,5,0,0,'2023-04-15 23:59:59'),('S00420230415','O00120230325',5,5,0,0,'2023-04-15 23:59:59'),('S00520230415','O00120230401',500,5,0,0,'2023-04-15 23:59:59');
/*!40000 ALTER TABLE `ship` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-14 14:26:26
