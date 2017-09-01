# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.18)
# Database: myshedrentalvs2
# Generation Time: 2017-08-28 16:27:42 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table contract
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contract`;

CREATE TABLE `contract` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `contract_number` text NOT NULL,
  `contract_date` varchar(12) NOT NULL,
  `rental_customer_name` varchar(100) NOT NULL,
  `primary_phone` varchar(12) NOT NULL,
  `secondary_phone` varchar(12) NOT NULL,
  `mailing_address` varchar(75) NOT NULL,
  `city` varchar(75) NOT NULL,
  `county` varchar(75) NOT NULL,
  `state` varchar(75) NOT NULL,
  `zipcode` varchar(5) NOT NULL,
  `sales_tax_rate` varchar(6) NOT NULL,
  `physical_address` varchar(150) NOT NULL,
  `physical_address_state` varchar(50) NOT NULL,
  `physical_address_zipcode` varchar(5) NOT NULL,
  `email` varchar(75) NOT NULL,
  `reference_name` varchar(75) NOT NULL,
  `reference_phone` varchar(12) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;

INSERT INTO `contract` (`Id`, `contract_number`, `contract_date`, `rental_customer_name`, `primary_phone`, `secondary_phone`, `mailing_address`, `city`, `county`, `state`, `zipcode`, `sales_tax_rate`, `physical_address`, `physical_address_state`, `physical_address_zipcode`, `email`, `reference_name`, `reference_phone`)
VALUES
	(1,'','2017-02-15','Judah Riley','111-222-3333','111-222-3333','23 Seal Road','Salanes','Stratsburg','AL','22211','12%','23 Seal Road','AK','85212','judah@riley.com','John Jameson','111-222-3333'),
	(2,'','2017-02-02','sdfsdaf','afsd','afsd','34 adsffsd fadsdfsa','afsdfsda','fdsfda','AK','14665','','dfsafdas','','11200','pete@smith.com','sdffsda','afsddsf'),
	(3,'','','garbage','112-555-6666','112-555-6666','garbage','garbage','garbage','AZ','12121','23%','garbage','AZ','14414','als@min.com','garbage','112-555-6666'),
	(4,'','2017-02-08','Devon Sampson','564-555-0021','564-555-0021','39 Second Avenue','Brooklyn','Denelis','IA','15410','15%','dsfasdf','IA','11254','devon@mail.com','Devon Sampson','564-555-0021'),
	(5,'1702131433','2017-02-01','Matthew Weaver','7046036024','7046036024','1839 Jake Alenxander Blvd W','Salisbury','NC','NC','28147','.06','1839 Jake Alenxander Blvd W','NC','28147','myshedrental@gmail.com','Matthew Weaver','7046036024'),
	(6,'','2017-02-14','Charles Barkley','121-021-5842','214-985-0215','23 Sweet Point','Merik','Linhurst','CO','25585','15%','23 Sweet Point','AZ','85411','charles@barkley.com','Al Smith','525-632-3847'),
	(7,'','','dsf','fsda','fdsa','fads','','','AZ','dfs','dfsa','','AZ','fdsa','fdafd@c.n','dsfa','dsf');

/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table contracts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contracts`;

CREATE TABLE `contracts` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `contract_number` text NOT NULL,
  `contract_date` varchar(16) NOT NULL,
  `rental_customer_name` varchar(100) NOT NULL,
  `primary_phone` varchar(12) NOT NULL,
  `secondary_phone` varchar(12) NOT NULL,
  `mailing_address` varchar(150) NOT NULL,
  `city` varchar(75) NOT NULL,
  `county` varchar(75) NOT NULL,
  `state` varchar(75) NOT NULL,
  `zipcode` varchar(5) NOT NULL,
  `sales_tax_rate` varchar(4) NOT NULL,
  `physical_address` varchar(150) NOT NULL,
  `physical_address_state` varchar(100) NOT NULL,
  `physical_address_zipcode` varchar(5) NOT NULL,
  `email` varchar(100) NOT NULL,
  `reference_name` varchar(75) NOT NULL,
  `reference_phone` varchar(12) NOT NULL,
  `property_size` varchar(30) NOT NULL,
  `property_style` varchar(50) NOT NULL,
  `style_type` varchar(30) NOT NULL,
  `shed_color_roof` varchar(30) NOT NULL,
  `shed_color_sides` varchar(30) NOT NULL,
  `shed_color_trim` varchar(30) NOT NULL,
  `roof_type` varchar(30) NOT NULL,
  `cash_price` varchar(25) NOT NULL,
  `serial_number` varchar(25) NOT NULL,
  `shed_condition_type` varchar(30) NOT NULL,
  `shed_condition_desc` varchar(150) NOT NULL,
  `rental_ownership_term` varchar(30) NOT NULL,
  `customer_initials` varchar(5) NOT NULL,
  `drivers_license_number` varchar(15) NOT NULL,
  `dealer_name` varchar(100) NOT NULL,
  `dealer_contact_name` varchar(100) NOT NULL,
  `estimated_delivery_date` varchar(24) NOT NULL,
  `account_charge_date` varchar(5) NOT NULL,
  `customer_signature` varchar(75) NOT NULL,
  `account_type` varchar(30) NOT NULL,
  `name_on_account` varchar(150) NOT NULL,
  `bank_name` varchar(150) NOT NULL,
  `account_number` varchar(30) NOT NULL,
  `routing_number` varchar(30) NOT NULL,
  `bank_state` varchar(75) NOT NULL,
  `card_type` varchar(30) NOT NULL,
  `card_number` varchar(16) NOT NULL,
  `card_expiration` varchar(7) NOT NULL,
  `card_billing_zipcode` varchar(5) NOT NULL,
  `paperless_billing` varchar(30) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `contracts` WRITE;
