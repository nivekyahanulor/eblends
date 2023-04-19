-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2022 at 10:57 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mlm_empathy`
--

-- --------------------------------------------------------

--
-- Table structure for table `biowash_administrator`
--

CREATE TABLE `biowash_administrator` (
  `adminID` int(5) NOT NULL,
  `firstname` varchar(35) NOT NULL,
  `lastname` varchar(35) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `isActive` int(11) NOT NULL,
  `lastLogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biowash_administrator`
--

INSERT INTO `biowash_administrator` (`adminID`, `firstname`, `lastname`, `username`, `password`, `date_added`, `isActive`, `lastLogin`) VALUES
(4, 'Randy', 'Signar', 'empathy2021', '$2y$10$ApK9aMhZUCvUSjZDuchWzupn/ItVoITtOov1wtXNRzbmsGxGQJKZG', '2021-12-29 14:42:49', 1, '0000-00-00 00:00:00'),
(5, 'Sample', 'Sample', 'Sample', '$2y$10$E9NbVb3mw8vM/1UMu7SrTuq9IMV.Tv/Vv7zYKovzX2ckkhjxoJ70K', '2021-08-17 12:13:58', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `biowash_binary_codes`
--

CREATE TABLE `biowash_binary_codes` (
  `bcID` int(5) NOT NULL,
  `membercode` varchar(36) NOT NULL,
  `uplinecode` varchar(36) NOT NULL,
  `mainuplinecode` varchar(100) NOT NULL,
  `transactioncode` varchar(36) NOT NULL,
  `package_id` int(11) NOT NULL,
  `isUsed` int(2) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biowash_binary_codes`
--

INSERT INTO `biowash_binary_codes` (`bcID`, `membercode`, `uplinecode`, `mainuplinecode`, `transactioncode`, `package_id`, `isUsed`, `date_added`) VALUES
(1, 'KevinJayRoluna', 'Empathy-Admin', 'Empathy-Admin', 'VT9vlNre', 2, 0, '2021-09-16 22:53:21');

-- --------------------------------------------------------

--
-- Table structure for table `biowash_binary_earning`
--

