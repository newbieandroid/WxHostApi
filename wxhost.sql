/*
 Navicat Premium Data Transfer

 Source Server         : 129.204.112.251
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : 129.204.112.251:3306
 Source Schema         : wxhost

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 25/04/2019 14:49:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `state` int(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (1, 'http://www.olanboa.com/img/home/banner_1.png', 0);
INSERT INTO `banner` VALUES (2, 'http://www.olanboa.com/img/home/banner_2.png', 0);
INSERT INTO `banner` VALUES (3, 'http://www.olanboa.com/img/home/banner_3.jpg', 0);
INSERT INTO `banner` VALUES (4, 'http://www.olanboa.com/img/home/banner_4.jpg', 0);

-- ----------------------------
-- Table structure for bannerInfo
-- ----------------------------
DROP TABLE IF EXISTS `bannerInfo`;
CREATE TABLE `bannerInfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgPath` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `bannerId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bannerInfo
-- ----------------------------
INSERT INTO `bannerInfo` VALUES (1, 'http://www.olanboa.com/img/home/banner_1_content.jpg', 1);
INSERT INTO `bannerInfo` VALUES (2, 'http://www.olanboa.com/img/home/banner_2_content.jpg', 2);
INSERT INTO `bannerInfo` VALUES (3, 'http://www.olanboa.com/img/home/banner_3.jpg', 3);
INSERT INTO `bannerInfo` VALUES (4, 'http://www.olanboa.com/img/home/banner_3_1.png', 3);
INSERT INTO `bannerInfo` VALUES (5, 'http://www.olanboa.com/img/home/banner_3_2.jpg', 3);
INSERT INTO `bannerInfo` VALUES (6, 'http://www.olanboa.com/img/home/banner_3_2.jpg', 3);
INSERT INTO `bannerInfo` VALUES (7, 'http://www.olanboa.com/img/home/banner_3_3.png', 3);
INSERT INTO `bannerInfo` VALUES (8, 'http://www.olanboa.com/img/home/banner_3_4.png', 3);
INSERT INTO `bannerInfo` VALUES (9, 'http://www.olanboa.com/img/home/banner_3_5.png', 3);
INSERT INTO `bannerInfo` VALUES (10, 'http://www.olanboa.com/img/home/banner_3_6.png', 3);
INSERT INTO `bannerInfo` VALUES (11, 'http://www.olanboa.com/img/home/banner_3_7.png', 3);
INSERT INTO `bannerInfo` VALUES (12, 'http://www.olanboa.com/img/home/banner_3_8.png', 3);
INSERT INTO `bannerInfo` VALUES (13, 'http://www.olanboa.com/img/home/banner_3_9.png', 3);
INSERT INTO `bannerInfo` VALUES (14, 'http://www.olanboa.com/img/home/banner_3_10.png', 3);
INSERT INTO `bannerInfo` VALUES (15, 'http://www.olanboa.com/img/home/banner_3_11.png', 3);
INSERT INTO `bannerInfo` VALUES (16, 'http://www.olanboa.com/img/home/banner_3_12.png', 3);
INSERT INTO `bannerInfo` VALUES (17, 'http://www.olanboa.com/img/home/banner_3_13.png', 3);
INSERT INTO `bannerInfo` VALUES (18, 'http://www.olanboa.com/img/home/banner_3_14.png', 3);
INSERT INTO `bannerInfo` VALUES (19, 'http://www.olanboa.com/img/home/banner_3_15.png', 3);
INSERT INTO `bannerInfo` VALUES (20, 'http://www.olanboa.com/img/home/banner_3_16.png', 3);
INSERT INTO `bannerInfo` VALUES (21, 'http://www.olanboa.com/img/home/banner_3_17.png', 3);
INSERT INTO `bannerInfo` VALUES (22, 'http://www.olanboa.com/img/home/banner_3_18.png', 3);
INSERT INTO `bannerInfo` VALUES (23, 'http://www.olanboa.com/img/home/banner_3_19.png', 3);
INSERT INTO `bannerInfo` VALUES (24, 'http://www.olanboa.com/img/home/banner_3_20.png', 3);
INSERT INTO `bannerInfo` VALUES (25, 'http://www.olanboa.com/img/home/banner_4_1.jpg', 4);
INSERT INTO `bannerInfo` VALUES (26, 'http://www.olanboa.com/img/home/banner_4_2.jpg', 4);
INSERT INTO `bannerInfo` VALUES (27, 'http://www.olanboa.com/img/home/banner_4_3.jpg', 4);
INSERT INTO `bannerInfo` VALUES (28, 'http://www.olanboa.com/img/home/banner_4_4.jpg', 4);
INSERT INTO `bannerInfo` VALUES (29, 'http://www.olanboa.com/img/home/banner_4_5.jpg', 4);
INSERT INTO `bannerInfo` VALUES (30, 'http://www.olanboa.com/img/home/banner_4_6.jpg', 4);

-- ----------------------------
-- Table structure for devImgs
-- ----------------------------
DROP TABLE IF EXISTS `devImgs`;
CREATE TABLE `devImgs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `devImg` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `devId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 326 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of devImgs
-- ----------------------------
INSERT INTO `devImgs` VALUES (1, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q120111RE49.jpg', 1);
INSERT INTO `devImgs` VALUES (2, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q120111S5G8.jpg', 1);
INSERT INTO `devImgs` VALUES (3, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q12011191Qc.jpg', 1);
INSERT INTO `devImgs` VALUES (4, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q12011192MY.jpg', 1);
INSERT INTO `devImgs` VALUES (5, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q12011193D09.jpg', 1);
INSERT INTO `devImgs` VALUES (6, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q120111949221.jpg', 1);
INSERT INTO `devImgs` VALUES (7, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q120112000238.jpg', 1);
INSERT INTO `devImgs` VALUES (8, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201120122J.jpg', 1);
INSERT INTO `devImgs` VALUES (9, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q120112042164.jpg', 1);
INSERT INTO `devImgs` VALUES (10, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q12011205AA.jpg', 1);
INSERT INTO `devImgs` VALUES (11, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201121213R.jpg', 1);
INSERT INTO `devImgs` VALUES (12, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q120112130X9.jpg', 1);
INSERT INTO `devImgs` VALUES (13, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q120112140464.jpg', 1);
INSERT INTO `devImgs` VALUES (14, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q12011214S36.jpg', 1);
INSERT INTO `devImgs` VALUES (15, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q120112219321.jpg', 1);
INSERT INTO `devImgs` VALUES (16, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114161Z95L.jpg', 2);
INSERT INTO `devImgs` VALUES (17, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114161921a3.jpg', 2);
INSERT INTO `devImgs` VALUES (18, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114161932T3.jpg', 2);
INSERT INTO `devImgs` VALUES (19, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114161942248.jpg', 2);
INSERT INTO `devImgs` VALUES (20, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114161951c3.jpg', 2);
INSERT INTO `devImgs` VALUES (21, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114162002256.jpg', 2);
INSERT INTO `devImgs` VALUES (22, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114162009244.jpg', 2);
INSERT INTO `devImgs` VALUES (23, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q11416201OP.jpg', 2);
INSERT INTO `devImgs` VALUES (24, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114162033c6.jpg', 2);
INSERT INTO `devImgs` VALUES (25, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114162041B4.jpg', 2);
INSERT INTO `devImgs` VALUES (26, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114162049C4.jpg', 2);
INSERT INTO `devImgs` VALUES (27, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q11416205U63.jpg', 2);
INSERT INTO `devImgs` VALUES (28, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q11416210H33.jpg', 2);
INSERT INTO `devImgs` VALUES (29, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q1141621152J.jpg', 2);
INSERT INTO `devImgs` VALUES (30, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114162123914.jpg', 2);
INSERT INTO `devImgs` VALUES (31, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q1141621333J.jpg', 2);
INSERT INTO `devImgs` VALUES (32, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123142429345.jpg', 3);
INSERT INTO `devImgs` VALUES (33, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123142440530.jpg', 3);
INSERT INTO `devImgs` VALUES (34, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q12314244TG.jpg', 3);
INSERT INTO `devImgs` VALUES (35, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q1231425012C.jpg', 3);
INSERT INTO `devImgs` VALUES (36, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123142509109.jpg', 3);
INSERT INTO `devImgs` VALUES (37, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q12314254X45.jpg', 3);
INSERT INTO `devImgs` VALUES (38, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q1231425544E.jpg', 3);
INSERT INTO `devImgs` VALUES (39, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123142601912.jpg', 3);
INSERT INTO `devImgs` VALUES (40, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q12314260W13.jpg', 3);
INSERT INTO `devImgs` VALUES (41, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q1231426162H.jpg', 3);
INSERT INTO `devImgs` VALUES (42, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123142625345.jpg', 3);
INSERT INTO `devImgs` VALUES (43, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123142633110.jpg', 3);
INSERT INTO `devImgs` VALUES (44, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123142A1412.jpg', 3);
INSERT INTO `devImgs` VALUES (45, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123142F0K3.jpg', 3);
INSERT INTO `devImgs` VALUES (46, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123142G0S9.jpg', 3);
INSERT INTO `devImgs` VALUES (47, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201620394V.jpg', 4);
INSERT INTO `devImgs` VALUES (48, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201620501B.jpg', 4);
INSERT INTO `devImgs` VALUES (49, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q120162100D9.jpg', 4);
INSERT INTO `devImgs` VALUES (50, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q12016210Q51.jpg', 4);
INSERT INTO `devImgs` VALUES (51, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q12016211D55.jpg', 4);
INSERT INTO `devImgs` VALUES (52, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q120162124594.jpg', 4);
INSERT INTO `devImgs` VALUES (53, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q120162132407.jpg', 4);
INSERT INTO `devImgs` VALUES (54, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q12016213bO.jpg', 4);
INSERT INTO `devImgs` VALUES (55, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q120162155492.jpg', 4);
INSERT INTO `devImgs` VALUES (56, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q120162202949.jpg', 4);
INSERT INTO `devImgs` VALUES (57, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q120162219236.jpg', 4);
INSERT INTO `devImgs` VALUES (58, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q12016222CN.jpg', 4);
INSERT INTO `devImgs` VALUES (59, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q120162234512.jpg', 4);
INSERT INTO `devImgs` VALUES (60, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q120162250449.jpg', 4);
INSERT INTO `devImgs` VALUES (61, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q12016225G92.jpg', 4);
INSERT INTO `devImgs` VALUES (62, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q12016230XH.jpg', 4);
INSERT INTO `devImgs` VALUES (63, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q12016231G46.jpg', 4);
INSERT INTO `devImgs` VALUES (64, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q12016231G46.jpg', 4);
INSERT INTO `devImgs` VALUES (65, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q12016232A08.jpg', 4);
INSERT INTO `devImgs` VALUES (66, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q121104104K2.jpg', 5);
INSERT INTO `devImgs` VALUES (67, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q121104115G8.jpg', 5);
INSERT INTO `devImgs` VALUES (68, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q1211041222G.jpg', 5);
INSERT INTO `devImgs` VALUES (69, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q121104131S8.jpg', 5);
INSERT INTO `devImgs` VALUES (70, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q121104139491.jpg', 5);
INSERT INTO `devImgs` VALUES (71, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q12110414NG.jpg', 5);
INSERT INTO `devImgs` VALUES (72, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q121104154J8.jpg', 5);
INSERT INTO `devImgs` VALUES (73, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q121104203M9.jpg', 5);
INSERT INTO `devImgs` VALUES (74, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q1211042101W.jpg', 5);
INSERT INTO `devImgs` VALUES (75, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q121104216362.jpg', 5);
INSERT INTO `devImgs` VALUES (76, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q121104225552.jpg', 5);
INSERT INTO `devImgs` VALUES (77, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q121104231H5.jpg', 5);
INSERT INTO `devImgs` VALUES (78, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q1211042394L.jpg', 5);
INSERT INTO `devImgs` VALUES (79, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q12315592GD.jpg', 6);
INSERT INTO `devImgs` VALUES (80, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q1231559344T.jpg', 6);
INSERT INTO `devImgs` VALUES (81, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123155942930.jpg', 6);
INSERT INTO `devImgs` VALUES (82, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123155952M3.jpg', 6);
INSERT INTO `devImgs` VALUES (83, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123160001C2.jpg', 6);
INSERT INTO `devImgs` VALUES (84, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q12316000SO.jpg', 6);
INSERT INTO `devImgs` VALUES (85, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123160013L1.jpg', 6);
INSERT INTO `devImgs` VALUES (86, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123160020M1.jpg', 6);
INSERT INTO `devImgs` VALUES (87, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q212152330H1.jpg', 7);
INSERT INTO `devImgs` VALUES (88, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q21215233K92.jpg', 7);
INSERT INTO `devImgs` VALUES (89, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q212152344411.jpg', 7);
INSERT INTO `devImgs` VALUES (90, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q2121523491A.jpg', 7);
INSERT INTO `devImgs` VALUES (91, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q21212032JW.jpg', 8);
INSERT INTO `devImgs` VALUES (92, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q212120100231.jpg', 8);
INSERT INTO `devImgs` VALUES (93, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q21212010E59.jpg', 8);
INSERT INTO `devImgs` VALUES (94, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q212120114516.jpg', 8);
INSERT INTO `devImgs` VALUES (95, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q212120121261.jpg', 8);
INSERT INTO `devImgs` VALUES (96, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q21211355Y12.jpg', 9);
INSERT INTO `devImgs` VALUES (97, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q212113611922.jpg', 9);
INSERT INTO `devImgs` VALUES (98, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q2121136211C.jpg', 9);
INSERT INTO `devImgs` VALUES (99, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q212113630461.jpg', 9);
INSERT INTO `devImgs` VALUES (100, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q212113639344.jpg', 9);
INSERT INTO `devImgs` VALUES (101, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q212113F2648.jpg', 9);
INSERT INTO `devImgs` VALUES (102, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q212113G0b6.jpg', 9);
INSERT INTO `devImgs` VALUES (103, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q212112132352.jpg', 10);
INSERT INTO `devImgs` VALUES (104, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q212112141615.jpg', 10);
INSERT INTO `devImgs` VALUES (105, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q21211214RQ.jpg', 10);
INSERT INTO `devImgs` VALUES (106, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q212112210M8.jpg', 10);
INSERT INTO `devImgs` VALUES (107, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q212112224O4.jpg', 10);
INSERT INTO `devImgs` VALUES (108, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q212112234430.jpg', 10);
INSERT INTO `devImgs` VALUES (109, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q2121122414B.jpg', 10);
INSERT INTO `devImgs` VALUES (110, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q21211224U12.jpg', 10);
INSERT INTO `devImgs` VALUES (111, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q2121122541b.jpg', 10);
INSERT INTO `devImgs` VALUES (112, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q212112302G6.jpg', 10);
INSERT INTO `devImgs` VALUES (113, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q212112309195.jpg', 10);
INSERT INTO `devImgs` VALUES (114, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q212112316114.jpg', 10);
INSERT INTO `devImgs` VALUES (115, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q2121123311C.jpg', 10);
INSERT INTO `devImgs` VALUES (116, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q212112341J2.jpg', 10);
INSERT INTO `devImgs` VALUES (117, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q2121123542c.jpg', 10);
INSERT INTO `devImgs` VALUES (118, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q212112403Z9.jpg', 10);
INSERT INTO `devImgs` VALUES (119, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q212112410596.jpg', 10);
INSERT INTO `devImgs` VALUES (120, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q21211241T25.jpg', 10);
INSERT INTO `devImgs` VALUES (121, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q212112441126.jpg', 10);
INSERT INTO `devImgs` VALUES (122, 'http://shop.olanboa.com/uploads/allimg/181212/1-1Q2121124545D.jpg', 10);
INSERT INTO `devImgs` VALUES (123, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201F02N62.jpg', 11);
INSERT INTO `devImgs` VALUES (124, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201F03V34.jpg', 11);
INSERT INTO `devImgs` VALUES (125, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201F04AF.jpg', 11);
INSERT INTO `devImgs` VALUES (126, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201F053U6.jpg', 11);
INSERT INTO `devImgs` VALUES (127, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201F1014a.jpg', 11);
INSERT INTO `devImgs` VALUES (128, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201F111c6.jpg', 11);
INSERT INTO `devImgs` VALUES (129, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201F11W05.jpg', 11);
INSERT INTO `devImgs` VALUES (130, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201F125133.jpg', 11);
INSERT INTO `devImgs` VALUES (131, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201F133627.jpg', 11);
INSERT INTO `devImgs` VALUES (132, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201F141K8.jpg', 11);
INSERT INTO `devImgs` VALUES (133, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q1231609342P.jpg', 12);
INSERT INTO `devImgs` VALUES (134, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q1231609431Q.jpg', 12);
INSERT INTO `devImgs` VALUES (135, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123160950127.jpg', 12);
INSERT INTO `devImgs` VALUES (136, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123161000603.jpg', 12);
INSERT INTO `devImgs` VALUES (137, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q12316100U33.jpg', 12);
INSERT INTO `devImgs` VALUES (138, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123161014608.jpg', 12);
INSERT INTO `devImgs` VALUES (139, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123161020H3.jpg', 12);
INSERT INTO `devImgs` VALUES (140, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q12316102GY.jpg', 12);
INSERT INTO `devImgs` VALUES (141, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114145109640.jpg', 13);
INSERT INTO `devImgs` VALUES (142, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114145155435.jpg', 13);
INSERT INTO `devImgs` VALUES (143, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114145219442.jpg', 13);
INSERT INTO `devImgs` VALUES (144, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q1141452343G.jpg', 13);
INSERT INTO `devImgs` VALUES (145, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114145246410.jpg', 13);
INSERT INTO `devImgs` VALUES (146, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q1141453044P.jpg', 13);
INSERT INTO `devImgs` VALUES (147, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q11414531M31.jpg', 13);
INSERT INTO `devImgs` VALUES (148, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114145330512.jpg', 13);
INSERT INTO `devImgs` VALUES (149, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114145341424.jpg', 13);
INSERT INTO `devImgs` VALUES (150, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114145352556.jpg', 13);
INSERT INTO `devImgs` VALUES (151, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q1141454049D.jpg', 13);
INSERT INTO `devImgs` VALUES (152, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114145415W7.jpg', 13);
INSERT INTO `devImgs` VALUES (153, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q1141454341V.jpg', 13);
INSERT INTO `devImgs` VALUES (154, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114145445411.jpg', 13);
INSERT INTO `devImgs` VALUES (155, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114145456263.jpg', 13);
INSERT INTO `devImgs` VALUES (156, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q11414550O53.jpg', 13);
INSERT INTO `devImgs` VALUES (157, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114145521P8.jpg', 13);
INSERT INTO `devImgs` VALUES (158, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q11414553GG.jpg', 13);
INSERT INTO `devImgs` VALUES (159, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q11414554U34.jpg', 13);
INSERT INTO `devImgs` VALUES (160, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114145603421.jpg', 13);
INSERT INTO `devImgs` VALUES (161, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q11414561L64.jpg', 13);
INSERT INTO `devImgs` VALUES (162, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q1141456325F.jpg', 13);
INSERT INTO `devImgs` VALUES (163, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q11414564B38.jpg', 13);
INSERT INTO `devImgs` VALUES (164, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114145AD09.jpg', 13);
INSERT INTO `devImgs` VALUES (165, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114145FXG.jpg', 13);
INSERT INTO `devImgs` VALUES (166, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q11415105R06.jpg', 14);
INSERT INTO `devImgs` VALUES (167, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114151112927.jpg', 14);
INSERT INTO `devImgs` VALUES (168, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q11415112RD.jpg', 14);
INSERT INTO `devImgs` VALUES (169, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q11415113WY.jpg', 14);
INSERT INTO `devImgs` VALUES (170, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114151150926.jpg', 14);
INSERT INTO `devImgs` VALUES (171, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q1141512012D.jpg', 14);
INSERT INTO `devImgs` VALUES (172, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114151212S5.jpg', 14);
INSERT INTO `devImgs` VALUES (173, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114151224G5.jpg', 14);
INSERT INTO `devImgs` VALUES (174, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114151233X3.jpg', 14);
INSERT INTO `devImgs` VALUES (175, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q1141512433I.jpg', 14);
INSERT INTO `devImgs` VALUES (176, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114151254609.jpg', 14);
INSERT INTO `devImgs` VALUES (177, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114151314J4.jpg', 14);
INSERT INTO `devImgs` VALUES (178, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114151324C0.jpg', 14);
INSERT INTO `devImgs` VALUES (179, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114151341U2.jpg', 14);
INSERT INTO `devImgs` VALUES (180, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114151351618.jpg', 14);
INSERT INTO `devImgs` VALUES (181, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114151401119.jpg', 14);
INSERT INTO `devImgs` VALUES (182, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114151414R8.jpg', 14);
INSERT INTO `devImgs` VALUES (183, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114151426102.jpg', 14);
INSERT INTO `devImgs` VALUES (184, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q11415143HR.jpg', 14);
INSERT INTO `devImgs` VALUES (185, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114151451243.jpg', 14);
INSERT INTO `devImgs` VALUES (186, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q11415150L07.jpg', 14);
INSERT INTO `devImgs` VALUES (187, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q11415151X00.jpg', 14);
INSERT INTO `devImgs` VALUES (188, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114151531433.jpg', 14);
INSERT INTO `devImgs` VALUES (189, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114162521K8.jpg', 15);
INSERT INTO `devImgs` VALUES (190, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114162530534.jpg', 15);
INSERT INTO `devImgs` VALUES (191, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114162541410.jpg', 15);
INSERT INTO `devImgs` VALUES (192, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114162552151.jpg', 15);
INSERT INTO `devImgs` VALUES (193, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114162603956.jpg', 15);
INSERT INTO `devImgs` VALUES (194, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114162620347.jpg', 15);
INSERT INTO `devImgs` VALUES (195, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q11416262H34.jpg', 15);
INSERT INTO `devImgs` VALUES (196, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114162634937.jpg', 15);
INSERT INTO `devImgs` VALUES (197, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114162642a4.jpg', 15);
INSERT INTO `devImgs` VALUES (198, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q11416264c53.jpg', 15);
INSERT INTO `devImgs` VALUES (199, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114162AN07.jpg', 15);
INSERT INTO `devImgs` VALUES (200, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114162F4K7.jpg', 15);
INSERT INTO `devImgs` VALUES (201, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114162G3T1.jpg', 15);
INSERT INTO `devImgs` VALUES (202, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114162H0493.jpg', 15);
INSERT INTO `devImgs` VALUES (203, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114162HWb.jpg', 15);
INSERT INTO `devImgs` VALUES (204, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114162IE30.jpg', 15);
INSERT INTO `devImgs` VALUES (205, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114162JM29.jpg', 15);
INSERT INTO `devImgs` VALUES (206, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114162K5E8.jpg', 15);
INSERT INTO `devImgs` VALUES (207, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114162P4610.jpg', 15);
INSERT INTO `devImgs` VALUES (208, 'http://shop.olanboa.com/uploads/allimg/181114/1-1Q114162Q12A.jpg', 15);
INSERT INTO `devImgs` VALUES (209, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q121141935562.jpg', 16);
INSERT INTO `devImgs` VALUES (210, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q1211419493c.jpg', 16);
INSERT INTO `devImgs` VALUES (211, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q12114195XP.jpg', 16);
INSERT INTO `devImgs` VALUES (212, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q121142005517.jpg', 16);
INSERT INTO `devImgs` VALUES (213, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q121142011C3.jpg', 16);
INSERT INTO `devImgs` VALUES (214, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q12114201X00.jpg', 16);
INSERT INTO `devImgs` VALUES (215, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q121142024135.jpg', 16);
INSERT INTO `devImgs` VALUES (216, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q121142032E9.jpg', 16);
INSERT INTO `devImgs` VALUES (217, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q121142039248.jpg', 16);
INSERT INTO `devImgs` VALUES (218, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q121142045139.jpg', 16);
INSERT INTO `devImgs` VALUES (219, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q121142055J4.jpg', 16);
INSERT INTO `devImgs` VALUES (220, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q121142104G9.jpg', 16);
INSERT INTO `devImgs` VALUES (221, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q121142113M1.jpg', 16);
INSERT INTO `devImgs` VALUES (222, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q121142121Z2.jpg', 16);
INSERT INTO `devImgs` VALUES (223, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q12114212S53.jpg', 16);
INSERT INTO `devImgs` VALUES (224, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q1211421361Q.jpg', 16);
INSERT INTO `devImgs` VALUES (225, 'http://shop.olanboa.com/uploads/allimg/181121/1-1Q121142144T1.jpg', 16);
INSERT INTO `devImgs` VALUES (226, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q12311320R45.jpg', 17);
INSERT INTO `devImgs` VALUES (227, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q12311321I40.jpg', 17);
INSERT INTO `devImgs` VALUES (228, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q1231132252S.jpg', 17);
INSERT INTO `devImgs` VALUES (229, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q1231132331A.jpg', 17);
INSERT INTO `devImgs` VALUES (230, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q1231132423M.jpg', 17);
INSERT INTO `devImgs` VALUES (231, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123113249357.jpg', 17);
INSERT INTO `devImgs` VALUES (232, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q12311325N51.jpg', 17);
INSERT INTO `devImgs` VALUES (233, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123113303Y7.jpg', 17);
INSERT INTO `devImgs` VALUES (234, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123113314941.jpg', 17);
INSERT INTO `devImgs` VALUES (235, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123113321314.jpg', 17);
INSERT INTO `devImgs` VALUES (236, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q1231133302R.jpg', 17);
INSERT INTO `devImgs` VALUES (237, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123113340457.jpg', 17);
INSERT INTO `devImgs` VALUES (238, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123113349453.jpg', 17);
INSERT INTO `devImgs` VALUES (239, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q12311335Ub.jpg', 17);
INSERT INTO `devImgs` VALUES (240, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q12311340K36.jpg', 17);
INSERT INTO `devImgs` VALUES (241, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q12311341Q49.jpg', 17);
INSERT INTO `devImgs` VALUES (242, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123113459200.jpg', 17);
INSERT INTO `devImgs` VALUES (243, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q12311350WI.jpg', 17);
INSERT INTO `devImgs` VALUES (244, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q12311351QW.jpg', 17);
INSERT INTO `devImgs` VALUES (245, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123113525910.jpg', 17);
INSERT INTO `devImgs` VALUES (246, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123113533W2.jpg', 17);
INSERT INTO `devImgs` VALUES (247, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123120453I5.jpg', 18);
INSERT INTO `devImgs` VALUES (248, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q12312061Da.jpg', 18);
INSERT INTO `devImgs` VALUES (249, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123120624236.jpg', 18);
INSERT INTO `devImgs` VALUES (250, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123120631123.jpg', 18);
INSERT INTO `devImgs` VALUES (251, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q12312063T62.jpg', 18);
INSERT INTO `devImgs` VALUES (252, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123120646462.jpg', 18);
INSERT INTO `devImgs` VALUES (253, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123120A2234.jpg', 18);
INSERT INTO `devImgs` VALUES (254, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123120AT93.jpg', 18);
INSERT INTO `devImgs` VALUES (255, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123120F4Y0.jpg', 18);
INSERT INTO `devImgs` VALUES (256, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123120G1V8.jpg', 18);
INSERT INTO `devImgs` VALUES (257, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123120GR20.jpg', 18);
INSERT INTO `devImgs` VALUES (258, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123120HT60.jpg', 18);
INSERT INTO `devImgs` VALUES (259, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123120I5J8.jpg', 18);
INSERT INTO `devImgs` VALUES (260, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123120J4496.jpg', 18);
INSERT INTO `devImgs` VALUES (261, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123120K4150.jpg', 18);
INSERT INTO `devImgs` VALUES (262, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123120P1561.jpg', 18);
INSERT INTO `devImgs` VALUES (263, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123120PV43.jpg', 18);
INSERT INTO `devImgs` VALUES (264, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123120Q6422.jpg', 18);
INSERT INTO `devImgs` VALUES (265, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123120R3513.jpg', 18);
INSERT INTO `devImgs` VALUES (266, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123120S1134.jpg', 18);
INSERT INTO `devImgs` VALUES (267, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123120ST92.jpg', 18);
INSERT INTO `devImgs` VALUES (268, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q1231602404N.jpg', 19);
INSERT INTO `devImgs` VALUES (269, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q12316040L36.jpg', 19);
INSERT INTO `devImgs` VALUES (270, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123160424254.jpg', 19);
INSERT INTO `devImgs` VALUES (271, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123160441938.jpg', 19);
INSERT INTO `devImgs` VALUES (272, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q12316044S53.jpg', 19);
INSERT INTO `devImgs` VALUES (273, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123160455110.jpg', 19);
INSERT INTO `devImgs` VALUES (274, 'http://shop.olanboa.com/uploads/allimg/181211/1-1Q21114554TP.jpg', 20);
INSERT INTO `devImgs` VALUES (275, 'http://shop.olanboa.com/uploads/allimg/181211/1-1Q211145555Q8.jpg', 20);
INSERT INTO `devImgs` VALUES (276, 'http://shop.olanboa.com/uploads/allimg/181211/1-1Q2111456033F.jpg', 20);
INSERT INTO `devImgs` VALUES (277, 'http://shop.olanboa.com/uploads/allimg/181211/1-1Q2111456093b.jpg', 20);
INSERT INTO `devImgs` VALUES (278, 'http://shop.olanboa.com/uploads/allimg/181211/1-1Q21114561B03.jpg', 20);
INSERT INTO `devImgs` VALUES (279, 'http://shop.olanboa.com/uploads/allimg/181211/1-1Q2111456235W.jpg', 20);
INSERT INTO `devImgs` VALUES (280, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201H214394.jpg', 21);
INSERT INTO `devImgs` VALUES (281, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201H224G1.jpg', 21);
INSERT INTO `devImgs` VALUES (282, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201H335360.jpg', 21);
INSERT INTO `devImgs` VALUES (283, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201H345b2.jpg', 21);
INSERT INTO `devImgs` VALUES (284, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201H355338.jpg', 21);
INSERT INTO `devImgs` VALUES (285, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201H4034C.jpg', 21);
INSERT INTO `devImgs` VALUES (286, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201H4105W.jpg', 21);
INSERT INTO `devImgs` VALUES (287, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201H41L17.jpg', 21);
INSERT INTO `devImgs` VALUES (288, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201H42D45.jpg', 21);
INSERT INTO `devImgs` VALUES (289, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201H43R25.jpg', 21);
INSERT INTO `devImgs` VALUES (290, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201H44T31.jpg', 21);
INSERT INTO `devImgs` VALUES (291, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201H456151.jpg', 21);
INSERT INTO `devImgs` VALUES (292, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201H504635.jpg', 21);
INSERT INTO `devImgs` VALUES (293, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201H51R00.jpg', 21);
INSERT INTO `devImgs` VALUES (294, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201H63R37.jpg', 21);
INSERT INTO `devImgs` VALUES (295, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201H64A62.jpg', 21);
INSERT INTO `devImgs` VALUES (296, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201HF0432.jpg', 21);
INSERT INTO `devImgs` VALUES (297, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201HFX46.jpg', 21);
INSERT INTO `devImgs` VALUES (298, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201HGQ20.jpg', 21);
INSERT INTO `devImgs` VALUES (299, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201HHH47.jpg', 21);
INSERT INTO `devImgs` VALUES (300, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201HI4447.jpg', 21);
INSERT INTO `devImgs` VALUES (301, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201HJ54N.jpg', 21);
INSERT INTO `devImgs` VALUES (302, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201HP01D.jpg', 21);
INSERT INTO `devImgs` VALUES (303, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201HP9152.jpg', 21);
INSERT INTO `devImgs` VALUES (304, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201HQG29.jpg', 21);
INSERT INTO `devImgs` VALUES (305, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201HR4645.jpg', 21);
INSERT INTO `devImgs` VALUES (306, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201HS1602.jpg', 21);
INSERT INTO `devImgs` VALUES (307, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201HSN17.jpg', 21);
INSERT INTO `devImgs` VALUES (308, 'http://shop.olanboa.com/uploads/allimg/181120/1-1Q1201HT5319.jpg', 21);
INSERT INTO `devImgs` VALUES (309, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123143921330.jpg', 22);
INSERT INTO `devImgs` VALUES (310, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123143931533.jpg', 22);
INSERT INTO `devImgs` VALUES (311, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q12314393c38.jpg', 22);
INSERT INTO `devImgs` VALUES (312, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123143949B4.jpg', 22);
INSERT INTO `devImgs` VALUES (313, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q12314395R05.jpg', 22);
INSERT INTO `devImgs` VALUES (314, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q1231440124X.jpg', 22);
INSERT INTO `devImgs` VALUES (315, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123144024C3.jpg', 22);
INSERT INTO `devImgs` VALUES (316, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123144030962.jpg', 22);
INSERT INTO `devImgs` VALUES (317, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q12314403O17.jpg', 22);
INSERT INTO `devImgs` VALUES (318, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q12314404V13.jpg', 22);
INSERT INTO `devImgs` VALUES (319, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q1231441003Z.jpg', 22);
INSERT INTO `devImgs` VALUES (320, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123144111620.jpg', 22);
INSERT INTO `devImgs` VALUES (321, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123144120101.jpg', 22);
INSERT INTO `devImgs` VALUES (322, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q12314412QK.jpg', 22);
INSERT INTO `devImgs` VALUES (323, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q12314413A06.jpg', 22);
INSERT INTO `devImgs` VALUES (324, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q12314414O58.jpg', 22);
INSERT INTO `devImgs` VALUES (325, 'http://shop.olanboa.com/uploads/allimg/181123/1-1Q123144154354.jpg', 22);

-- ----------------------------
-- Table structure for devType
-- ----------------------------
DROP TABLE IF EXISTS `devType`;
CREATE TABLE `devType`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `devTypeName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of devType
-- ----------------------------
INSERT INTO `devType` VALUES (1, '智能控制系统', '');
INSERT INTO `devType` VALUES (2, '智能照明系统', '');
INSERT INTO `devType` VALUES (3, '智能安防系统', '');
INSERT INTO `devType` VALUES (4, '门窗遮阳系统', '');

-- ----------------------------
-- Table structure for devs
-- ----------------------------
DROP TABLE IF EXISTS `devs`;
CREATE TABLE `devs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `devTypeId` int(11) NULL DEFAULT NULL,
  `devName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `devIcon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `price` decimal(10, 2) NULL DEFAULT 0.00,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '暂无商品介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of devs
-- ----------------------------
INSERT INTO `devs` VALUES (1, 1, '超级管家智能机器人', 'http://shop.olanboa.com/uploads/181122/1-1Q122110520309.jpg', 0.00, '暂无商品介绍');
INSERT INTO `devs` VALUES (2, 1, '智能扫地机器人', 'http://shop.olanboa.com/uploads/181122/1-1Q122102149464.jpg', 0.00, '暂无商品介绍');
INSERT INTO `devs` VALUES (3, 1, '小方智能遥控器', 'http://shop.olanboa.com/uploads/181123/1-1Q123142345336.png', 0.00, '暂无商品介绍');
INSERT INTO `devs` VALUES (4, 1, 'WiFi智能插座', 'http://shop.olanboa.com/uploads/181122/1-1Q122104439D7.jpg', 0.00, '暂无商品介绍');
INSERT INTO `devs` VALUES (5, 1, 'WiFi智能遥控器', 'http://shop.olanboa.com/uploads/181123/1-1Q123145QL39.png', 0.00, '暂无商品介绍');
INSERT INTO `devs` VALUES (6, 1, 'mini网关', 'http://shop.olanboa.com/uploads/181123/1-1Q123155P2616.png', 0.00, '暂无商品介绍');
INSERT INTO `devs` VALUES (7, 2, '随意贴面板', 'http://shop.olanboa.com/uploads/181212/1-1Q212152303649.jpg', 0.00, '暂无商品介绍');
INSERT INTO `devs` VALUES (8, 2, '极光开关面板', 'http://shop.olanboa.com/uploads/181212/1-1Q2121200094H.jpg', 0.00, '暂无商品介绍');
INSERT INTO `devs` VALUES (9, 2, '朗锐开关', 'http://shop.olanboa.com/uploads/181212/1-1Q212113P3D0.jpg', 0.00, '暂无商品介绍');
INSERT INTO `devs` VALUES (10, 2, 'TOUCH CLASSIC智能开关', 'http://shop.olanboa.com/uploads/181212/1-1Q21211204G55.jpg', 0.00, '暂无商品介绍');
INSERT INTO `devs` VALUES (11, 2, '极锐系列智能zigbee开关面板', 'http://shop.olanboa.com/uploads/181122/1-1Q12210440Ib.jpg', 0.00, '暂无商品介绍');
INSERT INTO `devs` VALUES (12, 3, '门窗感应器', 'http://shop.olanboa.com/uploads/181123/1-1Q123160Q02K.png', 0.00, '暂无商品介绍');
INSERT INTO `devs` VALUES (13, 3, '人脸识别智能锁', 'http://shop.olanboa.com/uploads/181122/1-1Q122110R9C1.png', 0.00, '暂无商品介绍');
INSERT INTO `devs` VALUES (14, 3, '全自动智能指纹锁', 'http://shop.olanboa.com/uploads/181122/1-1Q122110J0O2.png', 0.00, '暂无商品介绍');
INSERT INTO `devs` VALUES (15, 3, '智能指纹锁', 'http://shop.olanboa.com/uploads/181122/1-1Q122110630461.png', 0.00, '暂无商品介绍');
INSERT INTO `devs` VALUES (16, 3, '小欧智能摄像头', 'http://shop.olanboa.com/uploads/181122/1-1Q122104339C2.jpg', 0.00, '暂无商品介绍');
INSERT INTO `devs` VALUES (17, 3, '智能一氧化碳监测仪', 'http://shop.olanboa.com/uploads/181123/1-1Q123113133N2.png', 0.00, '暂无商品介绍');
INSERT INTO `devs` VALUES (18, 3, '多功能智能锁', 'http://shop.olanboa.com/uploads/181123/1-1Q12312035a19.png', 0.00, '暂无商品介绍');
INSERT INTO `devs` VALUES (19, 3, '人体感应器', 'http://shop.olanboa.com/uploads/181123/1-1Q123160106339.png', 0.00, '暂无商品介绍');
INSERT INTO `devs` VALUES (20, 4, '智能晾衣架', 'http://shop.olanboa.com/uploads/181211/1-1Q21114323Wb.jpg', 0.00, '暂无商品介绍');
INSERT INTO `devs` VALUES (21, 4, '智能窗帘电机套装', 'http://shop.olanboa.com/uploads/181122/1-1Q12211060G37.png', 0.00, '暂无商品介绍');
INSERT INTO `devs` VALUES (22, 4, '电动窗帘套装', 'http://shop.olanboa.com/uploads/181123/1-1Q12314534OX.png', 0.00, '暂无商品介绍');

-- ----------------------------
-- Table structure for example
-- ----------------------------
DROP TABLE IF EXISTS `example`;
CREATE TABLE `example`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `time` bigint(20) NULL DEFAULT NULL,
  `shopId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of example
-- ----------------------------
INSERT INTO `example` VALUES (1, 'http://www.olanboa.com/img/example/example_1.jpg', '', NULL, 1);
INSERT INTO `example` VALUES (2, 'http://www.olanboa.com/img/example/example_2.jpg', '', NULL, 1);
INSERT INTO `example` VALUES (3, 'http://www.olanboa.com/img/example/example_3.png', '', NULL, 1);
INSERT INTO `example` VALUES (4, 'http://www.olanboa.com/img/example/example_4.jpg', '', NULL, 1);
INSERT INTO `example` VALUES (5, 'http://www.olanboa.com/img/example/example_5.jpg', '', NULL, 1);
INSERT INTO `example` VALUES (6, 'http://www.olanboa.com/img/example/example_6.jpg', '', NULL, 1);
INSERT INTO `example` VALUES (7, 'http://www.olanboa.com/img/example/example_7.jpg', '', NULL, 1);
INSERT INTO `example` VALUES (8, 'http://www.olanboa.com/img/example/example_8.png', '', NULL, 1);
INSERT INTO `example` VALUES (9, 'http://www.olanboa.com/img/example/example_9.png', '', NULL, 1);

-- ----------------------------
-- Table structure for exampleImg
-- ----------------------------
DROP TABLE IF EXISTS `exampleImg`;
CREATE TABLE `exampleImg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `exampleId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exampleImg
-- ----------------------------
INSERT INTO `exampleImg` VALUES (1, 'https://www.olanboa.com/img/example/example_1_content_1.jpg', 1);
INSERT INTO `exampleImg` VALUES (2, 'https://www.olanboa.com/img/example/example_1_content_2.jpg', 1);
INSERT INTO `exampleImg` VALUES (3, 'https://www.olanboa.com/img/example/example_1_content_3.jpg', 1);
INSERT INTO `exampleImg` VALUES (4, 'https://www.olanboa.com/img/example/example_1_content_4.jpg', 1);
INSERT INTO `exampleImg` VALUES (5, 'https://www.olanboa.com/img/example/example_1_content_5.jpg', 1);
INSERT INTO `exampleImg` VALUES (6, 'https://www.olanboa.com/img/example/example_1_content_6.jpg', 1);
INSERT INTO `exampleImg` VALUES (7, 'https://www.olanboa.com/img/example/example_1_content_7.jpg', 1);
INSERT INTO `exampleImg` VALUES (8, 'https://www.olanboa.com/img/example/example_1_content_8.jpg', 1);
INSERT INTO `exampleImg` VALUES (9, 'https://www.olanboa.com/img/example/example_1_content_9.jpg', 1);
INSERT INTO `exampleImg` VALUES (10, 'https://www.olanboa.com/img/example/example_1_content_10.jpg', 1);
INSERT INTO `exampleImg` VALUES (11, 'https://www.olanboa.com/img/example/example_1_content_11.jpg', 1);
INSERT INTO `exampleImg` VALUES (12, 'https://www.olanboa.com/img/example/example_1_content_12.jpg', 1);
INSERT INTO `exampleImg` VALUES (13, 'https://www.olanboa.com/img/example/example_1_content_13.jpg', 1);
INSERT INTO `exampleImg` VALUES (14, 'https://www.olanboa.com/img/example/example_1_content_14.jpg', 1);
INSERT INTO `exampleImg` VALUES (15, 'https://www.olanboa.com/img/example/example_1_content_15.jpg', 1);
INSERT INTO `exampleImg` VALUES (16, 'https://www.olanboa.com/img/example/example_1_content_16.jpg', 1);
INSERT INTO `exampleImg` VALUES (17, 'https://www.olanboa.com/img/example/example_1_content_17.jpg', 1);
INSERT INTO `exampleImg` VALUES (18, 'https://www.olanboa.com/img/example/example_1_content_18.jpg', 1);
INSERT INTO `exampleImg` VALUES (19, 'https://www.olanboa.com/img/example/example_1_content_19.jpg', 1);
INSERT INTO `exampleImg` VALUES (20, 'https://www.olanboa.com/img/example/example_1_content_20.jpg', 1);
INSERT INTO `exampleImg` VALUES (21, 'https://www.olanboa.com/img/example/example_1_content_21.jpg', 1);
INSERT INTO `exampleImg` VALUES (22, 'https://www.olanboa.com/img/example/example_1_content_22.jpg', 1);
INSERT INTO `exampleImg` VALUES (23, 'https://www.olanboa.com/img/example/example_1_content_23.jpg', 1);
INSERT INTO `exampleImg` VALUES (24, 'https://www.olanboa.com/img/example/example_1_content_24.jpg', 1);
INSERT INTO `exampleImg` VALUES (25, 'https://www.olanboa.com/img/example/example_1_content_25.jpg', 1);
INSERT INTO `exampleImg` VALUES (26, 'https://www.olanboa.com/img/example/example_1_content_26.jpg', 1);
INSERT INTO `exampleImg` VALUES (27, 'https://www.olanboa.com/img/example/example_1_content_27.jpg', 1);
INSERT INTO `exampleImg` VALUES (28, 'https://www.olanboa.com/img/example/example_1_content_28.jpg', 1);
INSERT INTO `exampleImg` VALUES (29, 'https://www.olanboa.com/img/example/example_1_content_29.jpg', 1);
INSERT INTO `exampleImg` VALUES (30, 'https://www.olanboa.com/img/example/example_1_content_30.jpg', 1);
INSERT INTO `exampleImg` VALUES (31, 'https://www.olanboa.com/img/example/example_1_content_31.jpg', 1);
INSERT INTO `exampleImg` VALUES (32, 'https://www.olanboa.com/img/example/example_1_content_32.jpg', 1);
INSERT INTO `exampleImg` VALUES (33, 'https://www.olanboa.com/img/example/example_1_content_33.jpg', 1);
INSERT INTO `exampleImg` VALUES (34, 'https://www.olanboa.com/img/example/example_1_content_34.jpg', 1);
INSERT INTO `exampleImg` VALUES (35, 'https://www.olanboa.com/img/example/example_1_content_35.jpg', 1);
INSERT INTO `exampleImg` VALUES (36, 'https://www.olanboa.com/img/example/example_1_content_36.jpg', 1);
INSERT INTO `exampleImg` VALUES (37, 'https://www.olanboa.com/img/example/example_1_content_37.jpg', 1);
INSERT INTO `exampleImg` VALUES (38, 'https://www.olanboa.com/img/example/example_1_content_38.jpg', 1);
INSERT INTO `exampleImg` VALUES (39, 'https://www.olanboa.com/img/example/example_1_content_39.jpg', 1);
INSERT INTO `exampleImg` VALUES (40, 'https://www.olanboa.com/img/example/example_1_content_40.jpg', 1);
INSERT INTO `exampleImg` VALUES (41, 'https://www.olanboa.com/img/example/example_1_content_41.jpg', 1);
INSERT INTO `exampleImg` VALUES (42, 'https://www.olanboa.com/img/example/example_1_content_42.jpg', 1);
INSERT INTO `exampleImg` VALUES (43, 'https://www.olanboa.com/img/example/example_1_content_43.jpg', 1);
INSERT INTO `exampleImg` VALUES (44, 'https://www.olanboa.com/img/example/example_1_content_44.jpg', 1);
INSERT INTO `exampleImg` VALUES (45, 'https://www.olanboa.com/img/example/example_2_content_1.jpg', 2);
INSERT INTO `exampleImg` VALUES (46, 'https://www.olanboa.com/img/example/example_2_content_2.jpg', 2);
INSERT INTO `exampleImg` VALUES (47, 'https://www.olanboa.com/img/example/example_2_content_3.jpg', 2);
INSERT INTO `exampleImg` VALUES (48, 'https://www.olanboa.com/img/example/example_2_content_4.jpg', 2);
INSERT INTO `exampleImg` VALUES (49, 'https://www.olanboa.com/img/example/example_2_content_5.jpg', 2);
INSERT INTO `exampleImg` VALUES (50, 'https://www.olanboa.com/img/example/example_2_content_6.jpg', 2);
INSERT INTO `exampleImg` VALUES (51, 'https://www.olanboa.com/img/example/example_2_content_7.jpg', 2);
INSERT INTO `exampleImg` VALUES (52, 'https://www.olanboa.com/img/example/example_2_content_8.jpg', 2);
INSERT INTO `exampleImg` VALUES (53, 'https://www.olanboa.com/img/example/example_2_content_9.jpg', 2);
INSERT INTO `exampleImg` VALUES (54, 'https://www.olanboa.com/img/example/example_2_content_10.jpg', 2);
INSERT INTO `exampleImg` VALUES (55, 'https://www.olanboa.com/img/example/example_2_content_11.jpg', 2);
INSERT INTO `exampleImg` VALUES (56, 'https://www.olanboa.com/img/example/example_2_content_12.jpg', 2);
INSERT INTO `exampleImg` VALUES (57, 'https://www.olanboa.com/img/example/example_2_content_13.jpg', 2);
INSERT INTO `exampleImg` VALUES (58, 'https://www.olanboa.com/img/example/example_2_content_14.jpg', 2);
INSERT INTO `exampleImg` VALUES (59, 'https://www.olanboa.com/img/example/example_2_content_15.jpg', 2);
INSERT INTO `exampleImg` VALUES (60, 'https://www.olanboa.com/img/example/example_3_content_1.jpg', 3);
INSERT INTO `exampleImg` VALUES (61, 'https://www.olanboa.com/img/example/example_3_content_2.jpg', 3);
INSERT INTO `exampleImg` VALUES (62, 'https://www.olanboa.com/img/example/example_3_content_3.jpg', 3);
INSERT INTO `exampleImg` VALUES (63, 'https://www.olanboa.com/img/example/example_3_content_4.jpg', 3);
INSERT INTO `exampleImg` VALUES (64, 'https://www.olanboa.com/img/example/example_3_content_5.jpg', 3);
INSERT INTO `exampleImg` VALUES (65, 'https://www.olanboa.com/img/example/example_3_content_6.jpg', 3);
INSERT INTO `exampleImg` VALUES (66, 'https://www.olanboa.com/img/example/example_3_content_7.jpg', 3);
INSERT INTO `exampleImg` VALUES (67, 'https://www.olanboa.com/img/example/example_3_content_8.jpg', 3);
INSERT INTO `exampleImg` VALUES (68, 'https://www.olanboa.com/img/example/example_3_content_9.jpg', 3);
INSERT INTO `exampleImg` VALUES (69, 'https://www.olanboa.com/img/example/example_3_content_10.jpg', 3);
INSERT INTO `exampleImg` VALUES (70, 'https://www.olanboa.com/img/example/example_3_content_11.jpg', 3);
INSERT INTO `exampleImg` VALUES (71, 'https://www.olanboa.com/img/example/example_3_content_12.jpg', 3);
INSERT INTO `exampleImg` VALUES (72, 'https://www.olanboa.com/img/example/example_3_content_13.jpg', 3);
INSERT INTO `exampleImg` VALUES (73, 'https://www.olanboa.com/img/example/example_4_content_1.jpg', 4);
INSERT INTO `exampleImg` VALUES (74, 'https://www.olanboa.com/img/example/example_4_content_2.jpg', 4);
INSERT INTO `exampleImg` VALUES (75, 'https://www.olanboa.com/img/example/example_4_content_3.jpg', 4);
INSERT INTO `exampleImg` VALUES (76, 'https://www.olanboa.com/img/example/example_4_content_4.jpg', 4);
INSERT INTO `exampleImg` VALUES (77, 'https://www.olanboa.com/img/example/example_4_content_5.jpg', 4);
INSERT INTO `exampleImg` VALUES (78, 'https://www.olanboa.com/img/example/example_5_content_1.jpg', 5);
INSERT INTO `exampleImg` VALUES (79, 'https://www.olanboa.com/img/example/example_5_content_2.jpg', 5);
INSERT INTO `exampleImg` VALUES (80, 'https://www.olanboa.com/img/example/example_5_content_3.jpg', 5);
INSERT INTO `exampleImg` VALUES (81, 'https://www.olanboa.com/img/example/example_5_content_4.jpg', 5);
INSERT INTO `exampleImg` VALUES (82, 'https://www.olanboa.com/img/example/example_6_content_1.jpg', 6);
INSERT INTO `exampleImg` VALUES (83, 'https://www.olanboa.com/img/example/example_6_content_2.jpg', 6);
INSERT INTO `exampleImg` VALUES (84, 'https://www.olanboa.com/img/example/example_6_content_3.jpg', 6);
INSERT INTO `exampleImg` VALUES (85, 'https://www.olanboa.com/img/example/example_6_content_4.jpg', 6);
INSERT INTO `exampleImg` VALUES (86, 'https://www.olanboa.com/img/example/example_6_content_5.jpg', 6);
INSERT INTO `exampleImg` VALUES (87, 'https://www.olanboa.com/img/example/example_6_content_6.jpg', 6);
INSERT INTO `exampleImg` VALUES (88, 'https://www.olanboa.com/img/example/example_6_content_7.jpg', 6);
INSERT INTO `exampleImg` VALUES (89, 'https://www.olanboa.com/img/example/example_6_content_8.jpg', 6);
INSERT INTO `exampleImg` VALUES (90, 'https://www.olanboa.com/img/example/example_7_content_1.jpg', 7);
INSERT INTO `exampleImg` VALUES (91, 'https://www.olanboa.com/img/example/example_7_content_2.jpg', 7);
INSERT INTO `exampleImg` VALUES (92, 'https://www.olanboa.com/img/example/example_7_content_3.jpg', 7);
INSERT INTO `exampleImg` VALUES (93, 'https://www.olanboa.com/img/example/example_7_content_4.jpg', 7);
INSERT INTO `exampleImg` VALUES (94, 'https://www.olanboa.com/img/example/example_8_content_1.jpg', 8);
INSERT INTO `exampleImg` VALUES (95, 'https://www.olanboa.com/img/example/example_9_content_1.jpg', 9);
INSERT INTO `exampleImg` VALUES (96, 'https://www.olanboa.com/img/example/example_9_content_2.gif', 9);
INSERT INTO `exampleImg` VALUES (97, 'https://www.olanboa.com/img/example/example_9_content_3.jpg', 9);
INSERT INTO `exampleImg` VALUES (98, 'https://www.olanboa.com/img/example/example_9_content_4.jpg', 9);
INSERT INTO `exampleImg` VALUES (99, 'https://www.olanboa.com/img/example/example_9_content_5.gif', 9);
INSERT INTO `exampleImg` VALUES (100, 'https://www.olanboa.com/img/example/example_9_content_6.jpg', 9);

-- ----------------------------
-- Table structure for homeImg
-- ----------------------------
DROP TABLE IF EXISTS `homeImg`;
CREATE TABLE `homeImg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` int(1) NULL DEFAULT 0,
  `path` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of homeImg
-- ----------------------------
INSERT INTO `homeImg` VALUES (1, 0, 'http://www.olanboa.com/img/home/home_1-1.png');
INSERT INTO `homeImg` VALUES (2, 0, 'http://www.olanboa.com/img/home/home_2-1.png');
INSERT INTO `homeImg` VALUES (3, 0, 'http://www.olanboa.com/img/home/home_3-1.png');
INSERT INTO `homeImg` VALUES (4, 0, 'http://www.olanboa.com/img/home/home_4-1.png');
INSERT INTO `homeImg` VALUES (5, 0, 'http://www.olanboa.com/img/home/home_5-1.png');
INSERT INTO `homeImg` VALUES (6, 0, 'http://www.olanboa.com/img/home/home_6-1.png');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `des` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `timeStamp` bigint(20) NULL DEFAULT NULL,
  `state` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (1, '比较积极', '啦啦啦啦', '123456', '就来了辣鸡', 1556155734, 0);

-- ----------------------------
-- Table structure for shopImg
-- ----------------------------
DROP TABLE IF EXISTS `shopImg`;
CREATE TABLE `shopImg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopId` int(11) NULL DEFAULT NULL,
  `img` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shopImg
-- ----------------------------
INSERT INTO `shopImg` VALUES (1, 1, 'http://www.olanboa.com/img/shop/shop_1_1.jpg');
INSERT INTO `shopImg` VALUES (2, 1, 'http://www.olanboa.com/img/shop/shop_1_2.jpg');
INSERT INTO `shopImg` VALUES (3, 1, 'http://www.olanboa.com/img/shop/shop_1_3.jpg');
INSERT INTO `shopImg` VALUES (4, NULL, 'http://www.olanboa.com/img/shop/shop_1_4.jpg');

-- ----------------------------
-- Table structure for shops
-- ----------------------------
DROP TABLE IF EXISTS `shops`;
CREATE TABLE `shops`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `hostid` int(11) NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '当前店铺暂无简介',
  `shopIcon` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shops
-- ----------------------------
INSERT INTO `shops` VALUES (1, '欧朗博-苏宁店', '四川省成都市春熙路苏宁易购二楼', '四川省', 1, '当前店铺暂无简介', 'http://www.olanboa.com/img/shop/shop_1.jpg', 0);
INSERT INTO `shops` VALUES (2, '阳光华苑店', '四川省成都市华府大道一段1175号', '四川省', 2, '当前店铺暂无简介', 'http://www.olanboa.com/img/shop/shop_2.png', 0);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `passowrd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `userTypeId` int(1) NULL DEFAULT NULL,
  `shopId` int(11) NULL DEFAULT NULL,
  `state` int(1) NULL DEFAULT 0,
  `head` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '16654163143', '周梁保', '123456', 1, 1, 0, '');
INSERT INTO `user` VALUES (2, '18910715026', '叶攀', '123456', 1, 1, 0, '');
INSERT INTO `user` VALUES (3, '18910715026', '叶攀', '123456', 1, 1, 0, '');
INSERT INTO `user` VALUES (4, '16654163143', '周梁保', '123456', 1, 1, 0, '');

-- ----------------------------
-- Table structure for userType
-- ----------------------------
DROP TABLE IF EXISTS `userType`;
CREATE TABLE `userType`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userTypeName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userType
-- ----------------------------
INSERT INTO `userType` VALUES (1, '销售');

SET FOREIGN_KEY_CHECKS = 1;
