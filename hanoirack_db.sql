-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th3 03, 2020 lúc 09:22 PM
-- Phiên bản máy phục vụ: 5.5.63-MariaDB
-- Phiên bản PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hanoirack_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_password` text COLLATE utf8_unicode_ci,
  `admin_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_note` text COLLATE utf8_unicode_ci,
  `admin_state` int(11) DEFAULT '1',
  `admin_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_login`, `admin_password`, `admin_phone`, `admin_email`, `admin_note`, `admin_state`, `admin_role`) VALUES
(4, NULL, NULL, '$2y$10$02.uMGB26ln3fgNk8MyarOf8hnuaF/hWlukTDKk99Kb9TluOarctq', NULL, NULL, NULL, 1, NULL),
(5, 'cms', 'cms', '$2y$10$FtjsErf.CxMYTl3zt3xOpuvWvPOAHfdCxo/9apf.tw8Aky/udFN6i', '135778', '', '', 1, 1),
(6, 'Nguyễn Việt Hưng', 'viethung', '$2y$10$9ycMx54Hq3xeuIm.3hrSve8Un9BDloazth9wiZx0bA20wKLCHmqKy', '01672523165', 'viethung95cute@gmail.com', '', 1, 1),
(9, 'nguyen thu thuy', 'admin', '$2y$10$sYR1CeUP5x0cw2Rwc1N25uglpBtX520qXyolMIggKy.zEt6XUinRu', '', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role`
--

