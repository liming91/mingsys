/*
Navicat MySQL Data Transfer

Source Server         : ming
Source Server Version : 50634
Source Host           : localhost:3307
Source Database       : yb

Target Server Type    : MYSQL
Target Server Version : 50634
File Encoding         : 65001

Date: 2021-07-18 20:12:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for p_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `p_sys_user`;
CREATE TABLE `p_sys_user` (
  `USER_ID` varchar(32) NOT NULL,
  `USER_ACCOUNT` varchar(32) DEFAULT NULL COMMENT '账户',
  `USER_NAME` varchar(32) DEFAULT NULL,
  `USER_PASS` varchar(32) DEFAULT NULL,
  `ROLE_ID` varchar(32) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP,
  `CREATE_BY` varchar(32) DEFAULT NULL,
  `DELNOT` int(1) DEFAULT '0',
  `PHONE` int(11) DEFAULT NULL,
  `WOEK_DEPARTMENT` varchar(50) DEFAULT NULL,
  `USER_CODE` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `AVATAR` varchar(50) DEFAULT NULL,
  `SEX` int(1) DEFAULT NULL,
  `ENABLE_FLAG` int(1) DEFAULT '0',
  `DEPT_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_sys_user
-- ----------------------------
INSERT INTO `p_sys_user` VALUES ('1', 'admin', 'admin', '123456', null, '2021-07-18 12:19:29', null, '0', '1320001111', null, null, '56565@qq.com', null, '0', '0', null);
