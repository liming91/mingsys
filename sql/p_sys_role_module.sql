/*
Navicat MySQL Data Transfer

Source Server         : ming
Source Server Version : 50634
Source Host           : localhost:3307
Source Database       : yb

Target Server Type    : MYSQL
Target Server Version : 50634
File Encoding         : 65001

Date: 2021-07-18 20:12:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for p_sys_role_module
-- ----------------------------
DROP TABLE IF EXISTS `p_sys_role_module`;
CREATE TABLE `p_sys_role_module` (
  `ID` varchar(32) NOT NULL,
  `MODULE_ID` varchar(32) DEFAULT NULL,
  `ROLE_ID` varchar(32) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP,
  `CREATE_BY` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_sys_role_module
-- ----------------------------
