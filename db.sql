/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shuangxingxiaoquwuye
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shuangxingxiaoquwuye` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shuangxingxiaoquwuye`;

/*Table structure for table `baoxiu` */

DROP TABLE IF EXISTS `baoxiu`;

CREATE TABLE `baoxiu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '报修人',
  `baoxiu_name` varchar(200) DEFAULT NULL COMMENT '报修项目 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '报修时间',
  `baoxiu_content` text COMMENT '报修详情',
  `baoxiu_types` int(11) DEFAULT NULL COMMENT '是否维修',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='报修';

/*Data for the table `baoxiu` */

insert  into `baoxiu`(`id`,`yonghu_id`,`baoxiu_name`,`insert_time`,`baoxiu_content`,`baoxiu_types`,`create_time`) values (1,3,'门口板灯坏了','2021-04-27 18:53:39','门扣板顶坏了,什么时候维修好\r\n',1,'2021-04-27 18:53:39'),(2,4,'2喽楼梯坏了','2021-04-27 21:19:45','从昨天开始  到现在  都还没维修好 \r\n',2,'2021-04-27 21:19:45');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-04-27 17:18:06'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-04-27 17:18:06'),(3,'sheshi_types','设施类型名称',1,'设施类型1',NULL,'2021-04-27 17:18:06'),(4,'sheshi_types','设施类型名称',2,'设施类型2',NULL,'2021-04-27 17:18:06'),(5,'sheshi_types','设施类型名称',3,'设施类型3',NULL,'2021-04-27 17:18:06'),(6,'baoxiu_types','是否维修名称',1,'已维修',NULL,'2021-04-27 17:18:06'),(7,'baoxiu_types','是否维修名称',2,'未维修',NULL,'2021-04-27 17:18:07'),(8,'shoufei_types','收费类型名称',1,'物业费',NULL,'2021-04-27 17:18:07'),(9,'shoufei_types','收费类型名称',2,'暖气费',NULL,'2021-04-27 17:18:07'),(10,'shoufei_types','收费类型名称',3,'电费',NULL,'2021-04-27 17:18:07'),(11,'tousu_types','投诉类型名称',1,'业务投诉',NULL,'2021-04-27 17:18:07'),(12,'tousu_types','投诉类型名称',2,'人员投诉',NULL,'2021-04-27 17:18:07'),(13,'tousu_types','投诉类型名称',3,'其他',NULL,'2021-04-27 17:18:07'),(14,'gonggao_types','公告类型名称',1,'日常公告',NULL,'2021-04-27 17:18:07'),(15,'gonggao_types','公告类型名称',2,'紧急公告',NULL,'2021-04-27 17:18:07'),(16,'liuiyan_types','留言类型名称',1,'留言类型1',NULL,'2021-04-27 17:18:07'),(17,'liuiyan_types','留言类型名称',2,'留言类型2',NULL,'2021-04-27 17:18:07'),(18,'liuiyan_types','留言类型名称',3,'留言类型3',NULL,'2021-04-27 17:18:07'),(19,'tousu_types','投诉类型名称',4,'投诉类型4',NULL,'2021-04-27 21:12:01');

/*Table structure for table `fangjian` */

DROP TABLE IF EXISTS `fangjian`;

CREATE TABLE `fangjian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `building` varchar(200) DEFAULT NULL COMMENT '楼栋 Search111 ',
  `unit` varchar(200) DEFAULT NULL COMMENT '单元 Search111 ',
  `room` varchar(200) DEFAULT NULL COMMENT '房间号 Search111 ',
  `fangjian_content` text COMMENT '房间备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='房间';

/*Data for the table `fangjian` */

