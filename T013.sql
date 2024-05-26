/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t013`;
CREATE DATABASE IF NOT EXISTS `t013` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t013`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbootp0eo6/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbootp0eo6/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbootp0eo6/upload/picture3.jpg'),
	(6, 'homepage', NULL);

DROP TABLE IF EXISTS `jingpaidingdan`;
CREATE TABLE IF NOT EXISTS `jingpaidingdan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) NOT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `chengjiaojiage` int NOT NULL COMMENT '成交价格',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1612340689796 DEFAULT CHARSET=utf8mb3 COMMENT='竞拍订单';

DELETE FROM `jingpaidingdan`;
INSERT INTO `jingpaidingdan` (`id`, `addtime`, `dingdanbianhao`, `shangpinmingcheng`, `shangpinleixing`, `chengjiaojiage`, `faburiqi`, `yonghuming`, `xingming`, `shouji`, `youxiang`, `dizhi`, `ispay`) VALUES
	(1612340689795, '2021-02-03 08:24:49', '1612340681215', '华为手机', '手机', 2000, '2021-02-01', '1', '刘倩', '15214121411', '11212@163.com', '上海市', '已支付');

DROP TABLE IF EXISTS `lishijingpai`;
CREATE TABLE IF NOT EXISTS `lishijingpai` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  `jiage` int NOT NULL COMMENT '价格',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612340577250 DEFAULT CHARSET=utf8mb3 COMMENT='历史竞拍';

DELETE FROM `lishijingpai`;
INSERT INTO `lishijingpai` (`id`, `addtime`, `shangpinmingcheng`, `shangpinleixing`, `riqi`, `jiage`, `yonghuming`, `xingming`, `shouji`, `dizhi`, `sfsh`, `shhf`) VALUES
	(1612340577249, '2021-02-03 08:22:56', '华为手机', '手机', '2021-01-31 16:00:00', 500, '1', '刘倩', '15214121411', '上海市', '是', '有效');

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1702984649319 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

DELETE FROM `messages`;
INSERT INTO `messages` (`id`, `addtime`, `userid`, `username`, `content`, `reply`) VALUES
	(71, '2021-02-03 08:07:40', 1, '用户名1', '留言内容1', '回复内容1'),
	(72, '2021-02-03 08:07:40', 2, '用户名2', '留言内容2', '回复内容2'),
	(73, '2021-02-03 08:07:40', 3, '用户名3', '留言内容3', '回复内容3'),
	(74, '2021-02-03 08:07:40', 4, '用户名4', '留言内容4', '回复内容4'),
	(75, '2021-02-03 08:07:40', 5, '用户名5', '留言内容5', '回复内容5'),
	(76, '2021-02-03 08:07:40', 6, '用户名6', '留言内容6', '回复内容6'),
	(1612340606310, '2021-02-03 08:23:26', 1612340502319, '1', '有什么问题或者意见可以在这里给管理员进行反馈，管路员可以对信息进行回复', '好的 感谢反馈'),
	(1702984649318, '2023-12-19 11:17:28', 11, '001', '11111', NULL);

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='竞拍公告';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(61, '2021-02-03 08:07:40', '公告信息', '简介11111', 'http://localhost:8080/springbootp0eo6/upload/news_picture1.jpg', '<p>公告信息</p>'),
	(62, '2021-02-03 08:07:40', '竞拍公告', '简介2111', 'http://localhost:8080/springbootp0eo6/upload/news_picture2.jpg', '<p>这里可以发布一些公告信息，华为手机以刘倩也2000的价格竞拍成功，恭喜她</p>'),
	(63, '2021-02-03 08:07:40', '标题3', '简介3', 'http://localhost:8080/springbootp0eo6/upload/news_picture3.jpg', '内容3'),
	(64, '2021-02-03 08:07:40', '标题4', '简介4', 'http://localhost:8080/springbootp0eo6/upload/news_picture4.jpg', '内容4'),
	(65, '2021-02-03 08:07:40', '标题5', '简介5', 'http://localhost:8080/springbootp0eo6/upload/news_picture5.jpg', '内容5'),
	(66, '2021-02-03 08:07:40', '标题6', '简介6', 'http://localhost:8080/springbootp0eo6/upload/news_picture6.jpg', '内容6');

DROP TABLE IF EXISTS `paimaishangpin`;
CREATE TABLE IF NOT EXISTS `paimaishangpin` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiage` int NOT NULL COMMENT '价格',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `huodongshijian` varchar(200) DEFAULT NULL COMMENT '活动时间',
  `huodongzhuangtai` varchar(200) DEFAULT NULL COMMENT '活动状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='拍卖商品';

