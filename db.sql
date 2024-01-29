/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm91oey
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm91oey` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm91oey`;

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
) ENGINE=InnoDB AUTO_INCREMENT=1617103909530 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-03-30 19:16:43',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-30 19:16:43',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-30 19:16:43',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-30 19:16:43',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-30 19:16:43',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-30 19:16:43',6,'宇宙银河系月球1号','月某','13823888886','是'),(1617103909529,'2021-03-30 19:31:49',11,'华强北','张三','12345678910','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617103883117 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

insert  into `cart`(`id`,`addtime`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`) values (1617103883116,'2021-03-30 19:31:22','shangpinxinxi',11,26,'商品名称6','http://localhost:8080/ssm91oey/upload/shangpinxinxi_fengmian6.jpg',1,99.9,NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm91oey/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm91oey/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm91oey/upload/picture3.jpg'),(6,'homepage',NULL),(7,'猫咪','http://localhost:8080/ssm91oey/upload/1617103530258.png');

/*Table structure for table `dianzhu` */

DROP TABLE IF EXISTS `dianzhu`;

CREATE TABLE `dianzhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianzhuzhanghao` varchar(200) DEFAULT NULL COMMENT '店主账号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `dianzhuxingming` varchar(200) DEFAULT NULL COMMENT '店主姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617103330841 DEFAULT CHARSET=utf8 COMMENT='店主';

/*Data for the table `dianzhu` */

insert  into `dianzhu`(`id`,`addtime`,`dianzhuzhanghao`,`mima`,`dianzhuxingming`,`lianxifangshi`,`money`) values (31,'2021-03-30 19:16:43','店主1','123456','店主姓名1','联系方式1',100),(32,'2021-03-30 19:16:43','店主2','123456','店主姓名2','联系方式2',100),(33,'2021-03-30 19:16:43','店主3','123456','店主姓名3','联系方式3',100),(34,'2021-03-30 19:16:43','店主4','123456','店主姓名4','联系方式4',100),(35,'2021-03-30 19:16:43','店主5','123456','店主姓名5','联系方式5',100),(36,'2021-03-30 19:16:43','店主6','123456','店主姓名6','联系方式6',100),(1617103330840,'2021-03-30 19:22:10','123','123','zs','12345678910',0);

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617103873565 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-03-30 19:16:43',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-30 19:16:43',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-30 19:16:43',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-30 19:16:43',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-30 19:16:43',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-30 19:16:43',6,6,'用户名6','评论内容6','回复内容6'),(1617103873564,'2021-03-30 19:31:13',26,11,'用户1','好可爱','');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617104004082 DEFAULT CHARSET=utf8 COMMENT='猫狗宠物社区';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (61,'2021-03-30 19:16:43','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(62,'2021-03-30 19:16:43','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(63,'2021-03-30 19:16:43','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(64,'2021-03-30 19:16:43','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(65,'2021-03-30 19:16:43','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(66,'2021-03-30 19:16:43','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1617103494760,'2021-03-30 19:24:53','饲养方法','<p>猫咪的饲养，记得按时喂养。</p><p><img src=\"http://localhost:8080/ssm91oey/upload/1617103491249.png\"></p>',NULL,1,'','开放'),(1617104004081,'2021-03-30 19:33:23','猫咪的自我修养','猫咪猫咪猫咪',0,11,'用户1','开放');

/*Table structure for table `fujinchongwudianhuoyiyuan` */

DROP TABLE IF EXISTS `fujinchongwudianhuoyiyuan`;

CREATE TABLE `fujinchongwudianhuoyiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianmianzhaopian` varchar(200) DEFAULT NULL COMMENT '店面照片',
  `dianming` varchar(200) DEFAULT NULL COMMENT '店名',
  `yingyeshijian` varchar(200) DEFAULT NULL COMMENT '营业时间',
  `jutidizhi` longtext COMMENT '具体地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617103384767 DEFAULT CHARSET=utf8 COMMENT='附近宠物店或医院';

/*Data for the table `fujinchongwudianhuoyiyuan` */

insert  into `fujinchongwudianhuoyiyuan`(`id`,`addtime`,`dianmianzhaopian`,`dianming`,`yingyeshijian`,`jutidizhi`) values (41,'2021-03-30 19:16:43','http://localhost:8080/ssm91oey/upload/fujinchongwudianhuoyiyuan_dianmianzhaopian1.jpg','店名1','营业时间1','具体地址1'),(42,'2021-03-30 19:16:43','http://localhost:8080/ssm91oey/upload/fujinchongwudianhuoyiyuan_dianmianzhaopian2.jpg','店名2','营业时间2','具体地址2'),(43,'2021-03-30 19:16:43','http://localhost:8080/ssm91oey/upload/fujinchongwudianhuoyiyuan_dianmianzhaopian3.jpg','店名3','营业时间3','具体地址3'),(44,'2021-03-30 19:16:43','http://localhost:8080/ssm91oey/upload/fujinchongwudianhuoyiyuan_dianmianzhaopian4.jpg','店名4','营业时间4','具体地址4'),(45,'2021-03-30 19:16:43','http://localhost:8080/ssm91oey/upload/fujinchongwudianhuoyiyuan_dianmianzhaopian5.jpg','店名5','营业时间5','具体地址5'),(46,'2021-03-30 19:16:43','http://localhost:8080/ssm91oey/upload/fujinchongwudianhuoyiyuan_dianmianzhaopian6.jpg','店名6','营业时间6','具体地址6'),(1617103384766,'2021-03-30 19:23:04','http://localhost:8080/ssm91oey/upload/1617103339508.jpg','宠物','早上八点半到晚上十点半','<p>地址，北京市</p>');

/*Table structure for table `maogouchaxun` */

DROP TABLE IF EXISTS `maogouchaxun`;

CREATE TABLE `maogouchaxun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `pinzhongming` varchar(200) DEFAULT NULL COMMENT '品种名',
  `dagaijiage` varchar(200) DEFAULT NULL COMMENT '大概价格',
  `tezhengmiaoshu` longtext COMMENT '特征描述',
  `jieshao` longtext COMMENT '介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617103440178 DEFAULT CHARSET=utf8 COMMENT='猫狗查询';

/*Data for the table `maogouchaxun` */

insert  into `maogouchaxun`(`id`,`addtime`,`zhaopian`,`pinzhongming`,`dagaijiage`,`tezhengmiaoshu`,`jieshao`) values (51,'2021-03-30 19:16:43','http://localhost:8080/ssm91oey/upload/maogouchaxun_zhaopian1.jpg','品种名1','大概价格1','特征描述1','介绍1'),(52,'2021-03-30 19:16:43','http://localhost:8080/ssm91oey/upload/maogouchaxun_zhaopian2.jpg','品种名2','大概价格2','特征描述2','介绍2'),(53,'2021-03-30 19:16:43','http://localhost:8080/ssm91oey/upload/maogouchaxun_zhaopian3.jpg','品种名3','大概价格3','特征描述3','介绍3'),(54,'2021-03-30 19:16:43','http://localhost:8080/ssm91oey/upload/maogouchaxun_zhaopian4.jpg','品种名4','大概价格4','特征描述4','介绍4'),(55,'2021-03-30 19:16:43','http://localhost:8080/ssm91oey/upload/maogouchaxun_zhaopian5.jpg','品种名5','大概价格5','特征描述5','介绍5'),(56,'2021-03-30 19:16:43','http://localhost:8080/ssm91oey/upload/maogouchaxun_zhaopian6.jpg','品种名6','大概价格6','特征描述6','介绍6'),(1617103440177,'2021-03-30 19:23:59','http://localhost:8080/ssm91oey/upload/1617103410594.png','鱼','25','<p>红色</p>','<p>普普通通的鱼</p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1617103957866 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1617103915913,'2021-03-30 19:31:55','202133019315415852175','shangpinxinxi',11,26,'商品名称6','http://localhost:8080/ssm91oey/upload/shangpinxinxi_fengmian6.jpg',1,99.9,99.9,99.9,99.9,1,'已支付','华强北'),(1617103957865,'2021-03-30 19:32:36','202133019323561594252','shangpinxinxi',11,1617103618063,'狗狗','http://localhost:8080/ssm91oey/upload/1617103588794.png',1,100,100,100,100,1,'已支付','华强北');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleibie` varchar(200) DEFAULT NULL COMMENT '商品类别',
  `xiaoliang` int(11) DEFAULT NULL COMMENT '销量',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `shangpinxinxi` longtext COMMENT '商品信息',
  `dianzhuxingming` varchar(200) DEFAULT NULL COMMENT '店主姓名',
  `dianzhuzhanghao` varchar(200) DEFAULT NULL COMMENT '店主账号',
  `shangpinzhuangtai` varchar(200) DEFAULT NULL COMMENT '商品状态',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617103618064 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleibie`,`xiaoliang`,`fengmian`,`shangpinxinxi`,`dianzhuxingming`,`dianzhuzhanghao`,`shangpinzhuangtai`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (21,'2021-03-30 19:16:43','商品名称1','宠物区',1,'http://localhost:8080/ssm91oey/upload/shangpinxinxi_fengmian1.jpg','商品信息1','店主姓名1','店主账号1','上架',1,1,'2021-03-30 19:16:43',1,99.9,1,99),(22,'2021-03-30 19:16:43','商品名称2','宠物区',2,'http://localhost:8080/ssm91oey/upload/shangpinxinxi_fengmian2.jpg','商品信息2','店主姓名2','店主账号2','上架',2,2,'2021-03-30 19:16:43',2,99.9,2,99),(23,'2021-03-30 19:16:43','商品名称3','宠物区',3,'http://localhost:8080/ssm91oey/upload/shangpinxinxi_fengmian3.jpg','商品信息3','店主姓名3','店主账号3','上架',3,3,'2021-03-30 19:16:43',3,99.9,3,99),(24,'2021-03-30 19:16:43','商品名称4','宠物区',4,'http://localhost:8080/ssm91oey/upload/shangpinxinxi_fengmian4.jpg','商品信息4','店主姓名4','店主账号4','上架',4,4,'2021-03-30 19:16:43',4,99.9,4,99),(25,'2021-03-30 19:16:43','商品名称5','宠物区',5,'http://localhost:8080/ssm91oey/upload/shangpinxinxi_fengmian5.jpg','商品信息5','店主姓名5','店主账号5','上架',5,5,'2021-03-30 19:16:43',5,99.9,5,99),(26,'2021-03-30 19:16:43','商品名称6','宠物区',6,'http://localhost:8080/ssm91oey/upload/shangpinxinxi_fengmian6.jpg','商品信息6','店主姓名6','店主账号6','上架',7,6,'2021-03-30 19:31:57',10,99.9,6,98),(1617103309003,'2021-03-30 19:21:48','dfd','宠物区',213213,'http://localhost:8080/ssm91oey/upload/1617103288334.jpg','<p>fasdfdsf</p>','2323','2332','上架',0,0,NULL,0,23232,1,233),(1617103618063,'2021-03-30 19:26:57','狗狗','宠物区',1,'http://localhost:8080/ssm91oey/upload/1617103588794.png','<p>可爱的狗狗。</p>','店主姓名1','店主1','上架',0,0,'2021-03-30 19:32:39',5,100,1,0);

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
) ENGINE=InnoDB AUTO_INCREMENT=1617103865375 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1617103865374,'2021-03-30 19:31:04',11,26,'shangpinxinxi','商品名称6','http://localhost:8080/ssm91oey/upload/shangpinxinxi_fengmian6.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','klp3a0sorwsi625clnc588lnar2xyl6a','2021-03-30 19:19:22','2021-03-30 20:20:14'),(2,31,'店主1','dianzhu','店主','5nutydwhy8sn6ajvzmjxm3fnnuenl5ci','2021-03-30 19:25:58','2021-03-30 20:25:59'),(3,11,'用户1','yonghu','用户','gdqxd3izguaz9j8ki6qk5eztppp3e1df','2021-03-30 19:30:51','2021-03-30 20:30:51');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-30 19:16:43');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `nicheng` varchar(200) DEFAULT NULL COMMENT '昵称',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617103254508 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`nicheng`,`touxiang`,`money`) values (11,'2021-03-30 19:16:43','用户1','123456','姓名1','男','13823888881','773890001@qq.com','昵称1','http://localhost:8080/ssm91oey/upload/yonghu_touxiang1.jpg',400.1),(12,'2021-03-30 19:16:43','用户2','123456','姓名2','男','13823888882','773890002@qq.com','昵称2','http://localhost:8080/ssm91oey/upload/yonghu_touxiang2.jpg',100),(13,'2021-03-30 19:16:43','用户3','123456','姓名3','男','13823888883','773890003@qq.com','昵称3','http://localhost:8080/ssm91oey/upload/yonghu_touxiang3.jpg',100),(14,'2021-03-30 19:16:43','用户4','123456','姓名4','男','13823888884','773890004@qq.com','昵称4','http://localhost:8080/ssm91oey/upload/yonghu_touxiang4.jpg',100),(15,'2021-03-30 19:16:43','用户5','123456','姓名5','男','13823888885','773890005@qq.com','昵称5','http://localhost:8080/ssm91oey/upload/yonghu_touxiang5.jpg',100),(1617103254507,'2021-03-30 19:20:54','2333','2333','张三','男','12345678910','123456@qq.com','dfadsfa','http://localhost:8080/ssm91oey/upload/1617103253472.jpg',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
