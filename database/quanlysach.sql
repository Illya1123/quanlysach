-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306:3306
-- Thời gian đã tạo: Th5 13, 2024 lúc 08:13 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlysach`
--
CREATE DATABASE IF NOT EXISTS `quanlysach` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `quanlysach`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Account`
--

CREATE TABLE `Account` (
  `fullName` varchar(50) DEFAULT NULL,
  `userName` varchar(50) NOT NULL,
  `password` varchar(60) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Account`
--

INSERT INTO `Account` (`fullName`, `userName`, `password`, `role`, `status`, `email`) VALUES
('Admin', 'admin', '$2a$12$Y87zSnx.tpFvieylSeXuo.agjb7swi3UVnoo6KVMY9xP5STj4zJhm', 'Admin', 1, 'lequocanh0101@gmail.com'),
('Nguyễn Đoàn Nhật Khánh', 'khanh2k3', '$2a$12$Y87zSnx.tpFvieylSeXuo.agjb7swi3UVnoo6KVMY9xP5STj4zJhm', 'Nhân viên nhập', 1, '21522207@gm.uit.edu.vn'),
('Lê Quốc Anh', 'taki2k3', '$2a$12$cP8JKVbk5GXvjk/SocX9LOcG7kQ.Yt29vEGs6ZYvOBI0I/9Ys3pjW', 'Nhân viên xuất', 1, '21520565@gm.uit.edu.vn'),
('Nguyễn Nhật Tấn', 'tan2k2', '$2a$12$Y87zSnx.tpFvieylSeXuo.agjb7swi3UVnoo6KVMY9xP5STj4zJhm', 'Quản lý kho', 1, '21521415@gm.uit.edu.vn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ChiTietPhieuNhap`
--

CREATE TABLE `ChiTietPhieuNhap` (
  `maPhieu` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `soLuong` int(11) DEFAULT NULL,
  `donGia` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ChiTietPhieuXuat`
--

CREATE TABLE `ChiTietPhieuXuat` (
  `maPhieu` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `soLuong` int(11) DEFAULT NULL,
  `donGia` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `PhieuNhap`
--

CREATE TABLE `PhieuNhap` (
  `maPhieu` varchar(50) NOT NULL,
  `thoiGianTao` timestamp NULL DEFAULT NULL,
  `nguoiTao` varchar(50) DEFAULT NULL,
  `tongTien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `PhieuXuat`
--

CREATE TABLE `PhieuXuat` (
  `maPhieu` varchar(50) NOT NULL,
  `thoiGianTao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nguoiTao` varchar(50) NOT NULL,
  `tongTien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_category`
--

INSERT INTO `product_category` (`id`, `name`, `description`, `Image`) VALUES
(1, 'Nước ngoài', 'Mô tả cho danh mục 1', 'vhnn.jpg'),
(2, 'Tham khảo', 'Mt', 'tk.jpg'),
(3, 'Thiếu nhi', '[value-3]', 'tt.jpg'),
(4, 'Việt Nam', '[value-3]', 'vhvn.jpg'),
(5, 'Tiểu thuyết', '[value-3]', 'tieuthuyet.jpg'),
(6, 'Truyện ngắn', '[value-3]', 'truyenngan.jpg'),
(7, 'Thơ', '[value-3]', 'tho.jpg'),
(8, 'Đương đại', '[value-3]', 'duongdai.jpg'),
(9, 'Lãng mạn', '[value-3]', 'langman.jpg'),
(10, 'Trinh thám / Kinh dị', '[value-3]', 'trinhtham.jpg'),
(11, 'Light novel', '[value-3]', 'ln.jpg'),
(12, 'Khoa học', '[value-3]', 'khoahoc.jpg'),
(13, 'Tiếng Anh', '[value-3]', 'ta.jpg'),
(14, 'Tiếng Nhật', '[value-3]', 'tn.jpg'),
(15, 'Tiếng Trung', '[value-3]', 'ttrung.jpg'),
(16, 'Tiếng Pháp', '[value-3]', 'tp.jpg'),
(17, 'Sách ảnh', '[value-3]', 'sachanh.jpg'),
(18, 'Sách nói', '[value-3]', 'sachnoi.jpg'),
(19, 'Sách tô màu', '[value-3]', 'tomau.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Sach`
--

CREATE TABLE `Sach` (
  `id` int(11) NOT NULL,
  `image` varchar(512) NOT NULL,
  `name` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `page_count` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` double NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `view_count` int(11) DEFAULT 0,
  `stock_quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Sach`
--

INSERT INTO `Sach` (`id`, `image`, `name`, `author`, `publisher`, `release_date`, `size`, `page_count`, `description`, `price`, `category_id`, `view_count`, `stock_quantity`) VALUES
(123, 'ndb.jpg', 'Người Đài Bắc', 'Bạch Tiến Dũng', 'Hà Nội', '2023-10-04', '14 x 20.5cm', 313, '\"Bao gồm 14 truyện ngắn từng được đăng trên tờ Văn học hiện đại trong suốt thập niên 60 thế kỷ 20, lần đầu xuất bản vào năm 1971 song đến nay vẫn xếp thứ 7 trong danh sách 100 tiểu thuyết Hoa ngữ tiêu biểu thế kỷ 20, Người Đài Bắc là tác phẩm giữ thứ hạng cao nhất của một nhà văn còn tại thế trong danh sách này. \"', 179000, 1, 3, 500),
(124, 'txnv.jpg', 'Tật xấu người Việt', 'Di Li', 'Hội nhà văn', '2023-10-04', '14 x 20.5cm', 384, '\"“Các cụ xưa nay vẫn cho rằng ở đời có ba việc lớn là cưới vợ, xây nhà, tậu trâu (trâu đây là sự nghiệp, vì nghiệp xưa của các cụ vốn gắn liền với trâu). Có người thì định nghĩa ‘Hạnh phúc là sáng muốn đi làm, chiều thì muốn về nhà.’ Đủ hiểu hạnh phúc hay bất hạnh ở đời cũng chỉ loanh quanh ba cái điều ấy thôi. \"', 149000, 2, 4, 496),
(125, 'nlddhctt.jpg', 'Những lối đi dưới hàng cây tăm tối', 'Ivan Bunin', 'Văn học', '2023-09-19', '14 x 20.5cm', 292, '.', 85000, 1, 2, 500),
(126, 'nhk.jpg', 'Nam Hoa Kinh', 'Trang Tử', 'Văn học', '2023-10-06', '15x24 cm', 334, '\"“Thầy Trang mặc áo vải to mà có chỗ vá, nối đai, buộc giày mà sang chơi vua nước Ngụy.\"', 109000, 1, 0, 500),
(127, 'hhmm.jpg', 'Hội hè miên man', 'Ernest Hemingway', 'Hội nhà văn', '2023-09-19', '14 x 20.5cm', 318, '.', 115000, 1, 0, 500),
(128, 'dt.jpg', 'Đồi thỏ', 'Richard Adams', 'Hội nhà văn', '2023-09-19', '15x24 cm', 494, '.', 169000, 1, 0, 500),
(129, 'tlbtttna-m.jpg', 'Trở lại Babylon tuyển tập truyện ngắn Anh - Mỹ', 'Ernest Hemingway', 'Văn học', '2023-10-18', '14 x 20.5cm', 473, '\"Tuyển tập truyện ngắn của mười tên tuổi lớn trong nền văn học Anh - Mỹ, những người có thể coi là một đỉnh cao, tỏa bóng và để lại ảnh hưởng lên rất nhiều thế hệ nhà văn sau này:\"', 150000, 1, 4, 497),
(130, 'bnksh.jpg', 'Biên niên ký Sao Hỏa', 'Ray Bradbury', 'Văn học', '2023-08-08', '14 x 20.5cm', 402, '\"Dẫu được tôn vinh vào hàng kinh điển trong dòng sách khoa học viễn tưởng, khoa học lại mờ nhạt đến gần như vắng bóng trong Biên niên ký Sao Hỏa. Sao Hỏa, trong trí tưởng tượng của Bradbury những năm bốn mươi của thế kỷ hai mươi, không có gì giống với hành tinh lạnh lẽo khô khốc chúng ta biết tới ngày nay. Đó là một nơi có bầu khí quyển gần như Trái Đất, sinh sống một giống loài thông minh khá giống loài người. Đó là xứ sở của những rặng núi xanh lam, của những dòng kênh xanh lục, của những cây cột pha lê, của lớp bụi mờ phủ lên những thành phố tráng lệ đã chết. Sao Hỏa của Bradbury là một chốn của hy vọng, của ảo mộng và của ẩn dụ. Chính ở nơi đây, những kẻ xâm lược Trái Đất đã đến, tháo chạy khỏi một thế giới không tương lai đến một miền đất hứa, một giấc mơ Mỹ thứ hai. Người Trái Đất tràn lên Sao Hỏa, để rồi bị chính Sao Hỏa ru ngủ trong những tiện nghi thân quen lọc lừa, rù quến trong ánh hào quang còn sót lại của chủng loài bản địa cổ xưa đầy bí hiểm.\"', 16500, 1, 0, 500),
(131, 'ct.jpg', 'Con Trai (phần thứ tư của Người truyền ký ức)', 'Lois Lowry', 'Hội nhà văn', '2023-09-06', '14 x 20.5cm', 425, '\"Họ gọi cô là Claire Thủy Triều. Khi cô trôi dạt vào bờ biển của họ, chẳng ai biết rằng cô vừa trốn chạy khỏi một xã hội không sắc màu, không cảm xúc.\"', 15800, 1, 0, 500),
(132, 'tktn.jpg', 'Tiếng kèn thiên nga', 'E.B.White', 'Hội nhà văn', '2023-08-25', '14 x 20.5cm', 241, '\"“Thiên nga thì phải vui tươi, không buồn bã; phong nhã, không vụng về; can trường, không hèn nhát.” Và nếu là thiên nga kèn, thì còn phải biết cất tiếng kêu \"', 8000, 1, 4, 500),
(133, 'lcncnt-t2.jpg', 'Lời của Nietzsche cho người trẻ - Tập 2', 'Shiratori Haruhiko', 'Thế Giới', '2023-09-08', '14.5x20.5 cm', 276, '\"Trong làng triết học phương Tây, Nietzsche có lẽ là một trường hợp hiếm hoi không khiến cho người ta phải sợ hãi [vì trừu tượng] hay ngao ngán [vì kinh viện]. Cũng vậy ở Việt Nam, kể từ khi các tác phẩm của Nietzsche lần đầu xuất hiện, biết bao nhiêu thế hệ trẻ đã đọc và yêu mến ông, mang theo tư tưởng mãnh liệt và hân hoan của ông trong hành trang của đời mình, cùng với những tình yêu, hoài bão và đổ vỡ.\"', 10800, 1, 0, 500),
(134, 'id5-nnknckn.jpg', 'Infinite Dendrogram 5 - Những người kết nối các khả năng', 'Kaidou Sakon', 'Hà Nội', '2023-09-06', '13x18 cm', 248, 'Vua Phá Hoại xông trận.', 11500, 1, 0, 500),
(135, 'dbg.jpg', 'Dám bị ghét', 'Kishimi Ichiro và Koga Fumitake', 'Dân Trí', '2023-09-08', '14 x 20.5cm', 333, 'Các mối quan hệ xã hội thật', 11900, 1, 1, 500),
(136, 'bsjvoh.jpg', 'Bác sĩ Jekyll và ông Hyde', 'Robert Louis Balfour Stevenson', 'Hội nhà văn', '2023-08-25', '14 x 20.5cm', 160, '', 6200, 1, 0, 500),
(137, 'rvj.jpg', 'Romeo và Juliet', 'William Shakespeare', 'Hội nhà văn', '2023-09-19', '14 x 20.5cm', 160, '\"“Ngày xưa, ở thành Verona tươi đẹp,\"', 5800, 1, 0, 500),
(138, 'ptmn.jpg', 'Phương trình mầu nhiệm', 'Hal Elrod', 'Thông Tấn', '2023-09-19', '14 x 20.5cm', 371, '\"Thẳm sâu bên trong, chúng ta biết rằng bản thân mình không có giới hạn. Nhưng bộ não của chính chúng ta và thế giới xung quanh giam hãm chúng ta, để rồi chúng ta cứ mãi nhỏ bé hơn tầm vóc đáng có. Xung đột này dẫn đến nỗi bất hạnh, sự lo lắng đi đôi với cảm giác thường trực rằng thế giới ngoài kia có một thứ khác, cao xa hơn, dành cho mình. \"', 16900, 1, 0, 500),
(139, 'nncttg.jpg', 'Nỗi niềm của thám tử Galileo', 'Higashino Keigo', 'Hà Nội', '2023-09-11', '14x20.5 cm', 336, 'Tôi không tha thứ cho kẻ lấy khoa học làm công cụ giết người. Tuyệt đối không!', 14600, 1, 0, 500),
(140, 'ctckvcgtt1.jpg', 'Chuyện tình hài lãng mạn không thể chê vào đâu 2', 'Daisuke Suzuki', 'Hà Nội', '2023-09-06', '13x18 cm', 216, '\"Kanaruzawa Sekai chết đi, thế giới được tái lập, và câu chuyện lại một lần nữa bắt đầu khi Sekai chuyển đến trường cấp ba nơi Kirishima Yuuki đang theo học. \"', 11800, 1, 0, 500),
(141, 'gmtt.jpg', 'Giấc mơ tiên tri', 'Higashino Keigo', 'Hà Nội', '2023-08-07', '14 x 20.5cm', 245, '\"Đêm khuya, một gã đàn ông lẻn vào phòng của thiếu nữ mười sáu tuổi. Người mẹ phát hiện và nổ súng. Khi bị bắt, gã đàn ông khai hắn đã mơ thấy mình trở thành chồng thiếu nữ này từ mười bảy năm về trước, bằng chứng là bài văn mô tả cô gái do hắn viết từ thời tiểu học. Lẽ nào người trong mơ lại xuất hiện ngoài đời thực? Đó chỉ là sự trùng hợp quá đỗi ngẫu nhiên, hay thực sự tồn tại giấc mơ tiên tri?\"', 11800, 1, 0, 500),
(142, 'cdvsp.jpg', 'Cuộc đời và số phận', 'Vasily Semyonovich Grossman', 'Hội nhà văn', '2023-09-06', '17x25 cm', 826, '\"Xoay quanh trận Stalingrad, trận chiến mang tính bước ngoặt trong Thế chiến Hai, Cuộc đời và Số phận muốn nắm bắt tinh thần của một thời đại bão tố mà nước Nga trải qua. Đó là một bức tranh mênh mông với đông đảo các nhân vật thuộc đủ mọi tầng lớp khiến sự chân thực của bức tranh ấy không chỉ đến những sự kiện lớn lao, những anh hùng thời đại quyết định vận mệnh của một dân tộc, mà còn đến từ những tình cảm, suy nghĩ nhỏ nhặt, những bi kịch tinh thần của mỗi cá nhân. \"', 46000, 1, 0, 500),
(143, 'je.jpg', 'Jane Eyre', 'Charlotte Bronte', 'Văn học', '2023-07-31', '15x24 cm', 540, '\"“Nhà văn đã cầm lấy tay chúng ta, dắt chúng ta đi theo con đường của bà, bắt chúng ta phải nhìn thấy những gì bà thấy, không bao giờ rời chúng ta nửa bước hay cho phép chúng ta quên mất sự hiện diện của bà. Cuối cùng, chúng ta càng lúc càng đắm chìm trong tài năng, sự mãnh liệt, sự phẫn nộ của Charlotte Brontë.”\"', 17900, 1, 0, 500),
(144, 'lngh.jpg', 'Lắng nghe gió hát', 'Haruki Murakami', 'Hội nhà văn', '2023-06-09', '14 x 20.5cm', 192, '\"Mười tám ngày của mùa hè năm hai mươi tuổi, đối với “tôi” là một kỳ nghỉ hè không sự kiện. Bất chấp những tối uống tràn ở quán Jay’s Bar cùng cậu bạn mang tên Chuột hay mối quen tình cờ với cô gái ở cửa hàng đĩa hát, thành phố quê hương ven biển mùa hè chỉ còn là gió trong “tôi”. Những chuyện kể về gió, tiếng gió hát bên bờ biển, và cảm giác tuổi thanh xuân trôi qua như gió. Mười tám ngày ấy đã gói ghém cả quá khứ, hiện tại, tương lai cùng với hoang mang, mất mát và cô đơn…\"', 8800, 1, 0, 500),
(145, 'ntmtl.jpg', 'Nàng Thợ may Tinh linh (Hariko no Otome)', 'Zeroki', 'Hà Nội', '2023-06-15', '13x18 cm', 304, '', 13800, 1, 0, 500),
(146, 'vtt.jpg', 'Vượn trần trụi', 'Desmond Morris', 'Hội nhà văn', '2023-06-15', '14 x 20.5cm', 400, 'CUỐN SÁCH MÀ KHÔNG CON VẬT NGƯỜI NÀO DÁM BỎ QUA.', 13800, 1, 0, 500),
(147, 'f-jwvg.jpg', 'Faust - Johann WolfGang Von Goethe', 'Johann Wolfgang von Goethe', 'Văn học', '2023-06-09', '15x24 cm', 604, '\"Trong đêm tối nghìn năm Trung cổ, nhân loại dần tỉnh giấc, dấn bước kiếm tìm giá trị bản thân và nhận thức thế giới. Trên chặng đường đó, đã sinh ra Faust - một nhân vật có thật, được huyền thoại hóa nhiều vào bậc nhất lịch sử thế giới, cả trong văn học dân gian lẫn văn học bác học, với đỉnh cao của mọi đỉnh cao là Faust của \"', 20000, 1, 0, 500),
(148, 'lth.jpg', 'Lá thư hè', 'Alphonse Daudet', 'Văn học', '2023-07-31', '14 x 20.5cm', 167, 'Chính', 5200, 1, 0, 500),
(149, 'ndptdl.jpg', 'Người đao phủ thành Đại La', 'Hoài Điệp Thứ Lang', 'Hội nhà văn', '2023-06-22', '15.5x24 cm', 338, '\"Dưới thời hôn quân Lê Ngọa Triều, dân chúng đói khổ, lầm than, mạng người bị coi như cỏ rác, uất hận không sao kể xiết. Khu pháp trường bên sông Tô Lịch không khi nào thiếu mùi máu tanh với những chiếc đầu lâu trên cổng thành và một gã đao phủ mà chỉ nghe tên người ta đã rụng rời. Tất cả để làm khiếp nhược bất cứ ý đồ phản kháng nào. Nhưng rồi có một người, một tráng sĩ phong thái kiêu dũng, kiếm pháp vô song, tấm lòng trượng nghĩa,...\"', 13800, 1, 0, 500),
(150, 'cmcb.jpg', 'Chuyện một cậu bé', 'Nick Hornby', 'Hội nhà văn', '2023-06-22', '14 x 20.5cm', 434, '\"Will Freeman ba mươi sáu tuổi, độc thân, bảnh bao, sành điệu và giàu có. Anh sống một cuộc đời vô lo vô nghĩ, không thích trẻ con nhưng lại có hứng thú với mẹ của chúng. Gia nhập hội cha mẹ đơn thân, anh đã gặp Marcus – cậu bé mười hai tuổi “già dặn nhất trên đời”.\"', 16800, 1, 0, 500),
(151, 'tgcm.jpg', 'Thời gian của ma', 'Yi Jeong Kim', 'Hà Nội', '2023-06-22', '14 x 20.5cm', 309, '“Có lẽ cha chỉ là một bóng ma. Một bóng ma không thể tồn tại ở bất cứ nơi đâu trên mảnh đất này.”', 14800, 1, 0, 500),
(152, 'tgnttt.jpg', 'Thư gửi nhà tiểu thuyết trẻ', 'Mario Vargas Llosa', 'Hội nhà văn', '2023-06-22', '14 x 20.5cm', 161, '\" là bản tổng kết kinh nghiệm viết và đọc tiểu thuyết của một trong những nhà văn lớn nhất thời đại chúng ta, Mario Vargas Llosa.\"', 10900, 1, 0, 500),
(153, 'dnnmsctg3.jpg', 'Dã ngoại nơi Mặt sau của Thế giới (Otherside Picnic) 3', 'Iori Miyazawa', 'Hà Nội', '2023-07-07', '13x18 cm', 327, '\"Bên cạnh thế giới bình thường của con người tồn tại một “Thế giới Mặt sau” nơi cư ngụ của những sinh vật kỳ dị và nguy hiểm trong truyện ma và truyền thuyết đô thị. Một ngày nọ cô sinh viên Kamikoshi Sorawo vô tình mở ra cánh cửa đến với \"\"Thế giới Mặt sau\"\" và gặp được Nishina Toriko - một cô gái đang trên đường tìm kiếm người bạn mất tích của mình tại đây. Với những động cơ khác nhau hai người đã lập thành một nhóm và cùng nhau chiến đấu để sinh tồn trong thế giới quái dị đó.\"', 15000, 1, 0, 500),
(154, 'sndktg-t2.jpg', 'Sáu người đi khắp thế gian - Tập 2', 'James Albert Michener', 'Văn học', '2023-07-03', '16 x 24 cm', 565, '', 16500, 1, 0, 500),
(155, 'qvtqdn.jpg', 'Quái vật trong quán đồ nướng', 'Sái Tất Quý', 'Hà Nội', '2023-07-07', '14 x 20.5cm', 393, '\"Sái Tất Quý là một tiểu thuyết gia làng nhàng, đang lúc bất đắc chí, anh tình cờ quen biết cô chủ quán đồ nướng bí ẩn Sở Gia và nhận được một công việc kỳ lạ: mỗi tối thứ Tư hàng tuần đến quán nghe thực khách kể về những chuyện ly kỳ mà họ đích thân trải qua rồi ghi chép lại.\"', 15800, 1, 0, 500),
(156, 'ld.jpg', 'Lâu đài (Franz Kafka)', 'Franz Kafka', 'Lê Chu Cầu', '2023-07-10', '14 x 20.5cm', 437, '\"Xảy ra vỏn vẹn trong 6 ngày, mà đằng đẵng bằng vạn kiếp con người, câu chuyện của K. tan hẫng, dang dở không kết thúc, dìm toàn bộ cái sân khấu yêu đương, tranh đấu, nỗ lực, bất lực, náo hoạt nhưng dường như câm lặng của lũ rối đang trình diễn vào đầm lầy tư tưởng...\"', 13200, 1, 0, 500),
(157, 'ctckvcgtt1.jpg', 'Chàng trai chuyển kiếp và cô gái thiên tài 1', 'Nora Kohigashi', 'Phụ nữ', '2023-07-10', '13x18 cm', 261, '', 13500, 1, 0, 500),
(158, 'bgct.jpg', 'Ba gã cùng thuyền', 'Jerome K. Jerome', 'Văn học', '2023-07-10', '13 x 20.5 cm', 262, '\"Bọn hắn có bốn mạng (tính cả con chó), và bọn hắn tiến hành chuyến du hành sông Thames để đời này với một lý do chính đáng không để đâu cho hết: để thư giãn. Quả thật, nếu không tính đến sự cứng đầu cứng cổ của mớ hành lý, sự vô ơn của con thuyền, sự quỷ quyệt của cái ấm trà, sự om sòm của bầy thiên nga (v.v. và v.v.) thì ái chà, bọn hắn quả đã được thư giãn thật. Thêm vào đó, bọn hắn còn được biết thế nào là một chuyến du hành đích thực…\"', 8800, 1, 0, 500),
(159, 'lcncnt-t1.jpg', 'Lời của Nietzsche cho người trẻ - Tập 1', 'Shiratori Haruhiko', 'Thế Giới', '2023-09-08', '14.5x20.5 cm', 280, '\"Trong làng triết học phương Tây, Nietzsche có lẽ là một trường hợp hiếm hoi không khiến cho người ta phải sợ hãi [vì trừu tượng] hay ngao ngán [vì kinh viện]. Cũng vậy ở Việt Nam, kể từ khi các tác phẩm của Nietzsche lần đầu xuất hiện, biết bao nhiêu thế hệ trẻ đã đọc và yêu mến ông, mang theo tư tưởng mãnh liệt và hân hoan của ông trong hành trang của đời mình, cùng với những tình yêu, hoài bão và đổ vỡ.\"', 10800, 1, 0, 500),
(160, 'bmtnh.jpg', 'Bóng ma trong nhà hát', 'Gaston Leroux', 'Văn học', '2023-07-31', '15x24 cm', 360, '\"Nhà hát có “ma”??? Nhà hát lớn Paris.Những sự việc lạ lùng liên tiếp xảy ra từ khi các ngài Moncharmin và Richard tiếp quản vị trí: cái chết của trưởng bộ phận dàn dựng sân khấu trong tư thế treo cổ dưới tầng hầm, bức thư nặc danh đe dọa hai tân giám đốc, diva Carlotta bỗng “hát như cóc kêu” trên sân khấu, đèn chùm trong khán phòng rơi đè chết người... Cùng lúc đó, Christine, nữ ca sĩ vô danh với giọng hát “như mèo hen” bỗng như thoát xác, cất tiếng hát làm rung động công chúng. Tất cả chỉ là trùng hợp ngẫu nhiên hay có bàn tay một thế lực thần bí nào?\"', 12000, 1, 0, 500),
(161, 'lskh.jpg', 'Lược sử khoa học', 'William Bynum', 'Thế Giới', '2023-07-31', '15.5 x 24cm', 364, '\"Cuộc sống hiện đại với vô vàn sự vật hết sức quen thuộc mà mỗi khi dừng lại để nghĩ về chúng, con người không khỏi ngạc nhiên và thán phục trí tuệ siêu phàm của các bậc tiền nhân hàng nghìn năm qua: những con số mà chúng ta viết, những máy vi tính cá nhân mà chúng ta sử dụng, gần gũi hơn nữa là cấu tạo và chức năng của các cơ quan trong cơ thể người. Những sự thật như Trái Đất quay quanh Mặt Trời hay lực hút khiến mọi vật trên Trái Đất rơi xuống theo chiều thẳng đứng cũng đã trải qua một lịch sử gian nan mới được phổ biến như ngày nay.\"', 15900, 1, 0, 500),
(162, 'dc.jpg', 'Diệt chủng', 'Takano Kazuaki', 'Hội nhà văn', '2023-06-05', '15.5x24 cm', 585, '\"Koga Kento, cậu sinh viên cao học chuyên ngành hóa dược, đột ngột nhận được email từ người cha quá cố. Bức thư tuyệt mệnh lạ lùng đã dẫn cậu lần ra một phòng thí nghiệm tư nhân bí ẩn. Cha cậu – một\"', 27900, 1, 0, 500),
(163, 'vclh.jpg', 'Vật chứa linh hồn', 'Frances Hardinge', 'Phụ nữ', '2023-03-17', '15.5x24 cm', 420, '\"Khi thân xác nằm lại, linh hồn trở nên lạc lối và cần nơi ẩn náu.\"', 20000, 1, 0, 500),
(164, 'lncc.jpg', 'Lời nhắn cuối cùng', 'Laura Dave', 'Hà Nội', '2023-05-24', '14 x 20.5cm', 400, '\"Hannah Hall có một cuộc hôn nhân muộn màng nhưng hạnh phúc với Owen Michaels, bất chấp những khó khăn xảy đến giữa cô và Bailey, đứa con gái riêng mười sáu tuổi của Owen với người vợ trước. Bỗng nhiên một ngày Owen Michaels biến mất, chỉ để lại một lời nhắn bí hiểm: “Hãy bảo vệ nó”, mà Hannah hiểu rằng người được nhắc đến chính là Bailey. Khao khát một câu trả lời khi mà hạnh phúc gia đình bỗng vuột khỏi tầm tay, Hannah cùng Bailey cất công đi tìm Owen, để rồi nhận ra người chồng, người cha của họ còn một quá khứ cay đắng và bí mật mà anh không bao giờ nhắc đến. \"', 16000, 1, 0, 500),
(165, 'cvc.jpg', 'Cha và Con (Ivan Turgenev)', 'Ivan Turgenev', 'Văn học', '2023-05-24', '14 x 20.5cm', 405, '“Điều quan trọng duy nhất là hai lần hai là bốn còn mọi thứ khác đều vô nghĩa.”', 12000, 1, 0, 500),
(166, 'dl-nltttdvcxcptan.jpg', 'Điềm lành - Những lời tiên tri tuyệt đích và chuẩn xác của phù thủy Agnes Nutter', 'Neil Gaiman', 'Phụ nữ', '2022-12-23', '15.5x24 cm', 448, '\"Quỷ Crowley và thiên thần Aziraphale biết rằng Tận Thế sắp sửa đến với thế giới này, với sự giáng lâm của Kẻ Chống Chúa trong hình hài đứa trẻ sơ sinh. Đáng lẽ cả hai phải lấy làm sung suớng: cuộc chiến tối hậu giữa thiên đường và địa ngục, dù phe nào thắng, thì cũng sẽ hủy diệt thế giới này, kết thúc cuộc giằng co hàng thiên niên kỷ giữa Thiện và Ác. Nhưng khốn nỗi, cả Crowley và Aziraphale lại thấy nuối tiếc thế giới của nhân loại. Thế giới con người vừa nhếch nhác, ngu xuẩn, lại vừa độc địa, thế nhưng nó cũng thú vị ghê gớm, đến nổi viễn cảnh phải sống ở một nơi toàn địa ngục hay toàn thiên đường trở nên không thể chịu đựng nổi với cả hai. Thiên thần và ác quỷ cùng tham gia vào một mưu đồ vừa khôn ngoan, vừa dớ dẩn, để cứu thế giới khỏi họa diệt vong.\"', 22000, 1, 0, 500),
(167, 'bt.jpg', 'Bọ tuyết', 'Yasushi Inoue', 'Phụ nữ', '2023-03-22', '14x20.5 cm', 336, '\"Rời xa cha mẹ từ khi mới lên năm, cậu bé Kousaku đến sống cùng bà lão Onui trong căn nhà trát đất bình dị nơi thôn dã. Vốn là vợ bé của ông cố Kousaku, bà Onui phải chịu bao điều tiếng và cái nhìn phán xét từ người làng, nhưng bà vẫn dành cho Kousaku một tình thương đặc biệt. Và cứ thể dưới đôi bàn tay bà chăm sóc, tầm hồn non trẻ của Kousaku lớn lên từng ngày giữa thiên nhiên Izu thơ mộng đầy nắng ấm và cỏ thơm.\"', 13500, 1, 0, 500),
(168, 'esdccm.jpg', 'Em sẽ đến cùng cơn mưa', 'Ichikawa Takuji', 'Văn học', '2023-03-24', '13 x 20.5 cm', 332, '', 10800, 1, 0, 500),
(169, 'vdqtmb.jpg', 'Vùng đất quỷ tha ma bắt', 'Kevin Chen', 'Hà Nội', '2023-03-27', '14 x 20.5cm', 413, 'Quê hương là một vùng đất nhỏ...', 16800, 1, 0, 500),
(170, 'tt.jpg', 'Thú tội', 'Minato Kanae', 'Hội nhà văn', '2023-03-24', '14 x 20.5cm', 245, '\"Moriguchi là giáo viên cấp hai đồng thời là bà mẹ đơn thân của một cô gái 4 tuổi. Một hôm, xác cô bé được phát hiện trong bể bơi trường học. Cảnh sát nhận định đây là vụ tai nạn nhưng Moriguchi biết ai đã sát hại con gái mình -  kẻ ở ngay trong lớp học do mình chủ nhiệm. Moriguchi bắt đầu kế hoạch báo thù của riêng cô...\"', 9900, 1, 0, 500),
(171, 'ttbnr-h.jpg', 'Thị trấn bị nguyền rủa - HEX', 'Thomas Olde Heuvelt', 'Phụ nữ', '2023-03-29', '15.5x24 cm', 446, '\"Bất cứ ai sinh ra tại nơi đây, sẽ phải ở lại cho đến chết.\"', 22200, 1, 0, 500),
(172, 'tnvd.jpg', 'Thiên nga và dơi', 'Higashino Keigo', 'Hà Nội', '2023-03-31', '14 x 20.5cm', 641, '\"Xác của ông Shiraishi Kensuke, một luật sư sống tại Tokyo được tìm thấy trong một chiếc xe bị bỏ lại trên đường. Không lâu sau đó, ông Kuraki Tatsuro, hơn sáu mươi tuổi, ngụ tại tỉnh Aichi đứng ra nhận mọi tội lỗi, bao gồm cả tội giết người trong một vụ án khác đã xảy ra cách đấy hơn ba mươi năm. Dù không thể xác minh được lời khai của ông Tatsuro, cảnh sát vẫn khép lại vụ án.\"', 26900, 1, 0, 500),
(173, 'ct-stg-2.jpg', 'Ca trực - Silo Tháp Giống #2', 'Hugh Howey', 'Hội nhà văn', '2023-03-31', '15.5x24 cm', 643, 'Có những bí mật ta cần quên đi.', 27200, 1, 0, 500),
(174, 'hncbc-tVcttdbccp.jpg', 'Hội nghị của bầy chim - Tập V của Trại trẻ đặc biệt của cô Peregrine', 'RANSOM RIGGS', 'Hội nhà văn', '2023-03-29', '14 x 20.5cm', 420, 'Những lời trăn trối của ông H – liên hệ cuối cùng mà Jacob Portman có được với cuộc sống bí mật của ông nội Abe – giao cho Jacob một nhiệm vụ: đưa người đặc biệt mới tiếp xúc tên Noor Pradesh đến với đặc vụ V.', 16500, 1, 0, 500),
(175, 'hvvc.jpg', 'Hãy về với cha', 'Shin Kyung Sook', 'Hà Nội', '2023-04-03', '14 x 20.5cm', 466, '\"Mất đi con gái, nữ nhà văn thu mình lại, đoạn tuyệt với mọi mối quan hệ, thậm chí với chính những người thân trong gia đình, hòng trốn tránh nỗi đau và dằn vặt quá lớn. Phải tới khi về lại quê hương để chăm sóc người cha già yếu một thân một mình, cô mới nhận ra tấm khiên mình dựng lên bấy lâu cũng chính là mũi giáo đâm vào lòng những người ruột thịt. \"', 17900, 1, 0, 500),
(176, 'ntt.jpg', 'Người truyền tin (phần thứ ba của Người truyền ký ức)', 'Lois Lowry', 'Hội nhà văn', '2023-04-24', '14 x 20.5cm', 189, '\"Lại là Trái Đất trong tương lai. Lại một thế giới hoàn toàn khác. Không phải xã hội công nghệ phát triển vượt bậc và quy củ đến lạnh người. Cũng chẳng phải thị trấn lạc hậu nơi kẻ yếu thế bị ruồng bỏ man rợ. Rốt cuộc, trong phần thứ ba của bộ tứ Người truyền ký ức, ta cũng gặp một cộng đồng tốt lành, nơi người người đối xử với nhau thương yêu và trân trọng…\"', 10000, 1, 0, 500),
(177, 'tm.jpg', 'Truyện ma (M.R.James)', 'M.R.James', 'Hội nhà văn', '2023-05-19', '15.5x24 cm', 457, '\"Ba mươi truyện ma kinh điển kể về một thế giới ma mị ám ảnh của M. R. James, cha đẻ của thể loại truyện ma hiện đại.\"', 14900, 1, 0, 500),
(178, 'nccs-t2qd.jpg', 'Ngụy chứng của Solomon - Tập 2 Quyết định', 'Miyabe Miyuki', 'Dân Trí', '2023-04-28', '15.5x24 cm', 611, '\"Hai người bạn cùng lớp chết không rõ ràng. Giới truyền thông đưa tin đầy thiên kiến. Thầy cô bỏ mặc học sinh, tìm mọi cách để lấp liếm và xoa dịu tình hình. Ở thế giới bên kia, Kashiwagi\"', 30000, 1, 0, 500),
(179, 'm.jpg', 'Momo (Michael Ende)', 'Michael Ende', 'Hội nhà văn', '2023-05-15', '14 x 20.5cm', 278, '', 9000, 1, 0, 500),
(180, 'hddncg.jpg', 'Hãy đi đặt người canh gác', 'Harper Lee', 'Văn học', '2023-05-24', '14 x 20.5cm', 304, '\"Nước Mỹ những năm 1950. Làn sóng đòi quyền bình đẳng cho người da đen đang dâng trào cả nước; trong vài tiểu bang miền Nam, người da trắng tập hợp để bảo vệ cái mà họ coi là bản sắc bị tước đoạt của mình… Trở về thăm nhà như lệ thường, Jean Louise không ngờ mình sắp bước chân vào giữa cuộc chiến tư tưởng của thập kỷ. Cô sẽ ngỡ ngàng thấy người cha Atticus, vị anh hùng vì lẽ công bình của cô thuở bé, dường như đã đổi màu niềm tin; người thân, bạn bè lâu năm bỗng dưng xa lạ; thị trấn Maycomb quê hương và chính cô không còn nhận ra nhau. Công lý ở đâu, đúng sai là gì? Khi thành trì lương tâm tuổi thơ cô đã vụn vỡ từng viên đá một, Jean Louise bắt đầu đi tìm một sự thật của riêng mình.\"', 12500, 1, 0, 500),
(181, 'chp.jpg', 'Chiếc hộp Pandora', 'Bernard Werber', 'Văn học', '2023-05-19', '15.5x24 cm', 521, '\"Trong lúc xem một buổi biểu diễn thôi miên, René, một giáo viên lịch sử, được lựa chọn làm người tham gia tiết mục cuối cùng. Vừa nghi hoặc vừa tò mò, anh nhập vai vào trò chơi, và đột nhiên thấy mình đang ở kiếp sống trước. Nhưng đó mới chỉ là đoạn bắt đầu… \"', 24900, 1, 0, 500),
(182, 'mttrrong.jpg', 'Một thoáng ta rực rỡ ở nhân gian ( Bìa cứng)', 'Ocean Vuong', 'Hội nhà văn', '2022-12-14', '14x20.5 cm', 306, '“Vuong thực sự có thiên tài quan sát.” The New York Times', 19500, 1, 0, 500),
(183, 'vrnv.jpg', 'Và rồi núi vọng', 'Khaled Hosseini', 'Hội nhà văn', '2021-10-06', '14x20.5 cm', 512, '\"Afghanistan, mùa thu năm 1952.\"', 14800, 1, 0, 500),
(184, 'tavhp.jpg', 'Tội ác và hình phạt', 'Fyodor Dostoyevsky', 'Hà Nội', '2021-07-05', '17x25 cm', 600, '\"Raskolnikov, một cựu sinh viên luật, sống ở St. Petersburg trong sự nghèo đói, túng thiếu. Một mặt, chàng là một thanh niên lương thiện, tốt bụng; mặt khác, chàng nung nấu một niềm tin rằng mình thuộc về lớp người siêu phàm, loại người có thể phá bỏ luật lệ để làm nên việc lớn. Trong những ngày tháng bần cùng, bất mãn, chàng quyết định ra tay sát hại và cướp của một mụ già cầm đồ, mà chàng tin là không đáng sống trên đời này, hòng sử dụng số tiền đó để giúp đỡ mẹ và em gái ở quê, cũng như giải phóng bản thân khỏi cảnh ngộ hiện tại. Nhưng cái chàng không ngờ đến là hành động ấy, tưởng chừng là một bước chứng tỏ mình có thể vượt qua ranh giới luân lý của số đông để trở nên vĩ đại, lại đẩy chàng vào một cuộc khủng hoảng trầm trọng về đạo đức và tinh thần.\"', 30000, 1, 0, 500),
(185, 'tl.jpg', 'Tàn lửa', 'Shizukui Shusuke', 'Hà Nội', '2022-03-21', '14x20.5 cm', 484, '', 18500, 1, 0, 500),
(186, 'atdla.jpg', 'Anne tóc đỏ làng Avonlea', 'Lucy Maud Montgomery', 'Hội nhà văn', '2022-03-11', '14x20.5 cm', 404, '\"Mới ngày nào cô bé Anne mặt tàn nhang và dễ kích động vừa mới đặt chân lên đảo Hoàng Tử Edward đã gây bao xôn xao, xáo trộn. Vậy mà giờ đây Anne đã vụt lớn thành một thiếu nữ mười sáu tuổi tươi tắn và xinh đẹp. Tuổi mười sáu đặt lên vai cô nhiều trọng trách: một cô giáo làng với tham vọng gieo những ước vọng đẹp đẽ trong tâm hồn trẻ thơ, một sáng lập viên Hội Cải tạo với mong muốn biến Avonlea thành một ngôi làng xanh sạch đẹp hơn, và một người bảo hộ bất đắc dĩ của hai đứa bé sinh đôi mồ côi rất đáng yêu nhưng cũng gây lắm chuyện đau đầu. Nhưng tuổi mười sáu vẫn không làm mất đi trong Anne tính lãng mạn vô phương cứu chữa cũng như chẳng khiến Anne thôi vướng vào vô số sự cố dở khóc dở cười chẳng khác gì những học trò nhỏ tinh nghịch và hăng hái của cô.\"', 11200, 1, 0, 500),
(187, 'ttd1-nt-cntt.jpg', 'Trúc thư dao 1 - Nước Tần - Có nàng tên Thập', 'Văn Giản Tử', 'Hà Nội', '2022-03-21', '14x20.5 cm', 528, '', 17900, 1, 0, 500),
(188, 'dba.jpg', 'Dịch bệnh Atlantis', 'A.G. Riddle', 'Hội nhà văn', '2022-03-21', '15.5x24cm', 496, '\"Tại Marbella, Tây Ban Nha, Tiến sĩ Kate Warner tỉnh dậy trước thực tại kinh hoàng: Loài người đang đứng trên bờ vực tuyệt chủng. Một đại dịch chưa từng có đang càn quét địa cầu. Gần nửa tỷ người đã chết - còn những người sống sót thì phải chịu một trong hai số phận: hoặc thoái hóa, hoặc tiến hóa thần tốc.\"', 19500, 1, 0, 500),
(189, 'thct.jpg', 'Tâm hồn cao thượng', 'Edmondo De Amicis', 'Phụ nữ', '2022-03-23', '15.5x24 cm', 432, '\"“Triệu triệu con em, tất cả cùng học hỏi, cũng những điều ấy qua hàng trăm thể thức khác nhau. Hãy hình dung cái tổ kiến học sinh hàng trăm dân tộc rộng khắp, cái công cuộc vận động bất tận con đang dự phần ấy để mà tự nhủ:\"', 15000, 1, 0, 500),
(190, 'thct.jpg', 'Tâm hồn cao thượng (Bìa cứng)', 'Edmondo De Amicis', 'Phụ nữ', '2022-03-31', '15.5x24cm', 434, '\"“Triệu triệu con em, tất cả cùng học hỏi, cũng những điều ấy qua hàng trăm thể thức khác nhau. Hãy hình dung cái tổ kiến học sinh hàng trăm dân tộc rộng khắp, cái công cuộc vận động bất tận con đang dự phần ấy để mà tự nhủ:\"', 22000, 1, 0, 500),
(191, '9mcl.jpg', '9 màu chia ly', 'Bernhard Schlink', 'Hội nhà văn', '2022-03-25', '14x20.5 cm', 256, '\"Được viết ra ở nửa muộn của tuổi bảy mươi, với \"', 12000, 1, 0, 500),
(192, 'bvan-tccso.jpg', 'Bàn về âm nhạc - Trò chuyện cùng Seiji Ozawa', 'Haruki Murakami', 'Dân Trí', '2022-06-29', '14x20.5 cm', 400, '\"Nhạc trưởng và nhà văn, bên nhau, cùng lắng nghe những đĩa nhạc, ôn lại những kỷ niệm về quãng đời Seiji Ozawa đã trải qua cùng những bậc thầy như Glenn Gould, Bernstein, Karajan..., chia sẻ niềm đồng cảm sâu sắc về âm nhạc của Beethoven, Brahms và Mahler... Một cuộc phỏng vấn chạm tới âm vang của trái tim và linh hồn của sự sáng tạo, kéo dài trong suốt một năm ròng.\"', 16800, 1, 0, 500),
(193, 'cgmvt.jpg', 'Cô gái mặc váy tím', 'Imamura Natsuko', 'Hà Nội', '2022-07-18', '14 x 20.5 cm', 160, '', 9500, 1, 0, 500),
(194, 'mmt.jpg', 'Mã mẫu tử', 'Carole Stivers', 'Thế Giới', '2022-04-12', '15.5x24 cm', 381, '', 18000, 1, 0, 500),
(195, 'atctr.jpg', 'AI THẢ CÁC THẦN RA?', 'Maz Evans', 'Hội nhà văn', '2022-07-18', '14 x 20.5 cm', 412, '', 17900, 1, 0, 500),
(196, 'st.jpg', 'Sáng trăng', 'Guy De Maupassant', 'Phụ nữ', '2022-07-18', '14 x 20.5 cm', 188, '\"\"\"Vì sao Chúa tạo ra điều đó? Một khi đêm đã dành cho giấc ngủ cho nỗi vô tri vô giác cho sự nghỉ ngơi lãng quên hết thảy thì vì sao lại khiến cho đêm thâu duyên dáng hơn ban ngày êm dịu hơn bình minh và chiều hôm và tại sao vì tinh tú từ tốn quyến rũ thi vị hơn vầng dương và do hết sức kín đáo dường như dành để rọi soi những điều quá ư tế nhị và bí ẩn đối với ánh sáng lồ lộ vì tinh tú ấy lại đến làm cho bóng đêm cực kỳ trong suốt?\"', 7500, 1, 0, 500),
(197, 'kasgatcdn.jpg', 'Không ai sống giống ai trong cuộc đời này', 'Jean-Paul Dubois', 'Hội nhà văn', '2022-07-29', '14x20.5cm', 316, '', 14500, 1, 0, 500),
(249, 'adknm.jpg', 'Ăn dặm không nước mắt (TB 2023)', 'Nguyễn Thị Ninh', 'Thế Giới', '2023-08-07', '14.5x20.5cm', 176, '\"Thế nào là ăn dặm không nước mắt? Là khi con không khóc vì bị ép ăn và mẹ không khóc vì con bỏ bữa. Là khi con hào hứng trước mỗi bữa ăn và mẹ hạnh phúc thấy con ăn hết phần đồ ăn mẹ làm.  Cuốn sách Ăn dặm không nước mắt của mẹ Xoài, một người mẹ Việt nuôi con ở Nhật hẳn sẽ mang đến nhiều gợi ý. Học hỏi các bà mẹ Nhật, mẹ Xoài đã cố gắng tập cho bé Xoài thói quen ăn uống tự giác, tập trung. Mẹ Xoài cũng tôn trọng sở thích, nhu cầu và mong muốn của bé. Còn để khiến bé háu ăn và ăn được nhiều hơn, mẹ Xoài đã chế biến các món ăn thật ngon lành, đa dạng, trang trí vô cùng đẹp mắt để bé chỉ nhìn thôi đã thèm.\"', 120000, 2, 15, 500),
(250, 'stadcm.jpg', 'Sổ tay ăn dặm của mẹ', 'BS Lê Thị Hải', 'Thế Giới', '2020-03-23', '\"14 x 20,5cm\"', 267, '\"“Trong quá trình khám chữa bệnh, tôi gặp nhiều trường hợp các em bé bị suy dinh dưỡng, còi xương không phải vì gia đình không có điều kiện mà do… quá có điều kiện. Tôi gặp những em bé khá bụ bẫm nhưng bố mẹ vẫn đưa đi khám vì thấy con không tăng cân và cho là con biếng ăn. Trong khi đó cũng có những trường hợp bố mẹ nói rằng con ăn rất được nhưng thực ra khẩu phần dinh dưỡng lại không đủ hoặc không cân đối. Nhưng biếng ăn là câu chuyện tôi gặp nhiều nhất. Chưa bao giờ câu chuyện cho bé ăn gì và ăn như thế nào lại khiến các bố mẹ lo lắng nhiều như vậy.\"', 99000, 2, 0, 500),
(251, 'cvmdlkkh.jpg', 'Chó và mèo dưới lăng kính khoa học', 'Antonio Fischetti', 'Thế Giới', '2019-11-28', '25x32 cm', 62, '\"Bạn có nuôi chó hoặc mèo? Chắc hẳn là bạn rất thân thiết với người bạn bốn chân ấy. Vậy bạn có hiểu những hành vi, cử chỉ của “boss”? Chẳng hạn, tại sao chó lại vẫy đuôi cả khi vui mừng lẫn khi căng thẳng? Có nên nhìn thẳng vào mắt một con chó đang giận dữ? Những tiếng gừ gừ của mèo có ý nghĩa gì? Tại sao mèo lại khó tính với đồ ăn đến thế?\"', 125000, 2, 0, 500),
(252, 'tdcqvn.jpg', 'Từ điển chức quan Việt Nam', 'Đỗ Văn Ninh', 'Thông Tấn', '2019-06-24', '17x25 cm', 678, '\"Lịch sử lâu đời hơn hai nghìn năm của nước Việt Nam đã tạo nên những hệ thống quan lại liên tục được cải tổ theo sự vận động của các thời kỳ, các triều đại. Một hiểu biết vừa tổng thể, vừa chi tiết về bộ máy cai trị của xã hội là điều kiện cần thiết để chúng ta hôm nay có thể đọc sử và hiểu sử.\"', 250000, 2, 0, 500),
(253, 'dctclm-klvtch.jpg', 'Địa chính trị của loài muỗi - Khái lược về toàn cầu hóa', 'Erik Orsenna', 'Hà Nội', '2019-10-04', '14 x 20.5 cm', 328, '\"Từ 250 triệu năm trước, muỗi đã có mặt trên Trái đất, vậy nhưng chúng chẳng nán lại lâu la gì: vòng đời trung bình của một con muỗi là 30 ngày. Rất đông đúc (3564 loài), có mặt trên khắp các châu lục, chúng giết người vô tội vạ (750 000 người mỗi năm)! Khi chúng vo ve bên tai ta thì không phải chỉ là để quấy rầy giấc khuya của ta, mà còn là để kể cho chúng ta một câu chuyện : câu chuyện về những đường biên giới bị xóa nhòa, về những đột biến không ngừng, về những cuộc chiến đấu để sinh tồn. Và đặc biệt là câu chuyện tay ba giữa muỗi, ký sinh trùng và con mồi (chính là chúng ta).\"', 108000, 2, 0, 500),
(254, 'ntshpgtc.jpg', 'Nghệ thuật sống hạnh phúc gặt thành công', 'Rolf Dobelli', 'Thế Giới', '2019-07-09', '14x20.5 cm', 396, '\"Từ xưa tới nay, con người vẫn luôn tự hỏi thế nào là một đời hạnh phúc? Con người ta nên sống ra sao? Điều gì rạo nên một cuộc sống hạnh phúc? Hạnh phúc tại tâm hay vì đạt được những mục tiêu trong đời? Sẽ tốt hơn nếu chủ động tìm kiếm hạnh phúc hay chủ động né tránh những điều khiến ta không hạnh phúc? Có người dành cả đời mải miết đi tìm câu trả lời cho những câu hỏi này, và vì một lẽ nào đó chỉ luôn nhận lại thất vọng. Vì sao ư? Phải chăng vì họ cứ kiếm tìm một nguyên tắc duy nhất, một nguyên lý duy nhất, một quy luật duy nhất, trong khi chén thánh đó của cuộc sống hạnh phúc đâu có tồn tại.\"', 129000, 2, 0, 500),
(255, 'nvnttg-cltll.jpg', 'Nhân vật nổi tiếng thế giới– Các lãnh tụ lẫy lừng', 'Renzo Barsotti', 'Hà Nội', '2019-09-20', '24x31 cm', 126, 'Mong muốn được sống tử tế và sống có ích là điều then chốt tạo nên một cuộc sống hạnh phúc cho bạn trong tương lai. Các nhà lãnh đạo tự cổ chí kim đều mang trong mình những tố chất khơi gợi cảm hứng ấy và truyền cho bạn động lực bước lên những nấc thang mới.', 149000, 2, 0, 500),
(256, 'cthp.jpg', 'Công thức hạnh phúc', 'Manfred F. R. Kets de Vries', 'Thế Giới', '2020-08-10', '14x20.5 cm', 164, 'Hạnh phúc thực ra là gì? Công thức nào tạo ra hạnh phúc?', 88000, 2, 0, 500),
(257, 'skkrr.jpg', 'Sống khỏe không rủi ro', 'Frédéric Saldmann', 'Dân Trí', '2019-12-19', '14 x 20.5cm', 348, '\"Nên rửa tay trước hay sau khi đi vệ sinh, đá lạnh có thể giúp giảm cân, ôm giúp cắt cơn đói, tiểu đứng hay tiểu ngồi có lợi, đạp xe nhiều làm giảm nhu cầu tình dục,...? Bằng cách cung cấp những quy tắc vệ sinh đáng ngạc nhiên, những cách cắt cơn đói tự nhiên, danh sách những loại thực phẩm chống tăng cân,... \"', 118000, 2, 0, 500),
(258, 'llnmqo.jpg', 'Lịch lãm như một quý ông', 'Élisabeth Jammes', 'Thế Giới', '2019-12-04', '15x21 cm', 128, '\"Lịch lãm luôn là yếu tố tiên quyết tạo nên sức hấp dẫn cho phái mạnh. Với tất cả những ai đang loay hoay tìm kiếm phong cách, hoặc xây dựng hình ảnh người đàn ông hiện đại, thành công và thu hút, \"', 108000, 2, 0, 500),
(259, 'nvnttg-vhvnt.jpg', 'Nhân vật nổi tiếng thế giới – Văn hóa và nghệ thuật', 'Renzo Barsotti', 'Hà Nội', '2020-03-02', '24x31 cm', 126, 'Các hoạt động nghệ thuật và văn hóa giúp chúng ta giải tỏa căng thẳng trong cuộc sống và còn từng bước vun đắp tâm hồn ta.', 149000, 2, 0, 500),
(260, 'nvnttg-khvpm.jpg', 'Nhân vật nổi tiếng thế giới – Khoa học và phát minh', 'Renzo Barsotti', 'Hà Nội', '2020-03-02', '24x31 cm', 126, '\"Nhắc đến khoa học, hẳn chúng ta sẽ nghĩ ngay đến kiến thức. Nhưng cuốn sách này không chỉ chứa những kiến thức khô cứng. Sách mở ra cho bạn thấy nhân sinh quan tươi sáng và tinh thần vươn lên của các vĩ nhân, sách còn kể lại những trải nghiệm xây đắp nên sự vĩ đại của họ.\"', 149000, 2, 0, 500),
(261, 'stmb.jpg', 'Sổ tay mẹ bầu ( TB 2019)', 'Ngọc Ánh', 'Lao động', '2019-04-18', '14x20.5 cm', 260, 'Bác sĩ', 82000, 2, 0, 500),
(262, 'bbpt.jpg', 'Ba bài pháp thoại', 'Đại sư Jetsunma Palmo', 'Hội nhà văn', '2019-04-25', '14 x 20.5cm', 121, '\"Để dẫn dắt TÂM vượt qua chướng ngại trên con đường đi tới giác ngộ, con người cần gì? Những bài pháp thoại của Đại ni sư Jetsunma Tenzin Palermo, người từng  có 12 năm thiền định trong hang núi, giúp soi tỏ theo một cách hiếm thấy. Bởi vì hiểu được bản thân mình như một đối tượng khách quan không phải điều dễ dàng, và bậc thầy, từ sự chứng nghiệm của bản thân, đãmở lòng cầm tay dẫn lối. TÂM có thể đạt tới yên tĩnh, tỉnh giác, có thể được trong veo trở lại như mặt hồ phản ánh bầu trời xanh, được khai mở dần như những cánh hoa mở ra vẻ đẹp sâu thẳm. TÂM cần được hiểu và luyện tập đúng đắn để mở đường cho sự chứng nghiệm giác ngộ.\"', 69000, 2, 0, 500),
(263, 'lsctcttn.jpg', 'Lịch sử chính trị cho thanh thiếu niên', '\"Alex Frith, Rosie Hore & Louie Stowell\"', 'Lao động', '2019-04-22', '17 x24cm', 127, '\"Chính trị  là một trong những chủ đề người ta hạn chế đề cập đến trong những cuộc nói chuyện lịch sự, có phải vì các quan điểm chính trị khác nhau dễ gây tranh cãi ? Nhưng nếu bạn muốn hiểu về thế giới xung quanh, bạn phải hiểu về chính trị. Chính trị là cách bất kỳ nhóm người nào quyết định cách điều hành một nhóm, một thành phố, một đất nước hay một lục địa. Chính trị là cách đưa ra các quyết định: nhỏ bé như quyết định ai là lớp trưởng; to tát như bỏ phiếu bầu đại biểu quốc hội hay Chủ tịch nước. Chính trị ở khắp mọi nơi và sớm muộn gì, chúng ta cũng sẽ là một phần của chính trị.\"', 118000, 2, 0, 500),
(264, 'btdcb-gpdctl_mtd.jpg', 'Buông tay để con bay  - Giải pháp để con tự lập & mẹ tự do', 'Thu Hà (Mẹ Xu-Sim)', 'Thế Giới', '2019-05-25', '14.5x20.5 cm', 250, '\"Có cha mẹ nào không muốn con mình trở thành những đứa trẻ biết tự học, tự phục vụ bản thân, tự tin, tự hạnh phúc và có chính kiến. Rất nhiều khi, bí kíp không nằm ở việc bố mẹ phải làm những gì, phải ngồi kèm con học bao lâu, phải trả lời mọi điều con hỏi đến đâu, phải dắt con đến những trung tâm học thêm nào, hay đăng ký cho con tham gia các trại hè kỹ năng tốn kém ra sao. Rất nhiều khi, điều quan trọng lại giản dị đến bất ngờ: không làm gì. Buông.\"', 100000, 2, 0, 500),
(265, 'dttystv.jpg', 'Dịch từ tiếng yêu sang tiếng việt ( TB 2019)', 'Lê Bích', 'Hội nhà văn', '2019-01-25', '14 x15cm', 211, '\"Tình yêu là mù quáng! Tây ta đều nói \"\"Love is blind\"\". Đúng vậy! Tình yêu là mù quáng chính vì thế nên bây giờ Lê Bích đã hiểu vì sao yêu nhau người ta cứ phải sờ soạng mới hiểu được nhau để rồi sau đó hôn nhân sẽ làm họ sáng mắt ra.\"', 85000, 2, 0, 500),
(266, 'ttktl3.jpg', 'Thủ thỉ kiến thức lớp 3', 'Mitsuharu Ohyama', 'Thế Giới', '2019-01-04', '15 x 20.5 cm', 195, 'Cuốn', 85000, 2, 0, 500),
(267, 'nkhlb.jpg', 'Nhật ký học làm bánh (tập 1)', 'Linh trang', 'Thế Giới', '2019-02-28', '\"14,5 x 20,5 cm\"', 220, '\"Được trông đợi ngay từ khi còn là bản thảo, cuốn sách \"', 105000, 2, 0, 500),
(268, 'tntmtp-ctnct.jpg', 'Tín ngưỡng thờ Mẫu Tứ phủ - Chốn thiêng nơi cõi thực (TB 2019)', 'Thạc sĩ Trần Quang Dũng (chủ biên)', 'Thế Giới', '2019-05-14', '17x25 cm', 151, '\"Trong đời sống tinh thần của người Việt, niềm tin tâm linh có vai trò vô cùng quan trọng và là biểu hiện sinh động của văn hóa Việt. Tín ngưỡng không chỉ giúp xoa dịu nỗi đau và thiệt thòi của số phận, mà còn động viên, dẫn dắt mỗi kiếp người không ngừng hướng thiện, vượt khó vươn lên trong cuộc sống. Trong các tín ngưỡng ở Việt Nam, Tín ngưỡng thờ Mẫu Tứ phủ là tín ngưỡng nội sinh mang bản sắc Việt. Trải bao thăng trầm và có lúc bị cấm đoán, Tín ngưỡng vẫn âm thầm được gìn giữ, thực hành trong một cộng đồng dân tộc. Ngày nay, tín ngưỡng ấy đã trở thành một trong những biểu tượng của văn hóa Việt cũng và di sản văn hóa phi vật thể của nhân loại.\"', 138000, 2, 0, 500),
(269, 'ttktl4.jpg', 'Thủ thỉ kiến thức lớp 4', 'Mitsuharu Ohyama', 'Thế Giới', '2019-01-22', '15 x 20.5 cm', 199, 'Cuốn', 88000, 2, 0, 500),
(270, 'smcnmn.jpg', 'Sức mạnh của người mẹ Nhật', 'An Minjung', 'Thế Giới', '2018-06-25', '14x20.5 cm', 276, '\"Cuộc đời tác giả Ahn Min Jung bắt đầu thay đổi từ khi gặp người chồng Trung Quốc giỏi tiếng Nhật. Sau nhiều thăng trầm và đi tới kết hôn, cô đã sinh được một bé gái xinh đẹp tên là Lena và bắt đầu nuôi dạy con ở Nhật. Cuốn sách này kể lại hành trình nuôi dạy con mà người mẹ Hàn đích thân trải nghiệm trong quá trình nuôi dạy con gái tại Nhật, được trình bày với sự quan sát và văn phong báo chí đặc trưng của một phóng viên. Những bài tiểu luận dựa trên kinh nghiệm có thực của gia đình\"', 95000, 2, 0, 500),
(271, 'tnm.jpg', 'Tarot nhập môn', 'Kim Huggens', 'Hà Nội', '2019-01-24', '\"14 x 20,5 \"', 455, '\"Tarot – bộ môn vừa mang màu sắc chiêm đoán vừa mang tính nghệ thuật. Mỗi lá bài đem đến cho bạn những thông điệp được ẩn giấu từ quá khứ, hiện tại hoặc tương lai. Từng lá bài giống như một “bảo tàng nghệ thuật” thu nhỏ – từng bức tranh được gửi gắm trong đó đều chứa những thông điệp về nhân sinh quan.\"', 120000, 2, 0, 500),
(272, 'hfw-hhvta.jpg', 'How Food Works - Hiểu hết về thức ăn', 'Trần Trương Phúc Hạnh', 'Thế Giới', '2019-01-22', '\"19,5 x 23,5 cm \"', 255, 'Hướng dẫn đơn giản nhất và trực quan nhất từ trước đến nay về thức ăn và dinh dưỡng!', 300000, 2, 0, 500),
(273, 'cs-thsh.jpg', 'Cool Series - Toán học siêu hay', 'Katie Hewett - Tracie Young', 'Thế Giới', '2019-02-08', '\"20,5 x 15,5\"', 112, '\"Có thể toán là nhạt nhẽo và không hề đặc sắc với những người không sẵn sàng hiểu nó, nhưng với những người còn lại, toán là nơi mà phép màu và điều kỳ diệu tồn tại trong hình hài của những con số và phương trình, trong những lý thuyết và công thức. Toán đem đến sự tươi mới cho thế giới bình thường này và biến một tình huống tẻ nhạt trở thành niềm vui bất tận đến không thể tin được.\"', 85000, 2, 0, 500),
(274, 'ccdqtt.jpg', 'Cùng con đi qua tuổi teen', 'Chu Hồng Vân', 'Lao động', '2018-06-28', '14 x 20.5cm', 392, '\"Khi con bước vào tuổi dậy thì ẩm ương, dở trẻ con dở người lớn, thì cũng là lúc nhiều cha mẹ thường xuyên ở trong trạng thái bối rối, lo âu, thậm chí tăng xông, sốc nặng. Tại sao con bỗng nhiên ngang như cua? Tại sao con tức giận bừng bừng chỉ vì một lý do bé tí? Tại sao con thích một mình? Tại sao con lơ là gia đình mà thân thiết với bạn bè? Tại sao con ăn mặc không giống ai? Tại sao con yêu bạn khác giới? Tại sao con tò mò về sex? Có 1001 các vấn đề của tuổi teen nhưng hình như ngoài chuyện học hành ra, cha mẹ không mấy quan tâm.  Nhưng nếu cha mẹ biết đứa trẻ cảm thấy cô đơn, không được chia sẻ, căng thẳng và thậm chí tổn thương đến thế nào…\"', 108000, 2, 0, 500),
(275, 'cptcd.jpg', 'Có phải tại con đâu!', 'Isabelle Filliozat', 'Thế Giới', '2018-06-26', '16x20.5 cm', 176, '\"Khi trẻ đã lên 6, các bậc cha mẹ tưởng như được dễ thở hơn bởi không còn phải đối mặt với những trận ăn vạ, những cơn gào khóc nhưng thay vì thế thì: chạy nhảy khắp nơi, quên đồ đạc, không tập trung nổi, mất lòng tin, nổi khùng lên trước một việc nhỏ nhặt, hung hăng khi ở trường, khó chịu nơi bàn ăn, tè dầm ra giường,… - Những thử thách mới trong một chặng đường mới! Và liệu những la hét, quát mắng hay hình phạt có phải là giải pháp hay chỉ càng đổ thêm dầu vào lửa?\"', 75000, 2, 0, 500),
(276, '10kqkttg.jpg', '10 Kỳ quan kiến trúc thế giới', 'Alain Boyer', 'Thông Tấn', '2018-07-03', '25x25 cm', 50, '', 109000, 2, 0, 500),
(277, '10btdnlshh.jpg', '10 bức tranh đẹp nhất lịch sử hội họa', 'Sophie Crépon', 'Thông Tấn', '2018-07-03', '25x25 cm', 50, '', 109000, 2, 0, 500),
(278, 'qgidmvs.jpg', 'Quẳng gánh Ielts đi mà vui sống!', 'Lê Thanh Tùng', 'Thế Giới', '2018-07-05', '14 x 20.5cm', 324, '\"Tiếng Anh – thứ ngôn ngữ quốc tế - có vẻ như chưa bao giờ dễ tiếp cận đến thế. Ngày nay, với những trung tâm tiếng Anh mọc nên như nấm, chưa nói Internet ở mọi nơi, với vô số ứng dụng trên điện thoại phục vụ cho việc học thức ngôn ngữ này, tưởng chừng chinh phục nó sẽ là điều không quá khó nhọc.\"', 90000, 2, 0, 500),
(279, 'gdttdh.jpg', 'Giáo dục trẻ tự định hướng', 'Phương Đặng', 'Thế Giới', '2018-08-26', '14 x 20.5cm', 424, '- Giáo dục trẻ tự định hướng/tự chỉ huy thực sự là gì?', 115000, 2, 0, 500),
(280, 'dccyncccct.jpg', 'Để cho con yên nhưng cứ chuyển cho con tiền', 'Anthonye. Wolf', 'Thế Giới', '2018-08-25', '14x20.5 cm', 328, '\"Không có độ tuổi nào gây nhiều bối rối hơn tuổi mới lớn. Bối rối không chỉ cho chính những đứa trẻ đang trải qua độ tuổi ấy, mà còn cho những người xung quanh chúng, trên hết là các bậc cha mẹ. Những đứa con hôm qua còn là đứa trẻ vui vẻ, cởi mở, tự giác giúp đỡ cha mẹ việc nhà, hôm nay đã trở thành những cô cậu thiếu niên hay cáu gắt, sưng sỉa, không thiết động chân tay làm một việc gì mà chỉ biết đấu khẩu hoặc né tránh cha mẹ. Những người cha người mẹ hoang mang có thể sẽ tìm thấy sức mạnh cho mình từ cuốn cẩm nang về trẻ tuổi teen thời đại mới này của Anthony E. Wolf.\"', 110000, 2, 0, 500),
(281, 'man_ckm.jpg', '\"Mẹ ăn ngon, con khỏe mạnh\"', 'Nguyễn Thị Ninh', 'Thế Giới', '2018-07-27', '14.5x20.5 cm', 228, '\"Chế độ dinh dưỡng thời kỳ thai nghén và sau sinh luôn là mối quan tâm lớn của các bà mẹ. Bây giờ mẹ bầu và mẹ cho con bú đã ăn uống thoải mái hơn, không kiêng khem nhiều như xưa, nhưng ăn thế nào cho lành mạnh, đủ dưỡng chất, ngon miệng mà không biến mẹ trở thành “vĩ đại”, lại chế biến đơn giản, thì không phải ai cũng nắm được.\"', 129000, 2, 0, 500),
(282, 'nkhlb3-kbvl.jpg', 'Nhật ký học làm bánh 3 - Khi bếp vắng lò', 'Linh trang', 'Thế Giới', '2018-08-26', '16 x 24', 296, '\"“Tất cả những công thức trong cuốn sách này được biên soạn với tiêu chí: không cần nhiều kĩ năng hay dụng cụ bếp đặc biệt, nguyên liệu không quá khó tìm, cách thực hiện đơn giản, ngay cả người ‘mới nhất’ trong bếp cũng có thể làm thành công trong lần thử đầu tiên. Và quan trọng hơn hết là tất cả những món ngọt này đều không cần lò nướng. Ý tưởng ‘khi bếp vắng lò’ xuất phát từ rất nhiều phản hồi của bạn đọc \"', 179000, 2, 0, 500),
(283, '72dcnvc.jpg', '72 điều chớ nói với con', 'Hà Hạo', 'Thông Tấn', '2018-09-19', '15x20.5 cm', 276, '\"“Tôi ép con học cũng chỉ là vì nó, sao nó nỡ bỏ đi?”\"', 89000, 2, 0, 500),
(284, 'ckltg-bbktl.jpg', 'Các kỷ lục thế giới - Bộ Bách khoa thư Larousse', 'Danh Việt', 'Thế Giới', '2018-12-10', '20 x 34 cm', 95, '\"Bạn có biết trong các loàicá mập trắng, linh cẩu và cá sấu, loài nào có hàm răng khỏe nhất? Bạn có biết giun dây giày có thể dài đến 60 mét, đủ để buộc hàng chục đôi giày và người phụ nữ thấp nhất chỉ caocó 61 xăng ti mét? Luôn chứa đựng biết bao điều kỳ thú, thế giới tự nhiên muôn hình muôn vẻ vì thế lúc nào cũng khơi gợi sự hiếu kỳ, say mê khám phá của con người.\"', 130000, 2, 0, 500),
(285, 'clkq.jpg', 'Con là khách quý', 'Kẩm Nhung', 'Thế Giới', '2018-12-13', '15 x 24 cm', 302, '\"“Đây là một cuốn sách hấp dẫn và bổ ích, nhất là những thông tin về chăm sóc sức khỏe hay ăn uống cho bé. Tôi  nghĩ đây sẽ là một cuốn sách có ích cho các ông bố bà mẹ, và nhất là cho các ông bà nội ngoại của các em bé. Trên hết, cuốn sách sẽ rất cần cho các bác sỹ nhi khoa (và cả sản khoa) ở Việt Nam đọc để thay đổi cách suy nghĩ  và tư vấn cho các ông bố bà mẹ ở Việt Nam.”\"', 86000, 2, 0, 500),
(286, 'tlmp.jpg', 'Tự làm mỹ phẩm (TB 110.000)', 'Anh Thư - Thu Giang', 'Thế Giới', '2018-12-10', '15 x 20.5 cm', 155, '\"\"\"Quá trình tự học làm mỹ phẩm của chúng tôi chắc không được coi là vô cùng suôn sẻ. Không có tài liệu nào bằng tiếng Việt. Không đủ tiền mua nguyên vật liệu... Cũng vì vậy mà tôi đã làm hỏng nhiều và những bài học đó tôi nhớ sâu sắc chúng tôi làm ra cuốn sách này cũng vì muốn bạn có một quá trình học làm mĩ phẩm thuận lợi hơn... Các công thức trong sách hướng dẫn này đã vượt qua bài kiểm tra về độ kích ứng trên da tại Trung tâm Kiểm nghiệm Dược phẩm - Mỹ phẩm Hà Nội.\"', 110000, 2, 0, 500),
(287, 'stnhd.jpg', 'Sinh tồn nơi hoang dã', 'Makoto Minemura', 'Lao động', '2018-04-23', '18x22cm', 179, '\"Nhắc đến “sinh tồn”, bạn sẽ nghĩ đến điều gì? Phiêu lưu trên đảo không người, thám hiểm trong rừng thẳm… nghe thật xa lạ với đời sống hiện đại nhỉ!\"', 138000, 2, 0, 500),
(288, 'nnkplstkvvvcn.jpg', 'Những nhà khám phá lịch sử tri kiến vạn vật và con người', 'Daniel J. Boorstin', 'Thế Giới', '2018-12-26', '17 x 25 cm', 751, '\"Được coi như cuốn sách lớn nhất của một trong những sử gia lớn nhất thời hiện đại, \"', 209000, 2, 0, 500),
(289, 'lbvbd.jpg', 'Làm bạn với bóng đá', 'Tatsuki Noda', 'Lao động', '2018-04-23', '18x22cm', 194, '\"Hằng ngày, trên khắp thế giới có hàng triệu bạn trẻ cùng chạy theo trái bóng. Nhìn vào những bạn ấy, ta sẽ hiểu rằng cầu thủ càng giỏi thì càng giàu tình yêu bóng đá. Chính nhờ tình yêu này, người ta hăng say luyện tập kiên trì để cải thiện những điểm còn yếu. Cầu thủ chưa xuất sắc thì cần nỗ lực luyện tập hơn người khác nhiều lần và dần dà sẽ phát huy được hết khả năng của mình.\"', 148000, 2, 0, 500),
(290, 'nttdrm.jpg', 'Nghệ thuật tư duy rành mạch', 'Rolf Dobelli', 'Thế Giới', '2018-12-28', '\"14 x 20,5 cm\"', 447, '\"Mọi người đều mắc sai lầm. Những sai lầm trong việc ra quyết định đều bắt nguồn từ các lỗi tư duy tưởng như đơn giản, nhưng dần dà chúng tích tụ thành những thành kiến khó bỏ. Vậy mà hiếm khi chúng ta nhận ra điều đó, nên sai lầm cứ nối tiếp sai lầm, dẫn đến bao hối tiếc vì những quyết định không đúng cho cuộc đời mình: Cứ mãi đeo bám một công việc dù biết trước chẳng thu được lợi lộc gì; cho rằng một dự án thành công suôn sẻ là do tài năng và trí lực, còn thất bại do ngoại cảnh khách quan; bán cổ phiếu lúc đã quá trễ, hoặc bán quá sớm… Và đó chỉ là một vài trong số hàng loạt các sai lầm “cơ bản” được Dobelli mổ xẻ phân tích qua 99 chương sách ngắn gọn, súc tích với những ví dụ minh họa thiết thực giúp ta có thể nhận diện và né tránh chúng. Đơn giản, rõ ràng và toàn diện một cách đáng  ngạc nhiên, cuốn cẩm nang nhất định phải có này có thể thay đổi mãi mãi cách ta suy nghĩ, giúp ta quyết định sáng suốt hơn mỗi ngày ở bất cứ đâu,  trong bất cứ tình huống nào.\"', 118000, 2, 0, 500),
(291, 'hnntl.jpg', 'Hiểu nghề nghiệp tương lai', 'Azumo Sonoko', 'Lao động', '2018-04-23', '18x22cm', 195, '\"Bạn thường thấy những nghề nào quanh mình? Thầy cô ở trường, cô chú ở công ty, bác tài xe buýt hay chú lái tàu điện… Nào, giờ bạn thử nghĩ tiếp đến những nghề xa xôi hơn, những cầu thủ bóng đá đại diện cho đất nước đi thi đấu ở nước ngoài, nghệ sĩ trên tivi, phi hành gia… Ngoài ra, còn rất, rất nhiều các công việc khác trên thế giới này.\"', 148000, 2, 0, 500),
(292, 'nt.jpg', 'Nếu... thì', 'Randall Munroe', 'Lao động', '2018-04-23', '17x23cm', 384, '', 129000, 2, 0, 500),
(293, 'blnkn.jpg', 'Bơi lội như kình ngư', 'Iwamoto Kenichi', 'Lao động', '2018-04-23', '18x22cm', 178, '\"Quyển sách này dành cho những ai sợ nước hay chưa biết bơi. Bơi lội là môn thể thao đòi hỏi nhiều công sức để luyện tập cho nhuần nhuyễn, cũng như đi xe đạp vậy. Em có còn nhớ cảm giác xúc động khi lần đầu tiên trèo lên chiếc xe? Hay cảm giác vui sướng khi tự đạp xe chạy băng băng? Thế nhưng những ngày đầu ai cũng phải nhờ người khác giúp, và tập đi tập lại biết bao nhiêu lần mới đạp được, phải không!\"', 142000, 2, 0, 500),
(294, 'bcdtc.jpg', 'Bắt chước để thành công', 'Tachikawa Mitsuaki', 'Thế Giới', '2018-05-17', '\"14 x 20,5 cm\"', 248, '\"Tachikawa Mitsuaki không ngại tiết lộ bí quyết thành công của ông, đó chính là bắt chước. Con người vốn là loài động vật dễ bị ảnh hưởng, dù muốn hay không cũng đang chịu ảnh hưởng từ môi trường và những người xung quanh, đây cũng chính là việc nhân loại thích ứng với môi trường để sinh tồn và phát triển. Nói cách khác, bắt chước cũng chính là học hỏi.\"', 96000, 2, 0, 500);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `Account`
--
ALTER TABLE `Account`
  ADD PRIMARY KEY (`userName`) USING BTREE;

--
-- Chỉ mục cho bảng `ChiTietPhieuNhap`
--
ALTER TABLE `ChiTietPhieuNhap`
  ADD PRIMARY KEY (`maPhieu`,`id`),
  ADD KEY `FK_ChiTietPhieuNhap_Sach` (`id`);

--
-- Chỉ mục cho bảng `ChiTietPhieuXuat`
--
ALTER TABLE `ChiTietPhieuXuat`
  ADD PRIMARY KEY (`maPhieu`,`id`),
  ADD KEY `FK_ChiTietPhieuXuat_Sach` (`id`);

--
-- Chỉ mục cho bảng `PhieuNhap`
--
ALTER TABLE `PhieuNhap`
  ADD PRIMARY KEY (`maPhieu`),
  ADD KEY `FK_PhieuNhap_Account` (`nguoiTao`);

--
-- Chỉ mục cho bảng `PhieuXuat`
--
ALTER TABLE `PhieuXuat`
  ADD PRIMARY KEY (`maPhieu`),
  ADD KEY `FK_PhieuXuat_Account` (`nguoiTao`);

--
-- Chỉ mục cho bảng `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `Sach`
--
ALTER TABLE `Sach`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ChiTietPhieuNhap`
--
ALTER TABLE `ChiTietPhieuNhap`
  ADD CONSTRAINT `FK_ChiTietPhieuNhap_PhieuNhap` FOREIGN KEY (`maPhieu`) REFERENCES `PhieuNhap` (`maPhieu`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ChiTietPhieuNhap_Sach` FOREIGN KEY (`id`) REFERENCES `Sach` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `ChiTietPhieuXuat`
--
ALTER TABLE `ChiTietPhieuXuat`
  ADD CONSTRAINT `FK_ChiTietPhieuXuat_PhieuXuat` FOREIGN KEY (`maPhieu`) REFERENCES `PhieuXuat` (`maPhieu`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ChiTietPhieuXuat_Sach` FOREIGN KEY (`id`) REFERENCES `Sach` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `PhieuNhap`
--
ALTER TABLE `PhieuNhap`
  ADD CONSTRAINT `FK_PhieuNhap_Account` FOREIGN KEY (`nguoiTao`) REFERENCES `Account` (`userName`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `PhieuXuat`
--
ALTER TABLE `PhieuXuat`
  ADD CONSTRAINT `FK_PhieuXuat_Account` FOREIGN KEY (`nguoiTao`) REFERENCES `Account` (`userName`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
