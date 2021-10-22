/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : springbooty8bjb

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-10-01 21:00:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `caigoubu`
-- ----------------------------
DROP TABLE IF EXISTS `caigoubu`;
CREATE TABLE `caigoubu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1600414122005 DEFAULT CHARSET=utf8 COMMENT='采购部';

-- ----------------------------
-- Records of caigoubu
-- ----------------------------
INSERT INTO `caigoubu` VALUES ('1600414103948', '2020-09-18 15:28:23', '000', '000', '李生', '男', 'http://localhost:8080/springbooty8bjb/upload/1600414100819.jpg', '15654565323');
INSERT INTO `caigoubu` VALUES ('1600414122004', '2020-09-18 15:28:42', '111', '111', '谢女士', '女', 'http://localhost:8080/springbooty8bjb/upload/1600414118868.jpg', '12653245656');

-- ----------------------------
-- Table structure for `cangku`
-- ----------------------------
DROP TABLE IF EXISTS `cangku`;
CREATE TABLE `cangku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1600414089317 DEFAULT CHARSET=utf8 COMMENT='仓库';

-- ----------------------------
-- Records of cangku
-- ----------------------------
INSERT INTO `cangku` VALUES ('1600414072396', '2020-09-18 15:27:52', '001', '001', '李工', '男', 'http://localhost:8080/springbooty8bjb/upload/1600414068311.jpg', '13236545653');
INSERT INTO `cangku` VALUES ('1600414089316', '2020-09-18 15:28:09', '002', '002', '谢工', '男', 'http://localhost:8080/springbooty8bjb/upload/1600414086288.jpg', '15326545989');

-- ----------------------------
-- Table structure for `config`
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'picture1', null);
INSERT INTO `config` VALUES ('2', 'picture2', null);
INSERT INTO `config` VALUES ('3', 'picture3', null);
INSERT INTO `config` VALUES ('4', 'picture4', null);
INSERT INTO `config` VALUES ('5', 'picture5', null);
INSERT INTO `config` VALUES ('6', 'homepage', null);

-- ----------------------------
-- Table structure for `gongyingshang`
-- ----------------------------
DROP TABLE IF EXISTS `gongyingshang`;
CREATE TABLE `gongyingshang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gongyingshangbianhao` varchar(200) DEFAULT NULL COMMENT '供应商编号',
  `gongyingshang` varchar(200) NOT NULL COMMENT '供应商',
  `zhuyingchanpin` varchar(200) DEFAULT NULL COMMENT '主营产品',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gongyingshangbianhao` (`gongyingshangbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1600414563535 DEFAULT CHARSET=utf8 COMMENT='供应商';

-- ----------------------------
-- Records of gongyingshang
-- ----------------------------
INSERT INTO `gongyingshang` VALUES ('1600414198028', '2020-09-18 15:29:57', '1600414154185', '华为', '手机,笔记本', 'http://localhost:8080/springbooty8bjb/upload/1600414164169.jpg', '李生', '16549878989', '环市北路10号', '153@123.com');
INSERT INTO `gongyingshang` VALUES ('1600414484211', '2020-09-18 15:34:44', '1600414449972', '耐克', '衣服，鞋', 'http://localhost:8080/springbooty8bjb/upload/1600414459438.jpg', '吴生', '16658978989', '环市西路10号', '156@123.com');
INSERT INTO `gongyingshang` VALUES ('1600414520119', '2020-09-18 15:35:19', '1600414486573', '李宁', '衣服，鞋子', 'http://localhost:8080/springbooty8bjb/upload/1600414496978.jpg', '谢女士', '16546523323', '环市北路1号', '156@123.com');
INSERT INTO `gongyingshang` VALUES ('1600414563534', '2020-09-18 15:36:02', '1600414521690', '苹果', '手机，平板', 'http://localhost:8080/springbooty8bjb/upload/1600414537698.jpg', '李女士', '16326545653', '环市南路112号', '1563@123.com');

