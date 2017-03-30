/*
SQLyog - Free MySQL GUI v5.02
Host - 5.1.48-community : Database - mybuy4u
*********************************************************************
Server version : 5.1.48-community
*/


create database if not exists `mybuy4u`;

USE `mybuy4u`;

/*Data for the table `admin` */

insert into `admin` values 

(2,'Rajesh','super_rajesh@mybuy4u.com','ba4aef33208dadebfda7f3f5be48cde425aa0771',5,'2013-06-29 00:00:00','2013-06-29 00:00:00',1);

/*Data for the table `business_type` */

insert into `business_type` values 

(1,'Local Business'),

(2,'Company Organisation'),

(3,'Brand or Product'),

(4,'Real Estate'),

(5,'Event orPlace'),

(6,'Others');

/*Data for the table `city` */

insert into `city` values 

(1,'Almora',27),

(2,'Askot',27),

(3,'Badrinathpuri',27),

(4,'Bageshwar',27),

(5,'Baijnath',27),

(6,'Barkot',27),

(7,'Champawat',27),

(8,'Dehradun',27),

(9,'Dev Prayag',27),

(10,'Dharchula Dehat',27),

(11,'Didihat',27),

(12,'Dineshpur',27),

(13,'Dogadda',27),

(14,'Doiwala',27),

(15,'Dwarahat',27),

(16,'Gadarpur',27),

(17,'Gochar',27),

(18,'Haridwar',27),

(19,'Kachnal Gosain',27),

(20,'Kaladungi',27),

(21,'Kashirampur',27),

(22,'Kela Khera',27),

(23,'Khatima',27),

(24,'Kichha',27),

(25,'Laksar',27),

(26,'Manglaur',27),

(27,'Mussoorie',27),

(28,'Nagla',27),

(29,'Nainital',27),

(30,'Naraini',27),

(31,'Narendra Nagar',27),

(32,'Pauri',27),

(33,'Pithoragarh',27),

(34,'Ranikhet',27),

(35,'Uttarakashi',27),

(36,'Rishikesh',27),

(37,'Chamoli',27),

(38,'Rudraprayag',27),

(39,'Udham Singh Nagar',27),

(40,'Haldwani',27),

(41,'Rudrapur',27),

(42,'Sitarganj',27),

(43,'Jageshwar',27),

(44,'Kosi',27),

(45,'Ramnagar',27),

(46,'Bazpur',27),

(47,'Bhimtal',27),

(48,'Bhowali',27),

(49,'Jaspur',27),

(50,'Pantnagar',27),

(51,'Lalkuan',27),

(52,'Kashipur',27),

(53,'Kathgodam',27),

(54,'Roorkee',27),

(55,'Kotdwar',27),

(56,'Shaharanpur',26),

(57,'Meerut',26),

(58,'Varanasi',26),

(59,'Mathura',26),

(60,'Aligarh',26),

(61,'Patiala',21),

(62,'Amritsar',21),

(63,'Jalandara',21),

(64,'Pathankot',21),

(65,'Lucknow',26),

(66,'Mohali',30),

(67,'Punchkula',30),

(68,'Manimajra',30),

(69,'Chandigarh',30),

(70,'Patiala',30),

(71,'Zirakpur',30),

(72,'New Delhi',36),

(73,'Gazipur',26);

/*Data for the table `country` */

insert into `country` values 

(1,'Afghanistan'),

(2,'Albania'),

(3,'Algeria'),

(4,'American Samoa'),

(5,'Andorra'),

(6,'Angola'),

(7,'Anguilla'),

(8,'Antarctica'),

(9,'Antigua And Barbuda'),

(10,'Argentina'),

(11,'Armenia'),

(12,'Aruba'),

(13,'Australia'),

(14,'Austria'),

(15,'Azerbaijan'),

(16,'Bahamas'),

(17,'Bahrain'),

(18,'Bangladesh'),

