/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 100417
 Source Host           : localhost:3306
 Source Schema         : old_vku

 Target Server Type    : MySQL
 Target Server Version : 100417
 File Encoding         : 65001

 Date: 21/04/2021 20:42:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cms_categories
-- -- ----------------------------
-- DROP TABLE IF EXISTS `cms_categories`;
-- CREATE TABLE `cms_categories`  (
--   `CategoryID` int NOT NULL AUTO_INCREMENT,
--   `ParentID` int NOT NULL,
--   `Name_vi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
--   `Name_en` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
--   `Slug_vi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
--   `Slug_en` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
--   `Index` int NOT NULL DEFAULT 0,
--   PRIMARY KEY (`CategoryID`) USING BTREE,
--   UNIQUE INDEX `Slug`(`Slug_vi`, `ParentID`) USING BTREE
-- ) ENGINE = MyISAM AUTO_INCREMENT = 209 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;



-- ----------------------------
-- Records of cms_categories
-- ----------------------------
INSERT INTO `cms_categories` VALUES (82, 0, 'Giới thiệu', 'About Us', 'gioi-thieu', 'introduce', 1);
INSERT INTO `cms_categories` VALUES (84, 128, 'Hướng nghiệp', 'Vocational Guidance', 'huong-nghiep', 'vocational-guidance', 3);
INSERT INTO `cms_categories` VALUES (108, 128, 'Bí quyết học tập', 'Learning Secrets', 'bi-quyet-hoc-tap', 'learning-secrets', 5);
INSERT INTO `cms_categories` VALUES (109, 123, 'Hợp tác quốc tế', 'International cooperation', 'hop-tac-quoc-te', 'international-cooperation', 5);
INSERT INTO `cms_categories` VALUES (112, 128, 'Thông tin nhà ở, phòng trọ', 'Information On Houses And Rooms', 'thong-tin-nha-o-phong-tro', 'information-on-houses-and-rooms', 9);
INSERT INTO `cms_categories` VALUES (113, 128, 'Thực tập, Việc làm thêm', 'Internships Part time jobs', 'viec-lam-them', 'internships-Part-time-jobs', 10);
INSERT INTO `cms_categories` VALUES (117, 115, 'Giới thiệu', 'Introduce', 'gioi-thieu', 'introduce', 0);
INSERT INTO `cms_categories` VALUES (118, 115, 'Tin tức hoạt động', 'News Event', 'tin-tuc-hoat-dong', 'news-event', 1);
INSERT INTO `cms_categories` VALUES (119, 115, 'Chương trình đào tạo', 'Training Program', 'chuong-trinh-dao-tao', 'training-program', 2);
INSERT INTO `cms_categories` VALUES (123, 0, 'Tin tức và hoạt động', 'News &amp; Event', 'tin-tuc-va-hoat-dong', 'news-event', 1);
INSERT INTO `cms_categories` VALUES (127, 123, 'Khoa học công nghệ', 'Science and technology', 'khoa-hoc-cong-nghe', 'science-and-technology', 3);
INSERT INTO `cms_categories` VALUES (131, 128, 'Tin tức - thông báo', '', 'tin-tuc-thong-bao-ctsv', 'tin-tuc-thong-bao-ctsv', 2);
INSERT INTO `cms_categories` VALUES (134, 128, 'Quyết định', '', 'quyet-dinh-ctsv', 'quyet-dinh-ctsv', 5);
INSERT INTO `cms_categories` VALUES (139, 128, 'Học bổng', '', 'hoc-bong-ctsv', 'hoc-bong-ctsv', 10);
INSERT INTO `cms_categories` VALUES (204, 82, 'Test tiếp nè', 'chán vc', 'test-tiep-ne', 'chan-vc', 0);
INSERT INTO `cms_categories` VALUES (140, 0, 'Đào tạo', 'Training Affairs', 'dao-tao', 'training', 2);
INSERT INTO `cms_categories` VALUES (179, 0, 'Khoa Khoa học máy tính', 'Information Technology', 'khoa-khoa-hoc-may-tinh', 'information-technology', 1);
INSERT INTO `cms_categories` VALUES (180, 0, 'Khoa Kỹ thuật máy tính và Điện tử', 'Computer Engineering and Technology', 'khoa-ky-thuat-may-tinh-va-dien-tu', 'computer-engineering-and-technology', 1);
INSERT INTO `cms_categories` VALUES (181, 0, 'Khoa Kinh tế số và Thương Mại điện tử', 'Bussiness Administration', 'khoa-kinh-te-so-va-thuong-mai-dien-tu', 'bussiness-administration', 1);
INSERT INTO `cms_categories` VALUES (182, 0, 'Cuộc thi', 'Competitions', 'cuoc-thi', 'competitions', 1);
INSERT INTO `cms_categories` VALUES (183, 123, 'Đoàn thanh niên', 'Đoàn thanh niên', 'doan-thanh-nien', 'youth', 1);
INSERT INTO `cms_categories` VALUES (159, 0, 'Tuyển sinh', 'Admissions', 'tuyen-sinh', 'admissions', 8);
INSERT INTO `cms_categories` VALUES (162, 116, 'Giới thiệu', 'About Us', 'gioi-thieu-ts', 'about-admission', 1);
INSERT INTO `cms_categories` VALUES (163, 116, 'Tin tức hoạt động', 'News &amp; Event', 'tin-tuc-hoat-dong-ts', 'tin-tuc-hoat-dong-ts', 0);
INSERT INTO `cms_categories` VALUES (164, 116, 'Chương trình đào tạo', 'Training Program', 'chuong-trinh-dao-tao-khoa-cntt', 'chuong-trinh-dao-tao-khoa-cntt', 0);
INSERT INTO `cms_categories` VALUES (170, 123, 'Nghiên cứu khoa học', 'Scientific research', 'nghien-cuu-khoa-hoc', 'nghien-cuu-khoa-hoc', 4);
INSERT INTO `cms_categories` VALUES (184, 123, 'Hoạt động chung', 'Activity', 'hoat-dong-chung', 'activity', 1);
INSERT INTO `cms_categories` VALUES (185, 123, 'Bản tin Đại học Đà Nẵng', ' University of Danang Newsletter', 'ban-tin-dai-hoc-da-nang', 'ban-tin-dai-hoc-da-nang', 1);
INSERT INTO `cms_categories` VALUES (186, 123, 'Thông báo chung', 'Thông báo chung', 'thong-bao-chung', 'thong-bao-chung', 1);
INSERT INTO `cms_categories` VALUES (187, 123, 'Phòng Thanh Tra Pháp Chế', 'Phòng Thanh Tra Pháp Chế', 'phong-thanh-tra-phap-che', 'phong-thanh-tra-phap-che', 1);
INSERT INTO `cms_categories` VALUES (188, 123, 'Thư viện', 'Thư viện', 'thu-vien', 'thu-vien', 1);
INSERT INTO `cms_categories` VALUES (189, 123, 'Văn phòng Đảng Uy - Văn phòng', 'Văn phòng Đảng Uy - Văn phòng', 'van-phong-dang-uy-van-phong', 'van-phong-dang-uy-van-phong', 1);
INSERT INTO `cms_categories` VALUES (190, 123, 'Tổ chức Hành chính', 'Tổ chức Hành chính', 'to-chuc-hanh-chinh', 'to-chuc-hanh-chinh', 1);
INSERT INTO `cms_categories` VALUES (191, 123, 'Cơ sở vật chất', 'Cơ sở vật chất', 'co-so-vat-chat', 'co-so-vat-chat', 1);
INSERT INTO `cms_categories` VALUES (192, 123, 'Kế hoạch tài chính', 'Kế hoạch tài chính', 'ke-hoach-tai-chinh', 'ke-hoach-tai-chinh', 1);
INSERT INTO `cms_categories` VALUES (193, 123, 'Công đoàn', 'Công đoàn', 'cong-doan', 'union', 1);
INSERT INTO `cms_categories` VALUES (194, 123, 'Tuyển sinh', 'Tuyển sinh', 'tuyen-sinh', 'admission', 1);
INSERT INTO `cms_categories` VALUES (195, 123, 'Cuộc thi', 'Cuộc thi', 'cuoc-thi', 'competition', 1);
INSERT INTO `cms_categories` VALUES (196, 140, 'Công nghệ thông tin', '', 'cong-nghe-thong-tin', 'cong-nghe-thong-tin', 1);
INSERT INTO `cms_categories` VALUES (197, 140, 'Công nghệ kỹ thuật máy tính', '', 'cong-nghe-ky-thuat-may-tinh', 'cong-nghe-ky-thuat-may-tinh', 1);
INSERT INTO `cms_categories` VALUES (198, 140, 'Quản trị kinh doanh', '', 'quan-tri-kinh-doanh', 'quan-tri-kinh-doanh', 1);
INSERT INTO `cms_categories` VALUES (207, 123, 'Tin học vụ', 'Education information', 'tin-hoc-vu', 'education-information', 0);
INSERT INTO `cms_categories` VALUES (208, 123, 'Hoạt động sinh viên', 'Student Actitity', 'hoat-dong-sinh-vien', 'student-actitity', 0);

SET FOREIGN_KEY_CHECKS = 1;
