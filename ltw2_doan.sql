-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 12, 2019 lúc 08:03 AM
-- Phiên bản máy phục vụ: 5.7.21
-- Phiên bản PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ltw2_doan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_ID` int(11) NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(100) DEFAULT NULL,
  `manu_img` varchar(150) NOT NULL,
  PRIMARY KEY (`manu_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_ID`, `manu_name`, `manu_img`) VALUES
(1, 'Huawei', 'huawei.png'),
(2, 'Samsung', 'samsung.png'),
(3, 'Xiaomi', 'xiaomi.png'),
(4, 'Sony', 'sony.jpg'),
(5, 'Apple', 'apple.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `manu_ID` int(11) NOT NULL,
  `type_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`ID`, `name`, `price`, `image`, `description`, `manu_ID`, `type_ID`) VALUES
(1, 'Huawei nova 3i', 6990000, '1.jpg', 'Là chiếc điện thoại smart sở hữu gam màu nhẹ nhàng, Huawei Nova 3i Trắng đem lại sự thanh lịch, quý phải so với phiên bản xanh tím độc đáo hay sắc đen sang trọng\r\nNâng cấp tới 2 cụm camera kép trước và sau\r\nMàn hình \"tai thỏ\" tỉ lệ mới thời thượng hơn\r\nMạnh mẽ hơn với chip Kirin 710\r\nTích hợp mở khóa khuôn mặt lẫn vân tay ấn tượng\r\nThời lượng pin lâu hơn nhờ khả năng tiết kiệm điện từ chip\r\n', 1, 1),
(13, 'Điện thoại Samsung Galaxy S9+ 128GB', 24490000, '2.jpg', 'Samsung Galaxy S9 Plus 128Gb, siêu phẩm smartphone hàng đầu trong thế giới Android đã ra mắt với màn hình vô cực, camera chuyên nghiệp như máy ảnh và hàng loạt những tính năng cao cấp đầy hấp dẫn.\r\n', 1, 1),
(14, 'Tai Nghe Nhét Tai Samsung Galaxy S6 ', 100000, '3.jpg', 'Kiểu dáng đẹp\r\n\r\nKhả năng lọc và chống ồn cao\r\n\r\nGiúp bạn nghe nhạc hoặc đàm thoại cực tốt', 2, 3),
(15, 'Smart Tivi Samsung 43 inch UA43N5500', 10890000, '4.jpg', 'Độ phân giải Full HD sắc nét gấp 2 lần độ phân giải HD.\r\nCông nghệ Contrast Enhancer nâng cấp độ sâu hình ảnh, cho hình ảnh thêm phần ấn tượng.\r\nCông nghệ PurColor với dải màu rộng cho màu sắc rực rỡ.\r\nCông nghệ Micro Dimming Pro nâng cấp độ tương phản, hình ảnh, độ nét, đem đến sắc đen sâu thẳm cùng sắc trắng tinh khiết.\r\nCông nghệ âm thanh Dolby Digital Plus cho trải nghiệm âm thanh vòm ấn tượng.\r\nHệ điều hành Tizen dễ sử dụng cùng hàng nghìn ứng dụng giải trí trực tuyến thú vị.\r\nHỗ trợ chiếu màn hình điện thoại lên tivi và điều khiển tivi bằng điện thoại qua ứng dụng Smart View.', 2, 2),
(11, 'Huawei Y7 Pro (2018)', 3990000, '1.jpg', 'Huawei Y7 Pro (2018) là sản phẩm tầm trung với đầy đủ những trang bị của một chiếc smartphone theo xu thế của năm 2018.\r\n', 1, 1),
(12, 'Điện thoại Samsung Galaxy Note 9 512GB', 28490000, '2.jpg', 'Sau thành công vang dội của Galaxy Note 8 thì Samsung chính thức giới thiệu phiên bản tiếp theo tới người dùng cái tên Samsung Galaxy Note 9 mang trong mình hàng hoạt các thay đổi đột phá với điểm nhấn đặc biệt đến từ chiếc bút S-Pen thần thánh cùng một viên pin dung lượng khổng lồ tới 4.000 mAh.\r\n', 1, 1),
(9, 'Huawei Nova 3', 11990000, '3.jpg', 'Nếu như bạn là một người yêu thích thiết kế của siêu phẩm Huawei P20 Pro nhưng cần một mức giá dễ chịu hơn thì Huawei Nova 3 sẽ là một sự lựa chọn phải chăng dành cho bạn.\r\n', 1, 1),
(10, 'Huawei Nova 3e', 5990000, '4.jpg', 'Huawei Nova 3e là phiên bản kế nhiệm hoàn hảo của chiếc Nova 2i vốn đã đạt được nhiều thành công tại thị trường Việt Nam với màn hình tràn viền \"tai thỏ\" mới và nhiều tính năng cao cấp.\r\n', 1, 1),
(8, 'Huawei P20 Pro', 13990000, '1.jpg', 'Thiết kế tai thỏ thời thượng, cấu hình khủng và đặc biệt nhất là bộ 3 camera là những gì mà người ta ấn tượng kể từ khi chiếc điện thoại Huawei P20 Pro ra mắt.\r\n', 1, 1),
(16, 'Tai nghe chụp tai Sony MDR - ZX110AP\r\n', 490000, '2.jpg', 'Sản phẩm chính hãng của Sony.\r\nDải tần rộng tạo âm cao và trầm rõ ràng, chi tiết.\r\nÂm bass khỏe và ấm cho chất lượng âm thanh trung thực.\r\nĐệm tai nghe mỏng tai và êm.\r\nKhớp điều chỉnh kích thước giúp vừa vặn khi đeo.\r\nCó nút nhận cuộc gọi, phát/dừng chơi nhạc, chuyển bài hát.\r\nDây dài 120 cm thoải mái để vừa dùng máy vừa nghe nhạc.', 4, 3),
(17, 'Tai nghe nhét trong Sony MDR-E9LP (Không Thoại)\r\n', 200000, '3.jpg', 'Sản phẩm chính hãng của Sony, nhiều màu sắc lựa chọn.\r\nBộ màng loa 13.5 mm tái tạo âm trầm mạnh mẽ.\r\nTần số 18 - 22.000 Hz, công suất 100 mW tái tạo âm thanh rõ nét.\r\nDây dài 120 cm thoải mái để vừa dùng máy vừa nghe nhạc.', 4, 3),
(18, 'Điện thoại Sony Xperia XZ Dual', 9990000, '4.jpg', 'Sony Xperia XZ Dual với thiết kế cực đẹp, cùng camera chất lượng hơn, nhiều tính năng tiện ích hơn..jpg', 4, 1),
(19, 'Máy Ảnh Sony DSC H300 - 20.1 Megapixel, Zoom 35x', 3590000, '1.jpg', 'Cảm biến: Super HAD CCD 20.1 MP\r\n\r\nỐng kính siêu zoom 35x\r\n\r\nISO: 80-3200\r\n\r\nHệ thống lấy nét: Tự động\r\n\r\nChụp ảnh liên tục: 0.8fps', 4, 4),
(20, 'Máy hút bụi Xiaomi Deerma Vacuum Cleaner', 1990000, '2.jpg', 'Mới 100% nguyên box nguyên seal\r\nBảo hành 12 tháng theo quy định của nhà sản xuất\r\nPin bảo hành 6 tháng.', 1, 5),
(21, 'Máy đuổi muỗi xiaomi\r\n', 390000, '3.jpg', 'Nhập khẩu chính hãng Xiaomi Bắc Kinh\r\nBảo hành 6 tháng. \r\n1 đổi 1 trong 7 ngày đầu.\r\nHàng mới 100% nguyên seal box.\r\nSản phẩm này có thể ship COD toàn quốc.', 1, 5),
(22, 'Điện thoại iPhone X 256GB Gray', 34790000, '4.jpg', 'iPhone X được đã được Apple cho ra mắt ngày 12/9 vừa rồi đánh dấu chặng đường 10 năm lần đầu tiên iPhone ra đời. iPhone X mang trên mình thiết kế hoàn toàn mới với màn hình Super Retina viền cực mỏng và trang bị nhiều công nghệ hiện đại như nhận diện khuôn mặt Face ID, sạc pin nhanh và sạc không dây cùng khả năng chống nước bụi cao cấp.\r\n', 5, 1),
(23, 'Điện thoại iPhone 8 Plus 256GB', 28790000, '1.jpg', 'iPhone 8 Plus là bản nâng cấp nhẹ của chiếc iPhone 7 Plus đã ra mắt trước đó với cấu hình mạnh mẽ cùng camera có nhiều cải tiến.\r\n', 5, 1),
(24, 'Điện thoại Samsung Galaxy J8', 6290000, '2.jpg', 'Thông số kỹ thuật\r\nMàn hình:	Super AMOLED, 6.0\", HD+\r\nHệ điều hành:	Android 8.0 (Oreo)\r\nCamera sau:	16 MP và 5 MP (2 camera)\r\nCamera trước:	16 MP\r\nCPU:	Qualcomm Snapdragon 450 8 nhân 64-bit\r\nRAM:	3 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3500 mAh', 2, 1),
(25, 'Điện thoại Xiaomi Redmi Note 6 Pro 32GB', 4990000, '3.jpg', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 6.26\", Full HD+\r\nHệ điều hành:	Android 8.1 (Oreo)\r\nCamera sau:	12 MP và 5 MP (2 camera)\r\nCamera trước:	20 MP và 2 MP\r\nCPU:	Qualcomm Snapdragon 636 8 nhân\r\nRAM:	3 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nHOTSIM VIETTEL V90 (60GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	4000 mAh', 3, 1),
(26, 'Điện thoại Huawei Y3 2017', 1790000, '4.jpg', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 5\", FWVGA\r\nHệ điều hành:	Android 6.0 (Marshmallow)\r\nCamera sau:	8 MP\r\nCamera trước:	2 MP\r\nCPU:	MT6580M 4 nhân 32-bit\r\nRAM:	1 GB\r\nBộ nhớ trong:	8 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 32 GB\r\nThẻ SIM:\r\n2 Micro SIM\r\nHOTSIM VIETTEL V90 (60GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	2200 mAh\r\n', 1, 1),
(27, 'Điện thoại Huawei Y5 2017', 2790000, '1.jpg', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 5\", HD\r\nHệ điều hành:	Android 6.0 (Marshmallow)\r\nCamera sau:	8 MP\r\nCamera trước:	5 MP\r\nCPU:	MT6737T, 4 nhân\r\nRAM:	2 GB\r\nBộ nhớ trong:	16 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 128 GB\r\nThẻ SIM:\r\n2 Micro SIM, Hỗ trợ 4G\r\nHOTSIM VIETTEL V90 (60GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3000 mAh', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_ID` int(100) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_img` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`type_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_ID`, `type_name`, `type_img`) VALUES
(1, 'Điện Thoại - Máy Tính Bảng', 'dien-thoai-protype.jpg'),
(2, 'Tivi - Thiết bị nghe nhìn', 'tivi-protype.jpg'),
(3, 'Phụ Kiện - Thiết Bị Số', 'tai-nghe-protype.jpg'),
(4, 'Máy Ảnh - Quay Phim', 'camera-protype.jpg'),
(5, 'Nhà Cửa Đời Sống', 'nha-cua-protype.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
