/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50544
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50544
File Encoding         : 65001

Date: 2017-06-10 17:23:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `blog`
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `hits` int(15) DEFAULT NULL,
  `comment` int(15) DEFAULT NULL,
  `pageurl` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('1', '注重不断涌现的个股机会', 'http://fjrs168.blog.hexun.com/111626307_d.html', '509', '0', 'http://fjrs168.blog.hexun.com/p1/default.html');
INSERT INTO `blog` VALUES ('2', '主力悄然抄底，反弹一触即发', 'http://fjrs168.blog.hexun.com/111595373_d.html', '569', '0', 'http://fjrs168.blog.hexun.com/p1/default.html');
INSERT INTO `blog` VALUES ('3', '大盘逐步从政策底迈向市场底', 'http://fjrs168.blog.hexun.com/111580691_d.html', '538', '0', 'http://fjrs168.blog.hexun.com/p1/default.html');
INSERT INTO `blog` VALUES ('4', 'A股环境不成熟，各方思路需改变', 'http://fjrs168.blog.hexun.com/111565747_d.html', '532', '0', 'http://fjrs168.blog.hexun.com/p1/default.html');
INSERT INTO `blog` VALUES ('5', '创业板如若新低，六月将毫无意义', 'http://fjrs168.blog.hexun.com/111540476_d.html', '5', '0', 'http://fjrs168.blog.hexun.com/p1/default.html');
INSERT INTO `blog` VALUES ('6', '无法改变大周期震荡筑底格局', 'http://fjrs168.blog.hexun.com/111525713_d.html', '3', '0', 'http://fjrs168.blog.hexun.com/p1/default.html');
INSERT INTO `blog` VALUES ('7', '熊途漫漫，尽早更正投资价值观', 'http://fjrs168.blog.hexun.com/111511731_d.html', '686', '0', 'http://fjrs168.blog.hexun.com/p1/default.html');
INSERT INTO `blog` VALUES ('8', '风险尚未解除，此点位尤为关键！', 'http://fjrs168.blog.hexun.com/111455022_d.html', '22', '0', 'http://fjrs168.blog.hexun.com/p1/default.html');
INSERT INTO `blog` VALUES ('9', '市场将再度探底，股民速找庇护所', 'http://fjrs168.blog.hexun.com/111439827_d.html', '3', '0', 'http://fjrs168.blog.hexun.com/p1/default.html');
INSERT INTO `blog` VALUES ('10', '医药白马股迎良好配置周期（附股）', 'http://fjrs168.blog.hexun.com/111423962_d.html', '550', '0', 'http://fjrs168.blog.hexun.com/p1/default.html');
INSERT INTO `blog` VALUES ('11', '等待中线上升趋势线争夺结果', 'http://fjrs168.blog.hexun.com/109961570_d.html', '567', '0', 'http://fjrs168.blog.hexun.com/p8/default.html');
INSERT INTO `blog` VALUES ('12', '市场缺少强有力的领跑者', 'http://fjrs168.blog.hexun.com/109930298_d.html', '797', '0', 'http://fjrs168.blog.hexun.com/p8/default.html');
INSERT INTO `blog` VALUES ('13', '地方国资改革即将接力央企混改', 'http://fjrs168.blog.hexun.com/109914818_d.html', '26', '0', 'http://fjrs168.blog.hexun.com/p8/default.html');
INSERT INTO `blog` VALUES ('14', '再次步入调整是不争的事实', 'http://fjrs168.blog.hexun.com/109897140_d.html', '657', '0', 'http://fjrs168.blog.hexun.com/p8/default.html');
INSERT INTO `blog` VALUES ('15', '构建双顶之后回落巩固箱体结构', 'http://fjrs168.blog.hexun.com/109868401_d.html', '547', '0', 'http://fjrs168.blog.hexun.com/p8/default.html');
INSERT INTO `blog` VALUES ('16', '接连反弹还是被套该怎么办？', 'http://fjrs168.blog.hexun.com/109851214_d.html', '550', '0', 'http://fjrs168.blog.hexun.com/p8/default.html');
INSERT INTO `blog` VALUES ('17', '无量上涨只是粉饰太平', 'http://fjrs168.blog.hexun.com/109834270_d.html', '678', '0', 'http://fjrs168.blog.hexun.com/p8/default.html');
INSERT INTO `blog` VALUES ('18', '市场即将进入群龙无首的境地', 'http://fjrs168.blog.hexun.com/109787646_d.html', '583', '0', 'http://fjrs168.blog.hexun.com/p8/default.html');
INSERT INTO `blog` VALUES ('19', '年底能守住年线就是胜利', 'http://fjrs168.blog.hexun.com/109769278_d.html', '548', '0', 'http://fjrs168.blog.hexun.com/p8/default.html');
INSERT INTO `blog` VALUES ('20', '精选政策叠加品种来应对牛皮市', 'http://fjrs168.blog.hexun.com/109751474_d.html', '550', '0', 'http://fjrs168.blog.hexun.com/p8/default.html');
INSERT INTO `blog` VALUES ('21', '三大主线不会因市场巨震而动摇', 'http://fjrs168.blog.hexun.com/111011778_d.html', '603', '0', 'http://fjrs168.blog.hexun.com/p4/default.html');
INSERT INTO `blog` VALUES ('22', '全年政策机遇最大的五大板块', 'http://fjrs168.blog.hexun.com/110999529_d.html', '674', '0', 'http://fjrs168.blog.hexun.com/p4/default.html');
INSERT INTO `blog` VALUES ('23', '人工智能巨头迎来长期价值投资（附股）', 'http://fjrs168.blog.hexun.com/110960191_d.html', '1675', '3', 'http://fjrs168.blog.hexun.com/p4/default.html');
INSERT INTO `blog` VALUES ('24', '鸡犬升天之后谁会落得一地鸡毛', 'http://fjrs168.blog.hexun.com/110943178_d.html', '107', '0', 'http://fjrs168.blog.hexun.com/p4/default.html');
INSERT INTO `blog` VALUES ('25', '多角度挖掘雄安新区历史性机会（附股）', 'http://fjrs168.blog.hexun.com/110927194_d.html', '44', '0', 'http://fjrs168.blog.hexun.com/p4/default.html');
INSERT INTO `blog` VALUES ('26', '短期涨跌迷惑双眼，中期运行点位曝光！', 'http://fjrs168.blog.hexun.com/110869081_d.html', '891', '0', 'http://fjrs168.blog.hexun.com/p4/default.html');
INSERT INTO `blog` VALUES ('27', '市场已经提前进入小长假模式', 'http://fjrs168.blog.hexun.com/110852128_d.html', '59', '0', 'http://fjrs168.blog.hexun.com/p4/default.html');
INSERT INTO `blog` VALUES ('28', '市场上涨无意还需注重价值投资', 'http://fjrs168.blog.hexun.com/110817134_d.html', '31', '0', 'http://fjrs168.blog.hexun.com/p4/default.html');
INSERT INTO `blog` VALUES ('29', '蹦极走势预示二季度个股为王', 'http://fjrs168.blog.hexun.com/110780927_d.html', '969', '0', 'http://fjrs168.blog.hexun.com/p4/default.html');
INSERT INTO `blog` VALUES ('30', '一带一路重大机遇窗口来临（附股）', 'http://fjrs168.blog.hexun.com/110761910_d.html', '91', '0', 'http://fjrs168.blog.hexun.com/p4/default.html');
INSERT INTO `blog` VALUES ('31', '全年市场摆脱不了大震荡格局', 'http://fjrs168.blog.hexun.com/111408924_d.html', '749', '1', 'http://fjrs168.blog.hexun.com/p2/default.html');
INSERT INTO `blog` VALUES ('32', '抱团次新回避大盘二次探底', 'http://fjrs168.blog.hexun.com/111383915_d.html', '63', '0', 'http://fjrs168.blog.hexun.com/p2/default.html');
INSERT INTO `blog` VALUES ('33', '当前是非常好的做多窗口期', 'http://fjrs168.blog.hexun.com/111355715_d.html', '579', '0', 'http://fjrs168.blog.hexun.com/p2/default.html');
INSERT INTO `blog` VALUES ('34', '最好的操作是无招胜有招', 'http://fjrs168.blog.hexun.com/111329273_d.html', '542', '0', 'http://fjrs168.blog.hexun.com/p2/default.html');
INSERT INTO `blog` VALUES ('35', '每次缺口的快速回补预示什么', 'http://fjrs168.blog.hexun.com/111306321_d.html', '621', '0', 'http://fjrs168.blog.hexun.com/p2/default.html');
INSERT INTO `blog` VALUES ('36', '出现这两个条件才是操作时机', 'http://fjrs168.blog.hexun.com/111292594_d.html', '562', '0', 'http://fjrs168.blog.hexun.com/p2/default.html');
INSERT INTO `blog` VALUES ('37', '醒醒，别把肉割在地板上！', 'http://fjrs168.blog.hexun.com/111279769_d.html', '745', '3', 'http://fjrs168.blog.hexun.com/p2/default.html');
INSERT INTO `blog` VALUES ('38', '大盘呈恶性循环，次新将卷土重来', 'http://fjrs168.blog.hexun.com/111268033_d.html', '551', '0', 'http://fjrs168.blog.hexun.com/p2/default.html');
INSERT INTO `blog` VALUES ('39', '雄安巨震谨防监管再度干涉', 'http://fjrs168.blog.hexun.com/111228324_d.html', '580', '0', 'http://fjrs168.blog.hexun.com/p2/default.html');
INSERT INTO `blog` VALUES ('40', '四大因素迫使市场再度震荡寻底', 'http://fjrs168.blog.hexun.com/111199272_d.html', '44', '0', 'http://fjrs168.blog.hexun.com/p2/default.html');
INSERT INTO `blog` VALUES ('41', '回踩短期均线是最后的低吸机会', 'http://fjrs168.blog.hexun.com/110339648_d.html', '607', '0', 'http://fjrs168.blog.hexun.com/p6/default.html');
INSERT INTO `blog` VALUES ('42', '主力不走此路必将玉石俱焚', 'http://fjrs168.blog.hexun.com/110321254_d.html', '616', '0', 'http://fjrs168.blog.hexun.com/p6/default.html');
INSERT INTO `blog` VALUES ('43', '月底市场将进入加速赶顶阶段', 'http://fjrs168.blog.hexun.com/110302094_d.html', '1486', '1', 'http://fjrs168.blog.hexun.com/p6/default.html');
INSERT INTO `blog` VALUES ('44', '集火蓝筹防止踏空', 'http://fjrs168.blog.hexun.com/110283024_d.html', '613', '0', 'http://fjrs168.blog.hexun.com/p6/default.html');
INSERT INTO `blog` VALUES ('45', '此时并非养老金入市节点', 'http://fjrs168.blog.hexun.com/110264379_d.html', '721', '1', 'http://fjrs168.blog.hexun.com/p6/default.html');
INSERT INTO `blog` VALUES ('46', '趋势未走完冲击3300指日可待', 'http://fjrs168.blog.hexun.com/110231943_d.html', '651', '0', 'http://fjrs168.blog.hexun.com/p6/default.html');
INSERT INTO `blog` VALUES ('47', '无奈进入调整的极限点位曝光', 'http://fjrs168.blog.hexun.com/110214788_d.html', '633', '0', 'http://fjrs168.blog.hexun.com/p6/default.html');
INSERT INTO `blog` VALUES ('48', '接下来的走势以及最佳操作策略', 'http://fjrs168.blog.hexun.com/110197870_d.html', '57', '0', 'http://fjrs168.blog.hexun.com/p6/default.html');
INSERT INTO `blog` VALUES ('49', '趋势为王市场不会轻易调头向下', 'http://fjrs168.blog.hexun.com/110183015_d.html', '569', '1', 'http://fjrs168.blog.hexun.com/p6/default.html');
INSERT INTO `blog` VALUES ('50', '猛烈的调整时间将在三月出现', 'http://fjrs168.blog.hexun.com/110169816_d.html', '841', '0', 'http://fjrs168.blog.hexun.com/p6/default.html');
INSERT INTO `blog` VALUES ('51', '60日线还有反复但反弹还未结束', 'http://fjrs168.blog.hexun.com/110149605_d.html', '561', '0', 'http://fjrs168.blog.hexun.com/p7/default.html');
INSERT INTO `blog` VALUES ('52', '不想错过反弹行情就应配置两会题材', 'http://fjrs168.blog.hexun.com/110136042_d.html', '650', '0', 'http://fjrs168.blog.hexun.com/p7/default.html');
INSERT INTO `blog` VALUES ('53', '流动性收紧延缓了反弹预期', 'http://fjrs168.blog.hexun.com/110122756_d.html', '1746', '0', 'http://fjrs168.blog.hexun.com/p7/default.html');
INSERT INTO `blog` VALUES ('54', '本月的操作策略就是死拿不放', 'http://fjrs168.blog.hexun.com/110110012_d.html', '647', '0', 'http://fjrs168.blog.hexun.com/p7/default.html');
INSERT INTO `blog` VALUES ('55', '春季反弹行情迟早会来', 'http://fjrs168.blog.hexun.com/110098668_d.html', '555', '0', 'http://fjrs168.blog.hexun.com/p7/default.html');
INSERT INTO `blog` VALUES ('56', '三方面确认节后会出现波段反弹', 'http://fjrs168.blog.hexun.com/110058247_d.html', '126', '0', 'http://fjrs168.blog.hexun.com/p7/default.html');
INSERT INTO `blog` VALUES ('57', '备足资金准备在下周初进场抄底', 'http://fjrs168.blog.hexun.com/110037524_d.html', '55', '0', 'http://fjrs168.blog.hexun.com/p7/default.html');
INSERT INTO `blog` VALUES ('58', '静待回落确认之后的抄底机会', 'http://fjrs168.blog.hexun.com/110025558_d.html', '19', '0', 'http://fjrs168.blog.hexun.com/p7/default.html');
INSERT INTO `blog` VALUES ('59', '风险大幅宣泄抄底时机越发临近', 'http://fjrs168.blog.hexun.com/109999421_d.html', '669', '0', 'http://fjrs168.blog.hexun.com/p7/default.html');
INSERT INTO `blog` VALUES ('60', '市场进入加速赶底以及挖坑阶段', 'http://fjrs168.blog.hexun.com/109985866_d.html', '576', '0', 'http://fjrs168.blog.hexun.com/p7/default.html');
INSERT INTO `blog` VALUES ('61', '五月市场运行规律及操作策略', 'http://fjrs168.blog.hexun.com/111187259_d.html', '603', '0', 'http://fjrs168.blog.hexun.com/p3/default.html');
INSERT INTO `blog` VALUES ('62', '稀土板块迎来结构性行情（附股）', 'http://fjrs168.blog.hexun.com/111164481_d.html', '85', '0', 'http://fjrs168.blog.hexun.com/p3/default.html');
INSERT INTO `blog` VALUES ('63', '投资者应重拾信心参与反弹', 'http://fjrs168.blog.hexun.com/111151466_d.html', '582', '0', 'http://fjrs168.blog.hexun.com/p3/default.html');
INSERT INTO `blog` VALUES ('64', '大盘进入艰难的阴跌磨底阶段', 'http://fjrs168.blog.hexun.com/111138977_d.html', '64', '0', 'http://fjrs168.blog.hexun.com/p3/default.html');
INSERT INTO `blog` VALUES ('65', '补仓还是斩仓看最后一道防线', 'http://fjrs168.blog.hexun.com/111126376_d.html', '68', '0', 'http://fjrs168.blog.hexun.com/p3/default.html');
INSERT INTO `blog` VALUES ('66', '底部雏形已现，此时应该贪婪', 'http://fjrs168.blog.hexun.com/111113811_d.html', '660', '0', 'http://fjrs168.blog.hexun.com/p3/default.html');
INSERT INTO `blog` VALUES ('67', '止跌之后市场及投资者应该做什么', 'http://fjrs168.blog.hexun.com/111080158_d.html', '611', '0', 'http://fjrs168.blog.hexun.com/p3/default.html');
INSERT INTO `blog` VALUES ('68', '随时准备入场与主力抢夺廉价筹码', 'http://fjrs168.blog.hexun.com/111067260_d.html', '660', '0', 'http://fjrs168.blog.hexun.com/p3/default.html');
INSERT INTO `blog` VALUES ('69', '龙头复牌牵动神经，中期难改震荡格局', 'http://fjrs168.blog.hexun.com/111043159_d.html', '52', '0', 'http://fjrs168.blog.hexun.com/p3/default.html');
INSERT INTO `blog` VALUES ('70', '雄安龙头特停将刺激个股更加疯狂', 'http://fjrs168.blog.hexun.com/111023689_d.html', '577', '2', 'http://fjrs168.blog.hexun.com/p3/default.html');
INSERT INTO `blog` VALUES ('71', '医改促使医药行业迎爆发式增长（附股）', 'http://fjrs168.blog.hexun.com/110742000_d.html', '73', '0', 'http://fjrs168.blog.hexun.com/p5/default.html');
INSERT INTO `blog` VALUES ('72', '趋势震荡偏空的运行格局已经确认', 'http://fjrs168.blog.hexun.com/110723963_d.html', '607', '0', 'http://fjrs168.blog.hexun.com/p5/default.html');
INSERT INTO `blog` VALUES ('73', '越是调整高送转概念越强势（附股）', 'http://fjrs168.blog.hexun.com/110705462_d.html', '701', '0', 'http://fjrs168.blog.hexun.com/p5/default.html');
INSERT INTO `blog` VALUES ('74', '扣紧次新股与高送转抱团取暖', 'http://fjrs168.blog.hexun.com/110674580_d.html', '27', '0', 'http://fjrs168.blog.hexun.com/p5/default.html');
INSERT INTO `blog` VALUES ('75', 'ppp概念迎落地爆发元年（附股）', 'http://fjrs168.blog.hexun.com/110655061_d.html', '836', '0', 'http://fjrs168.blog.hexun.com/p5/default.html');
INSERT INTO `blog` VALUES ('76', '三大利空造就多事之春', 'http://fjrs168.blog.hexun.com/110593975_d.html', '44', '0', 'http://fjrs168.blog.hexun.com/p5/default.html');
INSERT INTO `blog` VALUES ('77', '两会期间集火题材把酒言欢', 'http://fjrs168.blog.hexun.com/110520201_d.html', '572', '0', 'http://fjrs168.blog.hexun.com/p5/default.html');
INSERT INTO `blog` VALUES ('78', '借助维稳珍惜最后的撤离机会', 'http://fjrs168.blog.hexun.com/110431817_d.html', '592', '0', 'http://fjrs168.blog.hexun.com/p5/default.html');
INSERT INTO `blog` VALUES ('79', '见好就收等待两会结束从长计议', 'http://fjrs168.blog.hexun.com/110413399_d.html', '1175', '0', 'http://fjrs168.blog.hexun.com/p5/default.html');
INSERT INTO `blog` VALUES ('80', '本周把握两个节点堤防一个风险', 'http://fjrs168.blog.hexun.com/110373822_d.html', '588', '0', 'http://fjrs168.blog.hexun.com/p5/default.html');
INSERT INTO `blog` VALUES ('81', '千万不要以为反弹行情来了', 'http://fjrs168.blog.hexun.com/109732643_d.html', '649', '0', 'http://fjrs168.blog.hexun.com/p9/default.html');
INSERT INTO `blog` VALUES ('82', '本周市场将面临更加严峻考验', 'http://fjrs168.blog.hexun.com/109714147_d.html', '944', '0', 'http://fjrs168.blog.hexun.com/p9/default.html');
INSERT INTO `blog` VALUES ('83', '市场将进入大周期的震荡筑底阶段', 'http://fjrs168.blog.hexun.com/109683875_d.html', '708', '0', 'http://fjrs168.blog.hexun.com/p9/default.html');
INSERT INTO `blog` VALUES ('84', '目前出现的反弹持续性难以维持', 'http://fjrs168.blog.hexun.com/109665246_d.html', '569', '0', 'http://fjrs168.blog.hexun.com/p9/default.html');
INSERT INTO `blog` VALUES ('85', '调整最快在农历新年之后结束', 'http://fjrs168.blog.hexun.com/109644829_d.html', '649', '0', 'http://fjrs168.blog.hexun.com/p9/default.html');
INSERT INTO `blog` VALUES ('86', '抄底角度来看时间还很充裕', 'http://fjrs168.blog.hexun.com/109623488_d.html', '603', '0', 'http://fjrs168.blog.hexun.com/p9/default.html');
INSERT INTO `blog` VALUES ('87', '中小创将接力主板进入反弹周期', 'http://fjrs168.blog.hexun.com/109602521_d.html', '598', '0', 'http://fjrs168.blog.hexun.com/p9/default.html');
INSERT INTO `blog` VALUES ('88', '上证破位解析以及两大买点参考', 'http://fjrs168.blog.hexun.com/109567183_d.html', '39', '0', 'http://fjrs168.blog.hexun.com/p9/default.html');
INSERT INTO `blog` VALUES ('89', '震荡巩固60日线才能确保安全', 'http://fjrs168.blog.hexun.com/109527241_d.html', '1117', '0', 'http://fjrs168.blog.hexun.com/p9/default.html');
INSERT INTO `blog` VALUES ('90', '3140附近可大胆进场抢反弹', 'http://fjrs168.blog.hexun.com/109506868_d.html', '589', '0', 'http://fjrs168.blog.hexun.com/p9/default.html');