insert  into `fangjian`(`id`,`yonghu_id`,`building`,`unit`,`room`,`fangjian_content`,`insert_time`,`create_time`) values (1,3,'1','1','101','','2021-04-27 17:56:05','2021-04-27 17:56:05'),(2,1,'1','1','102','','2021-04-27 17:56:19','2021-04-27 17:56:19'),(3,4,'1','1','104','','2021-04-27 21:08:21','2021-04-27 21:08:21'),(4,4,'1','1','105','','2021-04-27 21:15:30','2021-04-27 21:15:30');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111 ',
  `gonggao_types` int(11) DEFAULT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `gonggao_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (3,'公告1',1,'2021-04-27 21:11:07','公告1的详情\r\n','2021-04-27 21:11:07');

/*Table structure for table `liuyanban` */

DROP TABLE IF EXISTS `liuyanban`;

CREATE TABLE `liuyanban` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `liuyanban_name` varchar(200) DEFAULT NULL COMMENT '留言名称 Search111 ',
  `liuiyan_types` int(11) DEFAULT NULL COMMENT '留言类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `liuyanban_content` text COMMENT '留言',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `liuyanban` */

insert  into `liuyanban`(`id`,`liuyanban_name`,`liuiyan_types`,`insert_time`,`liuyanban_content`,`create_time`) values (3,'留言1',1,'2021-04-27 18:54:24','留言1的详情\r\n','2021-04-27 18:54:24'),(4,'留言2',2,'2021-04-27 21:21:02','留言2的详情\r\n','2021-04-27 21:21:02');

/*Table structure for table `sheshi` */

DROP TABLE IF EXISTS `sheshi`;

CREATE TABLE `sheshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sheshi_name` varchar(200) DEFAULT NULL COMMENT '设施名字 Search111 ',
  `sheshi_number` varchar(200) DEFAULT NULL COMMENT '设施编号',
  `sheshi_types` int(11) DEFAULT NULL COMMENT '设施类型 Search111 ',
  `sheshi_time` timestamp NULL DEFAULT NULL COMMENT '购买时间',
  `sheshi_monry` decimal(10,2) DEFAULT NULL COMMENT '购买价格 Search111 ',
  `sheshi_content` text COMMENT '设施备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='设施';

/*Data for the table `sheshi` */

insert  into `sheshi`(`id`,`sheshi_name`,`sheshi_number`,`sheshi_types`,`sheshi_time`,`sheshi_monry`,`sheshi_content`,`insert_time`,`create_time`) values (1,'设施1','101',1,'2021-04-13 00:00:00','98.98','设施备注1\r\n','2021-04-27 17:59:09','2021-04-27 17:59:09'),(2,'设施2','102',2,'2021-04-12 00:00:00','87.40','设施2的详情\r\n','2021-04-27 18:00:06','2021-04-27 18:00:06'),(3,'设施44','104',3,'2021-04-05 00:00:00','69.40','思思思思\r\n','2021-04-27 21:08:51','2021-04-27 21:08:51');

/*Table structure for table `shoufei` */

DROP TABLE IF EXISTS `shoufei`;

CREATE TABLE `shoufei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shoufei_name` varchar(200) DEFAULT NULL COMMENT '收费名字 Search111 ',
  `shoufei_types` int(11) DEFAULT NULL COMMENT '收费类型 Search111 ',
  `shoufei_yu_monry` decimal(10,2) DEFAULT NULL COMMENT '预收金额 Search111 ',
  `shoufei_shi_monry` decimal(10,2) DEFAULT NULL COMMENT '实收金额 Search111 ',
  `shoufei_content` text COMMENT '收费备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='收费';

/*Data for the table `shoufei` */

insert  into `shoufei`(`id`,`yonghu_id`,`shoufei_name`,`shoufei_types`,`shoufei_yu_monry`,`shoufei_shi_monry`,`shoufei_content`,`insert_time`,`create_time`) values (1,3,'2021上半年电费',3,'600.00',NULL,'水费收费\r\n','2021-04-27 18:45:14','2021-04-27 18:45:14'),(2,4,'2019年上半年电费',3,'800.00','800.00','','2021-04-27 21:09:31','2021-04-27 21:09:31');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','6l1biv6ixjdo2il2l50113lwcfsimo64','2021-04-27 17:43:33','2021-04-27 22:17:24'),(2,3,'a3','yonghu','用户','e8jdkfxt264rfzem4a60imw20tsxrk5i','2021-04-27 18:47:14','2021-04-27 19:47:15'),(4,2,'a22','yuangong','员工','ez5qwo6ubktzdnn0pw0ntgvyskvnupfv','2021-04-27 21:13:22','2021-04-27 22:13:23'),(5,4,'a4','yonghu','用户','jc5eau9jegxjtukoso9x87gr38jspuyw','2021-04-27 21:17:38','2021-04-27 22:17:39');

/*Table structure for table `tousu` */

DROP TABLE IF EXISTS `tousu`;

CREATE TABLE `tousu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `tousu_name` varchar(200) DEFAULT NULL COMMENT '投诉名称 Search111 ',
  `tousu_types` int(11) DEFAULT NULL COMMENT '投诉类型 Search111 ',
  `tousu_content` text COMMENT '投诉详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '投诉时间',
  `reply_content` text COMMENT '回复详情',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='投诉';

