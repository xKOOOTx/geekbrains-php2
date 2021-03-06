-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- ����: 127.0.0.1
-- ����� ��������: ��� 27 2017 �., 14:42
-- ������ �������: 5.5.25
-- ������ PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- ���� ������: `geekshop`
--

-- --------------------------------------------------------

--
-- ��������� ������� `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `comments_id_uindex` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=2048 AUTO_INCREMENT=15 ;

--
-- ���� ������ ������� `comments`
--

INSERT INTO `comments` (`id`, `text`, `product_id`) VALUES
(12, '����� ��� �����', 1),
(13, '����� ��� �����', 1),
(14, 'gfdsgf ds gfds gfd', 1);

-- --------------------------------------------------------

--
-- ��������� ������� `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `preview` int(1) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=5461 AUTO_INCREMENT=14 ;

--
-- ���� ������ ������� `images`
--

INSERT INTO `images` (`id`, `product_id`, `preview`, `image`) VALUES
(10, 1, 1, 'socks.jpg'),
(11, 2, 1, 'blackShirt.jpg'),
(12, 3, 1, 'blueDenim.jpg'),
(13, 1, 0, 'socks2.jpg');

-- --------------------------------------------------------

--
-- ��������� ������� `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4096 AUTO_INCREMENT=163 ;

--
-- ���� ������ ������� `products`
--

INSERT INTO `products` (`id`, `name`, `short_description`, `description`, `price`) VALUES
(1, '�����', '������ �����', '������ 100', 20),
(2, '������ �������', '������ �������', '�� ����', 200),
(3, '�����', '����� �����', '����� �����', 2000),
(4, '�����1', '����� �����', '����� �����', 11),
(5, '�����1', '����� �����', '����� �����', 11),
(6, '�����1', '����� �����', '����� �����', 11),
(7, '�����1', '����� �����', '����� �����', 11),
(8, '�����1', '����� �����', '����� �����', 11),
(9, '�����1', '����� �����', '����� �����', 11),
(10, '�����1', '����� �����', '����� �����', 11),
(11, '�����1', '����� �����', '����� �����', 11),
(12, '�����1', '����� �����', '����� �����', 11),
(13, '�����1', '����� �����', '����� �����', 11),
(14, '�����1', '����� �����', '����� �����', 11),
(15, '�����1', '����� �����', '����� �����', 11),
(16, '�����1', '����� �����', '����� �����', 11),
(17, '�����1', '����� �����', '����� �����', 11),
(18, '�����1', '����� �����', '����� �����', 11),
(19, '�����1', '����� �����', '����� �����', 11),
(20, '�����1', '����� �����', '����� �����', 11),
(21, '�����1', '����� �����', '����� �����', 11),
(22, '�����1', '����� �����', '����� �����', 11),
(23, '�����1', '����� �����', '����� �����', 11),
(24, '�����1', '����� �����', '����� �����', 11),
(25, '�����1', '����� �����', '����� �����', 11),
(26, '�����1', '����� �����', '����� �����', 11),
(27, '�����1', '����� �����', '����� �����', 11),
(28, '�����1', '����� �����', '����� �����', 11),
(29, '�����1', '����� �����', '����� �����', 11),
(30, '�����1', '����� �����', '����� �����', 11),
(31, '�����1', '����� �����', '����� �����', 11),
(32, '�����1', '����� �����', '����� �����', 11),
(33, '�����1', '����� �����', '����� �����', 11),
(34, '�����1', '����� �����', '����� �����', 11),
(35, '�����1', '����� �����', '����� �����', 11),
(36, '�����1', '����� �����', '����� �����', 11),
(37, '�����1', '����� �����', '����� �����', 11),
(38, '�����1', '����� �����', '����� �����', 11),
(39, '�����1', '����� �����', '����� �����', 11),
(40, '�����1', '����� �����', '����� �����', 11),
(41, '�����1', '����� �����', '����� �����', 11),
(42, '�����1', '����� �����', '����� �����', 11),
(43, '�����1', '����� �����', '����� �����', 11),
(44, '�����1', '����� �����', '����� �����', 11),
(45, '�����1', '����� �����', '����� �����', 11),
(46, '�����1', '����� �����', '����� �����', 11),
(47, '�����1', '����� �����', '����� �����', 11),
(48, '�����1', '����� �����', '����� �����', 11),
(49, '�����1', '����� �����', '����� �����', 11),
(50, '�����1', '����� �����', '����� �����', 11),
(51, '�����1', '����� �����', '����� �����', 11),
(52, '�����1', '����� �����', '����� �����', 11),
(53, '�����1', '����� �����', '����� �����', 11),
(54, '�����1', '����� �����', '����� �����', 11),
(55, '�����1', '����� �����', '����� �����', 11),
(56, '�����1', '����� �����', '����� �����', 11),
(57, '�����1', '����� �����', '����� �����', 11),
(58, '�����1', '����� �����', '����� �����', 11),
(59, '�����1', '����� �����', '����� �����', 11),
(60, '�����1', '����� �����', '����� �����', 11),
(61, '�����1', '����� �����', '����� �����', 11),
(62, '�����1', '����� �����', '����� �����', 11),
(63, '�����1', '����� �����', '����� �����', 11),
(64, '�����1', '����� �����', '����� �����', 11),
(65, '�����1', '����� �����', '����� �����', 11),
(66, '�����1', '����� �����', '����� �����', 11),
(67, '�����1', '����� �����', '����� �����', 11),
(68, '�����1', '����� �����', '����� �����', 11),
(69, '�����1', '����� �����', '����� �����', 11),
(70, '�����1', '����� �����', '����� �����', 11),
(71, '�����1', '����� �����', '����� �����', 11),
(72, '�����1', '����� �����', '����� �����', 11),
(73, '�����1', '����� �����', '����� �����', 11),
(74, '�����1', '����� �����', '����� �����', 11),
(75, '�����1', '����� �����', '����� �����', 11),
(76, '�����1', '����� �����', '����� �����', 11),
(77, '�����1', '����� �����', '����� �����', 11),
(78, '�����1', '����� �����', '����� �����', 11),
(79, '�����1', '����� �����', '����� �����', 11),
(80, '�����1', '����� �����', '����� �����', 11),
(81, '�����1', '����� �����', '����� �����', 11),
(82, '�����1', '����� �����', '����� �����', 11),
(83, '�����1', '����� �����', '����� �����', 501),
(84, '�����1', '����� �����', '����� �����', 11),
(85, '�����1', '����� �����', '����� �����', 11),
(86, '�����1', '����� �����', '����� �����', 11),
(87, '�����1', '����� �����', '����� �����', 11),
(88, '�����1', '����� �����', '����� �����', 11),
(89, '�����1', '����� �����', '����� �����', 11),
(90, '�����1', '����� �����', '����� �����', 11),
(91, '�����1', '����� �����', '����� �����', 11),
(92, '�����1', '����� �����', '����� �����', 11),
(93, '�����1', '����� �����', '����� �����', 11),
(94, '�����1', '����� �����', '����� �����', 11),
(95, '�����1', '����� �����', '����� �����', 11),
(96, '�����1', '����� �����', '����� �����', 11),
(97, '�����1', '����� �����', '����� �����', 11),
(98, '�����1', '����� �����', '����� �����', 11),
(99, '�����1', '����� �����', '����� �����', 11),
(100, '�����1', '����� �����', '����� �����', 11),
(101, '�����1', '����� �����', '����� �����', 11),
(102, '�����1', '����� �����', '����� �����', 11),
(103, '�����1', '����� �����', '����� �����', 11),
(104, '�����1', '����� �����', '����� �����', 11),
(105, '�����1', '����� �����', '����� �����', 11),
(106, '�����1', '����� �����', '����� �����', 11),
(107, '�����1', '����� �����', '����� �����', 11),
(108, '�����1', '����� �����', '����� �����', 11),
(109, '�����1', '����� �����', '����� �����', 11),
(110, '�����1', '����� �����', '����� �����', 11),
(111, '�����1', '����� �����', '����� �����', 11),
(112, '�����1', '����� �����', '����� �����', 11),
(113, '�����1', '����� �����', '����� �����', 11),
(114, '�����1', '����� �����', '����� �����', 11),
(115, '�����1', '����� �����', '����� �����', 11),
(116, '�����1', '����� �����', '����� �����', 11),
(117, '�����1', '����� �����', '����� �����', 11),
(118, '�����1', '����� �����', '����� �����', 11),
(119, '�����1', '����� �����', '����� �����', 11),
(120, '�����1', '����� �����', '����� �����', 11),
(121, '�����1', '����� �����', '����� �����', 11),
(122, '�����1', '����� �����', '����� �����', 11),
(123, '�����1', '����� �����', '����� �����', 11),
(124, '�����1', '����� �����', '����� �����', 11),
(125, '�����1', '����� �����', '����� �����', 11),
(126, '�����1', '����� �����', '����� �����', 11),
(127, '�����1', '����� �����', '����� �����', 11),
(128, '�����1', '����� �����', '����� �����', 11),
(129, '�����1', '����� �����', '����� �����', 11),
(130, '�����1', '����� �����', '����� �����', 11),
(131, '�����1', '����� �����', '����� �����', 11),
(132, '�����1', '����� �����', '����� �����', 11),
(133, '�����1', '����� �����', '����� �����', 11),
(134, '�����1', '����� �����', '����� �����', 11),
(135, '�����1', '����� �����', '����� �����', 11),
(136, '�����1', '����� �����', '����� �����', 11),
(137, '�����1', '����� �����', '����� �����', 11),
(138, '�����1', '����� �����', '����� �����', 11),
(139, '�����1', '����� �����', '����� �����', 11),
(140, '�����1', '����� �����', '����� �����', 11),
(141, '�����1', '����� �����', '����� �����', 11),
(142, '�����1', '����� �����', '����� �����', 11),
(143, '�����1', '����� �����', '����� �����', 11),
(144, '�����1', '����� �����', '����� �����', 11),
(145, '�����1', '����� �����', '����� �����', 11),
(146, '�����1', '����� �����', '����� �����', 11),
(147, '�����1', '����� �����', '����� �����', 11),
(148, '�����1', '����� �����', '����� �����', 11),
(149, '�����1', '����� �����', '����� �����', 11),
(150, '�����1', '����� �����', '����� �����', 11),
(151, '�����1', '����� �����', '����� �����', 11),
(152, '�����1', '����� �����', '����� �����', 11),
(153, '�����1', '����� �����', '����� �����', 11),
(154, '�����1', '����� �����', '����� �����', 11),
(155, '�����1', '����� �����', '����� �����', 11),
(156, '�����1', '����� �����', '����� �����', 11),
(157, '�����1', '����� �����', '����� �����', 11),
(158, '�����1', '����� �����', '����� �����', 11),
(159, '�����1', '����� �����', '����� �����', 11),
(160, '�����1', '����� �����', '����� �����', 11),
(161, '�����1', '����� �����', '����� �����', 11),
(162, '�����1', '����� �����', '����� �����', 501);

-- --------------------------------------------------------

--
-- ��������� ������� `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- ���� ������ ������� `user`
--

INSERT INTO `user` (`id`, `name`, `login`, `password`) VALUES
(1, '������', 'danila', 'pass111');
