-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th5 12, 2018 lúc 08:37 AM
-- Phiên bản máy phục vụ: 5.5.56
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tuvandinhcu_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_items`
--

CREATE TABLE `category_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` longtext COLLATE utf8mb4_unicode_ci,
  `seo_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `isActive` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_items`
--

INSERT INTO `category_items` (`id`, `name`, `path`, `description`, `image`, `image_mobile`, `level`, `parent_id`, `type`, `seo_title`, `seo_description`, `seo_keywords`, `order`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'Bảo Lãnh Mỹ', 'bao-lanh-my', '<p>\r\n	Đặt chân đến thiên đường nước Mỹ có khó như bạn nghĩ? Topten Immigration tự hào đã thành công với hàng trăm bộ hồ sơ bảo lãnh diện vợ chồng Mỹ, diện hôn phu hôn thê và diện đồng giới Mỹ.\r\n</p>', 'images/uploads/images/flag/flag_america.png', NULL, 0, NULL, 0, 'Bảo Lãnh Mỹ', 'Bảo Lãnh Mỹ', 'Bảo Lãnh Mỹ', 1, 1, '2018-04-23 02:39:46', '2018-05-10 09:13:42'),
(2, 'Vợ Chồng Mỹ', 'vo-chong-my', '<p>\r\n	Vợ Chồng Mỹ\r\n</p>', 'images/uploads/images/gt_1.jpg', NULL, 1, 1, 0, 'Vợ Chồng Mỹ', 'Vợ Chồng Mỹ', 'Vợ Chồng Mỹ', 1, 1, '2018-04-23 02:40:32', '2018-05-05 01:34:27'),
(3, 'Hôn Phu Hôn Thê Mỹ', 'hon-phu-hon-the-my', '<p>\r\n	Hôn Phu Hôn Thê Mỹ\r\n</p>', 'images/uploads/images/gt_1.jpg', NULL, 1, 1, 0, 'Hôn Phu Hôn Thê Mỹ', 'Hôn Phu Hôn Thê Mỹ', 'Hôn Phu Hôn Thê Mỹ', 2, 1, '2018-04-23 02:40:57', '2018-05-05 01:34:20'),
(4, 'Đồng Giới Mỹ', 'dong-gioi-my', '<p>\r\n	Đồng Giới Mỹ\r\n</p>', 'images/uploads/images/gt_1.jpg', NULL, 1, 1, 0, 'Đồng Giới Mỹ', 'Đồng Giới Mỹ', 'Đồng Giới Mỹ', 3, 1, '2018-04-23 02:41:21', '2018-05-05 01:34:44'),
(6, 'Bảo Lãnh Úc', 'bao-lanh-uc', '<p>\r\n	Thủ tục để bảo lãnh người thân sang Úc như thế nào? Topten Immigration luôn cập nhật những thông tin mới nhất từ chính phủ Úc và khắc phục các hồ sơ khó xin visa với tỷ lệ thành công lên đến 98%\r\n</p>', 'images/uploads/images/flag/flag_australia.png', NULL, 0, NULL, 0, 'Bảo Lãnh Úc', 'Bảo Lãnh Úc', 'Bảo Lãnh Úc', 2, 1, '2018-04-23 02:42:57', '2018-05-10 09:19:12'),
(7, 'Vợ Chồng Úc', 'vo-chong-uc', '<p>\r\n	Vợ Chồng Úc\r\n</p>', 'images/uploads/images/gt_1.jpg', NULL, 1, 6, 0, 'Vợ Chồng Úc', 'Vợ Chồng Úc', 'Vợ Chồng Úc', 1, 1, '2018-04-23 02:43:29', '2018-05-05 01:38:15'),
(8, 'Hôn Phu Hôn Thê Úc', 'hon-phu-hon-the-uc', '<p>\r\n	Hôn Phu Hôn Thê Úc\r\n</p>', 'images/uploads/images/gt_1.jpg', NULL, 1, 6, 0, 'Hôn Phu Hôn Thê Úc', 'Hôn Phu Hôn Thê Úc', 'Hôn Phu Hôn Thê Úc', 2, 1, '2018-04-23 02:43:52', '2018-05-05 01:38:40'),
(9, 'Đồng Giới Úc', 'dong-gioi-uc', '<p>\r\n	Đồng Giới Úc\r\n</p>', 'images/uploads/images/gt_1.jpg', NULL, 1, 6, 0, 'Đồng Giới Úc', 'Đồng Giới Úc', 'Đồng Giới Úc', 3, 1, '2018-04-23 02:44:48', '2018-05-05 01:38:57'),
(10, 'Sống Chung Không Hôn Thú', 'song-chung-khong-hon-thu', '<p>\r\n	Sống Chung Không Hôn Thú\r\n</p>', 'images/uploads/images/gt_1.jpg', NULL, 1, 6, 0, 'Sống Chung Không Hôn Thú', 'Sống Chung Không Hôn Thú', 'Sống Chung Không Hôn Thú', 4, 1, '2018-04-23 02:47:06', '2018-05-05 01:39:14'),
(11, 'Quốc Tịch Sinh Con Tại VN', 'quoc-tich-sinh-con-tai-vn', '<p>\r\n	Các chuyên viên&nbsp;tại Topten Immigration luôn hỗ trợ quý khách hàng làm hồ sơ nhập quốc tịch Mỹ và Úc cho con của công dân Mỹ hoặc Úc sinh con tại Việt Nam và các hồ sơ bảo lãnh gia đình định cư khác\r\n</p>', 'images/uploads/images/flag/flag_child_immigration.jpg', NULL, 0, NULL, 0, 'Quốc Tịch Sinh Con Tại VN', 'Quốc Tịch Sinh Con Tại VN', 'Quốc Tịch Sinh Con Tại VN', 3, 1, '2018-04-23 02:47:31', '2018-05-10 09:22:20'),
(12, 'Quốc Tịch Mỹ Và Hộ Chiếu Mỹ Cho Con', 'quoc-tich-my-va-ho-chieu-my-cho-con', '<p>\r\n	Quốc Tịch Mỹ Và Hộ Chiếu Mỹ Cho Con Tại Việt Nam\r\n</p>', 'images/uploads/images/gt_1.jpg', NULL, 1, 11, 0, 'Quốc Tịch Mỹ Và Hộ Chiếu Mỹ Cho Con Tại Việt Nam', 'Quốc Tịch Mỹ Và Hộ Chiếu Mỹ Cho Con Tại Việt Nam', 'Quốc Tịch Mỹ Và Hộ Chiếu Mỹ Cho Con Tại Việt Nam', 1, 1, '2018-04-23 02:48:00', '2018-05-05 01:44:32'),
(13, 'Quốc Tịch Úc Và Hộ Chiếu Úc Cho Con', 'quoc-tich-uc-va-ho-chieu-uc-cho-con', '<p>\r\n	Quốc Tịch Úc Và Hộ Chiếu Úc Cho Con Tại Việt Nam\r\n</p>', 'images/uploads/images/gt_1.jpg', NULL, 1, 11, 0, 'Quốc Tịch Úc Và Hộ Chiếu Úc Cho Con Tại Việt Nam', 'Quốc Tịch Úc Và Hộ Chiếu Úc Cho Con Tại Việt Nam', 'Quốc Tịch Úc Và Hộ Chiếu Úc Cho Con Tại Việt Nam', 2, 1, '2018-04-23 03:03:00', '2018-05-05 01:45:06'),
(14, 'Diện Khác', 'dien-khac', '<p>\r\n	Hồ sơ giải quyết&nbsp;cha mẹ bảo lãnh con cái, con bảo lãnh cha mẹ hoặc anh chị em bảo lãnh luôn được Topten Immigration hoàn thành nhanh chóng theo pháp luật của nước sở tại.\r\n</p>', 'images/uploads/images/flag/flag_immigration.jpg', NULL, 0, NULL, 0, 'Các Diện Bảo Lãnh Gia Đình Khác', 'Các Diện Bảo Lãnh Gia Đình Khác', 'Các Diện Bảo Lãnh Gia Đình Khác', 4, 1, '2018-04-23 03:03:35', '2018-05-10 09:24:39'),
(15, 'Ba Mẹ Bảo Lãnh Con Cái', 'ba-me-bao-lanh-con-cai', '<p>\r\n	Ba Mẹ Bảo Lãnh Con Cái\r\n</p>', 'images/uploads/images/gt_1.jpg', NULL, 1, 14, 0, 'Ba Mẹ Bảo Lãnh Con Cái', 'Ba Mẹ Bảo Lãnh Con Cái', 'Ba Mẹ Bảo Lãnh Con Cái', 1, 1, '2018-04-23 03:03:58', '2018-05-05 01:42:18'),
(16, 'Con Bảo Lãnh Ba Mẹ', 'con-bao-lanh-ba-me', '<p>\r\n	Con Bảo Lãnh Ba Mẹ\r\n</p>', 'images/uploads/images/gt_1.jpg', NULL, 1, 14, 0, 'Con Bảo Lãnh Ba Mẹ', 'Con Bảo Lãnh Ba Mẹ', 'Con Bảo Lãnh Ba Mẹ', 2, 1, '2018-04-23 03:04:36', '2018-05-05 01:42:41'),
(17, 'Tin Tức', 'tin-tuc', '<p>\r\n	Tin Tức\r\n</p>', 'images/uploads/images/gt_1.jpg', NULL, 0, NULL, 0, 'Tin Tức', 'Tin Tức', 'Tin Tức', 5, 1, '2018-04-23 03:05:23', '2018-04-23 03:05:23'),
(18, 'Anh Chị Em Bảo Lãnh', 'anh-chi-em-bao-lanh', '<p>\r\n	Anh Chị Em Bảo Lãnh\r\n</p>', 'images/uploads/images/gt_1.jpg', NULL, 1, 14, 0, 'Anh Chị Em Bảo Lãnh', 'Anh Chị Em Bảo Lãnh', 'Anh Chị Em Bảo Lãnh', 3, 1, '2018-05-05 01:43:05', '2018-05-05 01:43:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_permissions`
--

CREATE TABLE `category_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_permissions`
--

