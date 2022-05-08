/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : study_system

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2022-05-08 19:54:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `telNumber` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `questionInfo` varchar(255) DEFAULT NULL,
  `commentInfo` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '15340416217', '何东金', '请问博士学制几年？', '直博是五年', '2022-05-07 15:23:28');
INSERT INTO `comment` VALUES ('2', '15340416217', '何东金', '请问2022届本科毕业生什么时候毕业典礼？', '应该是六月的时候', '2022-05-07 15:23:42');
INSERT INTO `comment` VALUES ('3', '15342017241', '褚淑上', '请问博士学制几年？', '一般博士四年', '2022-05-07 18:53:33');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of infocast
-- ----------------------------
INSERT INTO `infocast` VALUES ('1', '张一', '毕业学分要求', '2022-04-23 16:34:02', '毕业通知');
INSERT INTO `infocast` VALUES ('2', '李二', '毕业典礼时间与要求', '2022-04-23 17:03:31', '毕业通知');
INSERT INTO `infocast` VALUES ('3', '李二', '平时成绩评定办法', '2022-04-23 17:03:44', '成绩通知');
INSERT INTO `infocast` VALUES ('4', '李二', '期末成绩评定办法', '2022-04-23 17:05:46', '成绩通知');
INSERT INTO `infocast` VALUES ('7', '李二', '关于2021-2022年度本科生学费缴纳', '2022-04-23 17:09:26', '缴费通知');
INSERT INTO `infocast` VALUES ('8', '王五', '关于2021-2022年度硕士研究生学费缴纳', '2022-04-23 17:10:17', '缴费通知');
INSERT INTO `infocast` VALUES ('10', '李二', '关于本科生水电费补交', '2022-04-27 14:54:50', '缴费通知');
INSERT INTO `infocast` VALUES ('11', '李二', '关于本科生医保费用缴纳', '2022-05-03 19:10:24', '缴费通知');
INSERT INTO `infocast` VALUES ('12', '张一', '西南大学\r\n商贸学院一二轮选课于2021年12月25日开始。', '2022-05-03 19:12:03', '选课通知');
INSERT INTO `infocast` VALUES ('13', '张一', '西南大学\r\n商贸学院\r\n计算机科学与技术第二轮选课于2022年2月25日开始。\r\n ', '2022-05-04 21:39:02', '选课通知');
INSERT INTO `infocast` VALUES ('14', '张一', '西南大学\r\n\r\n商贸学院\r\n\r\n计算机科学与技术专业', '2022-05-07 19:51:08', '公告测试');

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
INSERT INTO `manager` VALUES ('3', '18390071892', '654321', '李二', '99999@163.com');
INSERT INTO `manager` VALUES ('4', '13246578', '1343', '王五', '563131@swu.edu.com');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `telNumber` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `questionInfo` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '15340416216', '钱二一', '请问博士学制几年？', '2022-05-07 15:22:10');
INSERT INTO `question` VALUES ('2', '15340416216', '钱二一', '请问2022届本科毕业生什么时候毕业典礼？', '2022-05-07 15:22:24');
INSERT INTO `question` VALUES ('3', '15340416217', '何东金', '怎么才能硕博连读？', '2022-05-07 15:23:08');

