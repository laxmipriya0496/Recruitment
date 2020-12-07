-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 24, 2020 at 08:45 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

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
-- Table structure for table `ctc_approval_table`
--

DROP TABLE IF EXISTS `ctc_approval_table`;
CREATE TABLE IF NOT EXISTS `ctc_approval_table` (
  `id` int(150) NOT NULL AUTO_INCREMENT,
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
  `target` varchar(255) NOT NULL,
  `system` varchar(255) NOT NULL,
  `seating` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ctc_approval_table`
--

INSERT INTO `ctc_approval_table` (`id`, `candidate_name`, `present_ctc`, `expected_ctc`, `ctc_offered`, `offered_take_home`, `offered_designation`, `dept_head_approval`, `dept_director_approval`, `CUG`, `mail_id`, `target`, `system`, `seating`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'abc', '450000', '600000', '550000', '40000', 'tl', 'yyy', 'xxx', 'abc', 'abc@gmail.com', '100000', 'available', 'yes', 1, 1, '2020-09-09 03:55:05', 1, '2020-09-09 03:55:05'),
(2, 'jhon', '500000', '600000', '550000', '45000', 'accounting', 'ok', 'ok', 'yyyy', 'jhon@gmail.com', '50000', 'yes', 'ok', 1, 1, '2020-09-09 03:59:00', 1, '2020-09-09 04:00:00'),
(3, 'andrews', '600000', '700000', '650000', '47000', 'sales', 'ok', 'ok', 'xxx', 'andrews@gmail.com', '50000', 'yes', 'ok', 1, 1, '2020-04-09 05:23:00', NULL, NULL);

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
  `validity_from` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `from_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_by` int(255) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  `position` varchar(100) NOT NULL,
  PRIMARY KEY (`name`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_personal_details`
--

INSERT INTO `emp_personal_details` (`id`, `name`, `fathers_name`, `DOB`, `communication_address`, `permanent_address`, `mobile_num`, `email_id`, `aadhar_num`, `pan_num`, `voter_id`, `resume`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`, `position`) VALUES
(1, 'Bala', 'bbb', '1996-04-10', 'aaa,bbb,ccc', 'bbb,ccc,eee', '9999999999', 'sssssss@gmail.com', '555566663333', 'BQOP357432', '45876729046', 'abc.jpg', 1, 1, '2020-09-19 04:05:56', 1, '2020-09-08 09:11:06', 'software'),
(2, 'bbb', 'ccc', '1996-08-14', 'www,eeee,vvvv', 'qqqq,oooo,aaaa', '8888811111', 'bbbb@gmail.com', '222445682355', 'BQOP123456', '123456789', 'abcd.jpg', 1, 1, '2020-09-08 09:15:07', 1, '2020-09-08 09:15:16', 'software'),
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
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `md_commands`
--

INSERT INTO `md_commands` (`id`, `candidate_id`, `md_commands`, `md_status`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 1, 'xxx', 1, 4, 1, '2020-11-09', NULL, NULL),
(2, 2, 'yyy', 1, 0, 1, '2020-09-15', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recruiter_commands`
--

DROP TABLE IF EXISTS `recruiter_commands`;
CREATE TABLE IF NOT EXISTS `recruiter_commands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(10) DEFAULT NULL,
  `skill_question` varchar(100) DEFAULT NULL,
  `rating` int(10) DEFAULT NULL,
  `response` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `new_candidate` varchar(50) DEFAULT NULL,
  `replaced_name` varchar(50) DEFAULT NULL,
  `new_name` varchar(50) DEFAULT NULL,
  `site` varchar(50) DEFAULT NULL,
  `reason_leave` varchar(100) DEFAULT NULL,
  `reference` varchar(50) DEFAULT NULL,
  `tot_year_exp` int(10) DEFAULT NULL,
  `current_ctc` float(50,2) DEFAULT NULL,
  `exp_ctc` float(50,2) DEFAULT NULL,
  `notice_period` int(10) DEFAULT NULL,
  `date_of_join` date DEFAULT NULL,
  `recruiter_name` varchar(50) DEFAULT NULL,
  `ratings` int(10) DEFAULT NULL,
  `remarks` varchar(150) DEFAULT NULL,
  `status_recruiter` varchar(50) DEFAULT NULL,
  `command_technical_person` varchar(150) DEFAULT NULL,
  `interview_date` date DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `created_by` int(5) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `technical_id` int(10) DEFAULT NULL,
  `skill` varchar(100) DEFAULT NULL,
  `rating` int(10) DEFAULT NULL,
  `response` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `technical_team_details`
--

DROP TABLE IF EXISTS `technical_team_details`;
CREATE TABLE IF NOT EXISTS `technical_team_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(100) DEFAULT NULL,
  `head_name` varchar(50) DEFAULT NULL,
  `rating` int(10) DEFAULT NULL,
  `remarks` varchar(150) DEFAULT NULL,
  `head_status` varchar(50) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `created_by` int(5) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `modified_by` int(5) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `technical_team_details`
--

INSERT INTO `technical_team_details` (`id`, `candidate_id`, `head_name`, `rating`, `remarks`, `head_status`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 1, 'rajeshwari', 16, 'Well', '1', 3, 3, '2020-09-19', 3, '2020-09-19');

-- --------------------------------------------------------

--
-- Table structure for table `x_table_ctcapproval`
--

DROP TABLE IF EXISTS `x_table_ctcapproval`;
CREATE TABLE IF NOT EXISTS `x_table_ctcapproval` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `pctc` int(100) NOT NULL,
  `ectc` int(100) NOT NULL,
  `ctc_offer` int(100) NOT NULL,
  `take_home` int(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `head_approval` varchar(100) NOT NULL,
  `director_approval` varchar(100) NOT NULL,
  `cug` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `target` varchar(100) NOT NULL,
  `system` varchar(100) NOT NULL,
  `seating` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `x_table_ctcapproval`
--

INSERT INTO `x_table_ctcapproval` (`id`, `employee_id`, `pctc`, `ectc`, `ctc_offer`, `take_home`, `designation`, `head_approval`, `director_approval`, `cug`, `mail`, `target`, `system`, `seating`, `status`, `created_by`, `created_on`) VALUES
(1, 1001, 1, 1, 1, 1, 'sanbmsv.', 'qqwq', 'qq', 'qqwq', 'qwq', 'qw', 'eq', 'w', '1', NULL, '2020-09-05');

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_department_master`
--

INSERT INTO `z_department_master` (`id`, `dept_name`, `status`, `created_by`, `created_on`) VALUES
(1, 'Admin', 1, 1, '2020-08-13 00:00:00'),
(2, 'Hr', 1, 1, '2020-08-13 00:00:00'),
(3, 'Service', 1, 1, '2020-08-13 00:00:00'),
(4, 'Network', 1, 1, '2020-08-13 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=latin1;

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
(138, '', 'md', '2020-09-19', '::1', '20:24:54', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

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
(21, 'md', 'Welcoem@123', '::1', '2020-09-19', '20:24:46');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_masters_menu`
--

INSERT INTO `z_masters_menu` (`id`, `menu_name`, `menu_description`, `menu_order`, `menu_class`, `menu_url`, `call_method`, `created_by`, `created_on`) VALUES
(1, 'Recruitment', 'Form ', '1', 'fa fa-network-wired', 'Recruitment', 'recruitment()', 1, '2020-08-10 00:00:00'),
(2, 'Reports', 'Intreviewer Reports', '1', 'fa fa-list', 'Reports', 'reports()', 1, '2020-08-10 00:00:00');

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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_masters_sub_menu`
--

INSERT INTO `z_masters_sub_menu` (`id`, `menu_id`, `name`, `call_method`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 1, 'Application Form', 'application()', 1, 1, '2020-08-10 00:00:00', 1, '2020-08-10 00:00:00'),
(2, 1, 'Interview Feedback Form', 'feedback()', 1, 1, '2020-08-10 00:00:00', 1, '2020-08-10 00:00:00'),
(3, 1, 'CTC Approval', 'ctc_approval()', 1, 1, '2020-08-10 00:00:00', 1, '2020-08-10 00:00:00'),
(4, 2, 'Intreview Peoples', 'interview_reports()', 1, 1, '2020-08-10 00:00:00', 1, '2020-08-10 00:00:00'),
(5, 2, 'Department Report', 'department_reports()', 1, 1, '2020-08-10 00:00:00', 1, '2020-08-10 00:00:00'),
(11, 2, 'CTC Report', 'ctc_reports()', 1, 1, '2020-09-05 00:00:00', 1, '2020-09-05 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_role_detail`
--

INSERT INTO `z_role_detail` (`id`, `code`, `menu_id`, `submenu_id`, `view_only`, `edit_only`, `all_only`, `approval`, `created_by`, `created_on`) VALUES
(1, 'Role-001', 1, 1, '0', 0, '1', 0, '1', '2020-08-10 00:00:00'),
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
(18, 'Role-003', 2, 11, '0', 0, '1', 0, '1', '2020-08-10 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_role_mapping`
--

INSERT INTO `z_role_mapping` (`id`, `user_id`, `code`, `descriptions`, `modified_by`, `modified_on`, `created_by`, `created_on`) VALUES
(1, '1', 'Role-001', 'Recruitment', '1', '2020-08-10', '1', '2020-08-10'),
(2, '2', 'Role-002', 'Intreviewer', '1', '2020-08-10', '1', '2020-08-10'),
(3, '4', 'Role-004', 'Technical', '1', '2020-08-10', '1', '2020-08-10');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_role_master`
--

INSERT INTO `z_role_master` (`id`, `code`, `role_name`, `status`, `modified_by`, `modified_on`, `created_by`) VALUES
(1, 'ROLE-001', 'Intreviewer', 1, '1', '2020-08-10', '1'),
(2, 'ROLE-002', 'Recruiter', 1, '1', '0000-00-00', '1'),
(3, 'ROLE-003', 'Admin', 1, '1', '0000-00-00', '1'),
(4, 'ROLE-004', 'Technical', 1, '1', '2020-08-19', '1'),
(5, 'ROLE-005', 'Md', 1, '1', '2020-04-24', '1');

-- --------------------------------------------------------

--
-- Table structure for table `z_user_master`
--

DROP TABLE IF EXISTS `z_user_master`;
CREATE TABLE IF NOT EXISTS `z_user_master` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `department` varchar(100) DEFAULT NULL,
  `user_name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `email_id` varchar(250) NOT NULL,
  `user_group_code` varchar(250) NOT NULL,
  `mobile_no` varchar(200) NOT NULL,
  `profile` varchar(250) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `created_by` varchar(200) NOT NULL,
  `created_on` date NOT NULL,
  `modified_by` varchar(250) NOT NULL,
  `modified_on` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_user_master`
--

INSERT INTO `z_user_master` (`user_id`, `department`, `user_name`, `password`, `full_name`, `status`, `email_id`, `user_group_code`, `mobile_no`, `profile`, `gender`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, '1', 'candidate', 'cd84d683cc5612c69efe115c80d0b7dc', 'Intreviewer', 1, 'hr@quadsel.in', 'ROLE-001', '9876543211', 'userlog/intreviewer.png', 'male', '1', '2020-08-10', '1', '2020-08-10 09:31:47'),
(2, '2', 'Recruiter', 'cd84d683cc5612c69efe115c80d0b7dc', 'Recruiter', 1, 'hr@quadsel.in', 'ROLE-002', '9876543211', 'userlog/hr.png', 'male', '1', '2020-08-10', '1', '2020-08-10 09:31:47'),
(3, '2', 'admin', 'cd84d683cc5612c69efe115c80d0b7dc', 'Admin', 1, 'hr@admin.in', 'ROLE-003', '9876543211', 'userlog/hr.png', 'male', '1', '2020-08-10', '1', '2020-08-10 09:31:47'),
(4, '3', 'technical', 'cd84d683cc5612c69efe115c80d0b7dc', 'Technical', 1, 'hr@admin.in', 'ROLE-004', '9876543211', 'userlog/hr.png', 'male', '1', '2020-08-10', '1', '2020-08-10 09:31:47'),
(5, '2', 'md', 'cd84d683cc5612c69efe115c80d0b7dc', 'Md', 1, 'hr@quadsel.in', 'ROLE-005', '9876543211', '', 'male', '1', '2020-08-10', '1', '2020-08-10 00:00:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