/*!40000 ALTER TABLE `contracts` DISABLE KEYS */;

INSERT INTO `contracts` (`Id`, `userId`, `contract_number`, `contract_date`, `rental_customer_name`, `primary_phone`, `secondary_phone`, `mailing_address`, `city`, `county`, `state`, `zipcode`, `sales_tax_rate`, `physical_address`, `physical_address_state`, `physical_address_zipcode`, `email`, `reference_name`, `reference_phone`, `property_size`, `property_style`, `style_type`, `shed_color_roof`, `shed_color_sides`, `shed_color_trim`, `roof_type`, `cash_price`, `serial_number`, `shed_condition_type`, `shed_condition_desc`, `rental_ownership_term`, `customer_initials`, `drivers_license_number`, `dealer_name`, `dealer_contact_name`, `estimated_delivery_date`, `account_charge_date`, `customer_signature`, `account_type`, `name_on_account`, `bank_name`, `account_number`, `routing_number`, `bank_state`, `card_type`, `card_number`, `card_expiration`, `card_billing_zipcode`, `paperless_billing`)
VALUES
	(12,0,'2017/11/30/14/42','2017-02-10','Marlin Levi','920-323-0000','920-323-0000','83 Clear View, Apt 2','New Roc','Charlotte','MD','67754','25%','83 Clear View, Apt 2','AZ','21541','marlin@levi.com','Singh Sars','213-641-6541','','','','','','','','','','','','','','','','','','','','','','','','','','','0','','','\0\0\0'),
	(15,0,'','2017-02-17','Devon Sampson','215-641-3325','283-999-2321','29 Power St','Demerara','Long Island','PA','54544','12%','23 Shakle St','AZ','12344','devon@sampson.com','Jewel Roberts','211-021-6324','','','','','','','','','','','','','','','','','','','','','','','','','','','0','','','\0\0\0'),
	(24,0,'','2017-02-24','Richie Stephens','111-222-5555','111-222-5555','23 Tralani Lane','Cralsburg','Linverb','AZ','15544','23%','23 Tralani Lane','CO','55245','richie@stephens.com','Will Palmer','111-222-5555','','','','','','','','','','','','','','','','','','','','','','','','','','','0','','','\0\0\0'),
	(26,0,'','2017-02-23','Brad Pitt','222-854-3021','222-854-3021','20 Address St','fadsfdasfdsa','','','22554','','','AZ','22211','brad@pitt.com','','222-854-3021','','','','','','','','','','','','','','','','','','','','','','','','','','','0','','','\0\0\0'),
	(27,12,'','2017-02-10','James Bond','221-998-5854','554-852-3200','32 Downing Alley','Petersburg','London','AZ','30012','34%','34 St Marks','CO','85202','james@bond.com','Money Penny','211-665-3024','','','','','','','','','','','','','','','','','','','','','','','','','','','0','','','\0\0\0'),
	(32,12,'','2017-02-24','dfdsfdfsa','222-333-5554','222-333-5554','sadfsfd','Fsdf','fsadfsd','DE','61551','25%','fsdfdsa','AK','03152','ffasd@df.com','fsdfds','222-333-5554','','English Mid','','','','','','','','','','','','','','','','','','','','','','','','','0','','','\0\0\0'),
	(33,12,'','2017-02-17','Miles Turner','212-522-3362','212-522-3362','safd','dffdfd','fdssdf','GA','20120','21%','sfdasdf','AZ','96542','dfs@sfd.com','dfsfdsfds','212-522-3362','35ft * 23ft','dfsdfs','Wood','fsdadfs','fdsfss','sdfafds','Metal','$12500','86415565551','','dsfdsadfs','36','DS','fdsfds','fsdafds','fdsfds','2017-02-23','15th','devon sampson','savings','fsdfdsdsf','Bank of America','5616065','841841496','asdfdsf','','1112223333220000','000211','22210','on'),
	(34,18,'','2017-02-16','Paul Melville','211-555-3333','211-555-3333','fdsadf','dsffdas','dsffsad','AK','12122','14%','dsffds','AL','22222','paul@melville.com','sdaffds','222-333-8888','35ft * 23ft','sdffds','Wood','dsfafds','fsadfds','fdssadf','Metal','$128323','461616161','New','adffdas','48','ds','14896916661','fdsfdsa','sdfafdsa','2017-02-17','10th','dds','savings','sfadfsda','sdfsdfa','8941961961','4916196161','sdfafsd','','2256151981191111','202022','66323','on');