-- ----------------------------
-- Table structure for `kehuxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `kehuxinxi`;
CREATE TABLE `kehuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kehubianhao` varchar(200) DEFAULT NULL COMMENT '客户编号',
  `kehumingcheng` varchar(200) DEFAULT NULL COMMENT '客户名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kehubianhao` (`kehubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1600414639024 DEFAULT CHARSET=utf8 COMMENT='客户信息';

-- ----------------------------
-- Records of kehuxinxi
-- ----------------------------
INSERT INTO `kehuxinxi` VALUES ('1600414593796', '2020-09-18 15:36:33', '1600414566538', 'XX公司', 'http://localhost:8080/springbooty8bjb/upload/1600414578572.jpg', '企业', '15987898788', '环市南路111号', '15689@123.com');
INSERT INTO `kehuxinxi` VALUES ('1600414618787', '2020-09-18 15:36:58', '1600414596030', '百度', 'http://localhost:8080/springbooty8bjb/upload/1600414605541.jpg', '企业', '15987898455', '环市西路56号', '1563@123.com');
INSERT INTO `kehuxinxi` VALUES ('1600414639023', '2020-09-18 15:37:18', '1600414621036', '腾讯', 'http://localhost:8080/springbooty8bjb/upload/1600414624382.jpg', '企业', '15984598788', '环市北路45号', '1563@123.com');

-- ----------------------------
-- Table structure for `kucunpandian`
-- ----------------------------
DROP TABLE IF EXISTS `kucunpandian`;
CREATE TABLE `kucunpandian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `pandianshuliang` varchar(200) DEFAULT NULL COMMENT '盘点数量',
  `pandianqingkuang` varchar(200) DEFAULT NULL COMMENT '盘点情况',
  `pandianriqi` date DEFAULT NULL COMMENT '盘点日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1600416432066 DEFAULT CHARSET=utf8 COMMENT='库存盘点';

-- ----------------------------
-- Records of kucunpandian
-- ----------------------------
INSERT INTO `kucunpandian` VALUES ('1600415347775', '2020-09-18 15:49:07', '1600414717234', 'AA手机', '手机', 'http://localhost:8080/springbooty8bjb/upload/1600414747215.jpg', '90', '90', '正常', '2020-09-28', null, '001', '李工', '13236545653', '是', '员工的相关操作  管理员有改查删功能 以及审核回复功能');
INSERT INTO `kucunpandian` VALUES ('1600415356447', '2020-09-18 15:49:16', '1600414771044', 'BB手机', '手机', 'http://localhost:8080/springbooty8bjb/upload/1600414780291.jpg', '54', '55', '盘盈', '2020-09-20', null, '001', '李工', '13236545653', '是', '1');
INSERT INTO `kucunpandian` VALUES ('1600415365433', '2020-09-18 15:49:25', '1600414800080', 'AA鞋子', '鞋子', 'http://localhost:8080/springbooty8bjb/upload/1600414809346.jpg', '80', '79', '盘亏', '2020-09-28', null, '001', '李工', '13236545653', '是', '1');
INSERT INTO `kucunpandian` VALUES ('1600416432065', '2020-09-18 16:07:11', '1600414834680', 'BB女鞋', '鞋子', 'http://localhost:8080/springbooty8bjb/upload/1600414838884.jpg', '90', '90', '正常', null, null, '001', '李工', '13236545653', '否', null);

-- ----------------------------
-- Table structure for `shangpinfenlei`
-- ----------------------------
DROP TABLE IF EXISTS `shangpinfenlei`;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `leibie` varchar(200) NOT NULL COMMENT '类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1600414152812 DEFAULT CHARSET=utf8 COMMENT='商品分类';

-- ----------------------------
-- Records of shangpinfenlei
-- ----------------------------
INSERT INTO `shangpinfenlei` VALUES ('1600414131476', '2020-09-18 15:28:50', '零食');
INSERT INTO `shangpinfenlei` VALUES ('1600414135690', '2020-09-18 15:28:55', '电器');
INSERT INTO `shangpinfenlei` VALUES ('1600414141236', '2020-09-18 15:29:00', '饮料');
INSERT INTO `shangpinfenlei` VALUES ('1600414145293', '2020-09-18 15:29:05', '男鞋');
INSERT INTO `shangpinfenlei` VALUES ('1600414152811', '2020-09-18 15:29:12', '华为');

-- ----------------------------
-- Table structure for `shangpinjinhuo`
-- ----------------------------
DROP TABLE IF EXISTS `shangpinjinhuo`;
CREATE TABLE `shangpinjinhuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jinjia` varchar(200) DEFAULT NULL COMMENT '进价',
  `jinhuoshuliang` int(11) DEFAULT NULL COMMENT '进货数量',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `gongyingshang` varchar(200) DEFAULT NULL COMMENT '供应商',
  `dingdanriqi` date DEFAULT NULL COMMENT '订单日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1600416391727 DEFAULT CHARSET=utf8 COMMENT='商品进货';

-- ----------------------------
-- Records of shangpinjinhuo
-- ----------------------------
INSERT INTO `shangpinjinhuo` VALUES ('1600415404605', '2020-09-18 15:50:04', '1600415398474', '1600414834680', 'BB女鞋', '鞋子', 'http://localhost:8080/springbooty8bjb/upload/1600414838884.jpg', '368', '60', '22080', '耐克', '2020-09-27', null, '000', '李生', '15654565323', '是', '1', '已支付');
INSERT INTO `shangpinjinhuo` VALUES ('1600415414068', '2020-09-18 15:50:13', '1600415407251', '1600414800080', 'AA鞋子', '鞋子', 'http://localhost:8080/springbooty8bjb/upload/1600414809346.jpg', '298', '100', '29800', '耐克', '2020-09-27', null, '000', '李生', '15654565323', '是', '1', '已支付');
INSERT INTO `shangpinjinhuo` VALUES ('1600416385233', '2020-09-18 16:06:25', '1600416376920', '1600414717234', 'AA手机', '手机', 'http://localhost:8080/springbooty8bjb/upload/1600414747215.jpg', '2600', '30', '78000', '华为', null, null, '000', '李生', '15654565323', '否', null, '未支付');
INSERT INTO `shangpinjinhuo` VALUES ('1600416391726', '2020-09-18 16:06:31', '1600416388913', '1600414834680', 'BB女鞋', '鞋子', 'http://localhost:8080/springbooty8bjb/upload/1600414838884.jpg', '368', '30', '11040', '耐克', null, null, '000', '李生', '15654565323', '否', null, '未支付');

-- ----------------------------
-- Table structure for `shangpinruku`
-- ----------------------------
DROP TABLE IF EXISTS `shangpinruku`;
CREATE TABLE `shangpinruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rukudanhao` varchar(200) DEFAULT NULL COMMENT '入库单号',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gongyingshang` varchar(200) DEFAULT NULL COMMENT '供应商',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `rukuriqi` date DEFAULT NULL COMMENT '入库日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rukudanhao` (`rukudanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1600416423223 DEFAULT CHARSET=utf8 COMMENT='商品入库';

-- ----------------------------
-- Records of shangpinruku
-- ----------------------------
INSERT INTO `shangpinruku` VALUES ('1600415375727', '2020-09-18 15:49:34', '1600415369709', 'AA手机', '手机', 'http://localhost:8080/springbooty8bjb/upload/1600414747215.jpg', '华为', '100', '2020-08-30', '001', '李工', '13236545653', '是', '1');
INSERT INTO `shangpinruku` VALUES ('1600415383173', '2020-09-18 15:49:43', '1600415378107', 'BB手机', '手机', 'http://localhost:8080/springbooty8bjb/upload/1600414780291.jpg', '苹果', '60', '2020-08-31', '001', '李工', '13236545653', '否', null);
INSERT INTO `shangpinruku` VALUES ('1600416418007', '2020-09-18 16:06:57', '1600416414049', 'AA手机', '手机', 'http://localhost:8080/springbooty8bjb/upload/1600414747215.jpg', '华为', '30', null, '001', '李工', '13236545653', '否', null);
INSERT INTO `shangpinruku` VALUES ('1600416423222', '2020-09-18 16:07:03', '1600416420627', 'BB女鞋', '鞋子', 'http://localhost:8080/springbooty8bjb/upload/1600414838884.jpg', '耐克', '30', null, '001', '李工', '13236545653', '否', null);

-- ----------------------------
-- Table structure for `shangpinxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `shangpinxinxi`;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `gongyingshang` varchar(200) DEFAULT NULL COMMENT '供应商',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jinjia` int(11) DEFAULT NULL COMMENT '进价',
  `shoujia` int(11) DEFAULT NULL COMMENT '售价',
  `shangpinjieshao` longtext COMMENT '商品介绍',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1600414861788 DEFAULT CHARSET=utf8 COMMENT='商品信息';

-- ----------------------------
-- Records of shangpinxinxi
-- ----------------------------
INSERT INTO `shangpinxinxi` VALUES ('1600414768830', '2020-09-18 15:39:28', '1600414717234', 'AA手机', '手机', 'http://localhost:8080/springbooty8bjb/upload/1600414747215.jpg', '部', '华为', '华为', '120', '2600', '3200', '<p><img src=\"http://localhost:8080/springbooty8bjb/upload/1600414767700.jpg\"></p>');
INSERT INTO `shangpinxinxi` VALUES ('1600414798042', '2020-09-18 15:39:57', '1600414771044', 'BB手机', '手机', 'http://localhost:8080/springbooty8bjb/upload/1600414780291.jpg', '部', '苹果', '苹果', '84', '3988', '4300', '<p><img src=\"http://localhost:8080/springbooty8bjb/upload/1600414796468.jpg\"></p>');
INSERT INTO `shangpinxinxi` VALUES ('1600414832889', '2020-09-18 15:40:32', '1600414800080', 'AA鞋子', '鞋子', 'http://localhost:8080/springbooty8bjb/upload/1600414809346.jpg', '双', '耐克', '耐克', '80', '298', '368', '<p><img src=\"http://localhost:8080/springbooty8bjb/upload/1600414830956.jpg\"></p>');
INSERT INTO `shangpinxinxi` VALUES ('1600414861787', '2020-09-18 15:41:00', '1600414834680', 'BB女鞋', '鞋子', 'http://localhost:8080/springbooty8bjb/upload/1600414838884.jpg', '双', '耐克', '耐克', '90', '368', '428', '<p><img src=\"http://localhost:8080/springbooty8bjb/upload/1600414859849.jpg\"></p>');

-- ----------------------------
-- Table structure for `token`
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '1', 'abo', 'users', '管理员', '8w7z5l1l3dsm83ad5ji85hd0u18elxw4', '2020-09-18 15:26:05', '2020-09-18 10:11:58');
INSERT INTO `token` VALUES ('2', '1600414042169', '001', 'xiaoshoubu', '销售部', 'l6wajfc36sbalewr5q5ldqtnmfnniupj', '2020-09-18 15:47:37', '2020-09-18 09:11:19');
INSERT INTO `token` VALUES ('3', '1600414072396', '001', 'cangku', '仓库', '49nqoqgh9urvs751kgchji6w6ks831ml', '2020-09-18 15:48:56', '2020-09-18 09:06:43');
INSERT INTO `token` VALUES ('4', '1600414103948', '000', 'caigoubu', '采购部', 'yvxzmcth9fut16ldi8sceh8xl7x64djv', '2020-09-18 15:49:49', '2020-09-18 09:06:04');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'abo', 'abo', '管理员', '2020-09-18 11:08:03');

-- ----------------------------
-- Table structure for `xiaoshoubu`
-- ----------------------------
DROP TABLE IF EXISTS `xiaoshoubu`;
CREATE TABLE `xiaoshoubu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1600414054244 DEFAULT CHARSET=utf8 COMMENT='销售部';

-- ----------------------------
-- Records of xiaoshoubu
-- ----------------------------
INSERT INTO `xiaoshoubu` VALUES ('1600414042169', '2020-09-18 15:27:22', '001', '001', '小李', '男', 'http://localhost:8080/springbooty8bjb/upload/1600414039502.jpg', '15987898788');
INSERT INTO `xiaoshoubu` VALUES ('1600414054243', '2020-09-18 15:27:34', '002', '002', '小吴', '女', 'http://localhost:8080/springbooty8bjb/upload/1600414051475.jpg', '16326545323');

-- ----------------------------
-- Table structure for `xiaoshoudingdan`
-- ----------------------------
DROP TABLE IF EXISTS `xiaoshoudingdan`;
CREATE TABLE `xiaoshoudingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `shoujia` varchar(200) DEFAULT NULL COMMENT '售价',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `dingdanriqi` date DEFAULT NULL COMMENT '订单日期',
  `kehumingcheng` varchar(200) DEFAULT NULL COMMENT '客户名称',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1600416328227 DEFAULT CHARSET=utf8 COMMENT='销售订单';

-- ----------------------------
-- Records of xiaoshoudingdan
-- ----------------------------
INSERT INTO `xiaoshoudingdan` VALUES ('1600415289453', '2020-09-18 15:48:08', '1600415267545', '1600414717234', 'AA手机', '手机', 'http://localhost:8080/springbooty8bjb/upload/1600414747215.jpg', '10', '3200', '32000', '2020-09-21', '百度', '环市西路56号', '15987898455', null, '001', '小李', '15987898788', '是', '1');
INSERT INTO `xiaoshoudingdan` VALUES ('1600415300695', '2020-09-18 15:48:19', '1600415293377', '1600414771044', 'BB手机', '手机', 'http://localhost:8080/springbooty8bjb/upload/1600414780291.jpg', '6', '4300', '25800', '2020-09-20', '百度', '环市西路56号', '15987898455', null, '001', '小李', '15987898788', '否', null);
INSERT INTO `xiaoshoudingdan` VALUES ('1600415312159', '2020-09-18 15:48:31', '1600415302863', '1600414800080', 'AA鞋子', '鞋子', 'http://localhost:8080/springbooty8bjb/upload/1600414809346.jpg', '20', '368', '7360', '2020-09-21', '腾讯', '环市北路45号', '15984598788', null, '001', '小李', '15987898788', '否', null);
INSERT INTO `xiaoshoudingdan` VALUES ('1600416315705', '2020-09-18 16:05:14', '1600416273917', '1600414771044', 'BB手机', '手机', 'http://localhost:8080/springbooty8bjb/upload/1600414780291.jpg', '30', '4300', '129000', null, '腾讯', '环市北路45号', '15984598788', '商品的数量会根据销售单这里的卖出数量进行相应减少  入库则相反  是增加', '001', '小李', '15987898788', '否', null);
INSERT INTO `xiaoshoudingdan` VALUES ('1600416328226', '2020-09-18 16:05:28', '1600416322088', '1600414717234', 'AA手机', '手机', 'http://localhost:8080/springbooty8bjb/upload/1600414747215.jpg', '100', '3200', '320000', null, '腾讯', '环市北路45号', '15984598788', null, '001', '小李', '15987898788', '否', null);

-- ----------------------------
-- Table structure for `xitonggonggao`
-- ----------------------------
DROP TABLE IF EXISTS `xitonggonggao`;
CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1600414690645 DEFAULT CHARSET=utf8 COMMENT='系统公告';

-- ----------------------------
-- Records of xitonggonggao
-- ----------------------------
INSERT INTO `xitonggonggao` VALUES ('1600414665623', '2020-09-18 15:37:44', '进销存管理系统', '公告', 'http://localhost:8080/springbooty8bjb/upload/1600414652848.png', '<p><strong style=\"color: rgb(255, 255, 255); background-color: rgb(23, 179, 163);\">进销存管理系统附件可以上传文档之类文件</strong></p>', '2020-09-13', 'http://localhost:8080/springbooty8bjb/upload/1600414661845.docx');
INSERT INTO `xitonggonggao` VALUES ('1600414690644', '2020-09-18 15:38:10', '本月份最佳部门公布', '公告', 'http://localhost:8080/springbooty8bjb/upload/1600414685694.jpg', '<p>111</p>', '2020-09-30', null);
