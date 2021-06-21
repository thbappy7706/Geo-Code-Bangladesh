-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2021 at 12:46 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `geocode`
--

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `division_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` double(11,8) DEFAULT NULL,
  `lng` double(11,8) DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `lat`, `lng`, `website`) VALUES
(1, 3, 'Dhaka', 'ঢাকা', 23.71152530, 90.41114510, 'www.dhaka.gov.bd'),
(2, 3, 'Faridpur', 'ফরিদপুর', 23.60708220, 89.84294060, 'www.faridpur.gov.bd'),
(3, 3, 'Gazipur', 'গাজীপুর', 24.00228580, 90.42642830, 'www.gazipur.gov.bd'),
(4, 3, 'Gopalganj', 'গোপালগঞ্জ', 23.00508570, 89.82660590, 'www.gopalganj.gov.bd'),
(5, 8, 'Jamalpur', 'জামালপুর', 24.93753300, 89.93777500, 'www.jamalpur.gov.bd'),
(6, 3, 'Kishoreganj', 'কিশোরগঞ্জ', 24.44493700, 90.77657500, 'www.kishoreganj.gov.bd'),
(7, 3, 'Madaripur', 'মাদারীপুর', 23.16410200, 90.18968050, 'www.madaripur.gov.bd'),
(8, 3, 'Manikganj', 'মানিকগঞ্জ', 23.86165100, 90.00032300, 'www.manikganj.gov.bd'),
(9, 3, 'Munshiganj', 'মুন্সিগঞ্জ', 23.49809300, 90.41266200, 'www.munshiganj.gov.bd'),
(10, 8, 'Mymensingh', 'ময়মনসিংহ', 24.74714900, 90.42027300, 'www.mymensingh.gov.bd'),
(11, 3, 'Narayanganj', 'নারায়াণগঞ্জ', 23.63366000, 90.49648200, 'www.narayanganj.gov.bd'),
(12, 3, 'Narsingdi', 'নরসিংদী', 23.93223300, 90.71541000, 'www.narsingdi.gov.bd'),
(13, 8, 'Netrokona', 'নেত্রকোণা', 24.87095500, 90.72788700, 'www.netrokona.gov.bd'),
(14, 3, 'Rajbari', 'রাজবাড়ি', 23.75743050, 89.64446650, 'www.rajbari.gov.bd'),
(15, 3, 'Shariatpur', 'শরীয়তপুর', 23.21970300, 90.35012600, 'www.shariatpur.gov.bd'),
(16, 8, 'Sherpur', 'শেরপুর', 25.02049330, 90.01529660, 'www.sherpur.gov.bd'),
(17, 3, 'Tangail', 'টাঙ্গাইল', 24.25134500, 89.91671000, 'www.tangail.gov.bd'),
(18, 5, 'Bogura', 'বগুড়া', 24.84652280, 89.37775500, 'www.bogra.gov.bd'),
(19, 5, 'Joypurhat', 'জয়পুরহাট', 25.09473500, 89.09449400, 'www.joypurhat.gov.bd'),
(20, 5, 'Naogaon', 'নওগাঁ', 24.91316000, 88.75309500, 'www.naogaon.gov.bd'),
(21, 5, 'Natore', 'নাটোর', 24.42055600, 89.00028200, 'www.natore.gov.bd'),
(22, 5, 'Nawabganj', 'নবাবগঞ্জ', 24.59650340, 88.27751220, 'www.chapainawabganj.gov.bd'),
(23, 5, 'Pabna', 'পাবনা', 23.99852400, 89.23364500, 'www.pabna.gov.bd'),
(24, 5, 'Rajshahi', 'রাজশাহী', 24.36358900, 88.62413500, 'www.rajshahi.gov.bd'),
(25, 5, 'Sirajgonj', 'সিরাজগঞ্জ', 24.45339780, 89.70068150, 'www.sirajganj.gov.bd'),
(26, 6, 'Dinajpur', 'দিনাজপুর', 25.62170610, 88.63545040, 'www.dinajpur.gov.bd'),
(27, 6, 'Gaibandha', 'গাইবান্ধা', 25.32875100, 89.52808800, 'www.gaibandha.gov.bd'),
(28, 6, 'Kurigram', 'কুড়িগ্রাম', 25.80544500, 89.63617400, 'www.kurigram.gov.bd'),
(29, 6, 'Lalmonirhat', 'লালমনিরহাট', 25.99234000, 89.28472500, 'www.lalmonirhat.gov.bd'),
(30, 6, 'Nilphamari', 'নীলফামারী', 25.93179400, 88.85600600, 'www.nilphamari.gov.bd'),
(31, 6, 'Panchagarh', 'পঞ্চগড়', 26.34110000, 88.55416060, 'www.panchagarh.gov.bd'),
(32, 6, 'Rangpur', 'রংপুর', 25.75580960, 89.24446200, 'www.rangpur.gov.bd'),
(33, 6, 'Thakurgaon', 'ঠাকুরগাঁও', 26.03369450, 88.46168340, 'www.thakurgaon.gov.bd'),
(34, 1, 'Barguna', 'বরগুনা', 22.09529100, 90.11207000, 'www.barguna.gov.bd'),
(35, 1, 'Barishal', 'বরিশাল', 22.70100200, 90.35345100, 'www.barisal.gov.bd'),
(36, 1, 'Bhola', 'ভোলা', 22.68592300, 90.64817900, 'www.bhola.gov.bd'),
(37, 1, 'Jhalokati', 'ঝালকাঠি', 22.17853100, 90.71010200, 'www.jhalakathi.gov.bd'),
(38, 1, 'Patuakhali', 'পটুয়াখালী', 22.35963160, 90.32987120, 'www.patuakhali.gov.bd'),
(39, 1, 'Pirojpur', 'পিরোজপুর', 22.57907400, 89.97592600, 'www.pirojpur.gov.bd'),
(40, 2, 'Bandarban', 'বান্দরবান', 22.19532750, 92.21837730, 'www.bandarban.gov.bd'),
(41, 2, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 23.95709040, 91.11192860, 'www.brahmanbaria.gov.bd'),
(42, 2, 'Chandpur', 'চাঁদপুর', 23.23325850, 90.67129120, 'www.chandpur.gov.bd'),
(43, 2, 'Chittagong', 'চট্টগ্রাম', 22.33510900, 91.83407300, 'www.chittagong.gov.bd'),
(44, 2, 'Cumilla', 'কুমিল্লা', 23.46827470, 91.17881350, 'www.comilla.gov.bd'),
(45, 2, 'Cox\'s Bazar', 'কক্স বাজার', 21.42722800, 92.00580700, 'www.coxsbazar.gov.bd'),
(46, 2, 'Feni', 'ফেনী', 23.02323100, 91.38408440, 'www.feni.gov.bd'),
(47, 2, 'Khagrachari', 'খাগড়াছড়ি', 23.11928500, 91.98466300, 'www.khagrachhari.gov.bd'),
(48, 2, 'Lakshmipur', 'লক্ষ্মীপুর', 22.94247700, 90.84118400, 'www.lakshmipur.gov.bd'),
(49, 2, 'Noakhali', 'নোয়াখালী', 22.86956300, 91.09939800, 'www.noakhali.gov.bd'),
(50, 2, 'Rangamati', 'রাঙ্গামাটি', 22.73241700, 92.29851300, 'www.rangamati.gov.bd'),
(51, 7, 'Habiganj', 'হবিগঞ্জ', 24.37494500, 91.41553000, 'www.habiganj.gov.bd'),
(52, 7, 'Maulvibazar', 'মৌলভীবাজার', 24.48293400, 91.77741700, 'www.moulvibazar.gov.bd'),
(53, 7, 'Sunamganj', 'সুনামগঞ্জ', 25.06580420, 91.39501150, 'www.sunamganj.gov.bd'),
(54, 7, 'Sylhet', 'সিলেট', 24.88979560, 91.86978940, 'www.sylhet.gov.bd'),
(55, 4, 'Bagerhat', 'বাগেরহাট', 22.65156800, 89.78593800, 'www.bagerhat.gov.bd'),
(56, 4, 'Chuadanga', 'চুয়াডাঙ্গা', 23.64019610, 88.84184100, 'www.chuadanga.gov.bd'),
(57, 4, 'Jashore', 'যশোর', 23.16643000, 89.20811260, 'www.jessore.gov.bd'),
(58, 4, 'Jhenaidah', 'ঝিনাইদহ', 23.54481760, 89.15392130, 'www.jhenaidah.gov.bd'),
(59, 4, 'Khulna', 'খুলনা', 22.81577400, 89.56867900, 'www.khulna.gov.bd'),
(60, 4, 'Kushtia', 'কুষ্টিয়া', 23.90125800, 89.12048200, 'www.kushtia.gov.bd'),
(61, 4, 'Magura', 'মাগুরা', 23.48733700, 89.41995600, 'www.magura.gov.bd'),
(62, 4, 'Meherpur', 'মেহেরপুর', 23.76221300, 88.63182100, 'www.meherpur.gov.bd'),
(63, 4, 'Narail', 'নড়াইল', 23.17253400, 89.51267200, 'www.narail.gov.bd'),
(64, 4, 'Satkhira', 'সাতক্ষীরা', 22.31548100, 89.11145300, 'www.satkhira.gov.bd'),
(65, 3, 'Dhaka Metro', 'ঢাকা মেট্রো', 23.71152530, 90.41114510, 'http://dmp.gov.bd/'),
(66, 6, 'Rangpur Metro', 'রংপুর মেট্রো', 25.75580960, 89.24446200, 'https://rpmp.gov.bd/'),
(67, 5, 'Rajshahi Metro', 'রাজশাহী মেট্রো', 24.36358900, 88.62413500, 'https://rpmp.gov.bd/'),
(68, 7, 'Sylhet Metro', 'সিলেট মেট্রো', 24.88979560, 91.86978940, 'https://smp.police.gov.bd/'),
(69, 4, 'Khulna Metro', 'খুলনা মেট্রো', 22.81577400, 89.56867900, 'https://kmp.police.gov.bd/'),
(70, 2, 'Chittagong Metro', 'চট্টগ্রাম মেট্রো', 22.33510900, 91.83407300, 'http://cmp.gov.bd/'),
(71, 1, 'Barisal Metro', 'বরিশাল মেট্রো', 22.70100200, 90.35345100, 'http://bmp.police.gov.bd/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_division_id_foreign` (`division_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
