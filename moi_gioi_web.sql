-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 18, 2023 at 06:12 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moi_gioi_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `address`, `address2`, `district`, `city`, `country`, `zipcode`, `phone`, `email`, `logo`, `deleted_at`) VALUES
(1, 'Châu-Phùng', '2 Phố Lương Minh Hà', '5', 'Hồ Chí Minh', 'Hải Phòng', 'Vietnam', '62209-9243', '(063) 677 6847', 'ldanh@ha.gov.vn', 'https://via.placeholder.com/640x480.png/009933?text=ipsam', NULL),
(2, 'Ngân, Kim and Nghị', '18 Phố Hoán', '6236', 'Cần Thơ', 'Hà Nội', 'Vietnam', '72995', '(0162)710-4166', 'la.chien@du.info.vn', 'https://via.placeholder.com/640x480.png/008899?text=ipsa', NULL),
(3, 'Bá LLC', '17 Phố Lục Vi Nhã', '395', 'Hà Nội', 'Hà Nội', 'Vietnam', '35189-4146', '(0350)086-2714', 'dnghiem@yahoo.com', 'https://via.placeholder.com/640x480.png/003377?text=ab', NULL),
(4, 'Phạm-Bạch', '847 Phố Thắng', '4303', 'Đà Nẵng', 'Cần Thơ', 'Vietnam', '70756-1651', '(84)(781)098-3110', 'chau.le@gmail.com', 'https://via.placeholder.com/640x480.png/0055ff?text=omnis', NULL),
(5, 'Bảo-Trương', '8 Phố Phụng', '96', 'Cần Thơ', 'Hồ Chí Minh', 'Vietnam', '744485', '(0240) 822 0205', 'hien05@yahoo.com', 'https://via.placeholder.com/640x480.png/006611?text=nulla', NULL),
(6, 'Trưng and Sons', '202 Phố Quyền', '622', 'Hồ Chí Minh', 'Cần Thơ', 'Vietnam', '179269', '(0126) 099 0734', 'cam.hoan@gmail.com', 'https://via.placeholder.com/640x480.png/007788?text=illum', NULL),
(7, 'Phó Inc', '8 Phố Vịnh', '64', 'Cần Thơ', 'Cần Thơ', 'Vietnam', '25740-5631', '84-26-961-8269', 'man.thuc@hotmail.com', 'https://via.placeholder.com/640x480.png/004477?text=voluptates', NULL),
(8, 'Cao, Tống and Triệu', '7 Phố Yên', '971', 'Đà Nẵng', 'Đà Nẵng', 'Vietnam', '36397', '(84)(94)946-8117', 'rhoang@ly.com', 'https://via.placeholder.com/640x480.png/0099ff?text=voluptas', NULL),
(9, 'Khổng, Khuất and Ông', '9 Phố Tăng Dụng Trầm', '5', 'Hồ Chí Minh', 'Hồ Chí Minh', 'Vietnam', '430216', '0281-941-1116', 'nchau@diep.net.vn', 'https://via.placeholder.com/640x480.png/0000dd?text=iusto', NULL),
(10, 'Trịnh Ltd', '7 Phố Lê Mai Liên', '2', 'Hồ Chí Minh', 'Hồ Chí Minh', 'Vietnam', '884008', '+84-76-581-6199', 'nhu18@hotmail.com', 'https://via.placeholder.com/640x480.png/00bb11?text=et', NULL),
(11, 'Da cap', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(27, 'WorldQuant ', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(28, 'ATALINK', NULL, NULL, NULL, 'HCM', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(29, 'MISA', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(30, 'True Platform', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(31, 'HCL', NULL, NULL, NULL, 'HN, HCM', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(32, 'Everflow', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(33, 'Kyanon', NULL, NULL, NULL, 'HCM', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(34, 'Fsoft', NULL, NULL, NULL, 'HN, HCM, Đà Nẵng', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(35, 'BHSoft', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(36, 'ITS Global', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(37, 'FPT Cloud', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(38, 'VTI', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(39, 'The Big Rich Group', NULL, NULL, NULL, 'Remote', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(40, 'JobsGO', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(41, 'TBP', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(42, 'ATB', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(43, 'Base', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(44, 'HT Ecom', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(45, 'Trente Vietnam', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(46, 'ZYYZ', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(47, 'Kiaisoft', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(48, 'AION Tech', NULL, NULL, NULL, 'HCM', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(49, 'MOR', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(50, 'TMA', NULL, NULL, NULL, 'HCM', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(51, 'Newwave', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(52, 'Appota', NULL, NULL, NULL, 'Nhiều', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(53, 'IEC', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(54, 'Secomus', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(55, 'NTQ Solution', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(56, 'Hachinet', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(57, 'CyberLotus', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(58, 'Sphinx ', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(59, 'CoWell', NULL, NULL, NULL, 'HN, Đà Nẵng', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(60, 'TTC ', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(61, 'FreeC', NULL, NULL, NULL, 'HCM', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(62, 'Pixta', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(63, 'Riki', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(64, 'Gumi', NULL, NULL, NULL, 'HCM', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(65, 'HR1TECH', NULL, NULL, NULL, 'HCM', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(66, 'Antoree', NULL, NULL, NULL, 'HN, HCM', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(67, 'Ominext', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(68, 'Fabbi', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(69, 'SmartOSC', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(70, 'VietIS', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(71, 'Thiên Quang', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(72, 'PDH', NULL, NULL, NULL, 'HCM', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(73, 'Lục Phát', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(74, '2NF', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(75, 'OMT', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(76, 'VNPT', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(77, 'Tomosia', NULL, NULL, NULL, 'HN, Đà Nẵng', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(78, 'ITNavi', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(79, 'SimiCart', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(80, 'XGame', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(81, 'Est Rouge', NULL, NULL, NULL, 'Đà Nẵng', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(82, 'GMO ', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(83, 'CodeLover', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(84, 'Bota', NULL, NULL, NULL, 'Nhiều', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(85, 'SoftDreams', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(86, 'Rising Stars', NULL, NULL, NULL, 'Đà Nẵng', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(87, 'OMN1', NULL, NULL, NULL, 'HCM', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(88, 'Coolmate', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(89, 'ViettelIDC', NULL, NULL, NULL, 'Nhiều', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(90, 'EOS Solutions', NULL, NULL, NULL, 'HCM', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(91, 'Nashtech', NULL, NULL, NULL, 'HN, HCM', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(92, 'Dolphin Solutions', NULL, NULL, NULL, 'HCM', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(93, 'Kaopiz', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(94, 'MH SOLUTION', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(95, 'Uway', NULL, NULL, NULL, 'HCM', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(96, 'METANOMY ', NULL, NULL, NULL, 'HCM', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(97, 'PROS', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(98, 'Miagi', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(99, 'SotaTek', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL),
(100, 'TOPRATE', NULL, NULL, NULL, 'HN', 'Vietnam', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `user_id`, `post_id`, `link`, `type`, `deleted_at`) VALUES
(1, 1, 4, 'acb', 1, NULL),
(2, 1, 5, 'acb', 1, NULL),
(21, 1, 24, 'https://recruitingbypaycor.com/career/JobIntroduction.action?clientId=8a7883c6603459fe016047c420730543&id=8a78859f7f28b47b017f3ea01f6d4185&source=&lang=en', 1, NULL),
(22, 1, 25, 'https://drive.google.com/file/d/1awNdApWGDa_sT4WgrLpHVI4ImtfcnJZz/view?usp=sharing', 1, NULL),
(23, 1, 26, 'https://mily.vn/vDSPTOD', 1, NULL),
(24, 1, 27, 'https://www.misa.vn/tuyen-dung', 1, NULL),
(25, 1, 28, 'https://bit.ly/true-platform-SE-fresher', 1, NULL),
(26, 1, 29, 'https://drive.google.com/file/d/14MvyrG7BZCOHraLfJRExC7ofvGB1Robc/view?usp=sharing', 1, NULL),
(27, 1, 30, 'https://docs.google.com/document/d/1H9V1pGOG-DAPGCLBlQfuScUrKSnK9wkW/edit', 1, NULL),
(28, 1, 31, 'https://kyanon.digital/recruitment/kyanon-digital-internship/', 1, NULL),
(29, 1, 32, 'https://docs.google.com/document/d/1AD6LRxeBgeaaxYgGf7NgOfGiFgflXLJl/edit?usp=sharing&ouid=104629022412839755198&rtpof=true&sd=true', 1, NULL),
(30, 1, 33, 'https://fsoft-academy.edu.vn/tuyen-dung/', 1, NULL),
(31, 1, 34, 'https://itviec.com/viec-lam-it/fresher-junior-backend-java-c-go-hcl-vietnam-company-limited-0550', 1, NULL),
(32, 1, 35, 'https://docs.google.com/document/d/1NsWOgqgHTZAR9GFUx_aOzwZLhXzpzwFp/edit', 1, NULL),
(33, 1, 36, 'https://docs.google.com/document/d/1Zj64Lw_Dl2CW89aahspzJdRCxkhsITYz/edit?rtpof=true&sd=true', 1, NULL),
(34, 1, 37, 'https://docs.google.com/document/d/19QyeTaYdZvrvgcrQn2K_AvuNJZln_nXo/edit?usp=sharing&ouid=104629022412839755198&rtpof=true&sd=true', 1, NULL),
(35, 1, 38, 'https://docs.google.com/document/d/1eXCJjGCbaMJJc5kkU63Z4LTUaj7BY1GqAc9_6YEk1xM/edit', 1, NULL),
(36, 1, 39, 'https://glints.com/sg/opportunities/jobs/junior-backend-developer/657888c3-aba5-4bdc-a1fc-862d548f6aa8', 1, NULL),
(37, 1, 40, 'https://docs.google.com/document/d/16ak4wClQXIwx0e1nimlU-MJrqa1pvBS4ueI-lKvFW8Q/edit?usp=sharing', 1, NULL),
(38, 1, 41, 'https://drive.google.com/file/d/1JbG47Cu_XcZUD56F9gic9Xu5aqM1PyKF/view?usp=sharing', 1, NULL),
(39, 1, 42, 'https://drive.google.com/file/d/19prCBMS7X9UhEUomhlGjSTRvdl3HuTS9/view?usp=sharing', 1, NULL),
(40, 1, 43, 'https://drive.google.com/file/d/1JlE_rNCuJS_UzknOcUDlki20iEB40bbu/view?usp=sharing', 1, NULL),
(41, 1, 44, 'https://drive.google.com/file/d/1TuknjnHbuco3H60yxpzhndXayWix6EPX/view?usp=sharing', 1, NULL),
(42, 1, 45, 'https://docs.google.com/document/d/1Wl26RVCE6kLUDk27N5S4Jg_vKP3z-9m9/edit?usp=sharing&ouid=104629022412839755198&rtpof=true&sd=true', 1, NULL),
(43, 1, 46, 'https://docs.google.com/document/d/1QvxL_fI9EPqPJ43I284SqqXP8Lj6ALrn/edit?usp=sharing&ouid=104629022412839755198&rtpof=true&sd=true', 1, NULL),
(44, 1, 47, 'https://drive.google.com/file/d/1Lq0J5IyJs-9nEhSvsGeZjr4cxZzgxcSw/view?usp=sharing', 1, NULL),
(45, 1, 48, 'https://docs.google.com/document/d/1KLeIHQvclGhI-vExvQf_7HFZu8J2A-qEJCAS0MSsJRM/edit', 1, NULL),
(46, 1, 49, 'https://docs.google.com/document/d/10c5kJ5FXUh4fh5XtsKSiiOUhoZdoJrnj/edit?usp=sharing&ouid=104629022412839755198&rtpof=true&sd=true', 1, NULL),
(47, 1, 50, 'https://docs.google.com/document/d/17GZDkCx5Hzooy4eGW9ru7Bsof_vMY1fCXGteRzjSWWM/edit', 1, NULL),
(48, 1, 51, 'https://drive.google.com/file/d/1E-RfxApwf_Na0H7SrxiV86PiJKa00o1l/view', 1, NULL),
(49, 1, 52, 'https://tuyendung.newwave.vn/', 1, NULL),
(50, 1, 53, 'https://appota.com/nextgen2022/', 1, NULL),
(51, 1, 54, 'https://docs.google.com/document/d/1RllCP-3IFZTYzWnFrzV78NNDyUY7jD2I/edit', 1, NULL),
(52, 1, 55, 'https://docs.google.com/document/d/1TXNBJ_ayY6r92py2gYPSez0S-9zEPFwr8j4xA_HZUUE/edit#', 1, NULL),
(53, 1, 56, 'https://docs.google.com/document/d/1qP6m0S1yKaUeGDjUyV7jx_rRmvZbqXF2tDJD7UcIjco/edit', 1, NULL),
(54, 1, 57, 'https://tuyendung.hachinet.com/tuyen-dung/php-developer', 1, NULL),
(55, 1, 58, 'https://drive.google.com/file/d/1R6To1nFj6tzyQv7eOEVGiyC3sfY_FEjR/view', 1, NULL),
(56, 1, 59, 'https://sphinx.vn/join-us/se-php-developer', 1, NULL),
(57, 1, 60, 'https://co-well.vn/careers/', 1, NULL),
(58, 1, 61, 'https://www.topcv.vn/brand/ttcvietnam/tuyen-dung/thuc-tap-sinh-java-blockchain-j649599.html', 1, NULL),
(59, 1, 62, 'https://freec.asia/jobs/php-developer--1-i19673?referral-id=354969', 1, NULL),
(60, 1, 63, 'https://pixta.vn/careers', 1, NULL),
(61, 1, 64, 'https://docs.google.com/document/d/19ZxkvDg39SomfDMBz7o6QcyKYlp7UjES5BAqIE7YVBI/edit', 1, NULL),
(62, 1, 65, 'https://docs.google.com/document/d/1eINqjwYRXvi6mYet1Z-ijXXqMcJpo50X/edit?usp=sharing&ouid=104629022412839755198&rtpof=true&sd=true', 1, NULL),
(63, 1, 66, 'https://docs.google.com/document/d/1cGeDXSPng8kyWn4h07-yJVYEx3kEePOc/edit?usp=sharing&ouid=104629022412839755198&rtpof=true&sd=true', 1, NULL),
(64, 1, 67, 'https://drive.google.com/file/d/1xsP6HT_ig5sFvXEelPZ40Ek982fFC0i_/view?usp=sharing', 1, NULL),
(65, 1, 68, 'https://drive.google.com/file/d/1FncKvF8pM5NIBya0Uu4PxpE5LP7WYMWV/view?usp=sharing', 1, NULL),
(66, 1, 69, 'https://drive.google.com/file/d/1zj3ob-B2YfnmlSxgq-n2r9ZD5L-ET1Nu/view?usp=sharing', 1, NULL),
(67, 1, 70, 'https://docs.google.com/document/d/1pCtuMyvmW7-iQgQJ26gIfnl3ErajlYRUNiuuXUH0J0U/edit', 1, NULL),
(68, 1, 71, 'https://tuyendung.vietis.com.vn/', 1, NULL),
(69, 1, 72, 'https://docs.google.com/document/d/1OSw0yalHwzv6NR3qAheoSRpoIxGMG6u7/edit?usp=sharing&ouid=104629022412839755198&rtpof=true&sd=true', 1, NULL),
(70, 1, 73, 'https://docs.google.com/document/d/10mJB0FOzWz1vhWThii4e5_iGpZ3azV-p/edit?usp=sharing&ouid=104629022412839755198&rtpof=true&sd=true', 1, NULL),
(71, 1, 74, 'https://drive.google.com/file/d/1NVusXcqGvwA2g9Jtwd5vBt4vaRQFICgk/view?usp=sharing', 1, NULL),
(72, 1, 75, 'https://docs.google.com/document/d/1StpEq052e7zdbugq9YHdd1uIF94UAY14/edit?usp=sharing&ouid=104629022412839755198&rtpof=true&sd=true', 1, NULL),
(73, 1, 76, 'https://docs.google.com/document/d/1uk_WpDUd8viYvB_23Je5pFK8NJnXXAxLPHPet6_cD8M/edit', 1, NULL),
(74, 1, 77, 'https://docs.google.com/document/d/1Lsfdxg-tSaNwOi2AyiqKqyt70oJajPJcY3C9faUes84/edit', 1, NULL),
(75, 1, 78, 'https://docs.google.com/document/d/1eQZ5_A-yMTuoxfReSyw13OJgQQ1S38xW/edit#', 1, NULL),
(76, 1, 79, 'https://drive.google.com/file/d/1bACk0sr4GfH9w63WCcORbbiLi1Skgtc8/view?usp=sharing', 1, NULL),
(77, 1, 80, 'https://itnavi.com.vn/job-detail/lap-trinh-vien-php-junior-2qh7p', 1, NULL),
(78, 1, 81, 'https://www.simicart.com/simihr/detail?job=Intern/Fresher%20PHP&job_type=full-time', 1, NULL),
(79, 1, 82, 'https://docs.google.com/document/d/1Car3J_fGMGXh700okYa1JCW0JCTBeaKX/edit?usp=sharing&ouid=104629022412839755198&rtpof=true&sd=true', 1, NULL),
(80, 1, 83, 'https://drive.google.com/file/d/1QVNI75i4rcmnVmvU7BQWOfnjLQ3BvS0Z/view?usp=sharing', 1, NULL),
(81, 1, 84, 'https://drive.google.com/file/d/1iMb1jBfyfa5SobdIw2dEl5dXWpXgdJQz/view?usp=sharing', 1, NULL),
(82, 1, 85, 'https://drive.google.com/file/d/1Dktl2oUI5DWT4sj-BlOfpKpWanz-6EaI/view', 1, NULL),
(83, 1, 86, 'https://drive.google.com/file/d/1-3bt0abgX4-beTFtEvXvtrbsJmPWs5vL/view?usp=sharing', 1, NULL),
(84, 1, 87, 'https://tuyendung.bota.vn/tuyen-dung/', 1, NULL),
(85, 1, 88, 'https://drive.google.com/file/d/17slgpTRAo6udVECq_sL1rqn1SpMA-eMo/view?usp=sharing', 1, NULL),
(86, 1, 89, 'https://drive.google.com/file/d/1UxGjE5WuGrVyYoK-AhMAqmLdbe1_pJsI/view?usp=sharing', 1, NULL),
(87, 1, 90, 'https://drive.google.com/file/d/1a-i8fqWroEGHAbKlAs4Ht_yCX4a9-4Tk/view?usp=sharing', 1, NULL),
(88, 1, 91, 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-phat-trien-giai-phap-solution-developer.35B87F06.html', 1, NULL),
(89, 1, 92, 'https://www.coolmate.me/lp/coolmate-101?itm_source=navbar#middle-php-backend-developer', 1, NULL),
(90, 1, 93, 'https://tuyendung.viettelidc.com.vn/', 1, NULL),
(91, 1, 94, 'https://drive.google.com/file/d/1SRzixXDZc8qYC8-vKLgVwyBDuCuICoZo/view?usp=sharing', 1, NULL),
(92, 1, 95, 'https://drive.google.com/file/d/1IWgpMIAQAJxt0MJAxhsy86nyzCKc77mn/view?usp=sharing', 1, NULL),
(93, 1, 96, 'https://drive.google.com/file/d/1h7p-brMeebW6eKTTTp_2tvpsuieHrV9I/view?usp=sharing', 1, NULL),
(94, 1, 97, 'https://tuyendung.kaopiz.com/#alljobs', 1, NULL),
(95, 1, 98, 'https://drive.google.com/file/d/1E3VFB3bjvd1-Dt2Dah1Rvu6xy1IwevIy/view?usp=sharing', 1, NULL),
(96, 1, 99, 'https://uway.asia/php-developer/', 1, NULL),
(97, 1, 100, 'https://docs.google.com/document/d/1IrB8LqH7AFVGaoyGO1bnWy5BFz0_Qpfm7M5FoUeN8qs/edit', 1, NULL),
(98, 1, 101, 'https://docs.google.com/document/d/1TNbUDS8fVBye-Xnwnq7ygM_nDVF_RHWY0hgPh1UhBsU/edit', 1, NULL),
(99, 1, 102, 'https://drive.google.com/file/d/16uzRENM8nsdfxhk3xkopw2mx5lTguUV5/view', 1, NULL),
(100, 1, 103, 'https://docs.google.com/document/d/1PcgcEJfcSMuK1YbKPe6epS88plzcDobA/edit', 1, NULL),
(101, 1, 104, 'https://drive.google.com/drive/folders/1bJ8S3QiI3L6Nr0v_QsLTQZKlhTBj1rpn', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`) VALUES
(36, '.NET'),
(32, 'ASP.NET'),
(7, 'aut'),
(47, 'Backend'),
(31, 'C#'),
(39, 'C++'),
(10, 'cum'),
(5, 'dolores'),
(46, 'Frontend'),
(43, 'Fullstack'),
(45, 'Game Server'),
(40, 'GO'),
(1, 'itaque'),
(12, 'Java'),
(38, 'JAVA/J2EE'),
(30, 'JavaScript'),
(44, 'JS'),
(4, 'mollitia'),
(34, 'Nhiều'),
(11, 'PHP'),
(2, 'placeat'),
(29, 'Python'),
(6, 'qui'),
(35, 'React Native'),
(42, 'Reactjs'),
(41, 'Ruby'),
(37, 'SQL'),
(3, 'tenetur'),
(8, 'vitae'),
(9, 'voluptas'),
(33, 'Vue');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_07_01_021311_create_configs_table', 1),
(3, '2022_07_01_022017_create_companies_table', 1),
(4, '2022_07_01_022714_create_languages_table', 1),
(5, '2022_07_01_023004_create_users_table', 1),
(6, '2022_07_01_030755_create_posts_table', 1),
(7, '2022_07_01_032742_create_object_language_table', 1),
(8, '2022_07_01_033217_create_files_table', 1),
(9, '2022_07_01_033512_create_reports_table', 1),
(10, '2022_07_01_151250_alter_add_is_pinned_colum_to_post_table', 2),
(15, '2022_07_03_135626_alter_columns_nullable_in_user_table', 3),
(16, '2022_07_10_093647_alter_add_deleted_at_column_to_some_table', 4),
(18, '2022_07_13_145638_alter_multiple_columns_nullable', 5);

-- --------------------------------------------------------

--
-- Table structure for table `object_language`
--

CREATE TABLE `object_language` (
  `object_id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `type` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `job_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remotable` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_parttime` tinyint(1) DEFAULT NULL,
  `min_salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_salary` int DEFAULT NULL,
  `currency_salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `requirement` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `number_applicants` int DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `is_pinned` tinyint(1) NOT NULL DEFAULT '0',
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `company_id`, `job_title`, `district`, `city`, `remotable`, `is_parttime`, `min_salary`, `max_salary`, `currency_salary`, `requirement`, `start_date`, `end_date`, `number_applicants`, `status`, `is_pinned`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 11, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php', '2022-07-13 21:27:02', '2022-07-13 21:27:02', NULL),
(2, 1, 11, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-2', '2022-07-14 19:55:14', '2022-07-14 19:55:14', NULL),
(3, 1, 11, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-3', '2022-07-14 19:55:23', '2022-07-14 19:55:23', NULL),
(4, 1, 11, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-4', '2022-07-14 20:10:41', '2022-07-14 20:10:41', NULL),
(5, 1, 11, 'PHP, Java', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-java', '2022-07-14 20:12:03', '2022-07-14 20:12:03', NULL),
(24, 1, 27, 'Python, Java', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'python-java', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(25, 1, 28, 'JavaScript', NULL, 'HCM', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'javascript', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(26, 1, 29, 'C#, ASP.NET, Vue', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'c-asp-net-vue', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(27, 1, 29, 'Nhiều', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'nhieu', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(28, 1, 30, 'PHP, Javascript, React Native', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-javascript-react-native', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(29, 1, 31, 'Java, .NET, SQL', NULL, 'HN, HCM', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'java-net-sql', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(30, 1, 32, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-5', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(31, 1, 33, 'Nhiều', NULL, 'HCM', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'nhieu-2', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(32, 1, 34, 'Java', NULL, 'HN, HCM, Đà Nẵng', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'java', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(33, 1, 34, 'Nhiều', NULL, 'HN, HCM, Đà Nẵng, Quy Nhơn, Cần Thơ', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'nhieu-3', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(34, 1, 31, 'Python, JAVA/J2EE, C++, GO', NULL, 'HN, HCM', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'python-java-j2ee-c-go', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(35, 1, 35, 'Nhiều', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'nhieu-4', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(36, 1, 36, 'Java, Ruby, .NET, PHP, Reactjs', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'java-ruby-net-php-reactjs', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(37, 1, 37, 'Fullstack', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'fullstack', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(38, 1, 38, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-6', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(39, 1, 39, 'PHP', NULL, 'Remote', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-7', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(40, 1, 40, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-8', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(41, 1, 41, 'JS', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'js', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(42, 1, NULL, 'PHP', NULL, 'HCM', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-9', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(43, 1, 42, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-10', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(44, 1, 43, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-11', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(45, 1, 44, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-12', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(46, 1, 45, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-13', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(47, 1, 46, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-14', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(48, 1, 47, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-15', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(49, 1, 48, 'PHP', NULL, 'HCM', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-16', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(50, 1, 49, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-17', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(51, 1, 50, 'PHP', NULL, 'HCM', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-18', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(52, 1, 51, 'Nhiều', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'nhieu-5', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(53, 1, 52, 'Nhiều', NULL, 'Nhiều', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'nhieu-6', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(54, 1, 53, 'Game Server', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'game-server', '2022-07-14 20:38:22', '2022-07-14 20:38:22', NULL),
(55, 1, 54, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-19', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(56, 1, 55, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-20', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(57, 1, 56, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-21', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(58, 1, 57, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-22', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(59, 1, 58, 'Nhiều', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'nhieu-7', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(60, 1, 59, 'Nhiều', NULL, 'HN, Đà Nẵng', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'nhieu-8', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(61, 1, 60, 'Java', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'java-2', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(62, 1, 61, 'PHP', NULL, 'HCM', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-23', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(63, 1, 62, 'Nhiều', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'nhieu-9', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(64, 1, 63, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-24', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(65, 1, 64, 'PHP', NULL, 'HCM', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-25', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(66, 1, 65, 'PHP', NULL, 'HCM', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-26', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(67, 1, 66, 'PHP', NULL, 'HN, HCM', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-27', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(68, 1, 67, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-28', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(69, 1, 68, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-29', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(70, 1, 69, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-30', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(71, 1, 70, 'Nhiều', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'nhieu-10', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(72, 1, 71, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-31', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(73, 1, 72, 'PHP', NULL, 'HCM', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-32', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(74, 1, 73, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-33', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(75, 1, 74, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-34', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(76, 1, 75, 'Frontend', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'frontend', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(77, 1, 75, 'Backend', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'backend', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(78, 1, 76, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-35', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(79, 1, 77, 'PHP', NULL, 'HN, Đà Nẵng', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-36', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(80, 1, 78, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-37', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(81, 1, 79, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-38', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(82, 1, 80, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-39', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(83, 1, 81, 'Frontend', NULL, 'Đà Nẵng', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'frontend-2', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(84, 1, 81, 'PHP', NULL, 'Đà Nẵng', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-40', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(85, 1, 82, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-41', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(86, 1, 83, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-42', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(87, 1, 84, 'Nhiều', NULL, 'Nhiều', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'nhieu-11', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(88, 1, 85, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-43', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(89, 1, 86, 'PHP', NULL, 'Đà Nẵng', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-44', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(90, 1, 86, 'Frontend', NULL, 'Đà Nẵng', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'frontend-3', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(91, 1, 87, 'Nhiều', NULL, 'HCM', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'nhieu-12', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(92, 1, 88, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-45', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(93, 1, 89, 'Nhiều', NULL, 'Nhiều', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'nhieu-13', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(94, 1, 90, 'Backend', NULL, 'HCM', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'backend-2', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(95, 1, 91, 'Nhiều', NULL, 'HN, HCM', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'nhieu-14', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(96, 1, 92, 'PHP', NULL, 'HCM', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-46', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(97, 1, 93, 'Nhiều', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'nhieu-15', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(98, 1, 94, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-47', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(99, 1, 95, 'PHP', NULL, 'HCM', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-48', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(100, 1, 96, 'PHP', NULL, 'HCM', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-49', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(101, 1, 97, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-50', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(102, 1, 98, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-51', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(103, 1, 99, 'PHP', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'php-52', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL),
(104, 1, 100, 'Nhiều', NULL, 'HN', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, 0, 'nhieu-16', '2022-07-14 20:38:23', '2022-07-14 20:38:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `reported_id` bigint UNSIGNED NOT NULL,
  `type` int NOT NULL,
  `status` smallint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int NOT NULL DEFAULT '1',
  `bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `password`, `phone`, `link`, `role`, `bio`, `position`, `gender`, `city`, `company_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Phong lê', 'https://avatars.githubusercontent.com/u/91015656?v=4', 'phantv2k3@gmail.com', '$2y$10$uJLjKhDBl6stEzDYCvqBfO8/95vqspf9aCa1I3pZqSc9e8HjUHcEC', '0389898', NULL, 3, NULL, 'admin', 0, 'KepNgan', 8, '2022-07-03 07:21:15', '2022-07-11 07:36:08', NULL),
(2, 'Lucas ij', NULL, 'lucas@gmail.com', '$2y$10$pTeV8fZcI5WhVdFs/.dju.8778L.aOkJmYXyTaDikMHT6gFkr61f2', NULL, NULL, 1, NULL, NULL, 0, 'KepNgan', 5, '2022-07-03 23:56:17', '2022-07-11 07:15:43', NULL),
(3, 'meo con2', NULL, 'meo@gmail.com', '$2y$10$5XfiwkJUVUMQNKK2Fbg10.hVYv0pvDkVE/oNMMbvbz0c2yczo8oeC', NULL, NULL, 1, NULL, 'leader marketing', 1, 'Doong Lao', 3, '2022-07-04 00:00:40', '2022-07-11 07:35:29', NULL),
(4, 'con meo', NULL, 'phantv2@gmail.com', '$2y$10$4UNuju0rmKBA1oJYFGDh3O5QP9XYwtVD3HcqmIDdH19bV3.YpGbp6', NULL, NULL, 1, NULL, NULL, 0, 'Izie', NULL, '2022-07-04 00:03:19', '2022-07-11 03:07:18', '2022-07-11 03:07:18'),
(5, 'adks', NULL, 'adsk@gmail.com', '$2y$10$B.1DQbTJjOPGHD5wOJAiQuKYW4jG5gF0UNpTLNoPu3coMnmlzO4Nm', NULL, NULL, 1, NULL, NULL, 0, 'Veiew', 8, '2022-07-04 00:05:44', '2022-07-11 03:06:30', '2022-07-11 03:06:30'),
(6, '123', NULL, '123@gmail.com', '$2y$10$zcD.1oY3Z4bK7jKs/tnB/eRb7/pr8sWouuzoDZQoc3PaZv71vg6Fa', NULL, NULL, 1, NULL, NULL, 0, 'T1', 7, '2022-07-04 00:08:35', '2022-07-11 03:02:15', '2022-07-11 03:02:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_name_unique` (`name`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_user_id_foreign` (`user_id`),
  ADD KEY `files_post_id_foreign` (`post_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_name_unique` (`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `object_language`
--
ALTER TABLE `object_language`
  ADD PRIMARY KEY (`object_id`,`language_id`),
  ADD KEY `object_language_language_id_foreign` (`language_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_company_id_foreign` (`company_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_company_id_foreign` (`company_id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `files_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `object_language`
--
ALTER TABLE `object_language`
  ADD CONSTRAINT `object_language_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
