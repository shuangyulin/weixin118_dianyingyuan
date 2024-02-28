/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm8k4p3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm8k4p3` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm8k4p3`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-04 10:11:05',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-04-04 10:11:05',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-04-04 10:11:05',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-04-04 10:11:05',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-04-04 10:11:05',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-04-04 10:11:05',6,'宇宙银河系月球1号','月某','13823888886','是');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617504574885 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (51,'2021-04-04 10:11:05',1,1,'提问1','回复1',1),(52,'2021-04-04 10:11:05',2,2,'提问2','回复2',2),(53,'2021-04-04 10:11:05',3,3,'提问3','回复3',3),(54,'2021-04-04 10:11:05',4,4,'提问4','回复4',4),(55,'2021-04-04 10:11:05',5,5,'提问5','回复5',5),(56,'2021-04-04 10:11:05',6,6,'提问6','回复6',6),(1617503056993,'2021-04-04 10:24:16',1617502649855,NULL,'请问古董局中局什么时候上映',NULL,0),(1617503078195,'2021-04-04 10:24:37',1617502649855,1,NULL,'5月1日',0),(1617503474240,'2021-04-04 10:31:13',1617502649855,NULL,'请问第十一回什么时候上映',NULL,0),(1617503543901,'2021-04-04 10:32:23',1617502649855,1,NULL,'4月8日',NULL),(1617504017018,'2021-04-04 10:40:16',1617503886987,NULL,'请问古董局中局什么时候上映',NULL,0),(1617504428499,'2021-04-04 10:47:07',1617504301646,NULL,'请问古董局中局什么时候上映',NULL,0),(1617504565819,'2021-04-04 10:49:25',1617504301646,1,NULL,'5.1',NULL),(1617504574884,'2021-04-04 10:49:34',1617503886987,1,NULL,'5.1',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm8k4p3/upload/1617502996011.jpg'),(2,'picture2','http://localhost:8080/ssm8k4p3/upload/1617503450711.jpg'),(3,'picture3','http://localhost:8080/ssm8k4p3/upload/1617503012527.jpeg'),(6,'homepage',NULL);

/*Table structure for table `dianyingleixing` */

DROP TABLE IF EXISTS `dianyingleixing`;

CREATE TABLE `dianyingleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingleixing` varchar(200) NOT NULL COMMENT '电影类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dianyingleixing` (`dianyingleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1617503335783 DEFAULT CHARSET=utf8 COMMENT='电影类型';

/*Data for the table `dianyingleixing` */

insert  into `dianyingleixing`(`id`,`addtime`,`dianyingleixing`) values (21,'2021-04-04 10:11:04','爱情片'),(22,'2021-04-04 10:11:04','动画片'),(23,'2021-04-04 10:11:04','动作片'),(24,'2021-04-04 10:11:04','悬疑片'),(1617503335782,'2021-04-04 10:28:55','喜剧片');

/*Table structure for table `dianyingxinxi` */

DROP TABLE IF EXISTS `dianyingxinxi`;

CREATE TABLE `dianyingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingmingcheng` varchar(200) NOT NULL COMMENT '电影名称',
  `dianyingleixing` varchar(200) NOT NULL COMMENT '电影类型',
  `haibao` varchar(200) DEFAULT NULL COMMENT '海报',
  `daoyan` varchar(200) DEFAULT NULL COMMENT '导演',
  `zhuyan` varchar(200) DEFAULT NULL COMMENT '主演',
  `shangyingriqi` datetime DEFAULT NULL COMMENT '上映日期',
  `pianzhang` varchar(200) DEFAULT NULL COMMENT '片长',
  `dianyingyugao` varchar(200) DEFAULT NULL COMMENT '电影预告',
  `dianyingjianjie` longtext COMMENT '电影简介',
  `fangyingting` varchar(200) DEFAULT NULL COMMENT '放映厅',
  `changci` datetime DEFAULT NULL COMMENT '场次',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `number` int(11) NOT NULL COMMENT '座位总数',
  `selected` longtext COMMENT '已选座位[用,号隔开]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617503409526 DEFAULT CHARSET=utf8 COMMENT='电影信息';

/*Data for the table `dianyingxinxi` */

insert  into `dianyingxinxi`(`id`,`addtime`,`dianyingmingcheng`,`dianyingleixing`,`haibao`,`daoyan`,`zhuyan`,`shangyingriqi`,`pianzhang`,`dianyingyugao`,`dianyingjianjie`,`fangyingting`,`changci`,`clicktime`,`clicknum`,`price`,`number`,`selected`) values (41,'2021-04-04 10:11:05','电影名称1','动作片','http://localhost:8080/ssm8k4p3/upload/1617502485872.jpg','导演1','主演1','2021-04-04 10:11:05','片长1','','<p>电影简介1</p>','放映厅1','2021-04-04 10:11:05','2021-04-04 10:44:17',4,99.9,20,'1,3,5,7,9,11,12,16,17,18'),(42,'2021-04-04 10:11:05','电影名称2','动作片','http://localhost:8080/ssm8k4p3/upload/1617502496334.jpg','导演2','主演2','2021-04-04 10:11:05','片长2','','<p>电影简介2</p>','放映厅2','2021-04-04 10:11:05','2021-04-04 10:48:03',4,99.9,20,'1,3,5,7,9,13,14,15'),(43,'2021-04-04 10:11:05','电影名称3','动画片','http://localhost:8080/ssm8k4p3/upload/1617502506807.jpg','导演3','主演3','2021-04-04 10:11:05','片长3','','<p>电影简介3</p>','放映厅3','2021-04-04 10:11:05','2021-04-04 10:46:35',6,99.9,20,'1,3,5,7,9,11,14,15'),(44,'2021-04-04 10:11:05','电影名称4','悬疑片','http://localhost:8080/ssm8k4p3/upload/1617502589251.jpg','导演4','主演4','2021-04-04 10:11:05','片长4','','<p>电影简介4</p>','放映厅4','2021-04-04 10:11:05','2021-04-04 10:43:15',18,99.9,20,'1,3,5,7,9,14,15'),(45,'2021-04-04 10:11:05','电影名称5','爱情片','http://localhost:8080/ssm8k4p3/upload/1617502531265.jpg','导演5','主演5','2021-04-04 10:11:05','片长5','','<p>电影简介5</p>','放映厅5','2021-04-04 10:11:05','2021-04-04 10:45:35',21,99.9,20,'1,3,5,7,9'),(1617503409525,'2021-04-04 10:30:08','你好，李焕英','喜剧片','http://localhost:8080/ssm8k4p3/upload/1617503363095.jpg','贾玲','贾玲张小斐','2021-03-09 08:00:00','128分钟','http://localhost:8080/ssm8k4p3/upload/1617503386701.mp4','<p>2001年的某一天，刚刚考上大学的贾晓玲经历了人生中的一次大起大落。一心想要成为母亲骄傲的她却因母亲突遭严重意外，而悲痛万分。在贾晓玲情绪崩溃的状态下，竟意外的回到了1981年，并与年轻的母亲李焕英相遇，二人形影不离，宛如闺蜜。与此同时，也结识了一群天真善良的好朋友。晓玲以为来到了这片“广阔天地”，她可以凭借自己超前的思维，让母亲“大有作为”，但结果却让晓玲感到意外......。</p>','1号厅','2021-04-05 10:00:00','2021-04-04 10:47:44',7,45,20,'1,2,3,11,12,17,18,19,20,13,14');

/*Table structure for table `discussdianyingxinxi` */

DROP TABLE IF EXISTS `discussdianyingxinxi`;

CREATE TABLE `discussdianyingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='电影信息评论表';

/*Data for the table `discussdianyingxinxi` */

insert  into `discussdianyingxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-04-04 10:11:05',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-04-04 10:11:05',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-04-04 10:11:05',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-04-04 10:11:05',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-04-04 10:11:05',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-04-04 10:11:05',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `fangyingting` */

DROP TABLE IF EXISTS `fangyingting`;

CREATE TABLE `fangyingting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangyingting` varchar(200) NOT NULL COMMENT '放映厅',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangyingting` (`fangyingting`)
) ENGINE=InnoDB AUTO_INCREMENT=1617503346499 DEFAULT CHARSET=utf8 COMMENT='放映厅';

/*Data for the table `fangyingting` */

insert  into `fangyingting`(`id`,`addtime`,`fangyingting`) values (31,'2021-04-04 10:11:05','放映厅1'),(32,'2021-04-04 10:11:05','放映厅2'),(33,'2021-04-04 10:11:05','放映厅3'),(34,'2021-04-04 10:11:05','放映厅4'),(35,'2021-04-04 10:11:05','放映厅5'),(36,'2021-04-04 10:11:05','放映厅6'),(1617503346498,'2021-04-04 10:29:06','1号厅');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617503438660 DEFAULT CHARSET=utf8 COMMENT='电影资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (91,'2021-04-04 10:11:05','标题1','简介1','http://localhost:8080/ssm8k4p3/upload/1617502561242.jpg','<p>内容1</p>'),(92,'2021-04-04 10:11:05','标题2','简介2','http://localhost:8080/ssm8k4p3/upload/1617502568239.jpg','<p>内容2</p>'),(94,'2021-04-04 10:11:05','标题4','简介4','http://localhost:8080/ssm8k4p3/upload/1617502604551.jpg','<p>内容4</p>'),(95,'2021-04-04 10:11:05','标题5','简介5','http://localhost:8080/ssm8k4p3/upload/1617502615696.jpg','<p>内容5</p>'),(96,'2021-04-04 10:11:05','标题6','简介6','http://localhost:8080/ssm8k4p3/upload/1617502622858.jpg','<p>内容6</p>'),(1617503438659,'2021-04-04 10:30:37','新电影上映资讯','新电影','http://localhost:8080/ssm8k4p3/upload/1617503425697.jpg','<p>资讯内容JKJGTIYH</p><p><img src=\"http://localhost:8080/ssm8k4p3/upload/1617503436441.jpg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'dianyingxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1617504490779 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1617503506506,'2021-04-04 10:31:46','20214410314644822412','dianyingxinxi',1617502649855,1617503409525,'你好，李焕英','http://localhost:8080/ssm8k4p3/upload/1617503363095.jpg',2,45,45,90,90,1,'已完成','11,12',NULL,NULL),(1617503516599,'2021-04-04 10:31:56','20214410315651741318','dianyingxinxi',1617502649855,46,'电影名称6','http://localhost:8080/ssm8k4p3/upload/1617502550608.jpg',1,99.9,99.9,99.9,99.9,1,'已退款','11',NULL,NULL),(1617503981278,'2021-04-04 10:39:40','20214410394032800261','dianyingxinxi',1617503886987,1617503409525,'你好，李焕英','http://localhost:8080/ssm8k4p3/upload/1617503363095.jpg',2,45,45,90,90,1,'已完成','17,18',NULL,NULL),(1617503992595,'2021-04-04 10:39:52','20214410395247813527','dianyingxinxi',1617503886987,44,'电影名称4','http://localhost:8080/ssm8k4p3/upload/1617502589251.jpg',2,99.9,99.9,199.8,199.8,1,'已退款','14,15',NULL,NULL),(1617504072187,'2021-04-04 10:41:11','20214410411169592050','dianyingxinxi',1617503886987,43,'电影名称3','http://localhost:8080/ssm8k4p3/upload/1617502506807.jpg',1,99.9,99.9,99.9,99.9,1,'已支付','11',NULL,NULL),(1617504092951,'2021-04-04 10:41:32','20214410413262621688','dianyingxinxi',1617503886987,41,'电影名称1','http://localhost:8080/ssm8k4p3/upload/1617502485872.jpg',2,99.9,99.9,199.8,199.8,1,'未支付','11,12',NULL,NULL),(1617504251122,'2021-04-04 10:44:11','20214410441099587971','dianyingxinxi',1617504152860,1617503409525,'你好，李焕英','http://localhost:8080/ssm8k4p3/upload/1617503363095.jpg',2,45,45,90,90,1,'已支付','19,20',NULL,NULL),(1617504266940,'2021-04-04 10:44:26','20214410442679517445','dianyingxinxi',1617504152860,41,'电影名称1','http://localhost:8080/ssm8k4p3/upload/1617502485872.jpg',3,99.9,99.9,299.7,299.7,1,'未支付','16,17,18',NULL,NULL),(1617504390054,'2021-04-04 10:46:30','202144104630932718','dianyingxinxi',1617504301646,1617503409525,'你好，李焕英','http://localhost:8080/ssm8k4p3/upload/1617503363095.jpg',2,45,45,90,90,1,'已完成','13,14',NULL,NULL),(1617504404845,'2021-04-04 10:46:44','20214410464417202142','dianyingxinxi',1617504301646,43,'电影名称3','http://localhost:8080/ssm8k4p3/upload/1617502506807.jpg',2,99.9,99.9,199.8,199.8,1,'已退款','14,15',NULL,NULL),(1617504490778,'2021-04-04 10:48:10','20214410481064479519','dianyingxinxi',1617504301646,42,'电影名称2','http://localhost:8080/ssm8k4p3/upload/1617502496334.jpg',3,99.9,99.9,299.7,299.7,1,'已取消','13,14,15',NULL,NULL);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617504397881 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1617503986540,'2021-04-04 10:39:46',1617503886987,44,'dianyingxinxi','电影名称4','http://localhost:8080/ssm8k4p3/upload/1617502589251.jpg'),(1617504228571,'2021-04-04 10:43:47',1617504152860,1617503409525,'dianyingxinxi','你好，李焕英','http://localhost:8080/ssm8k4p3/upload/1617503363095.jpg'),(1617504260467,'2021-04-04 10:44:20',1617504152860,41,'dianyingxinxi','电影名称1','http://localhost:8080/ssm8k4p3/upload/1617502485872.jpg'),(1617504397880,'2021-04-04 10:46:37',1617504301646,43,'dianyingxinxi','电影名称3','http://localhost:8080/ssm8k4p3/upload/1617502506807.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','u0mbialugm6xe9hphuxmw67tfmtg7oi8','2021-04-04 10:12:42','2021-04-04 11:12:42'),(2,1,'abo','users','管理员','u0ky6ealkamyvhoyu7sqtkrcdlurffi8','2021-04-04 10:13:44','2021-04-04 11:28:45'),(3,1617502649855,'1','yonghu','用户','b22n3ee46ckphq5jbhijft5or621sfp8','2021-04-04 10:17:35','2021-04-04 11:17:36'),(4,1617503886987,'2','yonghu','用户','dbmyfwginfd7hj1pdrsutzl3r3grmqjq','2021-04-04 10:38:12','2021-04-04 11:38:13'),(5,1617504152860,'3','yonghu','用户','z0s8ecz0hajuhnclxgw951iv6c4wyvmj','2021-04-04 10:42:38','2021-04-04 11:42:39'),(6,1617504301646,'4','yonghu','用户','ql343k7wc38t0prcoxbngjw6e18m6sqn','2021-04-04 10:45:07','2021-04-04 11:45:08');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-04 10:11:05');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1617504301647 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`,`money`) values (11,'2021-04-04 10:11:04','用户1','123456','姓名1','男','http://localhost:8080/ssm8k4p3/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com',100),(12,'2021-04-04 10:11:04','用户2','123456','姓名2','男','http://localhost:8080/ssm8k4p3/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com',100),(13,'2021-04-04 10:11:04','用户3','123456','姓名3','男','http://localhost:8080/ssm8k4p3/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com',100),(14,'2021-04-04 10:11:04','用户4','123456','姓名4','男','http://localhost:8080/ssm8k4p3/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com',100),(15,'2021-04-04 10:11:04','用户5','123456','姓名5','男','http://localhost:8080/ssm8k4p3/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com',100),(16,'2021-04-04 10:11:04','用户6','123456','姓名6','男','http://localhost:8080/ssm8k4p3/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com',100),(1617502649855,'2021-04-04 10:17:29','1','1','陈一','女','http://localhost:8080/ssm8k4p3/upload/1617502661782.jpg','12312312312','123@qq.com',420),(1617503886987,'2021-04-04 10:38:06','2','2','张一','女','http://localhost:8080/ssm8k4p3/upload/1617503898353.png','12345678978','1235@qq.com',160.1),(1617504152860,'2021-04-04 10:42:32','3','3','张一','女','http://localhost:8080/ssm8k4p3/upload/1617504163750.jpeg','12312312312','123@qq.com',260),(1617504301646,'2021-04-04 10:45:01','4','4','王一','女','http://localhost:8080/ssm8k4p3/upload/1617504313613.png','12345678978','123@qq.com',260);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
