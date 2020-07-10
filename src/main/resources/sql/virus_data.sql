/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : virus_data

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 01/03/2020 11:42:20
*/

-- 遇到问题可以先把这两行删掉
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for appmask
-- ----------------------------
DROP TABLE IF EXISTS `appmask`;
CREATE TABLE `appmask`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `shopname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺名称',
  `appname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'app',
  `masktype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '口罩类型',
  `buytype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '抢购方式',
  `price` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '价格',
  `time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '购买时间',
  `notice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注意事项',
  `cover_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '购买封面图',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of appmask
-- ----------------------------
INSERT INTO `appmask` VALUES ('01', '3Q自营旗舰店', '京东', '医用口罩', '预约-抢购', '￥18/10', 'PM: 03:00', '准点预约，记得实名', './img/app_Img_1.jpg');
INSERT INTO `appmask` VALUES ('02', '防疫特供物资预约', '网易严选', '一次性平面口罩', '摇号', '￥6.9/3', 'AM: 10:00', '中签机会不大', './img/app_Img_2.jpg');
INSERT INTO `appmask` VALUES ('03', '小mi有品', '小米有品', 'KF94防护口罩', '抢购', '￥199/10', 'PM: 04:00', '价格有点贵', './img/app_Img_3.jpg');
INSERT INTO `appmask` VALUES ('04', '全棉时代旗舰店', '网易kaola', '护理口罩', '抢购', '￥2.5/1', 'PM: 08:00', '蹲点的人很多', './img/app_Img_4.jpg');
INSERT INTO `appmask` VALUES ('05', '全棉时代甄选品专卖店', '天猫', '护理口罩', '抢购', '￥2.5/1', 'PM: 09:00', '非旗舰店，谨慎哦', './img/app_Img_5.jpg');
INSERT INTO `appmask` VALUES ('06', 'Honeywell个人防护', '天猫', '儿童款', '抢购', '￥99/5', 'AM: 09:00', '脸小的成人也可以考虑哦', './img/app_Img_6.jpg');
INSERT INTO `appmask` VALUES ('07', '全棉时代旗舰店', '小红书商城', '护理口罩', '抢购', '￥2.5/1', 'AM: 09:00', '不准时，9点后多刷', './img/app_Img_4.jpg');
INSERT INTO `appmask` VALUES ('08', '伊藤良品', '京东', 'N99', '预约-抢购', '￥16.9/1', 'AM: 10:00', '需预约，人少，相对难度低', './img/app_Img_8.jpg');
INSERT INTO `appmask` VALUES ('09', 'ZD振德旗舰店', '淘宝', '医用口罩', '抢购', '￥39-￥49/10', 'PM: 09:00', '店铺首页没有链接需要找客服要链接', './img/app_Img_9.jpg');

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `city_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市名',
  `add_num` int(11) NULL DEFAULT NULL COMMENT '新增确诊',
  `confirmed_num` int(11) NULL DEFAULT NULL COMMENT '现有确诊',
  `cure_num` int(11) NULL DEFAULT NULL COMMENT '治愈人数',
  `death_num` int(11) NULL DEFAULT NULL COMMENT '死亡人数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1.0', '武汉', 420, 28836, 17552, 2169);
INSERT INTO `city` VALUES ('10.0', '荆门', 1, 324, 563, 37);
INSERT INTO `city` VALUES ('11.0', '咸宁', 0, 148, 677, 11);
INSERT INTO `city` VALUES ('12.0', '十堰', 0, 243, 421, 7);
INSERT INTO `city` VALUES ('13.0', '仙桃', 0, 148, 408, 19);
INSERT INTO `city` VALUES ('14.0', '天门', 0, 121, 362, 13);
INSERT INTO `city` VALUES ('15.0', '恩施', 1, 67, 181, 4);
INSERT INTO `city` VALUES ('16.0', '潜江', 0, 82, 107, 9);
INSERT INTO `city` VALUES ('17.0', '神农架林区', 0, 1, 10, 0);
INSERT INTO `city` VALUES ('2.0', '孝感', 1, 1356, 2047, 115);
INSERT INTO `city` VALUES ('3.0', '黄冈', 0, 670, 2119, 115);
INSERT INTO `city` VALUES ('4.0', '荆州', 0, 568, 965, 46);
INSERT INTO `city` VALUES ('4d33d91a-cc18-4fbd-887d-1142a8e7ff37', '平遥', 1, 1, 1, 1);
INSERT INTO `city` VALUES ('5.0', '鄂州', 1, 599, 747, 44);
INSERT INTO `city` VALUES ('6.0', '随州', 0, 470, 797, 40);
INSERT INTO `city` VALUES ('7.0', '襄阳', 0, 340, 802, 33);
INSERT INTO `city` VALUES ('8.0', '黄石', 0, 304, 675, 34);
INSERT INTO `city` VALUES ('9.0', '宜昌', 0, 438, 462, 31);

