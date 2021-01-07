-- MySQL dump 10.14  Distrib 5.5.64-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: new_upsa
-- ------------------------------------------------------
-- Server version	5.5.64-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mt_address_book`
--

DROP TABLE IF EXISTS `mt_address_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_address_book` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `client_id` int(14) NOT NULL DEFAULT '0',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(255) NOT NULL DEFAULT '',
  `location_name` varchar(255) NOT NULL DEFAULT '',
  `country_code` varchar(3) NOT NULL DEFAULT '',
  `as_default` int(1) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`),
  KEY `as_default` (`as_default`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_address_book`
--

LOCK TABLES `mt_address_book` WRITE;
/*!40000 ALTER TABLE `mt_address_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_address_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_address_book_location`
--

DROP TABLE IF EXISTS `mt_address_book_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_address_book_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(14) NOT NULL DEFAULT '0',
  `street` varchar(255) NOT NULL DEFAULT '',
  `location_name` varchar(255) NOT NULL DEFAULT '',
  `country_id` int(14) NOT NULL DEFAULT '0',
  `state_id` int(14) NOT NULL DEFAULT '0',
  `city_id` int(14) NOT NULL DEFAULT '0',
  `area_id` int(14) NOT NULL DEFAULT '0',
  `as_default` int(1) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_address_book_location`
--

LOCK TABLES `mt_address_book_location` WRITE;
/*!40000 ALTER TABLE `mt_address_book_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_address_book_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_admin_user`
--

DROP TABLE IF EXISTS `mt_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_admin_user` (
  `admin_id` int(14) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `role` varchar(100) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `user_lang` int(14) NOT NULL DEFAULT '0',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `lost_password_code` varchar(255) NOT NULL DEFAULT '',
  `session_token` varchar(255) NOT NULL DEFAULT '',
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_access` text,
  PRIMARY KEY (`admin_id`),
  KEY `admin_id` (`admin_id`),
  KEY `username` (`username`),
  KEY `password` (`password`),
  KEY `lost_password_code` (`lost_password_code`),
  KEY `session_token` (`session_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_admin_user`
--

LOCK TABLES `mt_admin_user` WRITE;
/*!40000 ALTER TABLE `mt_admin_user` DISABLE KEYS */;
INSERT INTO `mt_admin_user` VALUES (1,'admin','958a7554a524da3f9579af4775a27348','','','','2020-01-08 10:10:02','0000-00-00 00:00:00','85.100.71.25',0,'','','969767859818888aed6ae3b2c3b19afd6a2a6872296','2020-01-22 12:06:38','[\"autologin\",\"dashboard\",\"merchant\",\"sponsoredMerchantList\",\"packages\",\"Cuisine\",\"dishes\",\"OrderStatus\",\"incomingorders\",\"cancel_order\",\"settings\",\"themesettings\",\"managelocation\",\"commisionsettings\",\"voucher\",\"invoice\",\"merchantcommission\",\"withdrawal\",\"incomingwithdrawal\",\"withdrawalsettings\",\"emailsettings\",\"emailtpl\",\"notisettings\",\"emailogs\",\"cronjobs\",\"customPage\",\"Ratings\",\"ContactSettings\",\"SocialSettings\",\"ManageCurrency\",\"ManageLanguage\",\"Seo\",\"addons\",\"addonexport\",\"mobileapp\",\"pointsprogram\",\"merchantapp\",\"analytics\",\"customerlist\",\"subscriberlist\",\"reviews\",\"bankdeposit\",\"paymentgatewaysettings\",\"paymentgateway\",\"paypalSettings\",\"cardpaymentsettings\",\"stripeSettings\",\"mercadopagoSettings\",\"sisowsettings\",\"payumonenysettings\",\"obdsettings\",\"payserasettings\",\"payondelivery\",\"barclay\",\"epaybg\",\"authorize\",\"braintree\",\"razor\",\"mollie\",\"ipay88\",\"moneris\",\"sms\",\"smsSettings\",\"smsPackage\",\"smstransaction\",\"smslogs\",\"fax\",\"faxtransaction\",\"faxpackage\",\"faxlogs\",\"faxsettings\",\"reports\",\"rptMerchantReg\",\"rptMerchantPayment\",\"rptMerchanteSales\",\"rptmerchantsalesummary\",\"rptbookingsummary\",\"userList\",\"voguepay\",\"printermodule\",\"paypal_v2\",\"mercadopago\",\"singlemerchant\"]');
/*!40000 ALTER TABLE `mt_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_bank_deposit`
--

DROP TABLE IF EXISTS `mt_bank_deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_bank_deposit` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `branch_code` varchar(100) NOT NULL DEFAULT '',
  `date_of_deposit` date DEFAULT NULL,
  `time_of_deposit` varchar(50) NOT NULL DEFAULT '',
  `amount` float(14,4) NOT NULL DEFAULT '0.0000',
  `scanphoto` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(100) NOT NULL DEFAULT 'pending',
  `date_created` date DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `transaction_type` varchar(255) NOT NULL DEFAULT 'merchant_signup',
  `client_id` int(14) NOT NULL DEFAULT '0',
  `order_id` int(14) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `status` (`status`),
  KEY `client_id` (`client_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_bank_deposit`
--

LOCK TABLES `mt_bank_deposit` WRITE;
/*!40000 ALTER TABLE `mt_bank_deposit` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_bank_deposit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_barclay_trans`
--

DROP TABLE IF EXISTS `mt_barclay_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_barclay_trans` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(14) NOT NULL DEFAULT '',
  `token` varchar(255) NOT NULL DEFAULT '',
  `transaction_type` varchar(255) NOT NULL DEFAULT 'signup',
  `date_created` date DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `param1` varchar(255) NOT NULL DEFAULT '',
  `param2` text,
  `param3` text,
  PRIMARY KEY (`id`),
  KEY `orderid` (`orderid`),
  KEY `token` (`token`),
  KEY `transaction_type` (`transaction_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_barclay_trans`
--

LOCK TABLES `mt_barclay_trans` WRITE;
/*!40000 ALTER TABLE `mt_barclay_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_barclay_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_bookingtable`
--

DROP TABLE IF EXISTS `mt_bookingtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_bookingtable` (
  `booking_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `number_guest` int(14) NOT NULL DEFAULT '0',
  `date_booking` date DEFAULT NULL,
  `booking_time` varchar(50) NOT NULL DEFAULT '',
  `booking_name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `mobile` varchar(100) NOT NULL DEFAULT '',
  `booking_notes` text,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(100) NOT NULL DEFAULT '',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `viewed` int(1) NOT NULL DEFAULT '1',
  `client_id` int(14) NOT NULL DEFAULT '0',
  PRIMARY KEY (`booking_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `status` (`status`),
  KEY `viewed` (`viewed`),
  KEY `client_id` (`client_id`),
  KEY `date_booking` (`date_booking`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_bookingtable`
--

LOCK TABLES `mt_bookingtable` WRITE;
/*!40000 ALTER TABLE `mt_bookingtable` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_bookingtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_bookingtable_history`
--

DROP TABLE IF EXISTS `mt_bookingtable_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_bookingtable_history` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `booking_id` int(14) NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT '',
  `remarks` varchar(255) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `booking_id` (`booking_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_bookingtable_history`
--

LOCK TABLES `mt_bookingtable_history` WRITE;
/*!40000 ALTER TABLE `mt_bookingtable_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_bookingtable_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_category`
--

DROP TABLE IF EXISTS `mt_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_category` (
  `cat_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `category_name` varchar(255) NOT NULL DEFAULT '',
  `category_description` text,
  `photo` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(100) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `date_created` varchar(50) NOT NULL DEFAULT '',
  `date_modified` varchar(50) DEFAULT '',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `spicydish` int(2) NOT NULL DEFAULT '1',
  `spicydish_notes` text,
  `dish` text,
  `category_name_trans` text,
  `category_description_trans` text,
  `parent_cat_id` int(14) NOT NULL DEFAULT '0',
  `monday` int(1) NOT NULL DEFAULT '0',
  `tuesday` int(1) NOT NULL DEFAULT '0',
  `wednesday` int(1) NOT NULL DEFAULT '0',
  `thursday` int(1) NOT NULL DEFAULT '0',
  `friday` int(1) NOT NULL DEFAULT '0',
  `saturday` int(1) NOT NULL DEFAULT '0',
  `sunday` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `category_name` (`category_name`),
  KEY `status` (`status`),
  KEY `sequence` (`sequence`),
  KEY `parent_cat_id` (`parent_cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_category`
--

LOCK TABLES `mt_category` WRITE;
/*!40000 ALTER TABLE `mt_category` DISABLE KEYS */;
INSERT INTO `mt_category` VALUES (1,1,'Pizzas','','','publish',0,'2020-01-09 10:02:13','','106.77.149.33',1,'','',NULL,NULL,0,0,0,0,0,0,0,0),(2,4,'rfrf','rfrf','1579684292-bakery-510911_1280.jpg','publish',0,'2020-01-22 10:11:33','','85.99.176.45',1,'','',NULL,NULL,0,0,0,0,0,0,0,0),(3,3,'rfrf','rfrf','1579684440-bakery-510911_1280.jpg','publish',0,'2020-01-22 10:14:01','','85.99.176.45',1,'','',NULL,NULL,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `mt_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_client`
--

DROP TABLE IF EXISTS `mt_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_client` (
  `client_id` int(14) NOT NULL AUTO_INCREMENT,
  `social_strategy` varchar(100) NOT NULL DEFAULT 'web',
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(200) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(100) NOT NULL DEFAULT '',
  `country_code` varchar(3) NOT NULL DEFAULT '',
  `location_name` text,
  `contact_phone` varchar(20) NOT NULL DEFAULT '',
  `lost_password_token` varchar(255) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `status` varchar(100) NOT NULL DEFAULT 'active',
  `token` varchar(255) NOT NULL DEFAULT '',
  `mobile_verification_code` int(14) NOT NULL DEFAULT '0',
  `mobile_verification_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `custom_field1` varchar(255) NOT NULL DEFAULT '',
  `custom_field2` varchar(255) NOT NULL DEFAULT '',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `email_verification_code` varchar(14) NOT NULL DEFAULT '',
  `is_guest` int(1) NOT NULL DEFAULT '2',
  PRIMARY KEY (`client_id`),
  KEY `social_strategy` (`social_strategy`),
  KEY `email_address` (`email_address`),
  KEY `password` (`password`),
  KEY `street` (`street`),
  KEY `city` (`city`),
  KEY `state` (`state`),
  KEY `contact_phone` (`contact_phone`),
  KEY `lost_password_token` (`lost_password_token`),
  KEY `status` (`status`),
  KEY `token` (`token`),
  KEY `mobile_verification_code` (`mobile_verification_code`),
  KEY `is_guest` (`is_guest`),
  KEY `email_verification_code` (`email_verification_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_client`
--

LOCK TABLES `mt_client` WRITE;
/*!40000 ALTER TABLE `mt_client` DISABLE KEYS */;
INSERT INTO `mt_client` VALUES (1,'web','test','test','test@test.com','098f6bcd4621d373cade4e832627b4f6','','','','','',NULL,'+90323535','','2020-01-09 11:10:40','0000-00-00 00:00:00','2020-01-09 11:10:40','106.77.149.33','active','',0,'0000-00-00 00:00:00','','','','',2),(2,'web','demo','123','demo@demo.com','ae891eefc7ca77298ce3004f98241ceb','demo','dmo','dmeo','2342343','','','12345634345','','2020-01-15 12:30:05','0000-00-00 00:00:00','2020-01-22 10:44:48','106.77.159.82','active','',0,'0000-00-00 00:00:00','','','','',1),(3,'web','Tuncay','Keçeci','info2@sanalisci.com','edbbda66656476a833c5bd1a18215097','','','','','','Elena Purva Ltd','0892359624','','2020-01-22 10:41:57','0000-00-00 00:00:00','2020-01-22 10:41:57','85.99.176.45','active','',0,'0000-00-00 00:00:00','','','','',2);
/*!40000 ALTER TABLE `mt_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_client_cc`
--

DROP TABLE IF EXISTS `mt_client_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_client_cc` (
  `cc_id` int(14) NOT NULL AUTO_INCREMENT,
  `client_id` int(14) NOT NULL DEFAULT '0',
  `card_name` varchar(255) NOT NULL DEFAULT '',
  `credit_card_number` varchar(20) NOT NULL DEFAULT '',
  `expiration_month` varchar(5) NOT NULL DEFAULT '',
  `expiration_yr` varchar(5) NOT NULL DEFAULT '',
  `cvv` varchar(20) NOT NULL DEFAULT '',
  `billing_address` varchar(255) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `encrypted_card` binary(255) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  PRIMARY KEY (`cc_id`),
  KEY `client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_client_cc`
--

LOCK TABLES `mt_client_cc` WRITE;
/*!40000 ALTER TABLE `mt_client_cc` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_client_cc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_cooking_ref`
--

DROP TABLE IF EXISTS `mt_cooking_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_cooking_ref` (
  `cook_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `cooking_name` varchar(255) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(50) NOT NULL DEFAULT 'published',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `cooking_name_trans` text,
  PRIMARY KEY (`cook_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `cooking_name` (`cooking_name`),
  KEY `sequence` (`sequence`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_cooking_ref`
--

LOCK TABLES `mt_cooking_ref` WRITE;
/*!40000 ALTER TABLE `mt_cooking_ref` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_cooking_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_cuisine`
--

DROP TABLE IF EXISTS `mt_cuisine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_cuisine` (
  `cuisine_id` int(14) NOT NULL AUTO_INCREMENT,
  `cuisine_name` varchar(255) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `cuisine_name_trans` text,
  `status` varchar(100) NOT NULL DEFAULT 'publish',
  `featured_image` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`cuisine_id`),
  KEY `cuisine_name` (`cuisine_name`),
  KEY `sequence` (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_cuisine`
--

LOCK TABLES `mt_cuisine` WRITE;
/*!40000 ALTER TABLE `mt_cuisine` DISABLE KEYS */;
INSERT INTO `mt_cuisine` VALUES (1,'American',0,'2020-01-08 10:10:03','0000-00-00 00:00:00','85.100.71.25','','publish',''),(2,'Deli',0,'2020-01-08 10:10:03','0000-00-00 00:00:00','85.100.71.25','','publish',''),(3,'Indian',0,'2020-01-08 10:10:03','0000-00-00 00:00:00','85.100.71.25','','publish',''),(4,'Mediterranean',0,'2020-01-08 10:10:03','0000-00-00 00:00:00','85.100.71.25','','publish',''),(5,'Sandwiches',0,'2020-01-08 10:10:03','0000-00-00 00:00:00','85.100.71.25','','publish',''),(6,'Barbeque',0,'2020-01-08 10:10:03','0000-00-00 00:00:00','85.100.71.25','','publish',''),(7,'Diner',0,'2020-01-08 10:10:03','0000-00-00 00:00:00','85.100.71.25','','publish',''),(8,'Italian',0,'2020-01-08 10:10:03','0000-00-00 00:00:00','85.100.71.25','','publish',''),(9,'Mexican',0,'2020-01-08 10:10:03','0000-00-00 00:00:00','85.100.71.25','','publish',''),(10,'Sushi',0,'2020-01-08 10:10:03','0000-00-00 00:00:00','85.100.71.25','','publish',''),(11,'Burgers',0,'2020-01-08 10:10:03','0000-00-00 00:00:00','85.100.71.25','','publish',''),(12,'Greek',0,'2020-01-08 10:10:03','0000-00-00 00:00:00','85.100.71.25','','publish',''),(13,'Japanese',0,'2020-01-08 10:10:03','0000-00-00 00:00:00','85.100.71.25','','publish',''),(14,'Middle Eastern',0,'2020-01-08 10:10:03','0000-00-00 00:00:00','85.100.71.25','','publish',''),(15,'Thai',0,'2020-01-08 10:10:03','0000-00-00 00:00:00','85.100.71.25','','publish',''),(16,'Chinese',0,'2020-01-08 10:10:03','0000-00-00 00:00:00','85.100.71.25','','publish',''),(17,'Healthy',0,'2020-01-08 10:10:03','0000-00-00 00:00:00','85.100.71.25','','publish',''),(18,'Korean',0,'2020-01-08 10:10:03','0000-00-00 00:00:00','85.100.71.25','','publish',''),(19,'Pizza',0,'2020-01-08 10:10:03','0000-00-00 00:00:00','85.100.71.25','','publish',''),(20,'Vegetarian',0,'2020-01-08 10:10:03','0000-00-00 00:00:00','85.100.71.25','','publish','');
/*!40000 ALTER TABLE `mt_cuisine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_currency`
--

DROP TABLE IF EXISTS `mt_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_currency` (
  `currency_code` varchar(3) NOT NULL DEFAULT '',
  `currency_symbol` varchar(100) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`currency_code`),
  KEY `currency_symbol` (`currency_symbol`),
  KEY `currency_code` (`currency_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_currency`
--

LOCK TABLES `mt_currency` WRITE;
/*!40000 ALTER TABLE `mt_currency` DISABLE KEYS */;
INSERT INTO `mt_currency` VALUES ('AUD','&#36;','2020-01-08 10:10:02','0000-00-00 00:00:00','85.100.71.25'),('CAD','&#36;','2020-01-08 10:10:02','0000-00-00 00:00:00','85.100.71.25'),('CNY','&yen;','2020-01-08 10:10:02','0000-00-00 00:00:00','85.100.71.25'),('EUR','&euro;','2020-01-08 10:10:02','0000-00-00 00:00:00','85.100.71.25'),('HKD','&#36;','2020-01-08 10:10:02','0000-00-00 00:00:00','85.100.71.25'),('JPY','&yen;','2020-01-08 10:10:02','0000-00-00 00:00:00','85.100.71.25'),('MXN','&#36;','2020-01-08 10:10:02','0000-00-00 00:00:00','85.100.71.25'),('NZD','&#36;','2020-01-08 10:10:02','0000-00-00 00:00:00','85.100.71.25'),('TRY','$','0000-00-00 00:00:00','0000-00-00 00:00:00','106.77.149.33'),('USD','&#36;','2020-01-08 10:10:02','0000-00-00 00:00:00','85.100.71.25');
/*!40000 ALTER TABLE `mt_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_custom_page`
--

DROP TABLE IF EXISTS `mt_custom_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_custom_page` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `slug_name` varchar(255) NOT NULL DEFAULT '',
  `page_name` varchar(255) NOT NULL DEFAULT '',
  `content` text,
  `seo_title` varchar(255) NOT NULL DEFAULT '',
  `meta_description` varchar(255) NOT NULL DEFAULT '',
  `meta_keywords` varchar(255) NOT NULL DEFAULT '',
  `icons` varchar(255) NOT NULL DEFAULT '',
  `assign_to` varchar(50) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(100) NOT NULL DEFAULT '',
  `open_new_tab` int(11) NOT NULL DEFAULT '1',
  `is_custom_link` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `slug_name` (`slug_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_custom_page`
--

LOCK TABLES `mt_custom_page` WRITE;
/*!40000 ALTER TABLE `mt_custom_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_custom_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_dishes`
--

DROP TABLE IF EXISTS `mt_dishes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_dishes` (
  `dish_id` int(14) NOT NULL AUTO_INCREMENT,
  `dish_name` varchar(255) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(100) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`dish_id`),
  KEY `dish_name` (`dish_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_dishes`
--

LOCK TABLES `mt_dishes` WRITE;
/*!40000 ALTER TABLE `mt_dishes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_dishes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_email_logs`
--

DROP TABLE IF EXISTS `mt_email_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_email_logs` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `sender` varchar(255) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `content` text,
  `status` varchar(200) NOT NULL DEFAULT 'pending',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `module_type` varchar(255) NOT NULL DEFAULT '',
  `user_type` varchar(100) NOT NULL DEFAULT '',
  `user_id` int(14) NOT NULL DEFAULT '0',
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `email_provider` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `user_type` (`user_type`),
  KEY `merchant_id` (`merchant_id`),
  KEY `module_type` (`module_type`),
  KEY `email_address` (`email_address`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_email_logs`
--

LOCK TABLES `mt_email_logs` WRITE;
/*!40000 ALTER TABLE `mt_email_logs` DISABLE KEYS */;
INSERT INTO `mt_email_logs` VALUES (1,'demo@demo.com','','Your Activation Code','hi demo<br />\n<br />\nYour activation code is 140404<br />\n<br />\nRegards<br />\n  - yemek siparişi','sent','2020-01-09 09:11:37','106.77.149.33','core','',0,0,''),(2,'greg80@gmail.com','','Your Activation Code','hi Pizzeria<br />\n<br />\nYour activation code is 204202<br />\n<br />\nRegards<br />\n  - yemek siparişi','sent','2020-01-09 09:14:40','106.77.149.33','core','',0,0,''),(3,'greg80@gmail.com','','Welcome Pizzeria','hi  Pizzeria\n\nThank you for joining us!\n\nLogin here\nhttps://new.yemeksiparisi.com.tr/merchant\n\nRegards\n - yemek siparişi','sent','2020-01-09 09:17:51','78.47.156.99','core','',0,0,''),(4,'test@test.com','','Welcome test','hi test<br />\n<br />\nthank you for signup <br />\n<br />\nRegards<br />\n- yemek siparişi','sent','2020-01-09 11:10:40','106.77.149.33','core','',0,0,''),(5,'test@test.com','','Welcome Havmore','hi  Havmore\n\nThank you for joining us!\n\nLogin here\nhttps://new.yemeksiparisi.com.tr/merchant\n\nRegards\n - yemek siparişi','sent','2020-01-09 13:24:59','78.47.156.99','core','',0,0,''),(6,'test@test.com','','Welcome Havmore','hi  Havmore\n\nThank you for joining us!\n\nLogin here\nhttps://new.yemeksiparisi.com.tr/merchant\n\nRegards\n - yemek siparişi','sent','2020-01-09 13:29:37','78.47.156.99','core','',0,0,''),(7,'info2@sanalisci.com','','Welcome Tuncay','hi Tuncay<br />\n<br />\nthank you for signup <br />\n<br />\nRegards<br />\n- yemek siparişi','sent','2020-01-22 10:41:57','85.99.176.45','core','',0,0,''),(8,'demo@demo.com','','Your Receipt for Order ID : 20','Dear demo 123,\n\n\nThank you for shopping at yemek siparişi. We hope you enjoy your new purchase! Your order number is 20. We have included your order receipt and delivery details below:\n\n		<!--<div style=\"display: block;max-height: 70px;max-width: 200px;\">-->\n				<!--</div>-->\n		<table border=\"0\">\n		<tr><td>Customer Name</td><td>demo 123</td></tr><tr><td>Merchant Name</td><td>Pizzeria</td></tr><tr><td>Telephone</td><td>3232837878</td></tr><tr><td>Address</td><td>demo dmo istanbul 2342343</td></tr><tr><td>TRN Type</td><td>delivery</td></tr><tr><td>Payment Type</td><td>IYZIPAY</td></tr><tr><td>Reference #</td><td>20</td></tr><tr><td>TRN Date</td><td>Jan 22,2020 11:50:16 am</td></tr><tr><td>Delivery Date</td><td>Jan 22,2020</td></tr><tr><td>Delivery Time</td><td>11:55:00 am</td></tr><tr><td>Deliver to</td><td>demo  dmo dmeo 2342343</td></tr><tr><td>Delivery Instruction</td><td></td></tr><tr><td>Location Name</td><td></td></tr><tr><td>Contact Number</td><td>12345634345</td></tr><tr><td colspan=\"2\">&nbsp;</td></tr><tr><td colspan=\"2\"><b></td></b></tr><tr><td>2 Double cheese burger<p>medium</p></td><td>$60.00</td></tr><tr><td colspan=\"2\">&nbsp;</td></tr><tr><td>Sub Total:</td><td>$60.00</td></tr><tr><td>Delivery Fee:</td><td>$0.00</td></tr><tr><td>Tax 0.0000%</td><td>-</td></tr><tr><td>Total:</td><td>$60.00</td></tr>		\n		</table>\n		\n\nKind Regards','sent','2020-01-22 11:50:51','78.47.156.99','core','',0,0,'');
/*!40000 ALTER TABLE `mt_email_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_favorites`
--

DROP TABLE IF EXISTS `mt_favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_favorites` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `fav_type` varchar(100) NOT NULL DEFAULT 'restaurant',
  `client_id` int(14) NOT NULL DEFAULT '0',
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_favorites`
--

LOCK TABLES `mt_favorites` WRITE;
/*!40000 ALTER TABLE `mt_favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_fax_broadcast`
--

DROP TABLE IF EXISTS `mt_fax_broadcast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_fax_broadcast` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `faxno` varchar(50) NOT NULL DEFAULT '',
  `recipname` varchar(32) NOT NULL DEFAULT '',
  `faxurl` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `jobid` varchar(255) NOT NULL DEFAULT '',
  `api_raw_response` text,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_process` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_postback` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `merchant_id` (`merchant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_fax_broadcast`
--

LOCK TABLES `mt_fax_broadcast` WRITE;
/*!40000 ALTER TABLE `mt_fax_broadcast` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_fax_broadcast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_fax_package`
--

DROP TABLE IF EXISTS `mt_fax_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_fax_package` (
  `fax_package_id` int(14) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `price` float(14,4) NOT NULL DEFAULT '0.0000',
  `promo_price` float(14,4) NOT NULL DEFAULT '0.0000',
  `fax_limit` int(14) NOT NULL DEFAULT '0',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `status` varchar(100) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`fax_package_id`),
  KEY `title` (`title`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_fax_package`
--

LOCK TABLES `mt_fax_package` WRITE;
/*!40000 ALTER TABLE `mt_fax_package` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_fax_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_fax_package_trans`
--

DROP TABLE IF EXISTS `mt_fax_package_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_fax_package_trans` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `fax_package_id` int(14) NOT NULL DEFAULT '0',
  `payment_type` varchar(50) NOT NULL DEFAULT '',
  `package_price` float(14,4) NOT NULL DEFAULT '0.0000',
  `fax_limit` int(14) NOT NULL DEFAULT '0',
  `status` varchar(100) NOT NULL DEFAULT 'pending',
  `payment_reference` varchar(255) NOT NULL DEFAULT '',
  `payment_gateway_response` text,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_fax_package_trans`
--

LOCK TABLES `mt_fax_package_trans` WRITE;
/*!40000 ALTER TABLE `mt_fax_package_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_fax_package_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_ingredients`
--

DROP TABLE IF EXISTS `mt_ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_ingredients` (
  `ingredients_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `ingredients_name` varchar(255) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(50) NOT NULL DEFAULT 'published',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `ingredients_name_trans` text,
  PRIMARY KEY (`ingredients_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `status` (`status`),
  KEY `ingredients_name` (`ingredients_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_ingredients`
--

LOCK TABLES `mt_ingredients` WRITE;
/*!40000 ALTER TABLE `mt_ingredients` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_invoice`
--

DROP TABLE IF EXISTS `mt_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_invoice` (
  `invoice_number` int(14) NOT NULL AUTO_INCREMENT,
  `invoice_token` varchar(100) NOT NULL DEFAULT '',
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `merchant_name` varchar(255) NOT NULL DEFAULT '',
  `merchant_contact_email` varchar(200) NOT NULL DEFAULT '',
  `merchant_contact_phone` varchar(50) NOT NULL DEFAULT '',
  `invoice_terms` int(14) NOT NULL DEFAULT '0',
  `invoice_total` float(14,4) NOT NULL DEFAULT '0.0000',
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `pdf_filename` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `payment_status` varchar(255) NOT NULL DEFAULT 'unpaid',
  `viewed` varchar(2) NOT NULL DEFAULT '2',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_process` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`invoice_number`),
  KEY `invoice_token` (`invoice_token`),
  KEY `merchant_id` (`merchant_id`),
  KEY `status` (`status`),
  KEY `date_from` (`date_from`),
  KEY `date_to` (`date_to`),
  KEY `invoice_total` (`invoice_total`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_invoice`
--

LOCK TABLES `mt_invoice` WRITE;
/*!40000 ALTER TABLE `mt_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_invoice_history`
--

DROP TABLE IF EXISTS `mt_invoice_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_invoice_history` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(14) NOT NULL DEFAULT '',
  `payment_status` varchar(100) NOT NULL DEFAULT '',
  `remarks` varchar(255) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `invoice_number` (`invoice_number`),
  KEY `payment_status` (`payment_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_invoice_history`
--

LOCK TABLES `mt_invoice_history` WRITE;
/*!40000 ALTER TABLE `mt_invoice_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_invoice_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_item`
--

DROP TABLE IF EXISTS `mt_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_item` (
  `item_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `item_name` varchar(255) NOT NULL DEFAULT '',
  `item_description` text,
  `status` varchar(50) NOT NULL DEFAULT '',
  `category` text,
  `price` text,
  `addon_item` text,
  `cooking_ref` text,
  `discount` varchar(14) NOT NULL DEFAULT '',
  `multi_option` text,
  `multi_option_value` text,
  `photo` varchar(255) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `is_featured` varchar(1) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `ingredients` text,
  `spicydish` int(2) NOT NULL DEFAULT '1',
  `two_flavors` int(2) NOT NULL,
  `two_flavors_position` text,
  `require_addon` text,
  `dish` text,
  `item_name_trans` text,
  `item_description_trans` text,
  `non_taxable` int(1) NOT NULL DEFAULT '1',
  `not_available` int(1) NOT NULL DEFAULT '1',
  `gallery_photo` text,
  `points_earned` int(14) NOT NULL DEFAULT '0',
  `points_disabled` int(1) NOT NULL DEFAULT '1',
  `packaging_fee` float(14,4) NOT NULL DEFAULT '0.0000',
  `packaging_incremental` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `item_name` (`item_name`),
  KEY `status` (`status`),
  KEY `is_featured` (`is_featured`),
  KEY `spicydish` (`spicydish`),
  KEY `two_flavors` (`two_flavors`),
  KEY `points_earned` (`points_earned`),
  KEY `points_disabled` (`points_disabled`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_item`
--

LOCK TABLES `mt_item` WRITE;
/*!40000 ALTER TABLE `mt_item` DISABLE KEYS */;
INSERT INTO `mt_item` VALUES (1,1,'Double cheese burger','Double cheese burger','publish','[\"1\"]','{\"2\":\"30\"}','','','','','','1578560666-1 - Copy.jpg',0,'','2020-01-09 10:05:04','0000-00-00 00:00:00','106.77.149.33','',0,0,'','','',NULL,NULL,2,1,'',0,1,0.0000,1),(2,4,'rfrfrfrfr','ffrfrfrf','publish','[\"2\"]','{\"16\":\"54\"}','','','','','','',0,'','2020-01-22 10:11:49','0000-00-00 00:00:00','85.99.176.45','',0,0,'','','',NULL,NULL,1,1,'',0,1,0.0000,0),(3,3,'rfrfrf','rfrfrfrfrfrfffffffffffffffffffffffffffffffffffffffffffffffffff flrjf lrjfşlj j rflkjrlfkjr flkrjflkjr ljfkrfrff','publish','[\"3\"]','[\"544\"]','','','','','','1579684451-bread-1281053_1280.jpg',0,'','2020-01-22 10:14:24','0000-00-00 00:00:00','85.99.176.45','',0,0,'','','',NULL,NULL,1,1,'',0,1,0.0000,0);
/*!40000 ALTER TABLE `mt_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_languages`
--

DROP TABLE IF EXISTS `mt_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_languages` (
  `lang_id` int(14) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(14) NOT NULL DEFAULT '',
  `language_code` varchar(255) NOT NULL DEFAULT '',
  `source_text` text,
  `is_assign` int(1) NOT NULL DEFAULT '2',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(50) NOT NULL DEFAULT '',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_languages`
--

LOCK TABLES `mt_languages` WRITE;
/*!40000 ALTER TABLE `mt_languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_location_area`
--

DROP TABLE IF EXISTS `mt_location_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_location_area` (
  `area_id` int(14) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `city_id` int(14) NOT NULL DEFAULT '0',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`area_id`),
  KEY `city_id` (`city_id`),
  KEY `sequence` (`sequence`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_location_area`
--

LOCK TABLES `mt_location_area` WRITE;
/*!40000 ALTER TABLE `mt_location_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_location_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_location_cities`
--

DROP TABLE IF EXISTS `mt_location_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_location_cities` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `postal_code` varchar(255) NOT NULL DEFAULT '',
  `state_id` int(11) NOT NULL,
  `sequence` int(14) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`city_id`),
  KEY `postal_code` (`postal_code`),
  KEY `state_id` (`state_id`),
  KEY `sequence` (`sequence`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_location_cities`
--

LOCK TABLES `mt_location_cities` WRITE;
/*!40000 ALTER TABLE `mt_location_cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_location_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_location_countries`
--

DROP TABLE IF EXISTS `mt_location_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_location_countries` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `shortcode` varchar(3) NOT NULL DEFAULT '',
  `country_name` varchar(150) NOT NULL DEFAULT '',
  `phonecode` int(11) NOT NULL,
  PRIMARY KEY (`country_id`),
  KEY `shortcode` (`shortcode`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_location_countries`
--

LOCK TABLES `mt_location_countries` WRITE;
/*!40000 ALTER TABLE `mt_location_countries` DISABLE KEYS */;
INSERT INTO `mt_location_countries` VALUES (1,'AF','Afghanistan',93),(2,'AL','Albania',355),(3,'DZ','Algeria',213),(4,'AS','American Samoa',1684),(5,'AD','Andorra',376),(6,'AO','Angola',244),(7,'AI','Anguilla',1264),(8,'AQ','Antarctica',0),(9,'AG','Antigua And Barbuda',1268),(10,'AR','Argentina',54),(11,'AM','Armenia',374),(12,'AW','Aruba',297),(13,'AU','Australia',61),(14,'AT','Austria',43),(15,'AZ','Azerbaijan',994),(16,'BS','Bahamas The',1242),(17,'BH','Bahrain',973),(18,'BD','Bangladesh',880),(19,'BB','Barbados',1246),(20,'BY','Belarus',375),(21,'BE','Belgium',32),(22,'BZ','Belize',501),(23,'BJ','Benin',229),(24,'BM','Bermuda',1441),(25,'BT','Bhutan',975),(26,'BO','Bolivia',591),(27,'BA','Bosnia and Herzegovina',387),(28,'BW','Botswana',267),(29,'BV','Bouvet Island',0),(30,'BR','Brazil',55),(31,'IO','British Indian Ocean Territory',246),(32,'BN','Brunei',673),(33,'BG','Bulgaria',359),(34,'BF','Burkina Faso',226),(35,'BI','Burundi',257),(36,'KH','Cambodia',855),(37,'CM','Cameroon',237),(38,'CA','Canada',1),(39,'CV','Cape Verde',238),(40,'KY','Cayman Islands',1345),(41,'CF','Central African Republic',236),(42,'TD','Chad',235),(43,'CL','Chile',56),(44,'CN','China',86),(45,'CX','Christmas Island',61),(46,'CC','Cocos (Keeling) Islands',672),(47,'CO','Colombia',57),(48,'KM','Comoros',269),(49,'CG','Congo',242),(50,'CD','Congo The Democratic Republic Of The',242),(51,'CK','Cook Islands',682),(52,'CR','Costa Rica',506),(53,'CI','Cote D\'Ivoire (Ivory Coast)',225),(54,'HR','Croatia (Hrvatska)',385),(55,'CU','Cuba',53),(56,'CY','Cyprus',357),(57,'CZ','Czech Republic',420),(58,'DK','Denmark',45),(59,'DJ','Djibouti',253),(60,'DM','Dominica',1767),(61,'DO','Dominican Republic',1809),(62,'TP','East Timor',670),(63,'EC','Ecuador',593),(64,'EG','Egypt',20),(65,'SV','El Salvador',503),(66,'GQ','Equatorial Guinea',240),(67,'ER','Eritrea',291),(68,'EE','Estonia',372),(69,'ET','Ethiopia',251),(70,'XA','External Territories of Australia',61),(71,'FK','Falkland Islands',500),(72,'FO','Faroe Islands',298),(73,'FJ','Fiji Islands',679),(74,'FI','Finland',358),(75,'FR','France',33),(76,'GF','French Guiana',594),(77,'PF','French Polynesia',689),(78,'TF','French Southern Territories',0),(79,'GA','Gabon',241),(80,'GM','Gambia The',220),(81,'GE','Georgia',995),(82,'DE','Germany',49),(83,'GH','Ghana',233),(84,'GI','Gibraltar',350),(85,'GR','Greece',30),(86,'GL','Greenland',299),(87,'GD','Grenada',1473),(88,'GP','Guadeloupe',590),(89,'GU','Guam',1671),(90,'GT','Guatemala',502),(91,'XU','Guernsey and Alderney',44),(92,'GN','Guinea',224),(93,'GW','Guinea-Bissau',245),(94,'GY','Guyana',592),(95,'HT','Haiti',509),(96,'HM','Heard and McDonald Islands',0),(97,'HN','Honduras',504),(98,'HK','Hong Kong S.A.R.',852),(99,'HU','Hungary',36),(100,'IS','Iceland',354),(101,'IN','India',91),(102,'ID','Indonesia',62),(103,'IR','Iran',98),(104,'IQ','Iraq',964),(105,'IE','Ireland',353),(106,'IL','Israel',972),(107,'IT','Italy',39),(108,'JM','Jamaica',1876),(109,'JP','Japan',81),(110,'XJ','Jersey',44),(111,'JO','Jordan',962),(112,'KZ','Kazakhstan',7),(113,'KE','Kenya',254),(114,'KI','Kiribati',686),(115,'KP','Korea North',850),(116,'KR','Korea South',82),(117,'KW','Kuwait',965),(118,'KG','Kyrgyzstan',996),(119,'LA','Laos',856),(120,'LV','Latvia',371),(121,'LB','Lebanon',961),(122,'LS','Lesotho',266),(123,'LR','Liberia',231),(124,'LY','Libya',218),(125,'LI','Liechtenstein',423),(126,'LT','Lithuania',370),(127,'LU','Luxembourg',352),(128,'MO','Macau S.A.R.',853),(129,'MK','Macedonia',389),(130,'MG','Madagascar',261),(131,'MW','Malawi',265),(132,'MY','Malaysia',60),(133,'MV','Maldives',960),(134,'ML','Mali',223),(135,'MT','Malta',356),(136,'XM','Man (Isle of)',44),(137,'MH','Marshall Islands',692),(138,'MQ','Martinique',596),(139,'MR','Mauritania',222),(140,'MU','Mauritius',230),(141,'YT','Mayotte',269),(142,'MX','Mexico',52),(143,'FM','Micronesia',691),(144,'MD','Moldova',373),(145,'MC','Monaco',377),(146,'MN','Mongolia',976),(147,'MS','Montserrat',1664),(148,'MA','Morocco',212),(149,'MZ','Mozambique',258),(150,'MM','Myanmar',95),(151,'NA','Namibia',264),(152,'NR','Nauru',674),(153,'NP','Nepal',977),(154,'AN','Netherlands Antilles',599),(155,'NL','Netherlands The',31),(156,'NC','New Caledonia',687),(157,'NZ','New Zealand',64),(158,'NI','Nicaragua',505),(159,'NE','Niger',227),(160,'NG','Nigeria',234),(161,'NU','Niue',683),(162,'NF','Norfolk Island',672),(163,'MP','Northern Mariana Islands',1670),(164,'NO','Norway',47),(165,'OM','Oman',968),(166,'PK','Pakistan',92),(167,'PW','Palau',680),(168,'PS','Palestinian Territory Occupied',970),(169,'PA','Panama',507),(170,'PG','Papua new Guinea',675),(171,'PY','Paraguay',595),(172,'PE','Peru',51),(173,'PH','Philippines',63),(174,'PN','Pitcairn Island',0),(175,'PL','Poland',48),(176,'PT','Portugal',351),(177,'PR','Puerto Rico',1787),(178,'QA','Qatar',974),(179,'RE','Reunion',262),(180,'RO','Romania',40),(181,'RU','Russia',70),(182,'RW','Rwanda',250),(183,'SH','Saint Helena',290),(184,'KN','Saint Kitts And Nevis',1869),(185,'LC','Saint Lucia',1758),(186,'PM','Saint Pierre and Miquelon',508),(187,'VC','Saint Vincent And The Grenadines',1784),(188,'WS','Samoa',684),(189,'SM','San Marino',378),(190,'ST','Sao Tome and Principe',239),(191,'SA','Saudi Arabia',966),(192,'SN','Senegal',221),(193,'RS','Serbia',381),(194,'SC','Seychelles',248),(195,'SL','Sierra Leone',232),(196,'SG','Singapore',65),(197,'SK','Slovakia',421),(198,'SI','Slovenia',386),(199,'XG','Smaller Territories of the UK',44),(200,'SB','Solomon Islands',677),(201,'SO','Somalia',252),(202,'ZA','South Africa',27),(203,'GS','South Georgia',0),(204,'SS','South Sudan',211),(205,'ES','Spain',34),(206,'LK','Sri Lanka',94),(207,'SD','Sudan',249),(208,'SR','Suriname',597),(209,'SJ','Svalbard And Jan Mayen Islands',47),(210,'SZ','Swaziland',268),(211,'SE','Sweden',46),(212,'CH','Switzerland',41),(213,'SY','Syria',963),(214,'TW','Taiwan',886),(215,'TJ','Tajikistan',992),(216,'TZ','Tanzania',255),(217,'TH','Thailand',66),(218,'TG','Togo',228),(219,'TK','Tokelau',690),(220,'TO','Tonga',676),(221,'TT','Trinidad And Tobago',1868),(222,'TN','Tunisia',216),(223,'TR','Turkey',90),(224,'TM','Turkmenistan',7370),(225,'TC','Turks And Caicos Islands',1649),(226,'TV','Tuvalu',688),(227,'UG','Uganda',256),(228,'UA','Ukraine',380),(229,'AE','United Arab Emirates',971),(230,'GB','United Kingdom',44),(231,'US','United States',1),(232,'UM','United States Minor Outlying Islands',1),(233,'UY','Uruguay',598),(234,'UZ','Uzbekistan',998),(235,'VU','Vanuatu',678),(236,'VA','Vatican City State (Holy See)',39),(237,'VE','Venezuela',58),(238,'VN','Vietnam',84),(239,'VG','Virgin Islands (British)',1284),(240,'VI','Virgin Islands (US)',1340),(241,'WF','Wallis And Futuna Islands',681),(242,'EH','Western Sahara',212),(243,'YE','Yemen',967),(244,'YU','Yugoslavia',38),(245,'ZM','Zambia',260),(246,'ZW','Zimbabwe',263);
/*!40000 ALTER TABLE `mt_location_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_location_rate`
--

DROP TABLE IF EXISTS `mt_location_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_location_rate` (
  `rate_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `country_id` int(14) NOT NULL DEFAULT '0',
  `state_id` int(14) NOT NULL DEFAULT '0',
  `city_id` int(14) DEFAULT '0',
  `area_id` int(14) NOT NULL DEFAULT '0',
  `fee` float(14,5) NOT NULL DEFAULT '0.00000',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`rate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_location_rate`
--

LOCK TABLES `mt_location_rate` WRITE;
/*!40000 ALTER TABLE `mt_location_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_location_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_location_states`
--

DROP TABLE IF EXISTS `mt_location_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_location_states` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `country_id` int(11) NOT NULL DEFAULT '1',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`state_id`),
  KEY `country_id` (`country_id`),
  KEY `sequence` (`sequence`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_location_states`
--

LOCK TABLES `mt_location_states` WRITE;
/*!40000 ALTER TABLE `mt_location_states` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_location_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_merchant`
--

DROP TABLE IF EXISTS `mt_merchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_merchant` (
  `merchant_id` int(14) NOT NULL AUTO_INCREMENT,
  `restaurant_slug` varchar(255) NOT NULL DEFAULT '',
  `restaurant_name` varchar(255) NOT NULL DEFAULT '',
  `restaurant_phone` varchar(100) NOT NULL DEFAULT '',
  `contact_name` varchar(255) NOT NULL DEFAULT '',
  `contact_phone` varchar(100) NOT NULL DEFAULT '',
  `contact_email` varchar(255) NOT NULL DEFAULT '',
  `country_code` varchar(3) NOT NULL DEFAULT '',
  `street` text,
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(255) NOT NULL DEFAULT '',
  `post_code` varchar(100) NOT NULL DEFAULT '',
  `cuisine` text,
  `service` varchar(255) NOT NULL DEFAULT '',
  `free_delivery` int(1) NOT NULL DEFAULT '2',
  `delivery_estimation` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `activation_key` varchar(50) NOT NULL DEFAULT '',
  `activation_token` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(100) NOT NULL DEFAULT 'pending',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_activated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `package_id` int(14) NOT NULL DEFAULT '0',
  `package_price` float(14,5) NOT NULL DEFAULT '0.00000',
  `membership_expired` date DEFAULT NULL,
  `payment_steps` int(1) NOT NULL DEFAULT '1',
  `is_featured` int(1) NOT NULL DEFAULT '1',
  `is_ready` int(1) NOT NULL DEFAULT '1',
  `is_sponsored` int(2) NOT NULL DEFAULT '1',
  `sponsored_expiration` date DEFAULT NULL,
  `lost_password_code` varchar(50) NOT NULL DEFAULT '',
  `user_lang` int(14) NOT NULL DEFAULT '0',
  `membership_purchase_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sort_featured` int(14) NOT NULL DEFAULT '0',
  `is_commission` int(1) NOT NULL DEFAULT '1',
  `percent_commision` float(14,5) NOT NULL DEFAULT '0.00000',
  `abn` varchar(255) NOT NULL DEFAULT '',
  `session_token` varchar(255) NOT NULL DEFAULT '',
  `commision_type` varchar(50) NOT NULL DEFAULT 'percentage',
  `mobile_session_token` varchar(255) NOT NULL DEFAULT '',
  `merchant_key` varchar(255) NOT NULL DEFAULT '',
  `latitude` varchar(50) NOT NULL DEFAULT '',
  `lontitude` varchar(50) NOT NULL DEFAULT '',
  `delivery_charges` float(14,5) NOT NULL DEFAULT '0.00000',
  `minimum_order` float(14,5) NOT NULL DEFAULT '0.00000',
  `delivery_minimum_order` float(14,5) NOT NULL DEFAULT '0.00000',
  `delivery_maximum_order` float(14,5) NOT NULL DEFAULT '0.00000',
  `pickup_minimum_order` float(14,5) NOT NULL DEFAULT '0.00000',
  `pickup_maximum_order` float(14,5) NOT NULL DEFAULT '0.00000',
  `country_name` varchar(255) NOT NULL DEFAULT '',
  `country_id` int(14) NOT NULL DEFAULT '0',
  `state_id` int(14) NOT NULL DEFAULT '0',
  `city_id` int(14) NOT NULL DEFAULT '0',
  `area_id` int(14) NOT NULL DEFAULT '0',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `merchant_type` int(1) NOT NULL DEFAULT '1',
  `invoice_terms` int(14) NOT NULL DEFAULT '7',
  `payment_gateway_ref` varchar(255) NOT NULL DEFAULT '',
  `user_access` text,
  PRIMARY KEY (`merchant_id`),
  KEY `restaurant_slug` (`restaurant_slug`),
  KEY `restaurant_name` (`restaurant_name`),
  KEY `post_code` (`post_code`),
  KEY `service` (`service`),
  KEY `username` (`username`),
  KEY `password` (`password`),
  KEY `status` (`status`),
  KEY `package_id` (`package_id`),
  KEY `payment_steps` (`payment_steps`),
  KEY `is_featured` (`is_featured`),
  KEY `is_ready` (`is_ready`),
  KEY `is_sponsored` (`is_sponsored`),
  KEY `is_commission` (`is_commission`),
  KEY `percent_commision` (`percent_commision`),
  KEY `session_token` (`session_token`),
  KEY `commision_type` (`commision_type`),
  KEY `delivery_charges` (`delivery_charges`),
  KEY `merchant_id` (`merchant_id`),
  KEY `country_id` (`country_id`),
  KEY `state_id` (`state_id`),
  KEY `city_id` (`city_id`),
  KEY `area_id` (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_merchant`
--

LOCK TABLES `mt_merchant` WRITE;
/*!40000 ALTER TABLE `mt_merchant` DISABLE KEYS */;
INSERT INTO `mt_merchant` VALUES (1,'pizzeria','Pizzeria','3232837878','demo','+904535353','naSDSDFSFD@gmail.com','TR','demo','dmo','istanbul','2342343','[\"3\",\"9\"]','1',2,'','demo','fe01ce2a7fbac8fafaed7c982a04e229','204202','01acf09c988ca36e1618f83ec86647fb','active','2020-01-09 09:14:01','2020-01-22 15:46:07','2020-01-09 09:17:51','2020-01-15 12:16:29','85.99.176.45',1,66.00000,'2021-01-08',3,2,2,1,NULL,'',0,'2020-01-09 09:14:40',0,1,5.00000,'','03109698679faaea9fb84d17bfadfa6525516eb756a','percentage','','','','',0.00000,0.00000,0.00000,0.00000,0.00000,0.00000,'',0,0,0,0,'1579684376-logo1.jpg',1,7,'','[]'),(3,'havmore','Havmore','68768','test','76877878','test@test.com','TR','229 boadway1','new york','istanbul','42421','[\"5\",\"8\"]','1',2,'','adminix','3bd9e92c237c6c14a4a5e24f94092ca9','142012','d914734cb74f3c8b9db801e976ced1c1','active','2020-01-09 13:29:37','2020-01-22 10:14:45','0000-00-00 00:00:00','0000-00-00 00:00:00','85.99.176.45',1,66.00000,'0000-00-00',3,2,2,1,NULL,'',0,'0000-00-00 00:00:00',0,2,5.00000,'','44013365983faaea9fb84d17bfadfa6525516eb756a','percentage','','','','',0.00000,0.00000,0.00000,0.00000,0.00000,0.00000,'',0,0,0,0,'',2,1,'','[]'),(4,'demosatici','demosatici','0892359624','deded','0892359624','drfdede@gmail.com','TR','Sozopol Santrfrfa Marina Horfel villarfr','Trabzon','frfde','8130','[\"3\"]','1',2,'','demosatici','c1d4f9810fd6c197ecf37cbf7b49ce79','','','active','2020-01-22 10:10:09','2020-01-22 10:11:51','0000-00-00 00:00:00','0000-00-00 00:00:00','85.99.176.45',1,66.00000,'2020-01-25',1,2,2,1,NULL,'',0,'0000-00-00 00:00:00',0,1,5.00000,'','13847934745faaea9fb84d17bfadfa6525516eb756a','fixed','','','41.0403285','28.872192199999972',0.00000,0.00000,0.00000,0.00000,0.00000,0.00000,'',0,0,0,0,'1579684334-bagel-3032345_1280.jpg',1,1,'','[]');
/*!40000 ALTER TABLE `mt_merchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_merchant_cc`
--

DROP TABLE IF EXISTS `mt_merchant_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_merchant_cc` (
  `mt_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `card_name` varchar(255) NOT NULL DEFAULT '',
  `credit_card_number` varchar(20) NOT NULL DEFAULT '',
  `expiration_month` varchar(5) NOT NULL DEFAULT '',
  `expiration_yr` varchar(5) NOT NULL DEFAULT '',
  `cvv` varchar(20) NOT NULL,
  `billing_address` varchar(255) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `encrypted_card` binary(255) DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`mt_id`),
  KEY `merchant_id` (`merchant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_merchant_cc`
--

LOCK TABLES `mt_merchant_cc` WRITE;
/*!40000 ALTER TABLE `mt_merchant_cc` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_merchant_cc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_merchant_sub`
--

DROP TABLE IF EXISTS `mt_merchant_sub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_merchant_sub` (
  `sub_merchant_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL,
  `submerchant_type` varchar(25) NOT NULL,
  `seller_name` varchar(255) NOT NULL,
  `gsm_number` varchar(100) NOT NULL,
  `iban` varchar(255) NOT NULL,
  `sub_contact_name` varchar(255) NOT NULL,
  `sub_contact_surname` varchar(255) NOT NULL,
  `identity_number` varchar(255) NOT NULL,
  `tax_office` varchar(255) NOT NULL,
  `tax_number` varchar(255) NOT NULL,
  `legal_company_title` varchar(255) NOT NULL,
  `submerchant_key` varchar(255) NOT NULL,
  PRIMARY KEY (`sub_merchant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_merchant_sub`
--

LOCK TABLES `mt_merchant_sub` WRITE;
/*!40000 ALTER TABLE `mt_merchant_sub` DISABLE KEYS */;
INSERT INTO `mt_merchant_sub` VALUES (1,3,'PERSONAL','Havmore','76877878','TR180006200119000006672315','test','test','3535353','','','','D/Dq5DdAiRBx3j4Cp8rlXHEdRhg=');
/*!40000 ALTER TABLE `mt_merchant_sub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_merchant_user`
--

DROP TABLE IF EXISTS `mt_merchant_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_merchant_user` (
  `merchant_user_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `user_access` text,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(100) NOT NULL DEFAULT 'active',
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `contact_email` varchar(255) NOT NULL DEFAULT '',
  `session_token` varchar(255) NOT NULL DEFAULT '',
  `mobile_session_token` varchar(255) NOT NULL DEFAULT '',
  `lost_password_code` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`merchant_user_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `username` (`username`),
  KEY `password` (`password`),
  KEY `status` (`status`),
  KEY `session_token` (`session_token`),
  KEY `mobile_session_token` (`mobile_session_token`),
  KEY `lost_password_code` (`lost_password_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_merchant_user`
--

LOCK TABLES `mt_merchant_user` WRITE;
/*!40000 ALTER TABLE `mt_merchant_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_merchant_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_minimum_table`
--

DROP TABLE IF EXISTS `mt_minimum_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_minimum_table` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `distance_from` float(14,4) NOT NULL DEFAULT '0.0000',
  `distance_to` float(14,4) NOT NULL DEFAULT '0.0000',
  `shipping_units` varchar(5) NOT NULL DEFAULT '',
  `min_order` float(14,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `merchant_id` (`merchant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_minimum_table`
--

LOCK TABLES `mt_minimum_table` WRITE;
/*!40000 ALTER TABLE `mt_minimum_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_minimum_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_mobile_broadcast`
--

DROP TABLE IF EXISTS `mt_mobile_broadcast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_mobile_broadcast` (
  `broadcast_id` int(14) NOT NULL AUTO_INCREMENT,
  `push_title` varchar(255) NOT NULL DEFAULT '',
  `push_message` varchar(255) NOT NULL DEFAULT '',
  `device_platform` int(14) NOT NULL DEFAULT '1',
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`broadcast_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_mobile_broadcast`
--

LOCK TABLES `mt_mobile_broadcast` WRITE;
/*!40000 ALTER TABLE `mt_mobile_broadcast` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_mobile_broadcast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_newsletter`
--

DROP TABLE IF EXISTS `mt_newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_newsletter` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `email_address` (`email_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_newsletter`
--

LOCK TABLES `mt_newsletter` WRITE;
/*!40000 ALTER TABLE `mt_newsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_offers`
--

DROP TABLE IF EXISTS `mt_offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_offers` (
  `offers_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `offer_percentage` float(14,4) NOT NULL DEFAULT '0.0000',
  `offer_price` float(14,4) NOT NULL DEFAULT '0.0000',
  `valid_from` date DEFAULT NULL,
  `valid_to` date DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `applicable_to` varchar(100) NOT NULL DEFAULT 'all',
  PRIMARY KEY (`offers_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_offers`
--

LOCK TABLES `mt_offers` WRITE;
/*!40000 ALTER TABLE `mt_offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_option`
--

DROP TABLE IF EXISTS `mt_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_option` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `option_name` varchar(255) NOT NULL DEFAULT '',
  `option_value` text,
  PRIMARY KEY (`id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=472 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_option`
--

LOCK TABLES `mt_option` WRITE;
/*!40000 ALTER TABLE `mt_option` DISABLE KEYS */;
INSERT INTO `mt_option` VALUES (1,0,'website_title','yemek siparişi'),(2,0,'website_address','Atatürk mahallesi Ataşehir Bulvarı  No 23'),(3,0,'admin_country_set','TR'),(4,0,'website_contact_phone','05349284299'),(5,0,'website_contact_email','AUD'),(6,0,'contact_us_tpl_subject_en','contact us form'),(7,0,'contact_us_tpl_content_en','hi admin \n\nnew contact us\nname : [name] \nemail : [email]  \ncountry : [country] \nphone : [phone] \nmessage : [message] \n\nRegards \n- [sitename]'),(8,0,'contact_us_email','1'),(9,0,'customer_welcome_email_tpl_subject_en','Welcome [firstname]'),(10,0,'customer_welcome_email_tpl_content_en','hi [firstname]\n\nthank you for signup \n\nRegards\n- [sitename]'),(11,0,'customer_welcome_email_email','1'),(12,0,'customer_forgot_password_tpl_subject_en','Forgot password'),(13,0,'customer_forgot_password_tpl_content_en','Hi [firstname]\n\nYou have requested for your password\nclick in the link to change your password\n[change_pass_link]\n\nRegards\n - [sitename]'),(14,0,'customer_forgot_password_email','1'),(15,0,'customer_verification_code_email_tpl_subject_en','Signup Verification Code'),(16,0,'customer_verification_code_email_tpl_content_en','hi [firstname]\n\nYour signup verification is [code]\n\nRegards\n- [sitename]'),(17,0,'customer_verification_code_email_email','1'),(18,0,'merchant_verification_code_tpl_subject_en','Your Activation Code'),(19,0,'merchant_verification_code_tpl_content_en','hi [restaurant_name]\n\nYour activation code is [code]\n\nRegards\n  - [sitename]'),(20,0,'merchant_verification_code_email','1'),(21,0,'merchant_forgot_password_tpl_subject_en','Merchant Forgot Password'),(22,0,'merchant_forgot_password_tpl_content_en','hi [restaurant_name]\n\nYour Your verification code is  [code]\n\nRegards\n - [sitename]'),(23,0,'merchant_forgot_password_email','1'),(24,0,'admin_forgot_password_tpl_subject_en','Admin Change Password'),(25,0,'admin_forgot_password_tpl_content_en','hi admin\n\nYour password has been reset to : [newpassword]\n\nRegards\n- [sitename]'),(26,0,'admin_forgot_password_email','1'),(27,0,'merchant_new_signup_tpl_subject_en','New Restaurant Signup - [restaurant_name]'),(28,0,'merchant_new_signup_tpl_content_en','hi admin\n\nNew restaurant signup \nname : [restaurant_name]\npackage : [package_name]\ntype : [merchant_type]\n\nregard'),(29,0,'merchant_new_signup_sms_content_en','New Restaurant Signup name : [restaurant_name]\npackage : [package_name]\ntype : [merchant_type] '),(30,0,'receipt_template_tpl_subject_en','Your Receipt for Order ID : [order_id]'),(31,0,'receipt_template_tpl_content_en','Dear [customer_name],\n\n\nThank you for shopping at [sitename]. We hope you enjoy your new purchase! Your order number is [order_id]. We have included your order receipt and delivery details below:\n\n[receipt]\n\nKind Regards'),(32,0,'receipt_template_sms_content_en','Hi [customer_name] \nWe have receive your order,\nDetails:\nOrder ID : [order_id]\nRestaurant : [restaurant_name]\nTotal Amount : [total_amount]\nOrder Details : \n[order_details]\n\nRegards\n[sitename]\n'),(33,0,'receipt_template_email','1'),(34,0,'receipt_template_sms','1'),(35,0,'receipt_send_to_merchant_tpl_subject_en','New Order : [order_id] From [customer_name]'),(36,0,'receipt_send_to_merchant_tpl_content_en','hi [restaurant_name],\n\nThere is a new order with the reference number [order_id] from customer [customer_name]\n\n[receipt]\n\nAccept Order\n[accept_link]\n\nDecline Order\n[decline_link]\n\nKind Regards'),(37,0,'receipt_send_to_merchant_sms_content_en','New Order : [order_id] From [customer_name]\ntotal amout : [total_amount]\ndetails : \n[order_details]\n'),(38,0,'receipt_send_to_merchant_email','1'),(39,0,'receipt_send_to_admin_email','1'),(40,0,'receipt_send_to_admin_tpl_subject_en','New Order : [order_id] From [customer_name]'),(41,0,'receipt_send_to_admin_tpl_content_en','hi admin,\n\nThere is a new order to [restaurant_name]\nwith the reference number [order_id] from customer [customer_name]\n\n[receipt]\n\nAccept Order\n[accept_link]\n\nDecline Order\n[decline_link]\n\nKind Regards'),(42,0,'receipt_send_to_admin_sms_content_en','New Order : [order_id] From [customer_name]\ntotal amout : [total_amount]\ndetails : [order_details]'),(43,0,'offline_bank_deposit_tpl_subject_en','Bank deposit instructions'),(44,0,'offline_bank_deposit_tpl_content_en','Hi [restaurant_name]\n\nDeposit Instructions\n\nPlease deposit [amount] to :\n\nBank : Your bank name\nAccount Number : Your bank account number\nAccount Name : Your bank account name\n\nWhen deposit is completed \nfill in your bank deposit information \n[verify_payment_link]\n\n\nKind Regards\n  -[sitename]'),(45,0,'offline_bank_deposit_signup_merchant_tpl_subject_en','Bank deposit instructions'),(46,0,'offline_bank_deposit_signup_merchant_tpl_content_en','Hi [restaurant_name]\n\nDeposit Instructions\n\nPlease deposit [amount] to :\n\nBank : Your bank name\nAccount Number : Your bank account number\nAccount Name : Your bank account name\n\nWhen deposit is completed \nfill in your bank deposit information \n[verify_payment_link]\n\n\nKind Regards\n  -[sitename]'),(47,0,'offline_bank_deposit_signup_merchant_email','1'),(48,0,'offline_bank_deposit_purchase_email','1'),(49,0,'offline_bank_deposit_purchase_tpl_subject_en','Bank deposit instructions for order id : [order_id]'),(50,0,'offline_bank_deposit_purchase_tpl_content_en','Hi [customer_name]\n\nDeposit Instructions\n\nPlease deposit [amount] to :\n\nBank : Your bank name\nAccount Number : Your bank account number\nAccount Name : Your bank account name\n\nWhen deposit is completed \nfill in your bank deposit information \n[verify_payment_link]\n\n\nKind Regards\n  -[sitename]'),(51,0,'merchant_near_expiration_email','1'),(52,0,'merchant_near_expiration_sms','1'),(53,0,'merchant_near_expiration_tpl_subject_en','Your membership about to expired'),(54,0,'merchant_near_expiration_tpl_content_en','hi [restaurant_name]\n\n Your membership is about to expire in [expiration_date]\n\nRegards\n - [sitename]'),(55,0,'merchant_near_expiration_sms_content_en','hi [restaurant_name]\n Your membership is about to expire in [expiration_date]\nRegards\n - [sitename]'),(56,0,'merchant_near_expiration_day','5'),(57,0,'merchant_change_status_email','1'),(58,0,'merchant_change_status_tpl_subject_en','Account Status Updated'),(59,0,'merchant_change_status_tpl_content_en','hi [restaurant_name]\n\nYour merchant records status has change to [status]\n\nRegards\n - [sitename]'),(60,0,'merchant_change_status_sms_content_en','hi [restaurant_name]\n\nYour merchant records status has change to [status]\n\nRegards\n - [sitename]'),(61,0,'customer_booked_email','1'),(62,0,'customer_booked_tpl_subject_en','We have receive your Booking'),(63,0,'customer_booked_tpl_content_en','Hi [customer_name]\n\nwe have receive your booking \nfor restaurant [restaurant_name]\nwith the following information\n\nNumber of guest : [number_guest]\nDate of Booking : [date_booking]\nTime : [time]\nEmail address : [email]\nMobile  : [mobile]\nSpecial instruction : [instruction]\n\nYour booking id : [booking_id]\n\nPlease wait for the merchant to accept your booking.\nyou will receive another email for confirmation from the merchant\n\nRegards\n - [sitename]'),(64,0,'booked_notify_admin_email','1'),(65,0,'booked_notify_admin_tpl_subject_en','New booking from [restaurant_name]'),(66,0,'booked_notify_admin_tpl_content_en','hi admin\n\nthere is new booking from [restaurant_name]\nwith the following information\n\nBooking ID : [booking_id]\nName : [customer_name]\nNumber of guest : [number_guest]\nDate of Booking : [date_booking]\nTime : [time]\nEmail address : [email]\nMobile  : [mobile]\nSpecial instruction : [instruction]\n'),(67,0,'booked_notify_merchant_tpl_subject_en','New booking from [customer_name]'),(68,0,'booked_notify_merchant_tpl_content_en','hi [restaurant_name]\n\nthere is new booking from [customer_name]\nwith the following information\n\nBooking ID : [booking_id]\nName : [customer_name]\nNumber of guest : [number_guest]\nDate of Booking : [date_booking]\nTime : [time]\nEmail address : [email]\nMobile  : [mobile]\nSpecial instruction : [instruction]\n\n'),(69,0,'booking_update_status_tpl_subject_en','Update with your booking id [booking_id]'),(70,0,'booking_update_status_tpl_content_en','Hi [customer_name]\n\nYour booking id [booking_id]\nstatus updated to [status]\n\nmerchant remarks :\n[merchant_remarks]\n\nRegards\n - [sitename]'),(71,0,'merchant_welcome_signup_email','1'),(72,0,'merchant_welcome_signup_tpl_subject_en','Welcome [restaurant_name]'),(73,0,'merchant_welcome_signup_tpl_content_en','hi  [restaurant_name]\n\nThank you for joining us!\n\nLogin here\n[login_url]\n\nRegards\n - [sitename]'),(74,0,'order_idle_to_merchant_tpl_subject_en','Order ID [order_id] has been IDLE for [idle_time]'),(75,0,'order_idle_to_merchant_tpl_content_en','hi [restaurant_name]\n\nKindly take  action on Order ID : [order_Id]\n\nRegards\n- [sitename]'),(76,0,'order_idle_to_merchant_sms_content_en','hi [restaurant_name]\n\nKindly take action on Order ID : [order_Id]\n\nRegards\n- [sitename]'),(77,0,'order_idle_to_admin_tpl_subject_en','Order ID [order_id] has been IDLE for [idle_time]'),(78,0,'order_idle_to_admin_tpl_content_en','hi admin\n\nKindly take action on Order ID : [order_id]\n\nRegards\n- [sitename]'),(79,0,'order_idle_to_admin_sms_content_en','hi admin\n\nKindly take action on Order ID : [order_Id]\n\nRegards\n- [sitename]'),(80,0,'merchant_invoice_email','1'),(81,0,'merchant_invoice_tpl_subject_en','Your new Invoice : [invoice_number]'),(82,0,'merchant_invoice_tpl_content_en','hi [restaurant_name]\n\nyour invoice is now ready\nInvoice number : [invoice_number]\nTerms : [terms]\nPeriod : [period]\n\nYou can donwload your invoice below\n[invoice_link]\n\nRegards\n - [sitename]'),(83,0,'admin_decimal_place','2'),(84,0,'installation_done','1'),(85,0,'admin_enabled_iyzipay','yes'),(86,0,'admin_iyzipay_mode','sandbox'),(87,0,'admin_iyzipay_form_style','responsive'),(88,0,'admin_sanbox_iyzipay_api_key','sandbox-FWoqmTsFfVA81upFUP1ZfgBHJAQIindV'),(89,0,'admin_sanbox_iyzipay_secret_key','sandbox-6kqsL6Zv9LU2RzqdlVxoqKopymlmwU9G'),(90,0,'iyzipay_submerchant_key','5ti9uO2oRSkxg5Ovswxkj58o/HQ='),(91,0,'paymentgateway','[\\\"pyp\\\",\\\"stp\\\",\\\"mcd\\\",\\\"ide\\\",\\\"payu\\\",\\\"pys\\\",\\\"iyzipay\\\"]'),(92,0,'website_disbaled_auto_cart',''),(93,0,'website_enabled_mobile_verification',''),(94,0,'website_date_picker_format','yy-mm-dd'),(95,0,'website_time_picker_format','24'),(96,0,'website_date_format',''),(97,0,'website_time_format',''),(98,0,'merchant_sigup_status','pending'),(99,0,'merchant_email_verification',''),(100,0,'merchant_payment_enabled',''),(101,0,'admin_enabled_paypal',''),(102,0,'admin_enabled_card',''),(103,0,'admin_currency_set','TRY'),(104,0,'home_search_text',''),(105,0,'home_search_subtext',''),(106,0,'home_search_mode',''),(107,0,'website_logo',''),(108,0,'admin_use_separators',''),(109,0,'google_auto_address',''),(110,0,'home_search_radius',''),(111,0,'home_search_unit_type','mi'),(112,0,'google_default_country',''),(113,0,'enabled_advance_search',''),(114,0,'disabled_share_location',''),(115,0,'enabled_search_map',''),(116,0,'admin_currency_position','left'),(117,0,'merchant_default_country','AF'),(118,0,'merchant_specific_country',''),(119,0,'map_marker',''),(120,0,'global_admin_sender_email',''),(121,0,'merchant_disabled_registration',''),(122,0,'disabled_subscription',''),(123,0,'disabled_featured_merchant',''),(124,0,'merchant_days_can_edit_status',''),(125,0,'disabled_website_ordering',''),(126,0,'admin_activated_menu',''),(127,0,'website_hide_foodprice',''),(128,0,'disabled_cc_management',''),(129,0,'merchant_reg_abn',''),(130,0,'spicydish',''),(131,0,'website_timezone',''),(132,0,'website_admin_mutiple_login',''),(133,0,'website_merchant_mutiple_login',''),(134,0,'website_disabled_guest_checkout',''),(135,0,'website_reviews_actual_purchase',''),(136,0,'website_terms_merchant',''),(137,0,'website_terms_merchant_url',''),(138,0,'website_terms_customer',''),(139,0,'website_terms_customer_url',''),(140,0,'admin_thousand_separator',''),(141,0,'admin_decimal_separator',''),(142,0,'website_disabled_login_popup',''),(143,0,'merchant_can_edit_reviews',''),(144,0,'website_enabled_rcpt',''),(145,0,'website_receipt_logo',''),(146,0,'disabled_cart_sticky',''),(147,0,'search_result_bydistance',''),(148,0,'google_geo_api_key',''),(149,0,'website_enabled_map_address',''),(150,0,'client_custom_field_name1',''),(151,0,'client_custom_field_name2',''),(152,0,'merchant_days_can_edit_status_basedon','1'),(153,0,'merchant_status_disabled',''),(154,0,'view_map_disabled',''),(155,0,'view_map_default_zoom',''),(156,0,'view_map_default_zoom_s',''),(157,0,'receipt_default_subject',''),(158,0,'merchant_tbl_book_disabled',''),(159,0,'merchant_changeorder_sms',''),(160,0,'customer_ask_address',''),(161,0,'captcha_site_key',''),(162,0,'captcha_secret',''),(163,0,'captcha_lang',''),(164,0,'captcha_customer_signup',''),(165,0,'captcha_merchant_signup',''),(166,0,'captcha_customer_login',''),(167,0,'captcha_merchant_login',''),(168,0,'captcha_admin_login',''),(169,0,'captcha_order',''),(170,0,'blocked_email_add',''),(171,0,'blocked_mobile',''),(172,0,'admin_zipcode_searchtype','1'),(173,0,'mobilelogo',''),(174,0,'theme_enabled_email_verification',''),(175,0,'google_distance_method','straight_line'),(176,0,'google_use_curl',''),(177,0,'admin_menu_allowed_merchant',''),(178,0,'admin_printing_receipt_width',''),(179,0,'admin_printing_receipt_size',''),(180,0,'enabled_merchant_check_closing_time',''),(181,0,'admin_add_space_between_price',''),(182,0,'enabled_food_search_menu',''),(183,0,'location_default_country','1'),(184,0,'cod_change_required',''),(185,0,'website_disabled_cart_validation','1'),(186,0,'cancel_order_days_applied',''),(187,0,'cancel_order_status_accepted','1'),(188,0,'cancel_order_enabled',''),(189,0,'website_review_type','1'),(190,0,'review_baseon_status','1'),(191,0,'website_use_date_picker','1'),(192,0,'website_use_time_picker','1'),(193,0,'website_time_picker_interval',''),(194,0,'mapbox_access_token',''),(195,0,'map_provider','google.maps'),(196,0,'mapbox_default_zoom',''),(197,0,'earn_points_review_status','1'),(198,0,'earn_points_booking_status','1'),(199,0,'website_review_approved_status','pending'),(200,0,'cancel_order_hours','0'),(201,0,'cancel_order_minutes','0'),(202,0,'website_review_decline_status',''),(203,0,'publish_review_status','1'),(204,0,'book_table_earn_status','1'),(205,0,'pre_configure_size',''),(206,0,'enabled_map_selection_delivery',''),(207,0,'disabled_order_confirm_page',''),(208,0,'review_merchant_can_add_review_status',''),(209,1,'merchant_switch_master_cod',''),(210,1,'merchant_switch_master_ccr',''),(211,1,'merchant_switch_master_pyr',''),(212,1,'merchant_latitude',''),(213,1,'merchant_longtitude',''),(214,1,'merchant_master_table_boooking',''),(215,1,'disabled_single_app_modules',''),(216,1,'merchant_master_disabled_ordering',''),(217,1,'merchant_switch_master_ocr',''),(218,1,'merchant_switch_master_pyp',''),(219,1,'merchant_switch_master_paypal_v2',''),(220,1,'merchant_switch_master_stp',''),(221,1,'merchant_switch_master_mcd',''),(222,1,'merchant_switch_master_mercadopago',''),(223,1,'merchant_switch_master_ide',''),(224,1,'merchant_switch_master_payu',''),(225,1,'merchant_switch_master_pys',''),(226,1,'merchant_switch_master_bcy',''),(227,1,'merchant_switch_master_epy',''),(228,1,'merchant_switch_master_atz',''),(229,1,'merchant_switch_master_obd',''),(230,1,'merchant_switch_master_btr',''),(231,1,'merchant_switch_master_rzr',''),(232,1,'merchant_switch_master_vog',''),(233,1,'merchant_switch_master_iyzipay',''),(234,0,'admin_commission_enabled','yes'),(235,0,'admin_disabled_membership',''),(236,0,'admin_commision_percent','5'),(237,0,'admin_vat_no',''),(238,0,'admin_vat_percent',''),(239,0,'total_commission_status','[\\\"paid\\\"]'),(240,0,'admin_commision_ontop',''),(241,0,'admin_commision_type','percentage'),(242,0,'admin_include_merchant_cod',''),(243,0,'admin_exclude_cod_balance',''),(244,0,'admin_disabled_membership_signup',''),(245,0,'admin_bank_account_name',''),(246,0,'admin_bank_account_number',''),(247,0,'admin_bank_custom_tpl',''),(248,0,'admin_bank_deposited_timeframe',''),(249,4,'merchant_switch_master_cod',''),(250,4,'merchant_switch_master_ccr',''),(251,4,'merchant_switch_master_pyr',''),(252,4,'merchant_latitude','41.0403285'),(253,4,'merchant_longtitude','28.872192199999972'),(254,4,'merchant_master_table_boooking',''),(255,4,'disabled_single_app_modules',''),(256,4,'merchant_master_disabled_ordering',''),(257,4,'merchant_switch_master_ocr',''),(258,4,'merchant_switch_master_pyp',''),(259,4,'merchant_switch_master_paypal_v2',''),(260,4,'merchant_switch_master_stp',''),(261,4,'merchant_switch_master_mcd',''),(262,4,'merchant_switch_master_mercadopago',''),(263,4,'merchant_switch_master_ide',''),(264,4,'merchant_switch_master_payu',''),(265,4,'merchant_switch_master_pys',''),(266,4,'merchant_switch_master_bcy',''),(267,4,'merchant_switch_master_epy',''),(268,4,'merchant_switch_master_atz',''),(269,4,'merchant_switch_master_obd',''),(270,4,'merchant_switch_master_btr',''),(271,4,'merchant_switch_master_rzr',''),(272,4,'merchant_switch_master_vog',''),(273,4,'merchant_switch_master_iyzipay',''),(274,4,'merchant_minimum_order',''),(275,4,'merchant_tax',''),(276,4,'merchant_delivery_charges',''),(277,4,'stores_open_day',''),(278,4,'stores_open_starts','{\\\"monday\\\":\\\"\\\",\\\"tuesday\\\":\\\"\\\",\\\"wednesday\\\":\\\"\\\",\\\"thursday\\\":\\\"\\\",\\\"friday\\\":\\\"\\\",\\\"saturday\\\":\\\"\\\",\\\"sunday\\\":\\\"\\\"}'),(279,4,'stores_open_ends','{\\\"monday\\\":\\\"\\\",\\\"tuesday\\\":\\\"\\\",\\\"wednesday\\\":\\\"\\\",\\\"thursday\\\":\\\"\\\",\\\"friday\\\":\\\"\\\",\\\"saturday\\\":\\\"\\\",\\\"sunday\\\":\\\"\\\"}'),(280,4,'stores_open_custom_text','{\\\"monday\\\":\\\"\\\",\\\"tuesday\\\":\\\"\\\",\\\"wednesday\\\":\\\"\\\",\\\"thursday\\\":\\\"\\\",\\\"friday\\\":\\\"\\\",\\\"saturday\\\":\\\"\\\",\\\"sunday\\\":\\\"\\\"}'),(281,4,'merchant_photo','1579684334-bagel-3032345_1280.jpg'),(282,4,'merchant_delivery_estimation',''),(283,4,'merchant_delivery_miles',''),(284,4,'merchant_photo_bg','1579684340-brownie-3042106_1280.jpg'),(285,4,'merchant_disabled_cod',''),(286,4,'merchant_disabled_ccr',''),(287,4,'merchant_extenal',''),(288,4,'merchant_enabled_voucher',''),(289,4,'merchant_distance_type','mi'),(290,4,'merchant_timezone',''),(291,4,'merchant_close_msg',''),(292,4,'merchant_preorder',''),(293,4,'merchant_maximum_order',''),(294,4,'merchant_packaging_charge',''),(295,4,'merchant_close_msg_holiday',''),(296,4,'merchant_holiday','[\\\"\\\"]'),(297,4,'merchant_activated_menu',''),(298,4,'spicydish',''),(299,4,'merchant_required_delivery_time',''),(300,4,'merchant_close_store',''),(301,4,'merchant_packaging_increment',''),(302,4,'merchant_show_time',''),(303,4,'merchant_enabled_tip',''),(304,4,'merchant_tip_default',''),(305,4,'merchant_minimum_order_pickup',''),(306,4,'merchant_maximum_order_pickup',''),(307,4,'merchant_disabled_ordering',''),(308,4,'merchant_tax_charges',''),(309,4,'stores_open_pm_start','{\\\"monday\\\":\\\"\\\",\\\"tuesday\\\":\\\"\\\",\\\"wednesday\\\":\\\"\\\",\\\"thursday\\\":\\\"\\\",\\\"friday\\\":\\\"\\\",\\\"saturday\\\":\\\"\\\",\\\"sunday\\\":\\\"\\\"}'),(310,4,'stores_open_pm_ends','{\\\"monday\\\":\\\"\\\",\\\"tuesday\\\":\\\"\\\",\\\"wednesday\\\":\\\"\\\",\\\"thursday\\\":\\\"\\\",\\\"friday\\\":\\\"\\\",\\\"saturday\\\":\\\"\\\",\\\"sunday\\\":\\\"\\\"}'),(311,4,'food_option_not_available',''),(312,4,'order_verification',''),(313,4,'order_sms_code_waiting',''),(314,4,'disabled_food_gallery',''),(315,4,'merchant_apply_tax',''),(316,4,'printing_receipt_width',''),(317,4,'printing_receipt_size',''),(318,4,'free_delivery_above_price',''),(319,4,'merchant_minimum_order_dinein',''),(320,4,'merchant_maximum_order_dinein',''),(321,4,'food_viewing_private',''),(322,4,'merchant_tax_number',''),(323,4,'merchant_packaging_wise',''),(324,4,'merchant_show_category_image',''),(325,4,'merchant_two_flavor_option','1'),(326,1,'merchant_minimum_order',''),(327,1,'merchant_tax',''),(328,1,'merchant_delivery_charges',''),(329,1,'stores_open_day',''),(330,1,'stores_open_starts','{\\\"monday\\\":\\\"\\\",\\\"tuesday\\\":\\\"\\\",\\\"wednesday\\\":\\\"\\\",\\\"thursday\\\":\\\"\\\",\\\"friday\\\":\\\"\\\",\\\"saturday\\\":\\\"\\\",\\\"sunday\\\":\\\"\\\"}'),(331,1,'stores_open_ends','{\\\"monday\\\":\\\"\\\",\\\"tuesday\\\":\\\"\\\",\\\"wednesday\\\":\\\"\\\",\\\"thursday\\\":\\\"\\\",\\\"friday\\\":\\\"\\\",\\\"saturday\\\":\\\"\\\",\\\"sunday\\\":\\\"\\\"}'),(332,1,'stores_open_custom_text','{\\\"monday\\\":\\\"\\\",\\\"tuesday\\\":\\\"\\\",\\\"wednesday\\\":\\\"\\\",\\\"thursday\\\":\\\"\\\",\\\"friday\\\":\\\"\\\",\\\"saturday\\\":\\\"\\\",\\\"sunday\\\":\\\"\\\"}'),(333,1,'merchant_photo','1579684376-logo1.jpg'),(334,1,'merchant_delivery_estimation',''),(335,1,'merchant_delivery_miles',''),(336,1,'merchant_photo_bg','1579684387-salad-2358532_1280.jpg'),(337,1,'merchant_disabled_cod',''),(338,1,'merchant_disabled_ccr',''),(339,1,'merchant_extenal',''),(340,1,'merchant_enabled_voucher',''),(341,1,'merchant_distance_type','mi'),(342,1,'merchant_timezone',''),(343,1,'merchant_close_msg',''),(344,1,'merchant_preorder',''),(345,1,'merchant_maximum_order',''),(346,1,'merchant_packaging_charge',''),(347,1,'merchant_close_msg_holiday',''),(348,1,'merchant_holiday','[\\\"\\\"]'),(349,1,'merchant_activated_menu',''),(350,1,'spicydish',''),(351,1,'merchant_required_delivery_time',''),(352,1,'merchant_close_store',''),(353,1,'merchant_packaging_increment',''),(354,1,'merchant_show_time',''),(355,1,'merchant_enabled_tip',''),(356,1,'merchant_tip_default',''),(357,1,'merchant_minimum_order_pickup',''),(358,1,'merchant_maximum_order_pickup',''),(359,1,'merchant_disabled_ordering',''),(360,1,'merchant_tax_charges',''),(361,1,'stores_open_pm_start','{\\\"monday\\\":\\\"\\\",\\\"tuesday\\\":\\\"\\\",\\\"wednesday\\\":\\\"\\\",\\\"thursday\\\":\\\"\\\",\\\"friday\\\":\\\"\\\",\\\"saturday\\\":\\\"\\\",\\\"sunday\\\":\\\"\\\"}'),(362,1,'stores_open_pm_ends','{\\\"monday\\\":\\\"\\\",\\\"tuesday\\\":\\\"\\\",\\\"wednesday\\\":\\\"\\\",\\\"thursday\\\":\\\"\\\",\\\"friday\\\":\\\"\\\",\\\"saturday\\\":\\\"\\\",\\\"sunday\\\":\\\"\\\"}'),(363,1,'food_option_not_available',''),(364,1,'order_verification',''),(365,1,'order_sms_code_waiting',''),(366,1,'disabled_food_gallery',''),(367,1,'merchant_apply_tax',''),(368,1,'printing_receipt_width',''),(369,1,'printing_receipt_size',''),(370,1,'free_delivery_above_price',''),(371,1,'merchant_minimum_order_dinein',''),(372,1,'merchant_maximum_order_dinein',''),(373,1,'food_viewing_private',''),(374,1,'merchant_tax_number',''),(375,1,'merchant_packaging_wise',''),(376,1,'merchant_show_category_image',''),(377,1,'merchant_two_flavor_option','1'),(378,3,'merchant_switch_master_cod',''),(379,3,'merchant_switch_master_ccr',''),(380,3,'merchant_switch_master_pyr',''),(381,3,'merchant_latitude',''),(382,3,'merchant_longtitude',''),(383,3,'merchant_master_table_boooking',''),(384,3,'disabled_single_app_modules',''),(385,3,'merchant_master_disabled_ordering',''),(386,3,'merchant_switch_master_ocr',''),(387,3,'merchant_switch_master_pyp',''),(388,3,'merchant_switch_master_paypal_v2',''),(389,3,'merchant_switch_master_stp',''),(390,3,'merchant_switch_master_mcd',''),(391,3,'merchant_switch_master_mercadopago',''),(392,3,'merchant_switch_master_ide',''),(393,3,'merchant_switch_master_payu',''),(394,3,'merchant_switch_master_pys',''),(395,3,'merchant_switch_master_bcy',''),(396,3,'merchant_switch_master_epy',''),(397,3,'merchant_switch_master_atz',''),(398,3,'merchant_switch_master_obd',''),(399,3,'merchant_switch_master_btr',''),(400,3,'merchant_switch_master_rzr',''),(401,3,'merchant_switch_master_vog',''),(402,3,'merchant_switch_master_iyzipay',''),(403,0,'sms_sender_id',''),(404,0,'sms_account_id',''),(405,0,'sms_token',''),(406,0,'mechant_sms_enabled',''),(407,0,'sms_provider','netgsm'),(408,0,'nexmo_sender_id',''),(409,0,'nexmo_key',''),(410,0,'nexmo_secret',''),(411,0,'nexmo_use_curl',''),(412,0,'privatesms_username',''),(413,0,'privatesms_password',''),(414,0,'privatesms_sender',''),(415,0,'clickatel_user',''),(416,0,'clickatel_password',''),(417,0,'clickatel_api_id',''),(418,0,'clickatel_use_curl',''),(419,0,'nexmo_use_unicode',''),(420,0,'clickatel_use_unicode',''),(421,0,'clickatel_sender',''),(422,0,'mechant_sms_purchase_disabled',''),(423,0,'bhashsms_user',''),(424,0,'bhashsms_pass',''),(425,0,'bhashsms_senderid',''),(426,0,'bhashsms_smstype','normal'),(427,0,'bhashsms_priority','ndnd'),(428,0,'bhashsms_use_curl',''),(429,0,'smsglobal_senderid',''),(430,0,'smsglobal_username',''),(431,0,'smsglobal_password',''),(432,0,'swift_accountkey',''),(433,0,'swift_usecurl',''),(434,0,'solutionsinfini_apikey',''),(435,0,'solutionsinfini_usecurl',''),(436,0,'solutionsinfini_useunicode',''),(437,0,'solutionsinfini_sender',''),(438,0,'plivo_auth_id',''),(439,0,'plivo_auth_token',''),(440,0,'plivo_sender_number',''),(441,0,'msg91_authkey',''),(442,0,'msg91_senderid',''),(443,0,'msg91_unicode',''),(444,0,'msg91_route','default'),(445,0,'spothit_apikey',''),(446,0,'spothit_sms_type','premium'),(447,0,'spothit_sender',''),(448,0,'spothit_truncated',''),(449,0,'spothit_use_curl',''),(450,0,'libonet_username',''),(451,0,'libonet_password',''),(452,0,'libonet_sender',''),(453,0,'libonet_use_unicode',''),(454,0,'libonet_use_curl',''),(455,0,'hubtel_username',''),(456,0,'hubtel_password',''),(457,0,'hubtel_sender',''),(458,0,'hubtel_flashmessage',''),(459,0,'infobip_username',''),(460,0,'infobip_password',''),(461,0,'infobip_senderid',''),(462,0,'infobip_use_curl',''),(463,0,'infobip_use_unicode',''),(464,0,'clickatel_api_key',''),(465,0,'gramma_apikey',''),(466,0,'gramma_senderid',''),(467,0,'gramma_sending_type',''),(468,0,'gramma_use_curl',''),(469,0,'netgsm_user','ZZZZ'),(470,0,'netgsm_password','ZZZZ'),(471,0,'netgsm_header','ZZZ');
/*!40000 ALTER TABLE `mt_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_order`
--

DROP TABLE IF EXISTS `mt_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_order` (
  `order_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `client_id` int(14) NOT NULL DEFAULT '0',
  `json_details` text,
  `trans_type` varchar(100) NOT NULL DEFAULT '',
  `payment_type` varchar(100) NOT NULL DEFAULT '',
  `sub_total` float(14,4) NOT NULL DEFAULT '0.0000',
  `tax` float(14,4) NOT NULL DEFAULT '0.0000',
  `taxable_total` decimal(14,4) NOT NULL,
  `total_w_tax` float(14,4) NOT NULL DEFAULT '0.0000',
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `stats_id` int(14) NOT NULL DEFAULT '0',
  `viewed` int(1) NOT NULL DEFAULT '1',
  `delivery_charge` float(14,4) NOT NULL DEFAULT '0.0000',
  `delivery_date` date DEFAULT NULL,
  `delivery_time` varchar(100) NOT NULL DEFAULT '',
  `delivery_asap` varchar(14) NOT NULL DEFAULT '',
  `delivery_instruction` varchar(255) NOT NULL DEFAULT '',
  `voucher_code` varchar(100) NOT NULL DEFAULT '',
  `voucher_amount` float(14,4) NOT NULL DEFAULT '0.0000',
  `voucher_type` varchar(100) NOT NULL DEFAULT '',
  `cc_id` int(14) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `order_change` float(14,4) NOT NULL DEFAULT '0.0000',
  `payment_provider_name` varchar(255) NOT NULL DEFAULT '',
  `discounted_amount` float(14,5) NOT NULL DEFAULT '0.00000',
  `discount_percentage` float(14,5) NOT NULL DEFAULT '0.00000',
  `percent_commision` float(14,4) NOT NULL DEFAULT '0.0000',
  `total_commission` float(14,4) NOT NULL DEFAULT '0.0000',
  `commision_ontop` int(2) NOT NULL DEFAULT '2',
  `merchant_earnings` float(14,4) NOT NULL DEFAULT '0.0000',
  `packaging` float(14,4) NOT NULL DEFAULT '0.0000',
  `cart_tip_percentage` float(14,4) NOT NULL DEFAULT '0.0000',
  `cart_tip_value` float(14,4) NOT NULL DEFAULT '0.0000',
  `card_fee` float(14,4) NOT NULL DEFAULT '0.0000',
  `donot_apply_tax_delivery` int(1) NOT NULL DEFAULT '1',
  `order_locked` int(1) NOT NULL DEFAULT '1',
  `request_from` varchar(10) NOT NULL DEFAULT 'web',
  `mobile_cart_details` text,
  `points_discount` float(14,4) NOT NULL DEFAULT '0.0000',
  `apply_food_tax` int(1) NOT NULL DEFAULT '0',
  `order_id_token` varchar(100) NOT NULL DEFAULT '',
  `admin_viewed` int(1) NOT NULL DEFAULT '0',
  `merchantapp_viewed` int(1) NOT NULL DEFAULT '0',
  `dinein_number_of_guest` varchar(14) NOT NULL DEFAULT '',
  `dinein_special_instruction` varchar(255) NOT NULL DEFAULT '',
  `critical` int(1) NOT NULL DEFAULT '1',
  `commision_type` varchar(50) NOT NULL DEFAULT 'percentage',
  `calculation_method` int(1) NOT NULL DEFAULT '1',
  `request_cancel` int(1) NOT NULL DEFAULT '2',
  `request_cancel_viewed` int(1) NOT NULL DEFAULT '2',
  `request_cancel_status` varchar(255) NOT NULL DEFAULT 'pending',
  `sofort_trans_id` varchar(255) NOT NULL DEFAULT '',
  `dinein_table_number` varchar(50) NOT NULL DEFAULT '',
  `payment_gateway_ref` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`order_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `client_id` (`client_id`),
  KEY `order_id_token` (`order_id_token`),
  KEY `merchantapp_viewed` (`merchantapp_viewed`),
  KEY `admin_viewed` (`admin_viewed`),
  KEY `viewed` (`viewed`),
  KEY `total_commission` (`total_commission`),
  KEY `merchant_earnings` (`merchant_earnings`),
  KEY `total_w_tax` (`total_w_tax`),
  KEY `taxable_total` (`taxable_total`),
  KEY `sub_total` (`sub_total`),
  KEY `payment_type` (`payment_type`),
  KEY `trans_type` (`trans_type`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_order`
--

LOCK TABLES `mt_order` WRITE;
/*!40000 ALTER TABLE `mt_order` DISABLE KEYS */;
INSERT INTO `mt_order` VALUES (1,1,2,'[{\"currentController\":\"store\",\"merchant_id\":\"1\",\"item_id\":\"1\",\"price\":\"30|medium|2\",\"qty\":\"1\",\"discount\":\"\",\"notes\":\"\",\"row\":\"\",\"category_id\":\"1\",\"csrf_token\":\"f32d2991a7ae2f7fbed9e38a821d32f17941cf29\",\"auto_add_cart\":\"1\",\"yii_session_token\":\"gmlo9ft4md53q8liarkgqb3fh6\",\"YII_CSRF_TOKEN\":\"f32d2991a7ae2f7fbed9e38a821d32f17941cf29\",\"two_flavors\":\"\",\"non_taxable\":\"2\",\"sub_item\":\"\"}]','delivery','iyzipay',30.0000,0.0000,0.0000,30.0000,'initial_order',0,1,0.0000,'2020-01-15','20:07','','','',0.0000,'',0,'2020-01-15 12:30:05','0000-00-00 00:00:00','106.77.150.74',0.0000,'',0.00000,0.00000,0.0000,0.0000,2,0.0000,0.0000,0.0000,0.0000,0.0000,1,1,'web',NULL,0.0000,0,'RehpmtORzU',0,0,'','',1,'percentage',1,2,2,'pending','','',''),(2,1,2,'[{\"currentController\":\"store\",\"merchant_id\":\"1\",\"item_id\":\"1\",\"price\":\"30|medium|2\",\"qty\":\"1\",\"discount\":\"\",\"notes\":\"\",\"row\":\"\",\"category_id\":\"1\",\"csrf_token\":\"f32d2991a7ae2f7fbed9e38a821d32f17941cf29\",\"auto_add_cart\":\"1\",\"yii_session_token\":\"gmlo9ft4md53q8liarkgqb3fh6\",\"YII_CSRF_TOKEN\":\"f32d2991a7ae2f7fbed9e38a821d32f17941cf29\",\"two_flavors\":\"\",\"non_taxable\":\"2\",\"sub_item\":\"\"}]','delivery','iyzipay',30.0000,0.0000,0.0000,30.0000,'initial_order',0,1,0.0000,'2020-01-15','20:07','','','',0.0000,'',0,'2020-01-15 13:09:25','0000-00-00 00:00:00','106.77.150.74',0.0000,'',0.00000,0.00000,0.0000,0.0000,2,0.0000,0.0000,0.0000,0.0000,0.0000,1,1,'web',NULL,0.0000,0,'CELJxovYur',0,0,'','',1,'percentage',1,2,2,'pending','','',''),(3,1,2,'[{\"currentController\":\"store\",\"merchant_id\":\"1\",\"item_id\":\"1\",\"price\":\"30|medium|2\",\"qty\":2,\"discount\":\"\",\"notes\":\"\",\"row\":\"\",\"category_id\":\"1\",\"csrf_token\":\"f32d2991a7ae2f7fbed9e38a821d32f17941cf29\",\"auto_add_cart\":\"1\",\"yii_session_token\":\"gmlo9ft4md53q8liarkgqb3fh6\",\"YII_CSRF_TOKEN\":\"f32d2991a7ae2f7fbed9e38a821d32f17941cf29\",\"two_flavors\":\"\",\"non_taxable\":\"2\",\"sub_item\":\"\"}]','delivery','iyzipay',60.0000,0.0000,0.0000,60.0000,'initial_order',0,1,0.0000,'2020-01-15','22:15','','','',0.0000,'',0,'2020-01-15 13:16:00','0000-00-00 00:00:00','106.77.150.74',0.0000,'',0.00000,0.00000,0.0000,0.0000,2,0.0000,0.0000,0.0000,0.0000,0.0000,1,1,'web',NULL,0.0000,0,'pxTdeeIonn',0,0,'','',1,'percentage',1,2,2,'pending','','',''),(4,1,2,'[{\"currentController\":\"store\",\"merchant_id\":\"1\",\"item_id\":\"1\",\"price\":\"30|medium|2\",\"qty\":\"1\",\"discount\":\"\",\"notes\":\"\",\"row\":\"\",\"category_id\":\"1\",\"csrf_token\":\"6392e1d189e47aae44006167667031823e1d59a9\",\"auto_add_cart\":\"1\",\"yii_session_token\":\"lhlk3u7flehcnjvjq40tklagfn\",\"YII_CSRF_TOKEN\":\"6392e1d189e47aae44006167667031823e1d59a9\",\"two_flavors\":\"\",\"non_taxable\":\"2\",\"sub_item\":\"\"}]','delivery','iyzipay',30.0000,0.0000,0.0000,30.0000,'initial_order',0,1,0.0000,'2020-01-16','23:54','','','',0.0000,'',0,'2020-01-16 08:55:58','0000-00-00 00:00:00','106.77.87.1',0.0000,'',0.00000,0.00000,0.0000,0.0000,2,0.0000,0.0000,0.0000,0.0000,0.0000,1,1,'web',NULL,0.0000,0,'y7cKUqLUWe',0,0,'','',1,'percentage',1,2,2,'pending','','',''),(5,1,2,'[{\"currentController\":\"store\",\"merchant_id\":\"1\",\"item_id\":\"1\",\"price\":\"30|medium|2\",\"qty\":2,\"discount\":\"\",\"notes\":\"\",\"row\":\"\",\"category_id\":\"1\",\"csrf_token\":\"6392e1d189e47aae44006167667031823e1d59a9\",\"auto_add_cart\":\"1\",\"yii_session_token\":\"lhlk3u7flehcnjvjq40tklagfn\",\"YII_CSRF_TOKEN\":\"6392e1d189e47aae44006167667031823e1d59a9\",\"two_flavors\":\"\",\"non_taxable\":\"2\",\"sub_item\":\"\"}]','delivery','iyzipay',60.0000,0.0000,0.0000,60.0000,'initial_order',0,1,0.0000,'2020-01-16','09:13 AM','','','',0.0000,'',0,'2020-01-16 09:13:33','0000-00-00 00:00:00','106.77.87.1',0.0000,'',0.00000,0.00000,0.0000,0.0000,2,0.0000,0.0000,0.0000,0.0000,0.0000,1,1,'web',NULL,0.0000,0,'6u3vGxAtLi',0,0,'','',1,'percentage',1,2,2,'pending','','',''),(6,1,2,'[{\"currentController\":\"store\",\"merchant_id\":\"1\",\"item_id\":\"1\",\"price\":\"30|medium|2\",\"qty\":3,\"discount\":\"\",\"notes\":\"\",\"row\":\"\",\"category_id\":\"1\",\"csrf_token\":\"6392e1d189e47aae44006167667031823e1d59a9\",\"auto_add_cart\":\"1\",\"yii_session_token\":\"lhlk3u7flehcnjvjq40tklagfn\",\"YII_CSRF_TOKEN\":\"6392e1d189e47aae44006167667031823e1d59a9\",\"two_flavors\":\"\",\"non_taxable\":\"2\",\"sub_item\":\"\"}]','delivery','iyzipay',90.0000,0.0000,0.0000,90.0000,'initial_order',0,1,0.0000,'2020-01-16','23:41','','','',0.0000,'',0,'2020-01-16 09:42:41','0000-00-00 00:00:00','106.77.80.188',0.0000,'',0.00000,0.00000,0.0000,0.0000,2,0.0000,0.0000,0.0000,0.0000,0.0000,1,1,'web',NULL,0.0000,0,'XRGrD5arq1',0,0,'','',1,'percentage',1,2,2,'pending','','',''),(7,1,2,'[{\"currentController\":\"store\",\"merchant_id\":\"1\",\"item_id\":\"1\",\"price\":\"30|medium|2\",\"qty\":4,\"discount\":\"\",\"notes\":\"\",\"row\":\"\",\"category_id\":\"1\",\"csrf_token\":\"6392e1d189e47aae44006167667031823e1d59a9\",\"auto_add_cart\":\"1\",\"yii_session_token\":\"lhlk3u7flehcnjvjq40tklagfn\",\"YII_CSRF_TOKEN\":\"6392e1d189e47aae44006167667031823e1d59a9\",\"two_flavors\":\"\",\"non_taxable\":\"2\",\"sub_item\":\"\"}]','delivery','iyzipay',120.0000,0.0000,0.0000,120.0000,'initial_order',0,1,0.0000,'2020-01-16','10:45','','','',0.0000,'',0,'2020-01-16 10:41:39','0000-00-00 00:00:00','112.110.78.59',0.0000,'',0.00000,0.00000,0.0000,0.0000,2,0.0000,0.0000,0.0000,0.0000,0.0000,1,1,'web',NULL,0.0000,0,'gHYaRlEm8Z',0,0,'','',1,'percentage',1,2,2,'pending','','',''),(8,1,2,'[{\"currentController\":\"store\",\"merchant_id\":\"1\",\"item_id\":\"1\",\"price\":\"30|medium|2\",\"qty\":5,\"discount\":\"\",\"notes\":\"\",\"row\":\"\",\"category_id\":\"1\",\"csrf_token\":\"6392e1d189e47aae44006167667031823e1d59a9\",\"auto_add_cart\":\"1\",\"yii_session_token\":\"lhlk3u7flehcnjvjq40tklagfn\",\"YII_CSRF_TOKEN\":\"6392e1d189e47aae44006167667031823e1d59a9\",\"two_flavors\":\"\",\"non_taxable\":\"2\",\"sub_item\":\"\"}]','delivery','iyzipay',150.0000,0.0000,0.0000,150.0000,'initial_order',0,1,0.0000,'2020-01-16','10:50','','','',0.0000,'',0,'2020-01-16 10:49:21','0000-00-00 00:00:00','112.110.78.59',0.0000,'',0.00000,0.00000,0.0000,0.0000,2,0.0000,0.0000,0.0000,0.0000,0.0000,1,1,'web',NULL,0.0000,0,'IChoHP7LR3',0,0,'','',1,'percentage',1,2,2,'pending','','',''),(9,1,2,'[{\"currentController\":\"store\",\"merchant_id\":\"1\",\"item_id\":\"1\",\"price\":\"30|medium|2\",\"qty\":5,\"discount\":\"\",\"notes\":\"\",\"row\":\"\",\"category_id\":\"1\",\"csrf_token\":\"6392e1d189e47aae44006167667031823e1d59a9\",\"auto_add_cart\":\"1\",\"yii_session_token\":\"lhlk3u7flehcnjvjq40tklagfn\",\"YII_CSRF_TOKEN\":\"6392e1d189e47aae44006167667031823e1d59a9\",\"two_flavors\":\"\",\"non_taxable\":\"2\",\"sub_item\":\"\"}]','delivery','iyzipay',150.0000,0.0000,0.0000,150.0000,'initial_order',0,1,0.0000,'2020-01-16','10:54 AM','','','',0.0000,'',0,'2020-01-16 10:54:31','0000-00-00 00:00:00','112.110.78.59',0.0000,'',0.00000,0.00000,0.0000,0.0000,2,0.0000,0.0000,0.0000,0.0000,0.0000,1,1,'web',NULL,0.0000,0,'qXlGetH2lP',0,0,'','',1,'percentage',1,2,2,'pending','','',''),(10,1,2,'[{\"currentController\":\"store\",\"merchant_id\":\"1\",\"item_id\":\"1\",\"price\":\"30|medium|2\",\"qty\":5,\"discount\":\"\",\"notes\":\"\",\"row\":\"\",\"category_id\":\"1\",\"csrf_token\":\"6392e1d189e47aae44006167667031823e1d59a9\",\"auto_add_cart\":\"1\",\"yii_session_token\":\"lhlk3u7flehcnjvjq40tklagfn\",\"YII_CSRF_TOKEN\":\"6392e1d189e47aae44006167667031823e1d59a9\",\"two_flavors\":\"\",\"non_taxable\":\"2\",\"sub_item\":\"\"}]','delivery','iyzipay',150.0000,0.0000,0.0000,150.0000,'initial_order',0,1,0.0000,'2020-01-16','11:02 AM','','','',0.0000,'',0,'2020-01-16 11:03:09','0000-00-00 00:00:00','112.110.78.59',0.0000,'',0.00000,0.00000,0.0000,0.0000,2,0.0000,0.0000,0.0000,0.0000,0.0000,1,1,'web',NULL,0.0000,0,'5rBXASrK3C',0,0,'','',1,'percentage',1,2,2,'pending','','',''),(11,1,2,'[{\"currentController\":\"store\",\"merchant_id\":\"1\",\"item_id\":\"1\",\"price\":\"30|medium|2\",\"qty\":5,\"discount\":\"\",\"notes\":\"\",\"row\":\"\",\"category_id\":\"1\",\"csrf_token\":\"6392e1d189e47aae44006167667031823e1d59a9\",\"auto_add_cart\":\"1\",\"yii_session_token\":\"lhlk3u7flehcnjvjq40tklagfn\",\"YII_CSRF_TOKEN\":\"6392e1d189e47aae44006167667031823e1d59a9\",\"two_flavors\":\"\",\"non_taxable\":\"2\",\"sub_item\":\"\"}]','delivery','iyzipay',150.0000,0.0000,0.0000,150.0000,'initial_order',0,1,0.0000,'2020-01-16','11:45','','','',0.0000,'',0,'2020-01-16 11:09:47','0000-00-00 00:00:00','112.110.78.59',0.0000,'',0.00000,0.00000,0.0000,0.0000,2,0.0000,0.0000,0.0000,0.0000,0.0000,1,1,'web',NULL,0.0000,0,'VMsVsVeB6T',0,0,'','',1,'percentage',1,2,2,'pending','','',''),(12,1,2,'[{\"currentController\":\"store\",\"merchant_id\":\"1\",\"item_id\":\"1\",\"price\":\"30|medium|2\",\"qty\":5,\"discount\":\"\",\"notes\":\"\",\"row\":\"\",\"category_id\":\"1\",\"csrf_token\":\"6392e1d189e47aae44006167667031823e1d59a9\",\"auto_add_cart\":\"1\",\"yii_session_token\":\"lhlk3u7flehcnjvjq40tklagfn\",\"YII_CSRF_TOKEN\":\"6392e1d189e47aae44006167667031823e1d59a9\",\"two_flavors\":\"\",\"non_taxable\":\"2\",\"sub_item\":\"\"}]','delivery','iyzipay',150.0000,0.0000,0.0000,150.0000,'initial_order',0,1,0.0000,'2020-01-16','12:00 PM','','','',0.0000,'',0,'2020-01-16 12:00:59','0000-00-00 00:00:00','112.110.78.59',0.0000,'',0.00000,0.00000,0.0000,0.0000,2,0.0000,0.0000,0.0000,0.0000,0.0000,1,1,'web',NULL,0.0000,0,'S39RCqkFnQ',0,0,'','',1,'percentage',1,2,2,'pending','','',''),(13,1,2,'[{\"currentController\":\"store\",\"merchant_id\":\"1\",\"item_id\":\"1\",\"price\":\"30|medium|2\",\"qty\":5,\"discount\":\"\",\"notes\":\"\",\"row\":\"\",\"category_id\":\"1\",\"csrf_token\":\"6392e1d189e47aae44006167667031823e1d59a9\",\"auto_add_cart\":\"1\",\"yii_session_token\":\"lhlk3u7flehcnjvjq40tklagfn\",\"YII_CSRF_TOKEN\":\"6392e1d189e47aae44006167667031823e1d59a9\",\"two_flavors\":\"\",\"non_taxable\":\"2\",\"sub_item\":\"\"}]','delivery','iyzipay',150.0000,0.0000,0.0000,150.0000,'initial_order',0,1,0.0000,'2020-01-16','12:55','','','',0.0000,'',0,'2020-01-16 12:16:20','0000-00-00 00:00:00','112.110.78.59',0.0000,'',0.00000,0.00000,0.0000,0.0000,2,0.0000,0.0000,0.0000,0.0000,0.0000,1,1,'web',NULL,0.0000,0,'S5ZIoPjDvU',0,0,'','',1,'percentage',1,2,2,'pending','','',''),(14,1,2,'[{\"currentController\":\"store\",\"merchant_id\":\"1\",\"item_id\":\"1\",\"price\":\"30|medium|2\",\"qty\":5,\"discount\":\"\",\"notes\":\"\",\"row\":\"\",\"category_id\":\"1\",\"csrf_token\":\"6392e1d189e47aae44006167667031823e1d59a9\",\"auto_add_cart\":\"1\",\"yii_session_token\":\"lhlk3u7flehcnjvjq40tklagfn\",\"YII_CSRF_TOKEN\":\"6392e1d189e47aae44006167667031823e1d59a9\",\"two_flavors\":\"\",\"non_taxable\":\"2\",\"sub_item\":\"\"}]','delivery','iyzipay',150.0000,0.0000,0.0000,150.0000,'initial_order',0,1,0.0000,'2020-01-16','12:55','','','',0.0000,'',0,'2020-01-16 12:17:53','0000-00-00 00:00:00','112.110.78.59',0.0000,'',0.00000,0.00000,0.0000,0.0000,2,0.0000,0.0000,0.0000,0.0000,0.0000,1,1,'web',NULL,0.0000,0,'W3mS4HpYhI',0,0,'','',1,'percentage',1,2,2,'pending','','',''),(15,1,2,'[{\"currentController\":\"store\",\"merchant_id\":\"1\",\"item_id\":\"1\",\"price\":\"30|medium|2\",\"qty\":5,\"discount\":\"\",\"notes\":\"\",\"row\":\"\",\"category_id\":\"1\",\"csrf_token\":\"6392e1d189e47aae44006167667031823e1d59a9\",\"auto_add_cart\":\"1\",\"yii_session_token\":\"lhlk3u7flehcnjvjq40tklagfn\",\"YII_CSRF_TOKEN\":\"6392e1d189e47aae44006167667031823e1d59a9\",\"two_flavors\":\"\",\"non_taxable\":\"2\",\"sub_item\":\"\"}]','delivery','iyzipay',150.0000,0.0000,0.0000,150.0000,'initial_order',0,1,0.0000,'2020-01-16','12:50','','','',0.0000,'',0,'2020-01-16 12:35:55','0000-00-00 00:00:00','112.110.78.59',0.0000,'',0.00000,0.00000,0.0000,0.0000,2,0.0000,0.0000,0.0000,0.0000,0.0000,1,1,'web',NULL,0.0000,0,'cM6X13prea',0,0,'','',1,'percentage',1,2,2,'pending','','',''),(16,1,2,'[{\"currentController\":\"store\",\"merchant_id\":\"1\",\"item_id\":\"1\",\"price\":\"30|medium|2\",\"qty\":\"1\",\"discount\":\"\",\"notes\":\"\",\"row\":\"\",\"category_id\":\"1\",\"csrf_token\":\"9ea464672e57ae4a8ca6e1b15ba97143facfa1f5\",\"auto_add_cart\":\"1\",\"yii_session_token\":\"3kbt0aoe3i7qs35mjjnj0q1dfg\",\"YII_CSRF_TOKEN\":\"9ea464672e57ae4a8ca6e1b15ba97143facfa1f5\",\"two_flavors\":\"\",\"non_taxable\":\"2\",\"sub_item\":\"\"}]','delivery','iyzipay',30.0000,0.0000,0.0000,30.0000,'initial_order',0,1,0.0000,'2020-01-17','09:55','','','',0.0000,'',0,'2020-01-17 09:24:55','0000-00-00 00:00:00','106.77.146.28',0.0000,'',0.00000,0.00000,0.0000,0.0000,2,0.0000,0.0000,0.0000,0.0000,0.0000,1,1,'web',NULL,0.0000,0,'BIJ21nbiax',0,0,'','',1,'percentage',1,2,2,'pending','','',''),(17,4,3,'[{\"currentController\":\"store\",\"merchant_id\":\"4\",\"item_id\":\"2\",\"price\":\"54|small|16\",\"qty\":2,\"discount\":\"\",\"notes\":\"\",\"row\":\"\",\"category_id\":\"2\",\"csrf_token\":\"7cb7e4f06639e5ca0dbd2daa8d1d44b64f55d1d0\",\"auto_add_cart\":\"1\",\"yii_session_token\":\"ni4prn1v02ua702e15gq9307gr\",\"YII_CSRF_TOKEN\":\"7cb7e4f06639e5ca0dbd2daa8d1d44b64f55d1d0\",\"two_flavors\":\"\",\"non_taxable\":\"1\",\"sub_item\":\"\"}]','delivery','iyzipay',108.0000,0.0000,0.0000,108.0000,'initial_order',0,1,0.0000,'2020-01-22','10:42 AM','','','',0.0000,'',0,'2020-01-22 10:42:15','0000-00-00 00:00:00','85.99.176.45',0.0000,'',0.00000,0.00000,0.0000,0.0000,2,0.0000,0.0000,0.0000,0.0000,0.0000,1,1,'web',NULL,0.0000,0,'9l6ZUOdz71',0,0,'','',1,'percentage',1,2,2,'pending','','',''),(18,1,2,'[{\"currentController\":\"store\",\"merchant_id\":\"1\",\"item_id\":\"1\",\"price\":\"30|medium|2\",\"qty\":\"1\",\"discount\":\"\",\"notes\":\"\",\"row\":\"\",\"category_id\":\"1\",\"csrf_token\":\"f2917004222fd34db09f92d09652d991c2f48c21\",\"auto_add_cart\":\"1\",\"yii_session_token\":\"61cumtta854r3d417du1747l9a\",\"YII_CSRF_TOKEN\":\"f2917004222fd34db09f92d09652d991c2f48c21\",\"two_flavors\":\"\",\"non_taxable\":\"2\",\"sub_item\":\"\"}]','delivery','iyzipay',30.0000,0.0000,0.0000,30.0000,'initial_order',0,1,0.0000,'2020-01-22','10:45','','','',0.0000,'',0,'2020-01-22 10:44:48','0000-00-00 00:00:00','106.77.159.82',0.0000,'',0.00000,0.00000,0.0000,0.0000,2,0.0000,0.0000,0.0000,0.0000,0.0000,1,1,'web',NULL,0.0000,0,'8TVkxgFy4l',0,0,'','',1,'percentage',1,2,2,'pending','','',''),(19,1,2,'[{\"currentController\":\"store\",\"merchant_id\":\"1\",\"item_id\":\"1\",\"price\":\"30|medium|2\",\"qty\":\"1\",\"discount\":\"\",\"notes\":\"\",\"row\":\"\",\"category_id\":\"1\",\"csrf_token\":\"f2917004222fd34db09f92d09652d991c2f48c21\",\"auto_add_cart\":\"1\",\"yii_session_token\":\"61cumtta854r3d417du1747l9a\",\"YII_CSRF_TOKEN\":\"f2917004222fd34db09f92d09652d991c2f48c21\",\"two_flavors\":\"\",\"non_taxable\":\"2\",\"sub_item\":\"\"}]','delivery','iyzipay',30.0000,0.0000,0.0000,30.0000,'initial_order',0,1,0.0000,'2020-01-22','11:50','','','',0.0000,'',0,'2020-01-22 11:15:26','0000-00-00 00:00:00','106.77.159.82',0.0000,'',0.00000,0.00000,0.0000,0.0000,2,0.0000,0.0000,0.0000,0.0000,0.0000,1,1,'web',NULL,0.0000,0,'CVdYPh9eju',0,0,'','',1,'percentage',1,2,2,'pending','','',''),(20,1,2,'[{\"currentController\":\"store\",\"merchant_id\":\"1\",\"item_id\":\"1\",\"price\":\"30|medium|2\",\"qty\":2,\"discount\":\"\",\"notes\":\"\",\"row\":\"\",\"category_id\":\"1\",\"csrf_token\":\"f2917004222fd34db09f92d09652d991c2f48c21\",\"auto_add_cart\":\"1\",\"yii_session_token\":\"61cumtta854r3d417du1747l9a\",\"YII_CSRF_TOKEN\":\"f2917004222fd34db09f92d09652d991c2f48c21\",\"two_flavors\":\"\",\"non_taxable\":\"2\",\"sub_item\":\"\"}]','delivery','iyzipay',60.0000,0.0000,0.0000,60.0000,'paid',0,2,0.0000,'2020-01-22','11:55','','','',0.0000,'',0,'2020-01-22 11:50:16','0000-00-00 00:00:00','106.77.159.82',0.0000,'',0.00000,0.00000,0.0000,0.0000,2,0.0000,0.0000,0.0000,0.0000,0.0000,1,1,'web',NULL,0.0000,0,'3IMlExptKy',1,0,'','',1,'percentage',1,2,2,'pending','','','');
/*!40000 ALTER TABLE `mt_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_order_delivery_address`
--

DROP TABLE IF EXISTS `mt_order_delivery_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_order_delivery_address` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `order_id` int(14) NOT NULL DEFAULT '0',
  `client_id` int(14) NOT NULL DEFAULT '0',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(255) NOT NULL DEFAULT '',
  `location_name` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(255) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `contact_phone` varchar(100) NOT NULL DEFAULT '',
  `formatted_address` text,
  `google_lat` varchar(50) NOT NULL DEFAULT '',
  `google_lng` varchar(50) NOT NULL DEFAULT '',
  `area_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `client_id` (`client_id`),
  KEY `google_lat` (`google_lat`),
  KEY `google_lng` (`google_lng`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_order_delivery_address`
--

LOCK TABLES `mt_order_delivery_address` WRITE;
/*!40000 ALTER TABLE `mt_order_delivery_address` DISABLE KEYS */;
INSERT INTO `mt_order_delivery_address` VALUES (1,1,2,'demo','dmo','dmeo','2342343','','Turkey','2020-01-15 12:30:05','106.77.150.74','+903345345324',NULL,'','',''),(2,2,2,'demo','dmo','dmeo','2342343','','Turkey','2020-01-15 13:09:25','106.77.150.74','+903345345324',NULL,'','',''),(3,3,2,'demo','dmo','dmeo','2342343','','Turkey','2020-01-15 13:16:00','106.77.150.74','+903345345324',NULL,'','',''),(4,4,2,'demo','dmo','dmeo','2342343','','Turkey','2020-01-16 08:55:58','106.77.87.1','1234562353253',NULL,'','',''),(5,5,2,'demo','dmo','dmeo','2342343','','Turkey','2020-01-16 09:13:33','106.77.87.1','1234562353253',NULL,'','',''),(6,6,2,'demo','dmo','dmeo','2342343','','Turkey','2020-01-16 09:42:41','106.77.80.188','1234562353253',NULL,'','',''),(7,7,2,'demo','dmo','dmeo','2342343','','Turkey','2020-01-16 10:41:39','112.110.78.59','1234562353253',NULL,'','',''),(8,8,2,'demo','dmo','dmeo','2342343','','Turkey','2020-01-16 10:49:21','112.110.78.59','1234562353253',NULL,'','',''),(9,9,2,'demo','dmo','dmeo','2342343','','Turkey','2020-01-16 10:54:31','112.110.78.59','1234562353253',NULL,'','',''),(10,10,2,'demo','dmo','dmeo','2342343','','Turkey','2020-01-16 11:03:09','112.110.78.59','1234562353253',NULL,'','',''),(11,11,2,'demo','dmo','dmeo','2342343','','Turkey','2020-01-16 11:09:47','112.110.78.59','1234562353253',NULL,'','',''),(12,12,2,'demo','dmo','dmeo','2342343','','Turkey','2020-01-16 12:00:59','112.110.78.59','1234562353253',NULL,'','',''),(13,13,2,'demo','dmo','dmeo','2342343','','Turkey','2020-01-16 12:16:20','112.110.78.59','1234562353253',NULL,'','',''),(14,14,2,'demo','dmo','dmeo','2342343','','Turkey','2020-01-16 12:17:53','112.110.78.59','1234562353253',NULL,'','',''),(15,15,2,'demo','dmo','dmeo','2342343','','Turkey','2020-01-16 12:35:55','112.110.78.59','1234562353253',NULL,'','',''),(16,16,2,'demo','dmo','dmeo','2342343','','Turkey','2020-01-17 09:24:55','106.77.146.28','12345653535',NULL,'','',''),(17,17,3,'Sozopol Santa Marina Hotel villa 407','Burgas','Sozopol','8130','Elena Purva Ltd','Turkey','2020-01-22 10:42:15','85.99.176.45','0892359624',NULL,'','',''),(18,18,2,'demo','dmo','dmeo','2342343','','Turkey','2020-01-22 10:44:48','106.77.159.82','12345634345',NULL,'','',''),(19,19,2,'demo','dmo','dmeo','2342343','','Turkey','2020-01-22 11:15:26','106.77.159.82','12345634345',NULL,'','',''),(20,20,2,'demo','dmo','dmeo','2342343','','Turkey','2020-01-22 11:50:16','106.77.159.82','12345634345',NULL,'','','');
/*!40000 ALTER TABLE `mt_order_delivery_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_order_details`
--

DROP TABLE IF EXISTS `mt_order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_order_details` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `order_id` int(14) NOT NULL DEFAULT '0',
  `client_id` int(14) NOT NULL DEFAULT '0',
  `item_id` int(14) NOT NULL DEFAULT '0',
  `item_name` varchar(255) NOT NULL DEFAULT '',
  `order_notes` text,
  `normal_price` float(14,4) NOT NULL DEFAULT '0.0000',
  `discounted_price` float(14,4) NOT NULL DEFAULT '0.0000',
  `size` varchar(255) NOT NULL DEFAULT '',
  `qty` int(14) NOT NULL DEFAULT '0',
  `cooking_ref` varchar(255) NOT NULL DEFAULT '',
  `addon` text,
  `ingredients` text,
  `non_taxable` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `client_id` (`client_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_order_details`
--

LOCK TABLES `mt_order_details` WRITE;
/*!40000 ALTER TABLE `mt_order_details` DISABLE KEYS */;
INSERT INTO `mt_order_details` VALUES (1,1,2,1,'Double cheese burger','',30.0000,30.0000,'medium',1,'','','\"\"',2),(2,2,2,1,'Double cheese burger','',30.0000,30.0000,'medium',1,'','','\"\"',2),(3,3,2,1,'Double cheese burger','',30.0000,30.0000,'medium',2,'','','\"\"',2),(4,4,2,1,'Double cheese burger','',30.0000,30.0000,'medium',1,'','','\"\"',2),(5,5,2,1,'Double cheese burger','',30.0000,30.0000,'medium',2,'','','\"\"',2),(6,6,2,1,'Double cheese burger','',30.0000,30.0000,'medium',3,'','','\"\"',2),(7,7,2,1,'Double cheese burger','',30.0000,30.0000,'medium',4,'','','\"\"',2),(8,8,2,1,'Double cheese burger','',30.0000,30.0000,'medium',5,'','','\"\"',2),(9,9,2,1,'Double cheese burger','',30.0000,30.0000,'medium',5,'','','\"\"',2),(10,10,2,1,'Double cheese burger','',30.0000,30.0000,'medium',5,'','','\"\"',2),(11,11,2,1,'Double cheese burger','',30.0000,30.0000,'medium',5,'','','\"\"',2),(12,12,2,1,'Double cheese burger','',30.0000,30.0000,'medium',5,'','','\"\"',2),(13,13,2,1,'Double cheese burger','',30.0000,30.0000,'medium',5,'','','\"\"',2),(14,14,2,1,'Double cheese burger','',30.0000,30.0000,'medium',5,'','','\"\"',2),(15,15,2,1,'Double cheese burger','',30.0000,30.0000,'medium',5,'','','\"\"',2),(16,16,2,1,'Double cheese burger','',30.0000,30.0000,'medium',1,'','','\"\"',2),(17,17,3,2,'rfrfrfrfr','',54.0000,54.0000,'small',2,'','','\"\"',1),(18,18,2,1,'Double cheese burger','',30.0000,30.0000,'medium',1,'','','\"\"',2),(19,19,2,1,'Double cheese burger','',30.0000,30.0000,'medium',1,'','','\"\"',2),(20,20,2,1,'Double cheese burger','',30.0000,30.0000,'medium',2,'','','\"\"',2);
/*!40000 ALTER TABLE `mt_order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_order_history`
--

DROP TABLE IF EXISTS `mt_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_order_history` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `order_id` int(14) NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT '',
  `remarks` text,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `task_id` int(14) NOT NULL DEFAULT '0',
  `reason` text,
  `customer_signature` varchar(255) NOT NULL DEFAULT '',
  `notification_viewed` int(1) NOT NULL DEFAULT '2',
  `driver_id` int(14) NOT NULL DEFAULT '0',
  `driver_location_lat` varchar(50) NOT NULL DEFAULT '',
  `driver_location_lng` varchar(50) NOT NULL DEFAULT '',
  `remarks2` varchar(255) NOT NULL DEFAULT '',
  `remarks_args` varchar(255) NOT NULL DEFAULT '',
  `notes` varchar(255) NOT NULL DEFAULT '',
  `photo_task_id` int(14) NOT NULL DEFAULT '0',
  `receive_by` varchar(255) NOT NULL DEFAULT '',
  `signature_base30` text,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `status` (`status`),
  KEY `task_id` (`task_id`),
  KEY `driver_id` (`driver_id`),
  KEY `driver_location_lat` (`driver_location_lat`),
  KEY `driver_location_lng` (`driver_location_lng`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_order_history`
--

LOCK TABLES `mt_order_history` WRITE;
/*!40000 ALTER TABLE `mt_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_order_sms`
--

DROP TABLE IF EXISTS `mt_order_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_order_sms` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(50) NOT NULL DEFAULT '',
  `code` int(4) NOT NULL,
  `session` varchar(255) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `session` (`session`),
  KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_order_sms`
--

LOCK TABLES `mt_order_sms` WRITE;
/*!40000 ALTER TABLE `mt_order_sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_order_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_order_status`
--

DROP TABLE IF EXISTS `mt_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_order_status` (
  `stats_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `description` varchar(200) NOT NULL DEFAULT '',
  `date_created` date DEFAULT NULL,
  `date_modified` date DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`stats_id`),
  KEY `merchant_id` (`merchant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_order_status`
--

LOCK TABLES `mt_order_status` WRITE;
/*!40000 ALTER TABLE `mt_order_status` DISABLE KEYS */;
INSERT INTO `mt_order_status` VALUES (1,0,'pending','2020-01-08',NULL,'85.100.71.25'),(2,0,'cancelled','2020-01-08',NULL,'85.100.71.25'),(3,0,'delivered','2020-01-08',NULL,'85.100.71.25'),(4,0,'paid','2020-01-08',NULL,'85.100.71.25'),(5,0,'accepted','2020-01-08',NULL,'85.100.71.25'),(6,0,'decline','2020-01-08',NULL,'85.100.71.25'),(7,0,'failed','2020-01-08',NULL,'85.100.71.25'),(8,0,'declined','2020-01-08',NULL,'85.100.71.25'),(9,0,'acknowledged','2020-01-08',NULL,'85.100.71.25'),(10,0,'started','2020-01-08',NULL,'85.100.71.25'),(11,0,'inprogress','2020-01-08',NULL,'85.100.71.25'),(12,0,'successful','2020-01-08',NULL,'85.100.71.25');
/*!40000 ALTER TABLE `mt_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_package_trans`
--

DROP TABLE IF EXISTS `mt_package_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_package_trans` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `package_id` int(14) NOT NULL DEFAULT '0',
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `price` float(14,4) NOT NULL DEFAULT '0.0000',
  `payment_type` varchar(100) NOT NULL DEFAULT '',
  `mt_id` int(14) NOT NULL DEFAULT '0',
  `TOKEN` varchar(255) NOT NULL DEFAULT '',
  `membership_expired` date DEFAULT NULL,
  `TRANSACTIONID` varchar(255) NOT NULL DEFAULT '',
  `TRANSACTIONTYPE` varchar(100) NOT NULL DEFAULT '',
  `PAYMENTSTATUS` varchar(100) NOT NULL DEFAULT '',
  `PAYPALFULLRESPONSE` text,
  `status` varchar(100) NOT NULL DEFAULT 'pending',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `fee` float(14,4) NOT NULL DEFAULT '0.0000',
  `merchant_ref` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `package_id` (`package_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `TRANSACTIONID` (`TRANSACTIONID`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_package_trans`
--

LOCK TABLES `mt_package_trans` WRITE;
/*!40000 ALTER TABLE `mt_package_trans` DISABLE KEYS */;
INSERT INTO `mt_package_trans` VALUES (2,1,1,66.0000,'iyzipay',0,'','2021-01-08','12520126','','success','{\"status\":\"success\",\"locale\":\"tr\",\"systemTime\":1578557680426,\"price\":66.00000000,\"paidPrice\":66.00000000,\"installment\":1,\"paymentId\":\"11798432\",\"fraudStatus\":1,\"merchantCommissionRate\":0E-8,\"merchantCommissionRateAmount\":0E-8,\"iyziCommissionRateAmount\":1.73250000,\"iyziCommissionFee\":0.25000000,\"cardType\":\"DEBIT_CARD\",\"cardAssociation\":\"MASTER_CARD\",\"cardFamily\":\"Neo\",\"binNumber\":\"589004\",\"lastFourDigits\":\"0016\",\"basketId\":\"1\",\"currency\":\"TRY\",\"itemTransactions\":[{\"itemId\":\"1\",\"paymentTransactionId\":\"12520126\",\"transactionStatus\":1,\"price\":66.00000000,\"paidPrice\":66.00000000,\"merchantCommissionRate\":0E-8,\"merchantCommissionRateAmount\":0E-8,\"iyziCommissionRateAmount\":1.73250000,\"iyziCommissionFee\":0.25000000,\"blockageRate\":0E-8,\"blockageRateAmountMerchant\":0E-8,\"blockageRateAmountSubMerchant\":0E-8,\"blockageResolvedDate\":\"2020-01-16 11:14:39\",\"subMerchantKey\":\"5ti9uO2oRSkxg5Ovswxkj58o/HQ=\",\"subMerchantPrice\":66.00000000,\"subMerchantPayoutRate\":100.00000000,\"subMerchantPayoutAmount\":64.01750000,\"merchantPayoutAmount\":0E-8,\"convertedPayout\":{\"paidPrice\":66.00000000,\"iyziCommissionRateAmount\":1.73250000,\"iyziCommissionFee\":0.25000000,\"blockageRateAmountMerchant\":0E-8,\"blockageRateAmountSubMerchant\":0E-8,\"subMerchantPayoutAmount\":64.01750000,\"merchantPayoutAmount\":0E-8,\"iyziConversionRate\":0E-8,\"iyziConversionRateAmount\":0E-8,\"currency\":\"TRY\"}}],\"authCode\":\"433011\",\"phase\":\"AUTH\",\"mdStatus\":1,\"hostReference\":\"mock00027iyzihostrfn\",\"token\":\"8426d9b9-b5c0-422b-97a2-510eed2e8918\",\"callbackUrl\":\"https://new.yemeksiparisi.com.tr/merchantsignupstep3c?merchant_token_success=01acf09c988ca36e1618f83ec86647fb\",\"paymentStatus\":\"SUCCESS\"}','pending','2020-01-09 09:14:40','106.77.149.33',0.0000,'');
/*!40000 ALTER TABLE `mt_package_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_packages`
--

DROP TABLE IF EXISTS `mt_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_packages` (
  `package_id` int(14) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `price` float(14,4) NOT NULL DEFAULT '0.0000',
  `promo_price` float(14,4) NOT NULL DEFAULT '0.0000',
  `expiration` int(14) NOT NULL DEFAULT '0',
  `expiration_type` varchar(50) NOT NULL DEFAULT 'days',
  `unlimited_post` int(1) NOT NULL DEFAULT '2',
  `post_limit` int(14) NOT NULL DEFAULT '0',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `status` varchar(100) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `sell_limit` int(14) NOT NULL DEFAULT '0',
  PRIMARY KEY (`package_id`),
  KEY `title` (`title`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_packages`
--

LOCK TABLES `mt_packages` WRITE;
/*!40000 ALTER TABLE `mt_packages` DISABLE KEYS */;
INSERT INTO `mt_packages` VALUES (1,'ytrerty','uuytrertyu',66.0000,0.0000,365,'days',2,0,0,'publish','2020-01-08 11:30:32','0000-00-00 00:00:00','85.100.71.25',333);
/*!40000 ALTER TABLE `mt_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_payment_order`
--

DROP TABLE IF EXISTS `mt_payment_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_payment_order` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(100) NOT NULL DEFAULT '',
  `payment_reference` varchar(255) NOT NULL DEFAULT '',
  `order_id` int(14) NOT NULL DEFAULT '0',
  `raw_response` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(100) NOT NULL,
  `merchant_ref` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `payment_type` (`payment_type`),
  KEY `payment_reference` (`payment_reference`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_payment_order`
--

LOCK TABLES `mt_payment_order` WRITE;
/*!40000 ALTER TABLE `mt_payment_order` DISABLE KEYS */;
INSERT INTO `mt_payment_order` VALUES (1,'iyzipay','',20,'{\"status\":\"success\",\"locale\":\"tr\",\"systemTime\":1579690250329,\"price\":60.00000000,\"paidPrice\":60.00000000,\"installment\":1,\"paymentId\":\"11829518\",\"fraudStatus\":1,\"merchantCommissionRate\":0E-8,\"merchantCommissionRateAmount\":0E-8,\"iyziCommissionRateAmount\":1.57500000,\"iyziCommissionFee\":0.25000000,\"cardType\":\"DEBIT_CARD\",\"cardAssociation\":\"MASTER_CARD\",\"cardFamily\":\"Neo\",\"binNumber\":\"589004\",\"lastFourDigits\":\"0016\",\"basketId\":\"20\",\"currency\":\"TRY\",\"itemTransactions\":[{\"itemId\":\"1\",\"paymentTransactionId\":\"12555873\",\"transactionStatus\":1,\"price\":60.00000000,\"paidPrice\":60.00000000,\"merchantCommissionRate\":0E-8,\"merchantCommissionRateAmount\":0E-8,\"iyziCommissionRateAmount\":1.57500000,\"iyziCommissionFee\":0.25000000,\"blockageRate\":0E-8,\"blockageRateAmountMerchant\":0E-8,\"blockageRateAmountSubMerchant\":0E-8,\"blockageResolvedDate\":\"2020-01-29 13:50:49\",\"subMerchantKey\":\"5ti9uO2oRSkxg5Ovswxkj58o/HQ=\",\"subMerchantPrice\":60.00000000,\"subMerchantPayoutRate\":100.00000000,\"subMerchantPayoutAmount\":58.17500000,\"merchantPayoutAmount\":0E-8,\"convertedPayout\":{\"paidPrice\":60.00000000,\"iyziCommissionRateAmount\":1.57500000,\"iyziCommissionFee\":0.25000000,\"blockageRateAmountMerchant\":0E-8,\"blockageRateAmountSubMerchant\":0E-8,\"subMerchantPayoutAmount\":58.17500000,\"merchantPayoutAmount\":0E-8,\"iyziConversionRate\":0E-8,\"iyziConversionRateAmount\":0E-8,\"currency\":\"TRY\"}}],\"authCode\":\"114428\",\"phase\":\"AUTH\",\"mdStatus\":1,\"hostReference\":\"mock00027iyzihostrfn\",\"token\":\"b8c8c985-ffe2-47c4-9435-24e884f9fc6f\",\"callbackUrl\":\"https://new.yemeksiparisi.com.tr/iyzipayinit\",\"paymentStatus\":\"SUCCESS\"}','2020-01-22 11:50:50','106.77.159.82','');
/*!40000 ALTER TABLE `mt_payment_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_payment_provider`
--

DROP TABLE IF EXISTS `mt_payment_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_payment_provider` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `payment_name` varchar(255) NOT NULL DEFAULT '',
  `payment_logo` varchar(255) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT 'publish',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `payment_name` (`payment_name`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_payment_provider`
--

LOCK TABLES `mt_payment_provider` WRITE;
/*!40000 ALTER TABLE `mt_payment_provider` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_payment_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_paypal_checkout`
--

DROP TABLE IF EXISTS `mt_paypal_checkout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_paypal_checkout` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `order_id` int(14) NOT NULL DEFAULT '0',
  `token` varchar(255) NOT NULL DEFAULT '',
  `paypal_request` text,
  `paypal_response` text,
  `status` varchar(255) NOT NULL DEFAULT 'checkout',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `token` (`token`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_paypal_checkout`
--

LOCK TABLES `mt_paypal_checkout` WRITE;
/*!40000 ALTER TABLE `mt_paypal_checkout` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_paypal_checkout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_paypal_payment`
--

DROP TABLE IF EXISTS `mt_paypal_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_paypal_payment` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `order_id` int(14) NOT NULL DEFAULT '0',
  `TOKEN` varchar(255) NOT NULL DEFAULT '',
  `TRANSACTIONID` varchar(100) NOT NULL DEFAULT '',
  `TRANSACTIONTYPE` varchar(100) NOT NULL DEFAULT '',
  `PAYMENTTYPE` varchar(100) NOT NULL DEFAULT '',
  `ORDERTIME` varchar(100) NOT NULL DEFAULT '',
  `AMT` varchar(14) NOT NULL DEFAULT '',
  `FEEAMT` varchar(14) NOT NULL DEFAULT '',
  `TAXAMT` varchar(14) NOT NULL DEFAULT '',
  `CURRENCYCODE` varchar(3) NOT NULL DEFAULT '',
  `PAYMENTSTATUS` varchar(100) NOT NULL DEFAULT '',
  `CORRELATIONID` varchar(100) NOT NULL DEFAULT '',
  `TIMESTAMP` varchar(100) NOT NULL DEFAULT '',
  `json_details` text,
  `date_created` varchar(50) NOT NULL DEFAULT '',
  `ip_address` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_paypal_payment`
--

LOCK TABLES `mt_paypal_payment` WRITE;
/*!40000 ALTER TABLE `mt_paypal_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_paypal_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_rating`
--

DROP TABLE IF EXISTS `mt_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_rating` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `ratings` float(14,1) NOT NULL DEFAULT '0.0',
  `client_id` int(14) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `client_id` (`client_id`),
  KEY `ratings` (`ratings`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_rating`
--

LOCK TABLES `mt_rating` WRITE;
/*!40000 ALTER TABLE `mt_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_rating_meaning`
--

DROP TABLE IF EXISTS `mt_rating_meaning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_rating_meaning` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `rating_start` float(14,1) NOT NULL DEFAULT '0.0',
  `rating_end` float(14,1) NOT NULL DEFAULT '0.0',
  `meaning` varchar(255) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_rating_meaning`
--

LOCK TABLES `mt_rating_meaning` WRITE;
/*!40000 ALTER TABLE `mt_rating_meaning` DISABLE KEYS */;
INSERT INTO `mt_rating_meaning` VALUES (1,1.0,1.9,'poor','2020-01-08 10:10:03','0000-00-00 00:00:00','85.100.71.25'),(2,2.0,2.9,'good','2020-01-08 10:10:03','0000-00-00 00:00:00','85.100.71.25'),(3,3.0,4.0,'very good','2020-01-08 10:10:03','0000-00-00 00:00:00','85.100.71.25'),(4,4.1,5.0,'excellent','2020-01-08 10:10:03','0000-00-00 00:00:00','85.100.71.25');
/*!40000 ALTER TABLE `mt_rating_meaning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_receive_post`
--

DROP TABLE IF EXISTS `mt_receive_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_receive_post` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(3) NOT NULL DEFAULT '',
  `receive_post` text,
  `status` text,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_receive_post`
--

LOCK TABLES `mt_receive_post` WRITE;
/*!40000 ALTER TABLE `mt_receive_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_receive_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_review`
--

DROP TABLE IF EXISTS `mt_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_review` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `client_id` int(14) NOT NULL DEFAULT '0',
  `review` text,
  `rating` float(14,1) NOT NULL DEFAULT '0.0',
  `status` varchar(100) NOT NULL DEFAULT 'publish',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `order_id` varchar(14) NOT NULL DEFAULT '',
  `parent_id` int(14) NOT NULL DEFAULT '0',
  `reply_from` varchar(255) NOT NULL DEFAULT '',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `rating` (`rating`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_review`
--

LOCK TABLES `mt_review` WRITE;
/*!40000 ALTER TABLE `mt_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_shipping_rate`
--

DROP TABLE IF EXISTS `mt_shipping_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_shipping_rate` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `distance_from` float(14,2) NOT NULL DEFAULT '0.00',
  `distance_to` float(14,2) NOT NULL DEFAULT '0.00',
  `shipping_units` varchar(5) NOT NULL DEFAULT '',
  `distance_price` float(14,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `merchant_id` (`merchant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_shipping_rate`
--

LOCK TABLES `mt_shipping_rate` WRITE;
/*!40000 ALTER TABLE `mt_shipping_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_shipping_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_size`
--

DROP TABLE IF EXISTS `mt_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_size` (
  `size_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `size_name` varchar(255) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `status` varchar(50) NOT NULL DEFAULT 'published',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `size_name_trans` text,
  PRIMARY KEY (`size_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `size_name` (`size_name`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_size`
--

LOCK TABLES `mt_size` WRITE;
/*!40000 ALTER TABLE `mt_size` DISABLE KEYS */;
INSERT INTO `mt_size` VALUES (1,1,'small',0,'publish','2020-01-08 11:32:41','0000-00-00 00:00:00','106.77.131.195',''),(2,1,'medium',0,'publish','2020-01-08 11:32:41','0000-00-00 00:00:00','106.77.131.195',''),(3,1,'large',0,'publish','2020-01-08 11:32:41','0000-00-00 00:00:00','106.77.131.195',''),(4,1,'small',0,'publish','2020-01-09 08:56:56','0000-00-00 00:00:00','106.77.149.33',''),(5,1,'medium',0,'publish','2020-01-09 08:56:56','0000-00-00 00:00:00','106.77.149.33',''),(6,1,'large',0,'publish','2020-01-09 08:56:56','0000-00-00 00:00:00','106.77.149.33',''),(7,1,'small',0,'publish','2020-01-09 09:14:01','0000-00-00 00:00:00','106.77.149.33',''),(8,1,'medium',0,'publish','2020-01-09 09:14:01','0000-00-00 00:00:00','106.77.149.33',''),(9,1,'large',0,'publish','2020-01-09 09:14:01','0000-00-00 00:00:00','106.77.149.33',''),(10,2,'small',0,'publish','2020-01-09 13:24:58','0000-00-00 00:00:00','106.77.149.33',''),(11,2,'medium',0,'publish','2020-01-09 13:24:59','0000-00-00 00:00:00','106.77.149.33',''),(12,2,'large',0,'publish','2020-01-09 13:24:59','0000-00-00 00:00:00','106.77.149.33',''),(13,3,'small',0,'publish','2020-01-09 13:29:37','0000-00-00 00:00:00','106.77.149.33',''),(14,3,'medium',0,'publish','2020-01-09 13:29:37','0000-00-00 00:00:00','106.77.149.33',''),(15,3,'large',0,'publish','2020-01-09 13:29:37','0000-00-00 00:00:00','106.77.149.33',''),(16,4,'small',0,'publish','2020-01-22 10:10:09','0000-00-00 00:00:00','85.99.176.45',''),(17,4,'medium',0,'publish','2020-01-22 10:10:09','0000-00-00 00:00:00','85.99.176.45',''),(18,4,'large',0,'publish','2020-01-22 10:10:09','0000-00-00 00:00:00','85.99.176.45','');
/*!40000 ALTER TABLE `mt_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_sms_broadcast`
--

DROP TABLE IF EXISTS `mt_sms_broadcast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_sms_broadcast` (
  `broadcast_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `send_to` int(14) NOT NULL DEFAULT '0',
  `list_mobile_number` text NOT NULL,
  `sms_alert_message` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`broadcast_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `send_to` (`send_to`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_sms_broadcast`
--

LOCK TABLES `mt_sms_broadcast` WRITE;
/*!40000 ALTER TABLE `mt_sms_broadcast` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_sms_broadcast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_sms_broadcast_details`
--

DROP TABLE IF EXISTS `mt_sms_broadcast_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_sms_broadcast_details` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `broadcast_id` int(14) NOT NULL DEFAULT '0',
  `client_id` int(14) NOT NULL DEFAULT '0',
  `client_name` varchar(255) NOT NULL DEFAULT '',
  `contact_phone` varchar(50) NOT NULL DEFAULT '',
  `sms_message` text,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `gateway_response` text,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_executed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `gateway` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `broadcast_id` (`broadcast_id`),
  KEY `client_id` (`client_id`),
  KEY `status` (`status`),
  KEY `gateway` (`gateway`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_sms_broadcast_details`
--

LOCK TABLES `mt_sms_broadcast_details` WRITE;
/*!40000 ALTER TABLE `mt_sms_broadcast_details` DISABLE KEYS */;
INSERT INTO `mt_sms_broadcast_details` VALUES (1,0,0,0,'','12345634345','Hi demo 123 \nWe have receive your order,\nDetails:\nOrder ID : 20\nRestaurant : Pizzeria\nTotal Amount : $60.00\nOrder Details : \n2 x Double cheese burger<p>medium</p> 60.00\n\n\nRegards\nyemek siparişi\n','No sms gateway selected','','2020-01-22 11:50:51','2020-01-22 11:51:07','78.47.156.99',''),(2,0,0,0,'','05349284299','This is a sms test message','process','02 443236873','2020-01-22 12:46:42','2020-01-22 12:46:42','85.99.176.45','netgsm');
/*!40000 ALTER TABLE `mt_sms_broadcast_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_sms_package`
--

DROP TABLE IF EXISTS `mt_sms_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_sms_package` (
  `sms_package_id` int(14) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `price` float(14,4) NOT NULL DEFAULT '0.0000',
  `promo_price` float(14,4) NOT NULL DEFAULT '0.0000',
  `sms_limit` int(14) NOT NULL DEFAULT '0',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `status` varchar(100) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`sms_package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_sms_package`
--

LOCK TABLES `mt_sms_package` WRITE;
/*!40000 ALTER TABLE `mt_sms_package` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_sms_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_sms_package_trans`
--

DROP TABLE IF EXISTS `mt_sms_package_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_sms_package_trans` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `sms_package_id` int(14) NOT NULL DEFAULT '0',
  `payment_type` varchar(50) NOT NULL DEFAULT '',
  `package_price` float(14,4) NOT NULL DEFAULT '0.0000',
  `sms_limit` int(14) NOT NULL DEFAULT '0',
  `status` varchar(100) NOT NULL DEFAULT 'pending',
  `payment_reference` varchar(255) NOT NULL DEFAULT '',
  `payment_gateway_response` text,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `cc_id` int(14) NOT NULL DEFAULT '0',
  `merchant_ref` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_sms_package_trans`
--

LOCK TABLES `mt_sms_package_trans` WRITE;
/*!40000 ALTER TABLE `mt_sms_package_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_sms_package_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_sms_trans_logs`
--

DROP TABLE IF EXISTS `mt_sms_trans_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_sms_trans_logs` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `sms_package_id` int(14) NOT NULL DEFAULT '0',
  `payment_type` varchar(100) NOT NULL DEFAULT '',
  `package_price` float(14,4) NOT NULL DEFAULT '0.0000',
  `sms_limit` varchar(14) NOT NULL DEFAULT '',
  `payment_reference` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `payment_gateway_ref` varchar(255) NOT NULL DEFAULT '',
  `gateway_response` text,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_sms_trans_logs`
--

LOCK TABLES `mt_sms_trans_logs` WRITE;
/*!40000 ALTER TABLE `mt_sms_trans_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_sms_trans_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_stripe_logger`
--

DROP TABLE IF EXISTS `mt_stripe_logger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_stripe_logger` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `trans_type` varchar(255) NOT NULL DEFAULT '',
  `payment_intent` varchar(255) NOT NULL DEFAULT '',
  `post_receive` text,
  `webhooks_response` text,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_receive_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_stripe_logger`
--

LOCK TABLES `mt_stripe_logger` WRITE;
/*!40000 ALTER TABLE `mt_stripe_logger` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_stripe_logger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_stripe_logs`
--

DROP TABLE IF EXISTS `mt_stripe_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_stripe_logs` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `order_id` int(14) NOT NULL,
  `json_result` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_stripe_logs`
--

LOCK TABLES `mt_stripe_logs` WRITE;
/*!40000 ALTER TABLE `mt_stripe_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_stripe_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_subcategory`
--

DROP TABLE IF EXISTS `mt_subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_subcategory` (
  `subcat_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `subcategory_name` varchar(255) NOT NULL DEFAULT '',
  `subcategory_description` text,
  `discount` varchar(20) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `status` varchar(100) NOT NULL DEFAULT 'publish',
  `subcategory_name_trans` text,
  `subcategory_description_trans` text,
  PRIMARY KEY (`subcat_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `subcategory_name` (`subcategory_name`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_subcategory`
--

LOCK TABLES `mt_subcategory` WRITE;
/*!40000 ALTER TABLE `mt_subcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_subcategory_item`
--

DROP TABLE IF EXISTS `mt_subcategory_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_subcategory_item` (
  `sub_item_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `sub_item_name` varchar(255) NOT NULL DEFAULT '',
  `item_description` text,
  `category` varchar(255) NOT NULL DEFAULT '',
  `price` varchar(15) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `status` varchar(50) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `sub_item_name_trans` text,
  `item_description_trans` text,
  PRIMARY KEY (`sub_item_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `sub_item_name` (`sub_item_name`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_subcategory_item`
--

LOCK TABLES `mt_subcategory_item` WRITE;
/*!40000 ALTER TABLE `mt_subcategory_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_subcategory_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `mt_view_location_rate`
--

DROP TABLE IF EXISTS `mt_view_location_rate`;
/*!50001 DROP VIEW IF EXISTS `mt_view_location_rate`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `mt_view_location_rate` (
  `rate_id` tinyint NOT NULL,
  `merchant_id` tinyint NOT NULL,
  `country_id` tinyint NOT NULL,
  `country_name` tinyint NOT NULL,
  `state_id` tinyint NOT NULL,
  `state_name` tinyint NOT NULL,
  `city_id` tinyint NOT NULL,
  `city_name` tinyint NOT NULL,
  `postal_code` tinyint NOT NULL,
  `area_id` tinyint NOT NULL,
  `area_name` tinyint NOT NULL,
  `fee` tinyint NOT NULL,
  `sequence` tinyint NOT NULL,
  `date_created` tinyint NOT NULL,
  `date_modified` tinyint NOT NULL,
  `ip_address` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `mt_view_merchant`
--

DROP TABLE IF EXISTS `mt_view_merchant`;
/*!50001 DROP VIEW IF EXISTS `mt_view_merchant`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `mt_view_merchant` (
  `merchant_id` tinyint NOT NULL,
  `restaurant_slug` tinyint NOT NULL,
  `restaurant_name` tinyint NOT NULL,
  `restaurant_phone` tinyint NOT NULL,
  `contact_name` tinyint NOT NULL,
  `contact_phone` tinyint NOT NULL,
  `contact_email` tinyint NOT NULL,
  `country_code` tinyint NOT NULL,
  `street` tinyint NOT NULL,
  `city` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `post_code` tinyint NOT NULL,
  `cuisine` tinyint NOT NULL,
  `service` tinyint NOT NULL,
  `free_delivery` tinyint NOT NULL,
  `delivery_estimation` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `password` tinyint NOT NULL,
  `activation_key` tinyint NOT NULL,
  `activation_token` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `date_created` tinyint NOT NULL,
  `date_modified` tinyint NOT NULL,
  `date_activated` tinyint NOT NULL,
  `last_login` tinyint NOT NULL,
  `ip_address` tinyint NOT NULL,
  `package_id` tinyint NOT NULL,
  `package_price` tinyint NOT NULL,
  `membership_expired` tinyint NOT NULL,
  `payment_steps` tinyint NOT NULL,
  `is_featured` tinyint NOT NULL,
  `is_ready` tinyint NOT NULL,
  `is_sponsored` tinyint NOT NULL,
  `sponsored_expiration` tinyint NOT NULL,
  `lost_password_code` tinyint NOT NULL,
  `user_lang` tinyint NOT NULL,
  `membership_purchase_date` tinyint NOT NULL,
  `sort_featured` tinyint NOT NULL,
  `is_commission` tinyint NOT NULL,
  `percent_commision` tinyint NOT NULL,
  `abn` tinyint NOT NULL,
  `session_token` tinyint NOT NULL,
  `commision_type` tinyint NOT NULL,
  `mobile_session_token` tinyint NOT NULL,
  `merchant_key` tinyint NOT NULL,
  `latitude` tinyint NOT NULL,
  `lontitude` tinyint NOT NULL,
  `delivery_charges` tinyint NOT NULL,
  `minimum_order` tinyint NOT NULL,
  `delivery_minimum_order` tinyint NOT NULL,
  `delivery_maximum_order` tinyint NOT NULL,
  `pickup_minimum_order` tinyint NOT NULL,
  `pickup_maximum_order` tinyint NOT NULL,
  `country_name` tinyint NOT NULL,
  `country_id` tinyint NOT NULL,
  `state_id` tinyint NOT NULL,
  `city_id` tinyint NOT NULL,
  `area_id` tinyint NOT NULL,
  `logo` tinyint NOT NULL,
  `merchant_type` tinyint NOT NULL,
  `invoice_terms` tinyint NOT NULL,
  `payment_gateway_ref` tinyint NOT NULL,
  `user_access` tinyint NOT NULL,
  `ratings` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `mt_view_order_details`
--

DROP TABLE IF EXISTS `mt_view_order_details`;
/*!50001 DROP VIEW IF EXISTS `mt_view_order_details`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `mt_view_order_details` (
  `id` tinyint NOT NULL,
  `order_id` tinyint NOT NULL,
  `client_id` tinyint NOT NULL,
  `item_id` tinyint NOT NULL,
  `item_name` tinyint NOT NULL,
  `order_notes` tinyint NOT NULL,
  `normal_price` tinyint NOT NULL,
  `discounted_price` tinyint NOT NULL,
  `size` tinyint NOT NULL,
  `qty` tinyint NOT NULL,
  `cooking_ref` tinyint NOT NULL,
  `addon` tinyint NOT NULL,
  `ingredients` tinyint NOT NULL,
  `non_taxable` tinyint NOT NULL,
  `merchant_id` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `date_created` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `mt_view_ratings`
--

DROP TABLE IF EXISTS `mt_view_ratings`;
/*!50001 DROP VIEW IF EXISTS `mt_view_ratings`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `mt_view_ratings` (
  `merchant_id` tinyint NOT NULL,
  `ratings` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `mt_voucher`
--

DROP TABLE IF EXISTS `mt_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_voucher` (
  `voucher_id` int(14) NOT NULL AUTO_INCREMENT,
  `voucher_name` varchar(255) NOT NULL DEFAULT '',
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `number_of_voucher` int(14) NOT NULL DEFAULT '0',
  `amount` float NOT NULL,
  `voucher_type` varchar(100) NOT NULL DEFAULT 'fixed amount',
  `status` varchar(100) NOT NULL DEFAULT '',
  `date_created` varchar(50) NOT NULL DEFAULT '',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`voucher_id`),
  KEY `voucher_name` (`voucher_name`),
  KEY `merchant_id` (`merchant_id`),
  KEY `voucher_type` (`voucher_type`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_voucher`
--

LOCK TABLES `mt_voucher` WRITE;
/*!40000 ALTER TABLE `mt_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_voucher_list`
--

DROP TABLE IF EXISTS `mt_voucher_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_voucher_list` (
  `voucher_id` int(14) NOT NULL AUTO_INCREMENT,
  `voucher_code` varchar(50) NOT NULL DEFAULT '',
  `status` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT 'unused',
  `client_id` int(14) NOT NULL DEFAULT '0',
  `date_used` varchar(50) NOT NULL DEFAULT '',
  `order_id` int(14) NOT NULL DEFAULT '0',
  PRIMARY KEY (`voucher_id`),
  KEY `voucher_code` (`voucher_code`),
  KEY `status` (`status`),
  KEY `client_id` (`client_id`),
  KEY `order_id` (`order_id`),
  KEY `date_used` (`date_used`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_voucher_list`
--

LOCK TABLES `mt_voucher_list` WRITE;
/*!40000 ALTER TABLE `mt_voucher_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_voucher_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_voucher_new`
--

DROP TABLE IF EXISTS `mt_voucher_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_voucher_new` (
  `voucher_id` int(14) NOT NULL AUTO_INCREMENT,
  `voucher_owner` varchar(255) NOT NULL DEFAULT 'merchant',
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `joining_merchant` text,
  `voucher_name` varchar(255) NOT NULL DEFAULT '',
  `voucher_type` varchar(255) NOT NULL DEFAULT '',
  `amount` float(14,4) NOT NULL DEFAULT '0.0000',
  `expiration` date DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(100) NOT NULL DEFAULT '',
  `used_once` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`voucher_id`),
  KEY `voucher_name` (`voucher_name`),
  KEY `status` (`status`),
  KEY `voucher_owner` (`voucher_owner`),
  KEY `merchant_id` (`merchant_id`),
  KEY `voucher_type` (`voucher_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_voucher_new`
--

LOCK TABLES `mt_voucher_new` WRITE;
/*!40000 ALTER TABLE `mt_voucher_new` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_voucher_new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_withdrawal`
--

DROP TABLE IF EXISTS `mt_withdrawal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_withdrawal` (
  `withdrawal_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `payment_type` varchar(100) NOT NULL DEFAULT '',
  `payment_method` varchar(100) NOT NULL DEFAULT '',
  `amount` float(14,4) NOT NULL DEFAULT '0.0000',
  `current_balance` float(14,4) NOT NULL DEFAULT '0.0000',
  `balance` float(14,4) NOT NULL DEFAULT '0.0000',
  `currency_code` varchar(3) NOT NULL DEFAULT '',
  `account` varchar(255) NOT NULL DEFAULT '',
  `account_name` varchar(255) NOT NULL DEFAULT '',
  `bank_account_number` varchar(255) NOT NULL DEFAULT '',
  `swift_code` varchar(100) NOT NULL DEFAULT '',
  `bank_name` varchar(255) NOT NULL DEFAULT '',
  `bank_branch` varchar(255) NOT NULL DEFAULT '',
  `bank_country` varchar(50) NOT NULL DEFAULT '',
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `viewed` int(2) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_to_process` date DEFAULT NULL,
  `date_process` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_raw_response` text,
  `withdrawal_token` text,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `bank_type` varchar(255) NOT NULL DEFAULT 'default',
  PRIMARY KEY (`withdrawal_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `payment_type` (`payment_type`),
  KEY `payment_method` (`payment_method`),
  KEY `status` (`status`),
  KEY `viewed` (`viewed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_withdrawal`
--

LOCK TABLES `mt_withdrawal` WRITE;
/*!40000 ALTER TABLE `mt_withdrawal` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_withdrawal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_zipcode`
--

DROP TABLE IF EXISTS `mt_zipcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_zipcode` (
  `zipcode_id` int(14) NOT NULL AUTO_INCREMENT,
  `zipcode` varchar(255) NOT NULL DEFAULT '',
  `country_code` varchar(5) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `area` varchar(255) NOT NULL DEFAULT '',
  `stree_name` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`zipcode_id`),
  KEY `country_code` (`country_code`),
  KEY `area` (`area`),
  KEY `stree_name` (`stree_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_zipcode`
--

LOCK TABLES `mt_zipcode` WRITE;
/*!40000 ALTER TABLE `mt_zipcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_zipcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'new_upsa'
--

--
-- Dumping routines for database 'new_upsa'
--

--
-- Final view structure for view `mt_view_location_rate`
--

/*!50001 DROP TABLE IF EXISTS `mt_view_location_rate`*/;
/*!50001 DROP VIEW IF EXISTS `mt_view_location_rate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`yemeksiparisi`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mt_view_location_rate` AS select `a`.`rate_id` AS `rate_id`,`a`.`merchant_id` AS `merchant_id`,`a`.`country_id` AS `country_id`,`b`.`country_name` AS `country_name`,`a`.`state_id` AS `state_id`,`c`.`name` AS `state_name`,`a`.`city_id` AS `city_id`,`d`.`name` AS `city_name`,`d`.`postal_code` AS `postal_code`,`a`.`area_id` AS `area_id`,`e`.`name` AS `area_name`,`a`.`fee` AS `fee`,`a`.`sequence` AS `sequence`,`a`.`date_created` AS `date_created`,`a`.`date_modified` AS `date_modified`,`a`.`ip_address` AS `ip_address` from ((((`mt_location_rate` `a` left join `mt_location_countries` `b` on((`a`.`country_id` = `b`.`country_id`))) left join `mt_location_states` `c` on((`a`.`state_id` = `c`.`state_id`))) left join `mt_location_cities` `d` on((`a`.`city_id` = `d`.`city_id`))) left join `mt_location_area` `e` on((`a`.`area_id` = `e`.`area_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mt_view_merchant`
--

/*!50001 DROP TABLE IF EXISTS `mt_view_merchant`*/;
/*!50001 DROP VIEW IF EXISTS `mt_view_merchant`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`yemeksiparisi`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mt_view_merchant` AS select `a`.`merchant_id` AS `merchant_id`,`a`.`restaurant_slug` AS `restaurant_slug`,`a`.`restaurant_name` AS `restaurant_name`,`a`.`restaurant_phone` AS `restaurant_phone`,`a`.`contact_name` AS `contact_name`,`a`.`contact_phone` AS `contact_phone`,`a`.`contact_email` AS `contact_email`,`a`.`country_code` AS `country_code`,`a`.`street` AS `street`,`a`.`city` AS `city`,`a`.`state` AS `state`,`a`.`post_code` AS `post_code`,`a`.`cuisine` AS `cuisine`,`a`.`service` AS `service`,`a`.`free_delivery` AS `free_delivery`,`a`.`delivery_estimation` AS `delivery_estimation`,`a`.`username` AS `username`,`a`.`password` AS `password`,`a`.`activation_key` AS `activation_key`,`a`.`activation_token` AS `activation_token`,`a`.`status` AS `status`,`a`.`date_created` AS `date_created`,`a`.`date_modified` AS `date_modified`,`a`.`date_activated` AS `date_activated`,`a`.`last_login` AS `last_login`,`a`.`ip_address` AS `ip_address`,`a`.`package_id` AS `package_id`,`a`.`package_price` AS `package_price`,`a`.`membership_expired` AS `membership_expired`,`a`.`payment_steps` AS `payment_steps`,`a`.`is_featured` AS `is_featured`,`a`.`is_ready` AS `is_ready`,`a`.`is_sponsored` AS `is_sponsored`,`a`.`sponsored_expiration` AS `sponsored_expiration`,`a`.`lost_password_code` AS `lost_password_code`,`a`.`user_lang` AS `user_lang`,`a`.`membership_purchase_date` AS `membership_purchase_date`,`a`.`sort_featured` AS `sort_featured`,`a`.`is_commission` AS `is_commission`,`a`.`percent_commision` AS `percent_commision`,`a`.`abn` AS `abn`,`a`.`session_token` AS `session_token`,`a`.`commision_type` AS `commision_type`,`a`.`mobile_session_token` AS `mobile_session_token`,`a`.`merchant_key` AS `merchant_key`,`a`.`latitude` AS `latitude`,`a`.`lontitude` AS `lontitude`,`a`.`delivery_charges` AS `delivery_charges`,`a`.`minimum_order` AS `minimum_order`,`a`.`delivery_minimum_order` AS `delivery_minimum_order`,`a`.`delivery_maximum_order` AS `delivery_maximum_order`,`a`.`pickup_minimum_order` AS `pickup_minimum_order`,`a`.`pickup_maximum_order` AS `pickup_maximum_order`,`a`.`country_name` AS `country_name`,`a`.`country_id` AS `country_id`,`a`.`state_id` AS `state_id`,`a`.`city_id` AS `city_id`,`a`.`area_id` AS `area_id`,`a`.`logo` AS `logo`,`a`.`merchant_type` AS `merchant_type`,`a`.`invoice_terms` AS `invoice_terms`,`a`.`payment_gateway_ref` AS `payment_gateway_ref`,`a`.`user_access` AS `user_access`,`f`.`ratings` AS `ratings` from (`mt_merchant` `a` left join `mt_view_ratings` `f` on((`a`.`merchant_id` = `f`.`merchant_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mt_view_order_details`
--

/*!50001 DROP TABLE IF EXISTS `mt_view_order_details`*/;
/*!50001 DROP VIEW IF EXISTS `mt_view_order_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`yemeksiparisi`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mt_view_order_details` AS select `a`.`id` AS `id`,`a`.`order_id` AS `order_id`,`a`.`client_id` AS `client_id`,`a`.`item_id` AS `item_id`,`a`.`item_name` AS `item_name`,`a`.`order_notes` AS `order_notes`,`a`.`normal_price` AS `normal_price`,`a`.`discounted_price` AS `discounted_price`,`a`.`size` AS `size`,`a`.`qty` AS `qty`,`a`.`cooking_ref` AS `cooking_ref`,`a`.`addon` AS `addon`,`a`.`ingredients` AS `ingredients`,`a`.`non_taxable` AS `non_taxable`,`b`.`merchant_id` AS `merchant_id`,`b`.`status` AS `status`,`b`.`date_created` AS `date_created` from (`mt_order_details` `a` left join `mt_order` `b` on((`a`.`order_id` = `b`.`order_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mt_view_ratings`
--

/*!50001 DROP TABLE IF EXISTS `mt_view_ratings`*/;
/*!50001 DROP VIEW IF EXISTS `mt_view_ratings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`yemeksiparisi`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mt_view_ratings` AS select `mt_review`.`merchant_id` AS `merchant_id`,(sum(`mt_review`.`rating`) / count(0)) AS `ratings` from `mt_review` where (`mt_review`.`status` in ('publish','published')) group by `mt_review`.`merchant_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-22 15:47:39
