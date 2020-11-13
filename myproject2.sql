/*
Navicat MySQL Data Transfer

Source Server         : a
Source Server Version : 50728
Source Host           : localhost:3306
Source Database       : myproject

Target Server Type    : MYSQL
Target Server Version : 50728
File Encoding         : 65001

Date: 2020-11-12 21:38:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_category
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类主键',
  `cName` varchar(15) DEFAULT NULL COMMENT '分类名称',
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO `t_category` VALUES ('1', '手机 电话卡');
INSERT INTO `t_category` VALUES ('2', '电视 盒子');
INSERT INTO `t_category` VALUES ('3', '笔记本 显示器');
INSERT INTO `t_category` VALUES ('4', '电源 配件');
INSERT INTO `t_category` VALUES ('5', '健康 儿童');
INSERT INTO `t_category` VALUES ('6', '耳机 音响');
INSERT INTO `t_category` VALUES ('7', '生活 箱包');
INSERT INTO `t_category` VALUES ('8', '出行 穿戴');
INSERT INTO `t_category` VALUES ('9', '智能 路由器');
INSERT INTO `t_category` VALUES ('10', '家电 插线板');

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论主键',
  `u_id` int(11) DEFAULT NULL COMMENT '用户外键',
  `content` varchar(20) DEFAULT NULL COMMENT '评论内容',
  `commentTime` varchar(20) DEFAULT NULL COMMENT '评论时间',
  `p_id` int(11) DEFAULT NULL COMMENT '商品外键',
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comment
-- ----------------------------

-- ----------------------------
-- Table structure for t_lbt
-- ----------------------------
DROP TABLE IF EXISTS `t_lbt`;
CREATE TABLE `t_lbt` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '轮播图主键',
  `image` varchar(255) DEFAULT NULL COMMENT '轮播图图片的存放位置',
  `imgDesc` varchar(255) DEFAULT NULL COMMENT '图片的描述',
  `url` varchar(255) DEFAULT NULL COMMENT '超链接',
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_lbt
-- ----------------------------

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `o_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单主键',
  `phone` varchar(11) DEFAULT NULL COMMENT '电话',
  `oStatus` varchar(20) DEFAULT NULL COMMENT '订单状态',
  `createTime` varchar(20) DEFAULT NULL COMMENT '订单创建时间',
  `u_id` int(11) DEFAULT NULL COMMENT '用户外键',
  `payTime` varchar(20) DEFAULT NULL COMMENT '订单付快时间',
  `address` varchar(255) DEFAULT NULL COMMENT '订单地址',
  `money` varchar(20) DEFAULT NULL COMMENT '总金额',
  `payMethod` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('16', '13839633015', '0', '2020-11-11  20:24:25', '1', null, '河南省驻马店上蔡县天伦天伦现代城', null, '1');
INSERT INTO `t_order` VALUES ('17', '13839633015', '0', '2020-11-11  20:27:40', '1', null, '河南省驻马店上蔡县天伦天伦现代城', '1797.0', '2');
INSERT INTO `t_order` VALUES ('18', '13839633015', '0', '2020-11-11  20:46:03', '1', null, '', '3799.0', '0');
INSERT INTO `t_order` VALUES ('19', '13839633015', '0', '2020-11-11  21:07:14', '1', null, '河南省驻马店上蔡县天伦天伦现代城', '1999.0', '0');
INSERT INTO `t_order` VALUES ('20', '15225339797', '0', '2020-11-11  21:20:06', '11', null, '西亚斯', '22198.0', '1');
INSERT INTO `t_order` VALUES ('21', '13839633015', '0', '2020-11-12  19:41:29', '1', null, '河南省驻马店上蔡县天伦天伦现代城', '3799.0', '0');

-- ----------------------------
-- Table structure for t_orderitem
-- ----------------------------
DROP TABLE IF EXISTS `t_orderitem`;
CREATE TABLE `t_orderitem` (
  `oI_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单项主键',
  `p_id` int(11) DEFAULT NULL COMMENT '商品外键',
  `u_id` int(11) DEFAULT NULL COMMENT '用户外键',
  `count` int(11) DEFAULT NULL COMMENT '商品数量',
  `o_id` int(11) DEFAULT NULL COMMENT '订单外键',
  `total_fee` varchar(20) DEFAULT NULL COMMENT '该订单项的总金额',
  `color` varchar(20) DEFAULT NULL,
  `speci` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`oI_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_orderitem
-- ----------------------------
INSERT INTO `t_orderitem` VALUES ('7', '2', '1', '1', '16', '1999.0', '薄荷绿', '6GB+128GB');
INSERT INTO `t_orderitem` VALUES ('8', '199', '1', '3', '16', '987.0', '白色', '通用');
INSERT INTO `t_orderitem` VALUES ('9', '3', '1', '3', '17', '1797.0', '晴空蓝', '6GB+128GB');
INSERT INTO `t_orderitem` VALUES ('10', '6', '1', '1', '18', '3799.0', '国风雅灰', '8GB+128GB');
INSERT INTO `t_orderitem` VALUES ('11', '2', '1', '1', '19', '1999.0', '薄荷绿', '6GB+128GB');
INSERT INTO `t_orderitem` VALUES ('12', '15', '11', '1', '20', '19999.0', '黑色', '512GB');
INSERT INTO `t_orderitem` VALUES ('13', '113', '11', '1', '20', '2199.0', '34英寸', '通用');
INSERT INTO `t_orderitem` VALUES ('14', '6', '1', '1', '21', '3799.0', '国风雅灰', '8GB+128GB');
INSERT INTO `t_orderitem` VALUES ('15', '1', '1', '1', '1', '1', 'r', 'rr');

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品主键',
  `pName` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `price` float DEFAULT NULL COMMENT '商品价格',
  `pDesc` text COMMENT '商品详情',
  `pColor` varchar(255) DEFAULT NULL COMMENT '商品颜色',
  `pSpeci` varchar(255) DEFAULT NULL COMMENT '商品规格',
  `c_id` int(11) DEFAULT NULL COMMENT '分类外键',
  `store` int(11) DEFAULT NULL COMMENT '商品库存',
  `pImg` varchar(255) DEFAULT NULL COMMENT '商品照片',
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES ('1', 'Redmi K30S 至尊纪念版 8GB+128GB', '2599', '<font color=\'#ff4a00\'>「立即预约中！11月1日上午10点首卖，购机享6期免息、碎屏保/延保5折优惠」</font>骁龙865 / 144Hz[7档]变速高刷屏 / 专业原色显示+全局护眼 / 5000mAh大电量+33W快充 / 6400万AI三摄 / 立体声双扬声器+X轴马达 / LPDDR5+UFS3.1+WiFi6', '[\'星际黑\', \'月光银\']', '[\'8GB+128GB\', \'8GB+256GB\']', '1', null, 'pms_1603708777.40827786.jpg');
INSERT INTO `t_product` VALUES ('2', 'Redmi K30 至尊纪念版 薄荷绿', '1999', '<font color=\'#ff4a00\'>「100元订金预售中！尾款享延保碎、碎屏保5折优惠；+1元得200G云空间月卡；购机得双倍米金」</font>120Hz弹出全面屏 / 天玑1000+旗舰处理器 / 索尼6400万四摄 / 立体声双扬声器 / 4500mAh+33W闪充 /  双模5G / 多功能NFC / 线性震动马达  / 红外遥控', '[\'薄荷绿\', \'极夜黑\', \'月幕白\']', '[\'6GB+128GB\', \'8GB+128GB\', \'8GB+256GB\']', '1', null, 'pms_1597138340.1852584.jpg');
INSERT INTO `t_product` VALUES ('3', 'Redmi 9A 晴空蓝', '599', '<font color=\'#ff4a00\'>「128GB版本11.1日尾款支付前500名得十周年纪念盲盒！全版本买赠798元双人定制体检卡；赠定制电话卡；+1元得200G云空间月卡；更享延保、碎屏保5折」</font>5000mAh长循环大电量 / 6.53\"超大护眼屏幕 / G25八核处理器 / 大音量扬声器 / 1300万 AI相机 / 人脸解锁  / 最高支持512GB存储扩展', '[\'晴空蓝\', \'砂石黑\', \'湖光绿\']', '[\'4GB+128GB\', \'6GB+128GB\', \'4GB+64GB\']', '1', null, 'pms_1595400910.46012177.jpg');
INSERT INTO `t_product` VALUES ('4', 'Redmi 10X 5G', '1499', '<font color=\'#ff4a00\'>「订金50元抵150元！至高直降500元，买赠一年碎屏保，尾款前3000名赠手机定制礼盒，+1元得200G云空间月卡」</font>双5G待机/天玑820处理器/4800万流光相机+800万超广角/6.57\"三星AMOLED屏幕/屏幕指纹/4520mAh长续航/红外遥控', '[\'凝夜紫\', \'胧月金\', \'深海蓝\', \'星露白\']', '[\'6GB+128GB\', \'8GB+128GB\', \'8GB+256GB\']', '1', null, '39580d04e026445dde819d4454570ac2.jpg');
INSERT INTO `t_product` VALUES ('5', '小米10 青春版 5G', '1999', '<font color=\'#ff4a00\'>「订金50元抵150元，购机享6期免息，尾款支付前1000名赠定制礼盒，尾款支付享碎屏保、延保5折优惠」</font>向往的生活同款/ 50倍潜望式超远变焦 / 双模5G / 骁龙765G处理器 / 三星AMOLED原色屏 / 180Hz采样率 / 4160mAh大电池 / 多功能NFC / 红外遥控器', '[\'白桃乌龙\', \'蓝莓薄荷\', \'黑巧风暴\', \'桃子西柚\', \'四季春奶绿\', \'蓝色\']', '[\'6GB+128GB\', \'8GB+128GB\', \'8GB+256GB\', \'8GB+256GB 哆啦A梦限定款\']', '1', null, '8729282b199b3ec51e31c1b6b15f3f93.jpg');
INSERT INTO `t_product` VALUES ('6', '小米10', '3799', '<font color=\'#ff4a00\'>「到手价3499起；付尾款前5500名送双十一定制礼盒；256GB版本买赠散热背夹；可使用北京消费券」</font>骁龙865处理器 / 1亿像素8K电影相机 / 双模5G / 新一代LPDDR5内存 / 对称式立体声 / 90Hz刷新率+180Hz采样率 / UFS 3.0高速存储 / 全面适配Wi-Fi 6 / 超强VC液冷散热 / 30W极速闪充+30W无线闪充+10W无线反充 / 4780mAh大电量 / 多功能NFC', '[\'国风雅灰\', \'钛银黑\', \'冰海蓝\', \'蜜桃金\']', '[\'8GB+128GB\', \'8GB+256GB\', \'12GB+256GB\']', '1', null, '0099822e42b4428cb25c4cdebc6ca53d.jpg');
INSERT INTO `t_product` VALUES ('7', 'Redmi 10X 4G', '999', '<font color=\'#ff4a00\'>「碎屏保、延保5折，+1元得200GB云空间月卡，购机抽奖赢70英寸电视」</font>5020mAh超长续航+18W快充+最高9W反向充电 /128GB大内存 / 4800万超清四摄 /Helio G85游戏芯 /6.53\"小孔全面屏 /指纹识别+人脸解锁  /红外遥控', '[\'天际蓝\', \'明月灰\', \'松晨绿\', \'冰雾白\']', '[\'4GB+128GB\', \'6GB+128GB\']', '1', null, 'c388bd44a390e9c8413c25f0912839de.jpg');
INSERT INTO `t_product` VALUES ('8', '小米10至尊纪念版 陶瓷黑', '5299', '<font color=\'#ff4a00\'>「火热预定中；付尾款前3000名赠盲盒与定制卫衣；买赠69元皮革保护壳；最高享24期免息；可使用北京消费券」</font>120X 超远变焦 / 120W 秒充科技 / 120Hz刷新率 + 240Hz采样率 / 骁龙865旗舰处理器 /  双模5G / 10倍混合光学变焦 / OIS光学防抖+EIS数字防抖 / 2000万超清前置相机 / 双串蝶式石墨烯基锂离子电池 / 等效4500mAh大电量 / 120W  有线秒充+50W无线秒充+10W无线反充 /  WiFi 6 / 多功能NFC / 红外遥控', '[\'陶瓷黑\', \'透明版\', \'亮银版\']', '[\'8GB+256GB\', \'8GB+128GB\', \'12GB+256GB\', \'16GB+512GB\']', '1', null, 'pms_1597145894.51396359.jpg');
INSERT INTO `t_product` VALUES ('9', 'Redmi K30 Pro', '2999', '<font color=\'#ff4a00\'>「8GB+256GB到手价仅2999元；购机赠定制电话卡；购机抽奖赢70英寸电视」</font>双模5G / 高通骁龙865 / 弹出式超光感全面屏 /索尼 6400万高清四摄 / 8K视频拍摄 / 超大面积VC立体散热 / 4700mAh+33W疾速闪充 / 多功能NFC / 红外遥控', '[\'天际蓝\', \'星环紫\', \'月幕白\']', '[\'8GB+256GB\']', '1', null, 'c1aafa589258a4d9fdf49831b457418d.jpg');
INSERT INTO `t_product` VALUES ('10', 'Redmi 9', '799', '<font color=\'#ff4a00\'>「全版本买赠798元双人定制体检卡；赠定制电话卡；+1元得200G云空间月卡；更享延保、碎屏保5折；购机抽奖赢70英寸电视」</font>5020mAh超长续航+18W快充 / G80高性能处理器 / 128GB大内存 / 全场景 AI 四摄 / 1080P 全高清大屏 / 6.53\"水滴大屏 / 大功率扬声器 / 指纹识别+人脸解锁  / 红外遥控', '[\'藕荷粉\', \'霓虹蓝\', \'墨黛青\', \'碳素黑\']', '[\'4GB+64GB\', \'4GB+128GB\', \'6GB+128GB\']', '1', null, '01ad3a03edbf295729a690b89d69147d.jpg');
INSERT INTO `t_product` VALUES ('11', 'Redmi Note 8', '899', '<font color=\'#ff4a00\'>「订金50元预售中，碎屏保、延保5折，+1元得200GB云空间月卡」</font>4800万全场景四摄 / 前置1300万美颜相机 / 骁龙665处理器 / 4000mAh超长续航 / 标配18W快充 / 超线性扬声器 / 90%高屏占比 / 康宁大猩猩保护玻璃 / 6.3英寸水滴全面屏', '[\'星云紫\', \'皓月白\', \'梦幻蓝\', \'曜石黑\']', '[\'4GB+64GB\', \'6GB+64GB\', \'6GB+128GB\']', '1', null, '78d3ba2dd8a57f35951ea7b3466e1c41.jpg');
INSERT INTO `t_product` VALUES ('12', 'Redmi K30 5G', '1599', '<font color=\'#ff4a00\'>「订金预售中！6GB+128G版本 订金50元抵150元，还可叠加使用北京消费券；尾款前2000名赠手机定制礼盒」</font>双模5G / 三路并发 / 高通骁龙765G / 7nm 5G低功耗处理器 / 120Hz高帧率流速屏 / 6.67\'\'小孔径全面屏 / 索尼6400万前后六摄 / 最高可选8GB+256GB大存储 / 4500mAh+30W快充 / 3D四曲面玻璃机身 / 多功能NFC', '[\'深海微光\', \'紫玉幻境\', \'时光独白\', \'花影惊鸿\']', '[\'6GB+128GB\', \'8GB+128GB\', \'8GB+256GB\']', '1', null, '53641901fbc28cbcdb495b17fdf69e46.jpg');
INSERT INTO `t_product` VALUES ('13', 'Redmi Note 8 Pro', '1299', '<font color=\'#ff4a00\'>「订金50元预售中，碎屏保、延保5折，+1元得200GB云空间月卡」</font>6400万旗舰级全场景四摄 / 前置2000万 AI美颜相机 / G90T专业游戏芯片，液冷散热 / 6.53英寸水滴全面屏 / 4500mAh大电量 / 标配18W快充 / 康宁大猩猩保护玻璃 / 多功能NFC / 红外遥控功能 / Game Turbo2.0游戏加速', '[\'暮光橙\', \'贝母白\', \' 电光灰\', \'冰翡翠\']', '[\'6GB+128GB\', \'8GB+128GB\']', '1', null, '3fc6d7f106e20029fafec4a739eb1df9.jpg');
INSERT INTO `t_product` VALUES ('14', 'Redmi K30 4G', '1399', '120Hz高帧率流速屏 / 索尼6400万前后六摄 / 6.67\'\'小孔径全面屏 / 最高可选8GB+256GB大存储 / 高通骁龙730G处理器 / 3D四曲面玻璃机身 / 4500mAh+27W快充 / 多功能NFC', '[\'深海微光\', \'紫玉幻境\', \'花影惊鸿\']', '[\'6GB+128GB\', \'8GB+128GB\', \'8GB+256GB\']', '1', null, '2c16238f786e4f93bdb175d7bf21aa47.jpg');
INSERT INTO `t_product` VALUES ('15', '小米MIX Alpha', '19999', '创新环绕屏，极具未来感的智能交互体验 / 1亿像素超高清相机，超大感光元件 / 5G双卡全网通超高速网络 / 骁龙855Plus旗舰处理器 / 纳米硅基锂离子4050mAh电池，40W超级快充 / 钛合金+精密陶瓷+蓝宝石镜片前沿工艺', '[\'黑色\']', '[\'512GB\']', '1', null, 'pms_1569297737.97669352.jpg');
INSERT INTO `t_product` VALUES ('16', '小米10 Pro', '4999', '<font color=\'#ff4a00\'>「最高享24期免息，低至209元起/期；可使用北京消费券；购机尊享特惠加价购」</font>向往的生活同款 / 骁龙865处理器 / 1亿像素8K电影相机，50倍数字变焦，10倍混合光学变焦 / 双模5G / 新一代LPDDR5内存 / 50W极速闪充+30W无线闪充+10W无线反充 / 对称式立体声 / 90Hz刷新率+180Hz采样率 / UFS 3.0高速存储 / 全面适配WiFi 6 / 超强VC液冷散热  / 4500mAh大电量 / 多功能NFC', '[\'星空蓝\', \'珍珠白\']', '[\'8GB+256GB\', \'12GB+256GB\', \'12GB+512GB\']', '1', null, '9da6338562c89f67348a2306b164f3bd.jpg');
INSERT INTO `t_product` VALUES ('17', 'Redmi K30i 5G', '1799', '双模5G / 三路并发 / 高通骁龙765G / 7nm 5G低功耗处理器 / 120Hz高帧率流速屏 / 6.67\'\'小孔径全面屏 / 4800万前后六摄 / 4500mAh+30W快充 / 3D四曲面玻璃机身 / 多功能NFC', '[\'深海微光\', \'时光独白\']', '[\'8GB+128GB\', \'8GB+256GB\']', '1', null, '198f14291e25c2f01f67ff0977aa7c1c.jpg');
INSERT INTO `t_product` VALUES ('18', 'Redmi 7A', '549', '<font color=\'#ff4a00\'>「3GB+32GB到手价仅549元，小巧大音量，流畅体验，性价比之选」</font>4000mAh超长续航 / 骁龙8核处理器 / 标配10W快充 / AI人脸解锁 / 大字体，大音量，无线收音机 / 整机生活防泼溅 / 极简模式，亲情守护', '[\'雾光金\', \'晨曦蓝\', \'磨砂黑\']', '[\'2GB+32GB\', \'3GB+32GB\']', '1', null, '3c1af9783bdc53ed843af5655ca92009.jpg');
INSERT INTO `t_product` VALUES ('19', 'Redmi7A 全网通版 2GB+32GB 磨砂黑', '579', '4000mAh超长续航 / 骁龙8核处理器 / 标配10W快充 / AI人脸解锁 / 大字体，大音量，无线收音机 / 整机生活防泼溅 / 极简模式，亲情守护', '[\'磨砂黑\', \'晨曦蓝\']', '[\'32GB\']', '1', null, 'pms_1558858244.10347339.jpg');
INSERT INTO `t_product` VALUES ('20', 'Redmi 8A', '699', '<font color=\'#ff4a00\'>「购机赠定制电话卡，购机抽奖赢70英寸电视」</font>5000mAh大电量 / 最高可选4GB+64GB版本 / 支持18W快充 / Type-C充电接口 / 6.22\"水滴全面屏 / AI人脸解锁 / 骁龙八核处理器 / 超大音量 / 支持无线FM收音机', '[\'珊瑚橙\', \' 深海蓝\', \'耀夜黑\']', '[\'4GB+64GB\']', '1', null, 'c924c3f3436b6934495fd98f159ee3f7.jpg');
INSERT INTO `t_product` VALUES ('21', 'Redmi 10X Pro 5G', '2099', '<font color=\'#ff4a00\'>「赠送一年碎屏保，享6期分期免息，低至350元起/期，可叠加使用北京消费券，+1元得200G云空间月卡」</font>双5G待机/天玑820处理器/4800万流光相机+800万超广角/6.57\"三星AMOLED屏幕/屏幕指纹/4520mAh长续航/红外遥控', '[\'凝夜紫\', \'胧月金\\t\', \'深海蓝\', \'星露白\\t\', \'液态银\']', '[\'8GB+128GB\', \'8GB+256GB\']', '1', null, '1367efc0df6981934b4e8bf04c8d7dca.jpg');
INSERT INTO `t_product` VALUES ('22', 'Redmi 8', '799', '<font color=\'#ff4a00\'>「购机赠定制电话卡，购机抽奖赢70英寸电视」</font>5000mAh大电量 / 最高可选4GB+64GB版本 / 支持18W快充 / Type-C充电接口 / 6.22\"水滴全面屏 / 指纹识别+AI人脸解锁 / 骁龙八核处理器 / 超大音量 / 1200万AI双摄 / 支持红外遥控 / 支持无线FM收音机', '[\'宝石蓝\', \'魅影红\', \'碳岩灰\', \'仙踪绿\']', '[\'4GB+64GB\']', '1', null, 'd295c4fb500d163a7045dc715b47f808.jpg');
INSERT INTO `t_product` VALUES ('23', '腾讯黑鲨游戏手机3', '2999', '<font color=\'#ff4a00\'>「黑鲨3最高闪降500元，赠黑鲨保护套，购机享花呗12期分期免息」</font>骁龙865处理器 / 双模5G / 腾讯Solar Core游戏引擎 / 270Hz触控采样率+90Hz屏幕刷新率 / 最高65W极速闪充+背部磁吸充电 / 4720mAh大容量双电池 / UFS3.0闪存 / “三明治”液冷散热 /  屏幕压感3.0 / 游戏语音操控', '[\'闪电黑\', \'铠甲灰\', \'星辰银\']', '[\'8GB+128GB\', \'12GB+128GB\']', '1', null, '30095df9b9a4807aaec359f58a562780.jpg');
INSERT INTO `t_product` VALUES ('24', 'Redmi K30 Pro 变焦版', '3399', '<font color=\'#ff4a00\'>「订金预售中！50元抵350元，尾款前2000名赠定制礼盒，享12期免息；可叠加使用北京消费券」</font>双模5G / 高通骁龙865 / 弹出式超光感全面屏 / 索尼6400万双光学防抖四摄 / 8K视频拍摄 / 30倍变焦 / 超大面积VC立体散热 / 4700mAh+33W疾速闪充 / 多功能NFC / 红外遥控', '[\'月幕白\', \'星环紫\', \'天际蓝\', \'太空灰\']', '[\'8GB+256GB变焦版\']', '1', null, '7cfdbce40301133a287e9e57faa37bdf.jpg');
INSERT INTO `t_product` VALUES ('25', '腾讯黑鲨游戏手机3S 云天黑', '3799', '<font color=\'#ff4a00\'>「12GB+512GB订金预售进行中，尾款支付享12期免息、赠冰封散热背夹Pro、+1元得200GB云空间月卡」</font>骁龙865处理器 / 双模5G / 270Hz触控采样率+120Hz屏幕刷新率 / 三星AMOLED全面屏 / 最高65W极速闪充+背部磁吸充电 / 4720mAh大容量双电池 / UFS3.1闪存+LPDDR5运存 / “三明治”液冷散热 / JoyUI 12 游戏操作系统 / 畅玩投屏', '[\'云天黑\', \'水晶蓝\']', '[\'12GB+128GB\', \'12GB+256GB\', \'12GB+512GB\']', '1', null, 'pms_1595486329.61241316.jpg');
INSERT INTO `t_product` VALUES ('26', '小米全面屏电视65英寸 E65X 黑色', '2799', '<font color=\'#ff4a00\'>「小米电视“11.1开门红”火爆预售！订金100抵300，到手价不高于2599元，11月1日支付尾款再赢小米10等好礼！」</font>全面屏/4K HDR/内置小爱同学/杜比+DTS/64位四核处理器', '[\'黑色\']', '[\'65英寸\']', '2', null, 'pms_1601189808.02058075.jpg');
INSERT INTO `t_product` VALUES ('27', '小米电视4A 60英寸 黑色', '2399', '<font color=\'#ff4a00\'>「小米电视“11.1开门红”火爆预售！订金100抵400，到手价不高于2099元，11月1日支付尾款再赢小米10等好礼！」</font>4K HDR 超高清画质 / 人工智能语音系统 / 2G+8G大存储空间 / 海量视频好内容 / 64位四核高性能处理器', '[\'黑色\']', '[\'60英寸\']', '2', null, '0baabc9d2a861852ed4b7a82773ede9a.png');
INSERT INTO `t_product` VALUES ('28', 'Redmi智能电视A32 黑色', '849', '<font color=\'#ff4a00\'>「小米电视11月1日开门红0点开抢！限时直降100元，到手仅799元！分享APP活动页抽奖赢米家洗烘一体机！」</font>MIUI for TV 智能系统/立体声扬声器/64位处理器/1GB+8GB大存储', '[\'黑色\']', '[\'32英寸\']', '2', null, 'pms_1600165749.7719481.jpg');
INSERT INTO `t_product` VALUES ('29', '小米电视4A 70英寸 黑色', '3499', '<font color=\'#ff4a00\'>「小米电视“11.1开门红”火爆预售！订金100抵600，到手不高于2999元，11月1日支付尾款赢小米10等好礼！」</font>70英寸震撼巨屏 / 4K画质 细腻如真 / 杜比音效 身临其境 / PatchWall智能系统 内置小爱同学 / 海量好内容', '[\'黑色\']', '[\'70英寸\']', '2', null, 'ba524aedc5dc361da8d50a71472af6b6.jpg');
INSERT INTO `t_product` VALUES ('30', '小米电视大师 82英寸 黑色', '9999', '<font color=\'#ff4a00\'>「小米电视11.11提前购，价保11.11！买贵补差」</font>超画质巨幕/星幕锐影/10.7亿原色/120Hz MEMC/AI大师引擎/HDR大满贯/杜比全景声/四核A73处理器', '[\'黑色\']', '[\'82英寸\']', '2', null, 'pms_1601453164.93494136.jpg');
INSERT INTO `t_product` VALUES ('31', 'Redmi智能电视A55 黑色', '1938', '<font color=\'#ff4a00\'>「小米电视“11.1开门红”火爆预售！订金50抵100，到手价不高于1888元，11月1日支付尾款再赢小米10等好礼！」</font>超高清画质/立体声澎湃音效/海量影音资源/64位四核处理器/超窄边框', '[\'黑色\']', '[\'55英寸\']', '2', null, 'pms_1600242740.21454064.jpg');
INSERT INTO `t_product` VALUES ('32', '小米透明OLED电视 55英寸 黑色', '49999', '<font color=\'#ff4a00\'>「透明OLED电视火爆预约，11月11日0点开售！」</font>55″透明OLED |  悬浮影像 ｜杜比全景声 ｜四核A73 旗舰处理器', '[\'黑色\']', '[\'55英寸\']', '2', null, 'pms_1597155788.15473323.jpg');
INSERT INTO `t_product` VALUES ('33', '小米电视5 65英寸 灰色', '3999', '<font color=\'#ff4a00\'>「小米电视11.11提前购，价保11.11！买贵补差」</font>4K广色域屏幕  画质细腻若真/时尚全面屏设计/金属机身 尽显简约之美/支持8K视频内容/杜比震撼音效/支持远场语音  一呼即应/3GB+32GB大存储/海量好内容', '[\'灰色\']', '[\'65英寸\']', '2', null, 'pms_1572837360.55732961.jpg');
INSERT INTO `t_product` VALUES ('34', 'Redmi智能电视A43 黑色', '1249', '<font color=\'#ff4a00\'>「小米电视“11.1开门红”火爆预售！订金50抵100，到手不高于1199元，11月1日支付尾款赢小米10等好礼！」</font>全高清屏幕/64位高性能处理器/立体声扬声器/智能操作系统', '[\'黑色\']', '[\'43英寸\']', '2', null, 'pms_1600759822.92571872.jpg');
INSERT INTO `t_product` VALUES ('35', '全面屏电视Pro 75英寸  E75S', '5999', '<font color=\'#ff4a00\'>「小米电视11.11提前购，价保11.11！买贵补差」</font>AI金属全面屏电视 / 4K超高清画质 细腻如真 / 支持8K视频解码/ 2G+32G超大存储', '[\'灰色\']', '[\'75英寸\']', '2', null, '65adc10bf3a28d6dee6a912bbd23ce34.jpg');
INSERT INTO `t_product` VALUES ('36', 'Redmi智能电视A50 黑色', '1699', '<font color=\'#ff4a00\'>「现货销售，数量有限！价保11.11」</font>超高清画质/立体声澎湃音效/海量影音资源/64位四核处理器/超窄边框', '[\'黑色\']', '[\'50英寸\']', '2', null, 'pms_1600761666.17442390.jpg');
INSERT INTO `t_product` VALUES ('37', '米家投影抗光幕 120英寸', '1699', '超大画面/抗环境光/方便入户', '[\'通用\']', '[\'通用\']', '2', null, 'pms_1601363190.63257685.jpg');
INSERT INTO `t_product` VALUES ('38', '小米全面屏电视43英寸 E43K 黑色', '1399', '<font color=\'#ff4a00\'>「小米电视11月1日开门红0点开抢！限量2000台到手1249元，卖完即恢复1299元！分享APP活动页抽奖赢米家洗烘一体机！」</font>全面屏设计/无边视野/世界精彩一览无余', '[\'黑色\']', '[\'43英寸\']', '2', null, 'pms_1589855374.71192668.jpg');
INSERT INTO `t_product` VALUES ('39', '小米全面屏电视65英寸 E65C 灰色', '2799', '<font color=\'#ff4a00\'>「小米电视“11.1开门红”火爆预售！订金100抵300，到手不高于2599元，11月1日支付尾款赢小米10等好礼！」</font>震撼大屏 观影更爽 / 时尚全面屏设计 视野更广阔 / 4K超高清画质 细腻如真 / 杜比音效带来震撼体验 / 内置小爱同学  语音操控更便捷 / 智能PatchWall系统 / 2G+8G大存储空间 / 海量好内容 满足全家人的观看需求', '[\'灰色\']', '[\'65英寸\']', '2', null, 'pms_1569691861.38973660.jpg');
INSERT INTO `t_product` VALUES ('40', '小米电视4S 75英寸 银灰色', '4499', '<font color=\'#ff4a00\'>「11月1日0点开抢！限量1000台到手3999元，卖完即恢复4199元，限时赠2年延保！分享APP活动页抽奖赢米家洗烘一体机！」</font>75英寸沉浸体验 / 4K HDR / 金属机身 / 杜比+DTS / 海量片源 / PatchWall人工智能语音系统 / 语音遥控器 / 丰富接口', '[\'银灰色\']', '[\'75英寸\']', '2', null, '7e2127506fd2209f3115828404269d45.jpg');
INSERT INTO `t_product` VALUES ('41', '小米电视大师 82英寸至尊纪念版 灰色', '49999', '<font color=\'#ff4a00\'>【新品火爆抢购中！预计支付成功后15日开始发货】	</font>8K超高清/量子点技术/声动之翼/支持5G网络/全通道8K', '[\'灰色\']', '[\'82英寸\']', '2', null, '597dc0f15e44d85928711966d540ed71.jpg');
INSERT INTO `t_product` VALUES ('42', '小米电视5 Pro 65英寸', '4999', '<font color=\'#ff4a00\'>「小米电视11.11提前购，价保11.11！买贵补差」</font>量子点屏幕 / 全面屏设计 / 超薄金属机身 / 4GB+64GB大存储 / MEMC运动补偿 / 内置小爱同学 / 支持8K视频内容', '[\'灰色\']', '[\'65英寸\']', '2', null, 'pms_1572952364.0829734.jpg');
INSERT INTO `t_product` VALUES ('43', 'Redmi 智能电视 X65 灰色', '3049', '<font color=\'#ff4a00\'>「小米电视“11.1开门红”火爆预售！订金50抵100，到手不高于2999元，11月1日支付尾款赠2年延保，再赢小米10等好礼！」</font>全金属边框/4K超高清/MEMC运动补偿/8单元重低音音响系统', '[\'灰色\']', '[\'65英寸\']', '2', null, 'pms_1590402427.23834311.jpg');
INSERT INTO `t_product` VALUES ('44', 'Redmi 红米电视 40英寸  R40A 黑色', '1099', '全高清细腻画质/钢琴烤漆质感  更具艺术气息/智能PatchWall系统/支持多格式文件直读  轻松办公/1GB+8GB大存储/海量好内容', '[\'黑色\']', '[\'40英寸\']', '2', null, 'pms_1572507656.15924662.jpg');
INSERT INTO `t_product` VALUES ('45', 'Redmi 智能电视 X55 灰色', '2349', '<font color=\'#ff4a00\'>「小米电视“11.1开门红”火爆预售！订金50抵100，到手不高于2299元，11月1日支付尾款赠2年延保，再赢小米10等好礼！」</font>全金属边框/全面屏97%高屏占比/4K超高清/MEMC运动补偿', '[\'灰色\']', '[\'55英寸\']', '2', null, '79518fe4089f4382f0874909d2d9fef6.jpg');
INSERT INTO `t_product` VALUES ('65', '小米全面屏电视 55英寸E55X 灰色', '2299', '<font color=\'#ff4a00\'>「小米电视“11.1开门红”火爆预售！订金100抵300，到手价不高于2099元，11月1日支付尾款再赢小米10等好礼！」</font>潮流全面屏设计 视野更广阔 / 4K超高清画质 细腻如真 / 杜比音效带来震撼体验 / 内置小爱同学 语音操控更便捷 / 智能PatchWall系统 / 2G+8G大存储空间 / 海量好内容 满足全家人的观看需求', '[\'灰色\']', '[\'55英寸\']', '2', null, 'pms_1570600947.92372088.jpg');
INSERT INTO `t_product` VALUES ('66', '全面屏电视Pro 43英寸 E43S', '1799', '<font color=\'#ff4a00\'>「小米电视11.11提前购，价保11.11！买贵补差」</font>时尚金属全面屏设计 / 搭载Amlogic T972超强悍处理器 / 4K超高清画质 细腻如真 / 支持8K视频解码 / 2G+32G超大存储 / 内置小爱同学 语音控制更方便 / 智能Patchwall汇聚海量好内容', '[\'灰色\']', '[\'43英寸\']', '2', null, 'pms_1569287693.9871682.jpg');
INSERT INTO `t_product` VALUES ('67', 'Redmi 红米电视 70英寸', '3249', '70英寸震撼巨屏 / 4K画质 细腻如真 / 杜比音效 身临其境 / PatchWall智能系统 内置小爱同学 / 海量好内容 / U盘文件直读 轻松办公 / 无线投屏 分享更方便', '[\'70英寸\']', '[\'通用\']', '2', null, 'bcc00013f8210edecfdbeb8a71c6e47f.jpg');
INSERT INTO `t_product` VALUES ('68', '全面屏电视Pro 55英寸 E55S', '2799', '<font color=\'#ff4a00\'>「小米电视11.11提前购，价保11.11！买贵补差」</font>时尚金属全面屏设计 / 搭载Amlogic T972超强悍处理器 / 4K超高清画质 细腻如真 / 支持8K视频解码 / 2G+32G超大存储 / 内置小爱同学 语音控制更方便 / 智能Patchwall汇聚海量好内容', '[\'灰色\']', '[\'55英寸\']', '2', null, 'pms_1569249648.53373412.jpg');
INSERT INTO `t_product` VALUES ('69', 'Redmi智能电视A65 黑色', '2549', '<font color=\'#ff4a00\'>「小米电视“11.1开门红”火爆预售！订金50抵100，到手价不高于2499元，11月1日支付尾款再赢小米10等好礼！」</font>立体声澎湃音效/MIUI for TV/海量影音资源/64位四核处理器/超窄边框', '[\'黑色\']', '[\'65英寸\']', '2', null, 'pms_1601366403.72328147.jpg');
INSERT INTO `t_product` VALUES ('70', '小米电视4A 50英寸 黑色', '1799', '<font color=\'#ff4a00\'>「小米电视11月1日开门红0点开抢！限时直降200元，到手仅1599元！分享APP活动页抽奖赢米家洗烘一体机！」</font>4K HDR / 人工智能 / 蓝牙语音遥控器 / 高性能 / 大存储 / 海量片源', '[\'黑色\']', '[\'50英寸\']', '2', null, 'cf05e214d431795006e1073765aac9c5.jpg');
INSERT INTO `t_product` VALUES ('71', 'Redmi 智能电视 X50 灰色', '1938', '<font color=\'#ff4a00\'>「小米电视“11.1开门红”火爆预售！订金50抵100，到手不高于1888元，11月1日支付尾款赠2年延保，再赢小米10等好礼！」</font>MEMC运动补偿/8单元重低音音响系统/远场语音+AIoT控制', '[\'灰色\']', '[\'50英寸\']', '2', null, 'pms_1590398840.13581314.jpg');
INSERT INTO `t_product` VALUES ('72', 'Redmi 智能电视 MAX 98\"', '19999', '<font color=\'#ff4a00\'>重磅新品火爆预订中，11月1日支付尾款赢小米10！数量有限，先订先得！「定制产品非质量问题退货/拒收，需承担3000元逆向物流费」	</font>客厅里的巨幕影院 大视野带来超震撼的沉浸感/4K HDR超高清画质 逼真画面栩栩如生/杜比+DTS双解码 清澈立体的声音环绕整个客厅/MEMC运动补偿 无拖尾无重影/4G+64G大存储  畅快不卡顿/海量片源 观影更爽/智能家居控制中心', '[\'黑色\']', '[\'98英寸\']', '2', null, 'pms_1584958755.36428250.jpg');
INSERT INTO `t_product` VALUES ('73', '小米电视4C 32英寸 黑色', '899', '<font color=\'#ff4a00\'>「小米电视“11.1开门红”火爆预售！订金50抵150，到手不高于799元，11月1日支付尾款赢小米10等好礼！」</font>人工智能系统 | 64位处理器 | 1GB+4GB 内存', '[\'黑色\']', '[\'32英寸\']', '2', null, 'pms_1527060327.66235934.jpg');
INSERT INTO `t_product` VALUES ('74', '全面屏电视Pro 65英寸 E65S', '3699', '<font color=\'#ff4a00\'>「小米电视11.11提前购，价保11.11！买贵补差」</font>时尚金属全面屏设计 / 搭载Amlogic T972超强悍处理器 / 4K超高清画质 细腻如真 / 支持8K视频解码 / 2G+32G超大存储 / 内置小爱同学 语音控制更方便 / 智能Patchwall汇聚海量好内容', '[\'灰色\']', '[\'65英寸\']', '2', null, 'pms_1569287811.46782023.jpg');
INSERT INTO `t_product` VALUES ('75', '小米电视4S 70英寸 灰色', '3999', '70英寸震撼巨屏 带来影院级沉浸体验 / 4K超高清画质 细腻如真 / 杜比震撼音效 澎湃立体 / 精致金属机身 简约大气 / PatchWall人工智能语音系统 / 海量好内容 精彩不止', '[\'灰色\']', '[\'70英寸\']', '2', null, 'pms_1569414774.28017706.jpg');
INSERT INTO `t_product` VALUES ('76', '小米电视 大师 65英寸OLED', '12999', '<font color=\'#ff4a00\'>「小米电视“11.1开门红”火爆预售！订金1000抵4000，到手不高于9999元，11月1日支付尾款赢小米10等好礼！」</font>10.7亿原色显示 / 98.5%DCI-P3广色域 / 120Hz流速屏 / AI大师引擎 / 3D全景声，音响系统', '[\'黑色\']', '[\'65英寸\']', '2', null, 'pms_1593671513.90269727.jpg');
INSERT INTO `t_product` VALUES ('77', '小米全面屏电视E32A 灰色', '899', '全面屏设计 / 高清液晶屏 / 纤薄机身 / 1GB+4GB大内存 / 内置小爱同学', '[\'灰色\']', '[\'32英寸\']', '2', null, 'pms_1562135572.19265027.jpg');
INSERT INTO `t_product` VALUES ('78', '小米电视5 75英寸 灰色', '7999', '<font color=\'#ff4a00\'>「小米电视11月1日开门红0点开抢！限时赠米家手持无线吸尘器1C ！分享APP活动页抽奖赢米家洗烘一体机！」</font>全面屏设计 / 金属机身 / 4K广色域屏幕 /纤薄机身 / 内置小爱同学 / 3GB+32GB大存储 / 支持8K视频内容', '[\'灰色\']', '[\'75英寸\']', '2', null, 'pms_1572837172.34055639.jpg');
INSERT INTO `t_product` VALUES ('79', '小米全面屏电视E40A 黑色', '1199', '全面屏设计 / 全高清画质 / 内置小爱同学/ 1G+8G大内存 / 64位四核处理器', '[\'黑色\']', '[\'40英寸\']', '2', null, 'pms_1561540340.2381311.jpg');
INSERT INTO `t_product` VALUES ('80', '小米全面屏电视E32C 灰色', '899', '<font color=\'#ff4a00\'>「小米电视11月1日开门红0点开抢！限量1000台到手849元，卖完即恢复899元！分享APP活动页抽奖赢米家洗烘一体机！」</font>全面屏设计 / 高清分辨率 / 海量内容 / 1G+4G大内存 / 多核处理器', '[\'灰色\']', '[\'32英寸\']', '2', null, 'pms_1561540297.6364248.jpg');
INSERT INTO `t_product` VALUES ('81', '小米电视5 Pro 55英寸', '3999', '<font color=\'#ff4a00\'>「小米电视11.11提前购，价保11.11！买贵补差」</font>量子点屏幕 / 全面屏设计 / 超薄金属机身 / 4GB+64GB大存储 / MEMC运动补偿 / 内置小爱同学 / 支持8K视频内容', '[\'灰色\']', '[\'55英寸\']', '2', null, 'pms_1572952295.06134886.jpg');
INSERT INTO `t_product` VALUES ('82', '全面屏电视Pro 32英寸 E32S', '999', '<font color=\'#ff4a00\'>「小米电视11.11提前购，价保11.11！买贵补差」</font>全面屏设计/全高清画质/大功率立体扬声器/DTS解码', '[\'黑色\']', '[\'32英寸\']', '2', null, 'pms_1590207082.40799227.jpg');
INSERT INTO `t_product` VALUES ('83', '小米电视4A 65英寸 黑色', '2799', '<font color=\'#ff4a00\'>「小米电视11月1日开门红0点开抢！限时直降400元，到手仅2599元！分享APP活动页抽奖赢米家洗烘一体机！」</font>4K超高清屏 / 四核64位高性能处理器，支持HDR10 / 2GB+8GB大存储 / 人工智能语音 / 支持壁挂', '[\'黑色\']', '[\'65英寸\']', '2', null, '91b59cc6474e0cd777445b15adb13980.jpg');
INSERT INTO `t_product` VALUES ('84', '米家投影抗光幕 100英寸', '1499', '超大画面/抗环境光/方便入户/10毫米超窄边框', '[\'100英寸\']', '[\'通用\']', '2', null, 'pms_1601351031.56167615.png');
INSERT INTO `t_product` VALUES ('85', '小米电视5 Pro 75英寸', '9999', '<font color=\'#ff4a00\'>「小米电视11月1日开门红0点开抢！限时赠[定频|米家互联网立式空调2匹]！分享APP活动页抽奖赢米家洗烘一体机！」</font>量子点屏幕 / 全面屏设计 / 超薄金属机身 / 4GB+64GB大存储 / MEMC运动补偿 / 内置小爱同学 / 支持8K视频内容', '[\'灰色\']', '[\'75英寸\']', '2', null, 'pms_1572925348.19088381.jpg');
INSERT INTO `t_product` VALUES ('86', '小米全面屏电视E55A 灰色', '2299', '<font color=\'#ff4a00\'>「小米电视11月1日开门红0点开抢！限时直降200元，到手仅2099元！分享APP活动页抽奖赢米家洗烘一体机！」</font>全面屏设计 / 4K超高清+HDR / 纤薄机身 / 2GB+8GB大内存 / 64位四核处理器 / 内置小爱同学', '[\'灰色\']', '[\'55英寸\']', '2', null, 'pms_1562138486.16379871.jpg');
INSERT INTO `t_product` VALUES ('87', '小米电视5 55英寸 灰色', '3399', '<font color=\'#ff4a00\'>「小米电视11.11提前购，价保11.11！买贵补差」</font>4K广色域屏幕  画质细腻若真/时尚全面屏设计/金属机身 尽显简约之美/支持8K视频内容/杜比震撼音效/支持远场语音  一呼即应/3GB+32GB大存储', '[\'灰色\']', '[\'55英寸\']', '2', null, 'pms_1572837419.47939903.jpg');
INSERT INTO `t_product` VALUES ('88', '小米电视4X 65英寸 黑色', '2799', '<font color=\'#ff4a00\'>「小米电视11月1日开门红0点开抢！限时直降400元，到手仅2599元！分享APP活动页抽奖赢米家洗烘一体机！」</font>人工智能语音 / 4K HDR超高清画质 / 超窄边 / 2GB+8GB大内存 / 64位四核处理器 / 内置小爱同学', '[\'黑色\']', '[\'65英寸\']', '2', null, 'pms_1555945845.58334039.jpg');
INSERT INTO `t_product` VALUES ('89', '小米全面屏电视 43英寸 E43C 黑色', '1399', '<font color=\'#ff4a00\'>「小米电视11月1日开门红0点开抢！限时直降150元，到手仅1249元！分享APP活动页抽奖赢米家洗烘一体机！」</font>时尚全面屏设计 / 全高清画质 / 1GB+8GB大内存 / 64位四核处理器 / 内置小爱同学', '[\'黑色\']', '[\'43英寸\']', '2', null, 'e2ab66a8c986a8e0dbb85c432fc0cd84.jpg');
INSERT INTO `t_product` VALUES ('90', '小米全面屏电视E55C 灰色', '2299', '<font color=\'#ff4a00\'>「小米电视11月1日开门红0点开抢！限时直降200元，到手仅2099元！分享APP活动页抽奖赢米家洗烘一体机！」</font>全面屏设计 / 4K超高清 HDR / 纤薄机身 / 2GB+8GB大内存 / 64位四核处理器 / 内置小爱同学', '[\'灰色\']', '[\'55英寸\']', '2', null, 'pms_1562137966.77456698.jpg');
INSERT INTO `t_product` VALUES ('91', '小米全面屏电视43英寸 E43X 灰色', '1399', '<font color=\'#ff4a00\'>「小米电视11月1日开门红0点开抢！限时直降150元，到手仅1249元！分享APP活动页抽奖赢米家洗烘一体机！」</font>时尚全面屏设计 超高屏占比 / 全高清分辨率 展示更多画面细节 / 内置小爱同学 语音操控更便捷 / 智能PatchWall系统 / 智能家居控制中心 / 海量好内容 满足全家人的观看需求', '[\'灰色\']', '[\'43英寸\']', '2', null, '1fa6b7e80b1acc6fc48ed263e65ccf5a.jpg');
INSERT INTO `t_product` VALUES ('92', '小米全面屏电视E65A 灰色', '2799', '<font color=\'#ff4a00\'>「小米电视11月1日开门红0点开抢！限时直降500元，到手仅2599元！分享APP活动页抽奖赢米家洗烘一体机！」</font>全面屏设计 / 4K超高清 HDR / 纤薄机身 / 2GB+8GB大内存 / 64位四核处理器 / 内置小爱同学', '[\'灰色\']', '[\'65英寸\']', '2', null, 'pms_1562139940.61798032.jpg');
INSERT INTO `t_product` VALUES ('93', '小米全面屏电视E43A 灰色', '1399', '<font color=\'#ff4a00\'>「小米电视11月1日开门红0点开抢！限时直降150元，到手仅1249元！分享APP活动页抽奖赢米家洗烘一体机！」</font>全面屏设计 / 全高清+HDR / 纤薄机身 / 1GB+8GB大内存 / 64位四核处理器 / 内置小爱同学', '[\'灰色\']', '[\'43英寸\']', '2', null, 'pms_1562136966.41918063.jpg');
INSERT INTO `t_product` VALUES ('94', '小米电视4C 65英寸 黑色', '2799', '<font color=\'#ff4a00\'>「小米电视11月1日开门红0点开抢！限时直降400元，到手仅2599元！分享APP活动页抽奖赢米家洗烘一体机！」</font>4K HDR超高清画质 /  2GB+8GB大内存 / 人工智能语音 / 64位四核处理器 / 内置小爱同学', '[\'黑色\']', '[\'65英寸\']', '2', null, 'pms_1556096913.21054127.jpg');
INSERT INTO `t_product` VALUES ('95', '小米电视4C 43英寸', '1399', '<font color=\'#ff4a00\'>「小米电视11月1日开门红0点开抢！限时直降150元，到手仅1249元！分享APP活动页抽奖赢米家洗烘一体机！」</font>人工智能 / 超窄边 / 全高清屏 / 钢琴烤漆 / 高性能 / 大内存 / 海量片源', '[\'黑色\']', '[\'43英寸\']', '2', null, '17c610b6-c4e0-8c21-d293-46ce404a7a6c.jpg');
INSERT INTO `t_product` VALUES ('96', 'Redmi G 游戏本', '5299', '<font color=\'#ff4a00\'>「配置有新增，预订享优惠，到手价5299元！」</font>不受流行的掌控，每一种体验都为你带来娱乐无限', '[]', '[\'i5-10300H/16G/512G/144Hz\', \'i5-10200H/16G/512G/60Hz\', \' i7-10750H/16G/512G/144Hz\', \'GTX 1650 Ti\', \'GTX 1650\']', '3', null, 'a88365c77a691b36d02bc648203fc5b5.jpg');
INSERT INTO `t_product` VALUES ('97', 'RedmiBook 16 锐龙版', '3799', '16英寸全面屏 / 100% sRGB / AMD锐龙 4500U 处理器', '[\'灰色\']', '[\'R7/16G/512G SSD/ 100% sRGB\', \'R5/16G/512G SSD/ 100% sRGB\', \'R5/8G/512G SSD/100% sRGB\']', '3', null, 'f34f58cf0235bfdd4e3bc34682382d7b.jpg');
INSERT INTO `t_product` VALUES ('98', 'RedmiBook 14 Ⅱ', '4299', '全新十代酷睿处理器 / MX350独显 / 14英寸超窄边框高清屏', '[\'银色\']', '[\'i5/8G/512G SSD/MX350\', \'i5/16G/512G SSD/MX350/100%sRGB\', \'i7/16G/512G SSD/MX350/100%sRGB\']', '3', null, '75026bffd4a6e1e6be58bbe5e0e00a99.jpg');
INSERT INTO `t_product` VALUES ('99', 'RedmiBook 14 Ⅱ 锐龙版', '3599', '14英寸FHD全面屏 / 超轻薄金属机身 / AMD锐龙 4500U 处理器', '[\'银色\']', '[\'R7/16G/512G SSD/100%sRGB\', \'R5/16G/512G SSD\', \'R5/8G/512G SSD\']', '3', null, '75026bffd4a6e1e6be58bbe5e0e00a99.jpg');
INSERT INTO `t_product` VALUES ('100', 'Pro 15.6\" 2020款', '5999', '全新第十代英特尔酷睿处理器 / MX350显卡 / 全尺寸背光键盘 / 100%sRGB高色域', '[\'灰色\']', '[\'I5-10210U 4C/8G/512G/MX350 2GB\', \'I7-10510U 4C/16G/1T/MX350 2GB\']', '3', null, 'd9695deb5efdbca6c21d89248dbf3a81.jpg');
INSERT INTO `t_product` VALUES ('101', 'RedmiBook 16', '4699', '全新十代酷睿处理器 / MX350独显 / 16英寸超窄边框高清屏', '[\'灰色\']', '[\'i5/16G/512G SSD/MX350\', \'i7/16G/512G SSD/MX350\']', '3', null, 'f34f58cf0235bfdd4e3bc34682382d7b.jpg');
INSERT INTO `t_product` VALUES ('102', 'RedmiBook 14 集显版', '2999', '性能增强版酷睿™处理器 / 14吋超窄边框全高清屏幕 / 轻薄便携长续航 / 支持Modern Standby，小米手环疾速解锁', '[\'银色\']', '[\'i3 8G 256GB 集显\', \'i3 4G 256GB 集显\', \'i5 8G 256GB 集显\']', '3', null, 'b6833f4c22b5e0b9d6f547748c6eeae3.jpg');
INSERT INTO `t_product` VALUES ('103', 'RedmiBook Air 13', '4899', '打开它，就像翻开一本杂志', '[\'I7/16GB/512G/2.5K 100%sRGB\', \'I5/16GB/512G/2.5K 100%sRGB\', \'I5/8GB/512G/2.5K 100%sRGB\']', '[\'灰色\']', '3', null, 'ee9c755f2f006fb59dd8f83d4e86176a.jpg');
INSERT INTO `t_product` VALUES ('104', '游戏本2019款', '5999', '九代酷睿标压处理器 / 144Hz 刷新率 / 3+2包围式热管 / 12V 台机级别散热风扇 / 72%色域', '[]', '[\'i7 16G 512GB\', \'i5 8G 512GB\', \'i7 16G 1T PCIe\', \'GTX1660Ti\', \'RTX2060\']', '3', null, '470b268ceff61ad52b7837f4082fb773.jpg');
INSERT INTO `t_product` VALUES ('105', 'RedmiBook 14 锐龙版', '3199', '满血版锐龙 3000系列处理器 / 搭载Radeon Vega Graphics显卡 / 强劲散热系统 / 全新小米互传', '[\'月光银\']', '[\'R7 16G 512G\', \'R5 8G 512G\', \'R5 8G 256G\', \'R5 16G 512G\']', '3', null, '318f692b54b277701c7e1a0c16ab93db.jpg');
INSERT INTO `t_product` VALUES ('106', 'Air 12.5\" 2019款', '3299', '<font color=\'#ff4a00\'>「部分型号订金预售，立省500元，到手价3499！」</font>全高清屏幕 / 长续航全金属 / 超窄边框  / 像杂志一样随身携带 / 哈曼高品质扬声器', '[\'金色\', \'银色\']', '[\'i5 4G 256G SSD\', \'m3 4G 256G SSD\', \'m3 4G 128G SSD\']', '3', null, '9da19c26b55c0c22fea23c3b8a31dc28.jpg');
INSERT INTO `t_product` VALUES ('107', 'RedmiBook 14 增强版', '3999', '全新十代酷睿处理器 / MX250独显 / 14英寸超窄边框高清屏 / 小米手环极速解锁 / 炫酷多彩任你挑选', '[\'月光银\']', '[\'i5 8G 512GB MX250\', \'i7 8G 512GB MX250\', \'i5 8G 1T PCIe MX250\']', '3', null, 'c475df06dfe78971dab1b02af23ca628.jpg');
INSERT INTO `t_product` VALUES ('108', 'RedmiBook 13 锐龙版', '3599', '四窄边全面屏/全金属超轻机身/小米智能互联', '[\'灰色\', \'银色\']', '[\'R7/16G/1T PCIe\', \'R5/16G/512G SSD\', \'R5/8G/512G SSD\']', '3', null, 'a6e4e80b9701a5f2df6902d79fc7824d.jpg');
INSERT INTO `t_product` VALUES ('109', 'RedmiBook 13', '3999', '四窄边全面屏 / 全新十代酷睿™处理器 / 全金属超轻机身 / MX250 高性能独显 / 小米互传 / 专业「飓风」散热系统 / 11小时长续航', '[\'集显\', \'独显\']', '[\' i5 8G 512G\', \'i7 8G 512G\']', '3', null, 'a6e4e80b9701a5f2df6902d79fc7824d.jpg');
INSERT INTO `t_product` VALUES ('110', 'Air 13.3\" 2019款', '5499', '轻薄全金属机身 / MX250独立显卡 / 9.5小时超长续航 / FHD全高清屏幕 / 指纹解锁 / 兼顾办公娱乐与轻薄的高性能笔记本', '[\'深灰\', \'银色\']', '[\'i7 8G 512G PCIe MX250\', \'i5 8G 256G PCIe\']', '3', null, '74e573c4c0d89048392d14831cc507d5.jpg');
INSERT INTO `t_product` VALUES ('111', '小米快速液晶显示器 24.5英寸 黑色', '1499', '<font color=\'#ff4a00\'>「快速液晶显示器新品上线，拒绝拖影，决胜游戏战场！订金100抵500，付尾款再领限量100元优惠券，到手价999元！」</font>144Hz超高刷新率/快速液晶技术 极速响应/95% DCI-P3广色域', '[\'黑色\']', '[\'通用\']', '3', null, 'pms_1603390010.6652695.jpg');
INSERT INTO `t_product` VALUES ('112', '小米显示器 27英寸 165Hz版 黑色', '1999', '高动态显示增强/舒适护眼/随线出厂校色/原生8bit', '[\'黑色\']', '[\'通用\']', '3', null, 'pms_1591755481.58867678.jpg');
INSERT INTO `t_product` VALUES ('113', '小米曲面显示器 34英寸 黑', '2199', '21:9宽广全景视野 /三星面板+2K超清分辨率 / 1500R极致大曲率 / 144Hz刷新率 / 121%sRGB宽广色域 / 支持升降,旋转,壁挂', '[\'34英寸\']', '[\'通用\']', '3', null, '7a4cc78dcb3b77372c600aa28291ad3b.jpg');
INSERT INTO `t_product` VALUES ('114', '小米显示器1A 23.8英寸 黑色', '699', '178°广视角 / 1080P 高清画质 / 薄机身高颜值 / 三微边设计 / 低蓝光不伤眼 / 3年质保', '[\'黑色\']', '[\'通用\']', '3', null, 'pms_1583999999.50692398.jpg');
INSERT INTO `t_product` VALUES ('115', '小米显示器 23.8英寸', '679', '1080P高清画质 / 178°广阔视觉 / 超薄机身 / 3年质保 / 健康护眼 / 简约设计高颜值', '[\'23.8英寸\']', '[\'通用\']', '3', null, 'f49389dea28b178aff9d6b9a15d753f7.jpg');
INSERT INTO `t_product` VALUES ('116', 'Redmi G 游戏本', '5299', '<font color=\'#ff4a00\'>「配置有新增，预订享优惠，到手价5299元！」</font>不受流行的掌控，每一种体验都为你带来娱乐无限', '[]', '[\'i5-10300H/16G/512G/144Hz\', \'i5-10200H/16G/512G/60Hz\', \' i7-10750H/16G/512G/144Hz\', \'GTX 1650 Ti\', \'GTX 1650\']', '3', null, 'a88365c77a691b36d02bc648203fc5b5.jpg');
INSERT INTO `t_product` VALUES ('117', 'RedmiBook 16 锐龙版', '3799', '16英寸全面屏 / 100% sRGB / AMD锐龙 4500U 处理器', '[\'灰色\']', '[\'R7/16G/512G SSD/ 100% sRGB\', \'R5/16G/512G SSD/ 100% sRGB\', \'R5/8G/512G SSD/100% sRGB\']', '3', null, 'f34f58cf0235bfdd4e3bc34682382d7b.jpg');
INSERT INTO `t_product` VALUES ('118', 'RedmiBook 14 Ⅱ', '4299', '全新十代酷睿处理器 / MX350独显 / 14英寸超窄边框高清屏', '[\'银色\']', '[\'i5/8G/512G SSD/MX350\', \'i5/16G/512G SSD/MX350/100%sRGB\', \'i7/16G/512G SSD/MX350/100%sRGB\']', '3', null, '75026bffd4a6e1e6be58bbe5e0e00a99.jpg');
INSERT INTO `t_product` VALUES ('119', 'RedmiBook 14 Ⅱ 锐龙版', '3599', '14英寸FHD全面屏 / 超轻薄金属机身 / AMD锐龙 4500U 处理器', '[\'银色\']', '[\'R7/16G/512G SSD/100%sRGB\', \'R5/16G/512G SSD\', \'R5/8G/512G SSD\']', '3', null, '75026bffd4a6e1e6be58bbe5e0e00a99.jpg');
INSERT INTO `t_product` VALUES ('120', 'Pro 15.6\" 2020款', '5999', '全新第十代英特尔酷睿处理器 / MX350显卡 / 全尺寸背光键盘 / 100%sRGB高色域', '[\'灰色\']', '[\'I5-10210U 4C/8G/512G/MX350 2GB\', \'I7-10510U 4C/16G/1T/MX350 2GB\']', '3', null, 'd9695deb5efdbca6c21d89248dbf3a81.jpg');
INSERT INTO `t_product` VALUES ('121', 'RedmiBook 16', '4699', '全新十代酷睿处理器 / MX350独显 / 16英寸超窄边框高清屏', '[\'灰色\']', '[\'i5/16G/512G SSD/MX350\', \'i7/16G/512G SSD/MX350\']', '3', null, 'f34f58cf0235bfdd4e3bc34682382d7b.jpg');
INSERT INTO `t_product` VALUES ('122', 'RedmiBook 14 集显版', '2999', '性能增强版酷睿™处理器 / 14吋超窄边框全高清屏幕 / 轻薄便携长续航 / 支持Modern Standby，小米手环疾速解锁', '[\'银色\']', '[\'i3 8G 256GB 集显\', \'i3 4G 256GB 集显\', \'i5 8G 256GB 集显\']', '3', null, 'b6833f4c22b5e0b9d6f547748c6eeae3.jpg');
INSERT INTO `t_product` VALUES ('123', 'RedmiBook Air 13', '4899', '打开它，就像翻开一本杂志', '[\'I7/16GB/512G/2.5K 100%sRGB\', \'I5/16GB/512G/2.5K 100%sRGB\', \'I5/8GB/512G/2.5K 100%sRGB\']', '[\'灰色\']', '3', null, 'ee9c755f2f006fb59dd8f83d4e86176a.jpg');
INSERT INTO `t_product` VALUES ('124', '游戏本2019款', '5999', '九代酷睿标压处理器 / 144Hz 刷新率 / 3+2包围式热管 / 12V 台机级别散热风扇 / 72%色域', '[]', '[\'i7 16G 512GB\', \'i5 8G 512GB\', \'i7 16G 1T PCIe\', \'GTX1660Ti\', \'RTX2060\']', '3', null, '470b268ceff61ad52b7837f4082fb773.jpg');
INSERT INTO `t_product` VALUES ('125', 'RedmiBook 14 锐龙版', '3199', '满血版锐龙 3000系列处理器 / 搭载Radeon Vega Graphics显卡 / 强劲散热系统 / 全新小米互传', '[\'月光银\']', '[\'R7 16G 512G\', \'R5 8G 512G\', \'R5 8G 256G\', \'R5 16G 512G\']', '3', null, '318f692b54b277701c7e1a0c16ab93db.jpg');
INSERT INTO `t_product` VALUES ('126', 'Air 12.5\" 2019款', '3299', '<font color=\'#ff4a00\'>「部分型号订金预售，立省500元，到手价3499！」</font>全高清屏幕 / 长续航全金属 / 超窄边框  / 像杂志一样随身携带 / 哈曼高品质扬声器', '[\'金色\', \'银色\']', '[\'i5 4G 256G SSD\', \'m3 4G 256G SSD\', \'m3 4G 128G SSD\']', '3', null, '9da19c26b55c0c22fea23c3b8a31dc28.jpg');
INSERT INTO `t_product` VALUES ('127', 'RedmiBook 14 增强版', '3999', '全新十代酷睿处理器 / MX250独显 / 14英寸超窄边框高清屏 / 小米手环极速解锁 / 炫酷多彩任你挑选', '[\'月光银\']', '[\'i5 8G 512GB MX250\', \'i7 8G 512GB MX250\', \'i5 8G 1T PCIe MX250\']', '3', null, 'c475df06dfe78971dab1b02af23ca628.jpg');
INSERT INTO `t_product` VALUES ('128', 'RedmiBook 13 锐龙版', '3599', '四窄边全面屏/全金属超轻机身/小米智能互联', '[\'灰色\', \'银色\']', '[\'R7/16G/1T PCIe\', \'R5/16G/512G SSD\', \'R5/8G/512G SSD\']', '3', null, 'a6e4e80b9701a5f2df6902d79fc7824d.jpg');
INSERT INTO `t_product` VALUES ('129', 'RedmiBook 13', '3999', '四窄边全面屏 / 全新十代酷睿™处理器 / 全金属超轻机身 / MX250 高性能独显 / 小米互传 / 专业「飓风」散热系统 / 11小时长续航', '[\'集显\', \'独显\']', '[\' i5 8G 512G\', \'i7 8G 512G\']', '3', null, 'a6e4e80b9701a5f2df6902d79fc7824d.jpg');
INSERT INTO `t_product` VALUES ('130', 'Air 13.3\" 2019款', '5499', '轻薄全金属机身 / MX250独立显卡 / 9.5小时超长续航 / FHD全高清屏幕 / 指纹解锁 / 兼顾办公娱乐与轻薄的高性能笔记本', '[\'深灰\', \'银色\']', '[\'i7 8G 512G PCIe MX250\', \'i5 8G 256G PCIe\']', '3', null, '74e573c4c0d89048392d14831cc507d5.jpg');
INSERT INTO `t_product` VALUES ('131', '小米快速液晶显示器 24.5英寸 黑色', '1499', '<font color=\'#ff4a00\'>「快速液晶显示器新品上线，拒绝拖影，决胜游戏战场！订金100抵500，付尾款再领限量100元优惠券，到手价999元！」</font>144Hz超高刷新率/快速液晶技术 极速响应/95% DCI-P3广色域', '[\'黑色\']', '[\'通用\']', '3', null, 'pms_1603390010.6652695.jpg');
INSERT INTO `t_product` VALUES ('132', '小米显示器 27英寸 165Hz版 黑色', '1999', '高动态显示增强/舒适护眼/随线出厂校色/原生8bit', '[\'黑色\']', '[\'通用\']', '3', null, 'pms_1591755481.58867678.jpg');
INSERT INTO `t_product` VALUES ('133', '小米曲面显示器 34英寸 黑', '2199', '21:9宽广全景视野 /三星面板+2K超清分辨率 / 1500R极致大曲率 / 144Hz刷新率 / 121%sRGB宽广色域 / 支持升降,旋转,壁挂', '[\'34英寸\']', '[\'通用\']', '3', null, '7a4cc78dcb3b77372c600aa28291ad3b.jpg');
INSERT INTO `t_product` VALUES ('134', '小米显示器1A 23.8英寸 黑色', '699', '178°广视角 / 1080P 高清画质 / 薄机身高颜值 / 三微边设计 / 低蓝光不伤眼 / 3年质保', '[\'黑色\']', '[\'通用\']', '3', null, 'pms_1583999999.50692398.jpg');
INSERT INTO `t_product` VALUES ('135', '小米显示器 23.8英寸', '679', '1080P高清画质 / 178°广阔视觉 / 超薄机身 / 3年质保 / 健康护眼 / 简约设计高颜值', '[\'23.8英寸\']', '[\'通用\']', '3', null, 'f49389dea28b178aff9d6b9a15d753f7.jpg');
INSERT INTO `t_product` VALUES ('136', '米家互联网洗碗机 4套台面式 4套台面式 白色', '1299', '<font color=\'#ff4a00\'>「小米“11.1开门红”，11月1日到手价不高于999元，最高享24期分期免息！」</font>台式免安装、无需厨房大改造/专为孕妈、宝宝餐具设置消毒洗功能/75℃高温除菌，除菌率高达99.99% / 温馨提示：本产品包装内不含任何洗碗机专用耗材，请购机前根据机器需要，提前准备专用耗材', '[\'4套台面式 白色\']', '[\'通用\']', '10', null, 'pms_1582436742.10855313.jpg');
INSERT INTO `t_product` VALUES ('137', '圈厨多用途电热锅 白色', '199', '<font color=\'#ff4a00\'>「小米“11.1开门红”，11月1日到手价不高于169元！」</font>一锅多用，7大烹饪模式/24小时预约，美味无需等待/食品接触级304不锈钢，好材质煮食才安心', '[\'白色\']', '[\'通用\']', '10', null, 'pms_1589945613.22046687.jpg');
INSERT INTO `t_product` VALUES ('138', '米家电磁炉', '299', '<font color=\'#ff4a00\'>「小米“11.1开门红”，11月1日到手价不高于259元！」</font>99挡微调控火 / 支持低温烹饪 / 100+烹饪模式', '[\'白色\']', '[\'通用\']', '10', null, '7382a91d1f2611ce859bd6fd8578c994.jpg');
INSERT INTO `t_product` VALUES ('139', '米家微波炉 白色', '399', '<font color=\'#ff4a00\'>「小米“11.1开门红”，11月1日到手价不高于369元！」</font>智能APP操控 / 平板式加热 / 专项分类解冻 / 20L容量 / 30+精选食谱', '[\'白色\']', '[\'通用\']', '10', null, 'pms_1563787495.68116844.jpg');
INSERT INTO `t_product` VALUES ('140', '米家电水壶1S 白色', '149', '<font color=\'#ff4a00\'>「小米“11.1开门红”，11月1日到手价不高于129元！」</font>一键保温约55℃，不烫不凉好入口 / 升级1.7L大容量 / 高品质304不锈钢，安全健康无异味 / 升级加厚加热底盘，充分沸腾', '[\'白色\']', '[\'通用\']', '10', null, 'ca14d45520785d3628bfd2e46d9ac9d2.jpg');
INSERT INTO `t_product` VALUES ('141', 'Pinlo迷你三明治机 白色', '109', '<font color=\'#ff4a00\'>「小米“11.1开门红”，11月1日到手价不高于99元！」</font>煎烤一体，多食材料理 / 弧面烤盘，馅料饱满 / 热压封边，锁汁锁味', '[\'白色\']', '[\'通用\']', '10', null, 'pms_1589007010.44868979.jpg');
INSERT INTO `t_product` VALUES ('142', '小米定制心想甄选胶囊咖啡 低蕴丝滑', '158', '精选原豆/密封保鲜/口味多样/欧洲直采', '[\'低蕴丝滑\', \'意式浓缩\']', '[\'通用\']', '10', null, '3ab0b4bb24dd229dc53d3a554d71d866.jpg');
INSERT INTO `t_product` VALUES ('143', '米家电饭煲4L 白色', '299', '<font color=\'#ff4a00\'>「小米“11.1开门红”，11月1日到手价不高于249元！」</font>4L大容量 / 智能加热曲线 / 2.0mm 厚质锅胆 / 大金PFA粉体涂层 / 890W动态功率 / 双感温探头 / 24小时智能远程预约', '[\'白色\']', '[\'通用\']', '10', null, 'pms_1559728396.2634058.jpg');
INSERT INTO `t_product` VALUES ('144', '臻米米汤分离蒸汽养生饭煲', '849', '米汤分离技术，煮沥蒸古法工艺，出口日本众筹', '[\'养生饭煲\']', '[\'通用\']', '10', null, 'pms_1595404844.6696816.jpg');
INSERT INTO `t_product` VALUES ('145', '米家手持挂烫机 白色', '119', '<font color=\'#ff4a00\'>「小米11.11，11月1日立省10元，到手价109元！」</font>熨衣不伤衣丨除菌除螨丨轻巧便携', '[\'白色\']', '[\'通用\']', '10', null, 'pms_1588141296.4258865.jpg');
INSERT INTO `t_product` VALUES ('146', '米家互联网燃气灶（天然气）', '799', '4200W 大火力 / 内环双层稳焰 / 230°无极控火 / 烟灶联动', '[\'天然气\', \'液化石油气\']', '[\'通用\']', '10', null, '864102537ce049557e30e28938157247.jpg');
INSERT INTO `t_product` VALUES ('147', '米家智能宠物喂食器 白色', '399', '自动喂食 / 防潮锁鲜 / 顺畅出粮 / 智能场景联动', '[\'白色\']', '[\'通用\']', '10', null, 'pms_1600224159.33498409.jpg');
INSERT INTO `t_product` VALUES ('148', '米家小饭煲 白色', '199', '<font color=\'#ff4a00\'>「小米“11.1开门红”，11月1日到手价不高于169元！」</font>1.6L 精致容量 / 400W 强力烹饪 / 大金 PFA 不粘锅粉体涂层 / APP 智能联动', '[\'白色\']', '[\'通用\']', '10', null, '888baa6c94ee18f4dc3f4b5ee7e18fb0.jpg');
INSERT INTO `t_product` VALUES ('149', '米家恒温电水壶Pro 白色', '249', '<font color=\'#ff4a00\'>「小米“11.1开门红”，11月1日到手价不高于199元！」</font>温度实时显示 /  1.5L 大容量 / 英国品牌STRIX温控器 / 3重安全保护', '[\'白色\']', '[\'通用\']', '10', null, 'pms_1590131197.73112844.jpg');
INSERT INTO `t_product` VALUES ('150', '米家手持无线吸尘器1C 白色', '999', '<font color=\'#ff4a00\'>「小米11.11，11月1日立省150元，到手价849元，享24期分期免息！」</font>120AW吸入功率 / 60分钟超长续航 / 壁挂式充电架 / 多锥旋风过滤', '[\'白色\']', '[\'通用\']', '10', null, 'c0a833016e554f8220ce85f6d4edd3bb.jpg');
INSERT INTO `t_product` VALUES ('151', '米家踢脚线电暖器1S 黑色', '699', '<font color=\'#ff4a00\'>「小米11.11，订金10元抵110元，11月1日0点支付尾款，预订到手价599元！」\n</font>全屋热循环 / 暖流加速 / 智能恒温 / 智能控制 /2200W大功率 / IPX4级防水', '[\'黑色\']', '[\'通用\']', '10', null, 'pms_1599536467.27169261.jpg');
INSERT INTO `t_product` VALUES ('152', '米家随手吸尘器 白色', '249', '<font color=\'#ff4a00\'>「小米11.11，11月1日立省20元，到手价229元！」</font>轻巧便携、澎湃动力。', '[\'白色\']', '[\'通用\']', '10', null, 'pms_1594971761.88295923.jpg');
INSERT INTO `t_product` VALUES ('153', '米家智能浴霸Pro 白色', '699', '<font color=\'#ff4a00\'>「新品火热抢购中！」</font>1分钟升温10℃ | 免布线 | 直流变频自然风 | 空调式导风板 | 恒温除雾 | 自动换气 | 智能干燥 | 冬暖夏凉', '[\'白色\']', '[\'通用\']', '10', null, 'pms_1602554964.36617300.jpg');
INSERT INTO `t_product` VALUES ('154', '米家即热饮水机C1 白色', '249', '<font color=\'#ff4a00\'>「小米“11.1开门红”，11月1日到手价不高于229元！」</font>3秒即热，烧水不用等；快速出水，3挡温度可选，满足日常饮用所需；个性杯量记忆，你的专属模式；2.5L大容量可视窗水箱设计', '[\'白色\']', '[\'通用\']', '10', null, 'pms_1576807720.44779097.jpg');
INSERT INTO `t_product` VALUES ('155', '米家无线除螨仪 HEPA（两支装） 两支装', '49', '除螨效果立竿见影', '[\'两支装\']', '[\'通用\']', '10', null, 'pms_1596532062.72293315.jpg');
INSERT INTO `t_product` VALUES ('156', '米家电饭煲C1  3L', '149', '<font color=\'#ff4a00\'>「小米“11.1开门红”，11月1日3L到手价不高于139元！」</font>3L、4L、5L可选 / 650W大功率 / 支持20分钟热水快饭 / 一键调节加热时间 / 搭配可得24种模式', '[\'白色 3L\', \'白色 4L\', \'白色 5L\']', '[\'通用\']', '10', null, 'pms_1574391572.30114650.jpg');
INSERT INTO `t_product` VALUES ('157', '米家无线吸尘器K10 白色', '1499', '<font color=\'#ff4a00\'>「小米11.11，订金100抵300元，11月1日0点支付尾款，到手价1299元！」 </font>150AW吸入功率 | 多锥旋风分离系统 | 智能感应地刷 | LCD高清数显屏', '[\'白色\']', '[\'通用\']', '10', null, 'pms_1601045037.30488073.jpg');
INSERT INTO `t_product` VALUES ('158', '米家立式暖风机 白色', '399', '<font color=\'#ff4a00\'>「新品火热抢购中！」</font>开机即热 | 感应摇头 | 智能恒温 | 5种功能模式 | 多重保护 | 轻巧便携', '[\'白色\']', '[\'通用\']', '10', null, 'pms_1602213527.59438216.jpg');
INSERT INTO `t_product` VALUES ('159', '米家加湿器 白色', '99', '上加水 | 280ml/h雾化量 | 银离子抗菌 | 轻音加湿', '[\'白色\']', '[\'通用\']', '10', null, 'pms_1585206321.16433775.jpg');
INSERT INTO `t_product` VALUES ('160', '德尔玛喷水拖把', '55', '【有品精选】即拖即干，0.75kg不费力，碳纤维锁尘布，360°旋转杆', '[\'喷水拖把\']', '[\'通用\']', '10', null, 'pms_1570788201.77258185.jpg');
INSERT INTO `t_product` VALUES ('161', '圈厨多功能涮烤锅 黑色火锅盘', '399', '<font color=\'#ff4a00\'>「小米“11.1开门红”，11月1日到手价不高于299元！」</font>煎烤烙炖煮焖，双盘全搞定 / 滑控调火，自动加热 / 专利隔热盘脚，不怕伤台面 / 分离式盘体，可全身冲洗 / 食品接触用不粘涂层，清洁更简单 / 网红料理新宠，开启乐趣厨房', '[\'黑色火锅盘\']', '[\'通用\']', '10', null, 'pms_1591873468.43358512.jpg');
INSERT INTO `t_product` VALUES ('162', '米家踢脚线电暖器E 白色', '499', '<font color=\'#ff4a00\'>「小米11.11，11月1日立省50元，到手价449元！」</font>对流循环均衡供暖 |  智能恒温节能 | 居浴两用', '[\'白色\']', '[\'通用\']', '10', null, 'pms_1600695132.80131541.jpg');
INSERT INTO `t_product` VALUES ('163', '米家电水壶1A 白色', '79', '<font color=\'#ff4a00\'>「小米“11.1开门红”，11月1日到手价不高于69元！」</font>1.5L大容量 / 1800W大功率，快速沸腾 / 内外双层结构，中空隔热不烫手 / 英国品牌温控器，保证热水真正沸腾 / 沸腾后，缺水时，提壶时自动断电，底座防触电设计 / 304不锈钢一体无缝内胆，卫生健康 / 大口径设计，更易清洗', '[\'白色\']', '[\'通用\']', '10', null, 'pms_1576224734.95181382.jpg');
INSERT INTO `t_product` VALUES ('164', '米家互联网洗碗机 8套嵌入式', '2299', '<font color=\'#ff4a00\'>「小米11.11爆品超值预售，订金100元抵400元，11月1日0点起付尾款，到手价1999元，最高享24期分期免息！」</font>洗消烘存一体 / 除菌率高达99.99% / 3层立体喷淋+PTC热风烘干系统的超高配置 / 洗后“碗”若新生 / 温馨提示：本产品包装内不含任何洗碗机专用耗材，请购机前根据机器需要，提前准备专用耗材', '[\'8套嵌入式\']', '[\'通用\']', '10', null, 'pms_1582436787.34363027.jpg');
INSERT INTO `t_product` VALUES ('165', '米家智能晾衣机 白色', '899', '<font color=\'#ff4a00\'>「小米11.11，订金20元抵40元，11月1日0点支付尾款，到手价879元！」\n</font>一键升降丨米家智能控制丨满足全家晾晒需求丨免费上门安装及拆旧', '[\'白色\']', '[\'通用\']', '10', null, 'pms_1590735370.73973604.jpg');
INSERT INTO `t_product` VALUES ('166', '米家扫拖一体机器人 黑色', '1799', '<font color=\'#ff4a00\'>「小米11.11，11月1日0点-2点立省400元，到手价1399元，享24期分期免息！」</font>三种扫拖模式 / 智能电控水箱，呵护木地板 / LDS激光导航 / 米家APP远程操控 / 高精度传感器 / 软件虚拟墙，房间自动分区 /指哪儿扫哪儿 / 2100Pa', '[\'黑色\', \'白色\']', '[\'通用\']', '10', null, '3e2a4f04bb369ba5668ab30eb336f722.jpg');
INSERT INTO `t_product` VALUES ('167', '米家智能微烤一体机 白色', '549', '<font color=\'#ff4a00\'>「小米“11.1开门红”，11月1日到手价不高于499元，最高享12期分期免息！」</font>微烤一机多用，满足双重需求 / 微晶平板加热，石英烧烤 / 米家APP智能操控 / 23L大容积', '[\'白色\']', '[\'通用\']', '10', null, 'pms_1595840564.15355999.jpg');
INSERT INTO `t_product` VALUES ('168', '米家除螨仪 白色', '199', '12kPa大吸力 / 高频拍打驱螨 / UV-C除菌 / 50℃热风除湿 / 3重多效过滤 / 20cm宽吸口', '[\'白色\']', '[\'通用\']', '10', null, 'pms_1600054207.43177586.jpg');
INSERT INTO `t_product` VALUES ('169', '17PIN 星果杯 珍珠白', '139', '便携榨汁/全隐藏刀头/磁吸式充电/400ml大容量/满电约榨15杯/小体重/30秒精细料理', '[\'珍珠白\', \'樱花粉\']', '[\'通用\']', '10', null, 'pms_1591598513.97195810.png');
INSERT INTO `t_product` VALUES ('170', '米家互联网洗碗机 4套台面式 4套台面式 白色', '1299', '<font color=\'#ff4a00\'>「小米“11.1开门红”，11月1日到手价不高于999元，最高享24期分期免息！」</font>台式免安装、无需厨房大改造/专为孕妈、宝宝餐具设置消毒洗功能/75℃高温除菌，除菌率高达99.99% / 温馨提示：本产品包装内不含任何洗碗机专用耗材，请购机前根据机器需要，提前准备专用耗材', '[\'4套台面式 白色\']', '[\'通用\']', '10', null, 'pms_1582436742.10855313.jpg');
INSERT INTO `t_product` VALUES ('171', '圈厨多用途电热锅 白色', '199', '<font color=\'#ff4a00\'>「小米“11.1开门红”，11月1日到手价不高于169元！」</font>一锅多用，7大烹饪模式/24小时预约，美味无需等待/食品接触级304不锈钢，好材质煮食才安心', '[\'白色\']', '[\'通用\']', '10', null, 'pms_1589945613.22046687.jpg');
INSERT INTO `t_product` VALUES ('172', '米家电磁炉', '299', '<font color=\'#ff4a00\'>「小米“11.1开门红”，11月1日到手价不高于259元！」</font>99挡微调控火 / 支持低温烹饪 / 100+烹饪模式', '[\'白色\']', '[\'通用\']', '10', null, '7382a91d1f2611ce859bd6fd8578c994.jpg');
INSERT INTO `t_product` VALUES ('173', '米家微波炉 白色', '399', '<font color=\'#ff4a00\'>「小米“11.1开门红”，11月1日到手价不高于369元！」</font>智能APP操控 / 平板式加热 / 专项分类解冻 / 20L容量 / 30+精选食谱', '[\'白色\']', '[\'通用\']', '10', null, 'pms_1563787495.68116844.jpg');
INSERT INTO `t_product` VALUES ('174', '米家电水壶1S 白色', '149', '<font color=\'#ff4a00\'>「小米“11.1开门红”，11月1日到手价不高于129元！」</font>一键保温约55℃，不烫不凉好入口 / 升级1.7L大容量 / 高品质304不锈钢，安全健康无异味 / 升级加厚加热底盘，充分沸腾', '[\'白色\']', '[\'通用\']', '10', null, 'ca14d45520785d3628bfd2e46d9ac9d2.jpg');
INSERT INTO `t_product` VALUES ('175', 'Pinlo迷你三明治机 白色', '109', '<font color=\'#ff4a00\'>「小米“11.1开门红”，11月1日到手价不高于99元！」</font>煎烤一体，多食材料理 / 弧面烤盘，馅料饱满 / 热压封边，锁汁锁味', '[\'白色\']', '[\'通用\']', '10', null, 'pms_1589007010.44868979.jpg');
INSERT INTO `t_product` VALUES ('176', '小米定制心想甄选胶囊咖啡 低蕴丝滑', '158', '精选原豆/密封保鲜/口味多样/欧洲直采', '[\'低蕴丝滑\', \'意式浓缩\']', '[\'通用\']', '10', null, '3ab0b4bb24dd229dc53d3a554d71d866.jpg');
INSERT INTO `t_product` VALUES ('177', '米家电饭煲4L 白色', '299', '<font color=\'#ff4a00\'>「小米“11.1开门红”，11月1日到手价不高于249元！」</font>4L大容量 / 智能加热曲线 / 2.0mm 厚质锅胆 / 大金PFA粉体涂层 / 890W动态功率 / 双感温探头 / 24小时智能远程预约', '[\'白色\']', '[\'通用\']', '10', null, 'pms_1559728396.2634058.jpg');
INSERT INTO `t_product` VALUES ('178', '臻米米汤分离蒸汽养生饭煲', '849', '米汤分离技术，煮沥蒸古法工艺，出口日本众筹', '[\'养生饭煲\']', '[\'通用\']', '10', null, 'pms_1595404844.6696816.jpg');
INSERT INTO `t_product` VALUES ('179', '米家手持挂烫机 白色', '119', '<font color=\'#ff4a00\'>「小米11.11，11月1日立省10元，到手价109元！」</font>熨衣不伤衣丨除菌除螨丨轻巧便携', '[\'白色\']', '[\'通用\']', '10', null, 'pms_1588141296.4258865.jpg');
INSERT INTO `t_product` VALUES ('180', '米家互联网燃气灶（天然气）', '799', '4200W 大火力 / 内环双层稳焰 / 230°无极控火 / 烟灶联动', '[\'天然气\', \'液化石油气\']', '[\'通用\']', '10', null, '864102537ce049557e30e28938157247.jpg');
INSERT INTO `t_product` VALUES ('181', '米家智能宠物喂食器 白色', '399', '自动喂食 / 防潮锁鲜 / 顺畅出粮 / 智能场景联动', '[\'白色\']', '[\'通用\']', '10', null, 'pms_1600224159.33498409.jpg');
INSERT INTO `t_product` VALUES ('182', '米家小饭煲 白色', '199', '<font color=\'#ff4a00\'>「小米“11.1开门红”，11月1日到手价不高于169元！」</font>1.6L 精致容量 / 400W 强力烹饪 / 大金 PFA 不粘锅粉体涂层 / APP 智能联动', '[\'白色\']', '[\'通用\']', '10', null, '888baa6c94ee18f4dc3f4b5ee7e18fb0.jpg');
INSERT INTO `t_product` VALUES ('183', '米家恒温电水壶Pro 白色', '249', '<font color=\'#ff4a00\'>「小米“11.1开门红”，11月1日到手价不高于199元！」</font>温度实时显示 /  1.5L 大容量 / 英国品牌STRIX温控器 / 3重安全保护', '[\'白色\']', '[\'通用\']', '10', null, 'pms_1590131197.73112844.jpg');
INSERT INTO `t_product` VALUES ('184', '米家手持无线吸尘器1C 白色', '999', '<font color=\'#ff4a00\'>「小米11.11，11月1日立省150元，到手价849元，享24期分期免息！」</font>120AW吸入功率 / 60分钟超长续航 / 壁挂式充电架 / 多锥旋风过滤', '[\'白色\']', '[\'通用\']', '10', null, 'c0a833016e554f8220ce85f6d4edd3bb.jpg');
INSERT INTO `t_product` VALUES ('185', '米家踢脚线电暖器1S 黑色', '699', '<font color=\'#ff4a00\'>「小米11.11，订金10元抵110元，11月1日0点支付尾款，预订到手价599元！」\n</font>全屋热循环 / 暖流加速 / 智能恒温 / 智能控制 /2200W大功率 / IPX4级防水', '[\'黑色\']', '[\'通用\']', '10', null, 'pms_1599536467.27169261.jpg');
INSERT INTO `t_product` VALUES ('186', '米家随手吸尘器 白色', '249', '<font color=\'#ff4a00\'>「小米11.11，11月1日立省20元，到手价229元！」</font>轻巧便携、澎湃动力。', '[\'白色\']', '[\'通用\']', '10', null, 'pms_1594971761.88295923.jpg');
INSERT INTO `t_product` VALUES ('187', '小米米家电动滑板车1S 白色', '1999', '30km超长续航 / 25km/h最高时速 / 可视化交互仪表盘 / 双重刹车系统', '[\'白色\', \'黑色\']', '[\'通用\']', '8', null, 'pms_1586937333.45342874.jpg');
INSERT INTO `t_product` VALUES ('188', '小米米家电动滑板车Pro 黑色', '2799', '<font color=\'#ff4a00\'>小米11.11，滑板车pro订金100抵200元，11月1日0点支付尾款，到手价2699！</font>多功能控制面板 / 45 公里续航 / 6倍步行速度', '[\'黑色\']', '[\'通用\']', '8', null, 'pms_1548839084.47893777.jpg');
INSERT INTO `t_product` VALUES ('189', '九号卡丁车Pro兰博基尼汽车定制版 黄色', '9999', '<font color=\'#ff4a00\'>11月4-11月10日兰博基尼开启预售</font>与兰博基尼合作设计/全新风冷式轮毂电机/40km/h 极速/可变身为平衡车/大容量风冷电池组/引擎声浪模拟系统', '[\'黄色\']', '[\'通用\']', '8', null, 'pms_1596609066.25445436.jpg');
INSERT INTO `t_product` VALUES ('190', '骑记电动助力自行车 新国标版 黑色', '2999', '三种骑行模式 / 40km助力骑行 / 大尺寸光感显示屏', '[\'黑色\']', '[\'通用\']', '8', null, 'pms_1575252194.40414382.jpg');
INSERT INTO `t_product` VALUES ('191', '九号平衡车 改装套件 白色', '2999', '纯粹驾驶乐趣 / 赛车式运动外观 / 多重安全保障 / 车身长度4挡调节', '[\'白色\']', '[\'通用\']', '8', null, 'pms_1560764684.73552638.jpg');
INSERT INTO `t_product` VALUES ('192', '九号平衡车 Plus 白色', '3499', '<font color=\'#ff4a00\'>小米11.11，平衡车plus版订金100抵600元，11月1日0点支付尾款，到手价2999！</font>增强型镁合金底盘 / 35km 超长续航 / 一键自动跟随', '[\'白色\']', '[\'通用\']', '8', null, '877d3ce8-68ab-7506-2a78-55a8c0fba946.png');
INSERT INTO `t_product` VALUES ('193', '九号平衡车 白色', '1999', '<font color=\'#ff4a00\'>11.1前两小时下单更可再省50元！</font>年轻人的酷玩具 / 骑行遥控两种玩法 / 22公里超长续航  / 轻、小、便携 / 重心驱动 / 15重安全保障', '[\'白色\', \'黑色\']', '[\'通用\']', '8', null, 'T1xVE_Bydv1RXrhCrK.jpg');
INSERT INTO `t_product` VALUES ('194', '小米碰碰贴2 白色', '19.9', '<font color=\'#ff4a00\'>「小米双11，11.1限时特惠前2000件9.9元」</font>音乐接力/全能投屏/触碰联网/米家智能场景', '[\'白色\']', '[\'通用\']', '9', null, 'pms_1596769885.75386661.jpg');
INSERT INTO `t_product` VALUES ('195', '米家智能插座2 蓝牙网关版 白色', '49', '<font color=\'#ff4a00\'>小米双11限时特惠！11.1-11.3到手价39元！	</font>智能定时|用电统计|过载保护', '[\'白色\']', '[\'通用\']', '9', null, 'pms_1599531818.37487338.png');
INSERT INTO `t_product` VALUES ('196', '米家智能窗帘', '799', '<font color=\'#ff4a00\'>「小米11.11，11月1日立省30元，到手价769元，享12期分期免息！」</font>多种智能开合方式丨丰富智能联动丨直流静音电机', '[\'个\']', '[\'通用\']', '9', null, 'pms_1591344854.06953246.jpg');
INSERT INTO `t_product` VALUES ('197', '小米门窗传感器2 白色', '49', '<font color=\'#ff4a00\'>小米双11限时特惠！11.1-11.3到手价39元！	</font>开合记录|光照强弱判断|超时未关提醒', '[\'白色\']', '[\'通用\']', '9', null, 'pms_1596785709.64083127.jpg');
INSERT INTO `t_product` VALUES ('198', '小米无线开关 白', '39', '<font color=\'#ff4a00\'>「小米双11，11.1限时特惠29元」</font>搭配米家多功能网关 / 自定义开关其他智能家居', '[\'白\']', '[\'通用\']', '9', null, 'pms_1587710010.62554221.jpg');
INSERT INTO `t_product` VALUES ('199', '米家智能家庭礼品装 白色', '329', '本礼品装包含：米家多功能网关*1、米家智能插座（Zigbee版)*1、米家无线开关*1、米家人体传感器*1、米家门窗传感器*1', '[\'白色\']', '[\'通用\']', '9', null, '3d18439a-bfa5-3146-0eff-0904b143137a.jpg');
INSERT INTO `t_product` VALUES ('200', '米家显示器挂灯 黑色', '199', '<font color=\'#ff4a00\'>「小米双11，11.1限时特惠199元」</font>无屏幕反光  / 磁吸旋转 / 金属灯体', '[\'黑色\']', '[\'通用\']', '9', null, 'pms_1590926574.98619960.jpg');
INSERT INTO `t_product` VALUES ('201', '小米米家智能插座WiFi版 白色', '49', '<font color=\'#ff4a00\'>小米双11限时特惠！11.1-11.11到手价39元！	</font>支持“小爱同学”语音控制 / 远程查看 / 定时开关 / CCC 安全认证', '[\'白色\']', '[\'通用\']', '9', null, 'pms_1543975478.91979978.jpg');
INSERT INTO `t_product` VALUES ('202', '米家蓝牙温湿度计 2 白色', '29', '<font color=\'#ff4a00\'>「小米双11，11.1限时特惠49元/3只」</font>智能联动 / 婴儿模式 / 超长续航 / 高精度传感器', '[\'白色\']', '[\'通用\']', '9', null, 'pms_1575878680.4593522.jpg');
INSERT INTO `t_product` VALUES ('203', '小米碰碰贴2（十周年版） 白色', '19.9', '音乐接力/全能投屏/触碰联网/米家智能场景', '[\'白色\']', '[\'通用\']', '9', null, 'pms_1596887651.57189573.jpg');
INSERT INTO `t_product` VALUES ('204', '小米全自动智能门锁 黑色', '1799', '<font color=\'#ff4a00\'>「小米11.11，11月1日到手价1699元！记得来抢购哦！」</font>疾速全自动锁体 | 多维半导体指纹 | 7种开锁方式 | 多场景智能联动 | 直插式C级锁芯 | 5大异常警告 | 10重安全防护 | 集成智能门铃', '[\'黑色\']', '[\'通用\']', '9', null, 'pms_1600658170.07729998.jpg');
INSERT INTO `t_product` VALUES ('205', '米家运动心电T恤 M', '299', '60秒心电监测/每秒250次高采样率/智能ADI心电芯片/零触感/可机洗', '[\'M\', \'L\', \'XL\', \'深花灰\']', '[]', '9', null, 'pms_1596106781.93395572.jpg');
INSERT INTO `t_product` VALUES ('206', '小米智能多模网关 白', '129', '<font color=\'#ff4a00\'>「小米双11，11.1限时特惠119元」</font>同时支持Zigbee、蓝牙&蓝牙Mesh三种通信协议，让你的智能家庭搭建更方便。简单配置各设备的语音、远程、自动化控制，任你联动心仪场景', '[\'白\']', '[\'通用\']', '9', null, 'pms_1587353000.46165283.jpg');
INSERT INTO `t_product` VALUES ('207', '米家智能保管箱 黑色', '649', '<font color=\'#ff4a00\'>「新品火热抢购中！」</font>高强度材质 / 半导体指纹 / 6种解锁方式 / 震动告警 / 胁迫指纹报警 / 联动摄像头记录', '[\'黑色\']', '[\'通用\']', '9', null, 'pms_1599187387.7834158.jpg');
INSERT INTO `t_product` VALUES ('208', '小米智能猫眼	 黑色', '499', 'AI人形侦测/ 5.0英寸液晶屏 / 米家设备联动 / 超长续航', '[\'黑色\']', '[\'通用\']', '9', null, 'pms_1577181574.56671020.jpg');
INSERT INTO `t_product` VALUES ('209', '小米人体传感器 白', '59', '<font color=\'#ff4a00\'>小米双11限时特惠！11.1-11.3到手价49元！	</font>搭配米家多功能网关 / 智能探测人或宠物移动', '[\'白\']', '[\'通用\']', '9', null, 'pms_1587709844.682716.jpg');
INSERT INTO `t_product` VALUES ('210', '小米光照传感器 白', '49', '<font color=\'#ff4a00\'>「小米双11，11.1限时特惠39元」</font>仅适配于小米米家智能多模网关，光照检测，高灵敏大量程，智能联动，生活防水设计。', '[\'白\']', '[\'通用\']', '9', null, 'pms_1587353129.89467345.jpg');
INSERT INTO `t_product` VALUES ('211', '米家智能插座蓝牙网关版 白色', '79', '<font color=\'#ff4a00\'>小米双11限时特惠！11.1-11.3到手价59元！	</font>蓝牙网关 / 智能联动 / Wi-Fi连接 / 远程控制 / 语音控制', '[\'白色\']', '[\'通用\']', '9', null, 'pms_1575875606.77348788.jpg');
INSERT INTO `t_product` VALUES ('212', '小米智能门锁', '1299', '<font color=\'#ff4a00\'>「小米11.11，订金预售，11月1日0点支付尾款，标准款尾款减200元到手价999元，霸王款到手价1399元！」</font>新增霸王锁体 / 直插芯C级智能锁芯 / 德国红点设计大奖 / 一体化3D半导体指纹 / 6大开锁方式 / 7大安全检测 / 十余项安全黑科技 / 丰富的智能联动', '[\'标准锁体\', \'霸王锁体\', \'碳素黑\', \'磨砂金\']', '[]', '9', null, '80d2dab8bb6860f3ae699702cb3e0c37.jpg');
INSERT INTO `t_product` VALUES ('213', '小米多看电纸书 深灰', '599', '16GB大内存 / 多看阅读海量资源 / 云盘登录一键下载', '[\'深灰\']', '[\'通用\']', '9', null, 'pms_1576144594.57492113.jpg');
INSERT INTO `t_product` VALUES ('214', '米家电子温湿度计Pro', '79', '<font color=\'#ff4a00\'>「小米双11，11.1限时特惠69元」</font>温湿度监测 / 电子墨水屏 / 智能互联 / 灵活摆放', '[\'白色\']', '[\'通用\']', '9', null, 'pms_1553766071.54459183.jpg');
INSERT INTO `t_product` VALUES ('215', '米家空调伴侣2 白色', '79', '<font color=\'#ff4a00\'>小米双11限时特惠！11.1-11.3到手价59元！	</font>远程控制 / 小爱声控 / 睡后调温 / 电量统计', '[\'白色\']', '[\'通用\']', '9', null, 'pms_1556521908.27222306.jpg');
INSERT INTO `t_product` VALUES ('216', '小米对讲机2 黑色', '449', '5W发射功率 / UV双段 / IP65 / 超长待机 / 位置共享', '[\'黑\']', '[\'通用\']', '9', null, 'pms_1587869471.72912209.jpg');
INSERT INTO `t_product` VALUES ('217', '小爱老师 4G版 白色', '999', '<font color=\'#ff4a00\'>小米11.11，小爱老师4G版订金50抵300元，11月1日0点支付尾款，到手价749！\n</font>AI英语学习机 / 词汇教材同步 / 大内存 大容量 /  无痛背单词 / AI电子词典 / AI听说训练 / 拍照查词 翻译 / 内置小爱同学 / 翻译机 / AI录音笔 / 随身WIFI / 25天待机', '[\'白色\']', '[\'通用\']', '9', null, 'pms_1560222640.90428593.jpg');
INSERT INTO `t_product` VALUES ('218', '小爱老师 白色', '499', 'AI英语学习机 / 词汇教材同步 / 无痛背单词 / AI电子词典 / AI听说训练 / 内置小爱同学 / 翻译机 / AI录音笔 / 25天待机', '[\'白色\']', '[\'通用\']', '9', null, 'pms_1560222533.85047588.jpg');
INSERT INTO `t_product` VALUES ('219', '小米智能门锁 推拉式 黑色款', '1699', '<font color=\'#ff4a00\'>「小米11.11，订金100元抵300元，支付尾款立减50元，预售到手价1449元，赠价值49元米家智能插座2 蓝牙网关版（赠完即止）！」</font>适用于标准锁体和霸王锁体 / 直插式C级锁芯 / 6种开锁方式，支持小米手环4 NFC版开锁 / 7重安全状态检测 / 抵御小黑盒攻击 / 智能联动', '[\'黑色款\']', '[\'通用\']', '9', null, '0baacf6e54cbf89cab2c543cc02344e9.jpg');
INSERT INTO `t_product` VALUES ('220', '小米智能门锁 E 黑色', '999', '<font color=\'#ff4a00\'>「小米11.11，11月1日到手价949元，下单赠7L小米小背包一个！记得来抢购哦！」</font>6种开锁方式丨防插安全锁体丨电子门铃功能', '[\'黑色\']', '[\'通用\']', '9', null, 'pms_1590113021.58286191.jpg');
INSERT INTO `t_product` VALUES ('221', '小米智能门锁 青春版 左开门 黑', '999', '<font color=\'#ff4a00\'>「小米11.11，11月1日0点-2点到手价799元！记得来抢购哦！」</font>直插式C级锁芯 / 电子离合锁体 抵御暴力拆解 / 抵御小黑盒攻击 / 3年免费保修', '[\'左开门 黑\', \'右开门 黑\']', '[\'通用\']', '9', null, 'pms_1591156370.09691273.jpg');
INSERT INTO `t_product` VALUES ('222', '烟雾报警器 白色', '149', '<font color=\'#ff4a00\'>小米双11限时特惠！11.1-11.3到手价129元！	</font>搭配小米多功能网关 / CCCF认证 / 远程报警 / 渐进音报警 / 定期自检提醒', '[\'白色\']', '[\'通用\']', '9', null, '88b1ba54-28ee-cefa-88fa-7ab7ea3ae6f4.jpg');
INSERT INTO `t_product` VALUES ('223', '小米门窗传感器 白', '49', '<font color=\'#ff4a00\'>小米双11限时特惠！11.1-11.3到手价39元！	</font>搭配米家多功能网关 / 实时感知门窗开关状态', '[\'白\']', '[\'通用\']', '9', null, 'pms_1587709645.7296823.jpg');
INSERT INTO `t_product` VALUES ('224', '天然气报警器 白色', '199', '<font color=\'#ff4a00\'>小米双11限时特惠！11.1-11.3到手价179元！	</font>远程报警 / 联动排风 / 定期自检提醒', '[\'白色\']', '[\'通用\']', '9', null, 'c573194b-1358-417c-b952-98c3d776f613.jpg');
INSERT INTO `t_product` VALUES ('225', '小米移动电源3 20000mAh 超级闪充版 黑色', '249', '支持小米10 Pro 50W MAX 疾速闪充 / 20000mAh大容量 / 可上飞机 / 三口同时输出 / 智能兼容 / 仿陶瓷高光', '[\'黑色\']', '[\'通用\']', '4', null, 'pms_1569401677.21176429.jpg');
INSERT INTO `t_product` VALUES ('226', '小米移动电源3 10000mAh快充版 银色', '79', '18W快充 / 双口输入/输出 / 锂离子聚合物电池', '[\'银色\', \'黑色\']', '[\'通用\']', '4', null, 'pms_1572579555.84564766.jpg');
INSERT INTO `t_product` VALUES ('227', '小米移动电源3 20000mAh USB-C双向快充版 白色', '129', 'USB-C 18W双向快充 / 可为三台设备同时充电 / 高品质锂离子聚合物电池', '[\'白色\']', '[\'通用\']', '4', null, 'pms_1572510715.11624812.jpg');
INSERT INTO `t_product` VALUES ('228', '小米移动电源3 30000mAh 快充版 白色', '169', '大容量充电 / 高品质电芯 / 智能快充', '[\'白色\']', '[\'通用\']', '4', null, 'pms_1591870523.82115919.jpg');
INSERT INTO `t_product` VALUES ('229', '小米移动电源3 10000mAh USB-C双向快充版 银色', '99', '双向18W快充/输入输出双接口/高密度锂聚合物电芯，更安全/可上飞机，更贴心', '[\'银色\', \'黑色\']', '[\'通用\']', '4', null, 'pms_1552372948.24196473.jpg');
INSERT INTO `t_product` VALUES ('230', '小米移动电源3 20000mAh 高配版 黑色', '199', 'USB-C 45W 双向快充 / 三口输出 / 大容量 / 支持笔记本电脑充电 / 高品质锂聚合物电芯', '[\'黑色\']', '[\'通用\']', '4', null, 'dd3e09711ecbad298d913997b4e02b35.jpg');
INSERT INTO `t_product` VALUES ('231', '小米移动电源3 10000mAh超级闪充版（50W）​ 黑色', '249', '支持小米10 Pro 50W MAX 疾速闪充 / 10000mAh大容量 / 可上飞机 / 两口同时输出 / 智能兼容 / 仿陶瓷高光', '[\'黑色\']', '[\'通用\']', '4', null, 'pms_1581575905.86485343.jpg');
INSERT INTO `t_product` VALUES ('232', '小米二合一移动电源（充电器） 白色', '99', '5000mAh 充沛电量 / 多协议快充 / USB 口输出', '[\'白色\']', '[\'通用\']', '4', null, '78c1f148b9089d89544d87a16780ab4b.jpg');
INSERT INTO `t_product` VALUES ('233', '小米移动电源2 (5000mAh版) 银色', '49', '锂聚合物电芯 / 铝合金金属壳体 / 轻巧便捷', '[\'银色\']', '[\'通用\']', '4', null, 'pms_1515404353.30152325.jpg');
INSERT INTO `t_product` VALUES ('234', '小米移动电源10000mAh高配 金色', '129', '支持 USB-C 充电 / 高密度锂聚合物电芯 / 双向快充 / 仅 12.58mm 薄', '[\'金色\', \'灰色\']', '[\'通用\']', '4', null, '886398bf-4a47-4e74-e7f9-cbd7528e6e32.jpg');
INSERT INTO `t_product` VALUES ('235', '米家超级电池4粒装 5号', '19.9', '第三代锂铁电池技术/2900mAh大容量持久耐用（非充电式）/防漏液设计/智能门锁门铃推荐电池', '[\'5号\']', '[\'通用\']', '4', null, 'pms_1589423762.41552807.jpg');
INSERT INTO `t_product` VALUES ('236', '黑鲨双向快充移动电源 黑色', '119', '18W双向快充 / 铠甲机身 / 一入三出 / 炫酷灯效', '[\'黑色\', \'橙黑色\']', '[\'通用\']', '4', null, '5ec71ad246be55dd1aebcfae8a0d22ba.jpeg');
INSERT INTO `t_product` VALUES ('237', '小米体脂秤2 白色', '99', 'G字型传感器 / 高精准BIA芯片 / 13项身体数据  / 平衡能力测试', '[\'白色\']', '[\'通用\']', '5', null, 'pms_1555659431.52713594.jpg');
INSERT INTO `t_product` VALUES ('238', 'NEXGIM AI功率健身车 白色', '1799', '<font color=\'#ff4a00\'>「小米11.11狂欢，1号预计到手价1599元」</font>数控阻力 / 教练课程 / 定量训练 / 游戏接入', '[\'白色\']', '[\'通用\']', '5', null, 'pms_1569288878.69117401.jpg');
INSERT INTO `t_product` VALUES ('239', '贝医生声波美牙仪', '89', '<font color=\'#ff4a00\'>需搭配贝医生声波美牙仪凝胶使用</font>稳定蓝光，柔和不刺眼，全面护理牙齿，内置按摩模式，美白又护龈.下单需搭配凝胶', '[\'美牙仪\']', '[\'通用\', \'凝胶\']', '5', null, 'pms_1595404485.92928258.jpg');
INSERT INTO `t_product` VALUES ('240', 'YUNMAI智能训练跳绳 黑色', '129', '互动社交，智能连接小程序，360°传感监测，记录每次运动', '[\'智能训练跳绳\']', '[\'通用\']', '5', null, 'pms_1595405075.70232588.jpg');
INSERT INTO `t_product` VALUES ('241', '米家走步机 银灰色', '1799', '<font color=\'#ff4a00\'>「小米11.11，订金100抵300元，11月1日0点支付尾款，到手价1599！」 </font>一体成型铝合金骨架 / 折叠设计专利 / 脚感控速专利 / 省心免安装 / 联动米家APP / 支持小爱', '[\'银灰色\']', '[\'通用\']', '5', null, 'pms_1555581865.08163569.jpg');
INSERT INTO `t_product` VALUES ('242', '小米体重秤2 白色', '59', '精准测量 / 高精度锰钢传感器 / 起重低至100G / 一杯水都能测 / 身体平衡能力评估 / 单脚闭目即测即得 / 理想体重测算  \r\n了解自己应该多重', '[\'白色\']', '[\'通用\']', '5', null, 'pms_1555580244.96131118.jpg');
INSERT INTO `t_product` VALUES ('243', '摩摩哒舒压眼部按摩器', '299', '仿人手气囊揉压，震动按摩，石墨烯热敷，易清洁亲肤蛋白皮设计', '[\'眼部按摩器\']', '[\'通用\']', '5', null, 'pms_1595588035.7196472.jpg');
INSERT INTO `t_product` VALUES ('244', '左点小艾2Max智能艾灸盒', '289', '国潮艾灸养生|升级超大容量|黑晶防划面板|实体按键防误触', '[\'2Max智能艾灸盒\']', '[\'通用\']', '5', null, 'pms_1597635759.28284095.jpg');
INSERT INTO `t_product` VALUES ('245', '米家电子体温计 白色', '69', '快速测温 / 灵敏精准 / 智能APP / 新颖收纳', '[\'白色\']', '[\'通用\']', '5', null, 'pms_1578989481.23294722.jpg');
INSERT INTO `t_product` VALUES ('246', '小米真无线蓝牙耳机Air 2 Pro 黑色', '699', '<font color=\'#ff4a00\'>「小米双11，爆款新品订金50抵100,11月1日0点付尾款，到手价649」</font>弹窗快连语音唤醒/通话降噪同步传输/主动降噪通透模式/持久续航无线充电', '[\'黑色\']', '[\'通用\']', '6', null, '953f11534879e4dc43b05b8fa326b2dd.jpg');
INSERT INTO `t_product` VALUES ('247', 'Redmi AirDots 2真无线蓝牙耳机 黑色', '99', '疾速秒连，戴上耳机就能用 / 蓝牙5.0技术 / 12小时长续航 / 单双耳模式无缝切换', '[\'黑色\']', '[\'通用\']', '6', null, 'pms_1594807763.78483029.jpg');
INSERT INTO `t_product` VALUES ('248', '小米真无线蓝牙耳机Air2 SE 白色', '169', '20小时持久续航 / 双麦克风通话降噪，无惧干扰 / 开盒弹窗，智能连接看得到 / 智能真无线，自由随心 / 大尺寸动圈单元，听感浑厚自然 / 双耳同步传输，游戏影音更畅快', '[\'白色\']', '[\'通用\']', '6', null, 'pms_1589439786.76992727.jpg');
INSERT INTO `t_product` VALUES ('249', '小米真无线蓝牙耳机Air 2s 白色', '399', '左右双主耳，同步传输，性能全面提升 / 智能语音唤醒 / 搭配充电盒使用，续航可达24小时 / 支持Qi标准无线充电', '[\'白色\']', '[\'通用\']', '6', null, 'pms_1585639521.33045699.jpg');
INSERT INTO `t_product` VALUES ('250', '小米真无线蓝牙耳机 Air 2 白色', '299', '智能语音唤醒，解放双手 / 蓝牙5.0芯片，稳定无线连接 / 分体式真无线设计，无主从限制，单双耳灵活切换 / 双麦克风降噪，有效降低通话时环境噪音 / LHDC蓝牙解码高清音质 / 复合振膜动圈，还原声音细节', '[\'白色\']', '[\'通用\']', '6', null, 'pms_1569238836.72564587.jpg');
INSERT INTO `t_product` VALUES ('251', '小米双动圈耳机 蓝色', '129', '双动圈设计 / 低音增强 / 磁吸耳壳 / 多功能线控', '[\'蓝色\']', '[\'通用\']', '6', null, 'pms_1590139389.87797748.png');
INSERT INTO `t_product` VALUES ('252', '小米单动圈耳机 黑色', '69', '低音增强 / 铝合金音腔 / 黑红双色可选', '[\'黑色\', \'红色\']', '[\'通用\']', '6', null, 'pms_1590139044.11715840.png');
INSERT INTO `t_product` VALUES ('253', '小米活塞耳机 清新版 黑色', '29', '铝合金音腔 / 第三代平衡阻尼系统 / 三色可选', '[\'黑色\']', '[\'通用\']', '6', null, '3c114987-43d5-f6d3-d2f4-8b86dd90a55d.jpg');
INSERT INTO `t_product` VALUES ('254', '1MORE  Stylish时尚真无线耳机 金色', '299', '高通芯片及蓝牙5.0技术 / 取出即连，左右任意切换 / 快充15分钟，使用3小时', '[\'金色\', \'粉色\']', '[\'通用\']', '6', null, 'pms_1591252313.61233640.jpg');
INSERT INTO `t_product` VALUES ('255', '小米活塞耳机Type-C版 黑色', '49', 'Type-C 接口 / 数字解码芯片 / 铝合金音腔 / 金属复合振膜 / 平衡阻尼系统', '[\'黑色\']', '[\'通用\']', '6', null, 'pms_1560407044.41743058.jpg');
INSERT INTO `t_product` VALUES ('256', '小米蓝牙耳机Line Free 黑色', '199', 'aptX Adaptive低延迟模式 / 高通旗舰芯片 / 同轴双动圈单元 / 9小时长续航 / 疾速快充，充电10分钟，播放2.5小时', '[\'黑色\', \'灰色\']', '[\'通用\']', '6', null, 'pms_1587954413.64283337.jpg');
INSERT INTO `t_product` VALUES ('257', '小米圈铁耳机Pro 银色', '129', '独创双动圈 + 动铁 三单元发声 / 均衡自然声音 / 高保真石墨烯振膜 / 25 道工序打磨 / 弹力磨砂线材', '[\'银色\']', '[\'通用\']', '6', null, 'ea4ab6ba-e8f2-b0b1-1e7f-aa9813a126ac.jpg');
INSERT INTO `t_product` VALUES ('258', '小米圈铁四单元耳机 黑色', '799', '<font color=\'#ff4a00\'>「小米双11，订金50抵150,11月1日0点付尾款，到手价699」\n</font>“双动铁+双动圈”混合驱动单元 / 大尺寸硅胶振膜，声音耐听饱满有力 / 通过日本音乐协会“Hi-Res Audio”认证，完整准确解析声音 / 氧化锆陶瓷耳壳，大气不失质感 / 无氧铜镀银编织线，具有更好的传导性 / 附带三副线材，蓝牙适配器，蓝牙有线全兼容', '[\'黑色\']', '[\'通用\']', '6', null, 'pms_1571384720.99968563.jpg');
INSERT INTO `t_product` VALUES ('259', '小米双单元半入耳式耳机 黑色', '59', '半入耳式舒适佩戴 / 动圈+陶瓷喇叭双单元声学架构 / 高韧性线材+微机电麦克风线控 / 90°贴心插头', '[\'黑色\']', '[\'通用\']', '6', null, 'pms_1521442676.48017520.jpg');
INSERT INTO `t_product` VALUES ('260', '小米降噪项圈蓝牙耳机 黑色', '399', 'Hybrid 混合数字降噪，强力消噪 / 支持Sony LDAC，高清音质 / 最长20小时长续航，持久聆听 / 动圈+动铁双单元，三频均衡', '[\'黑色\']', '[\'通用\']', '6', null, 'pms_1565264857.64986727.jpg');
INSERT INTO `t_product` VALUES ('261', '小米头戴式蓝牙耳机 黑色', '199', '4.1蓝牙技术 ／ aptX 无损传输 ／ 40mm 大动圈 ／ 高识别度按键操控', '[\'黑色\']', '[\'通用\']', '6', null, 'b8b1dd3a6fb92bd0c08bdef02e77a4d2.jpg');
INSERT INTO `t_product` VALUES ('262', 'HiFi 解码耳放（快充版） 白色', '169', '独立DAC芯片 / HiFi 音质 / 600Ω高能力 / 兼容PD快充', '[\'白色\']', '[\'通用\']', '6', null, 'pms_1597067634.82654211.jpg');
INSERT INTO `t_product` VALUES ('263', '小米双单元半入耳式耳机Type-C版 黑色', '89', 'USB Type-C接口 / 动圈+陶瓷喇叭双单元声学架构 / 半入耳式舒适佩戴 / 高韧性线材+微机电麦克风线控', '[\'黑色\']', '[\'通用\']', '6', null, '635b71953a9a73b131d94e71b69d6972.jpg');
INSERT INTO `t_product` VALUES ('264', '小米运动蓝牙耳机青春版 黑色', '99', '防脱落运动耳顶 / 轻至 13.6g / 11 小时持久续航 / IPX4 专业防水', '[\'黑色\']', '[\'通用\']', '6', null, '7baffd099e39768c5fe821f00ddbed7c.jpg');
INSERT INTO `t_product` VALUES ('265', '小米蓝牙项圈耳机 灰色', '199', '项圈式设计 / 轻量化亲肤材质 / apt-X编解码技术 / AAC高级音频编码 / 双单元声学架构', '[\'灰色\', \'黑色\']', '[\'通用\']', '6', null, '24db5202d4133275c79b4cf007232457.jpg');
INSERT INTO `t_product` VALUES ('266', '最生活浴巾·Air（4条装） 白色+素蓝', '169', '轻柔易干 / 3秒吸水 / 专利密封包装 / 阿瓦提长绒棉 / 此商品不参与满99元包邮活动', '[\'白色+素蓝\']', '[\'通用\']', '7', null, '1ef4ca371e2f79cc414eacc434ae26df.jpg');
INSERT INTO `t_product` VALUES ('267', '最生活毛巾·Air（10条装） 白色+素蓝', '99', '阿瓦提长绒棉 / 轻柔易干 / 3秒吸水 / 专利密封包装 / 此商品不参与满99元包邮活动', '[\'白色+素蓝\', \'素蓝\']', '[\'通用\']', '7', null, '2212bbd7c00dbb8ed1db3d6b9ee2341c.jpg');
INSERT INTO `t_product` VALUES ('268', '最生活毛巾·青春系列 绿色', '19.9', '阿瓦提长绒棉 / 瑞典抗菌科技 / 专利密封包装 / 3秒吸水', '[\'绿色\', \'蓝色\']', '[\'通用\']', '7', null, '6aa3636c2493ec404250e98d07a42d71.jpg');
INSERT INTO `t_product` VALUES ('269', '米家黄麻抗菌护脊床垫 0.9米', '999', '<font color=\'#ff4a00\'>11.1-3限时赠送赠纤维枕一对</font>优质天然黄麻偏硬护脊 / 独立袋装弹簧 / 杜邦弹纶绵舒适贴合', '[\'0.9米\', \'1.2米\', \'1.5米\', \'1.8米\']', '[\'通用\']', '7', null, 'pms_1560760700.04549862.jpg');
INSERT INTO `t_product` VALUES ('270', '米家互联网洗碗机 8套嵌入式', '2299', '<font color=\'#ff4a00\'>「小米11.11爆品超值预售，订金100元抵400元，11月1日0点起付尾款，到手价1999元，最高享24期分期免息！」</font>洗消烘存一体 / 除菌率高达99.99% / 3层立体喷淋+PTC热风烘干系统的超高配置 / 洗后“碗”若新生 / 温馨提示：本产品包装内不含任何洗碗机专用耗材，请购机前根据机器需要，提前准备专用耗材', '[\'8套嵌入式\']', '[\'通用\']', '7', null, 'pms_1582436787.34363027.jpg');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户主键',
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `phoneNum` varchar(11) DEFAULT NULL COMMENT '手机号',
  `email` varchar(20) DEFAULT NULL COMMENT '邮箱',
  `registerTime` varchar(20) DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'tom', '123456', '13839633015', '1965434913@qq.com', '2020-10-30  20:30:00');
INSERT INTO `t_user` VALUES ('4', 'Jim', '123456', '13839633015', '1965434913@qq.com', '2020-10-30  20:41:02');
INSERT INTO `t_user` VALUES ('5', 'Lv', '123456', '13812345678', '1965434913@qq.com', '2020-10-30  21:06:32');
INSERT INTO `t_user` VALUES ('6', 'Rose', '123456', '13839633015', '10086@163.com', '2020-10-31  10:45:26');
INSERT INTO `t_user` VALUES ('7', '刘佳乐', 'liujiale', '17633854082', '2992855946@qq.com', '2020-10-31  22:44:54');
INSERT INTO `t_user` VALUES ('8', 'ljl', '802166', '17633854082', '2992855946@qq.com', '2020-10-31  22:46:25');
INSERT INTO `t_user` VALUES ('9', 'hqb', '123456', '16638493199', '3098885773@qq.com', '2020-10-31  22:48:10');
INSERT INTO `t_user` VALUES ('10', 'tom2', '123456', '13839633011', '1965424913@qq.com', '2020-11-11  17:42:26');
INSERT INTO `t_user` VALUES ('11', 'huangdonglin', '1826275022huang', '15225339797', '1972896013@qq.com', '2020-11-11  21:18:05');
