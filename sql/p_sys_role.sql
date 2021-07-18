/*
Navicat MySQL Data Transfer

Source Server         : ming
Source Server Version : 50634
Source Host           : localhost:3307
Source Database       : yb

Target Server Type    : MYSQL
Target Server Version : 50634
File Encoding         : 65001

Date: 2021-07-18 20:12:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for p_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `p_sys_role`;
CREATE TABLE `p_sys_role` (
  `ROLE_ID` varchar(32) NOT NULL,
  `ROLE_NAME` varchar(32) DEFAULT NULL,
  `ROLE_DESCRIBE` varchar(50) DEFAULT NULL,
  `ROLE_MANAGE` varchar(50) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP,
  `CREATE_BY` varchar(32) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_BY` varchar(32) DEFAULT NULL,
  `DELNOT` int(1) DEFAULT NULL,
  `ROLE_POWER` varchar(255) DEFAULT NULL,
  `ROLE_TYPE` int(1) DEFAULT NULL,
  `ROLE_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_sys_role
-- ----------------------------
