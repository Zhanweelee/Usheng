-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 12 月 04 日 13:17
-- 服务器版本: 5.5.24-log
-- PHP 版本: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `usheng`
--

-- --------------------------------------------------------

--
-- 表的结构 `us_config`
--

CREATE TABLE IF NOT EXISTS `us_config` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '网站标题',
  `description` text CHARACTER SET utf8 NOT NULL COMMENT '描述',
  `keyword` text CHARACTER SET utf8 NOT NULL COMMENT '关键字',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '备注',
  `ctime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `us_pub`
--

CREATE TABLE IF NOT EXISTS `us_pub` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '类型:0-未上传内容,1-文本,2-图片,3-视频,4-声音',
  `data` varchar(255) NOT NULL COMMENT '内容,数组存储',
  `encrypt` tinyint(1) NOT NULL COMMENT '是否加密',
  `link` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `ctime` int(11) NOT NULL COMMENT '创建时间',
  `isdel` int(11) NOT NULL COMMENT '是否删除',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `us_pub`
--

INSERT INTO `us_pub` (`pid`, `uid`, `type`, `data`, `encrypt`, `link`, `remark`, `ctime`, `isdel`) VALUES
(1, 9, 1, '{"HELLO"}', 1, 'CBA', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `us_user`
--

CREATE TABLE IF NOT EXISTS `us_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL COMMENT '油箱',
  `sex` int(11) NOT NULL COMMENT '性别(0-男生,1-女生)',
  `birth` varchar(255) NOT NULL COMMENT '出生年月日',
  `city` int(11) NOT NULL COMMENT '所在城市',
  `is_active` int(11) NOT NULL COMMENT '是否激活',
  `is_del` int(11) NOT NULL COMMENT '是否冻结',
  `ctime` int(11) NOT NULL COMMENT '注册时间',
  `last_time` int(11) NOT NULL COMMENT '最后一次操作时间',
  `level` int(11) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `us_user`
--

INSERT INTO `us_user` (`uid`, `uname`, `password`, `email`, `sex`, `birth`, `city`, `is_active`, `is_del`, `ctime`, `last_time`, `level`) VALUES
(1, 'admin', '123456', '123@123.cn', 0, '1990-01-01', 1930, 1, 0, 123, 123, 1),
(9, 'Usheng20137004', '81dc9bdb52d04dc20036dbd8313ed055', '9812263@aa.cc', 0, '', 0, 0, 0, 1386157004, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
