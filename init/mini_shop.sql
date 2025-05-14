SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+09:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `mini_shop` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mini_shop`;
--
-- Database: `mini_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `description`) VALUES
(1, '음료', '생수, 커피, 차, 맥주 및 음료수'),
(2, '양념/소스', '간장, 고추장, 된장, 소스 및 양념'),
(3, '디저트/간식', '과자, 초콜릿, 빵 및 사탕'),
(4, '유제품', '우유, 치즈, 요구르트'),
(5, '곡물/시리얼', '쌀, 밀가루, 라면, 국수 및 시리얼'),
(6, '육류', '소고기, 돼지고기, 닭고기'),
(7, '채소/과일', '신선한 채소 및 과일'),
(8, '해산물', '생선 및 해산물');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `contact_name`, `address`, `city`, `postal_code`, `country`) VALUES
(1, '강남마트', '김지영', '테헤란로 123', '서울', '06235', '대한민국'),
(2, '부산식자재', '이민수', '해운대로 456', '부산', '48300', '대한민국'),
(3, '인천푸드', '박서연', '송도대로 789', '인천', '21984', '대한민국'),
(4, '대구마켓', '정현우', '동대구로 101', '대구', '41585', '대한민국'),
(5, '광주유통', '최지원', '상무대로 202', '광주', '61945', '대한민국'),
(6, '대전식품', '윤소영', '대덕대로 303', '대전', '34126', '대한민국'),
(7, '울산슈퍼', '임준호', '삼산로 404', '울산', '44719', '대한민국'),
(8, '경기마트', '한지민', '동탄대로 505', '화성', '18455', '대한민국'),
(9, '강원푸드', '송민재', '춘천로 606', '춘천', '24358', '대한민국'),
(10, '제주식자재', '오유진', '중문로 707', '제주', '63535', '대한민국'),
(11, '서울프레시', '강동훈', '강남대로 808', '서울', '06010', '대한민국'),
(12, '부산유통', '배수지', '광안리해변로 909', '부산', '48096', '대한민국'),
(13, '인천마켓', '권태준', '청라대로 1010', '인천', '22338', '대한민국'),
(14, '경남유통', '백지영', '창원대로 1111', '창원', '51430', '대한민국'),
(15, '전북마켓', '조현우', '전주로 1212', '전주', '54995', '대한민국'),
(16, '충남유통', '홍수민', '천안대로 1313', '천안', '31144', '대한민국'),
(17, '경북마트', '류지원', '포항로 1414', '포항', '37748', '대한민국'),
(18, '충북식품', '남윤아', '청주로 1515', '청주', '28525', '대한민국'),
(19, '경기푸드', '김준영', '수원로 1616', '수원', '16491', '대한민국'),
(20, '전남유통', '이슬기', '여수로 1717', '여수', '59675', '대한민국');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `name`, `birth_date`, `photo`, `notes`) VALUES
(1, '김영수', '1980-05-20', 'EmpID1.pic', '10년 이상의 영업 경력, 다수의 영업 교육 이수 및 우수 영업사원 수상 경력, 고객 관계 유지 전문가'),
(2, '이지은', '1985-07-15', 'EmpID2.pic', '신입사원 교육 프로그램 담당, 영어와 일본어 능통, 해외 영업팀 협업 프로젝트 리더'),
(3, '박민준', '1978-03-10', 'EmpID3.pic', '마케팅팀 10년 근무 후 영업팀으로 이동, 데이터 분석 전문가, AI 기반 마케팅 전략 개발'),
(4, '최수진', '1982-11-25', 'EmpID4.pic', '고객 관계 관리 전문가, 이전 스타트업 창업 경험 있음, 디지털 트랜스포메이션 프로젝트 주도'),
(5, '정태영', '1975-09-30', 'EmpID5.pic', '영업관리 20년 경력, 한국 마케팅 협회 정회원, 해외 시장 개척 경험 풍부, 멘토링 프로그램 운영'),
(6, '강하윤', '1988-01-12', 'EmpID6.pic', '소비자 행동 분석 전문, 고객 서비스 교육 프로그램 개발, 온라인 마케팅 캠페인 성공적 운영'),
(7, '윤성민', '1983-06-28', 'EmpID7.pic', 'IT 시스템 도입으로 영업 프로세스 개선 담당, 업무 자동화 전문가, 빅데이터 활용 영업 전략 수립'),
(8, '장미영', '1979-04-18', 'EmpID8.pic', '해외 고객 관리 담당, 영어, 중국어 능통, 문화간 커뮤니케이션 전문, 글로벌 영업 전략 개발'),
(9, '임준호', '1990-12-05', 'EmpID9.pic', '신선식품 물류 최적화 담당, 공급망 관리 전문가, 지속가능한 유통 시스템 구축 프로젝트 리더'),
(10, '한소희', '1987-08-15', 'EmpID10.pic', '제품 품질 관리 담당, 식품 안전 인증 전문가, 고객 만족도 향상 프로그램 개발 및 실행');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `shipper_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `employee_id`, `order_date`, `shipper_id`) VALUES
(10248, 1, 5, '2023-07-04', 3),
(10249, 3, 6, '2023-07-05', 1),
(10250, 5, 4, '2023-07-08', 2),
(10251, 7, 3, '2023-07-08', 1),
(10252, 9, 4, '2023-07-09', 2),
(10253, 2, 3, '2023-07-10', 2),
(10254, 4, 5, '2023-07-11', 2),
(10255, 6, 9, '2023-07-12', 3),
(10256, 8, 3, '2023-07-15', 2),
(10257, 10, 4, '2023-07-16', 3),
(10258, 12, 1, '2023-07-17', 1),
(10259, 14, 4, '2023-07-18', 3),
(10260, 16, 4, '2023-07-19', 1),
(10261, 18, 4, '2023-07-19', 2),
(10262, 20, 8, '2023-07-22', 3),
(10263, 11, 9, '2023-07-23', 3),
(10264, 13, 6, '2023-07-24', 3),
(10265, 15, 2, '2023-07-25', 1),
(10266, 17, 3, '2023-07-26', 3),
(10267, 19, 4, '2023-07-29', 1),
(10268, 1, 3, '2023-08-01', 2),
(10269, 1, 7, '2023-08-05', 1),
(10270, 2, 5, '2023-08-02', 3),
(10271, 2, 8, '2023-08-06', 2),
(10272, 3, 2, '2023-08-03', 1),
(10273, 3, 4, '2023-08-07', 3),
(10274, 4, 6, '2023-08-04', 2),
(10275, 4, 9, '2023-08-08', 1),
(10276, 5, 3, '2023-08-01', 3),
(10277, 5, 5, '2023-08-05', 2),
(10278, 6, 4, '2023-08-02', 1),
(10279, 6, 7, '2023-08-06', 3),
(10280, 7, 2, '2023-08-03', 2),
(10281, 7, 6, '2023-08-07', 1),
(10282, 8, 9, '2023-08-04', 3),
(10283, 8, 3, '2023-08-08', 2),
(10284, 9, 5, '2023-08-01', 1),
(10285, 9, 8, '2023-08-05', 3),
(10286, 10, 2, '2023-08-02', 2),
(10287, 10, 4, '2023-08-06', 1),
(10288, 11, 6, '2023-08-03', 3),
(10289, 11, 9, '2023-08-07', 2),
(10290, 12, 3, '2023-08-04', 1),
(10291, 12, 5, '2023-08-08', 3),
(10292, 13, 4, '2023-08-01', 2),
(10293, 13, 7, '2023-08-05', 1),
(10294, 14, 2, '2023-08-02', 3),
(10295, 14, 6, '2023-08-06', 2),
(10296, 15, 9, '2023-08-03', 1),
(10297, 15, 3, '2023-08-07', 3),
(10298, 16, 5, '2023-08-04', 2),
(10299, 16, 8, '2023-08-08', 1),
(10300, 17, 2, '2023-08-01', 3),
(10301, 17, 4, '2023-08-05', 2),
(10302, 18, 6, '2023-08-02', 1),
(10303, 18, 9, '2023-08-06', 3),
(10304, 19, 3, '2023-08-03', 2),
(10305, 19, 5, '2023-08-07', 1),
(10306, 20, 4, '2023-08-04', 3),
(10307, 20, 7, '2023-08-08', 2);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_detail_id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 10248, 11, 12),
(2, 10248, 42, 10),
-- (3, 10248, 72, 5),
(4, 10249, 14, 9),
(5, 10249, 51, 40),
(6, 10250, 41, 10),
(7, 10250, 51, 35),
-- (8, 10250, 65, 15),
(9, 10251, 22, 6),
(10, 10251, 57, 15),
-- (11, 10251, 65, 20),
(12, 10252, 20, 40),
(13, 10252, 33, 25),
(14, 10252, 60, 40),
(15, 10253, 31, 20),
(16, 10253, 39, 42),
(17, 10253, 49, 40),
(18, 10254, 24, 15),
(19, 10254, 55, 21),
-- (20, 10254, 74, 21),
(21, 10255, 2, 20),
(22, 10255, 16, 35),
(23, 10255, 36, 25),
(24, 10255, 59, 30),
(25, 10256, 53, 15),
-- (26, 10256, 77, 12),
(27, 10257, 27, 25),
(28, 10257, 39, 6),
-- (29, 10257, 77, 15),
(30, 10258, 2, 50),
(31, 10259, 1, 15),
(32, 10259, 3, 8),
(33, 10260, 5, 12),
(34, 10260, 7, 3),
(35, 10261, 9, 2),
(36, 10261, 11, 20),
(37, 10262, 13, 10),
(38, 10262, 15, 5),
(39, 10263, 17, 8),
(40, 10263, 19, 12),
(41, 10264, 21, 25),
(42, 10264, 23, 15),
(43, 10265, 25, 10),
(44, 10265, 27, 5),
(45, 10266, 29, 3),
(46, 10266, 2, 15),
(47, 10267, 4, 12),
(48, 10267, 6, 8),
(49, 10268, 8, 5),
(50, 10268, 10, 10),
(51, 10268, 12, 8),
(52, 10269, 14, 15),
(53, 10269, 16, 10),
(54, 10269, 18, 3),
(55, 10270, 20, 12),
(56, 10270, 22, 8),
(57, 10270, 24, 5),
(58, 10271, 26, 10),
(59, 10271, 28, 3),
(60, 10271, 30, 8),
(61, 10272, 1, 20),
(62, 10272, 3, 15),
(63, 10272, 5, 10),
(64, 10273, 7, 5),
(65, 10273, 9, 3),
(66, 10273, 11, 15),
(67, 10274, 13, 8),
(68, 10274, 15, 12),
(69, 10274, 17, 5),
(70, 10275, 19, 10),
(71, 10275, 21, 8),
(72, 10275, 23, 3),
(73, 10276, 25, 15),
(74, 10276, 27, 10),
(75, 10276, 29, 5),
(76, 10277, 2, 12),
(77, 10277, 4, 8),
(78, 10277, 6, 3),
(79, 10278, 8, 15),
(80, 10278, 10, 10),
(81, 10278, 12, 5),
(82, 10279, 14, 12),
(83, 10279, 16, 8),
(84, 10279, 18, 3),
(85, 10280, 20, 15),
(86, 10280, 22, 10),
(87, 10280, 24, 5),
(88, 10281, 26, 12),
(89, 10281, 28, 8),
(90, 10281, 30, 3),
(91, 10282, 1, 15),
(92, 10282, 3, 10),
(93, 10282, 5, 5),
(94, 10283, 7, 12),
(95, 10283, 9, 8),
(96, 10283, 11, 3),
(97, 10284, 13, 15),
(98, 10284, 15, 10),
(99, 10284, 17, 5),
(100, 10285, 19, 12),
(101, 10285, 21, 8),
(102, 10285, 23, 3),
(103, 10286, 25, 15),
(104, 10286, 27, 10),
(105, 10286, 29, 5),
(106, 10287, 2, 12),
(107, 10287, 4, 8),
(108, 10287, 6, 3),
(109, 10288, 8, 15),
(110, 10288, 10, 10),
(111, 10288, 12, 5),
(112, 10289, 14, 12),
(113, 10289, 16, 8),
(114, 10289, 18, 3),
(115, 10290, 20, 15),
(116, 10290, 22, 10),
(117, 10290, 24, 5),
(118, 10291, 26, 12),
(119, 10291, 28, 8),
(120, 10291, 30, 3),
(121, 10292, 1, 15),
(122, 10292, 3, 10),
(123, 10292, 5, 5),
(124, 10293, 7, 12),
(125, 10293, 9, 8),
(126, 10293, 11, 3),
(127, 10294, 13, 15),
(128, 10294, 15, 10),
(129, 10294, 17, 5),
(130, 10295, 19, 12),
(131, 10295, 21, 8),
(132, 10295, 23, 3),
(133, 10296, 25, 15),
(134, 10296, 27, 10),
(135, 10296, 29, 5),
(136, 10297, 2, 12),
(137, 10297, 4, 8),
(138, 10297, 6, 3),
(139, 10298, 8, 15),
(140, 10298, 10, 10),
(141, 10298, 12, 5),
(142, 10299, 14, 12),
(143, 10299, 16, 8),
(144, 10299, 18, 3),
(145, 10300, 20, 15),
(146, 10300, 22, 10),
(147, 10300, 24, 5),
(148, 10301, 26, 12),
(149, 10301, 28, 8),
(150, 10301, 30, 3),
(151, 10302, 1, 15),
(152, 10302, 3, 10),
(153, 10302, 5, 5),
(154, 10303, 7, 12),
(155, 10303, 9, 8),
(156, 10303, 11, 3),
(157, 10304, 13, 15),
(158, 10304, 15, 10),
(159, 10304, 17, 5),
(160, 10305, 19, 12),
(161, 10305, 21, 8),
(162, 10305, 23, 3),
(163, 10306, 25, 15),
(164, 10306, 27, 10),
(165, 10306, 29, 5),
(166, 10307, 2, 12),
(167, 10307, 4, 8),
(168, 10307, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `supplier_id`, `category_id`, `unit`, `price`) VALUES
(1, '삼다수', 1, 1, '2L x 6병', 9800),
(2, '맥콜', 1, 1, '500ml x 20캔', 15000),
(3, '청정원 양조간장', 2, 2, '1.7L x 2병', 12500),
(4, '고추장 태양초', 2, 2, '500g x 3개', 18000),
(5, '순창 된장', 2, 2, '1kg x 2개', 15500),
(6, '오뚜기 마요네즈', 3, 2, '500g x 2개', 8000),
(7, '제철 배', 3, 7, '1.5kg 박스', 25000),
(8, '조청', 3, 2, '1kg x 2통', 22000),
(9, '한우 등심', 4, 6, '1kg 팩', 75000),
(10, '고등어', 4, 8, '2마리 팩', 12000),
(11, '서울우유', 5, 4, '1L x 6팩', 14500),
(12, '동원 구운 김', 5, 8, '5g x 40봉', 18000),
(13, '제주 갈치', 6, 8, '특대 2마리', 45000),
(14, '두부', 6, 7, '300g x 5모', 8500),
(15, '양반 김', 6, 8, '10장 x 10봉', 12000),
(16, '초코파이', 7, 3, '12개입 x 4박스', 16000),
(17, '양고기', 7, 6, '냉동 500g', 18500),
(18, '제주 전복', 7, 8, '10미', 35000),
(19, '크라운 산도', 8, 3, '12개입 x 5박스', 7500),
(20, '허니버터칩', 8, 3, '60g x 10봉', 12000),
(21, '쿠키런 쿠키', 8, 3, '45g x 12개', 9500),
(22, '옛날과자', 9, 3, '500g 봉지', 4500),
(23, '쌀국수', 9, 5, '500g x 5봉', 12000),
(24, '칠성사이다', 10, 1, '500ml x 12캔', 8500),
(25, '초코맛 아이스크림', 11, 3, '1.5L 통', 5500),
(26, '젤리', 11, 3, '50g x 20개', 15000),
(27, '밀크초콜릿', 11, 3, '100g x 10개', 22000),
(28, '김치', 12, 7, '5kg 포기', 35000),
(29, '양념 돼지갈비', 12, 6, '1kg 팩', 25000),
(30, '고등어 통조림', 13, 8, '200g x 10캔', 18000),
(31, '쌀', 1, 5, '10kg 포대', 28000),
(32, '녹차', 1, 1, '1.5L x 12병', 14000),
(33, '홍차', 1, 1, '티백 50개', 9000),
(34, '청정원 굴소스', 2, 2, '350ml x 3병', 15000),
(35, '쌈장', 2, 2, '500g x 2개', 7500),
(36, '고추기름', 2, 2, '300ml x 2병', 9800),
(37, '사과', 3, 7, '5kg 상자', 29000),
(38, '감자', 3, 7, '3kg 망', 10500),
(39, '양파', 3, 7, '3kg 망', 8000),
(40, '소고기 국거리', 4, 6, '500g 팩', 25000),
(41, '돼지고기 삼겹살', 4, 6, '600g 팩', 18500),
(42, '치즈', 5, 4, '200g x 3개', 12000),
(43, '요구르트', 5, 4, '150ml x 10개', 4500),
(44, '버터', 5, 4, '450g x 2개', 15000),
(45, '참치 통조림', 6, 8, '150g x 12캔', 22000),
(46, '미역', 6, 8, '200g x 5봉', 15000),
(47, '파이', 7, 3, '12개입 x 2박스', 9000),
(48, '와플', 7, 3, '8개입 x 3박스', 12000),
(49, '감자칩', 8, 3, '60g x 12봉', 15000),
(50, '새우깡', 8, 3, '90g x 10봉', 12500),
(51, '건빵', 9, 3, '270g x 5봉', 9500),
(52, '라면', 9, 5, '120g x 24개', 18000),
(53, '콜라', 10, 1, '1.5L x 6병', 9500),
(54, '환타', 10, 1, '500ml x 12캔', 10000),
(55, '바닐라 아이스크림', 11, 3, '1.5L 통', 5500),
(56, '떡볶이 떡', 12, 5, '500g x 4봉', 12000),
(57, '소시지', 12, 6, '400g x 3팩', 15000),
(58, '참치회', 13, 8, '500g 팩', 40000),
(59, '연어', 13, 8, '300g 필렛', 25000),
(60, '문어', 13, 8, '냉동 1kg', 35000);

-- --------------------------------------------------------

--
-- Table structure for table `shippers`
--

CREATE TABLE `shippers` (
  `shipper_id` int(11) NOT NULL,
  `shipper_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shippers`
--

INSERT INTO `shippers` (`shipper_id`, `shipper_name`, `phone`) VALUES
(1, '한진택배', '1588-0011'),
(2, '대한통운', '1588-1255'),
(3, '롯데택배', '1588-2121');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(255) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `supplier_name`, `contact_name`, `address`, `city`, `postal_code`, `country`, `phone`) VALUES
(1, '제주음료', '고동현', '제주시 첨단로 123', '제주', '63309', '대한민국', '064-123-4567'),
(2, '청정원', '박지훈', '서울시 중구 소공로 45', '서울', '04637', '대한민국', '02-777-8888'),
(3, '농심식품', '이서연', '안양시 동안구 흥안대로 123', '안양', '14051', '대한민국', '031-333-4444'),
(4, '한우마을', '정성훈', '횡성군 횡성읍 문화로 234', '횡성', '25228', '대한민국', '033-555-6666'),
(5, '서울유업', '김미란', '양주시 광적면 부흥로 345', '양주', '11409', '대한민국', '031-777-8899'),
(6, '제주식품', '이상철', '제주시 조천읍 신흥로 456', '제주', '63253', '대한민국', '064-555-6677'),
(7, '롯데식품', '한지원', '서울시 영등포구 양평로 567', '서울', '07258', '대한민국', '02-333-4455'),
(8, '크라운제과', '남지영', '인천시 연수구 컨벤시아대로 678', '인천', '21998', '대한민국', '032-777-8899'),
(9, '오리온', '윤도현', '군포시 공단로 789', '군포', '15849', '대한민국', '031-444-5566'),
(10, '롯데칠성', '강지영', '안성시 공도읍 서동대로 890', '안성', '17599', '대한민국', '031-888-9900'),
(11, '빙그레', '최준서', '남양주시 다산중앙로 901', '남양주', '12244', '대한민국', '031-333-9988'),
(12, '종가집', '이민지', '광주시 북구 첨단과기로 1012', '광주', '61238', '대한민국', '062-444-5566'),
(13, '동원F&B', '박태준', '창원시 성산구 중앙대로 1123', '창원', '51501', '대한민국', '055-777-8800');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `shipper_id` (`shipper_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `shippers`
--
ALTER TABLE `shippers`
  ADD PRIMARY KEY (`shipper_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10308;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `shippers`
--
ALTER TABLE `shippers`
  MODIFY `shipper_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`shipper_id`) REFERENCES `shippers` (`shipper_id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */; 