/*!40000 ALTER TABLE `contracts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table customers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secondary_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `county` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `drivers_license_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dealer_id` int(11) NOT NULL,
  `account` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `approved` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_customer_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ps_customer_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ps_customer_response` text COLLATE utf8_unicode_ci NOT NULL,
  `ps_credit_card_account_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ps_credit_card_account_response` text COLLATE utf8_unicode_ci NOT NULL,
  `ps_ach_account_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ps_ach_account_response` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email`, `phone`, `secondary_phone`, `address`, `city`, `state`, `county`, `country`, `postal_code`, `drivers_license_image`, `dealer_id`, `account`, `approved`, `stripe_customer_id`, `ps_customer_id`, `ps_customer_response`, `ps_credit_card_account_id`, `ps_credit_card_account_response`, `ps_ach_account_id`, `ps_ach_account_response`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'George','Johnsonn','dpetersen1@live.com','778-679-7508','','101 Mt Benson St','Nanaimo','ND','','USA','V9S 5K2','',2,'','','','','','','','','',NULL,NULL,NULL);

/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table logs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `logs`;

CREATE TABLE `logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `error` text COLLATE utf8_unicode_ci,
  `info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`migration`, `batch`)
VALUES
	('2014_10_12_000000_create_users_table',1),
	('2014_10_12_100000_create_password_resets_table',1),
	('2017_02_22_235239_create_customers_table',1),
	('2017_02_25_204711_create_contracts_table',1),
	('2017_05_13_014953_create_logs_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table payments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `contractsId` int(11) NOT NULL,
  `dealer_name` varchar(100) NOT NULL,
  `dealer_contact_name` varchar(100) NOT NULL,
  `estimated_delivery_date` date NOT NULL,
  `account_charge_date` varchar(5) NOT NULL,
  `customer_signature` text NOT NULL,
  `account_type` varchar(30) NOT NULL,
  `name_on_account` varchar(150) NOT NULL,
  `bank_name` varchar(150) NOT NULL,
  `account_number` varchar(30) NOT NULL,
  `routing_number` varchar(30) NOT NULL,
  `bank_state` varchar(75) NOT NULL,
  `card_type` varchar(30) NOT NULL,
  `card_number` varchar(16) NOT NULL,
  `card_expiration` varchar(7) NOT NULL,
  `card_billing_zipcode` varchar(5) NOT NULL,
  `paperless_billing` varchar(30) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `contractsId` (`contractsId`),
  KEY `contractsId_2` (`contractsId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;

INSERT INTO `payments` (`Id`, `contractsId`, `dealer_name`, `dealer_contact_name`, `estimated_delivery_date`, `account_charge_date`, `customer_signature`, `account_type`, `name_on_account`, `bank_name`, `account_number`, `routing_number`, `bank_state`, `card_type`, `card_number`, `card_expiration`, `card_billing_zipcode`, `paperless_billing`)
VALUES
	(1,12,'safsdf','sfdsfdas','2017-02-22','15th','mark levi','savings','sdaffds','JP Morgan Chase','654654645','48656456546','Florida','','2222222211221451','210222','00211','on'),
	(2,12,'sfafsd','asfdfdsdfsa','2017-02-24','10th','richie stephens','checking','sadfsdfadsf','fdsfsdafdas','5623641','64141633','dsfdf','','1123999955452136','225102','02106','on'),
	(3,12,'dsafffdsafd','','2017-02-23','15th','brad pitt','checking','Brad Pitt','Capital one','94661361','86451564','dsfafdsfdsa','','2258740123654895','854220','22155','on'),
	(4,12,'fsdasdf','dfsfsd','2017-02-24','15th','devon sampson','savings','fsfdsfds','sffdsa','156655665','645646546','4894446456','','2223332210120000','201200','20212','on'),
	(5,12,'fasdfdsa','fsdafdsa','2017-02-23','10th','devon sampson','savings','fdsafds','fsdafds','621616161','26941646161','afdsfdsafdsa','','2222111122533369','222012','20120','on'),
	(6,12,'dsfadssdf','assfddfs','2017-02-16','1st','right signature','checking','fsaddfs','dfssdads','112022221','001221114','fadsafsdsdfa','','1112555522223321','554411','22201','on'),
	(7,12,'afsddsf','fdssadfsdfa','2017-02-16','15th','judah riley','savings','Judah Riley','Popular Bank','1461616561','6161515151','sfdasfda','','5555555555555566','002144','52001','on'),
	(8,12,'afdsfds','fasdfsdfds','2017-02-16','20th','dfasfdsfsda','savings','dfsafdsa','fdsasdfa','6451616165','154163003','asdfafsdfsda','','2222000044445555','210021','20211','on'),
	(9,12,'Bond Sheds','Ashley Espinal','2017-02-16','15th','Charles Barkley','savings','Charles Barkley','Citizens Bank','02125487','20896212','Babylon','','5412306985401230','2154/32','65212','on');

/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table rentals
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rentals`;

CREATE TABLE `rentals` (
  `rentalsId` int(11) NOT NULL AUTO_INCREMENT,
  `contractsId` int(11) NOT NULL,
  `property_size` varchar(25) NOT NULL,
  `property_style` varchar(30) NOT NULL,
  `style_type` varchar(30) NOT NULL,
  `shed_color_roof` varchar(30) NOT NULL,
  `shed_color_sides` varchar(30) NOT NULL,
  `shed_color_trim` varchar(30) NOT NULL,
  `roof_type` varchar(30) NOT NULL,
  `cash_price` varchar(25) NOT NULL,
  `serial_number` varchar(25) NOT NULL,
  `shed_condition_type` varchar(25) NOT NULL,
  `shed_condition_desc` varchar(30) NOT NULL,
  `rental_ownership_term` varchar(150) NOT NULL,
  `customer_initials` varchar(30) NOT NULL,
  `drivers_license_number` varchar(15) NOT NULL,
  PRIMARY KEY (`rentalsId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `rentals` WRITE;
/*!40000 ALTER TABLE `rentals` DISABLE KEYS */;

