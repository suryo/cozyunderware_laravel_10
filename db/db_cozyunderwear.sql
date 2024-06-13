/*
 Navicat Premium Data Transfer

 Source Server         : skripsi
 Source Server Type    : MySQL
 Source Server Version : 100425
 Source Host           : localhost:3306
 Source Schema         : db_cozyunderwear

 Target Server Type    : MySQL
 Target Server Version : 100425
 File Encoding         : 65001

 Date: 13/06/2024 18:21:08
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
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brands
-- ----------------------------
INSERT INTO `brands` VALUES (1, 'Fema', 'Aktif', 'false', '2024-06-12 12:47:49', '2024-06-12 12:47:49');
INSERT INTO `brands` VALUES (2, 'Golden Nick', 'Aktif', 'false', '2024-06-12 12:47:49', '2024-06-12 12:47:49');
INSERT INTO `brands` VALUES (3, 'Lorina', 'Aktif', 'false', '2024-06-12 12:47:49', '2024-06-12 12:47:49');
INSERT INTO `brands` VALUES (4, 'Nonic', 'Aktif', 'false', '2024-06-12 12:47:49', '2024-06-12 12:47:49');
INSERT INTO `brands` VALUES (5, 'Viena', 'Aktif', 'false', '2024-06-12 12:47:49', '2024-06-12 12:47:49');
INSERT INTO `brands` VALUES (6, 'Melina', 'Aktif', 'false', '2024-06-12 12:47:49', '2024-06-12 12:47:49');
INSERT INTO `brands` VALUES (7, 'Yakuza', 'Aktif', 'false', '2024-06-12 12:47:49', '2024-06-12 12:47:49');
INSERT INTO `brands` VALUES (8, 'Assa', 'Aktif', 'false', '2024-06-12 12:47:49', '2024-06-12 12:47:49');
INSERT INTO `brands` VALUES (9, 'Shogun', 'Aktif', 'false', '2024-06-12 12:47:49', '2024-06-12 12:47:49');
INSERT INTO `brands` VALUES (10, 'Optima', 'Aktif', 'false', '2024-06-12 12:47:49', '2024-06-12 12:47:49');
INSERT INTO `brands` VALUES (11, 'Gents Club', 'Aktif', 'false', '2024-06-12 12:47:49', '2024-06-12 12:47:49');
INSERT INTO `brands` VALUES (12, 'Gtman', 'Aktif', 'false', '2024-06-12 12:47:49', '2024-06-12 12:47:49');
INSERT INTO `brands` VALUES (13, 'Roumei', 'Aktif', 'false', '2024-06-12 12:47:49', '2024-06-12 12:47:49');
INSERT INTO `brands` VALUES (14, 'D\'Gest', 'Aktif', 'false', '2024-06-12 12:47:49', '2024-06-12 12:47:49');
INSERT INTO `brands` VALUES (15, 'Toyazi', 'Aktif', 'false', '2024-06-12 12:47:49', '2024-06-12 12:47:49');
INSERT INTO `brands` VALUES (16, 'Ropolo', 'Aktif', 'false', '2024-06-12 12:47:49', '2024-06-12 12:47:49');
INSERT INTO `brands` VALUES (17, 'Vegasa', 'Aktif', 'false', '2024-06-12 12:47:49', '2024-06-12 12:47:49');
INSERT INTO `brands` VALUES (18, 'Swan Brand', 'Aktif', 'false', '2024-06-12 12:47:49', '2024-06-12 12:47:49');
INSERT INTO `brands` VALUES (19, 'Guda', 'Aktif', 'false', '2024-06-12 12:47:49', '2024-06-12 12:47:49');
INSERT INTO `brands` VALUES (20, 'Xismie', 'Aktif', 'false', '2024-06-12 12:47:49', '2024-06-12 12:47:49');
INSERT INTO `brands` VALUES (21, 'Sport Bra', 'Aktif', 'false', '2024-06-12 12:47:49', '2024-06-12 12:47:49');
INSERT INTO `brands` VALUES (22, 'Tangtop', 'Aktif', 'false', '2024-06-12 12:47:49', '2024-06-12 12:47:49');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
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
) ENGINE = InnoDB AUTO_INCREMENT = 137 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (125, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (126, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO `migrations` VALUES (127, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (128, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (129, '2024_04_27_071051_create_pelanggan_table', 1);
INSERT INTO `migrations` VALUES (130, '2024_04_27_073645_create_brands_table', 1);
INSERT INTO `migrations` VALUES (131, '2024_04_27_073807_create_product_categories_table', 1);
INSERT INTO `migrations` VALUES (132, '2024_04_27_073816_create_products_table', 1);
INSERT INTO `migrations` VALUES (133, '2024_04_27_073828_create_orders_table', 1);
INSERT INTO `migrations` VALUES (134, '2024_04_27_073841_create_order_details_table', 1);
INSERT INTO `migrations` VALUES (135, '2024_04_27_073855_create_carts_table', 1);
INSERT INTO `migrations` VALUES (136, '2024_04_27_074306_create_products_recomendation_table', 1);

-- ----------------------------
-- Table structure for order_details
-- ----------------------------
DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nomerorder` int NOT NULL,
  `idproduct` bigint UNSIGNED NOT NULL,
  `hargaproduk` int NOT NULL,
  `qty` int NOT NULL,
  `subtotalproduk` int NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `review` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `rating` int NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` enum('true','false') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 263 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_details
-- ----------------------------
INSERT INTO `order_details` VALUES (1, 1, 5, 15000, 2, 30000, 'Bra Sport Bra ', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (2, 1, 14, 40000, 2, 80000, 'Cd Optima dewasa pria', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (3, 1, 14, 40000, 1, 40000, 'Cd Optima dewasa pria', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (4, 1, 2, 25000, 1, 25000, 'Bra Toyazi busa', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (5, 1, 22, 25000, 1, 25000, 'Kaos Dalam Wanita Assa Renda', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (6, 1, 20, 15000, 1, 15000, 'Kaos dalam anak nonic', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (7, 1, 3, 25000, 2, 50000, 'Bra Fema Busa', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (8, 1, 30, 10000, 3, 30000, 'Shiot dewasa', 'Bagus', 3, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (9, 1, 8, 15000, 1, 15000, 'Celana dalam wanita Melina', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (10, 1, 29, 20000, 2, 40000, 'Miniset dewasa', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (11, 1, 30, 15000, 2, 30000, 'Shiot ', 'Bagus', 3, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (12, 1, 30, 15000, 4, 60000, 'Shiot ', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (13, 1, 14, 40000, 2, 80000, 'Cd Optima dewasa pria', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (14, 1, 22, 30000, 2, 60000, 'Kaos Dalam Wanita Assa Renda', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (15, 1, 30, 10000, 2, 20000, 'Shiot dewasa', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (16, 1, 29, 20000, 2, 40000, 'Miniset dewasa', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (17, 1, 21, 25000, 1, 25000, 'Kaos Dalam Lorina', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (18, 1, 22, 25000, 1, 25000, 'Kaos Dalam Wanita Assa Renda', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (19, 1, 16, 60000, 1, 60000, 'Cd Optima dewasa boxer', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (20, 1, 14, 40000, 2, 80000, 'Cd Optima dewasa pria', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (21, 1, 14, 40000, 3, 120000, 'Cd Optima dewasa pria', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (22, 1, 5, 15000, 6, 90000, 'Bra Sport Bra ', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (23, 1, 16, 60000, 1, 60000, 'Cd Ropolo Pria Boxer', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (24, 1, 30, 10000, 5, 50000, 'Shiot ', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (25, 1, 29, 20000, 5, 100000, 'Miniset dewasa', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (26, 1, 5, 15000, 4, 60000, 'Bra Sport Bra ', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (27, 1, 30, 15000, 5, 75000, 'Shiot', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (28, 1, 2, 25000, 4, 100000, 'Bra Toyazi busa', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (29, 1, 3, 25000, 4, 100000, 'Bra Fema Busa', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (30, 1, 22, 30000, 2, 60000, 'Kaos Dalam Wanita Assa Renda', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (31, 1, 8, 15000, 4, 60000, 'Celana dalam wanita Melina', 'Bagus', 3, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (32, 1, 16, 60000, 2, 120000, 'Cd Ropolo Pria Boxer', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (33, 1, 30, 15000, 4, 60000, 'Shiot dewasa', 'Bagus', 3, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (34, 1, 29, 20000, 5, 100000, 'Miniset anak dewasa', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (35, 1, 5, 15000, 2, 30000, 'Bra Sport Bra ', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (36, 1, 21, 18000, 2, 36000, 'Kaos Dalam Lorina', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (37, 1, 14, 40000, 2, 80000, 'Cd Optima dewasa pria', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (38, 1, 16, 60000, 2, 120000, 'Cd Ropolo Pria Boxer', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (39, 1, 5, 15000, 6, 90000, 'Bra Sport Bra ', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (40, 1, 30, 15000, 5, 75000, 'Shiot dewasa', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (41, 1, 29, 20000, 5, 100000, 'Miniset anak dewasa', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (42, 1, 22, 25000, 2, 50000, 'Kaos Dalam Wanita Assa Renda', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (43, 1, 16, 60000, 1, 60000, 'Cd Ropolo Pria Boxer', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (44, 1, 14, 40000, 3, 120000, 'Cd Optima dewasa pria', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (45, 1, 2, 25000, 4, 100000, 'Bra Toyazi busa', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (46, 1, 5, 15000, 2, 30000, 'Bra Sport Bra ', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (47, 1, 30, 15000, 6, 90000, 'Shiot dewasa', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (48, 1, 29, 20000, 4, 80000, 'Miniset anak dewasa', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (49, 1, 22, 30000, 2, 60000, 'Kaos Dalam Wanita Assa Renda', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (50, 1, 21, 25000, 2, 50000, 'Kaos Dalam Lorina', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (51, 1, 14, 40000, 3, 120000, 'Cd Optima dewasa pria', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (52, 1, 16, 60000, 4, 240000, 'Cd Ropolo Pria Boxer', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (53, 1, 5, 15000, 2, 30000, 'Bra Sport Bra ', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (54, 1, 14, 40000, 2, 80000, 'Cd Optima dewasa pria', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (55, 1, 5, 12500, 2, 25000, 'Bra Sport Bra ', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (56, 1, 12, 30000, 1, 30000, 'Celana Dalam Kotak Anak ', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (57, 1, 21, 20000, 3, 60000, 'Kaos Dalam Anak Lorina', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (58, 1, 30, 10000, 3, 30000, 'Shiot dewasa', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (59, 1, 11, 25000, 1, 25000, 'Celana Dalam Golden Nick', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (60, 1, 21, 25000, 3, 75000, 'Kaos Dalam Lorina', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (61, 1, 14, 40000, 1, 40000, 'Cd Optima dewasa pria', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (62, 1, 5, 15000, 2, 30000, 'Bra Sport Bra ', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (63, 1, 14, 40000, 1, 40000, 'Cd Optima dewasa pria', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (64, 1, 5, 15000, 3, 45000, 'Bra Sport Bra ', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (65, 1, 9, 25000, 2, 50000, 'Celana dalam Lorina ', 'Bagus', 3, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (66, 1, 30, 10000, 2, 20000, 'Shiot dewasa', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (67, 1, 22, 10000, 2, 20000, 'Kaos Dalam Wanita Assa Renda', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (68, 1, 30, 10000, 1, 10000, 'Shiot dewasa', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (69, 1, 8, 15000, 1, 15000, 'Celana dalam wanita Melina', 'Bagus', 2, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (70, 1, 8, 15000, 1, 15000, 'Celana dalam wanita Melina', 'Bagus', 2, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (71, 1, 30, 12500, 2, 25000, 'Shiot dewasa', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (72, 1, 22, 15000, 1, 15000, 'Kaos Dalam Anak Assa', 'Bagus', 3, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (73, 1, 2, 25000, 2, 50000, 'Bra Toyazi busa', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (74, 1, 11, 30000, 1, 30000, 'Celana Dalam Golden Nick', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (75, 1, 8, 20000, 1, 20000, 'Celana dalam wanita Melina', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (76, 1, 22, 20000, 2, 40000, 'Kaos Dalam Wanita Assa Renda', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (77, 1, 5, 12500, 2, 25000, 'Bra Sport Bra ', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (78, 1, 21, 25000, 1, 25000, 'Kaos dalam Lorina', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (79, 1, 29, 20000, 1, 20000, 'Miniset anak dewasa', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (80, 1, 22, 10000, 1, 10000, 'Kaos dalam wanita Assa Renda', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (81, 1, 5, 15000, 2, 30000, 'Bra Sport Bra ', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (82, 1, 5, 10000, 1, 10000, 'Bra Sport Bra ', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (83, 1, 2, 25000, 2, 50000, 'Bra Toyazi busa', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (84, 1, 2, 25000, 1, 25000, 'Bra Toyazi busa', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (85, 1, 21, 25000, 1, 25000, 'Kaos Dalam Lorina', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (86, 1, 8, 15000, 1, 15000, 'Celana dalam wanita melina', 'Bagus', 3, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (87, 1, 29, 20000, 1, 20000, 'Miniset anak dewasa', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (88, 1, 22, 10000, 2, 20000, 'Kaos dalam wanita Assa Renda', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (89, 1, 22, 13000, 1, 13000, 'Kaos dalam anak Assa', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (90, 1, 5, 10000, 1, 10000, 'Bra Sport Bra ', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (91, 1, 11, 25000, 1, 25000, 'Celana Dalam Golden Nick', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (92, 1, 5, 15000, 2, 30000, 'Bra Sport Bra ', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (93, 1, 11, 30000, 1, 30000, 'Celana Dalam Golden Nick', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (94, 1, 22, 15000, 2, 30000, 'Kaos dalam anak Assa', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (95, 1, 2, 25000, 1, 25000, 'Bra Toyazi busa', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (96, 1, 21, 17000, 1, 17000, 'Kaos dalam Anak Lorina', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (97, 1, 21, 17000, 1, 17000, 'Kaos dalam anak Lorina', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (98, 1, 20, 5000, 2, 10000, 'Kaos dalam anak Nonic', 'Bagus', 3, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (99, 1, 30, 12500, 2, 25000, 'Shiot dewasa', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (100, 1, 12, 15000, 1, 15000, 'Celana dalam anak wanita melina', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (101, 1, 8, 25000, 1, 25000, 'Kaos dalam anak Lorina', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (102, 1, 8, 20000, 2, 40000, 'Celana dalam wanita dewasa Melina', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (103, 1, 13, 20000, 1, 20000, 'Celana dalam anak pria', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (104, 1, 5, 10000, 1, 10000, 'Bra Sport Bra ', 'Bagus', 3, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (105, 1, 8, 15000, 2, 30000, 'Celana dalam wanita dewasa Melina', 'Bagus', 3, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (106, 1, 5, 7500, 2, 15000, 'Bra Sport Bra ', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (107, 1, 30, 7500, 2, 15000, 'Shiot dewasa', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (108, 1, 22, 10000, 1, 10000, 'Kaos dalam wanita Assa Renda', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (109, 1, 5, 15000, 2, 30000, 'Bra Sport Bra ', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (110, 1, 30, 12500, 2, 25000, 'Shiot dewasa', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (111, 1, 22, 10000, 2, 20000, 'Kaos dalam wanita Assa Renda', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (112, 1, 14, 40000, 1, 40000, 'Cd optima dewasa pria', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (113, 1, 11, 30000, 2, 60000, 'Celana Dalam Golden Nick', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (114, 1, 9, 25000, 1, 25000, 'Celana dalam Lorina ', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (115, 1, 11, 10000, 2, 20000, 'Celana Dalam Golden Nick', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (116, 1, 14, 40000, 1, 40000, 'Cd Optima dewasa pria', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (117, 1, 13, 20000, 1, 20000, 'Cd anak pria yakuza', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (118, 1, 15, 30000, 1, 30000, 'CD Gents Club pria', 'Bagus', 3, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (119, 1, 8, 20000, 1, 20000, 'Celana dalam wanita dewasa Melina', 'Bagus', 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (120, 1, 5, 15000, 2, 30000, 'Bra Sport Bra ', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (121, 1, 5, 10000, 1, 10000, 'Bra Sport Bra ', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (122, 1, 5, 15000, 6, 90000, 'Bra Sport Bra ', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (123, 1, 14, 40000, 2, 80000, 'Cd Optima dewasa pria', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (124, 1, 14, 40000, 2, 80000, 'Cd Optima dewasa pria', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (125, 1, 14, 40000, 2, 80000, 'Cd Optima dewasa pria', 'Bagus', 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (126, 0, 5, 15000, 4, 60000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (127, 0, 16, 60000, 1, 60000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (128, 0, 5, 10000, 1, 10000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (129, 0, 30, 12500, 2, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (130, 0, 20, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (131, 0, 22, 25000, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (132, 0, 12, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (133, 0, 2, 25000, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (134, 0, 8, 20000, 1, 20000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (135, 0, 3, 25000, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (136, 0, 5, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (137, 0, 26, 40000, 1, 40000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (138, 0, 21, 25000, 2, 50000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (139, 0, 5, 15000, 4, 60000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (140, 0, 29, 20000, 4, 80000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (141, 0, 30, 15000, 5, 75000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (142, 0, 30, 10000, 5, 50000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (143, 0, 21, 18000, 1, 18000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (144, 0, 3, 25000, 2, 50000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (145, 0, 8, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (146, 0, 5, 15000, 2, 30000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (147, 0, 30, 10000, 1, 10000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (148, 0, 21, 25000, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (149, 0, 5, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (150, 0, 14, 40000, 1, 40000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (151, 0, 14, 40000, 1, 40000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (152, 0, 3, 25000, 4, 100000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (153, 0, 11, 30000, 2, 60000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (154, 0, 14, 40000, 1, 40000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (155, 0, 14, 40000, 2, 80000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (156, 0, 14, 40000, 2, 80000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (157, 0, 11, 30000, 2, 60000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (158, 0, 11, 25000, 4, 100000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (159, 0, 29, 20000, 4, 80000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (160, 0, 14, 40000, 1, 40000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (161, 0, 11, 30000, 1, 30000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (162, 0, 21, 30000, 2, 60000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (163, 0, 8, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (164, 0, 8, 20000, 2, 40000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (165, 0, 21, 25000, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (166, 0, 29, 20000, 2, 40000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (167, 0, 11, 25000, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (168, 0, 14, 40000, 1, 40000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (169, 0, 11, 30000, 1, 30000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (170, 0, 2, 25000, 2, 50000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (171, 0, 21, 25000, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (172, 0, 3, 25000, 2, 50000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (173, 0, 3, 25000, 2, 50000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (174, 0, 5, 15000, 2, 30000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (175, 0, 11, 25000, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (176, 0, 11, 30000, 1, 30000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (177, 0, 8, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (178, 0, 8, 20000, 1, 20000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (179, 0, 22, 25000, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (180, 0, 14, 40000, 1, 40000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (181, 0, 14, 60000, 1, 60000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (182, 0, 22, 25000, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (183, 0, 14, 40000, 2, 80000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (184, 0, 29, 20000, 4, 80000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (185, 0, 22, 25000, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (186, 0, 8, 20000, 1, 20000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (187, 0, 21, 25000, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (188, 0, 5, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (189, 0, 29, 20000, 1, 20000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (190, 0, 3, 25000, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (191, 0, 5, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (192, 0, 8, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (193, 0, 29, 20000, 1, 20000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (194, 0, 21, 20000, 1, 20000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (195, 0, 8, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (196, 0, 21, 20000, 1, 20000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (197, 0, 3, 25000, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (198, 0, 30, 10000, 1, 10000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (199, 0, 5, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (200, 0, 8, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (201, 0, 11, 25000, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (202, 0, 2, 25000, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (203, 0, 8, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (204, 0, 3, 25000, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (205, 0, 14, 40000, 1, 40000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (206, 0, 2, 25000, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (207, 0, 5, 15000, 2, 30000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (208, 0, 20, 20000, 1, 20000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (209, 0, 21, 20000, 1, 20000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (210, 0, 22, 20000, 1, 20000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (211, 0, 13, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (212, 0, 12, 15000, 2, 30000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (213, 0, 23, 25000, 2, 50000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (214, 0, 21, 25000, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (215, 0, 5, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (216, 0, 14, 40000, 1, 40000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (217, 0, 11, 30000, 1, 30000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (218, 0, 30, 10000, 3, 30000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (219, 0, 2, 25000, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (220, 0, 30, 17500, 4, 70000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (221, 0, 8, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (222, 0, 22, 20000, 1, 20000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (223, 0, 21, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (224, 0, 3, 25000, 2, 50000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (225, 0, 5, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (226, 0, 30, 15000, 2, 30000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (227, 0, 30, 7500, 2, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (228, 0, 29, 20000, 1, 20000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (229, 0, 30, 20000, 2, 40000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (230, 0, 3, 25000, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (231, 0, 26, 35000, 1, 35000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (232, 0, 24, 15000, 2, 30000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (233, 0, 5, 15000, 2, 30000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (234, 0, 30, 15000, 2, 30000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (235, 0, 28, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (236, 0, 5, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (237, 0, 8, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (238, 0, 5, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (239, 0, 30, 10000, 1, 10000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (240, 0, 5, 12500, 2, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (241, 0, 8, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (242, 0, 8, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (243, 0, 21, 18000, 1, 18000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (244, 0, 11, 25000, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (245, 0, 29, 20000, 1, 20000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (246, 0, 5, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (247, 0, 20, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (248, 0, 30, 12500, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (249, 0, 11, 25000, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (250, 0, 11, 25000, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (251, 0, 22, 15000, 3, 45000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (252, 0, 13, 15000, 2, 30000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (253, 0, 13, 15000, 2, 30000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (254, 0, 8, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (255, 0, 13, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (256, 0, 8, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (257, 0, 8, 20000, 1, 20000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (258, 0, 13, 15000, 1, 15000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (259, 0, 21, 25000, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (260, 0, 13, 25000, 1, 25000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (261, 0, 20, 15000, 2, 30000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');
INSERT INTO `order_details` VALUES (262, 0, 30, 15000, 2, 30000, NULL, 'Bagus', NULL, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-13 19:20:09');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nomerorder` int NOT NULL,
  `iduser` bigint UNSIGNED NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `itemsubtotal` int NOT NULL,
  `tax` int NOT NULL,
  `shippingprice` int NOT NULL,
  `ordertotal` int NOT NULL,
  `payment` int NOT NULL,
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
  `payment_id` int NOT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tracking_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted` enum('true','false') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipping_id` int NOT NULL,
  `country_code` int NOT NULL,
  `shipping_status` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------

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
INSERT INTO `product_categories` VALUES (1, 'Bra busa cantolan 2', '1', 'false', '2024-06-11 14:17:24', '2024-06-12 10:26:29');
INSERT INTO `product_categories` VALUES (2, 'Bra busa cantolan 3', 'Aktif', 'false', '2024-06-12 11:17:00', '2024-06-12 11:17:11');
INSERT INTO `product_categories` VALUES (3, 'Bra tanpa busa cantolan 2', 'Aktif', 'false', '2024-06-12 11:17:00', '2024-06-12 11:17:11');
INSERT INTO `product_categories` VALUES (4, 'Bra tanpa busa cantolan 3', 'Aktif', 'false', '2024-06-12 11:17:00', '2024-06-12 11:17:11');
INSERT INTO `product_categories` VALUES (5, 'Kaos dalam anak wanita', 'Aktif', 'false', '2024-06-12 11:17:00', '2024-06-12 11:17:11');
INSERT INTO `product_categories` VALUES (6, 'Kaos dalam anak pria', 'Aktif', 'false', '2024-06-12 11:17:00', '2024-06-12 11:17:11');
INSERT INTO `product_categories` VALUES (7, 'Kaos dalam lorina', 'Aktif', 'false', '2024-06-12 11:17:00', '2024-06-12 11:17:11');
INSERT INTO `product_categories` VALUES (8, 'Kaos dalam pria ', 'Aktif', 'false', '2024-06-12 11:17:00', '2024-06-12 11:17:11');
INSERT INTO `product_categories` VALUES (9, 'Kaos dalam wanita ', 'Aktif', 'false', '2024-06-12 11:17:00', '2024-06-12 11:17:11');
INSERT INTO `product_categories` VALUES (10, 'Celana dalam wanita ', 'Aktif', 'false', '2024-06-12 11:17:00', '2024-06-12 11:17:11');
INSERT INTO `product_categories` VALUES (11, 'Celana dalam pria', 'Aktif', 'false', '2024-06-12 11:17:00', '2024-06-12 11:17:11');
INSERT INTO `product_categories` VALUES (12, 'Shiot', 'Aktif', 'false', '2024-06-12 11:17:00', '2024-06-12 11:17:11');
INSERT INTO `product_categories` VALUES (13, 'Tangtop', 'Aktif', 'false', '2024-06-12 11:17:00', '2024-06-12 11:17:11');
INSERT INTO `product_categories` VALUES (14, 'Leging', 'Aktif', 'false', '2024-06-12 11:17:00', '2024-06-12 11:17:11');
INSERT INTO `product_categories` VALUES (15, 'Androk ', 'Aktif', 'false', '2024-06-12 11:17:00', '2024-06-12 11:17:11');
INSERT INTO `product_categories` VALUES (16, 'Miniset Anak ', 'Aktif', 'false', '2024-06-12 11:17:00', '2024-06-12 11:17:11');
INSERT INTO `product_categories` VALUES (17, 'Miniset Dewasa', 'Aktif', 'false', '2024-06-12 11:17:00', '2024-06-12 11:17:11');
INSERT INTO `product_categories` VALUES (18, 'Celana dalam anak wanita', 'Aktif', 'false', '2024-06-12 11:45:13', '2024-06-12 11:45:17');
INSERT INTO `product_categories` VALUES (19, 'Celana dalam anak pria', 'Aktif', 'false', '2024-06-12 11:45:13', '2024-06-12 11:45:17');

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
INSERT INTO `products` VALUES (1, '', 2, 'Bra Roumei', 'Bra busa cantolan 3', 13, 25000, NULL, 'Aktif', 'false', '2024-06-12 12:50:18', '2024-06-12 12:50:20', '');
INSERT INTO `products` VALUES (2, '', 2, 'Bra Toyazi', 'Bra busa cantolan 3', 15, 25000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', '');
INSERT INTO `products` VALUES (3, '', 1, 'Bra Fema', 'Bra busa cantolan 2', 1, 25000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', '');
INSERT INTO `products` VALUES (4, '', 1, 'Bra Roumei', 'Bra busa cantolan 2', 13, 23000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', '');
INSERT INTO `products` VALUES (5, '', 3, 'Bra Sport Bra', 'Bra tanpa busa cantolan 2', 21, 15000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', '');
INSERT INTO `products` VALUES (6, '', 4, 'Bra Lorina', 'Bra tanpa busa cantolan 3', 3, 15000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', '');
INSERT INTO `products` VALUES (7, '', 3, 'Bra Lorina', 'Bra tanpa busa cantolan 2', 3, 12500, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', '');
INSERT INTO `products` VALUES (8, '', 10, 'Celana dalam wanita melina', 'Celana dalam wanita', 6, 5000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', '');
INSERT INTO `products` VALUES (9, '', 10, 'Celana dalam wanita lorina', 'Androk', 8, 20000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', 'produk-1');
INSERT INTO `products` VALUES (10, '', 10, 'Celana dalam wanita fema', 'Miniset anak', 8, 10000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', 'produk-1');
INSERT INTO `products` VALUES (11, '', 10, 'Celana dalam wanita golden nick ', 'Miniset dewasa', 20, 20000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', 'produk-1');
INSERT INTO `products` VALUES (12, '', 18, 'Celana dalam anak wanita viena', 'Shiot', 14, 15000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', 'produk-2');
INSERT INTO `products` VALUES (13, '', 19, 'Celana dalam anak pria yakuza', 'Celana dalam wanita', 3, 10000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', '');
INSERT INTO `products` VALUES (14, '', 11, 'Celana dalam pria optima', 'Celana dalam wanita', 1, 15000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', '');
INSERT INTO `products` VALUES (15, '', 11, 'Celana dalam pria gent club', 'Celana dalam wanita', 2, 10000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', '');
INSERT INTO `products` VALUES (16, '', 11, 'Celana dalam pria boxer ropolo', 'Celana dalam anak wanita', 5, 5000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', '');
INSERT INTO `products` VALUES (17, '', 11, 'Celana dalam pria boxer fema', 'Celana dalam anak pria', 7, 5000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', '');
INSERT INTO `products` VALUES (18, '', 11, 'Celana dalam pria boxer guda', 'Celana dalam pria', 10, 40000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', '');
INSERT INTO `products` VALUES (19, '', 11, 'Celana dalam pria shogun', 'Celana dalam pria', 11, 30000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', '');
INSERT INTO `products` VALUES (20, '', 6, 'Kaos dalam anak nonic', 'Celana dalam pria', 16, 60000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', '');
INSERT INTO `products` VALUES (21, '', 7, 'Kaos dalam lorina', 'Celana dalam pria', 1, 60000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', '');
INSERT INTO `products` VALUES (22, '', 9, 'Kaos dalam wanita assa', 'Celana dalam pria', 19, 60000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', '');
INSERT INTO `products` VALUES (23, '', 8, 'Kaos dalam pria swan brand', 'Celana dalam pria', 9, 25000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', '');
INSERT INTO `products` VALUES (24, '', 8, 'Kaos dalam pria vegasa', 'Kaos dalam anak', 4, 5000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', '');
INSERT INTO `products` VALUES (25, '', 13, 'Tangtop', 'Kaos dalam anak', 3, 10000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', '');
INSERT INTO `products` VALUES (26, '', 14, 'Leging', 'Kaos dalam wanita', 8, 10000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', '');
INSERT INTO `products` VALUES (27, '', 15, 'Androk', 'Kaos dalam pria', 18, 25000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', '');
INSERT INTO `products` VALUES (28, '', 16, 'Miniset Anak', 'Kaos dalam pria', 17, 15000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', '');
INSERT INTO `products` VALUES (29, '', 17, 'Miniset Dewasa', 'Tangtop', 22, 25000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', '');
INSERT INTO `products` VALUES (30, '', 12, 'Shiot', 'Leging', 14, 35000, NULL, 'Aktif', 'false', '2024-06-12 12:49:08', '2024-06-12 12:50:20', '');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Ana Febri Yanti', 'admin@gmail.com', NULL, '$2y$12$8tmJV4azVqPZCroBjcF7.uwCfL5MsRrllasUDjp6SBUjs6B5P3jEu', 'user', NULL, '2024-06-11 12:02:23', '2024-06-11 12:02:23');

SET FOREIGN_KEY_CHECKS = 1;
