-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2020-09-17 12:41:44
-- 服务器版本： 10.4.13-MariaDB
-- PHP 版本： 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `library_system`
--

-- --------------------------------------------------------

--
-- 表的结构 `books_info`
--

CREATE TABLE `books_info` (
  `id` int(6) NOT NULL,
  `book_name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '书名',
  `book_author` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '作者',
  `book_nums` float NOT NULL COMMENT '此书存量',
  `book_price` float NOT NULL COMMENT '借此书一天单价'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `books_info`
--

INSERT INTO `books_info` (`id`, `book_name`, `book_author`, `book_nums`, `book_price`) VALUES
(1, '钢铁是怎样炼成的', '奥斯特洛夫斯基', 289, 1),
(2, '格林童话', '安迪', 6, 2),
(3, '安徒生童话', '川普', 499, 3),
(4, '如何成为发明家', '爱迪生', 39, 2),
(5, '相对论', '爱因斯坦', 177, 1),
(6, '钢铁是怎样炼成的', '啊啊啊啊', 79, 5),
(7, '西游记', '吴承恩', 975, 1),
(8, '水浒传', '施耐庵', 499, 1.5),
(9, '三国演义', '罗贯中', 917, 2),
(10, '红楼梦', '曹雪芹', 467, 0.5);

-- --------------------------------------------------------

--
-- 表的结构 `borrow_book`
--

CREATE TABLE `borrow_book` (
  `id` int(6) NOT NULL,
  `user_name` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '用户名',
  `userId` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '身份证号',
  `book_name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '书名',
  `book_author` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '作者',
  `borrow_nums` float NOT NULL COMMENT '借书数量',
  `book_price` float NOT NULL COMMENT '借此书一天的价格',
  `borrow_time` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '借书时长',
  `borow_total_price` float NOT NULL COMMENT '借书总价',
  `start_time` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '开始借书的时间',
  `shijianchuo` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '开始时间戳'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `borrow_book`
--

INSERT INTO `borrow_book` (`id`, `user_name`, `userId`, `book_name`, `book_author`, `borrow_nums`, `book_price`, `borrow_time`, `borow_total_price`, `start_time`, `shijianchuo`) VALUES
(1, '小刘abcd', '140522199410042032', '西游记', '吴承恩', 2, 1, '2', 4, '2020-09-17 15:16', '1600326960'),
(2, '小刘abcd', '140522199410042032', '西游记', '吴承恩', 1, 1, '1', 1, '2020-09-17 15:49', '1600328940'),
(3, '小刘abcd', '140522199410042032', '格林童话', '安迪', 1, 2, '1', 2, '2020-09-17 15:49', '1600328940'),
(4, '小刘abcd', '140522199410042032', '三国演义', '罗贯中', 1, 2, '1', 2, '2020-09-17 15:49', '1600328940'),
(5, '小刘abcd', '140522199410042032', '三国演义', '罗贯中', 2, 2, '2', 8, '2020-09-17 15:50', '1600329000'),
(6, '小刘abcd', '140522199410042032', '红楼梦', '曹雪芹', 1, 0.5, '1', 0.5, '2020-09-17 15:50', '1600329000'),
(7, '小刘abcd', '140522199410042032', '红楼梦', '曹雪芹', 2, 0.5, '3', 3, '2020-09-17 15:50', '1600329000'),
(8, '小刘abcd', '140522199410042032', '水浒传', '施耐庵', 1, 1.5, '1', 1.5, '2020-09-17 15:50', '1600329000'),
(9, '小刘abcd', '140522199410042032', '西游记', '吴承恩', 10, 1, '10', 100, '2020-09-17 16:01', '1600329660'),
(10, '小刘abcd', '140522199410042032', '钢铁是怎样炼成的', '奥斯特洛夫斯基', 1, 1, '1', 1, '2020-09-17 16:28', '1600331280'),
(11, '小刘abcd', '140522199410042032', '钢铁是怎样炼成的', '啊啊啊啊', 1, 5, '10', 50, '2020-09-17 16:29', '1600331340'),
(12, '小刘abcd', '140522199410042032', '格林童话', '安迪', 2, 2, '10', 40, '2020-09-17 16:29', '1600331340'),
(13, '小刘abcd', '140522199410042032', '如何成为发明家', '爱迪生', 1, 2, '10', 20, '2020-09-17 16:29', '1600331340'),
(14, '小刘abcd', '140522199410042032', '相对论', '爱因斯坦', 1, 1, '1', 1, '2020-09-17 16:30', '1600331400'),
(15, '小刘abcd', '140522199410042032', '相对论', '爱因斯坦', 2, 1, '10', 20, '2020-09-17 16:30', '1600331400'),
(17, '小刘abcd', '140522199410042032', '西游记', '吴承恩', 1, 1, '7', 7, '2020-09-17 17:16', '1600334160');

-- --------------------------------------------------------

--
-- 表的结构 `huiyuan`
--

CREATE TABLE `huiyuan` (
  `id` int(6) NOT NULL,
  `user_name` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '用户名',
  `userId` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '身份证号',
  `user_pass` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '密码',
  `reg_money` float NOT NULL COMMENT '注册金额',
  `sheng_money` float NOT NULL COMMENT '剩余金额'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `huiyuan`
--

INSERT INTO `huiyuan` (`id`, `user_name`, `userId`, `user_pass`, `reg_money`, `sheng_money`) VALUES
(3, '小刘abcd', '140522199410042032', 'e10adc3949ba59abbe56e057f20f883e', 1000, 475);

--
-- 转储表的索引
--

--
-- 表的索引 `books_info`
--
ALTER TABLE `books_info`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `borrow_book`
--
ALTER TABLE `borrow_book`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `huiyuan`
--
ALTER TABLE `huiyuan`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `books_info`
--
ALTER TABLE `books_info`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `borrow_book`
--
ALTER TABLE `borrow_book`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用表AUTO_INCREMENT `huiyuan`
--
ALTER TABLE `huiyuan`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
