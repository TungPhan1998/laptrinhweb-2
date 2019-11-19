-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 19, 2019 lúc 06:44 SA
-- Phiên bản máy phục vụ: 5.7.14
-- Phiên bản PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `products`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `name_comment` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`comment_id`, `name_comment`, `comment`, `id`) VALUES
(1, NULL, 'aaaa', 1),
(2, NULL, 'aa', 12),
(32, NULL, 'Huawei Nova 3e', 10),
(31, NULL, 'Điện thoại tốt', 8),
(30, NULL, 'Sản phẩm này dùng tốt', 8),
(33, NULL, 'aa', 16),
(34, NULL, 'Tai nghe', 16),
(35, NULL, 'Sony MDR ', 16),
(36, NULL, 'Sản phẩm chính hãng của Sony. Dải tần rộng tạo âm cao và trầm rõ ràng, chi tiết. Âm bass khỏe và ấm ', 16),
(37, 'Tai nghe chụp tai Sony MDR - ZX110AP', 'Tai nghe chụp tai Sony MDR - ZX110AP', 16),
(38, 'Máy hút bụi Xiaomi Deerma Vacuum Cleaner', 'Máy hút bụi Xiaomi Deerma Vacuum Cleaner', 20),
(39, 'Bạn Tùng đẹp trai', 'Bạn Tùng ngu như con bò', 20),
(40, 'tivi xịn', 'tivi xịn', 15),
(41, 'Tân', 'Sản phẩm này dùng tốt', 15),
(42, 'Hiệp', 'Điện thoại tốt', 15),
(43, 'khoaga', '123', 11),
(44, 'qewe', 'ewqe', 11),
(45, 'khoaga', 'wqeqwewqeqwe', 11),
(46, 'khoaquaga', 'khoaquaga\r\n', 11),
(47, 'Name:khoaquaga Comment: khoaquaga', 'Name:khoaquaga\r\nComment: khoaquagaName:khoaquaga\r\nComment: khoaquaga', 11),
(48, 'test nè', 'test nètest nètest nètest nètest nètest nètest nè\r\n', 11),
(49, 'Nova 3e', 'Nova 3e', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

CREATE TABLE `manufactures` (
  `manu_ID` int(11) NOT NULL,
  `manu_name` varchar(100) DEFAULT NULL,
  `manu_img` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_ID`, `manu_name`, `manu_img`) VALUES
(1, 'Huaweia', '7520.jpg'),
(2, 'Samsung', 'samsung.png'),
(3, 'Xiaomi', 'xiaomi.png'),
(4, 'Sony', 'sony.jpg'),
(5, 'Apple', 'apple.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `manu_ID` int(11) NOT NULL,
  `type_ID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`ID`, `name`, `price`, `image`, `description`, `manu_ID`, `type_ID`) VALUES
(15, '    Smart Tivi Samsung 43 inch', 10890000, 'tivi-samsung-ua43n5500-43inch.jpeg', 'Độ phân giải Full HD sắc nét gấp 2 lần độ phân giải HD.\r\nCông nghệ Contrast Enhancer nâng cấp độ sâu hình ảnh, cho hình ảnh thêm phần ấn tượng.\r\nCông nghệ PurColor với dải màu rộng cho màu sắc rực rỡ.\r\nCông nghệ Micro Dimming Pro nâng cấp độ tương phản, hình ảnh, độ nét, đem đến sắc đen sâu thẳm cùng sắc trắng tinh khiết.\r\nCông nghệ âm thanh Dolby Digital Plus cho trải nghiệm âm thanh vòm ấn tượng.\r\nHệ điều hành Tizen dễ sử dụng cùng hàng nghìn ứng dụng giải trí trực tuyến thú vị.\r\nHỗ trợ chiếu màn hình điện thoại lên tivi và điều khiển tivi bằng điện thoại qua ứng dụng Smart View.', 1, 2),
(11, ' Huawei Y7 Pro (2018)', 3990000, '636709841297146101_huaweiy7pro-vang-1.jpg', 'Huawei Y7 Pro (2018) là sản phẩm tầm trung với đầy đủ những trang bị của một chiếc smartphone theo xu thế của năm 2018.\r\n', 1, 2),
(12, ' Điện thoại Samsung Galaxy Note 9 512GB', 28490000, '33055-note-9-1.jpg', 'Sau thành công vang dội của Galaxy Note 8 thì Samsung chính thức giới thiệu phiên bản tiếp theo tới người dùng cái tên Samsung Galaxy Note 9 mang trong mình hàng hoạt các thay đổi đột phá với điểm nhấn đặc biệt đến từ chiếc bút S-Pen thần thánh cùng một viên pin dung lượng khổng lồ tới 4.000 mAh.\r\n', 2, 1),
(9, 'Huawei Nova 3', 11990000, 'huawei-nova-3-2-600x600.jpg', 'Nếu như bạn là một người yêu thích thiết kế của siêu phẩm Huawei P20 Pro nhưng cần một mức giá dễ chịu hơn thì Huawei Nova 3 sẽ là một sự lựa chọn phải chăng dành cho bạn.\r\n', 1, 1),
(10, 'Huawei Nova 3e', 5990000, 'huawei-nova-3e-2-400x460.png', 'Huawei Nova 3e là phiên bản kế nhiệm hoàn hảo của chiếc Nova 2i vốn đã đạt được nhiều thành công tại thị trường Việt Nam với màn hình tràn viền "tai thỏ" mới và nhiều tính năng cao cấp.\r\n', 1, 1),
(8, 'Huawei P20 Pro', 13990000, 'huawei-p20-pro-twilight-800x800.jpg', 'Thiết kế tai thỏ thời thượng, cấu hình khủng và đặc biệt nhất là bộ 3 camera là những gì mà người ta ấn tượng kể từ khi chiếc điện thoại Huawei P20 Pro ra mắt.\r\n', 1, 1),
(16, ' Tai nghe chụp tai Sony MDR - ZX110AP', 490000, 'tai-nghe-sony-mdr-zx110ap-den-2-org-1.jpg', 'Sản phẩm chính hãng của Sony.\r\nDải tần rộng tạo âm cao và trầm rõ ràng, chi tiết.\r\nÂm bass khỏe và ấm cho chất lượng âm thanh trung thực.\r\nĐệm tai nghe mỏng tai và êm.\r\nKhớp điều chỉnh kích thước giúp vừa vặn khi đeo.\r\nCó nút nhận cuộc gọi, phát/dừng chơi nhạc, chuyển bài hát.\r\nDây dài 120 cm thoải mái để vừa dùng máy vừa nghe nhạc.', 4, 3),
(17, 'Tai nghe nhét trong Sony MDR-E9LP (Không Thoại)\r\n', 200000, '636078263055807285_Tai-nghe-Sony-Earpod-MDR-E9LP.png', 'Sản phẩm chính hãng của Sony, nhiều màu sắc lựa chọn.\r\nBộ màng loa 13.5 mm tái tạo âm trầm mạnh mẽ.\r\nTần số 18 - 22.000 Hz, công suất 100 mW tái tạo âm thanh rõ nét.\r\nDây dài 120 cm thoải mái để vừa dùng máy vừa nghe nhạc.', 4, 3),
(18, 'Điện thoại Sony Xperia XZ Dual', 9990000, 'sony-xperia-xz.png', 'Sony Xperia XZ Dual với thiết kế cực đẹp, cùng camera chất lượng hơn, nhiều tính năng tiện ích hơn.', 4, 1),
(19, 'Máy Ảnh Sony DSC H300 - 20.1 Megapixel, Zoom 35x', 3590000, 'aaggrs23v2i9a.jpg', 'Cảm biến: Super HAD CCD 20.1 MP\r\n\r\nỐng kính siêu zoom 35x\r\n\r\nISO: 80-3200\r\n\r\nHệ thống lấy nét: Tự động\r\n\r\nChụp ảnh liên tục: 0.8fps', 4, 4),
(20, 'Máy hút bụi Xiaomi Deerma Vacuum Cleaner', 1990000, 'RhGW-may-hut-bui-cam-tay-xiaomi-rui-mi.jpg', 'Mới 100% nguyên box nguyên seal\r\nBảo hành 12 tháng theo quy định của nhà sản xuất\r\nPin bảo hành 6 tháng.', 1, 5),
(21, 'Máy đuổi muỗi xiaomi\r\n', 390000, 'xzczxczxczxcxzc_6a56f0747f4341b8bc7c26b061b683e5_1024x1024.jpg', 'Nhập khẩu chính hãng Xiaomi Bắc Kinh\r\nBảo hành 6 tháng. \r\n1 đổi 1 trong 7 ngày đầu.\r\nHàng mới 100% nguyên seal box.\r\nSản phẩm này có thể ship COD toàn quốc.', 1, 5),
(22, 'Điện thoại iPhone X 256GB Gray', 34790000, 'iphone-x-256gb-silver-400x460.png', 'iPhone X được đã được Apple cho ra mắt ngày 12/9 vừa rồi đánh dấu chặng đường 10 năm lần đầu tiên iPhone ra đời. iPhone X mang trên mình thiết kế hoàn toàn mới với màn hình Super Retina viền cực mỏng và trang bị nhiều công nghệ hiện đại như nhận diện khuôn mặt Face ID, sạc pin nhanh và sạc không dây cùng khả năng chống nước bụi cao cấp.\r\n', 5, 1),
(23, 'Điện thoại iPhone 8 Plus 256GB', 28790000, 'iphone-8-plus-mau-do.png', 'iPhone 8 Plus là bản nâng cấp nhẹ của chiếc iPhone 7 Plus đã ra mắt trước đó với cấu hình mạnh mẽ cùng camera có nhiều cải tiến.\r\n', 5, 1),
(24, 'Điện thoại Samsung Galaxy J8', 6290000, '636667501534844172_samsungj8-den-2.jpg', 'Thông số kỹ thuật\r\nMàn hình:	Super AMOLED, 6.0", HD+\r\nHệ điều hành:	Android 8.0 (Oreo)\r\nCamera sau:	16 MP và 5 MP (2 camera)\r\nCamera trước:	16 MP\r\nCPU:	Qualcomm Snapdragon 450 8 nhân 64-bit\r\nRAM:	3 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3500 mAh', 2, 1),
(25, 'Điện thoại Xiaomi Redmi Note 6 Pro 32GB', 4990000, '636729768835987100_xiaomi-redmi-note-6-pro-hong-1.jpg', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 6.26", Full HD+\r\nHệ điều hành:	Android 8.1 (Oreo)\r\nCamera sau:	12 MP và 5 MP (2 camera)\r\nCamera trước:	20 MP và 2 MP\r\nCPU:	Qualcomm Snapdragon 636 8 nhân\r\nRAM:	3 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nHOTSIM VIETTEL V90 (60GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	4000 mAh', 3, 1),
(26, 'Điện thoại Huawei Y3 2017', 1790000, 'huawei-y3-2017-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 5", FWVGA\r\nHệ điều hành:	Android 6.0 (Marshmallow)\r\nCamera sau:	8 MP\r\nCamera trước:	2 MP\r\nCPU:	MT6580M 4 nhân 32-bit\r\nRAM:	1 GB\r\nBộ nhớ trong:	8 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 32 GB\r\nThẻ SIM:\r\n2 Micro SIM\r\nHOTSIM VIETTEL V90 (60GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	2200 mAh\r\n', 1, 1),
(27, 'Điện thoại Huawei Y5 2017', 2790000, 'huawei-y5-2017-400x460-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 5", HD\r\nHệ điều hành:	Android 6.0 (Marshmallow)\r\nCamera sau:	8 MP\r\nCamera trước:	5 MP\r\nCPU:	MT6737T, 4 nhân\r\nRAM:	2 GB\r\nBộ nhớ trong:	16 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 128 GB\r\nThẻ SIM:\r\n2 Micro SIM, Hỗ trợ 4G\r\nHOTSIM VIETTEL V90 (60GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3000 mAh', 1, 1),
(28, 'Điện thoại Sony Xperia XA1', 2990000, 'sony-xepria-xa1-plus-400x460.png', 'Thông số kỹ thuật\nMàn hình:	IPS LCD, 5", HD\nHệ điều hành:	Android 7.0 (Nougat)\nCamera sau:	23 MP\nCamera trước:	8 MP\nCPU:	Mediatek Helio P20\nRAM:	3 GB\nBộ nhớ trong:	32 GB\nThẻ SIM:	2 Nano SIM\nDung lượng pin:	2300 mAh', 4, 1),
(29, 'Điện thoại Sony Xperia L1', 1990000, 'sony-xperia-l1-den-3-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 5.5", HD\r\nHệ điều hành:	Android 7.0 (Nougat)\r\nCamera sau:	13 MP\r\nCamera trước:	5 MP\r\nCPU:	MT6737T, 4 nhân\r\nRAM:	2 GB\r\nBộ nhớ trong:	16 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTSIM VIETTEL V90 (60GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	2620 mAh', 4, 1),
(30, 'Máy tính bảng Samsung Galaxy Tab S4 10.5 inch S-Pen', 17990000, 'samsung-galaxy-tab-s4-105-inch-detial-400x460.png', 'Thông số kỹ thuật\r\nMàn hình	Super AMOLED, 10.5"\r\nHệ điều hành	Android 8.0\r\nCPU	Qualcomm MSM 8998, 4 nhân 2.35GHz + 4 nhân 1.9GHz\r\nRAM	4 GB\r\nBộ nhớ trong	64 GB\r\nCamera sau	13 MP\r\nCamera trước	8 MP\r\nKết nối mạng\r\nWiFi, 3G, Hỗ trợ 4G\r\nHOTMua sim Viettel DATA 7GB (7GB data/tháng), mỗi tháng nạp chỉ 70.000đ. Giá từ 80.000đ\r\nHỗ trợ SIM	Nano Sim\r\nĐàm thoại	Có', 2, 1),
(31, 'Máy tính bảng Samsung Galaxy Tab A 10.5 inch', 9490000, 'samsung-galaxy-tab-a-105-inch-chitietblue-400x460.png', 'Thông số kỹ thuật\r\nMàn hình	IPS LCD, 10.5"\r\nHệ điều hành	Android 8.0\r\nCPU	CPU 8 nhân, 1.8 GHz\r\nRAM	3 GB\r\nBộ nhớ trong	32 GB\r\nCamera sau	8 MP\r\nCamera trước	5 MP\r\nKết nối mạng	WiFi, 3G, Hỗ trợ 4G\r\nHỗ trợ SIM\r\nNano Sim\r\nHOTSIM VIETTEL DATA 7GB/tháng. Giá từ 80.000đ\r\nĐàm thoại	Có', 2, 1),
(32, 'Máy tính bảng Samsung Galaxy Tab A6 10.1 Spen', 7490000, 'samsung-galaxy-tab-a6-101-spen-400x460.png', 'Thông số kỹ thuật\r\nMàn hình	PLS LCD, 10.1"\r\nHệ điều hành	Android 6.0 (Marshmallow)\r\nCPU	Exynos 7870 8 nhân, 1.6 GHz\r\nRAM	3 GB\r\nBộ nhớ trong	16 GB\r\nCamera sau	8 MP\r\nCamera trước	2 MP\r\nKết nối mạng\r\nWiFi, 3G, 4G LTE\r\nHOTMua sim Viettel DATA 7GB (7GB data/tháng), mỗi tháng nạp chỉ 70.000đ. Giá từ 80.000đ\r\nHỗ trợ SIM	Nano Sim\r\nĐàm thoại	Có', 2, 1),
(33, 'Máy tính bảng Huawei MediaPad M3 8.0 (2017)', 5990000, 'huawei-mediapad-m3-115-400x460.png', 'Thông số kỹ thuật\r\nMàn hình	IPS LCD, 8"\r\nHệ điều hành	Android 7.0\r\nCPU	Qualcomm MSM8940, 1.4 GHz\r\nRAM	3 GB\r\nBộ nhớ trong	32 GB\r\nCamera sau	8 MP\r\nCamera trước	8 MP\r\nKết nối mạng	WiFi, 3G, 4G LTE\r\nHỗ trợ SIM\r\nNano Sim\r\nHOTSIM VIETTEL DATA 7GB/tháng. Giá từ 80.000đ\r\nĐàm thoại	Có', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

CREATE TABLE `protypes` (
  `type_ID` int(100) NOT NULL,
  `type_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_img` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_ID`, `type_name`, `type_img`) VALUES
(1, 'Điện Thoại - Máy Tính Bảng', 'dien-thoai-protype.jpg'),
(2, 'Tivi - Thiết bị nghe nhìn', 'tivi-protype.jpg'),
(3, 'Phụ Kiện - Thiết Bị Số', 'tai-nghe-protype.jpg'),
(4, 'Máy Ảnh - Quay Phim', 'camera-protype.jpg'),
(5, 'Thiết bị điện tử', '7480.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `iid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `iid`) VALUES
(1, '  phanvantung123', '  123', 1),
(2, 'admin', '123', 1),
(6, 'tan123', '123', 0),
(4, 'tan', '123', 0),
(5, '   admin1', '   1234', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Chỉ mục cho bảng `manufactures`
--
ALTER TABLE `manufactures`
  ADD PRIMARY KEY (`manu_ID`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `protypes`
--
ALTER TABLE `protypes`
  ADD PRIMARY KEY (`type_ID`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT cho bảng `manufactures`
--
ALTER TABLE `manufactures`
  MODIFY `manu_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT cho bảng `protypes`
--
ALTER TABLE `protypes`
  MODIFY `type_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
