-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 04, 2023 lúc 12:33 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `xproject`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `employees`
--

INSERT INTO `employees` (`id`, `name`, `address`, `salary`) VALUES
(4, 'Iodine Bush', '590 Fallview Trail', 8155),
(6, 'Potassium Chloride', '7533 Hintze Way', 8090),
(7, 'Cuprum aceticum Zincum valerianicum', '111 Barby Alley', 8627),
(8, 'Lexapro', '924 Eagan Drive', 9555),
(9, 'Petroleum Skin Protectant', '9992 Erie Junction', 4293),
(10, 'Anastrozole', '71 Anniversary Trail', 9572),
(12, 'Meclizine Hydrochloride', '83271 Killdeer Parkway', 9133),
(14, 'Atelvia', '1 Corben Avenue', 8935),
(15, 'Donepezil Hydrochloride', '2355 Myrtle Court', 9097),
(17, 'Headache Spasms', '46985 Jenifer Park', 7758),
(18, 'No7 Lift and Luminate Foundation Sunscreen Broad Spectrum SPF 15 Hazelnut', '4790 Steensland Drive', 9681),
(19, 'Beauty Hydrating', '7708 Everett Hill', 3788),
(20, 'TENORETIC', '355 Sugar Drive', 9266),
(21, 'Ropinirole Hydrochloride', '60 Center Hill', 6875),
(22, 'Diarrhea', '9 Luster Park', 8957),
(23, 'EROS EXPLORER', '26 Carioca Street', 1642),
(25, 'Attention Plus', '2307 Marcy Alley', 7828),
(26, 'PCMX with Emollient', '25667 Cottonwood Street', 6526),
(28, 'Synthroid', '7650 Victoria Alley', 7171),
(30, 'Acetaminophen and Codeine', '011 Maple Center', 4061),
(31, 'Natural Vegetable Laxative with Stool Softener', '221 Packers Alley', 5954),
(32, 'Phentermine hydrochloride', '5622 Lakeland Drive', 7649),
(33, 'Hydrocortisone', '39 Sauthoff Drive', 9407),
(34, 'Icy Hot Back and Large Areas', '870 Birchwood Hill', 7523),
(35, 'PERTZYE', '322 Golf Course Parkway', 9571),
(38, 'Advanced Hand Sanitizer', '15 Homewood Pass', 4226),
(39, 'PAROXETINE', '5 Fisk Court', 1037),
(40, 'Protamine Sulfate', '03468 Killdeer Way', 6155),
(41, 'Colon Complex', '38 Ruskin Road', 4872),
(43, 'ropinirole hydrochloride', '14975 Bartillon Terrace', 9119),
(44, 'good sense cough and sore throat', '26 Crescent Oaks Court', 1016),
(46, 'LISINOPRIL AND HYDROCHLOROTHIAZIDE', '66725 Caliangt Court', 4595),
(48, 'Butalbital, Aspirin, and Caffeine', '1 Lakewood Gardens Plaza', 8349),
(49, 'Lidocaine Hydrochloride', '12 Maple Wood Way', 1686),
(50, 'Gabapentin', '2617 Erie Hill', 5670),
(51, 'Shopko Anti-Wrinkle and Firming Moisturizer Day Broad Spectrum SPF18', '49136 Talmadge Trail', 3200),
(52, 'Diltiazem Hydrochloride', '4719 Barby Alley', 7986),
(53, 'Tartar control plus', '07 Schiller Avenue', 1972),
(54, 'Terconazole', '71 Di Loreto Drive', 3845),
(55, 'good neighbor pharmacy nicotine', '402 Cascade Trail', 2819),
(56, 'Cold and Infection Defense', '95 Di Loreto Parkway', 5596),
(57, 'Cerebral Palsy', '29 Coleman Point', 6901),
(58, 'Metformin Hydrochloride', '0 Nelson Plaza', 6621),
(59, 'SHISEIDO ADVANCED HYDRO-LIQUID COMPACT (REFILL)', '88 Glendale Alley', 8760),
(60, 'Pecan Pollen', '2293 Loeprich Place', 4216),
(61, 'COUMADIN', '88483 International Terrace', 3999),
(62, 'Restless Mind', '3 Meadow Ridge Center', 8411),
(63, 'DayTime Sinus Relief', '9 Warrior Drive', 1775),
(64, 'Childrens Loratadine', '9569 Basil Street', 2579),
(65, 'Famotidine', '9158 Redwing Hill', 9818),
(66, 'GUNA-GCSF', '641 Northwestern Drive', 1829),
(67, 'Burkhart', '31 Acker Street', 6458),
(68, 'OCEAN BREEZE 2 IN 1 DANDRUFF', '55417 Thackeray Street', 9177),
(69, 'Mole Remover', '83 Pearson Court', 3809),
(70, 'bisoprolol fumarate', '5895 Eastwood Terrace', 3700),
(71, 'Alka-Seltzer Plus', '840 1st Drive', 5251),
(72, 'Warfarin Sodium', '65 Harbort Center', 4119),
(73, 'SODIUM CHLORIDE', '5599 Elmside Park', 4543),
(74, 'Gynetox', '31 Crowley Circle', 4096),
(75, 'Marplan', '3 Kinsman Drive', 1933),
(76, 'Clear Sinus and Ear', '40 Colorado Crossing', 5696),
(77, 'WAL-DRYL ALLERGY', '05 Del Mar Way', 3330),
(78, 'CardioGen-82', '5 Waywood Crossing', 6395),
(79, 'Vytone', '80 Melrose Crossing', 5544),
(80, 'ED A-HIST', '2844 Dapin Crossing', 1478),
(81, 'SILICEA', '3953 Mandrake Terrace', 4771),
(82, 'MENEST', '44 Rusk Place', 5058),
(83, 'Omeprazole', '347 1st Place', 1701),
(84, 'Equate Nasal', '38668 International Alley', 1355),
(85, 'GUNA-DIZZY', '51 Mayer Circle', 6428),
(86, 'PCXX ONE MINTE GEL BANANA BERRY', '91255 Morrow Center', 1310),
(87, 'Losartan Potassium', '54790 Quincy Court', 9970),
(88, 'Amturnide', '63923 David Lane', 1916),
(89, 'Lamotrigine', '187 Warbler Terrace', 8059),
(90, 'Ampicillin', '7013 Jana Circle', 3131),
(91, 'CVS Advanced Healing', '184 Maple Point', 4874),
(92, 'LISINOPRIL', '17 Granby Parkway', 4803),
(93, 'Sodium Chloride', '14 Glacier Hill Alley', 3563),
(94, 'Benicar', '09 Red Cloud Circle', 4881),
(95, 'Bite Beauty SPF 15 Sheer Balm', '53864 Fordem Lane', 9338),
(96, 'Methimazole', '0 Riverside Lane', 1255),
(97, 'Treatment Set TS330927', '87225 Towne Parkway', 7524),
(98, 'Kinesys', '039 Oneill Alley', 9364);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
