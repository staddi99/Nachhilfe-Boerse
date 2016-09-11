/*
Navicat MySQL Data Transfer

Source Server         : RPI
Source Server Version : 50550
Source Host           : 10.0.0.1:3306
Source Database       : nachhilfe

Target Server Type    : MYSQL
Target Server Version : 50550
File Encoding         : 65001

Date: 2016-09-11 21:29:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `offers`
-- ----------------------------
DROP TABLE IF EXISTS `offers`;
CREATE TABLE `offers` (
  `id` int(13) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `hour_unit` int(5) DEFAULT NULL,
  `price` int(8) DEFAULT NULL,
  `comment` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of offers
-- ----------------------------

-- ----------------------------
-- Table structure for `settings`
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `property` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  `description` longtext,
  PRIMARY KEY (`property`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('register_enabled', '1', '1 = Registrierung erlaubt, 0 = Registrierung verboten');
INSERT INTO `settings` VALUES ('title', 'Nachhilfe-Seite', 'Title der Nachhilfe-Seite');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `address` longtext,
  `postal_code` longtext,
  `state` longtext,
  `password` longtext NOT NULL,
  `surname` longtext,
  `name` longtext,
  `birthday` datetime DEFAULT NULL,
  `flags` longtext,
  PRIMARY KEY (`id`,`username`,`mail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
