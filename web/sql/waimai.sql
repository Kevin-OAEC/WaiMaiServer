/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : waimai

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-10-17 08:41:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('1', 'http://img13.360buyimg.com/da/jfs/t3091/217/3367336790/71981/cf8d2f4d/57f4799bN0bc103f1.jpg', 'http://www.baidu.com');
INSERT INTO `banner` VALUES ('2', 'http://m.360buyimg.com/mobilecms/s720x322_jfs/t3052/9/3971694700/94822/a9bb5d0a/57fb9514N52b0b6f0.jpg!q70.jpg', 'http://h5.m.jd.com/active/2q48AnfcHsnx6B1KNeRUoLAfBWM4/index.html');
INSERT INTO `banner` VALUES ('3', 'http://img11.360buyimg.com/da/jfs/t3097/315/2942435618/110619/5f7115d/57e8e3d2N8c3620ea.jpg', 'http://h5.m.jd.com/active/2q48AnfcHsnx6B1KNeRUoLAfBWM4/index.html');
INSERT INTO `banner` VALUES ('4', 'http://m.360buyimg.com/mobilecms/s720x322_jfs/t3289/350/3981995164/162162/4f32b7f/57fafc1bN2a8721f8.jpg!q70.jpg', 'http://h5.m.jd.com/active/2q48AnfcHsnx6B1KNeRUoLAfBWM4/index.html');
INSERT INTO `banner` VALUES ('5', 'http://m.360buyimg.com/mobilecms/s720x322_jfs/t3256/78/3621858808/100086/a8b365eb/57fb9eb9Naa4825bf.jpg!q70.jpg', 'http://h5.m.jd.com/active/nKxVyPnuLwAsQSTfidZ9z4RKVZy/index.html');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `count` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `fid` (`fid`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('1', '1', '1', '1', '2');
INSERT INTO `cart` VALUES ('2', '1', '1', '2', '3');

-- ----------------------------
-- Table structure for food_info
-- ----------------------------
DROP TABLE IF EXISTS `food_info`;
CREATE TABLE `food_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `xl` int(3) NOT NULL,
  `price` float(5,2) NOT NULL,
  `hpl` float(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `FK_TID_FID` (`tid`),
  CONSTRAINT `FK_TID_FID` FOREIGN KEY (`tid`) REFERENCES `food_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of food_info
-- ----------------------------
INSERT INTO `food_info` VALUES ('1', '1', 'https://fuss10.elemecdn.com/e/89/d19af69ce305bc932ce89e76d3fe1jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '西瓜蜂蜜爽(16安士)&芒果糯米糍（3粒）', '3', '35.00', '0.00');
INSERT INTO `food_info` VALUES ('2', '2', 'https://fuss10.elemecdn.com/1/6b/d37ed69499db06d5c75744851761fjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '多芒小丸子', '1', '39.00', '100.00');
INSERT INTO `food_info` VALUES ('3', '2', 'https://fuss10.elemecdn.com/6/c4/f6a2079aa7930e8fa79c39f3f1c9ajpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '多芒西米捞', '2', '37.00', '0.00');
INSERT INTO `food_info` VALUES ('4', '2', 'https://fuss10.elemecdn.com/b/9b/df8d63206b99997d05d19da8c473ajpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '多芒亮晶晶', '1', '37.00', '0.00');
INSERT INTO `food_info` VALUES ('5', '2', 'https://fuss10.elemecdn.com/5/71/bf5abac0d8c05a8812c5912f5168bjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '多芒鸳鸯黑糯米', '2', '37.00', '0.00');
INSERT INTO `food_info` VALUES ('6', '2', 'https://fuss10.elemecdn.com/5/bf/3e048faff66c19ed89bcca8f013c5jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '杨枝金捞', '4', '33.00', '100.00');
INSERT INTO `food_info` VALUES ('7', '3', 'https://fuss10.elemecdn.com/a/04/063ec6ef4aec4348aa92da7820e91jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', 'XO萝卜糕', '1', '21.00', '0.00');
INSERT INTO `food_info` VALUES ('8', '3', 'https://fuss10.elemecdn.com/8/b0/74040229f17e41e4c434163d0f4bejpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '芒果班戟（2件）', '1', '29.00', '0.00');
INSERT INTO `food_info` VALUES ('9', '3', 'https://fuss10.elemecdn.com/a/2b/6e0ee633efa2782d278cc4ad66bbdjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '芒果糯米糍（3只）', '1', '21.00', '0.00');
INSERT INTO `food_info` VALUES ('10', '4', 'https://fuss10.elemecdn.com/b/71/09d46aa3cc6bc37cc96c838e1fcccjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '香芋紫米小丸子', '1', '22.00', '0.00');
INSERT INTO `food_info` VALUES ('11', '4', 'https://fuss10.elemecdn.com/f/29/2966b21b5f44933e141c184445f82jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '芝麻糊', '2', '16.00', '0.00');
INSERT INTO `food_info` VALUES ('12', '4', 'https://fuss10.elemecdn.com/9/64/99a1994f4a106d3b8b998b98b8416jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '杏仁露', '1', '16.00', '0.00');
INSERT INTO `food_info` VALUES ('13', '5', 'https://fuss10.elemecdn.com/6/be/81add576eefbd07f6b60a3f0a913ajpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '芒果双皮奶', '1', '26.00', '0.00');
INSERT INTO `food_info` VALUES ('14', '5', 'https://fuss10.elemecdn.com/e/62/aae81b8b9de7e16e48e0269f84581jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '红豆双皮奶', '1', '23.00', '100.00');
INSERT INTO `food_info` VALUES ('15', '5', 'https://fuss10.elemecdn.com/8/55/a5c8deaccbb8124a7e205ae23e6f5jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '原味双皮奶', '1', '19.00', '100.00');
INSERT INTO `food_info` VALUES ('16', '6', 'https://fuss10.elemecdn.com/1/7f/e5fb7f7c76fbfb17924c656134988jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '粒粒芒果爽-大杯', '6', '28.00', '0.00');
INSERT INTO `food_info` VALUES ('17', '6', 'https://fuss10.elemecdn.com/e/a5/c46e2c30e83ef54843e15bc46939cjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '椰汁蜂蜜爽-大杯', '1', '26.00', '0.00');
INSERT INTO `food_info` VALUES ('18', '6', 'https://fuss10.elemecdn.com/a/29/1d21eca126b648b289adb2b56eb58jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '西瓜蜂蜜爽-大杯', '2', '26.00', '0.00');
INSERT INTO `food_info` VALUES ('19', '6', 'https://fuss10.elemecdn.com/e/8d/2d48541a6d72e531b43c3817c4e2ajpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '芒椰芒果爽-大杯', '8', '26.00', '100.00');
INSERT INTO `food_info` VALUES ('20', '6', 'https://fuss10.elemecdn.com/3/85/130d0aa0f5096e9e8d4b5c9e39318jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '芒椰蜂蜜爽-大杯', '0', '26.00', '0.00');
INSERT INTO `food_info` VALUES ('21', '6', 'https://fuss10.elemecdn.com/0/ec/88a7d9c82a398dc98533655e08747jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '超多芒西米-大杯', '1', '28.00', '0.00');
INSERT INTO `food_info` VALUES ('22', '7', 'https://fuss10.elemecdn.com/2/db/554f86dd770f72778a5e9ecfc638cjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '南洋鸡腿参巴拌面套餐', '37', '19.00', '88.00');
INSERT INTO `food_info` VALUES ('23', '8', 'https://fuss10.elemecdn.com/d/03/912a9aebb0bc19be974263422f2fcjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '沙爹鸡肉炒饭套餐', '344', '19.00', '95.00');
INSERT INTO `food_info` VALUES ('24', '9', 'https://fuss10.elemecdn.com/9/b5/05004260e3d67eed7b9897840c63fjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '冻榴莲芝士蛋糕', '16', '38.00', '100.00');
INSERT INTO `food_info` VALUES ('25', '10', 'https://fuss10.elemecdn.com/a/f3/882e659ac2a5d0fa6f139e76dd8b4jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '榴莲飘香蛋糕+柠檬冰红茶', '0', '48.00', '0.00');
INSERT INTO `food_info` VALUES ('26', '10', 'https://fuss10.elemecdn.com/9/96/3201f0c87f168821c1d57c050e48ajpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '浓巧克力蛋糕+柠檬冰红茶', '4', '48.00', '100.00');
INSERT INTO `food_info` VALUES ('27', '10', 'https://fuss10.elemecdn.com/1/2b/a67b41f68e857aa5444406e31839djpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '大理石芝士蛋糕+柠檬冰红茶', '1', '48.00', '0.00');
INSERT INTO `food_info` VALUES ('28', '11', 'https://fuss10.elemecdn.com/9/3a/3d77220411be467ea52e9f880b54ajpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '迷你卡布基诺蛋糕', '1', '28.00', '100.00');
INSERT INTO `food_info` VALUES ('29', '11', 'https://fuss10.elemecdn.com/7/0e/6c9973f663a134b512dec5d3616f0jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '绿茶芝士蛋糕', '11', '28.00', '100.00');
INSERT INTO `food_info` VALUES ('30', '11', 'https://fuss10.elemecdn.com/d/ff/fcc6961ab5d09f798c5a6bd95d2efjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '浓巧克力蛋糕', '26', '28.00', '100.00');
INSERT INTO `food_info` VALUES ('31', '11', 'https://fuss10.elemecdn.com/5/87/f4b79efeda97ba75152100ebc8e1djpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '榴莲芝士蛋糕', '7', '38.00', '100.00');
INSERT INTO `food_info` VALUES ('32', '11', 'https://fuss10.elemecdn.com/5/88/44415a3cd43e9f0738d51ac915c8fjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '纽约（风味）芝士蛋糕', '9', '28.00', '100.00');
INSERT INTO `food_info` VALUES ('33', '11', 'https://fuss10.elemecdn.com/4/56/17ae7d34a346c39a08b9610a6a04bjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '咖啡芝士蛋糕', '8', '28.00', '66.00');
INSERT INTO `food_info` VALUES ('34', '11', 'https://fuss10.elemecdn.com/f/54/24b6eb7bee792f93a267b9ed97db9jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '胡萝卜布朗尼', '2', '20.00', '100.00');
INSERT INTO `food_info` VALUES ('35', '11', 'https://fuss10.elemecdn.com/3/66/4e70fabb74c32a3439396bd1195c2jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '卡布基诺芝士蛋糕', '1', '28.00', '100.00');
INSERT INTO `food_info` VALUES ('36', '11', 'https://fuss10.elemecdn.com/f/a0/85f320fb1d998afcca6660d88fde5jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '榴莲飘香蛋糕', '10', '28.00', '100.00');
INSERT INTO `food_info` VALUES ('37', '11', 'https://fuss10.elemecdn.com/e/fb/879a96f88a5289a71850133029b08jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '巧克力香蕉', '9', '28.00', '100.00');
INSERT INTO `food_info` VALUES ('38', '11', 'https://fuss10.elemecdn.com/8/00/3609dfaa14a535671d9605638c757jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '原味芝士蛋糕', '8', '28.00', '100.00');
INSERT INTO `food_info` VALUES ('39', '11', 'https://fuss10.elemecdn.com/0/f0/99cc03c18fd5b7ebe7b6e277024fcjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '芝士布朗尼', '7', '20.00', '0.00');
INSERT INTO `food_info` VALUES ('40', '12', 'https://fuss10.elemecdn.com/5/2a/c2f57a7491e11b5e3c9adc5926548jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '香烤蘑菇鸡套餐', '1', '56.00', '0.00');
INSERT INTO `food_info` VALUES ('41', '13', 'https://fuss10.elemecdn.com/9/c5/a2f410cf8fc7eb003c0a7093d9903jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '马来西亚风味飘香', '7', '48.00', '100.00');
INSERT INTO `food_info` VALUES ('42', '13', 'https://fuss10.elemecdn.com/b/36/838b453d468158e37a2281acf2b86jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '食之秘沙爹炒饭', '11', '28.00', '100.00');
INSERT INTO `food_info` VALUES ('43', '13', 'https://fuss10.elemecdn.com/6/0e/59127899db18db2380a6bab2693ebjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '泰国风味虾炒饭', '3', '45.00', '0.00');
INSERT INTO `food_info` VALUES ('44', '13', 'https://fuss10.elemecdn.com/6/fa/8b19061c103da1c3113be73f062c4jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '香烤黑胡椒鸡', '3', '42.00', '0.00');
INSERT INTO `food_info` VALUES ('45', '13', 'https://fuss10.elemecdn.com/0/21/3287b0ff6378825fe20501bb314acjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '香烤蘑菇鸡', '4', '42.00', '0.00');
INSERT INTO `food_info` VALUES ('46', '14', 'https://fuss10.elemecdn.com/3/bd/39997471b4aef3069466de70f968bjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '蔓越莓口味糕点', '0', '22.00', '0.00');
INSERT INTO `food_info` VALUES ('47', '14', 'https://fuss10.elemecdn.com/2/85/5f5636754dad0049df2aec6a17842jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '香草口味糕点', '0', '28.00', '0.00');
INSERT INTO `food_info` VALUES ('48', '14', 'https://fuss10.elemecdn.com/9/63/4cf8059f5434080727adfcf787ae7jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '葡萄燕麦糕点', '0', '22.00', '0.00');
INSERT INTO `food_info` VALUES ('49', '16', 'https://fuss10.elemecdn.com/1/dc/c82a7561538b04eeec6ac645c3369jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '大理石芝士蛋糕', '0', '298.00', '0.00');
INSERT INTO `food_info` VALUES ('50', '16', 'https://fuss10.elemecdn.com/e/a2/f4a4f2929f98bdc4492d3aa04b408jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '红丝绒蛋糕', '1', '248.00', '0.00');
INSERT INTO `food_info` VALUES ('51', '16', 'https://fuss10.elemecdn.com/6/bd/1e38c5207f16c57eb3a009cce8325jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '浓情黑巧克力蛋糕', '1', '298.00', '0.00');
INSERT INTO `food_info` VALUES ('52', '16', 'https://fuss10.elemecdn.com/4/e8/9e77fd18fda1124ee09df402e2682jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '玫瑰开心果蛋糕整粒', '0', '248.00', '0.00');
INSERT INTO `food_info` VALUES ('59', '19', 'https://fuss10.elemecdn.com/1/f0/7b8feac4c9b21ef2e05092518f0bejpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '手榨香柠蜜香红茶', '22', '12.00', '0.00');
INSERT INTO `food_info` VALUES ('60', '19', 'https://fuss10.elemecdn.com/2/41/a2fa61184ec62ef2ef94ed8322e4bjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '手榨香柠茉香绿茶', '4', '10.00', '0.00');
INSERT INTO `food_info` VALUES ('61', '19', 'https://fuss10.elemecdn.com/a/19/a7eea67098c927e3aa29f8625915ajpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '柠檬冰冻', '11', '8.00', '100.00');
INSERT INTO `food_info` VALUES ('62', '19', 'https://fuss10.elemecdn.com/f/ad/b6b8154a321960d1b923f410cdc49jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '柠檬Q果优多', '19', '11.00', '100.00');
INSERT INTO `food_info` VALUES ('63', '19', 'https://fuss10.elemecdn.com/6/8d/57ebaec81e51f71cb3b3e406f837ajpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '柠檬菠萝冻', '30', '11.00', '100.00');
INSERT INTO `food_info` VALUES ('64', '19', 'https://fuss10.elemecdn.com/6/c6/04359b267668ff852fa4503684089jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '柚恋柠檬茶', '13', '12.00', '100.00');
INSERT INTO `food_info` VALUES ('65', '19', 'https://fuss10.elemecdn.com/2/ec/8ed396aba98672faa96cc24d1e39djpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '金桔柠檬茶', '20', '12.00', '100.00');
INSERT INTO `food_info` VALUES ('66', '20', 'https://fuss10.elemecdn.com/a/54/5b7398072cad5249a3353428d3e3ejpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '原味奶茶', '17', '9.00', '100.00');
INSERT INTO `food_info` VALUES ('67', '20', 'https://fuss10.elemecdn.com/f/19/f3be44d5d44baa170ca92def11604jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '珍珠奶茶', '39', '10.00', '100.00');
INSERT INTO `food_info` VALUES ('68', '20', 'https://fuss10.elemecdn.com/b/99/ec5ec37b2b3f662ff1ca92d647f0fjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '大满贯布丁奶茶', '39', '12.00', '100.00');
INSERT INTO `food_info` VALUES ('69', '20', 'https://fuss10.elemecdn.com/6/a8/139b680b8746956d423b007766d37jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', 'OREO曲奇奶茶', '51', '11.00', '100.00');
INSERT INTO `food_info` VALUES ('70', '22', 'https://fuss10.elemecdn.com/2/35/d3d9b8800c96cbcd0d171f80ad7ebjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '芒橙Q果风味红茶', '9', '8.00', '100.00');
INSERT INTO `food_info` VALUES ('71', '22', 'https://fuss10.elemecdn.com/f/43/795104ddf8559c772373d7a8688e1jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '菠萝Q果风味红茶', '4', '8.00', '100.00');
INSERT INTO `food_info` VALUES ('72', '22', 'https://fuss10.elemecdn.com/0/35/90beb4982fce5516868f0eea0883cjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '双柚Q果风味绿茶', '3', '8.00', '100.00');
INSERT INTO `food_info` VALUES ('73', '22', 'https://fuss10.elemecdn.com/b/69/d0f06ae14cb336f58a29b8698cf32jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '芒橙Q果风味绿茶', '3', '8.00', '0.00');
INSERT INTO `food_info` VALUES ('74', '23', 'https://fuss10.elemecdn.com/c/8b/2ca5b135f53203ec8ee7d4816eacajpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '岩盐芝士蜜香红茶', '9', '12.00', '100.00');
INSERT INTO `food_info` VALUES ('75', '23', 'https://fuss10.elemecdn.com/4/51/8737ce86b416af9a3d062e49459ecjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '岩盐芝士绿茶', '29', '10.00', '100.00');
INSERT INTO `food_info` VALUES ('76', '23', 'https://fuss10.elemecdn.com/e/4d/a0c805c6677e2f9b35c6bb11916edjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '岩盐芝士奶茶', '12', '12.00', '100.00');
INSERT INTO `food_info` VALUES ('77', '23', 'https://fuss10.elemecdn.com/0/ff/39183bb5465bb8d4ef9c545520070jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '岩盐芝士可可', '20', '13.00', '100.00');
INSERT INTO `food_info` VALUES ('78', '24', 'https://fuss10.elemecdn.com/0/9b/81b84d724bf2ae33cc35ba18a81ffjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '茉香绿茶', '4', '7.00', '100.00');
INSERT INTO `food_info` VALUES ('79', '24', 'https://fuss10.elemecdn.com/9/1c/5de85bb8d635f9459a42fa935e5b6jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '蜜香红茶', '1', '9.00', '0.00');
INSERT INTO `food_info` VALUES ('80', '25', 'https://fuss10.elemecdn.com/3/92/536882987569cf8b1f62852a40645jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '红豆茶拿铁', '6', '13.00', '0.00');
INSERT INTO `food_info` VALUES ('81', '25', 'https://fuss10.elemecdn.com/3/92/536882987569cf8b1f62852a40645jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '红茶拿铁', '3', '12.00', '0.00');
INSERT INTO `food_info` VALUES ('82', '25', 'https://fuss10.elemecdn.com/b/ab/05d32e51e9eb82313b28da348fbedjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '布丁茶拿铁', '3', '14.00', '100.00');
INSERT INTO `food_info` VALUES ('83', '25', 'https://fuss10.elemecdn.com/8/7d/c7a274038cf1cf75137b520938f47jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '珍珠茶拿铁', '5', '14.00', '100.00');
INSERT INTO `food_info` VALUES ('84', '26', 'https://fuss10.elemecdn.com/9/50/f7db70e52e9655f375f137fbb2ea4jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '芒橙优多冰沙（中杯）', '6', '14.00', '0.00');
INSERT INTO `food_info` VALUES ('85', '26', 'https://fuss10.elemecdn.com/7/3a/9c664f46bbb537b2be76b0a877295jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '青乐梅雪乐冰中杯', '0', '14.00', '0.00');
INSERT INTO `food_info` VALUES ('86', '26', 'https://fuss10.elemecdn.com/2/ab/00f3c215c745b8f35f866d80cdb7ejpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '好乐梅雪乐冰中杯', '4', '14.00', '0.00');
INSERT INTO `food_info` VALUES ('87', '27', 'https://fuss10.elemecdn.com/f/94/75aae00146b5010d9cb47f433afcajpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '两瓶养乐多柠檬绿茶', '22', '15.00', '100.00');
INSERT INTO `food_info` VALUES ('88', '27', 'https://fuss10.elemecdn.com/d/2b/5b42918f97ead277faf7b1d8dec12jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '两瓶养乐多绿茶', '3', '14.00', '100.00');
INSERT INTO `food_info` VALUES ('89', '28', 'https://fuss10.elemecdn.com/3/80/83eae223a318716471c2b75e596fcjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '口味藕片', '3', '22.00', '0.00');
INSERT INTO `food_info` VALUES ('90', '28', 'https://fuss10.elemecdn.com/0/91/216e24b1a55af81cc8efb2db19763jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '口水鸡', '3', '28.00', '0.00');
INSERT INTO `food_info` VALUES ('91', '28', 'https://fuss10.elemecdn.com/0/1c/d6ae95f9f7f69cdba79e7ada85226jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '咸蛋黄豆腐', '10', '22.00', '100.00');
INSERT INTO `food_info` VALUES ('92', '28', 'https://fuss10.elemecdn.com/7/d9/c8a1e9df4d6d33c474c2c99402cf0jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '玉米排骨汤', '3', '30.00', '0.00');
INSERT INTO `food_info` VALUES ('93', '28', 'https://fuss10.elemecdn.com/f/0d/55c5c6b5baae26fec0e262de5492fjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '农家腊肉炒笋干', '1', '26.00', '0.00');
INSERT INTO `food_info` VALUES ('94', '29', 'https://fuss10.elemecdn.com/a/3f/beb1ecdab2f8864c7d75412d3330djpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '酸菜鱼片', '1', '35.00', '100.00');
INSERT INTO `food_info` VALUES ('95', '29', 'https://fuss10.elemecdn.com/c/1a/dd8055fcc87e271a39153a1037058jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '干锅有机花菜', '8', '20.00', '100.00');
INSERT INTO `food_info` VALUES ('96', '29', 'https://fuss10.elemecdn.com/d/2a/455e81fe58a8d7e150e937a42aab7jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '咸菜毛豆炒肉丝', '3', '18.00', '0.00');
INSERT INTO `food_info` VALUES ('97', '29', 'https://fuss10.elemecdn.com/7/32/03d464665296ad6822db8133eead1jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '新疆孜然羊肉', '1', '28.00', '0.00');
INSERT INTO `food_info` VALUES ('98', '30', 'https://fuss10.elemecdn.com/4/4e/cd016789bcca5e173132920166c39jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '咖喱猪排+开胃菜+素菜+米饭', '0', '20.00', '0.00');
INSERT INTO `food_info` VALUES ('99', '30', 'https://fuss10.elemecdn.com/7/05/b89cb24b40fb82258913aa2870918jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '栗子烧肉+开胃菜+素菜+米饭', '3', '24.00', '0.00');
INSERT INTO `food_info` VALUES ('100', '31', 'https://fuss10.elemecdn.com/3/61/e4fa5c0c37a47887642636dd9bcb8jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '蓝莓山药', '1', '22.00', '0.00');
INSERT INTO `food_info` VALUES ('101', '31', 'https://fuss10.elemecdn.com/7/69/6fac83738c27fe5b2b6cca5c87eaejpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '小椒皮蛋', '1', '12.00', '0.00');
INSERT INTO `food_info` VALUES ('102', '31', 'https://fuss10.elemecdn.com/9/5a/3414bcc27522d4e6fcca549d0dfc0jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '芹菜腐竹', '3', '16.00', '0.00');
INSERT INTO `food_info` VALUES ('103', '32', 'https://fuss10.elemecdn.com/6/83/77bd238135fb684f03cb1234140ebjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '厚百叶100g', '598', '4.60', '95.00');
INSERT INTO `food_info` VALUES ('104', '32', 'https://fuss10.elemecdn.com/8/1f/582d6a787dc4958a0cd995eb15082jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '腐竹100g', '754', '4.60', '94.00');
INSERT INTO `food_info` VALUES ('105', '32', 'https://fuss10.elemecdn.com/1/70/2cea559c2f5fbe7185f01a6c67e80jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '杏鲍菇100g', '306', '4.60', '100.00');
INSERT INTO `food_info` VALUES ('106', '32', 'https://fuss10.elemecdn.com/8/10/dd6f7dccdf819c79eefcdbf2ce7a2jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '豆腐皮100g', '502', '4.60', '88.00');
INSERT INTO `food_info` VALUES ('107', '33', 'https://fuss10.elemecdn.com/2/52/ab227d77cff4888e2bbaf8f474261jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '腊肠100g', '254', '10.20', '94.00');
INSERT INTO `food_info` VALUES ('108', '33', 'https://fuss10.elemecdn.com/3/61/fa18495a48d549d55b09b35c834d5jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '千叶豆腐', '242', '10.20', '100.00');
INSERT INTO `food_info` VALUES ('109', '33', 'https://fuss10.elemecdn.com/c/6c/69a7740b4ab864ac0639eb583d68fjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '蟹肉棒', '548', '10.20', '98.00');
INSERT INTO `food_info` VALUES ('110', '33', 'https://fuss10.elemecdn.com/7/ca/a06801de6dd6e9b9b566408b92556jpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '午餐肉100g', '1123', '10.20', '96.00');
INSERT INTO `food_info` VALUES ('111', '33', 'https://fuss10.elemecdn.com/9/60/7310bc2eb4d9e1af8b9633814f70bjpeg.jpeg?imageMogr/thumbnail/140x140/format/webp/quality/85', '培根100g', '202', '10.20', '100.00');

-- ----------------------------
-- Table structure for food_type
-- ----------------------------
DROP TABLE IF EXISTS `food_type`;
CREATE TABLE `food_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '分类',
  PRIMARY KEY (`id`),
  KEY `FK_MID_FNID` (`mid`),
  CONSTRAINT `FK_MID_FNID` FOREIGN KEY (`mid`) REFERENCES `merchant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of food_type
-- ----------------------------
INSERT INTO `food_type` VALUES ('1', '1', '下午茶A套餐');
INSERT INTO `food_type` VALUES ('2', '1', '招牌经典');
INSERT INTO `food_type` VALUES ('3', '1', '咸甜小食');
INSERT INTO `food_type` VALUES ('4', '1', '捞糊');
INSERT INTO `food_type` VALUES ('5', '1', '甜品');
INSERT INTO `food_type` VALUES ('6', '1', '鲜爽饮品');
INSERT INTO `food_type` VALUES ('7', '2', '5折新品面');
INSERT INTO `food_type` VALUES ('8', '2', '豪门盛宴');
INSERT INTO `food_type` VALUES ('9', '2', '新品蛋糕推荐');
INSERT INTO `food_type` VALUES ('10', '2', '蛋糕半价套餐');
INSERT INTO `food_type` VALUES ('11', '2', '风味蛋糕（片）');
INSERT INTO `food_type` VALUES ('12', '2', '商家推荐');
INSERT INTO `food_type` VALUES ('13', '2', '主食');
INSERT INTO `food_type` VALUES ('14', '2', '新上市纯手工制作饼干（100克/罐）');
INSERT INTO `food_type` VALUES ('16', '2', '整粒蛋糕');
INSERT INTO `food_type` VALUES ('19', '3', '清新柠檬系列');
INSERT INTO `food_type` VALUES ('20', '3', '醇香心选系列');
INSERT INTO `food_type` VALUES ('22', '3', '多口感特调系列');
INSERT INTO `food_type` VALUES ('23', '3', '岩盐芝士系列');
INSERT INTO `food_type` VALUES ('24', '3', '原叶纯泡茶系列');
INSERT INTO `food_type` VALUES ('25', '3', '茶拿铁系列');
INSERT INTO `food_type` VALUES ('26', '3', '雪乐冰系列');
INSERT INTO `food_type` VALUES ('27', '3', '养乐多系列');
INSERT INTO `food_type` VALUES ('28', '4', '满城香特色菜');
INSERT INTO `food_type` VALUES ('29', '4', '本店经典菜品');
INSERT INTO `food_type` VALUES ('30', '4', '商务套餐');
INSERT INTO `food_type` VALUES ('31', '4', '精品凉菜');
INSERT INTO `food_type` VALUES ('32', '5', '素菜/100g');
INSERT INTO `food_type` VALUES ('33', '5', '荤菜/100g');

-- ----------------------------
-- Table structure for merchant
-- ----------------------------
DROP TABLE IF EXISTS `merchant`;
CREATE TABLE `merchant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '商家名字',
  `img` varchar(255) DEFAULT '' COMMENT '商家图片',
  `grade` float(2,1) DEFAULT NULL COMMENT '评分',
  `qs` float(3,1) DEFAULT NULL COMMENT '起送价',
  `xl` int(255) DEFAULT NULL COMMENT '销量',
  `psf` float(3,1) DEFAULT NULL COMMENT '配送费',
  `distance` float(5,1) DEFAULT NULL COMMENT '距离',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of merchant
-- ----------------------------
INSERT INTO `merchant` VALUES ('1', '许留山（名人店）', 'https://fuss10.elemecdn.com/e/bc/65e3e10901f4d1b2948c898e4f3eepng.png?imageMogr/format/webp/thumbnail/!120x120r/gravity/Center/crop/120x120/', '4.5', '20.0', '75', '5.0', '166.0');
INSERT INTO `merchant` VALUES ('2', '食之秘（大丸百货店）', 'https://fuss10.elemecdn.com/5/8d/56fed2fb5deb17fb157593cf8d3d7png.png?imageMogr/format/webp/thumbnail/!120x120r/gravity/Center/crop/120x120/', '4.8', '20.0', '527', '5.0', '228.0');
INSERT INTO `merchant` VALUES ('3', '快乐柠檬（名人购物）', 'https://fuss10.elemecdn.com/0/8d/d847f56880bab0af0b927c8356f8ejpeg.jpeg?imageMogr/format/webp/thumbnail/!120x120r/gravity/Center/crop/120x120/', '5.0', '20.0', '162', '5.0', '106.0');
INSERT INTO `merchant` VALUES ('4', '一马当鲜（满城香）', 'https://fuss10.elemecdn.com/0/a7/53bea71fca63baa7b919c7bec97f7jpeg.jpeg?imageMogr/format/webp/thumbnail/!120x120r/gravity/Center/crop/120x120/', '4.0', '0.0', '128', '6.0', '2420.0');
INSERT INTO `merchant` VALUES ('5', '蜀地冒菜（浙江中路店）', 'https://fuss10.elemecdn.com/b/bc/3c9b01694feb02d3e6bf9003231f6jpeg.jpeg?imageMogr/format/webp/thumbnail/!120x120r/gravity/Center/crop/120x120/', '4.6', '40.0', '2598', '2.0', '566.0');
INSERT INTO `merchant` VALUES ('7', '福荣祥烧腊（云南南路店）', 'https://fuss10.elemecdn.com/3/e9/6a93b7d4cdc0b1a427737aac83249jpeg.jpeg?imageMogr/format/webp/thumbnail/!130x130r/gravity/Center/crop/130x130/', '4.5', '50.0', '2420', '4.0', '1400.0');
INSERT INTO `merchant` VALUES ('8', '丰收日（人民广场店）', 'https://fuss10.elemecdn.com/d/46/86d9130369d46c58bf00f7984403apng.png?imageMogr/format/webp/thumbnail/!130x130r/gravity/Center/crop/130x130/', '4.5', '20.0', '461', '5.0', '907.0');
INSERT INTO `merchant` VALUES ('9', '东池便当（浙江中路）', 'https://fuss10.elemecdn.com/a/a4/43351e01b4b28b318d126cc1a3a53png.png?imageMogr/format/webp/thumbnail/!130x130r/gravity/Center/crop/130x130/', '4.5', '20.0', '1440', '3.0', '560.0');
INSERT INTO `merchant` VALUES ('10', '焦耳·川式快餐（人民广场店）', 'https://fuss10.elemecdn.com/1/e9/3ff8421a343c20b8b33e02a18ba44png.png?imageMogr/format/webp/thumbnail/!130x130r/gravity/Center/crop/130x130/', '4.3', '0.0', '4620', '3.0', '1440.0');
INSERT INTO `merchant` VALUES ('11', '避风塘（人民广场店）', 'https://fuss10.elemecdn.com/6/18/9bdc7faf75118f90da2c0d1e636b8jpeg.jpeg?imageMogr/format/webp/thumbnail/!130x130r/gravity/Center/crop/130x130/', '4.7', '0.0', '429', '5.0', '774.0');
INSERT INTO `merchant` VALUES ('12', '惠粤轩广东煲仔饭（汉口路店）', 'https://fuss10.elemecdn.com/5/52/1e0a8d759b2cbc79268378088d444jpeg.jpeg?imageMogr/format/webp/thumbnail/!130x130r/gravity/Center/crop/130x130/', '4.6', '0.0', '1121', '6.0', '349.0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nickName` varchar(20) DEFAULT '未设置',
  `img` varchar(255) DEFAULT '未设置',
  `phone` varchar(11) DEFAULT '未设置',
  `email` varchar(20) DEFAULT '未设置',
  `gender` varchar(3) DEFAULT '未设置',
  `birthday` varchar(255) DEFAULT '未设置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123456', '测试用户', '/img/user/12950090.jpg', '18669692865', '351916362@qq.com', '男', '1993-10-20');
