-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 17, 2018 at 11:46 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tech_forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL auto_increment,
  `replied` int(11) NOT NULL,
  `question_id` varchar(50) NOT NULL,
  `answer_detail` varchar(2000) NOT NULL,
  `datetime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `like` int(20) NOT NULL,
  PRIMARY KEY  (`answer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `answer`
--


-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chatdetail_id` int(11) NOT NULL auto_increment,
  `cdatetime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `message` varchar(1000) NOT NULL,
  `user_id` int(11) NOT NULL,
  `chat_id` int(11) NOT NULL,
  PRIMARY KEY  (`chatdetail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `chat`
--


-- --------------------------------------------------------

--
-- Table structure for table `chatmaster`
--

CREATE TABLE `chatmaster` (
  `chat_id` int(11) NOT NULL auto_increment,
  `user_id_from` int(11) NOT NULL,
  `user_id_to` int(11) NOT NULL,
  PRIMARY KEY  (`chat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `chatmaster`
--


-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `question_id` int(11) NOT NULL auto_increment,
  `heading` varchar(50) NOT NULL,
  `question_detail` varchar(2000) NOT NULL,
  `datetime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `subtopic_id` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  PRIMARY KEY  (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `question`
--


-- --------------------------------------------------------

--
-- Table structure for table `subtopic`
--

CREATE TABLE `subtopic` (
  `subtopic_id` int(11) NOT NULL auto_increment,
  `subtopic_name` varchar(50) NOT NULL,
  `subtopic_description` varchar(500) NOT NULL,
  `s_status` varchar(20) NOT NULL,
  `topic_id` int(11) NOT NULL,
  PRIMARY KEY  (`subtopic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `subtopic`
--


-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `topic_id` int(11) NOT NULL auto_increment,
  `topic_name` varchar(50) NOT NULL,
  `topic_type` varchar(50) NOT NULL,
  PRIMARY KEY  (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `topic`
--


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL auto_increment,
  `country` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `username` varchar(50) default NULL,
  `fullname` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `user_acc_active` tinyint(1) default NULL,
  `dob` date NOT NULL,
  `e_mail` varchar(100) default NULL,
  `gender` varchar(20) NOT NULL,
  `uimg` varchar(255) NOT NULL,
  `isuser` tinyint(1) NOT NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `country`, `state`, `address`, `user_type`, `username`, `fullname`, `password`, `user_acc_active`, `dob`, `e_mail`, `gender`, `uimg`, `isuser`) VALUES
(33, 'Malawi', 'Lilongwe', 'Box 1397 Lilongwe', 'user', 'Rayray', 'Alastair Duncan', '123456789', NULL, '0000-00-00', 'aarduncan@gmail.com', '1', 'ups/', 0);