(19,'Barbados'),

(20,'Belarus'),

(21,'Belgium'),

(22,'Belize'),

(23,'Benin'),

(24,'Bermuda'),

(25,'Bhutan'),

(26,'Bolivia'),

(27,'Bosnia And Herzegovina'),

(28,'Botswana'),

(29,'Bouvet Island'),

(30,'Brazil'),

(31,'British Indian Ocean Territory'),

(32,'Brunei Darussalam'),

(33,'Bulgaria'),

(34,'Burkina Faso'),

(35,'Burundi'),

(36,'Cambodia'),

(37,'Cameroon'),

(38,'Canada'),

(39,'Cape Verde'),

(40,'Cayman Islands'),

(41,'Central African Republic'),

(42,'Chad'),

(43,'Chile'),

(44,'China'),

(45,'Christmas Island'),

(46,'Cocos (Keeling) Islands'),

(47,'Colombia'),

(48,'Comoros'),

(49,'Congo'),

(50,'Cook Islands'),

(51,'Costa Rica'),

(52,'Cote D\'Ivoire'),

(53,'Croatia (Local Name: Hrvatska)'),

(54,'Cuba'),

(55,'Cyprus'),

(56,'Czech Republic'),

(57,'Denmark'),

(58,'Djibouti'),

(59,'Dominica'),

(60,'Dominican Republic'),

(61,'Ecuador'),

(62,'Egypt'),

(63,'El Salvador'),

(64,'Equatorial Guinea'),

(65,'Eritrea'),

(66,'Estonia'),

(67,'Ethiopia'),

(68,'Falkland Islands (Malvinas)'),

(69,'Faroe Islands'),

(70,'Fiji'),

(71,'Finland'),

(72,'France'),

(73,'France, Metropolitan'),

(74,'French Guiana'),

(75,'French Polynesia'),

(76,'French Southern Territories'),

(77,'Gabon'),

(78,'Gambia'),

(79,'Georgia'),

(80,'Germany'),

(81,'Ghana'),

(82,'Gibraltar'),

(83,'Greece'),

(84,'Greenland'),

(85,'Grenada'),

(86,'Guadeloupe'),

(87,'Guam'),

(88,'Guatemala'),

(89,'Guinea'),

(90,'Guinea-Bissau'),

(91,'Guyana'),

(92,'Haiti'),

(93,'Heard Island &amp; Mcdonald Islands'),

(94,'Honduras'),

(95,'Hong Kong'),

(96,'Hungary'),

(97,'Iceland'),

(98,'India'),

(99,'Indonesia'),

(100,'Iran, Islamic Republic Of'),

(101,'Iraq'),

(102,'Ireland'),

(103,'Israel'),

(104,'Italy'),

(105,'Jamaica'),

(106,'Japan'),

(107,'Jordan'),

(108,'Kazakhstan'),

(109,'Kenya'),

(110,'Kiribati'),

(111,'Korea, Democratic People\'S Republic Of'),

(112,'Korea, Republic Of'),

(113,'Kuwait'),

(114,'Kyrgyzstan'),

(115,'Lao People\'S Democratic Republic'),

(116,'Latvia'),

(117,'Lebanon'),

(118,'Lesotho'),

(119,'Liberia'),

(120,'Libyan Arab Jamahiriya'),

(121,'Liechtenstein'),

(122,'Lithuania'),

(123,'Luxembourg'),

(124,'Macau'),

(125,'Macedonia, The Former Yugoslav Republic Of'),

(126,'Madagascar'),

(127,'Malawi'),

(128,'Malaysia'),

(129,'Maldives'),

(130,'Mali'),

(131,'Malta'),

(132,'Marshall Islands'),

(133,'Martinique'),

(134,'Mauritania'),

(135,'Mauritius'),

(136,'Mayotte'),

(137,'Mexico'),

(138,'Micronesia, Federated States Of'),

