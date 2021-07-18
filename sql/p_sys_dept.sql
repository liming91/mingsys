/*
Navicat MySQL Data Transfer

Source Server         : ming
Source Server Version : 50634
Source Host           : localhost:3307
Source Database       : yb

Target Server Type    : MYSQL
Target Server Version : 50634
File Encoding         : 65001

Date: 2021-07-18 20:12:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for p_sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `p_sys_dept`;
CREATE TABLE `p_sys_dept` (
  `DEPT_ID` varchar(32) NOT NULL,
  `PARENT_ID` varchar(32) DEFAULT NULL,
  `ANCESTORS` varchar(32) DEFAULT NULL,
  `DEPT_NAME` varchar(50) DEFAULT NULL,
  `ORDER_NUM` varchar(50) DEFAULT NULL,
  `LEADER` varchar(50) DEFAULT NULL,
  `PHONE` int(11) DEFAULT NULL,
  `EMAIL` varchar(30) DEFAULT NULL,
  `STATUS` int(1) DEFAULT NULL COMMENT '部门状态（0正常 1停用）',
  `DEL_FLAG` varchar(255) DEFAULT NULL,
  `CREATE_BY` varchar(32) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`DEPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_sys_dept
-- ----------------------------
