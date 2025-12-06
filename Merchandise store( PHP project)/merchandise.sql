-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2025 at 04:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `merchandise`
--

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `order_id` int(11) NOT NULL,
  `product_id` char(4) NOT NULL,
  `price` decimal(4,2) NOT NULL,
  `unit` int(11) NOT NULL,
  `subtotal` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`order_id`, `product_id`, `price`, `unit`, `subtotal`) VALUES
(1, 'P002', 14.99, 5, 74.95),
(2, 'P007', 60.00, 4, 240.00),
(3, 'P008', 60.00, 4, 240.00),
(4, 'P002', 14.88, 6, 89.28),
(5, 'P002', 14.88, 1, 14.88),
(6, 'P002', 14.88, 4, 59.52),
(7, 'P002', 14.88, 2, 29.76),
(8, 'P002', 14.88, 6, 89.28),
(9, 'P002', 12.00, 6, 72.00),
(9, 'P003', 10.00, 3, 30.00),
(9, 'P004', 15.00, 9, 135.00),
(10, 'P002', 12.00, 3, 36.00),
(11, 'P016', 15.00, 3, 45.00),
(12, 'P003', 10.00, 6, 60.00),
(13, 'P002', 12.00, 7, 84.00),
(14, 'P002', 12.00, 3, 36.00),
(15, 'P002', 12.05, 3, 36.15),
(16, 'P002', 12.05, 1, 12.05),
(17, 'P002', 12.00, 6, 72.00),
(18, 'P002', 12.00, 5, 60.00),
(19, 'P002', 12.00, 5, 60.00),
(21, 'P003', 10.00, 7, 70.00),
(22, 'P002', 12.00, 6, 72.00),
(22, 'P028', 90.00, 5, 450.00);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `count` int(11) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `datetime`, `count`, `total`, `payment_method`, `user_id`) VALUES
(1, '2025-04-25 11:21:29', 5, 74.95, '', 2),
(2, '2025-04-26 22:50:41', 4, 240.00, '', 2),
(3, '2025-04-26 22:54:50', 4, 240.00, '', 2),
(4, '2025-04-27 11:30:32', 6, 89.28, '', 2),
(5, '2025-04-27 11:44:18', 1, 14.88, '', 2),
(6, '2025-04-27 16:25:34', 4, 59.52, '', 2),
(7, '2025-04-27 16:27:08', 2, 29.76, '', 2),
(8, '2025-04-27 17:14:07', 6, 89.28, '', 2),
(9, '2025-04-28 18:38:24', 18, 237.00, '', 2),
(10, '2025-04-28 19:25:07', 3, 36.00, 'touch_n_go', 2),
(11, '2025-04-28 19:28:50', 3, 45.00, '', 2),
(12, '2025-04-29 10:16:11', 6, 60.00, 'touch_n_go', 2),
(13, '2025-04-29 10:25:43', 7, 84.00, 'touch_n_go', 2),
(14, '2025-04-29 17:02:16', 3, 36.00, 'touch_n_go', 2),
(15, '2025-04-29 17:23:52', 3, 36.15, 'touch_n_go', 2),
(16, '2025-04-29 17:24:23', 1, 12.05, 'touch_n_go', 2),
(17, '2025-04-29 17:50:32', 6, 72.00, 'touch_n_go', 2),
(18, '2025-04-29 18:16:47', 5, 60.00, 'touch_n_go', 2),
(19, '2025-04-29 18:45:28', 5, 60.00, 'touch_n_go', 2),
(21, '2025-04-29 21:27:26', 7, 70.00, 'touch_n_go', 2),
(22, '2025-04-29 22:04:38', 11, 522.00, 'touch_n_go', 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` char(4) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(4,2) NOT NULL,
  `category` varchar(10) NOT NULL,
  `quantity` int(99) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `category`, `quantity`, `photo`) VALUES
('P002', 'Sylus birthday photo cards', 12.00, 'LND', 80, '6809178993de0.jpg'),
('P003', '(Lnd）Sylus birthday photos', 10.00, 'LND', 5, '680917b6f0e6a.jpg'),
('P004', '(Lnd) Sylus birthday badge', 15.00, 'LND', 0, '680917e72b5cd.jpg'),
('P005', '(Lnd) Sylus birthday mini plush', 35.00, 'LND', 0, '6809182e745de.jpg'),
('P006', '(Lnd) Sylus birthday chibi badge', 15.00, 'LND', 0, '6809186d2247d.jpg'),
('P007', '(HSR) Danheng plush doll', 60.00, 'HSR', 5, '68091af136632.jpg'),
('P008', '(HSR) March7 plush doll', 60.00, 'HSR', 5, '68091b3bd88cf.jpg'),
('P009', '(HSR) Aventurine plush doll', 60.00, 'HSR', 5, '68091b6fe25d0.jpg'),
('P010', '(HSR) Dr.Ratio plush doll', 60.00, 'HSR', 5, '68091c8c9edc0.jpg'),
('P011', '(HSR) Acheron plush doll', 60.00, 'HSR', 5, '68091cd94eb4b.jpg'),
('P012', '(HSR) Blade plush doll', 60.00, 'HSR', 5, '68091d0a83fef.jpg'),
('P013', '(HSR) Kafka plush doll', 60.00, 'HSR', 10, '68091d2cca71d.jpg'),
('P014', '(HSR) Jingliu plush doll', 60.00, 'HSR', 6, '68091e20b862b.jpg'),
('P015', '(HSR) Jingyuan plush doll', 60.00, 'HSR', 21, '68091e4b300f6.jpg'),
('P016', 'Rafayel birthday Badge A', 15.00, 'LND', 76, '680e3212350ea.jpg'),
('P017', 'Rafayel birthday plush', 35.00, 'LND', 61, '680e32b748c45.jpg'),
('P018', 'Rafayel birthday cards', 12.00, 'LND', 41, '680e389537104.jpg'),
('P019', 'Rafayel birthday Badge B', 15.00, 'LND', 32, '680e38f158458.jpg'),
('P020', 'Xavier chibi badge', 15.00, 'LND', 32, '680e3e4887c9b.jpg'),
('P021', 'Xavier lumiere acrylic liquid sand stand', 40.00, 'LND', 23, '680e3ed888172.jpg'),
('P022', 'Xavier lumiere photo cards', 15.00, 'LND', 41, '680e40465b72e.jpg'),
('P023', 'Xavier lumiere Rectangle Badge A', 15.00, 'LND', 21, '680e40bad053b.jpg'),
('P024', 'Xavier lumiere Rectangle Badge B', 15.00, 'LND', 38, '680e40e0ba11f.jpg'),
('P025', 'Xavier lumiere Badge A', 15.00, 'LND', 24, '680e41ebe30be.jpg'),
('P026', 'Xavier lumiere Badge B', 15.00, 'LND', 21, '680e42207cd68.jpg'),
('P027', 'Xie Lian plush doll', 80.00, 'HOB', 76, '680e46ef644db.jpg'),
('P028', 'Xie Lian plush doll special edition', 90.00, 'HOB', 67, '680e4753706eb.jpg'),
('P029', 'Hua Cheng plush doll', 80.00, 'HOB', 65, '680e47eaddd6f.jpg'),
('P030', 'Theme song OP:Where our blue is Edition A', 65.00, 'JJK', 43, '680e57c49ee80.jpg'),
('P031', 'Theme song OP:Where our blue is Edition B', 65.00, 'JJK', 57, '680e57fd6bc5f.jpg'),
('P032', 'Incident OP: SPECIALZ by King Gnu [Regular Edition]', 36.50, 'JJK', 65, '680e58813cc3c.jpg'),
('P033', 'DVD) ZINGAI by Eve [Regular Edition]', 45.00, 'JJK', 53, '680e591aadca6.jpg'),
('P034', 'Shibuya Incident Arc TV Series ED: more than words by Hitsujibungaku', 51.00, 'JJK', 43, '680e59c655223.jpg'),
('P035', 'Chibi Hologram Tin Badges Resting ver.', 73.00, 'JJK', 61, '680e5a715795c.jpg'),
('P036', 'Chibi Hologram Tin Badges Riding ver.', 73.00, 'JJK', 64, '680e5b960f140.jpg'),
('P037', 'Rotating Acrylic Diorama Cycling', 70.00, 'JJK', 54, '680e5c0e4188d.jpg'),
('P038', 'Rotating Acrylic Diorama Cycling (Hidden Inventory / Premature Death)', 70.00, 'JJK', 54, '680e5c7875ba7.jpg'),
('P039', 'Premature Death /Shibuya Incident Original Soundtrack', 80.00, 'JJK', 41, '680e5ce6aa5eb.jpg'),
('P040', 'Zenitsu Agatsuma action figure', 55.00, 'DMS', 55, '680e5e490c21a.jpg'),
('P041', 'Inosuke Hashibira action figure', 55.00, 'DMS', 62, '680e5ec5515f5.jpg'),
('P042', 'TV Series MUGEN TRAIN ARC Vol. 2  DVD', 70.00, 'DMS', 76, '680e5f375fef1.jpg'),
('P043', 'Art Collection Vol.1', 42.50, 'DMS', 34, '680e5fd389d36.jpg'),
('P044', 'Art Collection Vol.2', 42.50, 'DMS', 29, '680e601ed091e.jpg'),
('P045', 'TV Series Vol. 10 DVD', 65.00, 'DMS', 56, '680e609e36ba7.jpg'),
('P046', 'TV Series Vol. 9 [Complete Production Run Limited Edition]', 65.00, 'DMS', 65, '680e61055fdbb.jpg'),
('P047', 'TV Series Vol. 8 [Complete Production Run Limited Edition]', 65.00, 'DMS', 41, '680e61c388129.jpg'),
('P048', 'Danheng Lunae figure', 92.00, 'HSR', 45, '680e66360957d.jpg'),
('P049', 'Kafka figure', 98.00, 'HSR', 32, '680e667209f62.jpg'),
('P050', 'Herta kuru kuru figure', 90.00, 'HSR', 51, '680e66b268d22.jpg'),
('P051', 'Sparkle Huggy Good Smile Plush', 54.60, 'HSR', 23, '680e67091e876.jpg'),
('P052', 'Tribbie Huggy Good Smile Plush', 54.60, 'HSR', 31, '680e67729ad25.jpg'),
('P053', 'Pom-Pom Huggy Good Smile Plush', 54.60, 'HSR', 23, '680e67c243128.jpg'),
('P054', 'Lordly Trashcan mugs', 72.50, 'HSR', 39, '680e688a45d87.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `RatingId` int(11) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Comment` longtext NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`RatingId`, `Rating`, `Comment`, `id`) VALUES
(7, 5, 'vgjjkk', 2),
(8, 1, 'gghjgjhu', 2),
(9, 5, 'i love hsr stuff', 2);

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id` varchar(100) NOT NULL,
  `expire` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`id`, `expire`, `user_id`) VALUES
('5182a2b437a26d2fa9dec4194d801ed6d949cc94', '2025-04-29 21:58:37', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone_number` varchar(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `photo` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `name`, `phone_number`, `address`, `photo`, `role`) VALUES
(1, 'bppp06@gmail.com', '933f868ccf7ece7601793d3887f5522fbb341418', 'bppp', '01234567891', '10,tanman bunga,selangor,Kuala Lumpur', '6810c070a0a05.jpg', 'Admin'),
(2, 'Phoebelimwy1020@gmail.com', '70352f41061eda4ff3c322094af068ba70c3b38b', 'phoebe', '0123456789', '10,tanman bunga,selangor,Kuala Lumpur', '680a10b0803ef.jpg', 'Member'),
(12, 'sukisukidaisuki1314@gmail.com', 'a642a77abd7d4f51bf9226ceaf891fcbb5b299b8', 'melodiddy', '21312312312', 'taman bunga', '6810398042472.jpg', 'Admin'),
(13, 'chinxh0715@gmail.com', '7b21848ac9af35be0ddb2d6b9fc3851934db8420', 'silverash520', NULL, NULL, '680cefb088bbe.jpg', 'Admin'),
(18, 'phoebelimwy@gmail.com', 'a642a77abd7d4f51bf9226ceaf891fcbb5b299b8', 'phoebex', NULL, NULL, '6810c042ae5a3.jpg', 'Member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`RatingId`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `RatingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `item_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user` (`id`);

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `token_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
