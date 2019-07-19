/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1_3306
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : 127.0.0.1:3306
 Source Schema         : laravel

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 19/07/2019 15:30:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT 0,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (1, 9, 'sd发射点发生', 3, '2019-07-17 09:01:20', '2019-07-17 09:01:20');
INSERT INTO `comments` VALUES (2, 9, '测试测试', 3, '2019-07-17 09:02:26', '2019-07-17 09:02:26');
INSERT INTO `comments` VALUES (3, 13, '11113', 3, '2019-07-17 09:11:40', '2019-07-17 09:11:40');
INSERT INTO `comments` VALUES (4, 13, '我一脚踢在你这二货的三角部位，它的蛋顿时四分五裂，六厘米短的小鸡鸡折断夹杂着鸡毛七零八落当场身亡。九泉之下它十分无奈百般难受，费尽千辛万苦用了近亿年时间方才养好伤转世投胎。亿年之后，万没想到我又遇上这货。此时它光着身子，浑身千疮百孔十分恶心。九幽冤魂般的嘴脸，八戒一样的身材还七窍流血，原本六厘米的小鸡鸡又缩短了五分之四。哈哈哈，看着它这般惨样，我忍不住大笑三声，二话不说冲过去又是一脚。', 3, '2019-07-17 09:15:15', '2019-07-17 09:15:15');
INSERT INTO `comments` VALUES (5, 13, '吱吱吱吱', 3, '2019-07-17 09:20:49', '2019-07-17 09:20:49');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_07_03_025147_create_posts_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_07_16_051739_create_posts_table', 2);
INSERT INTO `migrations` VALUES (5, '2019_07_16_052808_create_posts_table', 3);
INSERT INTO `migrations` VALUES (6, '2019_07_17_081249_comment', 4);
INSERT INTO `migrations` VALUES (7, '2019_07_17_081356_create_comments_table', 4);
INSERT INTO `migrations` VALUES (8, '2019_07_18_070239_create_zans_table', 5);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, 'test1', '额大师傅但是二维图而委托方是额人1111111', 1, '2019-07-16 15:46:20', '2019-07-16 15:46:24');
INSERT INTO `posts` VALUES (2, 'test2', 's沙发沙发热帖而已发热发热222222', 1, '2019-07-16 15:46:20', '2019-07-16 15:46:24');
INSERT INTO `posts` VALUES (3, 'test3', '需重新吧功夫天涯二恶烷地方33333', 1, '2019-07-16 15:46:20', '2019-07-16 15:46:24');
INSERT INTO `posts` VALUES (4, 'test4', '请问法大师傅士大夫', 1, '2019-07-16 15:46:20', '2019-07-16 15:46:24');
INSERT INTO `posts` VALUES (5, 'test5', '请问法大师傅士大夫', 1, '2019-07-16 15:46:20', '2019-07-16 15:46:24');
INSERT INTO `posts` VALUES (6, 'test6', '请问法大师傅士大夫', 1, '2019-07-16 15:46:20', '2019-07-16 15:46:24');
INSERT INTO `posts` VALUES (7, 'test7', '请问法大师傅士大夫', 1, '2019-07-16 15:46:20', '2019-07-16 15:46:24');
INSERT INTO `posts` VALUES (8, 'test8', '请问法大师傅士大夫', 1, '2019-07-16 15:46:20', '2019-07-16 15:46:24');
INSERT INTO `posts` VALUES (9, 'test9999', '本人儿童地方微软违法额和土壤和微软的方式认为二万人的方式', 1, '2019-07-16 15:46:20', '2019-07-16 09:37:22');
INSERT INTO `posts` VALUES (13, '习近平在内蒙古考察并指导开展主题教育', '习近平在内蒙古考察并指导开展“不忘初心、牢记使命”主题教育时强调 牢记初心使命贯彻以人民为中心发展思想 把祖国北部边疆风景线打造得更加亮丽', 3, '2019-07-17 04:17:48', '2019-07-17 04:17:48');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '一地鸡毛', '1172258780@qq.com', '$2y$10$gjCYe9l74zeKx0VGIDoXVumYWQVQGLFmp/E2fsvn02GByQ1ZTWA7y', NULL, '2019-07-17 03:30:48', '2019-07-17 03:30:48');
INSERT INTO `users` VALUES (2, '蒋云东', '269295057@qq.com', '$2y$10$ce9TLZGR9uo4hCpOZOfN7uExabLRZMuJUMnlYEZf.oHxg9.89otgi', NULL, '2019-07-17 03:39:26', '2019-07-17 03:39:26');
INSERT INTO `users` VALUES (3, '蒋云东', 'jiangyundong11@126.com', '$2y$10$.y0yi3zYcVAA3yrhZgIsX.1ujMow2I2wILFszCqsT7dQsScNS0d9G', 'JTprnbAREJIki7jDVDS5QTkKVymmuTXtNVqi1C9wjShYT8BMaQ6AkjW2PyW1', '2019-07-17 03:59:53', '2019-07-17 03:59:53');

-- ----------------------------
-- Table structure for zans
-- ----------------------------
DROP TABLE IF EXISTS `zans`;
CREATE TABLE `zans`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of zans
-- ----------------------------
INSERT INTO `zans` VALUES (7, 13, 3, '2019-07-18 08:19:47', '2019-07-18 08:19:47');

SET FOREIGN_KEY_CHECKS = 1;
