-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/10/2026 às 15:09
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_escola`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

DROP TABLE IF EXISTS `alunos`;
CREATE TABLE `alunos` (
  `ID_Aluno` int(10) NOT NULL,
  `Data_de_nascimento` date DEFAULT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `ID_Rua` int(10) DEFAULT NULL,
  `ID_Info` int(10) DEFAULT NULL,
  `ID_Matricula` int(10) DEFAULT NULL,
  `ID_Turma` int(11) DEFAULT NULL,
  `status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`ID_Aluno`, `Data_de_nascimento`, `Nome`, `ID_Rua`, `ID_Info`, `ID_Matricula`, `ID_Turma`, `status`) VALUES
(3, '2005-01-13', 'Aluno 1', 2, 26, 1, 1, '1'),
(4, '2005-06-09', 'Aluno 2', 3, 27, 2, 2, '1'),
(5, '2002-01-29', 'Aluno 3', 4, 28, 3, 3, '1'),
(6, '2004-01-30', 'Aluno 4', 5, 29, 4, 4, '1'),
(7, '2004-03-02', 'Aluno 5', 6, 30, 5, 5, '1'),
(8, '2008-08-04', 'Aluno 6', 7, 31, 6, 1, '1'),
(9, '2000-06-15', 'Aluno 7', 8, 32, 7, 2, '1'),
(10, '2006-07-06', 'Aluno 8', 9, 33, 8, 3, '1'),
(11, '2001-03-08', 'Aluno 9', 10, 34, 9, 4, '1'),
(12, '2006-05-23', 'Aluno 10', 11, 35, 10, 5, '1'),
(13, '2008-05-26', 'Aluno 11', 12, 36, 11, 1, '1'),
(14, '2002-10-31', 'Aluno 12', 13, 37, 12, 2, '1'),
(15, '2008-12-16', 'Aluno 13', 14, 38, 13, 3, '1'),
(16, '2006-04-20', 'Aluno 14', 15, 39, 14, 4, '1'),
(17, '2004-08-14', 'Aluno 15', 16, 40, 15, 5, '1'),
(18, '2004-03-14', 'Aluno 16', 17, 41, 16, 1, '1'),
(19, '2007-02-20', 'Aluno 17', 18, 42, 17, 2, '1'),
(20, '2003-02-03', 'Aluno 18', 19, 43, 18, 3, '1'),
(21, '2004-01-15', 'Aluno 19', 20, 44, 19, 4, '1'),
(22, '2000-12-05', 'Aluno 20', 21, 45, 20, 5, '1'),
(23, '2002-07-10', 'Aluno 21', 22, 46, 21, 1, '1'),
(24, '2009-10-30', 'Aluno 22', 23, 47, 22, 2, '1'),
(25, '2001-07-30', 'Aluno 23', 24, 48, 23, 3, '1'),
(26, '2008-05-27', 'Aluno 24', 25, 49, 24, 4, '1'),
(27, '2007-04-12', 'Aluno 25', 26, 50, 25, 5, '1'),
(28, '2001-03-06', 'Aluno 26', 27, 51, 26, 1, '1'),
(29, '2004-01-25', 'Aluno 27', 28, 52, 27, 2, '1'),
(30, '2006-10-17', 'Aluno 28', 29, 53, 28, 3, '1'),
(31, '2001-10-08', 'Aluno 29', 30, 54, 29, 4, '1'),
(32, '2008-06-21', 'Aluno 30', 1, 55, 30, 5, '1'),
(33, '2007-01-16', 'Aluno 31', 2, 56, 31, 1, '1'),
(34, '2009-10-20', 'Aluno 32', 3, 57, 32, 2, '1'),
(35, '2007-11-18', 'Aluno 33', 4, 58, 33, 3, '1'),
(36, '2009-12-30', 'Aluno 34', 5, 59, 34, 4, '1'),
(37, '2006-05-04', 'Aluno 35', 6, 60, 35, 5, '1'),
(38, '2001-09-16', 'Aluno 36', 7, 61, 36, 1, '1'),
(39, '2009-07-10', 'Aluno 37', 8, 62, 37, 2, '1'),
(40, '2002-06-29', 'Aluno 38', 9, 63, 38, 3, '1'),
(41, '2003-11-23', 'Aluno 39', 10, 64, 39, 4, '1'),
(42, '2001-12-30', 'Aluno 40', 11, 65, 40, 5, '1'),
(43, '2008-04-19', 'Aluno 41', 12, 66, 41, 1, '1'),
(44, '2005-07-02', 'Aluno 42', 13, 67, 42, 2, '1'),
(45, '2002-08-13', 'Aluno 43', 14, 68, 43, 3, '1'),
(46, '2006-07-26', 'Aluno 44', 15, 69, 44, 4, '1'),
(47, '2004-12-26', 'Aluno 45', 16, 70, 45, 5, '1'),
(48, '2005-03-27', 'Aluno 46', 17, 71, 46, 1, '1'),
(49, '2001-03-22', 'Aluno 47', 18, 72, 47, 2, '1'),
(50, '2000-05-24', 'Aluno 48', 19, 73, 48, 3, '1'),
(51, '2008-04-27', 'Aluno 49', 20, 74, 49, 4, '1'),
(52, '2000-05-30', 'Aluno 50', 21, 75, 50, 5, '1'),
(53, '2007-02-07', 'Aluno 51', 22, 76, 51, 1, '1'),
(54, '2004-04-09', 'Aluno 52', 23, 77, 52, 2, '1'),
(55, '2000-01-19', 'Aluno 53', 24, 78, 53, 3, '1'),
(56, '2007-06-11', 'Aluno 54', 25, 79, 54, 4, '1'),
(57, '2007-01-21', 'Aluno 55', 26, 80, 55, 5, '1'),
(58, '2002-12-15', 'Aluno 56', 27, 81, 56, 1, '1'),
(59, '2003-08-12', 'Aluno 57', 28, 82, 57, 2, '1'),
(60, '2009-03-10', 'Aluno 58', 29, 83, 58, 3, '1'),
(61, '2005-02-08', 'Aluno 59', 30, 84, 59, 4, '1'),
(62, '2007-12-19', 'Aluno 60', 1, 85, 60, 5, '1'),
(63, '2004-07-03', 'Aluno 61', 2, 86, 61, 1, '1'),
(64, '2008-08-18', 'Aluno 62', 3, 87, 62, 2, '1'),
(65, '2009-08-21', 'Aluno 63', 4, 88, 63, 3, '1'),
(66, '2002-04-17', 'Aluno 64', 5, 89, 64, 4, '1'),
(67, '2002-07-22', 'Aluno 65', 6, 90, 65, 5, '1'),
(68, '2005-11-23', 'Aluno 66', 7, 91, 66, 1, '1'),
(69, '2001-10-21', 'Aluno 67', 8, 92, 67, 2, '1'),
(70, '2001-05-07', 'Aluno 68', 9, 93, 68, 3, '1'),
(71, '2001-04-28', 'Aluno 69', 10, 94, 69, 4, '1'),
(72, '2002-07-30', 'Aluno 70', 11, 95, 70, 5, '1'),
(73, '2008-12-01', 'Aluno 71', 12, 96, 71, 1, '1'),
(74, '2006-11-05', 'Aluno 72', 13, 97, 72, 2, '1'),
(75, '2007-06-25', 'Aluno 73', 14, 98, 73, 3, '1'),
(76, '2006-11-13', 'Aluno 74', 15, 99, 74, 4, '1'),
(77, '2001-11-21', 'Aluno 75', 16, 100, 75, 5, '1'),
(78, '2008-11-05', 'Aluno 76', 17, 101, 76, 1, '1'),
(79, '2008-07-26', 'Aluno 77', 18, 102, 77, 2, '1'),
(80, '2006-04-16', 'Aluno 78', 19, 103, 78, 3, '1'),
(81, '2005-09-29', 'Aluno 79', 20, 104, 79, 4, '1'),
(82, '2009-11-10', 'Aluno 80', 21, 105, 80, 5, '1'),
(83, '2002-01-22', 'Aluno 81', 22, 106, 81, 1, '1'),
(84, '2000-09-20', 'Aluno 82', 23, 107, 82, 2, '1'),
(85, '2007-06-06', 'Aluno 83', 24, 108, 83, 3, '1'),
(86, '2004-12-24', 'Aluno 84', 25, 109, 84, 4, '1'),
(87, '2002-08-13', 'Aluno 85', 26, 110, 85, 5, '1'),
(88, '2008-02-19', 'Aluno 86', 27, 111, 86, 1, '1'),
(89, '2002-10-28', 'Aluno 87', 28, 112, 87, 2, '1'),
(90, '2009-09-19', 'Aluno 88', 29, 113, 88, 3, '1'),
(91, '2000-02-11', 'Aluno 89', 30, 114, 89, 4, '1'),
(92, '2001-06-02', 'Aluno 90', 1, 115, 90, 5, '1'),
(93, '2006-10-03', 'Aluno 91', 2, 116, 91, 1, '1'),
(94, '2009-07-09', 'Aluno 92', 3, 117, 92, 2, '1'),
(95, '2007-05-02', 'Aluno 93', 4, 118, 93, 3, '1'),
(96, '2008-02-08', 'Aluno 94', 5, 119, 94, 4, '1'),
(97, '2008-07-11', 'Aluno 95', 6, 120, 95, 5, '1'),
(98, '2008-04-25', 'Aluno 96', 7, 121, 96, 1, '1'),
(99, '2005-12-31', 'Aluno 97', 8, 122, 97, 2, '1'),
(100, '2005-01-17', 'Aluno 98', 9, 123, 98, 3, '1'),
(101, '2007-03-29', 'Aluno 99', 10, 124, 99, 4, '1'),
(102, '2001-01-21', 'Aluno 100', 11, 125, 100, 5, '1'),
(103, '2003-07-26', 'Aluno 101', 12, 126, 101, 1, '1'),
(104, '2004-08-27', 'Aluno 102', 13, 127, 102, 2, '1'),
(105, '2002-08-01', 'Aluno 103', 14, 128, 103, 3, '1'),
(106, '2008-12-12', 'Aluno 104', 15, 129, 104, 4, '1'),
(107, '2006-12-28', 'Aluno 105', 16, 130, 105, 5, '1'),
(108, '2008-02-10', 'Aluno 106', 17, 131, 106, 1, '1'),
(109, '2009-08-01', 'Aluno 107', 18, 132, 107, 2, '1'),
(110, '2003-07-29', 'Aluno 108', 19, 133, 108, 3, '1'),
(111, '2009-02-15', 'Aluno 109', 20, 134, 109, 4, '1'),
(112, '2004-11-26', 'Aluno 110', 21, 135, 110, 5, '1'),
(113, '2007-02-25', 'Aluno 111', 22, 136, 111, 1, '1'),
(114, '2001-01-13', 'Aluno 112', 23, 137, 112, 2, '1'),
(115, '2003-09-25', 'Aluno 113', 24, 138, 113, 3, '1'),
(116, '2005-07-21', 'Aluno 114', 25, 139, 114, 4, '1'),
(117, '2006-07-24', 'Aluno 115', 26, 140, 115, 5, '1'),
(118, '2006-02-24', 'Aluno 116', 27, 141, 116, 1, '1'),
(119, '2001-01-25', 'Aluno 117', 28, 142, 117, 2, '1'),
(120, '2006-11-22', 'Aluno 118', 29, 143, 118, 3, '1'),
(121, '2001-04-03', 'Aluno 119', 30, 144, 119, 4, '1'),
(122, '2005-08-08', 'Aluno 120', 1, 145, 120, 5, '1'),
(123, '2004-03-29', 'Aluno 121', 2, 146, 121, 1, '1'),
(124, '2004-05-25', 'Aluno 122', 3, 147, 122, 2, '1'),
(125, '2009-04-07', 'Aluno 123', 4, 148, 123, 3, '1'),
(126, '2003-02-19', 'Aluno 124', 5, 149, 124, 4, '1'),
(127, '2007-11-18', 'Aluno 125', 6, 150, 125, 5, '1'),
(128, '2009-12-29', 'Aluno 126', 7, 151, 126, 1, '1'),
(129, '2006-05-01', 'Aluno 127', 8, 152, 127, 2, '1'),
(130, '2001-09-03', 'Aluno 128', 9, 153, 128, 3, '1'),
(131, '2009-05-19', 'Aluno 129', 10, 154, 129, 4, '1'),
(132, '2001-11-15', 'Aluno 130', 11, 155, 130, 5, '1'),
(133, '2001-03-26', 'Aluno 131', 12, 156, 131, 1, '1'),
(134, '2000-07-18', 'Aluno 132', 13, 157, 132, 2, '1'),
(135, '2009-01-11', 'Aluno 133', 14, 158, 133, 3, '1'),
(136, '2003-07-04', 'Aluno 134', 15, 159, 134, 4, '1'),
(137, '2000-06-11', 'Aluno 135', 16, 160, 135, 5, '1'),
(138, '2001-09-15', 'Aluno 136', 17, 161, 136, 1, '1'),
(139, '2007-03-16', 'Aluno 137', 18, 162, 137, 2, '1'),
(140, '2000-11-21', 'Aluno 138', 19, 163, 138, 3, '1'),
(141, '2002-11-04', 'Aluno 139', 20, 164, 139, 4, '1'),
(142, '2001-07-17', 'Aluno 140', 21, 165, 140, 5, '1'),
(143, '2009-03-07', 'Aluno 141', 22, 166, 141, 1, '1'),
(144, '2001-04-09', 'Aluno 142', 23, 167, 142, 2, '1'),
(145, '2008-10-27', 'Aluno 143', 24, 168, 143, 3, '1'),
(146, '2000-04-18', 'Aluno 144', 25, 169, 144, 4, '1'),
(147, '2005-01-06', 'Aluno 145', 26, 170, 145, 5, '1'),
(148, '2004-03-09', 'Aluno 146', 27, 171, 146, 1, '1'),
(149, '2005-11-20', 'Aluno 147', 28, 172, 147, 2, '1'),
(150, '2006-11-17', 'Aluno 148', 29, 173, 148, 3, '1'),
(151, '2006-09-23', 'Aluno 149', 30, 174, 149, 4, '1'),
(152, '2003-01-03', 'Aluno 150', 1, 175, 150, 5, '1'),
(153, '2004-11-06', 'Aluno 151', 2, 176, 151, 1, '1'),
(154, '2005-03-23', 'Aluno 152', 3, 177, 152, 2, '1'),
(155, '2001-07-27', 'Aluno 153', 4, 178, 153, 3, '1'),
(156, '2002-03-09', 'Aluno 154', 5, 179, 154, 4, '1'),
(157, '2006-03-20', 'Aluno 155', 6, 180, 155, 5, '1'),
(158, '2004-07-08', 'Aluno 156', 7, 181, 156, 1, '1'),
(159, '2003-12-11', 'Aluno 157', 8, 182, 157, 2, '1'),
(160, '2006-03-03', 'Aluno 158', 9, 183, 158, 3, '1'),
(161, '2009-01-04', 'Aluno 159', 10, 184, 159, 4, '1'),
(162, '2006-07-18', 'Aluno 160', 11, 185, 160, 5, '1'),
(163, '2005-09-11', 'Aluno 161', 12, 186, 161, 1, '1'),
(164, '2008-11-03', 'Aluno 162', 13, 187, 162, 2, '1'),
(165, '2007-02-14', 'Aluno 163', 14, 188, 163, 3, '1'),
(166, '2009-01-31', 'Aluno 164', 15, 189, 164, 4, '1'),
(167, '2004-01-20', 'Aluno 165', 16, 190, 165, 5, '1'),
(168, '2003-01-03', 'Aluno 166', 17, 191, 166, 1, '1'),
(169, '2002-11-20', 'Aluno 167', 18, 192, 167, 2, '1'),
(170, '2005-05-30', 'Aluno 168', 19, 193, 168, 3, '1'),
(171, '2008-05-23', 'Aluno 169', 20, 194, 169, 4, '1'),
(172, '2005-09-22', 'Aluno 170', 21, 195, 170, 5, '1'),
(173, '2003-06-13', 'Aluno 171', 22, 196, 171, 1, '1'),
(174, '2000-01-25', 'Aluno 172', 23, 197, 172, 2, '1'),
(175, '2009-12-29', 'Aluno 173', 24, 198, 173, 3, '1'),
(176, '2009-10-08', 'Aluno 174', 25, 199, 174, 4, '1'),
(177, '2008-11-09', 'Aluno 175', 26, 200, 175, 5, '1'),
(178, '2004-12-23', 'Aluno 176', 27, 201, 176, 1, '1'),
(179, '2008-04-28', 'Aluno 177', 28, 202, 177, 2, '1'),
(180, '2006-09-08', 'Aluno 178', 29, 203, 178, 3, '1'),
(181, '2008-06-16', 'Aluno 179', 30, 204, 179, 4, '1'),
(182, '2002-03-26', 'Aluno 180', 1, 205, 180, 5, '1'),
(183, '2005-10-14', 'Aluno 181', 2, 206, 181, 1, '1'),
(184, '2002-03-25', 'Aluno 182', 3, 207, 182, 2, '1'),
(185, '2003-10-17', 'Aluno 183', 4, 208, 183, 3, '1'),
(186, '2002-04-09', 'Aluno 184', 5, 209, 184, 4, '1'),
(187, '2009-12-22', 'Aluno 185', 6, 210, 185, 5, '1'),
(188, '2003-01-23', 'Aluno 186', 7, 211, 186, 1, '1'),
(189, '2005-05-19', 'Aluno 187', 8, 212, 187, 2, '1'),
(190, '2007-09-22', 'Aluno 188', 9, 213, 188, 3, '1'),
(191, '2002-06-23', 'Aluno 189', 10, 214, 189, 4, '1'),
(192, '2009-03-18', 'Aluno 190', 11, 215, 190, 5, '1'),
(193, '2008-08-15', 'Aluno 191', 12, 216, 191, 1, '1'),
(194, '2005-06-23', 'Aluno 192', 13, 217, 192, 2, '1'),
(195, '2001-07-08', 'Aluno 193', 14, 218, 193, 3, '1'),
(196, '2001-02-27', 'Aluno 194', 15, 219, 194, 4, '1'),
(197, '2001-03-29', 'Aluno 195', 16, 220, 195, 5, '1'),
(198, '2002-09-26', 'Aluno 196', 17, 221, 196, 1, '1'),
(199, '2009-12-15', 'Aluno 197', 18, 222, 197, 2, '1'),
(200, '2001-07-24', 'Aluno 198', 19, 223, 198, 3, '1'),
(201, '2007-12-11', 'Aluno 199', 20, 224, 199, 4, '1'),
(202, '2005-01-13', 'Aluno 200', 21, 225, 200, 5, '1'),
(203, '2001-05-07', 'Aluno 201', 22, 226, 201, 1, '1'),
(204, '2001-08-18', 'Aluno 202', 23, 227, 202, 2, '1'),
(205, '2004-02-10', 'Aluno 203', 24, 228, 203, 3, '1'),
(206, '2005-08-30', 'Aluno 204', 25, 229, 204, 4, '1'),
(207, '2005-12-22', 'Aluno 205', 26, 230, 205, 5, '1'),
(208, '2002-11-22', 'Aluno 206', 27, 231, 206, 1, '1'),
(209, '2006-07-14', 'Aluno 207', 28, 232, 207, 2, '1'),
(210, '2003-12-30', 'Aluno 208', 29, 233, 208, 3, '1'),
(211, '2000-05-15', 'Aluno 209', 30, 234, 209, 4, '1'),
(212, '2009-11-15', 'Aluno 210', 1, 235, 210, 5, '1'),
(213, '2008-03-31', 'Aluno 211', 2, 236, 211, 1, '1'),
(214, '2001-08-13', 'Aluno 212', 3, 237, 212, 2, '1'),
(215, '2003-05-05', 'Aluno 213', 4, 238, 213, 3, '1'),
(216, '2001-11-11', 'Aluno 214', 5, 239, 214, 4, '1'),
(217, '2009-04-14', 'Aluno 215', 6, 240, 215, 5, '1'),
(218, '2000-11-01', 'Aluno 216', 7, 241, 216, 1, '1'),
(219, '2006-04-28', 'Aluno 217', 8, 242, 217, 2, '1'),
(220, '2009-02-07', 'Aluno 218', 9, 243, 218, 3, '1'),
(221, '2006-07-23', 'Aluno 219', 10, 244, 219, 4, '1'),
(222, '2005-06-21', 'Aluno 220', 11, 245, 220, 5, '1'),
(223, '2007-09-08', 'Aluno 221', 12, 246, 221, 1, '1'),
(224, '2002-01-04', 'Aluno 222', 13, 247, 222, 2, '1'),
(225, '2006-12-31', 'Aluno 223', 14, 248, 223, 3, '1'),
(226, '2008-12-18', 'Aluno 224', 15, 249, 224, 4, '1'),
(227, '2003-10-27', 'Aluno 225', 16, 250, 225, 5, '1'),
(228, '2002-03-20', 'Aluno 226', 17, 251, 226, 1, '1'),
(229, '2009-08-12', 'Aluno 227', 18, 252, 227, 2, '1'),
(230, '2001-05-31', 'Aluno 228', 19, 253, 228, 3, '1'),
(231, '2008-03-27', 'Aluno 229', 20, 254, 229, 4, '1'),
(232, '2006-12-08', 'Aluno 230', 21, 255, 230, 5, '1'),
(233, '2009-12-20', 'Aluno 231', 22, 256, 231, 1, '1'),
(234, '2009-01-13', 'Aluno 232', 23, 257, 232, 2, '1'),
(235, '2005-04-11', 'Aluno 233', 24, 258, 233, 3, '1'),
(236, '2009-04-08', 'Aluno 234', 25, 259, 234, 4, '1'),
(237, '2000-07-08', 'Aluno 235', 26, 260, 235, 5, '1'),
(238, '2004-10-12', 'Aluno 236', 27, 261, 236, 1, '1'),
(239, '2002-05-11', 'Aluno 237', 28, 262, 237, 2, '1'),
(240, '2007-06-10', 'Aluno 238', 29, 263, 238, 3, '1'),
(241, '2000-02-15', 'Aluno 239', 30, 264, 239, 4, '1'),
(242, '2008-04-21', 'Aluno 240', 1, 265, 240, 5, '1'),
(243, '2001-02-22', 'Aluno 241', 2, 266, 241, 1, '1'),
(244, '2000-10-27', 'Aluno 242', 3, 267, 242, 2, '1'),
(245, '2000-09-01', 'Aluno 243', 4, 268, 243, 3, '1'),
(246, '2000-11-17', 'Aluno 244', 5, 269, 244, 4, '1'),
(247, '2002-05-23', 'Aluno 245', 6, 270, 245, 5, '1'),
(248, '2009-04-26', 'Aluno 246', 7, 271, 246, 1, '1'),
(249, '2009-05-31', 'Aluno 247', 8, 272, 247, 2, '1'),
(250, '2009-02-10', 'Aluno 248', 9, 273, 248, 3, '1'),
(251, '2007-04-27', 'Aluno 249', 10, 274, 249, 4, '1'),
(252, '2009-04-06', 'Aluno 250', 11, 275, 250, 5, '1');

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos_responsaveis`
--

DROP TABLE IF EXISTS `alunos_responsaveis`;
CREATE TABLE `alunos_responsaveis` (
  `ID_Aluno` int(10) DEFAULT NULL,
  `ID_Responsavel` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `avaliacoes`
--

DROP TABLE IF EXISTS `avaliacoes`;
CREATE TABLE `avaliacoes` (
  `ID_Avaliacao` int(10) NOT NULL,
  `Descricao` varchar(300) DEFAULT NULL,
  `Data` date DEFAULT NULL,
  `Valor` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `avaliacoes`
--

INSERT INTO `avaliacoes` (`ID_Avaliacao`, `Descricao`, `Data`, `Valor`) VALUES
(1, 'Prova Bimestral 1 - Teorias da Administração', '2026-04-15', 3.00),
(2, 'Trabalho 1 - Teorias da Administração', '2026-05-10', 2.00),
(3, 'Prova Bimestral 2 - Teorias da Administração', '2026-06-18', 3.00),
(4, 'Projeto Final - Teorias da Administração', '2026-06-30', 2.00),
(5, 'Prova Bimestral 1 - Gestão de Pessoas', '2026-04-15', 3.00),
(6, 'Trabalho 1 - Gestão de Pessoas', '2026-05-10', 2.00),
(7, 'Prova Bimestral 2 - Gestão de Pessoas', '2026-06-18', 3.00),
(8, 'Projeto Final - Gestão de Pessoas', '2026-06-30', 2.00),
(9, 'Prova Bimestral 1 - Contabilidade Geral', '2026-04-15', 3.00),
(10, 'Trabalho 1 - Contabilidade Geral', '2026-05-10', 2.00),
(11, 'Prova Bimestral 2 - Contabilidade Geral', '2026-06-18', 3.00),
(12, 'Projeto Final - Contabilidade Geral', '2026-06-30', 2.00),
(13, 'Prova Bimestral 1 - Gestão Financeira', '2026-04-15', 3.00),
(14, 'Trabalho 1 - Gestão Financeira', '2026-05-10', 2.00),
(15, 'Prova Bimestral 2 - Gestão Financeira', '2026-06-18', 3.00),
(16, 'Projeto Final - Gestão Financeira', '2026-06-30', 2.00),
(17, 'Prova Bimestral 1 - Administração Mercadológica', '2026-04-15', 3.00),
(18, 'Trabalho 1 - Administração Mercadológica', '2026-05-10', 2.00),
(19, 'Prova Bimestral 2 - Administração Mercadológica', '2026-06-18', 3.00),
(20, 'Projeto Final - Administração Mercadológica', '2026-06-30', 2.00),
(21, 'Prova Bimestral 1 - Planejamento Estratégico', '2026-04-15', 3.00),
(22, 'Trabalho 1 - Planejamento Estratégico', '2026-05-10', 2.00),
(23, 'Prova Bimestral 2 - Planejamento Estratégico', '2026-06-18', 3.00),
(24, 'Projeto Final - Planejamento Estratégico', '2026-06-30', 2.00),
(25, 'Prova Bimestral 1 - Logística e Cadeia de Suprimentos', '2026-04-15', 3.00),
(26, 'Trabalho 1 - Logística e Cadeia de Suprimentos', '2026-05-10', 2.00),
(27, 'Prova Bimestral 2 - Logística e Cadeia de Suprimentos', '2026-06-18', 3.00),
(28, 'Projeto Final - Logística e Cadeia de Suprimentos', '2026-06-30', 2.00),
(29, 'Prova Bimestral 1 - Direito Empresarial', '2026-04-15', 3.00),
(30, 'Trabalho 1 - Direito Empresarial', '2026-05-10', 2.00),
(31, 'Prova Bimestral 2 - Direito Empresarial', '2026-06-18', 3.00),
(32, 'Projeto Final - Direito Empresarial', '2026-06-30', 2.00),
(33, 'Prova Bimestral 1 - Comportamento Organizacional', '2026-04-15', 3.00),
(34, 'Trabalho 1 - Comportamento Organizacional', '2026-05-10', 2.00),
(35, 'Prova Bimestral 2 - Comportamento Organizacional', '2026-06-18', 3.00),
(36, 'Projeto Final - Comportamento Organizacional', '2026-06-30', 2.00),
(37, 'Prova Bimestral 1 - Ética e Responsabilidade Social', '2026-04-15', 3.00),
(38, 'Trabalho 1 - Ética e Responsabilidade Social', '2026-05-10', 2.00),
(39, 'Prova Bimestral 2 - Ética e Responsabilidade Social', '2026-06-18', 3.00),
(40, 'Projeto Final - Ética e Responsabilidade Social', '2026-06-30', 2.00),
(41, 'Prova Bimestral 1 - Cálculo Diferencial e Integral', '2026-04-15', 3.00),
(42, 'Trabalho 1 - Cálculo Diferencial e Integral', '2026-05-10', 2.00),
(43, 'Prova Bimestral 2 - Cálculo Diferencial e Integral', '2026-06-18', 3.00),
(44, 'Projeto Final - Cálculo Diferencial e Integral', '2026-06-30', 2.00),
(45, 'Prova Bimestral 1 - Algoritmos e Programação', '2026-04-15', 3.00),
(46, 'Trabalho 1 - Algoritmos e Programação', '2026-05-10', 2.00),
(47, 'Prova Bimestral 2 - Algoritmos e Programação', '2026-06-18', 3.00),
(48, 'Projeto Final - Algoritmos e Programação', '2026-06-30', 2.00),
(49, 'Prova Bimestral 1 - Estrutura de Dados', '2026-04-15', 3.00),
(50, 'Trabalho 1 - Estrutura de Dados', '2026-05-10', 2.00),
(51, 'Prova Bimestral 2 - Estrutura de Dados', '2026-06-18', 3.00),
(52, 'Projeto Final - Estrutura de Dados', '2026-06-30', 2.00),
(53, 'Prova Bimestral 1 - Engenharia de Software', '2026-04-15', 3.00),
(54, 'Trabalho 1 - Engenharia de Software', '2026-05-10', 2.00),
(55, 'Prova Bimestral 2 - Engenharia de Software', '2026-06-18', 3.00),
(56, 'Projeto Final - Engenharia de Software', '2026-06-30', 2.00),
(57, 'Prova Bimestral 1 - Arquitetura de Computadores', '2026-04-15', 3.00),
(58, 'Trabalho 1 - Arquitetura de Computadores', '2026-05-10', 2.00),
(59, 'Prova Bimestral 2 - Arquitetura de Computadores', '2026-06-18', 3.00),
(60, 'Projeto Final - Arquitetura de Computadores', '2026-06-30', 2.00),
(61, 'Prova Bimestral 1 - Sistemas Operacionais', '2026-04-15', 3.00),
(62, 'Trabalho 1 - Sistemas Operacionais', '2026-05-10', 2.00),
(63, 'Prova Bimestral 2 - Sistemas Operacionais', '2026-06-18', 3.00),
(64, 'Projeto Final - Sistemas Operacionais', '2026-06-30', 2.00),
(65, 'Prova Bimestral 1 - Redes de Computadores', '2026-04-15', 3.00),
(66, 'Trabalho 1 - Redes de Computadores', '2026-05-10', 2.00),
(67, 'Prova Bimestral 2 - Redes de Computadores', '2026-06-18', 3.00),
(68, 'Projeto Final - Redes de Computadores', '2026-06-30', 2.00),
(69, 'Prova Bimestral 1 - Banco de Dados', '2026-04-15', 3.00),
(70, 'Trabalho 1 - Banco de Dados', '2026-05-10', 2.00),
(71, 'Prova Bimestral 2 - Banco de Dados', '2026-06-18', 3.00),
(72, 'Projeto Final - Banco de Dados', '2026-06-30', 2.00),
(73, 'Prova Bimestral 1 - Inteligência Artificial', '2026-04-15', 3.00),
(74, 'Trabalho 1 - Inteligência Artificial', '2026-05-10', 2.00),
(75, 'Prova Bimestral 2 - Inteligência Artificial', '2026-06-18', 3.00),
(76, 'Projeto Final - Inteligência Artificial', '2026-06-30', 2.00),
(77, 'Prova Bimestral 1 - Segurança da Informação', '2026-04-15', 3.00),
(78, 'Trabalho 1 - Segurança da Informação', '2026-05-10', 2.00),
(79, 'Prova Bimestral 2 - Segurança da Informação', '2026-06-18', 3.00),
(80, 'Projeto Final - Segurança da Informação', '2026-06-30', 2.00),
(81, 'Prova Bimestral 1 - História da Psicologia', '2026-04-15', 3.00),
(82, 'Trabalho 1 - História da Psicologia', '2026-05-10', 2.00),
(83, 'Prova Bimestral 2 - História da Psicologia', '2026-06-18', 3.00),
(84, 'Projeto Final - História da Psicologia', '2026-06-30', 2.00),
(85, 'Prova Bimestral 1 - Psicologia Social', '2026-04-15', 3.00),
(86, 'Trabalho 1 - Psicologia Social', '2026-05-10', 2.00),
(87, 'Prova Bimestral 2 - Psicologia Social', '2026-06-18', 3.00),
(88, 'Projeto Final - Psicologia Social', '2026-06-30', 2.00),
(89, 'Prova Bimestral 1 - Psicologia do Desenvolvimento', '2026-04-15', 3.00),
(90, 'Trabalho 1 - Psicologia do Desenvolvimento', '2026-05-10', 2.00),
(91, 'Prova Bimestral 2 - Psicologia do Desenvolvimento', '2026-06-18', 3.00),
(92, 'Projeto Final - Psicologia do Desenvolvimento', '2026-06-30', 2.00),
(93, 'Prova Bimestral 1 - Neuroanatomia', '2026-04-15', 3.00),
(94, 'Trabalho 1 - Neuroanatomia', '2026-05-10', 2.00),
(95, 'Prova Bimestral 2 - Neuroanatomia', '2026-06-18', 3.00),
(96, 'Projeto Final - Neuroanatomia', '2026-06-30', 2.00),
(97, 'Prova Bimestral 1 - Psicopatologia', '2026-04-15', 3.00),
(98, 'Trabalho 1 - Psicopatologia', '2026-05-10', 2.00),
(99, 'Prova Bimestral 2 - Psicopatologia', '2026-06-18', 3.00),
(100, 'Projeto Final - Psicopatologia', '2026-06-30', 2.00),
(101, 'Prova Bimestral 1 - Teorias da Personalidade', '2026-04-15', 3.00),
(102, 'Trabalho 1 - Teorias da Personalidade', '2026-05-10', 2.00),
(103, 'Prova Bimestral 2 - Teorias da Personalidade', '2026-06-18', 3.00),
(104, 'Projeto Final - Teorias da Personalidade', '2026-06-30', 2.00),
(105, 'Prova Bimestral 1 - Técnicas de Avaliação Psicológica', '2026-04-15', 3.00),
(106, 'Trabalho 1 - Técnicas de Avaliação Psicológica', '2026-05-10', 2.00),
(107, 'Prova Bimestral 2 - Técnicas de Avaliação Psicológica', '2026-06-18', 3.00),
(108, 'Projeto Final - Técnicas de Avaliação Psicológica', '2026-06-30', 2.00),
(109, 'Prova Bimestral 1 - Psicologia Hospitalar', '2026-04-15', 3.00),
(110, 'Trabalho 1 - Psicologia Hospitalar', '2026-05-10', 2.00),
(111, 'Prova Bimestral 2 - Psicologia Hospitalar', '2026-06-18', 3.00),
(112, 'Projeto Final - Psicologia Hospitalar', '2026-06-30', 2.00),
(113, 'Prova Bimestral 1 - Psicoterapia Clínicas', '2026-04-15', 3.00),
(114, 'Trabalho 1 - Psicoterapia Clínicas', '2026-05-10', 2.00),
(115, 'Prova Bimestral 2 - Psicoterapia Clínicas', '2026-06-18', 3.00),
(116, 'Projeto Final - Psicoterapia Clínicas', '2026-06-30', 2.00),
(117, 'Prova Bimestral 1 - Análise do Comportamento', '2026-04-15', 3.00),
(118, 'Trabalho 1 - Análise do Comportamento', '2026-05-10', 2.00),
(119, 'Prova Bimestral 2 - Análise do Comportamento', '2026-06-18', 3.00),
(120, 'Projeto Final - Análise do Comportamento', '2026-06-30', 2.00),
(121, 'Prova Bimestral 1 - Geometria Analítica e Álgebra Linear', '2026-04-15', 3.00),
(122, 'Trabalho 1 - Geometria Analítica e Álgebra Linear', '2026-05-10', 2.00),
(123, 'Prova Bimestral 2 - Geometria Analítica e Álgebra Linear', '2026-06-18', 3.00),
(124, 'Projeto Final - Geometria Analítica e Álgebra Linear', '2026-06-30', 2.00),
(125, 'Prova Bimestral 1 - Física Mecânica', '2026-04-15', 3.00),
(126, 'Trabalho 1 - Física Mecânica', '2026-05-10', 2.00),
(127, 'Prova Bimestral 2 - Física Mecânica', '2026-06-18', 3.00),
(128, 'Projeto Final - Física Mecânica', '2026-06-30', 2.00),
(129, 'Prova Bimestral 1 - Topografia', '2026-04-15', 3.00),
(130, 'Trabalho 1 - Topografia', '2026-05-10', 2.00),
(131, 'Prova Bimestral 2 - Topografia', '2026-06-18', 3.00),
(132, 'Projeto Final - Topografia', '2026-06-30', 2.00),
(133, 'Prova Bimestral 1 - Resistência dos Materiais', '2026-04-15', 3.00),
(134, 'Trabalho 1 - Resistência dos Materiais', '2026-05-10', 2.00),
(135, 'Prova Bimestral 2 - Resistência dos Materiais', '2026-06-18', 3.00),
(136, 'Projeto Final - Resistência dos Materiais', '2026-06-30', 2.00),
(137, 'Prova Bimestral 1 - Mecânica dos Solos', '2026-04-15', 3.00),
(138, 'Trabalho 1 - Mecânica dos Solos', '2026-05-10', 2.00),
(139, 'Prova Bimestral 2 - Mecânica dos Solos', '2026-06-18', 3.00),
(140, 'Projeto Final - Mecânica dos Solos', '2026-06-30', 2.00),
(141, 'Prova Bimestral 1 - Hidráulica', '2026-04-15', 3.00),
(142, 'Trabalho 1 - Hidráulica', '2026-05-10', 2.00),
(143, 'Prova Bimestral 2 - Hidráulica', '2026-06-18', 3.00),
(144, 'Projeto Final - Hidráulica', '2026-06-30', 2.00),
(145, 'Prova Bimestral 1 - Sistemas Estruturais', '2026-04-15', 3.00),
(146, 'Trabalho 1 - Sistemas Estruturais', '2026-05-10', 2.00),
(147, 'Prova Bimestral 2 - Sistemas Estruturais', '2026-06-18', 3.00),
(148, 'Projeto Final - Sistemas Estruturais', '2026-06-30', 2.00),
(149, 'Prova Bimestral 1 - Instalações Prediais', '2026-04-15', 3.00),
(150, 'Trabalho 1 - Instalações Prediais', '2026-05-10', 2.00),
(151, 'Prova Bimestral 2 - Instalações Prediais', '2026-06-18', 3.00),
(152, 'Projeto Final - Instalações Prediais', '2026-06-30', 2.00),
(153, 'Prova Bimestral 1 - Saneamento Básico', '2026-04-15', 3.00),
(154, 'Trabalho 1 - Saneamento Básico', '2026-05-10', 2.00),
(155, 'Prova Bimestral 2 - Saneamento Básico', '2026-06-18', 3.00),
(156, 'Projeto Final - Saneamento Básico', '2026-06-30', 2.00),
(157, 'Prova Bimestral 1 - Planejamento e Controle de Obras', '2026-04-15', 3.00),
(158, 'Trabalho 1 - Planejamento e Controle de Obras', '2026-05-10', 2.00),
(159, 'Prova Bimestral 2 - Planejamento e Controle de Obras', '2026-06-18', 3.00),
(160, 'Projeto Final - Planejamento e Controle de Obras', '2026-06-30', 2.00),
(161, 'Prova Bimestral 1 - Teorias da Comunicação', '2026-04-15', 3.00),
(162, 'Trabalho 1 - Teorias da Comunicação', '2026-05-10', 2.00),
(163, 'Prova Bimestral 2 - Teorias da Comunicação', '2026-06-18', 3.00),
(164, 'Projeto Final - Teorias da Comunicação', '2026-06-30', 2.00),
(165, 'Prova Bimestral 1 - Redação Jornalística', '2026-04-15', 3.00),
(166, 'Trabalho 1 - Redação Jornalística', '2026-05-10', 2.00),
(167, 'Prova Bimestral 2 - Redação Jornalística', '2026-06-18', 3.00),
(168, 'Projeto Final - Redação Jornalística', '2026-06-30', 2.00),
(169, 'Prova Bimestral 1 - Técnicas de Reportagem e Entrevista', '2026-04-15', 3.00),
(170, 'Trabalho 1 - Técnicas de Reportagem e Entrevista', '2026-05-10', 2.00),
(171, 'Prova Bimestral 2 - Técnicas de Reportagem e Entrevista', '2026-06-18', 3.00),
(172, 'Projeto Final - Técnicas de Reportagem e Entrevista', '2026-06-30', 2.00),
(173, 'Prova Bimestral 1 - Telejornalismo', '2026-04-15', 3.00),
(174, 'Trabalho 1 - Telejornalismo', '2026-05-10', 2.00),
(175, 'Prova Bimestral 2 - Telejornalismo', '2026-06-18', 3.00),
(176, 'Projeto Final - Telejornalismo', '2026-06-30', 2.00),
(177, 'Prova Bimestral 1 - Fotojornalismo', '2026-04-15', 3.00),
(178, 'Trabalho 1 - Fotojornalismo', '2026-05-10', 2.00),
(179, 'Prova Bimestral 2 - Fotojornalismo', '2026-06-18', 3.00),
(180, 'Projeto Final - Fotojornalismo', '2026-06-30', 2.00),
(181, 'Prova Bimestral 1 - Radiojornalismo e Podcasting', '2026-04-15', 3.00),
(182, 'Trabalho 1 - Radiojornalismo e Podcasting', '2026-05-10', 2.00),
(183, 'Prova Bimestral 2 - Radiojornalismo e Podcasting', '2026-06-18', 3.00),
(184, 'Projeto Final - Radiojornalismo e Podcasting', '2026-06-30', 2.00),
(185, 'Prova Bimestral 1 - Jornalismo Digital e Mídias Sociais', '2026-04-15', 3.00),
(186, 'Trabalho 1 - Jornalismo Digital e Mídias Sociais', '2026-05-10', 2.00),
(187, 'Prova Bimestral 2 - Jornalismo Digital e Mídias Sociais', '2026-06-18', 3.00),
(188, 'Projeto Final - Jornalismo Digital e Mídias Sociais', '2026-06-30', 2.00),
(189, 'Prova Bimestral 1 - Ética e Legislação dos Meios', '2026-04-15', 3.00),
(190, 'Trabalho 1 - Ética e Legislação dos Meios', '2026-05-10', 2.00),
(191, 'Prova Bimestral 2 - Ética e Legislação dos Meios', '2026-06-18', 3.00),
(192, 'Projeto Final - Ética e Legislação dos Meios', '2026-06-30', 2.00),
(193, 'Prova Bimestral 1 - Assessoria de Imprensa', '2026-04-15', 3.00),
(194, 'Trabalho 1 - Assessoria de Imprensa', '2026-05-10', 2.00),
(195, 'Prova Bimestral 2 - Assessoria de Imprensa', '2026-06-18', 3.00),
(196, 'Projeto Final - Assessoria de Imprensa', '2026-06-30', 2.00),
(197, 'Prova Bimestral 1 - Geopolítica e Atualidades', '2026-04-15', 3.00),
(198, 'Trabalho 1 - Geopolítica e Atualidades', '2026-05-10', 2.00),
(199, 'Prova Bimestral 2 - Geopolítica e Atualidades', '2026-06-18', 3.00),
(200, 'Projeto Final - Geopolítica e Atualidades', '2026-06-30', 2.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `bairros`
--

DROP TABLE IF EXISTS `bairros`;
CREATE TABLE `bairros` (
  `ID_Bairro` int(10) NOT NULL,
  `ID_Cidade` int(10) DEFAULT NULL,
  `Nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `boletins`
