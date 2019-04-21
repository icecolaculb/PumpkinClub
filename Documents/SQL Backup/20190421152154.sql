/*
MySQL Backup
Database: Demo
Backup Time: 2019-04-21 15:21:57
*/

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `Demo`.`校园编号`;
DROP TABLE IF EXISTS `Demo`.`活动`;
DROP TABLE IF EXISTS `Demo`.`活动订阅表`;
DROP TABLE IF EXISTS `Demo`.`用户表`;
DROP TABLE IF EXISTS `Demo`.`社团`;
DROP TABLE IF EXISTS `Demo`.`社团成员表`;
DROP TABLE IF EXISTS `Demo`.`社团收藏表`;
DROP TABLE IF EXISTS `Demo`.`职务编号表`;
CREATE TABLE `校园编号` (
  `校院编号` int(255) NOT NULL AUTO_INCREMENT,
  `校院` varchar(255) NOT NULL,
  PRIMARY KEY (`校院编号`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='数字编号代表不同学院/校';
CREATE TABLE `活动` (
  `活动编号` int(255) NOT NULL AUTO_INCREMENT,
  `具体内容文件` varchar(255) NOT NULL COMMENT 'url',
  `发布时间` datetime(6) NOT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  `截止时间` datetime(6) NOT NULL,
  `排序优先度` int(255) NOT NULL DEFAULT '0' COMMENT '活动的热度',
  PRIMARY KEY (`活动编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `活动订阅表` (
  `用户编号` int(255) NOT NULL,
  `活动编号表` int(255) NOT NULL,
  PRIMARY KEY (`用户编号`,`活动编号表`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `用户表` (
  `用户编号` int(255) NOT NULL AUTO_INCREMENT,
  `姓名` varchar(255) DEFAULT NULL,
  `QQ` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`用户编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `社团` (
  `校院编号` int(255) NOT NULL COMMENT '代表那个院的社团',
  `社团编号` int(255) NOT NULL AUTO_INCREMENT COMMENT '全校唯一编号',
  `名称` varchar(255) NOT NULL COMMENT '社团名称',
  `社团头像` varchar(255) DEFAULT NULL COMMENT 'url',
  `简介` varchar(255) DEFAULT NULL,
  `等级` varchar(255) NOT NULL DEFAULT '0' COMMENT '社团等级划分',
  PRIMARY KEY (`社团编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `社团成员表` (
  `用户编号` int(255) NOT NULL,
  `姓名` varchar(255) NOT NULL,
  `性别` varchar(255) DEFAULT NULL,
  `职务编号` int(255) DEFAULT NULL,
  `联系方式` varchar(255) DEFAULT NULL COMMENT 'QQ',
  `社团编号` int(255) NOT NULL,
  PRIMARY KEY (`用户编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `社团收藏表` (
  `用户编号` int(255) NOT NULL,
  `收藏的社团编号` int(255) NOT NULL,
  PRIMARY KEY (`用户编号`,`收藏的社团编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `职务编号表` (
  `职务编号` int(255) NOT NULL,
  PRIMARY KEY (`职务编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
BEGIN;
LOCK TABLES `Demo`.`校园编号` WRITE;
DELETE FROM `Demo`.`校园编号`;
INSERT INTO `Demo`.`校园编号` (`校院编号`,`校院`) VALUES (0, '校级'),(1, '计算机学院');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `Demo`.`活动` WRITE;
DELETE FROM `Demo`.`活动`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `Demo`.`活动订阅表` WRITE;
DELETE FROM `Demo`.`活动订阅表`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `Demo`.`用户表` WRITE;
DELETE FROM `Demo`.`用户表`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `Demo`.`社团` WRITE;
DELETE FROM `Demo`.`社团`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `Demo`.`社团成员表` WRITE;
DELETE FROM `Demo`.`社团成员表`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `Demo`.`社团收藏表` WRITE;
DELETE FROM `Demo`.`社团收藏表`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `Demo`.`职务编号表` WRITE;
DELETE FROM `Demo`.`职务编号表`;
UNLOCK TABLES;
COMMIT;
