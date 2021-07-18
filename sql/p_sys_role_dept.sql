/*
Navicat MySQL Data Transfer

Source Server         : ming
Source Server Version : 50634
Source Host           : localhost:3307
Source Database       : yb

Target Server Type    : MYSQL
Target Server Version : 50634
File Encoding         : 65001

Date: 2021-07-18 20:12:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for p_sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `p_sys_role_dept`;
CREATE TABLE `p_sys_role_dept` (
  `ID` varchar(32) NOT NULL,
  `DEPT_ID` varchar(32) DEFAULT NULL,
  `ROLE_ID` varchar(32) DEFAULT NULL,
  `CREATE_BY` varchar(32) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_sys_role_dept
-- ----------------------------
