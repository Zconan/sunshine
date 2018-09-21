/*
Navicat MySQL Data Transfer

Source Server         : xiaocai
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : sunshine

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-09-21 15:29:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goodslist
-- ----------------------------
DROP TABLE IF EXISTS `goodslist`;
CREATE TABLE `goodslist` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodslist
-- ----------------------------
INSERT INTO `goodslist` VALUES ('G001', 'DISNEY/迪士�?快乐梦幻月饼礼盒60G*6', 'src/img/g1.jpg', '160');
INSERT INTO `goodslist` VALUES ('G002', '榴芒一�?榴莲冰皮中秋月饼礼盒 100G*6 日期新鲜 全国顺丰空运', 'src/img/g2.jpg', '160');
INSERT INTO `goodslist` VALUES ('G003', '限时特惠 10包装【香港直邮】泰国兰纳lanna足贴 艾草祛湿气安眠养�?10�?', 'src/img/g3.jpg', '105');
INSERT INTO `goodslist` VALUES ('G004', '【香港直邮】美国Kiehl\'s科颜氏金盏花植物爽肤水化妆水250ml 补水保湿�?', 'src/img/g4.jpg', '330');
INSERT INTO `goodslist` VALUES ('G005', '【杭州保税二仓】日本SOS  2包全身快速减�?1包睡眠减�?', 'src/img/g5.jpg', '133');
INSERT INTO `goodslist` VALUES ('G006', '【杭州保税二仓】SUKIN/苏芊天然止汗除臭喷雾（包税）', 'src/img/g6.jpg', '51');
INSERT INTO `goodslist` VALUES ('G007', '3盒装【杭州保税二仓】DIA FORCE贵妇黄金钻石眼膜�?0片新版（包邮包税�?', 'src/img/g7.jpg', '237');
INSERT INTO `goodslist` VALUES ('G008', '4盒装【香港直邮】【泰版】RAY 金色修复痘印提拉紧致面膜 10片包邮包�?', 'src/img/g8.jpg', '250');
INSERT INTO `goodslist` VALUES ('G009', '【香港直邮】美国魅可MAC子弹头口�?LADY BUG 番茄�?3g（包税）', 'src/img/g9.jpg', '166');
INSERT INTO `goodslist` VALUES ('G010', '【杭州保税二仓】AHC B5高效保湿透明质酸爽肤�?120ML 新版（包邮包税）', 'src/img/g10.jpg', '105');
INSERT INTO `goodslist` VALUES ('G011', '【杭州保税二仓】AHC B5高效保湿透明质酸乳液 120ML 新版（包邮包税）', 'src/img/g11.jpg', '105');
INSERT INTO `goodslist` VALUES ('G012', '【香港直邮】JMSOLUTION 玫瑰珍珠蚕丝牛油果大米等10片急救面膜尝鲜组合...', 'src/img/g12.jpg', '88');
INSERT INTO `goodslist` VALUES ('G013', '【香港直邮】美国EltaMD温和氨基酸泡沫洗面奶洁面�?07ml（包税）', 'src/img/g13.jpg', '165');
INSERT INTO `goodslist` VALUES ('G014', '【自营保税仓】日本FANCL芳珂无添加纳米速净卸妆�?卸妆�?20ml（包税）', 'src/img/g14.jpg', '150');
INSERT INTO `goodslist` VALUES ('G015', '日本BEAUCLAIR/雪美�?杨桃卸妆水脸部深层清洁温和无刺激500ml', 'src/img/g15.jpg', '66');
INSERT INTO `goodslist` VALUES ('G016', '【香港直邮】美国GNC/健安喜钙+维生素D3强筋健骨120粒成人中老年钙片（包�?..', 'src/img/g16.jpg', '65');
INSERT INTO `goodslist` VALUES ('G017', '【香港直邮】美国GNC/健安喜褪黑素10mg 60粒舒缓情绪睡前安心好睡眠（包�?..', 'src/img/g17.jpg', '68');
INSERT INTO `goodslist` VALUES ('G018', '德国博朗婴儿红外线耳温�?电子体温�?温度�?耳温�?IRT6520', 'src/img/g18.jpg', '350');
INSERT INTO `goodslist` VALUES ('G019', '【自营保税仓】日本早安BCL Saborino 60秒懒人保湿面�?2枚（包税�?', 'src/img/g19.jpg', '105');
INSERT INTO `goodslist` VALUES ('G020', '日本LOSHI北海道马油薏仁水保湿滋润薏仁化妆�?00ml（升级版�?', 'src/img/g20.jpg', '43');
INSERT INTO `goodslist` VALUES ('G021', 'DISNEY/迪士�?快乐经典月饼礼盒60G*8', 'src/img/g21.jpg', '321');
INSERT INTO `goodslist` VALUES ('G022', '【香港直邮】美国科颜氏 Kiehl\'s 亚马逊白泥净致洁面乳150ml', 'src/img/g22.jpg', '144');
INSERT INTO `goodslist` VALUES ('G023', '西班牙LME珞曼西樱花洗手液家用滋润保湿花香�?00ml', 'src/img/g23.jpg', '59');
INSERT INTO `goodslist` VALUES ('G024', '西班牙LME珞曼西茉莉身体乳保湿滋润补水去鸡皮肤美白润肤�?00ml', 'src/img/g24.jpg', '128');
INSERT INTO `goodslist` VALUES ('G025', '西班牙LME珞曼西银杏持久留香防脱发防掉发去屑止痒无硅洗发水500ml', 'src/img/g25.jpg', '100');
INSERT INTO `goodslist` VALUES ('G026', '集甜社月饼礼盒装高档流心奶黄黑松露中秋送礼张艺谋电影合作款6枚装', 'src/img/g26.jpg', '332');
INSERT INTO `goodslist` VALUES ('G027', 'Aveeno 婴儿日常燕麦保湿补水润肤乳液532ml', 'src/img/g27.jpg', '90');
INSERT INTO `goodslist` VALUES ('G028', '【香港直邮】韩国UNNY 矿物质卸妆水 500ML（包邮包税）', 'src/img/g28.jpg', '65');
INSERT INTO `goodslist` VALUES ('G029', '【香港直邮】泰国Annabella安娜贝拉深海矿物补水保湿收缩毛孔海藻面膜 （c...', 'src/img/g29.jpg', '50');
INSERT INTO `goodslist` VALUES ('G030', '西班牙LME珞曼西杏仁蜂蜜沐浴露持久留香滋润补水500ml', 'src/img/g30.jpg', '89');
INSERT INTO `goodslist` VALUES ('G031', '集甜社月见台式月饼礼盒白桃乌龙西施蛋黄红豆流沙中秋送礼6枚装', 'src/img/g31.jpg', '208');
INSERT INTO `goodslist` VALUES ('G032', '【香港直邮】LANVIN/浪凡 光韵女士浓香�?0ml（包税）', 'src/img/g32.jpg', '158');
INSERT INTO `goodslist` VALUES ('G033', '西班牙LME珞曼西茉莉沐浴露持久留香美白保湿500ml', 'src/img/g33.jpg', '89');
INSERT INTO `goodslist` VALUES ('G034', '西班牙LME珞曼西香橙沐浴露持久留香美白保湿补水500ml', 'src/img/g34.jpg', '89');
INSERT INTO `goodslist` VALUES ('G035', '【香港直邮】韩国爱敬age 20\'s气垫BB粉底水粉霜附替换�?13亮白色（白盒...', 'src/img/g35.jpg', '170');
INSERT INTO `goodslist` VALUES ('G036', '【香港直邮】意大利东方宝石沐浴露持久留香补水保�?00ml水莲花（包税�?', 'src/img/g36.jpg', '58');
INSERT INTO `goodslist` VALUES ('G037', '【香港直邮】意大利东方宝石沐浴露持久留香提亮肤�?00ml白麝香（包税�?', 'src/img/g37.jpg', '58');
INSERT INTO `goodslist` VALUES ('G038', '【香港直邮】Burberry/博柏�?巴宝莉周末男士香�?0ml（新老包装随机发...', 'src/img/g38.jpg', '225');
INSERT INTO `goodslist` VALUES ('G039', 'lacabine珞可缤西班牙lcb安瓶精华VC小安瓶精华液美白抗氧化美白淡�?0...', 'src/img/g39.jpg', '119');
INSERT INTO `goodslist` VALUES ('G040', '日本BEAUCLAIR/雪美�?杨桃收敛水收缩毛孔去黑头化妆水杨桃水150ml', 'src/img/g40.jpg', '77');
INSERT INTO `goodslist` VALUES ('G041', '【香港直邮】澳洲Healthy Care羊奶片咀嚼片300粒补钙香草味（包税）', 'src/img/g41.jpg', '87');
INSERT INTO `goodslist` VALUES ('G042', '【香港直邮】NARS/纳斯 腮红DESIRE欲望4.8g（包税）', 'src/img/g42.jpg', '221');
INSERT INTO `goodslist` VALUES ('G043', '【香港直邮】澳洲Bio Island袋鼠精胶�?0粒持久缓解疲劳强精补肾（包税�?', 'src/img/g43.jpg', '116');
INSERT INTO `goodslist` VALUES ('G044', '日本Alovivi皇后卸妆水脸部眼唇四效合一温和卸妆�?00ml', 'src/img/g44.jpg', '44');
INSERT INTO `goodslist` VALUES ('G045', '【香港直邮】Versace/范思哲 粉红水晶女士香水50ml（包税）', 'src/img/g45.jpg', '298');
INSERT INTO `goodslist` VALUES ('G046', '【香港直邮】美国魅可MAC子弹头口�?Brick-O-La豆沙�?3g（包税）', 'src/img/g46.jpg', '166');
INSERT INTO `goodslist` VALUES ('G047', '【香港直邮】韩国W.LAB超模美颜粉底液保湿遮瑕持�?0ml 控油�?21象牙�?..', 'src/img/g47.jpg', '93');
INSERT INTO `goodslist` VALUES ('G048', '【香港直邮】澳洲Bio-e柠檬蜂蜜酵素500ml排便清肠天然酵素饮料（包税）', 'src/img/g48.jpg', '132');
INSERT INTO `goodslist` VALUES ('G049', '【香港直邮】韩国AHC神仙水套�?B5透明质酸玻尿酸水乳套装（包税�?', 'src/img/g49.jpg', '175');
INSERT INTO `goodslist` VALUES ('G050', '【自营保税仓】日本大创Daiso水乳精华套装（水120ml+�?20ml+精华�?..', 'src/img/g50.jpg', '72');
INSERT INTO `goodslist` VALUES ('G051', '【香港直邮】VENUS MARBLE 四色贝母高光大理石高光盘 显色持久粉质细腻...', 'src/img/g51.jpg', '138');
INSERT INTO `goodslist` VALUES ('G052', '【香港直邮】日本山本汉方大麦若叶青汁果蔬纤维代餐粉3g*44袋（包税�?', 'src/img/g52.jpg', '83');
INSERT INTO `goodslist` VALUES ('G053', '日本LOSHI马油洗面奶温和泡沫深层清洁控油洁面乳130g', 'src/img/g53.jpg', '33');
INSERT INTO `goodslist` VALUES ('G054', '【香港直邮】韩国SNP红宝石紧致眼膜贴60�?�?（包税）', 'src/img/g54.jpg', '76');
INSERT INTO `goodslist` VALUES ('G055', '【香港直邮】韩国SNP黑珍珠保湿淡化色素眼膜贴60�?盒（包税�?', 'src/img/g55.jpg', '76');
INSERT INTO `goodslist` VALUES ('G056', '【香港直邮】日本苏菲娜SOFINA控油瓷效妆前隔离乳SPF25 PA++ 25�?..', 'src/img/g56.jpg', '110');
INSERT INTO `goodslist` VALUES ('G057', '【香港直邮】韩国VIVLAS/唯兰�?黄金锡纸蒸汽面膜紧致弹力金色5片装（包税）', 'src/img/g57.jpg', '113');
INSERT INTO `goodslist` VALUES ('G058', '【香港直邮】澳洲EAORON水光水乳套装保湿补水滋润（爽肤水+乳液）（包税�?', 'src/img/g58.jpg', '208');
INSERT INTO `goodslist` VALUES ('G059', '【香港直邮】澳洲EAORON水光水深层补水保湿爽肤水 120ml/瓶（包税�?', 'src/img/g59.jpg', '210');
INSERT INTO `goodslist` VALUES ('G060', '【香港直邮】韩国VIVLAS/唯兰�?茶秘水润面膜 蓝色深层保湿补水5片装（包�?..', 'src/img/g60.jpg', '86');
INSERT INTO `goodslist` VALUES ('G061', '【香港直邮】新西兰streamland/新溪岛纯天然柠檬蜂蜜加强抵抗�?00g�?..', 'src/img/g61.jpg', '210');
INSERT INTO `goodslist` VALUES ('G062', '【香港直邮】美国魅可MAC子弹头口�?Diva复古哑光姨妈�?3g（包税）', 'src/img/g62.jpg', '166');
INSERT INTO `goodslist` VALUES ('G063', '【香港直邮】美国GNC/健安�?玛咖精氨酸男士复合配�?0粒（包税�?', 'src/img/g63.jpg', '91');
INSERT INTO `goodslist` VALUES ('G064', '澳洲Maxigenes美可卓蓝胖子成人奶粉青少年中老年全脂高钙牛奶粉罐�?kg�?..', 'src/img/g64.jpg', '102');
INSERT INTO `goodslist` VALUES ('G065', '西班牙LME珞曼西茉莉花洗手液家用滋润抑菌保湿花香型500ml', 'src/img/g65.jpg', '59');
INSERT INTO `goodslist` VALUES ('G066', '【荷兰直邮】荷兰进口Nutrion/牛栏婴儿奶粉4�?00g（适合一周岁以上）（...', 'src/img/g66.jpg', '1110');
INSERT INTO `goodslist` VALUES ('G067', '【香港直邮】（2瓶装）新西兰红印Red Seal黑糖500g舒缓痛经暖宫（包税）', 'src/img/g67.jpg', '83');
INSERT INTO `goodslist` VALUES ('G068', '【香港直邮】新西兰红印Red Seal黑糖500g舒缓痛经暖宫（包税）', 'src/img/g68.jpg', '44');
INSERT INTO `goodslist` VALUES ('G069', '【香港直邮】韩国W.LAB超模美颜粉底液保湿遮瑕持�?0mlL 控油�?13亮白...', 'src/img/g69.jpg', '93');
INSERT INTO `goodslist` VALUES ('G070', '【香港直邮】美国GNC/健安喜维生素K2软胶囊增加骨密度（包税）', 'src/img/g70.jpg', '127');
INSERT INTO `goodslist` VALUES ('G071', '【香港直邮】美国GNC/健安喜甲壳素饱腹燃脂瘦身清肠消脂复合胶囊120粒（包税�?', 'src/img/g71.jpg', '165');
INSERT INTO `goodslist` VALUES ('G072', '【香港直邮】韩国CHOKCHOK樱花丝绒沐浴�?50g花瓣沐浴露持久留�?', 'src/img/g72.jpg', '88');
INSERT INTO `goodslist` VALUES ('G073', '【香港直邮】日本山本汉方脂流茶10g*24包去糖去油脂代谢美容健康茶（包税�?', 'src/img/g73.jpg', '64');
INSERT INTO `goodslist` VALUES ('G074', '【香港直邮】澳洲Combantrin打蛔虫钩虫线虫巧克力�?4块装（包税）', 'src/img/g74.jpg', '105');
INSERT INTO `goodslist` VALUES ('G075', '【香港直邮】美国GNC/健安喜葡萄籽浓缩精华胶囊300mg100粒美白淡斑（包税...', 'src/img/g75.jpg', '127');
INSERT INTO `goodslist` VALUES ('G076', '【香港直邮】美国GNC/健安喜DHA儿童软糖120粒（包税�?', 'src/img/g76.jpg', '133');
INSERT INTO `goodslist` VALUES ('G077', '【香港直邮】美国GNC/健安喜三倍高浓缩卵磷脂软胶囊180粒（包税�?', 'src/img/g77.jpg', '158');
INSERT INTO `goodslist` VALUES ('G078', '【香港直邮】美国GNC/健安喜番茄红�?0mg60粒男士前列腺（包税）', 'src/img/g78.jpg', '138');
INSERT INTO `goodslist` VALUES ('G079', '【香港直邮】美国GNC/健安喜左旋肉碱胶�?00mg 120粒燃烧脂肪（包税�?', 'src/img/g79.jpg', '187');
INSERT INTO `goodslist` VALUES ('G080', '【香港直邮】美国GNC/健安喜共轭亚油酸软胶囊燃脂瘦�?0粒（包税�?', 'src/img/g80.jpg', '145');
INSERT INTO `goodslist` VALUES ('G081', '【香港直邮】美国GNC/健安喜深海鱼油软胶囊家庭�?60粒（柠檬香型）（包税�?', 'src/img/g81.jpg', '157');
INSERT INTO `goodslist` VALUES ('G082', '【香港直邮】美国GNC/健安喜辅酶Q10软胶�?00mg120粒保护心脏（包税�?', 'src/img/g82.jpg', '149');
INSERT INTO `goodslist` VALUES ('G083', '【香港直邮】美国GNC/健安喜三倍浓缩加强鱼油软胶囊120粒（包税�?', 'src/img/g83.jpg', '194');
INSERT INTO `goodslist` VALUES ('G084', '西班牙LME珞曼西草莓沐浴露持久留香美白保湿补水500ml', 'src/img/g84.jpg', '89');
INSERT INTO `goodslist` VALUES ('G085', '西班牙LME珞曼西青苹果沐浴露持久留香美白保湿抗氧化500ml', 'src/img/g85.jpg', '89');
INSERT INTO `goodslist` VALUES ('G086', '西班牙LME珞曼西石榴沐浴露持久留香滋润美白保湿500ml', 'src/img/g86.jpg', '89');
INSERT INTO `goodslist` VALUES ('G087', '西班牙LME珞曼西樱花身体乳保湿滋润补水去鸡皮肤润肤�?00ml', 'src/img/g87.jpg', '128');
INSERT INTO `goodslist` VALUES ('G088', '西班牙LME珞曼西樱花沐浴露持久留香美白保湿补水500ml', 'src/img/g88.jpg', '89');
INSERT INTO `goodslist` VALUES ('G089', '【香港直邮�?2瓶装)韩国CHOKCHOK樱花丝绒沐浴�?50g花瓣沐浴露持久留...', 'src/img/g89.jpg', '162');
INSERT INTO `goodslist` VALUES ('G090', '【荷兰直邮】荷兰进口Nutrion/牛栏婴儿奶粉6�?00g（适合三周岁以上）�?..', 'src/img/g90.jpg', '1280');
INSERT INTO `goodslist` VALUES ('G091', '【香港直邮】韩国W.LAB超模美颜粉底液保湿遮瑕持�?0ml 控油�?23米黄�?..', 'src/img/g91.jpg', '93');
INSERT INTO `goodslist` VALUES ('G092', '【杭州保税二仓】（3瓶装）日本太阳社 玻尿酸保湿原�?0ml（包税）', 'src/img/g92.jpg', '116.9');
INSERT INTO `goodslist` VALUES ('G093', '【荷兰直邮】荷兰进口Nutrion/牛栏婴儿奶粉5�?00g（适合二周岁以上）�?..', 'src/img/g93.jpg', '1110');
INSERT INTO `goodslist` VALUES ('G094', '【香港直邮】希腊Apivita/艾蜜�?女性私处护理液日常型Daily 清爽洁肤...', 'src/img/g94.jpg', '138');
INSERT INTO `goodslist` VALUES ('G095', '【杭州保税二仓】日本BCL/Saborino夜间60秒懒人保湿安神晚安面�?8�?..', 'src/img/g95.jpg', '98');
INSERT INTO `goodslist` VALUES ('G096', '西班牙LME珞曼西银杏防脱发固发护发素深层滋养柔顺修�?00ml', 'src/img/g96.jpg', '100');
INSERT INTO `goodslist` VALUES ('G097', '【香港直邮】韩国爱敬age 20\'s气垫BB粉底水粉霜附替换�?21象牙白（白盒...', 'src/img/g97.jpg', '165');
INSERT INTO `goodslist` VALUES ('G098', '【香港直邮】FERRAGAMO/菲拉格慕 蓝色经典男士淡香�?0ml（包税）', 'src/img/g98.jpg', '165');
INSERT INTO `goodslist` VALUES ('G099', '【香港直邮】DanielWellington丹尼尔惠灵顿 DW手镯百搭简约饰品男...', 'src/img/g99.jpg', '388');
INSERT INTO `goodslist` VALUES ('G100', '【香港直邮】DanielWellington丹尼尔惠灵顿 DW手表40mm黑色�?..', 'src/img/g100.jpg', '1050');

-- ----------------------------
-- Table structure for list
-- ----------------------------
DROP TABLE IF EXISTS `list`;
CREATE TABLE `list` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of list
-- ----------------------------
INSERT INTO `list` VALUES ('G101', '韩国HUGGIES好奇心钻装婴儿纸尿裤NB66超薄透气尿不�?', '../img/g101.jpg', '167', '15342');
INSERT INTO `list` VALUES ('G102', '韩国HUGGIES好奇心钻装婴儿纸尿裤L40超薄透气尿不�?', '../img/g102.jpg', '187', '53242');
INSERT INTO `list` VALUES ('G103', '韩国HUGGIES好奇心钻装婴儿纸尿裤M50超薄透气尿不�?', '../img/g103.jpg', '260', '534');
INSERT INTO `list` VALUES ('G104', '澳洲Aptamil爱他美金�?段新西兰婴儿奶粉900g', '../img/g104.jpg', '360', '6342');
INSERT INTO `list` VALUES ('G003', '限时特惠 10包装【香港直邮】泰国兰纳lanna足贴 艾草祛湿气安眠养�?10�?', '../img/g3.jpg', '105', '54342');
INSERT INTO `list` VALUES ('G004', '【香港直邮】美国Kiehl\'s科颜氏金盏花植物爽肤水化妆水250ml 补水保湿�?', '../img/g4.jpg', '330', '75342');
INSERT INTO `list` VALUES ('G005', '【杭州保税二仓】日本SOS  2包全身快速减�?1包睡眠减�?', '../img/g5.jpg', '133', '53');
INSERT INTO `list` VALUES ('G006', '【杭州保税二仓】SUKIN/苏芊天然止汗除臭喷雾（包税）', '../img/g6.jpg', '51', '342');
INSERT INTO `list` VALUES ('G007', '3盒装【杭州保税二仓】DIA FORCE贵妇黄金钻石眼膜�?0片新版（包邮包税�?', '../img/g7.jpg', '237', '42');
INSERT INTO `list` VALUES ('G008', '4盒装【香港直邮】【泰版】RAY 金色修复痘印提拉紧致面膜 10片包邮包�?', '../img/g8.jpg', '250', '54342');
INSERT INTO `list` VALUES ('G009', '【香港直邮】美国魅可MAC子弹头口�?LADY BUG 番茄�?3g（包税）', '../img/g9.jpg', '166', '1342');
INSERT INTO `list` VALUES ('G010', '【杭州保税二仓】AHC B5高效保湿透明质酸爽肤�?120ML 新版（包邮包税）', '../img/g10.jpg', '105', '9082');
INSERT INTO `list` VALUES ('G011', '【杭州保税二仓】AHC B5高效保湿透明质酸乳液 120ML 新版（包邮包税）', '../img/g11.jpg', '105', '342');
INSERT INTO `list` VALUES ('G012', '【香港直邮】JMSOLUTION 玫瑰珍珠蚕丝牛油果大米等10片急救面膜尝鲜组合...', '../img/g12.jpg', '88', '92842');
INSERT INTO `list` VALUES ('G013', '【香港直邮】美国EltaMD温和氨基酸泡沫洗面奶洁面�?07ml（包税）', '../img/g13.jpg', '165', '15342');
INSERT INTO `list` VALUES ('G014', '【自营保税仓】日本FANCL芳珂无添加纳米速净卸妆�?卸妆�?20ml（包税）', '../img/g14.jpg', '150', '3422');
INSERT INTO `list` VALUES ('G015', '日本BEAUCLAIR/雪美�?杨桃卸妆水脸部深层清洁温和无刺激500ml', '../img/g15.jpg', '66', '1342');
INSERT INTO `list` VALUES ('G016', '【香港直邮】美国GNC/健安喜钙+维生素D3强筋健骨120粒成人中老年钙片（包�?..', '../img/g16.jpg', '65', '42372');
INSERT INTO `list` VALUES ('G017', '【香港直邮】美国GNC/健安喜褪黑素10mg 60粒舒缓情绪睡前安心好睡眠（包�?..', '../img/g17.jpg', '68', '53895');
INSERT INTO `list` VALUES ('G018', '德国博朗婴儿红外线耳温�?电子体温�?温度�?耳温�?IRT6520', '../img/g18.jpg', '350', '1342');
INSERT INTO `list` VALUES ('G019', '【自营保税仓】日本早安BCL Saborino 60秒懒人保湿面�?2枚（包税�?', '../img/g19.jpg', '105', '4292');
INSERT INTO `list` VALUES ('G020', '日本LOSHI北海道马油薏仁水保湿滋润薏仁化妆�?00ml（升级版�?', '../img/g20.jpg', '43', '895');
INSERT INTO `list` VALUES ('G021', 'DISNEY/迪士�?快乐经典月饼礼盒60G*8', '../img/g21.jpg', '321', '908');
INSERT INTO `list` VALUES ('G022', '【香港直邮】美国科颜氏 Kiehl\'s 亚马逊白泥净致洁面乳150ml', '../img/g22.jpg', '144', '1242');
INSERT INTO `list` VALUES ('G023', '西班牙LME珞曼西樱花洗手液家用滋润保湿花香�?00ml', '../img/g23.jpg', '59', '4531');
INSERT INTO `list` VALUES ('G024', '西班牙LME珞曼西茉莉身体乳保湿滋润补水去鸡皮肤美白润肤�?00ml', '../img/g24.jpg', '128', '3261');
INSERT INTO `list` VALUES ('G025', '西班牙LME珞曼西银杏持久留香防脱发防掉发去屑止痒无硅洗发水500ml', '../img/g25.jpg', '100', '5622');
INSERT INTO `list` VALUES ('G026', '集甜社月饼礼盒装高档流心奶黄黑松露中秋送礼张艺谋电影合作款6枚装', '../img/g26.jpg', '332', '8729');
INSERT INTO `list` VALUES ('G027', 'Aveeno 婴儿日常燕麦保湿补水润肤乳液532ml', '../img/g27.jpg', '90', '78642');
INSERT INTO `list` VALUES ('G028', '【香港直邮】韩国UNNY 矿物质卸妆水 500ML（包邮包税）', '../img/g28.jpg', '65', '7342');
INSERT INTO `list` VALUES ('G029', '【香港直邮】泰国Annabella安娜贝拉深海矿物补水保湿收缩毛孔海藻面膜 （c...', '../img/g29.jpg', '50', '652');
INSERT INTO `list` VALUES ('G030', '西班牙LME珞曼西杏仁蜂蜜沐浴露持久留香滋润补水500ml', '../img/g30.jpg', '89', '2242');
INSERT INTO `list` VALUES ('G031', '集甜社月见台式月饼礼盒白桃乌龙西施蛋黄红豆流沙中秋送礼6枚装', '../img/g31.jpg', '208', '5142');
INSERT INTO `list` VALUES ('G032', '【香港直邮】LANVIN/浪凡 光韵女士浓香�?0ml（包税）', '../img/g32.jpg', '158', '1342');
INSERT INTO `list` VALUES ('G033', '西班牙LME珞曼西茉莉沐浴露持久留香美白保湿500ml', '../img/g33.jpg', '89', '6342');
INSERT INTO `list` VALUES ('G034', '西班牙LME珞曼西香橙沐浴露持久留香美白保湿补水500ml', '../img/g34.jpg', '89', '892');
INSERT INTO `list` VALUES ('G035', '【香港直邮】韩国爱敬age 20\'s气垫BB粉底水粉霜附替换�?13亮白色（白盒...', '../img/g35.jpg', '170', '8242');
INSERT INTO `list` VALUES ('G036', '【香港直邮】意大利东方宝石沐浴露持久留香补水保�?00ml水莲花（包税�?', '../img/g36.jpg', '58', '942');
INSERT INTO `list` VALUES ('G037', '【香港直邮】意大利东方宝石沐浴露持久留香提亮肤�?00ml白麝香（包税�?', '../img/g37.jpg', '58', '5642');
INSERT INTO `list` VALUES ('G038', '【香港直邮】Burberry/博柏�?巴宝莉周末男士香�?0ml（新老包装随机发...', '../img/g38.jpg', '225', '9082');
INSERT INTO `list` VALUES ('G039', 'lacabine珞可缤西班牙lcb安瓶精华VC小安瓶精华液美白抗氧化美白淡�?0...', '../img/g39.jpg', '119', '109');
INSERT INTO `list` VALUES ('G040', '日本BEAUCLAIR/雪美�?杨桃收敛水收缩毛孔去黑头化妆水杨桃水150ml', '../img/g40.jpg', '77', '87');
INSERT INTO `list` VALUES ('G041', '【香港直邮】澳洲Healthy Care羊奶片咀嚼片300粒补钙香草味（包税）', '../img/g41.jpg', '87', '24');
INSERT INTO `list` VALUES ('G042', '【香港直邮】NARS/纳斯 腮红DESIRE欲望4.8g（包税）', '../img/g42.jpg', '221', '55');
INSERT INTO `list` VALUES ('G043', '【香港直邮】澳洲Bio Island袋鼠精胶�?0粒持久缓解疲劳强精补肾（包税�?', '../img/g43.jpg', '116', '1527');
INSERT INTO `list` VALUES ('G044', '日本Alovivi皇后卸妆水脸部眼唇四效合一温和卸妆�?00ml', '../img/g44.jpg', '44', '1823');
INSERT INTO `list` VALUES ('G045', '【香港直邮】Versace/范思哲 粉红水晶女士香水50ml（包税）', '../img/g45.jpg', '298', '980');
INSERT INTO `list` VALUES ('G046', '【香港直邮】美国魅可MAC子弹头口�?Brick-O-La豆沙�?3g（包税）', '../img/g46.jpg', '166', '665');
INSERT INTO `list` VALUES ('G047', '【香港直邮】韩国W.LAB超模美颜粉底液保湿遮瑕持�?0ml 控油�?21象牙�?..', '../img/g47.jpg', '93', '529');
INSERT INTO `list` VALUES ('G048', '【香港直邮】澳洲Bio-e柠檬蜂蜜酵素500ml排便清肠天然酵素饮料（包税）', '../img/g48.jpg', '132', '8109');
INSERT INTO `list` VALUES ('G049', '【香港直邮】韩国AHC神仙水套�?B5透明质酸玻尿酸水乳套装（包税�?', '../img/g49.jpg', '175', '1529');
INSERT INTO `list` VALUES ('G050', '【自营保税仓】日本大创Daiso水乳精华套装（水120ml+�?20ml+精华�?..', '../img/g50.jpg', '72', '630');
INSERT INTO `list` VALUES ('G051', '【香港直邮】VENUS MARBLE 四色贝母高光大理石高光盘 显色持久粉质细腻...', '../img/g51.jpg', '138', '2518');
INSERT INTO `list` VALUES ('G052', '【香港直邮】日本山本汉方大麦若叶青汁果蔬纤维代餐粉3g*44袋（包税�?', '../img/g52.jpg', '83', '1729');
INSERT INTO `list` VALUES ('G053', '日本LOSHI马油洗面奶温和泡沫深层清洁控油洁面乳130g', '../img/g53.jpg', '33', '9082');
INSERT INTO `list` VALUES ('G054', '【香港直邮】韩国SNP红宝石紧致眼膜贴60�?�?（包税）', '../img/g54.jpg', '76', '565');
INSERT INTO `list` VALUES ('G055', '【香港直邮】韩国SNP黑珍珠保湿淡化色素眼膜贴60�?盒（包税�?', '../img/g55.jpg', '76', '50');
INSERT INTO `list` VALUES ('G056', '【香港直邮】日本苏菲娜SOFINA控油瓷效妆前隔离乳SPF25 PA++ 25�?..', '../img/g56.jpg', '110', '6271');
INSERT INTO `list` VALUES ('G057', '【香港直邮】韩国VIVLAS/唯兰�?黄金锡纸蒸汽面膜紧致弹力金色5片装（包税）', '../img/g57.jpg', '113', '5022');
INSERT INTO `list` VALUES ('G058', '【香港直邮】澳洲EAORON水光水乳套装保湿补水滋润（爽肤水+乳液）（包税�?', '../img/g58.jpg', '208', '1728');
INSERT INTO `list` VALUES ('G059', '【香港直邮】澳洲EAORON水光水深层补水保湿爽肤水 120ml/瓶（包税�?', '../img/g59.jpg', '210', '118');
INSERT INTO `list` VALUES ('G060', '【香港直邮】韩国VIVLAS/唯兰�?茶秘水润面膜 蓝色深层保湿补水5片装', '../img/g60.jpg', '86', '2242');
INSERT INTO `list` VALUES ('G061', '【香港直邮】新西兰streamland/新溪岛纯天然柠檬蜂蜜加强抵抗�?00g', '../img/g61.jpg', '210', '1242');
INSERT INTO `list` VALUES ('G062', '【香港直邮】美国魅可MAC子弹头口�?Diva复古哑光姨妈�?3g（包税）', '../img/g62.jpg', '166', '5442');
INSERT INTO `list` VALUES ('G063', '【香港直邮】美国GNC/健安�?玛咖精氨酸男士复合配�?0粒（包税�?', '../img/g63.jpg', '91', '4228');
INSERT INTO `list` VALUES ('G064', '澳洲Maxigenes美可卓蓝胖子成人奶粉青少年中老年全脂高钙牛奶粉罐�?kg�?..', '../img/g64.jpg', '102', '6372');
INSERT INTO `list` VALUES ('G065', '西班牙LME珞曼西茉莉花洗手液家用滋润抑菌保湿花香型500ml', '../img/g65.jpg', '59', '7629');
INSERT INTO `list` VALUES ('G066', '【荷兰直邮】荷兰进口Nutrion/牛栏婴儿奶粉4�?00g（适合一周岁以上）（...', '../img/g66.jpg', '1110', '7823');
INSERT INTO `list` VALUES ('G067', '【香港直邮】（2瓶装）新西兰红印Red Seal黑糖500g舒缓痛经暖宫（包税）', '../img/g67.jpg', '83', '7382');
INSERT INTO `list` VALUES ('G068', '【香港直邮】新西兰红印Red Seal黑糖500g舒缓痛经暖宫（包税）', '../img/g68.jpg', '44', '1909');
INSERT INTO `list` VALUES ('G069', '【香港直邮】韩国W.LAB超模美颜粉底液保湿遮瑕持�?0mlL 控油�?13亮白...', '../img/g69.jpg', '93', '8872');
INSERT INTO `list` VALUES ('G070', '【香港直邮】美国GNC/健安喜维生素K2软胶囊增加骨密度（包税）', '../img/g70.jpg', '127', '2867');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `phone` varchar(255) NOT NULL COMMENT '手机'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('lee', '1627385267@qq.com', '123456', '13484930287');
INSERT INTO `user` VALUES ('laoxie', '62826576757@qq.com', '6756', '13528396544');
INSERT INTO `user` VALUES ('lemon', '1536278930@qq.com', '123456', '13232819844');
INSERT INTO `user` VALUES ('mengzhu', '21671c1287110700471e37a3bdd13864', '123456', '13276382639');
INSERT INTO `user` VALUES ('eee', '1172638297@qq.com', '123456', '13427382709');
INSERT INTO `user` VALUES ('licai', '5243524112@qq.com', '1234567', '13527382753');
INSERT INTO `user` VALUES ('zhang', '5243524162@qq.com', '1234567', '13273829309');
INSERT INTO `user` VALUES ('lii', '1425362718@qq.com', '123456', '13262738291');
INSERT INTO `user` VALUES ('laoxie1', '2537159035@qq.com', '123456', '13273625088');
