-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 07, 2020 at 09:18 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hr`
--

DELIMITER $$
--
-- Procedures
--
DROP PROCEDURE IF EXISTS `ctc_approval_table_insert`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ctc_approval_table_insert` (IN `candidate_name` VARCHAR(255), IN `present_ctc` VARCHAR(255), IN `expected_ctc` VARCHAR(255), IN `ctc_offered` VARCHAR(255), IN `offered_take_home` VARCHAR(255), IN `offered_designation` VARCHAR(255), IN `dept_head_approval` VARCHAR(255), IN `dept_director_approval` VARCHAR(255), IN `CUG` VARCHAR(255), IN `mail_id` VARCHAR(255), IN `target` VARCHAR(255), IN `system` VARCHAR(255), IN `seating` VARCHAR(255), IN `status` INT(11), IN `created_by` INT(11), IN `created_on` TIMESTAMP)  BEGIN
set @t1=concat("INSERT INTO ctc_approval_table(candidate_name,present_ctc,expected_ctc,ctc_offered,offered_take_home,offered_designation,dept_head_approval,dept_director_approval,CUG,mail_id,target,system,seating,status,created_by,created_on)  values('",candidate_name,"','",present_ctc,"','",expected_ctc,"','",ctc_offered,"','",offered_take_home,"','",offered_designation,"','",dept_head_approval,"','",dept_director_approval,"','",CUG,"','",mail_id,"','",target,"','",system,"','",seating,"','",status,"','",created_by,"','",created_on,"')");
PREPARE stmt1 from @t1; 
EXECUTE stmt1;
DEALLOCATE PREPARE stmt1; 
END$$

DROP PROCEDURE IF EXISTS `emp_certification_insert`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `emp_certification_insert` (`emp_id` INT(255), `certification_name` VARCHAR(150), `certification_number` VARCHAR(150), `validity_from` TIMESTAMP, `validity_to` TIMESTAMP, `attachment` VARCHAR(150), `status` INT(255), `created_by` INT(255), `created_on` TIMESTAMP)  BEGIN
set @t1=concat("INSERT INTO emp_certification(emp_id,certification_name,certification_number, validity_from , validity_to , attachment, status, created_by, created_on)   values('",emp_id,"','",certification_name,"','",certification_number,"','",validity_from,"','",validity_to,"','",attachment,"','",status,"','",created_by,"','",created_on,"')");
PREPARE stmt1 from @t1; 
EXECUTE stmt1;
DEALLOCATE PREPARE stmt1; 
END$$

DROP PROCEDURE IF EXISTS `emp_details_insert`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `emp_details_insert` (`emp_id` INT(255), `organization_name` VARCHAR(150), `designation` VARCHAR(150), `from_date` TIMESTAMP, `to_date` TIMESTAMP, `total_experience` INT(255), `status` INT(255), `created_by` INT(255), `created_on` TIMESTAMP)  BEGIN
set @t1=concat("INSERT INTO emp_details(emp_id,organization_name , designation , from_date ,to_date, total_experience,status,created_by,created_on)  values('",emp_id,"','",organization_name,"','",designation,"','",from_date,"','",to_date,"','",total_experience,"','",status,"','",created_by,"','",created_on,"')");
PREPARE stmt1 from @t1; 
EXECUTE stmt1;
DEALLOCATE PREPARE stmt1; 
END$$

