-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 12 月 04 日 09:33
-- 服务器版本: 5.5.24-log
-- PHP 版本: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `firechat`
--

-- --------------------------------------------------------

--
-- 表的结构 `fc_config`
--

CREATE TABLE IF NOT EXISTS `fc_config` (
  `id` int(11) NOT NULL,
  `title` int(11) NOT NULL COMMENT '网站标题',
  `description` int(11) NOT NULL COMMENT '描述',
  `keyword` int(11) NOT NULL COMMENT '关键字',
  `remark` int(11) NOT NULL COMMENT '备注',
  `ctime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `fc_publish`
--

CREATE TABLE IF NOT EXISTS `fc_publish` (
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `validTime` int(11) NOT NULL DEFAULT '10',
  `praise` int(11) NOT NULL,
  `down` int(11) NOT NULL,
  `id_del` int(11) NOT NULL,
  `ctime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `fc_user`
--

CREATE TABLE IF NOT EXISTS `fc_user` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `fc_user`
--

INSERT INTO `fc_user` (`uid`, `uname`, `password`, `email`, `sex`, `birth`, `city`, `is_active`, `is_del`, `ctime`, `last_time`, `level`) VALUES
(1, 'admin', '123456', '123@123.cn', 0, '1990-01-01', 1930, 1, 0, 123, 123, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
