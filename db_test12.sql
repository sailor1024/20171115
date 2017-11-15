-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 10 月 21 日 04:23
-- 服务器版本: 5.6.12-log
-- PHP 版本: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `db_test12`
--
CREATE DATABASE IF NOT EXISTS `db_test12` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db_test12`;

-- --------------------------------------------------------

--
-- 表的结构 `tb_grade`
--

CREATE TABLE IF NOT EXISTS `tb_grade` (
  `xh` char(2) NOT NULL COMMENT '学号',
  `km` varchar(10) NOT NULL COMMENT '科目',
  `cj` int(11) NOT NULL COMMENT '成绩',
  PRIMARY KEY (`xh`,`km`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tb_grade`
--

INSERT INTO `tb_grade` (`xh`, `km`, `cj`) VALUES
('01', '数学', 90),
('01', '语文', 70),
('02', '数学', 85),
('02', '语文', 90),
('03', '数学', 84),
('03', '语文', 77),
('04', '数学', 90),
('04', '语文', 99),
('05', '数学', 67),
('05', '语文', 70);

-- --------------------------------------------------------

--
-- 表的结构 `tb_stuinf`
--

CREATE TABLE IF NOT EXISTS `tb_stuinf` (
  `xh` char(2) NOT NULL COMMENT '学号',
  `xm` varchar(10) NOT NULL COMMENT '姓名',
  PRIMARY KEY (`xh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tb_stuinf`
--

INSERT INTO `tb_stuinf` (`xh`, `xm`) VALUES
('01', '小陈'),
('02', '小李'),
('03', '小张'),
('04', '小王'),
('05', '小何');

-- --------------------------------------------------------

--
-- 表的结构 `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
  `user` varchar(10) NOT NULL,
  `pwd` varchar(10) NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tb_user`
--

INSERT INTO `tb_user` (`user`, `pwd`) VALUES
('tom', '123');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