(139,'Moldova, Republic Of'),

(140,'Monaco'),

(141,'Mongolia'),

(142,'Montserrat'),

(143,'Morocco'),

(144,'Mozambique'),

(145,'Myanmar'),

(146,'Namibia'),

(147,'Nauru'),

(148,'Nepal'),

(149,'Netherlands'),

(150,'Netherlands Antilles'),

(151,'New Caledonia'),

(152,'New Zealand'),

(153,'Nicaragua'),

(154,'Niger'),

(155,'Nigeria'),

(156,'Niue'),

(157,'Norfolk Island'),

(158,'Northern Mariana Islands'),

(159,'Norway'),

(160,'Oman'),

(161,'Pakistan'),

(162,'Palau'),

(163,'Panama'),

(164,'Papua New Guinea'),

(165,'Paraguay'),

(166,'Peru'),

(167,'Philippines'),

(168,'Pitcairn'),

(169,'Poland'),

(170,'Portugal'),

(171,'Puerto Rico'),

(172,'Qatar'),

(173,'Reunion'),

(174,'Romania'),

(175,'Russian Federation'),

(176,'Rwanda'),

(177,'Saint Helena'),

(178,'Saint Kitts And Nevis'),

(179,'Saint Lucia'),

(180,'Saint Pierre And Miquelon'),

(181,'Saint Vincent And The Grenadines'),

(182,'Samoa'),

(183,'San Marino'),

(184,'Sao Tome And Principe'),

(185,'Saudi Arabia'),

(186,'Senegal'),

(187,'Seychelles'),

(188,'Sierra Leone'),

(189,'Singapore'),

(190,'Slovakia (Slovak Republic)'),

(191,'Slovenia'),

(192,'Solomon Islands'),

(193,'Somalia'),

(194,'South Africa'),

(195,'Spain'),

(196,'Sri Lanka'),

(197,'Sudan'),

(198,'Suriname'),

(199,'Svalbard And Jan Mayen Islands'),

(200,'Swaziland'),

(201,'Sweden'),

(202,'Switzerland'),

(203,'Syrian Arab Republic'),

(204,'Taiwan, Province Of China'),

(205,'Tajikistan'),

(206,'Tanzania, United Republic Of'),

(207,'Thailand'),

(208,'Togo'),

(209,'Tokelau'),

(210,'Tonga'),

(211,'Trinidad And Tobago'),

(212,'Tunisia'),

(213,'Turkey'),

(214,'Turkmenistan'),

(215,'Turks And Caicos Islands'),

(216,'Tuvalu'),

(217,'Uganda'),

(218,'Ukraine'),

(219,'United Arab Emirates'),

(220,'United Kingdom'),

(221,'United States'),

(222,'United States Minor Outlying Islands'),

(223,'Uruguay'),

(224,'Uzbekistan'),

(225,'Vanuatu'),

(226,'Vatican City State (Holy See)'),

(227,'Venezuela'),

(228,'Viet Nam'),

(229,'Virgin Islands (British)'),

(230,'Virgin Islands (U.S.)'),

(231,'Wallis And Futuna Islands'),

(232,'Western Sahara'),

(233,'Yemen'),

(234,'Yugoslavia'),

(235,'Zaire'),

(236,'Zambia'),

(237,'Zimbabwe');

/*Data for the table `house_type` */

insert into `house_type` values 

(1,'1BHK'),

(2,'2BHK'),

(3,'3BHK'),

(4,'4BHK');

/*Data for the table `land_type` */

insert into `land_type` values 

(1,'Agricultural'),

(2,'Commercial'),

(3,'Residential');

/*Data for the table `role` */

insert into `role` values 

(1,'USER'),

(2,'AGENT'),

(3,'BUSINESSMAN'),

(4,'BUILDER'),

(5,'ADMIN');

/*Data for the table `shop_category` */

insert into `shop_category` values 

