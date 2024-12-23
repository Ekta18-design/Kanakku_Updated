-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2024 at 05:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dreams_kanakku`
--

-- --------------------------------------------------------

--
-- Table structure for table `banksettings`
--

CREATE TABLE `banksettings` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companysettings`
--

CREATE TABLE `companysettings` (
  `id` int(11) NOT NULL,
  `companyName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `addressLine1` varchar(255) NOT NULL,
  `addressLine2` varchar(255) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `siteLogo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `companyLogo` varchar(255) DEFAULT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `credit_notes`
--

CREATE TABLE `credit_notes` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `_id` varbinary(12) DEFAULT NULL,
  `country_currency_short_code` longtext DEFAULT NULL,
  `currency_short_code` longtext DEFAULT NULL,
  `country_currency_name` longtext DEFAULT NULL,
  `country_name` longtext DEFAULT NULL,
  `currency_symbol` longtext DEFAULT NULL,
  `active` longtext DEFAULT NULL,
  `__v` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `_id`, `country_currency_short_code`, `currency_short_code`, `country_currency_name`, `country_name`, `currency_symbol`, `active`, `__v`) VALUES
(0, 0x674e184a6e7b5037b2858e17, 'AFN', '971', 'Afghani', 'Afghanistan', '؋', '1', 0),
(1, 0x674e184a6e7b5037b2858e18, 'ALL', '8', 'Albanian lek', 'Albania', 'L', '1', 0),
(2, 0x674e184a6e7b5037b2858e19, 'AED', '784', 'United Arab Emirates dirham', 'United Arab Emirates (The)', 'د.إ', '1', 0),
(3, 0x674e184a6e7b5037b2858e1a, 'AMD', '51', 'Armenian dram', 'Armenia', 'դր.', '1', 0),
(4, 0x674e184a6e7b5037b2858e1b, 'ANG', '532', 'Netherlands Antillean guilder', 'Netherlands (The)', 'ƒ', '1', 0),
(5, 0x674e184a6e7b5037b2858e1c, 'AOA', '973', 'Angolan kwanza', 'Angola', 'Kz', '1', 0),
(6, 0x674e184a6e7b5037b2858e1d, 'ARS', '32', 'Argentine peso', 'Argentina', '$', '1', 0),
(7, 0x674e184a6e7b5037b2858e1e, 'AUD', '36', 'Australian dollar', 'Australia', '$', '1', 0),
(8, 0x674e184a6e7b5037b2858e1f, 'AWG', '533', 'Aruban florin', 'Aruba', 'ƒ', '1', 0),
(9, 0x674e184a6e7b5037b2858e20, 'AZN', '944', 'Azerbaijani manat', 'Azerbaijan', 'm', '1', 0),
(10, 0x674e184a6e7b5037b2858e21, 'BAM', '977', 'Bosnia and Herzegovina convertible mark', 'Bosnia And Herzegovina', 'КМ', '1', 0),
(11, 0x674e184a6e7b5037b2858e22, 'BBD', '52', 'Barbados dollar', 'Barbados', '$', '1', 0),
(12, 0x674e184a6e7b5037b2858e23, 'BDT', '50', 'Bangladeshi taka', 'Bangladesh', '৳', '1', 0),
(13, 0x674e184a6e7b5037b2858e24, 'BGN', '975', 'Bulgarian lev', 'Bulgaria', 'лв', '1', 0),
(14, 0x674e184a6e7b5037b2858e25, 'BHD', '48', 'Bahraini dinar', 'Bahrain', '.د.ب', '1', 0),
(15, 0x674e184a6e7b5037b2858e26, 'BIF', '108', 'Burundian franc', 'Burundi', 'Fr', '1', 0),
(16, 0x674e184a6e7b5037b2858e27, 'BMD', '60', 'Bermudian dollar', 'Bermuda', '$', '1', 0),
(17, 0x674e184a6e7b5037b2858e28, 'BND', '96', 'Brunei dollar', 'Brunei Darussalam', '$', '1', 0),
(18, 0x674e184a6e7b5037b2858e29, 'BSD', '44', 'Bahamian dollar', 'Bahamas (The)', '$', '1', 0),
(19, 0x674e184a6e7b5037b2858e2a, 'BTN', '64', 'Bhutanese ngultrum', 'Bhutan', 'Nu.', '1', 0),
(20, 0x674e184a6e7b5037b2858e2b, 'BOB', '68', 'Boliviano', 'Bolivia (Plurinational State Of)', 'Bs.', '1', 0),
(21, 0x674e184a6e7b5037b2858e2c, 'BRL', '986', 'Brazilian real', 'Brazil', 'R$', '1', 0),
(22, 0x674e184a6e7b5037b2858e2d, 'BWP', '72', 'Botswana pula', 'Botswana', 'P', '1', 0),
(23, 0x674e184a6e7b5037b2858e2e, 'BZD', '84', 'Belize dollar', 'Belize', '$', '1', 0),
(24, 0x674e184a6e7b5037b2858e2f, 'CAD', '124', 'Canadian dollar', 'Canada', '$', '1', 0),
(25, 0x674e184a6e7b5037b2858e30, 'CDF', '976', 'Congolese franc', 'Congo (The)', 'Fr', '1', 0),
(26, 0x674e184a6e7b5037b2858e31, 'CHF', '756', 'Swiss franc', 'Sweden', 'Fr', '1', 0),
(27, 0x674e184a6e7b5037b2858e32, 'CLP', '152', 'Chilean peso', 'Chile', '$', '1', 0),
(28, 0x674e184a6e7b5037b2858e33, 'CNY', '156', 'Chinese yuan[8]', 'China', '¥', '1', 0),
(29, 0x674e184a6e7b5037b2858e34, 'COP', '170', 'Colombian peso', 'Colombia', '$', '1', 0),
(30, 0x674e184a6e7b5037b2858e35, 'CRC', '188', 'Costa Rican colon', 'Costa Rica', '₡', '1', 0),
(31, 0x674e184a6e7b5037b2858e36, 'CUC', '931', 'Cuban convertible peso', 'Cuba', '$', '1', 0),
(32, 0x674e184a6e7b5037b2858e37, 'CUP', '192', 'Cuban peso', 'Cuba', '$', '1', 0),
(33, 0x674e184a6e7b5037b2858e38, 'CVE', '132', 'Cape Verdean escudo', 'Canada', 'Esc or $', '1', 0),
(34, 0x674e184a6e7b5037b2858e39, 'CZK', '203', 'Czech koruna', 'Côte D\'Ivoire', 'Kč', '1', 0),
(35, 0x674e184a6e7b5037b2858e3a, 'DJF', '262', 'Djiboutian franc', 'Djibouti', 'Fr', '1', 0),
(36, 0x674e184a6e7b5037b2858e3b, 'DKK', '208', 'Danish krone', 'Côte D\'Ivoire', 'kr', '1', 0),
(37, 0x674e184a6e7b5037b2858e3c, 'DOP', '214', 'Dominican peso', 'Dominica', '$', '1', 0),
(38, 0x674e184a6e7b5037b2858e3d, 'EGP', '818', 'Egyptian pound', 'Egypt', 'ج.م', '1', 0),
(39, 0x674e184a6e7b5037b2858e3e, 'DZD', '12', 'Algerian dinar', 'Algeria', 'د.ج', '1', 0),
(40, 0x674e184a6e7b5037b2858e3f, 'ERN', '232', 'Eritrean nakfa', 'Eritrea', 'Nfk', '1', 0),
(41, 0x674e184a6e7b5037b2858e40, 'ETB', '230', 'Ethiopian birr', 'Ethiopia', 'Br', '1', 0),
(42, 0x674e184a6e7b5037b2858e41, 'EUR', '978', 'Euro', 'Ethiopia', '€', '1', 0),
(43, 0x674e184a6e7b5037b2858e42, 'FJD', '242', 'Fiji dollar', 'Fiji', '$', '1', 0),
(44, 0x674e184a6e7b5037b2858e43, 'FKP', '238', 'Falkland Islands pound', 'Falkland Islands (The) [Malvinas]', '£', '1', 0),
(45, 0x674e184a6e7b5037b2858e44, 'GBP', '826', 'Pound sterling', 'Portugal', '£', '1', 0),
(46, 0x674e184a6e7b5037b2858e45, 'GHS', '936', 'Ghanaian cedi', 'Ghana', '₵', '1', 0),
(47, 0x674e184a6e7b5037b2858e46, 'GEL', '981', 'Georgian lari', 'Georgia', 'ლ', '1', 0),
(48, 0x674e184a6e7b5037b2858e47, 'GIP', '292', 'Gibraltar pound', 'Gibraltar', '£', '1', 0),
(49, 0x674e184a6e7b5037b2858e48, 'GMD', '270', 'Gambian dalasi', 'Gambia (The)', 'D', '1', 0),
(50, 0x674e184a6e7b5037b2858e49, 'GNF', '324', 'Guinean franc', 'Guinea-Bissau', 'Fr', '1', 0),
(51, 0x674e184a6e7b5037b2858e4a, 'GTQ', '320', 'Guatemalan quetzal', 'Guatemala', 'Q', '1', 0),
(52, 0x674e184a6e7b5037b2858e4b, 'GYD', '328', 'Guyanese dollar', 'Guyana', '$', '1', 0),
(53, 0x674e184a6e7b5037b2858e4c, 'HKD', '344', 'Hong Kong dollar', 'Hong Kong', '$', '1', 0),
(54, 0x674e184a6e7b5037b2858e4d, 'HNL', '340', 'Honduran lempira', 'Holy See (The)', 'L', '1', 0),
(55, 0x674e184a6e7b5037b2858e4e, 'HRK', '191', 'Croatian kuna', 'Croatia', 'kn', '1', 0),
(56, 0x674e184a6e7b5037b2858e4f, 'HUF', '348', 'Hungarian forint', 'Hong Kong', 'Ft', '1', 0),
(57, 0x674e184a6e7b5037b2858e50, 'HTG', '332', 'Haitian gourde', 'Haiti', 'G', '1', 0),
(58, 0x674e184a6e7b5037b2858e51, 'IDR', '360', 'Indonesian rupiah', 'Indonesia', 'Rp', '1', 0),
(59, 0x674e184a6e7b5037b2858e52, 'ILS', '376', 'Israeli new shekel', 'Israel', '₪', '1', 0),
(60, 0x674e184a6e7b5037b2858e53, 'INR', '356', 'Indian rupee', 'India', '₹', '1', 0),
(61, 0x674e184a6e7b5037b2858e54, 'IQD', '368', 'Iraqi dinar', 'Iraq', 'ع.د', '1', 0),
(62, 0x674e184a6e7b5037b2858e55, 'IRR', '364', 'Iranian rial', 'Iran (Islamic Republic Of)', '﷼', '1', 0),
(63, 0x674e184a6e7b5037b2858e56, 'ISK', '352', 'Icelandic króna', 'Iceland', 'kr', '1', 0),
(64, 0x674e184a6e7b5037b2858e57, 'JMD', '388', 'Jamaican dollar', 'Jamaica', '$', '1', 0),
(65, 0x674e184a6e7b5037b2858e58, 'JOD', '400', 'Jordanian dinar', 'Jordan', 'د.ا', '1', 0),
(66, 0x674e184a6e7b5037b2858e59, 'JPY', '392', 'Japanese yen', 'Japan', '¥', '1', 0),
(67, 0x674e184a6e7b5037b2858e5a, 'KHR', '116', 'Cambodian riel', 'Cambodia', '៛', '1', 0),
(68, 0x674e184a6e7b5037b2858e5b, 'KMF', '174', 'Comoro franc', 'Colombia', 'Fr', '1', 0),
(69, 0x674e184a6e7b5037b2858e5c, 'KES', '404', 'Kenyan shilling', 'Kenya', 'Sh', '1', 0),
(70, 0x674e184a6e7b5037b2858e5d, 'KGS', '417', 'Kyrgyzstani som', 'Kyrgyzstan', 'лв', '1', 0),
(71, 0x674e184a6e7b5037b2858e5e, 'KPW', '408', 'North Korean won', 'Norfolk Island', '₩', '1', 0),
(72, 0x674e184a6e7b5037b2858e5f, 'KRW', '410', 'South Korean won', 'South Georgia And The South Sandwich Islands', '₩', '1', 0),
(73, 0x674e184a6e7b5037b2858e60, 'KWD', '414', 'Kuwaiti dinar', 'Kuwait', 'د.ك', '1', 0),
(74, 0x674e184a6e7b5037b2858e61, 'KZT', '398', 'Kazakhstani tenge', 'Kazakhstan', '₸', '1', 0),
(75, 0x674e184a6e7b5037b2858e62, 'LKR', '144', 'Sri Lankan rupee', 'Sri Lanka', 'Rs', '1', 0),
(76, 0x674e184a6e7b5037b2858e63, 'LRD', '430', 'Liberian dollar', 'Liberia', '$', '1', 0),
(77, 0x674e184a6e7b5037b2858e64, 'LSL', '426', 'Lesotho loti', 'Lesotho', 'L', '1', 0),
(78, 0x674e184a6e7b5037b2858e65, 'LAK', '418', 'Lao kip', 'Kyrgyzstan', '₭', '1', 0),
(79, 0x674e184a6e7b5037b2858e66, 'LYD', '434', 'Libyan dinar', 'Libya', 'ل.د', '1', 0),
(80, 0x674e184a6e7b5037b2858e67, 'MAD', '504', 'Moroccan dirham', 'Montserrat', 'د.م.', '1', 0),
(81, 0x674e184a6e7b5037b2858e68, 'MDL', '498', 'Moldovan leu', 'Moldova (The Republic Of)', 'L', '1', 0),
(82, 0x674e184a6e7b5037b2858e69, 'KYD', '136', 'Cayman Islands dollar', 'Cayman Islands (The)', '$', '1', 0),
(83, 0x674e184a6e7b5037b2858e6a, 'MGA', '969', 'Malagasy ariary', 'Madagascar', 'Ar', '1', 0),
(84, 0x674e184a6e7b5037b2858e6b, 'LBP', '422', 'Lebanese pound', 'Latvia', 'ل.ل', '1', 0),
(85, 0x674e184a6e7b5037b2858e6c, 'MKD', '807', 'Macedonian denar', 'Macao', 'ден', '1', 0),
(86, 0x674e184a6e7b5037b2858e6d, 'MNT', '496', 'Mongolian tögrög', 'Mongolia', '₮', '1', 0),
(87, 0x674e184a6e7b5037b2858e6e, 'MMK', '104', 'Myanmar kyat', 'Myanmar', 'Ks', '1', 0),
(88, 0x674e184a6e7b5037b2858e6f, 'MWK', '454', 'Malawian kwacha', 'Malawi', 'MK', '1', 0),
(89, 0x674e184a6e7b5037b2858e70, 'MUR', '480', 'Mauritian rupee', 'Mauritania', '₨', '1', 0),
(90, 0x674e184a6e7b5037b2858e71, 'MOP', '446', 'Macanese pataca', 'Luxembourg', 'P', '1', 0),
(91, 0x674e184a6e7b5037b2858e72, 'MVR', '462', 'Maldivian rufiyaa', 'Maldives', '.ރ', '1', 0),
(92, 0x674e184a6e7b5037b2858e73, 'MYR', '458', 'Malaysian ringgit', 'Malaysia', 'RM', '1', 0),
(93, 0x674e184a6e7b5037b2858e74, 'MXN', '484', 'Mexican peso', 'Member Countries Of The African Development Bank Group', '$', '1', 0),
(94, 0x674e184a6e7b5037b2858e75, 'MZN', '943', 'Mozambican metical', 'Morocco', 'MT', '1', 0),
(95, 0x674e184a6e7b5037b2858e76, 'NAD', '516', 'Namibian dollar', 'Namibia', '$', '1', 0),
(96, 0x674e184a6e7b5037b2858e77, 'NPR', '524', 'Nepalese rupee', 'Nepal', '₨', '1', 0),
(97, 0x674e184a6e7b5037b2858e78, 'NZD', '554', 'New Zealand dollar', 'New Zealand', '$', '1', 0),
(98, 0x674e184a6e7b5037b2858e79, 'OMR', '512', 'Omani rial', 'Oman', 'ر.ع.', '1', 0),
(99, 0x674e184a6e7b5037b2858e7a, 'NIO', '558', 'Nicaraguan córdoba', 'Nicaragua', 'C$', '1', 0),
(100, 0x674e184a6e7b5037b2858e7b, 'PAB', '590', 'Panamanian balboa', 'Panama', 'B/.', '1', 0),
(101, 0x674e184a6e7b5037b2858e7c, 'PEN', '604', 'Peruvian sol', 'Peru', 'S/.', '1', 0),
(102, 0x674e184a6e7b5037b2858e7d, 'PGK', '598', 'Papua New Guinean kina', 'Papua New Guinea', 'K', '1', 0),
(103, 0x674e184a6e7b5037b2858e7e, 'NOK', '578', 'Norwegian krone', 'Norway', 'kr', '1', 0),
(104, 0x674e184a6e7b5037b2858e7f, 'NGN', '566', 'Nigerian naira', 'Nigeria', '₦', '1', 0),
(105, 0x674e184a6e7b5037b2858e80, 'PHP', '608', 'Philippine peso[12]', 'Peru', '₱', '1', 0),
(106, 0x674e184a6e7b5037b2858e81, 'PKR', '586', 'Pakistani rupee', 'Pakistan', '₨', '1', 0),
(107, 0x674e184a6e7b5037b2858e82, 'PLN', '985', 'Polish złoty', 'Poland', 'zł', '1', 0),
(108, 0x674e184a6e7b5037b2858e83, 'QAR', '634', 'Qatari riyal', 'Qatar', 'ر.ق', '1', 0),
(109, 0x674e184a6e7b5037b2858e84, 'RON', '946', 'Romanian leu', 'Romania', 'L', '1', 0),
(110, 0x674e184a6e7b5037b2858e85, 'RSD', '941', 'Serbian dinar', 'Serbia', 'дин.', '1', 0),
(111, 0x674e184a6e7b5037b2858e86, 'PYG', '600', 'Paraguayan guaraní', 'Paraguay', '₲', '1', 0),
(112, 0x674e184a6e7b5037b2858e87, 'RUB', '643', 'Russian ruble', 'Russian Federation (The)', 'руб.', '1', 0),
(113, 0x674e184a6e7b5037b2858e88, 'RWF', '646', 'Rwandan franc', 'Réunion', 'Fr', '1', 0),
(114, 0x674e184a6e7b5037b2858e89, 'SBD', '90', 'Solomon Islands dollar', 'Solomon Islands', '$', '1', 0),
(115, 0x674e184a6e7b5037b2858e8a, 'SAR', '682', 'Saudi riyal', 'Saudi Arabia', 'ر.س', '1', 0),
(116, 0x674e184a6e7b5037b2858e8b, 'SDG', '938', 'Sudanese pound', 'Sudan (The)', '£', '1', 0),
(117, 0x674e184a6e7b5037b2858e8c, 'SEK', '752', 'Swedish krona/kronor', 'Sweden', 'kr', '1', 0),
(118, 0x674e184a6e7b5037b2858e8d, 'SHP', '654', 'Saint Helena pound', 'Saint Barthélemy', '£', '1', 0),
(119, 0x674e184a6e7b5037b2858e8e, 'SLL', '694', 'Sierra Leonean leone', 'Sierra Leone', 'Le', '1', 0),
(120, 0x674e184a6e7b5037b2858e8f, 'SOS', '706', 'Somali shilling', 'Solomon Islands', 'Sh', '1', 0),
(121, 0x674e184a6e7b5037b2858e90, 'SCR', '690', 'Seychelles rupee', 'Seychelles', '₨', '1', 0),
(122, 0x674e184a6e7b5037b2858e91, 'SGD', '702', 'Singapore dollar', 'Singapore', '$', '1', 0),
(123, 0x674e184a6e7b5037b2858e92, 'SRD', '968', 'Surinamese dollar', 'Suriname', '$', '1', 0),
(124, 0x674e184a6e7b5037b2858e93, 'SSP', '728', 'South Sudanese pound', 'South Sudan', '£', '1', 0),
(125, 0x674e184a6e7b5037b2858e94, 'SYP', '760', 'Syrian pound', 'Syrian Arab Republic', 'ل.س', '1', 0),
(126, 0x674e184a6e7b5037b2858e95, 'SZL', '748', 'Swazi lilangeni', 'Svalbard And Jan Mayen', 'L', '1', 0),
(127, 0x674e184a6e7b5037b2858e96, 'THB', '764', 'Thai baht', 'Tanzania, United Republic Of', '฿', '1', 0),
(128, 0x674e184a6e7b5037b2858e97, 'TJS', '972', 'Tajikistani somoni', 'Tajikistan', 'ЅМ', '1', 0),
(129, 0x674e184a6e7b5037b2858e98, 'TMT', '934', 'Turkmenistan manat', 'Turkmenistan', 'm', '1', 0),
(130, 0x674e184a6e7b5037b2858e99, 'TOP', '776', 'Tongan paʻanga', 'Tonga', 'T$', '1', 0),
(131, 0x674e184a6e7b5037b2858e9a, 'TND', '788', 'Tunisian dinar', 'Tunisia', 'د.ت', '1', 0),
(132, 0x674e184a6e7b5037b2858e9b, 'TRY', '949', 'Turkish lira', 'Turkey', 'NULL', '1', 0),
(133, 0x674e184a6e7b5037b2858e9c, 'TTD', '780', 'Trinidad and Tobago dollar', 'Trinidad And Tobago', '$', '1', 0),
(134, 0x674e184a6e7b5037b2858e9d, 'TWD', '901', 'New Taiwan dollar', 'New Caledonia', '$', '1', 0),
(135, 0x674e184a6e7b5037b2858e9e, 'TZS', '834', 'Tanzanian shilling', 'Tanzania, United Republic Of', 'Sh', '1', 0),
(136, 0x674e184a6e7b5037b2858e9f, 'UAH', '980', 'Ukrainian hryvnia', 'Ukraine', '₴', '1', 0),
(137, 0x674e184a6e7b5037b2858ea0, 'UGX', '800', 'Ugandan shilling', 'Uganda', 'Sh', '1', 0),
(138, 0x674e184a6e7b5037b2858ea1, 'VND', '704', 'Vietnamese đồng', 'Viet Nam', '₫', '1', 0),
(139, 0x674e184a6e7b5037b2858ea2, 'USD', '840', 'United States dollar', 'United States', '$', '1', 0),
(140, 0x674e184a6e7b5037b2858ea3, 'WST', '882', 'Samoan tala', 'Samoa', 'T', '1', 0),
(141, 0x674e184a6e7b5037b2858ea4, 'UZS', '860', 'Uzbekistan som', 'Uzbekistan', 'лв', '1', 0),
(142, 0x674e184a6e7b5037b2858ea5, 'XAF', '950', 'CFA franc BEAC', 'Central African Republic (The)', 'Fr', '1', 0),
(143, 0x674e184a6e7b5037b2858ea6, 'UYU', '858', 'Uruguayan peso', 'Uruguay', '$', '1', 0),
(144, 0x674e184a6e7b5037b2858ea7, 'XCD', '951', 'East Caribbean dollar', 'Dominican Republic (The)', '$', '1', 0),
(145, 0x674e184a6e7b5037b2858ea8, 'VUV', '548', 'Vanuatu vatu', 'Vanuatu', 'Vt', '1', 0),
(146, 0x674e184a6e7b5037b2858ea9, 'XOF', '952', 'CFA franc BCEAO', 'Central African Republic (The)', 'Fr', '1', 0),
(147, 0x674e184a6e7b5037b2858eaa, 'XPF', '953', 'CFP franc (franc Pacifique)', 'Central African Republic (The)', 'Fr', '1', 0),
(148, 0x674e184a6e7b5037b2858eab, 'YER', '886', 'Yemeni rial', 'Yemen', '﷼', '1', 0),
(149, 0x674e184a6e7b5037b2858eac, 'ZAR', '710', 'South African rand', 'South Africa', 'R', '1', 0),
(150, 0x674e184a6e7b5037b2858ead, 'ZMW', '967', 'Zambian kwacha', 'Zambia', 'ZK', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `debit_notes`
--

CREATE TABLE `debit_notes` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_challans`
--

CREATE TABLE `delivery_challans` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emailsettings`
--

CREATE TABLE `emailsettings` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoicesettings`
--

CREATE TABLE `invoicesettings` (
  `id` int(11) NOT NULL,
  `_id` varbinary(12) DEFAULT NULL,
  `invoiceprefix` longtext DEFAULT NULL,
  `invoicelogo` longtext DEFAULT NULL,
  `userid` varbinary(12) DEFAULT NULL,
  `createdat` datetime(3) DEFAULT NULL,
  `updatedat` datetime(3) DEFAULT NULL,
  `__v` int(11) DEFAULT NULL,
  `digitalSignatureName` varchar(255) DEFAULT NULL,
  `digitalSignatureImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoicesettings`
--

INSERT INTO `invoicesettings` (`id`, `_id`, `invoiceprefix`, `invoicelogo`, `userid`, `createdat`, `updatedat`, `__v`, `digitalSignatureName`, `digitalSignatureImage`) VALUES
(0, 0x674e184d6e7b5037b2858ec2, ' ', ' ', 0x674e184a6e7b5037b2858eb0, '2024-12-02 20:27:57.629', '2024-12-02 20:27:57.629', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_templates`
--

CREATE TABLE `invoice_templates` (
  `id` int(11) NOT NULL,
  `_id` varbinary(12) DEFAULT NULL,
  `default_invoice_template` longtext DEFAULT NULL,
  `userid` varbinary(12) DEFAULT NULL,
  `createdat` datetime(3) DEFAULT NULL,
  `updatedat` datetime(3) DEFAULT NULL,
  `__v` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice_templates`
--

INSERT INTO `invoice_templates` (`id`, `_id`, `default_invoice_template`, `userid`, `createdat`, `updatedat`, `__v`) VALUES
(0, 0x674e184d6e7b5037b2858ecb, '1', 0x674e184a6e7b5037b2858eb0, '2024-12-02 20:27:57.653', '2024-12-02 20:27:57.653', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ledgers`
--

CREATE TABLE `ledgers` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manage_users`
--

CREATE TABLE `manage_users` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `mark` varchar(10) NOT NULL DEFAULT 'true',
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notificationsettings`
--

CREATE TABLE `notificationsettings` (
  `id` int(11) NOT NULL,
  `_id` varbinary(12) DEFAULT NULL,
  `senderid` longtext DEFAULT NULL,
  `serverkey` longtext DEFAULT NULL,
  `userid` varbinary(12) DEFAULT NULL,
  `createdat` datetime(3) DEFAULT NULL,
  `updatedat` datetime(3) DEFAULT NULL,
  `__v` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notificationsettings`
--

INSERT INTO `notificationsettings` (`id`, `_id`, `senderid`, `serverkey`, `userid`, `createdat`, `updatedat`, `__v`) VALUES
(0, 0x674e184d6e7b5037b2858ee7, 'FRAAtyrFTty', 'AAAAYwbHO68:APA91bFY21KdJpKz_EpjwQg3etCBifUvBp2IKjMog2rTFqZyFmQFEW1rFDciBftlpmepRk-bjl9CmevyFOVSAZ9o3nZ56bW_TaOknBm7xMmWmxOcqQOSWFWDn8JdsSwgyh4DITNddwXs', 0x674e184a6e7b5037b2858eb0, '2024-12-02 20:27:57.779', '2024-12-02 20:27:57.779', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paymentsettings`
--

CREATE TABLE `paymentsettings` (
  `id` int(11) NOT NULL,
  `_id` varbinary(12) DEFAULT NULL,
  `isstripe` bit(1) DEFAULT NULL,
  `ispaypal` bit(1) DEFAULT NULL,
  `paypal_account_type` longtext DEFAULT NULL,
  `stripe_account_type` longtext DEFAULT NULL,
  `stripepublishkey` longtext DEFAULT NULL,
  `stripesecretkey` longtext DEFAULT NULL,
  `stripe_webhook_url` longtext DEFAULT NULL,
  `paypalclientid` longtext DEFAULT NULL,
  `paypalsecret` longtext DEFAULT NULL,
  `paypal_webhook_url` longtext DEFAULT NULL,
  `sandbox_paypalclientid` longtext DEFAULT NULL,
  `sandbox_paypalsecret` longtext DEFAULT NULL,
  `sandbox_paypal_hookurl` longtext DEFAULT NULL,
  `sandbox_stripepublishkey` longtext DEFAULT NULL,
  `sandbox_stripesecretkey` longtext DEFAULT NULL,
  `sandbox_stripe_hookurl` longtext DEFAULT NULL,
  `userid` varbinary(12) DEFAULT NULL,
  `createdat` datetime(3) DEFAULT NULL,
  `updatedat` datetime(3) DEFAULT NULL,
  `__v` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paymentsettings`
--

INSERT INTO `paymentsettings` (`id`, `_id`, `isstripe`, `ispaypal`, `paypal_account_type`, `stripe_account_type`, `stripepublishkey`, `stripesecretkey`, `stripe_webhook_url`, `paypalclientid`, `paypalsecret`, `paypal_webhook_url`, `sandbox_paypalclientid`, `sandbox_paypalsecret`, `sandbox_paypal_hookurl`, `sandbox_stripepublishkey`, `sandbox_stripesecretkey`, `sandbox_stripe_hookurl`, `userid`, `createdat`, `updatedat`, `__v`) VALUES
(0, 0x674e184d6e7b5037b2858ee3, b'1', b'0', 'SANDBOX', 'SANDBOX', 'pk_test_51NQljRSBAcimcltbvDzGviJgZTeKMJ0hlHkPNkXlAU7gALzyc7RnWv4QzMiqiXp1NXd4ht5xLBnHKNdGGeIVMwyz00KDMlAUQk', 'sk_test_51NQljRSBAcimcltbXX4M91zymfOnzTvvJcDa0Cw0ZAovtPaZESzlTA0FzX4k1Vhuno5xSczK3p3CFeS5EiKr32ia00G0ARjaXZ', 'http://localhost:5000/stripe/webhook', 'AZ4Ht_ZjYMfj7O_0mj0oMiNoghvlHc8AEDby4uDPqQACHAy2rvLDo_Aa68l4HZkCdMceP-JBF_OI0NeU', 'EEbvhB53_86jwc-mMgDRoqV3ndj4N8-dg73dbccr2caocmBA9TZfbGbSgWG4ZKK-eXtVmwGwnzm_AZXG', 'http://localhost:5000/paypal/webhook', 'AZ4Ht_ZjYMfj7O_0mj0oMiNoghvlHc8AEDby4uDPqQACHAy2rvLDo_Aa68l4HZkCdMceP-JBF_OI0NeU', 'EEbvhB53_86jwc-mMgDRoqV3ndj4N8-dg73dbccr2caocmBA9TZfbGbSgWG4ZKK-eXtVmwGwnzm_AZXG', 'http://localhost:5000/paypal/webhook', 'pk_test_51NQljRSBAcimcltbvDzGviJgZTeKMJ0hlHkPNkXlAU7gALzyc7RnWv4QzMiqiXp1NXd4ht5xLBnHKNdGGeIVMwyz00KDMlAUQk', 'sk_test_51NQljRSBAcimcltbXX4M91zymfOnzTvvJcDa0Cw0ZAovtPaZESzlTA0FzX4k1Vhuno5xSczK3p3CFeS5EiKr32ia00G0ARjaXZ', 'http://localhost:5000/stripe/webhook', 0x674e184a6e7b5037b2858eb0, '2024-12-02 20:27:57.769', '2024-12-02 20:27:57.769', 0);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `_id` varbinary(12) DEFAULT NULL,
  `roleid` varbinary(12) DEFAULT NULL,
  `rolename` longtext DEFAULT NULL,
  `allmodules` bit(1) DEFAULT NULL,
  `userid` varbinary(12) DEFAULT NULL,
  `isdeleted` bit(1) DEFAULT NULL,
  `createdat` datetime(3) DEFAULT NULL,
  `updatedat` datetime(3) DEFAULT NULL,
  `__v` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `_id`, `roleid`, `rolename`, `allmodules`, `userid`, `isdeleted`, `createdat`, `updatedat`, `__v`) VALUES
(0, 0x674e184d6e7b5037b2858eb8, 0x674e184d6e7b5037b2858eb6, 'Super Admin', b'1', 0x674e184a6e7b5037b2858eb0, b'0', '2024-12-02 20:27:57.438', '2024-12-02 20:27:57.438', 0),
(1, 0x674e184d6e7b5037b2858ebe, 0x674e184d6e7b5037b2858ebc, 'Admin', b'1', 0x674e184a6e7b5037b2858eb1, b'0', '2024-12-02 20:27:57.610', '2024-12-02 20:27:57.610', 0);

-- --------------------------------------------------------

--
-- Table structure for table `permissions_modules`
--

CREATE TABLE `permissions_modules` (
  `id` int(11) NOT NULL,
  `parent_fk` int(11) DEFAULT NULL,
  `index` int(11) DEFAULT NULL,
  `Object_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permissions_modules`
--

INSERT INTO `permissions_modules` (`id`, `parent_fk`, `index`, `Object_fk`) VALUES
(0, 0, 0, 0),
(1, 0, 1, 1),
(2, 0, 2, 2),
(3, 0, 3, 3),
(4, 0, 4, 4),
(5, 0, 5, 5),
(6, 0, 6, 6),
(7, 0, 7, 7),
(8, 0, 8, 8),
(9, 0, 9, 9),
(10, 0, 10, 10),
(11, 0, 11, 11),
(12, 0, 12, 12),
(13, 0, 13, 13),
(14, 0, 14, 14),
(15, 0, 15, 15),
(16, 0, 16, 16),
(17, 0, 17, 17),
(18, 0, 18, 18),
(19, 0, 19, 19),
(20, 0, 20, 20),
(21, 0, 21, 21),
(22, 0, 22, 22),
(23, 0, 23, 23),
(24, 0, 24, 24),
(25, 0, 25, 25),
(26, 0, 26, 26),
(27, 0, 27, 27),
(28, 0, 28, 28),
(29, 0, 29, 29),
(30, 0, 30, 30),
(31, 0, 31, 31),
(32, 0, 32, 32),
(33, 1, 0, 33),
(34, 1, 1, 34),
(35, 1, 2, 35),
(36, 1, 3, 36),
(37, 1, 4, 37),
(38, 1, 5, 38),
(39, 1, 6, 39),
(40, 1, 7, 40),
(41, 1, 8, 41),
(42, 1, 9, 42),
(43, 1, 10, 43),
(44, 1, 11, 44),
(45, 1, 12, 45),
(46, 1, 13, 46),
(47, 1, 14, 47),
(48, 1, 15, 48),
(49, 1, 16, 49),
(50, 1, 17, 50),
(51, 1, 18, 51),
(52, 1, 19, 52),
(53, 1, 20, 53),
(54, 1, 21, 54),
(55, 1, 22, 55),
(56, 1, 23, 56),
(57, 1, 24, 57),
(58, 1, 25, 58),
(59, 1, 26, 59),
(60, 1, 27, 60),
(61, 1, 28, 61),
(62, 1, 29, 62),
(63, 1, 30, 63),
(64, 1, 31, 64),
(65, 1, 32, 65);

-- --------------------------------------------------------

--
-- Table structure for table `permissions_modules_object`
--

CREATE TABLE `permissions_modules_object` (
  `id` int(11) NOT NULL,
  `label` longtext DEFAULT NULL,
  `module` longtext DEFAULT NULL,
  `permissions_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permissions_modules_object`
--

INSERT INTO `permissions_modules_object` (`id`, `label`, `module`, `permissions_fk`) VALUES
(0, 'Dashboard', 'dashboard', 0),
(1, 'Customer', 'customer', 1),
(2, 'Vendor', 'vendor', 2),
(3, 'Ledger', 'ledger', 3),
(4, 'Product or Services', 'productsOrServices', 4),
(5, 'Category', 'category', 5),
(6, 'Unit', 'unit', 6),
(7, 'Inventory', 'inventory', 7),
(8, 'Invoice', 'invoice', 8),
(9, 'Credit Note', 'creditNote', 9),
(10, 'Purchase', 'purchase', 10),
(11, 'Purchase Order', 'purchaseOrder', 11),
(12, 'Debit Note', 'debitNote', 12),
(13, 'Expense', 'expense', 13),
(14, 'Payment', 'payment', 14),
(15, 'Quotation', 'quotation', 15),
(16, 'Delivery Challan', 'deliveryChallan', 16),
(17, 'Quotation Report', 'quotationReport', 17),
(18, 'Payment Summary Report', 'paymentSummaryReport', 18),
(19, 'User', 'user', 19),
(20, 'Role', 'role', 20),
(21, 'Delete Account Request', 'deleteAccountRequest', 21),
(22, 'Membership', 'membership', 22),
(23, 'Accoount Settings', 'accountSettings', 23),
(24, 'Company Settings', 'companySettings', 24),
(25, 'Invoice Settings', 'invoiceSettings', 25),
(26, 'Payment Settings', 'paymentSettings', 26),
(27, 'Bank Settings', 'bankSettings', 27),
(28, 'Tax Settings', 'taxSettings', 28),
(29, 'Email Settings', 'emailSettings', 29),
(30, 'Preference Settings', 'preferenceSettings', 30),
(31, 'Notification Settings', 'notificationSettings', 31),
(32, 'Change Password', 'changePassword', 32),
(33, 'Dashboard', 'dashboard', 33),
(34, 'Customer', 'customer', 34),
(35, 'Vendor', 'vendor', 35),
(36, 'Ledger', 'ledger', 36),
(37, 'Product or Services', 'productsOrServices', 37),
(38, 'Category', 'category', 38),
(39, 'Unit', 'unit', 39),
(40, 'Inventory', 'inventory', 40),
(41, 'Invoice', 'invoice', 41),
(42, 'Sales Return', 'salesreturn', 42),
(43, 'Purchase', 'purchase', 43),
(44, 'Purchase Order', 'purchaseOrder', 44),
(45, 'Purchase Return', 'purchasereturn', 45),
(46, 'Expense', 'expense', 46),
(47, 'Payment', 'payment', 47),
(48, 'Quotation', 'quotation', 48),
(49, 'Delivery Challan', 'deliveryChallan', 49),
(50, 'Quotation Report', 'quotationReport', 50),
(51, 'Payment Summary Report', 'paymentSummaryReport', 51),
(52, 'User', 'user', 52),
(53, 'Role', 'role', 53),
(54, 'Delete Account Request', 'deleteAccountRequest', 54),
(55, 'Membership', 'membership', 55),
(56, 'Accoount Settings', 'accountSettings', 56),
(57, 'Company Settings', 'companySettings', 57),
(58, 'Invoice Settings', 'invoiceSettings', 58),
(59, 'Payment Settings', 'paymentSettings', 59),
(60, 'Bank Settings', 'bankSettings', 60),
(61, 'Tax Settings', 'taxSettings', 61),
(62, 'Email Settings', 'emailSettings', 62),
(63, 'Preference Settings', 'preferenceSettings', 63),
(64, 'Notification Settings', 'notificationSettings', 64),
(65, 'Change Password', 'changePassword', 65);

-- --------------------------------------------------------

--
-- Table structure for table `permissions_modules_object_permissions`
--

CREATE TABLE `permissions_modules_object_permissions` (
  `id` int(11) NOT NULL,
  `create` bit(1) DEFAULT NULL,
  `update` bit(1) DEFAULT NULL,
  `view` bit(1) DEFAULT NULL,
  `delete` bit(1) DEFAULT NULL,
  `all` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permissions_modules_object_permissions`
--

INSERT INTO `permissions_modules_object_permissions` (`id`, `create`, `update`, `view`, `delete`, `all`) VALUES
(0, b'1', b'1', b'1', b'1', b'1'),
(1, b'0', b'0', b'0', b'0', b'0'),
(2, b'0', b'0', b'0', b'0', b'0'),
(3, b'0', b'0', b'0', b'0', b'0'),
(4, b'0', b'0', b'0', b'0', b'0'),
(5, b'0', b'0', b'0', b'0', b'0'),
(6, b'0', b'0', b'0', b'0', b'0'),
(7, b'0', b'0', b'0', b'0', b'0'),
(8, b'0', b'0', b'1', b'0', b'0'),
(9, b'0', b'0', b'0', b'0', b'0'),
(10, b'0', b'0', b'0', b'0', b'0'),
(11, b'0', b'0', b'0', b'0', b'0'),
(12, b'0', b'0', b'0', b'0', b'0'),
(13, b'0', b'0', b'0', b'0', b'0'),
(14, b'0', b'0', b'0', b'0', b'0'),
(15, b'0', b'0', b'0', b'0', b'0'),
(16, b'0', b'0', b'0', b'0', b'0'),
(17, b'0', b'0', b'0', b'0', b'0'),
(18, b'0', b'0', b'0', b'0', b'0'),
(19, b'0', b'0', b'0', b'0', b'0'),
(20, b'0', b'0', b'0', b'0', b'0'),
(21, b'0', b'0', b'0', b'0', b'0'),
(22, b'0', b'0', b'0', b'0', b'0'),
(23, b'1', b'1', b'1', b'1', b'1'),
(24, b'0', b'0', b'0', b'0', b'0'),
(25, b'0', b'0', b'0', b'0', b'0'),
(26, b'0', b'0', b'0', b'0', b'0'),
(27, b'0', b'0', b'0', b'0', b'0'),
(28, b'0', b'0', b'0', b'0', b'0'),
(29, b'0', b'0', b'0', b'0', b'0'),
(30, b'0', b'0', b'0', b'0', b'0'),
(31, b'0', b'0', b'0', b'0', b'0'),
(32, b'0', b'0', b'0', b'0', b'0'),
(33, b'1', b'1', b'1', b'1', b'1'),
(34, b'1', b'1', b'1', b'1', b'1'),
(35, b'1', b'1', b'1', b'1', b'1'),
(36, b'1', b'1', b'1', b'1', b'1'),
(37, b'1', b'1', b'1', b'1', b'1'),
(38, b'1', b'1', b'1', b'1', b'1'),
(39, b'1', b'1', b'1', b'1', b'1'),
(40, b'1', b'1', b'1', b'1', b'1'),
(41, b'1', b'1', b'1', b'1', b'1'),
(42, b'1', b'1', b'1', b'1', b'1'),
(43, b'1', b'1', b'1', b'1', b'1'),
(44, b'1', b'1', b'1', b'1', b'1'),
(45, b'1', b'1', b'1', b'1', b'1'),
(46, b'1', b'1', b'1', b'1', b'1'),
(47, b'1', b'1', b'1', b'1', b'1'),
(48, b'1', b'1', b'1', b'1', b'1'),
(49, b'1', b'1', b'1', b'1', b'1'),
(50, b'1', b'1', b'1', b'1', b'1'),
(51, b'1', b'1', b'1', b'1', b'1'),
(52, b'1', b'1', b'1', b'1', b'1'),
(53, b'1', b'1', b'1', b'1', b'1'),
(54, b'1', b'1', b'1', b'1', b'1'),
(55, b'1', b'1', b'1', b'1', b'1'),
(56, b'1', b'1', b'1', b'1', b'1'),
(57, b'1', b'1', b'1', b'1', b'1'),
(58, b'1', b'1', b'1', b'1', b'1'),
(59, b'1', b'1', b'1', b'1', b'1'),
(60, b'1', b'1', b'1', b'1', b'1'),
(61, b'1', b'1', b'1', b'1', b'1'),
(62, b'1', b'1', b'1', b'1', b'1'),
(63, b'1', b'1', b'1', b'1', b'1'),
(64, b'1', b'1', b'1', b'1', b'1'),
(65, b'1', b'1', b'1', b'1', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `preferencesettings`
--

CREATE TABLE `preferencesettings` (
  `id` int(11) NOT NULL,
  `_id` varbinary(12) DEFAULT NULL,
  `currencyid` varbinary(12) DEFAULT NULL,
  `userid` varbinary(12) DEFAULT NULL,
  `createdat` datetime(3) DEFAULT NULL,
  `updatedat` datetime(3) DEFAULT NULL,
  `__v` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `preferencesettings`
--

INSERT INTO `preferencesettings` (`id`, `_id`, `currencyid`, `userid`, `createdat`, `updatedat`, `__v`) VALUES
(0, 0x674e184d6e7b5037b2858ec7, 0x674e184a6e7b5037b2858ea2, 0x674e184a6e7b5037b2858eb0, '2024-12-02 20:27:57.642', '2024-12-02 20:27:57.642', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorder_templates`
--

CREATE TABLE `purchaseorder_templates` (
  `id` int(11) NOT NULL,
  `_id` varbinary(12) DEFAULT NULL,
  `default_purchaseorder_template` longtext DEFAULT NULL,
  `userid` varbinary(12) DEFAULT NULL,
  `createdat` datetime(3) DEFAULT NULL,
  `updatedat` datetime(3) DEFAULT NULL,
  `__v` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchaseorder_templates`
--

INSERT INTO `purchaseorder_templates` (`id`, `_id`, `default_purchaseorder_template`, `userid`, `createdat`, `updatedat`, `__v`) VALUES
(0, 0x674e184d6e7b5037b2858ed3, '1', 0x674e184a6e7b5037b2858eb0, '2024-12-02 20:27:57.695', '2024-12-02 20:27:57.695', 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_templates`
--

CREATE TABLE `purchase_return_templates` (
  `id` int(11) NOT NULL,
  `_id` varbinary(12) DEFAULT NULL,
  `default_purchase_return_template` longtext DEFAULT NULL,
  `userid` varbinary(12) DEFAULT NULL,
  `createdat` datetime(3) DEFAULT NULL,
  `updatedat` datetime(3) DEFAULT NULL,
  `__v` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_return_templates`
--

INSERT INTO `purchase_return_templates` (`id`, `_id`, `default_purchase_return_template`, `userid`, `createdat`, `updatedat`, `__v`) VALUES
(0, 0x674e184d6e7b5037b2858ed7, '1', 0x674e184a6e7b5037b2858eb0, '2024-12-02 20:27:57.703', '2024-12-02 20:27:57.703', 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_templates`
--

CREATE TABLE `purchase_templates` (
  `id` int(11) NOT NULL,
  `_id` varbinary(12) DEFAULT NULL,
  `default_purchase_template` longtext DEFAULT NULL,
  `userid` varbinary(12) DEFAULT NULL,
  `createdat` datetime(3) DEFAULT NULL,
  `updatedat` datetime(3) DEFAULT NULL,
  `__v` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_templates`
--

INSERT INTO `purchase_templates` (`id`, `_id`, `default_purchase_template`, `userid`, `createdat`, `updatedat`, `__v`) VALUES
(0, 0x674e184d6e7b5037b2858ecf, '1', 0x674e184a6e7b5037b2858eb0, '2024-12-02 20:27:57.664', '2024-12-02 20:27:57.664', 0);

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_templates`
--

CREATE TABLE `quotation_templates` (
  `id` int(11) NOT NULL,
  `_id` varbinary(12) DEFAULT NULL,
  `default_quotation_template` longtext DEFAULT NULL,
  `userid` varbinary(12) DEFAULT NULL,
  `createdat` datetime(3) DEFAULT NULL,
  `updatedat` datetime(3) DEFAULT NULL,
  `__v` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quotation_templates`
--

INSERT INTO `quotation_templates` (`id`, `_id`, `default_quotation_template`, `userid`, `createdat`, `updatedat`, `__v`) VALUES
(0, 0x674e184d6e7b5037b2858edb, '1', 0x674e184a6e7b5037b2858eb0, '2024-12-02 20:27:57.711', '2024-12-02 20:27:57.711', 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `_id` varbinary(12) DEFAULT NULL,
  `rolename` longtext DEFAULT NULL,
  `userid` varbinary(12) DEFAULT NULL,
  `isdeleted` bit(1) DEFAULT NULL,
  `createdat` datetime(3) DEFAULT NULL,
  `updatedat` datetime(3) DEFAULT NULL,
  `__v` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `_id`, `rolename`, `userid`, `isdeleted`, `createdat`, `updatedat`, `__v`) VALUES
(0, 0x674e184d6e7b5037b2858eb6, 'Super Admin', 0x674e184a6e7b5037b2858eb0, b'0', '2024-12-02 20:27:57.112', '2024-12-02 20:27:57.112', 0),
(1, 0x674e184d6e7b5037b2858ebc, 'Admin', 0x674e184a6e7b5037b2858eb1, b'0', '2024-12-02 20:27:57.601', '2024-12-02 20:27:57.601', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales_return_templates`
--

CREATE TABLE `sales_return_templates` (
  `id` int(11) NOT NULL,
  `_id` varbinary(12) DEFAULT NULL,
  `default_sales_return_template` longtext DEFAULT NULL,
  `userid` varbinary(12) DEFAULT NULL,
  `createdat` datetime(3) DEFAULT NULL,
  `updatedat` datetime(3) DEFAULT NULL,
  `__v` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_return_templates`
--

INSERT INTO `sales_return_templates` (`id`, `_id`, `default_sales_return_template`, `userid`, `createdat`, `updatedat`, `__v`) VALUES
(0, 0x674e184d6e7b5037b2858edf, '1', 0x674e184a6e7b5037b2858eb0, '2024-12-02 20:27:57.759', '2024-12-02 20:27:57.759', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20241206173652-add-deleteRequestDate-to-users.js'),
('20241206223151-create-users.js');

-- --------------------------------------------------------

--
-- Table structure for table `signatures`
--

CREATE TABLE `signatures` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unit_types`
--

CREATE TABLE `unit_types` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `_id` varbinary(12) DEFAULT NULL,
  `firstname` longtext DEFAULT NULL,
  `lastname` longtext DEFAULT NULL,
  `username` longtext DEFAULT NULL,
  `fullname` longtext DEFAULT NULL,
  `email` longtext DEFAULT NULL,
  `fcmtoken` longtext DEFAULT NULL,
  `role` enum('Super Admin','Admin','User') DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `mobilenumber` longtext DEFAULT NULL,
  `gender` longtext DEFAULT NULL,
  `dob` longtext DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `addressInformation_fk` int(11) DEFAULT NULL,
  `password` longtext DEFAULT NULL,
  `pswd_reset_at` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`pswd_reset_at`)),
  `requestfordelete` bit(1) DEFAULT NULL,
  `isdeleted` bit(1) DEFAULT NULL,
  `userid` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`userid`)),
  `createdat` datetime(3) DEFAULT NULL,
  `updatedat` datetime(3) DEFAULT NULL,
  `__v` int(11) DEFAULT NULL,
  `deleteRequestDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `_id`, `firstname`, `lastname`, `username`, `fullname`, `email`, `fcmtoken`, `role`, `status`, `mobilenumber`, `gender`, `dob`, `image`, `addressInformation_fk`, `password`, `pswd_reset_at`, `requestfordelete`, `isdeleted`, `userid`, `createdat`, `updatedat`, `__v`, `deleteRequestDate`) VALUES
(0, 0x674e184a6e7b5037b2858eb0, '', '', '', 'Super Admin', 'superadmin@dreamstechnologies.com', '', 'Super Admin', 'Active', '', '', '', '', 0, '$2a$08$4UM8w/UuyEHA.6o/jcAZoOq.UD6LGpN.SydjUzD0Rj2Ch3Z5xfTQW', NULL, b'0', b'0', NULL, '2024-12-02 20:27:54.911', '2024-12-02 20:27:54.911', 0, NULL),
(1, 0x674e184a6e7b5037b2858eb1, '', '', '', 'Admin', 'admin@example.com', '', 'Admin', 'Active', '', '', '', '', 1, '$2a$08$UVCZnhxI8TWR7inrVMLXfuXtCEGRg7yufm4BodbleDujqNjmtWxrC', NULL, b'0', b'0', NULL, '2024-12-02 20:27:54.912', '2024-12-02 20:27:54.912', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_addressinformation`
--

CREATE TABLE `users_addressinformation` (
  `id` int(11) NOT NULL,
  `address` longtext DEFAULT NULL,
  `country` longtext DEFAULT NULL,
  `state` longtext DEFAULT NULL,
  `city` longtext DEFAULT NULL,
  `postalcode` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_addressinformation`
--

INSERT INTO `users_addressinformation` (`id`, `address`, `country`, `state`, `city`, `postalcode`) VALUES
(0, '', '', '', '', ''),
(1, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banksettings`
--
ALTER TABLE `banksettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companysettings`
--
ALTER TABLE `companysettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_notes`
--
ALTER TABLE `credit_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `debit_notes`
--
ALTER TABLE `debit_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_challans`
--
ALTER TABLE `delivery_challans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emailsettings`
--
ALTER TABLE `emailsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoicesettings`
--
ALTER TABLE `invoicesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_templates`
--
ALTER TABLE `invoice_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ledgers`
--
ALTER TABLE `ledgers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_users`
--
ALTER TABLE `manage_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notificationsettings`
--
ALTER TABLE `notificationsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentsettings`
--
ALTER TABLE `paymentsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions_modules`
--
ALTER TABLE `permissions_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `s3t_permissions_modules_permissions_0` (`parent_fk`),
  ADD KEY `s3t_permissions_modules_permissions_modules_objec_0` (`Object_fk`);

--
-- Indexes for table `permissions_modules_object`
--
ALTER TABLE `permissions_modules_object`
  ADD PRIMARY KEY (`id`),
  ADD KEY `s3t_permissions_modules_objec_permissions_modules_objec_0` (`permissions_fk`);

--
-- Indexes for table `permissions_modules_object_permissions`
--
ALTER TABLE `permissions_modules_object_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preferencesettings`
--
ALTER TABLE `preferencesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchaseorder_templates`
--
ALTER TABLE `purchaseorder_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_return_templates`
--
ALTER TABLE `purchase_return_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_templates`
--
ALTER TABLE `purchase_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotation_templates`
--
ALTER TABLE `quotation_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_return_templates`
--
ALTER TABLE `sales_return_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `signatures`
--
ALTER TABLE `signatures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit_types`
--
ALTER TABLE `unit_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `s3t_users_users_addressinformation_0` (`addressInformation_fk`);

--
-- Indexes for table `users_addressinformation`
--
ALTER TABLE `users_addressinformation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permissions_modules`
--
ALTER TABLE `permissions_modules`
  ADD CONSTRAINT `s3t_permissions_modules_permissions_0` FOREIGN KEY (`parent_fk`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `s3t_permissions_modules_permissions_modules_objec_0` FOREIGN KEY (`Object_fk`) REFERENCES `permissions_modules_object` (`id`);

--
-- Constraints for table `permissions_modules_object`
--
ALTER TABLE `permissions_modules_object`
  ADD CONSTRAINT `s3t_permissions_modules_objec_permissions_modules_objec_0` FOREIGN KEY (`permissions_fk`) REFERENCES `permissions_modules_object_permissions` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `s3t_users_users_addressinformation_0` FOREIGN KEY (`addressInformation_fk`) REFERENCES `users_addressinformation` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
