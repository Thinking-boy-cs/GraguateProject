/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : study_system

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2022-04-26 19:07:17
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
-- Table structure for infocast
-- ----------------------------
DROP TABLE IF EXISTS `infocast`;
CREATE TABLE `infocast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of infocast
-- ----------------------------
INSERT INTO `infocast` VALUES ('1', '管理员', '文本内容', '2022-04-23 16:34:02', '测试');
INSERT INTO `infocast` VALUES ('2', null, '123123123', '2022-04-23 17:03:31', '234253');
INSERT INTO `infocast` VALUES ('3', null, '哈哈哈啊哈哈哈', '2022-04-23 17:03:44', '测试');
INSERT INTO `infocast` VALUES ('4', null, '哈哈哈哈啊哈哈哈', '2022-04-23 17:05:46', '测试3');
INSERT INTO `infocast` VALUES ('7', null, '哇呀呀呀呀呀', '2022-04-23 17:09:26', '测试4');
INSERT INTO `infocast` VALUES ('8', null, '哇呀呀呀呀呀', '2022-04-23 17:10:17', '测试5');
INSERT INTO `infocast` VALUES ('9', null, '哈哈哈哈哈哈', '2022-04-23 17:11:53', '测试6');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `telNumber` varchar(25) DEFAULT NULL,
  `passWord` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1', '15340416216', '123456', '张一', '1499356850@qq.com');
INSERT INTO `manager` VALUES ('3', '18390071892', '654321', null, '99999');
INSERT INTO `manager` VALUES ('4', '13246578', '1343', null, '563131');

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `telNumber` varchar(25) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource
-- ----------------------------

-- ----------------------------
-- Table structure for signitem
-- ----------------------------
DROP TABLE IF EXISTS `signitem`;
CREATE TABLE `signitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `telNumber` varchar(255) DEFAULT NULL,
  `temperature` double(10,0) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of signitem
-- ----------------------------
INSERT INTO `signitem` VALUES ('1', '18390071892', '37', '广东深圳', '2022-04-14 20:21:08');
INSERT INTO `signitem` VALUES ('2', '18390071892', '36', '北京海淀', '2022-04-16 11:27:17');
INSERT INTO `signitem` VALUES ('3', '32165433131', '36', '湖北武汉', '2022-04-16 11:27:53');
INSERT INTO `signitem` VALUES ('4', '164616316', '37', '重庆荣昌', '2022-04-16 15:23:46');

-- ----------------------------
-- Table structure for upload
-- ----------------------------
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of upload
-- ----------------------------
INSERT INTO `upload` VALUES ('3', '无标题.png', '2022-04-24 09:47:56');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `telNumber` varchar(25) DEFAULT NULL,
  `passWord` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `idCard` varchar(20) DEFAULT NULL,
  `political` varchar(20) DEFAULT NULL,
  `college` varchar(20) DEFAULT NULL,
  `degree` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '15340416216', '123456', '钱二', '1499356850@qq.com', '男', '11', null, null, '计算机', '博士');
INSERT INTO `user` VALUES ('3', '18390071892', '654321', null, '99999', '男', null, null, null, '体育', '博士');
INSERT INTO `user` VALUES ('4', '13246578', '1343', null, '563131', '男', null, null, null, '法学', '本科');
INSERT INTO `user` VALUES ('5', '111111', '111111111', null, '1111111111111', '女', null, null, null, '经济', '本科');
INSERT INTO `user` VALUES ('6', 'test', 'test', null, 'test', '男', '22', '22222222', '中共党员', '计算机', '硕士');
INSERT INTO `user` VALUES ('8', '15245453453', 'sadfsadf', null, 'dsaffd', '男', '12', '333333', '群众', '经济', '本科');
INSERT INTO `user` VALUES ('9', '12345678900', '123456', null, '563131@qq.com', '女', '21', '22222222', '中共党员', '商贸学院', '本科');
INSERT INTO `user` VALUES ('10', '45654', '45654', null, null, '女', null, null, null, '商贸学院', '硕士');
INSERT INTO `user` VALUES ('11', '12345645645', '123456', null, null, '女', null, null, null, '计算机', '本科');
INSERT INTO `user` VALUES ('12', '183900718922123', '3123', '张三', '123123123123', '男', '12', '11111111', '中共党员', '商贸学院', '本科');
INSERT INTO `user` VALUES ('14', '123123', 'test', '王五', '563131@qq.com', '女', null, '', '', '计算机', '本科');
INSERT INTO `user` VALUES ('15', '101010110', 'test', '赵六', '', '女', null, '11111111', '共青团员', '经济', '硕士');