INSERT INTO `rentals` (`rentalsId`, `contractsId`, `property_size`, `property_style`, `style_type`, `shed_color_roof`, `shed_color_sides`, `shed_color_trim`, `roof_type`, `cash_price`, `serial_number`, `shed_condition_type`, `shed_condition_desc`, `rental_ownership_term`, `customer_initials`, `drivers_license_number`)
VALUES
	(1,12,'','','Wood','blue','red','green','Metal','$12500','233432','Used','more test','36','ML','122454888801'),
	(2,13,'','','Vinyl','Yellow','Orange','Purple','Vinyl','$12500','6546516941','New','not so bad','24','',''),
	(3,12,'','','Wood','Sky Blue','Teal','Orange','','$20920','52155151','New','N/A','48','DS',''),
	(4,12,'','','Metal','sfadfsda','fdsfsad','asffds','Metal','sfdaddfa','211212121211','New','afsfds','12','DS','6541561465'),
	(5,12,'','','Wood','fasd','dfsa','nsdaf','Metal','$128323','684546654','','','12','df','68464456456'),
	(6,12,'','','Wood','sfda','fasd','fdsa','Metal','$12500','6541654151','New','N/A','48','ds','2165156516615'),
	(7,12,'','','Wood','faaf','affa','fdsafsd','Metal','sfdasf','68448645','Used','asfd','48','','9416641646'),
	(8,12,'','','Wood','fdsasfd','fads','fdsa','Metal','$12500','5641654564','Used','afsdfds','36','ds','51655115'),
	(9,12,'','','Vinyl','fsdfdsfdsa','afsdafds','asfdsfds','Metal','$128323','51656465654','Used','afsd','36','ds','564645654654'),
	(10,12,'','','Metal','afdfsfsad','dsdfs','fdasfds','Metal','afdfads','11116616116','Used','asfdfsd','36','ds','664644646'),
	(11,12,'','','Wood','fsddsfa','dfsf','sdfafdsa','Vinyl','$128323','564564854184','Used','sdfdfa','48','ds','56546546456'),
	(12,12,'','','Wood','','','','Metal','','545454664','','N/A','12','',''),
	(13,12,'','','Metal','asfddsa','fdsaadfs','asfdfsd','Metal','$128323','684864468','Used','afdsf','12','RS','65656564654'),
	(14,12,'','','Vinyl','','','','Vinyl','','68484489848','Used','','12','BP','684464646564'),
	(15,12,'','','Metal','sdfsdf','fsdadfs','fdsfdsa','Metal','$20920','84561651561','Used','sfadfsdsfd','36','DS','112356155115'),
	(16,12,'','','Wood','sddfds','sfdfsd','asfdsda','Metal','$20920','416916165','Used','fsdsadf','36','','156416854561'),
	(17,12,'35ft * 23ft','sdfafads','Wood','dsf','sdfa','sdaf','Vinyl','$20920','488515115','New','asdffds','36','DS','2255452218'),
	(18,12,'10x14','Barn','Metal','d','d','d','','1400','','','','36','',''),
	(19,12,'65ft*35ft','Old Eastern','Metal','Orange','Red','Teal','Metal','15%','5558542144','Used','N/A','36','DS','54125548872');