-- ----------------------------
-- Table structure for dxyarea
-- ----------------------------
DROP TABLE IF EXISTS `dxyarea`;
CREATE TABLE `dxyarea`  (
  `provinceName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `provinceEnglishName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `province_zipCode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cityName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cityEnglishName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city_zipCode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `province_confirmedCount` int(11) NULL DEFAULT NULL,
  `province_suspectedCount` int(11) NULL DEFAULT NULL,
  `province_curedCount` int(11) NULL DEFAULT NULL,
  `province_deadCount` int(11) NULL DEFAULT NULL,
  `city_confirmedCount` int(11) NULL DEFAULT NULL,
  `city_suspectedCount` int(11) NULL DEFAULT NULL,
  `city_curedCount` int(11) NULL DEFAULT NULL,
  `city_deadCount` int(11) NULL DEFAULT NULL,
  `updateTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dxyarea
-- ----------------------------
INSERT INTO `dxyarea` VALUES ('浙江省', 'Zhejiang', '330000', '温州', 'Wenzhou', '330300', 1205, 0, 975, 1, 504, 0, 405, 1, '43:38.5');
INSERT INTO `dxyarea` VALUES ('浙江省', 'Zhejiang', '330000', '台州', 'Taizhou', '331000', 1205, 0, 975, 1, 146, 0, 106, 0, '43:38.5');
INSERT INTO `dxyarea` VALUES ('浙江省', 'Zhejiang', '330000', '省十里丰监狱', NULL, '0', 1205, 0, 975, 1, 36, 0, 5, 0, '43:38.5');
INSERT INTO `dxyarea` VALUES ('浙江省', 'Zhejiang', '330000', '宁波', 'Ningbo', '330200', 1205, 0, 975, 1, 157, 0, 138, 0, '43:38.5');
INSERT INTO `dxyarea` VALUES ('浙江省', 'Zhejiang', '330000', '杭州', 'Hangzhou', '330100', 1205, 0, 975, 1, 169, 0, 151, 0, '43:38.5');
INSERT INTO `dxyarea` VALUES ('浙江省', 'Zhejiang', '330000', '嘉兴', 'Jiaxing', '330400', 1205, 0, 975, 1, 45, 0, 34, 0, '43:38.5');
INSERT INTO `dxyarea` VALUES ('浙江省', 'Zhejiang', '330000', '绍兴', 'Shaoxing', '330600', 1205, 0, 975, 1, 42, 0, 36, 0, '43:38.5');
INSERT INTO `dxyarea` VALUES ('浙江省', 'Zhejiang', '330000', '金华', 'Jinhua', '330700', 1205, 0, 975, 1, 55, 0, 50, 0, '43:38.5');
INSERT INTO `dxyarea` VALUES ('浙江省', 'Zhejiang', '330000', '衢州', 'Quzhou', '330800', 1205, 0, 975, 1, 14, 0, 11, 0, '43:38.5');
INSERT INTO `dxyarea` VALUES ('浙江省', 'Zhejiang', '330000', '舟山', 'Zhoushan', '330900', 1205, 0, 975, 1, 10, 0, 7, 0, '43:38.5');
INSERT INTO `dxyarea` VALUES ('浙江省', 'Zhejiang', '330000', '湖州', 'Huzhou', '330500', 1205, 0, 975, 1, 10, 0, 9, 0, '43:38.5');
INSERT INTO `dxyarea` VALUES ('浙江省', 'Zhejiang', '330000', '丽水', 'Lishui', '331100', 1205, 0, 975, 1, 17, 0, 17, 0, '43:38.5');
INSERT INTO `dxyarea` VALUES ('浙江省', 'Zhejiang', '330000', '待明确地区', 'Area not defined', '0', 1205, 0, 975, 1, 0, 0, 6, 0, '43:38.5');
INSERT INTO `dxyarea` VALUES ('山东省', 'Shandong', '370000', '济宁', 'Jining', '370800', 756, 0, 405, 6, 258, 0, 45, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('山东省', 'Shandong', '370000', '济南', 'Jinan', '370100', 756, 0, 405, 6, 47, 0, 25, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('山东省', 'Shandong', '370000', '德州', 'Dezhou', '371400', 756, 0, 405, 6, 37, 0, 17, 2, '17:08.6');
INSERT INTO `dxyarea` VALUES ('山东省', 'Shandong', '370000', '烟台', 'Yantai', '370600', 756, 0, 405, 6, 47, 0, 30, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('山东省', 'Shandong', '370000', '潍坊', 'Weifang', '370700', 756, 0, 405, 6, 44, 0, 27, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('山东省', 'Shandong', '370000', '青岛', 'Qingdao', '370200', 756, 0, 405, 6, 60, 0, 45, 1, '17:08.6');
INSERT INTO `dxyarea` VALUES ('山东省', 'Shandong', '370000', '威海', 'Weihai', '371000', 756, 0, 405, 6, 38, 0, 28, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('山东省', 'Shandong', '370000', '淄博', 'Zibo', '370300', 756, 0, 405, 6, 30, 0, 21, 1, '17:08.6');
INSERT INTO `dxyarea` VALUES ('山东省', 'Shandong', '370000', '泰安', 'Tai\'an', '370900', 756, 0, 405, 6, 35, 0, 26, 2, '17:08.6');
INSERT INTO `dxyarea` VALUES ('山东省', 'Shandong', '370000', '聊城', 'Liaocheng', '371500', 756, 0, 405, 6, 38, 0, 33, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('山东省', 'Shandong', '370000', '临沂', 'Linyi', '371300', 756, 0, 405, 6, 49, 0, 45, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('山东省', 'Shandong', '370000', '日照', 'Rizhao', '371100', 756, 0, 405, 6, 16, 0, 12, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('山东省', 'Shandong', '370000', '滨州', 'Binzhou', '371600', 756, 0, 405, 6, 15, 0, 12, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('山东省', 'Shandong', '370000', '枣庄', 'Zaozhuang', '370400', 756, 0, 405, 6, 24, 0, 22, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('山东省', 'Shandong', '370000', '菏泽', 'Heze', '371700', 756, 0, 405, 6, 18, 0, 17, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('四川省', 'Sichuan', '510000', '成都', 'Chengdu', '510100', 538, 0, 338, 3, 143, 0, 85, 3, '17:08.6');
INSERT INTO `dxyarea` VALUES ('四川省', 'Sichuan', '510000', '甘孜州', 'Garzê Tibetan Autonomous Prefecture', '513300', 538, 0, 338, 3, 78, 0, 23, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('四川省', 'Sichuan', '510000', '达州', 'Dazhou', '511700', 538, 0, 338, 3, 42, 0, 26, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('四川省', 'Sichuan', '510000', '南充', 'Nanchong', '511300', 538, 0, 338, 3, 39, 0, 23, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('四川省', 'Sichuan', '510000', '巴中', 'Bazhong', '511900', 538, 0, 338, 3, 24, 0, 11, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('四川省', 'Sichuan', '510000', '德阳', 'Deyang', '510600', 538, 0, 338, 3, 18, 0, 10, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('四川省', 'Sichuan', '510000', '广安', 'Guang\'an', '511600', 538, 0, 338, 3, 30, 0, 23, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('四川省', 'Sichuan', '510000', '绵阳', 'Mianyang', '510700', 538, 0, 338, 3, 22, 0, 15, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('四川省', 'Sichuan', '510000', '泸州', 'Luzhou', '510500', 538, 0, 338, 3, 24, 0, 20, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('四川省', 'Sichuan', '510000', '内江', 'Neijiang', '511000', 538, 0, 338, 3, 22, 0, 18, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('四川省', 'Sichuan', '510000', '凉山州', 'Liangshan Yi Autonomous Prefecture', '513400', 538, 0, 338, 3, 13, 0, 10, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('四川省', 'Sichuan', '510000', '遂宁', 'Suining', '510900', 538, 0, 338, 3, 17, 0, 15, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('四川省', 'Sichuan', '510000', '宜宾', 'Yibin', '511500', 538, 0, 338, 3, 12, 0, 10, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('四川省', 'Sichuan', '510000', '眉山', 'Meishan', '511400', 538, 0, 338, 3, 8, 0, 6, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('四川省', 'Sichuan', '510000', '资阳', 'Ziyang', '512000', 538, 0, 338, 3, 4, 0, 2, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('四川省', 'Sichuan', '510000', '雅安', 'Ya\'an', '511800', 538, 0, 338, 3, 7, 0, 6, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('四川省', 'Sichuan', '510000', '攀枝花', 'Panzhihua', '510400', 538, 0, 338, 3, 16, 0, 16, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('四川省', 'Sichuan', '510000', '自贡', 'Zigong', '510300', 538, 0, 338, 3, 9, 0, 9, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('四川省', 'Sichuan', '510000', '广元', 'Guangyuan', '510800', 538, 0, 338, 3, 6, 0, 6, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('四川省', 'Sichuan', '510000', '乐山', 'Leshan', '511100', 538, 0, 338, 3, 3, 0, 3, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('四川省', 'Sichuan', '510000', '阿坝州', 'Ngawa Tibetan and Qiang Autonomous Prefecture', '513200', 538, 0, 338, 3, 1, 0, 1, 0, '17:08.6');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '信阳', 'Xinyang', '411500', 1272, 0, 1112, 20, 274, 0, 232, 2, '16:05.3');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '郑州', 'Zhengzhou', '410100', 1272, 0, 1112, 20, 157, 0, 130, 0, '16:05.3');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '周口', 'Zhoukou', '411600', 1272, 0, 1112, 20, 76, 0, 56, 1, '16:05.3');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '南阳', 'Nanyang', '411300', 1272, 0, 1112, 20, 156, 0, 139, 3, '16:05.3');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '安阳', 'Anyang', '410500', 1272, 0, 1112, 20, 53, 0, 44, 0, '16:05.3');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '开封', 'Kaifeng', '410200', 1272, 0, 1112, 20, 26, 0, 18, 0, '16:05.3');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '漯河', 'Luohe', '411100', 1272, 0, 1112, 20, 35, 0, 28, 0, '16:05.3');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '商丘', 'Shangqiu', '411400', 1272, 0, 1112, 20, 91, 0, 82, 3, '16:05.3');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '濮阳', 'Puyang', '410900', 1272, 0, 1112, 20, 17, 0, 11, 0, '16:05.3');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '平顶山', 'Pingdingshan', '410400', 1272, 0, 1112, 20, 58, 0, 53, 1, '16:05.3');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '洛阳', 'Luoyang', '410300', 1272, 0, 1112, 20, 31, 0, 26, 1, '16:05.3');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '新乡', 'Xinxiang', '410700', 1272, 0, 1112, 20, 57, 0, 51, 3, '16:05.3');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '许昌', 'Xuchang', '411000', 1272, 0, 1112, 20, 39, 0, 36, 0, '16:05.3');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '驻马店', 'Zhumadian', '411700', 1272, 0, 1112, 20, 139, 0, 137, 0, '16:05.3');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '鹤壁', 'Hebi', '410600', 1272, 0, 1112, 20, 19, 0, 17, 0, '16:05.3');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '济源', 'Jiyuan', '419001', 1272, 0, 1112, 20, 5, 0, 3, 0, '16:05.3');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '焦作', 'Jiaozuo', '410800', 1272, 0, 1112, 20, 32, 0, 31, 1, '16:05.3');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '三门峡', 'Sanmenxia', '411200', 1272, 0, 1112, 20, 7, 0, 6, 1, '16:05.3');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '待明确地区', 'Area not defined', '0', 1272, 0, 1112, 20, 0, 0, 12, 4, '16:05.3');
INSERT INTO `dxyarea` VALUES ('湖南省', 'Hunan', '430000', '长沙', 'Changsha', '430100', 1017, 0, 830, 4, 242, 0, 172, 2, '57:54.0');
INSERT INTO `dxyarea` VALUES ('湖南省', 'Hunan', '430000', '岳阳', 'Yueyang', '430600', 1017, 0, 830, 4, 156, 0, 113, 1, '57:54.0');
INSERT INTO `dxyarea` VALUES ('湖南省', 'Hunan', '430000', '株洲', 'Zhuzhou', '430200', 1017, 0, 830, 4, 80, 0, 62, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('湖南省', 'Hunan', '430000', '娄底', 'Loudi', '431300', 1017, 0, 830, 4, 76, 0, 60, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('湖南省', 'Hunan', '430000', '常德', 'Changde', '430700', 1017, 0, 830, 4, 82, 0, 72, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('湖南省', 'Hunan', '430000', '衡阳', 'Hengyang', '430400', 1017, 0, 830, 4, 48, 0, 38, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('湖南省', 'Hunan', '430000', '邵阳', 'Shaoyang', '430500', 1017, 0, 830, 4, 102, 0, 93, 1, '57:54.0');
INSERT INTO `dxyarea` VALUES ('湖南省', 'Hunan', '430000', '郴州', 'Chenzhou', '431000', 1017, 0, 830, 4, 39, 0, 34, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('湖南省', 'Hunan', '430000', '湘潭', 'Xiangtan', '430300', 1017, 0, 830, 4, 36, 0, 33, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('湖南省', 'Hunan', '430000', '永州', 'Yongzhou', '431100', 1017, 0, 830, 4, 44, 0, 42, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('湖南省', 'Hunan', '430000', '益阳', 'Yiyang', '430900', 1017, 0, 830, 4, 59, 0, 58, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('湖南省', 'Hunan', '430000', '怀化', 'Huaihua', '431200', 1017, 0, 830, 4, 40, 0, 40, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('湖南省', 'Hunan', '430000', '湘西自治州', 'Xiangxi', '433100', 1017, 0, 830, 4, 8, 0, 8, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('湖南省', 'Hunan', '430000', '张家界', 'Zhangjiajie', '430800', 1017, 0, 830, 4, 5, 0, 5, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('广西壮族自治区', 'Guangxi', '450000', '河池', 'Hechi', '451200', 252, 0, 168, 2, 28, 0, 8, 1, '57:54.0');
INSERT INTO `dxyarea` VALUES ('广西壮族自治区', 'Guangxi', '450000', '北海', 'Beihai', '450500', 252, 0, 168, 2, 44, 0, 32, 1, '57:54.0');
INSERT INTO `dxyarea` VALUES ('广西壮族自治区', 'Guangxi', '450000', '防城港', 'Fangchenggang', '450600', 252, 0, 168, 2, 19, 0, 8, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('广西壮族自治区', 'Guangxi', '450000', '南宁', 'Nanning', '450100', 252, 0, 168, 2, 55, 0, 46, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('广西壮族自治区', 'Guangxi', '450000', '柳州', 'Liuzhou', '450200', 252, 0, 168, 2, 24, 0, 15, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('广西壮族自治区', 'Guangxi', '450000', '桂林', 'Guilin', '450300', 252, 0, 168, 2, 32, 0, 24, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('广西壮族自治区', 'Guangxi', '450000', '来宾', 'Laibin', '451300', 252, 0, 168, 2, 11, 0, 3, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('广西壮族自治区', 'Guangxi', '450000', '玉林', 'Yulin', '450900', 252, 0, 168, 2, 11, 0, 7, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('广西壮族自治区', 'Guangxi', '450000', '贵港', 'Guigang', '450800', 252, 0, 168, 2, 8, 0, 6, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('广西壮族自治区', 'Guangxi', '450000', '钦州', 'Qinzhou', '450700', 252, 0, 168, 2, 8, 0, 7, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('广西壮族自治区', 'Guangxi', '450000', '梧州', 'Wuzhou', '450400', 252, 0, 168, 2, 5, 0, 5, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('广西壮族自治区', 'Guangxi', '450000', '贺州', 'Hezhou', '451100', 252, 0, 168, 2, 4, 0, 4, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('广西壮族自治区', 'Guangxi', '450000', '百色', 'Baise', '451000', 252, 0, 168, 2, 3, 0, 3, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('福建省', 'Fujian', '350000', '莆田', 'Putian', '350300', 296, 0, 235, 1, 56, 0, 36, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('福建省', 'Fujian', '350000', '泉州', 'Quanzhou', '350500', 296, 0, 235, 1, 47, 0, 30, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('福建省', 'Fujian', '350000', '南平', 'Nanping', '350700', 296, 0, 235, 1, 20, 0, 14, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('福建省', 'Fujian', '350000', '三明', 'Sanming', '350400', 296, 0, 235, 1, 14, 0, 8, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('福建省', 'Fujian', '350000', '漳州', 'Zhangzhou', '350600', 296, 0, 235, 1, 20, 0, 15, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('福建省', 'Fujian', '350000', '宁德', 'Ningde', '350900', 296, 0, 235, 1, 26, 0, 23, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('福建省', 'Fujian', '350000', '福州', 'Fuzhou', '350100', 296, 0, 235, 1, 72, 0, 69, 1, '57:54.0');
INSERT INTO `dxyarea` VALUES ('福建省', 'Fujian', '350000', '厦门', 'Xiamen', '350200', 296, 0, 235, 1, 35, 0, 34, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('福建省', 'Fujian', '350000', '龙岩', 'Longyan', '350800', 296, 0, 235, 1, 6, 0, 6, 0, '57:54.0');
INSERT INTO `dxyarea` VALUES ('陕西省', 'Shaanxi', '610000', '西安', 'Xi\'an', '610100', 245, 0, 199, 1, 120, 0, 98, 1, '47:17.9');
INSERT INTO `dxyarea` VALUES ('陕西省', 'Shaanxi', '610000', '汉中', 'Hanzhong', '610700', 245, 0, 199, 1, 26, 0, 18, 0, '47:17.9');
INSERT INTO `dxyarea` VALUES ('陕西省', 'Shaanxi', '610000', '安康', 'Ankang', '610900', 245, 0, 199, 1, 26, 0, 20, 0, '47:17.9');
INSERT INTO `dxyarea` VALUES ('陕西省', 'Shaanxi', '610000', '渭南', 'Weinan', '610500', 245, 0, 199, 1, 15, 0, 9, 0, '47:17.9');
INSERT INTO `dxyarea` VALUES ('陕西省', 'Shaanxi', '610000', '铜川', 'Tongchuan', '610200', 245, 0, 199, 1, 8, 0, 6, 0, '47:17.9');
INSERT INTO `dxyarea` VALUES ('陕西省', 'Shaanxi', '610000', '宝鸡', 'Baoji', '610300', 245, 0, 199, 1, 13, 0, 12, 0, '47:17.9');
INSERT INTO `dxyarea` VALUES ('陕西省', 'Shaanxi', '610000', '商洛', 'Shangluo', '611000', 245, 0, 199, 1, 7, 0, 6, 0, '47:17.9');
INSERT INTO `dxyarea` VALUES ('陕西省', 'Shaanxi', '610000', '咸阳', 'Xianyang', '610400', 245, 0, 199, 1, 17, 0, 17, 0, '47:17.9');
INSERT INTO `dxyarea` VALUES ('陕西省', 'Shaanxi', '610000', '延安', 'Yan\'an', '610600', 245, 0, 199, 1, 8, 0, 8, 0, '47:17.9');
INSERT INTO `dxyarea` VALUES ('陕西省', 'Shaanxi', '610000', '榆林', 'Yulin', '610800', 245, 0, 199, 1, 3, 0, 3, 0, '47:17.9');
INSERT INTO `dxyarea` VALUES ('陕西省', 'Shaanxi', '610000', '韩城', 'Hancheng', '610581', 245, 0, 199, 1, 1, 0, 1, 0, '47:17.9');
INSERT INTO `dxyarea` VALUES ('陕西省', 'Shaanxi', '610000', '杨凌', 'Yangling District in Xianyang', '0', 245, 0, 199, 1, 1, 0, 1, 0, '47:17.9');
INSERT INTO `dxyarea` VALUES ('河北省', 'Hebei', '130000', '唐山', 'Tangshan', '130200', 318, 0, 277, 6, 58, 0, 41, 1, '47:17.9');
INSERT INTO `dxyarea` VALUES ('河北省', 'Hebei', '130000', '张家口', 'Zhangjiakou', '130700', 318, 0, 277, 6, 41, 0, 33, 0, '47:17.9');
INSERT INTO `dxyarea` VALUES ('河北省', 'Hebei', '130000', '石家庄', 'Shijiazhuang', '130100', 318, 0, 277, 6, 29, 0, 24, 0, '47:17.9');
INSERT INTO `dxyarea` VALUES ('河北省', 'Hebei', '130000', '沧州', 'Cangzhou', '130900', 318, 0, 277, 6, 48, 0, 41, 3, '47:17.9');
INSERT INTO `dxyarea` VALUES ('河北省', 'Hebei', '130000', '邯郸', 'Handan', '130400', 318, 0, 277, 6, 32, 0, 30, 0, '47:17.9');
INSERT INTO `dxyarea` VALUES ('河北省', 'Hebei', '130000', '保定', 'Baoding', '130600', 318, 0, 277, 6, 32, 0, 32, 0, '47:17.9');
INSERT INTO `dxyarea` VALUES ('河北省', 'Hebei', '130000', '廊坊', 'Langfang', '131000', 318, 0, 277, 6, 30, 0, 30, 0, '47:17.9');
INSERT INTO `dxyarea` VALUES ('河北省', 'Hebei', '130000', '邢台', 'Xingtai', '130500', 318, 0, 277, 6, 23, 0, 22, 1, '47:17.9');
INSERT INTO `dxyarea` VALUES ('河北省', 'Hebei', '130000', '秦皇岛', 'Qinhuangdao', '130300', 318, 0, 277, 6, 10, 0, 9, 1, '47:17.9');
INSERT INTO `dxyarea` VALUES ('河北省', 'Hebei', '130000', '衡水', 'Hengshui', '131100', 318, 0, 277, 6, 8, 0, 8, 0, '47:17.9');
INSERT INTO `dxyarea` VALUES ('河北省', 'Hebei', '130000', '承德', 'Chengde', '130800', 318, 0, 277, 6, 7, 0, 7, 0, '47:17.9');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '三亚', 'Sanya', '460200', 168, 0, 133, 5, 54, 0, 43, 1, '28:10.2');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '海口', 'Haikou', '460100', 168, 0, 133, 5, 39, 0, 31, 0, '28:10.2');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '昌江', 'Changjiang Li Autonomous County', '469026', 168, 0, 133, 5, 7, 0, 3, 0, '28:10.2');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '儋州', 'Danzhou', '460400', 168, 0, 133, 5, 15, 0, 12, 1, '28:10.2');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '保亭', 'Baoting Li and Miao Autonomous County', '469029', 168, 0, 133, 5, 3, 0, 1, 0, '28:10.2');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '万宁', 'Wanning', '469006', 168, 0, 133, 5, 13, 0, 12, 0, '28:10.2');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '澄迈', 'Chengmai County', '469023', 168, 0, 133, 5, 9, 0, 7, 1, '28:10.2');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '琼海', 'Qionghai', '469002', 168, 0, 133, 5, 6, 0, 4, 1, '28:10.2');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '东方', 'Dongfang', '469007', 168, 0, 133, 5, 3, 0, 2, 0, '28:10.2');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '临高', 'Lingao County', '469024', 168, 0, 133, 5, 6, 0, 6, 0, '28:10.2');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '陵水', 'Lingshui Li Autonomous County', '469028', 168, 0, 133, 5, 4, 0, 4, 0, '28:10.2');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '定安', 'Ding\'an County', '469021', 168, 0, 133, 5, 3, 0, 2, 1, '28:10.2');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '文昌', 'Wenchang', '469005', 168, 0, 133, 5, 3, 0, 3, 0, '28:10.2');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '乐东', 'Ledong Li Autonomous County', '469027', 168, 0, 133, 5, 2, 0, 2, 0, '28:10.2');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '琼中', 'Qiongzhong Li and Miao Autonomous County', '469030', 168, 0, 133, 5, 1, 0, 1, 0, '28:10.2');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '深圳', 'Shenzhen', '440300', 1348, 0, 935, 7, 417, 0, 281, 3, '24:58.4');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '广州', 'Guangzhou', '440100', 1348, 0, 935, 7, 346, 0, 240, 1, '24:58.4');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '东莞', 'Dongguan', '441900', 1348, 0, 935, 7, 98, 0, 55, 1, '24:58.4');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '佛山', 'Foshan', '440600', 1348, 0, 935, 7, 84, 0, 47, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '珠海', 'Zhuhai', '440400', 1348, 0, 935, 7, 98, 0, 63, 1, '24:58.4');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '江门', 'Jiangmen', '440700', 1348, 0, 935, 7, 23, 0, 13, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '中山', 'Zhongshan', '442000', 1348, 0, 935, 7, 66, 0, 58, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '惠州', 'Huizhou', '441300', 1348, 0, 935, 7, 62, 0, 55, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '湛江', 'Zhanjiang', '440800', 1348, 0, 935, 7, 22, 0, 17, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '肇庆', 'Zhaoqing', '441200', 1348, 0, 935, 7, 19, 0, 13, 1, '24:58.4');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '茂名', 'Maoming', '440900', 1348, 0, 935, 7, 14, 0, 9, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '梅州', 'Meizhou', '441400', 1348, 0, 935, 7, 16, 0, 12, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '阳江', 'Yangjiang', '441700', 1348, 0, 935, 7, 14, 0, 10, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '汕头', 'Shantou', '440500', 1348, 0, 935, 7, 25, 0, 22, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '揭阳', 'Jieyang', '445200', 1348, 0, 935, 7, 8, 0, 5, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '韶关', 'Shaoguan', '440200', 1348, 0, 935, 7, 10, 0, 9, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '清远', 'Qingyuan', '441800', 1348, 0, 935, 7, 12, 0, 12, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '汕尾', 'Shanwei', '441500', 1348, 0, 935, 7, 5, 0, 5, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '潮州', 'Chaozhou', '445100', 1348, 0, 935, 7, 5, 0, 5, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '河源', 'Heyuan', '441600', 1348, 0, 935, 7, 4, 0, 4, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('江苏省', 'Jiangsu', '320000', '南京', 'Nanjing', '320100', 631, 0, 515, 0, 93, 0, 58, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('江苏省', 'Jiangsu', '320000', '苏州', 'Suzhou', '320500', 631, 0, 515, 0, 87, 0, 62, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('江苏省', 'Jiangsu', '320000', '连云港', 'Lianyungang', '320700', 631, 0, 515, 0, 48, 0, 35, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('江苏省', 'Jiangsu', '320000', '淮安', 'Huainan', '320800', 631, 0, 515, 0, 66, 0, 55, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('江苏省', 'Jiangsu', '320000', '徐州', 'Xuzhou', '320300', 631, 0, 515, 0, 79, 0, 71, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('江苏省', 'Jiangsu', '320000', '无锡', 'Wuxi', '320200', 631, 0, 515, 0, 55, 0, 48, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('江苏省', 'Jiangsu', '320000', '扬州', 'Yangzhou', '321000', 631, 0, 515, 0, 23, 0, 17, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('江苏省', 'Jiangsu', '320000', '常州', 'Changzhou', '320400', 631, 0, 515, 0, 51, 0, 48, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('江苏省', 'Jiangsu', '320000', '南通', 'Nantong', '320600', 631, 0, 515, 0, 40, 0, 37, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('江苏省', 'Jiangsu', '320000', '盐城', 'Yancheng', '320900', 631, 0, 515, 0, 27, 0, 25, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('江苏省', 'Jiangsu', '320000', '镇江', 'Zhenjiang', '321100', 631, 0, 515, 0, 12, 0, 10, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('江苏省', 'Jiangsu', '320000', '宿迁', 'Suqian', '321300', 631, 0, 515, 0, 13, 0, 12, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('江苏省', 'Jiangsu', '320000', '泰州', 'Taizhou', '321200', 631, 0, 515, 0, 37, 0, 37, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('吉林省', 'Jilin', '220000', '长春', 'Changchun', '220100', 93, 0, 73, 1, 45, 0, 37, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('吉林省', 'Jilin', '220000', '四平市', 'Siping', '220300', 93, 0, 73, 1, 15, 0, 11, 1, '24:58.4');
INSERT INTO `dxyarea` VALUES ('吉林省', 'Jilin', '220000', '辽源', 'Liaoyuan', '220400', 93, 0, 73, 1, 7, 0, 4, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('吉林省', 'Jilin', '220000', '通化', 'Tonghua', '220500', 93, 0, 73, 1, 6, 0, 3, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('吉林省', 'Jilin', '220000', '公主岭', 'Gongzhuling', '220381', 93, 0, 73, 1, 6, 0, 5, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('吉林省', 'Jilin', '220000', '白城', 'Baicheng', '220800', 93, 0, 73, 1, 1, 0, 0, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('吉林省', 'Jilin', '220000', '吉林市', 'Jilin', '220200', 93, 0, 73, 1, 5, 0, 5, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('吉林省', 'Jilin', '220000', '延边', 'Yanbian', '222400', 93, 0, 73, 1, 5, 0, 5, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('吉林省', 'Jilin', '220000', '松原', 'Songyuan', '220700', 93, 0, 73, 1, 2, 0, 2, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('吉林省', 'Jilin', '220000', '梅河口', 'Meihekou', '220581', 93, 0, 73, 1, 1, 0, 1, 0, '24:58.4');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '乌鲁木齐', 'Urumqi', '650100', 76, 0, 52, 3, 23, 0, 16, 0, '38:21.2');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '伊犁州', 'Yili', '654000', 76, 0, 52, 3, 18, 0, 12, 0, '38:21.2');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '兵团第四师', 'Xinjiang Production and Construction Corps 4th Division', '0', 76, 0, 52, 3, 10, 0, 6, 1, '38:21.2');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '吐鲁番市', 'Turpan', '650400', 76, 0, 52, 3, 3, 0, 1, 0, '38:21.2');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '兵团第九师', 'Xinjiang Production and Construction Corps 9th Division', '0', 76, 0, 52, 3, 4, 0, 2, 1, '38:21.2');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '昌吉州', 'Changji', '0', 76, 0, 52, 3, 4, 0, 3, 0, '38:21.2');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '兵团第八师石河子市', 'Shihezi, Xinjiang Production and Construction Corps 8th Division', '0', 76, 0, 52, 3, 4, 0, 2, 1, '38:21.2');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '巴州', 'Bayingolin Mongol Autonomous Prefecture', '511902', 76, 0, 52, 3, 3, 0, 3, 0, '38:21.2');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '兵团第十二师', 'Xinjiang Production and Construction Corps 12th Division', '0', 76, 0, 52, 3, 3, 0, 3, 0, '38:21.2');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '兵团第六师五家渠市', 'Wujiaqu, Xinjiang Production and Construction Corps 5th Division', '0', 76, 0, 52, 3, 2, 0, 2, 0, '38:21.2');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '兵团第七师', 'Xinjiang Production and Construction Corps 7th Division', '0', 76, 0, 52, 3, 1, 0, 1, 0, '38:21.2');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '阿克苏地区', 'Akesu', '652900', 76, 0, 52, 3, 1, 0, 1, 0, '38:21.2');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '锡林郭勒盟', 'Linguolexi', '152500', 75, 0, 45, 0, 9, 0, 2, 0, '17:09.1');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '包头', 'Baotou', '150200', 75, 0, 45, 0, 11, 0, 5, 0, '17:09.1');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '通辽', 'Tongliao', '150500', 75, 0, 45, 0, 7, 0, 2, 0, '17:09.1');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '呼和浩特', 'Hohhot', '150100', 75, 0, 45, 0, 7, 0, 4, 0, '17:09.1');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '呼伦贝尔', 'Hulunbuir', '150700', 75, 0, 45, 0, 7, 0, 4, 0, '17:09.1');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '鄂尔多斯', 'Ordos', '150600', 75, 0, 45, 0, 11, 0, 9, 0, '17:09.1');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '巴彦淖尔', 'Bayannur', '150800', 75, 0, 45, 0, 8, 0, 6, 0, '17:09.1');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '赤峰', 'Chifeng', '150400', 75, 0, 45, 0, 9, 0, 8, 0, '17:09.1');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '乌兰察布', 'Ulanqab', '150900', 75, 0, 45, 0, 3, 0, 2, 0, '17:09.1');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '乌海市', 'Wuhai', '150300', 75, 0, 45, 0, 2, 0, 2, 0, '17:09.1');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '兴安盟', 'Xinganmeng', '152200', 75, 0, 45, 0, 1, 0, 1, 0, '17:09.1');
INSERT INTO `dxyarea` VALUES ('山西省', 'Shanxi', '140000', '晋中', 'Jinzhong', '140700', 133, 0, 109, 0, 37, 0, 26, 0, '01:12.3');
INSERT INTO `dxyarea` VALUES ('山西省', 'Shanxi', '140000', '大同', 'Datong', '140200', 133, 0, 109, 0, 12, 0, 8, 0, '01:12.3');
INSERT INTO `dxyarea` VALUES ('山西省', 'Shanxi', '140000', '晋城', 'Jincheng', '140500', 133, 0, 109, 0, 10, 0, 7, 0, '01:12.3');
INSERT INTO `dxyarea` VALUES ('山西省', 'Shanxi', '140000', '太原', 'Taiyuan', '140100', 133, 0, 109, 0, 20, 0, 18, 0, '01:12.3');
INSERT INTO `dxyarea` VALUES ('山西省', 'Shanxi', '140000', '朔州', 'Shuozhou', '140600', 133, 0, 109, 0, 8, 0, 6, 0, '01:12.3');
INSERT INTO `dxyarea` VALUES ('山西省', 'Shanxi', '140000', '运城', 'Yuncheng', '140800', 133, 0, 109, 0, 19, 0, 18, 0, '01:12.3');
INSERT INTO `dxyarea` VALUES ('山西省', 'Shanxi', '140000', '长治', 'Changzhi', '140400', 133, 0, 109, 0, 8, 0, 7, 0, '01:12.3');
INSERT INTO `dxyarea` VALUES ('山西省', 'Shanxi', '140000', '忻州', 'Xinzhou', '140900', 133, 0, 109, 0, 7, 0, 7, 0, '01:12.3');
INSERT INTO `dxyarea` VALUES ('山西省', 'Shanxi', '140000', '吕梁', 'Lüliang', '141100', 133, 0, 109, 0, 6, 0, 6, 0, '01:12.3');
INSERT INTO `dxyarea` VALUES ('山西省', 'Shanxi', '140000', '阳泉', 'Yangquan', '140300', 133, 0, 109, 0, 4, 0, 4, 0, '01:12.3');
INSERT INTO `dxyarea` VALUES ('山西省', 'Shanxi', '140000', '临汾', 'Linfen', '141000', 133, 0, 109, 0, 2, 0, 2, 0, '01:12.3');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '昆明', 'Kunming', '530100', 174, 0, 156, 2, 53, 0, 48, 0, '56:03.6');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '昭通', 'Zhaotong', '530600', 174, 0, 156, 2, 25, 0, 20, 0, '56:03.6');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '玉溪', 'Yuxi', '530400', 174, 0, 156, 2, 14, 0, 12, 1, '56:03.6');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '曲靖', 'Qujing', '530300', 174, 0, 156, 2, 13, 0, 12, 0, '56:03.6');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '大理州', 'Dali', '0', 174, 0, 156, 2, 13, 0, 12, 0, '56:03.6');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '红河州', 'Honghe', '0', 174, 0, 156, 2, 9, 0, 8, 0, '56:03.6');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '保山', 'Baoshan', '530500', 174, 0, 156, 2, 9, 0, 8, 0, '56:03.6');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '德宏州', 'Dehong', '0', 174, 0, 156, 2, 5, 0, 4, 0, '56:03.6');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '西双版纳', 'Xishuangbanna', '532800', 174, 0, 156, 2, 15, 0, 14, 1, '56:03.6');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '丽江', 'Lijiang', '530700', 174, 0, 156, 2, 7, 0, 7, 0, '56:03.6');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '普洱', 'Pu\'er', '530800', 174, 0, 156, 2, 4, 0, 4, 0, '56:03.6');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '楚雄州', 'Chuxiong', '0', 174, 0, 156, 2, 4, 0, 4, 0, '56:03.6');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '文山州', 'Wenshan', '0', 174, 0, 156, 2, 2, 0, 2, 0, '56:03.6');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '临沧', 'Lincang', '530900', 174, 0, 156, 2, 1, 0, 1, 0, '56:03.6');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '外地来沪人员', 'People from other cities', '-1', 337, 0, 279, 3, 111, 0, 91, 1, '51:49.7');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '浦东新区', 'Pudong District', '310115', 337, 0, 279, 3, 60, 0, 51, 0, '51:49.7');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '宝山区', 'Baoshan District', '310113', 337, 0, 279, 3, 21, 0, 13, 0, '51:49.7');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '徐汇区', 'Xuhui District', '310104', 337, 0, 279, 3, 18, 0, 15, 0, '51:49.7');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '静安区', 'Jing\'an District', '310106', 337, 0, 279, 3, 16, 0, 13, 0, '51:49.7');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '松江区', 'Songjiang District', '310117', 337, 0, 279, 3, 14, 0, 11, 0, '51:49.7');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '嘉定区', 'Jiading District', '310114', 337, 0, 279, 3, 9, 0, 6, 0, '51:49.7');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '闵行区', 'Minhang District', '310112', 337, 0, 279, 3, 19, 0, 17, 0, '51:49.7');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '普陀区', 'Putuo District', '310107', 337, 0, 279, 3, 11, 0, 9, 0, '51:49.7');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '黄浦区', 'Huangpu District', '310101', 337, 0, 279, 3, 6, 0, 4, 0, '51:49.7');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '杨浦区', 'Yangpu District', '310110', 337, 0, 279, 3, 9, 0, 8, 0, '51:49.7');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '奉贤区', 'Fengxian District', '310120', 337, 0, 279, 3, 9, 0, 8, 0, '51:49.7');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '虹口区', 'Hongkou District', '310109', 337, 0, 279, 3, 7, 0, 6, 0, '51:49.7');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '青浦区', 'Qingpu District', '310118', 337, 0, 279, 3, 6, 0, 5, 0, '51:49.7');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '金山区', 'Jinshan District', '310116', 337, 0, 279, 3, 4, 0, 3, 0, '51:49.7');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '崇明区', 'Chongming District', '310151', 337, 0, 279, 3, 4, 0, 3, 0, '51:49.7');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '长宁区', 'Changning District', '310105', 337, 0, 279, 3, 13, 0, 13, 0, '51:49.7');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '待明确地区', 'Area not defined', '0', 337, 0, 279, 3, 0, 0, 3, 2, '51:49.7');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '万州区', 'Wanzhou District', '500101', 576, 0, 402, 6, 118, 0, 81, 4, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '江北区', 'Jiangbei District', '500105', 576, 0, 402, 6, 28, 0, 17, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '潼南区', 'Tongnan District', '500152', 576, 0, 402, 6, 18, 0, 7, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '綦江区', 'Qijiang District', '500110', 576, 0, 402, 6, 23, 0, 13, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '合川区', 'Hechuan District', '500117', 576, 0, 402, 6, 23, 0, 15, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '长寿区', 'Changshou District', '500115', 576, 0, 402, 6, 22, 0, 14, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '垫江县', 'Dianjiang County', '500231', 576, 0, 402, 6, 20, 0, 12, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '九龙坡区', 'Jiulongpo District', '500107', 576, 0, 402, 6, 21, 0, 13, 1, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '南岸区', 'Nan\'an District', '500108', 576, 0, 402, 6, 15, 0, 8, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '铜梁区', 'Tongliang District', '500151', 576, 0, 402, 6, 10, 0, 4, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '沙坪坝区', 'Shapingba District', '500106', 576, 0, 402, 6, 9, 0, 3, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '奉节县', 'Fengjie County', '500236', 576, 0, 402, 6, 22, 0, 17, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '丰都县', 'Fengdu County', '500230', 576, 0, 402, 6, 10, 0, 5, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '云阳县', 'Yunyang County', '500235', 576, 0, 402, 6, 25, 0, 21, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '渝北区', 'Yubei District', '500112', 576, 0, 402, 6, 17, 0, 13, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '两江新区', 'Liangjiang New Area', '-1', 576, 0, 402, 6, 17, 0, 13, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '大足区', 'Dazu District', '500111', 576, 0, 402, 6, 14, 0, 10, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '忠县', 'Zhong County', '500233', 576, 0, 402, 6, 21, 0, 18, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '渝中区', 'Yuzhong District', '500103', 576, 0, 402, 6, 20, 0, 17, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '石柱县', 'Shizhu Tujia Autonomous County', '500240', 576, 0, 402, 6, 15, 0, 12, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '荣昌区', 'Rongchang District', '500153', 576, 0, 402, 6, 9, 0, 6, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '巴南区', 'Banan District', '500113', 576, 0, 402, 6, 6, 0, 3, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '涪陵区', 'Fuling District', '500102', 576, 0, 402, 6, 5, 0, 2, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '巫溪县', 'Wuxi County', '500238', 576, 0, 402, 6, 14, 0, 12, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '巫山县', 'Wushan County', '500237', 576, 0, 402, 6, 10, 0, 8, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '开州区', 'Kaizhou District', '500154', 576, 0, 402, 6, 21, 0, 19, 1, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '璧山区', 'Bishan District', '500120', 576, 0, 402, 6, 9, 0, 8, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '大渡口区', 'Dadukou District', '500104', 576, 0, 402, 6, 7, 0, 6, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '彭水县', 'Pengshui Miao and Tujia Autonomous County', '500243', 576, 0, 402, 6, 2, 0, 1, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '万盛经开区', 'Wansheng District', '0', 576, 0, 402, 6, 1, 0, 0, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '永川区', 'Yongchuan District', '500118', 576, 0, 402, 6, 5, 0, 5, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '江津区', 'Jiangjin District', '500116', 576, 0, 402, 6, 4, 0, 4, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '梁平区', 'Liangping District', '500155', 576, 0, 402, 6, 4, 0, 4, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '高新区', 'Chongqing High-tech Zone', '0', 576, 0, 402, 6, 4, 0, 4, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '黔江区', 'Qianjiang Tujia and Miao Autonomous County', '500114', 576, 0, 402, 6, 2, 0, 2, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '城口县', 'Chengkou County', '500229', 576, 0, 402, 6, 2, 0, 2, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '武隆区', 'Wulong District', '500156', 576, 0, 402, 6, 1, 0, 1, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '秀山县', 'Xiushan Tujia and Miao Autonomous County', '500241', 576, 0, 402, 6, 1, 0, 1, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '酉阳', NULL, '500242', 576, 0, 402, 6, 1, 0, 1, 0, '49:42.5');
INSERT INTO `dxyarea` VALUES ('黑龙江省', 'Heilongjiang', '230000', '哈尔滨', 'Harbin', '230100', 480, 0, 283, 13, 198, 0, 85, 4, '35:55.7');
INSERT INTO `dxyarea` VALUES ('黑龙江省', 'Heilongjiang', '230000', '双鸭山', 'Shuangyashan', '230500', 480, 0, 283, 13, 52, 0, 32, 3, '35:55.7');
INSERT INTO `dxyarea` VALUES ('黑龙江省', 'Heilongjiang', '230000', '鸡西', 'Jixi', '230300', 480, 0, 283, 13, 46, 0, 29, 0, '35:55.7');
INSERT INTO `dxyarea` VALUES ('黑龙江省', 'Heilongjiang', '230000', '齐齐哈尔', 'Qiqihar', '230200', 480, 0, 283, 13, 43, 0, 33, 1, '35:55.7');
INSERT INTO `dxyarea` VALUES ('黑龙江省', 'Heilongjiang', '230000', '大庆', 'Daqing', '230600', 480, 0, 283, 13, 26, 0, 16, 1, '35:55.7');
INSERT INTO `dxyarea` VALUES ('黑龙江省', 'Heilongjiang', '230000', '绥化', 'Suihua', '231200', 480, 0, 283, 13, 47, 0, 35, 4, '35:55.7');
INSERT INTO `dxyarea` VALUES ('黑龙江省', 'Heilongjiang', '230000', '黑河', 'Heihe', '231100', 480, 0, 283, 13, 14, 0, 9, 0, '35:55.7');
INSERT INTO `dxyarea` VALUES ('黑龙江省', 'Heilongjiang', '230000', '牡丹江', 'Mudanjiang', '231000', 480, 0, 283, 13, 14, 0, 9, 0, '35:55.7');
INSERT INTO `dxyarea` VALUES ('黑龙江省', 'Heilongjiang', '230000', '七台河', 'Qitaihe', '230900', 480, 0, 283, 13, 17, 0, 13, 0, '35:55.7');
INSERT INTO `dxyarea` VALUES ('黑龙江省', 'Heilongjiang', '230000', '鹤岗', 'Hegang', '230400', 480, 0, 283, 13, 5, 0, 4, 0, '35:55.7');
INSERT INTO `dxyarea` VALUES ('黑龙江省', 'Heilongjiang', '230000', '佳木斯', 'Jiamusi', '230800', 480, 0, 283, 13, 15, 0, 15, 0, '35:55.7');
INSERT INTO `dxyarea` VALUES ('黑龙江省', 'Heilongjiang', '230000', '大兴安岭', 'Daxinganling', '232700', 480, 0, 283, 13, 2, 0, 2, 0, '35:55.7');
INSERT INTO `dxyarea` VALUES ('黑龙江省', 'Heilongjiang', '230000', '伊春', 'Yichun', '230700', 480, 0, 283, 13, 1, 0, 1, 0, '35:55.7');
INSERT INTO `dxyarea` VALUES ('安徽省', 'Anhui', '340000', '阜阳', 'Fuyang', '341200', 990, 0, 821, 6, 155, 0, 119, 0, '33:48.7');
INSERT INTO `dxyarea` VALUES ('安徽省', 'Anhui', '340000', '合肥', 'Hefei', '340100', 990, 0, 821, 6, 174, 0, 138, 1, '33:48.7');
INSERT INTO `dxyarea` VALUES ('安徽省', 'Anhui', '340000', '蚌埠', 'Bengbu', '340300', 990, 0, 821, 6, 160, 0, 136, 5, '33:48.7');
INSERT INTO `dxyarea` VALUES ('安徽省', 'Anhui', '340000', '六安', 'Lu\'an', '341500', 990, 0, 821, 6, 69, 0, 53, 0, '33:48.7');
INSERT INTO `dxyarea` VALUES ('安徽省', 'Anhui', '340000', '亳州', 'Bozhou', '341600', 990, 0, 821, 6, 108, 0, 99, 0, '33:48.7');
INSERT INTO `dxyarea` VALUES ('安徽省', 'Anhui', '340000', '宿州', 'Suzhou', '341300', 990, 0, 821, 6, 41, 0, 33, 0, '33:48.7');
INSERT INTO `dxyarea` VALUES ('安徽省', 'Anhui', '340000', '马鞍山', 'Ma\'anshan', '340500', 990, 0, 821, 6, 38, 0, 30, 0, '33:48.7');
INSERT INTO `dxyarea` VALUES ('安徽省', 'Anhui', '340000', '淮南', 'Huainan', '340400', 990, 0, 821, 6, 27, 0, 21, 0, '33:48.7');
INSERT INTO `dxyarea` VALUES ('安徽省', 'Anhui', '340000', '淮北', 'Huaibei', '340600', 990, 0, 821, 6, 27, 0, 22, 0, '33:48.7');
INSERT INTO `dxyarea` VALUES ('安徽省', 'Anhui', '340000', '安庆', 'Anqing', '340800', 990, 0, 821, 6, 83, 0, 79, 0, '33:48.7');
INSERT INTO `dxyarea` VALUES ('安徽省', 'Anhui', '340000', '芜湖', 'Wuhu', '340200', 990, 0, 821, 6, 34, 0, 30, 0, '33:48.7');
INSERT INTO `dxyarea` VALUES ('安徽省', 'Anhui', '340000', '池州', 'Chizhou', '341700', 990, 0, 821, 6, 17, 0, 13, 0, '33:48.7');
INSERT INTO `dxyarea` VALUES ('安徽省', 'Anhui', '340000', '滁州', 'Chuzhou', '341100', 990, 0, 821, 6, 13, 0, 10, 0, '33:48.7');
INSERT INTO `dxyarea` VALUES ('安徽省', 'Anhui', '340000', '黄山', 'Huangshan', '341000', 990, 0, 821, 6, 9, 0, 6, 0, '33:48.7');
INSERT INTO `dxyarea` VALUES ('安徽省', 'Anhui', '340000', '宣城', 'Xuancheng', '341800', 990, 0, 821, 6, 6, 0, 4, 0, '33:48.7');
INSERT INTO `dxyarea` VALUES ('安徽省', 'Anhui', '340000', '铜陵', 'Tongling', '340700', 990, 0, 821, 6, 29, 0, 28, 0, '33:48.7');
INSERT INTO `dxyarea` VALUES ('甘肃省', 'Gansu', '620000', '平凉', 'Pingliang', '620800', 91, 0, 82, 2, 9, 0, 6, 0, '26:43.8');
INSERT INTO `dxyarea` VALUES ('甘肃省', 'Gansu', '620000', '兰州', 'Lanzhou', '620100', 91, 0, 82, 2, 36, 0, 32, 2, '26:43.8');
INSERT INTO `dxyarea` VALUES ('甘肃省', 'Gansu', '620000', '定西', 'Dingxi', '621100', 91, 0, 82, 2, 9, 0, 8, 0, '26:43.8');
INSERT INTO `dxyarea` VALUES ('甘肃省', 'Gansu', '620000', '白银', 'Baiyin', '620400', 91, 0, 82, 2, 4, 0, 3, 0, '26:43.8');
INSERT INTO `dxyarea` VALUES ('甘肃省', 'Gansu', '620000', '庆阳', 'Qingyang', '621000', 91, 0, 82, 2, 3, 0, 2, 0, '26:43.8');
INSERT INTO `dxyarea` VALUES ('甘肃省', 'Gansu', '620000', '天水', 'Tianshui', '620500', 91, 0, 82, 2, 12, 0, 12, 0, '26:43.8');
INSERT INTO `dxyarea` VALUES ('甘肃省', 'Gansu', '620000', '甘南', 'Gannan', '623000', 91, 0, 82, 2, 8, 0, 8, 0, '26:43.8');
INSERT INTO `dxyarea` VALUES ('甘肃省', 'Gansu', '620000', '陇南', 'Longnan', '621200', 91, 0, 82, 2, 4, 0, 4, 0, '26:43.8');
INSERT INTO `dxyarea` VALUES ('甘肃省', 'Gansu', '620000', '临夏', 'Linxia', '622900', 91, 0, 82, 2, 3, 0, 3, 0, '26:43.8');
INSERT INTO `dxyarea` VALUES ('甘肃省', 'Gansu', '620000', '张掖', 'Zhangye', '620700', 91, 0, 82, 2, 2, 0, 2, 0, '26:43.8');
INSERT INTO `dxyarea` VALUES ('甘肃省', 'Gansu', '620000', '金昌', 'Jinchang', '620300', 91, 0, 82, 2, 1, 0, 1, 0, '26:43.8');
INSERT INTO `dxyarea` VALUES ('甘肃省', 'Gansu', '620000', '待明确地区', 'Area not defined', '0', 91, 0, 82, 2, 0, 0, 1, 0, '26:43.8');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '朝阳区', 'Chaoyang District', '110105', 410, 0, 257, 7, 70, 0, 0, 0, '21:26.7');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '海淀区', 'Haidian District', '110108', 410, 0, 257, 7, 62, 0, 0, 0, '21:26.7');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '西城区', 'Xicheng District', '110102', 410, 0, 257, 7, 53, 0, 0, 0, '21:26.7');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '丰台区', 'Fengtai District', '110106', 410, 0, 257, 7, 42, 0, 3, 0, '21:26.7');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '大兴区', 'Daxing District', '110115', 410, 0, 257, 7, 39, 0, 2, 0, '21:26.7');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '昌平区', 'Changping District', '110114', 410, 0, 257, 7, 29, 0, 0, 0, '21:26.7');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '外地来京人员', 'People from other cities', '-1', 410, 0, 257, 7, 25, 0, 2, 0, '21:26.7');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '通州区', 'Tongzhou District', '110112', 410, 0, 257, 7, 19, 0, 1, 0, '21:26.7');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '房山区', 'Fangshan District', '110111', 410, 0, 257, 7, 16, 0, 3, 0, '21:26.7');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '石景山区', 'Shijingshan District', '110107', 410, 0, 257, 7, 14, 0, 1, 0, '21:26.7');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '东城区', 'Dongcheng District', '110101', 410, 0, 257, 7, 13, 0, 1, 0, '21:26.7');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '顺义区', 'Shunyi District', '110113', 410, 0, 257, 7, 10, 0, 0, 0, '21:26.7');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '怀柔区', 'Huairou District', '110116', 410, 0, 257, 7, 7, 0, 0, 0, '21:26.7');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '密云区', 'Miyun District', '110118', 410, 0, 257, 7, 7, 0, 0, 0, '21:26.7');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '门头沟区', 'Mentougou District', '110109', 410, 0, 257, 7, 3, 0, 2, 0, '21:26.7');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '延庆区', 'Yanqing District', '110119', 410, 0, 257, 7, 1, 0, 0, 0, '21:26.7');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '待明确地区', 'Area not defined', '0', 410, 0, 257, 7, 0, 0, 242, 7, '21:26.7');
INSERT INTO `dxyarea` VALUES ('陕西省', 'Shaanxi', '610000', '待明确地区', 'Area not defined', '0', 245, 0, 197, 1, 0, 0, 3, 0, '32:44.5');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '待明确地区', 'Area not defined', '0', 1348, 0, 919, 7, 0, 0, 29, 0, '25:20.3');
INSERT INTO `dxyarea` VALUES ('江西省', 'Jiangxi', '360000', '南昌', 'Nanchang', '360100', 935, 0, 790, 1, 230, 0, 198, 0, '09:24.4');
INSERT INTO `dxyarea` VALUES ('江西省', 'Jiangxi', '360000', '九江', 'Jiujiang', '360400', 935, 0, 790, 1, 118, 0, 91, 0, '09:24.4');
INSERT INTO `dxyarea` VALUES ('江西省', 'Jiangxi', '360000', '上饶', 'Shangrao', '361100', 935, 0, 790, 1, 123, 0, 109, 0, '09:24.4');
INSERT INTO `dxyarea` VALUES ('江西省', 'Jiangxi', '360000', '新余', 'Xinyu', '360500', 935, 0, 790, 1, 130, 0, 118, 0, '09:24.4');
INSERT INTO `dxyarea` VALUES ('江西省', 'Jiangxi', '360000', '赣州', 'Ganzhou', '360700', 935, 0, 790, 1, 76, 0, 63, 1, '09:24.4');
INSERT INTO `dxyarea` VALUES ('江西省', 'Jiangxi', '360000', '抚州', 'Fuzhou', '361000', 935, 0, 790, 1, 72, 0, 61, 0, '09:24.4');
INSERT INTO `dxyarea` VALUES ('江西省', 'Jiangxi', '360000', '宜春', 'Yichun', '360900', 935, 0, 790, 1, 106, 0, 96, 0, '09:24.4');
INSERT INTO `dxyarea` VALUES ('江西省', 'Jiangxi', '360000', '萍乡', 'Pingxiang', '360300', 935, 0, 790, 1, 33, 0, 23, 0, '09:24.4');
INSERT INTO `dxyarea` VALUES ('江西省', 'Jiangxi', '360000', '吉安', 'Ji\'an', '360800', 935, 0, 790, 1, 22, 0, 15, 0, '09:24.4');
INSERT INTO `dxyarea` VALUES ('江西省', 'Jiangxi', '360000', '鹰潭', 'Yingtan', '360600', 935, 0, 790, 1, 18, 0, 12, 0, '09:24.4');
INSERT INTO `dxyarea` VALUES ('江西省', 'Jiangxi', '360000', '景德镇', 'Jingdezhen', '360200', 935, 0, 790, 1, 6, 0, 3, 0, '09:24.4');
INSERT INTO `dxyarea` VALUES ('江西省', 'Jiangxi', '360000', '赣江新区', 'Ganjiang New District', '0', 935, 0, 790, 1, 1, 0, 1, 0, '09:24.4');
INSERT INTO `dxyarea` VALUES ('湖北省', 'Hubei', '420000', '武汉', 'Wuhan', '420100', 65914, 0, 26403, 2682, 48137, 0, 15826, 2132, '35:31.3');
INSERT INTO `dxyarea` VALUES ('湖北省', 'Hubei', '420000', '孝感', 'Xiaogan', '420900', 65914, 0, 26403, 2682, 3517, 0, 1795, 114, '35:31.3');
INSERT INTO `dxyarea` VALUES ('湖北省', 'Hubei', '420000', '黄冈', 'Huanggang', '421100', 65914, 0, 26403, 2682, 2904, 0, 2041, 114, '35:31.3');
INSERT INTO `dxyarea` VALUES ('湖北省', 'Hubei', '420000', '鄂州', 'Ezhou', '420700', 65914, 0, 26403, 2682, 1389, 0, 685, 43, '35:31.3');
INSERT INTO `dxyarea` VALUES ('湖北省', 'Hubei', '420000', '荆州', 'Jingzhou', '421000', 65914, 0, 26403, 2682, 1579, 0, 913, 46, '35:31.3');
INSERT INTO `dxyarea` VALUES ('湖北省', 'Hubei', '420000', '随州', 'Suizhou', '421300', 65914, 0, 26403, 2682, 1307, 0, 740, 38, '35:31.3');
INSERT INTO `dxyarea` VALUES ('湖北省', 'Hubei', '420000', '宜昌', 'Yichang', '420500', 65914, 0, 26403, 2682, 931, 0, 429, 31, '35:31.3');
INSERT INTO `dxyarea` VALUES ('湖北省', 'Hubei', '420000', '襄阳', 'Xiangyang', '420600', 65914, 0, 26403, 2682, 1175, 0, 753, 32, '35:31.3');
INSERT INTO `dxyarea` VALUES ('湖北省', 'Hubei', '420000', '荆门', 'Jingmen', '420800', 65914, 0, 26403, 2682, 924, 0, 534, 37, '35:31.3');
INSERT INTO `dxyarea` VALUES ('湖北省', 'Hubei', '420000', '黄石', 'Huangshi', '420200', 65914, 0, 26403, 2682, 1013, 0, 653, 33, '35:31.3');
INSERT INTO `dxyarea` VALUES ('湖北省', 'Hubei', '420000', '十堰', 'Shiyan', '420300', 65914, 0, 26403, 2682, 671, 0, 389, 6, '35:31.3');
INSERT INTO `dxyarea` VALUES ('湖北省', 'Hubei', '420000', '咸宁', 'Xianning', '421200', 65914, 0, 26403, 2682, 836, 0, 644, 11, '35:31.3');
INSERT INTO `dxyarea` VALUES ('湖北省', 'Hubei', '420000', '仙桃', 'Xiantao', '429004', 65914, 0, 26403, 2682, 575, 0, 388, 19, '35:31.3');
INSERT INTO `dxyarea` VALUES ('湖北省', 'Hubei', '420000', '天门', 'Tianmen', '429006', 65914, 0, 26403, 2682, 496, 0, 332, 13, '35:31.3');
INSERT INTO `dxyarea` VALUES ('湖北省', 'Hubei', '420000', '潜江', 'Qianjiang', '429005', 65914, 0, 26403, 2682, 198, 0, 99, 9, '35:31.3');
INSERT INTO `dxyarea` VALUES ('湖北省', 'Hubei', '420000', '恩施州', 'Enshi Tujia and Miao Autonomous Prefecture', '422800', 65914, 0, 26403, 2682, 251, 0, 172, 4, '35:31.3');
INSERT INTO `dxyarea` VALUES ('湖北省', 'Hubei', '420000', '神农架林区', 'Shennongjia', '429021', 65914, 0, 26403, 2682, 11, 0, 10, 0, '35:31.3');
INSERT INTO `dxyarea` VALUES ('福建省', 'Fujian', '350000', '待明确地区', 'Area not defined', '0', 296, 0, 232, 1, 0, 0, 4, 0, '35:31.3');
INSERT INTO `dxyarea` VALUES ('天津市', 'Tianjin', '120000', '宝坻区', 'Baodi District', '120115', 136, 0, 102, 3, 60, 0, 39, 2, '08:53.7');
INSERT INTO `dxyarea` VALUES ('天津市', 'Tianjin', '120000', '南开区', 'Nankai District', '120104', 136, 0, 102, 3, 6, 0, 2, 0, '08:53.7');
INSERT INTO `dxyarea` VALUES ('天津市', 'Tianjin', '120000', '河东区', 'Hedong District', '120102', 136, 0, 102, 3, 15, 0, 11, 1, '08:53.7');
INSERT INTO `dxyarea` VALUES ('天津市', 'Tianjin', '120000', '北辰区', 'Beichen District', '120113', 136, 0, 102, 3, 6, 0, 3, 0, '08:53.7');
INSERT INTO `dxyarea` VALUES ('天津市', 'Tianjin', '120000', '宁河区', 'Ninghe District', '120117', 136, 0, 102, 3, 4, 0, 1, 0, '08:53.7');
INSERT INTO `dxyarea` VALUES ('天津市', 'Tianjin', '120000', '河北区', 'Hebei District', '120105', 136, 0, 102, 3, 12, 0, 10, 0, '08:53.7');
INSERT INTO `dxyarea` VALUES ('天津市', 'Tianjin', '120000', '和平区', 'Heping District', '120101', 136, 0, 102, 3, 6, 0, 5, 0, '08:53.7');
INSERT INTO `dxyarea` VALUES ('天津市', 'Tianjin', '120000', '外地来津人员', 'People from other cities', '0', 136, 0, 102, 3, 6, 0, 5, 0, '08:53.7');
INSERT INTO `dxyarea` VALUES ('天津市', 'Tianjin', '120000', '津南区', 'Jinnan District', '120112', 136, 0, 102, 3, 2, 0, 1, 0, '08:53.7');
INSERT INTO `dxyarea` VALUES ('天津市', 'Tianjin', '120000', '东丽区', 'Dongli District', '120110', 136, 0, 102, 3, 4, 0, 4, 0, '08:53.7');
INSERT INTO `dxyarea` VALUES ('天津市', 'Tianjin', '120000', '河西区', 'Hexi District', '120103', 136, 0, 102, 3, 4, 0, 4, 0, '08:53.7');
INSERT INTO `dxyarea` VALUES ('天津市', 'Tianjin', '120000', '西青区', 'Xiqing District', '120111', 136, 0, 102, 3, 4, 0, 4, 0, '08:53.7');
INSERT INTO `dxyarea` VALUES ('天津市', 'Tianjin', '120000', '滨海新区', 'Binhai New Area', '120116', 136, 0, 102, 3, 3, 0, 3, 0, '08:53.7');
INSERT INTO `dxyarea` VALUES ('天津市', 'Tianjin', '120000', '武清区', 'Wuqing District', '120114', 136, 0, 102, 3, 2, 0, 2, 0, '08:53.7');
INSERT INTO `dxyarea` VALUES ('天津市', 'Tianjin', '120000', '红桥区', 'Hongqiao District', '120106', 136, 0, 102, 3, 2, 0, 2, 0, '08:53.7');
INSERT INTO `dxyarea` VALUES ('天津市', 'Tianjin', '120000', '待明确地区', 'Area not defined', '0', 136, 0, 102, 3, 0, 0, 6, 0, '08:53.7');
INSERT INTO `dxyarea` VALUES ('辽宁省', 'Liaoning', '210000', '大连', 'Dalian', '210200', 121, 0, 93, 1, 19, 0, 12, 0, '10:54.4');
INSERT INTO `dxyarea` VALUES ('辽宁省', 'Liaoning', '210000', '沈阳', 'Shenyang', '210100', 121, 0, 93, 1, 28, 0, 23, 0, '10:54.4');
INSERT INTO `dxyarea` VALUES ('辽宁省', 'Liaoning', '210000', '葫芦岛', 'Huludao', '211400', 121, 0, 93, 1, 12, 0, 6, 1, '10:54.4');
INSERT INTO `dxyarea` VALUES ('辽宁省', 'Liaoning', '210000', '朝阳', 'Chaoyang', '211300', 121, 0, 93, 1, 6, 0, 3, 0, '10:54.4');
INSERT INTO `dxyarea` VALUES ('辽宁省', 'Liaoning', '210000', '鞍山', 'Anshan', '210300', 121, 0, 93, 1, 4, 0, 1, 0, '10:54.4');
INSERT INTO `dxyarea` VALUES ('辽宁省', 'Liaoning', '210000', '铁岭', 'Tieling', '211200', 121, 0, 93, 1, 7, 0, 5, 0, '10:54.4');
INSERT INTO `dxyarea` VALUES ('辽宁省', 'Liaoning', '210000', '锦州', 'Jinzhou', '210700', 121, 0, 93, 1, 12, 0, 11, 0, '10:54.4');
INSERT INTO `dxyarea` VALUES ('辽宁省', 'Liaoning', '210000', '丹东', 'Dandong', '210600', 121, 0, 93, 1, 7, 0, 6, 0, '10:54.4');
INSERT INTO `dxyarea` VALUES ('辽宁省', 'Liaoning', '210000', '盘锦', 'Panjin', '211100', 121, 0, 93, 1, 11, 0, 11, 0, '10:54.4');
INSERT INTO `dxyarea` VALUES ('辽宁省', 'Liaoning', '210000', '阜新', 'Fuxin', '210900', 121, 0, 93, 1, 8, 0, 8, 0, '10:54.4');
INSERT INTO `dxyarea` VALUES ('辽宁省', 'Liaoning', '210000', '本溪', 'Benxi', '210500', 121, 0, 93, 1, 3, 0, 3, 0, '10:54.4');
INSERT INTO `dxyarea` VALUES ('辽宁省', 'Liaoning', '210000', '辽阳', 'Liaoyang', '211000', 121, 0, 93, 1, 3, 0, 3, 0, '10:54.4');
INSERT INTO `dxyarea` VALUES ('辽宁省', 'Liaoning', '210000', '营口', 'Yingkou', '210800', 121, 0, 93, 1, 1, 0, 1, 0, '10:54.4');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '待明确地区', 'Area not defined', '0', 168, 0, 131, 5, 0, 0, 2, 0, '54:22.3');
INSERT INTO `dxyarea` VALUES ('宁夏回族自治区', 'Ningxia', '640000', '吴忠', 'Wuzhong', '640300', 72, 0, 68, 0, 28, 0, 26, 0, '54:22.3');
INSERT INTO `dxyarea` VALUES ('宁夏回族自治区', 'Ningxia', '640000', '银川', 'Yinchuan', '640100', 72, 0, 68, 0, 33, 0, 32, 0, '54:22.3');
INSERT INTO `dxyarea` VALUES ('宁夏回族自治区', 'Ningxia', '640000', '中卫', 'Zhongwei', '640500', 72, 0, 68, 0, 4, 0, 3, 0, '54:22.3');
INSERT INTO `dxyarea` VALUES ('宁夏回族自治区', 'Ningxia', '640000', '固原', 'Guyuan', '640400', 72, 0, 68, 0, 5, 0, 5, 0, '54:22.3');
INSERT INTO `dxyarea` VALUES ('宁夏回族自治区', 'Ningxia', '640000', '宁东', 'Ningdong County', '0', 72, 0, 68, 0, 1, 0, 1, 0, '54:22.3');
INSERT INTO `dxyarea` VALUES ('宁夏回族自治区', 'Ningxia', '640000', '石嘴山', 'Shizuishan', '640200', 72, 0, 68, 0, 1, 0, 1, 0, '54:22.3');
INSERT INTO `dxyarea` VALUES ('贵州省', 'Guizhou', '520000', '遵义', 'Zunyi', '520300', 146, 0, 112, 2, 32, 0, 19, 0, '39:05.1');
INSERT INTO `dxyarea` VALUES ('贵州省', 'Guizhou', '520000', '贵阳', 'Guiyang', '520100', 146, 0, 112, 2, 36, 0, 27, 1, '39:05.1');
INSERT INTO `dxyarea` VALUES ('贵州省', 'Guizhou', '520000', '毕节', 'Bijie', '520500', 146, 0, 112, 2, 23, 0, 15, 0, '39:05.1');
INSERT INTO `dxyarea` VALUES ('贵州省', 'Guizhou', '520000', '黔南州', 'Qiannan', '522700', 146, 0, 112, 2, 17, 0, 15, 0, '39:05.1');
INSERT INTO `dxyarea` VALUES ('贵州省', 'Guizhou', '520000', '六盘水', 'Liupanshui', '520200', 146, 0, 112, 2, 10, 0, 8, 1, '39:05.1');
INSERT INTO `dxyarea` VALUES ('贵州省', 'Guizhou', '520000', '铜仁', 'Tongren', '520600', 146, 0, 112, 2, 10, 0, 10, 0, '39:05.1');
INSERT INTO `dxyarea` VALUES ('贵州省', 'Guizhou', '520000', '黔东南州', 'Qiandongnan', '522600', 146, 0, 112, 2, 10, 0, 10, 0, '39:05.1');
INSERT INTO `dxyarea` VALUES ('贵州省', 'Guizhou', '520000', '安顺', 'Anshun', '520400', 146, 0, 112, 2, 4, 0, 4, 0, '39:05.1');
INSERT INTO `dxyarea` VALUES ('贵州省', 'Guizhou', '520000', '黔西南州', 'Qianxinan', '522300', 146, 0, 112, 2, 4, 0, 4, 0, '39:05.1');
INSERT INTO `dxyarea` VALUES ('贵州省', 'Guizhou', '520000', '待明确地区', 'Area not defined', '0', 146, 0, 104, 2, 0, 0, 1, 0, '01:15.1');
INSERT INTO `dxyarea` VALUES ('湖北省', 'Hubei', '420000', '监狱系统', NULL, '0', 64287, 0, 16738, 2495, 253, 0, 3, 0, '09:29.1');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '酉阳县', 'Youyang Tujia and Miao Autonomous County', '0', 575, 0, 335, 6, 1, 0, 0, 0, '13:06.6');
INSERT INTO `dxyarea` VALUES ('青海省', 'Qinghai', '630000', '西宁', 'Xining', '630100', 18, 0, 18, 0, 15, 0, 15, 0, '19:02.9');
INSERT INTO `dxyarea` VALUES ('青海省', 'Qinghai', '630000', '海北州', 'Haibei', '632200', 18, 0, 18, 0, 3, 0, 3, 0, '19:02.9');
INSERT INTO `dxyarea` VALUES ('西藏自治区', 'Xizang', '540000', '拉萨', 'Lhasa', '540100', 1, 0, 1, 0, 1, 0, 1, 0, '19:02.9');
INSERT INTO `dxyarea` VALUES ('山东省', 'Shandong', '370000', '待明确地区', 'Area not defined', '0', 750, 0, 301, 4, 0, 0, 6, 0, '15:03.4');
INSERT INTO `dxyarea` VALUES ('江西省', 'Jiangxi', '360000', '待明确地区', 'Area not defined', '0', 934, 0, 555, 1, 0, 0, 11, 0, '09:52.1');
INSERT INTO `dxyarea` VALUES ('湖北省', 'Hubei', '420000', '待明确地区', 'Area not defined', '0', 62662, 0, 11788, 2144, 312, 0, 0, 0, '12:09.2');
INSERT INTO `dxyarea` VALUES ('山东省', 'Shandong', '370000', '任城监狱', NULL, '0', 748, 0, 270, 4, 200, 0, 0, 0, '28:30.3');
INSERT INTO `dxyarea` VALUES ('四川省', 'Sichuan', '510000', '待明确地区', 'Area not defined', '0', 520, 0, 217, 3, 0, 0, 0, 2, '45:32.2');
INSERT INTO `dxyarea` VALUES ('甘肃省', 'Gansu', '620000', '未明确地区', NULL, '0', 91, 0, 65, 2, 0, 0, 2, 0, '47:42.5');
INSERT INTO `dxyarea` VALUES ('江苏省', 'Jiangsu', '320000', '待明确', NULL, '0', 631, 0, 296, 0, 0, 0, 16, 0, '52:55.4');
INSERT INTO `dxyarea` VALUES ('黑龙江省', 'Heilongjiang', '230000', '待明确地区', 'Area not defined', '0', 464, 0, 111, 11, 0, 0, 4, 0, '02:17.3');
INSERT INTO `dxyarea` VALUES ('安徽省', 'Anhui', '340000', '待明确地区', 'Area not defined', '0', 982, 0, 293, 6, 0, 0, 3, 0, '13:14.5');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '待明确地区', 'Area not defined', '0', 162, 0, 39, 0, 0, 0, 2, 0, '38:23.2');
INSERT INTO `dxyarea` VALUES ('广西壮族自治区', 'Guangxi', '450000', '待明确地区', 'Area not defined', '0', 235, 0, 40, 2, 0, 0, 1, 0, '19:42.9');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '待明确地区', 'Area not defined', '0', 525, 0, 128, 3, 0, 0, 12, 0, '12:44.1');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '保亭', 'Baoting Li and Miao Autonomous County', '0', 157, 0, 30, 4, 3, 0, 0, 0, '38:11.7');
INSERT INTO `dxyarea` VALUES ('辽宁省', 'Liaoning', '210000', '待明确地区', 'Area not defined', '0', 116, 0, 19, 0, 0, 0, 1, 0, '40:13.5');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '吐鲁番', NULL, '650400', 55, 0, 3, 0, 1, 0, 1, 0, '08:26.7');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '大理', NULL, '532901', 149, 0, 19, 0, 13, 0, 2, 0, '35:18.6');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '红河', NULL, '532500', 149, 0, 19, 0, 6, 0, 2, 0, '35:18.6');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '德宏', NULL, '533100', 149, 0, 19, 0, 5, 0, 0, 0, '35:18.6');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '楚雄', NULL, '532301', 149, 0, 19, 0, 4, 0, 0, 0, '35:18.6');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '文山', NULL, '532601', 149, 0, 19, 0, 2, 0, 0, 0, '35:18.6');
INSERT INTO `dxyarea` VALUES ('宁夏回族自治区', 'Ningxia', '640000', '宁东管委会', NULL, '0', 45, 0, 15, 0, 1, 0, 0, 0, '06:38.7');
INSERT INTO `dxyarea` VALUES ('宁夏回族自治区', 'Ningxia', '640000', '待明确地区', 'Area not defined', '0', 45, 0, 15, 0, 0, 0, 10, 0, '06:38.7');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '未明确地区', NULL, '0', 1075, 0, 98, 1, 0, 0, 9, 0, '51:14.2');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '未明确地区', NULL, '0', 981, 0, 99, 4, 0, 0, 6, 2, '51:14.2');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '未知地区', NULL, '0', 981, 0, 99, 4, 0, 0, 6, 2, '13:43.8');
INSERT INTO `dxyarea` VALUES ('四川省', 'Sichuan', '510000', '待明确', NULL, '0', 363, 0, 51, 1, 0, 0, 8, 0, '59:32.0');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '未知', NULL, '0', 1075, 0, 98, 1, 0, 0, 9, 0, '52:27.1');
INSERT INTO `dxyarea` VALUES ('广西壮族自治区', 'Guangxi', '450000', '未知', NULL, '0', 183, 0, 17, 0, 0, 0, 3, 0, '18:32.0');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '未知地区', NULL, '0', 281, 0, 30, 1, 3, 0, 5, 0, '59:16.3');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '昌吉', NULL, '652301', 39, 0, 0, 0, 2, 0, 0, 0, '10:06.8');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '阿克苏', NULL, '652901', 39, 0, 0, 0, 1, 0, 0, 0, '10:06.8');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '兵团第五师五家渠市', NULL, '0', 39, 0, 0, 0, 1, 0, 0, 0, '59:11.6');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '未知地区', NULL, '0', 111, 0, 8, 2, 6, 0, 0, 0, '02:27.6');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '塔城', 'Tacheng', '654201', 39, 0, 0, 0, 4, 0, 0, 0, '35:05.3');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '胡杨河', NULL, '0', 39, 0, 0, 0, 1, 0, 0, 0, '35:05.3');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '石河子', NULL, '659001', 39, 0, 0, 0, 1, 0, 0, 0, '35:05.3');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '五家渠', NULL, '659004', 39, 0, 0, 0, 1, 0, 0, 0, '35:05.3');
INSERT INTO `dxyarea` VALUES ('吉林省', 'Jilin', '220000', '四平', NULL, '220300', 65, 0, 4, 1, 10, 0, 0, 1, '36:25.0');
INSERT INTO `dxyarea` VALUES ('天津市', 'Tianjin', '120000', '待明确', NULL, '0', 79, 0, 2, 1, 0, 0, 1, 0, '36:42.1');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '未知地区', NULL, '0', 133, 0, 7, 0, 0, 0, 1, 0, '38:19.0');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '酉阳', NULL, '0', 400, 0, 15, 2, 1, 0, 0, 0, '36:33.2');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '未知地区', NULL, '0', 970, 0, 52, 0, 0, 0, 2, 0, '26:25.9');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '第九师', NULL, '0', 36, 0, 0, 0, 4, 0, 0, 0, '33:03.7');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '第八师', NULL, '0', 36, 0, 0, 0, 1, 0, 0, 0, '32:03.0');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '第六师', NULL, '0', 36, 0, 0, 0, 1, 0, 0, 0, '32:03.0');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '未明确地区', NULL, '0', 274, 0, 31, 1, 0, 0, 27, 1, '37:37.5');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '第七师', NULL, '-1', 36, 0, 0, 0, 1, 0, 0, 0, '11:03.5');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '未明确地区', NULL, '0', 91, 0, 6, 1, 0, 0, 1, 0, '51:04.6');
INSERT INTO `dxyarea` VALUES ('江苏省', 'Jiangsu', '320000', '待明确地区', 'Area not defined', '0', 341, 0, 17, 0, 0, 0, 5, 0, '19:14.2');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '未知地区', NULL, '-1', 219, 0, 12, 1, 0, 0, 6, 0, '23:27.7');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '第九师', NULL, '-1', 29, 0, 0, 0, 4, 0, 0, 0, '32:40.3');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '第八师', NULL, '-1', 29, 0, 0, 0, 1, 0, 0, 0, '32:40.3');
INSERT INTO `dxyarea` VALUES ('吉林省', 'Jilin', '220000', '吉林', NULL, '220000', 42, 0, 1, 0, 5, 0, 0, 0, '22:39.8');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '南阳（含邓州）', NULL, '0', 566, 0, 14, 2, 84, 0, 1, 2, '14:16.5');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '商丘（含永城）', NULL, '0', 566, 0, 14, 2, 50, 0, 0, 0, '14:16.5');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '安阳（含滑县）', NULL, '0', 566, 0, 14, 2, 29, 0, 0, 0, '14:16.5');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '新乡（含长垣）', NULL, '0', 566, 0, 14, 2, 27, 0, 0, 0, '14:16.5');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '邓州', NULL, '411381', 566, 0, 14, 2, 14, 0, 0, 0, '12:05.0');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '永城', NULL, '411481', 566, 0, 14, 2, 8, 0, 0, 0, '12:05.0');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '长垣', NULL, '0', 566, 0, 14, 2, 2, 0, 0, 0, '12:05.0');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '滑县', NULL, '410526', 566, 0, 14, 2, 1, 0, 0, 0, '12:05.0');
INSERT INTO `dxyarea` VALUES ('青海省', 'Qinghai', '630000', '北海州', NULL, '0', 13, 0, 0, 0, 1, 0, 0, 0, '40:09.2');
INSERT INTO `dxyarea` VALUES ('青海省', 'Qinghai', '630000', '待明确地区', 'Area not defined', '0', 11, 0, 0, 0, 2, 0, 0, 0, '18:43.7');
INSERT INTO `dxyarea` VALUES ('西藏自治区', 'Xizang', '540000', '待明确地区', 'Area not defined', '0', 1, 0, 0, 0, 1, 0, 0, 0, '18:43.7');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '乌海', NULL, '150300', 27, 0, 1, 0, 1, 0, 0, 0, '38:56.7');
INSERT INTO `dxyarea` VALUES ('黑龙江省', 'Heilongjiang', '230000', '未明确', NULL, '0', 95, 0, 2, 2, 0, 0, 2, 0, '17:04.8');
INSERT INTO `dxyarea` VALUES ('山东省', 'Shandong', '370000', '未知地区', NULL, '0', 225, 0, 5, 0, 0, 0, 1, 0, '58:39.6');
INSERT INTO `dxyarea` VALUES ('湖北省', 'Hubei', '420000', '未知地区', NULL, '0', 9074, 0, 215, 294, 0, 0, 35, 0, '42:45.0');
INSERT INTO `dxyarea` VALUES ('安徽省', 'Anhui', '340000', '宿松', NULL, '0', 297, 0, 5, 0, 6, 0, 0, 0, '30:09.6');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '长垣县', NULL, '410728', 422, 0, 3, 2, 2, 0, 0, 0, '54:03.6');
INSERT INTO `dxyarea` VALUES ('湖北省', 'Hubei', '420000', '恩施州', 'Enshi Tujia and Miao Autonomous Prefecture', '422801', 7153, 0, 166, 249, 87, 0, 0, 0, '40:24.2');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '安阳市', NULL, '410500', 422, 0, 3, 2, 24, 0, 0, 0, '29:15.4');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '漯河市', NULL, '411100', 422, 0, 3, 2, 14, 0, 0, 0, '29:15.4');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '琼海市', NULL, '469002', 62, 0, 1, 1, 5, 0, 0, 0, '29:15.4');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '陵水县', NULL, '469028', 62, 0, 1, 1, 5, 0, 0, 0, '29:15.4');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '临高县', NULL, '469024', 62, 0, 1, 1, 3, 0, 0, 0, '29:15.4');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '澄迈县', NULL, '469023', 62, 0, 1, 1, 2, 0, 0, 1, '29:15.4');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '东方市', NULL, '469007', 62, 0, 1, 1, 1, 0, 0, 0, '29:15.4');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '琼中县', NULL, '469030', 62, 0, 1, 1, 1, 0, 0, 0, '29:15.4');
INSERT INTO `dxyarea` VALUES ('甘肃省', 'Gansu', '620000', '天水市', NULL, '620500', 35, 0, 0, 0, 3, 0, 0, 0, '29:15.4');
INSERT INTO `dxyarea` VALUES ('甘肃省', 'Gansu', '620000', '白银市', NULL, '620400', 35, 0, 0, 0, 1, 0, 0, 0, '29:15.4');
INSERT INTO `dxyarea` VALUES ('甘肃省', 'Gansu', '620000', '金昌市', NULL, '620300', 35, 0, 0, 0, 1, 0, 0, 0, '29:15.4');
INSERT INTO `dxyarea` VALUES ('甘肃省', 'Gansu', '620000', '平凉市', NULL, '620800', 35, 0, 0, 0, 1, 0, 0, 0, '29:15.4');
INSERT INTO `dxyarea` VALUES ('青海省', 'Qinghai', '630000', '西宁市', NULL, '630100', 9, 0, 0, 0, 9, 0, 0, 0, '29:15.4');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '琼海市', NULL, '0', 62, 0, 1, 1, 5, 0, 0, 0, '44:57.5');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '陵水县', NULL, '0', 62, 0, 1, 1, 5, 0, 0, 0, '44:57.5');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '临高县', NULL, '0', 62, 0, 1, 1, 3, 0, 0, 0, '44:57.5');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '澄迈县', NULL, '0', 62, 0, 1, 1, 2, 0, 0, 1, '44:57.5');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '东方市', NULL, '0', 62, 0, 1, 1, 1, 0, 0, 0, '44:57.5');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '琼中县', NULL, '0', 62, 0, 1, 1, 1, 0, 0, 0, '44:57.5');
INSERT INTO `dxyarea` VALUES ('湖北省', 'Hubei', '420000', '恩施州', 'Enshi Tujia and Miao Autonomous Prefecture', '0', 7153, 0, 166, 249, 87, 0, 0, 0, '09:04.1');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '安阳市', NULL, '0', 422, 0, 3, 2, 24, 0, 0, 0, '09:04.1');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '漯河市', NULL, '0', 422, 0, 3, 2, 14, 0, 0, 0, '09:04.1');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '永城', NULL, '0', 422, 0, 3, 2, 7, 0, 0, 0, '09:04.1');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '长垣县', NULL, '0', 422, 0, 3, 2, 2, 0, 0, 0, '09:04.1');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '滑县', NULL, '0', 422, 0, 3, 2, 1, 0, 0, 0, '09:04.1');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '大理', NULL, '0', 91, 0, 1, 0, 6, 0, 0, 0, '09:04.1');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '红河', NULL, '0', 91, 0, 1, 0, 4, 0, 1, 0, '09:04.1');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '德宏', NULL, '0', 91, 0, 1, 0, 3, 0, 0, 0, '09:04.1');
INSERT INTO `dxyarea` VALUES ('甘肃省', 'Gansu', '620000', '天水市', NULL, '0', 35, 0, 0, 0, 3, 0, 0, 0, '09:04.1');
INSERT INTO `dxyarea` VALUES ('甘肃省', 'Gansu', '620000', '白银市', NULL, '0', 35, 0, 0, 0, 1, 0, 0, 0, '09:04.1');
INSERT INTO `dxyarea` VALUES ('甘肃省', 'Gansu', '620000', '金昌市', NULL, '0', 35, 0, 0, 0, 1, 0, 0, 0, '09:04.1');
INSERT INTO `dxyarea` VALUES ('甘肃省', 'Gansu', '620000', '平凉市', NULL, '0', 35, 0, 0, 0, 1, 0, 0, 0, '09:04.1');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '吐鲁番', NULL, '0', 18, 0, 0, 0, 1, 0, 0, 0, '09:04.1');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '第七师', NULL, '0', 18, 0, 0, 0, 1, 0, 0, 0, '09:04.1');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '阿克苏', NULL, '0', 18, 0, 0, 0, 1, 0, 0, 0, '09:04.1');
INSERT INTO `dxyarea` VALUES ('吉林省', 'Jilin', '220000', '吉林', NULL, '0', 17, 0, 1, 0, 3, 0, 0, 0, '09:04.1');
INSERT INTO `dxyarea` VALUES ('青海省', 'Qinghai', '630000', '西宁市', NULL, '0', 9, 0, 0, 0, 9, 0, 0, 0, '09:04.1');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '未知地区', NULL, NULL, 169, 0, 10, 1, 0, 0, 5, 0, '05:29.3');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '琼海市', NULL, NULL, 60, 0, 1, 1, 5, 0, 0, 0, '21:04.2');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '陵水县', NULL, NULL, 60, 0, 1, 1, 5, 0, 0, 0, '21:04.2');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '临高县', NULL, NULL, 60, 0, 1, 1, 3, 0, 0, 0, '21:04.2');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '澄迈县', NULL, NULL, 60, 0, 1, 1, 2, 0, 0, 1, '21:04.2');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '东方市', NULL, NULL, 60, 0, 1, 1, 1, 0, 0, 0, '21:04.2');
INSERT INTO `dxyarea` VALUES ('海南省', 'Hainan', '460000', '琼中县', NULL, NULL, 60, 0, 1, 1, 1, 0, 0, 0, '21:04.2');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '大理', NULL, NULL, 91, 0, 1, 0, 6, 0, 0, 0, '12:35.2');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '红河', NULL, NULL, 91, 0, 1, 0, 4, 0, 1, 0, '12:35.2');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '德宏', NULL, NULL, 91, 0, 1, 0, 3, 0, 0, 0, '12:35.2');
INSERT INTO `dxyarea` VALUES ('青海省', 'Qinghai', '630000', '西宁市', NULL, NULL, 9, 0, 0, 0, 9, 0, 0, 0, '20:15.6');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '吐鲁番', NULL, NULL, 18, 0, 0, 0, 1, 0, 0, 0, '12:59.2');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '第七师', NULL, NULL, 18, 0, 0, 0, 1, 0, 0, 0, '12:59.2');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '第八师', NULL, NULL, 18, 0, 0, 0, 1, 0, 0, 0, '12:59.2');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '阿克苏', NULL, NULL, 18, 0, 0, 0, 1, 0, 0, 0, '12:59.2');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '第九师', NULL, NULL, 18, 0, 0, 0, 1, 0, 0, 0, '12:59.2');
INSERT INTO `dxyarea` VALUES ('湖北省', 'Hubei', '420000', '恩施州', 'Enshi Tujia and Miao Autonomous Prefecture', NULL, 7153, 0, 166, 249, 87, 0, 0, 0, '04:45.7');
INSERT INTO `dxyarea` VALUES ('宁夏回族自治区', 'Ningxia', '640000', '宁东管委会', NULL, NULL, 26, 0, 0, 0, 1, 0, 0, 0, '09:26.0');
INSERT INTO `dxyarea` VALUES ('吉林省', 'Jilin', '220000', '吉林', NULL, NULL, 17, 0, 1, 0, 3, 0, 0, 0, '39:21.8');
INSERT INTO `dxyarea` VALUES ('安徽省', 'Anhui', '340000', '宿松', NULL, NULL, 297, 0, 3, 0, 6, 0, 0, 0, '24:50.8');
INSERT INTO `dxyarea` VALUES ('江苏省', 'Jiangsu', '320000', '待明确', NULL, NULL, 202, 0, 8, 0, 0, 0, 3, 0, '04:11.5');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '安阳市', NULL, NULL, 422, 0, 3, 2, 24, 0, 0, 0, '52:46.8');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '漯河市', NULL, NULL, 422, 0, 3, 2, 14, 0, 0, 0, '52:46.8');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '永城', NULL, NULL, 422, 0, 3, 2, 7, 0, 0, 0, '52:46.8');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '长垣县', NULL, NULL, 422, 0, 3, 2, 2, 0, 0, 0, '52:46.8');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '滑县', NULL, NULL, 422, 0, 3, 2, 1, 0, 0, 0, '52:46.8');
INSERT INTO `dxyarea` VALUES ('甘肃省', 'Gansu', '620000', '天水市', NULL, NULL, 35, 0, 0, 0, 3, 0, 0, 0, '10:44.8');
INSERT INTO `dxyarea` VALUES ('甘肃省', 'Gansu', '620000', '白银市', NULL, NULL, 35, 0, 0, 0, 1, 0, 0, 0, '10:44.8');
INSERT INTO `dxyarea` VALUES ('甘肃省', 'Gansu', '620000', '金昌市', NULL, NULL, 35, 0, 0, 0, 1, 0, 0, 0, '10:44.8');
INSERT INTO `dxyarea` VALUES ('甘肃省', 'Gansu', '620000', '平凉市', NULL, NULL, 35, 0, 0, 0, 1, 0, 0, 0, '10:44.8');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '胡杨河', NULL, NULL, 17, 0, 0, 0, 1, 0, 0, 0, '39:48.8');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '石河子', NULL, NULL, 17, 0, 0, 0, 1, 0, 0, 0, '39:48.8');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '石柱', NULL, NULL, 206, 0, 1, 0, 7, 0, 0, 0, '11:05.4');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '城口', NULL, NULL, 206, 0, 1, 0, 1, 0, 0, 0, '11:05.4');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '秀山', NULL, NULL, 206, 0, 1, 0, 1, 0, 0, 0, '11:05.4');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '巫山', NULL, NULL, 206, 0, 1, 0, 6, 0, 1, 0, '09:58.6');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '奉节', NULL, NULL, 206, 0, 1, 0, 5, 0, 0, 0, '09:58.6');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '丰都', NULL, NULL, 206, 0, 1, 0, 3, 0, 0, 0, '09:58.6');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '垫江', NULL, NULL, 206, 0, 1, 0, 8, 0, 0, 0, '06:38.5');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '浦东区', NULL, NULL, 135, 0, 9, 1, 25, 0, 0, 0, '54:26.1');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '宝山区', 'Baoshan District', NULL, 135, 0, 9, 1, 2, 0, 0, 0, '53:19.5');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '嘉定区', 'Jiading District', NULL, 135, 0, 9, 1, 2, 0, 0, 0, '53:19.5');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '杨浦', NULL, NULL, 135, 0, 9, 1, 1, 0, 0, 0, '53:19.5');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '金山', NULL, NULL, 135, 0, 9, 1, 1, 0, 0, 0, '53:19.5');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '朝阳', NULL, NULL, 132, 0, 5, 1, 22, 0, 0, 0, '49:59.6');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '大兴', NULL, NULL, 132, 0, 5, 1, 16, 0, 2, 0, '49:59.6');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '西城', NULL, NULL, 132, 0, 5, 1, 13, 0, 0, 0, '49:59.6');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '昌平', NULL, NULL, 132, 0, 5, 1, 12, 0, 0, 0, '49:59.6');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '通州', NULL, NULL, 132, 0, 5, 1, 12, 0, 0, 0, '49:59.6');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '丰台', NULL, NULL, 132, 0, 5, 1, 11, 0, 0, 0, '49:59.6');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '东城', NULL, NULL, 132, 0, 5, 1, 3, 0, 0, 0, '49:59.6');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '石景山', NULL, NULL, 132, 0, 5, 1, 2, 0, 0, 0, '49:59.6');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '顺义', NULL, NULL, 132, 0, 5, 1, 2, 0, 0, 0, '49:59.6');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '门头沟', NULL, NULL, 132, 0, 5, 1, 1, 0, 0, 0, '49:59.6');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '怀柔', NULL, NULL, 132, 0, 5, 1, 1, 0, 0, 0, '49:59.6');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '云阳', NULL, NULL, 206, 0, 1, 0, 15, 0, 0, 0, '48:53.0');
INSERT INTO `dxyarea` VALUES ('重庆市', 'Chongqing', '500000', '巫溪', NULL, NULL, 206, 0, 1, 0, 9, 0, 0, 0, '48:53.0');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '长垣', NULL, NULL, 352, 0, 3, 2, 2, 0, 0, 0, '45:33.1');
INSERT INTO `dxyarea` VALUES ('吉林省', 'Jilin', '220000', '四平', NULL, NULL, 14, 0, 1, 0, 1, 0, 0, 0, '42:13.2');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '浦东新区', 'Pudong District', NULL, 135, 0, 9, 1, 25, 0, 0, 0, '37:47.2');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '静安区', 'Jing\'an District', NULL, 135, 0, 9, 1, 8, 0, 0, 0, '37:47.2');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '长宁区', 'Changning District', NULL, 135, 0, 9, 1, 6, 0, 0, 0, '37:47.2');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '徐汇区', 'Xuhui District', NULL, 135, 0, 9, 1, 5, 0, 0, 0, '37:47.2');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '闵行区', 'Minhang District', NULL, 135, 0, 9, 1, 5, 0, 0, 0, '37:47.2');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '奉贤区', 'Fengxian District', NULL, 135, 0, 9, 1, 5, 0, 0, 0, '37:47.2');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '虹口区', 'Hongkou District', NULL, 135, 0, 9, 1, 4, 0, 0, 0, '37:47.2');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '黄浦区', 'Huangpu District', NULL, 135, 0, 9, 1, 4, 0, 0, 0, '37:47.2');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '松江', NULL, NULL, 135, 0, 9, 1, 3, 0, 0, 0, '37:47.2');
INSERT INTO `dxyarea` VALUES ('上海市', 'Shanghai', '310000', '青浦区', 'Qingpu District', NULL, 135, 0, 9, 1, 2, 0, 0, 0, '37:47.2');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '海淀', NULL, NULL, 132, 0, 5, 1, 26, 0, 0, 0, '36:42.3');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '第八师石河子', NULL, NULL, 17, 0, 0, 0, 1, 0, 0, 0, '37:35.2');
INSERT INTO `dxyarea` VALUES ('四川省', 'Sichuan', '510000', '凉山', 'Liangshan', NULL, 177, 0, 1, 1, 3, 0, 0, 0, '41:57.9');
INSERT INTO `dxyarea` VALUES ('湖北省', 'Hubei', '420000', '未知地区', NULL, NULL, 4586, 0, 90, 162, 0, 0, 32, 0, '13:22.9');
INSERT INTO `dxyarea` VALUES ('山西省', 'Shanxi', '140000', '临汾市', NULL, NULL, 27, 0, 1, 0, 1, 0, 0, 0, '37:45.4');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '外地来穗人员', NULL, NULL, 277, 0, 5, 0, 5, 0, 0, 0, '46:55.0');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '外地来粤人员', NULL, NULL, 277, 0, 5, 0, 5, 0, 0, 0, '44:54.3');
INSERT INTO `dxyarea` VALUES ('山西省', 'Shanxi', '140000', '朔州市', NULL, NULL, 27, 0, 1, 0, 2, 0, 0, 0, '03:34.5');
INSERT INTO `dxyarea` VALUES ('天津市', 'Tianjin', '120000', '外地来津', NULL, NULL, 27, 0, 0, 0, 4, 0, 0, 0, '14:13.1');
INSERT INTO `dxyarea` VALUES ('安徽省', 'Anhui', '340000', '歙县', NULL, NULL, 155, 0, 2, 0, 3, 0, 0, 0, '48:02.6');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '未知地区', NULL, NULL, 206, 0, 1, 2, 0, 0, 1, 1, '33:11.9');
INSERT INTO `dxyarea` VALUES ('新疆维吾尔自治区', 'Xinjiang', '650000', '第八师石河子市', NULL, NULL, 13, 0, 0, 0, 1, 0, 0, 0, '33:11.9');
INSERT INTO `dxyarea` VALUES ('广东省', 'Guangdong', '440000', '河源市', NULL, NULL, 207, 0, 4, 0, 1, 0, 0, 0, '35:31.0');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '呼和浩特（新城区）', NULL, NULL, 15, 0, 0, 0, 2, 0, 0, 0, '43:29.9');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '呼伦贝尔满洲里', NULL, NULL, 15, 0, 0, 0, 1, 0, 0, 0, '43:29.9');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '锡林郭勒盟锡林浩特', NULL, NULL, 15, 0, 0, 0, 1, 0, 0, 0, '43:29.9');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '锡林郭勒盟二连浩特', NULL, NULL, 15, 0, 0, 0, 1, 0, 0, 0, '43:29.9');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '鄂尔多斯东胜区', NULL, NULL, 15, 0, 0, 0, 1, 0, 0, 0, '43:29.9');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '鄂尔多斯鄂托克前旗', NULL, NULL, 15, 0, 0, 0, 1, 0, 0, 0, '43:29.9');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '赤峰市松山区', NULL, NULL, 15, 0, 0, 0, 1, 0, 0, 0, '43:29.9');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '赤峰市林西县', NULL, NULL, 15, 0, 0, 0, 1, 0, 0, 0, '43:29.9');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '呼伦贝尔牙克石', NULL, NULL, 15, 0, 0, 0, 1, 0, 0, 0, '43:29.9');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '兴安盟乌兰浩特', NULL, NULL, 15, 0, 0, 0, 1, 0, 0, 0, '43:29.9');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '包头市昆都仑区', NULL, NULL, 13, 0, 0, 0, 3, 0, 0, 0, '39:21.3');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '通辽市经济开发区', NULL, NULL, 13, 0, 0, 0, 1, 0, 0, 0, '39:21.3');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '包头市东河区', NULL, NULL, 11, 0, 0, 0, 2, 0, 0, 0, '48:23.8');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '满洲里', NULL, NULL, 11, 0, 0, 0, 1, 0, 0, 0, '47:23.3');
INSERT INTO `dxyarea` VALUES ('河北省', 'Hebei', '130000', '邯郸市', NULL, NULL, 18, 0, 0, 1, 2, 0, 0, 0, '36:17.2');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '呼伦贝尔牙克石市', NULL, NULL, 11, 0, 0, 0, 1, 0, 0, 0, '23:10.2');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '鹤壁市', NULL, NULL, 128, 0, 0, 1, 2, 0, 0, 0, '37:45.4');
INSERT INTO `dxyarea` VALUES ('山东省', 'Shandong', '370000', '淄博市', NULL, NULL, 46, 0, 0, 0, 1, 0, 0, 0, '55:39.3');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '固始县', NULL, NULL, 83, 0, 0, 1, 1, 0, 0, 0, '19:59.9');
INSERT INTO `dxyarea` VALUES ('河南省', 'Henan', '410000', '巩义', NULL, NULL, 83, 0, 0, 1, 2, 0, 0, 0, '58:17.4');
INSERT INTO `dxyarea` VALUES ('澳门', 'Macao', '820000', '澳门', 'Macau', NULL, 2, 0, 0, 0, 2, 0, 0, 0, '40:07.9');
INSERT INTO `dxyarea` VALUES ('内蒙古自治区', 'Neimenggu', '150000', '锡林郭勒', NULL, NULL, 7, 0, 0, 0, 2, 0, 0, 0, '04:50.2');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '丽江市', NULL, NULL, 11, 0, 0, 0, 2, 0, 0, 0, '12:37.1');
INSERT INTO `dxyarea` VALUES ('云南省', 'Yunnan', '530000', '西双版纳州', NULL, NULL, 11, 0, 0, 0, 1, 0, 0, 0, '12:37.1');
INSERT INTO `dxyarea` VALUES ('甘肃省', 'Gansu', '620000', '未知', NULL, NULL, 4, 0, 0, 0, 1, 0, 0, 0, '08:57.2');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '武汉来京人员', NULL, NULL, 26, 0, 1, 0, 7, 0, 0, 0, '31:50.3');
INSERT INTO `dxyarea` VALUES ('北京市', 'Beijing', '110000', '不明地区', NULL, NULL, 26, 0, 0, 0, 8, 0, 0, 0, '37:33.5');