--

DROP TABLE IF EXISTS `boletins`;
CREATE TABLE `boletins` (
  `ID_Boletim` int(10) NOT NULL,
  `Notas` decimal(4,2) DEFAULT NULL,
  `Media` decimal(4,2) DEFAULT NULL,
  `Situacao_Final` int(3) DEFAULT NULL,
  `Frequencia` decimal(4,2) DEFAULT NULL,
  `ID_Aluno` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `boletins_disciplinas`
--

DROP TABLE IF EXISTS `boletins_disciplinas`;
CREATE TABLE `boletins_disciplinas` (
  `ID_Boletim` int(10) DEFAULT NULL,
  `ID_Disciplina` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidades`
--

DROP TABLE IF EXISTS `cidades`;
CREATE TABLE `cidades` (
  `ID_Cidade` int(10) NOT NULL,
  `ID_UF` int(10) DEFAULT NULL,
  `Nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `coordenadores`
--

DROP TABLE IF EXISTS `coordenadores`;
CREATE TABLE `coordenadores` (
  `ID_Coordenador` int(10) NOT NULL,
  `Formacao` varchar(30) DEFAULT NULL,
  `ID_Info` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `coordenadores`
--

INSERT INTO `coordenadores` (`ID_Coordenador`, `Formacao`, `ID_Info`) VALUES
(1, 'Doutorado em Administração', 21),
(2, 'Doutorado em Computação', 22),
(3, 'Doutorado em Psicologia', 23),
(4, 'Doutorado em Eng. Civil', 24),
(5, 'Doutorado em Jornalismo', 25);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE `cursos` (
  `ID_Curso` int(10) NOT NULL,
  `Nome_Curso` varchar(50) DEFAULT NULL,
  `Carga_Horaria` time DEFAULT NULL,
  `Duracao` time DEFAULT NULL,
  `Descricao` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`ID_Curso`, `Nome_Curso`, `Carga_Horaria`, `Duracao`, `Descricao`) VALUES
(1, 'Administração', '05:00:00', '99:59:59', 'Focado na gestão de empresas, recursos, finanças e pessoas.'),
(2, 'Ciência da Computação', '05:00:00', '99:59:59', 'Voltado para o desenvolvimento de softwares, algoritmos e infraestrutura tecnológica.'),
(3, 'Psicologia', '05:00:00', '99:59:59', 'Dedicado ao estudo do comportamento humano, processos mentais e saúde mental.'),
(4, 'Engenharia Civil', '05:00:00', '99:59:59', 'Focado no projeto, construção e manutenção de infraestruturas e edifícios.'),
(5, 'Jornalismo', '05:00:00', '99:59:59', 'Voltado para a apuração, produção e disseminação de notícias na mídia.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos_disciplinas`
--

DROP TABLE IF EXISTS `cursos_disciplinas`;
CREATE TABLE `cursos_disciplinas` (
  `ID_Curso` int(10) DEFAULT NULL,
  `ID_Disciplina` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursos_disciplinas`
--

INSERT INTO `cursos_disciplinas` (`ID_Curso`, `ID_Disciplina`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 24),
(3, 25),
(3, 26),
(3, 27),
(3, 28),
(3, 29),
(3, 30),
(4, 31),
(4, 32),
(4, 33),
(4, 34),
(4, 35),
(4, 36),
(4, 37),
(4, 38),
(4, 39),
(4, 40),
(5, 41),
(5, 42),
(5, 43),
(5, 44),
(5, 45),
(5, 46),
(5, 47),
(5, 48),
(5, 49),
(5, 50),
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 24),
(3, 25),
(3, 26),
(3, 27),
(3, 28),
(3, 29),
(3, 30),
(4, 31),
(4, 32),
(4, 33),
(4, 34),
(4, 35),
(4, 36),
(4, 37),
(4, 38),
(4, 39),
(4, 40),
(5, 41),
(5, 42),
(5, 43),
(5, 44),
(5, 45),
(5, 46),
(5, 47),
(5, 48),
(5, 49),
(5, 50);

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplinas`
--

DROP TABLE IF EXISTS `disciplinas`;
CREATE TABLE `disciplinas` (
  `ID_Disciplina` int(10) NOT NULL,
  `Carga_Horaria` time DEFAULT NULL,
  `ProfessorResp` varchar(50) DEFAULT NULL,
  `nome_da_disciplina` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `disciplinas`
--

INSERT INTO `disciplinas` (`ID_Disciplina`, `Carga_Horaria`, `ProfessorResp`, `nome_da_disciplina`) VALUES
(1, '02:30:00', 'Roberta Souza', 'Teorias da Administração'),
(2, '02:30:00', 'Roberta Souza', 'Gestão de Pessoas'),
(3, '02:30:00', 'Carlos Eduardo Mendes', 'Contabilidade Geral'),
(4, '02:30:00', 'Carlos Eduardo Mendes', 'Gestão Financeira'),
(5, '02:30:00', 'Bruno Albuquerque', 'Administração Mercadológica'),
(6, '02:30:00', 'Bruno Albuquerque', 'Planejamento Estratégico'),
(7, '02:30:00', 'Arnaldo Antunes Neto', 'Logística e Cadeia de Suprimentos'),
(8, '02:30:00', 'Arnaldo Antunes Neto', 'Direito Empresarial'),
(9, '02:30:00', 'Roberta Souza', 'Comportamento Organizacional'),
(10, '02:30:00', 'Arnaldo Antunes Neto', 'Ética e Responsabilidade Social'),
(11, '02:30:00', 'Eliana Hayashi', 'Cálculo Diferencial e Integral'),
(12, '02:30:00', 'Thiago Ramos', 'Algoritmos e Programação'),
(13, '02:30:00', 'Thiago Ramos', 'Estrutura de Dados'),
(14, '02:30:00', 'Thiago Ramos', 'Engenharia de Software'),
(15, '02:30:00', 'Alexandre Rebouças', 'Arquitetura de Computadores'),
(16, '02:30:00', 'Alexandre Rebouças', 'Sistemas Operacionais'),
(17, '02:30:00', 'Alexandre Rebouças', 'Redes de Computadores'),
(18, '02:30:00', 'Murilo Fontes', 'Banco de Dados'),
(19, '02:30:00', 'Murilo Fontes', 'Inteligência Artificial'),
(20, '02:30:00', 'Murilo Fontes', 'Segurança da Informação'),
(21, '02:30:00', 'Sandra Helena Medeiros', 'História da Psicologia'),
(22, '02:30:00', 'Sandra Helena Medeiros', 'Psicologia Social'),
(23, '02:30:00', 'Ricardo Fragoso', 'Psicologia do Desenvolvimento'),
(24, '02:30:00', 'Ricardo Fragoso', 'Neuroanatomia'),
(25, '02:30:00', 'Beatriz Junqueira', 'Psicopatologia'),
(26, '02:30:00', 'Beatriz Junqueira', 'Teorias da Personalidade'),
(27, '02:30:00', 'Rogério Pires', 'Técnicas de Avaliação Psicológica'),
(28, '02:30:00', 'Rogério Pires', 'Psicologia Hospitalar'),
(29, '02:30:00', 'Beatriz Junqueira', 'Psicoterapia Clínicas'),
(30, '02:30:00', 'Rogério Pires', 'Análise do Comportamento'),
(31, '02:30:00', 'Marcos Vinícius Dias', 'Geometria Analítica e Álgebra Linear'),
(32, '02:30:00', 'Marcos Vinícius Dias', 'Física Mecânica'),
(33, '02:30:00', 'Fernando Castelo', 'Topografia'),
(34, '02:30:00', 'Fernando Castelo', 'Resistência dos Materiais'),
(35, '02:30:00', 'Fernando Castelo', 'Mecânica dos Solos'),
(36, '02:30:00', 'Letícia Guimarães', 'Hidráulica'),
(37, '02:30:00', 'Roberto Montenegro', 'Sistemas Estruturais'),
(38, '02:30:00', 'Roberto Montenegro', 'Instalações Prediais'),
(39, '02:30:00', 'Letícia Guimarães', 'Saneamento Básico'),
(40, '02:30:00', 'Roberto Montenegro', 'Planejamento e Controle de Obras'),
(41, '02:30:00', 'Glória Maria Vasconcellos', 'Teorias da Comunicação'),
(42, '02:30:00', 'Glória Maria Vasconcellos', 'Redação Jornalística'),
(43, '02:30:00', 'Glória Maria Vasconcellos', 'Técnicas de Reportagem e Entrevista'),
(44, '02:30:00', 'Juliano Prado', 'Telejornalismo'),
(45, '02:30:00', 'Juliano Prado', 'Fotojornalismo'),
(46, '02:30:00', 'Mariana Lins', 'Radiojornalismo e Podcasting'),
(47, '02:30:00', 'Mariana Lins', 'Jornalismo Digital e Mídias Sociais'),
(48, '02:30:00', 'Otávio Mesquita Filho', 'Ética e Legislação dos Meios'),
(49, '02:30:00', 'Otávio Mesquita Filho', 'Assessoria de Imprensa'),
(50, '02:30:00', 'Otávio Mesquita Filho', 'Geopolítica e Atualidades');

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplinas_professores`
--

DROP TABLE IF EXISTS `disciplinas_professores`;
CREATE TABLE `disciplinas_professores` (
  `ID_Disciplina` int(11) DEFAULT NULL,
  `ID_Professor` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `disciplinas_professores`
--

INSERT INTO `disciplinas_professores` (`ID_Disciplina`, `ID_Professor`) VALUES
(1, 2),
(2, 2),
(3, 1),
(4, 1),
(5, 3),
(6, 3),
(7, 4),
(8, 4),
(9, 2),
(10, 4),
(11, 7),
(12, 5),
(13, 5),
(14, 5),
(15, 6),
(16, 6),
(17, 6),
(18, 8),
(19, 8),
(20, 8),
(21, 9),
(22, 9),
(23, 10),
(24, 10),
(25, 11),
(26, 11),
(27, 12),
(28, 12),
(29, 11),
(30, 12),
(31, 13),
(32, 13),
(33, 14),
(34, 14),
(35, 14),
(36, 15),
(37, 16),
(38, 16),
(39, 15),
(40, 16),
(41, 17),
(42, 17),
(43, 17),
(44, 18),
(45, 18),
(46, 19),
(47, 19),
(48, 20),
(49, 20),
(50, 20),
(1, 2),
(2, 2),
(3, 1),
(4, 1),
(5, 3),
(6, 3),
(7, 4),
(8, 4),
(9, 2),
(10, 4),
(11, 7),
(12, 5),
(13, 5),
(14, 5),
(15, 6),
(16, 6),
(17, 6),
(18, 8),
(19, 8),
(20, 8),
(21, 9),
(22, 9),
(23, 10),
(24, 10),
(25, 11),
(26, 11),
(27, 12),
(28, 12),
(29, 11),
(30, 12),
(31, 13),
(32, 13),
(33, 14),
(34, 14),
(35, 14),
(36, 15),
(37, 16),
(38, 16),
(39, 15),
(40, 16),
(41, 17),
(42, 17),
(43, 17),
(44, 18),
(45, 18),
(46, 19),
(47, 19),
(48, 20),
(49, 20),
(50, 20);

-- --------------------------------------------------------

--
-- Estrutura para tabela `formacoes`
--

DROP TABLE IF EXISTS `formacoes`;
CREATE TABLE `formacoes` (
  `ID_Formacao` int(10) NOT NULL,
  `Descricao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `formacoes`
--

INSERT INTO `formacoes` (`ID_Formacao`, `Descricao`) VALUES
(1, 'Doutorado'),
(2, 'Mestrado'),
(3, 'Especialização');

-- --------------------------------------------------------

--
-- Estrutura para tabela `info_pessoal`
--

DROP TABLE IF EXISTS `info_pessoal`;
CREATE TABLE `info_pessoal` (
  `ID_Info` int(10) NOT NULL,
  `CPF` char(11) DEFAULT NULL,
  `Telefone` varchar(12) DEFAULT NULL,
  `E_mail` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `info_pessoal`
--

INSERT INTO `info_pessoal` (`ID_Info`, `CPF`, `Telefone`, `E_mail`) VALUES
(1, '12345678901', '11987654321', 'carlos.mendes@email.com'),
(2, '23456789012', '11976543210', 'roberta.souza@email.com'),
(3, '34567890123', '11965432109', 'bruno.albuquerque@email.com'),
(4, '45678901234', '11954321098', 'arnaldo.antunes@email.com'),
(5, '56789012345', '11943210987', 'thiago.ramos@email.com'),
(6, '67890123456', '11932109876', 'alexandre.reboucas@email.com'),
(7, '78901234567', '11921098765', 'eliana.hayashi@email.com'),
(8, '89012345678', '11910987654', 'murilo.fontes@email.com'),
(9, '90123456789', '11909876543', 'sandra.medeiros@email.com'),
(10, '01234567890', '11998765432', 'ricardo.fragoso@email.com'),
(11, '11223344556', '11988776655', 'beatriz.junqueira@email.com'),
(12, '22334455667', '11977665544', 'rogerio.pires@email.com'),
(13, '33445566778', '11966554433', 'marcos.dias@email.com'),
(14, '44556677889', '11955443322', 'fernando.castelo@email.com'),
(15, '55667788990', '11944332211', 'leticia.guimaraes@email.com'),
(16, '66778899001', '11933221100', 'roberto.montenegro@email.com'),
(17, '77889900112', '11922110099', 'gloria.vasconcellos@email.com'),
(18, '88990011223', '11911009988', 'juliano.prado@email.com'),
(19, '99001122334', '11900998877', 'mariana.lins@email.com'),
(20, '00112233445', '11999887766', 'otavio.mesquita@email.com'),
(21, '00011122233', '11955551111', 'coord.adm@email.com'),
(22, '11122233344', '11955552222', 'coord.comp@email.com'),
(23, '22233344455', '11955553333', 'coord.psico@email.com'),
(24, '33344455566', '11955554444', 'coord.civil@email.com'),
(25, '44455566677', '11955555555', 'coord.jor@email.com'),
(26, '42057076649', '21933586522', 'alice.gomes98@email.com'),
(27, '29472295548', '19959410130', 'julia.carvalho74@email.com'),
(28, '65658727532', '21934095328', 'sofia.souza28@email.com'),
(29, '30661061109', '21909707917', 'beatriz.machado39@email.com'),
(30, '01528799412', '21990337840', 'larissa.silva37@email.com'),
(31, '32883322438', '61910552218', 'luiza.rocha18@email.com'),
(32, '56441946551', '19930479590', 'nicolas.alves52@email.com'),
(33, '65322732393', '11914862257', 'gabriela.lima50@email.com'),
(34, '56131279301', '41950703379', 'matheus.costa44@email.com'),
(35, '19238993223', '21988996059', 'diego.nunes52@email.com'),
(36, '64142369346', '11958626698', 'diego.nunes53@email.com'),
(37, '85335622383', '19936946821', 'beatriz.souza48@email.com'),
(38, '36332469909', '21950262309', 'maria.nunes39@email.com'),
(39, '38763504318', '31962376693', 'giovanna.machado89@email.com'),
(40, '99803504762', '61966890001', 'laura.nunes64@email.com'),
(41, '74293068971', '11988080539', 'manuela.soares55@email.com'),
(42, '65030950600', '81911357973', 'bruno.alves93@email.com'),
(43, '55770689237', '21988242712', 'gabriel.lima74@email.com'),
(44, '78200013253', '41926904307', 'alice.souza79@email.com'),
(45, '39395799721', '11904176161', 'samuel.gomes28@email.com'),
(46, '31194959419', '11952713960', 'carolina.barbosa68@email.com'),
(47, '02714340264', '31916495578', 'isabella.almeida42@email.com'),
(48, '88491006825', '41902364769', 'diego.freitas96@email.com'),
(49, '18589965107', '41953107336', 'samuel.mendes54@email.com'),
(50, '43870324473', '41985638292', 'giovanna.soares18@email.com'),
(51, '51356350017', '19966432756', 'vitor.marques45@email.com'),
(52, '75609121414', '11983196999', 'bruno.carvalho44@email.com'),
(53, '45148221203', '71969327501', 'bianca.ferreira21@email.com'),
(54, '28083773982', '71914775204', 'gabriela.ribeiro36@email.com'),
(55, '35100574361', '41947600777', 'arthur.andrade24@email.com'),
(56, '54513131486', '11925314942', 'arthur.ferreira42@email.com'),
(57, '77319947912', '81948311423', 'beatriz.martins42@email.com'),
(58, '95853509886', '21937028172', 'camila.costa47@email.com'),
(59, '71075804106', '41933187087', 'isabella.alves17@email.com'),
(60, '37340440265', '11966362493', 'pedro.pereira56@email.com'),
(61, '91020014830', '71997317010', 'isabella.soares85@email.com'),
(62, '15413061506', '81919143800', 'manuela.gomes58@email.com'),
(63, '18395174639', '11949459491', 'guilherme.souza33@email.com'),
(64, '92796316361', '31990137957', 'sofia.soares10@email.com'),
(65, '72842105616', '21955822425', 'bianca.mendes51@email.com'),
(66, '88898301694', '81941725417', 'leonardo.santos95@email.com'),
(67, '91294806061', '81978924609', 'diego.souza88@email.com'),
(68, '26603879545', '21909580221', 'arthur.souza99@email.com'),
(69, '78386400905', '31941461232', 'camila.moreira75@email.com'),
(70, '24638955896', '41924713481', 'sofia.costa89@email.com'),
(71, '90239233805', '31913310875', 'matheus.rodrigues87@email.com'),
(72, '54217167685', '11971592884', 'carolina.dias21@email.com'),
(73, '78386457987', '61963110370', 'samuel.ferreira14@email.com'),
(74, '73372030255', '61982259516', 'enzo.andrade38@email.com'),
(75, '92330626517', '81934081812', 'carolina.almeida98@email.com'),
(76, '14015844674', '31946359366', 'rafael.nascimento15@email.com'),
(77, '08723328483', '61964535430', 'laura.lopes21@email.com'),
(78, '71038145707', '41987416544', 'sofia.silva63@email.com'),
(79, '73579670430', '51990081913', 'carolina.gomes50@email.com'),
(80, '32828610865', '71924079649', 'carolina.martins89@email.com'),
(81, '77469606983', '12902375253', 'diego.lima79@email.com'),
(82, '98741605067', '71926664656', 'matheus.pereira81@email.com'),
(83, '59712451003', '51919678479', 'bruna.soares72@email.com'),
(84, '74636188174', '21963005504', 'sofia.fernandes39@email.com'),
(85, '45014530184', '41928914818', 'alice.silva99@email.com'),
(86, '12868077799', '31963180761', 'manuela.carvalho34@email.com'),
(87, '22599911183', '19903991176', 'camila.rocha92@email.com'),
(88, '82733978328', '81997038814', 'luiza.machado25@email.com'),
(89, '99497063863', '11982820571', 'larissa.dias43@email.com'),
(90, '52675202855', '61993553406', 'felipe.gomes19@email.com'),
(91, '76504781475', '12927478681', 'felipe.almeida46@email.com'),
(92, '63223215773', '41935483220', 'leonardo.ferreira55@email.com'),
(93, '53447178329', '12938290536', 'leonardo.lopes96@email.com'),
(94, '80817052670', '31975275468', 'giovanna.pereira82@email.com'),
(95, '31011379084', '21998299068', 'laura.almeida82@email.com'),
(96, '77680342388', '41904377599', 'rafael.carvalho12@email.com'),
(97, '70461765473', '11990688812', 'arthur.freitas47@email.com'),
(98, '14334738873', '51994379451', 'fernanda.souza17@email.com'),
(99, '16738844929', '19945435258', 'leticia.vieira61@email.com'),
(100, '28879561250', '61956185118', 'lucas.vieira59@email.com'),
(101, '51314498257', '12905080176', 'felipe.oliveira68@email.com'),
(102, '70314300309', '19911162018', 'matheus.soares58@email.com'),
(103, '32550470685', '71913175139', 'sofia.mendes43@email.com'),
(104, '56142144334', '31931796462', 'matheus.nunes65@email.com'),
(105, '18085818642', '19978703984', 'sofia.dias17@email.com'),
(106, '89017018802', '51951133282', 'bruna.barbosa26@email.com'),
(107, '90984314579', '41955392291', 'leonardo.vieira62@email.com'),
(108, '90295969377', '61987576205', 'bianca.marques99@email.com'),
(109, '23899502387', '11966657579', 'fernanda.moreira96@email.com'),
(110, '19425796019', '81961631479', 'arthur.carvalho80@email.com'),
(111, '63724335277', '71973881817', 'manuela.almeida64@email.com'),
(112, '99674337936', '61913210808', 'leonardo.freitas76@email.com'),
(113, '77138721199', '81935943727', 'matheus.nunes92@email.com'),
(114, '26328597310', '31982960772', 'leticia.soares93@email.com'),
(115, '77805232296', '21930370207', 'guilherme.rocha17@email.com'),
(116, '66175736700', '41936986982', 'carolina.marques84@email.com'),
(117, '44047987805', '41926774333', 'enzo.andrade29@email.com'),
(118, '64218263759', '61909902499', 'eduardo.ferreira47@email.com'),
(119, '80330463534', '21928855229', 'sofia.marques39@email.com'),
(120, '21705405509', '21911178266', 'gustavo.lima69@email.com'),
(121, '65885105214', '41934833592', 'manuela.pereira69@email.com'),
(122, '75761600691', '81936563385', 'leticia.moreira75@email.com'),
(123, '32858122810', '61978442007', 'samuel.rodrigues13@email.com'),
(124, '48535379232', '21928006439', 'rafael.santos71@email.com'),
(125, '40727068562', '71915893794', 'giovanna.pereira94@email.com'),
(126, '72863356312', '71950792657', 'gabriela.soares58@email.com'),
(127, '83669586902', '11984055773', 'leticia.machado20@email.com'),
(128, '03817733685', '21910858539', 'enzo.vieira95@email.com'),
(129, '72535700448', '12982156063', 'lucas.barbosa61@email.com'),
(130, '20645512678', '41967577300', 'julia.fernandes97@email.com'),
(131, '18856324669', '21987717129', 'diego.lima27@email.com'),
(132, '01023012320', '12952590777', 'nicolas.souza94@email.com'),
(133, '31380305600', '11924465238', 'bruna.moreira56@email.com'),
(134, '54821749647', '71994599615', 'gabriela.oliveira77@email.com'),
(135, '25976145510', '81926972039', 'enzo.soares44@email.com'),
(136, '89760810606', '12929326801', 'bruna.soares44@email.com'),
(137, '22539939721', '11970946293', 'isabella.rodrigues23@email.com'),
(138, '90033106238', '12929311981', 'gabriela.ferreira68@email.com'),
(139, '04962180117', '71923174303', 'lucas.fernandes36@email.com'),
(140, '00735602353', '19980619010', 'sofia.moreira12@email.com'),
(141, '19772563119', '31928068096', 'arthur.rodrigues97@email.com'),
(142, '83520445166', '19970606954', 'bruna.lima96@email.com'),
(143, '01325836951', '51953234594', 'beatriz.andrade66@email.com'),
(144, '84275777394', '51983403678', 'larissa.santos96@email.com'),
(145, '73399836068', '61936866509', 'luiza.rodrigues30@email.com'),
(146, '66844556603', '19976534500', 'bianca.oliveira68@email.com'),
(147, '39990524669', '11917395595', 'carolina.ribeiro93@email.com'),
(148, '54840565364', '19915229881', 'beatriz.ferreira11@email.com'),
(149, '04971290702', '51959786729', 'thiago.souza99@email.com'),
(150, '50359472125', '12922182482', 'larissa.rocha41@email.com'),
(151, '07705251491', '12960419055', 'gustavo.nunes92@email.com'),
(152, '47429297695', '51972065794', 'luiza.lopes90@email.com'),
(153, '75173497882', '19960465598', 'felipe.almeida16@email.com'),
(154, '77857902877', '12929694231', 'sofia.ribeiro86@email.com'),
(155, '73910894915', '51991580795', 'maria.andrade13@email.com'),
(156, '02724339219', '12974773555', 'carolina.soares32@email.com'),
(157, '71726763121', '12940663796', 'bruna.freitas23@email.com'),
(158, '71749385457', '11945524725', 'daniel.nunes11@email.com'),
(159, '19614978877', '31999023213', 'carolina.pereira60@email.com'),
(160, '37154976656', '81936751797', 'gabriela.costa11@email.com'),
(161, '14129153816', '51935356485', 'bruna.dias38@email.com'),
(162, '54620895676', '51993013123', 'beatriz.andrade81@email.com'),
(163, '43531695460', '51925268219', 'guilherme.gomes65@email.com'),
(164, '46702185700', '19945945183', 'diego.lopes32@email.com'),
(165, '72231628731', '19986081160', 'alice.barbosa58@email.com'),
(166, '57944931499', '21973513029', 'leonardo.mendes22@email.com'),
(167, '68392482074', '71940401498', 'leonardo.vieira73@email.com'),
(168, '35049788679', '61961770848', 'carolina.costa88@email.com'),
(169, '86532758117', '21984769592', 'arthur.lopes42@email.com'),
(170, '63914912505', '12997458132', 'eduardo.freitas53@email.com'),
(171, '75887425841', '19988441058', 'luiza.oliveira65@email.com'),
(172, '94851661542', '81907409941', 'gabriel.mendes71@email.com'),
(173, '17112302176', '61913036832', 'felipe.freitas70@email.com'),
(174, '18412431266', '71905217850', 'enzo.lopes81@email.com'),
(175, '74617591564', '31944008316', 'fernanda.dias45@email.com'),
(176, '74067160867', '31912715054', 'arthur.barbosa27@email.com'),
(177, '43901352713', '81926134022', 'fernanda.mendes98@email.com'),
(178, '06728628049', '11960310700', 'carolina.machado24@email.com'),
(179, '70791084831', '41915737992', 'diego.vieira90@email.com'),
(180, '70627944923', '12984998539', 'arthur.nascimento66@email.com'),
(181, '37173824029', '19980340907', 'daniel.soares41@email.com'),
(182, '32987291557', '61908277774', 'pedro.moreira56@email.com'),
(183, '24703795412', '51967738239', 'eduardo.ribeiro69@email.com'),
(184, '94385833935', '21936278429', 'bruna.pereira69@email.com'),
(185, '41575741171', '12924849106', 'alice.almeida35@email.com'),
(186, '45236952251', '21923279585', 'nicolas.machado85@email.com'),
(187, '97125197914', '12939156131', 'fernanda.costa48@email.com'),
(188, '27431984711', '21994310002', 'arthur.pereira13@email.com'),
(189, '40442405100', '19920597914', 'eduardo.lima20@email.com'),
(190, '91239103371', '19935440491', 'bruno.pereira11@email.com'),
(191, '03447575638', '19923227686', 'thiago.costa47@email.com'),
(192, '47949392279', '19926380974', 'joao.carvalho44@email.com'),
(193, '87105766198', '81951789639', 'bruna.fernandes12@email.com'),
(194, '28866453134', '51926275516', 'pedro.marques62@email.com'),
(195, '09346630903', '81942912621', 'isabella.carvalho78@email.com'),
(196, '09924040482', '21944829123', 'luiza.alves86@email.com'),
(197, '00439708833', '41973615797', 'julia.santos64@email.com'),
(198, '95140949474', '11995900581', 'bruno.almeida92@email.com'),
(199, '13902453238', '71941576266', 'guilherme.nascimento35@email.com'),
(200, '45115660598', '12968716176', 'felipe.marques60@email.com'),
(201, '17420297892', '21976134325', 'matheus.moreira31@email.com'),
(202, '44001983425', '41936220688', 'amanda.costa53@email.com'),
(203, '71553508782', '12931813953', 'eduardo.freitas83@email.com'),
(204, '37699452045', '21999561894', 'enzo.nascimento90@email.com'),
(205, '02809264017', '12917544128', 'eduardo.costa33@email.com'),
(206, '31145486124', '41928192308', 'isabella.barbosa33@email.com'),
(207, '49847693174', '61986721409', 'mariana.andrade16@email.com'),
(208, '53314263437', '19996656333', 'vitor.lopes41@email.com'),
(209, '98377782454', '31903650065', 'pedro.mendes18@email.com'),
(210, '83088821930', '41951339045', 'gabriel.pereira78@email.com'),
(211, '95275354179', '51936049260', 'leticia.almeida82@email.com'),
(212, '91886534469', '31993887970', 'beatriz.soares20@email.com'),
(213, '66920788146', '41938075757', 'daniel.soares25@email.com'),
(214, '90291395979', '41935648757', 'samuel.vieira14@email.com'),
(215, '26458638808', '61952783153', 'arthur.lima65@email.com'),
(216, '77475103202', '12935963596', 'gabriel.fernandes67@email.com'),
(217, '33919857957', '19941174863', 'vitor.carvalho35@email.com'),
(218, '21622592366', '51958466145', 'eduardo.carvalho64@email.com'),
(219, '24726828711', '12919496196', 'rafael.barbosa17@email.com'),
(220, '41168305612', '11909615944', 'luiza.costa80@email.com'),
(221, '19716108057', '51992691538', 'daniel.barbosa16@email.com'),
(222, '03904921953', '11958089405', 'larissa.rodrigues82@email.com'),
(223, '40016304309', '19979708153', 'bianca.rocha16@email.com'),
(224, '88706228897', '12953783129', 'eduardo.pereira82@email.com'),
(225, '85187548013', '12964001156', 'joao.vieira40@email.com'),
(226, '27002183227', '11914287490', 'gabriel.soares26@email.com'),
(227, '63600238411', '51946596533', 'gabriela.pereira33@email.com'),
(228, '19507237685', '11997305266', 'matheus.soares33@email.com'),
(229, '00647388126', '31991190093', 'bruna.vieira16@email.com'),
(230, '79620214329', '12902229601', 'laura.nunes32@email.com'),
(231, '76360227350', '71982107846', 'guilherme.silva34@email.com'),
(232, '64717281710', '12932484066', 'laura.machado43@email.com'),
(233, '50797690050', '12988915518', 'diego.machado46@email.com'),
(234, '56556184838', '61923611835', 'leonardo.carvalho57@email.com'),
(235, '79990237969', '21937566761', 'mariana.nascimento26@email.com'),
(236, '82164281894', '19956860453', 'joao.rocha88@email.com'),
(237, '23287846790', '11926772807', 'arthur.martins71@email.com'),
(238, '49268446944', '31962184388', 'enzo.vieira23@email.com'),
(239, '32968585455', '51976675122', 'rafael.machado82@email.com'),
(240, '78533958180', '51973813396', 'arthur.vieira91@email.com'),
(241, '29824653359', '61980510826', 'alice.almeida91@email.com'),
(242, '65493499879', '51991728217', 'maria.machado92@email.com'),
(243, '24103353099', '71930712484', 'julia.machado45@email.com'),
(244, '76932269290', '81972757675', 'carolina.martins40@email.com'),
(245, '24273385147', '81934702660', 'guilherme.santos89@email.com'),
(246, '29834499605', '21905486623', 'thiago.soares84@email.com'),
(247, '45796478520', '12944333813', 'samuel.nascimento22@email.com'),
(248, '82688294770', '31985792948', 'rafael.machado68@email.com'),
(249, '87046399887', '12922447000', 'gustavo.lima39@email.com'),
(250, '22856303307', '61994888811', 'guilherme.mendes45@email.com'),
(251, '24185587154', '51951615906', 'isabella.oliveira72@email.com'),
(252, '02817116634', '19961788602', 'thiago.nunes39@email.com'),
(253, '48119656389', '51915279732', 'arthur.lima12@email.com'),
(254, '26471219866', '61921871435', 'eduardo.nunes81@email.com'),
(255, '22789367270', '41972485313', 'alice.santos28@email.com'),
(256, '52708462214', '41916303884', 'amanda.soares67@email.com'),
(257, '92211771810', '51930896317', 'arthur.rocha75@email.com'),
(258, '41807557081', '41933761788', 'samuel.moreira37@email.com'),
(259, '26726267709', '61905522098', 'joao.andrade62@email.com'),
(260, '11516316956', '71956323186', 'luiza.mendes98@email.com'),
(261, '78577509435', '12971159413', 'nicolas.andrade53@email.com'),
(262, '20684276900', '31953960283', 'bruno.rocha52@email.com'),
(263, '20273895225', '71934162692', 'vitor.barbosa99@email.com'),
(264, '47642336769', '61962358182', 'nicolas.souza60@email.com'),
(265, '08159616660', '11946239923', 'mariana.fernandes46@email.com'),
(266, '31870526063', '12904315105', 'bianca.carvalho43@email.com'),
(267, '88719039257', '12905209216', 'diego.nascimento66@email.com'),
(268, '40225543880', '71933907296', 'alice.oliveira22@email.com'),
(269, '11400609926', '12912500323', 'manuela.vieira85@email.com'),
(270, '44796826913', '12990228026', 'samuel.mendes22@email.com'),
(271, '12243263387', '12957155018', 'vitor.ferreira51@email.com'),
(272, '35057767006', '12957272364', 'guilherme.pereira60@email.com'),
(273, '44223137573', '31997421378', 'enzo.dias45@email.com'),
(274, '89486734029', '12987803241', 'luiza.lima20@email.com'),
(275, '88581809483', '19941910171', 'thiago.barbosa75@email.com'),
(276, '25140836974', '11973641258', 'luciana.silva@email.com'),
(277, '68413579201', '21984521367', 'maria.oliveira@email.com'),
(278, '35791246802', '31971254369', 'luciana.almeida@email.com'),
(279, '14725836903', '11963258741', 'patricia.silva@email.com'),
(280, '95175346820', '51987412563', 'ana.souza@email.com'),
(281, '36925814705', '21975315984', 'fernando.ribeiro@email.com'),
(282, '15948726304', '11912345678', 'maria.gomes@email.com'),
(283, '75315948620', '31965412387', 'adriana.silva@email.com'),
(284, '85296374102', '11978945612', 'marcelo.ferreira@email.com'),
(285, '45612378905', '21932165498', 'roberto.martins@email.com'),
(286, '12345678909', '11945612378', 'ana.alves@email.com'),
(287, '98765432101', '31915926348', 'marcos.ferreira@email.com'),
(288, '14785236902', '11935748612', 'adriana.ribeiro@email.com'),
(289, '25896314704', '21985274163', 'fernando.almeida@email.com'),
(290, '36914725806', '51996385214', 'ana.rodrigues@email.com'),
(291, '74185296301', '11914725836', 'patricia.ribeiro@email.com'),
(292, '85236914703', '31925836914', 'carlos.souza@email.com'),
(293, '96325874105', '21936914725', 'ana.souza@email.com'),
(294, '15926348702', '11974185296', 'ricardo.pereira@email.com'),
(295, '35748612904', '51985296314', 'roberto.ferreira@email.com'),
(296, '48612935706', '11996314725', 'luciana.ribeiro@email.com'),
(297, '25814736908', '21914736925', 'patricia.oliveira@email.com'),
(298, '36925814710', '31925814736', 'roberto.alves@email.com'),
(299, '14736925812', '11936925814', 'camila.ribeiro@email.com'),
(300, '25814736914', '51914736925', 'luciana.carvalho@email.com'),
(301, '36925814716', '21925814736', 'maria.silva@email.com'),
(302, '14736925818', '31936925814', 'ricardo.santos@email.com'),
(303, '25814736920', '11914736925', 'camila.almeida@email.com'),
(304, '36925814722', '51925814736', 'maria.pereira@email.com'),
(305, '14736925824', '21936925814', 'camila.costa@email.com'),
(306, '25814736926', '31914736925', 'roberto.oliveira@email.com'),
(307, '36925814728', '11925814736', 'marcelo.lima@email.com'),
(308, '14736925830', '51936925814', 'marcelo.alves@email.com'),
(309, '25814736932', '21914736925', 'marcos.oliveira@email.com'),
(310, '36925814734', '31925814736', 'ana.silva@email.com'),
(311, '14736925836', '11936925814', 'roberto.oliveira@email.com'),
(312, '25814736938', '51914736925', 'ricardo.santos@email.com'),
(313, '36925814740', '21925814736', 'sandra.santos@email.com'),
(314, '14736925842', '31936925814', 'ricardo.santos@email.com'),
(315, '25814736944', '11914736925', 'marcos.santos@email.com'),
(316, '36925814746', '51925814736', 'marcos.gomes@email.com'),
(317, '14736925848', '21936925814', 'sandra.souza@email.com'),
(318, '25814736950', '31914736925', 'marcos.rodrigues@email.com'),
(319, '36925814752', '11925814736', 'ricardo.souza@email.com'),
(320, '14736925854', '51936925814', 'ricardo.ferreira@email.com'),
(321, '25814736956', '21914736925', 'roberto.santos@email.com'),
(322, '36925814758', '31925814736', 'marcos.ferreira@email.com'),
(323, '14736925860', '11936925814', 'juliana.souza@email.com'),
(324, '25814736962', '51914736925', 'marcos.souza@email.com'),
(325, '36925814764', '21925814736', 'sandra.silva@email.com'),
(326, '14736925866', '31936925814', 'marcos.souza@email.com'),
(327, '25814736968', '11914736925', 'ricardo.pereira@email.com'),
(328, '36925814770', '51925814736', 'rodrigo.rodrigues@email.com'),
(329, '14736925872', '21936925814', 'camila.silva@email.com'),
(330, '25814736974', '31914736925', 'ana.rodrigues@email.com'),
(331, '36925814776', '11925814736', 'patricia.martins@email.com'),
(332, '14736925878', '51936925814', 'ana.souza@email.com'),
(333, '25814736980', '21914736925', 'marcelo.costa@email.com'),
(334, '36925814782', '31925814736', 'marcos.lima@email.com'),
(335, '14736925884', '11936925814', 'roberto.silva@email.com'),
(336, '25814736986', '51914736925', 'patricia.santos@email.com'),
(337, '36925814788', '21925814736', 'sandra.pereira@email.com'),
(338, '14736925890', '31936925814', 'adriana.oliveira@email.com'),
(339, '25814736992', '11914736925', 'carlos.ferreira@email.com'),
(340, '36925814794', '51925814736', 'roberto.oliveira@email.com'),
(341, '14736925896', '21936925814', 'adriana.ribeiro@email.com'),
(342, '25814736998', '31914736925', 'carlos.silva@email.com'),
(343, '36925814800', '11925814736', 'patricia.silva@email.com'),
(344, '14736925802', '51936925814', 'rodrigo.lima@email.com'),
(345, '25814735904', '21914736925', 'juliana.souza@email.com'),
(346, '36925813706', '31925814736', 'carlos.santos@email.com'),
(347, '14736922808', '11936925814', 'sandra.ribeiro@email.com'),
(348, '25814731910', '51914736925', 'rodrigo.silva@email.com'),
(349, '36925810912', '21925814736', 'patricia.costa@email.com'),
(350, '14736929814', '31936925814', 'sandra.rodrigues@email.com'),
(351, '25814738916', '11914736925', 'sandra.martins@email.com'),
(352, '36925817918', '51925814736', 'marcos.souza@email.com'),
(353, '14736926920', '21936925814', 'adriana.santos@email.com'),
(354, '25814735922', '31914736925', 'sandra.oliveira@email.com'),
(355, '36925814924', '11925814736', 'roberto.ferreira@email.com'),
(356, '14736923926', '51936925814', 'juliana.lima@email.com'),
(357, '25814732928', '21914736925', 'juliana.ribeiro@email.com'),
(358, '36925811930', '31925814736', 'carlos.carvalho@email.com'),
(359, '14736920932', '11936925814', 'juliana.souza@email.com'),
(360, '25814739934', '51914736925', 'adriana.costa@email.com'),
(361, '36925818936', '21925814736', 'marcos.alves@email.com'),
(362, '14736927938', '31936925814', 'marcos.rodrigues@email.com'),
(363, '25814736940', '11914736925', 'ricardo.silva@email.com'),
(364, '36925815942', '51925814736', 'juliana.pereira@email.com'),
(365, '14736924944', '21936925814', 'sandra.rodrigues@email.com'),
(366, '25814733946', '31914736925', 'marcos.souza@email.com'),
(367, '36925812948', '11925814736', 'juliana.silva@email.com'),
(368, '14736921950', '51936925814', 'marcos.silva@email.com'),
(369, '25814730952', '21914736925', 'adriana.gomes@email.com'),
(370, '36925819954', '31925814736', 'marcelo.souza@email.com'),
(371, '14736928956', '11936925814', 'marcos.souza@email.com'),
(372, '25814737958', '51914736925', 'maria.lima@email.com'),
(373, '36925816960', '21925814736', 'sandra.souza@email.com'),
(374, '14736925962', '31936925814', 'ana.silva@email.com'),
(375, '25814734964', '11914736925', 'sandra.rodrigues@email.com'),
(376, '36925813966', '51925814736', 'marcelo.oliveira@email.com'),
(377, '14736922968', '21936925814', 'ricardo.costa@email.com'),
(378, '25814731970', '31914736925', 'fernando.martins@email.com'),
(379, '36925810972', '11925814736', 'sandra.souza@email.com'),
(380, '14736929974', '51936925814', 'carlos.souza@email.com'),
(381, '25814738976', '21914736925', 'marcos.silva@email.com'),
(382, '36925817978', '31925814736', 'ana.santos@email.com'),
(383, '14736926980', '11936925814', 'patricia.silva@email.com'),
(384, '25814735982', '51914736925', 'ricardo.rodrigues@email.com'),
(385, '36925814984', '21925814736', 'ana.souza@email.com'),
(386, '14736923986', '31936925814', 'roberto.souza@email.com'),
(387, '25814732988', '11914736925', 'juliana.alves@email.com'),
(388, '36925811990', '51925814736', 'ana.rodrigues@email.com'),
(389, '14736920992', '21936925814', 'rodrigo.souza@email.com'),
(390, '25814739994', '31914736925', 'ricardo.lima@email.com'),
(391, '36925818996', '11925814736', 'ana.santos@email.com'),
(392, '14736927998', '51936925814', 'sandra.silva@email.com'),
(393, '25814736000', '21914736925', 'marcos.santos@email.com'),
(394, '36925815002', '31925814736', 'ricardo.souza@email.com'),
(395, '14736924004', '11936925814', 'roberto.silva@email.com'),
(396, '25814733006', '51914736925', 'ana.santos@email.com'),
(397, '36925812008', '21925814736', 'carlos.souza@email.com'),
(398, '14736921010', '31936925814', 'marcos.santos@email.com'),
(399, '25814730012', '11914736925', 'sandra.souza@email.com'),
(400, '36925819014', '51925814736', 'ricardo.silva@email.com'),
(401, '14736928016', '21936925814', 'ana.silva@email.com'),
(402, '25814737018', '31914736925', 'carlos.santos@email.com'),
(403, '36925816020', '11925814736', 'marcos.lima@email.com'),
(404, '14736925022', '51936925814', 'sandra.souza@email.com'),
(405, '25814734024', '21914736925', 'marcos.silva@email.com'),
(406, '36925813026', '31925814736', 'ricardo.santos@email.com'),
(407, '14736922028', '11936925814', 'ana.rodrigues@email.com'),
(408, '25814731030', '51914736925', 'ricardo.souza@email.com'),
(409, '36925810032', '21925814736', 'sandra.santos@email.com'),
(410, '14736929034', '31936925814', 'marcos.santos@email.com'),
(411, '25814738036', '11914736925', 'ricardo.silva@email.com'),
(412, '36925817038', '51925814736', 'ana.santos@email.com'),
(413, '14736926040', '21936925814', 'marcos.silva@email.com'),
(414, '25814735042', '31914736925', 'sandra.souza@email.com'),
(415, '36925814044', '11925814736', 'ricardo.santos@email.com'),
(416, '14736923046', '51936925814', 'ana.silva@email.com'),
(417, '25814732048', '21914736925', 'marcos.silva@email.com'),
(418, '36925811050', '31925814736', 'sandra.santos@email.com'),
(419, '14736920052', '11936925814', 'ricardo.santos@email.com'),
(420, '25814739054', '51914736925', 'ana.silva@email.com'),
(421, '36925818056', '21925814736', 'carlos.silva@email.com'),
(422, '14736927058', '31936925814', 'marcos.santos@email.com'),
(423, '25814736060', '11914736925', 'sandra.souza@email.com'),
(424, '36925815062', '51925814736', 'marcos.silva@email.com'),
(425, '14736924064', '21936925814', 'ricardo.santos@email.com'),
(426, '25814733066', '31936925814', 'ana.rodrigues@email.com'),
(427, '36925812068', '11914736925', 'ricardo.souza@email.com'),
(428, '14736921070', '51914736925', 'sandra.santos@email.com'),
(429, '25814730072', '21925814736', 'marcos.santos@email.com'),
(430, '36925819074', '31925814736', 'ricardo.silva@email.com'),
(431, '14736928076', '11936925814', 'ana.santos@email.com'),
(432, '25814737078', '51936925814', 'marcos.silva@email.com'),
(433, '36925816080', '21936925814', 'sandra.souza@email.com'),
(434, '14736925082', '31914736925', 'ricardo.santos@email.com'),
(435, '25814734084', '11925814736', 'ana.silva@email.com'),
(436, '36925813086', '51925814736', 'marcos.silva@email.com'),
(437, '14736922088', '21925814736', 'sandra.santos@email.com'),
(438, '25814731090', '31925814736', 'ricardo.santos@email.com'),
(439, '36925810092', '11936925814', 'ana.silva@email.com'),
(440, '14736929094', '51936925814', 'carlos.silva@email.com'),
(441, '25814738096', '21936925814', 'marcos.santos@email.com'),
(442, '36925817098', '31914736925', 'sandra.souza@email.com'),
(443, '14736926100', '11925814736', 'marcos.silva@email.com'),
(444, '25814735102', '51925814736', 'ricardo.santos@email.com'),
(445, '36925814104', '21925814736', 'ana.rodrigues@email.com'),
(446, '14736923106', '31925814736', 'ricardo.souza@email.com'),
(447, '25814732108', '11936925814', 'sandra.santos@email.com'),
(448, '36925811110', '51936925814', 'marcos.santos@email.com'),
(449, '14736920112', '21936925814', 'ricardo.silva@email.com'),
(450, '25814739114', '31914736925', 'ana.santos@email.com'),
(451, '36925818116', '11925814736', 'marcos.silva@email.com'),
(452, '14736927118', '51925814736', 'sandra.souza@email.com'),
(453, '25814736120', '21925814736', 'ricardo.santos@email.com'),
(454, '36925815122', '31925814736', 'ana.silva@email.com'),
(455, '14736924124', '11936925814', 'marcos.silva@email.com'),
(456, '25814733126', '51936925814', 'sandra.santos@email.com'),
(457, '36925812128', '21936925814', 'ricardo.santos@email.com'),
(458, '14736921130', '31914736925', 'ana.silva@email.com'),
(459, '25814730132', '11925814736', 'carlos.silva@email.com'),
(460, '36925819134', '51925814736', 'marcos.santos@email.com'),
(461, '14736928136', '21925814736', 'sandra.souza@email.com'),
(462, '25814737138', '31925814736', 'marcos.silva@email.com'),
(463, '36925816138', '11936925814', 'ricardo.santos@email.com'),
(464, '14736925140', '51936925814', 'ana.rodrigues@email.com'),
(465, '25814734142', '21936925814', 'ricardo.souza@email.com'),
(466, '36925813144', '31914736925', 'sandra.santos@email.com'),
(467, '14736922146', '11925814736', 'marcos.santos@email.com'),
(468, '25814731148', '51925814736', 'ricardo.silva@email.com'),
(469, '36925810150', '21925814736', 'ana.santos@email.com'),
(470, '14736929152', '31925814736', 'marcos.silva@email.com'),
(471, '25814738154', '11936925814', 'sandra.souza@email.com'),
(472, '36925817156', '51936925814', 'ricardo.santos@email.com'),
(473, '14736926158', '21936925814', 'ana.silva@email.com'),
(474, '25814735160', '31914736925', 'marcos.silva@email.com'),
(475, '36925814162', '11925814736', 'sandra.santos@email.com'),
(476, '14736923164', '51925814736', 'ricardo.santos@email.com'),
(477, '25814732166', '21925814736', 'ana.silva@email.com'),
(478, '36925811168', '31925814736', 'carlos.silva@email.com'),
(479, '14736920170', '11936925814', 'marcos.santos@email.com'),
(480, '25814739172', '51936925814', 'sandra.souza@email.com'),
(481, '36925818174', '21936925814', 'marcos.silva@email.com'),
(482, '14736927176', '31914736925', 'ricardo.santos@email.com'),
(483, '25814736178', '11925814736', 'ana.rodrigues@email.com'),
(484, '36925815180', '51925814736', 'ricardo.souza@email.com'),
(485, '14736924182', '21925814736', 'sandra.santos@email.com'),
(486, '25814733184', '31925814736', 'marcos.santos@email.com'),
(487, '36925812186', '11936925814', 'ricardo.silva@email.com'),
(488, '14736921188', '51936925814', 'ana.santos@email.com'),
(489, '25814730190', '21936925814', 'marcos.silva@email.com'),
(490, '36925819192', '31914736925', 'sandra.souza@email.com'),
(491, '14736928194', '11925814736', 'ricardo.santos@email.com'),
(492, '25814737196', '51925814736', 'ana.silva@email.com'),
(493, '36925816198', '21925814736', 'marcos.silva@email.com'),
(494, '14736925200', '31925814736', 'sandra.santos@email.com'),
(495, '25814734202', '11936925814', 'ricardo.santos@email.com'),
(496, '36925813204', '51936925814', 'ana.silva@email.com'),
(497, '14736922206', '21936925814', 'carlos.silva@email.com'),
(498, '25814731208', '31914736925', 'marcos.santos@email.com'),
(499, '36925810210', '11925814736', 'sandra.souza@email.com'),
(500, '14736929212', '51925814736', 'marcos.silva@email.com'),
(501, '25814738214', '21925814736', 'ricardo.santos@email.com'),
(502, '36925817216', '31925814736', 'ana.rodrigues@email.com'),
(503, '14736926218', '11936925814', 'ricardo.souza@email.com'),
(504, '25814735220', '51936925814', 'sandra.santos@email.com'),
(505, '36925814222', '21936925814', 'marcos.santos@email.com'),
(506, '14736923224', '31914736925', 'ricardo.silva@email.com'),
(507, '25814732226', '11925814736', 'ana.santos@email.com'),
(508, '36925811228', '51925814736', 'marcos.silva@email.com'),
(509, '14736920230', '21925814736', 'sandra.souza@email.com'),
(510, '25814739232', '31925814736', 'ricardo.santos@email.com'),
(511, '36925818234', '11936925814', 'ana.silva@email.com'),
(512, '14736927236', '51936925814', 'marcos.silva@email.com'),
(513, '25814736238', '21936925814', 'sandra.santos@email.com'),
(514, '36925815240', '31914736925', 'ricardo.santos@email.com'),
(515, '14736924242', '11925814736', 'ana.silva@email.com'),
(516, '25814733244', '51925814736', 'carlos.silva@email.com'),
(517, '36925812246', '21925814736', 'marcos.santos@email.com'),
(518, '14736921248', '31925814736', 'sandra.souza@email.com'),
(519, '25814730250', '11936925814', 'marcos.silva@email.com'),
(520, '25814730251', '11936925815', 'marcos.santos@email.com'),
(521, '36925819015', '51925814737', 'ricardo.souza@email.com'),
(522, '14736928017', '21936925815', 'ana.souza@email.com'),
(523, '25814737019', '31914736926', 'carlos.santos@email.com'),
(524, '36925816021', '11925814737', 'marcos.santos@email.com'),
(525, '14736925023', '51936925815', 'ricardo.silva@email.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `matriculas`
--

DROP TABLE IF EXISTS `matriculas`;
CREATE TABLE `matriculas` (
  `ID_Matricula` int(10) NOT NULL,
  `Data_de_Matricula` date DEFAULT NULL,
  `Situacao` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `matriculas`
--

INSERT INTO `matriculas` (`ID_Matricula`, `Data_de_Matricula`, `Situacao`) VALUES
(1, '2026-06-12', 1),
(2, '2026-06-12', 1),
(3, '2026-06-12', 3),
(4, '2026-06-12', 3),
(5, '2026-06-12', 2),
(6, '2026-06-12', 3),
(7, '2026-06-12', 2),
(8, '2026-06-12', 3),
(9, '2026-06-12', 3),
(10, '2026-06-12', 3),
(11, '2026-06-12', 2),
(12, '2026-06-12', 1),
(13, '2026-06-12', 1),
(14, '2026-06-12', 1),
(15, '2026-06-12', 3),
(16, '2026-06-12', 1),
(17, '2026-06-12', 3),
(18, '2026-06-12', 3),
(19, '2026-06-12', 1),
(20, '2026-06-12', 3),
(21, '2026-06-12', 2),
(22, '2026-06-12', 2),
(23, '2026-06-12', 3),
(24, '2026-06-12', 3),
(25, '2026-06-12', 2),
(26, '2026-06-12', 2),
(27, '2026-06-12', 2),
(28, '2026-06-12', 1),
(29, '2026-06-12', 2),
(30, '2026-06-12', 2),
(31, '2026-06-12', 3),
(32, '2026-06-12', 1),
(33, '2026-06-12', 3),
(34, '2026-06-12', 3),
(35, '2026-06-12', 1),
(36, '2026-06-12', 2),
(37, '2026-06-12', 1),
(38, '2026-06-12', 3),
(39, '2026-06-12', 2),
(40, '2026-06-12', 3),
(41, '2026-06-12', 3),
(42, '2026-06-12', 2),
(43, '2026-06-12', 2),
(44, '2026-06-12', 3),
(45, '2026-06-12', 1),
(46, '2026-06-12', 2),
(47, '2026-06-12', 3),
(48, '2026-06-12', 2),
(49, '2026-06-12', 3),
(50, '2026-06-12', 3),
(51, '2026-06-12', 3),
(52, '2026-06-12', 2),
(53, '2026-06-12', 2),
(54, '2026-06-12', 3),
(55, '2026-06-12', 1),
(56, '2026-06-12', 2),
(57, '2026-06-12', 2),
(58, '2026-06-12', 1),
(59, '2026-06-12', 3),
(60, '2026-06-12', 1),
(61, '2026-06-12', 1),
(62, '2026-06-12', 2),
(63, '2026-06-12', 2),
(64, '2026-06-12', 1),
(65, '2026-06-12', 1),
(66, '2026-06-12', 3),
(67, '2026-06-12', 2),
(68, '2026-06-12', 3),
(69, '2026-06-12', 1),
(70, '2026-06-12', 2),
(71, '2026-06-12', 2),
(72, '2026-06-12', 3),
(73, '2026-06-12', 3),
(74, '2026-06-12', 1),
(75, '2026-06-12', 3),
(76, '2026-06-12', 2),
(77, '2026-06-12', 2),
(78, '2026-06-12', 1),
(79, '2026-06-12', 3),
(80, '2026-06-12', 3),
(81, '2026-06-12', 3),
(82, '2026-06-12', 1),
(83, '2026-06-12', 3),
(84, '2026-06-12', 1),
(85, '2026-06-12', 2),
(86, '2026-06-12', 2),
(87, '2026-06-12', 3),
(88, '2026-06-12', 1),
(89, '2026-06-12', 2),
(90, '2026-06-12', 1),
(91, '2026-06-12', 3),
(92, '2026-06-12', 2),
(93, '2026-06-12', 1),
(94, '2026-06-12', 2),
(95, '2026-06-12', 2),
(96, '2026-06-12', 3),
(97, '2026-06-12', 2),
(98, '2026-06-12', 1),
(99, '2026-06-12', 3),
(100, '2026-06-12', 1),
(101, '2026-06-12', 1),
(102, '2026-06-12', 2),
(103, '2026-06-12', 3),
(104, '2026-06-12', 1),
(105, '2026-06-12', 3),
(106, '2026-06-12', 1),
(107, '2026-06-12', 2),
(108, '2026-06-12', 2),
(109, '2026-06-12', 1),
(110, '2026-06-12', 3),
(111, '2026-06-12', 1),
(112, '2026-06-12', 2),
(113, '2026-06-12', 3),
(114, '2026-06-12', 1),
(115, '2026-06-12', 1),
(116, '2026-06-12', 3),
(117, '2026-06-12', 1),
(118, '2026-06-12', 2),
(119, '2026-06-12', 1),
(120, '2026-06-12', 1),
(121, '2026-06-12', 2),
(122, '2026-06-12', 3),
(123, '2026-06-12', 1),
(124, '2026-06-12', 2),
(125, '2026-06-12', 3),
(126, '2026-06-12', 2),
(127, '2026-06-12', 3),
(128, '2026-06-12', 3),
(129, '2026-06-12', 2),
(130, '2026-06-12', 3),
(131, '2026-06-12', 3),
(132, '2026-06-12', 1),
(133, '2026-06-12', 2),
(134, '2026-06-12', 2),
(135, '2026-06-12', 2),
(136, '2026-06-12', 3),
(137, '2026-06-12', 3),
(138, '2026-06-12', 2),
(139, '2026-06-12', 1),
(140, '2026-06-12', 1),
(141, '2026-06-12', 2),
(142, '2026-06-12', 1),
(143, '2026-06-12', 1),
(144, '2026-06-12', 1),
(145, '2026-06-12', 2),
(146, '2026-06-12', 3),
(147, '2026-06-12', 2),
(148, '2026-06-12', 2),
(149, '2026-06-12', 2),
(150, '2026-06-12', 1),
(151, '2026-06-12', 1),
(152, '2026-06-12', 3),
(153, '2026-06-12', 1),
(154, '2026-06-12', 3),
(155, '2026-06-12', 2),
(156, '2026-06-12', 1),
(157, '2026-06-12', 1),
(158, '2026-06-12', 3),
(159, '2026-06-12', 1),
(160, '2026-06-12', 3),
(161, '2026-06-12', 3),
(162, '2026-06-12', 2),
(163, '2026-06-12', 1),
(164, '2026-06-12', 3),
(165, '2026-06-12', 3),
(166, '2026-06-12', 1),
(167, '2026-06-12', 2),
(168, '2026-06-12', 1),
(169, '2026-06-12', 1),
(170, '2026-06-12', 2),
(171, '2026-06-12', 2),
(172, '2026-06-12', 1),
(173, '2026-06-12', 2),
(174, '2026-06-12', 3),
(175, '2026-06-12', 3),
(176, '2026-06-12', 3),
(177, '2026-06-12', 2),
(178, '2026-06-12', 3),
(179, '2026-06-12', 2),
(180, '2026-06-12', 2),
(181, '2026-06-12', 2),
(182, '2026-06-12', 2),
(183, '2026-06-12', 3),
(184, '2026-06-12', 1),
(185, '2026-06-12', 2),
(186, '2026-06-12', 3),
(187, '2026-06-12', 2),
(188, '2026-06-12', 2),
(189, '2026-06-12', 2),
(190, '2026-06-12', 3),
(191, '2026-06-12', 1),
(192, '2026-06-12', 3),
(193, '2026-06-12', 3),
(194, '2026-06-12', 3),
(195, '2026-06-12', 3),
(196, '2026-06-12', 3),
(197, '2026-06-12', 2),
(198, '2026-06-12', 1),
(199, '2026-06-12', 1),
(200, '2026-06-12', 1),
(201, '2026-06-12', 3),
(202, '2026-06-12', 3),
(203, '2026-06-12', 2),
(204, '2026-06-12', 1),
(205, '2026-06-12', 3),
(206, '2026-06-12', 3),
(207, '2026-06-12', 1),
(208, '2026-06-12', 1),
(209, '2026-06-12', 3),
(210, '2026-06-12', 1),
(211, '2026-06-12', 3),
(212, '2026-06-12', 3),
(213, '2026-06-12', 2),
(214, '2026-06-12', 2),
(215, '2026-06-12', 1),
(216, '2026-06-12', 2),
(217, '2026-06-12', 3),
(218, '2026-06-12', 2),
(219, '2026-06-12', 3),
(220, '2026-06-12', 1),
(221, '2026-06-12', 2),
(222, '2026-06-12', 1),
(223, '2026-06-12', 1),
(224, '2026-06-12', 3),
(225, '2026-06-12', 1),
(226, '2026-06-12', 2),
(227, '2026-06-12', 2),
(228, '2026-06-12', 2),
(229, '2026-06-12', 1),
(230, '2026-06-12', 3),
(231, '2026-06-12', 2),
(232, '2026-06-12', 3),
(233, '2026-06-12', 2),
(234, '2026-06-12', 3),
(235, '2026-06-12', 3),
(236, '2026-06-12', 2),
(237, '2026-06-12', 3),
(238, '2026-06-12', 3),
(239, '2026-06-12', 2),
(240, '2026-06-12', 1),
(241, '2026-06-12', 3),
(242, '2026-06-12', 2),
(243, '2026-06-12', 2),
(244, '2026-06-12', 2),
(245, '2026-06-12', 2),
(246, '2026-06-12', 3),
(247, '2026-06-12', 2),
(248, '2026-06-12', 1),
(249, '2026-06-12', 2),
(250, '2026-06-12', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `matriculas_cursos`
--

DROP TABLE IF EXISTS `matriculas_cursos`;
CREATE TABLE `matriculas_cursos` (
  `ID_Matricula` int(10) DEFAULT NULL,
  `ID_Curso` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `matriculas_cursos`
--

INSERT INTO `matriculas_cursos` (`ID_Matricula`, `ID_Curso`) VALUES
(20, 1),
(20, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `professores`
--

DROP TABLE IF EXISTS `professores`;
CREATE TABLE `professores` (
  `ID_Professor` int(10) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `ID_Info` int(10) DEFAULT NULL,
  `ID_Formacao` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `professores`
--

INSERT INTO `professores` (`ID_Professor`, `Nome`, `ID_Info`, `ID_Formacao`) VALUES
(1, 'Carlos Eduardo Mendes', 1, 1),
(2, 'Roberta Souza', 2, 2),
(3, 'Bruno Albuquerque', 3, 1),
(4, 'Arnaldo Antunes Neto', 4, 1),
(5, 'Thiago Ramos', 5, 2),
(6, 'Alexandre Rebouças', 6, 1),
(7, 'Eliana Hayashi', 7, 1),
(8, 'Murilo Fontes', 8, 1),
(9, 'Sandra Helena Medeiros', 9, 1),
(10, 'Ricardo Fragoso', 10, 1),
(11, 'Beatriz Junqueira', 11, 1),
(12, 'Rogério Pires', 12, 2),
(13, 'Marcos Vinícius Dias', 13, 2),
(14, 'Fernando Castelo', 14, 1),
(15, 'Letícia Guimarães', 15, 1),
(16, 'Roberto Montenegro', 16, 3),
(17, 'Glória Maria Vasconcellos', 17, 1),
(18, 'Juliano Prado', 18, 2),
(19, 'Mariana Lins', 19, 2),
(20, 'Otávio Mesquita Filho', 20, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `responsaveis`
--

DROP TABLE IF EXISTS `responsaveis`;
CREATE TABLE `responsaveis` (
  `ID_Responsavel` int(10) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `Parentesco` varchar(20) DEFAULT NULL,
  `ID_Info` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `responsaveis`
--

INSERT INTO `responsaveis` (`ID_Responsavel`, `Nome`, `Parentesco`, `ID_Info`) VALUES
(251, 'Luciana Santos Silva', 'Tio', 276),
(252, 'Maria Souza Oliveira', 'Mãe', 277),
(253, 'Luciana Ribeiro Almeida', 'Mãe', 278),
(254, 'Patrícia Alves Silva', 'Pai', 279),
(255, 'Ana Souza Souza', 'Pai', 280),
(256, 'Fernando Souza Ribeiro', 'Avô', 281),
(257, 'Maria Pereira Gomes', 'Tio', 282),
(258, 'Adriana Carvalho Silva', 'Padrasto', 283),
(259, 'Marcelo Alves Ferreira', 'Tio', 284),
(260, 'Roberto Souza Martins', 'Tia', 285),
(261, 'Ana Santos Alves', 'Mãe', 286),
(262, 'Marcos Carvalho Ferreira', 'Tio', 287),
(263, 'Adriana Silva Ribeiro', 'Avó', 288),
(264, 'Fernando Santos Almeida', 'Avô', 289),
(265, 'Ana Lima Rodrigues', 'Tia', 290),
(266, 'Patrícia Souza Ribeiro', 'Mãe', 291),
(267, 'Carlos Costa Souza', 'Tio', 292),
(268, 'Ana Carvalho Souza', 'Mãe', 293),
(269, 'Ricardo Rodrigues Pereira', 'Tia', 294),
(270, 'Roberto Ferreira Ferreira', 'Madrasta', 295),
(271, 'Luciana Rodrigues Ribeiro', 'Mãe', 296),
(272, 'Patrícia Costa Oliveira', 'Madrasta', 297),
(273, 'Roberto Pereira Alves', 'Tio', 298),
(274, 'Camila Costa Ribeiro', 'Madrasta', 299),
(275, 'Luciana Ferreira Carvalho', 'Pai', 300),
(276, 'Maria Carvalho Silva', 'Tia', 301),
(277, 'Ricardo Rodrigues Santos', 'Madrasta', 302),
(278, 'Camila Gomes Almeida', 'Tia', 303),
(279, 'Maria Costa Pereira', 'Avô', 304),
(280, 'Camila Almeida Costa', 'Avó', 305),
(281, 'Roberto Rodrigues Oliveira', 'Madrasta', 306),
(282, 'Marcelo Lima Lima', 'Tio', 307),
(283, 'Marcelo Gomes Alves', 'Avô', 308),
(284, 'Marcos Souza Oliveira', 'Avó', 309),
(285, 'Ana Martins Silva', 'Mãe', 310),
(286, 'Roberto Costa Oliveira', 'Avô', 311),
(287, 'Ricardo Martins Santos', 'Padrasto', 312),
(288, 'Sandra Lima Santos', 'Tio', 313),
(289, 'Ricardo Ferreira Santos', 'Tia', 314),
(290, 'Marcos Souza Santos', 'Tia', 315),
(291, 'Marcos Alves Gomes', 'Padrasto', 316),
(292, 'Sandra Ribeiro Souza', 'Mãe', 317),
(293, 'Marcos Lima Rodrigues', 'Mãe', 318),
(294, 'Ricardo Gomes Souza', 'Pai', 319),
(295, 'Ricardo Ribeiro Ferreira', 'Mãe', 320),
(296, 'Roberto Lima Santos', 'Pai', 321),
(297, 'Marcos Oliveira Ferreira', 'Avó', 322),
(298, 'Juliana Ribeiro Souza', 'Padrasto', 323),
(299, 'Marcos Costa Souza', 'Tia', 324),
(300, 'Sandra Costa Silva', 'Madrasta', 325),
(301, 'Marcos Ribeiro Souza', 'Mãe', 326),
(302, 'Ricardo Souza Pereira', 'Mãe', 327),
(303, 'Rodrigo Oliveira Rodrigues', 'Padrasto', 328),
(304, 'Camila Pereira Silva', 'Tio', 329),
(305, 'Ana Santos Rodrigues', 'Mãe', 330),
(306, 'Patrícia Souza Martins', 'Madrasta', 331),
(307, 'Ana Gomes Souza', 'Avô', 332),
(308, 'Marcelo Ribeiro Costa', 'Padrasto', 333),
(309, 'Marcos Pereira Lima', 'Pai', 334),
(310, 'Roberto Gomes Silva', 'Mãe', 335),
(311, 'Patrícia Costa Santos', 'Pai', 336),
(312, 'Sandra Souza Pereira', 'Mãe', 337),
(313, 'Adriana Rodrigues Oliveira', 'Pai', 338),
(314, 'Carlos Rodrigues Ferreira', 'Tia', 339),
(315, 'Roberto Santos Oliveira', 'Mãe', 340),
(316, 'Adriana Martins Ribeiro', 'Padrasto', 341),
(317, 'Carlos Souza Silva', 'Padrasto', 342),
(318, 'Patrícia Rodrigues Silva', 'Madrasta', 343),
(319, 'Rodrigo Oliveira Lima', 'Pai', 344),
(320, 'Juliana Lima Souza', 'Madrasta', 345),
(321, 'Carlos Rodrigues Santos', 'Avô', 346),
(322, 'Sandra Ribeiro Ribeiro', 'Madrasta', 347),
(323, 'Rodrigo Ferreira Silva', 'Tia', 348),
(324, 'Patrícia Silva Costa', 'Padrasto', 349),
(325, 'Sandra Alves Rodrigues', 'Avô', 350),
(326, 'Sandra Martins Martins', 'Tio', 351),
(327, 'Marcos Lima Souza', 'Tio', 352),
(328, 'Adriana Ferreira Santos', 'Tio', 353),
(329, 'Sandra Ribeiro Oliveira', 'Madrasta', 354),
(330, 'Roberto Santos Ferreira', 'Madrasta', 355),
(331, 'Juliana Silva Lima', 'Mãe', 356),
(332, 'Juliana Souza Ribeiro', 'Madrasta', 357),
(333, 'Carlos Lima Carvalho', 'Mãe', 358),
(334, 'Juliana Lima Souza', 'Padrasto', 359),
(335, 'Adriana Rodrigues Costa', 'Tio', 360),
(336, 'Marcos Souza Alves', 'Pai', 361),
(337, 'Marcos Souza Rodrigues', 'Padrasto', 362),
(338, 'Ricardo Souza Silva', 'Tio', 363),
(339, 'Juliana Martins Pereira', 'Tio', 364),
(340, 'Sandra Silva Rodrigues', 'Avó', 365),
(341, 'Marcos Costa Souza', 'Tia', 366),
(342, 'Juliana Almeida Silva', 'Tio', 367),
(343, 'Marcos Rodrigues Silva', 'Avô', 368),
(344, 'Adriana Souza Gomes', 'Avó', 369),
(345, 'Marcelo Ribeiro Souza', 'Mãe', 370),
(346, 'Marcos Rodrigues Souza', 'Madrasta', 371),
(347, 'Maria Souza Lima', 'Avô', 372),
(348, 'Sandra Rodrigues Souza', 'Tio', 373),
(349, 'Ana Ribeiro Silva', 'Mãe', 374),
(350, 'Sandra Lima Rodrigues', 'Mãe', 375),
(351, 'Marcelo Santos Oliveira', 'Padrasto', 376),
(352, 'Ricardo Oliveira Costa', 'Madrasta', 377),
(353, 'Fernando Souza Martins', 'Madrasta', 378),
(354, 'Sandra Souza Souza', 'Avô', 379),
(355, 'Carlos Ribeiro Souza', 'Madrasta', 380),
(356, 'Marcos Martins Silva', 'Mãe', 381),
(357, 'Ana Oliveira Santos', 'Tio', 382),
(358, 'Patrícia Lima Silva', 'Madrasta', 383),
(359, 'Ricardo Santos Rodrigues', 'Mãe', 384),
(360, 'Ana Souza Souza', 'Tia', 385),
(361, 'Roberto Silva Souza', 'Pai', 386),
(362, 'Juliana Santos Alves', 'Madrasta', 387),
(363, 'Ana Silva Rodrigues', 'Mãe', 388),
(364, 'Rodrigo Santos Souza', 'Pai', 389),
(365, 'Ricardo Souza Lima', 'Mãe', 390),
(366, 'Ana Oliveira Santos', 'Mãe', 391),
(367, 'Sandra Lima Silva', 'Tio', 392),
(368, 'Marcos Lima Santos', 'Padrasto', 393),
(369, 'Ricardo Alves Souza', 'Tio', 394),
(370, 'Roberto Santos Silva', 'Padrasto', 395),
(371, 'Ana Souza Santos', 'Tia', 396),
(372, 'Carlos Rodrigues Souza', 'Pai', 397),
(373, 'Marcos Souza Santos', 'Avó', 398),
(374, 'Sandra Rodrigues Souza', 'Padrasto', 399),
(375, 'Ricardo Santos Silva', 'Madrasta', 400),
(376, 'Ana Souza Silva', 'Pai', 401),
(377, 'Carlos Ferreira Santos', 'Tia', 402),
(378, 'Marcos Souza Lima', 'Madrasta', 403),
(379, 'Sandra Silva Souza', 'Padrasto', 404),
(380, 'Marcos Santos Silva', 'Pai', 405),
(381, 'Ricardo Souza Santos', 'Tio', 406),
(382, 'Ana Souza Rodrigues', 'Madrasta', 407),
(383, 'Ricardo Santos Souza', 'Mãe', 408),
(384, 'Sandra Silva Santos', 'Pai', 409),
(385, 'Marcos Souza Santos', 'Tia', 410),
(386, 'Ricardo Rodrigues Silva', 'Madrasta', 411),
(387, 'Ana Souza Santos', 'Padrasto', 412),
(388, 'Marcos Santos Silva', 'Pai', 413),
(389, 'Sandra Silva Souza', 'Mãe', 414),
(390, 'Ricardo Souza Santos', 'Pai', 415),
(391, 'Ana Rodrigues Silva', 'Madrasta', 416),
(392, 'Marcos Santos Silva', 'Mãe', 417),
(393, 'Sandra Silva Santos', 'Pai', 418),
(394, 'Ricardo Souza Santos', 'Madrasta', 419),
(395, 'Ana Souza Silva', 'Pai', 420),
(396, 'Carlos Santos Silva', 'Tia', 421),
(397, 'Marcos Souza Santos', 'Madrasta', 422),
(398, 'Sandra Silva Souza', 'Padrasto', 423),
(399, 'Marcos Santos Silva', 'Pai', 424),
(400, 'Ricardo Souza Santos', 'Tio', 425),
(401, 'Ana Souza Rodrigues', 'Madrasta', 426),
(402, 'Ricardo Santos Souza', 'Mãe', 427),
(403, 'Sandra Silva Santos', 'Pai', 428),
(404, 'Marcos Souza Santos', 'Tia', 429),
(405, 'Ricardo Rodrigues Silva', 'Madrasta', 430),
(406, 'Ana Souza Santos', 'Padrasto', 431),
(407, 'Marcos Santos Silva', 'Pai', 432),
(408, 'Sandra Silva Souza', 'Mãe', 433),
(409, 'Ricardo Souza Santos', 'Pai', 434),
(410, 'Ana Rodrigues Silva', 'Madrasta', 435),
(411, 'Marcos Santos Silva', 'Mãe', 436),
(412, 'Sandra Silva Santos', 'Pai', 437),
(413, 'Ricardo Souza Santos', 'Madrasta', 438),
(414, 'Ana Souza Silva', 'Pai', 439),
(415, 'Carlos Santos Silva', 'Tia', 440),
(416, 'Marcos Souza Santos', 'Madrasta', 441),
(417, 'Sandra Silva Souza', 'Padrasto', 442),
(418, 'Marcos Santos Silva', 'Pai', 443),
(419, 'Ricardo Souza Santos', 'Tio', 444),
(420, 'Ana Souza Rodrigues', 'Madrasta', 445),
(421, 'Ricardo Santos Souza', 'Mãe', 446),
(422, 'Sandra Silva Santos', 'Pai', 447),
(423, 'Marcos Souza Santos', 'Tia', 448),
(424, 'Ricardo Rodrigues Silva', 'Madrasta', 449),
(425, 'Ana Souza Santos', 'Padrasto', 450),
(426, 'Marcos Santos Silva', 'Pai', 451),
(427, 'Sandra Silva Souza', 'Mãe', 452),
(428, 'Ricardo Souza Santos', 'Pai', 453),
(429, 'Ana Rodrigues Silva', 'Madrasta', 454),
(430, 'Marcos Santos Silva', 'Mãe', 455),
(431, 'Sandra Silva Santos', 'Pai', 456),
(432, 'Ricardo Souza Santos', 'Madrasta', 457),
(433, 'Ana Souza Silva', 'Pai', 458),
(434, 'Carlos Santos Silva', 'Tia', 459),
(435, 'Marcos Souza Santos', 'Madrasta', 460),
(436, 'Sandra Silva Souza', 'Padrasto', 461),
(437, 'Marcos Santos Silva', 'Pai', 462),
(438, 'Ricardo Souza Santos', 'Tio', 463),
(439, 'Ana Souza Rodrigues', 'Madrasta', 464),
(440, 'Ricardo Santos Souza', 'Mãe', 465),
(441, 'Sandra Silva Santos', 'Pai', 466),
(442, 'Marcos Souza Santos', 'Tia', 467),
(443, 'Ricardo Rodrigues Silva', 'Madrasta', 468),
(444, 'Ana Souza Santos', 'Padrasto', 469),
(445, 'Marcos Santos Silva', 'Pai', 470),
(446, 'Sandra Silva Souza', 'Mãe', 471),
(447, 'Ricardo Souza Santos', 'Pai', 472),
(448, 'Ana Rodrigues Silva', 'Madrasta', 473),
(449, 'Marcos Santos Silva', 'Mãe', 474),
(450, 'Sandra Silva Santos', 'Pai', 475),
(451, 'Ricardo Souza Santos', 'Madrasta', 476),
(452, 'Ana Souza Silva', 'Pai', 477),
(453, 'Carlos Santos Silva', 'Tia', 478),
(454, 'Marcos Souza Santos', 'Madrasta', 479),
(455, 'Sandra Silva Souza', 'Padrasto', 480),
(456, 'Marcos Santos Silva', 'Pai', 481),
(457, 'Ricardo Souza Santos', 'Tio', 482),
(458, 'Ana Souza Rodrigues', 'Madrasta', 483),
(459, 'Ricardo Santos Souza', 'Mãe', 484),
(460, 'Sandra Silva Santos', 'Pai', 485),
(461, 'Marcos Souza Santos', 'Tia', 486),
(462, 'Ricardo Rodrigues Silva', 'Madrasta', 487),
(463, 'Ana Souza Santos', 'Padrasto', 488),
(464, 'Marcos Santos Silva', 'Pai', 489),
(465, 'Sandra Silva Souza', 'Mãe', 490),
(466, 'Ricardo Souza Santos', 'Pai', 491),
(467, 'Ana Rodrigues Silva', 'Madrasta', 492),
(468, 'Marcos Santos Silva', 'Mãe', 493),
(469, 'Sandra Silva Santos', 'Pai', 494),
(470, 'Ricardo Souza Santos', 'Madrasta', 495),
(471, 'Ana Souza Silva', 'Pai', 496),
(472, 'Carlos Santos Silva', 'Tia', 497),
(473, 'Marcos Souza Santos', 'Madrasta', 498),
(474, 'Sandra Silva Souza', 'Padrasto', 499),
(475, 'Marcos Santos Silva', 'Pai', 500),
(476, 'Ricardo Souza Santos', 'Tio', 501),
(477, 'Ana Souza Rodrigues', 'Madrasta', 502),
(478, 'Ricardo Santos Souza', 'Mãe', 503),
(479, 'Sandra Silva Santos', 'Pai', 504),
(480, 'Marcos Souza Santos', 'Tia', 505),
(481, 'Ricardo Rodrigues Silva', 'Madrasta', 506),
(482, 'Ana Souza Santos', 'Padrasto', 507),
(483, 'Marcos Santos Silva', 'Pai', 508),
(484, 'Sandra Silva Souza', 'Mãe', 509),
(485, 'Ricardo Souza Santos', 'Pai', 510),
(486, 'Ana Rodrigues Silva', 'Madrasta', 511),
(487, 'Marcos Santos Silva', 'Mãe', 512),
(488, 'Sandra Silva Santos', 'Pai', 513),
(489, 'Ricardo Souza Santos', 'Madrasta', 514),
(490, 'Ana Souza Silva', 'Pai', 515),
(491, 'Carlos Santos Silva', 'Tia', 516),
(492, 'Marcos Souza Santos', 'Madrasta', 517),
(493, 'Sandra Silva Souza', 'Padrasto', 518),
(494, 'Marcos Santos Silva', 'Pai', 519),
(495, 'Ricardo Souza Santos', 'Tio', 520),
(496, 'Ana Souza Rodrigues', 'Madrasta', 521),
(497, 'Ricardo Santos Souza', 'Mãe', 522),
(498, 'Sandra Silva Santos', 'Pai', 523),
(499, 'Marcos Souza Santos', 'Tia', 524),
(500, 'Ricardo Rodrigues Silva', 'Madrasta', 525);

-- --------------------------------------------------------

--
-- Estrutura para tabela `ruas`
--

DROP TABLE IF EXISTS `ruas`;
CREATE TABLE `ruas` (
  `ID_Rua` int(10) NOT NULL,
  `ID_Bairro` int(10) DEFAULT NULL,
  `Numero` varchar(5) DEFAULT NULL,
  `CEP` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `turmas`
--

DROP TABLE IF EXISTS `turmas`;
CREATE TABLE `turmas` (
  `ID_Turma` int(10) NOT NULL,
  `Ano_Letivo` varchar(4) DEFAULT NULL,
  `Turno` char(5) DEFAULT NULL,
  `Sala` varchar(10) DEFAULT NULL,
  `ID_Curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `turmas`
--

INSERT INTO `turmas` (`ID_Turma`, `Ano_Letivo`, `Turno`, `Sala`, `ID_Curso`) VALUES
(1, '2026', 'Manhã', 'Sala 101', 1),
(2, '2026', 'Noite', 'Sala 202', 2),
(3, '2026', 'Tarde', 'Sala 103', 3),
(4, '2026', 'Manhã', 'Sala 304', 4),
(5, '2026', 'Noite', 'Sala 105', 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `uf`
--

DROP TABLE IF EXISTS `uf`;
CREATE TABLE `uf` (
  `ID_UF` int(10) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `Sigla` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `vw01_alunos_cursos`
-- (Veja abaixo para a visão atual)
--
DROP VIEW IF EXISTS `vw01_alunos_cursos`;
CREATE TABLE `vw01_alunos_cursos` (
`Código do aluno` int(10)
,`Nome do aluno` varchar(50)
,`Código da matricula` int(10)
,`Situação da matricula` int(1)
,`Código do curso` int(10)
,`Nome do curso` varchar(50)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `vw02_alunos_turmas_cursos`
-- (Veja abaixo para a visão atual)
--
DROP VIEW IF EXISTS `vw02_alunos_turmas_cursos`;
CREATE TABLE `vw02_alunos_turmas_cursos` (
`Nome do aluno` varchar(50)
,`Turma` int(10)
,`Curso` varchar(50)
,`Ano Letivo` varchar(4)
,`Turno` char(5)
,`Sala` varchar(10)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `vw03_disciplinas_oferecidas`
-- (Veja abaixo para a visão atual)
--
DROP VIEW IF EXISTS `vw03_disciplinas_oferecidas`;
CREATE TABLE `vw03_disciplinas_oferecidas` (
`Código da disciplina` int(10)
,`Nome da disciplina` varchar(80)
,`Carga horária` time
,`Código do professor` int(10)
,`Nome do professor` varchar(50)
,`Formação` varchar(50)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `vw04_disciplinas_professores_cursos`
-- (Veja abaixo para a visão atual)
--
DROP VIEW IF EXISTS `vw04_disciplinas_professores_cursos`;
CREATE TABLE `vw04_disciplinas_professores_cursos` (
`Nome do curso` varchar(50)
,`Nome da disciplina` varchar(80)
,`Carga horaria` time
,`Professor responsavel` varchar(50)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `vw05_alunos_responsaveis`
-- (Veja abaixo para a visão atual)
--
DROP VIEW IF EXISTS `vw05_alunos_responsaveis`;
CREATE TABLE `vw05_alunos_responsaveis` (
`Nome do aluno` varchar(50)
,`CPF do aluno` char(11)
,`Nome do responsável` varchar(50)
,`CPF do responsável` char(11)
,`Telefone do responsável` varchar(12)
,`Grau de parentesco` varchar(20)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `vw06_desempenho_academico`
-- (Veja abaixo para a visão atual)
--
DROP VIEW IF EXISTS `vw06_desempenho_academico`;
CREATE TABLE `vw06_desempenho_academico` (
`Aluno` varchar(50)
,`Curso` varchar(50)
,`Disciplina` varchar(80)
,`Nota` decimal(4,2)
,`Média final` decimal(4,2)
,`Frequência` decimal(4,2)
,`Situação final` int(3)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `vw07_alunos_turmas_disciplinas_professores`
-- (Veja abaixo para a visão atual)
--
DROP VIEW IF EXISTS `vw07_alunos_turmas_disciplinas_professores`;
CREATE TABLE `vw07_alunos_turmas_disciplinas_professores` (
`Aluno` varchar(50)
,`Turma` int(10)
,`Curso` varchar(50)
,`Disciplina` varchar(80)
,`Professor` varchar(50)
,`Ano letivo` varchar(4)
,`Turno` char(5)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `vw08_disciplinas_notas`
-- (Veja abaixo para a visão atual)
--
DROP VIEW IF EXISTS `vw08_disciplinas_notas`;
CREATE TABLE `vw08_disciplinas_notas` (
`Nome do aluno` varchar(50)
,`Nome da disciplina` varchar(80)
,`Nota` decimal(4,2)
,`Média final` decimal(4,2)
,`Situação final` int(3)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `vw09_situacao_matriculas`
-- (Veja abaixo para a visão atual)
--
DROP VIEW IF EXISTS `vw09_situacao_matriculas`;
CREATE TABLE `vw09_situacao_matriculas` (
`Aluno` varchar(50)
,`Curso` varchar(50)
,`Turma` int(10)
,`Data da matrícula` date
,`Situação da matrícula` int(1)
,`Ano letivo` varchar(4)
,`Turno` char(5)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `vw10_relatorio_academico_completo`
-- (Veja abaixo para a visão atual)
--
DROP VIEW IF EXISTS `vw10_relatorio_academico_completo`;
CREATE TABLE `vw10_relatorio_academico_completo` (
`Aluno` varchar(50)
,`Curso` varchar(50)
,`Turma` int(10)
,`Disciplina` varchar(80)
,`Professor` varchar(50)
,`Nota` decimal(4,2)
,`Média final` decimal(4,2)
,`Frequência` decimal(4,2)
,`Situação final` int(3)
);

-- --------------------------------------------------------

--
-- Estrutura para view `vw01_alunos_cursos`
--
DROP TABLE IF EXISTS `vw01_alunos_cursos`;

DROP VIEW IF EXISTS `vw01_alunos_cursos`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw01_alunos_cursos`  AS SELECT `a`.`ID_Aluno` AS `Código do aluno`, `a`.`Nome` AS `Nome do aluno`, `m`.`ID_Matricula` AS `Código da matricula`, `m`.`Situacao` AS `Situação da matricula`, `c`.`ID_Curso` AS `Código do curso`, `c`.`Nome_Curso` AS `Nome do curso` FROM (((`alunos` `a` join `matriculas` `m` on(`a`.`ID_Matricula` = `m`.`ID_Matricula`)) join `matriculas_cursos` `mc` on(`m`.`ID_Matricula` = `mc`.`ID_Matricula`)) join `cursos` `c` on(`c`.`ID_Curso` = `mc`.`ID_Curso`)) ;

-- --------------------------------------------------------

--
-- Estrutura para view `vw02_alunos_turmas_cursos`
--
DROP TABLE IF EXISTS `vw02_alunos_turmas_cursos`;

DROP VIEW IF EXISTS `vw02_alunos_turmas_cursos`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw02_alunos_turmas_cursos`  AS SELECT `a`.`Nome` AS `Nome do aluno`, `t`.`ID_Turma` AS `Turma`, `c`.`Nome_Curso` AS `Curso`, `t`.`Ano_Letivo` AS `Ano Letivo`, `t`.`Turno` AS `Turno`, `t`.`Sala` AS `Sala` FROM ((`alunos` `a` join `turmas` `t` on(`a`.`ID_Turma` = `t`.`ID_Turma`)) join `cursos` `c` on(`t`.`ID_Curso` = `c`.`ID_Curso`)) ;

-- --------------------------------------------------------

--
-- Estrutura para view `vw03_disciplinas_oferecidas`
--
DROP TABLE IF EXISTS `vw03_disciplinas_oferecidas`;

DROP VIEW IF EXISTS `vw03_disciplinas_oferecidas`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw03_disciplinas_oferecidas`  AS SELECT `d`.`ID_Disciplina` AS `Código da disciplina`, `d`.`nome_da_disciplina` AS `Nome da disciplina`, `d`.`Carga_Horaria` AS `Carga horária`, `p`.`ID_Professor` AS `Código do professor`, `p`.`Nome` AS `Nome do professor`, `f`.`Descricao` AS `Formação` FROM (((`disciplinas` `d` join `disciplinas_professores` `dp` on(`d`.`ID_Disciplina` = `dp`.`ID_Disciplina`)) join `professores` `p` on(`dp`.`ID_Professor` = `p`.`ID_Professor`)) join `formacoes` `f` on(`p`.`ID_Formacao` = `f`.`ID_Formacao`)) ;

-- --------------------------------------------------------

--
-- Estrutura para view `vw04_disciplinas_professores_cursos`
--
DROP TABLE IF EXISTS `vw04_disciplinas_professores_cursos`;

DROP VIEW IF EXISTS `vw04_disciplinas_professores_cursos`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw04_disciplinas_professores_cursos`  AS SELECT `c`.`Nome_Curso` AS `Nome do curso`, `d`.`nome_da_disciplina` AS `Nome da disciplina`, `d`.`Carga_Horaria` AS `Carga horaria`, `d`.`ProfessorResp` AS `Professor responsavel` FROM ((`cursos_disciplinas` `cd` join `disciplinas` `d` on(`d`.`ID_Disciplina` = `cd`.`ID_Disciplina`)) join `cursos` `c` on(`c`.`ID_Curso` = `cd`.`ID_Curso`)) ;

-- --------------------------------------------------------

--
-- Estrutura para view `vw05_alunos_responsaveis`
--
DROP TABLE IF EXISTS `vw05_alunos_responsaveis`;

DROP VIEW IF EXISTS `vw05_alunos_responsaveis`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw05_alunos_responsaveis`  AS SELECT `a`.`Nome` AS `Nome do aluno`, `info_aluno`.`CPF` AS `CPF do aluno`, `r`.`Nome` AS `Nome do responsável`, `info_responsavel`.`CPF` AS `CPF do responsável`, `info_responsavel`.`Telefone` AS `Telefone do responsável`, `r`.`Parentesco` AS `Grau de parentesco` FROM ((((`alunos` `a` join `info_pessoal` `info_aluno` on(`a`.`ID_Info` = `info_aluno`.`ID_Info`)) join `alunos_responsaveis` `ar` on(`a`.`ID_Aluno` = `ar`.`ID_Aluno`)) join `responsaveis` `r` on(`ar`.`ID_Responsavel` = `r`.`ID_Responsavel`)) join `info_pessoal` `info_responsavel` on(`r`.`ID_Info` = `info_responsavel`.`ID_Info`)) ;

-- --------------------------------------------------------

--
-- Estrutura para view `vw06_desempenho_academico`
--
DROP TABLE IF EXISTS `vw06_desempenho_academico`;

DROP VIEW IF EXISTS `vw06_desempenho_academico`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw06_desempenho_academico`  AS SELECT `a`.`Nome` AS `Aluno`, `c`.`Nome_Curso` AS `Curso`, `d`.`nome_da_disciplina` AS `Disciplina`, `b`.`Notas` AS `Nota`, `b`.`Media` AS `Média final`, `b`.`Frequencia` AS `Frequência`, `b`.`Situacao_Final` AS `Situação final` FROM (((((`alunos` `a` join `boletins` `b` on(`a`.`ID_Aluno` = `b`.`ID_Aluno`)) join `boletins_disciplinas` `bd` on(`b`.`ID_Boletim` = `bd`.`ID_Boletim`)) join `disciplinas` `d` on(`bd`.`ID_Disciplina` = `d`.`ID_Disciplina`)) join `cursos_disciplinas` `cd` on(`d`.`ID_Disciplina` = `cd`.`ID_Disciplina`)) join `cursos` `c` on(`cd`.`ID_Curso` = `c`.`ID_Curso`)) ;

-- --------------------------------------------------------

--
-- Estrutura para view `vw07_alunos_turmas_disciplinas_professores`
--
DROP TABLE IF EXISTS `vw07_alunos_turmas_disciplinas_professores`;

DROP VIEW IF EXISTS `vw07_alunos_turmas_disciplinas_professores`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw07_alunos_turmas_disciplinas_professores`  AS SELECT `a`.`Nome` AS `Aluno`, `t`.`ID_Turma` AS `Turma`, `c`.`Nome_Curso` AS `Curso`, `d`.`nome_da_disciplina` AS `Disciplina`, `p`.`Nome` AS `Professor`, `t`.`Ano_Letivo` AS `Ano letivo`, `t`.`Turno` AS `Turno` FROM ((((((`alunos` `a` join `turmas` `t` on(`a`.`ID_Turma` = `t`.`ID_Turma`)) join `cursos` `c` on(`t`.`ID_Curso` = `c`.`ID_Curso`)) join `cursos_disciplinas` `cd` on(`c`.`ID_Curso` = `cd`.`ID_Curso`)) join `disciplinas` `d` on(`cd`.`ID_Disciplina` = `d`.`ID_Disciplina`)) join `disciplinas_professores` `dp` on(`d`.`ID_Disciplina` = `dp`.`ID_Disciplina`)) join `professores` `p` on(`dp`.`ID_Professor` = `p`.`ID_Professor`)) ;

-- --------------------------------------------------------

--
-- Estrutura para view `vw08_disciplinas_notas`
--
DROP TABLE IF EXISTS `vw08_disciplinas_notas`;

DROP VIEW IF EXISTS `vw08_disciplinas_notas`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw08_disciplinas_notas`  AS SELECT `a`.`Nome` AS `Nome do aluno`, `d`.`nome_da_disciplina` AS `Nome da disciplina`, `b`.`Notas` AS `Nota`, `b`.`Media` AS `Média final`, `b`.`Situacao_Final` AS `Situação final` FROM (((`alunos` `a` join `boletins` `b` on(`a`.`ID_Aluno` = `b`.`ID_Aluno`)) join `boletins_disciplinas` `bd` on(`b`.`ID_Boletim` = `bd`.`ID_Boletim`)) join `disciplinas` `d` on(`bd`.`ID_Disciplina` = `d`.`ID_Disciplina`)) ;

-- --------------------------------------------------------

--
-- Estrutura para view `vw09_situacao_matriculas`
--
DROP TABLE IF EXISTS `vw09_situacao_matriculas`;

DROP VIEW IF EXISTS `vw09_situacao_matriculas`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw09_situacao_matriculas`  AS SELECT `a`.`Nome` AS `Aluno`, `c`.`Nome_Curso` AS `Curso`, `t`.`ID_Turma` AS `Turma`, `m`.`Data_de_Matricula` AS `Data da matrícula`, `m`.`Situacao` AS `Situação da matrícula`, `t`.`Ano_Letivo` AS `Ano letivo`, `t`.`Turno` AS `Turno` FROM (((`alunos` `a` join `matriculas` `m` on(`a`.`ID_Matricula` = `m`.`ID_Matricula`)) join `turmas` `t` on(`a`.`ID_Turma` = `t`.`ID_Turma`)) join `cursos` `c` on(`t`.`ID_Curso` = `c`.`ID_Curso`)) ;

-- --------------------------------------------------------

--
-- Estrutura para view `vw10_relatorio_academico_completo`
--
DROP TABLE IF EXISTS `vw10_relatorio_academico_completo`;

DROP VIEW IF EXISTS `vw10_relatorio_academico_completo`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw10_relatorio_academico_completo`  AS SELECT `a`.`Nome` AS `Aluno`, `c`.`Nome_Curso` AS `Curso`, `t`.`ID_Turma` AS `Turma`, `d`.`nome_da_disciplina` AS `Disciplina`, `p`.`Nome` AS `Professor`, `b`.`Notas` AS `Nota`, `b`.`Media` AS `Média final`, `b`.`Frequencia` AS `Frequência`, `b`.`Situacao_Final` AS `Situação final` FROM (((((((`alunos` `a` join `turmas` `t` on(`a`.`ID_Turma` = `t`.`ID_Turma`)) join `cursos` `c` on(`t`.`ID_Curso` = `c`.`ID_Curso`)) join `boletins` `b` on(`a`.`ID_Aluno` = `b`.`ID_Aluno`)) join `boletins_disciplinas` `bd` on(`b`.`ID_Boletim` = `bd`.`ID_Boletim`)) join `disciplinas` `d` on(`bd`.`ID_Disciplina` = `d`.`ID_Disciplina`)) join `disciplinas_professores` `dp` on(`d`.`ID_Disciplina` = `dp`.`ID_Disciplina`)) join `professores` `p` on(`dp`.`ID_Professor` = `p`.`ID_Professor`)) ;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`ID_Aluno`),
  ADD KEY `FK_Alunos_2` (`ID_Rua`),
  ADD KEY `FK_Alunos_3` (`ID_Info`),
  ADD KEY `fk_id_matricula_aluno` (`ID_Matricula`),
  ADD KEY `fk_alunos_turmas` (`ID_Turma`);

--
-- Índices de tabela `alunos_responsaveis`
--
ALTER TABLE `alunos_responsaveis`
  ADD KEY `FK_Alunos_Responsaveis_1` (`ID_Responsavel`),
  ADD KEY `FK_Alunos_Responsaveis_2` (`ID_Aluno`);

--
-- Índices de tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  ADD PRIMARY KEY (`ID_Avaliacao`);

--
-- Índices de tabela `bairros`
--
ALTER TABLE `bairros`
  ADD PRIMARY KEY (`ID_Bairro`),
  ADD KEY `FK_Bairros_2` (`ID_Cidade`);

--
-- Índices de tabela `boletins`
--
ALTER TABLE `boletins`
  ADD PRIMARY KEY (`ID_Boletim`),
  ADD KEY `FK_Boletins_Alunos` (`ID_Aluno`);

--
-- Índices de tabela `boletins_disciplinas`
--
ALTER TABLE `boletins_disciplinas`
  ADD KEY `FK_Boletins_Disciplinas_1` (`ID_Disciplina`),
  ADD KEY `FK_Boletins_Disciplinas_2` (`ID_Boletim`);

--
-- Índices de tabela `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`ID_Cidade`),
  ADD KEY `FK_Cidades_2` (`ID_UF`);

--
-- Índices de tabela `coordenadores`
--
ALTER TABLE `coordenadores`
  ADD PRIMARY KEY (`ID_Coordenador`),
  ADD KEY `FK_Coordenadores_2` (`ID_Info`);

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`ID_Curso`);

--
-- Índices de tabela `cursos_disciplinas`
--
ALTER TABLE `cursos_disciplinas`
  ADD KEY `FK_Cursos_Disciplinas_1` (`ID_Curso`),
  ADD KEY `FK_Cursos_Disciplinas_2` (`ID_Disciplina`);

--
-- Índices de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`ID_Disciplina`);

--
-- Índices de tabela `disciplinas_professores`
--
ALTER TABLE `disciplinas_professores`
  ADD KEY `FK_Disciplinas_Professores_1` (`ID_Disciplina`),
  ADD KEY `FK_Disciplinas_Professores_2` (`ID_Professor`);

--
-- Índices de tabela `formacoes`
--
ALTER TABLE `formacoes`
  ADD PRIMARY KEY (`ID_Formacao`);

--
-- Índices de tabela `info_pessoal`
--
ALTER TABLE `info_pessoal`
  ADD PRIMARY KEY (`ID_Info`);

--
-- Índices de tabela `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`ID_Matricula`);

--
-- Índices de tabela `matriculas_cursos`
--
ALTER TABLE `matriculas_cursos`
  ADD KEY `FK_Matriculas_Cursos_1` (`ID_Matricula`),
  ADD KEY `FK_Matriculas_Cursos_2` (`ID_Curso`);

--
-- Índices de tabela `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`ID_Professor`),
  ADD KEY `FK_Professores_2` (`ID_Info`),
  ADD KEY `FK_Professores_3` (`ID_Formacao`);

--
-- Índices de tabela `responsaveis`
--
ALTER TABLE `responsaveis`
  ADD PRIMARY KEY (`ID_Responsavel`),
  ADD KEY `FK_Responsaveis_2` (`ID_Info`);

--
-- Índices de tabela `ruas`
--
ALTER TABLE `ruas`
  ADD PRIMARY KEY (`ID_Rua`),
  ADD KEY `FK_Ruas_2` (`ID_Bairro`);

--
-- Índices de tabela `turmas`
--
ALTER TABLE `turmas`
  ADD PRIMARY KEY (`ID_Turma`),
  ADD KEY `fk_tabela_cursos` (`ID_Curso`);

--
-- Índices de tabela `uf`
--
ALTER TABLE `uf`
  ADD PRIMARY KEY (`ID_UF`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `ID_Aluno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT de tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  MODIFY `ID_Avaliacao` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT de tabela `bairros`
--
ALTER TABLE `bairros`
  MODIFY `ID_Bairro` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `boletins`
--
ALTER TABLE `boletins`
  MODIFY `ID_Boletim` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cidades`
--
ALTER TABLE `cidades`
  MODIFY `ID_Cidade` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `coordenadores`
--
ALTER TABLE `coordenadores`
  MODIFY `ID_Coordenador` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `ID_Curso` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `ID_Disciplina` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `formacoes`
--
ALTER TABLE `formacoes`
  MODIFY `ID_Formacao` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `info_pessoal`
--
ALTER TABLE `info_pessoal`
  MODIFY `ID_Info` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=526;

--
-- AUTO_INCREMENT de tabela `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `ID_Matricula` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT de tabela `professores`
--
ALTER TABLE `professores`
  MODIFY `ID_Professor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `responsaveis`
--
ALTER TABLE `responsaveis`
  MODIFY `ID_Responsavel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT de tabela `ruas`
--
ALTER TABLE `ruas`
  MODIFY `ID_Rua` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `turmas`
--
ALTER TABLE `turmas`
  MODIFY `ID_Turma` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `uf`
--
ALTER TABLE `uf`
  MODIFY `ID_UF` int(10) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `alunos_responsaveis`
--
ALTER TABLE `alunos_responsaveis`
  ADD CONSTRAINT `FK_Alunos_Responsaveis_1` FOREIGN KEY (`ID_Responsavel`) REFERENCES `responsaveis` (`ID_Responsavel`),
  ADD CONSTRAINT `FK_Alunos_Responsaveis_2` FOREIGN KEY (`ID_Aluno`) REFERENCES `alunos` (`ID_Aluno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
