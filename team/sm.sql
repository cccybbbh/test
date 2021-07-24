/*
Navicat MySQL Data Transfer

Source Server         : MySQL8
Source Server Version : 80023
Source Host           : localhost:3306
Source Database       : sm

Target Server Type    : MYSQL
Target Server Version : 80023
File Encoding         : 65001

Date: 2021-07-14 21:31:15
*/
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` char(20) DEFAULT NULL,
  `leader` char(20) DEFAULT NULL,
  `start` char(20) DEFAULT NULL,
  `end` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('1', '旅游', '小蒋', '2021-7-20', '2021-7-23');
INSERT INTO `activity` VALUES ('3', '志愿者', null, '2021-7-30', '2021-8-30');
INSERT INTO `activity` VALUES ('8', '旅游', '蒋九', '2021-7-9', '2021-7-11');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` char(20) DEFAULT NULL,
  `pname` char(50) DEFAULT NULL,
  `time` char(20) DEFAULT NULL,
  `site` char(100) DEFAULT NULL,
  `cost` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('5', '旅游', '北京', '2021-7-4', null, '1500');
INSERT INTO `project` VALUES ('6', '旅游', '上海', '2021-7-23', null, '2000');
INSERT INTO `project` VALUES ('7', null, null, null, null, '0');
INSERT INTO `project` VALUES ('8', '旅游', '南京', '2021-7-10', null, '1500');

-- ----------------------------
-- Table structure for sign
-- ----------------------------
DROP TABLE IF EXISTS `sign`;
CREATE TABLE `sign` (
  `username` char(20) DEFAULT NULL,
  `aname` char(20) DEFAULT NULL,
  `pname` char(20) DEFAULT NULL,
  `cost` int DEFAULT NULL,
  `costed` int DEFAULT NULL,
  `ended` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sign
-- ----------------------------
INSERT INTO `sign` VALUES ('蒋九', '旅游', '厦门','300', '40',  '0');
INSERT INTO `sign` VALUES ('蒋九', '旅游', '北京', '500', '100', '0');
INSERT INTO `sign` VALUES ('蒋九', '旅游', '南京', '400', '6', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` char(20) DEFAULT NULL,
  `password` char(20) DEFAULT NULL,
  `mail` char(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123456', '837137630@qq.com');
INSERT INTO `user` VALUES ('2', 'test', '888888', '837137630@qq.com');
INSERT INTO `user` VALUES ('3', '19200107103', '123456', '837137630@qq.com');
INSERT INTO `user` VALUES ('15', 'JIUJIU', '123456', '837137630@qq.com');
