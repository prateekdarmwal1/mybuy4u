/*
SQLyog - Free MySQL GUI v5.02
Host - 5.1.48-community : Database - mybuy4u
*********************************************************************
Server version : 5.1.48-community
*/


create database if not exists `mybuy4u`;

USE `mybuy4u`;

/*Table structure for table `ad_portion_available` */

DROP TABLE IF EXISTS `ad_portion_available`;

CREATE TABLE `ad_portion_available` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `AD_PORTION` bigint(10) NOT NULL,
  `FROM_JANUARY` char(1) NOT NULL,
  `FROM_FEBRUARY` char(1) NOT NULL,
  `FROM_MARCH` char(1) NOT NULL,
  `FROM_APRIL` char(1) NOT NULL,
  `FROM_MAY` char(1) NOT NULL,
  `FROM_JUNE` char(1) NOT NULL,
  `FROM_JULY` char(1) NOT NULL,
  `FROM_AUGUST` char(1) NOT NULL,
  `FROM_SEPTEMBER` char(1) NOT NULL,
  `FROM_OCTOBER` char(1) NOT NULL,
  `FROM_NOVEMBER` char(1) NOT NULL,
  `FROM_DECEMBER` char(1) NOT NULL,
  `FROM_YEAR` char(4) NOT NULL,
  `TO_JANUARY` char(1) NOT NULL,
  `TO_FEBRUARY` char(1) NOT NULL,
  `TO_MARCH` char(1) NOT NULL,
  `TO_APRIL` char(1) NOT NULL,
  `TO_MAY` char(1) NOT NULL,
  `TO_JUNE` char(1) NOT NULL,
  `TO_JULY` char(1) NOT NULL,
  `TO_AUGUST` char(1) NOT NULL,
  `TO_SEPTEMBER` char(1) NOT NULL,
  `TO_OCTOBER` char(1) NOT NULL,
  `TO_NOVEMBER` char(1) NOT NULL,
  `TO_DECEMBER` char(1) NOT NULL,
  `TO_YEAR` char(4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_AD_PORTION_AVAILABLE` (`AD_PORTION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `CITY` varchar(50) DEFAULT NULL,
  `STREET_NAME` varchar(255) DEFAULT NULL,
  `AREA_NAME` varchar(255) DEFAULT NULL,
  `AREA_CODE` varchar(21) DEFAULT NULL,
  `COUNTRY` varchar(12) DEFAULT NULL,
  `STATE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ADDRESS_CITY` (`CITY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ADMIN_NAME` varchar(100) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `PASSWORD` varchar(40) NOT NULL,
  `ROLE` bigint(10) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `IS_ACTIVE` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ADMIN_NAME` (`EMAIL`),
  KEY `FK_ADMIN_ROLE` (`ROLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `advertisement` */

DROP TABLE IF EXISTS `advertisement`;

CREATE TABLE `advertisement` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` longtext,
  `FROM_DATE` datetime NOT NULL,
  `TO_DATE` datetime NOT NULL,
  `ADVERTISER` bigint(10) NOT NULL,
  `ADVERTISEMENT_PORTION` bigint(10) NOT NULL,
  `SUB_CATEGORY_ID` bigint(10) NOT NULL,
  `WEBSITE_URL` varchar(255) NOT NULL,
  `PRICE` double NOT NULL,
  `PRICE_UNIT` varchar(10) NOT NULL DEFAULT 'INR',
  PRIMARY KEY (`ID`),
  KEY `FK_ADVERTISEMENT_ADVERTISEMENT_PORTION` (`ADVERTISEMENT_PORTION`),
  KEY `FK_ADVERTISEMENT_SUB_CATEGORY_ID` (`SUB_CATEGORY_ID`),
  KEY `FK_ADVERTISEMENT_ADVERISER` (`ADVERTISER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `advertisement_portion` */

DROP TABLE IF EXISTS `advertisement_portion`;

CREATE TABLE `advertisement_portion` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `SUB_TAB` bigint(10) DEFAULT NULL,
  `TAB` bigint(10) NOT NULL,
  `ADVERTISEMENT_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ADVERTISEMENT_PORTION_SUB_TAB` (`SUB_TAB`),
  KEY `FK_ADVERTISEMENT_PORTION_TAB` (`TAB`),
  KEY `FK_ADVERTISEMENT_PORTION_ADVERTISEMENT_ID` (`ADVERTISEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `advertiser` */

DROP TABLE IF EXISTS `advertiser`;

CREATE TABLE `advertiser` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(255) NOT NULL,
  `LAST_NAME` varchar(255) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `CONTACT_NUMBER` varchar(21) DEFAULT NULL,
  `ADDRESS1` varchar(255) NOT NULL,
  `ADDRESS2` varchar(255) NOT NULL,
  `PIN_CODE` varchar(10) NOT NULL,
  `CITY` varchar(255) NOT NULL,
  `STATE` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ADVERTISER_STATE` (`STATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `apartment` */

DROP TABLE IF EXISTS `apartment`;

CREATE TABLE `apartment` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `OWNER_ID` bigint(10) NOT NULL,
  `OWNER_TYPE` varchar(255) DEFAULT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `ADDRESS` bigint(10) NOT NULL,
  `NUMBER_OF` bigint(10) DEFAULT '0',
  `OWNER_ADMIN` bigint(10) DEFAULT NULL,
  `USER_ID` bigint(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `FK_APARTMENT_ADDRESS` (`ADDRESS`),
  KEY `FK_APARTMENT_OWNER` (`OWNER_ADMIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `apartment_image` */

DROP TABLE IF EXISTS `apartment_image`;

CREATE TABLE `apartment_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) DEFAULT NULL,
  `APARTMENT_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_APARTMENT_IMAGE_APARTMENT_ID` (`APARTMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `astrologer` */

DROP TABLE IF EXISTS `astrologer`;

CREATE TABLE `astrologer` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` longtext,
  `ADDRESS` bigint(10) NOT NULL,
  `OWNER_ID` bigint(10) DEFAULT NULL,
  `BACKGROUND_COLOUR` varchar(7) DEFAULT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `USER_ID` bigint(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `FK_ASTROLOGER_ADDRESS` (`ADDRESS`),
  KEY `FK_ASTROLOGER_OWNER_ADMIN` (`OWNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `astrologer_image` */

DROP TABLE IF EXISTS `astrologer_image`;

CREATE TABLE `astrologer_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `ASTROLOGER_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ASTROLOGER_IMAGE_ASTROLOGER_ID` (`ASTROLOGER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `astrologer_tab` */

DROP TABLE IF EXISTS `astrologer_tab`;

CREATE TABLE `astrologer_tab` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` longtext,
  `TAB` varchar(255) NOT NULL,
  `ASTROLOGER_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ASTROLOGER_TAB_ASTROLOGER_ID` (`ASTROLOGER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `banner_ad_image_detail` */

DROP TABLE IF EXISTS `banner_ad_image_detail`;

CREATE TABLE `banner_ad_image_detail` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `MIN_PAY_OUT_PER_DAY` bigint(10) DEFAULT NULL,
  `MIN_PAY_OUT` bigint(10) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `SHOP_CATEGORY_ID` bigint(10) DEFAULT NULL,
  `BUSINESS_TYPE` varchar(20) DEFAULT NULL,
  `TOTAL_PRICE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `banner_ad_text` */

DROP TABLE IF EXISTS `banner_ad_text`;

CREATE TABLE `banner_ad_text` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `MIN_PAY_OUT_PER_DAY` bigint(10) DEFAULT NULL,
  `MIN_PAY_OUT` bigint(10) DEFAULT NULL,
  `TOTAL_PRICE` bigint(10) DEFAULT NULL,
  `SHOP_CATEGORY_ID` bigint(10) DEFAULT NULL,
  `SHOP_ID` bigint(10) DEFAULT NULL,
  `BUSINESS_TYPE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `banner_image` */

DROP TABLE IF EXISTS `banner_image`;

CREATE TABLE `banner_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) DEFAULT NULL,
  `IMAGE_PATH_BIG` varchar(255) DEFAULT NULL,
  `BANNER_IMAGE_DETAIL_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `PUBLISHER` varchar(255) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `COST` varchar(255) NOT NULL,
  `COST_UNIT` varchar(10) NOT NULL DEFAULT 'INR',
  `ISBN_NUMBER` varchar(255) DEFAULT NULL,
  `EDITION` varchar(255) DEFAULT NULL,
  `USER_LABEL` varchar(255) DEFAULT NULL,
  `SHOP_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_BOOK_SHOP_ID` (`SHOP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `book_image` */

DROP TABLE IF EXISTS `book_image`;

CREATE TABLE `book_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `BOOK_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_BOOK_IMAGE_BOOK_ID` (`BOOK_ID`)
) InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `boutique` */

DROP TABLE IF EXISTS `boutique`;

CREATE TABLE `boutique` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(180) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COST_UNIT` varchar(10) NOT NULL DEFAULT 'INR',
  `COST` varchar(255) DEFAULT NULL,
  `SIZE` varchar(255) DEFAULT NULL,
  `SHOP_ID` bigint(10) DEFAULT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_BUTIQUE_SHOP_ID` (`SHOP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `boutique_image` */

DROP TABLE IF EXISTS `boutique_image`;

CREATE TABLE `boutique_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `BOUTIQUE_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_BUTIQUE_IMAGE_BUTIQUE` (`BOUTIQUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `business` */

DROP TABLE IF EXISTS `business`;

CREATE TABLE `business` (
  `ID` int(255) NOT NULL,
  `BUSINESS` varchar(50) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `business_name` */

DROP TABLE IF EXISTS `business_name`;

CREATE TABLE `business_name` (
  `ID` int(50) NOT NULL AUTO_INCREMENT,
  `BUSINESS_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `business_type` */

DROP TABLE IF EXISTS `business_type`;

CREATE TABLE `business_type` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(21) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `STATE` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_CITY_STATE` (`STATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `coaching_institute` */

DROP TABLE IF EXISTS `coaching_institute`;

CREATE TABLE `coaching_institute` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `DESCRIPTION` longtext NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `coaching_institute_gallery_image` */

DROP TABLE IF EXISTS `coaching_institute_gallery_image`;

CREATE TABLE `coaching_institute_gallery_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) DEFAULT NULL,
  `DESCRIPTION` longtext,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `COACHING_INSTITUTE_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_COACHING_INSTITUTE_GALLERY_IMAGE_COACHING_INSTITUTE_ID` (`COACHING_INSTITUTE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `coaching_institute_image` */

DROP TABLE IF EXISTS `coaching_institute_image`;

CREATE TABLE `coaching_institute_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `COACHING_INSTITUTE_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_COACHING_INSTITUTE_IMAGE_COACHING_INSTITUTE_ID` (`COACHING_INSTITUTE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `coaching_institute_tab` */

DROP TABLE IF EXISTS `coaching_institute_tab`;

CREATE TABLE `coaching_institute_tab` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` longtext NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `COACHING_INSTITUTE_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_COACHING_INSTITUTE_TAB_COACHING_INSTITUTE_ID` (`COACHING_INSTITUTE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `coaching_institute_tab_image` */

DROP TABLE IF EXISTS `coaching_institute_tab_image`;

CREATE TABLE `coaching_institute_tab_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `COACHING_INSTITUTE_TAB_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_COACHING_INSTITUTE_TAB_IMAGE_COACHING_INSTITUTE_TAB_ID` (`COACHING_INSTITUTE_TAB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` longtext,
  `STANDARD` varchar(255) DEFAULT NULL,
  `ISO_CERTIFIED` varchar(255) DEFAULT NULL,
  `STRENGTH` varchar(255) DEFAULT NULL,
  `OWNER_ID` bigint(10) DEFAULT NULL,
  `ADDRESS` bigint(10) DEFAULT NULL,
  `OWNER_ADMIN` bigint(10) DEFAULT NULL,
  `WEBSITE_URL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`),
  KEY `FK_COMPANY_ADDRESS` (`ADDRESS`),
  KEY `FK_COMPANY_OWNER` (`OWNER_ID`),
  KEY `FK_COMPANY_OWNER_ADMIN` (`OWNER_ADMIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `company_image` */

DROP TABLE IF EXISTS `company_image`;

CREATE TABLE `company_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `COMPANY_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_COMPANY_IMAGE_COMPANY_ID` (`COMPANY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `company_tab` */

DROP TABLE IF EXISTS `company_tab`;

CREATE TABLE `company_tab` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` longtext NOT NULL,
  `COMPANY_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_COMPANY_TAB_ID` (`COMPANY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `complex` */

DROP TABLE IF EXISTS `complex`;

CREATE TABLE `complex` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `SIZE` varchar(255) NOT NULL,
  `COST` double NOT NULL DEFAULT '0',
  `OWNER_ID` bigint(20) NOT NULL,
  `OWNER_TYPE` varchar(255) DEFAULT NULL,
  `ADDRESS` bigint(10) NOT NULL,
  `OWNER_ADMIN` bigint(10) DEFAULT NULL,
  `COST_UNIT` varchar(10) NOT NULL DEFAULT 'INR',
  `USER_ID` bigint(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `FK_COMPLEX_ADDRESS` (`ADDRESS`),
  KEY `FK_COMPLEX_OWNER_ADMIN` (`OWNER_ADMIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `complex_image` */

DROP TABLE IF EXISTS `complex_image`;

CREATE TABLE `complex_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) DEFAULT NULL,
  `COMPLEX_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_COMPLEX_IMAGE_COMPLEX_ID` (`COMPLEX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `computer` */

DROP TABLE IF EXISTS `computer`;

CREATE TABLE `computer` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `MODEL` varchar(21) NOT NULL,
  `PROCESSOR` varchar(21) NOT NULL,
  `MOTHERBOARD` varchar(100) NOT NULL,
  `RAM` varchar(11) NOT NULL,
  `HARD_DISK_DRIVE` varchar(21) NOT NULL,
  `CABINET` varchar(100) DEFAULT NULL,
  `KEYBOARD` varchar(21) DEFAULT NULL,
  `MOUSE` varchar(21) DEFAULT NULL,
  `UPS` varchar(21) DEFAULT NULL,
  `MONITOR` varchar(50) NOT NULL,
  `SPEAKER` varchar(50) DEFAULT NULL,
  `COST` varchar(255) NOT NULL,
  `COST_UNIT` varchar(10) NOT NULL DEFAULT 'INR',
  `OPERATING_SYSTEM` varchar(50) NOT NULL,
  `WARRANTY` varchar(11) NOT NULL,
  `SHOP_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_COMPUTER_SHOP_ID` (`SHOP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `computer_image` */

DROP TABLE IF EXISTS `computer_image`;

CREATE TABLE `computer_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `COMPUTER_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_COMPUTER_IMAGE_COMPUTER_ID` (`COMPUTER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `designer_cloth` */

DROP TABLE IF EXISTS `designer_cloth`;

CREATE TABLE `designer_cloth` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `COST_UNIT` varchar(10) NOT NULL DEFAULT 'INR',
  `COST` varchar(255) NOT NULL,
  `SIZE` varchar(255) DEFAULT NULL,
  `SHOP_ID` bigint(10) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_DESIGNER_CLOTHE_SHOP_ID` (`SHOP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `designer_cloth_image` */

DROP TABLE IF EXISTS `designer_cloth_image`;

CREATE TABLE `designer_cloth_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `DESIGNERCLOTH_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_DESIGNER_CLOTH_IMAGE_DESIGNER_CLOTH` (`DESIGNERCLOTH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `directory` */

DROP TABLE IF EXISTS `directory`;

CREATE TABLE `directory` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` longtext NOT NULL,
  `DIRECTORY_CATEGORY` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_DIRECTORY_DIRECTORY_CATEGORY` (`DIRECTORY_CATEGORY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `directory_category` */

DROP TABLE IF EXISTS `directory_category`;

CREATE TABLE `directory_category` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `eshop_product` */

DROP TABLE IF EXISTS `eshop_product`;

CREATE TABLE `eshop_product` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `COST` double NOT NULL,
  `COST_UNIT` varchar(10) NOT NULL DEFAULT 'INR',
  `DESCRIPTION` varchar(255) NOT NULL,
  `SHOP_ID` bigint(10) NOT NULL,
  `SHOP_CATEGORY` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `eshop_product_image` */

DROP TABLE IF EXISTS `eshop_product_image`;

CREATE TABLE `eshop_product_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `ESHOP_PRODUCT_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `event` */

DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `SHAPE` varchar(255) DEFAULT NULL,
  `FACING` varchar(255) DEFAULT NULL,
  `APPROVAL` varchar(255) DEFAULT NULL,
  `SIZE` varchar(255) DEFAULT NULL,
  `COST` double NOT NULL DEFAULT '0',
  `EVENT_TYPE` varchar(50) DEFAULT NULL,
  `OWNER` bigint(10) DEFAULT NULL,
  `ADDRESS` bigint(10) DEFAULT NULL,
  `OWNER_ID` bigint(10) DEFAULT NULL,
  `COST_UNIT` varchar(10) NOT NULL DEFAULT 'INR',
  `USER_ID` bigint(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `FK_LAND_ADDRESS` (`ADDRESS`),
  KEY `FK_LAND_LAND_TYPE` (`EVENT_TYPE`),
  KEY `FK_LAND_USER` (`OWNER`),
  KEY `FK_LAND_OWNER_ADMIN` (`OWNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `event_image` */

DROP TABLE IF EXISTS `event_image`;

CREATE TABLE `event_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) DEFAULT NULL,
  `EVENT_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_EVENT_IMAGE_EVENT_ID` (`EVENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `furniture` */

DROP TABLE IF EXISTS `furniture`;

CREATE TABLE `furniture` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `COST` varchar(255) NOT NULL,
  `COST_UNIT` varchar(10) NOT NULL DEFAULT 'INR',
  `MATERIAL_USED` varchar(255) DEFAULT NULL,
  `SHOP_ID` bigint(10) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_FURNITURE_SHOP_ID` (`SHOP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `furniture_image` */

DROP TABLE IF EXISTS `furniture_image`;

CREATE TABLE `furniture_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `FURNITURE_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_FURNITURE_IMAGE_FURNITURE_ID` (`FURNITURE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `home_sale` */

DROP TABLE IF EXISTS `home_sale`;

CREATE TABLE `home_sale` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `MIN_PAY_OUT_PER_DAY` bigint(10) DEFAULT NULL,
  `MIN_PAY_OUT` varchar(10) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `SHOP_CATEGORY_ID` bigint(10) DEFAULT NULL,
  `SHOP_ID` bigint(10) DEFAULT NULL,
  `TOTAL_PRICE` bigint(10) DEFAULT NULL,
  `BUSINESS_TYPE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `home_sale_detail_image` */

DROP TABLE IF EXISTS `home_sale_detail_image`;

CREATE TABLE `home_sale_detail_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) DEFAULT NULL,
  `IMAGE_PATH_BIG` varchar(255) DEFAULT NULL,
  `HOME_SALE_DETAIL_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `home_sale_details` */

DROP TABLE IF EXISTS `home_sale_details`;

CREATE TABLE `home_sale_details` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `MIN_PAY_OUT_PER_DAY` bigint(10) DEFAULT NULL,
  `MIN_PAY_OUT` bigint(10) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `TOTAL_PRICE` bigint(10) DEFAULT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `BUSINESS_TYPE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `home_sale_image` */

DROP TABLE IF EXISTS `home_sale_image`;

CREATE TABLE `home_sale_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) DEFAULT NULL,
  `IMAGE_PATH_BIG` varchar(255) DEFAULT NULL,
  `HOME_SALE_ID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `house` */

DROP TABLE IF EXISTS `house`;

CREATE TABLE `house` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `OWNER_TYPE` varchar(255) DEFAULT NULL,
  `NUMBER_OF_FLOOR` int(11) DEFAULT '1',
  `SIZE` varchar(255) DEFAULT NULL,
  `OWNER_ID` bigint(10) NOT NULL,
  `COST` double NOT NULL DEFAULT '0',
  `HOUSE_CATEGORY` varchar(255) DEFAULT NULL,
  `COST_UNIT` varchar(10) NOT NULL DEFAULT 'INR',
  `HOUSE_TYPE` bigint(10) NOT NULL,
  `ADDRESS` bigint(10) NOT NULL,
  `OWNER_ADMIN` bigint(10) DEFAULT NULL,
  `HOUSE_NUMBER` varchar(21) DEFAULT NULL,
  `USER_ID` bigint(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `FK_HOUSE_ADDRESS` (`ADDRESS`),
  KEY `FK_HOUSE_HOUSE_TYPE` (`HOUSE_TYPE`),
  KEY `FK_HOUSE_OWNER_ADMIN` (`OWNER_ADMIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `house_image` */

DROP TABLE IF EXISTS `house_image`;

CREATE TABLE `house_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) DEFAULT NULL,
  `HOUSE_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_HOUSE_IMAGE_HOUE_ID` (`HOUSE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `house_type` */

DROP TABLE IF EXISTS `house_type`;

CREATE TABLE `house_type` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `image` */

DROP TABLE IF EXISTS `image`;

CREATE TABLE `image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `ITEM_TYPE` varchar(255) NOT NULL,
  `ITEM_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `image_banner_ad` */

DROP TABLE IF EXISTS `image_banner_ad`;

CREATE TABLE `image_banner_ad` (
  `ID` bigint(10) NOT NULL,
  `IMAGE_PATH` varchar(255) DEFAULT NULL,
  `MIN_PAY_OUT_PER_DAY` bigint(10) DEFAULT NULL,
  `MIN_PAY_OUT` bigint(10) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `TOTAL_PRICE` bigint(10) DEFAULT NULL,
  `SHOP_CATEGORY_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `institute` */

DROP TABLE IF EXISTS `institute`;

CREATE TABLE `institute` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `DESCRIPTION` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `institute_image` */

DROP TABLE IF EXISTS `institute_image`;

CREATE TABLE `institute_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `INSTITUTE_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_INSTITUTE_IMAGE_INSTITUTE_ID` (`INSTITUTE_ID`)
) ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `institute_tab` */

DROP TABLE IF EXISTS `institute_tab`;

CREATE TABLE `institute_tab` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` longtext,
  `TAB` varchar(255) NOT NULL,
  `INSTITUTE_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_INSTITUTE_TAB_INSTITUTE_ID` (`INSTITUTE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `institute_tab_image` */

DROP TABLE IF EXISTS `institute_tab_image`;

CREATE TABLE `institute_tab_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `INSTITUTE_TAB_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_INSTITUTE_TAB_IMAGE_INSTITUTE_TAB_ID` (`INSTITUTE_TAB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `interior` */

DROP TABLE IF EXISTS `interior`;

CREATE TABLE `interior` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `COST_UNIT` varchar(6) NOT NULL,
  `COST` double NOT NULL DEFAULT '0',
  `SIZE` varchar(255) DEFAULT NULL,
  `SHOP_ID` bigint(10) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_INTERIOR_SHOP_ID` (`SHOP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `interior_image` */

DROP TABLE IF EXISTS `interior_image`;

CREATE TABLE `interior_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `INTERIOR_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_INTERIOR_IMAGE_INTERIOR_ID` (`INTERIOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `jewelry` */

DROP TABLE IF EXISTS `jewelry`;

CREATE TABLE `jewelry` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `TYPE_UNIT` varchar(21) DEFAULT NULL,
  `COST` varchar(255) NOT NULL,
  `COST_UNIT` varchar(10) NOT NULL DEFAULT 'INR',
  `WEIGHT` varchar(21) NOT NULL,
  `COLOR` varchar(21) DEFAULT NULL,
  `SHOP_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_JEWELRY_SHOP_ID` (`SHOP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `jewelry_image` */

DROP TABLE IF EXISTS `jewelry_image`;

CREATE TABLE `jewelry_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `JEWELRY_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_JEWELRY_IMAGE_JEWELRY_ID` (`JEWELRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `job` */

DROP TABLE IF EXISTS `job`;

CREATE TABLE `job` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` longtext NOT NULL,
  `SALARY` varchar(255) NOT NULL,
  `ACTIVE` tinyint(4) NOT NULL DEFAULT '1',
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `SHOP_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_JOB_SHOP_ID` (`SHOP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `kitchen` */

DROP TABLE IF EXISTS `kitchen`;

CREATE TABLE `kitchen` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` varchar(255) NOT NULL,
  `COST` varchar(255) NOT NULL,
  `COST_UNIT` varchar(10) NOT NULL DEFAULT 'INR',
  `SHOP_ID` bigint(10) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_KITCHEN_SHOP_ID` (`SHOP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `kitchen_image` */

DROP TABLE IF EXISTS `kitchen_image`;

CREATE TABLE `kitchen_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `KITCHEN_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_KITCHEN_IMAGE_KITCHEN_ID` (`KITCHEN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `land` */

DROP TABLE IF EXISTS `land`;

CREATE TABLE `land` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `SHAPE` varchar(255) DEFAULT NULL,
  `FACING` varchar(255) DEFAULT NULL,
  `APPROVAL` varchar(255) DEFAULT NULL,
  `SIZE` varchar(255) DEFAULT NULL,
  `COST` double DEFAULT '0',
  `LAND_TYPE` bigint(10) NOT NULL,
  `OWNER` bigint(10) DEFAULT NULL,
  `ADDRESS` bigint(10) NOT NULL,
  `OWNER_ID` bigint(10) NOT NULL,
  `COST_UNIT` varchar(10) NOT NULL DEFAULT 'INR',
  `USER_ID` bigint(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `FK_LAND_ADDRESS` (`ADDRESS`),
  KEY `FK_LAND_LAND_TYPE` (`LAND_TYPE`),
  KEY `FK_LAND_USER` (`OWNER`),
  KEY `FK_LAND_OWNER_ADMIN` (`OWNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `land_image` */

DROP TABLE IF EXISTS `land_image`;

CREATE TABLE `land_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) DEFAULT NULL,
  `LAND_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_LAND_IMAGE_LAND_ID` (`LAND_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `land_type` */

DROP TABLE IF EXISTS `land_type`;

CREATE TABLE `land_type` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `medical_equipment` */

DROP TABLE IF EXISTS `medical_equipment`;

CREATE TABLE `medical_equipment` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `COST_UNIT` varchar(10) NOT NULL DEFAULT 'INR',
  `COST` varchar(255) NOT NULL,
  `SIZE` varchar(255) NOT NULL,
  `SHOP_ID` bigint(10) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_MEDICAL_EQUIPMENT_SHOP_ID` (`SHOP_ID`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `medical_equipment_image` */

DROP TABLE IF EXISTS `medical_equipment_image`;

CREATE TABLE `medical_equipment_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `MEDICALEQUIPMENT_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_MEDICAL_EQUIPMENT` (`MEDICALEQUIPMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `optical` */

DROP TABLE IF EXISTS `optical`;

CREATE TABLE `optical` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `COST` varchar(255) NOT NULL,
  `COST_UNIT` varchar(10) NOT NULL DEFAULT 'INR',
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `SHOP_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_OPTICAL_SHOP_ID` (`SHOP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `optical_image` */

DROP TABLE IF EXISTS `optical_image`;

CREATE TABLE `optical_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `OPTICAL_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_OPTICAL_IMAGE_OPTICAL_ID` (`OPTICAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `other` */

DROP TABLE IF EXISTS `other`;

CREATE TABLE `other` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `SHAPE` varchar(255) DEFAULT NULL,
  `FACING` varchar(255) DEFAULT NULL,
  `APPROVAL` varchar(255) DEFAULT NULL,
  `SIZE` varchar(255) DEFAULT NULL,
  `COST` double NOT NULL DEFAULT '0',
  `TYPE` varchar(50) DEFAULT NULL,
  `OWNER` bigint(10) DEFAULT NULL,
  `ADDRESS` bigint(10) DEFAULT NULL,
  `OWNER_ID` bigint(10) DEFAULT NULL,
  `COST_UNIT` varchar(10) NOT NULL DEFAULT 'INR',
  `USER_ID` bigint(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `FK_LAND_ADDRESS` (`ADDRESS`),
  KEY `FK_LAND_LAND_TYPE` (`TYPE`),
  KEY `FK_LAND_USER` (`OWNER`),
  KEY `FK_LAND_OWNER_ADMIN` (`OWNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `other_image` */

DROP TABLE IF EXISTS `other_image`;

CREATE TABLE `other_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `OTHER_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_OTHER_IMAGE_OTHER_ID` (`OTHER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `owner` */

DROP TABLE IF EXISTS `owner`;

CREATE TABLE `owner` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  `CONTACT_NUMBER` varchar(21) DEFAULT NULL,
  `MOBILE_NUMBER` varchar(21) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `owner_image` */

DROP TABLE IF EXISTS `owner_image`;

CREATE TABLE `owner_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `OWNER_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_OWNER_IMAGE_OWNER` (`OWNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `page` */

DROP TABLE IF EXISTS `page`;

CREATE TABLE `page` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `BUSINESS_TYPE` varchar(50) NOT NULL,
  `BUSINESS_TYPE_ID` bigint(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `payment_method` */

DROP TABLE IF EXISTS `payment_method`;

CREATE TABLE `payment_method` (
  `ID` tinyint(3) NOT NULL AUTO_INCREMENT,
  `API_SECRET` varchar(255) DEFAULT NULL,
  `API_KEY` varchar(255) DEFAULT NULL,
  `API_SIGNATURE` varchar(255) DEFAULT NULL,
  `SAND_BOX_MODE` tinyint(1) DEFAULT '1',
  `IS_ACTIVE` tinyint(1) DEFAULT '1',
  `EMAIL_ID` varchar(255) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `SIZE` longtext,
  `COST` double DEFAULT '0',
  `BRAND_NAME` varchar(255) DEFAULT NULL,
  `OWNER_ID` bigint(10) DEFAULT NULL,
  `OWNER_TYPE` varchar(255) DEFAULT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `OWNER_ADMIN` bigint(10) DEFAULT NULL,
  `COST_UNIT` varchar(10) NOT NULL DEFAULT 'INR',
  `USER_ID` bigint(10) NOT NULL DEFAULT '1',
  `CITY` bigint(10) NOT NULL DEFAULT '1',
  `ADDRESS` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_PRODUCT_OWNER_ADMIN` (`OWNER_ADMIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `product_image` */

DROP TABLE IF EXISTS `product_image`;

CREATE TABLE `product_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `PRODUCT_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_PRODUCT_IMAGE_PRODUCT_ID` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `resort` */

DROP TABLE IF EXISTS `resort`;

CREATE TABLE `resort` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `ADDRESS` bigint(10) NOT NULL,
  `OWNER_ID` bigint(10) DEFAULT NULL,
  `BACKGROUND_COLOR` varchar(7) DEFAULT '#FFFFFF',
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `DESCRIPTION` longtext NOT NULL,
  `USER_ID` bigint(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `FK_RESORT_ADDRESS` (`ADDRESS`),
  KEY `FK_RESORT_OWNER_ADMIN` (`OWNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `resort_gallery_image` */

DROP TABLE IF EXISTS `resort_gallery_image`;

CREATE TABLE `resort_gallery_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT 'HOME',
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `RESORT_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_RESORT_GALLERY_IMAGE_RESORT_ID` (`RESORT_ID`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `resort_image` */

DROP TABLE IF EXISTS `resort_image`;

CREATE TABLE `resort_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `RESORT_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_RESORT_IMAGE_RESORT_ID` (`RESORT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `resort_tab` */

DROP TABLE IF EXISTS `resort_tab`;

CREATE TABLE `resort_tab` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` longtext,
  `NAME` varchar(255) NOT NULL,
  `RESORT_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_RESORT_TAB_RESORT_ID` (`RESORT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `resort_tab_image` */

DROP TABLE IF EXISTS `resort_tab_image`;

CREATE TABLE `resort_tab_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `RESORT_TAB_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_RESORT_TAB_IMAGE_RESORT_TAB_ID` (`RESORT_TAB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `sales` */

DROP TABLE IF EXISTS `sales`;

CREATE TABLE `sales` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `SHOP_ID` int(20) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `BUSINESS_TYPE` varchar(50) DEFAULT NULL,
  `SHOP_CATEGORY_ID` int(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `sales_detail` */

DROP TABLE IF EXISTS `sales_detail`;

CREATE TABLE `sales_detail` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `MIN_PAY_OUT_PER_DAY` bigint(10) DEFAULT NULL,
  `MIN_PAY_OUT` bigint(10) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `TOTAL_PRICE` bigint(10) DEFAULT NULL,
  `SALES_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `sales_detail_image` */

DROP TABLE IF EXISTS `sales_detail_image`;

CREATE TABLE `sales_detail_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) DEFAULT NULL,
  `IMAGE_PATH_BIG` varchar(255) DEFAULT NULL,
  `SALES_DETAIL_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `sales_image` */

DROP TABLE IF EXISTS `sales_image`;

CREATE TABLE `sales_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) DEFAULT NULL,
  `IMAGE_PATH_BIG` varchar(255) DEFAULT NULL,
  `SALES_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `saloon` */

DROP TABLE IF EXISTS `saloon`;

CREATE TABLE `saloon` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` longtext NOT NULL,
  `ADDRESS` bigint(10) NOT NULL,
  `OWNER_ID` bigint(10) NOT NULL,
  `USER_ID` bigint(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `FK_SALOON_ADDRESS` (`ADDRESS`),
  KEY `FK_SALOON_OWNER_ADMIN` (`OWNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `saloon_gallery_image` */

DROP TABLE IF EXISTS `saloon_gallery_image`;

CREATE TABLE `saloon_gallery_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `SALOON_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SALOON_GALLERY_IMAGE_SALOON` (`SALOON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `saloon_image` */

DROP TABLE IF EXISTS `saloon_image`;

CREATE TABLE `saloon_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `SALOON_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SALOON_IMAGE_SALOON` (`SALOON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `saloon_tab` */

DROP TABLE IF EXISTS `saloon_tab`;

CREATE TABLE `saloon_tab` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` longtext NOT NULL,
  `SALOON_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SALOON_TAB_SALLON_ID` (`SALOON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `saloon_tab_image` */

DROP TABLE IF EXISTS `saloon_tab_image`;

CREATE TABLE `saloon_tab_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `SALOON_TAB_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SALOON_TAB_IMAGE_SALOON_TAB` (`SALOON_TAB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `sharee` */

DROP TABLE IF EXISTS `sharee`;

CREATE TABLE `sharee` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `COLOR` varchar(255) DEFAULT NULL,
  `LENGTH` varchar(255) DEFAULT NULL,
  `WORK` varchar(255) DEFAULT NULL,
  `OCCUTATION` varchar(255) DEFAULT NULL,
  `COST` varchar(255) NOT NULL,
  `COST_UNIT` varchar(10) NOT NULL DEFAULT 'INR',
  `SHOP_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SHAREE_SHOP_ID` (`SHOP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `sharee_image` */

DROP TABLE IF EXISTS `sharee_image`;

CREATE TABLE `sharee_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `SHAREE_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SHAREE_IMAGE_SHAREE_ID` (`SHAREE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `shop` */

DROP TABLE IF EXISTS `shop`;

CREATE TABLE `shop` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` longtext,
  `OWNER_ID` bigint(10) NOT NULL,
  `OWNER_TYPE` varchar(255) DEFAULT NULL,
  `COST` double DEFAULT '0',
  `FLOOR` varchar(255) DEFAULT NULL,
  `ADDRESS` bigint(10) NOT NULL,
  `OWNER_ADMIN` bigint(10) DEFAULT NULL,
  `COST_UNIT` varchar(10) DEFAULT 'INR',
  `SIZE` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `SHOP_CATEGORY` bigint(10) DEFAULT NULL,
  `BACKGROUND_COLOUR` varchar(15) DEFAULT NULL,
  `USER_ID` bigint(10) DEFAULT '1',
  `TEXT_COLOR` varchar(6) DEFAULT NULL,
  `TEMPLATE_ID` int(10) DEFAULT '1',
  `STATUS` int(6) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SHOP_ADDRESS` (`ADDRESS`),
  KEY `FK_SHOP_SHOP_CATEGORY` (`SHOP_CATEGORY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `shop_category` */

DROP TABLE IF EXISTS `shop_category`;

CREATE TABLE `shop_category` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(50) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `shop_image` */

DROP TABLE IF EXISTS `shop_image`;

CREATE TABLE `shop_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `SHOP_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SHOP_IMAGE_SHOP_ID` (`SHOP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `shop_tab` */

DROP TABLE IF EXISTS `shop_tab`;

CREATE TABLE `shop_tab` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` longtext NOT NULL,
  `SHOP_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SHOP_TAB_SHOP_ID` (`SHOP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `shop_tab_image` */

DROP TABLE IF EXISTS `shop_tab_image`;

CREATE TABLE `shop_tab_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `SHOP_TAB_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SHOP_TAB_IMAGE_SHOP_TAB` (`SHOP_TAB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `shop_template` */

DROP TABLE IF EXISTS `shop_template`;

CREATE TABLE `shop_template` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `SHOP_CATEGORY_ID` int(10) DEFAULT NULL,
  `WIDTH` int(10) NOT NULL,
  `HEIGHT` int(10) NOT NULL,
  `ACTIVE` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `shop_type` */

DROP TABLE IF EXISTS `shop_type`;

CREATE TABLE `shop_type` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `sport` */

DROP TABLE IF EXISTS `sport`;

CREATE TABLE `sport` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `CATEGORY` varchar(21) NOT NULL,
  `BRAND_NAME` varchar(21) NOT NULL,
  `COST` varchar(255) NOT NULL,
  `COST_UNIT` varchar(6) NOT NULL DEFAULT 'INR',
  `SIZE` varchar(21) DEFAULT NULL,
  `SPORT_NAME` varchar(100) NOT NULL,
  `PERSON` varchar(100) NOT NULL,
  `SHOP_ID` bigint(10) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `sport_image` */

DROP TABLE IF EXISTS `sport_image`;

CREATE TABLE `sport_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `SPORT_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `state` */

DROP TABLE IF EXISTS `state`;

CREATE TABLE `state` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `COUNTRY` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SHOP_TYPE_COUNTRY` (`COUNTRY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `sub_tab` */

DROP TABLE IF EXISTS `sub_tab`;

CREATE TABLE `sub_tab` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `tab` */

DROP TABLE IF EXISTS `tab`;

CREATE TABLE `tab` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `tab_subtab` */

DROP TABLE IF EXISTS `tab_subtab`;

CREATE TABLE `tab_subtab` (
  `TAB_ID` bigint(10) NOT NULL,
  `SUB_TAB_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`SUB_TAB_ID`,`TAB_ID`),
  KEY `FK_TAB_SUBTAB_TAB` (`TAB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `template` */

DROP TABLE IF EXISTS `template`;

CREATE TABLE `template` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) DEFAULT NULL,
  `TEMPLATE_DATA` longtext,
  `USER_ID` bigint(10) DEFAULT NULL,
  `BUSINESS_TYPE` varchar(20) DEFAULT NULL,
  `SHOP_CATEGORY_ID` bigint(10) DEFAULT NULL,
  `SHOP_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `text_banner_ad` */

DROP TABLE IF EXISTS `text_banner_ad`;

CREATE TABLE `text_banner_ad` (
  `ID` bigint(10) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `MIN_PAY_OUT_PER_DAR` bigint(10) DEFAULT NULL,
  `MIN_PAY_OUT` bigint(10) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `TOTAL_PRICE` bigint(10) DEFAULT NULL,
  `SHOP_CATEGORY_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `DESCRIPTION` longtext,
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `CONTACT_NUMBER` varchar(21) DEFAULT NULL,
  `MOBILE_NUMBER` varchar(21) DEFAULT NULL,
  `HOUSE_NAME` varchar(255) DEFAULT NULL,
  `ROLE` bigint(10) DEFAULT NULL,
  `ADDRESS_ID` bigint(10) DEFAULT NULL,
  `IS_ACTIVE` tinyint(1) NOT NULL DEFAULT '0',
  `INVITATION_KEY` varchar(255) NOT NULL,
  `BUSINESS_CATEGORY_ID` int(3) NOT NULL DEFAULT '1',
  `FACEBOOK_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EMAIL` (`EMAIL`),
  KEY `FK_USER_ROLE` (`ROLE`),
  KEY `FK_USER_ADDRESS` (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `user_image` */

DROP TABLE IF EXISTS `user_image`;

CREATE TABLE `user_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `USER_ID` bigint(10) NOT NULL,
  `IMAGE_PATH` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_USER_IMAGE_USER_ID` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `vehicle` */

DROP TABLE IF EXISTS `vehicle`;

CREATE TABLE `vehicle` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `MODEL` varchar(255) NOT NULL,
  `COLOR_UNIT` varchar(255) NOT NULL,
  `VEHICLE_NUMBER` varchar(255) NOT NULL,
  `PERMIT` varchar(255) DEFAULT NULL,
  `INSURANCE` varchar(255) NOT NULL,
  `COST` varchar(255) NOT NULL,
  `COST_UNIT` varchar(10) NOT NULL DEFAULT 'INR',
  `SELLER_NAME` varchar(255) NOT NULL,
  `CONTACT_NUMBER` varchar(255) DEFAULT NULL,
  `MOBILE_NUMBER` varchar(255) NOT NULL,
  `AREA_NAME` varchar(255) NOT NULL,
  `AREA_CODE` varchar(255) NOT NULL,
  `CITY` bigint(10) NOT NULL,
  `SHOP_ID` bigint(10) NOT NULL,
  `IS_USED` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FK_VEHICLE_CITY` (`CITY`),
  KEY `FK_VEHICLE_SHOP_ID` (`SHOP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `vehicle_accessory` */

DROP TABLE IF EXISTS `vehicle_accessory`;

CREATE TABLE `vehicle_accessory` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `BRAND_NAME` varchar(255) NOT NULL,
  `SIZE` varchar(12) DEFAULT NULL,
  `COST` double NOT NULL,
  `COST_UNIT` varchar(6) NOT NULL DEFAULT 'INR',
  `DESCRIPTION` varchar(255) NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `SHOP_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `vehicle_accessory_image` */

DROP TABLE IF EXISTS `vehicle_accessory_image`;

CREATE TABLE `vehicle_accessory_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `VEHICLE_ACCESSORY_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_VEHICLE_IMAGE_VEHICLE_ACCESSORY_ID` (`VEHICLE_ACCESSORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Table structure for table `vehicle_image` */

DROP TABLE IF EXISTS `vehicle_image`;

CREATE TABLE `vehicle_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `VEHICLE_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_VEHICLE_IMAGE_VEHICLE_ID` (`VEHICLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
