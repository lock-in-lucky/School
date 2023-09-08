/*
Navicat MySQL Data Transfer

Source Server         : xgyqsystem
Source Server Version : 50554
Source Host           : localhost:3306
Source Database       : school1

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2023-05-13 00:34:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` varchar(10) NOT NULL DEFAULT '',
  `admin_name` varchar(32) DEFAULT NULL,
  `admin_password` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', '张三', 'admin');

-- ----------------------------
-- Table structure for classes
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes` (
  `class_id` varchar(8) NOT NULL DEFAULT '',
  `class_name` varchar(32) NOT NULL,
  `class_teacher_id` varchar(12) DEFAULT NULL,
  `class_teacher_name` varchar(32) NOT NULL,
  PRIMARY KEY (`class_id`),
  KEY `class_teacher_id` (`class_teacher_id`),
  CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`class_teacher_id`) REFERENCES `teacher` (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classes
-- ----------------------------
INSERT INTO `classes` VALUES ('1', '一班', '20102131001', '张强');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `course_id` varchar(12) NOT NULL DEFAULT '',
  `course_name` varchar(15) NOT NULL,
  `course_teacher` varchar(32) NOT NULL,
  `course_term` int(11) DEFAULT NULL,
  `course_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('Jz3s8fMm', '数据库', '刘强', '1', null);

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobs_unit` varchar(32) DEFAULT NULL,
  `jobs_post` varchar(32) DEFAULT NULL,
  `jobs_edu` varchar(32) DEFAULT NULL,
  `jobs_address` varchar(32) DEFAULT NULL,
  `jobs_describe` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for lecture
-- ----------------------------
DROP TABLE IF EXISTS `lecture`;
CREATE TABLE `lecture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lecture_unit` varchar(15) DEFAULT NULL,
  `lecture_theme` varchar(100) DEFAULT NULL,
  `lecture_time` date DEFAULT NULL,
  `lecture_address` varchar(15) DEFAULT NULL,
  `lecture_content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lecture
-- ----------------------------

-- ----------------------------
-- Table structure for lost
-- ----------------------------
DROP TABLE IF EXISTS `lost`;
CREATE TABLE `lost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lost_name` varchar(32) DEFAULT NULL,
  `lost_phone` text,
  `lost_pubtime` date DEFAULT NULL,
  `lost_describe` text,
  `lost_claimtime` date DEFAULT NULL,
  `lost_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lost
-- ----------------------------

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `course_id` varchar(12) NOT NULL DEFAULT '',
  `student_id` varchar(12) NOT NULL DEFAULT '',
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`course_id`,`student_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `score_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  CONSTRAINT `score_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('Jz3s8fMm', '2021211102', null);

-- ----------------------------
-- Table structure for shetuan
-- ----------------------------
DROP TABLE IF EXISTS `shetuan`;
CREATE TABLE `shetuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shetuan_name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shetuan
-- ----------------------------

-- ----------------------------
-- Table structure for shetuanactivity
-- ----------------------------
DROP TABLE IF EXISTS `shetuanactivity`;
CREATE TABLE `shetuanactivity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shetuan_name` varchar(15) DEFAULT NULL,
  `activity_time` date DEFAULT NULL,
  `activity_address` varchar(15) DEFAULT NULL,
  `activity_theme` varchar(32) DEFAULT NULL,
  `activity_content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shetuanactivity
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_id` varchar(12) NOT NULL DEFAULT '',
  `student_name` varchar(32) NOT NULL,
  `student_gender` varchar(1) DEFAULT NULL,
  `student_password` varchar(12) NOT NULL,
  `student_phone` varchar(11) DEFAULT NULL,
  `student_class_id` varchar(14) NOT NULL,
  `student_email` varchar(20) DEFAULT NULL,
  `student_address` varchar(35) NOT NULL,
  `student_power` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `student_class_id` (`student_class_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`student_class_id`) REFERENCES `classes` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('2021211102', '刘天海', '男', '211102', '17879811734', '1', '550025238@qq.com', '江西南昌', null);
INSERT INTO `student` VALUES ('2021213103', '张三', '男', '213103', '15679548621', '1', '123@qq.com', '九江', null);
INSERT INTO `student` VALUES ('2021216103', '王五', '男', '216103', '17879811734', '1', '5500222@qq.com', '江西南昌', null);

-- ----------------------------
-- Table structure for tcourse
-- ----------------------------
DROP TABLE IF EXISTS `tcourse`;
CREATE TABLE `tcourse` (
  `course_id` varchar(12) DEFAULT NULL,
  `teacher_id` varchar(12) DEFAULT NULL,
  KEY `course_id` (`course_id`),
  KEY `teacher_id` (`teacher_id`),
  CONSTRAINT `tcourse_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  CONSTRAINT `tcourse_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcourse
-- ----------------------------

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teacher_id` varchar(12) NOT NULL DEFAULT '',
  `teacher_name` varchar(32) NOT NULL,
  `teacher_password` varchar(13) NOT NULL,
  `teacher_phone` varchar(11) DEFAULT NULL,
  `teacher_email` varchar(20) DEFAULT NULL,
  `teacher_dept` varchar(10) DEFAULT NULL,
  `teacher_power` int(11) DEFAULT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('20102131001', '刘强', '131001', '11156', 'sasada@163.com', '软件学院', '2');
INSERT INTO `teacher` VALUES ('20102131002', '王五', '131002', '17879811734', '213131313@qq.com', '信工学院', '2');
