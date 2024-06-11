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

 Date: 11/06/2024 19:58:36
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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brands
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 126 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_details
-- ----------------------------
INSERT INTO `order_details` VALUES (1, 1, 1, 15000, 2, 30000, 'Bra Sport Bra ', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (2, 1, 1, 40000, 2, 80000, 'Cd Optima dewasa pria', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (3, 1, 1, 60000, 1, 60000, 'Cd Optima dewasa boxer', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (4, 1, 1, 25000, 1, 25000, 'Bra Toyazi busa', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (5, 1, 1, 25000, 1, 25000, 'Kaos Dalam Wanita Assa Renda', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (6, 1, 1, 15000, 1, 15000, 'Kaos dalam bayi ', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (7, 1, 2, 25000, 2, 50000, 'Bra Fema Busa', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (8, 1, 2, 10000, 3, 30000, 'Shiot dewasa', NULL, 3, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (9, 1, 2, 15000, 1, 15000, 'Celana dalam wanita Melina', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (10, 1, 3, 20000, 2, 40000, 'Miniset anak dewasa', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (11, 1, 2, 15000, 2, 30000, 'Shiot dewasa', NULL, 3, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (12, 1, 3, 15000, 4, 60000, 'Shiot dewasa', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (13, 1, 2, 40000, 2, 80000, 'Cd Optima dewasa pria', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (14, 1, 3, 30000, 2, 60000, 'Kaos Dalam Wanita Assa Renda', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (15, 1, 2, 10000, 2, 20000, 'Shiot dewasa', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (16, 1, 3, 20000, 2, 40000, 'Miniset anak dewasa', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (17, 1, 2, 25000, 1, 25000, 'Kaos Dalam Lorina', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (18, 1, 3, 25000, 1, 25000, 'Kaos Dalam Wanita Assa Renda', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (19, 1, 4, 60000, 1, 60000, 'Cd Optima dewasa boxer', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (20, 1, 5, 40000, 2, 80000, 'Cd Optima dewasa pria', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (21, 1, 2, 40000, 3, 120000, 'Cd Optima dewasa pria', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (22, 1, 2, 15000, 6, 90000, 'Bra Sport Bra ', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (23, 1, 2, 60000, 1, 60000, 'Cd Ropolo Pria Boxer', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (24, 1, 1, 10000, 5, 50000, 'Shiot dewasa', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (25, 1, 1, 20000, 5, 100000, 'Miniset anak dewasa', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (26, 1, 1, 15000, 4, 60000, 'Bra Sport Bra ', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (27, 1, 2, 15000, 5, 75000, 'Shiot dewasa', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (28, 1, 3, 25000, 4, 100000, 'Bra Toyazi busa', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (29, 1, 4, 25000, 4, 100000, 'Bra Fema Busa', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (30, 1, 5, 30000, 2, 60000, 'Kaos Dalam Wanita Assa Renda', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (31, 1, 6, 15000, 4, 60000, 'Celana dalam wanita Melina', NULL, 3, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (32, 1, 6, 60000, 2, 120000, 'Cd Ropolo Pria Boxer', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (33, 1, 6, 15000, 4, 60000, 'Shiot dewasa', NULL, 3, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (34, 1, 6, 20000, 5, 100000, 'Miniset anak dewasa', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (35, 1, 6, 15000, 2, 30000, 'Bra Sport Bra ', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (36, 1, 6, 18000, 2, 36000, 'Kaos Dalam Lorina', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (37, 1, 7, 40000, 2, 80000, 'Cd Optima dewasa pria', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (38, 1, 6, 60000, 2, 120000, 'Cd Ropolo Pria Boxer', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (39, 1, 1, 15000, 6, 90000, 'Bra Sport Bra ', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (40, 1, 2, 15000, 5, 75000, 'Shiot dewasa', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (41, 1, 3, 20000, 5, 100000, 'Miniset anak dewasa', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (42, 1, 4, 25000, 2, 50000, 'Kaos Dalam Wanita Assa Renda', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (43, 1, 5, 60000, 1, 60000, 'Cd Ropolo Pria Boxer', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (44, 1, 6, 40000, 3, 120000, 'Cd Optima dewasa pria', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (45, 1, 2, 25000, 4, 100000, 'Bra Toyazi busa', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (46, 1, 2, 15000, 2, 30000, 'Bra Sport Bra ', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (47, 1, 2, 15000, 6, 90000, 'Shiot dewasa', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (48, 1, 2, 20000, 4, 80000, 'Miniset anak dewasa', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (49, 1, 2, 30000, 2, 60000, 'Kaos Dalam Wanita Assa Renda', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (50, 1, 2, 25000, 2, 50000, 'Kaos Dalam Lorina', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (51, 1, 2, 40000, 3, 120000, 'Cd Optima dewasa pria', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (52, 1, 2, 60000, 4, 240000, 'Cd Ropolo Pria Boxer', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (53, 1, 2, 15000, 2, 30000, 'Bra Sport Bra ', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (54, 1, 2, 40000, 2, 80000, 'Cd Optima dewasa pria', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (55, 1, 2, 12500, 2, 25000, 'Bra Sport Bra ', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (56, 1, 2, 30000, 1, 0, 'Celana Dalam Kotak Anak ', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (57, 1, 2, 20000, 3, 0, 'Kaos Dalam Anak Lorina', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (58, 1, 2, 10000, 3, 0, 'Shiot dewasa', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (59, 1, 2, 25000, 1, 0, 'Celana Dalam Golden Nick', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (60, 1, 2, 25000, 3, 0, 'Kaos Dalam Lorina', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (61, 1, 2, 40000, 1, 0, 'Cd Optima dewasa pria', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (62, 1, 2, 15000, 2, 0, 'Bra Sport Bra ', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (63, 1, 2, 40000, 1, 0, 'Cd anak segitiga', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (64, 1, 2, 15000, 3, 0, 'Bra Sport Bra ', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (65, 1, 2, 25000, 2, 0, 'Celana dalam Lorina ', NULL, 3, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (66, 1, 2, 10000, 2, 0, 'Shiot dewasa', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (67, 1, 2, 10000, 2, 0, 'Kaos Dalam Wanita Assa Renda', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (68, 1, 2, 10000, 1, 0, 'Shiot dewasa', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (69, 1, 2, 15000, 1, 0, 'Celana dalam wanita Melina', NULL, 2, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (70, 1, 2, 15000, 1, 0, 'Celana dalam wanita Melina', NULL, 2, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (71, 1, 2, 12500, 2, 0, 'Shiot dewasa', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (72, 1, 2, 15000, 1, 0, 'Kaos Dalam Anak Assa', NULL, 3, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (73, 1, 2, 25000, 2, 0, 'Bra Toyazi busa', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (74, 1, 2, 30000, 1, 0, 'Celana Dalam Golden Nick', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (75, 1, 2, 20000, 1, 0, 'Celana dalam wanita Melina', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (76, 1, 3, 20000, 2, 0, 'Kaos Dalam Wanita Assa Renda', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (77, 1, 3, 12500, 2, 0, 'Bra Sport Bra ', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (78, 1, 3, 25000, 1, 0, 'Kaos dalam Lorina', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (79, 1, 3, 20000, 1, 0, 'Miniset anak dewasa', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (80, 1, 3, 10000, 1, 0, 'Kaos dalam wanita Assa Renda', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (81, 1, 3, 15000, 2, 0, 'Bra Sport Bra ', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (82, 1, 3, 10000, 1, 0, 'Bra Sport Bra ', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (83, 1, 3, 25000, 2, 0, 'Bra Toyazi busa', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (84, 1, 3, 25000, 1, 0, 'Bra Toyazi busa', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (85, 1, 3, 25000, 1, 0, 'Kaos Dalam Lorina', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (86, 1, 3, 15000, 1, 0, 'Celana dalam wanita melina', NULL, 3, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (87, 1, 3, 20000, 1, 0, 'Miniset anak dewasa', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (88, 1, 3, 10000, 2, 0, 'Kaos dalam wanita Assa Renda', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (89, 1, 3, 13000, 1, 0, 'Kaos dalam anak nonic', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (90, 1, 4, 10000, 1, 0, 'Bra Sport Bra ', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (91, 1, 4, 25000, 1, 0, 'Celana Dalam Golden Nick', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (92, 1, 4, 15000, 2, 0, 'Bra Sport Bra ', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (93, 1, 4, 30000, 1, 0, 'Celana Dalam Golden Nick', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (94, 1, 4, 15000, 2, 0, 'Kaos dalam anak Assa', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (95, 1, 4, 25000, 1, 0, 'Bra Toyazi busa', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (96, 1, 4, 17000, 1, 0, 'Kaos dalam Anak Lorina', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (97, 1, 4, 17000, 1, 0, 'Kaos dalam anak Lorina', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (98, 1, 4, 5000, 2, 0, 'Kaos dalam anak Enjimou', NULL, 3, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (99, 1, 4, 12500, 2, 0, 'Shiot dewasa', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (100, 1, 4, 15000, 1, 0, 'Celana dalam anak ', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (101, 1, 4, 25000, 1, 0, 'Kaos dalam anak Lorina', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (102, 1, 2, 20000, 2, 0, 'Celana dalam wanita dewasa Melina', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (103, 1, 2, 20000, 1, 0, 'Celana dalam anak pria', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (104, 1, 2, 10000, 1, 0, 'Bra Sport Bra ', NULL, 3, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (105, 1, 2, 15000, 2, 0, 'Celana dalam wanita dewasa Melina', NULL, 3, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (106, 1, 2, 75000, 2, 0, 'Bra Sport Bra ', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (107, 1, 2, 7500, 2, 0, 'Shiot dewasa', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (108, 1, 2, 10000, 1, 0, 'Kaos dalam wanita Assa Renda', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (109, 1, 5, 15000, 2, 0, 'Bra Sport Bra ', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (110, 1, 5, 12500, 2, 0, 'Shiot dewasa', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (111, 1, 5, 10000, 2, 0, 'Kaos dalam wanita Assa Renda', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (112, 1, 5, 40000, 1, 0, 'Cd optima dewasa pria', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (113, 1, 5, 30000, 2, 0, 'Celana Dalam Golden Nick', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (114, 1, 5, 25000, 1, 0, 'Celana dalam Lorina ', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (115, 1, 5, 10000, 2, 0, 'Celana Dalam Golden Nick', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (116, 1, 5, 40000, 1, 0, 'Cd Optima dewasa pria', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (117, 1, 5, 20000, 1, 0, 'Cd anak segitiga', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (118, 1, 5, 30000, 1, 0, 'CD Biortek pria', NULL, 3, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (119, 1, 5, 20000, 1, 0, 'Celana dalam wanita dewasa Melina', NULL, 4, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (120, 1, 5, 15000, 2, 0, 'Bra Sport Bra ', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (121, 1, 5, 10000, 1, 0, 'Bra Sport Bra ', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (122, 1, 5, 15000, 6, 0, 'Bra Sport Bra ', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (123, 1, 5, 40000, 2, 0, 'Cd Optima dewasa pria', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (124, 1, 5, 40000, 2, 0, 'Cd Optima dewasa pria', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');
INSERT INTO `order_details` VALUES (125, 1, 5, 60000, 2, 0, 'Cd Optima dewasa pria', NULL, 5, 'Aktif', 'false', '2024-06-11 19:20:00', '2024-06-11 19:20:09');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_categories
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, '', 0, 'a', '', 0, 0, NULL, '', 'false', NULL, NULL, '');
INSERT INTO `products` VALUES (2, '', 0, 'b', '', 0, 0, NULL, '', 'false', NULL, NULL, '');
INSERT INTO `products` VALUES (3, '', 0, 'c', '', 0, 0, NULL, '', 'false', NULL, NULL, '');
INSERT INTO `products` VALUES (5, '', 0, 'd', '', 0, 0, NULL, '', 'false', NULL, NULL, '');
INSERT INTO `products` VALUES (6, '', 0, 'e', '', 0, 0, NULL, '', 'false', NULL, NULL, '');
INSERT INTO `products` VALUES (7, '', 0, 'f', '', 0, 0, NULL, '', 'false', NULL, NULL, '');
INSERT INTO `products` VALUES (9, '', 0, 'g', '', 0, 0, NULL, '', 'false', NULL, NULL, '');
INSERT INTO `products` VALUES (10, '', 0, 'h', '', 0, 0, NULL, '', 'false', NULL, NULL, '');

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
