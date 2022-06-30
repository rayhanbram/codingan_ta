/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : tugas_akhir_2

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 30/06/2022 19:09:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `kategori_id` int(0) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`kategori_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES (1, 'Makanan Utama');
INSERT INTO `kategori` VALUES (2, 'Camilan');

-- ----------------------------
-- Table structure for lokasi
-- ----------------------------
DROP TABLE IF EXISTS `lokasi`;
CREATE TABLE `lokasi`  (
  `lokasi_id` int(0) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`lokasi_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lokasi
-- ----------------------------
INSERT INTO `lokasi` VALUES (1, 'Jakarta');
INSERT INTO `lokasi` VALUES (2, 'Jawa Barat');
INSERT INTO `lokasi` VALUES (3, 'Bali');
INSERT INTO `lokasi` VALUES (4, 'Banten');
INSERT INTO `lokasi` VALUES (5, 'Jawa Timur');
INSERT INTO `lokasi` VALUES (6, 'Sumatera Barat');

-- ----------------------------
-- Table structure for menu_lokasi
-- ----------------------------
DROP TABLE IF EXISTS `menu_lokasi`;
CREATE TABLE `menu_lokasi`  (
  `menu_lokasi_id` int(0) NOT NULL AUTO_INCREMENT,
  `lokasi_id` int(0) NOT NULL,
  `menu_id` int(0) NOT NULL,
  PRIMARY KEY (`menu_lokasi_id`) USING BTREE,
  INDEX `lokasi_id`(`lokasi_id`) USING BTREE,
  INDEX `menu_id`(`menu_id`) USING BTREE,
  CONSTRAINT `menu_lokasi_ibfk_1` FOREIGN KEY (`lokasi_id`) REFERENCES `lokasi` (`lokasi_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `menu_lokasi_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `menu_mpasi` (`menu_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_lokasi
-- ----------------------------
INSERT INTO `menu_lokasi` VALUES (1, 1, 15);
INSERT INTO `menu_lokasi` VALUES (2, 1, 10);
INSERT INTO `menu_lokasi` VALUES (3, 1, 4);
INSERT INTO `menu_lokasi` VALUES (4, 1, 7);
INSERT INTO `menu_lokasi` VALUES (5, 1, 11);
INSERT INTO `menu_lokasi` VALUES (6, 1, 5);
INSERT INTO `menu_lokasi` VALUES (7, 1, 21);
INSERT INTO `menu_lokasi` VALUES (8, 1, 22);
INSERT INTO `menu_lokasi` VALUES (9, 1, 24);
INSERT INTO `menu_lokasi` VALUES (10, 1, 25);
INSERT INTO `menu_lokasi` VALUES (11, 1, 29);
INSERT INTO `menu_lokasi` VALUES (12, 1, 46);
INSERT INTO `menu_lokasi` VALUES (13, 1, 40);
INSERT INTO `menu_lokasi` VALUES (14, 1, 38);
INSERT INTO `menu_lokasi` VALUES (15, 1, 36);
INSERT INTO `menu_lokasi` VALUES (16, 1, 41);
INSERT INTO `menu_lokasi` VALUES (17, 1, 51);
INSERT INTO `menu_lokasi` VALUES (18, 1, 47);
INSERT INTO `menu_lokasi` VALUES (19, 1, 49);
INSERT INTO `menu_lokasi` VALUES (20, 1, 50);
INSERT INTO `menu_lokasi` VALUES (21, 1, 62);
INSERT INTO `menu_lokasi` VALUES (22, 1, 53);
INSERT INTO `menu_lokasi` VALUES (23, 1, 64);
INSERT INTO `menu_lokasi` VALUES (24, 1, 55);
INSERT INTO `menu_lokasi` VALUES (25, 1, 63);
INSERT INTO `menu_lokasi` VALUES (26, 1, 65);
INSERT INTO `menu_lokasi` VALUES (27, 1, 74);
INSERT INTO `menu_lokasi` VALUES (28, 1, 72);
INSERT INTO `menu_lokasi` VALUES (29, 1, 77);
INSERT INTO `menu_lokasi` VALUES (30, 1, 73);
INSERT INTO `menu_lokasi` VALUES (31, 2, 15);
INSERT INTO `menu_lokasi` VALUES (32, 2, 10);
INSERT INTO `menu_lokasi` VALUES (33, 2, 8);
INSERT INTO `menu_lokasi` VALUES (34, 2, 11);
INSERT INTO `menu_lokasi` VALUES (35, 2, 14);
INSERT INTO `menu_lokasi` VALUES (36, 2, 12);
INSERT INTO `menu_lokasi` VALUES (37, 2, 21);
INSERT INTO `menu_lokasi` VALUES (38, 2, 22);
INSERT INTO `menu_lokasi` VALUES (39, 2, 25);
INSERT INTO `menu_lokasi` VALUES (40, 2, 23);
INSERT INTO `menu_lokasi` VALUES (41, 2, 45);
INSERT INTO `menu_lokasi` VALUES (42, 2, 46);
INSERT INTO `menu_lokasi` VALUES (43, 2, 29);
INSERT INTO `menu_lokasi` VALUES (44, 2, 28);
INSERT INTO `menu_lokasi` VALUES (45, 2, 31);
INSERT INTO `menu_lokasi` VALUES (46, 2, 44);
INSERT INTO `menu_lokasi` VALUES (47, 2, 47);
INSERT INTO `menu_lokasi` VALUES (48, 2, 51);
INSERT INTO `menu_lokasi` VALUES (49, 2, 52);
INSERT INTO `menu_lokasi` VALUES (50, 2, 49);
INSERT INTO `menu_lokasi` VALUES (51, 2, 62);
INSERT INTO `menu_lokasi` VALUES (52, 2, 64);
INSERT INTO `menu_lokasi` VALUES (53, 2, 63);
INSERT INTO `menu_lokasi` VALUES (54, 2, 60);
INSERT INTO `menu_lokasi` VALUES (55, 2, 61);
INSERT INTO `menu_lokasi` VALUES (56, 2, 53);
INSERT INTO `menu_lokasi` VALUES (57, 2, 77);
INSERT INTO `menu_lokasi` VALUES (58, 2, 73);
INSERT INTO `menu_lokasi` VALUES (59, 2, 74);
INSERT INTO `menu_lokasi` VALUES (60, 2, 78);
INSERT INTO `menu_lokasi` VALUES (61, 3, 7);
INSERT INTO `menu_lokasi` VALUES (62, 3, 2);
INSERT INTO `menu_lokasi` VALUES (63, 3, 12);
INSERT INTO `menu_lokasi` VALUES (64, 3, 14);
INSERT INTO `menu_lokasi` VALUES (65, 3, 15);
INSERT INTO `menu_lokasi` VALUES (66, 3, 13);
INSERT INTO `menu_lokasi` VALUES (67, 3, 21);
INSERT INTO `menu_lokasi` VALUES (68, 3, 22);
INSERT INTO `menu_lokasi` VALUES (69, 3, 23);
INSERT INTO `menu_lokasi` VALUES (70, 3, 24);
INSERT INTO `menu_lokasi` VALUES (71, 3, 28);
INSERT INTO `menu_lokasi` VALUES (72, 3, 29);
INSERT INTO `menu_lokasi` VALUES (73, 3, 33);
INSERT INTO `menu_lokasi` VALUES (74, 3, 36);
INSERT INTO `menu_lokasi` VALUES (75, 3, 37);
INSERT INTO `menu_lokasi` VALUES (76, 3, 38);
INSERT INTO `menu_lokasi` VALUES (77, 3, 47);
INSERT INTO `menu_lokasi` VALUES (78, 3, 48);
INSERT INTO `menu_lokasi` VALUES (79, 3, 49);
INSERT INTO `menu_lokasi` VALUES (80, 3, 51);
INSERT INTO `menu_lokasi` VALUES (81, 3, 55);
INSERT INTO `menu_lokasi` VALUES (82, 3, 59);
INSERT INTO `menu_lokasi` VALUES (83, 3, 60);
INSERT INTO `menu_lokasi` VALUES (84, 3, 61);
INSERT INTO `menu_lokasi` VALUES (85, 3, 64);
INSERT INTO `menu_lokasi` VALUES (86, 3, 54);
INSERT INTO `menu_lokasi` VALUES (87, 3, 72);
INSERT INTO `menu_lokasi` VALUES (88, 3, 77);
INSERT INTO `menu_lokasi` VALUES (89, 3, 74);
INSERT INTO `menu_lokasi` VALUES (90, 3, 76);
INSERT INTO `menu_lokasi` VALUES (91, 4, 15);
INSERT INTO `menu_lokasi` VALUES (92, 4, 10);
INSERT INTO `menu_lokasi` VALUES (93, 4, 7);
INSERT INTO `menu_lokasi` VALUES (94, 4, 20);
INSERT INTO `menu_lokasi` VALUES (95, 4, 11);
INSERT INTO `menu_lokasi` VALUES (96, 4, 5);
INSERT INTO `menu_lokasi` VALUES (97, 4, 22);
INSERT INTO `menu_lokasi` VALUES (98, 4, 23);
INSERT INTO `menu_lokasi` VALUES (99, 4, 25);
INSERT INTO `menu_lokasi` VALUES (100, 4, 21);
INSERT INTO `menu_lokasi` VALUES (101, 4, 29);
INSERT INTO `menu_lokasi` VALUES (102, 4, 40);
INSERT INTO `menu_lokasi` VALUES (103, 4, 41);
INSERT INTO `menu_lokasi` VALUES (104, 4, 36);
INSERT INTO `menu_lokasi` VALUES (105, 4, 38);
INSERT INTO `menu_lokasi` VALUES (106, 4, 46);
INSERT INTO `menu_lokasi` VALUES (107, 4, 47);
INSERT INTO `menu_lokasi` VALUES (108, 4, 50);
INSERT INTO `menu_lokasi` VALUES (109, 4, 52);
INSERT INTO `menu_lokasi` VALUES (110, 4, 48);
INSERT INTO `menu_lokasi` VALUES (111, 4, 59);
INSERT INTO `menu_lokasi` VALUES (112, 4, 64);
INSERT INTO `menu_lokasi` VALUES (113, 4, 68);
INSERT INTO `menu_lokasi` VALUES (114, 4, 53);
INSERT INTO `menu_lokasi` VALUES (115, 4, 54);
INSERT INTO `menu_lokasi` VALUES (116, 4, 58);
INSERT INTO `menu_lokasi` VALUES (117, 4, 73);
INSERT INTO `menu_lokasi` VALUES (118, 4, 72);
INSERT INTO `menu_lokasi` VALUES (119, 4, 74);
INSERT INTO `menu_lokasi` VALUES (120, 4, 75);
INSERT INTO `menu_lokasi` VALUES (121, 5, 1);
INSERT INTO `menu_lokasi` VALUES (122, 5, 2);
INSERT INTO `menu_lokasi` VALUES (123, 5, 5);
INSERT INTO `menu_lokasi` VALUES (124, 5, 7);
INSERT INTO `menu_lokasi` VALUES (125, 5, 8);
INSERT INTO `menu_lokasi` VALUES (126, 5, 11);
INSERT INTO `menu_lokasi` VALUES (127, 5, 26);
INSERT INTO `menu_lokasi` VALUES (128, 5, 21);
INSERT INTO `menu_lokasi` VALUES (129, 5, 22);
INSERT INTO `menu_lokasi` VALUES (130, 5, 23);
INSERT INTO `menu_lokasi` VALUES (131, 5, 27);
INSERT INTO `menu_lokasi` VALUES (132, 5, 28);
INSERT INTO `menu_lokasi` VALUES (133, 5, 29);
INSERT INTO `menu_lokasi` VALUES (134, 5, 30);
INSERT INTO `menu_lokasi` VALUES (135, 5, 31);
INSERT INTO `menu_lokasi` VALUES (136, 5, 32);
INSERT INTO `menu_lokasi` VALUES (137, 5, 51);
INSERT INTO `menu_lokasi` VALUES (138, 5, 52);
INSERT INTO `menu_lokasi` VALUES (139, 5, 47);
INSERT INTO `menu_lokasi` VALUES (140, 5, 48);
INSERT INTO `menu_lokasi` VALUES (141, 5, 53);
INSERT INTO `menu_lokasi` VALUES (142, 5, 55);
INSERT INTO `menu_lokasi` VALUES (143, 5, 58);
INSERT INTO `menu_lokasi` VALUES (144, 5, 59);
INSERT INTO `menu_lokasi` VALUES (145, 5, 60);
INSERT INTO `menu_lokasi` VALUES (146, 5, 61);
INSERT INTO `menu_lokasi` VALUES (147, 5, 72);
INSERT INTO `menu_lokasi` VALUES (148, 5, 73);
INSERT INTO `menu_lokasi` VALUES (149, 5, 74);
INSERT INTO `menu_lokasi` VALUES (150, 6, 9);
INSERT INTO `menu_lokasi` VALUES (151, 6, 4);
INSERT INTO `menu_lokasi` VALUES (152, 6, 7);
INSERT INTO `menu_lokasi` VALUES (153, 6, 10);
INSERT INTO `menu_lokasi` VALUES (154, 6, 15);
INSERT INTO `menu_lokasi` VALUES (155, 6, 11);
INSERT INTO `menu_lokasi` VALUES (156, 6, 21);
INSERT INTO `menu_lokasi` VALUES (157, 6, 23);
INSERT INTO `menu_lokasi` VALUES (158, 6, 22);
INSERT INTO `menu_lokasi` VALUES (159, 6, 24);
INSERT INTO `menu_lokasi` VALUES (160, 6, 28);
INSERT INTO `menu_lokasi` VALUES (161, 6, 29);
INSERT INTO `menu_lokasi` VALUES (162, 6, 45);
INSERT INTO `menu_lokasi` VALUES (163, 6, 44);
INSERT INTO `menu_lokasi` VALUES (164, 6, 32);
INSERT INTO `menu_lokasi` VALUES (165, 6, 36);
INSERT INTO `menu_lokasi` VALUES (166, 6, 47);
INSERT INTO `menu_lokasi` VALUES (167, 6, 49);
INSERT INTO `menu_lokasi` VALUES (168, 6, 52);
INSERT INTO `menu_lokasi` VALUES (169, 6, 48);
INSERT INTO `menu_lokasi` VALUES (170, 6, 53);
INSERT INTO `menu_lokasi` VALUES (171, 6, 56);
INSERT INTO `menu_lokasi` VALUES (172, 6, 58);
INSERT INTO `menu_lokasi` VALUES (173, 6, 62);
INSERT INTO `menu_lokasi` VALUES (174, 6, 64);
INSERT INTO `menu_lokasi` VALUES (175, 6, 71);
INSERT INTO `menu_lokasi` VALUES (176, 6, 72);
INSERT INTO `menu_lokasi` VALUES (177, 6, 75);
INSERT INTO `menu_lokasi` VALUES (178, 6, 74);
INSERT INTO `menu_lokasi` VALUES (179, 6, 77);

-- ----------------------------
-- Table structure for menu_mpasi
-- ----------------------------
DROP TABLE IF EXISTS `menu_mpasi`;
CREATE TABLE `menu_mpasi`  (
  `menu_id` int(0) NOT NULL AUTO_INCREMENT,
  `umur_id` int(0) NOT NULL,
  `kategori_id` int(0) NOT NULL,
  `menu` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gambar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE,
  INDEX `umur_id`(`umur_id`) USING BTREE,
  INDEX `kategori_id`(`kategori_id`) USING BTREE,
  CONSTRAINT `menu_mpasi_ibfk_1` FOREIGN KEY (`umur_id`) REFERENCES `umur` (`umur_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `menu_mpasi_ibfk_2` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`kategori_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_mpasi
-- ----------------------------
INSERT INTO `menu_mpasi` VALUES (1, 1, 1, 'Bubur hati ayam', 'https://i.ibb.co/JRZ6xD4/1-5.jpg');
INSERT INTO `menu_mpasi` VALUES (2, 1, 1, 'Bubur hati ayam santan', '');
INSERT INTO `menu_mpasi` VALUES (3, 1, 1, 'Bubur pepes hati ayam', '');
INSERT INTO `menu_mpasi` VALUES (4, 1, 1, 'Bubur Udang Tahu', '');
INSERT INTO `menu_mpasi` VALUES (5, 1, 1, 'Bubur Udang Buncis', '');
INSERT INTO `menu_mpasi` VALUES (6, 1, 1, 'Bubur Patin', '');
INSERT INTO `menu_mpasi` VALUES (7, 1, 1, 'Bubur Daging Sapi', '');
INSERT INTO `menu_mpasi` VALUES (8, 1, 1, 'Bubur Hati dan Ayam', '');
INSERT INTO `menu_mpasi` VALUES (9, 1, 1, 'Bubur Tenggiri', '');
INSERT INTO `menu_mpasi` VALUES (10, 1, 1, 'Bubur Ayam Mentega', '');
INSERT INTO `menu_mpasi` VALUES (11, 1, 1, 'Bubur Telur Daging', '');
INSERT INTO `menu_mpasi` VALUES (12, 1, 1, 'Bubur Puyuh Hati Ayam', '');
INSERT INTO `menu_mpasi` VALUES (13, 1, 1, 'Bubur Pepes Ikan Kembung', '');
INSERT INTO `menu_mpasi` VALUES (14, 1, 1, 'Bubur Kentang Hati Ayam', '');
INSERT INTO `menu_mpasi` VALUES (15, 1, 1, 'Bubur Opor Ayam', '');
INSERT INTO `menu_mpasi` VALUES (16, 1, 1, 'Bubur Tahu Ikan Patin', '');
INSERT INTO `menu_mpasi` VALUES (17, 1, 1, 'Bubur Mujair', '');
INSERT INTO `menu_mpasi` VALUES (18, 1, 1, 'Bubur Kakap Tempe', '');
INSERT INTO `menu_mpasi` VALUES (19, 1, 1, 'Bubur Uduk Hati Sapi', '');
INSERT INTO `menu_mpasi` VALUES (20, 1, 1, 'Bubur Uduk Udang', '');
INSERT INTO `menu_mpasi` VALUES (21, 1, 2, 'Pure Avokad Jeruk', '');
INSERT INTO `menu_mpasi` VALUES (22, 1, 2, 'Pure Pisang Apel', '');
INSERT INTO `menu_mpasi` VALUES (23, 1, 2, 'Puding Susu Vanila', '');
INSERT INTO `menu_mpasi` VALUES (24, 1, 2, 'Roti Kukus Keju', '');
INSERT INTO `menu_mpasi` VALUES (25, 1, 2, 'Makaroni Keju', '');
INSERT INTO `menu_mpasi` VALUES (26, 1, 2, 'Siomay Ayam Udang', '');
INSERT INTO `menu_mpasi` VALUES (27, 2, 1, 'Tim Tuna', '');
INSERT INTO `menu_mpasi` VALUES (28, 2, 1, 'Tim Soto Daging', '');
INSERT INTO `menu_mpasi` VALUES (29, 2, 1, 'Kentang Dori Saus Keju', '');
INSERT INTO `menu_mpasi` VALUES (30, 2, 1, 'Tim Kuning Semur Hati ayam', '');
INSERT INTO `menu_mpasi` VALUES (31, 2, 1, 'Tim Semur Sapi Tempe', '');
INSERT INTO `menu_mpasi` VALUES (32, 2, 1, 'Nasi Tim Ayam Lodeh', '');
INSERT INTO `menu_mpasi` VALUES (33, 2, 1, 'Tim Udang Brokoli', '');
INSERT INTO `menu_mpasi` VALUES (34, 2, 1, 'Tim Sambal Hati Sapi', '');
INSERT INTO `menu_mpasi` VALUES (35, 2, 1, 'Tim Daging Sapi', '');
INSERT INTO `menu_mpasi` VALUES (36, 2, 1, 'Tim Ayam Kecap', '');
INSERT INTO `menu_mpasi` VALUES (37, 2, 1, 'Tim Cah Ikan Kembung', '');
INSERT INTO `menu_mpasi` VALUES (38, 2, 1, 'Nasi Tim Ayam Jamur', '');
INSERT INTO `menu_mpasi` VALUES (39, 2, 1, 'Tim Tongkol', '');
INSERT INTO `menu_mpasi` VALUES (40, 2, 1, 'Tim Kentang Daging', '');
INSERT INTO `menu_mpasi` VALUES (41, 2, 1, 'Bola Nasi', '');
INSERT INTO `menu_mpasi` VALUES (42, 2, 1, 'Nasi Tim Gurame', '');
INSERT INTO `menu_mpasi` VALUES (43, 2, 1, 'Tim Semur Ayam', '');
INSERT INTO `menu_mpasi` VALUES (44, 2, 1, 'Tim Kentang Telur', '');
INSERT INTO `menu_mpasi` VALUES (45, 2, 1, 'Tim Mie Ayam', '');
INSERT INTO `menu_mpasi` VALUES (46, 2, 1, 'Tim Makaroni', '');
INSERT INTO `menu_mpasi` VALUES (47, 2, 2, 'Puding Susu Coklat Vla', '');
INSERT INTO `menu_mpasi` VALUES (48, 2, 2, 'Bola - Bola Tenggiri', '');
INSERT INTO `menu_mpasi` VALUES (49, 2, 2, 'Bitterballen', '');
INSERT INTO `menu_mpasi` VALUES (50, 2, 2, 'Lemper Ayam', '');
INSERT INTO `menu_mpasi` VALUES (51, 2, 2, 'Bola Kentang Keju', '');
INSERT INTO `menu_mpasi` VALUES (52, 2, 2, 'Agar - Agar Buah', '');
INSERT INTO `menu_mpasi` VALUES (53, 3, 1, 'Nasi Ayam Katsu', '');
INSERT INTO `menu_mpasi` VALUES (54, 3, 1, 'Nasi Gadon Daging', '');
INSERT INTO `menu_mpasi` VALUES (55, 3, 1, 'Nasi Cah Siram Sapi', '');
INSERT INTO `menu_mpasi` VALUES (56, 3, 1, 'Nasi Bebek Ungkep', '');
INSERT INTO `menu_mpasi` VALUES (57, 3, 1, 'Nasi Bebek Goreng Mentega', '');
INSERT INTO `menu_mpasi` VALUES (58, 3, 1, 'Mie Tek - Tek', '');
INSERT INTO `menu_mpasi` VALUES (59, 3, 1, 'Nasi Goreng Udang', '');
INSERT INTO `menu_mpasi` VALUES (60, 3, 1, 'Nasi Gurih Cah Bakso Ikan Brokoli', '');
INSERT INTO `menu_mpasi` VALUES (61, 3, 1, 'Nasi Ayam Jamur', '');
INSERT INTO `menu_mpasi` VALUES (62, 3, 1, 'Sup Ayam', '');
INSERT INTO `menu_mpasi` VALUES (63, 3, 1, 'Tumis Tahu Udang', '');
INSERT INTO `menu_mpasi` VALUES (64, 3, 1, 'Nasi Telur Campur', '');
INSERT INTO `menu_mpasi` VALUES (65, 3, 1, 'Mie Goreng Telur Puyuh', '');
INSERT INTO `menu_mpasi` VALUES (66, 3, 1, 'Nasi Bakar Tuna', '');
INSERT INTO `menu_mpasi` VALUES (67, 3, 1, 'Nasi Pepes Udang', '');
INSERT INTO `menu_mpasi` VALUES (68, 3, 1, 'Nasi Telur Daging Kukus', '');
INSERT INTO `menu_mpasi` VALUES (69, 3, 1, 'Nasi Rendang Telur Tempe', '');
INSERT INTO `menu_mpasi` VALUES (70, 3, 1, 'Sate Ayam', '');
INSERT INTO `menu_mpasi` VALUES (71, 3, 1, 'Nasi Ayam Goreng Lengkuas', '');
INSERT INTO `menu_mpasi` VALUES (72, 3, 2, 'Bola - Bola Udang', '');
INSERT INTO `menu_mpasi` VALUES (73, 3, 2, 'Perkedel Tahu', '');
INSERT INTO `menu_mpasi` VALUES (74, 3, 2, 'Kroket Sapi', '');
INSERT INTO `menu_mpasi` VALUES (75, 3, 2, 'Otak - Otak Kukus', '');
INSERT INTO `menu_mpasi` VALUES (76, 3, 2, 'Tahu Isi Sosis', '');
INSERT INTO `menu_mpasi` VALUES (77, 3, 2, 'Kue Yoghurt Pisang Stroberi', '');
INSERT INTO `menu_mpasi` VALUES (78, 3, 2, 'Rolade Tempe', '');

-- ----------------------------
-- Table structure for menu_preferensi
-- ----------------------------
DROP TABLE IF EXISTS `menu_preferensi`;
CREATE TABLE `menu_preferensi`  (
  `menu_preferensi_id` int(0) NOT NULL AUTO_INCREMENT,
  `preferensi_id` int(0) NOT NULL,
  `menu_id` int(0) NOT NULL,
  PRIMARY KEY (`menu_preferensi_id`) USING BTREE,
  INDEX `preferensi_id`(`preferensi_id`) USING BTREE,
  INDEX `menu_id`(`menu_id`) USING BTREE,
  CONSTRAINT `menu_preferensi_ibfk_1` FOREIGN KEY (`preferensi_id`) REFERENCES `preferensi` (`preferensi_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `menu_preferensi_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `menu_mpasi` (`menu_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_preferensi
-- ----------------------------
INSERT INTO `menu_preferensi` VALUES (1, 1, 15);
INSERT INTO `menu_preferensi` VALUES (2, 1, 10);
INSERT INTO `menu_preferensi` VALUES (3, 1, 7);
INSERT INTO `menu_preferensi` VALUES (4, 1, 14);
INSERT INTO `menu_preferensi` VALUES (5, 1, 4);
INSERT INTO `menu_preferensi` VALUES (6, 1, 11);
INSERT INTO `menu_preferensi` VALUES (7, 1, 21);
INSERT INTO `menu_preferensi` VALUES (8, 1, 22);
INSERT INTO `menu_preferensi` VALUES (9, 1, 24);
INSERT INTO `menu_preferensi` VALUES (10, 1, 23);
INSERT INTO `menu_preferensi` VALUES (11, 1, 29);
INSERT INTO `menu_preferensi` VALUES (12, 1, 38);
INSERT INTO `menu_preferensi` VALUES (13, 1, 46);
INSERT INTO `menu_preferensi` VALUES (14, 1, 36);
INSERT INTO `menu_preferensi` VALUES (15, 1, 28);
INSERT INTO `menu_preferensi` VALUES (16, 1, 40);
INSERT INTO `menu_preferensi` VALUES (17, 1, 47);
INSERT INTO `menu_preferensi` VALUES (18, 1, 49);
INSERT INTO `menu_preferensi` VALUES (19, 1, 51);
INSERT INTO `menu_preferensi` VALUES (20, 1, 52);
INSERT INTO `menu_preferensi` VALUES (21, 1, 62);
INSERT INTO `menu_preferensi` VALUES (22, 1, 53);
INSERT INTO `menu_preferensi` VALUES (23, 1, 64);
INSERT INTO `menu_preferensi` VALUES (24, 1, 59);
INSERT INTO `menu_preferensi` VALUES (25, 1, 61);
INSERT INTO `menu_preferensi` VALUES (26, 1, 65);
INSERT INTO `menu_preferensi` VALUES (27, 1, 77);
INSERT INTO `menu_preferensi` VALUES (28, 1, 74);
INSERT INTO `menu_preferensi` VALUES (29, 1, 78);
INSERT INTO `menu_preferensi` VALUES (30, 1, 73);
INSERT INTO `menu_preferensi` VALUES (31, 2, 15);
INSERT INTO `menu_preferensi` VALUES (32, 2, 10);
INSERT INTO `menu_preferensi` VALUES (33, 2, 11);
INSERT INTO `menu_preferensi` VALUES (34, 2, 4);
INSERT INTO `menu_preferensi` VALUES (35, 2, 14);
INSERT INTO `menu_preferensi` VALUES (36, 2, 7);
INSERT INTO `menu_preferensi` VALUES (37, 2, 21);
INSERT INTO `menu_preferensi` VALUES (38, 2, 22);
INSERT INTO `menu_preferensi` VALUES (39, 2, 25);
INSERT INTO `menu_preferensi` VALUES (40, 2, 24);
INSERT INTO `menu_preferensi` VALUES (41, 2, 29);
INSERT INTO `menu_preferensi` VALUES (42, 2, 38);
INSERT INTO `menu_preferensi` VALUES (43, 2, 40);
INSERT INTO `menu_preferensi` VALUES (44, 2, 36);
INSERT INTO `menu_preferensi` VALUES (45, 2, 43);
INSERT INTO `menu_preferensi` VALUES (46, 2, 46);
INSERT INTO `menu_preferensi` VALUES (47, 2, 51);
INSERT INTO `menu_preferensi` VALUES (48, 2, 47);
INSERT INTO `menu_preferensi` VALUES (49, 2, 49);
INSERT INTO `menu_preferensi` VALUES (50, 2, 52);
INSERT INTO `menu_preferensi` VALUES (51, 2, 62);
INSERT INTO `menu_preferensi` VALUES (52, 2, 64);
INSERT INTO `menu_preferensi` VALUES (53, 2, 64);
INSERT INTO `menu_preferensi` VALUES (54, 2, 59);
INSERT INTO `menu_preferensi` VALUES (55, 2, 61);
INSERT INTO `menu_preferensi` VALUES (56, 2, 60);
INSERT INTO `menu_preferensi` VALUES (57, 2, 77);
INSERT INTO `menu_preferensi` VALUES (58, 2, 74);
INSERT INTO `menu_preferensi` VALUES (59, 2, 72);
INSERT INTO `menu_preferensi` VALUES (60, 2, 73);
INSERT INTO `menu_preferensi` VALUES (61, 3, 10);
INSERT INTO `menu_preferensi` VALUES (62, 3, 15);
INSERT INTO `menu_preferensi` VALUES (63, 3, 20);
INSERT INTO `menu_preferensi` VALUES (64, 3, 7);
INSERT INTO `menu_preferensi` VALUES (65, 3, 11);
INSERT INTO `menu_preferensi` VALUES (66, 3, 4);
INSERT INTO `menu_preferensi` VALUES (67, 3, 21);
INSERT INTO `menu_preferensi` VALUES (68, 3, 22);
INSERT INTO `menu_preferensi` VALUES (69, 3, 25);
INSERT INTO `menu_preferensi` VALUES (70, 3, 23);
INSERT INTO `menu_preferensi` VALUES (71, 3, 29);
INSERT INTO `menu_preferensi` VALUES (72, 3, 46);
INSERT INTO `menu_preferensi` VALUES (73, 3, 38);
INSERT INTO `menu_preferensi` VALUES (74, 3, 45);
INSERT INTO `menu_preferensi` VALUES (75, 3, 36);
INSERT INTO `menu_preferensi` VALUES (76, 3, 28);
INSERT INTO `menu_preferensi` VALUES (77, 3, 47);
INSERT INTO `menu_preferensi` VALUES (78, 3, 51);
INSERT INTO `menu_preferensi` VALUES (79, 3, 49);
INSERT INTO `menu_preferensi` VALUES (80, 3, 52);
INSERT INTO `menu_preferensi` VALUES (81, 3, 62);
INSERT INTO `menu_preferensi` VALUES (82, 3, 64);
INSERT INTO `menu_preferensi` VALUES (83, 3, 53);
INSERT INTO `menu_preferensi` VALUES (84, 3, 59);
INSERT INTO `menu_preferensi` VALUES (85, 3, 61);
INSERT INTO `menu_preferensi` VALUES (86, 3, 63);
INSERT INTO `menu_preferensi` VALUES (87, 3, 77);
INSERT INTO `menu_preferensi` VALUES (88, 3, 74);
INSERT INTO `menu_preferensi` VALUES (89, 3, 73);
INSERT INTO `menu_preferensi` VALUES (90, 3, 78);

-- ----------------------------
-- Table structure for preferensi
-- ----------------------------
DROP TABLE IF EXISTS `preferensi`;
CREATE TABLE `preferensi`  (
  `preferensi_id` int(0) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`preferensi_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of preferensi
-- ----------------------------
INSERT INTO `preferensi` VALUES (1, 'Instan');
INSERT INTO `preferensi` VALUES (2, 'Garing');
INSERT INTO `preferensi` VALUES (3, 'Lembut');

-- ----------------------------
-- Table structure for umur
-- ----------------------------
DROP TABLE IF EXISTS `umur`;
CREATE TABLE `umur`  (
  `umur_id` int(0) NOT NULL AUTO_INCREMENT,
  `umur` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`umur_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of umur
-- ----------------------------
INSERT INTO `umur` VALUES (1, '6-8 Bulan');
INSERT INTO `umur` VALUES (2, '9-11 Bulan');
INSERT INTO `umur` VALUES (3, '12-24 Bulan');

SET FOREIGN_KEY_CHECKS = 1;