DELETE FROM `paimaishangpin`;
INSERT INTO `paimaishangpin` (`id`, `addtime`, `shangpinmingcheng`, `shangpinleixing`, `tupian`, `jiage`, `shangpinxiangqing`, `huodongshijian`, `huodongzhuangtai`) VALUES
	(31, '2021-02-03 08:07:40', '索尼照相机', '数码', 'http://localhost:8080/springbootp0eo6/upload/paimaishangpin_tupian1.jpg', 2500, '<p>商品详情1</p>', '1-10号', '竞拍中'),
	(32, '2021-02-03 08:07:40', '耳机', '数码', 'http://localhost:8080/springbootp0eo6/upload/paimaishangpin_tupian2.jpg', 200, '<p>商品详情2</p>', '活动时间2', '竞拍中'),
	(33, '2021-02-03 08:07:40', '华为手机', '手机', 'http://localhost:8080/springbootp0eo6/upload/1612340132053.png', 2000, '<p><img src="http://localhost:8080/springbootp0eo6/upload/1612340379733.png"></p><p><br></p><p>这里可以发布一些商品的详情，内容都是用预测是的都可以自行添加修改删除的</p><p><br></p><p>华为MATE30 ，现在可以享受竞拍，以1500低价，竞拍，没有上线</p>', '1-10号', '已结束'),
	(34, '2021-02-03 08:07:40', 'OPPO Reno', '手机', 'http://localhost:8080/springbootp0eo6/upload/1612340153669.png', 4000, '<p>商品详情4</p>', '活动时间4', '竞拍中'),
	(35, '2021-02-03 08:07:40', '精品三国志', '书籍', 'http://localhost:8080/springbootp0eo6/upload/1612340185007.jpg', 500, '<p>商品详情5</p>', '活动时间5', '竞拍中'),
	(36, '2021-02-03 08:07:40', '商品名称6', '电器', 'http://localhost:8080/springbootp0eo6/upload/paimaishangpin_tupian6.jpg', 6, '<p>商品详情6</p>', '活动时间6', '竞拍中');

DROP TABLE IF EXISTS `shangpinleixing`;
CREATE TABLE IF NOT EXISTS `shangpinleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612340340507 DEFAULT CHARSET=utf8mb3 COMMENT='商品类型';

DELETE FROM `shangpinleixing`;
INSERT INTO `shangpinleixing` (`id`, `addtime`, `shangpinleixing`) VALUES
	(21, '2021-02-03 08:07:40', '手机'),
	(22, '2021-02-03 08:07:40', '数码'),
	(23, '2021-02-03 08:07:40', '电器'),
	(24, '2021-02-03 08:07:40', '书籍'),
	(1612340340506, '2021-02-03 08:18:59', '其他');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', 'v2pk3l11oa30e7lmjebwtcqac6kfjw6h', '2021-02-03 08:09:40', '2023-12-19 12:15:50'),
	(2, 11, '001', 'yonghu', '用户', 'r6ml127m064e0wg9m1r5os7sgxu8riea', '2021-02-03 08:09:48', '2023-12-19 12:17:05'),
	(3, 1612340502319, '1', 'yonghu', '用户', 'zvrwvzkxhd8p9t253canc34i2nz65uhu', '2021-02-03 08:21:50', '2021-02-03 01:25:45');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-02-03 08:07:40');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1612340502320 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `yonghuming`, `mima`, `xingming`, `xingbie`, `touxiang`, `shenfenzheng`, `shouji`, `youxiang`, `dizhi`) VALUES
	(11, '2021-02-03 08:07:40', '001', '123456', '姓名1', '男', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '440300199101010001', '13823888881', '773890001@qq.com', '地址1'),
	(12, '2021-02-03 08:07:40', '002', '123456', '姓名2', '男', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '440300199202020002', '13823888882', '773890002@qq.com', '地址2'),
	(13, '2021-02-03 08:07:40', '003', '123456', '姓名3', '男', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '440300199303030003', '13823888883', '773890003@qq.com', '地址3'),
	(1612340502319, '2021-02-03 08:21:42', '004', '123456', '刘倩', '女', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '441214121412141211', '15214121411', '11212@163.com', '上海市');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