(1,'DESIGNER CLOTH','/shop_category/link01.png'),

(2,'JEWELRY','/shop_category/link01.png'),

(3,'KITCHEN','/shop_category/link01.png'),

(4,'OPTICAL','/shop_category/link01.png'),

(5,'CROCKERY','/shop_category/link01.png'),

(6,'FURNITURE','/shop_category/link01.png'),

(7,'VEHICLE','/shop_category/link01.png'),

(8,'COMPUTER','/shop_category/link01.png'),

(9,'LAPTOP','/shop_category/link01.png'),

(10,'MOBILE','/shop_category/link01.png'),

(11,'SHAREE','/shop_category/link01.png'),

(12,'FLOWER','/shop_category/link01.png'),

(13,'COSMETIC','/shop_category/link01.png'),

(14,'TSHIRT','/shop_category/link01.png'),

(15,'TROUSER','/shop_category/link01.png'),

(16,'JEANS','/shop_category/link01.png'),

(17,'BOOK','/shop_category/link01.png'),

(18,'SALOON','/shop_category/link01.png'),

(19,'BOUTIQUE','/shop_category/link01.png'),

(20,'INTERIOR','/shop_category/link01.png'),

(21,'SPORT','/shop_category/link01.png'),

(22,'MEDICAL EQUIPMENT','/shop_category/link01.png'),

(23,'VEHICLE ACCESSORIES','/shop_category/link01.png'),

(24,'ELECTRONICS GOODS','/shop_category/link01.png'),

(25,'SHOES','/shop_category/link01.png'),

(26,'GIFT SHOPS','/shop_category/link01.png');

/*Data for the table `shop_template` */

insert into `shop_template` values 

(1,'gallery_view',1,500,300,1),

(2,'cupboard_view',1,330,510,1),

(3,'grid_view',1,500,0,1),

(4,'slider_view',1,432,504,1),

(5,'slider_big_view',1,400,0,0),

(6,'flow_gallery_view',1,350,350,1),

(7,'ad_gallery_view',1,371,520,1),

(8,'coin_slider_view',1,400,0,1),

(9,'drawer_view',1,400,0,0),

(10,'toggle_teaser_view',1,400,0,1),

(11,'galleria_view',1,350,600,0),

(12,'galleria_simple_view',1,280,550,1),

(13,'image_cloud_view',1,400,400,0);

/*Data for the table `shop_type` */

insert into `shop_type` values 

(1,'Show Room'),

(2,'Shop'),

(3,'Hall');

/*Data for the table `state` */

insert into `state` values 

(1,'Andhra Pradesh',98),

(2,'Arunachal Pradesh',98),

(3,'Assam',98),

(4,'Bihar',98),

(5,'Chhattisgarh',98),

(6,'Goa',98),

(7,'Gujarat',98),

(8,'Haryana',98),

(9,'Himachal Pradesh',98),

(10,'Jammu and Kashmir',98),

(11,'Jharkhand',98),

(12,'Karnataka',98),

(13,'Kerala',98),

(14,'Madhya Pradesh',98),

(15,'Maharashtra',98),

(16,'Manipur',98),

(17,'Meghalaya',98),

(18,'Mizoram',98),

(19,'Nagaland',98),

(20,'Orissa',98),

(21,'Punjab',98),

(22,'Rajasthan',98),

(23,'Sikkim',98),

(24,'Tamil Nadu',98),

(25,'Tripura',98),

(26,'Uttar Pradesh',98),

(27,'Uttarakhand',98),

(28,'West Bengal',98),

(29,'Andaman and Nicobar Islands',98),

(30,'Chandigarh',98),

(31,'Dadra and Nagar Haveli',1),

(32,'Daman and Diu',98),

(33,'Lakshadweep',98),

(34,'Delhi',98),

(35,'Puducherry',98),

(36,'New Delhi',98),

(37,'Telangana',98);