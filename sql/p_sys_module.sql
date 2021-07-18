/*
Navicat MySQL Data Transfer

Source Server         : ming
Source Server Version : 50634
Source Host           : localhost:3307
Source Database       : yb

Target Server Type    : MYSQL
Target Server Version : 50634
File Encoding         : 65001

Date: 2021-07-18 20:12:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for p_sys_module
-- ----------------------------
DROP TABLE IF EXISTS `p_sys_module`;
CREATE TABLE `p_sys_module` (
  `ID` varchar(32) NOT NULL,
  `MODULE_CODE` varchar(32) DEFAULT NULL,
  `MODULE_NAME` varchar(50) DEFAULT NULL,
  `MODULE_DESC` varchar(50) DEFAULT NULL,
  `MODULE_SORT` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_BY` varchar(32) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP,
  `CREATE_BY` varchar(32) DEFAULT NULL,
  `MODULE_TYPE` int(1) DEFAULT NULL COMMENT '菜单类型(0: 模块 1：一级菜单 2：子菜单)',
  `P_CODE` varchar(32) DEFAULT NULL,
  `ENABLE_FLAG` int(11) DEFAULT '0',
  `MENU_PATH` varchar(200) DEFAULT NULL,
  `MENU_ICON` varchar(50) DEFAULT NULL,
  `PARENT_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_sys_module
-- ----------------------------
INSERT INTO `p_sys_module` VALUES ('1416701115464994817', null, '系统管理', '系统管理描述', '1', '2021-07-18 18:07:21', null, '2021-07-18 18:07:21', null, '0', null, '0', null, null, null);
INSERT INTO `p_sys_module` VALUES ('1416701396835684353', null, '菜单管理', '系统管理描述', '1', '2021-07-18 18:08:28', null, '2021-07-18 18:08:28', null, '1', null, '0', '/sys/module', null, '1416701115464994817');
INSERT INTO `p_sys_module` VALUES ('1416701771277979650', null, '用户管理', '系统管理描述', '2', '2021-07-18 18:09:57', null, '2021-07-18 18:09:57', null, '1', null, '0', '/sys/user', null, '1416701115464994817');
INSERT INTO `p_sys_module` VALUES ('1416701940224544770', null, '角色管理', '系统管理描述', '3', '2021-07-18 18:10:38', null, '2021-07-18 18:10:38', null, '1', null, '0', '/sys/role', null, '1416701115464994817');
INSERT INTO `p_sys_module` VALUES ('1416702143082057730', null, '部门管理', '系统管理描述', '4', '2021-07-18 18:11:26', null, '2021-07-18 18:11:26', null, '1', null, '0', '/sys/dept', null, '1416701115464994817');
INSERT INTO `p_sys_module` VALUES ('1416706004559646721', null, '用户查询', '系统管理描述', '1', '2021-07-18 18:26:47', null, '2021-07-18 18:26:47', null, '2', null, '0', '/sys/user/userList', null, '1416701771277979650');
INSERT INTO `p_sys_module` VALUES ('1416706364321878017', null, '用户新增', '系统管理描述', '2', '2021-07-18 18:28:13', null, '2021-07-18 18:28:13', null, '2', null, '0', '/sys/user/add', null, '1416701771277979650');
INSERT INTO `p_sys_module` VALUES ('1416706598905106434', null, '角色新增', '系统管理描述', '1', '2021-07-18 18:29:08', null, '2021-07-18 18:29:08', null, '2', null, '0', '/sys/role/add', null, '1416701940224544770');
INSERT INTO `p_sys_module` VALUES ('1416706685261631490', null, '角色查询', '系统管理描述', '2', '2021-07-18 18:29:29', null, '2021-07-18 18:29:29', null, '2', null, '0', '/sys/role/roleList', null, '1416701940224544770');