/*!40000 ALTER TABLE `rentals` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(100) NOT NULL,
  `contactName` varchar(75) NOT NULL,
  `phoneNumber` varchar(13) NOT NULL,
  `address_line1` varchar(75) NOT NULL,
  `address_line2` varchar(50) NOT NULL,
  `city` varchar(75) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zipcode` int(5) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL,
  `user_type` tinyint(1) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userEmail` (`userEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`userId`, `companyName`, `contactName`, `phoneNumber`, `address_line1`, `address_line2`, `city`, `state`, `zipcode`, `userEmail`, `userPass`, `user_type`, `enabled`)
VALUES
	(1,'','Shed Admin','','','','','',0,'devon@beckandstone.com','5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8',1,1),
	(4,'bxb sheds','Ralph Finnes','888-888-8888','23 Pine Street','Apt 32','Queensland','AZ',21542,'finnes@bxb.com','password',0,0),
	(11,'Beck &amp; Stone','Austin Stone','6464916091','60 Broad Street','2505','New York','NY',10004,'austin@beckandstone.com','638bc752a43aff0052e53a57d6648d2a8f98c91e7fce83daea95fb5101e54994',0,0),
	(12,'Bond Collective','Ashley Espinal','982-981-2712','40 Old St','Suite 12','Candle','CA',11234,'ashley@bond.com','5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8',0,0),
	(13,'liberty island','Ellis Monroe','9291838811','39 Island Dr','Suie10','Liberty','AL',23455,'ellis@monroe.com','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f',0,0),
	(14,'St. Marks Shedder','Mark hoomas','9209999992','23 St Alban','Apt 12','Albany','KY',30234,'mark@thomas.com','5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8',0,0),
	(15,'Dr Shed','Shed Sir','8230230001','jnds','dsjfnk','ksfnd','DE',12232,'marcus@thomas.com','5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8',0,0),
	(18,'Montana Sheds','Jim Joe','2839992321','29 Power St','Suite 12','Montana','MT',42123,'jim@montanasheds.com','5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8',0,0),
	(23,'Old Oak Sheds','Sid Emphy','2105021223','2839 Sub Stern St','Suite 1200','Auckland','PA',20456,'sid@emphy.com','5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8',0,0),
	(24,'Shed Supreme','Sherwin Williams','213-651-3211','82 String st','Apt 123','Brils','MN',65223,'sherwin@williams.com','5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8',0,0),
	(25,'Super Sheds','Earl Lung','121-654-5441','82 Slang St','Suite12','Grenda','AZ',54114,'earl@lungi.com','5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8',0,0),
	(28,'Sheds Boss','Alin Sharp','213-451-4561','37 asdjb','dfsab','afsd','AL',33166,'test@sharp.com','5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8',0,0),
	(29,'MyShedRental','Matthew','111-111-1111','45 test st','suite 1','test','CA',11111,'matthew@myshedrental.com','25f43b1486ad95a1398e3eeb3d83bc4010015fcc9bedb35b432e00298d5021f7',1,1);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