CREATE TABLE `biowash_binary_earning` (
  `binaryEarnID` int(11) NOT NULL,
  `memberCode` varchar(36) NOT NULL,
  `binaryTransactionCode` varchar(36) NOT NULL,
  `EarnDesc` varchar(100) NOT NULL,
  `EarnAmount` varchar(36) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `biowash_binary_genealogy`
--

CREATE TABLE `biowash_binary_genealogy` (
  `bgID` int(5) NOT NULL,
  `transactionID` varchar(100) NOT NULL,
  `main_membercode` varchar(100) NOT NULL,
  `referral_membercode` varchar(100) NOT NULL,
  `inviter_membercode` varchar(36) NOT NULL,
  `membercode_left` varchar(100) DEFAULT NULL,
  `binarycode_left` varchar(32) DEFAULT NULL,
  `membercode_right` varchar(36) DEFAULT NULL,
  `binarycode_right` varchar(36) DEFAULT NULL,
  `position` varchar(12) NOT NULL,
  `level` int(5) NOT NULL DEFAULT 0,
  `isPaired` int(2) NOT NULL DEFAULT 0,
  `dateadded` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `biowash_binary_match_pairing`
--

CREATE TABLE `biowash_binary_match_pairing` (
  `matchID` int(10) NOT NULL,
  `bpID` int(12) NOT NULL,
  `position` varchar(36) NOT NULL,
  `right_code` varchar(36) NOT NULL,
  `datematched` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `biowash_binary_process`
--

CREATE TABLE `biowash_binary_process` (
  `bpID` int(5) NOT NULL,
  `binaryTransaction` varchar(100) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `directMemberCode` varchar(50) NOT NULL,
  `underBy` varchar(36) NOT NULL,
  `sponsorMemberCode` varchar(36) NOT NULL,
  `mainMembercode` varchar(50) NOT NULL,
  `binary_code_left` varchar(36) NOT NULL,
  `binary_code_right` varchar(36) NOT NULL,
  `membercode_left` varchar(50) NOT NULL,
  `membercode_right` varchar(59) NOT NULL,
  `package_left` int(11) NOT NULL,
  `package_right` int(11) NOT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `mainLevel` int(5) NOT NULL DEFAULT 0,
  `position` varchar(12) NOT NULL,
  `count_left` int(12) NOT NULL,
  `count_right` int(12) NOT NULL,
  `secondaryPosition` varchar(32) NOT NULL,
  `placement` int(10) NOT NULL,
  `isPAIR` int(2) NOT NULL,
  `flushout` int(5) NOT NULL,
  `isMatch` int(2) NOT NULL,
  `isMatchlvl3_left` int(2) NOT NULL,
  `isMatchlvl3_right` int(2) NOT NULL,
  `maintopearn` int(12) NOT NULL,
  `topearn` int(12) NOT NULL,
  `isFlushOut` int(2) NOT NULL,
  `isMatchlvl4` int(2) NOT NULL,
  `isMatchlvl4_left` int(2) NOT NULL,
  `isMatchlvl4_right` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biowash_binary_process`
--

INSERT INTO `biowash_binary_process` (`bpID`, `binaryTransaction`, `date_added`, `directMemberCode`, `underBy`, `sponsorMemberCode`, `mainMembercode`, `binary_code_left`, `binary_code_right`, `membercode_left`, `membercode_right`, `package_left`, `package_right`, `level`, `mainLevel`, `position`, `count_left`, `count_right`, `secondaryPosition`, `placement`, `isPAIR`, `flushout`, `isMatch`, `isMatchlvl3_left`, `isMatchlvl3_right`, `maintopearn`, `topearn`, `isFlushOut`, `isMatchlvl4`, `isMatchlvl4_left`, `isMatchlvl4_right`) VALUES
(1, '00000000', '2021-08-16 12:40:15', 'Empathy-Admin', 'Empathy-Admin', 'Empathy-Admin', 'Empathy-Admin', '', '', '', '', 0, 0, 0, 0, 'Top', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `biowash_complan`
--

CREATE TABLE `biowash_complan` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `direct_ref_bonus` double(10,2) NOT NULL,
  `indirect_ref_bonus` double(10,2) NOT NULL,
  `pair_bonus` double(10,2) NOT NULL,
  `empathy_a` double(10,2) NOT NULL,
  `empathy_b` double(10,2) NOT NULL,
  `unilevel` int(11) NOT NULL,
  `rewards` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `biowash_complan`
--

INSERT INTO `biowash_complan` (`id`, `package_id`, `discount`, `direct_ref_bonus`, `indirect_ref_bonus`, `pair_bonus`, `empathy_a`, `empathy_b`, `unilevel`, `rewards`) VALUES
(1, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0),
(2, 2, 0, 0.00, 10.00, 150.00, 100.00, 500.00, 0, 0),
(3, 3, 0, 0.00, 20.00, 300.00, 200.00, 1500.00, 0, 0),
(4, 4, 0, 0.00, 30.00, 450.00, 300.00, 2500.00, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `biowash_earnings_progress`
--

CREATE TABLE `biowash_earnings_progress` (
  `progressID` int(5) NOT NULL,
  `membercode` varchar(50) NOT NULL,
  `invitercode` varchar(50) NOT NULL,
  `earningfrom` varchar(50) NOT NULL,
  `earninglimit` varchar(12) NOT NULL DEFAULT '0',
  `used_earnings` int(5) DEFAULT 0,
  `float_earnings` int(12) UNSIGNED NOT NULL,
  `linelevel` int(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biowash_earnings_progress`
--

INSERT INTO `biowash_earnings_progress` (`progressID`, `membercode`, `invitercode`, `earningfrom`, `earninglimit`, `used_earnings`, `float_earnings`, `linelevel`) VALUES
(1, 'Empathy-Admin', '', 'KevinJayRoluna', '0', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `biowash_expenses_records`
--

CREATE TABLE `biowash_expenses_records` (
  `expensesID` int(10) NOT NULL,
  `expenses_details` text NOT NULL,
  `expenses_amount` int(10) NOT NULL,
  `expenses_date` date NOT NULL,
  `expenses_by` varchar(50) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `biowash_inderect_ref_bonus`
--

CREATE TABLE `biowash_inderect_ref_bonus` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `amount` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `biowash_inderect_ref_bonus`
--

INSERT INTO `biowash_inderect_ref_bonus` (`id`, `package_id`, `amount`) VALUES
(1, 2, 10.00);

-- --------------------------------------------------------

--
-- Table structure for table `biowash_members`
--

CREATE TABLE `biowash_members` (
  `memberID` int(5) NOT NULL,
  `firstname` varchar(35) NOT NULL,
  `lastname` varchar(35) NOT NULL,
  `emailaddress` varchar(36) NOT NULL,
  `contactnumber` varchar(15) NOT NULL,
  `tinnumber` varchar(36) NOT NULL,
  `profilepicture` text NOT NULL,
  `username` varchar(36) NOT NULL,
  `password` varchar(100) NOT NULL,
  `datgeregistered` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `member_code` varchar(36) NOT NULL,
  `referral_code` varchar(36) DEFAULT NULL,
  `referral_main_code` varchar(36) DEFAULT NULL,
  `referral_cnt_level` int(5) DEFAULT NULL,
  `line_level` int(5) NOT NULL DEFAULT 0,
  `package_type` int(2) NOT NULL,
  `earn_level` varchar(5) DEFAULT '0',
  `ref_cnt` int(12) DEFAULT 0,
  `withdrawal_status` int(5) NOT NULL DEFAULT 0,
  `flashOut` int(10) NOT NULL DEFAULT 0,
  `isActive` int(1) NOT NULL,
  `isVerified` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biowash_members`
--

INSERT INTO `biowash_members` (`memberID`, `firstname`, `lastname`, `emailaddress`, `contactnumber`, `tinnumber`, `profilepicture`, `username`, `password`, `datgeregistered`, `member_code`, `referral_code`, `referral_main_code`, `referral_cnt_level`, `line_level`, `package_type`, `earn_level`, `ref_cnt`, `withdrawal_status`, `flashOut`, `isActive`, `isVerified`) VALUES
(1, 'Empathy', 'Administrator', 'admin@empathybl3nd.com', '', '', '', 'Empathy-Admin', '$2y$10$ApK9aMhZUCvUSjZDuchWzupn/ItVoITtOov1wtXNRzbmsGxGQJKZG', '2021-09-16 14:51:21', 'Empathy-Admin', 'Empathy-Admin', 'Empathy-Admin', NULL, 0, 4, '0', 1, 0, 500000, 1, 1),
(2, 'Kevin Jay', 'Roluna', 'kevinjayroluna@yahoo.com', '09357396286', '', '', 'kevinjayroluna@yahoo.com', '$2y$10$rwr2PIPj3z1CpB5KAzDCP.wSeBsZAHz7kWNTcjCarRHlWwVWLZXj6', '2021-09-16 15:10:52', 'KevinJayRoluna', 'Empathy-Admin', 'Empathy-Admin', 1, 1, 2, '0', 0, 0, 12, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `biowash_members_earning`
--

CREATE TABLE `biowash_members_earning` (
  `earningID` int(12) NOT NULL,
  `membercode` varchar(36) NOT NULL,
  `earnamount` varchar(36) NOT NULL DEFAULT '0',
  `packageamount` varchar(12) NOT NULL DEFAULT '0',
  `earnfrom` varchar(50) NOT NULL,
  `earncount` int(5) NOT NULL DEFAULT 0,
  `floatcount` int(12) NOT NULL DEFAULT 0,
  `earnstatus` int(11) NOT NULL,
  `dateearn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biowash_members_earning`
--

INSERT INTO `biowash_members_earning` (`earningID`, `membercode`, `earnamount`, `packageamount`, `earnfrom`, `earncount`, `floatcount`, `earnstatus`, `dateearn`) VALUES
(1, 'Empathy-Admin', '200', '200', 'KevinJayRoluna', 0, 0, 2, '2021-09-16 14:53:21');

-- --------------------------------------------------------

--
-- Table structure for table `biowash_members_wallet`
--

CREATE TABLE `biowash_members_wallet` (
  `walletID` int(5) NOT NULL,
  `membercode` varchar(36) NOT NULL,
  `balance` int(36) DEFAULT 0,
  `floating` varchar(32) NOT NULL DEFAULT '0',
  `withdrawals` int(36) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biowash_members_wallet`
--

INSERT INTO `biowash_members_wallet` (`walletID`, `membercode`, `balance`, `floating`, `withdrawals`) VALUES
(1, 'Empathy-Admin', 0, '0', 0),
(2, 'KevinJayRoluna', 0, '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `biowash_member_package`
--

CREATE TABLE `biowash_member_package` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `payment_option_id` int(11) NOT NULL,
  `payment_ref_num` varchar(100) NOT NULL,
  `proof_file` varchar(250) NOT NULL,
  `member_code` varchar(36) NOT NULL,
  `referralID` varchar(36) NOT NULL,
  `referralmainID` varchar(36) NOT NULL,
  `empathymainID` varchar(36) NOT NULL,
  `transcode` varchar(12) NOT NULL,
  `payment_date` datetime NOT NULL,
  `approved_by` int(11) NOT NULL,
  `is_approved` int(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `biowash_member_package`
--

INSERT INTO `biowash_member_package` (`id`, `package_id`, `member_id`, `status`, `payment_option_id`, `payment_ref_num`, `proof_file`, `member_code`, `referralID`, `referralmainID`, `empathymainID`, `transcode`, `payment_date`, `approved_by`, `is_approved`, `date_added`) VALUES
(1, 2, 2, 1, 2, '12', 'Capture1.PNG', 'KevinJayRoluna', 'Empathy-Admin', 'Empathy-Admin', '', 'VT9vlNre', '0000-00-00 00:00:00', 0, 1, '2021-09-16 22:52:56');

-- --------------------------------------------------------

--
-- Table structure for table `biowash_member_withdrawal`
--

CREATE TABLE `biowash_member_withdrawal` (
  `withdrawalID` int(12) NOT NULL,
  `memberID` int(5) NOT NULL,
  `methodID` int(5) NOT NULL,
  `amount` varchar(36) NOT NULL,
  `taxdeduction` varchar(12) NOT NULL,
  `processingfee` varchar(12) NOT NULL,
  `totalget` varchar(12) NOT NULL,
  `approval_status` int(1) NOT NULL,
  `reason` text NOT NULL,
  `date_requested` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_approved` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `biowash_membesr_financial_method`
--

CREATE TABLE `biowash_membesr_financial_method` (
  `methodID` int(12) NOT NULL,
  `memberID` int(12) NOT NULL,
  `methodname` varchar(50) DEFAULT NULL,
  `bankname` varchar(50) DEFAULT NULL,
  `accountname` varchar(50) DEFAULT NULL,
  `accountnumber` varchar(50) DEFAULT NULL,
  `receivername` varchar(50) DEFAULT NULL,
  `contactnumber` varchar(36) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `biowash_orders_checkout`
--

CREATE TABLE `biowash_orders_checkout` (
  `checkoutID` int(12) NOT NULL,
  `memberID` int(10) NOT NULL,
  `transcode` varchar(15) NOT NULL,
  `deliveryoption` varchar(12) NOT NULL,
  `deliveryaddress` text NOT NULL,
  `paymentmethod` varchar(36) NOT NULL,
  `paytranscode` varchar(26) NOT NULL,
  `payname` varchar(50) NOT NULL,
  `payamount` varchar(12) NOT NULL,
  `paydate` varchar(20) NOT NULL,
  `payreceipt` text NOT NULL,
  `shipping_fee` int(12) NOT NULL,
  `checkout_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `order_status` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biowash_orders_checkout`
--

INSERT INTO `biowash_orders_checkout` (`checkoutID`, `memberID`, `transcode`, `deliveryoption`, `deliveryaddress`, `paymentmethod`, `paytranscode`, `payname`, `payamount`, `paydate`, `payreceipt`, `shipping_fee`, `checkout_date`, `order_status`) VALUES
(1, 1, 'qRDia9gb', 'cod', '1', '', '', '', '', '2021-08-20', '', 0, '2021-08-20 13:46:36', 0);

-- --------------------------------------------------------

--
-- Table structure for table `biowash_packages`
--

CREATE TABLE `biowash_packages` (
  `packageID` int(11) NOT NULL,
  `package_name` varchar(100) NOT NULL,
  `package_description` text NOT NULL,
  `package_price` double(10,2) NOT NULL,
  `package_image` text NOT NULL,
  `complan` int(11) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `biowash_packages`
--

INSERT INTO `biowash_packages` (`packageID`, `package_name`, `package_description`, `package_price`, `package_image`, `complan`, `isActive`, `date_added`) VALUES
(1, 'Starter', 'Inclusion : 3 Bottles\r\nROI : 105011111', 988.00, 'membership-988.png', 0, 1, '2021-05-25 11:17:33'),
(2, 'Silver Package', 'test', 3999.00, 'membership-silver.png', 0, 1, '2021-05-27 14:33:15'),
(3, 'Gold Package', 'Gold Membership Package', 6988.00, 'membership-gold.png', 0, 1, '2021-06-18 12:23:56'),
(4, 'Platinum Package', 'Platinum Membership Package', 9988.00, 'membership-platinum.png', 0, 1, '2021-06-18 12:25:02');

-- --------------------------------------------------------

--
-- Table structure for table `biowash_payment_options`
--

CREATE TABLE `biowash_payment_options` (
  `payID` int(10) NOT NULL,
  `payment_type` varchar(36) NOT NULL,
  `payment_procedure` text NOT NULL,
  `image` varchar(20) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biowash_payment_options`
--

INSERT INTO `biowash_payment_options` (`payID`, `payment_type`, `payment_procedure`, `image`, `date_added`) VALUES
(2, 'Paymaya', '<p>09120678910</p><p>Micah Padilla</p>', 'paymaya.png', '2020-09-02 16:28:23'),
(4, 'BPI', '<p>1633-0507-55</p><p>EMPATHY BL3ND HEALTH AND WELLNESS PRODUCTS TRADING</p>', '', '2021-07-12 15:34:25'),
(5, 'GCash', '<p>09979973357</p><p><br></p>', '', '2021-07-12 15:35:30');

-- --------------------------------------------------------

--
-- Table structure for table `biowash_products`
--

CREATE TABLE `biowash_products` (
  `productID` int(11) NOT NULL,
  `product_name` text NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_qty` int(12) NOT NULL,
  `product_image` text NOT NULL,
  `earning_lvl_one` int(11) NOT NULL,
  `earning_lvl_two` int(11) NOT NULL,
  `earning_lvl_three` int(11) NOT NULL,
  `earning_lvl_four` int(11) NOT NULL,
  `earning_lvl_five` int(12) NOT NULL,
  `earning_lvl_six` int(12) NOT NULL,
  `earning_lvl_seven` int(12) NOT NULL,
  `earning_lvl_eight` int(12) NOT NULL,
  `earning_lvl_nine` int(12) NOT NULL,
  `earning_lvl_ten` int(12) NOT NULL,
  `earnlimit` int(12) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `qtySold` int(20) NOT NULL,
  `complan` int(2) NOT NULL,
  `isActive` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biowash_products`
--

INSERT INTO `biowash_products` (`productID`, `product_name`, `product_price`, `product_description`, `product_qty`, `product_image`, `earning_lvl_one`, `earning_lvl_two`, `earning_lvl_three`, `earning_lvl_four`, `earning_lvl_five`, `earning_lvl_six`, `earning_lvl_seven`, `earning_lvl_eight`, `earning_lvl_nine`, `earning_lvl_ten`, `earnlimit`, `date_added`, `qtySold`, `complan`, `isActive`) VALUES
(1, 'Empathy Juice 20 in 1 mix', 1200, 'Sample Only', 0, '186536038_478514983260590_8915116403348178621_n.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-18 03:09:25', 0, 0, 1),
(2, 'Empathy Coffee', 2000, 'Sample Only', 0, '193306924_845798346023989_8235111328805500162_n.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-18 07:05:56', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `biowash_product_orders`
--

CREATE TABLE `biowash_product_orders` (
  `orderID` int(12) NOT NULL,
  `productID` int(12) NOT NULL,
  `memberID` int(12) NOT NULL,
  `purchasedQty` int(12) NOT NULL,
  `purchasedTotal` int(12) NOT NULL,
  `referralID` varchar(36) NOT NULL,
  `referralmainID` varchar(36) NOT NULL,
  `transcode` varchar(12) NOT NULL,
  `checkout_status` int(5) NOT NULL,
  `delivery_status` int(5) NOT NULL,
  `approval_status` int(5) NOT NULL,
  `datepurchased` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biowash_product_orders`
--

INSERT INTO `biowash_product_orders` (`orderID`, `productID`, `memberID`, `purchasedQty`, `purchasedTotal`, `referralID`, `referralmainID`, `transcode`, `checkout_status`, `delivery_status`, `approval_status`, `datepurchased`) VALUES
(1, 2, 1, 1, 1600, 'Empathy-Admin', 'Empathy-Admin', 'qRDia9gb', 1, 0, 0, '2021-08-20 13:43:55');

-- --------------------------------------------------------

--
-- Table structure for table `biowash_system_settings`
--

CREATE TABLE `biowash_system_settings` (
  `settingsID` int(5) NOT NULL,
  `tax_deduction` int(10) NOT NULL,
  `withdrawal_amount` int(10) NOT NULL,
  `processing_fee` int(10) NOT NULL,
  `earn_limit` int(10) NOT NULL,
  `top_5_endorser_start_date` date NOT NULL,
  `top_5_endorser_end_date` date NOT NULL,
  `isActive_Top_Fiva_Endorser` int(11) NOT NULL DEFAULT 0,
  `starter_pairing_earning` int(36) DEFAULT 0,
  `silver_pairing_bunos` int(36) NOT NULL,
  `gold_pairing_bunos` int(36) NOT NULL,
  `premuim_pairing_bunos` int(36) NOT NULL,
  `starter_flushout` int(32) NOT NULL,
  `silver_flushout` int(5) NOT NULL DEFAULT 0,
  `gold_flushout` int(32) NOT NULL,
  `premuim_flushout` int(32) NOT NULL,
  `binary_direct_earn` int(12) NOT NULL,
  `binary_product_earn` int(12) NOT NULL,
  `silver` int(12) NOT NULL,
  `gold` int(12) NOT NULL,
  `premuim` int(12) NOT NULL,
  `product_discount` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biowash_system_settings`
--

INSERT INTO `biowash_system_settings` (`settingsID`, `tax_deduction`, `withdrawal_amount`, `processing_fee`, `earn_limit`, `top_5_endorser_start_date`, `top_5_endorser_end_date`, `isActive_Top_Fiva_Endorser`, `starter_pairing_earning`, `silver_pairing_bunos`, `gold_pairing_bunos`, `premuim_pairing_bunos`, `starter_flushout`, `silver_flushout`, `gold_flushout`, `premuim_flushout`, `binary_direct_earn`, `binary_product_earn`, `silver`, `gold`, `premuim`, `product_discount`) VALUES
(1, 10, 500, 100, 12, '2020-09-01', '2020-09-04', 0, 0, 100, 200, 300, 0, 12, 21, 30, 200, 200, 10, 20, 30, 20);

-- --------------------------------------------------------

--
-- Table structure for table `empathy_bonus_a`
--

CREATE TABLE `empathy_bonus_a` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `amount` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empathy_bonus_a`
--

INSERT INTO `empathy_bonus_a` (`id`, `package_id`, `amount`) VALUES
(1, 2, 100.00),
(2, 3, 200.00),
(3, 4, 300.00);

-- --------------------------------------------------------

--
-- Table structure for table `empathy_bonus_b`
--

CREATE TABLE `empathy_bonus_b` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `amount` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empathy_bonus_b`
--

INSERT INTO `empathy_bonus_b` (`id`, `package_id`, `amount`) VALUES
(1, 2, 500.00),
(2, 3, 1500.00),
(3, 4, 2500.00);

-- --------------------------------------------------------

--
-- Table structure for table `empathy_pairing_bonus`
--

CREATE TABLE `empathy_pairing_bonus` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `amount` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empathy_pairing_bonus`
--

INSERT INTO `empathy_pairing_bonus` (`id`, `package_id`, `amount`) VALUES
(1, 2, 150.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biowash_administrator`
--
ALTER TABLE `biowash_administrator`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `biowash_binary_codes`
--
ALTER TABLE `biowash_binary_codes`
  ADD PRIMARY KEY (`bcID`);

--
-- Indexes for table `biowash_binary_earning`
--
ALTER TABLE `biowash_binary_earning`
  ADD PRIMARY KEY (`binaryEarnID`);

--
-- Indexes for table `biowash_binary_genealogy`
--
ALTER TABLE `biowash_binary_genealogy`
  ADD PRIMARY KEY (`bgID`);

--
-- Indexes for table `biowash_binary_match_pairing`
--
ALTER TABLE `biowash_binary_match_pairing`
  ADD PRIMARY KEY (`matchID`);

--
-- Indexes for table `biowash_binary_process`
--
ALTER TABLE `biowash_binary_process`
  ADD PRIMARY KEY (`bpID`);

--
-- Indexes for table `biowash_complan`
--
ALTER TABLE `biowash_complan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biowash_earnings_progress`
--
ALTER TABLE `biowash_earnings_progress`
  ADD PRIMARY KEY (`progressID`);

--
-- Indexes for table `biowash_expenses_records`
--
ALTER TABLE `biowash_expenses_records`
  ADD PRIMARY KEY (`expensesID`);

--
-- Indexes for table `biowash_inderect_ref_bonus`
--
ALTER TABLE `biowash_inderect_ref_bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biowash_members`
--
ALTER TABLE `biowash_members`
  ADD PRIMARY KEY (`memberID`);

--
-- Indexes for table `biowash_members_earning`
--
ALTER TABLE `biowash_members_earning`
  ADD PRIMARY KEY (`earningID`);

--
-- Indexes for table `biowash_members_wallet`
--
ALTER TABLE `biowash_members_wallet`
  ADD PRIMARY KEY (`walletID`);

--
-- Indexes for table `biowash_member_package`
--
ALTER TABLE `biowash_member_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biowash_member_withdrawal`
--
ALTER TABLE `biowash_member_withdrawal`
  ADD PRIMARY KEY (`withdrawalID`);

--
-- Indexes for table `biowash_membesr_financial_method`
--
ALTER TABLE `biowash_membesr_financial_method`
  ADD PRIMARY KEY (`methodID`);

--
-- Indexes for table `biowash_orders_checkout`
--
ALTER TABLE `biowash_orders_checkout`
  ADD PRIMARY KEY (`checkoutID`);

--
-- Indexes for table `biowash_packages`
--
ALTER TABLE `biowash_packages`
  ADD PRIMARY KEY (`packageID`);

--
-- Indexes for table `biowash_payment_options`
--
ALTER TABLE `biowash_payment_options`
  ADD PRIMARY KEY (`payID`);

--
-- Indexes for table `biowash_products`
--
ALTER TABLE `biowash_products`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `biowash_product_orders`
--
ALTER TABLE `biowash_product_orders`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `biowash_system_settings`
--
ALTER TABLE `biowash_system_settings`
  ADD PRIMARY KEY (`settingsID`);

--
-- Indexes for table `empathy_bonus_a`
--
ALTER TABLE `empathy_bonus_a`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empathy_bonus_b`
--
ALTER TABLE `empathy_bonus_b`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empathy_pairing_bonus`
--
ALTER TABLE `empathy_pairing_bonus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biowash_administrator`
--
ALTER TABLE `biowash_administrator`
  MODIFY `adminID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `biowash_binary_codes`
--
ALTER TABLE `biowash_binary_codes`
  MODIFY `bcID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `biowash_binary_earning`
--
ALTER TABLE `biowash_binary_earning`
  MODIFY `binaryEarnID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `biowash_binary_genealogy`
--
ALTER TABLE `biowash_binary_genealogy`
  MODIFY `bgID` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `biowash_binary_match_pairing`
--
ALTER TABLE `biowash_binary_match_pairing`
  MODIFY `matchID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `biowash_binary_process`
--
ALTER TABLE `biowash_binary_process`
  MODIFY `bpID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `biowash_complan`
--
ALTER TABLE `biowash_complan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `biowash_earnings_progress`
--
ALTER TABLE `biowash_earnings_progress`
  MODIFY `progressID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `biowash_expenses_records`
--
ALTER TABLE `biowash_expenses_records`
  MODIFY `expensesID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `biowash_inderect_ref_bonus`
--
ALTER TABLE `biowash_inderect_ref_bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `biowash_members`
--
ALTER TABLE `biowash_members`
  MODIFY `memberID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `biowash_members_earning`
--
ALTER TABLE `biowash_members_earning`
  MODIFY `earningID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `biowash_members_wallet`
--
ALTER TABLE `biowash_members_wallet`
  MODIFY `walletID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `biowash_member_package`
--
ALTER TABLE `biowash_member_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `biowash_member_withdrawal`
--
ALTER TABLE `biowash_member_withdrawal`
  MODIFY `withdrawalID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `biowash_membesr_financial_method`
--
ALTER TABLE `biowash_membesr_financial_method`
  MODIFY `methodID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `biowash_orders_checkout`
--
ALTER TABLE `biowash_orders_checkout`
  MODIFY `checkoutID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `biowash_packages`
--
ALTER TABLE `biowash_packages`
  MODIFY `packageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `biowash_payment_options`
--
ALTER TABLE `biowash_payment_options`
  MODIFY `payID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `biowash_products`
--
ALTER TABLE `biowash_products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `biowash_product_orders`
--
ALTER TABLE `biowash_product_orders`
  MODIFY `orderID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `biowash_system_settings`
--
ALTER TABLE `biowash_system_settings`
  MODIFY `settingsID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `empathy_bonus_a`
--
ALTER TABLE `empathy_bonus_a`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `empathy_bonus_b`
--
ALTER TABLE `empathy_bonus_b`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `empathy_pairing_bonus`
--
ALTER TABLE `empathy_pairing_bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
