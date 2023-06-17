/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : sinema_otomasyonu

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-05-15 15:34:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bilet
-- ----------------------------
DROP TABLE IF EXISTS `bilet`;
CREATE TABLE `bilet` (
  `bilet_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `bilet_adi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `film_id` int(11) NOT NULL,
  `koltuk_id` int(11) NOT NULL,
  `salon_id` int(11) NOT NULL,
  `seans_id` int(11) NOT NULL,
  PRIMARY KEY (`bilet_id`),
  KEY `koltuk_id` (`koltuk_id`) USING BTREE,
  KEY `salon_id` (`salon_id`) USING BTREE,
  KEY `film_id` (`film_id`) USING BTREE,
  CONSTRAINT `film_id` FOREIGN KEY (`film_id`) REFERENCES `filmler` (`film_id`),
  CONSTRAINT `koltuk_id` FOREIGN KEY (`koltuk_id`) REFERENCES `koltuk` (`koltuk_id`),
  CONSTRAINT `salon_id` FOREIGN KEY (`salon_id`) REFERENCES `salon` (`salon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bilet
-- ----------------------------
INSERT INTO `bilet` VALUES ('111C6', 'Film 1 Seans 1 Salon 1 C6 Nolu Koltuk', '1', '28', '1', '1');
INSERT INTO `bilet` VALUES ('111D6', 'Film 1 Seans 1 Salon 1 D6 Nolu Koltuk', '1', '39', '1', '1');
INSERT INTO `bilet` VALUES ('111E6', 'Film 1 Seans 1 Salon 1 E6 Nolu Koltuk', '1', '61', '1', '1');
INSERT INTO `bilet` VALUES ('111J1', 'Film 1 Seans 1 Salon 1 J1 Nolu Koltuk', '1', '78', '1', '1');
INSERT INTO `bilet` VALUES ('111J4', 'Film 1 Seans 1 Salon 1 J4 Nolu Koltuk', '1', '81', '1', '1');
INSERT INTO `bilet` VALUES ('111J6', 'Film 1 Seans 1 Salon 1 J6 Nolu Koltuk', '1', '83', '1', '1');
INSERT INTO `bilet` VALUES ('111J7', 'Film 1 Seans 1 Salon 1 J7 Nolu Koltuk', '1', '84', '1', '1');
INSERT INTO `bilet` VALUES ('111K1', 'Film 1 Seans 1 Salon 1 K1 Nolu Koltuk', '1', '89', '1', '1');
INSERT INTO `bilet` VALUES ('111K11', 'Film 1 Seans 1 Salon 1 K11 Nolu Koltuk', '1', '100', '1', '1');
INSERT INTO `bilet` VALUES ('111K4', 'Film 1 Seans 1 Salon 1 K4 Nolu Koltuk', '1', '92', '1', '1');
INSERT INTO `bilet` VALUES ('111K8', 'Film 1 Seans 1 Salon 1 K8 Nolu Koltuk', '1', '96', '1', '1');
INSERT INTO `bilet` VALUES ('113G4', 'Film 1 Seans 1 Salon 3 G4 Nolu Koltuk', '1', '207', '3', '1');
INSERT INTO `bilet` VALUES ('153B2', 'Film 1 Seans 5 Salon 3 B2 Nolu Koltuk', '1', '173', '3', '5');
INSERT INTO `bilet` VALUES ('153F5', 'Film 1 Seans 5 Salon 3 F5 Nolu Koltuk', '1', '200', '3', '5');
INSERT INTO `bilet` VALUES ('2102G4', 'Film 2 Seans 10 Salon 2 G4 Nolu Koltuk', '2', '143', '2', '10');
INSERT INTO `bilet` VALUES ('221F7', 'Film 2 Seans 2 Salon 1 F7 Nolu Koltuk', '2', '51', '1', '2');
INSERT INTO `bilet` VALUES ('221J5', 'Film 2 Seans 2 Salon 1 J5 Nolu Koltuk', '2', '82', '1', '2');
INSERT INTO `bilet` VALUES ('222C9', 'Film 2 Seans 2 Salon 2 C9 Nolu Koltuk', '2', '121', '2', '2');
INSERT INTO `bilet` VALUES ('222D9', 'Film 2 Seans 2 Salon 2 D9 Nolu Koltuk', '2', '130', '2', '2');
INSERT INTO `bilet` VALUES ('222F9', 'Film 2 Seans 2 Salon 2 F9 Nolu Koltuk', '2', '139', '2', '2');
INSERT INTO `bilet` VALUES ('222G9', 'Film 2 Seans 2 Salon 2 G9 Nolu Koltuk', '2', '148', '2', '2');
INSERT INTO `bilet` VALUES ('261K4', 'Film 2 Seans 6 Salon 1 K4 Nolu Koltuk', '2', '92', '1', '6');
INSERT INTO `bilet` VALUES ('311A11', 'Film 3 Seans 1 Salon 1 A11 Nolu Koltuk', '3', '11', '1', '1');
INSERT INTO `bilet` VALUES ('311F8', 'Film 3 Seans 1 Salon 1 F8 Nolu Koltuk', '3', '52', '1', '1');
INSERT INTO `bilet` VALUES ('311F9', 'Film 3 Seans 1 Salon 1 F9 Nolu Koltuk', '3', '53', '1', '1');
INSERT INTO `bilet` VALUES ('311G8', 'Film 3 Seans 1 Salon 1 G8 Nolu Koltuk', '3', '74', '1', '1');
INSERT INTO `bilet` VALUES ('311G9', 'Film 3 Seans 1 Salon 1 G9 Nolu Koltuk', '3', '75', '1', '1');

-- ----------------------------
-- Table structure for filmler
-- ----------------------------
DROP TABLE IF EXISTS `filmler`;
CREATE TABLE `filmler` (
  `film_id` int(11) NOT NULL,
  `film_adi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `film_tur_id` int(11) NOT NULL,
  `film_yonetmeni` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `film_oyuncular_id` int(11) NOT NULL,
  PRIMARY KEY (`film_id`),
  KEY `film_tur_id` (`film_tur_id`) USING BTREE,
  KEY `film_oyuncular_id` (`film_oyuncular_id`) USING BTREE,
  CONSTRAINT `film_oyuncular_id` FOREIGN KEY (`film_oyuncular_id`) REFERENCES `oyuncular` (`oyuncu_id`),
  CONSTRAINT `film_tur_id` FOREIGN KEY (`film_tur_id`) REFERENCES `turler` (`tur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of filmler
-- ----------------------------
INSERT INTO `filmler` VALUES ('1', 'Küçük Esnaf', '6', 'Bedran Güzel', '2');
INSERT INTO `filmler` VALUES ('2', 'Kolpaçino 3. Devre', '6', 'Şafak Sezer', '1');
INSERT INTO `filmler` VALUES ('3', 'Annemin Yarası', '7', 'Ozan Açıktan', '2');

-- ----------------------------
-- Table structure for film_seans
-- ----------------------------
DROP TABLE IF EXISTS `film_seans`;
CREATE TABLE `film_seans` (
  `film_id` int(11) NOT NULL,
  `seans_id` int(11) NOT NULL,
  KEY `film_id` (`film_id`) USING BTREE,
  KEY `seans_id` (`seans_id`) USING BTREE,
  CONSTRAINT `film__id` FOREIGN KEY (`film_id`) REFERENCES `filmler` (`film_id`),
  CONSTRAINT `seans__id` FOREIGN KEY (`seans_id`) REFERENCES `seans` (`seans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of film_seans
-- ----------------------------
INSERT INTO `film_seans` VALUES ('1', '1');
INSERT INTO `film_seans` VALUES ('1', '5');
INSERT INTO `film_seans` VALUES ('1', '9');
INSERT INTO `film_seans` VALUES ('1', '16');
INSERT INTO `film_seans` VALUES ('2', '2');
INSERT INTO `film_seans` VALUES ('2', '6');
INSERT INTO `film_seans` VALUES ('2', '10');
INSERT INTO `film_seans` VALUES ('2', '15');
INSERT INTO `film_seans` VALUES ('3', '1');
INSERT INTO `film_seans` VALUES ('3', '6');
INSERT INTO `film_seans` VALUES ('3', '8');
INSERT INTO `film_seans` VALUES ('3', '13');

-- ----------------------------
-- Table structure for koltuk
-- ----------------------------
DROP TABLE IF EXISTS `koltuk`;
CREATE TABLE `koltuk` (
  `koltuk_id` int(11) NOT NULL,
  `salon_id` int(11) NOT NULL,
  `koltuk_harf` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `koltuk_rakam` int(3) DEFAULT NULL,
  PRIMARY KEY (`koltuk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of koltuk
-- ----------------------------
INSERT INTO `koltuk` VALUES ('1', '1', 'A', '1');
INSERT INTO `koltuk` VALUES ('2', '1', 'A', '2');
INSERT INTO `koltuk` VALUES ('3', '1', 'A', '3');
INSERT INTO `koltuk` VALUES ('4', '1', 'A', '4');
INSERT INTO `koltuk` VALUES ('5', '1', 'A', '5');
INSERT INTO `koltuk` VALUES ('6', '1', 'A', '6');
INSERT INTO `koltuk` VALUES ('7', '1', 'A', '7');
INSERT INTO `koltuk` VALUES ('8', '1', 'A', '8');
INSERT INTO `koltuk` VALUES ('9', '1', 'A', '9');
INSERT INTO `koltuk` VALUES ('10', '1', 'A', '10');
INSERT INTO `koltuk` VALUES ('11', '1', 'A', '11');
INSERT INTO `koltuk` VALUES ('12', '1', 'B', '1');
INSERT INTO `koltuk` VALUES ('13', '1', 'B', '2');
INSERT INTO `koltuk` VALUES ('14', '1', 'B', '3');
INSERT INTO `koltuk` VALUES ('15', '1', 'B', '4');
INSERT INTO `koltuk` VALUES ('16', '1', 'B', '5');
INSERT INTO `koltuk` VALUES ('17', '1', 'B', '6');
INSERT INTO `koltuk` VALUES ('18', '1', 'B', '7');
INSERT INTO `koltuk` VALUES ('19', '1', 'B', '8');
INSERT INTO `koltuk` VALUES ('20', '1', 'B', '9');
INSERT INTO `koltuk` VALUES ('21', '1', 'B', '10');
INSERT INTO `koltuk` VALUES ('22', '1', 'B', '11');
INSERT INTO `koltuk` VALUES ('23', '1', 'C', '1');
INSERT INTO `koltuk` VALUES ('24', '1', 'C', '2');
INSERT INTO `koltuk` VALUES ('25', '1', 'C', '3');
INSERT INTO `koltuk` VALUES ('26', '1', 'C', '4');
INSERT INTO `koltuk` VALUES ('27', '1', 'C', '5');
INSERT INTO `koltuk` VALUES ('28', '1', 'C', '6');
INSERT INTO `koltuk` VALUES ('29', '1', 'C', '7');
INSERT INTO `koltuk` VALUES ('30', '1', 'C', '8');
INSERT INTO `koltuk` VALUES ('31', '1', 'C', '9');
INSERT INTO `koltuk` VALUES ('32', '1', 'C', '10');
INSERT INTO `koltuk` VALUES ('33', '1', 'C', '11');
INSERT INTO `koltuk` VALUES ('34', '1', 'D', '1');
INSERT INTO `koltuk` VALUES ('35', '1', 'D', '2');
INSERT INTO `koltuk` VALUES ('36', '1', 'D', '3');
INSERT INTO `koltuk` VALUES ('37', '1', 'D', '4');
INSERT INTO `koltuk` VALUES ('38', '1', 'D', '5');
INSERT INTO `koltuk` VALUES ('39', '1', 'D', '6');
INSERT INTO `koltuk` VALUES ('40', '1', 'D', '7');
INSERT INTO `koltuk` VALUES ('41', '1', 'D', '8');
INSERT INTO `koltuk` VALUES ('42', '1', 'D', '9');
INSERT INTO `koltuk` VALUES ('43', '1', 'D', '10');
INSERT INTO `koltuk` VALUES ('44', '1', 'D', '11');
INSERT INTO `koltuk` VALUES ('45', '1', 'F', '1');
INSERT INTO `koltuk` VALUES ('46', '1', 'F', '2');
INSERT INTO `koltuk` VALUES ('47', '1', 'F', '3');
INSERT INTO `koltuk` VALUES ('48', '1', 'F', '4');
INSERT INTO `koltuk` VALUES ('49', '1', 'F', '5');
INSERT INTO `koltuk` VALUES ('50', '1', 'F', '6');
INSERT INTO `koltuk` VALUES ('51', '1', 'F', '7');
INSERT INTO `koltuk` VALUES ('52', '1', 'F', '8');
INSERT INTO `koltuk` VALUES ('53', '1', 'F', '9');
INSERT INTO `koltuk` VALUES ('54', '1', 'F', '10');
INSERT INTO `koltuk` VALUES ('55', '1', 'F', '11');
INSERT INTO `koltuk` VALUES ('56', '1', 'E', '1');
INSERT INTO `koltuk` VALUES ('57', '1', 'E', '2');
INSERT INTO `koltuk` VALUES ('58', '1', 'E', '3');
INSERT INTO `koltuk` VALUES ('59', '1', 'E', '4');
INSERT INTO `koltuk` VALUES ('60', '1', 'E', '5');
INSERT INTO `koltuk` VALUES ('61', '1', 'E', '6');
INSERT INTO `koltuk` VALUES ('62', '1', 'E', '7');
INSERT INTO `koltuk` VALUES ('63', '1', 'E', '8');
INSERT INTO `koltuk` VALUES ('64', '1', 'E', '9');
INSERT INTO `koltuk` VALUES ('65', '1', 'E', '10');
INSERT INTO `koltuk` VALUES ('66', '1', 'E', '11');
INSERT INTO `koltuk` VALUES ('67', '1', 'G', '1');
INSERT INTO `koltuk` VALUES ('68', '1', 'G', '2');
INSERT INTO `koltuk` VALUES ('69', '1', 'G', '3');
INSERT INTO `koltuk` VALUES ('70', '1', 'G', '4');
INSERT INTO `koltuk` VALUES ('71', '1', 'G', '5');
INSERT INTO `koltuk` VALUES ('72', '1', 'G', '6');
INSERT INTO `koltuk` VALUES ('73', '1', 'G', '7');
INSERT INTO `koltuk` VALUES ('74', '1', 'G', '8');
INSERT INTO `koltuk` VALUES ('75', '1', 'G', '9');
INSERT INTO `koltuk` VALUES ('76', '1', 'G', '10');
INSERT INTO `koltuk` VALUES ('77', '1', 'G', '11');
INSERT INTO `koltuk` VALUES ('78', '1', 'J', '1');
INSERT INTO `koltuk` VALUES ('79', '1', 'J', '2');
INSERT INTO `koltuk` VALUES ('80', '1', 'J', '3');
INSERT INTO `koltuk` VALUES ('81', '1', 'J', '4');
INSERT INTO `koltuk` VALUES ('82', '1', 'J', '5');
INSERT INTO `koltuk` VALUES ('83', '1', 'J', '6');
INSERT INTO `koltuk` VALUES ('84', '1', 'J', '7');
INSERT INTO `koltuk` VALUES ('85', '1', 'J', '8');
INSERT INTO `koltuk` VALUES ('86', '1', 'J', '9');
INSERT INTO `koltuk` VALUES ('87', '1', 'J', '10');
INSERT INTO `koltuk` VALUES ('88', '1', 'J', '11');
INSERT INTO `koltuk` VALUES ('89', '1', 'K', '1');
INSERT INTO `koltuk` VALUES ('90', '1', 'K', '2');
INSERT INTO `koltuk` VALUES ('91', '1', 'K', '3');
INSERT INTO `koltuk` VALUES ('92', '1', 'K', '4');
INSERT INTO `koltuk` VALUES ('93', '1', 'K', '5');
INSERT INTO `koltuk` VALUES ('94', '1', 'K', '6');
INSERT INTO `koltuk` VALUES ('95', '1', 'K', '7');
INSERT INTO `koltuk` VALUES ('96', '1', 'K', '8');
INSERT INTO `koltuk` VALUES ('98', '1', 'K', '9');
INSERT INTO `koltuk` VALUES ('99', '1', 'K', '10');
INSERT INTO `koltuk` VALUES ('100', '1', 'K', '11');
INSERT INTO `koltuk` VALUES ('101', '2', 'A', '1');
INSERT INTO `koltuk` VALUES ('102', '2', 'A', '2');
INSERT INTO `koltuk` VALUES ('103', '2', 'A', '6');
INSERT INTO `koltuk` VALUES ('104', '2', 'A', '7');
INSERT INTO `koltuk` VALUES ('107', '2', 'B', '2');
INSERT INTO `koltuk` VALUES ('108', '2', 'B', '3');
INSERT INTO `koltuk` VALUES ('109', '2', 'B', '4');
INSERT INTO `koltuk` VALUES ('110', '2', 'B', '6');
INSERT INTO `koltuk` VALUES ('111', '2', 'B', '7');
INSERT INTO `koltuk` VALUES ('112', '2', 'B', '9');
INSERT INTO `koltuk` VALUES ('113', '2', 'C', '1');
INSERT INTO `koltuk` VALUES ('114', '2', 'C', '2');
INSERT INTO `koltuk` VALUES ('115', '2', 'C', '3');
INSERT INTO `koltuk` VALUES ('116', '2', 'C', '4');
INSERT INTO `koltuk` VALUES ('117', '2', 'C', '5');
INSERT INTO `koltuk` VALUES ('118', '2', 'C', '6');
INSERT INTO `koltuk` VALUES ('119', '2', 'C', '7');
INSERT INTO `koltuk` VALUES ('120', '2', 'C', '8');
INSERT INTO `koltuk` VALUES ('121', '2', 'C', '9');
INSERT INTO `koltuk` VALUES ('122', '2', 'D', '1');
INSERT INTO `koltuk` VALUES ('123', '2', 'D', '2');
INSERT INTO `koltuk` VALUES ('124', '2', 'D', '3');
INSERT INTO `koltuk` VALUES ('125', '2', 'D', '4');
INSERT INTO `koltuk` VALUES ('126', '2', 'D', '5');
INSERT INTO `koltuk` VALUES ('127', '2', 'D', '6');
INSERT INTO `koltuk` VALUES ('128', '2', 'D', '7');
INSERT INTO `koltuk` VALUES ('129', '2', 'D', '8');
INSERT INTO `koltuk` VALUES ('130', '2', 'D', '9');
INSERT INTO `koltuk` VALUES ('131', '2', 'F', '1');
INSERT INTO `koltuk` VALUES ('132', '2', 'F', '2');
INSERT INTO `koltuk` VALUES ('133', '2', 'F', '3');
INSERT INTO `koltuk` VALUES ('134', '2', 'F', '4');
INSERT INTO `koltuk` VALUES ('135', '2', 'F', '5');
INSERT INTO `koltuk` VALUES ('136', '2', 'F', '6');
INSERT INTO `koltuk` VALUES ('137', '2', 'F', '7');
INSERT INTO `koltuk` VALUES ('138', '2', 'F', '8');
INSERT INTO `koltuk` VALUES ('139', '2', 'F', '9');
INSERT INTO `koltuk` VALUES ('140', '2', 'G', '1');
INSERT INTO `koltuk` VALUES ('141', '2', 'G', '2');
INSERT INTO `koltuk` VALUES ('142', '2', 'G', '3');
INSERT INTO `koltuk` VALUES ('143', '2', 'G', '4');
INSERT INTO `koltuk` VALUES ('144', '2', 'G', '5');
INSERT INTO `koltuk` VALUES ('145', '2', 'G', '6');
INSERT INTO `koltuk` VALUES ('146', '2', 'G', '7');
INSERT INTO `koltuk` VALUES ('147', '2', 'G', '8');
INSERT INTO `koltuk` VALUES ('148', '2', 'G', '9');
INSERT INTO `koltuk` VALUES ('149', '2', 'H', '1');
INSERT INTO `koltuk` VALUES ('150', '2', 'H', '2');
INSERT INTO `koltuk` VALUES ('151', '2', 'H', '3');
INSERT INTO `koltuk` VALUES ('152', '2', 'H', '4');
INSERT INTO `koltuk` VALUES ('153', '2', 'H', '6');
INSERT INTO `koltuk` VALUES ('154', '2', 'H', '7');
INSERT INTO `koltuk` VALUES ('155', '2', 'H', '9');
INSERT INTO `koltuk` VALUES ('156', '2', 'I', '1');
INSERT INTO `koltuk` VALUES ('157', '2', 'I', '2');
INSERT INTO `koltuk` VALUES ('158', '2', 'I', '6');
INSERT INTO `koltuk` VALUES ('159', '2', 'I', '7');
INSERT INTO `koltuk` VALUES ('160', '2', 'B', '1');
INSERT INTO `koltuk` VALUES ('161', '3', 'A', '1');
INSERT INTO `koltuk` VALUES ('162', '3', 'A', '2');
INSERT INTO `koltuk` VALUES ('163', '3', 'A', '3');
INSERT INTO `koltuk` VALUES ('164', '3', 'A', '4');
INSERT INTO `koltuk` VALUES ('165', '3', 'A', '5');
INSERT INTO `koltuk` VALUES ('166', '3', 'A', '6');
INSERT INTO `koltuk` VALUES ('167', '3', 'A', '7');
INSERT INTO `koltuk` VALUES ('168', '3', 'A', '8');
INSERT INTO `koltuk` VALUES ('169', '3', 'A', '9');
INSERT INTO `koltuk` VALUES ('170', '3', 'A', '10');
INSERT INTO `koltuk` VALUES ('171', '3', 'A', '11');
INSERT INTO `koltuk` VALUES ('172', '3', 'B', '1');
INSERT INTO `koltuk` VALUES ('173', '3', 'B', '2');
INSERT INTO `koltuk` VALUES ('174', '3', 'B', '3');
INSERT INTO `koltuk` VALUES ('175', '3', 'B', '4');
INSERT INTO `koltuk` VALUES ('176', '3', 'B', '5');
INSERT INTO `koltuk` VALUES ('177', '3', 'B', '6');
INSERT INTO `koltuk` VALUES ('178', '3', 'B', '7');
INSERT INTO `koltuk` VALUES ('179', '3', 'C', '1');
INSERT INTO `koltuk` VALUES ('180', '3', 'C', '2');
INSERT INTO `koltuk` VALUES ('181', '3', 'C', '3');
INSERT INTO `koltuk` VALUES ('182', '3', 'C', '4');
INSERT INTO `koltuk` VALUES ('183', '3', 'C', '5');
INSERT INTO `koltuk` VALUES ('184', '3', 'C', '6');
INSERT INTO `koltuk` VALUES ('185', '3', 'E', '1');
INSERT INTO `koltuk` VALUES ('186', '3', 'E', '2');
INSERT INTO `koltuk` VALUES ('187', '3', 'E', '3');
INSERT INTO `koltuk` VALUES ('188', '3', 'E', '4');
INSERT INTO `koltuk` VALUES ('189', '3', 'E', '5');
INSERT INTO `koltuk` VALUES ('190', '3', 'E', '6');
INSERT INTO `koltuk` VALUES ('191', '3', 'E', '7');
INSERT INTO `koltuk` VALUES ('192', '3', 'E', '8');
INSERT INTO `koltuk` VALUES ('193', '3', 'E', '9');
INSERT INTO `koltuk` VALUES ('194', '3', 'E', '10');
INSERT INTO `koltuk` VALUES ('195', '3', 'E', '11');
INSERT INTO `koltuk` VALUES ('196', '3', 'F', '1');
INSERT INTO `koltuk` VALUES ('197', '3', 'F', '2');
INSERT INTO `koltuk` VALUES ('198', '3', 'F', '3');
INSERT INTO `koltuk` VALUES ('199', '3', 'F', '4');
INSERT INTO `koltuk` VALUES ('200', '3', 'F', '5');
INSERT INTO `koltuk` VALUES ('201', '3', 'F', '6');
INSERT INTO `koltuk` VALUES ('202', '3', 'F', '7');
INSERT INTO `koltuk` VALUES ('203', '3', 'F', '8');
INSERT INTO `koltuk` VALUES ('204', '3', 'G', '1');
INSERT INTO `koltuk` VALUES ('205', '3', 'G', '2');
INSERT INTO `koltuk` VALUES ('206', '3', 'G', '3');
INSERT INTO `koltuk` VALUES ('207', '3', 'G', '4');
INSERT INTO `koltuk` VALUES ('208', '3', 'G', '5');
INSERT INTO `koltuk` VALUES ('209', '3', 'G', '6');
INSERT INTO `koltuk` VALUES ('210', '3', 'H', '1');
INSERT INTO `koltuk` VALUES ('211', '3', 'H', '2');
INSERT INTO `koltuk` VALUES ('212', '3', 'H', '3');
INSERT INTO `koltuk` VALUES ('213', '3', 'H', '4');
INSERT INTO `koltuk` VALUES ('214', '3', 'H', '5');
INSERT INTO `koltuk` VALUES ('216', '3', 'H', '6');
INSERT INTO `koltuk` VALUES ('217', '3', 'H', '7');
INSERT INTO `koltuk` VALUES ('218', '3', 'H', '8');
INSERT INTO `koltuk` VALUES ('219', '3', 'H', '9');
INSERT INTO `koltuk` VALUES ('220', '3', 'H', '10');

-- ----------------------------
-- Table structure for oyuncular
-- ----------------------------
DROP TABLE IF EXISTS `oyuncular`;
CREATE TABLE `oyuncular` (
  `oyuncu_id` int(11) NOT NULL,
  `oyuncu_adi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `oyuncu_soyadi` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `oyuncu_tel` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`oyuncu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of oyuncular
-- ----------------------------
INSERT INTO `oyuncular` VALUES ('1', ' Belçim ', 'Bilgin', '05463218132');
INSERT INTO `oyuncular` VALUES ('2', 'Ben ', 'Affleck', '05463298528');

-- ----------------------------
-- Table structure for salon
-- ----------------------------
DROP TABLE IF EXISTS `salon`;
CREATE TABLE `salon` (
  `salon_id` int(11) NOT NULL,
  `salon_adi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `film_id` int(11) NOT NULL,
  PRIMARY KEY (`salon_id`),
  KEY `film_id` (`film_id`) USING BTREE,
  CONSTRAINT `film_id_for` FOREIGN KEY (`film_id`) REFERENCES `filmler` (`film_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of salon
-- ----------------------------
INSERT INTO `salon` VALUES ('1', 'Salon 1', '3');
INSERT INTO `salon` VALUES ('2', 'Salon 2', '2');
INSERT INTO `salon` VALUES ('3', 'Salon 3', '3');

-- ----------------------------
-- Table structure for salon_seans
-- ----------------------------
DROP TABLE IF EXISTS `salon_seans`;
CREATE TABLE `salon_seans` (
  `salon_id` int(11) NOT NULL,
  `seans_id` int(11) NOT NULL,
  KEY `salon_id` (`salon_id`) USING BTREE,
  KEY `seans_id` (`seans_id`) USING BTREE,
  CONSTRAINT `seans_ids` FOREIGN KEY (`seans_id`) REFERENCES `seans` (`seans_id`),
  CONSTRAINT `salon_ids` FOREIGN KEY (`salon_id`) REFERENCES `salon` (`salon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of salon_seans
-- ----------------------------
INSERT INTO `salon_seans` VALUES ('1', '1');
INSERT INTO `salon_seans` VALUES ('1', '3');
INSERT INTO `salon_seans` VALUES ('1', '2');
INSERT INTO `salon_seans` VALUES ('1', '6');
INSERT INTO `salon_seans` VALUES ('1', '9');
INSERT INTO `salon_seans` VALUES ('1', '15');
INSERT INTO `salon_seans` VALUES ('2', '2');
INSERT INTO `salon_seans` VALUES ('2', '5');
INSERT INTO `salon_seans` VALUES ('2', '8');
INSERT INTO `salon_seans` VALUES ('2', '4');
INSERT INTO `salon_seans` VALUES ('2', '16');
INSERT INTO `salon_seans` VALUES ('2', '10');
INSERT INTO `salon_seans` VALUES ('3', '1');
INSERT INTO `salon_seans` VALUES ('3', '5');
INSERT INTO `salon_seans` VALUES ('3', '7');
INSERT INTO `salon_seans` VALUES ('3', '9');
INSERT INTO `salon_seans` VALUES ('3', '12');
INSERT INTO `salon_seans` VALUES ('3', '15');

-- ----------------------------
-- Table structure for seans
-- ----------------------------
DROP TABLE IF EXISTS `seans`;
CREATE TABLE `seans` (
  `seans_id` int(11) NOT NULL,
  `seans_saati` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`seans_id`),
  KEY `seans_saati` (`seans_saati`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of seans
-- ----------------------------
INSERT INTO `seans` VALUES ('1', '10:30');
INSERT INTO `seans` VALUES ('2', '11:00');
INSERT INTO `seans` VALUES ('3', '11:30');
INSERT INTO `seans` VALUES ('4', '12:00');
INSERT INTO `seans` VALUES ('5', '12:30');
INSERT INTO `seans` VALUES ('6', '13:00');
INSERT INTO `seans` VALUES ('7', '13:30');
INSERT INTO `seans` VALUES ('8', '14:00');
INSERT INTO `seans` VALUES ('9', '14:30');
INSERT INTO `seans` VALUES ('10', '15:00');
INSERT INTO `seans` VALUES ('11', '15:30');
INSERT INTO `seans` VALUES ('12', '16:00');
INSERT INTO `seans` VALUES ('13', '16:30');
INSERT INTO `seans` VALUES ('14', '17:00');
INSERT INTO `seans` VALUES ('15', '17:30');
INSERT INTO `seans` VALUES ('16', '18:00');

-- ----------------------------
-- Table structure for turler
-- ----------------------------
DROP TABLE IF EXISTS `turler`;
CREATE TABLE `turler` (
  `tur_id` int(11) NOT NULL,
  `tur_adi` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`tur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of turler
-- ----------------------------
INSERT INTO `turler` VALUES ('1', 'Animasyon');
INSERT INTO `turler` VALUES ('2', ' Aksiyon');
INSERT INTO `turler` VALUES ('3', 'Bilim Kurgu');
INSERT INTO `turler` VALUES ('4', ' Romantik');
INSERT INTO `turler` VALUES ('5', 'Gerilim');
INSERT INTO `turler` VALUES ('6', 'Komedi');
INSERT INTO `turler` VALUES ('7', 'Dram');