/*Data for the table `tousu` */

insert  into `tousu`(`id`,`yonghu_id`,`tousu_name`,`tousu_types`,`tousu_content`,`insert_time`,`reply_content`,`update_time`,`create_time`) values (3,3,'为什么不处理',1,'你们业务逻辑不清楚,办事找不到人\r\n','2021-04-27 18:49:23','‍已经在处理了\r\n','2021-04-27 21:10:00','2021-04-27 18:49:23'),(4,4,'张三业务不精',2,'你们物业的张三业务不精  投诉一波\r\n','2021-04-27 21:19:12','‍\r\n',NULL,'2021-04-27 21:19:12');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-04-27 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `yonghu_content` text COMMENT '用户备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`yonghu_content`,`create_time`) values (1,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/shuangxingxiaoquwuye/file/download?fileName=1619517013743.jpg',2,'1@qq.com','','2021-04-27 17:50:21'),(2,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/shuangxingxiaoquwuye/file/download?fileName=1619517038418.jpg',2,'2@qq.com','','2021-04-27 17:50:50'),(3,'a3','123456','张三','17703786903','410224199610232003','http://localhost:8080/shuangxingxiaoquwuye/file/download?fileName=1619517087350.jpg',1,'3@qq.com','','2021-04-27 17:51:48'),(4,'a4','123456','张4','17703786904','410224199610232004','http://localhost:8080/shuangxingxiaoquwuye/file/download?fileName=1619528853189.jpg',2,'4@qq.com','1111\r\n','2021-04-27 21:07:44'),(5,'a9','123456','张9','17703786909','410224199610232009','http://localhost:8080/shuangxingxiaoquwuye/file/download?fileName=1619529704592.jpg',1,'9@qq.com','','2021-04-27 21:22:17');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 Search111 ',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '员工邮箱',
  `yuangong_file` varchar(200) DEFAULT NULL COMMENT '员工合同',
  `yuangong_fenshu` decimal(10,2) DEFAULT NULL COMMENT '入职考核分数',
  `yuangong_content` text COMMENT '员工备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_name`,`yuangong_phone`,`yuangong_id_number`,`yuangong_photo`,`sex_types`,`yuangong_email`,`yuangong_file`,`yuangong_fenshu`,`yuangong_content`,`create_time`) values (1,'a11','123456','张11','17703786911','410224199610232011','http://localhost:8080/shuangxingxiaoquwuye/file/download?fileName=1619516710473.jpg',1,'11@qq.com','http://localhost:8080/shuangxingxiaoquwuye/file/download?fileName=1619516758140.txt','66.90','','2021-04-27 17:46:04'),(2,'a22','123456','张22','17703786922','410224199610232022','http://localhost:8080/shuangxingxiaoquwuye/file/download?fileName=1619516945487.jpg',1,'22@qq.com','http://localhost:8080/shuangxingxiaoquwuye/file/download?fileName=1619516966745.txt','78.89','','2021-04-27 17:49:34'),(3,'a33','123456','张三三','17703786933','410224199610232002','http://localhost:8080/shuangxingxiaoquwuye/file/download?fileName=1619528691100.jpg',2,'33@qq.com','http://localhost:8080/shuangxingxiaoquwuye/file/download?fileName=1619528710502.txt','67.80','','2021-04-27 21:05:17'),(4,'a44','123456','张四四','17703786934','410224199610232004','http://localhost:8080/shuangxingxiaoquwuye/file/download?fileName=1619528795732.jpg',2,'44@qq.com','http://localhost:8080/shuangxingxiaoquwuye/file/download?fileName=1619528811142.txt','69.04','','2021-04-27 21:07:08');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
