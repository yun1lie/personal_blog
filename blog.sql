/*
 Navicat Premium Data Transfer

 Source Server         : 11
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 09/11/2022 17:42:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for about_me
-- ----------------------------
DROP TABLE IF EXISTS `about_me`;
CREATE TABLE `about_me`  (
  `about` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of about_me
-- ----------------------------
INSERT INTO `about_me` VALUES ('I am Susan, a health science blogger, and a national health manager. I only want to share more health insurance knowledge and provide more families with security against risks.\r\n\r\nHalf of one\'s life is spent at home. But the sudden epidemic last year made us put aside our busyness and take a serious look at our home life for the first time.\r\n\r\nI saved commuting time, found out the recipes lying in my favorites, and began to take care of my meals in a variety of ways; Give up staying up late, put the shelved fitness plan on the agenda, and gradually turn the meat on the belly into a waistcoat line; Carefully tidy up the corners of the room that usually do not have time to clean, and pay attention to everything from the color matching of the sheets to the smell of fragrance\r\n\r\nIn the post epidemic era, more and more people feel that nothing is more important than health. They have stayed at home for so long, but it seems that they have never seriously looked at their home life.\r\n\r\nIf you are concerned about your own health problems, you can also communicate with me, and I will tailor your personal health insurance plan for you.');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '标题',
  `author` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  `view_num` int(0) NULL DEFAULT NULL,
  `likes` int(0) NULL DEFAULT NULL,
  `comment_num` int(0) NULL DEFAULT NULL,
  `induction` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `column` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, 'IFTJ', '小康', '2022-10-05 16:09:41', 10, 20, 100, '可以饮一杯温热的牛奶', 'I LOVE FTJI LOVE FTJI LOVE FTJI LOVE FTJI LOVE FTJI LOVE FTJI LOVE FTJI LOVE FTJI LOVE FTJI LOVE FTJI LOVE FTJ', 'sleep');
INSERT INTO `article` VALUES (2, 'sleep1', NULL, NULL, 15, 40, NULL, '睡觉前洗个澡，使身体放松', NULL, 'sleep');
INSERT INTO `article` VALUES (3, 'sleep2', NULL, NULL, NULL, NULL, NULL, '上床睡觉前要保持情绪稳定，不要胡思乱想', NULL, 'sleep');
INSERT INTO `article` VALUES (4, 'diet1', NULL, NULL, NULL, NULL, NULL, '常吃枸杞子能“坚筋骨、耐寒暑”。是滋补调养和抗衰老的良药。', NULL, 'diet');
INSERT INTO `article` VALUES (5, 'diet2', NULL, NULL, NULL, NULL, NULL, '豆腐的蛋白质含量丰富，而且豆腐蛋白属完全蛋白，不仅含有人体必需的八种氨基酸，而且比例也接近人体需要', NULL, 'diet');
INSERT INTO `article` VALUES (6, 'diet3', NULL, NULL, NULL, NULL, NULL, '吃得太油腻，喝杯芹菜汁;', NULL, 'diet');
INSERT INTO `article` VALUES (7, 'sport1', NULL, NULL, NULL, NULL, NULL, '步行锻炼简便易行,尤其适宜于中老年人和体弱者的健身养生。', NULL, 'sport');
INSERT INTO `article` VALUES (8, 'sport2', NULL, NULL, NULL, NULL, NULL, '.远眺：减轻眼睛疲劳;', NULL, 'sport');
INSERT INTO `article` VALUES (9, 'sport3', NULL, NULL, NULL, NULL, NULL, '转颈，既能提神又能防止颈椎', NULL, 'sport');
INSERT INTO `article` VALUES (10, 'music1', '1', '2022-11-16 17:04:04', 1, 1, 120, '音乐可以让身体放轻松，好的音乐可以纾解压力，避免因自律神经紧张失调而导致慢性疾病的产生。', '', 'music');
INSERT INTO `article` VALUES (11, 'music2', '2', NULL, NULL, NULL, NULL, '音乐可以敲开封闭的心灵，纾解忧郁苦闷的心情，甚至音乐还可以做到某些程度的心灵治疗。', NULL, 'music');
INSERT INTO `article` VALUES (12, 'music3', NULL, NULL, NULL, NULL, NULL, '音乐可以刺激脑部，活化脑细胞，适当的音乐刺激对脑部的活动有很大的帮助，甚至达到防止老化的功效。', NULL, 'music');
INSERT INTO `article` VALUES (13, 'smile1', NULL, NULL, NULL, NULL, NULL, '笑有助于美容，面部肌肉收缩皮肤会更有弹性；', NULL, 'smile');
INSERT INTO `article` VALUES (14, 'smile2', NULL, NULL, NULL, NULL, NULL, '笑能增强心肌功能，使大脑皮层兴奋，脑部功能增强', NULL, 'smile');
INSERT INTO `article` VALUES (15, 'smile3', NULL, NULL, NULL, NULL, NULL, '笑能缓解紧张情绪，化解焦虑和压力，有助于治疗抑郁症等精神疾病；\r\n\r\n笑能缓解紧张情绪，化解焦虑和压力，有助于治疗抑郁症等精神疾病；\r\n\r\n笑能缓解紧张情绪，化解焦虑和压力，有助于治疗抑郁症等精神疾病；\r\n\r\n笑能缓解紧张情绪，化解焦虑和压力，有助于治疗抑郁症等精神疾病；\r\n\r\n笑能缓解紧张情绪，化解焦虑和压力，有助于治疗抑郁症等精神疾病；\r\n\r\n笑能缓解紧张情绪，化解焦虑和压力，有助于治疗抑郁症等精神疾病；\r\n\r\n笑能缓解紧张情绪，化解焦虑和压力，有助于治疗抑郁症等精神疾病', NULL, 'smile');
INSERT INTO `article` VALUES (16, 'travel1', NULL, NULL, NULL, NULL, NULL, '旅游可以缓解工作和生活方面的压力，使精神得到彻底放松 ，旅游是在没有任何心理负担的情况下进行的 ，所以可以让自己的心灵得到彻底的放松。', NULL, 'travel');
INSERT INTO `article` VALUES (17, 'travel2', NULL, NULL, NULL, NULL, NULL, '旅游往往要跋山涉水的 ，过程虽很累 ，但它带给人的更多是精神上的和肉体上的愉悦 ，比如赏风景 ，尝美食 ，住宾馆 ，听故事等等 ，哪一样都会让我们愉悦吧， 一次旅游， 回味无穷。', NULL, 'travel');
INSERT INTO `article` VALUES (18, 'travel3', NULL, NULL, NULL, NULL, NULL, '旅游可以开阔眼界 ，增长见识和见闻， 通过旅游 ，人们可以亲眼观察到丰富的人文景观 ，还可以了解各地的文化风俗 ，饮食习惯和宗教信仰 ，通过旅游可以给人带来全新的感受。', NULL, 'travel');

-- ----------------------------
-- Table structure for article_comment
-- ----------------------------
DROP TABLE IF EXISTS `article_comment`;
CREATE TABLE `article_comment`  (
  `id` int(0) NOT NULL,
  `article_id` int(0) NULL DEFAULT NULL,
  `comment_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `article_id`(`article_id`) USING BTREE,
  INDEX `comment_id`(`comment_id`) USING BTREE,
  CONSTRAINT `article_comment_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `article_comment_ibfk_2` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `time` datetime(0) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