INSERT INTO `category_permissions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Role', '2018-03-14 07:31:28', '2018-03-14 07:31:28'),
(2, 'User', '2018-03-14 07:31:28', '2018-03-14 07:31:28'),
(3, 'Menu', '2018-03-14 07:31:28', '2018-03-14 07:31:28'),
(4, 'Page', '2018-03-14 07:31:29', '2018-03-14 07:31:29'),
(5, 'Post', '2018-03-14 07:31:29', '2018-03-14 07:31:29'),
(7, 'Product', '2018-03-27 03:05:29', '2018-03-27 03:05:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `configs`
--

CREATE TABLE `configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `configs`
--

INSERT INTO `configs` (`id`, `name`, `content`, `description`, `order`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'config-contact', '<p>\r\n	<strong><em><span style=\"background-color:#f1c40f;\">Hotline đặt hàng</span>:</em></strong><em>&nbsp;&nbsp;<strong>097.388.9336 - 0914.675.777</strong></em>\r\n</p>\r\n\r\n<p>\r\n	<strong><em>Hotline hỗ trợ tư vấn và phản hồi ý kiến</em></strong><em>:&nbsp;&nbsp;<strong>097.388.9336</strong></em>\r\n</p>\r\n\r\n<p>\r\n	<strong><em>Hân hạnh được phục vụ quý khách hàng.!</em></strong>\r\n</p>\r\n\r\n<p>\r\n	<strong><em>Thông tin liên hệ với chúng tôi:</em></strong>\r\n</p>\r\n\r\n<p>\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<strong>CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ THÉP KHÁNH NAM</strong>\r\n</p>\r\n\r\n<p>\r\n	<strong>TRỤ SỞ CHÍNH:</strong>&nbsp;<em>201 Bình Thành, KP 4, P. Bình Hưng Hòa, Q. Bình Tân, thành phố Hồ Chí Minh</em>\r\n</p>\r\n\r\n<p>\r\n	<strong>Di động:</strong><em>&nbsp;097.388.9336 - 0914.675.777</em>\r\n</p>', NULL, NULL, 1, NULL, '2018-03-30 09:07:51'),
(2, 'email-receive', 'account@toptenimmigration.com.vn', 'Cấu Hình Email Nhận Báo Giá', 1, 1, '2017-08-26 06:53:20', '2018-05-11 10:13:42'),
(3, 'email-sender-subject', 'Re:Topten Immigration', 'Cấu Hình Subject Gửi Khách Hàng', 2, 1, '2017-08-26 06:53:20', '2018-05-11 10:13:42'),
(4, 'email-sender-from', 'Topten Immigration', 'Cấu Hình From Gửi Khách Hàng', 3, 1, '2017-08-26 06:53:21', '2018-05-11 10:13:42'),
(5, 'email-receive-subject', 'LIÊN HỆ MỚI TỪ KHÁCH HÀNG', 'Cấu Hình Subject Nhận Báo Giá', 4, 1, '2017-08-26 06:53:21', '2018-05-11 10:13:42'),
(6, 'email-receive-from', 'Topten Immigration', 'Cấu Hình From Nhận Báo Giá', 5, 1, '2017-08-26 06:53:21', '2018-05-11 10:13:42'),
(7, 'email-signatures', '', 'Cấu Hình Chữ Ký', 7, 1, '2017-08-26 06:53:21', '2018-05-11 10:13:42'),
(8, 'email-sender-content', '<h1 style=\"margin-left:0cm; margin-right:0cm\">\r\n	<span style=\"font-size:24pt\">Chúng Tôi Đã Nhận Được Mail, Xin Chân Thành Cảm Ơn</span>\r\n</h1>', 'Cấu Hình Nội Dung Gửi Khách Hàng', 6, 1, '2017-08-26 06:53:21', '2018-04-28 10:34:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(3) UNSIGNED NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `type` tinyint(3) UNSIGNED DEFAULT NULL,
  `isActive` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `category_permission_id`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'Xem Danh Sách Quyền', 'Được Xem Danh Sách Quyền', 1, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(2, 'role-create', 'Tạo Quyền Mới', 'Được Tạo Quyền Mới', 1, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(3, 'role-edit', 'Cập Nhật Quyền', 'Được Cập Nhật Quyền', 1, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(4, 'role-delete', 'Xóa Quyền', 'Được Xóa Quyền', 1, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(5, 'user-list', 'Xem Danh Sách Users', 'Được Xem Danh Sách Users', 2, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(6, 'user-create', 'Tạo User', 'Được Tạo User Mới', 2, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(7, 'user-edit', 'Cập Nhật User', 'Được Cập Nhật User', 2, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(8, 'user-delete', 'Xóa user', 'Được Xóa User', 2, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(9, 'menu-list', 'Toàn Quyền Menu', 'Được Toàn Quyền Menu', 3, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(10, 'menu-create', 'Thêm Mới Menu', 'Được Thêm Mới Menu', 3, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(11, 'menu-edit', 'Cập Nhật Menu', 'Được Cập Nhật Menu', 3, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(12, 'menu-delete', 'Xóa Menu', 'Được Xóa Menu', 3, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(13, 'page-list', 'Toàn Quyền Trang', 'Được Toàn Quyền Trang', 4, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(14, 'page-create', 'Thêm Mới Trang', 'Được Thêm Mới Trang', 4, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(15, 'page-edit', 'Cập Nhật Trang', 'Được Cập Nhật Trang', 4, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(16, 'page-delete', 'Xóa Trang', 'Được Xóa Trang', 4, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(17, 'post-list', 'Toàn Quyền Bài Viết', 'Được Toàn Quyền Bài Viết', 5, '2018-03-14 07:54:54', '2018-03-14 07:54:54'),
(18, 'post-create', 'Thêm Mới Bài Viết', 'Được Thêm Mới Bài Viết', 5, '2018-03-14 07:54:54', '2018-03-14 07:54:54'),
(19, 'post-edit', 'Cập Nhật Bài Viết', 'Được Cập Nhật Bài Viết', 5, '2018-03-14 07:54:54', '2018-03-14 07:54:54'),
(20, 'post-delete', 'Xóa Bài Viết', 'Được Xóa Bài Viết', 5, '2018-03-14 07:54:54', '2018-03-14 07:54:54'),
(21, 'product-list', 'Toàn Quyền Sản Phẩm', 'Được Toàn Quyền Sản Phẩm', 7, '2018-03-27 03:06:34', '2018-03-27 03:06:34'),
(22, 'product-create', 'Thêm Mới Sản Phẩm', 'Được Thêm Mới Sản Phẩm', 7, '2018-03-27 03:06:34', '2018-03-27 03:06:34'),
(23, 'product-edit', 'Cập Nhật Sản Phẩm', 'Được Cập Nhật Sản Phẩm', 7, '2018-03-27 03:06:34', '2018-03-27 03:06:34'),
(24, 'product-delete', 'Xóa Sản Phẩm', 'Được Xóa Sản Phẩm', 7, '2018-03-27 03:06:34', '2018-03-27 03:06:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` longtext COLLATE utf8mb4_unicode_ci,
  `seo_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `category_item_id` int(10) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `path`, `description`, `content`, `image`, `seo_title`, `seo_description`, `seo_keywords`, `post_type`, `isActive`, `category_item_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Giới Thiệu', 'gioi-thieu', '<p>\r\n	Giới Thiệu\r\n</p>', '<p style=\"margin-bottom:.0001pt; margin:0in 0in 8pt\">\r\n	<strong><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"vertical-align:baseline\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"border:none windowtext 1.0pt; font-size:13.5pt; padding:0in\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#444340\">Top Ten Immigration là tổ chức với 15 năm kinh nghiệm chuyên về lĩnh vực di trú bảo lãnh gia đình định cư đi Mỹ và Úc.</span></span></span></span></span></span></span></span></strong>\r\n</p>\r\n\r\n<p style=\"margin-bottom:.0001pt; margin:0in 0in 8pt\">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style=\"margin-bottom:.0001pt; margin:0in 0in 8pt\">\r\n	<span style=\"color:#c02026;\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"vertical-align:baseline\"><span style=\"font-family:Calibri,sans-serif\"><b><u><span style=\"border:none windowtext 1.0pt; font-size:13.5pt; padding:0in\"><span new=\"\" roman=\"\" times=\"\">Tư Vấn Định Cư &ndash; Top Ten Immigration sẽ &nbsp;giúp bạn:</span></span></u></b></span></span></span></span></span></span>\r\n</p>\r\n\r\n<ul style=\"list-style-type: square;\">\r\n	<li style=\"margin: 0in 0in 8pt 40px;\">\r\n		<span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"tab-stops:list .5in\"><span style=\"vertical-align:baseline\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:13.5pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#444340\">&nbsp;Đánh giá hồ sơ định cư hiện tại của bạn</span></span></span></span></span></span></span></span></span>\r\n	</li>\r\n	<li style=\"margin: 0in 0in 8pt 40px;\">\r\n		<span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"tab-stops:list .5in\"><span style=\"vertical-align:baseline\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:13.5pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#444340\">&nbsp;Đưa ra những phương án, giải pháp tốt nhất để trình bày hồ sơ của bạn.</span></span></span></span></span></span></span></span></span>\r\n	</li>\r\n	<li style=\"margin: 0in 0in 8pt 40px;\">\r\n		<span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"tab-stops:list .5in\"><span style=\"vertical-align:baseline\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:13.5pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#444340\">&nbsp;Chuẩn bị toàn bộ giấy tờ và nộp hồ sơ cho các cơ quan chính phủ có liên quan: Sở Di Trú Mỹ, Trung Tâm Chiếu Khán Visa (NVC center), Lãnh Sự Quán Mỹ đối với hồ sơ đi Mỹ, và nộp hồ sơ cho các cơ quan Chính phủ của Úc: Lãnh sự quán Úc và cơ quan đại diện Chính phủ Úc &ndash;Trung tâm tiếp nhận hồ sơ thị thực VFS tại Tp Hồ Chí Minh đối những hồ sơ bảo lãnh định cư Úc</span></span></span></span></span></span></span></span></span>\r\n	</li>\r\n	<li style=\"margin: 0in 0in 8pt 40px;\">\r\n		<span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"tab-stops:list .5in\"><span style=\"vertical-align:baseline\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:13.5pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#444340\">Theo dõi và cập nhật tình trạng hồ sơ của bạn theo từng giai đoạn kể từ bắt đầu nộp hồ sơ bảo lãnh định cư Úc hoặc Mỹ cho đến giai đoạn phỏng vấn ở Lãnh Sự Quán Tp Hồ Chí Minh</span></span></span></span></span></span></span></span></span>\r\n	</li>\r\n	<li style=\"margin: 0in 0in 8pt 40px;\">\r\n		<span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"tab-stops:list .5in\"><span style=\"vertical-align:baseline\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:13.5pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#444340\">Hướng dẫn chuẩn bị giấy tờ và thủ tục ở Việt Nam &nbsp;(Khám sức khoẻ, lý lịch tư pháp &hellip;).</span></span></span></span></span></span></span></span></span>\r\n	</li>\r\n	<li style=\"margin: 0in 0in 8pt 40px;\">\r\n		<span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"tab-stops:list .5in\"><span style=\"vertical-align:baseline\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:13.5pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#444340\">Cựu Lãnh Sự và Các Luật sư nhiều năm kinh nghiệm chuyên về Luật Di Trú Úc-Mỹ sẽ huấn luyện phỏng vấn và hướng dẫn trả lời các câu hỏi phỏng vấn trước khi phỏng vấn tại Lãnh Sự Quán Mỹ/Úc tại Tp Hồ Chí Minh</span></span></span></span></span></span></span></span></span>\r\n	</li>\r\n</ul>', 'images/uploads/images/gt_1.jpg', 'Giới Thiệu', 'Giới Thiệu', 'Giới Thiệu', 0, 1, NULL, 1, '2018-04-23 02:34:21', '2018-05-11 09:07:37'),
(2, 'Liên Hệ', 'lien-he', '<p>\r\n	Liên Hệ\r\n</p>', '<div id=\"contact_info\">\r\n    <div class=\"col-md-12 p-0\">\r\n        <div class=\"row\">\r\n            <div class=\"col-md-8\">\r\n                <div class=\"contact_top\">\r\n                    <h3 class=\"title\">Gửi Liên Hệ</h3>\r\n                    <hr>\r\n                    <p>\r\n                        Nếu bạn có thắc mắc gì, có thể gửi yêu cầu cho chúng tôi, và chúng tôi sẽ liên lạc lại với bạn\r\n                        sớm nhất có thể .\r\n                    </p>\r\n                </div>\r\n                <div class=\"contact_bottom\">\r\n                    <div class=\"ip-name input-group\">\r\n                        <input class=\"form-control input-text\" placeholder=\"Tên Của Bạn\" name=\"name\" type=\"text\"\r\n                               value=\"\">\r\n                        <div class=\"invalid-feedback\">\r\n                            Please choose a username.\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"ip-email input-group\">\r\n                        <input class=\"form-control input-text\" placeholder=\"Email\" name=\"email\" type=\"text\" value=\"\">\r\n                        <div class=\"invalid-feedback\">\r\n                            Please choose a Email.\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"ip-contentMail input-group\">\r\n                    <textarea class=\"form-control input-area\" placeholder=\"Viết Nội Dung\" name=\"contentMail\" cols=\"30\"\r\n                              rows=\"5\"></textarea>\r\n                        <div class=\"invalid-feedback\">\r\n                            Please choose a Email.\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"button-group\">\r\n                        <button id=\"btnSendMail\" type=\"button\" class=\"btn btn-contact\">Gửi Liên Hệ<i\r\n                                    class=\"fa fa-spinner fa-spin fa-3x fa-fw loadingSending\" style=\"\r\n    font-size: 15px;display: none\"></i><i\r\n                                    class=\"fa fa-check-circle successSending\" style=\"display: none\"\r\n                                    aria-hidden=\"true\"></i></button>\r\n                        <span style=\"display: none\">Chúng tôi đã nhận được mail và sẽ phản hồi quý khách trong 24h. Xin cảm ơn.</span>\r\n                    </div>\r\n\r\n                </div>\r\n            </div>\r\n            <div class=\"col-md-4\">\r\n                <div class=\"contact_top\">\r\n                    <h3 class=\"title\">Địa Chỉ Liên Hệ</h3>\r\n                    <hr>\r\n                    <h4 class=\"title\">T.T.I - Immigration- Phòng Visa Định cư & Du học\r\n                        Lầu 1 & 2, tòa nhà TOP TEN BUILDING</h4>\r\n                    <ul>\r\n                        <li><i class=\"far fa-building\"></i>02 Giải phóng, P. 04, Tân Bình, TP. HCM</li>\r\n                        <li><img src=\"../images/phone-icon-black.png\" style=\"width:16px;margin-right:8px\" alt=\"\">Office phone: (028) 62907799</li>\r\n                        <li><i class=\"fas fa-phone\"></i>Hotline: 0901.226.286</li>\r\n                        <li><i class=\"far fa-envelope\"></i>info@toptenimmigration.com.vn</li>\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 'images/uploads/images/gt_1.jpg', 'Liên Hệ', 'Liên Hệ', 'Liên Hệ', 0, 1, NULL, 1, '2018-04-23 02:34:36', '2018-05-11 10:23:02'),
(3, 'Diện Hôn Phu/ Hôn Thê', 'dien-hon-phu-hon-the', '<p>\r\n	Bài Viết Diện Hôn Phu/ Hôn Thê\r\n</p>', '<p>\r\n	Bài Viết Diện Hôn Phu/ Hôn Thê\r\n</p>', 'images/uploads/images/gt_1.jpg', 'Bài Viết Diện Hôn Phu/ Hôn Thê', 'Bài Viết Diện Hôn Phu/ Hôn Thê', 'Bài Viết Diện Hôn Phu/ Hôn Thê', 1, 0, 2, 1, '2018-04-23 03:25:19', '2018-05-07 14:32:48'),
(4, 'Bài Viết Diện Vơ Chồng', 'bai-viet-dien-vo-chong', '<p>\r\n	Bài Viết Diện Vơ Chồng\r\n</p>', '<p>\r\n	Bài Viết Diện Vơ Chồng\r\n</p>', 'images/uploads/images/gt_1.jpg', 'Bài Viết Diện Vơ Chồng', 'Bài Viết Diện Vơ Chồng', 'Bài Viết Diện Vơ Chồng', 1, 0, 3, 1, '2018-04-23 03:25:47', '2018-05-07 14:32:42'),
(5, 'Bảo trợ tài chính I-864: Thông báo mới nhất từ Sở Di Trú', 'bao-tro-tai-chinh-i-864-thong-bao-moi-nhat-tu-so-di-tru', '<p>\r\n	<span style=\"color:null;\"><span style=\"font-size:13pt\"><span style=\"background:white\"><span style=\"line-height:19.45pt\"><span style=\"vertical-align:baseline\"><span calibri=\"\" light=\"\" style=\"font-family:\"><span style=\"font-weight:normal\"><span style=\"font-size:12.0pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\">Định cư Mỹ &ndash; USCIS đã cho thay đổi Form bảo trợ tài chính I-864 và I-864A phiên bản mới, hết hạn :03/31/2020.</span></span></span></span></span></span></span></span></span>\r\n</p>', '<p>\r\n	<span style=\"color:#c02026;\"><span style=\"font-size:13pt\"><span style=\"background:white\"><span style=\"line-height:19.45pt\"><span style=\"vertical-align:baseline\"><span calibri=\"\" light=\"\"><span style=\"font-weight:normal\"><span style=\"font-size:12.0pt\"><span new=\"\" roman=\"\" times=\"\">Định cư Mỹ</span></span></span></span></span></span></span></span></span><span style=\"color:null;\"><span style=\"font-size:13pt\"><span style=\"background:white\"><span style=\"line-height:19.45pt\"><span style=\"vertical-align:baseline\"><span calibri=\"\" light=\"\" style=\"font-family:\"><span style=\"font-weight:normal\"><span style=\"font-size:12.0pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"> &ndash; USCIS đã cho thay đổi Form bảo trợ tài chính I-864 và I-864A phiên bản mới, hết hạn :03/31/2020.</span></span></span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p>\r\n	<img alt=\"\" src=\"http://tuvandinhcu.com.vn/images/uploads/images/tintuc/1.png\" style=\"width: 100%; height: 100%;\">\r\n</p>\r\n\r\n<p style=\"margin:0in 0in 8pt\">\r\n	<span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#333333\">Lưu ý:&nbsp;<strong><span style=\"border:none windowtext 1.0pt; padding:0in\">Phiên bản cũ vẫn được chấp nhận</span></strong>&nbsp;<strong><span style=\"border:none windowtext 1.0pt; padding:0in\">trước ngày 16/5/2018</span></strong>, sau ngày này sẽ phải sử dụng các forms bảo trợ tài chính mới.</span></span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p>\r\n	<img alt=\"\" src=\"http://tuvandinhcu.com.vn/images/uploads/images/tintuc/2.png\" style=\"width: 100%; height: 100%;\">\r\n</p>\r\n\r\n<p style=\"margin-top:0in; margin-right:0in; margin-bottom:.25in; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"vertical-align:baseline\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#333333\">Về tổng quan chung, bộ bảo trợ tài chính I864/I864A mới không có thay đổi nào khác biệt so với mẫu cũ về mặt nội dung, chỉ thay đổi một chút về giao diện.&nbsp;(Form I-864 mới gồm có 10 trang &amp; không có barcode 2D như trước đây. Form I864A mới có 8 trang).</span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-top:0in; margin-right:0in; margin-bottom:.25in; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"vertical-align:baseline\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#333333\">Quý vị có thể cập nhật mẫu bảo trợ tài chính I864 mới nhất và tải forms mới theo đường links bên dưới:</span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-top:0in; margin-right:0in; margin-bottom:.25in; margin-left:0in\">\r\n	<span style=\"font-size:11.0pt\"><span style=\"line-height:107%\"><span calibri=\"\" style=\"font-family:\"><a href=\"https://www.uscis.gov/i-864\" style=\"color:blue; text-decoration:underline\" target=\"_blank\"><span style=\"border:none windowtext 1.0pt; color:#21759b; padding:0in\">I-864, Affidavit of Support Under Section 213A of the INA</span></a><br>\r\n	<a href=\"https://www.uscis.gov/i-864a\" style=\"color:blue; text-decoration:underline\" target=\"_blank\"><span style=\"border:none windowtext 1.0pt; color:#21759b; padding:0in\">I-864A, Contract Between Sponsor and Household Member</span></a></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin:0in; margin-bottom:.0001pt; margin-right:0in; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"vertical-align:baseline\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#333333\">Liên hệ các Chuyên viên của Top Ten Immigration để được tư vấn hỗ trợ các thủ tục liên quan đến hồ sơ bảo lãnh thân nhân định cư Mỹ:&nbsp;<strong><span style=\"border:none windowtext 1.0pt; padding:0in\">Ms Hân 0901 330 014</span></strong>,&nbsp;<strong><span style=\"border:none windowtext 1.0pt; padding:0in\">Mr Brady Pham 0901 226 286</span></strong>,&nbsp;<strong><span style=\"border:none windowtext 1.0pt; padding:0in\">Ms Thảo 0949 705 599</span></strong></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin:0in; margin-bottom:.0001pt; margin-right:0in; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"vertical-align:baseline\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#333333\">Hoặc trực tiếp<strong><span style=\"border:none windowtext 1.0pt; padding:0in\">&nbsp;</span></strong></span><span style=\"color:#c02026;\"><strong><span style=\"border:none windowtext 1.0pt; padding:0in\">văn phòng Top Ten Immigration</span></strong></span><span style=\"color:#333333\">:&nbsp;<strong><span style=\"border:none windowtext 1.0pt; padding:0in\">02 Giải Phóng, Phường 4, Quận Tân Bình, Tp Hồ Chí Minh</span></strong></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin:0in; margin-bottom:.0001pt; margin-right:0in; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"vertical-align:baseline\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#333333\">Email:&nbsp;</span><a href=\"mailto:account@toptenimmigration.com.vn\" style=\"color:blue; text-decoration:underline\"><b><span style=\"border:none windowtext 1.0pt; color:#21759b; padding:0in\">account@toptenimmigration.com.vn</span></b></a></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin:0in; margin-bottom:.0001pt; margin-right:0in; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"vertical-align:baseline\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#333333\">Website:&nbsp;</span><a href=\"http://www.toptenimmigration.com.vn/\" style=\"color:blue; text-decoration:underline\"><b><span style=\"border:none windowtext 1.0pt; color:#21759b; padding:0in\">www.toptenimmigration.com.vn</span></b></a></span></span></span></span>\r\n</p>', 'images/uploads/images/tintuc/immigration.jpg', 'Bảo trợ tài chính I-864: Thông báo mới nhất từ Sở Di Trú', 'Định cư Mỹ – USCIS đã cho thay đổi Form bảo trợ tài chính I-864 và I-864A phiên bản mới, hết hạn :03/31/2020.', 'Bảo trợ tài chính I-864', 1, 1, 17, 1, '2018-04-23 08:00:48', '2018-05-11 09:39:23'),
(6, 'Định cư Úc – Sinh con tại Úc được quyền lợi gì? Tìm hiểu điều kiện để con bạn sinh ra có thể nhập quốc tịch Úc', 'dinh-cu-uc-sinh-con-tai-uc-duoc-quyen-loi-gi-tim-hieu-dieu-kien-de-con-ban-sinh-ra-co-the-nhap-quoc-tich-uc', '<p>\r\n	<span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"background:white\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#16161a\">Cùng&nbsp;</span><strong><span style=\"color:null;\"><span style=\"text-decoration:none\">Quốc tịch Úc</span></span></strong><span style=\"color:#16161a\"><strong>&nbsp;</strong>tìm hiểu luật sinh con ở Úc cho những ai đang chuẩn bị sinh con tại Úc để biết&nbsp;có những quy định như thế nào nhé</span></span></span></span></span></span></span></span>\r\n</p>', '<p>\r\n	<span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"background:white\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#16161a\">Cùng&nbsp;</span><span style=\"color:#c02026;\"><strong><span style=\"text-decoration:none\">Quốc tịch Úc</span></strong></span><span style=\"color:#16161a\"><strong>&nbsp;</strong>tìm hiểu luật sinh con ở Úc cho những ai đang chuẩn bị sinh con tại Úc để biết&nbsp;có những quy định như thế nào nhé</span></span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"background:white\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#16161a\"><img alt=\"\" src=\"http://tuvandinhcu.com.vn/images/uploads/images/tintuc/3.png\" style=\"width: 100%; height: 100%;\"></span></span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"color:#c02026;\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><b><span style=\"font-size:12.0pt\"><span new=\"\" roman=\"\" times=\"\">Khi du học sinh sinh con ở Úc được quyền lợi gì?</span></span></b></span></span></span></span></span>\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#16161a\">Trong trường hợp bạn mang thai, điều kiện sức khỏe không cho phép mình tiếp tục các khóa học, các bạn có thể nộp đơn xin tạm hoãn khóa học của mình (Leave of Absence).</span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-bottom:11.25pt; margin:0in 0in 8pt\">\r\n	<span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#16161a\">Bạn có thể vẫn ở lại Úc hoặc về nước trong thời gian Leave of Absence. Và do có thời gian tạm hoãn này nên chắc chắn là bạn sẽ mất nhiều thời gian hơn để hoàn thành khóa học so với kế hoạch ban đầu và buộc lòng phải gia hạn visa du học của mình.</span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-bottom:11.25pt; margin:0in 0in 8pt\">\r\n	<span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#16161a\">Nếu các bạn mang thai, không cần nghỉ hẳn một khoảng thời gian dài như vậy thì không cần phải nộp đơn xin Leave of Absence. Tuy vậy, có thể là trong một vài trường hợp, bạn không khỏe và không thể hoàn thành được các bài kiểm tra đúng hạn hoặc là không thể tham gia buổi thi nào đó theo lịch của nhà trường thì bạn hoàn toàn có thể nộp đơn xin tạm hoãn, và tất nhiên là bạn cũng cần giấy tờ chứng minh về tình trạng sức khỏe của mình.</span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-bottom:.0001pt; margin:0in 0in 8pt\">\r\n	<span style=\"color:#c02026;\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><b><span style=\"font-size:12.0pt\"><span new=\"\" roman=\"\" times=\"\">Luật sinh con ở Úc</span></span></b></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-bottom:11.25pt; margin:0in 0in 8pt\">\r\n	<span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#16161a\">Theo quy&nbsp;định&nbsp;của luật pháp Việt Nam,<b>&nbsp;nếu cả&nbsp;<i>cha và mẹ mang quốc tịch Việt Nam thì khi sinh con ra ở Úc đã đương nhiên mang quốc tịch Việt Nam</i></b>. Con bạn sẽ được đăng kí khai sinh tại cơ quan đại diện Việt Nam ở nước ngoài, được cấp hộ chiếu VN, được miễn thị thực khi nhập xuất cảnh Việt Nam và sau này khi về Việt Nam được hưởng quyền và có nghĩa vụ như mọi công dân Việt Nam khác theo qui định của Luật pháp VN.</span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-bottom:11.25pt; margin:0in 0in 8pt\">\r\n	<span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#16161a\"><img alt=\"\" src=\"http://tuvandinhcu.com.vn/images/uploads/images/tintuc/4.png\" style=\"width: 100%; height: 100%;\"></span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-bottom:11.25pt; margin:0in 0in 8pt\">\r\n	<span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><b><span style=\"font-size:12.0pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#16161a\">Sinh con tại Úc có được nhập quốc tịch</span></span></span></b><span style=\"font-size:12.0pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#16161a\">&nbsp;Úc? Trẻ em sinh ra tại Úc&nbsp;sau ngày 20/08/1986 không tự động được quốc tịch Úc. Căn cứ theo điều 12(1)(a) của Luật Quốc Tịch (Úc) nêu rằng nếu ai đó sinh ra tại Úc và cha/mẹ của người đó là quốc tịch/thường trú thì sẽ được quốc tịch kể từ khi chào đời.</span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-bottom:11.25pt; margin:0in 0in 8pt\">\r\n	<span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#16161a\">Nếu cả bố và mẹ đều giữ visa tạm trú thì em bé cũng sẽ chỉ có visa tạm trú, và subclass trùng với subclass của bố mẹ. Đặc biệt,&nbsp;<b>Theo điều 12(1)(b) của Luật nhập quốc tịch Úc mà quý vị cần lưu ý: đứa bé có thể được trở thành công dân Úc vào lần sinh nhật thứ 10 của mình nếu như trong khoảng 10 năm đó&nbsp;đứa bé sinh sống chủ yếu tại Úc</b>.</span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-bottom:11.25pt; margin:0in 0in 8pt\">\r\n	<span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#16161a\">Trong trường hợp người cha không chịu ký thì thủ tục này sẽ được thực hiện với sự hỗ trợ qua bộ phận bảo vệ quyền lợi trẻ em, Child Support Agency hoặc Toà Án Gia Đình căn cứ theo điều 69W của Luật Gia Đình (Úc) bắt buộc người cha xét nghiệm DNA.</span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-bottom:11.25pt; margin:0in 0in 8pt\">\r\n	<span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#16161a\">Với&nbsp;những thông tin trên đây mong rằng bạn đã biết rõ câu trả lời&nbsp;sinh con ở Úc có được nhập quốc tịch cho con hay không.</span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: right;\">\r\n	<span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><i><span style=\"font-size:12.0pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#16161a\">Thảo Trần</span></span></span></i></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: right;\">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style=\"margin-bottom:11.25pt; margin:0in 0in 8pt\">\r\n	<span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#16161a\">Theo dõi&nbsp;<b><i>chuyên trang Quoctichuc</i></b>&nbsp;để cập nhật các thông tin và&nbsp;<b>luật</b>&nbsp;liên quan đến&nbsp;<b>Quốc tịch Úc mới nhất từ Lãnh sự quán Úc</b>&nbsp;cũng như&nbsp;<b>Bộ Di Trú Úc</b></span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-bottom:11.25pt; margin:0in 0in 8pt\">\r\n	<span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#16161a\">Hoặc,&nbsp;</span><span style=\"color:#c02026;\"><b>HÃY GỌI NGAY CHO CÁC CHUYÊN VIÊN Quốc tịch Ú</b></span><span style=\"color:#16161a\"><b>c</b>&nbsp;để được tư vấn và hỗ trợ chi tiết khi có kế hoạch làm hồ sơ quốc tịch Úc cho con:&nbsp;<b>Ms Hân 0901 330 014, Mr Brady Pham 0901 226 286, Ms Thảo 0949 705 599</b></span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-bottom:.0001pt; margin:0in 0in 8pt\">\r\n	<span style=\"font-size:16px;\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span new=\"\" roman=\"\" times=\"\"><span style=\"color:#868688\">Văn phòng Công Ty Top Ten Immigration: 02 Giải Phóng, Phường 4, Quận Tân Bình, Tp Hồ Chí Minh</span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-bottom:11.25pt; margin:0in 0in 8pt\">\r\n	<span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#16161a\">Email:&nbsp;</span></span></span><a href=\"mailto:Account@toptenimmigration.com.vn\"><span style=\"font-size:12.0pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#e3b93f\"><span style=\"text-decoration:none\"><span style=\"text-underline:none\">Account@toptenimmigration.com.vn</span></span></span></span></span></a></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-bottom:11.25pt; margin:0in 0in 8pt\">\r\n	<span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#16161a\">Website:&nbsp;</span></span></span><a href=\"http://www.quoctichuc.com/\"><span style=\"font-size:12.0pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#e3b93f\"><span style=\"text-decoration:none\"><span style=\"text-underline:none\">www.quoctichuc.com</span></span></span></span></span></a><span style=\"font-size:12.0pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#16161a\">,&nbsp;</span></span></span><a href=\"http://www.toptenimmigration.com.vn/\"><span style=\"font-size:12.0pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#e3b93f\"><span style=\"text-decoration:none\"><span style=\"text-underline:none\">www.toptenimmigration.com.vn</span></span></span></span></span></a></span></span></span></span>\r\n</p>', 'images/uploads/images/tintuc/quoc-tich-uc-va-cac-van-de-sinh-con-o-uc.jpg', 'Định cư Úc – Sinh con tại Úc được quyền lợi gì? Tìm hiểu điều kiện để con bạn sinh ra có thể nhập quốc tịch Úc', 'Cùng Quốc tịch Úc tìm hiểu luật sinh con ở Úc cho những ai đang chuẩn bị sinh con tại Úc để biết có những quy định như thế nào nhé', 'Định cư Úc, sinh con tại úc, điều kiện nhập quốc tịch úc', 1, 1, 17, 1, '2018-04-23 08:01:04', '2018-05-11 09:54:53'),
(7, 'Tin Tức Mỹ - Cập nhật liên quan việc đăng kí nghĩa vụ quân sự tại Mỹ 2018', 'tin-tuc-my-cap-nhat-lien-quan-viec-dang-ki-nghia-vu-quan-su-tai-my-2018', '<p>\r\n	<span style=\"font-size:20px;\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"line-height:107%\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\">Cập nhật liên quan việc đăng kí nghĩa vụ quân sự tại Mỹ 2018</span></span></span></span></span>\r\n</p>', '<p>\r\n	<span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"background:lavender\"><span style=\"line-height:107%\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"background-color:null;\">Về việc đăng ký quân vụ Hoa Kỳ, do Selective Service System (SSS) đã thay đổi giao diện website, nên form đăng ký cũng đã được SSS cập nhật form mới:&nbsp;</span><b><span style=\"background-color:null;\">SSS FORM 1M (04-30-2021)</span></b><span style=\"background-color:null;\">.&nbsp;</span><i><span style=\"background-color:null;\">(Form trước đây Expires March 2018)</span></i><span style=\"background-color:null;\">.</span></span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"background:lavender\"><span style=\"line-height:107%\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"background-color:null;\"><img alt=\"\" src=\"http://tuvandinhcu.com.vn/images/uploads/images/tintuc/1.jpg\" style=\"width: 100%; height: 100%;\"></span></span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style=\"margin:0in 0in 8pt\">\r\n	<span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"background:lavender\"><span style=\"line-height:107%\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\">Cách đăng ký vẫn theo 2 cách như trước đây: online hoặc điền form &amp; gửi bưu điện.&nbsp;<i>(Chỉ đăng ký quân vụ khi đã có Social Security Number)</i>.&nbsp;</span></span></span></span><br>\r\n	<br>\r\n	<span style=\"font-size:12.0pt\"><span style=\"line-height:107%\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><b><span style=\"background:lavender\">1. Đăng ký qua form:</span></b>&nbsp;<br>\r\n	<br>\r\n	<span style=\"background:lavender\">Download form:&nbsp;</span></span></span></span><a href=\"https://www.sss.gov/Portals/0/PDFs/regform_copyINT_1.pdf\" style=\"color:blue; text-decoration:underline\" target=\"_blank\"><b><span style=\"font-size:12.0pt\"><span style=\"background:lavender\"><span style=\"line-height:107%\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"text-decoration:none\"><span style=\"text-underline:none\">Selective Service Registration Form</span></span></span></span></span></span></b></a><br>\r\n	<br>\r\n	<span style=\"font-size:12.0pt\"><span style=\"line-height:107%\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"background:lavender\">Sau khi điền form, ký tên &amp; bỏ vào bao thư gửi đến địa chỉ có ghi trong form.</span><br>\r\n	<br>\r\n	<b><span style=\"background:lavender\">Selective Service System<br>\r\n	Registration Information Office<br>\r\n	P.O. Box 94739<br>\r\n	Palatine, IL 60094-4739</span></b><br>\r\n	<br>\r\n	<br>\r\n	<b><span style=\"background:lavender\">2. Đăng ký online:</span></b>&nbsp;<br>\r\n	<br>\r\n	<span style=\"background:lavender\">Truy cập tại trang sau để điền form online:</span></span></span></span><br>\r\n	<br>\r\n	<a href=\"https://www.sss.gov/Registration/Register-Now/Registration-Form\" style=\"color:blue; text-decoration:underline\" target=\"_blank\"><b><span style=\"font-size:12.0pt\"><span style=\"background:lavender\"><span style=\"line-height:107%\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"text-decoration:none\"><span style=\"text-underline:none\">Selective Service System Online Registration Form</span></span></span></span></span></span></b></a>&nbsp;<br>\r\n	<br>\r\n	<span style=\"font-size:12.0pt\"><span style=\"line-height:107%\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"background:lavender\">*<u>Note</u>: đối với các bạn nam (18t-25t) vừa đến định cư Hoa Kỳ theo visa định cư, trong câu hỏi&nbsp;<b>How did you first learn about registration?</b>các bạn chọn câu trả lời là:&nbsp;<b>USCIS</b>.</span></span></span></span></span></span></span>\r\n</p>', 'images/uploads/images/tintuc/Immigrants-in-the-Military-e1415658164584.jpg', 'Tin Tức Mỹ - Cập nhật liên quan việc đăng kí nghĩa vụ quân sự tại Mỹ 2018', 'Tin Tức Mỹ - Cập nhật liên quan việc đăng kí nghĩa vụ quân sự tại Mỹ 2018', 'đăng kí nghĩa vụ quân sự tại', 1, 1, 17, 1, '2018-05-02 03:21:15', '2018-05-11 08:28:26'),
(8, 'Khách hàng có quốc tịch Mỹ báo sanh lãnh sự cho con tại Việt Nam', 'khach-hang-co-quoc-tich-my-bao-sanh-lanh-su-cho-con-tai-viet-nam', '<p style=\"margin-bottom:.0001pt; margin:0in 0in 8pt\">\r\n	<span style=\"font-size:13pt\"><span style=\"line-height:normal\"><span style=\"vertical-align:baseline\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:24.0pt\"><span style=\"color:#444340\">Khách hàng có quốc tịch Mỹ/báo sanh lãnh sự cho con tại Việt&nbsp;Nam</span></span></span></span></span></span>\r\n</p>', '<h2 style=\"margin-top:0in; margin:2pt 0in 0.0001pt\">\r\n	<span style=\"font-size:18px;\"><span style=\"background:white\"><span style=\"vertical-align:baseline\"><span style=\"line-height:107%\"><span calibri=\"\" light=\"\" style=\"font-family:\"><span style=\"color:#c02026;\"><span style=\"font-weight:normal\"><b><span style=\"line-height:107%\">Định Cư Mỹ</span></b></span></span><span style=\"color:#2e74b5\"><span style=\"font-weight:normal\"><b><span style=\"line-height:107%\"><span style=\"color:#444340\"> &ndash; Chúc mừng khách hàng của Top Ten chị Thu và anh Tommy đã có quốc tịch Mỹ thành công cho con tại Việt Nam ( hay còn gọi là&nbsp;<span inherit=\"\" style=\"border:none windowtext 1.0pt; font-family:\"><span style=\"color:#15b6b8\">giấy báo sanh lãnh sự</span></span>).</span></span></b></span></span></span></span></span></span></span>\r\n</h2>\r\n\r\n<p>\r\n	<img alt=\"\" src=\"http://tuvandinhcu.com.vn/images/uploads/images/tintuc/5.png\" style=\"width: 100%; height: 100%;\">\r\n</p>\r\n\r\n<p style=\"margin:0in; margin-bottom:.0001pt; margin-right:0in; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"vertical-align:baseline\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><strong><span style=\"border:none windowtext 1.0pt; font-size:13.5pt; padding:0in\"><span inherit=\"\" style=\"font-family:\"><span style=\"color:#444340\">GỌI NGAY</span></span></span></strong><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#444340\">&nbsp;cho các Chuyên viên bảo lãnh Mỹ ngay để có thể hỗ trợ quí vị làm hồ sơ nhập quốc tịch Mỹ cho con của công dân Mỹ sinh tại Việt Nam và các hồ sơ bảo lãnh gia đình định cư khác:&nbsp;</span></span></span><strong><span style=\"border:none windowtext 1.0pt; font-size:13.5pt; padding:0in\"><span inherit=\"\" style=\"font-family:\"><span style=\"color:#444340\">Ms Hân 0901 330 014</span></span></span></strong><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#444340\">,&nbsp;</span></span></span><strong><span style=\"border:none windowtext 1.0pt; font-size:13.5pt; padding:0in\"><span inherit=\"\" style=\"font-family:\"><span style=\"color:#444340\">Mr Brady Pham: 0901 226 286</span></span></span></strong><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#444340\">,&nbsp;</span></span></span><strong><span style=\"border:none windowtext 1.0pt; font-size:13.5pt; padding:0in\"><span inherit=\"\" style=\"font-family:\"><span style=\"color:#444340\">Ms Thảo 0949 705 599</span></span></span></strong></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin:0in; margin-bottom:.0001pt; margin-right:0in; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"vertical-align:baseline\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#444340\">Hoặc, liên hệ trực tiếp&nbsp;</span></span></span><span style=\"color:#c02026;\"><strong><span style=\"border:none windowtext 1.0pt; font-size:13.5pt; padding:0in\"><span inherit=\"\">Top Ten Immigration</span></span></strong></span><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#444340\">:&nbsp;</span></span></span><strong><span style=\"border:none windowtext 1.0pt; font-size:13.5pt; padding:0in\"><span inherit=\"\" style=\"font-family:\"><span style=\"color:#444340\">02 Giải Phóng, Phường 4, Quận Tân Bình, Tp Hồ Chí Minh</span></span></span></strong></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin:0in; margin-bottom:.0001pt; margin-right:0in; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"vertical-align:baseline\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#444340\">Email:&nbsp;</span></span></span><a href=\"mailto:account@toptenimmigration.com.vn\" style=\"color:blue; text-decoration:underline\"><span style=\"border:none windowtext 1.0pt; font-size:13.5pt; padding:0in\"><span inherit=\"\" style=\"font-family:\"><span style=\"color:#15b6b8\">account@toptenimmigration.com.vn</span></span></span></a></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin:0in; margin-bottom:.0001pt; margin-right:0in; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"vertical-align:baseline\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#444340\"><span style=\"background-color:null;\">Website:&nbsp;</span></span></span></span><a href=\"http://www.tuvandinhcu.com.vn\" style=\"color:blue; text-decoration:underline\"><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"background-color:null;\">www.tuvandinhcu.com.vn</span></span></span></a></span></span></span></span>\r\n</p>', 'images/uploads/images/gt_1.jpg', 'Quốc tịch mỹ cho con tại Việt Nam', 'Quốc tịch mỹ cho con tại Việt Nam', 'quốc tịch mỹ cho con tại việt nam, hộ chiếu mỹ cho con tại việt nam', 1, 1, 12, 1, '2018-05-05 01:27:16', '2018-05-11 09:05:01');
INSERT INTO `posts` (`id`, `title`, `path`, `description`, `content`, `image`, `seo_title`, `seo_description`, `seo_keywords`, `post_type`, `isActive`, `category_item_id`, `user_id`, `created_at`, `updated_at`) VALUES
(9, 'Luật nhập quốc tịch Úc: Sinh con ở Úc có được nhập quốc tịch cho con?', 'luat-nhap-quoc-tich-uc-sinh-con-o-uc-co-duoc-nhap-quoc-tich-cho-con', '<p style=\"margin-bottom:3.75pt; margin:0in 0in 8pt\">\r\n	<span style=\"font-size:13pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:22.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#868688\">Luật nhập quốc tịch Úc: Sinh con ở Úc có được nhập quốc tịch cho con?</span></span></span></span></span></span></span>\r\n</p>', '<h2 style=\"margin-top:0in; margin-right:0in; margin-bottom:3.75pt; margin-left:0in\">\r\n	<span style=\"font-size:18pt\"><span style=\"background:white\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-weight:bold\"><span style=\"font-size:22.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#c02026;\"><span style=\"font-weight:normal\">Định cư Úc</span></span><span style=\"color:#868688\"><span style=\"font-weight:normal\"> &ndash; Sinh con tại Úc được quyền lợi gì? Tìm hiểu điều kiện để con bạn sinh ra có thể nhập quốc tịch Úc.</span></span></span></span></span></span></span></span>\r\n</h2>\r\n\r\n<p style=\"margin-top:0in; margin-right:0in; margin-bottom:11.25pt; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:10.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#16161a\">Cùng&nbsp;<strong><span arial=\"\" style=\"font-family:\"><span style=\"color:#e3b93f\">Quốc tịch Úc</span>&nbsp;</span></strong>tìm hiểu luật sinh con ở Úc cho những ai đang chuẩn bị sinh con tại Úc để biết&nbsp;có những quy định như thế nào nhé:</span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin: 0in 0in 11.25pt; text-align: center;\">\r\n	<img alt=\"\" src=\"http://tuvandinhcu.com.vn/images/uploads/images/tintuc/4.png\" style=\"width: 70%; height: 70%;\">\r\n</p>\r\n\r\n<h3 style=\"margin:0in; margin-bottom:.0001pt; margin-right:0in; margin-left:0in\">\r\n	<span style=\"font-size:13.5pt\"><span style=\"background:white\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-weight:bold\"><strong><span style=\"font-size:19.0pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#868688\"><span style=\"font-weight:normal\">Khi du học sinh sinh con ở Úc được quyền lợi gì?</span></span></span></span></strong></span></span></span></span>\r\n</h3>\r\n\r\n<p style=\"margin-top:0in; margin-right:0in; margin-bottom:11.25pt; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:10.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#16161a\">Trong trường hợp bạn mang thai, điều kiện sức khỏe không cho phép mình tiếp tục các khóa học, các bạn có thể nộp đơn xin tạm hoãn khóa học của mình (Leave of Absence).</span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-top:0in; margin-right:0in; margin-bottom:11.25pt; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:10.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#16161a\">Bạn có thể vẫn ở lại Úc hoặc về nước trong thời gian Leave of Absence. Và do có thời gian tạm hoãn này nên chắc chắn là bạn sẽ mất nhiều thời gian hơn để hoàn thành khóa học so với kế hoạch ban đầu và buộc lòng phải gia hạn visa du học của mình.</span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-top:0in; margin-right:0in; margin-bottom:11.25pt; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:10.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#16161a\">Nếu các bạn mang thai, không cần nghỉ hẳn một khoảng thời gian dài như vậy thì không cần phải nộp đơn xin Leave of Absence. Tuy vậy, có thể là trong một vài trường hợp, bạn không khỏe và không thể hoàn thành được các bài kiểm tra đúng hạn hoặc là không thể tham gia buổi thi nào đó theo lịch của nhà trường thì bạn hoàn toàn có thể nộp đơn xin tạm hoãn, và tất nhiên là bạn cũng cần giấy tờ chứng minh về tình trạng sức khỏe của mình.</span></span></span></span></span></span>\r\n</p>\r\n\r\n<h3 style=\"margin:0in; margin-bottom:.0001pt; margin-right:0in; margin-left:0in\">\r\n	<span style=\"font-size:13.5pt\"><span style=\"background:white\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-weight:bold\"><strong><span style=\"font-size:19.0pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#868688\"><span style=\"font-weight:normal\">Luật sinh con ở Úc</span></span></span></span></strong></span></span></span></span>\r\n</h3>\r\n\r\n<p style=\"margin-top:0in; margin-right:0in; margin-bottom:11.25pt; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:10.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#16161a\">Theo quy&nbsp;định&nbsp;của luật pháp Việt Nam,<strong><span arial=\"\" style=\"font-family:\">&nbsp;nếu cả&nbsp;</span></strong><em><b><span arial=\"\" style=\"font-family:\">cha và mẹ mang quốc tịch Việt Nam thì khi sinh con ra ở Úc đã đương nhiên mang quốc tịch Việt Nam</span></b></em>. Con bạn sẽ được đăng kí khai sinh tại cơ quan đại diện Việt Nam ở nước ngoài, được cấp hộ chiếu VN, được miễn thị thực khi nhập xuất cảnh Việt Nam và sau này khi về Việt Nam được hưởng quyền và có nghĩa vụ như mọi công dân Việt Nam khác theo qui định của Luật pháp VN.</span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin: 0in 0in 11.25pt; text-align: center;\">\r\n	<img alt=\"\" src=\"http://tuvandinhcu.com.vn/images/uploads/images/tintuc/3.png\" style=\"width: 70%; height: 70%;\">\r\n</p>\r\n\r\n<p class=\"MsoCaption\" style=\"margin: 0in 0in 10pt; text-align: center;\">\r\n	<span style=\"font-size:9pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"color:#44546a\"><span style=\"font-style:italic\">Figure 1Theo điều 12(1)(b), đứa bé có thể được trở thành công dân Úc vào lần sinh nhật thứ 10 của mình</span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-top:0in; margin-right:0in; margin-bottom:11.25pt; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><strong><span style=\"font-size:10.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#16161a\">Sinh con tại Úc có được nhập quốc tịch</span></span></span></strong><span style=\"font-size:10.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#16161a\">&nbsp;Úc? Trẻ em sinh ra tại Úc&nbsp;sau ngày 20/08/1986 không tự động được quốc tịch Úc. Căn cứ theo điều 12(1)(a) của Luật Quốc Tịch (Úc) nêu rằng nếu ai đó sinh ra tại Úc và cha/mẹ của người đó là quốc tịch/thường trú thì sẽ được quốc tịch kể từ khi chào đời.</span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-top:0in; margin-right:0in; margin-bottom:11.25pt; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:10.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#16161a\">Nếu cả bố và mẹ đều giữ visa tạm trú thì em bé cũng sẽ chỉ có visa tạm trú, và subclass trùng với subclass của bố mẹ. Đặc biệt,&nbsp;<strong><span arial=\"\" style=\"font-family:\">Theo điều 12(1)(b) của Luật nhập quốc tịch Úc mà quý vị cần lưu ý: đứa bé có thể được trở thành công dân Úc vào lần sinh nhật thứ 10 của mình nếu như trong khoảng 10 năm đó&nbsp;đứa bé sinh sống chủ yếu tại Úc</span></strong>.</span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-top:0in; margin-right:0in; margin-bottom:11.25pt; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:10.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#16161a\">Trong trường hợp người cha không chịu ký thì thủ tục này sẽ được thực hiện với sự hỗ trợ qua bộ phận bảo vệ quyền lợi trẻ em, Child Support Agency hoặc Toà Án Gia Đình căn cứ theo điều 69W của Luật Gia Đình (Úc) bắt buộc người cha xét nghiệm DNA.</span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-top:0in; margin-right:0in; margin-bottom:11.25pt; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:10.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#16161a\">Với&nbsp;những thông tin trên đây mong rằng bạn đã biết rõ câu trả lời&nbsp;sinh con ở Úc có được nhập quốc tịch cho con hay không.</span></span></span></span></span></span>\r\n</p>\r\n\r\n<p align=\"right\" style=\"margin-top:0in; margin-right:0in; margin-bottom:11.25pt; margin-left:0in; text-align:right\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><em><span style=\"font-size:10.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#16161a\">Thảo Trần</span></span></span></em></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-top:0in; margin-right:0in; margin-bottom:11.25pt; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\">&nbsp;</span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-top:0in; margin-right:0in; margin-bottom:11.25pt; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:10.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#16161a\">Theo dõi&nbsp;<strong><i><span arial=\"\" style=\"font-family:\">chuyên trang Quoctichuc</span></i></strong>&nbsp;để cập nhật các thông tin và&nbsp;<strong><span arial=\"\" style=\"font-family:\">luật</span></strong>&nbsp;liên quan đến&nbsp;<strong><span arial=\"\" style=\"font-family:\">Quốc tịch Úc mới nhất từ Lãnh sự quán Úc</span></strong>&nbsp;cũng như&nbsp;<strong><span arial=\"\" style=\"font-family:\">Bộ Di Trú Úc</span></strong></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-top:0in; margin-right:0in; margin-bottom:11.25pt; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:10.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#16161a\">Hoặc,&nbsp;<strong><span arial=\"\" style=\"font-family:\">HÃY GỌI NGAY CHO CÁC CHUYÊN VIÊN Quốc tịch Úc</span></strong>&nbsp;để được tư vấn và hỗ trợ chi tiết khi có kế hoạch làm hồ sơ quốc tịch Úc cho con:&nbsp;<strong><span arial=\"\" style=\"font-family:\">Ms Hân 0901 330 014, Mr Brady Pham 0901 226 286, Ms Thảo 0949 705 599</span></strong></span></span></span></span></span></span>\r\n</p>\r\n\r\n<h3 style=\"margin:0in; margin-bottom:.0001pt; margin-right:0in; margin-left:0in\">\r\n	<span style=\"font-size:13.5pt\"><span style=\"background:white\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-weight:bold\"><span style=\"font-size:19.0pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#c02026;\"><span style=\"font-weight:normal\">Văn phòng Công Ty Top Ten Immigration</span></span><span style=\"color:#868688\"><span style=\"font-weight:normal\">: 02 Giải Phóng, Phường 4, Quận Tân Bình, Tp Hồ Chí Minh</span></span></span></span></span></span></span></span>\r\n</h3>\r\n\r\n<p style=\"margin-top:0in; margin-right:0in; margin-bottom:11.25pt; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:10.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#16161a\">Email:&nbsp;</span></span></span><a href=\"mailto:Account@toptenimmigration.com.vn\" style=\"color:blue; text-decoration:underline\"><span style=\"font-size:10.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#e3b93f\">Account@toptenimmigration.com.vn</span></span></span></a></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-top:0in; margin-right:0in; margin-bottom:11.25pt; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:10.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#16161a\">Website:&nbsp;</span></span></span><a href=\"http://www.tuvandinhcu.com.vn\" style=\"color:blue; text-decoration:underline\"><span style=\"font-size:10.5pt\"><span arial=\"\" style=\"font-family:\">www.tuvandinhcu.com.vn</span></span></a></span></span></span>\r\n</p>', 'images/uploads/images/gt_1.jpg', 'Luật nhập quốc tịch Úc: Sinh con ở Úc có được nhập quốc tịch cho con?', 'Luật nhập quốc tịch Úc: Sinh con ở Úc có được nhập quốc tịch cho con?', 'Quốc Tịch Úc', 1, 1, 13, 1, '2018-05-05 01:30:53', '2018-05-11 09:04:22'),
(10, 'Visa vợ chồng Mỹ & khi nào nhận thẻ xanh 2 năm', 'visa-vo-chong-my-khi-nao-nhan-the-xanh-2-nam', '<p style=\"margin:0in 0in 8pt\">\r\n	<span style=\"font-size:13pt\"><span style=\"line-height:107%\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><strong><span style=\"border:none windowtext 1.0pt; font-size:13.5pt; padding:0in\"><span style=\"background:white\"><span style=\"line-height:107%\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#444340\">Top Ten Định Cư: &nbsp;Visa bảo lãnh vợ chồng Mỹ và thẻ xanh 2 năm thì thời gian kết hôn được tính khi nào? Thời điểm nhận thẻ xanh được tính từ thời điểm nào? bảo lãnh vợ chồng Mỹ khi nào nhận thẻ xanh 10 năm?</span></span></span></span></span></strong></span></span></span>\r\n</p>', '<p style=\"margin:0in 0in 8pt\">\r\n	<span style=\"font-size:13pt\"><span style=\"line-height:107%\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><strong><span style=\"border:none windowtext 1.0pt; font-size:13.5pt; padding:0in\"><span style=\"background:white\"><span style=\"line-height:107%\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#c02026;\">Top Ten Định Cư</span><span style=\"color:#444340\">: &nbsp;Visa bảo lãnh vợ chồng Mỹ và thẻ xanh 2 năm thì thời gian kết hôn được tính khi nào? Thời điểm nhận thẻ xanh được tính từ thời điểm nào? bảo lãnh vợ chồng Mỹ khi nào nhận thẻ xanh 10 năm?</span></span></span></span></span></strong></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin:0in 0in 8pt\">\r\n	<span style=\"font-size:13pt\"><span style=\"line-height:107%\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><strong><span style=\"border:none windowtext 1.0pt; font-size:13.5pt; padding:0in\"><span style=\"background:white\"><span style=\"line-height:107%\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#444340\"><img alt=\"\" src=\"http://tuvandinhcu.com.vn/images/uploads/images/tintuc/6.png\" style=\"width: 100%; height: 100%;\"></span></span></span></span></span></strong></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-top:0in; margin-right:0in; margin-bottom:19.2pt; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"vertical-align:baseline\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#444340\">Đối với các diện visa vợ chồng Mỹ, thẻ xanh được cấp căn cứ dựa trên tổng thời gian kết hôn của hai vợ chồng</span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-top:0in; margin-right:0in; margin-bottom:19.2pt; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"vertical-align:baseline\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#444340\">Nếu người bảo lãnh và đương đơn vợ chồng Mỹ kết hôn dưới 2 năm, thì được cấp thẻ xanh 2 năm</span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-top:0in; margin-right:0in; margin-bottom:19.2pt; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"vertical-align:baseline\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#444340\">Và nếu người bảo lãnh và đương đơn vợ chồng Mỹ kết hôn trên 2 năm thì khi đương đơn vợ chồng của công dân Mỹ hoặc thường trú nhân đến Mỹ sẽ được cấp thẻ xanh 10 năm</span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-top:0in; margin-right:0in; margin-bottom:19.2pt; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"vertical-align:baseline\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#444340\">Thời gian kết hôn tính từ khi công dân Mỹ hoặc thường trú nhân và đương đơn vợ chồng ở Việt Nam chính thức đăng ký kết hôn ( trường hợp nếu cả hai không đăng ký kết hôn, mà chỉ đám cưới hoặc đám hỏi, thì không được tính là ngày kết hôn chính thức theo quy định của luật pháp. Cả hai phải mở visa hôn phu hôn thê đi Mỹ).</span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-top:0in; margin-right:0in; margin-bottom:19.2pt; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"vertical-align:baseline\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#444340\">Và thời điểm để Chính phủ Mỹ cấp thẻ xanh 2 năm căn cứ vào thời gian tính từ thời điểm cả hai kết hôn hợp thức hóa cho đến thời điểm đương đơn vợ chồng của người bảo lãnh đến phi trường (hoặc cửa khẩu biên giới đương bộ) làm thủ tục nhập cảnh Mỹ</span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-top:0in; margin-right:0in; margin-bottom:19.2pt; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"vertical-align:baseline\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#444340\">Một số quý vị ngộ nhận rằng thẻ xanh được cấp vào thời điểm phỏng vấn, điều này hoàn toàn không chính xác.</span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-top:0in; margin-right:0in; margin-bottom:19.2pt; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"vertical-align:baseline\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#444340\">Liên hệ Top Ten Định Cư Mỹ để được hỗ trợ&nbsp;dịch vụ hồ sơ visa bảo lãnh thân nhân định cư Mỹ&nbsp;: Công dân Hoa Kỳ bảo lãnh anh chị em, Con là công dân Mỹ bảo lãnh cha mẹ ở Việt Nam (ngược lại), visa vợ chồng Mỹ, visa hôn phu thê Mỹ, thương trú nhân bảo lãnh vợ chồng và con độc thân:</span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin:0in; margin-bottom:.0001pt; margin-right:0in; margin-left:0in\">\r\n	<span style=\"color:#c02026;\"><span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"vertical-align:baseline\"><span new=\"\" roman=\"\" times=\"\"><em><b><span style=\"border:none windowtext 1.0pt; font-size:13.5pt; padding:0in\"><span inherit=\"\">Top Ten Immigration</span></span></b></em></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin:0in; margin-bottom:.0001pt; margin-right:0in; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"vertical-align:baseline\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><em><span style=\"border:none windowtext 1.0pt; font-size:13.5pt; padding:0in\"><span inherit=\"\" style=\"font-family:\"><span style=\"color:#444340\">02 Giải Phóng, Phường 4, Tân Bình, Hồ Chí Minh</span></span></span></em></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin:0in; margin-bottom:.0001pt; margin-right:0in; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"vertical-align:baseline\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#444340\">Website:&nbsp;</span></span></span><a href=\"http://www.tuvandinhcu.com.vn\" style=\"color:blue; text-decoration:underline\"><span style=\"border:none windowtext 1.0pt; font-size:13.5pt; padding:0in\"><span inherit=\"\" style=\"font-family:\">www.tuvandinhcu.com.vn</span></span></a></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin:0in; margin-bottom:.0001pt; margin-right:0in; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"vertical-align:baseline\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#444340\">Facebook:&nbsp;</span></span></span><a href=\"https://www.facebook.com/chuyenbaolanhmy/\" style=\"color:blue; text-decoration:underline\"><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\">https://www.fb.com/chuyenbaolanhmy/</span></span></a></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin:0in; margin-bottom:.0001pt; margin-right:0in; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"vertical-align:baseline\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><em><b><span style=\"border:none windowtext 1.0pt; font-size:13.5pt; padding:0in\"><span inherit=\"\" style=\"font-family:\"><span style=\"color:#444340\">Hotline: Mr. Thuận 0901 226 286 &ndash; Ms. Hân&nbsp;0901 330 014 &ndash; Ms Thảo 0949 705 599</span></span></span></b></em></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin:0in 0in 8pt\">\r\n	&nbsp;\r\n</p>', 'images/uploads/images/gt_1.jpg', 'Visa vợ chồng Mỹ & khi nào nhận thẻ xanh 2 năm', 'Visa vợ chồng Mỹ & khi nào nhận thẻ xanh 2 năm', 'vợ chồng mỹ', 1, 1, 2, 1, '2018-05-05 01:36:17', '2018-05-11 09:03:26'),
(11, 'Mẹ có hồ sơ bảo lãnh Úc theo diện kết hôn vợ chồng 309, con có được đi cùng hồ sơ?', 'me-co-ho-so-bao-lanh-uc-theo-dien-ket-hon-vo-chong-309-con-co-duoc-di-cung-ho-so', '<p style=\"margin:0in 0in 8pt\">\r\n	<span style=\"font-size:13pt\"><span style=\"line-height:107%\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><strong><span style=\"font-size:13.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#111111\">Top Ten Định cư Úc &ndash; Chuyên visa vợ chồng Úc: Mẹ có hồ sơ bảo lãnh Úc theo diện kết hôn vợ chồng Úc, hồ sơ 309, trường hợp người mẹ trước đó có con riêng ở Việt Nam vậy con có được đi theo hồ sơ bảo lãnh kết hôn của mẹ hay không? Nếu được thì con đang đi du học Mỹ thì có cần&nbsp;về Việt Nam làm giấy tờ không, và cần cung cấp bổ sung những giấy tờ gì cùng hồ sơ để con có thể đi cùng?</span></span></span></span></span></strong></span></span></span>\r\n</p>', '<p style=\"margin:0in 0in 8pt\">\r\n	<span style=\"font-size:13pt\"><span style=\"line-height:107%\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><strong><span style=\"font-size:13.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#c02026;\">Top Ten Định cư Úc &ndash; Chuyên visa vợ chồng Úc</span><span style=\"color:#111111\">: Mẹ có hồ sơ bảo lãnh Úc theo diện kết hôn vợ chồng Úc, hồ sơ 309, trường hợp người mẹ trước đó có con riêng ở Việt Nam vậy con có được đi theo hồ sơ bảo lãnh kết hôn của mẹ hay không? Nếu được thì con đang đi du học Mỹ thì có cần&nbsp;về Việt Nam làm giấy tờ không, và cần cung cấp bổ sung những giấy tờ gì cùng hồ sơ để con có thể đi cùng?</span></span></span></span></span></strong></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin:0in 0in 8pt\">\r\n	<span style=\"font-size:13pt\"><span style=\"line-height:107%\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><strong><span style=\"font-size:13.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#111111\"><img alt=\"\" src=\"http://tuvandinhcu.com.vn/images/uploads/images/tintuc/7.png\" style=\"width: 100%; height: 100%;\"></span></span></span></span></span></strong></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin:0in 0in 8pt\">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style=\"margin-bottom:.25in; margin-right:0in; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"line-height:22.75pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#111111\">Trong trường hợp người mẹ ở Việt Nam kết hôn với người có PR thẻ xanh hoặc công dân Úc và được bảo lãnh sang Úc theo diện kết hôn vợ chồng thì được quyền&nbsp;bảo lãnh con sang Úc nếu người con đó đáp ứng được các điều kiện như sau:</span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-bottom:.25in; margin-right:0in; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"line-height:22.75pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#111111\">1. Nếu con dưới 18 tuổi thì cần có giấy xác nhận đồng ý cho con đi định cư Úc cùng mẹ của cha ruột của người con đó.</span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-bottom:.25in; margin-right:0in; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"line-height:22.75pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#111111\">2. Nếu con trên 18 tuổi thì phải chứng minh được rằng người con đó vẫn đang phụ thuộc vào mẹ về tài chính.</span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-bottom:.25in; margin-right:0in; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"line-height:22.75pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#111111\">Những giấy tờ cần thiết của người con nộp cùng hồ sơ để người con có thể đi cùng với mẹ đối với hồ sơ bảo lãnh kết hôn vợ chồng Úc gồm: các giấy tờ cá nhân của người con xin đi cùng hồ sơ bảo lãnh kết hôn vợ chồng của mẹ, các bằng chứng chứng minh chứng minh người con vẫn đang phụ thuộc vào mẹ về tài chính, ví dụ: các hóa đơn và biên nhận người mẹ gửi tiền cho con, COE khóa học và các&nbsp;forms phải điền.</span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-bottom:.25in; margin-right:0in; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"line-height:22.75pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#111111\">Trong trường hợp người con phụ thuộc xin đi cùng hồ sơ bảo lãnh vợ chồng đi Úc của người mẹ đang không có cư trú ở Việt Nam mà ví dụ đang học tại Mỹ thì người con phụ thuộc đó có thể trực tiếp đi từ Mỹ đến Úc mà không cần phải về Việt Nam&nbsp; khi hồ sơ bảo lãnh được chấp thuận</span></span></span></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-bottom:.0001pt; margin-right:0in; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"line-height:22.75pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><em><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#111111\">Chúng tôi sẽ giúp bạn hệ thống sắp xếp hồ sơ visa Úc và các bằng chứng thuyết phục viên chức Lãnh sự Úc cũng như hệ thống trọn bộ&nbsp;</span></span></span></em><strong><i><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#111111\">câu hỏi huấn luyện phỏng vấn định cư Úc</span></span></span></i></strong><em><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#111111\">.&nbsp;</span></span></span></em><strong><i><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#111111\">Top Ten Định Cư Úc</span></span></span></i></strong><em><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#111111\">&nbsp;là dịch vụ chuyên&nbsp;</span></span></span></em><strong><i><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#111111\">hỗ trợ hồ sơ bảo lãnh visa đồng giới Úc, visa hôn phu hôn thê &ndash; Visa vợ chồng Úc</span></span></span></i></strong><em><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#111111\">&nbsp;với nhiều năm kinh nghiệm các hồ sơ khó cũng như xin cứu xét, khiếu nại các trường hợp Lãnh sự nghi ngờ tính chất chân thật trong mối quan hệ giữa người bảo lãnh và đương đơn visa Úc&hellip;v..v&hellip;Để biết thêm thông tin chi tiết về visa bảo lãnh vợ chồng Úc, visa hôn phu hôn thê Úc, bảo lãnh đồng giới Úc và các diện visa Úc khác: visa du lịch Úc kết hợp thăm thân nhân, &nbsp;liên hệ Top Ten Định Cư Úc để được tư vấn miễn phí:</span></span></span></em></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-bottom:.0001pt; margin-right:0in; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"line-height:22.75pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><em><b><span style=\"font-size:13.5pt\"><span cambria=\"\" math=\"\" style=\"font-family:\"><span style=\"color:red\">&rArr;</span></span></span></b></em><em><b><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:red\">&nbsp;TOP TEN IMMIGRATION&nbsp;</span></span></span></b></em><em><b><span style=\"font-size:13.5pt\"><span cambria=\"\" math=\"\" style=\"font-family:\"><span style=\"color:red\">&lArr;</span></span></span></b></em></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-bottom:.0001pt; margin-right:0in; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"line-height:22.75pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><em><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#111111\">02 Giải Phóng, Phường 4, Tân Bình, Hồ Chí Minh</span></span></span></em></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-bottom:.0001pt; margin-right:0in; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"line-height:22.75pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><strong><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#111111\">Website</span></span></span></strong><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#111111\">:&nbsp;</span></span></span><a href=\"http://www.tuvandinhcu.com.vn\" style=\"color:blue; text-decoration:underline\"><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\">www.tuvandinhcu.com.vn</span></span></a></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-bottom:.0001pt; margin-right:0in; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"line-height:22.75pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><strong><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#111111\">Facebook</span></span></span></strong><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#111111\">:&nbsp;</span></span></span><a href=\"https://www.facebook.com/visavochonguc/\" style=\"color:blue; text-decoration:underline\"><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:#ca2017\">www.fb.com/visavochonguc</span></span></span></a></span></span></span></span>\r\n</p>\r\n\r\n<p style=\"margin-bottom:.0001pt; margin-right:0in; margin-left:0in\">\r\n	<span style=\"font-size:12pt\"><span style=\"background:white\"><span style=\"line-height:22.75pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><em><b><span style=\"font-size:13.5pt\"><span arial=\"\" style=\"font-family:\"><span style=\"color:red\">Hotline: Mr. Thuận 0901 226 286 &ndash; Ms Thảo: 0949 705 599 &ndash;&nbsp; Ms. Hân&nbsp;090 133 0014</span></span></span></b></em></span></span></span></span>\r\n</p>', 'images/uploads/images/gt_1.jpg', 'Mẹ có hồ sơ bảo lãnh Úc theo diện kết hôn vợ chồng 309, con có được đi cùng hồ sơ?', 'Mẹ có hồ sơ bảo lãnh Úc theo diện kết hôn vợ chồng 309, con có được đi cùng hồ sơ?', 'vợ chồng úc', 1, 1, 7, 1, '2018-05-05 01:40:04', '2018-05-11 09:03:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `seo_keywords` text COLLATE utf8mb4_unicode_ci,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `sale` int(11) NOT NULL DEFAULT '0',
  `final_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'administer the website and manage users', '2018-03-14 07:23:50', '2018-03-14 07:23:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nnduyquang', 'nnduyquang@gmail.com', '$2y$10$mStg572JFNI89/0Cg7TOGOUkACFaBl/nsNeOvx8zglr1qyJPA0tj6', NULL, '2018-03-14 07:24:10', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category_items`
--
ALTER TABLE `category_items`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_permissions`
--
ALTER TABLE `category_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_permissions_name_unique` (`name`);

--
-- Chỉ mục cho bảng `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `configs_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD KEY `permissions_category_permission_id_foreign` (`category_permission_id`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_category_product_id_foreign` (`category_product_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category_items`
--
ALTER TABLE `category_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT cho bảng `category_permissions`
--
ALTER TABLE `category_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT cho bảng `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `configs`
--
ALTER TABLE `configs`
  ADD CONSTRAINT `configs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_category_permission_id_foreign` FOREIGN KEY (`category_permission_id`) REFERENCES `category_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_product_id_foreign` FOREIGN KEY (`category_product_id`) REFERENCES `category_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
