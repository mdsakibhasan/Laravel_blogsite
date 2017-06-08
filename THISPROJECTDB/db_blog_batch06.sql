-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2017 at 06:52 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sakibme_redblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2017_04_09_190055_create_tbl_admin_table', 1),
(9, '2017_04_17_044344_create_tbl_category_table', 1),
(10, '2017_04_17_181107_create_tbl_blog_tabel', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `admin_email_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `admin_email_address`, `admin_password`) VALUES
(1, 'SAKIB HASAN', 'sakib@gmail.com', '96e79218965eb72c92a549dd5a330112'),
(2, 'RAKIB HASAN', 'rakib@gmail.com', '96e79218965eb72c92a549dd5a330112');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `blog_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `blog_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `blog_short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `blog_long_description` text COLLATE utf8_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `blog_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hit_count` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`blog_id`, `category_id`, `blog_title`, `blog_short_description`, `blog_long_description`, `publication_status`, `blog_image`, `hit_count`, `created_at`, `updated_at`) VALUES
(1, 1, 'প্রতিবন্ধীদের মূলধারায় অন্তর্ভুক্ত করতে প্রধানমন্ত্রীর আহ্বান', '<span style="font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);">প্রধানমন্ত্রী শেখ হাসিনা প্রতিবন্ধী এবং অটিজমে আক্রান্ত লোকজনকে সমাজের মূলধারায় মর্যাদার সঙ্গে বসবাসের সুযোগ করে দিতে বিশ্বের সব দেশের প্রতি আহ্বান জানিয়েছেন।</span>', '<p style="padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);">প্রধানমন্ত্রী শেখ হাসিনা প্রতিবন্ধী এবং অটিজমে আক্রান্ত লোকজনকে সমাজের মূলধারায় মর্যাদার সঙ্গে বসবাসের সুযোগ করে দিতে বিশ্বের সব দেশের প্রতি আহ্বান জানিয়েছেন।</p><p style="padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);">প্রধানমন্ত্রী বলেন, ‘আসুন, আমরা এদের বহুমুখী প্রতিভাকে স্বীকৃতি প্রদানে সংকল্পবদ্ধ হই। যাদের এই অসামঞ্জস্যতা, তার কোনো চিকিৎসা নেই, তাদের মর্যাদার সঙ্গে জীবনযাপনের সুযোগ করে দিই। যাতে করে তারা সমাজের মূলধারায় সম্পৃক্ত হতে পারে।’</p><p style="padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);">আজ বুধবার সকালে ভুটানে প্রধানমন্ত্রী শেখ হাসিনা অটিজম এবং নিউরোডেভেলপমেন্টাল ডিসঅর্ডার-বিষয়ক তিন দিনের আন্তর্জাতিক সম্মেলনের উদ্বোধনী পর্বে বিশেষ অতিথির ভাষণে এ কথা বলেন। বিশেষ অতিথি হিসেবে তিনি এই সম্মেলনের উদ্বোধন করেন।</p><p style="padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);">বাংলাদেশের স্বাস্থ্য ও পরিবার কল্যাণ মন্ত্রণালয় এবং ভুটানের স্বাস্থ্য মন্ত্রণালয়ের যৌথ উদ্যোগে এবং সূচনা ফাউন্ডেশন (আগের নাম গ্লোবাল অটিজম), অ্যাবিলিটি ভুটান সোসাইটি (এবিএস) এবং বিশ্ব স্বাস্থ্য সংস্থার দক্ষিণ-পূর্ব এশিয়ার আঞ্চলিক কার্যালয়ের কারিগরি সহযোগিতায় রয়্যাল ব্যাংকুয়েট হলে এই সম্মেলন শুরু হয়েছে।</p><p style="padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);">এবারের সম্মেলনের প্রতিপাদ্য হচ্ছে ‘এএসডি ও অন্যান্য নিউরোডেভেলপমেন্টাল সমস্যায় ব্যক্তি, পরিবার ও সমাজের জন্য কার্যকর ও টেকসই বহুমুখী কর্মসূচি’। ভুটানের প্রধানমন্ত্রী তেসারিং তোবগে সম্মেলনের উদ্বোধনী পর্বে বক্তব্য দেন।</p><p style="padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);">প্রধানমন্ত্রী শেখ হাসিনা বলেন, ঝুঁকির মুখে থাকা নাগরিকদের সুরক্ষা প্রদান করা সব দেশের জন্যই প্রয়োজনীয় এবং সরকারগুলোর উচিত এ জন্য নীতি ও কর্মসূচি প্রণয়ন করা। কোনো নাগরিকই যেন অবহেলার স্বীকার না হয়।</p><p style="padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);">প্রধানমন্ত্রী বলেন, তারা (অটিজমে আক্রান্ত ব্যক্তিরা) দেশের অর্থনৈতিক সমৃদ্ধিতে ভূমিকা রাখার সুযোগের দাবিদার। তিনি আরও বলেন, ‘এটা আমাদেরই কর্তব্য তাদের জন্য জীবনের প্রতিটি স্তরে শিক্ষা থেকে শুরু করে কর্মসংস্থান পর্যন্ত প্রয়োজনীয় সামাজিক ও মেডিকেল সাহায্য প্রদান করা।’</p><div><br></div>', 1, 'blog_image/a9wDdvUVa2BmrJxMh8mq.png', 17, NULL, NULL),
(3, 3, ' ভিসা ছাড়া কত দেশে যেতে পারেন সিঙ্গাপুরের নাগরিকেরা?', '<span style="font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);">দেশভেদে বদলে যায় পাসপোর্টের গুরুত্ব। কোন দেশের পাসপোর্টে ভিসা ছাড়া কতগুলো দেশে যাওয়া যায়, তার ওপর নির্ভর করছে পাসপোর্টের মান ও গুরুত্ব। বর্তমানে ভিসা ছাড়া সবচেয়ে বেশি দেশ ভ্রমণ করতে পারেন সিঙ্গাপুর ও জার্মানির পাসপোর্টধারী নাগরিকেরা।</span>', '<p style="padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);">দেশভেদে বদলে যায় পাসপোর্টের গুরুত্ব। কোন দেশের পাসপোর্টে ভিসা ছাড়া কতগুলো দেশে যাওয়া যায়, তার ওপর নির্ভর করছে পাসপোর্টের মান ও গুরুত্ব। বর্তমানে ভিসা ছাড়া সবচেয়ে বেশি দেশ ভ্রমণ করতে পারেন সিঙ্গাপুর ও জার্মানির পাসপোর্টধারী নাগরিকেরা।</p><p style="padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);">গত সোমবার প্রকাশিত ‘গ্লোবাল র‍্যাঙ্কিং অব দ্য ওয়ার্ল্ডস পাসপোর্ট’-এর তালিকায় বিনা ভিসায় দেশভ্রমণের হিসেবে জার্মানির পাশে চলে এসেছে সিঙ্গাপুর। এখন ভিসা ছাড়া ১৫৯ দেশে ভ্রমণ করতে পারবেন সিঙ্গাপুরের পাসপোর্টধারী নাগরিকেরা। গত বছর এ সংখ্যা ছিল ১৫৮। তবে এই এক বছরে ইউক্রেনে ভিসা ছাড়া প্রবেশের অনুমতি পেয়েছেন সিঙ্গাপুরের নাগরিকেরা। এর ফলে ‘গ্লোবাল পাসপোর্ট পাওয়ার র‍্যাঙ্ক-২০১৭’ তালিকায় সিঙ্গাপুর ও জার্মানি একসঙ্গে শীর্ষ অবস্থানে রয়েছে। জার্মান পাসপোর্টধারী নাগরিকেরাও ভিসা ছাড়া ১৫৯ দেশে ভ্রমণ করতে পারেন।</p><p style="padding: 0px; margin: 0px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);">তালিকার দ্বিতীয় অবস্থানে আছে সুইডেন। ভিসা ছাড়া ১৫৮টি দেশে ভ্রমণ করতে পারেন সুইডেনবাসীরা। ডেনমার্ক, ফিনল্যান্ড, ইতালি, ফ্রান্স, স্পেন, নরওয়ে, যুক্তরাজ্য, দক্ষিণ কোরিয়া এবং যুক্তরাষ্ট্রের পাসপোর্টধারী নাগরিকেরা ১৫৭টি দেশে ভিসা ছাড়া ভ্রমণ করতে পারেন। এ ছাড়া মালয়েশিয়া ও জাপানের পাসপোর্টে ভিসা ছাড়া যাওয়া যায় ১৫৬টি দেশে।</p>', 1, 'blog_image/fTrAn6xnjxLHx0DwGNQb.png', 19, NULL, NULL),
(4, 4, ' ভূমি সংস্কার কমিশন গঠনের পরামর্শ রেহমান সোবহানের', '<span style="font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);">বিদ্যমান বৈষম্য নিরসনে একুশ শতকের ভূমি সংস্কার কমিশন গঠনের পরামর্শ দিয়েছেন সেন্টার ফর পলিসি ডায়ালগের (সিপিডি) চেয়ারম্যান রেহমান সোবহান। তিনি বলেছেন, বৈষম্য নিরসনে সম্পদে গ্রামের জনসাধারণের অধিকার দিতে হবে ও নির্বাচনী ব্যবস্থার সংস্কার আনতে হবে। খবর দ্য হিন্দুর।&nbsp;</span>', '<span style="font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);">বিদ্যমান বৈষম্য নিরসনে একুশ শতকের ভূমি সংস্কার কমিশন গঠনের পরামর্শ দিয়েছেন সেন্টার ফর পলিসি ডায়ালগের (সিপিডি) চেয়ারম্যান রেহমান সোবহান। তিনি বলেছেন, বৈষম্য নিরসনে সম্পদে গ্রামের জনসাধারণের অধিকার দিতে হবে ও নির্বাচনী ব্যবস্থার সংস্কার আনতে হবে। খবর দ্য হিন্দুর।&nbsp;</span><br style="padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);"><span style="font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);">গত সোমবার ভারতের পণ্ডীচেরী বিশ্ববিদ্যালয়ে মদনজিত সিং মেমোরিয়াল লেকচারে ‘দক্ষিণ এশিয়ায় বৈষম্যের কাঠামোগত উৎস’ শীর্ষক বক্তৃতায় রেহমান সোবহান এসব কথা বলেন। তিনি বলেন, কৃষিশ্রমিক ও উৎপাদনশীল খাত ন্যায্য অংশীদার গঠন করবে, যাতে সরকারি প্রতিষ্ঠানগুলো মানসম্পন্ন শিক্ষা দেবে।&nbsp;</span><br style="padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);"><span style="font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);">উপসর্গের আগে বৈষম্যের উৎস নির্ণয় প্রয়োজন উল্লেখ করে রেহমান সোবহান বলেন, অর্থনৈতিক তারতম্যের প্রধান কারণ হলো উৎপাদনক্ষম সম্পদে পক্ষপাতদুষ্ট সুযোগ, বাজারে অসম অংশগ্রহণ, শিক্ষায় বৈষম্য, স্বাস্থ্যসেবায় পক্ষপাতদুষ্ট সুযোগ ও অসম বিশ্বায়ন। তিনি বলেন, বৈষম্যের কারণ চিহ্নিত না করা পর্যন্ত দক্ষিণ এশিয়ায় বৈষম্য চলতেই থাকবে।</span>', 1, 'blog_image/kwflW13gUBWMAUUqOdjT.jpg', 11, NULL, NULL),
(5, 5, ' বিকেএসপিতে তামিম–ঝড়', '<span style="font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);">বৈশাখের খরদুপুরে বিকেএসপিতে কাল যেন একটা কালবৈশাখী উঠল। সেই ঝড় তামিম ইকবালের ব্যাটে! তাতে লন্ডভন্ড কলাবাগান পরে দারুণ ব্যাটিং করেও মোহামেডানের বিপক্ষে পরাজয় এড়াতে পারেনি। ৩০৭ রান তাড়া করতে গিয়ে হেরেছে ২৪ রানে।</span>', '<span style="font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);">বৈশাখের খরদুপুরে বিকেএসপিতে কাল যেন একটা কালবৈশাখী উঠল। সেই ঝড় তামিম ইকবালের ব্যাটে! তাতে লন্ডভন্ড কলাবাগান পরে দারুণ ব্যাটিং করেও মোহামেডানের বিপক্ষে পরাজয় এড়াতে পারেনি। ৩০৭ রান তাড়া করতে গিয়ে হেরেছে ২৪ রানে।</span><br style="padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);"><span style="font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);">স্বরূপে দেখা দিতে একটু সময় নিয়েছেন তামিম। নবম ওভারে সানজিত সাহাকে ছক্কা মেরে প্রথম আড়মোড়া ভাঙেন। এর আগে ২২ বল খেলে তামিমের রান ছিল ৭। ৬১ বলে ফিফটি পাওয়া তামিম যতই সামনে এগিয়েছেন, কলাবাগান বোলারদের ভোগান্তি ততই বেড়েছে। ফিফটিকে সেঞ্চুরিতে রূপ দিতে লেগেছে আর ৪১ বল। তিন অঙ্ক ছোঁয়ার পরই মাংসপেশিতে টান লাগে তাঁর। কোনোভাবে পা টেনে নেওয়া তামিমের আক্রমণাত্মক ব্যাটিংয়ের চূড়ান্ত প্রদর্শনী দেখা গেছে এর পরই। সেঞ্চুরির আগে ১৩ চারের সঙ্গে যে দুটি ছক্কা মেরেছেন, তার একটিতে বল হারিয়েছে! সেঞ্চুরির পর ৫ চার ও ৫ ছক্কায় ২৩ বলে করেছেন ৫৭ রান। ৩৯তম ওভারে আবুল হাসানের বলে লং অফ দিয়ে উড়িয়ে মারা ছক্কায় একটি টিভি চ্যানেলের গাড়ির উইন্ডশিল্ডই ভেঙে গেছে!</span><br style="padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);"><span style="font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);">তামিমের হাতে সবচেয়ে বেশি মার খেয়েছেন কলাবাগানের অধিনায়ক মোহাম্মদ আশরাফুল। ১৮টি চারের দুটি তাঁর বলে। তবে সাতটি ছক্কার তিনটিই মেরেছেন আশরাফুলকে। সানজিতকে ডাউন দ্য উইকেটে মারতে গিয়ে এক্সট্রা কাভারে মুক্তার আলীর ক্যাচ হওয়ার আগে পেয়ে গেছেন লিস্ট ‘এ’ ম্যাচে তাঁর সর্বোচ্চ ইনিংসটা (১২৫ বলে ১৫৭)। মোহামেডানের ইনিংসটা এতটাই তামিমময় যে, বাকিরা রীতিমতো অদৃশ্য।</span><br style="padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);"><span style="font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);">৩০৮ রানের বড় লক্ষ্য তাড়া করতে নেমে কলাবাগান ভালোই জবাব দিয়েছে। একটা সময় দলকে আশা দেখাচ্ছিলেন আশরাফুল। তবে রহমত শাহকে কাট করতে গিয়ে পয়েন্টে নাজমুলকে ক্যাচ দিয়ে শেষ তাঁর ৪৯ বলে ৪৬ রানের ইনিংস। পরে মোহামেডানকে একটু দুশ্চিন্তায় ফেলেছিল তৃতীয় উইকেটে হ্যামিল্টন মাসাকাদজা-তুষার ইমরানের ৯২ রানের জুটি। মিরাজের শিকার হয়ে তুষার (৬৪) আর বিতর্কিত এক রানআউটে (৬৮) মাসাকাদজা আউট হলে কলাবাগানের জয়ের আশা ওখানেই শেষ হয়ে যায়।</span><br style="padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);"><span style="font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);">সবাই যখন তামিমের ইনিংসে ডুবে আছে, পাশের মাঠে আলো ছড়াচ্ছিলেন প্রাইম ব্যাংকের আল আমিন। কাকতালীয়ভাবে, দুই মাঠেই প্রথমে ব্যাট করা দুই দল করেছে সমান রান—কলাবাগানের বিপক্ষে মোহামেডানের রান ৩০৭, খেলাঘরের বিপক্ষে প্রাইম ব্যাংকেরও তা-ই।</span><br style="padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);"><span style="font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);">দুই দলের ইনিংসেই একটি সেঞ্চুরি। তামিমের মতো চার-ছক্কার বৃষ্টি না হলেও আল আমিনের ব্যাটিংয়েও ছিল মুগ্ধতা-জাগানিয়া। কে জানে, তামিমের মতো ওপেন করতে নামলে তিনিও হয়তো বড় স্কোরই গড়তেন। স্ট্রাইক রেটে তো খুব বেশি পিছিয়ে নেই। পাঁচে নেমে ১১২.৭৬ স্ট্রাইক রেটে অপরাজিত ১০৬। ম্যাচ শেষে বললেন, ‘গতবার ভালো খেলেছিলাম। অনেকে বলে, এক বছর ভালো অনেকেই খেলে। চাই না, আমাকে নিয়েও এমনটা কেউ বলুক।’</span><br style="padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);"><span style="font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);">আল আমিনের দলও সহজেই জিতেছে। ৪৭.১ ওভারে ২৪৮ রানেই অলআউট হয়ে খেলাঘর হেরেছে ৫৯ রানে।</span>', 1, 'blog_image/rB7am7b6wPA4QaS8tZuP.jpg', 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8_unicode_ci NOT NULL,
  `category_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_description`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'বাংলাদেশ n', '------------', 1, NULL, NULL),
(3, 'আন্তর্জাতিক', '----------', 1, NULL, NULL),
(4, 'অর্থনীতি', '---', 1, NULL, NULL),
(5, 'খেলা', '-------', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'abul', 'abul@babul.com', '$2y$10$oLbOyY6UMJ4r2HknVqqhouCsar9LxYoSuyUmpPXyXKvupI37j7Kfm', 'v9XM9SJDKobaDdpeIzyd7FP8j53iVJZTcZHsLnbDCMnM28nY2z0SxDY8K4tv', '2017-04-20 03:23:35', '2017-04-20 03:24:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `blog_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