-- ----------------------------
-- Table structure for recommend
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `telNumber` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recommend
-- ----------------------------
INSERT INTO `recommend` VALUES ('17', '周杰伦+-+东风破.mp3', '钱二一', '15340416216', '历史', '2022-05-07 10:51:43', '1');
INSERT INTO `recommend` VALUES ('18', '历史书籍.docx', '钱二一', '15340416216', '历史', '2022-05-07 14:31:59', '0');
INSERT INTO `recommend` VALUES ('19', '历史书籍1 (1).docx', '钱二一', '15340416216', '历史', '2022-05-07 14:32:20', '3');
INSERT INTO `recommend` VALUES ('20', '科技书籍1 (10) .docx', '何东金', '15340416216', '科技', '2022-05-07 14:33:04', '4');
INSERT INTO `recommend` VALUES ('21', '科技书籍1 (9) .docx', '何东金', '15340416216', '科技', '2022-05-07 14:33:13', '2');
INSERT INTO `recommend` VALUES ('22', '科技书籍1 (8) .docx', '何东金', '15340416216', '科技', '2022-05-07 14:33:23', '4');
INSERT INTO `recommend` VALUES ('23', '文学书籍1 (1).docx', '朱玉九', '15340416216', '文学', '2022-05-07 14:34:01', '0');
INSERT INTO `recommend` VALUES ('24', '文学书籍1 (2).docx', '朱玉九', '15340416216', '文学', '2022-05-07 14:34:11', '3');
INSERT INTO `recommend` VALUES ('25', '文学书籍1 (3).docx', '朱玉九', '15340416216', '文学', '2022-05-07 14:34:22', '0');
INSERT INTO `recommend` VALUES ('26', '旅游书籍1 (1).docx', '谢海义', '15340416216', '旅游', '2022-05-07 14:35:05', '0');
INSERT INTO `recommend` VALUES ('27', '旅游书籍1 (2).docx', '谢海义', '15340416216', '旅游', '2022-05-07 14:35:15', '0');
INSERT INTO `recommend` VALUES ('28', '艺术书籍1 (1) .docx', '谢海义', '15340416216', '艺术', '2022-05-07 14:36:30', '0');
INSERT INTO `recommend` VALUES ('29', '艺术书籍1 (2) .docx', '谢海义', '15340416216', '艺术', '2022-05-07 14:36:40', '1');
INSERT INTO `recommend` VALUES ('30', '科技书籍1 (6) .docx', '谢海义', '15340416216', '科技', '2022-05-07 14:44:03', '3');
INSERT INTO `recommend` VALUES ('31', '文学书籍1 (4).docx', '姚发宁', '15340416216', '文学', '2022-05-07 18:05:39', '1');
INSERT INTO `recommend` VALUES ('32', '旅游书籍1 (4).docx', '金广健', '15340416216', '旅游', '2022-05-07 18:06:17', '1');
INSERT INTO `recommend` VALUES ('33', '科技书籍1 (9) .docx', '周华器', '15340416216', '科技', '2022-05-07 18:07:01', '1');

