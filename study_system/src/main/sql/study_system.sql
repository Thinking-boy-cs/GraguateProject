/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : study_system

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2022-04-16 21:08:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dataitem
-- ----------------------------
DROP TABLE IF EXISTS `dataitem`;
CREATE TABLE `dataitem` (
  `name` varchar(255) DEFAULT NULL,
  `value` double(11,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dataitem
-- ----------------------------
INSERT INTO `dataitem` VALUES ('木材', '1000');
INSERT INTO `dataitem` VALUES ('矿石', '700');
INSERT INTO `dataitem` VALUES ('土壤', '1200');

-- ----------------------------
-- Table structure for signitem
-- ----------------------------
DROP TABLE IF EXISTS `signitem`;
CREATE TABLE `signitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `telNumber` varchar(255) DEFAULT NULL,
  `temperature` double DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of signitem
-- ----------------------------
INSERT INTO `signitem` VALUES ('1', '18390071892', '36.6', '广东深圳', '2022-04-14 20:21:08');
INSERT INTO `signitem` VALUES ('2', '18390071892', '36.4', '北京海淀', '2022-04-16 11:27:17');
INSERT INTO `signitem` VALUES ('3', '32165433131', '36.2', '湖北武汉', '2022-04-16 11:27:53');
INSERT INTO `signitem` VALUES ('4', '164616316', '36.8', '重庆荣昌', '2022-04-16 15:23:46');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `telNumber` varchar(255) DEFAULT NULL,
  `passWord` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '15340416216', '123456', '1499356850@qq.com');
INSERT INTO `user` VALUES ('3', '18390071892', '654321', '99999');
INSERT INTO `user` VALUES ('4', '13246578', '1343', '563131');
