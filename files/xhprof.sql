/*
 Navicat Premium Data Transfer

 Source Server         : Production.Bbnt
 Source Server Type    : MySQL
 Source Server Version : 50527
 Source Host           : bbnt-production.c46idqcnhz1y.ap-southeast-2.rds.amazonaws.com
 Source Database       : xhprof

 Target Server Type    : MySQL
 Target Server Version : 50527
 File Encoding         : utf-8

 Date: 11/21/2013 11:50:43 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `details`
-- ----------------------------
DROP TABLE IF EXISTS `details`;
CREATE TABLE `details` (
  `id` char(17) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `c_url` varchar(255) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `server name` varchar(64) DEFAULT NULL,
  `perfdata` mediumblob,
  `type` tinyint(4) DEFAULT NULL,
  `cookie` blob,
  `post` blob,
  `get` blob,
  `pmu` int(11) unsigned DEFAULT NULL,
  `wt` int(11) unsigned DEFAULT NULL,
  `cpu` int(11) unsigned DEFAULT NULL,
  `server_id` char(3) NOT NULL DEFAULT 't11',
  `aggregateCalls_include` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `url` (`url`),
  KEY `c_url` (`c_url`),
  KEY `cpu` (`cpu`),
  KEY `wt` (`wt`),
  KEY `pmu` (`pmu`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
