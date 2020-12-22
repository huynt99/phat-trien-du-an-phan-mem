-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th8 09, 2020 lúc 04:18 CH
-- Phiên bản máy phục vụ: 10.4.10-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ptdapm`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anh`
--

CREATE TABLE `anh` (
  `maanh` int(11) NOT NULL,
  `mathisinh` varchar(20) NOT NULL,
  `duongdan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `mabv` int(5) UNSIGNED NOT NULL,
  `chude` varchar(100) NOT NULL,
  `tieude` varchar(100) NOT NULL,
  `anh` varchar(200) DEFAULT NULL,
  `tomtat` varchar(2000) DEFAULT NULL,
  `ngaytao` datetime NOT NULL,
  `noidung` text NOT NULL,
  `matk` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`mabv`, `chude`, `tieude`, `anh`, `tomtat`, `ngaytao`, `noidung`, `matk`) VALUES
(1, 'Học Phí', 'QUY ĐỊNH VỀ MỨC HỌC PHÍ CỦA TRƯỜNG ĐẠI HỌC THỦY LỢI', 'images/images_post/1_1.jpg', '', '2020-08-04 00:58:54', '\r\n\r\n<p><em>(Ban h&agrave;nh theo quyết định số 1889/QD-DHTL ng&agrave;y 9 th&aacute;ng 7 năm 2019 của Hiệu trưởng tru&ograve;ng Đại học Thủy Lợi)</em></p>\r\n\r\n<p><strong>I.Nguy&ecirc;n tắc chung</strong></p>\r\n\r\n<p>Mức thu học ph&iacute; lần đầu v&agrave; học lại kh&ocirc;ng vượt qu&aacute; trần học ph&iacute; quy định tại nghị định số 86/2015/ND-CP ng&agrave;y ng&agrave;y 02 th&aacute;ng 10 năm 2015 của Ch&iacute;nh Phủ</p>\r\n\r\n<p><strong>II.Quy định về mức học ph&iacute;:</strong></p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse; width:100.0%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; vertical-align:top\">\r\n			<p><strong>STT</strong></p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top\">\r\n			<p><strong>Đối tượng đ&agrave;o tạo</strong></p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top\">\r\n			<p><strong>Mức thu theo kỳ (đồng/kỳ)</strong></p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top\">\r\n			<p><strong>Mức thu theo t&iacute;n chỉ(đồng/t&iacute;n chỉ)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong>1</strong></p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong>Hệ dự bị đại học</strong></p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>4.500.000000</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong>2</strong></p>\r\n			</td>\r\n			<td colspan=\"3\" style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong>Hệ cao đẳng, đại học ch&iacute;nh quy</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong><em>2.1</em></strong></p>\r\n			</td>\r\n			<td colspan=\"3\" style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong><em>Khối ng&agrave;nh kỹ thuật, c&ocirc;ng nghệ th&ocirc;ng tin</em></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>2.1.1</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>Hệ đại học ch&iacute;nh quy</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>2.1.1.1</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>Khối ng&agrave;nh kỹ thuật, c&ocirc;ng nghệ th&ocirc;ng tin</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>305.000</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>2.1.1.2</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>Ng&agrave;nh hệ thống th&ocirc;ng tin. kỹ thuật phần mềm</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>285.000</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>2.1.2</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>Hệ đại học ch&iacute;nh quy (cử tuyển, k&yacute; hợp đ&ograve;ng với c&aacute;c tỉnh)</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>5.300.000</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>2.1.3</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>Hệ li&ecirc;n th&ocirc;ng cao đẳng l&ecirc;n đại học</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>530.000000</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>2.1.4</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>Hệ cao đẳng ch&iacute;nh quy</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>265.000</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>2.1.5</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>Hệ cao đẳng ch&iacute;nh quy (cử tuyển, k&yacute; hợp đ&ograve;ng với c&aacute;c tỉnh)</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>4.250.000</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong><em>2.2</em></strong></p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong><em>Khối ng&agrave;nh kinh tế (Kinh tế, Kế to&aacute;n, Quản trị kinh doanh)</em></strong></p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>2.2.1</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>Hệ đại học ch&iacute;nh quy</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>255.000</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>2.2.2</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>Hệ đại học ch&iacute;nh quy (cử tuyển, k&yacute; hợp đ&ograve;ng với c&aacute;c tỉnh)</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>4.450.000</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>2.2.3</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>Hệ li&ecirc;n th&ocirc;ng cao đẳng l&ecirc;n đại học</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>370.000</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong>3</strong></p>\r\n			</td>\r\n			<td colspan=\"3\" style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong>Hệ đại học vừa l&agrave;m vừa học</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong><em>3.1</em></strong></p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong><em>Đ&agrave;o tạo tại c&aacute;c cơ sở của trường</em></strong></p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>3.1.1</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>C&aacute;c kh&oacute;a tuyển sinh trước 1/5/2017</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>365.000</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>3.1.2</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>C&aacute;c kh&oacute;a tuyển sinh sau 1/5/2017</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>410.000</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong><em>3.2</em></strong></p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong><em>Đ&agrave;o tạo h&igrave;nh thức li&ecirc;n kết</em></strong></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong><em>Thu theo hợp đồng</em></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong>4</strong></p>\r\n			</td>\r\n			<td colspan=\"3\" style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong>Hệ đại học ch&iacute;nh quy (chương tr&igrave;nh ti&ecirc;n tiến)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong><em>4.1</em></strong></p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong><em>C&aacute;c m&ocirc;n học L&yacute; luận ch&iacute;nh trị, Gi&aacute;o dục thể chất, Gi&aacute;o dục quốc ph&ograve;ng, tiếng Anh n&acirc;ng cao</em></strong></p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong><em>305.000</em></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong><em>4.2</em></strong></p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong><em>C&aacute;c m&ocirc;n học bằng Tiếng Anh (Theo chương tr&igrave;nh c&aacute;c trường đối t&aacute;c) v&agrave; m&ocirc;n Tiếng Anh</em></strong></p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong><em>750.000</em></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong>5</strong></p>\r\n			</td>\r\n			<td colspan=\"3\" style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong>Hệ đ&agrave;o tạo thạc sĩ</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong><em>5.1</em></strong></p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong><em>Khối ng&agrave;nh kinh tế</em></strong></p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong><em>6.675.000</em></strong></p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong><em>445.000</em></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong><em>5.2</em></strong></p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong><em>Khối ng&agrave;nh kỹ thuật, c&ocirc;ng nghệ th&ocirc;ng tin</em></strong></p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong><em>7.950.000</em></strong></p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong><em>530.000</em></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">&nbsp;</td>\r\n			<td colspan=\"3\" style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong>Ghi ch&uacute;: Kh&oacute;a K25 trở về trước vẫn &aacute;p dụng học ph&iacute; t&iacute;nh theo ni&ecirc;n chế, từ K26 trở về sau sẽ &aacute;p dụng t&iacute;nh học ph&iacute; theo t&iacute;n chỉ</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong>6</strong></p>\r\n			</td>\r\n			<td colspan=\"3\" style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p><strong>Hệ đ&agrave;o tạo tiến sĩ</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>Khối ng&agrave;nh kinh tế</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">\r\n			<p>13.250.000</p>\r\n			</td>\r\n			<td style=\"background-color:white; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>III.Tổ chức thực hiện</strong></p>\r\n\r\n<p>_ Căn cứ v&agrave;o quy định tr&ecirc;n Hiệu trưởng giao cho trưởng c&aacute;c đơn vị: Ph&ograve;ng Đ&agrave;o tạo, Ph&ograve;ng Ch&iacute;nh trị vad C&ocirc;ng t&aacute;c sinh vi&ecirc;n, trưởng c&aacute;c Khoa, Trung t&acirc;m kịp thời th&ocirc;ng b&aacute;o đến sinh vi&ecirc;n, học vi&ecirc;n cao học, nghi&ecirc;n cứu sinh biết để thực hiện.</p>\r\n\r\n<p>_ Trong qu&aacute; tr&igrave;nh triển khai nếu c&oacute; vướng mắc g&igrave; kịp thời b&aacute;o c&aacute;o với Ban Gi&aacute;m Hiệu (qua Ph&ograve;ng T&agrave;i Ch&iacute;nh - Kế To&aacute;n) để xử l&yacute;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 17),
(2, 'Chương trình đào tạo thạc sĩ', 'Chương trình đào tạo các chuyên ngành trình độ thạc sĩ', 'images/images_post/NCKH-Avatar.jpg', '', '2020-08-04 01:43:23', '<p>Hiện nay trường Đại học Thủy lợi đang đ&agrave;o tạo 20 chuy&ecirc;n ng&agrave;nh tr&igrave;nh độ thạc sĩ trong đ&oacute; c&oacute; 4 chuy&ecirc;n ng&agrave;nh được đ&agrave;o tạo bằng Tiếng Anh.</p>\r\n\r\n<p><strong>DANH MỤC C&Aacute;C CHUY&Ecirc;N NG&Agrave;NH Đ&Agrave;O TẠO THẠC SĨ</strong></p>\r\n\r\n<p><strong>1. C&aacute;c chuy&ecirc;n ng&agrave;nh học bằng tiếng Việt</strong></p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"0\" style=\"border-collapse:collapse; width:821px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:60px; width:59px\">\r\n			<p><strong>STT</strong></p>\r\n			</td>\r\n			<td style=\"height:60px; width:455px\">\r\n			<p><strong>Chuy&ecirc;n ng&agrave;nh</strong></p>\r\n			</td>\r\n			<td style=\"height:60px; width:163px\">\r\n			<p><strong>M&atilde; số</strong></p>\r\n			</td>\r\n			<td style=\"height:60px; width:144px\">\r\n			<p><strong>Nội dung chương tr&igrave;nh</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:59px\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"width:455px\">\r\n			<p>Kỹ thuật x&acirc;y dựng c&ocirc;ng tr&igrave;nh thủy</p>\r\n			</td>\r\n			<td style=\"width:163px\">\r\n			<p>60580202</p>\r\n			</td>\r\n			<td style=\"width:144px\">\r\n			<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/CH/ChuongTrinhDaoTao/nam2017/C.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:59px\">\r\n			<p>2</p>\r\n			</td>\r\n			<td style=\"width:455px\">\r\n			<p>Kỹ thuật x&acirc;y dựng c&ocirc;ng tr&igrave;nh d&acirc;n dụng v&agrave; c&ocirc;ng nghiệp</p>\r\n			</td>\r\n			<td style=\"width:163px\">\r\n			<p>60580208</p>\r\n			</td>\r\n			<td style=\"width:144px\">\r\n			<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/CH/ChuongTrinhDaoTao/nam2017/CX.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:59px\">\r\n			<p>3</p>\r\n			</td>\r\n			<td style=\"width:455px\">\r\n			<p>Địa kỹ thuật x&acirc;y dựng</p>\r\n			</td>\r\n			<td style=\"width:163px\">\r\n			<p>60580204</p>\r\n			</td>\r\n			<td style=\"width:144px\">\r\n			<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/CH/ChuongTrinhDaoTao/nam2017/DKT.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:59px\">\r\n			<p>4</p>\r\n			</td>\r\n			<td style=\"width:455px\">\r\n			<p>Quản l&yacute; x&acirc;y dựng</p>\r\n			</td>\r\n			<td style=\"width:163px\">\r\n			<p>60580302</p>\r\n			</td>\r\n			<td style=\"width:144px\">\r\n			<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/CH/ChuongTrinhDaoTao/nam2017/QLXD.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:36px; width:59px\">\r\n			<p>5</p>\r\n			</td>\r\n			<td style=\"height:36px; width:455px\">\r\n			<p>Kỹ thuật t&agrave;i nguy&ecirc;n nước</p>\r\n			</td>\r\n			<td style=\"height:36px; width:163px\">\r\n			<p>60580212</p>\r\n			</td>\r\n			<td style=\"height:36px; width:144px\">\r\n			<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/CH/ChuongTrinhDaoTao/nam2017/Q.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:59px\">\r\n			<p>6</p>\r\n			</td>\r\n			<td style=\"width:455px\">\r\n			<p>Kỹ thuật cơ sở hạ tầng</p>\r\n			</td>\r\n			<td style=\"width:163px\">\r\n			<p>60580210</p>\r\n			</td>\r\n			<td style=\"width:144px\">\r\n			<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/CH/ChuongTrinhDaoTao/nam2017/CTN.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:59px\">\r\n			<p>7</p>\r\n			</td>\r\n			<td style=\"width:455px\">\r\n			<p>Thủy văn học</p>\r\n			</td>\r\n			<td style=\"width:163px\">\r\n			<p>60440225</p>\r\n			</td>\r\n			<td style=\"width:144px\">\r\n			<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/CH/ChuongTrinhDaoTao/nam2017/V.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:59px\">\r\n			<p>8</p>\r\n			</td>\r\n			<td style=\"width:455px\">\r\n			<p>Khoa học m&ocirc;i trường</p>\r\n			</td>\r\n			<td style=\"width:163px\">\r\n			<p>60440301</p>\r\n			</td>\r\n			<td style=\"width:144px\">\r\n			<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/CH/ChuongTrinhDaoTao/nam2017/KHMT.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:59px\">\r\n			<p>9</p>\r\n			</td>\r\n			<td style=\"width:455px\">\r\n			<p>Kỹ thuật m&ocirc;i trường</p>\r\n			</td>\r\n			<td style=\"width:163px\">\r\n			<p>60520320</p>\r\n			</td>\r\n			<td style=\"width:144px\">\r\n			<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/CH/ChuongTrinhDaoTao/nam2017/KTMT.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:59px\">\r\n			<p>10</p>\r\n			</td>\r\n			<td style=\"width:455px\">\r\n			<p>Kỹ thuật cơ kh&iacute;</p>\r\n			</td>\r\n			<td style=\"width:163px\">\r\n			<p>60520103</p>\r\n			</td>\r\n			<td style=\"width:144px\">\r\n			<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/CH/ChuongTrinhDaoTao/nam2017/CK.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:59px\">\r\n			<p>11</p>\r\n			</td>\r\n			<td style=\"width:455px\">\r\n			<p>Kỹ thuật x&acirc;y dựng c&ocirc;ng tr&igrave;nh biển</p>\r\n			</td>\r\n			<td style=\"width:163px\">\r\n			<p>60580203</p>\r\n			</td>\r\n			<td style=\"width:144px\">\r\n			<p><a href=\"http://localhost:81/Portals/0/2017-3/11_KTXDCTB_CH.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:59px\">\r\n			<p>12</p>\r\n			</td>\r\n			<td style=\"width:455px\">\r\n			<p>Quản l&yacute; t&agrave;i nguy&ecirc;n v&agrave; m&ocirc;i trường</p>\r\n			</td>\r\n			<td style=\"width:163px\">\r\n			<p>60850101</p>\r\n			</td>\r\n			<td style=\"width:144px\">\r\n			<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/CH/ChuongTrinhDaoTao/nam2017/KT.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:59px\">\r\n			<p>13</p>\r\n			</td>\r\n			<td style=\"width:455px\">\r\n			<p>Kỹ thuật điện</p>\r\n			</td>\r\n			<td style=\"width:163px\">\r\n			<p>60520202</p>\r\n			</td>\r\n			<td style=\"width:144px\">\r\n			<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/CH/ChuongTrinhDaoTao/nam2017/KTD.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:59px\">\r\n			<p>14</p>\r\n			</td>\r\n			<td style=\"width:455px\">\r\n			<p>Quản l&yacute; kinh tế</p>\r\n			</td>\r\n			<td style=\"width:163px\">\r\n			<p>60340410</p>\r\n			</td>\r\n			<td style=\"width:144px\">\r\n			<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/CH/ChuongTrinhDaoTao/nam2017/QLKT.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:59px\">\r\n			<p>15</p>\r\n			</td>\r\n			<td style=\"width:455px\">\r\n			<p>C&ocirc;ng nghệ th&ocirc;ng tin</p>\r\n			</td>\r\n			<td style=\"width:163px\">\r\n			<p>60480201</p>\r\n			</td>\r\n			<td style=\"width:144px\">\r\n			<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/CH/ChuongTrinhDaoTao/nam2017/CNTT.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:59px\">\r\n			<p>16</p>\r\n			</td>\r\n			<td style=\"width:455px\">\r\n			<p>Kỹ thuật x&acirc;y dựng c&ocirc;ng tr&igrave;nh giao th&ocirc;ng</p>\r\n			</td>\r\n			<td style=\"width:163px\">\r\n			<p>60580205</p>\r\n			</td>\r\n			<td style=\"width:144px\">\r\n			<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/CH/ChuongTrinhDaoTao/nam2017/CTGT.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. C&aacute;c chuy&ecirc;n ng&agrave;nh học bằng tiếng Anh</strong></p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"0\" style=\"border-collapse:collapse; width:821px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:20px; width:59px\">\r\n			<p><strong>STT</strong></p>\r\n			</td>\r\n			<td style=\"height:20px; width:611px\">\r\n			<p><strong>Chuy&ecirc;n ng&agrave;nh</strong></p>\r\n			</td>\r\n			<td style=\"height:20px; width:151px\">\r\n			<p><strong>Nội dung chương tr&igrave;nh</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:24px; width:59px\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"height:24px; width:611px\">\r\n			<p>Quản l&yacute; tổng hợp t&agrave;i nguy&ecirc;n nước</p>\r\n			</td>\r\n			<td style=\"height:24px; width:151px\">\r\n			<p><a href=\"http://localhost:81/Portals/0/2017-3/17_QLTHTNN_CH.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:33px; width:59px\">\r\n			<p>2</p>\r\n			</td>\r\n			<td style=\"height:33px; width:611px\">\r\n			<p>Quản l&yacute; v&agrave; giảm nhẹ thi&ecirc;n tai</p>\r\n			</td>\r\n			<td style=\"height:33px; width:151px\">\r\n			<p><a href=\"http://localhost:81/Portals/0/2017-3/18_QLGNTT_CH.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:18px; width:59px\">\r\n			<p>3</p>\r\n			</td>\r\n			<td style=\"height:18px; width:611px\">\r\n			<p>Kỹ thuật c&ocirc;ng tr&igrave;nh biển v&agrave; Quản l&yacute; tổng hợp v&ugrave;ng bờ</p>\r\n			</td>\r\n			<td style=\"height:18px; width:151px\">\r\n			<p><a href=\"http://localhost:81/Portals/0/2017-3/19_KTCTBvQLBDB_CH.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:18px; width:59px\">\r\n			<p>4</p>\r\n			</td>\r\n			<td style=\"height:18px; width:611px\">\r\n			<p>C&ocirc;ng tr&igrave;nh thủy lợi bền vững (do Vương quốc Bỉ cấp bằng v&agrave; sẽ c&oacute; th&ocirc;ng b&aacute;o sau)</p>\r\n			</td>\r\n			<td style=\"height:18px; width:151px\">\r\n			<p><a href=\"http://localhost:81/Portals/0/2017-3/20_CTTLBV.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 17),
(3, 'Chương trình đào tạo tiến sĩ', 'Chương trình đào tạo các chuyên ngành trình độ tiến sĩ', 'images/images_post/Image.png', '', '2020-08-04 01:47:30', '<p><strong>CHƯƠNG TR&Igrave;NH Đ&Agrave;O TẠO</strong></p>\r\n\r\n<p>I. Chương tr&igrave;nh đ&agrave;o tạo (CTĐT) tr&igrave;nh độ Tiến sĩ:</p>\r\n\r\n<ol>\r\n	<li>Nhằm gi&uacute;p NCS ho&agrave;n chỉnh v&agrave; n&acirc;ng cao kiến thức cơ bản, c&oacute; hiểu biết s&acirc;u về kiến thức chuy&ecirc;n ng&agrave;nh, c&oacute; kiến thức rộng về c&aacute;c ng&agrave;nh li&ecirc;n quan, c&aacute;c kiến thức c&oacute; t&iacute;nh ứng dụng của ng&agrave;nh/chuy&ecirc;n ng&agrave;nh.</li>\r\n	<li>Hỗ trợ NCS tự r&egrave;n luyện khả năng nghi&ecirc;n cứu, khả năng x&aacute;c định vấn đề v&agrave; độc lập giải quyết c&aacute;c vấn đề thuộc lĩnh vực chuy&ecirc;n m&ocirc;n, khả năng thực h&agrave;nh cần thiết.</li>\r\n	<li>Hỗ trợ NCS tự r&egrave;n luyện phương ph&aacute;p nghi&ecirc;n nghi&ecirc;n cứu, phương ph&aacute;p viết c&aacute;c b&agrave;i b&aacute;o c&aacute;o khoa học v&agrave; phương ph&aacute;p tr&igrave;nh b&agrave;y kết quả nghi&ecirc;n cứu của m&igrave;nh.</li>\r\n</ol>\r\n\r\n<p>II. CTĐT tr&igrave;nh độ TS được thực hiện chủ yếu bằng tự học, tự nghi&ecirc;n cứu dưới sự hướng dẫn của nh&agrave; gi&aacute;o, nh&agrave; khoa học, coi trọng r&egrave;n luyện th&oacute;i quen nghi&ecirc;n cứu khoa học, ph&aacute;t triển tư duy s&aacute;ng tạo trong ph&aacute;t hiện, giải quyết những vấn đề chuy&ecirc;n m&ocirc;n.</p>\r\n\r\n<p>III. CTĐT tr&igrave;nh độ TS gồm ba phần:</p>\r\n\r\n<ol>\r\n	<li>Phần 1: C&aacute;c HP bổ sung, .</li>\r\n	<li>Phần 2: C&aacute;c HP Tiến sĩ, c&aacute;c CĐTS v&agrave; TLTQ.</li>\r\n	<li>Phần 3: NC khoa học v&agrave; LATS.</li>\r\n</ol>\r\n\r\n<p>CTĐT tr&igrave;nh độ TS c&oacute; khối lượng v&agrave; y&ecirc;u cầu quy định tại c&aacute;c Điều 16, 17, 18, 19 v&agrave; 20 của Quy định về tổ chức v&agrave; quản l&yacute; đ&agrave;o tạo tiến sĩ&nbsp;Trường Đại học Thủy lợi.</p>\r\n\r\n<p><strong>DANH MỤC C&Aacute;C CHUY&Ecirc;N NG&Agrave;NH Đ&Agrave;O TẠO TIẾN SĨ</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:685px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>TT</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>M&atilde; số</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>T&ecirc;n ng&agrave;nh/chuy&ecirc;n ng&agrave;nh đ&agrave;o tạo</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Chương&nbsp;&nbsp; tr&igrave;nh</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>1</p>\r\n			</td>\r\n			<td>\r\n			<p>9440107</p>\r\n			</td>\r\n			<td>\r\n			<p>Cơ học vật rắn</p>\r\n			</td>\r\n			<td>\r\n			<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/NCS/CTDT/2.%20CTDT_Tiensi_CHVR.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>2</p>\r\n			</td>\r\n			<td>\r\n			<p>9440108</p>\r\n			</td>\r\n			<td>\r\n			<p>Cơ học chất lỏng v&agrave; chất kh&iacute;</p>\r\n			</td>\r\n			<td>\r\n			<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/NCS/CTDT/1.CTDT_Tiensi_CHCL.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>3</p>\r\n			</td>\r\n			<td>\r\n			<p>9580211</p>\r\n			</td>\r\n			<td>\r\n			<p>Địa kỹ thuật x&acirc;y dựng</p>\r\n			</td>\r\n			<td>\r\n			<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/NCS/CTDT/3.CTDT_Tiensi_DKTXD.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>4</p>\r\n			</td>\r\n			<td>\r\n			<p>9580213</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật cấp tho&aacute;t nước</p>\r\n			</td>\r\n			<td>\r\n			<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/NCS/CTDT/4.CTDT_Tiensi_KTCTN.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>5</p>\r\n			</td>\r\n			<td>\r\n			<p>9580203</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật x&acirc;y dựng c&ocirc;ng tr&igrave;nh biển</p>\r\n			</td>\r\n			<td>\r\n			<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/NCS/CTDT/5.CTDT_Tiensi_KTCTB.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>6</p>\r\n			</td>\r\n			<td>\r\n			<p>9520320</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật m&ocirc;i trường</p>\r\n			</td>\r\n			<td>\r\n			<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/NCS/CTDT/6.CTDT_Tiensi_KTMT.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>7</p>\r\n			</td>\r\n			<td>\r\n			<p>9580212</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật t&agrave;i nguy&ecirc;n nước</p>\r\n			</td>\r\n			<td>\r\n			<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/NCS/CTDT/7.CTDT_Tiensi_KTTNN.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>8</p>\r\n			</td>\r\n			<td>\r\n			<p>9580202</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật x&acirc;y dựng c&ocirc;ng tr&igrave;nh thủy</p>\r\n			</td>\r\n			<td>\r\n			<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/NCS/CTDT/8.%20CTDT_Tiensi_KTXDCTT.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>9</p>\r\n			</td>\r\n			<td>\r\n			<p>9440303</p>\r\n			</td>\r\n			<td>\r\n			<p>M&ocirc;i trường đất v&agrave; nước</p>\r\n			</td>\r\n			<td>\r\n			<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/NCS/CTDT/9.CTDT_Tiensi_MTD&amp;N.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>10</p>\r\n			</td>\r\n			<td>\r\n			<p>9440224</p>\r\n			</td>\r\n			<td>\r\n			<p>Thủy văn học</p>\r\n			</td>\r\n			<td>\r\n			<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/NCS/CTDT/10.CTDT_Tiensi_TV.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>11</p>\r\n			</td>\r\n			<td>\r\n			<p>9580302</p>\r\n			</td>\r\n			<td>\r\n			<p>Quản l&yacute; x&acirc;y dựng</p>\r\n			</td>\r\n			<td>\r\n			<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/NCS/CTDT/11.CTDT_Tiensi_QLXD.pdf\">Xem chi tiết</a></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 17);
INSERT INTO `baiviet` (`mabv`, `chude`, `tieude`, `anh`, `tomtat`, `ngaytao`, `noidung`, `matk`) VALUES
(4, 'Chương trình đào tạo đại học', 'Chuẩn đầu ra, Chương trình đào tạo trình độ đại học, cao đẳng hệ chính quy', 'images/images_post/CTDT.jpg', '', '2020-08-04 02:06:49', '<p>Danh mục c&aacute;c ng&agrave;nh đ&agrave;o tạo tr&igrave;nh độ đại học, cao đẳng hệ ch&iacute;nh quy</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:766px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>TT</td>\r\n			<td>T&ecirc;n ng&agrave;nh</td>\r\n			<td>Chuẩn đầu ra</td>\r\n			<td>M&ocirc; tả chương tr&igrave;nh</td>\r\n			<td>Khung chương tr&igrave;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>A</td>\r\n			<td colspan=\"4\">Đ&agrave;o tạo Kỹ sư (4.5 năm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>Kỹ thuật x&acirc;y dựng</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/ChuanDauRa/2019/1_%20CDR%20nganh%20CX.pdf\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/ChuanDauRa/2019/2_%20Ban%20mo%20ta%20chuong%20trinh%20dao%20tao%20KTXD%202017.pdf\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/CX.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>Kỹ thuật x&acirc;y dựng c&ocirc;ng tr&igrave;nh thủy</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/ChuanDauRa/2019/02_CDR_C.pdf\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/C.pdf\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/C.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>C&ocirc;ng nghệ kỹ thuật x&acirc;y dựng</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/ChuanDauRa/2019/CDR_CNKTXD_Dai%20hoc_2017.pdf\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/ChuanDauRa/2019/Bn%20mo%20t%20CTDT%20CNKTXD-2017.pdf\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/CT.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>Kỹ thuật x&acirc;y dựng c&ocirc;ng tr&igrave;nh giao th&ocirc;ng</td>\r\n			<td>Xem chi tiết</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/GT.docx\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/GT.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>Kỹ thuật x&acirc;y dựng c&ocirc;ng tr&igrave;nh biển</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/ChuanDauRa/2019/05_CDR_B.pdf\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/B.docx\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/B.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>Kỹ thuật t&agrave;i nguy&ecirc;n nước</td>\r\n			<td>Xem chi tiết</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/N.docx\">Xem chi tiết</a></td>\r\n			<td>\r\n			<p>-&nbsp;<a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/N.pdf\">Kh&oacute;a 2016 về trước</a></p>\r\n\r\n			<p><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/QD_112_21-01-2019_N.pdf\">- Kh&oacute;a 2017 về sau</a></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>Kỹ thuật cơ sở hạ tầng</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/ChuanDauRa/2019/07_CDR_H.pdf\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/h.docx\">Xem chi tiết</a></td>\r\n			<td>\r\n			<p><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/H.pdf\">- Kh&oacute;a 2016 về trước</a></p>\r\n\r\n			<p><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/QD_111_21-01-2019_H.pdf\">- Kh&oacute;a 2017 về sau</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>Kỹ thuật Cấp tho&aacute;t nước</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/ChuanDauRa/2019/08_CDR_CTN.pdf\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/ctn.docx\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/CTN.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>Kỹ thuật trắc địa bản đồ</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/ChuanDauRa/2019/09_CDR_TDBD.pdf\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/Tracdiabando.docx\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/TDBD.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>Kỹ thuật cơ kh&iacute;</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/ChuanDauRa/2019/10_CDR_CK.pdf\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/ck.docx\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/CK.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>Kỹ thuật điện điện tử</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/ChuanDauRa/2019/11_CDR_KTD.pdf\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/ktd.docx\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/KTD.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>C&ocirc;ng nghệ th&ocirc;ng tin</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/ChuanDauRa/2019/12_CDR_CNTT.pdf\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/th.docx\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/TH.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>Thủy văn học</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/ChuanDauRa/2019/13_CDR_V.pdf\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/v.docx\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/V.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td>Kỹ thuật m&ocirc;i trường</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/ChuanDauRa/2019/14_CDR_MT.pdf\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/mt.docx\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/MT.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td>Kỹ thuật h&oacute;a học</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/ChuanDauRa/2019/15_CDR_KTHH.pdf\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/KTH.docx\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/KTH.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>16</td>\r\n			<td>C&ocirc;ng nghệ sinh học</td>\r\n			<td>Xem chi tiết</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/SH.docx\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/2017-3/20_CNSH.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>17</td>\r\n			<td>Quản l&yacute; x&acirc;y dựng</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/ChuanDauRa/2019/17_CDR_QLXD.pdf\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/qlxd.docx\">Xem chi tiết</a></td>\r\n			<td>\r\n			<p><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/QLXD.pdf\">- Kh&oacute;a 2017 về trước</a><br />\r\n			&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>18</td>\r\n			<td>C&ocirc;ng nghệ chế tạo m&aacute;y</td>\r\n			<td>Xem chi tiết</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/CTM.docx\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/2017-3/19_CNCTM.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>19</td>\r\n			<td>Kỹ thuật cơ điện tử</td>\r\n			<td>Xem chi tiết</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/CDT.docx\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/2017-3/18_KTCDT.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>20</td>\r\n			<td>Kỹ thuật &ocirc; t&ocirc;</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/ChuanDauRa/2019/20_CDR_KTOT.pdf\">Xem chi tiết</a></td>\r\n			<td>Xem chi tiết</td>\r\n			<td>Xem chi tiết</td>\r\n		</tr>\r\n		<tr>\r\n			<td>21</td>\r\n			<td>Kỹ thuật điều khiển v&agrave; tự động h&oacute;a</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/ChuanDauRa/2019/21_CDR_TDH.pdf\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/DK.docx\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/2017-3/17_KTDK_TDH.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>B</td>\r\n			<td colspan=\"4\">Đ&agrave;o tạo Kỹ sư Chương tr&igrave;nh ti&ecirc;n tiến (4.5 năm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>21</td>\r\n			<td>Kỹ thuật x&acirc;y dựng (CTTT)</td>\r\n			<td>Xem chi tiết</td>\r\n			<td>Xem chi tiết</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/2017-3/17_CTTT_KyThuatXayDung.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>22</td>\r\n			<td>Kỹ thuật t&agrave;i nguy&ecirc;n nước (CTTT)</td>\r\n			<td>Xem chi tiết</td>\r\n			<td>Xem chi tiết</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/2017-3/18_CTTT_KyThuatTaiNguyenNuoc.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>C</td>\r\n			<td colspan=\"4\">Đ&agrave;o tạo Kỹ sư (4 năm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>23</td>\r\n			<td>Hệ thống th&ocirc;ng tin</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/ChuanDauRa/2019/23_CDR_HT.pdf\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/HT.docx\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/HT.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>24</td>\r\n			<td>Kỹ thuật phần mềm</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/ChuanDauRa/2019/24_CDR_PM.pdf\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/PM.docx\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/PM.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>D</td>\r\n			<td colspan=\"4\">Đ&agrave;o tạo Cử nh&acirc;n (4 năm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>25</td>\r\n			<td>Kinh tế</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/ChuanDauRa/2019/CDR_K.pdf\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/ChuanDauRa/2019/HS3_02_MotaCTDTKinhte%282017%29.pdf\">Xem chi tiết</a></td>\r\n			<td>\r\n			<p><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/K.pdf\">- Kh&oacute;a 2016 về trước</a></p>\r\n\r\n			<p><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/QD_110_21-01-2019_K.pdf\">- Kh&oacute;a 2017 về sau</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>26</td>\r\n			<td>Quản trị kinh doanh</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/ChuanDauRa/2019/Chuan%20dau%20ra%20-%20QTKD-2017.pdf\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/ChuanDauRa/2019/Ban%20Mo%20ta%20CTDT_QTKD_2018.pdf\">Xem chi tiết</a></td>\r\n			<td>\r\n			<p><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/QT.pdf\">- Kh&oacute;a 2017&nbsp;về trước</a></p>\r\n\r\n			<p><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/QD_1702_-20-08-2018_QT.pdf\">- Kh&oacute;a 2018 về sau</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>27</td>\r\n			<td>Kế to&aacute;n</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/ChuanDauRa/2019/27_CDR_KT.pdf\">Xem chi tiết</a></td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/ketoan.docx\">Xem chi tiết</a></td>\r\n			<td>\r\n			<p><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/KT.pdf\">- Kh&oacute;a 2017 về trước</a></p>\r\n\r\n			<p><a href=\"http://www.tlu.edu.vn/Portals/0/P3/CTDT/Chuong%20trinh%201703-20-08-2018_KT_guiDT.xlsx\">- Kh&oacute;a 2018 về sau</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>E</td>\r\n			<td colspan=\"4\">Đ&agrave;o tạo Kỹ sư hệ Li&ecirc;n th&ocirc;ng (2.5 năm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>29</td>\r\n			<td>Kỹ thuật c&ocirc;ng tr&igrave;nh x&acirc;y dựng</td>\r\n			<td>Xem chi tiết</td>\r\n			<td>Xem chi tiết</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/2017-3/25_LT-KyThuatCongTrinhXayDung.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 17),
(5, 'Chương trình đào tạo hệ Vừa làm vừa học', 'Chương trình đào tạo trình độ Đại học hệ Vừa làm vừa học', 'images/images_post/danh_muc.jpg', '', '2020-08-04 01:57:28', '<p>Danh mục chương tr&igrave;nh đ&agrave;o tạo c&aacute;c ng&agrave;nh tr&igrave;nh độ Đại học hệ Vừa l&agrave;m vừa học tại Đại học Thủy lợi</p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"0\" style=\"width:651px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>TT</strong></td>\r\n			<td><strong>T&ecirc;n ng&agrave;nh</strong></td>\r\n			<td><strong>Khoa/Trung t&acirc;m phụ tr&aacute;ch</strong></td>\r\n			<td><strong>Nội dung chương tr&igrave;nh</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>A</strong></td>\r\n			<td><strong>Đ&agrave;o tạo 5 năm</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>Kỹ thuật c&ocirc;ng tr&igrave;nh x&acirc;y dựng</td>\r\n			<td>Khoa C&ocirc;ng tr&igrave;nh</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/2017-3/01_KyThuatCongTrinhXayDung_VLVH.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>Kỹ thuật t&agrave;i nguy&ecirc;n nước</td>\r\n			<td>Khoa Kỹ thuật t&agrave;i nguy&ecirc;n nước</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/2017-3/02_KyThuatTaiNguyenNuoc_VLVH.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>Cấp tho&aacute;t nước</td>\r\n			<td>Khoa Kỹ thuật t&agrave;i nguy&ecirc;n nước</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/2017-3/03_CapThoatNuoc_VLVH.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>Kỹ thuật trắc địa bản đồ</td>\r\n			<td>Trung t&acirc;m Địa tin học</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/2017-3/04_KyThuatTracDiaBanDo_VLVH.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>Quản l&yacute; x&acirc;y dựng</td>\r\n			<td>Khoa Kinh tế v&agrave; Quản l&yacute;</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/2017-3/05_QuanLyXayDung_VLVH.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>B</strong></td>\r\n			<td><strong>Đ&agrave;o tạo 4 năm</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>Kế to&aacute;n</td>\r\n			<td>Khoa Kinh tế v&agrave; Quản l&yacute;</td>\r\n			<td><a href=\"http://www.tlu.edu.vn/Portals/0/2017-3/06_KeToan_VLVH.pdf\">Xem chi tiết</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 17),
(6, 'Tuyển sinh đại học', 'Trường Đại học Thủy lợi thông báo Tuyển sinh đại học hệ chính quy năm 2020', 'images/images_post/ts-2020.jpg', '', '2020-08-04 02:18:50', '<p>Căn cứ C&ocirc;ng văn số 1778/BGDĐT-GDĐH ng&agrave;y 22/5/2020 về hướng dẫn c&ocirc;ng t&aacute;c tuyển sinh tr&igrave;nh độ đại học của Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo,Trường Đại học Thủy lợi th&ocirc;ng b&aacute;o tuyển sinh đại học hệ ch&iacute;nh quy năm 2020</p>\r\n\r\n<p>Năm 2020, Trường Đại học Thủy lợi&nbsp;tuyển sinh đại học hệ ch&iacute;nh quy với 23 ng&agrave;nh/nh&oacute;m ng&agrave;nh tại 3 cơ sở đ&agrave;o tạo:</p>\r\n\r\n<ul>\r\n	<li>&nbsp;Cơ sở H&agrave; Nội với 3.000 chỉ ti&ecirc;u;&nbsp;</li>\r\n	<li>​&nbsp;Ph&acirc;n hiệu Miền Nam với 510 chỉ ti&ecirc;u;&nbsp;</li>\r\n	<li>​&nbsp;Cơ sở Phố Hiến với 190 chỉ ti&ecirc;u&nbsp;.</li>\r\n</ul>\r\n\r\n<p>X&eacute;t tuyển dựa tr&ecirc;n 3 phương thức:</p>\r\n\r\n<ul>\r\n	<li>&nbsp;X&eacute;t tuyển thẳng;</li>\r\n	<li>&nbsp;X&eacute;t tuyển dựa v&agrave;o kết quả kỳ thi THPT năm 2020;</li>\r\n	<li>&nbsp;X&eacute;t tuyển dựa tr&ecirc;n kết quả học bạ.</li>\r\n</ul>\r\n\r\n<p>Chi tiết th&ocirc;ng tin tuyển sinh tại 3 cơ sở, xin mời click v&agrave;o h&igrave;nh b&ecirc;n dưới!</p>\r\n\r\n<p><a href=\"/Portals/4/P3/Tuyen sinh/2020/1_CS Ha Noi.pdf?ver=2020-07-02-160807-193\"><img alt=\"\" src=\"http://tlu.edu.vn/Portals/0/2020/Thang5/HN.jpg\" /></a></p>\r\n\r\n<p><a href=\"/Portals/4/P3/Tuyen sinh/2020/2_ Phan hieu mien Nam.pdf?ver=2020-07-02-160816-603\"><img alt=\"\" src=\"http://tlu.edu.vn/Portals/0/2020/Thang5/CS2_1.jpg\" /></a></p>\r\n\r\n<p><a href=\"/Portals/4/P3/Tuyen sinh/2020/3_ CS Pho Hien.pdf?ver=2020-07-02-160825-917\"><img alt=\"\" src=\"http://tlu.edu.vn/Portals/0/2020/Thang5/PH.jpg\" /></a></p>\r\n\r\n<p>Chi tiết th&ocirc;ng b&aacute;o Tuyển sinh:&nbsp;<a href=\"/Portals/4/P3/Tuyen sinh/2020/Thong_bao_tuyen_sinh_2020 (27-5-2020).pdf?ver=2020-07-02-161205-277\">TẠI Đ&Acirc;Y</a></p>\r\n\r\n<p>Download&nbsp;c&aacute;c mẫu đơn:</p>\r\n\r\n<p><strong>Mẫu 1. Phiếu đăng k&yacute; x&eacute;t tuyển theo học bạ THPT</strong>&nbsp;<a href=\"http://tlu.edu.vn/Portals/0/01%20thu%20tuc/Mau%2001.doc\"><img alt=\"\" src=\"http://tlu.edu.vn/Portals/0/01%20thu%20tuc/Mau%20don.png\" style=\"height:13px; width:13px\" /></a></p>\r\n\r\n<p><strong>Mẫu 2. Đơn xin x&aacute;c nhận&nbsp;kết quả học tập THPT (d&agrave;nh cho th&iacute; sinh tốt nghiệp&nbsp;năm 2020&nbsp;hoặc th&iacute; sinh chưa c&oacute; học bạ c&ocirc;ng chứng)</strong>&nbsp;<a href=\"http://tlu.edu.vn/Portals/0/01%20thu%20tuc/Mau%2002.doc\"><img alt=\"\" src=\"http://tlu.edu.vn/Portals/0/01%20thu%20tuc/Mau%20don.png\" style=\"height:13px; width:13px\" /></a></p>\r\n\r\n<p><strong>Mẫu 3. Đơn d&agrave;nh cho th&iacute; sinh x&eacute;t tuyển thẳng đối tượng 2,3,4,5</strong>&nbsp;<a href=\"http://tlu.edu.vn/Portals/0/01%20thu%20tuc/Mau%2003.doc\"><img alt=\"\" src=\"http://tlu.edu.vn/Portals/0/01%20thu%20tuc/Mau%20don.png\" style=\"height:13px; width:13px\" /></a></p>\r\n', 17),
(7, 'Tuyển sinh tiến sĩ', 'Tuyển sinh đào tạo trình độ tiến sĩ năm 2020', 'images/images_post/Nhan_bang_TS 2016.jpg', '', '2020-08-04 02:59:27', '<p>- Căn cứ Quy chế tuyển sinh v&agrave; đ&agrave;o tạo tr&igrave;nh độ tiến sĩ ban h&agrave;nh k&egrave;m theo Th&ocirc;ng tư số 08/2017/TT-BGDĐT ng&agrave;y 4/4/2017 của Bộ trưởng Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo;</p>\r\n\r\n<p>- Căn cứ v&agrave;o Đề &aacute;n tuyển sinh tr&igrave;nh độ Tiến sĩ của Trường Đại học Thủy lợi ng&agrave;y 19/5/2017 gửi Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo.</p>\r\n\r\n<p>Trường Đại học Thủy lợi th&ocirc;ng b&aacute;o tuyển sinh đ&agrave;o tạo tr&igrave;nh độ tiến sĩ năm 2020 như sau:</p>\r\n\r\n<p><strong>I.Điều kiện dự tuyển:</strong></p>\r\n\r\n<p>Người dự tuyển đ&agrave;o tạo tr&igrave;nh độ tiến sĩ phải đ&aacute;p ứng c&aacute;c điều kiện sau:</p>\r\n\r\n<p><em>1</em>.C&oacute; bằng thạc sĩ đ&uacute;ng hoặc ph&ugrave; hợp với chuy&ecirc;n ng&agrave;nh đăng k&iacute; dự tuyển. Trường hợp chưa c&oacute; bằng thạc sĩ th&igrave; phải c&oacute; bằng tốt nghiệp Đại học loại giỏi trở l&ecirc;n, ng&agrave;nh đ&uacute;ng hoặc ph&ugrave; hợp với chuy&ecirc;n ng&agrave;nh đăng k&yacute; dự tuyển. Những th&iacute; sinh dự tuyển thuộc ng&agrave;nh gần kh&aacute;c với danh mục được x&eacute;t tuyển trong PL1 th&igrave; căn cứ v&agrave;o Bảng điểm v&agrave; văn bằng tốt nghiệp của th&iacute; sinh, Ph&ograve;ng Đ&agrave;o tạo gửi đến c&aacute;c Khoa chuy&ecirc;n ng&agrave;nh để Hội đồng khoa học v&agrave; đ&agrave;o tạo Khoa xem x&eacute;t v&agrave; quyết định.</p>\r\n\r\n<p><em>2</em>.L&agrave; t&aacute;c giả 01 b&agrave;i b&aacute;o hoặc b&aacute;o c&aacute;o li&ecirc;n quan đến lĩnh vực dự định nghi&ecirc;n cứu đăng tr&ecirc;n tạp ch&iacute; khoa học hoặc kỷ yếu hội nghị, hội thảo khoa học chuy&ecirc;n ng&agrave;nh c&oacute; phản biện trong thời hạn 03 năm (36 th&aacute;ng) t&iacute;nh đến ng&agrave;y đăng k&yacute; dự tuyển.</p>\r\n\r\n<p><em>3</em>.Người dự tuyển l&agrave; c&ocirc;ng d&acirc;n Việt Nam phải c&oacute; một trong những văn bằng, chứng chỉ minh chứng về năng lực ngoại ngữ sau:</p>\r\n\r\n<p>a) Bằng tốt nghiệp đại học hoặc bằng thạc sĩ do cơ sở đ&agrave;o tạo nước ngo&agrave;i cấp cho người học to&agrave;n thời gian ở nước ngo&agrave;i m&agrave; ng&ocirc;n ngữ sử dụng trong qu&aacute; tr&igrave;nh học tập l&agrave; tiếng Anh hoặc tiếng nước ngo&agrave;i kh&aacute;c;<br />\r\nb) Bằng tốt nghiệp đại học c&aacute;c ng&agrave;nh ng&ocirc;n ngữ nước ngo&agrave;i do c&aacute;c cơ sở đ&agrave;o tạo của Việt Nam cấp;<br />\r\nc) Chứng chỉ tiếng Anh TOEFL iBT từ 45 trở l&ecirc;n hoặc Chứng chỉ IELTS (Academic Test) từ 5.0 trở l&ecirc;n do một tổ chức khảo th&iacute; được quốc tế v&agrave; Việt Nam c&ocirc;ng nhận cấp trong thời hạn 02 năm (24 th&aacute;ng) t&iacute;nh đến ng&agrave;y đăng k&yacute; dự tuyển;<br />\r\nd) Người dự tuyển đ&aacute;p ứng quy định tại điểm a khoản n&agrave;y khi ng&ocirc;n ngữ sử dụng trong thời gian học tập kh&ocirc;ng phải l&agrave; tiếng Anh; hoặc đ&aacute;p ứng quy định tại điểm b khoản n&agrave;y khi c&oacute; bằng tốt nghiệp đại học ng&agrave;nh ng&ocirc;n ngữ nước ngo&agrave;i kh&ocirc;ng phải l&agrave; tiếng Anh; hoặc c&oacute; c&aacute;c chứng chỉ tiếng nước ngo&agrave;i kh&aacute;c tiếng Anh ở tr&igrave;nh độ tương đương (quy định tại PL 2) theo quy định tại điểm c khoản n&agrave;y do một tổ chức khảo th&iacute; được quốc tế v&agrave; Việt Nam c&ocirc;ng nhận cấp trong thời hạn 02 năm (24 th&aacute;ng) t&iacute;nh đến ng&agrave;y đăng k&yacute; dự tuyển th&igrave; phải c&oacute; khả năng giao tiếp được bằng tiếng Anh trong chuy&ecirc;n m&ocirc;n (c&oacute; thể diễn đạt những vấn đề thuộc lĩnh vực chuy&ecirc;n m&ocirc;n cho người kh&aacute;c hiểu bằng tiếng Anh v&agrave; hiểu được người kh&aacute;c tr&igrave;nh b&agrave;y những vấn đề chuy&ecirc;n m&ocirc;n bằng tiếng Anh).</p>\r\n\r\n<p><em>4.</em>&nbsp;Người dự tuyển l&agrave; c&ocirc;ng d&acirc;n nước ngo&agrave;i phải c&oacute; tr&igrave;nh độ tiếng Việt tối thiểu từ Bậc 4 trở l&ecirc;n theo Khung năng lực tiếng Việt d&ugrave;ng cho người nước ngo&agrave;i hoặc c&oacute; khả năng trao đổi học thuật v&agrave; viết luận &aacute;n bằng tiếng Anh.</p>\r\n\r\n<p><strong>II. Danh mục ng&agrave;nh ph&ugrave; hợp được x&eacute;t tuyển đối với từng ng&agrave;nh ng&agrave;nh đ&agrave;o tạo tr&igrave;nh độ tiến sĩ; Danh s&aacute;ch người hướng dẫn</strong></p>\r\n\r\n<p><strong><em>1.Danh mục ng&agrave;nh ph&ugrave; hợp được x&eacute;t tuyển đối với từng ng&agrave;nh ng&agrave;nh đ&agrave;o tạo tr&igrave;nh độ tiến sĩ (PL1);<br />\r\n2.Danh s&aacute;ch người hướng dẫn, điều kiện được nhận hướng dẫn NCS (PL6).</em></strong></p>\r\n\r\n<p><strong>III.Chỉ ti&ecirc;u tuyển sinh:</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"8\">\r\n	<tbody>\r\n		<tr>\r\n			<th>STT</th>\r\n			<th>Chuy&ecirc;n ng&agrave;nh</th>\r\n			<th>M&atilde; số</th>\r\n			<th>Dự kiến</th>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>Kỹ thuật x&acirc;y dựng c&ocirc;ng tr&igrave;nh thủy</td>\r\n			<td>9580202</td>\r\n			<td rowspan=\"7\">20</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>Kỹ thuật t&agrave;i nguy&ecirc;n nước</td>\r\n			<td>9580212</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>Địa kỹ thuật x&acirc;y dựng</td>\r\n			<td>9580211</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>Kỹ thuật m&ocirc;i trường</td>\r\n			<td>9520320</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>Kỹ thuật cấp tho&aacute;t nước</td>\r\n			<td>9580213</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>Kỹ thuật x&acirc;y dựng c&ocirc;ng tr&igrave;nh biển</td>\r\n			<td>9580203</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>Quản l&yacute; x&acirc;y dựng</td>\r\n			<td>9580302</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>M&ocirc;i trường đất v&agrave; nước</td>\r\n			<td>9440303</td>\r\n			<td rowspan=\"4\">10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>Cơ học vật rắn</td>\r\n			<td>9440107</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>Cơ học chất lỏng v&agrave; chất kh&iacute;</td>\r\n			<td>9440108</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>Thủy văn học</td>\r\n			<td>9440224</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td><strong>Tổng</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>IV. Hồ sơ dự tuyển, thời gian nhận hồ sơ, lệ ph&iacute; dự tuyển:</p>\r\n\r\n<p><em>1.Hồ sơ dự tuyển bao gồm:</em></p>\r\n\r\n<p>1.Hồ sơ dự tuyển bao gồm:<br />\r\nb) L&yacute; lịch khoa học của ứng vi&ecirc;n dự tuyển (PL3), L&yacute; lịch khoa học của người hướng dẫn (PL7);<br />\r\nc) Bản sao văn bằng, chứng chỉ c&oacute; chứng thực hoặc bản sao k&egrave;m theo bản ch&iacute;nh để đối chiếu (trong trường hợp nộp hồ sơ trực tiếp);<br />\r\nd) Minh chứng kinh nghiệm nghi&ecirc;n cứu khoa học quy định tại khoản 2 mục I - điều kiện dự tuyển;<br />\r\nđ) Đề cương nghi&ecirc;n cứu (PL 4-nếu c&oacute;);<br />\r\ne) Thư giới thiệu đ&aacute;nh gi&aacute; phẩm chất nghề nghiệp, năng lực chuy&ecirc;n m&ocirc;n v&agrave; khả năng thực hiện nghi&ecirc;n cứu của người dự tuyển của &iacute;t nhất 01 nh&agrave; khoa học c&oacute; chức danh gi&aacute;o sư, ph&oacute; gi&aacute;o sư hoặc c&oacute; học vị tiến sĩ khoa học, tiến sĩ đ&atilde; tham gia hoạt động chuy&ecirc;n m&ocirc;n với người dự tuyển v&agrave; am hiểu lĩnh vực m&agrave; người dự tuyển dự định nghi&ecirc;n cứu;<br />\r\ng) C&ocirc;ng văn cử đi dự tuyển của cơ quan quản l&yacute; trực tiếp theo quy định hiện h&agrave;nh về việc đ&agrave;o tạo v&agrave; bồi dưỡng c&ocirc;ng chức, vi&ecirc;n chức (nếu người dự tuyển l&agrave; c&ocirc;ng chức, vi&ecirc;n chức);<br />\r\nh) B&agrave;i luận: Người tham gia dự tuyển cần c&oacute; 01 b&agrave;i luận về dự định nghi&ecirc;n cứu, trong đ&oacute; tr&igrave;nh b&agrave;y r&otilde; r&agrave;ng đề t&agrave;i hoặc lĩnh vực nghi&ecirc;n cứu, l&yacute; do lựa chọn lĩnh vực nghi&ecirc;n cứu, mục ti&ecirc;u v&agrave; dự kiến kết quả đạt được, l&yacute; do lựa chọn học tập tại Trường ĐHTL; kế hoạch thực hiện trong từng thời kỳ của thời gian đ&agrave;o tạo; những kinh nghiệm, kiến thức, sự hiểu biết cũng như những chuẩn bị của th&iacute; sinh trong vấn đề hay lĩnh vực dự định nghi&ecirc;n cứu; dự kiến việc l&agrave;m sau khi tốt nghiệp; đề xuất người hướng dẫn (PL5).</p>\r\n\r\n<p><em><strong>2. Thời gian nhận hồ sơ :&nbsp;</strong></em>trong giờ h&agrave;nh ch&iacute;nh tất cả c&aacute;c ng&agrave;y trong tuần trừ ng&agrave;y nghỉ, ng&agrave;y lễ theo quy định.</p>\r\n\r\n<p><strong><em>3. Lệ ph&iacute; x&eacute;t tuyển:&nbsp;</em></strong>Theo quy định hiện h&agrave;nh của nh&agrave; nước.</p>\r\n\r\n<p><strong><em>4. Địa điểm nộp hồ sơ dự tuyển:</em></strong>&nbsp;Ph&ograve;ng Đ&agrave;o tạo, Trường Đại học Thủy lợi, 175 T&acirc;y Sơn, Đống Đa, H&agrave; Nội.</p>\r\n\r\n<p><strong>V.Kế hoạch v&agrave; phương thức tuyển sinh, thời gian c&ocirc;ng bố kết quả tr&uacute;ng tuyển v&agrave; thời gian nhập học:</strong></p>\r\n\r\n<p><strong><em>1.Phương thức tuyển sinh: X&eacute;t tuyển</em></strong></p>\r\n\r\n<p><strong><em>2.Kế hoạch:</em></strong></p>\r\n\r\n<p>Dự kiến x&eacute;t tuyển: từ th&aacute;ng 4 đến th&aacute;ng 12 năm 2020;<br />\r\nDự kiến thời gian c&ocirc;ng bố kết quả tr&uacute;ng tuyển v&agrave; nhập học: Sau 30 ng&agrave;y kể từ ng&agrave;y x&eacute;t tuyển.</p>\r\n\r\n<p><strong>Học ph&iacute;, c&aacute;c ch&iacute;nh s&aacute;ch miễn giảm học ph&iacute; v&agrave; hỗ trợ cho nghi&ecirc;n cứu sinh thực hiện theo quy định hiện h&agrave;nh của Nh&agrave; nước v&agrave; của Trường Đại học Thủy lợi.</strong></p>\r\n\r\n<p>Mọi th&ocirc;ng tin xin li&ecirc;n hệ: Điện thoại: 024.38521441/024.35631537 hoặc xem chi tiết th&ocirc;ng tin tr&ecirc;n website: tuyensinh.tlu.edu.vn.</p>\r\n', 17),
(8, 'Tuyển sinh thạc sĩ', 'Tuyển sinh đào tạo trình độ thạc sĩ năm 2020', 'images/images_post/tuyen-sinh-1thumb.jpg', '', '2020-08-04 03:01:30', '<p><strong>1. TH&Ocirc;NG TIN CHUNG</strong></p>\r\n\r\n<p><strong>1.1 M&ocirc;n thi tuyển: th&iacute; sinh dự thi 03 m&ocirc;n</strong></p>\r\n\r\n<p>- M&ocirc;n thi chung cho tất cả c&aacute;c ng&agrave;nh: Tiếng Anh<br />\r\n- M&ocirc;n thi ri&ecirc;ng đối với từng ng&agrave;nh</p>\r\n\r\n<table border=\"1\" cellpadding=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<th>STT</th>\r\n			<th>Ng&agrave;nh dự thi</th>\r\n			<th>M&ocirc;n thi 1</th>\r\n			<th>M&ocirc;n thi 2</th>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"5\">1</td>\r\n			<td>Kỹ thuật x&acirc;y dựng c&ocirc;ng tr&igrave;nh thủy</td>\r\n			<td rowspan=\"5\">Sức bền vật liệu</td>\r\n			<td rowspan=\"5\">Th&iacute; sinh chọn 1 trong c&aacute;c m&ocirc;n thi sau:<br />\r\n			- Cơ học kết cấu I<br />\r\n			- Thủy lực</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Địa kỹ thuật x&acirc;y dựng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kỹ thuật x&acirc;y dựng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kỹ thuật c&ocirc;ng tr&igrave;nh biển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kỹ thuật x&acirc;y dựng c&ocirc;ng tr&igrave;nh giao th&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"3\">2</td>\r\n			<td>Kỹ thuật t&agrave;i nguy&ecirc;n nước</td>\r\n			<td rowspan=\"3\">Thủy lực</td>\r\n			<td rowspan=\"3\">Th&iacute; sinh chọn 1 trong c&aacute;c m&ocirc;n thi sau:<br />\r\n			- Sức bền vật liệu<br />\r\n			- Thủy văn c&ocirc;ng tr&igrave;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kỹ thuật cấp tho&aacute;t nước</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thủy văn học</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"2\">3</td>\r\n			<td>Khoa học m&ocirc;i trường</td>\r\n			<td rowspan=\"2\">H&oacute;a học m&ocirc;i trường</td>\r\n			<td rowspan=\"2\">M&ocirc;i trường v&agrave; đ&aacute;nh gi&aacute; Kỹ thuật m&ocirc;i trường t&aacute;c động m&ocirc;i trường</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kỹ thuật m&ocirc;i trường</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>Quản l&yacute; x&acirc;y dựng</td>\r\n			<td>Tổ chức v&agrave; quản l&yacute; x&acirc;y dựng</td>\r\n			<td>Kinh tế x&acirc;y dựng</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"3\">5</td>\r\n			<td>Quản l&yacute; kinh tế</td>\r\n			<td rowspan=\"3\">Quản trị học</td>\r\n			<td rowspan=\"3\">Th&iacute; sinh chọn 1 trong c&aacute;c m&ocirc;n thi sau:<br />\r\n			- Quản l&yacute; dự &aacute;n<br />\r\n			- Kinh tế x&acirc;y dựng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quản trị kinh doanh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kinh tế x&acirc;y dựng</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"2\">6</td>\r\n			<td>Kỹ thuật cơ kh&iacute;</td>\r\n			<td rowspan=\"2\">Cơ học cơ sở I</td>\r\n			<td rowspan=\"2\">Kỹ thuật cơ điện</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kỹ thuật điện</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>C&ocirc;ng nghệ th&ocirc;ng tin</td>\r\n			<td>To&aacute;n rời rạc</td>\r\n			<td>Tin học cơ sở</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><em><strong>1.2 Điều kiện dự thi</strong></em></p>\r\n\r\n<p>- Đ&atilde; tốt nghiệp đại học đ&uacute;ng ng&agrave;nh hoặc ph&ugrave; hợp với chuy&ecirc;n ng&agrave;nh đăng k&yacute; dự thi (xem Phụ lục 1 của th&ocirc;ng b&aacute;o n&agrave;y)<br />\r\n- Người c&oacute; bằng tốt nghiệp đại học ng&agrave;nh gần với chuy&ecirc;n ng&agrave;nh dự thi phải học bổ sung kiến thức trước khi dự thi (danh mục c&aacute;c ng&agrave;nh đ&uacute;ng, ng&agrave;nh gần v&agrave; ng&agrave;nh ph&ugrave; hợp với chuy&ecirc;n ng&agrave;nh dự thi xem tại Phụ lục 1 của th&ocirc;ng b&aacute;o n&agrave;y).<br />\r\n- C&oacute; l&yacute; lịch bản th&acirc;n r&otilde; r&agrave;ng&nbsp;<em>(kh&ocirc;ng trong thời gian bị thi h&agrave;nh kỷ luật từ cảnh c&aacute;o trở l&ecirc;n)</em>.<br />\r\n- C&oacute; đủ sức khoẻ để học tập.<br />\r\n- Nộp hồ sơ đầy đủ theo quy định tại mục 5 của Th&ocirc;ng b&aacute;o, đ&uacute;ng thời hạn theo quy định của Nh&agrave; Trường.</p>\r\n\r\n<p><strong>2. ĐIỀU KIỆN MIỄN THI NGOẠI NGỮ</strong></p>\r\n\r\n<p>C&oacute; bằng tốt nghiệp đại học, thạc sĩ, tiến sĩ được đ&agrave;o tạo to&agrave;n thời gian ở nước ngo&agrave;i, được cơ quan c&oacute; thẩm quyền c&ocirc;ng nhận văn bằng theo quy định hiện h&agrave;nh.<br />\r\n- C&oacute; bằng tốt nghiệp đại học chương tr&igrave;nh ti&ecirc;n tiến theo Đề &aacute;n của Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo về đ&agrave;o tạo chương tr&igrave;nh ti&ecirc;n tiến ở một số trường đại học của Việt Nam hoặc bằng kỹ sư chất lượng cao (PFIEV) được ủy ban bằng cấp kỹ sư (CTI, Ph&aacute;p) c&ocirc;ng nhận, c&oacute; đối t&aacute;c nước ngo&agrave;i c&ugrave;ng cấp bằng<br />\r\n- C&oacute; bằng tốt nghiệp đại học ng&agrave;nh ng&ocirc;n ngữ nước ngo&agrave;i.<br />\r\n- Miễn thi m&ocirc;n Tiếng Anh đối với th&iacute; sinh c&oacute; 01 trong c&aacute;c chứng chỉ Ngoại ngữ c&ograve;n thời hạn sử dụng (02 năm từ ng&agrave;y cấp chứng chỉ đến ng&agrave;y đăng k&yacute; dự thi), được cấp bởi một trong c&aacute;c cơ sở IIG Việt Nam, Bristish Council, IDP Việt Nam, Cambridge ESOL Việt Nam v&agrave; đạt tr&igrave;nh độ tối thiểu theo bảng quy đổi dưới đ&acirc;y:</p>\r\n\r\n<p><strong>Tiếng Anh</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<th>IELTS</th>\r\n			<th>TOEFL</th>\r\n			<th>TOEIC</th>\r\n			<th>Cambridge Exam</th>\r\n			<th>BEC</th>\r\n			<th>BULATS</th>\r\n		</tr>\r\n		<tr>\r\n			<td>4.5</td>\r\n			<td>450 PBT 133<br />\r\n			CBT 45 iBT</td>\r\n			<td>450</td>\r\n			<td>Preliminary PET</td>\r\n			<td>Business<br />\r\n			Preliminary</td>\r\n			<td>40</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Một số ngoại ngữ kh&aacute;c</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<th>Tiếng Nga</th>\r\n			<th>Tiếng Ph&aacute;p</th>\r\n			<th>Tiếng Đức</th>\r\n			<th>Tiếng Trung</th>\r\n			<th>Tiếng Nhật</th>\r\n		</tr>\r\n		<tr>\r\n			<td>TRKI 1</td>\r\n			<td>DELF B1<br />\r\n			TCF niveau 3</td>\r\n			<td>B1<br />\r\n			ZD</td>\r\n			<td>HSK cấp độ 3</td>\r\n			<td>JLPT N4</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>&gt;3. ĐỐI TƯỢNG V&Agrave; CH&Iacute;NH S&Aacute;CH ƯU TI&Ecirc;N</strong></p>\r\n\r\n<p>3.1. Đối tượng:<br />\r\na) Người c&oacute; thời gian c&ocirc;ng t&aacute;c li&ecirc;n tục từ 2 năm trở l&ecirc;n (t&iacute;nh đến ng&agrave;y hết hạn nộp hồ sơ đăng k&yacute; dự thi) tại c&aacute;c địa phương được quy định l&agrave; Khu vực 1 trong Quy chế tuyển sinh đại học,cao đẳng hệ ch&iacute;nh quy hiện h&agrave;nh. Trong trường hợp n&agrave;y, th&iacute; sinh phải c&oacute; quyết định tiếp nhận c&ocirc;ng t&aacute;c hoặc điều động, biệt ph&aacute;i c&ocirc;ng t&aacute;c của cơ quan, tổ chức c&oacute; thẩm quyền<br />\r\nb) Thương binh, người hưởng ch&iacute;nh s&aacute;ch như thương binh<br />\r\nc) Con liệt sĩ<br />\r\nd) Anh h&ugrave;ng lực lượng vũ trang, anh h&ugrave;ng lao động<br />\r\nđ) Người d&acirc;n tộc thiểu số c&oacute; hộ khẩu thường tr&uacute; từ 2 năm trở l&ecirc;n ở địa phương được quy định tại Điểm a<br />\r\ne) Con đẻ của người hoạt động kh&aacute;ng chiến bị nhiễm chất độc ho&aacute; học, được Uỷ ban nh&acirc;n d&acirc;n cấp tỉnh c&ocirc;ng nhận bị dị dạng, dị tật, suy giảm khả năng tự lực trong sinh hoạt, học tập do hậu quả của chất độc ho&aacute; học<br />\r\n3.2 C&aacute;c loại giấy tờ phải nộp c&ugrave;ng hồ sơ để hưởng ch&iacute;nh s&aacute;ch ưu ti&ecirc;n (bản sao c&oacute; c&ocirc;ng chứng)<br />\r\na) Hợp đồng lao động, quyết định tiếp nhận hoặc điều động đi c&ocirc;ng t&aacute;c của cấp c&oacute; thẩm quyền v&agrave; x&aacute;c nhận của UBND cấp phường, x&atilde; về việc cơ quan đ&oacute; đặt chủ sở tại địa b&agrave;n được ưu ti&ecirc;n (y&ecirc;u cầu đối với đối tượng a)<br />\r\nb) Thẻ thương binh, bệnh binh hoặc c&aacute;c loại giấy tờ li&ecirc;n quan (y&ecirc;u cầu đối với đối tượng b,c, d)<br />\r\nc) Chứng minh thư nh&acirc;n d&acirc;n hoặc giấy khai sinh; hộ khẩu v&agrave; x&aacute;c nhận cảu UBND cấp phường x&atilde; nơi th&iacute; sinh cư tr&uacute; ( y&ecirc;u cầu đối với đối tượng đ)<br />\r\nd) Giấy khai sinh hoặc hộ khẩu, quyết định của UBND cấp tỉnh c&ocirc;ng nhận bị dị dạng, dị tật, suy giảm khả năng tự lực trong lao động, học tập do hậu quả của chất độc h&oacute;a học đối với người bị nhiễm chất độc h&oacute;a học đối với người bị nhiễm chất độc h&oacute;a học y&ecirc;u cầu đối với đối tượng e)<br />\r\n3.3. Ch&iacute;nh s&aacute;ch ưu ti&ecirc;n:<br />\r\na) Người dự thi thuộc đối tượng ưu ti&ecirc;n (bao gồm cả người thuộc nhiều đối tượng ưu ti&ecirc;n) được cộng v&agrave;o kết quả thi mười điểm cho m&ocirc;n ngoại ngữ (thang điểm 100) nếu kh&ocirc;ng thuộc diện được miễn thi ngoại ngữ theo quy định của Quy chế n&agrave;y v&agrave; cộng một điểm (thang điểm 10) cho một trong hai m&ocirc;n thi c&ograve;n lại</p>\r\n\r\n<p><strong>4. HỌC BỔ SUNG KIẾN THỨC V&Agrave; &Ocirc;N TẬP</strong></p>\r\n\r\n<p>4.1. Kế hoạch học bổ sung kiến thức cho c&aacute;c th&iacute; sinh tốt nghiệp đại học thuộc ng&agrave;nh gần<br />\r\na) Th&iacute; sinh phải ho&agrave;n th&agrave;nh chương tr&igrave;nh học bổ sung kiến thức trước khi dự thi<br />\r\nScan bản sao bằng v&agrave; bảng điểm tốt nghiệp đại học gửi v&agrave;o địa chỉ h&ograve;m thư: tup3@tlu.edu.vn (ghi r&otilde; chuy&ecirc;n ng&agrave;nh đăng k&yacute; dự thi, số điện thoại li&ecirc;n hệ) trước ng&agrave;y 15/3/2020. Th&iacute; sinh vẫn phải nộp hồ sơ đăng k&yacute; dự thi theo mục 5 của Th&ocirc;ng b&aacute;o n&agrave;y<br />\r\nc) Kế hoạch học: 27/3/2020 đến 18/4/2020.<br />\r\nd) Địa điểm đăng k&yacute;: Ph&ograve;ng Đ&agrave;o tạo- Trường Đại học Thủy lợi- Ph&ograve;ng 134 nh&agrave; A4- 175 T&acirc;y Sơn- Đống Đa- H&agrave; Nội.</p>\r\n\r\n<p><strong>5. HỒ SƠ DỰ THI, ĐĂNG K&Yacute; DỰ THI, THỜI GIAN THI V&Agrave; LỆ PH&Iacute;</strong></p>\r\n\r\n<p>5.1 Danh mục c&aacute;c giấy tờ cần nộp trong hồ sơ được in tr&ecirc;n b&igrave;a hồ sơ v&agrave; theo mẫu qui định, đề cương &ocirc;n tập ph&aacute;t h&agrave;nh tại:</p>\r\n\r\n<p><br />\r\na) Ph&ograve;ng Đ&agrave;o tạo (Ph&ograve;ng 134 nh&agrave; A4), Trường Đại học Thủy lợi, Số 175 - T&acirc;y Sơn - Đống Đa - H&agrave; Nội. Số điện thoại: (024) 38 524 529 hoặc c&ocirc; Vũ Thị Thanh T&uacute;: 0989.745.360 ( trong giờ h&agrave;nh ch&iacute;nh).<br />\r\nb) Ban Đ&agrave;o tạo v&agrave; QLSV của Cơ sở 2- Trường Đại học Thuỷ lợi, Số 02- Trường Sa- Phường 17- Quận B&igrave;nh Thạnh- TP. Hồ Ch&iacute; Minh.<br />\r\nc) Viện Đ&agrave;o tạo v&agrave; Khoa học Ứng dụng miền Trung: Khu Đ&agrave;o tạo- 74 Y&ecirc;n Ninh- Phan RangNinh Thuận.<br />\r\n5.2 Thời gian nộp hồ sơ đăng k&yacute; dự thi: trước ng&agrave;y 24/4/2020.<br />\r\n<strong>5.3 Lệ ph&iacute; dự thi: 120.000 đ/ m&ocirc;n</strong><br />\r\n- Trước ng&agrave;y thi 3 tuần Nh&agrave; trường gửi giấy b&aacute;o dự thi cho c&aacute;c th&iacute; sinh v&agrave; ni&ecirc;m yết danh s&aacute;ch th&iacute; sinh dự thi Ph&ograve;ng Đ&agrave;o tạo trường Đại học Thủy lợi, đồng thời đăng tải tr&ecirc;n Website: http://www.tlu.edu.vn/tuyen-sinh-cao-hoc</p>\r\n\r\n<p><strong>6. Mọi chi tiết xin li&ecirc;n hệ:</strong></p>\r\n\r\n<p>- Tại H&agrave; Nội: Ph&ograve;ng Đ&agrave;o tạo (Ph&ograve;ng 134 nh&agrave; A4), Trường Đại học Thủy lợi, Số 175 - T&acirc;y Sơn - Đống Đa - H&agrave; Nội. Số điện thoại: (024)38 524 529 hoặc (024)3 563 1537<br />\r\n- Tại Th&agrave;nh phố Hồ Ch&iacute; Minh: Ban Đ&agrave;o tạo v&agrave; QLSV của Cơ sở 2- Trường Đại học Thuỷ lợi, Số 02 Trường Sa- Phường 17- Quận B&igrave;nh Thạnh -TP. Hồ Ch&iacute; Minh. Số điện thoại: (028) 08 6076<br />\r\n- Tại Ninh Thuận: Viện Đ&agrave;o tạo v&agrave; Khoa học Ứng dụng Miền Trung: 74 Y&ecirc;n Ninh - Phan Rang - Ninh Thuận. Số điện thoại: (068) 222 1522./.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 17),
(9, 'Tuyển sinh liên thông', 'Thông báo tuyển sinh liên thông trình độ đại học năm 2019', 'images/images_post/z2000444835347_2a857868f02d9d63bbda592d9bc2029e_cpua.jpg', '', '2020-08-04 03:13:18', '<p>Trường Đại học Thủy lợi th&ocirc;ng b&aacute;o tuyển sinh hệ li&ecirc;n th&ocirc;ng tr&igrave;nh độ đại học năm 2019 như sau:</p>\r\n\r\n<p><strong>1.</strong>&nbsp;<strong>Ng&agrave;nh tuyển sinh, chỉ ti&ecirc;u tuyển sinh, m&ocirc;n thi tuyển</strong></p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:637px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>STT</p>\r\n			</td>\r\n			<td>\r\n			<p>Ng&agrave;nh</p>\r\n			</td>\r\n			<td>\r\n			<p>Chỉ ti&ecirc;u</p>\r\n			</td>\r\n			<td>\r\n			<p>M&ocirc;n thi tuyển</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>1</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật x&acirc;y dựng</p>\r\n			</td>\r\n			<td rowspan=\"3\">\r\n			<p>100</p>\r\n			</td>\r\n			<td>\r\n			<p>- M&ocirc;n 1: To&aacute;n cao cấp</p>\r\n\r\n			<p>- M&ocirc;n 2: Sức bền vật liệu 1</p>\r\n\r\n			<p>- M&ocirc;n 3: Cơ học chất lỏng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>2</p>\r\n			</td>\r\n			<td>\r\n			<p>Quản l&yacute; x&acirc;y dựng</p>\r\n			</td>\r\n			<td>\r\n			<p>- M&ocirc;n 1: To&aacute;n cao cấp</p>\r\n\r\n			<p>-&nbsp;M&ocirc;n 2: Sức bền vật liệu 1</p>\r\n\r\n			<p>-&nbsp;M&ocirc;n 3: Kinh tế x&acirc;y dựng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>3</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật điện</p>\r\n			</td>\r\n			<td>\r\n			<p>- M&ocirc;n 1: To&aacute;n cao cấp</p>\r\n\r\n			<p>-&nbsp;M&ocirc;n 2: Mạch điện</p>\r\n\r\n			<p>-&nbsp;M&ocirc;n 3: Cung cấp điện</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. Thời gian thi tuyển&nbsp;</strong>&nbsp;C&aacute;c ng&agrave;y 21, 22 th&aacute;ng 12 năm 2019</p>\r\n\r\n<p><strong>3. Thời gian nhận hồ sơ v&agrave; tổ chức học &ocirc;n</strong></p>\r\n\r\n<p>- Thời gian ph&aacute;t h&agrave;nh v&agrave; nhận hồ sơ: Từ ng&agrave;y 20/09/2019- 02/12/2019;</p>\r\n\r\n<p>- Tổ chức &ocirc;n tập: Dự kiến từ ng&agrave;y 20/10/2019-15/12/2019 (th&iacute; sinh c&oacute; nguyện vọng học &ocirc;n tập đăng k&yacute; trước ng&agrave;y 30/10/2019);</p>\r\n\r\n<p>&nbsp;- Hồ sơ đăng k&yacute; dự thi, đề cương &ocirc;n tập v&agrave; đăng k&yacute; học &ocirc;n li&ecirc;n hệ với Ph&ograve;ng Đ&agrave;o tạo -134 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nh&agrave; A4&ndash; Trường Đại học Thủy lợi &ndash; 175 T&acirc;y Sơn &ndash; Đống Đa &ndash; H&agrave; Nội. Điện thoại &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;024.3563.1537; Email:&nbsp;<a href=\"mailto:daotao@tlu.edu.vn\">daotao@tlu.edu.vn</a>; th&ocirc;ng tin chi tiết xem tại:&nbsp;<a href=\"http://tlu.edu.vn/\">http://tlu.edu.vn</a></p>\r\n\r\n<p><strong><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/Tuyensinh/2019/LienThong/TB_thi_tuyen_he_lien_thong_2019.pdf\">Xem chi tiết th&ocirc;ng b&aacute;o</strong></a></p>\r\n', 17),
(10, 'Tuyển sinh vừa làm vừa học', 'Tuyển sinh hệ vừa làm vừa học năm 2019', 'images/images_post/xacnhannhthumb.jpg', '', '2020-08-04 03:29:13', '<p>Trường Đại học Thủy lợi th&ocirc;ng b&aacute;o kế hoạch&nbsp;tuyển sinh hệ vừa l&agrave;m vừa học năm 2019</p>\r\n\r\n<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/Tuyensinh/2019/VLVH/KH_TS_VLVH_2019.pdf\">Xem kế hoạch chi tiết</a></p>\r\n', 17),
(11, 'Tuyển sinh văn bằng 2', 'Thông báo về việc xét tuyển đào tạo văn bằng 2 đợt 1 năm 2019', 'images/images_post/13521885_641739505975899_7521192926912067664_n.jpg', '', '2020-08-04 03:36:08', '<p>Trường Đại học Thủy lợi th&ocirc;ng b&aacute;o x&eacute;t tuyển đ&agrave;o tạo văn bằng 2 tr&igrave;nh độ đại học đợt 1 năm 2019.</p>\r\n\r\n<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/Tuyensinh/2019/VanBang2/TB_Thi_VanBang2.pdf\">Xem th&ocirc;ng b&aacute;o chi tiết</a></p>\r\n', 17),
(24, 'Tin tức', 'Phương thức xét tuyển đại học chính quy năm 2020', 'images/images_post/0e78cc85ad6080a9d1bbd6f11db5193c5b02809d5d29c_4080eda1a706ce63f272259076427490.jpg', 'Trường Đại học Thủy lợi công bố Phương thức xét tuyển đại học chính quy năm 2020 tại 3 cơ sở đào tạo: Cơ sở Hà Nội, Cơ sở Phố Hiến và Phân hiệu miền Nam.', '2020-08-03 01:35:39', '<p>Trường Đại học Thủy lợi c&ocirc;ng bố Phương thức x&eacute;t tuyển đại học ch&iacute;nh quy năm 2020 tại 3 cơ sở đ&agrave;o tạo: Cơ sở H&agrave; Nội, Cơ sở Phố Hiến v&agrave; Ph&acirc;n hiệu miền Nam.</p>\r\n\r\n<p>Trường Đại học Thủy lợi c&ocirc;ng bố Phương thức x&eacute;t tuyển đại học ch&iacute;nh quy năm 2020 tại 3 cơ sở đ&agrave;o tạo: Cơ sở H&agrave; Nội, Cơ sở Phố Hiến v&agrave; Ph&acirc;n hiệu miền Nam.</p>\r\n\r\n<p>Theo đ&oacute;, c&oacute; 3 phương thức x&eacute;t tuyển:</p>\r\n\r\n<ul>\r\n	<li>&nbsp;X&eacute;t tuyển thẳng;</li>\r\n	<li>&nbsp;X&eacute;t tuyển dựa v&agrave;o kết quả kỳ thi THPT năm 2020;</li>\r\n	<li>&nbsp;X&eacute;t tuyển dựa tr&ecirc;n kết quả học bạ.</li>\r\n</ul>\r\n\r\n<p>Chi tiết, xin mời click v&agrave;o h&igrave;nh b&ecirc;n dưới!</p>\r\n\r\n<p><a href=\"/Portals/0/2020-6/CS HN_1 (1)-da chuyn di.pdf?ver=2020-07-02-164537-460\"><img alt=\"\" src=\"http://tlu.edu.vn/Portals/0/2020/Thang5/CSHN_1.jpg\" /></a><a href=\"/Portals/0/2020-6/CS PH_1-da chuyn di.pdf?ver=2020-07-02-164537-460\"><img alt=\"\" src=\"http://tlu.edu.vn/Portals/0/2020/Thang5/CSPH.jpg\" /></a><a href=\"/Portals/0/2020-6/CS 2_1.pdf?ver=2020-07-02-164537-460\"><img alt=\"\" src=\"http://tlu.edu.vn/Portals/0/2020/Thang5/CS2.jpg\" /></a></p>\r\n\r\n<p>Xem chi tiết c&aacute;c ng&agrave;nh tuyển sinh:&nbsp;<a href=\"http://www.tlu.edu.vn/tin-tuc-thong-bao/cac-nganh-tuyen-sinh-dai-hoc-chinh-quy-11036\">TẠI Đ&Acirc;Y</a></p>\r\n\r\n<p>Video giới thiệu phương thức tuyển sinh:&nbsp;<a href=\"https://www.youtube.com/watch?v=AY1bdaeIEdU&amp;utm_source=zalo&amp;utm_medium=zalo&amp;utm_campaign=zalo&amp;zarsrc=31&amp;app=desktop#menu\">TẠI Đ&Acirc;Y</a></p>\r\n', 17);
INSERT INTO `baiviet` (`mabv`, `chude`, `tieude`, `anh`, `tomtat`, `ngaytao`, `noidung`, `matk`) VALUES
(25, 'Thông báo', 'Thông báo số 2 Cuộc thi “Sinh viên với ý tưởng khởi nghiệp” năm 2020', 'images/images_post/18-hinh-nen-powerpoint-mau-tim-giup-bai-thuyet-trinh-them-thu-hut-1489724046-9.gif', 'Căn cứ Kế hoạch số 488 ngày 01/7/2020 của Hiệu trưởng Trường Đại học Thủy lợi về kế hoạch tổ chức Cuộc thi “Sinh viên với ý tưởng khởi nghiệp” năm 2020 (SV_STARTUP-2020); Nhà trường thông báo số 2 với các nội dung sau:', '2020-08-03 02:06:48', '<p>Căn cứ Kế hoạch số 488 ng&agrave;y 01/7/2020 của Hiệu trưởng Trường Đại học Thủy lợi về kế hoạch tổ chức Cuộc thi &ldquo;Sinh vi&ecirc;n với &yacute; tưởng khởi nghiệp&rdquo; năm 2020 (SV_STARTUP-2020); Nh&agrave; trường th&ocirc;ng b&aacute;o số 2 với c&aacute;c nội dung sau:</p>\r\n\r\n<p><strong>1. C&aacute;c đề t&agrave;i được lựa chọn v&agrave;o v&ograve;ng 2 của cuộc thi:</strong></p>\r\n\r\n<p>- Số lượng đề t&agrave;i đăng k&yacute; dự thi: 31 đề t&agrave;i</p>\r\n\r\n<p>- Số lượng đề t&agrave;i được lựa chọn v&agrave;o v&ograve;ng 2 của cuộc thi: 23 đề t&agrave;i&nbsp;<em>(Danh s&aacute;ch cụ thể gửi k&egrave;m theo&nbsp;<a href=\"/Portals/0/ThongBao/2020/2020_07_22 Danh sach cac du an khoi nghiep CAP TRUONG.xlsx?ver=2020-07-22-225559-213\">TẠI Đ&Acirc;Y</a>)</em></p>\r\n\r\n<p><strong>2. Một số y&ecirc;u cầu:</strong></p>\r\n\r\n<p><strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.1. Ph&ograve;ng Ch&iacute;nh trị v&agrave; C&ocirc;ng t&aacute;c sinh vi&ecirc;n</em></strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Tiếp tục tổ chức truyền th&ocirc;ng c&aacute;c hoạt động hỗ trợ sinh vi&ecirc;n tham gia cuộc thi;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Chủ tr&igrave; c&ocirc;ng t&aacute;c phối hợp giữa c&aacute;c đơn vị trong trường để triển khai tốt c&aacute;c nhiệm vụ, c&ocirc;ng việc theo kế hoạch;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Phối hợp với c&aacute;c khoa, C&acirc;u lạc bộ Khởi nghiệp hỗ trợ t&igrave;m th&agrave;nh vi&ecirc;n bổ sung cho nh&oacute;m sinh vi&ecirc;n c&oacute; y&ecirc;u cầu.</p>\r\n\r\n<p>&nbsp;<strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.2. C&aacute;c Khoa, Trung t&acirc;m</em></strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Theo d&otilde;i đ&ocirc;n đốc v&agrave; hỗ trợ sinh vi&ecirc;n thực hiện &yacute; tưởng khởi nghiệp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Tổ chức truyền th&ocirc;ng s&acirc;u rộng đến sinh vi&ecirc;n trong Khoa về cuộc thi để lan tỏa tinh thần khởi nghiệp s&aacute;ng tạo đến to&agrave;n thể sinh vi&ecirc;n;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Ph&acirc;n c&ocirc;ng nhiệm vụ cho c&aacute;c Giảng vi&ecirc;n hướng dẫn c&aacute;c đề t&agrave;i của sinh vi&ecirc;n (nếu sinh vi&ecirc;n c&oacute; nguyện vọng cần giảng vi&ecirc;n hướng dẫn).</p>\r\n\r\n<p><strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.3. C&acirc;u lạc bộ Khởi nghiệp</em></strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Hỗ trợ bổ sung c&aacute;c th&agrave;nh vi&ecirc;n cho c&aacute;c nh&oacute;m sinh vi&ecirc;n c&oacute; y&ecirc;u cầu;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Hướng dẫn, đ&agrave;o tạo c&aacute;c nh&oacute;m sinh vi&ecirc;n c&aacute;ch viết dự &aacute;n, quản trị dự &aacute;n...</p>\r\n\r\n<p><strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.4. C&aacute;c sinh vi&ecirc;n/nh&oacute;m sinh vi&ecirc;n thực hiện đề t&agrave;i:</em></strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Tham gia đầy đủ c&aacute;c buổi đ&agrave;o tạo, huấn luyện do Ban tổ chức sắp xếp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - T&iacute;ch cực x&acirc;y dựng v&agrave; ph&aacute;t triển &yacute; tưởng theo đ&uacute;ng kế hoạch Nh&agrave; trường đ&atilde; th&ocirc;ng b&aacute;o;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - C&aacute;c nh&oacute;m r&agrave; so&aacute;t lại c&aacute;c th&agrave;nh vi&ecirc;n trong nh&oacute;m, t&ecirc;n đề t&agrave;i, sản phẩm dự kiến v&agrave; gi&aacute;o vi&ecirc;n hướng dẫn (theo mẫu gửi k&egrave;m) v&agrave; gửi về ph&ograve;ng Ch&iacute;nh trị v&agrave; C&ocirc;ng t&aacute;c sinh vi&ecirc;n qua địa chỉ email:&nbsp;<em><a href=\"mailto:congtacsinhvien@tlu.edu.vn\">congtacsinhvien@tlu.edu.vn</a>&nbsp;</em>trước 10h00 ng&agrave;y thứ S&aacute;u (24/7/2020). Lưu &yacute;: mỗi nh&oacute;m tối đa c&oacute; 5 th&agrave;nh vi&ecirc;n, trong đ&oacute; n&ecirc;n c&oacute; th&agrave;nh vi&ecirc;n biết về marketing, ph&aacute;t triển thương hiệu, t&agrave;i ch&iacute;nh, c&ocirc;ng nghệ th&ocirc;ng tin. Trong trường hợp c&aacute;c nh&oacute;m kh&ocirc;ng tự t&igrave;m được c&aacute;c th&agrave;nh vi&ecirc;n ph&ugrave; hợp, Ban tổ chức sẽ hỗ trợ bổ sung th&agrave;nh vi&ecirc;n cho nh&oacute;m.</p>\r\n\r\n<p>Chi tiết th&ocirc;ng b&aacute;o xem&nbsp;<a href=\"/Portals/0/ThongBao/2020/2http://www.tlu.edu.vn/Portals/0/ThongBao/2020/2020_07_21%20Thong%20bao%20s%202%20cuc%20thi%20khi%20nghip.doc?ver=2020-07-22-224336-663020_07_21 Thong bao s 2 cuc thi khi nghip.doc?ver=2020-07-22-224336-663\">TẠI Đ&Acirc;Y</a></p>\r\n', 23),
(37, 'Kế hoạch đào tạo đại học chính quy', 'Thông báo triển khai kế hoạch tính toán khối lượng vượt giờ năm học 2019-2020', 'images/images_post/14_teas.jpg', 'Để thực hiện việc tính toán khối lượng vượt giờ năm học 2019-2020 được nhanh chóng, chính xác, đúng kế hoạch; Nhà trường có phát hành thông báo kế hoạch và phân công các đơn vị', '2020-08-05 02:13:15', '<p>Để thực hiện việc t&iacute;nh to&aacute;n khối lượng vượt giờ năm học 2019-2020 được nhanh ch&oacute;ng, ch&iacute;nh x&aacute;c, đ&uacute;ng kế hoạch; Nh&agrave; trường th&ocirc;ng b&aacute;o kế hoạch v&agrave; ph&acirc;n c&ocirc;ng c&aacute;c đơn vị như sau:</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-color:black; border-style:solid; border-width:2px; height:10px; vertical-align:top; width:50px\">\r\n			<p><strong>TT</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:2px solid black; height:10px; vertical-align:top; width:1000px\">\r\n			<p><strong>Nội dung</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:2px solid black; height:10px; vertical-align:top; width:200px\">\r\n			<p><strong>Thời gian triển khai</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:2px solid black; height:10px; vertical-align:top; width:100px\">\r\n			<p><strong>Đơn vị chủ tr&igrave;</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:2px solid black; height:10px; vertical-align:top; width:200px\">\r\n			<p><strong>Đơn vị phối hợp</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:50px\">\r\n			<p><strong>I</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:1000px\">\r\n			<p><strong>Cập nhật, t&iacute;nh to&aacute;n khối lượng theo thời kh&oacute;a biểu</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:100px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:50px\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:1000px\">\r\n			<p>Trưởng c&aacute;c bộ m&ocirc;n ho&agrave;n thiện v&agrave; nộp cho Ph&ograve;ng Đ&agrave;o tạo (P3) lịch tr&igrave;nh giảng dạy c&aacute;c lớp học phần</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>Trước 15/8/2020</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:100px\">\r\n			<p>C&aacute;c bộ m&ocirc;n</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>GV giảng dạy c&aacute;c lớp</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:50px\">\r\n			<p>2</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:1000px\">\r\n			<p>P3 r&agrave; so&aacute;t v&agrave; cập nhật l&ecirc;n phần mềm dữ liệu khối lượng giảng dạy theo thời kh&oacute;a biểu</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>Trước 29/8/2020</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:100px\">\r\n			<p>P3</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>C&aacute;c bộ m&ocirc;n</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:50px\">\r\n			<p><strong>II</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:1000px\">\r\n			<p><strong>Cập nhật, t&iacute;nh to&aacute;n khối lượng c&aacute;c hội đồng đ&aacute;nh gi&aacute; tốt nghiệp</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:100px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:50px\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:1000px\">\r\n			<p>Ho&agrave;n thiện v&agrave; nộp cho P3 th&ocirc;ng tin của c&aacute;c hội đồng chấm tốt nghiệp</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>Trước 08/8/2020</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:100px\">\r\n			<p>C&aacute;c Khoa</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>C&aacute;c HĐ chấm tốt nghiệp</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:50px\">\r\n			<p>2</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:1000px\">\r\n			<p>P3 r&agrave; so&aacute;t v&agrave; cập nhật l&ecirc;n phần mềm dữ liệu khối lượng tốt nghiệp</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>Trước 22/8/2020</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:100px\">\r\n			<p>P3</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>C&aacute;c Khoa</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:50px\">\r\n			<p><strong>III</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:1000px\">\r\n			<p><strong>T&iacute;nh to&aacute;n v&agrave; cập nhật l&ecirc;n phần mềm khối lượng giảng dạy từ việc hướng dẫn sinh vi&ecirc;n nghi&ecirc;n cứu khoa học (NCKH)</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>Trước 15/8/2020</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:100px\">\r\n			<p><strong>P9</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p><strong>C&aacute;c bộ m&ocirc;n</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:50px\">\r\n			<p><strong>IV</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:1000px\">\r\n			<p><strong>Cập nhật, t&iacute;nh to&aacute;n khối lượng NCKH quy đổi từ c&aacute;c sản phẩm khoa học</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:100px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:50px\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:1000px\">\r\n			<p>Ph&ograve;ng Khoa học &ndash; C&ocirc;ng nghệ (P9) r&agrave; so&aacute;t v&agrave; cập nhật dữ liệu l&ecirc;n phần mềm</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>Trước 22/8/2020</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:100px\">\r\n			<p>P9</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>C&aacute;c bộ m&ocirc;n</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:50px\">\r\n			<p>2</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:1000px\">\r\n			<p>T&iacute;nh to&aacute;n v&agrave; cập nhật dữ liệu quy đổi từ hướng dẫn nghi&ecirc;n cứu sinh bảo vệ th&agrave;nh</p>\r\n\r\n			<p>c&ocirc;ng luận &aacute;n tiến sĩ</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>Trước 22/8/2020</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:100px\">\r\n			<p>P3</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>C&aacute;c bộ m&ocirc;n</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:50px\">\r\n			<p><strong>V</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:1000px\">\r\n			<p><strong>Cập nhật, t&iacute;nh to&aacute;n khối lượng NCKH quy đổi từ c&aacute;c dự &aacute;n đầu tư cơ bản, sản xuất, kinh doanh c&aacute;c loại</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:100px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:50px\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:1000px\">\r\n			<p>Chủ nhiệm c&aacute;c đề t&agrave;i, dự &aacute;n (BCN) ho&agrave;n thiện v&agrave; nộp cho Ph&ograve;ng T&agrave;i ch&iacute;nh &ndash; Kế to&aacute;n (P5) hồ sơ quy đổi</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>Trước 01/8/2020</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:100px\">\r\n			<p>BCN</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:50px\">\r\n			<p>2</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:1000px\">\r\n			<p>P5 r&agrave; so&aacute;t v&agrave; cập nhật dữ liệu l&ecirc;n phần mềm</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>Trước 22/8/2020</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:100px\">\r\n			<p>P5</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>BCN</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-color:black; border-style:solid; border-width:2px; height:10px; vertical-align:top; width:47px\">\r\n			<p><strong>VI</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:2px solid black; height:10px; vertical-align:top; width:910px\">\r\n			<p><strong>Ph&ograve;ng Ch&iacute;nh trị v&agrave; C&ocirc;ng t&aacute;c sinh vi&ecirc;n (P7) cập nhật, t&iacute;nh to&aacute;n khối lượng nghi&ecirc;n cứu khoa học quy đổi từ hướng dẫn sinh vi&ecirc;n thi Olympic</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:2px solid black; height:10px; vertical-align:top; width:190px\">\r\n			<p>Trước 22/8/2020</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:2px solid black; height:10px; vertical-align:top; width:110px\">\r\n			<p><strong>P7</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:2px solid black; height:10px; vertical-align:top; width:200px\">\r\n			<p><strong>C&aacute;c bộ m&ocirc;n, P3</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:47px\">\r\n			<p><strong>VII</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:910px\">\r\n			<p><strong>T&iacute;nh to&aacute;n, cập nhật phần mềm định mức của giảng vi&ecirc;n, bộ m&ocirc;n</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:190px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:110px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:47px\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:910px\">\r\n			<p>Ph&ograve;ng Tổ chức c&aacute;n bộ (P2) t&iacute;nh to&aacute;n định mức của giảng vi&ecirc;n, bộ m&ocirc;n</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:190px\">\r\n			<p>Trước 30/7/2020</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:110px\">\r\n			<p>P2</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>C&aacute;c bộ m&ocirc;n</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:47px\">\r\n			<p>2</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:910px\">\r\n			<p>Cập nhật dữ liệu l&ecirc;n phần mềm</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:190px\">\r\n			<p>Trước 15/8/2020</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:110px\">\r\n			<p>P3</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>P2</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:47px\">\r\n			<p><strong>VIII</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:910px\">\r\n			<p><strong>Tổng hợp, ho&agrave;n thiện thủ tục thanh to&aacute;n khối lượng vượt giờ năm học 2019-2020</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:190px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:110px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:47px\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:910px\">\r\n			<p>Tổng hợp t&iacute;nh to&aacute;n khối lượng giảng dạy v&agrave; NCKH, gửi file tới c&aacute;c bộ m&ocirc;n để l&agrave;m thủ tục</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:190px\">\r\n			<p>Trước 12/9/2020</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:110px\">\r\n			<p>P3</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>C&aacute;c bộ m&ocirc;n</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:47px\">\r\n			<p>2</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:910px\">\r\n			<p>Ho&agrave;n tất thủ tục để triển khai thủ tục thanh to&aacute;n</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:190px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:110px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:47px\">\r\n			<p><em>2.1</em></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:910px\">\r\n			<p><em>Giảng vi&ecirc;n k&yacute; x&aacute;c nhận bảng k&ecirc; khối lượng c&aacute; nh&acirc;n; Trưởng bộ m&ocirc;n k&yacute; x&aacute;c nhận bảng k&ecirc; khối lượng c&aacute;c th&agrave;nh vi&ecirc;n trong bộ m&ocirc;n v&agrave; bảng tổng hợp của bộ m&ocirc;n. Sau đ&oacute; nộp bản cứng đ&atilde; x&aacute;c nhận đầy đủ tại P3</em></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:190px\">\r\n			<p><em>Trước 19/9/2020</em></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:110px\">\r\n			<p><em>C&aacute;c bộ m&ocirc;n</em></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p><em>P3</em></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:47px\">\r\n			<p><em>2.2</em></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:910px\">\r\n			<ul>\r\n				<li><em>P3 x&aacute;c nhận rồi chuyển P2</em></li>\r\n				<li><em>P2 x&aacute;c nhận rồi chuyển P5</em></li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:190px\">\r\n			<p><em>Trước 26/9/2020</em></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:110px\">\r\n			<p><em>P2, P3</em></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p><em>P5</em></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:47px\">\r\n			<p><em>2.3</em></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:910px\">\r\n			<p><em>P5 triển khai thủ tục thanh to&aacute;n cho giảng vi&ecirc;n</em></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:190px\">\r\n			<p><em>Trước 10/10/2020</em></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:110px\">\r\n			<p><em>P5</em></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:10px; vertical-align:top; width:200px\">\r\n			<p><em>Kho bạc</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nh&agrave; trường đề nghị c&aacute;c đơn vị, c&aacute; nh&acirc;n li&ecirc;n quan chịu tr&aacute;ch nhiệm nghi&ecirc;m t&uacute;c thực hiện kế hoạch, nội dung được ph&acirc;n c&ocirc;ng trong th&ocirc;ng b&aacute;o n&agrave;y.</p>\r\n', 17),
(38, 'Kế hoạch đào tạo tiến sĩ', 'Thông báo về kế hoạch học tập của nghiên cứu sinh năm 2020', 'images/images_post/01DHTL.jpg', 'Trường Đại học Thủy lợi thông báo kế hoạch học tập của nghiên cứu sinh năm 2020  chi tiết xem tại đây', '2020-08-05 02:59:26', '<p>Trường Đại học Thủy lợi th&ocirc;ng b&aacute;o kế hoạch học tập của nghi&ecirc;n cứu sinh năm 2020 như sau:</p>\r\n\r\n<table align=\"center\" cellspacing=\"0\" style=\"border-collapse:collapse; width:718px\">\r\n	<thead>\r\n		<tr>\r\n			<td rowspan=\"2\" style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:2px solid black; height:21px; width:42px\">\r\n			<p><strong>STT</strong></p>\r\n			</td>\r\n			<td rowspan=\"2\" style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:2px solid black; height:21px; width:281px\">\r\n			<p><strong>Nội dung c&ocirc;ng việc</strong></p>\r\n			</td>\r\n			<td colspan=\"4\" style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:2px solid black; height:21px; vertical-align:top; width:395px\">\r\n			<p><strong>C&aacute;c đợt trong năm 2020</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:29px; vertical-align:top; width:84px\">\r\n			<p><strong>Đợt 1</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:29px; vertical-align:top; width:104px\">\r\n			<p><strong>Đợt 2</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:29px; vertical-align:top; width:91px\">\r\n			<p><strong>Đợt 3</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:29px; vertical-align:top; width:115px\">\r\n			<p><strong>Đợt 4</strong></p>\r\n			</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:22px; width:42px\">\r\n			<p><strong>I.</strong></p>\r\n			</td>\r\n			<td colspan=\"5\" style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:22px; width:675px\">\r\n			<p><strong>Kế hoạch nộp v&agrave; tổ chức b&aacute;o c&aacute;o tiến độ:</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:22px; width:42px\">\r\n			<p><strong>A</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:22px; width:281px\">\r\n			<p><strong>Nghi&ecirc;n cứu sinh (NCS):</strong></p>\r\n			</td>\r\n			<td rowspan=\"2\" style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:22px; width:84px\">\r\n			<p>Trước ng&agrave;y 25/3/2020</p>\r\n			</td>\r\n			<td rowspan=\"2\" style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:22px; width:104px\">\r\n			<p>Tham gia b&aacute;o&nbsp; c&aacute;o (c): &nbsp;&nbsp;27/5/2020 - 23/6/2020</p>\r\n			</td>\r\n			<td rowspan=\"2\" style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:22px; width:91px\">\r\n			<p>Trước ng&agrave;y</p>\r\n\r\n			<p>30/9/2020</p>\r\n			</td>\r\n			<td rowspan=\"2\" style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:22px; width:115px\">\r\n			<p>- Nộp b&aacute;o c&aacute;o (b): trước ng&agrave;y 30/11/2019 .</p>\r\n\r\n			<p>&nbsp;- Tham gia&nbsp; b&aacute;o&nbsp; c&aacute;o (c): 01/11/2020 - 30/11/2020</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:152px; width:42px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:152px; width:281px\">\r\n			<p>a) Nộp B&aacute;o c&aacute;o kết quả v&agrave; tiến độ học tập cho Bộ m&ocirc;n quản l&yacute; (Đợt 1, 3);</p>\r\n\r\n			<p>b) Nộp B&aacute;o c&aacute;o kết quả học tập trong năm v&agrave; kế hoạch thực hiện cho năm học mới về Ph&ograve;ng Đ&agrave;o tạo (Đợt 4);</p>\r\n\r\n			<p>c) Tham gia b&aacute;o c&aacute;o kết quả v&agrave; tiến độ tại Bộ m&ocirc;n (Đợt 2, 4) theo kế hoạch.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:22px; width:42px\">\r\n			<p><strong>B</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:22px; width:281px\">\r\n			<p><strong>Khoa, Bộ m&ocirc;n:</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:22px; vertical-align:top; width:84px\">\r\n			<p><strong>Đợt 1</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:22px; vertical-align:top; width:104px\">\r\n			<p><strong>Đợt 2</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:22px; vertical-align:top; width:91px\">\r\n			<p><strong>Đợt 3</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:22px; vertical-align:top; width:115px\">\r\n			<p><strong>Đợt 4</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:80px; width:42px\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:80px; width:281px\">\r\n			<p>Bộ m&ocirc;n quản l&yacute; lập Bảng thống k&ecirc; kết quả học tập, tiến độ đạt được v&agrave; kế hoạch học tập&nbsp; đợt tiếp theo của NCS (Đợt 1, 3) gửi về Ph&ograve;ng Đ&agrave;o tạo;</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:80px; width:84px\">\r\n			<p>25/3/2020-31/3/2020</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:80px; width:104px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:80px; width:91px\">\r\n			<p>01/10/2020-06/10/2020</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:80px; width:115px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:45px; width:42px\">\r\n			<p>2</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:45px; width:281px\">\r\n			<p>Bộ m&ocirc;n quản l&yacute; NCS tổ chức cho NCS b&aacute;o c&aacute;o kết quả học tập tại bộ m&ocirc;n (Đợt 2, 4);</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:45px; width:84px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:45px; width:104px\">\r\n			<p>Th&aacute;ng 6/2020</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:45px; width:91px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:45px; width:115px\">\r\n			<p>Th&aacute;ng 11/2020</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:45px; width:42px\">\r\n			<p>3</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:45px; width:281px\">\r\n			<p>Bộ m&ocirc;n tập hợp bi&ecirc;n bản buổi b&aacute;o c&aacute;o của NCS về Ph&ograve;ng Đ&agrave;o tạo.</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:45px; width:84px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:45px; width:104px\">\r\n			<p>Trước ng&agrave;y 07/7/2020</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:45px; width:91px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:45px; width:115px\">\r\n			<p>Trước ng&agrave;y 08/12/2020</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:22px; width:42px\">\r\n			<p><strong>II.</strong></p>\r\n			</td>\r\n			<td colspan=\"5\" style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:22px; width:675px\">\r\n			<p><strong>Kế hoạch tổ chức cho nghi&ecirc;n cứu sinh học tập:</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:22px; width:42px\">\r\n			<p><strong>II.1</strong></p>\r\n			</td>\r\n			<td colspan=\"5\" style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:22px; width:675px\">\r\n			<p><strong>C&aacute;c học phần tiến sĩ, học phần bổ sung</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:22px; width:42px\">\r\n			<p><strong>STT</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:22px; width:281px\">\r\n			<p><strong>Nội dung c&ocirc;ng việc</strong></p>\r\n			</td>\r\n			<td colspan=\"4\" style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:22px; width:395px\">\r\n			<p><strong>Năm 2020</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:22px; width:42px\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:22px; width:281px\">\r\n			<p>NCS đăng k&yacute; học (cả năm);</p>\r\n			</td>\r\n			<td colspan=\"4\" style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:22px; width:395px\">\r\n			<p>Trong thời gian:&nbsp; từ 03/02/2020 đến 01/12/2020</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:22px; width:42px\">\r\n			<p>2</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:22px; width:281px\">\r\n			<p>Ph&ograve;ng Đ&agrave;o tạo tập hợp v&agrave; gửi danh s&aacute;ch đăng k&yacute; học của NCS, kế hoạch tổ&nbsp; chức học tới c&aacute;c bộ m&ocirc;n (cả năm);</p>\r\n			</td>\r\n			<td colspan=\"4\" style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:22px; width:395px\">\r\n			<p>Trong thời gian: từ 10/02/2020 đến 07/12/2020</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:22px; width:42px\">\r\n			<p>3</p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:22px; width:281px\">\r\n			<p>Tổ chức cho NCS học tập (cả năm);</p>\r\n			</td>\r\n			<td colspan=\"4\" style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:22px; width:395px\">\r\n			<p>Trong thời gian: từ 01/3/2020 đến 15/12/2020</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:2px solid black; border-left:2px solid black; border-right:2px solid black; border-top:none; height:22px; width:42px\">\r\n			<p><strong>II.2</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:22px; width:281px\">\r\n			<p><strong>Nghi&ecirc;n cứu khoa học </strong>(t&igrave;m t&agrave;i liệu, viết chuy&ecirc;n đề, TLTQ, b&agrave;i b&aacute;o, LATS...)</p>\r\n			</td>\r\n			<td colspan=\"4\" style=\"border-bottom:2px solid black; border-left:none; border-right:2px solid black; border-top:none; height:22px; width:395px\">\r\n			<p>Theo kế hoạch cụ thể của từng NCS dưới sự quản l&yacute; của bộ m&ocirc;n chuy&ecirc;n m&ocirc;n</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Nh&agrave; trường đề nghị c&aacute;c đơn vị, c&aacute; nh&acirc;n c&oacute; li&ecirc;n quan thực hiện kế hoạch theo th&ocirc;ng b&aacute;o n&agrave;y.</p>\r\n', 17);
INSERT INTO `baiviet` (`mabv`, `chude`, `tieude`, `anh`, `tomtat`, `ngaytao`, `noidung`, `matk`) VALUES
(39, 'Kế hoạch đào tạo hệ vừa học vừa làm', 'Lịch thi học kỳ 2 năm học 2016-2017 của lớp 49C hệ VLVH tại HN', 'images/images_post/thong_bao_lich_thi2.jpg', 'Lịch thi học kỳ 2 năm học 2016-2017 của lớp 49C hệ VLVH tại HN', '2020-08-05 03:33:02', '<p>H&agrave; Nội, ng&agrave;y 28 th&aacute;ng 3 năm 2017</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse; width:1020px\">\r\n	<tbody>\r\n		<tr>\r\n			<td rowspan=\"2\" style=\"border-color:black; border-style:double solid solid double; border-width:3px 1px 1px 3px; height:103px; text-align:center; vertical-align:middle; white-space:nowrap; width:10px\"><strong>STT</strong></td>\r\n			<td rowspan=\"2\" style=\"border-color:black; border-style:double solid solid; border-width:3px 1px 1px; text-align:center; vertical-align:middle; white-space:nowrap; width:100px\"><strong>T&ecirc;n học phần</strong></td>\r\n			<td rowspan=\"2\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:3px double black; text-align:center; vertical-align:middle; white-space:normal; width:28px\"><strong>Số TC</strong></td>\r\n			<td rowspan=\"2\" style=\"border-color:black; border-style:double solid solid; border-width:3px 1px 1px; text-align:center; vertical-align:middle; white-space:normal; width:10px\"><strong>Thời gian<br />\r\n			tổ chức thi<br />\r\n			(ph&uacute;t)</strong></td>\r\n			<td colspan=\"4\" style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:3px double black; text-align:center; vertical-align:middle; white-space:nowrap; width:10px\"><strong>Thi kết th&uacute;c học phần</strong></td>\r\n			<td colspan=\"3\" style=\"border-color:black; border-style:double solid solid; border-width:3px 1px 1px 2px; text-align:center; vertical-align:middle; white-space:nowrap; width:10px\"><strong>Thi lại lần 1</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:56px; text-align:center; vertical-align:middle; white-space:nowrap\"><strong>Ng&agrave;y thi</strong></td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:50px\"><strong>Ca thi<br />\r\n			(Giờ thi)</strong></td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:25px\"><strong>Số SV</strong></td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:none; border-top:none; text-align:center; vertical-align:middle; white-space:nowrap\"><strong>Ph&ograve;ng thi</strong></td>\r\n			<td style=\"border-bottom:1px solid black; border-left:2px solid black; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\"><strong>Ng&agrave;y thi lại</strong></td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:50px\"><strong>Ca thi<br />\r\n			(Giờ thi)</strong></td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:nowrap\"><strong>Ph&ograve;ng thi</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:3px double black; border-right:1px solid black; border-top:none; height:36px; text-align:center; vertical-align:middle; white-space:normal; width:10px\">1</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:middle; white-space:normal; width:100px\">Cơ học đất</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:28px\">3</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">120</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">23/05/2017</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:50px\">Ca 1(07:00-09:00)</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:25px\">29</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:none; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">432-A4</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:2px solid black; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">13/06/2017</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:50px\">Ca 2(09:45-11:45)</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">232-A4</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:3px double black; border-right:1px solid black; border-top:none; height:36px; text-align:center; vertical-align:middle; white-space:normal; width:10px\">2</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:middle; white-space:normal; width:100px\">Ph&acirc;n t&iacute;ch ứng suất</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:28px\">3</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">120</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">26/05/2017</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:50px\">Ca 2(09:45-11:45)</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:25px\">29</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:none; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">432-A4</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:2px solid black; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">14/06/2017</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:50px\">Ca 1(07:00-09:00)</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">232-A4</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:3px double black; border-right:1px solid black; border-top:none; height:36px; text-align:center; vertical-align:middle; white-space:normal; width:10px\">3</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:middle; white-space:normal; width:100px\">Động lực học c&ocirc;ng tr&igrave;nh</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:28px\">2</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">120</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">30/05/2017</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:50px\">Ca 1(07:00-09:00)</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:25px\">29</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:none; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">432-A4</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:2px solid black; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">14/06/2017</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:50px\">Ca 2(09:45-11:45)</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">232-A4</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:3px double black; border-right:1px solid black; border-top:none; height:36px; text-align:center; vertical-align:middle; white-space:normal; width:10px\">4</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:middle; white-space:normal; width:100px\">Kết cấu b&ecirc; t&ocirc;ng cốt th&eacute;p</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:28px\">3</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">120</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">02/06/2017</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:50px\">Ca 2(09:45-11:45)</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:25px\">29</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:none; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">432-A4</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:2px solid black; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">15/06/2017</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:50px\">Ca 1(07:00-09:00)</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">232-A4</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:3px double black; border-right:1px solid black; border-top:none; height:36px; text-align:center; vertical-align:middle; white-space:normal; width:10px\">5</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:middle; white-space:normal; width:100px\">Kết cấu th&eacute;p</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:28px\">2</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">120</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">06/06/2017</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:50px\">Ca 1(07:00-09:00)</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:25px\">29</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:none; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">432-A4</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:2px solid black; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">16/06/2017</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:50px\">Ca 1(07:00-09:00)</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">232-A4</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:3px double black; border-right:1px solid black; border-top:none; height:36px; text-align:center; vertical-align:middle; white-space:normal; width:10px\">6</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:middle; white-space:normal; width:100px\">Đồ &aacute;n kết cấu b&ecirc; t&ocirc;ng cốt th&eacute;p</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:28px\">1</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">120</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">08/06/2017</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:50px\">Ca 1(07:00-09:00)</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:25px\">29</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:none; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">432-A4</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:2px solid black; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">15/06/2017</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:50px\">Ca 2(09:45-11:45)</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">232-A4</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:3px double black; border-left:3px double black; border-right:1px solid black; border-top:none; height:36px; text-align:center; vertical-align:middle; white-space:normal; width:10px\">7</td>\r\n			<td style=\"border-bottom:3px double black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:middle; white-space:normal; width:100px\">Đồ &aacute;n kết cấu th&eacute;p</td>\r\n			<td style=\"border-bottom:3px double black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:28px\">1</td>\r\n			<td style=\"border-bottom:3px double black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">120</td>\r\n			<td style=\"border-bottom:3px double black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">10/06/2017</td>\r\n			<td style=\"border-bottom:3px double black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:50px\">Ca 1(07:00-09:00)</td>\r\n			<td style=\"border-bottom:3px double black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:25px\">29</td>\r\n			<td style=\"border-bottom:3px double black; border-left:none; border-right:none; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">432-A4</td>\r\n			<td style=\"border-bottom:3px double black; border-left:2px solid black; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">16/06/2017</td>\r\n			<td style=\"border-bottom:3px double black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:50px\">Ca 2(09:45-11:45)</td>\r\n			<td style=\"border-bottom:3px double black; border-left:none; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:normal; width:10px\">232-A4</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 17),
(40, 'Kế hoạch đào tạo thạc sĩ', 'Thông tin thời gian bảo vệ luận án tiến sĩ cấp Trường của NCS Nguyễn Văn Hiếu', 'images/images_post/NCKH-Avatar (1).jpg', '', '2020-08-05 03:39:16', '<p>Trường Đại học Thủy lợi tổ chức bảo vệ LATS cấp Trường cho NCS Nguyễn Văn Hiếu với</p>\r\n\r\n<p>T&ecirc;n đề t&agrave;i: Nghi&ecirc;n cứu n&acirc;ng cao chất lượng dự b&aacute;o mưa, lũ phục vụ vận h&agrave;nh c&aacute;c hồ chứa tr&ecirc;n lưu vực s&ocirc;ng Ba.</p>\r\n\r\n<p>Ng&agrave;nh: Thủy văn học</p>\r\n\r\n<p>M&atilde; số: 9440224</p>\r\n\r\n<p>Người hướng dẫn khoa học: GS.TS. Vũ Minh C&aacute;t</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; TS. Đặng Thanh Mai</p>\r\n\r\n<p>Thời gian: 14h00, ng&agrave;y 30/07/2020</p>\r\n\r\n<p>Địa điểm: Room 5-K1, Trường Đại học Thủy lợi, 175 T&acirc;y Sơn, Đống Đa, H&agrave; Nội.</p>\r\n\r\n<p>K&iacute;nh mời c&aacute;c đại biểu quan t&acirc;m tới dự./.</p>\r\n', 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cauhoi`
--

CREATE TABLE `cauhoi` (
  `macauhoi` int(11) NOT NULL,
  `hotennguoigui` varchar(20) NOT NULL,
  `sdt` int(15) NOT NULL,
  `emailnguoigui` varchar(150) NOT NULL,
  `tieudecauhoi` varchar(200) NOT NULL,
  `noidungcauhoi` varchar(2000) NOT NULL,
  `manganh` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cosodaotao`
--

CREATE TABLE `cosodaotao` (
  `macoso` tinyint(4) NOT NULL,
  `tencoso` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cosodaotao`
--

INSERT INTO `cosodaotao` (`macoso`, `tencoso`) VALUES
(1, 'Cơ sở Hà Nội'),
(2, 'Cơ sở Phố Hiến'),
(3, 'Phân hiệu Miền Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemchuan`
--

CREATE TABLE `diemchuan` (
  `madiem` int(11) NOT NULL,
  `diem` double NOT NULL,
  `dieukien` varchar(40) DEFAULT NULL,
  `chitieu` smallint(6) NOT NULL,
  `nam` smallint(6) NOT NULL,
  `manganh` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `diemchuan`
--

INSERT INTO `diemchuan` (`madiem`, `diem`, `dieukien`, `chitieu`, `nam`, `manganh`) VALUES
(1, 6.85, 'Điểm toán >= 6.5', 1600, 2020, 'TLA105'),
(2, 6.5, '', 1700, 2020, 'TLA101'),
(3, 6.25, '', 1500, 2020, 'TLA102'),
(4, 20, '', 1600, 2019, 'TLA101'),
(5, 20, '', 1600, 2019, 'TLA102'),
(6, 20, '', 1600, 2019, 'TLA103'),
(7, 20, '', 1600, 2019, 'TLA104'),
(10, 20, '', 1600, 2019, 'TLA105'),
(11, 20, '', 1600, 2019, 'TLA106'),
(12, 20, '', 1600, 2019, 'TLA107'),
(13, 20, '', 1600, 2019, 'TLA109'),
(14, 20, '', 1600, 2019, 'TLA110'),
(15, 20, '', 1600, 2019, 'TLA111'),
(16, 20, '', 1600, 2019, 'TLA112'),
(17, 20, '', 1600, 2019, 'TLA113'),
(18, 20, '', 1600, 2019, 'TLA114'),
(19, 20, '', 1600, 2019, 'TLA118'),
(20, 20, '', 1600, 2019, 'TLA119'),
(21, 20, '', 1600, 2019, 'TLA120'),
(22, 20, '', 1600, 2019, 'TLA121'),
(23, 20, '', 1600, 2019, 'TLA123'),
(24, 20, '', 1600, 2019, 'TLA401'),
(25, 20, '', 1600, 2019, 'TLA402'),
(27, 20, '', 1600, 2019, 'TLA403'),
(28, 20, '', 1600, 2018, 'TLA102'),
(32, 14, '', 1000, 2019, 'PHA106'),
(33, 15, '', 1300, 2019, 'PHA402'),
(34, 14.3, 'toán >7', 1200, 2019, 'PHA403'),
(35, 15.35, 'điểm văn >=6', 1300, 2019, 'TLS101'),
(36, 15.15, '', 1000, 2019, 'TLS102'),
(37, 16.65, '', 1234, 2019, 'TLS104'),
(38, 15.95, '', 1090, 2019, 'TLS106'),
(39, 16.85, '', 1345, 2019, 'TLS107'),
(40, 14.5, '', 1456, 2019, 'TLS111'),
(41, 13, '', 1678, 2019, 'TLS113'),
(42, 15.75, '', 1400, 2019, 'TLS402'),
(43, 16, 'điểm anh > 6', 1500, 2019, 'TLS403'),
(44, 14.5, 'điểm văn >=6.5', 1000, 2020, 'PHA402'),
(45, 15.35, '', 1200, 2020, 'TLS104'),
(46, 15.5, '', 1000, 2018, 'PHA402'),
(47, 16, 'điểm toán >=6', 1200, 2018, 'PHA403'),
(48, 17, 'Điểm toán >= 7', 1500, 2018, 'PHA106'),
(49, 15.5, '', 1000, 2018, 'TLS102'),
(50, 14, '', 1100, 2018, 'TLS113'),
(51, 14.25, '', 1300, 2020, 'PHA403');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nganh`
--

CREATE TABLE `nganh` (
  `manganh` varchar(10) NOT NULL,
  `tennganh` varchar(100) NOT NULL,
  `macoso` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nganh`
--

INSERT INTO `nganh` (`manganh`, `tennganh`, `macoso`) VALUES
('PHA106', 'Công nghệ thông tin', 2),
('PHA402', 'Quản trị kinh doanh', 2),
('PHA403', 'Kế toán', 2),
('TLA101', 'Kỹ thuật xây dựng công trình thủy', 1),
('TLA102', 'Kỹ thuật tài nguyên nước', 1),
('TLA103', 'Thủy văn học', 1),
('TLA104', 'Kỹ thuật xây dựng', 1),
('TLA105', 'Nhóm ngành Kỹ thuật Cơ khí', 1),
('TLA106', 'Nhóm ngành Công nghệ thông tin', 1),
('TLA107', 'Kỹ thuật cấp thoát nước', 1),
('TLA109', 'Kỹ thuật môi trường', 1),
('TLA110', 'Kỹ thuật cơ sở hạ tầng', 1),
('TLA111', 'Công nghệ kỹ thuật xây dựng', 1),
('TLA112', 'Kỹ thuật điện', 1),
('TLA113', 'Kỹ thuật xây dựng công trình giao thông', 1),
('TLA114', 'Quản lý xây dựng', 1),
('TLA118', 'Kỹ thuật hóa học', 1),
('TLA119', 'Công nghệ sinh học', 1),
('TLA120', 'Kỹ thuật cơ điện tử', 1),
('TLA121', 'Kỹ thuật điều khiển và tự động hóa', 1),
('TLA123', 'Kỹ thuật ô tô', 1),
('TLA401', 'Kinh tế', 1),
('TLA402', 'Quản trị kinh doanh', 1),
('TLA403', 'Kế toán', 1),
('TLS101', 'Kỹ thuật xây dựng công trình thủy', 3),
('TLS102', 'Kỹ thuật tài nguyên nước', 3),
('TLS104', 'Kỹ thuật xây dựng', 3),
('TLS106', 'Công nghệ thông tin', 3),
('TLS107', 'Kỹ thuật cấp thoát nước', 3),
('TLS111', 'Công nghệ kỹ thuật xây dựng', 3),
('TLS113', 'Kỹ thuật xây dựng công trình giao thông', 3),
('TLS402', 'Quản trị kinh doanh', 3),
('TLS403', 'Kế toán', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nganh_tohop`
--

CREATE TABLE `nganh_tohop` (
  `matohop` tinyint(4) DEFAULT NULL,
  `manganh` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nganh_tohop`
--

INSERT INTO `nganh_tohop` (`matohop`, `manganh`) VALUES
(1, 'TLA103'),
(2, 'TLA103'),
(5, 'TLA103'),
(6, 'TLA103'),
(1, 'TLA104'),
(2, 'TLA104'),
(5, 'TLA104'),
(6, 'TLA104'),
(1, 'TLA105'),
(2, 'TLA105'),
(5, 'TLA105'),
(6, 'TLA105'),
(1, 'TLA106'),
(2, 'TLA106'),
(5, 'TLA106'),
(6, 'TLA106'),
(1, 'TLA107'),
(2, 'TLA107'),
(5, 'TLA107'),
(6, 'TLA107'),
(1, 'TLA110'),
(2, 'TLA110'),
(5, 'TLA110'),
(6, 'TLA110'),
(1, 'TLA111'),
(2, 'TLA111'),
(5, 'TLA111'),
(6, 'TLA111'),
(1, 'TLA113'),
(2, 'TLA113'),
(5, 'TLA113'),
(6, 'TLA113'),
(1, 'TLA112'),
(2, 'TLA112'),
(5, 'TLA112'),
(6, 'TLA112'),
(1, 'TLA114'),
(2, 'TLA114'),
(5, 'TLA114'),
(6, 'TLA114'),
(1, 'TLA120'),
(2, 'TLA120'),
(5, 'TLA120'),
(6, 'TLA120'),
(1, 'TLA121'),
(2, 'TLA121'),
(5, 'TLA121'),
(6, 'TLA121'),
(1, 'TLA123'),
(2, 'TLA123'),
(5, 'TLA123'),
(6, 'TLA123'),
(1, 'TLA401'),
(2, 'TLA401'),
(5, 'TLA401'),
(6, 'TLA401'),
(1, 'TLA402'),
(2, 'TLA402'),
(5, 'TLA402'),
(6, 'TLA402'),
(1, 'TLA403'),
(2, 'TLA403'),
(5, 'TLA403'),
(6, 'TLA403'),
(1, 'TLS403'),
(2, 'TLS403'),
(5, 'TLS403'),
(6, 'TLS403'),
(1, 'TLS402'),
(2, 'TLS402'),
(5, 'TLS402'),
(6, 'TLS402'),
(1, 'TLS101'),
(2, 'TLS101'),
(5, 'TLS101'),
(6, 'TLS101'),
(1, 'TLS104'),
(2, 'TLS104'),
(5, 'TLS104'),
(6, 'TLS104'),
(1, 'TLS106'),
(2, 'TLS106'),
(5, 'TLS106'),
(6, 'TLS106'),
(1, 'TLS107'),
(2, 'TLS107'),
(5, 'TLS107'),
(6, 'TLS107'),
(1, 'TLS102'),
(2, 'TLS102'),
(5, 'TLS102'),
(6, 'TLS102'),
(1, 'TLS111'),
(2, 'TLS111'),
(5, 'TLS111'),
(6, 'TLS111'),
(1, 'TLS113'),
(2, 'TLS113'),
(5, 'TLS113'),
(6, 'TLS113'),
(1, 'TLA109'),
(2, 'TLA109'),
(5, 'TLA109'),
(4, 'TLA109'),
(1, 'TLA119'),
(3, 'TLA119'),
(4, 'TLA119'),
(7, 'TLA119'),
(1, 'TLA118'),
(4, 'TLA118'),
(6, 'TLA118'),
(1, 'PHA402'),
(2, 'PHA402'),
(5, 'PHA402'),
(7, 'PHA402'),
(1, 'TLA101'),
(2, 'TLA101'),
(5, 'TLA101'),
(6, 'TLA101'),
(1, 'TLA102'),
(2, 'TLA102'),
(5, 'TLA102'),
(6, 'TLA102'),
(1, 'PHA403'),
(2, 'PHA403'),
(5, 'PHA403'),
(6, 'PHA403'),
(1, 'PHA106'),
(2, 'PHA106'),
(5, 'PHA106'),
(6, 'PHA106');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguyenvong`
--

CREATE TABLE `nguyenvong` (
  `manguyenvong` int(10) NOT NULL,
  `tennguyenvong` varchar(50) NOT NULL,
  `maxettuyen` varchar(10) NOT NULL,
  `matohop` tinyint(4) NOT NULL,
  `diem10mon1` tinyint(4) NOT NULL,
  `diem10mon2` tinyint(4) NOT NULL,
  `diem10mon3` tinyint(4) NOT NULL,
  `diem11mon1` tinyint(4) NOT NULL,
  `diem11mon2` tinyint(4) NOT NULL,
  `diem11mon3` tinyint(4) NOT NULL,
  `diem12mon1` tinyint(4) NOT NULL,
  `diem12mon2` tinyint(4) NOT NULL,
  `diem12mon3` tinyint(4) NOT NULL,
  `mathisinh` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quan`
--

CREATE TABLE `quan` (
  `maquan` char(10) NOT NULL,
  `tenquan` varchar(50) NOT NULL,
  `loai` varchar(20) DEFAULT NULL,
  `matinh` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `quan`
--

INSERT INTO `quan` (`maquan`, `tenquan`, `loai`, `matinh`) VALUES
('1', 'Bình Chánh', 'Huyện', '1'),
('10', 'Quận 1', '', '1'),
('100', 'Kiến Thụy', 'Huyện', '7'),
('101', 'Lê Chân', 'Quận', '7'),
('102', 'Ngô Quyền', 'Quận', '7'),
('103', 'Thủy Nguyên', 'Huyện', '7'),
('104', 'Tiên Lãng', 'Huyện', '7'),
('105', 'Vĩnh Bảo', 'Huyện', '7'),
('106', 'Bến Lức', 'Huyện', '8'),
('107', 'Cần Đước', 'Huyện', '8'),
('108', 'Cần Giuộc', 'Huyện', '8'),
('109', 'Châu Thành', 'Huyện', '8'),
('11', 'Quận 10', '', '1'),
('110', 'Đức Hòa', 'Huyện', '8'),
('111', 'Đức Huệ', 'Huyện', '8'),
('112', 'Kiến Tường', 'Thị xã', '8'),
('113', 'Mộc Hóa', 'Huyện', '8'),
('114', 'Tân An', 'Thành phố', '8'),
('115', 'Tân Hưng', 'Huyện', '8'),
('116', 'Tân Thạnh', 'Huyện', '8'),
('117', 'Tân Trụ', 'Huyện', '8'),
('118', 'Thạnh Hóa', 'Huyện', '8'),
('119', 'Thủ Thừa', 'Huyện', '8'),
('12', 'Quận 11', '', '1'),
('120', 'Vĩnh Hưng', 'Huyện', '8'),
('121', 'Bắc Trà My', 'Huyện', '9'),
('122', 'Đại Lộc', 'Huyện', '9'),
('123', 'Điện Bàn', 'Huyện', '9'),
('124', 'Đông Giang', 'Huyện', '9'),
('125', 'Duy Xuyên', 'Huyện', '9'),
('126', 'Hiệp Đức', 'Huyện', '9'),
('127', 'Hội An', 'Thành phố', '9'),
('128', 'Nam Giang', 'Huyện', '9'),
('129', 'Nam Trà My', 'Huyện', '9'),
('13', 'Quận 12', '', '1'),
('130', 'Nông Sơn', 'Huyện', '9'),
('131', 'Núi Thành', 'Huyện', '9'),
('132', 'Phú Ninh', 'Huyện', '9'),
('133', 'Phước Sơn', 'Huyện', '9'),
('134', 'Quế Sơn', 'Huyện', '9'),
('135', 'Tam Kỳ', 'Thành phố', '9'),
('136', 'Tây Giang', 'Huyện', '9'),
('137', 'Thăng Bình', 'Huyện', '9'),
('138', 'Tiên Phước', 'Huyện', '9'),
('139', 'Bà Rịa', 'Thị xã', '10'),
('14', 'Quận 2', '', '1'),
('140', 'Châu Đức', 'Huyện', '10'),
('141', 'Côn Đảo', 'Huyện', '10'),
('142', 'Đất Đỏ', 'Huyện', '10'),
('143', 'Long Điền', 'Huyện', '10'),
('144', 'Tân Thành', 'Huyện', '10'),
('145', 'Vũng Tàu', 'Thành phố', '10'),
('146', 'Xuyên Mộc', 'Huyện', '10'),
('147', 'Buôn Đôn', 'Huyện', '11'),
('148', 'Buôn Hồ', 'Thị xã', '11'),
('149', 'Buôn Ma Thuột', 'Thành phố', '11'),
('15', 'Quận 3', '', '1'),
('150', 'Cư Kuin', 'Huyện', '11'),
('151', 'Cư Mgar', 'Huyện', '11'),
('152', 'Ea HLeo', 'Huyện', '11'),
('153', 'Ea Kar', 'Huyện', '11'),
('154', 'Ea Súp', 'Huyện', '11'),
('155', 'Krông Ana', 'Huyện', '11'),
('156', 'Krông Bông', 'Huyện', '11'),
('157', 'Krông Buk', 'Huyện', '11'),
('158', 'Krông Năng', 'Huyện', '11'),
('159', 'Krông Pắc', 'Huyện', '11'),
('16', 'Quận 4', '', '1'),
('160', 'Lăk', 'Huyện', '11'),
('161', 'MĐrăk', 'Huyện', '11'),
('162', ' Thới Lai', 'Huyện', '12'),
('163', 'Bình Thủy', 'Quận', '12'),
('164', 'Cái Răng', 'Quận', '12'),
('165', 'Cờ Đỏ', 'Huyện', '12'),
('166', 'Ninh Kiều', 'Quận', '12'),
('167', 'Ô Môn', 'Quận', '12'),
('168', 'Phong Điền', 'Huyện', '12'),
('169', 'Thốt Nốt', 'Quận', '12'),
('17', 'Quận 5', '', '1'),
('170', 'Vĩnh Thạnh', 'Huyện', '12'),
('171', 'Bắc Bình', 'Huyện', '13'),
('172', 'Đảo Phú Quý', 'Huyện', '13'),
('173', 'Đức Linh', 'Huyện', '13'),
('174', 'Hàm Tân', 'Huyện', '13'),
('175', 'Hàm Thuận Bắc', 'Huyện', '13'),
('176', 'Hàm Thuận Nam', 'Huyện', '13'),
('177', 'La Gi', 'Thị xã', '13'),
('178', 'Phan Thiết', 'Thành phố', '13'),
('179', 'Tánh Linh', 'Huyện', '13'),
('18', 'Quận 6', '', '1'),
('180', 'Tuy Phong', 'Huyện', '13'),
('181', 'Bảo Lâm', 'Huyện', '14'),
('182', 'Bảo Lộc', 'Thành phố', '14'),
('183', 'Cát Tiên', 'Huyện', '14'),
('184', 'Đạ Huoai', 'Huyện', '14'),
('185', 'Đà Lạt', 'Thành phố', '14'),
('186', 'Đạ Tẻh', 'Huyện', '14'),
('187', 'Đam Rông', 'Huyện', '14'),
('188', 'Di Linh', 'Huyện', '14'),
('189', 'Đơn Dương', 'Huyện', '14'),
('19', 'Quận 7', '', '1'),
('190', 'Đức Trọng', 'Huyện', '14'),
('191', 'Lạc Dương', 'Huyện', '14'),
('192', 'Lâm Hà', 'Huyện', '14'),
('193', 'A Lưới', 'Huyện', '15'),
('194', 'Huế', 'Thành phố', '15'),
('195', 'Hương Thủy', 'Thị xã', '15'),
('196', 'Hương Trà', 'Huyện', '15'),
('197', 'Nam Đông', 'Huyện', '15'),
('198', 'Phong Điền', 'Huyện', '15'),
('199', 'Phú Lộc', 'Huyện', '15'),
('2', 'Bình Tân', 'Quận', '1'),
('20', 'Quận 8', '', '1'),
('200', 'Phú Vang', 'Huyện', '15'),
('201', 'Quảng Điền', 'Huyện', '15'),
('202', 'An Biên', 'Huyện', '16'),
('203', 'An Minh', 'Huyện', '16'),
('204', 'Châu Thành', 'Huyện', '16'),
('205', 'Giang Thành', 'Huyện', '16'),
('206', 'Giồng Riềng', 'Huyện', '16'),
('207', 'Gò Quao', 'Huyện', '16'),
('208', 'Hà Tiên', 'Thị xã', '16'),
('209', 'Hòn Đất', 'Huyện', '16'),
('21', 'Quận 9', '', '1'),
('210', 'Kiên Hải', 'Huyện', '16'),
('211', 'Kiên Lương', 'Huyện', '16'),
('212', 'Phú Quốc', 'Huyện', '16'),
('213', 'Rạch Giá', 'Thành phố', '16'),
('214', 'Tân Hiệp', 'Huyện', '16'),
('215', 'U minh Thượng', 'Huyện', '16'),
('216', 'Vĩnh Thuận', 'Huyện', '16'),
('217', 'Bắc Ninh', 'Thành phố', '17'),
('218', 'Gia Bình', 'Huyện', '17'),
('219', 'Lương Tài', 'Huyện', '17'),
('22', 'Tân Bình', 'Quận', '1'),
('220', 'Quế Võ', 'Huyện', '17'),
('221', 'Thuận Thành', 'Huyện', '17'),
('222', 'Tiên Du', 'Huyện', '17'),
('223', 'Từ Sơn', 'Thị xã', '17'),
('224', 'Yên Phong', 'Huyện', '17'),
('225', 'Ba Chẽ', 'Huyện', '18'),
('226', 'Bình Liêu', 'Huyện', '18'),
('227', 'Cẩm Phả', 'Thành phố', '18'),
('228', 'Cô Tô', 'Huyện', '18'),
('229', 'Đầm Hà', 'Huyện', '18'),
('23', 'Tân Phú', 'Quận', '1'),
('230', 'Đông Triều', 'Huyện', '18'),
('231', 'Hạ Long', 'Thành phố', '18'),
('232', 'Hải Hà', 'Huyện', '18'),
('233', 'Hoành Bồ', 'Huyện', '18'),
('234', 'Móng Cái', 'Thành phố', '18'),
('235', 'Quảng Yên', 'Huyện', '18'),
('236', 'Tiên Yên', 'Huyện', '18'),
('237', 'Uông Bí', 'Thị xã', '18'),
('238', 'Vân Đồn', 'Huyện', '18'),
('239', 'Bá Thước', 'Huyện', '19'),
('24', 'Thủ Đức', 'Quận', '1'),
('240', 'Bỉm Sơn', 'Thị xã', '19'),
('241', 'Cẩm Thủy', 'Huyện', '19'),
('242', 'Đông Sơn', 'Huyện', '19'),
('243', 'Hà Trung', 'Huyện', '19'),
('244', 'Hậu Lộc', 'Huyện', '19'),
('245', 'Hoằng Hóa', 'Huyện', '19'),
('246', 'Lang Chánh', 'Huyện', '19'),
('247', 'Mường Lát', 'Huyện', '19'),
('248', 'Nga Sơn', 'Huyện', '19'),
('249', 'Ngọc Lặc', 'Huyện', '19'),
('25', 'Ba Đình', 'Quận', '2'),
('250', 'Như Thanh', 'Huyện', '19'),
('251', 'Như Xuân', 'Huyện', '19'),
('252', 'Nông Cống', 'Huyện', '19'),
('253', 'Quan Hóa', 'Huyện', '19'),
('254', 'Quan Sơn', 'Huyện', '19'),
('255', 'Quảng Xương', 'Huyện', '19'),
('256', 'Sầm Sơn', 'Thị xã', '19'),
('257', 'Thạch Thành', 'Huyện', '19'),
('258', 'Thanh Hóa', 'Thành phố', '19'),
('259', 'Thiệu Hóa', 'Huyện', '19'),
('26', 'Ba Vì', 'Huyện', '2'),
('260', 'Thọ Xuân', 'Huyện', '19'),
('261', 'Thường Xuân', 'Huyện', '19'),
('262', 'Tĩnh Gia', 'Huyện', '19'),
('263', 'Triệu Sơn', 'Huyện', '19'),
('264', 'Vĩnh Lộc', 'Huyện', '19'),
('265', 'Yên Định', 'Huyện', '19'),
('266', 'Anh Sơn', 'Huyện', '20'),
('267', 'Con Cuông', 'Huyện', '20'),
('268', 'Cửa Lò', 'Thị xã', '20'),
('269', 'Diễn Châu', 'Huyện', '20'),
('27', 'Bắc Từ Liêm', 'Quận', '2'),
('270', 'Đô Lương', 'Huyện', '20'),
('271', 'Hoàng Mai', 'Thị xã', '20'),
('272', 'Hưng Nguyên', 'Huyện', '20'),
('273', 'Kỳ Sơn', 'Huyện', '20'),
('274', 'Nam Đàn', 'Huyện', '20'),
('275', 'Nghi Lộc', 'Huyện', '20'),
('276', 'Nghĩa Đàn', 'Huyện', '20'),
('277', 'Quế Phong', 'Huyện', '20'),
('278', 'Quỳ Châu', 'Huyện', '20'),
('279', 'Quỳ Hợp', 'Huyện', '20'),
('28', 'Cầu Giấy', 'Quận', '2'),
('280', 'Quỳnh Lưu', 'Huyện', '20'),
('281', 'Tân Kỳ', 'Huyện', '20'),
('282', 'Thái Hòa', 'Thị xã', '20'),
('283', 'Thanh Chương', 'Huyện', '20'),
('284', 'Tương Dương', 'Huyện', '20'),
('285', 'Vinh', 'Thành phố', '20'),
('286', 'Yên Thành', 'Huyện', '20'),
('287', 'Bình Giang', 'Huyện', '21'),
('288', 'Cẩm Giàng', 'Huyện', '21'),
('289', 'Chí Linh', 'Thị xã', '21'),
('29', 'Chương Mỹ', 'Huyện', '2'),
('290', 'Gia Lộc', 'Huyện', '21'),
('291', 'Hải Dương', 'Thành phố', '21'),
('292', 'Kim Thành', 'Huyện', '21'),
('293', 'Kinh Môn', 'Huyện', '21'),
('294', 'Nam Sách', 'Huyện', '21'),
('295', 'Ninh Giang', 'Huyện', '21'),
('296', 'Thanh Hà', 'Huyện', '21'),
('297', 'Thanh Miện', 'Huyện', '21'),
('298', 'Tứ Kỳ', 'Huyện', '21'),
('299', 'An Khê', 'Thị xã', '22'),
('3', 'Bình Thạnh', 'Quận', '1'),
('30', 'Đan Phượng', 'Huyện', '2'),
('300', 'AYun Pa', 'Thị xã', '22'),
('301', 'Chư Păh', 'Huyện', '22'),
('302', 'Chư Pưh', 'Huyện', '22'),
('303', 'Chư Sê', 'Huyện', '22'),
('304', 'ChưPRông', 'Huyện', '22'),
('305', 'Đăk Đoa', 'Huyện', '22'),
('306', 'Đăk Pơ', 'Huyện', '22'),
('307', 'Đức Cơ', 'Huyện', '22'),
('308', 'Ia Grai', 'Huyện', '22'),
('309', 'Ia Pa', 'Huyện', '22'),
('31', 'Đông Anh', 'Huyện', '2'),
('310', 'KBang', 'Huyện', '22'),
('311', 'Kông Chro', 'Huyện', '22'),
('312', 'Krông Pa', 'Huyện', '22'),
('313', 'Mang Yang', 'Huyện', '22'),
('314', 'Phú Thiện', 'Huyện', '22'),
('315', 'Plei Ku', 'Thành phố', '22'),
('316', 'Bình Long', 'Thị xã', '23'),
('317', 'Bù Đăng', 'Huyện', '23'),
('318', 'Bù Đốp', 'Huyện', '23'),
('319', 'Bù Gia Mập', 'Huyện', '23'),
('32', 'Đống Đa', 'Quận', '2'),
('320', 'Chơn Thành', 'Huyện', '23'),
('321', 'Đồng Phú', 'Huyện', '23'),
('322', 'Đồng Xoài', 'Thị xã', '23'),
('323', 'Hớn Quản', 'Huyện', '23'),
('324', 'Lộc Ninh', 'Huyện', '23'),
('325', 'Phú Riềng', 'Huyện', '23'),
('326', 'Phước Long', 'Thị xã', '23'),
('327', 'Ân Thi', 'Huyện', '24'),
('328', 'Hưng Yên', 'Thành phố', '24'),
('329', 'Khoái Châu', 'Huyện', '24'),
('33', 'Gia Lâm', 'Huyện', '2'),
('330', 'Kim Động', 'Huyện', '24'),
('331', 'Mỹ Hào', 'Huyện', '24'),
('332', 'Phù Cừ', 'Huyện', '24'),
('333', 'Tiên Lữ', 'Huyện', '24'),
('334', 'Văn Giang', 'Huyện', '24'),
('335', 'Văn Lâm', 'Huyện', '24'),
('336', 'Yên Mỹ', 'Huyện', '24'),
('337', 'An Lão', 'Huyện', '25'),
('338', 'An Nhơn', 'Huyện', '25'),
('339', 'Hoài Ân', 'Huyện', '25'),
('34', 'Hà Đông', 'Quận', '2'),
('340', 'Hoài Nhơn', 'Huyện', '25'),
('341', 'Phù Cát', 'Huyện', '25'),
('342', 'Phù Mỹ', 'Huyện', '25'),
('343', 'Quy Nhơn', 'Thành phố', '25'),
('344', 'Tây Sơn', 'Huyện', '25'),
('345', 'Tuy Phước', 'Huyện', '25'),
('346', 'Vân Canh', 'Huyện', '25'),
('347', 'Vĩnh Thạnh', 'Huyện', '25'),
('348', 'Cái Bè', 'Huyện', '26'),
('349', 'Cai Lậy', 'Thị xã', '26'),
('35', 'Hai Bà Trưng', 'Quận', '2'),
('350', 'Châu Thành', 'Huyện', '26'),
('351', 'Chợ Gạo', 'Huyện', '26'),
('352', 'Gò Công', 'Thị xã', '26'),
('353', 'Gò Công Đông', 'Huyện', '26'),
('354', 'Gò Công Tây', 'Huyện', '26'),
('355', 'Huyện Cai Lậy', 'Huyện', '26'),
('356', 'Mỹ Tho', 'Thành phố', '26'),
('357', 'Tân Phú Đông', 'Huyện', '26'),
('358', 'Tân Phước', 'Huyện', '26'),
('359', 'Đông Hưng', 'Huyện', '27'),
('36', 'Hoài Đức', 'Huyện', '2'),
('360', 'Hưng Hà', 'Huyện', '27'),
('361', 'Kiến Xương', 'Huyện', '27'),
('362', 'Quỳnh Phụ', 'Huyện', '27'),
('363', 'Thái Bình', 'Thành phố', '27'),
('364', 'Thái Thuỵ', 'Huyện', '27'),
('365', 'Tiền Hải', 'Huyện', '27'),
('366', 'Vũ Thư', 'Huyện', '27'),
('367', 'Bắc Giang', 'Thành phố', '28'),
('368', 'Hiệp Hòa', 'Huyện', '28'),
('369', 'Lạng Giang', 'Huyện', '28'),
('37', 'Hoàn Kiếm', 'Quận', '2'),
('370', 'Lục Nam', 'Huyện', '28'),
('371', 'Lục Ngạn', 'Huyện', '28'),
('372', 'Sơn Động', 'Huyện', '28'),
('373', 'Tân Yên', 'Huyện', '28'),
('374', 'Việt Yên', 'Huyện', '28'),
('375', 'Yên Dũng', 'Huyện', '28'),
('376', 'Yên Thế', 'Huyện', '28'),
('377', 'Cao Phong', 'Huyện', '29'),
('378', 'Đà Bắc', 'Huyện', '29'),
('379', 'Hòa Bình', 'Thành phố', '29'),
('38', 'Hoàng Mai', 'Quận', '2'),
('380', 'Kim Bôi', 'Huyện', '29'),
('381', 'Kỳ Sơn', 'Huyện', '29'),
('382', 'Lạc Sơn', 'Huyện', '29'),
('383', 'Lạc Thủy', 'Huyện', '29'),
('384', 'Lương Sơn', 'Huyện', '29'),
('385', 'Mai Châu', 'Huyện', '29'),
('386', 'Tân Lạc', 'Huyện', '29'),
('387', 'Yên Thủy', 'Huyện', '29'),
('388', 'An Phú', 'Huyện', '30'),
('389', 'Châu Đốc', 'Thị xã', '30'),
('39', 'Long Biên', 'Quận', '2'),
('390', 'Châu Phú', 'Huyện', '30'),
('391', 'Châu Thành', 'Huyện', '30'),
('392', 'Chợ Mới', 'Huyện', '30'),
('393', 'Long Xuyên', 'Thành phố', '30'),
('394', 'Phú Tân', 'Huyện', '30'),
('395', 'Tân Châu', 'Thị xã', '30'),
('396', 'Thoại Sơn', 'Huyện', '30'),
('397', 'Tịnh Biên', 'Huyện', '30'),
('398', 'Tri Tôn', 'Huyện', '30'),
('399', 'Bình Xuyên', 'Huyện', '31'),
('4', 'Cần Giờ', 'Huyện', '1'),
('40', 'Mê Linh', 'Huyện', '2'),
('400', 'Lập Thạch', 'Huyện', '31'),
('401', 'Phúc Yên', 'Thị xã', '31'),
('402', 'Sông Lô', 'Huyện', '31'),
('403', 'Tam Đảo', 'Huyện', '31'),
('404', 'Tam Dương', 'Huyện', '31'),
('405', 'Vĩnh Tường', 'Huyện', '31'),
('406', 'Vĩnh Yên', 'Thành phố', '31'),
('407', 'Yên Lạc', 'Huyện', '31'),
('408', 'Bến Cầu', 'Huyện', '32'),
('409', 'Châu Thành', 'Huyện', '32'),
('41', 'Mỹ Đức', 'Huyện', '2'),
('410', 'Dương Minh Châu', 'Huyện', '32'),
('411', 'Gò Dầu', 'Huyện', '32'),
('412', 'Hòa Thành', 'Huyện', '32'),
('413', 'Tân Biên', 'Huyện', '32'),
('414', 'Tân Châu', 'Huyện', '32'),
('415', 'Tây Ninh', 'Thị xã', '32'),
('416', 'Trảng Bàng', 'Huyện', '32'),
('417', 'Đại Từ', 'Huyện', '33'),
('418', 'Định Hóa', 'Huyện', '33'),
('419', 'Đồng Hỷ', 'Huyện', '33'),
('42', 'Nam Từ Liêm', 'Quận', '2'),
('420', 'Phổ Yên', 'Huyện', '33'),
('421', 'Phú Bình', 'Huyện', '33'),
('422', 'Phú Lương', 'Huyện', '33'),
('423', 'Sông Công', 'Thị xã', '33'),
('424', 'Thái Nguyên', 'Thành phố', '33'),
('425', 'Võ Nhai', 'Huyện', '33'),
('426', 'Bắc Hà', 'Huyện', '34'),
('427', 'Bảo Thắng', 'Huyện', '34'),
('428', 'Bảo Yên', 'Huyện', '34'),
('429', 'Bát Xát', 'Huyện', '34'),
('43', 'Phú Xuyên', 'Huyện', '2'),
('430', 'Lào Cai', 'Thành phố', '34'),
('431', 'Mường Khương', 'Huyện', '34'),
('432', 'Sa Pa', 'Huyện', '34'),
('433', 'Văn Bàn', 'Huyện', '34'),
('434', 'Xi Ma Cai', 'Huyện', '34'),
('435', 'Giao Thủy', 'Huyện', '35'),
('436', 'Hải Hậu', 'Huyện', '35'),
('437', 'Mỹ Lộc', 'Huyện', '35'),
('438', 'Nam Định', 'Thành phố', '35'),
('439', 'Nam Trực', 'Huyện', '35'),
('44', 'Phúc Thọ', 'Huyện', '2'),
('440', 'Nghĩa Hưng', 'Huyện', '35'),
('441', 'Trực Ninh', 'Huyện', '35'),
('442', 'Vụ Bản', 'Huyện', '35'),
('443', 'Xuân Trường', 'Huyện', '35'),
('444', 'Ý Yên', 'Huyện', '35'),
('445', 'Ba Tơ', 'Huyện', '36'),
('446', 'Bình Sơn', 'Huyện', '36'),
('447', 'Đức Phổ', 'Huyện', '36'),
('448', 'Lý Sơn', 'Huyện', '36'),
('449', 'Minh Long', 'Huyện', '36'),
('45', 'Quốc Oai', 'Huyện', '2'),
('450', 'Mộ Đức', 'Huyện', '36'),
('451', 'Nghĩa Hành', 'Huyện', '36'),
('452', 'Quảng Ngãi', 'Thành phố', '36'),
('453', 'Sơn Hà', 'Huyện', '36'),
('454', 'Sơn Tây', 'Huyện', '36'),
('455', 'Sơn Tịnh', 'Huyện', '36'),
('456', 'Tây Trà', 'Huyện', '36'),
('457', 'Trà Bồng', 'Huyện', '36'),
('458', 'Tư Nghĩa', 'Huyện', '36'),
('459', 'Ba Tri', 'Huyện', '37'),
('46', 'Sóc Sơn', 'Huyện', '2'),
('460', 'Bến Tre', 'Thành phố', '37'),
('461', 'Bình Đại', 'Huyện', '37'),
('462', 'Châu Thành', 'Huyện', '37'),
('463', 'Chợ Lách', 'Huyện', '37'),
('464', 'Giồng Trôm', 'Huyện', '37'),
('465', 'Mỏ Cày Bắc', 'Huyện', '37'),
('466', 'Mỏ Cày Nam', 'Huyện', '37'),
('467', 'Thạnh Phú', 'Huyện', '37'),
('468', 'Cư Jút', 'Huyện', '38'),
('469', 'Dăk GLong', 'Huyện', '38'),
('47', 'Sơn Tây', 'Thị xã', '2'),
('470', 'Dăk Mil', 'Huyện', '38'),
('471', 'Dăk RLấp', 'Huyện', '38'),
('472', 'Dăk Song', 'Huyện', '38'),
('473', 'Gia Nghĩa', 'Thị xã', '38'),
('474', 'Krông Nô', 'Huyện', '38'),
('475', 'Tuy Đức', 'Huyện', '38'),
('476', 'Cà Mau', 'Thành phố', '39'),
('477', 'Cái Nước', 'Huyện', '39'),
('478', 'Đầm Dơi', 'Huyện', '39'),
('479', 'Năm Căn', 'Huyện', '39'),
('48', 'Tây Hồ', 'Quận', '2'),
('480', 'Ngọc Hiển', 'Huyện', '39'),
('481', 'Phú Tân', 'Huyện', '39'),
('482', 'Thới Bình', 'Huyện', '39'),
('483', 'Trần Văn Thời', 'Huyện', '39'),
('484', 'U Minh', 'Huyện', '39'),
('485', 'Bình Minh', 'Huyện', '40'),
('486', 'Bình Tân', 'Quận', '40'),
('487', 'Long Hồ', 'Huyện', '40'),
('488', 'Mang Thít', 'Huyện', '40'),
('489', 'Tam Bình', 'Huyện', '40'),
('49', 'Thạch Thất', 'Huyện', '2'),
('490', 'Trà Ôn', 'Huyện', '40'),
('491', 'Vĩnh Long', 'Thành phố', '40'),
('492', 'Vũng Liêm', 'Huyện', '40'),
('493', 'Gia Viễn', 'Huyện', '41'),
('494', 'Hoa Lư', 'Huyện', '41'),
('495', 'Kim Sơn', 'Huyện', '41'),
('496', 'Nho Quan', 'Huyện', '41'),
('497', 'Ninh Bình', 'Thành phố', '41'),
('498', 'Tam Điệp', 'Thị xã', '41'),
('499', 'Yên Khánh', 'Huyện', '41'),
('5', 'Củ Chi', 'Huyện', '1'),
('50', 'Thanh Oai', 'Huyện', '2'),
('500', 'Yên Mô', 'Huyện', '41'),
('501', 'Cẩm Khê', 'Huyện', '42'),
('502', 'Đoan Hùng', 'Huyện', '42'),
('503', 'Hạ Hòa', 'Huyện', '42'),
('504', 'Lâm Thao', 'Huyện', '42'),
('505', 'Phù Ninh', 'Huyện', '42'),
('506', 'Phú Thọ', 'Thị xã', '42'),
('507', 'Tam Nông', 'Huyện', '42'),
('508', 'Tân Sơn', 'Huyện', '42'),
('509', 'Thanh Ba', 'Huyện', '42'),
('51', 'Thanh Trì', 'Huyện', '2'),
('510', 'Thanh Sơn', 'Huyện', '42'),
('511', 'Thanh Thủy', 'Huyện', '42'),
('512', 'Việt Trì', 'Thành phố', '42'),
('513', 'Yên Lập', 'Huyện', '42'),
('514', 'Bác Ái', 'Huyện', '43'),
('515', 'Ninh Hải', 'Huyện', '43'),
('516', 'Ninh Phước', 'Huyện', '43'),
('517', 'Ninh Sơn', 'Huyện', '43'),
('518', 'Phan Rang - Tháp Chàm', 'Thành phố', '43'),
('519', 'Thuận Bắc', 'Huyện', '43'),
('52', 'Thanh Xuân', 'Quận', '2'),
('520', 'Thuận Nam', 'Huyện', '43'),
('521', 'Đông Hòa', 'Huyện', '44'),
('522', 'Đồng Xuân', 'Huyện', '44'),
('523', 'Phú Hòa', 'Huyện', '44'),
('524', 'Sơn Hòa', 'Huyện', '44'),
('525', 'Sông Cầu', 'Thị xã', '44'),
('526', 'Sông Hinh', 'Huyện', '44'),
('527', 'Tây Hòa', 'Huyện', '44'),
('528', 'Tuy An', 'Huyện', '44'),
('529', 'Tuy Hòa', 'Thành phố', '44'),
('53', 'Thường Tín', 'Huyện', '2'),
('530', 'Bình Lục', 'Huyện', '45'),
('531', 'Duy Tiên', 'Huyện', '45'),
('532', 'Kim Bảng', 'Huyện', '45'),
('533', 'Lý Nhân', 'Huyện', '45'),
('534', 'Phủ Lý', 'Thành phố', '45'),
('535', 'Thanh Liêm', 'Huyện', '45'),
('536', 'Cẩm Xuyên', 'Huyện', '46'),
('537', 'Can Lộc', 'Huyện', '46'),
('538', 'Đức Thọ', 'Huyện', '46'),
('539', 'Hà Tĩnh', 'Thành phố', '46'),
('54', 'Ứng Hòa', 'Huyện', '2'),
('540', 'Hồng Lĩnh', 'Thị xã', '46'),
('541', 'Hương Khê', 'Huyện', '46'),
('542', 'Hương Sơn', 'Huyện', '46'),
('543', 'Kỳ Anh', 'Huyện', '46'),
('544', 'Lộc Hà', 'Huyện', '46'),
('545', 'Nghi Xuân', 'Huyện', '46'),
('546', 'Thạch Hà', 'Huyện', '46'),
('547', 'Vũ Quang', 'Huyện', '46'),
('548', 'Cao Lãnh', 'Thành phố', '47'),
('549', 'Châu Thành', 'Huyện', '47'),
('55', 'Cẩm Lệ', 'Quận', '3'),
('550', 'Hồng Ngự', 'Thị xã', '47'),
('551', 'Huyện Cao Lãnh', 'Huyện', '47'),
('552', 'Huyện Hồng Ngự', 'Huyện', '47'),
('553', 'Lai Vung', 'Huyện', '47'),
('554', 'Lấp Vò', 'Huyện', '47'),
('555', 'Sa Đéc', 'Thị xã', '47'),
('556', 'Tam Nông', 'Huyện', '47'),
('557', 'Tân Hồng', 'Huyện', '47'),
('558', 'Thanh Bình', 'Huyện', '47'),
('559', 'Tháp Mười', 'Huyện', '47'),
('56', 'Hải Châu', 'Quận', '3'),
('560', 'Châu Thành', 'Huyện', '48'),
('561', 'Cù Lao Dung', 'Huyện', '48'),
('562', 'Kế Sách', 'Huyện', '48'),
('563', 'Long Phú', 'Huyện', '48'),
('564', 'Mỹ Tú', 'Huyện', '48'),
('565', 'Mỹ Xuyên', 'Huyện', '48'),
('566', 'Ngã Năm', 'Huyện', '48'),
('567', 'Sóc Trăng', 'Thành phố', '48'),
('568', 'Thạnh Trị', 'Huyện', '48'),
('569', 'Trần Đề', 'Huyện', '48'),
('57', 'Hòa Vang', 'Huyện', '3'),
('570', 'Vĩnh Châu', 'Huyện', '48'),
('571', 'Đăk Glei', 'Huyện', '49'),
('572', 'Đăk Hà', 'Huyện', '49'),
('573', 'Đăk Tô', 'Huyện', '49'),
('574', 'Ia HDrai', 'Huyện', '49'),
('575', 'Kon Plông', 'Huyện', '49'),
('576', 'Kon Rẫy', 'Huyện', '49'),
('577', 'KonTum', 'Thành phố', '49'),
('578', 'Ngọc Hồi', 'Huyện', '49'),
('579', 'Sa Thầy', 'Huyện', '49'),
('58', 'Hoàng Sa', 'Huyện', '3'),
('580', 'Tu Mơ Rông', 'Huyện', '49'),
('581', 'Ba Đồn', 'Thị xã', '50'),
('582', 'Bố Trạch', 'Huyện', '50'),
('583', 'Đồng Hới', 'Thành phố', '50'),
('584', 'Lệ Thủy', 'Huyện', '50'),
('585', 'Minh Hóa', 'Huyện', '50'),
('586', 'Quảng Ninh', 'Huyện', '50'),
('587', 'Quảng Trạch', 'Huyện', '50'),
('588', 'Tuyên Hóa', 'Huyện', '50'),
('589', 'Cam Lộ', 'Huyện', '51'),
('59', 'Liên Chiểu', 'Quận', '3'),
('590', 'Đa Krông', 'Huyện', '51'),
('591', 'Đảo Cồn cỏ', 'Huyện', '51'),
('592', 'Đông Hà', 'Thành phố', '51'),
('593', 'Gio Linh', 'Huyện', '51'),
('594', 'Hải Lăng', 'Huyện', '51'),
('595', 'Hướng Hóa', 'Huyện', '51'),
('596', 'Quảng Trị', 'Thị xã', '51'),
('597', 'Triệu Phong', 'Huyện', '51'),
('598', 'Vĩnh Linh', 'Huyện', '51'),
('599', 'Càng Long', 'Huyện', '52'),
('6', 'Gò Vấp', 'Quận', '1'),
('60', 'Ngũ Hành Sơn', 'Quận', '3'),
('600', 'Cầu Kè', 'Huyện', '52'),
('601', 'Cầu Ngang', 'Huyện', '52'),
('602', 'Châu Thành', 'Huyện', '52'),
('603', 'Duyên Hải', 'Huyện', '52'),
('604', 'Tiểu Cần', 'Huyện', '52'),
('605', 'Trà Cú', 'Huyện', '52'),
('606', 'Trà Vinh', 'Thành phố', '52'),
('607', 'Châu Thành', 'Huyện', '53'),
('608', 'Châu Thành A', 'Huyện', '53'),
('609', 'Long Mỹ', 'Huyện', '53'),
('61', 'Sơn Trà', 'Quận', '3'),
('610', 'Ngã Bảy', 'Thị xã', '53'),
('611', 'Phụng Hiệp', 'Huyện', '53'),
('612', 'Vị Thanh', 'Thành phố', '53'),
('613', 'Vị Thủy', 'Huyện', '53'),
('614', 'Bắc Yên', 'Huyện', '54'),
('615', 'Mai Sơn', 'Huyện', '54'),
('616', 'Mộc Châu', 'Huyện', '54'),
('617', 'Mường La', 'Huyện', '54'),
('618', 'Phù Yên', 'Huyện', '54'),
('619', 'Quỳnh Nhai', 'Huyện', '54'),
('62', 'Thanh Khê', 'Quận', '3'),
('620', 'Sơn La', 'Thành phố', '54'),
('621', 'Sông Mã', 'Huyện', '54'),
('622', 'Sốp Cộp', 'Huyện', '54'),
('623', 'Thuận Châu', 'Huyện', '54'),
('624', 'Vân Hồ', 'Huyện', '54'),
('625', 'Yên Châu', 'Huyện', '54'),
('626', 'Bạc Liêu', 'Thành phố', '55'),
('627', 'Đông Hải', 'Huyện', '55'),
('628', 'Giá Rai', 'Huyện', '55'),
('629', 'Hòa Bình', 'Huyện', '55'),
('63', 'Bàu Bàng', 'Huyện', '4'),
('630', 'Hồng Dân', 'Huyện', '55'),
('631', 'Phước Long', 'Huyện', '55'),
('632', 'Vĩnh Lợi', 'Huyện', '55'),
('633', 'Lục Yên', 'Huyện', '56'),
('634', 'Mù Cang Chải', 'Huyện', '56'),
('635', 'Nghĩa Lộ', 'Thị xã', '56'),
('636', 'Trạm Tấu', 'Huyện', '56'),
('637', 'Trấn Yên', 'Huyện', '56'),
('638', 'Văn Chấn', 'Huyện', '56'),
('639', 'Văn Yên', 'Huyện', '56'),
('64', 'Bến Cát', 'Thị xã', '4'),
('640', 'Yên Bái', 'Thành phố', '56'),
('641', 'Yên Bình', 'Huyện', '56'),
('642', 'Chiêm Hóa', 'Huyện', '57'),
('643', 'Hàm Yên', 'Huyện', '57'),
('644', 'Lâm Bình', 'Huyện', '57'),
('645', 'Na Hang', 'Huyện', '57'),
('646', 'Sơn Dương', 'Huyện', '57'),
('647', 'Tuyên Quang', 'Thành phố', '57'),
('648', 'Yên Sơn', 'Huyện', '57'),
('649', 'Điện Biên', 'Huyện', '58'),
('65', 'Dầu Tiếng', 'Huyện', '4'),
('650', 'Điện Biên Đông', 'Huyện', '58'),
('651', 'Điện Biên Phủ', 'Thành phố', '58'),
('652', 'Mường Ảng', 'Huyện', '58'),
('653', 'Mường Chà', 'Huyện', '58'),
('654', 'Mường Lay', 'Thị xã', '58'),
('655', 'Mường Nhé', 'Huyện', '58'),
('656', 'Nậm Pồ', 'Huyện', '58'),
('657', 'Tủa Chùa', 'Huyện', '58'),
('658', 'Tuần Giáo', 'Huyện', '58'),
('659', 'Lai Châu', 'Thị xã', '59'),
('66', 'Dĩ An', 'Thị xã', '4'),
('660', 'Mường Tè', 'Huyện', '59'),
('661', 'Nậm Nhùn', 'Huyện', '59'),
('662', 'Phong Thổ', 'Huyện', '59'),
('663', 'Sìn Hồ', 'Huyện', '59'),
('664', 'Tam Đường', 'Huyện', '59'),
('665', 'Tân Uyên', 'Huyện', '59'),
('666', 'Than Uyên', 'Huyện', '59'),
('667', 'Bắc Sơn', 'Huyện', '60'),
('668', 'Bình Gia', 'Huyện', '60'),
('669', 'Cao Lộc', 'Huyện', '60'),
('67', 'Phú Giáo', 'Huyện', '4'),
('670', 'Chi Lăng', 'Huyện', '60'),
('671', 'Đình Lập', 'Huyện', '60'),
('672', 'Hữu Lũng', 'Huyện', '60'),
('673', 'Lạng Sơn', 'Thành phố', '60'),
('674', 'Lộc Bình', 'Huyện', '60'),
('675', 'Tràng Định', 'Huyện', '60'),
('676', 'Văn Lãng', 'Huyện', '60'),
('677', 'Văn Quan', 'Huyện', '60'),
('678', 'Bắc Mê', 'Huyện', '61'),
('679', 'Bắc Quang', 'Huyện', '61'),
('68', 'Tân Uyên', 'Huyện', '4'),
('680', 'Đồng Văn', 'Huyện', '61'),
('681', 'Hà Giang', 'Thành phố', '61'),
('682', 'Hoàng Su Phì', 'Huyện', '61'),
('683', 'Mèo Vạc', 'Huyện', '61'),
('684', 'Quản Bạ', 'Huyện', '61'),
('685', 'Quang Bình', 'Huyện', '61'),
('686', 'Vị Xuyên', 'Huyện', '61'),
('687', 'Xín Mần', 'Huyện', '61'),
('688', 'Yên Minh', 'Huyện', '61'),
('689', 'Ba Bể', 'Huyện', '62'),
('69', 'Thủ Dầu Một', 'Thị xã', '4'),
('690', 'Bắc Kạn', 'Thị xã', '62'),
('691', 'Bạch Thông', 'Huyện', '62'),
('692', 'Chợ Đồn', 'Huyện', '62'),
('693', 'Chợ Mới', 'Huyện', '62'),
('694', 'Na Rì', 'Huyện', '62'),
('695', 'Ngân Sơn', 'Huyện', '62'),
('696', 'Pác Nặm', 'Huyện', '62'),
('697', 'Bảo Lạc', 'Huyện', '63'),
('698', 'Bảo Lâm', 'Huyện', '63'),
('699', 'Cao Bằng', 'Thị xã', '63'),
('7', 'Hóc Môn', 'Huyện', '1'),
('70', 'Thuận An', 'Huyện', '4'),
('700', 'Hạ Lang', 'Huyện', '63'),
('701', 'Hà Quảng', 'Huyện', '63'),
('702', 'Hòa An', 'Huyện', '63'),
('703', 'Nguyên Bình', 'Huyện', '63'),
('704', 'Phục Hòa', 'Huyện', '63'),
('705', 'Quảng Uyên', 'Huyện', '63'),
('706', 'Thạch An', 'Huyện', '63'),
('707', 'Thông Nông', 'Huyện', '63'),
('708', 'Trà Lĩnh', 'Huyện', '63'),
('709', 'Trùng Khánh', 'Huyện', '63'),
('71', 'Biên Hòa', 'Thành phố', '5'),
('72', 'Cẩm Mỹ', 'Huyện', '5'),
('73', 'Định Quán', 'Huyện', '5'),
('74', 'Long Khánh', 'Thị xã', '5'),
('75', 'Long Thành', 'Huyện', '5'),
('76', 'Nhơn Trạch', 'Huyện', '5'),
('77', 'Tân Phú', 'Quận', '5'),
('78', 'Thống Nhất', 'Huyện', '5'),
('79', 'Trảng Bom', 'Huyện', '5'),
('8', 'Nhà Bè', 'Huyện', '1'),
('80', 'Vĩnh Cửu', 'Huyện', '5'),
('81', 'Xuân Lộc', 'Huyện', '5'),
('82', 'Cam Lâm', 'Huyện', '6'),
('83', 'Cam Ranh', 'Thành phố', '6'),
('84', 'Diên Khánh', 'Huyện', '6'),
('85', 'Khánh Sơn', 'Huyện', '6'),
('86', 'Khánh Vĩnh', 'Huyện', '6'),
('87', 'Nha Trang', 'Thành phố', '6'),
('88', 'Ninh Hòa', 'Thị xã', '6'),
('89', 'Trường Sa', 'Huyện', '6'),
('9', 'Phú Nhuận', 'Quận', '1'),
('90', 'Vạn Ninh', 'Huyện', '6'),
('91', 'An Dương', 'Huyện', '7'),
('92', 'An Lão', 'Huyện', '7'),
('93', 'Bạch Long Vĩ', 'Huyện', '7'),
('94', 'Cát Hải', 'Huyện', '7'),
('95', 'Đồ Sơn', 'Quận', '7'),
('96', 'Dương Kinh', 'Quận', '7'),
('97', 'Hải An', 'Quận', '7'),
('98', 'Hồng Bàng', 'Quận', '7'),
('99', 'Kiến An', 'Quận', '7');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `matk` int(2) NOT NULL,
  `tentk` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `matkhau` varchar(200) NOT NULL,
  `maquyen` tinyint(4) NOT NULL,
  `trangthai` tinyint(1) NOT NULL,
  `maxacnhan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`matk`, `tentk`, `email`, `matkhau`, `maquyen`, `trangthai`, `maxacnhan`) VALUES
(1, 'duongtienthang123456789', 'duongtienthang123456789@gmail.com',
'$2y$10$84QfanQx2mlrvJDMiY/j/Ox1LjmWtL40MFvobc5Xilue/j0.L.Tp2', 3, 1, 'ab6f936324a939ebb091a8f8e9728567'),
(2, 'huynt', 'huhuhaha1507@gmail.com', '$2y$10$84QfanQx2mlrvJDMiY/j/Ox1LjmWtL40MFvobc5Xilue/j0.L.Tp2', 3, 1,
'96e8a5df974e004f4ea343a9fb20d366'),

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thisinh`
--

CREATE TABLE `thisinh` (
  `mathisinh` varchar(20) NOT NULL,
  `tenthisinh` varchar(50) NOT NULL,
  `gioitinh` char(5) NOT NULL,
  `ngaysinh` date NOT NULL,
  `noisinh` char(10) NOT NULL,
  `dantoc` varchar(30) NOT NULL,
  `CMND` int(13) NOT NULL,
  `ngaycap` date NOT NULL,
  `noicap` varchar(100) NOT NULL,
  `mahuyen` char(10) NOT NULL,
  `xa` varchar(50) NOT NULL,
  `thon` varchar(150) NOT NULL,
  `matruong10` char(10) NOT NULL,
  `matruong11` char(10) NOT NULL,
  `matruong12` char(10) NOT NULL,
  `dienthoai` int(15) NOT NULL,
  `emailthisinh` varchar(50) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `namtotnghiep` smallint(6) NOT NULL,
  `khuvuc` char(10) NOT NULL,
  `doituong` tinyint(4) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinh`
--

CREATE TABLE `tinh` (
  `matinh` char(10) NOT NULL,
  `tentinh` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tinh`
--

INSERT INTO `tinh` (`matinh`, `tentinh`) VALUES
('1', 'Hồ Chí Minh'),
('10', 'Bà Rịa Vũng Tàu'),
('11', 'Đắk Lắk'),
('12', 'Cần Thơ'),
('13', 'Bình Thuận  '),
('14', 'Lâm Đồng'),
('15', 'Thừa Thiên Huế'),
('16', 'Kiên Giang'),
('17', 'Bắc Ninh'),
('18', 'Quảng Ninh'),
('19', 'Thanh Hóa'),
('2', 'Hà Nội'),
('20', 'Nghệ An'),
('21', 'Hải Dương'),
('22', 'Gia Lai'),
('23', 'Bình Phước'),
('24', 'Hưng Yên'),
('25', 'Bình Định'),
('26', 'Tiền Giang'),
('27', 'Thái Bình'),
('28', 'Bắc Giang'),
('29', 'Hòa Bình'),
('3', 'Đà Nẵng'),
('30', 'An Giang'),
('31', 'Vĩnh Phúc'),
('32', 'Tây Ninh'),
('33', 'Thái Nguyên'),
('34', 'Lào Cai'),
('35', 'Nam Định'),
('36', 'Quảng Ngãi'),
('37', 'Bến Tre'),
('38', 'Đắk Nông'),
('39', 'Cà Mau'),
('4', 'Bình Dương'),
('40', 'Vĩnh Long'),
('41', 'Ninh Bình'),
('42', 'Phú Thọ'),
('43', 'Ninh Thuận'),
('44', 'Phú Yên'),
('45', 'Hà Nam'),
('46', 'Hà Tĩnh'),
('47', 'Đồng Tháp'),
('48', 'Sóc Trăng'),
('49', 'Kon Tum'),
('5', 'Đồng Nai'),
('50', 'Quảng Bình'),
('51', 'Quảng Trị'),
('52', 'Trà Vinh'),
('53', 'Hậu Giang'),
('54', 'Sơn La'),
('55', 'Bạc Liêu'),
('56', 'Yên Bái'),
('57', 'Tuyên Quang'),
('58', 'Điện Biên'),
('59', 'Lai Châu'),
('6', 'Khánh Hòa'),
('60', 'Lạng Sơn'),
('61', 'Hà Giang'),
('62', 'Bắc Kạn'),
('63', 'Cao Bằng'),
('7', 'Hải Phòng'),
('8', 'Long An'),
('9', 'Quảng Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tohop`
--

CREATE TABLE `tohop` (
  `matohop` tinyint(4) NOT NULL,
  `tentohop` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tohop`
--

INSERT INTO `tohop` (`matohop`, `tentohop`) VALUES
(1, 'A00'),
(2, 'A01'),
(3, 'A02'),
(4, 'B00'),
(5, 'D01'),
(6, 'D07'),
(7, 'D08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truong`
--

CREATE TABLE `truong` (
  `matruong` char(10) NOT NULL,
  `tentruong` varchar(50) NOT NULL,
  `maquan` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `truong`
--

INSERT INTO `truong` (`matruong`, `tentruong`, `maquan`) VALUES
('25.1', 'THPT Nguyễn Trãi-Ba Đình', '25'),
('25.10', 'CĐ nghề Hùng Vương', '25'),
('25.11', 'CĐ nghề VIGLACERA', '25'),
('25.2', 'THPT Phan Đình Phùng', '25'),
('25.3', 'THPT Phạm Hồng Thái', '25'),
('25.4', 'TH,THC S &THPT Thực nghiệm Khoa học Giáo dục', '25'),
('25.5', 'THPT Đinh Tiên Hoàng-Ba Đình', '25'),
('25.6', 'THPT Hoàng Long', '25'),
('25.7', 'THPT Văn Lang', '25'),
('25.8', 'GDNN-GDTX quận Ba Đình', '25'),
('25.9', 'GDTX Ba Đình', '25'),
('35.1', 'THPT Đoàn Kết-Hai Bà Trưng', '35'),
('35.10', 'THPT Hòa Bình-La Trobe-Hà Nội', '35'),
('35.11', 'GDNN-GDTX quận Hai Bà Trưng', '35'),
('35.12', 'GDTX Hai Bà Trưng', '35'),
('35.13', 'CĐ nghề Bách Khoa Hà Nội', '35'),
('35.14', 'CĐ nghề KT công nghệ LOD -Phân hiệu HN', '35'),
('35.15', 'TC nghề Dân lập Công nghệ Thăng Long', '35'),
('35.2', 'THPT Thăng Long', '35'),
('35.3', 'THPT Trần Nhân Tông', '35'),
('35.4', 'THPT Đông Kinh', '35'),
('35.5', 'THPT Hoàng Diệu', '35'),
('35.6', 'THPT Hồng Hà', '35'),
('35.7', 'THPT Mai Hắc Đế', '35'),
('35.8', 'THCS&THPT Tạ Quang Bửu', '35'),
('35.9', 'TH,THC S &THPT Vinschool', '35'),
('37.1', 'THPT Trần Phú-Hoàn Kiếm', '37'),
('37.2', 'THPT Việt Đức', '37'),
('37.3', 'THPT Văn Hiến', '37'),
('37.4', 'GDNN-GDTX Nguyễn Văn Tố quận Hoàn Kiếm', '37'),
('37.5', 'GDTX Nguyễn Văn Tố', '37'),
('37.6', 'Cao đẳng Nghệ thuật Hà Nội', '37'),
('37.7', 'TC nghề đồng hồ - điện tử - tin học HN', '37');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anh`
--
ALTER TABLE `anh`
  ADD PRIMARY KEY (`maanh`),
  ADD KEY `anh_ibfk_1` (`mathisinh`);

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`mabv`),
  ADD KEY `baiviet_ibfk_1` (`matk`);

--
-- Chỉ mục cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD PRIMARY KEY (`macauhoi`),
  ADD KEY `cauhoi_ibfk_1` (`manganh`);

--
-- Chỉ mục cho bảng `cosodaotao`
--
ALTER TABLE `cosodaotao`
  ADD PRIMARY KEY (`macoso`);

--
-- Chỉ mục cho bảng `diemchuan`
--
ALTER TABLE `diemchuan`
  ADD PRIMARY KEY (`madiem`),
  ADD KEY `diemchuan_ibfk_1` (`manganh`);

--
-- Chỉ mục cho bảng `nganh`
--
ALTER TABLE `nganh`
  ADD PRIMARY KEY (`manganh`),
  ADD KEY `nganh_ibfk_1` (`macoso`);

--
-- Chỉ mục cho bảng `nganh_tohop`
--
ALTER TABLE `nganh_tohop`
  ADD KEY `matohop` (`matohop`),
  ADD KEY `manganh` (`manganh`);

--
-- Chỉ mục cho bảng `nguyenvong`
--
ALTER TABLE `nguyenvong`
  ADD PRIMARY KEY (`manguyenvong`),
  ADD KEY `nguyenvong_ibfk_1` (`maxettuyen`),
  ADD KEY `nguyenvong_ibfk_2` (`matohop`),
  ADD KEY `nguyenvong_ibfk_3` (`mathisinh`);

--
-- Chỉ mục cho bảng `quan`
--
ALTER TABLE `quan`
  ADD PRIMARY KEY (`maquan`),
  ADD KEY `matinh` (`matinh`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`matk`);

--
-- Chỉ mục cho bảng `thisinh`
--
ALTER TABLE `thisinh`
  ADD PRIMARY KEY (`mathisinh`),
  ADD KEY `thisinh_ibfk_1` (`noisinh`),
  ADD KEY `thisinh_ibfk_2` (`mahuyen`),
  ADD KEY `thisinh_ibfk_3` (`matruong10`),
  ADD KEY `thisinh_ibfk_5` (`matruong11`),
  ADD KEY `thisinh_ibfk_6` (`matruong12`);

--
-- Chỉ mục cho bảng `tinh`
--
ALTER TABLE `tinh`
  ADD PRIMARY KEY (`matinh`);

--
-- Chỉ mục cho bảng `tohop`
--
ALTER TABLE `tohop`
  ADD PRIMARY KEY (`matohop`);

--
-- Chỉ mục cho bảng `truong`
--
ALTER TABLE `truong`
  ADD PRIMARY KEY (`matruong`),
  ADD KEY `maquan` (`maquan`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `anh`
--
ALTER TABLE `anh`
  MODIFY `maanh` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `mabv` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  MODIFY `macauhoi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `diemchuan`
--
ALTER TABLE `diemchuan`
  MODIFY `madiem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `matk` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `anh`
--
ALTER TABLE `anh`
  ADD CONSTRAINT `anh_ibfk_1` FOREIGN KEY (`mathisinh`) REFERENCES `thisinh` (`mathisinh`);

--
-- Các ràng buộc cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `baiviet_ibfk_1` FOREIGN KEY (`matk`) REFERENCES `taikhoan` (`matk`);

--
-- Các ràng buộc cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD CONSTRAINT `cauhoi_ibfk_1` FOREIGN KEY (`manganh`) REFERENCES `nganh` (`manganh`);

--
-- Các ràng buộc cho bảng `diemchuan`
--
ALTER TABLE `diemchuan`
  ADD CONSTRAINT `diemchuan_ibfk_1` FOREIGN KEY (`manganh`) REFERENCES `nganh` (`manganh`);

--
-- Các ràng buộc cho bảng `nganh`
--
ALTER TABLE `nganh`
  ADD CONSTRAINT `nganh_ibfk_1` FOREIGN KEY (`macoso`) REFERENCES `cosodaotao` (`macoso`);

--
-- Các ràng buộc cho bảng `nganh_tohop`
--
ALTER TABLE `nganh_tohop`
  ADD CONSTRAINT `nganh_tohop_ibfk_1` FOREIGN KEY (`matohop`) REFERENCES `tohop` (`matohop`),
  ADD CONSTRAINT `nganh_tohop_ibfk_2` FOREIGN KEY (`manganh`) REFERENCES `nganh` (`manganh`);

--
-- Các ràng buộc cho bảng `nguyenvong`
--
ALTER TABLE `nguyenvong`
  ADD CONSTRAINT `nguyenvong_ibfk_1` FOREIGN KEY (`maxettuyen`) REFERENCES `nganh` (`manganh`),
  ADD CONSTRAINT `nguyenvong_ibfk_2` FOREIGN KEY (`matohop`) REFERENCES `tohop` (`matohop`),
  ADD CONSTRAINT `nguyenvong_ibfk_3` FOREIGN KEY (`mathisinh`) REFERENCES `thisinh` (`mathisinh`);

--
-- Các ràng buộc cho bảng `quan`
--
ALTER TABLE `quan`
  ADD CONSTRAINT `quan_ibfk_1` FOREIGN KEY (`matinh`) REFERENCES `tinh` (`matinh`);

--
-- Các ràng buộc cho bảng `thisinh`
--
ALTER TABLE `thisinh`
  ADD CONSTRAINT `thisinh_ibfk_1` FOREIGN KEY (`noisinh`) REFERENCES `tinh` (`matinh`),
  ADD CONSTRAINT `thisinh_ibfk_2` FOREIGN KEY (`mahuyen`) REFERENCES `quan` (`maquan`),
  ADD CONSTRAINT `thisinh_ibfk_3` FOREIGN KEY (`matruong10`) REFERENCES `truong` (`matruong`),
  ADD CONSTRAINT `thisinh_ibfk_4` FOREIGN KEY (`matruong11`) REFERENCES `truong` (`matruong`),
  ADD CONSTRAINT `thisinh_ibfk_5` FOREIGN KEY (`matruong11`) REFERENCES `truong` (`matruong`),
  ADD CONSTRAINT `thisinh_ibfk_6` FOREIGN KEY (`matruong12`) REFERENCES `truong` (`matruong`);

--
-- Các ràng buộc cho bảng `truong`
--
ALTER TABLE `truong`
  ADD CONSTRAINT `truong_ibfk_1` FOREIGN KEY (`maquan`) REFERENCES `quan` (`maquan`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
