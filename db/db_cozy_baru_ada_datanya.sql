/*
 Navicat Premium Data Transfer

 Source Server         : skripsi
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : db_cozy

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 20/06/2024 22:45:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for brands
-- ----------------------------
DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_brand` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` enum('true','false') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brands
-- ----------------------------
INSERT INTO `brands` VALUES (1, 'Fema', '1', 'false', '2024-06-19 22:12:16', '2024-06-19 22:12:20');
INSERT INTO `brands` VALUES (2, 'Golden Nick', '1', 'false', '2024-06-19 22:12:16', '2024-06-19 22:12:20');
INSERT INTO `brands` VALUES (3, 'Lorina', '1', 'false', '2024-06-19 22:12:16', '2024-06-19 22:12:20');
INSERT INTO `brands` VALUES (4, 'Nonic', '1', 'false', '2024-06-19 22:12:16', '2024-06-19 22:12:20');
INSERT INTO `brands` VALUES (5, 'Viena', '1', 'false', '2024-06-19 22:12:16', '2024-06-19 22:12:20');
INSERT INTO `brands` VALUES (6, 'Melina', '1', 'false', '2024-06-19 22:12:16', '2024-06-19 22:12:20');
INSERT INTO `brands` VALUES (7, 'Yakuza', '1', 'false', '2024-06-19 22:12:16', '2024-06-19 22:12:20');
INSERT INTO `brands` VALUES (8, 'Assa', '1', 'false', '2024-06-19 22:12:16', '2024-06-19 22:12:20');
INSERT INTO `brands` VALUES (9, 'Shogun', '1', 'false', '2024-06-19 22:12:16', '2024-06-19 22:12:20');
INSERT INTO `brands` VALUES (10, 'Optima', '1', 'false', '2024-06-19 22:12:16', '2024-06-19 22:12:20');
INSERT INTO `brands` VALUES (11, 'Gents Club', '1', 'false', '2024-06-19 22:12:16', '2024-06-19 22:12:20');
INSERT INTO `brands` VALUES (12, 'Gtman', '1', 'false', '2024-06-19 22:12:16', '2024-06-19 22:12:20');
INSERT INTO `brands` VALUES (13, 'Roumei', '1', 'false', '2024-06-19 22:12:16', '2024-06-19 22:12:20');
INSERT INTO `brands` VALUES (14, 'D\'Gest', '1', 'false', '2024-06-19 22:12:16', '2024-06-19 22:12:20');
INSERT INTO `brands` VALUES (15, 'Toyazi', '1', 'false', '2024-06-19 22:12:16', '2024-06-19 22:12:20');
INSERT INTO `brands` VALUES (16, 'Ropolo', '1', 'false', '2024-06-19 22:12:16', '2024-06-19 22:12:20');
INSERT INTO `brands` VALUES (17, 'Vegasa', '1', 'false', '2024-06-19 22:12:16', '2024-06-19 22:12:20');
INSERT INTO `brands` VALUES (18, 'Swan Brand', '1', 'false', '2024-06-19 22:12:16', '2024-06-19 22:12:20');
INSERT INTO `brands` VALUES (19, 'Guda', '1', 'false', '2024-06-19 22:12:16', '2024-06-19 22:12:20');
INSERT INTO `brands` VALUES (20, 'Xismie', '1', 'false', '2024-06-19 22:12:16', '2024-06-19 22:12:20');
INSERT INTO `brands` VALUES (21, 'Sport Bra', '1', 'false', '2024-06-19 22:12:16', '2024-06-19 22:12:20');
INSERT INTO `brands` VALUES (22, 'Tangtop', '1', 'false', '2024-06-19 22:12:16', '2024-06-19 22:12:20');
INSERT INTO `brands` VALUES (23, 'Xinshini', '1', 'false', '2024-06-19 22:12:16', '2024-06-19 22:12:20');

-- ----------------------------
-- Table structure for carts
-- ----------------------------
DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `total` int NOT NULL,
  `deleted` enum('true','false') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carts
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2024_04_27_071051_create_pelanggan_table', 1);
INSERT INTO `migrations` VALUES (6, '2024_04_27_073645_create_brands_table', 1);
INSERT INTO `migrations` VALUES (7, '2024_04_27_073807_create_product_categories_table', 1);
INSERT INTO `migrations` VALUES (8, '2024_04_27_073816_create_products_table', 1);
INSERT INTO `migrations` VALUES (9, '2024_04_27_073828_create_orders_table', 1);
INSERT INTO `migrations` VALUES (10, '2024_04_27_073841_create_order_details_table', 1);
INSERT INTO `migrations` VALUES (11, '2024_04_27_073855_create_carts_table', 1);
INSERT INTO `migrations` VALUES (12, '2024_04_27_074306_create_products_recomendation_table', 1);

-- ----------------------------
-- Table structure for order_details
-- ----------------------------
DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `idorder` int NOT NULL,
  `idproduct` bigint UNSIGNED NOT NULL,
  `hargaproduk` int NOT NULL,
  `qty` int NOT NULL,
  `subtotalproduk` int NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `review` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `rating` int NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted` enum('true','false') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_details
-- ----------------------------
INSERT INTO `order_details` VALUES (1, 1, 20, 20000, 2, 40000, NULL, NULL, 4, NULL, 'false', '2024-06-19 15:34:49', '2024-06-19 15:36:20');
INSERT INTO `order_details` VALUES (2, 1, 8, 20000, 2, 40000, NULL, NULL, 3, NULL, 'false', '2024-06-19 15:34:49', '2024-06-19 15:36:17');
INSERT INTO `order_details` VALUES (3, 1, 11, 35000, 1, 35000, NULL, NULL, 3, NULL, 'false', '2024-06-19 15:34:49', '2024-06-19 15:36:14');
INSERT INTO `order_details` VALUES (4, 2, 15, 30000, 1, 30000, NULL, NULL, 3, NULL, 'false', '2024-06-19 15:41:01', '2024-06-19 15:41:37');
INSERT INTO `order_details` VALUES (5, 3, 20, 20000, 1, 20000, NULL, NULL, 4, NULL, 'false', '2024-06-19 15:44:52', '2024-06-19 15:45:31');
INSERT INTO `order_details` VALUES (6, 4, 19, 25000, 1, 25000, NULL, NULL, 4, NULL, 'false', '2024-06-19 15:51:26', '2024-06-19 15:51:49');
INSERT INTO `order_details` VALUES (7, 5, 5, 15000, 1, 15000, NULL, NULL, 2, NULL, 'false', '2024-06-20 15:02:34', '2024-06-20 15:03:09');
INSERT INTO `order_details` VALUES (8, 5, 20, 20000, 1, 20000, NULL, NULL, 2, NULL, 'false', '2024-06-20 15:02:34', '2024-06-20 15:03:06');
INSERT INTO `order_details` VALUES (9, 6, 20, 20000, 1, 20000, NULL, NULL, 3, NULL, 'false', '2024-06-20 15:05:16', '2024-06-20 15:05:41');
INSERT INTO `order_details` VALUES (10, 7, 26, 35000, 1, 35000, NULL, NULL, 3, NULL, 'false', '2024-06-20 15:08:24', '2024-06-20 15:08:50');
INSERT INTO `order_details` VALUES (11, 7, 30, 15000, 1, 15000, NULL, NULL, 3, NULL, 'false', '2024-06-20 15:08:24', '2024-06-20 15:08:46');
INSERT INTO `order_details` VALUES (12, 8, 21, 30000, 2, 60000, NULL, NULL, 4, NULL, 'false', '2024-06-20 15:15:52', '2024-06-20 15:16:10');
INSERT INTO `order_details` VALUES (13, 9, 14, 40000, 2, 80000, NULL, NULL, 5, NULL, 'false', '2024-06-20 15:19:48', '2024-06-20 15:20:18');
INSERT INTO `order_details` VALUES (14, 9, 21, 30000, 1, 30000, NULL, NULL, 4, NULL, 'false', '2024-06-20 15:19:48', '2024-06-20 15:20:21');
INSERT INTO `order_details` VALUES (15, 10, 3, 25000, 2, 50000, NULL, NULL, 3, NULL, 'false', '2024-06-20 15:21:52', '2024-06-20 15:22:12');
INSERT INTO `order_details` VALUES (16, 11, 3, 25000, 4, 100000, NULL, NULL, 4, NULL, 'false', '2024-06-20 15:25:43', '2024-06-20 15:26:00');
INSERT INTO `order_details` VALUES (17, 12, 14, 40000, 2, 80000, NULL, NULL, 4, NULL, 'false', '2024-06-20 15:27:44', '2024-06-20 15:28:04');
INSERT INTO `order_details` VALUES (18, 13, 3, 25000, 2, 50000, NULL, NULL, 2, NULL, 'false', '2024-06-20 15:37:57', '2024-06-20 15:38:30');
INSERT INTO `order_details` VALUES (19, 13, 21, 30000, 1, 30000, NULL, NULL, 3, NULL, 'false', '2024-06-20 15:37:57', '2024-06-20 15:38:27');
INSERT INTO `order_details` VALUES (20, 13, 11, 35000, 2, 70000, NULL, NULL, 4, NULL, 'false', '2024-06-20 15:37:57', '2024-06-20 15:38:16');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nomerorder` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `iduser` bigint UNSIGNED NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `itemsubtotal` int NOT NULL,
  `tax` int NULL DEFAULT NULL,
  `shippingprice` int NULL DEFAULT NULL,
  `ordertotal` int NOT NULL,
  `payment` int NULL DEFAULT NULL,
  `pengiriman` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `namalengkap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `negara` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kodepos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `addcatatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payment_id` int NULL DEFAULT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tracking_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted` enum('true','false') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `shipping_id` int NULL DEFAULT NULL,
  `country_code` int NULL DEFAULT NULL,
  `shipping_status` int NULL DEFAULT NULL,
  `bukti_transfer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 'inv-20240619033449', 2, 'ORDER', 115000, NULL, NULL, 115000, NULL, '-', 'siti lasmini', 'siti', 'lasmini', 'indonesia', 'jawa timur', 'surabaya', 'sememi', 'Jl. Sememi Jaya Rt 05 Rw 01', '1234', 'siti@gmail.com', '08123456789120', 'Order Lunas', NULL, '-', 'lunas', '-', 'false', NULL, NULL, NULL, 'upload/bukti/media__6672fab498a29_19-06-2024_153516.png', '2024-06-19 15:34:49', '2024-06-19 15:35:16');
INSERT INTO `orders` VALUES (2, 'inv-20240619034101', 3, 'ORDER', 30000, NULL, NULL, 30000, NULL, '-', 'dwi lastri', 'dwi', 'lastri', 'indonesia', 'jawa timur', 'surabaya', 'sememi', 'Jl. Sememi Jaya Rt 05 Rw 01', '1234', 'dwi@gmail.com', '1234567890', 'Order Lunas', NULL, '-', 'lunas', '-', 'false', NULL, NULL, NULL, 'upload/bukti/media__6672fc177ce50_19-06-2024_154111.png', '2024-06-19 15:41:01', '2024-06-19 15:41:11');
INSERT INTO `orders` VALUES (3, 'inv-20240619034452', 4, 'ORDER', 20000, NULL, NULL, 20000, NULL, '-', 'lastri lasmini', 'lastri', 'lasmini', 'indonesia', 'jawa timur', 'surabaya', 'sememi', 'Jl. Sememi Jaya Rt 05 Rw 01', '1234', 'lastri@gmail.com', '1234567891011', 'Order Lunas', NULL, '-', 'lunas', '-', 'false', NULL, NULL, NULL, 'upload/bukti/media__6672fcfe374bd_19-06-2024_154502.png', '2024-06-19 15:44:52', '2024-06-19 15:45:02');
INSERT INTO `orders` VALUES (4, 'inv-20240619035126', 5, 'ORDER', 25000, NULL, NULL, 25000, NULL, '-', 'yuwen', 'yu', 'wen', 'indonesia', 'jawa timur', 'surabaya', 'sememi', 'Jl. Sememi Jaya Rt 05 Rw 01', '1234', 'yuwen@gmail.com', '082139310532', 'Order Lunas', NULL, '-', 'lunas', '-', 'false', NULL, NULL, NULL, 'upload/bukti/media__6672fe8452f85_19-06-2024_155132.png', '2024-06-19 15:51:26', '2024-06-19 15:51:32');
INSERT INTO `orders` VALUES (5, 'inv-20240620030234', 6, 'ORDER', 35000, NULL, NULL, 35000, NULL, '-', 'dina lasmini', 'dina', 'lasmini', 'indonesia', 'jawa timur', 'surabaya', 'sememi', 'Jl. Sememi Jaya Rt 05 Rw 01', '60192', 'dina@gmail.com', '082139310532', 'Order Lunas', NULL, '-', 'lunas', '-', 'false', NULL, NULL, NULL, 'upload/bukti/media__6674449800262_20-06-2024_150248.png', '2024-06-20 15:02:34', '2024-06-20 15:02:48');
INSERT INTO `orders` VALUES (6, 'inv-20240620030516', 7, 'ORDER', 20000, NULL, NULL, 20000, NULL, '-', 'apik lasmini', 'apik', 'lasmini', 'indonesia', 'jawa timur', 'surabaya', 'sememi', 'Jl. Sememi Jaya Rt 05 Rw 01', '60192', 'apik@gmail.com', '082139310532', 'Order Lunas', NULL, '-', 'lunas', '-', 'false', NULL, NULL, NULL, 'upload/bukti/media__66744533d32d2_20-06-2024_150523.png', '2024-06-20 15:05:16', '2024-06-20 15:05:23');
INSERT INTO `orders` VALUES (7, 'inv-20240620030824', 8, 'ORDER', 50000, NULL, NULL, 50000, NULL, '-', 'neno lasmini', 'neno', 'lasmini', 'indonesia', 'jawa timur', 'Kota Surabaya', 'sememi', 'Jl. Sememi Jaya Rt 05 Rw 01', '60192', 'neno@gmail.com', '082139310532', 'Order Lunas', NULL, '-', 'lunas', '-', 'false', NULL, NULL, NULL, 'upload/bukti/media__667445f11d327_20-06-2024_150833.png', '2024-06-20 15:08:24', '2024-06-20 15:08:33');
INSERT INTO `orders` VALUES (8, 'inv-20240620031552', 9, 'ORDER', 60000, NULL, NULL, 60000, NULL, '-', 'nonia lasmini', 'nonia', 'lasmini', 'indonesia', 'jawa timur', 'surabaya', 'kendung', 'Jl. Kendung Gg Kampung Semanggi', '60192', 'nonia@gmail.com', '082139310532', 'Order Lunas', NULL, '-', 'lunas', '-', 'false', NULL, NULL, NULL, 'upload/bukti/media__667447ae977ae_20-06-2024_151558.png', '2024-06-20 15:15:52', '2024-06-20 15:15:58');
INSERT INTO `orders` VALUES (9, 'inv-20240620031948', 10, 'ORDER', 110000, NULL, NULL, 110000, NULL, '-', 'sonita lasmini', 'sonita', 'lasmini', 'indonesia', 'jawa timur', 'surabaya', 'kendung', 'Jl. Kendung Gg Kampung Semanggi', '60192', 'sonita@gmail.com', '082139310532', 'Order Lunas', NULL, '-', 'lunas', '-', 'false', NULL, NULL, NULL, 'upload/bukti/media__6674489b11030_20-06-2024_151955.png', '2024-06-20 15:19:48', '2024-06-20 15:19:55');
INSERT INTO `orders` VALUES (10, 'inv-20240620032152', 11, 'ORDER', 50000, NULL, NULL, 50000, NULL, '-', 'diana lasmini', 'diana', 'lasmini', 'indonesia', 'jawa timur', 'surabaya', 'kendung', 'Jl. Kendung Gg Kampung Semanggi', '60192', 'diana@gmail.com', '082139310532', 'Order Lunas', NULL, '-', 'lunas', '-', 'false', NULL, NULL, NULL, 'upload/bukti/media__667449171188a_20-06-2024_152159.png', '2024-06-20 15:21:52', '2024-06-20 15:21:59');
INSERT INTO `orders` VALUES (11, 'inv-20240620032543', 12, 'ORDER', 100000, NULL, NULL, 100000, NULL, '-', 'duwi lasmini', 'duwi', 'lasmini', 'indonesia', 'jawa timur', 'surabaya', 'kendung', 'Jl. Kendung Gg Kampung Semanggi', '60192', 'duwi@gmail.com', '082139310532', 'Order Lunas', NULL, '-', 'lunas', '-', 'false', NULL, NULL, NULL, 'upload/bukti/media__667449fea6c13_20-06-2024_152550.png', '2024-06-20 15:25:43', '2024-06-20 15:25:50');
INSERT INTO `orders` VALUES (12, 'inv-20240620032744', 13, 'ORDER', 80000, NULL, NULL, 80000, NULL, '-', 'leon jordan', 'leon', 'jordan', 'indonesia', 'jawa timur', 'surabaya', 'kendung', 'Jl. Kendung Gg Kampung Semanggi', '60192', 'leon@gmail.com', '082139310532', 'Order Lunas', NULL, '-', 'lunas', '-', 'false', NULL, NULL, NULL, 'upload/bukti/media__66744a7682e80_20-06-2024_152750.png', '2024-06-20 15:27:44', '2024-06-20 15:27:50');
INSERT INTO `orders` VALUES (13, 'inv-20240620033757', 14, 'ORDER', 150000, NULL, NULL, 150000, NULL, '-', 'tutik lasmini', 'tutik', 'lasmini', 'indonesia', 'jawa timur', 'surabaya', 'sememi', 'Jl. Sememi Gg Sekolahan', '60192', 'tutik@gmail.com', '082139310532', 'Order Lunas', NULL, '-', 'lunas', '-', 'false', NULL, NULL, NULL, 'upload/bukti/media__66744cdc964ec_20-06-2024_153804.png', '2024-06-20 15:37:57', '2024-06-20 15:38:04');

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for pelanggan
-- ----------------------------
DROP TABLE IF EXISTS `pelanggan`;
CREATE TABLE `pelanggan`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomer_telfon` bigint NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted` enum('false','true') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pelanggan
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for product_categories
-- ----------------------------
DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE `product_categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_category_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` enum('true','false') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_categories
-- ----------------------------
INSERT INTO `product_categories` VALUES (1, 'Bra busa cantolan 2', '1', 'false', '2024-06-19 22:12:45', '2024-06-19 22:12:49');
INSERT INTO `product_categories` VALUES (2, 'Bra busa cantolan 3', '1', 'false', '2024-06-19 22:12:45', '2024-06-19 22:12:49');
INSERT INTO `product_categories` VALUES (3, 'Bra tanpa busa cantolan 2', '1', 'false', '2024-06-19 22:12:45', '2024-06-19 22:12:49');
INSERT INTO `product_categories` VALUES (4, 'Bra tanpa busa cantolan 3', '1', 'false', '2024-06-19 22:12:45', '2024-06-19 22:12:49');
INSERT INTO `product_categories` VALUES (5, 'Kaos dalam anak wanita', '1', 'false', '2024-06-19 22:12:45', '2024-06-19 22:12:49');
INSERT INTO `product_categories` VALUES (6, 'Kaos dalam anak pria', '1', 'false', '2024-06-19 22:12:45', '2024-06-19 22:12:49');
INSERT INTO `product_categories` VALUES (7, 'Kaos dalam lorina', '1', 'false', '2024-06-19 22:12:45', '2024-06-19 22:12:49');
INSERT INTO `product_categories` VALUES (8, 'Kaos dalam pria ', '1', 'false', '2024-06-19 22:12:45', '2024-06-19 22:12:49');
INSERT INTO `product_categories` VALUES (9, 'Kaos dalam wanita ', '1', 'false', '2024-06-19 22:12:45', '2024-06-19 22:12:49');
INSERT INTO `product_categories` VALUES (10, 'Celana dalam wanita ', '1', 'false', '2024-06-19 22:12:45', '2024-06-19 22:12:49');
INSERT INTO `product_categories` VALUES (11, 'Celana dalam pria', '1', 'false', '2024-06-19 22:12:45', '2024-06-19 22:12:49');
INSERT INTO `product_categories` VALUES (12, 'Shiot', '1', 'false', '2024-06-19 22:12:45', '2024-06-19 22:12:49');
INSERT INTO `product_categories` VALUES (13, 'Tangtop', '1', 'false', '2024-06-19 22:12:45', '2024-06-19 22:12:49');
INSERT INTO `product_categories` VALUES (14, 'Leging', '1', 'false', '2024-06-19 22:12:45', '2024-06-19 22:12:49');
INSERT INTO `product_categories` VALUES (15, 'Androk ', '1', 'false', '2024-06-19 22:12:45', '2024-06-19 22:12:49');
INSERT INTO `product_categories` VALUES (16, 'Miniset Anak ', '1', 'false', '2024-06-19 22:12:45', '2024-06-19 22:12:49');
INSERT INTO `product_categories` VALUES (17, 'Miniset Dewasa', '1', 'false', '2024-06-19 22:12:45', '2024-06-19 22:12:49');
INSERT INTO `product_categories` VALUES (18, 'Celana dalam anak wanita', '1', 'false', '2024-06-19 22:12:45', '2024-06-19 22:12:49');
INSERT INTO `product_categories` VALUES (19, 'Celana dalam anak pria', '1', 'false', '2024-06-19 22:12:45', '2024-06-19 22:12:49');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category` bigint UNSIGNED NOT NULL,
  `product_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_brand` bigint UNSIGNED NOT NULL,
  `product_price` int NOT NULL,
  `fileimages` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` enum('true','false') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, '2010', 2, 'Bra Roumei', 'Bra busa cantolan 3', 13, 25000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (2, '2011', 2, 'Bra Toyazi', 'Bra busa cantolan 3', 15, 25000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (3, '2012', 1, 'Bra Fema', 'Bra busa cantolan 2', 1, 25000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (4, '2013', 1, 'Bra Roumei', 'Bra busa cantolan 2', 13, 23000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (5, '2014', 3, 'Bra Sport Bra', 'Bra tanpa busa cantolan 2', 21, 15000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (6, '2015', 4, 'Bra Lorina', 'Bra tanpa busa cantolan 3', 3, 15000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (7, '2016', 3, 'Bra Lorina', 'Bra tanpa busa cantolan 2', 3, 12500, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (8, '2017', 10, 'Celana dalam wanita melina', 'Celana dalam wanita', 6, 20000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (9, '2018', 10, 'Celana dalam wanita lorina', 'Celana dalam wanita', 3, 30000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (10, '2019', 10, 'Celana dalam wanita fema', 'Celana dalam wanita', 1, 35000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (11, '2020', 10, 'Celana dalam wanita golden nick ', 'Celana dalam wanita', 2, 35000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (12, '2021', 18, 'Celana dalam anak wanita viena', 'Celana dalam anak wanita', 5, 30000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (13, '2022', 19, 'Celana dalam anak pria yakuza', 'Celana dalam anak pria', 7, 20000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (14, '2023', 11, 'Celana dalam pria optima', 'Celana dalam pria', 10, 40000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (15, '2024', 11, 'Celana dalam pria gent club', 'Celana dalam pria', 11, 30000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (16, '2025', 11, 'Celana dalam pria boxer ropolo', 'Celana dalam pria', 16, 60000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (17, '2026', 11, 'Celana dalam pria boxer fema', 'Celana dalam pria', 1, 60000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (18, '2027', 11, 'Celana dalam pria boxer guda', 'Celana dalam pria', 19, 60000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (19, '2028', 11, 'Celana dalam pria shogun', 'Celana dalam pria', 9, 25000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (20, '2029', 6, 'Kaos dalam anak nonic', 'Kaos dalam anak', 4, 20000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (21, '2030', 7, 'Kaos dalam lorina', 'Kaos dalam anak', 3, 30000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (22, '2031', 9, 'Kaos dalam wanita assa', 'Kaos dalam wanita', 8, 30000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (23, '2032', 8, 'Kaos dalam pria swan brand', 'Kaos dalam pria', 18, 25000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (24, '2033', 8, 'Kaos dalam pria vegasa', 'Kaos dalam pria', 17, 15000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (25, '2034', 13, 'Tangtop', 'Tangtop', 22, 25000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (26, '2035', 14, 'Leging', 'Leging', 14, 35000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (27, '2036', 15, 'Androk', 'Androk', 8, 20000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (28, '2037', 16, 'Miniset Anak', 'Miniset anak', 8, 10000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (29, '2038', 17, 'Miniset Dewasa', 'Miniset dewasa', 20, 20000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (30, '2039', 12, 'Shiot', 'Shiot', 14, 15000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (31, '2040', 2, 'Bra Xismie', 'Bra busa cantolan 3', 20, 30000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');
INSERT INTO `products` VALUES (32, '2041', 1, 'Bra Xinshini ', 'Bra busa cantolan 2', 23, 30000, NULL, '1', 'false', '2024-06-19 22:14:37', '2024-06-19 22:14:42', '1');

-- ----------------------------
-- Table structure for products_recomendation
-- ----------------------------
DROP TABLE IF EXISTS `products_recomendation`;
CREATE TABLE `products_recomendation`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `total` int NOT NULL,
  `deleted` enum('true','false') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products_recomendation
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Ana Febri Yanti', 'admin@gmail.com', NULL, '$2y$12$wGIlZjhnJ0BR1meINNX61Os.u/T7acARe3yM0SRRRquo.BpuhSffK', 'admin', NULL, '2024-06-19 15:11:24', '2024-06-19 15:11:24');
INSERT INTO `users` VALUES (2, 'Siti', 'siti@gmail.com', NULL, '$2y$12$ywmGQRBQQ2.cK6rEJzyzzOXmsjDLmAZHnH.64lSdo0pVXkeSr7Hh2', 'user', NULL, '2024-06-19 15:15:21', '2024-06-19 15:15:21');
INSERT INTO `users` VALUES (3, 'dwi tutik', 'dwi@gmail.com', NULL, '$2y$12$Rh6SnjzpO8d89mdjaPoOm.mZHE3jOMAfSzh/AWUavRfBnlqRb/7XS', 'user', NULL, '2024-06-19 15:39:13', '2024-06-19 15:39:13');
INSERT INTO `users` VALUES (4, 'lastri lasmini', 'lastri@gmail.com', NULL, '$2y$12$vzT8E6NnVKWJuFKjuHcX/ucsLo8ZC1Wnq3eVlWm6lYd.ggSXkk4uO', 'user', NULL, '2024-06-19 15:43:36', '2024-06-19 15:43:36');
INSERT INTO `users` VALUES (5, 'Yuwen', 'yuwen@gmail.com', NULL, '$2y$12$a2sAKhOCP0Qyehk8s.CVuuI51ccX.iD0L3/Ai6fAbYlCkIIaynDIe', 'user', NULL, '2024-06-19 15:49:45', '2024-06-19 15:49:45');
INSERT INTO `users` VALUES (6, 'Dina Lastri', 'dina@gmail.com', NULL, '$2y$12$poxhyNaCfRMYJST7z.1R2eSHxyHFXkqitdEa9z.xzFgv7A7wvio7.', 'user', NULL, '2024-06-20 15:00:07', '2024-06-20 15:00:07');
INSERT INTO `users` VALUES (7, 'apik lasmini', 'apik@gmail.com', NULL, '$2y$12$/nlZquOUIsMlfE5VMl3eQOAc.pYFhJY/94OzyfBDlJVvMEdJrzu/m', 'user', NULL, '2024-06-20 15:03:43', '2024-06-20 15:03:43');
INSERT INTO `users` VALUES (8, 'neno lasmini', 'neno@gmail.com', NULL, '$2y$12$cQanVld9DFoLlcWjkl0gauqEn3LwKHYu1.AQY7sNH.Ca99mtTn/EW', 'user', NULL, '2024-06-20 15:06:43', '2024-06-20 15:06:43');
INSERT INTO `users` VALUES (9, 'nonia lasmini', 'nonia@gmail.com', NULL, '$2y$12$uYFNGCkp/SSjsXyX2eeY6.8YiJXzycNvOXAoq9eL6s0xEYCwJmTuy', 'user', NULL, '2024-06-20 15:14:13', '2024-06-20 15:14:13');
INSERT INTO `users` VALUES (10, 'sonita lasmini', 'sonita@gmail.com', NULL, '$2y$12$TWYszMxvyZRqwe1Mz0FnkuWwPjzBDwKzNVSK.nB69o33QmjwG7RmC', 'user', NULL, '2024-06-20 15:18:00', '2024-06-20 15:18:00');
INSERT INTO `users` VALUES (11, 'diana lasmini', 'diana@gmail.com', NULL, '$2y$12$Q9Il86QKy3KohbjWdgpqnuXMK/y4LqxLsTqKNZsBAs1xXDwC3N4k.', 'user', NULL, '2024-06-20 15:20:52', '2024-06-20 15:20:52');
INSERT INTO `users` VALUES (12, 'duwi lasmini', 'duwi@gmail.com', NULL, '$2y$12$FVpyc1.m5BkgdAKn/ZF0xO8euhpg8T3wFiQ2iH0cJDqfgxuqtgQAK', 'user', NULL, '2024-06-20 15:24:41', '2024-06-20 15:24:41');
INSERT INTO `users` VALUES (13, 'leon jordan', 'leon@gmail.com', NULL, '$2y$12$voS5B3OTMBPTWs33/gZsEepznlITBp4j0czn3clT44Yl1ZGY3zSCS', 'user', NULL, '2024-06-20 15:26:42', '2024-06-20 15:26:42');
INSERT INTO `users` VALUES (14, 'tutik lasmini', 'tutik@gmail.com', NULL, '$2y$12$7YLWM5cMYugLzMs6CPLvOORkm7ghYIFzkclBbUAZbaZjet7bo7mbK', 'user', NULL, '2024-06-20 15:35:07', '2024-06-20 15:35:07');

SET FOREIGN_KEY_CHECKS = 1;