-- ----------------------------
-- Table structure for signitem
-- ----------------------------
DROP TABLE IF EXISTS `signitem`;
CREATE TABLE `signitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `telNumber` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `temperature` varchar(10) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of signitem
-- ----------------------------
INSERT INTO `signitem` VALUES ('3', '32165433131', '钱二一', '36', '湖北武汉', '2022-04-16 11:27:53');
INSERT INTO `signitem` VALUES ('4', '164616316', '钱二一', '37', '重庆荣昌', '2022-04-16 15:23:46');
INSERT INTO `signitem` VALUES ('5', '15340416216', '钱二一', '36', '湖南长沙', '2021-11-17 16:06:16');
INSERT INTO `signitem` VALUES ('6', '15340416216', '钱二一', '37', '日本东京', '2022-02-19 16:06:19');
INSERT INTO `signitem` VALUES ('7', '15340416216', '钱二一', '35', '北京海淀', '2022-04-13 16:06:23');
INSERT INTO `signitem` VALUES ('8', '15340416216', '钱二一', '36', '重庆荣昌', '2022-03-17 16:06:27');
INSERT INTO `signitem` VALUES ('9', '15340416216', '钱二一', '36', '浙江苏州', '2022-03-16 16:06:31');
INSERT INTO `signitem` VALUES ('10', '15340416216', '钱二一', '37', '瑞士苏黎世', '2022-04-27 14:57:44');
INSERT INTO `signitem` VALUES ('11', '15340416216', '钱二一', '37', '日本东京', '2022-04-28 10:50:04');
INSERT INTO `signitem` VALUES ('12', '15340416216', '钱二一', '37', '日本东京', '2022-05-02 09:02:27');
INSERT INTO `signitem` VALUES ('13', '15340416216', '钱二一', '37', '日本东京', '2022-05-02 09:05:15');
INSERT INTO `signitem` VALUES ('14', '15340416216', '钱二一', '37', '日本东京', '2022-05-02 09:05:45');
INSERT INTO `signitem` VALUES ('15', '15340416216', '钱二一', '37', '日本东京', '2022-05-02 09:06:27');
INSERT INTO `signitem` VALUES ('16', '15340416216', '钱二一', '37', '日本东京', '2022-05-02 09:06:45');
INSERT INTO `signitem` VALUES ('17', '15340416216', '钱二一', '37', '日本东京', '2022-05-02 09:07:11');
INSERT INTO `signitem` VALUES ('18', '15340416216', '钱二一', '37', '日本东京', '2022-05-02 09:10:19');
INSERT INTO `signitem` VALUES ('19', '15340416216', '钱二一', '37', '日本东京', '2022-05-02 09:10:38');
INSERT INTO `signitem` VALUES ('20', '15340416216', '钱二一', '37', '日本东京', '2022-05-02 09:11:37');
INSERT INTO `signitem` VALUES ('21', '15340416216', '钱二一', '37', '日本东京', '2022-05-02 09:12:29');
INSERT INTO `signitem` VALUES ('22', '15340416216', '钱二一', '37', '日本东京', '2022-05-02 09:12:40');
INSERT INTO `signitem` VALUES ('23', '15340416216', '钱二一', '37', '日本东京', '2022-05-02 09:14:19');
INSERT INTO `signitem` VALUES ('24', '15340416216', '钱二一', '37', '湖南长沙', '2022-05-03 18:52:56');
INSERT INTO `signitem` VALUES ('25', '15340416216', '钱二一', '37', '北京海淀', '2022-05-04 21:29:48');
INSERT INTO `signitem` VALUES ('26', '15340416216', '钱二一', '36', '浙江苏州', '2022-05-07 14:27:26');
INSERT INTO `signitem` VALUES ('27', '15341967178', '戚良志', '37', '德国柏林', '2022-04-20 19:58:41');
INSERT INTO `signitem` VALUES ('28', '15341967178', '戚良志', '37', '湖南长沙', '2022-05-01 19:59:23');
INSERT INTO `signitem` VALUES ('29', '15341967178', '戚良志', '36', '瑞士苏黎世', '2022-05-03 19:59:29');
INSERT INTO `signitem` VALUES ('30', '15341967178', '戚良志', '36', '日本东京', '2022-05-06 19:59:34');

-- ----------------------------
-- Table structure for upload
-- ----------------------------
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `telNumber` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of upload
-- ----------------------------
INSERT INTO `upload` VALUES ('3', '无标题.png', '秦贵山', '15340416216', '艺术', '2022-04-30 09:47:56', '3');
INSERT INTO `upload` VALUES ('4', '极限的爱.png', '秦贵山', '15340416216', '文学', '2022-04-28 11:18:57', '7');
INSERT INTO `upload` VALUES ('5', '69DA0A26ED52B550EF623C96A90B5DBE666.jpg', '秦贵山', '15340416216', '科技', '2022-04-28 11:23:04', '2');
INSERT INTO `upload` VALUES ('6', '16E271D7763A9A6C58DAA566BCCA6591777.jpg', '朱玉九', '15340416216', '历史', '2022-04-28 14:26:59', '1');
INSERT INTO `upload` VALUES ('7', '2FE4EF6E1CB6FA0AD392CEA361155D9E.jpg', '朱玉九', '15340416216', '历史', '2022-04-28 14:31:31', '3');
INSERT INTO `upload` VALUES ('10', '9F197F6847C59CC32B0548AC6CD7A8D0.jpg', '何东金', '15340416216', '历史', '2022-04-30 19:15:15', '0');
INSERT INTO `upload` VALUES ('11', '全频段阻塞干扰.txt', '何东金', '15340416216', '科技', '2022-05-02 16:36:52', '0');
INSERT INTO `upload` VALUES ('12', 'echarts.min.js', '何东金', '15340416216', '科技', '2022-05-02 16:40:35', '0');
INSERT INTO `upload` VALUES ('14', 'pexels-david-bartus-1166209.jpg', '钱二一', '15340416216', '科技', '2022-05-02 16:55:46', '0');
INSERT INTO `upload` VALUES ('15', 'study_system.sql', '钱二一', '15340416216', '科技', '2022-05-02 18:16:06', '0');
INSERT INTO `upload` VALUES ('16', '许嵩 - 如约而至.mp3', '钱二一', '15340416216', '科技', '2022-05-02 18:17:29', '0');
INSERT INTO `upload` VALUES ('17', '周杰伦+-+东风破.mp3', '钱二一', '15340416216', '历史', '2022-05-07 10:51:43', '0');
INSERT INTO `upload` VALUES ('18', '历史书籍.docx', '钱二一', '15340416216', '历史', '2022-05-07 14:31:59', '0');
INSERT INTO `upload` VALUES ('19', '历史书籍1 (1).docx', '钱二一', '15340416216', '历史', '2022-05-07 14:32:20', '0');
INSERT INTO `upload` VALUES ('20', '科技书籍1 (10) .docx', '何东金', '15340416217', '科技', '2022-05-07 14:33:04', '0');
INSERT INTO `upload` VALUES ('21', '科技书籍1 (9) .docx', '何东金', '15340416217', '科技', '2022-05-07 14:33:13', '0');
INSERT INTO `upload` VALUES ('22', '科技书籍1 (8) .docx', '何东金', '15340416217', '科技', '2022-05-07 14:33:23', '0');
INSERT INTO `upload` VALUES ('23', '文学书籍1 (1).docx', '朱玉九', '15340616233', '文学', '2022-05-07 14:34:01', '0');
INSERT INTO `upload` VALUES ('24', '文学书籍1 (2).docx', '朱玉九', '15340616233', '文学', '2022-05-07 14:34:11', '0');
INSERT INTO `upload` VALUES ('25', '文学书籍1 (3).docx', '朱玉九', '15340616233', '文学', '2022-05-07 14:34:22', '0');
INSERT INTO `upload` VALUES ('26', '旅游书籍1 (1).docx', '谢海义', '15340516221', '旅游', '2022-05-07 14:35:05', '0');
INSERT INTO `upload` VALUES ('27', '旅游书籍1 (2).docx', '谢海义', '15340516221', '旅游', '2022-05-07 14:35:15', '0');
INSERT INTO `upload` VALUES ('28', '艺术书籍1 (1) .docx', '谢海义', '15340516221', '艺术', '2022-05-07 14:36:30', '0');
INSERT INTO `upload` VALUES ('29', '艺术书籍1 (2) .docx', '谢海义', '15340516221', '艺术', '2022-05-07 14:36:40', '0');
INSERT INTO `upload` VALUES ('30', '科技书籍1 (6) .docx', '谢海义', '15340516221', '科技', '2022-05-07 14:44:03', '0');
INSERT INTO `upload` VALUES ('31', '文学书籍1 (4).docx', '姚发宁', '15342367738', '文学', '2022-05-07 18:05:39', '0');
INSERT INTO `upload` VALUES ('32', '旅游书籍1 (4).docx', '金广健', '15342417817', '旅游', '2022-05-07 18:06:17', '0');
INSERT INTO `upload` VALUES ('33', '科技书籍1 (9) .docx', '周华器', '15341166442', '科技', '2022-05-07 18:07:01', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '15340416216', '123456', '钱二一', '1499356850@qq.com', '男', '22', '2022010000', '中共党员', '商贸学院', '本科');
INSERT INTO `user` VALUES ('50', '15340416217', '123456', '何东金', '123456@swu.edu.cn', '女', '23', '2022010001', '共青团员', '动物科学学院', '硕士');
INSERT INTO `user` VALUES ('51', '15340466218', '123457', '赵文凯', '123457@swu.edu.cn', '男', '18', '2022010002', '中共党员', '水产学院', '博士');
INSERT INTO `user` VALUES ('52', '15340516221', '123458', '谢海义', '123464@swu.edu.cn', '男', '26', '2022010003', '共青团员', '水产学院', '硕士');
INSERT INTO `user` VALUES ('53', '15340566226', '123459', '林帅雪', '123483@163.com', '男', '18', '2022010004', '民盟党员', '动物医学学院', '硕士');
INSERT INTO `user` VALUES ('54', '15340616233', '123460', '朱玉九', '123520@163.com', '女', '18', '2022010005', '共青团员', '动物医学学院', '博士');
INSERT INTO `user` VALUES ('55', '15340666242', '123461', '尤平', '123581@163.com', '女', '22', '2022010006', '民盟党员', '动物科学学院', '硕士');
INSERT INTO `user` VALUES ('56', '15340716253', '123462', '孔明忠', '123672@swu.edu.cn', '女', '21', '2022010007', '九三学社党员', '动物医学学院', '本科');
INSERT INTO `user` VALUES ('57', '15340766266', '123463', '何东金', '123799@163.com', '男', '28', '2022010008', '九三学社党员', '动物科学学院', '博士');
INSERT INTO `user` VALUES ('58', '15340816281', '123464', '陈静友', '123968@qq.com', '男', '18', '2022010009', '九三学社党员', '商贸学院', '硕士');
INSERT INTO `user` VALUES ('59', '15340866298', '123465', '陶义广', '124185@163.com', '男', '23', '2022010010', '九三学社党员', '商贸学院', '本科');
INSERT INTO `user` VALUES ('60', '15340916317', '123466', '许保电', '124456@163.com', '女', '18', '2022010011', '九三学社党员', '动物科学学院', '博士');
INSERT INTO `user` VALUES ('61', '15340966338', '123467', '施辉钰', '124787@qq.com', '女', '18', '2022010012', '共青团员', '动物科学学院', '本科');
INSERT INTO `user` VALUES ('62', '15341016361', '123468', '秦萍强加', '125184@qq.com', '男', '23', '2022010013', '民盟党员', '动物医学学院', '本科');
INSERT INTO `user` VALUES ('63', '15341066386', '123469', '蒋珠卡', '125653@qq.com', '女', '18', '2022010014', '中共党员', '动物医学学院', '本科');
INSERT INTO `user` VALUES ('64', '15341116413', '123470', '李龙玲', '126200@qq.com', '女', '27', '2022010015', '九三学社党员', '水产学院', '本科');
INSERT INTO `user` VALUES ('65', '15341166442', '123471', '周华器', '126831@qq.com', '女', '18', '2022010016', '中共党员', '动物科学学院', '博士');
INSERT INTO `user` VALUES ('66', '15341216473', '123472', '秦贵山', '127552@swu.edu.cn', '女', '18', '2022010017', '群众', '动物医学学院', '博士');
INSERT INTO `user` VALUES ('67', '15341266506', '123473', '秦萍强加', '128369@qq.com', '男', '18', '2022010018', '中共党员', '水产学院', '硕士');
INSERT INTO `user` VALUES ('68', '15341316541', '123474', '沈翠被', '129288@qq.com', '男', '26', '2022010019', '群众', '动物科学学院', '硕士');
INSERT INTO `user` VALUES ('69', '15341366578', '123475', '何东金', '130315@swu.edu.cn', '男', '18', '2022010020', '九三学社党员', '动物医学学院', '硕士');
INSERT INTO `user` VALUES ('70', '15341416617', '123476', '孔明忠', '131456@swu.edu.cn', '女', '18', '2022010021', '群众', '动物医学学院', '博士');
INSERT INTO `user` VALUES ('71', '15341466658', '123477', '金明立', '132717@163.com', '女', '18', '2022010022', '群众', '水产学院', '硕士');
INSERT INTO `user` VALUES ('72', '15341516701', '123478', '何东金', '134104@qq.com', '男', '18', '2022010023', '九三学社党员', '水产学院', '博士');
INSERT INTO `user` VALUES ('73', '15341566746', '123479', '周华器', '135623@swu.edu.cn', '女', '18', '2022010024', '民盟党员', '动物科学学院', '硕士');
INSERT INTO `user` VALUES ('74', '15341616793', '123480', '赵文凯', '137280@qq.com', '女', '24', '2022010025', '九三学社党员', '动物科学学院', '硕士');
INSERT INTO `user` VALUES ('75', '15341666842', '123481', '沈翠被', '139081@swu.edu.cn', '女', '18', '2022010026', '民盟党员', '动物医学学院', '本科');
INSERT INTO `user` VALUES ('76', '15341716893', '123482', '冯娜信', '141032@swu.edu.cn', '女', '27', '2022010027', '九三学社党员', '商贸学院', '本科');
INSERT INTO `user` VALUES ('77', '15341766946', '123483', '韩雅好', '143139@swu.edu.cn', '男', '18', '2022010028', '共青团员', '水产学院', '硕士');
INSERT INTO `user` VALUES ('78', '15341817001', '123484', '秦贵山', '145408@163.com', '女', '23', '2022010029', '中共党员', '商贸学院', '本科');
INSERT INTO `user` VALUES ('79', '15341867058', '123485', '吕文马', '147845@qq.com', '女', '19', '2022010030', '群众', '水产学院', '本科');
INSERT INTO `user` VALUES ('80', '15341917117', '123486', '姚发宁', '150456@qq.com', '男', '18', '2022010031', '中共党员', '动物医学学院', '本科');
INSERT INTO `user` VALUES ('81', '15341967178', '123487', '戚良志', '153247@swu.edu.cn', '女', '27', '2022010032', '共青团员', '水产学院', '博士');
INSERT INTO `user` VALUES ('82', '15342017241', '123488', '褚淑上', '156224@swu.edu.cn', '男', '27', '2022010033', '群众', '水产学院', '硕士');
INSERT INTO `user` VALUES ('83', '15342067306', '123489', '喻仁良', '159393@qq.com', '男', '25', '2022010034', '九三学社党员', '动物医学学院', '本科');
INSERT INTO `user` VALUES ('84', '15342117373', '123490', '吴慧义', '162760@swu.edu.cn', '男', '18', '2022010035', '共青团员', '动物医学学院', '硕士');
INSERT INTO `user` VALUES ('85', '15342167442', '123491', '尤平', '166331@163.com', '女', '18', '2022010036', '中共党员', '商贸学院', '硕士');
INSERT INTO `user` VALUES ('86', '15342217513', '123492', '戚良志', '170112@qq.com', '女', '18', '2022010037', '九三学社党员', '动物科学学院', '博士');
INSERT INTO `user` VALUES ('87', '15342267586', '123493', '范洋仁', '174109@163.com', '女', '18', '2022010038', '共青团员', '动物科学学院', '硕士');
INSERT INTO `user` VALUES ('88', '15342317661', '123494', '施辉钰', '178328@163.com', '男', '18', '2022010039', '群众', '水产学院', '硕士');
INSERT INTO `user` VALUES ('89', '15342367738', '123495', '姚发宁', '182775@swu.edu.cn', '男', '18', '2022010040', '群众', '动物医学学院', '博士');
INSERT INTO `user` VALUES ('90', '15342417817', '123496', '金广健', '187456@swu.edu.cn', '男', '18', '2022010041', '九三学社党员', '动物科学学院', '博士');
INSERT INTO `user` VALUES ('91', '15342467898', '123497', '姚发宁', '192377@swu.edu.cn', '男', '18', '2022010042', '中共党员', '动物医学学院', '本科');
INSERT INTO `user` VALUES ('92', '15342517981', '123498', '沈翠被', '197544@qq.com', '女', '18', '2022010043', '民盟党员', '商贸学院', '本科');
INSERT INTO `user` VALUES ('93', '15342568066', '123499', '杨芝无', '202963@swu.edu.cn', '女', '18', '2022010044', '九三学社党员', '水产学院', '本科');
INSERT INTO `user` VALUES ('94', '15342618153', '123500', '严健明', '208640@qq.com', '女', '18', '2022010045', '共青团员', '动物科学学院', '博士');
INSERT INTO `user` VALUES ('95', '15342668242', '123501', '陈静友', '214581@swu.edu.cn', '女', '27', '2022010046', '九三学社党员', '商贸学院', '博士');
INSERT INTO `user` VALUES ('96', '15342718333', '123502', '沈翠被', '220792@163.com', '男', '18', '2022010047', '群众', '水产学院', '本科');
INSERT INTO `user` VALUES ('97', '15342768426', '123503', '孙娟易', '227279@163.com', '男', '18', '2022010048', '九三学社党员', '商贸学院', '硕士');
INSERT INTO `user` VALUES ('98', '15342818521', '123504', '孙娟易', '234048@swu.edu.cn', '女', '18', '2022010049', '九三学社党员', '商贸学院', '硕士');
INSERT INTO `user` VALUES ('99', '15342868618', '123505', '李英仁', '241105@qq.com', '男', '18', '2022010050', '九三学社党员', '动物科学学院', '博士');