-- ----------------------------
-- Table structure for dxyoverall
-- ----------------------------
DROP TABLE IF EXISTS `dxyoverall`;
CREATE TABLE `dxyoverall`  (
  `_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `infectSource` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passWay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dailyPic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dailyPics` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `summary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `countRemark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `currentConfirmedCount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `confirmedCount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `suspectedCount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `curedCount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deadCount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `seriousCount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `suspectedIncr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `currentConfirmedIncr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `confirmedIncr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `curedIncr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deadIncr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `seriousIncr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `virus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `generalRemark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `abroadRemark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `marquee` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quanguoTrendChart` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hbFeiHbTrendChart` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updateTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dxyoverall
-- ----------------------------
INSERT INTO `dxyoverall` VALUES ('5e2aaaf5ccc8f53b97a5ce55', '野生动物，可能中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', NULL, NULL, NULL, '全国确诊887例，疑似1075例，治愈35例，死亡26例', NULL, '887', '1075', '35', '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-24 16:29:41.322');
INSERT INTO `dxyoverall` VALUES ('5e2ab82ff58597d4d01ddaff', '野生动物，可能中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0124/981/3392719124572016783-73.jpg', NULL, NULL, '全国确诊887例，疑似1075例，治愈35例，死亡26例', NULL, '887', '1075', '35', '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-24 17:26:07.369');
INSERT INTO `dxyoverall` VALUES ('5e2ac25ef58597d4d01ddb03', '野生动物，可能中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0124/981/3392719124572016783-73.jpg', NULL, NULL, '全国确诊887例，疑似1076例，治愈35例，死亡26例', NULL, '887', '1076', '35', '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-24 18:09:33.823');
INSERT INTO `dxyoverall` VALUES ('5e2ad14bf58597d4d01ddb0a', '野生动物，可能中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0124/981/3392719124572016783-73.jpg', NULL, '1', '全国确诊887例，疑似1076例，治愈35例，死亡26例', NULL, '887', '1076', '35', '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-24 19:13:14.844');
INSERT INTO `dxyoverall` VALUES ('5e2ada10f58597d4d01ddb15', '野生动物，可能中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0124/981/3392719124572016783-73.jpg', NULL, NULL, '全国确诊894例，疑似1076例，治愈35例，死亡26例', NULL, '894', '1076', '35', '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-24 19:50:40.114');
INSERT INTO `dxyoverall` VALUES ('5e2ae6def58597d4d01ddb1c', '野生动物，可能中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0124/981/3392719124572016783-73.jpg', NULL, NULL, '全国确诊894例，疑似1076例，治愈36例，死亡26例', NULL, '894', '1076', '36', '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-24 20:45:17.874');
INSERT INTO `dxyoverall` VALUES ('5e2af36ef58597d4d01ddb20', '野生动物，可能中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0124/981/3392719124572016783-73.jpg', NULL, NULL, '全国确诊896例，疑似1076例，治愈36例，死亡26例', NULL, '896', '1076', '36', '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-24 21:38:54.152');
INSERT INTO `dxyoverall` VALUES ('5e2af82bf58597d4d01ddb24', '野生动物，可能中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0124/981/3392719124572016783-73.jpg', NULL, NULL, '全国确诊897例，疑似1076例，治愈36例，死亡26例', NULL, '897', '1076', '36', '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-24 21:59:07.508');
INSERT INTO `dxyoverall` VALUES ('5e2b1326f58597d4d01ddb39', '野生动物，可能中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0124/981/3392719124572016783-73.jpg', NULL, NULL, '全国确诊897例，疑似1076例，治愈36例，死亡26例', NULL, '897', '1076', '36', '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-24 23:54:14.308');
INSERT INTO `dxyoverall` VALUES ('5e2b1584f58597d4d01ddb3d', '野生动物，可能中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0124/981/3392719124572016783-73.jpg', NULL, NULL, '全国确诊902例，疑似1076例，治愈36例，死亡26例', NULL, '902', '1076', '36', '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 00:04:20.183');
INSERT INTO `dxyoverall` VALUES ('5e2b2a54f58597d4d01ddb44', '野生动物，可能中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0124/981/3392719124572016783-73.jpg', NULL, NULL, '全国确诊912例，疑似1076例，治愈36例，死亡26例', NULL, '912', '1076', '36', '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 01:33:08.457');
INSERT INTO `dxyoverall` VALUES ('5e2b2c39f58597d4d01ddb4b', '野生动物，可能中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0124/981/3392719124572016783-73.jpg', NULL, NULL, '全国确诊923例，疑似1076例，治愈36例，死亡26例', NULL, '923', '1076', '36', '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 01:41:12.983');
INSERT INTO `dxyoverall` VALUES ('5e2b830ef58597d4d01ddb56', '野生动物，可能中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0124/981/3392719124572016783-73.jpg', NULL, NULL, '全国确诊1118例，疑似1076例，治愈37例，死亡41例', NULL, '1118', '1076', '37', '41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 07:51:41.959');
INSERT INTO `dxyoverall` VALUES ('5e2b89b7f58597d4d01ddb60', '野生动物，可能中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0124/981/3392719124572016783-73.jpg', NULL, NULL, '全国确诊1287例，疑似1965例，治愈38例，死亡41例', NULL, '1287', '1965', '38', '41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 08:20:07.431');
INSERT INTO `dxyoverall` VALUES ('5e2b8a30f58597d4d01ddb62', '野生动物，可能中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0124/981/3392719124572016783-73.jpg', NULL, NULL, '全国确诊1287例，疑似1965例，治愈38例，死亡41例（其中确诊病例含未明确地区169例）', NULL, '1287', '1965', '38', '41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 08:22:08.357');
INSERT INTO `dxyoverall` VALUES ('5e2ba024f58597d4d01ddb85', '野生动物，可能中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0125/592/3392846534776649535-73.jpg', NULL, NULL, '全国确诊1303例，疑似1965例，治愈38例，死亡41例（其中确诊病例含未明确地区169例）', NULL, '1303', '1965', '38', '41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 09:55:48.599');
INSERT INTO `dxyoverall` VALUES ('5e2ba595f58597d4d01ddb8a', '野生动物，可能中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0125/592/3392846534776649535-73.jpg', NULL, NULL, '全国确诊1303例，疑似1965例，治愈38例，死亡41', NULL, '1303', '1965', '38', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 10:19:01.729');
INSERT INTO `dxyoverall` VALUES ('5e2ba7f3f58597d4d01ddb8b', '野生动物，可能中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0125/592/3392846534776649535-73.jpg', NULL, NULL, '全国确诊1303例，疑似1965例，治愈38例，死亡41例', NULL, '1303', '1965', '38', '41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 10:29:06.950');
INSERT INTO `dxyoverall` VALUES ('5e2bc41ff58597d4d01ddbba', '野生动物，可能中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0125/592/3392846534776649535-73.jpg', NULL, NULL, '全国确诊1330例，疑似1965例，治愈38例，死亡41例', NULL, '1330', '1965', '38', '41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 12:29:19.221');
INSERT INTO `dxyoverall` VALUES ('5e2be9c6f58597d4d01ddbd6', '野生动物，可能中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0125/592/3392846534776649535-73.jpg', NULL, NULL, '全国确诊1336例，疑似1965例，治愈38例，死亡41例', NULL, '1336', '1965', '38', '41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 15:09:57.919');
INSERT INTO `dxyoverall` VALUES ('5e2becdaf58597d4d01ddbd8', '野生动物，可能中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0125/592/3392846534776649535-73.jpg', NULL, NULL, '全国确诊1337例，疑似1965例，治愈38例，死亡41例', NULL, '1337', '1965', '38', '41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 15:23:06.049');
INSERT INTO `dxyoverall` VALUES ('5e2bf8f1f58597d4d01ddbe7', '野生动物，可能中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0125/592/3392846534776649535-73.jpg', NULL, NULL, '全国确诊1355例，疑似1983例，治愈38例，死亡41例', NULL, '1355', '1983', '38', '41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 16:14:41.100');
INSERT INTO `dxyoverall` VALUES ('5e2c022ff58597d4d01ddbee', '野生动物，可能中国马蹄蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0125/592/3392846534776649535-73.jpg', NULL, NULL, '全国确诊1355例，疑似1983例，治愈38例，死亡41例', NULL, '1355', '1983', '38', '41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 16:54:07.712');
INSERT INTO `dxyoverall` VALUES ('5e2c0b6cf58597d4d01ddbef', '野生动物，可能中国马蹄蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0125/592/3392846534776649535-73.jpg', NULL, NULL, '全国确诊1355例，疑似1983例\n治愈38例，死亡41例', NULL, '1355', '1983', '38', '41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 17:33:31.991');
INSERT INTO `dxyoverall` VALUES ('5e2c0ef9f58597d4d01ddbf3', '野生动物，可能中国马蹄蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0125/592/3392846534776649535-73.jpg', NULL, NULL, '全国确诊1356例，疑似1983例\n治愈38例，死亡41例', NULL, '1356', '1983', '38', '41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 17:48:41.638');
INSERT INTO `dxyoverall` VALUES ('5e2c14e7f58597d4d01ddbf9', '野生动物，可能中国马蹄蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0125/592/3392846534776649535-73.jpg', NULL, NULL, '全国确诊1356例，疑似1983例\n治愈40例，死亡41例', NULL, '1356', '1983', '40', '41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 18:13:59.067');
INSERT INTO `dxyoverall` VALUES ('5e2c1f17f58597d4d01ddbfd', '野生动物，可能中国马蹄蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0125/592/3392846534776649535-73.jpg', NULL, NULL, '全国确诊1356例，疑似1983例\n死亡41例，治愈40例', NULL, '1356', '1983', '40', '41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 18:57:27.411');
INSERT INTO `dxyoverall` VALUES ('5e2c20fcf58597d4d01ddbff', '野生动物，可能中国马蹄蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0125/592/3392846534776649535-73.jpg', NULL, NULL, '全国确诊1369例，疑似1983例\n死亡41例，治愈40例', NULL, '1369', '1983', '40', '41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 19:05:32.870');
INSERT INTO `dxyoverall` VALUES ('5e2c2540f58597d4d01ddc0b', '野生动物', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0125/592/3392846534776649535-73.jpg', NULL, NULL, '全国确诊1369例，疑似1983例\n死亡41例，治愈40例', NULL, '1369', '1983', '40', '41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 19:23:44.683');
INSERT INTO `dxyoverall` VALUES ('5e2c2725f58597d4d01ddc0c', '野生动物，中国马蹄蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0125/592/3392846534776649535-73.jpg', NULL, NULL, '全国确诊1369例，疑似1983例\n死亡41例，治愈40例', NULL, '1369', '1983', '40', '41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 19:31:49.637');
INSERT INTO `dxyoverall` VALUES ('5e2c2ef5f58597d4d01ddc14', '野生动物，中国马蹄蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0125/592/3392846534776649535-73.jpg', NULL, NULL, '全国确诊1372例，疑似1983例\n死亡41例，治愈40例', NULL, '1372', '1983', '40', '41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 20:05:09.918');
INSERT INTO `dxyoverall` VALUES ('5e2c3191f58597d4d01ddc1b', '野生动物，中国马蹄蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0125/592/3392846534776649535-73.jpg', NULL, NULL, '全国确诊1372例，疑似1983例\n死亡41例，治愈39例', NULL, '1372', '1983', '39', '41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 20:16:16.954');
INSERT INTO `dxyoverall` VALUES ('5e2c3c4ef58597d4d01ddc1e', '野生动物，可能为中国马蹄蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0125/592/3392846534776649535-73.jpg', NULL, NULL, '全国确诊1372例，疑似1983例\n死亡41例，治愈39例', NULL, '1372', '1983', '39', '41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 21:02:06.080');
INSERT INTO `dxyoverall` VALUES ('5e2c4d61f58597d4d01ddc26', '野生动物，可能为中国马蹄蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0125/592/3392846534776649535-73.jpg', NULL, NULL, '全国确诊1377例，疑似1983例\n死亡41例，治愈39例', NULL, '1377', '1983', '39', '41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 22:14:57.487');
INSERT INTO `dxyoverall` VALUES ('5e2c56a1f58597d4d01ddc27', '野生动物，可能为某种菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0125/592/3392846534776649535-73.jpg', NULL, NULL, '全国确诊1377例，疑似1983例\n死亡41例，治愈39例', NULL, '1377', '1983', '39', '41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 22:54:25.563');
INSERT INTO `dxyoverall` VALUES ('5e2c64bbf58597d4d01ddc2d', '野生动物，可能为某种菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0125/592/3392846534776649535-73.jpg', NULL, NULL, '全国确诊1408例，疑似2032例\n死亡42例，治愈39例', NULL, '1408', '2032', '39', '42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-25 23:54:35.140');
INSERT INTO `dxyoverall` VALUES ('5e2c6df4f58597d4d01ddc34', '野生动物，可能为某种菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0125/592/3392846534776649535-73.jpg', NULL, NULL, '全国确诊1409例，疑似2032例\n死亡42例，治愈39例', NULL, '1409', '2032', '39', '42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-26 00:33:55.963');
INSERT INTO `dxyoverall` VALUES ('5e2cdaf0f58597d4d01ddc3f', '野生动物，可能为某种菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0125/592/3392846534776649535-73.jpg', NULL, NULL, '全国确诊1742例，疑似2032例\n死亡54例，治愈49例', NULL, '1742', '2032', '49', '54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-26 08:18:56.733');
INSERT INTO `dxyoverall` VALUES ('5e2ce557f58597d4d01ddc78', '野生动物，可能为某种菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0125/592/3392846534776649535-73.jpg', NULL, NULL, '全国确诊1975例，疑似2684例\n死亡56例，治愈49例', NULL, '1975', '2684', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-26 09:03:19.841');
INSERT INTO `dxyoverall` VALUES ('5e2cece7f58597d4d01ddc84', '野生动物，可能为某种菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊1975例，疑似2684例\n死亡56例，治愈49例', NULL, '1975', '2684', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-26 09:35:35.381');
INSERT INTO `dxyoverall` VALUES ('5e2d02acf58597d4d01ddcb6', '野生动物，可能为某种菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊1992例，疑似2684例\n死亡55例，治愈49例', NULL, '1992', '2684', '49', '55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-26 11:08:27.960');
INSERT INTO `dxyoverall` VALUES ('5e2d05dbf58597d4d01ddcb9', '野生动物，可能为某种菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊1992例，疑似2684例\n死亡56例，治愈49例', NULL, '1992', '2684', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-26 11:22:01.594');
INSERT INTO `dxyoverall` VALUES ('5e2d13d4f58597d4d01ddcc6', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊1992例，疑似2684例\n死亡56例，治愈49例', NULL, '1992', '2684', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-26 12:21:40.449');
INSERT INTO `dxyoverall` VALUES ('5e2d157cf58597d4d01ddcc7', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊1999例，疑似2684例\n死亡56例，治愈49例', NULL, '1999', '2684', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-26 12:28:44.325');
INSERT INTO `dxyoverall` VALUES ('5e2d1a75f58597d4d01ddccb', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2002例，疑似2684例\n死亡56例，治愈49例', NULL, '2002', '2684', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-26 12:49:57.080');
INSERT INTO `dxyoverall` VALUES ('5e2d1ba4f58597d4d01ddcd0', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2005例，疑似2684例\n死亡56例，治愈49例', NULL, '2005', '2684', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-26 12:55:00.097');
INSERT INTO `dxyoverall` VALUES ('5e2d28acf58597d4d01ddcdc', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2018例，疑似2684例\n死亡56例，治愈49例', NULL, '2018', '2684', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-26 13:50:35.848');
INSERT INTO `dxyoverall` VALUES ('5e2d3392f58597d4d01ddce7', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2029例，疑似2684例\n死亡56例，治愈49例', NULL, '2029', '2684', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：存在可能', '疫情是否扩散：是', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-26 14:37:06.102');
INSERT INTO `dxyoverall` VALUES ('5e2d4c6ff58597d4d01ddcf0', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2029例，疑似2684例\n死亡56例，治愈49例', NULL, '2029', '2684', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：暂时不明，病毒存在变异可能', '潜伏期：1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-26 16:23:11.468');
INSERT INTO `dxyoverall` VALUES ('5e2d51a7f58597d4d01ddcf1', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2031例，疑似2684例\n死亡56例，治愈49例', NULL, '2031', '2684', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：暂时不明，病毒存在变异可能', '潜伏期：1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-26 16:45:26.835');
INSERT INTO `dxyoverall` VALUES ('5e2d5299f58597d4d01ddcf4', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2033例，疑似2684例\n死亡56例，治愈49例', NULL, '2033', '2684', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：暂时不明，病毒存在变异可能', '潜伏期：1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-26 16:49:29.687');
INSERT INTO `dxyoverall` VALUES ('5e2d55ebf58597d4d01ddcf8', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2033例，疑似2684例\n死亡56例，治愈49例', NULL, '2033', '2684', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群:暂时不明，病毒存在变异可能', '潜伏期:1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-26 17:03:39.292');
INSERT INTO `dxyoverall` VALUES ('5e2d56a1f58597d4d01ddcf9', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2033例，疑似2684例\n死亡56例，治愈49例', NULL, '2033', '2684', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-26 17:06:41.252');
INSERT INTO `dxyoverall` VALUES ('5e2d62f3f58597d4d01ddcfb', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2036例，疑似2684例\n死亡56例，治愈49例', NULL, '2036', '2684', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-26 17:59:15.220');
INSERT INTO `dxyoverall` VALUES ('5e2d6998f58597d4d01ddd06', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2049例，疑似2684例\n死亡56例，治愈49例', NULL, '2049', '2684', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-26 18:27:36.027');
INSERT INTO `dxyoverall` VALUES ('5e2d793ef58597d4d01ddd0d', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2055例，疑似2692例\n死亡56例，治愈49例', NULL, '2055', '2692', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-26 19:34:22.249');
INSERT INTO `dxyoverall` VALUES ('5e2d7e39f58597d4d01ddd12', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2064例，疑似2692例\n死亡56例，治愈49例', NULL, '2064', '2692', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-26 19:55:36.932');
INSERT INTO `dxyoverall` VALUES ('5e2d7eb2f58597d4d01ddd14', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2065例，疑似2692例\n死亡56例，治愈49例', NULL, '2065', '2692', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-26 19:57:38.451');
INSERT INTO `dxyoverall` VALUES ('5e2d8acaf58597d4d01ddd1b', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2066例，疑似2692例\n死亡56例，治愈49例', NULL, '2066', '2692', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-26 20:49:14.249');
INSERT INTO `dxyoverall` VALUES ('5e2d92dcf58597d4d01ddd1d', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2071例，疑似2692例\n死亡56例，治愈49例', NULL, '2071', '2692', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-26 21:23:40.048');
INSERT INTO `dxyoverall` VALUES ('5e2daa43f58597d4d01ddd27', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2076例，疑似2692例\n死亡56例，治愈49例', NULL, '2076', '2692', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-26 23:03:31.661');
INSERT INTO `dxyoverall` VALUES ('5e2db9e8f58597d4d01ddd2c', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2079例，疑似2692例\n死亡56例，治愈49例', NULL, '2079', '2692', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 00:10:16.249');
INSERT INTO `dxyoverall` VALUES ('5e2dc1f4f58597d4d01ddd2f', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2080例，疑似2692例\n死亡56例，治愈49例', NULL, '2080', '2692', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 00:44:36.276');
INSERT INTO `dxyoverall` VALUES ('5e2dc636f58597d4d01ddd34', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2081例，疑似2692例\n死亡56例，治愈49例', NULL, '2081', '2692', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 01:02:46.319');
INSERT INTO `dxyoverall` VALUES ('5e2e0832f58597d4d01ddd3a', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2081例，疑似2692例\n死亡56例，治愈49例', NULL, '2081', '2692', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', '泰国确诊4例', NULL, NULL, NULL, '2020-01-27 05:44:18.268');
INSERT INTO `dxyoverall` VALUES ('5e2e0ffff58597d4d01ddd3d', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2081例，疑似2692例\n死亡56例，治愈49例', NULL, '2081', '2692', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 06:17:35.391');
INSERT INTO `dxyoverall` VALUES ('5e2e138af58597d4d01ddd3f', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2093例，疑似2692例\n死亡56例，治愈49例', NULL, '2093', '2692', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 06:32:42.217');
INSERT INTO `dxyoverall` VALUES ('5e2e1808f58597d4d01ddd46', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2098例，疑似2692例\n死亡56例，治愈49例', NULL, '2098', '2692', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 06:51:52.463');
INSERT INTO `dxyoverall` VALUES ('5e2e1f5bf58597d4d01ddd55', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2463例，疑似2692例\n死亡56例，治愈49例', NULL, '2463', '2692', '49', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 07:23:07.751');
INSERT INTO `dxyoverall` VALUES ('5e2e2011f58597d4d01ddd56', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2463例，疑似2692例\n死亡80例，治愈51例', NULL, '2463', '2692', '51', '80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 07:26:09.118');
INSERT INTO `dxyoverall` VALUES ('5e2e27a1f58597d4d01ddd58', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2744例，疑似5794例\n死亡80例，治愈51例', NULL, '2744', '5794', '51', '80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 07:58:25.318');
INSERT INTO `dxyoverall` VALUES ('5e2e281af58597d4d01ddd59', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0126/134/3393029508973266637-73.jpg', NULL, NULL, '全国确诊2762例，疑似5794例\n死亡80例，治愈51例', NULL, '2762', '5794', '51', '80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 08:00:26.220');
INSERT INTO `dxyoverall` VALUES ('5e2e456df58597d4d01dddb3', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, '全国确诊2762例，疑似5794例\n死亡80例，治愈51例', NULL, '2762', '5794', '51', '80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 10:05:33.268');
INSERT INTO `dxyoverall` VALUES ('5e2e6599f58597d4d01dddc7', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, '确诊2768例，疑似5794例\n死亡80例，治愈52例', NULL, '2768', '5794', '52', '80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 12:22:49.281');
INSERT INTO `dxyoverall` VALUES ('5e2e6a90f58597d4d01dddd0', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, '确诊2780例，疑似5794例\n死亡81例，治愈52例', NULL, '2780', '5794', '52', '81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 12:44:00.699');
INSERT INTO `dxyoverall` VALUES ('5e2e6b83f58597d4d01dddd1', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, '确诊2783例，疑似5794例\n死亡81例，治愈52例', NULL, '2783', '5794', '52', '81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 12:48:03.044');
INSERT INTO `dxyoverall` VALUES ('5e2e71a8f58597d4d01dddd6', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, '确诊2784例，疑似5794例\n死亡81例，治愈52例', NULL, '2784', '5794', '52', '81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 13:14:16.763');
INSERT INTO `dxyoverall` VALUES ('5e2e7c4cf58597d4d01ddde2', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, '确诊2817例，疑似5794例\n死亡81例，治愈52例', NULL, '2817', '5794', '52', '81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 13:59:40.435');
INSERT INTO `dxyoverall` VALUES ('5e2e86b4f58597d4d01ddde3', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, '确诊2818例，疑似5794例\n死亡81例，治愈52例', NULL, '2818', '5794', '52', '81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 14:44:04.213');
INSERT INTO `dxyoverall` VALUES ('5e2e8c23f58597d4d01ddde8', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, '确诊2819例，疑似5794例\n死亡81例，治愈52例', NULL, '2819', '5794', '52', '81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 15:07:15.356');
INSERT INTO `dxyoverall` VALUES ('5e2e8e07f58597d4d01dddea', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, '确诊2819例，疑似5794例\n死亡81例，治愈53例', NULL, '2819', '5794', '53', '81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 15:15:19.342');
INSERT INTO `dxyoverall` VALUES ('5e2e8ef9f58597d4d01dddef', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, '确诊2823例，疑似5794例\n死亡81例，治愈53例', NULL, '2823', '5794', '53', '81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 15:19:21.199');
INSERT INTO `dxyoverall` VALUES ('5e2e9156f58597d4d01dddf6', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, '确诊2823例，疑似5794例\n死亡81例，治愈55例', NULL, '2823', '5794', '55', '81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 15:29:26.373');
INSERT INTO `dxyoverall` VALUES ('5e2ea291cdf459319a19fae9', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, '确诊2823例，疑似5794例\n死亡81例，治愈57例', NULL, '2823', '5794', '57', '81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 16:42:57.343');
INSERT INTO `dxyoverall` VALUES ('5e2ea476cdf459319a19faed', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, '确诊2823例，疑似5794例\n死亡81例，治愈58例', NULL, '2823', '5794', '58', '81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 16:51:01.899');
INSERT INTO `dxyoverall` VALUES ('5e2eba2fbfe01ae13eb77c19', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, '确诊2826例，疑似5794例\n死亡81例，治愈58例', NULL, '2826', '5794', '58', '81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 18:23:43.019');
INSERT INTO `dxyoverall` VALUES ('5e2ebaa8bfe01ae13eb77c1b', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, '确诊2828例，疑似5794例\n死亡81例，治愈58例', NULL, '2828', '5794', '58', '81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 18:25:44.242');
INSERT INTO `dxyoverall` VALUES ('5e2ebc13bfe01ae13eb77c1f', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, '确诊2835例，疑似5794例\n死亡81例，治愈58例', NULL, '2835', '5794', '58', '81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 18:31:47.832');
INSERT INTO `dxyoverall` VALUES ('5e2ec057bfe01ae13eb77c25', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, '确诊2835例，疑似5794例\n死亡81例，治愈56例', NULL, '2835', '5794', '56', '81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 18:49:59.758');
INSERT INTO `dxyoverall` VALUES ('5e2ec330bfe01ae13eb77c26', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, '确诊2835例，疑似5794例\n死亡81例，治愈55例', NULL, '2835', '5794', '55', '81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 19:02:07.932');
INSERT INTO `dxyoverall` VALUES ('5e2ec608bfe01ae13eb77c29', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, '确诊2840例，疑似5794例\n死亡81例，治愈55例', NULL, '2840', '5794', '55', '81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 19:14:16.351');
INSERT INTO `dxyoverall` VALUES ('5e2eda017e34a75afa8130d6', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, '确诊2844例，疑似5794例\n死亡81例，治愈55例', NULL, '2844', '5794', '55', '81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 20:39:29.529');
INSERT INTO `dxyoverall` VALUES ('5e2edf3126e4d47f04f560a3', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, '确诊2844例，疑似5794例\n死亡81例，治愈56例', NULL, '2844', '5794', '56', '81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 21:01:37.693');
INSERT INTO `dxyoverall` VALUES ('5e2ef6762af361d1bcac91ba', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, '确诊2846例，疑似5794例\n死亡81例，治愈56例', NULL, '2846', '5794', '56', '81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 22:40:54.568');
INSERT INTO `dxyoverall` VALUES ('5e2f02f54d8f9bdc8a1a5c26', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, NULL, NULL, '2846', '5794', '56', '81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 23:34:12.839');
INSERT INTO `dxyoverall` VALUES ('5e2f07ed4d8f9bdc8a1a5c2c', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, NULL, NULL, '2857', '5794', '56', '82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-27 23:55:25.804');
INSERT INTO `dxyoverall` VALUES ('5e2f0d604d8f9bdc8a1a5c31', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, NULL, NULL, '2858', '5794', '56', '82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-28 00:18:40.382');
INSERT INTO `dxyoverall` VALUES ('5e2f640687477336b7b92329', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, NULL, NULL, '2882', '5794', '56', '82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-28 06:28:21.939');
INSERT INTO `dxyoverall` VALUES ('5e2f67cf87477336b7b9232d', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, NULL, NULL, '2889', '5794', '56', '82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-28 06:44:31.577');
INSERT INTO `dxyoverall` VALUES ('5e2f6d0487477336b7b92335', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, NULL, NULL, '2889', '5794', '57', '82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-28 07:06:44.663');
INSERT INTO `dxyoverall` VALUES ('5e2f6fdb87477336b7b92337', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, NULL, NULL, '2889', '5794', '59', '82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-28 07:18:51.559');
INSERT INTO `dxyoverall` VALUES ('5e2f718487477336b7b9233a', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, NULL, NULL, '2889', '5794', '58', '82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 暂时不明，病毒存在变异可能', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-28 07:25:55.955');
INSERT INTO `dxyoverall` VALUES ('5e2f767c87477336b7b9233d', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, NULL, NULL, '2889', '5794', '58', '82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 对所有年龄组都易感', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-28 07:47:07.822');
INSERT INTO `dxyoverall` VALUES ('5e2f7e4d87477336b7b92345', '野生动物，可能为中华菊头蝠', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, NULL, NULL, '2902', '5794', '58', '82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 对所有年龄组都易感', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-28 08:20:29.011');
INSERT INTO `dxyoverall` VALUES ('5e2f834687477336b7b92352', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, NULL, NULL, '2902', '5794', '58', '82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-28 08:41:41.922');
INSERT INTO `dxyoverall` VALUES ('5e2f8bcd87477336b7b92373', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, NULL, NULL, '4428', '5794', '60', '106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-28 09:18:05.599');
INSERT INTO `dxyoverall` VALUES ('5e2f8ee387477336b7b92376', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0127/350/3393218957833514634-73.jpg', NULL, NULL, NULL, NULL, '4474', '5794', '60', '106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 1~14 天均有，平均 10 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-28 09:31:15.161');
INSERT INTO `dxyoverall` VALUES ('5e2fe6229489812ace858326', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0128/202/3393406768163357387-73.jpg', NULL, NULL, NULL, NULL, '4578', '6973', '65', '106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-28 15:43:29.923');
INSERT INTO `dxyoverall` VALUES ('5e2fe7519489812ace858347', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0128/202/3393406768163357387-73.jpg', NULL, NULL, NULL, NULL, '4586', '6973', '65', '106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-28 15:48:33.531');
INSERT INTO `dxyoverall` VALUES ('5e2fe9379489812ace85834c', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0128/202/3393406768163357387-73.jpg', NULL, NULL, NULL, NULL, '4597', '6973', '65', '106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-28 15:56:39.053');
INSERT INTO `dxyoverall` VALUES ('5e2ff2be889913d96da49001', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0128/202/3393406768163357387-73.jpg', NULL, NULL, NULL, NULL, '4597', '6973', '67', '106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-28 16:37:18.128');
INSERT INTO `dxyoverall` VALUES ('5e2ff60f889913d96da49006', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0128/202/3393406768163357387-73.jpg', NULL, NULL, NULL, NULL, '4597', '6973', '68', '106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-28 16:51:26.948');
INSERT INTO `dxyoverall` VALUES ('5e2ff830889913d96da49009', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0128/202/3393406768163357387-73.jpg', NULL, NULL, NULL, NULL, '4599', '6973', '68', '106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-28 17:00:32.520');
INSERT INTO `dxyoverall` VALUES ('5e300eec889913d96da49018', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0128/202/3393406768163357387-73.jpg', NULL, NULL, NULL, NULL, '4618', '6973', '69', '106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-28 18:37:32.419');
INSERT INTO `dxyoverall` VALUES ('5e302036889913d96da49024', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0128/202/3393406768163357387-73.jpg', NULL, NULL, NULL, NULL, '4622', '6973', '71', '106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-28 19:51:18.503');
INSERT INTO `dxyoverall` VALUES ('5e302401889913d96da49028', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0128/202/3393406768163357387-73.jpg', NULL, NULL, NULL, NULL, '4629', '6973', '71', '106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-28 20:07:29.160');
INSERT INTO `dxyoverall` VALUES ('5e303052889913d96da4902e', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0128/202/3393406768163357387-73.jpg', NULL, NULL, NULL, NULL, '4630', '6973', '71', '106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-28 21:00:01.916');
INSERT INTO `dxyoverall` VALUES ('5e3030cb889913d96da49031', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0128/202/3393406768163357387-73.jpg', NULL, NULL, NULL, NULL, '4630', '6973', '73', '106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-28 21:02:03.262');
INSERT INTO `dxyoverall` VALUES ('5e305b0579cdb36d89e2e4f8', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0128/202/3393406768163357387-73.jpg', NULL, NULL, NULL, NULL, '4631', '6973', '73', '106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 00:02:12.987');
INSERT INTO `dxyoverall` VALUES ('5e305d6279cdb36d89e2e4f9', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0128/202/3393406768163357387-73.jpg', NULL, NULL, NULL, NULL, '4633', '6972', '73', '106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 00:12:18.520');
INSERT INTO `dxyoverall` VALUES ('5e3060273f536c3f858a1520', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0128/202/3393406768163357387-73.jpg', NULL, NULL, '数据来自国家卫健委等官方渠道', NULL, '4633', '6972', '73', '106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 00:24:07.856');
INSERT INTO `dxyoverall` VALUES ('5e3062f9348cddcbc9ae44a9', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/776/3393516425120840806-73.jpg', NULL, NULL, NULL, NULL, '4633', '6972', '73', '106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 00:36:09.464');
INSERT INTO `dxyoverall` VALUES ('5e3067a38f141ac95ef683e6', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/836/3393518963446483277-73.jpg', NULL, NULL, NULL, NULL, '4633', '6972', '73', '106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 00:56:03.203');
INSERT INTO `dxyoverall` VALUES ('5e30b4ce42f563465586ca82', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/836/3393518963446483277-73.jpg', NULL, NULL, NULL, NULL, '4677', '6972', '73', '106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 06:25:18.534');
INSERT INTO `dxyoverall` VALUES ('5e30b81c42f563465586ca87', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/836/3393518963446483277-73.jpg', NULL, NULL, NULL, NULL, '5517', '6972', '101', '131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 06:39:24.574');
INSERT INTO `dxyoverall` VALUES ('5e30cd1e42f563465586ca98', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/836/3393518963446483277-73.jpg', NULL, NULL, NULL, NULL, '5531', '6972', '101', '131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 08:09:02.036');
INSERT INTO `dxyoverall` VALUES ('5e30cdd342f563465586ca9b', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/836/3393518963446483277-73.jpg', NULL, NULL, NULL, NULL, '5974', '9239', '103', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 08:12:03.332');
INSERT INTO `dxyoverall` VALUES ('5e30d02f42f563465586caa4', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/836/3393518963446483277-73.jpg', NULL, NULL, NULL, NULL, '5997', '9239', '103', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 08:22:07.188');
INSERT INTO `dxyoverall` VALUES ('5e30d15d42f563465586caa5', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/973/3393577271922703592-73.png', NULL, NULL, NULL, NULL, '5997', '9239', '103', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 08:27:09.591');
INSERT INTO `dxyoverall` VALUES ('5e30ed3b42f563465586caf1', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/973/3393577271922703592-73.png', NULL, NULL, NULL, NULL, '5997', '9239', '104', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 10:26:03.916');
INSERT INTO `dxyoverall` VALUES ('5e30ef1f42f563465586caf2', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/973/3393577271922703592-73.png', NULL, NULL, NULL, NULL, '5998', '9239', '104', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 10:34:07.049');
INSERT INTO `dxyoverall` VALUES ('5e30f26d42f563465586cafe', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/973/3393577271922703592-73.png', NULL, NULL, NULL, NULL, '5999', '9239', '104', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 10:48:13.815');
INSERT INTO `dxyoverall` VALUES ('5e3104d642f563465586cb0b', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/973/3393577271922703592-73.png', NULL, NULL, NULL, NULL, '5999', '9239', '105', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 12:06:46.916');
INSERT INTO `dxyoverall` VALUES ('5e310bea42f563465586cb10', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/166/3393609475587464636-73.png', NULL, NULL, NULL, NULL, '5999', '9239', '105', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 12:36:58.447');
INSERT INTO `dxyoverall` VALUES ('5e310c9f42f563465586cb11', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/166/3393609475587464636-73.png', NULL, NULL, NULL, NULL, '6002', '9239', '105', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 12:39:59.492');
INSERT INTO `dxyoverall` VALUES ('5e310e4642f563465586cb17', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/166/3393609475587464636-73.png', NULL, NULL, NULL, NULL, '6002', '9239', '107', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 12:47:02.222');
INSERT INTO `dxyoverall` VALUES ('5e31102942f563465586cb20', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/166/3393609475587464636-73.png', NULL, NULL, NULL, NULL, '6002', '9239', '108', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 12:55:05.360');
INSERT INTO `dxyoverall` VALUES ('5e31137642f563465586cb23', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/166/3393609475587464636-73.png', NULL, NULL, NULL, NULL, '6003', '9239', '108', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 13:09:10.779');
INSERT INTO `dxyoverall` VALUES ('5e3114a542f563465586cb26', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/166/3393609475587464636-73.png', NULL, NULL, NULL, NULL, '6005', '9239', '108', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 13:14:13.084');
INSERT INTO `dxyoverall` VALUES ('5e3115d342f563465586cb2c', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/166/3393609475587464636-73.png', NULL, NULL, NULL, NULL, '6016', '9239', '108', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 13:19:15.211');
INSERT INTO `dxyoverall` VALUES ('5e311b4242f563465586cb37', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/166/3393609475587464636-73.png', NULL, NULL, NULL, NULL, '6013', '9239', '108', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 13:42:25.933');
INSERT INTO `dxyoverall` VALUES ('5e311d2542f563465586cb3c', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/166/3393609475587464636-73.png', NULL, NULL, NULL, NULL, '6013', '9239', '109', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 13:50:29.362');
INSERT INTO `dxyoverall` VALUES ('5e311d9e42f563465586cb40', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/166/3393609475587464636-73.png', NULL, NULL, NULL, NULL, '6014', '9239', '109', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 13:52:30.189');
INSERT INTO `dxyoverall` VALUES ('5e31243a42f563465586cb45', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/166/3393609475587464636-73.png', NULL, NULL, NULL, NULL, '6014', '9239', '110', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 14:20:42.236');
INSERT INTO `dxyoverall` VALUES ('5e31265942f563465586cb4a', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/166/3393609475587464636-73.png', NULL, NULL, NULL, NULL, '6015', '9239', '110', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 14:29:45.669');
INSERT INTO `dxyoverall` VALUES ('5e312c7e42f563465586cb53', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/166/3393609475587464636-73.png', NULL, NULL, NULL, NULL, '6016', '9239', '110', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 14:55:57.943');
INSERT INTO `dxyoverall` VALUES ('5e3131af42f563465586cb5d', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/166/3393609475587464636-73.png', NULL, NULL, NULL, NULL, '6041', '9239', '110', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 15:18:07.928');
INSERT INTO `dxyoverall` VALUES ('5e31397b42f563465586cb6b', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/166/3393609475587464636-73.png', NULL, NULL, NULL, NULL, '6043', '9239', '110', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 15:51:23.302');
INSERT INTO `dxyoverall` VALUES ('5e313aa942f563465586cb6f', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/166/3393609475587464636-73.png', NULL, NULL, NULL, NULL, '6043', '9239', '114', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 15:56:25.659');
INSERT INTO `dxyoverall` VALUES ('5e31414742f563465586cb76', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/166/3393609475587464636-73.png', NULL, NULL, NULL, NULL, '6074', '9239', '114', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 16:24:38.965');
INSERT INTO `dxyoverall` VALUES ('5e314c2642f563465586cb7c', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/166/3393609475587464636-73.png', NULL, NULL, NULL, NULL, '6078', '9239', '114', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 17:11:02.144');
INSERT INTO `dxyoverall` VALUES ('5e31546f42f563465586cb82', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/166/3393609475587464636-73.png', NULL, NULL, NULL, NULL, '6078', '9239', '115', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 17:46:23.684');
INSERT INTO `dxyoverall` VALUES ('5e31622642f563465586cb8b', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/166/3393609475587464636-73.png', NULL, NULL, NULL, NULL, '6083', '9239', '115', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 18:44:54.302');
INSERT INTO `dxyoverall` VALUES ('5e31688642f563465586cb90', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/166/3393609475587464636-73.png', NULL, NULL, NULL, NULL, '6085', '9239', '115', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 19:12:06.231');
INSERT INTO `dxyoverall` VALUES ('5e3169b442f563465586cb95', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/166/3393609475587464636-73.png', NULL, NULL, NULL, NULL, '6086', '9239', '115', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 19:17:08.545');
INSERT INTO `dxyoverall` VALUES ('5e317b6b42f563465586cb9d', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/166/3393609475587464636-73.png', NULL, NULL, NULL, NULL, '6086', '9239', '118', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 20:32:43.300');
INSERT INTO `dxyoverall` VALUES ('5e31842842f563465586cbb6', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/301/3393675493529700277-73.png', NULL, NULL, NULL, NULL, '6086', '9239', '118', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 21:10:00.491');
INSERT INTO `dxyoverall` VALUES ('5e31907042f563465586cbbd', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/301/3393675493529700277-73.png', NULL, NULL, NULL, NULL, '6086', '9239', '119', '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 22:02:24.203');
INSERT INTO `dxyoverall` VALUES ('5e319e5e42f563465586cbc8', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/301/3393675493529700277-73.png', NULL, NULL, NULL, NULL, '6086', '9239', '119', '133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 23:01:50.824');
INSERT INTO `dxyoverall` VALUES ('5e31a53842f563465586cbd4', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/301/3393675493529700277-73.png', NULL, NULL, NULL, NULL, '6095', '9239', '119', '133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-29 23:31:04.208');
INSERT INTO `dxyoverall` VALUES ('5e31b2ae42f563465586cbd7', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/301/3393675493529700277-73.png', NULL, NULL, NULL, NULL, '6095', '9239', '120', '133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-30 00:28:30.914');
INSERT INTO `dxyoverall` VALUES ('5e32106442f563465586cbeb', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/301/3393675493529700277-73.png', NULL, NULL, NULL, NULL, '6772', '9239', '120', '133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-30 07:08:20.707');
INSERT INTO `dxyoverall` VALUES ('5e3211cf42f563465586cbf0', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/301/3393675493529700277-73.png', NULL, NULL, NULL, NULL, '7206', '9239', '122', '170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-30 07:14:23.341');
INSERT INTO `dxyoverall` VALUES ('5e32195c42f563465586cbf3', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/301/3393675493529700277-73.png', NULL, NULL, NULL, NULL, '7736', '9239', '124', '170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-30 07:46:36.093');
INSERT INTO `dxyoverall` VALUES ('5e3219d542f563465586cbf4', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0129/301/3393675493529700277-73.png', NULL, NULL, NULL, NULL, '7736', '12167', '124', '170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-30 07:48:37.135');
INSERT INTO `dxyoverall` VALUES ('5e322e9c42f563465586cc2e', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0130/177/3393769190388813782-73.jpg', NULL, NULL, NULL, NULL, '7736', '12167', '124', '170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-30 09:17:16.578');
INSERT INTO `dxyoverall` VALUES ('5e32397c42f563465586cc4c', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0130/124/3393775338634369056-73.jpg', NULL, NULL, NULL, NULL, '7736', '12167', '124', '170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-30 10:03:39.950');
INSERT INTO `dxyoverall` VALUES ('5e323aaa42f563465586cc52', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0130/124/3393775338634369056-73.jpg', NULL, NULL, NULL, NULL, '7736', '12167', '126', '170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-30 10:08:42.480');
INSERT INTO `dxyoverall` VALUES ('5e32552242f563465586cc69', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0130/124/3393775338634369056-73.jpg', NULL, NULL, NULL, NULL, '7737', '12167', '128', '170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-30 12:01:38.625');
INSERT INTO `dxyoverall` VALUES ('5e3260b342f563465586cc7f', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0130/124/3393775338634369056-73.jpg', NULL, NULL, NULL, NULL, '7742', '12167', '130', '170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-30 12:50:59.565');
INSERT INTO `dxyoverall` VALUES ('5e3264f342f563465586cc88', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0130/124/3393775338634369056-73.jpg', NULL, NULL, NULL, NULL, '7742', '12167', '131', '170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-30 13:09:07.604');
INSERT INTO `dxyoverall` VALUES ('5e32754142f563465586cc98', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0130/124/3393775338634369056-73.jpg', NULL, NULL, NULL, NULL, '7753', '12139', '131', '170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-30 14:18:40.955');
INSERT INTO `dxyoverall` VALUES ('5e3277da42f563465586cc99', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0130/124/3393775338634369056-73.jpg', NULL, NULL, NULL, NULL, '7753', '12139', '132', '170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-30 14:29:46.582');
INSERT INTO `dxyoverall` VALUES ('5e32873442f563465586ccaa', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0130/124/3393775338634369056-73.jpg', NULL, NULL, NULL, NULL, '7766', '12139', '132', '170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-30 15:35:16.841');
INSERT INTO `dxyoverall` VALUES ('5e32921242f563465586ccae', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0130/124/3393775338634369056-73.jpg', NULL, NULL, NULL, NULL, '7783', '12139', '132', '170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-30 16:21:38.200');
INSERT INTO `dxyoverall` VALUES ('5e3294ac42f563465586ccb5', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0130/124/3393775338634369056-73.jpg', NULL, NULL, NULL, NULL, '7826', '12139', '132', '170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-30 16:32:44.082');
INSERT INTO `dxyoverall` VALUES ('5e32956142f563465586ccb9', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0130/124/3393775338634369056-73.jpg', NULL, NULL, NULL, NULL, '7826', '12139', '133', '170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-30 16:35:45.552');
INSERT INTO `dxyoverall` VALUES ('5e32a93c42f563465586ccc6', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0130/124/3393775338634369056-73.jpg', NULL, NULL, NULL, NULL, '7827', '12139', '133', '170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-30 18:00:28.363');
INSERT INTO `dxyoverall` VALUES ('5e32ae6d42f563465586cccb', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0130/124/3393775338634369056-73.jpg', NULL, NULL, NULL, NULL, '7828', '12139', '133', '170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-30 18:22:37.775');
INSERT INTO `dxyoverall` VALUES ('5e32bd1242f563465586ccd3', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0130/124/3393775338634369056-73.jpg', NULL, NULL, NULL, NULL, '7830', '12139', '133', '170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-30 19:25:06.136');
INSERT INTO `dxyoverall` VALUES ('5e32c6fe42f563465586ccda', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0130/124/3393775338634369056-73.jpg', NULL, NULL, NULL, NULL, '7830', '12139', '135', '170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-30 20:07:26.695');
INSERT INTO `dxyoverall` VALUES ('5e32d43942f563465586ccdc', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0130/124/3393775338634369056-73.jpg', NULL, NULL, NULL, NULL, '7830', '12167', '135', '170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-30 21:03:53.738');
INSERT INTO `dxyoverall` VALUES ('5e32e72542f563465586ccec', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0130/124/3393775338634369056-73.jpg', NULL, NULL, NULL, NULL, '8147', '12167', '135', '170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-30 22:24:37.371');
INSERT INTO `dxyoverall` VALUES ('5e32f09942f563465586ccf3', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0130/124/3393775338634369056-73.jpg', NULL, NULL, NULL, NULL, '8148', '12167', '135', '171', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-30 23:04:57.194');
INSERT INTO `dxyoverall` VALUES ('5e32f18b42f563465586ccf7', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0130/124/3393775338634369056-73.jpg', NULL, NULL, NULL, NULL, '8149', '12167', '135', '171', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-30 23:08:59.195');
INSERT INTO `dxyoverall` VALUES ('5e32feba581c9f5b3f3547ba', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0130/124/3393775338634369056-73.jpg', NULL, NULL, NULL, NULL, '8150', '12167', '135', '171', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 00:05:14.266');
INSERT INTO `dxyoverall` VALUES ('5e330281581c9f5b3f3547c0', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0130/124/3393775338634369056-73.jpg', NULL, NULL, NULL, NULL, '8156', '12167', '135', '171', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 00:21:21.496');
INSERT INTO `dxyoverall` VALUES ('5e330a3d0c6cbdd5bca66067', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0130/124/3393775338634369056-73.jpg', NULL, NULL, NULL, NULL, '8163', '12167', '136', '171', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 00:54:20.975');
INSERT INTO `dxyoverall` VALUES ('5e3366670c6cbdd5bca66080', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0130/124/3393775338634369056-73.jpg', NULL, NULL, NULL, NULL, '9066', '12167', '162', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 07:27:34.948');
INSERT INTO `dxyoverall` VALUES ('5e33708a0c6cbdd5bca66092', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0130/124/3393775338634369056-73.jpg', NULL, NULL, NULL, NULL, '9720', '15238', '171', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 08:10:50.652');
INSERT INTO `dxyoverall` VALUES ('5e3388030c6cbdd5bca660c7', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/463/3393959186856737012-73.jpg', NULL, NULL, NULL, NULL, '9720', '15238', '171', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 09:50:58.926');
INSERT INTO `dxyoverall` VALUES ('5e339c670c6cbdd5bca660e9', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/463/3393959186856737012-73.jpg', NULL, NULL, NULL, NULL, '9685', '15238', '176', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 11:17:59.764');
INSERT INTO `dxyoverall` VALUES ('5e33aaf30c6cbdd5bca660f7', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/463/3393959186856737012-73.jpg', NULL, NULL, NULL, NULL, '9704', '15238', '176', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 12:20:03.528');
INSERT INTO `dxyoverall` VALUES ('5e33ab360c6cbdd5bca660f9', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/463/3393959186856737012-73.jpg', NULL, NULL, NULL, NULL, '9720', '15238', '176', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 12:21:10.110');
INSERT INTO `dxyoverall` VALUES ('5e33b5190c6cbdd5bca66106', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/463/3393959186856737012-73.jpg', NULL, NULL, NULL, NULL, '9724', '15238', '176', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 13:03:21.743');
INSERT INTO `dxyoverall` VALUES ('5e33bd2b0c6cbdd5bca66128', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/463/3393959186856737012-73.jpg', NULL, NULL, NULL, NULL, '9731', '15238', '176', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 13:37:47.208');
INSERT INTO `dxyoverall` VALUES ('5e33d5c50c6cbdd5bca6614b', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/463/3393959186856737012-73.jpg', NULL, NULL, NULL, NULL, '9737', '15238', '176', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 15:22:45.533');
INSERT INTO `dxyoverall` VALUES ('5e33dc370c6cbdd5bca66150', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/463/3393959186856737012-73.jpg', NULL, NULL, NULL, NULL, '9742', '15238', '176', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 15:50:14.907');
INSERT INTO `dxyoverall` VALUES ('5e33de590c6cbdd5bca66151', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/463/3393959186856737012-73.jpg', NULL, NULL, NULL, NULL, '9745', '15238', '177', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 15:59:21.022');
INSERT INTO `dxyoverall` VALUES ('5e33e32b0c6cbdd5bca66157', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/463/3393959186856737012-73.jpg', NULL, NULL, NULL, NULL, '9745', '15238', '178', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 16:19:55.096');
INSERT INTO `dxyoverall` VALUES ('5e33eab10c6cbdd5bca6615f', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/463/3393959186856737012-73.jpg', NULL, NULL, NULL, NULL, '9795', '15238', '180', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 16:52:01.521');
INSERT INTO `dxyoverall` VALUES ('5e33ebc90c6cbdd5bca66163', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/463/3393959186856737012-73.jpg', NULL, NULL, NULL, NULL, '9809', '15238', '180', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 16:56:41.086');
INSERT INTO `dxyoverall` VALUES ('5e33ed270c6cbdd5bca66167', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/463/3393959186856737012-73.jpg', NULL, NULL, NULL, NULL, '9810', '15238', '180', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 17:02:31.443');
INSERT INTO `dxyoverall` VALUES ('5e33f4120c6cbdd5bca6616e', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/463/3393959186856737012-73.jpg', NULL, NULL, NULL, NULL, '9810', '15238', '181', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 17:32:02.175');
INSERT INTO `dxyoverall` VALUES ('5e3408730c6cbdd5bca6617d', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/475/3394029770349575031-73.jpg', NULL, NULL, NULL, NULL, '9810', '15238', '181', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 18:58:59.474');
INSERT INTO `dxyoverall` VALUES ('5e341afc0c6cbdd5bca66188', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/475/3394029770349575031-73.jpg', NULL, NULL, NULL, NULL, '9810', '15238', '182', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 20:18:04.512');
INSERT INTO `dxyoverall` VALUES ('5e341eb70c6cbdd5bca6618b', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/475/3394029770349575031-73.jpg', NULL, NULL, NULL, NULL, '9810', '15238', '185', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 20:33:59.008');
INSERT INTO `dxyoverall` VALUES ('5e3424db0c6cbdd5bca66191', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/475/3394029770349575031-73.jpg', NULL, NULL, NULL, NULL, '9811', '15238', '186', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 21:00:11.737');
INSERT INTO `dxyoverall` VALUES ('5e3425220c6cbdd5bca66192', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/475/3394029770349575031-73.jpg', NULL, NULL, NULL, NULL, '9811', '15238', '185', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 21:01:22.102');
INSERT INTO `dxyoverall` VALUES ('5e3425670c6cbdd5bca66195', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/475/3394029770349575031-73.jpg', NULL, NULL, NULL, NULL, '9811', '15238', '205', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 21:02:30.777');
INSERT INTO `dxyoverall` VALUES ('5e3428760c6cbdd5bca6619a', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/475/3394029770349575031-73.jpg', NULL, NULL, NULL, NULL, '9811', '15238', '210', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 21:15:34.664');
INSERT INTO `dxyoverall` VALUES ('5e342af60c6cbdd5bca6619e', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/475/3394029770349575031-73.jpg', NULL, NULL, NULL, NULL, '9811', '15238', '211', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 21:26:14.123');
INSERT INTO `dxyoverall` VALUES ('5e343cf90f61e083094c0965', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/475/3394029770349575031-73.jpg', NULL, NULL, NULL, NULL, '9811', '15238', '214', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-01-31 22:43:05.199');
INSERT INTO `dxyoverall` VALUES ('5e34b2fe15f305a6b0de0f0f', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/475/3394029770349575031-73.jpg', NULL, NULL, NULL, NULL, '9821', '15238', '214', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 07:06:37.739');
INSERT INTO `dxyoverall` VALUES ('5e34b79415f305a6b0de0f20', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/475/3394029770349575031-73.jpg', NULL, NULL, NULL, NULL, '9854', '15238', '214', '214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 07:26:11.785');
INSERT INTO `dxyoverall` VALUES ('5e34b88b15f305a6b0de0f22', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/475/3394029770349575031-73.jpg', NULL, NULL, NULL, NULL, '9862', '15238', '214', '214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 07:30:19.262');
INSERT INTO `dxyoverall` VALUES ('5e34b94415f305a6b0de0f29', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/475/3394029770349575031-73.jpg', NULL, NULL, NULL, NULL, '11209', '15238', '214', '214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 07:33:24.484');
INSERT INTO `dxyoverall` VALUES ('5e34be9515f305a6b0de0f35', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/475/3394029770349575031-73.jpg', NULL, NULL, NULL, NULL, '11227', '15238', '214', '214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 07:56:04.993');
INSERT INTO `dxyoverall` VALUES ('5e34c00815f305a6b0de0f37', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0131/475/3394029770349575031-73.jpg', NULL, NULL, NULL, NULL, '11821', '17988', '243', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 08:02:16.139');
INSERT INTO `dxyoverall` VALUES ('5e34d97615f305a6b0de0f78', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', NULL, NULL, NULL, NULL, NULL, '11821', '17988', '243', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 09:50:45.872');
INSERT INTO `dxyoverall` VALUES ('5e34db6b15f305a6b0de0f79', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11821', '17988', '243', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 09:59:04.494');
INSERT INTO `dxyoverall` VALUES ('5e34edb515f305a6b0de0f93', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11821', '17988', '245', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 11:17:07.024');
INSERT INTO `dxyoverall` VALUES ('5e35070115f305a6b0de0fb3', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11822', '17988', '245', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 13:04:48.967');
INSERT INTO `dxyoverall` VALUES ('5e350a8215f305a6b0de0fb4', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11825', '17988', '246', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 13:20:01.101');
INSERT INTO `dxyoverall` VALUES ('5e350ef615f305a6b0de0fb8', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11828', '17988', '245', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 13:39:01.725');
INSERT INTO `dxyoverall` VALUES ('5e3513eb15f305a6b0de0fbd', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11844', '17988', '246', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 14:00:11.052');
INSERT INTO `dxyoverall` VALUES ('5e35209e15f305a6b0de0fc6', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11844', '17988', '247', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 14:54:19.383');
INSERT INTO `dxyoverall` VALUES ('5e35289015f305a6b0de0fcc', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11847', '17988', '247', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 15:28:14.997');
INSERT INTO `dxyoverall` VALUES ('5e352bb915f305a6b0de0fcd', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11851', '17988', '247', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 15:41:43.878');
INSERT INTO `dxyoverall` VALUES ('5e352d7515f305a6b0de0fd3', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11851', '17988', '248', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 15:49:04.976');
INSERT INTO `dxyoverall` VALUES ('5e3532db15f305a6b0de0ffa', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11860', '17988', '250', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 16:12:10.896');
INSERT INTO `dxyoverall` VALUES ('5e35378915f305a6b0de1002', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11862', '17988', '250', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 16:32:04.573');
INSERT INTO `dxyoverall` VALUES ('5e353acb15f305a6b0de1005', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11877', '17988', '251', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 16:45:59.676');
INSERT INTO `dxyoverall` VALUES ('5e3540cc15f305a6b0de100b', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11889', '17988', '255', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 17:11:39.283');
INSERT INTO `dxyoverall` VALUES ('5e35527f15f305a6b0de1016', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11889', '17988', '257', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 18:27:06.336');
INSERT INTO `dxyoverall` VALUES ('5e35586215f305a6b0de1073', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11889', '17988', '263', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 18:52:17.971');
INSERT INTO `dxyoverall` VALUES ('5e355ac915f305a6b0de1078', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11889', '17988', '266', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 19:02:33.484');
INSERT INTO `dxyoverall` VALUES ('5e355c7c15f305a6b0de107b', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11889', '17988', '267', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 19:09:46.584');
INSERT INTO `dxyoverall` VALUES ('5e35602a15f305a6b0de1080', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11889', '17988', '268', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 19:25:27.786');
INSERT INTO `dxyoverall` VALUES ('5e3564e915f305a6b0de108c', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11889', '17988', '269', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 19:45:44.584');
INSERT INTO `dxyoverall` VALUES ('5e3565a615f305a6b0de108f', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11889', '17988', '270', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 19:48:53.444');
INSERT INTO `dxyoverall` VALUES ('5e35685115f305a6b0de1095', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11890', '17988', '270', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 20:00:16.261');
INSERT INTO `dxyoverall` VALUES ('5e3574ae54c565889466d5ba', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11890', '17988', '272', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 20:52:59.854');
INSERT INTO `dxyoverall` VALUES ('5e357d6254c565889466d5c5', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11890', '17988', '273', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 21:30:09.626');
INSERT INTO `dxyoverall` VALUES ('5e35835454c565889466d5c9', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11890', '17988', '274', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 21:55:31.274');
INSERT INTO `dxyoverall` VALUES ('5e3589800331f9c9226fc481', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11890', '17988', '275', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 22:21:15.769');
INSERT INTO `dxyoverall` VALUES ('5e3595db0331f9c9226fc486', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11891', '17988', '275', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 23:14:33.780');
INSERT INTO `dxyoverall` VALUES ('5e359b2f0331f9c9226fc489', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11896', '17988', '275', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 23:37:11.371');
INSERT INTO `dxyoverall` VALUES ('5e359bf10331f9c9226fc48d', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11899', '17988', '275', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 23:40:32.252');
INSERT INTO `dxyoverall` VALUES ('5e359d6f0331f9c9226fc494', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '11901', '17988', '275', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群: 人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期: 一般为 3~7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-01 23:46:53.406');
INSERT INTO `dxyoverall` VALUES ('5e360bfd4268cb6f5e35b32f', '尚不明确', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, '总结语：挺住，为中国加油！', '这里是备注的全国总数备注阿未完全掌握，存未完全掌握，存在人传人、医务人员感染、\n一定范围社区传播在人传人、医务人员感\n一定范围社区传播', NULL, '13858', '17988', '322', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：是', '疫情是否扩散：是', '是否有治愈人数：否', '是否已经确定传播途径', NULL, NULL, NULL, NULL, '我是表格下的备注，test！121', '我是国外总备注，来看我鸭！我就不嘻嘻嘻test1', NULL, NULL, NULL, '2020-02-02 07:38:37.344');
INSERT INTO `dxyoverall` VALUES ('5e360dec4268cb6f5e35b332', '尚不明确', '未完全掌握，存在人传人、医务人员感染、一定范围社区传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, '挺住，为中国加油！', NULL, NULL, '13858', '17988', '322', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '病毒是否变异：是', '疫情是否扩散：是', '是否有治愈人数：否', '是否已经确定传播途径', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-02 07:46:52.517');
INSERT INTO `dxyoverall` VALUES ('5e360f5f4268cb6f5e35b336', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, '挺住，为中国加油！', '、', NULL, '13858', '17988', '322', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 07:53:03.657');
INSERT INTO `dxyoverall` VALUES ('5e36114d4268cb6f5e35b337', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '13858', '17988', '322', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 08:01:17.263');
INSERT INTO `dxyoverall` VALUES ('5e3612fe4268cb6f5e35b338', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '14411', '19544', '328', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 08:08:30.625');
INSERT INTO `dxyoverall` VALUES ('5e361bef4268cb6f5e35b34c', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0201/693/3394145745204021706-135.png', NULL, NULL, NULL, NULL, '14411', '19544', '328', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 08:46:39.048');
INSERT INTO `dxyoverall` VALUES ('5e3625ae4268cb6f5e35b368', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14411', '19544', '328', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 09:28:13.948');
INSERT INTO `dxyoverall` VALUES ('5e3638804268cb6f5e35b399', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14411', '19544', '333', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 10:48:30.554');
INSERT INTO `dxyoverall` VALUES ('5e363f314268cb6f5e35b3a9', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14411', '19544', '331', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 11:17:04.782');
INSERT INTO `dxyoverall` VALUES ('5e364ddb4268cb6f5e35b3cc', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14413', '19544', '331', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 12:19:38.923');
INSERT INTO `dxyoverall` VALUES ('5e3652884268cb6f5e35b3d3', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14413', '19544', '334', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 12:39:33.973');
INSERT INTO `dxyoverall` VALUES ('5e365bb74268cb6f5e35b3db', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14416', '19544', '331', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 13:18:15.151');
INSERT INTO `dxyoverall` VALUES ('5e365e4c4268cb6f5e35b3df', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14418', '19544', '331', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 13:29:45.903');
INSERT INTO `dxyoverall` VALUES ('5e3662e3f840dc4618b799dd', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14423', '19544', '331', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 13:49:22.040');
INSERT INTO `dxyoverall` VALUES ('5e367d3c8c90e0d03ff86738', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14428', '19544', '331', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 15:41:47.754');
INSERT INTO `dxyoverall` VALUES ('5e36806d8c90e0d03ff8673c', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14433', '19544', '331', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 15:55:22.598');
INSERT INTO `dxyoverall` VALUES ('5e3681fc8c90e0d03ff8673f', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14433', '19544', '332', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 16:02:04.327');
INSERT INTO `dxyoverall` VALUES ('5e3685e78c90e0d03ff86746', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14446', '19544', '332', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 16:18:43.725');
INSERT INTO `dxyoverall` VALUES ('5e3686ee8c90e0d03ff8674e', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14445', '19544', '336', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 16:23:09.066');
INSERT INTO `dxyoverall` VALUES ('5e3689068c90e0d03ff86752', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14453', '19544', '336', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 16:32:05.841');
INSERT INTO `dxyoverall` VALUES ('5e368c6d8c90e0d03ff86758', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14481', '19544', '336', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 16:46:34.526');
INSERT INTO `dxyoverall` VALUES ('5e3690528c90e0d03ff8675c', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14481', '19544', '337', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 17:03:13.538');
INSERT INTO `dxyoverall` VALUES ('5e3694338c90e0d03ff86760', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14482', '19544', '337', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 17:19:45.997');
INSERT INTO `dxyoverall` VALUES ('5e36978c8c90e0d03ff86764', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14482', '19544', '339', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 17:34:03.757');
INSERT INTO `dxyoverall` VALUES ('5e369aa78c90e0d03ff8676a', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14483', '19544', '339', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 17:47:18.345');
INSERT INTO `dxyoverall` VALUES ('5e369ea98c90e0d03ff8676e', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14483', '19544', '342', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 18:04:24.574');
INSERT INTO `dxyoverall` VALUES ('5e36a3148c90e0d03ff86772', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14483', '19544', '379', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 18:23:15.451');
INSERT INTO `dxyoverall` VALUES ('5e36a4ab8c90e0d03ff8677a', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14483', '19544', '380', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 18:30:02.601');
INSERT INTO `dxyoverall` VALUES ('5e36a52e8c90e0d03ff8677b', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14483', '19544', '381', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, NULL, NULL, NULL, '2020-02-02 18:32:12.770');
INSERT INTO `dxyoverall` VALUES ('5e36a5b68c90e0d03ff8677f', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14483', '19544', '381', '304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[]', NULL, NULL, '2020-02-02 18:34:25.642');
INSERT INTO `dxyoverall` VALUES ('5e36a9578c90e0d03ff86788', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14483', '19544', '381', '304', '0.0', NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[]', NULL, NULL, '2020-02-02 18:49:58.162');
INSERT INTO `dxyoverall` VALUES ('5e36a9db8c90e0d03ff8678b', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14489', '19544', '383', '304', '0.0', NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[]', NULL, NULL, '2020-02-02 18:52:10.245');
INSERT INTO `dxyoverall` VALUES ('5e36aaa18c90e0d03ff8678c', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14489', '19544', '384', '304', '0.0', NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[]', NULL, NULL, '2020-02-02 18:55:27.855');
INSERT INTO `dxyoverall` VALUES ('5e36b0958c90e0d03ff8678f', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14489', '19544', '385', '304', '0.0', NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[]', NULL, NULL, '2020-02-02 19:20:51.771');
INSERT INTO `dxyoverall` VALUES ('5e36b2228c90e0d03ff86793', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14489', '19544', '388', '304', '0.0', NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[]', NULL, NULL, '2020-02-02 19:27:29.461');
INSERT INTO `dxyoverall` VALUES ('5e36b5868c90e0d03ff86799', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14489', '19544', '389', '304', '0.0', NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[]', NULL, NULL, '2020-02-02 19:41:58.021');
INSERT INTO `dxyoverall` VALUES ('5e36b8a18c90e0d03ff8679e', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14489', '19544', '397', '304', '0.0', NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[]', NULL, NULL, '2020-02-02 19:55:12.822');
INSERT INTO `dxyoverall` VALUES ('5e36c08aa22f76070d32679b', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14489', '19544', '406', '304', '0.0', NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[]', NULL, NULL, '2020-02-02 20:28:58.123');
INSERT INTO `dxyoverall` VALUES ('5e36c215a22f76070d3267a0', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14489', '19544', '412', '304', '0.0', NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[]', NULL, NULL, '2020-02-02 20:35:33.034');
INSERT INTO `dxyoverall` VALUES ('5e36c5c0a22f76070d3267a4', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14489', '19544', '418', '304', '0.0', NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[]', NULL, NULL, '2020-02-02 20:51:10.510');
INSERT INTO `dxyoverall` VALUES ('5e36c811a22f76070d3267ab', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14489', '19544', '419', '304', '0.0', NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[]', NULL, NULL, '2020-02-02 21:01:04.237');
INSERT INTO `dxyoverall` VALUES ('5e36c8d7a22f76070d3267ae', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14489', '19544', '420', '304', '0.0', NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[]', NULL, NULL, '2020-02-02 21:04:21.465');
INSERT INTO `dxyoverall` VALUES ('5e36e286865fdc803b53aec7', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14489', '19544', '430', '304', '0.0', NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[{\'id\': 4, \'marqueeLabel\': \'日报\', \'marqueeContent\': \' 七日内治愈人数首次超越死亡人数\', \'marqueeLink\': \'https://mama.dxy.com/japi/platform/200720055?index=20200202\'}]', NULL, NULL, '2020-02-02 22:53:58.118');
INSERT INTO `dxyoverall` VALUES ('5e36e497865fdc803b53aed1', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14490', '19544', '430', '304', '0.0', NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[{\'id\': 5, \'marqueeLabel\': \'日报\', \'marqueeContent\': \' 七日内治愈人数首次超越死亡人数\', \'marqueeLink\': \'https://mama.dxy.com/japi/platform/200720055?index=20200202\'}]', NULL, NULL, '2020-02-02 23:02:47.012');
INSERT INTO `dxyoverall` VALUES ('5e36e5a4865fdc803b53aed4', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14490', '19544', '432', '304', '0.0', NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[{\'id\': 6, \'marqueeLabel\': \'日报\', \'marqueeContent\': \' 七日内治愈人数首次超越死亡人数\', \'marqueeLink\': \'https://mama.dxy.com/japi/platform/200720055?index=20200202\'}]', NULL, NULL, '2020-02-02 23:07:15.550');
INSERT INTO `dxyoverall` VALUES ('5e36ecff865fdc803b53aed9', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14490', '19544', '433', '304', '0.0', NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[{\'id\': 7, \'marqueeLabel\': \'日报\', \'marqueeContent\': \' 七日内治愈人数首次超越死亡人数\', \'marqueeLink\': \'https://mama.dxy.com/japi/platform/200720055?index=20200202\'}]', NULL, NULL, '2020-02-02 23:38:21.397');
INSERT INTO `dxyoverall` VALUES ('5e36ef16865fdc803b53aeda', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14490', '19544', '434', '304', '0.0', NULL, NULL, NULL, NULL, NULL, NULL, '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[{\'id\': 8, \'marqueeLabel\': \'日报\', \'marqueeContent\': \' 七日内治愈人数首次超越死亡人数\', \'marqueeLink\': \'https://mama.dxy.com/japi/platform/200720055?index=20200202\'}]', NULL, NULL, '2020-02-02 23:47:32.964');
INSERT INTO `dxyoverall` VALUES ('5e36f242865fdc803b53aedd', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0202/725/3394327332126027029-135.png', NULL, NULL, NULL, NULL, '14490', '19544', '434', '304', '0.0', '0.0', NULL, '0.0', '0.0', '0.0', '0.0', '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[{\'id\': 8, \'marqueeLabel\': \'日报\', \'marqueeContent\': \' 七日内治愈人数首次超越死亡人数\', \'marqueeLink\': \'https://mama.dxy.com/japi/platform/200720055?index=20200202\'}]', NULL, NULL, '2020-02-03 00:01:02.067');
INSERT INTO `dxyoverall` VALUES ('5e3777434dc4b8f453ed96f4', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0203/561/3394511511061134801-135.png', NULL, NULL, NULL, NULL, '17238', '21558', '475', '361', '2296.0', '2014.0', NULL, '2748.0', '41.0', '57.0', '2296.0', '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[{\'id\': 43, \'marqueeLabel\': \'日报\', \'marqueeContent\': \' 七日内治愈人数首次超越死亡人数\', \'marqueeLink\': \'https://mama.dxy.com/japi/platform/200720055?index=20200202\'}]', NULL, NULL, '2020-02-03 09:28:34.053');
INSERT INTO `dxyoverall` VALUES ('5e3791614dc4b8f453ed9751', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0203/561/3394511511061134801-135.png', NULL, NULL, NULL, NULL, '17238', '21558', '477', '361', '2296.0', '2014.0', NULL, '2748.0', '43.0', '57.0', '2296.0', '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[{\'id\': 44, \'marqueeLabel\': \'日报\', \'marqueeContent\': \' 七日内治愈人数首次超越死亡人数\', \'marqueeLink\': \'https://mama.dxy.com/japi/platform/200720055?index=20200202\'}]', NULL, NULL, '2020-02-03 11:20:00.588');
INSERT INTO `dxyoverall` VALUES ('5e379a204dc4b8f453ed9754', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0203/561/3394511511061134801-135.png', NULL, NULL, NULL, NULL, '17238', '21558', '478', '361', '2296.0', '2014.0', NULL, '2748.0', '44.0', '57.0', '2296.0', '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[{\'id\': 45, \'marqueeLabel\': \'日报\', \'marqueeContent\': \' 七日内治愈人数首次超越死亡人数\', \'marqueeLink\': \'https://mama.dxy.com/japi/platform/200720055?index=20200202\'}]', NULL, NULL, '2020-02-03 11:57:12.574');
INSERT INTO `dxyoverall` VALUES ('5e37a00d4dc4b8f453ed9759', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0203/561/3394511511061134801-135.png', NULL, NULL, NULL, NULL, '17238', '21558', '479', '361', '2296.0', '2014.0', NULL, '2748.0', '45.0', '57.0', '2296.0', '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[{\'id\': 46, \'marqueeLabel\': \'日报\', \'marqueeContent\': \' 七日内治愈人数首次超越死亡人数\', \'marqueeLink\': \'https://mama.dxy.com/japi/platform/200720055?index=20200202\'}]', NULL, NULL, '2020-02-03 12:22:36.311');
INSERT INTO `dxyoverall` VALUES ('5e37ab774dc4b8f453ed9760', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0203/561/3394511511061134801-135.png', NULL, NULL, NULL, NULL, '17240', '21558', '479', '361', '2296.0', '2014.0', NULL, '2750.0', '45.0', '57.0', '2296.0', '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[{\'id\': 47, \'marqueeLabel\': \'日报\', \'marqueeContent\': \' 七日内治愈人数首次超越死亡人数\', \'marqueeLink\': \'https://mama.dxy.com/japi/platform/200720055?index=20200202\'}]', NULL, NULL, '2020-02-03 13:11:18.272');
INSERT INTO `dxyoverall` VALUES ('5e37abfc4dc4b8f453ed9764', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0203/561/3394511511061134801-135.png', NULL, NULL, NULL, NULL, '17240', '21558', '479', '361', '2296.0', '2014.0', NULL, '2750.0', '45.0', '57.0', '186.0', '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[{\'id\': 48, \'marqueeLabel\': \'日报\', \'marqueeContent\': \' 七日内治愈人数首次超越死亡人数\', \'marqueeLink\': \'https://mama.dxy.com/japi/platform/200720055?index=20200202\'}]', NULL, NULL, '2020-02-03 13:13:29.915');
INSERT INTO `dxyoverall` VALUES ('5e37ac3d4dc4b8f453ed9765', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0203/561/3394511511061134801-135.png', NULL, NULL, NULL, NULL, '17240', '21558', '479', '361', '2296.0', '2014.0', NULL, '2750.0', '45.0', '57.0', '2296.0', '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[{\'id\': 48, \'marqueeLabel\': \'日报\', \'marqueeContent\': \' 七日内治愈人数首次超越死亡人数\', \'marqueeLink\': \'https://mama.dxy.com/japi/platform/200720055?index=20200202\'}]', NULL, NULL, '2020-02-03 13:14:37.391');
INSERT INTO `dxyoverall` VALUES ('5e37ac7f4dc4b8f453ed9766', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0203/561/3394511511061134801-135.png', NULL, NULL, NULL, NULL, '17240', '21558', '479', '361', '2296.0', '2014.0', NULL, '2750.0', '45.0', '57.0', '186.0', '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[{\'id\': 50, \'marqueeLabel\': \'日报\', \'marqueeContent\': \' 七日内治愈人数首次超越死亡人数\', \'marqueeLink\': \'https://mama.dxy.com/japi/platform/200720055?index=20200202\'}]', NULL, NULL, '2020-02-03 13:15:42.459');
INSERT INTO `dxyoverall` VALUES ('5e37ad464dc4b8f453ed9767', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0203/561/3394511511061134801-135.png', NULL, NULL, NULL, NULL, '17238', '21558', '479', '361', '2296.0', '2014.0', NULL, '2748.0', '45.0', '57.0', '186.0', '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[{\'id\': 51, \'marqueeLabel\': \'日报\', \'marqueeContent\': \' 七日内治愈人数首次超越死亡人数\', \'marqueeLink\': \'https://mama.dxy.com/japi/platform/200720055?index=20200202\'}]', NULL, NULL, '2020-02-03 13:19:00.429');
INSERT INTO `dxyoverall` VALUES ('5e37b7e44dc4b8f453ed976f', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0203/561/3394511511061134801-135.png', NULL, NULL, NULL, NULL, '17238', '21558', '479', '361', '2296.0', '2014.0', NULL, '2748.0', '45.0', '57.0', '186.0', '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[{\'id\': 53, \'marqueeLabel\': \'日报\', \'marqueeContent\': \' 七日内治愈人数首次超越死亡人数\', \'marqueeLink\': \'https://mama.dxy.com/japi/platform/200720055?index=20200202\'}]', NULL, NULL, '2020-02-03 14:04:12.961');
INSERT INTO `dxyoverall` VALUES ('5e37b86b4dc4b8f453ed9770', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0203/561/3394511511061134801-135.png', NULL, NULL, NULL, NULL, '17238', '21558', '479', '361', '2296.0', '5173.0', NULL, '2827.0', '151.0', '57.0', '186.0', '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[{\'id\': 53, \'marqueeLabel\': \'日报\', \'marqueeContent\': \' 七日内治愈人数首次超越死亡人数\', \'marqueeLink\': \'https://mama.dxy.com/japi/platform/200720055?index=20200202\'}]', NULL, NULL, '2020-02-03 14:06:31.921');
INSERT INTO `dxyoverall` VALUES ('5e37bdea4dc4b8f453ed9777', '野生动物，可能为中华菊头蝠', '经呼吸道飞沫传播，亦可通过接触传播，存在粪-口传播可能性', 'https://img1.dxycdn.com/2020/0203/561/3394511511061134801-135.png', NULL, NULL, NULL, NULL, '17239', '21558', '479', '361', '2296.0', '5173.0', NULL, '2828.0', '151.0', '57.0', '186.0', '新型冠状病毒 2019-nCoV', '易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病', '潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内存在传染性', NULL, NULL, NULL, NULL, NULL, NULL, '疑似病例数来自国家卫健委数据，目前为全国数据，未分省市自治区等', NULL, '[{\'id\': 54, \'marqueeLabel\': \'日报\', \'marqueeContent\': \' 七日内治愈人数首次超越死亡人数\', \'marqueeLink\': \'https://mama.dxy.com/japi/platform/200720055?index=20200202\'}]', NULL, NULL, '2020-02-03 14:30:01.619');

-- ----------------------------
-- Table structure for mask_application
-- ----------------------------
DROP TABLE IF EXISTS `mask_application`;
CREATE TABLE `mask_application`  (
  `aid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '口罩预约单号',
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预约者姓名',
  `province` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在省',
  `city` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在城市',
  `area` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在地区',
  `street` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '隶属街道',
  `store_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附近药店id',
  `certificate` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '证件类型',
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '证件号码',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `nums` int(6) NULL DEFAULT NULL COMMENT '预约口罩数量',
  `result` int(1) NULL DEFAULT NULL COMMENT '申请结果',
  `date` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mask_application
-- ----------------------------
INSERT INTO `mask_application` VALUES ('0dbc53bb-c162-41dc-b113-4ef68c94f1b3', '001', '滕梓荆', '110000_2_0', '110100_14_0', '110101', '你工作的第一个城市', NULL, '0', '123633466672836746', '836746', 2, NULL, '2020-02-29 19:32:47');
INSERT INTO `mask_application` VALUES ('1a5aaa86-6771-4d12-b018-c0ec113b2d4b', '001', '叶轻眉', '110000_2_0', '110100_14_0', '110101', '你工作的第一个城市', NULL, '1', '123633466672836746', '836746', 2, NULL, '2020-02-29 19:31:27');
INSERT INTO `mask_application` VALUES ('1b827690-8c7b-4829-b694-0fccd240e46a', '001', '庆余年', '110000_2_0', '110100_14_0', '你工作的第一个城市', NULL, NULL, '0', '123633466672836746', '12635465367', 1, NULL, '2020-02-29 15:04:31');
INSERT INTO `mask_application` VALUES ('53e9b5c3-43a3-4484-95d4-fd9e3ae50bf8', '001', '海棠朵朵', '110000_2_0', '110100_14_0', '你工作的第一个城市', NULL, NULL, '0', '142733199907190324', '15180457781', 2, NULL, '2020-02-29 17:12:08');
INSERT INTO `mask_application` VALUES ('65409687-7649-4e11-91f2-21f6f6c22a75', '001', '叶轻眉', '110000_2_0', '110100_14_0', '110101', '你工作的第一个城市', NULL, '1', '123633466672836746', '836746', 2, NULL, '2020-02-29 19:31:42');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '新闻主键',
  `pubDate` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  `pubDateStr` varchar(0) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间描述',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新闻标题',
  `summary` varchar(600) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容简述',
  `infoSource` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新闻来源',
  `sourceUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新闻链接',
  `provinceName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `modifyTime` datetime(0) NULL DEFAULT NULL COMMENT '编辑时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for nowdata
-- ----------------------------
DROP TABLE IF EXISTS `nowdata`;
CREATE TABLE `nowdata`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `confirmedCount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '确诊病例',
  `confirmedCount_yesterday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相比昨日确诊数',
  `suspectedCount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '疑似病例',
  `suspectedCount_yesterday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相比昨日',
  `curedCount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '治愈人数',
  `curedCount_yesterday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deadCount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deadCount_yesterday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nowconfirmed` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '现存人数',
  `nowconfirmed_yesterday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `heavy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '现存疑似',
  `heavy_yesterday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nowdata
-- ----------------------------
INSERT INTO `nowdata` VALUES ('1', '79394', '+435', '1418', '+248', '39199', '+3042', '2838', '+47', '37357', '-2654', '7664', '-288');

-- ----------------------------
-- Table structure for patient
-- ----------------------------
DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `temperate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of patient
-- ----------------------------
INSERT INTO `patient` VALUES ('001', '张三', '湖北武汉', '重', '40');
INSERT INTO `patient` VALUES ('002', '张四', '湖北武汉', '重', '39');
INSERT INTO `patient` VALUES ('003', '张七', '湖北武汉', '中', '38.7');
INSERT INTO `patient` VALUES ('004', '王三', '湖北武汉', '重', '39.8');
INSERT INTO `patient` VALUES ('005', '李三', '湖南长沙', '轻', '38.3');
INSERT INTO `patient` VALUES ('112', '刘六', '湖南长沙', '重', '39.4');
INSERT INTO `patient` VALUES ('123', '王五', '河南郑州', '中', '38.7');
INSERT INTO `patient` VALUES ('145', '李七', '河南郑州', '重', '39.7');
INSERT INTO `patient` VALUES ('177', '牛八', '河南郑州', '轻', '37.9');
INSERT INTO `patient` VALUES ('543', '黄三', '广东广州', '重', '39.9');
INSERT INTO `patient` VALUES ('776', '黄二', '江西南昌', '轻', '37.8');
INSERT INTO `patient` VALUES ('999', '红牛', '四川成都', '中', '38.2');

-- ----------------------------
-- Table structure for provinces
-- ----------------------------
DROP TABLE IF EXISTS `provinces`;
CREATE TABLE `provinces`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `pro_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份名',
  `confirmed_num` int(20) NULL DEFAULT NULL COMMENT '确诊人数',
  `cure_num` int(20) NULL DEFAULT NULL COMMENT '治愈人数',
  `death_num` int(11) NULL DEFAULT NULL COMMENT '死亡人数',
  `fabu_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of provinces
-- ----------------------------
INSERT INTO `provinces` VALUES ('1.0', '湖北', 34715, 28895, 2727, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('10.0', '重庆', 147, 422, 6, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('11.0', '四川', 185, 350, 3, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('12.0', '黑龙江', 168, 299, 13, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('13.0', '北京', 146, 257, 7, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('14.0', '上海', 47, 287, 3, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('15.0', '河北', 35, 277, 6, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('16.0', '福建', 54, 241, 1, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('17.0', '广西', 78, 172, 2, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('18.0', '陕西', 44, 200, 1, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('19.0', '云南', 16, 156, 2, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('2.0', '广东', 370, 972, 7, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('20.0', '海南', 27, 136, 5, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('21.0', '贵州', 32, 112, 2, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('22.0', '天津', 28, 105, 3, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('23.0', '山西', 21, 112, 0, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('24.0', '辽宁', 26, 94, 1, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('25.0', '香港', 62, 30, 2, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('26.0', '吉林', 19, 73, 1, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('27.0', '甘肃', 7, 82, 2, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('28.0', '新疆', 21, 52, 3, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('29.0', '内蒙古', 29, 46, 0, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('3.0', '河南', 89, 1162, 21, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('30.0', '宁夏', 5, 68, 0, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('31.0', '台湾', 24, 9, 1, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('32.0', '青海', 0, 18, 0, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('33.0', '澳门', 2, 8, 0, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('34.0', '西藏', 0, 1, 0, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('4.0', '浙江', 217, 987, 1, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('5.0', '湖南', 173, 841, 4, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('6.0', '安徽', 138, 846, 6, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('7.0', '江西', 123, 811, 1, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('8.0', '山东', 339, 411, 6, '2020-02-29 13:55:28');
INSERT INTO `provinces` VALUES ('9.0', '江苏', 112, 519, 0, '2020-02-29 13:55:28');

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store`  (
  `store_id` int(11) NOT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `storename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`store_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES (1, '110000_2_0', '110100_14_0', '110101', '东城国药健众药店', '东城市罗莎社区罗莎路金沙大厦');
INSERT INTO `store` VALUES (2, '110000_2_0', '110100_14_0', '110101', '东城国药万达药店', '东城市万达广场西侧');
INSERT INTO `store` VALUES (3, '110000_2_0', '110100_14_0', '110101', '东城国药森林药店', '东城市城区新风路');
INSERT INTO `store` VALUES (4, '110000_2_0', '110100_14_0', '110101', '东城国药华安药店', '东城市南城区岭路1号水韵公园');
INSERT INTO `store` VALUES (5, '110000_2_0', '110100_14_0', '110101', '东城国药红山第二药店', '东城市新城石竹花园B座18号铺');
INSERT INTO `store` VALUES (6, '110000_2_0', '110100_14_0', '110101', '东城国药恒大华都药店', '东城市南城区雅园社区嘉荣大厦一楼6-7号');
INSERT INTO `store` VALUES (7, '110000_2_0', '110100_14_0', '110101', '东城国药康悦药店', '东城市东郡路5号未来花园汇龙湾235号');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` varchar(64) CHARACTER SET utf8mb4  NOT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 NOT NULL COMMENT '用户名',
  `password` varchar(64) CHARACTER SET utf8mb4  NOT NULL COMMENT '密码',
  `face_image` varchar(255) CHARACTER SET utf8mb4  NULL DEFAULT NULL COMMENT '我的头像，如果没有默认给一张',
  `nickname` varchar(20) CHARACTER SET utf8mb4  NULL DEFAULT NULL COMMENT '昵称',
  `fans_counts` int(11) NULL DEFAULT 0 COMMENT '我的粉丝数量',
  `follow_counts` int(11) NULL DEFAULT 0 COMMENT '我关注的人总数',
  `receive_like_counts` int(11) NULL DEFAULT 0 COMMENT '我接受到的赞美/收藏 的数量',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('0.034997161214425976qq3', '56dsa', '123', NULL, 'xiaoli', NULL, NULL, NULL);
INSERT INTO `users` VALUES ('0.23212913809555824qq3', '63dsa', '123', NULL, 'xiaoli', NULL, NULL, NULL);
INSERT INTO `users` VALUES ('0.7735487392438776qq2', '8dsa', '123', NULL, 'xiaoli', NULL, NULL, NULL);
INSERT INTO `users` VALUES ('1001', 'test-sea-1111', '9999', '/path000999', '倾心网好牛十分牛~', 123456, 111, 222);
INSERT INTO `users` VALUES ('123666', 'hwj556', '123', NULL, '222', NULL, NULL, NULL);
INSERT INTO `users` VALUES ('180425B0B3N6B25P', 'sea11', 'wzNncBURtPYCDsYd7TUgWQ==', NULL, 'sea', 0, 0, 0);
INSERT INTO `users` VALUES ('180425BNSR1CG0H0', 'abc', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, 'abc', 1, 0, 1);
INSERT INTO `users` VALUES ('180425CFA4RB6T0H', 'sea', 'kU8h64TG/bK2Y91vRT9lyg==', '/180425CFA4RB6T0H/face/wxa2049f5aead89372.o6zAJs5sm5bPFcTzKXp_5wXsWuso.W0eLNdT6MIvD3ba01f74ba779caa63d038c3c8200b4a.jpg', 'sea1', 0, 2, 6);
INSERT INTO `users` VALUES ('180426F55CZPA9YW', 'aaaa', 'R7zlx09Yn0hn29V+nKn4CA==', NULL, 'aaaa', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GA3SBB4DP0', '1001', 'bfw1xHdW6WLvBV0QSfH47A==', NULL, '1001', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GAK87AB0X4', '10401', 'bfw1xHdW6WLvBV0QSfH47A==', NULL, '10401', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GAWCC17KWH', '104701', 'bfw1xHdW6WLvBV0QSfH47A==', NULL, '104701', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GBDFKDG5D4', '10re4701', 'bfw1xHdW6WLvBV0QSfH47A==', NULL, '10re4701', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GBKN0YRFRP', '10rwee4701', 'bfw1xHdW6WLvBV0QSfH47A==', NULL, '10rwee4701', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GH49XRZHX4', '390213890', 'H9V/tnfgt6nniqH5bDZ0hQ==', NULL, '390213890', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GHH12WXPZC', '390ewqewq213890', 'H9V/tnfgt6nniqH5bDZ0hQ==', NULL, '390ewqewq213890', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GHHPZ7NTC0', '390ewqewq21ewqe3890', 'H9V/tnfgt6nniqH5bDZ0hQ==', NULL, '390ewqewq21ewqe3890', 0, 0, 0);
INSERT INTO `users` VALUES ('180426H0GWP0C3HH', 'jdiowqjodij', 'wEmTz54sy+StEzB+TrtGSQ==', NULL, 'jdiowqjodij', 0, 0, 0);
INSERT INTO `users` VALUES ('180518CHS7SXMCX4', 'aaaaa', 'WU+AOzgKQTlu1j3KOVA1Qg==', NULL, 'aaaaa', 0, 0, 0);
INSERT INTO `users` VALUES ('180930DRXM99CKKP', 'jack', '4QrcOUm6Wau+VuBX8g+IPg==', '/180930DRXM99CKKP/face/tmp_a05a3272ef51c3b724ab6d810b94d68c3c0d83c464f2792d.jpg', 'jack123', 11, 11, 36);
INSERT INTO `users` VALUES ('180930DTN8M0WP6W', 'Ticket', '123456', NULL, 'Luck', -1, 0, 0);
INSERT INTO `users` VALUES ('180930F65GTG1T7C', 'Luck', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, NULL, 0, 0, 0);
INSERT INTO `users` VALUES ('180930HXSB796AK4', 'Daddy', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, NULL, 1, 0, 0);
INSERT INTO `users` VALUES ('180930K19MAGGZ0H', 'tt', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, NULL, 0, 0, 0);
INSERT INTO `users` VALUES ('180930K2WZ49D968', 'Angle', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, NULL, 0, 0, 0);
INSERT INTO `users` VALUES ('180930K3D6W4B44H', 'Java', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, NULL, 0, 0, 0);
INSERT INTO `users` VALUES ('1833541', '李刚', '22222', NULL, '一叶知秋i', NULL, NULL, NULL);
INSERT INTO `users` VALUES ('19010493YR0BKZ54', 'wang', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, 'ming', 0, 0, 0);
INSERT INTO `users` VALUES ('555', '555', '555', NULL, '555', NULL, NULL, NULL);
INSERT INTO `users` VALUES ('admin', 'admin', 'af85cc5d1ca28b1b788b953389a40d6f', NULL, 'aaa', 0, 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
