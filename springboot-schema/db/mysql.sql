DROP DATABASE IF EXISTS springbooty8bjb;

CREATE DATABASE springbooty8bjb default character set utf8mb4 collate utf8mb4_general_ci;

USE springbooty8bjb;

DROP TABLE IF EXISTS `xiaoshoubu`;

CREATE TABLE `xiaoshoubu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`gonghao` varchar(200) NOT NULL UNIQUE   COMMENT '工号',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`yuangongxingming` varchar(200) NOT NULL   COMMENT '员工姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`touxiang` varchar(200)    COMMENT '头像',
	`shouji` varchar(200)    COMMENT '手机',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售部';

DROP TABLE IF EXISTS `cangku`;

CREATE TABLE `cangku` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`zhanghao` varchar(200) NOT NULL UNIQUE   COMMENT '账号',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`xingming` varchar(200)    COMMENT '姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`touxiang` varchar(200)    COMMENT '头像',
	`shouji` varchar(200)    COMMENT '手机',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仓库';

DROP TABLE IF EXISTS `caigoubu`;

CREATE TABLE `caigoubu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`yonghuming` varchar(200) NOT NULL UNIQUE   COMMENT '用户名',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`xingming` varchar(200) NOT NULL   COMMENT '姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`touxiang` varchar(200)    COMMENT '头像',
	`shouji` varchar(200)    COMMENT '手机',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采购部';

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`leibie` varchar(200) NOT NULL   COMMENT '类别',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品分类';

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`shangpinbianhao` varchar(200)  UNIQUE   COMMENT '商品编号',
	`mingcheng` varchar(200)    COMMENT '名称',
	`leibie` varchar(200)    COMMENT '类别',
	`tupian` varchar(200)    COMMENT '图片',
	`guige` varchar(200)    COMMENT '规格',
	`pinpai` varchar(200)    COMMENT '品牌',
	`gongyingshang` varchar(200)    COMMENT '供应商',
	`shuliang` int    COMMENT '数量',
	`jinjia` int    COMMENT '进价',
	`shoujia` int    COMMENT '售价',
	`shangpinjieshao` longtext    COMMENT '商品介绍',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品信息';

DROP TABLE IF EXISTS `kucunpandian`;

CREATE TABLE `kucunpandian` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`shangpinbianhao` varchar(200)    COMMENT '商品编号',
	`mingcheng` varchar(200)    COMMENT '名称',
	`leibie` varchar(200)    COMMENT '类别',
	`tupian` varchar(200)    COMMENT '图片',
	`shuliang` varchar(200)    COMMENT '数量',
	`pandianshuliang` varchar(200)    COMMENT '盘点数量',
	`pandianqingkuang` varchar(200)    COMMENT '盘点情况',
	`pandianriqi` date    COMMENT '盘点日期',
	`beizhu` varchar(200)    COMMENT '备注',
	`zhanghao` varchar(200)    COMMENT '账号',
	`xingming` varchar(200)    COMMENT '姓名',
	`shouji` varchar(200)    COMMENT '手机',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='库存盘点';

DROP TABLE IF EXISTS `shangpinjinhuo`;

CREATE TABLE `shangpinjinhuo` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`dingdanbianhao` varchar(200)  UNIQUE   COMMENT '订单编号',
	`shangpinbianhao` varchar(200)    COMMENT '商品编号',
	`mingcheng` varchar(200)    COMMENT '名称',
	`leibie` varchar(200)    COMMENT '类别',
	`tupian` varchar(200)    COMMENT '图片',
	`jinjia` varchar(200)    COMMENT '进价',
	`jinhuoshuliang` int    COMMENT '进货数量',
	`zongjiage` varchar(200)    COMMENT '总价格',
	`gongyingshang` varchar(200)    COMMENT '供应商',
	`dingdanriqi` date    COMMENT '订单日期',
	`beizhu` varchar(200)    COMMENT '备注',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`shouji` varchar(200)    COMMENT '手机',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	`ispay` varchar(200)   default '未支付' COMMENT '是否支付',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品进货';

DROP TABLE IF EXISTS `gongyingshang`;

CREATE TABLE `gongyingshang` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`gongyingshangbianhao` varchar(200)  UNIQUE   COMMENT '供应商编号',
	`gongyingshang` varchar(200) NOT NULL   COMMENT '供应商',
	`zhuyingchanpin` varchar(200)    COMMENT '主营产品',
	`tupian` varchar(200)    COMMENT '图片',
	`lianxiren` varchar(200)    COMMENT '联系人',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`dizhi` varchar(200)    COMMENT '地址',
	`youxiang` varchar(200)    COMMENT '邮箱',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商';

DROP TABLE IF EXISTS `kehuxinxi`;

CREATE TABLE `kehuxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`kehubianhao` varchar(200)  UNIQUE   COMMENT '客户编号',
	`kehumingcheng` varchar(200)    COMMENT '客户名称',
	`tupian` varchar(200)    COMMENT '图片',
	`leibie` varchar(200)    COMMENT '类别',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`dizhi` varchar(200)    COMMENT '地址',
	`youxiang` varchar(200)    COMMENT '邮箱',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户信息';

DROP TABLE IF EXISTS `xiaoshoudingdan`;

CREATE TABLE `xiaoshoudingdan` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`dingdanbianhao` varchar(200)  UNIQUE   COMMENT '订单编号',
	`shangpinbianhao` varchar(200)    COMMENT '商品编号',
	`mingcheng` varchar(200)    COMMENT '名称',
	`leibie` varchar(200)    COMMENT '类别',
	`tupian` varchar(200)    COMMENT '图片',
	`shuliang` int    COMMENT '数量',
	`shoujia` varchar(200)    COMMENT '售价',
	`zongjiage` varchar(200)    COMMENT '总价格',
	`dingdanriqi` date    COMMENT '订单日期',
	`kehumingcheng` varchar(200)    COMMENT '客户名称',
	`dizhi` varchar(200)    COMMENT '地址',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`beizhu` varchar(200)    COMMENT '备注',
	`gonghao` varchar(200)    COMMENT '工号',
	`yuangongxingming` varchar(200)    COMMENT '员工姓名',
	`shouji` varchar(200)    COMMENT '手机',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售订单';

DROP TABLE IF EXISTS `xitonggonggao`;

CREATE TABLE `xitonggonggao` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`biaoti` varchar(200)    COMMENT '标题',
	`leibie` varchar(200)    COMMENT '类别',
	`tupian` varchar(200)    COMMENT '图片',
	`neirong` longtext    COMMENT '内容',
	`faburiqi` date    COMMENT '发布日期',
	`fujian` varchar(200)    COMMENT '附件',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统公告';

DROP TABLE IF EXISTS `shangpinruku`;

CREATE TABLE `shangpinruku` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`rukudanhao` varchar(200)  UNIQUE   COMMENT '入库单号',
	`mingcheng` varchar(200)    COMMENT '名称',
	`leibie` varchar(200)    COMMENT '类别',
	`tupian` varchar(200)    COMMENT '图片',
	`gongyingshang` varchar(200)    COMMENT '供应商',
	`shuliang` int    COMMENT '数量',
	`rukuriqi` date    COMMENT '入库日期',
	`zhanghao` varchar(200)    COMMENT '账号',
	`xingming` varchar(200)    COMMENT '姓名',
	`shouji` varchar(200)    COMMENT '手机',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品入库';


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name) values(1,'picture1');
insert into config(id,name) values(2,'picture2');
insert into config(id,name) values(3,'picture3');
insert into config(id,name) values(4,'picture4');
insert into config(id,name) values(5,'picture5');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

