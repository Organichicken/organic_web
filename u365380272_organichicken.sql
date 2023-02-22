-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2021 at 10:33 AM
-- Server version: 10.5.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u365380272_organichicken`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `address_id` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `alternative_phone` varchar(30) NOT NULL,
  `house_no` varchar(45) NOT NULL,
  `building_name` varchar(45) NOT NULL,
  `street` varchar(45) NOT NULL,
  `address` varchar(500) NOT NULL,
  `landmark` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `city` varchar(100) NOT NULL,
  `address_type` varchar(45) NOT NULL,
  `is_default_address` int(10) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `user_id`, `address_id`, `name`, `phone`, `alternative_phone`, `house_no`, `building_name`, `street`, `address`, `landmark`, `pincode`, `city`, `address_type`, `is_default_address`, `latitude`, `longitude`, `updated_at`) VALUES
(1, '#OCUSR_vzFcO', '#OCADD_oXIhM', 'VJ Kumar', '', '', '4-37-3', '4-37-3', 'JN street', 'NH65, Arrival Block,Pandit Nehru Bus Stop, Krishnalanka, Vijayawada, Andhra Pradesh 520001, India', 'near Gandhi statue', 520001, '', 'home', 1, '16.5088752', '80.61548859999999', '2021-12-17 13:15:38'),
(2, '#OCUSR_72IOl', '#OCADD_LotNR', '', '', '', '6', '6', 'sample street', 'Andhra Pradesh 520001, India', 'landmark', 520001, '', 'home', 1, '16.5380465', '80.6132646', '2021-12-01 16:43:03'),
(3, '#OCUSR_8S0ec', '#OCADD_vQOsf', '', '', '', '2-34', '2-34', 'Sitararoad', '3-1-214/7 Sitara Junction, Vidhyadharapuram Main Rd, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'Sitara convention hall', 520012, '', 'work', 1, '16.5345417', '80.605803', '2021-12-18 17:26:52'),
(4, '#OCUSR_6Q4BT', '#OCADD_jglFO', '', '', '', 'prabhudasu', 'prabhudasu', 'cement road,hill top', 'Sithara convenient road, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'Nagendra Swamy temple', 520012, '', 'home', 1, '16.5352783', '80.6063069', '2021-12-02 13:13:14'),
(5, '#OCUSR_TJcm4', '#OCADD_UjkZ8', '', '', '', '3-1-21;beside masjid', '3-1-21;beside masjid', 'labour colony', '1-3-247/2, Milk Factory Rd, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'masjid', 520012, '', 'home', 1, '16.5352172', '80.6062259', '2021-12-02 17:22:55'),
(6, '#OCUSR_jsBGf', '#OCADD_X1SPY', '', '', '', '43-19-4A B1- 89', '43-19-4A B1- 89', 'St Ann\'s school Roar pnt coline ', 'GJQQ+WR6, Ajit Singh Nagar, PNT Colony, Vijayawada, Andhra Pradesh 520015, India', 'smile multi speciality hospital Ajith singh nagar 520015', 520015, '', 'home', 0, '16.5398683', '80.6396559', '2021-12-03 10:20:31'),
(7, '#OCUSR_jsBGf', '#OCADD_WNpZG', '', '', '', '43-19-4A B1- 89', '43-19-4A B1- 89', 'St Ann\'s school Roar pnt coline ', 'GJQQ+WR6, Ajit Singh Nagar, PNT Colony, Vijayawada, Andhra Pradesh 520015, India', 'smile multi speciality hospital Ajith singh nagar 520015', 520015, '', 'home', 0, '16.5398683', '80.6396559', '2021-12-03 10:20:31'),
(8, '#OCUSR_l8Phw', '#OCADD_4k034', '', '', '', '66', '66', 'shiv shankar nagar', '73-6-24, Siva Shankara Nagar, near Asha Function Hall, JD Nagar, Patamata, Benz Circle, Vijayawada, Andhra Pradesh 520010, India', 'back side of vijaya hospital', 520010, '', 'home', 1, '16.4920409', '80.6655845', '2021-12-03 00:51:51'),
(9, '#OCUSR_jsBGf', '#OCADD_hAO4e', '', '', '', '43-19-4A B1-89', '43-19-4A B1-89', 'Venkateswarlu street', '43-8-20, Venkateswarlu Street, Ajit Singh Nagar, PNT Colony, Vijayawada, Andhra Pradesh 520015, India', 'smile multi speciality hospital Ajith singh nagar 520015', 520015, '', 'home', 0, '16.5396282', '80.6366871', '2021-12-03 10:20:31'),
(10, '#OCUSR_jsBGf', '#OCADD_W7sLY', '', '', '', '43-19-4A B1-89', '43-19-4A B1-89', 'Venkateswarlu street', '43-8-20, Venkateswarlu Street, Ajit Singh Nagar, PNT Colony, Vijayawada, Andhra Pradesh 520015, India', 'smile multi speciality hospital Ajith singh nagar 520015', 520015, '', 'home', 1, '16.5396282', '80.6366871', '2021-12-03 10:20:31'),
(11, '#OCUSR_Ilpjz', '#OCADD_raIMW', '', '', '', 'HIG 311', 'HIG 311', 'APHB COLONY, BHAVANIPURAM', 'HIG:300, APHB Colony, behind SBI ATM, Block 14, New Housing Board Colony, Bhavanipuram, Police Station, Vijayawada, Andhra Pradesh 520012, India', 'Behind HRTM Apartments', 520012, '', 'home', 1, '16.5370053', '80.5947106', '2021-12-19 12:13:44'),
(12, '#OCUSR_zdpyB', '#OCADD_lWSwk', '', '', '', '4-11-33 ', '4-11-33 ', 'pedda mastan street ', 'GJM7+HGR, Lambaadipeta, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India', 'near alinagar masjid', 520001, '', 'home', 1, '16.5339967', '80.6137737', '2021-12-25 07:54:34'),
(13, '#OCUSR_zdpyB', '#OCADD_k2dPa', '', '', '', '4-11-33 ', '4-11-33 ', 'pedda mastan street ', 'GJM7+HGR, Lambaadipeta, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India', 'near alinagar masjid', 520001, '', 'home', 0, '16.5339967', '80.6137737', '2021-12-25 07:54:34'),
(14, '#OCUSR_OC0bU', '#OCADD_1Agpj', '', '', '', 'bhanunagar', 'bhanunagar', '2nd lane', '21-15/1-17A, 2nd Ln, Bhanu Nagar, Railway Colony, Madhura Nagar, Vijayawada, Andhra Pradesh 520011, India', 'near BRTS Road vijayawada 520011', 520011, '', 'home', 1, '16.5235868', '80.6466817', '2021-12-05 20:00:49'),
(15, '#OCUSR_Bzc2a', '#OCADD_hUNdX', 'suresh', '', '', '76-13-55a', '76-13-55a', 'jojinagar 3rd line vijayawada', '76-13-8B, Uri Nagar Rd, Jojinagar, Vijayawada, Andhra Pradesh 520001, India', 'community hall 520011', 520001, '', 'home', 1, '16.5387601', '80.6011691', '2021-12-27 21:29:42'),
(16, '#OCUSR_KIgTv', '#OCADD_zwpp3', '', '', '', '76-13-55a ', '76-13-55a ', 'jojinagar 3rd line ', 'GJP2+HR6, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'vijayavaada 520012', 520012, '', 'home', 1, '16.5362461', '80.6016409', '2021-12-16 12:16:39'),
(18, '#OCUSR_h5C5P', '#OCADD_SbrSu', '', '', '', '1st Floor', '1st Floor', 'Shivalayam Street', '6-12, Grandhalayam Rd, Ramanagar, Nidamanuru, Vijayawada, Andhra Pradesh 521104, India', 'Opposite To Union Bank', 521104, '', 'home', 1, '16.5087325', '80.7197386', '2021-12-06 18:08:34'),
(19, '#OCUSR_KPbWy', '#OCADD_XSkW8', '', '', '', 'FF 8. block no 178', 'FF 8. block no 178', 'YSR colony', 'HJ46+9P5, Block 178, Vijayawada, Andhra Pradesh 520001, India', 'Lakshmi general store', 520001, '', 'home', 1, '16.555972', '80.6117714', '2021-12-06 20:50:15'),
(20, '#OCUSR_KPbWy', '#OCADD_PvwfR', '', '', '', 'FF 8. block no 178', 'FF 8. block no 178', 'YSR colony', 'HJ46+9P5, Block 178, Vijayawada, Andhra Pradesh 520001, India', 'Lakshmi general store', 520001, '', 'home', 0, '16.555972', '80.6117714', '2021-12-06 20:50:15'),
(21, '#OCUSR_KPbWy', '#OCADD_97p5p', '', '', '', 'FF 8. block no 178', 'FF 8. block no 178', 'YSR colony', 'HJ46+9P5, Block 178, Vijayawada, Andhra Pradesh 520001, India', 'Lakshmi general store', 520001, '', 'home', 0, '16.555972', '80.6117714', '2021-12-06 20:50:15'),
(22, '#OCUSR_9dqiX', '#OCADD_prIdb', '', '', '', '3-1-20/a', '3-1-20/a', 'vidhyadarapuram main road', '# 1-3-189, Vidyadharapuram, beside Terisa Hospital, Kamakoti Nagar, V D Puram, Vijayawada, Andhra Pradesh 520012, India', 'beside masjid', 520012, '', 'home', 1, '16.5263265', '80.6044657', '2021-12-19 08:09:05'),
(23, '#OCUSR_bFJyv', '#OCADD_Bprlg', '', '', '', '1-4-206, ', '1-4-206, ', 'rythu bazar road', '1-4-208/3A, Kapila Vaari St, Chittinagar, Bharathi Teertha Nagar, V D Puram, Vijayawada, Andhra Pradesh 520012, India', 'opp:APSRTC work shop yard, bhavanipuram', 520012, '', 'home', 1, '16.532363', '80.5997353', '2021-12-07 18:40:28'),
(24, '#OCUSR_bFJyv', '#OCADD_HCpQ1', '', '', '', '1-4-206, ', '1-4-206, ', 'rythu bazar road', '1-4-208/3A, Kapila Vaari St, Chittinagar, Bharathi Teertha Nagar, V D Puram, Vijayawada, Andhra Pradesh 520012, India', 'opp:APSRTC work shop yard, bhavanipuram', 520012, '', 'home', 0, '16.532363', '80.5997353', '2021-12-07 18:40:54'),
(25, '#OCUSR_tuItl', '#OCADD_XMWdh', '', '', '', 'Flat no. D3, Kowsika Aditya Apartment', 'Flat no. D3, Kowsika Aditya Apartment', 'Street beside Viceroy Heights Appt,', 'FJF9+RHX, Tadepalli, Andhra Pradesh 522501, India', 'Behind Hiway Towers, Tadepalli-522501', 522501, '', 'home', 1, '16.4744166', '80.6192742', '2021-12-07 22:17:44'),
(26, '#OCUSR_fOSlj', '#OCADD_SfpYr', '', '', '', 'D. No:1-4-207/6, Flat no:C8, Ramamohan Apartm', 'D. No:1-4-207/6, Flat no:C8, Ramamohan Apartm', 'Bharathi Teertha Nagar', '520012, Chittinagar, Bharathi Teertha Nagar, V D Puram, Vijayawada, Andhra Pradesh 520012, India', 'Beside Bhavanipuram Rythubazar', 520012, '', 'home', 1, '16.5324256', '80.5991281', '2021-12-07 22:28:30'),
(27, '#OCUSR_uohhI', '#OCADD_i5kcg', '', '', '', 'for 202 changal Jayanti opel', 'for 202 changal Jayanti opel', 'venkateswara Nagar 3rd lane ', 'Sithara convenient road, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'opp to loyola college', 520012, '', 'home', 1, '16.5352424', '80.6061966', '2021-12-08 11:00:02'),
(28, '#OCUSR_uohhI', '#OCADD_JXs8a', '', '', '', 'for 202 changal Jayanti opel', 'for 202 changal Jayanti opel', 'venkateswara Nagar 3rd lane ', 'Sithara convenient road, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'opp to loyola college', 520012, '', 'home', 0, '16.5352424', '80.6061966', '2021-12-08 11:00:02'),
(29, '#OCUSR_cs9vY', '#OCADD_bEJDJ', 'Saifuddin\n', '', '', '4_11_5', '4_11_5', 'pedda mastan street Ali nagar', 'MIG-2, Police Station Rd, near Reliance Trends, Housing Board Colony, Vijayawada, Andhra Pradesh 520012, India', 'kalara hospital', 520012, '', 'home', 1, '16.5346001', '80.5974768', '2021-12-19 11:21:03'),
(30, '#OCUSR_a3y7R', '#OCADD_5uWrV', '', '', '', 'cbp, esr', 'cbp, esr', 'covid, congratulations', 'Railway Station Road, Gandhi Nagar, Vijayawada, Andhra Pradesh 520001, India', 'all the best', 520003, '', 'home', 1, '16.5181936', '80.6200626', '2021-12-08 18:47:26'),
(31, '#OCUSR_wvfyt', '#OCADD_b2hiV', '', '', '', '43-106/1-22C ', '43-106/1-22C ', 'Postman Ramachandra Rao Street Indiranayak Na', 'GJMM+V73, Ajit Singh Nagar, PNT Colony, Vijayawada, Andhra Pradesh 520015, India', 'Beside lane of SMart, ', 520015, '', 'home', 0, '16.5347023', '80.6335124', '2021-12-09 12:04:34'),
(32, '#OCUSR_wvfyt', '#OCADD_ItpE2', '', '', '', '43-106/1-22C\n', '43-106/1-22C\n', 'Postman Ramachandra Rao Street, Indiranayak N', 'GJMM+V73, Ajit Singh Nagar, PNT Colony, Vijayawada, Andhra Pradesh 520015, India', 'Beside lane of SMart', 520015, '', 'home', 1, '16.5346899', '80.6334436', '2021-12-09 12:04:34'),
(33, '#OCUSR_ropH0', '#OCADD_srUHe', '', '', '', 'SHAIK Mohiddin', 'SHAIK Mohiddin', 'pedda Mastan street', '4-11-5, Lambaadipeta, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India', 'cholera hospital', 520001, '', 'home', 1, '16.5345759', '80.6134257', '2021-12-09 07:05:12'),
(37, '#OCUSR_dFwWI', '#OCADD_fZu7g', '', '', '', 'Door no. 16-10', 'Door no. 16-10', 'First Street', 'Moula Nagar, Mahendra Nagar, Gollapudi, Vijayawada, Andhra Pradesh, India', 'Behind Andhra Hospitals', 521225, '', 'home', 1, '16.5363009', '80.5840066', '2021-12-09 22:01:39'),
(38, '#OCUSR_hvI3F', '#OCADD_cm8UR', '', '', '', '76-8-1-4', '76-8-1-4', 'parankusadas street', '76-8/9-11, Parankusadas St, near Swathi Theatre, Bhavanipuram, V D Puram, Vijayawada, Andhra Pradesh 520012, India', 'near swati theatre', 520012, '', 'work', 0, '16.5262079', '80.5949296', '2021-12-10 12:42:28'),
(39, '#OCUSR_hvI3F', '#OCADD_IZ4Qm', '', '', '', '76-8-1-4', '76-8-1-4', 'parankusadas street', '76-8/9-11, Parankusadas St, near Swathi Theatre, Bhavanipuram, V D Puram, Vijayawada, Andhra Pradesh 520012, India', 'near swati theatre', 520012, '', 'work', 1, '16.5262079', '80.5949296', '2021-12-10 12:42:28'),
(40, '#OCUSR_6zxdK', '#OCADD_zfwMX', 'Murali Raghavendra', '', '', 'geetanjali apartments', 'geetanjali apartments', 'sai nagar4 rth road', 'FMP4+MWG, Ramalingeswara Nagar, Vijayawada, Andhra Pradesh 520007, India', 'near putta road, beside jabilli enclave', 520007, '', 'home', 1, '16.4866586', '80.6572256', '2021-12-18 17:09:17'),
(41, '#OCUSR_fcPgS', '#OCADD_J5gpb', '', '', '', 'flatno 202, Srisai nivasam appartments', 'flatno 202, Srisai nivasam appartments', 'Borra vari street', 'HHF8+28C, Rayanapadu, Andhra Pradesh 521241, India', 'near Railway gate, rayanapadu,vijayawada', 521241, '', 'home', 1, '16.5725333', '80.5659309', '2021-12-11 20:54:03'),
(45, '#OCUSR_rZBjf', '#OCADD_dS2Dj', '', '', '', 'door no. 37-7-3', 'door no. 37-7-3', 'badavapet, vijayawada 520010', '37-1-17, Badavapet, Labbipet, Vijayawada, Andhra Pradesh 520010, India', 'beside IPC Church ', 520010, '', 'home', 1, '16.5044811', '80.6408425', '2021-12-12 07:49:07'),
(49, '#OCUSR_KRtpg', '#OCADD_LlqKJ', '', '', '', 'machiniliyam', 'machiniliyam', 'church street', 'Sithara convenient road, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'jojinagar church ', 520012, '', 'home', 0, '16.5353641', '80.606397', '2021-12-12 12:34:35'),
(50, '#OCUSR_KRtpg', '#OCADD_SWhri', '', '', '', 'machiniliyam', 'machiniliyam', 'church street', 'Sithara convenient road, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'jojinagar church ', 520012, '', 'home', 0, '16.5353641', '80.606397', '2021-12-12 12:34:35'),
(51, '#OCUSR_KRtpg', '#OCADD_F2Lto', '', '', '', 'machiniliyam', 'machiniliyam', 'church street', 'Sithara convenient road, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'jojinagar church ', 520012, '', 'home', 1, '16.5353641', '80.606397', '2021-12-12 12:34:35'),
(54, '#OCUSR_fodxm', '#OCADD_Zoyx2', '', '', '', 'Ravi Residency', 'Ravi Residency', 'Cbcn Church street, Prasadampadu', '2-112, Narayana Swamy St, Ramavarapadu, Vijayawada, Andhra Pradesh 521108, India', 'Sachivalayam3 -521 108', 521108, '', 'home', 1, '16.5194444', '80.6841328', '2021-12-13 07:28:10'),
(55, '#OCUSR_fodxm', '#OCADD_pc2Wb', '', '', '', 'Ravi Residency ', 'Ravi Residency ', 'CBCN Church Street, Prasadampadu', '10-87, Prasadampadu, currency nagar, Vijayawada, Andhra Pradesh 521108, India', 'Sachivalayam 3  pin -521 108', 521108, '', 'home', 0, '16.520893', '80.6858964', '2021-12-13 07:32:07'),
(56, '#OCUSR_fodxm', '#OCADD_li2K0', '', '', '', 'Ravi Residency ', 'Ravi Residency ', 'CBCN Church Street, Prasadampadu', '10-87, Prasadampadu, currency nagar, Vijayawada, Andhra Pradesh 521108, India', 'Sachivalayam 3  pin -521 108', 521108, '', 'home', 0, '16.520893', '80.6858964', '2021-12-13 07:32:09'),
(57, '#OCUSR_6zxdK', '#OCADD_fuzHN', 'Raghvendra', '', '', 'Geetanjali apartments, SF-1', 'Geetanjali apartments, SF-1', 'Sai Nagar 4rth road', 'FMP4+MWG, Ramalingeswara Nagar, Vijayawada, Andhra Pradesh 520007, India', 'Beside Jabilli Enclave', 520007, '', 'home', 0, '16.4867159', '80.6571146', '2021-12-18 17:09:17'),
(58, '#OCUSR_npDLo', '#OCADD_C6kMQ', '', '', '', 'sree nidhi ', 'sree nidhi ', 'msin ', 'Benz Circle, Vijayawada, Andhra Pradesh 520010, India', 'opppf ', 520010, '', 'home', 1, '16.4956621', '80.6542015', '2021-12-16 22:47:04'),
(59, '#OCUSR_npDLo', '#OCADD_VKHO5', '', '', '', 'sree nidhi ', 'sree nidhi ', 'msin ', 'Benz Circle, Vijayawada, Andhra Pradesh 520010, India', 'opppf ', 520010, '', 'home', 0, '16.4956621', '80.6542015', '2021-12-16 22:47:04'),
(62, '#OCUSR_B1mzu', '#OCADD_9gc7z', '', '', '', 'H I G 172', 'H I G 172', 'colony', 'Water Tank Rd, Beside Triangle Park, Bhavanipuram, APHB Colony, Vijayawada, Andhra Pradesh 500012, India', 'opp housing board office', 520012, '', 'home', 1, '16.5360954', '80.5937243', '2021-12-14 12:22:52'),
(63, '#OCUSR_eqYrK', '#OCADD_PX0Bu', 'vamsi Krishna ', '', '', '49-1-70', '49-1-70', 'ESI bus stop', '49-1-67, Eluru Rd, Urmila Nagar, Gunadala, Vijayawada, Andhra Pradesh 520004, India', 'Gunadala', 520004, '', 'home', 1, '16.5236945', '80.6689632', '2021-12-15 23:53:11'),
(64, '#OCUSR_rFh3x', '#OCADD_7vpLV', 'Siva Sai kumar', '', '', '27-33-2 sivani towers ', '27-33-2 sivani towers ', 'gudavallistreet', 'Kamaraju Building, Gudavalli Vari St, Governor Peta, Vijayawada, Andhra Pradesh 520002, India', 'beside bank of baroda', 520002, '', 'work', 1, '16.5102348', '80.6234733', '2021-12-16 13:08:07'),
(65, '#OCUSR_dV5rI', '#OCADD_sRo3i', 'shaik khatija\n', '', '', '76-14-233/5', '76-14-233/5', 'bhavanipuram,sivalayam back 4th lane', '76-14-233/4, 4th Ln, Housing Board Colony, Vijayawada, Andhra Pradesh 520012, India', 'opp sai balaji towers', 520012, '', 'home', 0, '16.5319485', '80.5945265', '2021-12-17 10:01:14'),
(66, '#OCUSR_dV5rI', '#OCADD_ap71w', 'shaik khatija', '', '', '76-14-233/4', '76-14-233/4', 'Housing Board Colony.\n', '76-14-233/4, 4th Ln, Housing Board Colony, Vijayawada, Andhra Pradesh 520012, India', 'sivalayam back 4th lane opp sai balaji towers.', 520012, '', 'home', 1, '16.5319487', '80.5945275', '2021-12-17 10:01:14'),
(67, '#OCUSR_hirHn', '#OCADD_D2W52', 'sivani towers ', '', '', '27-34_2 sivani plywoods and Laminates ', '27-34_2 sivani plywoods and Laminates ', 'Gudavalli  vari street', 'Kamaraju Building, Gudavalli Vari St, Governor Peta, Vijayawada, Andhra Pradesh 520002, India', 'beside bank of baroda', 520002, '', 'work', 1, '16.5102339', '80.6234775', '2021-12-17 18:11:18'),
(68, '#OCUSR_hirHn', '#OCADD_bMQuL', 'sivani towers ', '', '', '27-34_2 sivani plywoods and Laminates ', '27-34_2 sivani plywoods and Laminates ', 'Gudavalli  vari street', 'Kamaraju Building, Gudavalli Vari St, Governor Peta, Vijayawada, Andhra Pradesh 520002, India', 'beside bank of baroda', 520002, '', 'work', 0, '16.5102339', '80.6234775', '2021-12-17 18:11:18'),
(69, '#OCUSR_aQjwe', '#OCADD_PPRHI', '', '', '', '27 33 2 sivani ply woods', '27 33 2 sivani ply woods', 'gudavalli vari street', 'Kamaraju Building, Gudavalli Vari St, Governor Peta, Vijayawada, Andhra Pradesh 520002, India', 'bandar locks', 520002, '', 'work', 1, '16.5102332', '80.6234782', '2021-12-17 18:22:19'),
(70, '#OCUSR_dNQGV', '#OCADD_83R1F', 'fareed', '', '', 'Block number 40', 'Block number 40', 'zila Parishadi high school', 'YSR Colony Main Rd, Vijayawada, Andhra Pradesh 520001, India', 'sachavalayam YSR colony Vijayawada', 520001, '', 'home', 1, '16.5554547', '80.61307719999999', '2021-12-17 18:23:35'),
(71, '#OCUSR_vrTZU', '#OCADD_ofYDO', 'rupa', '', '', '27-12-22/A', '27-12-22/A', 'governor pet', '27-12-19, Ali Bhai St, Governor Peta, Vijayawada, Andhra Pradesh 520002, India', 'annapurna theatre road', 520002, '', 'work', 1, '16.5105959', '80.6243955', '2021-12-17 18:47:36'),
(72, '#OCUSR_tnz4Y', '#OCADD_YDVAs', 'gowrishankar', '', '', '9-3-17', '9-3-17', 'Brahmin st', '11-9-28, Brahmin St, 1 Town, Durga Agraharam, Mallikarjunapeta, Vijayawada, Andhra Pradesh 520001, India', 'near komala vilas', 520001, '', 'home', 0, '16.519951', '80.610122', '2021-12-17 20:59:50'),
(74, '#OCUSR_tnz4Y', '#OCADD_hPoM1', 'gowrishankar', '', '', '9-3-17', '9-3-17', 'Brahmin st', '11-9-28, Brahmin St, 1 Town, Durga Agraharam, Mallikarjunapeta, Vijayawada, Andhra Pradesh 520001, India', 'near komala vilas', 520001, '', 'home', 1, '16.519951', '80.610122', '2021-12-17 20:59:50'),
(75, '#OCUSR_tnz4Y', '#OCADD_XLjNv', 'gowrishankar', '', '', '9-3-17', '9-3-17', 'brahmin st', '9-3-111, Brahmin St, Islampet, Vijayawada, Andhra Pradesh 520001, India', 'near komala vilas', 520001, '', 'home', 0, '16.5199553', '80.6105313', '2021-12-17 20:59:50'),
(76, '#OCUSR_tnz4Y', '#OCADD_JFuRk', 'gowrishankar', '', '', '9-3-17', '9-3-17', 'brahmin st', '9-3-111, Brahmin St, Islampet, Vijayawada, Andhra Pradesh 520001, India', 'near komala vilas', 520001, '', 'home', 0, '16.5199553', '80.6105313', '2021-12-17 20:59:50'),
(77, '#OCUSR_tnz4Y', '#OCADD_SgUvS', 'gowrishankar', '', '', '9-3-17', '9-3-17', 'brahmin st', '9-3-111, Brahmin St, Islampet, Vijayawada, Andhra Pradesh 520001, India', 'near komala vilas', 520001, '', 'home', 0, '16.5199553', '80.6105313', '2021-12-17 20:59:50'),
(78, '#OCUSR_2Dtao', '#OCADD_xYECX', 'hemanth Upendra', '', '', '9-3-17', '9-3-17', 'Brahmin st', '9-3-111, Brahmin St, Islampet, Vijayawada, Andhra Pradesh 520001, India', 'komala vilas', 520001, '', 'home', 1, '16.5199605', '80.6106052', '2021-12-17 21:05:28'),
(79, '#OCUSR_jp3Ay', '#OCADD_5SGAQ', 'jagadheeswari', '', '', '9-3-17', '9-3-17', 'brahmin st', '9-3-111, Brahmin St, Islampet, Vijayawada, Andhra Pradesh 520001, India', 'near komala vilas', 520001, '', 'home', 1, '16.5199798', '80.6105808', '2021-12-17 21:09:10'),
(80, '#OCUSR_jp3Ay', '#OCADD_cgWaV', 'jagadheeswari', '', '', '9-3-17', '9-3-17', 'brahmin st', '9-3-111, Brahmin St, Islampet, Vijayawada, Andhra Pradesh 520001, India', 'near komala vilas', 520001, '', 'home', 0, '16.5199798', '80.6105808', '2021-12-17 21:09:10'),
(81, '#OCUSR_AclXk', '#OCADD_rjRMw', 'charishma', '', '', '9-3-17', '9-3-17', 'brahmin st', '9-3-111, Brahmin St, Islampet, Vijayawada, Andhra Pradesh 520001, India', 'near komala vilas', 520001, '', 'home', 1, '16.5200223', '80.6106541', '2021-12-17 21:47:02'),
(82, '#OCUSR_BzvEk', '#OCADD_VKJNs', 'ravanamma', '', '', '9-12-33', '9-12-33', 'pailavari st', 'Kothapeta, Indrakeeladri, Behind Komala Vilas Hotel Hill Top, Islampet, Vijayawada, Andhra Pradesh 520001, India', 'near subramanyam swami temple', 520001, '', 'home', 1, '16.5208006', '80.6090993', '2021-12-17 22:16:34'),
(83, '#OCUSR_f9OOo', '#OCADD_C4g0e', 'Sravanth Tammina', '', '', 'D.no 3-1-235, Sri vasavi Bhavan,midhilanagar,', 'D.no 3-1-235, Sri vasavi Bhavan,midhilanagar,', 'Midhila nagar,Raju gari flat', '9-51-7, Vinchipeta, Vijayawada, Andhra Pradesh 520001, India', '4th right, Sri Vasavi bhavan', 520001, '', 'home', 1, '16.5231539', '80.6135181', '2021-12-18 09:21:10'),
(84, '#OCUSR_D6iyx', '#OCADD_XsUgU', 'Sravanth T', '', '', 'D.no 3-1-235, Sri vasavi Bhavan,midhilanagar,', 'D.no 3-1-235, Sri vasavi Bhavan,midhilanagar,', 'Midhila nagar, Raju gari flat', '9-51-7, Vinchipeta, Vijayawada, Andhra Pradesh 520001, India', '4th right,Vasavi bhavan', 520001, '', 'home', 1, '16.5231545', '80.6135344', '2021-12-18 09:31:08'),
(85, '#OCUSR_D6iyx', '#OCADD_0sD9Y', 'Sravanth T', '', '', 'D.no 3-1-235, Sri vasavi Bhavan,midhilanagar,', 'D.no 3-1-235, Sri vasavi Bhavan,midhilanagar,', 'Midhila nagar, Raju gari flat', '9-51-7, Vinchipeta, Vijayawada, Andhra Pradesh 520001, India', '4th right,Vasavi bhavan', 520001, '', 'home', 0, '16.5231545', '80.6135344', '2021-12-18 09:31:08'),
(86, '#OCUSR_eykMw', '#OCADD_tEDiX', 'Rohit Kumar', '', '', 'Kamala apartment, A block, first floor, A4. ', 'Kamala apartment, A block, first floor, A4. ', 'Brundavan colony, MG road, ', 'FJWW+RRC, Brindavan Colony, Sriram Nagar, Benz Circle, Vijayawada, Andhra Pradesh 520010, India', 'near Jhulelal mandir, Sindhu Kalyan mandapm.', 520010, '', 'home', 1, '16.4971247', '80.6471821', '2021-12-18 10:27:14'),
(87, '#OCUSR_Tq8pq', '#OCADD_DL5mv', 'BOYALLA RAJESH ', '', '', 'DNo :-4-28/1-24', 'DNo :-4-28/1-24', 'Pendam Ramulu Street, Tenner Peta Chitti Naga', 'G V R Buildings, Chittinagar, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India', 'Ambedkar Statue Near TMH. School Tanner Peta ', 520001, '', 'home', 1, '16.5331867', '80.6116539', '2021-12-18 10:32:03'),
(88, '#OCUSR_Tq8pq', '#OCADD_5Mfuk', 'BOYALLA RAJESH ', '', '', 'DNo :-4-28/1-24', 'DNo :-4-28/1-24', 'Pendam Ramulu Street, Tenner Peta Chitti Naga', 'G V R Buildings, Chittinagar, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India', 'Ambedkar Statue Near TMH. School Tanner Peta ', 520001, '', 'home', 0, '16.5331867', '80.6116539', '2021-12-18 10:32:11'),
(89, '#OCUSR_Tq8pq', '#OCADD_MrydL', 'BOYALLA RAJESH ', '', '', 'DNo :-4-28/1-24', 'DNo :-4-28/1-24', 'Pendam Ramulu Street, Tenner Peta Chitti Naga', 'G V R Buildings, Chittinagar, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India', 'Ambedkar Statue Near TMH. School Tanner Peta ', 520001, '', 'home', 0, '16.5331867', '80.6116539', '2021-12-18 10:32:12'),
(90, '#OCUSR_Tq8pq', '#OCADD_ZWJiZ', 'BOYALLA RAJESH ', '', '', 'DNo :-4-28/1-24', 'DNo :-4-28/1-24', 'Pendam Ramulu Street, Tenner Peta Chitti Naga', 'G V R Buildings, Chittinagar, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India', 'Ambedkar Statue Near TMH. School Tanner Peta ', 520001, '', 'home', 0, '16.5331867', '80.6116539', '2021-12-18 10:32:12'),
(91, '#OCUSR_Tq8pq', '#OCADD_4WqUz', 'BOYALLA RAJESH ', '', '', 'DNo :-4-28/1-24', 'DNo :-4-28/1-24', 'Pendam Ramulu Street, Tenner Peta Chitti Naga', 'G V R Buildings, Chittinagar, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India', 'Ambedkar Statue Near TMH. School Tanner Peta ', 520001, '', 'home', 0, '16.5331867', '80.6116539', '2021-12-18 10:32:12'),
(92, '#OCUSR_Tq8pq', '#OCADD_4OuPv', 'BOYALLA RAJESH ', '', '', 'DNo :-4-28/1-24', 'DNo :-4-28/1-24', 'Pendam Ramulu Street, Tenner Peta Chitti Naga', 'G V R Buildings, Chittinagar, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India', 'Ambedkar Statue Near TMH. School Tanner Peta ', 520001, '', 'home', 0, '16.5331867', '80.6116539', '2021-12-18 10:32:12'),
(93, '#OCUSR_Tq8pq', '#OCADD_srFyD', 'BOYALLA RAJESH ', '', '', 'DNo :-4-28/1-24', 'DNo :-4-28/1-24', 'Pendam Ramulu Street, Tenner Peta Chitti Naga', 'G V R Buildings, Chittinagar, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India', 'Ambedkar Statue Near TMH. School Tanner Peta ', 520001, '', 'home', 0, '16.5331867', '80.6116539', '2021-12-18 10:32:12'),
(94, '#OCUSR_Tq8pq', '#OCADD_Ub4HK', 'BOYALLA RAJESH ', '', '', 'DNo :-4-28/1-24', 'DNo :-4-28/1-24', 'Pendam Ramulu Street, Tenner Peta Chitti Naga', 'G V R Buildings, Chittinagar, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India', 'Ambedkar Statue Near TMH. School Tanner Peta ', 520001, '', 'home', 0, '16.5331867', '80.6116539', '2021-12-18 10:32:12'),
(95, '#OCUSR_Tq8pq', '#OCADD_zEOTf', 'BOYALLA RAJESH ', '', '', 'DNo :-4-28/1-24', 'DNo :-4-28/1-24', 'Pendam Ramulu Street, Tenner Peta Chitti Naga', 'G V R Buildings, Chittinagar, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India', 'Ambedkar Statue Near TMH. School Tanner Peta ', 520001, '', 'home', 0, '16.5331867', '80.6116539', '2021-12-18 10:32:12'),
(96, '#OCUSR_Tq8pq', '#OCADD_pcn5E', 'BOYALLA RAJESH ', '', '', 'DNo :-4-28/1-24', 'DNo :-4-28/1-24', 'Pendam Ramulu Street, Tenner Peta Chitti Naga', 'G V R Buildings, Chittinagar, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India', 'Ambedkar Statue Near TMH. School Tanner Peta ', 520001, '', 'home', 0, '16.5331867', '80.6116539', '2021-12-18 10:32:18'),
(97, '#OCUSR_DgsMX', '#OCADD_BQXSS', 'saibabu', '', '', '5-6/4-5', '5-6/4-5', 'Oop kalarahospital ', 'Punnaiah colony, 3rd Cross Road, 1st Line, Ponnya Colony, Railway Colony, Gulabhi thota, Vijayawada, Andhra Pradesh 520003, India', 'chittinager', 520003, '', 'home', 1, '16.5209828', '80.6445538', '2021-12-18 12:21:43'),
(98, '#OCUSR_DgsMX', '#OCADD_khJLr', 'saibabu', '', '', '5-6/4-5', '5-6/4-5', 'Oop kalarahospital ', 'Punnaiah colony, 3rd Cross Road, 1st Line, Ponnya Colony, Railway Colony, Gulabhi thota, Vijayawada, Andhra Pradesh 520003, India', 'chittinager', 520003, '', 'home', 0, '16.5209828', '80.6445538', '2021-12-18 12:21:43'),
(99, '#OCUSR_h05c5', '#OCADD_ehKv8', 'madhavi', '', '', '5-6/4-5', '5-6/4-5', 'oop klalahospital', '5-6/4-3, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India', 'chittinager', 520001, '', 'home', 1, '16.5339047', '80.6148004', '2021-12-18 13:26:15'),
(100, '#OCUSR_p4NU4', '#OCADD_d2LRW', 'm.adithya', '', '', 'bhvya sri general stores', 'bhvya sri general stores', 'satyaranaya puram', '23-2-13, Bhagat Singh Rd, Carmail Nagar, Satyaranayana Puram, Vijayawada, Andhra Pradesh 520011, India', 'gowtham reddy office', 520011, '', 'home', 1, '16.5233432', '80.6380411', '2021-12-18 17:51:41'),
(101, '#OCUSR_9jgGC', '#OCADD_GjtAB', 'Girish Andaluri', '', '', '4-28/1-18', '4-28/1-18', 'Pendem ramulu street', '5-1/1-8, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India', 'TMH School, chittinagar, Vijayawada', 520001, '', 'home', 1, '16.5308923', '80.612805', '2021-12-18 18:17:12'),
(102, '#OCUSR_m1zpF', '#OCADD_vdMaC', 'P   SUBHAS  REDDY ', '', '', 'Flat No 403, Sai Aniketh Apartment ', 'Flat No 403, Sai Aniketh Apartment ', 'Metropolitan Hotel Road, Old 5 no route', 'Vellanki Ram mohan rao street, ITI Rd, SBI Colony 1, Siddhartha Nagar, Benz Circle, Vijayawada, Andhra Pradesh 520010, India', 'Near Sunnapu Battila  center, Siddhartha Nagar, Vijayawada', 520010, '', 'home', 1, '16.5064402', '80.6522439', '2021-12-18 18:48:39'),
(105, '#OCUSR_DNAhb', '#OCADD_PGxQI', 'prem korneni', '', '', 'mig-1, 19/8, new HB colony', 'mig-1, 19/8, new HB colony', 'bhavanipuram, vijayawada', 'MIG-I-19, Housing Board Colony, Vijayawada, Andhra Pradesh 520012, India', 'opp. road of ICL Fincorp', 520012, '', 'home', 1, '16.5347118', '80.5964474', '2021-12-18 18:51:16'),
(109, '#OCUSR_cZcWn', '#OCADD_niFEp', 'mujees', '', '', '533', '533', 'rajeevnagar', 'Plot no 532, Old Rajeev Nagar, Kavithas, Payakapuram, Vijayawada, Andhra Pradesh 520015, India', 'highi scool', 520015, '', 'home', 1, '16.5550717', '80.6475991', '2021-12-18 20:04:03'),
(110, '#OCUSR_cZcWn', '#OCADD_3V36I', 'mujees', '', '', '533', '533', 'rajeevnagar', 'Plot no 532, Old Rajeev Nagar, Kavithas, Payakapuram, Vijayawada, Andhra Pradesh 520015, India', 'highi scool', 520015, '', 'home', 0, '16.5550717', '80.6475991', '2021-12-18 20:04:04'),
(111, '#OCUSR_j6POZ', '#OCADD_qD0Q1', 'jayaram', '', '', '9-3-17', '9-3-17', 'Brahmin st', '9-7-7, Brahmin St, Islampet, Vijayawada, Andhra Pradesh 520001, India', 'near komala vilas', 520001, '', 'home', 1, '16.5198411', '80.6096215', '2021-12-18 20:04:34'),
(112, '#OCUSR_GVdkn', '#OCADD_9aHAP', 'jai', '', '', '9-12-33', '9-12-33', 'paila vari st', 'Kothapeta, Indrakeeladri, Behind Komala Vilas Hotel Hill Top, Islampet, Vijayawada, Andhra Pradesh 520001, India', 'near ramalingeswara Swamy temple', 520001, '', 'home', 1, '16.5207986', '80.6090957', '2021-12-18 20:08:31'),
(113, '#OCUSR_GVdkn', '#OCADD_1C4bt', 'jai', '', '', '9-12-33', '9-12-33', 'paila vari st', 'Kothapeta, Indrakeeladri, Behind Komala Vilas Hotel Hill Top, Islampet, Vijayawada, Andhra Pradesh 520001, India', 'near ramalingeswara Swamy temple', 520001, '', 'home', 0, '16.5207986', '80.6090957', '2021-12-18 20:08:31'),
(114, '#OCUSR_Vpd1h', '#OCADD_eMNqE', 'ram', '', '', '9-12-33', '9-12-33', 'paila vari st', 'Kothapeta, Indrakeeladri, Behind Komala Vilas Hotel Hill Top, Islampet, Vijayawada, Andhra Pradesh 520001, India', 'near ramalingeswara swami temple', 520001, '', 'home', 1, '16.5207998', '80.6090926', '2021-12-18 20:09:46'),
(115, '#OCUSR_Vpd1h', '#OCADD_qNUsG', 'ram', '', '', '9-12-33', '9-12-33', 'paila vari st', 'Kothapeta, Indrakeeladri, Behind Komala Vilas Hotel Hill Top, Islampet, Vijayawada, Andhra Pradesh 520001, India', 'near ramalingeswara swami temple', 520001, '', 'home', 0, '16.5207998', '80.6090926', '2021-12-18 20:09:46'),
(116, '#OCUSR_Lh3IT', '#OCADD_LVpjB', 'Lakshmi Narayana J', '', '', 'd.no: 2-28-57', 'd.no: 2-28-57', 'mindi,near BHPV post', 'Kothapeta, Indrakeeladri, Behind Komala Vilas Hotel Hill Top, Islampet, Vijayawada, Andhra Pradesh 520001, India', 'near SBI ATM, Beside Church, Visakhapatnam-530012', 520001, '', 'home', 1, '16.5207998', '80.6090925', '2021-12-19 07:45:13'),
(117, '#OCUSR_AB0u3', '#OCADD_Z1Q9g', 'Chittibabu ', '', '', 'plot no:103', 'plot no:103', 'N. S. C. Bose nagar ', '276, Kavithas, Payakapuram, Vijayawada, Andhra Pradesh 520015, India', 'near YSRCP office ', 520015, '', 'home', 0, '16.5531863', '80.6540212', '2021-12-25 19:22:18'),
(118, '#OCUSR_AB0u3', '#OCADD_j8qBX', 'Chittibabu ', '', '', 'plot no:103', 'plot no:103', 'N. S. C. Bose nagar, kandrika ', '1027, 4th Ln, Kandrika, Payakapuram, Vijayawada, Andhra Pradesh 520015, India', 'near YSRCP office opposite road  ground ', 520015, '', 'home', 1, '16.5515201', '80.6562527', '2021-12-25 19:22:18'),
(119, '#OCUSR_GIC0e', '#OCADD_R66ui', 'NAGAM Karthik suryanag', '', '', '3/6/177/2', '3/6/177/2', 'sitara center ', 'Sithara convenient road, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'opposite organichicken', 520012, '', 'home', 1, '16.5352554', '80.606263', '2021-12-19 08:29:24'),
(120, '#OCUSR_IGUEN', '#OCADD_YZuXd', 'bhvya ', '', '', '5-6/4-2', '5-6/4-2', 'colour hosiptal', 'Kl Rao Park Rd, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India', 'hospital', 520001, '', 'home', 0, '16.534982', '80.6158279', '2021-12-19 08:42:59'),
(121, '#OCUSR_IGUEN', '#OCADD_iwxRi', 'ch.bhvya ', '', '', '2', '2', 'colour hosiptal', 'Kl Rao Park Rd, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India', 'hospital', 520001, '', 'home', 0, '16.534982', '80.6158279', '2021-12-19 08:42:59'),
(122, '#OCUSR_IGUEN', '#OCADD_Jp6Vh', 'kittu', '', '', '23-2', '23-2', 'carmail nagr', '23-2-13, Bhagat Singh Rd, Carmail Nagar, Satyaranayana Puram, Vijayawada, Andhra Pradesh 520011, India', 'shop', 520011, '', 'home', 1, '16.523467', '80.6379708', '2021-12-19 08:42:59'),
(123, '#OCUSR_IGUEN', '#OCADD_1s7Li', 'kittu', '', '', '23-2', '23-2', 'carmail nagr', '23-2-13, Bhagat Singh Rd, Carmail Nagar, Satyaranayana Puram, Vijayawada, Andhra Pradesh 520011, India', 'shop', 520011, '', 'home', 0, '16.523467', '80.6379708', '2021-12-19 08:42:59'),
(124, '#OCUSR_IGUEN', '#OCADD_abtE8', 'kittu', '', '', '23-2', '23-2', 'carmail nagr', '23-2-13, Bhagat Singh Rd, Carmail Nagar, Satyaranayana Puram, Vijayawada, Andhra Pradesh 520011, India', 'shop', 520011, '', 'home', 0, '16.523467', '80.6379708', '2021-12-19 08:42:59'),
(126, '#OCUSR_bdrgJ', '#OCADD_xtyPo', 'sarada', '', '', 'd.no:2-28-57', 'd.no:2-28-57', 'mindi near BHPV post,', 'Atkinson School, Park Road, 1 Town, Tarapet, Vijayawada, Andhra Pradesh 520001, India', 'near SBI ATM beside Church visakhapatnam-530012', 520001, '', 'home', 1, '16.5149108', '80.613438', '2021-12-19 09:06:57'),
(127, '#OCUSR_kSQTW', '#OCADD_sYt29', 'trinadh', '', '', 'd.no 9-12-33A pailavari street kothapet', 'd.no 9-12-33A pailavari street kothapet', 'near ramalingeswara Swamy temple, Vijayawada', 'GJC6+XJV, Vinchipeta, Vijayawada, Andhra Pradesh 520001, India', 'near ramalingeswara Swamy temple', 520001, '', 'home', 1, '16.5224861', '80.6117033', '2021-12-19 09:56:14'),
(128, '#OCUSR_AAalv', '#OCADD_TgFOl', 'kondalarao', '', '', 'd.no 9-12-34', 'd.no 9-12-34', 'pailavari street kothapet Vijayawada-520001', 'Kothapeta, Indrakeeladri, Behind Komala Vilas Hotel Hill Top, Islampet, Vijayawada, Andhra Pradesh 520001, India', 'near ramalingeswara Swamy temple', 520001, '', 'home', 0, '16.5207977', '80.6091356', '2021-12-19 10:00:56'),
(129, '#OCUSR_AAalv', '#OCADD_CB0W1', 'kondalarao', '', '', 'd.no 9-12-34', 'd.no 9-12-34', 'pailavari street kothapet Vijayawada-520001', 'Kothapeta, Indrakeeladri, Behind Komala Vilas Hotel Hill Top, Islampet, Vijayawada, Andhra Pradesh 520001, India', 'near ramalingeswara Swamy temple', 520001, '', 'home', 1, '16.5207977', '80.6091356', '2021-12-19 10:00:56'),
(130, '#OCUSR_AAalv', '#OCADD_Yfk0w', 'kondalarao', '', '', 'd.no 9-12-34', 'd.no 9-12-34', 'pailavari street kothapet Vijayawada-520001', 'Kothapeta, Indrakeeladri, Behind Komala Vilas Hotel Hill Top, Islampet, Vijayawada, Andhra Pradesh 520001, India', 'near ramalingeswara Swamy temple', 520001, '', 'home', 0, '16.5207977', '80.6091356', '2021-12-19 10:00:56'),
(131, '#OCUSR_gsKNm', '#OCADD_Qsdte', 'S.kumar', '', '', 'plat no 44', 'plat no 44', 'N.S.C.Bose nagar,kandrika', '1119, Kandrika Main Rd, Kandrika, Payakapuram, Vijayawada, Andhra Pradesh 520015, India', 'near YSRCP office,main road', 520015, '', 'home', 1, '16.5513668', '80.6564403', '2021-12-19 10:04:13'),
(132, '#OCUSR_fIJPx', '#OCADD_j5QgJ', 'Ram', '', '', 'abc', 'abc', 'beside saied biryani point', '53-4-25, Christurajupuram, Vijayawada, Andhra Pradesh 520010, India', 'near Amma kalyana mandapam', 520010, '', 'home', 1, '16.5091554', '80.6514064', '2021-12-19 12:21:19'),
(133, '#OCUSR_fIJPx', '#OCADD_wUuCp', 'Ram', '', '', 'abc', 'abc', 'beside saied biryani point', '53-4-25, Christurajupuram, Vijayawada, Andhra Pradesh 520010, India', 'near Amma kalyana mandapam', 520010, '', 'home', 0, '16.5091554', '80.6514064', '2021-12-19 12:21:19'),
(134, '#OCUSR_uUFZw', '#OCADD_Sawqb', 'charan', '', '', 'sree apartment, s1 flat no', 'sree apartment, s1 flat no', 'lic colony', 'GM54+397, Prashant Nagar, Jayaprakash Nagar, Vijayawada, Andhra Pradesh 520008, India', 'bharat gas godown', 520008, '', 'home', 1, '16.5074722', '80.656119', '2021-12-19 12:21:56'),
(135, '#OCUSR_o8Qc7', '#OCADD_tAXvm', 'jamal', '', '', '26-82/a', '26-82/a', 'parera veedi', '26-82, Parera Veedhi, R R Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'opp canara bank', 520012, '', 'home', 1, '16.5442194', '80.6080734', '2021-12-20 00:03:23'),
(136, '#OCUSR_o8Qc7', '#OCADD_zpeiA', 'jamal', '', '', '26-82/a', '26-82/a', 'parera veedi', '26-82, Parera Veedhi, R R Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'opp canara bank', 520012, '', 'home', 0, '16.5442194', '80.6080734', '2021-12-20 00:03:23'),
(137, '#OCUSR_o8Qc7', '#OCADD_X8Rfo', 'jamal', '', '', '26-82/a', '26-82/a', 'parera veedi', '26-82, Parera Veedhi, R R Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'opp canara bank', 520012, '', 'home', 0, '16.5442194', '80.6080734', '2021-12-20 00:03:23'),
(138, '#OCUSR_RCLg9', '#OCADD_Ygxzz', 'Shaik Nagoor ', '', '', '4-11-7', '4-11-7', 'peda Mastan street alinagar', '5-6-43/9, Mahammada Veedhi, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India', 'near cholera hospital', 520001, '', 'home', 1, '16.5364767', '80.6148258', '2021-12-26 21:17:07'),
(140, '#OCUSR_kV3J6', '#OCADD_AcgOB', 'Shaik Jany Basha', '', '', '4-13-9/2', '4-13-9/2', 'Joseph Street', '4-14-7, Lambaadipeta, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India', 'Lambadipeta', 520001, '', 'home', 1, '16.535194', '80.6128477', '2021-12-20 00:35:07'),
(144, '#OCUSR_y5gFY', '#OCADD_b2u4r', 'BRAHMANI', '', '', '43-17-5, GROUND FLOOR', '43-17-5, GROUND FLOOR', 'VIVEKANANDA SCHOOL ROAD, NEAR SMILE MULTY SPE', '43-124-31A singnager power office offiste shadhikaaroad, Ajit Singh Nagar, PNT Colony, Vijayawada, Andhra Pradesh 520015, India', 'AJITH SINGH NAGAR', 520015, '', 'home', 1, '16.5394097', '80.6401066', '2021-12-20 11:36:45'),
(145, '#OCUSR_ekuka', '#OCADD_PA2qZ', 'Ramakrishna ', '', '', '43-17-5,', '43-17-5,', 'VIVEKANANDA SCHOOL ROAD, NEAR SMILE MULTY DPE', '43-124-31A singnager power office offiste shadhikaaroad, Ajit Singh Nagar, PNT Colony, Vijayawada, Andhra Pradesh 520015, India', 'AJITH SINGH NAGAR', 520015, '', 'home', 1, '16.5394118', '80.6400997', '2021-12-20 11:38:44'),
(146, '#OCUSR_86n4v', '#OCADD_V1EtM', 'feroz', '', '', '123\n', '123\n', 'kabela centre', 'Sithara convenient road, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'church road', 520012, '', 'home', 1, '16.5352659', '80.6062799', '2021-12-20 11:44:04'),
(147, '#OCUSR_86n4v', '#OCADD_qOEhe', 'feroz', '', '', '123\n', '123\n', 'kabela centre', 'Sithara convenient road, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'church road', 520012, '', 'home', 0, '16.5352659', '80.6062799', '2021-12-20 11:44:04'),
(148, '#OCUSR_86n4v', '#OCADD_9IgcE', 'feroz', '', '', '123', '123', 'kabela', 'Sithara convenient road, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'church', 520012, '', 'home', 0, '16.5352795', '80.6062431', '2021-12-20 11:44:04'),
(149, '#OCUSR_jHm9n', '#OCADD_Ul3dH', 'sajith md', '', '', '26- 82', '26- 82', 'Perera veedi', '26-82, Parera Veedhi, R R Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'r r nagar', 520012, '', 'home', 1, '16.544118', '80.6080162', '2021-12-20 12:00:46'),
(150, '#OCUSR_jHm9n', '#OCADD_9V6SL', 'sajith md', '', '', '26- 82', '26- 82', 'Perera veedi', '26-82, Parera Veedhi, R R Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'r r nagar', 520012, '', 'home', 0, '16.544118', '80.6080162', '2021-12-20 12:00:46'),
(151, '#OCUSR_zumxp', '#OCADD_AsR3b', 'savani transports pvt ltd', '', '', '76-15-22', '76-15-22', 'Near Swathi Theatre', '76-9-5B, Bhavanipuram, V D Puram, Vijayawada, Andhra Pradesh 520012, India', 'Bhavanipuram', 520012, '', 'work', 1, '16.525408', '80.5948168', '2021-12-20 18:38:55'),
(152, '#OCUSR_xs6mZ', '#OCADD_KVtmj', 'sofia', '', '', '26-7/1', '26-7/1', 'kota nageswarao street', 'Kabela Rd, Kabela, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'beside TVS tyre godown', 520012, '', 'home', 1, '16.5408075', '80.6073231', '2021-12-21 08:25:31'),
(153, '#OCUSR_xs6mZ', '#OCADD_tTcLa', 'sofia', '', '', '26-7/1', '26-7/1', 'kota nageswarao street', 'Kabela Rd, Kabela, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'beside TVS tyre godown', 520012, '', 'home', 0, '16.5408075', '80.6073231', '2021-12-21 08:25:31'),
(154, '#OCUSR_xs6mZ', '#OCADD_QTiXx', 'sofia', '', '', '26-7/1', '26-7/1', 'kota nageswarao street', 'Kabela Rd, Kabela, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'beside TVS tyre godown', 520012, '', 'home', 0, '16.5408075', '80.6073231', '2021-12-21 08:25:31'),
(155, '#OCUSR_xs6mZ', '#OCADD_WaOPN', 'sofia', '', '', '26-7/1', '26-7/1', 'kota nageswarao street', 'Kabela Rd, Kabela, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'beside TVS tyre godown', 520012, '', 'home', 0, '16.5408075', '80.6073231', '2021-12-21 08:25:31'),
(156, '#OCUSR_sTljb', '#OCADD_UoZae', 'padma nandyala ', '', '', '26-82', '26-82', 'Parera veedhi ', '26-82, Parera Veedhi, R R Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'opposite canara Bank', 520012, '', 'home', 1, '16.5442248', '80.6080761', '2021-12-21 08:30:06'),
(157, '#OCUSR_sTljb', '#OCADD_M0MK5', 'padma nandyala ', '', '', '26-82', '26-82', 'Parera veedhi ', '26-82, Parera Veedhi, R R Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'opposite canara Bank', 520012, '', 'home', 0, '16.5442248', '80.6080761', '2021-12-21 08:30:06'),
(158, '#OCUSR_2L2ZI', '#OCADD_akTC4', 'M.Gokul Krishna', '', '', '4-11-4', '4-11-4', 'peda masthan street', '4-11-4/1, Lambaadipeta, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India', 'fire station ', 520001, '', 'home', 1, '16.5345466', '80.6135395', '2021-12-21 07:24:25'),
(160, '#OCUSR_decHE', '#OCADD_KpAHr', 'Anil Lanka', '', '', 'Sri Sai Neelayam', 'Sri Sai Neelayam', 'Vinayak Nagar -1', 'Yanamalakuduru Old Bridge Road, Sanjeevaiah Nagar, Ramalingeswara Nagar, Vijayawada, Andhra Pradesh 520007, India', 'Near Live Fish', 520007, '', 'home', 1, '16.4826476', '80.6684231', '2021-12-21 11:54:04'),
(161, '#OCUSR_3WMhA', '#OCADD_3Kpyu', 'M vinod kumar', '', '', 'Budameru bridge', 'Budameru bridge', 'Lenin nagar', 'Ward no.2 BRTS Road, beside Model Dairy Outlet, Divine Nagar, Machavaram, Vijayawada, Andhra Pradesh 520004, India', 'Near railway gate', 520004, '', 'home', 1, '16.5243877', '80.6561615', '2021-12-21 12:02:23'),
(162, '#OCUSR_3WMhA', '#OCADD_zTowF', 'M vinod kumar', '', '', 'Budameru bridge', 'Budameru bridge', 'Lenin nagar', 'Ward no.2 BRTS Road, beside Model Dairy Outlet, Divine Nagar, Machavaram, Vijayawada, Andhra Pradesh 520004, India', 'Near railway gate', 520004, '', 'home', 0, '16.5243877', '80.6561615', '2021-12-21 12:02:23'),
(163, '#OCUSR_j52wd', '#OCADD_jpcQe', 'Silpa M', '', '', '32-18-3B, Opposite Sivalayam ', '32-18-3B, Opposite Sivalayam ', 'Moghalrajapuram ', '32-18-6, 32-18-6, Mogalrajapuram, Christurajupuram, Vijayawada, Andhra Pradesh 520010, India', 'near TDP Office ', 520010, '', 'home', 1, '16.5094753', '80.6460007', '2021-12-21 17:27:58'),
(165, '#OCUSR_GOmBY', '#OCADD_PcHwj', 'Mounika Kammela', '', '', 'Sri Sai neelaam', 'Sri Sai neelaam', 'Vinayak Nagar -1', 'FMHG+89R, Yanamalakuduru, Ramalingeswara Nagar, Vijayawada, Andhra Pradesh 520007, India', 'Near Masjid', 520007, '', 'home', 1, '16.4794299', '80.6755186', '2021-12-22 08:17:55'),
(166, '#OCUSR_vF7wB', '#OCADD_JQlPa', 'nirmala', '', '', '8-416/1 sri sai nilayam', '8-416/1 sri sai nilayam', 'vinayak nagar 1', '24-1, Yanamalakuduru, Ramalingeswara Nagar, Vijayawada, Andhra Pradesh 520007, India', 'near live fish market', 520007, '', 'home', 1, '16.4782461', '80.6768244', '2021-12-22 08:31:33'),
(167, '#OCUSR_vF7wB', '#OCADD_dwzmr', 'nirmala', '', '', '8-416/1 sri sai nilayam', '8-416/1 sri sai nilayam', 'vinayak nagar 1', '24-1, Yanamalakuduru, Ramalingeswara Nagar, Vijayawada, Andhra Pradesh 520007, India', 'near live fish market', 520007, '', 'home', 0, '16.4782461', '80.6768244', '2021-12-22 08:31:33'),
(168, '#OCUSR_dRIdm', '#OCADD_io9Uj', 'md.babu.', '', '', '9.60.50', '9.60.50', 'ganapathi rao road', '9-63-1/2, Hameed St, Islampet, Vijayawada, Andhra Pradesh 520001, India', 'opp anjaneya restaurant', 520001, '', 'work', 1, '16.5213682', '80.6147636', '2021-12-22 09:31:11'),
(169, '#OCUSR_r08Ju', '#OCADD_046ZO', 'M anitha', '', '', '44 15 244B', '44 15 244B', 'Lenin nagar', 'GMH4+598, Budamerukatta, Lenin Nagar, Madhura Nagar, Vijayawada, Andhra Pradesh 520004, India', 'budameru bridge', 520004, '', 'home', 1, '16.5275933', '80.6558574', '2021-12-22 09:55:30'),
(170, '#OCUSR_r0ZKZ', '#OCADD_ULOv9', 'Manthena Alekya', '', '', '24-49', '24-49', 'r r nagar', '26-49, R R Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'kota nageswarao street ', 520012, '', 'home', 1, '16.5437503', '80.6103418', '2021-12-23 14:44:58'),
(171, '#OCUSR_n9lUa', '#OCADD_jMOCH', 'Rambabu M', '', '', 'D.NO:32-34/5-27/8, Maseed Street ', 'D.NO:32-34/5-27/8, Maseed Street ', 'opposite to SRR college ', '32-34-4/9, Machavaram, Vijayawada, Andhra Pradesh 520004, India', 'Near Machavaram ', 520004, '', 'home', 1, '16.516448', '80.6499055', '2021-12-23 08:07:53'),
(172, '#OCUSR_Dszu8', '#OCADD_szEsl', 'venkatesh', '', '', 'd.no:9-12-33', 'd.no:9-12-33', 'pailavari street kothapet Vijayawada', '9-3-23, Brahmin St, Islampet, Vijayawada, Andhra Pradesh 520001, India', 'near komala vilas ', 520001, '', 'home', 1, '16.519884', '80.6103523', '2021-12-23 09:06:16'),
(173, '#OCUSR_Fs9f8', '#OCADD_bka9S', 'd. no:9-12-17, beaming street, ', '', '', 'kothapeta,  Vijayawada ', 'kothapeta,  Vijayawada ', 'pincode-520001', 'Kt Road, Komala Vilas Center, Vijayawada, Islampet, Vijayawada, Andhra Pradesh 520001, India', 'near ramalayam', 520001, '', 'home', 1, '16.5200395', '80.6107001', '2021-12-23 09:10:04'),
(174, '#OCUSR_rwlE3', '#OCADD_cB9l7', 'd. no:9-3-17', '', '', 'beaming street, kothapeta', 'beaming street, kothapeta', 'Vijayawada ', '9-3-111, Brahmin St, Islampet, Vijayawada, Andhra Pradesh 520001, India', 'near ramalayam', 520001, '', 'home', 1, '16.5198731', '80.6104441', '2021-12-23 09:13:09'),
(175, '#OCUSR_UulZe', '#OCADD_BxnsK', 'satish', '', '', '32-34/27/8', '32-34/27/8', 'maseed street', '32-34-4/9, Machavaram, Vijayawada, Andhra Pradesh 520004, India', 'opp srr college', 520004, '', 'home', 1, '16.5164698', '80.6498709', '2021-12-23 09:23:33'),
(176, '#OCUSR_UulZe', '#OCADD_OAOtN', 'satish', '', '', '32-34/27/8', '32-34/27/8', 'maseed street', '32-34-4/9, Machavaram, Vijayawada, Andhra Pradesh 520004, India', 'opp srr college', 520004, '', 'home', 0, '16.5164698', '80.6498709', '2021-12-23 09:23:33'),
(177, '#OCUSR_qRM2Z', '#OCADD_pamZA', 'GOVIND', '', '', '43-17-5', '43-17-5', 'NEAR SMILE MULTY SPECIALITY HOSPITAL', 'Ajit Singh Nagar, PNT Colony, Vijayawada, Andhra Pradesh 520015, India', 'VIVEKANANDA SCHOOL ROAD', 520015, '', 'home', 1, '16.537776', '80.6396287', '2021-12-23 13:34:17'),
(178, '#OCUSR_r0ZKZ', '#OCADD_1kLOx', 'alekhya ', '', '', 'r r nagar', 'r r nagar', 'a s i Venkat Rao', '26-49/3, R R Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'Sai Baba Gudi', 520012, '', 'home', 0, '16.5437022', '80.6103638', '2021-12-23 14:44:58'),
(179, '#OCUSR_3HGNh', '#OCADD_58End', 'pavan kalyan', '', '', '26-82/a', '26-82/a', 'parera veedhi', '26-82, Parera Veedhi, R R Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'cenara bank', 520012, '', 'home', 1, '16.5442144', '80.608054', '2021-12-24 02:02:59'),
(180, '#OCUSR_u2crb', '#OCADD_eCl9M', 'Sk Nazeer', '', '', 'home', 'home', 'R.R nagar', '25/49, opp. to Eye Hospital Lane, Ramarajya Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'naga Sai Baba gudi ', 520012, '', 'home', 0, '16.5464162', '80.6089276', '2021-12-24 09:45:18'),
(181, '#OCUSR_u2crb', '#OCADD_BBL00', 'Sk Nazeer', '', '', 'home', 'home', 'R.R nagar', '25/49, opp. to Eye Hospital Lane, Ramarajya Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'naga Sai Baba gudi ', 520012, '', 'home', 0, '16.5464162', '80.6089276', '2021-12-24 09:45:18'),
(182, '#OCUSR_P6vcv', '#OCADD_M4KQB', 'kosuri Krupa rao', '', '', 'sai nilayam', 'sai nilayam', 'vinyaka nager-1', '# 8-83, Indira Nagar-2,Yanamalakuduru, Vijayawada, Yanamalakuduru, Ramalingeswara Nagar, Vijayawada, Andhra Pradesh 520007, India', 'water plant beaide', 520007, '', 'home', 1, '16.481168', '80.6788513', '2021-12-24 07:38:27'),
(183, '#OCUSR_NgACY', '#OCADD_xpuYw', 'pavan ', '', '', '183', '183', 'old Rajeev nagar', 'HJ3X+V58, Old Rajeev Nagar, Kavithas, Payakapuram, Vijayawada, Andhra Pradesh 520015, India', 'water tank ', 520015, '', 'home', 1, '16.5548349', '80.6476674', '2021-12-24 09:12:43'),
(184, '#OCUSR_NgACY', '#OCADD_QFfzq', 'pavan ', '', '', '183', '183', 'old Rajeev nagar', 'HJ3X+V58, Old Rajeev Nagar, Kavithas, Payakapuram, Vijayawada, Andhra Pradesh 520015, India', 'water tank ', 520015, '', 'home', 0, '16.5548349', '80.6476674', '2021-12-24 09:12:43'),
(185, '#OCUSR_u2crb', '#OCADD_XCCRB', 'Sk Nazeer', '', '', '26-49', '26-49', 'Kota nageswarai street', '26-49, R R Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'backside naga Sai Baba temple', 520012, '', 'home', 1, '16.5435467', '80.6102333', '2021-12-24 09:45:18'),
(186, '#OCUSR_u2crb', '#OCADD_TPvi3', 'Sk Nazeer', '', '', '26-49', '26-49', 'Kota nageswarai street', '26-49, R R Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'backside naga Sai Baba temple', 520012, '', 'home', 0, '16.5435467', '80.6102333', '2021-12-24 09:45:20'),
(187, '#OCUSR_h8LBG', '#OCADD_eJyXU', 'nooruddin', '', '', '73-6-22', '73-6-22', 'shivashankar nagar', 'Donka Rd, beside Asha Function Hall, JD Nagar, Patamata, Vijayawada, Andhra Pradesh 520010, India', 'Asha function hall', 520010, '', 'home', 1, '16.4923026', '80.66617269999999', '2021-12-25 00:01:39'),
(188, '#OCUSR_zWbsE', '#OCADD_xKMDJ', 'Mallika', '', '', '43-17-5', '43-17-5', 'Vivekananda school Road', 'GJQQ+CVJ, Ajit Singh Nagar, PNT Colony, Vijayawada, Andhra Pradesh 520015, India', 'NEAR SMILE MULTYSPECIALITY HOSPITAL, AJITH SINGH NAGAR', 520015, '', 'home', 1, '16.5388417', '80.63994', '2021-12-25 07:44:16'),
(189, '#OCUSR_OYAwQ', '#OCADD_a0dDL', 'Rangababu', '', '', '43-17-5', '43-17-5', 'Vivekananda school Road', '43-124-31A singnager power office offiste shadhikaaroad, Ajit Singh Nagar, PNT Colony, Vijayawada, Andhra Pradesh 520015, India', 'NEAR SMILE MULTY SPECIALITY HOSPITAL, AJITH SINGH NAGAR', 520015, '', 'home', 1, '16.5394097', '80.6401064', '2021-12-25 08:12:35'),
(190, '#OCUSR_2jh5z', '#OCADD_Ci5Cu', 'amarnath', '', '', '402-16, Chukkapallivari Street', '402-16, Chukkapallivari Street', 'Labbipet', '40-2-26/4, Chookka Vari St, Mogalrajapuram, Sidhartha Nagar, Labbipet, Vijayawada, Andhra Pradesh 520010, India', 'kusalava Hyundai showroom back side', 520010, '', 'work', 1, '16.502189', '80.6448889', '2021-12-25 10:38:22');
INSERT INTO `address` (`id`, `user_id`, `address_id`, `name`, `phone`, `alternative_phone`, `house_no`, `building_name`, `street`, `address`, `landmark`, `pincode`, `city`, `address_type`, `is_default_address`, `latitude`, `longitude`, `updated_at`) VALUES
(191, '#OCUSR_2jh5z', '#OCADD_EcZyV', 'amarnath', '', '', '402-16, Chukkapallivari Street', '402-16, Chukkapallivari Street', 'Labbipet', '40-2-26/4, Chookka Vari St, Mogalrajapuram, Sidhartha Nagar, Labbipet, Vijayawada, Andhra Pradesh 520010, India', 'kusalava Hyundai showroom back side', 520010, '', 'work', 0, '16.502189', '80.6448889', '2021-12-25 10:38:22'),
(192, '#OCUSR_HM8cM', '#OCADD_yuUwu', 'Nandyala Nagarani', '', '', '10-229', '10-229', 'Narendra nagar', 'FMHC+P8P, New Corency Nagar 2, Yanamalakuduru, Ramalingeswara Nagar, Vijayawada, Andhra Pradesh 520007, India', 'pardhasaradi kalyanamandapam', 520007, '', 'home', 1, '16.4792444', '80.670883', '2021-12-25 14:46:56'),
(193, '#OCUSR_YeNZF', '#OCADD_iWSk9', 'Sudhakar redddy', '', '', '26-2,', '26-2,', 'kabela center', '181, Kabela, Ramrajya Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'near hp petrol bunk', 520012, '', 'home', 1, '16.5421259', '80.6090891', '2021-12-25 17:35:40'),
(194, '#OCUSR_JJ6R9', '#OCADD_gMqv8', 'md javeed basha ', '', '', 'dor  4/11/6', 'dor  4/11/6', 'Pedamastan setet Alli nagar', '4-12-1, Lambaadipeta, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India', 'Kalra hospital', 520001, '', 'home', 1, '16.5346603', '80.6140764', '2021-12-25 23:07:22'),
(195, '#OCUSR_oqVhz', '#OCADD_XsbDJ', 'md jameel', '', '', '26-82/a', '26-82/a', 'Parera veedhi', '26-82, Parera Veedhi, R R Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India', 'opp canara bank', 520012, '', 'home', 1, '16.5442194', '80.6080733', '2021-12-26 07:45:39'),
(196, '#OCUSR_QnY9P', '#OCADD_bn1ZM', 'shahid', '', '', 'Vijayawada, Chittinagar, Fraserpeta, Vijayawa', 'Vijayawada, Chittinagar, Fraserpeta, Vijayawa', 'mastan street', 'GJM7+H4W, Chittinagar, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India', 'janda chettu', 520001, '', 'home', 1, '16.5342839', '80.6127662', '2021-12-26 09:38:04'),
(197, '#OCUSR_GOHbQ', '#OCADD_zyAL7', 'shakira', '', '', '4-11-10', '4-11-10', 'pedda mastan street', '5-6-59-36, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India', 'vijayawada', 520001, '', 'home', 1, '16.5376023', '80.6158797', '2021-12-26 09:43:49'),
(198, '#OCUSR_l5HIy', '#OCADD_arkuD', 'CHANDRA SHEKAR', '', '', 'NEAR VCH SCHOOL', 'NEAR VCH SCHOOL', 'VIVEKANANDA SCHOOL ', 'Vivekananda School Rd, Ajit Singh Nagar, PNT Colony, Vijayawada, Andhra Pradesh 520015, India', 'Ajith Singh nagar', 520015, '', 'work', 1, '16.5381816', '80.6405313', '2021-12-26 11:11:40'),
(199, '#OCUSR_kqoxm', '#OCADD_NLbyT', 'sai teja\n\n', '', '', 'brindavan printers', 'brindavan printers', 'anaparthi vari street', '# Machavaram Down, Revenue Colony, Machavaram, Vijayawada, Machavaram Down, Machavaram, Vijayawada, Andhra Pradesh 520004, India', 'vijayatakies back side', 520004, '', 'work', 1, '16.5222595', '80.6538012', '2021-12-28 06:58:29'),
(200, '#OCUSR_kqoxm', '#OCADD_W0kF6', 'sai teja\n\n', '', '', 'brindavan printers', 'brindavan printers', 'anaparthi vari street', '# Machavaram Down, Revenue Colony, Machavaram, Vijayawada, Machavaram Down, Machavaram, Vijayawada, Andhra Pradesh 520004, India', 'vijayatakies back side', 520004, '', 'work', 0, '16.5222595', '80.6538012', '2021-12-28 06:58:29'),
(201, '#OCUSR_yuXUy', '#OCADD_pUrrg', 'Teja simhachalam', '', '', '6-10-7a', '6-10-7a', 'pilla kankaiah street ', 'Vagu Centre, Vinchipeta, Vijayawada, Andhra Pradesh 520001, India', 'vagu center ', 520001, '', 'home', 1, '16.5272438', '80.6114615', '2021-12-28 09:46:54'),
(202, '#OCUSR_8wbY8', '#OCADD_mA6xH', 'Maha Bhogala', '', '', 'D.No. 6-10-33', 'D.No. 6-10-33', 'Pilla Kanakaiha Street ', 'Vagu Centre, Vinchipeta, Vijayawada, Andhra Pradesh 520001, India', 'Vagu Center', 520001, '', 'home', 1, '16.5272407', '80.6114706', '2021-12-27 00:42:20'),
(203, '#OCUSR_guS0h', '#OCADD_OObsr', 'bhogala venkata siva prasad', '', '', '6-18-3C', '6-18-3C', 'Banka Kamaraju Street', 'Vagu Centre, Vinchipeta, Vijayawada, Andhra Pradesh 520001, India', 'RR Chicken', 520001, '', 'home', 1, '16.5272451', '80.6114785', '2021-12-27 00:53:49'),
(204, '#OCUSR_33WBq', '#OCADD_JROEe', 'Girish', '', '', 'Gf 6,H2 block no 28', 'Gf 6,H2 block no 28', 'r g k colony, near ravindra Bharathi school,p', 'GMW3+C43, Prashanthi Nagar, Kavithas, Payakapuram, Vijayawada, Andhra Pradesh 520015, India', 'Singh nagar', 520015, '', 'home', 1, '16.5462134', '80.6529808', '2021-12-27 05:03:22'),
(205, '#OCUSR_33WBq', '#OCADD_E7FOG', 'Girish', '', '', 'Gf 6,H2 block no 28', 'Gf 6,H2 block no 28', 'r g k colony, near ravindra Bharathi school,p', 'GMW3+C43, Prashanthi Nagar, Kavithas, Payakapuram, Vijayawada, Andhra Pradesh 520015, India', 'Singh nagar', 520015, '', 'home', 0, '16.5462134', '80.6529808', '2021-12-27 05:03:22'),
(206, '#OCUSR_33WBq', '#OCADD_E1SIZ', 'Girish', '', '', 'Gf 6,H2 block no 28', 'Gf 6,H2 block no 28', 'r g k colony, near ravindra Bharathi school,p', 'GMW3+C43, Prashanthi Nagar, Kavithas, Payakapuram, Vijayawada, Andhra Pradesh 520015, India', 'Singh nagar', 520015, '', 'home', 0, '16.5462134', '80.6529808', '2021-12-27 05:03:22'),
(207, '#OCUSR_33WBq', '#OCADD_vVb1k', 'Girish', '', '', 'Gf 6,H2 block no 28', 'Gf 6,H2 block no 28', 'r g k colony, near ravindra Bharathi school,p', 'GMW3+C43, Prashanthi Nagar, Kavithas, Payakapuram, Vijayawada, Andhra Pradesh 520015, India', 'Singh nagar', 520015, '', 'home', 0, '16.5462134', '80.6529808', '2021-12-27 05:03:22'),
(208, '#OCUSR_33WBq', '#OCADD_3iN8D', 'Girish', '', '', 'Gf 6,H2 block no 28', 'Gf 6,H2 block no 28', 'r g k colony, near ravindra Bharathi school,p', 'GMW3+C43, Prashanthi Nagar, Kavithas, Payakapuram, Vijayawada, Andhra Pradesh 520015, India', 'Singh nagar', 520015, '', 'home', 0, '16.5462134', '80.6529808', '2021-12-27 05:03:22'),
(209, '#OCUSR_33WBq', '#OCADD_jJ4f6', 'Girish', '', '', 'Gf 6,H2 block no 28', 'Gf 6,H2 block no 28', 'r g k colony, near ravindra Bharathi school,p', 'GMW3+C43, Prashanthi Nagar, Kavithas, Payakapuram, Vijayawada, Andhra Pradesh 520015, India', 'Singh nagar', 520015, '', 'home', 0, '16.5462134', '80.6529808', '2021-12-27 05:03:22'),
(210, '#OCUSR_lgpOb', '#OCADD_1YLnw', 'y.g.anjaneya', '', '', 'gf 6,H2 block no 28,', 'gf 6,H2 block no 28,', 'r g k colony ,near ravindra bharathi school,p', 'H-3 40, Vambay Colony, Vijayawada, Andhra Pradesh 520015, India', 'Ajith Singh nagar', 520015, '', 'home', 1, '16.5419039', '80.6548175', '2021-12-27 05:07:51'),
(211, '#OCUSR_lgpOb', '#OCADD_G2VTk', 'y.g.anjaneya', '', '', 'gf 6,H2 block no 28,', 'gf 6,H2 block no 28,', 'r g k colony ,near ravindra bharathi school,p', 'H-3 40, Vambay Colony, Vijayawada, Andhra Pradesh 520015, India', 'Ajith Singh nagar', 520015, '', 'home', 0, '16.5419039', '80.6548175', '2021-12-27 05:07:51'),
(212, '#OCUSR_VB3ZC', '#OCADD_dgNpm', 'sudheer ', '', '', 'Sri Krishna nilyam ', 'Sri Krishna nilyam ', 'water tank road ', 'GM9P+HM4, Prasadampadu, currency nagar, Vijayawada, Andhra Pradesh 521108, India', 'st anns school ', 521108, '', 'home', 1, '16.5188839', '80.6869179', '2021-12-27 07:06:00'),
(213, '#OCUSR_Dl22P', '#OCADD_HqXfb', 'Saritha', '', '', 'st anns school', 'st anns school', 'water tank road', 'GM9P+HM4, Prasadampadu, currency nagar, Vijayawada, Andhra Pradesh 521108, India', 'st anns school', 521108, '', 'home', 1, '16.5188236', '80.6868536', '2021-12-27 07:11:01'),
(214, '#OCUSR_6uob2', '#OCADD_e198o', 'KALYANI ', '', '', 'Dr no 20-4-15 SECTOR-5', 'Dr no 20-4-15 SECTOR-5', 'ADDEPALLI AUBBARAJU ROAD', '20-6-11/1C, Addepalli Venkatasubba Raju Rd, Sector 5, Ayodhya Nagar, Vijayawada, Andhra Pradesh 520003, India', 'LOTUSLANDMARK ', 520003, '', 'home', 1, '16.527621', '80.6328587', '2021-12-28 00:24:29'),
(215, '#OCUSR_DfQWa', '#OCADD_9ED2r', 'K KRISHNAM RAJU', '', '', 'Dr NO 20-4-15 SECTOR-5 ', 'Dr NO 20-4-15 SECTOR-5 ', 'ADDEPALLI SUBBARAJU ROAD ', '20-6-11/1C, Addepalli Venkatasubba Raju Rd, Sector 5, Ayodhya Nagar, Vijayawada, Andhra Pradesh 520003, India', 'LOTUSLANDMARK ', 520003, '', 'home', 1, '16.5276185', '80.6328528', '2021-12-28 00:30:43'),
(216, '#OCUSR_134Sg', '#OCADD_teuSu', 'K RAJINI', '', '', 'DR NO 20-4-16 SECTOR-5', 'DR NO 20-4-16 SECTOR-5', 'ADDERALLI SUBBARAJU ROAD', '20-6-11/1C, Addepalli Venkatasubba Raju Rd, Sector 5, Ayodhya Nagar, Vijayawada, Andhra Pradesh 520003, India', 'LOTUS LANDMARK ', 520003, '', 'home', 1, '16.5276586', '80.632846', '2021-12-28 00:41:33'),
(217, '#OCUSR_yTmE9', '#OCADD_IRbUz', 'P.Venkateswara Rao', '', '', '74-26-13/A', '74-26-13/A', 'NEW RTC COLONY,Malayalam Vari Streeet,Patamat', 'Gergepe, Vijayawada Rd, Labbipet, Vijayawada, Andhra Pradesh 520010, India', 'RRS Chicken Center', 520010, '', 'home', 1, '16.4981057', '80.6432409', '2021-12-28 12:56:36'),
(218, '#OCUSR_gJxNr', '#OCADD_f2hA5', 'u chandana', '', '', 'rrw no 487', 'rrw no 487', 'old post office road', '42-4-76/1/A, Old Post Office Rd, Devi Nagar, Rama Krishna Puram, Vijayawada, Andhra Pradesh 520003, India', 'ramakrishna puram, vijayawada, 520003', 520003, '', 'home', 1, '16.5304202', '80.6388466', '2021-12-28 12:57:23');

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `admin_id` bigint(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `last_updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`admin_id`, `password`, `first_name`, `last_name`, `email`, `phone`, `address`, `created_at`, `last_updated_at`) VALUES
(1, 'e5f349c43df7069f16d4d029110f3d6f', 'VJ', 'Kumar', 'vijay@gmail.com', '8886810715', 'Jampeta, Rajahmundry', '2021-01-06 21:52:50', '2021-01-09 23:57:34');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL,
  `cart_id` varchar(250) NOT NULL,
  `item_id` varchar(250) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `quantity` int(20) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount_price` decimal(10,2) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `cart_id`, `item_id`, `user_id`, `quantity`, `price`, `discount_price`, `updated_at`) VALUES
(3, '#OCCRT_39dGW', '#OCITM_MO5KL', '#OCUSR_vynyq', 1, '0.00', '0.00', '2021-12-01 10:31:13'),
(7, '#OCCRT_SPIBC', '#OCITM_PqVi6', '#OCUSR_eSLcv', 1, '0.00', '0.00', '2021-12-01 11:20:37'),
(40, '#OCCRT_EMxNr', '#OCITM_aMPmi', '#OCUSR_72IOl', 1, '0.00', '0.00', '2021-12-01 16:51:19'),
(44, '#OCCRT_BTAbj', '#OCITM_gAe7O', '#OCUSR_gFhy7', 1, '0.00', '0.00', '2021-12-01 20:48:56'),
(53, '#OCCRT_ojlPT', '#OCITM_wOjX9', '#OCUSR_QZOxm', 1, '0.00', '0.00', '2021-12-02 09:47:28'),
(61, '#OCCRT_5HVxZ', '#OCITM_MO5KL', '#OCUSR_EQoch', 1, '0.00', '0.00', '2021-12-02 13:01:42'),
(66, '#OCCRT_hSBbx', '#OCITM_gAe7O', '#OCUSR_k7kbK', 1, '0.00', '0.00', '2021-12-02 13:56:33'),
(71, '#OCCRT_xFslw', '#OCITM_zGqt9', '#OCUSR_BB231', 1, '0.00', '0.00', '2021-12-02 14:56:04'),
(76, '#OCCRT_nO17s', '#OCITM_gAe7O', '#OCUSR_EQoch', 1, '0.00', '0.00', '2021-12-02 16:46:58'),
(86, '#OCCRT_bQzEP', '#OCITM_TDY5G', '#OCUSR_0RrX1', 3, '0.00', '0.00', '2021-12-02 18:22:38'),
(95, '#OCCRT_yKLqA', '#OCITM_pbULw', '#OCUSR_zDojW', 1, '0.00', '0.00', '2021-12-02 22:58:49'),
(100, '#OCCRT_NeoWO', '#OCITM_pbULw', '#OCUSR_M001D', 1, '0.00', '0.00', '2021-12-03 11:41:12'),
(103, '#OCCRT_CNfmu', '#OCITM_aMPmi', '#OCUSR_WSHaY', 1, '0.00', '0.00', '2021-12-04 08:22:42'),
(104, '#OCCRT_3yUzI', '#OCITM_TDY5G', '#OCUSR_D3MQA', 1, '0.00', '0.00', '2021-12-04 10:36:22'),
(110, '#OCCRT_2H9Cp', '#OCITM_pbULw', '#OCUSR_rCc4Q', 2, '0.00', '0.00', '2021-12-05 11:38:33'),
(113, '#OCCRT_1JSCB', '#OCITM_pbULw', '#OCUSR_OC0bU', 1, '0.00', '0.00', '2021-12-05 19:54:38'),
(118, '#OCCRT_I8Fwo', '#OCITM_MO5KL', '#OCUSR_h5C5P', 1, '0.00', '0.00', '2021-12-06 18:04:41'),
(121, '#OCCRT_cPtGc', '#OCITM_MO5KL', '#OCUSR_YZSot', 1, '0.00', '0.00', '2021-12-07 10:31:56'),
(122, '#OCCRT_9vdU9', '#OCITM_gAe7O', '#OCUSR_YbYWp', 1, '0.00', '0.00', '2021-12-07 12:22:01'),
(129, '#OCCRT_dY6jh', '#OCITM_MO5KL', '#OCUSR_Knanh', 1, '0.00', '0.00', '2021-12-07 21:38:24'),
(137, '#OCCRT_JdJZZ', '#OCITM_gAe7O', '#OCUSR_a3y7R', 1, '0.00', '0.00', '2021-12-08 17:46:34'),
(138, '#OCCRT_PB8ho', '#OCITM_MO5KL', '#OCUSR_z4bjb', 1, '0.00', '0.00', '2021-12-08 17:56:03'),
(151, '#OCCRT_D4uDp', '#OCITM_gAe7O', '#OCUSR_Di5Ja', 1, '0.00', '0.00', '2021-12-09 16:58:17'),
(152, '#OCCRT_MvruN', '#OCITM_pbULw', '#OCUSR_zEfeK', 1, '0.00', '0.00', '2021-12-09 18:04:35'),
(156, '#OCCRT_4smQb', '#OCITM_MO5KL', '#OCUSR_GboXt', 1, '0.00', '0.00', '2021-12-10 14:20:28'),
(158, '#OCCRT_X6iD4', '#OCITM_pbULw', '#OCUSR_fw8f9', 1, '0.00', '0.00', '2021-12-11 00:11:12'),
(160, '#OCCRT_TFrMM', '#OCITM_MO5KL', '#OCUSR_jAEgC', 1, '0.00', '0.00', '2021-12-11 11:43:37'),
(161, '#OCCRT_kR7DD', '#OCITM_MO5KL', '#OCUSR_JQMWw', 2, '0.00', '0.00', '2021-12-11 13:00:02'),
(162, '#OCCRT_2HlUM', '#OCITM_gAe7O', '#OCUSR_eglcl', 1, '0.00', '0.00', '2021-12-11 13:12:12'),
(174, '#OCCRT_EhWoB', '#OCITM_zGqt9', '#OCUSR_LXTGN', 1, '0.00', '0.00', '2021-12-13 00:55:02'),
(175, '#OCCRT_PRT2F', '#OCITM_pbULw', '#OCUSR_fodxm', 1, '0.00', '0.00', '2021-12-13 07:14:58'),
(177, '#OCCRT_7Es7g', '#OCITM_MO5KL', '#OCUSR_buTfo', 1, '0.00', '0.00', '2021-12-13 12:00:18'),
(178, '#OCCRT_Hheik', '#OCITM_zGqt9', '#OCUSR_fy8yx', 1, '0.00', '0.00', '2021-12-13 13:35:48'),
(179, '#OCCRT_xQzwi', '#OCITM_gAe7O', '#OCUSR_npDLo', 1, '0.00', '0.00', '2021-12-13 14:01:11'),
(239, '#OCCRT_oFFKz', '#OCITM_gAe7O', '#OCUSR_B1mzu', 1, '0.00', '0.00', '2021-12-14 12:24:34'),
(268, '#OCCRT_NF7Zs', '#OCITM_aMPmi', '#OCUSR_l8Phw', 1, '0.00', '0.00', '2021-12-14 20:22:33'),
(302, '#OCCRT_g3Wjy', '#OCITM_gAe7O', '#OCUSR_dr6A2', 1, '0.00', '0.00', '2021-12-15 15:30:42'),
(312, '#OCCRT_7CKOg', '#OCITM_aMPmi', '#OCUSR_eqYrK', 1, '0.00', '0.00', '2021-12-15 23:51:51'),
(320, '#OCCRT_ieoIF', '#OCITM_pbULw', '#OCUSR_CMO4E', 1, '0.00', '0.00', '2021-12-16 17:51:39'),
(322, '#OCCRT_lCqeo', '#OCITM_aMPmi', '#OCUSR_GORi0', 2, '0.00', '0.00', '2021-12-16 23:14:09'),
(324, '#OCCRT_qUFXZ', '#OCITM_TDY5G', '#OCUSR_8Sb4E', 1, '0.00', '0.00', '2021-12-16 23:27:59'),
(325, '#OCCRT_8S9Sc', '#OCITM_TDY5G', '#OCUSR_fodxm', 1, '0.00', '0.00', '2021-12-17 07:15:37'),
(329, '#OCCRT_Xnp6V', '#OCITM_MO5KL', '#OCUSR_pJoPF', 1, '0.00', '0.00', '2021-12-17 08:42:11'),
(336, '#OCCRT_J5Zsl', '#OCITM_MO5KL', '#OCUSR_vzFcO', 1, '0.00', '0.00', '2021-12-17 13:16:24'),
(351, '#OCCRT_HCfSq', '#OCITM_gAe7O', '#OCUSR_aQjwe', 1, '0.00', '0.00', '2021-12-17 18:32:40'),
(364, '#OCCRT_kBy4V', '#OCITM_7ot30', '#OCUSR_Nchqu', 1, '0.00', '0.00', '2021-12-17 19:41:04'),
(376, '#OCCRT_vXhza', '#OCITM_MO5KL', '#OCUSR_tnz4Y', 1, '0.00', '0.00', '2021-12-17 21:03:08'),
(385, '#OCCRT_EQbJI', '#OCITM_MO5KL', '#OCUSR_f9OOo', 1, '0.00', '0.00', '2021-12-18 09:25:04'),
(387, '#OCCRT_1r8OK', '#OCITM_TDY5G', '#OCUSR_Nw6gS', 1, '0.00', '0.00', '2021-12-18 09:26:35'),
(393, '#OCCRT_09F8d', '#OCITM_TDY5G', '#OCUSR_9jgGC', 1, '0.00', '0.00', '2021-12-18 11:52:24'),
(403, '#OCCRT_pZder', '#OCITM_aMPmi', '#OCUSR_vrTZU', 1, '0.00', '0.00', '2021-12-18 15:32:27'),
(419, '#OCCRT_03Ycc', '#OCITM_pbULw', '#OCUSR_aQjwe', 1, '0.00', '0.00', '2021-12-18 18:16:25'),
(456, '#OCCRT_R705R', '#OCITM_MO5KL', '#OCUSR_j6POZ', 1, '0.00', '0.00', '2021-12-19 08:19:10'),
(464, '#OCCRT_HF0w0', '#OCITM_TDY5G', '#OCUSR_hZ4oU', 1, '0.00', '0.00', '2021-12-19 08:53:45'),
(467, '#OCCRT_Ffp6F', '#OCITM_TDY5G', '#OCUSR_dSFjc', 1, '0.00', '0.00', '2021-12-19 09:14:20'),
(468, '#OCCRT_IK27Z', '#OCITM_MO5KL', '#OCUSR_90wvs', 1, '0.00', '0.00', '2021-12-19 09:21:43'),
(474, '#OCCRT_UaGxU', '#OCITM_TDY5G', '#OCUSR_cs9vY', 1, '0.00', '0.00', '2021-12-19 11:16:29'),
(477, '#OCCRT_q2agv', '#OCITM_MO5KL', '#OCUSR_fIJPx', 1, '0.00', '0.00', '2021-12-19 12:17:38'),
(485, '#OCCRT_H3O5G', '#OCITM_aMPmi', '#OCUSR_93uwd', 1, '0.00', '0.00', '2021-12-19 13:05:07'),
(487, '#OCCRT_s3o2B', '#OCITM_MO5KL', '#OCUSR_JWzj8', 1, '0.00', '0.00', '2021-12-19 13:14:30'),
(496, '#OCCRT_SqWvl', '#OCITM_aMPmi', '#OCUSR_YYd72', 2, '0.00', '0.00', '2021-12-19 18:28:49'),
(523, '#OCCRT_24o6K', '#OCITM_MO5KL', '#OCUSR_86n4v', 1, '0.00', '0.00', '2021-12-20 11:39:02'),
(529, '#OCCRT_afBFg', '#OCITM_ohvH3', '#OCUSR_aQjwe', 1, '0.00', '0.00', '2021-12-20 12:20:38'),
(532, '#OCCRT_pWepw', '#OCITM_TDY5G', '#OCUSR_RPOGG', 1, '0.00', '0.00', '2021-12-20 14:36:10'),
(534, '#OCCRT_8hT6U', '#OCITM_MO5KL', '#OCUSR_uUFZw', 1, '0.00', '0.00', '2021-12-20 17:34:34'),
(536, '#OCCRT_Qs3Iw', '#OCITM_MO5KL', '#OCUSR_zumxp', 1, '0.00', '0.00', '2021-12-20 18:36:32'),
(547, '#OCCRT_swom2', '#OCITM_aMPmi', '#OCUSR_RCLg9', 1, '0.00', '0.00', '2021-12-20 23:53:46'),
(552, '#OCCRT_EOyKB', '#OCITM_MO5KL', '#OCUSR_aqdvv', 1, '0.00', '0.00', '2021-12-21 09:22:30'),
(556, '#OCCRT_Dh74t', '#OCITM_MO5KL', '#OCUSR_kEnfp', 1, '0.00', '0.00', '2021-12-21 11:19:45'),
(578, '#OCCRT_9EFFD', '#OCITM_MO5KL', '#OCUSR_HM8cM', 1, '0.00', '0.00', '2021-12-21 18:09:56'),
(580, '#OCCRT_WbFQs', '#OCITM_MO5KL', '#OCUSR_lNlg5', 1, '0.00', '0.00', '2021-12-21 18:11:15'),
(581, '#OCCRT_EMdG5', '#OCITM_TDY5G', '#OCUSR_cZcWn', 1, '0.00', '0.00', '2021-12-21 18:23:20'),
(583, '#OCCRT_V05Xm', '#OCITM_MO5KL', '#OCUSR_cZcWn', 1, '0.00', '0.00', '2021-12-21 18:26:20'),
(585, '#OCCRT_zSGgi', '#OCITM_MO5KL', '#OCUSR_JvFdF', 1, '0.00', '0.00', '2021-12-21 20:04:01'),
(589, '#OCCRT_UfV6O', '#OCITM_MO5KL', '#OCUSR_kV3J6', 1, '0.00', '0.00', '2021-12-22 08:40:04'),
(600, '#OCCRT_kReqV', '#OCITM_pbULw', '#OCUSR_TlHNw', 1, '0.00', '0.00', '2021-12-22 14:26:06'),
(612, '#OCCRT_Liet4', '#OCITM_TDY5G', '#OCUSR_TYQmo', 1, '0.00', '0.00', '2021-12-22 20:56:22'),
(617, '#OCCRT_6yXCg', '#OCITM_TDY5G', '#OCUSR_decHE', 1, '0.00', '0.00', '2021-12-23 10:02:56'),
(635, '#OCCRT_Ox4D3', '#OCITM_gAe7O', '#OCUSR_oxgO4', 1, '0.00', '0.00', '2021-12-24 08:34:08'),
(636, '#OCCRT_mLnqE', '#OCITM_MO5KL', '#OCUSR_DgsMX', 1, '0.00', '0.00', '2021-12-24 08:52:50'),
(639, '#OCCRT_7cX63', '#OCITM_MO5KL', '#OCUSR_wLuB9', 1, '0.00', '0.00', '2021-12-24 10:55:26'),
(641, '#OCCRT_Wjmcd', '#OCITM_MO5KL', '#OCUSR_BQKro', 1, '0.00', '0.00', '2021-12-24 12:26:54'),
(642, '#OCCRT_Q1cci', '#OCITM_MO5KL', '#OCUSR_wVc5k', 1, '0.00', '0.00', '2021-12-24 14:05:23'),
(646, '#OCCRT_T41x9', '#OCITM_pbULw', '#OCUSR_2KVcj', 1, '0.00', '0.00', '2021-12-24 17:50:22'),
(648, '#OCCRT_9wHsO', '#OCITM_aMPmi', '#OCUSR_NgACY', 1, '0.00', '0.00', '2021-12-24 18:36:07'),
(654, '#OCCRT_w8oCI', '#OCITM_MO5KL', '#OCUSR_crExa', 1, '0.00', '0.00', '2021-12-24 23:23:28'),
(662, '#OCCRT_y03jS', '#OCITM_gAe7O', '#OCUSR_ekuka', 1, '0.00', '0.00', '2021-12-25 08:15:50'),
(669, '#OCCRT_Mlq7U', '#OCITM_MO5KL', '#OCUSR_P6vcv', 1, '0.00', '0.00', '2021-12-25 10:59:01'),
(670, '#OCCRT_VQFl0', '#OCITM_pbULw', '#OCUSR_x7slY', 1, '0.00', '0.00', '2021-12-25 12:17:03'),
(671, '#OCCRT_TT1t1', '#OCITM_MO5KL', '#OCUSR_KULgP', 1, '0.00', '0.00', '2021-12-25 13:08:36'),
(675, '#OCCRT_AK6n4', '#OCITM_aMPmi', '#OCUSR_X7Fby', 2, '0.00', '0.00', '2021-12-25 13:27:18'),
(693, '#OCCRT_gN4YS', '#OCITM_TDY5G', '#OCUSR_AB0u3', 1, '0.00', '0.00', '2021-12-25 19:35:10'),
(696, '#OCCRT_g4IC3', '#OCITM_pbULw', '#OCUSR_6Q4BT', 1, '0.00', '0.00', '2021-12-25 20:05:57'),
(706, '#OCCRT_XM2rl', '#OCITM_aMPmi', '#OCUSR_R2WEZ', 2, '0.00', '0.00', '2021-12-25 22:08:33'),
(707, '#OCCRT_CHv2H', '#OCITM_MO5KL', '#OCUSR_Arnqi', 1, '0.00', '0.00', '2021-12-25 22:53:46'),
(710, '#OCCRT_ki7Ce', '#OCITM_MO5KL', '#OCUSR_JJ6R9', 1, '0.00', '0.00', '2021-12-25 23:09:29'),
(711, '#OCCRT_sbaH8', '#OCITM_MO5KL', '#OCUSR_lP9IY', 1, '0.00', '0.00', '2021-12-25 23:17:58'),
(718, '#OCCRT_MTXsG', '#OCITM_MO5KL', '#OCUSR_RJ0Np', 1, '0.00', '0.00', '2021-12-26 09:18:15'),
(723, '#OCCRT_ZixyE', '#OCITM_MO5KL', '#OCUSR_O1AYo', 1, '0.00', '0.00', '2021-12-26 09:57:09'),
(727, '#OCCRT_8Tcnh', '#OCITM_MO5KL', '#OCUSR_Dszu8', 1, '0.00', '0.00', '2021-12-26 10:23:50'),
(729, '#OCCRT_237Oz', '#OCITM_MO5KL', '#OCUSR_UulZe', 1, '0.00', '0.00', '2021-12-26 10:57:04'),
(733, '#OCCRT_i8Li9', '#OCITM_aMPmi', '#OCUSR_baZtS', 1, '0.00', '0.00', '2021-12-26 11:40:55'),
(739, '#OCCRT_TMI4W', '#OCITM_MO5KL', '#OCUSR_4OaPD', 1, '0.00', '0.00', '2021-12-26 11:57:06'),
(742, '#OCCRT_Mw5dM', '#OCITM_7ot30', '#OCUSR_PW8Q2', 1, '0.00', '0.00', '2021-12-26 12:37:00'),
(745, '#OCCRT_UmTye', '#OCITM_MO5KL', '#OCUSR_8S0ec', 1, '0.00', '0.00', '2021-12-26 12:44:48'),
(758, '#OCCRT_mEmmS', '#OCITM_MO5KL', '#OCUSR_VB3ZC', 1, '0.00', '0.00', '2021-12-26 20:05:28'),
(760, '#OCCRT_yDm84', '#OCITM_MO5KL', '#OCUSR_RCLg9', 1, '0.00', '0.00', '2021-12-26 21:15:16'),
(768, '#OCCRT_DIw2W', '#OCITM_MO5KL', '#OCUSR_Dl22P', 1, '0.00', '0.00', '2021-12-27 07:08:55'),
(775, '#OCCRT_lSg2O', '#OCITM_aMPmi', '#OCUSR_IGUEN', 1, '0.00', '0.00', '2021-12-27 09:16:58'),
(777, '#OCCRT_9rqA8', '#OCITM_MO5KL', '#OCUSR_33WBq', 1, '0.00', '0.00', '2021-12-27 17:45:27'),
(785, '#OCCRT_hbats', '#OCITM_gAe7O', '#OCUSR_6uob2', 1, '0.00', '0.00', '2021-12-28 01:02:47'),
(786, '#OCCRT_km2BT', '#OCITM_MO5KL', '#OCUSR_zdpyB', 1, '0.00', '0.00', '2021-12-28 07:08:49'),
(787, '#OCCRT_T0HpI', '#OCITM_TDY5G', '#OCUSR_o8Qc7', 1, '0.00', '0.00', '2021-12-28 07:40:34'),
(788, '#OCCRT_XTouJ', '#OCITM_aMPmi', '#OCUSR_w0tU2', 1, '0.00', '0.00', '2021-12-28 08:47:10'),
(789, '#OCCRT_31hfo', '#OCITM_MO5KL', '#OCUSR_gJxNr', 1, '0.00', '0.00', '2021-12-28 12:30:45'),
(792, '#OCCRT_Ba3pu', '#OCITM_MO5KL', '#OCUSR_8wbY8', 1, '0.00', '0.00', '2021-12-28 12:49:12'),
(798, '#OCCRT_kdoGK', '#OCITM_MO5KL', '#OCUSR_Ur5VU', 1, '0.00', '0.00', '2021-12-28 13:18:09'),
(799, '#OCCRT_dtavW', '#OCITM_MO5KL', '#OCUSR_GHBSv', 1, '0.00', '0.00', '2021-12-28 13:56:06'),
(800, '#OCCRT_8auwm', '#OCITM_MO5KL', '#OCUSR_yTmE9', 1, '0.00', '0.00', '2021-12-28 14:16:49'),
(801, '#OCCRT_PAo10', '#OCITM_MO5KL', '#OCUSR_95lE7', 1, '0.00', '0.00', '2021-12-28 14:21:09');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `category_id` varchar(250) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_image` text NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `weight_type` varchar(20) NOT NULL,
  `no_items_text` text NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `temp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_id`, `category_name`, `category_image`, `quantity`, `weight_type`, `no_items_text`, `created_at`, `created_by`, `updated_at`, `updated_by`, `temp`) VALUES
(1, '#OCCAT_TgpAx', 'ASIL', 'asil_1638254567.png', '0.00', '', '', '2021-11-30 12:12:47', 'vijay@gmail.com', '0000-00-00 00:00:00', '', ''),
(2, '#OCCAT_k883t', 'VANARAJA', 'vanaraja_1638254603.png', '0.00', '', '', '2021-11-30 12:13:23', 'vijay@gmail.com', '2021-12-04 20:07:44', 'vijay@gmail.com', ''),
(3, '#OCCAT_MNxhh', 'SRINIDHI', 'srinidhi_1638254787.png', '0.00', '', '', '2021-11-30 12:16:27', 'vijay@gmail.com', '0000-00-00 00:00:00', '', ''),
(4, '#OCCAT_THFIj', 'KADAKNATH', 'kadaknath_1638254808.png', '0.00', '', '', '2021-11-30 12:16:48', 'vijay@gmail.com', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_users`
--

CREATE TABLE `delivery_users` (
  `id` bigint(20) NOT NULL,
  `delivery_user_id` varchar(250) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `hash_key` varchar(250) NOT NULL,
  `hash_key_updated_at` varchar(250) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `active` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `delivery_users`
--

INSERT INTO `delivery_users` (`id`, `delivery_user_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `password`, `hash_key`, `hash_key_updated_at`, `gender`, `active`, `updated_at`, `created_by`, `created_at`, `updated_by`) VALUES
(1, '#OCDUSR_kS2YO', 'suresh', 'babu', 'kaithepallisureshbabu78@gmail.com', '9959829902', '', 'e80b5017098950fc58aad83c8c14978e', '10c7ae0fa63380f634f13c4ce782d8b3', '2021-12-23 12:11:17', 'male', 1, '2021-12-15 11:38:35', 'vijay@gmail.com', '2021-12-11 22:45:39', 'vijay@gmail.com'),
(2, '#OCDUSR_EyWCi', 'Murali', 'M', 'Muraliremod7@gmail.com', '8801344507', '', 'e80b5017098950fc58aad83c8c14978e', '7b89a0c7959dcc32b6945cba5e6b6449', '2021-12-26 08:11:07', 'male', 1, '0000-00-00 00:00:00', 'vijay@gmail.com', '2021-12-12 14:07:46', ''),
(3, '#OCDUSR_hXvA6', 'Shariff', 'babu', 'shaiksharifbabu@gmail.com', '8919091168', '', 'e80b5017098950fc58aad83c8c14978e', '08bea437e13576de84ab2671887be225', '2021-12-12 16:04:37', 'male', 1, '0000-00-00 00:00:00', 'vijay@gmail.com', '2021-12-12 14:44:24', ''),
(4, '#OCDUSR_2mjAW', 'Naresh', 'P', 'naresh0300183@gmail.com', '8790502828', '', 'e80b5017098950fc58aad83c8c14978e', '95c5fa488be97f930181d45b69505d38', '2021-12-25 16:18:45', 'male', 1, '0000-00-00 00:00:00', 'vijay@gmail.com', '2021-12-12 14:45:03', ''),
(5, '#OCDUSR_gYubk', 'Jagadish', 'Pila', 'anjujagadish@gmail.com', '9246822668', '', 'e80b5017098950fc58aad83c8c14978e', 'a84ca907e2d56827e86d6c70fdfbc6e4', '2021-12-23 12:11:59', 'male', 1, '0000-00-00 00:00:00', 'vijay@gmail.com', '2021-12-18 21:29:02', '');

-- --------------------------------------------------------

--
-- Table structure for table `employee_otp_key`
--

CREATE TABLE `employee_otp_key` (
  `user_phone` bigint(100) NOT NULL,
  `otp` varchar(200) CHARACTER SET latin1 NOT NULL,
  `otp_created_at` datetime NOT NULL,
  `nkey` varchar(200) CHARACTER SET latin1 NOT NULL,
  `nkey_updated_at` datetime NOT NULL,
  `status` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_otp_key`
--

INSERT INTO `employee_otp_key` (`user_phone`, `otp`, `otp_created_at`, `nkey`, `nkey_updated_at`, `status`) VALUES
(6281291621, '907840', '2021-12-01 20:58:53', '27989fbd939c95c1e8a203afd85a630b', '2021-12-01 20:59:07', ''),
(6281429039, '480101', '2021-12-18 10:57:01', '39d400193ef3c160b196a4751b47fd9f', '2021-12-18 10:57:19', ''),
(6300243805, '615796', '2021-12-09 19:46:38', '35b19439f02e6008778e2fbf70d51685', '2021-12-09 19:48:37', ''),
(6301164065, '456462', '2021-12-09 12:04:31', 'bd2a78aec9e53511ec722e37e4d4c01b', '2021-12-09 12:04:42', ''),
(6301258012, '484885', '2021-12-22 11:16:12', 'b4bde9be5ae041093b455390cfd35276', '2021-12-22 11:16:47', ''),
(6301618423, '133341', '2021-12-11 12:57:25', '2643dcdb0fac03cee0994ed293ee9201', '2021-12-11 12:59:33', ''),
(6301689368, '485599', '2021-12-18 21:31:41', 'ec34724d9120efbe00b9400c88dda621', '2021-12-18 21:31:57', ''),
(6302027376, '244100', '2021-12-24 17:45:50', '6bd5521a78583909b866483d9793bce1', '2021-12-24 17:46:20', ''),
(6302154664, '507220', '2021-12-07 18:44:01', '1a15c12d9695bd07dddaf8edbe36789a', '2021-12-07 18:44:24', ''),
(6302594146, '827097', '2021-12-10 09:43:32', 'e2af00aa35d2c4b4368bb04ee82d0525', '2021-12-10 09:43:53', ''),
(6303019646, '628340', '2021-12-04 09:33:22', 'f20e2f3a42409d5000e36ded711eb89f', '2021-12-04 09:33:44', ''),
(6303246760, '114930', '2021-12-24 14:40:56', '58ca44ffd7fa3142ef87672de361d5e7', '2021-12-24 14:41:35', ''),
(6303433009, '243077', '2021-12-17 22:14:17', '2904c4e966c4923ad1178332debc75a3', '2021-12-17 22:14:32', ''),
(6303863815, '597868', '2021-12-01 11:59:38', 'f9187bee51d8529a26172ffcf44d6b79', '2021-12-01 12:00:00', ''),
(6304496570, '964567', '2021-12-01 10:23:11', '613a787412a353845d8fa543aaa9a178', '2021-12-01 10:23:48', ''),
(6304879079, '977634', '2021-12-17 21:07:20', '557ea51a76fa7af98efd21b8a042ba76', '2021-12-17 21:07:43', ''),
(6305443086, '591002', '2021-12-16 13:01:41', 'b6e87eb13e33080db75ea0c8b7d7b35b', '2021-12-16 13:02:01', ''),
(6305651855, '335214', '2021-12-01 11:01:16', '8f79bd5a4d2df8ee233b6930596cc929', '2021-12-01 11:01:41', ''),
(6309180169, '526239', '2021-12-23 22:13:13', '', '0000-00-00 00:00:00', ''),
(7013227373, '179627', '2021-12-19 11:31:30', '79667c264e9780cc92cf97a2c1440bf0', '2021-12-19 11:31:59', ''),
(7032522463, '884004', '2021-12-17 20:03:39', '5f257a37f2af48f6337491cec8df8ec0', '2021-12-17 20:04:19', ''),
(7033584482, '999078', '2021-12-18 10:23:37', '4b1c917113e2e0ace40e94cad3593400', '2021-12-18 10:23:53', ''),
(7036243553, '791798', '2021-12-02 13:50:58', 'b64156388552ddf6a4f6a3ac4e303b15', '2021-12-02 13:51:25', ''),
(7057155651, '509572', '2021-12-03 09:28:43', '12e61a0c8ab514db5bc2479e517c6d43', '2021-12-03 09:29:05', ''),
(7075731191, '857014', '2021-12-19 11:20:18', '', '0000-00-00 00:00:00', ''),
(7075731194, '173779', '2021-12-19 11:20:43', 'd0f6d424561c3ed4a9ad1fb1ffa9e976', '2021-12-19 11:21:00', ''),
(7093833605, '738455', '2021-12-26 07:42:37', '8cc97d8357648a412c319c331f669a6f', '2021-12-26 07:42:54', ''),
(7095076768, '839525', '2021-12-07 16:44:46', '9ea6f1804379e61291c264e879b2c113', '2021-12-07 16:45:11', ''),
(7095448888, '666559', '2021-12-18 09:21:35', 'ee4a6e45816beedf30244366c8138e55', '2021-12-18 09:21:55', ''),
(7097203446, '608752', '2021-12-02 09:42:03', 'eb8f43c8cff27652af41474d27a66c6e', '2021-12-02 09:42:19', ''),
(7207379999, '212790', '2021-12-18 08:33:21', 'd4395bef4bb6cac3d57fbce8823790ef', '2021-12-18 08:33:39', ''),
(7304245165, '840273', '2021-12-17 22:43:51', '9661c69f4ba0387c724ab0ce379c3593', '2021-12-17 22:44:08', ''),
(7337087083, '419099', '2021-12-21 12:16:29', 'b85194b423833a5336384517878e0667', '2021-12-21 12:16:43', ''),
(7386030156, '975896', '2021-12-25 07:39:10', 'a486a1edec696293d0bdd14dc3d990e3', '2021-12-25 07:39:55', ''),
(7386064145, '651552', '2021-12-19 10:00:24', '429b6d91be07221330d43842b48dfc73', '2021-12-19 10:00:37', ''),
(7386625142, '167115', '2021-12-26 12:35:16', '3bb1d5bd60bf7c598dcc3aa5776e18e6', '2021-12-26 12:35:38', ''),
(7396370639, '935721', '2021-12-25 23:17:05', '64624285d8287a678eb773856be0edab', '2021-12-25 23:17:21', ''),
(7569033661, '931900', '2021-12-01 11:34:08', 'b51435fbe1f22cb127217c165b5578a7', '2021-12-01 11:34:29', ''),
(7569410890, '654254', '2021-12-20 18:54:07', 'e24404771176ec784559bda2524788dd', '2021-12-20 18:54:24', ''),
(7601064960, '890465', '2021-12-11 13:15:04', 'f9a193afa8af7424d60c0a060c9c8b3e', '2021-12-11 13:15:17', ''),
(7660899508, '734023', '2021-12-21 11:00:38', '3e5e4a18db2781d006f9b8ed1e1122e4', '2021-12-21 11:01:12', ''),
(7674834940, '676886', '2021-12-01 11:41:55', '877c4eaac20352cd7403d0d0da28d1c6', '2021-12-01 11:42:13', ''),
(7675006227, '713960', '2021-12-19 09:56:56', '3f089ad84f1cfd55907fd0925a55757e', '2021-12-19 09:57:29', ''),
(7680914803, '233573', '2021-12-09 19:19:21', '', '0000-00-00 00:00:00', ''),
(7702005654, '189431', '2021-12-26 20:04:07', '2a170f25ffae26f82783b17d40ebf11f', '2021-12-26 20:04:23', ''),
(7702116817, '102108', '2021-12-18 09:39:22', '08e3c6aeaed6815095068ceb489e5ee5', '2021-12-18 09:39:38', ''),
(7702709905, '643339', '2021-12-02 14:56:21', '82a00a9a2e7c9bfbf3c29b5296097095', '2021-12-02 14:56:55', ''),
(7702738752, '404025', '2021-12-03 07:21:04', '77b3269752dc47f0dcc5b51785220883', '2021-12-03 07:21:16', ''),
(7729028546, '705728', '2021-12-26 14:03:01', '4f762f8cd58f94a116ee015108ef2ab7', '2021-12-26 14:03:34', ''),
(7729898819, '933128', '2021-12-17 14:35:52', 'b265647434669ad8e15f251f848f6008', '2021-12-17 14:36:08', ''),
(7729922288, '570512', '2021-12-01 14:05:54', '8c2140cb96c47be9e041ed6100158dbf', '2021-12-01 14:06:09', ''),
(7730863566, '948490', '2021-12-05 13:13:12', '4d62a669c437c27f86b26ffe07d6f961', '2021-12-05 13:13:29', ''),
(7780533191, '270862', '2021-12-18 15:32:26', 'd991b372ae991e2813edb2274c14d496', '2021-12-18 15:32:45', ''),
(7780548445, '437576', '2021-12-05 13:39:23', '80ef418e0fd0094dc83296f9bceac98c', '2021-12-05 13:39:59', ''),
(7780738373, '235587', '2021-12-21 11:56:52', '1323c8bce514fde1d6faad39bb559c01', '2021-12-21 11:57:13', ''),
(7780756940, '865995', '2021-12-02 12:42:00', '9f30ab544391b35232d05a783e3977bc', '2021-12-02 12:42:22', ''),
(7785888588, '704656', '2021-12-17 21:45:20', 'b1e53d0207717366814ace94b17740a5', '2021-12-17 21:45:40', ''),
(7793936064, '387395', '2021-12-24 14:51:39', '53aa8f2999c6632c8e8d2f103497fa31', '2021-12-24 14:52:00', ''),
(7799631251, '941314', '2021-12-24 10:54:50', '19572a32adaae5c9cd29feabb27e7f5c', '2021-12-24 10:55:09', ''),
(7799867595, '284926', '2021-12-01 19:44:04', '09d9579c081d023c97e6015406d1114f', '2021-12-01 19:44:40', ''),
(7842796665, '104181', '2021-12-21 18:08:53', '585c935223784960418d12c3615f2fc6', '2021-12-21 18:09:15', ''),
(7893021989, '682619', '2021-12-04 07:28:59', '1049feeaf5895e1a9387ef93d4fcee59', '2021-12-04 07:29:22', ''),
(7893938484, '187844', '2021-12-19 09:47:46', '401289bc5bd5abecab906a3e1c183691', '2021-12-19 09:48:20', ''),
(7901290216, '434431', '2021-12-07 22:15:48', '9c883a0524a2afc88d04acacdc0a3eae', '2021-12-07 22:16:31', ''),
(7901384312, '692517', '2021-12-10 14:15:01', '74daba4897d799df357ffaa0e203fb08', '2021-12-10 14:15:40', ''),
(7981101642, '583119', '2021-12-11 00:08:40', '2d83a35569a5f11e1f60da57650e350e', '2021-12-11 00:08:59', ''),
(7981297993, '651772', '2021-12-09 21:50:21', '2cef3a37e306de6323f3ed2a440a3857', '2021-12-09 21:50:47', ''),
(7981353950, '735060', '2021-12-12 10:52:23', 'e939c9dea19914e05c921d40c4a1d4b6', '2021-12-12 10:52:46', ''),
(7981415148, '502647', '2021-12-25 19:21:01', '1dc4e5242fb63a0dd6c400762bf95c9e', '2021-12-25 19:21:16', ''),
(7981470123, '757956', '2021-12-11 14:47:37', '7d59c28894f5bd38a2dc3677b1477ac5', '2021-12-11 14:48:06', ''),
(7981578200, '409514', '2021-12-11 11:39:36', '9fc4e004696e31777a595f7f04314a66', '2021-12-11 11:39:54', ''),
(7981885873, '977196', '2021-12-01 22:00:01', 'ab99ffbc1afed7362e24302714af4658', '2021-12-01 22:00:32', ''),
(7981900025, '139776', '2021-12-07 13:47:00', '973c874cdbaaa893917bd823cb239883', '2021-12-07 13:47:20', ''),
(7981918185, '465725', '2021-12-19 13:13:36', '4fbf5ffe7841bc2daea8a41c105ae68e', '2021-12-19 13:13:58', ''),
(7989100342, '416216', '2021-12-21 20:02:08', 'e326bb839fa757a3a876245fb1436a30', '2021-12-21 20:02:25', ''),
(7989246455, '922862', '2021-12-07 06:59:10', '28d53df35e41aa146330818d39e6b850', '2021-12-07 06:59:32', ''),
(7989308621, '845282', '2021-12-17 19:35:23', '9bb07dfd33c6a0b6e44258663fdc05cb', '2021-12-17 19:36:04', ''),
(7989368789, '990219', '2021-12-05 19:55:19', '9d7eda6b36ebe06fc54b0a9e53749048', '2021-12-05 19:55:37', ''),
(7989668917, '738778', '2021-12-20 21:16:46', 'c97797ab158e9d4b977f6cb070876d58', '2021-12-20 21:17:02', ''),
(7993438814, '745449', '2021-12-02 11:25:31', 'feadeea6754aa90f484dc39aeb64506e', '2021-12-02 11:26:04', ''),
(7993891479, '535656', '2021-12-14 15:53:18', '56d241514cd612220dfbd5872a12415b', '2021-12-14 15:53:38', ''),
(7993933654, '115597', '2021-12-21 23:17:13', '88c702d7b20efcbd05a624ec6d9aa460', '2021-12-21 23:13:40', ''),
(7997632733, '463998', '2021-12-01 21:06:07', '', '0000-00-00 00:00:00', ''),
(7997711408, '267347', '2021-12-01 14:02:00', 'dd78c356df414ada06b87c66fc921df7', '2021-12-01 14:02:24', ''),
(7997906247, '398760', '2021-12-01 20:13:40', '4495adc462e08d06f74d0c68793782e8', '2021-12-01 20:13:57', ''),
(8008120364, '557130', '2021-12-16 11:02:37', 'dba7d70f38b7e5b64f9875ae03249d83', '2021-12-16 11:03:00', ''),
(8008945411, '944281', '2021-12-02 14:27:19', '42da1435961ac4ae56cdbf1cdff7f989', '2021-12-02 14:27:40', ''),
(8008955927, '347761', '2021-12-12 22:12:52', '78fff8f87b85b832143da2df4b74e9fd', '2021-12-12 22:14:04', ''),
(8019785909, '897578', '2021-12-27 00:35:55', 'd48703b5dc750714f1a43e563ca20c63', '2021-12-27 00:36:17', ''),
(8074028120, '139168', '2021-12-01 08:59:15', '16a824360cde8547aace7ccc52cf25e5', '2021-12-01 08:59:30', ''),
(8074044236, '565413', '2021-12-12 08:23:19', 'a845973d626976f210d8354ca39039c4', '2021-12-12 08:23:33', ''),
(8074054119, '631098', '2021-12-27 12:51:46', '8ce58a75dec812beecec74194b2cbdeb', '2021-12-27 12:52:07', ''),
(8074205046, '868075', '2021-12-24 14:24:10', 'adc0af67e0ba8cb35724526748b5c185', '2021-12-24 14:24:39', ''),
(8074237307, '899196', '2021-12-18 09:15:46', '52aaf049cfbacd78d0cd898ecc1b5732', '2021-12-18 09:16:05', ''),
(8074688868, '310627', '2021-12-01 19:42:06', '9b87e1f453847e8ad418e7e70a4b835d', '2021-12-01 19:42:16', ''),
(8074728086, '308581', '2021-12-02 10:44:03', '802177c08d67769d352106405590648e', '2021-12-02 10:44:26', ''),
(8074882443, '992943', '2021-12-25 15:30:55', '8504dca937b33e623f9822702e75690a', '2021-12-25 15:31:18', ''),
(8075688868, '835322', '2021-12-01 19:41:16', '', '0000-00-00 00:00:00', ''),
(8106106745, '934563', '2021-12-18 16:07:51', 'bc0cb643faf2867de4183bca3d8ffe73', '2021-12-18 16:08:08', ''),
(8121006007, '539242', '2021-12-20 22:05:51', 'ab80412647cd13afbaa5ba22e8168890', '2021-12-20 22:06:15', ''),
(8121323029, '531529', '2021-12-03 21:32:21', '3b3a6d3de0649261c6fb5dd415de1d30', '2021-12-03 21:32:33', ''),
(8121402087, '940541', '2021-12-11 15:32:52', '2fa9401403f687fa7bc651e8d1d75820', '2021-12-11 15:33:06', ''),
(8121405087, '250739', '2021-12-11 15:32:17', '', '0000-00-00 00:00:00', ''),
(8121678789, '192044', '2021-12-07 18:36:44', '14bfc08acce4bf2f33d3f9d2f9a7fffc', '2021-12-07 18:36:59', ''),
(8121772830, '520199', '2021-12-02 14:50:50', 'de138fa3fc98676b81e5b9fa0091616d', '2021-12-02 14:51:12', ''),
(8125424142, '704766', '2021-12-25 18:19:15', '37c27b5a1e88ee179737be7e47c1ec5f', '2021-12-25 18:19:33', ''),
(8125819510, '740210', '2021-12-19 21:37:30', 'cf54151e3cb55c1abd38f50f44bb7144', '2021-12-19 21:37:45', ''),
(8142054418, '786138', '2021-12-01 17:03:34', '41bcfb4e2113716a1835c184e3369924', '2021-12-01 17:03:56', ''),
(8142831439, '194976', '2021-12-26 21:11:12', '', '0000-00-00 00:00:00', ''),
(8143143836, '501537', '2021-12-20 11:37:35', '7587564defb37e9972597dbbe190a80f', '2021-12-20 11:38:02', ''),
(8143817600, '612231', '2021-12-07 18:15:21', '', '0000-00-00 00:00:00', ''),
(8143886516, '787134', '2021-12-17 22:21:33', '741cf82d54ba1f224379b8ea184a6e76', '2021-12-17 22:21:54', ''),
(8147932656, '326488', '2021-12-25 13:07:20', '0f171a9358aa5f732589d56e634c0513', '2021-12-25 13:07:44', ''),
(8179470616, '953530', '2021-12-19 08:33:38', '32eb1b19ec9e8aa2fd5a04c53ecb5374', '2021-12-19 08:33:59', ''),
(8179878838, '921416', '2021-12-01 16:29:33', '1fa133dbc9bd2c7c46c24a6aa660d264', '2021-12-01 16:29:46', ''),
(8184986306, '466015', '2021-12-01 12:24:24', '9f161ac6eb899f8c4d26a1adbdfadcc8', '2021-12-01 12:24:47', ''),
(8185063932, '185678', '2021-12-21 22:05:29', 'ba7c2386343f8763aa8a2b47210dc766', '2021-12-21 22:05:51', ''),
(8186981259, '573549', '2021-12-14 22:24:09', '83b39d0cc52f2af3fa181580dce4914e', '2021-12-14 22:24:26', ''),
(8247050572, '798615', '2021-12-08 06:42:17', 'ff6b1efde881b8a4130bba2549247dac', '2021-12-08 06:42:39', ''),
(8297871122, '159116', '2021-12-08 10:55:51', '45a03d7cfbead9921f08c66d5f7104e5', '2021-12-08 10:56:09', ''),
(8309447055, '304055', '2021-12-24 14:57:24', '015952ead91053580dc5ae9341a9e66c', '2021-12-24 14:57:40', ''),
(8328078844, '196263', '2021-12-19 18:30:03', '4de66abeb7a9119829048e312fc40bcc', '2021-12-19 18:30:18', ''),
(8328600502, '459442', '2021-12-23 09:11:34', '0cda15a465e20012c9c5c745a8134550', '2021-12-23 09:11:48', ''),
(8328676817, '978727', '2021-12-18 09:40:48', 'ba9023a997420958df26394d14640f05', '2021-12-18 09:40:57', ''),
(8341176027, '701565', '2021-12-07 21:34:43', '17da7cceb313ecae3cb071591477f63b', '2021-12-07 21:34:57', ''),
(8341253545, '530048', '2021-12-27 21:59:55', '0cda258347c3c823667eba968f5aa48d', '2021-12-01 16:33:40', ''),
(8374096982, '287278', '2021-12-01 19:06:25', 'f4edbfe23ac931aa747e98697f49e01a', '2021-12-01 19:06:54', ''),
(8374525634, '116225', '2021-12-01 12:24:06', '0517b3696901aa8888d9f76cff213469', '2021-12-01 12:24:18', ''),
(8490929699, '516843', '2021-12-04 08:56:05', '', '0000-00-00 00:00:00', ''),
(8499884455, '965134', '2021-12-23 13:30:42', '1757d9f14ccd47b5a9c9431808622b5d', '2021-12-23 13:31:13', ''),
(8500067616, '846682', '2021-12-21 16:47:23', '', '0000-00-00 00:00:00', ''),
(8500937323, '274019', '2021-12-01 14:14:39', '579c8dca966b0054238914d6dbd93a6e', '2021-12-01 14:15:11', ''),
(8519875606, '714728', '2021-12-06 20:45:27', 'fb7da3b6709521eb8060da797c95713a', '2021-12-06 20:45:45', ''),
(8523870222, '670219', '2021-12-20 12:21:36', 'fd842e7e6296743930a6dbe9fbeb91ff', '2021-12-20 12:22:12', ''),
(8555060673, '753586', '2021-12-23 16:38:58', '7766f56dc8913745862308b6c6bd9ba9', '2021-12-23 16:39:21', ''),
(8639462562, '559506', '2021-12-02 20:51:44', '6a117df4f7e088bbdf614b5aaf046457', '2021-12-02 20:52:01', ''),
(8639492800, '999403', '2021-12-06 21:43:58', 'd36dff8aa2bdce77f3efc64feb53fd5a', '2021-12-06 21:44:26', ''),
(8639793690, '785191', '2021-12-20 11:27:42', '75f745db6ec35521e0a1cd12b26e2b7c', '2021-12-20 11:28:00', ''),
(8639825785, '667153', '2021-12-01 21:22:38', '8a1e439dac186fb9cd77c6d8468e4583', '2021-12-01 21:23:15', ''),
(8686441106, '615697', '2021-12-24 14:56:06', '', '0000-00-00 00:00:00', ''),
(8686982323, '388222', '2021-12-05 19:52:27', 'a0cf2d67559abd9ded62aec3a1fb25d3', '2021-12-05 19:52:43', ''),
(8686983323, '900378', '2021-12-05 19:49:41', '', '0000-00-00 00:00:00', ''),
(8688361793, '228498', '2021-12-11 16:00:45', 'b539347a53e654bb29a7ebfdcda724e7', '2021-12-11 16:01:00', ''),
(8778031889, '484636', '2021-12-02 12:10:35', '78c41975aa2f9cd547bef12b5e51a8d0', '2021-12-02 12:10:52', ''),
(8790211279, '915019', '2021-12-02 20:59:20', '8703640ff303166dfabafb51a781d434', '2021-12-02 20:59:54', ''),
(8790394430, '572063', '2021-12-18 18:55:44', 'a1d4c9c74587014cd4a0e8d09b2e34fd', '2021-12-18 18:56:00', ''),
(8790502828, '482505', '2021-12-14 22:01:07', '70010f9910af77331decb5325fdabfcc', '2021-12-14 22:01:23', ''),
(8790503131, '576104', '2021-12-02 10:36:19', '2ea90981238566076a92e65b1caf146f', '2021-12-02 10:37:01', ''),
(8790810156, '917942', '2021-12-09 17:24:23', '929ed2bbd545bf1fa926fcf615339ca1', '2021-12-09 17:24:46', ''),
(8790929699, '639374', '2021-12-04 08:57:04', '50ec31f30d14baccfcdd2046f3957a3d', '2021-12-04 08:57:18', ''),
(8801344507, '158943', '2021-12-17 14:34:31', 'bc93c2f65b0341afbdcc96e152b3b291', '2021-12-17 14:34:43', ''),
(8801815015, '689963', '2021-12-26 09:36:51', '6b95320203c821dfa8fab254beae3570', '2021-12-26 09:37:16', ''),
(8870225085, '248867', '2021-12-23 09:27:20', '6a295d3985dc30d2ca345e9f830eece5', '2021-12-23 09:27:44', ''),
(8885157652, '687889', '2021-12-02 13:00:49', '46cd61735ac6f75ea909b2c8ff5caa01', '2021-12-02 13:01:08', ''),
(8885500908, '701176', '2021-12-26 11:51:24', '4eb3e71c2536cef8c9303f2472acfaba', '2021-12-26 11:51:44', ''),
(8885932917, '445821', '2021-12-21 22:49:10', 'bdc82d26a5a93ed04984156afa603936', '2021-12-21 22:49:24', ''),
(8886725574, '675774', '2021-12-09 16:54:13', 'd907e73329bf806a388b363cea2aa0d5', '2021-12-09 16:54:32', ''),
(8886810715, '997210', '2021-12-17 14:28:49', '883ee51ab69e9753864a583d76554b94', '2021-12-17 14:28:58', ''),
(8897539959, '583079', '2021-12-17 21:00:23', '1bf3eba1147498b1cc807ca9952ccb3a', '2021-12-17 21:00:46', ''),
(8897570269, '500031', '2021-12-17 22:18:16', '3ff38c4c29d5a43472d6f8d227dd427b', '2021-12-17 22:18:47', ''),
(8919057242, '175464', '2021-12-18 21:44:25', '272be88f3c59945a1ecac40793028deb', '2021-12-18 21:45:00', ''),
(8919091168, '442272', '2021-12-27 20:30:51', '45bdd2223d9c0445a7300a5659fdd182', '2021-12-27 20:34:09', ''),
(8919128587, '204721', '2021-12-26 17:58:04', 'f4da1f6d4eec1a1547a651a342ff0646', '2021-12-26 17:58:27', ''),
(8919819948, '218333', '2021-12-11 00:08:44', '3dc29b75c622442ce0f142a1638fa647', '2021-12-11 00:09:13', ''),
(8977373650, '233342', '2021-12-24 14:17:16', '68ae2bcef84d3d7acb74082b350181eb', '2021-12-24 14:17:43', ''),
(8977448523, '983124', '2021-12-02 22:14:35', '46a3c11b31a37537ad3ff82e6534d6e5', '2021-12-02 22:14:53', ''),
(8977746977, '696822', '2021-12-03 15:09:46', 'f44be3092fe4be6242b5a874f13117a7', '2021-12-03 15:10:21', ''),
(8977790777, '504216', '2021-12-07 16:07:56', 'a3c85ff25a7dc5da65bbed16885ffcd8', '2021-12-07 16:08:22', ''),
(8978662665, '930717', '2021-12-07 10:38:01', 'eb7b2fa057002d28c8dee7659b7e6fab', '2021-12-07 11:47:05', ''),
(8985971696, '559957', '2021-12-19 18:05:47', 'f1102462efb20f99a93293177d14a9ba', '2021-12-19 18:06:17', ''),
(9000069200, '648705', '2021-12-19 12:18:21', '99f541dffc2e8f7d4a7744f7ef39a193', '2021-12-19 12:18:35', ''),
(9000276738, '799982', '2021-12-04 13:36:35', '', '0000-00-00 00:00:00', ''),
(9000594444, '747975', '2021-12-15 07:44:57', '6eb6582ef9b71898bfebedadead39f54', '2021-12-15 07:45:26', ''),
(9000703317, '237627', '2021-12-11 18:15:48', '985f976a9b9b369253310d5b4d270aae', '2021-12-11 18:16:03', ''),
(9000717913, '815612', '2021-12-04 21:02:55', 'cc27a3c2e91b4e701d59e7f074c9f99e', '2021-12-04 21:03:14', ''),
(9008643999, '593915', '2021-12-09 14:33:44', '4c3fedfd8d26d52820cf2d7a5e12eeab', '2021-12-09 14:34:01', ''),
(9010243299, '129135', '2021-12-02 01:05:33', 'cf49e8aea0f8c407dc4dda47cbf1c731', '2021-12-02 01:05:51', ''),
(9030100737, '360820', '2021-12-12 10:06:53', 'e7821b9e9f4ed88868b7733e0e1720d8', '2021-12-12 10:07:13', ''),
(9030207866, '911129', '2021-12-24 12:37:51', '5a1b65668fe4a4029c46b09b8f67fbec', '2021-12-24 12:38:04', ''),
(9030661733, '673088', '2021-12-18 10:25:42', '6579e011e25c6bf27e02d001db02d1cb', '2021-12-18 10:26:00', ''),
(9030896905, '137296', '2021-12-14 19:53:26', 'e755a1c2617a89ebd8b81a9770dd686c', '2021-12-14 19:54:14', ''),
(9032076728, '951950', '2021-12-25 22:59:23', 'aa73ed817d0d9549afeac6aba18c9f7c', '2021-12-25 22:59:47', ''),
(9032707862, '654977', '2021-12-13 12:01:14', 'eab88152466cc9bb23c50b4aedd83d09', '2021-12-13 12:01:29', ''),
(9032757575, '117731', '2021-12-25 08:46:47', '195c045b6f0d584ecdfa3ff2c2eeb267', '2021-12-25 08:47:12', ''),
(9041216291, '952702', '2021-12-01 10:48:28', '63762c87f4fc81ea67ec8960f867831e', '2021-12-01 10:48:56', ''),
(9052319210, '613113', '2021-12-26 16:58:32', '1add52e217cd143652976144e527a81c', '2021-12-26 16:58:54', ''),
(9059406666, '235642', '2021-12-15 23:51:21', '3ce9e7372dbea4e615b49198fe970d5c', '2021-12-15 23:51:38', ''),
(9059566299, '468522', '2021-12-11 13:11:29', 'e85f79603da9c9798b04d1c5af4fbfac', '2021-12-11 13:11:51', ''),
(9059609416, '462433', '2021-12-21 16:35:27', 'e2ef6223caf83abbd5204d6b63963fc6', '2021-12-21 16:35:50', ''),
(9063106333, '127587', '2021-12-18 09:40:11', '089dcb393023b8968a7ff19ed2251b1d', '2021-12-18 09:40:48', ''),
(9063211413, '799869', '2021-12-01 19:47:41', '9cda84ad89ecbe0439d40f47006369de', '2021-12-01 19:48:10', ''),
(9063641982, '247977', '2021-12-21 21:21:34', '', '0000-00-00 00:00:00', ''),
(9100634868, '424334', '2021-12-01 20:34:37', '971ba0c26e1a3bbbb2fe0f0325e6dcd4', '2021-12-01 20:34:51', ''),
(9100953797, '374997', '2021-12-19 21:40:10', '873b518b98bdbbc22537dc604641b27e', '2021-12-19 21:40:26', ''),
(9110308271, '607173', '2021-12-18 13:22:20', '088cbbb76ff76f15d1d44ad37247525f', '2021-12-18 13:23:07', ''),
(9110350959, '354404', '2021-12-28 00:28:18', '454e03b3c7678c2fced44ac59f15b909', '2021-12-28 00:28:36', ''),
(9110780208, '351334', '2021-12-01 13:11:08', '00221261c3bfd98293dd738d1bee11c6', '2021-12-01 13:11:33', ''),
(9110850949, '778065', '2021-12-27 10:52:57', '', '0000-00-00 00:00:00', ''),
(9121576377, '635821', '2021-12-17 19:55:13', '05760f3cf361260510cb4c645d6724b4', '2021-12-17 19:56:04', ''),
(9121803134, '285649', '2021-12-24 14:38:35', 'ab4a2b93f64f07a5f8888b644e7a08fa', '2021-12-24 14:39:24', ''),
(9121988322, '932616', '2021-12-26 16:28:00', 'd77f9bedda92d8b09912ca157b10e606', '2021-12-26 16:28:15', ''),
(9133048479, '261556', '2021-12-01 16:41:53', 'e434e780736784bd0cb291c4aa26d096', '2021-12-01 16:42:15', ''),
(9133352241, '354357', '2021-12-23 09:06:59', 'b978addc9630549f1bd41c0de53bc5da', '2021-12-23 09:07:16', ''),
(9160877939, '504088', '2021-12-21 11:51:36', '73b32e8db70f563e99338272c377cd75', '2021-12-21 11:51:54', ''),
(9177286386, '492936', '2021-12-02 14:54:26', '5adce57ff6f3dd128dee3f8df93c67fc', '2021-12-02 14:54:54', ''),
(9182906313, '911202', '2021-12-17 18:36:37', '9338c217a2d87192f18dcdd9dbcf6e4c', '2021-12-17 18:37:05', ''),
(9194415757, '633512', '2021-12-10 18:20:51', '', '0000-00-00 00:00:00', ''),
(9206537787, '212718', '2021-12-20 21:19:17', '040e96b8d935ae57d6f8fef2d57f69b1', '2021-12-20 21:19:34', ''),
(9246488899, '792345', '2021-12-19 13:01:30', 'c502c36c330807b0e8b72bb5767687b2', '2021-12-19 13:01:48', ''),
(9246822668, '210263', '2021-12-06 09:46:07', '88e124b7ca3ae8d81116494e12e97ca8', '2021-12-06 09:46:21', ''),
(9246999987, '682930', '2021-12-28 13:15:50', '9f21f185399d31603650014d977acc19', '2021-12-28 13:16:12', ''),
(9247153063, '429668', '2021-12-27 00:48:10', '384fcf0b0831666db9d4df610f2c13d3', '2021-12-27 00:48:26', ''),
(9247388319, '272302', '2021-12-20 14:31:06', '3921abdfb3ba4a685b1aa009a4f742fe', '2021-12-20 14:31:24', ''),
(9247843325, '774865', '2021-12-09 13:30:53', '94f957160682327ed7c30a4dc1cfef5b', '2021-12-09 13:31:07', ''),
(9247850005, '538158', '2021-12-26 15:11:44', '1cac4268ee2a61a9deddb46f146d8cb1', '2021-12-26 15:12:06', ''),
(9248090015, '883367', '2021-12-02 10:10:58', 'ca4189ea71419fecbfa47b363ae89af3', '2021-12-02 10:11:25', ''),
(9248979899, '598058', '2021-12-19 08:18:39', 'aec7c13f460c02af8cb18b57735a3bb7', '2021-12-19 08:18:52', ''),
(9290181266, '151002', '2021-12-08 17:55:01', 'a057fa58608846ea1424a3e88a663520', '2021-12-08 17:55:23', ''),
(9290312559, '871367', '2021-12-07 07:30:29', 'b39106bf5e92cff616e5bcca9f9df757', '2021-12-07 07:31:48', ''),
(9290343435, '429186', '2021-12-24 13:19:56', '409e7401cb7b9466bdb87c04cae3fe82', '2021-12-24 13:20:10', ''),
(9290647327, '855025', '2021-12-24 14:02:58', '8796ee9c854fea0df2355f06049e983e', '2021-12-24 14:04:20', ''),
(9291500588, '639943', '2021-12-19 07:08:20', '9319618ad7682cd8117f346cb9dd93bf', '2021-12-19 07:08:42', ''),
(9293148478, '620438', '2021-12-18 20:29:11', 'f0f2b86d2af455a9ea9f9c8d7f94b771', '2021-12-18 20:29:27', ''),
(9294051061, '324779', '2021-12-01 22:54:28', '', '0000-00-00 00:00:00', ''),
(9298908999, '496764', '2021-12-18 20:05:47', '911126ef47ecbd7fa6f1a191df85a368', '2021-12-18 20:06:00', ''),
(9346230235, '824956', '2021-12-02 19:35:29', '', '0000-00-00 00:00:00', ''),
(9347111213, '404305', '2021-12-06 21:23:30', 'f615ff9a4ed3d59de091541f667719ff', '2021-12-06 21:23:50', ''),
(9347175429, '960875', '2021-12-26 11:39:41', 'ad342206024b0b38a9902991727f9de0', '2021-12-26 11:40:03', ''),
(9347520259, '324209', '2021-12-23 22:16:04', '9bed19e64e57ceaab5524a222cca877f', '2021-12-23 22:17:21', ''),
(9347675856, '402564', '2021-12-26 17:48:46', '9f4ae5baba38d2eb6fec92d1c8e3321b', '2021-12-26 17:49:14', ''),
(9381557203, '631766', '2021-12-02 12:37:26', '2c22c5411678f7d42eac828de482295e', '2021-12-02 12:37:48', ''),
(9390185594, '616528', '2021-12-14 14:51:42', '43cf3d9051ad03746bdb6bda91ac2af9', '2021-12-14 14:52:00', ''),
(9396812456, '260039', '2021-12-01 12:56:53', 'a18f540318233c1ba5df9ef8f3fc1b73', '2021-12-01 12:57:14', ''),
(9398518315, '350689', '2021-12-05 12:25:45', '7b63e9e9d829698ba029fade1973048a', '2021-12-05 12:26:02', ''),
(9398966724, '218044', '2021-12-02 12:21:01', '', '0000-00-00 00:00:00', ''),
(9399907756, '499912', '2021-12-21 16:51:29', '9872e82713663089dd7364c73aacf647', '2021-12-21 16:51:58', ''),
(9440186034, '305064', '2021-12-19 08:26:40', '1c87871d3aaaf3100d6d5b40f207224f', '2021-12-19 08:26:52', ''),
(9440307606, '243769', '2021-12-01 17:11:10', '6efa3666cfd3be3cadf99e31dffebb42', '2021-12-01 17:11:40', ''),
(9440462990, '315374', '2021-12-07 20:29:25', '3b9e99c9b99f3dd1d84585628a857ada', '2021-12-07 20:29:50', ''),
(9440496347, '883671', '2021-12-12 22:23:58', '25dfa75c7ac2081136a70d961857bfce', '2021-12-12 22:24:24', ''),
(9440652991, '659911', '2021-12-18 08:53:27', 'fb72df742335ab024481a4269e0141b7', '2021-12-18 08:53:49', ''),
(9440672275, '935508', '2021-12-26 09:16:16', 'a226ff7ea4d16db125efa7a882c7fb96', '2021-12-26 09:16:46', ''),
(9440685760, '669681', '2021-12-02 13:37:25', 'd800495d703746d747f0c03d70fa4a59', '2021-12-02 13:37:52', ''),
(9441207979, '298738', '2021-12-18 11:47:18', '893c46d4bfd760123cfd51929f6656be', '2021-12-18 11:47:34', ''),
(9441440084, '469343', '2021-12-24 12:24:45', '848b0329f5c5d1f2ed26b011b3b0f1b4', '2021-12-24 12:25:53', ''),
(9441575773, '711060', '2021-12-10 18:12:54', '', '0000-00-00 00:00:00', ''),
(9441715702, '307311', '2021-12-18 18:46:27', '672d9c5bfb7a3fbcd54f771b1ec4453a', '2021-12-18 18:46:45', ''),
(9449861994, '231903', '2021-12-18 18:38:48', 'ce4f7846c644ac56267fb9fdfba4e342', '2021-12-18 18:39:12', ''),
(9490227332, '620537', '2021-12-20 13:34:09', '513e34575edf5506bfeed954ce5f5734', '2021-12-20 13:34:33', ''),
(9490474719, '357143', '2021-12-17 19:35:30', '2bcb04ca40188d3e7f9213da4c3a9218', '2021-12-17 19:35:56', ''),
(9491347437, '793765', '2021-12-15 15:06:07', '2c38558cd604fbe9a56681501eea47a2', '2021-12-15 15:06:30', ''),
(9491586268, '462378', '2021-12-18 18:03:48', '7cc82fce29b4de70e20096e94cc40fae', '2021-12-18 18:04:03', ''),
(9492242241, '602342', '2021-12-06 18:02:31', '303832f00c77ef000561959b0a2f69a2', '2021-12-06 18:03:16', ''),
(9492978605, '510862', '2021-12-01 14:51:44', '53e9a5ff3f482b52bab0294c1193fcdd', '2021-12-01 14:52:00', ''),
(9493842435, '198505', '2021-12-21 11:54:12', '339b7ae17f9c5a9fc3d3f39236918ad7', '2021-12-21 11:54:49', ''),
(9494050786, '405867', '2021-12-24 13:21:13', '159e2e137bc5fca042d1cd0cdaf82efa', '2021-12-24 13:21:35', ''),
(9494129555, '322056', '2021-12-01 13:18:08', '626de4c19d173e3e4103860c47dd83b9', '2021-12-01 13:18:25', ''),
(9494222957, '953297', '2021-12-24 20:40:45', 'e588bf8f17fc5cb0d34e899e74641d84', '2021-12-24 20:41:14', ''),
(9494476577, '230586', '2021-12-01 16:42:26', 'c24d6158c327ae4e692ba0e26cca1b64', '2021-12-01 16:42:50', ''),
(9494767636, '284277', '2021-12-22 14:21:52', '165e98f92f79e4896af8cd2e377df1e9', '2021-12-22 14:21:24', ''),
(9502543234, '667141', '2021-12-19 21:56:09', '5ba0a5b66e86e94750bc681a63701c06', '2021-12-19 21:56:32', ''),
(9505086851, '592109', '2021-12-21 21:09:41', 'c6c5c9f2796c412e6e17459bccdf69ba', '2021-12-21 21:09:59', ''),
(9505613456, '154025', '2021-12-04 14:30:15', '', '0000-00-00 00:00:00', ''),
(9515178556, '928304', '2021-12-06 19:27:02', 'cb706e2a24f8f4b412f78662da87626b', '2021-12-06 19:27:19', ''),
(9533326260, '839909', '2021-12-13 13:34:27', 'fbba72b4227cdddd2d8f174321391eee', '2021-12-13 13:34:41', ''),
(9533498555, '623748', '2021-12-24 17:55:30', 'f5fe1d62a5c7fe40bad6022e79a45fd9', '2021-12-24 17:55:44', ''),
(9533518807, '338633', '2021-12-22 20:20:51', 'cdf18bce7d7f41e11b6c8f6e12ced0da', '2021-12-22 20:21:07', ''),
(9533894007, '652083', '2021-12-01 20:51:18', 'eadfb368d7839945936d5cd03079e163', '2021-12-01 20:51:44', ''),
(9542020104, '519803', '2021-12-01 10:28:06', '12e279d2e1aeff0a53f6badb5d064221', '2021-12-01 10:28:18', ''),
(9542499986, '832342', '2021-12-07 09:57:00', '23530dcbe8a3e607abc4bc5e6fe5b143', '2021-12-07 09:57:19', ''),
(9542692500, '461283', '2021-12-05 19:55:22', '75c9959d9c8b03a56361471833f29ce8', '2021-12-05 19:55:47', ''),
(9542722395, '823458', '2021-12-19 09:52:50', '9d0787fc2bffdb68607500efba418cec', '2021-12-19 09:53:35', ''),
(9550127302, '542623', '2021-12-20 18:35:53', 'a254ea7d136a7759a7f7ba340d1f97a4', '2021-12-20 18:36:08', ''),
(9550808384, '127615', '2021-12-08 17:30:08', '130e98b7db92cca910df2c670c23e633', '2021-12-08 17:30:36', ''),
(9550819281, '465593', '2021-12-20 11:59:48', '18a5e7635bf166373e95b95b21df8dc6', '2021-12-20 12:00:07', ''),
(9553177722, '479602', '2021-12-02 12:27:43', '345ca22c4beaf7b65d4e535f603661e9', '2021-12-02 12:28:16', ''),
(9553185356, '227697', '2021-12-15 18:08:22', '3fe58532d23c2a83dc410cbc81e32882', '2021-12-15 20:26:40', ''),
(9573890088, '465998', '2021-12-28 12:24:41', '9718b6cb1720968fd6b057000120e098', '2021-12-28 12:25:06', ''),
(9611530550, '630282', '2021-12-23 09:21:12', '008652b9cf52c1f91e514d2926381924', '2021-12-23 09:21:32', ''),
(9637176232, '720048', '2021-12-02 09:58:53', '7c8612f297c847a43e00c25f69014e20', '2021-12-02 09:59:08', ''),
(9640094392, '613821', '2021-12-07 10:27:04', '', '0000-00-00 00:00:00', ''),
(9643345013, '431489', '2021-12-18 11:35:38', '', '0000-00-00 00:00:00', ''),
(9652559446, '701058', '2021-12-06 11:30:14', '', '0000-00-00 00:00:00', ''),
(9652746746, '284883', '2021-12-05 13:38:25', '', '0000-00-00 00:00:00', ''),
(9666070290, '114023', '2021-12-17 18:14:33', '9b393a1fb56e2d23645f39a0ef58dbfc', '2021-12-17 18:14:59', ''),
(9666180733, '543422', '2021-12-26 15:58:44', '34755bb1a0e6a2a57e48b29ccff38c5c', '2021-12-26 15:59:16', ''),
(9666414717, '350910', '2021-12-21 19:09:06', '9e0e74093091ef33b423edd599f866d5', '2021-12-21 19:09:18', ''),
(9666556800, '391618', '2021-12-16 23:11:03', 'aa5dac38b0d9406f018b71a91ab6b57a', '2021-12-16 23:11:22', ''),
(9666577972, '344287', '2021-12-14 12:10:39', 'b1c4eecac048c37c16fc8989eeea5a2a', '2021-12-14 12:11:20', ''),
(9676299365, '440774', '2021-12-26 20:58:33', '7a05872559385341716b03db831d79d3', '2021-12-26 20:58:49', ''),
(9700324356, '304031', '2021-12-25 22:02:50', '8d4088b3a70bb6894b7f5b1bb4d16934', '2021-12-25 22:03:46', ''),
(9701281668, '138521', '2021-12-22 09:52:05', '183cf7d0d460cfbd693ada952438ef81', '2021-12-22 09:52:51', ''),
(9701700606, '179779', '2021-12-25 08:08:58', '97ec79c45a8c2bb656c79a7c8a35e24d', '2021-12-25 08:09:12', ''),
(9703261946, '101766', '2021-12-22 00:35:19', '35b4fd3d552be0ac4b26b6dc503759f1', '2021-12-22 00:35:39', ''),
(9703778097, '828977', '2021-12-03 00:45:16', '57d89fb1db358ba297c68d374e1461f9', '2021-12-03 00:45:32', ''),
(9703929527, '458744', '2021-12-19 21:01:08', '0da1326581adef42806c69dc50af4be0', '2021-12-19 21:01:24', ''),
(9703996026, '500632', '2021-12-19 08:39:15', '4861c95f9bc0d2bad2342e9247ed3b4e', '2021-12-19 08:39:49', ''),
(9704049735, '202787', '2021-12-07 21:36:24', '1c927a96ff53bf723aa94e52d48432a0', '2021-12-07 21:36:37', ''),
(9704104182, '858869', '2021-12-24 12:02:37', '97e91a7767a7fd7f5eecb3ae14333a0a', '2021-12-24 12:03:03', ''),
(9704738144, '343967', '2021-12-01 20:47:22', '6be1b17daee72696d3e305720dcc6a31', '2021-12-01 20:48:00', ''),
(9704862273, '493676', '2021-12-22 08:28:44', 'efd90258a4ba16f8d31e8a03297bf095', '2021-12-22 08:29:06', ''),
(9705011167, '506028', '2021-12-09 16:56:17', '88c570a349b705c6fa1be198c1720cac', '2021-12-09 16:56:46', ''),
(9705204467, '481608', '2021-12-13 11:58:23', '0fd03cdc04ebade6e814ad9648cf01de', '2021-12-13 11:58:51', ''),
(9705499930, '206027', '2021-12-01 21:22:21', '42950ee6d95895ec4676df2a3b3785c8', '2021-12-01 21:22:47', ''),
(9705612789, '659755', '2021-12-19 22:23:17', 'd78c082bf1744c6d752ae6aa80d86bf1', '2021-12-19 22:23:39', ''),
(9705804007, '558177', '2021-12-04 10:34:58', '20d7358db47dbefd78c934a4ffebf4d1', '2021-12-04 10:35:12', ''),
(9751961651, '725733', '2021-12-01 11:33:17', '165ae7f6bf2242a402482dc7b8a53442', '2021-12-01 11:33:40', ''),
(9840730256, '106345', '2021-12-01 20:41:58', '0678651082b7c20fff4ff6e264f80ffd', '2021-12-01 20:42:21', ''),
(9848293050, '790506', '2021-12-24 14:01:12', 'fcb2ba80eeb53c33523f2b32d6fc2ceb', '2021-12-24 14:01:40', ''),
(9848317786, '847308', '2021-12-06 21:20:23', '577d1918b3b6cc19208ebd80d07c2988', '2021-12-06 21:20:45', ''),
(9848343349, '133586', '2021-12-26 12:44:18', '55767b42d8f1e4a20fe8a61ef9e8e3b5', '2021-12-26 12:44:34', ''),
(9848560009, '432332', '2021-12-01 12:02:56', 'd3bc461bbe7c3b39b8261f9be211708b', '2021-12-01 12:03:11', ''),
(9848630994, '811092', '2021-12-19 08:51:27', '9072bdfd0e1ce5fe84e821a3bd296686', '2021-12-19 08:52:38', ''),
(9848833061, '262657', '2021-12-26 11:34:12', '2cb121ef0d87f6c86e9f7b0ea9489275', '2021-12-26 11:34:25', ''),
(9848852800, '936601', '2021-12-01 12:09:20', 'c01b9a42cc8b05df96f54ced9d30dbe9', '2021-12-01 12:09:49', ''),
(9848983143, '706223', '2021-12-24 22:31:17', 'c92d80ca49eb7eb8c8996a400c575c19', '2021-12-24 22:34:04', ''),
(9849023266, '492540', '2021-12-26 18:02:02', '44a8e9973f9caebc4153dc56d3ea06ad', '2021-12-26 18:02:49', ''),
(9849222278, '692131', '2021-12-04 10:39:08', '8bfdf93089674b9dff4639d20fc84d84', '2021-12-04 10:39:28', ''),
(9849415170, '514250', '2021-12-02 13:54:12', '50653003ecfef7e37cd7be735832e2d6', '2021-12-02 13:54:35', ''),
(9849688950, '428752', '2021-12-18 13:54:24', 'e26269588916e03a0ec84d21f661c31a', '2021-12-18 13:55:01', ''),
(9849950805, '288297', '2021-12-24 19:50:23', '972da5746561f0f58ec47aba03872270', '2021-12-24 19:51:02', ''),
(9866349836, '998055', '2021-12-02 11:41:20', 'c1a6cbf355a20a7ddfef47affc0cb92f', '2021-12-02 11:41:46', ''),
(9866364207, '202780', '2021-12-01 11:43:35', '87386698b4f0d3f29717943a895a6928', '2021-12-01 11:44:08', ''),
(9866527244, '515338', '2021-12-07 11:28:34', '0461b8a94009b37d941d9ffa680f5f4f', '2021-12-07 11:29:06', ''),
(9866668662, '757701', '2021-12-19 09:11:22', '80d65c102443ff0144a52601b1898c84', '2021-12-19 09:11:53', ''),
(9866888266, '511911', '2021-12-02 14:18:13', 'd21a1fd2597f998dd6de2af0f7edeef8', '2021-12-02 14:18:33', ''),
(9885412666, '402443', '2021-12-21 18:09:45', '8b1e9e26f4645f0a9f447f0da91061cf', '2021-12-21 18:10:15', ''),
(9885946777, '731724', '2021-12-20 09:57:11', 'ec39f708a01e6d0fe77d453099a1c73a', '2021-12-20 09:57:00', ''),
(9900077725, '221535', '2021-12-04 21:51:36', 'd941bff536a745e6b476a94dea9f00ce', '2021-12-04 21:52:16', ''),
(9908048428, '372832', '2021-12-09 19:26:46', '8f284d7d6845b671c019802051099e8b', '2021-12-09 19:26:57', ''),
(9908070835, '866349', '2021-12-20 22:03:02', 'b7d0f1e7d3ca9a4966c49d1a3612db87', '2021-12-20 22:03:28', ''),
(9908099530, '204550', '2021-12-28 13:55:11', '27357db8f23bc30d14b5a02c6ce9ba0b', '2021-12-28 13:55:34', ''),
(9908117455, '703984', '2021-12-04 10:11:42', 'eed38c658794fdaa68045bbe247a75b2', '2021-12-04 10:12:17', ''),
(9908587853, '840529', '2021-12-09 11:12:56', 'afcff328c078bb34ef3f93cc3a6bb29d', '2021-12-09 11:13:18', ''),
(9908595084, '254121', '2021-12-07 06:44:26', '0b2e0c214baad16ff1c7fb269855947b', '2021-12-07 06:44:44', ''),
(9908736960, '318512', '2021-12-01 09:58:06', 'a2a688fd6da6f5454a0ccf7efd1157ba', '2021-12-01 09:58:22', ''),
(9908883127, '284901', '2021-12-09 20:01:22', '8653314fc15a06b249fa0a579a6022a4', '2021-12-09 20:01:48', ''),
(9912198998, '554068', '2021-12-07 14:05:32', '942bf388bf1a15a1fb54c89ed639676c', '2021-12-07 14:05:52', ''),
(9912203424, '682689', '2021-12-19 12:27:48', 'e75911b16dcdcdfa654ffbb2aa8edff1', '2021-12-19 12:28:05', ''),
(9912612216, '818336', '2021-12-26 07:33:49', '15e3ec7e2a73f0a9fa81cee8c405def8', '2021-12-26 07:35:22', ''),
(9912894645, '360387', '2021-12-17 18:08:03', '2fead7c98130d277d372332b7f9e05a6', '2021-12-17 18:08:20', ''),
(9948025441, '899455', '2021-12-17 20:50:55', '6f185af4cfbc73861d62142beac607a0', '2021-12-17 20:51:16', ''),
(9948510133, '151024', '2021-12-01 19:05:04', '6a227f86b27f5ad696c8423b03c66d08', '2021-12-01 19:05:28', ''),
(9948589485, '585862', '2021-12-24 12:46:46', 'a2bea528b3986833f8c9ae3cf69a144f', '2021-12-24 12:47:08', ''),
(9948672843, '779731', '2021-12-07 10:21:34', '', '0000-00-00 00:00:00', ''),
(9948789939, '920485', '2021-12-10 23:36:37', 'd7c9c677f882f7e35df86f1427b0f716', '2021-12-10 23:37:49', ''),
(9948861358, '167353', '2021-12-09 19:55:23', '6d2c48acf847ed4aec6129031128f7fe', '2021-12-09 19:55:55', ''),
(9948889786, '916089', '2021-12-19 12:36:50', 'cfd1cb4ba98612e19da295e13e51d4fd', '2021-12-19 12:37:14', ''),
(9948959504, '998668', '2021-12-26 20:04:07', 'd091c0c3ac2a675d5e00882425291998', '2021-12-26 20:04:31', ''),
(9949317186, '344542', '2021-12-20 11:52:02', 'fe60986ae501c7654cbff6b75989499e', '2021-12-20 11:56:49', ''),
(9949435181, '954174', '2021-12-28 00:38:14', '82d8a1d6591d4cbcb2c1bfb5c217dbdf', '2021-12-28 00:38:40', ''),
(9949664942, '728515', '2021-12-03 09:48:43', '', '0000-00-00 00:00:00', ''),
(9949838205, '889270', '2021-12-26 11:08:31', '04240db494d915761c0bcfcace440e48', '2021-12-26 11:08:48', ''),
(9951467573, '545527', '2021-12-05 12:35:09', '2004a5219c355d3200a396b019d8153f', '2021-12-05 12:38:01', ''),
(9951817975, '381862', '2021-12-02 13:30:26', '424660b00055be773273e95a84dd58d0', '2021-12-02 13:31:12', ''),
(9951923777, '463393', '2021-12-09 23:39:06', 'f9702d3f2530631236d1a3a9856706cc', '2021-12-09 23:39:23', ''),
(9959062631, '317690', '2021-12-03 07:56:42', '3bd5416b06a46cabc19ed7d8f3dc4d11', '2021-12-03 07:57:17', ''),
(9959101913, '115101', '2021-12-22 14:32:56', '59bd4f506aac45c86927ecde7093cd11', '2021-12-22 14:33:16', ''),
(9959474747, '792244', '2021-12-08 21:48:18', '7e9a7ad3d677b10742fa88124d49eb5c', '2021-12-08 21:48:35', ''),
(9959829902, '493418', '2021-12-01 10:26:02', '9e894018cbf61566e6d7c944a5e9bc52', '2021-12-01 10:27:01', ''),
(9959899092, '845722', '2021-12-23 10:00:35', 'c934334016596244f191029b15ed7a64', '2021-12-23 10:00:55', ''),
(9963129177, '671391', '2021-12-04 09:06:40', 'd23cd790e2152e35c0b7968792fbd34c', '2021-12-04 09:07:29', ''),
(9963275759, '566346', '2021-12-19 10:05:37', 'd53feb38288e157c6766d52b818c511a', '2021-12-19 10:06:53', ''),
(9963482668, '205030', '2021-12-01 10:30:12', '9fb4bc9b7a2c8dd6c4147e78dc2e2593', '2021-12-01 10:30:33', ''),
(9963656480, '326136', '2021-12-24 19:56:01', '9e9faf7cc025f01af1897e3927324683', '2021-12-24 19:56:27', ''),
(9963878143, '214291', '2021-12-02 17:15:09', 'd73e8041a0b52a539b341422ff49d846', '2021-12-02 17:15:53', ''),
(9966477637, '793098', '2021-12-26 20:39:30', '9c23cf7daed3850a3aeb891155f67867', '2021-12-26 20:39:54', ''),
(9966530300, '839784', '2021-12-19 18:21:31', 'd241a245f31a41786a1c2f50eecc90e4', '2021-12-19 18:21:44', ''),
(9966583400, '989912', '2021-12-07 16:09:39', '', '0000-00-00 00:00:00', ''),
(9966610402, '492473', '2021-12-15 15:31:38', '4d208d6f8c0f95295f2e8e70f8fce0a0', '2021-12-15 15:33:23', ''),
(9966632371, '370020', '2021-12-18 19:53:36', '98094c815981e1151d0e22b56146b928', '2021-12-18 19:53:54', ''),
(9966769349, '658484', '2021-12-01 11:31:14', '6c70af5a5cb9ca213fc71345b28a4617', '2021-12-01 11:31:32', ''),
(9966894332, '859844', '2021-12-24 21:22:56', '953deece8a5c1c91d4d1c497fd9ed550', '2021-12-24 21:23:37', ''),
(9982125999, '168419', '2021-12-07 13:46:57', '6e6899336e03e73e3834f9b58e19e388', '2021-12-07 13:47:11', ''),
(9985223200, '722668', '2021-12-27 21:29:24', 'a341104f484be5e5b9435a877fa8da56', '2021-12-27 21:29:58', ''),
(9985804917, '516734', '2021-12-17 19:39:59', '95b61512f5da7969e058ba9f5701ff38', '2021-12-17 19:40:20', ''),
(9985953812, '249200', '2021-12-01 20:24:35', '90e948378faac859171fffb3138781ac', '2021-12-01 20:24:59', ''),
(9985972987, '520242', '2021-12-19 09:04:04', 'a8a7d92106080a3fb93d5e4436b51034', '2021-12-19 09:04:26', ''),
(9989470412, '196733', '2021-12-16 17:40:30', '3ac4f7b1ea4e8cc24328ac73e9b8fc82', '2021-12-16 17:40:42', ''),
(9989670458, '903788', '2021-12-02 22:52:01', '1586e8ccbd4e226d7ac9bc175f7f42fe', '2021-12-02 22:52:17', '');

-- --------------------------------------------------------

--
-- Table structure for table `fcm_tokens`
--

CREATE TABLE `fcm_tokens` (
  `token_id` bigint(20) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `delivery_user_id` varchar(250) NOT NULL,
  `token` varchar(300) NOT NULL,
  `device` varchar(20) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fcm_tokens`
--

INSERT INTO `fcm_tokens` (`token_id`, `user_id`, `delivery_user_id`, `token`, `device`, `updated_at`) VALUES
(1, '#OCUSR_Q8SjX', '', 'eu-YdqHQQFSjSsLM3oP9ym:APA91bG6rgEoegHOMbUfO7zlwliMlQ468jhtBhVuvlAjWtBoYnBTHw0oFtVcRFkNJqub5tx9QyBZdFyC2oISdQbRnbaQmy_HphM7_fDHba0aSjVblqNEpM-yZH-oQT3AgIyJD_0PUG0a', 'android', '2021-12-01 08:59:30'),
(2, '#OCUSR_sG5PA', '', 'd_TciL39TbKcaLzdRl_52A:APA91bEeODYDIKj-bauI9H8QOctWA5Oao7kQreVjQtnwy4C861Her-7rGsSYg_QgfYkrsuZ7WYRJqfVfp3-D0wm3utALYIDcA0gGGHuOW2tr0858ChR0PhrtCHLvHVVb2_NMOu9JVG3h', 'android', '2021-12-01 09:58:22'),
(3, '#OCUSR_8S0ec', '', 'fSn4Zn-YQ-uq5zyHTaVVzc:APA91bHDpF6hvqIUHGaBUGv9TfqOwhq6Ajdyb2ZaNRbWZ3wRDN-c3x9blrd8hLGsp5VYQmRKCJN0jNJcURVq43kQOIJNQb-KFLHzvJ-ixo-ME6tEOo6pzONanJFZzxCufz1J7ceGfb9d', 'android', '2021-12-06 09:46:21'),
(4, '#OCUSR_AbOa9', '', 'chIOJFz6QAiqfYqQJbS-Hj:APA91bFWPo1KYb50613y5EBaTldO0jBS_2TnvN8-4OT0SqtbDGgFvNRQXutMrbyuLieyad5RhedADrT3O85VPoXm1TLn6WuZ1XUFvin8snk8_FT9UISOyQezwCnukSyATs46rcXUpVPs', 'android', '2021-12-01 10:23:48'),
(5, '#OCUSR_Bzc2a', '', 'f1rlcu4mSLKV7ISBP3dJZ7:APA91bHWXUTwvVED_pNlEZAScscOnbUOHlWullv45ql-BvMdztDgyHzUtmx-S6TZYPKEjIOzyz1H-bnxVwhRkDgvGaOhbT1Cqg2R2yH_Y3uU0pXmso2pUybxG9Xt2RGHbcjahqckyh6e', 'android', '2021-12-01 10:27:01'),
(6, '#OCUSR_eSLcv', '', 'd1x-QvGRQn-Xdz0mRxrcui:APA91bE5t_d3wj7VmUhwb8rrGEmnrJexJnkAL3nw96AENmw3vx7toiMgBomu8vc8dL70iR1P-Jz0OyR2k3FhjDjyamekvHXqzbkfP3ZBQPJVOPRJRgSezdQzN2IXd3xIYf1YrVirMyi-', 'android', '2021-12-01 10:28:18'),
(7, '#OCUSR_vynyq', '', 'frucjp82RkWg4cKmTaOl7v:APA91bHt5X-1-_rCq0G-JRNGjrOqUgDcBrKhzncXOTiRWD3L4sj75yjhXURrC3HKMmo8YgcNLksk2IKCSSrFEj2_EEezVuJP2h4DbnfY2fj61DR8e4Q2zynQT-nciRMbxUoaA_ZPUDBD', 'android', '2021-12-01 10:30:33'),
(8, '#OCUSR_M001D', '', 'dWLOzBGaSyqORsaMmdw_tF:APA91bETTIgdS8sh2CiHDfS_DTBbrgxwWAklq_bhqud9W8Mz3NhmRaq-HZpHjX8jETNO1tFtEOjEwyd9CE6ces3FHzhJBshei7p-XKeI_peWK62HYCmYLfd8Gtt2p0WX2w4xPGGaUDt9', 'android', '2021-12-01 10:48:56'),
(9, '#OCUSR_KIgTv', '', 'f9z1n2EpRqGgobq_5FIUuy:APA91bGplma-JyDv3_9yPXFJHyjobe2y06ILCx3xp4Mjw8M577yLCi8pADtLUZRbZgQ06v52t1lQ_6smDzTuRIeAXKzsAo369OwJI9mzqwSVLywytmrf3iKwg1YdyvcUDkkjWL485Y2J', 'android', '2021-12-09 11:13:18'),
(10, '#OCUSR_YVNOU', '', 'ehHjQLYeQj6y3IBRte3Ro6:APA91bHYJ36rnh4C_OawUwgSTcCNApWY73jE7gOPOyB1pAX9ECVy-jI6DkB66fDPpERuKijosl1nLsFJysJUyqDi6me_3PBswn4KNAIXnJtZNZQFpsXiAY2Al2_iqd1BPifTQrODji-Z', 'android', '2021-12-01 11:01:41'),
(11, '#OCUSR_BIWjo', '', 'cNNdgkhJQ7G-nW0AFcPfSg:APA91bFRu-nhUmXdFIruFvKHDV--e6qFGB_63Sc2jzWr2xLAMlyCN2K9Zp3LrIFFkzwjx79kZj_5YMIVCWa6haXYXJNh6Avfjxi3I2MHVaVZYasKErBTd6bO-rijjSS3l5V6go0acILD', 'android', '2021-12-01 11:31:32'),
(12, '#OCUSR_9H5OC', '', 'cwO4hiPwTeKLNg-5rd_7_S:APA91bGmsMXHq_U8Of9uEraq91GYK5qm5xO3lQNbNsDeYyvxXH1-I4Vu4IHMUEJFfduL2-66vLb2Ewy00tJqGoqYWCxM2ig54yPP4lD2nUDf3QNqq__Lbsn_ed0oMWx-JsH15bnEPUPg', 'android', '2021-12-01 11:33:40'),
(13, '#OCUSR_yJWxf', '', 'f1m0ht7wRLysZbS2rzqvI-:APA91bGg2FLRY11BwSx_DsfM1pqRYFtzROvGEDFsi_hNSKPTB8aReUvzYIeBII8on1DEWywWYr0YoraPMw5jKJ4ICdvqN2bPQjkxw-B0fiMnnfqxX3kZK9SKumwfhrSblJMBrs2s3UTh', 'android', '2021-12-01 11:34:29'),
(14, '#OCUSR_8A0DY', '', 'e_QOcg-cRPyrHttsgTFWcJ:APA91bGl9viaa7vGWVlFyGdlYLVC0LNgwCkp5P4xmLW4SgGJAHbJGie7w6SVwUZSqKLA2VA3O6WGoWsqwnpaeNoXqS2lZqU6eoRKq7nMmC_dUAjL6cOwolddYhHWHCeKBzYLPqdpPhgY', 'android', '2021-12-01 11:42:13'),
(15, '#OCUSR_L3Cex', '', 'ebE_HsAbRE-_rdeFYokO3p:APA91bH1Q-sJ8--Rcx8m4KtpgPtSk_Wz5Zqnf-5Xz6Fww9W7pZX0xadwkEY5-U48WhgUKCIQ0PKXOh2XzBoL7ktl1rtLOTrEQvx6J_eFEK04bq3PhUQjFE9gUfuNDc0ylBf8wHYRmdNe', 'android', '2021-12-01 11:44:08'),
(16, '#OCUSR_Hdj4s', '', 'cbVwl5_tR-O5zA6lfzO87p:APA91bF0ZiaHG9HBbwxNImsy59dh8P1kD60FvubOpXU3wL_oB0ghTMAf6GivbRaYNxVJcC-50EkZw0GcRDSQPwoAJIrudtXhAOZBMLz2uY7ce4ycAWdZv-5F2DGvlTURyXhNA8Ww02Rf', 'android', '2021-12-01 12:00:00'),
(17, '#OCUSR_tuItl', '', 'c-iTiBIdQEy0tHEnw0-Gji:APA91bHlL3N7MQpbwNtelHr88Nhw6YpaHOSGcr7eee1ggFE9zdLSIKnXrRCAU8yJJBMMd6K2DLVcgr4YyVNVJVUCFatrrVQJl3uxle2hKlkPgZRNMenF4H7V3AI-jricRkHr8PWuYR4e', 'android', '2021-12-01 12:03:11'),
(18, '#OCUSR_9PqKd', '', 'ckfn1b-_Q5CGzE-KIUNSbO:APA91bEXiHwg1M3WvEZ_Ei1mDQEw78HOyXN86fhF6LatQDseu-0FcC9xpJGJ7lJSBcriDgVV-hnZCZBD5s7TkYHAfOhzCQlpnOEB0K3_-NTm_x3oDO7zB_WnkrbSn75JFB39cNCRL_Yc', 'android', '2021-12-01 12:09:49'),
(19, '#OCUSR_5mVqe', '', 'emDkmQAeTBWfqiD693-Ff5:APA91bEjhPQ1XemZUz1QYgbEzIJ8xFqASYpb9yq4F7h4zhS38p41BD5vem4OHvs0BLnZDWnbJyJetoxte0C7Cg1COPMs0Ed4HNXCs534P7D2NPl5tmjEC_70-gtUDpbTu19Zl3oYUA9m', 'android', '2021-12-01 12:24:18'),
(20, '#OCUSR_50aDn', '', 'dlyWCzfZR4SsZWCqXRcrKN:APA91bEq8J8Ztkqsm7nQEJ2cB8PVQFgZ7oECUXeyNdksYSg7Qi8HIGb_H6onVMXgz905kUJupq0p1T37vTqn6Mlm0uPDeea0KI4CBw-HOo6fxCVm0Ch2v4vQSYVUaEw5Mq78qBYAfh3x', 'android', '2021-12-01 12:24:47'),
(21, '#OCUSR_6Q4BT', '', 'ep8JuttHSG2l3tKioMcg0r:APA91bHqSVYQDM_-avZoCQGe5KRL-Dt7rZa0eJWpzA2hYVpFPHGAxakU2_x-bNTa3AgC2hi6PclMXUjrRcoPiNbPrO9OJKRGvWbfEhtN6qUGxbDrQP3IqDZHpPvtYn4cPeJRU6PE-GbI', 'android', '2021-12-14 22:01:23'),
(22, '#OCUSR_pJoPF', '', 'dZIdoT4iRAeFrwKNu5I8Uj:APA91bFn58SiFW8NIT1NAmEV06OqD4RtFsqP9KwAtcSb4ZwapaLGNN0rAVC-THsvX7PxC-ikXzCVY4uOE3HOBG9GEJ-39UEO67DkOxVgqcus0Aeq5Kvk49xsLZ_sjkLxYYZViuVCXGM1', 'android', '2021-12-01 12:57:14'),
(23, '#OCUSR_7hdGN', '', 'eezJ8ABPQ2uPzrwxcW-4Me:APA91bFJdkXwqzECnK1KC6aooEpBEs6XMk9UcHBSYvdXV1QG66N8wr4EOLhNbCnvM5FxkcbMSui063tMjeCreMiciLfOPMef_Axf0sIoc71c55wpkf_n62NMLPWhqZZvCvImVmNbhdUi', 'android', '2021-12-01 13:11:33'),
(24, '#OCUSR_GboXt', '', 'cRXDdkhtQCu7MlGGXoxp_w:APA91bEPgu3YSlOE7S_dJDoi6JGIaHRWVAMDZnnDzqPXSrSxOiAwjLxb9SGEBCaDIEfDzhyf7u62EprDg-7i7TJrH8TEtHzrFO7YNd0ZW4pKZnQXyntLym7zoyDweL132u6qHEQxKRta', 'android', '2021-12-01 13:18:25'),
(25, '#OCUSR_Zs9lI', '', 'dmwQn6D8QcqhAhT7mm7lWQ:APA91bHsIbtpzu5pWfDAR_0IDlw7NTrJPIi17BsNSINNiK9YEkCOE5AhAwtnKSXXGI4tfGS_sMjbbmD9ZWPf5cXFGiwW5anzflehua2hUrg7biTzlT0WoO8sTDdYLq8gLiohORVw7wB9', 'android', '2021-12-01 14:02:24'),
(26, '#OCUSR_YbYWp', '', 'e7SapMC4TAWGE5n2-BvIEX:APA91bHaMqMx8jsRgrqlHj0Wz1P1IcjT_qMIK_PWKkgn-fw47vP9V4PX-LLDD_C9h9sCVvli_p9SglHDY1-9X1c2_WmjTg3tRhdRLXvQin45s2k1-5phc1twyOBPRPi3bSWMBlTChlo2', 'android', '2021-12-01 14:06:09'),
(27, '#OCUSR_fodxm', '', 'fIB6w2-SQxq1wKVhB3vA9X:APA91bFSuVjhLCrciXensmUuB_-fhwyXW1rB_DFDej2H5OGTeRTzMNLEm59Z3QDRhfo9PO1NgpSvpCxNxW2Wq-SJh9Pa1wSxh_8fp8Mv8JkxOgsfKIDDbVraRaHbgHZE0x9cDNBLq-Nb', 'android', '2021-12-01 14:15:11'),
(28, '#OCUSR_Hd2n0', '', 'fAdjz2ssTu-SXhlrhqJS-L:APA91bFvM0MT8GZsNW2CGOgagEWfa64j5jXCaF3D3esHPrSu2tpaNSr-HwWFEDzPe6XeCZF-8XdmpoGxodKffXI1ClZD20_ZBvhiq9Xa5L1vDnlFKwBV2c3dNcdAxhKMdYG7yAcM4Jk0', 'android', '2021-12-01 14:52:00'),
(29, '#OCUSR_6zxdK', '', 'dIUwfUxTRcOFzk63ZmN8_N:APA91bFEFhNulMSYKl3EJjcuMl414hFckFpx6_8AJKUe1HmBMyIqYbO3G12YcvmVRNBnmbK3NYkQqI8xQTvCptql67XtpmjjJt3isRkmlluB7Se0wN2k2R09eGnO7tUIg7QTqhTwNZxY', 'android', '2021-12-17 14:34:43'),
(30, '#OCUSR_vzFcO', '', 'cMW-5UtCSh6t3QQSyFir_a:APA91bGD7s8N4sEjD1DTvmfdDAQdAFmK-jB680pR5AHTGcGzsBE-p8vhzftPemNxItbgtG_fjiJWh7LYpgi10DKmrHBNccOwoXCGcwqW6_DeU2oFz9rycxSK307H3pbVgnv3vkwIzJP6', 'android', '2021-12-17 14:28:58'),
(31, '#OCUSR_72IOl', '', 'fT46jQnfQ_i7UXZEDtUOvf:APA91bEIemZJ4Hb1146UXajMnHuFBjAXgcc2qlElwdOkPYmoxX5DAB5Vuj7kXLHZS_zyJvtJIJW5TvWwSh7KsvZSZo8v7wuyFVXv_5K_8VHJ2WlBV9kFTvoahs8raGKhd9248APdBrou', 'android', '2021-12-01 16:29:46'),
(32, '#OCUSR_NDz1O', '', 'cbpIrMZiQ02Xx-IhETSo3B:APA91bFA2LRc78prae7x7fRpjnX_L6Q7oDL-8XiKJtGBNWe8MC9AJmHdBavBuKHslzAW6KENRQrmaZvHODC3g_XNU9VO0saiEe__LG9WUnK9eYORd_xioXXA6ULSpXaiRY3hesk95fOT', 'android', '2021-12-01 16:33:40'),
(33, '#OCUSR_aI0B9', '', 'fYxZfu6PSAiyn94o524R8h:APA91bF9iuthfsmaJ4qcaAagsrDnNWXedCoAU5E4a9uZc6wmVymXjmqE5cGtmWGdTLMPaybWhUkwmDCsqqkrbDlJnWSSt409y3752zFU-YPZPhsupArbk0EIvPH7ilLlT6A-0HBiS2L1', 'android', '2021-12-01 16:42:15'),
(34, '#OCUSR_wvfyt', '', 'cDp3ovBUQdyjntXrdEEf8W:APA91bGyamI98LrVvS72kGMYNOH5cQ2XYH0-iLo01quzStOYQXv2M4JHIJI39TtD7KdLl-u2ekTNfnxTteXBBb2YrODU-HRa9L105BprVI5H__mhTQyDTvzBiE_2Kv5Nd7QvjGqdARsD', 'android', '2021-12-01 16:42:50'),
(35, '#OCUSR_lwjdo', '', 'd6kJG26tQtGINvmY8MbU3J:APA91bEjqA6z78U6og8_gIaY6DOAzUyx8-Hl1rUnNBjBaI-RtNoNCBzTZF1g_MD0k1OO5r_cIFbPCDwqaBWqLR3egNO2W7e0p3kAenDmKWs3vtQX7Bo1iLXaKnqHuxjoAf4CsE-SeCej', 'android', '2021-12-01 17:03:56'),
(36, '#OCUSR_rZBjf', '', 'er1z8EYDQfqPcF1z02mCQx:APA91bH7R8HAMBA-xp8mfWC5c0EBltGet945_dQWyA3kM4KNabQSRtzlU1-7yHF0X0fG3jpg6V_0UUU6sLaQOQhF3tqcFGlvf9eaHj6jLo-KV1RMi1c161C_k_Odoz7BWj15LsLVYHoB', 'android', '2021-12-01 17:11:40'),
(37, '#OCUSR_8Sb4E', '', 'cGIwxplvRW6U3P7pQdvg4m:APA91bEDB_MLjM_ud2LGn9oEoi7jI6lmN9_d9fPi_qLSdd0SizYYPV_udQliJdcCrrhMj7XJJdkRBw0A-4So0SwsXKQ6EBPQipW9rhO_UAhzGPqulI3vump1P5XTow18uG00fx_s4E7A', 'android', '2021-12-01 19:05:28'),
(38, '#OCUSR_rCc4Q', '', 'efm8cojnQUmYPIE5SMbl14:APA91bHqq1EK8RvP7mbY-WPB-TmLUENTXT9b-3G6dcCLTKZZCyASoI1TQUnwY8de_hHZZ_e0oEJ2NM6zngZRP1YA3lfalQYQFRqOvX9v48ytQRw4ZvYNETeqIaV87i_hyNw2kRrmp_iC', 'android', '2021-12-01 19:06:54'),
(39, '#OCUSR_AlYVH', '', 'c8MGbpPJRQe3qppi4vLXqp:APA91bGoRgkMOh4X3SHRrj1nuN7e6BOGPothcpaAkRJ_k4GVzA7s3d2mI0FEyOXehTd94BRn3ni0jDMwF-4cqWyYmGyFECX95IPAgCFEHsm95Zc4RjKn3Ve_KPyqwZ1FdgcO5NEB6XKc', 'android', '2021-12-01 19:42:16'),
(40, '#OCUSR_frHXt', '', 'cw5a29ThR7GcjWEmB1Mr-q:APA91bER5oqFpTCbZmll94KigWFDUCOaPi78SeqI0zocflHW9ni8rlZagzMQ2fDw_WwF51m6gFKX6CdYbRN85QD-bYag3_-EwbougN-dcCYT1c8TXcoO6mTwlbn6xZKirSvyGERpason', 'android', '2021-12-01 19:44:40'),
(41, '#OCUSR_glrhb', '', 'cJKjHpyCSla03kA-V2Ti5y:APA91bFvr2ALV0kvljCYHWA8pTmNFl0gTZSzCD3ZLTwV6p_vMI90gsLUFy9ALfP1fzRffyk6Off_-AaBeeZA735xi_4QBBVJlNesHggmoafvEwEphvm3od0S-PXmJYuL1BhFiH6HhK__', 'android', '2021-12-01 19:48:10'),
(42, '#OCUSR_i7ptb', '', 'ffE1fk5yToybEkuGNKYaI-:APA91bGudb8TxINi-ulDDvWBMaKU0iHF6f59bgUNKSUrWbrVFrm5bNR3A82j2Pi1l0RdN32uHbRNDqWP1tacDUxgIGhT9R59FQff2GBbtHkGAmlH6MRIz8LC46QFK6KmsPSyOjol0bvH', 'android', '2021-12-01 20:13:57'),
(43, '#OCUSR_hvI3F', '', 'fQvRNOSjQOqzLkdFYPp0fr:APA91bGDV0oO_76mWunPnbX8br06QVrKMiYArOqLs7ojEkyeToGt4qUlL6H5dWsaKU8ErGpkr1XeZb9qhCtqWSLlYLdnD0V3Y2WtF7mdCkTlAqyyjHFC5vbcAOAz48qwJufdyXk_sOTq', 'android', '2021-12-01 20:24:59'),
(44, '#OCUSR_r1OWQ', '', 'fYntGXISTh-lrKwJ58DOFR:APA91bEFguAZtOI-M4w2SjSCRl4EZEMAaSq4jIYZOdYVGXNYoINNjtenxsQklRdDCeNRq-asNZuaGhtjpLQNUsA52SOKYiHAFSLWR0WJ--fyeuflrA_O2cQxkJxnO4WoB9G-LuGajbGi', 'android', '2021-12-01 20:34:51'),
(45, '#OCUSR_h8LBG', '', 'er7WeV5MQgyJz3hccRqBOU:APA91bFiyz4ua2hfPMEbknTMa024SqSUXvYMPkvxEk5OrSh9R6gjHdyI_FLM-GiDgv1LT0izM5HAs6W3DCadIvd-jZAfG-odHlg133SUjlI3wz3W2KAb79Tmf1UBhTe_Hzaknky3fQrh', 'android', '2021-12-24 22:34:04'),
(46, '#OCUSR_Jtata', '', 'czYG9j-GQsiSGNEoEW_Iv3:APA91bFsyJSVYy6ksHgoCJYy-7SZD9VMaIxrRIKim44CaEoPy5qfEhkVzIjUEFMLuKiCKAPtItTU13vETBuh_JL3vz1HzB6uFx-O6pSODYJDX9L47e1Bp_3svMWaUPG9-x_gOCjN00tX', 'android', '2021-12-01 20:42:21'),
(47, '#OCUSR_gFhy7', '', 'ddV2a0rQQ96Qb5itTGBYmu:APA91bEpRjYQMTaCZ5OxScbsuMdU0GpUtLe1tMSFUj9tIq8jQdxnWBTdstP9CdDwxvp_xPzvVw7LKvMXR_9m7PAx8UppNvP4meW7FX9GpDAKkzUPgG_vhdzhnQ05NVaHqK2QQZ9MzbdW', 'android', '2021-12-01 20:48:00'),
(48, '#OCUSR_w8GVC', '', 'e19EdtcqSqGNNFE0otTvKG:APA91bHBXko7JSeP1lBjprKkTB8a3C1yElSApzBXSAWtDyqcvIQT6r35AOsTGXEBcp0i7-o7OssZLZLganQ0pfHa0_isyslgMo8OlcIKt5V872PaEkaE5BYx6XFrHTXsXHD5lEtqfOTs', 'android', '2021-12-01 20:59:07'),
(49, '#OCUSR_o8Qc7', '', 'cKSW0DBpT0GQYM6vpEnS4A:APA91bE1oo89Oub_LrFGTGq-ySL-INIkDQbcpdSX3oEmyq96HiKgQmLrHHv4aY0Z5IXGs1OKWXKRuLeg2Lnq6oTG0gl5LjCa27VCQJK9bX2c1F_Z3bsjWqonaLvidLveLsI-sorgJKkg', 'android', '2021-12-01 20:51:44'),
(50, '#OCUSR_41uPf', '', 'f7qC2k2_TviXDo8yjca86Z:APA91bGQTEsOnfZtK-25l-80f0vpCgPsIgrrF90gnIU5eG-iFcVTKQWZhnKByB5CpPCPYNSg50f9j9MSo_F0Q888o2BIznZuv3NXpxhKByQnjoj9sL9bZlzmRqlHeIVXLjmq7amIp0HH', 'android', '2021-12-01 21:22:47'),
(51, '#OCUSR_A1cHj', '', 'cKkxyjUsTU6l9ArMcQQ23-:APA91bG_DZxSgLW-puxbiKpPAfPpJHFxonjHuSjVa_g47RO3YvlEdPNTiuGvG5fcW6qazb0Fi0n083XmpgpHL00pZLZy3Q8OYf2vjXBx9R6hsrLfvqS_d0aU7dGXtGkjU9AdjCwEmNTm', 'android', '2021-12-01 21:23:15'),
(52, '#OCUSR_47k45', '', 'eRE2q4zgTfWHSBU_BksrOF:APA91bGfz2U7_HuGfgLr6d4hpgaC7T4rlG1R20Km1dvlp9anUGIAakbp5fvI5ihHnh5PFBVXeF2c1DLnDw4Sqgb1dfySKFwfuOZAo4xfDcttLL8enQza6odicEeClHOb9jSDsrmxRhGB', 'android', '2021-12-01 22:00:32'),
(53, '#OCUSR_XSQiT', '', 'fanxKcZpSQ2EwEvzlia7t9:APA91bGOJgVBs1fEkrk4NzE8Eg2D4pwrH2fr2s_GjQXMm7S4R_Cu2vgDKr-KPfOLw_93_UPxbrHDn6CBQ7V_KfcPaXr6trhIn0GMg82T8H3XrW7H3FjLu0MYP2s85hTePd1oltfY6bWp', 'android', '2021-12-02 01:05:51'),
(54, '#OCUSR_QZOxm', '', 'fo8rtF17QY-TVLx780yP12:APA91bGvbHSLfa9LAH2_VB2TR8E81OVg0h2mNTKxXCmHWQOVFxwIqe_qW4EUgqJ4rHfspXAzInwszhwM4Meu_JGDkofawmzVmJ58risSHsOw7oZjiSrjNECQ1Tr8t3-_88fXbWn-8aVp', 'android', '2021-12-02 09:42:19'),
(55, '#OCUSR_H6jSh', '', 'cpR5fP90RTCV1VPleXP5WP:APA91bEaAEnNgeaMi66YMtzh2_zFS1j8lckUbEX3-NjLdE2LwP_1wuQLOrWZWoFGelz1iGDiAWC_JFU-GdntomVGQxqGkHsDL5Ulm-Iz6IDvoYckvRzUQpH_P20PpYOgFFQYDs7xTxo9', 'android', '2021-12-02 09:59:08'),
(56, '#OCUSR_PoWEy', '', 'dLWAU4KoRYOlc3MKaeVKt-:APA91bFXuUjM22hZKAVrCSX3v9f8zlTy7GgcjADF-BbBWDVu1Zamve7AJpTb1eFoGrjgXOdOjSz21PA6_puxxbE5su5i4Ebm1OvN-UC75--Mfd0NVtJn6jahA6nK-HgsN5CYH9UE7Q6n', 'android', '2021-12-02 10:11:25'),
(57, '#OCUSR_LYpTJ', '', 'dhlNUsn5Rzey4nl2lkSFO0:APA91bFmurje4RnDZbfZtvKE_Boy1oDPEcI30DqirvvEx95ML-AcJCZNPP8xfdGNpo6IZfCq-hlfm67Dn8UiDK0Nn8at5VqN6BNxoY4trGu_NtCF0p8wHmgM7eayRdUMQm1A1Ioftk-B', 'android', '2021-12-02 10:37:01'),
(58, '#OCUSR_0RrX1', '', 'clxufoLYQciDqVIHWAW4RG:APA91bH3A8tmarUycSUablm6ep_JKNgSaR8dkVxDMnV6uR-rpVVwjmRH17-wslmjIjfgPD2rbUNm0hEL0XtquoaDTv-imzpg7TgFpGAfepcKze2aBd7CN9UB1DzLIcvMInroGS9MyBjj', 'android', '2021-12-02 10:44:26'),
(59, '#OCUSR_FLLxg', '', 'djsOk8dsRqOR8N08J-xi9L:APA91bHhmaI2YyzVAtJUZsyVno6qPJtddnX5pfqokgyes2ruLNkmWPorSHcLl3ovujVqdOFYsBLvpGA6w7IQ7uIdu3YBbQ2xzstEwqPbKulxeqdaniNDaPjCtXwW3e0UvVyehSAvru47', 'android', '2021-12-02 11:26:04'),
(60, '#OCUSR_yYCLd', '', 'd2TmLzSgTBmArywmARKk8t:APA91bGQeh9aHXmLJkK3tMwA82ywLPr_3u5Ms3g0MhnOGCiOdcBnedR7jU3tifFRZzTR_Nszhc0LdPtDtmCKxdY31hFby1RpRaHObQ65_O6BN6oXjtjE3PG6IY6T0F_mjL4t98GU_aCQ', 'android', '2021-12-02 11:41:46'),
(61, '#OCUSR_CMbsJ', '', 'ehP_ec4SSO-1q5SJ0-5VJn:APA91bEqywlZOou0RDqEwLaXA60k6PNjvdbix5Fpm70uJGd4IsGtXyfU28eZ4NmAYk1UuzOluQc7O4ptGEVr0w_m7Yuw4IKMqc1RlrIr-MmlyGxQL4Mo4vuoajWwZI0hVQFpNPTzsAe6', 'android', '2021-12-02 12:10:52'),
(62, '#OCUSR_bPAlT', '', 'cDOGUrbvQ7qP0FokOtf-L0:APA91bEKw8mUSNDPNeM5WgI-ZymMerZ4WobotMlrgNRJgcfwh0CdWlgl2QjpQanluuKDn6uxe_7lxnPbIdlSX2hsxcP2lNhoFSRmFOxKUxvfbeBFEP6m5noUABhIN6IVKKm2EIOlwgS2', 'android', '2021-12-02 12:28:16'),
(63, '#OCUSR_p89Vg', '', 'fHDqdanWQyik5SHSmqSM-o:APA91bH8Ip_7HC3JJsDwBnxWW0gdrE0d-bTmH-EMG0xumB30l6D_rJkk50Iu2O8s_J06HEZ0mRFmrjJrsUfwLHo8iIv_5In66-HVMQgLnw9hkbhdeAcMKZHx1NxhRclOYrFiVkwcSKwc', 'android', '2021-12-02 12:42:22'),
(64, '#OCUSR_EQoch', '', 'efSuNsFXQE2I0ig87ALaSI:APA91bEUf1RaqOLeifR6c3_56oyb2HNorAC98oaCTsXBd-ceXrujclo5eKf_efvI3_HDCVFnxzg_Dtw13unbh7fwLaulEmGy0hWvXhOhAPPotrR7ED6xqWD7dOiq05kxTwgfiGAjBDUI', 'android', '2021-12-02 13:01:08'),
(65, '#OCUSR_l0j2V', '', 'dNIOg0lYTMiXJHoo29oVCd:APA91bE15cJrud53FjgsxaLnh8LJbT_PGm5DKTUvx_UKwHn8JCB8mqHx0u0BGuLNfvTmtUREsIVYSVXXWZzZI9Qa5OKU7VWEaV4sMPYfhUOSDDenQ1_9FL4c7mtqvOSYvEQtO76KTJQY', 'android', '2021-12-02 13:31:12'),
(66, '#OCUSR_Wy1bx', '', 'fyoSW-sLSUmZaRo0WHQkHw:APA91bEABFyxvry52WDrQt9LIV9clxvQfI1I9d5eFUT3nla5SbE7BFV4amE9lOrOpAJds46Hko1CQ-3I2VBX1sltNO8QhYbSjSN5hYWyK71xnpb3JNpKV8uoQmr-MkEPDfRA-YiPLjK2', 'android', '2021-12-02 13:37:52'),
(67, '#OCUSR_jsBGf', '', 'e_Q0lPQtQx6OVD9Em63rUy:APA91bEfGIkJ3JB2dTqC8RJGXY2FGCqdV1uVr1JDT77FAWMc8E5S4Wl_2bVU0W7Pax_TMP3CfEtAbN330DlFyBVx1RmZlfPqQEKzAmRxnIdv7WJFI-O16JKL90mlC_UOjkIg3OJYtZ9U', 'android', '2021-12-03 09:29:05'),
(68, '#OCUSR_cs9vY', '', 'ddbTwZM3TZOn5vG8gnBAxt:APA91bFxe1B9Q3ajZKlNuN1xP9paqRBI-BGHNSx6J7DNO66IVEgHgFjWzPxboNZbiixzeqaIAIAy5nnxEBG8XdXYlee0tLf9YF8bp2LxtUCIr2KfTQzU0ZsKekSYpWfoDPA0bYG4RJIx', 'android', '2021-12-02 13:51:25'),
(69, '#OCUSR_k7kbK', '', 'eKTCBdgGSiq62qVVA50Nfw:APA91bHd8I89K_NOEIGoMMdF0yiyaERN00d2kGJIm-ZvCAD3jl26QnssvcpxCrA_tezr5-5z39PLyaKmox-A8rUyFGT6AKu-CmfUUX9vNbLok375a5yfviGK0OJ6O_3utRSxvJlKRhPW', 'android', '2021-12-02 13:54:35'),
(70, '#OCUSR_fcPgS', '', 'dZCpMuOUQQqRIvIqSuNr_j:APA91bEsQLCUKkHY58ncaZuPyR487ePiV_pN3vtS_drLKnq7iVmbA4sYf5cmeCk5eOJQPaW5AK0pgvlN5jZ4Zb7jA_1r1SAs6A98pLj7vDzwi0zAQt5PjRza9mIcG7e_h15gqwe28AYM', 'android', '2021-12-02 14:18:33'),
(71, '#OCUSR_aTkNJ', '', 'fBQxRvc8QBeGtoffl0Myji:APA91bGB-AnZLIhn0Y0u0dLa8soJRg5nLPY4pjHiy2ShtX9Iuyf8vxUyFcNUVTehVXuCvhPbuu7VvdFDk9mxw-BTUtxfJRGXj2naH3tkTdHihR8hWWUXj1YM0m16xRSTqmwkktcTO5xd', 'android', '2021-12-02 14:27:40'),
(72, '#OCUSR_yU42P', '', 'cN6dok2lRFCKQeeaLazkW4:APA91bFku-FUOgSDJwCv1WwS3pNA6U0YchvJSpmrpjBtF3IV7ljX1LaHDUEc8m01w4E-5UAPIQvtGMMSfGrXS8MPQaj5Njzvqagst9WCheJtnEzcQ3UzQ5u_Ny626-rKW885oAKcR0-H', 'android', '2021-12-02 14:51:12'),
(73, '#OCUSR_BB231', '', 'fpbaUdFOSHCzo26qOkjrVy:APA91bF2748COWxMrM3jq5jj_PXsf5CMgoxJZULMXW9ppMBz80m2hcfeu16K2C9NdFHZmmr5pZrKk6PpH1J3x91zmDkVa8bW2FWPIIh13KsEMI6RKfQQ395Z0pqf9gl2ZhSapspHsel0', 'android', '2021-12-02 14:54:54'),
(74, '#OCUSR_WSHaY', '', 'e4gzLdoZTyyzmzWOXMNTKt:APA91bG0qtsg1FTd8MMcj99pzq5NAupiPSAcPV2LbLYKhFPAzll26VYd2eBCxGP3DU-GOqVYe8gUJweJfiJ3qSRynL97zD8qVNu-lumO77t9hf33ApmyZuvydapH-Fe0-4TM347Q4NZU', 'android', '2021-12-02 14:56:55'),
(75, '#OCUSR_TJcm4', '', 'dzJMEfrWQaGhRpXW7ma8WC:APA91bEenHnUX9xlXx4W6AVO4xuHXIWFNhPA3GaBBEzbGq8OsM_1zlNkh4Rd66EHaqiVUeg9BclqG7l_mId-a6ferV-RafLJJvE9euDT_E04rGm20vaSGDWqAXLwyoGNv5mOf0x32Y34', 'android', '2021-12-02 17:15:53'),
(76, '#OCUSR_ayU9i', '', 'feyEGAr3ShqXfrsT2FQhV0:APA91bGArZ1R7O_JDMd729pg3D0PDLOe7TYxzNbGL5Pti8ur6fcvBRX10Yvy1_PcIOEbEHiPw3kUp7lXdvoozajNrKJ3bkdeTCi9EyI-6BBXKgycYq_Li1u34nKAfmBZGpmUC2voac1o', 'android', '2021-12-02 20:52:01'),
(77, '#OCUSR_pHn61', '', 'eqWqp9bCQzqxxgtcRaOWEe:APA91bG9TMw8hb_MSeWrkLPgl7N55SdEhy_b-KxgPvckn2o1CF57bd7geU7uDgm82YPvgCV_wQKAde89iHVVNuWysgWabyGu5Hf3zlMjWfjzvjcniHooRkwJzoJH0MyngLeUAOySqLxc', 'android', '2021-12-02 20:59:54'),
(78, '#OCUSR_YZSot', '', 'dx2U72lOTuON0dciqd_BZG:APA91bGFSFuRtGGxZ4ZfHL91jmC4bSt-82NLpVkisaIfJkWWrbIh88aeGig50DzP8nXLBAsFW03ys6pGz92aIwPXm5na1FcEifmVBsJUwe6WUgSn_y-kHLEAeJZ4qAs3uZNTiqh3eMwL', 'android', '2021-12-02 22:14:53'),
(79, '#OCUSR_zDojW', '', 'dvKwtmswTJSKD8KqEFg508:APA91bE4SL1ehPeBGonMdc9Z-SJsQYso51hyKrzRknFJdUBSN96JyzAzdH13zb8ejUr18glkoODwiAZlWTQc77cWN1mNXufvrD67ol1JV2Go8veoLf-K4ChWOKESTVkJOOUjVoo1nwXr', 'android', '2021-12-02 22:52:17'),
(80, '#OCUSR_l8Phw', '', 'cyjBV7AFTZGslWwrHXOXnN:APA91bGNyHbk2jjD5nYho-rWzr4oTFr6czel9XJNtBnVGXw4hf6fDNkuMdMrLGLvgUi3Vitiszh2nQqITJt2k6OTvOEhfGlVR6hHrJ_FkTRLw0Pgc1IuYqD0bama43gfXSDTjV8zJ1Qc', 'android', '2021-12-03 00:45:32'),
(81, '#OCUSR_Ccl1m', '', 'c-kDPmmaSUioy939mOEq51:APA91bGytLYcha4yXvfheq7M9Smw_OAtW2RM-Ts94PBD9FaC_2KDTTWD5KVzzV4tDOVDP1jnoUS5jloNCXpnGrK3AQdo-58hzN8JHBuA1xXTQP7eYYQgRslkG0PGTYcaCs2GSuBGuDD6', 'android', '2021-12-03 07:21:16'),
(82, '#OCUSR_zEfeK', '', 'cFDaa_fIR8ml8fmkqCdqMU:APA91bHglu9Pdn95nv5L6nNQlzV-USgYL4MEVLkUoUjPxXyZeQp2JfAVU25ytvR2q0-qtO6eShxh99JFh3AhfrQ3cpyiE7JzUM-cmpk2wrJrxTNxBZ4N7d8s1g63aJWBxWLqAIzJwtJv', 'android', '2021-12-03 07:57:17'),
(83, '#OCUSR_IREoS', '', 'emBngbWIQT29ySpUv44ckP:APA91bEJU0xg2eQeH5ipIjlr2n_LNmwb3xuU3z-bujUz_5-U4KPnR0-v8aJ4mLdZfjxPQS9t2WbXKtA4-y8QIHcdes-i3z18ABciDoWZtD926SFJdDJEzZjEdeJq_a0L6Fxt34GEsV9l', 'android', '2021-12-03 15:10:21'),
(84, '#OCUSR_eqYrK', '', 'fOUZH0ZkQeaC8xs2-LRHLA:APA91bEP-6LU9l3ShuRv5M-aLGwq6inphSJHGub4j_VTdXE4Ee_TI_kSK9h8Q6Jgyw70v66Yg0p5dvHXKXqZu-SJ4wdiDoiabdgx_QCNFB-N6NMX0nKuF8WV1OncsXuttSZORNfgQteT', 'android', '2021-12-15 23:51:38'),
(85, '#OCUSR_a3y7R', '', 'd-XH79s0QDSPlDSfNVsdPB:APA91bE0HmMSK1SIKPTQpw2xJoCo1VjDCvSm_IeHNKWp3wYQhLQUE-jmQfA37lY85Zf-Efj8Vo_v3ZQ4tnrEZS_aulBkpvQUlIebYXRXaVg4djHM_0MR6hD3dOSnFXvuwEt9cuQzzoRH', 'android', '2021-12-03 21:32:33'),
(86, '#OCUSR_Ilpjz', '', 'e-d6WATTQ76Pl2PEGeZz9M:APA91bEChuvsGbiPDYtQmAfmpv6h32IiIxuLN3v9eJWZbHU9YgiOoMR6nHKj0EDxuRoug5q2Eqn3it_4_NCdG1-PdEZmQdeS7fJAmtXBvh-FJn1pXJ0a5ILgCyCUW8h9U80MhTcLRdJz', 'android', '2021-12-04 07:29:22'),
(87, '#OCUSR_0crHb', '', 'fDZPRtFKTMKsU-xVM38E98:APA91bEY1iD_J7cmOBe29ZdjuBHKpW6x7n7SwCsjK84sIkafjEkrH-jh7hGFWjO9Nka3cWL4sPx3r8X4j_8VxN8vxEaicDdeMji5mYCJ-Q5R-Yez-PmFZG8TQSb_YvPHbFKSr6glanxs', 'android', '2021-12-04 08:57:18'),
(88, '#OCUSR_c0NFg', '', 'e6jTammrT7a-7HJWWm7VwT:APA91bHyqmGX8CJV74GoUFY3MXB4N_vwy2lRH9RS-_r4IfA1T9PBFFCCMAbMFlryqEcyXTwxbVauAHvAC0CQM3VISqLdv2PzxpAUf4yhNuZxTOquz33wluQ4A-g38d_VmbrPl3frFFpr', 'android', '2021-12-04 09:07:29'),
(89, '#OCUSR_KRtpg', '', 'cO7DwaKWQQC_498FDZvMb3:APA91bF8eFx2kiVkeDohNjHUHMlCphGo8pVwW5D3DjaTcCM0AWf_hE7kgcSZNRj1H8wjOSO6a-WPMQKQ0xGI0UvRksHTdJDDw1ZLStyDL-0SGIZNWaqa5r8T-BELthmosZdKqsLYeYRl', 'android', '2021-12-04 09:33:44'),
(90, '#OCUSR_EpVQm', '', 'e_FRm6vOSRKf-hlUF3uqRe:APA91bEn3f2YFe4_EzGkYrz4L8AQ4YOplC3zL2A33LpXNdnTzT5PyZulvqAO01Wumpl2AsQqgCgCLUmH0KoWUSGjy-5dEMqFWfn4PMzHF0zOe58kp6iCPqpLAr_HJs5tRwKt4L6l6V7m', 'android', '2021-12-04 10:12:17'),
(91, '#OCUSR_D3MQA', '', 'c04DUywBSey_3o_hjH4agP:APA91bE6rtgJtqbuoFS4Voke-2Bxmawb-0HJq7HJDluYycnxmLm9htob8mMa2siARUZIsfYJZB_CGtM9fPwFP7f1IH5OxrhnyF-Uljax4JX6SrL3vdnd367qtUKsqvfgiHEdmJuhFxP1', 'android', '2021-12-04 10:35:12'),
(92, '#OCUSR_WqmUz', '', 'f5PvHXJ_QZCTrj9VVocA5S:APA91bGLvQ88MHCjKnJiNGMqME4ro1wQy9LDac4rASjpAF4Bwd3UcS1fkEZ-h9AlHoPRGdjRdSueSkjrYMrKlmO-dJ6tYc-I4ZQZMeoiA3CvS1aHc2N61oeSnwEceJ07MZn0J5yeC3hL', 'android', '2021-12-04 10:39:28'),
(93, '#OCUSR_IoPrG', '', 'eG0w-oKhT_CAsDnqWT9YuY:APA91bFOdzGeTBt-3J5YWJV8CogZbASiq852k_GmZI85ITB245PoqUYinZhHhyN-HQ_d5VcQ7k1ZHWFeE2pa_52K0cTGtJtF6-zW36f5-YuMwOCK34933YViv02ZaqtTrvItZrYr7W96', 'android', '2021-12-04 21:03:14'),
(94, '#OCUSR_MuZY4', '', 'd9HmF3ZuREex-TiPZci811:APA91bE8lC4wjzL42OMgXR_xgftiWfhpzb3YPOhuCn6wTFl7QIIxgKcn3rQ39ziKGqnabYr7hPU-OAFmzO_HNeic5Ngiy_E1gEbPznDaa71nxRnvYkbqRjvTnntuiUxAhYiQ3FFmu8jf', 'android', '2021-12-04 21:52:16'),
(95, '#OCUSR_OC0bU', '', 'decCbuG6RxiWFYiG8crTpe:APA91bHlJYYa6szc-vS8QbV_h4Dpq-OKVSM6_ZjCreU_CURf8BjGqhkTSO47ZEVUt4EbjMhAd5nefKsKPSA2WbMd-TXN_BfVRXwjWG_kc4YI3_LZMUEMdGkYI6w5xtq57Y9ddugxF0Tu', 'android', '2021-12-27 21:29:58'),
(96, '#OCUSR_x7slY', '', 'cIHmDJsTSqWLpmlKSphX-n:APA91bFIq82-HemeRmYC1lF9i1ClimrV1-WABpe690xIOjKpBiPDJF9bb9D0Dpu50Hwo7EEwgI3rpCeUL-uwv-SUUtfz9tz2sbzzhhCkdUc4Nry5pDl8_-_PN6AEQFZKlPNgcH0pf-1T', 'android', '2021-12-05 12:26:02'),
(97, '#OCUSR_aohNh', '', 'eb__NCPnTGKNdnOXUrzXVa:APA91bFAAutgTspGpbBkYuPKZv8Ma2qjRNIgOZLLH5Lw2QP81vpFYhA_4lUibYyIKp0U_-7AqqA7W1XpadVGW0OuYoVEu7G6tHuUpVl9vA7eXWNauL_X5UX1JdETeH0vKyA0_VmLB05Z', 'android', '2021-12-05 12:38:01'),
(98, '#OCUSR_wvzwA', '', 'eui76rMtSQ-JxvL44cAt1x:APA91bEuJYK1UMl7DJwJ5dRhGD5n93FR5C8CdKJJebJhKJDo5JwkXLZ1TsiqlL39VFzd60FQbTd5yzsoXpFwr2JGS6mJPaFF93xyMGVR-rIwBPR2X1Iadbe3Wtkrko-SZCtdK-4EfU8m', 'android', '2021-12-05 13:13:29'),
(99, '#OCUSR_npwah', '', 'euYtuKAkSean8-zxNoDK2s:APA91bHXR76olALkw8pLNV-zWe2Bk1WHMrb1hSIQqC7pYAdWMPIx3Ssd8MU5TJw4us0VlpBuV7Jd9oX9zUIUVXkJiBzn9_UsqyGbTIJgarZtuybT41JvosOfZMR9U2evglTcplA7eyGE', 'android', '2021-12-05 13:39:59'),
(100, '#OCUSR_d40rj', '', 'fUL0EFvMTaGGLv3UxkOBP0:APA91bEwn5oXUy9AmaplNWrzkv8cVfheHqLY9zlL2BcWKMDXi9aWnXQ3cI_jcEBpmD4MRmeu180d2uv0krwDrYQrv2y8-znXl76MeOm2Qmwn3qJw32F9zJjn74sMQNmk85AHUjdsU8zj', 'android', '2021-12-05 19:52:43'),
(101, '#OCUSR_lww5n', '', 'cRQgn7SSTM2Y3CGczY-F-S:APA91bE08xkn8FlG4BBE669I3dYXbNRuJZxg1NDxUSBoWKWWMN4rh6RNOI2nR9Z-mfNWGue2unxA9R9adYpFEg3VdHUvat69Kfnhb_9pmBlo63cOBSs1PYmjLKDtP043RfiN1DvXMB9o', 'android', '2021-12-05 19:55:37'),
(102, '#OCUSR_fYeO6', '', 'cKipKNswQDaBbVhj6QR0fm:APA91bHpTyrxNVKlEKyugpASd5G-5J3DScauEKkJUNAu8ZVlFki7pkP2TqeXIRsTlMQp955rAOEy0KOcrxEoT1C7AbcNzCY0E-qRm3w3uzbt5YrN7NX_eXsEBVMMGFtNhCLX4RaDHQeY', 'android', '2021-12-05 19:55:47'),
(103, '#OCUSR_h5C5P', '', 'dsE7DJrYQkGwTnrLkEVNJX:APA91bEPZnXuQTmdQ-YJH7zx5ZgLnp1oZouqjUDf9jZxI856mAmqYCf2YN-WDPeABrUaXaYajdXaLB7Mn6PkiF6qUrP9j5inj9A3-HIHYCFtLJVQkLSRvZpgCenqQYP9BnzmbOKCkAq-', 'android', '2021-12-06 18:03:16'),
(104, '#OCUSR_6hyO8', '', 'f_9EK_EjSmqfS8JpAmBQz7:APA91bEtkH0BElb1NUj_12cG6yhsVWQacNpCIwv2ONFA4r33FtcvcokExpK6ZTknUQcD_B0A9cy59oT-Td5r2MYa6W_wDSpFxZIBlSlcjfXE3noGY6bsaVVFfol-hWGfAoBD4ZBe5Ikf', 'android', '2021-12-06 19:27:19'),
(105, '#OCUSR_KPbWy', '', 'fq4Dm2nxR3Sz8wjrlfeYv4:APA91bGlvxv7pZgetoVXbP_yJYC6L-iXNHy1Cv2nVVQYVC5CZXrTZMuA8Xhkshqbxxlvf9LlEwoJUfHnM8rB1DJN5QuCqeywNc1i3cQrF1gPs19L2lGff0hs2I23hpKjMsFu7fppwAmu', 'android', '2021-12-06 20:45:45'),
(106, '#OCUSR_uM2nY', '', 'deZrogxtS221g-NBXU9CD9:APA91bED4dJKPrgRBa51jtWOdmDxJFyeL4c1yfYOUN0IPIvKm9FRLsh2zfrCH442mJ5XhgVN9APECkGz67CIjVqHUIERKnowyTxDZ2ijr-ERWz7dcSVW-aESxjDGRD05wn3AjfeerBBM', 'android', '2021-12-06 21:20:45'),
(107, '#OCUSR_SYQvO', '', 'dyNvPfIaSESMBRJ5M80dfS:APA91bGl9l6mFChUAnzOIIj4dElhjgJz6GU8ieDxUJEdijlZmNaOffmi-Fk9qk-FkcdaQKRw7sv_U5M9SJe9jOqM7t8zmoUGXgw5myAovhywCR2nP2eUanjVs___gPdoTR5xVnEZKCrj', 'android', '2021-12-06 21:23:50'),
(108, '#OCUSR_2B9Io', '', 'ejQj-285RryO0fmhPnFULy:APA91bHk_DUXBLbgq48NROPhKI3IiXg-GwjPGEg7LJglTBjgqUQIESuytXvmV5RTY9zhMpNrjLVAh-xl3szBKp0K530S1XNU1sq1P4emXQ6qkKA8bBKSzaFfmAWAbO-KXkDGOo2Zwm9T', 'android', '2021-12-06 21:44:26'),
(109, '#OCUSR_T136u', '', 'dK5R21ajSe-ql7de60Ouny:APA91bGBA9LZktYC1HESPzFPrRw8Ri4RXva3DUJ-OKVIPP2og4Z2WDAjX56jyKcmxpAparhuqFncT8XZyLRVCUyNr6bVY2XdQkjKe_cD7kx3MnOqB73HURwWz7Ci3y_AbLVnatZMAGPU', 'android', '2021-12-07 06:44:44'),
(110, '#OCUSR_6NcvG', '', 'cXQXoIWHQPiq8rPAROCVhg:APA91bF1lfWnkyR1LG_FkNtjOl1ktCZTRCKLDXRxeFg_r-Ku01-CGfcLbLX79ttrfllUTWz8j9hRA6h5ZBKOlaSJjbwOhJiWUXcoc_zYD-44gvTImwhw0xyRcfS63GAHQ30PIcOITwBe', 'android', '2021-12-07 06:59:32'),
(111, '#OCUSR_EL2i4', '', 'cRPkv7WkS5-SsuiFgtL76V:APA91bE6fWTGTLvmds52jDvWskqaLAWaFu-MLvPZZg32u3WxtKK20vm4tWK9-br_C0PyaCnqmIhBxveaNy9iyX600bsUj4xt_gENYIkm0CHM8FX3VGPK4o57aCDEPSzB_5MM4Wg021W9', 'android', '2021-12-07 07:31:48'),
(112, '#OCUSR_T9gzI', '', 'd8l2S7xmQjmHFmb7iNzvcT:APA91bEBZhmdTcdmn5k7GkZV5ni3c9Lcg7jD8T0Xb0ky7M3_Mn1w-izMUPBGwD7UL9qapcPZjyIrJOOp2KUfLo08bouD3_fKDeProxRSNrfpzdAoyeAK31qNnKNiOKa3zPWb1Ae044hj', 'android', '2021-12-07 09:57:19'),
(113, '#OCUSR_dRIdm', '', 'cnadLDbGTlKVAELC--olQA:APA91bGKPB9ujawedwHDofBIPlipK8MTIhZDreEGJzWShGgxOU_7EZrQ2W8bkoeudVrZGlEisnXnenzTV-Eik4H27QUvl796Vj98TNBWWuzPVUANEc12jbRIOBXrJWsmStu2wybnuGs8', 'android', '2021-12-07 11:29:06'),
(114, '#OCUSR_xcVmK', '', 'dQfgbyCoSTSlaY508JZx8I:APA91bF0AkCTcPtK3LzooRygFSxe8Fmrxj8wI2MGqdlA-h4FKaJ6gi-wc0BumHdCQE2K8xF1hlcTL33BL6o-wjDPPTGhhSwXGt6xUq9WaELkx3nrf3TphaJCsRRg0x2bzQF9LowRjhlT', 'android', '2021-12-07 11:47:05'),
(115, '#OCUSR_wgsNy', '', 'fQtlCxrKRQadfkXFwzYN8C:APA91bEfqjcCLCeMIx1CTr9dLgtb7r03MXd9sa2N5oOlLioTMutfWIXp5P_EYcMaJjSrhzR6RjPi5IMA2i2Lckle54VL1fdGZoRy3-0GIju43hX04q_Ku7HLaUpXIkJsP8OEmrK9Dof8', 'android', '2021-12-07 13:47:11'),
(116, '#OCUSR_5gQbs', '', 'duZ808gzTyun6Pf2-7jmM2:APA91bGcQr0qdvsG3877bdQK2Y2aLFqU0PyIiq7ONnqhVb68qskbN8kSqL-OuQ1OBvq0ueSi99m6gdhctt7klWelV33vZhzPM4fm_XHVriQ2R8iyxKmm9RVAIzoFFrkv-jlDS0Lop9hQ', 'android', '2021-12-07 13:47:20'),
(117, '#OCUSR_9dqiX', '', 'eBL2F_f5RxyMG94sqO7JEn:APA91bEGIuo6074-5sASiQqhIxOquqFK9DRdKLvlE01rMPDFF6LMoTr_C94NtRZ2LduRPrsvFqghHgatSGZEoXMR7JWQ8sDhwfpMh4RVQiQQ8DwAId8VjQrWFhF5Urxi38Ay9UyemttR', 'android', '2021-12-07 14:05:52'),
(118, '#OCUSR_zdpyB', '', 'er7WeV5MQgyJz3hccRqBOU:APA91bFiyz4ua2hfPMEbknTMa024SqSUXvYMPkvxEk5OrSh9R6gjHdyI_FLM-GiDgv1LT0izM5HAs6W3DCadIvd-jZAfG-odHlg133SUjlI3wz3W2KAb79Tmf1UBhTe_Hzaknky3fQrh', 'android', '2021-12-27 20:34:09'),
(119, '#OCUSR_YNYoO', '', 'ci9_zYozTY6ccX0Kmym8uD:APA91bFxoS8SR0eJxW1S3JfER1faBgdIviRh_ZjeD0xoLj0IeEEvxd40fkyMcl1-FBnxLyvKeFL9wBY1ZWl7VqLp5ibizkGUQSKObwzUx-_Edyjx5gatugXjmZ7cfrcmbB3KnGC5G8_1', 'android', '2021-12-07 16:08:22'),
(120, '#OCUSR_hEeed', '', 'ehitn9UtQ62InPlBWaO3DC:APA91bFIOqa1ZzQ4IK00iuRo1As9uI-1k6gxDK38IujoXHnJNTHN4DETFaCSNqhRrF6swU47AulKpdSaZSmtfXI8ykDp6btGBp-Ql1wHOb9exMs7VBrVDk59SrU54-_zLYyK6hpldBt2', 'android', '2021-12-07 16:45:11'),
(121, '#OCUSR_bFJyv', '', 'dCK559asQneXJyhwc5oF93:APA91bHC_8fnUlBTI4FubUN-q3INqI_NxVHRSjmeW4723Voldjo8vAqIrnrg1_pl-p1RFzJ-neLFSXyon6PC91QSAtSi7WtZOGPolnvoZ8laE-uispG-TmoQ6eS_o385P6QRC4VSosRn', 'android', '2021-12-07 18:36:59'),
(122, '#OCUSR_JrCpq', '', 'dXYXs-bNSrOBA_JElWe0Na:APA91bE8GmZpwFheRYyvJ9HNM1iw6JFBpNXx9JJ4ue1K9k3EjlQJUSncyQM2dXThJ6wH11cPwucdRw3SMd3tG3bWwE90niFC7h8qlIYnvlZEmsluNvBpbpOgOLjwP3cs3pvYr__utwEG', 'android', '2021-12-07 18:44:24'),
(123, '#OCUSR_kYXr2', '', 'cd8wZIXrQGmxDXbK-KXD9a:APA91bEO_pgqtJEzQonWFN4eXWL95cxH67VfdeYZKyXaa8Q0am8YtwlUm0gMANPw7XhwNn1omEtUjRnJkLgUJ8RhgUu7H1HINyC6ro5x8dgn5mB1HhNY0hhvRDs7xAF5QxDcdE39PYWL', 'android', '2021-12-07 20:29:50'),
(124, '#OCUSR_Knanh', '', 'fbUk9wfCSGSjPioJVaS_T2:APA91bFn_G6BNtRgJEqQzTlvkmTeoxtCzBvpBNFxLiZSBmg_U2aHGvrunhGGLvD2giSg6FI_MZ12404eNd9l6xN8MizJs2MKHgrgJo5qILBvHM1sMSkDDoUeyRsbJakEKDVkLCVlRoFh', 'android', '2021-12-07 21:34:57'),
(125, '#OCUSR_aye1X', '', 'fXXPwm7TTz6bJ96lmxuibw:APA91bGIF8gTg5CNL72ujniVYsWQ1TwIJh_VcGsKhgMDrJ1a7ebly87FLrcHk83Bs2xeZKmdkIc4gl3nf7gdeI4ONflBrFk-iYI7xS23_Xos82q7ye9qzmZfMX-r__ny9y2e6kbL1Luy', 'android', '2021-12-07 21:36:37'),
(126, '#OCUSR_fOSlj', '', 'doCl-vJVRzqGVLRLSQY_my:APA91bFjUpolcz3hGD_4W7fwb4FkgLAedzAUmXStdFA_JlKagMROgIk08zj6FUMeY7vLQqqKqWbxRob0H48mmdFoFW6VmZZEshc8Gm-K-jPwfekmOTe825Txdzp7Aq0gKZFyqbbb3arR', 'android', '2021-12-07 22:16:31'),
(127, '#OCUSR_TTyEJ', '', 'eRth9e49QqqDPhFb6WXciP:APA91bE5vlZkml0-972chfuOn_b_D9PFChQ-oRtVIiCd4hUvvNGEobTo48ESADFMXThgD7ru-PbJUl-Qq99D2GECu1ZBxXsxZKcgiT1R1qfHlIupWIS0Ua4WdvE9cNYz0nr0G-zksJ1X', 'android', '2021-12-08 06:42:39'),
(128, '#OCUSR_uohhI', '', 'dMAO-RkoQTmhb_-s4lgwHw:APA91bHdCtZpe2IOUJMZsISVT_0ymhUWDQ2MIlgK4J3cEH5MYkkj0DSlj3hS1zwTEfhJ2odyTOppcwHNKizLmQKuP3JpdWakTpvh3llbB0pigCe_j5d05FL_qxc6DWx6fWWaghyRr111', 'android', '2021-12-08 10:56:09'),
(129, '#OCUSR_8Xkdz', '', 'fvY8rMg2TNetKDnvHJTJpg:APA91bHU2T2fECZusGOxnW2wEH_KpJqN0YwCYj0d1jhX-62tWkgiBl9Bax55y534mi2oRdQmCcIsbs72DzGLSyYtcir8WDCqx37zSE_EpaiQcU3pB6D0-s1jjVQKsspPwlBImQd29e80', 'android', '2021-12-08 17:30:36'),
(130, '#OCUSR_z4bjb', '', 'dClrFE09ReWWvaitjAcQa1:APA91bF0MJj2jFNIyZXygprC_vwWtdoM9TAixWoGcm60HsGWfFs-5eXECsrJwYN28rSg5olVn0tFpLX2bmcD0TDxH_-uYWh7NCK9w1Xosoyc0c-pAvUUsee9gComfmgIxswPM5AwjhDQ', 'android', '2021-12-08 17:55:23'),
(131, '#OCUSR_ropH0', '', 'dx2FF3s7RA-9u9VCkzc25L:APA91bHPf0Xhn1snB-14U5TkXECk4HeBhEa6EynwmMPYuTDyY_xq6ZJ36TXU1ahGejX6lqed2LE3cr2IvMrKqzI7n8VitEmrduCKxWUzGkc28_lECj47iaigdruqVXJ0TJF_hJU6DEmA', 'android', '2021-12-08 21:48:35'),
(132, '#OCUSR_npDLo', '', 'eCHnnITtRoW1qIvBEDQu9u:APA91bGS-76N_U26g_B5Mi-co4_PLvHBVVCqNJRfrWBHX-9TlswV3tuvpjgBMnVqUGzkpUCZTTvzUSrZLKIHVpyAeNoDvQkdUu1IWWZooylxX7cqAKgmqA_YyZ2e2FkSG7ekIK2Tp6rU', 'android', '2021-12-16 10:57:04'),
(133, '#OCUSR_G9pzm', '', 'eEIPDP1GSLCslgEJPPSKWi:APA91bFFN0ZU1O9nebJ2kltifmKpdoaAS-TddJXssUOhXYnEmMz07beSCpN7XIe6oYDnGzYnPtInylDODQHLVraJAZpZbIJHwQxb9r-B7P8rXAOzKVMt53kIJjATMMYMlKuybe83EeAP', 'android', '2021-12-09 12:04:42'),
(134, '#OCUSR_cBjCD', '', 'e7CNvg7iQZaNmRWnqGmosb:APA91bElXg9BIu1raexYw_hCfaEYmFFVND2MIyVi1ti122ilemkXHeH757UFvz0zqwVyu0MyYEjpMUyhwG5UcxPlFQMNsddCvR4uVFkThUBJAsxIuWcOifUhdokdMWfyKyJuMijh_GYw', 'android', '2021-12-09 13:31:07'),
(135, '#OCUSR_WadMH', '', 'dHLRq7zgQlO-PBvWi_fwxQ:APA91bGGTZSV0yt5zzlJW6oPamQ6JwTpzaxkiHGSSCC3mbIsSwOIP--ALlR4SIgs76Z3sgIJlBJDZNHfFMLBYdSRFCMmb6i_ydwlPDutG8os2sehCDGUQcJK71xNf7TV4kHOxldnae7i', 'android', '2021-12-09 14:34:01'),
(136, '#OCUSR_oeqjk', '', 'cRS6o2SMRuKo25MyuOuM8S:APA91bH7xrU0qjyIxD-oNJxpCcla10y_ztoE4WXLexvt2NJrEN9HNbnIFbRZvSZk5AfrbqXbHZTruN14jcYMbcvQZ1lTopLUjxmW-6d3HMIZARsANghGERUeQvaXoqQqogunUStbWJv5', 'android', '2021-12-09 16:54:32'),
(137, '#OCUSR_CMO4E', '', 'cXB-fjmnS1ycFBKyxhB1CG:APA91bEE2Srq2_3oMaTEISha4hYSK7nUEobcuDB5HqK9KTKRM_Wb0Iih5h0CCp8Wng1mqyL-T6cwhFplBXObDc-e-y8iQcQjjhiG6CzUH9aC0-GnCSt0x9YscOhQ4MtEGueRWjjGs4g7', 'android', '2021-12-09 17:24:46'),
(138, '#OCUSR_kik6l', '', 'fpEhH3xLT0q-HjCNzI05xb:APA91bF02e93SLhBzYzfgcztsT0-62mDFqjUtjCPxLDsF1-cfoL5xmFta-LLFRvULvByXouoZTNxjxgV1Bkzlx5QzUdmITAdghHT-0Xldy2S8u2bCil-O0l8ekWwWlCBNM-CSppiSu7j', 'android', '2021-12-09 19:26:57'),
(139, '#OCUSR_VUwkb', '', 'fbYnBDcbTt-PmhVez6-Uq1:APA91bFYZtQc_TfLVqNPnVld60CQgiaL0wwqedfZq2-ZAKlt3joYAnaVYNAXATKa_k6Gm3oWo76bYTyrao_qzTOy3Fut8rFrJicHsPuYhOkl3MBSFuQzHvWInfNB-HIluRe2fnN-8oL-', 'android', '2021-12-09 19:48:37'),
(140, '#OCUSR_rjim8', '', 'dYUkl-W5QV-IIRnw2dKYMr:APA91bEIWF_ZH1j9G33jFd3JRfj55DDy-oK1pezYCsl6JBapw414nq6JPRMou83xvI6oek44EsWAWvO0xy8ehq5xzKZHoTFuLLklqd6yjAtk58WkFgY6lL01eCaOK6oF9IOXl7I0yMFL', 'android', '2021-12-09 19:55:55'),
(141, '#OCUSR_KSlTs', '', 'd_RyGmgMQFuCTKo9Ugi-Mi:APA91bHt3Zw7bQyqp0xzUEbyI3oZ49dxjguQT6uGnOHx0YeHbOm1QBgoWc8mw7m3l3jZSMF7amspYL48O7ftqt8VjygUMVQHq1tlY45CoC3QTVxIg02O-VbsueT3xQareMD_2sZpmJFQ', 'android', '2021-12-09 20:01:48'),
(142, '#OCUSR_dFwWI', '', 'd0JbrPbKTZKE-b1rVno8zx:APA91bFIB7Rgk3Gd8YdIIZvVdM3qjIOIBCJPrHDZVvIv7dVBolg1yYCatQObkaTleTckAUrpzzK9lrrv4yqxdCxz4xV5uoQf4Gf32TAaAPEDe6vLrr2IjdRMKJGUEk_4ppPbCZrcczoj', 'android', '2021-12-09 21:50:47'),
(143, '#OCUSR_Tge1p', '', 'e2HaHV06TaSd6mIB2O3XFQ:APA91bHFFs8n57F3T_MIrChdA8XnLPOahlWO8-_UwKtUdCKiq0guDeXh-l2wsg73rYvQW8Y7VGrkfpKfFyACucV16ZU0zGzGAIqwQlPZIPncOJk5btWvapk05TH2_uMacOMYyRfZm0cO', 'android', '2021-12-09 23:39:23'),
(144, '#OCUSR_JoEVF', '', 'eX7YQf0QRT2NSwXp6otmUl:APA91bFMGZ2h3a61K86tMVmRmxFwDbzaa4ErsqzXUHsdfFCQkAXhuP5o6OBU4RrDhz9lYaw3uq8C9vLvepj1YSZdXADOItpzLqgxWvgvPCF6RyRRvpYQQlw_4gEAViojdqZ9lUBxEbr7', 'android', '2021-12-10 09:43:53'),
(145, '#OCUSR_sVkaP', '', 'cVxKOK4FS6KUjtE7u7_Hkp:APA91bErbNSSyH8e2p7ROMmx2vivvNoPExFr8NBpkA0zJbCa0SHevoZ5TUab4JNMNP87vweS0dVC-2YaUAQMjuyRM1uZDpxwl8f56_LcKGkHuInyZ_dsS75PMH2HIDFM5-3g1FMLj50q', 'android', '2021-12-10 14:15:40'),
(146, '#OCUSR_6Cs4h', '', 'ec5O-f13TtSYDIg4XYzXw5:APA91bF2ypVD0Cm1vawk86HZC4VaNRBGn9VXMEOKNmJ_-kSkfG-Qv_G-cWT-uJjvNl_qnUw7qgwjxFJ6MP5egtL7qXSyNYPCm8srV2pBuhx7574UMpU1sfmnVYi8lq3nfl-jzXpQV2Im', 'android', '2021-12-10 23:37:49'),
(147, '#OCUSR_D7PWa', '', 'da2HX0zrQae9ycUbiRGzVU:APA91bHn8uoNKSWas_FOroZRCO1IhuxTjWfagjZ5D9NrD5v3wb1fDSvLviB2Zj1qeQEqBgDsoxKsDnewd9ObJoJTlUJWStmRsvHDa370pRNlS2IhOJ-ZyFuM0fjFppaMDHyC4gBGemai', 'android', '2021-12-11 00:08:59'),
(148, '#OCUSR_fw8f9', '', 'dyNbifU9TBCSqjoPFxa7Y2:APA91bF5lpS3hLLnVcJnnPERY5LHUhCNZ6QG6zZgO0GjJb4bWMad09WB3qnoLuDQI2EYjfOTBi5uEDODDUa9rodnpY73rq0ch1Nfv6VOnMZPvxllMlJxU-zCwaploesesIrf47vBz6fx', 'android', '2021-12-11 00:09:13'),
(149, '#OCUSR_jAEgC', '', 'cFhVs5sOTpeSsdbUNkgd8m:APA91bH58zy19FdJqyaQ80CqEAl-RUy8DAtDGBWFuO3ZCm6ss6Rhc6fzXqduwMtJYJ7CUQVZqK8Ms_K9mhUDSAYn2Jro2LJXXWT7302UkRz2shU3fcUNUKGfknHaD1Zk0WqyrXKjYIZC', 'android', '2021-12-11 11:39:54'),
(150, '#OCUSR_JQMWw', '', 'c90wabI7SLWFFS4-7WXWrs:APA91bHoCbNaT0Eh4KQUnWRqEcuj1Du2xFJ6vvcB5eqVe6v-aJHPu3LT8HmkZQIl_yfVdXu7_Y5R9kXGqM9zVX_IQ3ck2xPKSCXS0Upilm0scQCoS9tkhwaRk7kCrZpRNA00qwCnl_Co', 'android', '2021-12-11 12:59:33'),
(151, '#OCUSR_eglcl', '', 'cLeU_RJwSLi6_47Lr1RjKS:APA91bEgAGjERBZWDUHZIzb-B925XPRxsNuOJJdwaWz3VE0dkJmnrKnpRH8B9qmjrJxKfP0d5cv9gQM53gywIMEPmwZ7r_BRGUvhjgOh5zCFQWali9reV3XUK0XjnAt6xM6zRFdCTE25', 'android', '2021-12-11 13:11:51'),
(152, '#OCUSR_i1QAL', '', 'df2aAvBXSgCFT1lOJyqbwC:APA91bEJ4e-Dhsx75eyIFM2q9K16Q0CBqFKTBv-m7VV7xt6x92krdCmV03eTZCHXAE2_OfovlhDiQs-nSWNpk_GNVDSLBT5ZDHD_YKj55bmm23ZEmnfXgAQ1y_L24R4tBGBBXd4ivTFj', 'android', '2021-12-11 13:15:17'),
(153, '#OCUSR_Y2rrk', '', 'dKy-8i2fz5NyzygV4JQNxu:APA91bH4sRIB59_gkQSG3DGFxl6XTkIZHhiK3gf28CKI9rd_yAvg6O1n8P4e6ZcTvAiVv_mdQGcxergSGNMpVt_GjIcsHyf8qZH6DDuK8sV4d89-ePOSWmrJRTl1RURB1RqCOpAVFYKW', 'android', '2021-12-11 14:48:06'),
(154, '#OCUSR_UaoiM', '', 'cn_ODjm1SWqrCEkmz5D7bp:APA91bF5gbAwTjqIYMK5ctPYYoWj9EWphvz-2nsPChmIMSNYGpyuWYhfUtT44g6UktVv2H0jwOsfdLB6tWrMlbB6KOhSy2vPw73z4MQ1qh-PZEoWNX1-R5MUwTqH20KZMtOyV1RZzbYL', 'android', '2021-12-11 15:33:06'),
(155, '#OCUSR_cKX47', '', 'cian-BzxSQCuBvZyCAklHe:APA91bHXKEiMzQiHrtrRtgY5hW6roytlRNE91lHgnTM6dOuIKF3rjEXyZfIZocdvKD-Ffbz7x6fyIkif0G3xdx2o-R_VR1aSqURS9Rjr7GtQy6oXB-dj_GSYYOUZBHTl8F3HM2otZV4J', 'android', '2021-12-11 16:01:00'),
(156, '#OCUSR_49oCj', '', 'd3RBP1kORoy1QwFSyc354O:APA91bH-z09CDxvJbR2u52PrO7xZMsOgMuCfybOumk2iR4vqzovBN5ntCgLYaocMfynceEDOfC3Vpq1ENZqzCojzbwOpbXeCYeInCb-y9pd7dsUchiUo8Ce72bsYF1uD3UP_R2TXEFmr', 'android', '2021-12-11 18:16:03'),
(157, '#OCUSR_PQnRv', '', 'edfi8HhYTlC7jYZfY1hf3s:APA91bEH6j-mvZtr55HC19BFTDMLMNdBVJ4XGDKJI9JutOYisV4jwwxO5Tk5V4L7f04bJTbZ4A1bXOkr7WLqVaXkZrn6k54Ub_p1eIlML2kms4xyugpi7CmZh1hqtDSCsnNB897Tqjof', 'android', '2021-12-12 08:23:33'),
(158, '#OCUSR_MpoME', '', 'efDGRusaQZ2SaYGdQplqOh:APA91bFOZHYxiGBUXJG6reKAcxACyNPKOmgE58b6BVzrVJdOIRs6cTYdOYQDiL54F6jQXrTh9Ymz-r20M0akC_f20aYDqFvQnGm3IjWmSfmPt2iQCN7lRZ6PGOvIAftmC4NsYaIi6Z25', 'android', '2021-12-12 10:07:13'),
(159, '#OCUSR_LXTGN', '', 'ev74IJjTTz-8xwQgPm9jNp:APA91bHvqpTl3v1iGSjlXEyklRBxPxSPtBDmo74fbwuvwVdLw0H16T3Fy5p8SXmvHZ6Tq-XTcY8Wtaniwr5nB1RNLvQaGfgk1S-qjZ2kTIKjtgj08E0k4Xer8-1d4ZrSai59_iu0F3Gk', 'android', '2021-12-12 10:52:46'),
(160, '', '#OCDUSR_kS2YO', 'd8jwHteTQNyYmiVXXY_tHu:APA91bFhe73mMoTZE1exkt08s9U2_-ngJ2DIZjyoc7bdfPGRT0u600qC4pCvn2X-y-zpln0paSyiUAbAS1DbXsloEms86zp3FZ3U1OmvaO6pSctTqzNWIoT1LpwGxQ20dsfQQV97QsTW', 'android', '2021-12-23 12:11:17'),
(161, '', '#OCDUSR_hXvA6', 'ez2j_sT8Q5iT9-v7N9w9bL:APA91bEZkKY9S4VugH3_Pt6cGfCr565y-TcgF3im-6EgIzRSU_bmPfWFGk6KJ4FMHtY_d1zqWX79WgKk2zgxTu6WwwvzmED0GRRudBJ5VqPczi2AyjGHjrpEif0i4BzaK8UMBj9lubg5', 'android', '2021-12-12 16:04:37'),
(162, '', '#OCDUSR_2mjAW', 'dIMlnJ75SXuWo4a8kDgbD1:APA91bG1OnkNUI8ePEife4eUD5Toha1U7l84rT3np-1ask8KcVbNIbXQU3N1pADwQ8f1XxKLDosQF9ZrGjKdt3VnoliYyfCO3TvRPPodW5ciP1RW17k0P0kTAYNyh0tfz8zmfuW_6xJi', 'android', '2021-12-25 16:18:45'),
(163, '#OCUSR_Au49Q', '', 'd8ythC8QToe56kiVNbfd0J:APA91bFWM1HWQRqVbOlkygX2MRtnYqF069MZLvvWbieQDQgOQE2jWjhhohwJHUnDH6lDcgs-i3VRTtjO6I00JsAdDYSeZOLi8JIrueM9Ls01GQTp_1oYjmDw_1yOPWdYh1bj4GiDzPZ1', 'android', '2021-12-12 22:14:04'),
(164, '#OCUSR_vtFU7', '', 'f4aJL5QMRC2alynuArTMUE:APA91bEaTAiWi9UqY6lb6zrFsKtdXDTlUA84EdaVWXYflOAk0V5uzT29yufqcKYCvxzs32Q8CnGLh-YGdq1NDmo5Pfw8gq7NYI_N7CcybbAycQ-8EAVQojD1Jx2wqjOD6XncJ-_vm5m7', 'android', '2021-12-12 22:24:24'),
(165, '#OCUSR_buTfo', '', 'dw_Pm6utRUygPqDjYwohNp:APA91bFKBz0L-O4D5RkAL9yoZXEYdNd2hQBhm_14Km6o2hj2vrBeXmEhh9MOpovkqRt0W7-G7eMzu_br59QpXL8Ps8_TuRnYXzGW3kCMBU3j9hyHRIgxQEBbUyP5jDUwxN4hfi3IXDaj', 'android', '2021-12-13 11:58:51'),
(166, '#OCUSR_CH7zr', '', 'fo5odM0-QA6GmRCg8MT9dr:APA91bGsjBMtY9gjxeD9_2TBUpF7f9Nee8UWNOAt9BHYRwogHxWLWf5nkVHnc-ngn1mn388wr-DnyneEfWlKgpdOVdbTFgiiDZ7PJ8zYLPsHEQf6iL6tumyqcJPfRTK83En-bLEBIO5q', 'android', '2021-12-13 12:01:29'),
(167, '#OCUSR_fy8yx', '', 'ejsRr7ygQamOxhMkXFi6sh:APA91bGtOFJGiIve70cArR7xy2k_5ZRUmEpalgpg7YDDEoymXRo8HFp6NqbRn-_bZSgvg93rB3EoLk247lUEkPc7HI8eoeLfQFjvatMtF1ke4niqL2ncmhFrEhclj8c79YjsYfGNJz1c', 'android', '2021-12-13 13:34:41'),
(168, '#OCUSR_B1mzu', '', 'eWMFCn-7QsSRKFJJC_i8BM:APA91bHMsGO0f-NzsiGrQu_SiJPe5-v0bRmZiHnlPw6Ndlpt0JspnhKqVKzXI_vQawW4DtEyPl4OAA17uXfB3nLD9N_ZeQ63HQfJd64d-MPrid6ljAvHHmXyNcCNJCmeOBRzBMzFPBME', 'android', '2021-12-14 12:11:20'),
(169, '#OCUSR_uvWBR', '', 'cKWQcgh1TIaQEWiigiHGQb:APA91bFnlc7jqKYZjJeTfFMeVMr6qNbwmtH9sfYgsEffoC3Ax3qsvwD1pn8tYZUAYyAPQ1VM7bzeSYaOHpVTXP1NVqo_vpGz2a6m5mQzVesCanI56SqRoSlps6OOEAGmK_uBX6i4FaGR', 'android', '2021-12-14 14:52:00'),
(170, '#OCUSR_9e6Wy', '', 'cBDtd0pAQ-Sxknzile7HRE:APA91bE1jY-VxD5G9DB918rKHHLa_sOk_wgi6o7MmrsjXWMo65BbA597NWM5wXbN7XnjaKcOWhLphIQIX9bIhF5ceBHbFIwyMVbIPAmf7In-sv3N19eTxz0Kd-BySe9wgv9u_3iJBykL', 'android', '2021-12-14 15:53:38'),
(171, '#OCUSR_dr6A2', '', 'fOeENh6ORDeF176gCPp1QJ:APA91bHNxTk2Gexu5B44yPIfa-YNTBWxlswh_IL-zPnt3QtjzuQDbYWPBkb5dcyijfMXHxcHqNG6ELdrU77Qd0Yn5Q1CEa4aFrmZD42639bY-yYQNigI5Foo16O-QEo9Vh_4jshAZvij', 'android', '2021-12-14 19:54:14'),
(172, '#OCUSR_tWCDj', '', 'erarB9-TQuK6RJawOOkOIE:APA91bHYSIzqcidOB3CeMj9ohu01DGqqacbEwn9kblS-2_KqlSn7sd4gw3_AL55npxvRcwFAvYDEF4XZ4ALIXASXjs0HrHUofaBitrvo66SJQKCA-jCvYRItduo9SRwxLZlHm5YuU9US', 'android', '2021-12-14 22:24:26'),
(173, '#OCUSR_fZGo5', '', 'fxWPYIjhTsSZVfipBKHx52:APA91bFfWG7FuxG3vaLw6DpzlwK-i2UdsN_ds-LhO8EvHYo8R2DXBQ0XE7uZeT2IXMXZYZmGh5D0wSSpgu0LfJ39_JS7dzKZyT8Giq9CHb6c1dRCZpUDSgng_BMevm3DyntS2qmFwvNl', 'android', '2021-12-15 07:45:26'),
(174, '#OCUSR_t16td', '', 'eU_EwPY2TIW4bawqcIs4qJ:APA91bGFIRriQzggJc5XF0T0fFBKhu3uR6LSa5ZoRsCVI74FYT6G8FYJXoZ7wF1altCknMPcdq_gLourlz7W44xYELcBTo5RGYzLhYWrj7ltThz2YfrJ7Z7MTrymZj7rtxKnCJe19QTE', 'android', '2021-12-15 15:06:30'),
(175, '#OCUSR_NmQsH', '', 'f4nFmeI7StCSSnhJuunF-g:APA91bFJDKqCdufm-uXq556Y4fSMVh3dfyCzD6X8PkPd1anuwQ75kROGS57SqkHFyX9shGMt9PbH6Jd3YYZXYk_w_stCltD77UYimb6V3T_TYd_rtWKKV3ryio-20VXNufXpxq6O1BOp', 'android', '2021-12-15 15:33:23'),
(176, '#OCUSR_aQjwe', '', 'fBXAnhD4QzyTJK82dfnThr:APA91bHTVnouFsv-iOZnHUFg8xQRw0X8D0G1k5EPF9GbWvNXR6KMZ9Adadgco9QSGB0399NtQEslncWErZis5aHFHrE4rvK5QnYPUxZPCx_phbfFiy0OosMBNjGAiN1ZFdkC5L_B05pS', 'android', '2021-12-15 20:26:40'),
(177, '#OCUSR_rFh3x', '', 'eC2kChi6TdyVYfqdLAd9LE:APA91bG84K_R88IKKZF58GMtOW2ZzMHslD_fvoTlHpEQwO7XFL8oGdV1iKTj6yqLweeU6N-KbekFxTXwCj2-PAQhiRABFicp7s7NSLKkrpE5P-Jlel4ParJeCNEsbzJfuTCSzv65NfB0', 'android', '2021-12-16 13:02:01'),
(178, '#OCUSR_dV5rI', '', 'dCoBO_qxTBaLikIVorD3Xs:APA91bHy1gheiLo3eKo-dz8IkogXPu22EkSY-LRrAhfr3xc2zRXR6XKcV23Sgz59XHUrLVeGosRnK6Lx4vYYRgVcc66Q_4FgswSqhiaZRheDPxWEy8fVTs1w1lDqq81tMX9V-zd1LDyC', 'android', '2021-12-16 17:40:42'),
(179, '#OCUSR_GORi0', '', 'fzR5ie97RseQ3YkEkB4KpM:APA91bEH7VxZiaN_ZltLe7bbC7oSEoVTjnqcqFkspznX6sYzQxCf2PjemWbsyeiHeH7jUHSetQxIzcqbKmMtlqDiJ23It1wXtEZviNP45DwUvmg78W7uhpGqYUPKM7ZV17gs5wVs0T5L', 'android', '2021-12-16 23:11:22'),
(180, '#OCUSR_k3vYY', '', 'epywEqHtS4Ct3AjcREXB6N:APA91bEiG7hg5birAQnP8OqzFMG71w4LVsIYHr9wObu8OvYTb0AMteMcFh5eDIa2vwratayuq66Wzqg8IDj5BZD7N4bW4oSeMnqXaUJtjPTQnJ1n08K10oI2I7tXvutC5j7d6BpfayQj', 'android', '2021-12-17 14:36:08'),
(181, '#OCUSR_hirHn', '', 'dkQUvR-3RXGw97yKIcho5t:APA91bE6zjSM4C9EMW6HtRH34dEgFBsWLNiGPPOP1In4Ff9vD7CBIOAuogU86MOjxGh5yUdBvsoUpyEPTxcTjR7cQjaoW5jJZ2fFJXmaS_Un_Om3pe2xi2UZO3Brhuu3tBaVvwV7E7BH', 'android', '2021-12-17 18:08:20'),
(182, '#OCUSR_dNQGV', '', 'dR9R8jCoTrqbcOtRCr7M24:APA91bHtAhNPspBZZ13cme6J5vWP4Y1n0XOqpjkW4GGCIjF7coNFOaAGZMp4AQVGM62EVoCAKsOQB8VdWxO-Lz2rfgHePaktjY2lmgM3rPdl8jGzzHFtLcBUqBGh6goV_fZagFAy8UX-', 'android', '2021-12-17 18:14:59'),
(183, '#OCUSR_vrTZU', '', 'fNLGKkRKTaOpJLH-YP1_1R:APA91bEnL9H8bZ0DIdeTaIh3oP6TYy1dlN0ZwFx-zdyHDRbvVq-T6hAa_oq6WqLpNBk0P1BKlp2RwCwqSsJ-kEjwyCDqWTB9D2iKP2ajnFnV_QWccv2elzgpUkV_rkMLqk6JHVUAiCdh', 'android', '2021-12-17 18:37:05'),
(184, '#OCUSR_Nchqu', '', 'fecfK10hQwi1Xh30JJbrWO:APA91bHlM6IUYVOt-E6jLUvNpu2XaEtsYYrMBWKyQUj7DStfgOTfOCo_Q85YhCemH_YGaEvCVJsWqUOvyd6_7j6KGOKe8OiLbxuUUJ-XtOkavkshDglIZZfvruJrXSLY5yuKjAVjUIbx', 'android', '2021-12-17 19:35:56'),
(185, '#OCUSR_hWIJ0', '', 'fZEruu_nRVqYk6GgkYCSSh:APA91bEHZ4loA9BxEDUaJfYSx32lyOlKZSMb6cjbDqct1yxPRONqOFkOX6hhHj1uMX-RSBkP936cZrpUikdhi-hjP4sAvsA_8XIUeMeuV-Qu9qx2UjIQV03VYQpcVjBIcBJ2DovxIbxa', 'android', '2021-12-17 19:36:04'),
(186, '#OCUSR_h3K7l', '', 'cxk795SeQC2qHosAuzQeC-:APA91bEecJ_NKMYFlGWzotAOZfQLjfdc8Y2bmoBE2LVO91ywufv5GT6bFbDItsJlAdH4mjwor7Jkl_g1phdBk-Rg8d1T9h_QEoELuGT4pQSm3hNRBuDFopUvUckVpUHwx5ymaZd5yLz7', 'android', '2021-12-17 19:40:20'),
(187, '#OCUSR_P0RrX', '', 'chJAIrUFSuGx0O5BVAidZj:APA91bEfrjv4m6YOUmc0JQA8uHbB_yvMbRPrnTsu5IqtbIC1NYwa-L5nBJz0TK-p_MDZVBiTL1BMcoXRjaYrTuWCdjr0jxLWv_vHbQEs6HFsFOVyG9DgZIq7a5ju8jnWteWniUCIxhlQ', 'android', '2021-12-17 19:56:04'),
(188, '#OCUSR_WCC5X', '', 'cHAlIUeASjixzmK0pR6jfJ:APA91bE8TwmVwjmBTW5mZtRmdi1hudQYYfip4OVj7UPwQJ2nTcOwhAUnbgdDfMoyXF028rsaI82coQ0ldqLn1o3XBZ_JfZEHrtAgG-k2r1_UzSrHkYRVrJcTT0wOcGnv3BP5Ny5r-QXj', 'android', '2021-12-17 20:04:19'),
(189, '#OCUSR_tnz4Y', '', 'de0Cex1dRd-MzmsrmFOxk_:APA91bFtXjmowBBaMVuqd9qTar8lyoHnvQwSHxxdgWC86WKk4vN1RgEMMdaOTKpiyMj8rR0kRre6MFzqoP9wTBCvcECXvz8Fo0sXG9eFQFJI679jje5VNl1-ZMuHg0iBAuiqSt3CfxCS', 'android', '2021-12-17 20:51:16'),
(190, '#OCUSR_2Dtao', '', 'dtlXiywcRRi_ms8irHRh6j:APA91bFNxQyyiRfJRFUY3hr8t6Sf7f8TEsnGn2sPzlhtN3wl__1dmvBP1yxmbItgwN02tsZ9EvFp0xMYcvXwALRet9m79t1XeZ0YKEcmcdbtl5XzQVpIm9H5ccCAYEFZTxxGyUg36Uek', 'android', '2021-12-17 21:00:46'),
(191, '#OCUSR_jp3Ay', '', 'cA5WmPLZQQKSrfhAxx_-dF:APA91bGLEi7nGcauboIc6UznDQoF2fDXoEJtvGLTWHSXGt2EHGyDd4lXbzLgSh9mKHPItsw0ywaWkD4x_15iMAOWD-vPHYRQ0X5V6bulB0D7PCyGQ7ZSvcFow0A4pekkSHv5_VzlqXIX', 'android', '2021-12-17 21:07:43'),
(192, '#OCUSR_AclXk', '', 'cA5WmPLZQQKSrfhAxx_-dF:APA91bGLEi7nGcauboIc6UznDQoF2fDXoEJtvGLTWHSXGt2EHGyDd4lXbzLgSh9mKHPItsw0ywaWkD4x_15iMAOWD-vPHYRQ0X5V6bulB0D7PCyGQ7ZSvcFow0A4pekkSHv5_VzlqXIX', 'android', '2021-12-17 21:45:40'),
(193, '#OCUSR_f9OOo', '', 'ePjD3X4hTrWatHuVN_dpBC:APA91bHKvZTxuK4qeSU0Lw6nEW_IG5KapDWeyQ8nWQyI0w0TFEiSRefGjlzMpp35qUKk5Q9DNQp6mkTJVTbp9qXaHbgh89Mt27WZprn8MSuNQirj_GB4jWII7tfQbTCubsOS3CkTum6s', 'android', '2021-12-18 09:39:38'),
(194, '#OCUSR_BzvEk', '', 'fDrGhxlnQtKvjlUBFT4QCJ:APA91bHXgmCHJ67RXVaYL6t7-ICzskjMzQL122PaQ8GzQojq0fDXxnxeesWA2uxf_VY_0FDHpYsg_1zfrlSsEFfjIiUUnmBxZTrfoZZzECjBPPokFgAdmt_O_d9o_C4Kntl5hKpb1bM6', 'android', '2021-12-17 22:14:32'),
(195, '#OCUSR_Vpd1h', '', 'fDrGhxlnQtKvjlUBFT4QCJ:APA91bHXgmCHJ67RXVaYL6t7-ICzskjMzQL122PaQ8GzQojq0fDXxnxeesWA2uxf_VY_0FDHpYsg_1zfrlSsEFfjIiUUnmBxZTrfoZZzECjBPPokFgAdmt_O_d9o_C4Kntl5hKpb1bM6', 'android', '2021-12-17 22:18:47'),
(196, '#OCUSR_DgsMX', '', 'f8pNUQxARNqjLbyMGfMtmv:APA91bGix_9LMB5uyqq4IJl-1OoNxHVz_o7KqWZZNzoL8j76UyIYDV4BsB-Pv5lq2nPpd7S0JoxeWig5ne9R87EYXFWkry0VG61NTdHcN_qjgJBwF7gDpBnbAPsAKdaAqVEA2Djcy2P-', 'android', '2021-12-17 22:21:54'),
(197, '#OCUSR_kq0hL', '', 'cxMuy-NlRs-1d13UzpeDIL:APA91bE4ztOT7LPkZ6jme-QdM1-cNOQ7ZVAMdeXdKOpB-pL2A3rnAasIQlYZKyVym-lexU2suQ-piSrBbzFk5RP_L6B-eJyFSs_2udgcpAyXmK8EZS9AGTnpEjPqopD3bDroz6FpIVKu', 'android', '2021-12-17 22:44:08'),
(198, '#OCUSR_90wvs', '', 'dIPTIyYSSMq1rj2Imhhida:APA91bHfqhER0Pwy1WBNtofceanMnoN9v3T3czzYe8nupKU0pqk1ZBnT2JLf4-CF4JVG7YvZ5TEodXFTl20Zx_Q8rQ2-xZTSk5tBZATWWh87e9KHDRFe9K4cs-H_XoMOOod5IMvgxY45', 'android', '2021-12-18 08:33:39'),
(199, '#OCUSR_E3X8F', '', 'clLcVZzyR0iy1KmtbF8A3m:APA91bEiA0I9hoCJ4tQTIGmA5xSTHhnrkFZ7E7pqXeakroHZajEDDFKHEMNA_f3dowkmuk9ejooMnq34js3fEFDZS5aBVkRSYWGxVhmaJCEjTFJ2uEAshXRWjeqAnPM4AH4HrGtD4biL', 'android', '2021-12-18 08:53:49'),
(200, '#OCUSR_Ggsrm', '', 'cKlzY5pCRKSmYU3vI7OmFq:APA91bFYNqm86b5ubqH4WdpU8wAjjWMGQ-FyXiuLX7xP0jI5gIUAoepJ4Fs8mZAoWqtQ4pG5XhZNt41DEhQucY7mnQP_9THMV-RCel_z1bWwaTcefIgoL6jeukYAtD-kHNc_RvlmB_TI', 'android', '2021-12-18 09:16:05'),
(201, '#OCUSR_Nw6gS', '', 'cRI8DcCcSPmuf3tJth7tvz:APA91bHcLLpcHQ0doamft2bwSkUElZwU92VgKY8ZmMitC3b3HR9LhCEWTjoRyaztVRQi3XYzgn_AwT4IMxqDXHjh_6FqnncQUFBfvMpNwyDB7aOz2UcR0iDfNdLEbHFbD1aWDBWhuCH4', 'android', '2021-12-18 09:21:55'),
(202, '#OCUSR_D6iyx', '', 'e-p1jmBkQPqoJBozEWqBrs:APA91bGl9cJVlAYmWXEBICKDZUSU40XE84k2_ZziTbu-qthRyf04XzrDCdz3CCDhfhcf_dMA-h3tPZAEO5QpEuRKM1vPXRQHJHJKszfivWqh8OlWazPgfIRukj0f6bYBRjPlPPA7oEdR', 'android', '2021-12-18 09:40:57'),
(203, '#OCUSR_j52wd', '', 'eAVhC7zMQLuGRXcfzAipTA:APA91bHzCGOBsFvqKNwh5W8LLDvHis4vVtPi7QC7iG_xMWOqUpyUI_ywIZkNFZZJOTIFxQ76uV8WTcaGA46nFQOv1VviA65iTjjAiZ2Dv_HpnmCNMqxW7y9qerTERFa4d0anR3RIVrIA', 'android', '2021-12-18 09:40:48'),
(204, '#OCUSR_eykMw', '', 'fpk6fpJESqWAY94ntG0vae:APA91bFtjH0nOcEJEXajN4in0YV4f_JLZiEs0UwkeKpsl33mNYlxSgNf6lMccRUnqwnNArfOnTvLojo88rhz2O7IACVP6BADRYqwx4WBpHi-uf2Y0LjDNAWk38v019HuRi1Wtjb1j82t', 'android', '2021-12-18 10:23:53'),
(205, '#OCUSR_Tq8pq', '', 'fjAi4ztASI6BSLFeBcJeq7:APA91bEVdP7C6jMrLiO_uLIQatbfRfMBT-ddhJ7OVC-_QPnurK9OxY8nNj1Io0X1in1wVTMs6ThZYVINHvt6VKhjjODIHsmNQq-twI47tE7GFMRYareo1SZDkXbb3zfHXkt2OO1w-B6X', 'android', '2021-12-18 10:26:00'),
(206, '#OCUSR_KnY3M', '', 'dzqg1F4KQD-GEUrGF2ehHi:APA91bEdSgZ6j0amgdcYqEOTI5tEVb_20By4YbRXJclhSJ2T67dxJXsjdzOzkblwxGqrvcU1CGSucvGa7IDDTlqb5yNdHOPXJU09JJDwS2UiFdyqgWMTd96FNEVEwexVtz4pH3rg0k41', 'android', '2021-12-18 10:57:19'),
(207, '#OCUSR_9jgGC', '', 'dJxqUDd-QlC0I3MXhWazws:APA91bHL0-t9WAhwkK5jk7u7C6INgL2Emg5zUeU6It9TevxpStS3O60BQoQiBzWPxuF3ju5NL4j-_NJFxIww8dy821OLduSXC_9ACt9e-fcCQCOLOst3NSet4pPRbaYFphICDYIKVsBD', 'android', '2021-12-18 11:47:34'),
(208, '#OCUSR_h05c5', '', 'c1jONhxDRmitb_pV2azVl_:APA91bEYE3iGJhCqPL2NyIsyN8re5NmVlQIfkxtJhz90uGcw2xCxhBp6fcWQB0fRXnOG6iIC4y3fXmrVxpUu41JaiCCFO2ilDUibhtjCbkTVwEhFMmaKiCmn9ckZU1bACNQ59Fq_UKy9', 'android', '2021-12-18 13:23:07'),
(209, '#OCUSR_2jh5z', '', 'fl7SxXlOQPG6p9TU1IFXZZ:APA91bEiJg9r6_IoOHcZIBRndZ8wzLRH5Z_h2RRMtKC60R4K9B7wtm62Rf0bJbi7GjKAJj60xGrKRB0FHPH3weoZ8E-FdqBmjh998-GxShRzuXAA9q5ASQPr-ofwObzmHo1dbZk1VOkQ', 'android', '2021-12-18 13:55:01'),
(210, '#OCUSR_p4NU4', '', 'cZIWROtSTquDF-Mgidgy7-:APA91bGBeZcQTcsAf6SMng479RdT-MUXR8djc2bghTbOoBKEW-JPASddYvnd0wFSapqUCApwLlQUVTITGOJa_E_PuEGj1bk2eWl6XoH5xzjpwmoeZn4bY68G4z1qqjWsRz7MYekS4iI6', 'android', '2021-12-18 15:32:45'),
(211, '#OCUSR_yuXUy', '', 'eFS2FjR0TfS76qHH9_TM0y:APA91bGXmSiNKal985kdT10OrN0caSlxVG3ZZr2hBc5BRLx08ANHUIum2ajnykZioJaqIQAQfwxpIjwt8spXYRU29D04KqHsfeSrUJrZM1fhrV1PVNvI6SD5mWI_7gC_d71OVv_YYzF1', 'android', '2021-12-18 16:08:08'),
(212, '#OCUSR_gMzOa', '', 'dX4QVF2XSGqcf1-Xz8MxAx:APA91bF2lP-xFEIkxsFcI1s6-SW2HgNETIOx_YE2CxMD2cG_P9VBFcTgy8DALZF6I2zUEFsM5bsk-RR8X2xgvqF1bKp25d5bUFZHNAxHdUI5SjGBqKapQwrSXyy2yzgWeDM8GV4YdE0a', 'android', '2021-12-18 18:04:03'),
(213, '#OCUSR_m1zpF', '', 'fqJulpq3Sl-FW-9seP8LL3:APA91bEcFsNniIXv2SbXAZ8A3fQeeBJKYh7iAf_PlJMPpjaRl8gMbocq_6gIVzUw44vx9eL8jJfGl7FvhEGFrCGBcbnexMnD31FHNna8WEF70aYBrOUjkujdIW63zHIF0jeyhuXc58n6', 'android', '2021-12-18 18:39:12'),
(214, '#OCUSR_DNAhb', '', 'fEG8_oSZTWmVFfVT0tb2r4:APA91bETHZxYL7VocclU16I9z9UAfvG8qs9r98g1SLbPTqGqHbB4ib8KtqpY0bpIVpVZER5uRWM8QUzxHBzoxsPYRaU34sALXAZo-K9th4W3ui0jpm4nDKGYuuiQiFZtS8NbssoUDdBv', 'android', '2021-12-18 18:46:45'),
(215, '#OCUSR_fIJPx', '', 'fq2aF2EXSRuqdeitGtLF5q:APA91bHXUSx_c1siXNsZpz_O-R6oWTvAMPNRlkw8T_Sv36WdjdDsvhm4C9ZHQfa4e36mMeqRXwXhPsVBfQbWgOhgdo-_kGlwczfrfm9URKu5SzPhdG2HB8daE6CvCqksSc1X6DxR5yaw', 'android', '2021-12-18 18:56:00'),
(216, '#OCUSR_AB0u3', '', 'df6FiDvGRzK2MdQCe5SVkM:APA91bG6ajqKHpVIOFIZGlrlq4F1s97qdzjqlserlh4QGzzQJxygocd9yiFAgZMGCNnhpU-x4T4FcP4G5Y4WtSeiQf45-8unmZScTrlnSemOsTPu3mRbxx3kddlLQkDqRfnBQoiNyWsL', 'android', '2021-12-25 19:21:16'),
(217, '#OCUSR_j6POZ', '', 'fDl7iec_TrSDFGy32nWFyp:APA91bHZdZvIXluMsZVe8k_MAvHigVKwEl9BdOt_haeUf1aTZP9VfjrRp7ob7c1f8lM0xKEVcisJ8Z9mTAe38DhGJCpLf3AtL33qJ4E80whegmrOGfSVIvGeiCPs8v_Ru3q1CtjELu82', 'android', '2021-12-19 08:18:52'),
(218, '#OCUSR_ekuka', '', 'f6Z4xJ4RRcqIAN6TTJGgda:APA91bF3E20maFqMV4W2Dd8CZOtCoL3fWinMSj8UdXfRV3ikeOaJGzcal8UixoepgC34ECUNYActiOsLrh_GP80263AZFZlAwlM7wgANedbq4kVTM5Jp3ATXJ_k_va5uPJBLp0AyTG_e', 'android', '2021-12-18 19:53:54'),
(219, '#OCUSR_GVdkn', '', 'fDl7iec_TrSDFGy32nWFyp:APA91bHZdZvIXluMsZVe8k_MAvHigVKwEl9BdOt_haeUf1aTZP9VfjrRp7ob7c1f8lM0xKEVcisJ8Z9mTAe38DhGJCpLf3AtL33qJ4E80whegmrOGfSVIvGeiCPs8v_Ru3q1CtjELu82', 'android', '2021-12-18 20:06:00'),
(220, '#OCUSR_TYQmo', '', 'f5idgPuTQfKGCWNnkEcQek:APA91bHMRx3IYP2J4xJgX1YuUmFVyc6a9-M6T_LjIANCxBFMq183g5TI_HbZa24q8VuN927HZ7iit-tPHCfCXwr-Nd7rU7jMfWdi0cy7Pls1vJjTBuOsv4HV7u40ueZ-T5srL7NCzTXg', 'android', '2021-12-18 20:29:27'),
(221, '#OCUSR_Lh3IT', '', 'fDl7iec_TrSDFGy32nWFyp:APA91bHZdZvIXluMsZVe8k_MAvHigVKwEl9BdOt_haeUf1aTZP9VfjrRp7ob7c1f8lM0xKEVcisJ8Z9mTAe38DhGJCpLf3AtL33qJ4E80whegmrOGfSVIvGeiCPs8v_Ru3q1CtjELu82', 'android', '2021-12-18 21:31:57');
INSERT INTO `fcm_tokens` (`token_id`, `user_id`, `delivery_user_id`, `token`, `device`, `updated_at`) VALUES
(222, '', '#OCDUSR_gYubk', 'dpadVoPAR--nTyPxtLIU0E:APA91bGIr26CK1a19_AGSZ-XYwTJKIoybXy7sOvIOOgjc0pmmtOIr_fii-TGT5rdoGuC9Vc6KThTwFVeSM4rUGV7Q-zDz0bLIt00f2_vsS9nlHNTgp1WjxY5Dk-bCIbatH7CWasDZGVA', 'android', '2021-12-23 12:11:59'),
(223, '#OCUSR_Acf9k', '', 'cZIWROtSTquDF-Mgidgy7-:APA91bGBeZcQTcsAf6SMng479RdT-MUXR8djc2bghTbOoBKEW-JPASddYvnd0wFSapqUCApwLlQUVTITGOJa_E_PuEGj1bk2eWl6XoH5xzjpwmoeZn4bY68G4z1qqjWsRz7MYekS4iI6', 'android', '2021-12-18 21:45:00'),
(224, '#OCUSR_jaGDv', '', 'dBKNPk6mTmmdrNPsmi9Xah:APA91bE0hfp6OZlsmskzD2n0tqu0dzX08JejkozaMv8y0YJYMnNQoGRyZzPYu7CFlR2hr3sXBCx9vWuKFXW6tTgKeNQf1dt64XTqdW2b46Sa6dB8G-8ilU69MLpLctlDtUTxT7aM5BCN', 'android', '2021-12-19 07:08:42'),
(225, '#OCUSR_GIC0e', '', 'cSQrqAvPSyW5Ta07BxgRyk:APA91bHT1uipH1I4fuHY9IPCuslVaPZz71iFVVGYHISBgmIqTrG_4WOeb70c8Pwd2-QjPLvoOve_ENxleD6oRNQkLphnE8MDL-rcuZhIIV4TOPOrDKDwM42S1wxIhVLqMUdQKGJYJju8', 'android', '2021-12-19 08:26:52'),
(226, '#OCUSR_IGUEN', '', 'cZIWROtSTquDF-Mgidgy7-:APA91bGBeZcQTcsAf6SMng479RdT-MUXR8djc2bghTbOoBKEW-JPASddYvnd0wFSapqUCApwLlQUVTITGOJa_E_PuEGj1bk2eWl6XoH5xzjpwmoeZn4bY68G4z1qqjWsRz7MYekS4iI6', 'android', '2021-12-19 08:33:59'),
(227, '#OCUSR_cZcWn', '', 'dwSnqvrRQ52mrsxTu8nG8t:APA91bHy3VQNxAKwm86iUmepAHC5hDJbuNNpAdUEGR57uyv1jBK5RCSDrEqTBKgKrpXBrkfbVhNb4Mzg-A1Kq3xFB7_-LNbJu6qpLd1TzUWzWG6eVJagpViEmtGwslE67t5K6HyjnBqQ', 'android', '2021-12-19 08:39:49'),
(228, '#OCUSR_hZ4oU', '', 'cS0pMbIuQNyIcgpU_90P_k:APA91bE_gh32PU9mJG2ExUzui8VBojJbkEP019JMvh0u1d95TQwIEW1tuqr7wMtKLZz0TFpMH2FfoVZhNZDcz44LKFUO9_DFoyYiaI3v495gekQo9wte596j_1pdIPRmogODXDKGjZ-5', 'android', '2021-12-19 08:52:38'),
(229, '#OCUSR_bdrgJ', '', 'fDl7iec_TrSDFGy32nWFyp:APA91bHZdZvIXluMsZVe8k_MAvHigVKwEl9BdOt_haeUf1aTZP9VfjrRp7ob7c1f8lM0xKEVcisJ8Z9mTAe38DhGJCpLf3AtL33qJ4E80whegmrOGfSVIvGeiCPs8v_Ru3q1CtjELu82', 'android', '2021-12-19 09:04:26'),
(230, '#OCUSR_dSFjc', '', 'f33ASIMbS7CU-rIMnLhtu9:APA91bEZciMME3OcmDKznpB0OiVHEfkWED2LFwIimhxY1VJFMVFp65bOs2q_mEPRUG-eCXZk7LiI6OeBLbLy9YJJzRZ5tsOUafz1C78v8wkHDmnNgJjTYjccoLFRTO0cBjgZrra2wcNB', 'android', '2021-12-19 09:11:53'),
(231, '#OCUSR_j6c6i', '', 'cSmm7QoiRWOx_5br2-KNaE:APA91bHFM4dONeDasIaeviiSC5vXtfueQv7sCGqoUU8jwQc8lkzWvTLe9wlWro73y5-xR16fniqlyKwHnWC3ZAW8x4ZtBVkHYJwAleF1X1HPquBJRbggByV8Kky0ESEbk2Zm2d8Vn-xh', 'android', '2021-12-19 09:48:20'),
(232, '#OCUSR_kSQTW', '', 'fDl7iec_TrSDFGy32nWFyp:APA91bHZdZvIXluMsZVe8k_MAvHigVKwEl9BdOt_haeUf1aTZP9VfjrRp7ob7c1f8lM0xKEVcisJ8Z9mTAe38DhGJCpLf3AtL33qJ4E80whegmrOGfSVIvGeiCPs8v_Ru3q1CtjELu82', 'android', '2021-12-19 09:53:35'),
(233, '#OCUSR_AAalv', '', 'fDl7iec_TrSDFGy32nWFyp:APA91bHZdZvIXluMsZVe8k_MAvHigVKwEl9BdOt_haeUf1aTZP9VfjrRp7ob7c1f8lM0xKEVcisJ8Z9mTAe38DhGJCpLf3AtL33qJ4E80whegmrOGfSVIvGeiCPs8v_Ru3q1CtjELu82', 'android', '2021-12-19 09:57:29'),
(234, '#OCUSR_gsKNm', '', 'd24OtyM1T6OHpvwCPRkqEZ:APA91bFu_KnEmeE77zUfaQGVDe7OSIniBEzY-JtwL_FL8p5PWydwBNFSdpn7bpXMmBvLXqh4ItvymxEogF4Wsd5LiPK6ZxeyRnGYC-92JfY6prp6kjr7c5EqQntgZIhx_wyhu8pXDlKw', 'android', '2021-12-19 10:00:37'),
(235, '#OCUSR_Dszu8', '', 'fDl7iec_TrSDFGy32nWFyp:APA91bHZdZvIXluMsZVe8k_MAvHigVKwEl9BdOt_haeUf1aTZP9VfjrRp7ob7c1f8lM0xKEVcisJ8Z9mTAe38DhGJCpLf3AtL33qJ4E80whegmrOGfSVIvGeiCPs8v_Ru3q1CtjELu82', 'android', '2021-12-19 10:06:53'),
(236, '#OCUSR_5steQ', '', 'eE7vGhY0RwudfJQRSqkijY:APA91bEVx5cz-Xuw6zhGut1LtDQRSNjDdl2s5LASVyxcEXzXIidNHg6GBiUvneg6knsAD3YBLcCgJl1QY7d_5OASPsd6gKuw2A47kEORnimFImQGQWBgpvJ4WrgrheY33e-QG0Mk7SaY', 'android', '2021-12-19 11:21:00'),
(237, '#OCUSR_oxgO4', '', 'fMrl2pcfQ6iluSvaGSdi6m:APA91bEV37G0DgAfAx5TRrPG1_kyYCI8Jb4AdKjpS3ICw123HiTbbcJlge9e0RfiA7Bm-0e9Pg7X-GnGtVOhKTvG-RGs2Q_-itUh1EKyjUp7-1_o45RNZTdWXf-jNThLNBZgRp447AW3', 'android', '2021-12-19 11:31:59'),
(238, '#OCUSR_uUFZw', '', 'dgVYQ6iXS3uyVXjFtQhZwI:APA91bGfSKyrt9MYA85fZXCLZ0hycDL9cv-84-KDj-RoMi2CiV5s5VF6gwNX1XVuckcGaIa0wXaWf92fROSCP0KmnjmZ9nWdkB0fcT6xOd7Sdotd3QoM-I25B1J49Z6yFlcIoGa4IGZ5', 'android', '2021-12-19 12:18:35'),
(239, '#OCUSR_pk1ry', '', 'fhApKlJuT-SaNm3oqITqO1:APA91bH5qGz9h-IweiB0p4qVvYYqR3fsfjSCx-dkemRaCtU39-6CCmGpC9WGNoIN8BRXaRQ0FtN6b_9YyyiO-iIatGfhPhv58V9qmYjRWMJXtOjtIGM8CAkeM-ofJPLrRxmfb7cih39_', 'android', '2021-12-19 12:28:05'),
(240, '#OCUSR_wHV6z', '', 'dtjOeFf-RMun1rgDT-AyRf:APA91bHRSw-XVh1M2NRvTZZvbZbRMufLic1vnkVM1_Rxi_JsnD75rpzeYY80top3JCKoLw4rWoQgcSLQOGPiN1h4P5YQUv4HTtfrnJ9Vo2cY-C4CL4-UE234tX3JGDw-nnfgKN9o0X2j', 'android', '2021-12-19 12:37:14'),
(241, '#OCUSR_93uwd', '', 'fjnWy15uQdqCk7ZiALidXf:APA91bGatAOmNH5XJ8OJBiulBlZAb3Q-5Kuk14UQB1qjeTQFMZaQPQoPsbgo2LxKk3GEM5v-Gdl1BNbhoiwNLA94Dv162EeO24uQXgt22Nw8G4GCWJkktaTvxLteyUnxbYX6cno47HRB', 'android', '2021-12-19 13:01:48'),
(242, '#OCUSR_JWzj8', '', 'fK1Dtl9NR2CjrG6WWoU1ut:APA91bH4JZYDlfBFzlDl9pR9l36VY0oSYkG7CXiaOtsDPemHJfaIEM7kinxptj_5QcdbmsbmWQ-qzWXG2ea7EdkDYYJb3lw3D_CqZ1CyRbkvePj7E2WSI8CT4CMtBqXd7Gi5PzmGC_-V', 'android', '2021-12-19 13:13:58'),
(243, '#OCUSR_aqdvv', '', 'cDNwe7LoRjOZZJs8ufcWot:APA91bHIIn8e_hxCD7NW5C5W_FWWSgkIuT3g7fpDzHy5RaoP-xZFRmFZN5QVuodeqNerGZgdP71ajPLomm8xReRSgB0l5hnfi67-ufvqQYgJcGo8ql0rupIGcBPKb73HKz2Xl3XpePhl', 'android', '2021-12-19 18:06:17'),
(244, '#OCUSR_YYd72', '', 'fYZUlIvpRW6rLKaKAiJ_9K:APA91bFAFXntwORxlL5g93w6AKBOw0fjzUdxhnDBr5DN8XtrmL2zmHZVePPvRJpqPbBqNlxoLxoqIBvuSLRIQcCwofbmlM7BzgbqcDs5nuO-m0Z1qyIvQpBuyfF_YPy7Q1lTzMWJ2M7e', 'android', '2021-12-19 18:21:44'),
(245, '#OCUSR_vloe0', '', 'fYZUlIvpRW6rLKaKAiJ_9K:APA91bFAFXntwORxlL5g93w6AKBOw0fjzUdxhnDBr5DN8XtrmL2zmHZVePPvRJpqPbBqNlxoLxoqIBvuSLRIQcCwofbmlM7BzgbqcDs5nuO-m0Z1qyIvQpBuyfF_YPy7Q1lTzMWJ2M7e', 'android', '2021-12-19 18:30:18'),
(246, '#OCUSR_RzOP1', '', 'eJS2npgCTHGVGxJsc0APB-:APA91bEAdgfyvqCCnkmhywdoOIKgeqDBiFWyA-8aD9_GCFbrqK6MGxJy1ubzzZlqnl4Pi4AFvCh0nvsNhY9zd8ZkrMPPdN6sYD7E83PPClcQYZX7tZEhNfCLdJPg7GQAqjgeix-mOsrr', 'android', '2021-12-19 21:01:24'),
(247, '#OCUSR_kV3J6', '', 'fFyOhBMnQd2ZWXqoBbZ7LP:APA91bFUynr5d6sTCZw8yGdPa6_tfnsspesGiRCD-dmPdujZ_PWzPy0vPhpeVkqBITeCAK72m9ld1V6JMx_VliLbsqCa1HSCg6gEvvQkXaC8_QdZjVumatxzHtSfX1DvOoJQwBeI28Xu', 'android', '2021-12-19 21:37:45'),
(248, '#OCUSR_CtBWo', '', 'cED0inaETXa9WlAOl4zJ8t:APA91bHUqGiEnVhdta8bR8Wcxlc8gl4gui8EucgC_rKSMKvmypI05V522R7RQCySPJKVZ1XKs4ZeZHl_ij3RpYqbY2_EI6EzwGK4jDPMlr_pclOoSq33RfCAYx6aOSrOuXkVwm7Q7Hjr', 'android', '2021-12-19 21:40:26'),
(249, '#OCUSR_X7xJf', '', 'dDsNqM2QTRGGZQcIBPw8fI:APA91bGbQPvSSya5DjJReavvV2-5EHGZ3mSYKwznn2WnfLCd-yyN-x1BrizowZHUoBRF1sEA6sDUdPpE96apAgXnHSRwEvjkKU3IAtTp_xDQXZxvAnx_y5ycBthP4N085nbY75PK7KJM', 'android', '2021-12-19 21:56:32'),
(250, '#OCUSR_RCLg9', '', 'eIaa9RyCSAqP9XG5x9dxxJ:APA91bH4KpqjPUwAskvRHefYiT5EnZAynPUw2nDrDxU_IyVPOQRuIE_nT2ywdmf9jVY84pARjCUjLQDmvHaaFXeJ0KEH89BFuD1jcdt_7pXl5c9ux7QRF_rZFfiFAUhK88GFrqxP8HNQ', 'android', '2021-12-19 22:23:39'),
(251, '#OCUSR_wQLkX', '', 'e9nw-fm1Q7qDEpCCpWPn3s:APA91bGYL8GHjpYuZ4er3eS6kRUfj2EtSN_j60WPtXdzqZ8m9Ikt-x1czthTYM8OXtj09xZWdxfX3f8fhRG90LkE9L4D1fCxsPhjldIjhMqbm8pCpqgLTbjqPSj755tUglZOIop-QQuT', 'android', '2021-12-20 09:57:00'),
(252, '#OCUSR_y5gFY', '', 'eJWPKR_bQCWq5AHL5NPh6m:APA91bHaqOJjb9PluR_LMRRRwd4Cx0H4S-DC_Xf37r2Fv_4yYNGGNCkycSjo7rFveW9lTsoAw3cxicRZ_yalPz3chhTeY8r7w0-yMaPwlN-wvKREXLdXX6IHtverCc0mE0HXUjqVf0n0', 'android', '2021-12-20 11:28:00'),
(253, '#OCUSR_86n4v', '', 'eUpoP7u9QNG6UVp1jD-nu8:APA91bE7GCIPknMAucqp-0dst4tyeA5xKYhOajiQqZQXjv1UZaMc0J3lL6wovFUG3Zne-mSAo--khpKG9xSOARbHES_YpVIccCs68L1FpioctHnHfZKaCxgRl1d6Dg77vDmvLjzQm3jL', 'android', '2021-12-20 11:38:02'),
(254, '#OCUSR_jHm9n', '', 'cF2SpyBiRY-jzHEBYcPh9M:APA91bFLI6uKICwwO6XpAQ6Zm6dJ9Bi0xzVb8RBBV8oSF0f1IPexSQr1ferAKfeHwmTnWI4V3bIriQsPRkXLXx2tQ-kVI9zeh0cy9nSA6iV1Fvw993ZSbHEKx23eSbnhN6AtN8nkmcWU', 'android', '2021-12-20 11:56:49'),
(255, '#OCUSR_kEnfp', '', 'e8_60_i1QQqy5PkCvtjcYz:APA91bG2uysLMI16paKfKYbIGlQvKltUcU1xDgxbSRGQ56tVuWK4B7NTOobKkZRIyA_5boWLIYybd-JmhGDd0HYn0JLFVUFh8-W8TjTr8ZKn3pU7nEjAB0yc8x4uSCMVq5skSbe1nShZ', 'android', '2021-12-20 12:00:07'),
(256, '#OCUSR_rBWvU', '', 'f0J9SdQyTVWOpNsfRmjFOB:APA91bFUkDLvkbfNX17HignCJ5UZW0jmtlqV9D-5_scJfi6qkldn7ha-_okpqCdJt5YW4dlPEeRGbgatWEmRL7dA7uGWiMGaJWkezvuHkbWUxLyQGot3qz4NTEb8AFy84Az-QCISHYy-', 'android', '2021-12-20 12:22:12'),
(257, '#OCUSR_acPri', '', 'eiR_02D6SbKDDRrAeS13Cx:APA91bEhMhKlgz3DRYCV-6REMeBT7R4lp1eVGh7CdsPkdubI_a9WT32nCQMksRIqtYEL_cxysH8QBP2bRjFCQtWQU0Y-5UmIqE4YMRXKh2nm-Tvw5royhswHHv9BAaIxbPGxOgzGr76h', 'android', '2021-12-20 13:34:33'),
(258, '#OCUSR_RPOGG', '', 'f2UBQbOgSja5jKWi8S37Y2:APA91bF7IrF7K6mPoBfxobJKCSr_WRMNxwvg9nAXsuH40YuZkWvgUzhDyhpN9wz8nXxcKvg1Ci_aX1_I1QBZIvwV2L7KRJ-dPxKswSDWOAJIZGS-kYf7mgKFtuOld_Ko3VhKtQDD5D8M', 'android', '2021-12-20 14:31:24'),
(259, '#OCUSR_zumxp', '', 'cDs7CeWlSca7TwAXe0_OmZ:APA91bFp-BkXLIOm0p_vmYXOO9YTnweFN2JFKAXjpVoKgllBZihoOXmxglY1F_3x1cLJkcQiWgx3MMyoEbpuKrAyG6SMzrVdxrQntR7aEwrsn_D89U_jDaczrdb7x5kEMErFysYpNtkQ', 'android', '2021-12-20 18:36:08'),
(260, '#OCUSR_xs6mZ', '', 'fixxCHOuTsqsTj-AfAANxd:APA91bFHdBuW5JqRXYE9EncKcXsTObHvkpTwrz9iCJP2ighS1LvI8_KbOuKnWDhzcNAmKvTji-dZ3Kd1g5uvBI0wbOLHUs7UcIelkzsBZz9hevUJ0EG8-Es05GgI9W3-tPxsZIy_n55L', 'android', '2021-12-20 18:54:24'),
(261, '#OCUSR_80DAz', '', 'd2MHBFylQFSMRXdX3jPrIl:APA91bFzX8AZrVFv2ZzBsVAYJKH27dVEO3T3gZtYGdsxdcfjg3xKt_yfvCInfcoOe99cASdamVc4XIdxoZiLiSEm2tLIIqptAibiTkPfm6Km-iM57KDdcXBVmoCXi8OY3rOw_NWQDvTO', 'android', '2021-12-20 21:17:02'),
(262, '#OCUSR_X7Fby', '', 'chKr71bsS2uJ1GEyPcDASf:APA91bGTZ3UjQcV7gYY4SDL2ZCPzBMtnLO473dINNZMRSDx5-cGxxeMfqOcibUc0iv436Ba565RDkhAJhfxUUTw3D2vc_8TXCHYxgbk3tFW8VKT2s6mZPpq_qiB3rIXTkTEQ3kquu7Ib', 'android', '2021-12-20 21:19:34'),
(263, '#OCUSR_sTljb', '', 'dT7JgtlcSyWmJIAWujQqYK:APA91bH5u782dv5Xg_Pzv7AoOTyKw-wgoUvNCw2abIrNmAWFxKAJNfnVsru0Q2WAEeIridgiwkO33RQ784ffTi55dJPVtLG2423nI5fafHDnGEcq-zJLaCD6EAN7Xw_sCZSzIlkAFC-C', 'android', '2021-12-20 22:03:28'),
(264, '#OCUSR_2L2ZI', '', 'cZ87TOY3Q2WNH4T56vm3zn:APA91bFIdoO5MFXD6naNM3fBCUA4gKWJVVROhzPpRNt48nFctr6xGNyA5AsY4MyYsfcve_-nKirZYztfGUIFQ7rJEfq1D2wPuKlLP0ata5R9pXm0ENsXB0DaiUnagfLfCA9Vp_AO5fW3', 'android', '2021-12-20 22:06:15'),
(265, '#OCUSR_Egvhl', '', 'ezAZc4J_QoGXB-siNeepyo:APA91bFVLW5UgRdb0q0v_OtKkSUrfosMtHTStBKgG3CJpM8YCDt64Zi5evwfpaDSWnhBaZcUWzBlDJJACJdSHIZa5UI5ZZ4sWKaPxQS3hJCHBcOnwxJbt3UJZYHy0hZYsWmDVuRX6fx8', 'android', '2021-12-21 11:01:12'),
(266, '', '#OCDUSR_EyWCi', 'dDD5dBFaQtSlNRtT9oEFqu:APA91bGgwqZzvvvHhRMcKwYWutCStmJpbYp6AI9TGBKQ6ikOZl0BcOgphuOAop3U0CiajtzbdHZcUZfJc2Mhufo9Rq9GMq3SA-97FgrFQldPmewuY69-f0cnTjKAwAhgdih1bfzdBb_F', 'android', '2021-12-26 08:11:07'),
(267, '#OCUSR_decHE', '', 'fi3YDcnyTNmMMp-xV2oDMp:APA91bFybZ7l4L3A0tgxsYAawfHj2GXnMZdhoZwPGQ0xBjhub8nv0Vz_bnkG8YPYFI15E1JHVfxZbzJtgG0FoLpfp4O8FQMAu93ma34viOJsfijqTeSy69HX_nRJZHR0YqXQ1JJ0Xk5y', 'android', '2021-12-21 11:51:54'),
(268, '#OCUSR_cIZo1', '', 'fEAaiz89STmDj0UklVdK0H:APA91bFbDfTUzu9fAFk9a3BIxXt3mCkRmm8CpsZHiUrF4VhN_ZzLIYaBIwZau1GgEG-WqwCtKjQ9W6GWHgBuZnPSR9uE9aYutG1MRBZYi4EOZnFdQN7tTGChYMCvUAIfEGBrwhqBb0v6', 'android', '2021-12-21 11:54:49'),
(269, '#OCUSR_3WMhA', '', 'd3RYJZntRLOAmw39ZhZcJo:APA91bFGcNYb4M8aozUt7oWLVkjiZwwuCySiveYnnIkcXB41JsN1Qrx1iAyDjOmXIfZc5kPF_bHQ5S41SdKzpPrVRSfZNEsMFX_fHQbh-QYAt6bGgNoW3uh3zknomY5YnF5kFaPdL_AQ', 'android', '2021-12-21 11:57:13'),
(270, '#OCUSR_GOmBY', '', 'caJ5oQXoQBKnCImZ9pCDok:APA91bFYu6F7V7uA1Rp-QchizSRZdV5SJVxXMsNphXUaZKnSG_4incQz7U5mX9clXDEq5-fX3UbMdN4Gbn-zb2B82DowDz8r4641gajtwLVgBHCJsL1ox3jc4aHasCwnos5MjsSdn0Et', 'android', '2021-12-21 12:16:43'),
(271, '#OCUSR_u2crb', '', 'fejoicXNQeGyQfgSysLt-u:APA91bFYqV0AjMUj6Zhin3tEenKz7pZZvgZZr4yL7WZQOfE9ykS35o0zu3srUjlTveLTtwr3D4PET31JX7pX0EDEoAqP-a5UQM6e3WwcayOAOCRrVe8HvL_5UO62niVXMDki-DHLmDIh', 'android', '2021-12-21 16:35:50'),
(272, '#OCUSR_P6HQi', '', 'eDZHTGqCTnC7c6vp6y-z-Y:APA91bGZk4pT_5Dzjz8pQ34L36JLwf8IhXgWC7oVkhyxOmVIt12cTbUPTr_OA0FeHTogp0gcCIT-CV_spRVJam8AElyBHysGIng6VdP47VLI_u3XwfecQeQuUAbYI67d01IRsoMJU8dA', 'android', '2021-12-21 16:51:58'),
(273, '#OCUSR_HM8cM', '', 'ePGIq1qfQmWsocNnRxEwt2:APA91bFwkQmu1cgB07fMUXuVRMm5NcBiD0MuYMGnbZwQNsLQWXJKhXE68_Z54bSCrwneyod1xHeqaxTjG8Ix2mKfAUaZXPb5chHxewBWzmezo_GTfXQbkWxxnu1YaTem4mHg4H4H_JvP', 'android', '2021-12-21 18:09:15'),
(274, '#OCUSR_lNlg5', '', 'fQTBDz11TVm9s9JXCJY9-1:APA91bGZV6Tvw9Ho4vcJjyUq3QeJ0vLjvL_1afk_X94-oSKN-jb9bbs6OM2PWj1tv9hTog7Xt6NHSCbxN_CuoS7X9-R-aHHC9uPrbb1uS9zGFsYsM6VwCgWn929OmOqWLrfs5t5JOeIs', 'android', '2021-12-21 18:10:15'),
(275, '#OCUSR_cXirI', '', 'd8alUT0tQym88ubiofXust:APA91bHt2P9RgZ2ROZPTMDoBShThZRmqhnkLlldcqvY1tDvDbwahU4hEn9gvOvm4hxTA42Bmp48zxJzxE7aph3aTcs5NVQsn755ArySWbooZ72_lIp_HA7pPE4mmB-B207irpc5Gvy3N', 'android', '2021-12-21 19:09:18'),
(276, '#OCUSR_JvFdF', '', 'fTinE2IWT4K7EIPT_Bzd5T:APA91bHNdSSMlBiWzXUtuhzqhoA6PzcfqeL-1RInUktp-TiOa8BL2_Cuj2-5G2MEtLyURtjSIyVx5qkqJekiC-oBk27161R-ezXFA2M-Mi6KGGANsXcbPk-aaSwFxZP8ZyZN6r-B7om8', 'android', '2021-12-21 20:02:25'),
(277, '#OCUSR_Arnqi', '', 'dYqsfSpSQkuAivENS0Tbdb:APA91bGasIe_eNEvY7KV3TEyxcuLucafLiymw70_ox1h3nPbK6hEzX99kH1HvY00oIonljm7YWG_MjBt2Qw-08uOHSFOmm274kllX1GdF1AZM_gtHOgG5sh0YuDj8_Tz5XxJOqwZD8iU', 'android', '2021-12-21 21:09:59'),
(278, '#OCUSR_r0ZKZ', '', 'c5dM3wgnQzqS2_vSDCiVQB:APA91bH1OJrXfbtrlsIbgXc3auvkHWDBr16MeBXa5lcsPnTvbE8Kfluy7ugmjLwXW38DyePWafKNfAK8pC2_gPqcrJT0S_MQF3bgqHysie36Z_lkmc7Rfb23sujReoSZVSTxYBNelA-c', 'android', '2021-12-21 22:05:51'),
(279, '#OCUSR_BtgQj', '', 'ft1ek4BjQ7mm2pqAAquyVc:APA91bF87Fe6gDkMRNVn4dN52TWmuX7U4TWq9Pfig-AfECia5YG1Gs_LWeV8He-nVmNj8uNi6wtiVZ-QilKdK9j1kYb8JVZw-08xXchU8xrJgjuSqoKrOxFcJTol1udEtldbqzI7-4d-', 'android', '2021-12-21 22:49:24'),
(280, '#OCUSR_q3UKv', '', 'ej2rdRskQ0mtWWSHUXW-jE:APA91bFUrGvPQaY_-EEP3meMG2rf0WYXh_irU2dCaJehEWtJfr4MvQltRrgVIEEwCyUvJVGrSMJ_sTWej83o8FDgVuFFDgzU1RtNMX0kY8iTyQJTxjFugxbUk2U5bu81ey0WEVaFiVox', 'android', '2021-12-21 23:13:40'),
(281, '#OCUSR_Q1iIU', '', 'fnJjDcoxQ4aKHkYulqcBAR:APA91bFKNkVsKoRDOFm_o79d_MJdov5GzJhjlgqynsYUg6Cq1B5f7xLdhp1fIHT9_QcZRITqUFd7B4b6a-blpDC7rDygrOgDWJfGri1MsVpVBI6josNR9EgAEh7yGBwU27tH8qyNTHG2', 'android', '2021-12-22 00:35:39'),
(282, '#OCUSR_vF7wB', '', 'cDhskjTIQdyl8EDo0NowfA:APA91bHrXegCYJVStOlDghxPpPJJboDacmZDeP6RamlWZc3qHeO31wDobTiwuigLXenMlddiV6u105fZ7V-B7Oc8r9c8zVuy7BYyyZx8Me3FsjpDGJXBy6zKlKwH0xz1tnClfEpLiIyH', 'android', '2021-12-22 08:29:06'),
(283, '#OCUSR_r08Ju', '', 'fNWTGjtxSz-JxMSOciehdO:APA91bE6phbk09adGgFpt92C0I9NisAwG9Hu_rTS_CTHvQfHmHQ4rfizBadiwzoZucHC18g2-NPha-huHnKQ4rNujp0y7-A-_jALI_Ggs9ND-SrC8CAn-HOjqo8biQBQ_61e5AScenwF', 'android', '2021-12-22 09:52:51'),
(284, '#OCUSR_NgACY', '', 'dcB8vXYBQXekV3x4nc4glM:APA91bF4aKWgfE1QKXoo3pv4FSw7kiQRUR1LJnS4groM4AjE3Dm69ZV7MmDbKI7m2C6FhHquy4VItbYVlophqFaBoDc8fXgHC4lsyWMOYRysHl89THIOzFUx08SRBqjRAlsGL6gu0vp_', 'android', '2021-12-22 11:16:47'),
(285, '#OCUSR_TlHNw', '', 'eZdm869BSnCyIcfGnEwzIC:APA91bEanhB21tBcsTVRSZ2LQmmq9-VkX9TZHx-Bd7bkCjqT46ruAIwubTsvW--oc8_LLBVazkmH5sAhOMUwrcElRDjeLekIkyVsw_oFfi_ZHz-3WN59TEhnESjFYyST10t-uIh_jshF', 'android', '2021-12-22 14:21:24'),
(286, '#OCUSR_YeNZF', '', 'fPqe3gp_TRmyrMLhxls4bX:APA91bED4vM681lF75T1NBUcziM-UMVbr-58ZecOJWRfRGyGk4SNgLNuhNSfV0FwEdsGyuxj2j7xikB7If5rEyswxQNnZXrpxyL504WfsbMzcMEyV-QyhbddgpOk9g7XdrTE_5iqJMeN', 'android', '2021-12-22 14:33:16'),
(287, '#OCUSR_n9lUa', '', 'd8dfYw3WSwujJho86lfrj7:APA91bHXIMh-nfh_jS-gnpts3WQuT4bpzPAw8vzExZ1x84o9WEE-ujoTwcTbSLIT9rpP4-vNBWy-hxFdzXxmbl0vJEq0pZ9U80pQ05UMAwoBe-36XrgRMM7VV0UoSRKWRCunBz80mNDq', 'android', '2021-12-22 20:21:07'),
(288, '#OCUSR_Fs9f8', '', 'fz4HPgB7Tfqf8ddhFMdGWJ:APA91bEkn0dzLK9kszj4COBo_a_F2_rlvmDRffp-LenBeItFo14Trt5MXjijXY52P0NwhF-M8LT7MLNhfIr5ZU6UmDJjb26EWBNXZwg2gRifFCM5QmbDku-mVWpL2ib9CNcUeZFSLe2V', 'android', '2021-12-23 09:07:16'),
(289, '#OCUSR_rwlE3', '', 'fz4HPgB7Tfqf8ddhFMdGWJ:APA91bEkn0dzLK9kszj4COBo_a_F2_rlvmDRffp-LenBeItFo14Trt5MXjijXY52P0NwhF-M8LT7MLNhfIr5ZU6UmDJjb26EWBNXZwg2gRifFCM5QmbDku-mVWpL2ib9CNcUeZFSLe2V', 'android', '2021-12-23 09:11:48'),
(290, '#OCUSR_UulZe', '', 'dj9b-My0Qdi211mvlQ2_2X:APA91bEAVn8J4XmNDId4ZQveNn0v4KKdgGKy6MxdXKB-cmxOU58dknfpIetSMlD3e-5TOQeWcCt10HY82NHwvbbr4o1hk_a4_5Y-T_r4kzsaQva-SLXkFHs7OoHmxwj-59U9pZOXgVS-', 'android', '2021-12-23 09:21:32'),
(291, '#OCUSR_e8oPw', '', 'f8HI0zAdRKWcu8r6FpZRFx:APA91bE9w8xZmeFbmmfLcxSFV7tSNSHNl8vf4lXi_4khURMCO8i37EnMzsuyGZlqGMXNybRhyYMOF3MrWyyiieLcIsesyhKIJG8XqeSxYEn53U4zjD53txOzI82-q-y6wkzONGSlbHwM', 'android', '2021-12-23 09:27:44'),
(292, '#OCUSR_P6vcv', '', 'eUKde_6wTkuBfjm0KwTlTS:APA91bH7Dm_91QSUYACLXjZ22V5wIBwO7TfEHvXfak1HKnwneWXFinmuBcQaP-9x8_cXn0Ki1oWb1Y85MjhdCY4PePEZD-HNxMdeusg8FwoD6qpu6eEmKgNCy96E9AQeDdGzfwy-Xl9_', 'android', '2021-12-23 10:00:55'),
(293, '#OCUSR_qRM2Z', '', 'cmD1CzhvQSWzySlkrhkysB:APA91bHRJ3YfKTpautwhEr5jdPFEwOh9fuqeSH2jmutguO07r_nLQE3cXNuAF_QadPrLKYuOUibDpTi63gc-Zo-93FoeJ99pJeONJdCEsrwEAjxpf1OMqO3tSHkLOar8n07IjwXymDVR', 'android', '2021-12-23 13:31:13'),
(294, '#OCUSR_3HGNh', '', 'eak0KWFPQHemXCIPAP9lnQ:APA91bFKdxI_nG11uvzKnH_iuchKgB2Se48zIeYpf5bqXqJd7MLokoAFA_ut1KhQyn3nDaAwrAv67kgRUB_nCh54AJoFyLOasfdhSky9T0PFgfoagFdIirbXqtd3ZU2s6u9RuE_DCS0E', 'android', '2021-12-23 16:39:21'),
(295, '#OCUSR_sgfCN', '', 'fI4YoTrlQvuSUFkENuoEjV:APA91bEpzAOXHDAAwyxtJRyxVcObKT-CrV0ntIv9sqeR_txOYOyL9RCkHsaf2X6k_aqkRIq0Fxp6pLnCX6VHsFBgflIx6M1P9UCpLJr7SzSiLNhHJ020NuJbRyTu_qJmeCCA_i4dSVSk', 'android', '2021-12-23 22:17:21'),
(296, '#OCUSR_wLuB9', '', 'cC91ireFQji2ywoyESuotJ:APA91bGQt1DnsuhDt3kbj0iE2jxWaNX3bCkme-N8si6jI4JbKwwIe8nD4ZeDg5aE7S-HyuN5dO0-ErLzQulatuoOKjNe7T-LWiWCUnqEmFo110YgmNExvLHqQgoWABzx43spgqCjOCbH', 'android', '2021-12-24 10:55:09'),
(297, '#OCUSR_qn3ld', '', 'cLarO_CTTzmfV84okhNYqS:APA91bFIJcS9kpsPLq2-QrfgP5ogLlEkZNRq6PUxABLM_I5T-KZ9BLLTS_N6xV4yc0Q6DUaMjEdg5QY7-rZP4XoGdjx20LuMzvJup09LEuWAD18HgHqoTKiwTDsoVYpqAVqa2o_gyJH4', 'android', '2021-12-24 12:03:03'),
(298, '#OCUSR_BQKro', '', 'dURNk3DiTVK_ViWqevzkyt:APA91bG-Qm6iou7y_Py8kCDj7Kb4zNYd17zHxgKS7C7TAS92LkU0FJ7bZE6pu2wCcwpZ9ld4bZoDaVg-U1YYXxp5BerHN6TSfNUroWBT7zsFZS0IvprKKIEhwu1JcAkftGqAcoMeZiwE', 'android', '2021-12-24 12:25:53'),
(299, '#OCUSR_RGlb8', '', 'f2Qy12GxT5O-8MOtTeiaYp:APA91bGgW3YfBlUTOWx_FqxwrvllOkTV9OmV_cUVCFooqRRvhSL1uLP95YW8nzWMBmpaWOsDlDFLQvJIGFTIf9Z5TQTA5SPkDvvmDsWoEsYNMSyio6gx5f4VoCrWb0NoaNGpLTTuZ5p-', 'android', '2021-12-24 12:38:04'),
(300, '#OCUSR_M95EV', '', 'd9z-cYtFRpmoklzzQUn-g1:APA91bGQ5qRzHXuYgxn_2OWPAC9SibqhqMT8_DTLZ1sqaEbRAeZ80XU6wlnq_6vlDphQIenXt4CXthaFYjYbioDaq-t5Fuxx8iAg-2FNy01HKsF7kpj1ZXSWgb7uCFfjErRTMeu7nAVi', 'android', '2021-12-24 12:47:08'),
(301, '#OCUSR_jlmwi', '', 'fxx9pC4KQvSmP8x0Ka4CoA:APA91bGVdJAIq_s3nXWrmYjN4Tqu7m1tlZxdvMMji925lNP-EXrn4F6vPAQQpxZhWvX-mQPpqldnj3tWB-Cr9TNgmGsv3iLju6XHAWqhGZ3XQbmWelELu16DFu6RaCE6EZRei0TKtit2', 'android', '2021-12-24 13:20:10'),
(302, '#OCUSR_4M0MO', '', 'd5LVC4DhRc-RMmwKYEDP2Y:APA91bE2SOpmGIlqFceiQLYm71iBP_GocAH-4_tIw4Qod2KNYds_fOurkkJxJ0GaQ39FKhGbCGOB7ICaoxnpwlbG6QJDzZmABE8wZ0sRIdqshgL9qgvTwZrs0VaeVFSeVqyxJ05UqxpH', 'android', '2021-12-24 13:21:35'),
(303, '#OCUSR_Pd7GR', '', 'eSWaGeDMSdioI2GcyfMIsX:APA91bE4folnnef249m1rSou3We1R5C81VC7NtezudUrmtLQ70NKJCRfPtxVVTgJwllPXbn-QGaxFQ6xhi2otBoid58OTokXbAEay8j4U8lc3Y_1RTZpFb9OFEKiP6mq4xuo-JdWaa4I', 'android', '2021-12-24 14:01:40'),
(304, '#OCUSR_wVc5k', '', 'ft1-3P0QSMa6Rea55Q0f62:APA91bFbELpMd-bK3ub5r2voocpI0ScvhJqrAqJ5VLoibIQnGyqc2Z-3BxEt3BrNk3ky3m4rnbjamC8ibvMoF5prLZv-1hxlsF4onmOHPvyYRYtHepx1KnkC0Tdf9HPQ3kFQkI74P8QK', 'android', '2021-12-24 14:04:20'),
(305, '#OCUSR_crExa', '', 'ektaBgqcS2yZBU78Roa3sp:APA91bHaLY1M_xADSgLWlsKGhFFM0G3HaIrEZzbsN_CJFmmrYKgZgxh-KejCnwuL5loEr8r-QtaWwWDIqZmvV535mrr3SrRce7Sw49gldM9DZLJwdIqqqP3n4rXCr0pkl2HlmIzxqSjs', 'android', '2021-12-24 14:17:43'),
(306, '#OCUSR_gtHOB', '', 'd_5r4ZlvQ3GoND20Tzzgsk:APA91bGLgond67GC7wi1gjrBwTDuSGW4mPDgehbyuHXb6U4xrj7jnh_xaoN9TpyA5-4oKlXhBYy4dAjAAXYH6psZVwfJ7XRUjHl5r1ZY_ZKNhN48TX9QJR_HySugZZy6YtSPJwJqTRC1', 'android', '2021-12-24 14:24:39'),
(307, '#OCUSR_OeXC0', '', 'dvGL9QG3Rg6eTqDHBCgupV:APA91bEoc_VQAVtCEgDNU6WJUswG0-BTUW6OXQ0cSuI8pGGP3ayljU2yzAsBJKTaj845YlvsR4ebjMPH3fpucua1oA0_Eg4wB-4Vww7Y_qRxVhbeSiBWTNfA-On9Xcpshdv44hEqk5D4', 'android', '2021-12-24 14:39:24'),
(308, '#OCUSR_3mbIP', '', 'f2enWXSdSsae11OmriINBa:APA91bH5x8Z4-v7-46aaW8u5JcWxgQE5yqOuCKox760WU6H2eiQwrcebRN02P5LX72qh6fd7rZjvHZvPb7uLwOkz00Yp6uKz2uHQM-Ezehc9ybqtuU2u02SI4Z8spMXD7qcx9ld_VLvD', 'android', '2021-12-24 14:41:35'),
(309, '#OCUSR_yPHto', '', 'csjgFuuqTm6tIB4zvtHwVx:APA91bEqjuJqK0SDKLfKuApL9VnUXHH8TsfBkGxQqMH4D7iIh4r6HdVAIHmE9cZ27_9lfw94o2mVH2WVJCBAljHfvlUK8rCp8bzIXbmxZN08CqVpm8ndC6uZKC-5yRqGxXEHrZJQq-LM', 'android', '2021-12-24 14:52:00'),
(310, '#OCUSR_NDyrW', '', 'frUsW3KiQQiSmdyP-i1oJE:APA91bHE4yx9WPurng6pxF4N2FX4U4vRn1lhcuiUU-r-IyFMvMB8q7G8hN1-rqRimUIsDaGbihBPLG7NHMUk7VpzTVeWKroRc3QdF6GvJlG9N50PQ5PbJ3Mrj7SToalfqXr538q3V-9a', 'android', '2021-12-24 14:57:40'),
(311, '#OCUSR_2KVcj', '', 'dMe5O3WQRXqc-c-xGrsebJ:APA91bFpAYIwJz_ncKumCf4pzfUxuHxuRbURQZ7955I7jrXe78rDmVSCvm8g7OwlC05opQMkpVMSVyZJFr89RYzTlsF2P2o9JliYKVd16Yxxhw0blfnqkNCP2gcOCOHeOKHFTmYCN8NI', 'android', '2021-12-24 17:46:20'),
(312, '#OCUSR_dVreA', '', 'eWLdoaUCSbGzmFOi2rKlq0:APA91bGTfNqrNeL7Ct7rqbuyqxJjYudnWGmkSdoRU7PwQFpPyQwH4RivkEcKqA9gQ-tBIouYKveh2r6ilKPoRG-G_dfvLINoAFHjfKopIlh3QFciROpidO6Ek-xc6mxRah-SWZ0NQELI', 'android', '2021-12-24 17:55:44'),
(313, '#OCUSR_O1AYo', '', 'ftuCc-_8RCKG-VK70Hsvh6:APA91bHrmBRguTThlMidgKJ0_3XJi2kHVVDrAGBC82OxEdc1FnZfet5Qo1IbMq8UiEdAA6BGsHS0bYKjWfGjZe5GBknaqvNQYjbNRP3ABZPcAsnJCmF2NF0hSEIoJQgy0n_aT-EA5KEr', 'android', '2021-12-24 19:51:02'),
(314, '#OCUSR_gZOUg', '', 'cKhggdlORPiDEN07rgP9NW:APA91bHDF2h04LUktqDI-J5k1wyHdyIQG4dtr8ElhCaM7wr6e1fCIxEEk-lR_J1PcmzbOmC7oE4A1gJsP4cx4CmlX4xDgKmjm0GqycU9bIf2m5jDGprCPu4jUctQGGGEdJxJzI6WNGiN', 'android', '2021-12-24 19:56:27'),
(315, '#OCUSR_Hkxkr', '', 'eTaCyJx8Tuu3Ng1zQ6lt9O:APA91bEvpAwthC4eozeho2x-t7sQNyqWPdQ5ELIi2-ACdw1AVZuzORJK97q3NRzqL942bzHw4-JsoRO0ngOZlU953OAQJmM0TRf8hW7GJYaaalyJ2C8U17rI2gb4zlqs_V78I2kAToLf', 'android', '2021-12-24 21:23:37'),
(316, '#OCUSR_OYAwQ', '', 'eZwGg-NwRGiCMzRP1d-iMz:APA91bEhsRjY5AoYxW0I6c5PBhC-Sw0nBbZJg67KiEji3UuoSDh1oxZOpOpG2YqNxCAco9GDcnNEHlVkKNuLqwjH7PYN65HFD9G-suqsCbhILLwqA-1X_oiqaDxbmaJvkl89AvOQou0I', 'android', '2021-12-25 08:09:12'),
(317, '#OCUSR_XxyM4', '', 'fGZYrZ6hRk-yEQ0X5ur7Cy:APA91bH7s1NcR7pY3kxZnOEQ2fLz3qkIFKuZ_A_eZsygF8pD7_ZoovLgCmWXA0wxy_l4oZ43HCWyYf-OkQdMR-P2-NY8JR2sofwG7T35C0ZgN5wAeZkhwKYDGe5EebTBzCwMEf34Pjbn', 'android', '2021-12-25 08:47:12'),
(318, '#OCUSR_KULgP', '', 'dpu696xqTx2AYkW01B4RFS:APA91bElYVmdUQsjA580d7IkJZUinmp5ItjH9-Q7ehrjXsdEEVLvoM1-woD7aFdDkfYQv2MJHaFjRjF-TRovN2gLib_a6t5QKVSgbaGnmUkwrQ9Jl6sPH1sMLuxonG0HKI-r8J7_IcR9', 'android', '2021-12-25 13:07:44'),
(319, '#OCUSR_KWoLp', '', 'ctsWpU7ITauqyUujbUveHH:APA91bFeXqTtzjYCCr1MH0Gg5JEaSi37Zh01ruTqmEUKU4x65tUaV1TPha9YT9OErUBOOVIiiy_8bZV9z3cQTszPHsrmjdm9rTIyjxVjJNmtd5zWxj0jA6B30WZ-PHd46H15k_HRt1kf', 'android', '2021-12-25 15:31:18'),
(320, '#OCUSR_QnY9P', '', 'fYlIJkU2SEeQqCv9MifhXw:APA91bGaNdFCtBGrmT7xvpRCyGhQFJZdha5MicS5y6vm6-rLbrv4_ZkIUh6PIhvQ2Z1oTt69OKdUib-0mzLcLDCweAuFp4CHi2LDtjiVNcg24Cf9CtYCBjcRSGyRE8wYkEn6sHopyqTL', 'android', '2021-12-25 18:19:33'),
(321, '#OCUSR_R2WEZ', '', 'f9d7vhwxSLKDQdmi92HH72:APA91bFhPwWEHD_EdEoiY8qSXVgDrMs4AaMdmWPpNBZjpY4RO8sOiVJTfAR8ACw2cFGcC5S-X-7bNg1q3xPuUFCgddZcS6wJqn5iDQeJgHtZs2bILDp7FvtjQUmzaQpFTAu3jU29b83I', 'android', '2021-12-25 22:03:46'),
(322, '#OCUSR_JJ6R9', '', 'e_04eUhTRiyLEdb9eZgD7v:APA91bH7SVyhZKmDweapxD0ipbwG-4Bz-WZzBtukMV88mJhQO8ctJEfXuwlNkbdB1vkhkev-ozi3NCoCLoI2ngXCp4v1I-uOiWgRvEaH7Qph7MPDzRRCl4dPHwZfZz3QaG0sM1RrujpT', 'android', '2021-12-25 22:59:47'),
(323, '#OCUSR_lP9IY', '', 'cyIXJefFSaG1spgc8S3XVA:APA91bFtDERoQXdOpUR49FrfuHhOqz13oqBnximn4RaHEQaH6fNOz6PCsQEzjdlbeLTrw8rM0uN4ACAJ-ZVZUwgJ163VLDR7nOX-hD0fOvpAVZlpKsew7xUkYxcTTflVqWjQcSMkApOj', 'android', '2021-12-25 23:17:21'),
(324, '#OCUSR_MOtYI', '', 'ekSv1V3hR6Ca8uhfCmxzwp:APA91bE0lCTmQKyqvClCAtw5l3y-OaWxDex_TEJJytpU7qaM4BXK3NSjqC0GioJFhb_zBNyH2yfM0jviKSig3HwHHUw88N2vBmRKl5wvtydvIbx0RjiFJ9ljpveUZMHyT9BY-ww6sEBM', 'android', '2021-12-26 07:35:22'),
(325, '#OCUSR_oqVhz', '', 'c-_kqMIcReGFSQJk2viNNW:APA91bGFFQ-E0g--RXlmofRu4v2w4Yskx-P_Pijw5mPUdZV-G2OdlTMi3nQo8yWS-Y2kU0fUMFueQalaWtDBbtGmP3SWlKPSzuphvO_KqGJpfbyMxZbtKWMERjy4KVzGEOhUMLu3WY5h', 'android', '2021-12-26 07:42:54'),
(326, '#OCUSR_RJ0Np', '', 'cmo2ZrtmRG2MwZ4JZIBJZB:APA91bGnhg-kmgOAehF7toA53dTuoiv0jybiEJhoPhNydUuo3KmmiWLG3IQ3EizxQ2nSD2EwGv8ARQqiBWJEPHEt7VmmYIGXYe--LAS8Ju4EJY7UO6bkC4v0HH_B36z0157tWh5oH5Ls', 'android', '2021-12-26 09:16:46'),
(327, '#OCUSR_GOHbQ', '', 'dJOGWyxUSCmL4mbgNmjtbV:APA91bHWdYtZLeuMwfMsrCBEUs_UCS0dce5C6suj7AIlbDLIT5KfFkaalXAAW1QrHfUWTTTVOfsERb21cOe-4FZ5V9Ct95YzFdU9eGbkTRVGUd92k6W6IV2vr45vkMytpHSY6JOwNLzd', 'android', '2021-12-26 09:37:16'),
(328, '#OCUSR_DfQWa', '', 'e6BkY3ruQguON_V51zaDFt:APA91bHCA27KHFMeqxDLIz5r9OdjXVWHLXodYBElUemhjufePGz65xPjHIVF1RtIeHN863uhfaWMCUkgpMc3uG4kuOmkxoSJLg4xp1CUAzgHxQ7B_7bM7eCGpkrUv1pdIJ5CMaf-sH5q', 'android', '2021-12-28 00:28:36'),
(329, '#OCUSR_l5HIy', '', 'coqtGAMhQE2IYeU1J6oVyS:APA91bFh2bEcebICYSR8zau88bpxZ3f25QhC4H92f0b2lOkMKoFDq6r2k0hq_wrPXmifp4rmmReBhxhf6mJqa6j1J6QYyvx5fdOu67OC78gKXy0aJir2VCGqDYfjCKuXMxw4wU5kDYnD', 'android', '2021-12-26 11:08:48'),
(330, '#OCUSR_33WBq', '', 'd4-fcJ-bS-qwiWkRh-Ffqt:APA91bHcMMr8Y0KqQJEVNwbV5b9esXmye2hTl9pGPPXbMCGFfnQIBNUps1xyMWrlU3AftLv6iZvbeCvGaQd6lEFgYZHCQW7gvpkcTgHX75PF-Jn7v8hDxIh19Nev_wncB-YdAw8nBjZC', 'android', '2021-12-26 11:34:25'),
(331, '#OCUSR_baZtS', '', 'cZncgwZJQeanB4uNPzFJRI:APA91bFUbYVC5bEMG-e2ZpFazfS4p7znMfHPOB8UHuKVI1H5DpvWB-cCRvuqy9a588pjjDpevwdrLfOy1HVB8Cvvc6iCLhu2eIlIcpeESljU1LMXZ2GsK2e4RpwjQD77Gf9vf8etm6pR', 'android', '2021-12-26 11:40:03'),
(332, '#OCUSR_4OaPD', '', 'c2224wFoQMm75w8ThUvCVB:APA91bGCY1i8yx8_6481W3z6XFNTGQYj70fozzLCEFmR6GFLAEHdT_Y7NCQQqAUi8FLeMcz1iuNOs5lNivTlqNOxxNpTvPOUVSJ03WASCGKs7vrE4L6kBF9T1bn_ndqxfvHx8tNnEIDI', 'android', '2021-12-26 11:51:44'),
(333, '#OCUSR_PW8Q2', '', 'eeZQ1LjKRHeWpqsYQsz5ix:APA91bEI8Gc7xikgFm88Cxj5IvE1Y2tg5AiGHx4tkIlEJrFqznJGU5YPpiEjhBP4w3taEIng1jhsAQ6ykKdt8rUxlWpmttu5K-MAMLGmoj4Ow7sJtY1Kl6OH4V85Nfo-jAE8Q0uh2ThY', 'android', '2021-12-26 12:35:38'),
(334, '#OCUSR_yTmE9', '', 'cks16fAiRtO_2-DPQZwCzD:APA91bHYLezhmpvVwkkIfzKkPCDwdYpNgV_aFDDBtsuvNylOVoNf-Mt8EQn30YhWxIHzoCnpxC5MNXG0v3OCAUBe-MZ9hWSdLRVzn15IRBiib_-YUATKhp6JHN07pkjdUaE0Qj8bovCy', 'android', '2021-12-26 12:44:34'),
(335, '#OCUSR_m6REy', '', 'dWid_dy6R1iRRLQA_V50On:APA91bG0u1HLF11yMBds89tXcAnkVKQ5aKtOSuFyWQe2nvzowfu9T2sfngR2FInh8xeQUAX5E2y5Ndgj-KviHIf-8DOo94c_uEc4VL0E5FMglEYoajsGzWTSp5GkJ5xipvwPLRln3CTf', 'android', '2021-12-26 14:03:34'),
(336, '#OCUSR_6uob2', '', 'dnhkweMQTTyPJu_vvkYzqD:APA91bGiIKOPUqAQrikdax90fKgTdqfzrkVtINjfN-YZYaP2G2-qLai005iyYHl1Q9Xo4zd7XAE2W65jHUEa8tq33glAiOWpnJDcDHVMuSVB2d4lPCTjd6x-Ro2HpLhbXg9jnk2AhcKM', 'android', '2021-12-26 15:12:06'),
(337, '#OCUSR_GNeKx', '', 'd2L9j2lGQ0uzX06owM0wVC:APA91bG8SfcohdG4zPD8yIDw1r-B1LQOmt2OfMgtPSI6Ep3EslU5BC0JQnGKej2l9pTrVBkVEwFR9RC8z1W5zs_ILnftzbeqbIaPITZNwA3VBaqg0R_q45QlTc0H1ZH2ZjmNONsDgYFf', 'android', '2021-12-26 15:59:16'),
(338, '#OCUSR_Ncwg1', '', 'frq8jabPRxuZWjBtDeqVbn:APA91bF7PLcGruwMQgan8vWEwt8aowDg2-3-ng4Xk3UMJu31Zft7liY_RYdFqQWa2Sl-AE8fYDt7a7VCGzPDucN8avKbqb2pkK3VKPKFntApToQEyg0AC6iI04mBKBNbv6Ya0mP00WoE', 'android', '2021-12-26 16:28:15'),
(339, '#OCUSR_KpSuG', '', 'cQDU1MsYSyqeYRIjGYCJlv:APA91bHRquQtssUzAei4KnU1GAUm8jhJRMRs1J8yw5PXdZei7M3NUomrIMhdJ9AmCj1S7tIsRNvhk69AHH9EtFZ2h9rSV6x9e9C6EP1A4yOEtQb7-mYvc_082z8uuk-ZJkhj2PL-V6WV', 'android', '2021-12-26 16:58:54'),
(340, '#OCUSR_J6whA', '', 'dWSS53AqQQOT9qjB74CVtQ:APA91bHzec2kIhMXJQOv99h2aFDlys3AAwcchMRAu1gHubOAdAQfbCEuLtWW0x0y0t7npLmEKxQLawLBNx457GAbYEci8OEq7LKkk2X8_UtEjPpsUPXa1JoAwn4o_2_LBjRIVLN14LO6', 'android', '2021-12-26 17:49:14'),
(341, '#OCUSR_qDssj', '', 'f_fjHa8lTySR9PumwZYoJc:APA91bEt9X4beJgNj8H-J0Md_jQDd9yYViEBXA4oFWQ8qyCPWT-msGiarFSxek6KG5BcygePhwptU7IjxsSldkh1dF36HNBzI_8oIRGRv2jhotdctI87h3KIiPmwg339UbiGBaENEswt', 'android', '2021-12-26 17:58:27'),
(342, '#OCUSR_kqoxm', '', 'dIS6T3jVQ2G75ZRbP8If77:APA91bHNcUlRr9tA9DgywttbxFouLONti_RTqCr3Az1sF_Nc6s5dSSiYQrnOKXFq4bsGYcR1n8y0udmX7VNf9r_KSX9xxg0Vuh8gOISHn9P-EuhwyoLjwCIeGkH7nGOQlY1xV_80USss', 'android', '2021-12-26 18:02:49'),
(343, '#OCUSR_Dl22P', '', 'fNxCfouhSP68YmcHa2SLzD:APA91bGwqzZswdOUwFOxIlCXnE5NRX6HbrYH1paS-OSTDa7OW7I2hLCiNifG2JE_RGJ6GMS-y9DL5Qy11e4dZ0HxTKAEW9QVTQnPmEgqw98Ny11J6wQTQoT5tlcGgj2q_8r0szBF2lIe', 'android', '2021-12-26 20:04:23'),
(344, '#OCUSR_VB3ZC', '', 'fFKMxgiLQbyE4uAVh6cbyp:APA91bFnGM0xDiUuZ7Fe96r1jAdCVFz2fU4FbgKWtj5LBYNEzXZgGYBAK4JKtVbP-iGQrHw0LsFeCG6aZ6ast-67JUOM6ZlB7h3moENzrPlcREenn4b_TKGs6kdQiroPow0NEZrf1obZ', 'android', '2021-12-26 20:04:31'),
(345, '#OCUSR_lgpOb', '', 'fzf4iyY0QkqvYXyWdxrWQk:APA91bGA2fLxXwwnOawGMsQYj9YUz4R_6OYHjzhhSSgjwwrtaHWoEFkGddPaLjY9T852cZ51fboY2334PQ3UoOOYLBrEerb8eyE3A7bJ4XrpggNRMUCWU73cJPdMEbhfz2C9uRQRJOW3', 'android', '2021-12-26 20:39:54'),
(346, '#OCUSR_3lRmB', '', 'dTGlmkArQLmXW2pJnA2aHG:APA91bEnd_CjxFwlAnj1d-VsnzCN0Qn3AcF4TqvN9xnueG7WTG2IoEA41DSsmCJOVmvmY0y2yvmMZQdTDxITi2DfN8dyRoh26S5SP8ZaiXtgmkW3wNh9_Skp4QFJlJSgveYhkDkmIMDa', 'android', '2021-12-26 20:58:49'),
(347, '#OCUSR_8wbY8', '', 'eraP5-LPQNSZBcO2FsUOh8:APA91bESg-YjifwhK-hdNRpRl3r3BpYcIDuDqfWyzeku9-FE2hYBQ2c1awsvLQkfxliGmul8et6sH-LrCq_dOQryytTZ0mSryTmRH6IVNJiq1IU_76uEVwYXiEtD51YqiZb-wRm0yZqZ', 'android', '2021-12-27 00:36:17'),
(348, '#OCUSR_guS0h', '', 'e7EJ3wnRTxiJXo0gfJstcF:APA91bEq46aM8vUmJEW2R-JtwJdEntEFfQhJwDt0Ha3s7OCEzno-c-9hY3BFMuynQloNscMmrN3WIAT5HAQQEb8gXkWfpBsFKQkHI4-UHrq7ajlx0nKeoPt6y25ytutmq_xaCuSxTCoJ', 'android', '2021-12-27 00:48:26'),
(349, '#OCUSR_95lE7', '', 'cOCPpxH7SXOZMdMRbqdBDN:APA91bFWqm5xXluSUEiQh49muBR673FQlFQkPlYV0p0LZXJv9hhybilSSSdUR1zCRrgKnKI5QVvTXRxlHnkCCpE07YmbGkVKi_gZWl0lbiGDWNhRqVl0H-7YHV20F_Udi1co0bUyR0YV', 'android', '2021-12-27 12:52:07'),
(350, '#OCUSR_134Sg', '', 'e9tdvHgbQvKpfbonhsnFci:APA91bFQ_y2DohKVFQWZSIZUCIS7BFFm8CgNYfVaE9nZAHwhSm-LR7_MtYO7wobgiCuKjpY6W8YoRyFMiF5zLrXkL7OvH2QXVR2o2afjucPygjWd4dPDytJNSsYRfWHRAFLfg4J1IbT4', 'android', '2021-12-28 00:38:40'),
(351, '#OCUSR_gJxNr', '', 'eWPxl1gsS2GZCiWN3Lz1f_:APA91bHVS8C-Jsc8dsLXvnQYUewpCG7Blolk57Y3A3kkZL6EGmeXY3keSxryHdsPpgiTRw8rjnx_wXWx50BjsGiExxudOMV4YbPRN9BG-zE3b-a-5HDzd64TuyIJ20YW64OSZ6iczQw0', 'android', '2021-12-28 12:25:06'),
(352, '#OCUSR_Ur5VU', '', 'dO0r_kgJRkO39H4lSTn611:APA91bGdq3OZZP2IjKf_x5CG5rd5XUr2XqjQRNDV6tJ_xyAD8hhZit3UxfqC74pDm2PefY2rHSs5d6ohRy_w6ouQeFsGsAlXNACoS1M_os5Ow1bUDdl0t6BSwJUji6-SmLrX3dglKRrg', 'android', '2021-12-28 13:16:12'),
(353, '#OCUSR_GHBSv', '', 'daaj0rZ0RrOes7UEwQPNsn:APA91bFOxDr6bhsHPeEc_tKbsiqehkiOnzzI3VdsMhVOwdqRytFnJ3qVZOiKtgEGx18g6rACDxhp_5LNPe-iOG2NQkdInV7tapQt9Ej2VvozBCPy8wx2Lur-kHi_Ya4rXZswtnYO4gYT', 'android', '2021-12-28 13:55:34');

-- --------------------------------------------------------

--
-- Table structure for table `insights`
--

CREATE TABLE `insights` (
  `id` bigint(20) NOT NULL,
  `page` varchar(250) NOT NULL,
  `feature` varchar(100) NOT NULL,
  `accessed_time` datetime NOT NULL,
  `admin_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insights`
--

INSERT INTO `insights` (`id`, `page`, `feature`, `accessed_time`, `admin_id`) VALUES
(1, 'login', '', '2021-11-28 08:43:22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) NOT NULL,
  `item_id` varchar(250) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_image` text NOT NULL,
  `item_description` text NOT NULL,
  `category_id` varchar(250) NOT NULL,
  `price_per_unit` decimal(10,2) NOT NULL,
  `discount_price` decimal(10,2) NOT NULL,
  `available_quantity` decimal(10,2) NOT NULL,
  `no_of_pieces` varchar(50) NOT NULL,
  `gross_weight` decimal(10,2) NOT NULL,
  `net_weight` decimal(10,2) NOT NULL,
  `weight_type` varchar(45) NOT NULL,
  `serves` int(11) NOT NULL,
  `in_stock` int(11) NOT NULL,
  `is_trending` int(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `is_deleted` int(10) NOT NULL DEFAULT 0,
  `temp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_id`, `item_name`, `item_image`, `item_description`, `category_id`, `price_per_unit`, `discount_price`, `available_quantity`, `no_of_pieces`, `gross_weight`, `net_weight`, `weight_type`, `serves`, `in_stock`, `is_trending`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`, `temp`) VALUES
(1, '#OCITM_pbULw', 'Smokey Turmeric - Dressed Full Chicken Skin on', 'smokey_turmeric_-_dressed_full_chicken_skin_on_1638255204.jpg', 'It is a classic recipe of smoked and marinated country chicken (Natu Kodi).The Whole Chicken retains its juiciness beneath the well-done skin when left uncut and skin-on. We prepare and clean the chicken so that it is ready to cook, making it an excellent choice for a formal meal. A Whole Chicken, perfect for roasting or baking, can be the focus of your meal, by simply picking and select your favourite pieces. Our meat was antibiotic residue free. Buy online from Organichicken and get fresh Chicken delivered at your doorstep.', '#OCCAT_TgpAx', '810.00', '809.00', '20.00', '1', '0.00', '1350.00', 'grams', 6, 1, 0, '2021-11-30 12:23:24', 'vijay@gmail.com', '2021-12-15 16:56:42', 'vijay@gmail.com', 0, ''),
(2, '#OCITM_zGqt9', 'Smokey Turmeric Chicken - Full Joint Skin on', 'smokey_turmeric_chicken_-_full_joint_skin_on_1638258356.jpg', 'It is a traditional preparation of country chicken (Natu Kodi) smoked &amp; marinated with turmeric. This cut of chicken comes from the Asil birds &amp; offers a slightly tougher texture which is characteristic of authentic country chicken birds.    Known for its anti-bacterial &amp; anti-inflammatory properties, turmeric is often used in a variety of marinades. Full joint allows you for easy preparation  delicious fry and tandoori. Our meat was antibiotic residue free. Buy online from Organichicken and get fresh Chicken  delivered at your doorstep.', '#OCCAT_TgpAx', '360.00', '349.00', '18.00', '1', '0.00', '500.00', 'grams', 2, 1, 0, '2021-11-30 12:26:12', 'vijay@gmail.com', '2021-12-15 17:04:50', 'vijay@gmail.com', 0, ''),
(3, '#OCITM_gAe7O', 'Smokey Turmeric-Skinned - Twin Thigh', 'smokey_turmeric_-_skinned__pair-thigh_1638256585.jpg', 'It is a classic recipe of smoked and marinated country chicken (Natu Kodi).Chicken Whole Leg from Organichicken is skinned and bone-in, and includes both the thigh and drumstick. This chicken cut contains dark meat that has a deep flavor and a juicy texture. Chicken Leg is a high-protein, high-vitamin, and high-mineral cut that makes for a nutritious dinner. Legs are great for slow cooking, but they can also be baked, grilled, or Roasted. Thighs become juicy and delicious when cooked. Our meat was antibiotic residue free. Buy online from Organichicken and get fresh Chicken Leg delivered at your doorstep.', '#OCCAT_TgpAx', '309.00', '299.00', '16.00', '2', '0.00', '400.00', 'grams', 2, 1, 1, '2021-11-30 12:42:40', 'vijay@gmail.com', '2021-12-15 17:15:32', 'vijay@gmail.com', 0, ''),
(4, '#OCITM_PqVi6', 'Smokey Turmeric Chicken - Drum stick Skin on', 'smokey_turmeric_chicken_-_drum_stick_skin_on_1638259841.jpg', 'It is a classic recipe of smoked and marinated country chicken (Natu Kodi). This cut of chicken comes from the Asil birds &amp; offers a slightly tougher texture which is characteristic of authentic country chicken birds.\r\nKnown for its anti-bacterial &amp; anti-inflammatory properties, turmeric is often used in a variety of marinades. it allows for easy preparation of delicious curries, Kodi Pulusu, Biryani with its perfectly cut pieces ideal for quick &amp; easy cooking!. Our meat was antibiotic residue free. Buy online from Organichicken and get fresh Chicken  delivered at your doorstep.', '#OCCAT_TgpAx', '369.00', '349.00', '17.00', '6', '0.00', '500.00', 'grams', 3, 1, 0, '2021-11-30 12:45:37', 'vijay@gmail.com', '2021-12-15 17:07:01', 'vijay@gmail.com', 0, ''),
(5, '#OCITM_TDY5G', 'Smokey Turmeric Chicken - Curry Cut - 1 Kg`s', 'smokey_turmeric_chicken_-_biryani_cut__skin_on_(for_any_type_of_biriyani)_1638260151.jpg', 'It is a traditional preparation of country chicken (Naatu Kodi) smoked &amp; marinated with turmeric. It was taken from the breast and leg of the chicken. A mixture of white and dark meat these pieces of chicken are loaded with flavor and deliver mouth-watering goodness with every bite. Juicy and tender they are perfect for every kind of Biryani, with its perfectly cut pieces ideal for quick &amp; easy cooking!. Our meat was antibiotic residue free. Buy online from Organichicken and get fresh Chicken delivered at your doorstep.', '#OCCAT_TgpAx', '649.00', '599.00', '12.00', '35-36', '0.00', '1000.00', 'grams', 4, 1, 0, '2021-11-30 12:48:39', 'vijay@gmail.com', '2021-12-16 11:06:16', 'vijay@gmail.com', 0, ''),
(6, '#OCITM_MO5KL', 'Smokey Turmeric Chicken - Small Curry cut  Skin on', 'smokey_turmeric_chicken_-_curry_small_cut__skin_on_1638258528.jpg', 'It is a traditional preparation of country chicken (Natu Kodi) smoked &amp; marinated with turmeric. cleaned and neatly cut into medium-sized portions from the whole leg and breast,  Curry Cuts are Best-suited for curries and slow-cooked dishes, these mouth-watering portions are flavorful with a medium-firm texture. These portions are a rich source of iron, proteins and vitamins. Curry Cuts from meat make delicious Chicken Masala Gravy (Especially Kodi Pulusu)or Chicken Curry  at home., Our meat was antibiotic residue free. Buy online from Organichicken and get fresh Chicken delivered at your doorstep.', '#OCCAT_TgpAx', '319.00', '309.00', '-58.00', '9-10', '0.00', '350.00', 'grams', 2, 1, 1, '2021-11-30 12:50:28', 'vijay@gmail.com', '2021-12-15 17:08:34', 'vijay@gmail.com', 0, ''),
(7, '#OCITM_ohvH3', 'Smokey Turmeric -  Half wings Skin on', 'smokey_turmeric_-__half_wings_skin_on_1638258647.jpg', 'This is a classic recipe of smoked and marinated country chicken (Natu Kodi).Chicken Wings with Skin are a combination of meaty and bone-in chicken cuts. This cut contains bone-in chunks with juicy and delicious skin. With the Wings skinned, make crispy deep-fried wings to enjoy with your favorite recipes like Delicious soups, Biryani etc...,Our meat was antibiotic residue free. Buy online from Organichicken and get fresh Chicken  delivered at your doorstep.', '#OCCAT_TgpAx', '249.00', '229.00', '17.00', '6-7', '0.00', '250.00', 'grams', 2, 1, 0, '2021-11-30 12:52:20', 'vijay@gmail.com', '2021-12-15 17:11:33', 'vijay@gmail.com', 0, ''),
(8, '#OCITM_wOjX9', 'Chicken - Skinless Wings', 'chicken_-_skinless_wings_1638258742.jpg', 'This is a classic recipe of marinated country chicken (Natu Kodi).Chicken Wings  Skinless are a combination of meaty and bone-in chicken cuts. This cut contains bone-in chunks with juicy and delicious. Skinless make crispy deep-fried Chicken wings to enjoy with your favorite recipes and allows for  preparation of delicious curries and fries and with its perfectly cut pieces ideal for quick &amp; easy cooking!., Our meat was antibiotic residue free. Buy online from Organichicken and get fresh Chicken  delivered at your doorstep.', '#OCCAT_TgpAx', '369.00', '349.00', '15.00', '8-9', '0.00', '500.00', 'grams', 3, 1, 0, '2021-11-30 13:05:32', 'vijay@gmail.com', '2021-12-15 17:12:16', 'vijay@gmail.com', 0, ''),
(9, '#OCITM_aMPmi', 'Smokey Turmeric Chicken - Large curry cut with leg pieces Skin on', 'smokey_turmeric_chicken_-_large_curry_cut_with_leg_pieces_skin_on_1638259752.jpg', 'It is a traditional preparation of country chicken (Natu Kodi) smoked and marinated with turmeric. Meat of  Chicken  pieces include Two leg, Two wing without tip, and Two breast quarter with backbone. Obtained from free range raised healthy chicken , the meat has a rich, juicy flavor with a tender, smooth and moderate-firm texture. Best suited for curries, Kodi Pulusu and biryani. The package includes both boneless and bone-in curry cut pieces.Our meat was antibiotic residue free. Buy online from Organichicken and get fresh Chicken delivered at your doorstep.', '#OCCAT_TgpAx', '369.00', '349.00', '12.00', '16-17', '0.00', '500.00', 'grams', 3, 1, 1, '2021-11-30 13:07:28', 'vijay@gmail.com', '2021-12-16 11:09:39', 'vijay@gmail.com', 0, ''),
(10, '#OCITM_4dJnZ', 'Smokey Turmeric -  Half wings Skin on', '', 'This is a classic recipe of smoked and marinated country chicken (Natu Kodi).Chicken Wings with Skin are a combination of meaty and bone-in chicken cuts. This cut contains bone-in chunks with juicy and delicious skin. With the Wings skinned, make crispy deep-fried wings to enjoy with your favorite recipes like Delicious soups, Biryani etc...,Our meat was antibiotic residue free. Buy online from Organichicken and get fresh Chicken  delivered at your doorstep.', '#OCCAT_TgpAx', '359.00', '319.00', '18.00', '12', '0.00', '375.00', 'grams', 3, 1, 0, '2021-11-30 13:10:44', 'vijay@gmail.com', '2021-11-30 13:23:24', 'vijay@gmail.com', 1, ''),
(11, '#OCITM_7ot30', 'Skin less Breast Fillet Boneless', 'skin_less_breast_fillet_boneless_1638259718.jpg', 'Chicken Breast is one of the meatier cuts of a Chicken, which comes from the breast-bone of the bird. This cut is skinless and has a soft texture with a  good source of vitamins and minerals,  Breast, is also a great choice for a lean protein diet. Apply a flavorful spice-rub and pan-fry, bake, grill, or slow-cook the Chicken Breast to relish this versatile cut., Our meat was antibiotic residue free. Buy online from Organichicken and get fresh Chicken  delivered at your doorstep.', '#OCCAT_TgpAx', '299.00', '275.00', '17.00', '4-5', '0.00', '250.00', 'grams', 2, 1, 0, '2021-11-30 13:25:06', 'vijay@gmail.com', '2021-12-15 17:13:18', 'vijay@gmail.com', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `items_quantities`
--

CREATE TABLE `items_quantities` (
  `id` int(11) NOT NULL,
  `item_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `quantity_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_quantity` int(11) NOT NULL,
  `added_at` datetime NOT NULL,
  `added_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `temp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items_quantities`
--

INSERT INTO `items_quantities` (`id`, `item_id`, `quantity`, `quantity_type`, `type`, `current_quantity`, `added_at`, `added_by`, `temp`) VALUES
(1, '#OCITM_pbULw', 20, 'kgs', 'item', 20, '2021-11-30 12:23:24', 'vijay@gmail.com', ''),
(2, '#OCITM_zGqt9', 20, 'kgs', 'item', 20, '2021-11-30 12:26:12', 'vijay@gmail.com', ''),
(3, '#OCITM_gAe7O', 20, 'kgs', 'item', 20, '2021-11-30 12:42:40', 'vijay@gmail.com', ''),
(4, '#OCITM_PqVi6', 18, 'kgs', 'item', 18, '2021-11-30 12:45:37', 'vijay@gmail.com', ''),
(5, '#OCITM_TDY5G', 18, 'kgs', 'item', 18, '2021-11-30 12:48:39', 'vijay@gmail.com', ''),
(6, '#OCITM_MO5KL', 18, 'kgs', 'item', 18, '2021-11-30 12:50:28', 'vijay@gmail.com', ''),
(7, '#OCITM_ohvH3', 18, 'kgs', 'item', 18, '2021-11-30 12:52:20', 'vijay@gmail.com', ''),
(8, '#OCITM_wOjX9', 18, 'kgs', 'item', 18, '2021-11-30 13:05:32', 'vijay@gmail.com', ''),
(9, '#OCITM_aMPmi', 18, 'kgs', 'item', 18, '2021-11-30 13:07:28', 'vijay@gmail.com', ''),
(10, '#OCITM_4dJnZ', 18, 'kgs', 'item', 18, '2021-11-30 13:10:44', 'vijay@gmail.com', ''),
(11, '#OCITM_7ot30', 18, 'kgs', 'item', 18, '2021-11-30 13:25:06', 'vijay@gmail.com', ''),
(12, '#OCITM_MO5KL', 1, 'kgs', 'order', 17, '2021-12-01 10:14:24', '', ''),
(13, '#OCITM_PqVi6', 1, 'kgs', 'order', 17, '2021-12-01 10:14:24', '', ''),
(14, '#OCITM_aMPmi', 1, 'kgs', 'order', 17, '2021-12-01 14:21:41', '', ''),
(18, '#OCITM_MO5KL', 2, 'kgs', 'order', 14, '2021-12-02 13:18:09', '', ''),
(20, '#OCITM_MO5KL', 1, 'kgs', 'order', 14, '2021-12-02 14:57:18', '', ''),
(21, '#OCITM_MO5KL', 1, 'kgs', 'order', 14, '2021-12-02 16:27:39', '', ''),
(22, '#OCITM_MO5KL', 1, 'kgs', 'order', 13, '2021-12-02 16:33:57', '', ''),
(24, '#OCITM_pbULw', 1, 'kgs', 'order', 19, '2021-12-02 17:24:41', '', ''),
(25, '#OCITM_MO5KL', 1, 'kgs', 'order', 12, '2021-12-03 09:17:25', '', ''),
(26, '#OCITM_aMPmi', 1, 'kgs', 'order', 16, '2021-12-03 10:23:08', '', ''),
(28, '#OCITM_aMPmi', 1, 'kgs', 'order', 15, '2021-12-04 08:26:06', '', ''),
(29, '#OCITM_gAe7O', 1, 'kgs', 'order', 17, '2021-12-05 23:02:35', '', ''),
(30, '#OCITM_gAe7O', 1, 'kgs', 'order', 16, '2021-12-06 09:13:30', '', ''),
(31, '#OCITM_aMPmi', 1, 'kgs', 'order', 14, '2021-12-07 18:41:16', '', ''),
(32, '#OCITM_MO5KL', 1, 'kgs', 'order', 11, '2021-12-07 22:19:53', '', ''),
(33, '#OCITM_aMPmi', 1, 'kgs', 'order', 13, '2021-12-07 23:26:44', '', ''),
(34, '#OCITM_MO5KL', 2, 'kgs', 'order', 9, '2021-12-08 11:00:44', '', ''),
(35, '#OCITM_ohvH3', 1, 'kgs', 'order', 17, '2021-12-09 12:05:16', '', ''),
(36, '#OCITM_TDY5G', 1, 'kgs', 'order', 17, '2021-12-10 10:47:51', '', ''),
(37, '#OCITM_pbULw', 1, 'kgs', 'order', 18, '2021-12-10 12:43:17', '', ''),
(39, '#OCITM_MO5KL', 2, 'kgs', 'order', 7, '2021-12-11 21:16:44', '', ''),
(40, '#OCITM_pbULw', 1, 'kgs', 'order', 17, '2021-12-12 07:49:57', '', ''),
(41, '#OCITM_aMPmi', 2, 'kgs', 'order', 11, '2021-12-12 12:36:32', '', ''),
(43, '#OCITM_gAe7O', 1, 'kgs', 'order', 15, '2021-12-15 14:42:09', '', ''),
(44, '#OCITM_pbULw', 1, 'kgs', 'order', 19, '2021-12-15 16:59:43', '', ''),
(45, '#OCITM_aMPmi', 1, 'kgs', 'order', 17, '2021-12-15 23:44:30', '', ''),
(46, '#OCITM_7ot30', 1, 'kgs', 'order', 17, '2021-12-16 17:52:58', '', ''),
(47, '#OCITM_PqVi6', 1, 'kgs', 'order', 17, '2021-12-16 17:52:58', '', ''),
(48, '#OCITM_aMPmi', 1, 'kgs', 'order', 16, '2021-12-16 17:52:58', '', ''),
(49, '#OCITM_MO5KL', 1, 'kgs', 'order', 17, '2021-12-17 13:15:45', '', ''),
(50, '#OCITM_MO5KL', 1, 'kgs', 'order', 16, '2021-12-17 17:11:21', '', ''),
(51, '#OCITM_gAe7O', 1, 'kgs', 'order', 17, '2021-12-17 18:11:51', '', ''),
(52, '#OCITM_MO5KL', 1, 'kgs', 'order', 15, '2021-12-17 18:16:06', '', ''),
(53, '#OCITM_MO5KL', 1, 'kgs', 'order', 14, '2021-12-17 18:22:39', '', ''),
(54, '#OCITM_MO5KL', 1, 'kgs', 'order', 13, '2021-12-17 18:23:52', '', ''),
(55, '#OCITM_wOjX9', 1, 'kgs', 'order', 17, '2021-12-17 20:06:49', '', ''),
(56, '#OCITM_MO5KL', 1, 'kgs', 'order', 12, '2021-12-17 21:00:27', '', ''),
(57, '#OCITM_MO5KL', 1, 'kgs', 'order', 11, '2021-12-17 21:05:41', '', ''),
(58, '#OCITM_MO5KL', 1, 'kgs', 'order', 10, '2021-12-17 21:09:14', '', ''),
(59, '#OCITM_MO5KL', 1, 'kgs', 'order', 9, '2021-12-17 21:47:05', '', ''),
(60, '#OCITM_MO5KL', 1, 'kgs', 'order', 8, '2021-12-17 22:16:39', '', ''),
(61, '#OCITM_MO5KL', 1, 'kgs', 'order', 7, '2021-12-18 09:21:27', '', ''),
(62, '#OCITM_MO5KL', 1, 'kgs', 'order', 6, '2021-12-18 09:31:18', '', ''),
(65, '#OCITM_aMPmi', 1, 'kgs', 'order', 15, '2021-12-18 16:52:43', '', ''),
(66, '#OCITM_MO5KL', 1, 'kgs', 'order', 5, '2021-12-18 17:48:02', '', ''),
(67, '#OCITM_MO5KL', 1, 'kgs', 'order', 4, '2021-12-18 17:54:42', '', ''),
(69, '#OCITM_MO5KL', 1, 'kgs', 'order', 3, '2021-12-18 19:17:18', '', ''),
(70, '#OCITM_MO5KL', 1, 'kgs', 'order', 2, '2021-12-18 20:04:36', '', ''),
(71, '#OCITM_MO5KL', 1, 'kgs', 'order', 1, '2021-12-18 20:05:57', '', ''),
(72, '#OCITM_MO5KL', 1, 'kgs', 'order', 0, '2021-12-18 20:08:33', '', ''),
(73, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-18 20:09:48', '', ''),
(74, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-18 21:28:33', '', ''),
(75, '#OCITM_TDY5G', 1, 'kgs', 'order', 17, '2021-12-19 06:44:54', '', ''),
(76, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-19 07:47:21', '', ''),
(77, '#OCITM_TDY5G', 1, 'kgs', 'order', 16, '2021-12-19 08:11:10', '', ''),
(78, '#OCITM_TDY5G', 1, 'kgs', 'order', 15, '2021-12-19 08:29:42', '', ''),
(79, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-19 08:33:31', '', ''),
(80, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-19 09:07:48', '', ''),
(81, '#OCITM_aMPmi', 1, 'kgs', 'order', 15, '2021-12-19 09:08:38', '', ''),
(82, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-19 09:56:28', '', ''),
(83, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-19 10:00:52', '', ''),
(85, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-19 12:22:27', '', ''),
(86, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-20 00:03:28', '', ''),
(87, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-20 00:11:42', '', ''),
(88, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-20 00:30:29', '', ''),
(89, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-20 10:25:49', '', ''),
(91, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-20 11:32:18', '', ''),
(92, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-20 11:36:53', '', ''),
(93, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-20 11:39:15', '', ''),
(94, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-20 22:10:04', '', ''),
(95, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-21 07:25:07', '', ''),
(96, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-21 08:24:51', '', ''),
(97, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-21 08:25:41', '', ''),
(98, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-21 08:26:26', '', ''),
(99, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-21 08:30:30', '', ''),
(100, '#OCITM_gAe7O', 1, 'kgs', 'order', 16, '2021-12-21 08:30:30', '', ''),
(101, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-21 11:54:21', '', ''),
(102, '#OCITM_aMPmi', 2, 'kgs', 'order', 13, '2021-12-21 17:28:31', '', ''),
(103, '#OCITM_TDY5G', 1, 'kgs', 'order', 14, '2021-12-21 17:46:54', '', ''),
(104, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-22 08:18:30', '', ''),
(105, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-22 08:31:41', '', ''),
(106, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-22 09:32:44', '', ''),
(107, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-22 09:47:56', '', ''),
(108, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-22 09:55:37', '', ''),
(109, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-23 08:08:30', '', ''),
(110, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-23 09:06:37', '', ''),
(111, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-23 09:10:58', '', ''),
(112, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-23 09:13:17', '', ''),
(113, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-23 09:23:45', '', ''),
(116, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-24 02:03:11', '', ''),
(117, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-24 02:04:18', '', ''),
(118, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-24 07:38:41', '', ''),
(119, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-24 09:12:46', '', ''),
(120, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-24 09:45:48', '', ''),
(121, '#OCITM_wOjX9', 1, 'kgs', 'order', 16, '2021-12-24 09:47:26', '', ''),
(122, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-24 09:47:26', '', ''),
(123, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-25 00:01:47', '', ''),
(124, '#OCITM_TDY5G', 1, 'kgs', 'order', 13, '2021-12-25 00:09:03', '', ''),
(125, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-25 06:34:05', '', ''),
(126, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-25 07:44:45', '', ''),
(127, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-25 08:12:48', '', ''),
(128, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-25 08:25:12', '', ''),
(129, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-25 10:39:46', '', ''),
(130, '#OCITM_TDY5G', 1, 'kgs', 'order', 12, '2021-12-25 18:57:35', '', ''),
(131, '#OCITM_wOjX9', 1, 'kgs', 'order', 15, '2021-12-25 20:07:29', '', ''),
(132, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-25 20:07:29', '', ''),
(133, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-26 00:00:48', '', ''),
(134, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-26 00:26:34', '', ''),
(135, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-26 07:45:48', '', ''),
(136, '#OCITM_aMPmi', 1, 'kgs', 'order', 12, '2021-12-26 07:46:43', '', ''),
(137, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-26 09:38:18', '', ''),
(138, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-26 09:44:16', '', ''),
(140, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-27 00:37:14', '', ''),
(141, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-27 00:42:30', '', ''),
(142, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-27 00:54:09', '', ''),
(143, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-27 05:04:00', '', ''),
(145, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-27 05:16:11', '', ''),
(146, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-28 00:24:44', '', ''),
(147, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-28 00:30:51', '', ''),
(148, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-28 00:41:39', '', ''),
(149, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-28 07:02:09', '', ''),
(150, '#OCITM_MO5KL', 1, 'kgs', 'order', -1, '2021-12-28 12:56:48', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `logs_data`
--

CREATE TABLE `logs_data` (
  `id` int(10) NOT NULL,
  `request_type` varchar(30) CHARACTER SET latin1 NOT NULL,
  `ipaddress` varchar(30) CHARACTER SET latin1 NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs_data`
--

INSERT INTO `logs_data` (`id`, `request_type`, `ipaddress`, `timestamp`) VALUES
(1, 'Web_Login', '175.101.156.22', '2021-08-14 23:27:01'),
(2, 'Web_Login', '43.227.131.77', '2021-04-24 11:36:55'),
(3, 'Web_Login', '106.66.44.236', '2021-08-22 10:16:00'),
(4, 'Web_Login', '183.83.240.2', '2021-09-27 22:08:03'),
(5, 'Web_Login', '2401:4900:4fe9:c36f:96d:bc14:6', '2021-09-29 12:31:08'),
(6, 'Web_Login', '2401:4900:4fe9:c36f:96d:bc14:6', '2021-09-29 12:31:10'),
(7, 'Web_Login', '2401:4900:4fe9:c36f:96d:bc14:6', '2021-09-29 12:31:13'),
(8, 'Web_Login', '43.227.131.116', '2021-11-16 12:53:42'),
(9, 'Web_Login', '2401:4900:4ff9:c36a:77be:ddb5:', '2021-12-01 20:07:14'),
(10, 'Web_Login', '2405:201:c028:18e:b998:5a3f:aa', '2021-12-10 18:46:51'),
(11, 'Web_Login', '2401:4900:4fb0:ec7d:6887:5a55:', '2021-12-20 15:47:50');

-- --------------------------------------------------------

--
-- Table structure for table `meta_data`
--

CREATE TABLE `meta_data` (
  `id` int(11) NOT NULL,
  `meta_key` varchar(250) NOT NULL,
  `meta_value` longtext NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meta_data`
--

INSERT INTO `meta_data` (`id`, `meta_key`, `meta_value`, `updated_at`) VALUES
(1, 'slider_images', '[{\"id\":\"#OCSIM_4LY67\",\"img_path\":\"imgonline-com-ua-compresstosize-vt8p5fzxcm_1639708118.jpg\"},{\"id\":\"#OCSIM_8jRm4\",\"img_path\":\"imgonline-com-ua-compresstosize-ptwuvubrdxyt5jug_1639708153.jpg\"},{\"id\":\"#OCSIM_5JXLX\",\"img_path\":\"mobile-sliders4_1639708437.jpg\"},{\"id\":\"#OCSIM_jb7ED\",\"img_path\":\"mobile-sliders3_1639708455.jpg\"},{\"id\":\"#OCSIM_FBucs\",\"img_path\":\"mobile-sliders5_1639708469.jpg\"}]', '2021-12-17 08:04:29'),
(2, 'min_cart_val', '499', '2021-12-27 21:58:11'),
(3, 'pincodes', '520001,520002,520003,520004,520007,	520008,520010,520011, 520012,520013,520015,521104,521108,521225,521228,521241,522500,522501', '2021-12-27 21:58:11'),
(5, 'banner', '[{\"id\":\"#OCBAN_OiyKH\",\"img_path\":\"app-home-popup-offer-min_1639606002.jpg\",\"thumb_img_path\":\"\"}]', '2021-12-16 03:36:42'),
(6, 'tales', '[{\"id\":\"#OCTAL_UmWVX\",\"img_path\":\"oc-tales-asil_(1)_1639776575.jpg\",\"thumb_img_path\":\"oc-tales-thumbnails-asil_1639776575.jpg\"},{\"id\":\"#OCTAL_0MRaK\",\"img_path\":\"oc-tales-kadakhnath_(1)_1639776658.jpg\",\"thumb_img_path\":\"oc-tales-thumbnails-kadakhnath_1639776658.jpg\"},{\"id\":\"#OCTAL_OiLOj\",\"img_path\":\"sreenidhi_(1)_1639776713.jpg\",\"thumb_img_path\":\"oc-tales-thumbnails-sreenidhi_1639776713.jpg\"},{\"id\":\"#OCTAL_GMe0F\",\"img_path\":\"oc-tales-vanaraja_(1)_1639776778.jpg\",\"thumb_img_path\":\"oc-tales-thumbnails-vanaraja_1639776778.jpg\"}]', '2021-12-18 03:02:58'),
(7, 'delivery_charges', '40', '2021-12-27 21:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) NOT NULL,
  `offer_id` varchar(250) NOT NULL,
  `type` varchar(45) NOT NULL,
  `code` varchar(45) NOT NULL,
  `offer_start` datetime NOT NULL,
  `offer_end` datetime NOT NULL,
  `description` varchar(200) NOT NULL,
  `min_order_price` decimal(10,2) NOT NULL,
  `offer_price` decimal(10,2) NOT NULL,
  `discount` int(10) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `is_deleted` int(10) NOT NULL DEFAULT 0,
  `temp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `offer_id`, `type`, `code`, `offer_start`, `offer_end`, `description`, `min_order_price`, `offer_price`, `discount`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`, `temp`) VALUES
(1, '#OCOFR_URch9', 'discount', 'FIRST100', '2021-11-30 13:50:39', '2021-12-30 23:59:58', '100/- discount on your first order', '0.00', '100.00', 0, 1, '2021-11-30 13:51:45', 'vijay@gmail.com', '2021-12-02 09:55:24', 'vijay@gmail.com', 0, ''),
(2, '#OCOFR_wnQAA', 'discount', 'FIRST10', '2021-12-17 08:18:00', '2021-12-29 23:55:00', 'GET YOUR FREE PACK', '309.00', '309.00', 0, 1, '2021-12-17 08:21:07', 'vijay@gmail.com', '0000-00-00 00:00:00', '', 0, ''),
(3, '#OCOFR_Ulxca', 'discount', 'HAPPY HOUR', '2021-12-28 17:00:00', '2021-12-28 17:01:00', 'Get 200 rupees on your purchase no minimum order value', '0.00', '200.00', 0, 0, '2021-12-24 16:35:34', 'vijay@gmail.com', '2021-12-28 09:05:02', 'vijay@gmail.com', 0, ''),
(4, '#OCOFR_7JkRF', 'discount', 'FLYER100', '2021-12-28 09:04:15', '2022-01-31 09:04:15', '100/- discount on your order', '0.00', '100.00', 0, 1, '2021-12-28 09:05:47', 'vijay@gmail.com', '0000-00-00 00:00:00', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_key` varchar(45) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `address_id` varchar(250) NOT NULL,
  `offer_id` varchar(250) NOT NULL,
  `order_price` decimal(10,2) NOT NULL,
  `order_data` text NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `delivery_slot` varchar(50) NOT NULL,
  `delivery_charge` int(10) NOT NULL,
  `delivery_user` varchar(250) NOT NULL,
  `discount_price` decimal(10,2) NOT NULL,
  `final_order_price` decimal(10,2) NOT NULL,
  `status` int(11) NOT NULL,
  `order_at` datetime NOT NULL,
  `last_updated_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_key`, `user_id`, `address_id`, `offer_id`, `order_price`, `order_data`, `delivery_date`, `delivery_slot`, `delivery_charge`, `delivery_user`, `discount_price`, `final_order_price`, `status`, `order_at`, `last_updated_time`) VALUES
('#OCORD_0Ke25', '#OCUSR_pk1ry', '#OCADD_RogJW', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"Ramesh\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"G2 sree apartments\",\"building_name\":\"G2 sree apartments\",\"street\":\"prasanthi nagar,lic colony\",\"landmark\":\"Barth gas gudan\",\"pincode\":\"520008\",\"address\":\"GM54+397, Prashant Nagar, Jayaprakash Nagar, Vijayawada, Andhra Pradesh 520008, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5074857\",\"longitude\":\"80.656035\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-20', '01:00 PM - 3:00 PM', 40, '#OCDUSR_hXvA6', '10.00', '40.00', 5, '2021-12-20 10:25:49', '2021-12-20 18:33:53'),
('#OCORD_0ZNtd', '#OCUSR_AB0u3', '#OCADD_j8qBX', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"Chittibabu \",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"plot no:103\",\"building_name\":\"plot no:103\",\"street\":\"N. S. C. Bose nagar, kandrika \",\"landmark\":\"near YSRCP office opposite road  ground \",\"pincode\":\"520015\",\"address\":\"1027, 4th Ln, Kandrika, Payakapuram, Vijayawada, Andhra Pradesh 520015, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5515201\",\"longitude\":\"80.6562527\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-19', '01:00 PM - 3:00 PM', 40, '#OCDUSR_kS2YO', '10.00', '40.00', 5, '2021-12-19 08:33:31', '2021-12-19 16:53:35'),
('#OCORD_18HVR', '#OCUSR_jsBGf', '#OCADD_W7sLY', '#OCOFR_URch9', '449.00', '{\"offer_data\":{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"43-19-4A B1-89\",\"building_name\":\"43-19-4A B1-89\",\"street\":\"Venkateswarlu street\",\"landmark\":\"smile multi speciality hospital Ajith singh nagar 520015\",\"pincode\":\"520015\",\"address\":\"43-8-20, Venkateswarlu Street, Ajit Singh Nagar, PNT Colony, Vijayawada, Andhra Pradesh 520015, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5396282\",\"longitude\":\"80.6366871\"},\"offer_price\":\"100\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_aMPmi\":\"1\"}}', '2021-12-09', '01:00 PM - 3:00 PM', 0, '#OCDUSR_kS2YO', '50.00', '349.00', 5, '2021-12-03 10:23:08', '2021-12-15 21:53:34'),
('#OCORD_1bw2g', '#OCUSR_decHE', '#OCADD_KpAHr', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"Anil Lanka\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"Sri Sai Neelayam\",\"building_name\":\"Sri Sai Neelayam\",\"street\":\"Vinayak Nagar -1\",\"landmark\":\"Near Live Fish\",\"pincode\":\"520007\",\"address\":\"Yanamalakuduru Old Bridge Road, Sanjeevaiah Nagar, Ramalingeswara Nagar, Vijayawada, Andhra Pradesh 520007, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.4826476\",\"longitude\":\"80.6684231\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-23', '7:00 AM - 9:00 AM', 40, '#OCDUSR_kS2YO', '10.00', '40.00', 5, '2021-12-21 11:54:21', '2021-12-23 12:14:32'),
('#OCORD_1h9gG', '#OCUSR_j52wd', '#OCADD_jpcQe', '#OCOFR_URch9', '698.00', '{\"offer_data\":{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"Silpa M\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"32-18-3B, Opposite Sivalayam \",\"building_name\":\"32-18-3B, Opposite Sivalayam \",\"street\":\"Moghalrajapuram \",\"landmark\":\"near TDP Office \",\"pincode\":\"520010\",\"address\":\"32-18-6, 32-18-6, Mogalrajapuram, Christurajupuram, Vijayawada, Andhra Pradesh 520010, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5094753\",\"longitude\":\"80.6460007\"},\"offer_price\":\"100\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_aMPmi\":\"2\"}}', '2021-12-22', '7:00 AM - 9:00 AM', 0, '#OCDUSR_kS2YO', '40.00', '598.00', 5, '2021-12-21 17:28:31', '2021-12-23 12:15:21'),
('#OCORD_2Xd3v', '#OCUSR_Vpd1h', '#OCADD_eMNqE', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"ram\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"9-12-33\",\"building_name\":\"9-12-33\",\"street\":\"paila vari st\",\"landmark\":\"near ramalingeswara swami temple\",\"pincode\":\"520001\",\"address\":\"Kothapeta, Indrakeeladri, Behind Komala Vilas Hotel Hill Top, Islampet, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5207998\",\"longitude\":\"80.6090926\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-19', '7:00 AM - 9:00 AM', 40, '#OCDUSR_gYubk', '10.00', '40.00', 5, '2021-12-18 20:09:48', '2021-12-19 09:05:17'),
('#OCORD_36JOx', '#OCUSR_KRtpg', '#OCADD_F2Lto', '', '898.00', '{\"address\":{\"name\":\"\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"machiniliyam\",\"building_name\":\"machiniliyam\",\"street\":\"church street\",\"landmark\":\"jojinagar church \",\"pincode\":\"520012\",\"address\":\"Sithara convenient road, RR Nagar, Vijayawada, Andhra Pradesh 520012, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5353641\",\"longitude\":\"80.606397\"},\"offer_price\":0,\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_aMPmi\":\"2\"}}', '2021-12-12', '4:00 PM - 6:00 PM', 0, '#OCDUSR_kS2YO', '100.00', '898.00', 5, '2021-12-12 12:36:32', '2021-12-15 21:53:48'),
('#OCORD_3kgHV', '#OCUSR_cZcWn', '#OCADD_qUFOJ', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-19', '7:00 AM - 9:00 AM', 40, '#OCDUSR_hXvA6', '10.00', '40.00', 5, '2021-12-18 20:05:57', '2021-12-19 10:54:28'),
('#OCORD_3mmOF', '#OCUSR_m1zpF', '#OCADD_vdMaC', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"P   SUBHAS  REDDY \",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"Flat No 403, Sai Aniketh Apartment \",\"building_name\":\"Flat No 403, Sai Aniketh Apartment \",\"street\":\"Metropolitan Hotel Road, Old 5 no route\",\"landmark\":\"Near Sunnapu Battila  center, Siddhartha Nagar, Vijayawada\",\"pincode\":\"520010\",\"address\":\"Vellanki Ram mohan rao street, ITI Rd, SBI Colony 1, Siddhartha Nagar, Benz Circle, Vijayawada, Andhra Pradesh 520010, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5064402\",\"longitude\":\"80.6522439\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-21', '7:00 AM - 9:00 AM', 40, '#OCDUSR_kS2YO', '10.00', '40.00', 5, '2021-12-18 19:17:18', '2021-12-23 12:15:34'),
('#OCORD_3qxsO', '#OCUSR_D6iyx', '#OCADD_XsUgU', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"Sravanth T\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"D.no 3-1-235, Sri vasavi Bhavan,midhilanagar,\",\"building_name\":\"D.no 3-1-235, Sri vasavi Bhavan,midhilanagar,\",\"street\":\"Midhila nagar, Raju gari flat\",\"landmark\":\"4th right,Vasavi bhavan\",\"pincode\":\"520001\",\"address\":\"9-51-7, Vinchipeta, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5231545\",\"longitude\":\"80.6135344\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-19', '7:00 AM - 9:00 AM', 40, '#OCDUSR_hXvA6', '10.00', '40.00', 5, '2021-12-18 09:31:18', '2021-12-19 10:52:47'),
('#OCORD_3XZ6G', '#OCUSR_Fs9f8', '#OCADD_bka9S', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"d. no:9-12-17, beaming street, \",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"kothapeta,  Vijayawada \",\"building_name\":\"kothapeta,  Vijayawada \",\"street\":\"pincode-520001\",\"landmark\":\"near ramalayam\",\"pincode\":\"520001\",\"address\":\"Kt Road, Komala Vilas Center, Vijayawada, Islampet, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5200395\",\"longitude\":\"80.6107001\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-24', '7:00 AM - 9:00 AM', 40, '#OCDUSR_hXvA6', '10.00', '40.00', 3, '2021-12-23 09:10:58', '2021-12-24 10:23:22'),
('#OCORD_3zaeS', '#OCUSR_h8LBG', '#OCADD_eJyXU', '#OCOFR_URch9', '599.00', '{\"offer_data\":{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"nooruddin\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"73-6-22\",\"building_name\":\"73-6-22\",\"street\":\"shivashankar nagar\",\"landmark\":\"Asha function hall\",\"pincode\":\"520010\",\"address\":\"Donka Rd, beside Asha Function Hall, JD Nagar, Patamata, Vijayawada, Andhra Pradesh 520010, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.4923026\",\"longitude\":\"80.66617269999999\"},\"offer_price\":\"100\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_TDY5G\":\"1\"}}', '2021-12-26', '7:00 AM - 9:00 AM', 0, '', '50.00', '499.00', 2, '2021-12-25 00:09:03', '2021-12-25 07:04:32'),
('#OCORD_4zuhy', '#OCUSR_jHm9n', '#OCADD_Ul3dH', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"sajith md\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"26- 82\",\"building_name\":\"26- 82\",\"street\":\"Perera veedi\",\"landmark\":\"r r nagar\",\"pincode\":\"520012\",\"address\":\"26-82, Parera Veedhi, R R Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.544118\",\"longitude\":\"80.6080162\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-21', '01:00 PM - 3:00 PM', 40, '#OCDUSR_hXvA6', '10.00', '40.00', 5, '2021-12-21 08:24:51', '2021-12-21 15:00:42'),
('#OCORD_5ryjB', '#OCUSR_tuItl', '#OCADD_XMWdh', '#OCOFR_URch9', '399.00', '{\"offer_data\":{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"Flat no. D3, Kowsika Aditya Apartment\",\"building_name\":\"Flat no. D3, Kowsika Aditya Apartment\",\"street\":\"Street beside Viceroy Heights Appt,\",\"landmark\":\"Behind Hiway Towers, Tadepalli-522501\",\"pincode\":\"522501\",\"address\":\"FJF9+RHX, Tadepalli, Andhra Pradesh 522501, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.4744166\",\"longitude\":\"80.6192742\"},\"offer_price\":\"100\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"},\"razorpay_order_id\":\"order_IUelhVAEXBgxq8\"}', '2021-12-11', '7:00 AM - 9:00 AM', 0, '#OCDUSR_kS2YO', '50.00', '299.00', 5, '2021-12-07 22:19:53', '2021-12-12 15:08:01'),
('#OCORD_6XsSr', '#OCUSR_h8LBG', '#OCADD_eJyXU', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"nooruddin\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"73-6-22\",\"building_name\":\"73-6-22\",\"street\":\"shivashankar nagar\",\"landmark\":\"Asha function hall\",\"pincode\":\"520010\",\"address\":\"Donka Rd, beside Asha Function Hall, JD Nagar, Patamata, Vijayawada, Andhra Pradesh 520010, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.4923026\",\"longitude\":\"80.66617269999999\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-26', '7:00 AM - 9:00 AM', 40, '', '10.00', '40.00', 2, '2021-12-25 00:01:47', '2021-12-25 07:04:39'),
('#OCORD_77sNw', '#OCUSR_dNQGV', '#OCADD_83R1F', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"fareed\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"Block number 40\",\"building_name\":\"Block number 40\",\"street\":\"zila Parishadi high school\",\"landmark\":\"sachavalayam YSR colony Vijayawada\",\"pincode\":\"520001\",\"address\":\"YSR Colony Main Rd, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5554547\",\"longitude\":\"80.61307719999999\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-18', '7:00 AM - 9:00 AM', 40, '#OCDUSR_gYubk', '10.00', '40.00', 5, '2021-12-17 18:23:52', '2021-12-18 21:44:02'),
('#OCORD_7w4uW', '#OCUSR_l5HIy', '#OCADD_arkuD', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"CHANDRA SHEKAR\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"NEAR VCH SCHOOL\",\"building_name\":\"NEAR VCH SCHOOL\",\"street\":\"VIVEKANANDA SCHOOL \",\"landmark\":\"Ajith Singh nagar\",\"pincode\":\"520015\",\"address\":\"Vivekananda School Rd, Ajit Singh Nagar, PNT Colony, Vijayawada, Andhra Pradesh 520015, India\",\"city\":\"\",\"address_type\":\"work\",\"latitude\":\"16.5381816\",\"longitude\":\"80.6405313\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"},\"cancellation_msg\":\"\"}', '2021-12-28', '7:00 AM - 9:00 AM', 40, '', '10.00', '40.00', 6, '2021-12-26 11:11:53', '2021-12-26 11:12:01'),
('#OCORD_7xBsz', '#OCUSR_gsKNm', '#OCADD_Qsdte', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"S.kumar\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"plat no 44\",\"building_name\":\"plat no 44\",\"street\":\"N.S.C.Bose nagar,kandrika\",\"landmark\":\"near YSRCP office,main road\",\"pincode\":\"520015\",\"address\":\"1119, Kandrika Main Rd, Kandrika, Payakapuram, Vijayawada, Andhra Pradesh 520015, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5513668\",\"longitude\":\"80.6564403\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-20', '4:00 PM - 6:00 PM', 40, '#OCDUSR_hXvA6', '10.00', '40.00', 5, '2021-12-20 11:32:18', '2021-12-20 17:19:55'),
('#OCORD_8MSkv', '#OCUSR_OYAwQ', '#OCADD_a0dDL', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"Rangababu\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"43-17-5\",\"building_name\":\"43-17-5\",\"street\":\"Vivekananda school Road\",\"landmark\":\"NEAR SMILE MULTY SPECIALITY HOSPITAL, AJITH SINGH NAGAR\",\"pincode\":\"520015\",\"address\":\"43-124-31A singnager power office offiste shadhikaaroad, Ajit Singh Nagar, PNT Colony, Vijayawada, Andhra Pradesh 520015, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5394097\",\"longitude\":\"80.6401064\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-26', '7:00 AM - 9:00 AM', 40, '#OCDUSR_gYubk', '10.00', '40.00', 5, '2021-12-25 08:12:48', '2021-12-26 10:27:21'),
('#OCORD_8tqSZ', '#OCUSR_dRIdm', '#OCADD_io9Uj', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"md.babu.\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"9.60.50\",\"building_name\":\"9.60.50\",\"street\":\"ganapathi rao road\",\"landmark\":\"opp anjaneya restaurant\",\"pincode\":\"520001\",\"address\":\"9-63-1/2, Hameed St, Islampet, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"work\",\"latitude\":\"16.5213682\",\"longitude\":\"80.6147636\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-22', '01:00 PM - 3:00 PM', 40, '#OCDUSR_hXvA6', '10.00', '40.00', 3, '2021-12-22 09:32:44', '2021-12-23 15:30:38'),
('#OCORD_8vO4r', '#OCUSR_n9lUa', '#OCADD_jMOCH', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"Rambabu M\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"D.NO:32-34/5-27/8, Maseed Street \",\"building_name\":\"D.NO:32-34/5-27/8, Maseed Street \",\"street\":\"opposite to SRR college \",\"landmark\":\"Near Machavaram \",\"pincode\":\"520004\",\"address\":\"32-34-4/9, Machavaram, Vijayawada, Andhra Pradesh 520004, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.516448\",\"longitude\":\"80.6499055\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-26', '7:00 AM - 9:00 AM', 40, '#OCDUSR_gYubk', '10.00', '40.00', 5, '2021-12-23 08:08:30', '2021-12-26 11:07:01'),
('#OCORD_90QB9', '#OCUSR_fcPgS', '#OCADD_J5gpb', '', '798.00', '{\"address\":{\"name\":\"\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"flatno 202, Srisai nivasam appartments\",\"building_name\":\"flatno 202, Srisai nivasam appartments\",\"street\":\"Borra vari street\",\"landmark\":\"near Railway gate, rayanapadu,vijayawada\",\"pincode\":\"521241\",\"address\":\"HHF8+28C, Rayanapadu, Andhra Pradesh 521241, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5725333\",\"longitude\":\"80.5659309\"},\"offer_price\":0,\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"2\"}}', '2021-12-12', '10:00 AM - 12:00 PM', 0, '#OCDUSR_kS2YO', '100.00', '798.00', 5, '2021-12-11 21:16:44', '2021-12-19 16:49:39'),
('#OCORD_a9CnR', '#OCUSR_tnz4Y', '#OCADD_hPoM1', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"gowrishankar\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"9-3-17\",\"building_name\":\"9-3-17\",\"street\":\"Brahmin st\",\"landmark\":\"near komala vilas\",\"pincode\":\"520001\",\"address\":\"11-9-28, Brahmin St, 1 Town, Durga Agraharam, Mallikarjunapeta, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.519951\",\"longitude\":\"80.610122\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-19', '7:00 AM - 9:00 AM', 40, '#OCDUSR_gYubk', '10.00', '40.00', 5, '2021-12-17 21:00:27', '2021-12-19 09:29:05'),
('#OCORD_AfLhL', '#OCUSR_xs6mZ', '#OCADD_KVtmj', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"sofia\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"26-7/1\",\"building_name\":\"26-7/1\",\"street\":\"kota nageswarao street\",\"landmark\":\"beside TVS tyre godown\",\"pincode\":\"520012\",\"address\":\"Kabela Rd, Kabela, RR Nagar, Vijayawada, Andhra Pradesh 520012, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5408075\",\"longitude\":\"80.6073231\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-21', '01:00 PM - 3:00 PM', 40, '#OCDUSR_hXvA6', '10.00', '40.00', 5, '2021-12-21 08:25:41', '2021-12-21 15:00:09'),
('#OCORD_AgmGB', '#OCUSR_l8Phw', '#OCADD_4k034', '#OCOFR_URch9', '449.00', '{\"offer_data\":{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"66\",\"building_name\":\"66\",\"street\":\"shiv shankar nagar\",\"landmark\":\"back side of vijaya hospital\",\"pincode\":\"520010\",\"address\":\"73-6-24, Siva Shankara Nagar, near Asha Function Hall, JD Nagar, Patamata, Benz Circle, Vijayawada, Andhra Pradesh 520010, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.4920409\",\"longitude\":\"80.6655845\"},\"offer_price\":\"100\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_aMPmi\":\"1\"},\"razorpay_order_id\":\"order_IUfuHuRa1nh4Sz\"}', '2021-12-08', '7:00 AM - 9:00 AM', 0, '#OCDUSR_gYubk', '50.00', '349.00', 5, '2021-12-07 23:26:44', '2021-12-25 20:58:04'),
('#OCORD_an8fG', '#OCUSR_6Q4BT', '#OCADD_jglFO', '#OCOFR_URch9', '399.00', '{\"offer_data\":{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"prabhudasu\",\"building_name\":\"prabhudasu\",\"street\":\"cement road,hill top\",\"landmark\":\"Nagendra Swamy temple\",\"pincode\":\"520012\",\"address\":\"Sithara convenient road, RR Nagar, Vijayawada, Andhra Pradesh 520012, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5352783\",\"longitude\":\"80.6063069\"},\"offer_price\":\"100\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"},\"razorpay_order_id\":\"order_ISWnzn6m9KZgPq\",\"cancellation_msg\":\"my be date changed\"}', '2021-12-08', '4:00 PM - 6:00 PM', 0, '', '50.00', '199.00', 6, '2021-12-02 13:14:47', '2021-12-02 13:46:37'),
('#OCORD_aN9t2', '#OCUSR_134Sg', '#OCADD_teuSu', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"K RAJINI\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"DR NO 20-4-16 SECTOR-5\",\"building_name\":\"DR NO 20-4-16 SECTOR-5\",\"street\":\"ADDERALLI SUBBARAJU ROAD\",\"landmark\":\"LOTUS LANDMARK \",\"pincode\":\"520003\",\"address\":\"20-6-11/1C, Addepalli Venkatasubba Raju Rd, Sector 5, Ayodhya Nagar, Vijayawada, Andhra Pradesh 520003, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5276586\",\"longitude\":\"80.632846\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-30', '7:00 AM - 9:00 AM', 40, '', '10.00', '40.00', 2, '2021-12-28 00:41:39', '2021-12-28 08:17:29'),
('#OCORD_ARUfy', '#OCUSR_GOmBY', '#OCADD_PcHwj', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"Mounika Kammela\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"Sri Sai neelaam\",\"building_name\":\"Sri Sai neelaam\",\"street\":\"Vinayak Nagar -1\",\"landmark\":\"Near Masjid\",\"pincode\":\"520007\",\"address\":\"FMHG+89R, Yanamalakuduru, Ramalingeswara Nagar, Vijayawada, Andhra Pradesh 520007, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.4794299\",\"longitude\":\"80.6755186\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-23', '7:00 AM - 9:00 AM', 40, '#OCDUSR_hXvA6', '10.00', '40.00', 3, '2021-12-22 08:18:30', '2021-12-22 09:43:51'),
('#OCORD_B8yuT', '#OCUSR_2L2ZI', '#OCADD_akTC4', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"M.Gokul Krishna\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"4-11-4\",\"building_name\":\"4-11-4\",\"street\":\"peda masthan street\",\"landmark\":\"fire station \",\"pincode\":\"520001\",\"address\":\"4-11-4/1, Lambaadipeta, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5345466\",\"longitude\":\"80.6135395\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-21', '01:00 PM - 3:00 PM', 40, '#OCDUSR_hXvA6', '10.00', '40.00', 5, '2021-12-21 08:26:26', '2021-12-21 15:01:46'),
('#OCORD_bgdJP', '#OCUSR_hvI3F', '#OCADD_IZ4Qm', '#OCOFR_URch9', '749.00', '{\"offer_data\":{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"76-8-1-4\",\"building_name\":\"76-8-1-4\",\"street\":\"parankusadas street\",\"landmark\":\"near swati theatre\",\"pincode\":\"520012\",\"address\":\"76-8/9-11, Parankusadas St, near Swathi Theatre, Bhavanipuram, V D Puram, Vijayawada, Andhra Pradesh 520012, India\",\"city\":\"\",\"address_type\":\"work\",\"latitude\":\"16.5262079\",\"longitude\":\"80.5949296\"},\"offer_price\":\"100\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_pbULw\":\"1\"}}', '2021-12-10', '4:00 PM - 6:00 PM', 0, '#OCDUSR_gYubk', '100.00', '649.00', 5, '2021-12-10 12:43:17', '2021-12-25 21:03:08'),
('#OCORD_bovGz', '#OCUSR_r0ZKZ', '#OCADD_ULOv9', '', '658.00', '{\"address\":{\"name\":\"Manthena Alekya\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"24-49\",\"building_name\":\"24-49\",\"street\":\"r r nagar\",\"landmark\":\"kota nageswarao street \",\"pincode\":\"520012\",\"address\":\"26-49, R R Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5437503\",\"longitude\":\"80.6103418\"},\"offer_price\":0,\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_aMPmi\":\"1\",\"#OCITM_MO5KL\":\"1\"},\"razorpay_order_id\":\"order_IareuXH5xrK9t5\"}', '2021-12-24', '7:00 AM - 9:00 AM', 0, '', '30.00', '658.00', 7, '2021-12-23 14:49:29', '2021-12-23 14:49:29'),
('#OCORD_BumAR', '#OCUSR_AAalv', '#OCADD_CB0W1', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"kondalarao\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"d.no 9-12-34\",\"building_name\":\"d.no 9-12-34\",\"street\":\"pailavari street kothapet Vijayawada-520001\",\"landmark\":\"near ramalingeswara Swamy temple\",\"pincode\":\"520001\",\"address\":\"Kothapeta, Indrakeeladri, Behind Komala Vilas Hotel Hill Top, Islampet, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5207977\",\"longitude\":\"80.6091356\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-19', '01:00 PM - 3:00 PM', 40, '#OCDUSR_gYubk', '10.00', '40.00', 5, '2021-12-19 10:00:52', '2021-12-19 18:40:31'),
('#OCORD_bV92A', '#OCUSR_r08Ju', '#OCADD_046ZO', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"M anitha\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"44 15 244B\",\"building_name\":\"44 15 244B\",\"street\":\"Lenin nagar\",\"landmark\":\"budameru bridge\",\"pincode\":\"520004\",\"address\":\"GMH4+598, Budamerukatta, Lenin Nagar, Madhura Nagar, Vijayawada, Andhra Pradesh 520004, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5275933\",\"longitude\":\"80.6558574\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-25', '7:00 AM - 9:00 AM', 40, '#OCDUSR_gYubk', '10.00', '40.00', 5, '2021-12-22 09:55:37', '2021-12-25 21:20:33'),
('#OCORD_bwR2H', '#OCUSR_dV5rI', '#OCADD_ap71w', '#OCOFR_URch9', '973.00', '{\"offer_data\":{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"shaik khatija\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"76-14-233/4\",\"building_name\":\"76-14-233/4\",\"street\":\"Housing Board Colony.\n\",\"landmark\":\"sivalayam back 4th lane opp sai balaji towers.\",\"pincode\":\"520012\",\"address\":\"76-14-233/4, 4th Ln, Housing Board Colony, Vijayawada, Andhra Pradesh 520012, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5319487\",\"longitude\":\"80.5945275\"},\"offer_price\":\"100\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_7ot30\":\"1\",\"#OCITM_PqVi6\":\"1\",\"#OCITM_aMPmi\":\"1\"}}', '2021-12-17', '7:00 AM - 9:00 AM', 0, '#OCDUSR_hXvA6', '64.00', '873.00', 5, '2021-12-16 17:52:58', '2021-12-17 09:40:59'),
('#OCORD_By0xg', '#OCUSR_r0ZKZ', '#OCADD_ULOv9', '#OCOFR_wnQAA', '658.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"Manthena Alekya\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"24-49\",\"building_name\":\"24-49\",\"street\":\"r r nagar\",\"landmark\":\"kota nageswarao street \",\"pincode\":\"520012\",\"address\":\"26-49, R R Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5437503\",\"longitude\":\"80.6103418\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_wOjX9\":\"1\",\"#OCITM_MO5KL\":\"1\"}}', '2021-12-24', '01:00 PM - 3:00 PM', 0, '#OCDUSR_hXvA6', '30.00', '349.00', 3, '2021-12-24 09:47:26', '2021-12-24 15:15:26'),
('#OCORD_C0c4Y', '#OCUSR_yuXUy', '#OCADD_pUrrg', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"Teja simhachalam\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"6-10-7a\",\"building_name\":\"6-10-7a\",\"street\":\"pills kankaiah street \",\"landmark\":\"vagu center \",\"pincode\":\"520001\",\"address\":\"Vagu Centre, Vinchipeta, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5272438\",\"longitude\":\"80.6114615\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-28', '7:00 AM - 9:00 AM', 40, '', '10.00', '40.00', 2, '2021-12-27 00:37:14', '2021-12-28 08:06:32'),
('#OCORD_Cn6ce', '#OCUSR_p4NU4', '#OCADD_d2LRW', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"m.adithya\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"bhvya sri general stores\",\"building_name\":\"bhvya sri general stores\",\"street\":\"satyaranaya puram\",\"landmark\":\"gowtham reddy office\",\"pincode\":\"520011\",\"address\":\"23-2-13, Bhagat Singh Rd, Carmail Nagar, Satyaranayana Puram, Vijayawada, Andhra Pradesh 520011, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5233432\",\"longitude\":\"80.6380411\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-19', '7:00 AM - 9:00 AM', 40, '#OCDUSR_gYubk', '10.00', '40.00', 5, '2021-12-18 17:54:42', '2021-12-23 12:14:08'),
('#OCORD_d7ibu', '#OCUSR_6uob2', '#OCADD_e198o', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"KALYANI \",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"Dr no 20-4-15 SECTOR-5\",\"building_name\":\"Dr no 20-4-15 SECTOR-5\",\"street\":\"ADDEPALLI AUBBARAJU ROAD\",\"landmark\":\"LOTUSLANDMARK \",\"pincode\":\"520003\",\"address\":\"20-6-11/1C, Addepalli Venkatasubba Raju Rd, Sector 5, Ayodhya Nagar, Vijayawada, Andhra Pradesh 520003, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.527621\",\"longitude\":\"80.6328587\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-30', '7:00 AM - 9:00 AM', 40, '', '10.00', '40.00', 2, '2021-12-28 00:24:44', '2021-12-28 08:35:52'),
('#OCORD_de5Pi', '#OCUSR_Dszu8', '#OCADD_szEsl', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"venkatesh\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"d.no:9-12-33\",\"building_name\":\"d.no:9-12-33\",\"street\":\"pailavari street kothapet Vijayawada\",\"landmark\":\"near komala vilas \",\"pincode\":\"520001\",\"address\":\"9-3-23, Brahmin St, Islampet, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.519884\",\"longitude\":\"80.6103523\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-26', '7:00 AM - 9:00 AM', 40, '', '10.00', '40.00', 2, '2021-12-23 09:06:37', '2021-12-23 16:43:20'),
('#OCORD_DRsd5', '#OCUSR_kqoxm', '#OCADD_NLbyT', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"sai teja\n\n\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"brindavan printers\",\"building_name\":\"brindavan printers\",\"street\":\"anaparthi vari street\",\"landmark\":\"vijayatakies back side\",\"pincode\":\"520004\",\"address\":\"# Machavaram Down, Revenue Colony, Machavaram, Vijayawada, Machavaram Down, Machavaram, Vijayawada, Andhra Pradesh 520004, India\",\"city\":\"\",\"address_type\":\"work\",\"latitude\":\"16.5222595\",\"longitude\":\"80.6538012\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-29', '10:00 AM - 12:00 PM', 40, '', '10.00', '40.00', 2, '2021-12-28 07:02:09', '2021-12-28 08:15:11'),
('#OCORD_DSWma', '#OCUSR_DgsMX', '#OCADD_BQXSS', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"saibabu\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"5-6/4-5\",\"building_name\":\"5-6/4-5\",\"street\":\"Oop kalarahospital \",\"landmark\":\"chittinager\",\"pincode\":\"520003\",\"address\":\"Punnaiah colony, 3rd Cross Road, 1st Line, Ponnya Colony, Railway Colony, Gulabhi thota, Vijayawada, Andhra Pradesh 520003, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5209828\",\"longitude\":\"80.6445538\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-19', '7:00 AM - 9:00 AM', 40, '#OCDUSR_hXvA6', '10.00', '40.00', 5, '2021-12-18 17:48:02', '2021-12-19 10:53:03');
INSERT INTO `orders` (`order_key`, `user_id`, `address_id`, `offer_id`, `order_price`, `order_data`, `delivery_date`, `delivery_slot`, `delivery_charge`, `delivery_user`, `discount_price`, `final_order_price`, `status`, `order_at`, `last_updated_time`) VALUES
('#OCORD_dzDDH', '#OCUSR_sTljb', '#OCADD_UoZae', '#OCOFR_wnQAA', '608.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"padma nandyala \",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"26-82\",\"building_name\":\"26-82\",\"street\":\"Parera veedhi \",\"landmark\":\"opposite canara Bank\",\"pincode\":\"520012\",\"address\":\"26-82, Parera Veedhi, R R Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5442248\",\"longitude\":\"80.6080761\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\",\"#OCITM_gAe7O\":\"1\"}}', '2021-12-21', '01:00 PM - 3:00 PM', 0, '#OCDUSR_hXvA6', '20.00', '299.00', 5, '2021-12-21 08:30:30', '2021-12-21 15:00:48'),
('#OCORD_eAVt0', '#OCUSR_kV3J6', '#OCADD_AcgOB', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"Shaik Jany Basha\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"4-13-9/2\",\"building_name\":\"4-13-9/2\",\"street\":\"Joseph Street\",\"landmark\":\"Lambaadipeta\",\"pincode\":\"520001\",\"address\":\"4-14-7, Lambaadipeta, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.535194\",\"longitude\":\"80.6128477\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-20', '01:00 PM - 3:00 PM', 40, '#OCDUSR_hXvA6', '10.00', '40.00', 5, '2021-12-20 00:30:29', '2021-12-20 14:51:51'),
('#OCORD_eedVs', '#OCUSR_kSQTW', '#OCADD_sYt29', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"trinadh\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"d.no 9-12-33A pailavari street kothapet\",\"building_name\":\"d.no 9-12-33A pailavari street kothapet\",\"street\":\"near ramalingeswara Swamy temple, Vijayawada\",\"landmark\":\"near ramalingeswara Swamy temple\",\"pincode\":\"520001\",\"address\":\"GJC6+XJV, Vinchipeta, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5224861\",\"longitude\":\"80.6117033\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-19', '01:00 PM - 3:00 PM', 40, '#OCDUSR_gYubk', '10.00', '40.00', 5, '2021-12-19 09:56:28', '2021-12-19 18:22:27'),
('#OCORD_eRrZu', '#OCUSR_fcPgS', '#OCADD_J5gpb', '', '599.00', '{\"address\":{\"name\":\"\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"flatno 202, Srisai nivasam appartments\",\"building_name\":\"flatno 202, Srisai nivasam appartments\",\"street\":\"Borra vari street\",\"landmark\":\"near Railway gate, rayanapadu,vijayawada\",\"pincode\":\"521241\",\"address\":\"HHF8+28C, Rayanapadu, Andhra Pradesh 521241, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5725333\",\"longitude\":\"80.5659309\"},\"offer_price\":0,\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_TDY5G\":\"1\"},\"razorpay_order_id\":\"order_IZ8uWjLCwqE7Wc\"}', '2021-12-19', '10:00 AM - 12:00 PM', 0, '#OCDUSR_gYubk', '50.00', '599.00', 5, '2021-12-19 06:44:54', '2021-12-19 11:10:16'),
('#OCORD_EuoF4', '#OCUSR_aQjwe', '#OCADD_PPRHI', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"27 33 2 sivani ply woods\",\"building_name\":\"27 33 2 sivani ply woods\",\"street\":\"gudavalli vari street\",\"landmark\":\"bandar locks\",\"pincode\":\"520002\",\"address\":\"Kamaraju Building, Gudavalli Vari St, Governor Peta, Vijayawada, Andhra Pradesh 520002, India\",\"city\":\"\",\"address_type\":\"work\",\"latitude\":\"16.5102332\",\"longitude\":\"80.6234782\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-18', '4:00 PM - 6:00 PM', 40, '#OCDUSR_gYubk', '10.00', '40.00', 5, '2021-12-17 18:22:39', '2021-12-18 21:43:45'),
('#OCORD_fayjK', '#OCUSR_TJcm4', '#OCADD_UjkZ8', '#OCOFR_URch9', '749.00', '{\"offer_data\":{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"3-1-21;beside masjid\",\"building_name\":\"3-1-21;beside masjid\",\"street\":\"labour colony\",\"landmark\":\"masjid\",\"pincode\":\"520012\",\"address\":\"1-3-247/2, Milk Factory Rd, RR Nagar, Vijayawada, Andhra Pradesh 520012, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5352172\",\"longitude\":\"80.6062259\"},\"offer_price\":\"100\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_pbULw\":\"1\"}}', '2021-12-12', '7:00 AM - 9:00 AM', 0, '#OCDUSR_kS2YO', '100.00', '649.00', 5, '2021-12-02 17:24:41', '2021-12-23 12:14:50'),
('#OCORD_fQpiM', '#OCUSR_BzvEk', '#OCADD_VKJNs', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"ravanamma\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"9-12-33\",\"building_name\":\"9-12-33\",\"street\":\"pailavari st\",\"landmark\":\"near subramanyam swami temple\",\"pincode\":\"520001\",\"address\":\"Kothapeta, Indrakeeladri, Behind Komala Vilas Hotel Hill Top, Islampet, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5208006\",\"longitude\":\"80.6090993\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-19', '7:00 AM - 9:00 AM', 40, '#OCDUSR_gYubk', '10.00', '40.00', 5, '2021-12-17 22:16:39', '2021-12-19 09:29:49'),
('#OCORD_FWy8M', '#OCUSR_uUFZw', '#OCADD_Sawqb', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"charan\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"sree apartment, s1 flat no\",\"building_name\":\"sree apartment, s1 flat no\",\"street\":\"lic colony\",\"landmark\":\"bharat gas godown\",\"pincode\":\"520008\",\"address\":\"GM54+397, Prashant Nagar, Jayaprakash Nagar, Vijayawada, Andhra Pradesh 520008, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5074722\",\"longitude\":\"80.656119\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-19', '4:00 PM - 6:00 PM', 40, '#OCDUSR_gYubk', '10.00', '40.00', 5, '2021-12-19 12:22:27', '2021-12-20 10:25:40'),
('#OCORD_gaUpZ', '#OCUSR_zdpyB', '#OCADD_lWSwk', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"4-11-33 \",\"building_name\":\"4-11-33 \",\"street\":\"pedda mastan street \",\"landmark\":\"near alinagar masjid\",\"pincode\":\"520001\",\"address\":\"GJM7+HGR, Lambaadipeta, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5339967\",\"longitude\":\"80.6137737\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-26', '4:00 PM - 6:00 PM', 40, '', '10.00', '40.00', 2, '2021-12-26 00:26:34', '2021-12-26 07:55:25'),
('#OCORD_GB85R', '#OCUSR_kqoxm', '#OCADD_NLbyT', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"sai teja\n\n\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"brindavan printers\",\"building_name\":\"brindavan printers\",\"street\":\"anaparthi vari street\",\"landmark\":\"vijayatakies back side\",\"pincode\":\"520004\",\"address\":\"# Machavaram Down, Revenue Colony, Machavaram, Vijayawada, Machavaram Down, Machavaram, Vijayawada, Andhra Pradesh 520004, India\",\"city\":\"\",\"address_type\":\"work\",\"latitude\":\"16.5222595\",\"longitude\":\"80.6538012\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"},\"razorpay_order_id\":\"order_IciJt77HpyTx8o\"}', '2021-12-29', '10:00 AM - 12:00 PM', 40, '', '10.00', '40.00', 7, '2021-12-28 06:59:21', '2021-12-28 06:59:21'),
('#OCORD_iemBV', '#OCUSR_qRM2Z', '#OCADD_pamZA', '', '309.00', '{\"address\":{\"name\":\"GOVIND\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"43-17-5\",\"building_name\":\"43-17-5\",\"street\":\"NEAR SMILE MULTY SPECIALITY HOSPITAL\",\"landmark\":\"VIVEKANANDA SCHOOL ROAD\",\"pincode\":\"520015\",\"address\":\"Ajit Singh Nagar, PNT Colony, Vijayawada, Andhra Pradesh 520015, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.537776\",\"longitude\":\"80.6396287\"},\"offer_price\":0,\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-26', '7:00 AM - 9:00 AM', 40, '#OCDUSR_gYubk', '10.00', '349.00', 5, '2021-12-25 06:34:05', '2021-12-26 10:27:44'),
('#OCORD_Ienc6', '#OCUSR_m1zpF', '#OCADD_vdMaC', '#OCOFR_URch9', '599.00', '{\"offer_data\":{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"P   SUBHAS  REDDY \",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"Flat No 403, Sai Aniketh Apartment \",\"building_name\":\"Flat No 403, Sai Aniketh Apartment \",\"street\":\"Metropolitan Hotel Road, Old 5 no route\",\"landmark\":\"Near Sunnapu Battila  center, Siddhartha Nagar, Vijayawada\",\"pincode\":\"520010\",\"address\":\"Vellanki Ram mohan rao street, ITI Rd, SBI Colony 1, Siddhartha Nagar, Benz Circle, Vijayawada, Andhra Pradesh 520010, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5064402\",\"longitude\":\"80.6522439\"},\"offer_price\":\"100\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_TDY5G\":\"1\"}}', '2021-12-26', '7:00 AM - 9:00 AM', 0, '', '50.00', '499.00', 2, '2021-12-25 18:57:35', '2021-12-25 20:07:59'),
('#OCORD_iQM1Z', '#OCUSR_oqVhz', '#OCADD_XsbDJ', '#OCOFR_URch9', '349.00', '{\"offer_data\":{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"md jameel\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"26-82/a\",\"building_name\":\"26-82/a\",\"street\":\"Parera veedhi\",\"landmark\":\"opp canara bank\",\"pincode\":\"520012\",\"address\":\"26-82, Parera Veedhi, R R Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5442194\",\"longitude\":\"80.6080733\"},\"offer_price\":\"100\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_aMPmi\":\"1\"}}', '2021-12-26', '10:00 AM - 12:00 PM', 40, '', '20.00', '289.00', 2, '2021-12-26 07:46:43', '2021-12-26 07:53:36'),
('#OCORD_IrbFr', '#OCUSR_9dqiX', '#OCADD_prIdb', '#OCOFR_URch9', '599.00', '{\"offer_data\":{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"3-1-20/a\",\"building_name\":\"3-1-20/a\",\"street\":\"vidhyadarapuram main road\",\"landmark\":\"beside masjid\",\"pincode\":\"520012\",\"address\":\"# 1-3-189, Vidyadharapuram, beside Terisa Hospital, Kamakoti Nagar, V D Puram, Vijayawada, Andhra Pradesh 520012, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5263265\",\"longitude\":\"80.6044657\"},\"offer_price\":\"100\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_TDY5G\":\"1\"}}', '2021-12-19', '01:00 PM - 3:00 PM', 0, '#OCDUSR_gYubk', '50.00', '499.00', 5, '2021-12-19 08:11:10', '2021-12-19 09:33:34'),
('#OCORD_izjiu', '#OCUSR_f9OOo', '#OCADD_C4g0e', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"Sravanth Tammina\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"D.no 3-1-235, Sri vasavi Bhavan,midhilanagar,\",\"building_name\":\"D.no 3-1-235, Sri vasavi Bhavan,midhilanagar,\",\"street\":\"Midhila nagar,Raju gari flat\",\"landmark\":\"4th right, Sri Vasavi bhavan\",\"pincode\":\"520001\",\"address\":\"9-51-7, Vinchipeta, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5231539\",\"longitude\":\"80.6135181\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-19', '10:00 AM - 12:00 PM', 40, '#OCDUSR_hXvA6', '10.00', '40.00', 5, '2021-12-18 09:21:27', '2021-12-19 10:54:22'),
('#OCORD_j6nEf', '#OCUSR_Lh3IT', '#OCADD_LVpjB', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"Lakshmi Narayana J\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"d.no: 2-28-57\",\"building_name\":\"d.no: 2-28-57\",\"street\":\"mindi,near BHPV post\",\"landmark\":\"near SBI ATM, Beside Church, Visakhapatnam-530012\",\"pincode\":\"520001\",\"address\":\"Kothapeta, Indrakeeladri, Behind Komala Vilas Hotel Hill Top, Islampet, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5207998\",\"longitude\":\"80.6090925\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-19', '10:00 AM - 12:00 PM', 40, '#OCDUSR_gYubk', '10.00', '40.00', 5, '2021-12-19 07:47:21', '2021-12-19 09:28:54'),
('#OCORD_jlHi3', '#OCUSR_rFh3x', '#OCADD_7vpLV', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"Siva Sai kumar\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"27-33-2 sivani towers \",\"building_name\":\"27-33-2 sivani towers \",\"street\":\"gudavallistreet\",\"landmark\":\"beside bank of baroda\",\"pincode\":\"520002\",\"address\":\"Kamaraju Building, Gudavalli Vari St, Governor Peta, Vijayawada, Andhra Pradesh 520002, India\",\"city\":\"\",\"address_type\":\"work\",\"latitude\":\"16.5102348\",\"longitude\":\"80.6234733\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-18', '4:00 PM - 6:00 PM', 40, '#OCDUSR_gYubk', '10.00', '40.00', 5, '2021-12-17 17:11:21', '2021-12-18 21:43:40'),
('#OCORD_Jx42G', '#OCUSR_rwlE3', '#OCADD_cB9l7', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"d. no:9-3-17\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"beaming street, kothapeta\",\"building_name\":\"beaming street, kothapeta\",\"street\":\"Vijayawada \",\"landmark\":\"near ramalayam\",\"pincode\":\"520001\",\"address\":\"9-3-111, Brahmin St, Islampet, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5198731\",\"longitude\":\"80.6104441\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-24', '7:00 AM - 9:00 AM', 40, '#OCDUSR_hXvA6', '10.00', '40.00', 3, '2021-12-23 09:13:17', '2021-12-24 10:23:39'),
('#OCORD_jZDHl', '#OCUSR_guS0h', '#OCADD_OObsr', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"bhogala venkata siva prasad\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"6-18-3C\",\"building_name\":\"6-18-3C\",\"street\":\"Banka Kamaraju Street\",\"landmark\":\"RR Chicken\",\"pincode\":\"520001\",\"address\":\"Vagu Centre, Vinchipeta, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5272451\",\"longitude\":\"80.6114785\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-28', '7:00 AM - 9:00 AM', 40, '', '10.00', '40.00', 2, '2021-12-27 00:54:09', '2021-12-28 08:09:33'),
('#OCORD_ki38h', '#OCUSR_P6vcv', '#OCADD_M4KQB', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"kosuri Krupa rao\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"sai nilayam\",\"building_name\":\"sai nilayam\",\"street\":\"vinyaka nager-1\",\"landmark\":\"water plant beaide\",\"pincode\":\"520007\",\"address\":\"# 8-83, Indira Nagar-2,Yanamalakuduru, Vijayawada, Yanamalakuduru, Ramalingeswara Nagar, Vijayawada, Andhra Pradesh 520007, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.481168\",\"longitude\":\"80.6788513\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-26', '7:00 AM - 9:00 AM', 40, '#OCDUSR_kS2YO', '10.00', '40.00', 3, '2021-12-24 07:38:41', '2021-12-26 07:50:32'),
('#OCORD_Kj7SL', '#OCUSR_2Dtao', '#OCADD_xYECX', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"hemanth Upendra\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"9-3-17\",\"building_name\":\"9-3-17\",\"street\":\"Brahmin st\",\"landmark\":\"komala vilas\",\"pincode\":\"520001\",\"address\":\"9-3-111, Brahmin St, Islampet, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5199605\",\"longitude\":\"80.6106052\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-19', '7:00 AM - 9:00 AM', 40, '#OCDUSR_gYubk', '10.00', '40.00', 5, '2021-12-17 21:05:41', '2021-12-19 09:29:34'),
('#OCORD_KVZiS', '#OCUSR_sG5PA', '', '', '798.00', '{\"address\":{},\"offer_price\":0,\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\",\"#OCITM_PqVi6\":\"1\"},\"razorpay_order_id\":\"order_IS53YBpcNEzrdz\"}', '2021-12-08', '01:00 PM - 3:00 PM', 0, '', '100.00', '798.00', 2, '2021-12-01 10:14:24', '2021-12-01 15:45:04'),
('#OCORD_lArFa', '#OCUSR_DNAhb', '#OCADD_PGxQI', '#OCOFR_URch9', '599.00', '{\"offer_data\":{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"prem korneni\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"mig-1, 19/8, new HB colony\",\"building_name\":\"mig-1, 19/8, new HB colony\",\"street\":\"bhavanipuram, vijayawada\",\"landmark\":\"opp. road of ICL Fincorp\",\"pincode\":\"520012\",\"address\":\"MIG-I-19, Housing Board Colony, Vijayawada, Andhra Pradesh 520012, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5347118\",\"longitude\":\"80.5964474\"},\"offer_price\":\"100\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_TDY5G\":\"1\"}}', '2021-12-22', '7:00 AM - 9:00 AM', 0, '#OCDUSR_hXvA6', '50.00', '499.00', 5, '2021-12-21 17:46:54', '2021-12-22 09:19:26'),
('#OCORD_LlS8P', '#OCUSR_h05c5', '#OCADD_ehKv8', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"madhavi\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"5-6/4-5\",\"building_name\":\"5-6/4-5\",\"street\":\"oop klalahospital\",\"landmark\":\"chittinager\",\"pincode\":\"520001\",\"address\":\"5-6/4-3, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5339047\",\"longitude\":\"80.6148004\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-19', '7:00 AM - 9:00 AM', 40, '#OCDUSR_kS2YO', '10.00', '40.00', 5, '2021-12-18 21:28:33', '2021-12-23 12:15:07'),
('#OCORD_lszGb', '#OCUSR_hirHn', '#OCADD_D2W52', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"sivani towers \",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"27-34_2 sivani plywoods and Laminates \",\"building_name\":\"27-34_2 sivani plywoods and Laminates \",\"street\":\"Gudavalli  vari street\",\"landmark\":\"beside bank of baroda\",\"pincode\":\"520002\",\"address\":\"Kamaraju Building, Gudavalli Vari St, Governor Peta, Vijayawada, Andhra Pradesh 520002, India\",\"city\":\"\",\"address_type\":\"work\",\"latitude\":\"16.5102339\",\"longitude\":\"80.6234775\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-18', '01:00 PM - 3:00 PM', 40, '#OCDUSR_gYubk', '10.00', '40.00', 5, '2021-12-17 18:16:06', '2021-12-18 21:43:57'),
('#OCORD_mA72M', '#OCUSR_fcPgS', '#OCADD_J5gpb', '', '349.00', '{\"address\":{\"name\":\"\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"flatno 202, Srisai nivasam appartments\",\"building_name\":\"flatno 202, Srisai nivasam appartments\",\"street\":\"Borra vari street\",\"landmark\":\"near Railway gate, rayanapadu,vijayawada\",\"pincode\":\"521241\",\"address\":\"HHF8+28C, Rayanapadu, Andhra Pradesh 521241, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5725333\",\"longitude\":\"80.5659309\"},\"offer_price\":0,\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_aMPmi\":\"1\"}}', '2021-12-19', '01:00 PM - 3:00 PM', 40, '#OCDUSR_gYubk', '20.00', '389.00', 5, '2021-12-19 09:08:38', '2021-12-19 11:10:27'),
('#OCORD_nMfLv', '#OCUSR_oqVhz', '#OCADD_XsbDJ', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"md jameel\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"26-82/a\",\"building_name\":\"26-82/a\",\"street\":\"Parera veedhi\",\"landmark\":\"opp canara bank\",\"pincode\":\"520012\",\"address\":\"26-82, Parera Veedhi, R R Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5442194\",\"longitude\":\"80.6080733\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-26', '10:00 AM - 12:00 PM', 40, '', '10.00', '40.00', 2, '2021-12-26 07:45:48', '2021-12-26 07:53:45'),
('#OCORD_nZ6J3', '#OCUSR_u2crb', '#OCADD_XCCRB', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"Sk Nazeer\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"26-49\",\"building_name\":\"26-49\",\"street\":\"Kota nageswarai street\",\"landmark\":\"backside naga Sai Baba temple\",\"pincode\":\"520012\",\"address\":\"26-49, R R Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5435467\",\"longitude\":\"80.6102333\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-24', '01:00 PM - 3:00 PM', 40, '#OCDUSR_hXvA6', '10.00', '40.00', 3, '2021-12-24 09:45:48', '2021-12-24 15:15:19'),
('#OCORD_O2Frf', '#OCUSR_33WBq', '#OCADD_JROEe', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"Girish\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"Gf 6,H2 block no 28\",\"building_name\":\"Gf 6,H2 block no 28\",\"street\":\"r g k colony, near ravindra Bharathi school,p\",\"landmark\":\"Singh nagar\",\"pincode\":\"520015\",\"address\":\"GMW3+C43, Prashanthi Nagar, Kavithas, Payakapuram, Vijayawada, Andhra Pradesh 520015, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5462134\",\"longitude\":\"80.6529808\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-28', '7:00 AM - 9:00 AM', 40, '', '10.00', '40.00', 2, '2021-12-27 05:04:00', '2021-12-28 08:11:06'),
('#OCORD_q4A95', '#OCUSR_cZcWn', '#OCADD_qUFOJ', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"mujees\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"533\n\",\"building_name\":\"533\n\",\"street\":\"rajivnagar\",\"landmark\":\"highi scool\",\"pincode\":\"520015\",\"address\":\"# 873, Old Rajivnagar, Vijayawada, Old Rajeev Nagar, Kavithas, Payakapuram, Vijayawada, Andhra Pradesh 520015, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.554387\",\"longitude\":\"80.64804\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"},\"razorpay_order_id\":\"order_IYy6g8aLpFvGKB\"}', '2021-12-19', '7:00 AM - 9:00 AM', 40, '', '10.00', '40.00', 7, '2021-12-18 19:49:56', '2021-12-18 19:49:56'),
('#OCORD_QhejK', '#OCUSR_DfQWa', '#OCADD_9ED2r', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"K KRISHNAM RAJU\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"Dr NO 20-4-15 SECTOR-5 \",\"building_name\":\"Dr NO 20-4-15 SECTOR-5 \",\"street\":\"ADDEPALLI SUBBARAJU ROAD \",\"landmark\":\"LOTUSLANDMARK \",\"pincode\":\"520003\",\"address\":\"20-6-11/1C, Addepalli Venkatasubba Raju Rd, Sector 5, Ayodhya Nagar, Vijayawada, Andhra Pradesh 520003, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5276185\",\"longitude\":\"80.6328528\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-30', '7:00 AM - 9:00 AM', 40, '', '10.00', '40.00', 2, '2021-12-28 00:30:51', '2021-12-28 08:20:26'),
('#OCORD_R2g11', '#OCUSR_o8Qc7', '#OCADD_tAXvm', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"jamal\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"26-82/a\",\"building_name\":\"26-82/a\",\"street\":\"parera veedi\",\"landmark\":\"opp canara bank\",\"pincode\":\"520012\",\"address\":\"26-82, Parera Veedhi, R R Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5442194\",\"longitude\":\"80.6080734\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-20', '10:00 AM - 12:00 PM', 40, '#OCDUSR_hXvA6', '10.00', '40.00', 5, '2021-12-20 00:03:28', '2021-12-20 12:25:19'),
('#OCORD_RD4ai', '#OCUSR_QnY9P', '#OCADD_bn1ZM', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"shahid\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"Vijayawada, Chittinagar, Fraserpeta, Vijayawa\",\"building_name\":\"Vijayawada, Chittinagar, Fraserpeta, Vijayawa\",\"street\":\"mastan street\",\"landmark\":\"janda chettu\",\"pincode\":\"520001\",\"address\":\"GJM7+H4W, Chittinagar, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5342839\",\"longitude\":\"80.6127662\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-26', '4:00 PM - 6:00 PM', 40, '', '10.00', '40.00', 2, '2021-12-26 09:38:18', '2021-12-26 12:58:18'),
('#OCORD_rDbq8', '#OCUSR_rZBjf', '#OCADD_dS2Dj', '', '749.00', '{\"address\":{\"name\":\"\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"door no. 37-7-3\",\"building_name\":\"door no. 37-7-3\",\"street\":\"badavapet, vijayawada 520010\",\"landmark\":\"beside IPC Church \",\"pincode\":\"520010\",\"address\":\"37-1-17, Badavapet, Labbipet, Vijayawada, Andhra Pradesh 520010, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5044811\",\"longitude\":\"80.6408425\"},\"offer_price\":0,\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_pbULw\":\"1\"}}', '2021-12-12', '10:00 AM - 12:00 PM', 0, '#OCDUSR_kS2YO', '100.00', '749.00', 5, '2021-12-12 07:49:57', '2021-12-19 16:48:56'),
('#OCORD_RVlFs', '#OCUSR_lgpOb', '#OCADD_1YLnw', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"y.g.anjaneya\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"gf 6,H2 block no 28,\",\"building_name\":\"gf 6,H2 block no 28,\",\"street\":\"r g k colony ,near ravindra bharathi school,p\",\"landmark\":\"Ajith Singh nagar\",\"pincode\":\"520015\",\"address\":\"H-3 40, Vambay Colony, Vijayawada, Andhra Pradesh 520015, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5419039\",\"longitude\":\"80.6548175\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-28', '7:00 AM - 9:00 AM', 40, '', '10.00', '40.00', 2, '2021-12-27 05:16:11', '2021-12-28 08:13:17'),
('#OCORD_s0qcB', '#OCUSR_vF7wB', '#OCADD_JQlPa', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"nirmala\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"8-416/1 sri sai nilayam\",\"building_name\":\"8-416/1 sri sai nilayam\",\"street\":\"vinayak nagar 1\",\"landmark\":\"near live fish market\",\"pincode\":\"520007\",\"address\":\"24-1, Yanamalakuduru, Ramalingeswara Nagar, Vijayawada, Andhra Pradesh 520007, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.4782461\",\"longitude\":\"80.6768244\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-23', '7:00 AM - 9:00 AM', 40, '#OCDUSR_hXvA6', '10.00', '40.00', 3, '2021-12-22 08:31:41', '2021-12-22 09:42:07'),
('#OCORD_sWrkg', '#OCUSR_AclXk', '#OCADD_rjRMw', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"charishma\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"9-3-17\",\"building_name\":\"9-3-17\",\"street\":\"brahmin st\",\"landmark\":\"near komala vilas\",\"pincode\":\"520001\",\"address\":\"9-3-111, Brahmin St, Islampet, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5200223\",\"longitude\":\"80.6106541\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-19', '7:00 AM - 9:00 AM', 40, '#OCDUSR_gYubk', '10.00', '40.00', 5, '2021-12-17 21:47:05', '2021-12-19 09:29:10'),
('#OCORD_TojIT', '#OCUSR_GVdkn', '#OCADD_9aHAP', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"jai\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"9-12-33\",\"building_name\":\"9-12-33\",\"street\":\"paila vari st\",\"landmark\":\"near ramalingeswara Swamy temple\",\"pincode\":\"520001\",\"address\":\"Kothapeta, Indrakeeladri, Behind Komala Vilas Hotel Hill Top, Islampet, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5207986\",\"longitude\":\"80.6090957\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-19', '7:00 AM - 9:00 AM', 40, '#OCDUSR_gYubk', '10.00', '40.00', 5, '2021-12-18 20:08:33', '2021-12-19 09:29:39'),
('#OCORD_uL9lm', '#OCUSR_jp3Ay', '#OCADD_5SGAQ', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"jagadheeswari\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"9-3-17\",\"building_name\":\"9-3-17\",\"street\":\"brahmin st\",\"landmark\":\"near komala vilas\",\"pincode\":\"520001\",\"address\":\"9-3-111, Brahmin St, Islampet, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5199798\",\"longitude\":\"80.6105808\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-19', '7:00 AM - 9:00 AM', 40, '#OCDUSR_gYubk', '10.00', '40.00', 5, '2021-12-17 21:09:14', '2021-12-19 09:29:44'),
('#OCORD_um3Xs', '#OCUSR_GIC0e', '#OCADD_R66ui', '', '599.00', '{\"address\":{\"name\":\"NAGAM Karthik suryanag\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"3/6/177/2\",\"building_name\":\"3/6/177/2\",\"street\":\"sitara center \",\"landmark\":\"opposite organichicken\",\"pincode\":\"520012\",\"address\":\"Sithara convenient road, RR Nagar, Vijayawada, Andhra Pradesh 520012, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5352554\",\"longitude\":\"80.606263\"},\"offer_price\":0,\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_TDY5G\":\"1\"}}', '2021-12-19', '01:00 PM - 3:00 PM', 0, '#OCDUSR_gYubk', '50.00', '599.00', 5, '2021-12-19 08:29:42', '2021-12-19 09:28:49'),
('#OCORD_uwwqF', '#OCUSR_yTmE9', '#OCADD_IRbUz', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"P.Venkateswara Rao\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"74-26-13/A\",\"building_name\":\"74-26-13/A\",\"street\":\"NEW RTC COLONY,Malayalam Vari Streeet,Patamat\",\"landmark\":\"RRS Chicken Center\",\"pincode\":\"520010\",\"address\":\"Gergepe, Vijayawada Rd, Labbipet, Vijayawada, Andhra Pradesh 520010, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.4981057\",\"longitude\":\"80.6432409\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-28', '4:00 PM - 6:00 PM', 40, '', '10.00', '40.00', 2, '2021-12-28 12:56:48', '2021-12-28 15:53:37'),
('#OCORD_VXPxm', '#OCUSR_8wbY8', '#OCADD_mA6xH', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"Maha Bhogala\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"D.No. 6-10-33\",\"building_name\":\"D.No. 6-10-33\",\"street\":\"Pilla Kanakaiha Street \",\"landmark\":\"Vagu Center\",\"pincode\":\"520001\",\"address\":\"Vagu Centre, Vinchipeta, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5272407\",\"longitude\":\"80.6114706\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-28', '7:00 AM - 9:00 AM', 40, '', '10.00', '40.00', 2, '2021-12-27 00:42:30', '2021-12-28 08:08:28');
INSERT INTO `orders` (`order_key`, `user_id`, `address_id`, `offer_id`, `order_price`, `order_data`, `delivery_date`, `delivery_slot`, `delivery_charge`, `delivery_user`, `discount_price`, `final_order_price`, `status`, `order_at`, `last_updated_time`) VALUES
('#OCORD_wAqfK', '#OCUSR_cs9vY', '#OCADD_bEJDJ', '#OCOFR_URch9', '599.00', '{\"offer_data\":{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"Saifuddin\n\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"4_11_5\",\"building_name\":\"4_11_5\",\"street\":\"pedda mastan street Ali nagar\",\"landmark\":\"kalara hospital\",\"pincode\":\"520012\",\"address\":\"MIG-2, Police Station Rd, near Reliance Trends, Housing Board Colony, Vijayawada, Andhra Pradesh 520012, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5346001\",\"longitude\":\"80.5974768\"},\"offer_price\":\"100\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_TDY5G\":\"1\"},\"razorpay_order_id\":\"order_IZE02jUdJOIqYN\"}', '2021-12-19', '4:00 PM - 6:00 PM', 0, '', '50.00', '499.00', 7, '2021-12-19 11:22:45', '2021-12-19 11:22:45'),
('#OCORD_WqqT0', '#OCUSR_3WMhA', '#OCADD_3Kpyu', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"M vinod kumar\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"Budameru bridge\",\"building_name\":\"Budameru bridge\",\"street\":\"Lenin nagar\",\"landmark\":\"Near railway gate\",\"pincode\":\"520004\",\"address\":\"Ward no.2 BRTS Road, beside Model Dairy Outlet, Divine Nagar, Machavaram, Vijayawada, Andhra Pradesh 520004, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5243877\",\"longitude\":\"80.6561615\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-25', '7:00 AM - 9:00 AM', 40, '#OCDUSR_gYubk', '10.00', '40.00', 5, '2021-12-22 09:47:56', '2021-12-25 21:20:32'),
('#OCORD_wTJ2O', '#OCUSR_NgACY', '#OCADD_xpuYw', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"pavan \",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"183\",\"building_name\":\"183\",\"street\":\"old Rajeev nagar\",\"landmark\":\"water tank \",\"pincode\":\"520015\",\"address\":\"HJ3X+V58, Old Rajeev Nagar, Kavithas, Payakapuram, Vijayawada, Andhra Pradesh 520015, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5548349\",\"longitude\":\"80.6476674\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-24', '4:00 PM - 6:00 PM', 40, '#OCDUSR_hXvA6', '10.00', '40.00', 3, '2021-12-24 09:12:46', '2021-12-24 15:15:12'),
('#OCORD_wuvEW', '#OCUSR_lgpOb', '#OCADD_1YLnw', '', '309.00', '{\"address\":{\"name\":\"y.g.anjaneya\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"gf 6,H2 block no 28,\",\"building_name\":\"gf 6,H2 block no 28,\",\"street\":\"r g k colony ,near ravindra bharathi school,p\",\"landmark\":\"Ajith Singh nagar\",\"pincode\":\"520015\",\"address\":\"H-3 40, Vambay Colony, Vijayawada, Andhra Pradesh 520015, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5419039\",\"longitude\":\"80.6548175\"},\"offer_price\":0,\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"},\"cancellation_msg\":\"I have already order sry for that\"}', '2021-12-28', '7:00 AM - 9:00 AM', 40, '', '10.00', '349.00', 6, '2021-12-27 05:07:57', '2021-12-27 05:14:49'),
('#OCORD_WXkow', '#OCUSR_3HGNh', '#OCADD_58End', '#OCOFR_URch9', '309.00', '{\"offer_data\":{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"pavan kalyan\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"26-82/a\",\"building_name\":\"26-82/a\",\"street\":\"parera veedhi\",\"landmark\":\"cenara bank\",\"pincode\":\"520012\",\"address\":\"26-82, Parera Veedhi, R R Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5442144\",\"longitude\":\"80.608054\"},\"offer_price\":\"100\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-24', '10:00 AM - 12:00 PM', 40, '#OCDUSR_hXvA6', '10.00', '249.00', 3, '2021-12-24 02:03:11', '2021-12-24 10:29:23'),
('#OCORD_XEl8P', '#OCUSR_zWbsE', '#OCADD_xKMDJ', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"Mallika\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"43-17-5\",\"building_name\":\"43-17-5\",\"street\":\"Vivekananda school Road\",\"landmark\":\"NEAR SMILE MULTYSPECIALITY HOSPITAL, AJITH SINGH NAGAR\",\"pincode\":\"520015\",\"address\":\"GJQQ+CVJ, Ajit Singh Nagar, PNT Colony, Vijayawada, Andhra Pradesh 520015, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5388417\",\"longitude\":\"80.63994\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-26', '4:00 PM - 6:00 PM', 40, '#OCDUSR_gYubk', '10.00', '40.00', 5, '2021-12-25 07:44:45', '2021-12-26 10:27:01'),
('#OCORD_xHVvG', '#OCUSR_ropH0', '#OCADD_srUHe', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"SHAIK Mohiddin\",\"building_name\":\"SHAIK Mohiddin\",\"street\":\"pedda Mastan street\",\"landmark\":\"cholera hospital\",\"pincode\":\"520001\",\"address\":\"4-11-5, Lambaadipeta, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5345759\",\"longitude\":\"80.6134257\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-26', '10:00 AM - 12:00 PM', 40, '', '10.00', '40.00', 2, '2021-12-25 08:25:12', '2021-12-25 11:54:24'),
('#OCORD_xS4k8', '#OCUSR_YeNZF', '#OCADD_iWSk9', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"Sudhakar redddy\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"26-2,\",\"building_name\":\"26-2,\",\"street\":\"kabela center\",\"landmark\":\"near hp petrol bunk\",\"pincode\":\"520012\",\"address\":\"181, Kabela, Ramrajya Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5421259\",\"longitude\":\"80.6090891\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-26', '10:00 AM - 12:00 PM', 40, '', '10.00', '40.00', 2, '2021-12-26 00:00:48', '2021-12-26 07:12:18'),
('#OCORD_xWU5r', '#OCUSR_2jh5z', '#OCADD_Ci5Cu', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"amarnath\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"402-16, Chukkapallivari Street\",\"building_name\":\"402-16, Chukkapallivari Street\",\"street\":\"Labbipet\",\"landmark\":\"kusalava Hyundai showroom back side\",\"pincode\":\"520010\",\"address\":\"40-2-26/4, Chookka Vari St, Mogalrajapuram, Sidhartha Nagar, Labbipet, Vijayawada, Andhra Pradesh 520010, India\",\"city\":\"\",\"address_type\":\"work\",\"latitude\":\"16.502189\",\"longitude\":\"80.6448889\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"},\"razorpay_order_id\":\"order_IbaS9BmWiBHCbw\"}', '2021-12-25', '4:00 PM - 6:00 PM', 40, '#OCDUSR_gYubk', '10.00', '40.00', 5, '2021-12-25 10:39:46', '2021-12-25 21:20:39'),
('#OCORD_xyOz8', '#OCUSR_j6POZ', '#OCADD_qD0Q1', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"jayaram\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"9-3-17\",\"building_name\":\"9-3-17\",\"street\":\"Brahmin st\",\"landmark\":\"near komala vilas\",\"pincode\":\"520001\",\"address\":\"9-7-7, Brahmin St, Islampet, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5198411\",\"longitude\":\"80.6096215\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-19', '7:00 AM - 9:00 AM', 40, '#OCDUSR_gYubk', '10.00', '40.00', 5, '2021-12-18 20:04:36', '2021-12-19 09:28:59'),
('#OCORD_y4TnH', '#OCUSR_ekuka', '#OCADD_PA2qZ', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"Ramakrishna \",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"43-17-5,\",\"building_name\":\"43-17-5,\",\"street\":\"VIVEKANANDA SCHOOL ROAD, NEAR SMILE MULTY DPE\",\"landmark\":\"AJITH SINGH NAGAR\",\"pincode\":\"520015\",\"address\":\"43-124-31A singnager power office offiste shadhikaaroad, Ajit Singh Nagar, PNT Colony, Vijayawada, Andhra Pradesh 520015, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5394118\",\"longitude\":\"80.6400997\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-22', '7:00 AM - 9:00 AM', 40, '#OCDUSR_hXvA6', '10.00', '40.00', 5, '2021-12-20 11:39:15', '2021-12-22 14:52:44'),
('#OCORD_yAyjU', '#OCUSR_UulZe', '#OCADD_BxnsK', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"satish\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"32-34/27/8\",\"building_name\":\"32-34/27/8\",\"street\":\"maseed street\",\"landmark\":\"opp srr college\",\"pincode\":\"520004\",\"address\":\"32-34-4/9, Machavaram, Vijayawada, Andhra Pradesh 520004, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5164698\",\"longitude\":\"80.6498709\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-26', '7:00 AM - 9:00 AM', 40, '#OCDUSR_gYubk', '10.00', '40.00', 4, '2021-12-23 09:23:45', '2021-12-26 11:07:12'),
('#OCORD_YBgNa', '#OCUSR_3HGNh', '#OCADD_58End', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"pavan kalyan\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"26-82/a\",\"building_name\":\"26-82/a\",\"street\":\"parera veedhi\",\"landmark\":\"cenara bank\",\"pincode\":\"520012\",\"address\":\"26-82, Parera Veedhi, R R Nagar, RR Nagar, Vijayawada, Andhra Pradesh 520012, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5442144\",\"longitude\":\"80.608054\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-24', '10:00 AM - 12:00 PM', 40, '#OCDUSR_hXvA6', '10.00', '40.00', 3, '2021-12-24 02:04:18', '2021-12-24 10:29:13'),
('#OCORD_zLH4t', '#OCUSR_GOHbQ', '#OCADD_zyAL7', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"shakira\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"4-11-10\",\"building_name\":\"4-11-10\",\"street\":\"pedda mastan street\",\"landmark\":\"vijayawada\",\"pincode\":\"520001\",\"address\":\"5-6-59-36, Fraserpeta, Vijayawada, Andhra Pradesh 520001, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5376023\",\"longitude\":\"80.6158797\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-26', '4:00 PM - 6:00 PM', 40, '', '10.00', '40.00', 2, '2021-12-26 09:44:16', '2021-12-26 12:58:10'),
('#OCORD_ZVnKU', '#OCUSR_y5gFY', '#OCADD_b2u4r', '#OCOFR_wnQAA', '309.00', '{\"offer_data\":{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"},\"address\":{\"name\":\"BRAHMANI\",\"phone\":\"\",\"alternative_phone\":\"\",\"house_no\":\"43-17-5, GROUND FLOOR\",\"building_name\":\"43-17-5, GROUND FLOOR\",\"street\":\"VIVEKANANDA SCHOOL ROAD, NEAR SMILE MULTY SPE\",\"landmark\":\"AJITH SINGH NAGAR\",\"pincode\":\"520015\",\"address\":\"43-124-31A singnager power office offiste shadhikaaroad, Ajit Singh Nagar, PNT Colony, Vijayawada, Andhra Pradesh 520015, India\",\"city\":\"\",\"address_type\":\"home\",\"latitude\":\"16.5394097\",\"longitude\":\"80.6401066\"},\"offer_price\":\"309\",\"cashback\":0,\"user_wallet\":0,\"item_quantities\":{\"#OCITM_MO5KL\":\"1\"}}', '2021-12-22', '7:00 AM - 9:00 AM', 40, '#OCDUSR_hXvA6', '10.00', '40.00', 5, '2021-12-20 11:36:53', '2021-12-22 11:13:28');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) NOT NULL,
  `order_id` varchar(250) NOT NULL,
  `item_id` varchar(250) NOT NULL,
  `quantity` int(10) NOT NULL,
  `net_weight` decimal(10,2) NOT NULL,
  `item_price` decimal(10,2) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `item_id`, `quantity`, `net_weight`, `item_price`, `price`, `discount_price`) VALUES
(1, '#OCORD_KVZiS', '#OCITM_MO5KL', 1, '0.00', '399.00', '349.00', '349.00'),
(2, '#OCORD_KVZiS', '#OCITM_PqVi6', 1, '0.00', '499.00', '449.00', '449.00'),
(6, '#OCORD_an8fG', '#OCITM_MO5KL', 1, '0.00', '449.00', '399.00', '399.00'),
(16, '#OCORD_fayjK', '#OCITM_pbULw', 1, '0.00', '849.00', '749.00', '749.00'),
(33, '#OCORD_18HVR', '#OCITM_aMPmi', 1, '0.00', '499.00', '449.00', '449.00'),
(40, '#OCORD_5ryjB', '#OCITM_MO5KL', 1, '0.00', '449.00', '399.00', '399.00'),
(41, '#OCORD_AgmGB', '#OCITM_aMPmi', 1, '0.00', '499.00', '449.00', '449.00'),
(51, '#OCORD_bgdJP', '#OCITM_pbULw', 1, '0.00', '849.00', '749.00', '749.00'),
(54, '#OCORD_90QB9', '#OCITM_MO5KL', 2, '0.00', '449.00', '798.00', '399.00'),
(55, '#OCORD_rDbq8', '#OCITM_pbULw', 1, '0.00', '849.00', '749.00', '749.00'),
(58, '#OCORD_36JOx', '#OCITM_aMPmi', 2, '0.00', '499.00', '898.00', '449.00'),
(71, '#OCORD_bwR2H', '#OCITM_7ot30', 1, '250.00', '299.00', '275.00', '275.00'),
(72, '#OCORD_bwR2H', '#OCITM_PqVi6', 1, '500.00', '369.00', '349.00', '349.00'),
(73, '#OCORD_bwR2H', '#OCITM_aMPmi', 1, '500.00', '369.00', '349.00', '349.00'),
(81, '#OCORD_jlHi3', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(83, '#OCORD_lszGb', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(84, '#OCORD_EuoF4', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(85, '#OCORD_77sNw', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(87, '#OCORD_a9CnR', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(88, '#OCORD_Kj7SL', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(89, '#OCORD_uL9lm', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(90, '#OCORD_sWrkg', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(91, '#OCORD_fQpiM', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(92, '#OCORD_izjiu', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(93, '#OCORD_3qxsO', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(97, '#OCORD_DSWma', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(98, '#OCORD_Cn6ce', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(101, '#OCORD_3mmOF', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(102, '#OCORD_q4A95', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(103, '#OCORD_xyOz8', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(104, '#OCORD_3kgHV', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(105, '#OCORD_TojIT', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(106, '#OCORD_2Xd3v', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(107, '#OCORD_LlS8P', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(108, '#OCORD_eRrZu', '#OCITM_TDY5G', 1, '1000.00', '649.00', '599.00', '599.00'),
(110, '#OCORD_j6nEf', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(111, '#OCORD_IrbFr', '#OCITM_TDY5G', 1, '1000.00', '649.00', '599.00', '599.00'),
(112, '#OCORD_um3Xs', '#OCITM_TDY5G', 1, '1000.00', '649.00', '599.00', '599.00'),
(113, '#OCORD_0ZNtd', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(115, '#OCORD_mA72M', '#OCITM_aMPmi', 1, '500.00', '369.00', '349.00', '349.00'),
(116, '#OCORD_eedVs', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(117, '#OCORD_BumAR', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(120, '#OCORD_wAqfK', '#OCITM_TDY5G', 1, '1000.00', '649.00', '599.00', '599.00'),
(121, '#OCORD_FWy8M', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(122, '#OCORD_R2g11', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(124, '#OCORD_eAVt0', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(125, '#OCORD_0Ke25', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(127, '#OCORD_7xBsz', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(128, '#OCORD_ZVnKU', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(129, '#OCORD_y4TnH', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(133, '#OCORD_4zuhy', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(134, '#OCORD_AfLhL', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(135, '#OCORD_B8yuT', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(136, '#OCORD_dzDDH', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(137, '#OCORD_dzDDH', '#OCITM_gAe7O', 1, '400.00', '309.00', '299.00', '299.00'),
(138, '#OCORD_1bw2g', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(139, '#OCORD_1h9gG', '#OCITM_aMPmi', 2, '500.00', '369.00', '698.00', '349.00'),
(140, '#OCORD_lArFa', '#OCITM_TDY5G', 1, '1000.00', '649.00', '599.00', '599.00'),
(141, '#OCORD_ARUfy', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(142, '#OCORD_s0qcB', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(143, '#OCORD_8tqSZ', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(144, '#OCORD_WqqT0', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(145, '#OCORD_bV92A', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(146, '#OCORD_8vO4r', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(147, '#OCORD_de5Pi', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(148, '#OCORD_3XZ6G', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(149, '#OCORD_Jx42G', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(150, '#OCORD_yAyjU', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(151, '#OCORD_bovGz', '#OCITM_aMPmi', 1, '500.00', '369.00', '349.00', '349.00'),
(152, '#OCORD_bovGz', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(155, '#OCORD_WXkow', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(156, '#OCORD_YBgNa', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(157, '#OCORD_ki38h', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(158, '#OCORD_wTJ2O', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(159, '#OCORD_nZ6J3', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(160, '#OCORD_By0xg', '#OCITM_wOjX9', 1, '500.00', '369.00', '349.00', '349.00'),
(161, '#OCORD_By0xg', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(162, '#OCORD_6XsSr', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(163, '#OCORD_3zaeS', '#OCITM_TDY5G', 1, '1000.00', '649.00', '599.00', '599.00'),
(164, '#OCORD_iemBV', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(165, '#OCORD_XEl8P', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(167, '#OCORD_8MSkv', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(169, '#OCORD_xHVvG', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(170, '#OCORD_xWU5r', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(172, '#OCORD_Ienc6', '#OCITM_TDY5G', 1, '1000.00', '649.00', '599.00', '599.00'),
(175, '#OCORD_xS4k8', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(176, '#OCORD_gaUpZ', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(177, '#OCORD_nMfLv', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(178, '#OCORD_iQM1Z', '#OCITM_aMPmi', 1, '500.00', '369.00', '349.00', '349.00'),
(179, '#OCORD_RD4ai', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(180, '#OCORD_zLH4t', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(181, '#OCORD_7w4uW', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(182, '#OCORD_C0c4Y', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(183, '#OCORD_VXPxm', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(184, '#OCORD_jZDHl', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(185, '#OCORD_O2Frf', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(186, '#OCORD_wuvEW', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(187, '#OCORD_RVlFs', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(188, '#OCORD_d7ibu', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(189, '#OCORD_QhejK', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(190, '#OCORD_aN9t2', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(191, '#OCORD_GB85R', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(192, '#OCORD_DRsd5', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00'),
(193, '#OCORD_uwwqF', '#OCITM_MO5KL', 1, '350.00', '319.00', '309.00', '309.00');

-- --------------------------------------------------------

--
-- Table structure for table `order_ratings`
--

CREATE TABLE `order_ratings` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `order_id` varchar(250) NOT NULL,
  `rating` varchar(45) NOT NULL,
  `review` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_ratings`
--

INSERT INTO `order_ratings` (`id`, `user_id`, `order_id`, `rating`, `review`, `created_at`) VALUES
(3, '#OCUSR_dV5rI', '#OCORD_bwR2H', '4.0', '', '2021-12-17 10:00:44'),
(8, '#OCUSR_DgsMX', '#OCORD_DSWma', '3.0', '', '2021-12-19 13:06:44'),
(9, '#OCUSR_rFh3x', '#OCORD_jlHi3', '0.0', 'it\'s nice and good taste', '2021-12-22 12:47:40'),
(13, '#OCUSR_pk1ry', '#OCORD_0Ke25', '4.5', '', '2021-12-23 16:59:58'),
(14, '#OCUSR_ekuka', '#OCORD_y4TnH', '0.0', 'fantastic ORGANIC CHICHEN... Packing also super.... i\'m very happy to purchased here', '2021-12-25 07:49:15'),
(15, '#OCUSR_2jh5z', '#OCORD_xWU5r', '4.0', '', '2021-12-27 15:20:27'),
(17, '#OCUSR_o8Qc7', '#OCORD_R2g11', '5.0', '', '2021-12-28 07:39:25');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` bigint(20) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `order_id` varchar(250) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `razorpay_order_id` varchar(100) NOT NULL,
  `razorpay_signature` text NOT NULL,
  `razorpay_payment_id` text NOT NULL,
  `mode` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `user_id`, `order_id`, `amount`, `razorpay_order_id`, `razorpay_signature`, `razorpay_payment_id`, `mode`, `status`, `timestamp`) VALUES
(1, '#OCUSR_sG5PA', '#OCORD_KVZiS', '798.00', '', '850d673e6574c87d83c9675499517924e39f3cf4eb8ef1eec7043b7cd3cc8c59', 'pay_IS55UxEXANPfU2', 'online', 'success', '2021-12-01 10:14:24'),
(6, '#OCUSR_6Q4BT', '#OCORD_an8fG', '199.00', '', '6fd64b4024d28445809f2282fec845c735f9524d5df51bbb1145bf40d34a9b76', 'pay_ISWoj3qZuEtviH', 'online', 'success', '2021-12-02 13:14:47'),
(15, '#OCUSR_TJcm4', '#OCORD_fayjK', '649.00', '', '', '', 'offline', '', '2021-12-02 17:24:41'),
(28, '#OCUSR_jsBGf', '#OCORD_18HVR', '349.00', '', '', '', 'offline', '', '2021-12-03 10:23:08'),
(36, '#OCUSR_tuItl', '#OCORD_5ryjB', '299.00', '', 'fbef0f86510fc74483f3d6d73f19717ede0920a8c5ee85de949ce1af47562c6e', 'pay_IUem80aHZVvaRs', 'online', 'success', '2021-12-07 22:19:53'),
(37, '#OCUSR_l8Phw', '#OCORD_AgmGB', '349.00', '', '9b6d77736838d807ff4217d902113b4bda8207f2d7fcf86ae6b26e2a4bf62614', 'pay_IUfuh5D15J85U2', 'online', 'success', '2021-12-07 23:26:44'),
(42, '#OCUSR_hvI3F', '#OCORD_bgdJP', '649.00', '', '', '', 'offline', '', '2021-12-10 12:43:17'),
(45, '#OCUSR_fcPgS', '#OCORD_90QB9', '798.00', '', '', '', 'offline', '', '2021-12-11 21:16:44'),
(46, '#OCUSR_rZBjf', '#OCORD_rDbq8', '749.00', '', '', '', 'offline', '', '2021-12-12 07:49:57'),
(47, '#OCUSR_KRtpg', '#OCORD_36JOx', '898.00', '', '', '', 'offline', '', '2021-12-12 12:36:32'),
(52, '#OCUSR_dV5rI', '#OCORD_bwR2H', '873.00', '', '', '', 'offline', '', '2021-12-16 17:52:58'),
(57, '#OCUSR_rFh3x', '#OCORD_jlHi3', '40.00', '', '', '', 'offline', '', '2021-12-17 17:11:21'),
(59, '#OCUSR_hirHn', '#OCORD_lszGb', '40.00', '', '', '', 'offline', '', '2021-12-17 18:16:06'),
(60, '#OCUSR_aQjwe', '#OCORD_EuoF4', '40.00', '', '', '', 'offline', '', '2021-12-17 18:22:39'),
(61, '#OCUSR_dNQGV', '#OCORD_77sNw', '40.00', '', '', '', 'offline', '', '2021-12-17 18:23:52'),
(63, '#OCUSR_tnz4Y', '#OCORD_a9CnR', '40.00', '', '', '', 'offline', '', '2021-12-17 21:00:27'),
(64, '#OCUSR_2Dtao', '#OCORD_Kj7SL', '40.00', '', '', '', 'offline', '', '2021-12-17 21:05:41'),
(65, '#OCUSR_jp3Ay', '#OCORD_uL9lm', '40.00', '', '', '', 'offline', '', '2021-12-17 21:09:14'),
(66, '#OCUSR_AclXk', '#OCORD_sWrkg', '40.00', '', '', '', 'offline', '', '2021-12-17 21:47:05'),
(67, '#OCUSR_BzvEk', '#OCORD_fQpiM', '40.00', '', '', '', 'offline', '', '2021-12-17 22:16:39'),
(68, '#OCUSR_f9OOo', '#OCORD_izjiu', '40.00', '', '', '', 'offline', '', '2021-12-18 09:21:27'),
(69, '#OCUSR_D6iyx', '#OCORD_3qxsO', '40.00', '', '', '', 'offline', '', '2021-12-18 09:31:18'),
(73, '#OCUSR_DgsMX', '#OCORD_DSWma', '40.00', '', '', '', 'offline', '', '2021-12-18 17:48:02'),
(74, '#OCUSR_p4NU4', '#OCORD_Cn6ce', '40.00', '', '', '', 'offline', '', '2021-12-18 17:54:42'),
(77, '#OCUSR_m1zpF', '#OCORD_3mmOF', '40.00', '', '', '', 'offline', '', '2021-12-18 19:17:18'),
(78, '#OCUSR_cZcWn', '#OCORD_q4A95', '40.00', '', '', '', 'online', 'Failed', '2021-12-18 19:54:06'),
(79, '#OCUSR_j6POZ', '#OCORD_xyOz8', '40.00', '', '', '', 'offline', '', '2021-12-18 20:04:36'),
(80, '#OCUSR_cZcWn', '#OCORD_3kgHV', '40.00', '', '', '', 'offline', '', '2021-12-18 20:05:57'),
(81, '#OCUSR_GVdkn', '#OCORD_TojIT', '40.00', '', '', '', 'offline', '', '2021-12-18 20:08:33'),
(82, '#OCUSR_Vpd1h', '#OCORD_2Xd3v', '40.00', '', '', '', 'offline', '', '2021-12-18 20:09:48'),
(83, '#OCUSR_h05c5', '#OCORD_LlS8P', '40.00', '', '', '', 'offline', '', '2021-12-18 21:28:33'),
(84, '#OCUSR_fcPgS', '#OCORD_eRrZu', '599.00', '', 'f63a3f37e0eef8debc46539c215fd1cc7fdf40d4e0464dcb45686e5cd592afcd', 'pay_IZ9F4TSspldpKB', 'online', 'success', '2021-12-19 06:44:54'),
(86, '#OCUSR_Lh3IT', '#OCORD_j6nEf', '40.00', '', '', '', 'offline', '', '2021-12-19 07:47:21'),
(87, '#OCUSR_9dqiX', '#OCORD_IrbFr', '499.00', '', '', '', 'offline', '', '2021-12-19 08:11:10'),
(88, '#OCUSR_GIC0e', '#OCORD_um3Xs', '599.00', '', '', '', 'offline', '', '2021-12-19 08:29:42'),
(89, '#OCUSR_AB0u3', '#OCORD_0ZNtd', '40.00', '', '', '', 'offline', '', '2021-12-19 08:33:31'),
(91, '#OCUSR_fcPgS', '#OCORD_mA72M', '389.00', '', '', '', 'offline', '', '2021-12-19 09:08:38'),
(92, '#OCUSR_kSQTW', '#OCORD_eedVs', '40.00', '', '', '', 'offline', '', '2021-12-19 09:56:28'),
(93, '#OCUSR_AAalv', '#OCORD_BumAR', '40.00', '', '', '', 'offline', '', '2021-12-19 10:00:52'),
(96, '#OCUSR_uUFZw', '#OCORD_FWy8M', '40.00', '', '', '', 'offline', '', '2021-12-19 12:22:27'),
(97, '#OCUSR_o8Qc7', '#OCORD_R2g11', '40.00', '', '', '', 'offline', '', '2021-12-20 00:03:28'),
(99, '#OCUSR_kV3J6', '#OCORD_eAVt0', '40.00', '', '', '', 'offline', '', '2021-12-20 00:30:29'),
(100, '#OCUSR_pk1ry', '#OCORD_0Ke25', '40.00', '', '', '', 'offline', '', '2021-12-20 10:25:49'),
(102, '#OCUSR_gsKNm', '#OCORD_7xBsz', '40.00', '', '', '', 'offline', '', '2021-12-20 11:32:18'),
(103, '#OCUSR_y5gFY', '#OCORD_ZVnKU', '40.00', '', '', '', 'offline', '', '2021-12-20 11:36:53'),
(104, '#OCUSR_ekuka', '#OCORD_y4TnH', '40.00', '', '', '', 'offline', '', '2021-12-20 11:39:15'),
(108, '#OCUSR_jHm9n', '#OCORD_4zuhy', '40.00', '', '', '', 'offline', '', '2021-12-21 08:24:51'),
(109, '#OCUSR_xs6mZ', '#OCORD_AfLhL', '40.00', '', '', '', 'offline', '', '2021-12-21 08:25:41'),
(110, '#OCUSR_2L2ZI', '#OCORD_B8yuT', '40.00', '', '', '', 'offline', '', '2021-12-21 08:26:26'),
(111, '#OCUSR_sTljb', '#OCORD_dzDDH', '299.00', '', '', '', 'offline', '', '2021-12-21 08:30:30'),
(112, '#OCUSR_decHE', '#OCORD_1bw2g', '40.00', '', '', '', 'offline', '', '2021-12-21 11:54:21'),
(113, '#OCUSR_j52wd', '#OCORD_1h9gG', '598.00', '', '', '', 'offline', '', '2021-12-21 17:28:31'),
(114, '#OCUSR_DNAhb', '#OCORD_lArFa', '499.00', '', '', '', 'offline', '', '2021-12-21 17:46:54'),
(115, '#OCUSR_GOmBY', '#OCORD_ARUfy', '40.00', '', '', '', 'offline', '', '2021-12-22 08:18:30'),
(116, '#OCUSR_vF7wB', '#OCORD_s0qcB', '40.00', '', '', '', 'offline', '', '2021-12-22 08:31:41'),
(117, '#OCUSR_dRIdm', '#OCORD_8tqSZ', '40.00', '', '', '', 'offline', '', '2021-12-22 09:32:44'),
(118, '#OCUSR_3WMhA', '#OCORD_WqqT0', '40.00', '', '', '', 'offline', '', '2021-12-22 09:47:56'),
(119, '#OCUSR_r08Ju', '#OCORD_bV92A', '40.00', '', '', '', 'offline', '', '2021-12-22 09:55:37'),
(120, '#OCUSR_n9lUa', '#OCORD_8vO4r', '40.00', '', '', '', 'offline', '', '2021-12-23 08:08:30'),
(121, '#OCUSR_Dszu8', '#OCORD_de5Pi', '40.00', '', '', '', 'offline', '', '2021-12-23 09:06:37'),
(122, '#OCUSR_Fs9f8', '#OCORD_3XZ6G', '40.00', '', '', '', 'offline', '', '2021-12-23 09:10:58'),
(123, '#OCUSR_rwlE3', '#OCORD_Jx42G', '40.00', '', '', '', 'offline', '', '2021-12-23 09:13:17'),
(124, '#OCUSR_UulZe', '#OCORD_yAyjU', '40.00', '', '', '', 'offline', '', '2021-12-23 09:23:45'),
(125, '#OCUSR_r0ZKZ', '#OCORD_bovGz', '658.00', '', '', '', 'online', 'Failed', '2021-12-23 14:50:30'),
(127, '#OCUSR_3HGNh', '#OCORD_WXkow', '249.00', '', '', '', 'offline', '', '2021-12-24 02:03:11'),
(128, '#OCUSR_3HGNh', '#OCORD_YBgNa', '40.00', '', '', '', 'offline', '', '2021-12-24 02:04:18'),
(129, '#OCUSR_P6vcv', '#OCORD_ki38h', '40.00', '', '', '', 'offline', '', '2021-12-24 07:38:41'),
(130, '#OCUSR_NgACY', '#OCORD_wTJ2O', '40.00', '', '', '', 'offline', '', '2021-12-24 09:12:46'),
(131, '#OCUSR_u2crb', '#OCORD_nZ6J3', '40.00', '', '', '', 'offline', '', '2021-12-24 09:45:48'),
(132, '#OCUSR_r0ZKZ', '#OCORD_By0xg', '349.00', '', '', '', 'offline', '', '2021-12-24 09:47:26'),
(133, '#OCUSR_h8LBG', '#OCORD_6XsSr', '40.00', '', '', '', 'offline', '', '2021-12-25 00:01:47'),
(134, '#OCUSR_h8LBG', '#OCORD_3zaeS', '499.00', '', '', '', 'offline', '', '2021-12-25 00:09:03'),
(135, '#OCUSR_qRM2Z', '#OCORD_iemBV', '349.00', '', '', '', 'offline', '', '2021-12-25 06:34:05'),
(136, '#OCUSR_zWbsE', '#OCORD_XEl8P', '40.00', '', '', '', 'offline', '', '2021-12-25 07:44:45'),
(137, '#OCUSR_OYAwQ', '#OCORD_8MSkv', '40.00', '', '', '', 'offline', '', '2021-12-25 08:12:48'),
(138, '#OCUSR_ropH0', '#OCORD_xHVvG', '40.00', '', '', '', 'offline', '', '2021-12-25 08:25:12'),
(139, '#OCUSR_2jh5z', '#OCORD_xWU5r', '40.00', '', 'efea9dfbffd56e107d57e9ecb81db79c31495f2fda54b476f8c90b5be69663e1', 'pay_IbaSpO6gM6MKi2', 'online', 'success', '2021-12-25 10:39:46'),
(140, '#OCUSR_m1zpF', '#OCORD_Ienc6', '499.00', '', '', '', 'offline', '', '2021-12-25 18:57:35'),
(142, '#OCUSR_YeNZF', '#OCORD_xS4k8', '40.00', '', '', '', 'offline', '', '2021-12-26 00:00:48'),
(143, '#OCUSR_zdpyB', '#OCORD_gaUpZ', '40.00', '', '', '', 'offline', '', '2021-12-26 00:26:34'),
(144, '#OCUSR_oqVhz', '#OCORD_nMfLv', '40.00', '', '', '', 'offline', '', '2021-12-26 07:45:48'),
(145, '#OCUSR_oqVhz', '#OCORD_iQM1Z', '289.00', '', '', '', 'offline', '', '2021-12-26 07:46:43'),
(146, '#OCUSR_QnY9P', '#OCORD_RD4ai', '40.00', '', '', '', 'offline', '', '2021-12-26 09:38:18'),
(147, '#OCUSR_GOHbQ', '#OCORD_zLH4t', '40.00', '', '', '', 'offline', '', '2021-12-26 09:44:16'),
(148, '#OCUSR_l5HIy', '#OCORD_7w4uW', '40.00', '', '', '', 'offline', '', '2021-12-26 11:11:53'),
(149, '#OCUSR_yuXUy', '#OCORD_C0c4Y', '40.00', '', '', '', 'offline', '', '2021-12-27 00:37:14'),
(150, '#OCUSR_8wbY8', '#OCORD_VXPxm', '40.00', '', '', '', 'offline', '', '2021-12-27 00:42:30'),
(151, '#OCUSR_guS0h', '#OCORD_jZDHl', '40.00', '', '', '', 'offline', '', '2021-12-27 00:54:09'),
(152, '#OCUSR_33WBq', '#OCORD_O2Frf', '40.00', '', '', '', 'offline', '', '2021-12-27 05:04:00'),
(153, '#OCUSR_lgpOb', '#OCORD_wuvEW', '349.00', '', '', '', 'offline', '', '2021-12-27 05:07:57'),
(154, '#OCUSR_lgpOb', '#OCORD_RVlFs', '40.00', '', '', '', 'offline', '', '2021-12-27 05:16:11'),
(155, '#OCUSR_6uob2', '#OCORD_d7ibu', '40.00', '', '', '', 'offline', '', '2021-12-28 00:24:44'),
(156, '#OCUSR_DfQWa', '#OCORD_QhejK', '40.00', '', '', '', 'offline', '', '2021-12-28 00:30:51'),
(157, '#OCUSR_134Sg', '#OCORD_aN9t2', '40.00', '', '', '', 'offline', '', '2021-12-28 00:41:39'),
(158, '#OCUSR_kqoxm', '#OCORD_GB85R', '40.00', '', '', '', 'online', 'Failed', '2021-12-28 07:00:12'),
(159, '#OCUSR_kqoxm', '#OCORD_DRsd5', '40.00', '', '', '', 'offline', '', '2021-12-28 07:02:09'),
(160, '#OCUSR_yTmE9', '#OCORD_uwwqF', '40.00', '', '', '', 'offline', '', '2021-12-28 12:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `id` bigint(20) NOT NULL,
  `recipe_id` varchar(250) NOT NULL,
  `item_id` varchar(250) NOT NULL,
  `recipe_name` varchar(45) NOT NULL,
  `recipe_description` text NOT NULL,
  `recipe_image` text NOT NULL,
  `serves` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `dish` varchar(50) NOT NULL,
  `ingrediants` text NOT NULL,
  `method` text NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `temp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `profile_pic` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `active` int(11) NOT NULL,
  `is_member` int(11) NOT NULL,
  `membership_ends` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `last_updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `first_name`, `last_name`, `email`, `phone`, `profile_pic`, `password`, `gender`, `active`, `is_member`, `membership_ends`, `created_at`, `last_updated_at`) VALUES
(1, '#OCUSR_Q8SjX', '', '', '', '8074028120', '', '6aee1c20a3e1ccff0a61d73089428173', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 08:59:30', '0000-00-00 00:00:00'),
(2, '#OCUSR_sG5PA', '', '', '', '9908736960', '', 'ea43305e3d348063966a5f552bcb8a20', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 09:58:22', '0000-00-00 00:00:00'),
(3, '#OCUSR_8S0ec', '', '', '', '9246822668', '', 'd041846a5ed333f7f2691bc6e3b4e7f8', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 10:18:23', '0000-00-00 00:00:00'),
(4, '#OCUSR_AbOa9', '', '', '', '6304496570', '', 'b6cc239ef1682cd04625a737a84daa1e', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 10:23:48', '0000-00-00 00:00:00'),
(5, '#OCUSR_Bzc2a', 'k sureshbabu', '', 'kaithepallisureshbabu78@gmail.com', '9959829902', '', '0ebdd16f11aa78e4dea710ab50b56717', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 10:27:01', '2021-12-10 10:49:40'),
(6, '#OCUSR_eSLcv', '', '', '', '9542020104', '', '3c8d22563141d50ba24c0e6f607f2b44', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 10:28:18', '0000-00-00 00:00:00'),
(7, '#OCUSR_vynyq', '', '', '', '9963482668', '', '27509c6241981ff62adee9cfd17c9e4b', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 10:30:33', '0000-00-00 00:00:00'),
(8, '#OCUSR_M001D', '', '', '', '9041216291', '', '77f0c1eb753ee8081bc3fa9014d4d6f7', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 10:48:56', '0000-00-00 00:00:00'),
(9, '#OCUSR_KIgTv', 'D Naga Malleswari', '', 'nagamalleswary@gmail.com', '9908587853', '', 'e94e1f2a5e00e39ca384caeb34f524a3', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 10:49:52', '2021-12-04 20:19:53'),
(10, '#OCUSR_YVNOU', '', '', '', '6305651855', '', '57d7485859fe0a4e4c923622c965be59', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 11:01:41', '0000-00-00 00:00:00'),
(11, '#OCUSR_zdpyB', 'shaik sharif babu', '', 'shaiksharifbabu@gmail.com', '8919091168', '', '0246a4b68ad55ae2ff61236fc0722165', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 11:21:40', '2021-12-04 20:13:29'),
(12, '#OCUSR_BIWjo', '', '', '', '9966769349', '', 'bae6967855d5369593c674a07579b5fc', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 11:31:32', '0000-00-00 00:00:00'),
(13, '#OCUSR_9H5OC', '', '', '', '9751961651', '', '20018ed27c12dca6d66f476872339d63', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 11:33:40', '0000-00-00 00:00:00'),
(14, '#OCUSR_yJWxf', '', '', '', '7569033661', '', 'aae23983d989d9f5bf2100005241949d', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 11:34:29', '0000-00-00 00:00:00'),
(15, '#OCUSR_8A0DY', '', '', '', '7674834940', '', '6456ba28a1a98686d2515bf8480cf8ba', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 11:42:13', '0000-00-00 00:00:00'),
(16, '#OCUSR_L3Cex', '', '', '', '9866364207', '', 'c3ce940dfedde1cfdc31b1e84723ffba', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 11:44:08', '0000-00-00 00:00:00'),
(17, '#OCUSR_Hdj4s', '', '', '', '6303863815', '', '8aefd64f6510ccbb980f81e19510726b', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 12:00:00', '0000-00-00 00:00:00'),
(18, '#OCUSR_tuItl', '', '', '', '9848560009', '', '4b963dece1df240e81ff0a478760aef7', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 12:03:11', '0000-00-00 00:00:00'),
(19, '#OCUSR_9PqKd', '', '', '', '9848852800', '', '2dbe34129d7dd288ff0901fb57bfb736', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 12:09:49', '0000-00-00 00:00:00'),
(20, '#OCUSR_5mVqe', '', '', '', '8374525634', '', 'c323dd53c871de3b48ee36a880c59973', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 12:24:18', '0000-00-00 00:00:00'),
(21, '#OCUSR_50aDn', '', '', '', '8184986306', '', '2d81d2e174f9080859f8f9faf05757a5', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 12:24:47', '0000-00-00 00:00:00'),
(22, '#OCUSR_6Q4BT', 'naresh', '', 'naresh030183@gmail.com', '8790502828', '', '99fbb66323ce814884b14f86e24955f3', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 12:34:17', '2021-12-01 12:36:38'),
(23, '#OCUSR_pJoPF', '', '', '', '9396812456', '', 'b6626f3f2f28d9dda9c53b853b0f24c9', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 12:57:14', '0000-00-00 00:00:00'),
(24, '#OCUSR_7hdGN', '', '', '', '9110780208', '', '918ff1730f358fbcdea9920113028c5f', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 13:11:33', '0000-00-00 00:00:00'),
(25, '#OCUSR_GboXt', '', '', '', '9494129555', '', 'edb69d392f7ad89d5620dde8515a5ca8', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 13:18:25', '0000-00-00 00:00:00'),
(26, '#OCUSR_Zs9lI', '', '', '', '7997711408', '', '82486127ef559a06b477c676e464f998', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 14:02:24', '0000-00-00 00:00:00'),
(27, '#OCUSR_YbYWp', '', '', '', '7729922288', '', '2be56724c39e84472d5e99de2f23ee7b', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 14:06:09', '0000-00-00 00:00:00'),
(28, '#OCUSR_fodxm', 'Praisey', '', 'earthandheaven74@gmail.com', '8500937323', '', '6f32db9c4eee529c1cbe49bd743a95f6', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 14:15:11', '2021-12-08 21:18:15'),
(29, '#OCUSR_Hd2n0', '', '', '', '9492978605', '', '79f7e9ebe28838153c84be1cc0cbb1b9', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 14:52:00', '0000-00-00 00:00:00'),
(30, '#OCUSR_6zxdK', '', '', '', '8801344507', '', 'af0e1703a847c8e929fd7c2c7d533afd', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 16:25:25', '0000-00-00 00:00:00'),
(31, '#OCUSR_vzFcO', 'VJ', '', 'vjkumar.forever@gmail.com', '8886810715', 'user__ocusr_vzfco_1639592518.jpg', '871df9523b834d3b18bd9747e15a536b', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 16:29:04', '2021-12-15 23:51:58'),
(32, '#OCUSR_72IOl', '', '', '', '8179878838', '', '5b9bfe2870d73786cdb7671394cd0e8c', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 16:29:46', '0000-00-00 00:00:00'),
(33, '#OCUSR_NDz1O', '', '', '', '8341253545', '', 'f8617e448c501dad8bc1b6cc965d6611', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 16:33:40', '0000-00-00 00:00:00'),
(34, '#OCUSR_aI0B9', '', '', '', '9133048479', '', 'cca851698f0b3c933f1df6cf59c32ec8', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 16:42:15', '0000-00-00 00:00:00'),
(35, '#OCUSR_wvfyt', 'Ajay Babu Dubba', '', 'ajaybabu1234@gmail.com', '9494476577', '', 'afbb6d6569e0b48f4933d1ba69c4a940', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 16:42:50', '2021-12-08 20:47:16'),
(36, '#OCUSR_lwjdo', '', '', '', '8142054418', '', '41ededa9af334da9160d79a44a7ae6de', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 17:03:56', '0000-00-00 00:00:00'),
(37, '#OCUSR_rZBjf', '', '', '', '9440307606', '', '46fb7efbcded6109e1b014882248755e', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 17:11:40', '0000-00-00 00:00:00'),
(38, '#OCUSR_8Sb4E', '', '', '', '9948510133', '', '629068266bcb8fbacbfa5ecc042fbd43', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 19:05:28', '0000-00-00 00:00:00'),
(39, '#OCUSR_rCc4Q', '', '', '', '8374096982', '', '48c2ccb0531014dd56194885c1a2059a', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 19:06:54', '0000-00-00 00:00:00'),
(40, '#OCUSR_AlYVH', '', '', '', '8074688868', '', '2d7e70a8ed7a89d71d2b42aaabcb240a', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 19:42:16', '0000-00-00 00:00:00'),
(41, '#OCUSR_frHXt', '', '', '', '7799867595', '', '6ab1ff194c96d456a29525bfec063ef9', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 19:44:40', '0000-00-00 00:00:00'),
(42, '#OCUSR_glrhb', '', '', '', '9063211413', '', '9402956d34f8939c6b3cbd3618975a05', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 19:48:10', '0000-00-00 00:00:00'),
(43, '#OCUSR_i7ptb', '', '', '', '7997906247', '', 'b0bed84357386fad0f920ba0ff2a770f', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 20:13:57', '0000-00-00 00:00:00'),
(44, '#OCUSR_hvI3F', '', '', '', '9985953812', '', '97432c07cc08219b19fab5bfb9a3f103', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 20:24:59', '0000-00-00 00:00:00'),
(45, '#OCUSR_r1OWQ', '', '', '', '9100634868', '', '14ef11a1166e2769ee6fcb621e5fc498', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 20:34:51', '0000-00-00 00:00:00'),
(46, '#OCUSR_h8LBG', '', '', '', '9848983143', '', '486f23dcd58a43b46a1e2ba1eeece62f', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 20:41:16', '0000-00-00 00:00:00'),
(47, '#OCUSR_Jtata', '', '', '', '9840730256', '', '7a7ef5a3354510f3ce0896e01d379abb', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 20:42:21', '0000-00-00 00:00:00'),
(48, '#OCUSR_gFhy7', '', '', '', '9704738144', '', '58c0928df98b24a9e47fa52841f0afb2', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 20:48:00', '0000-00-00 00:00:00'),
(49, '#OCUSR_w8GVC', '', '', '', '6281291621', '', 'c858cd02e4ac5e878561abf37844e4ff', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 20:48:23', '0000-00-00 00:00:00'),
(50, '#OCUSR_o8Qc7', '', '', '', '9533894007', '', '6ac5cc6c19299a204faa99534d15c584', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 20:51:44', '0000-00-00 00:00:00'),
(51, '#OCUSR_41uPf', '', '', '', '9705499930', '', '4402e4e057bbc415d9a1c718fbf081db', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 21:22:47', '0000-00-00 00:00:00'),
(52, '#OCUSR_A1cHj', '', '', '', '8639825785', '', 'bcb99e204b3933c048aa837cd9561a64', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 21:23:15', '0000-00-00 00:00:00'),
(53, '#OCUSR_47k45', '', '', '', '7981885873', '', 'f432930b2c74d0b8794d27bd3db161f6', '', 1, 0, '0000-00-00 00:00:00', '2021-12-01 22:00:32', '0000-00-00 00:00:00'),
(54, '#OCUSR_XSQiT', 'Dolly', '', 'dolly.1823@gmail.com', '9010243299', '', 'e86c10a005a6e1506999ccb05859423d', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 01:05:51', '2021-12-02 01:07:57'),
(55, '#OCUSR_QZOxm', '', '', '', '7097203446', '', '82e883c5c9fd27b60c4874a5d6c4b25e', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 09:42:19', '0000-00-00 00:00:00'),
(56, '#OCUSR_H6jSh', '', '', '', '9637176232', '', 'b1adac86b1bd011d6f4f2a06198815e7', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 09:59:07', '0000-00-00 00:00:00'),
(57, '#OCUSR_PoWEy', '', '', '', '9248090015', '', '1f82ed814aa6115d2cdd5416fe3f98ae', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 10:11:25', '0000-00-00 00:00:00'),
(58, '#OCUSR_LYpTJ', '', '', '', '8790503131', '', '5023d6ab3ae9112b8e5664782d34c212', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 10:37:01', '0000-00-00 00:00:00'),
(59, '#OCUSR_0RrX1', '', '', '', '8074728086', '', '9d992040e0a23bf0f13e5308b1473040', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 10:44:26', '0000-00-00 00:00:00'),
(60, '#OCUSR_FLLxg', '', '', '', '7993438814', '', 'cde9c7254115c438ccb0b6f00c6048c8', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 11:26:04', '0000-00-00 00:00:00'),
(61, '#OCUSR_yYCLd', '', '', '', '9866349836', '', 'f308f2397f6ae52b012f3ffa6b0b8ffe', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 11:41:46', '0000-00-00 00:00:00'),
(62, '#OCUSR_CMbsJ', '', '', '', '8778031889', '', 'b97173e61f534466d38a2c4e37b1c837', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 12:10:52', '0000-00-00 00:00:00'),
(63, '#OCUSR_bPAlT', '', '', '', '9553177722', '', '8789209c6af906cc8f4ffef028ed39b5', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 12:28:16', '0000-00-00 00:00:00'),
(64, '#OCUSR_SL9Pt', '', '', '', '9381557203', '', '46b311670d1da04999a9dfe7ec2d422e', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 12:37:48', '0000-00-00 00:00:00'),
(65, '#OCUSR_p89Vg', '', '', '', '7780756940', '', '620dea28e1d6252218b1234233d51d4a', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 12:42:22', '0000-00-00 00:00:00'),
(66, '#OCUSR_EQoch', '', '', '', '8885157652', '', 'c97ba7d162eef97010d54c9dfa5acf79', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 13:01:08', '0000-00-00 00:00:00'),
(67, '#OCUSR_l0j2V', '', '', '', '9951817975', '', 'f7120ae24d3f79429aaa22845c453783', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 13:31:12', '0000-00-00 00:00:00'),
(68, '#OCUSR_Wy1bx', '', '', '', '9440685760', '', 'c2f3c992076da125afd3f7630cd96e24', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 13:37:52', '0000-00-00 00:00:00'),
(69, '#OCUSR_jsBGf', '', '', '', '7057155651', '', '750531f55d1f7a7f91ad8127181aee0d', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 13:47:06', '0000-00-00 00:00:00'),
(70, '#OCUSR_cs9vY', '', '', '', '7036243553', '', '2157c0771a392507f3bc29dda1d06f65', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 13:51:25', '0000-00-00 00:00:00'),
(71, '#OCUSR_k7kbK', '', '', '', '9849415170', '', '8a659e675f62ea8f1d3f14e8456e8751', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 13:54:35', '0000-00-00 00:00:00'),
(72, '#OCUSR_fcPgS', '', '', '', '9866888266', '', '0db9acfb1e4e1423f2b8ea1c95e637a2', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 14:18:33', '0000-00-00 00:00:00'),
(73, '#OCUSR_aTkNJ', '', '', '', '8008945411', '', '06f19f42834fe72102c4c477cf522110', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 14:27:40', '0000-00-00 00:00:00'),
(74, '#OCUSR_yU42P', 'G.arun kumar', '', 'garunkumar423@gmail.com', '8121772830', '', '10b559f29a8cd29d1ab4f9eb1442f34a', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 14:51:12', '2021-12-03 00:15:54'),
(75, '#OCUSR_BB231', '', '', '', '9177286386', '', '4f2e853a6ebf3209e55f068c47bac1f5', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 14:54:54', '0000-00-00 00:00:00'),
(76, '#OCUSR_WSHaY', '', '', '', '7702709905', '', '33a8475af5ab83558a5ca6c8cd309793', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 14:56:55', '0000-00-00 00:00:00'),
(77, '#OCUSR_TJcm4', '', '', '', '9963878143', '', 'ae3a6cfe0f7f6b15b7a7a5e16a630684', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 17:15:53', '0000-00-00 00:00:00'),
(78, '#OCUSR_ayU9i', '', '', '', '8639462562', '', 'd8046fcff21916b1aad241af7c16f027', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 20:52:01', '0000-00-00 00:00:00'),
(79, '#OCUSR_pHn61', '', '', '', '8790211279', '', 'ed309ef4419245fe9c3b50eb55df4906', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 20:59:54', '0000-00-00 00:00:00'),
(80, '#OCUSR_YZSot', '', '', '', '8977448523', '', 'd6b5fa50fa18cbbfdcfb6a80140c9c5d', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 22:14:53', '0000-00-00 00:00:00'),
(81, '#OCUSR_zDojW', '', '', '', '9989670458', '', 'fa4a60349d69203fc9fdf3c9bac43a77', '', 1, 0, '0000-00-00 00:00:00', '2021-12-02 22:52:17', '0000-00-00 00:00:00'),
(82, '#OCUSR_l8Phw', '', '', '', '9703778097', '', 'f8c8d690e667644fcbede261bc64b0d4', '', 1, 0, '0000-00-00 00:00:00', '2021-12-03 00:45:32', '0000-00-00 00:00:00'),
(83, '#OCUSR_Ccl1m', '', '', '', '7702738752', '', '10806a6a3181aa5497e2e1ce24e4585f', '', 1, 0, '0000-00-00 00:00:00', '2021-12-03 07:21:16', '0000-00-00 00:00:00'),
(84, '#OCUSR_zEfeK', '', '', '', '9959062631', '', '26ecba98eea802921ca816a35d416c02', '', 1, 0, '0000-00-00 00:00:00', '2021-12-03 07:57:17', '0000-00-00 00:00:00'),
(85, '#OCUSR_IREoS', '', '', '', '8977746977', '', 'f9fdb9021dfecde1314b3f6c779fd65f', '', 1, 0, '0000-00-00 00:00:00', '2021-12-03 15:10:21', '0000-00-00 00:00:00'),
(86, '#OCUSR_eqYrK', '', '', '', '9059406666', '', '682ea0d1aa173c416eedace8b809d5ea', '', 1, 0, '0000-00-00 00:00:00', '2021-12-03 19:42:34', '0000-00-00 00:00:00'),
(87, '#OCUSR_a3y7R', '', '', '', '8121323029', '', 'b16021cb2a1e5092ca15f0d8f75a5ecf', '', 1, 0, '0000-00-00 00:00:00', '2021-12-03 21:32:33', '0000-00-00 00:00:00'),
(88, '#OCUSR_Ilpjz', '', '', '', '7893021989', '', '0716de9ecdebe101ab13105a84d79bf2', '', 1, 0, '0000-00-00 00:00:00', '2021-12-04 07:29:22', '0000-00-00 00:00:00'),
(89, '#OCUSR_0crHb', '', '', '', '8790929699', '', '02031f1428a743cf1e15e533a0fbf5bb', '', 1, 0, '0000-00-00 00:00:00', '2021-12-04 08:57:18', '0000-00-00 00:00:00'),
(90, '#OCUSR_c0NFg', '', '', '', '9963129177', '', '8c82b6d7bafb62af00aea4558d756c37', '', 1, 0, '0000-00-00 00:00:00', '2021-12-04 09:07:29', '0000-00-00 00:00:00'),
(91, '#OCUSR_KRtpg', 'jaswanth', '', 'kaithepallijaswanth@gmail.com', '6303019646', '', '306b2d3abf15c72dc8c81d5b1bad0262', '', 1, 0, '0000-00-00 00:00:00', '2021-12-04 09:33:44', '2021-12-12 14:26:59'),
(92, '#OCUSR_EpVQm', '', '', '', '9908117455', '', '22c23ede4933c99b5839a83c2d521c57', '', 1, 0, '0000-00-00 00:00:00', '2021-12-04 10:12:17', '0000-00-00 00:00:00'),
(93, '#OCUSR_D3MQA', '', '', '', '9705804007', '', '834ed974c50d5a9a8ca6fbd4d3badbc9', '', 1, 0, '0000-00-00 00:00:00', '2021-12-04 10:35:12', '0000-00-00 00:00:00'),
(94, '#OCUSR_WqmUz', '', '', '', '9849222278', '', 'ec67612b859f70cba567b5636440dceb', '', 1, 0, '0000-00-00 00:00:00', '2021-12-04 10:39:28', '0000-00-00 00:00:00'),
(95, '#OCUSR_IoPrG', '', '', '', '9000717913', '', '1a3ddd3c7db10e44463efe9fda67c380', '', 1, 0, '0000-00-00 00:00:00', '2021-12-04 21:03:14', '0000-00-00 00:00:00'),
(96, '#OCUSR_MuZY4', '', '', '', '9900077725', '', '41f9c9dbc1babc78694d927c7b3d2a71', '', 1, 0, '0000-00-00 00:00:00', '2021-12-04 21:52:16', '0000-00-00 00:00:00'),
(97, '#OCUSR_OC0bU', '', '', '', '9985223200', '', 'aba9e7b979b81842fb96dfc3a5362023', '', 1, 0, '0000-00-00 00:00:00', '2021-12-05 00:03:25', '0000-00-00 00:00:00'),
(98, '#OCUSR_x7slY', '', '', '', '9398518315', '', '04e027fa49e6a03d298e8fca4d9f37aa', '', 1, 0, '0000-00-00 00:00:00', '2021-12-05 12:26:02', '0000-00-00 00:00:00'),
(99, '#OCUSR_aohNh', '', '', '', '9951467573', '', '1fd63fbeb6df62c0ad3d36a21afc336b', '', 1, 0, '0000-00-00 00:00:00', '2021-12-05 12:37:34', '0000-00-00 00:00:00'),
(100, '#OCUSR_wvzwA', '', '', '', '7730863566', '', '408cbe2a9a88ef85edb5e7c8c87d4ff5', '', 1, 0, '0000-00-00 00:00:00', '2021-12-05 13:13:29', '0000-00-00 00:00:00'),
(101, '#OCUSR_npwah', '', '', '', '7780548445', '', '5f9bcc1c9213653567eafd1025b6b004', '', 1, 0, '0000-00-00 00:00:00', '2021-12-05 13:39:59', '0000-00-00 00:00:00'),
(102, '#OCUSR_d40rj', '', '', '', '8686982323', '', 'afeb83149c558913251ec377c80b26b6', '', 1, 0, '0000-00-00 00:00:00', '2021-12-05 19:52:43', '0000-00-00 00:00:00'),
(103, '#OCUSR_lww5n', '', '', '', '7989368789', '', '5653ee925d63cecd7fc4c6c2d556da88', '', 1, 0, '0000-00-00 00:00:00', '2021-12-05 19:55:37', '0000-00-00 00:00:00'),
(104, '#OCUSR_fYeO6', '', '', '', '9542692500', '', '1043fe868e2124e2ae04eabce62d4ed4', '', 1, 0, '0000-00-00 00:00:00', '2021-12-05 19:55:47', '0000-00-00 00:00:00'),
(105, '#OCUSR_h5C5P', '', '', '', '9492242241', '', '7712d8cb8ce4227d5615270a5119633c', '', 1, 0, '0000-00-00 00:00:00', '2021-12-06 18:03:16', '0000-00-00 00:00:00'),
(106, '#OCUSR_6hyO8', '', '', '', '9515178556', '', '9a410f07312467cb7650dac9c69af07e', '', 1, 0, '0000-00-00 00:00:00', '2021-12-06 19:27:19', '0000-00-00 00:00:00'),
(107, '#OCUSR_KPbWy', 'Abdul Naseer', '', 'abdulnaseema@gmail.com', '8519875606', '', 'e033df85b683775d11dce21928cb77de', '', 1, 0, '0000-00-00 00:00:00', '2021-12-06 20:45:45', '2021-12-06 20:48:15'),
(108, '#OCUSR_uM2nY', '', '', '', '9848317786', '', '87c3be53bc160378d9d07dadc7d8aa3a', '', 1, 0, '0000-00-00 00:00:00', '2021-12-06 21:20:45', '0000-00-00 00:00:00'),
(109, '#OCUSR_SYQvO', '', '', '', '9347111213', '', '7aa336142a094e0e07f952763f53b604', '', 1, 0, '0000-00-00 00:00:00', '2021-12-06 21:23:50', '0000-00-00 00:00:00'),
(110, '#OCUSR_2B9Io', '', '', '', '8639492800', '', '6d70c0b1f7691445cd6868f5f05cc999', '', 1, 0, '0000-00-00 00:00:00', '2021-12-06 21:44:26', '0000-00-00 00:00:00'),
(111, '#OCUSR_T136u', '', '', '', '9908595084', '', '5876dcf9da72d646ba2471ad14fc77b0', '', 1, 0, '0000-00-00 00:00:00', '2021-12-07 06:44:44', '0000-00-00 00:00:00'),
(112, '#OCUSR_6NcvG', '', '', '', '7989246455', '', '1ec2dff00c0e33ad673026810f73e13f', '', 1, 0, '0000-00-00 00:00:00', '2021-12-07 06:59:32', '0000-00-00 00:00:00'),
(113, '#OCUSR_EL2i4', '', '', '', '9290312559', '', '2691d46fe041a304adc753ae023ea665', '', 1, 0, '0000-00-00 00:00:00', '2021-12-07 07:31:48', '0000-00-00 00:00:00'),
(114, '#OCUSR_T9gzI', '', '', '', '9542499986', '', 'a9a733d06e8fdedc3dd64726c9d42d20', '', 1, 0, '0000-00-00 00:00:00', '2021-12-07 09:57:19', '0000-00-00 00:00:00'),
(115, '#OCUSR_dRIdm', '', '', '', '9866527244', '', '64fb62f78a510328382efa19501e0132', '', 1, 0, '0000-00-00 00:00:00', '2021-12-07 11:29:06', '0000-00-00 00:00:00'),
(116, '#OCUSR_xcVmK', '', '', '', '8978662665', '', '1486acc5cee231d9df571eaae565a503', '', 1, 0, '0000-00-00 00:00:00', '2021-12-07 11:47:05', '0000-00-00 00:00:00'),
(117, '#OCUSR_wgsNy', '', '', '', '9982125999', '', 'fed69214447f8dc30cd82ad99af25b3d', '', 1, 0, '0000-00-00 00:00:00', '2021-12-07 13:47:11', '0000-00-00 00:00:00'),
(118, '#OCUSR_5gQbs', '', '', '', '7981900025', '', '2f6f5cbb8187e88ad94970a94266c049', '', 1, 0, '0000-00-00 00:00:00', '2021-12-07 13:47:20', '0000-00-00 00:00:00'),
(119, '#OCUSR_9dqiX', '', '', '', '9912198998', '', '03da5aabb3656f64763135ab03ddaeca', '', 1, 0, '0000-00-00 00:00:00', '2021-12-07 14:05:52', '0000-00-00 00:00:00'),
(120, '#OCUSR_YNYoO', '', '', '', '8977790777', '', 'cdb19ceac3928dd7da0ecaf76da39070', '', 1, 0, '0000-00-00 00:00:00', '2021-12-07 16:08:22', '0000-00-00 00:00:00'),
(121, '#OCUSR_hEeed', '', '', '', '7095076768', '', 'c7bf00abff88b205cccacfa4aca3d998', '', 1, 0, '0000-00-00 00:00:00', '2021-12-07 16:45:11', '0000-00-00 00:00:00'),
(122, '#OCUSR_bFJyv', '', '', '', '8121678789', '', 'e92100f5fd48c46a72eb27f6a5afd570', '', 1, 0, '0000-00-00 00:00:00', '2021-12-07 18:36:59', '0000-00-00 00:00:00'),
(123, '#OCUSR_JrCpq', '', '', '', '6302154664', '', '0b7d18095ca294ce8b889d87ae114ff2', '', 1, 0, '0000-00-00 00:00:00', '2021-12-07 18:44:24', '0000-00-00 00:00:00'),
(124, '#OCUSR_kYXr2', '', '', '', '9440462990', '', '3400eadfa3e777ec059802639f8e4698', '', 1, 0, '0000-00-00 00:00:00', '2021-12-07 20:29:50', '0000-00-00 00:00:00'),
(125, '#OCUSR_Knanh', '', '', '', '8341176027', '', '97918f05ebcc759f26a002fdd8102ed0', '', 1, 0, '0000-00-00 00:00:00', '2021-12-07 21:34:57', '0000-00-00 00:00:00'),
(126, '#OCUSR_aye1X', '', '', '', '9704049735', '', 'aab981cf644bb64a598e5ec1ca0ed24d', '', 1, 0, '0000-00-00 00:00:00', '2021-12-07 21:36:37', '0000-00-00 00:00:00'),
(127, '#OCUSR_fOSlj', '', '', '', '7901290216', '', 'aa6a2c31ac17228c049dbb9624771f66', '', 1, 0, '0000-00-00 00:00:00', '2021-12-07 22:16:31', '0000-00-00 00:00:00'),
(128, '#OCUSR_TTyEJ', '', '', '', '8247050572', '', '2b167323806be6e0d49f32fb39a895b6', '', 1, 0, '0000-00-00 00:00:00', '2021-12-08 06:42:39', '0000-00-00 00:00:00'),
(129, '#OCUSR_uohhI', '', '', '', '8297871122', '', 'e9a547fe0ce4223d700435a0cb446a0e', '', 1, 0, '0000-00-00 00:00:00', '2021-12-08 10:56:09', '0000-00-00 00:00:00'),
(130, '#OCUSR_8Xkdz', '', '', '', '9550808384', '', 'cc98dc62b668c3bb7eb2ea6a816b5ea5', '', 1, 0, '0000-00-00 00:00:00', '2021-12-08 17:30:36', '0000-00-00 00:00:00'),
(131, '#OCUSR_z4bjb', '', '', '', '9290181266', '', '190666f138b454fce41883bf71dba528', '', 1, 0, '0000-00-00 00:00:00', '2021-12-08 17:55:23', '0000-00-00 00:00:00'),
(132, '#OCUSR_ropH0', '', '', '', '9959474747', '', 'b44a98bc1b72f00ca02850f7f1ab4006', '', 1, 0, '0000-00-00 00:00:00', '2021-12-08 21:48:35', '0000-00-00 00:00:00'),
(133, '#OCUSR_npDLo', '', '', '', '8008120364', '', '78e698d1ede346088bb440e715e60aca', '', 1, 0, '0000-00-00 00:00:00', '2021-12-08 22:01:28', '0000-00-00 00:00:00'),
(134, '#OCUSR_G9pzm', '', '', '', '6301164065', '', '9e964fcf7759b07493dc031deb5f41ac', '', 1, 0, '0000-00-00 00:00:00', '2021-12-09 12:04:42', '0000-00-00 00:00:00'),
(135, '#OCUSR_cBjCD', '', '', '', '9247843325', '', '58fd12c1222e45d2f32355d7a42c8693', '', 1, 0, '0000-00-00 00:00:00', '2021-12-09 13:31:07', '0000-00-00 00:00:00'),
(136, '#OCUSR_WadMH', '', '', '', '9008643999', '', '025baebcb8dee3d47bbc182b544f423a', '', 1, 0, '0000-00-00 00:00:00', '2021-12-09 14:34:01', '0000-00-00 00:00:00'),
(137, '#OCUSR_oeqjk', '', '', '', '8886725574', '', '7e71902c79fdf366a94409f2006a6121', '', 1, 0, '0000-00-00 00:00:00', '2021-12-09 16:54:32', '0000-00-00 00:00:00'),
(138, '#OCUSR_Di5Ja', '', '', '', '9705011167', '', 'a569e8bec5322ae8337cec2fbd802ee6', '', 1, 0, '0000-00-00 00:00:00', '2021-12-09 16:56:46', '0000-00-00 00:00:00'),
(139, '#OCUSR_CMO4E', '', '', '', '8790810156', '', '7b3d86ed672b3cc44ccf72f32e4732a6', '', 1, 0, '0000-00-00 00:00:00', '2021-12-09 17:24:46', '0000-00-00 00:00:00'),
(140, '#OCUSR_kik6l', '', '', '', '9908048428', '', '6601a66bd2f0d24f96a740b1afaff3d5', '', 1, 0, '0000-00-00 00:00:00', '2021-12-09 19:26:57', '0000-00-00 00:00:00'),
(141, '#OCUSR_VUwkb', '', '', '', '6300243805', '', '4c89ce4f3270f51d9981c9e1916c3487', '', 1, 0, '0000-00-00 00:00:00', '2021-12-09 19:47:56', '0000-00-00 00:00:00'),
(142, '#OCUSR_rjim8', '', '', '', '9948861358', '', '1982881243f486ec7b60c7f23060b63a', '', 1, 0, '0000-00-00 00:00:00', '2021-12-09 19:55:55', '0000-00-00 00:00:00'),
(143, '#OCUSR_KSlTs', '', '', '', '9908883127', '', '0b11ea1581e8362f78fec9e4de89439e', '', 1, 0, '0000-00-00 00:00:00', '2021-12-09 20:01:48', '0000-00-00 00:00:00'),
(144, '#OCUSR_dFwWI', 'Abdul', '', 'abdulazeez.aask@gmail.com', '7981297993', '', '56c3aae65590e70a9fda1f43878d12ca', '', 1, 0, '0000-00-00 00:00:00', '2021-12-09 21:50:47', '2021-12-09 22:02:37'),
(145, '#OCUSR_Tge1p', '', '', '', '9951923777', '', '5346fe3ad3ea3970287bfa4424467c9f', '', 1, 0, '0000-00-00 00:00:00', '2021-12-09 23:39:23', '0000-00-00 00:00:00'),
(146, '#OCUSR_JoEVF', '', '', '', '6302594146', '', '02644d6f5a8c2eebc35e8cc561a7fd02', '', 1, 0, '0000-00-00 00:00:00', '2021-12-10 09:43:53', '0000-00-00 00:00:00'),
(147, '#OCUSR_sVkaP', '', '', '', '7901384312', '', 'f583a146a969900d6bc5c25ee8f98c6a', '', 1, 0, '0000-00-00 00:00:00', '2021-12-10 14:15:40', '0000-00-00 00:00:00'),
(148, '#OCUSR_6Cs4h', '', '', '', '9948789939', '', 'f9d4a7ed8fadee53f7c6622a11c127d1', '', 1, 0, '0000-00-00 00:00:00', '2021-12-10 23:37:49', '0000-00-00 00:00:00'),
(149, '#OCUSR_D7PWa', '', '', '', '7981101642', '', 'c805f37fe2b6c77b9ee1b5bf4e1b8d99', '', 1, 0, '0000-00-00 00:00:00', '2021-12-11 00:08:59', '0000-00-00 00:00:00'),
(150, '#OCUSR_fw8f9', '', '', '', '8919819948', '', 'd51926011c72fda5b5d9debe072438dc', '', 1, 0, '0000-00-00 00:00:00', '2021-12-11 00:09:13', '0000-00-00 00:00:00'),
(151, '#OCUSR_jAEgC', '', '', '', '7981578200', '', '6bd4079786cd8a85c6a47a8b41e01f30', '', 1, 0, '0000-00-00 00:00:00', '2021-12-11 11:39:54', '0000-00-00 00:00:00'),
(152, '#OCUSR_JQMWw', '', '', '', '6301618423', '', '7e0ce180359f5375cb4a41c4aba82502', '', 1, 0, '0000-00-00 00:00:00', '2021-12-11 12:59:33', '0000-00-00 00:00:00'),
(153, '#OCUSR_eglcl', '', '', '', '9059566299', '', 'd214d971bf24af7fb166adef2399a81e', '', 1, 0, '0000-00-00 00:00:00', '2021-12-11 13:11:51', '0000-00-00 00:00:00'),
(154, '#OCUSR_i1QAL', '', '', '', '7601064960', '', 'c651c3a548c03600fc2c3dcf5a1cd200', '', 1, 0, '0000-00-00 00:00:00', '2021-12-11 13:15:17', '0000-00-00 00:00:00'),
(155, '#OCUSR_Y2rrk', '', '', '', '7981470123', '', '060ecb5aae673947e2965f58249988bf', '', 1, 0, '0000-00-00 00:00:00', '2021-12-11 14:48:06', '0000-00-00 00:00:00'),
(156, '#OCUSR_UaoiM', '', '', '', '8121402087', '', '75ca3202548e122e7bd2c992c51fe6a4', '', 1, 0, '0000-00-00 00:00:00', '2021-12-11 15:33:06', '0000-00-00 00:00:00'),
(157, '#OCUSR_cKX47', '', '', '', '8688361793', '', '0b045ce1982ed7696a2e2f1ecf4cce3b', '', 1, 0, '0000-00-00 00:00:00', '2021-12-11 16:01:00', '0000-00-00 00:00:00'),
(158, '#OCUSR_49oCj', '', '', '', '9000703317', '', '1b79de41ac12d9250e623a77b5cd9725', '', 1, 0, '0000-00-00 00:00:00', '2021-12-11 18:16:03', '0000-00-00 00:00:00'),
(159, '#OCUSR_PQnRv', '', '', '', '8074044236', '', 'df0d0f12f8d84bb78f29e9f0755cfe4d', '', 1, 0, '0000-00-00 00:00:00', '2021-12-12 08:23:33', '0000-00-00 00:00:00'),
(160, '#OCUSR_MpoME', '', '', '', '9030100737', '', '116bf6d17792b3dea3cfb152e99c7a8d', '', 1, 0, '0000-00-00 00:00:00', '2021-12-12 10:07:13', '0000-00-00 00:00:00'),
(161, '#OCUSR_LXTGN', '', '', '', '7981353950', '', '0545380681a8736bcb6f947f4be05fdc', '', 1, 0, '0000-00-00 00:00:00', '2021-12-12 10:52:46', '0000-00-00 00:00:00'),
(162, '#OCUSR_Au49Q', '', '', '', '8008955927', '', 'af51ef8dd214b9670895f76dbc1d6d45', '', 1, 0, '0000-00-00 00:00:00', '2021-12-12 22:14:04', '0000-00-00 00:00:00'),
(163, '#OCUSR_vtFU7', '', '', '', '9440496347', '', 'fdd92261466a2c397851e2598c1cbac8', '', 1, 0, '0000-00-00 00:00:00', '2021-12-12 22:24:24', '0000-00-00 00:00:00'),
(164, '#OCUSR_buTfo', '', '', '', '9705204467', '', '0eae743904fa0755a96801d17d915f44', '', 1, 0, '0000-00-00 00:00:00', '2021-12-13 11:58:51', '0000-00-00 00:00:00'),
(165, '#OCUSR_CH7zr', '', '', '', '9032707862', '', '1f1a8e02e81601f900e6493d0946d99e', '', 1, 0, '0000-00-00 00:00:00', '2021-12-13 12:01:29', '0000-00-00 00:00:00'),
(166, '#OCUSR_fy8yx', '', '', '', '9533326260', '', '808f2a955012953c9a54ce9a3a57376b', '', 1, 0, '0000-00-00 00:00:00', '2021-12-13 13:34:41', '0000-00-00 00:00:00'),
(167, '#OCUSR_B1mzu', '', '', '', '9666577972', '', '78b801e439a593aea1d49cd3a4ab133a', '', 1, 0, '0000-00-00 00:00:00', '2021-12-14 12:11:20', '0000-00-00 00:00:00'),
(168, '#OCUSR_uvWBR', '', '', '', '9390185594', '', 'b778fb682abc924353614d1e4e1ad4e4', '', 1, 0, '0000-00-00 00:00:00', '2021-12-14 14:52:00', '0000-00-00 00:00:00'),
(169, '#OCUSR_9e6Wy', '', '', '', '7993891479', '', 'cdf7bb2dc289169a15bd35bdeb4a92e0', '', 1, 0, '0000-00-00 00:00:00', '2021-12-14 15:53:38', '0000-00-00 00:00:00'),
(170, '#OCUSR_dr6A2', '', '', '', '9030896905', '', '2a2c93527b42d17f470e00f0d7775479', '', 1, 0, '0000-00-00 00:00:00', '2021-12-14 19:54:14', '0000-00-00 00:00:00'),
(171, '#OCUSR_tWCDj', '', '', '', '8186981259', '', '491ef3cf25ede74d570b6c8c55719b4a', '', 1, 0, '0000-00-00 00:00:00', '2021-12-14 22:24:26', '0000-00-00 00:00:00'),
(172, '#OCUSR_fZGo5', '', '', '', '9000594444', '', '53d6658b58f37848ca04930a240004a9', '', 1, 0, '0000-00-00 00:00:00', '2021-12-15 07:45:26', '0000-00-00 00:00:00'),
(173, '#OCUSR_t16td', '', '', '', '9491347437', '', '2ac54cfdaef2034a36016f895e7aa7af', '', 1, 0, '0000-00-00 00:00:00', '2021-12-15 14:51:21', '0000-00-00 00:00:00'),
(174, '#OCUSR_NmQsH', '', '', '', '9966610402', '', '1d377f469057b20cbc11988344948e5c', '', 1, 0, '0000-00-00 00:00:00', '2021-12-15 15:33:23', '0000-00-00 00:00:00'),
(175, '#OCUSR_aQjwe', '', '', '', '9553185356', '', '3e8be709af485a5292dafbcef60c8996', '', 1, 0, '0000-00-00 00:00:00', '2021-12-15 20:26:40', '0000-00-00 00:00:00'),
(176, '#OCUSR_rFh3x', '', '', '', '6305443086', '', '262e5e5166b331e6dddba8df7fd0eff1', '', 1, 0, '0000-00-00 00:00:00', '2021-12-16 13:02:01', '0000-00-00 00:00:00'),
(177, '#OCUSR_dV5rI', '', '', '', '9989470412', '', '6e579e338179ee8efeda5dc9991a2996', '', 1, 0, '0000-00-00 00:00:00', '2021-12-16 17:40:42', '0000-00-00 00:00:00'),
(178, '#OCUSR_GORi0', '', '', '', '9666556800', '', 'ab65c91665eed066894e9f33d26daa79', '', 1, 0, '0000-00-00 00:00:00', '2021-12-16 23:11:22', '0000-00-00 00:00:00'),
(179, '#OCUSR_k3vYY', '', '', '', '7729898819', '', 'f780a0fbd1127e4ba05f66a902f269c0', '', 1, 0, '0000-00-00 00:00:00', '2021-12-17 14:36:08', '0000-00-00 00:00:00'),
(180, '#OCUSR_hirHn', '', '', '', '9912894645', '', '337f94efdd41464592e63f04da233daa', '', 1, 0, '0000-00-00 00:00:00', '2021-12-17 18:08:20', '0000-00-00 00:00:00'),
(181, '#OCUSR_dNQGV', '', '', '', '9666070290', '', 'cf8a07a0b4f55b1a57f6f1f835662fae', '', 1, 0, '0000-00-00 00:00:00', '2021-12-17 18:14:59', '0000-00-00 00:00:00'),
(182, '#OCUSR_vrTZU', '', '', '', '9182906313', '', '4924d5cbfec3168940cb843413fe6d39', '', 1, 0, '0000-00-00 00:00:00', '2021-12-17 18:37:05', '0000-00-00 00:00:00'),
(183, '#OCUSR_Nchqu', '', '', '', '9490474719', '', '59b9520448521f96c06c31e1ef448f4b', '', 1, 0, '0000-00-00 00:00:00', '2021-12-17 19:35:56', '0000-00-00 00:00:00'),
(184, '#OCUSR_hWIJ0', '', '', '', '7989308621', '', 'c5c687b5bd75dbd7f8e5e0ccd2ce8067', '', 1, 0, '0000-00-00 00:00:00', '2021-12-17 19:36:04', '0000-00-00 00:00:00'),
(185, '#OCUSR_h3K7l', '', '', '', '9985804917', '', '3510fbc475b90a6e0d363ffaecd8ae3f', '', 1, 0, '0000-00-00 00:00:00', '2021-12-17 19:40:20', '0000-00-00 00:00:00'),
(186, '#OCUSR_P0RrX', '', '', '', '9121576377', '', '8cc5240894ac69b561be9f344cec9050', '', 1, 0, '0000-00-00 00:00:00', '2021-12-17 19:56:04', '0000-00-00 00:00:00'),
(187, '#OCUSR_WCC5X', '', '', '', '7032522463', '', '534d55157bdf9e3a3dbfeaa37333d243', '', 1, 0, '0000-00-00 00:00:00', '2021-12-17 20:04:19', '0000-00-00 00:00:00'),
(188, '#OCUSR_tnz4Y', '', '', '', '9948025441', '', 'cd008d7659bcf55120037d4ccaf43b04', '', 1, 0, '0000-00-00 00:00:00', '2021-12-17 20:51:16', '0000-00-00 00:00:00'),
(189, '#OCUSR_2Dtao', '', '', '', '8897539959', '', '2a4443dfdf60c17485a26d2f5f8fe80f', '', 1, 0, '0000-00-00 00:00:00', '2021-12-17 21:00:46', '0000-00-00 00:00:00'),
(190, '#OCUSR_jp3Ay', '', '', '', '6304879079', '', '6fbb26911047c977aa4c196228885a5d', '', 1, 0, '0000-00-00 00:00:00', '2021-12-17 21:07:43', '0000-00-00 00:00:00'),
(191, '#OCUSR_AclXk', '', '', '', '7785888588', '', '8d99d663140e128f654c2fc00f2a1bed', '', 1, 0, '0000-00-00 00:00:00', '2021-12-17 21:45:40', '0000-00-00 00:00:00'),
(192, '#OCUSR_f9OOo', '', '', '', '7702116817', '', 'fb5be02aa3a27118d5afd726074fc222', '', 1, 0, '0000-00-00 00:00:00', '2021-12-17 22:09:13', '0000-00-00 00:00:00'),
(193, '#OCUSR_BzvEk', '', '', '', '6303433009', '', 'ff174ea2a780cae541907efd92d5e1f4', '', 1, 0, '0000-00-00 00:00:00', '2021-12-17 22:14:32', '0000-00-00 00:00:00'),
(194, '#OCUSR_Vpd1h', '', '', '', '8897570269', '', '22420805a06b60acaf0280c04ff0f608', '', 1, 0, '0000-00-00 00:00:00', '2021-12-17 22:18:47', '0000-00-00 00:00:00'),
(195, '#OCUSR_DgsMX', '', '', '', '8143886516', '', 'e1f8fc093edf579b4eeb822b36110733', '', 1, 0, '0000-00-00 00:00:00', '2021-12-17 22:21:54', '0000-00-00 00:00:00'),
(196, '#OCUSR_kq0hL', '', '', '', '7304245165', '', 'aef921989692e0f8a6bfaf5f54e0c129', '', 1, 0, '0000-00-00 00:00:00', '2021-12-17 22:44:08', '0000-00-00 00:00:00'),
(197, '#OCUSR_90wvs', '', '', '', '7207379999', '', 'ecd65b10fdb45438d2df303ae5350d5d', '', 1, 0, '0000-00-00 00:00:00', '2021-12-18 08:33:39', '0000-00-00 00:00:00'),
(198, '#OCUSR_E3X8F', '', '', '', '9440652991', '', 'fcc8135c3b8bb51434a530d4f8b614dd', '', 1, 0, '0000-00-00 00:00:00', '2021-12-18 08:53:49', '0000-00-00 00:00:00'),
(199, '#OCUSR_Ggsrm', '', '', '', '8074237307', '', '36190e75a9e5b3ca7091272b1992883c', '', 1, 0, '0000-00-00 00:00:00', '2021-12-18 09:16:05', '0000-00-00 00:00:00'),
(200, '#OCUSR_Nw6gS', '', '', '', '7095448888', '', '4478f717bbf83ef12d442af25b7d5488', '', 1, 0, '0000-00-00 00:00:00', '2021-12-18 09:21:55', '0000-00-00 00:00:00'),
(201, '#OCUSR_D6iyx', '', '', '', '8328676817', '', 'c3ca9dea9c04e19dc6ee5f8230e944a7', '', 1, 0, '0000-00-00 00:00:00', '2021-12-18 09:25:47', '0000-00-00 00:00:00'),
(202, '#OCUSR_j52wd', '', '', '', '9063106333', '', '4f2a1c37e1950def0fc5634b90608d4b', '', 1, 0, '0000-00-00 00:00:00', '2021-12-18 09:40:48', '0000-00-00 00:00:00'),
(203, '#OCUSR_eykMw', '', '', '', '7033584482', '', 'b4eb5fc2df22ac4a84c0777269d2def2', '', 1, 0, '0000-00-00 00:00:00', '2021-12-18 10:23:53', '0000-00-00 00:00:00'),
(204, '#OCUSR_Tq8pq', 'BOYALLA.RAJESH', '', 'rajeshvmcscpresident82@gamil.com', '9030661733', 'user__ocusr_tq8pq_1639803573.jpg', 'b2a44c0630153671ec02fea76cf9a713', '', 1, 0, '0000-00-00 00:00:00', '2021-12-18 10:26:00', '2021-12-18 10:29:33'),
(205, '#OCUSR_KnY3M', '', '', '', '6281429039', '', '654c2ef7594e44c1df18996daa65bd26', '', 1, 0, '0000-00-00 00:00:00', '2021-12-18 10:57:19', '0000-00-00 00:00:00'),
(206, '#OCUSR_9jgGC', '', '', '', '9441207979', '', '8e32eb611865b790b4586a8a06b3dae9', '', 1, 0, '0000-00-00 00:00:00', '2021-12-18 11:47:34', '0000-00-00 00:00:00'),
(207, '#OCUSR_h05c5', '', '', '', '9110308271', '', '4300ad632b2d72460308a31751596b4e', '', 1, 0, '0000-00-00 00:00:00', '2021-12-18 13:23:07', '0000-00-00 00:00:00'),
(208, '#OCUSR_2jh5z', 'venkatamar82', '', 'venkatamar82@yahoo.co.in', '9849688950', '', 'ff71b2cb552ce6fcfe6ce04a86d68a37', '', 1, 0, '0000-00-00 00:00:00', '2021-12-18 13:55:01', '2021-12-25 16:12:21'),
(209, '#OCUSR_p4NU4', '', '', '', '7780533191', '', '44b52c627a9476e2483bdffe5481afa5', '', 1, 0, '0000-00-00 00:00:00', '2021-12-18 15:32:45', '0000-00-00 00:00:00'),
(210, '#OCUSR_yuXUy', 'Teja Simhachalam', '', 'btsimha@gmail.com', '8106106745', '', 'cb2b728ade330bc487d967e887c12bb1', '', 1, 0, '0000-00-00 00:00:00', '2021-12-18 16:08:08', '2021-12-28 09:46:11'),
(211, '#OCUSR_gMzOa', '', '', '', '9491586268', '', 'f592de26401427cd159c89656f546100', '', 1, 0, '0000-00-00 00:00:00', '2021-12-18 18:04:03', '0000-00-00 00:00:00'),
(212, '#OCUSR_m1zpF', 'P Subhas Reddy', '', 'devobhava1@gmail.com', '9449861994', '', '708eb6d1c8f5567d96d2f1b8b7a7ebfe', '', 1, 0, '0000-00-00 00:00:00', '2021-12-18 18:39:12', '2021-12-18 19:19:47'),
(213, '#OCUSR_DNAhb', '', '', '', '9441715702', '', '2a3561c4c5bea373e04e644829139479', '', 1, 0, '0000-00-00 00:00:00', '2021-12-18 18:46:45', '0000-00-00 00:00:00'),
(214, '#OCUSR_fIJPx', '', '', '', '8790394430', '', '61a70897120264d00b0a035a5293ae7d', '', 1, 0, '0000-00-00 00:00:00', '2021-12-18 18:56:00', '0000-00-00 00:00:00'),
(215, '#OCUSR_cZcWn', '', '', '', '9703996026', '', '4f5c67ec8e3401a586a98b28a5b23a8d', '', 1, 0, '0000-00-00 00:00:00', '2021-12-18 19:33:43', '0000-00-00 00:00:00'),
(216, '#OCUSR_AB0u3', '', '', '', '7981415148', '', 'fe9cb645817c1ea511d8fd02b22eabcc', '', 1, 0, '0000-00-00 00:00:00', '2021-12-18 19:42:42', '0000-00-00 00:00:00'),
(217, '#OCUSR_j6POZ', '', '', '', '9248979899', '', 'c99a7a6750db17dba32249d911736af4', '', 1, 0, '0000-00-00 00:00:00', '2021-12-18 19:43:33', '0000-00-00 00:00:00'),
(218, '#OCUSR_ekuka', '', '', '', '9966632371', '', '78f74aae14aadab9383bd9790c406fb1', '', 1, 0, '0000-00-00 00:00:00', '2021-12-18 19:53:54', '0000-00-00 00:00:00'),
(219, '#OCUSR_GVdkn', '', '', '', '9298908999', '', '2131b8b2cef7fbf56f93bd45c87a8e4f', '', 1, 0, '0000-00-00 00:00:00', '2021-12-18 20:06:00', '0000-00-00 00:00:00'),
(220, '#OCUSR_TYQmo', '', '', '', '9293148478', '', '68c249bd898efba7d8a21dc7fdd94860', '', 1, 0, '0000-00-00 00:00:00', '2021-12-18 20:29:27', '0000-00-00 00:00:00'),
(221, '#OCUSR_Lh3IT', '', '', '', '6301689368', '', '05d9136656f08ac8f5c6440373b3b2b2', '', 1, 0, '0000-00-00 00:00:00', '2021-12-18 21:31:57', '0000-00-00 00:00:00'),
(222, '#OCUSR_Acf9k', '', '', '', '8919057242', '', 'b9154ca45a0187fce2bf5463ac36866a', '', 1, 0, '0000-00-00 00:00:00', '2021-12-18 21:45:00', '0000-00-00 00:00:00'),
(223, '#OCUSR_jaGDv', '', '', '', '9291500588', '', '90745d876d7c0bdcf90196afbadfc69e', '', 1, 0, '0000-00-00 00:00:00', '2021-12-19 07:08:42', '0000-00-00 00:00:00'),
(224, '#OCUSR_GIC0e', '', '', '', '9440186034', '', '08ac82701880c473d8e8fbe662965787', '', 1, 0, '0000-00-00 00:00:00', '2021-12-19 08:26:52', '0000-00-00 00:00:00'),
(225, '#OCUSR_IGUEN', '', '', '', '8179470616', '', '14679fcef2ae00337b997ebdd81cc745', '', 1, 0, '0000-00-00 00:00:00', '2021-12-19 08:33:59', '0000-00-00 00:00:00'),
(226, '#OCUSR_hZ4oU', '', '', '', '9848630994', '', '42068a98258ca11613bfd37451ddaba7', '', 1, 0, '0000-00-00 00:00:00', '2021-12-19 08:52:38', '0000-00-00 00:00:00'),
(227, '#OCUSR_bdrgJ', '', '', '', '9985972987', '', '6aa346843540b91c25f7d372185e17df', '', 1, 0, '0000-00-00 00:00:00', '2021-12-19 09:04:26', '0000-00-00 00:00:00'),
(228, '#OCUSR_dSFjc', '', '', '', '9866668662', '', '328f22420935911dd90167aaa626744a', '', 1, 0, '0000-00-00 00:00:00', '2021-12-19 09:11:53', '0000-00-00 00:00:00'),
(229, '#OCUSR_j6c6i', '', '', '', '7893938484', '', '2c82e9b9192d67c021c26826ac7e7b51', '', 1, 0, '0000-00-00 00:00:00', '2021-12-19 09:48:20', '0000-00-00 00:00:00'),
(230, '#OCUSR_kSQTW', '', '', '', '9542722395', '', '4c84470b42ee108e28472e3a661060b6', '', 1, 0, '0000-00-00 00:00:00', '2021-12-19 09:53:35', '0000-00-00 00:00:00'),
(231, '#OCUSR_AAalv', '', '', '', '7675006227', '', 'bf800bd56bea6850f57c8787519fdfa7', '', 1, 0, '0000-00-00 00:00:00', '2021-12-19 09:57:29', '0000-00-00 00:00:00'),
(232, '#OCUSR_gsKNm', '', '', '', '7386064145', '', '7822f8c3ca2d0baa9b5a9bd783c6f005', '', 1, 0, '0000-00-00 00:00:00', '2021-12-19 10:00:37', '0000-00-00 00:00:00'),
(233, '#OCUSR_Dszu8', '', '', '', '9963275759', '', 'c1d82fba34e6cc83faaccb3cbae2fd77', '', 1, 0, '0000-00-00 00:00:00', '2021-12-19 10:06:53', '0000-00-00 00:00:00'),
(234, '#OCUSR_5steQ', '', '', '', '7075731194', '', '7a3b0cf00095b64b93b191eef89345f7', '', 1, 0, '0000-00-00 00:00:00', '2021-12-19 11:21:00', '0000-00-00 00:00:00'),
(235, '#OCUSR_oxgO4', '', '', '', '7013227373', '', '624ee79ffdc14ea872ef6ee685595e47', '', 1, 0, '0000-00-00 00:00:00', '2021-12-19 11:31:59', '0000-00-00 00:00:00'),
(236, '#OCUSR_uUFZw', '', '', '', '9000069200', '', '3101d9029a8f539f0c418be120217693', '', 1, 0, '0000-00-00 00:00:00', '2021-12-19 12:18:35', '0000-00-00 00:00:00'),
(237, '#OCUSR_pk1ry', '', '', '', '9912203424', '', '1a68d15f92a6999bf3fd039dc0d1f6a2', '', 1, 0, '0000-00-00 00:00:00', '2021-12-19 12:28:05', '0000-00-00 00:00:00'),
(238, '#OCUSR_wHV6z', '', '', '', '9948889786', '', '7b9967ca1bea5e24630deb0c031aff65', '', 1, 0, '0000-00-00 00:00:00', '2021-12-19 12:37:14', '0000-00-00 00:00:00'),
(239, '#OCUSR_93uwd', '', '', '', '9246488899', '', '726b44ec9cc5fb90cc1860992ce0208e', '', 1, 0, '0000-00-00 00:00:00', '2021-12-19 13:01:48', '0000-00-00 00:00:00'),
(240, '#OCUSR_JWzj8', '', '', '', '7981918185', '', '3081a7d53469306946cc5e31361bacc9', '', 1, 0, '0000-00-00 00:00:00', '2021-12-19 13:13:58', '0000-00-00 00:00:00'),
(241, '#OCUSR_aqdvv', '', '', '', '8985971696', '', 'e2ca1820b28edf6fb0225bb93b73023f', '', 1, 0, '0000-00-00 00:00:00', '2021-12-19 18:06:17', '0000-00-00 00:00:00'),
(242, '#OCUSR_YYd72', '', '', '', '9966530300', '', 'd36f15b0cac6c0ebcfddc2b3abaa4d6d', '', 1, 0, '0000-00-00 00:00:00', '2021-12-19 18:21:44', '0000-00-00 00:00:00'),
(243, '#OCUSR_vloe0', '', '', '', '8328078844', '', 'c345da2acd2db31c7aa377a7db7a5c14', '', 1, 0, '0000-00-00 00:00:00', '2021-12-19 18:30:18', '0000-00-00 00:00:00'),
(244, '#OCUSR_RzOP1', '', '', '', '9703929527', '', '22dbf4b59d409f271d8c5afa8761962b', '', 1, 0, '0000-00-00 00:00:00', '2021-12-19 21:01:24', '0000-00-00 00:00:00'),
(245, '#OCUSR_kV3J6', '', '', '', '8125819510', '', '851d47b6beecfda62a5549f5ea693c5a', '', 1, 0, '0000-00-00 00:00:00', '2021-12-19 21:37:45', '0000-00-00 00:00:00'),
(246, '#OCUSR_CtBWo', '', '', '', '9100953797', '', 'b6aea97df88f75048514b5c90eb9f1b1', '', 1, 0, '0000-00-00 00:00:00', '2021-12-19 21:40:26', '0000-00-00 00:00:00'),
(247, '#OCUSR_X7xJf', '', '', '', '9502543234', '', '3a00f79557ccd8dd61e6e54b255ca5ea', '', 1, 0, '0000-00-00 00:00:00', '2021-12-19 21:56:32', '0000-00-00 00:00:00'),
(248, '#OCUSR_RCLg9', '', '', '', '9705612789', '', '7ff86bb52ddae2e377ff1315664994d4', '', 1, 0, '0000-00-00 00:00:00', '2021-12-19 22:23:39', '0000-00-00 00:00:00'),
(249, '#OCUSR_wQLkX', '', '', '', '9885946777', '', '3a281d2eee1be7b1d166a63e29857848', '', 1, 0, '0000-00-00 00:00:00', '2021-12-20 09:57:00', '0000-00-00 00:00:00'),
(250, '#OCUSR_y5gFY', '', '', '', '8639793690', '', '1c05e4b9004456aac8c0225920ec7c71', '', 1, 0, '0000-00-00 00:00:00', '2021-12-20 11:28:00', '0000-00-00 00:00:00'),
(251, '#OCUSR_86n4v', '', '', '', '8143143836', '', '732b07ab5929b0648c6628321a99886d', '', 1, 0, '0000-00-00 00:00:00', '2021-12-20 11:38:02', '0000-00-00 00:00:00'),
(252, '#OCUSR_jHm9n', '', '', '', '9949317186', '', '996c2c7f53a9f7f1e2e315e7a8520d8f', '', 1, 0, '0000-00-00 00:00:00', '2021-12-20 11:56:49', '0000-00-00 00:00:00'),
(253, '#OCUSR_kEnfp', '', '', '', '9550819281', '', 'b6ba617e46c3da396b463d5131274880', '', 1, 0, '0000-00-00 00:00:00', '2021-12-20 12:00:07', '0000-00-00 00:00:00'),
(254, '#OCUSR_rBWvU', '', '', '', '8523870222', '', '0364ff64c052aaa34a385389bb27f1e6', '', 1, 0, '0000-00-00 00:00:00', '2021-12-20 12:22:12', '0000-00-00 00:00:00'),
(255, '#OCUSR_acPri', '', '', '', '9490227332', '', '3d4bb47a36e92dde02716a114cb2c10c', '', 1, 0, '0000-00-00 00:00:00', '2021-12-20 13:34:33', '0000-00-00 00:00:00'),
(256, '#OCUSR_RPOGG', '', '', '', '9247388319', '', 'e6fbad0d99cf77b9aea97e55f426dec4', '', 1, 0, '0000-00-00 00:00:00', '2021-12-20 14:31:24', '0000-00-00 00:00:00'),
(257, '#OCUSR_zumxp', '', '', '', '9550127302', '', '33fc927db43a803cb43cc2ac1d2f431c', '', 1, 0, '0000-00-00 00:00:00', '2021-12-20 18:36:08', '0000-00-00 00:00:00'),
(258, '#OCUSR_xs6mZ', '', '', '', '7569410890', '', '2bee7e7716382398d5c01d9bf326cbc6', '', 1, 0, '0000-00-00 00:00:00', '2021-12-20 18:54:24', '0000-00-00 00:00:00'),
(259, '#OCUSR_80DAz', '', '', '', '7989668917', '', '0db7c7703d1eda0aa44ee18d05ac50b1', '', 1, 0, '0000-00-00 00:00:00', '2021-12-20 21:17:02', '0000-00-00 00:00:00'),
(260, '#OCUSR_X7Fby', '', '', '', '9206537787', '', '7d111d1c7ffb273cf2b93a15869ea331', '', 1, 0, '0000-00-00 00:00:00', '2021-12-20 21:19:34', '0000-00-00 00:00:00'),
(261, '#OCUSR_sTljb', '', '', '', '9908070835', '', '7ba14729e54fa28e76f661ff98dbda71', '', 1, 0, '0000-00-00 00:00:00', '2021-12-20 22:03:28', '0000-00-00 00:00:00'),
(262, '#OCUSR_2L2ZI', '', '', '', '8121006007', '', '8190cf24cd44f4cd10b0f57a0c19400d', '', 1, 0, '0000-00-00 00:00:00', '2021-12-20 22:06:15', '0000-00-00 00:00:00'),
(263, '#OCUSR_Egvhl', '', '', '', '7660899508', '', '95c7cb1aa1d5b60dac50f2399848e287', '', 1, 0, '0000-00-00 00:00:00', '2021-12-21 11:01:12', '0000-00-00 00:00:00'),
(264, '#OCUSR_decHE', '', '', '', '9160877939', '', '3e15a35b72bfed2196d1ee2d543f571c', '', 1, 0, '0000-00-00 00:00:00', '2021-12-21 11:35:53', '0000-00-00 00:00:00'),
(265, '#OCUSR_cIZo1', '', '', '', '9493842435', '', '5723d10b0ee64cdac794e073a0b38bbf', '', 1, 0, '0000-00-00 00:00:00', '2021-12-21 11:54:49', '0000-00-00 00:00:00'),
(266, '#OCUSR_3WMhA', '', '', '', '7780738373', '', '2d37c9f5b18c238910d9d11d738d7e24', '', 1, 0, '0000-00-00 00:00:00', '2021-12-21 11:57:13', '0000-00-00 00:00:00'),
(267, '#OCUSR_GOmBY', '', '', '', '7337087083', '', 'fcb20822743b25e999a3fc179913f95b', '', 1, 0, '0000-00-00 00:00:00', '2021-12-21 12:16:43', '0000-00-00 00:00:00'),
(268, '#OCUSR_u2crb', '', '', '', '9059609416', '', '892cef9fd5f4cea16a233e734500a8df', '', 1, 0, '0000-00-00 00:00:00', '2021-12-21 16:35:50', '0000-00-00 00:00:00'),
(269, '#OCUSR_P6HQi', '', '', '', '9399907756', '', 'd1f50abf2eeadb0decf3b684141859de', '', 1, 0, '0000-00-00 00:00:00', '2021-12-21 16:51:58', '0000-00-00 00:00:00'),
(270, '#OCUSR_HM8cM', '', '', '', '7842796665', '', 'd2235859fb399130679fe9863d29274e', '', 1, 0, '0000-00-00 00:00:00', '2021-12-21 18:09:15', '0000-00-00 00:00:00'),
(271, '#OCUSR_lNlg5', '', '', '', '9885412666', '', '9810fb0b6957f708c86bf9d929fe6b39', '', 1, 0, '0000-00-00 00:00:00', '2021-12-21 18:10:15', '0000-00-00 00:00:00'),
(272, '#OCUSR_cXirI', '', '', '', '9666414717', '', '9402306cfa280948c6404c15f26832c1', '', 1, 0, '0000-00-00 00:00:00', '2021-12-21 19:09:18', '0000-00-00 00:00:00'),
(273, '#OCUSR_JvFdF', '', '', '', '7989100342', '', '178a24c3191bafa5653c6ea93fd52043', '', 1, 0, '0000-00-00 00:00:00', '2021-12-21 20:02:25', '0000-00-00 00:00:00'),
(274, '#OCUSR_Arnqi', '', '', '', '9505086851', '', '2c5519b749a8d5a8676b77cd3b57510e', '', 1, 0, '0000-00-00 00:00:00', '2021-12-21 21:09:59', '0000-00-00 00:00:00'),
(275, '#OCUSR_r0ZKZ', '', '', '', '8185063932', '', 'dc54f7b8e795c99e6d65358da08385b1', '', 1, 0, '0000-00-00 00:00:00', '2021-12-21 22:05:51', '0000-00-00 00:00:00'),
(276, '#OCUSR_BtgQj', '', '', '', '8885932917', '', '5b8cd615604924c64cc9eec01eb9a458', '', 1, 0, '0000-00-00 00:00:00', '2021-12-21 22:49:24', '0000-00-00 00:00:00'),
(277, '#OCUSR_q3UKv', '', '', '', '7993933654', '', 'eafd74d15c024a1373d1f5e1a48b08f4', '', 1, 0, '0000-00-00 00:00:00', '2021-12-21 23:13:40', '0000-00-00 00:00:00'),
(278, '#OCUSR_Q1iIU', '', '', '', '9703261946', '', 'e0ecfd2a8fd84c5d62d22bf0ea21a565', '', 1, 0, '0000-00-00 00:00:00', '2021-12-22 00:35:39', '0000-00-00 00:00:00'),
(279, '#OCUSR_vF7wB', '', '', '', '9704862273', '', '68066dc493202ae05b895c97feca1130', '', 1, 0, '0000-00-00 00:00:00', '2021-12-22 08:29:06', '0000-00-00 00:00:00'),
(280, '#OCUSR_r08Ju', '', '', '', '9701281668', '', 'fc33a558978c0c0838d69a955d246635', '', 1, 0, '0000-00-00 00:00:00', '2021-12-22 09:52:51', '0000-00-00 00:00:00'),
(281, '#OCUSR_NgACY', '', '', '', '6301258012', '', '98552042c1212c71075923690e461e7f', '', 1, 0, '0000-00-00 00:00:00', '2021-12-22 11:16:47', '0000-00-00 00:00:00'),
(282, '#OCUSR_TlHNw', '', '', '', '9494767636', '', 'd10d50ba9546717e02307bc268531e7e', '', 1, 0, '0000-00-00 00:00:00', '2021-12-22 14:21:24', '0000-00-00 00:00:00'),
(283, '#OCUSR_YeNZF', '', '', '', '9959101913', '', '2dc2521fa395d6a1cfc2eabbacedf605', '', 1, 0, '0000-00-00 00:00:00', '2021-12-22 14:33:16', '0000-00-00 00:00:00'),
(284, '#OCUSR_n9lUa', '', '', '', '9533518807', '', '05373af7f4ac6c702f26bc408522a6a1', '', 1, 0, '0000-00-00 00:00:00', '2021-12-22 20:21:07', '0000-00-00 00:00:00'),
(285, '#OCUSR_Fs9f8', '', '', '', '9133352241', '', 'b42465d9aef5d78c1d737bff67bcb188', '', 1, 0, '0000-00-00 00:00:00', '2021-12-23 09:07:16', '0000-00-00 00:00:00'),
(286, '#OCUSR_rwlE3', '', '', '', '8328600502', '', '8a40fea65eaa3b76dd60cd281d361959', '', 1, 0, '0000-00-00 00:00:00', '2021-12-23 09:11:48', '0000-00-00 00:00:00'),
(287, '#OCUSR_UulZe', '', '', '', '9611530550', '', '4f43d6ea56c3a0dfde2cc693d0c0826c', '', 1, 0, '0000-00-00 00:00:00', '2021-12-23 09:21:32', '0000-00-00 00:00:00'),
(288, '#OCUSR_e8oPw', '', '', '', '8870225085', '', 'bd0d34cf677772ebdeae876c1d309afa', '', 1, 0, '0000-00-00 00:00:00', '2021-12-23 09:27:44', '0000-00-00 00:00:00'),
(289, '#OCUSR_P6vcv', '', '', '', '9959899092', '', 'f75c7f425b2476286c52b2fcb228ca46', '', 1, 0, '0000-00-00 00:00:00', '2021-12-23 10:00:55', '0000-00-00 00:00:00'),
(290, '#OCUSR_qRM2Z', '', '', '', '8499884455', '', '020582d14fdc67cefc4055679df0670f', '', 1, 0, '0000-00-00 00:00:00', '2021-12-23 13:31:13', '0000-00-00 00:00:00'),
(291, '#OCUSR_3HGNh', '', '', '', '8555060673', '', '17011f3923d09fda19cd97da462d0d4f', '', 1, 0, '0000-00-00 00:00:00', '2021-12-23 16:39:21', '0000-00-00 00:00:00'),
(292, '#OCUSR_sgfCN', '', '', '', '9347520259', '', 'b9720f8ea43d0c8b4477efa0be0c4c80', '', 1, 0, '0000-00-00 00:00:00', '2021-12-23 22:17:21', '0000-00-00 00:00:00'),
(293, '#OCUSR_wLuB9', '', '', '', '7799631251', '', '1cba15cf40d88d760f8c9316247c169d', '', 1, 0, '0000-00-00 00:00:00', '2021-12-24 10:55:09', '0000-00-00 00:00:00'),
(294, '#OCUSR_qn3ld', '', '', '', '9704104182', '', '5b1fc23317c64c5dfd4dcd7b1696e22b', '', 1, 0, '0000-00-00 00:00:00', '2021-12-24 12:03:03', '0000-00-00 00:00:00'),
(295, '#OCUSR_BQKro', '', '', '', '9441440084', '', '516c6c24a9b7fbf765c5acb973aaf000', '', 1, 0, '0000-00-00 00:00:00', '2021-12-24 12:25:53', '0000-00-00 00:00:00'),
(296, '#OCUSR_RGlb8', '', '', '', '9030207866', '', '6d4b1770efea60484c9aceebb645314c', '', 1, 0, '0000-00-00 00:00:00', '2021-12-24 12:38:04', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `first_name`, `last_name`, `email`, `phone`, `profile_pic`, `password`, `gender`, `active`, `is_member`, `membership_ends`, `created_at`, `last_updated_at`) VALUES
(297, '#OCUSR_M95EV', '', '', '', '9948589485', '', 'cd24e4ccc2fd73ca23ee18bb35112523', '', 1, 0, '0000-00-00 00:00:00', '2021-12-24 12:47:08', '0000-00-00 00:00:00'),
(298, '#OCUSR_jlmwi', '', '', '', '9290343435', '', 'f6359a01d262ee5ff9e41ecb8165f4cb', '', 1, 0, '0000-00-00 00:00:00', '2021-12-24 13:20:10', '0000-00-00 00:00:00'),
(299, '#OCUSR_4M0MO', '', '', '', '9494050786', '', '5f85a7dd97d433ab21bb7c6597e57434', '', 1, 0, '0000-00-00 00:00:00', '2021-12-24 13:21:35', '0000-00-00 00:00:00'),
(300, '#OCUSR_Pd7GR', '', '', '', '9848293050', '', 'aa54c8dd47d3853d3721a30a2af7ea53', '', 1, 0, '0000-00-00 00:00:00', '2021-12-24 14:01:40', '0000-00-00 00:00:00'),
(301, '#OCUSR_wVc5k', '', '', '', '9290647327', '', 'fd443b1d902110bbd80828318e4fb378', '', 1, 0, '0000-00-00 00:00:00', '2021-12-24 14:04:20', '0000-00-00 00:00:00'),
(302, '#OCUSR_crExa', '', '', '', '8977373650', '', 'eddb66a43da3c66a7660cc000a0f70fe', '', 1, 0, '0000-00-00 00:00:00', '2021-12-24 14:17:43', '0000-00-00 00:00:00'),
(303, '#OCUSR_gtHOB', '', '', '', '8074205046', '', '2be97851b5a4278e7ef1057af9238cb0', '', 1, 0, '0000-00-00 00:00:00', '2021-12-24 14:24:39', '0000-00-00 00:00:00'),
(304, '#OCUSR_OeXC0', '', '', '', '9121803134', '', '62df16ecdb31c5b6eaed77be7c455f73', '', 1, 0, '0000-00-00 00:00:00', '2021-12-24 14:39:24', '0000-00-00 00:00:00'),
(305, '#OCUSR_3mbIP', '', '', '', '6303246760', '', 'd5c3321c1733e719997f02dece85a941', '', 1, 0, '0000-00-00 00:00:00', '2021-12-24 14:41:35', '0000-00-00 00:00:00'),
(306, '#OCUSR_yPHto', '', '', '', '7793936064', '', '9fa012c02dfca104bb3aeb239aa7afc1', '', 1, 0, '0000-00-00 00:00:00', '2021-12-24 14:52:00', '0000-00-00 00:00:00'),
(307, '#OCUSR_NDyrW', '', '', '', '8309447055', '', 'acd5fcf99bb2f1067071488168d8355c', '', 1, 0, '0000-00-00 00:00:00', '2021-12-24 14:57:40', '0000-00-00 00:00:00'),
(308, '#OCUSR_2KVcj', '', '', '', '6302027376', '', 'd897531903ca89261f711b85d5ed603f', '', 1, 0, '0000-00-00 00:00:00', '2021-12-24 17:46:20', '0000-00-00 00:00:00'),
(309, '#OCUSR_dVreA', 'RAMESHBABU', '', 'kona.rameshbabu@gmail.co.', '9533498555', '', '0f6fecdc8b391d9ba25e5a5f46b3c5b2', '', 1, 0, '0000-00-00 00:00:00', '2021-12-24 17:55:44', '2021-12-24 17:58:28'),
(310, '#OCUSR_O1AYo', '', '', '', '9849950805', '', '64b21cff1da9ef1ab505305fb107c60d', '', 1, 0, '0000-00-00 00:00:00', '2021-12-24 19:51:02', '0000-00-00 00:00:00'),
(311, '#OCUSR_gZOUg', '', '', '', '9963656480', '', 'df88e7c7c3b80ac92814f651a4203258', '', 1, 0, '0000-00-00 00:00:00', '2021-12-24 19:56:27', '0000-00-00 00:00:00'),
(312, '#OCUSR_w0tU2', '', '', '', '9494222957', '', '9e00998cd36387e16a2723a4ef9b16cb', '', 1, 0, '0000-00-00 00:00:00', '2021-12-24 20:41:14', '0000-00-00 00:00:00'),
(313, '#OCUSR_Hkxkr', '', '', '', '9966894332', '', '76ecec08cdd5130e9850ca7ba731aeaa', '', 1, 0, '0000-00-00 00:00:00', '2021-12-24 21:23:37', '0000-00-00 00:00:00'),
(314, '#OCUSR_zWbsE', '', '', '', '7386030156', '', 'f3ecc4c3fc4aaebb399dfc23541e1c42', '', 1, 0, '0000-00-00 00:00:00', '2021-12-25 07:39:55', '0000-00-00 00:00:00'),
(315, '#OCUSR_OYAwQ', '', '', '', '9701700606', '', '997b70382fd099bac8d03dfcb617b3d9', '', 1, 0, '0000-00-00 00:00:00', '2021-12-25 08:09:12', '0000-00-00 00:00:00'),
(316, '#OCUSR_XxyM4', 'p.siva Suresh', '', 'pamarthisuresh78@gmail.com', '9032757575', '', '40bb6342680e91c348f76522d985b71e', '', 1, 0, '0000-00-00 00:00:00', '2021-12-25 08:47:12', '2021-12-25 09:30:32'),
(317, '#OCUSR_KULgP', '', '', '', '8147932656', '', '1f43291258521e08b12202115180d5e9', '', 1, 0, '0000-00-00 00:00:00', '2021-12-25 13:07:44', '0000-00-00 00:00:00'),
(318, '#OCUSR_KWoLp', '', '', '', '8074882443', '', 'c776f93294cac28c761fe01f011caeae', '', 1, 0, '0000-00-00 00:00:00', '2021-12-25 15:31:18', '0000-00-00 00:00:00'),
(319, '#OCUSR_QnY9P', '', '', '', '8125424142', '', '443a5c5590e1e495b8f2db3412705784', '', 1, 0, '0000-00-00 00:00:00', '2021-12-25 18:19:33', '0000-00-00 00:00:00'),
(320, '#OCUSR_R2WEZ', '', '', '', '9700324356', '', '260eab10ce75198f4141c4cb1ff4faf0', '', 1, 0, '0000-00-00 00:00:00', '2021-12-25 22:03:46', '0000-00-00 00:00:00'),
(321, '#OCUSR_JJ6R9', '', '', '', '9032076728', '', '700ac2e24fda073e3ce970463359fe5c', '', 1, 0, '0000-00-00 00:00:00', '2021-12-25 22:59:47', '0000-00-00 00:00:00'),
(322, '#OCUSR_lP9IY', '', '', '', '7396370639', '', 'fc4e17669e58bfde7f8c03907c2bba9a', '', 1, 0, '0000-00-00 00:00:00', '2021-12-25 23:17:21', '0000-00-00 00:00:00'),
(323, '#OCUSR_MOtYI', '', '', '', '9912612216', '', '372c144d22ed490187fff63235485828', '', 1, 0, '0000-00-00 00:00:00', '2021-12-26 07:35:22', '0000-00-00 00:00:00'),
(324, '#OCUSR_oqVhz', '', '', '', '7093833605', '', '1962acbdef6d0c39c1dc3d9d2020742c', '', 1, 0, '0000-00-00 00:00:00', '2021-12-26 07:42:54', '0000-00-00 00:00:00'),
(325, '#OCUSR_RJ0Np', '', '', '', '9440672275', '', '7b72e0b2485f8c983ce685974042414b', '', 1, 0, '0000-00-00 00:00:00', '2021-12-26 09:16:46', '0000-00-00 00:00:00'),
(326, '#OCUSR_GOHbQ', '', '', '', '8801815015', '', 'd1b72cfdef4cb88e140e1472b8dfd673', '', 1, 0, '0000-00-00 00:00:00', '2021-12-26 09:37:16', '0000-00-00 00:00:00'),
(327, '#OCUSR_DfQWa', '', '', '', '9110350959', '', '4d6f8232a8c76b7303636652bbbc6231', '', 1, 0, '0000-00-00 00:00:00', '2021-12-26 10:23:23', '0000-00-00 00:00:00'),
(328, '#OCUSR_l5HIy', '', '', '', '9949838205', '', 'ad762367560c232bb4b17bea8d8c0063', '', 1, 0, '0000-00-00 00:00:00', '2021-12-26 11:08:48', '0000-00-00 00:00:00'),
(329, '#OCUSR_33WBq', '', '', '', '9848833061', '', 'f25832543195814325455ce323a0da79', '', 1, 0, '0000-00-00 00:00:00', '2021-12-26 11:34:25', '0000-00-00 00:00:00'),
(330, '#OCUSR_baZtS', '', '', '', '9347175429', '', 'c7fc6584a34812fba941fb7f2fe32523', '', 1, 0, '0000-00-00 00:00:00', '2021-12-26 11:40:03', '0000-00-00 00:00:00'),
(331, '#OCUSR_4OaPD', '', '', '', '8885500908', '', '5b748560fa59ae869fb1fa5924f4c38f', '', 1, 0, '0000-00-00 00:00:00', '2021-12-26 11:51:44', '0000-00-00 00:00:00'),
(332, '#OCUSR_PW8Q2', '', '', '', '7386625142', '', '42cc83fb8ac374e105a943338dd4488b', '', 1, 0, '0000-00-00 00:00:00', '2021-12-26 12:35:38', '0000-00-00 00:00:00'),
(333, '#OCUSR_yTmE9', '', '', '', '9848343349', '', '5e19819116bebe4b962c4e534910279f', '', 1, 0, '0000-00-00 00:00:00', '2021-12-26 12:44:34', '0000-00-00 00:00:00'),
(334, '#OCUSR_m6REy', '', '', '', '7729028546', '', '8ba403684e99133361a60fd4c45bd07c', '', 1, 0, '0000-00-00 00:00:00', '2021-12-26 14:03:34', '0000-00-00 00:00:00'),
(335, '#OCUSR_6uob2', '', '', '', '9247850005', '', '849de08c1f68d4b711952bddcd48237a', '', 1, 0, '0000-00-00 00:00:00', '2021-12-26 15:12:06', '0000-00-00 00:00:00'),
(336, '#OCUSR_GNeKx', '', '', '', '9666180733', '', '2c4c140fcfb3dd5eaa265f318d2d9054', '', 1, 0, '0000-00-00 00:00:00', '2021-12-26 15:59:16', '0000-00-00 00:00:00'),
(337, '#OCUSR_Ncwg1', '', '', '', '9121988322', '', 'f914c871c989965d472557fd0fccdcf1', '', 1, 0, '0000-00-00 00:00:00', '2021-12-26 16:28:15', '0000-00-00 00:00:00'),
(338, '#OCUSR_KpSuG', '', '', '', '9052319210', '', 'f61c591d01212e129ece572a0dac5e78', '', 1, 0, '0000-00-00 00:00:00', '2021-12-26 16:58:54', '0000-00-00 00:00:00'),
(339, '#OCUSR_J6whA', '', '', '', '9347675856', '', '8bd0a57223d5da557bc12ef265124841', '', 1, 0, '0000-00-00 00:00:00', '2021-12-26 17:49:14', '0000-00-00 00:00:00'),
(340, '#OCUSR_qDssj', '', '', '', '8919128587', '', '05073a6e1c941bcfe576e8024151e739', '', 1, 0, '0000-00-00 00:00:00', '2021-12-26 17:58:27', '0000-00-00 00:00:00'),
(341, '#OCUSR_kqoxm', '', '', '', '9849023266', '', '01dce8cdd58c68e0feb5dc976d2b7375', '', 1, 0, '0000-00-00 00:00:00', '2021-12-26 18:02:49', '0000-00-00 00:00:00'),
(342, '#OCUSR_Dl22P', '', '', '', '7702005654', '', '80f2db855a8e33eacda948de8a3f2760', '', 1, 0, '0000-00-00 00:00:00', '2021-12-26 20:04:23', '0000-00-00 00:00:00'),
(343, '#OCUSR_VB3ZC', '', '', '', '9948959504', '', '51ec05baad7d46d04794692395cbc89c', '', 1, 0, '0000-00-00 00:00:00', '2021-12-26 20:04:31', '0000-00-00 00:00:00'),
(344, '#OCUSR_lgpOb', '', '', '', '9966477637', '', '8be609ffddcb7f9cf0a2be236db89f3b', '', 1, 0, '0000-00-00 00:00:00', '2021-12-26 20:39:54', '0000-00-00 00:00:00'),
(345, '#OCUSR_3lRmB', '', '', '', '9676299365', '', '57d641a41b86b9c8ddf448e37e08babe', '', 1, 0, '0000-00-00 00:00:00', '2021-12-26 20:58:49', '0000-00-00 00:00:00'),
(346, '#OCUSR_8wbY8', '', '', '', '8019785909', '', '77fcb8765895c80ff077b2214d1a594a', '', 1, 0, '0000-00-00 00:00:00', '2021-12-27 00:36:17', '0000-00-00 00:00:00'),
(347, '#OCUSR_guS0h', '', '', '', '9247153063', '', '5c64d4cf0ad25afd3368e71afcd8e264', '', 1, 0, '0000-00-00 00:00:00', '2021-12-27 00:48:26', '0000-00-00 00:00:00'),
(348, '#OCUSR_95lE7', '', '', '', '8074054119', '', 'e1fdc380fa834eff6fbd420cc97606e1', '', 1, 0, '0000-00-00 00:00:00', '2021-12-27 12:52:07', '0000-00-00 00:00:00'),
(349, '#OCUSR_134Sg', '', '', '', '9949435181', '', '1d13231f4765da9c4b6c4ffcce142e25', '', 1, 0, '0000-00-00 00:00:00', '2021-12-28 00:38:40', '0000-00-00 00:00:00'),
(350, '#OCUSR_gJxNr', '', '', '', '9573890088', '', 'aafb3eec75d1c8d2e8dd6176e91df94b', '', 1, 0, '0000-00-00 00:00:00', '2021-12-28 12:25:06', '0000-00-00 00:00:00'),
(351, '#OCUSR_Ur5VU', '', '', '', '9246999987', '', 'fa402aac8e7b8e86fbd30e9f8e3693fc', '', 1, 0, '0000-00-00 00:00:00', '2021-12-28 13:16:12', '0000-00-00 00:00:00'),
(352, '#OCUSR_GHBSv', '', '', '', '9908099530', '', 'a0b4f9705b7eb0b84bb7398fd6612d87', '', 1, 0, '0000-00-00 00:00:00', '2021-12-28 13:55:34', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_member_ship_data`
--

CREATE TABLE `user_member_ship_data` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `razorpay_order_id` varchar(100) NOT NULL,
  `razorpay_signature` text NOT NULL,
  `razorpay_payment_id` text NOT NULL,
  `amount` varchar(100) NOT NULL,
  `payment_status` varchar(45) NOT NULL,
  `member_ship_start` datetime NOT NULL,
  `member_ship_end` datetime NOT NULL,
  `payment_type` varchar(45) NOT NULL,
  `updated_at` datetime NOT NULL,
  `extra_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_offers_used`
--

CREATE TABLE `user_offers_used` (
  `id` int(11) NOT NULL,
  `user_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `used_at` datetime NOT NULL,
  `temp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_offers_used`
--

INSERT INTO `user_offers_used` (`id`, `user_id`, `order_id`, `offer_id`, `offer_code`, `offer_data`, `used_at`, `temp`) VALUES
(1, '#OCUSR_fodxm', '', '', '', '[]', '2021-12-01 14:21:41', ''),
(2, '#OCUSR_8S0ec', '', '', '', '[]', '2021-12-02 13:14:41', ''),
(3, '#OCUSR_8S0ec', '', '', '', '[]', '2021-12-02 13:18:09', ''),
(4, '#OCUSR_6Q4BT', '', '#OCOFR_URch9', 'FIRST100', '{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-02 13:44:06', ''),
(7, '#OCUSR_vzFcO', '', '#OCOFR_URch9', 'FIRST100', '{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-02 16:33:57', ''),
(8, '#OCUSR_TJcm4', '', '#OCOFR_URch9', 'FIRST100', '{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-02 17:24:41', ''),
(9, '#OCUSR_jsBGf', '', '#OCOFR_URch9', 'FIRST100', '{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-03 10:23:08', ''),
(10, '#OCUSR_Ilpjz', '', '#OCOFR_URch9', 'FIRST100', '{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-04 08:26:06', ''),
(11, '#OCUSR_tuItl', '', '#OCOFR_URch9', 'FIRST100', '{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-07 22:19:53', ''),
(12, '#OCUSR_l8Phw', '', '#OCOFR_URch9', 'FIRST100', '{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-07 23:26:44', ''),
(13, '#OCUSR_hvI3F', '', '#OCOFR_URch9', 'FIRST100', '{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-10 12:43:17', ''),
(16, '#OCUSR_dV5rI', '#OCORD_bwR2H', '#OCOFR_URch9', 'FIRST100', '{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-16 17:52:58', ''),
(18, '#OCUSR_rFh3x', '#OCORD_jlHi3', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-17 17:11:21', ''),
(20, '#OCUSR_hirHn', '#OCORD_lszGb', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-17 18:16:06', ''),
(21, '#OCUSR_aQjwe', '#OCORD_EuoF4', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-17 18:22:39', ''),
(22, '#OCUSR_dNQGV', '#OCORD_77sNw', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-17 18:23:52', ''),
(23, '#OCUSR_tnz4Y', '#OCORD_a9CnR', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-17 21:00:27', ''),
(24, '#OCUSR_2Dtao', '#OCORD_Kj7SL', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-17 21:05:41', ''),
(25, '#OCUSR_jp3Ay', '#OCORD_uL9lm', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-17 21:09:14', ''),
(26, '#OCUSR_AclXk', '#OCORD_sWrkg', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-17 21:47:05', ''),
(27, '#OCUSR_BzvEk', '#OCORD_fQpiM', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-17 22:16:39', ''),
(28, '#OCUSR_f9OOo', '#OCORD_izjiu', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-18 09:21:27', ''),
(29, '#OCUSR_D6iyx', '#OCORD_3qxsO', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-18 09:31:18', ''),
(31, '#OCUSR_DgsMX', '#OCORD_DSWma', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-18 17:48:02', ''),
(32, '#OCUSR_p4NU4', '#OCORD_Cn6ce', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-18 17:54:42', ''),
(34, '#OCUSR_m1zpF', '#OCORD_3mmOF', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-18 19:17:18', ''),
(35, '#OCUSR_j6POZ', '#OCORD_xyOz8', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-18 20:04:36', ''),
(36, '#OCUSR_cZcWn', '#OCORD_3kgHV', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-18 20:05:57', ''),
(37, '#OCUSR_GVdkn', '#OCORD_TojIT', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-18 20:08:33', ''),
(38, '#OCUSR_Vpd1h', '#OCORD_2Xd3v', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-18 20:09:48', ''),
(39, '#OCUSR_h05c5', '#OCORD_LlS8P', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-18 21:28:33', ''),
(40, '#OCUSR_Lh3IT', '#OCORD_j6nEf', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-19 07:47:21', ''),
(41, '#OCUSR_9dqiX', '#OCORD_IrbFr', '#OCOFR_URch9', 'FIRST100', '{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-19 08:11:10', ''),
(42, '#OCUSR_AB0u3', '#OCORD_0ZNtd', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-19 08:33:31', ''),
(44, '#OCUSR_kSQTW', '#OCORD_eedVs', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-19 09:56:28', ''),
(45, '#OCUSR_AAalv', '#OCORD_BumAR', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-19 10:00:52', ''),
(46, '#OCUSR_uUFZw', '#OCORD_FWy8M', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-19 12:22:27', ''),
(47, '#OCUSR_o8Qc7', '#OCORD_R2g11', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-20 00:03:28', ''),
(48, '#OCUSR_kV3J6', '#OCORD_eAVt0', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-20 00:30:29', ''),
(49, '#OCUSR_pk1ry', '#OCORD_0Ke25', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-20 10:25:49', ''),
(50, '#OCUSR_gsKNm', '#OCORD_7xBsz', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-20 11:32:18', ''),
(51, '#OCUSR_y5gFY', '#OCORD_ZVnKU', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-20 11:36:53', ''),
(52, '#OCUSR_ekuka', '#OCORD_y4TnH', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-20 11:39:15', ''),
(54, '#OCUSR_jHm9n', '#OCORD_4zuhy', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-21 08:24:51', ''),
(55, '#OCUSR_xs6mZ', '#OCORD_AfLhL', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-21 08:25:41', ''),
(56, '#OCUSR_2L2ZI', '#OCORD_B8yuT', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-21 08:26:26', ''),
(57, '#OCUSR_sTljb', '#OCORD_dzDDH', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-21 08:30:30', ''),
(58, '#OCUSR_decHE', '#OCORD_1bw2g', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-21 11:54:21', ''),
(59, '#OCUSR_j52wd', '#OCORD_1h9gG', '#OCOFR_URch9', 'FIRST100', '{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-21 17:28:31', ''),
(60, '#OCUSR_DNAhb', '#OCORD_lArFa', '#OCOFR_URch9', 'FIRST100', '{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-21 17:46:54', ''),
(61, '#OCUSR_GOmBY', '#OCORD_ARUfy', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-22 08:18:30', ''),
(62, '#OCUSR_vF7wB', '#OCORD_s0qcB', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-22 08:31:41', ''),
(63, '#OCUSR_dRIdm', '#OCORD_8tqSZ', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-22 09:32:44', ''),
(64, '#OCUSR_3WMhA', '#OCORD_WqqT0', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-22 09:47:56', ''),
(65, '#OCUSR_r08Ju', '#OCORD_bV92A', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-22 09:55:37', ''),
(66, '#OCUSR_n9lUa', '#OCORD_8vO4r', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-23 08:08:30', ''),
(67, '#OCUSR_Dszu8', '#OCORD_de5Pi', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-23 09:06:37', ''),
(68, '#OCUSR_Fs9f8', '#OCORD_3XZ6G', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-23 09:10:58', ''),
(69, '#OCUSR_rwlE3', '#OCORD_Jx42G', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-23 09:13:17', ''),
(70, '#OCUSR_UulZe', '#OCORD_yAyjU', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-23 09:23:45', ''),
(72, '#OCUSR_3HGNh', '#OCORD_WXkow', '#OCOFR_URch9', 'FIRST100', '{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-24 02:03:11', ''),
(73, '#OCUSR_3HGNh', '#OCORD_YBgNa', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-24 02:04:18', ''),
(74, '#OCUSR_P6vcv', '#OCORD_ki38h', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-24 07:38:41', ''),
(75, '#OCUSR_NgACY', '#OCORD_wTJ2O', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-24 09:12:46', ''),
(76, '#OCUSR_u2crb', '#OCORD_nZ6J3', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-24 09:45:48', ''),
(77, '#OCUSR_r0ZKZ', '#OCORD_By0xg', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-24 09:47:26', ''),
(78, '#OCUSR_h8LBG', '#OCORD_6XsSr', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-25 00:01:47', ''),
(79, '#OCUSR_h8LBG', '#OCORD_3zaeS', '#OCOFR_URch9', 'FIRST100', '{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-25 00:09:03', ''),
(80, '#OCUSR_zWbsE', '#OCORD_XEl8P', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-25 07:44:45', ''),
(81, '#OCUSR_OYAwQ', '#OCORD_8MSkv', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-25 08:12:48', ''),
(82, '#OCUSR_ropH0', '#OCORD_xHVvG', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-25 08:25:12', ''),
(83, '#OCUSR_2jh5z', '#OCORD_xWU5r', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-25 10:39:46', ''),
(84, '#OCUSR_m1zpF', '#OCORD_Ienc6', '#OCOFR_URch9', 'FIRST100', '{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-25 18:57:35', ''),
(86, '#OCUSR_YeNZF', '#OCORD_xS4k8', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-26 00:00:48', ''),
(87, '#OCUSR_zdpyB', '#OCORD_gaUpZ', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-26 00:26:34', ''),
(88, '#OCUSR_oqVhz', '#OCORD_nMfLv', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-26 07:45:48', ''),
(89, '#OCUSR_oqVhz', '#OCORD_iQM1Z', '#OCOFR_URch9', 'FIRST100', '{\"id\":\"1\",\"offer_id\":\"#OCOFR_URch9\",\"type\":\"discount\",\"code\":\"FIRST100\",\"offer_start\":\"2021-11-30 13:50:39\",\"offer_end\":\"2021-12-30 23:59:58\",\"description\":\"100/- discount on your first order\",\"min_order_price\":\"0.00\",\"offer_price\":\"100.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-11-30 13:51:45\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"2021-12-02 09:55:24\",\"updated_by\":\"vijay@gmail.com\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-26 07:46:43', ''),
(90, '#OCUSR_QnY9P', '#OCORD_RD4ai', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-26 09:38:18', ''),
(91, '#OCUSR_GOHbQ', '#OCORD_zLH4t', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-26 09:44:16', ''),
(93, '#OCUSR_yuXUy', '#OCORD_C0c4Y', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-27 00:37:14', ''),
(94, '#OCUSR_8wbY8', '#OCORD_VXPxm', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-27 00:42:30', ''),
(95, '#OCUSR_guS0h', '#OCORD_jZDHl', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-27 00:54:09', ''),
(96, '#OCUSR_33WBq', '#OCORD_O2Frf', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-27 05:04:00', ''),
(97, '#OCUSR_lgpOb', '#OCORD_RVlFs', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-27 05:16:11', ''),
(98, '#OCUSR_6uob2', '#OCORD_d7ibu', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-28 00:24:44', ''),
(99, '#OCUSR_DfQWa', '#OCORD_QhejK', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-28 00:30:51', ''),
(100, '#OCUSR_134Sg', '#OCORD_aN9t2', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-28 00:41:39', ''),
(101, '#OCUSR_kqoxm', '#OCORD_DRsd5', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-28 07:02:09', ''),
(102, '#OCUSR_yTmE9', '#OCORD_uwwqF', '#OCOFR_wnQAA', 'FIRST10', '{\"id\":\"2\",\"offer_id\":\"#OCOFR_wnQAA\",\"type\":\"discount\",\"code\":\"FIRST10\",\"offer_start\":\"2021-12-17 08:18:00\",\"offer_end\":\"2021-12-29 23:55:00\",\"description\":\"GET YOUR FREE PACK\",\"min_order_price\":\"309.00\",\"offer_price\":\"309.00\",\"discount\":\"0\",\"status\":\"1\",\"created_at\":\"2021-12-17 08:21:07\",\"created_by\":\"vijay@gmail.com\",\"updated_at\":\"0000-00-00 00:00:00\",\"updated_by\":\"\",\"is_deleted\":\"0\",\"temp\":\"\"}', '2021-12-28 12:56:48', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_wallet`
--

CREATE TABLE `user_wallet` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `razorpay_order_id` varchar(100) NOT NULL,
  `razorpay_signature` text NOT NULL,
  `razorpay_payment_id` text NOT NULL,
  `description` varchar(500) NOT NULL,
  `status` varchar(20) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_wallet`
--

INSERT INTO `user_wallet` (`id`, `user_id`, `amount`, `razorpay_order_id`, `razorpay_signature`, `razorpay_payment_id`, `description`, `status`, `updated_at`) VALUES
(1, '#OCUSR_dr6A2', '+100', 'order_IY42ljqolhzqqD', '', '', 'Added to wallet', 'pending', '2021-12-16 12:59:25'),
(2, '#OCUSR_P6vcv', '+500', 'order_IbvPMHsInK1XNp', '', '', 'Added to wallet', 'pending', '2021-12-26 07:08:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `address_id` (`address_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cart_id` (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_id` (`category_id`);

--
-- Indexes for table `delivery_users`
--
ALTER TABLE `delivery_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`delivery_user_id`);

--
-- Indexes for table `employee_otp_key`
--
ALTER TABLE `employee_otp_key`
  ADD PRIMARY KEY (`user_phone`);

--
-- Indexes for table `fcm_tokens`
--
ALTER TABLE `fcm_tokens`
  ADD PRIMARY KEY (`token_id`);

--
-- Indexes for table `insights`
--
ALTER TABLE `insights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_id` (`item_id`);

--
-- Indexes for table `items_quantities`
--
ALTER TABLE `items_quantities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `logs_data`
--
ALTER TABLE `logs_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meta_data`
--
ALTER TABLE `meta_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meta_key` (`meta_key`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `offer_id` (`offer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD UNIQUE KEY `order_key` (`order_key`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_ratings`
--
ALTER TABLE `order_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `user_member_ship_data`
--
ALTER TABLE `user_member_ship_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_offers_used`
--
ALTER TABLE `user_offers_used`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_wallet`
--
ALTER TABLE `user_wallet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `admin_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=802;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `delivery_users`
--
ALTER TABLE `delivery_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fcm_tokens`
--
ALTER TABLE `fcm_tokens`
  MODIFY `token_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;

--
-- AUTO_INCREMENT for table `insights`
--
ALTER TABLE `insights`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `items_quantities`
--
ALTER TABLE `items_quantities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `logs_data`
--
ALTER TABLE `logs_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `meta_data`
--
ALTER TABLE `meta_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `order_ratings`
--
ALTER TABLE `order_ratings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT for table `user_member_ship_data`
--
ALTER TABLE `user_member_ship_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_offers_used`
--
ALTER TABLE `user_offers_used`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `user_wallet`
--
ALTER TABLE `user_wallet`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