DROP PROCEDURE IF EXISTS `emp_personal_insert`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `emp_personal_insert` (IN `id` INT(255), IN `name` VARCHAR(150), IN `fathers_name` VARCHAR(150), IN `DOB` DATE, IN `communication_address` VARCHAR(150), IN `permanent_address` VARCHAR(150), IN `mobile_num` VARCHAR(150), IN `email_id` VARCHAR(150), IN `aadhar_num` VARCHAR(150), IN `pan_num` VARCHAR(150), IN `voter_id` VARCHAR(150), IN `resume` VARCHAR(150), IN `status` INT(255), IN `created_by` INT(255), IN `created_on` TIMESTAMP)  BEGIN
set @t1=concat("insert into emp_personal_details (name,fathers_name,DOB,communication_address,permanent_address,mobile_num,email_id,aadhar_num,pan_num,voter_id,resume,status,created_by,created_on)
values('",name,"','",fathers_name,"','",DOB,"','",communication_address,"','",permanent_address,"','",mobile_num,"','",email_id,"','",aadhar_num,"','",pan_num,"','",voter_id,"','",resume,"','",status,"','",created_by,"','",created_on,"')");
PREPARE stmt1 from @t1; 
EXECUTE stmt1;
DEALLOCATE PREPARE stmt1; 
END$$

DROP PROCEDURE IF EXISTS `emp_qualification_insert`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `emp_qualification_insert` (IN `emp_id` INT(255), IN `education` VARCHAR(150), IN `institution_name` VARCHAR(150), IN `degree` VARCHAR(150), IN `field_of_specialization` VARCHAR(150), IN `year_of_passing` INT(255), IN `percentage` FLOAT(23), IN `attachment` VARCHAR(150), IN `status` INT(11), IN `created_on` TIMESTAMP, IN `created_by` INT(11))  BEGIN
set @t1=concat("INSERT INTO emp_qualification(emp_id,education,institution_name,degree,field_of_specialization,year_of_passing,percentage,attachment,status,created_on,created_by)    values('",emp_id,"','",education,"','",institution_name,"','",degree,"','",field_of_specialization,"','",year_of_passing,"','",percentage,"','",attachment,"','",status,"','",created_on,"','",created_by,"')");
PREPARE stmt1 from @t1; 
EXECUTE stmt1;
DEALLOCATE PREPARE stmt1; 
END$$

DROP PROCEDURE IF EXISTS `hr_feedback_insert`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `hr_feedback_insert` (`hr_comments` VARCHAR(150), `status` VARCHAR(150), `feedback` VARCHAR(150), `flag_id` INT(255), `created_by` INT(255), `created_on` TIMESTAMP)  BEGIN
set @t1=concat("INSERT INTO hr_feedback(hr_comments,status,feedback,flag_id,created_by,created_on)  values('",hr_comments,"','",status,"','",feedback,"','",flag_id,"','",created_by,"','",created_on,"')");
PREPARE stmt1 from @t1; 
EXECUTE stmt1;
DEALLOCATE PREPARE stmt1; 
END$$

DROP PROCEDURE IF EXISTS `interview_feedback_insert`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `interview_feedback_insert` (`position` VARCHAR(150), `department` VARCHAR(150), `type` VARCHAR(150), `candidate` VARCHAR(150), `candidate_name` VARCHAR(150), `replacement_candidate_name` VARCHAR(150), `location` VARCHAR(150), `reason_to_leave_job` VARCHAR(150), `reference_name` VARCHAR(150), `total_exp` INT(255), `current_ctc` INT(255), `expexted_ctc` INT(255), `notice_period` INT(255), `expected_doj` DATE, `feedback` VARCHAR(255), `status` INT(255), `created_by` INT(255), `created_on` TIMESTAMP)  BEGIN
set @t1=concat("INSERT INTO interview_feedback(position,department,type,candidate,candidate_name,replacement_candidate_name,location,reason_to_leave_job,reference_name,total_exp,current_ctc,expexted_ctc,notice_period,expected_doj,feedback,status,created_by,created_on)  values('",position,"','",department,"','",type,"','",candidate,"','",candidate_name,"','",replacement_candidate_name,"','",location,"','",reason_to_leave_job,"','",reference_name,"','",total_exp,"','",current_ctc,"','",expexted_ctc,"','",notice_period,"','",expected_doj,"','",feedback,"','",status,"','",created_by,"','",created_on,"')");
PREPARE stmt1 from @t1; 
EXECUTE stmt1;
DEALLOCATE PREPARE stmt1; 
END$$

DROP PROCEDURE IF EXISTS `md_commands_insert`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `md_commands_insert` (IN `candidate_id` INT(10), IN `md_commands` VARCHAR(150), IN `md_status` INT(15), IN `status` INT(10), IN `created_by` INT(10), IN `created_on` DATE)  BEGIN
set @t1=concat("INSERT INTO md_commands(candidate_id,md_commands,md_status,status,created_by,created_on)
values('",candidate_id,"','",md_commands,"','",md_status,"','",status,"','",created_by,"','",created_on,"')");
PREPARE stmt1 from @t1; 
EXECUTE stmt1;
DEALLOCATE PREPARE stmt1; 
END$$

DROP PROCEDURE IF EXISTS `recruiter_details_insert`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `recruiter_details_insert` (IN `position` VARCHAR(50), IN `tech_department` VARCHAR(50), IN `replacement` VARCHAR(25), IN `new_candidate` VARCHAR(50), IN `replaced_name` VARCHAR(50), IN `new_name` VARCHAR(50), IN `site` VARCHAR(50), IN `reason_leave` VARCHAR(100), IN `reference` VARCHAR(50), IN `tot_year_exp` INT(10), IN `current_ctc` FLOAT(50,2), IN `exp_ctc` FLOAT(50,2), IN `notice_period` INT(10), IN `date_of_join` DATE, IN `recruiter_name` VARCHAR(50), IN `rating` INT(10), IN `remarks` VARCHAR(150), IN `status_recruiter` VARCHAR(50), IN `command_technical_person` VARCHAR(150), IN `interview_date` DATE, IN `status` INT(10), IN `created_by` INT(10), IN `created_on` DATE)  BEGIN
set @d1=concat("INSERT INTO recruiter_details(position,tech_department,replacement,new_candidate,replaced_name,new_name,site,reason_leave,reference,tot_year_exp,current_ctc,exp_ctc,notice_period,date_of_join,recruiter_name,ratings,remarks,status_recruiter,command_technical_person,interview_date,status,created_by,created_on)  values('",position,"','",tech_department,"','",replacement,"','",new_candidate,"','",replaced_name,"','",new_name,"','",site,"','",reason_leave,"','",reference,"','",tot_year_exp,"','",current_ctc,"','",exp_ctc,"','",notice_period,"','",date_of_join,"','",recruiter_name,"','",ratings,"','",remarks,"','",status_recruiter,"','",command_technical_person,"','",interview_date,"','",status,"','",created_by,"','",created_on,"')");
PREPARE dtmt1 from @d1; 
EXECUTE dtmt1;
DEALLOCATE PREPARE dtmt1; 
END$$

DROP PROCEDURE IF EXISTS `recruiter_feedback_insert`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `recruiter_feedback_insert` (IN `recruiter_name` VARCHAR(150), IN `interpersonal_skill` VARCHAR(150), IN `rating` INT(11), IN `response` VARCHAR(150), IN `overall_ratings` INT(255), IN `remarks` VARCHAR(150), IN `feedback` VARCHAR(255), IN `status` INT(255), IN `created_by` INT(255), IN `created_on` TIMESTAMP)  BEGIN
set @t1=concat("INSERT INTO recruiter_feedback(recruiter_name,interpersonal_skill,rating,response,overall_ratings,remarks,feedback,status,created_by,created_on)  values('",recruiter_name,"','",interpersonal_skill,"','",rating,"','",response,"','",overall_ratings,"','",remarks,"','",feedback,"','",status,"','",created_by,"','",created_on,"')");
PREPARE stmt1 from @t1; 
EXECUTE stmt1;
DEALLOCATE PREPARE stmt1; 
END$$

DROP PROCEDURE IF EXISTS `technical_person_feedback_insert`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `technical_person_feedback_insert` (IN `technical_person_name` VARCHAR(150), IN `technical_skill` VARCHAR(150), IN `rating` INT(11), IN `response` VARCHAR(150), IN `overall_ratings` INT(255), IN `remarks` VARCHAR(150), IN `feedback` VARCHAR(150), IN `status` INT(255), IN `created_by` INT(255), IN `created_on` TIMESTAMP)  BEGIN
set @t1=concat("INSERT INTO technical_person_feedback(technical_person_name,technical_skill,rating,response,overall_ratings,remarks,feedback,status,created_by,created_on)  values('",technical_person_name,"','",technical_skill,"','",rating,"','",response,"','",overall_ratings,"','",remarks,"','",feedback,"','",status,"','",created_by,"','",created_on,"')");
PREPARE stmt1 from @t1; 
EXECUTE stmt1;
DEALLOCATE PREPARE stmt1; 
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `candicate_results`
--

DROP TABLE IF EXISTS `candicate_results`;
CREATE TABLE IF NOT EXISTS `candicate_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ueser_id` int(11) NOT NULL,
  `question` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candicate_results`
--

INSERT INTO `candicate_results` (`id`, `ueser_id`, `question`, `answer`, `Status`, `created`) VALUES
(1, 1, 1, 1, 1, '2020-12-07 08:38:48'),
(2, 1, 2, 3, 1, '2020-12-07 08:38:48'),
(3, 1, 3, 3, 1, '2020-12-07 08:38:48'),
(4, 1, 4, 1, 1, '2020-12-07 08:38:48'),
(5, 1, 5, 4, 1, '2020-12-07 08:38:48'),
(6, 1, 6, 1, 1, '2020-12-07 08:38:48'),
(7, 1, 7, 4, 1, '2020-12-07 08:38:48'),
(8, 1, 8, 2, 1, '2020-12-07 08:38:48'),
(9, 1, 9, 3, 1, '2020-12-07 08:38:48'),
(10, 1, 10, 1, 1, '2020-12-07 08:38:48'),
(11, 1, 11, 3, 1, '2020-12-07 08:38:48'),
(12, 1, 12, 2, 1, '2020-12-07 08:38:48'),
(13, 1, 13, 1, 1, '2020-12-07 08:38:48'),
(14, 1, 14, 3, 1, '2020-12-07 08:38:48'),
(15, 1, 15, 2, 1, '2020-12-07 08:38:48'),
(16, 1, 16, 1, 1, '2020-12-07 08:38:48'),
(17, 1, 18, 3, 1, '2020-12-07 08:38:48'),
(18, 1, 19, 2, 1, '2020-12-07 08:38:48'),
(19, 1, 20, 4, 1, '2020-12-07 08:38:48'),
(20, 1, 21, 1, 1, '2020-12-07 08:38:48'),
(21, 1, 22, 4, 1, '2020-12-07 08:38:48'),
(22, 1, 23, 2, 1, '2020-12-07 08:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_form_details`
--

DROP TABLE IF EXISTS `candidate_form_details`;
CREATE TABLE IF NOT EXISTS `candidate_form_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(150) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `department` varchar(25) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(150) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `paddress` varchar(250) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `mail` varchar(150) DEFAULT NULL,
  `adharnumber` varchar(100) DEFAULT NULL,
  `pannumber` varchar(100) DEFAULT NULL,
  `voternumber` varchar(100) DEFAULT NULL,
  `educationalDetails` varchar(150) DEFAULT NULL,
  `EmployeeStatus` varchar(100) DEFAULT NULL,
  `year_of_pass` int(10) DEFAULT NULL,
  `companyname` varchar(250) DEFAULT NULL,
  `no_of_year` varchar(10) DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_form_details`
--

INSERT INTO `candidate_form_details` (`id`, `company_name`, `position`, `department`, `first_name`, `last_name`, `father_name`, `gender`, `dob`, `address`, `paddress`, `phone`, `mail`, `adharnumber`, `pannumber`, `voternumber`, `educationalDetails`, `EmployeeStatus`, `year_of_pass`, `companyname`, `no_of_year`, `status`, `created_by`, `created_on`) VALUES
(1, '1', 'Php', '5', 'Balachandar', 's', 'R.Sarvesan', 'male', '1995-07-30', 'vellore', 'vellore', '8458487548', 'bala@gmail.com', '7458HBGB41', 'NHGB4512J', '84575NJHU1', 'B.e', 'experience', NULL, 'Bluebase', '3', 13, 1, '2020-12-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `company_master`
--

DROP TABLE IF EXISTS `company_master`;
CREATE TABLE IF NOT EXISTS `company_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(100) DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_master`
--

INSERT INTO `company_master` (`id`, `companyname`, `status`) VALUES
(1, 'Bluebase', 1),
(2, 'Quadsel', 1),
(3, 'sample', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ctc_approval_table`
--

DROP TABLE IF EXISTS `ctc_approval_table`;
CREATE TABLE IF NOT EXISTS `ctc_approval_table` (
  `id` int(150) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(10) DEFAULT NULL,
  `candidate_name` varchar(255) NOT NULL,
  `present_ctc` varchar(255) NOT NULL,
  `expected_ctc` varchar(255) NOT NULL,
  `ctc_offered` varchar(255) NOT NULL,
  `offered_take_home` varchar(255) NOT NULL,
  `offered_designation` varchar(255) NOT NULL,
  `dept_head_approval` varchar(255) NOT NULL,
  `dept_director_approval` varchar(255) NOT NULL,
  `CUG` varchar(255) NOT NULL,
  `mail_id` varchar(255) NOT NULL,
  `system` varchar(255) NOT NULL,
  `seating` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department_mapping`
--

DROP TABLE IF EXISTS `department_mapping`;
CREATE TABLE IF NOT EXISTS `department_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(250) NOT NULL,
  `department_id` int(10) NOT NULL,
  `department_head` int(8) NOT NULL,
  `status` int(10) NOT NULL,
  `created_by` int(10) NOT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department_mapping`
--

INSERT INTO `department_mapping` (`id`, `company_name`, `department_id`, `department_head`, `status`, `created_by`, `created_on`) VALUES
(1, '1', 5, 13, 1, 2, '2020-11-27'),
(2, '2', 1, 13, 1, 2, '2020-11-27');

-- --------------------------------------------------------

--
-- Table structure for table `emp_certification`
--

DROP TABLE IF EXISTS `emp_certification`;
CREATE TABLE IF NOT EXISTS `emp_certification` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `emp_id` int(255) NOT NULL,
  `certification_name` varchar(150) NOT NULL,
  `certification_number` varchar(150) NOT NULL,
  `validity_from` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `validity_to` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `attachment` varchar(150) NOT NULL,
  `status` int(255) NOT NULL,
  `created_by` int(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(255) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_certification`
--

INSERT INTO `emp_certification` (`id`, `emp_id`, `certification_name`, `certification_number`, `validity_from`, `validity_to`, `attachment`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 2, 'C Programming', '258', '2020-04-07 05:40:07', '2020-07-07 05:40:23', 'Programming.jpg', 1, 1, '2020-09-08 09:36:13', 1, '2020-09-08 09:36:20'),
(2, 1, 'Embedded', '159', '2020-01-01 05:47:12', '2020-06-01 05:39:00', 'embedded.jpg', 1, 1, '2020-09-08 09:39:47', 1, '2020-09-08 09:39:12'),
(3, 3, 'embedded', 'ven002', '2020-05-06 09:35:06', '2020-08-06 10:35:50', 'aswinuwefjpg', 1, 1, '2020-09-09 07:38:52', NULL, NULL),
(4, 1, 'php', '456', '2020-05-06 09:35:06', '2020-08-06 10:35:06', 'aswinuwefjpg', 1, 1, '2020-09-09 07:38:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emp_details`
--

DROP TABLE IF EXISTS `emp_details`;
CREATE TABLE IF NOT EXISTS `emp_details` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `emp_id` int(255) NOT NULL,
  `organization_name` varchar(150) NOT NULL,
  `designation` varchar(150) NOT NULL,
  `from_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `to_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `total_experience` int(255) NOT NULL,
  `status` int(255) NOT NULL,
  `created_by` int(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(255) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_details`
--

INSERT INTO `emp_details` (`id`, `emp_id`, `organization_name`, `designation`, `from_date`, `to_date`, `total_experience`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 2, 'Quadsel', 'software trainee', '2019-05-16 05:31:00', '2020-05-15 09:52:07', 1, 1, 1, '2020-09-08 09:28:30', 1, '2020-09-08 09:28:14'),
(2, 3, 'Bluebase', 'Web designer', '2019-01-01 05:41:00', '2020-01-01 07:56:00', 1, 1, 1, '2020-09-08 09:55:08', 1, '2020-09-08 09:47:23'),
(3, 1, 'tcs', 'msbi developer', '2019-04-06 09:35:06', '2020-04-06 10:34:06', 1, 1, 1, '2020-09-09 11:22:52', NULL, NULL),
(4, 1, 'cts', 'ETL developer', '2018-04-06 09:35:06', '2020-04-06 10:34:06', 1, 1, 1, '2020-09-09 11:22:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emp_personal_details`
--

DROP TABLE IF EXISTS `emp_personal_details`;
CREATE TABLE IF NOT EXISTS `emp_personal_details` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `fathers_name` varchar(150) NOT NULL,
  `DOB` date NOT NULL,
  `communication_address` varchar(150) NOT NULL,
  `permanent_address` varchar(150) NOT NULL,
  `mobile_num` varchar(150) NOT NULL,
  `email_id` varchar(150) NOT NULL,
  `aadhar_num` varchar(150) NOT NULL,
  `pan_num` varchar(150) NOT NULL,
  `voter_id` varchar(150) NOT NULL,
  `resume` varchar(150) NOT NULL,
  `status` int(255) NOT NULL,
  `created_by` int(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(255) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  `position` varchar(100) NOT NULL,
  PRIMARY KEY (`name`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_personal_details`
--

INSERT INTO `emp_personal_details` (`id`, `name`, `fathers_name`, `DOB`, `communication_address`, `permanent_address`, `mobile_num`, `email_id`, `aadhar_num`, `pan_num`, `voter_id`, `resume`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`, `position`) VALUES
(1, 'Bala', 'bbb', '1996-04-10', 'aaa,bbb,ccc', 'bbb,ccc,eee', '9999999999', 'sssssss@gmail.com', '555566663333', 'BQOP357432', '45876729046', 'abc.jpg', 1, 1, '2020-11-18 05:59:01', 1, '2020-09-08 09:11:06', 'software'),
(2, 'bbb', 'ccc', '1996-08-14', 'www,eeee,vvvv', 'qqqq,oooo,aaaa', '8888811111', 'bbbb@gmail.com', '222445682355', 'BQOP123456', '123456789', 'abcd.jpg', 11, 1, '2020-11-19 06:04:00', 1, '2020-09-08 09:15:16', 'software'),
(3, 'aswini', 'krishna', '1996-10-04', 'chennai', 'kadapa', '8888888', 'aswini@gmail.com', '23477643', 'rr567788', '52432', 'qwet', 1, 1, '2020-09-09 07:38:52', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `emp_qualification`
--

DROP TABLE IF EXISTS `emp_qualification`;
CREATE TABLE IF NOT EXISTS `emp_qualification` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `emp_id` int(255) NOT NULL,
  `education` varchar(150) NOT NULL,
  `institution_name` varchar(150) NOT NULL,
  `degree` varchar(150) NOT NULL,
  `field_of_specialization` varchar(150) NOT NULL,
  `year_of_passing` int(255) NOT NULL,
  `percentage` float NOT NULL,
  `attachment` varchar(150) NOT NULL,
  `status` int(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(255) NOT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  `modified_by` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_qualification`
--

INSERT INTO `emp_qualification` (`id`, `emp_id`, `education`, `institution_name`, `degree`, `field_of_specialization`, `year_of_passing`, `percentage`, `attachment`, `status`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 3, '10th', 'g school', 'btech', 'ece', 2018, 75, 'college', 1, '2020-09-08 09:21:19', 1, '2020-09-08 09:20:15', 1),
(2, 3, '12th', 'Anna College', 'MCA', 'Software', 2019, 80, 'MCA ', 1, '2020-09-08 09:23:19', 1, '2020-09-08 09:23:29', 1),
(3, 3, 'Ug', 'VBIT college', 'btech', 'ece', 2018, 85, 'aswinuwefjpg', 1, '2020-09-09 07:38:52', 1, NULL, NULL),
(4, 1, '10th', 'goutham school', 'ssc', 'maths', 2012, 92, 'aswefjpg', 1, '2020-10-09 05:38:52', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `final_technical_team_commands`
--

DROP TABLE IF EXISTS `final_technical_team_commands`;
CREATE TABLE IF NOT EXISTS `final_technical_team_commands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `technical_id` int(10) NOT NULL,
  `skill` varchar(250) NOT NULL,
  `rating` int(10) NOT NULL,
  `response` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `final_technical_team_commands`
--

INSERT INTO `final_technical_team_commands` (`id`, `technical_id`, `skill`, `rating`, `response`) VALUES
(1, 1, 'php', 5, '4'),
(2, 1, 'sql', 4, '5');

-- --------------------------------------------------------

--
-- Table structure for table `final_technical_team_details`
--

DROP TABLE IF EXISTS `final_technical_team_details`;
CREATE TABLE IF NOT EXISTS `final_technical_team_details` (
  `id` int(11) NOT NULL,
  `candidate_id` int(10) NOT NULL,
  `head_name` varchar(250) NOT NULL,
  `rating` varchar(250) NOT NULL,
  `remarks` varchar(250) NOT NULL,
  `head_status` varchar(250) NOT NULL,
  `status` int(10) NOT NULL DEFAULT '0',
  `created_by` int(10) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(10) NOT NULL,
  `modified_on` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_feedback`
--

DROP TABLE IF EXISTS `hr_feedback`;
CREATE TABLE IF NOT EXISTS `hr_feedback` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `hr_comments` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `feedback` varchar(150) NOT NULL,
  `flag_id` int(255) NOT NULL,
  `created_by` int(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(255) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_feedback`
--

INSERT INTO `hr_feedback` (`id`, `hr_comments`, `status`, `feedback`, `flag_id`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'xyz', 'MD', 'xyz', 1, 1, '2020-09-08 11:09:24', 1, '2020-09-08 11:11:18'),
(2, 'yyy', 'MD & HOD', 'xyz', 1, 1, '2020-09-08 11:12:28', 1, '2020-09-08 11:15:00'),
(3, 'abc', 'MD', 'aaaa', 1, 1, '2020-10-09 09:20:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interview_feedback`
--

DROP TABLE IF EXISTS `interview_feedback`;
CREATE TABLE IF NOT EXISTS `interview_feedback` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `position` varchar(150) NOT NULL,
  `department` varchar(150) NOT NULL,
  `type` varchar(150) NOT NULL,
  `candidate` varchar(150) NOT NULL,
  `candidate_name` varchar(150) NOT NULL,
  `replacement_candidate_name` varchar(150) NOT NULL,
  `location` varchar(150) NOT NULL,
  `reason_to_leave_job` varchar(150) NOT NULL,
  `reference_name` varchar(150) NOT NULL,
  `total_exp` int(255) NOT NULL,
  `current_ctc` int(255) NOT NULL,
  `expexted_ctc` int(255) NOT NULL,
  `notice_period` int(255) NOT NULL,
  `expected_doj` date NOT NULL,
  `feedback` varchar(150) NOT NULL,
  `status` int(255) NOT NULL,
  `created_by` int(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(255) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interview_feedback`
--

INSERT INTO `interview_feedback` (`id`, `position`, `department`, `type`, `candidate`, `candidate_name`, `replacement_candidate_name`, `location`, `reason_to_leave_job`, `reference_name`, `total_exp`, `current_ctc`, `expexted_ctc`, `notice_period`, `expected_doj`, `feedback`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'Software Trainee', 'developer', 'xxx', 'aaaa', 'bbbb', 'ccccc', 'chennai', 'personal', 'yyyyy', 2, 500000, 700000, 3, '2020-05-09', 'xxxxxx', 1, 1, '2020-09-08 11:00:26', 1, '2020-09-08 11:01:37'),
(2, 'hr executive', 'hr', 'payroll', 'xyz', 'xxx', 'yyy', 'andhra pradesh', 'personal', 'zzz', 5, 1000000, 1200000, 3, '2020-09-30', 'qqq', 1, 1, '2020-09-08 11:20:12', 1, '2020-09-08 11:20:19'),
(3, 'sales manager', 'sales', 'xxx', 'male', 'krishna', 'reddy', 'chennai', 'personal', 'shah', 4, 500000, 700000, 30, '2020-04-06', 'gud', 1, 1, '2020-10-09 10:20:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `md_commands`
--

DROP TABLE IF EXISTS `md_commands`;
CREATE TABLE IF NOT EXISTS `md_commands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(10) DEFAULT NULL,
  `md_commands` varchar(150) DEFAULT NULL,
  `md_status` int(15) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `modified_by` int(10) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `question_master`
--

DROP TABLE IF EXISTS `question_master`;
CREATE TABLE IF NOT EXISTS `question_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Questions` text NOT NULL,
  `Option_A` varchar(100) NOT NULL,
  `Option_B` varchar(100) NOT NULL,
  `Option_C` varchar(100) NOT NULL,
  `Option_D` varchar(100) NOT NULL,
  `answer_key` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_master`
--

INSERT INTO `question_master` (`id`, `Questions`, `Option_A`, `Option_B`, `Option_C`, `Option_D`, `answer_key`, `status`, `created`) VALUES
(1, 'The sum of ages of 5 children born at the intervals of 3 years each is 50 years. What is the age of the youngest child?', '4 years', '8 years', '10 years', 'None of these', '4', 1, '2020-11-18 05:22:41'),
(2, 'A shopkeeper expects a gain of 22.5% on his cost price. If in a week, his sale was of Rs. 392, what was his profit?', 'Rs. 18.20', 'Rs. 70', 'Rs. 72', 'Rs. 88.25', '3', 1, '2020-11-18 05:22:59'),
(3, 'An aeroplane covers a certain distance at a speed of 240 kmph in 5 hours. To cover the same distance in 1  hours, it must travel at a speed of:', '300 kmph', '360 kmph', '600 kmph', '720 kmph', '4', 1, '2020-11-11 09:21:16'),
(4, 'A, B and C can do a piece of work in 20, 30 and 60 days respectively. In how many days can A do the work if he is assisted by B and C on every third day?', '12 days', '15 days', '16 days', '18 days', '2', 1, '2020-11-18 05:23:05'),
(5, 'A is two years older than B who is twice as old as C. If the total of the ages of A, B and C be 27, the how old is B?', '7', '8', '9', '10', '4', 1, '2020-11-18 05:23:10'),
(6, ' All the trees in the park are flowering trees Some of the trees in the park are dogwoods. All dogwoods in the park are flowering trees. If the first two statements are true, the third statement is', 'true', 'false', 'uncertain', 'None of these', '1', 1, '2020-11-18 05:23:15'),
(7, 'Find the greatest number that will divide 43, 91 and 183 so as to leave the same remainder in each case.', '4', '7', '9', '13', '1', 1, '2020-11-18 05:23:21'),
(8, 'A grocer has a sale of Rs. 6435, Rs. 6927, Rs. 6855, Rs. 7230 and Rs. 6562 for 5 consecutive months. How much sale must he have in the sixth month so that he gets an average sale of Rs. 6500?', 'Rs. 4991', 'Rs. 5991', 'Rs. 6001', 'Rs. 6991', '1', 1, '2020-11-18 05:23:26'),
(9, ' A bag contains 2 red, 3 green and 2 blue balls. Two balls are drawn at random. What is the probability that none of the balls drawn is blue?', '10/21', '11/21', '2/7', '5/7', '1', 1, '2020-11-18 05:23:31'),
(10, '3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?', '9', '10', '11', '12', '4', 1, '2020-11-18 05:23:36'),
(11, 'What is the output of this C code?  #include <stdio.h>     void main()     {         char *ch;         printf(\"enter a value btw 1 to 3:\");        scanf(\"%s\", ch);         switch (ch)         {         case \"1\":             printf(\"1\");             break;         case \"2\":             printf(\"2\");             break;         }     }', '1', '2', 'Compile time error ', 'No Compile time error', '3', 1, '2020-11-18 05:23:40'),
(12, ' What is the output of this C code?        (Assuming size of int be 4)  #include <stdio.h>     struct temp     {         int a;         int b;         int c;     } p[] = {0};     main()     {         printf(\"%d\", sizeof(p));     }', '4', '12', '16', 'Can’t be estimated due to ambigous initialization of array', '2', 1, '2020-11-18 05:23:54'),
(13, ' #include <stdio.h>  void main() 	    { 	        int k = 8; 4.	        int x = 0 == 1 && k++; 	        printf(\"%d%d\\n\", x, k); 	    }', '0 9', '0 8', '1 8', '1 9', '2', 1, '2020-11-18 05:23:58'),
(14, 'What will the function randomize() do in Turbo C under DOS?', 'returns a random number.', 'returns a random number generator in the specified range.', 'C. returns a random number generator with a random value based on time.', 'return a random number with a given seed value.', '3', 1, '2020-11-18 05:24:02'),
(15, ' Which of the following statements is correct?', 'A. Base class pointer cannot point to derived class.', 'Derived class pointer cannot point to base class.', 'Pointer to derived class cannot be created.', 'Pointer to base class cannot be created.', '2', 1, '2020-11-18 05:24:06'),
(16, 'Which of the following concepts of OOPS means exposing only necessary information to client?', 'Encapsulation', 'Abstraction', 'Data hiding', 'Data binding', '3', 1, '2020-11-18 05:24:10'),
(17, 'What happens when we try to compile the class definition in following code snippet? class Birds {}; class Peacock : protected Birds {};', 'It will not compile because class body of Birds is not defined.', 'It will not compile because class body of Peacock is not defined.', 'It will not compile because a class cannot be protectedly inherited from other class', 'It will compile succesfully.', '4', 1, '2020-11-18 05:24:17'),
(18, 'Which of the following statement is correct regarding destructor of base class?', 'Destructor of base class should always be static.', 'Destructor of base class should always be virtual.', 'Destructor of base class should not be virtual.', 'Destructor of base class should always be private.', '2', 1, '2020-11-18 05:24:22'),
(19, 'void start() {       A a = new A();      B b = new B();      a.s(b);       b = null; /* Line 5 */     a = null;  /* Line 6 */     System.out.println(\"start completed\"); /* Line 7 */ }  When is the B object, created in line 3, eligible for garbage collection?', 'after line 5', 'after line 6', 'after line 7', 'There is no way to be absolutely certain.', '4', 1, '2020-11-18 05:24:27'),
(20, 'A constructor that accepts __________ parameters is called the default constructor.', 'one', 'two', 'no', 'three', '3', 1, '2020-11-18 05:24:32'),
(21, 'Destructor has the same name as the constructor and it is preceded by ______ .', '!', '?', '~', '$', '3', 1, '2020-11-18 05:24:39'),
(22, 'One solution to the multivalued dependency constraint problem is to', 'split the relation into two relations, each with a single theme.', 'change the theme.', 'create a new theme.', 'add a composite key.', '1', 1, '2020-11-18 05:24:44'),
(23, 'The different classes of relations created by the technique for preventing modification anomalies are called:', 'normal forms.', 'referential integrity constraints.', 'functional dependencies.', 'None of the above is correct.', '1', 1, '2020-11-18 05:24:47'),
(24, 'Which class does not override the equals() and hashCode() methods, inheriting them directly from class Object?', 'java.lang.String', 'java.lang.Double', 'java.lang.StringBuffer', 'java.lang.Character', '3', 2, '2020-11-18 05:25:00'),
(26, 'what is php', 'hypertext pre processor', '9', '6', '3', '1', 2, '2020-11-18 05:44:58'),
(27, 'What is array', 'hyperty text', 'personel', 'home', '2', '1', 2, '2020-10-20 05:05:35'),
(35, 'What is php Extension?', 'Hypertext Preprocessor', 'HyperText Processor', 'Hyperlink Preprocessor', 'HyperLink Processor', '3', 2, '2020-11-18 05:31:30');

-- --------------------------------------------------------

--
-- Table structure for table `recruiter_commands`
--

DROP TABLE IF EXISTS `recruiter_commands`;
CREATE TABLE IF NOT EXISTS `recruiter_commands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(10) DEFAULT NULL,
  `skill_question` varchar(100) DEFAULT NULL,
  `rating` varchar(10) DEFAULT NULL,
  `response` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recruiter_commands`
--

INSERT INTO `recruiter_commands` (`id`, `candidate_id`, `skill_question`, `rating`, `response`) VALUES
(1, 1, 'english', '5', 'well'),
(2, 1, 'Basic', '4', 'good');

-- --------------------------------------------------------

--
-- Table structure for table `recruiter_details`
--

DROP TABLE IF EXISTS `recruiter_details`;
CREATE TABLE IF NOT EXISTS `recruiter_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(100) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `tech_department` varchar(50) DEFAULT NULL,
  `replacement` varchar(25) DEFAULT NULL,
  `replaced_name` varchar(50) DEFAULT NULL,
  `site` varchar(50) DEFAULT NULL,
  `reason_leave` varchar(100) DEFAULT NULL,
  `reference` varchar(50) DEFAULT NULL,
  `tot_year_exp` int(10) DEFAULT NULL,
  `current_ctc` float(50,2) DEFAULT NULL,
  `exp_ctc` float(50,2) DEFAULT NULL,
  `notice_period` int(10) DEFAULT NULL,
  `date_of_join` date DEFAULT NULL,
  `recruiter_name` varchar(50) DEFAULT NULL,
  `ratings` varchar(250) DEFAULT NULL,
  `remarks` varchar(150) DEFAULT NULL,
  `status_recruiter` varchar(50) DEFAULT NULL,
  `command_technical_person` varchar(150) DEFAULT NULL,
  `interview_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(5) DEFAULT '1',
  `created_by` int(5) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recruiter_details`
--

INSERT INTO `recruiter_details` (`id`, `candidate_id`, `position`, `tech_department`, `replacement`, `replaced_name`, `site`, `reason_leave`, `reference`, `tot_year_exp`, `current_ctc`, `exp_ctc`, `notice_period`, `date_of_join`, `recruiter_name`, `ratings`, `remarks`, `status_recruiter`, `command_technical_person`, `interview_date`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 1, 'Php', 'Software', 'new', NULL, 'chennai', 'new', 'gopinath', 3, 120000.00, 220000.00, 30, '2021-01-01', 'Mythili', '9', 'Good', '13', '5', '2020-12-07 08:42:13', 1, NULL, '2020-12-07 08:42:13', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recruiter_feedback`
--

DROP TABLE IF EXISTS `recruiter_feedback`;
CREATE TABLE IF NOT EXISTS `recruiter_feedback` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `recruiter_name` varchar(150) NOT NULL,
  `interpersonal_skill` varchar(150) NOT NULL,
  `rating` int(255) NOT NULL,
  `response` varchar(150) NOT NULL,
  `overall_ratings` int(255) NOT NULL,
  `remarks` varchar(150) NOT NULL,
  `feedback` varchar(150) NOT NULL,
  `status` int(255) NOT NULL,
  `created_by` int(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(255) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recruiter_feedback`
--

INSERT INTO `recruiter_feedback` (`id`, `recruiter_name`, `interpersonal_skill`, `rating`, `response`, `overall_ratings`, `remarks`, `feedback`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'rajesh', 'good', 5, 'good', 4, 'to be improve', 'qqqqq', 1, 1, '2020-09-08 11:04:11', 1, '2020-09-08 11:04:22'),
(2, 'abc', 'good atitude', 5, 'good', 5, 'nill', 'rrrr', 1, 1, '2020-09-08 11:27:19', 1, '2020-09-08 11:26:39'),
(3, 'andrews', 'good intracting', 4, 'gud', 5, 'nill', 'good', 1, 1, '2020-10-09 10:20:20', NULL, NULL),
(4, 'ram', 'good intracting', 4, 'gud', 4, 'nill', 'good', 1, 1, '2020-10-09 10:20:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `technical_person_feedback`
--

DROP TABLE IF EXISTS `technical_person_feedback`;
CREATE TABLE IF NOT EXISTS `technical_person_feedback` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `technical_person_name` varchar(150) NOT NULL,
  `technical_skill` varchar(150) NOT NULL,
  `rating` int(11) NOT NULL,
  `response` varchar(150) NOT NULL,
  `overall_ratings` int(255) NOT NULL,
  `remarks` varchar(150) NOT NULL,
  `feedback` varchar(150) NOT NULL,
  `status` int(255) NOT NULL,
  `created_by` int(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(255) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `technical_person_feedback`
--

INSERT INTO `technical_person_feedback` (`id`, `technical_person_name`, `technical_skill`, `rating`, `response`, `overall_ratings`, `remarks`, `feedback`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'ramesh', 'programming', 5, 'good', 5, 'qqqq', 'to be improve', 1, 1, '2020-09-08 11:06:13', 1, '2020-09-08 11:06:23'),
(2, 'rajesh', 'php', 5, 'good', 5, 'nill', 'xxx', 1, 1, '2020-09-08 11:22:17', 1, '2020-09-08 11:23:00'),
(3, 'jhon', 'programming', 5, 'gud', 5, 'nill', 'good', 1, 1, '2020-10-09 12:20:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `technical_team_commands`
--

DROP TABLE IF EXISTS `technical_team_commands`;
CREATE TABLE IF NOT EXISTS `technical_team_commands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `technical_id` int(100) DEFAULT NULL,
  `skill` varchar(100) DEFAULT NULL,
  `rating` int(10) DEFAULT NULL,
  `response` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `technical_team_commands`
--

INSERT INTO `technical_team_commands` (`id`, `technical_id`, `skill`, `rating`, `response`) VALUES
(1, 1, 'php basic', 4, '4'),
(2, 1, 'sql queries', 5, '5'),
(3, 1, 'css', 4, '4');

-- --------------------------------------------------------

--
-- Table structure for table `technical_team_details`
--

DROP TABLE IF EXISTS `technical_team_details`;
CREATE TABLE IF NOT EXISTS `technical_team_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(100) DEFAULT NULL,
  `head_name` varchar(50) DEFAULT NULL,
  `rating` varchar(250) DEFAULT NULL,
  `remarks` varchar(150) DEFAULT NULL,
  `head_status` varchar(50) DEFAULT NULL,
  `status` int(10) DEFAULT '0',
  `created_by` int(5) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(5) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `technical_team_details`
--

INSERT INTO `technical_team_details` (`id`, `candidate_id`, `head_name`, `rating`, `remarks`, `head_status`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 1, 'Laxmi mam', '13', 'good', '4', 0, NULL, '2020-12-07 08:44:17', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `x_table_recruitment`
--

DROP TABLE IF EXISTS `x_table_recruitment`;
CREATE TABLE IF NOT EXISTS `x_table_recruitment` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `position` varchar(100) NOT NULL,
  `candidate_name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `Paddress` varchar(100) NOT NULL,
  `phone` int(10) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `adharnumber` int(100) NOT NULL,
  `adharcard` varchar(100) NOT NULL,
  `pannumber` int(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `voternumber` int(100) NOT NULL,
  `votercard` varchar(100) NOT NULL,
  `resume` varchar(100) NOT NULL,
  `Examination_passed_1` varchar(100) NOT NULL,
  `instute_1` varchar(100) NOT NULL,
  `degree_1` varchar(100) NOT NULL,
  `field_1` varchar(100) NOT NULL,
  `passing_1` varchar(100) NOT NULL,
  `percentage_1` varchar(100) NOT NULL,
  `attachment_1` varchar(100) NOT NULL,
  `certifcatename_1` varchar(100) NOT NULL,
  `certifcatnumber_1` varchar(100) NOT NULL,
  `validityfrom_1` varchar(100) NOT NULL,
  `validityto_1` varchar(100) NOT NULL,
  `certifcatefile_1` varchar(100) NOT NULL,
  `organization_1` varchar(100) NOT NULL,
  `Designation_1` varchar(100) NOT NULL,
  `From_1` varchar(100) NOT NULL,
  `to_1` varchar(100) NOT NULL,
  `yearofexperience_1` varchar(100) NOT NULL,
  `overallexp` varchar(100) NOT NULL,
  `reference` varchar(100) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `interview_date` date NOT NULL,
  `Status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `y_leave_category`
--

DROP TABLE IF EXISTS `y_leave_category`;
CREATE TABLE IF NOT EXISTS `y_leave_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) DEFAULT NULL,
  `leave_ids` int(10) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `y_leave_category`
--

INSERT INTO `y_leave_category` (`id`, `type`, `leave_ids`, `status`) VALUES
(1, 'employee', 1, 1),
(2, 'contractor', 2, 1),
(3, 'test', 3, 1),
(4, 'check', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `y_leave_details`
--

DROP TABLE IF EXISTS `y_leave_details`;
CREATE TABLE IF NOT EXISTS `y_leave_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(100) DEFAULT NULL,
  `count` int(10) DEFAULT NULL,
  `balance_leave` varchar(150) DEFAULT NULL,
  `leave_type` int(10) DEFAULT NULL,
  `no_of_days` int(10) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `from_time` int(10) DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `to_time` int(10) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `approver_name` varchar(100) DEFAULT NULL,
  `month` int(5) DEFAULT NULL,
  `year` int(10) DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `reject_reason` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `y_leave_details`
--

INSERT INTO `y_leave_details` (`id`, `employee_name`, `count`, `balance_leave`, `leave_type`, `no_of_days`, `from_date`, `from_time`, `to_date`, `to_time`, `reason`, `address`, `phone`, `approver_name`, `month`, `year`, `status`, `reject_reason`, `created_on`, `modified_on`) VALUES
(1, '1', 2, 'Sick Leave', 1, 2, '2020-05-01', NULL, '2020-05-02', NULL, 'Going Hometown', '8978674523', '', 'Rajeshwari', 6, 2020, 2, NULL, '2020-06-10 00:00:00', '2020-06-10 00:00:00'),
(2, '1', 2, 'Sick Leave', 1, 2, '2020-05-04', NULL, '2020-05-05', NULL, 'Going Hometown', '8978674523', '', 'Rajeshwari', 6, 2020, 2, NULL, '2020-06-10 00:00:00', '2020-06-10 00:00:00'),
(3, '4', 2, 'Sick Leave', 1, 1, '2020-06-18', NULL, '2020-06-18', NULL, 'Fever', 'Kodambakkam', '988675645', 'Rajeshwari', 6, 2020, 2, NULL, '2020-06-18 00:00:00', '2020-06-18 00:00:00'),
(4, '1', 2, 'Sick Leave', 1, 2, '2020-08-01', NULL, '2020-08-06', NULL, 'Going Hometown', 'sasa', '9089786756', 'Rajeshwari', 8, 2020, 1, NULL, '2020-08-06 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `y_masters_employee`
--

DROP TABLE IF EXISTS `y_masters_employee`;
CREATE TABLE IF NOT EXISTS `y_masters_employee` (
  `id` int(155) NOT NULL AUTO_INCREMENT,
  `emp_no` int(15) DEFAULT NULL,
  `tittle` varchar(30) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `department` varchar(10) DEFAULT NULL,
  `designation` varchar(10) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `id_type` varchar(100) DEFAULT NULL,
  `id_number` varchar(100) DEFAULT NULL,
  `id_upload` varchar(50) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `salary` varchar(100) DEFAULT NULL,
  `leave_type` varchar(50) DEFAULT NULL,
  `father_name` varchar(160) DEFAULT NULL,
  `walkin_way` varchar(100) DEFAULT NULL,
  `date_of_interview` date DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `y_masters_employee`
--

INSERT INTO `y_masters_employee` (`id`, `emp_no`, `tittle`, `gender`, `first_name`, `last_name`, `user_name`, `email`, `password`, `DOB`, `phone`, `department`, `designation`, `country`, `region`, `city`, `address`, `id_type`, `id_number`, `id_upload`, `remark`, `doj`, `salary`, `leave_type`, `father_name`, `walkin_way`, `date_of_interview`, `status`) VALUES
(1, 1001, 'Employee', 'male', 'Bala', 'Chandar', 'balachandars', 'bala@bluebase.in', 'c8774ef5702b5950b488cadc9b64048d', '1995-07-30', '8978674523', '1', '3', 'India', 'Tamilnadu', 'Chennai', 'Kknagar', 'ahdar', '7856HAGA12', NULL, ' test', '2018-04-09', '1', '1', NULL, NULL, NULL, 1),
(2, 1002, NULL, 'female', 'Rizwana', 'shaik', 'rizwana', 'riz@bluebase.in', '249d24fe522f9a1a5a96024fea1faad7', '2020-06-03', '89786745', '1', '3', 'India', 'Andhra', 'Chennai', 'kknagar', 'adhar', '1788JHASS1', NULL, 'employee', '2020-06-10', '2', '1', NULL, NULL, NULL, 1),
(3, 1003, NULL, 'male', 'Jai', 'Kumar', 'jaikumar', 'jai@bluebase.in', '0decd5c563c0f47e3a074ce427bfb838', '2020-06-04', '8967563412', '1', '2', 'India', 'Tamilnadu', 'chennai', 'kodambakkam', 'ahdar', '7878HJKHJ1', NULL, 'contract', '2020-06-10', '1', '2', NULL, NULL, NULL, 1),
(7, NULL, NULL, 'male', 'mohan', 'c', 'mohan', 'mohan@gmail.com', 'e9206237def4b4ef46fd933ed0f5a08f', '2020-07-02', '8767564534', '1', '3', 'india', 'tamilnadu', 'chennai', 'kknagar', 'ahdar', '1261987289', NULL, 'join', '1970-01-01', '2', '1', NULL, NULL, '2020-07-14', 1),
(6, 1004, NULL, 'male', 'Bala', 'Chandar', 'bala', 'bala@bluebase.in', '51d29ccef331f229c7b90b0b68971406', '1995-07-30', '8767564534', '1', '3', 'India', 'Tamilnadiu', 'chennai', 'kknagar', 'adhar', '61627167', NULL, 'Leave', '2020-07-13', '1', '1', NULL, NULL, '2020-07-13', 1),
(8, 1, NULL, 'male', 'jai', 'kumar', 'jai', 'jai@bluebase.in', '421493fa48fc8df84d1f5f3478cf247a', '2020-06-04', '8978676543', '1', '3', 'Indai', 'tamilnadu', 'chennai', 'kodambakkam', 'adhar', '354313234131', NULL, 'Joining', '1970-01-01', '1', '1', NULL, NULL, '2020-07-21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `y_master_leave`
--

DROP TABLE IF EXISTS `y_master_leave`;
CREATE TABLE IF NOT EXISTS `y_master_leave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_name` varchar(100) DEFAULT NULL,
  `no_of_days` int(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `y_master_leave`
--

INSERT INTO `y_master_leave` (`id`, `leave_name`, `no_of_days`, `status`) VALUES
(1, 'Sick Leave', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `z_department_master`
--

DROP TABLE IF EXISTS `z_department_master`;
CREATE TABLE IF NOT EXISTS `z_department_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(50) DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `created_by` int(5) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_department_master`
--

INSERT INTO `z_department_master` (`id`, `dept_name`, `status`, `created_by`, `created_on`) VALUES
(1, 'Admin', 1, 1, '2020-08-13 00:00:00'),
(2, 'Hr', 1, 1, '2020-08-13 00:00:00'),
(3, 'Service', 1, 1, '2020-08-13 00:00:00'),
(4, 'Network', 1, 1, '2020-08-13 00:00:00'),
(5, 'Software', 1, 1, '2020-08-13 00:00:00'),
(8, 'Sample', 1, 2, '2020-11-23 17:28:53'),
(9, 'testing', 1, 2, '2020-12-07 10:09:00');

-- --------------------------------------------------------

--
-- Table structure for table `z_log_entry`
--

DROP TABLE IF EXISTS `z_log_entry`;
CREATE TABLE IF NOT EXISTS `z_log_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(200) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `logdate` date NOT NULL,
  `system_ip` varchar(200) NOT NULL,
  `time` time DEFAULT NULL,
  `logout` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=466 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_log_entry`
--

INSERT INTO `z_log_entry` (`id`, `user_id`, `user_name`, `logdate`, `system_ip`, `time`, `logout`) VALUES
(1, '', '', '2020-08-10', '::1', '23:24:42', NULL),
(2, '', 'Intreviewer', '2020-08-10', '::1', '23:27:08', NULL),
(3, '', 'Recruiter', '2020-08-10', '::1', '23:59:16', NULL),
(4, '', 'Recruiter', '2020-08-10', '::1', '23:59:28', NULL),
(5, '', 'Recruiter', '2020-08-10', '::1', '23:59:48', NULL),
(6, '', 'Intreviewer', '2020-08-11', '::1', '00:00:21', NULL),
(7, '', 'Intreviewer', '2020-08-11', '::1', '00:01:24', NULL),
(8, '', 'Recruiter', '2020-08-11', '::1', '00:03:00', NULL),
(9, '', 'Intreviewer', '2020-08-11', '::1', '01:04:05', NULL),
(10, '', 'Intreviewer', '2020-08-11', '::1', '01:14:41', NULL),
(11, '', 'Intreviewer', '2020-08-11', '49.249.229.10', '19:44:35', NULL),
(12, '', 'Recruiter', '2020-08-11', '49.249.229.10', '19:48:15', NULL),
(13, '', 'Intreviewer', '2020-08-11', '49.249.229.10', '19:50:13', NULL),
(14, '', 'Recruiter', '2020-08-12', '::1', '11:32:54', NULL),
(15, '', 'Recruiter', '2020-08-12', '::1', '12:29:52', NULL),
(16, '', 'Recruiter', '2020-08-12', '192.168.201.109', '14:25:53', NULL),
(17, '', 'Intreviewer', '2020-08-12', '192.168.201.109', '14:27:58', NULL),
(18, '', 'Recruiter', '2020-08-12', '192.168.201.109', '14:31:27', NULL),
(19, '', 'Recruiter', '2020-08-12', '49.249.229.10', '18:45:33', NULL),
(20, '', 'Intreviewer', '2020-08-12', '49.249.229.10', '18:50:07', NULL),
(21, '', 'Intreviewer', '2020-08-13', '::1', '11:49:55', NULL),
(22, '', 'Recruiter', '2020-08-13', '::1', '12:03:18', NULL),
(23, '', 'intreviewer', '2020-08-17', '::1', '11:13:10', NULL),
(24, '', 'Recruiter', '2020-08-17', '::1', '11:15:39', NULL),
(25, '', 'Recruiter', '2020-08-17', '49.249.229.10', '11:49:40', NULL),
(26, '', 'admin', '2020-08-17', '::1', '13:08:05', NULL),
(27, '', 'candidate', '2020-08-17', '::1', '13:09:35', NULL),
(28, '', 'admin', '2020-08-17', '::1', '15:38:27', NULL),
(29, '', 'admin', '2020-08-17', '192.168.201.109', '19:18:45', NULL),
(30, '', 'admin', '2020-08-18', '192.168.201.109', '10:21:34', NULL),
(31, '', 'Recruiter', '2020-08-18', '192.168.201.109', '10:33:33', NULL),
(32, '', 'candidate', '2020-08-18', '192.168.201.109', '10:35:12', NULL),
(33, '', 'Recruiter', '2020-08-18', '192.168.201.109', '10:36:06', NULL),
(34, '', 'admin', '2020-08-18', '::1', '11:43:47', NULL),
(35, '', 'admin', '2020-08-18', '192.168.201.109', '12:16:14', NULL),
(36, '', 'Recruiter', '2020-08-18', '::1', '12:47:03', NULL),
(37, '', 'Recruiter', '2020-08-18', '192.168.201.109', '13:00:58', NULL),
(38, '', 'Recruiter', '2020-08-19', '192.168.201.109', '09:34:38', NULL),
(39, '', 'candidate', '2020-08-19', '::1', '14:54:51', NULL),
(40, '', 'Recruiter', '2020-08-19', '::1', '14:55:32', NULL),
(41, '', 'Recruiter', '2020-08-19', '::1', '18:47:38', NULL),
(42, '', 'Recruiter', '2020-08-21', '::1', '09:23:08', NULL),
(43, '', 'technical', '2020-08-22', '49.249.229.10', '11:24:59', NULL),
(44, '', 'admin', '2020-08-22', '49.249.229.10', '11:25:16', NULL),
(45, '', 'Recruiter', '2020-08-22', '::1', '11:39:13', NULL),
(46, '', 'technical', '2020-08-22', '::1', '20:56:51', NULL),
(47, '', 'Recruiter', '2020-08-22', '::1', '21:07:55', NULL),
(48, '', 'technical', '2020-08-22', '::1', '21:09:03', NULL),
(49, '', 'admin', '2020-08-24', '::1', '14:31:23', NULL),
(50, '', 'candidate', '2020-08-24', '::1', '14:31:58', NULL),
(51, '', 'Recruiter', '2020-08-24', '::1', '14:34:36', NULL),
(52, '', 'technical', '2020-08-24', '::1', '14:37:47', NULL),
(53, '', 'admin', '2020-08-24', '::1', '14:39:00', NULL),
(54, '', 'technical', '2020-08-24', '::1', '16:46:14', NULL),
(55, '', 'Recruiter', '2020-08-24', '::1', '17:01:03', NULL),
(56, '', 'md', '2020-08-26', '::1', '08:21:37', NULL),
(57, '', 'technical', '2020-08-26', '::1', '08:30:44', NULL),
(58, '', 'md', '2020-08-26', '::1', '08:32:23', NULL),
(59, '', 'admin', '2020-08-27', '::1', '10:32:04', NULL),
(60, '', 'md', '2020-08-27', '::1', '11:36:32', NULL),
(61, '', 'admin', '2020-08-27', '::1', '11:38:02', NULL),
(62, '', 'md', '2020-08-27', '::1', '12:54:31', NULL),
(63, '', 'admin', '2020-08-27', '::1', '13:08:13', NULL),
(64, '', 'technical', '2020-08-27', '::1', '13:22:55', NULL),
(65, '', 'admin', '2020-08-27', '::1', '13:30:16', NULL),
(66, '', 'md', '2020-08-27', '::1', '14:20:35', NULL),
(67, '', 'technical', '2020-08-27', '::1', '14:29:48', NULL),
(68, '', 'admin', '2020-08-27', '::1', '14:30:24', NULL),
(69, '', 'md', '2020-08-27', '::1', '14:32:39', NULL),
(70, '', 'admin', '2020-08-28', '49.249.229.10', '11:31:36', NULL),
(71, '', 'technical', '2020-08-31', '49.249.229.10', '21:11:44', NULL),
(72, '', 'admin', '2020-08-31', '49.249.229.10', '21:12:32', NULL),
(73, '', 'admin', '2020-09-01', '::1', '21:03:44', NULL),
(74, '', 'technical', '2020-09-01', '::1', '21:05:06', NULL),
(75, '', 'admin', '2020-09-01', '::1', '21:06:22', NULL),
(76, '', 'candidate', '2020-09-02', '::1', '13:32:16', NULL),
(77, '', 'candidate', '2020-09-02', '::1', '15:43:15', NULL),
(78, '', 'Recruiter', '2020-09-02', '::1', '15:44:31', NULL),
(79, '', 'candidate', '2020-09-02', '::1', '17:07:52', NULL),
(80, '', 'Recruiter', '2020-09-02', '::1', '17:21:44', NULL),
(81, '', 'technical', '2020-09-02', '::1', '17:22:32', NULL),
(82, '', 'Recruiter', '2020-09-02', '::1', '17:26:31', NULL),
(83, '', 'candidate', '2020-09-02', '::1', '17:48:06', NULL),
(84, '', 'admin', '2020-09-03', '192.168.200.53', '10:49:49', NULL),
(85, '', 'admin', '2020-09-03', '::1', '11:53:55', NULL),
(86, '', 'admin', '2020-09-03', '::1', '11:55:15', NULL),
(87, '', 'Recruiter', '2020-09-03', '::1', '11:59:49', NULL),
(88, '', 'candidate', '2020-09-03', '::1', '12:00:39', NULL),
(89, '', 'admin', '2020-09-03', '::1', '15:38:39', NULL),
(90, '', 'admin', '2020-09-05', '::1', '10:21:15', NULL),
(91, '', 'admin', '2020-09-05', '49.249.229.10', '15:22:26', NULL),
(92, '', 'admin', '2020-09-05', '::1', '15:32:42', NULL),
(93, '', 'admin', '2020-09-07', '49.249.229.10', '12:09:52', NULL),
(94, '', 'Recruiter', '2020-09-07', '::1', '20:40:09', NULL),
(95, '', 'admin', '2020-09-07', '::1', '20:40:53', NULL),
(96, '', 'admin', '2020-09-08', '49.249.229.10', '10:41:25', NULL),
(97, '', 'admin', '2020-09-08', '49.249.229.10', '10:45:07', NULL),
(98, '', 'technical', '2020-09-08', '49.249.229.10', '10:45:53', NULL),
(99, '', 'admin', '2020-09-08', '49.249.229.10', '10:46:27', NULL),
(100, '', 'admin', '2020-09-08', '49.249.229.10', '10:58:14', NULL),
(101, '', 'admin', '2020-09-08', '49.249.229.10', '15:17:46', NULL),
(102, '', 'admin', '2020-09-08', '49.249.229.10', '16:39:24', NULL),
(103, '', 'admin', '2020-09-09', '49.249.229.10', '08:59:22', NULL),
(104, '', 'admin', '2020-09-09', '192.168.201.188', '10:49:08', NULL),
(105, '', 'admin', '2020-09-09', '49.249.229.10', '12:35:42', NULL),
(106, '', 'admin', '2020-09-09', '192.168.201.188', '17:00:09', NULL),
(107, '', 'admin', '2020-09-09', '49.249.229.10', '21:37:52', NULL),
(108, '', 'admin', '2020-09-10', '192.168.201.109', '12:02:12', NULL),
(109, '', 'admin', '2020-09-11', '49.249.229.10', '08:22:06', NULL),
(110, '', 'Recruiter', '2020-09-13', '::1', '10:04:44', NULL),
(111, '', 'candidate', '2020-09-13', '::1', '10:05:20', NULL),
(112, '', 'admin', '2020-09-13', '::1', '10:06:58', NULL),
(113, '', 'admin', '2020-09-13', '::1', '10:50:13', NULL),
(114, '', 'candidate', '2020-09-13', '::1', '12:04:57', NULL),
(115, '', 'candidate', '2020-09-13', '::1', '12:05:37', NULL),
(116, '', 'Recruiter', '2020-09-13', '::1', '12:06:29', NULL),
(117, '', 'md', '2020-09-13', '::1', '12:07:02', NULL),
(118, '', 'admin', '2020-09-13', '::1', '13:15:23', NULL),
(119, '', 'admin', '2020-09-15', '::1', '19:57:48', NULL),
(120, '', 'Recruiter', '2020-09-15', '::1', '19:58:05', NULL),
(121, '', 'admin', '2020-09-16', '49.249.229.10', '09:35:25', NULL),
(122, '', 'Recruiter', '2020-09-16', '49.249.229.10', '10:50:03', NULL),
(123, '', 'admin', '2020-09-16', '49.249.229.10', '15:35:34', NULL),
(124, '', 'Recruiter', '2020-09-16', '49.249.229.10', '16:04:36', NULL),
(125, '', 'technical', '2020-09-16', '49.249.229.10', '16:06:25', NULL),
(126, '', 'technical', '2020-09-16', '::1', '16:14:14', NULL),
(127, '', 'admin', '2020-09-16', '::1', '21:15:06', NULL),
(128, '', 'admin', '2020-09-17', '49.249.229.10', '10:18:08', NULL),
(129, '', 'admin', '2020-09-18', '192.168.201.170', '14:41:51', NULL),
(130, '', 'admin', '2020-09-18', '192.168.201.170', '14:42:55', NULL),
(131, '', 'admin', '2020-09-18', '192.168.201.180', '14:44:57', NULL),
(132, '', 'admin', '2020-09-18', '49.249.229.10', '16:10:48', NULL),
(133, '', 'admin', '2020-09-18', '49.249.229.10', '16:34:40', NULL),
(134, '', 'technical', '2020-09-18', '49.249.229.10', '16:39:25', NULL),
(135, '', 'admin', '2020-09-19', '::1', '06:32:28', NULL),
(136, '', 'admin', '2020-09-19', '::1', '09:27:33', NULL),
(137, '', 'technical', '2020-09-19', '::1', '09:27:56', NULL),
(138, '', 'md', '2020-09-19', '::1', '20:24:54', NULL),
(139, '', 'candidate', '2020-10-20', '::1', '12:45:45', NULL),
(140, '', 'candidate', '2020-11-03', '::1', '12:10:01', NULL),
(141, '', 'admin', '2020-11-03', '::1', '13:14:53', NULL),
(142, '', 'candidate', '2020-11-03', '::1', '16:00:48', NULL),
(143, '', 'admin', '2020-11-04', '::1', '11:31:30', NULL),
(144, '', 'admin', '2020-11-05', '10.225.1.78', '11:26:54', NULL),
(145, '', 'admin', '2020-11-07', '10.225.1.78', '11:54:53', NULL),
(146, '', 'admin', '2020-11-07', '10.225.1.78', '18:47:43', NULL),
(147, '', 'candidate', '2020-11-07', '10.225.1.78', '18:48:41', NULL),
(148, '', 'admin', '2020-11-09', '10.225.1.78', '09:50:39', NULL),
(149, '', 'admin', '2020-11-09', '10.225.1.78', '10:42:16', NULL),
(150, '', 'admin', '2020-11-09', '10.225.1.78', '17:36:32', NULL),
(151, '', 'candidate', '2020-11-11', '192.168.200.114', '14:12:48', NULL),
(152, '', 'admin', '2020-11-11', '192.168.200.114', '14:18:24', NULL),
(153, '', 'candidate', '2020-11-11', '192.168.200.114', '14:21:11', NULL),
(154, '', 'candidate', '2020-11-11', '192.168.200.114', '14:24:06', NULL),
(155, '', 'admin', '2020-11-11', '192.168.200.114', '14:25:31', NULL),
(156, '', 'candidate', '2020-11-11', '192.168.200.114', '15:14:30', NULL),
(157, '', 'candidate', '2020-11-11', '192.168.200.114', '15:20:26', NULL),
(158, '', 'admin', '2020-11-11', '192.168.200.114', '15:21:00', NULL),
(159, '', 'admin', '2020-11-12', '192.168.200.114', '10:19:21', NULL),
(160, '', 'Recruiter', '2020-11-12', '192.168.200.114', '10:22:00', NULL),
(161, '', 'admin', '2020-11-14', '10.225.1.78', '09:45:40', NULL),
(162, '', 'candidate', '2020-11-14', '10.225.1.78', '09:51:38', NULL),
(163, '', 'admin', '2020-11-14', '10.225.1.78', '09:52:55', NULL),
(164, '', 'Recruiter', '2020-11-14', '10.225.1.78', '09:57:34', NULL),
(165, '', 'admin', '2020-11-17', '192.168.200.114', '09:20:15', NULL),
(166, '', 'Recruiter', '2020-11-17', '192.168.200.114', '14:18:20', NULL),
(167, '', 'admin', '2020-11-17', '192.168.200.114', '14:38:08', NULL),
(168, '', 'Recruiter', '2020-11-17', '10.225.1.78', '16:32:34', NULL),
(169, '', 'admin', '2020-11-17', '10.225.1.78', '16:39:45', NULL),
(170, '', 'Recruiter', '2020-11-17', '10.225.1.78', '16:49:53', NULL),
(171, '', 'Recruiter', '2020-11-17', '192.168.200.114', '16:51:30', NULL),
(172, '', 'technical', '2020-11-18', '192.168.200.114', '09:34:25', NULL),
(173, '', 'admin', '2020-11-18', '192.168.200.16', '09:53:10', NULL),
(174, '', 'candidate', '2020-11-18', '192.168.200.16', '10:04:34', NULL),
(175, '', 'admin', '2020-11-18', '192.168.200.16', '10:06:10', NULL),
(176, '', 'candidate', '2020-11-18', '192.168.200.16', '10:07:55', NULL),
(177, '', 'admin', '2020-11-18', '192.168.200.16', '10:08:56', NULL),
(178, '', 'candidate', '2020-11-18', '192.168.200.16', '10:16:18', NULL),
(179, '', 'admin', '2020-11-18', '192.168.200.16', '10:34:38', NULL),
(180, '', 'admin', '2020-11-18', '192.168.200.114', '10:39:33', NULL),
(181, '', 'candidate', '2020-11-18', '192.168.200.114', '10:40:11', NULL),
(182, '', 'md', '2020-11-18', '192.168.200.16', '10:41:39', NULL),
(183, '', 'technical', '2020-11-18', '192.168.200.16', '10:42:18', NULL),
(184, '', 'candidate', '2020-11-18', '192.168.200.16', '10:45:26', NULL),
(185, '', 'admin', '2020-11-18', '192.168.200.16', '10:57:06', NULL),
(186, '', 'technical', '2020-11-18', '192.168.200.114', '11:16:36', NULL),
(187, '', 'Recruiter', '2020-11-18', '192.168.200.114', '11:17:15', NULL),
(188, '', 'Recruiter', '2020-11-18', '192.168.200.114', '11:33:21', NULL),
(189, '', 'technical', '2020-11-19', '192.168.200.16', '09:08:56', NULL),
(190, '', 'admin', '2020-11-19', '192.168.200.16', '09:12:13', NULL),
(191, '', 'Recruiter', '2020-11-19', '192.168.200.114', '09:25:36', NULL),
(192, '', 'Recruiter', '2020-11-19', '10.225.1.78', '10:04:54', NULL),
(193, '', 'admin', '2020-11-19', '192.168.200.114', '11:32:35', NULL),
(194, '', 'technical', '2020-11-19', '192.168.200.114', '11:36:59', NULL),
(195, '', 'Recruiter', '2020-11-19', '192.168.200.114', '11:37:51', NULL),
(196, '', 'admin', '2020-11-19', '192.168.200.114', '11:39:06', NULL),
(197, '', 'Recruiter', '2020-11-19', '192.168.200.114', '11:41:05', NULL),
(198, '', 'Recruiter', '2020-11-19', '192.168.200.114', '11:45:18', NULL),
(199, '', 'technical', '2020-11-19', '192.168.200.114', '11:57:04', NULL),
(200, '', 'Recruiter', '2020-11-19', '192.168.200.114', '11:57:48', NULL),
(201, '', 'technical', '2020-11-19', '192.168.200.114', '14:00:31', NULL),
(202, '', 'candidate', '2020-11-19', '10.225.1.78', '15:12:13', NULL),
(203, '', 'technical', '2020-11-19', '192.168.200.16', '15:44:31', NULL),
(204, '', 'Recruiter', '2020-11-19', '10.225.1.78', '16:45:15', NULL),
(205, '', 'Recruiter', '2020-11-19', '192.168.200.114', '16:48:16', NULL),
(206, '', 'candidate', '2020-11-19', '10.225.1.78', '16:54:02', NULL),
(207, '', 'candidate', '2020-11-19', '10.225.1.78', '17:13:29', NULL),
(208, '', 'candidate', '2020-11-19', '10.225.1.78', '17:32:42', NULL),
(209, '', 'candidate', '2020-11-19', '192.168.200.16', '17:34:46', NULL),
(210, '', 'technical', '2020-11-19', '192.168.200.114', '17:35:08', NULL),
(211, '', 'Recruiter', '2020-11-19', '10.225.1.78', '17:52:09', NULL),
(212, '', 'technical', '2020-11-19', '10.225.1.78', '17:52:37', NULL),
(213, '', 'candidate', '2020-11-19', '::1', '18:03:48', NULL),
(214, '', 'candidate', '2020-11-19', '::1', '18:45:54', NULL),
(215, '', 'candidate', '2020-11-19', '::1', '20:32:10', NULL),
(216, '', 'balachandar', '2020-11-19', '::1', '20:36:35', NULL),
(217, '', 'candidate', '2020-11-19', '::1', '20:37:44', NULL),
(218, '', 'candidate', '2020-11-19', '::1', '20:43:50', NULL),
(219, '', 'candidate', '2020-11-19', '10.225.1.78', '20:46:20', NULL),
(220, '', 'bala', '2020-11-19', '10.225.1.78', '20:47:05', NULL),
(221, '', 'candidate', '2020-11-20', '192.168.200.16', '09:10:29', NULL),
(222, '', 'admin', '2020-11-20', '192.168.200.16', '09:13:37', NULL),
(223, '', 'Laxmi Priya', '2020-11-20', '192.168.200.16', '09:13:58', NULL),
(224, '', 'admin', '2020-11-20', '192.168.200.16', '09:16:12', NULL),
(225, '', 'Recruiter', '2020-11-20', '192.168.200.114', '09:16:44', NULL),
(226, '', 'technical', '2020-11-20', '192.168.200.114', '09:18:12', NULL),
(227, '', 'technical', '2020-11-20', '192.168.200.114', '11:07:25', NULL),
(228, '', 'Recruiter', '2020-11-20', '192.168.200.114', '11:19:55', NULL),
(229, '', 'candidate', '2020-11-20', '::1', '11:57:00', NULL),
(230, '', 'candidate', '2020-11-20', '192.168.200.16', '12:14:40', NULL),
(231, '', 'Laxmi Priya', '2020-11-20', '192.168.200.16', '12:15:54', NULL),
(232, '', 'Laxmi Priya', '2020-11-20', '192.168.200.16', '12:16:18', NULL),
(233, '', 'candidate', '2020-11-20', '::1', '12:17:34', NULL),
(234, '', 'balachandar', '2020-11-20', '::1', '12:18:57', NULL),
(235, '', 'candidate', '2020-11-20', '::1', '12:36:56', NULL),
(236, '', 'balachandar', '2020-11-20', '::1', '13:13:51', NULL),
(237, '', 'balachandar', '2020-11-20', '::1', '13:13:52', NULL),
(238, '', 'candidate', '2020-11-20', '::1', '13:24:15', NULL),
(239, '', 'balachandar', '2020-11-20', '::1', '13:27:16', NULL),
(240, '', 'admin', '2020-11-20', '192.168.200.16', '14:14:10', NULL),
(241, '', 'Recruiter', '2020-11-20', '192.168.200.16', '14:17:58', NULL),
(242, '', 'Recruiter', '2020-11-20', '192.168.200.114', '15:06:25', NULL),
(243, '', 'admin', '2020-11-20', '192.168.200.16', '15:55:22', NULL),
(244, '', 'admin', '2020-11-20', '::1', '16:12:46', NULL),
(245, '', 'Recruiter', '2020-11-20', '::1', '16:49:35', NULL),
(246, '', 'candidate', '2020-11-20', '::1', '16:50:50', NULL),
(247, '', 'bala ', '2020-11-20', '::1', '16:52:58', NULL),
(248, '', 'admin', '2020-11-20', '::1', '16:53:49', NULL),
(249, '', 'Recruiter', '2020-11-20', '::1', '16:54:19', NULL),
(250, '', 'admin', '2020-11-21', '192.168.200.16', '09:14:50', NULL),
(251, '', 'Recruiter', '2020-11-21', '192.168.200.16', '09:15:49', NULL),
(252, '', 'admin', '2020-11-21', '192.168.200.114', '09:23:51', NULL),
(253, '', 'technical', '2020-11-21', '192.168.200.114', '09:38:08', NULL),
(254, '', 'md', '2020-11-21', '192.168.200.114', '09:40:04', NULL),
(255, '', 'Recruiter', '2020-11-21', '192.168.200.114', '10:04:18', NULL),
(256, '', 'Recruiter', '2020-11-21', '192.168.200.114', '10:31:43', NULL),
(257, '', 'md', '2020-11-21', '192.168.200.114', '10:42:33', NULL),
(258, '', 'Recruiter', '2020-11-21', '10.225.1.78', '12:37:23', NULL),
(259, '', 'Recruiter', '2020-11-21', '192.168.200.114', '12:37:57', NULL),
(260, '', 'Recruiter', '2020-11-21', '192.168.200.114', '14:10:35', NULL),
(261, '', 'technical', '2020-11-23', '192.168.200.16', '09:18:34', NULL),
(262, '', 'admin', '2020-11-23', '192.168.200.16', '09:18:56', NULL),
(263, '', 'technical', '2020-11-23', '192.168.200.16', '09:21:55', NULL),
(264, '', 'Recruiter', '2020-11-23', '192.168.200.16', '10:09:32', NULL),
(265, '', 'Recruiter', '2020-11-23', '192.168.200.47', '10:24:12', NULL),
(266, '', 'candidate', '2020-11-23', '10.225.1.78', '10:46:10', NULL),
(267, '', 'Gopinath', '2020-11-23', '10.225.1.78', '10:53:43', NULL),
(268, '', 'Gopinath', '2020-11-23', '10.225.1.78', '10:58:06', NULL),
(269, '', 'Gopinath', '2020-11-23', '10.225.1.78', '11:05:04', NULL),
(270, '', 'admin', '2020-11-23', '10.225.1.78', '11:20:12', NULL),
(271, '', 'Recruiter', '2020-11-23', '10.225.1.78', '11:20:56', NULL),
(272, '', 'admin', '2020-11-23', '10.225.1.78', '11:33:16', NULL),
(273, '', 'Recruiter', '2020-11-23', '10.225.1.78', '11:36:02', NULL),
(274, '', 'Recruiter', '2020-11-23', '10.225.1.78', '12:08:14', NULL),
(275, '', 'Recruiter', '2020-11-23', '192.168.200.16', '12:52:01', NULL),
(276, '', 'technical', '2020-11-23', '192.168.200.47', '14:05:16', NULL),
(277, '', 'admin', '2020-11-23', '192.168.200.16', '15:36:19', NULL),
(278, '', 'Recruiter', '2020-11-23', '192.168.200.47', '15:49:36', NULL),
(279, '', 'Recruiter', '2020-11-23', '192.168.200.16', '15:56:52', NULL),
(280, '', 'admin', '2020-11-23', '192.168.200.16', '16:02:52', NULL),
(281, '', 'Recruiter', '2020-11-23', '192.168.200.16', '16:03:52', NULL),
(282, '', 'Recruiter', '2020-11-23', '192.168.200.16', '16:07:03', NULL),
(283, '', 'technical', '2020-11-23', '10.225.1.78', '17:06:43', NULL),
(284, '', 'md', '2020-11-23', '10.225.1.78', '17:07:18', NULL),
(285, '', 'admin', '2020-11-23', '10.225.1.78', '17:07:41', NULL),
(286, '', 'admin', '2020-11-23', '::1', '17:15:11', NULL),
(287, '', 'md', '2020-11-23', '192.168.200.47', '17:52:51', NULL),
(288, '', 'md', '2020-11-23', '10.225.1.78', '17:58:27', NULL),
(289, '', 'md', '2020-11-24', '192.168.200.47', '10:15:43', NULL),
(290, '', 'admin', '2020-11-24', '192.168.200.16', '10:45:22', NULL),
(291, '', 'md', '2020-11-24', '10.225.1.78', '12:05:33', NULL),
(292, '', 'admin', '2020-11-25', '10.225.1.78', '12:22:59', NULL),
(293, '', 'admin', '2020-11-25', '::1', '12:32:17', NULL),
(294, '', 'candidate', '2020-11-25', '::1', '13:09:40', NULL),
(295, '', 'candidate', '2020-11-25', '::1', '13:11:55', NULL),
(296, '', 'Balachandar', '2020-11-25', '::1', '13:31:41', NULL),
(297, '', 'admin', '2020-11-25', '::1', '13:33:58', NULL),
(298, '', 'Recruiter', '2020-11-25', '::1', '13:34:45', NULL),
(299, '', 'technical', '2020-11-25', '::1', '13:42:46', NULL),
(300, '', 'admin', '2020-11-25', '::1', '13:56:25', NULL),
(301, '', 'md', '2020-11-25', '::1', '14:00:02', NULL),
(302, '', 'admin', '2020-11-25', '::1', '14:39:43', NULL),
(303, '', 'md', '2020-11-25', '::1', '16:46:27', NULL),
(304, '', 'admin', '2020-11-25', '::1', '16:52:17', NULL),
(305, '', 'admin', '2020-11-25', '::1', '18:21:13', NULL),
(306, '', 'admin', '2020-11-27', '10.225.1.78', '12:47:46', NULL),
(307, '', 'candidate', '2020-11-27', '192.168.200.16', '12:53:28', NULL),
(308, '', 'admin', '2020-11-27', '192.168.200.16', '12:57:20', NULL),
(309, '', 'candidate', '2020-11-27', '192.168.200.16', '12:58:31', NULL),
(310, '', 'admin', '2020-11-27', '192.168.200.16', '12:59:42', NULL),
(311, '', 'Laxmi Priya', '2020-11-27', '192.168.200.16', '12:59:58', NULL),
(312, '', 'admin', '2020-11-27', '192.168.200.16', '13:00:48', NULL),
(313, '', 'technical', '2020-11-27', '192.168.200.16', '13:01:26', NULL),
(314, '', 'Recruiter', '2020-11-27', '192.168.200.16', '13:02:00', NULL),
(315, '', 'technical', '2020-11-27', '192.168.200.16', '13:07:27', NULL),
(316, '', 'technical', '2020-11-27', '192.168.200.16', '13:09:28', NULL),
(317, '', 'admin', '2020-11-27', '192.168.200.16', '13:10:51', NULL),
(318, '', 'Recruiter', '2020-11-27', '192.168.200.16', '13:12:25', NULL),
(319, '', 'Recruiter', '2020-11-27', '192.168.200.16', '13:15:04', NULL),
(320, '', 'technical', '2020-11-27', '10.225.1.78', '13:41:55', NULL),
(321, '', 'Recruiter', '2020-11-27', '10.225.1.78', '13:56:11', NULL),
(322, '', 'technical', '2020-11-27', '10.225.1.78', '14:04:12', NULL),
(323, '', 'technical', '2020-11-27', '192.168.200.16', '14:12:01', NULL),
(324, '', 'admin', '2020-11-27', '192.168.200.16', '14:14:42', NULL),
(325, '', 'admin', '2020-11-27', '10.225.1.78', '14:15:03', NULL),
(326, '', 'md', '2020-11-27', '192.168.200.16', '14:15:37', NULL),
(327, '', 'technical', '2020-11-27', '10.225.1.78', '14:17:00', NULL),
(328, '', 'technical', '2020-11-27', '10.225.1.78', '14:19:25', NULL),
(329, '', 'admin', '2020-11-27', '10.225.1.78', '14:20:23', NULL),
(330, '', 'md', '2020-11-27', '10.225.1.78', '14:22:47', NULL),
(331, '', 'admin', '2020-11-27', '10.225.1.78', '14:24:24', NULL),
(332, '', 'Recruiter', '2020-11-27', '192.168.200.47', '14:27:39', NULL),
(333, '', 'candidate', '2020-11-27', '::1', '14:37:03', NULL),
(334, '', 'Ashvini', '2020-11-27', '::1', '14:39:32', NULL),
(335, '', 'admin', '2020-11-27', '::1', '14:40:30', NULL),
(336, '', 'admin', '2020-11-27', '::1', '14:40:55', NULL),
(337, '', 'Recruiter', '2020-11-27', '::1', '14:41:10', NULL),
(338, '', 'technical', '2020-11-27', '::1', '14:45:44', NULL),
(339, '', 'admin', '2020-11-27', '::1', '14:47:38', NULL),
(340, '', 'admin', '2020-11-27', '::1', '14:51:48', NULL),
(341, '', 'technical', '2020-11-27', '192.168.200.47', '15:04:35', NULL),
(342, '', 'technical', '2020-11-27', '::1', '15:39:22', NULL),
(343, '', 'admin', '2020-11-27', '::1', '15:40:32', NULL),
(344, '', 'md', '2020-11-27', '::1', '16:03:36', NULL),
(345, '', 'md', '2020-11-27', '192.168.200.47', '16:24:29', NULL),
(346, '', 'md', '2020-11-27', '192.168.200.47', '16:29:59', NULL),
(347, '', 'admin', '2020-11-27', '192.168.200.16', '16:30:28', NULL),
(348, '', 'md', '2020-11-27', '10.225.1.78', '17:05:47', NULL),
(349, '', 'admin', '2020-11-30', '192.168.200.23', '09:28:40', NULL),
(350, '', 'md', '2020-11-30', '192.168.200.23', '09:29:02', NULL),
(351, '', 'admin', '2020-11-30', '192.168.200.23', '09:32:47', NULL),
(352, '', 'md', '2020-11-30', '192.168.200.47', '09:33:35', NULL),
(353, '', 'candidate', '2020-11-30', '192.168.200.23', '09:38:37', NULL),
(354, '', 'candidate', '2020-11-30', '192.168.200.23', '09:54:41', NULL),
(355, '', 'candidate1', '2020-11-30', '192.168.200.23', '09:56:18', NULL),
(356, '', 'candidate2', '2020-11-30', '192.168.200.23', '09:57:17', NULL),
(357, '', 'admin', '2020-11-30', '192.168.200.23', '09:58:03', NULL),
(358, '', 'admin', '2020-11-30', '192.168.200.114', '09:59:18', NULL),
(359, '', 'Recruiter', '2020-11-30', '192.168.200.23', '09:59:34', NULL),
(360, '', 'technical', '2020-11-30', '192.168.200.23', '10:10:22', NULL),
(361, '', 'Recruiter', '2020-11-30', '192.168.200.23', '10:10:41', NULL),
(362, '', 'technical1', '2020-11-30', '192.168.200.23', '10:26:40', NULL),
(363, '', 'technical', '2020-11-30', '192.168.200.23', '10:35:19', NULL),
(364, '', 'Recruiter', '2020-11-30', '192.168.200.23', '10:50:49', NULL),
(365, '', 'admin', '2020-11-30', '192.168.200.23', '10:51:17', NULL),
(366, '', 'admin', '2020-11-30', '192.168.200.114', '10:55:12', NULL),
(367, '', 'technical', '2020-11-30', '192.168.200.23', '11:05:21', NULL),
(368, '', 'technical1', '2020-11-30', '192.168.200.23', '11:08:27', NULL),
(369, '', 'Recruiter', '2020-11-30', '192.168.200.23', '11:16:20', NULL),
(370, '', 'md', '2020-11-30', '192.168.200.23', '11:17:26', NULL),
(371, '', 'md', '2020-11-30', '192.168.200.23', '12:04:01', NULL),
(372, '', 'Recruiter', '2020-11-30', '192.168.200.23', '12:04:16', NULL),
(373, '', 'technical', '2020-11-30', '192.168.200.23', '12:33:31', NULL),
(374, '', 'technical1', '2020-11-30', '192.168.200.23', '12:37:20', NULL),
(375, '', 'admin', '2020-11-30', '192.168.200.23', '15:53:10', NULL),
(376, '', 'Recruiter', '2020-11-30', '192.168.200.23', '15:58:14', NULL),
(377, '', 'technical', '2020-11-30', '192.168.200.23', '15:59:56', NULL),
(378, '', 'technical1', '2020-11-30', '192.168.200.23', '16:02:27', NULL),
(379, '', 'technical1', '2020-12-01', '192.168.201.14', '09:04:51', NULL),
(380, '', 'technical', '2020-12-01', '192.168.201.14', '09:47:40', NULL),
(381, '', 'Recruiter', '2020-12-01', '192.168.201.14', '10:12:57', NULL),
(382, '', 'technical', '2020-12-01', '192.168.201.14', '10:32:31', NULL),
(383, '', 'admin', '2020-12-01', '::1', '12:46:47', NULL),
(384, '', 'md', '2020-12-01', '192.168.201.38', '17:25:32', NULL),
(385, '', 'admin', '2020-12-01', '192.168.201.38', '17:25:51', NULL),
(386, '', 'technical1', '2020-12-02', '192.168.201.14', '09:24:54', NULL),
(387, '', 'admin', '2020-12-02', '192.168.201.14', '10:46:47', NULL),
(388, '', 'technical', '2020-12-02', '192.168.201.14', '10:53:26', NULL),
(389, '', 'md', '2020-12-02', '192.168.201.14', '12:38:46', NULL),
(390, '', 'technical1', '2020-12-02', '192.168.201.14', '12:40:35', NULL),
(391, '', 'admin', '2020-12-02', '192.168.201.38', '14:17:22', NULL),
(392, '', 'admin', '2020-12-02', '::1', '14:32:13', NULL),
(393, '', 'technical', '2020-12-02', '192.168.201.14', '14:40:01', NULL),
(394, '', 'md', '2020-12-02', '192.168.201.14', '14:41:40', NULL),
(395, '', 'Recruiter', '2020-12-02', '192.168.201.14', '14:44:01', NULL),
(396, '', 'admin', '2020-12-02', '192.168.201.14', '14:53:31', NULL),
(397, '', 'md', '2020-12-02', '192.168.201.14', '15:17:35', NULL),
(398, '', 'candidate', '2020-12-02', '49.249.229.10', '15:30:35', NULL),
(399, '', 'Balachandar', '2020-12-02', '49.249.229.10', '15:34:15', NULL),
(400, '', 'Balachandar', '2020-12-02', '49.249.229.10', '15:34:15', NULL),
(401, '', 'admin', '2020-12-02', '49.249.229.10', '15:35:05', NULL),
(402, '', 'Balachandarr', '2020-12-02', '49.249.229.10', '15:39:37', NULL),
(403, '', 'admin', '2020-12-02', '49.249.229.10', '15:40:45', NULL),
(404, '', 'technical', '2020-12-02', '192.168.201.14', '16:24:18', NULL),
(405, '', 'admin', '2020-12-02', '192.168.201.14', '16:39:37', NULL),
(406, '', 'technical', '2020-12-02', '192.168.201.14', '16:50:17', NULL),
(407, '', 'admin', '2020-12-02', '192.168.201.14', '16:53:26', NULL),
(408, '', 'candidate', '2020-12-02', '192.168.201.14', '16:54:19', NULL),
(409, '', 'admin', '2020-12-02', '192.168.201.14', '17:01:04', NULL),
(410, '', 'Balachandar', '2020-12-02', '49.249.229.10', '19:01:18', NULL),
(411, '', 'admin', '2020-12-02', '49.249.229.10', '19:06:08', NULL),
(412, '', 'admin', '2020-12-03', '192.168.201.14', '12:49:33', NULL),
(413, '', 'admin', '2020-12-03', '192.168.201.14', '14:31:22', NULL),
(414, '', 'Recruiter', '2020-12-03', '192.168.201.38', '14:49:02', NULL),
(415, '', 'admin', '2020-12-03', '192.168.201.12', '15:08:20', NULL),
(416, '', 'candidate', '2020-12-03', '49.249.229.10', '16:19:26', NULL),
(417, '', 'test', '2020-12-03', '49.249.229.10', '16:21:38', NULL),
(418, '', 'admin', '2020-12-03', '49.249.229.10', '16:34:21', NULL),
(419, '', 'candidate', '2020-12-03', '192.168.201.14', '16:36:13', NULL),
(420, '', 'kavitha', '2020-12-03', '192.168.201.14', '16:42:40', NULL),
(421, '', 'admin', '2020-12-03', '192.168.201.14', '16:43:23', NULL),
(422, '', 'admin', '2020-12-03', '192.168.201.14', '16:44:40', NULL),
(423, '', 'Recruiter', '2020-12-03', '192.168.201.14', '16:45:05', NULL),
(424, '', 'admin', '2020-12-04', '192.168.201.14', '09:40:00', NULL),
(425, '', 'Recruiter', '2020-12-04', '192.168.201.9', '10:56:39', NULL),
(426, '', 'technical', '2020-12-04', '192.168.201.9', '10:57:24', NULL),
(427, '', 'admin', '2020-12-04', '192.168.201.9', '10:58:01', NULL),
(428, '', 'admin', '2020-12-04', '192.168.201.38', '13:51:38', NULL),
(429, '', 'admin', '2020-12-04', '192.168.201.14', '13:54:57', NULL),
(430, '', 'Recruiter', '2020-12-04', '192.168.201.14', '13:59:18', NULL),
(431, '', 'technical', '2020-12-04', '192.168.201.14', '15:04:53', NULL),
(432, '', 'technical', '2020-12-04', '192.168.201.14', '16:28:15', NULL),
(433, '', 'technical', '2020-12-05', '192.168.201.14', '09:20:25', NULL),
(434, '', 'technical', '2020-12-05', '192.168.201.14', '10:44:51', NULL),
(435, '', 'technical1', '2020-12-05', '192.168.201.14', '11:19:55', NULL),
(436, '', 'technical', '2020-12-05', '192.168.201.14', '12:00:20', NULL),
(437, '', 'technical1', '2020-12-05', '192.168.201.14', '12:00:57', NULL),
(438, '', 'Recruiter', '2020-12-05', '192.168.201.14', '14:17:24', NULL),
(439, '', 'md', '2020-12-05', '192.168.201.14', '14:17:56', NULL),
(440, '', 'admin', '2020-12-05', '::1', '15:12:51', NULL),
(441, '', 'md', '2020-12-05', '192.168.201.14', '17:15:21', NULL),
(442, '', 'Recruiter', '2020-12-05', '192.168.201.14', '17:48:57', NULL),
(443, '', 'admin', '2020-12-05', '192.168.201.14', '17:49:22', NULL),
(444, '', 'Recruiter', '2020-12-07', '192.168.201.14', '09:16:12', NULL),
(445, '', 'admin', '2020-12-07', '192.168.201.14', '09:17:17', NULL),
(446, '', 'technical1', '2020-12-07', '192.168.201.14', '09:42:39', NULL),
(447, '', 'admin', '2020-12-07', '192.168.201.14', '09:43:46', NULL),
(448, '', 'md', '2020-12-07', '192.168.201.14', '12:11:00', NULL),
(449, '', 'admin', '2020-12-07', '192.168.201.14', '13:08:14', NULL),
(450, '', 'candidate', '2020-12-07', '49.249.229.10', '13:09:08', NULL),
(451, '', 'candidate', '2020-12-07', '49.249.229.10', '13:12:54', NULL),
(452, '', 'candidate', '2020-12-07', '49.249.229.10', '13:13:18', NULL),
(453, '', 'admin', '2020-12-07', '192.168.201.14', '13:56:53', NULL),
(454, '', 'candidate', '2020-12-07', '49.249.229.10', '14:01:47', NULL),
(455, '', 'admin', '2020-12-07', '192.168.201.65', '14:03:48', NULL),
(456, '', 'Balachandar', '2020-12-07', '49.249.229.10', '14:04:52', NULL),
(457, '', 'Balachandar', '2020-12-07', '192.168.201.14', '14:08:04', NULL),
(458, '', 'admin', '2020-12-07', '192.168.201.14', '14:09:01', NULL),
(459, '', 'Recruiter', '2020-12-07', '49.249.229.10', '14:09:47', NULL),
(460, '', 'technical', '2020-12-07', '49.249.229.10', '14:13:23', NULL),
(461, '', 'technical1', '2020-12-07', '49.249.229.10', '14:19:31', NULL),
(462, '', 'Recruiter', '2020-12-07', '192.168.201.14', '14:30:08', NULL),
(463, '', 'technical1', '2020-12-07', '192.168.201.14', '14:30:48', NULL),
(464, '', 'admin', '2020-12-07', '192.168.201.14', '14:31:11', NULL),
(465, '', 'admin', '2020-12-07', '49.249.229.10', '14:47:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `z_log_error`
--

DROP TABLE IF EXISTS `z_log_error`;
CREATE TABLE IF NOT EXISTS `z_log_error` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `ip_address` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_log_error`
--

INSERT INTO `z_log_error` (`id`, `user_name`, `password`, `ip_address`, `date`, `time`) VALUES
(1, 'Recruiter', 'Welcome@321', '::1', '2020-08-10', '23:58:19'),
(2, 'Recruiter', 'Welcome@321', '::1', '2020-08-10', '23:58:51'),
(3, 'Recruiter', 'Welcome@321', '::1', '2020-08-11', '00:00:05'),
(4, 'Intreviewer', 'WELCME@123', '192.168.201.109', '2020-08-12', '14:26:36'),
(5, 'Intreviewer', 'wELCOME@123', '192.168.201.109', '2020-08-12', '14:26:54'),
(6, 'Recruiter', 'Welcome@2020', '192.168.201.109', '2020-08-17', '19:24:11'),
(7, 'Recruiter', 'welcome@123', '192.168.201.109', '2020-08-17', '19:24:28'),
(8, 'admin', 'Welcome@2020', '192.168.201.109', '2020-08-18', '10:21:20'),
(9, 'Recruiter', 'wELCOME@123', '192.168.201.109', '2020-08-18', '10:35:48'),
(10, 'Recruiter', 'welcome@123', '::1', '2020-08-19', '18:47:16'),
(11, 'technical', 'welcome@123', '::1', '2020-08-22', '20:56:33'),
(12, 'Recruiter', 'welcome@123', '::1', '2020-08-24', '14:33:42'),
(13, 'Recruiter', 'Welcome', '::1', '2020-08-24', '14:34:00'),
(14, 'md', 'Welcome@123', '::1', '2020-08-26', '08:15:23'),
(15, 'md', 'Welcome@123', '::1', '2020-08-26', '08:15:41'),
(16, 'md', 'Welcome@123', '::1', '2020-08-26', '08:16:17'),
(17, 'admin', 'Welcme@123', '49.249.229.10', '2020-08-28', '11:31:18'),
(18, 'admin', 'Welcome123', '::1', '2020-09-01', '21:03:36'),
(19, 'md', 'Welcome@1233', '::1', '2020-09-01', '21:06:12'),
(20, 'candidate', 'Welocome@123', '::1', '2020-09-02', '17:07:28'),
(21, 'md', 'Welcoem@123', '::1', '2020-09-19', '20:24:46'),
(22, 'admin', 'WelcomeW@123', '::1', '2020-11-03', '13:14:45'),
(23, 'admin', 'Welcome2123', '10.225.1.78', '2020-11-14', '09:52:45'),
(24, 'admin', 'WElcome@123', '10.225.1.78', '2020-11-17', '16:39:31'),
(25, 'Recruiter', '123456', '192.168.200.114', '2020-11-17', '16:51:18'),
(26, 'admin', 'Welcoome@123', '192.168.200.16', '2020-11-19', '09:11:57'),
(27, 'technical', 'Welcome@!23', '192.168.200.114', '2020-11-20', '11:07:17'),
(28, 'balachandar', 'WElcome@123', '::1', '2020-11-20', '16:50:38'),
(29, 'technical', 'Welome@123', '10.225.1.78', '2020-11-27', '13:41:37'),
(30, 'Recruiter', 'Welome@123', '10.225.1.78', '2020-11-27', '13:56:03'),
(31, 'md', 'wELCOME@123', '192.168.201.14', '2020-12-02', '15:17:26'),
(32, 'Recruiter', 'Welcome@1223', '192.168.201.14', '2020-12-05', '14:17:15'),
(33, 'admin', '123456', '192.168.201.65', '2020-12-07', '14:03:39');

-- --------------------------------------------------------

--
-- Table structure for table `z_masters_menu`
--

DROP TABLE IF EXISTS `z_masters_menu`;
CREATE TABLE IF NOT EXISTS `z_masters_menu` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) DEFAULT NULL,
  `menu_description` varchar(255) DEFAULT NULL,
  `menu_order` varchar(255) DEFAULT NULL,
  `menu_class` varchar(255) DEFAULT NULL,
  `menu_url` varchar(255) DEFAULT NULL,
  `call_method` varchar(125) DEFAULT NULL,
  `created_by` int(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_masters_menu`
--

INSERT INTO `z_masters_menu` (`id`, `menu_name`, `menu_description`, `menu_order`, `menu_class`, `menu_url`, `call_method`, `created_by`, `created_on`) VALUES
(1, 'Recruitment', 'Form ', '1', 'fa fa-network-wired', 'Recruitment', 'recruitment()', 1, '2020-08-10 00:00:00'),
(2, 'Reports', 'Intreviewer Reports', '1', 'fa fa-list', 'Reports', 'reports()', 1, '2020-08-10 00:00:00'),
(4, 'Interview Question', 'Interview Question', '3', 'fa fa-list', 'Interview', 'interview()', 1, '2020-11-03 00:00:00'),
(5, 'Masters', 'Masters', '4', 'fa fa-list', 'Masters', 'masters()', 1, '2020-11-03 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `z_masters_sub_menu`
--

DROP TABLE IF EXISTS `z_masters_sub_menu`;
CREATE TABLE IF NOT EXISTS `z_masters_sub_menu` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `menu_id` int(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `call_method` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `created_by` int(2) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `modified_by` int(2) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_masters_sub_menu`
--

INSERT INTO `z_masters_sub_menu` (`id`, `menu_id`, `name`, `call_method`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 1, 'Application Form', 'application()', 1, 1, '2020-08-10 00:00:00', 1, '2020-08-10 00:00:00'),
(2, 1, 'Interview Feedback Form', 'feedback()', 1, 1, '2020-08-10 00:00:00', 1, '2020-08-10 00:00:00'),
(3, 1, 'CTC Approval', 'ctc_approval()', 1, 1, '2020-08-10 00:00:00', 1, '2020-08-10 00:00:00'),
(4, 2, 'Intreview Peoples', 'interview_reports()', 1, 1, '2020-08-10 00:00:00', 1, '2020-08-10 00:00:00'),
(5, 2, 'Department Report', 'department_reports()', 1, 1, '2020-08-10 00:00:00', 1, '2020-08-10 00:00:00'),
(11, 2, 'CTC Report', 'ctc_reports()', 1, 1, '2020-09-05 00:00:00', 1, '2020-09-05 00:00:00'),
(12, 3, 'Question ', 'question()', 1, 1, '2020-09-05 00:00:00', 1, '2020-09-05 00:00:00'),
(13, 3, 'Question Management', 'question_managements()', 1, 1, '2020-09-05 00:00:00', 1, '2020-09-05 00:00:00'),
(14, 3, 'Candicate Result', 'candicate_results()', 1, 1, '2020-09-07 00:00:00', 1, '2020-09-05 00:00:00'),
(15, 1, 'Candidate Form', 'candidate_form()', 1, 1, '2020-09-07 00:00:00', 1, '2020-09-05 00:00:00'),
(16, 5, 'Department Master', 'department_master()', 1, 1, '2020-09-07 00:00:00', 1, '2020-09-05 00:00:00'),
(17, 5, 'Department Mapping', 'department_mapping()', 1, 1, '2020-09-07 00:00:00', 1, '2020-09-05 00:00:00'),
(18, 5, 'Company Master', 'company_master()', 1, 1, '2020-09-07 00:00:00', 1, '2020-09-05 00:00:00'),
(19, 1, 'Candidate Details', 'candidate_details()', 1, 1, '2020-08-10 00:00:00', 1, '2020-08-10 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `z_role_detail`
--

DROP TABLE IF EXISTS `z_role_detail`;
CREATE TABLE IF NOT EXISTS `z_role_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(200) NOT NULL,
  `menu_id` int(200) NOT NULL,
  `submenu_id` int(200) NOT NULL,
  `view_only` varchar(200) NOT NULL,
  `edit_only` int(200) NOT NULL,
  `all_only` varchar(50) NOT NULL,
  `approval` int(200) NOT NULL,
  `created_by` varchar(200) NOT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_role_detail`
--

INSERT INTO `z_role_detail` (`id`, `code`, `menu_id`, `submenu_id`, `view_only`, `edit_only`, `all_only`, `approval`, `created_by`, `created_on`) VALUES
(1, 'Role-001', 1, 15, '0', 0, '1', 0, '1', '2020-08-10 00:00:00'),
(2, 'Role-002', 1, 2, '0', 0, '1', 0, '1', '2020-08-10 00:00:00'),
(4, 'Role-002', 2, 4, '0', 0, '1', 0, '1', '2020-08-10 00:00:00'),
(5, 'Role-003', 1, 1, '0', 0, '1', 0, '1', '2020-08-10 00:00:00'),
(6, 'Role-003', 1, 2, '0', 0, '1', 0, '1', '2020-08-10 00:00:00'),
(7, 'Role-003', 1, 3, '0', 0, '1', 0, '1', '2020-08-10 00:00:00'),
(8, 'Role-003', 2, 4, '0', 0, '1', 0, '1', '2020-08-10 00:00:00'),
(9, 'Role-002', 2, 5, '0', 0, '1', 0, '1', '2020-08-10 00:00:00'),
(10, 'Role-003', 2, 5, '0', 0, '1', 0, '1', '2020-08-10 00:00:00'),
(11, 'Role-004', 1, 2, '0', 0, '1', 0, '1', '2020-08-10 00:00:00'),
(12, 'Role-005', 1, 2, '0', 0, '1', 0, '1', '2020-08-10 00:00:00'),
(18, 'Role-003', 2, 11, '0', 0, '1', 0, '1', '2020-08-10 00:00:00'),
(19, 'Role-006', 4, 12, '0', 0, '1', 0, '1', '2020-08-10 00:00:00'),
(20, 'Role-003', 4, 13, '0', 0, '1', 0, '1', '2020-08-10 00:00:00'),
(21, 'Role-003', 4, 14, '0', 0, '1', 0, '1', '2020-08-10 00:00:00'),
(22, 'Role-003', 5, 16, '0', 0, '1', 0, '1', '2020-08-10 00:00:00'),
(23, 'Role-002', 5, 16, '0', 0, '1', 0, '1', '2020-08-10 00:00:00'),
(24, 'Role-002', 5, 17, '0', 0, '1', 0, '1', '2020-08-10 00:00:00'),
(25, 'Role-003', 5, 17, '0', 0, '1', 0, '1', '2020-08-10 00:00:00'),
(26, 'Role-003', 5, 18, '0', 0, '1', 0, '1', '2020-08-10 00:00:00'),
(27, 'Role-002', 5, 18, '0', 0, '1', 0, '1', '2020-08-10 00:00:00'),
(28, 'Role-008', 1, 2, '0', 0, '1', 0, '1', '2020-08-10 00:00:00'),
(29, 'Role-009', 1, 1, '0', 0, '1', 0, '1', '2020-08-10 00:00:00'),
(30, 'Role-003', 1, 19, '0', 0, '1', 0, '1', '2020-08-10 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `z_role_mapping`
--

DROP TABLE IF EXISTS `z_role_mapping`;
CREATE TABLE IF NOT EXISTS `z_role_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(200) NOT NULL,
  `code` varchar(200) NOT NULL,
  `descriptions` varchar(100) DEFAULT NULL,
  `modified_by` varchar(150) NOT NULL,
  `modified_on` date NOT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_role_mapping`
--

INSERT INTO `z_role_mapping` (`id`, `user_id`, `code`, `descriptions`, `modified_by`, `modified_on`, `created_by`, `created_on`) VALUES
(1, '1', 'Role-001', 'Recruitment', '1', '2020-08-10', '1', '2020-08-10'),
(2, '2', 'Role-002', 'Intreviewer', '1', '2020-08-10', '1', '2020-08-10'),
(3, '4', 'Role-004', 'Technical', '1', '2020-08-10', '1', '2020-08-10'),
(4, '16', 'Role-008', 'Technical1', '1', '2020-08-10', '1', '2020-08-10');

-- --------------------------------------------------------

--
-- Table structure for table `z_role_master`
--

DROP TABLE IF EXISTS `z_role_master`;
CREATE TABLE IF NOT EXISTS `z_role_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(250) NOT NULL,
  `role_name` varchar(200) NOT NULL,
  `status` int(250) NOT NULL,
  `modified_by` varchar(150) NOT NULL,
  `modified_on` date NOT NULL,
  `created_by` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_role_master`
--

INSERT INTO `z_role_master` (`id`, `code`, `role_name`, `status`, `modified_by`, `modified_on`, `created_by`) VALUES
(1, 'ROLE-001', 'Intreviewer', 1, '1', '2020-08-10', '1'),
(2, 'ROLE-002', 'Recruiter', 1, '1', '0000-00-00', '1'),
(3, 'ROLE-003', 'Admin', 1, '1', '0000-00-00', '1'),
(4, 'ROLE-004', 'Technical', 1, '1', '2020-08-19', '1'),
(5, 'ROLE-005', 'Md', 1, '1', '2020-04-24', '1'),
(6, 'ROLE-006', 'Candidate Interview Question', 1, '1', '2020-04-24', '1'),
(7, 'ROLE-007', 'Employee', 1, '1', '2020-04-24', '1'),
(8, 'ROLE-008', 'Technical1', 1, '1', '2020-04-24', '1'),
(9, 'ROLE-009', 'Employement Form', 1, '1', '2020-04-24', '1');

-- --------------------------------------------------------

--
-- Table structure for table `z_user_master`
--

DROP TABLE IF EXISTS `z_user_master`;
CREATE TABLE IF NOT EXISTS `z_user_master` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `user_name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `email_id` varchar(250) DEFAULT NULL,
  `user_group_code` varchar(250) DEFAULT NULL,
  `mobile_no` varchar(200) DEFAULT NULL,
  `profile` varchar(250) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `modified_by` varchar(250) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_user_master`
--

INSERT INTO `z_user_master` (`user_id`, `candidate_id`, `department`, `user_name`, `password`, `full_name`, `status`, `email_id`, `user_group_code`, `mobile_no`, `profile`, `gender`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, NULL, '1', 'candidate', 'cd84d683cc5612c69efe115c80d0b7dc', 'Intreviewer', 1, 'hr@quadsel.in', 'ROLE-001', '9876543211', 'userlog/intreviewer.png', 'male', '1', '2020-08-10', '1', '2020-08-10 09:31:47'),
(2, NULL, '2', 'Recruiter', 'cd84d683cc5612c69efe115c80d0b7dc', 'Recruiter', 1, 'hr@quadsel.in', 'ROLE-002', '9876543211', 'userlog/hr.png', 'male', '1', '2020-08-10', '1', '2020-08-10 09:31:47'),
(3, NULL, '2', 'admin', 'cd84d683cc5612c69efe115c80d0b7dc', 'Admin', 1, 'hr@admin.in', 'ROLE-003', '9876543211', 'userlog/hr.png', 'male', '1', '2020-08-10', '1', '2020-08-10 09:31:47'),
(4, NULL, '3', 'technical', 'cd84d683cc5612c69efe115c80d0b7dc', 'Technical', 1, 'hr@admin.in', 'ROLE-004', '9876543211', 'userlog/hr.png', 'male', '1', '2020-08-10', '1', '2020-08-10 09:31:47'),
(5, NULL, '2', 'md', 'cd84d683cc5612c69efe115c80d0b7dc', 'Md', 1, 'hr@quadsel.in', 'ROLE-005', '9876543211', '', 'male', '1', '2020-08-10', '1', '2020-08-10 00:00:00'),
(16, NULL, '3', 'technical1', 'cd84d683cc5612c69efe115c80d0b7dc', 'Technical1', 1, 'hr@admin.in', 'ROLE-008', '9876543211', 'userlog/hr.png', 'male', '1', '2020-08-10', '1', '2020-08-10 09:31:47'),
(25, 1, '5', 'Balachandar', 'cd84d683cc5612c69efe115c80d0b7dc', 'Balachandar', 1, 'bala@gmail.com', 'ROLE-006', '8458487548', NULL, 'male', '1', '2020-12-07', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
