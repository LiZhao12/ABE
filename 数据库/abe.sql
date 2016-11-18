/*
Navicat MySQL Data Transfer

Source Server         : zs
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : abe

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-11-18 15:18:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `card`
-- ----------------------------
DROP TABLE IF EXISTS `card`;
CREATE TABLE `card` (
  `c_id` varchar(255) NOT NULL DEFAULT '',
  `c_num` varchar(255) NOT NULL,
  `u_id` varchar(255) DEFAULT NULL,
  `it_id` varchar(255) DEFAULT NULL,
  `c_create_time` datetime DEFAULT NULL,
  `c_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  UNIQUE KEY `c_num` (`c_num`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of card
-- ----------------------------

-- ----------------------------
-- Table structure for `card_log`
-- ----------------------------
DROP TABLE IF EXISTS `card_log`;
CREATE TABLE `card_log` (
  `cl_id` varchar(255) NOT NULL DEFAULT '',
  `c_id` varchar(255) DEFAULT NULL,
  `cl_time` datetime DEFAULT NULL,
  `cl_state` varchar(255) DEFAULT NULL,
  `u_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of card_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ceshi`
-- ----------------------------
DROP TABLE IF EXISTS `ceshi`;
CREATE TABLE `ceshi` (
  `y` year(4) DEFAULT NULL,
  `id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ceshi
-- ----------------------------
INSERT INTO `ceshi` VALUES ('2001', '1');

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `c_id` varchar(255) NOT NULL DEFAULT '',
  `c_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('131514271687852', '画画');
INSERT INTO `course` VALUES ('131514574764413', '英语');
INSERT INTO `course` VALUES ('131515004038597', '语文');
INSERT INTO `course` VALUES ('131515032186975', '数学');

-- ----------------------------
-- Table structure for `forum`
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum` (
  `f_id` varchar(255) NOT NULL DEFAULT '',
  `f_content` varchar(255) DEFAULT NULL,
  `f_like` int(11) DEFAULT NULL,
  `f_create_time` datetime DEFAULT NULL,
  `u_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES ('23', '33', '33', '2016-11-16 19:04:06', '123213141');

-- ----------------------------
-- Table structure for `forum_comment`
-- ----------------------------
DROP TABLE IF EXISTS `forum_comment`;
CREATE TABLE `forum_comment` (
  `fc_id` varchar(255) NOT NULL DEFAULT '',
  `fc_content` varchar(255) DEFAULT NULL,
  `fc_create_time` datetime DEFAULT NULL,
  `u_id` varchar(255) DEFAULT NULL,
  `f_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of forum_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `forum_like`
-- ----------------------------
DROP TABLE IF EXISTS `forum_like`;
CREATE TABLE `forum_like` (
  `fl_id` varchar(255) NOT NULL DEFAULT '',
  `f_id` varchar(255) DEFAULT NULL,
  `u_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of forum_like
-- ----------------------------
INSERT INTO `forum_like` VALUES ('091103268266335', '091025067281683', '1');
INSERT INTO `forum_like` VALUES ('091103480463287', '091025067281683', '2');

-- ----------------------------
-- Table structure for `info_parents`
-- ----------------------------
DROP TABLE IF EXISTS `info_parents`;
CREATE TABLE `info_parents` (
  `ip_id` varchar(255) NOT NULL DEFAULT '',
  `ip_name` varchar(255) DEFAULT NULL,
  `ip_sex` varchar(255) DEFAULT NULL,
  `ip_age` int(11) DEFAULT NULL,
  `ip_phone` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info_parents
-- ----------------------------

-- ----------------------------
-- Table structure for `info_student`
-- ----------------------------
DROP TABLE IF EXISTS `info_student`;
CREATE TABLE `info_student` (
  `is_id` varchar(255) NOT NULL DEFAULT '',
  `is_num` varchar(255) NOT NULL,
  `is_name` varchar(255) DEFAULT NULL,
  `is_sex` varchar(255) DEFAULT NULL,
  `is_birthday` date DEFAULT NULL,
  `is_age` int(11) DEFAULT NULL,
  `is_local` int(11) DEFAULT NULL,
  `is_teacher_children` int(11) DEFAULT NULL,
  `is_school` varchar(255) DEFAULT NULL,
  `is_grade` varchar(255) DEFAULT NULL,
  `is_class` varchar(255) DEFAULT NULL,
  `is_into_year` year(4) DEFAULT NULL,
  `is_parent_name` varchar(255) DEFAULT NULL,
  `is_parent_phone` varchar(255) DEFAULT NULL,
  `is_parent_relation` varchar(255) DEFAULT NULL,
  `is_into_date` date DEFAULT NULL,
  `is_leave_date` date DEFAULT NULL,
  `is_state` varchar(255) DEFAULT NULL,
  `u_id` varchar(255) DEFAULT NULL,
  `sc_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`is_id`),
  UNIQUE KEY `is_num` (`is_num`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info_student
-- ----------------------------

-- ----------------------------
-- Table structure for `info_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `info_teacher`;
CREATE TABLE `info_teacher` (
  `it_id` varchar(255) NOT NULL DEFAULT '',
  `it_num` varchar(255) NOT NULL,
  `it_name` varchar(255) DEFAULT NULL,
  `it_sex` varchar(255) DEFAULT NULL,
  `it_birthday` date DEFAULT NULL,
  `it_age` int(11) DEFAULT NULL,
  `it_phone` varchar(255) DEFAULT NULL,
  `it_wechat` varchar(255) DEFAULT NULL,
  `it_qq` varchar(255) DEFAULT NULL,
  `it_section` varchar(255) DEFAULT NULL,
  `it_post` varchar(255) DEFAULT NULL,
  `it_into_date` date DEFAULT NULL,
  `it_leave_date` date DEFAULT NULL,
  `it_state` varchar(255) DEFAULT NULL,
  `it_last_time` datetime DEFAULT NULL,
  `it_create_time` datetime DEFAULT NULL,
  `it_address` varchar(255) DEFAULT NULL,
  `ss_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`it_id`),
  UNIQUE KEY `it_num` (`it_num`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info_teacher
-- ----------------------------

-- ----------------------------
-- Table structure for `licence`
-- ----------------------------
DROP TABLE IF EXISTS `licence`;
CREATE TABLE `licence` (
  `u_id` varchar(255) NOT NULL DEFAULT '',
  `l_licence` varchar(255) DEFAULT NULL,
  `l_ip` varchar(255) DEFAULT NULL,
  `l_date_start` datetime DEFAULT NULL,
  `l_date_end` datetime DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of licence
-- ----------------------------
INSERT INTO `licence` VALUES ('271634032221266', 'wXWS7Yg4j7qJ7a/Dm2TmCg==', '127.0.0.1', '2016-11-18 14:14:47', '2016-11-18 15:14:47');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `n_id` varchar(255) NOT NULL,
  `n_title` varchar(255) NOT NULL,
  `n_content` varchar(255) DEFAULT NULL,
  `n_imgs` varchar(255) DEFAULT NULL,
  `n_url` varchar(255) DEFAULT NULL,
  `n_origin` varchar(255) DEFAULT NULL,
  `n_type` varchar(255) DEFAULT NULL,
  `n_creat_time` varchar(255) DEFAULT NULL,
  `n_final_time` varchar(255) DEFAULT NULL,
  `n_istop` varchar(255) DEFAULT NULL,
  `u_id` varchar(255) DEFAULT NULL,
  `n_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------

-- ----------------------------
-- Table structure for `place_area`
-- ----------------------------
DROP TABLE IF EXISTS `place_area`;
CREATE TABLE `place_area` (
  `pa_id` varchar(255) NOT NULL DEFAULT '',
  `pa_name` varchar(255) DEFAULT NULL,
  `pc_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place_area
-- ----------------------------

-- ----------------------------
-- Table structure for `place_city`
-- ----------------------------
DROP TABLE IF EXISTS `place_city`;
CREATE TABLE `place_city` (
  `pc_id` varchar(255) NOT NULL DEFAULT '',
  `pc_name` varchar(255) DEFAULT NULL,
  `pp_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place_city
-- ----------------------------

-- ----------------------------
-- Table structure for `place_province`
-- ----------------------------
DROP TABLE IF EXISTS `place_province`;
CREATE TABLE `place_province` (
  `pp_id` varchar(255) NOT NULL DEFAULT '',
  `pp_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place_province
-- ----------------------------

-- ----------------------------
-- Table structure for `recipe`
-- ----------------------------
DROP TABLE IF EXISTS `recipe`;
CREATE TABLE `recipe` (
  `r_id` varchar(255) NOT NULL,
  `sc_id` varchar(255) DEFAULT NULL,
  `r_type` varchar(255) DEFAULT NULL,
  `r_time` varchar(255) DEFAULT NULL,
  `r_state` varchar(255) DEFAULT NULL,
  `u_id` varchar(255) DEFAULT NULL,
  `r_creat_time` varchar(255) DEFAULT NULL,
  `r_status` varchar(255) DEFAULT NULL,
  `r_images` varchar(255) DEFAULT NULL,
  `r_images_url` varchar(255) DEFAULT NULL,
  `is_id_accept` varchar(255) DEFAULT NULL,
  `is_id_all` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recipe
-- ----------------------------
INSERT INTO `recipe` VALUES ('161803372075104', '333', '晚餐', '2016.11.10', '排骨面', '123213141', null, '已发布', null, null, null, '001，002，003');
INSERT INTO `recipe` VALUES ('161811049305351', '333', '晚餐', '2016.11.10', '排骨面', '123213141', null, '已发布', null, null, null, '001，002，003');
INSERT INTO `recipe` VALUES ('161828195898924', '323', '晚餐', '2016.11.10', '排骨面', '123213141', '2016-11-16 18:28:19', '未发布', null, null, null, '001，002，003');
INSERT INTO `recipe` VALUES ('161828253067843', '113', '晚餐', '2016.11.10', '排骨面', '123213141', '2016-11-16 18:28:25', '未发布', null, null, null, '001，002，003');
INSERT INTO `recipe` VALUES ('161828293586222', '123', '晚餐', '2016.11.10', '排骨面', '123213141', '2016-11-16 18:28:29', '未发布', null, null, null, '001，002，003');
INSERT INTO `recipe` VALUES ('161828360798426', '1234', '晚餐', '2016.11.10', '排骨面', '123213141', '2016-11-16 18:28:36', '未发布', null, null, null, '001，002，003');
INSERT INTO `recipe` VALUES ('161828405903858', '12345', '晚餐', '2016.11.10', '排骨面', '123213141', '2016-11-16 18:28:40', '未发布', null, null, null, '001，002，003');
INSERT INTO `recipe` VALUES ('161828530372140', '12345', '晚餐', '2016.11.10', 'da面', '123213141', '2016-11-16 18:28:53', '未发布', null, null, null, '001，002，003');
INSERT INTO `recipe` VALUES ('161828581576339', '123245', '晚餐', '2016.11.10', '骨面', '123213141', '2016-11-16 18:28:58', '未发布', null, null, null, '001，002，003');

-- ----------------------------
-- Table structure for `school`
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `s_id` varchar(255) NOT NULL DEFAULT '',
  `s_name` varchar(255) DEFAULT NULL,
  `s_address` varchar(255) DEFAULT NULL,
  `pc_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school
-- ----------------------------

-- ----------------------------
-- Table structure for `school_class`
-- ----------------------------
DROP TABLE IF EXISTS `school_class`;
CREATE TABLE `school_class` (
  `sc_id` varchar(255) NOT NULL DEFAULT '',
  `sc_naem` varchar(255) DEFAULT NULL,
  `sg_id` varchar(255) DEFAULT NULL,
  `it_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_class
-- ----------------------------

-- ----------------------------
-- Table structure for `school_grade`
-- ----------------------------
DROP TABLE IF EXISTS `school_grade`;
CREATE TABLE `school_grade` (
  `sg_id` varchar(255) NOT NULL DEFAULT '',
  `sg_name` varchar(255) DEFAULT NULL,
  `s_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_grade
-- ----------------------------

-- ----------------------------
-- Table structure for `school_section`
-- ----------------------------
DROP TABLE IF EXISTS `school_section`;
CREATE TABLE `school_section` (
  `ss_id` varchar(255) NOT NULL DEFAULT '',
  `ss_name` varchar(255) DEFAULT NULL,
  `s_id` varchar(255) DEFAULT NULL,
  `ss_id_last` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_section
-- ----------------------------

-- ----------------------------
-- Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `s_id` varchar(255) NOT NULL DEFAULT '',
  `s_score` int(11) DEFAULT NULL,
  `c_id` varchar(255) DEFAULT NULL,
  `is_id` varchar(255) DEFAULT NULL,
  `s_create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------

-- ----------------------------
-- Table structure for `timetables`
-- ----------------------------
DROP TABLE IF EXISTS `timetables`;
CREATE TABLE `timetables` (
  `t_id` varchar(255) NOT NULL DEFAULT '',
  `c_id` varchar(255) DEFAULT NULL,
  `sc_id` varchar(255) DEFAULT NULL,
  `it_id` varchar(255) DEFAULT NULL,
  `t_start_time` time DEFAULT NULL,
  `t_end_time` time DEFAULT NULL,
  `t_week` int(11) DEFAULT NULL,
  `t_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of timetables
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `u_id` varchar(255) NOT NULL DEFAULT '',
  `u_num` varchar(255) NOT NULL DEFAULT '',
  `u_name` varchar(255) DEFAULT NULL,
  `u_pass` varchar(255) DEFAULT NULL,
  `u_type` varchar(255) DEFAULT NULL,
  `u_create_time` datetime DEFAULT NULL,
  `u_photo_path` varchar(255) DEFAULT NULL,
  `u_note` varchar(255) DEFAULT NULL,
  `trp_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `u_num` (`u_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('123213141', 'qqq', '测试修改', '123', '002', null, 'http://zhangshun-zs1994.oicp.net:15202/ABE_WEB/photo/123213141/31223058436.png', null, null);
INSERT INTO `users` VALUES ('271634032221266', 'qwe', '张顺', '123', '001', '2016-10-26 23:08:14', 'http://zhangshun-zs1994.oicp.net:15202/ABE_WEB/photo/271634032221266/271634032221266.png', null, null);

-- ----------------------------
-- Table structure for `vacate`
-- ----------------------------
DROP TABLE IF EXISTS `vacate`;
CREATE TABLE `vacate` (
  `v_id` varchar(255) NOT NULL,
  `is_id` varchar(255) DEFAULT NULL,
  `u_id` varchar(255) DEFAULT NULL,
  `it_id` varchar(255) DEFAULT NULL,
  `v_content` varchar(255) DEFAULT NULL,
  `v_date` varchar(255) DEFAULT NULL,
  `v_time` varchar(255) DEFAULT NULL,
  `v_resp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vacate
-- ----------------------------