CREATE TABLE `admin_role` (
  `admin_role_id` int(11) NOT NULL,
  `admin_role_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `admin_role_name`) VALUES
(1, 'Admin'),
(2, 'Mod');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_account` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `total_cart` int(11) DEFAULT NULL,
  `date_cart` date DEFAULT NULL,
  `id_orderState` int(11) DEFAULT NULL,
  `note_cart` text COLLATE utf8_unicode_ci,
  `name_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_buyer` text COLLATE utf8_unicode_ci,
  `note_buyer` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id_cart`, `id_account`, `session_id`, `total_price`, `total_cart`, `date_cart`, `id_orderState`, `note_cart`, `name_buyer`, `mail_buyer`, `phone_buyer`, `address_buyer`, `note_buyer`) VALUES
(1, NULL, 'ialdc6erfkv2l1qioo161bvgs5', 790000, NULL, '2018-12-04', NULL, NULL, '2', '2@t.com', '2', '2', ''),
(2, NULL, 'ho8vf7k5bfmhmatfl4v8u5fnf0', 2021000, NULL, '2020-02-19', NULL, NULL, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', 'Hà Nội', 'test');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cartdetail`
--

CREATE TABLE `cartdetail` (
  `id_cartDetail` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_product` double DEFAULT NULL,
  `qyt_product` int(11) DEFAULT NULL,
  `totalprice_product` double DEFAULT NULL,
  `subInfo1` text COLLATE utf8_unicode_ci,
  `id_color` int(11) DEFAULT NULL,
  `id_size` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cartdetail`
--

INSERT INTO `cartdetail` (`id_cartDetail`, `id_product`, `session_id`, `price_product`, `qyt_product`, `totalprice_product`, `subInfo1`, `id_color`, `id_size`, `color`, `size`, `id_cart`) VALUES
(1, 1298, 'ialdc6erfkv2l1qioo161bvgs5', 790000, 1, 790000, NULL, 0, 0, '', '', 1),
(2, 1924, 'ho8vf7k5bfmhmatfl4v8u5fnf0', 2021000, 1, 2021000, NULL, 0, 0, '', '', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `color_id` bigint(20) NOT NULL,
  `color_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_price` double DEFAULT NULL,
  `color_stock` int(11) DEFAULT NULL,
  `color_img` text COLLATE utf8_unicode_ci,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config`
--

CREATE TABLE `config` (
  `config_id` int(11) NOT NULL,
  `web_name` text COLLATE utf8_unicode_ci,
  `web_meta` text COLLATE utf8_unicode_ci,
  `web_des` text COLLATE utf8_unicode_ci,
  `web_keyword` text COLLATE utf8_unicode_ci,
  `web_logo` text COLLATE utf8_unicode_ci,
  `web_hotline` text COLLATE utf8_unicode_ci,
  `web_phone` text COLLATE utf8_unicode_ci,
  `web_email` text COLLATE utf8_unicode_ci,
  `content_home1` text COLLATE utf8_unicode_ci,
  `content_home2` text COLLATE utf8_unicode_ci,
  `content_home3` text COLLATE utf8_unicode_ci,
  `content_home4` text COLLATE utf8_unicode_ci,
  `content_home5` text COLLATE utf8_unicode_ci,
  `content_home6` text COLLATE utf8_unicode_ci,
  `content_home7` text COLLATE utf8_unicode_ci,
  `content_home8` text COLLATE utf8_unicode_ci,
  `content_home9` text COLLATE utf8_unicode_ci,
  `content_home10` text COLLATE utf8_unicode_ci,
  `facebook` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google_map` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `icon_web` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `slideshow_home` text COLLATE utf8_unicode_ci,
  `banner1` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `banner2` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `link_slide1` text COLLATE utf8_unicode_ci NOT NULL,
  `link_slide2` text COLLATE utf8_unicode_ci NOT NULL,
  `link_slide3` text COLLATE utf8_unicode_ci NOT NULL,
  `link_banner` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config`
--

INSERT INTO `config` (`config_id`, `web_name`, `web_meta`, `web_des`, `web_keyword`, `web_logo`, `web_hotline`, `web_phone`, `web_email`, `content_home1`, `content_home2`, `content_home3`, `content_home4`, `content_home5`, `content_home6`, `content_home7`, `content_home8`, `content_home9`, `content_home10`, `facebook`, `google`, `twitter`, `google_map`, `youtube`, `icon_web`, `slideshow_home`, `banner1`, `banner2`, `link_slide1`, `link_slide2`, `link_slide3`, `link_banner`) VALUES
(1, 'CÔNG TY TNHH THƯƠNG MẠI VÀ SẢN XUẤT THÀNH HƯNG PHÁT', '', 'Các loại kệ', 'Các loại kệ', 'logo-hanoirack.png', '', '', '', 'Thôn Hương Đình Đông, Xã Mai Đình, Huyện Sóc Sơn, Thành phố Hà Nội', 'Ndthanh.tl@gmail.com', '093.155.1984', 'Thôn Hương Đình Đông, X. Mai Đình, H. Sóc Sơn, TP. Hà Nội', '', '0968.530.689', '', '', '', '', '', '', '', '', '', 'logo-hanoirack.png', '[\"{\\\"image\\\":\\\"Untitled-3.jpg\\\"}\",\"{\\\"image\\\":\\\"Untitled-2.jpg\\\"}\",\"{\\\"image\\\":\\\"Untitled-1.jpg\\\"}\"]', '181224_banner VTV.jpg', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_languages`
--

CREATE TABLE `config_languages` (
  `id` int(11) NOT NULL,
  `config_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_name` text COLLATE utf8_unicode_ci,
  `lang_web_meta` text COLLATE utf8_unicode_ci,
  `lang_web_des` text COLLATE utf8_unicode_ci,
  `lang_web_keyword` text COLLATE utf8_unicode_ci,
  `lang_web_hotline` text COLLATE utf8_unicode_ci,
  `lang_web_phone` text COLLATE utf8_unicode_ci,
  `lang_web_email` text COLLATE utf8_unicode_ci,
  `lang_content_home1` text COLLATE utf8_unicode_ci,
  `lang_content_home2` text COLLATE utf8_unicode_ci,
  `lang_content_home3` text COLLATE utf8_unicode_ci,
  `lang_content_home4` text COLLATE utf8_unicode_ci,
  `lang_content_home5` text COLLATE utf8_unicode_ci,
  `lang_content_home6` text COLLATE utf8_unicode_ci,
  `lang_content_home7` text COLLATE utf8_unicode_ci,
  `lang_content_home8` text COLLATE utf8_unicode_ci,
  `lang_content_home9` text COLLATE utf8_unicode_ci,
  `lang_content_home10` text COLLATE utf8_unicode_ci,
  `facebook` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google_map` text COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(20000) COLLATE utf8_unicode_ci NOT NULL,
  `icon_web` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `edit_state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config_languages`
--

INSERT INTO `config_languages` (`id`, `config_id`, `languages_code`, `lang_web_name`, `lang_web_meta`, `lang_web_des`, `lang_web_keyword`, `lang_web_hotline`, `lang_web_phone`, `lang_web_email`, `lang_content_home1`, `lang_content_home2`, `lang_content_home3`, `lang_content_home4`, `lang_content_home5`, `lang_content_home6`, `lang_content_home7`, `lang_content_home8`, `lang_content_home9`, `lang_content_home10`, `facebook`, `google`, `twitter`, `google_map`, `youtube`, `icon_web`, `edit_state`) VALUES
(1, 1, 'vn', 'CÔNG TY TNHH THƯƠNG MẠI VÀ SẢN XUẤT THÀNH HƯNG PHÁT', '', 'Các loại kệ', 'Các loại kệ', '', '', '', 'Thôn Hương Đình Đông, Xã Mai Đình, Huyện Sóc Sơn, Thành phố Hà Nội', 'Ndthanh.tl@gmail.com', '093.155.1984', 'Thôn Hương Đình Đông, X. Mai Đình, H. Sóc Sơn, TP. Hà Nội', '', '0968.530.689', '', '', '', '', '', '', '', '<p><iframe frameborder=\"0\" height=\"450\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59587.97785448771!2d105.80194413492788!3d21.02273601629448!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab9bd9861ca1%3A0xe7887f7b72ca17a9!2zSGFub2ksIEhvw6BuIEtp4bq_bSwgSGFub2k!5e0!3m2!1sen!2s!4v1513235284242\" style=\"border:0\" width=\"600\"></iframe></p>\r\n', '', '', 1),
(2, 1, 'en', 'CÔNG TY TNHH THƯƠNG MẠI VÀ SẢN XUẤT THÀNH HƯNG PHÁT', NULL, '', '', NULL, NULL, '', 'V-ONION Organic for your family', 'banhang@rio.net.vn', '+84 971 765 775', 'Số 12 ngõ 5, Tân Mỹ, P.Mỹ Đình 1, Q.Nam Từ Liêm, Hà Nội', 'Our factory start to operate in 2012, selling to trading companies to bring cargo to foreign countries. And in 2015, we establish our own company to export to customer directly. \r\nOur plywood is exported to Thailand, Indonesia, Korea, Malaysia, Taiwan and other countries.\r\n', 'MAIN PRODUCTS', 'Plywood, Core Veneer, Film faced plywood, Finger Joint , Sawn timber', 'CLIENTS - PARTNERS', 'TIMBER RELATED STORIES', NULL, '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_name` text COLLATE utf8_unicode_ci,
  `currency_exchange_rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_name` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`languages_id`, `languages_code`, `languages_name`) VALUES
(1, 'vn', 'Tiếng Việt'),
(2, 'en', 'English');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 NOT NULL,
  `comment` mediumtext CHARACTER SET utf8 NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lien_he`
--

INSERT INTO `lien_he` (`id`, `name`, `email`, `phone`, `address`, `comment`, `time`) VALUES
(18, 'Nguyễn Việt Hưng', 'viethung95cute@gmail.com', '', '', 'sdfgsdfg', '2018-05-02 12:01:44'),
(19, 'Việt Hưng', 'viethung95cute@gmail.com', '1672523165', '', 'Tesst  Liên hệ lần 1 ^_^ -_- :D :v :))', '2018-05-07 02:40:46'),
(20, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', '', 'note', '2020-02-19 10:25:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` text COLLATE utf8_unicode_ci,
  `menu_sort_order` int(11) DEFAULT '0',
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_url` text COLLATE utf8_unicode_ci,
  `productcat_id` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `menu_parent` int(11) NOT NULL DEFAULT '0',
  `servicecat_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `state_menuHeader` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_sort_order`, `menu_type_id`, `menu_url`, `productcat_id`, `newscat_id`, `product_id`, `page_id`, `news_id`, `state`, `menu_parent`, `servicecat_id`, `service_id`, `state_menuHeader`) VALUES
(224, 'Trang chủ', 0, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(225, 'Giới thiệu', 0, 13, '', 0, 0, 0, 57, 0, 1, 0, 0, 0, NULL),
(226, 'Sản phẩm', 0, 2, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(227, 'Dịch vụ', 0, 10, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(228, 'Tin tức', 0, 6, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(229, 'Liên hệ', 0, 9, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_languages`
--

CREATE TABLE `menu_languages` (
  `id` bigint(20) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_menu_name` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `urlFriendly_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_languages`
--

INSERT INTO `menu_languages` (`id`, `languages_code`, `lang_menu_name`, `edit_state`, `urlFriendly_menu`, `menu_id`) VALUES
(425, 'vn', 'Trang chủ', 1, '', 224),
(426, 'en', 'Home', 1, '', 224),
(427, 'vn', 'Giới thiệu', 1, '', 225),
(428, 'en', 'About Us', 1, '', 225),
(429, 'vn', 'Sản phẩm', 1, '', 226),
(430, 'en', 'Products', 1, '', 226),
(431, 'vn', 'Dịch vụ', 1, '', 227),
(432, 'en', 'Service', 1, '', 227),
(433, 'vn', 'Tin tức', 1, '', 228),
(434, 'en', 'News', 1, '', 228),
(435, 'vn', 'Liên hệ', 1, '', 229),
(436, 'en', 'Contact', 1, '', 229);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type`
--

CREATE TABLE `menu_type` (
  `menu_type_id` int(11) NOT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type`
--

INSERT INTO `menu_type` (`menu_type_id`, `menu_type_name`, `first_url`) VALUES
(1, 'Trang chủ', ''),
(2, 'Tất cả sản phẩm', 'san-pham'),
(3, 'Danh mục sản phẩm', NULL),
(4, 'Sản phẩm cụ thể', NULL),
(5, 'Danh mục tin tức', NULL),
(6, 'Tất cả bài tin tức', ''),
(7, 'Bài viết tin tức', NULL),
(8, 'Địa chỉ web', NULL),
(9, 'Liên hệ', NULL),
(10, 'Tất cả dịch vụ', NULL),
(11, 'Bài viết dịch vụ', NULL),
(12, 'Danh mục dịch vụ', NULL),
(13, 'Page', NULL),
(14, 'Đăng ký', NULL),
(15, 'Đăng nhập', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type_languages`
--

CREATE TABLE `menu_type_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type_languages`
--

INSERT INTO `menu_type_languages` (`id`, `languages_code`, `menu_type_id`, `menu_type_name`, `friendly_url`) VALUES
(1, 'vn', 1, 'Trang chủ', ''),
(2, 'en', 1, 'Home', ''),
(3, 'vn', 2, 'Tất cả sản phẩm', 'san-pham'),
(4, 'en', 2, 'All products', 'products'),
(5, 'vn', 3, 'Danh mục sản phẩm', ''),
(6, 'en', 3, 'Catalog product', ''),
(7, 'vn', 4, 'Sản phẩm cụ thể', ''),
(8, 'en', 4, 'Product detail', ''),
(9, 'vn', 5, 'Danh mục tin tức', ''),
(10, 'en', 5, 'Catalog news', ''),
(11, 'vn', 6, 'Tất cả bài tin tức', 'tin-tuc'),
(12, 'en', 6, 'All News', 'news'),
(13, 'vn', 7, 'Bài viết tin tức', ''),
(14, 'en', 7, 'News detail', ''),
(15, 'vn', 8, 'Địa chỉ website', ''),
(16, 'en', 8, 'Website Address', ''),
(17, 'vn', 9, 'Liên hệ', 'lien-he'),
(18, 'en', 9, 'Contact', 'contact'),
(19, 'vn', 10, 'Tất cả dịch vụ', 'dich-vu'),
(20, 'en', 10, 'All Services', 'services'),
(21, 'vn', 11, 'Bài viết dịch vụ', ''),
(22, 'en', 11, 'Service detail', ''),
(23, 'vn', 12, 'Danh mục dịch vụ', ''),
(24, 'en', 12, 'Catalog service', ''),
(25, 'vn', 13, 'Trang nội dung', ''),
(26, 'en', 13, 'Page', ''),
(27, 'vn', 14, 'Đăng ký', 'dang-ky'),
(28, 'en', 14, 'Sign in', 'sign-in'),
(29, 'vn', 15, 'Đăng nhập', 'dang-nhap'),
(30, 'en', 15, 'Log in', 'log-in');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_name` text COLLATE utf8_unicode_ci,
  `news_des` text COLLATE utf8_unicode_ci,
  `news_content` text COLLATE utf8_unicode_ci,
  `news_img` text COLLATE utf8_unicode_ci,
  `news_views` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `news_author` text COLLATE utf8_unicode_ci,
  `news_created_date` datetime DEFAULT NULL,
  `news_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `news_sub_info1` text COLLATE utf8_unicode_ci,
  `news_sub_info2` text COLLATE utf8_unicode_ci,
  `news_sub_info3` text COLLATE utf8_unicode_ci,
  `news_sub_info4` text COLLATE utf8_unicode_ci,
  `news_sub_info5` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `newstag_arr` varchar(10000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`news_id`, `news_name`, `news_des`, `news_content`, `news_img`, `news_views`, `newscat_id`, `news_author`, `news_created_date`, `news_update_date`, `state`, `news_sub_info1`, `news_sub_info2`, `news_sub_info3`, `news_sub_info4`, `news_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `newstag_arr`) VALUES
(69, 'Xích đu sân vườn', 'cùng với khoảng trống nhỏ bên ngoài hiên nhà, bạn hoàn toàn có thể tạo cho mình một không gian riêng tư để thư giãn và hít thở không khí trong lành mỗi sáng thức dậy giúp cho bạn có cảm giác thư thái hơn rất nhiều', '<p><strong>c&ugrave;ng với khoảng trống nhỏ b&ecirc;n ngo&agrave;i hi&ecirc;n nh&agrave;, bạn ho&agrave;n to&agrave;n c&oacute; thể tạo cho m&igrave;nh một kh&ocirc;ng gian ri&ecirc;ng tư để thư gi&atilde;n v&agrave; h&iacute;t thở kh&ocirc;ng kh&iacute; trong l&agrave;nh mỗi s&aacute;ng thức dậy gi&uacute;p cho bạn c&oacute; cảm gi&aacute;c thư th&aacute;i hơn rất nhiều.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-M&agrave;u sắc đa dạng&nbsp;<br />\r\n-Kiểu mẫu t&ugrave;y kh&aacute;ch h&agrave;ng chọn hoặc c&oacute; thể chọn c&aacute;c mẫu c&oacute; sẵn b&ecirc;n ch&uacute;ng t&ocirc;i.&nbsp;</p>\r\n', '86390523_175902793748118_8120367685839093760_n.jpg', 0, 0, '', '2020-02-20 09:02:55', '2020-02-20 09:02:10', 1, '', '', '', '', '', 'Xích đu sân vườn', '', 'xich-du-san-vuon', '', 9, ''),
(70, 'Kệ trung tải', 'CÔNG TRÌNH KỆ TRUNG TẢI TẠI NGÂN HÀNG CÔNG THƯƠNG TỈNH HÒA BÌNH CTY TNHH TM&SX THÀNH HƯNG PHÁT là một trong những cty đi đầu về sản xuất gái kệ để hàng tại thị trường Việt Nam. Chũng tôi chuyên cung cấp các loại giá kệ để hàng như: Kệ Shelving ( trung tải), Kệ Selective, Kẹ sắt V lỗ đa năng, Kệ sàn ...... Cty chúng tôi đã thi công lắp đặt giá kệ cho rất nhiều đối tác như: Cty SamSung Yên Phong& Bắc Ninh. YAMAHA MOTOR VIỆT NAM, PIAGIO BÌNH XUYÊN, TOYOTA, NASCO NỘI BÀI..... THÀNH HƯNG PHÁT CAM KẾT', '<p><strong>C&Ocirc;NG TR&Igrave;NH KỆ TRUNG TẢI TẠI NG&Acirc;N H&Agrave;NG C&Ocirc;NG THƯƠNG TỈNH H&Ograve;A B&Igrave;NH CTY TNHH TM&amp;SX TH&Agrave;NH HƯNG PH&Aacute;T l&agrave; một trong những cty đi đầu về sản xuất g&aacute;i kệ để h&agrave;ng tại thị trường Việt Nam. Chũng t&ocirc;i chuy&ecirc;n cung cấp c&aacute;c loại gi&aacute; kệ để h&agrave;ng như: Kệ Shelving ( trung tải), Kệ Selective, Kẹ sắt V lỗ đa năng, Kệ s&agrave;n ...... Cty ch&uacute;ng t&ocirc;i đ&atilde; thi c&ocirc;ng lắp đặt gi&aacute; kệ cho rất nhiều đối t&aacute;c như: Cty SamSung Y&ecirc;n Phong&amp; Bắc Ninh. YAMAHA MOTOR VIỆT NAM, PIAGIO B&Igrave;NH XUY&Ecirc;N, TOYOTA, NASCO NỘI B&Agrave;I..... TH&Agrave;NH HƯNG PH&Aacute;T CAM KẾT BẢO H&Agrave;NH H&Agrave;NG H&Oacute;A TỪ 5-10 NĂM.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Kệ trung tải với k&iacute;ch thước đa dạng. T&ugrave;y chỉnh chiều cao c&aacute;c tầng theo &yacute; muốn sao cho ph&ugrave; hợp với từng loại mặt h&agrave;ng.<br />\r\n- Kệ trung tải hay c&ograve;n gọi l&agrave; kệ Shelving kh&ocirc;ng chỉ ph&ugrave; hợp với để h&agrave;ng m&agrave; cũng c&oacute; thể để c&aacute;c loại hồ sơ t&agrave;i liệu.</p>\r\n', 'ke_de_hang.jpg', 0, 0, '', '2020-02-20 09:02:10', '2020-02-20 09:02:03', 1, '', '', '', '', '', 'Kệ trung tải', '', 'ke-trung-tai', '', 9, ''),
(71, 'Giá săt V lỗ đa năng và phụ kiện', 'Công ty TNHH THƯƠNG MẠI VÀ SẢN XUẤT THÀNH HƯNG PHÁT. Ngành nghề kinh doanh chính: - Sản xuất kệ sắt V lỗ đa năng, các loại kệ công nghiệp, Kệ shelving Trung tải, Kệ Selective.... - Gia Công Cơ Khí, Tráng phủ kim loại - Sản xuất và lắp đặt các loại kệ đa năng', '<p><strong>C&ocirc;ng ty TNHH THƯƠNG MẠI V&Agrave; SẢN XUẤT TH&Agrave;NH HƯNG PH&Aacute;T. Ng&agrave;nh nghề kinh doanh ch&iacute;nh: - Sản xuất kệ sắt V lỗ đa năng, c&aacute;c loại kệ c&ocirc;ng nghiệp, Kệ shelving Trung tải, Kệ Selective.... - Gia C&ocirc;ng Cơ Kh&iacute;, Tr&aacute;ng phủ kim loại - Sản xuất v&agrave; lắp đặt c&aacute;c loại kệ đa năng.....</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sản phẩm kệ sắt V lỗ đa năng bao gồm<br />\r\n- V lỗ: V3*3; V4*4; V3*5; V4*6; V1*3&nbsp;<br />\r\n- Với c&aacute;c độ d&agrave;i 2m; 2,4m; 3m tương ứng với c&aacute;c độ d&agrave;y c&oacute; sẵn l&agrave;: 1,6mm;1,8mm;2mm<br />\r\n- M&agrave;u sơn c&oacute; sẵn l&agrave; m&agrave;u ghi, trắng.<br />\r\n- S&agrave;n t&ocirc;n đa năng Bao gồm c&aacute;c k&iacute;ch thước chiều rộng: 300mm; 400mm;500mm;600mm ( Sản xuất theo đơn đặt h&agrave;ng).<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chiều d&agrave;i tương ứng: 800mm; 900mm;1000mm; 1100mm;1200mm; 1500mm( Nhận sản xuất&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;theo đơn đặt h&agrave;ng)&nbsp; &nbsp; &nbsp;<br />\r\n* Với độ d&agrave;y s&agrave;n t&ocirc;n đa năng: 0,6mm; 0,7mm; 0,8mm,1mm; 1,2mm&nbsp;( H&agrave;ng c&oacute; sẵn chỉ c&oacute; độ d&agrave;y 0,7mm)&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n<strong>Bảng gi&aacute; cụ thể từng sản phẩm V lỗ:</strong><br />\r\nĐộ d&agrave;y 1,6mm:<br />\r\n- V3*3 gi&aacute; 12,500/m&eacute;t d&agrave;i(md)<br />\r\n- V4*4 v&agrave; V3*5 gi&aacute;: 17,000/&nbsp;md<br />\r\n- V 4*6 gi&aacute; l&agrave; 20,000/md<br />\r\nĐộ d&agrave;y 1,8mm:<br />\r\n- V3*3 gi&aacute; 13,500/m&eacute;t d&agrave;i(md)<br />\r\n- V4*4 v&agrave; V3*5 gi&aacute;: 18.500/&nbsp;md<br />\r\n- V 4*6 gi&aacute; l&agrave; 22.000/md<br />\r\nĐộ d&agrave;y 2mm:&nbsp;<br />\r\n- V3*3 gi&aacute; 14,500/m&eacute;t d&agrave;i(md)<br />\r\n- V4*4 v&agrave; V3*5 gi&aacute;: 20.000/&nbsp;md<br />\r\n- V 4*6 gi&aacute; l&agrave; 24.000/md<br />\r\n* S&agrave;n t&ocirc;n đa năng:<br />\r\n-&nbsp;Với độ d&agrave;y 0,7mm c&oacute; sẵn gi&aacute; b&aacute;n l&agrave;m 195,000/m2.<br />\r\n- Với độ d&agrave;y 0,6mm gi&aacute; l&agrave;: 185,000/m2.<br />\r\nTừ độ d&agrave;y 0,7mm trở l&ecirc;n gi&aacute; sẽ c&ocirc;ng th&ecirc;m 25,000 cho mỗi 0,1mm chiều d&agrave;y tăng th&ecirc;m.<br />\r\n* Ke g&oacute;c v&agrave; bulong bắt kệ l&agrave; phụ kiện kh&ocirc;ng thể thiếu của kệ sắt đang gi&aacute; b&aacute;n cụ thể như sau:&nbsp;<br />\r\n- Ke g&oacute;c d&agrave;y 0,8mm gi&aacute; b&aacute;n l&agrave; 600đ/c&aacute;i<br />\r\n- Ốc kệ gi&aacute; b&aacute;n 32,000đ/T&uacute;i ( 95-100 con ốc/t&uacute;i) tương ứng với 1kg)<br />\r\n<br />\r\n<img alt=\"\" src=\"http://cokhisocson.com/upload/images/V%20l%E1%BB%97%20%C4%91a%20n%C4%83ng.jpg\" /></p>\r\n', 'V_lỗ_đa_năng.jpg', 0, 0, '', '2020-02-20 09:02:46', '2020-02-20 09:02:51', 1, '', '', '', '', '', 'Giá săt V lỗ đa năng và phụ kiện', '', 'gia-sat-v-lo-da-nang-va-phu-kien', '', 9, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat`
--

CREATE TABLE `newscat` (
  `newscat_id` int(11) NOT NULL,
  `newscat_name` text COLLATE utf8_unicode_ci,
  `newscat_des` text COLLATE utf8_unicode_ci,
  `newscat_content` text COLLATE utf8_unicode_ci,
  `newscat_parent` int(11) DEFAULT NULL,
  `newscat_sort_order` int(11) DEFAULT NULL,
  `newscat_created_date` datetime DEFAULT NULL,
  `newscat_update_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `newscat_img` text COLLATE utf8_unicode_ci,
  `newscat_sub_info1` text COLLATE utf8_unicode_ci,
  `newscat_sub_info2` text COLLATE utf8_unicode_ci,
  `newscat_sub_info3` text COLLATE utf8_unicode_ci,
  `newscat_sub_info4` text COLLATE utf8_unicode_ci,
  `newscat_sub_info5` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat`
--

INSERT INTO `newscat` (`newscat_id`, `newscat_name`, `newscat_des`, `newscat_content`, `newscat_parent`, `newscat_sort_order`, `newscat_created_date`, `newscat_update_date`, `state`, `newscat_img`, `newscat_sub_info1`, `newscat_sub_info2`, `newscat_sub_info3`, `newscat_sub_info4`, `newscat_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(1, 'Tin tức khuyến mãi', '', '', 0, 0, '2018-09-28 11:09:03', NULL, 1, 'bargain.png', '', '', '', '', '', 'Tin tức khuyến mãi', '', 'tin-tuc-khuyen-mai', 'minh phuong toto, Minh Phương TOTO, Showroom Minh Phương, Showroom Minh Phuong, Minh Phương Showroom, Minh Phuong Showroom', 1),
(2, 'Cẩm nang kiến thức', '', '', 0, 0, '2018-09-14 17:09:24', NULL, 1, 'article.png', '', '', '', '', '', 'Cẩm nang kiến thức', '', 'cam-nang-kien-thuc', '', 1),
(3, 'Tin tức sản phẩm', '', '', 0, 0, '2018-09-28 11:09:54', NULL, 1, '3d-printing-software.png', '', '', '', '', '', 'Tin tức sản phẩm', '', 'tin-tuc-san-pham', 'minh phuong toto, Minh Phương TOTO, Showroom Minh Phương, Showroom Minh Phuong, Minh Phương Showroom, Minh Phuong Showroom', 1),
(4, 'Tin tức thị trường', '', '', 0, 0, '2018-09-28 11:09:34', NULL, 1, 'money.png', '', '', '', '', '', 'Tin tức thị trường', '', 'tin-tuc-thi-truong', 'minh phuong toto, Minh Phương TOTO, Showroom Minh Phương, Showroom Minh Phuong, Tin tức Minh Phương Showroom, tin tuc Minh Phuong Showroom, Tin tức, tin tuc', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat_languages`
--

CREATE TABLE `newscat_languages` (
  `id` int(11) NOT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_name` text COLLATE utf8_unicode_ci,
  `lang_newscat_des` text COLLATE utf8_unicode_ci,
  `lang_newscat_content` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat_languages`
--

INSERT INTO `newscat_languages` (`id`, `newscat_id`, `languages_code`, `lang_newscat_name`, `lang_newscat_des`, `lang_newscat_content`, `lang_newscat_sub_info1`, `lang_newscat_sub_info2`, `lang_newscat_sub_info3`, `lang_newscat_sub_info4`, `lang_newscat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(1, 1, 'vn', 'Tin tức khuyến mãi', '', NULL, '', '', '', '', '', 0, 'tin-tuc-khuyen-mai', 'minh phuong toto, Minh Phương TOTO, Showroom Minh Phương, Showroom Minh Phuong, Minh Phương Showroom, Minh Phuong Showroom', 'Tin tức khuyến mãi', ''),
(2, 1, 'en', 'english version Tin tức khuyến mãi', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tin-tuc-khuyen-mai', '', 'Tin tức khuyến mãi', ''),
(3, 2, 'vn', 'Cẩm nang kiến thức', '', NULL, '', '', '', '', '', 0, 'cam-nang-kien-thuc', '', 'Cẩm nang kiến thức', ''),
(4, 2, 'en', 'english version Cẩm nang kiến thức', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-cam-nang-kien-thuc', '', 'Cẩm nang kiến thức', ''),
(5, 3, 'vn', 'Tin tức sản phẩm', '', NULL, '', '', '', '', '', 0, 'tin-tuc-san-pham', 'minh phuong toto, Minh Phương TOTO, Showroom Minh Phương, Showroom Minh Phuong, Minh Phương Showroom, Minh Phuong Showroom', 'Tin tức sản phẩm', ''),
(6, 3, 'en', 'english version Tin tức sản phẩm', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tin-tuc-san-pham', '', 'Tin tức sản phẩm', ''),
(7, 4, 'vn', 'Tin tức thị trường', '', NULL, '', '', '', '', '', 0, 'tin-tuc-thi-truong', 'minh phuong toto, Minh Phương TOTO, Showroom Minh Phương, Showroom Minh Phuong, Tin tức Minh Phương Showroom, tin tuc Minh Phuong Showroom, Tin tức, tin tuc', 'Tin tức thị trường', ''),
(8, 4, 'en', 'english version Tin tức thị trường', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tin-tuc-thi-truong', '', 'Tin tức thị trường', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newstag`
--

CREATE TABLE `newstag` (
  `newstag_id` int(11) NOT NULL,
  `newstag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sort_order` int(11) NOT NULL,
  `newstag_created_date` datetime NOT NULL,
  `newstag_update_date` datetime NOT NULL,
  `state` int(11) NOT NULL,
  `newstag_img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `newstag`
--

INSERT INTO `newstag` (`newstag_id`, `newstag_name`, `newstag_des`, `newstag_content`, `newstag_sort_order`, `newstag_created_date`, `newstag_update_date`, `state`, `newstag_img`, `newstag_sub_info1`, `newstag_sub_info2`, `newstag_sub_info3`, `newstag_sub_info4`, `newstag_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(2, 'sách hot', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', '', '', '', '', '', 'sách hot', 'chuyên sách', 'sach-hot', 'sach', 1),
(3, 'Vở đẹp', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', '', '', '', '', '', 'Vở đẹp', '', 'vo-dep', '', 1),
(4, 'Butb', '<p>bb</p>\r\n', '', 0, '2017-12-13 11:12:54', '2017-12-13 11:12:11', 1, '', '', '', '', '', '', 'Butb', 'bb', 'butb', 'bb', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newstag_languages`
--

CREATE TABLE `newstag_languages` (
  `id` int(11) NOT NULL,
  `newstag_id` int(11) NOT NULL,
  `languages_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_content` text CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `lang_newstag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info5` text CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `edit_state` int(11) NOT NULL,
  `friendly_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `newstag_languages`
--

INSERT INTO `newstag_languages` (`id`, `newstag_id`, `languages_code`, `lang_newstag_name`, `lang_newstag_des`, `lang_newstag_content`, `lang_newstag_sub_info1`, `lang_newstag_sub_info2`, `lang_newstag_sub_info3`, `lang_newstag_sub_info4`, `lang_newstag_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(3, 2, 'vn', 'sách hot', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', '', '', '', '', '', 1, 'sach-hot', 'sach', 'sách hot', 'chuyên sách'),
(4, 2, 'en', 'sách en', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', '', '', '', '', '', 1, 'sach', 'sach', 'sách', 'chuyên sách'),
(5, 3, 'vn', 'Vở đẹp', '', '', '', '', '', '', '', 1, 'vo-dep', '', 'Vở đẹp', ''),
(6, 3, 'en', 'Vở đẹp', '', '', '', '', '', '', '', 1, 'vo-dep', '', 'Vở đẹp', ''),
(7, 4, 'vn', 'But', '<p>but</p>\r\n', '', '', '', '', '', '', 1, 'butb', 'bb', 'Butb', 'bb'),
(8, 4, 'en', 'pen', '<p>pen</p>\r\n', '', '', '', '', '', '', 1, 'but', 'b', 'But', 'b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_languages`
--

CREATE TABLE `news_languages` (
  `id` bigint(20) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_name` text COLLATE utf8_unicode_ci,
  `lang_news_des` text COLLATE utf8_unicode_ci,
  `lang_news_content` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_languages`
--

INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(137, 69, 'vn', 'Xích đu sân vườn', 'cùng với khoảng trống nhỏ bên ngoài hiên nhà, bạn hoàn toàn có thể tạo cho mình một không gian riêng tư để thư giãn và hít thở không khí trong lành mỗi sáng thức dậy giúp cho bạn có cảm giác thư thái hơn rất nhiều', '<p><strong>c&ugrave;ng với khoảng trống nhỏ b&ecirc;n ngo&agrave;i hi&ecirc;n nh&agrave;, bạn ho&agrave;n to&agrave;n c&oacute; thể tạo cho m&igrave;nh một kh&ocirc;ng gian ri&ecirc;ng tư để thư gi&atilde;n v&agrave; h&iacute;t thở kh&ocirc;ng kh&iacute; trong l&agrave;nh mỗi s&aacute;ng thức dậy gi&uacute;p cho bạn c&oacute; cảm gi&aacute;c thư th&aacute;i hơn rất nhiều.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-M&agrave;u sắc đa dạng&nbsp;<br />\r\n-Kiểu mẫu t&ugrave;y kh&aacute;ch h&agrave;ng chọn hoặc c&oacute; thể chọn c&aacute;c mẫu c&oacute; sẵn b&ecirc;n ch&uacute;ng t&ocirc;i.&nbsp;</p>\r\n', '', '', '', '', '', 0, 'xich-du-san-vuon', 'Xích đu sân vườn', '', ''),
(138, 69, 'en', 'english version Xích đu sân vườn', 'english version cùng với khoảng trống nhỏ bên ngoài hiên nhà, bạn hoàn toàn có thể tạo cho mình một không gian riêng tư để thư giãn và hít thở không khí trong lành mỗi sáng thức dậy giúp cho bạn có cảm giác thư thái hơn rất nhiều', 'english version <p><strong>c&ugrave;ng với khoảng trống nhỏ b&ecirc;n ngo&agrave;i hi&ecirc;n nh&agrave;, bạn ho&agrave;n to&agrave;n c&oacute; thể tạo cho m&igrave;nh một kh&ocirc;ng gian ri&ecirc;ng tư để thư gi&atilde;n v&agrave; h&iacute;t thở kh&ocirc;ng kh&iacute; trong l&agrave;nh mỗi s&aacute;ng thức dậy gi&uacute;p cho bạn c&oacute; cảm gi&aacute;c thư th&aacute;i hơn rất nhiều.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-M&agrave;u sắc đa dạng&nbsp;<br />\r\n-Kiểu mẫu t&ugrave;y kh&aacute;ch h&agrave;ng chọn hoặc c&oacute; thể chọn c&aacute;c mẫu c&oacute; sẵn b&ecirc;n ch&uacute;ng t&ocirc;i.&nbsp;</p>\r\n', '', '', '', '', '', 0, 'en-xich-du-san-vuon', 'Xích đu sân vườn', '', ''),
(139, 70, 'vn', 'Kệ trung tải', 'CÔNG TRÌNH KỆ TRUNG TẢI TẠI NGÂN HÀNG CÔNG THƯƠNG TỈNH HÒA BÌNH CTY TNHH TM&SX THÀNH HƯNG PHÁT là một trong những cty đi đầu về sản xuất gái kệ để hàng tại thị trường Việt Nam. Chũng tôi chuyên cung cấp các loại giá kệ để hàng như: Kệ Shelving ( trung tải), Kệ Selective, Kẹ sắt V lỗ đa năng, Kệ sàn ...... Cty chúng tôi đã thi công lắp đặt giá kệ cho rất nhiều đối tác như: Cty SamSung Yên Phong& Bắc Ninh. YAMAHA MOTOR VIỆT NAM, PIAGIO BÌNH XUYÊN, TOYOTA, NASCO NỘI BÀI..... THÀNH HƯNG PHÁT CAM KẾT', '<p><strong>C&Ocirc;NG TR&Igrave;NH KỆ TRUNG TẢI TẠI NG&Acirc;N H&Agrave;NG C&Ocirc;NG THƯƠNG TỈNH H&Ograve;A B&Igrave;NH CTY TNHH TM&amp;SX TH&Agrave;NH HƯNG PH&Aacute;T l&agrave; một trong những cty đi đầu về sản xuất g&aacute;i kệ để h&agrave;ng tại thị trường Việt Nam. Chũng t&ocirc;i chuy&ecirc;n cung cấp c&aacute;c loại gi&aacute; kệ để h&agrave;ng như: Kệ Shelving ( trung tải), Kệ Selective, Kẹ sắt V lỗ đa năng, Kệ s&agrave;n ...... Cty ch&uacute;ng t&ocirc;i đ&atilde; thi c&ocirc;ng lắp đặt gi&aacute; kệ cho rất nhiều đối t&aacute;c như: Cty SamSung Y&ecirc;n Phong&amp; Bắc Ninh. YAMAHA MOTOR VIỆT NAM, PIAGIO B&Igrave;NH XUY&Ecirc;N, TOYOTA, NASCO NỘI B&Agrave;I..... TH&Agrave;NH HƯNG PH&Aacute;T CAM KẾT BẢO H&Agrave;NH H&Agrave;NG H&Oacute;A TỪ 5-10 NĂM.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Kệ trung tải với k&iacute;ch thước đa dạng. T&ugrave;y chỉnh chiều cao c&aacute;c tầng theo &yacute; muốn sao cho ph&ugrave; hợp với từng loại mặt h&agrave;ng.<br />\r\n- Kệ trung tải hay c&ograve;n gọi l&agrave; kệ Shelving kh&ocirc;ng chỉ ph&ugrave; hợp với để h&agrave;ng m&agrave; cũng c&oacute; thể để c&aacute;c loại hồ sơ t&agrave;i liệu.</p>\r\n', '', '', '', '', '', 0, 'ke-trung-tai', 'Kệ trung tải', '', ''),
(140, 70, 'en', 'english version Kệ trung tải', 'english version CÔNG TRÌNH KỆ TRUNG TẢI TẠI NGÂN HÀNG CÔNG THƯƠNG TỈNH HÒA BÌNH CTY TNHH TM&SX THÀNH HƯNG PHÁT là một trong những cty đi đầu về sản xuất gái kệ để hàng tại thị trường Việt Nam. Chũng tôi chuyên cung cấp các loại giá kệ để hàng như: Kệ Shelving ( trung tải), Kệ Selective, Kẹ sắt V lỗ đa năng, Kệ sàn ...... Cty chúng tôi đã thi công lắp đặt giá kệ cho rất nhiều đối tác như: Cty SamSung Yên Phong& Bắc Ninh. YAMAHA MOTOR VIỆT NAM, PIAGIO BÌNH XUYÊN, TOYOTA, NASCO NỘI BÀI..... THÀNH HƯNG PHÁT CAM KẾT', 'english version <p><strong>C&Ocirc;NG TR&Igrave;NH KỆ TRUNG TẢI TẠI NG&Acirc;N H&Agrave;NG C&Ocirc;NG THƯƠNG TỈNH H&Ograve;A B&Igrave;NH CTY TNHH TM&amp;SX TH&Agrave;NH HƯNG PH&Aacute;T l&agrave; một trong những cty đi đầu về sản xuất g&aacute;i kệ để h&agrave;ng tại thị trường Việt Nam. Chũng t&ocirc;i chuy&ecirc;n cung cấp c&aacute;c loại gi&aacute; kệ để h&agrave;ng như: Kệ Shelving ( trung tải), Kệ Selective, Kẹ sắt V lỗ đa năng, Kệ s&agrave;n ...... Cty ch&uacute;ng t&ocirc;i đ&atilde; thi c&ocirc;ng lắp đặt gi&aacute; kệ cho rất nhiều đối t&aacute;c như: Cty SamSung Y&ecirc;n Phong&amp; Bắc Ninh. YAMAHA MOTOR VIỆT NAM, PIAGIO B&Igrave;NH XUY&Ecirc;N, TOYOTA, NASCO NỘI B&Agrave;I..... TH&Agrave;NH HƯNG PH&Aacute;T CAM KẾT BẢO H&Agrave;NH H&Agrave;NG H&Oacute;A TỪ 5-10 NĂM.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Kệ trung tải với k&iacute;ch thước đa dạng. T&ugrave;y chỉnh chiều cao c&aacute;c tầng theo &yacute; muốn sao cho ph&ugrave; hợp với từng loại mặt h&agrave;ng.<br />\r\n- Kệ trung tải hay c&ograve;n gọi l&agrave; kệ Shelving kh&ocirc;ng chỉ ph&ugrave; hợp với để h&agrave;ng m&agrave; cũng c&oacute; thể để c&aacute;c loại hồ sơ t&agrave;i liệu.</p>\r\n', '', '', '', '', '', 0, 'en-ke-trung-tai', 'Kệ trung tải', '', ''),
(141, 71, 'vn', 'Giá săt V lỗ đa năng và phụ kiện', 'Công ty TNHH THƯƠNG MẠI VÀ SẢN XUẤT THÀNH HƯNG PHÁT. Ngành nghề kinh doanh chính: - Sản xuất kệ sắt V lỗ đa năng, các loại kệ công nghiệp, Kệ shelving Trung tải, Kệ Selective.... - Gia Công Cơ Khí, Tráng phủ kim loại - Sản xuất và lắp đặt các loại kệ đa năng', '<p><strong>C&ocirc;ng ty TNHH THƯƠNG MẠI V&Agrave; SẢN XUẤT TH&Agrave;NH HƯNG PH&Aacute;T. Ng&agrave;nh nghề kinh doanh ch&iacute;nh: - Sản xuất kệ sắt V lỗ đa năng, c&aacute;c loại kệ c&ocirc;ng nghiệp, Kệ shelving Trung tải, Kệ Selective.... - Gia C&ocirc;ng Cơ Kh&iacute;, Tr&aacute;ng phủ kim loại - Sản xuất v&agrave; lắp đặt c&aacute;c loại kệ đa năng.....</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sản phẩm kệ sắt V lỗ đa năng bao gồm<br />\r\n- V lỗ: V3*3; V4*4; V3*5; V4*6; V1*3&nbsp;<br />\r\n- Với c&aacute;c độ d&agrave;i 2m; 2,4m; 3m tương ứng với c&aacute;c độ d&agrave;y c&oacute; sẵn l&agrave;: 1,6mm;1,8mm;2mm<br />\r\n- M&agrave;u sơn c&oacute; sẵn l&agrave; m&agrave;u ghi, trắng.<br />\r\n- S&agrave;n t&ocirc;n đa năng Bao gồm c&aacute;c k&iacute;ch thước chiều rộng: 300mm; 400mm;500mm;600mm ( Sản xuất theo đơn đặt h&agrave;ng).<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chiều d&agrave;i tương ứng: 800mm; 900mm;1000mm; 1100mm;1200mm; 1500mm( Nhận sản xuất&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;theo đơn đặt h&agrave;ng)&nbsp; &nbsp; &nbsp;<br />\r\n* Với độ d&agrave;y s&agrave;n t&ocirc;n đa năng: 0,6mm; 0,7mm; 0,8mm,1mm; 1,2mm&nbsp;( H&agrave;ng c&oacute; sẵn chỉ c&oacute; độ d&agrave;y 0,7mm)&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n<strong>Bảng gi&aacute; cụ thể từng sản phẩm V lỗ:</strong><br />\r\nĐộ d&agrave;y 1,6mm:<br />\r\n- V3*3 gi&aacute; 12,500/m&eacute;t d&agrave;i(md)<br />\r\n- V4*4 v&agrave; V3*5 gi&aacute;: 17,000/&nbsp;md<br />\r\n- V 4*6 gi&aacute; l&agrave; 20,000/md<br />\r\nĐộ d&agrave;y 1,8mm:<br />\r\n- V3*3 gi&aacute; 13,500/m&eacute;t d&agrave;i(md)<br />\r\n- V4*4 v&agrave; V3*5 gi&aacute;: 18.500/&nbsp;md<br />\r\n- V 4*6 gi&aacute; l&agrave; 22.000/md<br />\r\nĐộ d&agrave;y 2mm:&nbsp;<br />\r\n- V3*3 gi&aacute; 14,500/m&eacute;t d&agrave;i(md)<br />\r\n- V4*4 v&agrave; V3*5 gi&aacute;: 20.000/&nbsp;md<br />\r\n- V 4*6 gi&aacute; l&agrave; 24.000/md<br />\r\n* S&agrave;n t&ocirc;n đa năng:<br />\r\n-&nbsp;Với độ d&agrave;y 0,7mm c&oacute; sẵn gi&aacute; b&aacute;n l&agrave;m 195,000/m2.<br />\r\n- Với độ d&agrave;y 0,6mm gi&aacute; l&agrave;: 185,000/m2.<br />\r\nTừ độ d&agrave;y 0,7mm trở l&ecirc;n gi&aacute; sẽ c&ocirc;ng th&ecirc;m 25,000 cho mỗi 0,1mm chiều d&agrave;y tăng th&ecirc;m.<br />\r\n* Ke g&oacute;c v&agrave; bulong bắt kệ l&agrave; phụ kiện kh&ocirc;ng thể thiếu của kệ sắt đang gi&aacute; b&aacute;n cụ thể như sau:&nbsp;<br />\r\n- Ke g&oacute;c d&agrave;y 0,8mm gi&aacute; b&aacute;n l&agrave; 600đ/c&aacute;i<br />\r\n- Ốc kệ gi&aacute; b&aacute;n 32,000đ/T&uacute;i ( 95-100 con ốc/t&uacute;i) tương ứng với 1kg)<br />\r\n<br />\r\n<img alt=\"\" src=\"http://cokhisocson.com/upload/images/V%20l%E1%BB%97%20%C4%91a%20n%C4%83ng.jpg\" /></p>\r\n', '', '', '', '', '', 0, 'gia-sat-v-lo-da-nang-va-phu-kien', 'Giá săt V lỗ đa năng và phụ kiện', '', ''),
(142, 71, 'en', 'english version Giá săt V lỗ đa năng và phụ kiện', 'english version Công ty TNHH THƯƠNG MẠI VÀ SẢN XUẤT THÀNH HƯNG PHÁT. Ngành nghề kinh doanh chính: - Sản xuất kệ sắt V lỗ đa năng, các loại kệ công nghiệp, Kệ shelving Trung tải, Kệ Selective.... - Gia Công Cơ Khí, Tráng phủ kim loại - Sản xuất và lắp đặt các loại kệ đa năng', 'english version <p><strong>C&ocirc;ng ty TNHH THƯƠNG MẠI V&Agrave; SẢN XUẤT TH&Agrave;NH HƯNG PH&Aacute;T. Ng&agrave;nh nghề kinh doanh ch&iacute;nh: - Sản xuất kệ sắt V lỗ đa năng, c&aacute;c loại kệ c&ocirc;ng nghiệp, Kệ shelving Trung tải, Kệ Selective.... - Gia C&ocirc;ng Cơ Kh&iacute;, Tr&aacute;ng phủ kim loại - Sản xuất v&agrave; lắp đặt c&aacute;c loại kệ đa năng.....</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sản phẩm kệ sắt V lỗ đa năng bao gồm<br />\r\n- V lỗ: V3*3; V4*4; V3*5; V4*6; V1*3&nbsp;<br />\r\n- Với c&aacute;c độ d&agrave;i 2m; 2,4m; 3m tương ứng với c&aacute;c độ d&agrave;y c&oacute; sẵn l&agrave;: 1,6mm;1,8mm;2mm<br />\r\n- M&agrave;u sơn c&oacute; sẵn l&agrave; m&agrave;u ghi, trắng.<br />\r\n- S&agrave;n t&ocirc;n đa năng Bao gồm c&aacute;c k&iacute;ch thước chiều rộng: 300mm; 400mm;500mm;600mm ( Sản xuất theo đơn đặt h&agrave;ng).<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chiều d&agrave;i tương ứng: 800mm; 900mm;1000mm; 1100mm;1200mm; 1500mm( Nhận sản xuất&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;theo đơn đặt h&agrave;ng)&nbsp; &nbsp; &nbsp;<br />\r\n* Với độ d&agrave;y s&agrave;n t&ocirc;n đa năng: 0,6mm; 0,7mm; 0,8mm,1mm; 1,2mm&nbsp;( H&agrave;ng c&oacute; sẵn chỉ c&oacute; độ d&agrave;y 0,7mm)&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n<strong>Bảng gi&aacute; cụ thể từng sản phẩm V lỗ:</strong><br />\r\nĐộ d&agrave;y 1,6mm:<br />\r\n- V3*3 gi&aacute; 12,500/m&eacute;t d&agrave;i(md)<br />\r\n- V4*4 v&agrave; V3*5 gi&aacute;: 17,000/&nbsp;md<br />\r\n- V 4*6 gi&aacute; l&agrave; 20,000/md<br />\r\nĐộ d&agrave;y 1,8mm:<br />\r\n- V3*3 gi&aacute; 13,500/m&eacute;t d&agrave;i(md)<br />\r\n- V4*4 v&agrave; V3*5 gi&aacute;: 18.500/&nbsp;md<br />\r\n- V 4*6 gi&aacute; l&agrave; 22.000/md<br />\r\nĐộ d&agrave;y 2mm:&nbsp;<br />\r\n- V3*3 gi&aacute; 14,500/m&eacute;t d&agrave;i(md)<br />\r\n- V4*4 v&agrave; V3*5 gi&aacute;: 20.000/&nbsp;md<br />\r\n- V 4*6 gi&aacute; l&agrave; 24.000/md<br />\r\n* S&agrave;n t&ocirc;n đa năng:<br />\r\n-&nbsp;Với độ d&agrave;y 0,7mm c&oacute; sẵn gi&aacute; b&aacute;n l&agrave;m 195,000/m2.<br />\r\n- Với độ d&agrave;y 0,6mm gi&aacute; l&agrave;: 185,000/m2.<br />\r\nTừ độ d&agrave;y 0,7mm trở l&ecirc;n gi&aacute; sẽ c&ocirc;ng th&ecirc;m 25,000 cho mỗi 0,1mm chiều d&agrave;y tăng th&ecirc;m.<br />\r\n* Ke g&oacute;c v&agrave; bulong bắt kệ l&agrave; phụ kiện kh&ocirc;ng thể thiếu của kệ sắt đang gi&aacute; b&aacute;n cụ thể như sau:&nbsp;<br />\r\n- Ke g&oacute;c d&agrave;y 0,8mm gi&aacute; b&aacute;n l&agrave; 600đ/c&aacute;i<br />\r\n- Ốc kệ gi&aacute; b&aacute;n 32,000đ/T&uacute;i ( 95-100 con ốc/t&uacute;i) tương ứng với 1kg)<br />\r\n<br />\r\n<img alt=\"\" src=\"http://cokhisocson.com/upload/images/V%20l%E1%BB%97%20%C4%91a%20n%C4%83ng.jpg\" /></p>\r\n', '', '', '', '', '', 0, 'en-gia-sat-v-lo-da-nang-va-phu-kien', 'Giá săt V lỗ đa năng và phụ kiện', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_tin`
--

CREATE TABLE `nhan_tin` (
  `id` int(11) NOT NULL,
  `email` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ1`
--

CREATE TABLE `optionsQ1` (
  `optionsQ1_id` int(11) NOT NULL,
  `optionsQ1_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ1`
--

INSERT INTO `optionsQ1` (`optionsQ1_id`, `optionsQ1_value`) VALUES
(1, 'Đau rát'),
(2, 'Chảy máu khi đi vệ sinh'),
(3, 'Ngứa ngáy, khó chịu, ẩm ướt có mùi khó chịu'),
(4, 'Búi trĩ sa ra ngoài (nhìn hoặc sờ)'),
(5, 'Không có biểu hiện nào như trên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ2`
--

CREATE TABLE `optionsQ2` (
  `optionsQ2_id` int(11) NOT NULL,
  `optionsQ2_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ2`
--

INSERT INTO `optionsQ2` (`optionsQ2_id`, `optionsQ2_value`) VALUES
(1, 'Có'),
(2, 'Không');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ3`
--

CREATE TABLE `optionsQ3` (
  `optionsQ3_id` int(11) NOT NULL,
  `optionsQ3_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ3`
--

INSERT INTO `optionsQ3` (`optionsQ3_id`, `optionsQ3_value`) VALUES
(1, 'Mới (đang bị)'),
(2, 'Lâu, tái đi tái lại'),
(3, 'Lâu, nhưng giờ đang bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ4`
--

CREATE TABLE `optionsQ4` (
  `optionsQ4_id` int(11) NOT NULL,
  `optionsQ4_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ4`
--

INSERT INTO `optionsQ4` (`optionsQ4_id`, `optionsQ4_value`) VALUES
(1, 'Máu dính trên giấy vệ sinh'),
(2, 'Máu dính trên phân hoặc nhỏ giọt'),
(3, 'Máu chảy thành tia'),
(4, 'Không thấy máu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ5`
--

CREATE TABLE `optionsQ5` (
  `optionsQ5_id` int(11) NOT NULL,
  `optionsQ5_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ5`
--

INSERT INTO `optionsQ5` (`optionsQ5_id`, `optionsQ5_value`) VALUES
(1, 'Hơi đau, tức hậu môn, khó chịu'),
(2, 'Đau nhiều, rát. đỡ khi nằm'),
(3, 'Rất đau rát, đứng ngồi, nằm không yên'),
(4, 'Không đau, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ6`
--

CREATE TABLE `optionsQ6` (
  `optionsQ6_id` int(11) NOT NULL,
  `optionsQ6_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ6`
--

INSERT INTO `optionsQ6` (`optionsQ6_id`, `optionsQ6_value`) VALUES
(1, 'Ít, lồi ra như hạt ngô'),
(2, 'Nhiều, lồi ra bằng 1/3 đốt ngón tay'),
(3, 'Rất nhiều, dài >2.5cm'),
(4, 'Không sa, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ7`
--

CREATE TABLE `optionsQ7` (
  `optionsQ7_id` int(11) NOT NULL,
  `optionsQ7_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ7`
--

INSERT INTO `optionsQ7` (`optionsQ7_id`, `optionsQ7_value`) VALUES
(1, 'Không tự co vào được, ấn vào lại sa ra, hoặc rặn nhẹ là sa ra'),
(2, 'Tự co lên được sau khi ấn vào nhẹ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ8`
--

CREATE TABLE `optionsQ8` (
  `optionsQ8_id` int(11) NOT NULL,
  `optionsQ8_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ8`
--

INSERT INTO `optionsQ8` (`optionsQ8_id`, `optionsQ8_value`) VALUES
(1, 'Khô, thoáng bình thường, không có dịch'),
(2, 'Hơi ẩm, ít mùi'),
(3, 'Ướt, có dịch vào đồ lót, mùi khó chịu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ9`
--

CREATE TABLE `optionsQ9` (
  `optionsQ9_id` int(11) NOT NULL,
  `optionsQ9_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ9`
--

INSERT INTO `optionsQ9` (`optionsQ9_id`, `optionsQ9_value`) VALUES
(1, 'Có'),
(2, 'Không'),
(3, 'Có nhưng mức độ 3-4h/ngày');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_name` text COLLATE utf8_unicode_ci,
  `orders_receiver_email` text COLLATE utf8_unicode_ci,
  `orders_receiver_phone` text COLLATE utf8_unicode_ci,
  `orders_receiver_address` text COLLATE utf8_unicode_ci,
  `orders_receiver_note` text COLLATE utf8_unicode_ci,
  `orders_total_price` float DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `orders_created_date` datetime DEFAULT NULL,
  `orders_state` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_detail_quantity` int(11) DEFAULT NULL,
  `order_detail_price` double DEFAULT NULL,
  `order_detail_note` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `product_name` text COLLATE utf8_unicode_ci,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_state`
--

CREATE TABLE `order_state` (
  `order_state_id` int(11) NOT NULL,
  `order_state_name` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_state`
--

INSERT INTO `order_state` (`order_state_id`, `order_state_name`, `state`) VALUES
(1, 'Chờ xác nhận', 0),
(2, 'Đã xác nhận', 0),
(3, 'Chờ thanh toán', 0),
(4, 'Đã thanh toán', 0),
(5, 'Chờ gửi hàng', 0),
(6, '	\r\nHủy đơn hàng', 0),
(7, '	\r\nĐã chuyển hàng', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `page_name` text COLLATE utf8_unicode_ci,
  `page_des` text COLLATE utf8_unicode_ci,
  `page_content` text COLLATE utf8_unicode_ci,
  `page_img` text COLLATE utf8_unicode_ci,
  `page_created_date` datetime DEFAULT NULL,
  `page_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `page_sub_info1` text COLLATE utf8_unicode_ci,
  `page_sub_info2` text COLLATE utf8_unicode_ci,
  `page_sub_info3` text COLLATE utf8_unicode_ci,
  `page_sub_info4` text COLLATE utf8_unicode_ci,
  `page_sub_info5` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page`
--

INSERT INTO `page` (`page_id`, `page_name`, `page_des`, `page_content`, `page_img`, `page_created_date`, `page_update_date`, `state`, `page_sub_info1`, `page_sub_info2`, `page_sub_info3`, `page_sub_info4`, `page_sub_info5`, `keyword`, `title_seo`, `des_seo`, `friendly_url`, `created_id`) VALUES
(57, 'GIỚI THIỆU', '', '<p><u><strong>I. GIỚI THIỆU CHUNG</strong></u><br />\r\n<br />\r\nTiền th&acirc;n l&agrave; Xưởng cơ kh&iacute; với hộ kinh doanh C&aacute; thể mang t&ecirc;n Th&agrave;nh Ph&aacute;t. Qua qu&aacute; tr&igrave;nh ph&aacute;t triển của khoa hoạc kỹ thuật v&agrave; theo đ&agrave; ph&aacute;t triển của x&atilde; hội đến 1 th&aacute;ng 4 năm 2015 th&igrave; C&Ocirc;NG TY CP SX&amp;TM TH&Agrave;NH HƯNG PH&Aacute;T VIỆT NAM ra đời.<br />\r\nĐược th&agrave;nh lập từ năm 2015 C&ocirc;ng ty được biết đến như một trong những c&ocirc;ng ty gia c&ocirc;ng cơ kh&iacute;, xử l&yacute; v&agrave; tr&aacute;ng phủ kim loại<br />\r\nCh&uacute;ng t&ocirc;i c&oacute; kinh nghiệm sản xuất v&agrave; thi c&ocirc;ng th&agrave;nh c&ocirc;ng cho nhiều c&ocirc;ng tr&igrave;nh, dự &aacute;n v&agrave; được nhiều kh&aacute;ch h&agrave;ng t&iacute;n nhiệm. Kh&aacute;ch h&agrave;ng lu&ocirc;n cảm thấy h&agrave;i l&ograve;ng về sản phẩm đ&atilde; mua v&agrave; tự h&agrave;o về bản th&acirc;n đ&atilde; mua được sản phẩm đ&aacute;ng tin cậy với chi ph&iacute; hợp l&iacute; nhất do TH&Agrave;NH HƯNG PH&Aacute;T thiết kế v&agrave; thi c&ocirc;ng. Để mang lại h&agrave;i l&ograve;ng cho kh&aacute;ch h&agrave;ng ch&uacute;ng t&ocirc;i cam kết mang đến th&agrave;nh c&ocirc;ng cho c&ocirc;ng tr&igrave;nh của bạn với 3 ti&ecirc;u ch&iacute;: &quot;<strong>ĐẸP - CHẤT LƯỢNG - HỢP L&Yacute; ( TIẾT KIỆM TỐI ĐA CHI PH&Iacute; ),&nbsp;</strong><strong>Đ&Aacute;P ỨNG ĐIỀU KIỆN CẦN V&Agrave; ĐỦ CỦA VIỆC THỰC HIỆN 5S&quot;</strong><br />\r\nD&ugrave; c&ograve;n nhiều kh&oacute; khăn th&aacute;ch thức, nhưng với năng lực, kinh nghiệm đ&atilde; được khẳng đinh, với truyền thống của đội tư vấn chuy&ecirc;n nghiệp, c&ocirc;ng ty TNHH Thương Mại v&agrave; Sản Xuất Th&agrave;nh Hưng Ph&aacute;t đ&atilde; , đang v&agrave; sẽ đột ph&aacute;, đạt mức tăng trưởng vững chắc, x&acirc;y dựng thương hiệu ph&aacute;t triển bền vững lu&ocirc;n đ&aacute;p ứng v&agrave; thỏa m&atilde;n nhu cầu của kh&aacute;ch h&agrave;ng<br />\r\nC&ocirc;ng ty TNHH Thương Mại v&agrave; Sản Xuất Th&agrave;nh Hưng Ph&aacute;t lu&ocirc;n cầu thị v&agrave; mong sự quan t&acirc;m hợp t&aacute;c của qu&yacute; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><br />\r\n<u><strong>II. QU&Aacute; TR&Igrave;NH H&Igrave;NH TH&Agrave;NH V&Agrave; PH&Aacute;T TRIỂN</strong></u></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>Năm 2015:</em></strong></p>\r\n\r\n<ul>\r\n	<li>01/04 Th&agrave;nh lập c&ocirc;ng ty Cổ Phần Sản Xuất v&agrave; Thương Mại Th&agrave;nh Hưng Ph&aacute;t Việt Nam</li>\r\n	<li>Vốn điều lệ: 1.500.000.000 đồng</li>\r\n	<li>Cổ đ&ocirc;ng g&oacute;p vốn: 3 người</li>\r\n	<li>Số lao động: 10 người ch&iacute;nh vad gần 20 c&ocirc;ng nh&acirc;n l&agrave;m thời vụ.</li>\r\n</ul>\r\n\r\n<p><strong><em>Năm 2017:</em></strong></p>\r\n\r\n<ul>\r\n	<li>12/10: Chuyển đổi c&ocirc;ng ty CP Sản Xuất v&agrave; Thương Mại Th&agrave;nh Hưng Ph&aacute;t Việt Nam th&agrave;nh C&ocirc;ng Ty TNHH Thương Mại v&agrave; Sản Xuất Th&agrave;nh Hưng Ph&aacute;t</li>\r\n</ul>\r\n\r\n<p><strong><u>III. NG&Agrave;NH NGHỀ V&Agrave; ĐỊA B&Agrave;N KINH DOANH</u></strong></p>\r\n\r\n<ul>\r\n	<li>Ng&agrave;nh nghề: Gia c&ocirc;ng cơ kh&iacute;, xử l&yacute; v&agrave; tr&aacute;ng phủ kim loại, thi c&ocirc;ng lắp r&aacute;p cung cấp c&aacute;c loại kệ như Kệ sắt v lỗ, Kệ trung tải, kệ để hồ sơ văn ph&ograve;ng, Kệ chứa h&agrave;ng</li>\r\n	<li>Chức năng v&agrave; nhiệm vụ:</li>\r\n	<li>Khảo s&aacute;t địa điểm thi c&ocirc;ng, c&ocirc;ng tr&igrave;nh</li>\r\n	<li>Thiết kế v&agrave; tư vấn cho kh&aacute;ch h&agrave;ng</li>\r\n	<li>Gửi B&aacute;o gi&aacute;, Bản vẽ</li>\r\n	<li>Thi c&ocirc;ng lắp đặt v&agrave; ho&agrave;n th&agrave;nh c&ocirc;ng tr&igrave;nh</li>\r\n	<li>Địa b&agrave;n kinh doanh: Tr&ecirc;n to&agrave;n l&atilde;nh thổ Việt Nam</li>\r\n</ul>\r\n\r\n<p><strong>​CHỨNG CHỈ ISO</strong><br />\r\n&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://cokhisocson.com/upload/images/ISO%20-%20CC-SCAN-1.jpg\" /></strong></p>\r\n', 'c48a789885b465ea3ca5.jpg', '2018-08-14 17:08:56', '2020-02-24 16:02:53', 0, '', '', '', '', '', '', 'GIỚI THIỆU', '', 'chao-mung', 1),
(58, 'Dịch vụ sau bán hàng', '', '', '', '2020-02-24 16:02:51', NULL, 1, '', '', '', '', '', '', 'Dịch vụ sau bán hàng', '', 'dich-vu-sau-ban-hang', 9),
(59, 'Dịch vụ chuyên môn', '', '', '', '2020-02-24 16:02:08', NULL, 1, '', '', '', '', '', '', 'Dịch vụ chuyên môn', '', 'dich-vu-chuyen-mon', 9),
(60, 'Dịch vụ tư vấn', '', '', '', '2020-02-24 16:02:23', NULL, 1, '', '', '', '', '', '', 'Dịch vụ tư vấn', '', 'dich-vu-tu-van', 9),
(61, 'Phương thức thanh toán', '', '', '', '2020-02-24 16:02:45', NULL, 1, '', '', '', '', '', '', 'Phương thức thanh toán', '', 'phuong-thuc-thanh-toan', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_languages`
--

CREATE TABLE `page_languages` (
  `id` bigint(20) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_name` text COLLATE utf8_unicode_ci,
  `lang_page_des` text COLLATE utf8_unicode_ci,
  `lang_page_content` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page_languages`
--

INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(79, 57, 'vn', 'GIỚI THIỆU', '', '<p><u><strong>I. GIỚI THIỆU CHUNG</strong></u><br />\r\n<br />\r\nTiền th&acirc;n l&agrave; Xưởng cơ kh&iacute; với hộ kinh doanh C&aacute; thể mang t&ecirc;n Th&agrave;nh Ph&aacute;t. Qua qu&aacute; tr&igrave;nh ph&aacute;t triển của khoa hoạc kỹ thuật v&agrave; theo đ&agrave; ph&aacute;t triển của x&atilde; hội đến 1 th&aacute;ng 4 năm 2015 th&igrave; C&Ocirc;NG TY CP SX&amp;TM TH&Agrave;NH HƯNG PH&Aacute;T VIỆT NAM ra đời.<br />\r\nĐược th&agrave;nh lập từ năm 2015 C&ocirc;ng ty được biết đến như một trong những c&ocirc;ng ty gia c&ocirc;ng cơ kh&iacute;, xử l&yacute; v&agrave; tr&aacute;ng phủ kim loại<br />\r\nCh&uacute;ng t&ocirc;i c&oacute; kinh nghiệm sản xuất v&agrave; thi c&ocirc;ng th&agrave;nh c&ocirc;ng cho nhiều c&ocirc;ng tr&igrave;nh, dự &aacute;n v&agrave; được nhiều kh&aacute;ch h&agrave;ng t&iacute;n nhiệm. Kh&aacute;ch h&agrave;ng lu&ocirc;n cảm thấy h&agrave;i l&ograve;ng về sản phẩm đ&atilde; mua v&agrave; tự h&agrave;o về bản th&acirc;n đ&atilde; mua được sản phẩm đ&aacute;ng tin cậy với chi ph&iacute; hợp l&iacute; nhất do TH&Agrave;NH HƯNG PH&Aacute;T thiết kế v&agrave; thi c&ocirc;ng. Để mang lại h&agrave;i l&ograve;ng cho kh&aacute;ch h&agrave;ng ch&uacute;ng t&ocirc;i cam kết mang đến th&agrave;nh c&ocirc;ng cho c&ocirc;ng tr&igrave;nh của bạn với 3 ti&ecirc;u ch&iacute;: &quot;<strong>ĐẸP - CHẤT LƯỢNG - HỢP L&Yacute; ( TIẾT KIỆM TỐI ĐA CHI PH&Iacute; ),&nbsp;</strong><strong>Đ&Aacute;P ỨNG ĐIỀU KIỆN CẦN V&Agrave; ĐỦ CỦA VIỆC THỰC HIỆN 5S&quot;</strong><br />\r\nD&ugrave; c&ograve;n nhiều kh&oacute; khăn th&aacute;ch thức, nhưng với năng lực, kinh nghiệm đ&atilde; được khẳng đinh, với truyền thống của đội tư vấn chuy&ecirc;n nghiệp, c&ocirc;ng ty TNHH Thương Mại v&agrave; Sản Xuất Th&agrave;nh Hưng Ph&aacute;t đ&atilde; , đang v&agrave; sẽ đột ph&aacute;, đạt mức tăng trưởng vững chắc, x&acirc;y dựng thương hiệu ph&aacute;t triển bền vững lu&ocirc;n đ&aacute;p ứng v&agrave; thỏa m&atilde;n nhu cầu của kh&aacute;ch h&agrave;ng<br />\r\nC&ocirc;ng ty TNHH Thương Mại v&agrave; Sản Xuất Th&agrave;nh Hưng Ph&aacute;t lu&ocirc;n cầu thị v&agrave; mong sự quan t&acirc;m hợp t&aacute;c của qu&yacute; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><br />\r\n<u><strong>II. QU&Aacute; TR&Igrave;NH H&Igrave;NH TH&Agrave;NH V&Agrave; PH&Aacute;T TRIỂN</strong></u></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>Năm 2015:</em></strong></p>\r\n\r\n<ul>\r\n	<li>01/04 Th&agrave;nh lập c&ocirc;ng ty Cổ Phần Sản Xuất v&agrave; Thương Mại Th&agrave;nh Hưng Ph&aacute;t Việt Nam</li>\r\n	<li>Vốn điều lệ: 1.500.000.000 đồng</li>\r\n	<li>Cổ đ&ocirc;ng g&oacute;p vốn: 3 người</li>\r\n	<li>Số lao động: 10 người ch&iacute;nh vad gần 20 c&ocirc;ng nh&acirc;n l&agrave;m thời vụ.</li>\r\n</ul>\r\n\r\n<p><strong><em>Năm 2017:</em></strong></p>\r\n\r\n<ul>\r\n	<li>12/10: Chuyển đổi c&ocirc;ng ty CP Sản Xuất v&agrave; Thương Mại Th&agrave;nh Hưng Ph&aacute;t Việt Nam th&agrave;nh C&ocirc;ng Ty TNHH Thương Mại v&agrave; Sản Xuất Th&agrave;nh Hưng Ph&aacute;t</li>\r\n</ul>\r\n\r\n<p><strong><u>III. NG&Agrave;NH NGHỀ V&Agrave; ĐỊA B&Agrave;N KINH DOANH</u></strong></p>\r\n\r\n<ul>\r\n	<li>Ng&agrave;nh nghề: Gia c&ocirc;ng cơ kh&iacute;, xử l&yacute; v&agrave; tr&aacute;ng phủ kim loại, thi c&ocirc;ng lắp r&aacute;p cung cấp c&aacute;c loại kệ như Kệ sắt v lỗ, Kệ trung tải, kệ để hồ sơ văn ph&ograve;ng, Kệ chứa h&agrave;ng</li>\r\n	<li>Chức năng v&agrave; nhiệm vụ:</li>\r\n	<li>Khảo s&aacute;t địa điểm thi c&ocirc;ng, c&ocirc;ng tr&igrave;nh</li>\r\n	<li>Thiết kế v&agrave; tư vấn cho kh&aacute;ch h&agrave;ng</li>\r\n	<li>Gửi B&aacute;o gi&aacute;, Bản vẽ</li>\r\n	<li>Thi c&ocirc;ng lắp đặt v&agrave; ho&agrave;n th&agrave;nh c&ocirc;ng tr&igrave;nh</li>\r\n	<li>Địa b&agrave;n kinh doanh: Tr&ecirc;n to&agrave;n l&atilde;nh thổ Việt Nam</li>\r\n</ul>\r\n\r\n<p><strong>​CHỨNG CHỈ ISO</strong><br />\r\n&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://cokhisocson.com/upload/images/ISO%20-%20CC-SCAN-1.jpg\" /></strong></p>\r\n', '', '', '', '', '', 1, 'chao-mung', 'GIỚI THIỆU', '', ''),
(80, 57, 'en', 'Introduce', '', '<p>english version</p>\r\n', '', '', '', '', '', 1, 'en-chao-mung', 'Introduct', '', ''),
(81, 58, 'vn', 'Dịch vụ sau bán hàng', '', '', '', '', '', '', '', 1, 'dich-vu-sau-ban-hang', 'Dịch vụ sau bán hàng', '', ''),
(82, 58, 'en', 'After sales service', 'english version ', '<p>english version</p>\r\n', '', '', '', '', '', 1, 'en-dich-vu-sau-ban-hang', 'Dịch vụ sau bán hàng', '', ''),
(83, 59, 'vn', 'Dịch vụ chuyên môn', '', '', '', '', '', '', '', 1, 'dich-vu-chuyen-mon', 'Dịch vụ chuyên môn', '', ''),
(84, 59, 'en', 'Professional service', 'english version ', '<p>english version</p>\r\n', '', '', '', '', '', 1, 'en-dich-vu-chuyen-mon', 'Dịch vụ chuyên môn', '', ''),
(85, 60, 'vn', 'Dịch vụ tư vấn', '', '', '', '', '', '', '', 1, 'dich-vu-tu-van', 'Dịch vụ tư vấn', '', ''),
(86, 60, 'en', 'Consulting services', 'english version ', '<p>english version</p>\r\n', '', '', '', '', '', 1, 'en-dich-vu-tu-van', 'Dịch vụ tư vấn', '', ''),
(87, 61, 'vn', 'Phương thức thanh toán', '', '', '', '', '', '', '', 1, 'phuong-thuc-thanh-toan', 'Phương thức thanh toán', '', ''),
(88, 61, 'en', 'Payment methods', 'english version ', '<p>english version</p>\r\n', '', '', '', '', '', 1, 'en-phuong-thuc-thanh-toan', 'Phương thức thanh toán', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `alias` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_des` text COLLATE utf8_unicode_ci,
  `product_des2` text COLLATE utf8_unicode_ci,
  `product_des3` text COLLATE utf8_unicode_ci,
  `product_content` text COLLATE utf8_unicode_ci,
  `product_content2` text COLLATE utf8_unicode_ci,
  `product_content3` text COLLATE utf8_unicode_ci,
  `product_price` int(225) DEFAULT NULL,
  `product_price_sale` int(225) DEFAULT NULL,
  `product_discount` float DEFAULT NULL,
  `product_img` text COLLATE utf8_unicode_ci,
  `product_img_2` text COLLATE utf8_unicode_ci,
  `product_sub_img` text COLLATE utf8_unicode_ci,
  `product_created_date` datetime DEFAULT NULL,
  `product_update_date` datetime DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_hot` int(11) DEFAULT '0',
  `product_new` int(11) DEFAULT '0',
  `product_sale` int(11) DEFAULT '0',
  `product_code` text COLLATE utf8_unicode_ci,
  `product_original` text COLLATE utf8_unicode_ci,
  `product_size` text COLLATE utf8_unicode_ci,
  `product_package` text COLLATE utf8_unicode_ci,
  `product_delivery` text COLLATE utf8_unicode_ci,
  `product_delivery_time` text COLLATE utf8_unicode_ci,
  `product_payment` text COLLATE utf8_unicode_ci,
  `product_payment_type` text COLLATE utf8_unicode_ci,
  `product_sub_info1` text COLLATE utf8_unicode_ci,
  `product_sub_info2` text COLLATE utf8_unicode_ci,
  `product_sub_info3` text COLLATE utf8_unicode_ci,
  `product_sub_info4` text COLLATE utf8_unicode_ci,
  `product_sub_info5` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `product_material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_shape` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_expiration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_producer` int(11) DEFAULT NULL,
  `product_review` text COLLATE utf8_unicode_ci,
  `productcat_ar` text COLLATE utf8_unicode_ci,
  `producttag_arr` varchar(10000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `alias`, `product_des`, `product_des2`, `product_des3`, `product_content`, `product_content2`, `product_content3`, `product_price`, `product_price_sale`, `product_discount`, `product_img`, `product_img_2`, `product_sub_img`, `product_created_date`, `product_update_date`, `productcat_id`, `product_hot`, `product_new`, `product_sale`, `product_code`, `product_original`, `product_size`, `product_package`, `product_delivery`, `product_delivery_time`, `product_payment`, `product_payment_type`, `product_sub_info1`, `product_sub_info2`, `product_sub_info3`, `product_sub_info4`, `product_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `product_material`, `product_shape`, `product_expiration`, `product_producer`, `product_review`, `productcat_ar`, `producttag_arr`) VALUES
(2036, 'Kệ sắt V lỗ 1', NULL, '', '', '', '', '', '', 0, 0, 0, 'Kệ sắt V lỗ 01.jpg', '', '[]', '2020-02-19 17:02:29', '2020-02-21 15:02:43', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Kệ sắt V lỗ 1', '', 'ke-sat-v-lo-1', '', 9, '', '', '', NULL, NULL, '485,485', NULL),
(2037, 'Kệ sắt V lỗ 2', NULL, '', '', '', '', '', '', 0, 0, 0, 'Kệ sắt V lỗ 02.jpg', '', '[]', '2020-02-20 08:02:37', '2020-02-21 15:02:52', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Kệ sắt V lỗ 2', '', 'ke-sat-v-lo-2', '', 9, '', '', '', NULL, NULL, '485,485', NULL),
(2038, 'Kệ Shelving trung tải 1', NULL, '', '', '', '', '', '', 0, 0, 0, 'Kệ Trung tải 01.jpg', '', '[]', '2020-02-20 08:02:09', '2020-02-21 15:02:37', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Kệ Shelving trung tải 1', '', 'ke-shelving-trung-tai-1', '', 9, '', '', '', NULL, NULL, '486,486', NULL),
(2039, 'Kệ SELECTIVE hạng nặng 1', NULL, '', '', '', '', '', '', 0, 0, 0, 'Kệ Selective 01.jpg', '', '[]', '2020-02-20 08:02:06', '2020-02-21 15:02:21', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Kệ SELECTIVE hạng nặng 1', '', 'ke-selective-hang-nang-1', '', 9, '', '', '', NULL, NULL, '487,487', NULL),
(2040, 'Giá sách thư viện 1', NULL, '', '', '', '', '', '', 0, 0, 0, 'thumbnail_1_158c4676d3615d389d1b103c30a93f43.jpg', '', '[]', '2020-02-20 08:02:53', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Giá sách thư viện 1', '', 'gia-sach-thu-vien-1', '', 9, '', '', '', NULL, NULL, '492,492', NULL),
(2041, 'Kệ hồ sơ di động 1', NULL, '', '', '', '', '', '', 0, 0, 0, 'thumbnail_1_c4d3444ab1028bf2ea27be856134289c.jpg', '', '[]', '2020-02-20 08:02:41', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Kệ hồ sơ di động 1', '', 'ke-ho-so-di-dong-1', '', 9, '', '', '', NULL, NULL, '488,488', NULL),
(2042, 'Kệ giày dép 1', NULL, '', '', '', '', '', '', 0, 0, 0, 'thumbnail_1_05051db8787188e84edc88be6545f165.png', '', '[]', '2020-02-20 08:02:35', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Kệ giày dép 1', '', 'ke-giay-dep-1', '', 9, '', '', '', NULL, NULL, '489,489', NULL),
(2043, 'Kệ siêu thị 1', NULL, '', '', '', '', '', '', 0, 0, 0, 'thumbnail_1_4b6766c3f6d664a92e2a873f0dd7b923.jpg', '', '[]', '2020-02-20 08:02:08', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Kệ siêu thị 1', '', 'ke-sieu-thi-1', '', 9, '', '', '', NULL, NULL, '490,490', NULL),
(2044, 'Kệ V lỗ ván ép 1', NULL, '', '', '', '', '', '', 0, 0, 0, 'thumbnail_1_5064a0f079bde65c2ce88db2a3d7a4cc.jpg', '', '[]', '2020-02-20 08:02:43', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Kệ V lỗ ván ép 1', '', 'ke-v-lo-van-ep-1', '', 9, '', '', '', NULL, NULL, '491,491', NULL),
(2045, 'Lưới hàn ô vuông 1', NULL, '', '', '', '', '', '', 0, 0, 0, 'thumbnail_1_8649093b2a5e4b7c245aaf3bb1ff1aaf.jpg', '', '[]', '2020-02-20 08:02:31', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Lưới hàn ô vuông 1', '', 'luoi-han-o-vuong-1', '', 9, '', '', '', NULL, NULL, '493,493', NULL),
(2046, 'Săt V lỗi đa năng', NULL, '', '', '', '', '', '', 0, 0, 0, 'thumbnail_1_73bea368b781d1d33889b4502e68da83.jpg', '', '[]', '2020-02-20 08:02:11', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Săt V lỗi đa năng', '', 'sat-v-loi-da-nang', '', 9, '', '', '', NULL, NULL, '494,494', NULL),
(2047, 'Cổng sắt biệt thự số 1', NULL, '', '', '', '', '', '', 0, 0, 0, 'thumbnail_1_021c5e538fe828461d07b8010612295e.jpg', '', '[]', '2020-02-20 08:02:47', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Cổng sắt biệt thự số 1', '', 'cong-sat-biet-thu-so-1', '', 9, '', '', '', NULL, NULL, '495,495', NULL),
(2048, 'Hàng rao di đông 1', NULL, '', '', '', '', '', '', 0, 0, 0, 'thumbnail_1_a31e621eb6c7ccd2ccd7e8e13a091773.jpg', '', '[]', '2020-02-20 08:02:26', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Hàng rao di đông 1', '', 'hang-rao-di-dong-1', '', 9, '', '', '', NULL, NULL, '496,496', NULL),
(2049, 'Kệ sắt V lỗ 3', NULL, '', '', '', '<p>1</p>\r\n', '', '', 0, 0, 0, 'Kệ sắt V lỗ 03.jpg', '', '[]', '2020-02-21 15:02:14', '2020-02-24 14:02:47', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Kệ sắt V lỗ 3', '', 'ke-sat-v-lo-3', '', 9, '', '', '', NULL, NULL, '485,485', NULL),
(2050, 'Kệ SELECTIVE hạng nặng 2', NULL, '', '', '', '', '', '', 0, 0, 0, 'Kệ Selective 02.jpg', '', '[]', '2020-02-21 15:02:51', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Kệ SELECTIVE hạng nặng 2', '', 'ke-selective-hang-nang-2', '', 9, '', '', '', NULL, NULL, '487,487', NULL),
(2051, 'Kệ SELECTIVE hạng nặng 3', NULL, '', '', '', '', '', '', 0, 0, 0, 'Kệ Selective 03.jpg', '', '[]', '2020-02-21 15:02:06', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Kệ SELECTIVE hạng nặng 3', '', 'ke-selective-hang-nang-3', '', 9, '', '', '', NULL, NULL, '487,487', NULL),
(2052, 'Kệ Shelving trung tải 2', NULL, '', '', '', '', '', '', 0, 0, 0, 'Kệ trung tải 02.png', '', '[]', '2020-02-21 15:02:01', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Kệ Shelving trung tải 2', '', 'ke-shelving-trung-tai-2', '', 9, '', '', '', NULL, NULL, '486,486', NULL),
(2053, 'Kệ Shelving trung tải 3', NULL, '', '', '', '', '', '', 0, 0, 0, 'Kệ trung tải 03.jpg', '', '[]', '2020-02-21 15:02:18', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Kệ Shelving trung tải 3', '', 'ke-shelving-trung-tai-3', '', 9, '', '', '', NULL, NULL, '486,486', NULL),
(2054, 'Kệ Shelving trung tải 4', NULL, '', '', '', '', '', '', 0, 0, 0, 'Kệ trung tải 04.jpg', '', '[]', '2020-02-21 15:02:46', '2020-02-21 15:02:50', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Kệ Shelving trung tải 4', '', 'ke-shelving-trung-tai-4', '', 9, '', '', '', NULL, NULL, '486,486', NULL),
(2055, 'Kệ Shelving trung tải 5', NULL, '', '', '', '', '', '', 0, 0, 0, 'Kệ trung tải 05.jpg', '', '[]', '2020-02-21 15:02:08', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Kệ Shelving trung tải 5', '', 'ke-shelving-trung-tai-5', '', 9, '', '', '', NULL, NULL, '486,486', NULL),
(2056, 'Kệ Shelving trung tải 6', NULL, '', '', '', '', '', '', 0, 0, 0, 'Kệ trung tải 06.jpg', '', '[]', '2020-02-21 15:02:31', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Kệ Shelving trung tải 6', '', 'ke-shelving-trung-tai-6', '', 9, '', '', '', NULL, NULL, '486,486', NULL),
(2057, 'Kệ Shelving trung tải 7', NULL, '', '', '', '', '', '', 0, 0, 0, 'Kệ trung tải 07 (1).jpg', '', '[]', '2020-02-21 15:02:48', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Kệ Shelving trung tải 7', '', 'ke-shelving-trung-tai-7', '', 9, '', '', '', NULL, NULL, '486,486', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat`
--

CREATE TABLE `productcat` (
  `productcat_id` int(11) NOT NULL,
  `productcat_name` text COLLATE utf8_unicode_ci,
  `productcat_des` text COLLATE utf8_unicode_ci,
  `productcat_content` text COLLATE utf8_unicode_ci,
  `productcat_parent` int(11) NOT NULL DEFAULT '0',
  `productcat_sort_order` int(11) NOT NULL DEFAULT '0',
  `productcat_img` text COLLATE utf8_unicode_ci,
  `productcat_sub` text COLLATE utf8_unicode_ci NOT NULL,
  `productcat_main_img` text COLLATE utf8_unicode_ci NOT NULL,
  `productcat_sub_img` text COLLATE utf8_unicode_ci NOT NULL,
  `productcat_banner_img` text COLLATE utf8_unicode_ci NOT NULL,
  `productcat_created_date` datetime DEFAULT NULL,
  `productcat_update_date` datetime DEFAULT NULL,
  `productcat_sub_info1` text COLLATE utf8_unicode_ci,
  `productcat_sub_info2` text COLLATE utf8_unicode_ci,
  `productcat_sub_info3` text COLLATE utf8_unicode_ci,
  `productcat_sub_info4` text COLLATE utf8_unicode_ci,
  `productcat_sub_info5` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `productcat_sub_img1` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcat`
--

INSERT INTO `productcat` (`productcat_id`, `productcat_name`, `productcat_des`, `productcat_content`, `productcat_parent`, `productcat_sort_order`, `productcat_img`, `productcat_sub`, `productcat_main_img`, `productcat_sub_img`, `productcat_banner_img`, `productcat_created_date`, `productcat_update_date`, `productcat_sub_info1`, `productcat_sub_info2`, `productcat_sub_info3`, `productcat_sub_info4`, `productcat_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `productcat_sub_img1`) VALUES
(482, 'Các loại kệ', '', '', 0, 0, 'thumbnail_1_c4d3444ab1028bf2ea27be856134289c.jpg', '', '', '', '', '2020-02-19 18:02:07', NULL, '', '', '', '', '', 1, 'Các loại kệ', '', 'cac-loai-ke', '', 9, '[]'),
(483, 'Các loại giá', '', '', 0, 0, 'thumbnail_1_158c4676d3615d389d1b103c30a93f43.jpg', '', '', '', '', '2020-02-19 18:02:59', NULL, '', '', '', '', '', 1, 'Các loại giá', '', 'cac-loai-gia', '', 9, '[]'),
(484, 'Các loại khác', '', '', 0, 0, 'thumbnail_1_a31e621eb6c7ccd2ccd7e8e13a091773.jpg', '', '', '', '', '2020-02-20 08:02:26', NULL, '', '', '', '', '', 1, 'Các loại khác', '', 'cac-loai-khac', '', 9, '[]'),
(485, 'Kệ sắt V lỗ', '', '', 482, 0, 'Kệ sắt V lỗ 01.jpg', '', '', '', '', '2020-02-21 15:02:03', NULL, '', '', '', '', '', 1, 'Kệ sắt V lỗ', '', 'ke-sat-v-lo', '', 9, '[]'),
(486, 'Kệ shelving trung tải', '', '', 482, 0, 'Kệ trung tải 02.png', '', '', '', '', '2020-02-21 15:02:34', NULL, '', '', '', '', '', 1, 'Kệ shelving trung tải', '', 'ke-shelving-trung-tai', '', 9, '[]'),
(487, 'Kệ selective hạng nặng', '', '', 482, 0, 'Kệ Selective 02.jpg', '', '', '', '', '2020-02-21 15:02:45', NULL, '', '', '', '', '', 1, 'Kệ selective hạng nặng', '', 'ke-selective-hang-nang', '', 9, '[]'),
(488, 'Kệ hồ sơ di động', '', '', 482, 0, 'thumbnail_1_5705162659ded382889a4297113beb27.png', '', '', '', '', '2020-02-19 18:02:48', NULL, '', '', '', '', '', 1, 'Kệ hồ sơ di động', '', 'ke-ho-so-di-dong', '', 9, '[]'),
(489, 'Kệ giày dép', '', '', 482, 0, 'thumbnail_1_05051db8787188e84edc88be6545f165.png', '', '', '', '', '2020-02-19 18:02:19', NULL, '', '', '', '', '', 1, 'Kệ giày dép', '', 'ke-giay-dep', '', 9, '[]'),
(490, 'Kệ siêu thị', '', '', 482, 0, 'thumbnail_1_4b6766c3f6d664a92e2a873f0dd7b923.jpg', '', '', '', '', '2020-02-19 18:02:42', NULL, '', '', '', '', '', 1, 'Kệ siêu thị', '', 'ke-sieu-thi', '', 9, '[]'),
(491, 'Kệ V lỗ ván ép', '', '', 482, 0, 'thumbnail_1_5064a0f079bde65c2ce88db2a3d7a4cc.jpg', '', '', '', '', '2020-02-19 18:02:03', NULL, '', '', '', '', '', 1, 'Kệ V lỗ ván ép', '', 'ke-v-lo-van-ep', '', 9, '[]'),
(492, 'Giá sách thư viện', '', '', 483, 0, 'thumbnail_1_158c4676d3615d389d1b103c30a93f43.jpg', '', '', '', '', '2020-02-19 18:02:07', NULL, '', '', '', '', '', 1, 'Giá sách thư viện', '', 'gia-sach-thu-vien', '', 9, '[]'),
(493, 'Lưới hàn ô vuông', '', '', 484, 0, 'thumbnail_1_8649093b2a5e4b7c245aaf3bb1ff1aaf.jpg', '', '', '', '', '2020-02-19 18:02:04', NULL, '', '', '', '', '', 1, 'Lưới hàn ô vuông', '', 'luoi-han-o-vuong', '', 9, '[]'),
(494, 'Sắt V lỗ đa năng', '', '', 484, 0, 'thumbnail_1_73bea368b781d1d33889b4502e68da83.jpg', '', '', '', '', '2020-02-19 18:02:42', NULL, '', '', '', '', '', 1, 'Sắt V lỗ đa năng', '', 'sat-v-lo-da-nang', '', 9, '[]'),
(495, 'Cổng biệt thự', '', '', 484, 0, 'thumbnail_1_021c5e538fe828461d07b8010612295e.jpg', '', '', '', '', '2020-02-19 18:02:33', NULL, '', '', '', '', '', 1, 'Cổng biệt thự', '', 'cong-biet-thu', '', 9, '[]'),
(496, 'Hàng rào di động', '', '', 484, 0, 'thumbnail_1_a31e621eb6c7ccd2ccd7e8e13a091773.jpg', '', '', '', '', '2020-02-19 18:02:01', NULL, '', '', '', '', '', 1, 'Hàng rào di động', '', 'hang-rao-di-dong', '', 9, '[]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat_languages`
--

CREATE TABLE `productcat_languages` (
  `id` bigint(20) NOT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `lang_productcat_name` text COLLATE utf8_unicode_ci,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_des` text COLLATE utf8_unicode_ci,
  `lang_productcat_content` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcat_languages`
--

INSERT INTO `productcat_languages` (`id`, `productcat_id`, `lang_productcat_name`, `languages_code`, `lang_productcat_des`, `lang_productcat_content`, `lang_productcat_sub_info1`, `lang_productcat_sub_info2`, `lang_productcat_sub_info3`, `lang_productcat_sub_info4`, `lang_productcat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(949, 482, 'Các loại kệ', 'vn', '', '', '', '', '', '', '', 0, 'cac-loai-ke', '', 'Các loại kệ', ''),
(950, 482, 'english version Các loại kệ', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-cac-loai-ke', '', 'Các loại kệ', ''),
(951, 483, 'Các loại giá', 'vn', '', '', '', '', '', '', '', 0, 'cac-loai-gia', '', 'Các loại giá', ''),
(952, 483, 'english version Các loại giá', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-cac-loai-gia', '', 'Các loại giá', ''),
(953, 484, 'Các loại khác', 'vn', '', '', '', '', '', '', '', 0, 'cac-loai-khac', '', 'Các loại khác', ''),
(954, 484, 'english version Các thứ khác', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-cac-thu-khac', '', 'Các thứ khác', ''),
(955, 485, 'Kệ sắt V lỗ', 'vn', '', '', '', '', '', '', '', 0, 'ke-sat-v-lo', '', 'Kệ sắt V lỗ', ''),
(956, 485, 'english version Kệ săt V lỗ', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-ke-sat-v-lo', '', 'Kệ săt V lỗ', ''),
(957, 486, 'Kệ shelving trung tải', 'vn', '', '', '', '', '', '', '', 0, 'ke-shelving-trung-tai', '', 'Kệ shelving trung tải', ''),
(958, 486, 'english version Kệ shelving trung tải', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-ke-shelving-trung-tai', '', 'Kệ shelving trung tải', ''),
(959, 487, 'Kệ selective hạng nặng', 'vn', '', '', '', '', '', '', '', 0, 'ke-selective-hang-nang', '', 'Kệ selective hạng nặng', ''),
(960, 487, 'english version Kệ selective hạng nặng', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-ke-selective-hang-nang', '', 'Kệ selective hạng nặng', ''),
(961, 488, 'Kệ hồ sơ di động', 'vn', '', '', '', '', '', '', '', 0, 'ke-ho-so-di-dong', '', 'Kệ hồ sơ di động', ''),
(962, 488, 'english version Kệ hồ sơ di động', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-ke-ho-so-di-dong', '', 'Kệ hồ sơ di động', ''),
(963, 489, 'Kệ giày dép', 'vn', '', '', '', '', '', '', '', 0, 'ke-giay-dep', '', 'Kệ giày dép', ''),
(964, 489, 'english version Kệ giày dép', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-ke-giay-dep', '', 'Kệ giày dép', ''),
(965, 490, 'Kệ siêu thị', 'vn', '', '', '', '', '', '', '', 0, 'ke-sieu-thi', '', 'Kệ siêu thị', ''),
(966, 490, 'english version Kệ siêu thị', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-ke-sieu-thi', '', 'Kệ siêu thị', ''),
(967, 491, 'Kệ V lỗ ván ép', 'vn', '', '', '', '', '', '', '', 0, 'ke-v-lo-van-ep', '', 'Kệ V lỗ ván ép', ''),
(968, 491, 'english version Kệ V lỗ ván ép', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-ke-v-lo-van-ep', '', 'Kệ V lỗ ván ép', ''),
(969, 492, 'Giá sách thư viện', 'vn', '', '', '', '', '', '', '', 0, 'gia-sach-thu-vien', '', 'Giá sách thư viện', ''),
(970, 492, 'english version Giá sách thư viện', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-gia-sach-thu-vien', '', 'Giá sách thư viện', ''),
(971, 493, 'Lưới hàn ô vuông', 'vn', '', '', '', '', '', '', '', 0, 'luoi-han-o-vuong', '', 'Lưới hàn ô vuông', ''),
(972, 493, 'english version Lưới hàn ô vuông', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-luoi-han-o-vuong', '', 'Lưới hàn ô vuông', ''),
(973, 494, 'Sắt V lỗ đa năng', 'vn', '', '', '', '', '', '', '', 0, 'sat-v-lo-da-nang', '', 'Sắt V lỗ đa năng', ''),
(974, 494, 'english version Sắt V lỗ đa năng', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-sat-v-lo-da-nang', '', 'Sắt V lỗ đa năng', ''),
(975, 495, 'Cổng biệt thự', 'vn', '', '', '', '', '', '', '', 0, 'cong-biet-thu', '', 'Cổng biệt thự', ''),
(976, 495, 'english version Cổng biệt thự', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-cong-biet-thu', '', 'Cổng biệt thự', ''),
(977, 496, 'Hàng rào di động', 'vn', '', '', '', '', '', '', '', 0, 'hang-rao-di-dong', '', 'Hàng rào di động', ''),
(978, 496, 'english version Hàng rào di động', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-hang-rao-di-dong', '', 'Hàng rào di động', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producttag`
--

CREATE TABLE `producttag` (
  `producttag_id` int(11) NOT NULL,
  `producttag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sort_order` int(11) NOT NULL,
  `producttag_img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_created_date` datetime NOT NULL,
  `producttag_update_date` datetime NOT NULL,
  `producttag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL,
  `title_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `producttag`
--

INSERT INTO `producttag` (`producttag_id`, `producttag_name`, `producttag_des`, `producttag_content`, `producttag_sort_order`, `producttag_img`, `producttag_created_date`, `producttag_update_date`, `producttag_sub_info1`, `producttag_sub_info2`, `producttag_sub_info3`, `producttag_sub_info4`, `producttag_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(5, 'đỏ', '<p>des</p>\r\n', '<p>content1</p>\r\n', 0, '', '2017-12-12 19:12:53', '2017-12-13 12:12:30', '', '', '', '', '', 1, 'đỏ', 'a1', 'do', 'a1', 1),
(7, 'Xanh', '', '', 0, '', '2017-12-13 12:12:49', '2017-12-13 12:12:49', '', '', '', '', '', 1, 'Xanh', '', 'xanh', '', 1),
(8, 'Vàng', '', '', 0, '', '2017-12-13 12:12:04', '2017-12-13 17:12:26', '', '', '', '', '', 1, 'Vàng', '', 'vang', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producttag_languages`
--

CREATE TABLE `producttag_languages` (
  `id` int(11) NOT NULL,
  `producttag_id` int(11) NOT NULL,
  `lang_producttag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `languages_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `edit_state` int(11) NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `producttag_languages`
--

INSERT INTO `producttag_languages` (`id`, `producttag_id`, `lang_producttag_name`, `languages_code`, `lang_producttag_des`, `lang_producttag_content`, `lang_producttag_sub_info1`, `lang_producttag_sub_info2`, `lang_producttag_sub_info3`, `lang_producttag_sub_info4`, `lang_producttag_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(2, 5, 'đỏ', 'vn', '<p>des</p>\r\n', '<p>content1</p>\r\n', '', '', '', '', '', 1, 'do', 'a1', 'đỏ', 'a1'),
(3, 5, 'tag produnt', 'en', '<p>des</p>\r\n', '<p>content</p>\r\n', '', '', '', '', '', 1, 'tag-produnt', 'a', 'tag produnt', 'a'),
(6, 7, 'Xanh', 'vn', '', '', '', '', '', '', '', 1, 'xanh', '', 'Xanh', ''),
(7, 7, 'Xanh', 'en', '', '', '', '', '', '', '', 1, 'xanh', '', 'Xanh', ''),
(8, 8, 'Vàng', 'vn', '<p>1</p>\r\n', '<p>1</p>\r\n', '', '', '', '', '', 1, 'vang', '', 'Vàng', ''),
(9, 8, 'yellow', 'en', '', '', '', '', '', '', '', 1, 'vang', '', 'Vàng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

CREATE TABLE `product_color` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_languages`
--

CREATE TABLE `product_languages` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_name` text COLLATE utf8_unicode_ci,
  `lang_product_des` text COLLATE utf8_unicode_ci,
  `lang_product_des2` text COLLATE utf8_unicode_ci,
  `lang_product_des3` text COLLATE utf8_unicode_ci,
  `lang_product_content` text COLLATE utf8_unicode_ci,
  `lang_product_content2` text COLLATE utf8_unicode_ci,
  `lang_product_content3` text COLLATE utf8_unicode_ci,
  `lang_product_code` text COLLATE utf8_unicode_ci,
  `lang_product_original` text COLLATE utf8_unicode_ci,
  `lang_product_size` text COLLATE utf8_unicode_ci,
  `lang_product_package` text COLLATE utf8_unicode_ci,
  `lang_product_delivery` text COLLATE utf8_unicode_ci,
  `lang_product_delivery_time` text COLLATE utf8_unicode_ci,
  `lang_product_payment` text COLLATE utf8_unicode_ci,
  `lang_product_payment_type` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_languages`
--

INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(4059, 2036, 'vn', 'Kệ sắt V lỗ 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'ke-sat-v-lo-1', 'Kệ sắt V lỗ 1', '', ''),
(4060, 2036, 'en', 'english version Kệ sắt V lỗ 1', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ke-sat-v-lo-1', 'Kệ sắt V lỗ 1', '', ''),
(4061, 2037, 'vn', 'Kệ sắt V lỗ 2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'ke-sat-v-lo-2', 'Kệ sắt V lỗ 2', '', ''),
(4062, 2037, 'en', 'english version Kệ sắt V lỗ 2', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ke-sat-v-lo-2', 'Kệ sắt V lỗ 2', '', ''),
(4063, 2038, 'vn', 'Kệ Shelving trung tải 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'ke-shelving-trung-tai-1', 'Kệ Shelving trung tải 1', '', ''),
(4064, 2038, 'en', 'english version Kệ Shelving trung tải 1', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ke-shelving-trung-tai-1', 'Kệ Shelving trung tải 1', '', ''),
(4065, 2039, 'vn', 'Kệ SELECTIVE hạng nặng 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'ke-selective-hang-nang-1', 'Kệ SELECTIVE hạng nặng 1', '', ''),
(4066, 2039, 'en', 'english version Kệ SELECTIVE hạng nặng 1', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ke-selective-hang-nang-1', 'Kệ SELECTIVE hạng nặng 1', '', ''),
(4067, 2040, 'vn', 'Giá sách thư viện 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'gia-sach-thu-vien-1', 'Giá sách thư viện 1', '', ''),
(4068, 2040, 'en', 'english version Giá sách thư viện 1', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-gia-sach-thu-vien-1', 'Giá sách thư viện 1', '', ''),
(4069, 2041, 'vn', 'Kệ hồ sơ di động 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'ke-ho-so-di-dong-1', 'Kệ hồ sơ di động 1', '', ''),
(4070, 2041, 'en', 'english version Kệ hồ sơ di động 1', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ke-ho-so-di-dong-1', 'Kệ hồ sơ di động 1', '', ''),
(4071, 2042, 'vn', 'Kệ giày dép 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'ke-giay-dep-1', 'Kệ giày dép 1', '', ''),
(4072, 2042, 'en', 'english version Kệ giày dép 1', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ke-giay-dep-1', 'Kệ giày dép 1', '', ''),
(4073, 2043, 'vn', 'Kệ siêu thị 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'ke-sieu-thi-1', 'Kệ siêu thị 1', '', ''),
(4074, 2043, 'en', 'english version Kệ siêu thị 1', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ke-sieu-thi-1', 'Kệ siêu thị 1', '', ''),
(4075, 2044, 'vn', 'Kệ V lỗ ván ép 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'ke-v-lo-van-ep-1', 'Kệ V lỗ ván ép 1', '', ''),
(4076, 2044, 'en', 'english version Kệ V lỗ ván ép 1', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ke-v-lo-van-ep-1', 'Kệ V lỗ ván ép 1', '', ''),
(4077, 2045, 'vn', 'Lưới hàn ô vuông 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'luoi-han-o-vuong-1', 'Lưới hàn ô vuông 1', '', ''),
(4078, 2045, 'en', 'english version Lưới hàn ô vuông 1', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-luoi-han-o-vuong-1', 'Lưới hàn ô vuông 1', '', ''),
(4079, 2046, 'vn', 'Săt V lỗi đa năng', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'sat-v-loi-da-nang', 'Săt V lỗi đa năng', '', ''),
(4080, 2046, 'en', 'english version Săt V lỗi đa năng', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-sat-v-loi-da-nang', 'Săt V lỗi đa năng', '', ''),
(4081, 2047, 'vn', 'Cổng sắt biệt thự số 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'cong-sat-biet-thu-so-1', 'Cổng sắt biệt thự số 1', '', ''),
(4082, 2047, 'en', 'english version Cổng sắt biệt thự số 1', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-cong-sat-biet-thu-so-1', 'Cổng sắt biệt thự số 1', '', ''),
(4083, 2048, 'vn', 'Hàng rao di đông 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'hang-rao-di-dong-1', 'Hàng rao di đông 1', '', ''),
(4084, 2048, 'en', 'english version Hàng rao di đông 1', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-hang-rao-di-dong-1', 'Hàng rao di đông 1', '', ''),
(4085, 2049, 'vn', 'Kệ sắt V lỗ 3', '', '', '', '<p>1</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'ke-sat-v-lo-3', 'Kệ sắt V lỗ 3', '', ''),
(4086, 2049, 'en', 'english version Kệ sắt V lỗ 3', '<p>english version</p>\r\n', '', '', '<p>english version</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ke-sat-v-lo-3', 'Kệ sắt V lỗ 3', '', ''),
(4087, 2050, 'vn', 'Kệ SELECTIVE hạng nặng 2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'ke-selective-hang-nang-2', 'Kệ SELECTIVE hạng nặng 2', '', ''),
(4088, 2050, 'en', 'english version Kệ SELECTIVE hạng nặng 2', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ke-selective-hang-nang-2', 'Kệ SELECTIVE hạng nặng 2', '', ''),
(4089, 2051, 'vn', 'Kệ SELECTIVE hạng nặng 3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'ke-selective-hang-nang-3', 'Kệ SELECTIVE hạng nặng 3', '', ''),
(4090, 2051, 'en', 'english version Kệ SELECTIVE hạng nặng 3', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ke-selective-hang-nang-3', 'Kệ SELECTIVE hạng nặng 3', '', ''),
(4091, 2052, 'vn', 'Kệ Shelving trung tải 2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'ke-shelving-trung-tai-2', 'Kệ Shelving trung tải 2', '', ''),
(4092, 2052, 'en', 'english version Kệ Shelving trung tải 2', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ke-shelving-trung-tai-2', 'Kệ Shelving trung tải 2', '', ''),
(4093, 2053, 'vn', 'Kệ Shelving trung tải 3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'ke-shelving-trung-tai-3', 'Kệ Shelving trung tải 3', '', ''),
(4094, 2053, 'en', 'english version Kệ Shelving trung tải 3', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ke-shelving-trung-tai-3', 'Kệ Shelving trung tải 3', '', ''),
(4095, 2054, 'vn', 'Kệ Shelving trung tải 4', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'ke-shelving-trung-tai-4', 'Kệ Shelving trung tải 4', '', ''),
(4096, 2054, 'en', 'english version Kệ Shelving trung tải 4', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ke-shelving-trung-tai-4', 'Kệ Shelving trung tải 4', '', ''),
(4097, 2055, 'vn', 'Kệ Shelving trung tải 5', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'ke-shelving-trung-tai-5', 'Kệ Shelving trung tải 5', '', ''),
(4098, 2055, 'en', 'english version Kệ Shelving trung tải 5', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ke-shelving-trung-tai-5', 'Kệ Shelving trung tải 5', '', ''),
(4099, 2056, 'vn', 'Kệ Shelving trung tải 6', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'ke-shelving-trung-tai-6', 'Kệ Shelving trung tải 6', '', ''),
(4100, 2056, 'en', 'english version Kệ Shelving trung tải 6', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ke-shelving-trung-tai-6', 'Kệ Shelving trung tải 6', '', ''),
(4101, 2057, 'vn', 'Kệ Shelving trung tải 7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'ke-shelving-trung-tai-7', 'Kệ Shelving trung tải 7', '', ''),
(4102, 2057, 'en', 'english version Kệ Shelving trung tải 7', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ke-shelving-trung-tai-7', 'Kệ Shelving trung tải 7', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer`
--

CREATE TABLE `product_producer` (
  `producer_id` int(11) NOT NULL,
  `producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_sort_order` int(11) DEFAULT NULL,
  `producer_parent` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer`
--

INSERT INTO `product_producer` (`producer_id`, `producer_name`, `producer_sort_order`, `producer_parent`, `state`) VALUES
(3, 'Donaldson', 1, 0, 1),
(4, 'Komatsu', 2, 0, 1),
(5, 'Fleetguard', 3, 0, 1),
(6, 'Badwin', 4, 0, 1),
(7, 'Huyndai-Mobis', 5, 0, 1),
(8, 'Sakura', 6, 0, 1),
(9, 'Kobelco', 7, 0, 1),
(10, 'Hãng khác', 8, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer_languages`
--

CREATE TABLE `product_producer_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_id` int(11) NOT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer_languages`
--

INSERT INTO `product_producer_languages` (`id`, `languages_code`, `lang_producer_name`, `producer_id`, `friendly_url`) VALUES
(34, 'vn', 'Donaldson', 3, 'donaldson'),
(35, 'en', 'Donaldson', 3, 'donaldson'),
(36, 'vn', 'Komatsu', 4, 'komatsu'),
(37, 'en', 'Komatsu', 4, 'komatsu'),
(38, 'vn', 'Fleetguard', 5, 'fleetguard'),
(39, 'en', 'Fleetguard', 5, 'fleetguard'),
(40, 'vn', 'Badwin', 6, 'badwin'),
(41, 'en', 'Badwin', 6, 'badwin'),
(42, 'vn', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(43, 'en', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(44, 'vn', 'Sakura', 8, 'sakura'),
(45, 'en', 'Sakura', 8, 'sakura'),
(46, 'vn', 'Kobelco', 9, 'kobelco'),
(47, 'en', 'Kobelco', 9, 'kobelco'),
(48, 'vn', 'Hãng khác', 10, 'hang-khac'),
(49, 'en', 'Hãng khác', 10, 'hang-khac');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pro_color`
--

CREATE TABLE `pro_color` (
  `id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regInfor`
--

CREATE TABLE `regInfor` (
  `regInfor_id` int(11) NOT NULL,
  `regInfor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_wasBorn` int(11) DEFAULT NULL,
  `regInfor_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_state` int(11) DEFAULT '1',
  `regInfor_createdDate` date DEFAULT NULL,
  `regInfor_answer1` int(11) DEFAULT '1',
  `regInfor_answer2` int(11) DEFAULT '1',
  `regInfor_answer3` int(11) DEFAULT '1',
  `regInfor_answer4` int(11) DEFAULT '1',
  `regInfor_answer5` int(11) DEFAULT '1',
  `regInfor_answer6` int(11) DEFAULT '1',
  `regInfor_answer7` int(11) DEFAULT '1',
  `regInfor_answer8` int(11) DEFAULT '1',
  `regInfor_answer9` int(11) DEFAULT '1',
  `regInfor_sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regInfor`
--

INSERT INTO `regInfor` (`regInfor_id`, `regInfor_name`, `regInfor_phone`, `regInfor_mail`, `regInfor_address`, `regInfor_wasBorn`, `regInfor_code`, `regInfor_state`, `regInfor_createdDate`, `regInfor_answer1`, `regInfor_answer2`, `regInfor_answer3`, `regInfor_answer4`, `regInfor_answer5`, `regInfor_answer6`, `regInfor_answer7`, `regInfor_answer8`, `regInfor_answer9`, `regInfor_sex`) VALUES
(25, 'fgsf', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(26, 'th', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(31, 'thuyhang', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(32, 'thuyhang2', '0967878', NULL, NULL, 1955, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 2, 'nữ'),
(34, 'thdfghgfh', 'dfasdfas', NULL, NULL, 1940, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 2, 1, 1, 'nam'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(37, 'hh', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(38, '', '01669745858', NULL, NULL, 1982, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(39, 'hsdfansdf', '0967878', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(40, '', 'dsfdsfsfs', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(46, '', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-27', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(53, 'erte', '5657', NULL, NULL, 2345, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(54, '', '', NULL, NULL, 0, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(55, 'dryrs', '3426546', NULL, NULL, 25346, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(56, 'hangpt', '0973378669', NULL, NULL, 1989, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(57, 'fhgh', 'fhfhfh', NULL, NULL, 0, NULL, 1, '2017-07-15', 1, 1, 1, 1, 1, 1, 1, 1, 1, '3'),
(58, 'tgsdfg', '', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(59, 'zxcv', 'sdf', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(60, 'xzc', '35345', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regMember`
--

CREATE TABLE `regMember` (
  `regMember_id` int(11) NOT NULL,
  `regMember_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regMember_createdDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regMember`
--

INSERT INTO `regMember` (`regMember_id`, `regMember_mail`, `regMember_createdDate`) VALUES
(11, 'ádgf', '2017-07-16'),
(12, 'xvdfg', '2017-07-16'),
(13, '', '2017-07-30'),
(14, '0964694591', '2018-09-04'),
(15, '0964694591', '2018-09-26'),
(16, '0964694591', '2018-09-26'),
(17, '0964694591', '2018-09-26'),
(18, 'tuan@gmail.com', '2018-10-04'),
(19, '', '2018-10-04'),
(20, '', '2018-10-04'),
(21, 'Fwrfwe@hsdud.com', '2018-10-05'),
(22, 'Fwrfwe@hsdud.com', '2018-10-05'),
(23, '0908062286', '2018-10-05'),
(24, '0908062286', '2018-10-05'),
(25, '0908062286', '2018-10-05'),
(26, '0908062286', '2018-10-05'),
(27, 'GHDFGFGHFGH', '2018-10-05'),
(28, 'GHDFGFGHFGH', '2018-10-05'),
(29, '', '2018-10-05'),
(30, '', '2018-10-05'),
(31, '0964694591', '2018-10-05'),
(32, '0964694591', '2018-10-05'),
(33, '6575676767', '2018-10-05'),
(34, '6575676767', '2018-10-05'),
(35, '0986029232', '2018-10-05'),
(36, '0986029232', '2018-10-05'),
(37, '0913051988', '2018-10-10'),
(38, '0983054598', '2018-10-10'),
(39, '0983054598', '2018-10-10'),
(40, '', '2018-10-10'),
(41, '', '2018-10-10'),
(42, '0983603350', '2018-10-11'),
(43, '0983603350', '2018-10-11'),
(44, '01655091596', '2018-10-11'),
(45, '01655091596', '2018-10-11'),
(46, '0984469799', '2018-10-12'),
(47, '0984469799', '2018-10-12'),
(48, '0984469799', '2018-10-12'),
(49, '0984469799', '2018-10-12'),
(50, '0856560303', '2018-10-12'),
(51, '0856560303', '2018-10-12'),
(52, '', '2018-10-12'),
(53, '', '2018-10-12'),
(54, '296591', '2018-10-12'),
(55, '296591', '2018-10-12'),
(56, '0913099447', '2018-10-12'),
(57, '0913099447', '2018-10-12'),
(58, '0904126397', '2018-10-12'),
(59, '0904126397', '2018-10-12'),
(60, '0904126397', '2018-10-12'),
(61, '0904126397', '2018-10-12'),
(62, '0904126397', '2018-10-12'),
(63, 'maianh020992@gmail.com', '2018-10-16'),
(64, 'maianh020992@gmail.com', '2018-10-16'),
(65, '0964000999', '2018-10-16'),
(66, '0964000999', '2018-10-16'),
(67, '01252298868', '2018-10-18'),
(68, '0913704412', '2018-10-18'),
(69, '', '2018-10-29'),
(70, '', '2018-10-29'),
(71, '0964694591', '2018-10-29'),
(72, '0964694591', '2018-10-29'),
(73, '0964694591', '2018-10-29'),
(74, '0964694591', '2018-10-29'),
(75, '', '2018-10-29'),
(76, '', '2018-10-29'),
(77, '0964694591', '2018-10-29'),
(78, '0964694591', '2018-10-29'),
(79, '', '2018-10-30'),
(80, '', '2018-10-30'),
(81, '', '2018-10-30'),
(82, '', '2018-10-30'),
(83, '0979725566', '2018-10-31'),
(84, '0963210475', '2018-11-02'),
(85, '0963210475', '2018-11-02'),
(86, '0917758942', '2018-11-03'),
(87, '0917758942', '2018-11-03'),
(88, '0969447788', '2018-11-03'),
(89, '0969447788', '2018-11-03'),
(90, '09395938229', '2018-11-13'),
(91, '09395938229', '2018-11-13'),
(92, '09395938229', '2018-11-13'),
(93, '012345689', '2018-11-15'),
(94, '012345689', '2018-11-15'),
(95, '06666', '2018-11-16'),
(96, '06666', '2018-11-16'),
(97, '9486676533680', '2018-11-18'),
(98, '0913318298', '2018-11-19'),
(99, '0913318298', '2018-11-19'),
(100, '0356888077', '2018-11-21'),
(101, '0356888077', '2018-11-21'),
(102, '', '2018-12-03'),
(103, '0986 287 157 Kim Yến ', '2018-12-09'),
(104, '0986 287 157 Kim Yến ', '2018-12-09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_name` text COLLATE utf8_unicode_ci,
  `sale_code` text COLLATE utf8_unicode_ci,
  `sale_total_count` int(11) DEFAULT NULL,
  `sale_type` int(11) DEFAULT NULL,
  `sale_value` float DEFAULT NULL,
  `sale_apply` int(11) DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_start_date` datetime DEFAULT NULL,
  `sale_end_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_des` text COLLATE utf8_unicode_ci,
  `service_content` text COLLATE utf8_unicode_ci,
  `service_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_views` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_create_date` date DEFAULT NULL,
  `service_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `service_sub_infor1` text COLLATE utf8_unicode_ci,
  `service_sub_infor2` text COLLATE utf8_unicode_ci,
  `service_sub_infor3` text COLLATE utf8_unicode_ci,
  `service_sub_infor4` text COLLATE utf8_unicode_ci,
  `service_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `servicetag_arr` varchar(10000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `service_des`, `service_content`, `service_img`, `service_views`, `servicecat_id`, `service_author`, `service_create_date`, `service_update_date`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `servicetag_arr`) VALUES
(68, 'Kệ đa năng, kệ săt V lỗ', 'Công ty TNHH TM & SX Thành Hưng Phát là công ty hàng đầu chuyên cung cấp kệ sắt V lỗ đa năng, kệ shevling trung tải, kệ selective hạng nặng, kệ siêu thị uy tín, chất lượng . Kệ có khă năng chịu lực tốt, bền bỉ, tính thẩm mỹ cao . Kệ được thiết kế linh hoạt dễ dàng trong việc sử dụng, tháo lắp, di chuyển . Giá cả cạnh tranh nhất thị trường .', '<p><strong>C&ocirc;ng ty TNHH TM &amp; SX Th&agrave;nh Hưng Ph&aacute;t l&agrave; c&ocirc;ng ty h&agrave;ng đầu chuy&ecirc;n cung cấp kệ sắt V lỗ đa năng, kệ shevling trung tải, kệ selective hạng nặng, kệ si&ecirc;u thị uy t&iacute;n, chất lượng . Kệ c&oacute; khă năng chịu lực tốt, bền bỉ, t&iacute;nh thẩm mỹ cao . Kệ được thiết kế linh hoạt dễ d&agrave;ng trong việc sử dụng, th&aacute;o lắp, di chuyển . Gi&aacute; cả cạnh tranh nhất thị trường .</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-&nbsp;K&iacute;ch thước, M&agrave;u sắc : Nhận sản xuất gi&aacute; kệ để h&agrave;ng theo y&ecirc;u cầu<br />\r\n- Trọng tải: 100-120kg/tầng kệ.</strong><br />\r\n<strong>- Bề mặt kệ được xử l&yacute; bằng c&ocirc;ng nghệ phun sơn tĩnh điện cao cấp chống gỉ s&eacute;t tối đa.<br />\r\n- Gi&aacute; cả cạnh tranh nhất thị trường.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>ĐẶC T&Iacute;NH KỆ SẮT V LỖ</h2>\r\n\r\n<p>&nbsp;<strong>1. Sự h&agrave;i h&ograve;a&nbsp;&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Thiết kế theo phong c&aacute;ch Đơn giản, hiện đại ph&ugrave; hợp với tất cả c&aacute;c cửa h&agrave;ng b&aacute;n lẻ hay hệ thống cửa h&agrave;ng lớn.</li>\r\n	<li>Ch&uacute;ng t&ocirc;i nhận sản xuất gi&aacute; kệ để h&agrave;ng theo y&ecirc;u cầu: Cao, Rộng, S&acirc;u,&nbsp; M&agrave;u sơn theo y&ecirc;u cầu</li>\r\n	<li>Với m&agrave;u sắc đa dạng, c&aacute;c sản phẩm kệ để h&agrave;ng đa năng&nbsp;sẽ cho bạn nhiều hơn những lựa chọn ph&ugrave; hợp với sở th&iacute;ch c&ugrave;ng&nbsp;kh&ocirc;ng gian b&aacute;n h&agrave;ng.</li>\r\n</ul>\r\n\r\n<p><strong>2. Chất liệu</strong></p>\r\n\r\n<ul>\r\n	<li>Sử dụng nguy&ecirc;n vật liệu l&agrave; những c&acirc;y&nbsp;<strong><em>sắt V&nbsp;lỗ&nbsp;</em></strong>chất lượng cao để lắp r&aacute;p th&agrave;nh bộ khung kệ để h&agrave;ng chắc chắn.</li>\r\n	<li>Kết hợp với c&aacute;c mặt kệ được l&agrave;m từ th&eacute;p tấm dập cuốn cạnh d&agrave;y 8mm hoặc v&aacute;n MDF,<br />\r\n	Bề mặt kệ được xử l&yacute; bằng c&ocirc;ng nghệ phun sơn tĩnh điện cao cấp, gi&uacute;p chống lại c&aacute;c&nbsp;t&aacute;c nh&acirc;n m&ocirc;i trường g&acirc;y gỉ s&eacute;t</li>\r\n	<li>&nbsp;Bộ gi&aacute; kệ trưng b&agrave;y đa năng c&oacute; thể đ&aacute;p ứng được nhu cầu trưng b&agrave;y nhiều loại h&agrave;ng h&oacute;a c&oacute; tải trọng từ 100-120kg/tầng kệ.&nbsp;</li>\r\n	<li>&nbsp;Bề mặt kệ được xử l&yacute; bằng c&ocirc;ng nghệ phun sơn tĩnh điện cao cấp, gi&uacute;p chống lại c&aacute;c t&aacute;c nh&acirc;n m&ocirc;i trường g&acirc;y gỉ s&eacute;t.</li>\r\n	<li>Tuổi thọ của những sản phẩm gi&aacute; kệ n&agrave;y rất cao, c&oacute; thể l&ecirc;n đến&nbsp;<strong>30 Năm</strong>.&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>ỨNG DỤNG</h2>\r\n\r\n<ul>\r\n	<li><strong>3. Kệ để h&agrave;ng đa năng được thiết kế đơn giản, dễ sử dụng trong mọi kh&ocirc;ng gian, địa h&igrave;nh kh&aacute;c nhau:</strong>\r\n\r\n	<ul>\r\n		<li>Lắp r&aacute;p nhanh ch&oacute;ng, di dời thuận tiện.</li>\r\n		<li>K&iacute;ch thước đa dạng, t&ugrave;y biến, dễ d&agrave;ng n&acirc;ng cấp về sau.</li>\r\n		<li>C&oacute; khả năng t&ugrave;y chỉnh khoảng c&aacute;ch giữa hai mặt kệ để ph&ugrave; hợp với nhiều loại h&agrave;ng h&oacute;a c&oacute; k&iacute;ch thước kh&aacute;c nhau.</li>\r\n		<li>Đa năng trong mục đ&iacute;ch sử dụng: ngo&agrave;i c&ocirc;ng dụng trưng b&agrave;y h&agrave;ng h&oacute;a, hệ thống kệ để h&agrave;ng đa năng cũng được sử dụng để lưu trữ h&agrave;ng h&oacute;a, hồ sơ t&agrave;i liệu trong kho nhờ độ bền vượt trội, kết cấu vững chắc.</li>\r\n	</ul>\r\n	<strong>4. Dịch vụ uy t&iacute;n</strong>\r\n\r\n	<ul>\r\n		<li>Ch&uacute;ng t&ocirc;i bảo h&agrave;nh tất cả sản phẩm tối thiểu từ 5&nbsp;- 10&nbsp;năm.</li>\r\n	</ul>\r\n\r\n	<ul>\r\n		<li>Cam kết gi&aacute; cả cạnh tranh nhất thị trường</li>\r\n		<li>Miễn ph&iacute; vận chuyển lắp đặt To&agrave;n quốc.</li>\r\n		<li>Hỗ trợ tư vấn v&agrave; khảo s&aacute;t mặt bằng miễn ph&iacute; nhanh ch&oacute;ng.</li>\r\n		<li><strong>Cam kết 1 ĐỔI 1 Nếu sản phẩm k&eacute;m chất lượng, Kh&aacute;ch h&agrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng.!</strong></li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p><em><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Li&ecirc;n hệ ngay để được tư vấn&nbsp;: 093.155.1984 hoặc 0968.530.689</strong></em></p>\r\n', 'IMG_00181.jpg', '0', 0, '', '2020-02-20', '2020-02-20', 1, NULL, NULL, NULL, NULL, NULL, 'Kệ đa năng, kệ săt V lỗ', '', 'ke-da-nang-ke-sat-v-lo', '', 9, ''),
(69, 'Kệ đa năng Thành Hưng Phát', 'Công ty TNHH TM&SX THÀNH HƯNG PHÁT chuyên sản xuất các loại kệ để hàng.\r\n- Kệ sắt V lỗ đa năng\r\n- Kệ Shelving Trung tải\r\n- Kệ selective hạng nặng\r\n- Gia công các mặt hàng cơ khí. Liên hệ: 0931551984 Web: cokhisocson.com', '<p><strong>C&ocirc;ng ty TNHH TM&amp;SX TH&Agrave;NH HƯNG PH&Aacute;T chuy&ecirc;n sản xuất c&aacute;c loại kệ để h&agrave;ng.<br />\r\n- Kệ sắt V lỗ đa năng<br />\r\n- Kệ Shelving Trung tải<br />\r\n- Kệ selective hạng nặng<br />\r\n- Gia c&ocirc;ng c&aacute;c mặt h&agrave;ng cơ kh&iacute;. Li&ecirc;n hệ: 0931551984 Web: cokhisocson.com</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&aacute;c loại kệ c&oacute; sẵn c&oacute; chiều rộng: 300mm,400mm,500mm,600mm với chiều d&agrave;i tương ứng: 900mm,1000mm,1200mm,1500mm<br />\r\n* Nhận sản xuất theo đơn đặt h&agrave;ng. Gi&aacute; t&ocirc;t nhất thị trường.<br />\r\nC&aacute;c loại V lỗ: V3*3,V4*4,V3*5,V4*6 với độ d&agrave;i c&oacute; sẵn: 2000mm,2400mm,3000m. ( Sản xuất theo k&iacute;ch thước y&ecirc;u cầu)<br />\r\nĐộ d&agrave;y của kệ sắt V lỗ: 1,6mm-1,8mm-2mm<br />\r\n***Ưu điểm của kệ sắt V lỗ đa năng<br />\r\n- Dễ d&agrave;ng th&aacute;o lắp, tăng chỉnh chiều cao m&acirc;m tầng linh hoạt.<br />\r\n- Sản phẩm kệ sắt V lỗ được sơn Tĩnh điện theo ti&ecirc;u chuẩn với độ bền cao.<br />\r\n- Vật liệu sử dụng để sản xuất kệ sắt V lỗ l&agrave; th&eacute;p ti&ecirc;u chuẩn Jis của Nhật Bản. INOX....<br />\r\n- C&aacute;c m&acirc;m tầng thường được d&ugrave;ng t&ocirc;n với độ d&agrave;y phổ th&ocirc;ng l&agrave; 0.7mm c&oacute; thể d&agrave;y hơn t&ugrave;y thuộc v&agrave;o tải trọng mặt h&agrave;ng sao cho ph&ugrave; hợp để giảm chi ph&iacute; sao cho thấp nhất m&agrave; vẫn đạt t&iacute;nh thẩm mỹ v&agrave; chất lượng tốt nhất.<br />\r\n- M&acirc;m tầng cũng c&oacute; thể d&ugrave;ng v&aacute;n MDF Bạn c&oacute; nhu cầu đặt h&agrave;ng vui l&ograve;ng li&ecirc;n hệ:<br />\r\n* Xưởng sản xuất: Th&ocirc;n Hương Đ&igrave;nh Đ&ocirc;ng, X&atilde; Mai Đ&igrave;nh, Huyện S&oacute;c sơn, TP H&agrave; Nội. * Hotline: 0931551984- 0968530689 Miễn ph&iacute; vận chuyển khu vực H&agrave; Nội. C&aacute;c tỉnh gửi xe tải theo chỉ định kh&aacute;ch h&agrave;ng chịu ph&iacute;.<br />\r\nĐơn h&agrave;ng lớn cty c&oacute; xe vận chuyển Miễn Ph&iacute;.<br />\r\nSản phẩm Th&agrave;nh Hưng Ph&aacute;t đạt chất lượng ISO: 9001-2008 TH&Agrave;NH HƯNG PH&Aacute;T c&oacute; cả chứng chỉ kiểm tra tải trọng của đơn vị kiểm định đo lường theo từng đơn h&agrave;ng cụ thể.</p>\r\n', 'Kệ_đa_năng.jpg', '0', 0, '', '2020-02-20', '2020-02-20', 1, NULL, NULL, NULL, NULL, NULL, 'Kệ đa năng Thành Hưng Phát', '', 'ke-da-nang-thanh-hung-phat', '', 9, ''),
(70, 'Giải pháp cho khách hàng', 'CTY TNHH TM&SX THÀNH HƯNG PHÁT là một trong những cty đi đầu về sản xuất gái kệ để hàng tại thị trường Việt Nam. Chũng tôi chuyên cung cấp các loại giá kệ để hàng như: Kệ Shelving ( trung tải), Kệ Selective, Kẹ sắt V lỗ đa năng, Kệ sàn ...... Cty chúng tôi đã thi công lắp đặt giá kệ cho rất nhiều đối tác như: Cty SamSung Yên Phong& Bắc Ninh. YAMAHA MOTOR VIỆT NAM, PIAGIO BÌNH XUYÊN, TOYOTA, NASCO...', '<p><strong>CTY TNHH TM&amp;SX TH&Agrave;NH HƯNG PH&Aacute;T l&agrave; một trong những cty đi đầu về sản xuất g&aacute;i kệ để h&agrave;ng tại thị trường Việt Nam. Chũng t&ocirc;i chuy&ecirc;n cung cấp c&aacute;c loại gi&aacute; kệ để h&agrave;ng như: Kệ Shelving ( trung tải), Kệ Selective, Kẹ sắt V lỗ đa năng, Kệ s&agrave;n ...... Cty ch&uacute;ng t&ocirc;i đ&atilde; thi c&ocirc;ng lắp đặt gi&aacute; kệ cho rất nhiều đối t&aacute;c như: Cty SamSung Y&ecirc;n Phong&amp; Bắc Ninh. YAMAHA MOTOR VIỆT NAM, PIAGIO B&Igrave;NH XUY&Ecirc;N, TOYOTA, NASCO NỘI B&Agrave;I.....<br />\r\nTH&Agrave;NH HƯNG PH&Aacute;T CAM KẾT BẢO H&Agrave;NH H&Agrave;NG H&Oacute;A TỪ 5-10 NĂM.<br />\r\n&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>* CTY TNHH TM&amp;SX TH&Agrave;NH HƯNG PH&Aacute;T l&agrave; một trong những cty đi đầu về sản xuất g&aacute;i kệ để h&agrave;ng tại thị trường Việt Nam. Chũng t&ocirc;i chuy&ecirc;n cung cấp c&aacute;c loại gi&aacute; kệ để h&agrave;ng như: Kệ Shelving ( trung tải), Kệ Selective, Kẹ sắt V lỗ đa năng, Kệ s&agrave;n ...... Cty ch&uacute;ng t&ocirc;i đ&atilde; thi c&ocirc;ng lắp đặt gi&aacute; kệ cho rất nhiều đối t&aacute;c như: Cty SamSung Y&ecirc;n Phong&amp; Bắc Ninh. YAMAHA MOTOR VIỆT NAM, PIAGIO B&Igrave;NH XUY&Ecirc;N, TOYOTA, NASCO NỘI B&Agrave;I.....<br />\r\n* Sản phẩm kệ chứa h&agrave;ng, kệ để h&agrave;ng của Th&agrave;nh Hưng Ph&aacute;t gi&uacute;p giải quyết nhanh ch&oacute;ng việc quản l&yacute; v&agrave; lu&acirc;n chuy&ecirc;n h&agrave;ng h&oacute;a trong kho h&agrave;ng. đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch h&agrave;ng từ nhưng y&ecirc;u cầu k&yacute; thuật cao nhất đến những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.<br />\r\n* Với đội ngũ c&ocirc;ng nh&acirc;n l&agrave;nh nghề với nhiều năm kinh nghiệm trong lĩnh vực cơ kh&iacute; v&agrave; nhưng nh&acirc;n vi&ecirc;n kỹ thuật chuy&ecirc;n m&ocirc;n cao c&oacute; thể tư vấn cho Qu&yacute; kh&aacute;ch h&agrave;ng một giải ph&aacute;p tiết kiệm v&agrave; tối ưu nhất với một chi ph&iacute; hợp l&yacute; ko thể thấp hơn đc m&agrave; vẫn c&oacute; thể đạt y&ecirc;u cầu: Chắc chắn, Đẹp, v&agrave; điều rất quan trọng m&agrave; kh&aacute;ch h&agrave;ng lu&ocirc;n quan t&acirc;m đ&oacute; l&agrave;&nbsp;<strong>RẺ.<br />\r\n**** Để đ&aacute;p ứng thị hiếu kh&aacute;ch h&agrave;ng l&agrave; : NGON BỔ RẺ th&igrave; Th&agrave;nh Hưng Ph&aacute;t đ&atilde; đầu tư d&acirc;y truyền c&ocirc;ng nghệ hiện đại để giảm chi ph&iacute; nh&acirc;n c&ocirc;ng v&agrave; thời gian sản xuất m&agrave; chất lượng ko đổi thậm tr&iacute; c&ograve;n n&acirc;ng cao.<br />\r\n<em>CTY TNHH TM&amp;SX TH&Agrave;NH HƯNG PH&Aacute;T RẤT MONG ĐƯỢC PHỤC VỤ KH&Aacute;CH H&Agrave;NG!</em></strong></p>\r\n', 'Kệ_Shelving.jpg', '0', 0, '', '2020-02-20', '2020-02-20', 1, NULL, NULL, NULL, NULL, NULL, 'Giải pháp cho khách hàng', '', 'giai-phap-cho-khach-hang', '', 9, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat`
--

CREATE TABLE `servicecat` (
  `servicecat_id` int(11) NOT NULL,
  `servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_des` text COLLATE utf8_unicode_ci,
  `servicecat_content` text COLLATE utf8_unicode_ci,
  `servicecat_parent` int(11) DEFAULT NULL,
  `servicecat_sort_order` int(11) DEFAULT NULL,
  `servicecat_created_date` date DEFAULT NULL,
  `servicecat_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `servicecat_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor1` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor2` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor3` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor4` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat`
--

INSERT INTO `servicecat` (`servicecat_id`, `servicecat_name`, `servicecat_des`, `servicecat_content`, `servicecat_parent`, `servicecat_sort_order`, `servicecat_created_date`, `servicecat_update_date`, `state`, `servicecat_img`, `servicecat_sub_infor1`, `servicecat_sub_infor2`, `servicecat_sub_infor3`, `servicecat_sub_infor4`, `servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(3, 'Ý kiến khách hàng', '', '', 0, 0, '2020-02-18', NULL, 1, 'vietcombank-ho-tro-vay-mua-nha-o-xa-hoi.jpg', NULL, NULL, NULL, NULL, NULL, 'Ý kiến khách hàng', '', 'y-kien-khach-hang', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat_languages`
--

CREATE TABLE `servicecat_languages` (
  `id` int(11) NOT NULL,
  `lang_servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_des` text COLLATE utf8_unicode_ci,
  `lang_servicecat_content` text COLLATE utf8_unicode_ci,
  `state` int(11) DEFAULT '1',
  `lang_servicecat_sub_infor1` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor2` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor3` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor4` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat_languages`
--

INSERT INTO `servicecat_languages` (`id`, `lang_servicecat_name`, `lang_servicecat_des`, `lang_servicecat_content`, `state`, `lang_servicecat_sub_infor1`, `lang_servicecat_sub_infor2`, `lang_servicecat_sub_infor3`, `lang_servicecat_sub_infor4`, `lang_servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `languages_code`, `servicecat_id`) VALUES
(5, 'Ý kiến khách hàng', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Ý kiến khách hàng', '', 'y-kien-khach-hang', '', NULL, 'vn', 3),
(6, 'Dịch vụ', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ', '', 'dich-vu', '', NULL, 'en', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicetag`
--

CREATE TABLE `servicetag` (
  `servicetag_id` int(11) NOT NULL,
  `servicetag_name` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sort_order` int(11) NOT NULL,
  `servicetag_created_date` datetime NOT NULL,
  `servicetag_update_date` datetime NOT NULL,
  `state` int(11) NOT NULL,
  `servicetag_img` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `servicetag`
--

INSERT INTO `servicetag` (`servicetag_id`, `servicetag_name`, `servicetag_des`, `servicetag_content`, `servicetag_sort_order`, `servicetag_created_date`, `servicetag_update_date`, `state`, `servicetag_img`, `servicetag_sub_info1`, `servicetag_sub_info2`, `servicttag_sub_info3`, `servicetag_sub_info4`, `servicetag_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(4, 'hot', '', '', 0, '2017-12-13 15:12:00', '2017-12-13 15:12:00', 1, '', '', '', '', '', '', 'hot', '', 'hot', '', 1),
(5, 'sale', '', '', 0, '2017-12-13 15:12:12', '2017-12-13 15:12:12', 1, '', '', '', '', '', '', 'sale', '', 'sale', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicetag_languages`
--

CREATE TABLE `servicetag_languages` (
  `id` int(11) NOT NULL,
  `servicetag_id` int(11) NOT NULL,
  `languages_code` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_name` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `servicetag_languages`
--

INSERT INTO `servicetag_languages` (`id`, `servicetag_id`, `languages_code`, `lang_servicetag_name`, `lang_servicetag_des`, `lang_servicetag_content`, `lang_servicetag_sub_info1`, `lang_servicetag_sub_info2`, `lang_servicetag_sub_info3`, `lang_servicetag_sub_info4`, `lang_servicetag_sub_info5`, `title_seo`, `des_seo`, `keyword`, `friendly_url`, `state`) VALUES
(4, 4, 'vn', 'hot', '', '', '', '', '', '', '', 'hot', '', 'keyword', 'hot', 1),
(5, 4, 'en', 'hot', '', '', '', '', '', '', '', 'hot', '', 'keyword', 'hot', 1),
(6, 5, 'vn', 'sale', '<p>1</p>\r\n', '', '', '', '', '', '', 'sale', '', 'keyword', 'sale', 1),
(7, 5, 'en', 'sale', '<p>2</p>\r\n', '', '', '', '', '', '', 'sale', '', 'keyword', 'sale', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_languages`
--

CREATE TABLE `service_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_des` text COLLATE utf8_unicode_ci,
  `lang_service_content` text COLLATE utf8_unicode_ci,
  `lang_service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `service_sub_infor1` text COLLATE utf8_unicode_ci,
  `service_sub_infor2` text COLLATE utf8_unicode_ci,
  `service_sub_infor3` text COLLATE utf8_unicode_ci,
  `service_sub_infor4` text COLLATE utf8_unicode_ci,
  `service_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service_languages`
--

INSERT INTO `service_languages` (`id`, `languages_code`, `lang_service_name`, `lang_service_des`, `lang_service_content`, `lang_service_author`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `service_id`) VALUES
(91, 'vn', 'Kệ đa năng, kệ săt V lỗ', 'Công ty TNHH TM & SX Thành Hưng Phát là công ty hàng đầu chuyên cung cấp kệ sắt V lỗ đa năng, kệ shevling trung tải, kệ selective hạng nặng, kệ siêu thị uy tín, chất lượng . Kệ có khă năng chịu lực tốt, bền bỉ, tính thẩm mỹ cao . Kệ được thiết kế linh hoạt dễ dàng trong việc sử dụng, tháo lắp, di chuyển . Giá cả cạnh tranh nhất thị trường .', '<p><strong>C&ocirc;ng ty TNHH TM &amp; SX Th&agrave;nh Hưng Ph&aacute;t l&agrave; c&ocirc;ng ty h&agrave;ng đầu chuy&ecirc;n cung cấp kệ sắt V lỗ đa năng, kệ shevling trung tải, kệ selective hạng nặng, kệ si&ecirc;u thị uy t&iacute;n, chất lượng . Kệ c&oacute; khă năng chịu lực tốt, bền bỉ, t&iacute;nh thẩm mỹ cao . Kệ được thiết kế linh hoạt dễ d&agrave;ng trong việc sử dụng, th&aacute;o lắp, di chuyển . Gi&aacute; cả cạnh tranh nhất thị trường .</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-&nbsp;K&iacute;ch thước, M&agrave;u sắc : Nhận sản xuất gi&aacute; kệ để h&agrave;ng theo y&ecirc;u cầu<br />\r\n- Trọng tải: 100-120kg/tầng kệ.</strong><br />\r\n<strong>- Bề mặt kệ được xử l&yacute; bằng c&ocirc;ng nghệ phun sơn tĩnh điện cao cấp chống gỉ s&eacute;t tối đa.<br />\r\n- Gi&aacute; cả cạnh tranh nhất thị trường.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>ĐẶC T&Iacute;NH KỆ SẮT V LỖ</h2>\r\n\r\n<p>&nbsp;<strong>1. Sự h&agrave;i h&ograve;a&nbsp;&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Thiết kế theo phong c&aacute;ch Đơn giản, hiện đại ph&ugrave; hợp với tất cả c&aacute;c cửa h&agrave;ng b&aacute;n lẻ hay hệ thống cửa h&agrave;ng lớn.</li>\r\n	<li>Ch&uacute;ng t&ocirc;i nhận sản xuất gi&aacute; kệ để h&agrave;ng theo y&ecirc;u cầu: Cao, Rộng, S&acirc;u,&nbsp; M&agrave;u sơn theo y&ecirc;u cầu</li>\r\n	<li>Với m&agrave;u sắc đa dạng, c&aacute;c sản phẩm kệ để h&agrave;ng đa năng&nbsp;sẽ cho bạn nhiều hơn những lựa chọn ph&ugrave; hợp với sở th&iacute;ch c&ugrave;ng&nbsp;kh&ocirc;ng gian b&aacute;n h&agrave;ng.</li>\r\n</ul>\r\n\r\n<p><strong>2. Chất liệu</strong></p>\r\n\r\n<ul>\r\n	<li>Sử dụng nguy&ecirc;n vật liệu l&agrave; những c&acirc;y&nbsp;<strong><em>sắt V&nbsp;lỗ&nbsp;</em></strong>chất lượng cao để lắp r&aacute;p th&agrave;nh bộ khung kệ để h&agrave;ng chắc chắn.</li>\r\n	<li>Kết hợp với c&aacute;c mặt kệ được l&agrave;m từ th&eacute;p tấm dập cuốn cạnh d&agrave;y 8mm hoặc v&aacute;n MDF,<br />\r\n	Bề mặt kệ được xử l&yacute; bằng c&ocirc;ng nghệ phun sơn tĩnh điện cao cấp, gi&uacute;p chống lại c&aacute;c&nbsp;t&aacute;c nh&acirc;n m&ocirc;i trường g&acirc;y gỉ s&eacute;t</li>\r\n	<li>&nbsp;Bộ gi&aacute; kệ trưng b&agrave;y đa năng c&oacute; thể đ&aacute;p ứng được nhu cầu trưng b&agrave;y nhiều loại h&agrave;ng h&oacute;a c&oacute; tải trọng từ 100-120kg/tầng kệ.&nbsp;</li>\r\n	<li>&nbsp;Bề mặt kệ được xử l&yacute; bằng c&ocirc;ng nghệ phun sơn tĩnh điện cao cấp, gi&uacute;p chống lại c&aacute;c t&aacute;c nh&acirc;n m&ocirc;i trường g&acirc;y gỉ s&eacute;t.</li>\r\n	<li>Tuổi thọ của những sản phẩm gi&aacute; kệ n&agrave;y rất cao, c&oacute; thể l&ecirc;n đến&nbsp;<strong>30 Năm</strong>.&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>ỨNG DỤNG</h2>\r\n\r\n<ul>\r\n	<li><strong>3. Kệ để h&agrave;ng đa năng được thiết kế đơn giản, dễ sử dụng trong mọi kh&ocirc;ng gian, địa h&igrave;nh kh&aacute;c nhau:</strong>\r\n\r\n	<ul>\r\n		<li>Lắp r&aacute;p nhanh ch&oacute;ng, di dời thuận tiện.</li>\r\n		<li>K&iacute;ch thước đa dạng, t&ugrave;y biến, dễ d&agrave;ng n&acirc;ng cấp về sau.</li>\r\n		<li>C&oacute; khả năng t&ugrave;y chỉnh khoảng c&aacute;ch giữa hai mặt kệ để ph&ugrave; hợp với nhiều loại h&agrave;ng h&oacute;a c&oacute; k&iacute;ch thước kh&aacute;c nhau.</li>\r\n		<li>Đa năng trong mục đ&iacute;ch sử dụng: ngo&agrave;i c&ocirc;ng dụng trưng b&agrave;y h&agrave;ng h&oacute;a, hệ thống kệ để h&agrave;ng đa năng cũng được sử dụng để lưu trữ h&agrave;ng h&oacute;a, hồ sơ t&agrave;i liệu trong kho nhờ độ bền vượt trội, kết cấu vững chắc.</li>\r\n	</ul>\r\n	<strong>4. Dịch vụ uy t&iacute;n</strong>\r\n\r\n	<ul>\r\n		<li>Ch&uacute;ng t&ocirc;i bảo h&agrave;nh tất cả sản phẩm tối thiểu từ 5&nbsp;- 10&nbsp;năm.</li>\r\n	</ul>\r\n\r\n	<ul>\r\n		<li>Cam kết gi&aacute; cả cạnh tranh nhất thị trường</li>\r\n		<li>Miễn ph&iacute; vận chuyển lắp đặt To&agrave;n quốc.</li>\r\n		<li>Hỗ trợ tư vấn v&agrave; khảo s&aacute;t mặt bằng miễn ph&iacute; nhanh ch&oacute;ng.</li>\r\n		<li><strong>Cam kết 1 ĐỔI 1 Nếu sản phẩm k&eacute;m chất lượng, Kh&aacute;ch h&agrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng.!</strong></li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p><em><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Li&ecirc;n hệ ngay để được tư vấn&nbsp;: 093.155.1984 hoặc 0968.530.689</strong></em></p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Kệ đa năng, kệ săt V lỗ', '', 'ke-da-nang-ke-sat-v-lo', '', NULL, 68),
(92, 'en', 'english version Kệ đa năng, kệ săt V lỗ', 'english version Công ty TNHH TM & SX Thành Hưng Phát là công ty hàng đầu chuyên cung cấp kệ sắt V lỗ đa năng, kệ shevling trung tải, kệ selective hạng nặng, kệ siêu thị uy tín, chất lượng . Kệ có khă năng chịu lực tốt, bền bỉ, tính thẩm mỹ cao . Kệ được thiết kế linh hoạt dễ dàng trong việc sử dụng, tháo lắp, di chuyển . Giá cả cạnh tranh nhất thị trường .', 'english version <p><strong>C&ocirc;ng ty TNHH TM &amp; SX Th&agrave;nh Hưng Ph&aacute;t l&agrave; c&ocirc;ng ty h&agrave;ng đầu chuy&ecirc;n cung cấp kệ sắt V lỗ đa năng, kệ shevling trung tải, kệ selective hạng nặng, kệ si&ecirc;u thị uy t&iacute;n, chất lượng . Kệ c&oacute; khă năng chịu lực tốt, bền bỉ, t&iacute;nh thẩm mỹ cao . Kệ được thiết kế linh hoạt dễ d&agrave;ng trong việc sử dụng, th&aacute;o lắp, di chuyển . Gi&aacute; cả cạnh tranh nhất thị trường .</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-&nbsp;K&iacute;ch thước, M&agrave;u sắc : Nhận sản xuất gi&aacute; kệ để h&agrave;ng theo y&ecirc;u cầu<br />\r\n- Trọng tải: 100-120kg/tầng kệ.</strong><br />\r\n<strong>- Bề mặt kệ được xử l&yacute; bằng c&ocirc;ng nghệ phun sơn tĩnh điện cao cấp chống gỉ s&eacute;t tối đa.<br />\r\n- Gi&aacute; cả cạnh tranh nhất thị trường.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>ĐẶC T&Iacute;NH KỆ SẮT V LỖ</h2>\r\n\r\n<p>&nbsp;<strong>1. Sự h&agrave;i h&ograve;a&nbsp;&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Thiết kế theo phong c&aacute;ch Đơn giản, hiện đại ph&ugrave; hợp với tất cả c&aacute;c cửa h&agrave;ng b&aacute;n lẻ hay hệ thống cửa h&agrave;ng lớn.</li>\r\n	<li>Ch&uacute;ng t&ocirc;i nhận sản xuất gi&aacute; kệ để h&agrave;ng theo y&ecirc;u cầu: Cao, Rộng, S&acirc;u,&nbsp; M&agrave;u sơn theo y&ecirc;u cầu</li>\r\n	<li>Với m&agrave;u sắc đa dạng, c&aacute;c sản phẩm kệ để h&agrave;ng đa năng&nbsp;sẽ cho bạn nhiều hơn những lựa chọn ph&ugrave; hợp với sở th&iacute;ch c&ugrave;ng&nbsp;kh&ocirc;ng gian b&aacute;n h&agrave;ng.</li>\r\n</ul>\r\n\r\n<p><strong>2. Chất liệu</strong></p>\r\n\r\n<ul>\r\n	<li>Sử dụng nguy&ecirc;n vật liệu l&agrave; những c&acirc;y&nbsp;<strong><em>sắt V&nbsp;lỗ&nbsp;</em></strong>chất lượng cao để lắp r&aacute;p th&agrave;nh bộ khung kệ để h&agrave;ng chắc chắn.</li>\r\n	<li>Kết hợp với c&aacute;c mặt kệ được l&agrave;m từ th&eacute;p tấm dập cuốn cạnh d&agrave;y 8mm hoặc v&aacute;n MDF,<br />\r\n	Bề mặt kệ được xử l&yacute; bằng c&ocirc;ng nghệ phun sơn tĩnh điện cao cấp, gi&uacute;p chống lại c&aacute;c&nbsp;t&aacute;c nh&acirc;n m&ocirc;i trường g&acirc;y gỉ s&eacute;t</li>\r\n	<li>&nbsp;Bộ gi&aacute; kệ trưng b&agrave;y đa năng c&oacute; thể đ&aacute;p ứng được nhu cầu trưng b&agrave;y nhiều loại h&agrave;ng h&oacute;a c&oacute; tải trọng từ 100-120kg/tầng kệ.&nbsp;</li>\r\n	<li>&nbsp;Bề mặt kệ được xử l&yacute; bằng c&ocirc;ng nghệ phun sơn tĩnh điện cao cấp, gi&uacute;p chống lại c&aacute;c t&aacute;c nh&acirc;n m&ocirc;i trường g&acirc;y gỉ s&eacute;t.</li>\r\n	<li>Tuổi thọ của những sản phẩm gi&aacute; kệ n&agrave;y rất cao, c&oacute; thể l&ecirc;n đến&nbsp;<strong>30 Năm</strong>.&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>ỨNG DỤNG</h2>\r\n\r\n<ul>\r\n	<li><strong>3. Kệ để h&agrave;ng đa năng được thiết kế đơn giản, dễ sử dụng trong mọi kh&ocirc;ng gian, địa h&igrave;nh kh&aacute;c nhau:</strong>\r\n\r\n	<ul>\r\n		<li>Lắp r&aacute;p nhanh ch&oacute;ng, di dời thuận tiện.</li>\r\n		<li>K&iacute;ch thước đa dạng, t&ugrave;y biến, dễ d&agrave;ng n&acirc;ng cấp về sau.</li>\r\n		<li>C&oacute; khả năng t&ugrave;y chỉnh khoảng c&aacute;ch giữa hai mặt kệ để ph&ugrave; hợp với nhiều loại h&agrave;ng h&oacute;a c&oacute; k&iacute;ch thước kh&aacute;c nhau.</li>\r\n		<li>Đa năng trong mục đ&iacute;ch sử dụng: ngo&agrave;i c&ocirc;ng dụng trưng b&agrave;y h&agrave;ng h&oacute;a, hệ thống kệ để h&agrave;ng đa năng cũng được sử dụng để lưu trữ h&agrave;ng h&oacute;a, hồ sơ t&agrave;i liệu trong kho nhờ độ bền vượt trội, kết cấu vững chắc.</li>\r\n	</ul>\r\n	<strong>4. Dịch vụ uy t&iacute;n</strong>\r\n\r\n	<ul>\r\n		<li>Ch&uacute;ng t&ocirc;i bảo h&agrave;nh tất cả sản phẩm tối thiểu từ 5&nbsp;- 10&nbsp;năm.</li>\r\n	</ul>\r\n\r\n	<ul>\r\n		<li>Cam kết gi&aacute; cả cạnh tranh nhất thị trường</li>\r\n		<li>Miễn ph&iacute; vận chuyển lắp đặt To&agrave;n quốc.</li>\r\n		<li>Hỗ trợ tư vấn v&agrave; khảo s&aacute;t mặt bằng miễn ph&iacute; nhanh ch&oacute;ng.</li>\r\n		<li><strong>Cam kết 1 ĐỔI 1 Nếu sản phẩm k&eacute;m chất lượng, Kh&aacute;ch h&agrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng.!</strong></li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p><em><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Li&ecirc;n hệ ngay để được tư vấn&nbsp;: 093.155.1984 hoặc 0968.530.689</strong></em></p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Kệ đa năng, kệ săt V lỗ', '', 'en-ke-da-nang-ke-sat-v-lo', '', NULL, 68),
(93, 'vn', 'Kệ đa năng Thành Hưng Phát', 'Công ty TNHH TM&SX THÀNH HƯNG PHÁT chuyên sản xuất các loại kệ để hàng.\r\n- Kệ sắt V lỗ đa năng\r\n- Kệ Shelving Trung tải\r\n- Kệ selective hạng nặng\r\n- Gia công các mặt hàng cơ khí. Liên hệ: 0931551984 Web: cokhisocson.com', '<p><strong>C&ocirc;ng ty TNHH TM&amp;SX TH&Agrave;NH HƯNG PH&Aacute;T chuy&ecirc;n sản xuất c&aacute;c loại kệ để h&agrave;ng.<br />\r\n- Kệ sắt V lỗ đa năng<br />\r\n- Kệ Shelving Trung tải<br />\r\n- Kệ selective hạng nặng<br />\r\n- Gia c&ocirc;ng c&aacute;c mặt h&agrave;ng cơ kh&iacute;. Li&ecirc;n hệ: 0931551984 Web: cokhisocson.com</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&aacute;c loại kệ c&oacute; sẵn c&oacute; chiều rộng: 300mm,400mm,500mm,600mm với chiều d&agrave;i tương ứng: 900mm,1000mm,1200mm,1500mm<br />\r\n* Nhận sản xuất theo đơn đặt h&agrave;ng. Gi&aacute; t&ocirc;t nhất thị trường.<br />\r\nC&aacute;c loại V lỗ: V3*3,V4*4,V3*5,V4*6 với độ d&agrave;i c&oacute; sẵn: 2000mm,2400mm,3000m. ( Sản xuất theo k&iacute;ch thước y&ecirc;u cầu)<br />\r\nĐộ d&agrave;y của kệ sắt V lỗ: 1,6mm-1,8mm-2mm<br />\r\n***Ưu điểm của kệ sắt V lỗ đa năng<br />\r\n- Dễ d&agrave;ng th&aacute;o lắp, tăng chỉnh chiều cao m&acirc;m tầng linh hoạt.<br />\r\n- Sản phẩm kệ sắt V lỗ được sơn Tĩnh điện theo ti&ecirc;u chuẩn với độ bền cao.<br />\r\n- Vật liệu sử dụng để sản xuất kệ sắt V lỗ l&agrave; th&eacute;p ti&ecirc;u chuẩn Jis của Nhật Bản. INOX....<br />\r\n- C&aacute;c m&acirc;m tầng thường được d&ugrave;ng t&ocirc;n với độ d&agrave;y phổ th&ocirc;ng l&agrave; 0.7mm c&oacute; thể d&agrave;y hơn t&ugrave;y thuộc v&agrave;o tải trọng mặt h&agrave;ng sao cho ph&ugrave; hợp để giảm chi ph&iacute; sao cho thấp nhất m&agrave; vẫn đạt t&iacute;nh thẩm mỹ v&agrave; chất lượng tốt nhất.<br />\r\n- M&acirc;m tầng cũng c&oacute; thể d&ugrave;ng v&aacute;n MDF Bạn c&oacute; nhu cầu đặt h&agrave;ng vui l&ograve;ng li&ecirc;n hệ:<br />\r\n* Xưởng sản xuất: Th&ocirc;n Hương Đ&igrave;nh Đ&ocirc;ng, X&atilde; Mai Đ&igrave;nh, Huyện S&oacute;c sơn, TP H&agrave; Nội. * Hotline: 0931551984- 0968530689 Miễn ph&iacute; vận chuyển khu vực H&agrave; Nội. C&aacute;c tỉnh gửi xe tải theo chỉ định kh&aacute;ch h&agrave;ng chịu ph&iacute;.<br />\r\nĐơn h&agrave;ng lớn cty c&oacute; xe vận chuyển Miễn Ph&iacute;.<br />\r\nSản phẩm Th&agrave;nh Hưng Ph&aacute;t đạt chất lượng ISO: 9001-2008 TH&Agrave;NH HƯNG PH&Aacute;T c&oacute; cả chứng chỉ kiểm tra tải trọng của đơn vị kiểm định đo lường theo từng đơn h&agrave;ng cụ thể.</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Kệ đa năng Thành Hưng Phát', '', 'ke-da-nang-thanh-hung-phat', '', NULL, 69),
(94, 'en', 'english version Kệ đa năng Thành Hưng Phát', 'english version Công ty TNHH TM&SX THÀNH HƯNG PHÁT chuyên sản xuất các loại kệ để hàng.\r\n- Kệ sắt V lỗ đa năng\r\n- Kệ Shelving Trung tải\r\n- Kệ selective hạng nặng\r\n- Gia công các mặt hàng cơ khí. Liên hệ: 0931551984 Web: cokhisocson.com', 'english version <p><strong>C&ocirc;ng ty TNHH TM&amp;SX TH&Agrave;NH HƯNG PH&Aacute;T chuy&ecirc;n sản xuất c&aacute;c loại kệ để h&agrave;ng.<br />\r\n- Kệ sắt V lỗ đa năng<br />\r\n- Kệ Shelving Trung tải<br />\r\n- Kệ selective hạng nặng<br />\r\n- Gia c&ocirc;ng c&aacute;c mặt h&agrave;ng cơ kh&iacute;. Li&ecirc;n hệ: 0931551984 Web: cokhisocson.com</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&aacute;c loại kệ c&oacute; sẵn c&oacute; chiều rộng: 300mm,400mm,500mm,600mm với chiều d&agrave;i tương ứng: 900mm,1000mm,1200mm,1500mm<br />\r\n* Nhận sản xuất theo đơn đặt h&agrave;ng. Gi&aacute; t&ocirc;t nhất thị trường.<br />\r\nC&aacute;c loại V lỗ: V3*3,V4*4,V3*5,V4*6 với độ d&agrave;i c&oacute; sẵn: 2000mm,2400mm,3000m. ( Sản xuất theo k&iacute;ch thước y&ecirc;u cầu)<br />\r\nĐộ d&agrave;y của kệ sắt V lỗ: 1,6mm-1,8mm-2mm<br />\r\n***Ưu điểm của kệ sắt V lỗ đa năng<br />\r\n- Dễ d&agrave;ng th&aacute;o lắp, tăng chỉnh chiều cao m&acirc;m tầng linh hoạt.<br />\r\n- Sản phẩm kệ sắt V lỗ được sơn Tĩnh điện theo ti&ecirc;u chuẩn với độ bền cao.<br />\r\n- Vật liệu sử dụng để sản xuất kệ sắt V lỗ l&agrave; th&eacute;p ti&ecirc;u chuẩn Jis của Nhật Bản. INOX....<br />\r\n- C&aacute;c m&acirc;m tầng thường được d&ugrave;ng t&ocirc;n với độ d&agrave;y phổ th&ocirc;ng l&agrave; 0.7mm c&oacute; thể d&agrave;y hơn t&ugrave;y thuộc v&agrave;o tải trọng mặt h&agrave;ng sao cho ph&ugrave; hợp để giảm chi ph&iacute; sao cho thấp nhất m&agrave; vẫn đạt t&iacute;nh thẩm mỹ v&agrave; chất lượng tốt nhất.<br />\r\n- M&acirc;m tầng cũng c&oacute; thể d&ugrave;ng v&aacute;n MDF Bạn c&oacute; nhu cầu đặt h&agrave;ng vui l&ograve;ng li&ecirc;n hệ:<br />\r\n* Xưởng sản xuất: Th&ocirc;n Hương Đ&igrave;nh Đ&ocirc;ng, X&atilde; Mai Đ&igrave;nh, Huyện S&oacute;c sơn, TP H&agrave; Nội. * Hotline: 0931551984- 0968530689 Miễn ph&iacute; vận chuyển khu vực H&agrave; Nội. C&aacute;c tỉnh gửi xe tải theo chỉ định kh&aacute;ch h&agrave;ng chịu ph&iacute;.<br />\r\nĐơn h&agrave;ng lớn cty c&oacute; xe vận chuyển Miễn Ph&iacute;.<br />\r\nSản phẩm Th&agrave;nh Hưng Ph&aacute;t đạt chất lượng ISO: 9001-2008 TH&Agrave;NH HƯNG PH&Aacute;T c&oacute; cả chứng chỉ kiểm tra tải trọng của đơn vị kiểm định đo lường theo từng đơn h&agrave;ng cụ thể.</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Kệ đa năng Thành Hưng Phát', '', 'en-ke-da-nang-thanh-hung-phat', '', NULL, 69),
(95, 'vn', 'Giải pháp cho khách hàng', 'CTY TNHH TM&SX THÀNH HƯNG PHÁT là một trong những cty đi đầu về sản xuất gái kệ để hàng tại thị trường Việt Nam. Chũng tôi chuyên cung cấp các loại giá kệ để hàng như: Kệ Shelving ( trung tải), Kệ Selective, Kẹ sắt V lỗ đa năng, Kệ sàn ...... Cty chúng tôi đã thi công lắp đặt giá kệ cho rất nhiều đối tác như: Cty SamSung Yên Phong& Bắc Ninh. YAMAHA MOTOR VIỆT NAM, PIAGIO BÌNH XUYÊN, TOYOTA, NASCO...', '<p><strong>CTY TNHH TM&amp;SX TH&Agrave;NH HƯNG PH&Aacute;T l&agrave; một trong những cty đi đầu về sản xuất g&aacute;i kệ để h&agrave;ng tại thị trường Việt Nam. Chũng t&ocirc;i chuy&ecirc;n cung cấp c&aacute;c loại gi&aacute; kệ để h&agrave;ng như: Kệ Shelving ( trung tải), Kệ Selective, Kẹ sắt V lỗ đa năng, Kệ s&agrave;n ...... Cty ch&uacute;ng t&ocirc;i đ&atilde; thi c&ocirc;ng lắp đặt gi&aacute; kệ cho rất nhiều đối t&aacute;c như: Cty SamSung Y&ecirc;n Phong&amp; Bắc Ninh. YAMAHA MOTOR VIỆT NAM, PIAGIO B&Igrave;NH XUY&Ecirc;N, TOYOTA, NASCO NỘI B&Agrave;I.....<br />\r\nTH&Agrave;NH HƯNG PH&Aacute;T CAM KẾT BẢO H&Agrave;NH H&Agrave;NG H&Oacute;A TỪ 5-10 NĂM.<br />\r\n&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>* CTY TNHH TM&amp;SX TH&Agrave;NH HƯNG PH&Aacute;T l&agrave; một trong những cty đi đầu về sản xuất g&aacute;i kệ để h&agrave;ng tại thị trường Việt Nam. Chũng t&ocirc;i chuy&ecirc;n cung cấp c&aacute;c loại gi&aacute; kệ để h&agrave;ng như: Kệ Shelving ( trung tải), Kệ Selective, Kẹ sắt V lỗ đa năng, Kệ s&agrave;n ...... Cty ch&uacute;ng t&ocirc;i đ&atilde; thi c&ocirc;ng lắp đặt gi&aacute; kệ cho rất nhiều đối t&aacute;c như: Cty SamSung Y&ecirc;n Phong&amp; Bắc Ninh. YAMAHA MOTOR VIỆT NAM, PIAGIO B&Igrave;NH XUY&Ecirc;N, TOYOTA, NASCO NỘI B&Agrave;I.....<br />\r\n* Sản phẩm kệ chứa h&agrave;ng, kệ để h&agrave;ng của Th&agrave;nh Hưng Ph&aacute;t gi&uacute;p giải quyết nhanh ch&oacute;ng việc quản l&yacute; v&agrave; lu&acirc;n chuy&ecirc;n h&agrave;ng h&oacute;a trong kho h&agrave;ng. đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch h&agrave;ng từ nhưng y&ecirc;u cầu k&yacute; thuật cao nhất đến những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.<br />\r\n* Với đội ngũ c&ocirc;ng nh&acirc;n l&agrave;nh nghề với nhiều năm kinh nghiệm trong lĩnh vực cơ kh&iacute; v&agrave; nhưng nh&acirc;n vi&ecirc;n kỹ thuật chuy&ecirc;n m&ocirc;n cao c&oacute; thể tư vấn cho Qu&yacute; kh&aacute;ch h&agrave;ng một giải ph&aacute;p tiết kiệm v&agrave; tối ưu nhất với một chi ph&iacute; hợp l&yacute; ko thể thấp hơn đc m&agrave; vẫn c&oacute; thể đạt y&ecirc;u cầu: Chắc chắn, Đẹp, v&agrave; điều rất quan trọng m&agrave; kh&aacute;ch h&agrave;ng lu&ocirc;n quan t&acirc;m đ&oacute; l&agrave;&nbsp;<strong>RẺ.<br />\r\n**** Để đ&aacute;p ứng thị hiếu kh&aacute;ch h&agrave;ng l&agrave; : NGON BỔ RẺ th&igrave; Th&agrave;nh Hưng Ph&aacute;t đ&atilde; đầu tư d&acirc;y truyền c&ocirc;ng nghệ hiện đại để giảm chi ph&iacute; nh&acirc;n c&ocirc;ng v&agrave; thời gian sản xuất m&agrave; chất lượng ko đổi thậm tr&iacute; c&ograve;n n&acirc;ng cao.<br />\r\n<em>CTY TNHH TM&amp;SX TH&Agrave;NH HƯNG PH&Aacute;T RẤT MONG ĐƯỢC PHỤC VỤ KH&Aacute;CH H&Agrave;NG!</em></strong></p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Giải pháp cho khách hàng', '', 'giai-phap-cho-khach-hang', '', NULL, 70),
(96, 'en', 'english version Giải pháp cho khách hàng', 'english version CTY TNHH TM&SX THÀNH HƯNG PHÁT là một trong những cty đi đầu về sản xuất gái kệ để hàng tại thị trường Việt Nam. Chũng tôi chuyên cung cấp các loại giá kệ để hàng như: Kệ Shelving ( trung tải), Kệ Selective, Kẹ sắt V lỗ đa năng, Kệ sàn ...... Cty chúng tôi đã thi công lắp đặt giá kệ cho rất nhiều đối tác như: Cty SamSung Yên Phong& Bắc Ninh. YAMAHA MOTOR VIỆT NAM, PIAGIO BÌNH XUYÊN, TOYOTA, NASCO...', 'english version <p><strong>CTY TNHH TM&amp;SX TH&Agrave;NH HƯNG PH&Aacute;T l&agrave; một trong những cty đi đầu về sản xuất g&aacute;i kệ để h&agrave;ng tại thị trường Việt Nam. Chũng t&ocirc;i chuy&ecirc;n cung cấp c&aacute;c loại gi&aacute; kệ để h&agrave;ng như: Kệ Shelving ( trung tải), Kệ Selective, Kẹ sắt V lỗ đa năng, Kệ s&agrave;n ...... Cty ch&uacute;ng t&ocirc;i đ&atilde; thi c&ocirc;ng lắp đặt gi&aacute; kệ cho rất nhiều đối t&aacute;c như: Cty SamSung Y&ecirc;n Phong&amp; Bắc Ninh. YAMAHA MOTOR VIỆT NAM, PIAGIO B&Igrave;NH XUY&Ecirc;N, TOYOTA, NASCO NỘI B&Agrave;I.....<br />\r\nTH&Agrave;NH HƯNG PH&Aacute;T CAM KẾT BẢO H&Agrave;NH H&Agrave;NG H&Oacute;A TỪ 5-10 NĂM.<br />\r\n&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>* CTY TNHH TM&amp;SX TH&Agrave;NH HƯNG PH&Aacute;T l&agrave; một trong những cty đi đầu về sản xuất g&aacute;i kệ để h&agrave;ng tại thị trường Việt Nam. Chũng t&ocirc;i chuy&ecirc;n cung cấp c&aacute;c loại gi&aacute; kệ để h&agrave;ng như: Kệ Shelving ( trung tải), Kệ Selective, Kẹ sắt V lỗ đa năng, Kệ s&agrave;n ...... Cty ch&uacute;ng t&ocirc;i đ&atilde; thi c&ocirc;ng lắp đặt gi&aacute; kệ cho rất nhiều đối t&aacute;c như: Cty SamSung Y&ecirc;n Phong&amp; Bắc Ninh. YAMAHA MOTOR VIỆT NAM, PIAGIO B&Igrave;NH XUY&Ecirc;N, TOYOTA, NASCO NỘI B&Agrave;I.....<br />\r\n* Sản phẩm kệ chứa h&agrave;ng, kệ để h&agrave;ng của Th&agrave;nh Hưng Ph&aacute;t gi&uacute;p giải quyết nhanh ch&oacute;ng việc quản l&yacute; v&agrave; lu&acirc;n chuy&ecirc;n h&agrave;ng h&oacute;a trong kho h&agrave;ng. đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch h&agrave;ng từ nhưng y&ecirc;u cầu k&yacute; thuật cao nhất đến những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.<br />\r\n* Với đội ngũ c&ocirc;ng nh&acirc;n l&agrave;nh nghề với nhiều năm kinh nghiệm trong lĩnh vực cơ kh&iacute; v&agrave; nhưng nh&acirc;n vi&ecirc;n kỹ thuật chuy&ecirc;n m&ocirc;n cao c&oacute; thể tư vấn cho Qu&yacute; kh&aacute;ch h&agrave;ng một giải ph&aacute;p tiết kiệm v&agrave; tối ưu nhất với một chi ph&iacute; hợp l&yacute; ko thể thấp hơn đc m&agrave; vẫn c&oacute; thể đạt y&ecirc;u cầu: Chắc chắn, Đẹp, v&agrave; điều rất quan trọng m&agrave; kh&aacute;ch h&agrave;ng lu&ocirc;n quan t&acirc;m đ&oacute; l&agrave;&nbsp;<strong>RẺ.<br />\r\n**** Để đ&aacute;p ứng thị hiếu kh&aacute;ch h&agrave;ng l&agrave; : NGON BỔ RẺ th&igrave; Th&agrave;nh Hưng Ph&aacute;t đ&atilde; đầu tư d&acirc;y truyền c&ocirc;ng nghệ hiện đại để giảm chi ph&iacute; nh&acirc;n c&ocirc;ng v&agrave; thời gian sản xuất m&agrave; chất lượng ko đổi thậm tr&iacute; c&ograve;n n&acirc;ng cao.<br />\r\n<em>CTY TNHH TM&amp;SX TH&Agrave;NH HƯNG PH&Aacute;T RẤT MONG ĐƯỢC PHỤC VỤ KH&Aacute;CH H&Agrave;NG!</em></strong></p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Giải pháp cho khách hàng', '', 'en-giai-phap-cho-khach-hang', '', NULL, 70);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `size_id` bigint(20) NOT NULL,
  `size_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_stock` int(11) DEFAULT NULL,
  `size_price` double DEFAULT NULL,
  `color_id` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trademark`
--

CREATE TABLE `trademark` (
  `id` int(11) NOT NULL,
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `trademark`
--

INSERT INTO `trademark` (`id`, `name`, `image`, `note`) VALUES
(102, 'ComboEZ', 'icon_1.png', ''),
(103, 'PARI', 'icon_2.png', ''),
(104, 'NoseFrida', 'icon_3.png', ''),
(105, 'Heine', 'icon_4.png', ''),
(106, '1', 'icon_5.png', ''),
(107, '1', 'icon_6.png', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_address` text COLLATE utf8_unicode_ci,
  `user_password` text COLLATE utf8_unicode_ci,
  `created_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `time` date NOT NULL,
  `ask` text COLLATE utf8_unicode_ci NOT NULL,
  `remember_me_identify` text COLLATE utf8_unicode_ci NOT NULL,
  `remember_me_token` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `user_password`, `created_date`, `state`, `time`, `ask`, `remember_me_identify`, `remember_me_token`) VALUES
(10, 'hung', 'hung71483@gmail.com', NULL, NULL, '$2y$10$K1pWsDER5UHre0zaC5IYyOZFnYSXYA34OO7M7Yu3wG/LzFaiXaN6O', NULL, 1, '0000-00-00', '$2y$10$agH2TActbd84Z7FltVwgYuuls12k7kwo4nIKTwYTF9NwaoD/B6Z8a', 'Ub9dhdrbOub9AnPESARe', 'zcZMIcNMkrAeVbLqbPIueU4x0JS3Q5'),
(11, 'Việt Hưng', 'viethung95cute@gmail.com', NULL, NULL, '$2y$10$H/oRwht13lj1/tnj.VEIVO58qvIvEIjfTDt4HByWikd/e15e0CD2G', NULL, 1, '0000-00-00', '$2y$10$nEdTTn2WO1lwvkii8gfgpuwf9TRz72.ypUNmDUUGlVJvuR2ZC.idy', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_online`
--

CREATE TABLE `user_online` (
  `tgtmp` int(15) NOT NULL DEFAULT '0',
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `local` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `wishlist_created_date` datetime DEFAULT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `admin_role` (`admin_role`),
  ADD KEY `admin_state` (`admin_state`);

--
-- Chỉ mục cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`admin_role_id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD PRIMARY KEY (`id_cartDetail`),
  ADD KEY `id_cart` (`id_cart`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`config_id`);

--
-- Chỉ mục cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`);

--
-- Chỉ mục cho bảng `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`),
  ADD UNIQUE KEY `currency_code` (`currency_code`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menu_type_id` (`menu_type_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `state` (`state`),
  ADD KEY `menu_parent` (`menu_parent`),
  ADD KEY `productcat_id` (`productcat_id`),
  ADD KEY `newscat_id` (`newscat_id`);

--
-- Chỉ mục cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Chỉ mục cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`menu_type_id`);

--
-- Chỉ mục cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_type` (`menu_type_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat`
--
ALTER TABLE `newscat`
  ADD PRIMARY KEY (`newscat_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newscat_id` (`newscat_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `newstag`
--
ALTER TABLE `newstag`
  ADD PRIMARY KEY (`newstag_id`);

--
-- Chỉ mục cho bảng `newstag_languages`
--
ALTER TABLE `newstag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `nhan_tin`
--
ALTER TABLE `nhan_tin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  ADD PRIMARY KEY (`optionsQ1_id`);

--
-- Chỉ mục cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  ADD PRIMARY KEY (`optionsQ2_id`);

--
-- Chỉ mục cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  ADD PRIMARY KEY (`optionsQ3_id`);

--
-- Chỉ mục cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  ADD PRIMARY KEY (`optionsQ4_id`);

--
-- Chỉ mục cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  ADD PRIMARY KEY (`optionsQ5_id`);

--
-- Chỉ mục cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  ADD PRIMARY KEY (`optionsQ6_id`);

--
-- Chỉ mục cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  ADD PRIMARY KEY (`optionsQ7_id`);

--
-- Chỉ mục cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  ADD PRIMARY KEY (`optionsQ8_id`);

--
-- Chỉ mục cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  ADD PRIMARY KEY (`optionsQ9_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `orders_state` (`orders_state`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_state`
--
ALTER TABLE `order_state`
  ADD PRIMARY KEY (`order_state_id`),
  ADD KEY `state` (`state`);

--
-- Chỉ mục cho bảng `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `product_hot` (`product_hot`),
  ADD KEY `state` (`state`),
  ADD KEY `product_sale` (`product_sale`),
  ADD KEY `product_new` (`product_new`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat`
--
ALTER TABLE `productcat`
  ADD PRIMARY KEY (`productcat_id`),
  ADD KEY `productcat_sort_order` (`productcat_sort_order`),
  ADD KEY `productcat_parent` (`productcat_parent`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `producttag`
--
ALTER TABLE `producttag`
  ADD PRIMARY KEY (`producttag_id`);

--
-- Chỉ mục cho bảng `producttag_languages`
--
ALTER TABLE `producttag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  ADD PRIMARY KEY (`producer_id`);

--
-- Chỉ mục cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_id` (`producer_id`);

--
-- Chỉ mục cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  ADD PRIMARY KEY (`regInfor_id`);

--
-- Chỉ mục cho bảng `regMember`
--
ALTER TABLE `regMember`
  ADD PRIMARY KEY (`regMember_id`);

--
-- Chỉ mục cho bảng `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Chỉ mục cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  ADD PRIMARY KEY (`servicecat_id`);

--
-- Chỉ mục cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_servicecat` (`servicecat_id`);

--
-- Chỉ mục cho bảng `servicetag`
--
ALTER TABLE `servicetag`
  ADD PRIMARY KEY (`servicetag_id`);

--
-- Chỉ mục cho bảng `servicetag_languages`
--
ALTER TABLE `servicetag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_service` (`service_id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `trademark`
--
ALTER TABLE `trademark`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`tgtmp`),
  ADD KEY `ip` (`ip`),
  ADD KEY `local` (`local`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `admin_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  MODIFY `id_cartDetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `color_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `config`
--
ALTER TABLE `config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=437;

--
-- AUTO_INCREMENT cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `menu_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `newscat`
--
ALTER TABLE `newscat`
  MODIFY `newscat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `newstag`
--
ALTER TABLE `newstag`
  MODIFY `newstag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `newstag_languages`
--
ALTER TABLE `newstag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT cho bảng `nhan_tin`
--
ALTER TABLE `nhan_tin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  MODIFY `optionsQ1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  MODIFY `optionsQ2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  MODIFY `optionsQ3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  MODIFY `optionsQ4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  MODIFY `optionsQ5_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  MODIFY `optionsQ6_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  MODIFY `optionsQ7_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  MODIFY `optionsQ8_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  MODIFY `optionsQ9_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_state`
--
ALTER TABLE `order_state`
  MODIFY `order_state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2058;

--
-- AUTO_INCREMENT cho bảng `productcat`
--
ALTER TABLE `productcat`
  MODIFY `productcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=497;

--
-- AUTO_INCREMENT cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=979;

--
-- AUTO_INCREMENT cho bảng `producttag`
--
ALTER TABLE `producttag`
  MODIFY `producttag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `producttag_languages`
--
ALTER TABLE `producttag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4103;

--
-- AUTO_INCREMENT cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  MODIFY `producer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  MODIFY `regInfor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `regMember`
--
ALTER TABLE `regMember`
  MODIFY `regMember_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT cho bảng `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  MODIFY `servicecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `servicetag`
--
ALTER TABLE `servicetag`
  MODIFY `servicetag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `servicetag_languages`
--
ALTER TABLE `servicetag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `size_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `trademark`
--
ALTER TABLE `trademark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD CONSTRAINT `cartdetail_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id_cart`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `color`
--
ALTER TABLE `color`
  ADD CONSTRAINT `color_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD CONSTRAINT `menu_languages_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD CONSTRAINT `menu_type_languages_ibfk_1` FOREIGN KEY (`menu_type_id`) REFERENCES `menu_type` (`menu_type_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD CONSTRAINT `newscat_languages_ibfk_1` FOREIGN KEY (`newscat_id`) REFERENCES `newscat` (`newscat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD CONSTRAINT `news_languages_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD CONSTRAINT `page_languages_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD CONSTRAINT `productcat_languages_ibfk_1` FOREIGN KEY (`productcat_id`) REFERENCES `productcat` (`productcat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD CONSTRAINT `product_languages_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD CONSTRAINT `product_producer_languages_ibfk_1` FOREIGN KEY (`producer_id`) REFERENCES `product_producer` (`producer_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD CONSTRAINT `pro_color_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`product_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD CONSTRAINT `servicecat_languages_ibfk_1` FOREIGN KEY (`servicecat_id`) REFERENCES `servicecat` (`servicecat_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD CONSTRAINT `service_languages_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
