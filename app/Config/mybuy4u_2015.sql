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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `ad_portion_available` */

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
) ENGINE=MyISAM AUTO_INCREMENT=3328 DEFAULT CHARSET=latin1;

/*Data for the table `address` */

insert into `address` values 
(2331,'8','dgbjmn@$#%%#E455323554542','24843121541251','234356',NULL,NULL),
(2332,'8','xfghhj!#@@&$$13225`','@#W$%154865jjk','124%^',NULL,NULL),
(2333,'8','vggj)(*&^%$#@!~12354865','!$@@@^#$%^&*()125454212','',NULL,NULL),
(2334,'8','vhkjdks!@#$%R^Y*U(I)_2453','!@#$%^&*1785663','#%$^%&',NULL,NULL),
(2335,'8','fdhfdj&*()154564','cdjsxj$%^763','1545',NULL,NULL),
(2336,'8','$#%$%15465456ngjndjfdkj','vbsdhskjdi#$%^&123658','((1554',NULL,NULL),
(2337,'8','@#$%^&*(154854865VHGKJHKJK','12516548CTFYHJHNKJ!@#$%^&*()','!@#$%^',NULL,NULL),
(2338,'8','!@#$%^&*()_+154846545vhgbjhkjnkmkll','~!@#$%^&*()_+784654212bccjsjjkjdks','54vb#$',NULL,NULL),
(2339,'8','rtfgvjh234678u8!@#$$%^&*(','14543gjdhfushik','',NULL,NULL),
(2340,'34','!@#$%^&*(','RTYGHJBJH','1535',NULL,NULL),
(2341,'36','afgghjjk','dfhgbjhkjliiuy','154',NULL,NULL),
(2342,'8','srdtfh@!#@$%^%&^15448656','gfgjjkhui!@#$%^&*()_____-       ','122545',NULL,NULL),
(2343,'8','drfhbjn22345655~!@#$%^&*()_+','nvdhfjdjfk!@#$%^&*1449796','',NULL,NULL),
(2344,'8','aesrgjhjkkj','fcgvgvbhn','fcbvbn',NULL,NULL),
(2345,'8','1545848654','vnjsfisjo','42545',NULL,NULL),
(2346,'8','144646','44545','4454',NULL,NULL),
(2347,'8','nvkjsnvj','njbndjnbkjs','113',NULL,NULL),
(2348,'8','vjshfjwk','bvksahvjsl','vbsjvk',NULL,NULL),
(2349,'8','vnsjvjsk','~!@#$%^&*()_+','123265',NULL,NULL),
(2350,'8','vjhgbmb','~!@#$%^&*()_+','545215',NULL,NULL),
(2351,'8','bkjdbkjdnbknvksjbk','vskjbksbks','vnskgj',NULL,NULL),
(2352,'8','vnknvsn','154564','15454',NULL,NULL),
(2353,'8','nbjdbkn','1155','454546',NULL,NULL),
(2354,'8','vnjvkjs','!@#','464646',NULL,NULL),
(2355,'8','bvshvhsvkj','kvhshvshjv','',NULL,NULL),
(2356,'8','1546854','545456','',NULL,NULL),
(2357,'8','b kjsbvjsk','2325','1345',NULL,NULL),
(2358,'8','vbkjsnvkjs','454545','544',NULL,NULL),
(2359,'8','1545454','454545','',NULL,NULL),
(2360,'8','vkjsvkjk','24654865','154654',NULL,NULL),
(2361,'8',NULL,'bkjnkjk 1516546854',NULL,NULL,NULL),
(2362,'8',NULL,'01256 bhjkjk',NULL,NULL,NULL),
(2363,'8',NULL,'vhvhvh 121456',NULL,NULL,NULL),
(2364,'8',NULL,'11654 gghh',NULL,NULL,NULL),
(2365,'68',NULL,'1545456 jkkj',NULL,NULL,NULL),
(2366,'8',NULL,'ghjj15465465',NULL,NULL,NULL),
(2367,'8',NULL,'jhjhj 1515646545',NULL,NULL,NULL),
(2368,'8',NULL,'nvklsnk 01465465',NULL,NULL,NULL),
(2369,'8',NULL,'cbsj 4545',NULL,NULL,NULL),
(2370,'8',NULL,'kjsnvkjns 1546546',NULL,NULL,NULL),
(2371,'','Rishikesh Road','Joligrant','248140','98',''),
(2372,'57',NULL,'uygthgvhnb',NULL,NULL,NULL),
(2373,'8',NULL,'vjgyihk',NULL,NULL,NULL),
(2374,'59',NULL,'fuiwsj ',NULL,NULL,NULL),
(2375,'8',NULL,'sdfghj',NULL,NULL,NULL),
(2376,'65',NULL,'789 tygh',NULL,NULL,NULL),
(2377,'8',NULL,'454 ddvsd',NULL,NULL,NULL),
(2378,'8',NULL,'454 fsds',NULL,NULL,NULL),
(2379,'8',NULL,'mkopi',NULL,NULL,NULL),
(2380,'8',NULL,'454 bbj',NULL,NULL,NULL),
(2381,'8',NULL,'jjbhg 232',NULL,NULL,NULL),
(2382,'8',NULL,'vgytr',NULL,NULL,NULL),
(2383,'8',NULL,'bhbhbhb',NULL,NULL,NULL),
(2384,'8',NULL,'vfd785',NULL,NULL,NULL),
(2385,'8',NULL,'hjkop 5632',NULL,NULL,NULL),
(2386,'8',NULL,'vjhgjhb',NULL,NULL,NULL),
(2387,'8',NULL,'nikitta',NULL,NULL,NULL),
(2388,'8',NULL,'rohan',NULL,NULL,NULL),
(2389,'8',NULL,'rtygfhg',NULL,NULL,NULL),
(2432,'dehradun','haridwar bypass',NULL,'12345',NULL,NULL),
(2433,'dehradun','haridwar bypass',NULL,'248140',NULL,NULL),
(2434,'dehradun','haridwar bypass',NULL,'248140',NULL,NULL),
(2441,'p','p',NULL,'p',NULL,NULL),
(2442,'y','y',NULL,'y',NULL,NULL),
(2443,'a','a',NULL,'a',NULL,NULL),
(2444,'i','i',NULL,'',NULL,NULL),
(2445,'i','i',NULL,'',NULL,NULL),
(2446,'i','i',NULL,'i',NULL,NULL),
(2447,'i','i',NULL,'i',NULL,NULL),
(2448,'i','i',NULL,'i',NULL,NULL),
(2449,'i','i',NULL,'i',NULL,NULL),
(2450,'i','i',NULL,'i',NULL,NULL),
(2451,'a','a',NULL,'a',NULL,NULL),
(2452,'a','a',NULL,'a',NULL,NULL),
(2453,'a','a',NULL,'a',NULL,NULL),
(2454,'a','a',NULL,'a',NULL,NULL),
(2455,'a','a',NULL,'a',NULL,NULL),
(2456,'a','a',NULL,'a',NULL,NULL),
(2457,'a','a',NULL,'a',NULL,NULL),
(2458,'a','a',NULL,'a',NULL,NULL),
(2459,'a','a',NULL,'a',NULL,NULL),
(2460,'a','a',NULL,'a',NULL,NULL),
(2461,'a','a',NULL,'a',NULL,NULL),
(2462,'a','a',NULL,'a',NULL,NULL),
(2463,'a','a',NULL,'a',NULL,NULL),
(2464,'a','a',NULL,'a',NULL,NULL),
(2465,'a','a',NULL,'a',NULL,NULL),
(2466,'a','a',NULL,'a',NULL,NULL),
(2467,NULL,NULL,NULL,NULL,NULL,NULL),
(2468,NULL,NULL,NULL,NULL,NULL,NULL),
(2469,NULL,NULL,NULL,NULL,NULL,NULL),
(2470,NULL,NULL,NULL,NULL,NULL,NULL),
(2471,NULL,NULL,NULL,NULL,NULL,NULL),
(2539,'q','q',NULL,'q',NULL,NULL),
(2540,'b','b',NULL,'b',NULL,NULL),
(2541,'','',NULL,'',NULL,NULL),
(2542,'','',NULL,'',NULL,NULL),
(2543,'','',NULL,'',NULL,NULL),
(2544,'','',NULL,'',NULL,NULL),
(2545,'','',NULL,'',NULL,NULL),
(2546,'','',NULL,'',NULL,NULL),
(2547,'','',NULL,'',NULL,NULL),
(2548,'','',NULL,'',NULL,NULL),
(2549,'','',NULL,'',NULL,NULL),
(2550,'','',NULL,'',NULL,NULL),
(2551,'','',NULL,'',NULL,NULL),
(2552,'','',NULL,'',NULL,NULL),
(2553,'','',NULL,'',NULL,NULL),
(2554,'','',NULL,'',NULL,NULL),
(2555,'','',NULL,'',NULL,NULL),
(2556,'','',NULL,'',NULL,NULL),
(2557,'','',NULL,'',NULL,NULL),
(2558,'c','c',NULL,'c',NULL,NULL),
(2559,'','',NULL,'',NULL,NULL),
(2560,'dehradun','haridwar bypass',NULL,'248140',NULL,NULL),
(2561,'c','c',NULL,'c',NULL,NULL),
(2562,'','',NULL,'',NULL,NULL),
(2563,'','',NULL,'',NULL,NULL),
(2564,'k','k',NULL,'k',NULL,NULL),
(2565,'o','o',NULL,'o',NULL,NULL),
(2566,'o','o',NULL,'o',NULL,NULL),
(2567,'','',NULL,'',NULL,NULL),
(2568,'','',NULL,'',NULL,NULL),
(2569,'','',NULL,'',NULL,NULL),
(2570,'','',NULL,'',NULL,NULL),
(2571,'c','c',NULL,'c',NULL,NULL),
(2572,'dehradun','haridwar bypass',NULL,'248140',NULL,NULL),
(2573,'c','c',NULL,'c',NULL,NULL),
(2574,NULL,NULL,NULL,NULL,NULL,NULL),
(2575,'vikas','vikas',NULL,'vikas',NULL,NULL),
(2576,'dehradun','haridwar bypass',NULL,'248140',NULL,NULL),
(2577,NULL,'haridwar bypass','h','248140',NULL,NULL),
(2578,NULL,NULL,NULL,NULL,NULL,NULL),
(2579,NULL,NULL,NULL,NULL,NULL,NULL),
(2580,NULL,NULL,NULL,NULL,NULL,NULL),
(2581,NULL,NULL,NULL,NULL,NULL,NULL),
(2582,NULL,'ififi','idio','3243333333333',NULL,NULL),
(2583,NULL,NULL,NULL,NULL,NULL,NULL),
(2584,NULL,NULL,NULL,NULL,NULL,NULL),
(2585,NULL,NULL,NULL,NULL,NULL,NULL),
(2586,NULL,'book street','book area name','248140',NULL,NULL),
(2587,NULL,NULL,NULL,NULL,NULL,NULL),
(2588,NULL,NULL,NULL,NULL,NULL,NULL),
(2589,NULL,NULL,NULL,NULL,NULL,NULL),
(2590,NULL,'book street','book area name','666666',NULL,NULL),
(2591,NULL,NULL,NULL,NULL,NULL,NULL),
(2592,NULL,'book street','book area name','666666',NULL,NULL),
(2593,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2594,NULL,NULL,NULL,NULL,NULL,NULL),
(2595,NULL,NULL,NULL,NULL,NULL,NULL),
(2596,NULL,NULL,NULL,NULL,NULL,NULL),
(2597,NULL,'book street','book area name','666664',NULL,NULL),
(2598,NULL,NULL,NULL,NULL,NULL,NULL),
(2599,NULL,NULL,NULL,NULL,NULL,NULL),
(2600,NULL,'book street','book area name','666666',NULL,NULL),
(2601,NULL,NULL,NULL,NULL,NULL,NULL),
(2602,NULL,NULL,NULL,NULL,NULL,NULL),
(2603,NULL,'book street','book area name','666666',NULL,NULL),
(2604,NULL,NULL,NULL,NULL,NULL,NULL),
(2605,NULL,'q','q','248140',NULL,NULL),
(2606,NULL,NULL,NULL,NULL,NULL,NULL),
(2607,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2608,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2609,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2610,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2611,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2612,NULL,NULL,NULL,NULL,NULL,NULL),
(2613,NULL,NULL,NULL,NULL,NULL,NULL),
(2614,NULL,NULL,NULL,NULL,NULL,NULL),
(2615,NULL,NULL,NULL,NULL,NULL,NULL),
(2616,NULL,NULL,NULL,NULL,NULL,NULL),
(2617,NULL,NULL,NULL,NULL,NULL,NULL),
(2618,NULL,NULL,NULL,NULL,NULL,NULL),
(2619,NULL,NULL,NULL,NULL,NULL,NULL),
(2620,NULL,NULL,NULL,NULL,NULL,NULL),
(2621,NULL,NULL,NULL,NULL,NULL,NULL),
(2622,NULL,NULL,NULL,NULL,NULL,NULL),
(2623,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2624,NULL,NULL,NULL,NULL,NULL,NULL),
(2625,NULL,NULL,NULL,NULL,NULL,NULL),
(2626,NULL,NULL,NULL,NULL,NULL,NULL),
(2627,NULL,NULL,NULL,NULL,NULL,NULL),
(2628,NULL,NULL,NULL,NULL,NULL,NULL),
(2629,NULL,NULL,NULL,NULL,NULL,NULL),
(2630,NULL,NULL,NULL,NULL,NULL,NULL),
(2631,NULL,NULL,NULL,NULL,NULL,NULL),
(2632,NULL,NULL,NULL,NULL,NULL,NULL),
(2633,NULL,NULL,NULL,NULL,NULL,NULL),
(2634,NULL,NULL,NULL,NULL,NULL,NULL),
(2635,NULL,NULL,NULL,NULL,NULL,NULL),
(2636,NULL,NULL,NULL,NULL,NULL,NULL),
(2637,NULL,NULL,NULL,NULL,NULL,NULL),
(2638,NULL,NULL,NULL,NULL,NULL,NULL),
(2639,NULL,NULL,NULL,NULL,NULL,NULL),
(2640,NULL,NULL,NULL,NULL,NULL,NULL),
(2641,NULL,NULL,NULL,NULL,NULL,NULL),
(2642,NULL,NULL,NULL,NULL,NULL,NULL),
(2643,NULL,NULL,NULL,NULL,NULL,NULL),
(2644,NULL,NULL,NULL,NULL,NULL,NULL),
(2645,NULL,NULL,NULL,NULL,NULL,NULL),
(2646,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2647,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2648,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2649,NULL,NULL,NULL,NULL,NULL,NULL),
(2650,NULL,NULL,NULL,NULL,NULL,NULL),
(2651,NULL,NULL,NULL,NULL,NULL,NULL),
(2652,NULL,NULL,NULL,NULL,NULL,NULL),
(2653,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2654,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2655,NULL,NULL,NULL,NULL,NULL,NULL),
(2656,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2657,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2658,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2659,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2660,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2661,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2662,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2663,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2664,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2665,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2666,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2667,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2668,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2669,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2670,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2671,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2672,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2673,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2674,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2675,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2676,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2677,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2678,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2679,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2680,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2681,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2682,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2683,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2684,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2685,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2686,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2687,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2688,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2689,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2690,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2691,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2692,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2693,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2694,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2695,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2696,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2697,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2698,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2699,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2700,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2701,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2702,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2703,NULL,NULL,NULL,NULL,NULL,NULL),
(2704,NULL,'new','new','248140',NULL,NULL),
(2705,NULL,'new','new','248140',NULL,NULL),
(2706,NULL,'new','new','248140',NULL,NULL),
(2707,NULL,'new','new','248140',NULL,NULL),
(2708,NULL,'new','new','248140',NULL,NULL),
(2709,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2710,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2711,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2712,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2713,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2714,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2715,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2716,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2717,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2718,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2719,NULL,'saloon','saloon','248140',NULL,NULL),
(2720,NULL,'saloon','saloon','248140',NULL,NULL),
(2721,NULL,'saloon','saloon','248140',NULL,NULL),
(2722,NULL,'saloon','saloon','248140',NULL,NULL),
(2723,NULL,NULL,NULL,NULL,NULL,NULL),
(2724,NULL,'o','book area name','248140',NULL,NULL),
(2725,NULL,NULL,NULL,NULL,NULL,NULL),
(2726,NULL,'o','book area name','248140',NULL,NULL),
(2727,NULL,'o','book area name','248140',NULL,NULL),
(2728,NULL,'o','book area name','248140',NULL,NULL),
(2729,NULL,'o','book area name','248140',NULL,NULL),
(2730,NULL,'o','book area name','248140',NULL,NULL),
(2731,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2732,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2733,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2734,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2735,NULL,'y','new','248140',NULL,NULL),
(2736,NULL,'y','new','248140',NULL,NULL),
(2737,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2738,NULL,NULL,NULL,NULL,NULL,NULL),
(2739,NULL,'vikas','book area name','248140',NULL,NULL),
(2740,NULL,'vikas','book area name','248140',NULL,NULL),
(2741,NULL,'hello','hello','248140',NULL,NULL),
(2742,NULL,'hi','hello','248140',NULL,NULL),
(2743,NULL,'hi','hello','248140',NULL,NULL),
(2744,NULL,'hello','hello','248140',NULL,NULL),
(2745,NULL,'hello','hello','248140',NULL,NULL),
(2746,NULL,'haridwar bypass','new','248140',NULL,NULL),
(2747,NULL,NULL,NULL,NULL,NULL,NULL),
(2748,NULL,'wdtyuio','sdfghjkl','248140',NULL,NULL),
(2813,NULL,'w','w','w',NULL,NULL),
(2814,NULL,'w','w','w',NULL,NULL),
(2815,NULL,'w','w','w',NULL,NULL),
(2816,NULL,'w','ww','ww',NULL,NULL),
(2817,NULL,'w','ww','ww',NULL,NULL),
(2818,NULL,'w','ww','ww',NULL,NULL),
(2819,NULL,'w','ww','ww',NULL,NULL),
(2820,NULL,'w','ww','ww',NULL,NULL),
(2821,NULL,'w','ww','ww',NULL,NULL),
(2822,NULL,'w','ww','ww',NULL,NULL),
(2823,NULL,'w','ww','ww',NULL,NULL),
(2824,NULL,NULL,NULL,NULL,NULL,NULL),
(2825,NULL,NULL,NULL,NULL,NULL,NULL),
(2826,NULL,NULL,NULL,NULL,NULL,NULL),
(2827,NULL,'horse','horse','12345',NULL,NULL),
(2828,NULL,'horse','horse','12345',NULL,NULL),
(2829,NULL,'horse','horse','12345',NULL,NULL),
(2830,NULL,'horse','horse','12345',NULL,NULL),
(2831,NULL,'horese','horese','12345',NULL,NULL),
(2765,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2766,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2767,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2768,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2769,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2770,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2771,NULL,'book street','book area name','248140',NULL,NULL),
(2772,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2773,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2774,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2775,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2776,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2777,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2778,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2779,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2780,NULL,'haridwar bypass','book area name','248140',NULL,NULL),
(2832,NULL,'horese','horese','12345',NULL,NULL),
(2833,NULL,'horese','horese','12345',NULL,NULL),
(2834,NULL,'horese','horese','12345',NULL,NULL),
(2835,NULL,NULL,NULL,NULL,NULL,NULL),
(2836,NULL,NULL,NULL,NULL,NULL,NULL),
(2837,NULL,NULL,NULL,NULL,NULL,NULL),
(2838,NULL,'horese','horese','12345',NULL,NULL),
(2839,NULL,NULL,NULL,NULL,NULL,NULL),
(2840,NULL,'qwertyu','qwertyui','654154',NULL,NULL),
(2841,NULL,'horese','horese','123456',NULL,NULL),
(2842,NULL,'horese','horese','123456',NULL,NULL),
(2843,NULL,'horese','horese','123456',NULL,NULL),
(2844,NULL,'horese','horese','123456',NULL,NULL),
(2845,NULL,'horese','horese','123456',NULL,NULL),
(2846,NULL,'horese','horese','123456',NULL,NULL),
(2847,NULL,'horese','horese','123456',NULL,NULL),
(2848,NULL,'horese','horese','123456',NULL,NULL),
(2849,NULL,'horese','horese','123456',NULL,NULL),
(2850,NULL,'horese','horese','123456',NULL,NULL),
(2851,NULL,'horese','horese','123456',NULL,NULL),
(2852,NULL,'horese','horese','123456',NULL,NULL),
(2853,NULL,'horese','horese','123456',NULL,NULL),
(2854,NULL,'horese','horese','123456',NULL,NULL),
(2855,NULL,'horese','horese','123456',NULL,NULL),
(2856,NULL,'horese','horese','123456',NULL,NULL),
(2857,NULL,'horese','horese','123456',NULL,NULL),
(2858,NULL,'horese','horese','123456',NULL,NULL),
(2859,NULL,'horese','horese','123456',NULL,NULL),
(2860,NULL,'horese','horese','123456',NULL,NULL),
(2861,NULL,'horese','horese','123456',NULL,NULL),
(2862,NULL,'horese','horese','123456',NULL,NULL),
(2863,NULL,'horese','horese','123456',NULL,NULL),
(2864,NULL,'horese','horese','123456',NULL,NULL),
(2865,NULL,'horese','horese','123456',NULL,NULL),
(2866,NULL,'horese','horese','123456',NULL,NULL),
(2867,NULL,'horese','horese','123456',NULL,NULL),
(2868,NULL,'horese','horese','123456',NULL,NULL),
(2869,NULL,'horese','horese','123456',NULL,NULL),
(2870,NULL,'','','',NULL,NULL),
(2871,NULL,'','','',NULL,NULL),
(2872,NULL,NULL,NULL,NULL,NULL,NULL),
(2873,NULL,'asdfgh','asdfgh','123456',NULL,NULL),
(2874,NULL,'asdfgh','asdfgh','123456',NULL,NULL),
(2875,NULL,'asdfgh','asdfgh','123456',NULL,NULL),
(2876,NULL,'asdfgh','asdfgh','123456',NULL,NULL),
(2877,NULL,'','','',NULL,NULL),
(2878,NULL,'qwertyui','qwertyu','123456',NULL,NULL),
(2879,NULL,'qwertyui','qwertyu','123456',NULL,NULL),
(2880,NULL,'qwertyui','asdfgh','123456',NULL,NULL),
(2881,NULL,'a','a','122345',NULL,NULL),
(2882,NULL,'ed','4r','123456',NULL,NULL),
(2883,NULL,'sdc','sdv','123456',NULL,NULL),
(2884,NULL,'sdc','sdv','123456',NULL,NULL),
(2885,NULL,'sdc','sdv','123456',NULL,NULL),
(2886,NULL,'sdc','sdv','123456',NULL,NULL),
(2887,NULL,NULL,NULL,NULL,NULL,NULL),
(2888,NULL,NULL,NULL,NULL,NULL,NULL),
(2889,NULL,NULL,NULL,NULL,NULL,NULL),
(2890,NULL,NULL,NULL,NULL,NULL,NULL),
(2891,NULL,'horese','horese','123456',NULL,NULL),
(2892,NULL,'horese','horese','654321',NULL,NULL),
(2893,NULL,'ghjkl','rtyuio','123456',NULL,NULL),
(2894,NULL,'ttroy','ttroy','123456',NULL,NULL),
(2895,NULL,'asd','asd','123456',NULL,NULL),
(2896,NULL,NULL,NULL,NULL,NULL,NULL),
(2897,NULL,NULL,NULL,NULL,NULL,NULL),
(2898,NULL,NULL,NULL,NULL,NULL,NULL),
(2899,NULL,NULL,NULL,NULL,NULL,NULL),
(2900,NULL,NULL,NULL,NULL,NULL,NULL),
(2901,NULL,NULL,NULL,NULL,NULL,NULL),
(2902,NULL,NULL,NULL,NULL,NULL,NULL),
(2903,NULL,NULL,NULL,NULL,NULL,NULL),
(2904,NULL,NULL,NULL,NULL,NULL,NULL),
(2905,NULL,NULL,NULL,NULL,NULL,NULL),
(2906,NULL,NULL,NULL,NULL,NULL,NULL),
(2907,NULL,NULL,NULL,NULL,NULL,NULL),
(2908,NULL,NULL,NULL,NULL,NULL,NULL),
(2909,NULL,NULL,NULL,NULL,NULL,NULL),
(2910,NULL,NULL,NULL,NULL,NULL,NULL),
(2911,NULL,'asdfgh','asdfgh','123456',NULL,NULL),
(2912,NULL,NULL,NULL,NULL,NULL,NULL),
(2913,NULL,NULL,NULL,NULL,NULL,NULL),
(2914,NULL,NULL,NULL,NULL,NULL,NULL),
(2915,NULL,NULL,NULL,NULL,NULL,NULL),
(2916,NULL,'horese','horese','123456',NULL,NULL),
(2917,NULL,'zxcvb','xcvbn','xcvbn',NULL,NULL),
(2918,NULL,'zxcvb','xcvbn','xcvbn',NULL,NULL),
(2919,NULL,'','','',NULL,NULL),
(2920,NULL,'','','',NULL,NULL),
(2921,NULL,'','','',NULL,NULL),
(2922,NULL,'dfghj','sdfghj','sdfghj',NULL,NULL),
(2923,NULL,'','','',NULL,NULL),
(2924,NULL,NULL,NULL,NULL,NULL,NULL),
(2925,NULL,NULL,NULL,NULL,NULL,NULL),
(2926,NULL,'kill','kill','kill',NULL,NULL),
(2927,NULL,NULL,NULL,NULL,NULL,NULL),
(2928,NULL,'kill','kill','kill',NULL,NULL),
(2929,NULL,NULL,NULL,NULL,NULL,NULL),
(2930,NULL,'kill','kill','kill',NULL,NULL),
(2931,NULL,NULL,NULL,NULL,NULL,NULL),
(2932,NULL,'kill','kill','kill',NULL,NULL),
(2933,NULL,NULL,NULL,NULL,NULL,NULL),
(2934,NULL,'kill','kill','kill',NULL,NULL),
(2935,NULL,NULL,NULL,NULL,NULL,NULL),
(2936,NULL,'kill','kill','kill',NULL,NULL),
(2937,NULL,NULL,NULL,NULL,NULL,NULL),
(2938,NULL,'kill','kill','kill',NULL,NULL),
(2939,NULL,NULL,NULL,NULL,NULL,NULL),
(2940,NULL,'kill','kill','kill',NULL,NULL),
(2941,NULL,NULL,NULL,NULL,NULL,NULL),
(2942,NULL,NULL,NULL,NULL,NULL,NULL),
(2943,NULL,NULL,NULL,NULL,NULL,NULL),
(2944,NULL,NULL,NULL,NULL,NULL,NULL),
(2945,NULL,NULL,NULL,NULL,NULL,NULL),
(2946,NULL,NULL,NULL,NULL,NULL,NULL),
(2947,NULL,NULL,NULL,NULL,NULL,NULL),
(2948,NULL,NULL,NULL,NULL,NULL,NULL),
(2949,NULL,NULL,NULL,NULL,NULL,NULL),
(2950,NULL,NULL,NULL,NULL,NULL,NULL),
(2951,NULL,NULL,NULL,NULL,NULL,NULL),
(2952,NULL,NULL,NULL,NULL,NULL,NULL),
(2953,NULL,NULL,NULL,NULL,NULL,NULL),
(2954,NULL,NULL,NULL,NULL,NULL,NULL),
(2955,NULL,NULL,NULL,NULL,NULL,NULL),
(2956,NULL,NULL,NULL,NULL,NULL,NULL),
(2957,NULL,NULL,NULL,NULL,NULL,NULL),
(2958,NULL,NULL,NULL,NULL,NULL,NULL),
(2959,NULL,NULL,NULL,NULL,NULL,NULL),
(2960,NULL,NULL,NULL,NULL,NULL,NULL),
(2961,NULL,NULL,NULL,NULL,NULL,NULL),
(2962,NULL,NULL,NULL,NULL,NULL,NULL),
(2963,NULL,NULL,NULL,NULL,NULL,NULL),
(2964,NULL,NULL,NULL,NULL,NULL,NULL),
(2965,NULL,NULL,NULL,NULL,NULL,NULL),
(2966,NULL,NULL,NULL,NULL,NULL,NULL),
(2967,NULL,NULL,NULL,NULL,NULL,NULL),
(2968,NULL,NULL,NULL,NULL,NULL,NULL),
(2969,NULL,NULL,NULL,NULL,NULL,NULL),
(2970,NULL,NULL,NULL,NULL,NULL,NULL),
(2971,NULL,NULL,NULL,NULL,NULL,NULL),
(2972,NULL,NULL,NULL,NULL,NULL,NULL),
(2973,NULL,NULL,NULL,NULL,NULL,NULL),
(2974,NULL,NULL,NULL,NULL,NULL,NULL),
(2975,NULL,NULL,NULL,NULL,NULL,NULL),
(2976,NULL,NULL,NULL,NULL,NULL,NULL),
(2977,NULL,NULL,NULL,NULL,NULL,NULL),
(2978,NULL,NULL,NULL,NULL,NULL,NULL),
(2979,NULL,NULL,NULL,NULL,NULL,NULL),
(2980,NULL,NULL,NULL,NULL,NULL,NULL),
(2981,NULL,NULL,NULL,NULL,NULL,NULL),
(2982,NULL,NULL,NULL,NULL,NULL,NULL),
(2983,NULL,NULL,NULL,NULL,NULL,NULL),
(2984,NULL,NULL,NULL,NULL,NULL,NULL),
(2985,NULL,NULL,NULL,NULL,NULL,NULL),
(2986,NULL,NULL,NULL,NULL,NULL,NULL),
(2987,NULL,NULL,NULL,NULL,NULL,NULL),
(2988,NULL,NULL,NULL,NULL,NULL,NULL),
(2989,NULL,'','','',NULL,NULL),
(2990,NULL,'','','',NULL,NULL),
(2991,NULL,'3','3','3',NULL,NULL),
(2992,NULL,'3','3','3',NULL,NULL),
(2993,NULL,'3','3','3',NULL,NULL),
(2994,NULL,'3','3','3',NULL,NULL),
(2995,NULL,'3','3','3',NULL,NULL),
(2996,NULL,'3','3','3',NULL,NULL),
(2997,NULL,'3','3','3',NULL,NULL),
(2998,NULL,'','h','h',NULL,NULL),
(2999,NULL,'','h','h',NULL,NULL),
(3000,NULL,'f','f','f',NULL,NULL),
(3001,NULL,'f','f','f',NULL,NULL),
(3002,NULL,'f','f','f',NULL,NULL),
(3003,NULL,'fsdfghj','fdfghjk','fcndfghj',NULL,NULL),
(3004,NULL,'fsdfghj','fdfghjk','fcndfghj',NULL,NULL),
(3005,NULL,'r','rr','r',NULL,NULL),
(3006,NULL,'sdfghjk','dfghjk','dfghjk',NULL,NULL),
(3007,NULL,NULL,NULL,NULL,NULL,NULL),
(3008,NULL,'dog','dog','dog',NULL,NULL),
(3009,NULL,'hit','hit','hit',NULL,NULL),
(3010,NULL,'event_or_place_details','event_or_place_details','event_',NULL,NULL),
(3011,NULL,'event_or_place_details','event_or_place_details','event_',NULL,NULL),
(3012,NULL,'event_or_place_details','event_or_place_details','event_',NULL,NULL),
(3013,NULL,'','','',NULL,NULL),
(3014,NULL,'','','',NULL,NULL),
(3015,NULL,'','','',NULL,NULL),
(3016,NULL,'b','bb','b',NULL,NULL),
(3017,NULL,'b','bb','b',NULL,NULL),
(3018,NULL,'b','bb','b',NULL,NULL),
(3019,NULL,'b','bb','b',NULL,NULL),
(3020,NULL,'','','',NULL,NULL),
(3021,NULL,'sdfg','sdfgh','asdfgh',NULL,NULL),
(3022,NULL,'NH72','Haridwar','248140',NULL,NULL),
(3023,NULL,'2345','345','srty',NULL,NULL),
(3024,NULL,'123456','wefgh','123456',NULL,NULL),
(3025,NULL,'fhdklj','hskh','134568',NULL,NULL),
(3026,NULL,'fhdklj','hskh','134568',NULL,NULL),
(3027,NULL,'fhdklj','hskh','134568',NULL,NULL),
(3028,NULL,'fhdklj','hskh','134568',NULL,NULL),
(3029,NULL,'jhkhkjh','jhjkhk','123456',NULL,NULL),
(3030,NULL,'gjkjk','gdd123456','123456',NULL,NULL),
(3031,NULL,NULL,NULL,NULL,NULL,NULL),
(3032,NULL,NULL,NULL,NULL,NULL,NULL),
(3033,NULL,NULL,NULL,NULL,NULL,NULL),
(3034,NULL,'fgh','fgh','123456',NULL,NULL),
(3035,NULL,'gfdfgd','gdgfdfg1234','123456',NULL,NULL),
(3036,NULL,'','','',NULL,NULL),
(3037,NULL,'yutuytt','11111111','111111',NULL,NULL),
(3038,NULL,'rtyui','rtyuio','123456',NULL,NULL),
(3039,NULL,'rtyu','ytyu','123456',NULL,NULL),
(3040,NULL,'ewqe','ewqe','111111',NULL,NULL),
(3041,NULL,'w','w','111111',NULL,NULL),
(3042,NULL,'asdfgh','asdfgh','123456',NULL,NULL),
(3043,NULL,'asdfgh','asdfgh','123456',NULL,NULL),
(3044,NULL,NULL,'asdfgh','qwerty',NULL,NULL),
(3045,NULL,'asdfgh','asdfgh','123456',NULL,NULL),
(3046,NULL,'asdfgh','123456','123456',NULL,NULL),
(3047,NULL,'hjjhhj','hjjhjh','123453',NULL,NULL),
(3048,NULL,'aaaaaa','aaaaaa','123456',NULL,NULL),
(3049,NULL,'ghg','gg','123456',NULL,NULL),
(3050,NULL,'ghg','gg','123456',NULL,NULL),
(3051,NULL,'ghg','gg','123456',NULL,NULL),
(3052,NULL,'ghg','gg','123456',NULL,NULL),
(3053,NULL,'asdfgh','asdfgh','123456',NULL,NULL),
(3054,NULL,'asdfgh','asdfgh','123456',NULL,NULL),
(3055,NULL,'asdfgh','asdfgh','123456',NULL,NULL),
(3056,NULL,'asdfgh','asdfgh','123456',NULL,NULL),
(3057,NULL,'asd','sd','123456',NULL,NULL),
(3058,NULL,'asdfgh','asdfgh','123456',NULL,NULL),
(3059,NULL,'asdfgh','asdfgh','111111',NULL,NULL),
(3060,NULL,'sdsf','gfgfgd','111111',NULL,NULL),
(3061,NULL,'sdfgh','sdfgh','123456',NULL,NULL),
(3062,NULL,'asdfgh','asdfgh','123456',NULL,NULL),
(3063,NULL,'test','test','123456',NULL,NULL),
(3064,NULL,'asdfgh','asdfgh','123456',NULL,NULL),
(3065,NULL,'asdfgh','asdfgh','123456',NULL,NULL),
(3066,NULL,'asdfgh','asdfgh','123456',NULL,NULL),
(3067,NULL,'asdfgh','asdfgh','123456',NULL,NULL),
(3068,NULL,'asdfgh','asdfgh','asdfgh',NULL,NULL),
(3069,NULL,'m','m','aaa',NULL,NULL),
(3070,NULL,'asdfgh','asdfgh','123456',NULL,NULL),
(3071,NULL,'asdfgh','asdfgh','123456',NULL,NULL),
(3072,NULL,'asdfgh','asdfgh','aa',NULL,NULL),
(3073,NULL,'ka','l','123456',NULL,NULL),
(3074,NULL,'sdfgh','sdfgh','123456',NULL,NULL),
(3075,NULL,'mnbnm','nmbmnb','nmbmn',NULL,NULL),
(3076,NULL,'mnbnm','nmbmnb','nmbmn',NULL,NULL),
(3077,NULL,'mnbnm','nmbmnb','12345',NULL,NULL),
(3078,NULL,'mnbnm','nmbmnb','go',NULL,NULL),
(3079,NULL,'n','n','n',NULL,NULL),
(3080,NULL,'n','n','n',NULL,NULL),
(3081,NULL,'123','41','111111',NULL,NULL),
(3082,NULL,'wert','ywertyu','123456',NULL,NULL),
(3083,NULL,'aa','aa','123456',NULL,NULL),
(3084,NULL,'aa','aa','123456',NULL,NULL),
(3085,NULL,'aa','aaa','123456',NULL,NULL),
(3086,NULL,'aa','aa','111111',NULL,NULL),
(3087,NULL,'tttttt','tyyyyy','222222',NULL,NULL),
(3088,NULL,'tttttt','tyyyyy','222222',NULL,NULL),
(3089,NULL,'nnn','nnn','123',NULL,NULL),
(3090,NULL,'nnn','nnn','uuu',NULL,NULL),
(3091,NULL,'nnn','nnn','uuu',NULL,NULL),
(3092,NULL,'n','n','833388',NULL,NULL),
(3093,NULL,'n','n','833388',NULL,NULL),
(3094,NULL,'mm','mm','999999',NULL,NULL),
(3095,NULL,'m','m','888888',NULL,NULL),
(3096,NULL,'nnn','nnn','777777',NULL,NULL),
(3097,NULL,'b','b','111111',NULL,NULL),
(3098,NULL,'b','b','111111',NULL,NULL),
(3099,NULL,'b','b','111111',NULL,NULL),
(3100,NULL,'b','b','111111',NULL,NULL),
(3101,NULL,'b','b','111111',NULL,NULL),
(3102,NULL,'n','n','833388',NULL,NULL),
(3103,NULL,'n','n','833388',NULL,NULL),
(3104,NULL,'n','n','833388',NULL,NULL),
(3105,NULL,'n','n','833388',NULL,NULL),
(3106,NULL,'n','n','833388',NULL,NULL),
(3107,NULL,'n','n','833388',NULL,NULL),
(3108,NULL,'n','n','833388',NULL,NULL),
(3109,NULL,'n','n','833388',NULL,NULL),
(3110,NULL,'n','n','833388',NULL,NULL),
(3111,NULL,'n','n','833388',NULL,NULL),
(3112,NULL,'n','n','833388',NULL,NULL),
(3113,NULL,'n','n','833388',NULL,NULL),
(3114,NULL,'n','n','833388',NULL,NULL),
(3115,NULL,'n','n','833388',NULL,NULL),
(3116,NULL,'n','n','833388',NULL,NULL),
(3117,NULL,'n','n','833388',NULL,NULL),
(3118,NULL,'n','n','833388',NULL,NULL),
(3119,NULL,'n','n','833388',NULL,NULL),
(3120,NULL,'n','n','833388',NULL,NULL),
(3121,NULL,'n','n','833388',NULL,NULL),
(3122,NULL,'n','n','833388',NULL,NULL),
(3123,NULL,'n','n','833388',NULL,NULL),
(3124,NULL,'n','n','833388',NULL,NULL),
(3125,NULL,'h','j','777777',NULL,NULL),
(3126,NULL,'n','n','777777',NULL,NULL),
(3127,NULL,'ggg','ggg','555555',NULL,NULL),
(3128,NULL,'bb','bb','111115',NULL,NULL),
(3129,NULL,'n','n','444444',NULL,NULL),
(3130,NULL,'ghghhg','hgghgh','555555',NULL,NULL),
(3131,NULL,'jhkjhj','jjkhjh','444444',NULL,NULL),
(3132,NULL,'ghjghjg','hghjghjgj','555555',NULL,NULL),
(3133,NULL,'erretr','rtere','333333',NULL,NULL),
(3134,NULL,'VIKAS MAARG','PREMNAGAR','240190',NULL,NULL),
(3135,NULL,'ghgjhg','jhgjhgj','444444',NULL,NULL),
(3136,NULL,'jkkjjkjkjk','jjkjkjkjk','898989',NULL,NULL),
(3137,NULL,'jkjkjkjkj','jkjkjkjkjkj','889898',NULL,NULL),
(3138,NULL,'hjhjhjhj','hjhjhjhj','898989',NULL,NULL),
(3139,NULL,'ki','ki','555555',NULL,NULL),
(3140,NULL,'kalu','kalu','454545',NULL,NULL),
(3141,NULL,'mo','m','000000',NULL,NULL),
(3142,NULL,'j','j','777777',NULL,NULL),
(3143,NULL,'kl','lk','989898',NULL,NULL),
(3144,NULL,'kjlk','lk','099090',NULL,NULL),
(3145,NULL,'iuoiu','iuoiui','888888',NULL,NULL),
(3146,NULL,'iuoiu','iuoiui','888888',NULL,NULL),
(3147,NULL,'book','book','101010',NULL,NULL),
(3148,NULL,'oiuo','oiu','888888',NULL,NULL),
(3149,NULL,'NNNNN','NNN','111111',NULL,NULL),
(3150,NULL,'NNNNN','NNN','111111',NULL,NULL),
(3151,NULL,'KJLKJLK','KJLKJLJ','999999',NULL,NULL),
(3152,NULL,'jjl','ljjllj','999998',NULL,NULL),
(3153,NULL,'jjl','ljjllj','999993',NULL,NULL),
(3154,NULL,'sdfg','asdfg','123456',NULL,NULL),
(3155,NULL,'watches','watches','123456',NULL,NULL),
(3156,NULL,'back street','dehradun','111111',NULL,NULL),
(3157,NULL,'back street','dehradun','111111',NULL,NULL),
(3158,NULL,'realestate','realestate','111111',NULL,NULL),
(3159,NULL,'hg','jhg','123455',NULL,NULL),
(3160,NULL,'back street','dehradun','111111',NULL,NULL),
(3161,NULL,'back street','dehradun','111111',NULL,NULL),
(3162,NULL,'back street','dehradun','111111',NULL,NULL),
(3163,NULL,'back street','dehradun','111111',NULL,NULL),
(3164,NULL,'back street','dehradun','111111',NULL,NULL),
(3165,NULL,'realestate','dehradun','111111',NULL,NULL),
(3166,NULL,'back street','dehradun','111111',NULL,NULL),
(3167,NULL,'back street','dehradun','111111',NULL,NULL),
(3168,NULL,'back street','dehradun','111111',NULL,NULL),
(3169,NULL,'back street','dehradun','111111',NULL,NULL),
(3170,NULL,'back street','dehradun','111111',NULL,NULL),
(3171,NULL,'back street','dehradun','111111',NULL,NULL),
(3172,NULL,'back street','dehradun','111111',NULL,NULL),
(3173,NULL,'back street','dehradun','111111',NULL,NULL),
(3174,NULL,'back street','dehradun','111111',NULL,NULL),
(3175,NULL,'back street','dehradun','111111',NULL,NULL),
(3176,NULL,'back street','dehradun','111111',NULL,NULL),
(3177,NULL,'back street','dehradun','111111',NULL,NULL),
(3178,NULL,'back street','dehradun','111111',NULL,NULL),
(3179,NULL,'back street','dehradun','111111',NULL,NULL),
(3180,NULL,'back street','dehradun','111111',NULL,NULL),
(3181,NULL,'back street','dehradun','111111',NULL,NULL),
(3182,NULL,'back street','dehradun','111111',NULL,NULL),
(3183,NULL,'back street','dehradun','111111',NULL,NULL),
(3184,NULL,'back street','dehradun','111111',NULL,NULL),
(3185,NULL,'back street','realestate','123455',NULL,NULL),
(3186,NULL,'back street','dehradun','111111',NULL,NULL),
(3187,NULL,'realestate','realestate','123455',NULL,NULL),
(3188,NULL,'back street','dehradun','111111',NULL,NULL),
(3189,NULL,'realestate','realestate','111111',NULL,NULL),
(3190,NULL,'back street','dehradun','111111',NULL,NULL),
(3191,NULL,'realestate','realestate','111111',NULL,NULL),
(3192,NULL,'back street','dehradun','111111',NULL,NULL),
(3193,NULL,'back street','dehradun','111111',NULL,NULL),
(3194,NULL,'jk','laks','123456',NULL,NULL),
(3195,NULL,'ddoon','ddoon','123456',NULL,NULL),
(3196,'8','NH72','DOIWALA','248140','98','13'),
(3197,NULL,'ddoon','ddoon','123456',NULL,NULL),
(3198,NULL,'james','vjames','123456',NULL,NULL),
(3199,NULL,'kljlkjl','jlkjlkjl','111111',NULL,NULL),
(3200,NULL,'ddoon','ddoon','123456',NULL,NULL),
(3201,NULL,'ddoon','ddoon','123456',NULL,NULL),
(3202,NULL,'ddoon','ddoon','123456',NULL,NULL),
(3203,NULL,'ddoon','ddoon','123456',NULL,NULL),
(3204,NULL,'ddoon','ddoon','123456','98',NULL),
(3205,NULL,'hlj','lkhkljh','123456','98',NULL),
(3206,NULL,NULL,NULL,NULL,'98',NULL),
(3207,'1','hlj','lkhkljh','123456','98','27'),
(3208,'2','jk','laks','123456',NULL,'27'),
(3209,'8','ghusu','ddit','098765',NULL,'27'),
(3210,'','ddoon','ddoon','123456','98',''),
(3211,'','ddoon','ddoon','123456','98',''),
(3212,'8','ddoon','ddoon','123456',NULL,'27'),
(3213,'67','roll','cali','897654',NULL,'30'),
(3214,NULL,'ddoon','ddoon','123456',NULL,NULL),
(3215,NULL,'90809','098098','098098',NULL,NULL),
(3216,'8','test1','test1','248001',NULL,'27'),
(3217,'8','fan','fan','123456',NULL,'27'),
(3218,'67','dehradun road','saharanpur','248001','98','30'),
(3219,'3','NH72','Dehradun','248102','98','27'),
(3245,NULL,NULL,NULL,NULL,NULL,NULL),
(3246,'3','jlkj','lkjljlkj','kjlkjlkjlk','98','27'),
(3247,'3','jlkj','lkjljlkj','kjlkjlkjlk','98','27'),
(3248,'3','jlkj','lkjljlkj','kjlkjlkjlk','98','27'),
(3249,'3','jlkj','lkjljlkj','kjlkjlkjlk','98','27'),
(3250,'4',NULL,NULL,NULL,'98','27'),
(3251,'27','tilak marg','bindal pul','248001','98','27'),
(3252,'27','haridwar road','dalanwala','248002','98','27'),
(3244,'17','kjhjh','jhjhhj','hhjhjhjjhj','98','27'),
(3253,'','haridwar road','dalanwala','248002','98',''),
(3254,'8','Rishikesh Road','Joligrant','248140','98','27'),
(3255,'','Haridwar Road','Doiwala','248140','98',''),
(3256,'','Shimla Bypass','ISBT','248001','98',''),
(3307,'','Rishikesh Road','Joligrant','248140','98',''),
(3257,'6','tilak road','bindaal pull','248001','98','27'),
(3266,'8','Rishikesh Road','Joligrant','248140','98','27'),
(3259,'8','Haridwar Road','Jogiwala','248001','98','27'),
(3267,'8','NH72','Jogiwala','248140',NULL,'27'),
(3270,'8','Haridwar Road','Dehradun','248001','98','27'),
(3272,'8','Khaao Gali','Vasant Vihar','248140',NULL,'27'),
(3273,'8','Tilak Marg','Rohini East','110011','98','27'),
(3274,'8','banglo road','Rani pur','546789',NULL,'27'),
(3275,'8','NH72','Dehradun','248140','98','27'),
(3276,'8','NH72','dalanwala','123456',NULL,'27'),
(3286,'8','tilak marg','bindal pul','248140','98',''),
(3287,'8','Tilak Marg','Rohini East','110011','98','27'),
(3288,NULL,'76, Jhanda Bazar',' Jhanda Mohalla','248001',NULL,NULL),
(3289,NULL,'Laxmi Road','Nehrucolony','248001','98',NULL),
(3306,'14','Haridwar Road','Doiwala','248001',NULL,'27'),
(3304,'','E.C Road','Dharampur','248001','98',''),
(3305,'14','Haridwar Road','Doiwala','248001',NULL,'27'),
(3308,'','Rishikesh Road','Joligrant','248140','98',''),
(3309,'','Rishikesh Road','Joligrant','248140','98',''),
(3310,'','Rishikesh Road','Joligrant','248140','98',''),
(3311,'','Rishikesh Road','Joligrant','248140','98',''),
(3312,'','Rishikesh Road','Joligrant','248140','98',''),
(3313,'','Rishikesh Road','Joligrant','248140','98',''),
(3314,'','Rishikesh Road','Joligrant','248140','98',''),
(3315,'','Rishikesh Road','Joligrant','248140','98',''),
(3316,'','E.C Road','Dharampur','248001','98',''),
(3321,'8','Shimla Bypass','ISBT','248001','98','27'),
(3318,'','Mohan Pur','Pream Nagar','248001','98',''),
(3319,'8','Haridwar Road','Doiwala','248140','98','27'),
(3320,'8','Mohan Pur','Pream Nagar','248001','98','27'),
(3322,'8','Haridwar Road','Doiwala','248140','98','27'),
(3323,'','Rishikesh Road','Joligrant','248140','98',''),
(3324,'8','Shimla Bypass','ISBT','248001','98','27'),
(3327,'','Haridwar Road','Doiwala','248140','98','');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert into `admin` values 
(2,'Rajesh','super_rajesh@mybuy4u.com','ba4aef33208dadebfda7f3f5be48cde425aa0771',5,'2013-06-29 00:00:00','2013-06-29 00:00:00',1);

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `advertisement` */

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `advertisement_portion` */

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `advertiser` */

/*Table structure for table `apartment` */

DROP TABLE IF EXISTS `apartment`;

CREATE TABLE `apartment` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `REAL_ESTATE_ID` bigint(10) DEFAULT NULL,
  `OWNER_TYPE` varchar(255) DEFAULT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `NUMBER_OF` bigint(10) DEFAULT '0',
  `OWNER_ADMIN` bigint(10) DEFAULT NULL,
  `USER_ID` bigint(10) NOT NULL DEFAULT '1',
  `SIZE` varchar(50) DEFAULT NULL,
  `COST` bigint(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_APARTMENT_OWNER` (`OWNER_ADMIN`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `apartment` */

insert into `apartment` values 
(3,'Shrii Tower','kjhkjhkjk',1,NULL,'2014-03-05 22:44:22','2014-03-05 22:44:22',0,NULL,740,'150000',100000),
(2,'GTA','asdfghjkl',1,NULL,'2014-01-20 16:45:46','2014-01-20 16:45:46',0,NULL,740,'1900',15000);

/*Table structure for table `apartment_address` */

DROP TABLE IF EXISTS `apartment_address`;

CREATE TABLE `apartment_address` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `STREET_NAME` varchar(255) DEFAULT NULL,
  `AREA_NAME` varchar(255) DEFAULT NULL,
  `AREA_CODE` varchar(21) DEFAULT NULL,
  `COUNTRY` varchar(25) DEFAULT NULL,
  `STATE` varchar(25) DEFAULT NULL,
  `CITY` varchar(25) DEFAULT NULL,
  `APARTMENT_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `apartment_address` */

insert into `apartment_address` values 
(1,'Haridwar Road','GTA FOREST HILL','248001','98','27','8',2),
(2,'Bell road','clementown','248001','98','27','8',3);

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `apartment_image` */

insert into `apartment_image` values 
(3,NULL,'/usr/local/userPhotos/APARTMENT/3/city-wallpaper-1.jpg','/usr/local/userPhotos/Big/APARTMENT/3/city-wallpaper-1.jpg',3),
(2,NULL,'/usr/local/userPhotos/APARTMENT/2/1480574_600682716658532_1629368238_a.jpg','/usr/local/userPhotos/Big/APARTMENT/2/1480574_600682716658532_1629368238_a.jpg',2);

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `astrologer` */

/*Table structure for table `astrologer_image` */

DROP TABLE IF EXISTS `astrologer_image`;

CREATE TABLE `astrologer_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `ASTROLOGER_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ASTROLOGER_IMAGE_ASTROLOGER_ID` (`ASTROLOGER_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `astrologer_image` */

/*Table structure for table `astrologer_tab` */

DROP TABLE IF EXISTS `astrologer_tab`;

CREATE TABLE `astrologer_tab` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` longtext,
  `TAB` varchar(255) NOT NULL,
  `ASTROLOGER_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ASTROLOGER_TAB_ASTROLOGER_ID` (`ASTROLOGER_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `astrologer_tab` */

/*Table structure for table `banner_ad_image_detail` */

DROP TABLE IF EXISTS `banner_ad_image_detail`;

CREATE TABLE `banner_ad_image_detail` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `MIN_PAY_OUT_PER_DAY` bigint(10) DEFAULT NULL,
  `MIN_PAY_OUT` bigint(10) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `BUSINESS_TYPE_ID` bigint(10) DEFAULT NULL,
  `BUSINESS_TYPE` varchar(30) DEFAULT NULL,
  `TOTAL_PRICE` bigint(20) DEFAULT NULL,
  `IS_ACTIVE` tinyint(1) DEFAULT '0',
  `IS_PAID` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `banner_ad_image_detail` */

insert into `banner_ad_image_detail` values 
(2,5,100,'2014-01-01','2014-01-29',334,'local_business',145,NULL,NULL),
(3,5,100,'2014-01-10','2014-01-31',334,'local_business',110,NULL,NULL),
(4,5,100,'2014-01-07','2014-01-30',334,'local_business',120,NULL,NULL),
(5,5,100,'2014-02-03','2014-03-27',334,'local_business',265,NULL,NULL),
(6,5,100,'2014-02-01','2014-02-28',334,'local_business',140,NULL,NULL),
(7,5,100,'2014-03-01','2014-03-27',12,'real_estates',135,NULL,NULL),
(8,5,100,'2014-03-09','2014-03-29',1,'company_organizations',105,NULL,NULL),
(9,5,100,'2014-03-07','2014-03-29',334,'local_business',115,NULL,NULL),
(11,5,100,'2014-03-01','2014-03-24',334,'local_business',120,NULL,NULL),
(12,5,100,'2014-03-01','2014-03-21',334,'local_business',105,1,1),
(13,5,100,'2014-03-01','2014-03-27',3,'brand_or_products',135,1,1),
(14,5,100,'2014-04-02','2014-04-24',340,'local_business',115,0,0),
(15,5,100,'2014-04-01','2014-04-30',340,'local_business',150,0,0),
(16,5,100,'2014-04-02','2014-04-30',4,'company_organizations',145,0,0),
(17,5,100,'2014-04-02','2014-04-30',4,'company_organizations',145,0,0);

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
  `BUSINESS_TYPE_ID` bigint(10) DEFAULT NULL,
  `BUSINESS_TYPE` varchar(50) DEFAULT NULL,
  `IS_ACTIVE` tinyint(1) DEFAULT '0',
  `IS_PAID` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

/*Data for the table `banner_ad_text` */

insert into `banner_ad_text` values 
(1,'Discounts average $13 off with a Shop.com promo code or coupon. 50 Shop.com coupons now on RetailMeNot.','2013-12-15','2014-01-17',5,100,170,19,326,'LocalBusiness',0,0),
(19,'Back to School Promotion: buy a Mac for college and get a $100 App Store Gift Card, or buy an iPad or iPhone and get a $50 card.','2013-12-18','2013-12-21',5,100,0,19,326,'LocalBusiness',0,0),
(25,'Buy Watches Online- Discount Shop is an online watch store and offers best authentic wrist watches for men and women online at discount price','2013-12-24','2014-01-17',5,100,125,NULL,152,'RealEstates',0,0),
(26,'SHOP BY ROOM.Shop By Room ... SHOP BY STYLE ∑ Shop By .... We work every day to bring you discounts on new products across our entire store.','2014-01-01','2014-01-31',5,100,155,NULL,327,'LocalBusiness',0,0),
(27,'WatchesFlat 30% off + Extra 30% off ∑ Online Sale Online shopping United Colors of Benetton Upto ... Women Shoes Buy 3 at 999 ∑','2014-01-08','2014-01-31',5,100,120,NULL,334,'LocalBusiness',0,0),
(28,'NoBetterDeal - discount shopping at below wholesale prices Bidz.com Need Help? .... Welcome to NoBetterDeal.com, your home for discount shopping.','2014-02-04','2014-02-28',5,100,125,NULL,335,'LocalBusiness',0,0),
(29,'Free shipping and savings of up to 75% off top brands. Shop discounted shoes, clothing, accessories, and more!','2014-02-03','2014-02-25',5,100,115,NULL,334,'local_business',0,0),
(30,'jkhkj\r\n','2014-03-06','2014-03-29',5,100,120,NULL,334,'local_business',0,0),
(31,'<p>ghdhfkjhdfjkhdkjfkjdahfkfhkjadhfkjdhfjsakdfjaf</p>\r\n','2014-03-01','2014-04-11',5,100,210,NULL,334,'local_business',0,0),
(32,'<p>hi jkhsdjf hjkSHDKJ JKHSDJK KJHSJHD ldfhdaj kjadhfjkh kjadkfhajksdhfk</p>\r\n','2014-03-01','2014-03-29',5,100,145,NULL,334,'local_business',0,0);

/*Table structure for table `banner_image` */

DROP TABLE IF EXISTS `banner_image`;

CREATE TABLE `banner_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) DEFAULT NULL,
  `IMAGE_PATH_BIG` varchar(255) DEFAULT NULL,
  `BANNER_IMAGE_DETAIL_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `banner_image` */

insert into `banner_image` values 
(2,'/usr/local/userPhotos/BANNER/2/add-bgyellow.jpg','/usr/local/userPhotos/Big/BANNER/2/add-bgyellow.jpg',2),
(3,'/usr/local/userPhotos/BANNER/3/add-bg.jpg','/usr/local/userPhotos/Big/BANNER/3/add-bg.jpg',3),
(4,'/usr/local/userPhotos/BANNER/4/995421_593644664013109_1180970608_n.jpg','/usr/local/userPhotos/Big/BANNER/4/995421_593644664013109_1180970608_n.jpg',4),
(5,'/usr/local/userPhotos/BANNER/5/1451974_613168502074267_1569905781_s.jpg','/usr/local/userPhotos/Big/BANNER/5/1451974_613168502074267_1569905781_s.jpg',5),
(6,'/usr/local/userPhotos/BANNER/6/banner_online_shopping1.jpg','/usr/local/userPhotos/Big/BANNER/6/banner_online_shopping1.jpg',6),
(7,'/usr/local/userPhotos/BANNER/7/boutique_banner_images.jpg','/usr/local/userPhotos/Big/BANNER/7/boutique_banner_images.jpg',7),
(8,'/usr/local/userPhotos/BANNER/8/contact.jpg','/usr/local/userPhotos/Big/BANNER/8/contact.jpg',8),
(9,'/usr/local/userPhotos/BANNER/9/add-bggreen.jpg','/usr/local/userPhotos/Big/BANNER/9/add-bggreen.jpg',9),
(11,'/usr/local/userPhotos/BANNER/11/960100_371945906274477_81820131_n.jpg','/usr/local/userPhotos/Big/BANNER/11/960100_371945906274477_81820131_n.jpg',11),
(12,'/usr/local/userPhotos/BANNER/12/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/BANNER/12/1476435_558998504180050_2080544610_n.jpg',12),
(13,'/usr/local/userPhotos/BANNER/13/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/BANNER/13/1476435_558998504180050_2080544610_n.jpg',13),
(14,'/usr/local/userPhotos/BANNER//bloominginalaska.jpg','/usr/local/userPhotos/Big/BANNER//bloominginalaska.jpg',NULL),
(15,'/usr/local/userPhotos/BANNER/14/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/BANNER/14/1476435_558998504180050_2080544610_n.jpg',14),
(16,'/usr/local/userPhotos/BANNER/15/960100_371945906274477_81820131_n.jpg','/usr/local/userPhotos/Big/BANNER/15/960100_371945906274477_81820131_n.jpg',15),
(17,'/usr/local/userPhotos/BANNER/17/1455142_612410932150004_1164928356_n.jpg','/usr/local/userPhotos/Big/BANNER/17/1455142_612410932150004_1164928356_n.jpg',17);

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
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

/*Data for the table `book` */

insert into `book` values 
(1,'2013-08-01 14:01:42','2013-08-01 14:01:42','chvjh','fuygtfyuhukj','fghfvhb','dhgfgvb','','45435','INR','','','',1),
(2,'2013-08-01 14:02:33','2013-08-01 14:02:33','fyuguj','gujhkijm','fyhjgjm','fhgvhjn','','452412','INR','','','',1),
(3,'2013-08-01 14:03:17','2013-08-01 14:03:17','sdtgfvb','dtyygfujhkj','dghvhnb ','ddghvb ','','5412','INR','','','',1),
(4,'2013-08-01 14:04:01','2013-08-01 14:04:01','xgfvhjb','styfyhjjnikujikj','edhgbn','dhybn','','765432','INR','','','',1),
(5,'2013-08-01 14:04:47','2013-08-01 14:04:47','fyhjnb','chgvbhjnmjnk','fhjn','fhjn','','76542','INR','','','',1),
(6,'2013-08-01 14:05:44','2013-08-01 14:05:44','ujyghbnm','ruyghbjghuihjnm','vjhbn','guikjhnm','','1545864','INR','','','',1),
(7,'2013-08-01 14:06:27','2013-08-01 14:06:27','fjhb','dytgftyuukhikjk','fjhbv','fjhnb','','452412','INR','','','',1),
(8,'2013-08-01 14:06:58','2013-08-01 14:06:58','etyuikb','rrfyutguyhyuikjoijkj','dhgvnb ','dhgvb','','15345645','INR','','','',1),
(9,'0000-00-00 00:00:00','0000-00-00 00:00:00','Wallpaper','WINDOWS CRACK','','',NULL,'$700','INR',NULL,NULL,NULL,304),
(10,'2013-09-27 12:05:20','2013-09-27 12:05:20','joker','jokerjokerjokerjokerjokerjokerjokerjokerjokerjokerjokerjokerjokerjokerjokerjoker','joker','joker',NULL,'77788778','INR','878788787897','joker',NULL,310),
(11,'2013-09-27 12:06:25','2013-09-27 12:06:25','nmnmm','jjjkkjkjkjjk','nmnm','nmnn',NULL,'98','INR','898989','nmnmnm',NULL,310),
(12,'2013-10-02 13:33:16','2013-10-02 13:33:16','iouoi','lk','kljlkj','RK PUB',NULL,'786','INR','0000000000000','lkj',NULL,316),
(13,'2013-10-03 10:12:27','2013-10-03 10:12:27','simon','don\'t miss it','rocky','koilaa',NULL,'900','INR','1010101010101','5th ',NULL,317),
(14,'2013-10-03 12:49:15','2013-10-03 12:49:15','tyutuytuytu','uiuiuiiiu','kjhkjhkjh','jhjhjhkhkj',NULL,'9889','INR','8777777777777','6uyiu',NULL,317),
(15,'2013-10-04 11:38:52','2013-10-04 11:38:52','joki','jokijokijokijokijokijokijokijokijokijoki','joki','joki',NULL,'98','INR','0000000000000','joki',NULL,318),
(16,'2013-11-11 11:38:13','2013-11-11 11:38:13','catch','science book','loreal','BSC',NULL,'1111','INR','1212121212121','6',NULL,323),
(17,'2013-11-11 11:43:14','2013-11-11 11:43:14','doggg','animal','dogi','dog',NULL,'1212121','INR','2323232323232','2',NULL,323),
(20,'2013-11-12 12:53:24','2013-11-12 12:53:24','hkjh','qwertyuio','dogi','dog',NULL,'1212121','INR','1212121212121','2',NULL,324),
(21,'2013-11-12 12:53:45','2013-11-12 12:53:45','hkjh','sdfghj','dogi','dog',NULL,'1212121','INR','1212121212121','2',NULL,324),
(22,'2013-12-27 12:09:13','2013-12-27 12:09:13','test id','sdfghj','dogi','dog',NULL,'1212121','INR','1212121212121','2',NULL,324),
(24,'2014-03-19 17:48:46','2014-03-19 17:48:46','jhkj','hkjhjhk','jhj','jhjkh',NULL,'89809','INR','1234567891234','jhhjh',NULL,340),
(25,'2014-03-19 17:51:28','2014-03-19 17:51:28','jhjk','hjjgg','jjhjkhjk','jkhjkh',NULL,'78687','INR','1234567891234','Vikas',NULL,340),
(26,'2014-03-28 11:18:54','2014-03-28 11:18:54','uioui','hjghjghgjg','uyuiyu','uyy',NULL,'78678','INR','1231231231231','uyyiuyiui',NULL,337);

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
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `book_image` */

insert into `book_image` values 
(1,NULL,'/usr/local/userPhotos/BOOK/1/105-Create-Rose-Floral-Design-with-Step-by-Step-Nail-Art-Tutorial-01-e1348931673640.jpg','/usr/local/userPhotos/Big/BOOK/1/105-Create-Rose-Floral-Design-with-Step-by-Step-Nail-Art-Tutorial-01-e1348931673640.jpg',1),
(2,NULL,'/usr/local/userPhotos/BOOK/8/18.jpg','/usr/local/userPhotos/Big/BOOK/8/18.jpg',8),
(3,NULL,'/usr/local/userPhotos/BOOK/2/9kwesw6vjwx9se69.jpg','/usr/local/userPhotos/Big/BOOK/2/9kwesw6vjwx9se69.jpg',2),
(4,NULL,'/usr/local/userPhotos/BOOK/3/1320_309051809200778_238341337_n.jpg','/usr/local/userPhotos/Big/BOOK/3/1320_309051809200778_238341337_n.jpg',3),
(5,NULL,'/usr/local/userPhotos/BOOK/7/11767_530026560372665_1374584732_n.jpg','/usr/local/userPhotos/Big/BOOK/7/11767_530026560372665_1374584732_n.jpg',7),
(6,NULL,'/usr/local/userPhotos/BOOK/6/17416_513512168695662_2026408493_n.jpg','/usr/local/userPhotos/Big/BOOK/6/17416_513512168695662_2026408493_n.jpg',6),
(7,NULL,'/usr/local/userPhotos/BOOK/4/34715_358822404223645_1537193822_n.jpg','/usr/local/userPhotos/Big/BOOK/4/34715_358822404223645_1537193822_n.jpg',4),
(8,NULL,'/usr/local/userPhotos/BOOK/5/216230_470510266352987_2131456409_n.jpg','/usr/local/userPhotos/Big/BOOK/5/216230_470510266352987_2131456409_n.jpg',5),
(9,NULL,'/usr/local/userPhotos/BOOK/9/bloominginalaska-windows-wallpapers-hd.jpg','/usr/local/userPhotos/Big/BOOK/9/bloominginalaska-windows-wallpapers-hd.jpg',9),
(10,NULL,'/usr/local/userPhotos/BOOK/10/bloominginalaska-windows-wallpapers-hd.jpg','/usr/local/userPhotos/Big/BOOK/10/bloominginalaska-windows-wallpapers-hd.jpg',10),
(11,NULL,'/usr/local/userPhotos/BOOK/11/1063810_495312807211507_775072561_o.jpg','/usr/local/userPhotos/Big/BOOK/11/1063810_495312807211507_775072561_o.jpg',11),
(12,NULL,'/usr/local/userPhotos/BOOK/12/199481255_fdfe885f87_s.jpg','/usr/local/userPhotos/Big/BOOK/12/199481255_fdfe885f87_s.jpg',12),
(13,NULL,'/usr/local/userPhotos/BOOK/13/199481255_fdfe885f87_s.jpg','/usr/local/userPhotos/Big/BOOK/13/199481255_fdfe885f87_s.jpg',13),
(14,NULL,'/usr/local/userPhotos/BOOK/14/199481143_3c148d9dd3_s.jpg','/usr/local/userPhotos/Big/BOOK/14/199481143_3c148d9dd3_s.jpg',14),
(15,NULL,'/usr/local/userPhotos/BOOK/15/229228324_08223b70fa_s.jpg','/usr/local/userPhotos/Big/BOOK/15/229228324_08223b70fa_s.jpg',15),
(16,NULL,'/usr/local/userPhotos/BOOK/16/main.png','/usr/local/userPhotos/Big/BOOK/16/main.png',16),
(17,NULL,'/usr/local/userPhotos/BOOK/17/1381690_587333221303438_1072552433_n_-_Copy.jpg','/usr/local/userPhotos/Big/BOOK/17/1381690_587333221303438_1072552433_n_-_Copy.jpg',17),
(24,NULL,'/usr/local/userPhotos/BOOK/25/1476532_571893542883063_394917734_n.jpg','/usr/local/userPhotos/Big/BOOK/25/1476532_571893542883063_394917734_n.jpg',25),
(23,NULL,'/usr/local/userPhotos/BOOK/24/995421_593644664013109_1180970608_n.jpg','/usr/local/userPhotos/Big/BOOK/24/995421_593644664013109_1180970608_n.jpg',24),
(20,NULL,'/usr/local/userPhotos/BOOK/20/1381690_587333221303438_1072552433_n_-_Copy.jpg','/usr/local/userPhotos/Big/BOOK/20/1381690_587333221303438_1072552433_n_-_Copy.jpg',20),
(21,NULL,'/usr/local/userPhotos/BOOK/21/1381690_587333221303438_1072552433_n_-_Copy.jpg','/usr/local/userPhotos/Big/BOOK/21/1381690_587333221303438_1072552433_n_-_Copy.jpg',21),
(22,NULL,'/usr/local/userPhotos/BOOK/22/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/BOOK/22/1476435_558998504180050_2080544610_n.jpg',22),
(25,NULL,'/usr/local/userPhotos/BOOK/26/bam-shankar-bhole-nath-chilam-bhang.jpg','/usr/local/userPhotos/Big/BOOK/26/bam-shankar-bhole-nath-chilam-bhang.jpg',26);

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
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

/*Data for the table `boutique` */

insert into `boutique` values 
(1,'slkdjalskdjl','098','INR','87998','09809',300,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(2,'nmnmnmnm','988989','INR','56','89988989',300,'2013-10-01 17:02:41','2013-10-01 17:02:41'),
(3,'vikas','bnnb','INR','87','8778',300,'2013-10-01 17:18:12','2013-10-01 17:18:12'),
(4,'vikas','bnnb','INR','87','8778',300,'2013-10-01 17:19:05','2013-10-01 17:19:05'),
(5,'vikas','bnnb','INR','87','8778',300,'2013-10-01 17:19:10','2013-10-01 17:19:10'),
(6,'vikas','bnnb','INR','87','8778',300,'2013-10-01 17:19:26','2013-10-01 17:19:26'),
(7,'vikas','bnnb','INR','87','8778',300,'2013-10-01 17:24:27','2013-10-01 17:24:27'),
(8,'vikas','bnnb','INR','87','8778',300,'2013-10-01 17:35:55','2013-10-01 17:35:55'),
(9,'vikas','898989','INR','8','898989',300,'2013-10-01 18:19:01','2013-10-01 18:19:01'),
(32,'Cusion','50% off','INR','250','15 Inch',336,'2014-03-03 17:38:39','2014-03-03 17:38:39'),
(12,'kdjfladjfl','kjhkjh','INR','89','98',327,'2013-11-28 16:32:49','2013-11-28 16:32:49'),
(13,'jkjl','jkhk','INR','78','67',327,'2013-11-28 16:33:20','2013-11-28 16:33:20'),
(14,'kjlkj','hkhj','INR','544','876',327,'2013-11-28 16:34:00','2013-11-28 16:34:00'),
(15,'test1','test11','INR','123','123',328,'2013-12-04 10:47:22','2013-12-04 10:47:22'),
(16,'medicins','toxic','INR','890','50ml',330,'2014-03-03 10:04:53','2014-03-03 10:04:53'),
(17,'hi','hiiiii','INR','8689','78',326,'2013-12-27 11:51:50','2013-12-27 11:51:50'),
(18,'test1','jkhjkhkjhkjhk','INR','89','87',326,'2013-12-27 11:40:08','2013-12-27 11:40:08'),
(31,'hats','asdfgm','INR','1000','full',330,'2014-03-03 11:26:57','2014-03-03 11:26:57'),
(25,'hjh','gjhghjgjh','INR','87787','78787',334,'2014-02-10 17:46:52','2014-02-10 17:46:52'),
(26,'hkjh','hgjhghjghjggh','INR','87787','778ml',334,'2014-02-21 13:23:44','2014-02-21 13:23:44'),
(33,'hgjhg','jkhkjhkj','INR','4534354','jkhkjh',334,'2014-03-07 23:15:03','2014-03-07 23:15:03'),
(34,'iuyiuyi','m,,n,','INR','7887','khkjhjkhkj',334,'2014-03-07 23:15:50','2014-03-07 23:15:50'),
(35,'yui','gfdfdq','INR','4354','gfdgfd',334,'2014-03-07 23:16:28','2014-03-07 23:16:28'),
(36,'uyiuy','kjhkj','INR','879879','uyiuy',334,'2014-03-19 17:39:33','2014-03-19 17:39:33'),
(37,'uyiuy','kjhkj','INR','879879','uyiuy',334,'2014-03-19 17:39:45','2014-03-19 17:39:45'),
(38,'jkhkj','jhkjh','INR','89789','hjkhk',343,'2014-03-21 17:19:10','2014-03-21 17:19:10'),
(39,'kjhk','jkhk','INR','9787','uiyi',343,'2014-03-24 12:32:17','2014-03-24 12:32:17'),
(40,'kljl','jkhkhk','INR','7987987','jkhjk',334,'2014-03-28 11:17:23','2014-03-28 11:17:23');

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
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

/*Data for the table `boutique_image` */

insert into `boutique_image` values 
(1,NULL,'/usr/local/userPhotos/BOUTIQUE/2/199481255_fdfe885f87_s.jpg','/usr/local/userPhotos/Big/BOUTIQUE/2/199481255_fdfe885f87_s.jpg',2),
(2,NULL,'/usr/local/userPhotos/BOUTIQUE/5/199481255_fdfe885f87_s.jpg','/usr/local/userPhotos/Big/BOUTIQUE/5/199481255_fdfe885f87_s.jpg',5),
(3,NULL,'/usr/local/userPhotos/BOUTIQUE/7/229228324_08223b70fa_s.jpg','/usr/local/userPhotos/Big/BOUTIQUE/7/229228324_08223b70fa_s.jpg',7),
(4,NULL,'/usr/local/userPhotos/BOUTIQUE/8/199481255_fdfe885f87_s.jpg','/usr/local/userPhotos/Big/BOUTIQUE/8/199481255_fdfe885f87_s.jpg',8),
(5,NULL,'/usr/local/userPhotos/BOUTIQUE/9/199481255_fdfe885f87_s.jpg','/usr/local/userPhotos/Big/BOUTIQUE/9/199481255_fdfe885f87_s.jpg',9),
(44,NULL,'/usr/local/userPhotos/BOUTIQUE/31/226745_213250335359976_4542807_n.jpg','/usr/local/userPhotos/Big/BOUTIQUE/31/226745_213250335359976_4542807_n.jpg',31),
(41,NULL,'/usr/local/userPhotos/BOUTIQUE/25/226745_213250335359976_4542807_n.jpg','/usr/local/userPhotos/Big/BOUTIQUE/25/226745_213250335359976_4542807_n.jpg',25),
(7,NULL,'/usr/local/userPhotos/BOUTIQUE/12/229228324_08223b70fa_s.jpg','/usr/local/userPhotos/Big/BOUTIQUE/12/229228324_08223b70fa_s.jpg',12),
(8,NULL,'/usr/local/userPhotos/BOUTIQUE/13/199481087_33ae73a8de_s.jpg','/usr/local/userPhotos/Big/BOUTIQUE/13/199481087_33ae73a8de_s.jpg',13),
(9,NULL,'/usr/local/userPhotos/BOUTIQUE/14/229228324_08223b70fa_s.jpg','/usr/local/userPhotos/Big/BOUTIQUE/14/229228324_08223b70fa_s.jpg',14),
(10,NULL,'/usr/local/userPhotos/BOUTIQUE/1/229228324_08223b70fa_s.jpg','/usr/local/userPhotos/Big/BOUTIQUE/1/229228324_08223b70fa_s.jpg',1),
(11,NULL,'/usr/local/userPhotos/BOUTIQUE/2/229228324_08223b70fa_s.jpg','/usr/local/userPhotos/Big/BOUTIQUE/2/229228324_08223b70fa_s.jpg',2),
(12,NULL,'/usr/local/userPhotos/BOUTIQUE/3/229228324_08223b70fa_s.jpg','/usr/local/userPhotos/Big/BOUTIQUE/3/229228324_08223b70fa_s.jpg',3),
(13,NULL,'/usr/local/userPhotos/BOUTIQUE/4/229228324_08223b70fa_s.jpg','/usr/local/userPhotos/Big/BOUTIQUE/4/229228324_08223b70fa_s.jpg',4),
(14,NULL,'/usr/local/userPhotos/BOUTIQUE/5/229228324_08223b70fa_s.jpg','/usr/local/userPhotos/Big/BOUTIQUE/5/229228324_08223b70fa_s.jpg',5),
(15,NULL,'/usr/local/userPhotos/BOUTIQUE/6/229228324_08223b70fa_s.jpg','/usr/local/userPhotos/Big/BOUTIQUE/6/229228324_08223b70fa_s.jpg',6),
(16,NULL,'/usr/local/userPhotos/BOUTIQUE/7/229228324_08223b70fa_s.jpg','/usr/local/userPhotos/Big/BOUTIQUE/7/229228324_08223b70fa_s.jpg',7),
(17,NULL,'/usr/local/userPhotos/BOUTIQUE/8/229228324_08223b70fa_s.jpg','/usr/local/userPhotos/Big/BOUTIQUE/8/229228324_08223b70fa_s.jpg',8),
(18,NULL,'/usr/local/userPhotos/BOUTIQUE/9/199481236_dc98b5abb3_s.jpg','/usr/local/userPhotos/Big/BOUTIQUE/9/199481236_dc98b5abb3_s.jpg',9),
(37,NULL,'/usr/local/userPhotos/BOUTIQUE/17/1455142_612410932150004_1164928356_n.jpg','/usr/local/userPhotos/Big/BOUTIQUE/17/1455142_612410932150004_1164928356_n.jpg',17),
(46,NULL,'/usr/local/userPhotos/BOUTIQUE/33/boutique_banner_images.jpg','/usr/local/userPhotos/Big/BOUTIQUE/33/boutique_banner_images.jpg',33),
(35,NULL,'/usr/local/userPhotos/BOUTIQUE/19/100_4438.JPG','/usr/local/userPhotos/Big/BOUTIQUE/19/100_4438.JPG',19),
(21,NULL,'/usr/local/userPhotos/BOUTIQUE/12/1456639_614098435291986_1515615659_n.jpg','/usr/local/userPhotos/Big/BOUTIQUE/12/1456639_614098435291986_1515615659_n.jpg',12),
(22,NULL,'/usr/local/userPhotos/BOUTIQUE/13/1451974_613168502074267_1569905781_s.jpg','/usr/local/userPhotos/Big/BOUTIQUE/13/1451974_613168502074267_1569905781_s.jpg',13),
(23,NULL,'/usr/local/userPhotos/BOUTIQUE/14/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/BOUTIQUE/14/1476435_558998504180050_2080544610_n.jpg',14),
(24,NULL,'/usr/local/userPhotos/BOUTIQUE/15/1456639_614098435291986_1515615659_n.jpg','/usr/local/userPhotos/Big/BOUTIQUE/15/1456639_614098435291986_1515615659_n.jpg',15),
(25,NULL,'/usr/local/userPhotos/BOUTIQUE/16/1507953_261169437393352_1695095558_n.jpg','/usr/local/userPhotos/Big/BOUTIQUE/16/1507953_261169437393352_1695095558_n.jpg',16),
(45,NULL,'/usr/local/userPhotos/BOUTIQUE/32/cusion.jpg','/usr/local/userPhotos/Big/BOUTIQUE/32/cusion.jpg',32),
(27,NULL,'/usr/local/userPhotos/BOUTIQUE/18/add-bgyellow.jpg','/usr/local/userPhotos/Big/BOUTIQUE/18/add-bgyellow.jpg',18),
(36,NULL,'/usr/local/userPhotos/BOUTIQUE/33/add-bg.jpg','/usr/local/userPhotos/Big/BOUTIQUE/33/add-bg.jpg',33),
(42,NULL,'/usr/local/userPhotos/BOUTIQUE/26/cch-70897-svle-a.jpg','/usr/local/userPhotos/Big/BOUTIQUE/26/cch-70897-svle-a.jpg',26),
(43,NULL,'/usr/local/userPhotos/BOUTIQUE/30/boutique_banner_images.jpg','/usr/local/userPhotos/Big/BOUTIQUE/30/boutique_banner_images.jpg',NULL),
(47,NULL,'/usr/local/userPhotos/BOUTIQUE/34/autumn-wallpaper-hd.jpg','/usr/local/userPhotos/Big/BOUTIQUE/34/autumn-wallpaper-hd.jpg',34),
(48,NULL,'/usr/local/userPhotos/BOUTIQUE/35/bam-shankar-bhole-nath-chilam-bhang.jpg','/usr/local/userPhotos/Big/BOUTIQUE/35/bam-shankar-bhole-nath-chilam-bhang.jpg',35),
(49,NULL,'/usr/local/userPhotos/BOUTIQUE/36/1476532_571893542883063_394917734_n.jpg','/usr/local/userPhotos/Big/BOUTIQUE/36/1476532_571893542883063_394917734_n.jpg',36),
(50,NULL,'/usr/local/userPhotos/BOUTIQUE/37/1476532_571893542883063_394917734_n.jpg','/usr/local/userPhotos/Big/BOUTIQUE/37/1476532_571893542883063_394917734_n.jpg',37),
(51,NULL,'/usr/local/userPhotos/BOUTIQUE/38/960100_371945906274477_81820131_n.jpg','/usr/local/userPhotos/Big/BOUTIQUE/38/960100_371945906274477_81820131_n.jpg',38),
(52,NULL,'/usr/local/userPhotos/BOUTIQUE/39/61263773_ZJCdrZk2j_1390970051.jpg','/usr/local/userPhotos/Big/BOUTIQUE/39/61263773_ZJCdrZk2j_1390970051.jpg',39),
(53,NULL,'/usr/local/userPhotos/BOUTIQUE/40/226745_213250335359976_4542807_n.jpg','/usr/local/userPhotos/Big/BOUTIQUE/40/226745_213250335359976_4542807_n.jpg',40);

/*Table structure for table `business` */

DROP TABLE IF EXISTS `business`;

CREATE TABLE `business` (
  `ID` int(255) NOT NULL,
  `BUSINESS` varchar(50) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `business` */

/*Table structure for table `business_banner_image` */

DROP TABLE IF EXISTS `business_banner_image`;

CREATE TABLE `business_banner_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `BUSINESS_ID` bigint(10) NOT NULL,
  `BUSINESS_TYPE` varchar(30) NOT NULL,
  `ALT` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_OWNER_IMAGE_OWNER` (`BUSINESS_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

/*Data for the table `business_banner_image` */

insert into `business_banner_image` values 
(3,'/usr/local/userPhotos/BUSINESS_BANNER/335/banner_online_shopping1.jpg',335,'local_business',NULL),
(2,'/usr/local/userPhotos/BUSINESS_BANNER/336/banner.png',336,'local_business',NULL),
(4,'/usr/local/userPhotos/BUSINESS_BANNER/334/contact.jpg',334,'local_business','contact.jpg'),
(5,'/usr/local/userPhotos/BUSINESS_BANNER/330/contact.jpg',330,'local_business',NULL),
(6,'/usr/local/userPhotos/BUSINESS_BANNER/12/add-bg.jpg',12,'real_estates','add-bg.jpg'),
(7,'/usr/local/userPhotos/BUSINESS_BANNER/3/contact.jpg',3,'company_organizations',NULL),
(8,'/usr/local/userPhotos/BUSINESS_BANNER/1/add-bg.jpg',1,'local_business',NULL),
(15,'/usr/local/userPhotos/BUSINESS_BANNER/337/helping_you_take_control.jpg',337,'local_business',NULL),
(26,'/usr/local/userPhotos/BUSINESS_BANNER/3/add-bggreen.jpg',3,'brand_or_products','add-bggreen.jpg'),
(25,'/usr/local/userPhotos/BUSINESS_BANNER/4/add-bgblue.jpg',4,'company_organizations','add-bgblue.jpg'),
(24,'/usr/local/userPhotos/BUSINESS_BANNER/340/add-bgyellow.jpg',340,'local_business','add-bgyellow.jpg'),
(23,'/usr/local/userPhotos/BUSINESS_BANNER/339/FILED-HOME_12.jpg',339,'local_business',NULL),
(22,'/usr/local/userPhotos/BUSINESS_BANNER/338/looking_for_work.jpg',338,'local_business',NULL),
(29,'/usr/local/userPhotos/BUSINESS_BANNER/343/IMG_28112013_174911.png',343,'local_business',NULL);

/*Table structure for table `business_image` */

DROP TABLE IF EXISTS `business_image`;

CREATE TABLE `business_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `BUSINESS_ID` bigint(10) NOT NULL,
  `BUSINESS_TYPE` varchar(50) NOT NULL,
  `ALT` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_OWNER_IMAGE_OWNER` (`BUSINESS_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

/*Data for the table `business_image` */

insert into `business_image` values 
(1,'/usr/local/userPhotos/BUSINESS/1/1471764_557221921032032_1469736954_a.jpg',1,'real_estates',NULL),
(3,'/usr/local/userPhotos/BUSINESS/1/1471764_557221921032032_1469736954_a.jpg',1,'company_organizations',NULL),
(6,'/usr/local/userPhotos/BUSINESS/2/city-wallpaper-1.jpg',2,'event_or_places',NULL),
(5,'/usr/local/userPhotos/BUSINESS/1/1063810_495312807211507_775072561_o.jpg',1,'brand_or_products',NULL),
(7,'/usr/local/userPhotos/BUSINESS/2/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg',2,'brand_or_products',NULL),
(8,'/usr/local/userPhotos/BUSINESS/2/autumn-landscape-with-trees-1920x1080-wallpaper-11341.jpg',2,'company_organizations',NULL),
(9,'/usr/local/userPhotos/BUSINESS/3/candidate_help.png',3,'event_or_places','candidate_help.png'),
(10,'/usr/local/userPhotos/BUSINESS/2/city-wallpaper-1.jpg',2,'real_estates',NULL),
(11,'/usr/local/userPhotos/BUSINESS/100/v.jpg',100,'homes',NULL),
(12,'/usr/local/userPhotos/BUSINESS/12/add-bg.jpg',12,'real_estates','add-bg.jpg'),
(13,'/usr/local/userPhotos/BUSINESS/3/a.jpg',3,'company_organizations',NULL),
(15,'/usr/local/userPhotos/BUSINESS/1/61263773_ZJCdrZk2j_1390970051.jpg',1,'local_business','61263773_ZJCdrZk2j_1390970051.jpg'),
(22,'/usr/local/userPhotos/BUSINESS/337/ni-tax.jpg',337,'local_business','ni-tax.jpg'),
(29,'/usr/local/userPhotos/BUSINESS/338/candidate_help.png',338,'local_business','candidate_help.png'),
(20,'/usr/local/userPhotos/BUSINESS/334/boutique_banner_images.jpg',334,'local_business','boutique_banner_images.jpg'),
(30,'/usr/local/userPhotos/BUSINESS/339/job_vacancies.png',339,'local_business','job_vacancies.png'),
(31,'/usr/local/userPhotos/BUSINESS/340/add-bgyellow.jpg',340,'local_business','add-bgyellow.jpg'),
(32,'/usr/local/userPhotos/BUSINESS/4/1476435_558998504180050_2080544610_n.jpg',4,'company_organizations','1476435_558998504180050_2080544610_n.jpg'),
(33,'/usr/local/userPhotos/BUSINESS/3/1455142_612410932150004_1164928356_n.jpg',3,'brand_or_products','1455142_612410932150004_1164928356_n.jpg'),
(36,'/usr/local/userPhotos/BUSINESS/343/1476435_558998504180050_2080544610_n.jpg',343,'local_business','1476435_558998504180050_2080544610_n.jpg');

/*Table structure for table `business_name` */

DROP TABLE IF EXISTS `business_name`;

CREATE TABLE `business_name` (
  `ID` int(50) NOT NULL AUTO_INCREMENT,
  `BUSINESS_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `business_name` */

insert into `business_name` values 
(5,'q'),
(6,'k'),
(7,'k'),
(8,'k'),
(9,'k'),
(10,'k'),
(11,'k'),
(12,'v'),
(13,'v'),
(14,'v');

/*Table structure for table `business_type` */

DROP TABLE IF EXISTS `business_type`;

CREATE TABLE `business_type` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(21) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `business_type` */

insert into `business_type` values 
(1,'Local Business'),
(2,'Company Organisation'),
(3,'Brand or Product'),
(4,'Real Estate'),
(5,'Event orPlace'),
(6,'Other');

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `STATE` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_CITY_STATE` (`STATE`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

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

/*Table structure for table `coaching_institute` */

DROP TABLE IF EXISTS `coaching_institute`;

CREATE TABLE `coaching_institute` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `DESCRIPTION` longtext NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `coaching_institute` */

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `coaching_institute_gallery_image` */

/*Table structure for table `coaching_institute_image` */

DROP TABLE IF EXISTS `coaching_institute_image`;

CREATE TABLE `coaching_institute_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `COACHING_INSTITUTE_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_COACHING_INSTITUTE_IMAGE_COACHING_INSTITUTE_ID` (`COACHING_INSTITUTE_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `coaching_institute_image` */

/*Table structure for table `coaching_institute_tab` */

DROP TABLE IF EXISTS `coaching_institute_tab`;

CREATE TABLE `coaching_institute_tab` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` longtext NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `COACHING_INSTITUTE_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_COACHING_INSTITUTE_TAB_COACHING_INSTITUTE_ID` (`COACHING_INSTITUTE_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `coaching_institute_tab` */

/*Table structure for table `coaching_institute_tab_image` */

DROP TABLE IF EXISTS `coaching_institute_tab_image`;

CREATE TABLE `coaching_institute_tab_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `COACHING_INSTITUTE_TAB_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_COACHING_INSTITUTE_TAB_IMAGE_COACHING_INSTITUTE_TAB_ID` (`COACHING_INSTITUTE_TAB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `coaching_institute_tab_image` */

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
  `COMPANY_ORGANIZATION_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`),
  KEY `FK_COMPANY_ADDRESS` (`ADDRESS`),
  KEY `FK_COMPANY_OWNER` (`OWNER_ID`),
  KEY `FK_COMPANY_OWNER_ADMIN` (`OWNER_ADMIN`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `company` */

insert into `company` values 
(1,'2014-03-10 12:03:02','2014-03-10 12:03:02','Try It nag','iso certifiedjjjj',NULL,NULL,NULL,740,NULL,NULL,NULL,1),
(2,'2014-03-10 11:57:15','2014-03-10 11:57:15','Jabong','50+70% OFF',NULL,NULL,NULL,740,NULL,NULL,NULL,1),
(3,'2014-03-10 11:57:50','2014-03-10 11:57:50','Desasterv','full fill bj',NULL,NULL,NULL,740,NULL,NULL,NULL,1),
(4,'2014-03-09 19:51:51','2014-03-09 19:51:51','designer company','ha ha ha',NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),
(5,'2014-03-19 17:55:07','2014-03-19 17:55:07','jhkjhj','jjhkjhkj',NULL,NULL,NULL,NULL,NULL,NULL,NULL,4),
(6,'2014-03-25 10:19:17','2014-03-25 10:19:17','kjhk','jhkjkjhkhjk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
(7,'2014-04-24 11:09:55','2014-04-24 11:09:55','hi','jkhkjhk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,4);

/*Table structure for table `company_image` */

DROP TABLE IF EXISTS `company_image`;

CREATE TABLE `company_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `COMPANY_ID` bigint(10) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_COMPANY_IMAGE_COMPANY_ID` (`COMPANY_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `company_image` */

insert into `company_image` values 
(1,'/usr/local/userPhotos/COMPANY/1/autumn-landscape-with-trees-1920x1080-wallpaper-11341.jpg',1,'/usr/local/userPhotos/Big/COMPANY/1/autumn-landscape-with-trees-1920x1080-wallpaper-11341.jpg'),
(2,'/usr/local/userPhotos/COMPANY/2/1476532_571893542883063_394917734_n.jpg',2,'/usr/local/userPhotos/Big/COMPANY/2/1476532_571893542883063_394917734_n.jpg'),
(3,'/usr/local/userPhotos/COMPANY/3/city-wallpaper-1.jpg',3,'/usr/local/userPhotos/Big/COMPANY/3/city-wallpaper-1.jpg'),
(4,'/usr/local/userPhotos/COMPANY/4/1507953_261169437393352_1695095558_n.jpg',4,'/usr/local/userPhotos/Big/COMPANY/4/1507953_261169437393352_1695095558_n.jpg'),
(5,'/usr/local/userPhotos/COMPANY/5/995421_593644664013109_1180970608_n.jpg',5,'/usr/local/userPhotos/Big/COMPANY/5/995421_593644664013109_1180970608_n.jpg'),
(6,'/usr/local/userPhotos/COMPANY/6/DSC01743.JPG',6,'/usr/local/userPhotos/Big/COMPANY/6/DSC01743.JPG'),
(7,'/usr/local/userPhotos/COMPANY/7/995421_593644664013109_1180970608_n.jpg',7,'/usr/local/userPhotos/Big/COMPANY/7/995421_593644664013109_1180970608_n.jpg');

/*Table structure for table `company_organization` */

DROP TABLE IF EXISTS `company_organization`;

CREATE TABLE `company_organization` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` longtext,
  `ADDRESS` bigint(10) DEFAULT NULL,
  `USER_ID` bigint(10) NOT NULL,
  `STATUS` int(6) DEFAULT NULL,
  `MOBILE_NUMBER` varchar(21) DEFAULT NULL,
  `TOTAL_PRICE` int(10) DEFAULT '0',
  `IS_ACTIVE` tinyint(1) DEFAULT '0',
  `IS_PAID` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FK_SHOP_ADDRESS` (`ADDRESS`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `company_organization` */

insert into `company_organization` values 
(1,'2014-01-21 11:59:39','2014-01-21 11:59:39','Aqua Fresh','asdfghjk',3267,740,NULL,'9887676554',0,0,0),
(2,'2014-01-22 22:16:40','2014-01-22 22:16:40','farzi','asdfghjk',3274,740,NULL,'9887676554',0,0,0),
(3,'2014-03-11 15:50:51','2014-03-11 15:50:51','Hero','<p>Hero motocop</p>\r\n',3306,740,NULL,'8978675654',0,0,0),
(4,'2014-03-19 18:02:58','2014-03-19 18:02:58','L & T co-orporations','<p>l &amp; t</p>\r\n',3323,773,NULL,'8978675654',0,0,0);

/*Table structure for table `company_tab` */

DROP TABLE IF EXISTS `company_tab`;

CREATE TABLE `company_tab` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` longtext NOT NULL,
  `COMPANY_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_COMPANY_TAB_ID` (`COMPANY_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `company_tab` */

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
  `OWNER_TYPE` varchar(255) DEFAULT NULL,
  `OWNER_ADMIN` bigint(10) DEFAULT NULL,
  `COST_UNIT` varchar(10) NOT NULL DEFAULT 'INR',
  `USER_ID` bigint(10) NOT NULL,
  `REAL_ESTATE_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_COMPLEX_OWNER_ADMIN` (`OWNER_ADMIN`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `complex` */

insert into `complex` values 
(1,'2014-03-05 23:01:03','2014-03-05 23:01:03','Rohini Complex','sdfghjk','2000',8000,NULL,NULL,'INR',740,1);

/*Table structure for table `complex_address` */

DROP TABLE IF EXISTS `complex_address`;

CREATE TABLE `complex_address` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `STREET_NAME` varchar(255) DEFAULT NULL,
  `AREA_NAME` varchar(255) DEFAULT NULL,
  `AREA_CODE` varchar(21) DEFAULT NULL,
  `COUNTRY` varchar(25) DEFAULT NULL,
  `STATE` varchar(25) DEFAULT NULL,
  `CITY` varchar(25) DEFAULT NULL,
  `COMPLEX_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `complex_address` */

insert into `complex_address` values 
(1,'Chakrata Road','Near Ghanta Garh','248001','98','27','8',1);

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `complex_image` */

insert into `complex_image` values 
(1,NULL,'/usr/local/userPhotos/COMPLEX/1/1063810_495312807211507_775072561_o.jpg','/usr/local/userPhotos/Big/COMPLEX/1/1063810_495312807211507_775072561_o.jpg',1);

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `computer` */

insert into `computer` values 
(1,'2013-08-01 17:10:33','2013-08-01 17:10:33','edytghb','vjbkjnkjm 1324567890 ,./;\'[]\\','dtyhfh','','','','','','','','','','','1555456','INR','','4324',3),
(2,'2013-08-02 17:11:51','2013-08-02 17:11:51','nvknsvk','cvjhnkmdtfyujhjk 1230456987 ,./;\'[]\\@#$%&','nkjnk','','','','','','','','','','','47764523','INR','','74645 ghj',3),
(3,'2013-08-01 17:12:46','2013-08-01 17:12:46','ioujij','xcfghbnjkm,iujih 13203654789','bkhhnkn','','','','','','','','','','','1541352','INR','','755 vkjdk',3),
(4,'2013-08-01 17:13:28','2013-08-01 17:13:28',' ghksfhkd','sertgyhujiop./,;\'[]\\123654889','vkjvnkds','','','','','','','','','','','45','INR','','768465',3),
(5,'2013-08-01 17:14:27','2013-08-01 17:14:27','yuio','zxcvbnm,asdfghjklqwertyuiop123455568,./;\'[]\\','xcvbn','','','','','','','','','','','7798654','INR','','454 hvkhjsd',3),
(6,'2013-08-01 17:15:11','2013-08-01 17:15:11','vbskjvjks','qwertyuiopjhgfdsa 2589631470 ,./;\'[]\\','hkhnk','','','','','','','','','','','7575','INR','','75vksnvks',3),
(7,'2013-08-01 17:16:29','2013-08-01 17:16:29','bvjsbvjs','vuygbjnmmjm 2589631470 ,./;\'[]\\','uiufjksjk','','','','','','','','','','','7542','INR','','fygvh46456',3),
(8,'2013-08-01 17:18:01','2013-08-01 17:18:01','vbkjsnks','fuyhkjm 846213970 ,./;\'[]\\@#$%&','yiujkjk','','','','','','','','','','','742572','INR','','7666',3);

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `computer_image` */

insert into `computer_image` values 
(1,NULL,'/usr/local/userPhotos/COMPUTER/1/2d440392c25a3210f344316cf8a147c8.jpg','/usr/local/userPhotos/Big/COMPUTER/1/2d440392c25a3210f344316cf8a147c8.jpg',1),
(2,NULL,'/usr/local/userPhotos/COMPUTER/2/04-Shraddha-kapoor-Wallpaper-Aashiqui-2.jpg','/usr/local/userPhotos/Big/COMPUTER/2/04-Shraddha-kapoor-Wallpaper-Aashiqui-2.jpg',2),
(3,NULL,'/usr/local/userPhotos/COMPUTER/3/1DSCF5844_copy.jpg','/usr/local/userPhotos/Big/COMPUTER/3/1DSCF5844_copy.jpg',3),
(4,NULL,'/usr/local/userPhotos/COMPUTER/4/2-l·∫µng-hoa-trang-tr√≠-cho-nh·ªØng-d·ªãp-ƒëƒÉc-bi·ªát.jpg','/usr/local/userPhotos/Big/COMPUTER/4/2-l·∫µng-hoa-trang-tr√≠-cho-nh·ªØng-d·ªãp-ƒëƒÉc-bi·ªát.jpg',4),
(5,NULL,'/usr/local/userPhotos/COMPUTER/5/3-hibiscus-flowers.png','/usr/local/userPhotos/Big/COMPUTER/5/3-hibiscus-flowers.png',5),
(6,NULL,'/usr/local/userPhotos/COMPUTER/6/232415-flowers-bouquet-vase-bow-flower-buds-wallpaper-wallpapeprscraft.jpg','/usr/local/userPhotos/Big/COMPUTER/6/232415-flowers-bouquet-vase-bow-flower-buds-wallpaper-wallpapeprscraft.jpg',6),
(7,NULL,'/usr/local/userPhotos/COMPUTER/7/84910-joyclaywedding.jpg','/usr/local/userPhotos/Big/COMPUTER/7/84910-joyclaywedding.jpg',7),
(8,NULL,'/usr/local/userPhotos/COMPUTER/8/393112.jpg','/usr/local/userPhotos/Big/COMPUTER/8/393112.jpg',8);

/*Table structure for table `cosmetic` */

DROP TABLE IF EXISTS `cosmetic`;

CREATE TABLE `cosmetic` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `COST` varchar(255) NOT NULL,
  `COST_UNIT` varchar(10) NOT NULL DEFAULT 'INR',
  `SHOP_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_BOOK_SHOP_ID` (`SHOP_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `cosmetic` */

/*Table structure for table `cosmetic_image` */

DROP TABLE IF EXISTS `cosmetic_image`;

CREATE TABLE `cosmetic_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `COSMETIC_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_BOOK_IMAGE_BOOK_ID` (`COSMETIC_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `cosmetic_image` */

/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=MyISAM AUTO_INCREMENT=238 DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `designer_cloth` */

insert into `designer_cloth` values 
(1,'bvjdbj','bknknknk 46854541 /.;,\'[]\\','INR','787','fujsbvjs',306,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(2,'nhikjk','hvkhkvdj 1356467489 ,./\'\\][;','INR','6746','787 hkhk',306,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(3,'bjhbj','bjkdnk 76463','INR','465463','789 hhkj',306,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(4,'edtrrfytgf','kjbndnbgd /.,;\'\\][ 1365464','INR','44','789 gujbj',306,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(5,'ghehfjhbj','sdfghjkcvb ,,./\';[]\\@#$%&','INR','45412','78 hikjhk',6,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(6,'fytgfhgb','gjhbjkn /.,;\'[]\\@#$%&','INR','766','56 gujhkj',6,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(7,'bjbnhjk','87465 ./\\]\'[;, dyfhgbjmn','INR','646','54645 guhk',6,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(8,'rfygfvhg','hgujuhoijkn 1234567890 /.,;\'[]]\\','INR','8465413','65nvkdn',6,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(9,'kljjkjkjkjk','hhkjhhhk','INR','89','89',308,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(10,'kljjkjkjkjk','hhkjhhhk','INR','89','89',308,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(11,'kljjkjkjkjk','hhkjhhhk','INR','89','89',308,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(12,'kljjkjkjkjk','hhkjhhhk','INR','89','89',308,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(13,'kljjkjkjkjk','hhkjhhhk','INR','89','89',308,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(14,'kljjkjkjkjk','hhkjhhhk','INR','89','89',308,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(15,'lkjlk','jhhjkh','INR','67','76',308,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(16,'lkjlk','jhhjkh','INR','67','76',308,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(17,'lkjlk','jhhjkh','INR','67','76',308,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(18,'lkjlk','jhhjkh','INR','67','76',308,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(19,'lkjlk','jhhjkh','INR','67','76',308,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(20,'lkjlk','jhhjkh','INR','67','76',308,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(21,'noooo','hhhhhhhhaaaaaa','INR','78','78',308,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(22,'noooo','hhhhhhhhaaaaaa','INR','78','78',308,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(23,'jkkjjlk','lkj','INR','kjkljlk','jlkjlk',320,'2013-10-10 10:24:47','2013-10-10 10:24:47'),
(24,'897897','8978979879','INR','8978979','879879879',320,'2013-10-10 10:25:08','2013-10-10 10:25:08'),
(25,'fghj','ghjk','INR','121212','ghjk',319,'2013-11-12 12:02:34','2013-11-12 12:02:34'),
(26,'vidkfkakdfka','asdfghjk','INR','121212','ghjk',325,'2013-11-12 13:05:13','2013-11-12 13:05:13'),
(27,'fghj','asdfghjkl;','INR','121212','ghjk',321,'2013-11-14 18:21:57','2013-11-14 18:21:57'),
(28,'test','data tdesssk','INR','87','53',325,'2013-12-27 16:54:17','2013-12-27 16:54:17');

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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `designer_cloth_image` */

insert into `designer_cloth_image` values 
(1,NULL,'/usr/local/userPhotos/DESIGNER_CLOTHES/1/Jacket.jpg','/usr/local/userPhotos/Big/DESIGNER_CLOTHES/1/Jacket.jpg',1),
(2,NULL,'/usr/local/userPhotos/DESIGNER_CLOTHES/2/Evening_Dress.jpg','/usr/local/userPhotos/Big/DESIGNER_CLOTHES/2/Evening_Dress.jpg',2),
(3,NULL,'/usr/local/userPhotos/DESIGNER_CLOTHES/3/Designer_Dress.jpg','/usr/local/userPhotos/Big/DESIGNER_CLOTHES/3/Designer_Dress.jpg',3),
(4,NULL,'/usr/local/userPhotos/DESIGNER_CLOTHES/4/Jeans.jpg','/usr/local/userPhotos/Big/DESIGNER_CLOTHES/4/Jeans.jpg',4),
(5,NULL,'/usr/local/userPhotos/DESIGNER_CLOTHES/5/Fancy_Top.jpg','/usr/local/userPhotos/Big/DESIGNER_CLOTHES/5/Fancy_Top.jpg',5),
(6,NULL,'/usr/local/userPhotos/DESIGNER_CLOTHES/6/Designer_Top.jpg','/usr/local/userPhotos/Big/DESIGNER_CLOTHES/6/Designer_Top.jpg',6),
(7,NULL,'/usr/local/userPhotos/DESIGNER_CLOTHES/7/Shirt.jpg','/usr/local/userPhotos/Big/DESIGNER_CLOTHES/7/Shirt.jpg',7),
(8,NULL,'/usr/local/userPhotos/DESIGNER_CLOTHES/8/Work.jpg','/usr/local/userPhotos/Big/DESIGNER_CLOTHES/8/Work.jpg',8),
(9,NULL,'/usr/local/userPhotos/DESIGNER_CLOTHES/19/around-sunset-1920x1080-wallpaper-10136.jpg','19/around-sunset-1920x1080-wallpaper-10136.jpg',19),
(10,NULL,'/usr/local/userPhotos/DESIGNER_CLOTHES/20/around-sunset-1920x1080-wallpaper-10136.jpg','20/around-sunset-1920x1080-wallpaper-10136.jpg',20),
(11,NULL,'/usr/local/userPhotos/DESIGNER_CLOTHES/21/along-the-river-1920x1080-wallpaper-7398.jpg','/usr/local/userPhotos/Big/DESIGNER_CLOTHES/21/along-the-river-1920x1080-wallpaper-7398.jpg',21),
(12,NULL,'/usr/local/userPhotos/DESIGNER_CLOTHES/22/along-the-river-1920x1080-wallpaper-7398.jpg','/usr/local/userPhotos/Big/DESIGNER_CLOTHES/22/along-the-river-1920x1080-wallpaper-7398.jpg',22),
(13,NULL,'/usr/local/userPhotos/DESIGNER_CLOTHES/23/229228324_08223b70fa_s.jpg','/usr/local/userPhotos/Big/DESIGNER_CLOTHES/23/229228324_08223b70fa_s.jpg',23),
(14,NULL,'/usr/local/userPhotos/DESIGNER_CLOTHES/24/199481108_4359e6b971_s.jpg','/usr/local/userPhotos/Big/DESIGNER_CLOTHES/24/199481108_4359e6b971_s.jpg',24),
(15,NULL,'/usr/local/userPhotos/DESIGNER_CLOTHES/25/1381690_587333221303438_1072552433_n_-_Copy.jpg','/usr/local/userPhotos/Big/DESIGNER_CLOTHES/25/1381690_587333221303438_1072552433_n_-_Copy.jpg',25),
(16,NULL,'/usr/local/userPhotos/DESIGNER_CLOTHES/26/afr.jpg','/usr/local/userPhotos/Big/DESIGNER_CLOTHES/26/afr.jpg',26),
(17,NULL,'/usr/local/userPhotos/DESIGNER_CLOTHES/27/1381690_587333221303438_1072552433_n_-_Copy.jpg','/usr/local/userPhotos/Big/DESIGNER_CLOTHES/27/1381690_587333221303438_1072552433_n_-_Copy.jpg',27),
(18,NULL,'/usr/local/userPhotos/DESIGNER_CLOTHES/28/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg','/usr/local/userPhotos/Big/DESIGNER_CLOTHES/28/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg',28);

/*Table structure for table `directory` */

DROP TABLE IF EXISTS `directory`;

CREATE TABLE `directory` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` longtext NOT NULL,
  `DIRECTORY_CATEGORY` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_DIRECTORY_DIRECTORY_CATEGORY` (`DIRECTORY_CATEGORY`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `directory` */

/*Table structure for table `directory_category` */

DROP TABLE IF EXISTS `directory_category`;

CREATE TABLE `directory_category` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `directory_category` */

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
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

/*Data for the table `eshop_product` */

insert into `eshop_product` values 
(1,'hvskhsk',768456,'INR','nvsfhsjfossk 5698214370 ,./;\'[]\\@#$%&',4,'COSMETIC'),
(2,'vksjvks',758,'INR','vbshfsjskudhfbs 12365890 ,./;\'[]\\&%$#@',4,'COSMETIC'),
(3,'bvjshvshchshj',7968465,'INR','vbiskhvisjsm @#$%&,./;\'[]\\?\"{}| 156886431246',4,'COSMETIC'),
(4,'bckjsks',76576,'INR','bvsvisjskksm ,./;\'[]\\?\"{}|@#$%& 465895364632',4,'COSMETIC'),
(5,'hkhk',764,'INR','vmolsjvolsjvmjs',4,'COSMETIC'),
(6,'cythgvjh',76436,'INR','srtfyuhiok 414654845 ../,;\'[]\\@#$&%',4,'COSMETIC'),
(7,'vbsfksj',75745,'INR','vbishfsjskm 16485232789 ,./;\'[]\\@#$%&',4,'COSMETIC'),
(8,'bsvbjs',7645,'INR','012365479 ,./;\'[]\\@#$%& vnbksvnsifhjurgttufhsfv',4,'COSMETIC'),
(9,'fhgfghj',545452,'INR','srtgfyuhik 1324654684 /.,;\'\\][@#&%$',5,'CROCKERY'),
(10,'yriuwhnsn',76431,'INR','bvskhvsjms @#$%&?\"{}|;./,\'[]\\',5,'CROCKERY'),
(11,'vbksnvks',737432,'INR','vnksnvskjvkmsd ?\"{}|./,;\'\\][',5,'CROCKERY'),
(12,'ertyui',78965,'INR','wertyuiopdfghjk ,.;\'[]\\',5,'CROCKERY'),
(13,'guigbj',354656,'INR','@#$%&,./;\'[]\\ ftygfygh 13546465',5,'CROCKERY'),
(14,'b m mn mm',8545432,'INR','strfhygjhvhvbjhn 1234567890 \\][\';,./',5,'CROCKERY'),
(15,'ertyuj',885845,'INR','dtrgfchgfgvhj 1234567890 /.,;\'[]\\',5,'CROCKERY'),
(16,'fyugjh',68464,'INR','fuygiukjlk 1234567890/.,;\'[]\\',5,'CROCKERY'),
(17,'vkshvks',4646,'INR','vbksvksvnkjsn 68465316 ,./;\'[]\\@#$%&?\"{}|',7,'ELECTRONICS_GOODS'),
(18,'vkjsvhsh',76465,'INR','vnishfiuhdfkjdf 16546545897986 ,./;\'[]\\@#$%&?\"{}|',7,'ELECTRONICS_GOODS'),
(19,'bvjsbvjbsjk',165465,'INR','bvkjsvkjshcs ,./\';[]\\@#$%&|}{\"?',7,'ELECTRONICS_GOODS'),
(20,'vnksvkjs',86746854,'INR','bvskhvkjdn,./;\'\\][764356465',7,'ELECTRONICS_GOODS'),
(21,'gujgbjmn',764635,'INR','fvhgbjhn ./;\'[]\\ 76432',7,'ELECTRONICS_GOODS'),
(22,'fhvnb',76463,'INR','131468476 ,./;\'[]\\?\"{}|&%$#@ bnkdjvkdhfnfkdn',7,'ELECTRONICS_GOODS'),
(23,'bvjhsdbhjs',76465,'INR','vksdhkhdfkdjf 13246879 ,./;\'[]\\',7,'ELECTRONICS_GOODS'),
(24,'vbshvkjs',76465,'INR','bvkjsnvksm ,./;\'[]\\@#$%&7646413132656489',7,'ELECTRONICS_GOODS'),
(25,'bhdkhvkd',7545,'INR','vbjdvjshdjhhfj /\']\\[;.,@#$%& 1356458798',8,'FLOWER'),
(26,'vkjsvjksnk',7964646,'INR','vnkshdhfkdfkn /\']\\[;.,&%$#@',8,'FLOWER'),
(27,'bndkjvnkd',746465,'INR','vnsvhififj \\]\'/.,;[&%@#% 76744343644',8,'FLOWER'),
(28,'bvjsvjsnk',76454,'INR','vbksjvhdfhfduj ,\'\\[];/. 4568523668',8,'FLOWER'),
(29,'vgdjfjd',77645,'INR','786454313 fyhghkhk /\']\\[;.,&@#$%',8,'FLOWER'),
(30,'vskjvhjfhhsd',767464,'INR','bvsdhdfuhdfn 7896541323',8,'FLOWER'),
(31,'vjskhdjhdfjhdf',7674646,'INR','vbskbvkdfkjdf 764353 @#$%&?,./;\'[]\\',8,'FLOWER'),
(32,'guidfhjdfk',7684523,'INR','bvkjsdhuhdj %$#&@?\"|}{,./;\'[[]\\',8,'FLOWER'),
(33,'vjsfjhs',7646,'INR','vbksfsjdksjd ,./\';[]\\1234567890',10,'GIFT_SHOPS'),
(34,'ruiwhfks',1545,'INR','bkjsfjsdjk 15448 .,/;\']\\[',10,'GIFT_SHOPS'),
(35,'uruihsfkvs',545645,'INR','vbksfnksdksd /.,;\'\\][1234567890',10,'GIFT_SHOPS'),
(36,'fuoisks',1345,'INR','nvksjhdkjhksd 1234567890 ,./\';[]\\@#$%&',10,'GIFT_SHOPS'),
(37,'ushdnfjd',1456,'INR','vnskjdljpsope,./\';[]\\1234567890',10,'GIFT_SHOPS'),
(38,'bvjshdkj',1545,'INR','nvsndkjdfhhjdf ]\'/.;\\[, 1234567890',10,'GIFT_SHOPS'),
(39,'yeieiow',1355,'INR','bvsdjkhsdj1234567890@#$%&/\']\\[;.,',10,'GIFT_SHOPS'),
(40,'poknbf',13125,'INR','bvjshdhusdhjsn ,./\';[]\\1234567890',10,'GIFT_SHOPS'),
(41,'bvjsbjd',15465,'INR','bvjhsbdjhsdjn 1234567890 ,;[]\'/.\\@$%#&',14,'MOBILE'),
(42,'vbhsdjd',456,'INR','bvksjdhiksdj 1234567890 ,;[\\\'/.]|}{\"?',14,'MOBILE'),
(43,'bvjsb',154,'INR','cbsjhdjksdn 1234567890 [\'/.;]\\,',14,'MOBILE'),
(44,'ydhjjd',1354,'INR','bv jbxjkhxdkjd 1234567890 ,./\';[]\\|}\"{?%&$#@',14,'MOBILE'),
(45,'fjshdj',78546,'INR','vbsjhdjkhsdj 1234567890 /\']\\[&%$#@',14,'MOBILE'),
(46,'fvhbn',126,'INR','vkjshdkj 1234567890 /;\'[]\\\';/@$%#&',14,'MOBILE'),
(47,'vsbd',134,'INR','vsvdsdfdfv1111123456789 ,./\';[]\\',14,'MOBILE'),
(48,'tyuiuik',132,'INR','nvksndkjdfjdf 1234567890 /;\'\\][.,',14,'MOBILE'),
(49,'fhgvhn',3567,'INR','dhgfjyhgbjh 1234567890p ,;[]\'/.\\',17,'SHOES'),
(50,'rghj',7688,'INR','dcgthfgvhbj1234567890,/\']\\[;.',17,'SHOES'),
(51,'wredrtrft',2365,'INR','vnjhcjdkj 1234567890 ,./\';[]\\',17,'SHOES'),
(52,'bjvbjvs',154,'INR','bvjshbvksjcksdn',17,'SHOES');

/*Table structure for table `eshop_product_image` */

DROP TABLE IF EXISTS `eshop_product_image`;

CREATE TABLE `eshop_product_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `ESHOP_PRODUCT_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

/*Data for the table `eshop_product_image` */

insert into `eshop_product_image` values 
(1,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/1/Banner.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/1/Banner.jpg',1),
(2,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/2/Lip_Gloss.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/2/Lip_Gloss.jpg',2),
(3,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/3/Compact_Powder.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/3/Compact_Powder.jpg',3),
(4,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/4/eye_Shadow.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/4/eye_Shadow.jpg',4),
(5,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/5/Lipsticks.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/5/Lipsticks.jpg',5),
(6,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/6/nailpolish.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/6/nailpolish.jpg',6),
(7,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/7/Mascara.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/7/Mascara.jpg',7),
(8,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/8/Eyeliner.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/8/Eyeliner.jpg',8),
(24,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/16/Thali_Set.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/16/Thali_Set.jpg',16),
(23,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/15/Serving_Spoons_.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/15/Serving_Spoons_.jpg',15),
(22,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/14/Soup_Bowl.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/14/Soup_Bowl.jpg',14),
(21,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/13/Steel_Drinking_Glass.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/13/Steel_Drinking_Glass.jpg',13),
(20,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/12/Tea_Set.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/12/Tea_Set.jpg',12),
(19,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/11/Plates.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/11/Plates.jpg',11),
(18,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/10/dinner_set.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/10/dinner_set.jpg',10),
(17,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/9/Cutlery_Set.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/9/Cutlery_Set.jpg',9),
(40,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/24/Banner.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/24/Banner.jpg',24),
(39,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/23/Banner1.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/23/Banner1.jpg',23);
insert into `eshop_product_image` values 
(38,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/22/Refrigerator.png','/usr/local/userPhotos/Big/ESHOP_PRODUCT/22/Refrigerator.png',22),
(37,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/21/Microwave.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/21/Microwave.jpg',21),
(36,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/20/Geyser.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/20/Geyser.jpg',20),
(35,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/19/Ceiling_Fan.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/19/Ceiling_Fan.jpg',19),
(34,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/18/Refrigerator.png','/usr/local/userPhotos/Big/ESHOP_PRODUCT/18/Refrigerator.png',18),
(33,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/17/LCD_TV.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/17/LCD_TV.jpg',17),
(56,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/32/Peony_Flowers.JPG','/usr/local/userPhotos/Big/ESHOP_PRODUCT/32/Peony_Flowers.JPG',32),
(55,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/31/Daisy_Flowers.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/31/Daisy_Flowers.jpg',31),
(54,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/30/Gladiolus-Flowers.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/30/Gladiolus-Flowers.jpg',30),
(53,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/29/sunflowers_Flowers.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/29/sunflowers_Flowers.jpg',29),
(52,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/28/Tulip_Flowers.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/28/Tulip_Flowers.jpg',28),
(51,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/27/work.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/27/work.jpg',27),
(50,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/26/Orchid_Flowers.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/26/Orchid_Flowers.jpg',26),
(49,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/25/Lily_Flowers.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/25/Lily_Flowers.jpg',25),
(71,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/39/Teddy_Bear.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/39/Teddy_Bear.jpg',39),
(70,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/38/Soft_Toy.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/38/Soft_Toy.jpg',38),
(69,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/37/Photoframe.JPG','/usr/local/userPhotos/Big/ESHOP_PRODUCT/37/Photoframe.JPG',37),
(68,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/36/Flower_Pot.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/36/Flower_Pot.jpg',36),
(67,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/35/Flower_Bouquet.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/35/Flower_Bouquet.jpg',35),
(66,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/34/Fancy_Clock.gif','/usr/local/userPhotos/Big/ESHOP_PRODUCT/34/Fancy_Clock.gif',34),
(65,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/33/Fish_Bowl.jpeg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/33/Fish_Bowl.jpeg',33),
(72,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/40/Toys.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/40/Toys.jpg',40),
(88,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/48/Motorola_Mobile.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/48/Motorola_Mobile.jpg',48),
(87,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/47/work.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/47/work.jpg',47),
(86,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/46/Spice-Mobile.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/46/Spice-Mobile.jpg',46),
(85,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/45/Sony_Ericsson_Mobile.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/45/Sony_Ericsson_Mobile.jpg',45),
(84,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/44/Nokia_MObile.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/44/Nokia_MObile.jpg',44),
(83,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/43/Micromax_Mobile.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/43/Micromax_Mobile.jpg',43),
(82,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/42/reliance_Mobile.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/42/reliance_Mobile.jpg',42),
(81,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/41/Default.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/41/Default.jpg',41),
(89,'vyygvjhb','/usr/local/userPhotos/ESHOP_PRODUCT/49/Bridal_Shoes.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/49/Bridal_Shoes.jpg',49),
(90,'vcghfvhjb','/usr/local/userPhotos/ESHOP_PRODUCT/50/Kids_Sandal.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/50/Kids_Sandal.jpg',50),
(91,' jnjhnkjk','/usr/local/userPhotos/ESHOP_PRODUCT/51/Kis_Shoes.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/51/Kis_Shoes.jpg',51),
(92,'vjhbjm','/usr/local/userPhotos/ESHOP_PRODUCT/52/Designer_Shoes.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/52/Designer_Shoes.jpg',52);

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
  `USER_ID` bigint(10) NOT NULL,
  `ADDRESS` bigint(10) DEFAULT NULL,
  `COST_UNIT` varchar(10) NOT NULL DEFAULT 'INR',
  `EVENT_PLACE_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_LAND_ADDRESS` (`ADDRESS`),
  KEY `FK_LAND_LAND_TYPE` (`EVENT_TYPE`),
  KEY `FK_LAND_USER` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `event` */

insert into `event` values 
(1,'2014-03-10 12:34:02','2014-03-10 12:34:02','jhjbkk','fgdgfdgfd',NULL,NULL,NULL,'56456',456,'ddfd',740,NULL,'INR',2),
(2,'2014-03-10 12:14:35','2014-03-10 12:14:35','jkjlk','lkljlkjl',NULL,NULL,NULL,'lkjlkjlkjlk',98989,'lkjlkjlkj',740,NULL,'INR',2),
(3,'2014-03-25 08:31:07','2014-03-25 08:31:07','uoiuo','khjkhjk',NULL,NULL,NULL,'989',989,'rent',740,NULL,'INR',3),
(4,'2014-03-25 08:32:54','2014-03-25 08:32:54','jhkjh','hjkhkk',NULL,NULL,NULL,'9898',8989,'hjhj',740,NULL,'INR',3);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `event_image` */

insert into `event_image` values 
(1,NULL,'/usr/local/userPhotos/EVENT/1/along-the-river-1920x1080-wallpaper-7398.jpg','/usr/local/userPhotos/Big/Event/1/along-the-river-1920x1080-wallpaper-7398.jpg',1),
(2,NULL,'/usr/local/userPhotos/EVENT/2/autumn-landscape-with-trees-1920x1080-wallpaper-11341.jpg','/usr/local/userPhotos/Big/Event/2/autumn-landscape-with-trees-1920x1080-wallpaper-11341.jpg',2),
(3,NULL,'/usr/local/userPhotos/EVENT/3/960100_371945906274477_81820131_n.jpg','/usr/local/userPhotos/Big/Event/3/960100_371945906274477_81820131_n.jpg',3),
(4,NULL,'/usr/local/userPhotos/EVENT/4/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/Event/4/1476435_558998504180050_2080544610_n.jpg',4);

/*Table structure for table `event_place` */

DROP TABLE IF EXISTS `event_place`;

CREATE TABLE `event_place` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` longtext,
  `ADDRESS` bigint(10) DEFAULT NULL,
  `USER_ID` bigint(10) NOT NULL,
  `STATUS` int(6) DEFAULT NULL,
  `MOBILE_NUMBER` varchar(21) DEFAULT NULL,
  `TOTAL_PRICE` int(10) DEFAULT '0',
  `IS_ACTIVE` tinyint(1) DEFAULT '0',
  `IS_PAID` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FK_SHOP_ADDRESS` (`ADDRESS`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `event_place` */

insert into `event_place` values 
(2,'2014-01-21 23:48:42','2014-01-21 23:48:42','Marathan','asdfghj',3272,1,NULL,'9887769854',0,0,0),
(3,'2014-03-14 10:47:20','2014-03-14 10:47:20','barbadi','asdfghjkl',3275,740,NULL,'9887769854',0,0,0);

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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `furniture` */

insert into `furniture` values 
(1,'jionkj','vbskjddshdhshds 79643213 #$%@&,./\'[\\]\\;.,','56234','INR','',9,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(2,'putefbj','vjscbjdsbjbds','52698','INR','',9,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(3,'gramighj','13448789 /;]\\[\'.,#$%@&','7542130','INR','',9,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(4,'njoured',',/;\'[]gjgjgj','4210','INR','',9,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(5,'ghgvbhv',',./;\']\\ nvksvksvjs 895654 @#$%&','258','INR','',9,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(6,'mkogh','\\[\'/,.;] 7985541532','5464','INR','',9,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(7,'bgtyuio','mbsvmjdffn 76433454 /;\'\\][.,','2596','INR','',9,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(8,'bgyuip','bkvksdh$#%@&','6279','INR','',9,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(9,'jhjhkj','hhjhjhj','78','INR',NULL,301,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(10,'rtytr','hgjhghjg','56','INR',NULL,301,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(11,'jkj','98','98','INR','89',313,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(12,'9009','ioio','iio','INR','ioioio',300,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(13,'89998','98998','899','INR','8989',316,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(14,'vikas','090909','909090','INR','9909',316,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(15,'vikas','7878787878','98','INR','777878',316,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(16,'hhjn','kjjkjkjk','89','INR','kjkjjkjk',316,'2013-10-02 12:29:45','2013-10-02 12:29:45'),
(17,'mnbnm','hgj','89','INR','jhhjjh',316,'2013-10-02 13:35:43','2013-10-02 13:35:43'),
(18,'dish','jkhjkhkjhk vikasn odkjdf; ladfkjalkdjfkjkj klsdjfkld kjfkadfalkd  ','78','INR','jkjkj',316,'2013-10-02 16:43:49','2013-10-02 16:43:49'),
(19,'test','ijoijijiojoi','999','INR','joiijo',316,'2013-12-27 16:45:22','2013-12-27 16:45:22');

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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `furniture_image` */

insert into `furniture_image` values 
(1,NULL,'/usr/local/userPhotos/FURNITURE/1/Dining_Tables.jpg','/usr/local/userPhotos/Big/FURNITURE/1/Dining_Tables.jpg',1),
(2,NULL,'/usr/local/userPhotos/FURNITURE/2/Dressing_Table.jpg','/usr/local/userPhotos/Big/FURNITURE/2/Dressing_Table.jpg',2),
(3,NULL,'/usr/local/userPhotos/FURNITURE/3/Sofa_Set.jpg','/usr/local/userPhotos/Big/FURNITURE/3/Sofa_Set.jpg',3),
(4,NULL,'/usr/local/userPhotos/FURNITURE/4/Office_Chair.jpg','/usr/local/userPhotos/Big/FURNITURE/4/Office_Chair.jpg',4),
(5,NULL,'/usr/local/userPhotos/FURNITURE/5/Designer_Bed.jpg','/usr/local/userPhotos/Big/FURNITURE/5/Designer_Bed.jpg',5),
(6,NULL,'/usr/local/userPhotos/FURNITURE/6/Table.jpg','/usr/local/userPhotos/Big/FURNITURE/6/Table.jpg',6),
(7,NULL,'/usr/local/userPhotos/FURNITURE/7/Chair.gif','/usr/local/userPhotos/Big/FURNITURE/7/Chair.gif',7),
(8,NULL,'/usr/local/userPhotos/FURNITURE/8/School_Desk.jpg','/usr/local/userPhotos/Big/FURNITURE/8/School_Desk.jpg',8),
(9,NULL,'/usr/local/userPhotos/FURNITURE/9/autumn-trees-1920x1080-wallpaper-7135.jpg','/usr/local/userPhotos/Big/FURNITURE/9/autumn-trees-1920x1080-wallpaper-7135.jpg',9),
(10,NULL,'/usr/local/userPhotos/FURNITURE/10/beach-wallpaper-hd-florida-condos-download-wallpaper-wallpaper.jpg','/usr/local/userPhotos/Big/FURNITURE/10/beach-wallpaper-hd-florida-condos-download-wallpaper-wallpaper.jpg',10),
(11,NULL,'/usr/local/userPhotos/FURNITURE/11/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg','/usr/local/userPhotos/Big/FURNITURE/11/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg',11),
(12,NULL,'/usr/local/userPhotos/FURNITURE/12/jquery-1.js','/usr/local/userPhotos/Big/FURNITURE/12/jquery-1.js',12),
(13,NULL,'/usr/local/userPhotos/FURNITURE/13/jquery-1.js','/usr/local/userPhotos/Big/FURNITURE/13/jquery-1.js',13),
(14,NULL,'/usr/local/userPhotos/FURNITURE/14/jquery-1.js','/usr/local/userPhotos/Big/FURNITURE/14/jquery-1.js',14),
(15,NULL,'/usr/local/userPhotos/FURNITURE/15/199481255_fdfe885f87_s.jpg','/usr/local/userPhotos/Big/FURNITURE/15/199481255_fdfe885f87_s.jpg',15),
(16,NULL,'/usr/local/userPhotos/FURNITURE/16/199481255_fdfe885f87_s.jpg','/usr/local/userPhotos/Big/FURNITURE/16/199481255_fdfe885f87_s.jpg',16),
(17,NULL,'/usr/local/userPhotos/FURNITURE/17/199481108_4359e6b971_s.jpg','/usr/local/userPhotos/Big/FURNITURE/17/199481108_4359e6b971_s.jpg',17),
(18,NULL,'/usr/local/userPhotos/FURNITURE/18/9.jpg','/usr/local/userPhotos/Big/FURNITURE/18/9.jpg',18),
(19,NULL,'/usr/local/userPhotos/FURNITURE/19/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg','/usr/local/userPhotos/Big/FURNITURE/19/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg',19);

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
  `BUSINESS_TYPE_ID` bigint(10) DEFAULT NULL,
  `TOTAL_PRICE` bigint(10) DEFAULT NULL,
  `BUSINESS_TYPE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `home_sale` */

insert into `home_sale` values 
(1,'<p>jkdf hkjal dfhjkadhfjkl ahdfkja dslhfak</p>',5,'100','2013-12-12','2013-12-22',19,334,55,'local_business'),
(2,'<p>jkdfh kja ldfhj kadhf jkla hdfk jadslh fak ji</p>',5,'100','2014-01-01','2014-01-31',19,300,155,'local_business'),
(3,'<p>dj fie upqe uri ouq poe iru qop ieu rpq </p>',5,'100','2013-12-12','2013-12-29',19,289,90,'local_business'),
(4,'<p>jw ou r i o e wur i o weurpq oerq</p>',5,'100','2013-12-17','2013-12-22',19,307,30,'local_business'),
(5,'<p>klsjf;klsjLK;JF;lkfj</p>',5,'100','2013-12-13','2013-12-27',19,277,75,'local_business'),
(6,'<p>dfkljflkajd;falkjf;al</p>',5,'100','2013-12-18','2013-12-26',19,326,45,'local_business');

/*Table structure for table `home_sale_detail` */

DROP TABLE IF EXISTS `home_sale_detail`;

CREATE TABLE `home_sale_detail` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `MIN_PAY_OUT_PER_DAY` bigint(10) DEFAULT NULL,
  `MIN_PAY_OUT` bigint(10) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `TOTAL_PRICE` bigint(10) DEFAULT NULL,
  `BUSINESS_TYPE` varchar(50) DEFAULT NULL,
  `USER_ID` bigint(10) DEFAULT NULL,
  `IS_ACTIVE` tinyint(1) DEFAULT '0',
  `IS_PAID` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `home_sale_detail` */

insert into `home_sale_detail` values 
(17,'<p>testhjgjhgjhgjh</p>',5,100,'2014-01-01','2014-01-31',155,'homes',740,0,0),
(18,'<p>tejjjjjjjjjjjjjjjjst</p>',5,100,'2014-01-07','2014-01-31',125,'homes',748,0,0),
(19,'<p>70% discount on it</p>',5,100,'2014-02-04','2014-03-14',195,'homes',740,0,0),
(20,'<p>45% off on whole sale&nbsp;</p>',5,100,'2014-02-04','2014-02-28',125,'homes',740,0,0),
(21,'<p>hello</p>',5,100,'2014-03-01','2014-03-30',150,'homes',752,0,0),
(22,'<p>4 things to go</p>',5,100,'2013-12-11','2013-12-31',105,'homes',740,0,0),
(24,'hi test',NULL,NULL,NULL,NULL,NULL,'homes',773,0,0);

/*Table structure for table `home_sale_detail_image` */

DROP TABLE IF EXISTS `home_sale_detail_image`;

CREATE TABLE `home_sale_detail_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) DEFAULT NULL,
  `IMAGE_PATH_BIG` varchar(255) DEFAULT NULL,
  `HOME_SALE_DETAIL_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `home_sale_detail_image` */

insert into `home_sale_detail_image` values 
(3,'/usr/local/userPhotos/HOME_SALE_DETAIL/3/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg','/usr/local/userPhotos/Big/HOME_SALE_DETAIL/9/1480574_600682716658532_1629368238_a.jpg',3),
(12,'/usr/local/userPhotos/HOME_SALE_DETAIL/18/226745_213250335359976_4542807_n.jpg','/usr/local/userPhotos/Big/HOME_SALE_DETAIL/9/1480574_600682716658532_1629368238_a.jpg',18),
(14,'/usr/local/userPhotos/HOME_SALE_DETAIL/20/bloominginalaska.jpg','/usr/local/userPhotos/Big/HOME_SALE_DETAIL/20/bloominginalaska.jpg',20),
(15,'/usr/local/userPhotos/HOME_SALE_DETAIL/21/1063810_495312807211507_775072561_o.jpg','/usr/local/userPhotos/Big/HOME_SALE_DETAIL/21/1063810_495312807211507_775072561_o.jpg',21),
(16,'/usr/local/userPhotos/HOME_SALE_DETAIL/22/226745_213250335359976_4542807_n.jpg','/usr/local/userPhotos/Big/HOME_SALE_DETAIL/22/226745_213250335359976_4542807_n.jpg',22),
(17,'/usr/local/userPhotos/HOME_SALE_DETAIL/17/1455142_612410932150004_1164928356_n.jpg','/usr/local/userPhotos/Big/HOME_SALE_DETAIL/17/1455142_612410932150004_1164928356_n.jpg',17),
(18,'/usr/local/userPhotos/HOME_SALE_DETAIL/19/bag.jpg','/usr/local/userPhotos/Big/HOME_SALE_DETAIL/19/bag.jpg',19),
(20,'/usr/local/userPhotos/HOME_SALE_DETAIL/24/add-bg.jpg','/usr/local/userPhotos/Big/HOME_SALE_DETAIL/24/add-bg.jpg',24),
(21,'/usr/local/userPhotos/HOME_SALE_DETAIL/24/bam-shankar-bhole-nath-chilam-bhang.jpg','/usr/local/userPhotos/Big/HOME_SALE_DETAIL/24/bam-shankar-bhole-nath-chilam-bhang.jpg',24);

/*Table structure for table `home_sale_image` */

DROP TABLE IF EXISTS `home_sale_image`;

CREATE TABLE `home_sale_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) DEFAULT NULL,
  `IMAGE_PATH_BIG` varchar(255) DEFAULT NULL,
  `HOME_SALE_ID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `home_sale_image` */

insert into `home_sale_image` values 
(1,'/usr/local/userPhotos/HOME_SALE/5/995421_593644664013109_1180970608_n.jpg','/usr/local/userPhotos/Big/HOME_SALE/5/995421_593644664013109_1180970608_n.jpg','1'),
(2,'/usr/local/userPhotos/HOME_SALE/2/add-bgblue.jpg','/usr/local/userPhotos/Big/HOME_SALE/2/add-bgblue.jpg','2'),
(3,'/usr/local/userPhotos/HOME_SALE/5/995421_593644664013109_1180970608_n.jpg','/usr/local/userPhotos/Big/HOME_SALE/5/995421_593644664013109_1180970608_n.jpg','3'),
(4,'/usr/local/userPhotos/HOME_SALE/5/995421_593644664013109_1180970608_n.jpg','/usr/local/userPhotos/Big/HOME_SALE/5/995421_593644664013109_1180970608_n.jpg','4'),
(5,'/usr/local/userPhotos/HOME_SALE/5/995421_593644664013109_1180970608_n.jpg','/usr/local/userPhotos/Big/HOME_SALE/5/995421_593644664013109_1180970608_n.jpg','5'),
(6,'/usr/local/userPhotos/HOME_SALE/6/74bd49b849f3aad0e600f3f235558559.jpg','/usr/local/userPhotos/Big/HOME_SALE/6/74bd49b849f3aad0e600f3f235558559.jpg','6');

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
  `REAL_ESTATE_ID` bigint(10) DEFAULT NULL,
  `COST` double NOT NULL DEFAULT '0',
  `HOUSE_CATEGORY` varchar(255) DEFAULT NULL,
  `COST_UNIT` varchar(10) NOT NULL DEFAULT 'INR',
  `HOUSE_TYPE` bigint(10) NOT NULL,
  `OWNER_ADMIN` bigint(10) DEFAULT NULL,
  `HOUSE_NUMBER` varchar(21) DEFAULT NULL,
  `USER_ID` bigint(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `FK_HOUSE_HOUSE_TYPE` (`HOUSE_TYPE`),
  KEY `FK_HOUSE_OWNER_ADMIN` (`OWNER_ADMIN`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;

/*Data for the table `house` */

insert into `house` values 
(118,'2013-11-25 11:41:34','2013-11-25 11:41:34','hjkhjkhk',';kdjf;lkdsj',NULL,1,'7',11,8090,NULL,'INR',2,NULL,NULL,1),
(117,'2013-11-25 11:19:14','2013-11-25 11:19:14','loki','dj;flkjadklfja;lkdsjf;l',NULL,1,'7',11,8090,NULL,'INR',3,NULL,NULL,1),
(119,'2013-11-28 16:45:56','2013-11-28 16:45:56','kljlk','lkjlkjlk',NULL,1,'7878',11,98,NULL,'INR',3,NULL,NULL,1),
(120,'2013-12-30 11:05:08','2013-12-30 11:05:08','kljlk','lkjlkjlk',NULL,1,'7878',11,98,NULL,'INR',3,NULL,NULL,1),
(121,'2013-12-30 11:16:04','2013-12-30 11:16:04','test4','lkjlkjlk',NULL,1,'7878',11,98,NULL,'INR',3,NULL,NULL,1),
(124,'2014-03-05 22:41:33','2014-03-05 22:41:33','Not Available','asdfghjkl',NULL,1,'2000',1,5000,NULL,'INR',3,NULL,NULL,740),
(127,'2014-01-20 11:47:54','2014-01-20 11:47:54','Not Available','sdfghjk',NULL,1,'2000',1,5000,NULL,'INR',2,NULL,NULL,740),
(128,'2014-03-05 13:43:30','2014-03-05 13:43:30','Tulsi gest house','8 down vote You can do some Javascript in the form\'s submit event.',NULL,1,'12000',1,800000,NULL,'INR',4,NULL,NULL,740),
(129,'2014-03-05 13:45:29','2014-03-05 13:45:29','Tulsi gest house','8 down vote You can do some Javascript in the form\'s submit event.',NULL,1,'12000',1,800000,NULL,'INR',4,NULL,NULL,740),
(130,'2014-03-05 15:05:33','2014-03-05 15:05:33','Tulip gest house','Latest 2013 summer collection.Free shiping & cash on delivery.shop now',NULL,1,'12000',1,100000,NULL,'INR',2,NULL,NULL,740),
(131,'2014-03-05 15:11:48','2014-03-05 15:11:48','Tara guest house','Latest 2013 summer collection.Free shiping & cash on delivery.shop now',NULL,1,'8797987',1,50000,NULL,'INR',3,NULL,NULL,740),
(132,'2014-03-05 15:27:00','2014-03-05 15:27:00','kjklj','jkhkjh',NULL,1,'979798798',1,897987,NULL,'INR',3,NULL,NULL,740),
(133,'2014-03-05 15:45:20','2014-03-05 15:45:20','Tulsi gest house','lkjlkj',NULL,1,'12000',1,800000,NULL,'INR',2,NULL,NULL,740),
(134,'2014-03-06 23:07:06','2014-03-06 23:07:06','Bangali kothi','Classic sweet',NULL,1,'330000',1,333000000,NULL,'INR',4,NULL,NULL,740),
(135,'2014-03-07 12:33:02','2014-03-07 12:33:02','jkhkjh','jkhkjhk',NULL,1,'87897',12,908098,NULL,'INR',2,NULL,NULL,740);

/*Table structure for table `house_address` */

DROP TABLE IF EXISTS `house_address`;

CREATE TABLE `house_address` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `STREET_NAME` varchar(255) DEFAULT NULL,
  `AREA_NAME` varchar(255) DEFAULT NULL,
  `AREA_CODE` varchar(21) DEFAULT NULL,
  `COUNTRY` varchar(25) DEFAULT NULL,
  `STATE` varchar(25) DEFAULT NULL,
  `CITY` varchar(25) DEFAULT NULL,
  `HOUSE_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `house_address` */

insert into `house_address` values 
(3,'NH72','Joligrant','248140','98','27','8',127),
(4,'NH72','Joligrant','248140','98','27','8',124),
(5,'Haridwar Road','Sarsvati Vihaar','248001','98','27','8',128),
(6,'Haridwar Road','Sarsvati Vihaar','248001','98','27','8',129),
(7,'Haridwar Road','Sarsvati Vihaar','248001','98','27','8',130),
(8,'Dudhli Road','Doiwala','248140','98','27','8',131),
(9,'Haridwar Road','Sarsvati Vihaar','248140','98','27','8',132),
(10,'Haridwar Road','Doiwala','248140','98','27','8',133),
(11,'Bell Road','Clemen town','248001','98','27','8',134),
(12,'jkhjk','hkjhkjhkjhk','248001','98','27','8',135);

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
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

/*Data for the table `house_image` */

insert into `house_image` values 
(57,NULL,'/usr/local/userPhotos/HOUSE/117/na_preri.gif','/usr/local/userPhotos/Big/HOUSE/117/na_preri.gif',117),
(58,NULL,'/usr/local/userPhotos/HOUSE/118/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/HOUSE/118/1476435_558998504180050_2080544610_n.jpg',118),
(59,NULL,'/usr/local/userPhotos/HOUSE/119/1456639_614098435291986_1515615659_n.jpg','/usr/local/userPhotos/Big/HOUSE/119/1456639_614098435291986_1515615659_n.jpg',119),
(60,NULL,'/usr/local/userPhotos/HOUSE/120/autumn-wallpaper-hd.jpg','/usr/local/userPhotos/Big/HOUSE/120/autumn-wallpaper-hd.jpg',120),
(61,NULL,'/usr/local/userPhotos/HOUSE/121/1471764_557221921032032_1469736954_a.jpg','/usr/local/userPhotos/Big/HOUSE/121/1471764_557221921032032_1469736954_a.jpg',121),
(63,NULL,'/usr/local/userPhotos/HOUSE/124/autumn-landscape-with-trees-1920x1080-wallpaper-11341.jpg','/usr/local/userPhotos/Big/HOUSE/124/autumn-landscape-with-trees-1920x1080-wallpaper-11341.jpg',124),
(66,NULL,'/usr/local/userPhotos/HOUSE/127/1480574_600682716658532_1629368238_a.jpg','/usr/local/userPhotos/Big/HOUSE/127/1480574_600682716658532_1629368238_a.jpg',127),
(67,NULL,'/usr/local/userPhotos/HOUSE/128/cusion.jpg','/usr/local/userPhotos/Big/HOUSE/128/cusion.jpg',128),
(68,NULL,'/usr/local/userPhotos/HOUSE/129/cusion.jpg','/usr/local/userPhotos/Big/HOUSE/129/cusion.jpg',129),
(69,NULL,'/usr/local/userPhotos/HOUSE/130/bag.jpg','/usr/local/userPhotos/Big/HOUSE/130/bag.jpg',130),
(70,NULL,'/usr/local/userPhotos/HOUSE/131/main-qimg-ac0e50afb969831693bc575c10a31068.jpg','/usr/local/userPhotos/Big/HOUSE/131/main-qimg-ac0e50afb969831693bc575c10a31068.jpg',131),
(71,NULL,'/usr/local/userPhotos/HOUSE/132/Curtain.jpg','/usr/local/userPhotos/Big/HOUSE/132/Curtain.jpg',132),
(72,NULL,'/usr/local/userPhotos/HOUSE/133/960100_371945906274477_81820131_n.jpg','/usr/local/userPhotos/Big/HOUSE/133/960100_371945906274477_81820131_n.jpg',133),
(73,NULL,'/usr/local/userPhotos/HOUSE/134/na_preri.gif','/usr/local/userPhotos/Big/HOUSE/134/na_preri.gif',134),
(74,NULL,'/usr/local/userPhotos/HOUSE/135/autumn-landscape-with-trees-1920x1080-wallpaper-11341.jpg','/usr/local/userPhotos/Big/HOUSE/135/autumn-landscape-with-trees-1920x1080-wallpaper-11341.jpg',135);

/*Table structure for table `house_type` */

DROP TABLE IF EXISTS `house_type`;

CREATE TABLE `house_type` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `house_type` */

insert into `house_type` values 
(1,'1BHK'),
(2,'2BHK'),
(3,'3BHK'),
(4,'4BHK');

/*Table structure for table `image` */

DROP TABLE IF EXISTS `image`;

CREATE TABLE `image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `ITEM_TYPE` varchar(255) NOT NULL,
  `ITEM_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=223 DEFAULT CHARSET=latin1;

/*Data for the table `image` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `image_banner_ad` */

/*Table structure for table `institute` */

DROP TABLE IF EXISTS `institute`;

CREATE TABLE `institute` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `DESCRIPTION` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `institute` */

/*Table structure for table `institute_image` */

DROP TABLE IF EXISTS `institute_image`;

CREATE TABLE `institute_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `INSTITUTE_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_INSTITUTE_IMAGE_INSTITUTE_ID` (`INSTITUTE_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `institute_image` */

/*Table structure for table `institute_tab` */

DROP TABLE IF EXISTS `institute_tab`;

CREATE TABLE `institute_tab` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` longtext,
  `TAB` varchar(255) NOT NULL,
  `INSTITUTE_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_INSTITUTE_TAB_INSTITUTE_ID` (`INSTITUTE_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `institute_tab` */

/*Table structure for table `institute_tab_image` */

DROP TABLE IF EXISTS `institute_tab_image`;

CREATE TABLE `institute_tab_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `INSTITUTE_TAB_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_INSTITUTE_TAB_IMAGE_INSTITUTE_TAB_ID` (`INSTITUTE_TAB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `institute_tab_image` */

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `interior` */

insert into `interior` values 
(1,'gjgbjhbjmn','pojnhftrhbbfsd 1234567890 ,./\';[]\\','INR',45456,'',12,'2013-08-02 13:14:09','2013-08-02 13:14:09'),
(2,'vjhfvjvjh','vskvnksdkjdskm #$%@& /.,;\'\\][','INR',456,'',12,'2013-08-02 15:19:47','2013-08-02 15:19:47'),
(3,'moon','nmjhuytrfdv 786420 ./,;\'][\\@#$%&','INR',786,'',12,'2013-08-02 15:20:30','2013-08-02 15:20:30'),
(4,'ngfuyhgvh','cvbnmlkjrytfhg','INR',886,'',12,'2013-08-02 15:21:03','2013-08-02 15:21:03'),
(5,'taniskkh','vnsidiusdjksd 1234567890 ,.;;\'[]\\/@#$%&','INR',45230,'',12,'2013-08-02 15:21:34','2013-08-02 15:21:34'),
(6,'hgtyghj','vsjhdsjdijksd 1234567890','INR',895623,'',12,'2013-08-02 15:22:16','2013-08-02 15:22:16'),
(7,'vgytun','vnsdnlksjdkjm 1234567890 @#$%&','INR',8956,'',12,'2013-08-02 15:22:38','2013-08-02 15:22:38'),
(8,'tugjbj',',./;\'[]\\@#$%& nvksjdksjdmdsjds 1234567890','INR',956,'',12,'2013-08-02 15:23:22','2013-08-02 15:23:22');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `interior_image` */

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
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `jewelry` */

insert into `jewelry` values 
(1,'2013-08-02 16:15:24','2013-08-02 16:15:24','pgghg','12345678999990 ,;]\\[\'/.@#$%&','','57676','INR','456bb','',13),
(2,'2013-08-02 16:16:15','2013-08-02 16:16:15','gyfdrebn','vbsjhdjshdjskdn ,;[\\\'/.]?\"}}|{','','65758','INR','785 vbjs','',13),
(3,'2013-08-02 16:17:18','2013-08-02 16:17:18','desjky','vksjdhjsdiksdjsd 1234567890 /,;\'\\][.@#$%&','','700','INR','766 fkjdk','',13),
(4,'2013-08-02 16:18:19','2013-08-02 16:18:19','gyrnh','vjfkdkjdfhkdf 1234567890 ,;[\\\'/.]@#$%&','','789','INR','46 fhjd','',13),
(5,'2013-08-02 16:19:01','2013-08-02 16:19:01','gypoujnh','vbjsdbjkdnkjdfn1234567890 /\'][;.,\\','','7676','INR','45njlk','',13),
(6,'2013-08-02 16:19:43','2013-08-02 16:19:43','bhuytr','vbsjdhkjsdsdfhjk 1234567890 ,;[]\'/.\\@#$&','','7867','INR','45 bfjh','',13),
(7,'2013-08-02 16:20:27','2013-08-02 16:20:27','bhuytfgcv','vsjdgbjsdh ,./\'\\][;@#$%& 1234567890','','85623','INR','465 vhjvhj','',13),
(8,'2013-08-02 16:21:16','2013-08-02 16:21:16','nhuiop','vbjsdgbgudfjh 1234567890 ,;[]\'/\\#$%@&','','4654','INR','896nvkj','',13),
(9,'2013-09-27 15:28:42','2013-09-27 15:28:42','svsv','dbdb',NULL,'234','INR','123','sfvsv',312),
(10,'2013-09-27 15:30:25','2013-09-27 15:30:25','svsv','dbdb',NULL,'234','INR','123','sfvsv',312),
(11,'2013-09-27 15:30:57','2013-09-27 15:30:57','nmnm','hgjhgjhgj',NULL,'78','INR','8787','red',312),
(12,'2013-09-27 15:31:15','2013-09-27 15:31:15','nmnm','hgjhgjhgj',NULL,'78','INR','8787','red',312),
(13,'2013-09-27 16:08:13','2013-09-27 16:08:13','hjkhjhk','hjgjhgjh',NULL,'89','INR','8889','qqqq',312),
(14,'2013-09-27 16:08:32','2013-09-27 16:08:32','hjkhjhk','hjgjhgjh',NULL,'89','INR','8889','qqqq',312),
(15,'2013-09-27 17:39:25','2013-09-27 17:39:25','asas','kjhjhjhhjjhhj',NULL,'89','INR','89','pink',312),
(16,'2013-09-28 11:35:55','2013-09-28 11:35:55','ui','hjhkjhkjhkj',NULL,'8','INR','98','red',312),
(17,'2013-10-02 13:52:52','2013-10-02 13:52:52','','',NULL,'','INR','','',316);

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `jewelry_image` */

insert into `jewelry_image` values 
(1,NULL,'/usr/local/userPhotos/JEWELRY/9/bloominginalaska-windows-wallpapers-hd.jpg','/usr/local/userPhotos/Big/JEWELRY/9/bloominginalaska-windows-wallpapers-hd.jpg',9),
(2,NULL,'/usr/local/userPhotos/JEWELRY/10/bloominginalaska-windows-wallpapers-hd.jpg','/usr/local/userPhotos/Big/JEWELRY/10/bloominginalaska-windows-wallpapers-hd.jpg',10),
(3,NULL,'/usr/local/userPhotos/JEWELRY/11/1063810_495312807211507_775072561_o.jpg','/usr/local/userPhotos/Big/JEWELRY/11/1063810_495312807211507_775072561_o.jpg',11),
(4,NULL,'/usr/local/userPhotos/JEWELRY/12/1063810_495312807211507_775072561_o.jpg','/usr/local/userPhotos/Big/JEWELRY/12/1063810_495312807211507_775072561_o.jpg',12),
(5,NULL,'/usr/local/userPhotos/JEWELRY/13/city-wallpaper-1.jpg','/usr/local/userPhotos/Big/JEWELRY/13/city-wallpaper-1.jpg',13),
(6,NULL,'/usr/local/userPhotos/JEWELRY/14/city-wallpaper-1.jpg','/usr/local/userPhotos/Big/JEWELRY/14/city-wallpaper-1.jpg',14),
(7,NULL,'/usr/local/userPhotos/JEWELRY/15/v.jpg','/usr/local/userPhotos/Big/JEWELRY/15/v.jpg',15),
(8,NULL,'/usr/local/userPhotos/JEWELRY/16/autumn-trees-1920x1080-wallpaper-7135.jpg','/usr/local/userPhotos/Big/JEWELRY/16/autumn-trees-1920x1080-wallpaper-7135.jpg',16),
(9,NULL,'/usr/local/userPhotos/JEWELRY/17/199481255_fdfe885f87_s.jpg','/usr/local/userPhotos/Big/JEWELRY/17/199481255_fdfe885f87_s.jpg',17);

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `job` */

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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `kitchen` */

insert into `kitchen` values 
(1,'bvjskdkjhsdkjdn 132548789 ,./\';[[]\\','1545','INR',11,'bvjsjvhsj','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(2,'vskjhdkjhsdj 1234567890 #$%@& ./\';[]\\,','1545','INR',11,'yuihdvhjd','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(3,'vnksjdjdfujdf 1234567890','1545','INR',11,'fudhj','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(4,'vkjsbvjhsdhd 1234567890','16545','INR',11,'fyiusbdvkjsd','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(5,'bvjshdjhs 1234567890','45465','INR',11,'ygusdgvjsd','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(6,'1234567890','152','INR',11,'fushjd','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(7,'nvkjdfkdj 1234567890/.,;\'][\\','46546','INR',11,'hfgsjsh','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(8,'vbkjdhuhjdfuj 1234567890 \\]\'/.,;[','7686','INR',11,'yuih','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(9,'hjhjhjjh','87','INR',307,'klklklklk','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(10,'kitchen','8000','INR',309,'ki','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(11,'new\r\n','900','INR',309,'jik','0000-00-00 00:00:00','0000-00-00 00:00:00');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `kitchen_image` */

insert into `kitchen_image` values 
(1,NULL,'9/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg','9/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg',9),
(2,NULL,'10/autumn-wallpaper-hd.jpg','10/autumn-wallpaper-hd.jpg',10),
(3,NULL,'/usr/local/userPhotos/KITCHEN/11/around-sunset-1920x1080-wallpaper-10136.jpg','/usr/local/userPhotos/Big/KITCHEN/11/around-sunset-1920x1080-wallpaper-10136.jpg',11);

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
  `COST_UNIT` varchar(10) NOT NULL DEFAULT 'INR',
  `USER_ID` bigint(10) NOT NULL,
  `REAL_ESTATE_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_LAND_LAND_TYPE` (`LAND_TYPE`),
  KEY `FK_LAND_USER` (`OWNER`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `land` */

insert into `land` values 
(1,'2014-03-05 22:52:21','2014-03-05 22:52:21','low price','asdfghjkl',NULL,NULL,NULL,'12000',1000,2,NULL,'INR',740,1),
(2,'2014-03-05 18:45:24','2014-03-05 18:45:24','Masuri ','jlkj',NULL,NULL,NULL,'14000',15000000,2,NULL,'INR',740,1);

/*Table structure for table `land_address` */

DROP TABLE IF EXISTS `land_address`;

CREATE TABLE `land_address` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `STREET_NAME` varchar(255) DEFAULT NULL,
  `AREA_NAME` varchar(255) DEFAULT NULL,
  `AREA_CODE` varchar(21) DEFAULT NULL,
  `COUNTRY` varchar(25) DEFAULT NULL,
  `STATE` varchar(25) DEFAULT NULL,
  `CITY` varchar(25) DEFAULT NULL,
  `LAND_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `land_address` */

insert into `land_address` values 
(1,'DL Road','Navada','248001','98','27','8',1),
(2,'Masuri Road','Masuri','248001','98','27','8',2);

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `land_image` */

insert into `land_image` values 
(1,NULL,'/usr/local/userPhotos/LAND/1/along-the-river-1920x1080-wallpaper-7398.jpg','/usr/local/userPhotos/Big/LAND/1/along-the-river-1920x1080-wallpaper-7398.jpg',1),
(2,NULL,'/usr/local/userPhotos/LAND/2/autumn-landscape-with-trees-1920x1080-wallpaper-11341.jpg','/usr/local/userPhotos/Big/LAND/2/autumn-landscape-with-trees-1920x1080-wallpaper-11341.jpg',2);

/*Table structure for table `land_type` */

DROP TABLE IF EXISTS `land_type`;

CREATE TABLE `land_type` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `land_type` */

insert into `land_type` values 
(1,'Agricultural'),
(2,'Commercial'),
(3,'Residential');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `medical_equipment` */

insert into `medical_equipment` values 
(1,'man','jkhkjh','INR','8989','877878',311,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(2,'man','jkhkjh','INR','8989','877878',311,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(3,'new','hkj','INR','87','87',311,'0000-00-00 00:00:00','0000-00-00 00:00:00');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `medical_equipment_image` */

insert into `medical_equipment_image` values 
(1,NULL,'/usr/local/userPhotos/MEDICAL_EQUIPMENT/1/1063810_495312807211507_775072561_o.jpg','/usr/local/userPhotos/Big/MEDICAL_EQUIPMENT/1/1063810_495312807211507_775072561_o.jpg',1),
(2,NULL,'/usr/local/userPhotos/MEDICAL_EQUIPMENT/2/1063810_495312807211507_775072561_o.jpg','/usr/local/userPhotos/Big/MEDICAL_EQUIPMENT/2/1063810_495312807211507_775072561_o.jpg',2),
(3,NULL,'/usr/local/userPhotos/MEDICAL_EQUIPMENT/3/1063810_495312807211507_775072561_o.jpg','/usr/local/userPhotos/Big/MEDICAL_EQUIPMENT/3/1063810_495312807211507_775072561_o.jpg',3);

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `optical` */

insert into `optical` values 
(1,'bjhhjj','svdfgvdfgvdf 111111111 ,;[]\'/.\\','486','INR','2013-08-02 17:01:30','2013-08-02 17:01:30',15),
(2,'nkour','v hjgvhv hnb ,./;\'[]\\','4006','INR','2013-08-02 17:02:49','2013-08-02 17:02:49',15),
(3,'vhgvh','1234567890 ,;[]\'/.\\&%$#@','598956','INR','2013-08-02 17:03:43','2013-08-02 17:03:43',15),
(4,'vhfvh','sgfdcghvhnjb 1234567890','8956','INR','2013-08-02 17:04:23','2013-08-02 17:04:23',15),
(5,'vghvgh','hsvhdkjvkd,./;\'\\][1234567890','454','INR','2013-08-02 17:04:56','2013-08-02 17:04:56',15),
(6,'chgcg','vskjhvksjhvjks 1234567890 /;]\\[\'.,|}{\"? ','123','INR','2013-08-02 17:05:44','2013-08-02 17:05:44',15),
(7,'nhuiop','chgfgvghjbhmn 1234567890 /.;\'[]\\,','7569','INR','2013-08-02 17:06:25','2013-08-02 17:06:25',15),
(8,'vbhuytr','1234567890,./\';[]\\','49632','INR','2013-08-02 17:06:55','2013-08-02 17:06:55',15);

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `optical_image` */

insert into `optical_image` values 
(1,NULL,'/usr/local/userPhotos/OPTICAL/1/Default.jpg','/usr/local/userPhotos/Big/OPTICAL/1/Default.jpg',1),
(2,NULL,'/usr/local/userPhotos/OPTICAL/2/gucci-sunglasses.jpg','/usr/local/userPhotos/Big/OPTICAL/2/gucci-sunglasses.jpg',2),
(3,NULL,'/usr/local/userPhotos/OPTICAL/3/Cool_Glasses.jpg','/usr/local/userPhotos/Big/OPTICAL/3/Cool_Glasses.jpg',3),
(4,NULL,'/usr/local/userPhotos/OPTICAL/4/Glasses-Frames.jpg','/usr/local/userPhotos/Big/OPTICAL/4/Glasses-Frames.jpg',4),
(5,NULL,'/usr/local/userPhotos/OPTICAL/5/sunglasses.jpg','/usr/local/userPhotos/Big/OPTICAL/5/sunglasses.jpg',5),
(6,NULL,'/usr/local/userPhotos/OPTICAL/6/Old_Glasses.jpg','/usr/local/userPhotos/Big/OPTICAL/6/Old_Glasses.jpg',6),
(7,NULL,'/usr/local/userPhotos/OPTICAL/7/Work1.jpg','/usr/local/userPhotos/Big/OPTICAL/7/Work1.jpg',7),
(8,NULL,'/usr/local/userPhotos/OPTICAL/8/Work.jpg','/usr/local/userPhotos/Big/OPTICAL/8/Work.jpg',8);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `other` */

/*Table structure for table `other_image` */

DROP TABLE IF EXISTS `other_image`;

CREATE TABLE `other_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `OTHER_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_OTHER_IMAGE_OTHER_ID` (`OTHER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `other_image` */

/*Table structure for table `owner` */

DROP TABLE IF EXISTS `owner`;

CREATE TABLE `owner` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  `CONTACT_NUMBER` varchar(21) DEFAULT NULL,
  `MOBILE_NUMBER` varchar(21) DEFAULT NULL,
  `UPDATED_DATE` datetime DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `DESCRIPTION` longtext,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `HOUSE_NAME` varchar(255) DEFAULT NULL,
  `ROLE` bigint(10) DEFAULT NULL,
  `ADDRESS_ID` bigint(10) DEFAULT NULL,
  `IS_ACTIVE` tinyint(1) DEFAULT '0',
  `INVITATION_KEY` varchar(255) DEFAULT NULL,
  `BUSINESS_CATEGORY_ID` int(3) DEFAULT '1',
  `FACEBOOK_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=774 DEFAULT CHARSET=latin1;

/*Data for the table `owner` */

insert into `owner` values 
(15,'bhgyuiop',NULL,'8923641705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(16,'bhioputre',NULL,'2365897412056',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(17,'dcgfcgh',NULL,'9856247310',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(18,'riya',NULL,'0236514799',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(346,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(347,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(349,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(351,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(353,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(355,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(358,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(360,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(362,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(364,'qwertyuioo',NULL,'asdfghjkl;',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(365,'qwertyuioo',NULL,'asdfghjkl;',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(367,'qwertyuioo',NULL,'asdfghjkl;',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(368,'qwertyuioo',NULL,'asdfghjkl;',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(370,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(372,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(373,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(376,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(378,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(380,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(382,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(384,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(386,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(388,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(390,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(392,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(394,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(396,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(398,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(400,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(401,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(403,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(405,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(407,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(408,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(410,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(411,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(413,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(414,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(416,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(417,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(419,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(421,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(423,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(424,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(426,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(428,'wertyuio',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(430,'wertyuio',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(431,'wertyuio',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(433,'wertyuio',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(435,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(436,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(438,'asdfghjkl',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(440,'asdfghjkl',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(442,'asdfghjkl',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(443,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(445,'sdfgjl;',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(447,'sdfgjl;',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(448,'sdfgjl;',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(450,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(452,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(453,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(455,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(457,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(459,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(460,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(462,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(463,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(465,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(467,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(468,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(488,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(503,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(601,NULL,NULL,'sdfgh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(643,'123',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(739,'salman',NULL,'8909785634','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'vikas.singh1@soarlogic.com','7c222fb2927d828af22f592134e8932480637c0d',NULL,1,3253,1,'52C6407537B7E1.00275814',1,NULL),
(740,'vicky',NULL,'9808765423',NULL,NULL,NULL,'Vikas','Singh','vikas.singh2@soarlogic.com','7c222fb2927d828af22f592134e8932480637c0d',NULL,1,3255,1,'52D37D6A63D811.10220716',1,NULL),
(751,'vicky',NULL,'9808765423',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(748,'name',NULL,'0989786765',NULL,NULL,NULL,NULL,NULL,'name@gmail.com',NULL,NULL,NULL,3257,0,NULL,1,NULL),
(750,'vicky',NULL,'9808765423',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(752,'jay',NULL,'9808765423',NULL,NULL,NULL,NULL,NULL,'jay@gmail.com',NULL,NULL,NULL,3289,0,NULL,1,NULL),
(754,'anil',NULL,NULL,'2014-03-11 13:42:14','2014-03-11 13:42:14',NULL,'Anil','Bhadula','anilbhadula@soarlogic.com','7c222fb2927d828af22f592134e8932480637c0d',NULL,1,NULL,0,'531EC55EA02B83.48365862',1,NULL),
(755,'vikas',NULL,'9808117322','2014-03-14 16:41:49','2014-03-14 16:41:49',NULL,'vikas','singh','vikas.singh3@soarlogic.com','7c222fb2927d828af22f592134e8932480637c0d',NULL,1,3318,1,'5322E3F551E998.59817062',1,NULL),
(773,'vikas',NULL,'98081173200',NULL,NULL,NULL,'Vikas','Singh','vikas.singh@soarlogic.com','7c222fb2927d828af22f592134e8932480637c0d',NULL,1,3321,1,'53281FAC48BDE6.25260664',1,NULL);

/*Table structure for table `owner_image` */

DROP TABLE IF EXISTS `owner_image`;

CREATE TABLE `owner_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `OWNER_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_OWNER_IMAGE_OWNER` (`OWNER_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=262 DEFAULT CHARSET=latin1;

/*Data for the table `owner_image` */

insert into `owner_image` values 
(1,'/usr/local/userPhotos/OWNER/1/Owner_Default.jpg',1),
(2,'/usr/local/userPhotos/OWNER/2/Owner_Default.jpg',2),
(3,'/usr/local/userPhotos/OWNER/3/Owner_Default.gif',3),
(4,'/usr/local/userPhotos/OWNER/4/MaleSilhouette.jpeg.jpg',4),
(5,'/usr/local/userPhotos/OWNER/5/MaleSilhouette.jpeg.jpg',5),
(6,'/usr/local/userPhotos/OWNER/6/Owner_Default.jpg',6),
(7,'/usr/local/userPhotos/OWNER/7/Owner_Default.jpg',7),
(8,'/usr/local/userPhotos/OWNER/8/Owner_Default.jpg',8),
(9,'/usr/local/userPhotos/OWNER/9/Owner_Default.jpg',9),
(10,'/usr/local/userPhotos/OWNER/10/Owner_Default.jpg',10),
(11,'/usr/local/userPhotos/OWNER/11/Owner_Default.gif',11),
(12,'/usr/local/userPhotos/OWNER/12/Owner_Default.gif',12),
(13,'/usr/local/userPhotos/OWNER/13/Owner_Default.jpg',13),
(14,'/usr/local/userPhotos/OWNER/14/Owner_Default.gif',14),
(15,'/usr/local/userPhotos/OWNER/15/Owner_Default.gif',15),
(16,'/usr/local/userPhotos/OWNER/16/MaleSilhouette.jpeg.jpg',16),
(17,'/usr/local/userPhotos/OWNER/17/Owner_Default.gif',17),
(18,'/usr/local/userPhotos/OWNER/18/MaleSilhouette.jpeg.jpg',18),
(19,'/usr/local/userPhotos/OWNER/19/Deafult.jpg',19),
(20,'/usr/local/userPhotos/OWNER/285/autumn-wallpaper-hd.jpg',285),
(21,'/usr/local/userPhotos/OWNER/286/autumn-wallpaper-hd.jpg',286),
(22,'/usr/local/userPhotos/OWNER/287/autumn-wallpaper-hd.jpg',287),
(23,'/usr/local/userPhotos/OWNER/288/autumn-wallpaper-hd.jpg',288),
(24,'/usr/local/userPhotos/OWNER/289/autumn-wallpaper-hd.jpg',289),
(25,'/usr/local/userPhotos/OWNER/290/autumn-wallpaper-hd.jpg',290),
(26,'/usr/local/userPhotos/OWNER/291/autumn-wallpaper-hd.jpg',291),
(27,'/usr/local/userPhotos/OWNER/292/autumn-wallpaper-hd.jpg',292),
(28,'/usr/local/userPhotos/OWNER/293/autumn-wallpaper-hd.jpg',293),
(29,'/usr/local/userPhotos/OWNER/294/autumn-wallpaper-hd.jpg',294),
(30,'/usr/local/userPhotos/OWNER/295/autumn-wallpaper-hd.jpg',295),
(31,'/usr/local/userPhotos/OWNER/296/autumn-wallpaper-hd.jpg',296),
(32,'/usr/local/userPhotos/OWNER/297/autumn-wallpaper-hd.jpg',297),
(33,'/usr/local/userPhotos/OWNER/298/autumn-wallpaper-hd.jpg',298),
(34,'/usr/local/userPhotos/OWNER/299/autumn-wallpaper-hd.jpg',299),
(35,'/usr/local/userPhotos/OWNER/300/autumn-wallpaper-hd.jpg',300),
(36,'/usr/local/userPhotos/OWNER/301/autumn-wallpaper-hd.jpg',301),
(37,'/usr/local/userPhotos/OWNER/302/autumn-wallpaper-hd.jpg',302),
(38,'/usr/local/userPhotos/OWNER/303/autumn-wallpaper-hd.jpg',303),
(39,'/usr/local/userPhotos/OWNER/304/autumn-wallpaper-hd.jpg',304),
(40,'/usr/local/userPhotos/OWNER/305/autumn-wallpaper-hd.jpg',305),
(41,'/usr/local/userPhotos/OWNER/306/autumn-wallpaper-hd.jpg',306),
(42,'/usr/local/userPhotos/OWNER/307/autumn-wallpaper-hd.jpg',307),
(43,'/usr/local/userPhotos/OWNER/308/autumn-wallpaper-hd.jpg',308),
(44,'/usr/local/userPhotos/OWNER/309/autumn-wallpaper-hd.jpg',309),
(45,'/usr/local/userPhotos/OWNER/310/autumn-wallpaper-hd.jpg',310),
(46,'/usr/local/userPhotos/OWNER/311/autumn-wallpaper-hd.jpg',311),
(47,'/usr/local/userPhotos/OWNER/312/autumn-wallpaper-hd.jpg',312),
(48,'/usr/local/userPhotos/OWNER/313/autumn-wallpaper-hd.jpg',313),
(49,'/usr/local/userPhotos/OWNER/314/autumn-wallpaper-hd.jpg',314),
(50,'/usr/local/userPhotos/OWNER/315/autumn-wallpaper-hd.jpg',315),
(51,'/usr/local/userPhotos/OWNER/316/autumn-wallpaper-hd.jpg',316),
(52,'/usr/local/userPhotos/OWNER/317/autumn-wallpaper-hd.jpg',317),
(53,'/usr/local/userPhotos/OWNER/318/autumn-wallpaper-hd.jpg',318),
(54,'/usr/local/userPhotos/OWNER/319/city-wallpaper-1.jpg',319),
(55,'/usr/local/userPhotos/OWNER/320/avatar77321_1.gif',320),
(56,'/usr/local/userPhotos/OWNER/321/avatar77321_1.gif',321),
(57,'/usr/local/userPhotos/OWNER/328/bloominginalaska-windows-wallpapers-hd.jpg',328),
(58,'/usr/local/userPhotos/OWNER/329/bloominginalaska-windows-wallpapers-hd.jpg',329),
(59,'/usr/local/userPhotos/OWNER/330/bloominginalaska-windows-wallpapers-hd.jpg',330),
(60,'/usr/local/userPhotos/OWNER/370/avatar77321_1.gif',370),
(61,'/usr/local/userPhotos/OWNER/371/avatar77321_1.gif',371),
(62,'/usr/local/userPhotos/OWNER/372/avatar77321_1.gif',372),
(63,'/usr/local/userPhotos/OWNER/373/avatar77321_1.gif',373),
(64,'/usr/local/userPhotos/OWNER/374/avatar77321_1.gif',374),
(65,'/usr/local/userPhotos/OWNER/375/avatar77321_1.gif',375),
(66,'/usr/local/userPhotos/OWNER/376/avatar77321_1.gif',376),
(67,'/usr/local/userPhotos/OWNER/377/avatar77321_1.gif',377),
(68,'/usr/local/userPhotos/OWNER/378/avatar77321_1.gif',378),
(69,'/usr/local/userPhotos/OWNER/379/avatar77321_1.gif',379),
(70,'/usr/local/userPhotos/OWNER/380/avatar77321_1.gif',380),
(71,'/usr/local/userPhotos/OWNER/381/avatar77321_1.gif',381),
(72,'/usr/local/userPhotos/OWNER/382/avatar77321_1.gif',382),
(73,'/usr/local/userPhotos/OWNER/383/avatar77321_1.gif',383),
(74,'/usr/local/userPhotos/OWNER/384/avatar77321_1.gif',384),
(75,'/usr/local/userPhotos/OWNER/385/avatar77321_1.gif',385),
(76,'/usr/local/userPhotos/OWNER/386/avatar77321_1.gif',386),
(77,'/usr/local/userPhotos/OWNER/387/avatar77321_1.gif',387),
(78,'/usr/local/userPhotos/OWNER/388/avatar77321_1.gif',388),
(79,'/usr/local/userPhotos/OWNER/389/avatar77321_1.gif',389),
(80,'/usr/local/userPhotos/OWNER/390/avatar77321_1.gif',390),
(81,'/usr/local/userPhotos/OWNER/391/avatar77321_1.gif',391),
(82,'/usr/local/userPhotos/OWNER/392/avatar77321_1.gif',392),
(83,'/usr/local/userPhotos/OWNER/393/avatar77321_1.gif',393),
(84,'/usr/local/userPhotos/OWNER/394/avatar77321_1.gif',394),
(85,'/usr/local/userPhotos/OWNER/395/avatar77321_1.gif',395),
(86,'/usr/local/userPhotos/OWNER/396/avatar77321_1.gif',396),
(87,'/usr/local/userPhotos/OWNER/397/avatar77321_1.gif',397),
(88,'/usr/local/userPhotos/OWNER/398/avatar77321_1.gif',398),
(89,'/usr/local/userPhotos/OWNER/399/avatar77321_1.gif',399),
(90,'/usr/local/userPhotos/OWNER/400/avatar77321_1.gif',400),
(91,'/usr/local/userPhotos/OWNER/401/avatar77321_1.gif',401),
(92,'/usr/local/userPhotos/OWNER/402/avatar77321_1.gif',402),
(93,'/usr/local/userPhotos/OWNER/403/avatar77321_1.gif',403),
(94,'/usr/local/userPhotos/OWNER/404/avatar77321_1.gif',404),
(95,'/usr/local/userPhotos/OWNER/405/avatar77321_1.gif',405),
(96,'/usr/local/userPhotos/OWNER/406/avatar77321_1.gif',406),
(97,'/usr/local/userPhotos/OWNER/407/avatar77321_1.gif',407),
(98,'/usr/local/userPhotos/OWNER/408/avatar77321_1.gif',408),
(99,'/usr/local/userPhotos/OWNER/409/avatar77321_1.gif',409),
(100,'/usr/local/userPhotos/OWNER/410/avatar77321_1.gif',410),
(101,'/usr/local/userPhotos/OWNER/411/avatar77321_1.gif',411),
(102,'/usr/local/userPhotos/OWNER/470/city-wallpaper-1.jpg',470),
(103,'/usr/local/userPhotos/OWNER/2772/city-wallpaper-1.jpg',2772),
(104,'/usr/local/userPhotos/OWNER/2772/city-wallpaper-1.jpg',2772),
(105,'/usr/local/userPhotos/OWNER/2772/city-wallpaper-1.jpg',2772),
(106,'/usr/local/userPhotos/OWNER/2772/city-wallpaper-1.jpg',2772),
(107,'/usr/local/userPhotos/OWNER/2772/city-wallpaper-1.jpg',2772),
(108,'/usr/local/userPhotos/OWNER/2772/city-wallpaper-1.jpg',2772),
(109,'/usr/local/userPhotos/OWNER/2772/city-wallpaper-1.jpg',2772),
(110,'/usr/local/userPhotos/OWNER/2772/city-wallpaper-1.jpg',2772),
(111,'/usr/local/userPhotos/OWNER/2772/city-wallpaper-1.jpg',2772),
(112,'/usr/local/userPhotos/OWNER/489/autumn-wallpaper-hd.jpg',489),
(113,'/usr/local/userPhotos/OWNER/490/avatar77321_1.gif',584),
(114,'/usr/local/userPhotos/OWNER/490/avatar77321_1.gif',490),
(115,'/usr/local/userPhotos/OWNER/490/avatar77321_1.gif',490),
(116,'/usr/local/userPhotos/OWNER/491/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg',491),
(117,'/usr/local/userPhotos/OWNER/570/city-wallpaper-1.jpg',570),
(118,'/usr/local/userPhotos/OWNER/570/city-wallpaper-1.jpg',570),
(119,'/usr/local/userPhotos/OWNER/594/1063810_495312807211507_775072561_o.jpg',594),
(120,'/usr/local/userPhotos/OWNER/594/1063810_495312807211507_775072561_o.jpg',594),
(121,'/usr/local/userPhotos/OWNER/594/1063810_495312807211507_775072561_o.jpg',594),
(122,'/usr/local/userPhotos/OWNER/594/1063810_495312807211507_775072561_o.jpg',594),
(123,'/usr/local/userPhotos/OWNER/594/1063810_495312807211507_775072561_o.jpg',594),
(124,'/usr/local/userPhotos/OWNER/594/1063810_495312807211507_775072561_o.jpg',594),
(125,'/usr/local/userPhotos/OWNER/594/1063810_495312807211507_775072561_o.jpg',594),
(126,'/usr/local/userPhotos/OWNER/594/1063810_495312807211507_775072561_o.jpg',594),
(127,'/usr/local/userPhotos/OWNER/594/1063810_495312807211507_775072561_o.jpg',594),
(128,'/usr/local/userPhotos/OWNER/594/1063810_495312807211507_775072561_o.jpg',594),
(129,'/usr/local/userPhotos/OWNER/594/1063810_495312807211507_775072561_o.jpg',594),
(130,'/usr/local/userPhotos/OWNER/594/1063810_495312807211507_775072561_o.jpg',594),
(131,'/usr/local/userPhotos/OWNER/594/city-wallpaper-1.jpg',594),
(132,'/usr/local/userPhotos/OWNER/594/city-wallpaper-1.jpg',594),
(133,'/usr/local/userPhotos/OWNER/595/beach-wallpaper-hd-florida-condos-download-wallpaper-wallpaper.jpg',595),
(134,'/usr/local/userPhotos/OWNER/596/along-the-river-1920x1080-wallpaper-7398.jpg',596),
(135,'/usr/local/userPhotos/OWNER/596/along-the-river-1920x1080-wallpaper-7398.jpg',596),
(136,'/usr/local/userPhotos/OWNER/597/beach-wallpaper-hd-florida-condos-download-wallpaper-wallpaper.jpg',597),
(137,'/usr/local/userPhotos/OWNER/599/along-the-river-1920x1080-wallpaper-7398.jpg',599),
(138,'/usr/local/userPhotos/OWNER/647/1063810_495312807211507_775072561_o.jpg',647),
(139,'/usr/local/userPhotos/OWNER/649/along-the-river-1920x1080-wallpaper-7398.jpg',649),
(140,'/usr/local/userPhotos/OWNER/650/along-the-river-1920x1080-wallpaper-7398.jpg',650),
(141,'/usr/local/userPhotos/OWNER/651/163531_328396987286136_2123155646_n.jpg',651),
(142,'/usr/local/userPhotos/OWNER/652/avatar77321_1.gif',652),
(143,'/usr/local/userPhotos/OWNER/657/along-the-river-1920x1080-wallpaper-7398.jpg',657),
(144,'/usr/local/userPhotos/OWNER/659/autumn-landscape-with-trees-1920x1080-wallpaper-11341.jpg',659),
(145,'/usr/local/userPhotos/OWNER/659/1063810_495312807211507_775072561_o.jpg',659),
(146,'/usr/local/userPhotos/OWNER/660/autumn-trees-1920x1080-wallpaper-7135.jpg',660),
(147,'/usr/local/userPhotos/OWNER/661/avatar77321_1.gif',661),
(148,'/usr/local/userPhotos/OWNER/662/1063810_495312807211507_775072561_o.jpg',662),
(149,'/usr/local/userPhotos/OWNER/663/1063810_495312807211507_775072561_o.jpg',663),
(150,'/usr/local/userPhotos/OWNER/664/v.jpg',664),
(151,'/usr/local/userPhotos/OWNER/665/v.jpg',665),
(152,'/usr/local/userPhotos/OWNER/666/autumn-wallpaper-hd.jpg',666),
(153,'/usr/local/userPhotos/OWNER/667/around-sunset-1920x1080-wallpaper-10136.jpg',667),
(154,'/usr/local/userPhotos/OWNER/668/v.jpg',668),
(155,'/usr/local/userPhotos/OWNER/669/avatar77321_1.gif',669),
(156,'/usr/local/userPhotos/OWNER/670/v.jpg',670),
(157,'/usr/local/userPhotos/OWNER/671/v.jpg',671),
(158,'/usr/local/userPhotos/OWNER/672/bloominginalaska-windows-wallpapers-hd.jpg',672),
(159,'/usr/local/userPhotos/OWNER/673/v.jpg',673),
(160,'/usr/local/userPhotos/OWNER/676/199481203_ad4cdcf109_s.jpg',676),
(161,'/usr/local/userPhotos/OWNER/677/229228324_08223b70fa_s.jpg',677),
(162,'/usr/local/userPhotos/OWNER/678/199481218_264ce20da0_s.jpg',678),
(163,'/usr/local/userPhotos/OWNER/679/199481087_33ae73a8de_s.jpg',679),
(164,'/usr/local/userPhotos/OWNER/680/199481255_fdfe885f87_s.jpg',680),
(165,'/usr/local/userPhotos/OWNER/681/199481143_3c148d9dd3_s.jpg',681),
(166,'/usr/local/userPhotos/OWNER/682/avatar77321_1.gif',682),
(167,'/usr/local/userPhotos/OWNER/682/avatar77321_1.gif',682),
(168,'/usr/local/userPhotos/OWNER/682/v.jpg',682),
(169,'/usr/local/userPhotos/OWNER/684/acareswell.jpg',684),
(170,'/usr/local/userPhotos/OWNER/685/acareswell.jpg',685),
(171,'/usr/local/userPhotos/OWNER/685/acareswell.jpg',685),
(172,'/usr/local/userPhotos/OWNER/686/acareswell.jpg',686),
(173,'/usr/local/userPhotos/OWNER/686/acareswell.jpg',686),
(174,'/usr/local/userPhotos/OWNER/687/1381690_587333221303438_1072552433_n_-_Copy.jpg',687),
(175,'/usr/local/userPhotos/OWNER/687/1381690_587333221303438_1072552433_n_-_Copy.jpg',687),
(176,'/usr/local/userPhotos/OWNER/697/acareswell.jpg',697),
(177,'/usr/local/userPhotos/OWNER/698/IMG_01112013_131849.png',698),
(178,'/usr/local/userPhotos/OWNER/699/acareswell.jpg',699),
(179,'/usr/local/userPhotos/OWNER/700/acareswell.jpg',700),
(180,'/usr/local/userPhotos/OWNER/701/v.jpg',701),
(181,'/usr/local/userPhotos/OWNER/702/v.jpg',702),
(182,'/usr/local/userPhotos/OWNER/703/v.jpg',703),
(183,'/usr/local/userPhotos/OWNER/704/avatar77321_1.gif',704),
(184,'/usr/local/userPhotos/OWNER/705/v.jpg',705),
(185,'/usr/local/userPhotos/OWNER/706/v.jpg',706),
(186,'/usr/local/userPhotos/OWNER/707/1476435_558998504180050_2080544610_n.jpg',707),
(187,'/usr/local/userPhotos/OWNER/707/1476435_558998504180050_2080544610_n.jpg',707),
(188,'/usr/local/userPhotos/OWNER/708/1476532_571893542883063_394917734_n.jpg',708),
(189,'/usr/local/userPhotos/OWNER/708/1476532_571893542883063_394917734_n.jpg',708),
(190,'/usr/local/userPhotos/OWNER/708/1476532_571893542883063_394917734_n.jpg',708),
(191,'/usr/local/userPhotos/OWNER/708/1476532_571893542883063_394917734_n.jpg',708),
(192,'/usr/local/userPhotos/OWNER/708/1476532_571893542883063_394917734_n.jpg',708),
(193,'/usr/local/userPhotos/OWNER/708/1476532_571893542883063_394917734_n.jpg',708),
(194,'/usr/local/userPhotos/OWNER/708/1476532_571893542883063_394917734_n.jpg',708),
(195,'/usr/local/userPhotos/OWNER/708/1476532_571893542883063_394917734_n.jpg',708),
(196,'/usr/local/userPhotos/OWNER/708/1476532_571893542883063_394917734_n.jpg',708),
(197,'/usr/local/userPhotos/OWNER/708/1476532_571893542883063_394917734_n.jpg',708),
(198,'/usr/local/userPhotos/OWNER/708/1476532_571893542883063_394917734_n.jpg',708),
(199,'/usr/local/userPhotos/OWNER/708/1476532_571893542883063_394917734_n.jpg',708),
(200,'/usr/local/userPhotos/OWNER/708/1476532_571893542883063_394917734_n.jpg',708),
(201,'/usr/local/userPhotos/OWNER/708/1476532_571893542883063_394917734_n.jpg',708),
(202,'/usr/local/userPhotos/OWNER/708/1476532_571893542883063_394917734_n.jpg',708),
(203,'/usr/local/userPhotos/OWNER/713/1476532_571893542883063_394917734_n.jpg',713),
(204,'/usr/local/userPhotos/OWNER/714/1476532_571893542883063_394917734_n.jpg',714),
(205,'/usr/local/userPhotos/OWNER/715/1476435_558998504180050_2080544610_n.jpg',715),
(206,'/usr/local/userPhotos/OWNER/716/1476532_571893542883063_394917734_n.jpg',716),
(207,'/usr/local/userPhotos/OWNER/717/1476532_571893542883063_394917734_n.jpg',717),
(208,'/usr/local/userPhotos/OWNER/718/1456639_614098435291986_1515615659_n.jpg',718),
(209,'/usr/local/userPhotos/OWNER/719/1451974_613168502074267_1569905781_s.jpg',719),
(210,'/usr/local/userPhotos/OWNER/720/1476435_558998504180050_2080544610_n.jpg',720),
(211,'/usr/local/userPhotos/OWNER/721/1455142_612410932150004_1164928356_n.jpg',721),
(212,'/usr/local/userPhotos/OWNER/722/1476532_571893542883063_394917734_n.jpg',722),
(213,'/usr/local/userPhotos/OWNER/723/1476532_571893542883063_394917734_n.jpg',723),
(214,'/usr/local/userPhotos/OWNER/724/1476532_571893542883063_394917734_n.jpg',724),
(215,'/usr/local/userPhotos/OWNER/725/1476532_571893542883063_394917734_n.jpg',725),
(216,'/usr/local/userPhotos/OWNER/726/1455142_612410932150004_1164928356_n.jpg',726),
(217,'/usr/local/userPhotos/OWNER/727/1455142_612410932150004_1164928356_n.jpg',727),
(218,'/usr/local/userPhotos/OWNER/728/1476532_571893542883063_394917734_n.jpg',728),
(219,'/usr/local/userPhotos/OWNER/729/1455142_612410932150004_1164928356_n.jpg',729),
(220,'/usr/local/userPhotos/OWNER/730/1476532_571893542883063_394917734_n.jpg',730),
(221,'/usr/local/userPhotos/OWNER/731/1476435_558998504180050_2080544610_n.jpg',731),
(222,'/usr/local/userPhotos/OWNER/732/1451974_613168502074267_1569905781_s.jpg',732),
(223,'/usr/local/userPhotos/OWNER/733/American-credit-cards.jpg',733),
(224,'/usr/local/userPhotos/OWNER/734/index.jpg',734),
(225,'/usr/local/userPhotos/OWNER/734/index.jpg',734),
(226,'/usr/local/userPhotos/OWNER/734/index.jpg',734),
(227,'/usr/local/userPhotos/OWNER/735/960100_371945906274477_81820131_n.jpg',735),
(228,'/usr/local/userPhotos/OWNER/736/1471764_557221921032032_1469736954_a.jpg',736),
(229,'/usr/local/userPhotos/OWNER/736/add-bggreen.jpg',736),
(230,'/usr/local/userPhotos/OWNER/736/around-sunset-1920x1080-wallpaper-10136.jpg',736),
(231,'/usr/local/userPhotos/OWNER/736/around-sunset-1920x1080-wallpaper-10136.jpg',736),
(232,'/usr/local/userPhotos/OWNER/736/1451974_613168502074267_1569905781_s.jpg',736),
(233,'/usr/local/userPhotos/OWNER/736/autumn-wallpaper-hd.jpg',736),
(234,'/usr/local/userPhotos/OWNER/736/1471764_557221921032032_1469736954_a.jpg',736),
(235,'/usr/local/userPhotos/OWNER/736/1471764_557221921032032_1469736954_a.jpg',736),
(236,'/usr/local/userPhotos/OWNER/736/1480574_600682716658532_1629368238_a.jpg',736),
(237,'/usr/local/userPhotos/OWNER/736/1480574_600682716658532_1629368238_a.jpg',736),
(238,'/usr/local/userPhotos/OWNER/736/1480574_600682716658532_1629368238_a.jpg',736),
(239,'/usr/local/userPhotos/OWNER/736/1471764_557221921032032_1469736954_a.jpg',736),
(240,'/usr/local/userPhotos/OWNER/736/1476649_609138352486377_1468502450_n.jpg',736),
(241,'/usr/local/userPhotos/OWNER/736/around-sunset-1920x1080-wallpaper-10136.jpg',736),
(242,'/usr/local/userPhotos/OWNER/736/around-sunset-1920x1080-wallpaper-10136.jpg',736),
(243,'/usr/local/userPhotos/OWNER/736/around-sunset-1920x1080-wallpaper-10136.jpg',736),
(244,'/usr/local/userPhotos/OWNER/736/1480574_600682716658532_1629368238_a.jpg',736),
(245,'/usr/local/userPhotos/OWNER/736/1480574_600682716658532_1629368238_a.jpg',736),
(246,'/usr/local/userPhotos/OWNER/736/around-sunset-1920x1080-wallpaper-10136.jpg',736),
(247,'/usr/local/userPhotos/OWNER/736/around-sunset-1920x1080-wallpaper-10136.jpg',736),
(248,'/usr/local/userPhotos/OWNER/736/around-sunset-1920x1080-wallpaper-10136.jpg',736),
(249,'/usr/local/userPhotos/OWNER/736/around-sunset-1920x1080-wallpaper-10136.jpg',736),
(250,'/usr/local/userPhotos/OWNER/736/around-sunset-1920x1080-wallpaper-10136.jpg',736),
(251,'/usr/local/userPhotos/OWNER/736/1471764_557221921032032_1469736954_a.jpg',736),
(252,'/usr/local/userPhotos/OWNER/736/1471764_557221921032032_1469736954_a.jpg',736),
(253,'/usr/local/userPhotos/OWNER/736/bloominginalaska-windows-wallpapers-hd.jpg',736),
(254,'/usr/local/userPhotos/OWNER/736/bloominginalaska-windows-wallpapers-hd.jpg',736),
(255,'/usr/local/userPhotos/OWNER/736/na_preri.gif',736),
(256,'/usr/local/userPhotos/OWNER/736/na_preri.gif',736),
(257,'/usr/local/userPhotos/OWNER/3249/around-sunset-1920x1080-wallpaper-10136.jpg',3249),
(258,'/usr/local/userPhotos/OWNER/739/v.jpg',739),
(259,'/usr/local/userPhotos/OWNER/740/v.jpg',740),
(260,'/usr/local/userPhotos/OWNER/755/61263773_ZJCdrZk2j_1390970051.jpg',755),
(261,'/usr/local/userPhotos/OWNER/773/226745_213250335359976_4542807_n.jpg',773);

/*Table structure for table `page` */

DROP TABLE IF EXISTS `page`;

CREATE TABLE `page` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL,
  `DESCRIPTION` longtext NOT NULL,
  `BUSINESS_TYPE` varchar(50) NOT NULL,
  `BUSINESS_TYPE_ID` bigint(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

/*Data for the table `page` */

insert into `page` values 
(1,'hggjhgjh','jjkjhkjk','',0),
(2,'kkkk','kkkkk','LocalBusiness',0),
(3,'kkkk','kkkkk','LocalBusiness',0),
(4,'kkkjkjjkjkj','jjjjjj','LocalBusiness',0),
(5,'lkjkljkl','kljkljljlkjl','LocalBusiness',0),
(6,'yiuyuiy','iuyiuyiuyui','LocalBusiness',0),
(7,'kjhjkhjk','hjhkjhjkh','LocalBusiness',0),
(8,'hjhhkhk','jhjkhkjhk','LocalBusiness',0),
(9,'vikas','nnnm','LocalBusiness',326),
(10,'SKSK999S9S9S9S9','JJKJJJK','LocalBusiness',326),
(11,'qwerty','asdfghjk','LocalBusiness',321),
(12,'hgj','hjhjjh','LocalBusiness',321),
(13,'hgj','hjhjjh','LocalBusiness',321),
(14,'asdfghj','asdfghjk','LocalBusiness',324),
(15,'contact us','sdfghj','CompanyOrganizations',39),
(16,'services','fghjk','CompanyOrganizations',39),
(17,'home','I have mentioned a few times that I need to extract the content of some tabs from the database. Let me explain why.I have mentioned a few times that I need to extract the content of some tabs from the database. Let me explain why.I have mentioned a few ti','CompanyOrganizations',39),
(18,'About Us','sdfghjk','CompanyOrganizations',39),
(19,'left','fakdfja;fakdjfla;jdfklajdfl;kajsdklfja;ldsjkfjadfkljasdfklj','CompanyOrganizations',39),
(21,'Home','take a risk?\r\n','CompanyOrganizations',40),
(28,'ticket','asdfghjk','CompanyOrganizations',40),
(29,'fgdhgfdgfdh','hjgkjhgkj','BrandOrProducts',33),
(30,'kio','dhfdg','BrandOrProducts',51),
(31,'jkljlk','kjlkjlkj','RealEstates',143),
(32,'jkljlk','kjlkjlkj','RealEstates',143),
(33,'jkinki','delhiiiii\r\njkljkljkjkl kljkljkljlk','RealEstates',143),
(34,'jkhkj','jhkjhk','BrandOrProducts',51),
(35,'fkldjfla1','kdlfjdkfl;aj','LocalBusiness',326),
(36,'company','sdkjfhakjsdlhfakj','CompanyOrganizations',42),
(37,'joker','jhkjhkjhkjh','BrandOrProducts',51),
(38,'ui','kjhkjhk','EventOrPlaces',39),
(39,',mnm,n,mmm,n,mn,',' m,n,mn,mn,m','EventOrPlaces',39),
(40,'test ','its ok','LocalBusiness',327),
(41,'test 1','qqi`','CompanyOrganizations',50),
(42,'jik','jlkjlkjlkjl','BrandOrProducts',57),
(43,'hhjkhkj','jkhkjhkj','EventOrPlaces',42),
(44,'home','test111111','LocalBusiness',328),
(45,'menu','open shortly','LocalBusiness',330),
(46,'home','jhdkhfkla  jkdhfkljasd jkahdf kjhdfkja kjahdfklja asdjkfalhsdjk','BrandOrProducts',59),
(47,'home','asdfghjk','CompanyOrganizations',49),
(48,'product','follow links','LocalBusiness',330),
(49,'menu test','open shortly test','LocalBusiness',330),
(50,'menu tes','open shortly test','LocalBusiness',330),
(51,'test5564','open shortly test','LocalBusiness',330),
(52,'hi 1','test hi\r\n','BrandOrProducts',7),
(53,'twst1 2','dkjfhldkjsfhlajkl','EventOrPlaces',47),
(54,'next','detail i s','EventOrPlaces',47),
(55,'garment','all type sof western','LocalBusiness',334),
(56,'menu','asdfghjkl','companyorganizations',1),
(57,'Nike','Orignl','BrandOrProducts',1),
(58,'menu','dfghjkl;','EventOrPlaces',2),
(59,'hello','test','local_business',330),
(60,'About Us','An architecture doesn\'t have to store code and data in the same memory. With a Harvard architecture, code and data are stored in completely different memory. Most architectures are Von Neumann architectures with code and data in the same memory but C doesn\'t limit itself to only certain types of architectures if at all possible.','local_business',334),
(61,'hi','asdfghjk','company_organizations',1),
(62,'hello','hjhjhjjhhjjhjhjhhj','company_organizations',1),
(63,'Menu','\r\nStack Overflow is a question and answer site for professional and enthusiast programmers. It\'s built and run by you as part of the Stack Exchange network of Q&A sites. With your help, we\'re working together to build a library of detailed answers to every question about program','local_business',334),
(64,'lk','lklkklk','event_or_places',2),
(65,'hi ','whats on xx','company_organizations',2),
(66,'hello','hhhhhh jkhskjdhksa kjshdhttp://dugun.com/images/couple/2/29/v1-wp1343652771.jpg','local_business',340),
(67,'go','http://dugun.com/images/couple/2/29/v1-wp1343652771.jpg \r\nkldsjflkj asdkjfhkaj','local_business',340);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `payment_method` */

insert into `payment_method` values 
(1,'123','456','789',1,1,'v@gmail.com','jaasus');

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
  `USER_ID` bigint(10) DEFAULT '1',
  `PRODUCT_BRAND_ID` bigint(10) DEFAULT NULL,
  `ADDRESS` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_PRODUCT_OWNER_ADMIN` (`OWNER_ADMIN`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert into `product` values 
(1,'Blower','asdfghjkl;','Full',2400,NULL,740,NULL,'2014-03-10 12:57:42','2014-03-10 12:57:42',NULL,'INR',1,1,NULL),
(2,'jkhkjh','hkjhkj','8789',89798,NULL,NULL,NULL,'2014-03-10 12:35:38','2014-03-10 12:35:38',NULL,'INR',1,1,NULL),
(3,'iouio',' jkhkjh','9879k',897,NULL,NULL,NULL,'2014-03-24 07:46:34','2014-03-24 07:46:34',NULL,'INR',1,3,NULL),
(4,'iouio',' jkhkjh','9879k',897,NULL,NULL,NULL,'2014-03-24 07:46:47','2014-03-24 07:46:47',NULL,'INR',1,3,NULL),
(5,'iouio',' jkhkjh','9879k',897,NULL,NULL,NULL,'2014-03-24 07:47:40','2014-03-24 07:47:40',NULL,'INR',1,3,NULL),
(6,'iouio',' jkhkjh','9879k',897,NULL,NULL,NULL,'2014-03-24 07:48:03','2014-03-24 07:48:03',NULL,'INR',1,3,NULL),
(7,'iouio',' jkhkjh','9879k',897,NULL,NULL,NULL,'2014-03-24 07:48:17','2014-03-24 07:48:17',NULL,'INR',1,3,NULL);

/*Table structure for table `product_brand` */

DROP TABLE IF EXISTS `product_brand`;

CREATE TABLE `product_brand` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` longtext,
  `ADDRESS` bigint(10) DEFAULT NULL,
  `USER_ID` bigint(10) NOT NULL,
  `STATUS` int(6) DEFAULT NULL,
  `MOBILE_NUMBER` varchar(21) DEFAULT NULL,
  `TOTAL_PRICE` int(10) DEFAULT '0',
  `IS_ACTIVE` tinyint(1) DEFAULT '0',
  `IS_PAID` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FK_SHOP_ADDRESS` (`ADDRESS`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `product_brand` */

insert into `product_brand` values 
(1,'2014-01-21 16:53:18','2014-01-21 16:53:18','Branded','asdfghjkl;',3270,740,NULL,'9878675654',0,0,0),
(2,'2014-01-22 21:31:01','2014-01-22 21:31:01','koka kola','use it again and again',3273,740,NULL,'8374674890',0,0,0),
(3,'2014-03-19 18:04:25','2014-03-19 18:04:25','Foster','<p>foster music CD</p>\r\n',3324,773,NULL,'7867896789',0,0,0);

/*Table structure for table `product_image` */

DROP TABLE IF EXISTS `product_image`;

CREATE TABLE `product_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `PRODUCT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `product_image` */

insert into `product_image` values 
(1,NULL,'/usr/local/userPhotos/PRODUCT/1/city-wallpaper-1.jpg','/usr/local/userPhotos/Big/PRODUCT/1/city-wallpaper-1.jpg',1),
(2,NULL,'/usr/local/userPhotos/PRODUCT/2/1476532_571893542883063_394917734_n.jpg','/usr/local/userPhotos/Big/PRODUCT/2/1476532_571893542883063_394917734_n.jpg',2),
(3,NULL,'/usr/local/userPhotos/PRODUCT/3/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/PRODUCT/3/1476435_558998504180050_2080544610_n.jpg',3),
(4,NULL,'/usr/local/userPhotos/PRODUCT/4/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/PRODUCT/4/1476435_558998504180050_2080544610_n.jpg',4),
(5,NULL,'/usr/local/userPhotos/PRODUCT/7/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/PRODUCT/7/1476435_558998504180050_2080544610_n.jpg',7);

/*Table structure for table `real_estate` */

DROP TABLE IF EXISTS `real_estate`;

CREATE TABLE `real_estate` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` longtext,
  `ADDRESS` bigint(10) NOT NULL,
  `USER_ID` bigint(10) NOT NULL,
  `STATUS` int(6) DEFAULT NULL,
  `MOBILE_NUMBER` varchar(21) NOT NULL,
  `TOTAL_PRICE` int(10) DEFAULT '0',
  `IS_ACTIVE` tinyint(1) DEFAULT '0',
  `IS_PAID` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FK_SHOP_ADDRESS` (`ADDRESS`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `real_estate` */

insert into `real_estate` values 
(1,'2014-01-17 20:18:08','2014-01-17 20:18:08','Diwan Associates','asdfghjkl',3266,740,NULL,'9878676554',0,0,0),
(2,'2014-01-22 22:23:46','2014-01-22 22:23:46','Chauhan Properties','qwertyuioasdfghjk',3276,740,NULL,'9878676554',0,0,0),
(12,'2014-03-12 16:37:49','2014-03-12 16:37:49','Prataap Corporations','Digital',3304,740,NULL,'6789567898',0,0,0);

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `resort` */

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
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

/*Data for the table `resort_gallery_image` */

/*Table structure for table `resort_image` */

DROP TABLE IF EXISTS `resort_image`;

CREATE TABLE `resort_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `RESORT_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_RESORT_IMAGE_RESORT_ID` (`RESORT_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `resort_image` */

/*Table structure for table `resort_tab` */

DROP TABLE IF EXISTS `resort_tab`;

CREATE TABLE `resort_tab` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` longtext,
  `NAME` varchar(255) NOT NULL,
  `RESORT_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_RESORT_TAB_RESORT_ID` (`RESORT_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `resort_tab` */

/*Table structure for table `resort_tab_image` */

DROP TABLE IF EXISTS `resort_tab_image`;

CREATE TABLE `resort_tab_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `RESORT_TAB_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_RESORT_TAB_IMAGE_RESORT_TAB_ID` (`RESORT_TAB_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `resort_tab_image` */

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `role` */

insert into `role` values 
(1,'USER'),
(2,'AGENT'),
(3,'BUSINESSMAN'),
(4,'BUILDER'),
(5,'ADMIN');

/*Table structure for table `sales` */

DROP TABLE IF EXISTS `sales`;

CREATE TABLE `sales` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `SHOP_ID` int(20) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `BUSINESS_TYPE` varchar(50) DEFAULT NULL,
  `SHOP_CATEGORY_ID` int(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `sales` */

insert into `sales` values 
(1,330,'kljkjkjkjkjkljkljlkj','local_business',19),
(2,334,'hats off','local_business',19),
(3,334,'hello','local_business',19),
(4,334,'hello next','local_business',19),
(5,334,'hhi what about us','local_business',19),
(6,334,'hi','local_business',19),
(7,334,'hkjhkjhk','local_business',19),
(8,334,'today','local_business',19),
(9,340,'jkhkjhkj','local_business',17),
(10,340,'hi','local_business',17),
(11,340,'kjhkjhkj','local_business',17),
(12,340,'bnbmnbmn','local_business',17),
(13,340,'jhkj','local_business',17);

/*Table structure for table `sales_detail` */

DROP TABLE IF EXISTS `sales_detail`;

CREATE TABLE `sales_detail` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `MIN_PAY_OUT_PER_DAY` bigint(10) DEFAULT NULL,
  `MIN_PAY_OUT` bigint(10) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `TOTAL_PRICE` bigint(10) DEFAULT NULL,
  `SHOP_ID` bigint(10) DEFAULT NULL,
  `BUSINESS_TYPE` varchar(50) DEFAULT NULL,
  `IS_ACTIVE` tinyint(1) DEFAULT '0',
  `IS_PAID` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `sales_detail` */

insert into `sales_detail` values 
(14,'till 31 May 2013 Dulha Bazar',5,NULL,'2013-12-21','2013-12-29',45,334,'local_business',0,0),
(15,'Buy latest stylist kurtis starting @Rs.299 only.Free shiping buy now.',5,NULL,'2013-12-19','2013-12-27',45,334,'local_business',0,0),
(16,'Latest 2013 summer collection.Free shiping & cash on delivery.shop now.',5,100,'2013-12-12','2013-12-27',80,334,'local_business',0,0),
(17,'Weddings are the special moments in one\'s life.The hope,joyand vigor in a wedding....',5,100,'2013-12-18','2013-12-28',55,334,'local_business',0,0),
(19,'This charcoal jacket from Fossa is perfect for chilly days or as a layer over a sweater. ',5,100,'2014-02-12','2014-03-20',185,334,'local_business',0,0),
(20,'hello next',5,100,'2014-03-05','2014-03-29',125,334,'local_business',0,0),
(21,'this is it',5,100,'2014-03-01','2014-03-31',155,334,'local_business',0,0),
(22,'hrlo',5,100,'2014-03-01','2014-03-28',140,334,'local_business',1,1),
(23,'wednesday',5,100,'2014-04-09','2014-04-30',110,334,'local_business',0,0);

/*Table structure for table `sales_detail_image` */

DROP TABLE IF EXISTS `sales_detail_image`;

CREATE TABLE `sales_detail_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) DEFAULT NULL,
  `IMAGE_PATH_BIG` varchar(255) DEFAULT NULL,
  `SALES_DETAIL_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `sales_detail_image` */

insert into `sales_detail_image` values 
(1,'/usr/local/userPhotos/SALESDETAIL/14/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/SALESDETAIL/14/1476435_558998504180050_2080544610_n.jpg',14),
(2,'/usr/local/userPhotos/SALESDETAIL/15/1455142_612410932150004_1164928356_n.jpg','/usr/local/userPhotos/Big/SALESDETAIL/15/1455142_612410932150004_1164928356_n.jpg',15),
(3,'/usr/local/userPhotos/SALESDETAIL/16/1476532_571893542883063_394917734_n.jpg','/usr/local/userPhotos/Big/SALESDETAIL/16/1476532_571893542883063_394917734_n.jpg',16),
(4,'/usr/local/userPhotos/SALESDETAIL/17/American-credit-cards.jpg','/usr/local/userPhotos/Big/SALESDETAIL/17/American-credit-cards.jpg',17),
(6,'/usr/local/userPhotos/SALESDETAIL/19/Jacket.jpeg','/usr/local/userPhotos/Big/SALESDETAIL/19/Jacket.jpeg',19),
(7,'/usr/local/userPhotos/SALESDETAIL/20/1476532_571893542883063_394917734_n.jpg','/usr/local/userPhotos/Big/SALESDETAIL/20/1476532_571893542883063_394917734_n.jpg',20),
(8,'/usr/local/userPhotos/SALESDETAIL/21/holiday-information.jpg','/usr/local/userPhotos/Big/SALESDETAIL/21/holiday-information.jpg',21),
(9,'/usr/local/userPhotos/SALESDETAIL/22/226745_213250335359976_4542807_n.jpg','/usr/local/userPhotos/Big/SALESDETAIL/22/226745_213250335359976_4542807_n.jpg',22),
(10,'/usr/local/userPhotos/SALESDETAIL/23/autumn-wallpaper-hd.jpg','/usr/local/userPhotos/Big/SALESDETAIL/23/autumn-wallpaper-hd.jpg',23);

/*Table structure for table `sales_image` */

DROP TABLE IF EXISTS `sales_image`;

CREATE TABLE `sales_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) DEFAULT NULL,
  `IMAGE_PATH_BIG` varchar(255) DEFAULT NULL,
  `SALES_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `sales_image` */

insert into `sales_image` values 
(1,'/usr/local/userPhotos/SALES/1/226745_213250335359976_4542807_n.jpg','/usr/local/userPhotos/Big/SALES/1/226745_213250335359976_4542807_n.jpg',1),
(2,'/usr/local/userPhotos/SALES/2/226745_213250335359976_4542807_n.jpg','/usr/local/userPhotos/Big/SALES/2/226745_213250335359976_4542807_n.jpg',2),
(3,'/usr/local/userPhotos/SALES/3/autumn-landscape-with-trees-1920x1080-wallpaper-11341.jpg','/usr/local/userPhotos/Big/SALES/3/autumn-landscape-with-trees-1920x1080-wallpaper-11341.jpg',3),
(4,'/usr/local/userPhotos/SALES/4/1451974_613168502074267_1569905781_s.jpg','/usr/local/userPhotos/Big/SALES/4/1451974_613168502074267_1569905781_s.jpg',4),
(5,'/usr/local/userPhotos/SALES/5/job_vacancies.png','/usr/local/userPhotos/Big/SALES/5/job_vacancies.png',5),
(6,'/usr/local/userPhotos/SALES/6/960100_371945906274477_81820131_n.jpg','/usr/local/userPhotos/Big/SALES/6/960100_371945906274477_81820131_n.jpg',6),
(7,'/usr/local/userPhotos/SALES/7/1063810_495312807211507_775072561_o.jpg','/usr/local/userPhotos/Big/SALES/7/1063810_495312807211507_775072561_o.jpg',7),
(8,'/usr/local/userPhotos/SALES/8/995421_593644664013109_1180970608_n.jpg','/usr/local/userPhotos/Big/SALES/8/995421_593644664013109_1180970608_n.jpg',8),
(9,'/usr/local/userPhotos/SALES/9/add-bgyellow.jpg','/usr/local/userPhotos/Big/SALES/9/add-bgyellow.jpg',9),
(10,'/usr/local/userPhotos/SALES/10/a.jpg','/usr/local/userPhotos/Big/SALES/10/a.jpg',10),
(11,'/usr/local/userPhotos/SALES/11/1476532_571893542883063_394917734_n.jpg','/usr/local/userPhotos/Big/SALES/11/1476532_571893542883063_394917734_n.jpg',11),
(12,'/usr/local/userPhotos/SALES/12/226745_213250335359976_4542807_n.jpg','/usr/local/userPhotos/Big/SALES/12/226745_213250335359976_4542807_n.jpg',12),
(13,'/usr/local/userPhotos/SALES/13/1471764_557221921032032_1469736954_a.jpg','/usr/local/userPhotos/Big/SALES/13/1471764_557221921032032_1469736954_a.jpg',13);

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
  `SHOP_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SALOON_ADDRESS` (`ADDRESS`),
  KEY `FK_SALOON_OWNER_ADMIN` (`OWNER_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `saloon` */

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `saloon_gallery_image` */

/*Table structure for table `saloon_image` */

DROP TABLE IF EXISTS `saloon_image`;

CREATE TABLE `saloon_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `SALOON_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SALOON_IMAGE_SALOON` (`SALOON_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `saloon_image` */

/*Table structure for table `saloon_tab` */

DROP TABLE IF EXISTS `saloon_tab`;

CREATE TABLE `saloon_tab` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` longtext NOT NULL,
  `SALOON_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SALOON_TAB_SALLON_ID` (`SALOON_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `saloon_tab` */

/*Table structure for table `saloon_tab_image` */

DROP TABLE IF EXISTS `saloon_tab_image`;

CREATE TABLE `saloon_tab_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `SALOON_TAB_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SALOON_TAB_IMAGE_SALOON_TAB` (`SALOON_TAB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `saloon_tab_image` */

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `sharee` */

insert into `sharee` values 
(1,'2013-08-02 17:30:47','2013-08-02 17:30:47','bvhsdj','bkdhfkdj 1234567890 \\][\'/.,;','','','','','','8926','INR',16),
(2,'2013-08-02 17:31:24','2013-08-02 17:31:24','tyuhjhb','njipouret 1234567890 \\][\';/.,@#$%&?\"{}|','','','','','','2569','INR',16),
(3,'2013-08-02 17:32:04','2013-08-02 17:32:04','rtyuoip','764132232 bvjsvhs @#$%&','','','','','','568310','INR',16),
(4,'2013-08-02 17:32:38','2013-08-02 17:32:38','vhskjhvs',',/\';][\\ bdkjhsdksd 1234567890','','','','','','6878','INR',16),
(5,'2013-08-02 17:33:20','2013-08-02 17:33:20','bhoprty','sdfghjkl;\'/.,[]\\','','','','','','236987','INR',16),
(6,'2013-08-02 17:34:04','2013-08-02 17:34:04','bvjsbvj','zxcvbnm,./\\][\';0987654321','','','','','','4545','INR',16),
(7,'2013-08-02 17:35:09','2013-08-02 17:35:09','bvjsckjs','1234567890[]\\\';/.,','','','','','','2565','INR',16),
(8,'2013-08-02 17:35:43','2013-08-02 17:35:43','bhope','1234567890 /\'\\][;., vuhgbj','','','','','','2056','INR',16);

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `sharee_image` */

insert into `sharee_image` values 
(1,NULL,'/usr/local/userPhotos/SHAREE/1/Designer_Saree.jpg','/usr/local/userPhotos/Big/SHAREE/1/Designer_Saree.jpg',1),
(2,NULL,'/usr/local/userPhotos/SHAREE/2/Lehenga_Saree.jpg','/usr/local/userPhotos/Big/SHAREE/2/Lehenga_Saree.jpg',2),
(3,NULL,'/usr/local/userPhotos/SHAREE/3/Party_Wear_Sarees.jpg','/usr/local/userPhotos/Big/SHAREE/3/Party_Wear_Sarees.jpg',3),
(4,NULL,'/usr/local/userPhotos/SHAREE/4/Party_Wear_Saree.jpg','/usr/local/userPhotos/Big/SHAREE/4/Party_Wear_Saree.jpg',4),
(5,NULL,'/usr/local/userPhotos/SHAREE/5/Net_Saree.gif','/usr/local/userPhotos/Big/SHAREE/5/Net_Saree.gif',5),
(6,NULL,'/usr/local/userPhotos/SHAREE/6/Bridal_Sarees.jpg','/usr/local/userPhotos/Big/SHAREE/6/Bridal_Sarees.jpg',6),
(7,NULL,'/usr/local/userPhotos/SHAREE/7/Banarasi_Saree.jpg','/usr/local/userPhotos/Big/SHAREE/7/Banarasi_Saree.jpg',7),
(8,NULL,'/usr/local/userPhotos/SHAREE/8/Default.jpg','/usr/local/userPhotos/Big/SHAREE/8/Default.jpg',8);

/*Table structure for table `shop` */

DROP TABLE IF EXISTS `shop`;

CREATE TABLE `shop` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `UPDATED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` longtext,
  `OWNER_ID` bigint(10) DEFAULT NULL,
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
  `USER_ID` bigint(10) NOT NULL,
  `TEXT_COLOR` varchar(6) DEFAULT NULL,
  `TEMPLATE_ID` int(10) DEFAULT '1',
  `STATUS` int(6) DEFAULT NULL,
  `MOBILE_NUMBER` varchar(21) DEFAULT NULL,
  `TOTAL_PRICE` int(10) DEFAULT '0',
  `IS_ACTIVE` tinyint(1) DEFAULT '0',
  `IS_PAID` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FK_SHOP_ADDRESS` (`ADDRESS`),
  KEY `FK_SHOP_SHOP_CATEGORY` (`SHOP_CATEGORY`)
) ENGINE=MyISAM AUTO_INCREMENT=344 DEFAULT CHARSET=latin1;

/*Data for the table `shop` */

insert into `shop` values 
(2,'2013-08-01 15:39:49','2013-08-01 15:39:49','Aakriti Boutique','uejgshdsbn 1254686 ,./;\'[]\\',2,NULL,0,NULL,2372,NULL,'INR',NULL,'PRODUCT',19,'FFFFFF',1,'000000',2,0,NULL,NULL,0,0);
insert into `shop` values 
(3,'2013-08-01 17:07:55','2013-08-01 17:07:55','Batra Enterprises',',./;\'[]\\@#$%&529763148 vjgugjbmj',3,NULL,0,NULL,2373,NULL,'INR',NULL,'PRODUCT',8,'FFFFFF',1,'',6,0,NULL,NULL,0,0),
(4,'2013-08-01 17:27:47','2013-08-01 17:27:47','Apsara Beauty Center','132465789 ,./;\'[]\\@#$%& vbsjhvshcuis ',4,NULL,0,NULL,2374,NULL,'INR',NULL,'PRODUCT',13,'',1,'',10,0,NULL,NULL,0,0),
(5,'2013-08-01 17:59:43','2013-08-01 17:59:43','Ajay Crocker House','bvhvudhvdfuhsduhd 785255895632 /.,;\'\\][',5,NULL,0,NULL,2375,NULL,'INR',NULL,'PRODUCT',5,'FFFFFF',1,'FFFFFF',6,0,NULL,NULL,0,0),
(6,'2013-08-01 18:17:01','2013-08-01 18:17:01','Asian Craft','1234567890 /\']\\[;., fyhgjhkj',6,NULL,0,NULL,2376,NULL,'INR',NULL,'PRODUCT',1,'FFFFFF',1,'000000',2,0,NULL,NULL,0,0),
(7,'2013-08-02 10:35:40','2013-08-02 10:35:40','Ajay Electronics','vbjhsbvjs 135465 ,.\\][\'/',7,NULL,0,NULL,2377,NULL,'INR',NULL,'PRODUCT',24,'FFFFFF',1,'000000',1,0,NULL,NULL,0,0),
(8,'2013-08-02 11:00:50','2013-08-02 11:00:50','Arora Flower House','vkjdkj 465436 ,.]\'[;',8,NULL,0,NULL,2378,NULL,'INR',NULL,'PRODUCT',12,'FFFFFF',1,'000000',6,0,NULL,NULL,0,0),
(9,'2013-08-02 11:23:35','2013-08-02 11:23:35','Adhunik Furniture','7646454 /;.,\'[]\\ fyfhvghyhv',9,NULL,0,NULL,2379,NULL,'INR',NULL,'PRODUCT',6,'FFFFFF',1,'000000',3,0,NULL,NULL,0,0),
(10,'2013-08-02 12:18:41','2013-08-02 12:18:41','Anand Fancy Store','1234567890 vhghjgbjuhujb /.,;\'\\][&%$#@',10,NULL,0,NULL,2380,NULL,'INR',NULL,'PRODUCT',26,'FFFFFF',1,'000000',10,0,NULL,NULL,0,0),
(11,'2013-08-02 12:44:19','2013-08-02 12:44:19','Arun Sanitary Stores','156456 1234567890 &%$#@',11,NULL,0,NULL,2381,NULL,'INR',NULL,'PRODUCT',3,'FFFFFF',1,'000000',8,0,NULL,NULL,0,0),
(12,'2013-08-02 13:13:35','2013-08-02 13:13:35','Arun Decorator','yhguygjh 1234567890 ]\'/.,;[\\',12,NULL,0,NULL,2382,NULL,'INR',NULL,'PRODUCT',20,'FFFFFF',1,'000000',4,0,NULL,NULL,0,0),
(13,'2013-08-02 16:13:33','2013-08-02 16:13:33','Ajay Jewellers','@#$%&,./;\'[]\\',13,NULL,0,NULL,2383,NULL,'INR',NULL,'PRODUCT',2,'FFFFFF',1,'000000',10,0,NULL,NULL,0,0),
(14,'2013-08-02 16:38:45','2013-08-02 16:38:45','Balaji Telecom','1234567890 .;[]\\\'/,&%$#@',14,NULL,0,NULL,2384,NULL,'INR',NULL,'PRODUCT',10,'FFFFFF',1,'000000',12,0,NULL,NULL,0,0),
(15,'2013-08-02 17:00:09','2013-08-02 17:00:09','Arora Optical Center','tyuioplkjhgy ,;[]\'/.\\@$%#&',15,NULL,0,NULL,2385,NULL,'INR',NULL,'PRODUCT',4,'FFFFFF',1,'000000',4,0,NULL,NULL,0,0),
(16,'2013-08-02 17:30:01','2013-08-02 17:30:01','Archana Silk','vghjhbn',16,NULL,0,NULL,2386,NULL,'INR',NULL,'PRODUCT',11,'FFFFFF',1,'000000',12,0,NULL,NULL,0,0),
(17,'2013-08-02 17:47:43','2013-08-02 17:47:43','Aggarwal Footwear','fthfgyhgyjhbn  /\']\\[;.,',17,NULL,0,NULL,2387,NULL,'INR',NULL,'PRODUCT',25,'FFFFFF',1,'000000',6,0,NULL,NULL,0,0),
(18,'2013-08-08 12:22:22','2013-08-08 12:22:22','rohan ','hsfbsdh 1111234567890 ,./;\'[]\\|}{\"?@#$%&',18,NULL,0,NULL,2388,NULL,'INR',NULL,'PRODUCT',21,'FFFFFF',1,'000000',10,0,NULL,NULL,0,0),
(19,'2013-08-08 13:47:10','2013-08-08 13:47:10','Adarsh Motors','fgtyfgyjhgbhjb ,./;\'[]\\@#$%& 1234567890',18,NULL,0,NULL,2388,NULL,'INR',NULL,'PRODUCT',23,'FFFFFF',1,'000000',6,0,NULL,NULL,0,0),
(27,'2013-08-22 13:22:42','2013-08-22 13:22:42','vikas enterprise',NULL,66,NULL,0,NULL,2432,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(28,'2013-08-22 13:24:10','2013-08-22 13:24:10','vikas enterprise',NULL,67,NULL,0,NULL,2433,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(38,'2013-08-22 16:17:18','2013-08-22 16:17:18','i',NULL,82,NULL,0,NULL,2448,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(39,'2013-08-22 16:18:47','2013-08-22 16:18:47','i',NULL,83,NULL,0,NULL,2449,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(40,'2013-08-22 16:19:35','2013-08-22 16:19:35','i',NULL,84,NULL,0,NULL,2450,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(41,'2013-08-22 16:20:03','2013-08-22 16:20:03','a',NULL,85,NULL,0,NULL,2451,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(42,'2013-08-22 16:21:13','2013-08-22 16:21:13','a',NULL,86,NULL,0,NULL,2452,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(43,'2013-08-22 16:22:13','2013-08-22 16:22:13','a',NULL,87,NULL,0,NULL,2453,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(37,'2013-08-22 16:15:27','2013-08-22 16:15:27','i',NULL,81,NULL,0,NULL,2447,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(44,'2013-08-22 16:23:10','2013-08-22 16:23:10','a',NULL,88,NULL,0,NULL,2454,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(45,'2013-08-22 16:23:54','2013-08-22 16:23:54','a',NULL,89,NULL,0,NULL,2455,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(46,'2013-08-22 16:26:19','2013-08-22 16:26:19','a',NULL,90,NULL,0,NULL,2456,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(47,'2013-08-22 16:27:42','2013-08-22 16:27:42','a',NULL,91,NULL,0,NULL,2457,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(48,'2013-08-22 16:29:12','2013-08-22 16:29:12','a',NULL,92,NULL,0,NULL,2458,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(49,'2013-08-22 16:36:51','2013-08-22 16:36:51','a',NULL,93,NULL,0,NULL,2459,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(50,'2013-08-22 16:45:04','2013-08-22 16:45:04','a',NULL,94,NULL,0,NULL,2460,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(51,'2013-08-22 16:45:33','2013-08-22 16:45:33','a',NULL,95,NULL,0,NULL,2461,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(52,'2013-08-22 16:46:01','2013-08-22 16:46:01','a',NULL,96,NULL,0,NULL,2462,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(53,'2013-08-22 16:47:06','2013-08-22 16:47:06','a',NULL,97,NULL,0,NULL,2463,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(54,'2013-08-22 16:48:26','2013-08-22 16:48:26','a',NULL,98,NULL,0,NULL,2464,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(55,'2013-08-22 16:48:50','2013-08-22 16:48:50','a',NULL,99,NULL,0,NULL,2465,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(56,'2013-08-22 16:58:48','2013-08-22 16:58:48','a',NULL,100,NULL,0,NULL,2466,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(57,'2013-08-22 17:07:58','2013-08-22 17:07:58','q',NULL,107,NULL,0,NULL,2473,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(58,'2013-08-22 17:10:21','2013-08-22 17:10:21','q',NULL,108,NULL,0,NULL,2474,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(59,'2013-08-22 17:11:05','2013-08-22 17:11:05','q',NULL,109,NULL,0,NULL,2475,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(60,'2013-08-22 17:11:54','2013-08-22 17:11:54','q',NULL,110,NULL,0,NULL,2476,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(61,'2013-08-22 17:12:29','2013-08-22 17:12:29','q',NULL,111,NULL,0,NULL,2477,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(62,'2013-08-22 17:15:35','2013-08-22 17:15:35','q',NULL,112,NULL,0,NULL,2478,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(63,'2013-08-22 17:15:51','2013-08-22 17:15:51','q',NULL,113,NULL,0,NULL,2479,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(64,'2013-08-22 17:16:18','2013-08-22 17:16:18','q',NULL,114,NULL,0,NULL,2480,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(65,'2013-08-22 17:16:22','2013-08-22 17:16:22','q',NULL,115,NULL,0,NULL,2481,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(66,'2013-08-22 17:16:36','2013-08-22 17:16:36','q',NULL,116,NULL,0,NULL,2482,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(67,'2013-08-22 17:19:03','2013-08-22 17:19:03','q',NULL,117,NULL,0,NULL,2483,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(68,'2013-08-22 17:19:42','2013-08-22 17:19:42','q',NULL,118,NULL,0,NULL,2484,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(69,'2013-08-22 17:23:19','2013-08-22 17:23:19','q',NULL,119,NULL,0,NULL,2485,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(70,'2013-08-22 17:24:02','2013-08-22 17:24:02','q',NULL,120,NULL,0,NULL,2486,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(71,'2013-08-22 17:24:30','2013-08-22 17:24:30','q',NULL,121,NULL,0,NULL,2487,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(72,'2013-08-22 17:24:52','2013-08-22 17:24:52','q',NULL,122,NULL,0,NULL,2488,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(73,'2013-08-22 17:31:27','2013-08-22 17:31:27','',NULL,123,NULL,0,NULL,2489,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(74,'2013-08-22 17:32:14','2013-08-22 17:32:14','',NULL,124,NULL,0,NULL,2490,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(75,'2013-08-22 17:33:13','2013-08-22 17:33:13','',NULL,125,NULL,0,NULL,2491,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(76,'2013-08-22 17:33:38','2013-08-22 17:33:38','',NULL,126,NULL,0,NULL,2492,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(77,'2013-08-22 17:34:07','2013-08-22 17:34:07','',NULL,127,NULL,0,NULL,2493,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(78,'2013-08-22 17:38:18','2013-08-22 17:38:18','',NULL,128,NULL,0,NULL,2494,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(79,'2013-08-22 17:44:33','2013-08-22 17:44:33','',NULL,131,NULL,0,NULL,2497,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(80,'2013-08-22 17:47:21','2013-08-22 17:47:21','',NULL,132,NULL,0,NULL,2498,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(81,'2013-08-22 17:47:41','2013-08-22 17:47:41','',NULL,133,NULL,0,NULL,2499,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(82,'2013-08-22 17:52:08','2013-08-22 17:52:08','',NULL,134,NULL,0,NULL,2500,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(83,'2013-08-22 17:53:16','2013-08-22 17:53:16','',NULL,135,NULL,0,NULL,2501,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(84,'2013-08-22 17:54:22','2013-08-22 17:54:22','',NULL,136,NULL,0,NULL,2502,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(85,'2013-08-22 17:55:29','2013-08-22 17:55:29','',NULL,137,NULL,0,NULL,2503,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(86,'2013-08-22 17:56:51','2013-08-22 17:56:51','',NULL,138,NULL,0,NULL,2504,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(87,'2013-08-22 17:56:57','2013-08-22 17:56:57','',NULL,139,NULL,0,NULL,2505,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(88,'2013-08-22 17:57:10','2013-08-22 17:57:10','',NULL,140,NULL,0,NULL,2506,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(89,'2013-08-22 18:03:42','2013-08-22 18:03:42','',NULL,141,NULL,0,NULL,2507,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(90,'2013-08-22 18:03:49','2013-08-22 18:03:49','',NULL,142,NULL,0,NULL,2508,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(91,'2013-08-22 18:04:06','2013-08-22 18:04:06','',NULL,143,NULL,0,NULL,2509,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(92,'2013-08-22 18:04:10','2013-08-22 18:04:10','',NULL,144,NULL,0,NULL,2510,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(93,'2013-08-22 18:04:16','2013-08-22 18:04:16','',NULL,145,NULL,0,NULL,2511,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(94,'2013-08-22 18:04:42','2013-08-22 18:04:42','',NULL,146,NULL,0,NULL,2512,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(95,'2013-08-22 18:07:17','2013-08-22 18:07:17','',NULL,147,NULL,0,NULL,2513,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(96,'2013-08-22 18:10:42','2013-08-22 18:10:42','',NULL,148,NULL,0,NULL,2514,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(97,'2013-08-22 18:11:46','2013-08-22 18:11:46','',NULL,149,NULL,0,NULL,2515,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(98,'2013-08-22 18:14:46','2013-08-22 18:14:46','',NULL,150,NULL,0,NULL,2516,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(99,'2013-08-22 18:15:45','2013-08-22 18:15:45','',NULL,151,NULL,0,NULL,2517,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(100,'2013-08-22 18:20:08','2013-08-22 18:20:08','',NULL,152,NULL,0,NULL,2518,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(101,'2013-08-22 18:21:08','2013-08-22 18:21:08','',NULL,153,NULL,0,NULL,2519,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(102,'2013-08-22 18:21:54','2013-08-22 18:21:54','',NULL,154,NULL,0,NULL,2520,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(103,'2013-08-22 18:22:27','2013-08-22 18:22:27','',NULL,155,NULL,0,NULL,2521,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(104,'2013-08-22 18:25:55','2013-08-22 18:25:55','',NULL,156,NULL,0,NULL,2522,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(105,'2013-08-22 18:29:53','2013-08-22 18:29:53','',NULL,157,NULL,0,NULL,2523,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(106,'2013-08-22 18:34:49','2013-08-22 18:34:49','',NULL,158,NULL,0,NULL,2524,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(107,'2013-08-22 18:37:03','2013-08-22 18:37:03','',NULL,159,NULL,0,NULL,2525,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(108,'2013-08-22 18:38:20','2013-08-22 18:38:20','',NULL,160,NULL,0,NULL,2526,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(109,'2013-08-22 18:40:07','2013-08-22 18:40:07','qwertyuiop[',NULL,161,NULL,0,NULL,2527,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(110,'2013-08-22 18:40:30','2013-08-22 18:40:30','qwertyuiop[',NULL,162,NULL,0,NULL,2528,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(111,'2013-08-22 18:41:37','2013-08-22 18:41:37','qwertyuiop[',NULL,163,NULL,0,NULL,2529,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(112,'2013-08-22 18:41:49','2013-08-22 18:41:49','wertyuiop[',NULL,164,NULL,0,NULL,2530,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(113,'2013-08-22 18:43:28','2013-08-22 18:43:28','dfghj',NULL,165,NULL,0,NULL,2531,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(114,'2013-08-22 18:47:30','2013-08-22 18:47:30','dfghj',NULL,166,NULL,0,NULL,2532,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(115,'2013-08-22 18:47:47','2013-08-22 18:47:47','qwertyuiop[',NULL,167,NULL,0,NULL,2533,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(116,'2013-08-22 18:48:30','2013-08-22 18:48:30','qwertyuiop[]\\',NULL,168,NULL,0,NULL,2534,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(117,'2013-08-22 19:00:52','2013-08-22 19:00:52','qwertyuiop[]',NULL,169,NULL,0,NULL,2535,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(118,'2013-08-22 19:09:11','2013-08-22 19:09:11','qwertyuiop[]',NULL,170,NULL,0,NULL,2536,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(119,'2013-08-22 19:09:40','2013-08-22 19:09:40','qwertyuiop[]',NULL,171,NULL,0,NULL,2537,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(120,'2013-08-22 19:10:18','2013-08-22 19:10:18','qwertyuiop[]',NULL,172,NULL,0,NULL,2538,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(121,'2013-08-22 21:06:24','2013-08-22 21:06:24','q',NULL,173,NULL,0,NULL,2539,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(122,'2013-08-22 21:07:53','2013-08-22 21:07:53','b',NULL,174,NULL,0,NULL,2540,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(123,'2013-08-22 21:11:21','2013-08-22 21:11:21','',NULL,175,NULL,0,NULL,2541,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(124,'2013-08-22 21:14:19','2013-08-22 21:14:19','',NULL,176,NULL,0,NULL,2542,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(125,'2013-08-22 21:15:03','2013-08-22 21:15:03','',NULL,177,NULL,0,NULL,2543,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(126,'2013-08-22 21:15:03','2013-08-22 21:15:03','',NULL,178,NULL,0,NULL,2544,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(127,'2013-08-22 21:16:01','2013-08-22 21:16:01','',NULL,179,NULL,0,NULL,2545,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(128,'2013-08-22 21:16:10','2013-08-22 21:16:10','',NULL,180,NULL,0,NULL,2546,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(129,'2013-08-22 21:16:24','2013-08-22 21:16:24','',NULL,181,NULL,0,NULL,2547,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(130,'2013-08-22 21:17:38','2013-08-22 21:17:38','',NULL,182,NULL,0,NULL,2548,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(131,'2013-08-22 21:18:28','2013-08-22 21:18:28','',NULL,183,NULL,0,NULL,2549,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(132,'2013-08-22 21:19:29','2013-08-22 21:19:29','',NULL,184,NULL,0,NULL,2550,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(133,'2013-08-22 21:21:05','2013-08-22 21:21:05','',NULL,185,NULL,0,NULL,2551,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(134,'2013-08-22 21:23:35','2013-08-22 21:23:35','asdfhk;',NULL,186,NULL,0,NULL,2552,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(135,'2013-08-22 21:25:08','2013-08-22 21:25:08','asdfhk;',NULL,187,NULL,0,NULL,2553,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(136,'2013-08-22 21:31:44','2013-08-22 21:31:44','',NULL,188,NULL,0,NULL,2554,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(137,'2013-08-22 21:33:17','2013-08-22 21:33:17','',NULL,189,NULL,0,NULL,2555,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(138,'2013-08-22 22:13:58','2013-08-22 22:13:58','',NULL,190,NULL,0,NULL,2556,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(139,'2013-08-22 22:23:03','2013-08-22 22:23:03','',NULL,191,NULL,0,NULL,2557,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(140,'2013-08-22 22:39:27','2013-08-22 22:39:27','c',NULL,192,NULL,0,NULL,2558,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(141,'2013-08-22 22:44:06','2013-08-22 22:44:06','asdfghjk',NULL,193,NULL,0,NULL,2559,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(142,'2013-08-22 22:46:26','2013-08-22 22:46:26','vikas enterprise',NULL,194,NULL,0,NULL,2560,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(143,'2013-08-22 22:54:54','2013-08-22 22:54:54','c',NULL,195,NULL,0,NULL,2561,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(144,'2013-08-22 22:58:04','2013-08-22 22:58:04','',NULL,196,NULL,0,NULL,2562,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(145,'2013-08-22 23:03:07','2013-08-22 23:03:07','',NULL,197,NULL,0,NULL,2563,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(146,'2013-08-22 23:11:04','2013-08-22 23:11:04','k',NULL,198,NULL,0,NULL,2564,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(147,'2013-08-22 23:13:19','2013-08-22 23:13:19','o',NULL,199,NULL,0,NULL,2565,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(148,'2013-08-22 23:16:14','2013-08-22 23:16:14','o',NULL,200,NULL,0,NULL,2566,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(149,'2013-08-22 23:43:02','2013-08-22 23:43:02','',NULL,201,NULL,0,NULL,2567,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(150,'2013-08-23 10:06:54','2013-08-23 10:06:54','',NULL,202,NULL,0,NULL,2568,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(151,'2013-08-23 10:07:55','2013-08-23 10:07:55','qwertyuio',NULL,203,NULL,0,NULL,2569,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(152,'2013-08-23 10:11:28','2013-08-23 10:11:28','','',204,NULL,0,NULL,2570,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(153,'2013-08-23 10:14:46','2013-08-23 10:14:46','c','<p>qwertyuiop[asdfghjkl;</p>',205,NULL,0,NULL,2571,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(154,'2013-08-23 10:29:16','2013-08-23 10:29:16','vikas enterprise','<p>‡§Æ‡•Å‡§Ç‡§¨‡§à: ‡§≠‡§æ‡§∞‡§§‡•Ä‡§Ø ‡§ï‡•ç‡§∞‡§ø‡§ï‡•á‡§ü ‡§¨‡•ã‡§∞‡•ç‡§° ‡§ï‡•Ä ‡§µ‡§ø‡§§‡•ç‡§§‡•Ä‡§Ø ‡§µ‡§∞‡•ç‡§∑ 2012-13 ‡§Æ‡•á‡§Ç ‡§ï‡•Å‡§≤ ‡§Ü‡§Ø 350 ‡§ï‡§∞‡•ã‡§°‡§º ‡§∞‡•Å‡§™‡§Ø‡•á ‡§ú‡§¨‡§ï‡§ø ‡§â‡§∏‡§ï‡§æ ‡§∏‡§ï‡§≤ ‡§∞‡§æ‡§ú‡§∏‡•ç‡§µ 950 ‡§ï‡§∞‡•ã‡§°‡§º ‡§∞‡•Å‡§™‡§Ø‡•á ‡§∞‡§π‡§æ‡•§ ‡§¶‡•Å‡§®‡§ø‡§Ø‡§æ ‡§ï‡§æ ‡§∏‡§¨‡§∏‡•á ‡§ß‡§®‡•Ä ‡§ï‡•ç‡§∞‡§ø‡§ï‡•á‡§ü ‡§¨‡•ã‡§∞‡•ç‡§° ‡§Æ‡§æ‡§®‡•á ‡§ú‡§æ‡§®‡•á ‡§µ‡§æ‡§≤‡•á ‡§¨‡•Ä‡§∏‡•Ä‡§∏‡•Ä‡§Ü‡§à ‡§®‡•á 2011-12 ‡§Æ‡•á‡§Ç 382.36 ‡§ï‡§∞‡•ã‡§°‡§º ‡§∞‡•Å‡§™‡§Ø‡•á ‡§ï‡§æ ‡§≤‡§æ‡§≠ ‡§ï‡§Æ‡§æ‡§Ø‡§æ‡•§ ‡§¨‡•Ä‡§∏‡•Ä‡§∏‡•Ä‡§Ü‡§à ‡§µ‡§ø‡§§‡•ç‡§§‡•Ä‡§Ø ‡§∏‡§Æ‡§ø‡§§‡§ø ‡§ï‡•Ä ‡§¶‡§ø‡§≤‡•ç‡§≤‡•Ä ‡§Æ‡•á‡§Ç ‡§¨‡•à‡§†‡§ï ‡§ï‡•á ‡§¨‡§æ‡§¶ ‡§¨‡•ã‡§∞‡•ç‡§° ‡§ï‡•á ‡§ï‡•ã‡§∑‡§æ‡§ß‡•ç‡§Ø‡§ï‡•ç‡§∑ ‡§∞‡§µ‡§ø ‡§∏‡§æ‡§µ‡§Ç‡§§ ‡§®‡•á ‡§ï‡§π‡§æ ‡§ï‡§ø ‡§ï‡•Å‡§≤ ‡§Ü‡§Ø ‡§ï‡•Ä ‡§∞‡§æ‡§∂‡§ø ‡§á‡§∏ ‡§§‡§∞‡§π ‡§∏‡•á ‡§®‡§ø‡§ï‡§æ‡§≤‡•Ä ‡§ó‡§à ‡§π‡•à ‡§ï‡§ø ‡§â‡§∏ ‡§™‡§∞ ‡§ï‡§ø‡§∏‡•Ä ‡§§‡§∞‡§π ‡§ï‡•á ‡§ï‡§∞ ‡§ï‡§æ ‡§≠‡•Å‡§ó‡§§‡§æ‡§® ‡§®‡§π‡•Ä‡§Ç ‡§ï‡§∞‡§®‡§æ ‡§π‡•à‡•§ ‡§â‡§®‡•ç‡§π‡•ã‡§Ç‡§®‡•á ‡§ï‡§π‡§æ, \'\'‡§µ‡§ø‡§§‡•ç‡§§ ‡§∏‡§Æ‡§ø‡§§‡§ø ‡§®‡•á ‡§ñ‡§æ‡§§‡•ã‡§Ç ‡§ï‡•ã ‡§Æ‡§Ç‡§ú‡•Ç‡§∞‡•Ä ‡§¶‡•Ä ‡§î‡§∞ ‡§â‡§®‡•ç‡§π‡•á‡§Ç ‡§¨‡•ã‡§∞‡•ç‡§° ‡§ï‡•Ä ‡§ï‡§æ‡§∞‡•ç‡§Ø‡§ï‡§æ‡§∞‡§ø‡§£‡•Ä ‡§ï‡•á ‡§∏‡§Æ‡§ï‡•ç‡§∑ ‡§∞‡§ñ‡§æ ‡§ú‡§æ‡§è‡§ó‡§æ‡•§ ‡§â‡§∏‡§ï‡•Ä ‡§∏‡§ø‡§§‡§Ç‡§¨‡§∞ ‡§ï‡•á ‡§™‡§π‡§≤‡•á ‡§∏‡§™‡•ç‡§§‡§æ‡§π ‡§Æ‡•á‡§Ç ‡§¨‡•à‡§†‡§ï ‡§π‡•ã‡§®‡•Ä ‡§ö‡§æ‡§π‡§ø‡§è‡•§\'\' ‡§ï‡§æ‡§∞‡•ç‡§Ø‡§ï‡§æ‡§∞‡§ø‡§£‡•Ä ‡§¨‡•ã‡§∞‡•ç‡§°&nbsp;<strong>...</strong></p>',206,NULL,0,NULL,2572,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(155,'2013-08-23 13:01:29','2013-08-23 13:01:29','c','',207,NULL,0,NULL,2573,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(156,'2013-08-23 13:24:45','2013-08-23 13:24:45','vikas enterprise',NULL,209,NULL,0,NULL,2575,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(157,'2013-08-23 13:42:48','2013-08-23 13:42:48','vikas enterprise',NULL,210,NULL,0,NULL,2576,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(158,'2013-08-23 15:02:23','2013-08-23 15:02:23','Vijay singh bisht01','vijay singh bisht',211,NULL,0,NULL,2577,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(159,'2013-08-23 15:15:25','2013-08-23 15:15:25','vij',NULL,216,NULL,0,NULL,2582,NULL,'INR',NULL,'PRODUCT',26,NULL,1,NULL,1,0,NULL,NULL,0,0),
(160,'2013-08-23 16:09:32','2013-08-23 16:09:32','book bussiness',NULL,221,NULL,0,NULL,2586,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(161,'2013-08-23 16:14:40','2013-08-23 16:14:40','book bussiness',NULL,225,NULL,0,NULL,2590,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(162,'2013-08-23 16:16:09','2013-08-23 16:16:09','book bussiness','werty',227,NULL,0,NULL,2592,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(163,'2013-08-23 16:27:46','2013-08-23 16:27:46','local shop','qwertyui',228,NULL,0,NULL,2593,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(164,'2013-08-23 16:57:44','2013-08-23 16:57:44','book bussiness',NULL,232,NULL,0,NULL,2597,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(165,'2013-08-23 17:00:17','2013-08-23 17:00:17','book bussiness',NULL,235,NULL,0,NULL,2600,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(166,'2013-08-23 17:10:04','2013-08-23 17:10:04','vikas enterprise',NULL,0,NULL,0,NULL,2610,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(167,'2013-08-23 17:30:49','2013-08-23 17:30:49','vikas enterprise','qwertyuiop[',0,NULL,0,NULL,249,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(168,'2013-08-23 17:37:25','2013-08-23 17:37:25','vikas enterprise','qwertyuiop[',0,NULL,0,NULL,267,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(169,'2013-08-23 17:41:17','2013-08-23 17:41:17','vikas enterprise',NULL,0,NULL,0,NULL,2646,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(170,'2013-08-23 17:41:20','2013-08-23 17:41:20','vikas enterprise',NULL,0,NULL,0,NULL,2647,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(171,'2013-08-23 17:51:38','2013-08-23 17:51:38','vikas enterprise','wertyuio',0,NULL,0,NULL,273,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(172,'2013-08-23 17:54:24','2013-08-23 17:54:24','vikas enterprise',NULL,0,NULL,0,NULL,2655,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(173,'2013-08-23 18:30:44','2013-08-23 18:30:44','vikas enterprise','qwertyui',0,NULL,0,NULL,295,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(174,'2013-08-23 19:02:53','2013-08-23 19:02:53','vikas enterprise','qwertyuiop',317,NULL,0,NULL,2701,NULL,'INR',NULL,'PRODUCT',13,NULL,1,NULL,1,0,NULL,NULL,0,0),
(175,'2013-08-23 19:03:13','2013-08-23 19:03:13','vikas enterprise','qwertyuiop',318,NULL,0,NULL,2702,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(176,'2013-08-23 19:07:20','2013-08-23 19:07:20','new',NULL,0,NULL,0,NULL,2705,NULL,'INR',NULL,'PRODUCT',3,NULL,1,NULL,1,0,NULL,NULL,0,0),
(177,'2013-08-23 19:07:26','2013-08-23 19:07:26','new',NULL,0,NULL,0,NULL,2706,NULL,'INR',NULL,'PRODUCT',3,NULL,1,NULL,1,0,NULL,NULL,0,0),
(178,'2013-08-23 19:08:04','2013-08-23 19:08:04','new',NULL,0,NULL,0,NULL,2707,NULL,'INR',NULL,'PRODUCT',3,NULL,1,NULL,1,0,NULL,NULL,0,0),
(179,'2013-08-23 19:08:59','2013-08-23 19:08:59','new','qwertyuiop[]',319,NULL,0,NULL,2708,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(180,'2013-08-23 20:38:55','2013-08-23 20:38:55','vikas ','Web Address in Myby4u',0,NULL,0,NULL,2709,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL,NULL,0,0),
(181,'2013-08-23 20:40:17','2013-08-23 20:40:17','vikas ','Web Address in Myby4u',320,NULL,0,NULL,2710,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(182,'2013-08-23 20:42:25','2013-08-23 20:42:25','vikas ','Web Address in Myby4u',321,NULL,0,NULL,2711,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(183,'2013-08-23 20:47:16','2013-08-23 20:47:16','vikas ','Web Address in Myby4u',322,NULL,0,NULL,2712,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(184,'2013-08-23 20:47:58','2013-08-23 20:47:58','vikas ','Web Address in Myby4u',323,NULL,0,NULL,2713,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(185,'2013-08-23 20:52:24','2013-08-23 20:52:24','vikas enterprise','asdfghj',0,NULL,0,NULL,2714,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(186,'2013-08-23 21:10:28','2013-08-23 21:10:28','vikas enterprise','asdfghj',326,NULL,0,NULL,2717,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(187,'2013-08-23 21:10:57','2013-08-23 21:10:57','vikas enterprise','asdfghj',327,NULL,0,NULL,2718,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL,NULL,0,0),
(188,'2013-08-23 21:14:52','2013-08-23 21:14:52','saloon','saloon\r\nsaloon\r\nsaloon',330,NULL,0,NULL,2722,NULL,'INR',NULL,'PRODUCT',18,NULL,1,NULL,1,0,NULL,NULL,0,0),
(189,'2013-08-23 21:32:26','2013-08-23 21:32:26','vikas enterprise','fghjkl',335,NULL,0,NULL,2729,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(190,'2013-08-24 10:35:57','2013-08-24 10:35:57','book bussiness','qwertyui',336,NULL,0,NULL,2732,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(191,'2013-08-24 10:42:37','2013-08-24 10:42:37','vikas enterprise','qwertyuio',337,NULL,0,NULL,2734,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(192,'2013-08-24 10:56:29','2013-08-24 10:56:29','book bussiness',NULL,0,NULL,0,NULL,2735,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(193,'2013-08-24 11:08:42','2013-08-24 11:08:42','vikas enterprise','asdfghjk',0,NULL,0,NULL,2737,NULL,'INR',NULL,'PRODUCT',20,NULL,1,NULL,1,0,NULL,NULL,0,0),
(194,'2013-08-24 11:38:04','2013-08-24 11:38:04','hello',NULL,0,NULL,0,NULL,2741,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL,NULL,0,0),
(195,'2013-08-24 11:48:47','2013-08-24 11:48:47','vikas enterprise',NULL,0,NULL,0,NULL,2746,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL,NULL,0,0),
(196,'2013-08-24 11:49:54','2013-08-24 11:49:54','qqqq',NULL,0,NULL,0,NULL,2748,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(197,'2013-08-24 12:02:14','2013-08-24 12:02:14','qqqq','qwertyu',362,NULL,0,NULL,2749,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(198,'2013-08-24 12:30:27','2013-08-24 12:30:27','god','asdfghjkl;',369,NULL,0,NULL,2752,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(199,'2013-08-24 13:43:45','2013-08-24 13:43:45','raw','updateasdfghjkl;',0,NULL,0,NULL,2753,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(200,'2013-08-24 13:48:18','2013-08-24 13:48:18','qwertyuio',NULL,0,NULL,0,NULL,2754,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL,NULL,0,0),
(201,'2013-08-24 13:51:13','2013-08-24 13:51:13','qwertyuio',NULL,0,NULL,0,NULL,2755,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL,NULL,0,0),
(202,'2013-08-24 13:51:50','2013-08-24 13:51:50','qwertyuio',NULL,0,NULL,0,NULL,2756,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL,NULL,0,0),
(203,'2013-08-24 13:51:53','2013-08-24 13:51:53','qwertyuio',NULL,0,NULL,0,NULL,2757,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL,NULL,0,0),
(204,'2013-08-24 13:52:23','2013-08-24 13:52:23','qwertyuio',NULL,0,NULL,0,NULL,2758,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL,NULL,0,0),
(205,'2013-08-24 13:52:43','2013-08-24 13:52:43','qwertyuio',NULL,0,NULL,0,NULL,2759,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL,NULL,0,0),
(206,'2013-08-24 13:52:46','2013-08-24 13:52:46','qwertyuio',NULL,0,NULL,0,NULL,2760,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL,NULL,0,0),
(207,'2013-08-24 13:53:27','2013-08-24 13:53:27','qwertyuio',NULL,0,NULL,0,NULL,2761,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL,NULL,0,0),
(208,'2013-08-24 13:55:50','2013-08-24 13:55:50','qwertyuio',NULL,426,NULL,0,NULL,2762,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL,NULL,0,0),
(209,'2013-08-24 14:02:51','2013-08-24 14:02:51','qwertyuio','qwertyuiop[]',0,NULL,0,NULL,2763,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL,NULL,0,0),
(210,'2013-08-24 14:03:17','2013-08-24 14:03:17','vikas enterprise',NULL,435,NULL,0,NULL,2764,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(211,'2013-08-24 14:07:39','2013-08-24 14:07:39','vikas enterprise','qwertyuio',0,NULL,0,NULL,2765,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(212,'2013-08-24 14:46:58','2013-08-24 14:46:58','vikas enterprise',NULL,443,NULL,0,NULL,2766,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(213,'2013-08-24 14:48:50','2013-08-24 14:48:50','vikas enterprise','sdfghjkl;\'',0,NULL,0,NULL,2767,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(214,'2013-08-24 14:57:24','2013-08-24 14:57:24','vikas enterprise',NULL,0,NULL,0,NULL,2768,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL,NULL,0,0),
(215,'2013-08-24 15:02:44','2013-08-24 15:02:44','vikas enterprise','asdghjkl;\'',0,NULL,0,NULL,2769,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL,NULL,0,0),
(216,'2013-08-24 15:13:25','2013-08-24 15:13:25','vikas enterprise','hk\r\nsdfghjkl;\'\r\n',456,NULL,0,NULL,2770,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(217,'2013-08-24 15:27:14','2013-08-24 15:27:14','book bussiness','wertuoasdfghjkl;\'\r\n',469,NULL,0,NULL,2771,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(218,'2013-08-24 15:35:41','2013-08-24 15:35:41','vikas enterprise','city wallpaper',2772,NULL,0,NULL,470,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(219,'2013-08-24 15:44:30','2013-08-24 15:44:30','vikas enterprise',NULL,480,NULL,0,NULL,2782,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(220,'2013-08-24 15:46:48','2013-08-24 15:46:48','vikas enterprise',NULL,481,NULL,0,NULL,2783,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(221,'2013-08-24 15:46:50','2013-08-24 15:46:50','vikas enterprise',NULL,482,NULL,0,NULL,2784,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(222,'2013-08-24 15:47:20','2013-08-24 15:47:20','vikas enterprise',NULL,483,NULL,0,NULL,2785,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(223,'2013-08-24 15:48:42','2013-08-24 15:48:42','vikas enterprise',NULL,484,NULL,0,NULL,2786,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(224,'2013-08-24 15:48:45','2013-08-24 15:48:45','vikas enterprise',NULL,485,NULL,0,NULL,2787,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(225,'2013-08-24 15:48:59','2013-08-24 15:48:59','vikas enterprise',NULL,486,NULL,0,NULL,2788,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(226,'2013-08-24 15:49:35','2013-08-24 15:49:35','vikas enterprise',NULL,487,NULL,0,NULL,2789,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(227,'2013-08-24 15:51:15','2013-08-24 15:51:15','vikas enterprise',NULL,488,NULL,0,NULL,2790,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(228,'2013-08-24 15:51:53','2013-08-24 15:51:53','vikas enterprise','qwertyuiop',2791,NULL,0,NULL,489,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(229,'2013-08-24 15:57:55','2013-08-24 15:57:55','weryi','asdfghjkl;',490,NULL,0,NULL,2792,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(230,'2013-08-25 10:39:50','2013-08-25 10:39:50','book bussiness','<p>asdfghjkl;\'</p>',491,NULL,0,NULL,2793,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(231,'2013-08-24 16:17:58','2013-08-24 16:17:58','sdfgh',NULL,497,NULL,0,NULL,2799,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(232,'2013-08-24 16:26:24','2013-08-24 16:26:24','vikas enterprise','asdfghj',503,NULL,0,NULL,2805,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(233,'2013-08-25 10:51:03','2013-08-25 10:51:03','vikas enterprise','asdfghjkasdfghjkl;\'\r\n\r\nasdfghjkl;\'',509,NULL,0,NULL,2811,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(234,'2013-08-28 09:59:47','2013-08-28 09:59:47','asdfghj','bbbbbb',570,NULL,0,NULL,2873,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(235,'2013-08-26 13:39:22','2013-08-26 13:39:22','asdfghj',NULL,571,NULL,0,NULL,2874,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(236,'2013-08-26 13:40:28','2013-08-26 13:40:28','asdfghj',NULL,572,NULL,0,NULL,2875,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(237,'2013-08-26 13:41:23','2013-08-26 13:41:23','asdfghj',NULL,573,NULL,0,NULL,2876,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(238,'2013-08-26 13:41:42','2013-08-26 13:41:42','',NULL,574,NULL,0,NULL,2877,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(239,'2013-08-26 13:45:17','2013-08-26 13:45:17','asdfghj',NULL,575,NULL,0,NULL,2878,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(240,'2013-08-26 13:55:08','2013-08-26 13:55:08','qwert',NULL,576,NULL,0,NULL,2879,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(241,'2013-08-26 14:07:01','2013-08-26 14:07:01','qwert',NULL,577,NULL,0,NULL,2880,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL,NULL,0,0),
(242,'2013-08-26 15:02:58','2013-08-26 15:02:58','aiuytrew',NULL,578,NULL,0,NULL,2881,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(243,'2013-08-26 15:04:33','2013-08-26 15:04:33','asdfgh',NULL,579,NULL,0,NULL,2882,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL,NULL,0,0),
(244,'2013-08-26 20:53:18','2013-08-26 20:53:18','ttroy','poiuytrewqazxcghjkl;/mnbvcx',588,NULL,0,NULL,2894,NULL,'INR',NULL,'PRODUCT',1,NULL,1,NULL,1,0,NULL,NULL,0,0),
(245,'2013-08-27 10:19:41','2013-08-27 10:19:41','asdfghj','',592,NULL,0,NULL,2911,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(246,'2013-08-28 23:01:49','2013-08-28 23:01:49','event_or_place_details','event_or_place_detailsevent_or_place_detailsevent_or_place_detailsevent_or_place_detailsevent_or_place_detailsevent_or_place_detailsevent_or_place_detailsevent_or_place_detailsevent_or_place_detailsevent_or_place_detailsevent_or_place_detailsv',596,NULL,0,NULL,3011,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(247,'2013-09-10 11:50:28','2013-09-10 11:50:28','asdfghj','asdfgh',599,NULL,0,NULL,3021,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(248,'2013-09-10 11:58:27','2013-09-10 11:58:27','vikas',NULL,600,NULL,0,NULL,3022,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(249,'2013-09-11 20:09:50','2013-09-11 20:09:50','djfkhal',NULL,603,NULL,0,NULL,3025,NULL,'INR',NULL,'PRODUCT',9,NULL,1,NULL,1,0,NULL,NULL,0,0),
(250,'2013-09-11 20:09:54','2013-09-11 20:09:54','djfkhal',NULL,604,NULL,0,NULL,3026,NULL,'INR',NULL,'PRODUCT',9,NULL,1,NULL,1,0,NULL,NULL,0,0),
(251,'2013-09-11 20:10:06','2013-09-11 20:10:06','djfkhal',NULL,605,NULL,0,NULL,3027,NULL,'INR',NULL,'PRODUCT',9,NULL,1,NULL,1,0,NULL,NULL,0,0),
(252,'2013-09-11 20:10:27','2013-09-11 20:10:27','djfkhal',NULL,606,NULL,0,NULL,3028,NULL,'INR',NULL,'PRODUCT',9,NULL,1,NULL,1,0,NULL,NULL,0,0),
(253,'2013-09-11 20:19:40','2013-09-11 20:19:40','lgjhg',NULL,607,NULL,0,NULL,3029,NULL,'INR',NULL,'PRODUCT',6,NULL,1,NULL,1,0,NULL,NULL,0,0),
(254,'2013-09-11 22:40:26','2013-09-11 22:40:26','hgjh','qwert',608,NULL,0,NULL,3030,NULL,'INR',NULL,'PRODUCT',13,NULL,1,NULL,1,0,NULL,NULL,0,0),
(255,'2013-09-11 22:22:46','2013-09-11 22:22:46','sdfg',NULL,609,NULL,0,NULL,3034,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(256,'2013-09-11 22:41:05','2013-09-11 22:41:05','ffhghf',NULL,610,NULL,0,NULL,3035,NULL,'INR',NULL,'PRODUCT',5,NULL,1,NULL,1,0,NULL,NULL,0,0),
(257,'2013-09-11 22:53:24','2013-09-11 22:53:24','hjgh45655',NULL,611,NULL,0,NULL,3037,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(258,'2013-09-12 10:04:10','2013-09-12 10:04:10','ertyu',NULL,612,NULL,0,NULL,3038,NULL,'INR',NULL,'PRODUCT',5,NULL,1,NULL,1,0,NULL,NULL,0,0),
(259,'2013-09-12 11:03:10','2013-09-12 11:03:10','gyutv','qwert',613,NULL,0,NULL,3039,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL,NULL,0,0),
(260,'2013-09-12 11:32:43','2013-09-12 11:32:43','eqeweq',NULL,614,NULL,0,NULL,3040,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(261,'2013-09-12 11:47:46','2013-09-12 11:47:46','www',NULL,615,NULL,0,NULL,3041,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(262,'2013-09-12 12:31:20','2013-09-12 12:31:20','asdfghj',NULL,616,NULL,0,NULL,3042,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(263,'2013-09-12 12:35:14','2013-09-12 12:35:14','asdfghj',NULL,617,NULL,0,NULL,3043,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(264,'2013-09-12 15:40:59','2013-09-12 15:40:59','asdfghj','asdfgh',618,NULL,0,NULL,3044,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(265,'2013-09-12 12:50:22','2013-09-12 12:50:22','asdfghj',NULL,619,NULL,0,NULL,3045,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(266,'2013-09-12 12:55:50','2013-09-12 12:55:50','asdfghj',NULL,620,NULL,0,NULL,3046,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(267,'2013-09-12 13:24:58','2013-09-12 13:24:58','hhh',NULL,621,NULL,0,NULL,3047,NULL,'INR',NULL,'PRODUCT',9,NULL,1,NULL,1,0,NULL,NULL,0,0),
(268,'2013-09-12 13:29:10','2013-09-12 13:29:10','aaaaa',NULL,622,NULL,0,NULL,3048,NULL,'INR',NULL,'PRODUCT',18,NULL,1,NULL,1,0,NULL,NULL,0,0),
(269,'2013-09-12 13:59:30','2013-09-12 13:59:30','qwer-',NULL,623,NULL,0,NULL,3049,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL,NULL,0,0),
(270,'2013-09-12 14:02:56','2013-09-12 14:02:56','qwer-',NULL,624,NULL,0,NULL,3050,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL,NULL,0,0),
(271,'2013-09-12 14:03:01','2013-09-12 14:03:01','qwer-',NULL,625,NULL,0,NULL,3051,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL,NULL,0,0),
(272,'2013-09-12 14:03:06','2013-09-12 14:03:06','qwer123456',NULL,626,NULL,0,NULL,3052,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL,NULL,0,0),
(273,'2013-09-12 14:26:58','2013-09-12 14:26:58','asdfghj','ssssssssss',627,NULL,0,NULL,3053,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(274,'2013-09-12 15:48:23','2013-09-12 15:48:23','asdfghj','bbb',628,NULL,0,NULL,3054,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(275,'2013-09-12 16:07:18','2013-09-12 16:07:18','asdfghj',NULL,629,NULL,0,NULL,3055,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(276,'2013-09-12 17:16:26','2013-09-12 17:16:26','qwer-',NULL,630,NULL,0,NULL,3056,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(277,'2013-09-12 17:47:29','2013-09-12 17:47:29','asdf',NULL,631,NULL,0,NULL,3057,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(278,'2013-09-12 18:10:04','2013-09-12 18:10:04','asdfghj',NULL,632,NULL,0,NULL,3058,NULL,'INR',NULL,'PRODUCT',10,NULL,1,NULL,1,0,NULL,NULL,0,0),
(279,'2013-09-12 20:12:57','2013-09-12 20:12:57','aaaa','dfghj',633,NULL,0,NULL,3059,NULL,'INR',NULL,'PRODUCT',9,NULL,1,NULL,1,0,NULL,NULL,0,0),
(280,'2013-09-13 10:00:18','2013-09-13 10:00:18','qwerty',NULL,635,NULL,0,NULL,3061,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(281,'2013-09-13 11:02:41','2013-09-13 11:02:41','asdfghj',NULL,636,NULL,0,NULL,3062,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(282,'2013-09-13 11:06:59','2013-09-13 11:06:59','test',NULL,637,NULL,0,NULL,3063,NULL,'INR',NULL,'PRODUCT',13,NULL,1,NULL,1,0,NULL,NULL,0,0),
(283,'2013-09-13 11:13:45','2013-09-13 11:13:45','gyutv',NULL,638,NULL,0,NULL,3064,NULL,'INR',NULL,'PRODUCT',10,NULL,1,NULL,1,0,NULL,NULL,0,0),
(284,'2013-09-13 11:21:37','2013-09-13 11:21:37','asdfghj',NULL,639,NULL,0,NULL,3065,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(285,'2013-09-13 11:27:41','2013-09-13 11:27:41','asdfghj',NULL,640,NULL,0,NULL,3066,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(286,'2013-09-13 11:46:23','2013-09-13 11:46:23','asdfghj',NULL,641,NULL,0,NULL,3067,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(287,'2013-09-13 14:05:22','2013-09-13 14:05:22','111','tttttt',642,NULL,0,NULL,3068,NULL,'INR',NULL,'PRODUCT',3,NULL,1,NULL,1,0,NULL,NULL,0,0),
(288,'2013-09-13 13:28:07','2013-09-13 13:28:07','123','asdfgh',643,NULL,0,NULL,3069,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(289,'2013-09-13 15:55:40','2013-09-13 15:55:40','asdfghj',' ',644,NULL,0,NULL,3070,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(290,'2013-09-13 15:56:18','2013-09-13 15:56:18','asdfghj',NULL,645,NULL,0,NULL,3071,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(291,'2013-09-13 21:10:03','2013-09-13 21:10:03','11','asdfghj',646,NULL,0,NULL,3072,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(292,'2013-09-14 13:26:16','2013-09-14 13:26:16','hello','<p>qwertyuiop[asdfghjkl;xcvbnm,.</p>',647,NULL,0,NULL,3073,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL,NULL,0,0),
(293,'2013-09-16 11:12:32','2013-09-16 11:12:32','asdfghjk','asdfghj',648,NULL,0,NULL,3074,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(327,'2013-11-28 16:31:16','2013-11-28 16:31:16','quort','hello this is test',725,NULL,0,NULL,3209,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(294,'2013-09-17 18:13:23','2013-09-17 18:13:23','aa','asdfghjkl;\'\r\nasdfghjkl;\'\r\n',651,NULL,0,NULL,3083,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(295,'2013-09-18 11:13:23','2013-09-18 11:13:23','111111111','ttttttt',653,NULL,0,NULL,3087,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(296,'2013-09-18 11:16:58','2013-09-18 11:16:58','1111','www',654,NULL,0,NULL,3088,NULL,'INR',NULL,'PRODUCT',22,NULL,1,NULL,1,0,NULL,NULL,0,0),
(297,'2013-09-18 18:10:05','2013-09-18 18:10:05','hh','bbbb',656,NULL,0,NULL,3125,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(298,'2013-09-18 18:33:23','2013-09-18 18:33:23','bb',NULL,658,NULL,0,NULL,3128,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(299,'2013-09-18 20:26:22','2013-09-18 20:26:22','n',' nnn',659,NULL,0,NULL,3129,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL,NULL,0,0),
(300,'2013-09-19 16:16:42','2013-09-19 16:16:42','hhggh','ddd',660,NULL,0,NULL,3130,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(301,'2013-09-23 13:46:18','2013-09-23 13:46:18','hjkhjh','jkhjhjkhjk',661,NULL,0,NULL,3131,NULL,'INR',NULL,'PRODUCT',6,NULL,1,NULL,1,0,NULL,NULL,0,0),
(302,'2013-09-23 14:01:23','2013-09-23 14:01:23','ghjgjhg','hjgjhgjh',662,NULL,0,NULL,3132,NULL,'INR',NULL,'PRODUCT',3,NULL,1,NULL,1,0,NULL,NULL,0,0),
(303,'2013-09-24 12:51:15','2013-09-24 12:51:15','teertrte','hgfhgfh',663,NULL,0,NULL,3133,NULL,'INR',NULL,'PRODUCT',6,NULL,1,NULL,1,0,NULL,NULL,0,0),
(304,'2013-09-25 15:14:09','2013-09-25 15:14:09','ATRA BOOK DEPO','ALL BOOKS ARE AVAILABLE',664,NULL,0,NULL,3134,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(305,'2013-09-26 17:45:39','2013-09-26 17:45:39','gjh','jkhkjhjhjkhk',665,NULL,0,NULL,3135,NULL,'INR',NULL,'PRODUCT',1,NULL,1,NULL,1,0,NULL,NULL,0,0),
(306,'2013-09-26 22:42:31','2013-09-26 22:42:31','jkjjjkjkjkjk','kjjjkjkjkjkjkjk',666,NULL,0,NULL,3136,NULL,'INR',NULL,'PRODUCT',1,NULL,1,NULL,1,0,NULL,NULL,0,0),
(307,'2013-09-26 22:57:02','2013-09-26 22:57:02','jkjkjjk','hjhjhjgffgfgsdsddssdssdsd',667,NULL,0,NULL,3137,NULL,'INR',NULL,'PRODUCT',3,NULL,1,NULL,1,0,NULL,NULL,0,0),
(308,'2013-09-27 10:59:09','2013-09-27 10:59:09','hjhjhjhj','hjhfggfd jkhkjhhk',668,NULL,0,NULL,3138,NULL,'INR',NULL,'PRODUCT',1,NULL,1,NULL,1,0,NULL,NULL,0,0),
(309,'2013-09-27 11:40:07','2013-09-27 11:40:07','ki','ki',669,NULL,0,NULL,3139,NULL,'INR',NULL,'PRODUCT',3,NULL,1,NULL,1,0,NULL,NULL,0,0),
(310,'2013-09-27 12:04:28','2013-09-27 12:04:28','kalu','quantam',670,NULL,0,NULL,3140,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(311,'2013-09-27 12:42:46','2013-09-27 12:42:46','mo','mo',671,NULL,0,NULL,3141,NULL,'INR',NULL,'PRODUCT',22,NULL,1,NULL,1,0,NULL,NULL,0,0),
(312,'2013-09-27 13:43:23','2013-09-27 13:43:23','j','hjhhjhhjhjhjhj',672,NULL,0,NULL,3142,NULL,'INR',NULL,'PRODUCT',2,NULL,1,NULL,1,0,NULL,NULL,0,0),
(313,'2013-09-27 15:51:21','2013-09-27 15:51:21','kl','jkkkkjjjkkjkjjkkjkjkkkkkkkkkkkkkkkkkkkk',673,NULL,0,NULL,3143,NULL,'INR',NULL,'PRODUCT',6,NULL,1,NULL,1,0,NULL,NULL,0,0),
(314,'2013-09-29 10:30:48','2013-09-29 10:30:48','kljl',NULL,674,NULL,0,NULL,3144,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(315,'2013-10-02 10:09:26','2013-10-02 10:09:26','iuoi',NULL,675,NULL,0,NULL,3145,NULL,'INR',NULL,'PRODUCT',6,NULL,1,NULL,1,0,NULL,NULL,0,0),
(316,'2013-10-02 10:14:06','2013-10-02 10:14:06','iuoi','hhhh',676,NULL,0,NULL,3146,NULL,'INR',NULL,'PRODUCT',6,NULL,1,NULL,1,0,NULL,NULL,0,0),
(317,'2013-10-03 10:10:22','2013-10-03 10:10:22','book','HTML5,CSS3 ',677,NULL,0,NULL,3147,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(318,'2013-10-04 11:19:59','2013-10-04 11:19:59','iouo','llllklkklkkklkl',678,NULL,0,NULL,3148,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(319,'2013-10-10 10:13:28','2013-10-10 10:13:28','jj','bbbbbbbbbbb',680,NULL,0,NULL,3152,NULL,'INR',NULL,'PRODUCT',1,NULL,1,NULL,1,0,NULL,NULL,0,0),
(320,'2013-10-10 10:24:31','2013-10-10 10:24:31','jj','jl;dkfl\'kdf;lad',681,NULL,0,NULL,3153,NULL,'INR',NULL,'PRODUCT',1,NULL,1,NULL,1,0,NULL,NULL,0,0),
(321,'2013-10-11 13:15:32','2013-10-11 13:15:32','asdfg','vijay',682,NULL,0,NULL,3154,NULL,'INR',NULL,'PRODUCT',1,NULL,1,NULL,1,0,NULL,NULL,0,0),
(322,'2013-10-27 12:54:20','2013-10-27 12:54:20','watches',NULL,683,NULL,0,NULL,3155,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(323,'2013-11-11 11:28:15','2013-11-11 11:28:15','book','atra book depo',684,NULL,0,NULL,3156,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(324,'2013-11-12 10:32:38','2013-11-12 10:32:38','ghjh','asdfghj',686,NULL,0,NULL,3159,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL,NULL,0,0),
(325,'2013-11-12 13:03:26','2013-11-12 13:03:26','asdfg','asdfghj',687,NULL,0,NULL,3160,NULL,'INR',NULL,'PRODUCT',1,NULL,1,NULL,1,0,NULL,NULL,0,0),
(326,'2013-11-26 10:41:54','2013-11-26 10:41:54','Classic coat pents ','lkdfgja;ldkj',708,NULL,0,NULL,3196,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(328,'2013-12-04 10:44:10','2013-12-04 10:44:10','test1','test1',732,NULL,0,NULL,3216,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL,NULL,0,0),
(329,'2013-12-14 12:39:48','2013-12-14 12:39:48','fan','dfkjadhfjklahdlfkjashfkalhsd',733,NULL,0,NULL,3217,NULL,'INR',NULL,'PRODUCT',19,NULL,32,NULL,1,0,NULL,NULL,0,0),
(330,'2014-03-06 22:21:21','2014-03-06 22:21:21','Samraat dava khana test','better to understand the ',734,NULL,0,NULL,3218,NULL,'INR',NULL,'PRODUCT',19,NULL,740,NULL,1,0,NULL,NULL,0,0),
(333,'2014-01-09 16:00:53','2014-01-09 16:00:53','medical store','home delivery',739,NULL,0,NULL,3251,NULL,'INR',NULL,'PRODUCT',8,NULL,740,NULL,1,0,'9878766543',NULL,0,0),
(334,'2014-04-09 14:18:00','2014-04-09 14:18:00','Lorial','Latest 2013 summer collection.Free shiping & cash on delivery.shop now.',0,NULL,0,NULL,3256,NULL,'INR',NULL,'PRODUCT',19,NULL,740,NULL,1,0,'9878766543',NULL,0,0),
(335,'2014-03-14 22:42:06','2014-03-14 22:42:06','kira','<p>8 down vote You can do some Javascript in the form&#39;s submit event.</p>\r\n',NULL,NULL,0,NULL,3286,NULL,'INR',NULL,'PRODUCT',17,NULL,740,NULL,1,0,'9878766543',NULL,0,0),
(336,'2014-03-06 11:07:57','2014-03-06 11:07:57','test','how is this',NULL,NULL,0,NULL,3287,NULL,'INR',NULL,'PRODUCT',19,NULL,740,NULL,1,0,'9878766543',NULL,0,0),
(337,'2014-03-13 23:38:07','2014-03-13 23:38:07','Atraa Book House','<p>All Books are available</p>\r\n',NULL,NULL,0,NULL,3318,NULL,'INR',NULL,'PRODUCT',17,NULL,740,NULL,1,1,'9789867234',NULL,0,0),
(338,'2014-03-14 22:58:45','2014-03-14 22:58:45','Tech computer','<p>hide &amp; seek</p>\r\n',NULL,NULL,0,NULL,3319,NULL,'INR',NULL,'PRODUCT',8,NULL,755,NULL,1,0,'7867564534',NULL,0,0),
(339,'2014-03-14 23:16:57','2014-03-14 23:16:57','Salman book dipo','<p>ffffffffffj</p>\r\n',NULL,NULL,0,NULL,3320,NULL,'INR',NULL,'PRODUCT',17,NULL,755,NULL,1,0,'9789867234',NULL,0,0),
(340,'2014-04-18 10:03:03','2014-04-18 10:03:03','Atmaram Book House','<p>hi</p>\r\n',NULL,NULL,0,NULL,3322,NULL,'INR',NULL,'PRODUCT',17,NULL,773,NULL,1,0,'7867564534',NULL,0,0),
(343,'2014-03-21 12:32:45','2014-03-21 12:32:45','Rose ','<p>jkhjk</p>\r\n',NULL,NULL,0,NULL,3327,NULL,'INR',NULL,'PRODUCT',19,NULL,740,NULL,1,NULL,'7867564534',500,1,1);

/*Table structure for table `shop_category` */

DROP TABLE IF EXISTS `shop_category`;

CREATE TABLE `shop_category` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(50) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

/*Data for the table `shop_category` */

insert into `shop_category` values 
(1,'DESIGNER CLOTH','/shop_category/link6.png'),
(2,'JEWELRY','/shop_category/link10.png'),
(3,'KITCHEN','/shop_category/link01.png'),
(4,'OPTICAL','/shop_category/link12.png'),
(5,'CROCKERY','/shop_category/link5.png'),
(6,'FURNITURE','/shop_category/link7.png'),
(7,'VEHICLE','/shop_category/link01.png'),
(8,'COMPUTER','/shop_category/link3.png'),
(9,'LAPTOP','/shop_category/link01.png'),
(10,'MOBILE','/shop_category/link11.png'),
(11,'SHAREE','/shop_category/link13.png'),
(12,'FLOWER','/shop_category/link8.png'),
(13,'COSMETIC','/shop_category/link4.png'),
(14,'TSHIRT','/shop_category/link01.png'),
(15,'TROUSER','/shop_category/link01.png'),
(16,'JEANS','/shop_category/link01.png'),
(17,'BOOK','/shop_category/link01.png'),
(18,'SALOON','/shop_category/link01.png'),
(19,'BOUTIQUE','/shop_category/link2.png'),
(20,'INTERIOR','/shop_category/link9.png'),
(21,'SPORT','/shop_category/link01.png'),
(22,'MEDICAL EQUIPMENT','/shop_category/link01.png'),
(23,'VEHICLE ACCESSORY','/shop_category/link01.png'),
(24,'ELECTRONICS GOODS','/shop_category/link01.png'),
(25,'SHOES','/shop_category/link01.png'),
(26,'GIFT SHOPS','/shop_category/link01.png');

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
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;

/*Data for the table `shop_image` */

insert into `shop_image` values 
(1,NULL,'/images/2.png','/usr/local/userPhotos/Big/SHOP/1/Banner_Agarwal.jpg',1),
(2,NULL,'/images/2.png','/usr/local/userPhotos/Big/SHOP/2/Banner_Aakriti.jpg',2),
(3,NULL,'/images/2.png','/usr/local/userPhotos/Big/SHOP/3/Banner_Batra.jpg',3),
(4,NULL,'/images/2.png','/usr/local/userPhotos/Big/SHOP/4/Untitled-1_copy.jpg',4),
(5,NULL,'/images/2.png','/usr/local/userPhotos/Big/SHOP/5/Banner_Ajay_copy.jpg',5),
(6,NULL,'/images/2.png','/usr/local/userPhotos/Big/SHOP/6/Banner_Asian.jpg',6),
(7,NULL,'/images/2.png','/usr/local/userPhotos/Big/SHOP/7/Banner_Ajay.jpg',7),
(8,NULL,'/images/2.png','/usr/local/userPhotos/Big/SHOP/8/Banner_Arora.jpg',8),
(9,NULL,'/images/2.png','/usr/local/userPhotos/Big/SHOP/9/Banner_Adhunik.jpg',9),
(10,NULL,'/images/2.png','/usr/local/userPhotos/Big/SHOP/10/Banner_Anand.jpg',10),
(11,NULL,'/images/2.png','/usr/local/userPhotos/Big/SHOP/11/Banner_Arun.jpg',11),
(12,NULL,'/images/2.png','/usr/local/userPhotos/Big/SHOP/12/Banner_Arun.jpg',12),
(13,NULL,'/images/2.png','/usr/local/userPhotos/Big/SHOP/13/Banner_Ajay.jpg',13),
(14,NULL,'/images/2.png','/usr/local/userPhotos/Big/SHOP/14/Banner_Balaji.jpg',14),
(15,NULL,'/images/2.png','/usr/local/userPhotos/Big/SHOP/15/Banner_Arora.jpg',15),
(16,NULL,'/images/2.png','/usr/local/userPhotos/Big/SHOP/16/Banner_Archana.jpg',16),
(17,NULL,'/images/2.png','/usr/local/userPhotos/Big/SHOP/17/Banner_Aggarwal.jpg',17),
(18,NULL,'/images/2.png','/usr/local/userPhotos/Big/SHOP/18/Untitled-1_copy.jpg',18),
(19,NULL,'/images/2.png','/usr/local/userPhotos/Big/SHOP/19/Untitled-1_copy.jpg',19),
(20,NULL,'/usr/local/userPhotos/SHOP/175/autumn-wallpaper-hd.jpg','/usr/local/userPhotos/Big/SHOP/175/autumn-wallpaper-hd.jpg',175),
(21,NULL,'/usr/local/userPhotos/SHOP/179/city-wallpaper-1.jpg','/usr/local/userPhotos/Big/SHOP/179/city-wallpaper-1.jpg',179),
(22,NULL,'/usr/local/userPhotos/SHOP/181/avatar77321_1.gif','/usr/local/userPhotos/Big/SHOP/181/avatar77321_1.gif',181),
(23,NULL,'/usr/local/userPhotos/SHOP/182/avatar77321_1.gif','/usr/local/userPhotos/Big/SHOP/182/avatar77321_1.gif',182),
(24,NULL,'/usr/local/userPhotos/SHOP/199/avatar77321_1.gif','/usr/local/userPhotos/Big/SHOP/199/avatar77321_1.gif',199),
(25,NULL,'/usr/local/userPhotos/SHOP/199/avatar77321_1.gif','/usr/local/userPhotos/Big/SHOP/199/avatar77321_1.gif',199),
(26,NULL,'/usr/local/userPhotos/SHOP/199/avatar77321_1.gif','/usr/local/userPhotos/Big/SHOP/199/avatar77321_1.gif',199),
(27,NULL,'/usr/local/userPhotos/SHOP/229/avatar77321_1.gif','/usr/local/userPhotos/Big/SHOP/229/avatar77321_1.gif',229),
(28,NULL,'/usr/local/userPhotos/SHOP/229/avatar77321_1.gif','/usr/local/userPhotos/Big/SHOP/229/avatar77321_1.gif',229),
(29,NULL,'/usr/local/userPhotos/SHOP/229/avatar77321_1.gif','/usr/local/userPhotos/Big/SHOP/229/avatar77321_1.gif',229),
(30,NULL,'/usr/local/userPhotos/SHOP/230/autumn-wallpaper-hd.jpg','/usr/local/userPhotos/Big/SHOP/230/autumn-wallpaper-hd.jpg',230),
(31,NULL,'/usr/local/userPhotos/SHOP/230/autumn-wallpaper-hd.jpg','/usr/local/userPhotos/Big/SHOP/230/autumn-wallpaper-hd.jpg',230),
(32,NULL,'/usr/local/userPhotos/SHOP/234/city-wallpaper-1.jpg','/usr/local/userPhotos/Big/SHOP/234/city-wallpaper-1.jpg',234),
(33,NULL,'/usr/local/userPhotos/SHOP/234/city-wallpaper-1.jpg','/usr/local/userPhotos/Big/SHOP/234/city-wallpaper-1.jpg',234),
(34,NULL,'/usr/local/userPhotos/SHOP/246/autumn-wallpaper-hd.jpg','/usr/local/userPhotos/Big/SHOP/246/autumn-wallpaper-hd.jpg',246),
(35,NULL,'/usr/local/userPhotos/SHOP/246/autumn-wallpaper-hd.jpg','/usr/local/userPhotos/Big/SHOP/246/autumn-wallpaper-hd.jpg',246),
(36,NULL,'/usr/local/userPhotos/SHOP/247/along-the-river-1920x1080-wallpaper-7398.jpg','/usr/local/userPhotos/Big/SHOP/247/along-the-river-1920x1080-wallpaper-7398.jpg',247),
(37,NULL,'/usr/local/userPhotos/SHOP/292/1063810_495312807211507_775072561_o.jpg','/usr/local/userPhotos/Big/SHOP/292/1063810_495312807211507_775072561_o.jpg',292),
(38,NULL,'/usr/local/userPhotos/SHOP/294/163531_328396987286136_2123155646_n.jpg','/usr/local/userPhotos/Big/SHOP/294/163531_328396987286136_2123155646_n.jpg',294),
(39,NULL,'/usr/local/userPhotos/SHOP/297/Admin.7z','/usr/local/userPhotos/Big/SHOP/297/Admin.7z',297),
(40,NULL,'/usr/local/userPhotos/SHOP/297/1063810_495312807211507_775072561_o.jpg','/usr/local/userPhotos/Big/SHOP/297/1063810_495312807211507_775072561_o.jpg',297),
(41,NULL,'/usr/local/userPhotos/SHOP/299/along-the-river-1920x1080-wallpaper-7398.jpg','/usr/local/userPhotos/Big/SHOP/299/along-the-river-1920x1080-wallpaper-7398.jpg',299),
(42,NULL,'/usr/local/userPhotos/SHOP/299/1063810_495312807211507_775072561_o.jpg','/usr/local/userPhotos/Big/SHOP/299/1063810_495312807211507_775072561_o.jpg',299),
(43,NULL,'/usr/local/userPhotos/SHOP/300/around-sunset-1920x1080-wallpaper-10136.jpg','/usr/local/userPhotos/Big/SHOP/300/around-sunset-1920x1080-wallpaper-10136.jpg',300),
(44,NULL,'/usr/local/userPhotos/SHOP/301/1063810_495312807211507_775072561_o.jpg','/usr/local/userPhotos/Big/SHOP/301/1063810_495312807211507_775072561_o.jpg',301),
(45,NULL,'/usr/local/userPhotos/SHOP/302/around-sunset-1920x1080-wallpaper-10136.jpg','/usr/local/userPhotos/Big/SHOP/302/around-sunset-1920x1080-wallpaper-10136.jpg',302),
(46,NULL,'/usr/local/userPhotos/SHOP/303/1063810_495312807211507_775072561_o.jpg','/usr/local/userPhotos/Big/SHOP/303/1063810_495312807211507_775072561_o.jpg',303),
(47,NULL,'/usr/local/userPhotos/SHOP/304/beach-wallpaper-hd-florida-condos-download-wallpaper-wallpaper.jpg','/usr/local/userPhotos/Big/SHOP/304/beach-wallpaper-hd-florida-condos-download-wallpaper-wallpaper.jpg',304),
(48,NULL,'/usr/local/userPhotos/SHOP/305/around-sunset-1920x1080-wallpaper-10136.jpg','/usr/local/userPhotos/Big/SHOP/305/around-sunset-1920x1080-wallpaper-10136.jpg',305),
(49,NULL,'/usr/local/userPhotos/SHOP/306/autumn-landscape-with-trees-1920x1080-wallpaper-11341.jpg','/usr/local/userPhotos/Big/SHOP/306/autumn-landscape-with-trees-1920x1080-wallpaper-11341.jpg',306),
(50,NULL,'/usr/local/userPhotos/SHOP/307/around-sunset-1920x1080-wallpaper-10136.jpg','/usr/local/userPhotos/Big/SHOP/307/around-sunset-1920x1080-wallpaper-10136.jpg',307),
(51,NULL,'/usr/local/userPhotos/SHOP/308/autumn-landscape-with-trees-1920x1080-wallpaper-11341.jpg','/usr/local/userPhotos/Big/SHOP/308/autumn-landscape-with-trees-1920x1080-wallpaper-11341.jpg',308),
(52,NULL,'/usr/local/userPhotos/SHOP/309/autumn-landscape-with-trees-1920x1080-wallpaper-11341.jpg','/usr/local/userPhotos/Big/SHOP/309/autumn-landscape-with-trees-1920x1080-wallpaper-11341.jpg',309),
(53,NULL,'/usr/local/userPhotos/SHOP/310/autumn-wallpaper-hd.jpg','/usr/local/userPhotos/Big/SHOP/310/autumn-wallpaper-hd.jpg',310),
(54,NULL,'/usr/local/userPhotos/SHOP/311/1063810_495312807211507_775072561_o.jpg','/usr/local/userPhotos/Big/SHOP/311/1063810_495312807211507_775072561_o.jpg',311),
(55,NULL,'/usr/local/userPhotos/SHOP/312/1063810_495312807211507_775072561_o.jpg','/usr/local/userPhotos/Big/SHOP/312/1063810_495312807211507_775072561_o.jpg',312),
(56,NULL,'/usr/local/userPhotos/SHOP/313/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg','/usr/local/userPhotos/Big/SHOP/313/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg',313),
(57,NULL,'/usr/local/userPhotos/SHOP/316/199481255_fdfe885f87_s.jpg','/usr/local/userPhotos/Big/SHOP/316/199481255_fdfe885f87_s.jpg',316),
(58,NULL,'/usr/local/userPhotos/SHOP/317/199481072_b4a0d09597_s.jpg','/usr/local/userPhotos/Big/SHOP/317/199481072_b4a0d09597_s.jpg',317),
(59,NULL,'/usr/local/userPhotos/SHOP/318/229228324_08223b70fa_s.jpg','/usr/local/userPhotos/Big/SHOP/318/229228324_08223b70fa_s.jpg',318),
(60,NULL,'/usr/local/userPhotos/SHOP/319/229228324_08223b70fa_s.jpg','/usr/local/userPhotos/Big/SHOP/319/229228324_08223b70fa_s.jpg',319),
(61,NULL,'/usr/local/userPhotos/SHOP/320/199481072_b4a0d09597_s.jpg','/usr/local/userPhotos/Big/SHOP/320/199481072_b4a0d09597_s.jpg',320),
(62,NULL,'/usr/local/userPhotos/SHOP/321/beach-wallpaper-hd-florida-condos-download-wallpaper-wallpaper.jpg','/usr/local/userPhotos/Big/SHOP/321/beach-wallpaper-hd-florida-condos-download-wallpaper-wallpaper.jpg',321),
(63,NULL,'/usr/local/userPhotos/SHOP/321/beach-wallpaper-hd-florida-condos-download-wallpaper-wallpaper.jpg','/usr/local/userPhotos/Big/SHOP/321/beach-wallpaper-hd-florida-condos-download-wallpaper-wallpaper.jpg',321),
(64,NULL,'/usr/local/userPhotos/SHOP/321/city-wallpaper-1.jpg','/usr/local/userPhotos/Big/SHOP/321/city-wallpaper-1.jpg',321),
(65,NULL,'/usr/local/userPhotos/SHOP/323/1381690_587333221303438_1072552433_n_-_Copy.jpg','/usr/local/userPhotos/Big/SHOP/323/1381690_587333221303438_1072552433_n_-_Copy.jpg',323),
(66,NULL,'/usr/local/userPhotos/SHOP/324/1381690_587333221303438_1072552433_n_-_Copy.jpg','/usr/local/userPhotos/Big/SHOP/324/1381690_587333221303438_1072552433_n_-_Copy.jpg',324),
(67,NULL,'/usr/local/userPhotos/SHOP/324/1381690_587333221303438_1072552433_n_-_Copy.jpg','/usr/local/userPhotos/Big/SHOP/324/1381690_587333221303438_1072552433_n_-_Copy.jpg',324),
(68,NULL,'/usr/local/userPhotos/SHOP/325/r.jpg','/usr/local/userPhotos/Big/SHOP/325/r.jpg',325),
(69,NULL,'/usr/local/userPhotos/SHOP/325/r.jpg','/usr/local/userPhotos/Big/SHOP/325/r.jpg',325),
(70,NULL,'/usr/local/userPhotos/SHOP/326/1476532_571893542883063_394917734_n.jpg','/usr/local/userPhotos/Big/SHOP/326/1476532_571893542883063_394917734_n.jpg',326),
(71,NULL,'/usr/local/userPhotos/SHOP/326/1476532_571893542883063_394917734_n.jpg','/usr/local/userPhotos/Big/SHOP/326/1476532_571893542883063_394917734_n.jpg',326),
(72,NULL,'/usr/local/userPhotos/SHOP/327/1456639_614098435291986_1515615659_n.jpg','/usr/local/userPhotos/Big/SHOP/327/1456639_614098435291986_1515615659_n.jpg',327),
(73,NULL,'/usr/local/userPhotos/SHOP/328/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/SHOP/328/1476435_558998504180050_2080544610_n.jpg',328),
(74,NULL,'/usr/local/userPhotos/SHOP/329/74bd49b849f3aad0e600f3f235558559.jpg','/usr/local/userPhotos/Big/SHOP/329/74bd49b849f3aad0e600f3f235558559.jpg',329),
(75,NULL,'/usr/local/userPhotos/SHOP/330/1476532_571893542883063_394917734_n.jpg','/usr/local/userPhotos/Big/SHOP/330/1476532_571893542883063_394917734_n.jpg',330),
(104,NULL,'/usr/local/userPhotos/SHOP/333/around-sunset-1920x1080-wallpaper-10136.jpg','/usr/local/userPhotos/Big/SHOP/333/around-sunset-1920x1080-wallpaper-10136.jpg',333),
(119,NULL,'/usr/local/userPhotos/SHOP/336/banner.png','/usr/local/userPhotos/Big/SHOP/336/banner.png',336),
(78,NULL,'/usr/local/userPhotos/SHOP/331/city-wallpaper-1.jpg','/usr/local/userPhotos/Big/SHOP/331/city-wallpaper-1.jpg',331),
(79,NULL,'/usr/local/userPhotos/SHOP/331/1451974_613168502074267_1569905781_s.jpg','/usr/local/userPhotos/Big/SHOP/331/1451974_613168502074267_1569905781_s.jpg',331),
(80,NULL,'/usr/local/userPhotos/SHOP/331/1480574_600682716658532_1629368238_a.jpg','/usr/local/userPhotos/Big/SHOP/331/1480574_600682716658532_1629368238_a.jpg',331),
(81,NULL,'/usr/local/userPhotos/SHOP/331/1480574_600682716658532_1629368238_a.jpg','/usr/local/userPhotos/Big/SHOP/331/1480574_600682716658532_1629368238_a.jpg',331),
(82,NULL,'/usr/local/userPhotos/SHOP/331/1451974_613168502074267_1569905781_s.jpg','/usr/local/userPhotos/Big/SHOP/331/1451974_613168502074267_1569905781_s.jpg',331),
(83,NULL,'/usr/local/userPhotos/SHOP/331/1471764_557221921032032_1469736954_a.jpg','/usr/local/userPhotos/Big/SHOP/331/1471764_557221921032032_1469736954_a.jpg',331),
(84,NULL,'/usr/local/userPhotos/SHOP/331/1451974_613168502074267_1569905781_s.jpg','/usr/local/userPhotos/Big/SHOP/331/1451974_613168502074267_1569905781_s.jpg',331),
(85,NULL,'/usr/local/userPhotos/SHOP/331/1471764_557221921032032_1469736954_a.jpg','/usr/local/userPhotos/Big/SHOP/331/1471764_557221921032032_1469736954_a.jpg',331),
(86,NULL,'/usr/local/userPhotos/SHOP/331/beach-wallpaper-hd-florida-condos-download-wallpaper-wallpaper.jpg','/usr/local/userPhotos/Big/SHOP/331/beach-wallpaper-hd-florida-condos-download-wallpaper-wallpaper.jpg',331),
(87,NULL,'/usr/local/userPhotos/SHOP/331/beach-wallpaper-hd-florida-condos-download-wallpaper-wallpaper.jpg','/usr/local/userPhotos/Big/SHOP/331/beach-wallpaper-hd-florida-condos-download-wallpaper-wallpaper.jpg',331),
(88,NULL,'/usr/local/userPhotos/SHOP/331/beach-wallpaper-hd-florida-condos-download-wallpaper-wallpaper.jpg','/usr/local/userPhotos/Big/SHOP/331/beach-wallpaper-hd-florida-condos-download-wallpaper-wallpaper.jpg',331),
(89,NULL,'/usr/local/userPhotos/SHOP/331/around-sunset-1920x1080-wallpaper-10136.jpg','/usr/local/userPhotos/Big/SHOP/331/around-sunset-1920x1080-wallpaper-10136.jpg',331),
(90,NULL,'/usr/local/userPhotos/SHOP/331/1451974_613168502074267_1569905781_s.jpg','/usr/local/userPhotos/Big/SHOP/331/1451974_613168502074267_1569905781_s.jpg',331),
(91,NULL,'/usr/local/userPhotos/SHOP/331/1451974_613168502074267_1569905781_s.jpg','/usr/local/userPhotos/Big/SHOP/331/1451974_613168502074267_1569905781_s.jpg',331),
(92,NULL,'/usr/local/userPhotos/SHOP/331/1471764_557221921032032_1469736954_a.jpg','/usr/local/userPhotos/Big/SHOP/331/1471764_557221921032032_1469736954_a.jpg',331),
(93,NULL,'/usr/local/userPhotos/SHOP/331/1471764_557221921032032_1469736954_a.jpg','/usr/local/userPhotos/Big/SHOP/331/1471764_557221921032032_1469736954_a.jpg',331),
(94,NULL,'/usr/local/userPhotos/SHOP/331/1471764_557221921032032_1469736954_a.jpg','/usr/local/userPhotos/Big/SHOP/331/1471764_557221921032032_1469736954_a.jpg',331),
(95,NULL,'/usr/local/userPhotos/SHOP/331/1471764_557221921032032_1469736954_a.jpg','/usr/local/userPhotos/Big/SHOP/331/1471764_557221921032032_1469736954_a.jpg',331),
(96,NULL,'/usr/local/userPhotos/SHOP/331/1471764_557221921032032_1469736954_a.jpg','/usr/local/userPhotos/Big/SHOP/331/1471764_557221921032032_1469736954_a.jpg',331),
(97,NULL,'/usr/local/userPhotos/SHOP/331/1480574_600682716658532_1629368238_a.jpg','/usr/local/userPhotos/Big/SHOP/331/1480574_600682716658532_1629368238_a.jpg',331),
(98,NULL,'/usr/local/userPhotos/SHOP/331/1480574_600682716658532_1629368238_a.jpg','/usr/local/userPhotos/Big/SHOP/331/1480574_600682716658532_1629368238_a.jpg',331),
(99,NULL,'/usr/local/userPhotos/SHOP/331/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg','/usr/local/userPhotos/Big/SHOP/331/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg',331),
(100,NULL,'/usr/local/userPhotos/SHOP/331/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg','/usr/local/userPhotos/Big/SHOP/331/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg',331),
(101,NULL,'/usr/local/userPhotos/SHOP/331/1063810_495312807211507_775072561_o.jpg','/usr/local/userPhotos/Big/SHOP/331/1063810_495312807211507_775072561_o.jpg',331),
(102,NULL,'/usr/local/userPhotos/SHOP/331/1063810_495312807211507_775072561_o.jpg','/usr/local/userPhotos/Big/SHOP/331/1063810_495312807211507_775072561_o.jpg',331),
(103,NULL,'/usr/local/userPhotos/SHOP/331/1451974_613168502074267_1569905781_s.jpg','/usr/local/userPhotos/Big/SHOP/331/1451974_613168502074267_1569905781_s.jpg',331),
(105,NULL,'/usr/local/userPhotos/SHOP/334/Pauls_Boutique_Gift_Set.jpg','/usr/local/userPhotos/Big/SHOP/334/Pauls_Boutique_Gift_Set.jpg',334),
(118,NULL,'/usr/local/userPhotos/SHOP/335/1480574_600682716658532_1629368238_a.jpg','/usr/local/userPhotos/Big/SHOP/335/1480574_600682716658532_1629368238_a.jpg',335);

/*Table structure for table `shop_tab` */

DROP TABLE IF EXISTS `shop_tab`;

CREATE TABLE `shop_tab` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` longtext NOT NULL,
  `SHOP_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SHOP_TAB_SHOP_ID` (`SHOP_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `shop_tab` */

/*Table structure for table `shop_tab_image` */

DROP TABLE IF EXISTS `shop_tab_image`;

CREATE TABLE `shop_tab_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `SHOP_TAB_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SHOP_TAB_IMAGE_SHOP_TAB` (`SHOP_TAB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `shop_tab_image` */

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

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

/*Table structure for table `shop_type` */

DROP TABLE IF EXISTS `shop_type`;

CREATE TABLE `shop_type` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `shop_type` */

insert into `shop_type` values 
(1,'Show Room'),
(2,'Shop'),
(3,'Hall');

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `sport` */

insert into `sport` values 
(1,'werty','bvhjbvhjsvjhs 1234567890 /.,;\'\\][?\"{}|&%$#@','Clothing','Reebok','545','INR','','Chess','Children',18,'2013-08-08 12:23:55','2013-08-08 12:23:55'),
(2,'rfdgfcf','vnjsnbvjsvksnv ,./\';[]\\@#$%&|}{\"? 1234567890','Footwear','Adidas','4546','INR','','Table Tennis','Women',18,'2013-08-08 12:24:55','2013-08-08 12:24:55'),
(3,'fhgfhg','bvjsbvjbsj 12345678900 ,./\';[]\\|}{\"?&%$#@','Equipment','Nike','54566','INR','','Lawn Tennis','Men',18,'2013-08-08 12:26:12','2013-08-08 12:26:12'),
(4,'xxfcvbnb','bvjksvjsvks1234567890 ,./\';[]\\@#$%&','Other','Puma','4568','INR','','Basketball','Juniors',18,'2013-08-08 12:35:27','2013-08-08 12:35:27'),
(5,'mkjio','bvsbvjsnvkjsnv 1234567890 ,./\';[]\\','Footwear','Reebok','456','INR','','Cricket','Women',18,'2013-08-08 12:37:25','2013-08-08 12:37:25'),
(6,'mkoip','dghfjhgbjmhjm 1234567890','Clothing','Under Armour','5623','INR','','Hockey','Children',18,'2013-08-08 12:38:06','2013-08-08 12:38:06'),
(7,'nhuyti','bcjbajckvhaskjcvnkjs 1234567890 ,./;\'[]\\','Footwear','Umbro','78456','INR','','Badminton','Men',18,'2013-08-08 12:40:01','2013-08-08 12:40:01'),
(8,'fghfhg','sfhjgjhn 1234567890 ,./;\'[]\\','Footwear','Nike','798','INR','','Table Tennis','Juniors',18,'2013-08-08 12:41:01','2013-08-08 12:41:01');

/*Table structure for table `sport_image` */

DROP TABLE IF EXISTS `sport_image`;

CREATE TABLE `sport_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `SPORT_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `sport_image` */

insert into `sport_image` values 
(1,'bjhj165465./;\'[]\\','/usr/local/userPhotos/SPORT/1/BAT-T60-md.jpg','/usr/local/userPhotos/Big/SPORT/1/BAT-T60-md.jpg',1),
(2,'cgfghvh','/usr/local/userPhotos/SPORT/2/1279388516_5351947_6-Sky-Sp.jpg','/usr/local/userPhotos/Big/SPORT/2/1279388516_5351947_6-Sky-Sp.jpg',2),
(3,'bbjvhdkj/.,;&%$#@456','/usr/local/userPhotos/SPORT/3/1306332205-65.jpg','/usr/local/userPhotos/Big/SPORT/3/1306332205-65.jpg',3),
(4,'bvhjsbvjs1545,./\'\\][;','/usr/local/userPhotos/SPORT/4/135040c.jpg','/usr/local/userPhotos/Big/SPORT/4/135040c.jpg',4),
(5,'fgdf12/\']\\[;.,','/usr/local/userPhotos/SPORT/5/1297833396_167539885_4-Imme.jpg','/usr/local/userPhotos/Big/SPORT/5/1297833396_167539885_4-Imme.jpg',5),
(6,'cgvhb24354','/usr/local/userPhotos/SPORT/6/star-teak-md.jpg','/usr/local/userPhotos/Big/SPORT/6/star-teak-md.jpg',6),
(7,'fghfvhb123456 /\'][\\','/usr/local/userPhotos/SPORT/7/sporting-goods4.jpg','/usr/local/userPhotos/Big/SPORT/7/sporting-goods4.jpg',7),
(8,'ddcg1233,./;\'[]\\','/usr/local/userPhotos/SPORT/8/default.jpg','/usr/local/userPhotos/Big/SPORT/8/default.jpg',8);

/*Table structure for table `state` */

DROP TABLE IF EXISTS `state`;

CREATE TABLE `state` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `COUNTRY` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SHOP_TYPE_COUNTRY` (`COUNTRY`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

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
(36,'New Delhi',98);

/*Table structure for table `sub_tab` */

DROP TABLE IF EXISTS `sub_tab`;

CREATE TABLE `sub_tab` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `sub_tab` */

/*Table structure for table `tab` */

DROP TABLE IF EXISTS `tab`;

CREATE TABLE `tab` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tab` */

/*Table structure for table `tab_subtab` */

DROP TABLE IF EXISTS `tab_subtab`;

CREATE TABLE `tab_subtab` (
  `TAB_ID` bigint(10) NOT NULL,
  `SUB_TAB_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`SUB_TAB_ID`,`TAB_ID`),
  KEY `FK_TAB_SUBTAB_TAB` (`TAB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tab_subtab` */

/*Table structure for table `template` */

DROP TABLE IF EXISTS `template`;

CREATE TABLE `template` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) DEFAULT NULL,
  `TEMPLATE_DATA` longtext,
  `USER_ID` bigint(10) DEFAULT NULL,
  `BUSINESS_TYPE` varchar(30) DEFAULT NULL,
  `SHOP_CATEGORY_ID` bigint(10) DEFAULT NULL,
  `BUSINESS_TYPE_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `template` */

insert into `template` values 
(4,'yoooooo','<p>Example</p>\r\n<h1>An example title</h1>\r\n<p>Paragraph 1</p>\r\n<p class=\"p2\">Paragraph 2</p>',NULL,'LocalBusiness',19,326);
insert into `template` values 
(6,'joker','<p>Download Free CSS Templates</p>\r\n<!-- SWFObject embed by Geoff Stearns geoff@deconcept.com http://blog.deconcept.com/swfobject/ -->\r\n<script type=\"text/javascript\" src=\"http://cdn.templatemo.com/swfobject.js\"></script>\r\n<script type=\"text/javascript\">// <![CDATA[\r\nwindow.google_analytics_uacct = \"UA-732601-9\";\r\n// ]]></script>\r\n<div id=\"fb-root\">&nbsp;</div>\r\n<script type=\"text/javascript\">// <![CDATA[\r\n(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/en_US/all.js#xfbml=1\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));\r\n// ]]></script>\r\n<div id=\"maincontainer\" style=\"width: 980px; margin: 0 auto; background: #FFF;\">\r\n<div id=\"top_section\" style=\"background: url(\'http://cdn.templatemo.com/images/tm_header4.jpg\') no-repeat; height: 110px;\">\r\n<div class=\"header_left\" style=\"float: left; width: 300px; padding-top: 68px; padding-left: 40px; font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold; color: #fff;\"><a style=\"color: #fff;\" href=\"http://www.templatemo.com\">Free CSS Templates</a></div>\r\n<div class=\"header_right\" style=\"float: right; width: 320px; margin: 20px 20px 0 0;\">\r\n<div style=\"margin: 0px 10px 10px 0px;\" align=\"right\"><a style=\"text-decoration: none;\" href=\"https://plus.google.com/111990605606998149242?prsrc=3\"><img style=\"border: 0; width: 32px; height: 32px;\" src=\"https://ssl.gstatic.com/images/icons/gplus-32.png\" alt=\"\" /></a> <a href=\"http://www.facebook.com/templatemo\" rel=\"nofollow\"><img title=\"Free CSS Templates\" src=\"http://cdn.templatemo.com/icons/facebook.png\" alt=\"CSS Templates\" border=\"0\" hspace=\"3\" /></a> <a href=\"http://feeds.feedburner.com/templatemo\" rel=\"nofollow\"><img title=\"Free CSS Templates\" src=\"http://cdn.templatemo.com/icons/rss.png\" alt=\"Free CSS Templates\" border=\"0\" /></a></div>\r\n<form id=\"cse-search-box\" style=\"margin: 0px; padding: 0px;\" action=\"http://www.templatemo.com/search.php\">\r\n<div><input type=\"hidden\" name=\"cx\" value=\"partner-pub-3190197427203890:ywq54m187s6\" /><input type=\"hidden\" name=\"cof\" value=\"FORID:10\" /><input type=\"hidden\" name=\"ie\" value=\"ISO-8859-1\" /><input type=\"text\" name=\"q\" size=\"31\" /><input type=\"submit\" name=\"sa\" value=\"Search\" /></div>\r\n</form>\r\n<script type=\"text/javascript\" src=\"http://www.google.com/coop/cse/brand?form=cse-search-box&amp;lang=en\"></script>\r\n</div>\r\n</div>\r\n<div class=\"line\" style=\"height: 2px; background: #06A;\">&nbsp;</div>\r\n<div id=\"mainmenu\" style=\"background: #FFF;\">\r\n<ul class=\"glossymenu\" style=\"position: relative; padding: 0 0 0 34px; margin: 0 auto 0 auto; background: url(\'http://cdn.templatemo.com/images/menub_bg.gif\') repeat-x; height: 46px; list-style: none;\">\r\n<li class=\"current\" style=\"float: left;\"><a style=\"float: left; display: block; color: #fff; text-decoration: none; font-family: \'Trebuchet MS\', Verdana, Arial; font-size: 12px; font-weight: bold; padding: 0 0 0 16px; height: 46px; line-height: 46px; text-align: center; cursor: pointer; background: url(\'http://cdn.templatemo.com/images/menub_hover_left.gif\') no-repeat; background-position: left;\" href=\"../../../../../\"><strong style=\"font-size: 110%; float: left; display: block; padding: 0 24px 0 8px; color: #fff; background: url(\'http://cdn.templatemo.com/images/menub_hover_right.gif\') no-repeat right top;\">Home</strong></a></li>\r\n<li style=\"float: left;\"><a style=\"float: left; display: block; color: #000; text-decoration: none; font-family: \'Trebuchet MS\', Verdana, Arial; font-size: 12px; font-weight: bold; padding: 0 0 0 16px; height: 46px; line-height: 46px; text-align: center; cursor: pointer;\" title=\"free css templates\" href=\"../../../../../page/1\"><strong style=\"font-size: 110%; float: left; display: block; padding: 0 24px 0 8px;\">CSS Templates</strong></a></li>\r\n<li style=\"float: left;\"><a style=\"float: left; display: block; color: #000; text-decoration: none; font-family: \'Trebuchet MS\', Verdana, Arial; font-size: 12px; font-weight: bold; padding: 0 0 0 16px; height: 46px; line-height: 46px; text-align: center; cursor: pointer;\" onclick=\"javascript: pageTracker._trackPageview(\'/outgoing/menu/flashmo.com/page/1\');\" href=\"http://www.flashmo.com/page/1\" rel=\"nofollow\"><strong style=\"font-size: 110%; float: left; display: block; padding: 0 24px 0 8px;\">Flash Templates</strong></a></li>\r\n<li style=\"float: left;\"><a style=\"float: left; display: block; color: #000; text-decoration: none; font-family: \'Trebuchet MS\', Verdana, Arial; font-size: 12px; font-weight: bold; padding: 0 0 0 16px; height: 46px; line-height: 46px; text-align: center; cursor: pointer;\" onclick=\"javascript: pageTracker._trackPageview(\'/outgoing/menu/koflash.com\');\" href=\"http://www.koflash.com\" rel=\"nofollow\"><strong style=\"font-size: 110%; float: left; display: block; padding: 0 24px 0 8px;\">Flash Websites</strong></a></li>\r\n<li style=\"float: left;\"><a style=\"float: left; display: block; color: #000; text-decoration: none; font-family: \'Trebuchet MS\', Verdana, Arial; font-size: 12px; font-weight: bold; padding: 0 0 0 16px; height: 46px; line-height: 46px; text-align: center; cursor: pointer;\" href=\"../../../../../contact\"><strong style=\"font-size: 110%; float: left; display: block; padding: 0 24px 0 8px;\">Contact</strong></a></li>\r\n</ul>\r\n</div>\r\n<div style=\"clear: both; height: 10px;\">&nbsp;</div>\r\n<div id=\"content_area\" style=\"clear: both; min-height: 800px; background: #FFF;\">\r\n<div id=\"left_column\" style=\"float: left; padding-left: 10px; width: 300px;\">\r\n<script type=\"text/javascript\" src=\"http://bs.serving-sys.com/BurstingPipe/adServer.bs?cn=rsb&amp;c=28&amp;pli=5684717&amp;PluID=0&amp;w=300&amp;h=500&amp;ord=$$CacheBustingToken$$&amp;wm=transparent&amp;ucm=true\"></script>\r\n<noscript>&amp;lt;a href=\"http://bs.serving-sys.com/BurstingPipe/adServer.bs?cn=brd&amp;amp;amp;FlightID=5684717&amp;amp;amp;Page=&amp;amp;amp;PluID=0&amp;amp;amp;Pos=6864\" target=\"_blank\" onclick=\"javascript: pageTracker._trackPageview(\'/outgoing/right/wix.com/300x500_first\');\"&amp;gt;&amp;lt;img src=\"http://bs.serving-sys.com/BurstingPipe/adServer.bs?cn=bsr&amp;amp;amp;FlightID=5684717&amp;amp;amp;Page=&amp;amp;amp;PluID=0&amp;amp;amp;Pos=6864\" alt=\"Free Website\" width=\"300\" height=\"500\" vspace=\"5\" border=\"0\" title=\"Free Website\" /&amp;gt;&amp;lt;/a&amp;gt;</noscript>\r\n<script type=\"text/javascript\" src=\"http://bs.serving-sys.com/BurstingPipe/adServer.bs?cn=rsb&amp;c=28&amp;pli=5683975&amp;PluID=0&amp;w=300&amp;h=250&amp;ord=$$CacheBustingToken$$&amp;wm=transparent&amp;ucm=true\"></script>\r\n<noscript>&amp;lt;a href=\"http://bs.serving-sys.com/BurstingPipe/adServer.bs?cn=brd&amp;amp;amp;FlightID=5683975&amp;amp;amp;Page=&amp;amp;amp;PluID=0&amp;amp;amp;Pos=3702\" target=\"_blank\" onclick=\"javascript: pageTracker._trackPageview(\'/outgoing/right/wix.com/300x250_third\');\"&amp;gt;&amp;lt;img src=\"http://bs.serving-sys.com/BurstingPipe/adServer.bs?cn=bsr&amp;amp;amp;FlightID=5683975&amp;amp;amp;Page=&amp;amp;amp;PluID=0&amp;amp;amp;Pos=3702\" alt=\"Free Website\" width=\"300\" height=\"250\" vspace=\"5\" border=\"0\" title=\"Free Website\" /&amp;gt;&amp;lt;/a&amp;gt;</noscript><a onclick=\"javascript: pageTracker._trackPageview(\'/outgoing/right/flashmo.com/300x250_fourth\');\" href=\"http://www.flashmo.com/page/1\" rel=\"nofollow\"><img title=\"Flash Templates\" src=\"http://cdn.templatemo.com/images/flashmo_300x250_2.jpg\" alt=\"Flash Templates\" width=\"300\" height=\"250\" border=\"0\" vspace=\"5\" /></a>\r\n<div class=\"templatemo_link_box\" style=\"float: left; width: 150px; line-height: 1.8em; padding: 10px 0;\">&nbsp;</div>\r\n<div class=\"templatemo_link_box\" style=\"float: left; width: 150px; line-height: 1.8em; padding: 10px 0;\">\r\n<div class=\"subtitle\" style=\"margin: 5px 0; padding: 0; font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-weight: bold; color: #c06;\">Check this out!</div>\r\n<a onclick=\"javascript: pageTracker._trackPageview(\'/outgoing/left/wix.com\');\" href=\"http://www.wix.com/templatem7/300-new?utm_campaign=flash&amp;experiment_id=ma_templatemo_txt_300new\" rel=\"nofollow\">Free Website Templates</a><br /><a onclick=\"javascript: pageTracker._trackPageview(\'/outgoing/left/freelancersoutpost.com\');\" href=\"http://www.freelancersoutpost.com\" rel=\"nofollow\">Freelancers Outpost</a><br /><a onclick=\"javascript: pageTracker._trackPageview(\'/outgoing/left/freetemplatesonline.com\');\" href=\"http://www.freetemplatesonline.com\" rel=\"nofollow\">Free Templates</a><br /><a onclick=\"javascript: pageTracker._trackPageview(\'/outgoing/left/templatemonster.com\');\" href=\"http://www.templatemonster.com\" rel=\"nofollow\">Website Templates</a><br /><a onclick=\"javascript: pageTracker._trackPageview(\'/outgoing/left/websitetemplatesonline.com\');\" href=\"http://www.websitetemplatesonline.com\" rel=\"nofollow\">Free Templates</a><br /><a onclick=\"javascript: pageTracker._trackPageview(\'/outgoing/left/freecsstemplates.com\');\" href=\"http://www.freecsstemplates.com/templates.html\" rel=\"nofollow\">Free Website Templates</a></div>\r\n<div class=\"templatemo_clear\" style=\"clear: both; width: 100%; height: 0; font-size: 0;\">&nbsp;</div>\r\n</div>\r\n<div id=\"content_column\" style=\"float: left; width: 670px;\">\r\n<div style=\"clear: both; padding-top: 15px;\"><span class=\"title\" style=\"margin-top: 10px; margin-left: 10px; font-family: Arial, Helvetica, sans-serif; font-size: 20px; font-weight: bold; color: #090;\">Free CSS Templates</span>\r\n<div class=\"fb-like\" data-send=\"false\" data-layout=\"button_count\" data-width=\"450\" data-show-faces=\"false\" data-font=\"verdana\">&nbsp;</div>\r\n</div>\r\n<div class=\"inner_tube\" style=\"margin: 10px;\"><a title=\"download free templates\" href=\"../../../../../page/1\">templatemo.com</a> provides free website templates for everyone. All templates are absolutely free to download, modify and apply for your personal or commercial websites without restrictions. All templates are W3C standards-compliant.</div>\r\n<div class=\"thumbnail_frame\" style=\"clear: left; float: left; margin: 10px 4px 4px 10px; padding: 4px; width: 142px; background: #F8F8F8; border: 1px solid #CCC; font-family: Arial, Helvetica, sans-serif; text-align: left;\"><a href=\"../../../../../preview/templatemo_384_trendy\"><img class=\"thumbnail\" style=\"border: 1px #CCC solid; margin-bottom: 6px;\" title=\"\" src=\"http://cdn.templatemo.com/templates/templatemo_384_trendy.jpg\" alt=\"384 trendy\" width=\"140\" height=\"140\" border=\"0\" /></a> <a class=\"thumbnail_title\" style=\"font-weight: bold;\" href=\"../../../../../preview/templatemo_384_trendy\">384 trendy</a> <!-- <br /><span class=\"note\">Added: 16 Dec 2013</span> --></div>\r\n<div class=\"thumbnail_frame\" style=\"float: left; margin: 10px 4px 4px 10px; padding: 4px; width: 142px; background: #F8F8F8; border: 1px solid #CCC; font-family: Arial, Helvetica, sans-serif; text-align: left;\"><a href=\"../../../../../preview/templatemo_383_smoke_house\"><img class=\"thumbnail\" style=\"border: 1px #CCC solid; margin-bottom: 6px;\" title=\"\" src=\"http://cdn.templatemo.com/templates/templatemo_383_smoke_house.jpg\" alt=\"383 smoke house\" width=\"140\" height=\"140\" border=\"0\" /></a> <a class=\"thumbnail_title\" style=\"font-weight: bold;\" href=\"../../../../../preview/templatemo_383_smoke_house\">383 smoke house</a> <!-- <br /><span class=\"note\">Added: 28 Nov 2013</span> --></div>\r\n<div class=\"thumbnail_frame\" style=\"float: left; margin: 10px 4px 4px 10px; padding: 4px; width: 142px; background: #F8F8F8; border: 1px solid #CCC; font-family: Arial, Helvetica, sans-serif; text-align: left;\"><a href=\"../../../../../preview/templatemo_382_simplex\"><img class=\"thumbnail\" style=\"border: 1px #CCC solid; margin-bottom: 6px;\" title=\"\" src=\"http://cdn.templatemo.com/templates/templatemo_382_simplex.jpg\" alt=\"382 simplex\" width=\"140\" height=\"140\" border=\"0\" /></a> <a class=\"thumbnail_title\" style=\"font-weight: bold;\" href=\"../../../../../preview/templatemo_382_simplex\">382 simplex</a> <!-- <br /><span class=\"note\">Added: 19 Nov 2013</span> --></div>\r\n<div class=\"thumbnail_frame\" style=\"float: left; margin: 10px 4px 4px 10px; padding: 4px; width: 142px; background: #F8F8F8; border: 1px solid #CCC; font-family: Arial, Helvetica, sans-serif; text-align: left;\"><a href=\"../../../../../preview/templatemo_381_blactro\"><img class=\"thumbnail\" style=\"border: 1px #CCC solid; margin-bottom: 6px;\" title=\"\" src=\"http://cdn.templatemo.com/templates/templatemo_381_blactro.jpg\" alt=\"381 blactro\" width=\"140\" height=\"140\" border=\"0\" /></a> <a class=\"thumbnail_title\" style=\"font-weight: bold;\" href=\"../../../../../preview/templatemo_381_blactro\">381 blactro</a> <!-- <br /><span class=\"note\">Added: 18 Nov 2013</span> --></div>\r\n<div class=\"thumbnail_frame\" style=\"clear: left; float: left; margin: 10px 4px 4px 10px; padding: 4px; width: 142px; background: #F8F8F8; border: 1px solid #CCC; font-family: Arial, Helvetica, sans-serif; text-align: left;\"><a href=\"../../../../../preview/templatemo_380_eco_tree\"><img class=\"thumbnail\" style=\"border: 1px #CCC solid; margin-bottom: 6px;\" title=\"\" src=\"http://cdn.templatemo.com/templates/templatemo_380_eco_tree.jpg\" alt=\"380 eco tree\" width=\"140\" height=\"140\" border=\"0\" /></a> <a class=\"thumbnail_title\" style=\"font-weight: bold;\" href=\"../../../../../preview/templatemo_380_eco_tree\">380 eco tree</a> <!-- <br /><span class=\"note\">Added: 14 Nov 2013</span> --></div>\r\n<div class=\"thumbnail_frame\" style=\"float: left; margin: 10px 4px 4px 10px; padding: 4px; width: 142px; background: #F8F8F8; border: 1px solid #CCC; font-family: Arial, Helvetica, sans-serif; text-align: left;\"><a href=\"../../../../../preview/templatemo_379_catalog\"><img class=\"thumbnail\" style=\"border: 1px #CCC solid; margin-bottom: 6px;\" title=\"\" src=\"http://cdn.templatemo.com/templates/templatemo_379_catalog.jpg\" alt=\"379 catalog\" width=\"140\" height=\"140\" border=\"0\" /></a> <a class=\"thumbnail_title\" style=\"font-weight: bold;\" href=\"../../../../../preview/templatemo_379_catalog\">379 catalog</a> <!-- <br /><span class=\"note\">Added: 04 Nov 2013</span> --></div>\r\n<div class=\"thumbnail_frame\" style=\"float: left; margin: 10px 4px 4px 10px; padding: 4px; width: 142px; background: #F8F8F8; border: 1px solid #CCC; font-family: Arial, Helvetica, sans-serif; text-align: left;\"><a href=\"../../../../../preview/templatemo_378_dragonfly\"><img class=\"thumbnail\" style=\"border: 1px #CCC solid; margin-bottom: 6px;\" title=\"\" src=\"http://cdn.templatemo.com/templates/templatemo_378_dragonfly.jpg\" alt=\"378 dragonfly\" width=\"140\" height=\"140\" border=\"0\" /></a> <a class=\"thumbnail_title\" style=\"font-weight: bold;\" href=\"../../../../../preview/templatemo_378_dragonfly\">378 dragonfly</a> <!-- <br /><span class=\"note\">Added: 28 Oct 2013</span> --></div>\r\n<div class=\"thumbnail_frame\" style=\"float: left; margin: 10px 4px 4px 10px; padding: 4px; width: 142px; background: #F8F8F8; border: 1px solid #CCC; font-family: Arial, Helvetica, sans-serif; text-align: left;\"><a href=\"../../../../../preview/templatemo_377_blue_tech\"><img class=\"thumbnail\" style=\"border: 1px #CCC solid; margin-bottom: 6px;\" title=\"\" src=\"http://cdn.templatemo.com/templates/templatemo_377_blue_tech.jpg\" alt=\"377 blue tech\" width=\"140\" height=\"140\" border=\"0\" /></a> <a class=\"thumbnail_title\" style=\"font-weight: bold;\" href=\"../../../../../preview/templatemo_377_blue_tech\">377 blue tech</a> <!-- <br /><span class=\"note\">Added: 25 Oct 2013</span> --></div>\r\n<div style=\"clear: both; margin-left: 10px;\">\r\n<div class=\"buttonwrapper\" style=\"overflow: hidden; width: 100%;\"><a class=\"boldbuttons\" style=\"background: transparent url(\'http://cdn.templatemo.com/images/roundedge-gray-left.gif\') no-repeat top left; display: block; float: left; font: bold 13px Arial; line-height: 22px; height: 30px; padding-left: 8px; text-decoration: none;\" title=\"Free CSS Templates\" href=\"../../../../../page/1\"><span style=\"background: transparent url(\'http://cdn.templatemo.com/images/roundedge-gray-right.gif\') no-repeat top right; display: block; padding: 4px 10px 4px 2px;\">Free CSS Templates</span></a></div>\r\n</div>\r\n<!-- FLASHMO // --> <br />\r\n<div style=\"clear: both; padding-top: 15px;\"><span class=\"title\" style=\"margin-top: 10px; margin-left: 10px; font-family: Arial, Helvetica, sans-serif; font-size: 20px; font-weight: bold; color: #090;\">Free Flash Templates</span></div>\r\n<div class=\"thumbnail_frame\" style=\"clear: left; float: left; margin: 10px 4px 4px 10px; padding: 4px; width: 142px; background: #F8F8F8; border: 1px solid #CCC; font-family: Arial, Helvetica, sans-serif; text-align: left;\"><a href=\"http://www.flashmo.com/preview/flashmo_264_bar_gallery\" rel=\"nofollow\"><img class=\"thumbnail\" style=\"border: 1px #CCC solid; margin-bottom: 6px;\" src=\"http://www.flashmo.com/flash_templates/flashmo_264_bar_gallery.jpg\" alt=\"264 bar gallery\" width=\"140\" height=\"140\" border=\"0\" /></a> <a class=\"thumbnail_title\" style=\"font-weight: bold;\" href=\"http://www.flashmo.com/preview/flashmo_264_bar_gallery\" rel=\"nofollow\">264 bar gallery</a> <!-- <br /><span class=\"note\">Added: 26 Jul 2012</span> --></div>\r\n<div class=\"thumbnail_frame\" style=\"float: left; margin: 10px 4px 4px 10px; padding: 4px; width: 142px; background: #F8F8F8; border: 1px solid #CCC; font-family: Arial, Helvetica, sans-serif; text-align: left;\"><a href=\"http://www.flashmo.com/preview/flashmo_201_christmas\" rel=\"nofollow\"><img class=\"thumbnail\" style=\"border: 1px #CCC solid; margin-bottom: 6px;\" src=\"http://www.flashmo.com/flash_templates/flashmo_201_christmas.jpg\" alt=\"201 christmas\" width=\"140\" height=\"140\" border=\"0\" /></a> <a class=\"thumbnail_title\" style=\"font-weight: bold;\" href=\"http://www.flashmo.com/preview/flashmo_201_christmas\" rel=\"nofollow\">201 christmas</a> <!-- <br /><span class=\"note\">Added: 12 Dec 2009</span> --></div>\r\n<div class=\"thumbnail_frame\" style=\"float: left; margin: 10px 4px 4px 10px; padding: 4px; width: 142px; background: #F8F8F8; border: 1px solid #CCC; font-family: Arial, Helvetica, sans-serif; text-align: left;\"><a href=\"http://www.flashmo.com/preview/flashmo_229_accord\" rel=\"nofollow\"><img class=\"thumbnail\" style=\"border: 1px #CCC solid; margin-bottom: 6px;\" src=\"http://www.flashmo.com/flash_templates/flashmo_229_accord.jpg\" alt=\"229 accord\" width=\"140\" height=\"140\" border=\"0\" /></a> <a class=\"thumbnail_title\" style=\"font-weight: bold;\" href=\"http://www.flashmo.com/preview/flashmo_229_accord\" rel=\"nofollow\">229 accord</a> <!-- <br /><span class=\"note\">Added: 31 Oct 2010</span> --></div>\r\n<div class=\"thumbnail_frame\" style=\"float: left; margin: 10px 4px 4px 10px; padding: 4px; width: 142px; background: #F8F8F8; border: 1px solid #CCC; font-family: Arial, Helvetica, sans-serif; text-align: left;\"><a href=\"http://www.flashmo.com/preview/flashmo_247_3d_touch_ring\" rel=\"nofollow\"><img class=\"thumbnail\" style=\"border: 1px #CCC solid; margin-bottom: 6px;\" src=\"http://www.flashmo.com/flash_templates/flashmo_247_3d_touch_ring.jpg\" alt=\"247 3d touch ring\" width=\"140\" height=\"140\" border=\"0\" /></a> <a class=\"thumbnail_title\" style=\"font-weight: bold;\" href=\"http://www.flashmo.com/preview/flashmo_247_3d_touch_ring\" rel=\"nofollow\">247 3d touch ring</a> <!-- <br /><span class=\"note\">Added: 01 Jun 2011</span> --></div>\r\n<div class=\"thumbnail_frame\" style=\"clear: left; float: left; margin: 10px 4px 4px 10px; padding: 4px; width: 142px; background: #F8F8F8; border: 1px solid #CCC; font-family: Arial, Helvetica, sans-serif; text-align: left;\"><a href=\"http://www.flashmo.com/preview/flashmo_175_photo_gallery\" rel=\"nofollow\"><img class=\"thumbnail\" style=\"border: 1px #CCC solid; margin-bottom: 6px;\" src=\"http://www.flashmo.com/flash_templates/flashmo_175_photo_gallery.jpg\" alt=\"175 photo gallery\" width=\"140\" height=\"140\" border=\"0\" /></a> <a class=\"thumbnail_title\" style=\"font-weight: bold;\" href=\"http://www.flashmo.com/preview/flashmo_175_photo_gallery\" rel=\"nofollow\">175 photo gallery</a> <!-- <br /><span class=\"note\">Added: 02 Jun 2009</span> --></div>\r\n<div class=\"thumbnail_frame\" style=\"float: left; margin: 10px 4px 4px 10px; padding: 4px; width: 142px; background: #F8F8F8; border: 1px solid #CCC; font-family: Arial, Helvetica, sans-serif; text-align: left;\"><a href=\"http://www.flashmo.com/preview/flashmo_216_compact\" rel=\"nofollow\"><img class=\"thumbnail\" style=\"border: 1px #CCC solid; margin-bottom: 6px;\" src=\"http://www.flashmo.com/flash_templates/flashmo_216_compact.jpg\" alt=\"216 compact\" width=\"140\" height=\"140\" border=\"0\" /></a> <a class=\"thumbnail_title\" style=\"font-weight: bold;\" href=\"http://www.flashmo.com/preview/flashmo_216_compact\" rel=\"nofollow\">216 compact</a> <!-- <br /><span class=\"note\">Added: 17 Jun 2010</span> --></div>\r\n<div class=\"thumbnail_frame\" style=\"float: left; margin: 10px 4px 4px 10px; padding: 4px; width: 142px; background: #F8F8F8; border: 1px solid #CCC; font-family: Arial, Helvetica, sans-serif; text-align: left;\"><a href=\"http://www.flashmo.com/preview/flashmo_224_grid_slider\" rel=\"nofollow\"><img class=\"thumbnail\" style=\"border: 1px #CCC solid; margin-bottom: 6px;\" src=\"http://www.flashmo.com/flash_templates/flashmo_224_grid_slider.jpg\" alt=\"224 grid slider\" width=\"140\" height=\"140\" border=\"0\" /></a> <a class=\"thumbnail_title\" style=\"font-weight: bold;\" href=\"http://www.flashmo.com/preview/flashmo_224_grid_slider\" rel=\"nofollow\">224 grid slider</a> <!-- <br /><span class=\"note\">Added: 10 Sep 2010</span> --></div>\r\n<div class=\"thumbnail_frame\" style=\"float: left; margin: 10px 4px 4px 10px; padding: 4px; width: 142px; background: #F8F8F8; border: 1px solid #CCC; font-family: Arial, Helvetica, sans-serif; text-align: left;\"><a href=\"http://www.flashmo.com/preview/flashmo_209_photo_slider\" rel=\"nofollow\"><img class=\"thumbnail\" style=\"border: 1px #CCC solid; margin-bottom: 6px;\" src=\"http://www.flashmo.com/flash_templates/flashmo_209_photo_slider.jpg\" alt=\"209 photo slider\" width=\"140\" height=\"140\" border=\"0\" /></a> <a class=\"thumbnail_title\" style=\"font-weight: bold;\" href=\"http://www.flashmo.com/preview/flashmo_209_photo_slider\" rel=\"nofollow\">209 photo slider</a> <!-- <br /><span class=\"note\">Added: 21 Mar 2010</span> --></div>\r\n<div style=\"clear: both; margin-left: 10px;\">\r\n<div class=\"buttonwrapper\" style=\"overflow: hidden; width: 100%;\"><a class=\"boldbuttons\" style=\"background: transparent url(\'http://cdn.templatemo.com/images/roundedge-gray-left.gif\') no-repeat top left; display: block; float: left; font: bold 13px Arial; line-height: 22px; height: 30px; padding-left: 8px; text-decoration: none;\" title=\"Free Flash Templates\" href=\"http://www.flashmo.com/page/1\" rel=\"nofollow\"><span style=\"background: transparent url(\'http://cdn.templatemo.com/images/roundedge-gray-right.gif\') no-repeat top right; display: block; padding: 4px 10px 4px 2px;\">Free Flash Templates</span></a></div>\r\n</div>\r\n<!-- // FLASHMO --> <!-- KOFLASH // --> <br />\r\n<div style=\"clear: both; padding-top: 15px;\"><span class=\"title\" style=\"margin-top: 10px; margin-left: 10px; font-family: Arial, Helvetica, sans-serif; font-size: 20px; font-weight: bold; color: #090;\">Flash Web Gallery</span></div>\r\n<div class=\"thumbnail_frame\" style=\"clear: left; float: left; margin: 10px 4px 4px 10px; padding: 4px; width: 142px; background: #F8F8F8; border: 1px solid #CCC; font-family: Arial, Helvetica, sans-serif; text-align: left;\"><a href=\"http://www.koflash.com/cortex-design/\" rel=\"nofollow\"><img style=\"border: 1px #CCCCCC solid;\" src=\"http://www.koflash.com/wp-content/uploads/2010/02/cortex-design-150x150.jpg\" alt=\"cortex design\" width=\"140\" height=\"140\" border=\"0\" /></a> <a class=\"thumbnail_title\" style=\"font-weight: bold;\" href=\"http://www.koflash.com/cortex-design/\" rel=\"nofollow\">cortex design</a></div>\r\n<div class=\"thumbnail_frame\" style=\"float: left; margin: 10px 4px 4px 10px; padding: 4px; width: 142px; background: #F8F8F8; border: 1px solid #CCC; font-family: Arial, Helvetica, sans-serif; text-align: left;\"><a href=\"http://www.koflash.com/portfolio-nick-joore/\" rel=\"nofollow\"><img style=\"border: 1px #CCCCCC solid;\" src=\"http://www.koflash.com/wp-content/uploads/2010/02/njoore-150x150.jpg\" alt=\"Nick Joore\" width=\"140\" height=\"140\" border=\"0\" /></a> <a class=\"thumbnail_title\" style=\"font-weight: bold;\" href=\"http://www.koflash.com/portfolio-nick-joore/\" rel=\"nofollow\">Nick Joore</a></div>\r\n<div class=\"thumbnail_frame\" style=\"float: left; margin: 10px 4px 4px 10px; padding: 4px; width: 142px; background: #F8F8F8; border: 1px solid #CCC; font-family: Arial, Helvetica, sans-serif; text-align: left;\"><a href=\"http://www.koflash.com/dan0/\" rel=\"nofollow\"><img style=\"border: 1px #CCCCCC solid;\" src=\"http://www.koflash.com/wp-content/uploads/2010/02/dan0-150x150.jpg\" alt=\"Dan0\" width=\"140\" height=\"140\" border=\"0\" /></a> <a class=\"thumbnail_title\" style=\"font-weight: bold;\" href=\"http://www.koflash.com/dan0/\" rel=\"nofollow\">Dan0</a></div>\r\n<div class=\"thumbnail_frame\" style=\"float: left; margin: 10px 4px 4px 10px; padding: 4px; width: 142px; background: #F8F8F8; border: 1px solid #CCC; font-family: Arial, Helvetica, sans-serif; text-align: left;\"><a href=\"http://www.koflash.com/verbatim-championship/\" rel=\"nofollow\"><img style=\"border: 1px #CCCCCC solid;\" src=\"http://www.koflash.com/wp-content/uploads/2010/02/verbatim-senshuken-150x150.jpg\" alt=\"Verbatim Championship\" width=\"140\" height=\"140\" border=\"0\" /></a> <a class=\"thumbnail_title\" style=\"font-weight: bold;\" href=\"http://www.koflash.com/verbatim-championship/\" rel=\"nofollow\">Verbatim Championship</a></div>\r\n<div class=\"thumbnail_frame\" style=\"clear: left; float: left; margin: 10px 4px 4px 10px; padding: 4px; width: 142px; background: #F8F8F8; border: 1px solid #CCC; font-family: Arial, Helvetica, sans-serif; text-align: left;\"><a href=\"http://www.koflash.com/andreas-smetana/\" rel=\"nofollow\"><img style=\"border: 1px #CCCCCC solid;\" src=\"http://www.koflash.com/wp-content/uploads/2010/02/smetana-150x150.jpg\" alt=\"Andreas Smetana\" width=\"140\" height=\"140\" border=\"0\" /></a> <a class=\"thumbnail_title\" style=\"font-weight: bold;\" href=\"http://www.koflash.com/andreas-smetana/\" rel=\"nofollow\">Andreas Smetana</a></div>\r\n<div class=\"thumbnail_frame\" style=\"float: left; margin: 10px 4px 4px 10px; padding: 4px; width: 142px; background: #F8F8F8; border: 1px solid #CCC; font-family: Arial, Helvetica, sans-serif; text-align: left;\"><a href=\"http://www.koflash.com/oasis-for-fun/\" rel=\"nofollow\"><img style=\"border: 1px #CCCCCC solid;\" src=\"http://www.koflash.com/wp-content/uploads/2010/02/oasis-150x150.jpg\" alt=\"Oasis For Fun\" width=\"140\" height=\"140\" border=\"0\" /></a> <a class=\"thumbnail_title\" style=\"font-weight: bold;\" href=\"http://www.koflash.com/oasis-for-fun/\" rel=\"nofollow\">Oasis For Fun</a></div>\r\n<div class=\"thumbnail_frame\" style=\"float: left; margin: 10px 4px 4px 10px; padding: 4px; width: 142px; background: #F8F8F8; border: 1px solid #CCC; font-family: Arial, Helvetica, sans-serif; text-align: left;\"><a href=\"http://www.koflash.com/smarter-city/\" rel=\"nofollow\"><img style=\"border: 1px #CCCCCC solid;\" src=\"http://www.koflash.com/wp-content/uploads/2010/06/Smarter-City-150x150.jpg\" alt=\"Smarter City\" width=\"140\" height=\"140\" border=\"0\" /></a> <a class=\"thumbnail_title\" style=\"font-weight: bold;\" href=\"http://www.koflash.com/smarter-city/\" rel=\"nofollow\">Smarter City</a></div>\r\n<div class=\"thumbnail_frame\" style=\"float: left; margin: 10px 4px 4px 10px; padding: 4px; width: 142px; background: #F8F8F8; border: 1px solid #CCC; font-family: Arial, Helvetica, sans-serif; text-align: left;\"><a href=\"http://www.koflash.com/inavi/\" rel=\"nofollow\"><img style=\"border: 1px #CCCCCC solid;\" src=\"http://www.koflash.com/wp-content/uploads/2010/06/inavi-150x150.jpg\" alt=\"INAVI\" width=\"140\" height=\"140\" border=\"0\" /></a> <a class=\"thumbnail_title\" style=\"font-weight: bold;\" href=\"http://www.koflash.com/inavi/\" rel=\"nofollow\">INAVI</a></div>\r\n<div style=\"clear: both; margin-left: 10px; margin-bottom: 20px;\">\r\n<div class=\"buttonwrapper\" style=\"overflow: hidden; width: 100%;\"><a class=\"boldbuttons\" style=\"background: transparent url(\'http://cdn.templatemo.com/images/roundedge-gray-left.gif\') no-repeat top left; display: block; float: left; font: bold 13px Arial; line-height: 22px; height: 30px; padding-left: 8px; text-decoration: none;\" title=\"Flash Web Gallery\" href=\"http://www.koflash.com\" rel=\"nofollow\"><span style=\"background: transparent url(\'http://cdn.templatemo.com/images/roundedge-gray-right.gif\') no-repeat top right; display: block; padding: 4px 10px 4px 2px;\">Best Flash Websites</span></a></div>\r\n</div>\r\n<!-- // KOFLASH --></div>\r\n</div>\r\n<div id=\"footer\" style=\"clear: both; width: 100%; background: black; color: #fff; text-align: center; padding: 4px 0; font-family: Arial, Helvetica, sans-serif; font-size: 10px;\"><strong style=\"font-size: 110%;\">Copyright &copy; 2008-2013 templatemo.com - <a style=\"color: #fff;\" href=\"../../../../../links\">Links</a> - <a style=\"color: #fff;\" href=\"../../../../../about\">About</a> - <a style=\"color: #fff;\" href=\"../../../../../advertise\">Advertise</a> - <a style=\"color: #fff;\" title=\"Content Delivery Network\" onclick=\"javascript: pageTracker._trackPageview(\'/outgoing/maxcdn.com/footer_link\');\" href=\"http://www.maxcdn.com\" rel=\"nofollow\">Content Delivery Network</a> by MaxCDN</strong></div>\r\n</div>\r\n<script type=\"text/javascript\" src=\"https://apis.google.com/js/plusone.js\"></script>\r\n<script type=\"text/javascript\">// <![CDATA[\r\nvar gaJsHost = ((\"https:\" == document.location.protocol) ? \"https://ssl.\" : \"http://www.\");\r\ndocument.write(unescape(\"%3Cscript src=\'\" + gaJsHost + \"google-analytics.com/ga.js\' type=\'text/javascript\'%3E%3C/script%3E\"));\r\n// ]]></script>\r\n<script type=\"text/javascript\">// <![CDATA[\r\nvar pageTracker = _gat._getTracker(\"UA-732601-9\");\r\npageTracker._initData();\r\npageTracker._trackPageview();\r\n// ]]></script>',NULL,'LocalBusiness',19,326),
(7,'google','<p>Google</p>\r\n<script type=\"text/javascript\">// <![CDATA[\r\n(function(){\r\nwindow.google={kEI:\"cie0UqnXNsTD0QWHtoDwDQ\",getEI:function(a){for(var b;a&amp;&amp;(!a.getAttribute||!(b=a.getAttribute(\"eid\")));)a=a.parentNode;return b||google.kEI},https:function(){return\"https:\"==window.location.protocol},kEXPI:\"17259,4000116,4007278,4007661,4007714,4007830,4008067,4008133,4008142,4009033,4009103,4009352,4009565,4009641,4010806,4010858,4010899,4011063,4011228,4011258,4011524,4011559,4011679,4011863,4012001,4012096,4012190,4012275,4012302,4012316,4012318,4012320,4012342,4012365,4012415,4012512,4012526,4012534,4012538,4012547,4012691,4012836,4012851,4012869,4012896,4013060,4013105,4013140,4013312,4013374,4013378,4013414,4013416,4013435,4013474,4013513,4013550,4013567,4013631,4013634,4013667,4013668,4013669,4013671,4013672,4013686,4013699,4013711,4013719,4013725,4013741,4013782,4013837,4013842,4013846,4013853,4013920,4013960,4013970,4013979,4014076,4014097,4014145,4014147,4014179,4014215,8500073,8500075\",kCSI:{e:\"17259,4000116,4007278,4007661,4007714,4007830,4008067,4008133,4008142,4009033,4009103,4009352,4009565,4009641,4010806,4010858,4010899,4011063,4011228,4011258,4011524,4011559,4011679,4011863,4012001,4012096,4012190,4012275,4012302,4012316,4012318,4012320,4012342,4012365,4012415,4012512,4012526,4012534,4012538,4012547,4012691,4012836,4012851,4012869,4012896,4013060,4013105,4013140,4013312,4013374,4013378,4013414,4013416,4013435,4013474,4013513,4013550,4013567,4013631,4013634,4013667,4013668,4013669,4013671,4013672,4013686,4013699,4013711,4013719,4013725,4013741,4013782,4013837,4013842,4013846,4013853,4013920,4013960,4013970,4013979,4014076,4014097,4014145,4014147,4014179,4014215,8500073,8500075\",ei:\"cie0UqnXNsTD0QWHtoDwDQ\"},authuser:0,ml:function(){},kHL:\"en\",time:function(){return(new Date).getTime()},log:function(a,b,c,l,k){var d=new Image,f=google.lc,e=google.li,g=\"\",h=\"gen_204\";k&amp;&amp;(h=\r\nk);d.onerror=d.onload=d.onabort=function(){delete f[e]};f[e]=d;c||-1!=b.search(\"&amp;ei=\")||(g=\"&amp;ei=\"+google.getEI(l));c=c||\"/\"+h+\"?atyp=i&amp;ct=\"+a+\"&amp;cad=\"+b+g+\"&amp;zx=\"+google.time();\r\na=/^http:/i;a.test(c)&amp;&amp;google.https()?(google.ml(Error(\"GLMM\"),!1,{src:c}),delete f[e]):(d.src=c,google.li=e+1)},lc:[],li:0,Toolbelt:{},y:{},x:function(a,b){google.y[a.id]=[a,b];return!1},load:function(a,b,c){google.x({id:a+\r\nm++},function(){google.load(a,b,c)})}};var m=0;})();\r\n(function(){google.sn=\"webhp\";google.timers={};google.startTick=function(a,b){google.timers[a]={t:{start:google.time()},bfr:!!b}};google.tick=function(a,b,g){google.timers[a]||google.startTick(a);google.timers[a].t[b]=g||google.time()};google.startTick(\"load\",!0);\r\ntry{}catch(d){}})();\r\nvar _gjwl=location;function _gjuc(){var a=_gjwl.href.indexOf(\"#\");if(0&lt;=a&amp;&amp;(a=_gjwl.href.substring(a),0&lt;a.indexOf(\"&amp;q=\")||0&lt;=a.indexOf(\"#q=\"))&amp;&amp;(a=a.substring(1),-1==a.indexOf(\"#\"))){for(var d=0;d&lt;a.length;){var b=d;\"&amp;\"==a.charAt(b)&amp;&amp;++b;var c=a.indexOf(\"&amp;\",b);-1==c&amp;&amp;(c=a.length);b=a.substring(b,c);if(0==b.indexOf(\"fp=\"))a=a.substring(0,d)+a.substring(c,a.length),c=d;else if(\"cad=h\"==b)return 0;d=c}_gjwl.href=\"/search?\"+a+\"&amp;cad=h\";return 1}return 0}\r\nfunction _gjh(){!_gjuc()&amp;&amp;window.google&amp;&amp;google.x&amp;&amp;google.x({id:\"GJH\"},function(){google.nav&amp;&amp;google.nav.gjh&amp;&amp;google.nav.gjh()})};\r\nwindow._gjh&amp;&amp;_gjh();\r\n// ]]></script>\r\n<script type=\"text/javascript\">// <![CDATA[\r\n  </head>\r\n  <body bgcolor=\"#fff\" style=\"font-family: arial, sans-serif;margin: 0;overflow-y: scroll;background: #fff;color: black\">\r\n    <script>(function(){var src=\'/images/srpr/nav_logo80.png\';var iesg=false;document.body.onload = function(){window.n &amp;&amp; window.n();if (document.images){new Image().src=src;}\r\nif (!iesg){document.f&amp;&amp;document.f.q.focus();document.gbqf&amp;&amp;document.gbqf.q.focus();}\r\n}\r\n})();\r\n// ]]></script>\r\n<p>&nbsp;</p>\r\n<div id=\"mngb\">\r\n<div id=\"gbar\" style=\"font-size: 13px; padding-top: 1px !important; height: 22px;\"><strong class=\"gb1\">Search</strong> <a class=\"gb1\" style=\"text-decoration: underline !important; color: #11c !important; font-family: arial, sans-serif;\" href=\"https://www.google.co.in/imghp?hl=en&amp;tab=wi\">Images</a> <a class=\"gb1\" style=\"text-decoration: underline !important; color: #11c !important; font-family: arial, sans-serif;\" href=\"https://maps.google.co.in/maps?hl=en&amp;tab=wl\">Maps</a> <a class=\"gb1\" style=\"text-decoration: underline !important; color: #11c !important; font-family: arial, sans-serif;\" href=\"https://play.google.com/?hl=en&amp;tab=w8\">Play</a> <a class=\"gb1\" style=\"text-decoration: underline !important; color: #11c !important; font-family: arial, sans-serif;\" href=\"https://www.youtube.com/?gl=IN&amp;tab=w1\">YouTube</a> <a class=\"gb1\" style=\"text-decoration: underline !important; color: #11c !important; font-family: arial, sans-serif;\" href=\"https://news.google.co.in/nwshp?hl=en&amp;tab=wn\">News</a> <a class=\"gb1\" style=\"text-decoration: underline !important; color: #11c !important; font-family: arial, sans-serif;\" href=\"https://mail.google.com/mail/?tab=wm\">Gmail</a> <a class=\"gb1\" style=\"text-decoration: underline !important; color: #11c !important; font-family: arial, sans-serif;\" href=\"https://drive.google.com/?tab=wo\">Drive</a> <a class=\"gb1\" style=\"text-decoration: underline !important; color: #11c !important; font-family: arial, sans-serif;\" href=\"http://www.google.co.in/intl/en/options/\"><span style=\"text-decoration: underline;\">More</span> &raquo;</a></div>\r\n<div id=\"guser\" style=\"font-size: 13px; padding-top: 1px !important; padding-bottom: 7px !important; text-align: right;\"><a class=\"gb4\" style=\"text-decoration: underline !important; color: #11c !important; font-family: arial, sans-serif;\" href=\"http://www.google.co.in/history/optout?hl=en\">Web History</a> | <a class=\"gb4\" style=\"text-decoration: underline !important; color: #11c !important; font-family: arial, sans-serif;\" href=\"../../../../../preferences?hl=en\">Settings</a> | <a id=\"gb_70\" class=\"gb4\" style=\"text-decoration: underline !important; color: #11c !important; font-family: arial, sans-serif;\" href=\"https://accounts.google.com/ServiceLogin?hl=en&amp;continue=https://www.google.co.in/%3Fgws_rd%3Dcr%26ei%3DVCe0UoTaLMKWrgfo-4CQAw\" target=\"_top\">Sign in</a></div>\r\n<div class=\"gbh\" style=\"left: 0; border-top: 1px solid #c9d7f1; font-size: 1px; height: 0; position: absolute; top: 24px; width: 100%;\">&nbsp;</div>\r\n<div class=\"gbh\" style=\"right: 0; border-top: 1px solid #c9d7f1; font-size: 1px; height: 0; position: absolute; top: 24px; width: 100%;\">&nbsp;</div>\r\n</div>\r\n<center><br id=\"lgpd\" clear=\"all\" />\r\n<div id=\"lga\">\r\n<div style=\"padding: 28px 0 3px;\">\r\n<div id=\"hplogo\" style=\"height: 110px; width: 276px; background: url(\'../../../../../images/srpr/logo9w.png\') no-repeat;\" title=\"Google\" align=\"left\">\r\n<div style=\"color: #777; font-size: 16px; font-weight: bold; position: relative; top: 70px; left: 218px;\">India</div>\r\n</div>\r\n</div>\r\n</div>\r\n<form style=\"margin-bottom: 20px;\" action=\"/search\" name=\"f\">\r\n<table cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td style=\"font-family: arial, sans-serif; line-height: 0.8em;\" width=\"25%\">&nbsp;</td>\r\n<td style=\"font-family: arial, sans-serif; line-height: 0.8em;\" align=\"center\" nowrap=\"nowrap\"><input style=\"font-family: inherit;\" type=\"hidden\" name=\"ie\" value=\"ISO-8859-1\" /> <input style=\"font-family: inherit;\" type=\"hidden\" name=\"hl\" value=\"en-IN\" /> <input style=\"font-family: inherit;\" type=\"hidden\" name=\"source\" value=\"hp\" />\r\n<div class=\"ds\" style=\"height: 32px; margin: 4px 0; display: inline-block; margin-left: 4px;\"><input class=\"lst\" style=\"color: #000; margin: 0; padding: 5px 8px 0 6px; vertical-align: top; height: 25px; width: 496px; font: 18px arial, sans-serif; font-family: inherit;\" title=\"Google Search\" type=\"text\" name=\"q\" value=\"\" size=\"57\" maxlength=\"2048\" /></div>\r\n<br style=\"line-height: 0;\" /> <span class=\"ds\" style=\"display: inline-block; margin: 3px 0 4px; margin-left: 4px;\"> <span class=\"lsbb\" style=\"background: #eee; border: solid 1px; border-color: #ccc #999 #999 #ccc; height: 30px; display: block;\"> <input class=\"lsb\" style=\"font-family: inherit; background: url(\'../../../../../images/srpr/nav_logo80.png\') 0 -258px repeat-x; border: none; color: #000; cursor: pointer; height: 30px; margin: 0; outline: 0; font: 15px arial, sans-serif; vertical-align: top;\" type=\"submit\" name=\"btnG\" value=\"Google Search\" /> </span> </span> <span class=\"ds\" style=\"display: inline-block; margin: 3px 0 4px; margin-left: 4px;\"> <span class=\"lsbb\" style=\"background: #eee; border: solid 1px; border-color: #ccc #999 #999 #ccc; height: 30px; display: block;\"> <input class=\"lsb\" style=\"font-family: inherit; background: url(\'../../../../../images/srpr/nav_logo80.png\') 0 -258px repeat-x; border: none; color: #000; cursor: pointer; height: 30px; margin: 0; outline: 0; font: 15px arial, sans-serif; vertical-align: top;\" onclick=\"if(this.form.q.value)this.checked=1; else top.location=\'/doodles/\'\" type=\"submit\" name=\"btnI\" value=\"I\'m Feeling Lucky\" /> </span> </span></td>\r\n<td class=\"fl sblc\" style=\"font-family: arial, sans-serif; line-height: 0.8em; padding-top: 5px;\" align=\"left\" nowrap=\"nowrap\" width=\"25%\"><a style=\"font-family: arial, sans-serif; color: #36c; text-decoration: none; display: block; margin: 2px 0; margin-left: 13px; font-size: 11px;\" href=\"../../../../../advanced_search?hl=en-IN&amp;authuser=0\">Advanced search</a> <a style=\"font-family: arial, sans-serif; color: #36c; text-decoration: none; display: block; margin: 2px 0; margin-left: 13px; font-size: 11px;\" href=\"../../../../../language_tools?hl=en-IN&amp;authuser=0\">Language tools</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<input id=\"gbv\" style=\"font-family: inherit;\" type=\"hidden\" name=\"gbv\" value=\"1\" /></form>\r\n<div id=\"gac_scont\">&nbsp;</div>\r\n<div style=\"font-size: 83%; min-height: 3.5em;\"><br />\r\n<div id=\"als\"><span id=\"addlang\">Google.co.in offered in: <a style=\"font-family: arial, sans-serif; color: #11c; text-decoration: none; padding: 0 3px;\" href=\"https://www.google.co.in/setprefs?sig=0_vQ5Ha0gqAaYyae247kD6ryv7wow%3D&amp;hl=hi&amp;source=homepage\">Hindi</a> <a style=\"font-family: arial, sans-serif; color: #11c; text-decoration: none; padding: 0 3px;\" href=\"https://www.google.co.in/setprefs?sig=0_vQ5Ha0gqAaYyae247kD6ryv7wow%3D&amp;hl=bn&amp;source=homepage\">Bengali</a> <a style=\"font-family: arial, sans-serif; color: #11c; text-decoration: none; padding: 0 3px;\" href=\"https://www.google.co.in/setprefs?sig=0_vQ5Ha0gqAaYyae247kD6ryv7wow%3D&amp;hl=te&amp;source=homepage\">Telugu</a> <a style=\"font-family: arial, sans-serif; color: #11c; text-decoration: none; padding: 0 3px;\" href=\"https://www.google.co.in/setprefs?sig=0_vQ5Ha0gqAaYyae247kD6ryv7wow%3D&amp;hl=mr&amp;source=homepage\">Marathi</a> <a style=\"font-family: arial, sans-serif; color: #11c; text-decoration: none; padding: 0 3px;\" href=\"https://www.google.co.in/setprefs?sig=0_vQ5Ha0gqAaYyae247kD6ryv7wow%3D&amp;hl=ta&amp;source=homepage\">Tamil</a> <a style=\"font-family: arial, sans-serif; color: #11c; text-decoration: none; padding: 0 3px;\" href=\"https://www.google.co.in/setprefs?sig=0_vQ5Ha0gqAaYyae247kD6ryv7wow%3D&amp;hl=gu&amp;source=homepage\">Gujarati</a> <a style=\"font-family: arial, sans-serif; color: #11c; text-decoration: none; padding: 0 3px;\" href=\"https://www.google.co.in/setprefs?sig=0_vQ5Ha0gqAaYyae247kD6ryv7wow%3D&amp;hl=kn&amp;source=homepage\">Kannada</a> <a style=\"font-family: arial, sans-serif; color: #11c; text-decoration: none; padding: 0 3px;\" href=\"https://www.google.co.in/setprefs?sig=0_vQ5Ha0gqAaYyae247kD6ryv7wow%3D&amp;hl=ml&amp;source=homepage\">Malayalam</a> <a style=\"font-family: arial, sans-serif; color: #11c; text-decoration: none; padding: 0 3px;\" href=\"https://www.google.co.in/setprefs?sig=0_vQ5Ha0gqAaYyae247kD6ryv7wow%3D&amp;hl=pa&amp;source=homepage\">Punjabi</a></span> <br /> </div>\r\n</div>\r\n<div style=\"font-size: 10pt;\">\r\n<div id=\"fll\" style=\"margin: 19px auto; text-align: center;\"><a style=\"font-family: arial, sans-serif; color: #11c; text-decoration: none; display: inline-block; margin: 0 12px;\" href=\"../../../../../intl/en/ads/\">Advertising Programs</a> <a style=\"font-family: arial, sans-serif; color: #11c; text-decoration: none; display: inline-block; margin: 0 12px;\" href=\"http://www.google.co.in/services/\">Business Solutions</a> <a style=\"font-family: arial, sans-serif; color: #11c; text-decoration: none; display: inline-block; margin: 0 12px;\" href=\"https://plus.google.com/104205742743787718296\" rel=\"publisher\">+Google</a> <a style=\"font-family: arial, sans-serif; color: #11c; text-decoration: none; display: inline-block; margin: 0 12px;\" href=\"../../../../../intl/en/about.html\">About Google</a> <a id=\"fehl\" style=\"font-family: arial, sans-serif; color: #11c; text-decoration: none; display: inline-block; margin: 0 12px;\" href=\"https://www.google.co.in/setprefdomain?prefdom=US&amp;sig=0_pi49fZ1kr1LGIo8KQe6YtxAwZkc%3D\">Google.com</a></div>\r\n</div>\r\n<p style=\"color: #767676; font-size: 8pt; font-family: arial, sans-serif;\">&copy; 2013 - <a style=\"font-family: arial, sans-serif; color: #11c; text-decoration: none;\" href=\"../../../../../intl/en/policies/\">Privacy &amp; Terms</a></p>\r\n</center>\r\n<div id=\"xjsd\">&nbsp;</div>\r\n<div id=\"xjsi\" data-jiis=\"bp\">\r\n<script type=\"text/javascript\">// <![CDATA[\r\nif(google.y)google.y.first=[];(function(){function b(a){window.setTimeout(function(){var c=document.createElement(\"script\");c.src=a;document.getElementById(\"xjsd\").appendChild(c)},0)}google.dljp=function(a){google.xjsu=a;b(a)};google.dlj=b;})();\r\nif(!google.xjs){window._=window._||{};window._._DumpException=function(e){throw e};if(google.timers&amp;&amp;google.timers.load.t){google.timers.load.t.xjsls=new Date().getTime();}google.dljp(\'/xjs/_/js/k\\x3dxjs.hp.en_US.DZx8zDLimks.O/m\\x3dsb_he,pcc/rt\\x3dj/d\\x3d1/sv\\x3d1/rs\\x3dAItRSTNRwfTVpO-ypKEeSFDoHZDFxnH7YQ\');google.xjs=1;}google.pmc={\"sb\":{\"agen\":true,\"cgen\":true,\"client\":\"heirloom-hp\",\"dh\":true,\"ds\":\"\",\"eqch\":true,\"fl\":true,\"host\":\"google.co.in\",\"jsonp\":true,\"msgs\":{\"dym\":\"Did you mean:\",\"lcky\":\"I\\u0026#39;m Feeling Lucky\",\"lml\":\"Learn more\",\"oskt\":\"Input tools\",\"psrc\":\"This search was removed from your \\u003Ca href=\\\"/history\\\"\\u003EWeb History\\u003C/a\\u003E\",\"psrl\":\"Remove\",\"sbit\":\"Search by image\",\"srch\":\"Google Search\"},\"ovr\":{},\"pq\":\"\",\"qcpw\":false,\"scd\":10,\"sce\":5,\"stok\":\"E4_KTzz7SvZUfwslkLyvuxw1ImQ\"},\"hp\":{},\"pcc\":{}};google.y.first.push(function(){if(google.med){google.med(\'init\');google.initHistory();google.med(\'history\');}});if(google.j&amp;&amp;google.j.en&amp;&amp;google.j.xi){window.setTimeout(google.j.xi,0);}\r\n// ]]></script>\r\n</div>\r\n<script type=\"text/javascript\">// <![CDATA[\r\n(function(){var b,c,d,e;function g(a,f){a.removeEventListener?(a.removeEventListener(\"load\",f,!1),a.removeEventListener(\"error\",f,!1)):(a.detachEvent(\"onload\",f),a.detachEvent(\"onerror\",f))}function h(a){e=(new Date).getTime();++c;a=a||window.event;a=a.target||a.srcElement;g(a,h)}var k=document.getElementsByTagName(\"img\");b=k.length;\r\nfor(var l=c=0,m;l&lt;b;++l)m=k[l],m.complete||\"string\"!=typeof m.src||!m.src?++c:m.addEventListener?(m.addEventListener(\"load\",h,!1),m.addEventListener(\"error\",h,!1)):(m.attachEvent(\"onload\",h),m.attachEvent(\"onerror\",h));d=b-c;\r\nfunction n(){if(google.timers.load.t){google.timers.load.t.ol=(new Date).getTime();google.timers.load.t.iml=e;google.kCSI.imc=c;google.kCSI.imn=b;google.kCSI.imp=d;void 0!==google.stt&amp;&amp;(google.kCSI.stt=google.stt);google.csiReport&amp;&amp;google.csiReport()}}window.addEventListener?window.addEventListener(\"load\",n,!1):window.attachEvent&amp;&amp;window.attachEvent(\"onload\",n);google.timers.load.t.prt=e=(new Date).getTime();})();\r\n// ]]></script>',NULL,'LocalBusiness',19,326);
insert into `template` values 
(8,'soar','<p>Soarlogic - Web,Mobile,Social Application,Facebook Application,Android,I-phone,Technology and Outsourcing,Offshore Development,IT services,IT enable Services,Web designing,Dehradun,Uttarakhand,India</p>\r\n<!-- Update your html tag to include the itemscope and itemtype attributes -->\r\n<p>&nbsp;</p>\r\n<!-- Add the following three tags inside head -->\r\n<script type=\"text/javascript\" src=\"../../../../../theme/theme2/js/jquery-1.5.1.min.js\">// <![CDATA[\r\n    <script type=\"text/javascript\" src=\"/theme/theme2/js/jquery.innerfade.js\"/>\r\n    <script type=\"text/javascript\" src=\"/theme/theme2/js/common.js\"/>\r\n    <script type=\"text/javascript\" src=\"/theme/theme2/js/transify-min.js\"/>\r\n    <script type=\"text/javascript\" src=\"/theme/theme2/js/script.js\"/>\r\n  </head>\r\n  <body style=\"font-family: &quot;lucida grande&quot;, verdana, helvetica, arial, sans-serif;font-size: 12px;margin: 0;padding: 0;width: 100%;color: #676767;text-align: justify\">\r\n<div id=\"container\" align=\"center\" style=\"margin: 0;padding: 0\">\r\n\r\n\r\n    <div align=\"center\" class=\"layout_header\" style=\"margin: 0;padding: 0;width: 100%;background: -o-linear-gradient(#31506B, #07243B);zoom: 1\">\r\n        <div class=\"soar_width\" style=\"margin: 0;padding: 0;width: 1000px;padding-bottom: 3px\">\r\n    <div class=\"soar_logo\" style=\"margin: 0;padding: 0;float: left;margin-top: 15px\">\r\n        <a href=\"http://www.soarlogic.com\" style=\"margin: 0;padding: 0\">\r\n            <img src=\"/theme/theme2/img/header/soarlogic_logo1.png\" alt=\"Soarlogic Information Technologies Pvt.Ltd.\" style=\"margin: 0;padding: 0;border: none;outline: none;vertical-align: middle\"/></a></div>\r\n    <div class=\"slogan_div\" style=\"margin: 0;padding: 0;float: left;width: 520px;text-align: left;font-size: 12px;font-weight: bold;color: #fff;margin-top: 20px\"> Think Differently, We Will Make The Difference</div>\r\n    <div class=\"share_outer\" style=\"margin: 0;padding: 0;width: 300px;float: right;margin-top: 5px;margin-bottom: 2px\">\r\n        <div class=\"blog\" style=\"margin: 0;padding: 0;width: 80px;float: right;border-radius: 2px;background: #D53E3E\">\r\n            <a href=\"http://soarlogic.wordpress.com\" target=\"_blank\" class=\"menu_link_blog\" style=\"margin: 0;padding: 0;color: #FFF;text-decoration: none;font-family: verdana, times, sans-serif;line-height: 20px;font-weight: bold;width: 50px\">Blog</a>        </div>\r\n        <div class=\"side_width_right\" style=\"margin: 0;padding: 0;width: 5px;float: right\"> </div>\r\n        <div class=\"blog\" style=\"margin: 0;padding: 0;width: 80px;float: right;border-radius: 2px;background: #D53E3E\">\r\n            <a href=\"/homes/site_map\" class=\"menu_link_blog\" style=\"margin: 0;padding: 0;color: #FFF;text-decoration: none;font-family: verdana, times, sans-serif;line-height: 20px;font-weight: bold;width: 50px\">Site Map</a>        </div>\r\n        <div class=\"side_width_height\" style=\"margin: 0;padding: 0;clear: both;height: 5px\"/>\r\n        <div align=\"right\" style=\"margin: 0;padding: 0\">\r\n            <a href=\"https://www.facebook.com/soarlogic\" class=\"a_class\" target=\"_blank\" style=\"margin: 0;padding: 0;text-decoration: none\">\r\n            <img src=\"/theme/theme2/img/header/soarlogic-facebook-icon.png\" alt=\"Soarlogic Information Technologies Pvt.Ltd.\" style=\"margin: 0;padding: 0;border: none;outline: none;vertical-align: middle\"/></a>\r\n            <a href=\"http://www.youtube.com/watch?v=GA5VcVC-FG4\" class=\"a_class\" target=\"_blank\" style=\"margin: 0;padding: 0;text-decoration: none\">\r\n            <img src=\"/theme/theme2/img/header/soarlogic-ccinc_youtube.png\" alt=\"Soarlogic Information Technologies Pvt.Ltd.\" style=\"margin: 0;padding: 0;border: none;outline: none;vertical-align: middle\"/></a>\r\n            <a href=\"https://plus.google.com/114839502361298689229/posts\" class=\"a_class\" target=\"_blank\" style=\"margin: 0;padding: 0;text-decoration: none\">\r\n            <img src=\"/theme/theme2/img/header/soarlogic-google_plus_icon.png\" alt=\"Soarlogic Information Technologies Pvt.Ltd.\" style=\"margin: 0;padding: 0;border: none;outline: none;vertical-align: middle\"/></a>\r\n            <a href=\"http://www.linkedin.com/company/soarlogic-information-technologies-pvt.ltd.?trk=hb_tab_compy_id_523693\" class=\"a_class\" target=\"_blank\" style=\"margin: 0;padding: 0;text-decoration: none\">\r\n            <img src=\"/theme/theme2/img/header/soarlogic-linkedin_256.png\" alt=\"Soarlogic Information Technologies Pvt.Ltd.\" style=\"margin: 0;padding: 0;border: none;outline: none;vertical-align: middle\"/></a>\r\n            <a href=\"https://twitter.com/soarlogic\" class=\"a_class\" target=\"_blank\" style=\"margin: 0;padding: 0;text-decoration: none\">\r\n            <img src=\"/theme/theme2/img/header/soarlogic-twitter-icon.png\" alt=\"Soarlogic Information Technologies Pvt.Ltd.\" style=\"margin: 0;padding: 0;border: none;outline: none;vertical-align: middle\"/></a>\r\n            <a href=\"http://www.slideshare.net/bistanil/soarlogic-service\" target=\"_blank\" class=\"a_class\" style=\"margin: 0;padding: 0;text-decoration: none\">\r\n            <img src=\"/theme/theme2/img/header/soarlogic-slideshare-icon.png\" alt=\"Soarlogic Information Technologies Pvt.Ltd.\" style=\"margin: 0;padding: 0;border: none;outline: none;vertical-align: middle\"/></a>\r\n            <a href=\"http://www.flickr.com/people/soarlogic/\" target=\"_blank\" class=\"a_class\" style=\"margin: 0;padding: 0;text-decoration: none\">\r\n            <img src=\"/theme/theme2/img/header/soarlogic-Flickr-Icon.png\" alt=\"Soarlogic Information Technologies Pvt.Ltd.\" style=\"margin: 0;padding: 0;border: none;outline: none;vertical-align: middle\"/></a>\r\n        </div>\r\n    </div>\r\n    <div class=\"clear_both\" style=\"margin: 0;padding: 0;clear: both;height: 0;line-height: 0;font-size: 0\"/>\r\n</div>    </div>\r\n    <div id=\"tab\" align=\"center\" class=\"layout_tab\" style=\"margin: 0;padding: 0;background: url(../img/tab_bg.png) repeat-x;border-bottom: #07243B 3px solid;height: 38px\">\r\n        <div class=\"tab_list\" align=\"center\" style=\"margin: 0;padding: 0;width: 1000px\">\r\n    <ul id=\"header_tab\" style=\"margin: 0;padding: 0;float: left;list-style: none\"><li id=\"top_tab1\" onmouseover=\"mopen(1)\" onmouseout=\"mclose(1);\" style=\"margin: 0;padding: 0;list-style: none;font-weight: bold;float: left;font: bold 14px arial;width: 124px\">\r\n            <a class=\"home_tab_\" href=\"/\" style=\"margin: 0;padding: 0;line-height: 40px;text-decoration: none;color: #EBEFF0;vertical-align: middle\">Home\r\n            </a>\r\n        </li>\r\n                                <li id=\"top_tab12\" onmouseover=\"mopen(\'12\')\" onmouseout=\"mclose(\'12\');\" style=\"margin: 0;padding: 0;list-style: none;font-weight: bold;float: left;font: bold 14px arial;width: 124px\">\r\n                                                <a class=\"header_tab_color\" href=\"/homes/about_us\" style=\"margin: 0;padding: 0;line-height: 40px;text-decoration: none;color: #EBEFF0\">\r\n                    About Us                </a>\r\n                                                                            <ul id=\"sub_tab_12\" style=\"margin: 0;padding: 0;margin-top: -1px;width: 241px;color: #ccc;line-height: 40px;display: none;border-bottom: 6px solid #07243B;float: left;z-index: 12;position: absolute;border-left: 6px solid #07243B;border-right: 6px solid #07243B\"><a class=\"left_menu_div\" href=\"/homes/about_us\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"margin: 0;padding: 0;list-style: none;font-weight: bold;float: left;font: bold 14px arial;width: 238px;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    About Us                               </li>\r\n                                                           </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/homes/why_we\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"margin: 0;padding: 0;list-style: none;font-weight: bold;float: left;font: bold 14px arial;width: 238px;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Why We                               </li>\r\n                                                           </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/homes/mission_vision_and_our_goal\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"margin: 0;padding: 0;list-style: none;font-weight: bold;float: left;font: bold 14px arial;width: 238px;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Mission Vision And Our Goal                               </li>\r\n                                                           </a>\r\n                                                                                </ul></li>\r\n                                        <li id=\"top_tab13\" onmouseover=\"mopen(\'13\')\" onmouseout=\"mclose(\'13\');\" style=\"margin: 0;padding: 0;list-style: none;font-weight: bold;float: left;font: bold 14px arial;width: 124px\">\r\n                                                <a class=\"header_tab_color\" href=\"/homes/services\" style=\"margin: 0;padding: 0;line-height: 40px;text-decoration: none;color: #EBEFF0\">\r\n                    Services                </a>\r\n                                                                            <ul id=\"sub_tab_13\" style=\"margin: 0;padding: 0;margin-top: -1px;width: 241px;color: #ccc;line-height: 40px;display: none;border-bottom: 6px solid #07243B;float: left;z-index: 12;position: absolute;border-left: 6px solid #07243B;border-right: 6px solid #07243B\"><a class=\"left_menu_div\" href=\"/homes/architecture_and_technology_strategy \" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"margin: 0;padding: 0;list-style: none;font-weight: bold;float: left;font: bold 14px arial;width: 238px;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Architecture And Technology Strategy                                </li>\r\n                                                           </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/homes/software_development\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"margin: 0;padding: 0;list-style: none;font-weight: bold;float: left;font: bold 14px arial;width: 238px;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Software Development                               </li>\r\n                                                           </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/homes/quality_assurance_and_testing\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"margin: 0;padding: 0;list-style: none;font-weight: bold;float: left;font: bold 14px arial;width: 238px;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Quality Assurance And Testing                               </li>\r\n                                                           </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/homes/maintenance_and_support\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"margin: 0;padding: 0;list-style: none;font-weight: bold;float: left;font: bold 14px arial;width: 238px;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Maintenance And Support                               </li>\r\n                                                           </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/homes/process_consulting\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"margin: 0;padding: 0;list-style: none;font-weight: bold;float: left;font: bold 14px arial;width: 238px;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Process Consulting                               </li>\r\n                                                           </a>\r\n                                                                                </ul></li>\r\n                                        <li id=\"top_tab14\" onmouseover=\"mopen(\'14\')\" onmouseout=\"mclose(\'14\');\" style=\"margin: 0;padding: 0;list-style: none;font-weight: bold;float: left;font: bold 14px arial;width: 124px\">\r\n                                                <a class=\"header_tab_color\" href=\"/clients/clients\" style=\"margin: 0;padding: 0;line-height: 40px;text-decoration: none;color: #EBEFF0\">\r\n                    Clients                </a>\r\n                                                                            <ul id=\"sub_tab_14\" style=\"margin: 0;padding: 0;margin-top: -1px;width: 241px;color: #ccc;line-height: 40px;display: none;border-bottom: 6px solid #07243B;float: left;z-index: 12;position: absolute;border-left: 6px solid #07243B;border-right: 6px solid #07243B\"><a class=\"left_menu_div\" href=\"/clients/clients\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                 <li style=\"margin: 0;padding: 0;list-style: none;font-weight: bold;float: left;font: bold 14px arial;width: 238px;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Clients                                 </li>\r\n                            </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/clients/client_testimonial\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                 <li style=\"margin: 0;padding: 0;list-style: none;font-weight: bold;float: left;font: bold 14px arial;width: 238px;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Client Testimonial                                 </li>\r\n                            </a>\r\n                                                                                </ul></li>\r\n                                        <li id=\"top_tab18\" onmouseover=\"mopen(\'18\')\" onmouseout=\"mclose(\'18\');\" style=\"margin: 0;padding: 0;list-style: none;font-weight: bold;float: left;font: bold 14px arial;width: 124px\">\r\n                                                <a class=\"header_tab_color\" href=\"/development_labs/index\" style=\"margin: 0;padding: 0;line-height: 40px;text-decoration: none;color: #EBEFF0\">\r\n                    Dev Lab                </a>\r\n                                                    </li><li id=\"top_tab17\" onmouseover=\"mopen(\'17\')\" onmouseout=\"mclose(\'17\');\" style=\"margin: 0;padding: 0;list-style: none;font-weight: bold;float: left;font: bold 14px arial;width: 124px\">\r\n                                                <a class=\"header_tab_color\" href=\"/homes/agile_methodology\" style=\"margin: 0;padding: 0;line-height: 40px;text-decoration: none;color: #EBEFF0\">\r\n                    Technology                </a>\r\n                                                                            <ul id=\"sub_tab_17\" style=\"width: 320px;border-left: 6px solid #07243B;border-right: 6px solid #07243B;margin: 0;padding: 0;margin-top: -1px;color: #ccc;line-height: 40px;display: none;border-bottom: 6px solid #07243B;float: left;z-index: 12;position: absolute\"><a class=\"left_menu_div\" href=\"/homes/agile_methodology\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"float: left;width: 157px;margin: 0;padding: 0;list-style: none;font-weight: bold;font: bold 14px arial;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Agile Methodology                               </li>\r\n                                                           </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/homes/cake_php\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"float: left;width: 157px;margin: 0;padding: 0;list-style: none;font-weight: bold;font: bold 14px arial;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Cake Php                               </li>\r\n                                                           </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/homes/joomla\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"float: left;width: 157px;margin: 0;padding: 0;list-style: none;font-weight: bold;font: bold 14px arial;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Joomla                               </li>\r\n                                                           </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/homes/drupal\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"float: left;width: 157px;margin: 0;padding: 0;list-style: none;font-weight: bold;font: bold 14px arial;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Drupal                               </li>\r\n                                                           </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/homes/wordpress\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"float: left;width: 157px;margin: 0;padding: 0;list-style: none;font-weight: bold;font: bold 14px arial;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Wordpress                               </li>\r\n                                                           </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/homes/magento\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"float: left;width: 157px;margin: 0;padding: 0;list-style: none;font-weight: bold;font: bold 14px arial;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Magento                               </li>\r\n                                                           </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/homes/codeigniter\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"float: left;width: 157px;margin: 0;padding: 0;list-style: none;font-weight: bold;font: bold 14px arial;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Codeigniter                               </li>\r\n                                                           </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/homes/ajax\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"float: left;width: 157px;margin: 0;padding: 0;list-style: none;font-weight: bold;font: bold 14px arial;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Ajax                               </li>\r\n                                                           </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/homes/HTML5\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"float: left;width: 157px;margin: 0;padding: 0;list-style: none;font-weight: bold;font: bold 14px arial;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    HTML5                               </li>\r\n                                                           </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/homes/ruby_on_rails\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"float: left;width: 157px;margin: 0;padding: 0;list-style: none;font-weight: bold;font: bold 14px arial;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Ruby On Rails                               </li>\r\n                                                           </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/homes/java\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"float: left;width: 157px;margin: 0;padding: 0;list-style: none;font-weight: bold;font: bold 14px arial;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Java                               </li>\r\n                                                           </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/homes/spring_struts\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"float: left;width: 157px;margin: 0;padding: 0;list-style: none;font-weight: bold;font: bold 14px arial;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Spring Struts                               </li>\r\n                                                           </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/homes/hibernate\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"float: left;width: 157px;margin: 0;padding: 0;list-style: none;font-weight: bold;font: bold 14px arial;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Hibernate                               </li>\r\n                                                           </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/homes/zend_framework\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"float: left;width: 157px;margin: 0;padding: 0;list-style: none;font-weight: bold;font: bold 14px arial;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Zend Framework                               </li>\r\n                                                           </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/homes/yii \" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"float: left;width: 157px;margin: 0;padding: 0;list-style: none;font-weight: bold;font: bold 14px arial;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Yii                                </li>\r\n                                                           </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/homes/jquery\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"float: left;width: 157px;margin: 0;padding: 0;list-style: none;font-weight: bold;font: bold 14px arial;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Jquery                               </li>\r\n                                                           </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/homes/android\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"float: left;width: 157px;margin: 0;padding: 0;list-style: none;font-weight: bold;font: bold 14px arial;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Android                               </li>\r\n                                                           </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/homes/asp_.net m_v_c\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"float: left;width: 157px;margin: 0;padding: 0;list-style: none;font-weight: bold;font: bold 14px arial;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Asp .net M V C                               </li>\r\n                                                           </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/homes/sql_server\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"float: left;width: 157px;margin: 0;padding: 0;list-style: none;font-weight: bold;font: bold 14px arial;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Sql Server                               </li>\r\n                                                           </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/homes/mySql\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"float: left;width: 157px;margin: 0;padding: 0;list-style: none;font-weight: bold;font: bold 14px arial;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    MySql                               </li>\r\n                                                           </a>\r\n                                                                                </ul></li>\r\n                                        <li id=\"top_tab16\" onmouseover=\"mopen(\'16\')\" onmouseout=\"mclose(\'16\');\" style=\"margin: 0;padding: 0;list-style: none;font-weight: bold;float: left;font: bold 14px arial;width: 124px\">\r\n                                                <a class=\"header_tab_color\" href=\"/homes/careers\" style=\"margin: 0;padding: 0;line-height: 40px;text-decoration: none;color: #EBEFF0\">\r\n                    Careers                </a>\r\n                                                                            <ul id=\"sub_tab_16\" style=\"margin: 0;padding: 0;margin-top: -1px;width: 241px;color: #ccc;line-height: 40px;display: none;border-bottom: 6px solid #07243B;float: left;z-index: 12;position: absolute;border-left: 6px solid #07243B;border-right: 6px solid #07243B\"><a class=\"left_menu_div\" href=\"/homes/careers\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"margin: 0;padding: 0;list-style: none;font-weight: bold;float: left;font: bold 14px arial;width: 238px;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Careers                               </li>\r\n                                                           </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/contacts/send_your_resume\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                 <li style=\"margin: 0;padding: 0;list-style: none;font-weight: bold;float: left;font: bold 14px arial;width: 238px;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Send Your Resume                                 </li>\r\n                            </a>\r\n                                                                                </ul></li>\r\n                                        <li id=\"top_tab15\" onmouseover=\"mopen(\'15\')\" onmouseout=\"mclose(\'15\');\" style=\"margin: 0;padding: 0;list-style: none;font-weight: bold;float: left;font: bold 14px arial;width: 124px\">\r\n                                                <a class=\"header_tab_color\" href=\"/contacts/contact_us\" style=\"margin: 0;padding: 0;line-height: 40px;text-decoration: none;color: #EBEFF0\">\r\n                    Contact Us                </a>\r\n                                                                            <ul id=\"sub_tab_15\" style=\"margin: 0;padding: 0;margin-top: -1px;width: 241px;color: #ccc;line-height: 40px;display: none;border-bottom: 6px solid #07243B;float: left;z-index: 12;position: absolute;border-left: 6px solid #07243B;border-right: 6px solid #07243B\"><a class=\"left_menu_div\" href=\"/contacts/contact_us\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                 <li style=\"margin: 0;padding: 0;list-style: none;font-weight: bold;float: left;font: bold 14px arial;width: 238px;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Contact Us                                 </li>\r\n                            </a>\r\n                                                                                                        <a class=\"left_menu_div\" href=\"/homes/offices\" style=\"margin: 0;padding: 0;line-height: 40px;width: 280px;font-size: 12px;text-decoration: none;margin-left: 0;color: #0A3252;text-align: left;font-weight: bold\">\r\n                                                              <li style=\"margin: 0;padding: 0;list-style: none;font-weight: bold;float: left;font: bold 14px arial;width: 238px;text-align: left;padding-left: 3px;color: black;background: white;line-height: 25px;font-size: 12px\">\r\n                                    Offices                               </li>\r\n                                                           </a>\r\n                                                                                </ul></li>\r\n                    </ul><div class=\"clear_both\" style=\"margin: 0;padding: 0;clear: both;height: 0;line-height: 0;font-size: 0\"/>\r\n</div>\r\n    </div>\r\n    <div class=\"siteHeightSeparation tab_bottom_line\" style=\"margin: 0;padding: 0\"> </div>\r\n    <div align=\"center\" style=\"margin: 0;padding: 0\">\r\n                <div class=\"site_width\" style=\"margin: 0;padding: 0\">\r\n<div style=\"margin: 0;padding: 0\"><div class=\"home_image_box\" style=\"margin: 0;padding: 0\">\r\n    <div id=\"main\" style=\"margin: 0;padding: 0;margin-left: 5px;text-align: center;width: 1000px;position: relative\">\r\n        <div id=\"gallery\" style=\"margin: 0;padding: 0;border: 1px solid white;width: 1000px;overflow: hidden\">\r\n            <div id=\"slides\" style=\"margin: 0;padding: 0;height: 355px;width: 100%;overflow: hidden\">\r\n                <div class=\"slide\" style=\"margin: 0;padding: 0;float: left;width: 995px\">\r\n                    <img src=\"/theme/theme2/img/slider1/team.png\" option=\"\" alt=\"\" style=\"margin: 0;padding: 0\"/></div>\r\n                <div class=\"slide\" style=\"margin: 0;padding: 0;float: left;width: 995px\">\r\n                    <img src=\"/theme/theme2/img/slider1/idea1.png\" option=\"\" alt=\"\" style=\"margin: 0;padding: 0\"/></div>\r\n                <div class=\"slide\" style=\"margin: 0;padding: 0;float: left;width: 995px\">\r\n                    <img src=\"/theme/theme2/img/slider1/design1.png\" option=\"\" alt=\"\" style=\"margin: 0;padding: 0\"/></div>\r\n                <div class=\"slide\" style=\"margin: 0;padding: 0;float: left;width: 995px\">\r\n                    <img src=\"/theme/theme2/img/slider1/development_soarlogic1.png\" option=\"\" alt=\"\" style=\"margin: 0;padding: 0\"/></div>\r\n                <div class=\"slide\" style=\"margin: 0;padding: 0;float: left;width: 995px\">\r\n                    <img src=\"/theme/theme2/img/slider1/costumer.png\" option=\"\" alt=\"\" style=\"margin: 0;padding: 0\"/></div>\r\n                <div class=\"clear_both\" style=\"margin: 0;padding: 0;clear: both;height: 0;line-height: 0;font-size: 0\"/>\r\n            </div>\r\n            <div id=\"menu\" class=\"small_slide_image\" style=\"margin: 0;padding: 0;background: -o-linear-gradient(#E1E1E1, #F4F4F4);-webkit-border-radius: 4px;-moz-border-radius: 4px;border-radius: 4px;zoom: 1;width: 100%\">\r\n                <ul style=\"margin: 0;padding: 0\"><li class=\"menuItem\" style=\"margin: 0;padding: 0;border-right: solid 2px #FFF;width: 60px;display: inline-block;list-style: none;height: 45px;overflow: hidden\">\r\n                        <a href=\"#\" style=\"margin: 0;padding: 0;outline: none;border: none;display: block;height: 35px;padding-top: 10px\">\r\n                    <img src=\"/theme/theme2/img/mobanz_small_home/soarlogic_team.png\" option=\"\" alt=\"\" style=\"margin: 0;padding: 0;outline: none;border: none;vertical-align: middle\"/></a>\r\n                    </li>\r\n                    <li class=\"menuItem\" style=\"margin: 0;padding: 0;border-right: solid 2px #FFF;width: 60px;display: inline-block;list-style: none;height: 45px;overflow: hidden\">\r\n                        <a href=\"#\" style=\"margin: 0;padding: 0;outline: none;border: none;display: block;height: 35px;padding-top: 10px\">\r\n                    <img src=\"/theme/theme2/img/mobanz_small_home/development_tourn_things_sit_5.png\" option=\"\" alt=\"\" style=\"margin: 0;padding: 0;outline: none;border: none;vertical-align: middle\"/></a>\r\n                    </li>\r\n                    <li class=\"menuItem\" style=\"margin: 0;padding: 0;border-right: solid 2px #FFF;width: 60px;display: inline-block;list-style: none;height: 45px;overflow: hidden\">\r\n                        <a href=\"#\" style=\"margin: 0;padding: 0;outline: none;border: none;display: block;height: 35px;padding-top: 10px\">\r\n                    <img src=\"/theme/theme2/img/mobanz_small_home/thought_soarlogic.png\" option=\"\" alt=\"\" style=\"margin: 0;padding: 0;outline: none;border: none;vertical-align: middle\"/></a>\r\n                    </li>\r\n                    <li class=\"menuItem\" style=\"margin: 0;padding: 0;border-right: solid 2px #FFF;width: 60px;display: inline-block;list-style: none;height: 45px;overflow: hidden\">\r\n                        <a href=\"#\" style=\"margin: 0;padding: 0;outline: none;border: none;display: block;height: 35px;padding-top: 10px\">\r\n                    <img src=\"/theme/theme2/img/mobanz_small_home/soarlogic_process_for_development.png\" option=\"\" alt=\"\" style=\"margin: 0;padding: 0;outline: none;border: none;vertical-align: middle\"/></a>\r\n                    </li>\r\n                    <li style=\"margin: 0;padding: 0;width: 60px;display: inline-block;list-style: none;height: 45px;overflow: hidden\">\r\n                        <a href=\"#\" style=\"margin: 0;padding: 0;outline: none;border: none;display: block;height: 35px;padding-top: 10px\">\r\n                    <img src=\"/theme/theme2/img/mobanz_small_home/build_relation_with_customer.png\" option=\"\" alt=\"\" style=\"margin: 0;padding: 0;outline: none;border: none;vertical-align: middle\"/></a>\r\n                    </li>\r\n                </ul></div>\r\n        </div>\r\n    </div>\r\n    <div class=\"site_height_separation clear\" style=\"margin: 0;padding: 0;height: 15px\"/>\r\n</div>\r\n</div>\r\n<!--  div start -->\r\n<div class=\"small_boxes\" style=\"margin: 0;padding: 0;width: 1000px;align: center;margin-left: 7px\">\r\n        <!-- start home box 1 -->\r\n        <div class=\"home_small_box\" id=\"pop_up_1\" name=\"pop_1\" onmouseover=\"open_pop_up(1);\" style=\"margin: 0;padding: 0;width: 317px;height: 100px;float: left;border: solid 2px #E6E6E6;background: -webkit-gradient(linear, left top, left bottom, from(#FFF), to(#E6E6E6))\">\r\n    <div class=\"image_box_new\" style=\"margin: 0;padding: 0;width: 100px;height: 71px;float: left\">\r\n        <img src=\"/theme/theme2/img/footer/soarlogic_small1.png\" class=\"soarlogic_image\" alt=\"\" style=\"margin: 0;padding: 0;margin-top: 1px;width: 99px;height: 98px\"/></div>\r\n    <div style=\"margin: 0;padding: 0\"><h3 class=\"bottom_heading\" style=\"margin: 0;padding: 0;font-size: 19px;font-family: gorgio;text-align: left;font-weight: bold;color: #07243B\">What we follow at Soarlogic</h3></div>\r\n    <div class=\"bottom_tab_link\" style=\"margin: 0;padding: 0;font-size: 12px;font-family: aril, helventica, sans-serif;text-decoration: none;margin-left: 5px;text-align: left;margin-top: 5px\">Primary concern,satisfied the customer</div>\r\n    <div class=\"clear_both\" style=\"margin: 0;padding: 0;clear: both;height: 0;line-height: 0;font-size: 0\"/>\r\n    <div class=\"image_box_bottom\" style=\"margin: -3px 3px 0 3px;padding: 0;float: right\">\r\n        <img src=\"/theme/theme2/img/box_img.png\" controller=\"homes\" action=\"about_us\" alt=\"\" style=\"margin: 0;padding: 0\"/></div>\r\n    <div id=\"pop_up_box_1\" class=\"pop_up_block_1\" style=\"margin: 0;padding: 5px;display: none;position: absolute;height: 300px;border: 5px solid #ddd;z-index: 99999;-webkit-box-shadow: 0 0 5px #000;-moz-box-shadow: 0 0 5px #000;box-shadow: 0 0 5px #000;-webkit-border-radius: 10px;-moz-border-radius: 10px;border-radius: 10px;width: 300px;background: -webkit-gradient(linear, left top, left bottom, from(#FFF), to(#E6E6E6))\"><div class=\"box_height\" style=\"margin: 0;padding: 0;height: 5px\"/>\r\n<div style=\"margin: 0;padding: 0\"><h1 class=\"bottom_heading\" style=\"margin: 0;padding: 0;font-size: 19px;font-family: gorgio;text-align: left;font-weight: bold;color: #07243B\">What we follow at Soarlogic</h1></div>\r\n<div class=\"box_first\" style=\"margin: 0;padding: 0;height: 10px\"/>\r\n<div class=\"bottom_tab_link\" style=\"margin: 0;padding: 0;font-size: 12px;font-family: aril, helventica, sans-serif;text-decoration: none;margin-left: 5px;text-align: left;margin-top: 5px\">\r\n    <h4 class=\"h1_class_home\" style=\"margin: 0;padding: 0;font-size: 14px;line-height: 12px\">To create something new for the world.</h4><br style=\"margin: 0;padding: 0\"/><h1 class=\"h1_class_home\" style=\"margin: 0;padding: 0;font-size: 14px;line-height: 12px\">Our values serve as a compass for our actions</h1><br style=\"margin: 0;padding: 0\"/><h1 class=\"h1_class_home\" style=\"margin: 0;padding: 0;font-size: 14px;line-height: 12px\">The courage is shape a better future</h1><br style=\"margin: 0;padding: 0\"/><h1 class=\"h1_class_home\" style=\"margin: 0;padding: 0;font-size: 14px;line-height: 12px\">Leverage collective genius</h1><br style=\"margin: 0;padding: 0\"/><h1 class=\"h1_class_home\" style=\"margin: 0;padding: 0;font-size: 14px;line-height: 12px\">Be real</h1><br style=\"margin: 0;padding: 0\"/><h1 class=\"h1_class_home\" style=\"margin: 0;padding: 0;font-size: 14px;line-height: 12px\">If it is to be, it\'s up to us</h1><br style=\"margin: 0;padding: 0\"/><h1 class=\"h1_class_home\" style=\"margin: 0;padding: 0;font-size: 14px;line-height: 12px\">Committed in heart and mind</h1><br style=\"margin: 0;padding: 0\"/><h1 class=\"h1_class_home\" style=\"margin: 0;padding: 0;font-size: 14px;line-height: 12px\">What we do, we do well</h1><br style=\"margin: 0;padding: 0\"/></div>\r\n<div class=\"image_box_bottom_3 image_top\" style=\"margin: 16px 3px 0 0;padding: 0;float: right;width: 29px;height: 29px;margin-top: -7px\">\r\n    <a href=\"/homes/about_us\" style=\"margin: 0;padding: 0\"><img src=\"/theme/theme2/img/box_img.png\" option=\"\" alt=\"\" style=\"margin: 0;padding: 0;border: none;outline: none;vertical-align: middle\"/></a></div></div>\r\n</div>\r\n        <!-- end home box 1 -->\r\n        <div class=\"siteWidthSeparation\" style=\"margin: 0;padding: 0;float: left;width: 18px\"> </div>\r\n        <div class=\"home_small_box\" id=\"pop_up_2\" onmouseover=\"open_pop_up(2);\" style=\"margin: 0;padding: 0;width: 317px;height: 100px;float: left;border: solid 2px #E6E6E6;background: -webkit-gradient(linear, left top, left bottom, from(#FFF), to(#E6E6E6))\">\r\n    <div class=\"image_box_new\" style=\"margin: 0;padding: 0;width: 100px;height: 71px;float: left\">\r\n       <img src=\"/theme/theme2/img/../img/footer/latest.png\" class=\"soarlogic_image\" alt=\"\" style=\"margin: 0;padding: 0;margin-top: 1px;width: 99px;height: 98px\"/></div>\r\n    <div style=\"margin: 0;padding: 0\"><h3 class=\"bottom_heading\" style=\"margin: 0;padding: 0;font-size: 19px;font-family: gorgio;text-align: left;font-weight: bold;color: #07243B\">Latest We Are Doing at Soarlogic</h3></div>\r\n    <div class=\"bottom_tab_link\" style=\"margin: 0;padding: 0;font-size: 12px;font-family: aril, helventica, sans-serif;text-decoration: none;margin-left: 5px;text-align: left;margin-top: 5px\">Doing according to current market need</div>\r\n    <div class=\"clear\" style=\"margin: 0;padding: 0\"/>\r\n    <div class=\"image_box_bottom\" style=\"margin: -3px 3px 0 3px;padding: 0;float: right\">\r\n       <img src=\"/theme/theme2/img/../img/box_img.png\" border=\"none\" alt=\"soarlogic_box_image\" style=\"margin: 0;padding: 0\"/></div>\r\n    <div id=\"pop_up_box_2\" class=\"pop_up_block_2\" style=\"margin: 0;padding: 5px;display: none;position: absolute;height: 300px;border: 5px solid #ddd;z-index: 99999;-webkit-box-shadow: 0 0 5px #000;-moz-box-shadow: 0 0 5px #000;box-shadow: 0 0 5px #000;-webkit-border-radius: 10px;-moz-border-radius: 10px;border-radius: 10px;width: 300px;background: -webkit-gradient(linear, left top, left bottom, from(#FFF), to(#E6E6E6))\">\r\n       <div class=\"image_box_new\" style=\"margin: 0;padding: 0;width: 100px;height: 71px;float: left\">\r\n    <a href=\"&#10;    http://www.studywallet.com/\" target=\"_blank\" style=\"margin: 0;padding: 0\">\r\n    <img src=\"/theme/theme2/img/../img/client/header_logo.png\" border=\"none\" alt=\"Soarlogic Header Logo\" style=\"margin: 0;padding: 0;border: none;outline: none;vertical-align: middle\"/></a>\r\n</div>\r\n<div class=\"bottom_heading box_second\" style=\"margin: 0;padding: 0;font-size: 30px;font-family: gorgio;text-align: left;font-weight: bold;color: #07243B;float: left\"> </div>\r\n<div class=\"clear_both\" style=\"margin: 0;padding: 0;clear: both;height: 0;line-height: 0;font-size: 0\"/>\r\n<div class=\"top_bottom\" style=\"margin: 0;padding: 0;text-align: left;margin-top: 4px;margin-bottom: 4px\">\r\n Leverage collective genius StudyWallet is a community that aspires to provide high quality service to its members\r\n</div>\r\n<div class=\"image_box_new\" style=\"margin: 0;padding: 0;width: 100px;height: 71px;float: left\">\r\n    <a href=\"http://www.sollywood.tv\" target=\"_blank\" style=\"margin: 0;padding: 0\">\r\n    <img src=\"/theme/theme2/img/../img/client/sollywood_logo-soarlogic.png\" url=\"\" border=\"none\" alt=\"Sollywood Soarlogic Logo\" style=\"margin: 0;padding: 0;border: none;outline: none;vertical-align: middle\"/></a>\r\n</div>\r\n<div class=\"bottom_heading box_second\" style=\"margin: 0;padding: 0;font-size: 30px;font-family: gorgio;text-align: left;font-weight: bold;color: #07243B;float: left\"> </div>\r\n<div class=\"clear_both\" style=\"margin: 0;padding: 0;clear: both;height: 0;line-height: 0;font-size: 0\"/>\r\n<div class=\"top_margin\" style=\"margin: 0;padding: 0;text-align: left;margin-top: 20px\">\r\n  Sollywood TV we are aiming to solve the Biggest problems facing the Entertainment Industry.\r\n</div>\r\n\r\n       <div class=\"image_box_bottom_3\" style=\"margin: 16px 3px 0 0;padding: 0;float: right;width: 29px;height: 29px\">\r\n       <a href=\"/clients/clients\" style=\"margin: 0;padding: 0\"><img src=\"/theme/theme2/img/../img/box_img.png\" option=\"\" alt=\"\" style=\"margin: 0;padding: 0;border: none;outline: none;vertical-align: middle\"/></a>       </div>\r\n    </div>\r\n</div>        <!-- third box -->\r\n        <div class=\"siteWidthSeparation\" style=\"margin: 0;padding: 0;float: left;width: 18px\"> </div>\r\n        <div class=\"home_small_box\" id=\"pop_up_3\" name=\"pop_3\" onmousemove=\"open_pop_up(3);\" style=\"margin: 0;padding: 0;width: 317px;height: 100px;float: left;border: solid 2px #E6E6E6;background: -webkit-gradient(linear, left top, left bottom, from(#FFF), to(#E6E6E6))\">\r\n    <div class=\"image_box_new\" style=\"margin: 0;padding: 0;width: 100px;height: 71px;float: left\">\r\n        <img src=\"/theme/theme2/img/../img/footer/dpt.png\" border=\"none\" class=\"soarlogic_image\" alt=\"\" style=\"margin: 0;padding: 0;margin-top: 1px;width: 99px;height: 98px\"/></div>\r\n    <div style=\"margin: 0;padding: 0\"><h3 class=\"bottom_heading\" style=\"margin: 0;padding: 0;font-size: 19px;font-family: gorgio;text-align: left;font-weight: bold;color: #07243B\">Development Process and Technology</h3></div>\r\n    <div class=\"bottom_tab_link_3\" style=\"margin: 0;padding: 0;font-size: 12px;font-family: aril, helventica, sans-serif;text-decoration: none;margin-left: 5px;text-align: left;margin-top: -4px\">A Agile Methodology, perfect match for offshore</div>\r\n    <div class=\"clear\" style=\"margin: 0;padding: 0\"/>\r\n    <div class=\"image_box_bottom\" style=\"margin: -3px 3px 0 3px;padding: 0;float: right\">\r\n        <img src=\"/theme/theme2/img/../img/box_img.png\" border=\"none\" alt=\"soarlogic_box_image\" style=\"margin: 0;padding: 0\"/></div>\r\n    <div id=\"pop_up_box_3\" class=\"pop_up_block_3\" style=\"margin: 0;padding: 5px;display: none;position: absolute;height: 300px;border: 5px solid #ddd;z-index: 99999;-webkit-box-shadow: 0 0 5px #000;-moz-box-shadow: 0 0 5px #000;box-shadow: 0 0 5px #000;-webkit-border-radius: 10px;-moz-border-radius: 10px;border-radius: 10px;width: 300px;background: -webkit-gradient(linear, left top, left bottom, from(#FFF), to(#E6E6E6))\">\r\n        <div class=\"pop_up_link\" style=\"margin: 0;padding: 0;height: 80px;font-size: 12px;color: #494949;font-weight: bold;text-decoration: none;line-height: 30px;text-align: left\">\r\n    <div class=\"home_tech\" style=\"margin: 0;padding: 0;font-size: 14px;font-family: helventica, sen, serif\"><h1 class=\"techSize\" style=\"margin: 0;padding: 0;float: left;font-size: 26px;font-weight: bold\">Process &amp; Technology Collection </h1></div>\r\n    <div class=\"pop_up_image_box\" style=\"margin: 4px 4px 4px 4px;padding: 0;float: left;height: 90px;width: 90px\">\r\n    <img src=\"/img/../files/sub_tab_image/32/soarlogic_agile.png\" class=\"logo_image_for_home_box\" target=\"_blank\" alt=\"Soarlogic Agile\" style=\"margin: 10px 5px 5px 10px;padding: 0;height: 80px;width: 80px;float: left\"/></div>\r\n    <div class=\"pop_up_image_box\" style=\"margin: 4px 4px 4px 4px;padding: 0;float: left;height: 90px;width: 90px\">\r\n    <img src=\"/img/../files/sub_tab_image/33/soarlogic_cakephp.png\" class=\"logo_image_for_home_box\" target=\"_blank\" alt=\"Soarlogic Cakephp\" style=\"margin: 10px 5px 5px 10px;padding: 0;height: 80px;width: 80px;float: left\"/></div>\r\n    <div class=\"pop_up_image_box\" style=\"margin: 4px 4px 4px 4px;padding: 0;float: left;height: 90px;width: 90px\">\r\n    <img src=\"/img/../files/sub_tab_image/36/soarlogic_wordpress.png\" class=\"logo_image_for_home_box\" target=\"_blank\" alt=\"Soarlogic Wordpress\" style=\"margin: 10px 5px 5px 10px;padding: 0;height: 80px;width: 80px;float: left\"/></div>\r\n    <div class=\"pop_up_image_box\" style=\"margin: 4px 4px 4px 4px;padding: 0;float: left;height: 90px;width: 90px\">\r\n    <img src=\"/img/../files/sub_tab_image/37/soarlogic_magento.png\" class=\"logo_image_for_home_box\" target=\"_blank\" alt=\"Soarlogic Magento\" style=\"margin: 10px 5px 5px 10px;padding: 0;height: 80px;width: 80px;float: left\"/></div>\r\n    <div class=\"pop_up_image_box\" style=\"margin: 4px 4px 4px 4px;padding: 0;float: left;height: 90px;width: 90px\">\r\n    <img src=\"/img/../files/sub_tab_image/40/soarlogic_html_5_services.png\" class=\"logo_image_for_home_box\" target=\"_blank\" alt=\"Soarlogic Html 5 Services\" style=\"margin: 10px 5px 5px 10px;padding: 0;height: 80px;width: 80px;float: left\"/></div>\r\n    <div class=\"pop_up_image_box\" style=\"margin: 4px 4px 4px 4px;padding: 0;float: left;height: 90px;width: 90px\">\r\n    <img src=\"/img/../files/sub_tab_image/42/soarlogic_j2ee.png\" class=\"logo_image_for_home_box\" target=\"_blank\" alt=\"Soarlogic J2ee\" style=\"margin: 10px 5px 5px 10px;padding: 0;height: 80px;width: 80px;float: left\"/></div>\r\n    <div class=\"clear\" style=\"margin: 0;padding: 0\"/>\r\n</div>\r\n        <div class=\"image_box_bottom_3 homeTop\" style=\"margin: 16px 3px 0 0;padding: 0;float: right;width: 29px;height: 29px;margin-top: 14px\">\r\n        <a href=\"/homes/technology\" style=\"margin: 0;padding: 0\"><img src=\"/theme/theme2/img/../img/box_img.png\" option=\"\" alt=\"\" style=\"margin: 0;padding: 0;border: none;outline: none;vertical-align: middle\"/></a>        </div>\r\n    </div>\r\n</div>        <div class=\"clear_both\" style=\"margin: 0;padding: 0;clear: both;height: 0;line-height: 0;font-size: 0\"/>\r\n    </div>\r\n</div>\r\n<script type=\"text/javascript\">\r\n    jQuery(\"#top_tab1\").addClass(\"selected\");\r\n    jQuery(\"#top_tab1\").addClass(\"active\");\r\n// ]]></script>\r\n<div class=\"siteHeightSeparation\" style=\"margin: 0; padding: 0;\">&nbsp;</div>\r\n<div id=\"footer\" class=\"footer_outer\" style=\"margin: 0; padding: 0; background: -o-linear-gradient(#31506B, #07243B);\" align=\"center\">\r\n<div class=\"footer_outer\" style=\"margin: 0; padding: 0; background: -o-linear-gradient(#31506B, #07243B);\">\r\n<div class=\"footer_inner\" style=\"margin: 0; padding: 0; width: 1024px; margin-right: 54px;\">\r\n<div class=\"footer_link\" style=\"margin: 0; padding: 0; padding-top: 20px; color: #fff; text-align: center; text-decoration: none;\"><a class=\"footer_static_link\" style=\"margin: 0; padding: 0; width: 100px; color: #fff; text-align: center; text-decoration: none;\" href=\"../../../../../homes/privacy_policy\">Privacy Policy</a> <span class=\"sep_rate\" style=\"margin: 0; padding: 0; color: #fff;\">|</span> <a class=\"footer_static_link\" style=\"margin: 0; padding: 0; width: 100px; color: #fff; text-align: center; text-decoration: none;\" href=\"../../../../../homes/terms_of_services\">Terms of Services</a> <span class=\"sep_rate\" style=\"margin: 0; padding: 0; color: #fff;\">|</span> <a class=\"footer_static_link\" style=\"margin: 0; padding: 0; width: 100px; color: #fff; text-align: center; text-decoration: none;\" href=\"../../../../../homes/careers\">Careers</a> <span class=\"sep_rate\" style=\"margin: 0; padding: 0; color: #fff;\">|</span> <a class=\"footer_static_link\" style=\"margin: 0; padding: 0; width: 100px; color: #fff; text-align: center; text-decoration: none;\" href=\"../../../../../homes/about_us\">About Us</a> <span class=\"sep_rate\" style=\"margin: 0; padding: 0; color: #fff;\">|</span> <a class=\"footer_static_link\" style=\"margin: 0; padding: 0; width: 100px; color: #fff; text-align: center; text-decoration: none;\" href=\"../../../../../contacts/contact_us\">Contact Us</a> <span class=\"sep_rate\" style=\"margin: 0; padding: 0; color: #fff;\">|</span> <a class=\"footer_static_link\" style=\"margin: 0; padding: 0; width: 100px; color: #fff; text-align: center; text-decoration: none;\" href=\"../../../../../homes/site_map\">Site Map</a></div>\r\n<div class=\"copy_right\" style=\"margin: 0; padding: 0; padding-top: 8px; color: #fff; font-family: arial, helvetica, sans-serif;\">&copy; 2008-2013 www.soarlogic.com. All rights reserved.</div>\r\n<div class=\"face_book_links\" style=\"margin: 0; padding: 0; width: 895px; height: 30px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<script type=\"text/javascript\">// <![CDATA[\r\n    var _gaq = _gaq || [];\r\n    _gaq.push([\'_setAccount\', \'UA-6255184-1\']);\r\n    _gaq.push([\'_trackPageview\']);\r\n\r\n    (function() {\r\n        var ga = document.createElement(\'script\');\r\n        ga.type = \'text/javascript\';\r\n        ga.async = true;\r\n        ga.src = (\'https:\' == document.location.protocol ? \'https://ssl\' : \'http://www\') + \'.google-analytics.com/ga.js\';\r\n        var s = document.getElementsByTagName(\'script\')[0];\r\n        s.parentNode.insertBefore(ga, s);\r\n    })();\r\n// ]]></script>\r\n</div>',NULL,'LocalBusiness',19,326),
(9,'hjkhk','body{background:#555555;margin:0%; padding:0%;}\r\n#header-content{margin:0%; padding:2%; background-color:#dddddd; height:50px;}\r\n#main-content{margin:0% auto; padding:2%; background-color:#eeeeee;}\r\n#inner-content{height:auto}\r\n#footer-content{clear: both; margin:0%; padding:2%;background-color:#dddddd; height:70px}\r\nh2{margin:0% 0% 2% 0%;padding:0%}\r\n\r\n',NULL,'LocalBusiness',19,326),
(10,'html.index','<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\r\n    <title>Fluid Responsive Template</title>\r\n    \r\n\r\n<link rel=\"stylesheet\" href=\"style.css\" />   \r\n  \r\n<link rel=\"stylesheet\" media=\"screen and (min-device-width: 1440px)\" href=\"desktop.css\" /> \r\n\r\n<link rel=\'stylesheet\' media=\'screen and (min-width: 800px) and (max-width: 1440px)\' href=\'medium-style.css\' />\r\n\r\n<link rel=\'stylesheet\' media=\'screen and (min-width: 100px) and (max-width: 799px)\' href=\'mobile-style.css\' />\r\n \r\n \r\n</head>\r\n<body>\r\n<div id=\"wrapper\">\r\n    <div id=\"header-content\"><h2>Your Responsive Template</h2></div>\r\n\r\n    <div id=\"main-content\">\r\n        \r\n        <div id=\"inner-content\">\r\n        <h1>Suspendisse commodo purus aliquam mi</h1>\r\n        <p>Donec sed urna lectus, vel viverra tellus. Nullam molestie tortor eu erat aliquet fermentum. Suspendisse commodo purus aliquam mi tempor pulvinar.  Pellentesque bibendum suscipit dui, id vehicula leo aliquet at. Duis sem diam, pharetra sed posuere sed, iaculis vitae leo.</p> \r\n         \r\n        <div class=\"box\"><h2>Pellentesque bibendum</h2><img class=\"image-box\" src=\"https://www.google.com/images/srpr/logo4w.png\" />Curabitur pulvinar odio ut magna aliquet consequat. Etiam id euismod justo. Praesent vel lectus ipsum, ac placerat urna. Quisque a leo nibh.  Curabitur bibendum accumsan orci eget euismod. Pellentesque mattis gravida imperdiet.</div>  \r\n        <div class=\"box\"><h2>Donec sed urna lectus</h2><img class=\"image-box\" src=\"https://www.google.com/images/srpr/logo4w.png\" />Vestibulum luctus augue at arcu eleifend ac convallis massa bibendum. Proin ut odio quam, eu feugiat risus. Curabitur bibendum accumsan orci eget euismod. Aliquam porttitor faucibus orci, vitae semper dui varius eu.</div> \r\n        <div class=\"box\"><h2>Proin ut odio quam</h2><img class=\"image-box\" src=\"https://www.google.com/images/srpr/logo4w.png\" />Vivamus ut enim eu leo euismod semper. Cras sagittis auctor ante, sagittis scelerisque diam iaculis at. Pellentesque mattis gravida imperdiet. Praesent vestibulum volutpat vestibulum. </div> \r\n        <div class=\"box\"><h2>Vestibulum luctus elementum</h2><img class=\"image-box\" src=\"https://www.google.com/images/srpr/logo4w.png\" />Quisque eget leo eget magna ultrices tincidunt. Vestibulum luctus elementum sollicitudin. Sed at mi sit amet nisl semper tincidunt non in lorem. Donec semper commodo interdum.</div> \r\n        \r\n        <br style=\"clear:both\" />\r\n        </div>    \r\n        \r\n    </div>\r\n    <div id=\"footer-content\">Copyright &copy; 2013 | My Responsive Web Template</div>\r\n</div>\r\n</body>\r\n',NULL,'LocalBusiness',19,326),
(11,'dynmo','dhfhgjhdfgkadgfad',NULL,'LocalBusiness',NULL,326),
(12,'dynmo','kfhaksdjhfkjadhfkjadlfa',NULL,'RealEstates',NULL,152),
(15,'LLKJJLKJLK','KLJLKJLKJLKJLK',NULL,'RealEstates',NULL,152),
(16,'kldfjldkfjalkdkjfla','Date=21/12/13\r\n{\r\nhttp://quiz.thewtour.com/ara/homes\r\n//quiz.thewtour.com/en/homes\r\nsoarblueprint.db.3924111.hostedresource.com\r\nUser (DB): soarblueprint\r\nPassword: beAr#81j\r\nhttp://ckeditor.com/ \r\n}\r\n\r\n\r\n\r\nhttp://mybuy4u.thewtour.com/\r\n[3:54:56 PM] Rajesh Gaurav: url of new mybuy4u test server\r\n[3:55:04 PM] Rajesh Gaurav: email all details also\r\n[3:55:27 PM] Rajesh Gaurav: to me / Ankit only\r\n[3:57:29 PM] Rajesh Gaurav: Anil too\r\n[3:58:06 PM] Rajesh Gaurav: FTP\r\nthewtour.com/mybuy4u/Soar#123\r\n\r\n\r\n\r\n\r\n\r\n\r\nDear,\r\n\r\nPlease client want a website similar to this.\r\n\r\nEmployment agency website, since client is in the same business as this.\r\n\r\n3 types of users; Admin, Employer and a temporary worker.\r\n\r\nBoth should be able to upload files, such as copy of passport, CV and supporting letters to application.\r\n\r\nThe job board is going to be the same, everything is the same as this website http://www.fieldrecruitment.co.uk\r\n\r\nSo please do your best and get this done.\r\n\r\napi sms\'dddd96a007f2c4771def4ac7ea4c8760e219beda\'\r\n\r\nhttp://www.fieldrecruitment.co.uk/\r\nhttp://ftp.us.dell.com/monitors/Dell_SX2210-Monitor_Webcam%20SW%20RC1.1_%20R230103.exe\r\nprojectmanagement password=4AoFjxgr8K\r\n\r\n\r\n\r\nhttps://apps.facebook.com/mobilewallet?invitedby=100000250338168\r\n\r\n\r\nhttps://docs.google.com/forms/d/1a2G-XrujoIM0C9znBV8S85Gd9VA2k-S62sDbYwu3pzE/viewform\r\n\r\n\r\n<div class=\"sale_checkbox\">\r\n                <div class=\"credit_label\">\r\n                    <input type=\"checkbox\" name=\"c1\" onclick=\"showMe(\'div1\')\">yes</input>\r\n                    <?php $options = array(\'0\' => \'Yes\');echo $this->Form->input(\' \', array(\'name\'=>\"c1\",\'type\' => \'select\', \'multiple\' => \'checkbox\', \'options\' => $options,\'onclick\'=>\"showMe(\'div1\')\"));?>\r\n                </div>\r\n                <div class=\"credit_label\">\r\n                    <?php $options = array(\'0\' => \'No\');echo $this->Form->input(\' \', array(\'type\' => \'select\', \'multiple\' => \'checkbox\', \'options\' => $options));?>\r\n                </div>\r\n            </div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\'parentDiv\'>\r\n                                <div class=\"loop\">\r\n                                    <input type=\"file\" value=\"first name\"/>\r\n                                </div>\r\n                            </div>\r\n                            <button class=\"\" id=\'add\' onclick=\'addPerson()\'>Add person</button>\r\n\r\n\r\n\r\nfunction addPerson() {\r\n\r\n        if ($(\'div.loop\').length < 5) {\r\n\r\n            var clonedDiv = $($(\'div.loop\')[0]).clone().appendTo(\'.parentDiv\');\r\n\r\n            clonedDiv.find(\'input\').each(function() {\r\n                $(this).attr(\'name\', $(this).val() + $(\'div.loop\').length);\r\n            });\r\n\r\n        }\r\n\r\n    }',NULL,'RealEstates',NULL,152);
insert into `template` values 
(17,'hjgkjhgkjhgk','–œ‡°±\Z·\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0>\0\0˛ˇ	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0n\0\0\0\0\0\0\0\0\0\0p\0\0\0\0\0\0˛ˇˇˇ\0\0\0\0m\0\0\0ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇÏ•¡\0[Ä	\0\0ø\0\0\0\0\0\0\0\0\0\0\0\0\0Â\"\0\0\0bjbj¨˙¨˙\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\07V\0\0Œê\0Œê\0Â\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇˇ\0\0\0\0\0\0\0\0\0ˇˇ\0\0\0\0\0\0\0\0\0ˇˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0∑\0\0\0\0\0H\0\0\0\0\0\0H\0\0ã$\0\0\0\0\0\0ã$\0\0\0\0\0\0ã$\0\0\0\0\0\0ã$\0\0\0\0\0\0ã$\0\0\0\0\0\0\0\0\0\0\0\0\0ˇˇˇˇ\0\0\0\0ü$\0\0\0\0\0\0ü$\0\0\0\0\0\0ü$\0\0\0\0\0\0ü$\0\0Ñ\0\0\0#%\0\0L\0\0\0ü$\0\0\0\0\0\0ºJ\0\0\n\0\0o%\0\0L\0\0\0ª%\0\0\0\0\0\0ª%\0\0\0\0\0\0ª%\0\0\0\0\0\0ª%\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0;J\0\0\0\0\0=J\0\0\0\0\0\0=J\0\0\0\0\0\0=J\0\0\0\0\0\0=J\0\0\0\0\0\0=J\0\0\0\0\0\0=J\0\0$\0\0\0∆M\0\0¢\0\0hP\0\0F\0\0\0aJ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ã$\0\0\0\0\0\0\"\'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\'\0\0\"\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0aJ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ã$\0\0\0\0\0\0ã$\0\0\0\0\0\0ª%\0\0\0\0\0\0\0\0\0\0\0\0\0\0ª%\0\0E\0\0vJ\0\0\0\0\0 *\0\0\0\0\0\0 *\0\0\0\0\0\0 *\0\0\0\0\0\0\"\'\0\0˛\0\0ã$\0\0\0\0\0\0ª%\0\0\0\0\0\0ã$\0\0\0\0\0\0ª%\0\0\0\0\0\0;J\0\0\0\0\0\0\0\0\0\0\0\0\0\0 *\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"\'\0\0\0\0\0\0;J\0\0\0\0\0\0\0\0\0\0\0\0\0\0 *\0\0\0\0\0\0 *\0\0ä\0\0B\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0üD\0\0\0\0\0\0ª%\0\0\0\0\0\0ˇˇˇˇ\0\0\0\0PÀD~ÁŒ\0\0\0\0\0\0\0\0ü$\0\0\0\0\0\0 *\0\0.\0\0\07C\0\0í\0\0\0\0\0\0\0\0\0\0\0\'J\0\0\0\0\0åJ\0\00\0\0\0ºJ\0\0\0\0\0\0…C\0\0÷\0\0\0ÆP\0\0\0\0\0\0N*\0\0|\0\0\0ÆP\0\0D\0\0\0üD\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0üD\0\08\0\0\0ÆP\0\0\0\0\0\0\0\0\0\0\0\0\0\0ã$\0\0\0\0\0\0◊D\0\0P\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0 *\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0aJ\0\0\0\0\0\0aJ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 *\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0ºJ\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0\0\0\0\0\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ÆP\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0H\0\0	\0\0Q#\0\0:\0\0\0\0\0	@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \rAyush Ramola\r			     	    Contact no: +91-					\r				 Email id:  ayushramola@soarlogic.com	     	     \r						 \rObjective\r\rTo be potential resource to the organization where I can utilize my skills and knowledge which would help the organization to grow and further enhance my growth profile. It would be never ending   dedication to maintain the spectrum of integrity, honesty and character\r\rProfessional Qualification\r\rB.tech (IT) in 2011 from GRD, Institute of Management and Technology Dehradun, Uttarakhand, India.\r    \rProfessional Snapshot\r\rSoftware Development Engineer with more than Two years of professional experience in software development processes and implementations.\rExperience of developing applications using PHP, MySQL, Ajax (JQuery), in Web Technologies.\rGood in development of web application using HTML, XHTML, CSS, Java Server Pages (JSPs), Object-Oriented JavaScript.\rVery sound technically and have good ability to work in a team and can handle team of developer.\r\rProfessional Experience\r\rCurrently working as Software Engineer with Soarlogic Information Technologies Pvt. Ltd., Dehradun from 8th Aug 2011 to till date.\r.\r\rTechnical Skills\r   \rProgramming Languages 	: PHP\rFrameworks			: CakePhp (MVC)\rScripting Languages  	: JavaScript, HTML, CSS, Ajax (JQuery) and JQuery Plugins \rDatabases			: MySQL 5.0\rWeb Servers			: Apache 2.2\rIDEs				: Eclipse, Intelli J Idea 11.x\rOperating Systems             : Linux, Windows 7/VISTA/XP	\rSoftware Development Methodology	: Agile Method\r\r\r\r\r\r	\rProject Experience\r\rProject		: FERTILITY (http://www.fertility2u.com)\rClient		: Fertility\rTechnologies	: Php, MySql 5.0, Ajax (JQuery) and JQuery plugins.\rFramework	: Magento\rTeam Size	: 10. \r\rContribution:\rRole in development and database design of all modules.\rDid UI design and Integration of modules, with ajaxification of all pages in this application through JQuery wherever ajaxficaion is required.\rClearing the problem in every phase.\rDiscussing with client weekly and clearing their doubts.\r\rOverview:\r\rWelcome to Fertility2u your Online Fertility Pharmacy offering a wide range of prescription Fertility Drugs / IVF medication all delivered directly to your doorstep, normally within 24 hours of receiving your prescription. Enjoy peace of mind knowing Fertility2u is regulated by the GPhC and a member of the National Pharmacy Association. Fertility2u is considered a market leader in providing IVF Fertility Drugs as well as being an established Verified UK Pharmacy with a High Street outlet. Our aim is to provide a safe, secure and fast solution to IVF patients worldwide. We stock most brands such as Gonal F, Menopur and Puregon and only use UK Approved Fertility Drugs .\rProject		: Work-Force  ( HYPERLINK \"http://workforce-base.com/\" http://workforce-base.com/)\rClient		: Fertility\rTechnologies	: Php, MySql 5.0, Ajax (JQuery) and JQuery plugins.\rFramework	: Cakephp MVC 2.x\rTeam Size	: 10. \r\rContribution:\rWorked in development and database designing of all modules.\rDid in UI design and Integration of modules. \rBug Fixing in every phase.\rHandling client queries.\r\rOverview:\r\rWork-Force is the Apex of the Project and Workforce Outsourcing Sites on the Internet. Work-Force Freelancers are certified, having established that they have the Proper Education, Training, Experience, Skills and have time and time again proven themselves.\r\rProject		: Rvr ( HYPERLINK \"http://rvr.thewtour.com/\" http://rvr.thewtour.com/)\rClient		: Gabril\rTechnologies	: Php, MySql 5.0, Ajax (JQuery) and JQuery plugins.\rFramework	: Cakephp MVC 2.x\rFramework	: Intelli J Idea 10.x.\rTeam Size	: 2. \r\rContribution:\rHandled the designing and implementation of database.\rActively participated in UI designing and Integration of modules. Did ajaxification through JQuery, wherever ajaxficaion is required.\rFixing the problem in different phases of development.\rHandled the communication with client, in clearing the doubts and development status.\rDiscussing with client weekly and clearing their doubts.\r\rOverview:\rThis deals in conducting the survey of readability of font and size, among different  \rfont and size which is most easy readable by visitor in a museum.\r\r\rProject		: GYAPTI ( HYPERLINK \"http://www.gyapti.com/\" http://www.gyapti.com/)\rClient		: GYAPTI\rTechnologies	: Php, MySql 5.0, Ajax (JQuery) and JQuery plugins.\rFramework	: Cakephp MVC 2.x\rFramework	: Intelli J Idea 10.x.\rTeam Size	: 10. \r\rContribution:\rWorked in Development and Designing of database.\rDid UI designing and integration of modules, implement the ajaxification where every required in project.\rUse to fix the bug problems in every phase of project.\rCommunicating with client and handling clientís queries.\r\rOverview:\rGyapti is an educational web site (actually a web application). This website provides free universities, colleges, etc. information. People can get their courses information, events information and full view of them. It mainly focuses to educate people through online. \rAs we know today, online a very wide medium to aware people. We know today, most of people are still illiterate. There are various reasons for them like not having any medium for education, no facilities. \rGyapti is a very popular way to aware people by web medium. Internet medium is also a very cheapest medium. People can get it easily via satellite also if there is no other medium.\rGyapti mainly focus on worldwide education to spread new brightness of light in people life. People can get very easily any information related to Universities, Colleges. They can be local or world-wide popular Universities, Colleges.\rPeople can make their communities also and can invite other people to join here free of cost.\r\r\r\r\r\r\r\r\rProject		: Mometrosales ( HYPERLINK \"http://www.mometrosales.com/\" http://www.mometrosales.com)\rClient Name	: Govin\rTechnologies	: Php, MySql 5.0, Ajax (JQuery).\rFramework	: Wordpress\rIDE		: Intelli J Idea 11.x.\rTeam Size	: 3. \r\rContribution:\rWorked as a Software Engineer.\rCommunicated with client and team members in shorting the bugs.\rDiscussing with client weekly and clearing their doubts.\rIntegration of Hibernate Search feature which uses Lucene search also.\r\rOverview:\rMillions of people are using mobile devices to surf the web for information. It is more important than ever for companies to have a mobile website, especially one that downloads essential information quickly and displays it in a way that helps website visitors find what they are looking for while on the go. Create a home-based business with MoMetro by offering Mobile Websites to businesses. You will not only make a ton of money but you will have fun doing it. PERSONAL DETAILS    \r\rPersonal Details     \r\r\rDate of birth			30th July 1991\rFatherís Name		Mr. M.C.Ramola\rAddress     			Guru Road, Patel Nagar\r				Dehradun - 248001\rLanguages Known		Hindi, English.\r	\r						\r\r   (Ayush Ramola)\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(\0\0,\0\0-\0\02\0\07\0\0?\0\0B\0\0M\0\0[\0\0h\0\0i\0\0q\0\0z\0\0Ôﬂ“æ≠æ≠æõâtâcO≠D=/\Zh[(\0CJ\0OJ\0QJ\0^J\0aJ\0\0h≥$*\0hûZ§\0\0j\0\0\0\0h≥$*\0hûZ§\0U&h≥$*\0hæe\06Å>*CJ\0OJ\0QJ\0^J\0aJ\0\0 høt\06Å>*CJ\0OJ\0QJ\0^J\0aJ\0\0)h≥$*\0hûZ§\05Å6ÅCJ\0OJ\0QJ\0\\Å^J\0aJ\0#h≥$*\0hûZ§\06ÅCJ\0OJ\0QJ\0^J\0aJ\0#h≥$*\0hûZ§\0CJ\0OJ\0QJ\0\\Å^J\0aJ\0 h≥$*\0hûZ§\0CJ\0OJ\0QJ\0^J\0aJ\0\0&h≥$*\0hûZ§\05ÅCJ\0OJ\0QJ\0\\Å^J\0aJ\0\0høt\0CJ\0OJ\0QJ\0\\ÅaJ\0h≥$*\0hûZ§\0CJ\0OJ\0QJ\0\\ÅaJ\0h≥$*\0hÃ=W\0CJ\0OJ\0QJ\0\\ÅaJ\0\0\0\0\0\0\0\0\02\0\0h\0\0q\0\0{\0\0|\0\0â	\0\0ä	\0\0•	\0\0¶	\0\0	\n\0\0\n\0\0$\n\0\0%\n\0\0Æ\n\0\0˝\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0\0\0\0\0\0\0\0\0\0\0ﬁ\0\0\0\0\0\0\0\0\0\0\0\0Ÿ\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0≈\0\0\0\0\0\0\0\0\0\0\0\0√\0\0\0\0\0\0\0\0\0\0\0\0√\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0∑\0\0\0\0\0\0\0\0\0\0\0\0∑\0\0\0\0\0\0\0\0\0\0\0\0Æ\0\0\0\0\0\0\0\0\0\0\0\0©\0\0\0\0\0\0\0\0\0\0\0\0§\0\0\0\0\0\0\0\0\0\0\0\0ì\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$\n&\0F\r\0\r∆\0h–\0\0a$gd\"TÆ\0\0\0\0gd[(\0\0\0gd[(\0\0\0\0$Ñh^Ñha$\0\0\0$\r∆\0¬\0a$gd[(\0\0E\0\0\0\0Ñw^Ñw\0\r∆\0\0\0\0-D\0M∆\n\0\0\0ˇﬂﬂﬂ\0\0\0\0\0\0$a$\0\0\0gdü-\0\r\0\0-D\0M∆\n\0\0\0ˇˇˇˇ\0\0\0gdü-\0\0\0\0ÑpÑ–^Ñp`Ñ–gdü-\0\0\0\0\0z\0\0{\0\0|\0\0à	\0\0â	\0\0ä	\0\0§	\0\0•	\0\0¶	\0\0∞	\0\0¥	\0\0µ	\0\0π	\0\0∫	\0\0ø	\0\0Í	\0\0\0\n\0\0\n\0\0\n\0\0\n\0\0\n\0\0#\n\0\0Ô·÷ÀºÆÔ§ôã·{k^{QD^=ÔÆ\0\0\0\0\0\0\0\0\0\0\0\0\0h≥$*\0hûZ§\0\0h≥$*\0hXõ\0OJ\0QJ\0^J\0\0h≥$*\0h® >\0OJ\0QJ\0^J\0\0h≥$*\0hûZ§\0OJ\0QJ\0^J\0\0h≥$*\0hûZ§\05ÅOJ\0QJ\0\\Å^J\0\0h≥$*\0h|U7\05ÅOJ\0QJ\0\\Å^J\0\0h≥$*\0h„7\n\05ÅOJ\0QJ\0^J\0høt\05ÅOJ\0QJ\0^J\0h[(\0OJ\0QJ\0^J\0\0\Zh[(\0CJ\0OJ\0QJ\0^J\0aJ\0\0h≥$*\0høt\0CJ\0OJ\0QJ\0^J\0\0høt\0hûZ§\0CJ\0aJ\0\0høt\0høt\0CJ\0aJ\0\0h≥$*\0hûZ§\05ÅOJ\0QJ\0^J\0 h≥$*\0hûZ§\0CJ\0OJ\0QJ\0^J\0aJ\0#\n\0\0$\n\0\0%\n\0\0H\n\0\0R\n\0\0U\n\0\0V\n\0\0[\n\0\0\\\n\0\0π\n\0\0ª\n\0\0⁄\n\0\0›\n\0\0ﬁ\n\0\0Â\n\0\0Û\n\0\0ı\n\0\0\0\0\n\0\00\0\07\0\0=\0\0D\0\0I\0\0a\0\0c\0\0s\0\0ÚÎﬁ—√µßóﬁäﬁÄäÄäv—ﬁlﬁä_äﬁRE\0\0\0\0h≥$*\0hÑ7\0OJ\0QJ\0^J\0\0h≥$*\0h’	h\0OJ\0QJ\0^J\0\0h≥$*\0h%g\0OJ\0QJ\0^J\0\0h\"/p\0OJ\0QJ\0^J\0\0h⁄/r\0OJ\0QJ\0^J\0\0hÇ’\0OJ\0QJ\0^J\0\0h≥$*\0hß(¥\0OJ\0QJ\0^J\0\0h≥$*\0hûZ§\05ÅOJ\0QJ\0\\Å^J\0\0h≥$*\0hûZ§\05ÅOJ\0QJ\0^J\0h≥$*\0h‰lI\05ÅOJ\0QJ\0^J\0h≥$*\0h∆Nv\05ÅOJ\0QJ\0^J\0h≥$*\0hL-\0OJ\0QJ\0^J\0\0h≥$*\0hûZ§\0OJ\0QJ\0^J\0\0h[(\0h[(\0\0\ZhûZ§\0CJ\0OJ\0QJ\0^J\0aJ\0\ZÆ\n\0\0\n\0\0\0\0‡\0\0·\0\0˘\0\0˙\0\0}\0\0\0\0Ä\0\0ë\0\0ï\0\0≤\0\0Í\0\0\0\0\0\0\0\0\0\0\0\0Ÿ\0\0\0\0\0\0\0\0\0\0\0\0Ÿ\0\0\0\0\0\0\0\0\0\0\0\0‘\0\0\0\0\0\0\0\0\0\0\0\0œ\0\0\0\0\0\0\0\0\0\0\0\0±\0\0\0\0\0\0\0\0\0\0\0\0©\0\0\0\0\0\0\0\0\0\0\0\0†\0\0\0\0\0\0\0\0\0\0\0\0~\0\0\0\0\0\0\0\0\0\0\0\0p\0\0\0\0\0\0\0\0\0\0\0\0n\0\0\0\0\0\0\0\0\0\0\0\0n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r∆\0\0\0\0-D\0M∆\n\0\0\0ˇﬂﬂﬂ\0\0\0\"G\0$\r∆\r\0\0†p@‡∞ÄP ¿!ê$h\0ÑhÑ\0\01$^Ñh`Ñ\0\0a$gdß(¥\0\0\0\0Ñ–^Ñ–gdUx\0\0\0\n&\0F\0gd\"TÆ\0\0F\0$\r∆\r\0\0–p@‡∞ÄP ¿!ê$\0Ñ–Ñ\0\01$^Ñ–`Ñ\0\0a$\0\0gdj	”\0\0\0\0dh\0\0\0\0$\n&\0F\r\0\r∆\0h–\0\0a$gd\"TÆ\0\0\0\0$\n&\0F\r\0\r∆\0h–\0\0ÑÛˇ]ÑÛˇa$gd\"TÆ\0\0s\0\0}\0\0\0\0§\0\0´\0\0π\0\0ﬂ\0\0‡\0\0·\0\0¯\0\0˘\0\0˙\0\0\0\0 \0\0&\0\0/\0\0H\0\0R\0\0T\0\0\\\0\0b\0\0ÛÊ‹œÊ‹¬ª≠úÊâpâ\\H\\â5â\0\0$h≥$*\0hß(¥\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0\'h≥$*\0hûZ§\05ÅOJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\'h≥$*\0hß(¥\05ÅOJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\00h≥$*\0h∆Nv\00J;\05ÅB*\0CJ\0^J\0_Hˇ\0nHˇ\0ph\0\0\0ˇtHˇ\0\0$h≥$*\0hûZ§\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0 h≥$*\0hûZ§\0CJ\0OJ\0QJ\0^J\0aJ\0\0\Zh[(\0CJ\0OJ\0QJ\0^J\0aJ\0\0h≥$*\0hûZ§\0\0h≥$*\0hûZ§\0OJ\0QJ\0^J\0\0h≥$*\0h\"/p\0OJ\0QJ\0^J\0\0h\"/p\0OJ\0QJ\0^J\0\0h≥$*\0hûZ§\0OJ\0QJ\0^J\0\0h≥$*\0h’	h\0OJ\0QJ\0^J\0b\0\0c\0\0e\0\0f\0\0i\0\0n\0\0}\0\0\0\0Ä\0\0ê\0\0ë\0\0ï\0\0Æ\0\0±\0\0≤\0\0‹…∂£ê}o^N;+£\0\0\0\0\0\0\0\0\0\0\0\0hÇ’\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0ho@L\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0h≥$*\0hûZ§\05ÅOJ\0QJ\0\\Å^J\0\0 h≥$*\0hûZ§\0CJ\0OJ\0QJ\0^J\0aJ\0\0\Zh[(\0CJ\0OJ\0QJ\0^J\0aJ\0\0$h≥$*\0hß(¥\0OJ\0PJ\0\0QJ\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0hß(¥\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0hûZ§\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0hUx\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0h\"TÆ\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0\'høt\0h\"TÆ\0H*OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0h\"TÆ\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0≤\0\0¿\0\0¡\0\0»\0\0Œ\0\0œ\0\0Â\0\0Á\0\0Î\0\0¸\0\0\r\0\0\r\0\0\r\0\0\r\0\0\r\0\0\r\0\0 \r\0\0Ì⁄«∑Ì§ë§Ån[nH5H§\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$h≥$*\0hÀpÇ\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0hV|\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0h¬1ñ\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0hg>\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0h©1a\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0hÕ%Ÿ\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0hûZ§\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0hÇ’\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0h˝Pk\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0hâe \0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0h+π\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0≤\0\0œ\0\0 \r\0\08\r\0\0S\r\0\0z\r\0\0µ\r\0\0Â\r\0\0Ê\r\0\0Á\r\0\0Ë\r\0\0È\r\0\0Í\r\0\0Ï\r\0\0ˇ\r\0\0\0\0\02\0\0F\0\0á\0\0õ\0\0˝\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0Û\0\0\0\0\0\0\0\0\0\0\0\0Û\0\0\0\0\0\0\0\0\0\0\0\0Û\0\0\0\0\0\0\0\0\0\0\0\0Û\0\0\0\0\0\0\0\0\0\0\0\0Û\0\0\0\0\0\0\0\0\0\0\0\0Á\0\0\0\0\0\0\0\0\0\0\0\0Á\0\0\0\0\0\0\0\0\0\0\0\0Á\0\0\0\0\0\0\0\0\0\0\0\0Á\0\0\0\0\0\0\0\0\0\0\0\0◊\0\0\0\0\0\0\0\0\0\0\0\0◊\0\0\0\0\0\0\0\0\0\0\0\0∆\0\0\0\0\0\0\0\0\0\0\0\0Ω\0\0\0\0\0\0\0\0\0\0\0\0±\0\0\0\0\0\0\0\0\0\0\0\0®\0\0\0\0\0\0\0\0\0\0\0\0®\0\0\0\0\0\0\0\0\0\0\0\0®\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñh^ÑhgdDg\0\0\0\n&\0F\0\r∆\0h\0gdDg\0\0\0\0Ñh^Ñhgd,>\0\0\0\r∆\0\0\0-D\0M∆\n\0\0\0ˇﬂﬂﬂ\0\0\0gd[(\0\0\0\0$\r∆\0†—É\0\0\0Ñ–^Ñ–a$\0\0\0$\r∆\0†—É\0\0\0a$\0\0\0gd9\n˜\0\0\0\0gdôzÓ\0\0\0\0\0 \r\0\0,\r\0\0.\r\0\01\r\0\03\r\0\07\r\0\0A\r\0\0F\r\0\0H\r\0\0R\r\0\0S\r\0\0[\r\0\0]\r\0\0d\r\0\0e\r\0\0u\r\0\0w\r\0\0y\r\0\0ã\r\0\0ò\r\0\0ô\r\0\0Ì⁄«¥§«Ì⁄î«Ì⁄îÑ¥q^«J«\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\'h≥$*\0hûZ§\05ÅOJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0$h≥$*\0hds\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0hP±\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0h⁄/r\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0hÇ’\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0h\"TÆ\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0hr;\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0hûZ§\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0h9\n˜\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0h\rq“\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0ô\r\0\0ö\r\0\0©\r\0\0´\r\0\0±\r\0\0≥\r\0\0µ\r\0\0∂\r\0\0÷\r\0\0◊\r\0\0ÿ\r\0\0‰\r\0\0Ê\r\0\0Á\r\0\0Ë\r\0\0È\r\0\0Í\r\0\0Ï\r\0\0˛\r\0\0Îÿ≈≤¢ïà{ànàïaWJ=ï/\Zh[(\0CJ\0OJ\0QJ\0^J\0aJ\0\0h≥$*\0hBÄ\0OJ\0QJ\0^J\0\0h≥$*\0h\"/p\0OJ\0QJ\0^J\0\0hûZ§\0OJ\0QJ\0^J\0\0h≥$*\0hUx\0OJ\0QJ\0^J\0\0h≥$*\0hø2¿\0OJ\0QJ\0^J\0\0h≥$*\0h\rq“\0OJ\0QJ\0^J\0\0h≥$*\0h&^^\0OJ\0QJ\0^J\0\0h≥$*\0hûZ§\0OJ\0QJ\0^J\0\0h\"TÆ\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0h\Z]2\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0h\\2>\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0hûZ§\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0\'h≥$*\0h9\n˜\05ÅOJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0˛\r\0\0ˇ\r\0\0\0\0\0	\0\0\n\0\0\0\0\0\0\0\00\0\01\0\02\0\08\0\0E\0\0á\0\0ö\0\0≠\0\0ª\0\0ø\0\0Û\0\0ˆ\0\0\0\0\"\0\0·\0\0Í\0\0Î\0\0Ï\0\0Ô‰‘«∫‘¨•°¨óç«É«uÉ«k«k«‘^N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h≥$*\0h\"xë\05ÅOJ\0QJ\0\\Å^J\0\0hDg\05ÅOJ\0QJ\0\\Å^J\0\0h\"/p\0OJ\0QJ\0^J\0\0h≥$*\0hDg\05ÅOJ\0QJ\0^J\0høt\0OJ\0QJ\0^J\0\0hÔÚ\0OJ\0QJ\0^J\0\0hDg\0OJ\0QJ\0^J\0\0høt\0\0høt\0høt\0\0h≥$*\0hDg\0OJ\0QJ\0\\Å^J\0høt\05ÅOJ\0QJ\0\\Å^J\0\0h≥$*\0hDg\0OJ\0QJ\0^J\0\0h≥$*\0hDg\05ÅOJ\0QJ\0\\Å^J\0\0h,>\0OJ\0QJ\0\\Å^J\0 h≥$*\0hûZ§\0CJ\0OJ\0QJ\0^J\0aJ\0õ\0\0¨\0\0≠\0\0ª\0\0Û\0\0Ç\0\0ß\0\0‡\0\0·\0\0Î\0\0Ï\0\0ë\0\0\0\0\0\0E\0\0a\0\0r\0\0ˆ\0\0\0\0\0\0\0\0\0\0\0\0Ì\0\0\0\0\0\0\0\0\0\0\0\0‰\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0¥\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0Ì\0\0\0\0\0\0\0\0\0\0\0\0‰\0\0\0\0\0\0\0\0\0\0\0\0‰\0\0\0\0\0\0\0\0\0\0\0\0®\0\0\0\0\0\0\0\0\0\0\0\0ú\0\0\0\0\0\0\0\0\0\0\0\0ì\0\0\0\0\0\0\0\0\0\0\0\0ì\0\0\0\0\0\0\0\0\0\0\0\0ì\0\0\0\0\0\0\0\0\0\0\0\0ì\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñh^Ñhgdî[ä\0\0\0\n&\0F\0\r∆\0h\0gdî[ä\0\0\0\0$Ñ–^Ñ–a$gd¶H”\0\0\0$\n&\0F\0\r∆\08Ïæ\0\0\0Ñ8^Ñ8a$gdDg\0\Z\0\0$\n&\0F\0\r∆\08Ïæ\0\0\0ÑæÑ8]Ñæ^Ñ8a$gdDg\0\0\0\0Ñ–`Ñ–gdDg\0\0\0\0Ñ–^Ñ–gdDg\0\0\0\0Ñh^ÑhgdDg\0\0Ï\0\0 \0\0À\0\0ê\0\0ë\0\0ö\0\0õ\0\0ß\0\0®\0\0©\0\0™\0\0“\0\0”\0\0Ì\0\0Ó\0\0Ô\0\0\0\0\0\0s\0\0Å\0\0á\0\0§\0\0©\0\0™\0\0´\0\0≠\0\0æ\0\0¡\0\0Ï\0\0˜\0\0\0\0Â ÂΩ≠Ω†≠íäÜäÄä|írΩdZΩMZMZΩZΩZΩh≥$*\0hã^î\0OJ\0QJ\0^J\0\0hã^î\0OJ\0QJ\0^J\0\0h≥$*\0hî[ä\05ÅOJ\0QJ\0^J\0hÔÚ\0OJ\0QJ\0^J\0\0hî[ä\0\0\nhMª\00J8\0\0hMª\0\0j\0\0\0\0hMª\0Uh≥$*\0hî[ä\0OJ\0QJ\0\\Å^J\0hMª\05ÅOJ\0QJ\0\\Å^J\0\0h≥$*\0hî[ä\05ÅOJ\0QJ\0\\Å^J\0\0h≥$*\0hî[ä\0OJ\0QJ\0^J\0\04h©1a\0B*CJ\0OJ\0QJ\0^J\0aJ\0fH\0ph\0\0\0\0q \n\0\0\0ˇˇˇˇ\0\0\0\04h¶H”\0B*CJ\0OJ\0QJ\0^J\0aJ\0fH\0ph\0\0\0\0q \n\0\0\0ˇˇˇˇ\0\0\0r\0\0s\0\0Å\0\0æ\0\0Ï\0\0\0\0 \0\0!\0\0+\0\0,\0\0.\0\0/\0\0Ç\0\0ì\0\0‘\0\0\0\0\0\0!\0\0ˆ\0\0\0\0\0\0\0\0\0\0\0\0Ì\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0Ω\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0\0\0\0\0\0\0\0\0\0\0Ì\0\0\0\0\0\0\0\0\0\0\0\0Ì\0\0\0\0\0\0\0\0\0\0\0\0¥\0\0\0\0\0\0\0\0\0\0\0\0¥\0\0\0\0\0\0\0\0\0\0\0\0®\0\0\0\0\0\0\0\0\0\0\0\0ü\0\0\0\0\0\0\0\0\0\0\0\0ü\0\0\0\0\0\0\0\0\0\0\0\0ü\0\0\0\0\0\0\0\0\0\0\0\0ü\0\0\0\0\0\0\0\0\0\0\0\0ü\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñh^ÑhgdÙYÅ\0\0\0\n&\0F\0\r∆\0h\0gdÙYÅ\0\0\0\0Ñh^ÑhgdMª\0\0\0$\n&\0F\0\r∆\08Ïæ\0\0\0Ñ8^Ñ8a$gdî[ä\0\Z\0\0$\n&\0F\0\r∆\08Ïæ\0\0\0ÑæÑ8]Ñæ^Ñ8a$gdî[ä\0\0\0\0Ñ–`Ñ–gdî[ä\0\0\0\0Ñ–^Ñ–gdî[ä\0\0\0\0\0\0!\0\0*\0\0+\0\0,\0\06\0\0Ç\0\0É\0\0á\0\0û\0\0ß\0\0∞\0\0ª\0\0\"\0\0,\0\0-\0\0.\0\0/\0\08\0\09\0\0=\0\0>\0\0?\0\0ˆÈŸÃŸ¬µ´¬µûµûµëµáyi\\Li>\0\0\0\0\0h.7&\0hÙYÅ\0OJ\0QJ\0\\Å^J\0h.7&\0hı`\05ÅOJ\0QJ\0\\Å^J\0\0h.7&\0hÙYÅ\0OJ\0QJ\0^J\0\0h.7&\0hÙYÅ\05ÅOJ\0QJ\0\\Å^J\0\0h≥$*\0h©1a\0OJ\0QJ\0\\Å^J\0hî[ä\0OJ\0QJ\0^J\0\0hMª\0h©1a\0OJ\0QJ\0^J\0\0hMª\0hã^î\0OJ\0QJ\0^J\0\0h©1a\0OJ\0QJ\0^J\0\0hMª\0hMª\0OJ\0QJ\0^J\0\0hwf·\0OJ\0QJ\0^J\0\0hî[ä\05ÅOJ\0QJ\0\\Å^J\0\0h≥$*\0hî[ä\05ÅOJ\0QJ\0\\Å^J\0\0h≥$*\0hî[ä\0OJ\0QJ\0^J\0\0hã^î\0OJ\0QJ\0^J\0?\0\0@\0\0f\0\0g\0\0\0\0Ä\0\0Ç\0\0å\0\0í\0\0¸\0\0\0\0\0\0\0\0\"\0\00\0\0d\0\0f\0\0\0\0Ç\0\0á\0\0à\0\0â\0\0ã\0\0®\0\0´\0\0»\0\0…\0\0Ï\0\0\"\0\0#\0\0x\0\0≥\0\0Ω\0\0ÙÌÙ‡Ù“≈ªÆõÆëÆÉyÆyÆlylyÆyÆyÆyÆyÆ\\\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h.7&\0hÙYÅ\05ÅOJ\0QJ\0\\Å^J\0\0h.7&\0h‡|9\0OJ\0QJ\0^J\0\0h‡|9\0OJ\0QJ\0^J\0\0h.7&\0hÙYÅ\05ÅOJ\0QJ\0^J\0h.7&\0OJ\0QJ\0^J\0\0$h.7&\0hÙYÅ\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0h.7&\0hÙYÅ\0OJ\0QJ\0^J\0\0hÇ’\0OJ\0QJ\0^J\0\0h.7&\0hı`\0OJ\0QJ\0^J\0\0h.7&\0hÙYÅ\0OJ\0QJ\0\\Å^J\0h.7&\0hı`\00J8\0B*\0ph\0\0\0ˇh.7&\0hı`\0\0j\0\0\0\0h.7&\0hı`\0U\0 !\0\0\"\0\00\0\0f\0\0Ï\0\0#\0\0y\0\0≤\0\0≥\0\0Ω\0\0\0\0V\0\0W\0\0X\0\0™\0\0ª\0\0ˆ\0\0\0\0\0\0\0\0\0\0\0\0Ì\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0Ω\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0\0\0\0\0\0\0\0\0\0\0Ì\0\0\0\0\0\0\0\0\0\0\0\0±\0\0\0\0\0\0\0\0\0\0\0\0±\0\0\0\0\0\0\0\0\0\0\0\0´\0\0\0\0\0\0\0\0\0\0\0\0ö\0\0\0\0\0\0\0\0\0\0\0\0é\0\0\0\0\0\0\0\0\0\0\0\0Ö\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñh^Ñhgd©1a\0\0\0\n&\0F\0\r∆\0h\0gd©1a\0\0\0$\r∆\0\0\0Ñ]Ña$gdÁBË\0\0\0\0Ñ–^Ñ–\0\0\0$Ñ–`Ñ–a$gd.7&\0\0\0$\n&\0F\0\r∆\08Ïæ\0\0\0Ñ8^Ñ8a$gdÙYÅ\0\Z\0\0$\n&\0F\0\r∆\08Ïæ\0\0\0ÑæÑ8]Ñæ^Ñ8a$gdÙYÅ\0\0\0\0Ñ–`Ñ–gdÙYÅ\0\0\0\0Ñ–^Ñ–gdÙYÅ\0\0Ω\0\0\0\0\0\0H\0\0T\0\0V\0\0W\0\0X\0\0a\0\0b\0\0j\0\0k\0\0l\0\0ê\0\0ë\0\0ß\0\0®\0\0™\0\0$\0\07\0\0K\0\0Y\0\0â\0\0ä\0\0ÒÊÒÿÒÀ∑ßößå{ö{h{åöUöG=ö\0\0\0h‡|9\0OJ\0QJ\0^J\0\0h≥$*\0h©1a\05ÅOJ\0QJ\0^J\0$h≥$*\0h©1a\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0%h≥$*\0h©1a\00J8\0B*\0OJ\0QJ\0^J\0ph\0\0\0ˇ!j\0\0\0\0h≥$*\0h©1a\0OJ\0QJ\0U^J\0h≥$*\0h©1a\0OJ\0QJ\0\\Å^J\0h≥$*\0h©1a\0OJ\0QJ\0^J\0\0h≥$*\0h©1a\05ÅOJ\0QJ\0\\Å^J\0\0\'h≥$*\0hÁBË\05ÅOJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0h≥$*\0hï?\0OJ\0QJ\0^J\0\0h.7&\0h.7&\0OJ\0QJ\0\\Å^J\0h[(\0OJ\0QJ\0\\Å^J\0h.7&\0h—/g\0OJ\0QJ\0\\Å^J\0\0ª\0\0¸\0\0\0\09\0\0J\0\0K\0\0Y\0\0ä\0\0Ù\0\0+\Z\0\0d\Z\0\0e\Z\0\0o\Z\0\0}\0\0K\0\0\0\0\0Î\0\0I\0\0ˆ\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0\0\0\0\0\0\0\0\0\0\0Ì\0\0\0\0\0\0\0\0\0\0\0\0‰\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0¥\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0Ì\0\0\0\0\0\0\0\0\0\0\0\0‰\0\0\0\0\0\0\0\0\0\0\0\0®\0\0\0\0\0\0\0\0\0\0\0\0®\0\0\0\0\0\0\0\0\0\0\0\0®\0\0\0\0\0\0\0\0\0\0\0\0®\0\0\0\0\0\0\0\0\0\0\0\0ì\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$\r∆\0\0\0ÑÑ–]Ñ^Ñ–a$gd©1a\0\0\0\0$Ñ–^Ñ–a$gd[(\0\0\0$\n&\0F\0\r∆\08Ïæ\0\0\0Ñ8^Ñ8a$gd©1a\0\Z\0\0$\n&\0F\0\r∆\08Ïæ\0\0\0ÑæÑ8]Ñæ^Ñ8a$gd©1a\0\0\0\0Ñ–`Ñ–gd©1a\0\0\0\0Ñ–^Ñ–gd©1a\0\0\0\0Ñh^Ñhgd©1a\0\0ä\0\0Û\0\0Ù\0\0*\Z\0\0+\Z\0\0c\Z\0\0e\Z\0\0o\Z\0\0I\0\0J\0\0L\0\0M\0\0O\0\0P\0\0Q\0\0Z\0\0[\0\0\\\0\0h\0\0i\0\0j\0\0k\0\0ï\0\0ñ\0\0±\0\0≤\0\0¥\0\0«\0\0\0\0ÙÁ›Á›ÁÕÁ√πØπÁõã~ãqãc[W[Q[cπ~\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nh©1a\00J8\0\0h©1a\0\0j\0\0\0\0h©1a\0Uh≥$*\0hwsÍ\0OJ\0QJ\0\\Å^J\0h©1a\05ÅOJ\0QJ\0\\Å^J\0\0h≥$*\0hwsÍ\0OJ\0QJ\0^J\0\0h≥$*\0hwsÍ\05ÅOJ\0QJ\0\\Å^J\0\0\'h≥$*\0hwsÍ\05ÅOJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0h[(\0OJ\0QJ\0^J\0\0h©1a\0OJ\0QJ\0^J\0\0hÁBË\0OJ\0QJ\0^J\0\0h≥$*\0h©1a\05ÅOJ\0QJ\0\\Å^J\0\0h‡|9\0OJ\0QJ\0^J\0\0h≥$*\0h©1a\0OJ\0QJ\0^J\0\0h‡|9\0CJ\0OJ\0QJ\0^J\0I\0\0J\0\0K\0\0L\0\0M\0\0N\0\0O\0\0P\0\0Q\0\0¥\0\0»\0\0ˆ\0\0\0\0(\0\08\0\09\0\0G\0\0f\0\0¶\0\0ﬂ\0\0˘\0\0\0\0\0\0\0\0\0\0\0\0˘\0\0\0\0\0\0\0\0\0\0\0\0˘\0\0\0\0\0\0\0\0\0\0\0\0˘\0\0\0\0\0\0\0\0\0\0\0\0˘\0\0\0\0\0\0\0\0\0\0\0\0˘\0\0\0\0\0\0\0\0\0\0\0\0˘\0\0\0\0\0\0\0\0\0\0\0\0Ë\0\0\0\0\0\0\0\0\0\0\0\0‹\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0¡\0\0\0\0\0\0\0\0\0\0\0\0ß\0\0\0\0\0\0\0\0\0\0\0\0ß\0\0\0\0\0\0\0\0\0\0\0\0ß\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0$\n&\0F\0\r∆\08Ïæ\0\0\0ÑæÑ8]Ñæ^Ñ8a$gdwsÍ\0\0\0\0Ñ–`Ñ–gdwsÍ\0\0\0\0Ñ–^Ñ–gdwsÍ\0\0\0\0Ñh^ÑhgdwsÍ\0\0\0\n&\0F\0\r∆\0h\0gdwsÍ\0\0\0$\r∆\0\0\0Ñ]Ña$gdwsÍ\0\0\0\0Ñ–^Ñ–\0\0\0\0\0\0\0&\0\09\0\0G\0\0M\0\0S\0\0d\0\0f\0\0s\0\0u\0\0§\0\0Ó\0\0˛\0\0\' \0\01 \0\0\0\"\0\0\"\0\0\"\0\0\"\0\0(\"\0\0-\"\0\0.\"\0\0/\"\0\0ÛÊ”Ê≈ªÊ≠ÊªÊªÊ≈Êùà{ndR@nd\0\0\0\0#h©1a\0hûZ§\05ÅCJ \0OJ\0QJ\0^J\0aJ \0#h©1a\0h©1a\05ÅCJ \0OJ\0QJ\0^J\0aJ \0h©1a\0OJ\0QJ\0^J\0\0h≥$*\0hûZ§\0OJ\0QJ\0^J\0\0h≥$*\0h©1a\0OJ\0QJ\0^J\0\0)h©1a\0h©1a\0OJ\0QJ\0^J\0fH`\0q \n\0\0\0ˇ˚ˇˇ\0\0\0h≥$*\0hwsÍ\05ÅOJ\0QJ\0\\Å^J\0\0h≥$*\0hä_∆\05ÅOJ\0QJ\0^J\0hm≥\0OJ\0QJ\0^J\0\0h≥$*\0hwsÍ\05ÅOJ\0QJ\0^J\0$h≥$*\0hwsÍ\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0h≥$*\0hwsÍ\0OJ\0QJ\0^J\0\0h≥$*\0hä_∆\0OJ\0QJ\0^J\0ﬂ\0\0& \0\0\' \0\01 \0\0\"\0\0\"\0\0-\"\0\0.\"\0\0/\"\0\0N\"\0\0l\"\0\0í\"\0\0®\"\0\0…\"\0\0À\"\0\0“\"\0\0”\"\0\0Â\"\0\0Â\0\0\0\0\0\0\0\0\0\0\0\0‹\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0¬\0\0\0\0\0\0\0\0\0\0\0\0¬\0\0\0\0\0\0\0\0\0\0\0\0¬\0\0\0\0\0\0\0\0\0\0\0\0º\0\0\0\0\0\0\0\0\0\0\0\0º\0\0\0\0\0\0\0\0\0\0\0\0∑\0\0\0\0\0\0\0\0\0\0\0\0µ\0\0\0\0\0\0\0\0\0\0\0\0µ\0\0\0\0\0\0\0\0\0\0\0\0µ\0\0\0\0\0\0\0\0\0\0\0\0µ\0\0\0\0\0\0\0\0\0\0\0\0∑\0\0\0\0\0\0\0\0\0\0\0\0µ\0\0\0\0\0\0\0\0\0\0\0\0´\0\0\0\0\0\0\0\0\0\0\0\0õ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$Ñ∞Ñ–^Ñ∞`Ñ–a$gdÁBË\0\0	\0\0Ñ Ñ–^Ñ `Ñ–\0\0\0\0\0\0gd©1a\0\0\0\0Ñ†^Ñ†\0\0$\r∆\0\0\0Ñ]Ña$gd©1a\0\0\0\0Ñ–`Ñ–gdwsÍ\0\0\0\0Ñ–^Ñ–gdwsÍ\0\Z\0\0$\n&\0F\0\r∆\08Ïæ\0\0\0ÑæÑ8]Ñæ^Ñ8a$gdwsÍ\0\0/\"\0\0?\"\0\0A\"\0\0C\"\0\0H\"\0\0K\"\0\0M\"\0\0N\"\0\0\\\"\0\0a\"\0\0k\"\0\0l\"\0\0y\"\0\0ë\"\0\0í\"\0\0ñ\"\0\0®\"\0\0◊\"\0\0„\"\0\0Â\"\0\0ÛÈ€ÈÛŒÛ¡ŒÈ∑ÛÈÛ∑ŒÛÈÛ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h©1a\0OJ\0QJ\0^J\0\0h≥$*\0h?9\0OJ\0QJ\0^J\0\0h≥$*\0hÁBË\0OJ\0QJ\0^J\0\0hm≥\0hm≥\0H*OJ\0QJ\0^J\0hm≥\0OJ\0QJ\0^J\0\0h≥$*\0hûZ§\0OJ\0QJ\0^J\05\01êh:p‡|9\0;0∞–/ ∞‡=!∞†\"∞ü#ê–$ê–%∞\0\0∞–∞–ê–\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0^O\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ò\0\0\0ò\0\0\0û\0\0\0û\0\0\0û\0\0\0û\0\0\0û\0\0\0û\0\0\0û\0\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\0v\0\0v\0\0v\0\0v\0\0v\0\0v\0\0v\0\0v\0\0v\0\06\0\06\0\06\0\06\0\06\0\06\0\08\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\0®\0\0\06\0\06\0\0\0\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\0∏\0\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\0\0\0\06\0\0h\0\0H\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\0∞\0\06\0\02\0\0\0\0\0¿\0\0–\0\0‡\0\0\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0Ä\0\0ê\0\0¿\0\0–\0\0‡\0\0\0\0\0\0\0\0\02\0\0(\0\0ÿ\0\0Ë\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0Ä\0\0ê\0\0¿\0\0–\0\0‡\0\0\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0Ä\0\0ê\0\0¿\0\0–\0\0‡\0\0\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0Ä\0\0ê\0\0¿\0\0–\0\0‡\0\0\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0Ä\0\0ê\0\0¿\0\0–\0\0‡\0\0\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0Ä\0\0ê\0\0¿\0\0–\0\0‡\0\0\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0Ä\0\0ê\0\08\0\0X\0\0¯\0\0\0\0\0\0V\0\0~\0\0\0\0\0_HmH	@nH	@sH	@tH	@\0\0\0\0D\0\0`Òˇ\0D\0\0\0\0\0\0\0\0\0\0N\0o\0r\0m\0a\0l\0\0\0\0\0\0*$\0\0CJ\0_HaJ\0mH	sH	tH\0\0x\0@\0\0x\0\0\0\0\0\0\0\0\0	\0H\0e\0a\0d\0i\0n\0g\0 \02\0\0\08\0\0$\n&F\0Ñ\0\0Ñ\0\0Ñ\0\0-D@&M∆\n\0\0\0ˇøøø\0\0\0]Ñ\0\0^Ñ\0\0`Ñ\0\0\05CJ\0OJ\0QJ\0aJ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D\0A`Úˇ°\0D\0\0\0\0\0\0\0\0\0\0D\0e\0f\0a\0u\0l\0t\0 \0P\0a\0r\0a\0g\0r\0a\0p\0h\0 \0F\0o\0n\0t\0\0\0\0\0V\0i\0Ûˇ≥\0V\0\r\0\0\0\0\0\00\0T\0a\0b\0l\0e\0 \0N\0o\0r\0m\0a\0l\0\0\0 \0:V\0ˆ\0\04÷\0\0\04÷\0\nl\0aˆ\0\0\0\0\0\0(\0k Ùˇ¡\0(\0\0\r\0\0\0\0\0\00\0N\0o\0 \0L\0i\0s\0t\0\0\0\0\0\0\0\0\02\0˛oÚˇÒ\02\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\02\0z\00\0\0\0\0OJ\0QJ\02\0˛/Úˇ2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\03\0z\00\0\0\0\0OJ\0QJ\02\0˛/Úˇ2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\03\0z\01\0\0\0\0OJ\0QJ\06\0˛/Úˇ!6\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\03\0z\02\0\0\0\0CJ\0OJ\0QJ\06\0˛/Úˇ16\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\04\0z\00\0\0\0\0CJ\0OJ\0QJ\02\0˛/ÚˇA2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\05\0z\00\0\0\0\0OJ\0QJ\06\0˛/ÚˇQ6\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\06\0z\00\0\0\0\0CJ\0OJ	\0QJ	\0:\0˛/Úˇa:\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\07\0z\00\0\0\0\0CJ\0OJ\0QJ\0aJ\02\0˛/Úˇq2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\08\0z\00\0\0\0\0OJ\0QJ\02\0˛/ÚˇÅ2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\09\0z\00\0\0\0\0OJ\0QJ\0J\0˛/ÚˇëJ\0\0\0\0\0\0\0\0\0\0\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\0\0\0\0\0P\0˛/Úˇ°P\0\0\0\0\0\0\0\0\0\0\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\0\0\0\0\0R\0˛/Úˇ±R\0\0\0\0\0\0\0\0\0\0\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\0\0\0\0\0T\0˛/Úˇ¡T\0\0\0\0\0\0\0\0\0\0\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\0\0\0\0\0V\0˛/Úˇ—V\0\0\0\0\0\0\0\0\0\0\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\0\0\0\0\0X\0˛/Úˇ·X\0\0\0\0\0\0\0\0\0\0 \0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\01\0\0\0\0\02\0˛/ÚˇÒ2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\04\0z\01\0\0\0\0OJ\0QJ\02\0˛/Úˇ2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\06\0z\01\0\0\0\0OJ\0QJ\06\0˛/Úˇ6\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\08\0z\01\0\0\0\0OJ	\0QJ	\0^J	\02\0˛/Úˇ!2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\08\0z\02\0\0\0\0OJ\0QJ\06\0˛/Úˇ16\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\09\0z\01\0\0\0\0OJ	\0QJ	\0^J	\02\0˛/ÚˇA2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\09\0z\02\0\0\0\0OJ\0QJ\04\0˛/ÚˇQ4\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\00\0z\00\0\0\0\0OJ\0QJ\04\0˛/Úˇa4\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\00\0z\01\0\0\0\0OJ	\0QJ	\04\0˛/Úˇq4\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\00\0z\02\0\0\0\0OJ\0QJ\0<\0˛/ÚˇÅ<\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\01\0z\00\0\0\0\0CJ\0OJ\0QJ\0aJ\04\0˛/Úˇë4\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\01\0z\01\0\0\0\0OJ\0QJ\04\0˛/Úˇ°4\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\01\0z\02\0\0\0\0OJ\0QJ\04\0˛/Úˇ±4\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\01\0z\03\0\0\0\0OJ\0QJ\08\0˛/Úˇ¡8\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\02\0z\00\0\0\0\0CJ\0OJ\0QJ\0D\0A Úˇ—D\0\0\0\0\0\0\0\0\0\0\0D\0e\0f\0a\0u\0l\0t\0 \0P\0a\0r\0a\0g\0r\0a\0p\0h\0 \0F\0o\0n\0t\0\0\0\0\0Z\0˛/Úˇ·Z\0\0\0\0\0\0\0\0\0\0!\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\01\01\0\0\0\0\0\\\0˛/ÚˇÒ\\\0\0\0\0\0\0\0\0\0\0\"\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\01\01\01\0\0\0\0\0^\0˛/Úˇ^\0\0\0\0\0\0\0\0\0\0#\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\01\01\01\01\0\0\0\0\0`\0˛/Úˇ`\0\0\0\0\0\0\0\0\0\0$\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\01\01\01\01\01\0\0\0\0\0b\0˛/Úˇ!b\0\0\0\0\0\0\0\0\0\0%\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\01\01\01\01\01\01\0\0\0\0\0d\0˛/Úˇ1d\0\0\0\0\0\0\0\0\0\0&\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\01\01\01\01\01\01\01\0\0\0\0\02\0˛/ÚˇA2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\07\0z\01\0\0\0\0OJ\0QJ\0f\0˛/ÚˇQf\0\0\0\0\0\0\0\0\0\0\'\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\01\01\01\01\01\01\01\01\0\0\0\0\02\0˛/Úˇa2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\01\0z\00\0\0\0\0OJ\0QJ\0J\0˛/ÚˇqJ\0\0\0\0\0\0\0\0\0\0\0W\0W\0-\0D\0e\0f\0a\0u\0l\0t\0 \0P\0a\0r\0a\0g\0r\0a\0p\0h\0 \0F\0o\0n\0t\0\0\0\0\06\0U`ÚˇÅ6\0\0\0\0\0\0\0\0\0	\0H\0y\0p\0e\0r\0l\0i\0n\0k\0\0\0\0>*B*ph\0\0ˇ\04\0˛/Úˇë4\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\02\0z\01\0\0\0\0OJ\0QJ\0N\0˛/Úˇ°N\0\0\0\0\0\0\0\0\0\0\0W\0W\0-\0D\0e\0f\0a\0u\0l\0t\0 \0P\0a\0r\0a\0g\0r\0a\0p\0h\0 \0F\0o\0n\0t\01\01\0\0\0\0\0F\0˛oÚˇ±F\0\0\0\0\0\0\0\0\0\0\0Q\0u\0i\0c\0k\0F\0o\0r\0m\0a\0t\02\0\0\0\0B*CJ\0OJ\0QJ\0ph\0\0\0\0\0:\0˛/Úˇ¡:\0\0\0\0\0\0\0\0\0\0\0N\0u\0m\0b\0e\0r\0i\0n\0g\0 \0S\0y\0m\0b\0o\0l\0s\0\0\0\0\08\0˛/Úˇ—8\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\05\0z\00\0\0\0\0CJ\0OJ	\0QJ	\0F\0V Úˇ·F\0\0\0\0\0\0\0\0\0\0F\0o\0l\0l\0o\0w\0e\0d\0H\0y\0p\0e\0r\0l\0i\0n\0k\0\0\0\0>*B*\rphÄ\0\0\0N\0˛\0N\0\0\0\0\0\0\0\0\0\0\0H\0e\0a\0d\0i\0n\0g\0\0\0\r\0?\0§\0§x\0$\0\0CJ\0OJ\0PJ\n\0QJ\0^J\0aJ\06\0B\0\06\0\0\0\0\0\0\0\0\0	\0B\0o\0d\0y\0 \0T\0e\0x\0t\0\0\0\n\0@\0§\0\0§x\0\0\0(\0/\0(\0\0\0\0\0\0\0\0\0\0L\0i\0s\0t\0\0\0\0A\0\0^J\0H\0\"\0\0\"H\0\0\0\0\0\0\0\0\0\0C\0a\0p\0t\0i\0o\0n\0\0\0\r\0B\0§x\0§x\0$\0\06CJ\0]^J\0aJ\0.\0˛\02.\0\0\0\0\0\0\0\0\0\0\0I\0n\0d\0e\0x\0\0\0\0C\0$\0\0^J\04\0 \0\0B4\0\0\0\0\0\0\0\0\0\0F\0o\0o\0t\0e\0r\0\0\0\r\0D\0\r∆\0‡¿!\0\0\0>\0P@\0R>\0\0\0\0\0\0\0\0\0\0\0B\0o\0d\0y\0 \0T\0e\0x\0t\0 \02\0\0\0\0E\0\0OJ\0QJ\0CJ\0~\0˛O\0b~\0\0\0\0\0\0\0\0\0\0\0_\0l\0e\0v\0n\0l\03\05\0\0\0O\0F\0\r∆,\0\0\0–†p@‡∞ÄP ¿!ê$\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ8Ñò˛*$1$\0]Ñ\0\0^Ñ8`Ñò˛\0\0PJ\n\0~\0˛O\0r~\0\0\0\0\0\0\0\0\0\0\0_\0l\0e\0v\0n\0l\09\05\0\0\0O\0G\0\r∆,\0\0\0–†p@‡∞ÄP ¿!ê$\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ®Ñò˛*$1$\0]Ñ\0\0^Ñ®`Ñò˛\0\0PJ\n\0~\0˛\0Ç~\0\0\0\0\0\0\0\0\0\0\0_\0l\0e\0v\0n\0l\01\05\0\0\0O\0H\0\r∆,\0\0\0–†p@‡∞ÄP ¿!ê$\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0ÑhÑò˛*$1$\0]Ñ\0\0^Ñh`Ñò˛\0\0PJ\n\0<\0˛\0í<\0\0\0\0\0\0\0\0\0\0\0T\0a\0b\0l\0e\0 \0C\0o\0n\0t\0e\0n\0t\0s\0\0\0\0I\0$\0\0\0L\0˛ë¢L\0\0\0\0\0\0\0\0\0\0\r\0T\0a\0b\0l\0e\0 \0H\0e\0a\0d\0i\0n\0g\0\0\0\0J\0$$a$\0\065]\\T\0C\0\0≤T\0\0\0\0\0\0\0\0\0\0B\0o\0d\0y\0 \0T\0e\0x\0t\0 \0I\0n\0d\0e\0n\0t\0\0\0\Z\0K\0Ñ\0\0Ñ–Ñ\0\0]Ñ\0\0^Ñ–`Ñ\0\0\0\08\0˛¢\0¡8\0\0\0\0òB\0\0\0\0a\0p\0p\0l\0e\0-\0s\0t\0y\0l\0e\0-\0s\0p\0a\0n\0\0\0\0\0J\0^\0\0“J\0	\0\0%s¿\00\0N\0o\0r\0m\0a\0l\0 \0(\0W\0e\0b\0)\0\0\0\0M\0§d\0§d\0*$\0[$\\$\0\0tH	B\0˛¢\0·B\0\0\0\0\0	Ù\0\0\0\0a\0p\0p\0l\0e\0-\0c\0o\0n\0v\0e\0r\0t\0e\0d\0-\0s\0p\0a\0c\0e\0\0\0\0\0PK\0\0\0\0\0!\0Çäº˙\0\0\0\0\0\0\0\0[Content_Types].xml¨ëÀj√0E˜Ö˛É–∂ÿr∫(•ÿŒ¢Iw},“‰±-jèÑ4	…ﬂwÏ∏P∫-t#bŒô{UÆè„†ìÛTÈU^hÖd}„®´Ù˚Ó)ª◊*1PÉ\'¨Ù	ì^◊◊WÂÓ0)ô¶TÈû9<ìlè#§‹$yi}ÅÂ\Z;¿~@áÊ∂(ÓåıƒHúÒƒ–u˘*D◊†zÉ»/0ä«∞†˚˘$ÄòX´«3aZ¢“¬‡,∞D0j~Ë3ﬂ∂Œb„Ì~i>ÉÿÕ3ø\\`ı?Í/Á[ÿ¨∂GÈ‚\\ƒ!˝-€Rk.ìs˛‘ªê..ó∑¥aÊø≠?\0\0ˇˇ\0PK\0\0\0\0\0!\0•÷ßÁ¿\0\0\06\0\0\0\0\0_rels/.relsÑèœj√0áÔÖΩÉ—}Q“√%v/•êC/£}\0·(h\"€Î€O«\nªÑ§Ô˜©=˛Æã˘·îÁ ö™√‚C?Àh·v=øÇ…Ö§ß%[xpÜ£{€µ_ºP—£<Õ1•H∂0ïàŸOºRÆBd—…“JE€4b$ßëq_◊òû‡6L”ıR◊7`Æè®…ˇ≥√0ÃûO¡Ø,ÂEn7îLi‰b°®/„SΩê®e™‘–µ∏˘÷˝\0\0ˇˇ\0PK\0\0\0\0\0!\0kyñÉ\0\0\0ä\0\0\0\0\0\0theme/theme/themeManager.xmlÃM\n√ @·}°wêŸ7cª(Eb≤ÀÆªˆ\0Cú\ZA«†“ü€◊Â„É7Œﬂ’õK\rY,ú\räeÕ.à∑|,ß®⁄H≈,l·«ÊÈx…¥çﬂI»sQ}#’êÖ≠µ› ÷µ+’!Ô,›^π$j=ãGWË”˜)‚EÎ+&\n8˝\0\0ˇˇ\0PK\0\0\0\0\0!\0ñµ≠‚ñ\0\0P\0\0\0\0\0theme/theme/theme1.xmlÏYOo€6øÿw toc\'v\Zuäÿ±õ-MƒnáiâñÿP¢@“I}⁄„Ä√∫aáÿmáa[Åÿ•˚4Ÿ:l–Ø∞GRí≈X^í6ÿä≠>$˘„˚ˇ©´◊Ó«!)O⁄^˝rÕC$Òy@ì∞Ì›ˆ/≠yH*úòÒÑ¥Ω)ëﬁµç˜ﬂªä◊UDbÇ`}\"◊q€ãîJ◊óñ§√X^Ê)I`nÃEåºäp)¯Ë∆liπV[]ä1M<î‡»ﬁ\Zè©O–PìÙ6r‚=Øâíz¿gb†IgÖ¡uçêSŸeb÷ˆÄO¿èÜ‰æÚ√R¡D€´ôü∑¥qu	ØgãòZ∞∂¥Æo~Ÿ∫lAp∞lxäpT0≠˜≠+[}`j◊Îı∫ΩzAœ\0∞ÔÉ¶Vñ2ÕF≠ﬁ…iñ@ˆqûv∑÷¨5\\|â˛ úÃ≠Nß”le≤X¢ds¯µ⁄jcsŸ¡ê≈7ÁçŒf∑ªÍ‡\r»‚WÁ˝+≠’Üã7†à—‰`≠⁄Ôg‘»ò≥ÌJ¯\Z¿◊j|ÜÇh(¢K≥ÛD-äµﬂ„¢\0\rdX—©iJ∆ÿá(Ó‚x$(÷:¡•;‰Àπ!ÕI_–TµΩS1£˜Í˘˜Øû?E«û?¯È¯·√„?ZBŒ™múÑÂU/ø˝Ïœ«£?û~ÛÚ—’xY∆ˇ˙√\'ø¸¸y5“g&Œã/ü¸ˆÏ…ãØ>˝˝ªGMÅGe¯ê∆D¢õ‰ÌÛ3Vq%\'#qæ√”ÚäÕ$î8¡öK˝ûäÙÕ)fôw9:ƒµ‡Â£\nx}rœxââ¢úw¢ÿÓrŒ:\\TZaGÛ*ôy8I¬jÊbR∆Ìc|X≈ªã«øΩI\nu3KGÒnD1˜NIB“s¸Äê\nÌÓRÍÿuó˙ÇK>VË.EL+M2§#\'öfã∂i~ôVÈ˛vl≥{u8´“zã∫H»\nÃ*ÑÊòÒ:û(Wë‚òï\r~´®J»¡T¯e\\O*tHGΩÄHYµÊñ\0}KNﬂ¡P±*›æÀ¶±ãäT—ºÅ9/#∑¯A7¬qZÖ–$*c?ê¢ÌqUﬂÂnÜËwN∫˚%éªOØ∑iËà4=3⁄óP™ù\n”‰Ô 1£Pèm\\\\9Ü¯‚Î«ëı∂‚Mÿì™2a˚D˘]Ñ;Ytª\\ÙÌØπ[xíÏÛ˘çÁ]…}WrΩˇ|…]îœg-¥≥⁄\neW˜\r∂)6-rº∞CS∆j »\riöd	˚D–áAΩŒúIqbJ#xÃÍ∫É6kê‡Í#™¢AÑSh∞Îû& åt(Q %ÏÃp%mçá&]ŸcaSl=êXÌÚ¿ØË·¸\\Pê1ªMhü9£M‡¨ÃVÆdDAÌ◊aV◊Bùô[›àfJù√≠P|8Ø\Z÷ÑA€V^ÖÛπf\rÃH†Ìn˜ﬁ‹-∆È\"·Äd>“zœ˚®núî«äπ	Äÿ©ë>‰ùbµ∑ñ&˚‹Œ‚§2ª∆vπ˜ﬁƒKyœº§ÛˆD:≤§úú,AGmØ’\\nz»«i€√ô„º.uœáYCæ6ÏOMfìÂ3o∂r≈‹$®√5Öµ˚ú¬NHÖT[XF64ÃT,—ú¨¸ÀM0ÎE)`#˝5§XYÉ`¯◊§\0;∫Æ%„1ÒUŸŸ•m;˚öïR>QD¢‡çÿDÏcpøU–\'†Æ&LE–/pè¶≠m¶‹‚ú%]˘ˆ ‡Ï8fiÑ≥r´S4œd7y\\»`ﬁJ‚Ånï≤ÂŒØäI˘R•∆ˇ3UÙ~7+ÅˆÄ◊∏#ùØmèq®BiD˝æÄ∆¡‘à∏ãÖi*∏L6ˇ9‘ˇmŒY\Z&≠·¿ßˆiàÖ˝HEÇê=(K&˙N!Vœˆ.KíeÑLDïƒï©{D	Í\Z∏™˜vEÍ¶öde¿‡N∆ü˚ûe–(‘MN9ﬂú\ZRÏΩ6˛ÈŒ«&3(Â÷a”–‰ˆ/D¨ÿUÌz≥<ﬂ{ÀäËâYõ’»≥òï∂ÇVñˆØ)¬9∑Z[±Ê4^nÊ¬ÅÁ5Ü¡¢!J·æÈ?∞ˇQ·3˚eBo®Cæµ¡áM¬¢˙ím<ê.êvpçì¥¡§IY”f≠ì∂ZæY_pß[=al-ŸY¸}NcÕôÀŒ…≈ã4vfa«÷vl°©¡≥\'SÜ∆˘A∆8∆|“*u‚£{‡Ë-∏ﬂü0%M0¡7%Å°ıò<Ä‰∑Õ“çø\0\0\0ˇˇ\0PK\0\0\0\0\0!\0\r—êü∂\0\0\0\0\0\'\0\0\0theme/theme/_rels/themeManager.xml.relsÑèM\n¬0Ñ˜Çwoo”∫ë&›à–≠‘Ñ‰5\r6?$QÏÌ\rÆ,.áaæôiªóù…c2ﬁ1h™\Z:Èïqö¡m∏Ïé@RNâŸ;d∞`Çéo7ÌgëK(M&$R(.1òr\'Jìú–äT˘ÄÆ8£èV‰\"£¶A»ª–H˜u}†Òõ|≈$Ωb{’\0ñPöˇ≥˝8\Zâg/]˛QAsŸÖ(¢∆Ã‡#õ™L [∫∫ƒﬂ\0\0\0ˇˇ\0PK-\0\0\0\0\0\0!\0Çäº˙\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[Content_Types].xmlPK-\0\0\0\0\0\0!\0•÷ßÁ¿\0\0\06\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0+\0\0_rels/.relsPK-\0\0\0\0\0\0!\0kyñÉ\0\0\0ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0theme/theme/themeManager.xmlPK-\0\0\0\0\0\0!\0ñµ≠‚ñ\0\0P\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0—\0\0theme/theme/theme1.xmlPK-\0\0\0\0\0\0!\0\r—êü∂\0\0\0\0\0\'\0\0\0\0\0\0\0\0\0\0\0\0\0õ	\0\0theme/theme/_rels/themeManager.xml.relsPK\0\0\0\0\0\0]\0\0ñ\n\0\0\0\0<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\r\n<a:clrMap xmlns:a=\"http://schemas.openxmlformats.org/drawingml/2006/main\" bg1=\"lt1\" tx1=\"dk1\" bg2=\"lt2\" tx2=\"dk2\" accent1=\"accent1\" accent2=\"accent2\" accent3=\"accent3\" accent4=\"accent4\" accent5=\"accent5\" accent6=\"accent6\" hlink=\"hlink\" folHlink=\"folHlink\"/>\0\0\0\0Â\Z\0\0\r\0\0V\0\0\0\0ˇˇˇˇ\0\0\0z\0\0#\n\0\0s\0\0b\0\0≤\0\0 \r\0\0ô\r\0\0˛\r\0\0Ï\0\0\0\0?\0\0Ω\0\0ä\0\0\0\0/\"\0\0Â\"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!\0\0\0\"\0\0\0$\0\0\0&\0\0\0(\0\0\0*\0\0\0\0\0\0Æ\n\0\0≤\0\0õ\0\0r\0\0!\0\0ª\0\0I\0\0ﬂ\0\0Â\"\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0 \0\0\0#\0\0\0%\0\0\0\'\0\0\0)\0\0\0©\n\0\0“\n\0\0Ì\n\0\0?\r\0\0f\r\0\0\r\0\0k\0\0ê\0\0ß\0\0j\0\0ï\0\0±\0\0Â\Z\0\0XˇåXˇåXˇÑXˇå\0\08\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0Ò\0\0\0ˇˇ\0\0\0\0ˇ\0ÄÄÄ\0˜\0\0\0\0¸\0\0\0\0\0\0\0\0\0\0\0\0\0ö\0\0\0\0(\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0b\0\0\0B\n\0\0\0\0\0\0\n\0\0c\0$\0\0\0D\0\0\0ø\0\0\0Àê$\0\0÷\0\0\0ˇ\0\0?\0\0\0\0\"Ò\0\0\0?\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0B\0\0\0\0\n\0\0\0\0\0\0\0\0S\0\0\0\0É\0\0\0\0ø\0\0À\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0Â\Z\0\0\0\0\0\0\0\0r\0\0\0É$\0\0r\0\0\0t\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¶\0\0¨\0\0Î\0\0Û\0\0ﬂ\0\0‰\0\0Ï\0\0Ú\0\0T\0\0\\\0\0¡\0\0»\0\0\0\0\n\0\0\0\0\0\0.\0\03\0\0f\0\0m\0\0U\0\0X\0\0Z\0\0_\0\0k\0\0q\0\0w\0\0}\0\0~\0\0Ö\0\0ì\0\0ö\0\0\"\0\0/\0\0Y\0\0_\0\0i\0\0t\0\0	\0\0	\0\0I\n\0\0N\n\0\0R\n\0\0Y\n\0\0^\n\0\0e\n\0\0\0\0\0\0\0\0\0\0)\0\0/\0\05\0\0;\0\0<\0\0C\0\0Q\0\0X\0\0:\r\0\0=\r\0\0å\r\0\0í\r\0\0ß\r\0\0¨\r\0\0‡\r\0\0Á\r\0\0¸\r\0\0\0\0¨\0\0π\0\0¬\0\0»\0\0”\0\0ﬁ\0\0 \0\0Õ\0\0œ\0\0‘\0\0‡\0\0Ê\0\0Ï\0\0Ú\0\0Û\0\0˙\0\0\0\0\0\0$\0\0+\0\0≈\0\0“\0\0o\0\0u\0\0K\0\0Q\0\0\0\0\0\0\0\\\0\0h\0\0¬\0\0«\0\0◊\0\0⁄\0\0‹\0\0·\0\0Ì\0\0Û\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0à\0\0è\0\0a\Z\0\0k\Z\0\0ñ\Z\0\0û\Z\0\0◊\Z\0\0‹\Z\0\0›\Z\0\0„\Z\0\0Á\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¶\0\0\0\0â\n\0\0ê\n\0\0\0\0\0\0Á\Z\0\0\03\0\03\0\03\0\0\0\0\0\0≠\0\0≠\0\0Æ\0\0Æ\0\0˙\0\0˙\0\0b\0\0i\0\0|\0\0|\0\0}\0\0}\0\0\0\0\0\07\0\07\0\0≥\0\0≥\0\0‰\Z\0\0Á\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇˇˇˇˇˇˇˇˇ\0\0\0\0\0\0\0\0ˇˇˇˇˇˇˇˇˇ\0\0\0\0\0\0\0ˇˇˇˇˇˇˇˇˇ\0\0\0\0\0Eòˇˇˇˇˇˇˇˇˇ\0\0\0\0\0\0\0ˇˇˇˇˇˇˇˇˇ\0\0\0\0\0\0\0\0ˇˇˇˇˇˇˇˇˇ\0\0\0\0\0\0\0ˇˇˇˇˇˇˇˇˇ\0\0\0\0\0\0\0ˇˇˇˇˇˇˇˇˇ\0	\0\0\0	\0\0\0ˇˇˇˇˇˇˇˇˇ\0\0[~©2Ônüˇˇˇˇˇˇˇˇˇ\0(TLﬁ‘VÖˇˇˇˇˇˇˇˇˇ\0±d”MÓp ^ˇˇˇˇˇˇˇˇˇ\05{‹i÷˛í≈ˇˇˇˇˇˇˇˇˇ\0PU≥w>pˇˇˇˇˇˇˇˇˇ\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0OJ\0QJ\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0OJ\0QJ\0\0l\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0OJ\0QJ\0\0Å\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0OJ\0QJ\0CJ\0\0†%\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0OJ\0QJ\0\0l\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0OJ\0QJ\0\0Å\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0OJ\0QJ\0CJ\0\0†%\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0OJ\0QJ\0\0l\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0OJ\0QJ\0\0Å\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0OJ\0QJ\0CJ\0\0†%\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0CJ\0OJ\0QJ\0CJ\0aJ\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ–Ñò˛∆\0–^Ñ–`Ñò˛OJ\0QJ\0\0∑\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÑhÑò˛∆\0h^Ñh`Ñò˛OJ\0QJ\0CJ\0\0∑\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ–Ñò˛∆\0–^Ñ–`Ñò˛CJ\0OJ\0QJ\0aJ\0\0∑\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÑÑò˛∆\0^Ñ`Ñò˛OJ\0QJ\0\0∑\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ–Ñò˛∆\0–^Ñ–`Ñò˛OJ\0QJ\0\0∑\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ–Ñò˛^Ñ–`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ†Ñò˛^Ñ†`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑpÑò˛^Ñp`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ@Ñò˛^Ñ@`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑÑò˛^Ñ`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ‡Ñò˛^Ñ‡`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ∞Ñò˛^Ñ∞`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑÄÑò˛^ÑÄ`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑPÑò˛^ÑP`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ–Ñò˛^Ñ–`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ÿ\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ†Ñò˛^Ñ†`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑpÑò˛^Ñp`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ@Ñò˛^Ñ@`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑÑò˛^Ñ`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ‡Ñò˛^Ñ‡`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ∞Ñò˛^Ñ∞`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑÄÑò˛^ÑÄ`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑPÑò˛^ÑP`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ8Ñò˛^Ñ8`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑÑò˛^Ñ`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñÿ	Ñò˛^Ñÿ	`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ®Ñò˛^Ñ®`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑxÑò˛^Ñx`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑHÑò˛^ÑH`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑÑò˛^Ñ`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑËÑò˛^ÑË`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ∏\ZÑò˛^Ñ∏\Z`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ–Ñò˛^Ñ–`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ†Ñò˛^Ñ†`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑpÑò˛^Ñp`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ@Ñò˛^Ñ@`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑÑò˛^Ñ`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ‡Ñò˛^Ñ‡`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ∞Ñò˛^Ñ∞`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑÄÑò˛^ÑÄ`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑPÑò˛^ÑP`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ–Ñò˛^Ñ–`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ†Ñò˛^Ñ†`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÑpÑò˛^Ñp`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ@Ñò˛^Ñ@`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÑÑò˛^Ñ`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ‡Ñò˛^Ñ‡`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ∞Ñò˛^Ñ∞`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÑÄÑò˛^ÑÄ`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÑPÑò˛^ÑP`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(TL\0\0\0\0\0\0\0\0\0\0\0\05{‹i\0\0\0\0\0\0\0\0\0\0\0\0±d”M\0\0\0\0\0\0\0\0\0\0\0\0PU≥w\0\0\0\0\0\0\0\0\0\0\0\0[~©\0\0\0\0\0\0\0\0\0\0\0\0ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ\0\0\0\0\0\0W\0W\08\0N\0u\0m\02\0\0W\0W\08\0N\0u\0m\03\0\0W\0W\08\0N\0u\0m\04\0\0W\0W\08\0N\0u\0m\05\0\0W\0W\08\0N\0u\0m\06\0\0W\0W\08\0N\0u\0m\07\0\0W\0W\08\0N\0u\0m\08\0\0W\0W\08\0N\0u\0m\09\0\0\0\0\0\0\0\0\0\0\0ˇˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0\0	\0	\0	\0	\0	\0	\0	\0	\0	\0\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0_∞\0\0\0\0\0\0\0\0\0\0\04H¬>\0\0\0\0\0\0\0\0\0\0\0ZC\Zj\0\0\0\0\0\0\0\0\0\0\0N\0\0\0\0\0\0\0\0Â\0\0\0\0\0\0\0M\0\0?9\0æe\0ê*\0rz\0≤)\0ü-\0¿F\0J;\0≠y\0û\0ºK\0k\0xh	\0¿v	\0„7\n\0Pe\n\0m\0Z\0X\"\0Û_\0\Zd\r\0MM\0%g\02\0µR\0*S\0Ñ7\0QH\0Ï\0¯=\0¬a\0L-\0”.\0≤3\0€)\Z\0oz\Z\0\0î\0}-\0¨=\0m\0_I\05p\0¡)\0·/\"\0ˆ7\"\0pA#\0òh#\0◊\0%\0.7&\0‹s\'\0[(\0+D)\0≥$*\0wZ*\0az*\0“+\0Y,\0/,\0ús,\0›-\0˜]-\0È$.\0ïR/\09n/\0©#0\0l0\0\Z]2\0o34\0\"!6\0Ú<6\0|U7\0ƒV7\0π9\0‡|9\0˛X:\0r;\0H;\0Ÿ5<\0xE<\0„L<\0g>\0® >\0,>\0Ò1>\0\\2>\0?\0ï?\0°?\0@l?\0%A\0òB\0HMB\0\"eB\0˙bC\0°nD\0tF\0xRF\0ÉSF\0G\0R&G\0QWH\01I\09I\0‰lI\0⁄K\0o@L\0E~M\0å?O\0ﬁaP\0rR\0H,S\0^U\0YV\0Ã=W\0~X\0™Y\0Û/Z\0ï	\\\0H\\\0â]\0Å^\0&^^\0L_\0\'|_\0¯p`\0©1a\0tc\0@d\0%e\0xf\0àf\0—/g\0%=g\0Dg\0]h\0’	h\0jh\0;i\0dj\0˝Pk\0=qk\0†~k\0+Wl\0uYl\0lgl\0˘qo\0Ãp\0\"/p\0TTq\0⁄/r\0¿Er\0t\\s\0øt\09v\0/Hv\0∆Nv\0tw\0wnw\0Ux\0∆px\0û<z\0g?z\0ØU|\0V|\0m|\0A%\0«=Ä\0BÄ\0Ñ_Ä\0ÙYÅ\0æoÅ\0(%Ç\0ÀpÇ\0¸cÑ\0ßyÑ\0QXÖ\0∑.Ü\0Ká\0ˇ(á\0;à\0|à\0\r\Zâ\0tkâ\0î[ä\0òzå\0ÿç\00Kç\0*é\0-Uè\0ö}è\0@ê\0‡Qê\0\"xë\0–ë\0∂ì\0≈)î\0ã^î\0‘lî\0¬1ñ\0U3ñ\0¨Dñ\0ã$ó\0Épô\0Ÿfö\0·pö\0Oõ\0Xõ\0qbõ\0swü\0Tzü\0@¢\0ûZ§\0Än¶\0ƒ ß\0Å}ß\0>\Z™\0]O´\0˘\\´\0P≠\0¢Æ\0\"TÆ\0JHØ\0ÚL∞\0P±\0$n≤\0Øy≤\0ÆO≥\0m≥\0ß(¥\0xµ\07∂\0]>∑\0Éi∑\0\n∏\0é-∏\0+π\0>aπ\0Riπ\0Ü\'∫\0œx∫\0Mª\0\"jª\0\'\nΩ\0F#Ω\0Mæ\0ªLø\0¶¿\0–0¿\0ø2¿\0%s¿\0\Z¬\0f¬\0Ë@¬\0BI¬\0„≈\0&≈\0Á9≈\0D≈\0Ï~≈\0ü∆\0ä_∆\0è]»\0i»\0˝=…\0âe \0gÀ\0‰~À\0=+Ã\0ˇJÃ\0≈gÕ\0ÄŒ\0P\\Œ\0è0œ\0ö~œ\0˛f“\0\rq“\0j	”\0¶H”\0d”\0£1‘\0Ç’\0˘;’\0\r#÷\0 ◊\0\"ÿ\0[Fÿ\0Õ%Ÿ\0l\Z⁄\0˙~⁄\0·@€\0≥\0‹\0¬U‹\0J6ﬂ\0Ì\\ﬂ\0¸G‡\0Ba‡\0wf·\0ﬂl·\0u\n‚\0Â‚\0-„\0ó{„\0¬@‰\0«|‰\0ÁKÂ\0\r3Ê\0¡<Á\0åË\0ÁBË\0«Í\0UÍ\0wsÍ\0BTÎ\0uÏ\0ôzÓ\0*Ô\0ËÔ\0ı`\01r\0ds\0ÔÚ\0\0	Ù\0Ñ<Ù\09\n˜\0÷˜\0˘˜\0y¯\0¨D˚\0äP˚\0Å6˝\0[\"˛\0Ï(˛\0^ˇ\0\0\0\0\0Â\Z\0\0Á\Z\0\0\0\0\0\0\0\0\0ˇ@Ä\0˙\0\0˙\0\0\0†/\0\0˙\0\0\0\0\0\0˙\0\0\0\0\0\0\0\0\0\0\0\0\0Â\Z\0\0h\0\0\0@\0\0ˇˇ\0\0\0\0U\0n\0k\0n\0o\0w\0n\0ˇˇ\0\0\0\0\0\0\0\0\0\0\0\0ˇˇ\0\0\0\0\0ˇˇ\0\0\0ˇˇ\0\0\0\0ˇˇ\0\0\0ˇˇ\0\0\0\0\0\0\0Gê\0\0ˇ*\0‡Ax\0¿	\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0T\0i\0m\0e\0s\0 \0N\0e\0w\0 \0R\0o\0m\0a\0n\0\0\05ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ä\0\0\0\0S\0y\0m\0b\0o\0l\0\0\03.ê\0\0ˇ*\0‡Cx\0¿	\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0A\0r\0i\0a\0l\0\0\07ê\0\0\ná\0\0\0\0\0\0\0\0\0\0\0\0\0ü\0\0\0\0\0\0\0S\0y\0l\0f\0a\0e\0n\0\0\09ê\0\0á\0\0\0\0\0\0\0\0\0\0\0\0\0\0ü\0\0\0\0\0\0\0G\0a\0r\0a\0m\0o\0n\0d\0\0\05.ê\0\0ˇ.\0·[`\0¿)\0\0\0\0\0\0\0ˇ\0\0\0\0\0T\0a\0h\0o\0m\0a\0\0\0;ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ä\0\0\0\0W\0i\0n\0g\0d\0i\0n\0g\0s\0\0\0?ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ä\0\0\0\0W\0i\0n\0g\0d\0i\0n\0g\0s\0 \02\0\0\0]ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0S\0t\0a\0r\0S\0y\0m\0b\0o\0l\0\0\0T\0i\0m\0e\0s\0 \0N\0e\0w\0 \0R\0o\0m\0a\0n\0\0\0?=ê\0\0	ˇ*\0‡Cx\0¿	\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0C\0o\0u\0r\0i\0e\0r\0 \0N\0e\0w\0\0\0O.ê\0\0ˇ\n\0Äk9\0\0\0\0\0\0\0\0\0\0ø\0\0\0\0\0\0\0L\0u\0c\0i\0d\0a\0 \0S\0a\0n\0s\0 \0U\0n\0i\0c\0o\0d\0e\0\0\0Aê\0\0ˇ\0‡ˇ$\0B\0\0\0\0\0\0\0\0ü\0\0\0\0\0\0C\0a\0m\0b\0r\0i\0a\0 \0M\0a\0t\0h\0\0\0B\0\0Aà\0\0–\0\0h\0\0\0\0\0§gy¥ßzm™¶\0\0\0\0\0‚\0\0\0\r\0\0\0\0Éê0\0\0\0\0\0‚\0\0\0\r\0\0\00\0\0\0\0\0\0\0a\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\020\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Z\0\0ÿ\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0JÉq\0\0\0\0\0‹ˇˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0HP\0\0\0\0	ˇ\0	$P\0\0\0\0\0\0ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇdj\0\0\0\0≤\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0x\0\0\0x\0\0\0\0\0\0\0\0\0\0\0†\0\0ˇˇ\0\0\0\0\0\0\0\0R\0a\0j\0e\0s\0h\0\0\0\0\0\0\0\0R\0a\0j\0\0B\0o\0b\0b\0y\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\n\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0˛ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0‡ÖüÚ˘Oh´ë\0+\'≥Ÿ0\0\0\0h\0\0\0\0\0\0\0\0ê\0\0\0\0\0\0ò\0\0\0\0\0\0®\0\0\0\0\0\0¥\0\0\0\0\0\0¿\0\0\0\0\0\0Ã\0\0\0\0\0\0‹\0\0\0	\0\0\0Ï\0\0\0\0\0\0¯\0\0\0\n\0\0\0\0\0\0\0\0$\0\0\0\0\00\0\0\r\0\0\0<\0\0\0\0\0H\0\0\0\0\0P\0\0\0\0\0X\0\0\0\0\0`\0\0\0\0\0‰\0\0\0\0\0\0\0\0Rajesh\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Raj\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Normal\0\0\0\0\0\0\0\0Bobby\0\0\0\0\0\0\0\0\016\0\0\0\0\0\0\0\0Microsoft Office Word\0\0\0@\0\0\0\0TôJ\0\0\0@\0\0\0\0(Få‰Ó∆@\0\0\0\0Ñ\'w€ÂŒ@\0\0\0\0:$~ÁŒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0‚\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0˛ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0’Õ’ú.ìó\0+,˘ÆD\0\0\0’Õ’ú.ìó\0+,˘Æ4\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0p\0\0\0\0\0\0|\0\0\0\0\0\0Ñ\0\0\0\0\0\0å\0\0\0\0\0\0î\0\0\0\0\0\0ú\0\0\0\0\0\0§\0\0\0\0\0\0¨\0\0\0\0\0\0¥\0\0\0\r\0\0\0º\0\0\0\0\0\0œ\0\0\0\0\0\0‰\0\0\0\0\0\0\0\0IT\0\0\0\0\00\0\0\0\0\0\0\r\0\0\0\0\0\0ÿ\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Rajesh\0\0\0\0\0\0\0\0\0\0\0\0Title\0\0\0\0\0\0\0\0\0\0Ù\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\08\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0_PID_HLINKS\0\0\0\0‰\0\0A\0\0\0¨\0\0\0\0\0\0\0\0J\0Z\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0t\0t\0p\0:\0/\0/\0w\0w\0w\0.\0m\0o\0m\0e\0t\0r\0o\0s\0a\0l\0e\0s\0.\0c\0o\0m\0/\0\0\0\0\0\0\0\0\0\0\0\0\0œ\0\0\0>\07\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0t\0t\0p\0:\0/\0/\0w\0w\0w\0.\0g\0y\0a\0p\0t\0i\0.\0c\0o\0m\0/\0\0\0\0\0\0\0\0\0\0\0\0\0œ\0\0\0]\0U\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0t\0t\0p\0:\0/\0/\0r\0v\0r\0.\0t\0h\0e\0w\0t\0o\0u\0r\0.\0c\0o\0m\0/\0\0\0\0\0\0\0\0\0\0\0\0\0œ\0\0\0&\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0t\0t\0p\0:\0/\0/\0w\0o\0r\0k\0f\0o\0r\0c\0e\0-\0b\0a\0s\0e\0.\0c\0o\0m\0/\0\0\0\0\0\0\0\0\0\0\0\0\0œ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0!\0\0\0\"\0\0\0#\0\0\0$\0\0\0%\0\0\0&\0\0\0\'\0\0\0(\0\0\0)\0\0\0*\0\0\0+\0\0\0˛ˇˇˇ-\0\0\0.\0\0\0/\0\0\00\0\0\01\0\0\02\0\0\03\0\0\0˛ˇˇˇ5\0\0\06\0\0\07\0\0\08\0\0\09\0\0\0:\0\0\0;\0\0\0<\0\0\0=\0\0\0>\0\0\0?\0\0\0@\0\0\0A\0\0\0B\0\0\0C\0\0\0D\0\0\0E\0\0\0F\0\0\0G\0\0\0H\0\0\0I\0\0\0J\0\0\0K\0\0\0L\0\0\0M\0\0\0N\0\0\0O\0\0\0P\0\0\0Q\0\0\0R\0\0\0S\0\0\0T\0\0\0U\0\0\0V\0\0\0W\0\0\0X\0\0\0Y\0\0\0Z\0\0\0[\0\0\0\\\0\0\0˛ˇˇˇ^\0\0\0_\0\0\0`\0\0\0a\0\0\0b\0\0\0c\0\0\0d\0\0\0˛ˇˇˇf\0\0\0g\0\0\0h\0\0\0i\0\0\0j\0\0\0k\0\0\0l\0\0\0˛ˇˇˇ˝ˇˇˇo\0\0\0˛ˇˇˇ˛ˇˇˇ˛ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇR\0o\0o\0t\0 \0E\0n\0t\0r\0y\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇˇˇˇˇˇˇˇ\0\0\0	\0\0\0\0\0¿\0\0\0\0\0\0F\0\0\0\0\0\0\0\0\0\0\0\0ê+˚D~ÁŒq\0\0\0Ä\0\0\0\0\0\0\0D\0a\0t\0a\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0ˇˇˇˇˇˇˇˇˇˇˇˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0,\0\0\0\0\0\0\0\0\0\01\0T\0a\0b\0l\0e\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇˇˇˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04\0\0\0ÚP\0\0\0\0\0\0W\0o\0r\0d\0D\0o\0c\0u\0m\0e\0n\0t\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0ˇˇˇˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\07V\0\0\0\0\0\0\0S\0u\0m\0m\0a\0r\0y\0I\0n\0f\0o\0r\0m\0a\0t\0i\0o\0n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(\0ˇˇˇˇˇˇˇˇˇˇˇˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0]\0\0\0\0\0\0\0\0\0\0\0D\0o\0c\0u\0m\0e\0n\0t\0S\0u\0m\0m\0a\0r\0y\0I\0n\0f\0o\0r\0m\0a\0t\0i\0o\0n\0\0\0\0\0\0\0\0\0\0\08\0\0\0\0ˇˇˇˇˇˇˇˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0e\0\0\0\0\0\0\0\0\0\0\0C\0o\0m\0p\0O\0b\0j\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇˇˇˇˇˇˇˇˇˇˇˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0y\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇˇˇˇˇˇˇˇˇˇˇˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0˛ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ\0˛ˇ\n\0\0ˇˇˇˇ	\0\0\0\0\0¿\0\0\0\0\0\0F\'\0\0\0Microsoft Office Word 97-2003 Document\0\n\0\0\0MSWordDoc\0\0\0\0Word.Document.8\0Ù9≤q\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'LocalBusiness',NULL,326);
insert into `template` values 
(18,'Breaking','ˇÿˇ‡\0JFIF\0\0x\0x\0\0ˇ·\0≤Exif\0\0MM\0*\0\0\0\0ái\0\0\0\0\0\0\0\Z\0\0\0\0\0íÜ\0\0\0\0|\0\0\0,\0\0\0\0UNICODE\0\0C\0R\0E\0A\0T\0O\0R\0:\0 \0g\0d\0-\0j\0p\0e\0g\0 \0v\01\0.\00\0 \0(\0u\0s\0i\0n\0g\0 \0I\0J\0G\0 \0J\0P\0E\0G\0 \0v\06\02\0)\0,\0 \0q\0u\0a\0l\0i\0t\0y\0 \0=\0 \01\00\00\0\n\0\0ˇ€\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342ˇ€\0C			\r\r2!!22222222222222222222222222222222222222222222222222ˇ¿\08Ä\"\0ˇƒ\0\0\0\0\0\0\0\0\0\0\0	\nˇƒ\0µ\0\0\0}\0!1AQa\"q2Åë°#B±¡R—$3brÇ	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzÉÑÖÜáàâäíìîïñóòôö¢£§•¶ß®©™≤≥¥µ∂∑∏π∫¬√ƒ≈∆«»… “”‘’÷◊ÿŸ⁄·‚„‰ÂÊÁËÈÍÒÚÛÙıˆ˜¯˘˙ˇƒ\0\0\0\0\0\0\0\0	\nˇƒ\0µ\0\0w\0!1AQaq\"2ÅBë°±¡	#3Rbr—\n$4·%Ò\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzÇÉÑÖÜáàâäíìîïñóòôö¢£§•¶ß®©™≤≥¥µ∂∑∏π∫¬√ƒ≈∆«»… “”‘’÷◊ÿŸ⁄‚„‰ÂÊÁËÈÍÚÛÙıˆ˜¯˘˙ˇ⁄\0\0\0?\0‚P\0‡ëœ≠>DPrß9ÎQ#ÇG\"¶S¡=È]n«=∆*nsé‘‡n‘ÕÌ»œ^òß§Lﬂhœ$ˆ§‰;íBªê´u)S”}*I”jñQïSÇ¬¢/êqR›’∆ª®\n=≈h[Ír¨9G9Ù™\n7ÄO åäê)]º\røZâ¡IZBwLí;xÇ8å˘gø∏™é†Ê ¿ëŒÔZ≤dX€úû8\"´˘Eπ<{SÑU¡1#êDB‡ìû´J‚2vÁ≠:ÿ∏a\"åÆ?˝u_R2˘¬Hr|Æ∏®®Ó’äZÓi⁄èÏÈRQÚ≤C©ËiáTö€Rπª@≤«p§J1¡œcSY(º#Êe	e#€ö°q2ŸX»$ƒ«ˆ¯¨ÍBÓ·ÕÌBK;œ≥^ÅõóÅ@«BG^+\ZÌR¯¢]@—™ÙaŒ*∂è\"ŒZﬁ6∫åB(À(Ô≈-œà£æ0¬±∂ªRﬂBö÷‰Òÿ¥Œ÷†æ’\\á=H§ã@b¡b`Ó9√U´›A°¥∑h@‹GÈV ïÇâáR3◊Ωw∫%∂cïhÇ0WΩ^Ñ§—nS…Ë}j=CiÛ22jßÖÊIı±Hÿ‹ÿ\\ú`÷í}kÍj«§≠’ªB\'^JÁ∑“¥áÅµü\'œ˚£⁄så8≠i<9®X‹-Âú©2(Œ‰nÙ≠˘<F`±ô“Â#i#√Gªæ+ñ¶\"t¶ñÈÇZÍy}ÓûtÌF[vtê°¿#£Tv≤y2Ô¿ÈåTöÑ‚ÍÚi∑d≥d™k(F¡<Êª‹oIo±µ&®Õj–m»n˘¨c	w8sV÷V\n©è`jEå-¬‹ò”ö≈(”ΩÇ„Ù€ÊºÚÆN¿vˆ©e∂à<»V6\0\0C˛ØöËu›\n[ù2N“0¢$\n„8cÈ\\Õ¥S[˘Ô*h‘8«^+äçHb:ó»’+;£myπ	¬úZqﬂ§R`¸–∏√)<Í+vÊ›ÎÈO.6úÙ+Æ•MﬁF{ùã\"=÷ˆVfF ?∞ıÆÜkÎ(è˙K´gÄÙ5ÕË˜∂öt1π∏ﬁ[phá\'≈\nñ⁄‰Õ©&‡~B8 ZÁ≠KiEŸ\"Ïí‘ÈØºÔ≥«r´ÖT¬˚èZ«”-Ù…m∑™ïã)ç˘*ﬂ·äøc-Óïh÷∑3,m+˛†\ZÀ±µÜ«S)ë…;’≥WÜIÍ∂dΩ\n©PÜ\0n¿§˘òò„M´ÎZ3ƒ\ZÏ√õ\nÚ≠Ω#√\r¬FÚfèçé∏ÁW°*î©GôËJ‘Â¢”$ëIHŸ±‘ä≠´§Ã2OC[ÛG{aWWé9;éV{∞1I!_ªû;ö~Ÿ=V¡n≈gB \0{‘–…,j…Ü5ΩŒ3Q[][œñI*åúˆ˙’Ü∂íHƒ∂®eåíü:ôv-\\ç\n[πî#L?¬ˇ\0èoZãJYÂQ\\«p«–¯¨ìÀ|√ÌÈOÜ˘‡»S¡¶€éù-„ìƒårÇ!å∂0:u¸kHiüÒ0∏8Y!9/±áLuŒ∏±~b‹Qôw(\\g<UŸ<[%îk.¬P®C∞‡åß◊5ÕWõtmN€3€€®ç‡@ÒÁ.ô«>µGU—‚÷¨dôÌÿ¢dòîdÄ;É˘—i™ÿœ†ΩƒãpäyIb9ŸËXzvÆª√dÍ^[Î7xgŸâ¶Aı9¨!9k•π‰⁄=ÕÁÖ5Yn4{∏‰ÜD9än®ÌıÊΩ¬~!ûA<WQ,R3é<r	»ıœq\\µ∆çke©]¡p—fIqÇ«∆{uÈSI0éﬁ·±x¡OB\r*¥∑Zï\nñVGysu\r›ˇ\0›TåG∫3å\0Ÿ9ØC¶¶°&D7p/œÉëé†~Ê ‘e∂hf-*oﬂÊüºG°#µoÈ$tˆq®s¥8««$ˇ\0çsº<©√A©¶Ïz\Z˝ûka\rÃX⁄¿≤¯ZÁ¸G[∫=º1¨R(å»P0\0û2?≠f]x›‚ª{U*(cêH«‰q]´©Xﬂ⁄¢2	QÅÿ©ŒxÍ>ïó-HŸ=ãR[K¨Ipn†ñXvT©œ\0‡÷’—ÛÏlcï¢Ω≤˘∞sµ–ëﬂËsX⁄€]GuJËÒ7˙∂ıÙı¶Cw‰È≠k<o˘Ûaòé§tª˘åZ0vªπ$0_«-ƒ*éµ7îEt∫î\Z%∑⁄cKè¥œ˚≥$âÑS›O„\\ˇ\0Öuˇ\0∞Õ4wû9y˘~nƒW•Øâlí 	n≠çI|†‹¡{ís]¥ù∑2ñ´CZ]=Øêœ=À4ÖW‰N6ë‹zfÆi:d÷3O<‚%°~^†„\'øùs£6ùso#C\"3ç[Æ:~x≠-F´Â¥Ú%dŒn2€K√Û•v’ûâï÷Á?„>≠ßØŸë\0Ä4©)?}èÆ:Wì¯Ç∆KKµÜKxílú£ÜW=sû›´ﬂÆÓ%èL∏h`W`çÂƒ¿ÄÿÏ~µ‡˛\"åÆd√E8óoêÉÂU˙˝GÎ[RnQ◊°ú∑#–/t˝5odû˜Iïák``ÇC^ü·◊›Æ¢ˇ\0#⁄7cÇÍW^A£Mù™€‹‹€-ÃHŸí<5zM¶∫˙ïı≈≠å∂±#Æ√ûô\'˚Ω+tπ¢“3nŒ‰?|7{wy>¢ë	#EUVEÍl{WÎ2⁄\rÒ dïæDÈ¿ˆÔ^©}™kV™±‹/ûñX‚·Å„øè∆πO\\}¥ÿƒ%ÖoT4å»vÅ…ÿ}ÍZÜ•\'wcèÇ⁄)„é@BæÚ%Fªc‘z˙TB¡Ñ\"p°‘ìïS»≥•\\Y}ñ[{£ÛtFí9ÁödSÀlà4ÙïßDo3Â‹ªR*\"‘¥czÌ\0Ö◊Ge‹åO^*|ôïﬂ%%Í¿Ù\'⁄Æ\\Ldí\'SÛ¢í∏Á“©Jûk\0_z¿äﬁDÖYèAÍz‘G!á+Nﬁ9^¿ıßﬂAlq,M…]ƒz∑•+hUı3åJàçº6ÓHG÷ö@+å‘¬t‹ªH$åg˙SÇ˘i¿‘“ï\0<ÚNrÎê\0ÌOnéµ5÷ÜUÙ44˚≈G>jF·b1™≤˙˜‚∂\'ãI∫ª,åÊ√~˙◊4!b7êqö±lMÃÓÆk)G™cRËi>è$7,bUx√ïV\'Ç*ÂÓäﬂŸfga™w$j¿áSË;UŸëÆ-ngkÜG¿VU.9«läoˆd\Z™ZkÉh”∞%nÄ˘◊3™ÔπJ:õ\'óê˘*0U≥åÒVÆê≈r¿n0HËO≠Kó=Ãªm¢y&Ámº(ÓIÙ€¶ÆŸì3@√`û)„!∏”Ó¢˚<ﬁ[`∫úA˙Sb€$\Z‘D©ª8«Zû0rH©`P;g©\nÁÉÌTâhhBI‚ö¿\0Zìç∏”y¡«÷û¿êËæ`=qS+`ïy‰Ú*@˘Ì¡§ÿòƒ/∏2A‡äπ-¥ëﬂ≤™Ô‡ÅêiÔw$“˘åzúj\\ùÙD)Àú\ZÍt{∏-Àì\nÀ$Í∏‰Œx‹+ò\\∞Ïµ7s)‰Á>îÀ[ªãﬁCÇÆøﬁıÎû¥Ub‡˘]Œ Ûƒ-e≠\\‹[F∞<ëà§MºÒéG◊áo\ZÕ2q∑{.1‹\Zõ˚NÏ\"§êúI)bπÙ™ìO˚Àx”‰Ë@∆yŒOΩr“è%‘Uäû∫‹›í§ª…èÒÚ•¿‹è˝ﬂ≠P0\\)\r$àÊE$a≤G|~4ìO°5øñÔ<õ%Ÿ∞GÎQ_‹y-&„¬Ñ\'z~_≠:sùÏ˜\r,vö$˜ñˆ‚ôƒi#vÍΩ8ı„“¥ıÔ:V¶Ë¿Èû°X≈pêxéEÇ!€\'^~f∆}á•Y≤’uÖwfÂ6s∑ìûıÁU¬‘u=£4åÙ±r &µπmÖÛ\Zí€~Ò\'π¸\r\\1¬⁄÷°r}¶8Ç›Ó\0„ÿVv°≠#º“ai6Ì√Æqû{r:{‘7öÉNØmDâ∑À0«∆H<˜„ø÷µp©Q&Ùaì,≈¨»∂ÜF O\n.ÿ∂‰9n>áø„[zNßg¶›[\\,Æ∆œ!\\O@O◊°ÙÆRÚ{)¶An%±;w`9N)Ì|∂óQµ≠ÀH˚π\0GE«p+YRå“≤≥+=NÜœE∫˛’ÛÆ\"ïô»»>¸U˚ÕZ⁄mb{gb#é2ÆyÀ7∑È\\¿‘Ó›R;è8&$œ\'<gú{RﬁµÕ˝◊ôÂ¨r™(+cÉ˙˛ïì¬Œ§”®˙2KCgXªy•ãZ›∂	UOÕ∏t„Ωii˜Ôedm<ÜçUHW$F1¯W%c®…g4±ÀÇÂFCx9Œj6’gåùíê]I˜Œ~µ£¡JVèDJ©gsWMÉ˝*PÚÑ‰d„\"™jÁÌóQ∆D[ƒdUHÓ$ÜwHJ∑{{T”¿ì<onÚL°¯¡¡>µ’ÏöïÿπÓ¥:ØiÀ§D-º‚À9 åg-€Ë:Vî∂– ¬kØím¿+©∆H„˙’§pëI˚êU9$_ÈW\"˘J…ªcO *§FrxıÆ\Zë˜ÆÕvâ–¬¨ë*π…Èıãàm≈§≥\\¢9º£«øÈSnZàRumπ˚Ÿ◊∆kπSìZ!s≈5€›N÷‚$∑1«nÍƒÀ∑$0‰/„I·ÌJ‚˙	^‚G,≠ëÚW?O¬≥ıM˜V∫˚LÕ\Z»7,úÌı¿Ì⁄µ-Æl¥Ì\"YD¡¸ï˘ ıqé+fíÇIjBz‹›§¨›Z∂÷Ìˆ˘Rßç’MKs}F3Á.7rúåwÙ¨9]ÏiÃ≠r‘“àaíR2KÙ¨õ=[Õù•ì€ “«êq”Ò®ı+∏u+qiorQŸî≥\0H€ﬂÌ\\èàu»—æ…%∫€@Í—π8’ÖJú∂QufóàoÆ,Ã˜ﬁ» mQç´ûﬁæî»5¶é í9÷˘„ÃD»$‚˝EU÷Ô-dùÊ•/î¡bÿ≤\'@‰z}j-Sé[€Y7Gp[ÀßBÂ¸kTñÏªt;˝+PãS∞éÊ\"J∞Á#øzªYö5ÕΩ‹5£ÅõÄf“¥Î≠lH◊uçK9GRi#ï%@Ë¡î˜Ï¢(∏Ú˜í\0x∆y¨´M^ìs¬ÍÏHb´Úúf≠Aµro©øE5X:ÜR=ßTQI@EPEPEPEPEPEPEPEPE&j•ÕÚ§N`hÂïG‹2)§ﬁ¬m\"ŸØ\rÒŒª™j\Z•‰bÁeíQ<ûxÁ<˛5’Í~;ºéŒ‚\0êôﬁ\"—y2e±œ_FØ\'û⁄ÚÍi˜Åw*±‰åz˙÷…:~§¸GUav/ƒÍ;dÉyÛ#Lïv9¡„°¸Î£[≠[J‘{A—∏X≠’ŒvÉ…{„ıØ1–ØÓm|¿≈ú∏ÚîúÁØ‚+–lØt1]Í≤,™¬?\'ÁÉ÷±ùg{¢zΩ’n2…#,™pNpNyœ~p^/ÒéπßŒtˆπà8ê,Ç›~u^æΩÛW‚ÒÖÁà^+O¡såÏöÚ\\†vÉ‘◊W•xN¬Œ	±y“L‚Yeúyœ±ÕDj]ç≈%©ÂRÈ:ßã5iØ-‰∞µ`ÀeF9ˆ˙Ww†x4ã´9£xmÁóÕ›∏yçï∆\Zªd¥Ü9¢Ì¬Ì\n:cÈY>(‘$”tÙ∏X’£(rrN\n>Ò=1]ä≥ìQâìVF7à¥\r!ÙYbô˚XLÎ \\é:ê=p1èzÚπº5©ﬁ\\M|êOm`c;Uü˚ëœ\'…ØMµ‘·ÛÌØu(⁄dY€≥ÂWú3‘ÁJª‚ÉÍ¨≤,í™çêπ¬gí=Ò≈k≠˘e©)Ÿ\\ÛΩ¬“OeÔX∆ ”4u`ºèqY∫ÂŒï§ÈÒFllØuYÑœ;b*@⁄=s◊5ªÆK®XÈë≠¢KgmÊ∞i∑e¬êF¬Gß<{◊ùjV°nRY~–Á#Ô/÷¢iEY!≈π;ëXñd7|B€»Áæ0?\\T∂Èw,H-b%cÂÂ∆0sü∆ùe°I:Ô∏óÀQ B:ëÙ‘ÎzVü£¬±⁄ÃfÛ†·Äúö‚îÏÏoekâk=Õ‰s«¨jrŒÚ-¥g`.„8jïæÅ}k4Ü⁄(•HÂP\ZT»bx˛ugL–nob{¢íyõÉ#»«%zc…5›€[˘M‘‚˚4©»pô9<Ü#πÁ’ïJ≠1§yÓßcyou$Wˆ°ÇïåOÀûk∫“--‚≥D∏—Ô#L1*2;=3ÕWûSR◊U∑0\\XYì7\0H€9aÙ»◊Yg´≈•ÿƒBµ‹ì≥Hd$ô¡‰ˆı≠Ê‘W∂Ñz|¢]jSNπê⁄D∆25RÆp©‰c=+cNñ+{˚ì-µ≈≥9˘LâÚïı»»˙◊+°Î7£ƒöÜ°w\n§7yXî6xåÌÎ˘Û]ûô™≈ÏbÚ\';pßÒÈN ‚π}ßçSvı ÙÁ≠x/âÆåÁT+\nïöÏò⁄1ê∏‡äÔ<yoßŸÈÊy$ñﬁˆ`ÕÊ€í71∑Ësœ“ºÇ=J[v	ñxCÓ)û¶¥V@Æ\"Ë◊¶⁄)Ö≥òﬂ,t¿ÎVg¥πú√C˚†¨ﬂ0\'∏Öli\Z¬ﬁ√õ2´A+…Â;ÌGOΩènˇ\0ïPÒ˝ΩŸ∑XU∑Ö&V`\0O›Íjmß∞—àèíH©[\n1ë£ì≠F„©ÊëV\'2t´1azf´Dò„Ù´»Ñåcë@\\ïÚ9≈kÈvf‚ÈP$ê0x‡˜¨∏îgÅW‡õÀuÿƒÉëI≤Æk‹Ao\nJ´íÿ‡dˇ\0ÖdM,9$d˝jÁêœ:;1mˇ\01¡Í)∑/û|¨ïÓ3ö\"	ñqé’2∆F)´¡«#2∞8ÏjÏ6ÑUÊßå⁄ù\ZÇyÎS¨`Êö–C~aÔWmô‚utb¨ß é’BK\n∑XÍ3C`Õu=ı¬5ÃÄ‡qËuö5È @LDdíyπ+x7c∑πÆñ÷Í3<6—·b‡3åüZÜâ:äB3H∏\0ÁÙn˘à¡‡u®3#wì ≥ÅüJë\n7ûÊóΩ-\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\07nTÉQ¨@äöÅN„∏–Ä–†8¿è\"¶7VuÀOvÊ8√lÙ°&ƒWπªéÊs“˘p/]£;™µƒ±ò∂Xƒ˘^LÑcßë¸”|ÕÈ⁄Æà#lTU_@)›!ú’ñÉˆ÷]»vˇ\0uO?ç_ª¥≥≤ÑC\r∫ñcÿdä◊\në\'\0(\\oûtx∆‘Yó≠&ÿ—ù$∞∆|ò,fLdéA¨{ç*@‹¨Öã\r®:Wf#Ub¡F„‘˙– ÄHı”AÃsv˙fúÃ1ÇaóíMNöMÖ¥@ªåA`G~’ºT¢öËåø2ÑfÜÓÖså‘/çÅòYO∂6‡⁄¢”5’∏πdºrw(T$t«c[⁄<ﬁ.c⁄	˝„v±.¥#1ÕöÊ\"py¨Âö&mhgç•ç‰c!;6˙fô-‘ñ”Ü∂€Ö%∞\0?ONj¨:ê⁄≥ªÉ ô\nï©‚‹e…ùn∂Ò≤\\‰˜∆k5ﬁ¨êﬂZ,÷BÍfYH+`≠bÀn¨Ò;í◊ƒñﬁ~Tå/°Ô[cM:ﬁek_2]ﬂ*π,Jˆ>ïß\rÖúˆ±·Q;∞´Ç•TΩ›)È°Œ≈£I¨⁄˘ó“K<≤\0Ó1≥é@˙◊3¨xRKt˚JH/H¬ÚΩz¥r‚bÇp√˘b°‘,÷˙›· ld˝i∆•êµπ‰_@ˆ#Kh\n\\0≤Ú ÔÌKfßAík”\\≤Æ\"êaªí:◊¨ˇ\0bX ‹ñPâ\0`¨-oF¬eéﬁ‡Å¡»¨ﬂ,ó-∑4R‘ÉN÷§ÉKIe!fuÛêÂH=1èÂYóæ!ûı|â.¬°_ò ∆Ó9≈söè⁄Ï	‡!Œ<úÂqÌÈY÷1è9ﬂS˘œ»‡zäÊÜSª*NÏÔtd≥Ω∂dÜ›Öë˘oØ5GQ∑ÜY„∂íË í0∆8≥Ué©Âi-îë™¿Eb:f∑tÜ∑xwJä«—ÖD¶‚LëV/E•E%”…æÂA9&∏y‰¨∞*r0¿\'åW}>øk<7PŒª.G‘{W©_4Sé˛SÉë¿≠)∂€æ‰Z∆≤«˚ÿ D%HË*É-º∑Ç$nÓ⁄ÈX“k«qf√\00¶£ÇÔ˜€‰ìÁ∑SZ(∏≠}NßPD˚ ø›‰W™€‹√∂RÄ(Ës]Ñ-≤@.ÆFx»≠s˙Ùåñé∞¢ò7a]Ò∏˝*©‘Ê–ô+}‘Ô#Úy¢ﬁV-çπ8©M£≤Ôe#´˙&ïs®\\4vêºè,ƒÇ∫]íôúqåTûy êqéµu°⁄ÿ#Çz’{ªMéDmπqí¿WL¢sÄæ\Z·UàÓEB.…#\'ΩhÈ:2ÍH»≥FíúÌ¿éﬂZˆm‘v”Öç?v€XìX9∆.≈YïÏ†˚hëL õW-ñ¿¸jövìŒ\nñ6≥&¡ì∆E<√åîFU’¡∂ƒÙnÓì˘Cë‘gı´F€ó\'◊ö¨—≥(e Hºäû9öUVè û}kT∫πe!\04cÂ8&üˆGÚ¡D ∞‡éüù>KyN≈|í:Æ)fΩ}.Héw€øë˜ML⁄Q◊a#!„2JÂãF˚pj|‹›ŒT[9ñN∆;VΩîë^N»â$˘ÄœZı[KªXL–ÜödÆ\Zµï•∫ocÕº?ß¥WÕ≠µºô0∏Bö‰µMUb-\n®v‰6FE{Æ£§Yøì+	L±<X¿d‡{◊è¯û;IgÛ,mDsLHï\n„kzØ±˝*h‚„à∫JÃ¥¥‘„mof∞ºK´W1J≠πHÆöÒ,ıKxıT∂1»?„·@„9˚¬≤a—dG\r8‰Ûä‘éÛÏÒÀhÀÖëvÙ≠ÁX^˙é˜–mÏâé ´†dj”ûÊ4“¨D˜Ó~•sL˚‚1w#eIÌÌLÛ‰K®÷\'˚á Áä‚£ÕÕv\rXÈ.·b6ıœZÊ¢∂ö◊T‹2•NAÆﬁ◊O˚}¢›[±i˙»ˇ\0®´û%≥∑µ[	⁄ÿI¸å\0¡<w≠Ââá:áVD{ˆ◊∫ìim-Ω…h«˙‘ú\\v¨ôöGÀ33Rj+H¸ΩVymÂ0ß\'nx>’ø°hÌ¨_,\0Ï[äËn4¢Á=ÇO[‡XOπÇ2c,\\ûr;T˜VíÿÍR⁄ \0ñ)\n∑ß≠nK·K…txıKWI„$â#_æá◊‹UœJúc)=69»„d˚πßÉ]Êè¨YkRZ[Ív1∏p·›‡vp:˝kì‘tªÕ4@”≈¥Lªî˚UÕ\Z∆ÚÊÍ9-î\r¨	f(˙◊&2´“ÊÊ∑fTlùôËÂ†±ªeºò%§œÖ˛\"∏ù´õÒSÈ—kqÿXŒ∑Is\nÜy0XìéGj´ßa{®4Wwf’‚bpFÂ‹==™\r{N≤∫÷ ª∑ùLW ÓÚ∆cnµ¡Å√”ãP®ùˇ\0Æß]ZM.d”G™Z\\i∑ç:!»èzâ¿båÑåıF9ÁÎ]û≠·xmÌD∂œºEŒÏAåÁêTèßCU¥õ\r;W¥ñô÷Hê…ôÂèq˝yØztÙg\n©°ïq-°∑ÜH-Ã7KƒÅO=~µ•ohÀ¶Ey4Œ≤3apqÎ\\Ï≥Vâ∞veC-.õ|˜	%µ√±ê|–úı>Ü∏‡‰õåçwG[i)ﬂâ»s…´±Ëêœ©Eu$®∞ŒXúaΩ+ñ∂ºö)\0r@}´¢”59dêãîI‚r∆zqﬁ¥™¥˜IäÓm›¯~Í⁄∆;ê¢H‰\n»Tı¸}˝j‘z¨ñZWùq1Ù‹OÂölZÚj;l‚ŸhÄÔDÑRH«l˙UP⁄^†Ìˆ´Ÿ‰çâ]€Hlˇ\0ì\\5*I«ñÆÊêßÿ√æ÷ßºûHa∏Y∂úµº«°R:åW\'¨__Az¬hY#VŒÂF{dSß≥:?ä+πJ\"8D;ÅC‹c®≈[ÒWcSë`ä&äH¿;x£° ˜≠®/urÖ¨ı2¥}KÀøîïRóVR+mÔ/4Ì:{kIA!ü‚QÌ\\Õ∂õzìn)Í›k∂£,„Âào68◊]ì‹ñªIn.cXã0+’ÜÔzIf…^Ω˘™fÀH«cˆ≈RºræOﬂ´Rq—ëc]Óñ4‹Á#⁄°ãRv(ƒ%â∏ ˜QŒX†==´gOæéﬁ“[H‡â‡ôî¸√Ê\0z‘•®‚t‘b≥µ6ç∂ê•é…œ>µ”h)ñ∆ù42Fª…à«˜ÚÌ^dgiÿwmÅW¨ı!†ˇ\0TËx`3ªÎY˚-yënZXÙ^M6ÚŸ†2§7~rÇÁÆ‚1”˚ºu˙W-÷Ÿ^ﬁm…èîÒöm¨ˆâv≥J˚~lÇ‹Åˇ\0÷®. K˚È[l¨px‡é∆µz≤5Dã~‚‡É&\"oïÄËEohˆ3K|`≥\r∆![ñS»ˆ5…1îê·ó9Æ´AûÂ\"kò-òòŒw\'ÒSYZ7à‚ı‘–÷tÌe\"ùØ¨w!∆…#„8Œ>ïKOø4p%‘úë∂3ÚÌ<˜=ø∆∫«Ò	‘4ı∑kxºóFYZRw6O}…Î∂ê…<_g$@iVlÌ ÛÉJú]îd9æ®œ’fäÊÈSwñ¿±usê	9‡äØst˜∂Q[ºÁ Ñ·èNŸkZ”eñ;FçZIU=}Û¯sUNât∂Ò]H1nÃ2AŒL„Ù≠y]ÆG3c¨m£Ü	¶v+2rå>Î‡˚÷å∫ºoÂ∞å§zésÔUmÊ∑éçúòA„Ê⁄ñä⁄Ó9	ë`»aë˘üJ Kﬁ4æöœ·◊≤ø“Ìï·d ˚Ã|Ì◊É◊8≠˚‚Àc.ƒv˝“p+»ÁÒÈ<f)ÉàﬂÕFåcÊœ”µoxw∆qƒñóêá$≥I„Óˇ\0QKöÍÏK{Vö÷¢hÆ°ç¢ﬁ97ç¨ßé1˘◊Ò,Ö‰≥ZL\Z„z§äßÓûO„^õg{ß_€«DV\"2∏⁄}øZÚ\ZÈrZÎó&$Ä7ò\\»sÌ]îeÙV2ö9«”Æ#ôº‘`≈∂íC7^øªÎOuo6Û≈aàº’LÃ	‰åéßè ∫mPÜÔO”Ïﬁ‘#áYQAKéπÙ#Øˇ\0d}ñ„Tk;} e2*H\0√c™˚ÚEokÿŒKC;ƒ⁄êKKCcczó0\0¨Ú‡ÌNÓ$Ò\\ÖÌÜØ;5›’ªæˆ,Œ¿ÿı«JÎºU´€Mgikhff	1\\røüÚ™óû0íÔM\Ze≈õG\Z¶Ÿ•+ó›ÿéûÇíi«@8Ñ 2(œø?·VlﬁXÓK∆\\íp∏Á\'=>ï%‡X!∂ñ7äGïr 3˚≥€>ı÷xQl‰é=…˚◊Cìê0A˚¿˝kìSŸ.cH.m\"[IÊº}ë‹	!é„YÛÄ9Ô]6∫ó:v≥3LWÊoúß›$ıÃHw±8……´Ñ˘‚öYÇø A¸®oü\0Ù¢9»ÎJ„°´B±0\0Ñ\n≠Úèú˙˝*\' ±Ÿùæùi≈àıŒ1LVÁ‹qC0ñ¡\0qNä-«öΩ±*≤8$1‡Å»5°î´iY∑JÄ¿q¡¸ÍSW‘c‚”§{$Qô!xœ›‰©,jæüio≠ò”$\'Ä«\0Ó#èlf∫ü\rj-Â¨7Nbπ∆Õ∑Âd$Ú1TıÎ4òÖ†∫YÂCΩJéWÿ˙÷.ß-^G‘´{∑D∫e¸êÈR⁄ ‡´\"ƒA$©…ÍkQùÏÓ£ârÒCûT‡ûzöË|5¢˝∫Ÿ.„Ÿ*Å\"òˆá8ÛŒ}´P”gñ8Ìë˜CáxÏê@¸ÈU,+r–ïR˙¨¨&’Ó$(œ,˚.åéH?Ük–4äﬁ›4´ƒ\nó∞òÜ~˙1„ì€5É·1ö“«,“E89Á°œ∏ÈTºG©\\€LR6tù•rŒ,<)Ù#…ZîΩöËh¨ïÃÌsL[=F·ò—∆€€æ;VxÑ¶*Wû{Ÿ7\\LÃzúûß‘˚–Ÿ?(È^ç%%Õπõdë}pj ∂FxÕT@Aˆ©√¸∏≈l@«89ÕF_¡‚á»=j#¿4\0Ô3 ˛é\0ÍsœjRr†Rabq6E7É\'SÔPn(#Ø$*“±∆qQtÇ≈ãY;/ÃTeà›Íƒ˜^s#b\\˝¸c#ﬁ™.–ÍÌÿ˝ﬂZôm‰º∏HÌ”ÁsÖUÊ∞úíw\Z-i⁄åG-ùÙA”íéΩCÖVíx∑6¬r≠¡<ÒUnbxJ˘ë`úÄﬁ∏„5\0V∏©¡Ë{RäM›Ôc]u[Åïπyh»Ô÷¢ÑÃdêoœ\\äœ\\åÚH«AJ%‰ëÌMEDí˙ πbä 9;r{u´Fp∞€ç§aæq˝Ô ≤£;Åe˘âÛNäC4ÒEøhgì€<Pın[¨wW[¥™≠;ÖÛàŸÓqÔä}ı•∆ïw5µƒ…Áƒ≈XØ#ÿ÷ÆˆóíG\'ﬂçäí=A©ÏŒd21,˝I<äv\\£ÍiŸºWWÇ3¢„1π¸3Z˙{«¨∂~PπiÀ@‡úo…‡ÉÿÉXVˆw6äè,√r¨c$Ú@„?Å´í^Õ©[Ko∑rC≈Oz¬™∫iv5[§—Ω{nÒºÌX\nƒ´‘úsQâåÉkÌf∆H©Æ5XØı)f∫*≠πdtC¡ñ¥µI4ÀùzﬁÚ“ˆ9#ª*ç\n˝‰Ëb∏°àî-≠G(.gc6ÛEù-ZÏŒªBaû}´9òHnΩÎ—\'Ùë[KmusÁ R¸éºê£Ò‚∏t—/•ôÃ6Ì ^N¡û¯˛u›Ñ∆BI©≥9¡ß¢”4ÂRG·F–q⁄ØÈ˜ŒÌÂX∑\"†Û¨˘≠$µï`U∂Ü«ß÷≠4Å¢J;√1†µ—)FKMåıGi£Ie{dÒÉ‰…\Zâ{uc¸C”µbj:•‘RíÁ*Ä¥r!ÁÍ+ ‡N±£f&…`=A=+gW(Ôïo:n¸Ãß´ìüNıÀ\ZiT‘› Òﬁı\'≈¬…tÆ‰3aâŒ:˛Gãkwu%Ññ‚UÛ#«ñr{\ZûM9bàîîpI˛b¨Ë2[¡´ãâèŒúFr	>æ√≠zPúU‘Nvö‹≥k≠ﬂi1Õ,Ûó∏8DRws‹üN‹Sa[´õ±yÁs†IÍß≠ekÈkt≤y·ë§`·ÄÀgØÚ©,uôÌm\'H˛R¿n\'©55‚“º∫öj◊>”ï’£»%ïs∑Äjk€jw2J,Ãr 08«<=kèπøwf^vHw≤Zm§Ìl2∏@Ÿ‰ˇ\0/÷πΩÁr‹ïŒ“∆ËA;ò¶fﬁY§HH‰LÒ\\µ˝∏π‘\0∫úhœŒú®œ8¸ˇ\0Zêﬁ4≈d\\\"†ÿ¿n∂+ùª≤˚˚	Ÿ˜±˘£œë\\nû¶—ïÕ-wPñÛM¥“≠Ì|´q>‹Ü\'Ã=yït:ï·ËÂ^(Âñ2\Z6«Œ3˜G°ÆR≈‡üƒ…ºiŒ‡‡üÛ“ΩOûÁPøöﬂ(Ωæ◊E∆	Èü÷πÍ˚™∆±;›-^;m≤F\"|ˇ\0´˘G·WK\0	$\0>’Ã€‹›YÕk±X.3ág˘îÅﬂÚ¶xì≈b∂û;‚∫û,y–ìÇPÒ«‚Et”|ËÕª¯ûÚ∆ÓÊ+#,≠8|™€øÔ?6”ö≥≠ßO©¡¶[8∏ÇXä≤Ä8n˘Ó≠yûµ‚[u8⁄‚»E™§¥ê9SÑ‰uÓ?:©£kWﬂ•Ë∂iÆÕ#Ô9n99Ïk™n1I&fπôÔ™°*å\00P‘o‰”›$1oÖôP„ÆIÆ_HÒLÛDˇ\0jäVxcbÖFK…◊WIi;]¿´pÆæ`‹ª˙}+ì⁄≈;nlìhÜ/[M∑ln3 L0«‚+e[rÇ3œ≠aÈö%¨*w	‚7ì∞Î¸ÎuF\0+IXHZ(¢§bR—E\0î¥PEPR—E\0î¥PEPV^Ω¨G£iÔ3Ê0\"0{úV≠ej˙-æØ$rúúÛÇ;û’P∑7º\'{hyΩœã¸B<€têõ∏Â‹J*î*:åcÈSXY_i∂©¨›[‹Õ~¨“U~Wz}z{W¢ŸËVNÔ_;Äò‰ö–¿«J€€.àûDy¶ï·€ΩJŒf}*;ieO6©$ƒäOf_Lè πõè	ﬁiöªG=ÙO∏ê%\nNO”◊öıâı]¨¡√0a¬ÁøL}+è’d∫ÇÍﬂO”¨‘÷ \'-ª˝[z˝:◊jíF∞Ù(iæ–ld∫Ωæög¥ÄoÿÌ¥ûOˆÈY¯J{ƒÆ–Yµ¶åXCÂ^\\rzÙúÛ⁄ªoÿ€]√©Î◊[ÀóSRü›$á\0t˙fµØnÏûóopç3)Úó®œ›¿«“π˝ÊÆã∫Z	·Ît˝ÑñÑGàŒÛ±vÖÕmC¨ŸÃ±»\'A±@ÃqÛzV.ü´±”7‹Fe!Qπﬁò¿?ò5ÕÎ⁄ ‘m÷x≠‰é8òL·IÈ¿™•5âì-v7|g‚à4&R\'ëÂh§18ˆcÌ÷±|?Øj\Zé•j˙îâ,EOì.T?\\ì›∞\nÛk˜TÚÆ`u∑âïa…ﬂüÈOæµñk}:ÍK»\Z›<ıËﬂ\n©-QìÑôË:∫ÿ√®À)∏8π|(`G#{:µTÒFòuµHeΩΩ!céŸÊlØ$ì¬éz◊°|=Ò≤∂˜wõ{ió!ºÃ∂“:öıœ¯n«IèŒéI\'∫ìkâ%ÿg˙V™≤µŸ>œ°¬G€YΩ¥&ˇ\0U0#î∂G\'©‡ñÓj‹^–<)ß√&§Ì%Œ‡≠$yËzÇ;é’Ë˜1y±≤\0•«+ìåWñ¯˙ÚÌ\Z$π∫Ú|º¿vÎRÍJJÏv∂àaé¬ˆ⁄94¯ìlNI}¿3Òª‹qP]Ë∑≥j⁄ÉŸ‰£ÚOI?.˘´\ZSi∑ö\ZGûd6v≥lO«≠uz◊âmÌ4„ä{YgëÑ,Ö¿¿<t\rr9ß-M-drI≠cÍ%.|ñulπ|#◊ı¨ÌC^ö˛Ó{©5d¿áz&œÍMg]N◊˛1ñ÷+HM€∞Ü9ëûÔq«ÎRÀ°ﬁXkk•jQHmF>h«\r∏ıœ‘ÅöJó1NZu´jE“ﬂKU˚!(ƒ´íÂG¯™0kZù˝ÁŸÓbÚDrnï◊Â∆	¿¸œJø¨Ec·õX˛”<–ﬂF´$p£|ÌªåÉÿ\\~∑≠∂£t–È…,v≤§kÂ∞Àª®∆xÓI5–£À£\"…Íz∂Ö{ßi¨≥]YJÜBCœ(›#yÓ8¨+èä∞Æè<vPœ\r˘π-(`‰˙éïÕ¯KM“eÒ%Æü=∫ﬂœ0 ô	DG«›aﬂ“ª{áñë^3—dêa˜îÒ¿ˆ\'Ù°…%a€]N;]ÒM◊âoöı°î[\0±∆≤s¥„ìë∆I¨©‡ø∂ö_6Ã´≈fRò*o‘~uË>$“g”4?KïcÇ%ìxÖ[é¨qÍMWÒT6≥™ÀeM´\"JLπ˚@<y»≥ŸÍVù<≥˜>c€Ä2ŒÉåÒÌ˘”YûWQ∞ÜnÉµi}®iˆ9õ*†Ç‡Œ:è•Qº‘§‘Áñ{ê¨0•’^}^ñ Ì±ì∑ßµ9u5~√Dö˜O∫ºWâ!∂]Œ]¿\'–ﬂ5EXtÌHií\"Óa∑•] ¥`©⁄›\rRA∑:û\rLò-œje$[NH´É»J˙JßlpAÚ*ÀÀÊ≤±¿Áê(•—m|€IÔX+∆Õ§u\'•_±yeûeÅQì¥såû¸‘û∑∏∫\\ñâbAÚ≥å‡Á∏ÆÚ+{m*»}†´∞∑mÂé{VZÿw±Á~\"“–#Dü:í”7◊¶Gj¡TÕzMÓì%ÎH±ùeåªŸ‹OAı¿œgqfÂgÖ£>å1ö⁄ó4ëWπ‰y´HX‚´F‹‚¨E <w≠,C,+0=*‰2dÉEÉD≤0‡8⁄}≥R@¡≤O∑÷öhHΩ§&‹¸πŒ+§µ:]⁄ÅÚ¨Ã°vû\0>¢πD…P;UÀxŸ‹*ÚM&ähÏV¡Q6≈<à8»\rûjh„õq-pﬁŸQ“ñ¿Iˆ`e∆Û…≈YÎY‹…ËSäIÿn8˜´É†5]‘	0dt¢Cêî¥QRHQE\0QE\0QE\0QE\0QE\0QE\0QE\0Q“äi∏=(§,á¶@ÔNUURÄ\0¿ÈKN‡áÅKE !X˜H$~N8‡T‘Q@Q@äJ\0äCçùÒ≥í=*ç≠åMÊ3´d¸ãûï6©ºZÓ@2©Ï*äÿ√,\"·ŸÇ∑9cåjô∂ñÖ#T∞\\ç≠–/sC™!iê€qùﬂ“´Ÿ %a±ë,c!õΩYû%ï@lmÔUı%ôˆ72Oq\"∑ﬁ<ó#∑•L4®cF13§¨wosü´qG\ZØ»Ω˙ëÕKJQMç6A ®åÆ√Ç@≈ÎUÑlTÉ‘å‘ÙÄRÂV∞\\A¿ÎP]ñiﬁ©ÇrIÁ&≤µºà´ÉÅé?QQ6–#à÷Ïek¶h!\rÂGÉs¢9YÈJ»N(\'∆Ωy$kØ2‹úÛ€úT÷÷BÂ•íEÃ†|ƒé¶≤uRÓyÑp›ËÃ 0¨–AgÙÆéŒ“ÍÍn£∏}ÖBm\0å˚]ï¶ê∆\0nUú„Â˚¢≠.ôoLjùáêMdÓﬁ®9ª;´ﬂç:yïBºÓzÌ‡v¸Îëï.ßëÂf ì–öÙÔ¯UçÏŒ£ÃE#jådwÆ\'S≤πà8ÿ@\r˜HÊ∫\"£¶‚nËÁ„`I¿ŒA©í9Q#Õû¬∑a”Ô.ÊÖñ5A∆x≠t—<ÄÊIîq¥sD™≈2≠v:DŒÂHl’´.ôa$∂◊70º÷äx∫z\ZÃìGôïú:òÀ+æı–hV3j˘*A$\0ŒjÁï¢ÓôVπ©{·Õ\Z{Y∆\r˘RS$åqZ^¥É√öG=¢¨≤´ñu‰êOÜ1S$v÷≤\\≥6»æWb\'~/–$\nÕss¢ù°˙;{TN¨‹v∏íÏx¨Û+ƒ>\\Pâˇ\0vU1Ω∏œÙ™M9*CT‡´ÓÉ^‹ö±»êÒ#⁄‹ﬂ)ö∫mZ∫3Äm<˚rÖd=‹◊ÆRˆ_¥2 UÉû\\ìúö‹”ıéV÷‡[Jπ-Ü9sÈ˘W%h©GcHª∆°\nœ∑»ãπ√†¡?QI4Ê‚&ï\0Uy2OØµBtÀõãcvÒB2I8‹ER∂S ≥ΩE:i fãB-Ÿ|ÿÿoï˚Q‹Œ›9øŸ>¥€õÎñ∑ä⁄KÅ$2Ähç÷Hô$]k]Hv6cú˝≠ÓhqÔı£Sum:Tçê3`\0G_jÀ≥î—Jﬂ:Ù\'∏®ﬁ‚ı\"J©˝k:¥π∂vF∂Éa5î•B≤Á=*Ù=/]	-\'ñ]i√mcıã¶h∆m;Ì‰m„Ô`ö#≥≤∏üÃJΩ‹ÉÙØØ4§·∫4q∂¨Îa’Ïn∂D◊+o*J\Zêéæ«–”5ΩC÷Æ&µúCÿPÒ¥CñÒÍkóÒ7ÉZ€M≥÷#ú›[¨Å^[%¡Óß˙U=\'ƒyÒp∏Ú.0«‰≈ÑÀF=1ﬁº∫Ù™S©Õ	lVâ]ú}‰“≠ƒ∂l¨!wå0ÈN∞”·æ‘í⁄˙ËZ‡HÎ¿Ùœ•t˛1÷,Ô5a)çM	Uî¶\n∏?≈˘b∏Yeiy9µ}:¯{ÀFÃÂ£–ÎÁ¯{%úÎ$Ú≠Õú„j‹Eˇ\0,ÿÙ‹==ÍIæ[ÈÎÁœ2å¨áÆﬁºS<-‚{ªUãMïáò≠·ïqûT˙}k®Òåö÷¶Ãó+g\nY˜\0˝”È^∂ØJØ$ÂßsE´ú\rÆ§tmLK>C|¡IÌÈ¯WM≠L5ç>jTáƒáÊÈû‘∑~”‚≤í;ªÛ˚≤]J‡Í+Å˚l˙e√G√4ä∆˝2=ØF.ñ&j≠=—-YzéáußC\r“√\'ñ¿ñn6qÿ\ZË<\r©ÿ€ﬂ«∂Vi$GﬁÖp9Ô\\øˆ“]ÿ}äÏÜ.é	ÎéòÈZû—!æ’•ÑJÀ\"D^7lq^ñaRü’‰ßµå¢ùÀ\ZÓê⁄§◊z∆ü òHñ5‰©ı¥ﬂxÜm7GºÖ\"ëÂ#rm…«ØkXöˇ\0Bx%ÇX¢7 â∏‡0¨(Ó.oÔ“àC$≠∏K⁄$œ`kƒçGVè$’·”‰kk;ı:ãÔ¯Jº\'o4∆◊∂ÓD∞0˘óÆ}≈]¥æ”tˇ\0˘ñÚ˘ç$dåûUÒ»«b+úæé\r6F6¿CtÇ7qYöƒëX›«s2ºô£T*N™J?\nw∞J€ı5Ìº=q®ÈÊh!ÛÂsÊeNX(‡‰vÊ°’¥+Õ\ZX&∂wp#,Íx162T˛Ü∫∫≥”Zk9‰à≤ïï·óü‰j]w≈ì]h\Zt÷Úæpb∏ry8‡t Éå◊”˚Jr¶‡’ùét¶•rıû¥öˆÅwak,p]≠∂V\n$ÒöÂm≠|€ˆÇr…∑!∂ıÕE•‹Ωæë}j—+<•Jí9Rr*dií—Æò∆%V¡⁄;WòÍrGí,ﬁ»ñ‚Ô…h⁄(⁄(Ò <g≈c&#l(Á<Jñˆ˜ÃîJã¥0√Å≈G$-Qœœó! V∏TÌÀ-¡˘AyŒY≥«\'=EmÈ≤E©π7a]xÁ˝=™M;¿ö÷•d∑∞ƒ›ìz»[Ç+•±ﬁïÖÆdë›µ6«\0Ü<ıÎ¢º}í˜ÇÒÄ%7◊C™ÆpI≠ô~5·I-ıàñ9cÛ#bπÓΩj•ïÖôµïºÊI„\\îqïn{\ZÙR”≠t%≥7äfêb=0;WùäØÀ„–⁄	\'iEi·[≠?ƒ&«Td{e%ƒÂG°·]Ü£ßiZj€∏º∏Æ∆≤9∆;;å\ZÁÓ|Bl˛ ^O6Ÿ≠ß ïe‹\0#ÉèQZ7ºG\ZIqnÒŸü›4®rä¸c˝”◊Û•	‘i7¶Ä‘m°ß•A£Œ\\√q∂–Ë‡ûô‰\n¡ê§Ú<jg9‡c5oXı◊áeâgí;´Wˇ\0W*?#ÿé∆≤Æ.\\ﬁIÊG∑Ä3–˝k´U‘çÔr&íA\"àNJpG≤eç]‰dﬁï–C<w„ÏœÂ+ÎÍkˆ/òÖ ïÙ9ÆñŸí–íwç¡ÚÒ∑n*ú%ì1± Së%ìjÖ ‘Ê€n«}ÿ,Aˆ¢CDqN—Û1å’à.Tú‹\\éïL©ì1„ï9Øÿ§∂•dö6Te8mπSã´ßËÚÍJ÷”ƒfçw}ôﬂk∏ˇ\0g=OµE‰)˝ﬂqπH ©«#ﬁ´¡xÅ\\Kª$aXu^jÃöd∑+€Óïd\\¸ßq»Í+evK∞[]¬∂∆aV…7q]ﬂá⁄…4∂{\rQ≠%1¥DOﬂ‡‡‡˚˙z◊õÖb´ÌWlÂö9~I6nKg±¨ÂMKpππyk=¥_h…ûnÓ˘ly‡T⁄sÔµí	¢Û]¡t`GÀë‘”ÌöﬂSæä‹Œ V\\3ñ%X„Æ=j⁄ÿˇ\0cÍä#vü*7F£óì¯Vj£^ÔQŸ=Ãk˝kT7Ön$9â<∞1¸?÷¨…Ø4±ƒB™¬à±≤(∆yŒ~π®ıhÓ¥“Ö©˝ÿr>∏®≠n`M28ƒ$È!!òpÍ≠]î¢ú∑\Z|Æ»|Ò[4LÀ˚ˆóëÿ”ÎIs®√r\"Wâ7Ü;†/–c±≈YøäŒˆÂé›\\\rÍ≠¿8ÌÌYí¢X]I\ZHéªvÁá?÷îR`À\n„ëëÀ0\0ùá∞5‘Z¯üOÖ\"Xt‡∑EBøÃ6ìÎüBOZ‚≥Ó«\' Á≠\næDÁx#˝√Z:i¢Tö=2˜[ú•ªÿ-Ω§!YYû|Ô∆8\'Z·Ì-Øµ&hE‘BÁŸô$›€\'“†Ü‰J≤C=À∆æ[lâˇ\0Î‚ù˝óãhÃQŒ\'/ì¿ˇ\0<S•G®IÛ-\r6ø”„+πÌß œ|òÁöÍØu›Xi±\\IπÅ∏Ü8÷∏}:⁄Ú‚ÈV9ŸQü9s∆Ôz÷\ZÏàê‹ºõ71ıËÁZJ§ofJãhí˜Uñm-å¢3s∏¬å∂}x˛uç.•s=π∏2;òØÃ‰˙öŸó√sX≈ÁõáÜ-ô2`Ô˛R˜I…ÕΩÙr@Û(åIŸë…–QŸ]0æ∂fR@“∆Œπ¬`∞\'µ\\∞º∫¥Ωâ\n´\"±@ÅŒ:ü ≥‚˚@%K˛Ìx$‘,¢9øx˚¿?w8»ÏsY‘ãi‹®ª;ùUÓãqqr\\∫8|®V~TÉè«µsW˙OŸÌ>—\n3¢å9«C”öË6ÍV∫+[]c`Gó3…ì∑ß {ı¶GlÚÿœo´J	ÆC|π¡‡„=Îéî⁄Î°§Ì–„ÓVe8⁄2Eñ2Æ§ßÓë÷Ω;√>∏Uñ⁄ˆ÷»èq.°é8Xû<Óù¢⁄ZÀh≤,≥π @H˝Ei,e%QSNÌê°&ÆpÓÂòúı=©®@#8ßHëÑO.MÃFYqÇß“ôtb\0~ÈÆ≈fN≈˚çFÈ-Ì£/3d™/SéxÆÜÚ¬‚≈Ü	ö‹Â|∆Lr=ZŒ“¸›^Qt¨ì¬r°_$pr=çt˛,‘m¶Ç÷vé=©∫O/ «≠k πHæ¶mµÃI™€ﬁFÜDL≠–˙ÒS¯Üatâ∫≠—‘ßGè„?CTÙÈ‡éœ{nÂê0W±˙Ê§ø\r}s3™∫4(;~Ë	ˆÊ∏˝ìïU\'–”ö ¬h˙‹∂ˆŸ¸®1UâœØn8≠üÖ·ï≠UâZG≤Âzp?\Z„‚ìe¿vêrA\Zÿ”.•TæK®˘q¸^ﬁ’ﬂ}¨u∫ù®∫µmZÿ≈\"Ì	)L0:{Û\\Ã˙yÓ%f˘’åj‚s¯\nÙ-5íÍ⁄πÉÏÃKnRF˛™œ’lmﬁÊ#k$Q31‹ﬂuzps¯\ZÊúW>à∏Ω,yÙ1ÓCç¨ÄÙc◊Ù‚ØΩî1ŸEt&Y7‰TÉ–ˇ\0:Ø$KéÄÇ «$r\r1€]Bí…\\~µ≤bB?/ö«o(säô¸± Ù?•B~˜À“Ä g%˙Tl_9ÈÈVx~ô´èb◊V¢h–ñV¡¿§›ÜïÃ¶«N’gNKi/bKπZ(â!•;cé‡\Zà«±ÜG^’b¬Ã›_C\n…\Zyåtß¯üJäø‘Ijz-˜Ö¥◊{ÌSRï•Ç·Vhö‹`Ê#Î˝kÇk1…ìÂ¥güúdé£>¯Ø\\±∑äÀO¥I†ìtqÑN·ñ5\'\'∏˛ïÂzÈHµ;ÜÜ4D.pä‹{gµ|˛_â©:≤åùŒäëVL≠<VÒ¬ñé‰ %r\\˛’ÿËÀ§I°$»Ç÷Ó Hπf3‡eOp+ÉUgî≥ÆA$ûòß\\‹ó\"!Pëî\\‚Ω\n‘]DïÃ„+uã„qr¢é6A∞Ñ9éˇ\0≠g…(B=›∞÷´À6‚r0I»®Kd`ùÕt≈r§ë7æ¢¨ÁpŸ¡4Ô¥≤nR†©GOqMä5öEè*2N9Ìölü!e¿lzU›6\"¬àV›dIúœ∏çÅqÅ«9˜…¸©éB˘d1ﬂŒF1ä¨é @<SLápV<ÁN˙åº§›œ!y—[∑Hÿ›ˇ\0◊¶[Àá¿ÎüZÆ∏q¥Åê3÷¶äŒGç§Oπº&}È9$ákõ:}”â^Y≥:®;#`Júûû’a\Zˆ÷ƒ^F…æGhºùﬂ8 ªá•6À^¥∑–éôwbZh‰bì+`†=A˘ìÍñÛ€lÅ-8¿vSêÏ?à˝kÅ’õìN:\Zidu\Z¶Å}omiwqºK\ZK$£ÄÔ&2†w„Ω·Õ\'HÜπç≠eî´áLÓbÍŸV™ü˛µrí¯ö‚}“‹_±1∞Räú SëÉÎ˝+w√I\rÂ∫]E˚´Üá∆	>s.p√–ìû=≈yµÂWŸ5\'mMNZ<—Õ‚Ã-€›M #{`·NW>É“È≤Oidoe,øeçÑË„n˜‰Áﬂì÷Ø⁄=ª⁄Atã¥»√©¡v\0çø•XñKYÏßè*£aT7®Æ‚4Â}\r9VÁ‚≠niÂÆ…◊Ã;Tm(OÀœ~ïóß\\§Î1„úÖ=Ev~\"“öÎA6v—«=‘JÅd nÚ◊¸ûïƒÈ∂k}6ik#]¥Ì˚¿¯Wåu˙z◊µÖƒ¡—∂÷9*F\\◊:ªØyˆˆ±ŸMÛá%¶˘ÊFTÒ‘éï«]€‹XÍûLÏÈ\"∑ﬂêXgØ„^Øe1”a≤±∏⁄ à9\0é?.+Õ¸Vˆ0 ‰K$◊”J“\'!ìµ,U`kÕ’‰n„©k£z“(uM6IU\0ÆT Â1û◊ç¢y´;\'ŸY’˜F≤·\'å’}ƒëÿYõY∑™Ôﬁ˚ˆ©t›q,¸ˇ\0úù≤£o9\'˙◊°jêîïàìãH§—«Ù∞M/\0ïÀsÙ™S»z‰„9›ItÕ®Õ;H%2w˛uü5€2∞‡éµ—y5©ìc^Nªúìé©Ù©TÔå˚æ¶®Àú÷Ç]!ä(ädìÎP›ÜáﬁH¡âúH§ú’EÊªΩñY¶ƒ¨~lç£•hZ ÑñBÍÀ–Éœ–U=@£Dœ∑ììö…Ÿ≤‚Ã˚@N±<çÅå»π˘}Õn]_µ∂™≤-ÃéGå_ÎÌ÷∞¨ex¶‹9,FA\Z’gñÊ=ø1êçäãÿˇ\0ë\\’a©“ß•çπı´Ñ“\ZxÁòÃ≠µSÃÂx8Ô\\ÌŒØ>ÛzdìœP£q8…ˇ\0:£uzﬁùÃØÚÚ;f†üRs€ò—÷uq\\ëœjQè.¬µÀVπ‘/ﬁÍÚ=∆g›ë‘ﬁΩ/√±≈™ˆ÷ò∑T¬æŒ¿Ë}9¨xF«SãÃñ[ÄDlT∫N0NGB	ΩGËzcÇk2ôásåÛıÆZıÆ˘Q¨Uâ4HZKo¥Õi‰9çñXá#Åå˝y5øjkx§d˘Ä»‹:V}¶ØgsÂÌpç ˘ÜGQ€ı≠H&ÜA≤&hµx´Ñâ®¢äÏ (¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0)•‘u }M$≤¨Qóc¿˝kë‘u[m.F‘Ó˝!˛ÎwÌé‰äv“‚o[⁄ˆ∑u/ã\"∞±QvŸ,äòvOlWWiiïh∞GÑy$rÄúíqúyØ7‘¸xóó–ﬁY⁄uîò§î>\\sWÓı7º≈Ω”Ω≈≈Ù	ê†1aï¿Î«çs’ª’≠ã4<]4∑:6õ„mûiãlN@eÓ_L\Z‚†öc≠Chπ_ê9„Ω3UÒÍÚ€ª÷Ï`ä…e$„Ò\nHT⁄Ã˙ÉºôbÛò`«#?L’&£]‹èJ∂µµé⁄5í2`çÂ¬ò;F3◊∑÷oàuIÏ4[{\r>?¥Í7(P[†˘ì |Œ;uÎNÊΩd∫M›“In∑L˚bSé„Ø˘Ù¨≠OYóBÉQ˚<qÕ|≈ﬁÍ%…„ÿb±˜^€õt‡è§z•¿◊%Kôc!nÉ1©¿n}OJÌ5´{tá»∑hmﬁdäâÉåc\"º˚√æ0ñ√O73CUˆH√íGRﬂZπy´Æ©ku©{≈2áé-åû1«∂x≠!\'~Y\noMH≥6:vù	I1\nFëØ$‰c«ØJ ‘uKãõß”Ï•é—º∞ÍÚùªπ‰/∏‚ºŒœ∆ìh∫HáÛÇVA,√8∆\0Ÿ€ìöÁ‚‘Ó\ZÊMEŸÓ¿TÀ&pIÄw≈F:≥ôÛ7cﬂ>”6õa5’Ã‚H¢rz±Ï=¯ØÒ6≠∑p◊wwõÜsÁFÈµm’sÑÚ}jÙRx∑ƒ±<÷˜Mman<¿ÑÒåÒüS˛¶>Õ/OºúàÓ\\;\\ªK†÷r≠‹“4ùÆŒ	~¡\rúw)® n9WÄ^9Ù\"¨µÊî±˝∫Ê`Û<à„(såÓÙÎ≈G‚ß”lÓÕç¢Ô∏Ñ*…$Xñœ„”Ò¨€+Iµk∏RÍ|)\0onä=Îe%r˘u$≤’Æ∆¥ó∂6¡•W‹®¿ø|Û]÷ø·ÎS€Í˙úä\"háò,ﬂ\\`Á¶pOz”œÅd≤1ÍVw	ˆi§1»ÁÂŒRzÛ^ßf⁄-´ >Zl ê~Ä˚‚≠_q;)ˇ\04W˜Ôuar◊∂±¬≤Ωc∫N§åı•Ay·a=ƒ~\\2Z‹⁄AÊJ∞å·ãayÎìÉ^Às§XFåÇ\"Ü\\ç»yt∞Î^o™c‘5â…∏öcó2ê≤„*†Qì«J’;ÓO°7√ÔMÁItÆí,Ÿ\r*eÄ¡ËO~ïÈç•€≠ºHê*òôH€¡8>µC¬–\\ŸÈ1•ƒ…$dùÆ;úˇ\0ë¯VOã¸yo·ÀáÇ6‹Ñå`‡ûÁ”~uùùÓ6 ><º∂áRµVºX\Z``öQœíπÈ◊ì^G5≈•≥ﬁ¬Æ˜ñŸä¿° ıœq˛5ß‚/ﬂ¯¢⁄nÑ1EŒ#^dl`í•s2,f27‚E *Å‘w$˚qMŸÑt6µk}Jv∂MQ·á ∑˝÷–\0Ÿ…Á…=Ío¯KUÒ3∆∂V ∂ÒêvQüSﬂ¨hïÔßÜ?=ûi÷/¿_Nk“, }#JÚ,¸p∞õY2bD#∑vPç≈)˛1•ØÜ,‡Sp˜7S/-ç™1Ë+ã3úpkwƒ˙æß}uzïËªX◊ .ıı‡V±˜•!¢T€¥„å{S–.¸Ù°gûõHÛB]Mëe{øÖZà¡I»ÕCä¥å¸∏‹E+ÜÁ£¯NM(i3≈3§qµ‹ûﬂ„Z∑∫÷ü˝•*Ã“ò EUëNF„œ¯◊î√tË„Ê`3í≈jœw	4lÃJeææûıü%òXÔ¸8ﬂ⁄wó709X<ÃÑŒ^‘æ6“./n‚Â¬ü8~øA\\óáµ©¨/£#+?09ïÈﬁA®F—îÃnÉ!∫GJ®OŸ ‚wπ‚√>`¨(¡Õhk∂PZjÚ√k¨(pı\'ΩU«´µÙ-´éBsW\"v¡‚´«qW°ÅèjWXö\"‹U˚b—∞`y®a∂a⁄ØClÁR∏ÆmÿÍl~YI¡Ó˙÷êΩåÁ\r»‡\n¬ÇŸ≤+b“$Pw®\'µ+$\r-…ïÀù«°ÔVQ∑:SJË)‡\0\0õ3lZ(¢§ê¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢íñÄ\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢ÄÄF»™”:aQ…#•Z®¸ƒê2˝Ó9¥Z‡TéÓ◊ëçÒÜΩÍ≈ºÇ‚›$·ÉxÔTÔÆFõnPoïò\0™=MR¥ªö ÒÕÊa∑ó,àÑ=¡˛u|çÍÄﬂõø-ÅœØµ7œMπV›ë∏c∏ˆ¶¬ÂÅfMÑûEgp±=QL\'≤oØ„@	ÅéN’%yÕkUKÿÏÃ¿Ñ)ÛûÙY5f\Zú/àµ©m/’Ã©N+¶Ω¯æ±2ªÂ¯„–W7scm©ÃˆévÖ$˙÷˛ã•Èˆê:),Ÿ¡BqÕaU¡IrÙ.+C¢›ûúäçîÜ‹ΩzöPvûïü{™⁄ƒ\n¥ ©¿-ûÁµa9«ñÚZòö‰ÜGê∂Ö~5Á˜ÇÓ}`ÃÇ!Ä;◊¢ßŸÔRX(Œ‹É≈s⁄úf)–·∑F«Û¨·QZÊé,ÁÌÓ^œV]ç≥u-œ·ÌZ˜mE»ÑH•w«Ö4Â∑7eâLô Äz’¶”ÌÂ¿€ì~X®$„‘\ZJ*u-ŸÚÍ6%m„\r |ÀÖŒ=?≠v6SiZyKµtä)â€ÖÍ>ïãq¶ŸZ¢∏å2ı¡üj 2eXÓ∆sê3ÌZV¡∏µm*¢gK®Î˙|‚Ó⁄gƒepΩHÌäÚ-Fﬁ—Óô°ﬁPíNEz,∫πH¸˘ˆ’ ˙˙{W;®È1∆Z÷9\0~w«•kA™kñ„í[£Ã$a!zÅúf°Do)Xèó=G4¡#HŒÓÜÆÈ”º„∞lÖe»¸k∫ZXHD1OJ<»C\r‡pH≠Î\rŒ„TÛ›fM&G*&S zgÒ\"≤ØÃÿ«2;}•úÔè‹WW·›E g≥∏±{ªi”Ó˜Rx‹+	M∏›’ôwYÂ’•ã/€|à®~a\"ˆ+Ëj\ZL@È@˘QæÕ¿mﬂÌ)ÁÚ™öû≠x˙\\ZA/€¢ôBÂN˜år¨?+Àƒ~\"¥’ñSHd‰#q#ﬁ∞Ñ*5vSQÍ&´ß€Èñ÷ƒâRg$éHà„±œJƒ,\0˙t5ª®¯ék˝6Ê”RB“ÓÙœ•bªC$≤å6>a]te4ΩÛ9.ƒX¸Ë˘t¸àÙÆì¬Z\Zçƒ	= ∆”ÜuÁ–g˙S¸a¶jö£Xj@˘S©T|‡ÜÌV«á.<\'‚6≤∫.÷ÂY≠nåèÛ÷π´c°\ZÆãvv.4˝ﬁc∞≥”‰â#Ö‰\"@˚’e]zd˚SóH;›@¶#rLr„k\0y€WmÓñ«M{´ÙëcUEY>˜n0•PÒmÙO·©Óm5ÇY*Q˛≥›GcÙØ&uy•À∏ÂÔ\"÷ìß¨÷ö|±µ≠” eµ˘»Ù»È¯˜©4ù8{ÁêC2!ä‰‡a¡\'‘qöÚ•π’/4≥w&•1[®ÑπA<sı´í|EÒVeñH‰o˘ÏÎÛ8∆\'∏•åÀq5W∫’∆ú~—≠‚÷∑ñ9°ç!v»ÃÂÄèu>µÄÙ˝˜R6zîÃ(ƒ¨£ v5¡∏ù”,ÔÂHŸÎ∆kZÀZª≤˚,ç&\'˚Ãªªc?Q^≠∫Q¬∫\\⁄æ¶RqLÙ»^÷}b⁄¬vÜﬁ∏ròÁ∂?∆Æ‹Zh˜^\"óKñÁÀï¢ﬁ´øØ®˜«Z·/|v◊6koß°… ):åoÌ”®œ•sˆW>æ\'’$∏iY∏1ı\'∞‡«+ƒFRú•k~,µ5c¶Òô®i\Z›æ7NãÚ>9ﬁ;{É˘äÕ’º+o¶⁄À5„0-ŒëüzΩ™¯˙Kw∑[h}jpU…‡Ù`k+XÒå⁄ﬁ£˝Âúm\nÆ·lı¸}ÎæúÎ∫1∫≥ÎÊ9§˙ú¶ÕÅXA‡÷ﬂáoØ‚’ƒñyûå\ZÃí/µﬁ≤[∆ÒƒO»Ñ‰Å˝kkN”ß“ØY\'ª:|Õcyî™ø±\'±ØViUß»˜k©ìi3∫∏”\"˚5”_¢H„mê¸§˜8Ï+\ZﬁŸ\"‘‚Ûˆ¶òˇ\0¬å(>Ü≥oµãúCˆπƒ§\r∏\'*„ŸÖ[∫ê•ßóìπXÄ}Ω+ÁË”≠FV5|Æ÷,¯¬ÎC”n-± î‹>yîìªﬂˇ\0’\\∫jÃôT$ÑÉé¿èJö˚Møû÷;˘ÊF0†7-è•–t˚K…\'éÓ$êFL{[˚Áµ{¥)¡GöOR&ùÙD3ÍRIœp#/!ŒÏ|Ÿ«LzÈX^iì˜@~Ï∞\'⁄∂um<€[	ûff›±ë¡ÅXËö´Ékëê‹`÷éJnËm°rWtï°b˛XÀÚØ“´‹•ÃÂ ååé{S„Ü˙⁄yJ§àÒù≤q˜}çZ‘5a{ß€€ {à…#ÎSekä!|Öê9´VËÛà·Û@$®s«˘5{I‘Ùıπ∂K˚O2—Ô1ÜsÍi…¶«p∑zï´mä)£É9!=è∑’N\nÈ‹ôˆ4†ÒNß£EæùtEúä¿√*≠—îèÛ÷¨6≤˜r√oo[]ÅÛÔoóßoN+˚T[˚§vçÌ\n·»„q˜5–¯a≠£∏73[¨.Ö>wó÷±ƒÀV«I2ÂÖÂΩƒÇ+‘T†I≥¯±ﬁ®…ge4,‰R\n»åzT˙°”¢Û/tÊ\\)„.u=q˛{”#í»a∞ô<¸¬\"CÎ\\M©GU°§˜9kµÚ&rÁt£Óπ9‚Æhzï≈®0´8äLá˘Ÿß¯ãLìK∫Ü9ÌßRÎêd\\dv8¨∑Lc6ÍÿèvN—å◊M8∆p”bocjﬁ5ŸiÓ¬∆7#Îä—T≤\Zl—E/⁄n	;é¬p£¶8¨+{oµ‹∆p™‹‰ú(>ïÈ\Zfï£.ú∞Gu£›Gá26Nz~\'⁄â.[$4˚ûss\Z¿ëKÑóP«m=≈	π\0|´Ík_U“‡å=¥GèÖoÔ˙úv¨È,\rªÂìú-◊ï\"∂å˘∂3-‹]C\"€ÔàƒÒ7EV‘Ô#πpÒÉÄ\0∫ëV¶[VÜ‡æXêCÈY2«±≤9‚Æ0ªñÄ<≤˚∞C„&¥¥˚‰Çs,≈Ÿv0\n@ˆ#“≥Xå‰c\r$J∫±\rÓ)…XçŒÇÓ ◊Ph•µpÖïC®ÏO^RIØ¨s©_-Ú≤ácÚ©4’ñ)ì»l≥éFw‡˙V∂§ÚNcuµt\nò|\nqv\'πœHÂõq‡∑ZêKùßé8©nR€∆™™•:6>f=Ú}*&Q\Z∂“Wûù´uaz\Zz}≈¥R™œ‰-ë 8eÆ”I◊.‰∑ä–ª#ÄåÀú ‰êkœ…<\nª¸∞òÒ#F»*pk)“ª∫\Zk©’ÎAss$6qùÔ.eg\'ïÙ8≈rs«=å≠``Ó≠+ÕrKª±&pç“≥¯èzÉPπ∂∏¥]äÊ‡]áltßØ7êYXÄ»≤Kß\0˝“1¿˜ß‹Y,p –∞»lÚßΩM¶«nSÃiHßÖa¡ˇ\0Î‘öÑQ[óP§Ì`≈HÏE.d•d;]\\ŒÅC3WqÎZ˜VÓÖg⁄ªcWoﬂaÍ{pk2/)òá$!=π≈(⁄Ñáòp+VÆàN∆Ö≈‰Q1Ö!åƒ≈O$c–ˆÎUdºye2eïò`úûjÌ•ïΩ≈¥ÆÂÑ·æ@C\nâñ\'hÂç_Å”äißß`hK+∏ÌÓQÁﬁ—∆	Òcè√=k™∞Òjã{vºuíTOó© gÓ‚∏ÎÑás}ùŒ‹dÜÌÌÔPF¡]NH ıúË∆¢ª*2kDzÂıÆ´©≤ã‘Ü⁄X≤Y¡€ª”´é÷¶íMI ë±–»N?\n—“Nú…;ﬂ\\c U^Tû¯Ó=™	Ê≤ñ≈afŸ\"±!ïr{‘”ó≥\\®rçı2\ZB™ÂázÑ»Æ˚H¿œ–¬Eìq\\Ä~È˜™“AÔ[€πô⁄k^\"èP”ÙÎÜÙvWi„ qè_ZØw0\n7ÿî®Ã|\0:W1ê¶ﬁê2¿ÙÕ$∫åÔƒ¨R\"Âºµ?.kóÿF\ZAÕ}œS∞ÒÖ¨vP)ãÂ#pï¯Á°ÁÎä∂∂ön≥§?ˆ†ôY÷ÊHNOQŒ?1^Ao´‹⁄Ä±êcÚÃe$Ü	…¿=*‹\ZÌ⁄Z}Üﬁ$`d@‹6?˙’√à¡…æhª3X‘EΩZ œ˚Fd∂πGä’+Å¥»{˝~µ´£i˛ºµxÂFﬂ ?1\'1ë˛5ó®õ{˜/ih#éïp≠ﬂ◊Ò5ùØ\0⁄õÅ#ëús]¥TúŸîÂ©µ‚{KXud6sµ‘)\nÂ˜sèØµG‚ÚŸ≠£Öù∂)ëœ,™3”€ü“≤bÁŒ\n‡\0qMS!RPî+∆T‡‚∫iÛ%fÓfk⁄ºóê∑ñe\\Ç¡∏gØ”±v~ŸØ√mh˚¬@#Ãgvqì¯„˙W3;K\0X¶GäPøtÒ¡Á?ç-≠ÃêÕëªF„êÀ◊–öZ	¢KïŸ3„+∏ÔRŸçÓ;@‰sK=»îÖEç√~>ˆj§22J0p¿“∏˝NŒ”ƒZòãÏqïh¬îÿ‡`gΩE™Ù€vÇkuKIõvI$cék*÷ËAûfÙvP^‡’∂ëß”ôv;‹ºõvëúaı¶¨ë/Fc®Ÿ≤0=kRÕ,öDí‚rWo#8áçg_c©]¨≠Éë»>î∂Î21»Ë?•g$ŸHéÔ ñFxbípæïYF\0‡ÉV§⁄XÏ‡{RÚsé?ïZ∆y =˚’Îõòañ⁄)B$ÿVæx®Çç†böGPºiI\\∞∫úH¶5z1¥Áëúú‚•—¨g∏ÛgÜ4¿UäÏ‹0N9ˆ™ÔH«íI˛u‹¯OM]6io&ûO.R0A%∫´g∞ÆLeUNìÓ\\}È\rΩs†òFßÕüÀì\nüEÙ¨}~˙+ÎH°e\r$DúÅ–dÒüNï©‚°˛“KâbIl•ç¸ì⁄é‹wÎéyÇ«\"u-‹ˆÂ`®)Zfìv3òÌ?+`Éèjá,p=O54ëÌ9\'äÖ‰Q€\0\ZˆLJì.d\'==*¯\'éz‘”IŒ@ÎäÆ‹∞nz‚öµµ\Z›K\06é¶¢-ìéá4Ò1éNô<Uyô3Ä=já–x≤üõﬁáêoË:T!éÏ¿”]»\'◊€9ﬂ;‘âtV9sn$≈UFÀÎëNëåÒ“°îâÑ>Kœ5\"N ˚êÚT©“´π›»˚ÿÔMÛ8‡f†{ö∞^ÄXÚG\\ZÙø	\\Ÿ\"Õ&gFíqÑŒ\næ~V–\nÚ´(ñGvi6¨`±?»VÁáµ’“ÓXÀôdSÃﬂuOqÔ˛Àã¢Í¬Àr££πÈæ ÒTV”h–˛Ó·\'Äº»wdëÿzÊ¥ÏıuÇX•∏3ﬁYô#Rß‡`ÄG|däÛûÛP∑VbÅQ˜Üç~bºOaœZﬁ—Õû´´§$â.8Ib}Ø¿Ù\'ºz∏x∆>õö©∑π≥o„ò‚(-£ñ9ÿïd3ﬂ“∫*“⁄tª∑µ+$–º¨ß§ô\0‡u=´ã∏–%±‘ÏV÷EKªi€dÆ>V!áÃﬂÅz_€xr ÎOä·nµ(•‚|«$}™T)‘iQ{Ó	5¨éÜ˜QíœMπië⁄qñgπ\'$~π;mµ)5{ÕFM≠\n(±\01nA„∞∑&◊Ü•¢ h^WvË©Í1ä·&ÒLÍ´\r®Úåk∑p9,ozÏ¬™©JÙw‹ £EBÍå¡eÉÎS≠»*ÿ‡};÷T∑≤]Œ“J√{u¿≈lxvﬁŒÍˆu$ô`π‹±Œççá†>¸◊∑:º∞ÊóCö◊c¥Îf’µ,êÅ-ƒÅtw5©‚Õ£a‡ë¶ÅcFi«Ãr˝+∂∂∞∑“5+{{X‡`∞#~Ú,3î.≠ÎŒqÌY^*◊/uV◊A∂«ˆÄÆCg+‹n˝∂k»ée*µW&ë:=äQ‘‡[NI ékBŒ]@e\0í°¸:W| —-º:≥5ôÛ£≤h•»…FÓy˛,ìS∂õßxs|Sªãâê™\\#ÉÙER∂◊-&b\"ñ2\'}ø}àıJ æ*u›·~T8∆1—Óy„œ±ã®˘weG•@◊R≤òÂèêqí0Eu÷ˆZ¯ÖÓàó˚0 èi*£–û∏<˛—\\x{L‘ÁIÓ8R\rÃä†bu`qì¯WDÛ¡§”!SÍy¬Oƒ®π∆A9¯d‹Åc%$‹süîsüÂZv˙Vê˙§ø-lòF92ryÏ‡{”ºc°[ËﬁV°•‹gOõj/Œy„ı´û\".J=YQèô«…˙P\n€ï€ÒÚü•wûùîÖ˛€≈≈¿+‰l;TÛÉﬁπ˝6Í◊PYÌpÜ(…h	`ÕÅÖA]˜Öo-ƒmæ‚@àX\\düŒ¢¥•k#¢)#´—4€}=≥c∂8ÜC°˚¡òéΩ±Uu….€[Ÿ≈Ê*6…¿>µz¡Æ\ZŸ¶Vàôscû›qSÀh\"â^X√\\∂î8ÌüO≠yÓM Ï–°¶ÿEdVŒYóÌòπı«ßJÍm≠bµèdKµ~π™÷jqZR2[€ÌZ•zhÈs90¢ä+®Ä¢ä(\0¢äF;A\'µ\0-är#ÌK@Q@Q@Q@Q@F”\"Ô…˚ΩqÕIUÓñO≥…‰*ôOL	˜¶µvvG3≠_%¡yYcHôÜ[==˘„ﬁ\"øº∫ëÑ∑“\\Üb∫cÂ¡ˇ\0=+—<g¶jw;\"é2ÍqÊõëå˛ÇºÀU∫*\"≤∏VÃÌ\0sÎ¸´¢Pi]lDZl≈YV$*]â=@=\rv~úêŒeú…Û@y˘p={◊ü 1*	5n⁄kı\nÒTé3\\µ ‰¨jûßl˜qŸjP‹dâ‡‡E6$Á∑q]ÙZÊÄ˙2≈©@Ç»>ÂÅÚ±9ÈıÕyûÑñ˜Wv∑\ZçÊÀïv?4{ÉcêI>ßä‹æ±‘µªg˚ê∂˛j¬dt]€πœ‘z◊DØf]Æjç+Cû˛ÛT”ÁÖ‘mçb¿Í7ÒX∫•Æõ¶G4∑˛lŸP`HüÿÆ@>Ÿ#•]—|+ÆX¨øºIR\'*Ò!ÿe#–˙Vﬁù{s®_-∑¸#ˆÎ$nìi\0Çq€∂)A.}\nµè7“éïòõS∑øYe`Uè\nÔûFO†≈tZ∆ΩmvˆˆpM\Z€öEë¬ú„®9‰í+K‚eΩã≈m<ZÑ+0mÊex[v}´Ä≥é‚>‹-•ñP÷π-ÖqÌ[ \Z‹ãô˙íI™ﬂK|PemÚÄ	¯ö“]8Ÿ¯v;∏lZFcrœë¥t˘GNA≠=YûÊ¬›⁄ﬁH‚)∂=ø∆Õ…˙‡ˇ\0:ØßX≈-˝£u*.·∂πCÓ√∏Õ5R Ï,SªÒëokws-ôá(v!‰ÇU\r]}Öñªy°Ÿùs\\ôlgmügâ∂±\\gñÙ≈;˚#Læ”ÖÙÅbºÇLmä#∞¶F8S]Âíﬂhˆ—A9}≠º)P%Ó+\nµJ»—-,bÿ€i\Z]ÀZÈ÷ˇ\0nçäBÑn2nsÎﬁ™Èﬁ≥“Û-ÛÖïŒz`Æïu˙Ü^Ó»] D\r3!çë~eUœ\'=œΩ´Ÿ£ÈÍ…,˚ïãJù@Ì˙Œï9.¢l÷¥xb≥∑âYvÌT]£éïvwIr\\ õwÓ\'ë˛=*.q=úf=πè™Éüòéûÿ≠6@I<ÂÜ\r⁄ª„5mZ0¸Cvd≤û∆÷TKô1\Z±œHË±ÆCƒ+¶¯n¬÷x‚¢\0RXÂ#Ä‰ÉÎûiû4ΩüIº÷w…–}≤ê|“ƒå(ı¡¨\rxbÔ«ZÖ∆ß©Õ5≠òu›9òı=z~UJ≈$÷Âÿu˝S≈\ZeµÜë#Au,ÁÕ˘vE|˜Í{W9‚Ô\nÀ·∂k©Æ¸˘e#ÁóÔ ÁÔ=©ØG”¥õ{\rbW∂ÅB6F  \0èÔu˝*ñπ·XıüŸÈ˜ ≤⁄…4åTû`pOﬂ⁄µî¨¨»I_C ,¥+€ç=n„≥gÛfF˚Ü	«LzÙ≠ò< öfô£ÆA≤sà]ˆ≥˙c⁄ª-\"ÎKµ√Èö§ñ˜1«rZ&	àÄ>b=GÂ\\óåµ©µ]jËIv∑v÷Ôàº≤68¡_“∞Fè»Án≠B\\hä\"l≤ÇrpGB}©ˆ∂ry–‰´∆∏»ù«∑=kE\\≈jê‹b,ÆËcQô?≈È”ßΩY≥◊,¥˚ÿú≈Á≈m∏]èí;˙‡’¢]Ç˚AûÚ›µ;[Gé”Ã†#\'!FÔ◊5àˆ2Bª§çÜNz&ï„3•Xiííë©i.XÀF$êæŸ$d˚V-Õ§∫û◊Ü„Ì\nJ–†˚∏8#⁄ß]ÿ&r`ìh,0qOÜ”nFk®◊ÑRµúYIov‡G9fc…l˜Œ\\¡=•√√(+*}ÂÙÔTù–˜\'KcÅÛ~µ:DPÁw÷™DXù≈ø\núèF‚ã\rh\\Hb#,jÙD√¿Ù¨®π\'ìV¢<ú‚ã\\¶ŒèJÄI1P°õ#°‚∫‘\Zk¬RUÜ8Ç‡q∏z˚◊-£Õ7~kJcl\0ºz!Zê€∆˜G»-,lƒËﬁ°•pLﬂ{îÒ\n\\≈$1yÒ.Q∞r\0ÎÕrﬁthƒlËq“Ø\\j«Z⁄8E…M—˝È>ßΩgIoq:2±È∏`ê*£dÇˆ,% éãVcºÁ@¨ÙSúUò„\'JÃkSR+¢z\nµÏk>¿´—.qKa2Ù2ø≠_äV‰’8\"c¸5•\r≥gÅON§ÓMé{’ÿ…#öä(ëG≠N*d”ä(®$(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ê–KE\0QE\0QE\0QE\0QHÁ4¥\0÷$@œµ69CÜ„8Ê§®§0P.sÛgΩ0$«SHß9¿‡U+â$y_¬‹∂”–göº:p8ÌCV)`Y1∆‚∏¨Î¥mA%≤ú$y+H5•4~`;)¡´•øöàÓÌÊt,ºdf™. „#≤∂k]:(£#|#o#äIÓﬁ›°vcsÀú˙˚U¸\0sÎ÷≤Ó‰2HJ∑ôÎY…&Æ∆ÆiyÒ™i\0d‡Ù¨ÔÌÄÓÀÂê†p«¸jùå\0^ác‹∏eèÓ˚sVÓŸ|÷SµT∏Í}¨•5m\nQÓ1563që·c„%ΩÒVß¥Û¢ë&î˘DÉÿ÷Cj>OóùÄDπ?J≠©Í¶m8KÜs¿-◊⁄≤Mâó¢—ÏUûXõtå>VnüïIoß¿îJ|¿r\0\0’].‡˘fÉÃRP∂xÈÿ‘S‹À¨í √i$™7ΩìZΩDö+^…®A4ìn!G\rì\\]ıÿöÚ1s,ÇÃªgQÔ]5ÂÎ≥Hí8ÚŸà\0∑Z‚ı`ä˘b,‡êΩá•(√Wt+≥æ˝§VëeÆX†âèñO-ûÑ–4áh.Ø.•PáT]qY∫.§˙’ƒ¨Å Lçò˚Œ}ÎVs<7^m∏·ˇ\0á=Î:7Ωö4{ë«Qô$ükÄπ‰ˆ?JÍ<>-M ƒÎæUè‰b	„Ø\'◊öÊlÕø⁄Z-Gò’Ü^zU¸B⁄]‘∑πH‘î ∑Q⁄∫6ü4z5©Ë\ZÕΩî1⁄<◊aÖÔüa\\uÕªÈkqp÷‡ªÅ∞ùøÖ&ü´Kw©õ´ÌŒëë\"6Ó}Ü+gƒ>!≤KMÍ±èõ´`~ï≥Æ§˘fåú-™9Àça£“Z)%œ YN‹‚,éÑû‚πÕh…Ÿ√ÖEÁ=ÿ’ØÍˆÛM≤Ã|ü≈ë÷∏˘dÀ±b9ÌI∆2Z!´ı)k–Ÿ¡™LtÚMõ6b\r˜∂˚’kKÉÅ◊8úzUªi·kwÇÓ‹0(T8Í;ÉU¨‚çâO3kÓ\r–ä“7Q≥%ÍÓKu≤ÍyZˆFTZ⁄.Øsk(à<N§eZCåv5ïyp%å0t]´ÂÖã@≥Õºã|*0B0V#¸j-xÍ;v6.¸Ksu™YﬁÜ≥LÑsåˇ\0*µØ€6ù›Zjêœ∆%\nâµ¡=~ò¨;ÊµûiÊ≥úïB*K√∞Ø•AÛﬁiÀa=∆\"É/\0 u\'ëöq^Í±OÃlM,Ã;1·z‰”ÂaD‰á¶;˙UxYãè/Â`sëR^/ë¿pÍ˝˝Îk£=DÉPöç£båá Éå\ZÙ´/hÕk©IjV√ÃÇ^Ö»ÍæúÆEy<éc°≠£D%∏$$Öîep{dzW7Jºo-\ZŸï\Zé¥hÈ◊:]éÉ	‹∑ÒçÂ8ˇ\0éj÷µ‡¥’t®mßΩÚÃ	Ä¡3åWo\Z#iöîoÍﬂi”Êt#kıd”°—xØTöÔ¿Ò•û¢ãxB´¢p“{s»5ÚU©’£R*îÙæ˚ù‹úè∫G∑íÊ¶‹Åä>”Ú∏≥˛“˚\nëÔ⁄∑tΩ\nÓ·.eëB˝ë±<,pÍ=pzäƒæd[ŸBpπ„ˆ‘*∆j…›£öO[≠á•”ª©Í:ÛZ⁄é´∆ùoj∂Ò¿íTb≈»ÔÉ”≠Q—¨V˛Îpá†1¬´∆O•CxíŸj2¡v•fç»ê_Î]*£äÂLóÍkÍMÜŒœ˚6⁄dø\0<é*qŒ·˛™Ï>\'[ù=†‘≠ÌÓ#CÚ0\\»}Ak=n-Ì.\"1À∞H•·r>È#ÊFÙ¨ãã∏í‡à£!ÇAÔ\\u°\ZŒ”Erÿôµª’≈˙ôCúû^;◊©x\'N–/Q‚∫≥G1˚0êÌ<ÁØ±ˆØ‹“?9∂ÍÍº=z”iøeùEÕú·cx*«ø∂x¸kóÖS†„gmu6|C·Õƒ»,2aò˘∂ŒΩÄÏ~ï•¨A™xÉNåjQ≈-ƒÍ⁄(«Îé¢∫Ÿ/.$∏ÉO’êπíáq˜P}•Sπ’44‘¢ö⁄Fêû$GlWâá∆‘ui∆¥on®sáÚú%¸)£¡m\rƒJÏ8„=˘Ù#“´Í7”4\\ò‚®*∆∫´≠˙˘oµ(‡\rsΩD ç—ñÁøJÛYa`J;Ó+¡∏æí≠©™±[òEªYöVóÊI¢Üi$xb˚ã>\\˝kF≈ﬁ©4âqÂ»¿∞ mÙ„•sëßê¶D\rÅ¡5ß£›\\•ÙgO∏e(Uà¡s÷á‚Ïlõ––∏“d∫/≤bˆ±1À»z69Æ~kHÀ®+π˚ÿÈV\Z˛Íﬁ‹H¬&cªﬂ÷¨Ÿ\\≈.õ4N˚LGrì”û\r(9E>bùõ–ÜÀVª¥í~CÜã ê0·‘3ÔÔXﬂ4Ú3ê0«8Ù´ó7 ]çN∆@£éxÔı™»„ù√Øz¥∫íÿU(A»œ#ΩJÏ ¥‰ÚQNíŒcaˆ‡Ä€óÚ˜¸]qé¥ë‹«ˆÅÿrw\0G ’ª¢orﬁôioqg4≤-…MÿlzÄz„˙÷◊Ükk®ÆPƒB),ØÉï<R3öÂVÈé¸Ò]¶É´ÈÀ≈œ#~Ì„m∏Á∏Ôë≈MWtZûØ/ÑQ”·I\0û¿ﬁ„Ë>ï≈Kk\'ÅØ.`ºm∫e⁄∑Ÿ$\n$1…◊cŸÁöÙ\r9$¸∞ÀrË-‹ƒPúlL‰^ıÀxõLÉQ≥í‘Ê(c|VŒÊÏq˝kñ\nùõ—ö´ÿÚ˝XÍ7Û¨˜¡…deÛ«^=Ω™ù4õ%ü*v‰˜Ù˚õ˘Ãkk3Å%øÓ–Å˜ó=j≈œˆï¶ú–]Z0∑ùïñlqª±µãpvË&ìF<l@!é9∆=+†“Æa[ÖÛ&©=EgŸÈ¢iGõ* #+ìç’\"À‰¥nc1˜F=\rkÕŒÏå⁄–Ÿππ∏Ò/âe∏é\'+xì™é∆´∫Y›õJÅ¿écê#›ÿ‚Ωw·Ω•Ω∆àóo±ß\0∆¿=\rQÒÁáD\Zi˙PUIú –9„#í¿ûˇ\0˝zÏPÇ˜‰;⁄ÁõﬁiˆÓ÷˜/,wá;±ç§p@Ù&πY@IX+n\0ˆ≠]OL’!gíÁ{I⁄¡õÊ«””ö≈íRáf;‘kfó°íFù∏TEƒ…PI9«o≠62Xì∑Ç=?Zµça»√π‡®ÌpΩâ#Sl◊#˝†qZ–I-Õπ˚5„ü-B∫HsÅüONkÃåN‚F—””ÌØ>’\'Ÿ7nn	qü^‘•√LyŒÛê=™ ﬁ<p$*Œ6H>Ω*I£∏∞wÇÊ€˜ƒÜp8¸™÷£™¡r±õ{eG0˘sºvË;>Ù7™V≈-˜d\npq˛Üâ ∏‰∆ò•zÛú’ç‹ ÷´BX≈=˙TÇGyÎ‘bíVç§&5⁄§g±ÔRf7\nŸ`›	=?\nΩç-:·∏Gπ ©MÍœ>ÜµµqlñãugècÆÓQø¬πµS+∑9Q…oOzµl´v|è,4ÅHR≠Ç‹qX ï‰§ŸjvV\"à∆≤#r∞∆cÎVıkH-c∂Ú§2;¶dlc=¯÷S2êA•<»Œº∂@ıÌ[$fÀ67“ZN≤#2∫»√±2;÷µÕÕµÙ-py•î€Üœ!q∆+õ.3«\\˜≠\r⁄…®¢ﬁ≥„	˜àœ8˜•À≠–\\¨ËU® y÷£1ÉÕlj÷:lVo-Æ§Ø |,aHﬂËﬁ«ØÉª˚’5`O©+?°¡ÔO3É°Éú˜5¿ s–Q	éKà„s∂2√,{Rµ¿qyï—‘„∏=ÖIo∫ô¶q—πíO“ñ˙@ôÇ	\"í•Å·áµVévâóR?∫pi∂8P°07u‹=*&H„çæl∑\0’Î‘à˛˛’î∆§|íúÁ⁄® ˛s≥ÏU›ŸF\0˙TåÆFzsûjH%>JÜËEOkjí§Ÿp¨®X„5XF\\Äw&¶◊–{√yqo-»WJ˙èJxöF*X˝=*(ÿ! ,π‰Ù©ûÌ‰AËæÜÖÑ›…¶t∏í,epÅ[=»ÔR[ ∞v´úûd\Z¢Øá´‹dö®EÎªﬂ∂$>l`HãÜì$óÙ˙``TB1ç√©$tÙ˙“G∫Sæ±§1>·Ë;U^˚àöE˝‚®˚ß„µO‰G\r—êGßjä)|ó‹Wë“ÜìÃ?7\'÷ïüA‹öiÓ“9N‚1∏‡Vúâq¶\\;±ƒÄï„¯PEc\0ıÏ}*I.%î,å}2s€¢ÿL≥5¿}Ë`êÃˇ\09?Œ©ghœjoô¥u‰äE‹¸SHHúc…© ‘(º`’Ñå∏4“ÖQ∏ÒONΩ9§U«“îH4Ï!Oïékn?\\›@—]›≥;ØóÊ¡\ny$ë÷∞•_î0$ﬁµ\"–Æ¶DñÿÓà&È§a¥@{ÜœÛs\\X•JÀ⁄ﬂACÕwsú$H¢Vf]Ìï…ÎœΩ3W”·”í%,]úd‡åQ¸™cj4Î»~–¢ n;x9Ùˆ˛îjP[FS>_öÀΩÜ~]ß¶>ïƒ§îó#–ªi©ŒLT}–6∆®J°ÅÖ=Ωj‘ìàÀ©P|Œ˝jÉ∫¸Ÿ‡ˆ5‹ôô^gE\\ÜÓ}j´∞#ëK3„#9˜§G@	⁄§ƒt®îäC∑|£8Á±Z@ªÿÉÕHŒÚ*úyÈ⁄£;dGùÏUÄÄN8®I%Òëäs!W∆;sQn√ÅUq§8Çph-«|éÙ÷œ^piv¸ô‚Ä∞%≥⁄ù¸YÔBÁi$qäBHbΩàŒ)Xd™˚õ\0„‘˙”·bY∞GÀÛsﬁ£\'p8≈O\nÑíwv°≠^:µ√$Kí&¡Å¸9Œ?:ﬂ∂≠®Æ∑6q¿¿(ÛPß˚¿ˆ5…F€òç€kR›SÏˆÚA,¢·X˘Åx”iÀZå\\m∏\\ıãIÔ`øûMEÛm!ÛV%Ü|~ÙÛ’xÀxØN≤ºπk€h¿ûÈƒãÉ¡¡^Ü®…‚ÀÑÖ‚ìkâ≥Ê‰úÜ¿œ>˛’mÔ¢ø—bæXû≠S»Û#« ¯1ıÂ“√’°>{}≈7}\nóK%ªEmhëohp‡6Óº„\'°‡UÔ\rÈ∂PÍ~^£≈‰¿œ4åŸ¡€Œ;Ω+ûñÔ…æ,ì}°@1{◊ ’óXéÿ‚]◊ãÚÌë=˛ïÈJpÂΩØ‘ïΩÀ⁄≈µï⁄4⁄Mô∑”Ìê™L„ôH ûÁ\'Ú®ÙfñÂ#πéajº±ùºn»¸1[ˆ“√¢¯elu\0≥[ºûd—ß;Nzg◊å‘¯äﬁ‹‹ÿ≈;ò§cÀ∏\09¿¨#R£ß(A^›F¢úÆÕ]c\\ëõI∫é6tÖ…RçÛ`†c‹`◊5&ß¨Æ•mÆªá)1åF†r·YóòßVFrXÁ†9Í=∫UxÔÂIIcúgØ≠taQÑv&Sª;/xí[∏ã\0%bÅ:Ú9ÎèŒπdΩàπ++\"ÉµáAﬂÈúU;ãπ%î∑≥∆*⁄eÄ¡Ó+¶é4·dàrm‹Ïl.¸π\Z ÇMÎ∏¸£\n@…¸ÆÌ7wÂﬁ÷Bëú©]‰|£úÛ“´ÿ›…gteàC√)=™&Vb€v1Öı¨˛≠i7aÛ‡Öˆn2\"6qé	ı≠ªÀΩN“=.ch$o1ÚúØ>Ωø\nœ¥”ö·T!√:úÓÔännÏ‹ AÉ;H-Õ*î¢⁄v’—Ë^—¨Ï”Àä;Y.mrçñ›êEOôu-∂§ê€«‘≈•âsª%œ*O†Ê≤|9®&á§M%¬ƒnÓ7Hé„Á∏˙u´∫]Ω÷Æ∞4w	gÊ±t⁄‰íπ˙uÆ)&õlÍZûá£\"-Ñ\"C\n !*q«•hê•Oq¥ı»ˇ\09¨;+jˆ€√ΩTrÕ¡<œ„[\rKıììïc;G5 ’ﬁõîÀ±.[vzgåTÙ¿	¡èJ}z¥°À&ÓRw•≠DQUÆÓæÕ∏çõjñ84Æ¡ª3ÔU~Ÿ∏HÒ∆ŒàH$`r+áè≈@ﬂ≠‰∑hÄ·dÜ4,„ê?>kIµ;ƒAe€yõxûE \"∑CÙ‡˛ï∫¢Ã‹ŒΩNÂ$tßVïksmu\Zµ—íﬂ ˘U[ ü√ªYN<Æ…ïtQEAAEPEPEPEë≠\\˘V≥<MóÜ2ÂNqè^:Ù™ÑyùâîπUÃèxÇ⁄¬ƒI\Z$Ú´‡!l∆qœC^´0ñÚYUv£9*πŒ—û}´≠÷&ûÚÂÊöLóÚÆrÚ‘:p9Æ«XÚ£∂›ÃG ô¶á]†+0$éΩΩiÚ¶«*Gµ9˜xP±ÕsI≠ãzl¡$ÿÏdV\0£Ø?•w∫N©®≥GôD(≈›BÒù›3ÙÊºÍ\'Ú•ﬂèõ™Ïw≤;4¨ºìúüïr’•ÃRùèvûs=¨7)pc,ÿ¢‡≤êq«c–◊y}ya®≥F¯I‹;åˆ˙Êπ¯º[7ÿe∂rÒôP(ë~Ú„“∞‰‘JDœ<ŒSTû∏ˆ´Qît/ô2Õ·R`çùÚ€π>ÙÒ®˝ù-Ù¯dGπëvXÑ@IŒÔ~kR/j\ZŒünT••ìF$˚KÚÕúˆÅüÈZã·ª(¥	m·ä&ôÄ1Œxì=˜gÈöröJÃj:\Z\Z\'Öm¨““Iıp\"˘¬≥4ù±Ë8‚∂÷«I÷uqÉ$m*{ˇ\0wÙÕqÜ	“⁄ﬁ ˆíI@@·TO∂9Êª}\'Ï73UxÌ°ãk9,Oø~yÕsI]ﬁÊë]ä8bÇ7Ü+eXò`ÉáÛı®mÙ€˚É(ﬁ]≥|Ës∑qË®‚≥l/.†π∑µπrê∫Ìg›Üpz•u-æ“÷≤ä\"ô\0åˆıT·w©m!XgHBÅª\'ÉÈäe‰&·MºsÿÆp@9™ó\Z›ù∫ô$d®p?7„PÈ≤\\‹_¥∆@‡(\rÌüÂ]VÇJ(œ]ÀöeåV(–§°‰tÑ\02{t™⁄øà\"”Æc≥∑ÅÔ5	GÀD|£˚ÃÑVEÂ˛ß¨j≤iöD¨-Ñªo/QB˘ B~ÛuÁúU·•≠ç‹vö^ 	πñ_ù ÒÀ7ROJ÷+›µ2Ù_¿≤æß≠îø’ds ;âé<éáÎ[˙&ü˝ûå£piöD<Ì=∞{\n’Xï0ÂP0\0¢YÀª¢V8´BléÊK{HÍm™ê©bÿ˚£Ωyf•‚ªhìTÒ$L\rÕﬁ,¨·nz±¸M\\¯Ö‚ªãxéüÕ∫$ä¢Pø3ıÔ¿Ø1‘Æ\"A%∂‘Y¢fYI>nI Åÿ}+[rÓGƒK5ÂöHÚ•◊ôrÎÁnH∞7∑TÁ∞Ê∞˜&I$g5=µÖÕ‘sÕºç)ÊH¯·V¢KY\n3ynAm™¿dﬁ•ª≤ˆ,√r“\\˘◊ün≈bz8œµG=¡ïπëŒK˚u´1ÿ≈‚f+π~aÄH¶=ÛäÆ,§t;Pñ\0ÁÈä≠ÙwHÇ⁄ÊÁe›“¬ÅK˝HÏ=Õu\Zn°¶Èöã%≠ÛãkÑQ3*`ùX}ztÆv”LäÂmÌ`ÛöÈ§˝‰L>Í˙÷›œÑ“÷‚x„›ÍÍ\"*‹åü¿dT∏˜)\"]W^ÇIúXëqü‹sñ<sY:õ$ñ÷ó\nœë[ÌÕú∏c˘qä∑©¯\Zˇ\0M∑∏ô¶äC@á=FF?k\ZthQ’FÔ)»o|’+-ÜªåÛS£7©¶¸ô<π‹?∫r*t¡¿œ?Zb$á*[”≥§i¶˝⁄4Œ˝§Ä{V2ñ2Ö\r–ı≥§Kw\r‚=≥&x«®z\"“4SFπµ1=»0Ü8˙÷º6ó6w&8∑ÀﬁÑ=y¸*]oP\Z∆ün—»Â£Â–ˆ<«ΩUäKà#í»∏aúgÎYªèb{ÅfnöH–¢/*£†™3\\Àp¿»K``g∞´÷q⁄‹\\/€fÿß´zc⁄ù™Ke\rﬂïháÀAç«¯ΩËHVπF(ù∫\n–ÜŸé2@™ÇÌè\n\0ÂπoÔ\Z¢ñÜ¨qDüy™‹S¬ù5àìg‹’»€µ!\\⁄K¬\0\nû;ós‘öœÜ 0\\’Ë•D∆—ìEÆ+\Zê€◊É÷≠é\0¨∏•ñF¿≠ÅT\0ûhí±$¢ä*	\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä•\0Çx4ëäß+4Oú”J‡]§¶,—∞\\0Á†Õ? “h§•†äLä	\0g<P‘RH ÍäÑìﬂ∞§.Ó˚P|Ω‹Ù¸*@ÔëL¢É»‡‡’[π\'H	àsÉì¿≈	\\Úo‹GÇI&§∫î\"—LeòúT,‹AhMÃƒ|“ÅúJœΩ÷≈‹Mg	;ÅÂè9üZ§µr≈„πFïcURpæ∏ÈÕ\\™\Zdxuby%sŒ~µy]YôUÅ+‘g•K‹®n¶h\"‹†`ILƒ($ÙNÍ˙B	√!q€ﬁÖ∏	=¡˚	ñX⁄0IÁäçﬁ9mvFI8√€Íj™KÊK:Õr≤E #É¬èJö∆hüù≥ÉÚ¿\0cö¬§ÓÏãKAˆvpõp}HÈX\ZÃÛZ›∫)wg#∫]<ó« åììûÉ“πùJÓ;õÂ6≈Qá$vŒx°(¶5va^j?jüs&‡ÑÄßΩZDÇ‚D›ì“Djrsıß[›Z∂©…€Iêuœ˙◊c6E∑cB8¡∆sÙ¢-s-é2;πÃ{ºf9\0PÀ–≠1smj≥º±dlÅ!‰qË+n„LXÁ1\"ºòÁwOjÂÆßé-MahÉ2ÂòÇqúp8˜Æô§ó4L’ﬁåÁní{…YÇ·£Rp~ZÂ5Ã3≥;nüÆ¶+∫ö⁄ifò:èﬁ\0K∏ûïJ”√-ƒë∂UY≤°«Ãﬂçs˚X≠Yi_Ddh&ˆﬁ$ªä6é4`¿»=ˇ\0:Îm$õQªûÙ¡Êà”¶Úø6F0;˝+:˛—,mE≠¨Ï≈ˇ\0á=˝È∂}j•›?âïG\\t¨ùíÁàﬁˆgO\'ác6°ˆÏíFŸôœ_“º˜U—‰{Î®m&\rπ,Ã{Å]\ræ≥®ﬁ_£\\\\M%¨Y(\nıo†¯v„Wª∏í6‹YÜÌºû’ŸJwé∆myú˛û⁄çÕ∆ÿ—\"ÿù\0∆‡Rjé±qó©ŒÃÅÜO†Ô]•Ï…•ƒ!π˝‰±°+‘ˆÕrìXi¥GƒlíwÇXé¥≠v∞˚ù\rHëß1*éùzW5{·˚ò%1ëñÎ]ûì{u•AõtBÑáOzèUΩ∂h^Íw\n¿ÌUrk(ßfV˙£À⁄“HbR“aXuÌä™ˆ‡ ≤gc`‡üJÈı˚X,Ùà›£uïàCe	Ù«j÷∏í”V¯{√Ω.tÊFaπG„é¶ª#ßsn«úºr¡∏0ËA4∆öWâÖàu?ZÎ¸S·ªx,mu)§»ªŒ	c‹J„Y\núnËk9¡≈Ÿó&áôY¢QpºÜ«_≠DèÛrGµ9Ó ÚA˘O_≠27ÚÿœCJ¿Õ≠Tµ±ñW∏@ƒ!⁄•sì˝*ú˜ﬂj∫ç÷M§eAÎMπºéÍEaq\06êÇ§ñ¿√7h€‚n„¯O°¨•%v;ïnHÂﬂ,,©! ì‹{WÆ¯˛Õ7M[€´òVËr…!Qé;˝kê◊Ωˇ\0ÉÏßâB…o¡˙t?≠q±6X)9\0cº ‘ﬁ>ãá7-ùò+n—Ïö˜äÙÔÍV⁄<[Öòònù\núAÌZ7ﬁµèCªyÂíRÄ¥á%£«<˙äÒ{;ŸÙÒ#[ —óR§c äÙo|IñM3Z,ˆ¨ªf\\î?ÌzäÛ1ômL5$œHÓá~i]îµo\rÎŒmµKI§ø¥∏ÑfhóÊ∆9Wº˜QÖ≠ÆYX2∑9V]’ÔàuoxÇˆ◊K∫ßÛR%;–£t#”ˇ\0≠\\Nπ¨M≠Ír^‹02?\\.+‘ÀΩΩìirΩü_ò8ÿØÀF¨π;[®ıßÀrgEÛ]x‹O$z\Z§iı©π\0bΩn§£B∆ÙG∂“¿≥E(«?y™üÛöÆˆÓåV\\Ü©>ù©∞+ÜFHd9˙{◊}‡›?M÷¥õË.mº€∞U∑å&y ˆ5ùIÚ.bñ∫PF10\nÏ@‹‹tˇ\0ÎWe‡ﬂ>ß©#⁄H»À	ë“E·Ωá◊◊µ`õÏ–[G4ën![oÃı⁄|5‘°“n/çÀ≤»´≥Àa»5«é´R8yJñ‡¢Óä~%ºΩÉV¥F∫m„Vå≥r‡˛GµW\Z„ji®_Zq\ZÌIëv¨ﬂÔc°µï‚Mk˚[\\∏c\Z¨fRUÄ««ÁÕ:I…”ørX,kÜ»\0˜5ùÀI«ﬁ	›≥¥øÒ•qkn÷zsB≥ƒbñh•‹”dcä·oÅIä2\"I¡¿≠çUeT≥i|µ€∏≥sÛ{U-^£ë$â[-ÃçúåüJ◊⁄œû”€†?ÑÕÇ`≈SÒÿ˜≠À-Y.RimÏÔ«Óœ9<?\Z4›>7hn%Ö_*™k°”„∂”\Z·nÆIµ˘Y	lÉ”üJs®“¥F¢qW÷)8©#À#ïÁΩRä‘˝ûR‰ +î˝˛{We©‹iÌs4ó∂ÚÀ4ÁÀàøÓˆ¶2≠ûˇ\0çs©\rò≈u$ê≤1ÚôFÂ?^{˚V…∏«ﬂ\'FÆbªb`ÇÙ∆e*•XÚVÆ\\BàõÄ$ûïRÚ∏*	qï$t5§dö–B≤»FîSŒ¿p\r-ƒp©çQW;yaﬁ¶yÕ∆ZcÄO/JiH⁄]ÄÇ1¡©ßÃâcÏÇ,™¨˚Pú1#8≠«—ë-÷kb^o3#bÁ+Ìé§W:\0\r¥ÙÎ´üâI‘m>–Y≠ ìÃ⁄†§åfîØt˙2Âáâµm<œd$fkêõöG,	cûô‚Øæ±®j⁄ç≠º—$\nUQ„Ø–û˛ıõ™k∂ó:Í_\"föF_ê£tÏEh¬ñ3IŒÔ¬€c∏ÊC‘◊Æ\rrTQø2Fëm´ﬁ0“‚ÇV∏é1ëHP«≥/l˚ÛP€k‹È¢∆V⁄Iˇ\0T}™Ó∑,ó“‹§,Ï£2¸\\}·Í=+õ—⁄1©DXV rH…ø\Z∏AN˜@ΩûáOq†≠ùõ\\πå¿%YÜ·¯W95¸N¢Äw.{WA≠ﬂ-·í‹ZΩΩ™…~Y	ı=ÈfU‰ﬁ}F(˝úáU<I\"7|v≈^ìø3\ní∂ÜÔÑºUˆKÎ9sÚH<π Na–ì]vØ™Xkz√•üÔ.≠°ªõ\n	„ûƒsåWà5‚ƒÒ˝éW⁄y‡©=Et:\'åááÏeñ%º∏b$‹ú®ˆ5È*ä˜{ú≠5†ˇ\0Z\\%Ú{q(Fﬁ!\'±Ós˘{W:ƒ%H9\0ıÆªTÒû§—]›€\0Z\0é@…ÁìÔéıÀÕ\n≠ ≤au‹π‚≥îπµ-F¬√rë*·sé=≈,Srz&sÅ⁄©≤‡û£µ[∂ç¬„Â√pIÌÔQvÄπ4pw!G#Ø\\èJ“ÉLknÌ62O%åÉ<Gnk‚3•^O3™Ù-• ™Ñd7d”>˛’T‚ÌÔ}àÁΩñyƒ≤æÁ¿Ωi´3£í§¸ﬁï$–∞ïïSû∏ÖD88s[+YYÃ0;åTdéƒ”K^}©1ì∆qÈM ∏Ïˇ\0*Uc»•009•`\nÇ3VÑ9e*ŸÌ‹SƒßÔt=±≈BxßÅëN¬ÛmÃq…¶d∑n)0FFiWrÁí@!8ÈÉNäS´\"ıBΩFNI¶sëåS∞Xû{è:v}™ô9\n:\nÖ…:ri°wÁöF#&¶‡L%ÈÅëÈH¯#•B¨˛T$ˆœ•&≈d(ƒîSïP«ör6F9ßm€ÇH9Ì@W\nmûsÈLbqåbõ»8•∆[öv∆;G÷å∑N1RòÛÔMz@>wñÂ§ôœÃNN?˝U|†m˘îu©õ#ÓÁûº”6Ä¿ûG•&¿â_»\"ßç±œQLÂàÇ*x,Êî∞E84÷†Ÿ4R>¸Ü<˙UŸ<≈Ú≥∑%∫ÁΩWÜ %\\r;Zπ%ÿû*“\'B6L‡ät(Ø*	‘,6>ËœZ∏÷„ë‹~ï=ä€€‹£›[}¶êÒn+ü∆â∂†Ï$ÆÕ≠[¬wñqYÈˆGr“;∫‹¢ÚﬁäO¶G÷πqapdé?)‘»pô›Œ8Ø_ÕŒüö’f_≥ƒ\"	)À`gﬂﬂ™^&—‡πóObÌ\r¥ ß Kß≠xT≥\ZîÁÏÍ#¶T’Æéj∞˘Ï±$¬€9»`~5û∫]»â¶∞ç,q”úWW®‹√÷,Û\ZFÁGCÉSæ£ö?Ÿ√|Œ°d‹ºÇˆ‚ªi‚1NJ˜2j\'ÂÌ##(çÅ?/µmÙ‘æîÖ(Oô∏Ùà˝ji,@	J\\±¿«9Æˇ\0jñÜnÊ:∆HÔö<∞£¥Â±íö6\02ı\0Ê´<L_I⁄¥SL…îÛ¡≈oi⁄ÛK÷˜[eúƒ©å˚U‰©=Ú8Ê≤dçã∫t88∂ºoß´›j⁄é‘[RBHÃ0›ÓpkÕÕ=ï⁄øcJiπhoõo∂¯BÁ±!R7{ù«?EÙÆ/ƒ0eå√Úåƒ‡¸£=áÎVıK«’ñŒÂ‡2 ”A8ÛÀ£¯xÌX\r©‹2Car‰√\ny*yÁıØ3Fq|ÕÔ–÷m\\´u=üŸÒ≤Óñ‡zäÀsdgµ]π”\'Eê±RŒ{géÏT‰èPk◊V[Z„C\"»Äe8¶`Õ)+Ö\rŒjc¥dÌÁëQFx¿8©‹iüîëÌ≈4≤Ì«Sép?Zbï‰ìû¥Æ[…(Ω›”ú‘åzÃbCê#úéï^Rä‹sÿS‹œ9Q”ﬁ¢cúqŒi≈jRb0œÙ•\0éh‰w*AœP8Hë t4ÖOußgn{\nr∞…œ\\pjí©íA«J≥º‡∏•Fò\0˙û¥Ú	*GOJ¶Å±Ÿ⁄ÎcKπä;y°Úcy	VVa‘™}´Y≤H’\" br»{`qYŒü2∞Õ)Ñmj¨e›(r}êT–‹˝öﬁh—Éâê#Æqë◊Ù¨ur ŸÍy52»/s˙“ˆZYÖ…]ÄUôq‘UùíZ °ò)tﬁß9 ¿>Ü©3#”5Ø5Âîñ∂Ûü6M@.Ÿ	À pøé\0Æò”N6d6UáQªYe√äU’˘#˙”Sìªn0qÎMÛM,äÖwgÁ≤∞*9R—!6Ÿ\",É{íTqBD“Ã™ß%é0zS-ÿsûFELÑ≤‡¢öZâå)≤VG2í8=≈=ëâ«N)R\"œåÁäúØñÎëªûôÎU≥W\nUN9‰äôD(é¶2ÂÄ¡?¬iÅô9«”Ω\n≈NKsRı\rç{% rIÿ Ü˚ßø\0’Ì‡ªÅƒ»`»%πgûk1UŒBú⁄ö∞¨&97/BH\'û¶π™@“2/=‰◊3À≤ÿÃH!YA!W∆=l¯_ÌSˇ\0•[Ä#è˜QÇ«ÂrG ~•s^y(Jπi0BÙÕv^÷°”ÏÿÃà\\~ÔÃ@v∑n}ŒEsTáª¢7Ñ—Ÿhw⁄§8ee`ŸŒÓäsú{WYÂ˝†ápTØBjÚ˚-J·-ÓÉ^ƒ&I+Ê-ÿ~>ıﬂËÕ<÷p£3±Q˚¬«°«J‡ï6ùçnöπ≤˜A∞H‡n8ûÙ˝˘ê åsYZµ§±‹°2#/S€ûï~‘áﬂ>«Lå«”˙W°OöﬁÒãjÂ∫≠-–éÊ8à\\„q8¡Ï>¶π›_ƒññ∑…À…\'îH	çΩxœøµr:Øu™Îüg∂íFïÂr≈…⁄´∆◊≠˘R‹éfˆ=L›F¶NA¡„°˜¨{ùubªû›ëJéUò√Ä@˜™™XÈç$7O∞:¸≠#íKsÚû¯¿‚π\r__∞∏‘•T°&Gqè»\npÜª\r≤ojV*\"K-?lÌ(:8€åˇ\0˜Ø/äÆnÌ6¨+<ƒÃ*8¿ÓG~’ìko≠yπa¬\"3¸@ß‹äÙù {TtÅQˆÖ,äŸ’äÈryC4?¥Egk›Øó;FrB‡(çl“cöZÊîπùÕ∞QE#\n(¢Ä\n(¢Ä\n(¢Ä#ê»(*OÃIË+ñ÷.•∏∏∏¥íÕîï)©9|„è∆∫¬21\\âµ-B√Pä⁄\\ù€∞x$ˆÆå>≤2©±…Í6eïa∏ÜDö3Û£p\'•VûŒ ‚O.\rﬂpdµﬁµ|M®$˜BBÂ§ï	cúÖîzcö¿¥Ieüíx,O∞Ô]m6gcY—ù$aoÛ8Æh<àTF9Êªª…p	9‹kñªE2q≈sJ-nj§äëy¸∆˘≥¸5©o$,H¸ÿ¿˜¨È1Ã\0´K1öe~s‘é9¨Zπi‹øÁ≤rèûGΩkiücΩ∏¥é{O3c¸ÂπÛ3€Ë:‚≤`≥S#Â√ùô‘ˇ\0çmivDÃÂ\n—Ú˛£Ωc=ãéåÙªMrŒÓ‚⁄ÿºñ6—ÇQÚ±\0>ÄïX∞¥(döFÖe˘˜ËsÈë^go®Ge\'ìÁ∞ñt\'ûI˛x5oT’Ï¥NÏú#uOΩq:2Ωçd’çk°k\n%Õ§ü<†4HH·GL„Û©ø·6a¢GaskÁL›*6‹åÁü÷πhD\"‰yÄb7ÔW†¥”‰ùöÍwW(p„⁄∑T£k3.gs†:¥∑Ôﬁ[EoV)eÁi=´≤”..÷\0Û_¥¡\n≤üôqúÅÎèJÚ˝RÚ,¨“–∫Â0Íƒù‹ı≈fK™^•ÃWâÁ\rä?,„⁄•—æ≈¶ÂπÍ⁄‡∞Û‚æπìgó√gå‰ﬂ9ÈShVWZÑo4ÇK	$,±))$£<Ù„…xn⁄ÔU‘b‘uhÀN!â∏Un9>¸◊®[«,v»ì2C…ÌJÂ~cz+xç•™≈eh\0cÄ>Ç£”lﬁ’‰ù¶íSπ›Ü	?·åTÛ ± .¡¯ü8≈UãQI’⁄Dc´∏ ú÷—nR3o@÷5´]Mk€ÇL`Ä6ÛíN+ëΩÒfìÆ⁄…§Û GoŒ„”ﬂü¬∑5M)u+Id÷wXπX!cÛ`ı˙û8™:OÑR“Í=Hn·É≈/ cc‹◊lybÆ∑2iΩŒkX¯u:≈»ÛdΩîè.4ô˛Î◊$˚W·ﬂÍW7øiä—nB«aÁ©Úˇ\0ü?Ö}\0\\œÁKœŒ¿g∞πﬂ	Ë?ÿ⁄ù˙˘˛dj™∞Æ‹a	-¸…Ö)OôkπQ–‰-|3õa,S∫ƒ·⁄!Û9/É∆;èO\\’Ô\r¯NÊ 8„ºΩá˚5PŒ»P`Ô”‰◊}>ãß›KÊœl≤>râ»Ô≈s∫Ì¶©-ÙBﬁ!=•©-\"nÂqúı\0ˆˆ©Vñàgó\\¯]ƒÛ⁄O$∞[bí¨{≤Îå˚÷®“n4∂ñ— [ΩÃiè}ÿ`wg∞ÁÒ´\Z≠ÒœâRtΩF/ﬁ*?´pWﬂ ◊m˝≠•Î~π{H‘oC*¿îg¡£îy¨-leK·à,Ôu˘§kh[qgTÀ0¿$‹˝+?Z“m¨Ì⁄ÁÌﬁlWäƒóè—TvÆÉQÒ&õ;iOw#GÜi≥¿Ækó◊ºF∫àR°$ÇR»èøÌèAﬂ?ZRù˜@ìg;˚[•œóæ7ÂêH	–~5>ã·˘u=@\"«Ê@ªådˇ\0*lVÄL∞ÂFNG„^ã·˘mÙ;\'kÜåÌ]‰ À}JÊîöÿ’-\'∆˛ÉBí«Ï®@í3Ê–∞ÙÆnv«±Æ√‚VΩˆ≠R⁄“$eXc‹€∆[ˇ\0¨+ãéYÇ«“◊∫Ç=À[?3\n’”⁄∫ÜòGl=Öa)=ÕXäUç‘ëê\"°°Û\\Ù}NÀM“Ùƒåﬁ°y|a.GO√öÊ\Zıúú>ÒXÔt≈>)Kí∏™—≠H5\"ò,äÃ7…cÌ-r¬0†Æ‚¡@Ëjù¥l»˝à∆kwN¥HÁäB‡!|ü •ªÜ[È∑D\\)ÌQ¨Ôœ\0W~n¥ÎKDGï$dO·\\d˚^f6·Ã Ã:‘©]¬„èÚj‚L@¬åUH£…´h1ö“)n≈ÕrƒA‹ÚM_ÖU0I…¨Ùó∞´Q±&©¥ˆöqO∑ê*Ï.“\ZÃ∑å±œj÷ÑTJ÷$òp)i»•¨DQE\0QE\0QE\0QE\0QE\0QE\0^È7.jrBåìÅTÆn@ËzUGq¢ö8ÜbÃH«N*c~F’bI«Z≠)r8>ï&ü¥õåáp?p:©€p{ö1…#3)\0wäd˜\"5t$áÔcä∞å»¿¨˝F6¡;»åú∞Î45π\ZﬁÀ$IJ¨Oúö–ä6ÚBIÉÄ3É÷∞¨>—ƒÜ›¿Bﬂ2ï…>òÆâ7l˛ˆ9™{=ÖD∑1ò˜íTg7-#\"∏√(#–äZG%ƒq«º∞È¿ìÙ®°U∏∑»g√Ho~’3¿å†(⁄GBJŒøi6-î“\\À»bp#_ÔSäÏÁi˙õ!má ÚvœΩC§ËﬂbÛlyH∆@©‚Üﬁ¬\"\0êrÏy,}MÍêõ]œ*i«Á\0”r≤ﬁGv\n»∫åm≠Ar…dRÕ\"íƒtV∑÷Æõÿë[y*F8ÍNk.Âfhû7Ÿã±p…⁄=~¶™ùbµÁàÌﬁS?÷*Ûﬂû¬±nıin%-n≤òså∑\'‘ËÙqÊõå√\næ«R>gı´Ê?Ï¯üÕU¿bÚ~îÂ≤\Ze»bä;VñF^~m≠”•gAÆƒÑìÃÿN‚HaÓ\r[æ∏µ˘ ñ2\"Ñ»œ~’ãˆ8n•ûﬁ€Ê\n74®º˝\rr˚6—iö˜ó¡‚IñPÌ ›3€Î\\÷ß5Ã‰Ö63\"é™Iq%¥M˘\núMW[Èúáug˘—õh<qIFœﬁ.˙h?OéXu4∫ÿ˚clÇÎÄÿÔÔ]îW…%ºs˝¢&ñNHc–ÁÙÈ\\ù÷´,v„Ã(w«¥˜∆==++MVπî0î\rŸŒÔŒâ≈=bG©ÏëﬂC4$Æ089=r≥j÷ñQ_•≈∑(≈›‘‰3vZÁY⁄9±‹í\"çú.}H¨Ø	‚çWœ2	NÓx…˙V∞g©\r\Z˙œü/ô>	ép\0?Œü?äm„Ωñ…”`∆‘êû~ïÖÏÜ◊ŒïBI!P®¡ÔúUK]˜T\'Pî®BŸÀúfπ›∂‰∆ùéÅ≠Óµ#!¥Ye8À2ëÚ‘Wóó≥Gin•Tq\'%öç[õD67Ôg ±ê·~†˙äÎ[I≥≤“#À!ªòá{åÄ◊“™Rva+¢ˇ\0ÜÙ©!∑€yF@6D7ûi⁄@˚\ZÄCæyn	„ q^xæ1˛Ã’\"õÕíc	 Ö<:‡éøZüAÒD◊W•πkùŒCÙ\\üZÈã‰ãM—◊ÍûπæÑÓIAπï3∏’<w•]†µí2ªπv__jÌ!-cm∫úª;\0:j ‘|G£€‹¨≥\\XNOS˛q©ÓÍ¥#ïﬂCÜÒ&õshÚ\\$IÛê\0pAÙÊ∑ë›y†ŒXFÕ∆xØ[◊ºo°_EqÂ;c ∆H˚ﬁ¿z◊îjí‹O ôïÑ.«fÔ≠ú$¥‹®©- ˛ ºÛl≠åsBÒÌ1·ÉÎÛg©˜¨VäAhn	OÀúÛ˘UiÂÄñ>û‘ŸÂB¶J„Ø≠Kùıd∆–ﬂá\\û=Ï±‹EpdR¶9c˘°°kH\n¬≥>‡<˙ö≠Û}Ñ®?5t¢”oÑ¶ú€¨ÃÿŸ(nS‘b¥ärãlôZ,Ê÷5q◊êy„•6Í‹[L—	«˜óêj}ﬁ]öPKzöm≠îó[pP‡o8≈Eﬁ√(Ö8<„´¶jÿó¬â∆°^KO≥á›\"B8\rö≠#,íùÑ®˙÷U\"¶¨ V:ªkÀF±¥äGéF †`}+\Zt6◊\rƒ—∫¨`ÉËj;[Àù:tû$FéßRj7”Íwì^‹ù˜∂È‘öQ•Nú}Õ˙äÓ˛Eà„I^=Ω[Üˇ\0\ZıÕœOÊùº<Œ°éW,:jÒÌ>Ê{Y“{|oCêd¬ªç7«WKtìÕow∏*Fèßc^6mBΩXÆOá©I§söÙ…r˜Ì[ƒ]º†x=zcÆ+\r‰ä‡ì4~[}:~\"ΩrÔ‚Gáı+Vµ÷4± #êT0˙É‘WójíXK®L⁄dNñdÂQŒJ˛5æ_à´%ÏÍSq∑‹7}ÓgXd©£∫”UA4£tRe˚T´\"π˘‚‰Ò^≠…±K≥öÚF·ô’I⁄sÏ}+“æ\ZŸ-·∫ÚbI#,Püôy¡Û˛UÊ∂oÆ%í‚\"PÌhŒ{Í+kBΩ‘º;2k:u“oRUì<ü™˜Ö[¥—Q=NÍŒ€NiaùŸ€¬@ö!è7v3«„˙W	„?\r\\[œesˆ®µ(3Êπ…ç¡‡è¬ùƒK≠<òÔtËÊWV‹cîÄ¡á˜yœ•qöûµs´]ÔôàD‚(≥ïçs¿œNçNe}∫ö6¨[∏’‰k?±Õ%êÒ\"O±=˛µΩÏ “Bå0Ï¿÷cF3Wt“™Ó†qö›“åS≤3mΩÀ\"Ig}Ö@#9>ï~—Û`g pÙˆ≈fÿ∞Iel‰@<◊Fﬁ&7∂≤o∂ä)F’C_(ÓsXŒ/d8•-ŸËﬁ”F°ß]Y^à⁄ÈP¥D◊5èi·ªÌ.õƒä`V\0[ÀÅüp$í=œLU\n¯õOäŸ∂b} íE.Ÿ„Ø◊®k7Àwh∑r]ÿºÌ$M#¿ì¡˙„≠F5)Õ /‘sjQÂ\rZ⁄hØ¶˝¶{{sÑ.wlè∞œ„UÂ‘#ûB©\"6ÓKäÖ5)\"Ö¢é‡¢KÀ©bG„P⁄∞UíB°êı_Æ©˚⁄»≈+#R;ññ∆KvÜ\'ﬁ\0ÀÛqËjç‰6ˇ\0eÿ™ﬁp‰C[ﬁv®ãPŒY±ˆyõ†˙‘*∂Ç«[ù-ù<†>]ûΩ¡˜äÂM*‹ã‘jÁ=m2≤ÂìÊûı=≤¡µ§ôæa–U[Âq∑Ô+B .%H&êDÃ¿?t}k±«AÓV˚II∑ß4Èn—ÆRh‚ë’W¶jÌÓî4Î˘Ì¶ñ9L]\Z&‹≠¯÷`EÛ0Ÿ\0÷ëH[E»ö]Ï2Õí{sW≠ı7í†ör°‚ŸÎê9≤ö\r£<	∆H>Ù8&+≥Z ˇ\0Ï¿ÔVëîÊ7\'ß˚\'‘S‚∏)—Xc1ÀïU\';\\ÉÍ+(ª»	ﬂŒsV#ïBdìì◊ä\\ùÜ§Oˆ´âmdY.õ<eI$)ÒÎ\ZíC$lê£†FRr\néÇ´yã+3¥cï¿è∆ô¿«8´∞\\ñ›∂÷I=©ZÃ¶v>·ûµ6ÿƒ;ï≤Áﬂ•\"dÆ›¿\03ı®JM›	åH2q!8˛U$%PÖ»°Ÿú‰ÁwsÎK\Zè=©Ÿ∏nÌ]éó&„†∑äkùåN¬ﬂ{#ﬂ£ßÈwSÍ+Q<ªIUÌÎÉUÓm˛√~ÒFŸUn®∆kz”≈óíò‚çdà‘„8¡Ô¯Rï˙\0ﬂÈˇ\0Ÿ÷˚\'àn(‡ÉÍkóEpävﬂwéµ‘¯ãVæ÷≠Ì•π∑W%>IáAÍ8„˙÷-î∆›°ô…ª8‰zÒWI6µ—âÈ±X§Ç4a œ@†Ú*,OÆkNÓ–ã©eÅ¸Ë·dU€ìÙÌP\\[pVEu Ø˘ÎW≥Ö\\û8ßÌ!söwñO$S¬ÂU1Éúñ¶\"Ì∆jd”Baàú‚§‰Gˇ\0™®ê⁄@§\0úc≠Jé¸\Zí61∏mäx¿»™B ∆‚3÷§XŒ8ÎSyy˘∏…Êúb\nﬂ/\"ùÄ§…Ü9® ’•µCá*ßi…pj	bƒÄ\0>î(ëé4◊PEXí>9¢I∆8©±CŸ©\Z.8©\"≠,\\u…• ¨äA¿ åñ©©÷Ç*eÄé@¢ƒ‹§oÈN)œ≠\\6Ÿ;óØ~*T¥i⁄†zv *†vÁŸ™ìä—˚Qí23⁄õ-øqœ“á\\…Y8ú—°pß∏äY61Ì\0.8•ä-›FÚ©Â»aàÓ¡ÌÎZ÷ì=ª\rÎÌåQ≈mìúUƒ∂a€ÈZE\0÷çò,çìÿs˙UòQ@Œ0j¿ÉtJN8„÷ú∞äªF#Àd˜´V÷≤\\Ã∞ƒõùézör€:\Z≥¨¨2‰v©kM\0Ë|j†]3lIw™ÇÕÜP98ÆüPûU∑ñ+{¨H´∏ñ]≈Å‡`ˆÊπàtπ$	5£â¢fúﬁF}«ı≠6ûÓ—íXXyÖY’1Ç=GB\r|ˆ&á¥´Ãô’NV[ï’¨¶˜+y$…GÁ«jé[R≥‡cûπæ\"Ä#ÕÜYÚB∞>ΩÍÉ¿œª8$˜Ωj7≤F{ô≈Y]ö/ów\\T÷Q‹∏öeSïÁ0∂+ë÷ßÜ—ºßï$√£ì?1¢∂öIc&s+HWÔƒÒÍj»â≠ŒÎƒï\0\"U#√±ß6ÌŒR>ß*6≥ökwvìv;IÁ‹–ïíâyp”íŒÄ(«~ıÜˆ”2≥c#5’1ª1œZäÊÕU@<ê(îSú¡›ä€A+å€ÈN ;ÜBƒ) ÎåÁ˙’ˆ≥,Â[åd˜©∆û!Ç6ˇ\0xcï¨•ﬁ„R1/¨ªYèÕ–÷% î~«=˚◊EqÖF›…-˘V=¬¶OÃ1˙“q±iôRôΩE∏w´ç#Èû3ﬁ™íC˙T?ïñ§å˘çól◊µœ\0ı†p¿Å–‘ÇõqÁµF……¡ÕYÚõ$¡Á¶j&…\'éGSäiåa;áÚß‹O?Ö\"´ iË	nF\rX\r⁄H$ûî‡_√Û˜H˝)õ77¯\Z•®¥c»„ –ncB\0:ÉäUÛúû‘¿ú∑^Ω)70çïx\råÒQd]ŸŒ\rXà+º‡ë¡œÖ†=Ü¢\09ŒiË\0`Hœ=)Ê<ªaÅ«q–”Ah‰Ωs‘äÆNÒ¨Ú)8‰¯ÎHé\nîn›)°Z7ÍT„ ÉÎJâ”±˛uBeÅ¬\r£©≠£8è#y‡P©…¸je!h‚•ﬁ⁄^[7∞πÉŒ⁄P∑>î\\Emøn;yc⁄£íy&Ü4qùù	=i Óº\02F3äò∆[±ë∆¨_Â\'wµ_â‰AÉáBÀto•6ÑRÄD#(É\'©lkQûﬁxUÂpòF@Ÿ‰úer=;R©RIÏ\\#s2EI.då(\\û)ˆˆ\n&_¥∞∞ ?l„ä>DŸ;≥Œ?Zûkâ§Ä!∆_\0d˝jî]âΩôü5ëF\rëñ„\0‘-j´Û>Kö◊Å„1òÓ˘ÑÂI≈VUçgq/ŒΩ≥JO†å√\Z0iwpTJ–hßπí…U7Ãq\Z`u¡„=èß·I´B0Ír†‚≠C©˝í»∆¿ºçí•á‹=ÒËsY§˙u:?xqm˛÷∑´æÎp÷@‡„ÛØ@¥‘Ï¥k0≥Œdvw`ë^O·ÕRm>ÌÓYL*ñxù∞[–˝rsä5+œµ4—[NV=¡·F9¬∑ﬁ\\ˆ«&π›){K≥~uÀ°È\ZÙrÍ%„1lñ1)ı«8Ïs¸´ë◊¸otõ!Wîé23å‰gø5ÀC®Md%IJüÌ|¿ê>Ÿ™1Ìù$í∞8çπ…≠‘z≤7#k…YŸ‘±∑„wıÆÉM’Ê” ›GG6÷$Ó\Z©ás©2yQ,,HUâPíF:Á•ni˛\r‘•‘EΩ‹3§cÂ$/?üJß TQ-÷≠&©Ω≈ƒ´íe\\óbz`vßè√jÛOso∏#∂7JwHønzq]~õ•5ßùß√gÊB´±⁄D9Ë@¸kß∑±ÇUé4MÉ\"Ì£⁄5†YJhﬂŸ˙I>V%X6∞d¡$éÉË;÷ØÖ≠ÔVi•ôîÁáΩÄı&∫íä[$üj’!é\0Ù©u.EVeQ@Q@Q@U\rGP∂µÖÑ≤Ì9\0ÄyÊöMª!7d]$cØjÊºQoæö/+1gysœ#∑Ωg\'àÃ-±√NÉp=s”>’^Y-áó>´#ñﬁÇÚ\0=8ÆòSpw2îπ¥8ªª	I√)$Ü”€µW∑¥r,SÏ›Ú±=≥^ó´6ço£I5≤ ,£aÔÛú~µ≈ÈÏ-/Z„\na*ÃCØè·∑•tF\\ƒ=40Ôl¶ÅâpBpﬁ∏Æ~x–ô7n8<uØA÷nmØÁ∑O$CπeÀÄTì‹˙\n‚ØìÀym∞§£º}{R™Æá©Œ]≤êés“£é@ú1ÔWd∂EòŸ-◊⁄íÈbb\0ƒ^kç≥tF‡Qµπ#ö i^AÇ«\'åv4ä•ó$pj’≥d!√°}j,dôê2ña…=Í˝≠Í≈ß‹+mSﬂ⁄†≥ôeΩgΩO20Â\rÇxı¶Kq∏0Û»œqCH.XöfÚ·êl‹¿ê=9Ù§GÉºáÃçµLHCÆP¿Åì“≠¨	L±3FøxÌ‡gﬁ•†˚QyDQ∂‡u\'≠ã\'í’\"€X~bÎ¸ „©Ô¿ÌUÙ-\nMmf{rÜx»¬1Í8È˘÷˝Æói\ZM	ÖPOÖp‰ÓéA‘nı2≤Fäˆ/hÒ]jTÒÍJÕ&T¬ƒ†nså£ﬁ∂Ô<UGæ˘‰ékI$Q0`˛Á◊˙f∞5ã%∞Ç€ÏL€‡;X£d‰ë¯◊vˆÉÕurÕ0!baùúéA¸Îô√öWŒí/Í:¶£LÄY[Œ2ÃIÍ‹˙‡~ïÈZ¥Õs£ü±≈m-‡P0≤|™3úÉÎÅ^rÔd∑ë’Œ€õ\0ÖÁÛÎZ∫Vßqi©G<∑\r∑fNrF\ri»◊¬£÷Ïuÿ.ºGke©‹+j≤Cl∆Ó3ñ$ı#WG¢Îpk)<∞∞ÿì4J;¸ΩIØìRèX_¥x£Bâ!õi∆rœN„éµR◊^÷Ïn‹È;+|≤∞Ü9Ô«Î]KX˘ôÿˆª¥Ωæ∫\\ C∑~‡Kéúzb´˘ó:wä!íÒ„^¿!më77Í	ÆsJ÷<a}ogm6¡õ\r,éd|c9a€9£ƒ^÷µ+_µj:ÚÀ$C˜0√≈\'πÎJ2KqÿÓ‰‘mRÚO5|ÈrUsÿU=c»a	mLY0l‰H™\\w◊\rÑÏ5õ{K’÷uSr#Ór[Â ”bπoËñZ5å±LÌq+∑»Yˆv$îE«tƒ◊C3≈7Zl∫√=ºÒIv‹#å~9ÎZ:_å¨t´i!≤”‰ûÏ∆V9H·[\'ê>áÙ™ó˙tAfêZƒÚ•∏ÌN7r˙Ù˝+>“¬ÕJ8÷ˆ+Q¥oõÓ‡û†Èö—¥ù∆ññ-⁄…¨jJèmßy»π`Op◊∂k©æç‚ªk¶Ω\Z5õ\\Jﬂ%≈„´»…!AÔZ>	ö∆‹\'P◊Pí•»¿êgÇ=´–¨LﬂŸË“‰09€∞ÆhVì®’¥*KM%◊<+≠K¨yWW0.ÀÂ€°¬„ûP_G\"Ì ¢á¸≠…Ë3€“ΩcSK{;·´Nƒ4iµTú‡û+œ/n°∏’·æ‘µΩÛÉeUTÚqÎ¡¸kiM6$›éƒö}ÖçÃcO∫{µx√»ƒÓÚâË§˙÷:Jƒc†ËZßä¥»º;&óàõÊFV°V3ÿÁë÷∏m…ÁΩiÃúFÆHûı4jƒÒÕ9`E¡v´: ˘Ò§ÿ¨KolÁ$1WbX≠◊ìñ™QO!1ûáÈ[vñqΩúä–ªNT:2ú¸Ωœ¯“.÷≤…\"§J1¿œp+˘áÕï≥üü°¨¯„xÿﬁØµ¿íBŒ~g#8Ï)6Tt:\'—†é⁄+ÇŒ¶BŸH%F3ìèZ≤cvÑAnÏñg¶Û◊ü◊öÀ”nÆVMÒ£JT‡+u<Övél‡¥CÚF´É¥c\"≤ª&G\'\0¥ùñ&/\Zún˜®…5µ®jê<2§0∆å~!Xë)V¡Í*””Q§ö.D3ä—Å:TbÌV„ì•Ã9\rHú\0\0´q∞=Î.9≠XY˚\n+4ï¡„5(9¨Ùì•]åÒú–—$îSÄR´Ü©∞¨:äB¿u4ö-Q@SäIÁ•\0>äc8ß@XZNÙßöa$0\0ˆ†Œ3sä√ôŒHÕ_ø∏1»±ó\nßìUZî∑Ô\0«Ozµ¢-lg<ÂN\r\\”.P›ÄÃA ‡éıïv;\0r‡˙’Eπhd¨CëÉCWC±ﬂÌßZkEº¯e«~ıë§‹\\Nûz≥À‡x;Ω*Ω˛∑u	RëÑ…ú˝j,≈ÀÆÉÆıÇGéÚ/\0∆y∆kFﬂ\\”gç\n›\"ñ‡+ú÷π‰‘-ıkÑé±å\0C3Õh…¢ÈW!?3£t™V{ÉFﬂü0+*`py÷ßohë˜pBÛè≠sÈ†X<≤√ì˘™x åÙ&õ7É‰ç2öâ¿Í]p\0Ôﬁü*ÓIø>Øohc>díq\ZÏzÈSZ[yÂ~góÊëáØ†ˆ√^.Ægâ≠?~±Â\"ìf7q◊ˇ\0ØVÏ<GÆ[≤O¶õŸ\"…ë—@¸±≈?g+±π™i◊w◊ëyl\"ç@9œ9˜¨Õf⁄‚ %yNF–ˇ\0›¸*H|[πBﬂZœf˘Œ‡õîä£´j÷◊\"1kxìnrc»9˛ÌÊçì@ëœ›\\\\*¨ÀpHí‹gÈL_]+°vWdm˛nﬂòÒ¿\'–UMNeyBåπI qèLVtñ‚ræ[Ü$ˇ\0´jiËÈ≠<Yuˆô0—ŒÛ7…ª§mÎ⁄∂\'‘£M!Zˇ\0dŒ2©wƒÚkÕÁçÌòÜ‹åßßL~4F∑ó“=¡ô”bÔﬁ‰åÒ–Uıéå^ˇ\0i^,1yíº(8n=+^yNèY[ﬁ`Lõé—œ™hûL€ ≠ptRÉíIÅÉı™—E2ÍN&bÓF¬«ë˘ö&íWÓÃ◊eoî Ú\\¸≈O ==ÎgI—e’m‚VCÇIfœJüN∂µãSˇ\0LQÜäÉå{b∑¥òÌ≠nüPâV(>m´ªÔa⁄πı4≥±ç{·6≤å∆dV.2O„“±†’√=¡ñ$Ü8◊z±l¬Ω]Z ÎjÀ0‡ëúz‚º[wy\'ì¶iÂôO%∂‡˝>Ç∑•ÀQËg+£KòlõÕ28⁄ßã®jÛ]D∞ Ã∂Ò1hêı”?Öjç„Et:äﬂ˜∆7lø÷±uãq-˘écg![»ˇ\0\nßE¡‹∏˚˚kÕR?µ ã’Òq–÷ı˛Ω∆,Ï”e¨K¿Ó3€ﬁóC›òH§\'œî©,°rˆ¨Î≠RãŒëK4Ä2ˆ=Ò⁄πmÀ}ãÿ±§ÿÎ:Ú˘vaå16<ÃÅ∑>ˇ\0Öni^[ùymÔoeû(¢2H≠¿$ÒäÓtÔ\rÿAg©Ú˜FOøSX~!ä+Uy„∆Ê0WI‰äÌÑRç¢µ2ªoSî◊<%mgoÁ c+ÀÂ R\nèÁÕv⁄∆ëºã¡¥±pTè~Á5…h6ﬁ#‘¢µñÌÃfVL„nzzÓı-*ÁL∞ÕÖÃŸ@J =˚örì©ÓÏ+rí¯çåvå∆Ê8ñ˜\0√sìÎ◊äÚy¥€MFo§iKÛ8‹Ù§‘/•Çµ^±ùÀ¸—ÃI=\r)‘Î˘0ÿEmnÿuçG#ÿ±©ïKCì±Iks*cuä(ƒÚ>^’fı-¥€ªEªÑ\\»≠óçén8ZË-¥Ë\"∂i\"\rm2eÉcó=±Yö¶üˆ[õiı\r“1∆Ùa»°5î!)]ÿïœ\'wè˜p∂0≠ÀÙÎ©·≈ÖS˜ˇ\0àˇ\0ı©ÓÏÛ«∫©‰©€…œcÎQ‹FƒÇWiÓ?≠MÓ ºkkibP¨≤/q–˙ä”≥øäM¥¯ƒç+ +co‡zÉ÷∞Á\nØÖ9µ%çÀŸ›«p™cgΩkì◊bdÆéÜÛHK(‡{ky⁄pªÂgü@;ÅÎU√ªÌñ%vRÕªÓ∑∑±ØE“5∏¸Q6óÖc!Iêá{ö‡µ€§Íœn≥Ü«L+»ßV≠.nHÓg.¶⁄Õ<ÎÖº<&qöI,]≠^Â1à€Ω÷µuÀ»ÓñŸ\"å£ƒõÔëönåXÓl§?4ÈÖ>ıÕV£ÑnçåŒ∆`€ÿ”Q≥√\Z±=¨ˆì5ºàC)«=Í\"ûZ∂‰9<Ü´åìWBiqˆ{®‰Í‰èZÏ¸s´Ë∫‹z=ˆìÜT∑‹¶1Ûô˝yÆg$ˆßÓ„ßõªI\rhKr… ‹kìœ<b¢^)¿qÈB±\' uV–Ì-–ÅÈK\0m«9SÄ¿0A©Ê=y˜®m°\Zjˆ√wiÈ¸d`êﬁ„∏Í*ù¢ÕÎ$\nFN÷ÁälR∞è ‰´6qè÷µ≠…≤”•uèï˛2:ÊπÁ7q∆ÌŸ4:}ÃR4ÊXÔòú\"≥üOj«í“1õ_!√!ÔÓ*uæñE1˘Y`r¨ £ÈZX⁄›ŸnëÃsπbØÿë⁄µsîobﬁ¶5µ¥˜±EI!Ë™2*ÿãO{â#H √Ä7.y9ÔY–<∂≤éVITï? ß/{yzfﬂ˚Ê˛Óä“Wk@≤-=å∂í≤<lÂpEjÆùÂË.Î\n	Cå±l1œb=*+r‚ ⁄Ê+ôQ‹¶6Láp?Ïû∆µo-YÌe∑ã`GQÉÔü•rπIh–Ïñ∆~ï¶⁄\\ƒ‚Y+“¿¿¨;Á–”u\nÂXµºNÍ	‹1–éı∏ˆÎj-mleÑ…6ÚySû3ı®oo/ÙÈÓ,Ón’⁄U;Ü·ﬂ”ì≠.ot\ZIjqw%fîùãé°F4Ëï%S∂¬yÁΩ[ûÀÀeñ<1yÊüÖƒ±nH◊>Ê∫eR<¶-ê⁄¥÷S•ƒn—<m√!¡©üTCsÊƒí‹JÈ_®ˇ\0Î—$i\r£,ÉÁ<dzé’ü.“Ä/R0ETìÊ)2[)#B¢T `Áj√Gjmsª˜Å3◊6z{‘Kò≥\'œ∞ö®^6p†Ä0¿˚˙V≠	±Üy®w<ΩﬁñhëSrJlcöt—»0í¶÷Qåc£å@l‚®C\Z6ì”∑÷è)≤7`Z≤gP\Z5\\!∆A≠=6-RÈ!µôw˘`ë#‹{ÄO¢ˆÆcÄ¸‚ßäªy\\ˆ≠õ›«,/k∫H%\\FÁÊAÙ\"≥£_≥ VU?/LÙFj[\n¬,EXÂ	s”˛îË‚S!ÛåF1ä–öÌÓíg√nPÍT‰ı≠].	ò;=ä‹§™I…Áﬂ÷´ô%pµÃ´M&IíR®€ÑfH‘up4—o¬T+m…<ÛZìil˚nZ)Tì≥;qÎÔÈUV`T™ê#qª±Ó*î¨\r4+ì¡\nô#-Ì’OTÒX\\L≠$HJ ÂèJ∫V”ÑQae^\\vaÌZ_ôhIó!íÊfë∞Ku•˚â#R¡wÚ3»¸j⁄¿{˘8zE÷Âd∏â&Qå#Øcè◊öß∂◊R≥ãÕ:EÖ‡äAÿ£#è_jÇiC»fŸ≤FlÇpk√1XûY#vOó˜°ySûûïõ i.‰`çª#™Ú?\n\"ùƒÏi[â3\"GT‡\"êπ£÷≠€iO¶Mv\'ç\n.YKdÁÈ]\"È´§h∂w≥ÿ<¬ﬁllÀâ˙„áq%ùÌ‡/nê¬+Â¶;{÷“äµ…R1cU]¡á∏4õµ~a‘˙÷§˙lB/6	âüï∆\rW[séG^iY2ôSÀV…#üZ?üå„∑†∂ÿlÅ◊µL∂ô:Sµâ3ílu5Ωc¢A\'õÁëà,ã˜õ€5µºQMì\r—á„J˙÷‰⁄PµÅg∑i¨ƒà…`wsﬂ¥äIŸœ=µ¢<¶6mß˝^·”ÎP∆5£5∂◊ zˆ°b8€äVõ‰ìêWäè…⁄yÆä+Ehô‰®È∑Æiç§¥ìF\0	∂7±Èı°Ç9∂Ñ\"†és–÷‰ˆF9N8=GJ\"“ﬁe&4,Gj,UÃUáiŒ*dá$dV´i¿\"6H»?Ö:+\\vÊùê6PKsªÿ’Ñ∂ J“é◊=™u≥„ß4Xì+…=uÎJ∂ÿ å÷»≥¡Œ>ï(µ›:R∞#%b ê xËiLy*†y=ÒÈ[Ç€”•—¶ÖπŒ-≤eŒ9aÄO•4Y*∂Bì“∫∞–S~¿ƒÚ8£AòÈmÅ¬’Ë-wöæ∂e?á5f+qÈ@”Â8,VyÌÕj¡hÆqª‘±√É”öRéÀÂÈS-ßlVúpÁT∆ﬂ\0R\råçnp6®[‘{‚öUYºÕ√!πNÅΩÍC1‡Rà.q“±tcÕÃRïëF¨NPdˆÌPàÇCﬁØ˘gı¶y$u´ÂHÜPXMY™#ﬁd=1⁄ßU«ÎRó#ñ§ÆÄŒ∫à∏/\Z™.ÓBÒŒ:’iÌ~FA8Â<\Zæ-ôÂr‹ÄyÁ•Mà9bqÅÚ˚“Qê∂8CïÕVí¡ä8#†Õtøf∑5RÚ€tLTqÌV÷Äpó6R…)Q√`„\'ı•éDkuâêÓèÇ˘Í=(÷µ[àeé(ï!⁄§ı9Ì˙W1qu©$Rﬂó∫Äép\\s»ˆ»\"∏g[íVëJ7Zµ5∂ÜÂ\r√I\rìï#Æ8¸´ìﬂ$•àÉ1€Å…≠;õÙøc4¨Ã8=ø˙’£e5µÕå7\n¿\\+Øªék:’ÏÆë§c°À≤m˚ﬂtÙÁ°£h+–9ˆ≠X¨ ∏í(‰&2«óˆ¶Zÿ$ÚàÃÆ–o*Æ©∆qR™¢úL•P„øΩiOc\ZŸ‚ôı;z„ß#µYª”•yåÑ&«ÿÀ1 ë¡ p:èZãL”Ø%∏x°èwò•9Œz˛\nR®≠{Öä–Hb≥ïïÛπJq€ëú˚Ur\0í#úWA™È∑Wpò†â-‡UR±gë˝ÓïÅ*0Up@√\0Z∫rRWà•`{S…$ÇsñÔäâ¡€Ç1É“ßB_ûï®Ì¶£∆}zR¨G+◊• ˘ªÚZùN@™÷âŸaä\0„äë8˘ÄÈ”Ω3Ë)˘+Äq@\0¡RºÊÄ9 P„ß>¥‡†™ÅÄs…ı¶ê‡u¡‡\ZòÆA#öQºB±≥äƒ™ÁÄN2AMŸ\rÉèZvL–Ìr°√‹w¶®*¿Së≤3œ„K!›¥‡\ZQ»o^:’®e\\±;≥≈@0»Cèõv´PH¯\0Å∞˜ßa4Mè7=s‘üzïa1∏aÛ•\"0G\0Î»ı´HÄ≈#¬1¿#†4ÔaXé8ñg‹¸\02G≠#´]¿ÌË1WÖ≥\"¬≤X\n±{gº;Cn$ÒÎèzœô^¡gπó;≥ÌuèhU€V6c4|Ì!O®=EÈ*D%⁄v‹qöï#7rHÁÑ-èSÈU-UÅ\\•<Ì+Ô\0»∆}Wë]Ü˝ÿ\'∂*¸÷¨¨û8…«CO∂”ÂΩ∏éﬁi†¿$Oı¶¢≠qjÃçØ\Z∞…»ÎèJDçÆ¶X∏HPq˜´°æ”c¥∫˚5¨Îq™‚∏ ˙U)Ì\\CˆQá`#¯M$ìZƒ÷∂ñÇÃ}≤WÜh‹Ór26„ÅèZ∑¢YºÀhtπ.ß.‚…à¿…«ﬁ9ËMQ∞∞[€Â&R¨€g@I„öıO[/ˆx∑àGY#Àt˘¡∆	1\\U¶†ÏﬁÁM5usú≤D∫≈Õ¨˙òEEC∫8béò˙üZÍ4œÈvÏ±X¿¡«∆Xcß5ªkkˆUŸÊI&r2q≈YU⁄†dúz”Mµ®˝\nüŸñm\rm$ÒV\"ÖaP®8Œy9©1äZ\0i\\êrxÙÔKKI@5K§≤∞y‰»@@$c\'™v˙∫-Í⁄ÃÎ∑ d\'Ôì”Ö3R∏äÔOΩÑ∫áÄ‰ÉŒqœÚÆ\rZ0/q:~Vï8Ë?\ZÈ•IIYò N˜G™£¨àH*FAßVÜ‚Ω¶[≤ åqÎ¯Ê∑k	«ñV5ã∫∏QE#\n(¢Ä\n(¨Õ[VM6$*éŒny«zi6ÏÑ⁄[ñÆÔa≥Ö•ïÄ\0tMqZ•ƒö¨·ã¿µXæˇ\0â›„îò†Aí§t\0uÆ^[¿åDm»<\ZÏ•MG‘∆r∏≤πÜlÉ”äß4œ \nÃHQ¿4ÈÓLøx‰˙‚´7›Îs07èª¬Ÿe`pπË}j∑€ßÑF™ﬂ\"B7#$bÜëy›¯U;áA¢√D733ú±…Í+>·â»;…œ#8™ænVD€∏»0§ïîÂ–¥ª“©f«Ø•F”+H6úsÈS\\!Ñ∫?8#=+9õÊ‡g⁄π§kÙoìëÇ\0ÍîL#ØCëU¬Lô0;äñ V,AÕ@3_LíY…ëJ˜RÃªp‹ÇONqY≥1˚AVê\0Ω©a∏Úcp0qé{{èzl)àö}Òí[iS◊ÎämË$µ#IT‹F°»Un∏Ì[˜\r\r∫¬”Ôâõv’\'9«¨¯Ù[ñvï»…wHıµe·€ªâƒ™á1ÍYIé’ÑÊñÊâ3k¬©˝ïoq~möB√ 1∏‡g}kr◊}ÏIŸZE.˜R2Îü•[µ÷ö!æ®™Ô93B7n`8‡gµ@⁄§≥á∑ñ›4Ë\ZB|ÂùÜ{éã≈rπ7π™Vcµù6”\'ãLìŒæÛ[!æÊ“;@:WòÍ∫|ñ˜∑Qº¡∞#å‰ÅÎ^ãücq?ô‹]≥9.”HqÅ∆v’çCG“†äQ\r§kt©∏t∑éOÁS\Z÷ïäÂπ„÷ÎuyyÔíW`™à>Ò\'¶+≥±6¥∂∑Œw\0\ZE-≥éµ≠¢È[}ñˆ“!ÛAyz≤Ú w≠j⁄ˇ\0j_^œ©´l®îe‰›Å¿ÙWG;ûë\"IGsb/@ÎZ∂çlì›íegôã˘h8n;pMoi∫¶ë5ƒ\në§p>◊å®ƒÖéw\nÚ®ûÊ ˝ôÅ2Áf3ï9„‚µå∑∂⁄ûÀhUãÕÂÅªê¸?•UJì≤Q‹J*˙û•k§Eg5Ïˆ≥I\Z]m⁄är™qåÅ\\˛µØEi§ã8ÆjvÓ™wtŒ=¡©·‘“·[†mÿÏpXÌ……>˘Æ_Q∂“€ŒºiUÊm¨ìÀs¯c>µœ*ÆOﬁ-A⁄Gâ58\0çyèŒôSÂ¿;œ?Ø?Ögæ§⁄Ì7ã•Yî`“ñ\'ö!{`3ïô‘˝Ì†ÚqèZÈt_»⁄%ºëŒ–‹J≈ê:Ç\nÁ9#ÚÆïÆƒª#;-GVf˚%ªGm¥î\0∑◊∞´÷æ\ZMÏj¨≠®Ï6Åì”9Æ∆ÛL‘°÷mÌ4Ÿ ∂∑1ÜdE88<Ä;z÷î:M€j®gä1e Ä‰·ø≠oŸjfÂw°«€€C1∫’¥µŸue\"ïŒwFÊx◊•ZHçbí∆ñÀπBé›kçÚ˛ƒ∑∑˙l~PºhÁ˚\\°á?≠-ˇ\0äc•‚[][àÌf)néô˙t¢4€`ŸÕ¯á≈tó¢5ò\\;Ñ2|©1üsöÁ^$”‰é{âÖƒŒ˘kêGsÿäÈu∑º‘[P—Ï≥f!+≈¬ÏLw<ÚyÆJ÷ËC4ì›BóL¿Ñêzúz—8$Ù*%À%õ[’`¥Ç0∑%m£íI®5ª94çJK7í\'e\0˛Â≤†G5ù€ŸÃÔm|pWµNÒ$ˆ_Os∂}‡$L	i3‘Áß÷ÖrÆB{‰””<g•AaÅ∆qÿ’∆	¥ <\'†ßbK6Úmu›ùΩ=+®öÚ“’Vrí∆Ñ2»§Çèz„’ŒqZ6∞õò‹!&UQ‹˛X£E5‚2mÑ8aÖﬂŒ9°ÁWQJ……sÿ˝=™ú0úÌv∆{V≈ùàêmÚÿ∫∂“˘˘A=*ÆêÏÆ‰ä&ù¶n	^:\ZË46üPΩ/0WPπ<p;~uüo£Kv$ç≠X∞R°„pOæ\ZÈtÕ∫}Ñqƒ§Ä3ñrk6K(jZz«3Lb	 ®‰q‹’ªXm„ç„òJœÀÈZ∫ã=›¡Ç6Taÿé7cßÂY◊J†§>@;C9„ sä.T\n ¯©ñ\\U\"ví3öC.8Õ(´õÛ#MgœCVcîıéí‡ÚjÃSe∏≠-°õ∞>O5eÆBåf≤‡\"u®⁄Ëì÷¢)‹RIlj˝ß&¨«0ÕbC.NsSµ∆3UkìcLÃ¯Ö>}ÎÌX5r÷pGÃp)4;+\Zo-*Iëú÷c‹‰ûxËÓ9ßÀ°<®—w	œ>ïIg√„<T>{’Võk’E5ö]—ı®cπ!±ªÛ™´>T‚™¥¯íìéáœ¬Öè`iŒCÃÄz\n»∑ï‰`\"ÂΩ})\\ºzÑ\"CæF¡eÙ®±+ÎÃè+ú\0v®˙Uu\rõT˝ﬁ2=jˆØÁ]N|òã∆\0è^ÊππÉ´Ul/SÔZ%ti#nuäb8ÿ3c∞Æ~‡ò‰e\'êqS«®HòVnù*µﬂÃ≈ÅŒy°i∏€7<-™y7Me#|íÚûÕˇ\0◊ÆóR≤K´gWÃ« MykL—∏e%YNAµ–[krÍ0F.$raÏ§[÷≤wNËñØ©ˆ5‘≈§ç€œ#≠%•≈¸ âºœò@$`{Vµ∆∑sÂ˘;À|b@0Oˇ\0^≥⁄Ì›⁄0òìê_8$ﬁï˚†‹éÀ]∏”gπvÇ9à¿„òÆÇ”V_]à·2%§gêW\r!«~€}´ô{.ï úıæ≥&ái\rí¬Õ,áÃ1 É◊4‚”z$o‹Mme£!sµx8ÈXpjM®ä$E∑y6˘[F‡1‘ü≠Z∫π∑óJKáƒeèNK}+çí·I%ôÉÃÏJíqÌä|÷DÿÌ<C}oû—\rÖﬂÂçÿ‰◊ú›È0 3√92dÚ8Z‘≥∏:ÇIùXÅÄH<~5ô{{%à0FâûFvr~µ*n÷¨bœ-ƒ8Fê7¶\rU2Á)¥ø˜ôsV/íS\ZÕ$eDú´˜æï[L∂˚N°GÓ˘èOz•k\r2¬ŒìÕì⁄íäÓªIØ„S‹ﬁI®‹ºËRy1èÒ≠G[±Kkm&CÉ ›«SX^¥Ú÷±Õ\ZJ„ÎëC—h=Á£h!-Ó-≠lZ|Ü,K„Ê\\gë€≠è∞;=‹vﬁPf=PgûC’Áﬁæ§ìÕ{ˆ8—8‹rˆÆÇ”ƒ◊zVß-∏Äﬁ€ñ¬òõHûz÷^◊uar\rø≥é’ƒìL^u}§(¿^xÁΩ2{¥é96ŒÜ&\\7Ãr=fxáƒI}.-°p[<˚’Yû÷¨6O∂6@Ÿêc\'“£óô\\iX◊“ı9æ›pBX…˚±ﬂ?Oz±‚ù/XºûYVÿ&’˘]	„ﬂÎ≈k]Îœöty.·ÚˆÕt7ﬁ\'µ˚lö{^¡»á˝°∆I$WV™w– wf+<6V+s‚5{íÍ¡√)Ï„ö«ÉM∂÷µtªçCF•∑ƒ‹P::¨≥˜ào#ù.qiªVw8g#ú„“∫ãüË˛1Z=¨∑2\0Xª\07∑÷µ´V˜ä`£mKk•Kojb∑fG]Ã¿d≤f∞.Ù¯gºR≤˘)ø=0ﬂØjÍ¥˚≠y.£øΩµ∑Hn’ãwŒ†ÙqÔRÍvvz‹Ï|ï^	»>øJ‚ãÑocFàÙJ=GT[WfO!Ebsﬂ∑µ≠0jVªÇ˝è•`Èû\Zµá ñﬁl…˘Å√:÷£¯í⁄$ëÄi\n6“£∑π5¥g(…IŸ3œBmYÊi<ò¯çÿ>w¸È“j7¬∆IÆ%0AÀˇ\0º˘ÔR¶º≥Dó	oómππË£˙qYBÍK˜+4^pppøSåü∆≥©%\'ÓÓW©»Í∞•’–vVhâ˚¡ry¸Íˇ\0Üt˚hØ˛’{;%æ¿Àúë–cÛÆ˚˚8Ì ¥ôc·n˛¶π¯|+\rÊ¶\'ñw∂¥\\4`usÎäÈç4„td‰Ô©kUX¿;≥ÖŒ\\¬ˆ8Æ[Z÷l⁄#§—∞yJÛ∑–g°œ€ﬁ≈m®B÷ñØ*∆õe∫zúäÛ]o√ﬁÎÁúît‘C]*\rCô=Q	¶Ïœ*±iÊøSn	f8{÷Ê´¶jQi´®]⁄ºvè&√.‹úägÖ#é€UÇ[õwïdDÀ˝+–|M4∫∂â%≠›√ZY⁄FÃq Ì’SßZÒ+VPíHŸ;≥∆üwaïÏi±EO<e#Gﬁ0‰ùù≈HÅdAÂªi‹+©=w^÷.¢WÅ$10z˘aãﬂ=æµW^F’µñºf˘9çéÏ„é’ù†Koa›\\≥4ÑmåFrA#≠iCÆ[≈wˆ€dxgÑ‰n,Ärx<◊,£jéKqÙ±«˘çop€î£¶A*H\'ä0da˚¿w+gΩO¨‹i\\õØ)…óqrOR;VCF‡Ä:ˆ∑qÁèºKEÈı	nPáèØzÆÆ·∆Vù∏{v`HëO›•6Û$BSåg¶y®\\ë˜Q#!åe‹\0n9°°çTÇÍt¡©L£%XÅåÊñ”O∏‘ò≈;‰\'‹íWli7¢3 É»ÎJ∏ Sﬁ6F⁄√4™π÷…¶Æ=á®%\0T ¨Ä3éÊê∞ÌísöceZOQÙ˘XïFtÁ¯ó<÷˛•ù›ÃPZNÆJ©p_ÂÆEREÏFy´P<äsí£π¨ÍSª∫\ZE…!:lÒÀƒàO yˇ\0ıÉK—Œ≥Z„ÀYhÚxFû«•iYÿO≠G$cdè~`…⁄JèCÎQÀ§D∞1)FL©Ôı8˜®U£~Ynh†÷∆iÇ\0w©…\'åè_¿÷¨6ki$ëœΩîçä›˘wÎYV≠3\\¨ÖDÕùŸ{÷œŸ≠o, X$ªäÔsÄ>¢¥ì–Í ˜A.ôLãçº›I˙’€-2ÓŸ£ôÜ¯õˆÁ∑ZÈtøÍ≤i è*ò%§˘[#å}j\rKCπ—ê\\ICyeÚUΩ«•pO˘S)=¥+Ω6⁄Ê[∏aèÕsYœ‹pw{u¨-vH%’gâ>x† +&>lun)è:«rŒ¢.0±∏»Áﬁ∞q!-Ü¡˝+¶ç6ÂÃ…ïí±≥ohZ%uê¸√ëûï˜Z1é99Óß¶)-&∏ÚÇBø¶jY#ébÚOáEÂh≥R˜∂2\"”ÂIRXÆH>a»c⁄©…	äÌWÄﬁï2yj[‰Ï3DRñªC∑xPzzb∫!;°≠»L3êqª8j”l≥Ñy61¿u™™År@ÎŒ*P2‡ÉÉZ…h◊∂&È¢rÕ3sS«·ΩBKñ∑ïë\0cûõOz““÷”W¡rZ+ï 	W∏ÆìL&÷∑ºù|ÕÃâ7\\åÒ^]|\\Èhñ†’è7í _6Xˆå∆ƒ3v‚ß1<Z‹&Ã.F—Ç}	´˙Ìóˆn¶—§¶B„s^z\Z¢ÚMxSy‹Ë0π<„“Ω\nSˆêRfKßñ50ƒ—ò˘fRy>ßﬂ∂j\rÌπŒÚ8˘πß»ÀRåŸ#Ê«LÊØi∂◊w.	*∞\0„$sWeÛXM≤™‹œ≥€í\n	©ˆ´êÍ◊P⁄4HÎ0bª∏„•∂i”¢rúœ°¶§9z“\n3äd]¶4â˘Ñ‰6I»©m#é9ë›7∆ï´∂∞%A>c/Ó˙c=Ûöj≈Ç7\0ry≈n†ò\\ñ‚y$èl1†Œ6®ÎUƒ$t£ˆx’7#ÄOÃ†∑Ojñ<Õº¸ƒı=+H√ï	ªïml¶r Ü\\Ú;R<ß)‡ˇ\0J“ñ‚`‡)∆\0æï∆\ZÑûÏKb‹∫;ù\"µ∏wéCÛ¬<π>ùÎº–^$Ëò}Ú¸Ó˙ÊµA+Ú;øîH›¥ıŸ“VsøÄ	ı•¥ı¨Àç=’¿/w∑k∂ÿ÷2ñ{ÒÈPM•*[ô 7»«É\"ÁÔ˝*!ü$F†Éª,s¡Ù´´Ñd+ìÎ[ÓFÃÀöŸ‚}¨C‡ˆ©c∂ˇ\07 ;qZKeÊÕÀ«&ßk@§ccÆ:TX´ô©l•\nÏ…\'ÉÈR≠Æ›˙÷úV¿êqÙ≈Mˆ~3ﬁòÕjwt‡‘Àmí\0ÈZân§ù√∑ZO≤‰Ù¶MåÒ‡™ >^‡u¶≠±¶N}+I‡¿˜©m–«*JP0Ó∑z\0Ådê⁄≠≥∆<≤A¿\\˝i◊P≈%º;P#ß ¿‘’âHvn¿3Ä9¿42¨“!@T(ÅlÇ{ö,3*M<©⁄]Ieìûµ\\⁄<¥{Å ıS¡≠∑∑‰”~Àì@>Km$ÆN~˜zXÌ»Ì[1ÿÔ;zRõ]ßîÓ≠±Vñ€=∫\n≤êÒí*¸vŒñÀ79 }Zc\' åR¨Y=*ÎƒÄ‰;R,DûÑ‚Ä+¨#)LÌW¢D»»$û=jFÑ´Ñrπ«QH\nImÄ8•„\'ä—HÜ9ÎK$XÕhÄ—n@‹ÍÔïÉ»‚Ø[√l∏bÃ˘;JÅ–\ZMŸFﬁ\0#ÀcÊ„ﬁßÓbTqû*Gå+\0ß\'&•Ö;éhO@8 ûïiT>Ù‹m¡ßìÅ¿∆}Í∏\rXì<\néQåÒS/À◊ß≠Tππ\n°^‡@˜n1ıß,·OcX˜7 å¿µ:+ÄË[ö¶+õ\"%eë«FOµ5/o!P|≈?ò™∞_(µñ)7nlcÈ˛qT÷Ë∆ŸNΩ>µ/a‹“H…$å„÷≠G +µ∫éJÇ+àe∞\0åN_åZgû#øîev\"”º÷Nßz∂Ò9›€±ß›_Ö\\É¡Ì^‚ùjkx‹ƒN˛8ÕT§în¡#ò◊ı9‰æ\"97ÓuS˝*ï§ww˜vˆåÚ0 ÏG9€ﬂå˚‘W¢fóÌS\0≠6•iZióÀe\"nh%‡J3Ú7°#°Ø\ZµHﬂôõE[DdŒb\'›§Ç1⁄¥[MTúOåˇ\0´˚§v5JkbÔ#sπXìﬂ∏≈oÍ;|5.ôqop≥›µö≥£dM¿è«åVU*l£ª*≈¯mé†fµfX_jòŸA¿ı£≥∂ìPKôQùùFv\"Ê6@„˘¢ÎO∏ñΩi¥ƒI«@~:s⁄∫øhFÃ-‰WSÀbAqÄc+¿˘‘˚0«æ+*µ’\ZWæ£I≥åôØ-!XÆ‚ŸuWwı˜Æ˚B±ªπ—ÏoÏnv-∫a‘ÆÌéy-Óß˙’àw∂ó◊„lç<qC±å\0„©„◊5ï°¯ÆÓ	BR6-\\+¿>ﬁıîΩ¶\"ådïüR¥ã7ØıΩ.˛⁄.LS«)A˜YAÁ–å÷u’∆èu,÷…hê⁄Øó^dlTüQ«‘ä•„M;O“ÊÇ+VÛ/ò¥ó\nŸV,s¥¿≈WìSû„√v∂Û<jX.c˝w„ú◊V(SR¶¥o©2’úΩÀ#D°T©ËsŒM9–p}E,†<ySAfE¡È«T!LaNój\0ÁÙπ‡úSÇïÔ÷®ñJzÄA´¿ ”¬‡dûµI6mb:„ı°£\np8ÕJÅüÉ˜èjê&ˆûæ‘“†‡ëöôcn	SÿÙÒ cÎO1BÉN⁄ÆPÇ2∏©*ëï\rÍ\rLÎÑ⁄äÁ;OØ≠D0∆sÔEÄwîXd°}{‘±\0A‹	\'•Z∂∑äs¥ÃŒÔÈNh¬¸™zÉÈB∂≈Z»ö\'å#÷ØÈ˙kÍm.ŸR5@[z˚\nœU sä≥hul6p@=(qmiπ=Gâ$2#8m¿\0§˙U´í≤»≈Fû9ÈD≥y ãÄ°G¶§Y\\åÁÎM.¨W,∆¨m›¸£o~\rM¥§Ê\0]·{Á†¶≥∆c\nkÒ∏è•Z≤π{iUïé–¡ÜqQ$Ì†◊ôVHÀ∑ñí{π´ziÜ	≤C+„\0é«ß>’,“«-˚…›π»2{‘WoÊœZqM∆Ã4ã)K	ÛX…UÕ% [›ó2˘Q:X„¸*2≈áA‹‘gÂ`·π’£ZXîıπ∑ßΩçùÃvéÈü;¿\0Á8ΩG∆∫Ω,\\≠Ôów‘b(ˇ\0v¿\ròˇ\0á~∆º≈.⁄Fn|=ˆ˚Wnæ:Û°∏Vàå(+á9\'”é\rrT†ØÃj™Ù;5k9¸µÇxŒT1π\0Ù´—J$\\ÂO8»<gΩx<⁄ΩÃ7E‚!@oî¢„¸ı5´·ﬂ_5’úB¬§ñBÕç˘Ë?SR©6ÿ˝°Ïı\rÕ‘6ë4≥»®Äg$◊´¯‰ÿ∆ëGôœﬂ˚ïÅ¨xºjQ¢Ài‰äq§€‘E–Óƒˆsñky@©∏©88œ_ ™Îæ%µ∑Kqm:À∫Oú∆Ÿ¿ıÂÎ|ã»£ÿÁ ∂zØ•3ŒvPª˛\\Á÷∫cF)‹ÕÕΩ•µµûÚ˛Tdò≠úq”ü|b© XÂ¡\'\0∂:÷3IÂ≥t‘Øp8<Ù≠íW$ıˇ\0ÍCP±%•\"v‚∂+À¸7¨%å2áÀ-∏˝y•zï|/ÏíoóqÍÕq◊§‚˘ñ∆ùÙ.—EŒhQUZÒÙ@Ã£#ü‚Îè öMÏ&ÏIu8∑∂íR	ÿ§‡wØ,Ω÷^‚ÏL£ÇwÁ\'=Û]«â.˛œ¶…4N≈€∏=z◊ü€…o5ƒ¢‚L»•òdHﬁûŸÆ ≤πå›Ÿ7ˆ˝ƒRK*7ó$äT·q¡¨q $íp*ŒØnaôcÚ„ïä§ÚÄéÜ™\\±∂ä4ë;rN=}ktë\'ûXQTGíH≤{’G∏(¡n‹Ua9+ê8ÌöÖ›èV¿¶4ÑûËú“™Y±‘˙SÂès‹T2!åÉª“ï—I˘Úk8∑ÃpzfÆªº« XÀ≥._jÕ∏YmÁeñ7åéÃ0kyîë\rÃoéπ‹}™§®J+t9ÌWñÆô9\n1Ï@Jñ\0u<Ê∞ì-hIÉÄ‰êz˚–Ï„ÜVU=A5W~Ø\'∞ıßó`Ä3HÛ”⁄≤w*HPg\0èJâÂà[ÜVq9c¡)_cÎM,ÑÖ…µ^A\"\0WœjHi\Zf§—&€Üvç†6xœJﬂ≥∏º’ßïÌÿ,hÈfr°AË=µrBê≥˘¿´l‹£N*›•Û…c=öKÂ«1›&N‡1ﬁ±íæ≈ﬁ∆ıÖƒ◊Wa¿\' FŸ¿\0rqı‚Øk◊66EÃ∆fT€#œ~sÑ€≥∞rXÅ]L˙ƒSi—bÓ%òùÆF–1‹zÛ÷∞íw\ZfSj◊⁄eµù⁄πÜ]Ì¥dù›˘É\"¥ÕÚOojRñÊÓDÚÁ `\"vQÎäÂÔ≠ 5ƒQÂWÀ>ù≈\\Y.,gKÖTﬁ†0$vÈ¯’J1øôjÁT⁄•ŒòÒ€«*©ÚÕ ÿ\'ßü|&‘Õ≈≈¡éO-6©RüoZí∆d’Ã≥‹IV—°@O\\åÚ}ÕEe+6ùq®y∑É*»≤e˘8Œ=+%&ûõÉW64€≥•ZÃô„EdñAç£∂ﬂ_o≠\n˙à≤QÖeîêå?~3ÌÕ;¬:ïﬁπ<V0 â9gP»±\'#è\\Ò¯÷¿–Æ,ıùNŸåV“8í‹´Æx–‡÷úìnˆ&È⁄É\\\\ÈÁOùOŸ…$Òüò⁄à<∂˙p◊R•ö*K≥©∆FA˙rj‰Èea#å≥›Fﬂsão`Oqü“¥Â’bµ∂ÜÚÓ{uífhwƒŸªë«ß~U•:mnz\Z¯wOöﬁY4»ùûh#)∆3”\'‹ˆ≠≠\ZﬁÚÀOä9ºô_ÅΩ2Øß·\\µáàlÆÙ÷íﬂ]é)°à(ãn÷$g9ÛÌV°ÒΩ™Ÿ–¥≥<›ﬁ¸ä{ú/Sﬁ∫95ÿœS∏ ûıƒ±EºŒK1\'ΩbG§j”˘2Í:‰™—ÇY-DáÍNI§∫–4˝^ﬂÔI:∫Ì731˛œ8™I_VI»kö¸⁄É⁄Y∫KÃÆõfÕ˘FrzïÎ\\Õ∂≤Ø©πΩ”Ü•tp\"X∆ÂAéÄw>ıÍx3Bµò¥∏à˝Ó[\'=ÛU5wM\nÍﬁM7Nãz‰»± ˘O>¿VóW˜JËy’˛Ωwπn,oÎà÷0JßóËS◊•f^‹Oqkºv&›Ìëº‹ı99…ÙÍtñ1…‚-j]V;¶Üh§Ûfiá…Åå\0sä‘o\r>≥‚aóy…k◊Œ’`O\0c‘\n¡‘◊R“–‡t˝ˇ\0QF6÷ﬁnr8Îüj”\Zπyß≈∑KíH`v—y\'æ}∏Î^üo†ZË¨âk*-÷û£ \0øß⁄-ÖàÑ∞ I>ı*Æ≠	Ï|Í¿¨¨ÑA‰T±ÆJË|r∂Q¯öe≥DM†	}›ﬁﬂáZÁCå+XÀô\\2∞\rúf∫\r›¶ù™YﬁŒ\0à»Cûø)<W6ºcû{UËg·Aî^¬ôg†E’<>“√fÃ≈º¡∆˛p>É¸*Æëe=ùÚG9x√0$ëïa€˙ÛW|$∑◊÷Oo¢(PŒ^\Z⁄‘¨Ô&EÅN˘``bp¡GLêﬂïK‘ãÿﬂy!∂Ä»J\"„Ø≠s±‹<\Zu¡2ÖÜ-ìÉÔ÷≥ÌÖŒ¶±)m´ïpdÍ;„ÈUµùTMll-`[˘ÖL∏Œ‡=˛µ+]ê∑Zà]>+XÆñbΩœ≠f%‘Ä™ô	PxÈÔVÙÕ)Ømda∏¨ÄdèsÌWS@y/\"eÄòY Óœ˝ÖFã@±”Æo„ï‚√Ó}+:Wx•dqÜSÇ=+–4ªÏÎ1	ecúí+èÒLI¨Ly˘∆Ê„Äj‡’µ3rª3÷BƒbØ¿€\'≠f¡ûß•LÛ‡`\Z∑©JÂ◊π$‡\ZEó&≥¸ ö…ˆ¢÷≠õW≠G%«ΩUy∞1ö¨”ûiŸxMñÎZQJ]y¨úó†éƒ^K@&ÀF~z‘Ò‹dè•f íƒv»•O°©bf;@‰û0(o@L∏”f™Õ.Xú“⁄ÿ#\rU∏ì,Hˆ©R∞2ÏSÊ¢ö\\=Sä|¥≥æy\\¥Ù7tK•*ìÛm»¥·wªûINY£„æ’Õ%¡çÅ´0]ÌòHpJÚX4π±ß¢÷5òw˛ïÕﬂ\\HìIº∏¸ 8¸)ZÍXúH≠µÅ»≈gÕÊLYâ$ìíOzµ°‹ÇYˇ\0xHÈÿU∏dY`oùwúÕdLJ∂)#fg∆z”jËIÍX∏ ÇEGa®æù|ó	É¥Ú»4÷ìˇ\0ØTÓpÈYµ–÷⁄<⁄Ãw:πùàh…\'†ˆ¥\'∏±∏ôö›pXÒµ≤\0Æ\Z	ÄFPy\'úÙ´◊•e>[≤>”ÖU»5úì$Ô4¯Ìí9–Lª Ô$Ùçq©ŒÕ:√qàòmcûÇ™i⁄ç≈Ñ,ì[n[ÅÀ1‚≠cko*KeY@‹67 }ÿˇ\0JœõïÏ\"å◊2Õ\n∆ìæ»∫3ˇ\0JÃªª`©⁄}85vÙK8X˜®+¡Ä>ïìp≈ÿ#8!GR=+Hªàñ”Qh$QlvIûH=j[…ë\"R˘wpK§V\\&#3o,§∑ΩXKô⁄Õ≠\"*∆G≈î\0˜Ùıßep+æ˚§fÀb	Œ=\0™–FÚH€§⁄™•ÄìVûcB›sg.@¨È.‰çTåìú„ëO¶Ä\\∫1õtŸ$ﬁƒ˝ÔJ£,œQë”ç¶´Õs4äGjUêé≤€rTéû‘¨˙ík⁄;›(YÅ]†)€ö—∂∞i\0à\\¥Pn…,{Ù&∞mÂîs⁄{÷˛õ¶ﬁjl±Zºd∑.“6¯÷mªŸ\Z$≠v?˚ ï„∂∏o<g=ÎR+∑”»Uä+∑1ÿ2Ì)ëÿ{Q˝ôy°Yô•ûl¯ÍyÏJÕ∑◊üY‘b¥∞∂›tƒ‡1pÍ@5-‘OBÌM¢ÂÃvr\\F.lüÀ|.ˆL∑”Î\\÷ºñ,Ó,!⁄Ì-¥≠z£c!∂W‘J∆™y≤™Gø≠q◊&“·ù`‰óoqË+E)n—õ]å´}6ÃZÖk∑›ÄHW8Ük¥◊ÉlÆeK€ü1ë∞±$ƒæ·èz£†¯6kõÙΩH%(Ñ4{Äÿ«ﬂ=´—Z+ª7É˝∑ñçÛGÄ2GqZB<»ŒR‘≤d≥éK{}“m⁄£qXû&—ßò∑mÄìù£ØsUı?√¶Ÿ≈qu%º.í‚5OôàÍk)¸G‚=z6˛»∑€`wˆÀòÇñœ†°SÂŸ»u][O–¥0VıEŸﬂña‹Vë´œq§LóèπkÄqÉÊî=F;\n}ÔÑ„äÌÜ$öUºë€;èr;{VÆÅ·Ú†I\"Üòéùzün*fˆHJ≈’“-§í9ãM^U√n<ˇ\0	©Â∏Ç 5ñ∆ﬂ{œWÁåäÍ€N∂õJ€\"ƒ7/ÄﬂJ¿π“Ó,t9MªEÛe∑\Zc–˚VÙ°kÕé∫Òmüÿ#2œΩ)µê∂›§˝ztßh:e≈¬º⁄úà÷ÁÑEêêIııØ=∑∑Ú&S|Ú3ÔfôsÉû≠zMùÓ›jŸfCRÓÚU~È„“∑úà∫öê§61LbEåcæ+àª”nºCvaâ#æ›zW•ﬁÂZ5(F3ÎYåêÿ Oöà8¿#ìéˇ\0Üki£Ó>[:iÒ5ù≤À¥ãp≈Y∏9«›~bª∏ÂíÓMIºΩçÌÓIûv‹í0v∑ÙØ\'àIßÃ qÂ+	2≠ëÏ*U‘Á2MzÚ∑⁄˛Ôåm‚ Éû©îï¥4æ «bö¨âoóp&l¢úçΩø˝U»2e\0˛,ÙÆ‹Í^jbÚÂº◊$Ìö‹”¥ÎMM.o$IcÚ‘2œzÓ•Nò¶»≠<1}üm©A,e&lœÃ∏™◊1·„!¢ò0ÁM[˛⁄º∑πÜHÊ?ª<\0p2R*Üª3ﬂ_5Û∞s/,¡6Ûéò°s9k∞∫‹rŸêAGéUJéû’üå»ÕHóF8|≤7ÉŸèﬁ£\\9∆+U	bõÇ«ÁR≥ô\"\néÙƒè‡bùπ£˚ßút¨ÂI^ËíKy\027t˙VÜô©d^ôƒ|ï√c–÷dsKÍ=sRΩ—kwÑÌ`«´ëÙ5ùJ\ni∆[1¬N.Ë∑}5ïÏ≤»»§mŸ^∆≥§Ç›ÂrH¶¨yi¡9‰U“£»¨òI›‹àF„µ/ŸÛé9´)‰◊Q·ˇ\0€^√ˆ´©Ä∑C˚≈R<¿=BüΩZ J\nÏπÃ[Zñê¨ﬁ¬µ_Kí;àÁ[IZ«#;˙ü\\„ßzÔ.,|+°$“›ôπUèÂ€Éﬂ–‚µı.µwıú6Ó†√\nªîgÉÍköXà -§k‹Áto∞X¯ä≠≠âµPd.OU#ß·Sk˛∂íÏ›Ÿ;\"0,¯PF;g∂jQ ã^”Óm—„vIﬁ{ê}:Ò]uÙ¶Âk$Å£ôK»RØ«JÚkUˆsåÀˆäÌ3…¢Ö-4ŸØcâLÅ¬åÛü\\\nÜMOIπ∑H’.≠âö<u)¸K¯uçmÎ∂≈[∆ëDÀûDC∆ÏrZtﬂdøé·◊pW˘ê£∏¸´ÿ√>xÛ3\'-lzWÉ<Qh—È⁄ïÓF˝∞©Sπ1”Z€7ˆ–‹\\Çf∏‘Çf√‡‹˜ÊSŸˇ\0eÎ™!v˚;ë-ºΩågêüÖzMı˝π≤M2kõ{áä1+m O9>µÊ‚ºµ9¢∑Õƒ‰<E·I„ûÁPùí9\\˘€m»\'êl”l<≥ZµÎ‹Fàëá	 ¿s◊n}qÕ^Ω‘#ñ≥I∑‰Q,ƒò¡Ôè‚SYﬁ•ºs[Lø,é0 6„ÜÈÙÆönØ\"IÏW4dÔcû6çg®˘j£zÚû1VÑÇÊÈ¡BqûÑCRÍVÒ4˚Ö«öÿÂÅ„5_OX¶s@ùúr‹ËkßïJ<Ã∆⁄ÿ°ybb-¥®SŒFj-:%k¿¨≈Iê=´ß∑ìMÜÎ…‘ay£a¥≤ú4gø‘Tvh÷óQ›…r¡£∏\n…åàÒëÔZF≤åu@∑9ò†3d\0É¿\'3Z|àË√$WpŒ·÷Ω\"˚¡^\Z˚›A™ï2s#+‰˙W;i·n≠‚◊i<›é´‹?\\‘“∆“©-íÓ7åç*‰FØ·€Ó∑pk~√˝+N{Mﬁ\\“)pƒg˙SıÎ{m+OKhmpdoı•züØ≠R—Ôô‚}Æ]Ø—ÖsU^÷.§Q,ÁÓÑøj1 Y›N‹Á9«M¡6◊èÀë@»Æ´[∑çZ\"–v·îpMY–Ùõ]gPﬁ…âUH0∞∆q“µé.1ßŒ÷Çwÿ„í)eåÌB =j›úJy-µ¿»˜ˆÆ≈Ì#µ‘n\"X#L·◊`‡äÃÒ\r¨v˙ÀÏEç]Uˆ®‡÷µ√‚„Z|ñ‹ñhiZÆä`Í\Zz U6á«8¨[§Ä]»m∑K|Åè8Ù¶(∂N*‘jÆ±≈Â\r·âﬁÃ¿ˆÆ∫8h”ìí{íÁubHÌ£ |«iÎû£÷ë†‡„±‚¶ÜEYƒí∆d\'nÏ˙™i\'DÖ û9≈u•mHdñSAú±:eœ›?“ï≤˝—ÅU#^A\0ëÿ’Ë…<VõÅ,kñ\r±HGJ|∞D≤I^¯±`åı2∆C`ÆO|äãYÇe3WÄj3oÉås[KJô∆NJ\r†$ï<≈\nhzôë[…ûïe @3Œr:UƒÉhÏrj√As‹˜Îö±	e2⁄âD`√qû*Rä—„ PŸ»#”“à†yÁìVR=£Õ\n—€ı¿‡u©„à˘Å zSÒäôT8§+y9Í)˛@“¨Áäê°lqö`Q6ÍŸ»«•u|GÄx¶î¿‡PlëL”#ÄÁ°´Ì=)—ë!A`{”XG–\Zpäß+ìúuÌIåP1–@p˛,dSÕò1ñ˛!÷ñä\'±ß±g!A‚£[åüO¥ÇÚÎaã	åıÈZzåˆ ë∆äär§“Ï>Õm#Œòbr\0Í\0¶Í1À±\0Ükù… ¶õ#F≠L;¯£Å◊±ÎéÇ£∑òA2∂Ã„µY∫P˚ß¬®/çù˙T.ëƒ4M `608¡˛µ—}52#xeñDtB•¡*q√bñ·ú∏G≤A«\r\\∑∫ä›÷Aª¶W-Ä=EGs2‹I∏\0FNOsöw(ò2åûYÚ∏¡®ë«^ÜßF;@<Å≈S3¡»„ÈQ*î`¿’°∞æò‹v®ßeY[n6ÁäIÙÉr˛4Gh™Íﬂ(8©r\ZMíIÄ°˚@ı‚™ﬁÃuVM≈÷‘‹≤cÒ•`:A(xÿÉÚÆ2kú’5évÒö ‘µ;ªXFÈYc# gµ`ﬁkQ…kºπ2ÄÔQÕk∂ËI™Î/Æ}q¿ÎW°ñ{VÅ§˘D—â∑ï¿‹›œ$ŸYFÂm√>£°Æ”V◊?∂<9•uiom©,ª±»6 †t«lg•p÷≈N#et˜-RMê\\M<Î3»v®™¥WÆó§Ñ‰\Z≈Øå-ÏukõõÀyC1î‰+}‹cö°{¨æ•≠∆^Âm·òÂ•€ï_À®Õiıñ§Ó¥H7dz=ås›Z≠◊yV*À∏`g5És‚´væÜƒÉÁH¡\0ÓXÙ√⁄¯£X”¨g∂Çbüi, ‡g\n8 f∞ûÓexÈ#Õ∑r A»˜∞é&∑4Æï∫Ÿ£”W∂∫>Z»Ò(V$n∆r?•qZı¸aºËäK†®›‘y≈Gqi-πñ‚9%{v*Ô\"gíF÷˜Œy§µ∑∂◊u9£ªùl’Å1ª`Fèè∫Gl„≠e,M‚‹∂\ZÇZôè,Ç—3#g »\nÙaûáËk°‰sœttËnÂ[|yçlÇH∆·È⁄≠›Akùûò±∆Z)Öúù≤Ò∏d˚É¯‚≤‚‘%≥Kpê∆¨≤ªÉ,¡èBó“ππΩ™µãKSz√A∂í¸r&U2!ï~FŒOjáS–ŒídHÆ≠Z÷ÂDÒy√ÁVS ÈíG·[/‚ç§GKÛ\"æx;§Q≥y\0r∂Ók*Í‚ﬁK+uñ9Ê5ÃK+Ü˘XÚårws\\—î˘˘ù◊KÌk\"¥⁄rZhKÁ¬#æÚ∑nB1ÉÄ£É◊?SZömÓ°ac\nÕÜ4AÊ¿Pπ`ˇ\0¥;z\Z¬KXöˆ\"ÏÊ“ÁpFcÉx˝<zWe{¢œ••∂Î◊‘oßê:]´`6‚6”øß4Uçó,µæ†ïµ(ﬁõk+ã≠ê%Ïl≤1VÌÎÙ u5ŒM°‹á35®ÄOòäá~ôÍ9˝kØµÜÍ=E¢∫±ùcöföf⁄T∆§Ç±¿‚πˇ\0\0˙ä\\´≤€$°DEè»øC–÷ÿi -C†5•ŸÀ\\4˜2®∏qÅ€°Qúbïdä+8Vê ·å™ﬂtg¶+O\\K	Ó|ÎVhbÑåÆs«Èö≈\nCî`r8¡Ì^¥\"§åòÈ#UPTÂO®®£O›‡g9Á⁄¶ñ#70 åå\Zë-‘@Ã\\„ µ™VBÙ 1í<‘”Zõyä¨√*r≈)]∏=iB¡\0‚ØîC@#µMP~c˘S^,>#éi·x¸*íQJøMÅ¡\0{Êò	Ü¶OõÉëä§¨¶I«·J rjEUÚ∑#\02\0‰w¶Ör™#˘∫t© /í8î„‰ç*$\\Ø Ù=ÍÎ⁄y∂çt[6“øOÂI†3„,9«j≥jHﬂ–˙v°!_ΩŒAÈS()åÅ”≠;X,¡	î6“†®\'”ÅﬁöU≥ó{êi—íFF3ìÔRH¡ÿêÅA=jiÍ–E\'À_∆ßã;&¢€“¶U¬Çùà,DÍÊ©∑År6éy™´¿Á5*åq◊äI π4dı\0qJ√Â˜¶´äql‰Òä†! Ô»ÌLV\n√)üc“¨{Tr(aûÙ)\\™n˘ ûÙëå\0ÅÉúöë°9…Œ)	Y@Í{TIÃä‚5íRTpy¸jà&÷pÒíNA§§\0r3ÔU⁄◊Ìî\r∑Ø^ÿÊßDµ\rHcIÔ.p•‰ë…8ŒI≠+-Ú˘7)‡77Á}+7OöK{ÿ•T,P:~U“&¥–M#πf7ò†ıJ‰ƒU´)îí{ò˙ñû˙eÍZJ‡…±^MºÏœ8™¡Å_î85>°©=€∂ ùŒq…œ©§≤∂ãÇË√¬˝Ég8¸FEoJ§£M:õÖï»&sïb	¡»5ùâ<Ù≠-H≠≈¬§ã]I^‡úä«∫ÖÌÆ\Z7<åéıº*FC±m.+áØbU ]h€¿˘‘Ì-å°Ø7ˇ\0Ñ;T∑π∑ñŸRÚ&lf3–Ö›Œ{W™¯nÃYi1!\\J√2c¶Ó¯ˆ¨´Tå†“eAjl—EƒnÖ‚∏Ñ5©XÓô∞œªT5	ml3®\\»UcMß\'åj∫m©]-éWO—o%ñŒ·fçÇ£.óå}˘5SYÉÿJ∑ñìÀ!,IË\n∑\\˛u©·Ô[ﬁ¥ÓπUâUBúíxﬁ¥≈\r‰óí-î∂A·8<cπ˙W[ú˘åUö<ÆÓyÓ\'JÃ“T¥Ñ˛?ï>˛Ã(à©ù»8î»p§èJí˙YÔuYmeYˆÜåFò#ëñ#È˙öÏÓt	ß“ƒ^a[8¿*ÔÕå£ø5|÷zé⁄~mÓoÁ1[¬œ∞lU^›Ë≥—Ó/\"π;í3\nÂÑáoçnæ°˝ô$ê*\'î`giCêwë‹˚Vnßt5-J¥L,få˝·◊-ä´¢u2üOs\' €„SÄ√çÁ=™œˆjñéÊÚã>Òçß∏µ’x_EûÏáò©≥â√FÑg∆xÈé?\Z∞m\"õX⁄÷≈%∂#åŸ…\'<‡˙{÷2ªÿ—yúFìmˆkœ¥Lb)r§Ù8Ù™óˆìjÓœ/öÓN“p28ˆÆßƒ∂1]À%ë\\.π…å¿céüïoi^∂é’.5eãhT@†‡å‰}Ma\'&ı-$yïŒüú%íπ¥‹É`òØÚíT˝{W7uæa!P\"„Â˘Õz˜ç¥ÅüPY≥lê™í;ì–~\"º ÔOñÈ-ù<ßœÃå1∞ı¡´JËû¶∆*sè^¥÷9\\zU√2ó8ÎUdå´êWÇx5îïãBm•rÆü#e∫ÎLïOx¿®∞un¿‘îçΩ2‘nÑRœ∞„´Véó†\rBˇ\0 YÌ‚Ü6Ÿ$ìJ˜ŒÄ≤\\3Ü*súıi†U∑YwﬁqÉ‘\ZŒ÷`ÕMFk$∏&ÅBﬂºp1‹\n√º∫ès, á†\'\'Ò≠∏béƒ≤ÖàS/$uŒ{Vd±∆0Ÿcí¿\nΩ\"˜áÔ&∞∏˚Pƒ˚Vº⁄‰7r»%≤›åª#S Ä1å’\r:Kª8bÇ=£yvsœ\\˝k`¯vx‡q2 ìÆÌ∏@π‰ì⁄±úcÕvh§Ì`“.◊À{-J6K9Wb8pH˙÷÷ë¶\\[j]h÷∑S!A˚¬†p{s‘‰~ïüq\ræù,7¯ulÉÅÇ?\ZÔº7m5ïΩ™YÀÊáô?ÿ¿Ù€ÅYÈ\\nWEk\rVµ’¢‘!≥äﬁ9ÉyØÁa≤GF‡Á©u≠zÙ[Z^]ñ )õsûáÄL◊^ë¡©Ÿ˘<ä„) ›Ç«ˇ\0CV~ÕeeáDå\0˘∞‡WU”’6˙ú6èk©ÎöÒ\Zµò∑äŒ1\"¡õpÌ˝ÔPpx˜´∂∫LZ\'àCŸhn»˚ïp©éô‡ì≈oËV‡}£Sëâñ˙M¯?¬ù\0?ZæØˆãó]∏X∞UÅÍi∂ÇÊ:ÎZ~üq≤M9Ì•e‹Â\"œ ï≠Xıç:Xå´yñqbÿ\0gÊπÌLøπë∑π6†g¸§ì¡›é¢ôcjì-åzzíáPQÒ¸Î»95ì™π¨5}f}Qô\"V[ Jª∞ˇ\0[Ïæﬁ˝˚Vä\"∆äà°UF\0\0)¨Ò@ãπï!W<aOœÌZ6IŒëÃå‰UbXú\08¨O^[G¢œ.¸N bB™C1#Óäª®Õ)…k rb	\'\0‰g>˝++V”‰∏-®≤K$èk±móî\rúÜ˛]´zqWMí›Œj_Ae°¡-ìL∑Æ√§ç√Íq”=q]WÖ#∏˚2Õ$2\"HõÚÁ\'ÒÈúı´\Z-ΩÕ÷ü\0‘≠ˆT®FÁwlú˚VÉ›7ò ¥á~‹nl·T{z÷,Â°}›J+{my5) vh†¿`8Í∆≥ºO‚»¥€3 ç<™B˘]èa˛5â„-oR“Ù˚´àÿ≤<©|¡û$cÈ^i%”œ*ºéÉñfÔœ4únçB7ÛÒ§‹dëÅS◊ÎT‘‰Éä≥wt.2≠#I\"∂éå1Q\\@m$Ts∏2Ür*ñöá+t©ñN@©©b›x©–‚ôGW·y¥ma€˝_ñaÌÿ˝EwÆ[ﬁ_•¨õÿ§`∆Elmb?@3^IfËx\'ØG–Ó-‚”ÌÁ≤[tΩP\"òn\nÅÄF{öô;	§töÊäç¶Hˆä±Œü99¿ u’z-û©•€#àúÆÏÌ¸*++…‰ÉŒô‰Wea<R…ªN1∑∑ZÕ∑‘Ì¢’ù§KYO ¯Ëÿ«µ.m,NßM•ËpiÖºßwnFÊ<„“µ#S∞eBü@iñÍ5¡;p6Á≠KF‰∂ÿëÇ8¨]gM}Dàœ ùCc<ˇ\0Öm0‹1œ·Y˙ùÀY¬Û§a∂©;âÈBW`ôÁÚìW¶*πêìZ∫ÏW3≤ﬁºE\"pN‹gØ„X[Òı≠Ì•Õ/r¬æN*⁄´T\"99©Ãæ¥õ\ZÛ&y∏<‘OzäYL‘^fi\\N∆ïªsú’∂ê®ÛY∂«\0ı©ﬁOõ≠H-MãQÁƒü©*I«Ω\\ãLwà¥[≤\0˚‹dûòïù°Íød∫πQ≠…o·8‡◊k@l`ûzÁlâñåÊ÷{b>◊	Hò·ü€5£mgò`ñC¥`gê«ø>ï◊\\ºI¥˚|†>m›+â÷Ïûﬁy%ÖÏ‹ON}*£fÇ*Ï¢#·≥ø<é¬ù$†ƒ\rd=«Ô*«ûx©ÿ—éyy•I»v™/(ú”ƒ¥ﬁ®œ©fi‡s≈©lVEP™Ø1e˙U\'ìû}hJ·\"Ieﬂú’i_n\0‚ïü<˙‘∑Zaa‚rO\\\Zqêœ ’\"¸ûyünEC-KîlÉN∂|∂ı}Ñu T&Uu∆r\rBí<±»=i5†⁄:T‘≥€+ÜÏ(#ÔÈWyZs ◊éé√	\0›Îì€…E<ëH$]åq¿aê?˙ı\"ﬁIÃƒÁw&≤îQ4‡Û∂“ƒ‰ñ§u7íÃÇG¨õã‘ög%6r0iˆ∑ÓåÈÊ\r¨∏,‹ê=ΩËQ©4ˆNßz∞\nwgwM!0Í{”†πÇØÇ=jYñ7@°\0`0\0°∞+µ‰≤#ÅÇt8™&må•qµs⁄â‚ï_f§)‡Ud »#w	ìåì¿¶ÅéûvêÅí@c5`ø1?6{U¯ÊÇYë£f ©»œ‚+\"kÖ\'Ø9‰”dÿ‘∑∫Ç\'BÂ∂˜=kfﬂRÜHgÚúÁ8¿kéç∑ ìyh88≠	o4’Ñ$Q|È«ô˝Ôzá;Ëz$ìÈW÷÷ﬁKÀπT/Ãƒ*nÓyÌXqh”GzÇ÷6ñB¿c`ìÄ?Œπ´rÌ&&⁄	&p2ÿœO√µnÈ7û,÷fë¢‘ï≤\0œ.@ÅÈÔÌPî‚¸ã˜y|ŒÔL±”†éÊÎU∫h∑…◊\\w°ÕrkñW:åŒxUÂ#Ü,áˆÆÉ√£∫ñmK^77a»Úw*dˇ\0iáQû8ØA”º?•È±(∂”≠¢|rV1üœ≠w^öá,ø&ûá	·˝wƒW*ˆ∫6ëÖ\'+5€mD_ßs]ö7äuyÆElÑÂñ“,~5“≤€A2πTG#∫~$Åùpè∑=ÒöÀ⁄F\ZA~°´’ú≈üÄÙ;b≈÷K´£ÀMp€€\'€•;Y¥üN≤Ç=8:E®7|“ÎóÜ;ÖK{¶YTeÇÙ‘ö]\\õRÅÁü	˘#‹3∏ØSÅÍsI‚9]Â®≠r¨Z]ƒó\r=Õ£ÜT˘UFA˙’Í6˙|%$YQU™ÇÁä◊∫ÒIñyaüÀÕÉü°Æ[^ä]jmÒàÃcÜíHœ>µù4™6Ï=O√ö›∆£´CÀº6Pü6?ò‡Å’G÷ª;πm5“ÒY]*≠∞JﬂÅÏxÆz€¬Wv\"∂.ZA∏≈\'ì‘UæΩ—&ûŸ]∑K&‘}ü1\'æ9 ◊]*2Z¶g&ç}u~◊wÂƒ≤Õ™˛\0H\'“¶Ü⁄ÍXtËß∏Rñƒ˚0«ü∫y˛Uß°›‹Z€O&¨ YŸHELc#é=Îr¡°Ω∑YÕ∫ßÃJÂFqÎZŒß.Îbo°=∞fç\\ÓOóAYwv3Eq!ªË+i¡ÿppq◊“π˘n\'KÈcíBsÇåQÌ\\Êµ‚me≥>V”À»Ø…òwgo˜èj¥5A70œk€”`g«Ó=Íù„}éÓXa*WÓñÉÙ™.Ïˇ\0{5á≥S◊°6ªS6X°<c≠k⁄‹M3Nπ¿»¨®î´´>˘ÈZÜx•ú´ä6\0÷Ìi`lñVÜÊ∆Ÿ\\W\"≥&q(*r=*’‡é-ûSÜM∏\0é\Z¶zg?˝jpWêÏ<”„àì≈?o~ı\"Ù\"µS˜rhtn*xvÓπ*i–2ez/jñ’ƒP+‘~µF›W6∆œ÷ë≠ÿGº)€ÎMXõåç:ò„äb°Zµ2}hi ∏±¬\\ÅéO≠Ω6)¢ë–Ö9Œ8=EX≥∞äÓ 9uäE‰±}´n‰]œ¶XŸ[†í‚7bí‰.Ï*ÁïHΩ\r\"ñ‰6≠làYÓ{têÇ@	=èß≈Xñ9Ã0€N+Ìí0Nı»˙Vdv\r”˚i‰â	˛xŒK¶€Ki7⁄DâΩgîÕÛcøçe8+^„ÿËÏÏmŸ÷⁄§(ƒH§…∏Ç\rK®ƒπfX\n¡ „9˜ÈU›YL¢ÍX/6‚6pF•bãµµD∑‘ÆÂFÿÍﬁ\\ˆ9˜Ø5–u^Ü”Q≤∞4\r™O%Ã{Ç4˚N˛™†t5ùi†⁄¨ÕÁ;;d·Tq¯öµ§ﬁπ¥«)›πœ|ÉW£’‚`#úÏqÉÜ¡≠§Í¡Ú√cñz≤(\Z€	Ù°ÉydYÌ≥’¢<≤q‘V%ª¬cëeFYJ>OÂäª™õs2‹D≈.¯de8…ıß≠n`[Ù\0 MÌì€ÿıØBüΩg∏Ôuq∂åÍØ«Û C|ÿ·Mñ÷ÍUi…MÆø-¥˙CPÃ¶LY’\\ˆ=jΩ≈ËöT\"1%ì∏˙U(uArg™múdg™î÷?#Mk*∫)…Q˜Öi¥≠®eâ›≥\0æ–>ï&ô£çI¶Á\rÏpXSè∫õbµﬁÖHfû: ôÚ^ÎÔI|\"äˆ2`EaπI ?∂;RÕ÷ëxDO…»Î€‹UÿÆ4ùFP˘aN$L‡öô7§ï–kr\rKN∫—$éS&œ3-Y˚£8«?ÁöM3^}>⁄Ê%Œf!∑z0´~\'i[N±<Õ—$ëÓ9(ﬂuÜ\nÊÉ1\07E≠ï(‘Ö§äñå›ìƒOw[_*…áúTˆaÔ¸Í¨\Zu≈Ë∏h0‚.H=W‘VQ€ß5÷x;R[=D§™JL•™√ŸRnöÿZ1∫?àæ…Ç˙/>çè¸I˛5“À®Z‹ÈC¶ïÛõÁ/åúÕc…·yn.%ù›#Fr|µ‡Åö4≠&?€Ÿ¥•¢nô‡ìéïÊTé£Á[≠l$ŸgN∞ª¥û?∂I∏DÁ/úÓB=˝ÍmF=>ÓÒÆn‰}ƒaP`ïßyj∑Ω±WÜ·NÏ∏»‚¨à>Àuq&ï{*íå|â«Ó˝*h‘U%ÌñÌÿMt3Ÿ≠¢ì0&TçÕ7Ì€êÔÏ qä/l•”Áh•Ó∑fÀdÅÊUô !Í‡gÖ}+r&ùÃY°±O¥â˚ﬂî+/\0◊#ΩW?4õCc4…¸®éÿ¶Ûr8¶¬0‹ÒöŸk®£å+|ºèzø©\\`‰ı&°µÑ»’,G<zU’#é*êÖéXGÕﬁÑ`\rZT‹°°ê«vÙÕ\\ä\0I—*e^òÎR¿Gèh∑µ7b	∆%=H¡©paûß.H#˚›j–U¿‚•Ë0.>µ4kΩHÙ†H∑Ù5$qêEI$5Lc«=ÈÅ\Z•L±é‘$r9´C$A…ˆ©rHEsF…V≤\rF¿fÑ∆VaÕI\rú”ÇbP02s∆E;[=iﬂhh◊údbõøAt÷ågöõ8ı¶—F[”≠⁄{¥¬nD µRSÖ´∂◊¶…rìè|*ôﬂïÿiŸÍts9Xdd]ÿS∆{÷4ñÛëˆ‰Ø#÷õ%¿vﬁ≥á.åœp3é(±ºi‡@“&[#‘zW,!(+ó))2Çaúo8^Ù€πn,¿⁄ÍPQ[Æ)≤|‰´p‚ü=Æ€@wåv…Œs‘\nÍi_S3#,Hc!˘π⁄:\nπ@4’ÅqÕLâ∑U\0Ò.8´æ@™˚3÷ûU:Ú(∆3œj≠rŸ9Îäcﬁ*©9ıû˙ö;ïlÁ®#“•ªjågÜ®Ó$*N3≈Véx¸≥\"0¡ÌUnoÇŒO•+›éKè¥j6ˆ˚¿Û§	Ë	ı¶¯ö⁄ﬁŸ‡Îœ⁄§í©¡˚◊=®Ãûk0ùC(»Á≠Q’5»ßÄ€)\r∏o;±î=«◊É^~)‘SN/B„∂¶¶∑o%ﬁõima$R+¿Ø1\'Áﬁ3ïÁ¶ÚØ8ô±v°3aπr2?˝Ub‚˝Sk∆Ã“á-º˜¥\\‹…© %ééBπî∆∏qÇ}≥\\±UbÏ›—¢±⁄¬K—Ä¡àÛ¡Á¸i~”ÕWÊàew<`0˝?*≥ßÈ≤¨´\"?,v®9Êã˝ÛNªXßçñG*û˘È[:R`‰Ç⁄‚k+à£ZxL`π‡·Å∆\nÀ∑öñ◊H—ù À ‰èQÙ ˛ïd*⁄\\∆g_ö9h›r5\r‰O©7…≤Sπ@cµe Ô  Ω»≈‹0¥–Ö/Äàôœ1úıßy∆ˇ\0TÉ)v)U‡qÅü©™R1—ïUÁÊˆ¸j4‹ €FvåúvΩl©≠˙ÖÕπnï‰ÜI≥Œ“™xlp:u£Lú≈;+ t9%¶@ÎRX¥RBÚ»®‡®8v…#‹VçöH`º∏!cdÓ:åˆı8Í:÷U9TZ∞2ˇ\0ˆ£≈gœ=ª≈0ÚÕæ	xïA\0‡Ù»n1ÈXó0º1⁄§»o⁄GÃ2ı\r‹í•ﬁq)åmç«LÖ@dê¸Õ#â\0ì€ï*V’Û.È1≥jP1cπ¯œ˛’’Í◊6wSJóH“yacS sÅ˝÷S“πªÙ∂].∆{)ø|»E¬ÇAVœolb≥≠¶√9|ê Tì€é¥{%UÛˆÏŒ¶Ÿ|Î»“¸#I$ÅúÀ)‰í~ïª´bÍ‚˛Ê⁄kÖ[$aÂë¬˝Ïˆ∆kñã\\h¥uã{5¿î6ÏtPªpOÂR]kØ‰=•§éñ≥ øìì◊üL÷Nî‰ˆ)KA≥¯õUYA“˘æXçŸ[™˙Q}ymu\n2….Ùù9w˛ˆG∂8®˛8û”Ã∂ÜCj•îcvI ∑©´ó˙¥zñ£ËæH»Q∑ØßÁ]J6i$Ke≠.≈µioÆ¶{WÚÌ⁄_-ú£!]ßÂ„∑O¿÷&•m%•Ûâ:±,	˛!Í\rJÛ¶=≤At<“ﬂΩieâOë˘rŸÿ§9Æà-t3lœd íl‘êG∏(/ÉÿT%èó∑w∞©ëXJË[öh¸©\Z1Éµ∞H9“J∑ﬁØoÂCøxsé£ΩD´ìûîƒÀê≤; -Å¿˝´J–BbûA\r±ç€nŸIÃxÀ¯„ñãÜ¡a∏=ÎR+{G¥rÁ îF·Yè‡Çé2=\rTY,°*£;<iÖÏ§Á!r~ï±§Z<´\"B“,k&¡ùËrFN~†Ù¨M˚‹∑AÈMª…¡Á Êû¨q…„4¿‰b•R äqw·Ûr\nò+∑9%F:Up√>µ:6¡¿\"®iDEÀó¡\\Û”≠#0$zgöç=0i§çŸÓ(–DÏ€NAOG\'⁄´),rzäï[ÔzSÍZW›…Ì≈H3ŒÀ‹U4b3ÕHÆy‹h–%~îÒ&ÛÙ®àJÇ\0c4ÅŒ:–Ø<+‰gµ9≥`UEnyß\0˙”–E–ÿ\'ûÇö_∆©µ∆¡LÛ≥ﬂëHL–w\rv»≈Sf8-ÉÉ“´º¸iû~xåäMd.„Çÿ»»≈6IZd`0?ãÍ∏l+~@‚£ñUnY…$sYKq¢≈¥å“F·1É◊UôafïÇ2â:n>Ù»nLPIÑbxJÓ&E…\\õÔSÈóM%¸RÜX•X\\Be61Éü≠p‘ìªh“)lE¨6K<ìÃær¶|†~<Ò™”\\C⁄∆ºa9\0w«JeÌ∞T/-Ê˚ΩÏÜ-ΩÅ‡dU{f1j(–H[\0ÉÌJm]∞Â4bô$UFêÖ \0;ûi“ir\\Z5ƒã∏Ç‰t_Ø·Isß›\"}ßÏüΩ,TÛ¿˜≈mÿj¡≠#Ç‚–*á˘’F08Ô\\’kM+”‘•Á£-›ªXƒ,ŸHê(_(é8”ä”µïﬁ&ÛaCåˆ#⁄πÌŒ\r#JBÓÇVbXí>Ò=∑J€\Z≠íŸõâ.¢dç≈∏ÎèÎä√€îÆm=,^‰\ZZÀ:ºrYã}õ˘ãú\\êN\n«”Ô5ùViŒÂäî®*FJn# ˙åW¢µÿá$é£ŒèÕ1Ô¿Øqö¡ÒûûóæπvvSl‡¡„Ωh%Ñ)ˆÑò˘Ï†‹‰€µYæ∑äÍ [yŒ\"ëv∑“Æ/ñIÜÎS»tøÍ\ZîœiTR9|=éq]÷ãuh\"k€∆ëÚvÊ=¯¿„ÆœK”°”ÌL\nC#61¿œa˙VGåbí‚ƒCjØ%‰Å£Ü5	∂{`WR¨‹¨∂2p≤∏ﬂ≠©”.nˆ†ê»Òìåm∞¶]xÜ%”ÊÇELaR!ìóåëÌéïÕ¯s√wÔc5∂£4ñdMÛs∏ªÄH˙\ZËõH∑öv_öÒÑe^‚L)ÅËC∑3læá≠Ë‚Í[…¨º\n®∂r‡V∆â·Hg—˙^Ú»ï[ÊÛé9∆zs≈kG¶!m)xÀlópŸâ:dèNJfü»±X«6&bÚdÖ‡˝–=A«5WdËtzñ∫UúV»•V8î€wÒ\ZçtË‹˜wˆôü)H∆’≥˝k2◊]:=«Ÿ/Ã¨$¢Êcı=Üj–ûÊÛT∑≤L±Ï\'ÒÇ+ÃùŸ{î<Qa±‰$≥mUçù’Nqú*˝y&ô•Ë≥«nö|≥#*áèØ$ï9¸™Ú%Õ’‘≤E∞¥Lr1¿=k*k∆/nóXûYîπcç˛√“àMﬁ¿“JÊwäı\'≥â`∑æú ya‘uËH>’ √£_©\Zî®≤orZI9›êrH˙˜Æ¬E¥’5o4\"…mlç\n(;à\0úw˘à¸©±^ƒtŸ¨\Z⁄Y.ßƒ1!\\?S]{#+ú%ïç¨ö}»πîG $®€í¸tÆcTVf\0∏`É*p3⁄ªÊ”/GDµ4ò2£“∏ÎÌ<√#6÷\'é‚πßŸ™v1&AÚJBÖër\09∆8ÁÚ™D\"‡qúÛW¶Öê;’&R“`VV.ÊçÖ∫‹€${£Û¢uñ⁄}≥G±¿kÿ§≤≥ûVEOïõÓú‡u≠+ùS/	iE%Ü}	Œ?,Rµ≈s$πòÖ$dü“ÆŸÈKqd\'FY$yJïœ‹«Ø◊Ø·TY<ÉÜ\'åWc·C<\räœÌçƒ^:üCQ\'e°qEˇ\0Èó˜êG.±¶’ó#\'ü ΩÁH∂’^;È•YYDÄÉ˜îåúü√ßµrv7öáûMŒô/ô#më√`‡?LS„Ò*i–œˆ∏ÁVbéx∆ˆ⁄F	œß\'Û¨\"Â)+°µÿ‘Ω“Ìt{3eÂ¡\"‹Ã±D—çÃ Ú~ïΩo´ZÈÚÓ%èñN§éÿı¡Ê∫«ä,÷÷Ÿ4®e€k<éíHÈi#∑´Zœƒ∂bﬁÕ14˜·§GèÓ7S¥˛î™Eª∞é⁄ûèa=¥ë≈tëˇ\0¨f*Ã0A=øJ‰ıoŸÎö’¶î¡‡1 Õ<Ö∞`r3ÓF++ZÒ%Ì™<…±¬™P√\0r›=kOΩ±÷∫ù‹°5íQ\0\0Ì˜<ö(TíZéHÔcÒ:[$¨n—‡f˝€Fßj„∑‘‡÷ˇ\0¸$:r}ò§•⁄‡eQG\'údÁß5‰∂ˆ\ZŒôxhw~ÛÕÂu\'ÚÊµoZ]nÂÌ|9˚\Zl\\_ûC”n;u≠îÓõdÚùØàÔ%‘c:^ïáπuÚÜ¬∆	€ÉÓy¶¯cK’‡àA™îk{|¨\'=Õ?D–Ó4®‡å[¬YK4íÂòÙbs˙WJ¢A…S&9ÙÕD=Áv7¢≤B7«rê8nyı©„è•DP»c;äûï&	|‰Ä1Î[SπÄÕ5ª4|≈0`Ÿˆ\"Æ‚¢öX„h√∂6‹‡öeÕÏ™<∆‰‡*é§ûòß´weçÿ·TOµc⁄¯Ç∆„Jû¯π		;∆‹oŒ´x∂‚KkﬂΩ\Z®Vâõ\0ÇkÇµπº÷¢Ç—Z”Ïb0ÇCπ[\nﬁøC”“≠CK±\\÷Ò÷ì™&’ñ‚ ñ¡£dÓ9ËLs^W|—ÀpæZ,hO!zk”µÏı2\\-≤´© œÒ¿˛fºÍˆ ]Û‚ﬂ\Z6‚ÍßOB}9Il\\E”JEqíí›\\Å¥‡˝~ïøÆ[È7±:È[öÊ53∞iX‚¿˘AÓ{÷l\Zl0iv˜e%ôn‘¢∏`¿Z\Z^ág‚aalí&eiﬂÓêºÇ{ÛY]7sCòç*Dì\'g[“$–ıi,§ë$d¡ Ù5Y9ék@,BÏÑ`‚µ≠n°BÃ≈I)Ç±ııÜÒ©«jmr.ŒﬂÌRÍ√§ÆoeR¨s æ¯„≠õIö ∫tÛDÎl ÍÂrƒı˝\0Æ3HΩ∫∑øÄ€¶€à˛ÈÈ¯◊T∫}ÕÖ¡π!ÆÜ9wyı.À@FÎ¯Ú…spÃÚÖ$ªﬂ⁄¥ÙÌZYÓcµxò3©m«∑±Ø0í◊7ÆËÅı\0øSZb‚ÚVd%ˆ°ë[ó≠&≠∞“G§Æ•⁄‹LÂTBÃ§nÙÆKƒ\Zè€“öS\Zï,@=ˇ\0⁄˛ïœÍ]Ÿ€|ÏêÔ-ú˛5^‚Úf∑#∞V9QíGΩ5{‹,ë”ﬁÎÒﬂhﬁT•Cë£r:5rl‰úèZÇÊÌô\"à•zï∑‘”!ìæx≠Ùª\Zqæ‘ÎM2ÒTﬁs–t¶ô∏ÛH´2ÀKúö`ì-ä™e4#Â«Ω$Ç∆Ã`PÚÂ∫’tp≠D“äc–∏&*G◊9ÆÁFÒ<wQ¥WXYïr§pˇ\0Ø^v%ŒMÊê=©µ°-\\ÙgÒ.û,ã!<|°söØØÎzzilU√ÃÍB Í2:üJ·`‘ƒIµ‘0œÕÿëÈöÆZ∏Û&`#ÂÇÁ$˚T≠πR\"b~Y˘KbßI∑!OL’n˘û‘ëMé˝Íúõ€dÛ7œ˝j#\'Ω2i>nµ0Äh≤%ÈUÂ$7Z`êy°‹ëÙ°=F5û¢vœåŸ‚¢v«Æi‹w¯™Œs€•JÌ◊ö™Ã3HRcñMø÷¨#Ü·∫Tbúíp9˜\"‰ﬂªA»%πÕB“+Æ,GJFÀj±vSäñÑHÏÇC‹cØNj\'}Ñr\rN&f8lÒ≈Wu{TäƒëÃS%[µ/€‰ﬂív„ø≠U$¢Ê°bH¿÷ã\"ˆ/ÀtM¡à»‰tÕfNƒ1njE?1Õ=ëXúQ∞õ*¿í\\9U!G}«’[x3ÌZ}ºñí5‘“°y‡∞{’=6[iÿΩ¬ôA.Èí=p*Ù:¸∫S^«¶ ~œ:l-(¡+úÁÿ“å‚•b]Ïc_iñˆ¨∑+„Ê˘≥YÜﬁ á#3ﬁ≠Kr&…w›!<\ZØ)åF˝ÕéF:Q\'ÆÇ‘ñ?ë	éiC√`„èJÌ|·ãÀ˘U˛Ÿ<ë‚bƒ\\t‡ı·X:\r÷ó÷øo0¢ë\\å»œ®<äÙç3^∑∏í;⁄G+\\GÛK8)\rÈ»ÁØj∏rÓŸodt˜SŸ⁄	^‹ F‚—+H‡(ü•s–Íﬁ*øöTMZŒ“(Œsq◊#éÿ‚¥Ùt∏•íKèÙΩI&hÛáÓ©Å”“µu¥˘.,ÕƒHÀ3˘lõ7ûô¸™û\"í|ΩAFVª\"áY‘Æ äA¢¥ƒp“,ã¥é‰Õ]óPπöÿˇ\0ƒæˆé†)?ŒµïU*Ä™\0v£ÜË*…ÚæÖjyFπ}‚Ûû”Oh\"u¡ySvÏwˆÆF^X_@åﬁBÅµù·œp;W–⁄«qÖÜ–W){‡-1Âﬂ§y$1-…ŒkH”£4‘¥bsí0M™›ñMŒÆŒ“IË}´°Ûc“ÏaΩ’Ê«å*®9„∑&ôw§Àgm,ÏÚ±€1åÌ≈C<r%¬-ÃãÂqù√p@>üçM\ZsÉ∂‰Kπ≤nÆÆl%ΩXBJQ[êSÿz÷eßán.n#‘M¬≈ 9›åÒüC“¥Ù˝kLeî∂†åa8ƒåﬁ;‡’¥◊4ÈÊ˚0πèÃ#ÓñÎ«oZ›JQ∫äì‹œ’l.n‰’QY\0&E‰;bØiNÚCväÆ†Ÿ”Pπé‚l≠ˆW…aª8Õ]≤Hcô›ßMªoÅÌJ§ΩﬁVN˜5\rcjˆYDˇ\0fY:zV¡‰b®jR‹≈≈i\Z<í|´º=Õawb‰|ë{	%∆“†çÒ®ÁÂÕfDæl ÑÌ…¡≠…aY& ¿r¥€ù,¥Itë∂◊ÂäˆÆZu#Í\r£~“Œﬁ€√ì¬Ú@∑rØ $¿‹=A>ïœ^[%∏*FŸ–ÂÄ Æ=çTôä~îú‚âsµC¡ıÎZB2ΩÓMë”4ÿ%@#åéÙ’m.77OŒ+¶(MàëÌR∆sJ†RàΩZ0ºqSƒÁ8nî*`é*Eå¿ÎCä&‡‰¸ßwjΩ	Û-{9=*∞L®ı¨[3Uq≈c8ä√RÃ®$©8)m,Ëx‹1Õlî¬Ú«hP·€˚πÈQEå´óvIG<Ù≈%+ÓTSHπ[+≠ìƒ≤F›Q˙Ëkv;Ëtu(ÿ<ƒyR=?˙ıŒŒvúûß÷ß˚&‚≤D≈XGZ∆≠›ÿˆgt.mı82ßí6Xö_òs¸$˛µq3[^º‰M.…˛z67cé¶ØK´xaù•\\Åπ¿ÎÙ™ÚÍ?iªh€sÑ¿Gn@«Ù¨Ë«ñˆwÔπIû‚)ñ’ä∂Úséúcú÷⁄Ÿ-Ω≠ ÕnsÂpÍC«˘ÈTÿ-⁄©π»*Å<w´zk\\:õ9ÛÂ«¡ú˝j™çZË/≠∆	Öµ§%-ˆ°U€ ı∆qXó˜Mq)úe]∏#k5 «i)˘b,ÄÅËx˛uûÚ@“°ïp¨?\n∏F)Û$)l6Õ¢∏áÏ◊i£g°•ö)-pÀF$*~Ú˚˝)ÌßE.\Z*›π»5oOci8h$	Œ√—”°´RW–ï∏òäkÓ‹Årß»ÕeM$dçO•LåmûHëŸ¨÷Cî=Bû2?≠iM§Eæ‰Ü]…\"Úv\"¥∫é†—V∆ca0î˘R+&B‰7Ê*∆ï¨K¶jÜx¬ç«ÊQ–é‚™[È“›+À»AÛ∑@£ﬁ´•¨Ç‡&“«–w™ˆqù”+jçmt€›1æ≥âí\\‰´cúzäÁ7:>TúˆÆ∑O—§ª≥îå/\0©nI˝+/P“÷«b>|”À`‰\nö|∞˜/±M›‹ìM”b‘tñ3À\"òe\0°Ët>‹Ê™j∫,∫uœîFËK|≥(·Å˛µ∑c¶Ø-–À$F‚\"°Å„~2πı™ƒ∑Iˆ[LOˆ®É4\0e#ä¬Ue©EË˙8©CmNjﬂHëòÜ`<u≠K>dª	hËYGÃÓpÆZÓìQ∫‹2ÅFF=ÎI<=5∫…\"≤ôvóç;6:å˙äU1i=Œ}∂\'±◊≠,gí«W∑2∑«Û¯Uã«ÌˆŸ”QÚÊåÔÜL`°Ù˜ƒŒ$[ôø|7Jh@¿äèÏ®IÛ∆M0s;õ=VﬂWvµyÄ∏¡]„£èQ˛…jöU÷ì|cúñIIG„U„WÖïó*GB\r]∏‘nÆ¨“	‰ÛQT∞Â\ZË°Çï	ﬁ‹ó$—QÁñ`©#≥È∏Ù°WÉ“ë◊å‰S»Í+—äIhA)`:µ,.	‰ÙÈUò˜ı©°\0éïhFÕù‹∞—π\\8=èZ—I7åû=´&›s‘V¨H0\r4â.ƒ#Ω\\çx™PrkB1“ò…	*&ﬁGQRDõîqVˆ¢√)î;≥‹”ë2EXxàn)Î1≈CcÉ{ÄN3VV!⁄»˛t±°»∫’Öè4õ∞E\n=©¡wvßï,ÿû¥Âj–†WÈO⁄“+nêÒ»Ω8\r¬ûëRG u®l\nÉÉ»ÕD«\'äöA¥˚Ui-mD#pj6~π•Û3Qª\n∞\0‡èzk6}çDœ∑öaó&Ä\'é\r)ì9ÌäÄøΩE$ÑdÊêªWŒjT∫RÅB=»5ûío*‡`É…ÎÌ@\Zß`≥r£å-UucÇ;Pín≈Kª<\n[\0’Flqﬂ≠√m*xÎW¥»’ØBJ9ÎÇ(‘åIs∞F/ÇÁ“£üﬁÂ¥πÒ/ìå‰ëœ=˝*ÉÆÇﬂçI#≤ê√Éé’RIïŒN„¡™[•®ÜHZEc∏èzÁ.Ô.C‡„÷∂Øo£Ú›	„ΩrÕæË‰g°ÔS\'¶†éÜWé—a6˜M6ı‹Ga”èØZ£{~„=˛µ\r¥íË◊«róxHqûAıÎ.ÔYäileò‰c•aF•ïû•ÿ≈’µ	<÷%NL\Z»yZXº‚Î≥v›ªπï≥©Gmˆ∞bùdRü6=}+\Zk#$á…_ósﬁïYÛl^ƒû^#\rúÉ€5≠•,´µ‚;\\§ûÑ}+6”OóÀ;âˇ\0tˆÆñ Ç›\0„⁄¶Ô∏•#F€õxa”,“ŒF-¥>ÕÆIR2O|n?ïfj¶AÂO<r a∞3Cï‡êM_2$JÛyQ±d Ç>Ó{èzƒøë§å›±xPz¸WL≠c5π=≤≠‡πáÏ‡âa&21√\'9ÁÒ¨¡\nﬁä„WX¯r@œzÇÍÒÃqG∏¨qˆâ®VqπLãî é:˝kÇQwlŸ=	g”\"1√Â3ÀpK	c@1¥\0A}JÕ0›Y¡\\‡uæjTô„îê√æz“ÖÛ9»‰‰SÑd∑ÏF¨T∞_îú¿ı´q_œgi=º3näe√°_À◊ﬁ†öM¨GjÑ¨Í§êFøzRßq‹z±6Ï229Á≠Gí@$í)ÌÉ––ô\nA˚πÈMDW‘hv¡êOJzÃV&Tr™›G≠<\0GÂMx∆÷œnE>Q7©\"Ií1ê•û\rWÂÕ( ∞å–¢7¢/ZÀ‰∂Aéô\\äP0A\'ΩBå†Ù»ßgÂ údqOïrÏìB$å™1xr«!Ω*&rI¸™∏fcπ∞@bŒsw%Çá=˝™£‹Hî‹¿˚\ní?øÄ	ÙÊßïeÚÖÊ«˚;1é7lg*1ÉÙ¶ÿ^µ•Ô⁄·Ä 3ååV©‰˘∂≤Ì¡«#ß÷öxf⁄ßﬂ\\≠’‰ìÖô>fPsœ÷°S◊$–&ÿ˝Ã¿ì…´¬Ê3d·°åÀëÛìœ·Y˘¿Ë@E(}´◊ìÍ)Å#H˚…rI#©°ysé¢£/ﬂ=;Sï∞8Ô‘JMà∞]BI9˝*h€#ìﬂ•PX\n±ÅH!ri≈Ë¨Äÿ*d`ø“™âA∆xœZërÉÌWqÙ-,åO9ßπÛ⁄†V¬∆Oi»„À8ÎUq\"BHœ<wßDÿŒ´ô0°ßFÃI∆¬◊-+Ì$ÉÕ<8\0‰Úk8L9ÎRâ¡QÉåu†ÄÁíx≈HÆvú`Ò»™PÉMipπ=)æ%˘ç1ß«Ù™&rFO<böÚ9»¢‰ÿæÚ\r£$É÷°y∞F?:¶”‡}Ói≠7À÷ïÏ-4©ûGø≠1•¡8<èJ¶”d„öB‰ÓŒE\rïb…õ= ‘∂Ô¨¬·∂ùø/Æk=XsìÕ*¥nq9\nqYÕË4ãÒﬂ,R3≈µ¶ŒN69¸i´vf\n‰ÚÉÂœaﬂ¨ƒñ5}“.Ò”¶ô’‰d\\åüó\'µ`‚ÆUÕ(Ds\\(7ó‡OéÙDKH¿Å¿e?6{†¨vòn!O∂ièr≈sœ‚≥p‘zXÈÌµk¯‚ëÑ—µ∏ëX‰‰∑9ÈöuÊæ“Íû`ñX∆˝Õ3±Ω´îgÀÿ	={“¥€WpV\rëÜÙ5¬7∫Bª:kœﬁﬁ¨\"iŸb^ë£˙◊¸ˆ´\Z6≥.£}è⁄⁄m·ÁvK{û?*‚∑ç«üZµ™eÉ0aç∏ıÓj·F	ﬁ¬mÏzOÇ5hu=FÁG∫ç•≥û\'T‹¸G…‡–û’◊Zﬂh˙§t’w≤πF\n–ÓÛD⁄‚zúüjÂ,4+!·95-.Y≠/-Lˇ\0hQ∫IÃºvÈéπ¨«Ò\\∑ömı‹ N•4áTaÅL‘ågû‹WKBL˜8ƒb4	∑h.*4∫Çkâ-“EicÂ‘u_≠y.ó‚bÕ≠&ªôÓcí9‘∫.p?0?ZË4ÕSZñXu(,Ì¶@[º€äÜ⁄N◊˜»==´J˙‹◊ö«~TÁ w¨ç@)æŸ!íg,è™ÁØˇ\0˙‘ËÆoRÚ“÷vﬁ≈ÊëmŒp⁄ü™»˚X√ÛI\Z6ué¥A5+\nMX•\r¸6◊w\rww\Z(å3naº;zç6\r^—&ö>ÁùÛ\nïË6ı$t¬ﬁ…(í‡]∆d∫(dØ9\rû„üŒ±mootÕEàüqoëÚ8«R+ßŸ#5&wˆê}üGº˚]Í≠Ãí∑ò7Ô‹zÅÍ¯÷ÜÉ}œn≤Gn,∑∂”˜~`9Æ\Zˆí÷iØ&“àâ¡)ëú^+GKº≤\ZtM$BI∞‰∆Áóv‰s˘”î.ök3ÆÒP1∑Ωÿí$j¿‡éF8«„Y)≠›…t‚IÇ⁄¢°~ˆ?ùgj∫¥E†áÃl˝àò#Óü∆®ÿﬂ$¢Uw˘ùI∫ıõ¶‘lRùŸ“jöÁ⁄g6v∞®e`À>H≠s⁄∂é÷R§Û∏∏kÅ“CÜ‹y»Ù¶K¥{WrÃ∆~cı´Ze‹rÍ:töÅ‹±ó?$Äß¸iF<∫°∑rŒÉjê]M+è≥Ÿ\0™wOzπhˆÚﬁ˝ßr≠ºM∫#\'v\'ØøB*¶≠{%›Ã˙jŒà‰*®Éê	ˇ\0=k/M∫ç…I\"ìÕA˜¸ÖÜM\\õ±+{ùn©sicnnbGïé¸ê«ßÂ^suk´©ﬁ∆\\@v<´∏ÅûÁÛß¨kku•†ñv9‹1¥)‡ÁÒ?ïqœqs5œô@\nO\\\nV≤\Z‘©©È˛Fö≤0LôJØbπñLL3“ªk2ÍOfè¥¢\n¿(wrq\\õÆ=Û≈a;\\∏≥sGπ˚%•›‘f#,qÌEì®œÒ/˚C\0ä∞Û_›¿ÑHÂú‰n«\'=ªö°§A\r√ôÃQPÔåÅìå’ΩIÆÔµ—≠ycÑ]vlv8ÌSÔr˘…≥1mZÌíf!î≤ªTÒ≠Ω3Qí«OÚm&k{ô¨—™Û\"Ç\nÁı©4´\'é€Õdí<∑ŸÀ\0p3œÈR*››ﬁ⁄πÇ5∏ﬁY&DÿF‹õÈå÷rIƒ´ÎcøµõQ6:SÕIld;∏éÏ\0ÍsRj>f∫ÄAœ*ÃT&Ì∏„;è∞ÔÔä£ßx¶] u‘Ì˛’9ê§P\0ê‹p*¸Z‘ÏíÍRZ8g_ÙÑW	¿\0{˘ÛQNi¸@”[˜∂:m÷õ5≠öIÌÜwvﬁÿ;€=H9«>µÖ{.ôù»Iù8≤·ŸŒH$z\nhºçıKãY√Ø⁄f2(\\\'c∏ˆÆKW∏Dºeç‰ëTïäOßN{‚Ævì–#~¶≈¸˜∫˛™∂≤≈$hiãú\0∏-ûô?Œ∂µ\'“Ù∏:dv”ﬁÑƒèmÛ˘<ÅìÓ}©<1·?*‰‹kN≥«p•B4åR „íQÙ≠À/ü\\›\\Ÿ*ôô„).·ÉûáÈÕO,KL¿π±÷n¥lÍ≥F7*G0u={é\rvˇ\0ÏÊ“ƒ±]ºëÖE´∞	…‰/–‘ñ∫ß™Í^^\\ïHÿ9Ä†√‡Ú	ıÕv·ÖtÙ¢-5†6«ı†Rm˘≤{tÍ¢ä(†\n∑R$xfFfU;vérx¿Æ>ÎPãE˚G⁄õuÎïxYò3 €œ^úÉ«Ωvó†g N{\nÚ5∏o|j≤\\ƒ%µ{É$õóÓo^¿‡◊Mt€\"Emo«rÍ∫Ì¥\ZÖ§ÈPïym[ÜóÛÏx‚ª?&äˆ0Õ*n.6**.Téÿ˚ºT=ƒöÕ‹∑:;cÕCΩ¯ë◊nsÄ~ÔCSÿ¯Ç⁄}{R”ØbÇ!lFNKrm†\Zu9ytw2‡Â‰∞Iim€$m¡Â8=Gw∂éÑ∂;Ì›ŸZ[}≤2ÆÂô‘p∏¸+gG∑∏“ñÍKŸÂf⁄èìån’ç}{™œ®$∞JÂ“R≤¿©ÚmSê√Õr≈&Ï˜4n«£[Æßß>ñ¬J\\n\r!˘Å¡œár=´†π“|Ø›L≠\\Ò|ÖdÜNG#=Èu;ÌA÷ﬁÊ’-ÂYæy?%∆Aœ‚+òO«i∞Àgﬁ~Êo$&x<w¢≠6§πv]Œrˆ{ã©âπëÂñ99˘GöàJ°0[≠;Yo¨ÔÆ-Ìdñ‚; ∏y#ÎX+íŸ5¢ÿ∂[éF=∏´ˆ©4õ<§|;mR˙fìE≤∑äé3\ZÚ‹‡◊´Dl\'–&±Xa∑û8	åÉí0}Î’Qv$Ê¸\rw÷eä√$âñãÃ`›~ôÆß[±πÛ¢Ü“Ás∏‹±!⁄;Ò\\ùÓÉ•Èˆ´{©ƒ…Ä_˙˛5r«ƒìE «ñ◊;«óÅû£ß”ûk)7)]\n‰&’†mı`ˆ®¿±u˙f∂ ç!∂íI∞È±Yd»\'„Û¨ùbK…Æ•{ÿ	∏ŸÛ≤t\\Ú?VjGumh&πf6˚¬‡æ+¢*ÎQ‹õP’ZÚ$–E|±¡ï6¶∂íZG<HQBm\'˝°◊5ö˜6˛p∏äM≤⁄VŒÊ\'RÛYûÂL`Åy¿‡˚”J€◊ y3”û{‘©.ƒÊ© $‰û\r9§‹¡sı™cÂ-y§ÉÕ\'ô∆sP3lœ<\ZÖÊÌ◊“π]æoT∞6ÁÎYã.{Ù´∂≠ëüZ´YÕ\'ì„5MŒ)íøAPÕ+-¨ô8&ß2¸∏Õg√}*C!⁄E&N§ç&j[k‘GQsñÚ3Ç>ïKp¡Ù™”1¶ëV–ø\'íÃv>:ûx„µDåûX!ÚƒÙ¨Ô4Ö≈In€_u\r¥hJIP√é*´πÕLœ˚≤j°#ìŒi\"ÆX›ÖÎ“ë_\'™∏|ÅÔNINBü•=‰å0j&\'ÈR…ÇÄéΩÛUéÓNin!_ê9®\níyÈS,õsªT28l–…!ìÅö@vëéÙ7µ¿=x•p\'s…È”4Á√Ä3UK*X§«ò”∞eÄ9Õ5Å?˛™öE?ùUw«Ò©∏\\Áß•,P<”@Yâ@\'55n¬˛K)ñE∞0œ\"ÖÊ\rˆ,œ•Õ§‹àıfFÔGJ§¨Jà¡voîèOJ‘÷|A.Ω9/‰ÇWÆsúü^µ@Ÿﬁ⁄ÄÕ¡l2ÙµrÂïﬁ„A2Ñ≤˝‡«ä£pÊB>n=)≥NÃƒñ‘BCë«5∞¿∆A%Ü*¿ñ„$˜=™‹ƒÃw∏¿¢ÀJ∏‘n|ãd/)ÁnqOqlT8≠≠+Wíœ˜s<“B√R1ÔIá/ˆ˘@6¿·Y∞X„÷ßO›ïåâaÍ&ˇ\0õûîJìñÑÛ§zœÉıß◊¢íkÖµF\00I„®§ΩÌ˚…:ùdÀp¿Nñ€”û’Áö>®ﬁªë∂ /’*∆√≤?\n—ªÒ‚ZiÚ√7\'Rëã<≤ë˚≥å1⁄ù\Z*í◊prmËwP\\%√Yƒ◊Û…~¸∞îù§{zVˆõØÆd∂∏∑1≤êØ ıÎ˘Wói~%m5Ì./\"Û≠$ã‰Û•„–é{TﬂD:Ùwñ% è2$Óˆ\'˙÷∑ÉN‰ækË{èúå«Rzû3P›^≈i<≤.p\0LÚO†˜Ø<≥÷•÷,/|A-ƒ⁄¬6€«Ÿ_ΩÕyùŒΩ´jZªÀ%‘≤·XæVi+˘≠è_∑’kﬂm‘ÓV8—ºà‚i¡\'˙w´˛#∫≤èJo*Â2wnR\0nyÂˆXÍÒ¥Qﬂ¢IGqûd‰n∆ã<Vßä¥BDCißµ§(†à¸ÕƒVÙÕt§•$‡Ãﬂi⁄/á4ÇÔws,ó<≤D~ee«ÎK$ö\r„=∫E%úë}Ÿ_lz‚∏\r7ƒM¢⁄œ	û·î«∏˝’„åQM±Ò]ÂËé–€X‰nø≠sJµX7ÓZßŸË:ñá¨	„‘mıY‰%#ìÊ±–Ê∫Ì\ZŒ‚‹â^Í)º¡˚œ›m#”ùqzn∑=èÿ«ûn¶¿QjJ∆=ı˜ÆŒÁZX◊xâëáC/ÀëÏ)Tu,õé£VÓk…<Q0GuﬂuI¡o•A¨ûy∏íf/ÇéÄzV,7±ﬁ{»…çá.À˜OµE&´w£∆“3}Æ‹gÂ ﬂïE9©\'À∏Ì©Û7ç≥ÇXt>¥<Ãm ,“r‹\'jÑd#njÁíñååw>Ü£í;≤JV§Æ»ÚyrÓÑ”$éHﬂÊı©n Æ‹88,Zdì∂∆PrÊ∂O∞öˆ|°:„ì⁄ïTìœùgô»|ÄGz‘ÒZ3‹˝;”ÁKBXÿ”$ÒÈV“5<ò„•Wñ?&Lg#<{‘êHC®*AÎı´RM\\DÓâ∞◊Ω\' 6É€Ω<.ˆ·±û¶£Ÿ‘Œx4”∏¨[é›E£mƒˆ©]‰ådD£Z©l€%Ë+J eë8˝ﬁz÷∫zår≈π≤πÙÔP…Ú¬éÀŒ:ÿ6…Á|Ì∫ÌÔÙ®ûﬁ;ùA’ÃP°+±I¡«|v®É∏ÏQálÄçòÁ9ÈZ¬ ˆ€≈2íH‡ä©k38À”ß5°µyol÷≈¸»äÌ∫ÅË\r9∂Ù@≠‘As\'/†‰‰¸øÖOáw©A=‰!h•àf¡`:„÷±¸¶XK≥qûï–È:µºíEu#à¬®%∞qèoZ ¢îb‹På®DÄQæ56G+Uaë‚ídI8s‘û’wNëõUÿÇ-≤©$<g~4j≠ºa6®îíºüZJˆ}B∆KÀ3ô—#‹å«?Sﬁ©¨–Ú{Jﬁ∂∑{d(ÎÇÎªû˛‚ë,\'ïœì	ì\0‰Å“∫c+h)º∞∂ú˙zV¸Bﬁ˚Cgö3‘Ô/G„¸*¥ZL≥C<§¢¥J]∑7${TbÊaíH*Ω:î’KrÑd‚AÊÜhùvÜ_îÒ‘{÷æù´>å“B&≥î å˘mŸ””ÈXÍ£~qZ–\"…ßH°t!èïıOÎ].úyl≈ñ¡]ƒ“\\F¬éH◊*«˚§v5\Z^›Èæu¨∆Ó‹1u˘‘˚\ZóKíx.„KdY√8&ﬁO∫«‘∆õ´Œ/uâfÚdçéB„ø„XZ”‰Ë∫6¸?‚âtŸ«o≥2í¯Á¡~µwS—\"’Ïçƒ71<¶@Ó•q◊Â˙W9e¶Õq0í|¶*YXúdé¿˙÷µï≈‹vœmt∆T‡3`Çz?JÁ≠I9sSveFW‹£™¥ÿm¿\nÛC (WûAÈÓ*;˝:2í›ƒÖπê!?w<ë¯\Zºßz•ÁívF?vπ˛/Ô\0i~ﬁìÈN∑Iá$ï>ˇ\0‡hPqçór‰»¥‡ãW@∞ëW\0Å‘÷í%Úxì…∫ófÌôÈ\\›≠È∑∫ñ4ì˜e≤åº\0ﬂçuO©%¿ø∫≥ƒ«¥»zH:ııÆ:Ù‹gwmH9MF∆A©N∞«#†sÇ5T¬–»RDdaŸÜ+”l“[ª{v∂∑P&\\∂Nû˘ÆYkâµYD¡wF≈8ˆÆÃ.UeÏ⁄ÿñ∫îïry°ì\0ÒV!∑rª∂íSä∂ñ2»•ñ&a‹Å≈z◊HÕôJ§ëµr}1V/tπ≠¢éi6çﬂ√‹U®#Ú\'W8=≠>˜œôÉÃ¶j\'~emÜaÑltß+l’~[Fà)e¿aëP…\n≤c>∏´^Dó,•„÷¥r\rÉä≈Å|µ≠(%Œ*âf•ª|¿ä‘É$åäÃ∂RH\"∂≠î2*Ü^Ç,Äj“¶;S\"∆ﬁ:‘¬•∞#dœj,v©ÄÊüÅäû`#T¡©îqMi¯¿©l∞a»•àÉÀÅ‘PO—◊ä]\0ó=q¿Ù¶≥cë¡Ôä˛T:±\\ÅK®ûOî©Ù™í≠ÜÓ3Z≤qoÁÄÉÚ˚˛ârÂ›òı\'&∂É∏XÉ±ÈQÄ†›Œs≈E)º÷ÄO<£o\0ì#=™îÌ¡™˛k◊XÜr≠Dg-« ‘1πw«8}´BÔOÚnU@\n≈<û‘!∫Áä∂Ø∆;‘	Ú¸¨0A≈J@ÌHQ?sSÜÓ*úr.*A&µK¸j∆ﬁYãÿ˘XIœJ£sq,ŒZBKw´i/õ\n™Ú·~`8éÜ¨Y⁄¬±9õÃÛ˙I“wÉœõij«cÛ\'\nH¡ sıÆ[‘⁄π◊c°¡^òcQ∏ïÔ>Àem*‹⁄0qì€ØCX1∑ª”¨Ìf∫∏äWùπ!Ú˘‹d˝?\n∂¢Ú)\\Ía˝Œk\ZÊ‡yáúä¢◊D!Àû‚™µ¡|.Ïê{÷ne®ÿ–õVü`!ŒÂËs⁄®HQ§Æyaéá“°ëd$çß≠BŒ√Â8\'≠bÔmE[Å\"ÃAv*NxÊ∂l‰XŸ8=»®Fú“ÀëêßúUı”dÚ∆9ÌèJpåÆ)3wM”∆ßrëG\"∆_ª¯”•ëm§hrÀrô>«’åf5ÚYä0Ó>ù)ÃaåˆcÙÆí.]ùs≥â‰+ÊY¸•F$∆§êßﬂ≠tw6ó0A“€»ê8‹¨Gz˛ïëp´+ò∆x>‘úA#ûîw⁄√é\\Td3:∏™éı≤lrsè¬Å`™¨¸@«sX õeπX…X[p;rjıµü.\ndc¡umîÆH∆8ÕÑ¿⁄«CIAÿûc¶”Ä9µ∆¶}Ä}Ô^∆≠ºl“óÉ“†qÛ+cä¶ãZäê´1Mﬂºq÷òcÿXw5${ã(T‰”Ω#<Û»®∂¢#9,pGÎJTcûÙÏß÷úüqÈLv‘Äåt•U«Jêı¯≥JWë“™√b§`ìèJGb»•Œ})qú\094ô;àâ»‚¨£õ+õ{®¿l6ı2CU…\n9…4÷$ØS«<“(Í5Ìv«Rid∂”£∂\"¢∆	Ä	aé‰Á5œo!F0ƒÌH≥óÅc î\\ëÅﬂ¸*&nkKíë`m»>î,∏FN˘Œj\0Ÿ«Jp)ìú˛ò…êÁ9Íz\ZóÂ3…#•U‹r@È€‡Õ◊⁄ñ¢¿Ç89ÈOW\'í√ÊÎ≈\'ôÊ}„œ≠GªÖı†	î®\'8¸)ÍÿOzÄ1 t„µ=>cÅ◊“©aBÚN‚x5 îÅ◊Ç1«•RﬁAÎRF€œ•U¿∞%?á“ßÛ∂ƒ˙Ê´£*úg‹S^B„Äi© ,»‰–≤òÚ¿‡„P 7‰ÌH“gú”∏Z@pp=ÈV@sÈU7Ç894ÌƒÔ⁄é`±sœ⁄∏ß≠\'öÎö©ø€å~¥‰ôñ\'$úè•KêÏLÚÄ˚y€û3HdO89‚™nﬂ(ø\ZI$áëR‰>R_3nriúJÆÕìÅ…>î“Á<Êé`±`± gÉGùÚÄ{’Fvœ^îã)⁄sÕ\' ±hKëü úåû[31t8‡ö®Xl·≤{äΩ¥≠duÚ$;Jí	$s“¢R–i⁄@›O$‘FNHÉﬁâü;Äπ8Ï)`Ä9ò(\'õ“„HPr¡ Ó‡ï$LÂI\0Åìü÷§ÿ~K∏	ªr„ú‘Åç«;∏\'”÷¢˜–\r8Ùƒ\n”y™™∫yŒsYrdcÍr~µeô’ˇ\0÷ÜPqÚ˜µ%•öœ.\\6≈…$ÁåÅıßNæ¨L¶∞±Àm8$?#v‰`˚’…≠cà«Â Œy„NO œz‘:†ÓêØ)77,µxÆﬁiuKôëˆ≥¨KÖI@RTuâoØÂºë∆˘[ ¬¢ä‘Ñ\'Ç8åÛW>«r¿<âê:q˙U\n∆ŒÜ≥›Â⁄g1⁄Hßcs¡˚ÿ˜„äÙﬂXœ\r4K2¥2´•QÇ\'à5ÊvÅ†ÜO≥ºê¨ë™Häsπ±…˝k{D◊nÙ≥0∑»N›Ó3ÚÒÄAåŒ∞‰m›\Zs$èJ\ZjÀí·UÆä\0Ó2GÙÕMqàD™eói‹{t5OL÷#ûÿ5√l g{ÌWmÔ†ö9œç∂ú∫;g©|…ÍR≥G‚\r+Y≈√˘“˘Éb™Å¿\0q€ä‰.4+àPIç‰±Vúœ„^≥¨\\Ï”É¢	7≤Ä§uˇ\0ÜküüGY¥gª≤˘º≤∆[íWU:óç‰d„g°¡\\ŸΩº–®ì*P1í†ıUõPˆÛD”*4lwˇ\0UWºÿ›3πq>„º7û˘˝j¥∑“@≠\Z»NÂÜ«1Ì[lk3Ÿ]8ö‹bR0»˛ùÎ.⁄tFtó9⁄BÅ˝Ó’@‹Mœ$‰\Zû V7≠≤∑⁄Ce[ÆNx§ﬁÖ$YéÓdc,jKá¶=Èfkª}≥Oƒ£vIÎöÇk◊1eVC,‹ı$˛î6ßw®à‚Hƒ≈ÂãœüAY∑ÿ§¥ÎRyÏ\"∂Ò≈¥íe$ño«“©Æ£®˝ïÏc⁄ü3ëÉÄ;\Zí∏è&XAhîïw$ƒÒUÔ }FÓ3Ê®ﬁΩ2ï\'dÆ\Z‹£>≠3¿!ËGr)⁄Eû•u4˜âåÊIN\0„†˜=™‹˙L1î∂ÜX⁄VC,≈èÕ“F3Ô÷∂Ê_ÈÅŒ&O‰ºEsçÉ!Åˇ\0ÅgÚ¨˘Æ¥/cÖ‘ÑêJŒ∏ìvH\rúqÎY√vC›+cP”nK¨Ôç‰˘R8∆„Y2Iú‰)‰Vzîçõ{yÌ-M√+™∂z‹wf“[ßø]i±ôXàåÇ∏¬ìÎí\rnÈZ3¯£√õ\ZË;€8\n¢mË^ô¸´:Ô√ó⁄M‰∂”ºÕ ^—Ô⁄¢o›Ijwâm:¡nÒAº∂bÅNGøO ±uM@√<◊rŒs(1ÄÄ>áì˘’¯Hµ€ ñÚ¬¯`!„l#;qÇ:~}≈ró∫¬jws‹›ÓèÃRC»›€#Ú™ú,ÏÖ3§ìSmE–[≈m¯á\0ïv\'ˇ\0JT÷.ﬁÍM4¬nÆ›LTg˙íx9¨≠\n‚k∏E£ﬁ-î1ÛÚØŒ‹‰|›π≈\\˛Ÿ∑”^K{[8ºËﬂâóñ<ı\'πÕrΩçQï+‹M˛—ùÃ6ÔÂwd®Í@ıÆáE‘≠ë‰éVøêˇ\0°@HTçw`Üœ|s\\l-%˛®∆I\0S!‰ûß5ÎùÓıdÇv1˘HBÀ ‰úÉ«ß´˜ìVµãöØá|®ºπëZÚ(‘áäBπ\\`·=è9˙÷Æï|óˆﬁsL<ÂUâ∆[ﬂ˝zìK“å˙Ï≥M9gD!àr¡Ér\0Ù‡‘⁄}§zu¸±…%cè\n»π;â<ëÿû*k]ªÑ^áIo\"\\Ç\'=≥S’ù\\èôsÉMçä®\rÈNRƒÀ∑ü\\’”ÿLwZk£ Ï)‘Uà)0^Ùµù®Î6ñ\nC»≠(Ú¡…†Mÿã_π{M6kîΩ[o&6sê9ÙÎ^≠Î‹$Q[√µ‘ñím‹…ü_Î]∑ƒùQ\'äÛ1 ˇ\0VÉéôØ,™‹d îm#i<g◊≠°;F»KWsN‘/Kâ‚∏a.Â⁄=ø†‚¥~œ™iZƒsg∏rD§Ï¡8=:ì¡˜Z^ók˝£™€num∞G¥a»˚Ÿ\'∑\"Ω^cI6x¶|–oPääá=´önÃ÷«æ&º’u-6ãóµÛæÂSï#å\\”§ÒΩÕû•.ósjÀnÏÕƒ•Túê;ì\\˜âc:oåp˘™¶BÃ≈p´û°=GZxªä  ÒgäGø,~ŒÆπl∏Îìœù~˙ìïïåØÍ+¨˛Ê”»T\\\rﬂyÛŒ„ıÕc[ÄÑ3™ø#\0û+MÙ⁄ß€~‘ÚExàA¯ﬁﬂ›$Ù‚≥ık(t˚Ñ∂WRÎ\Zô0Ÿª◊DÆ◊0¢Ì°”¯GR:L∑B¶O=ïL1ØO^Ω1Î\\›ÓüçRtÇ#∏JÿàÌÊ∫mPH£≥Ç∆ YàR◊$ƒüÓö©´xê≈™Í(m;Ã\n\n∂C\\îÆÀveX/Nõ⁄-U‘Ö√\0aΩá“™n‹…:ÃÏY‘Âpk*[π¶M¨ˇ\0)4»õ\0åä|ãvKf•∆•qz≈€ò‰úUãí6Û7ê„•eD˘9Æ$π@π\0˙’%b|ÕØÌª≈I-¢î∫ •®=rj{›;QìÏ÷FÙ\\+F%H£lÖ\'∂=küVu˘„>ùÎ≠eú\\5Ã˜ƒÒ∏˘ïxQ‹ì⁄™ˆCZúÆ|∂+èõπ=©∆2∏ﬁ\0\'ö’◊4Î{{˘⁄ôîù√p¡‰‚≤P1%H9˜ÎBï—w≥HZà8úsNpI4∆_êEÓ7 i≥≈Aª&ò˘^Á⁄ö2rj÷ÇÊ,ØÃj¸U<÷jø#oZΩ`ı°∞LöI9Í0Áöåπœ4‰#÷™ÂÙ$›»ßó„öã<”è\0“bn£∞®e¿>‘°Ω©≤ÿ≈RË0∆¨wg≠∞‹=F‰ÆFjúıÎÈR»π¶0„¶*åßEK:ÒLùN‚j@`êëÌJ_∏‡TJ0yßê;Ú;‚ù–¨Lídc<\Zé]äN“Hı5Ú	≈+Óaë“ï HçÿQÙ<R∞99®…ÎÕ6Ó{‘/◊¸)w‰‡~4”…§Kƒ˙”∆v‰–Pñ?Ö!|})1#‹ÿ›I$9áZáŒlÇ8©¡∆j5õ‰lä\0Á#ûÊ•ókÅÕAÊl9†vDKá*¿tQÕ[∏πöÚ…\r∆®eërì¥tŒzU6‹ú˝·ŒEV J‰Á÷ÑÏ ¿ú‰‘˛Z§	?ö2Ÿ@‰U@≈[8≠(-Ì&∂2Õw≤ÄJ†Ÿèßµ5®ûÂÛœ8‡q»´÷óç	Rπó†ı¨á«òDl[´∫^óquµ¶Ü$ ü2cÚ‰‚û¡b¥˜R\rÊ1€¿`OJõKæzçΩƒÖŸ#pHS€€5Yñ5v∑ûùÕBPúÌ?Ö+Öç=_W˚uŸh„HSv@˘Îı™F‡∫»w„>‹öÅ„» ÁØµ;Ï‡&CíOärì`ïÜÉ$¨vcﬂ÷ñ[)·ÿ$Só‹äﬂfÁÛv∞ªVÌñênt„v≠9û&\0∂Ôî)˛ÔΩJzÿÖ£…}µ\r¡qÊÄ-à‹º{]Áà¸+\rÇ€Cyw$™ëÁÀÖ™˙Ù‰ˆ¨?\niˆv◊ë_ﬁC#€	òõi$wc∑C^ÉÆΩü€ æ∂Y\r¨g˜ÌùÍ÷Ü˘dõv%›Ïp\Z7ÅÉu\rRFµ±  Ωôánkπ‘uÀÅ·Â∑–bñÊ\'b¶yâv z‡z÷ä¸ug™¥Àhº´H]AêÆÊe»»ˆ‚ª\rX4∂ñÛi˜t˜%D-—úú}≠o\ZëN‚q–‚4?]Îõ⁄y£f$ü(‰yd„,1^ç·Ôi>Q0[¨|”9«l`JË,¨`±áÀÇ5Q‹Åå’=[N∏‘0ârÒ®8Áﬁ±r|Õ¶4ªãv,¢∂˝‹0î1¥zÊπ=V6∞Ö˚4æJ™H>π≠ËÙãï“êÜê9œ4óãdözG4ÈR`⁄bı≠©ﬁJÃáæák„ãóÜ≈°Àπ%ZOów±¸+≤–·ÇÓﬁeö6√Âù\\‰/¶?\n√K;´ô≠[ŒQ˜N–‰û∏ˆ´	f,†ÖÁΩû22“FìÎèjÕa˘gx=î”Zü5F T‰ˇ\0¬EIçíX∂9≠5î€˘˚ÿπÁR˘‡√Â¬ $ˇ\0\Z…4≈tRïRB§¡=çC≥pp9ÌRyNÀúdTë>»Ÿ6©›‹éEh¥$íœ1ÃπóÅZ…Â8‹¨™@¡=Î*\'em pﬁ’=·*Ú7µú„Õ!5r	ÿ˘Á\'84‡« É≈W|ú;;\Zñ52Ì+¡Ù≠£e†ç(mR3ö∂ñ3]Ã.G˛’gA””r§!Sèz’—bûﬁÊi#eDJ·ó<z‘:—Rit+ ∆Lz‚È≠ßGéU`Tí8Ôä”üM:Nû&kí“ewD£ 9ı‚∂Ùπ&∑’\ZÔÌÇKñÇsêA™:µÿ¥3êcq.?v√?ça*Œ§‘QRµÏåKy$ùƒ]ZF…„>ıÈ⁄Ü∆ó≤s éÏ\0NÏe#Æ}\rpö2GÂµœû˛dôçó` z◊§i1⁄>ÖÂEy(ö,∂\\pWæ¶(Ø\'d8Óp⁄Î+jlQ!F*¡:pz’k»-Y—Qd?\"∫çG?ih°ò4R&CF<qê+öm>‚¬XƒÈåØÈÎU	∆I]ÍCI2Úi©q¢<xY\n0\n·~dˇ\0YwöciŒcùN‹\rÆAªä”∂ë¢|G#ÁÔ|ßÆ:f∑ò€_iªı;ıá\'˜PÅ◊ÎûﬂJÕŒPï˙¢§éZ”J±∫Çi\ZÂ·ö8ã®€úëY—,˜∏êÆNv˙’€êîkiF÷q¡_j¶ò@Æÿ&’»n÷FÂ›ç≠ú0Ω¿:-3K∏h‡∫E}å√Øß≠c∏`yÑ„•\\vëõÕ„Ê\05gÏÆ¨≈)\Z◊“Xç1-#âdπ›ñùs˘}+ÿ∞âÂ$(ßØµ?s‹§‰U»eée0»2√Ôcå÷êã¶¥! ÊJE¿ı´v≥Àgrí†é†Ù#∏´wziàØï\"∏#∑jKk3q*	¢∑5”œÇ–≥qiÂA•n6|¡∞;V•ÂÊï™[(ªâ—∏€q˘£?‘Up-‡õMFy—…˜S¸ˇ\0\náKxñfﬁ>Pπ<◊\rJkôÙÿµ.WrÙ\\i‚?¥∆ó∂,¡÷‚.{üz“◊mtÕJ;k€M@Lä@xÄ√™ˇ\0˙Îßöh§ä‘7ì…b›ÖEkipµ¨.˚~Û*Át®;ÛÀrú¢ˆFçî≤j◊kß∞XÌŸz†ÙËj¨ˆà&[9eƒ`ÌvQ ∂zsSÈSΩû§&h«»º¶0Yz3ﬁ±u{ô/µ¶LÑcù¢á	∫≠-≠¯ëÕ•Ÿ⁄ﬂh^≥ù6§∞¸¶L}Óºü«˘’€)Ó.4∏lÆA;c…q¸KË}≈r\ZE˝Ùv&⁄ÃÂÜ—Ì]Kõ»“;•peóÀ1úg–~5„W°8{≥w÷ËÎî‚’„ÿ–éﬁÍ√N\r,¡∞Ñ.cÔ\\eﬁô,áÌ*2%%ò7U5‹√&•À´€h’£å‰#gﬂ5Z˝≠ò≈w/Ÿ‹‚X¿Â	ÔÙßÉ≠:sÊÂﬂ±Éäh•§ÈQ>ôS!_4|«‚¥·±ä‚U≤Åí ™që◊ûÎPúàëv&ë–˚SÂõÏé¶x0Î 1ÉÌ]|µg+∑f˙	≈-Qô{·õ9í·⁄)!78#¨ÕCNû]V(Ÿqaåt≈tou®ÅÂs˙R]A8Änl2˝÷»◊ZuUîﬁ¶n€£ó◊¥∂ÜÂeV\'–÷,êï«5Èp€<ñ9P%ïGœéMs◊1ÿªÙBØûFk\\%Y[ë´¥C9à\"»$äΩokñÕ^0¨é6∆¿Uªkn9◊†ì∞ò∂q∆+^EVé=çW\0\n§\"dlV£lëößú’àç)-[⁄;SÇ‡Q‹*}ÄäÁn√HÉf\rH\04Ìº‚Ç0jop#aäÑéx´DqQm≈R`\nºSùA_zp\\Sd8∫åÃ∫-éº\nÃô≥í+N‰·´.Â’Të”Ωt≠Ñäe∆Óµ¨KqCºo6b.3ÇzU˚+9Âauo\0ô!!ú7CÌNÍ◊ç;H∑óG∏˛–ƒHtrp ;~fπ-E\Z Ì°-πqïoÔ)Ëkø‘„µñÕÊUåNc˜á*W9+üŒº“}F?ÌñX÷h£Lnÿ»‰c“¢ãrªa.∆éó;≈8h–IûéÿÁÙÆ™»€\"`3˚πî\r‹Üœa\\Fõyºâ†A¿√G,òëÇsÈ]ôi™]Hí,ÉÏw$≈&‹6‰vÈå’Õ+\\ìNÚ¿õcn3@¨‰F7\'Ê>‡\Z≈XŸ¨⁄r@√ÖU\'÷¸zÍ¢i.\\™ çy¡nq∑éƒ~5…k	.ù¨\\FT`¸Àá›Åﬂ5íz\'qΩQ\\aÜ*¥déÃÌ=3XøkäEÖAOﬁf\nöY§∂ﬁ¡º€t…*	ˇ\0Î’¥+öiÚwj⁄jwÚC$®ŒT&·πÇ®¡«”⁄πY5/9ú£¶u<\nœõTaÖ|Ÿ£ï‰,D\"<tŒjyn;ùUäOwH∂®•ú´‹±‹Áp…#÷ºÉ[Ω[çNrì<à·ò`öÍÆu¶—Uƒzñn,F<≈Vés–Á≠pS3À#HÕπÿí«‘öÁõ÷∆ëB+±;s¡´ñ÷äÔíNsö¢´ñ\0fµÏ°vîäI\\π°∂I£Éœz–KV=ß”ÉKglGÃ¬¶òÑu≠c28†XŒ0ı´0}û6êÀø;rÅzœlf©4¯<í3÷òíŒ\rRHL∑\"Ôf⁄BH…‚™#Die\n>¶ô$•∏¡#\Z£p<∆·IΩ⁄üàûÎL˜ê·å¿„p\0b±Ss¸»8ÙÕD±)Ê´∞D±©9“•yX?ﬁ‡g=™gÄ+\0Á p}È§·≥«4ç∆dfì¯r•y…Ù>ùÍùÇ◊‘Ø&xËj≥$ŸÎç·S=ds€5X@“ó\n¿2ÇHcäâ1•‹c[r`Òœ8™“!‹WÛ•hŸy\rQûsœ•GQärÁv˘bòŒY@f<3⁄ú\0OnÜò∞ΩƒÅ`8\',ÿ¨0är0O<ÛJŒêŸ„∏´Ïí8åhäÒ†G¿∆„ìœ◊•Rë6†c‘‰Û’©“1MÉéFA5˝”–Q3˘±FO2R@GÊ›Üi˛wLu´∂‚\0@ÌNèrsœ∏ÕS∞ˆ\'2rIœΩ8>ÔC≈BY≤uÔJØµâÌQp-Z›…lí§xE⁄ƒåÒQÇ3µy»Ê´oƒ‡ÁÉOﬂÛ)˜ßÃI7såsR+dP„éÙ¯‰12∞ „ö.ÆG^)…1üJÖÿ6Ny4Ä„Äià¥Ïy#Å‹S3ûÙ.d~5 d$a@˝)\\Mà	)˙sRò\\GÊåÏsQ˘°õk\0†gúVûõjnÓVh<≈Fun>¢¶sÂW)#(∫û¨A„∑•jjZ]Ωï¸ê%»o-y#úûzV[Éí#<Q\näJËEÖì8¿¸È_%pO\'úb¢∂˘ÂHÀÑﬁ@‹GJª•Ÿ\\Í⁄Ç⁄B‹≤ùëñ∆¸‡\\NRQW`£rè9qÈJr1œÍiÕπ&ÚŒ¡«=èΩkÿ°∑∑äÊÓ(§Ä©H…¡9<˛FâTI\\§∫\n6^’2FÛFŒ£!˝zU„ß≈ú/dî∞∑…(T≤˙ÁÒ¨è7iXÉR™sÎ4—5ƒr¿ƒI\'cëéjüë¿v´7\ZãÀjQCe∞\\±…cÌ˙V}¿Te\0û@ŒjîõZçÆ√⁄bèºˇ\0QÈDìÔêy˙Uv‰zÊö\nÁN˜M∏uœÊòŒsÚÁäa9`JTﬁœµA9§\0íI‚ü\ZÓ8»SÇNMF-Ö;TæS\råd„Ò¶Ñs)`Zñ[«íD\n¡BìÜ∆0IŒx˙’´-:;ô°Öÿ´Hÿlˇ\0P‹*$B%?(c«cQ£eØü\"ÖB0rÖÅ∆ÓÁ4∞G4¨R…?¬9©~œ≤∑≤£∆ z∑=©ã!GVN;SµÙcÓŸê}1RI∆pÍ€±ëüOZz+1%OZÓ¸me™Ïµ‘˜ åL™ûwgÎN ;ãV¥8h‚fP√êN[C5∏eéFUl†˜ˇ\09Æ€U≤≥–._O)‰m0Úå2à§‰dtÏ?\\Õ€ã˘eÚ÷-Ìíã—O|VÍ=Qù °<Ê±m\0\0@ı´F™˚2ÃÑ„å≠5V1?ò A„b÷Â‚™*ë\"Ì9¸®µÄúDë!∂ÄIæµ*)(cÖÈQÌ¿áAä∞©±C≥Œ¶Ëeõ[x√∆œ(@~mÿ‚∑·“‡m;ŒÛ7 H+ÉÅé˙’œƒä7på{UŸ\'kH⁄0(¡a”ö∆O]ç∫âq®O4§4¨ ´µG†Ù≠Î/jêòëd;IÍ\0 dW$‡ÌÛ@!à‰Ê≠Xº—ë*DQÉúå:Òﬂ≠h¨’ë)Ív\Z¶ßsn—Àq>bUb`∞=ç%œäl\"≥˚+ºì~t]∏„˘ÊπiÅö¬GG\rµÑå¿cf{ˇ\0ûk-ÔÁ\\JVF%∆èBxÔZ®∆⁄ìrk˚ÂöpzÓ£Âg=ªf±ﬁÎuÒ/ñ‹rTrMV∫Ä\núûYêu÷ÆÈ0√\\Àw\ZI(JH§îÇﬂ^x´cIX•w®Ç@çò\09∑=™Ø‰∂a<M\" h›x¡ÍÓßµøì—<R\"µT~ÒI·≤=©ˇ\0eñ;GÆ…\0«\"m+ª<˙ÅP˚\rhP7QÌöRvKñ‹Ü«ˇ\0Æ≠Eqw€…Ÿè VhZ≤}iñiˆÕn;3:[CíÖôÚ™π…\0“…ÃsOˆ/ﬁZ[ BÃAúd˛ïõzËR5-¥Èû Miƒs∂HÁhÍKq≈\\{-GD∑\Z¥R€jÏﬁ\\GÓê›∏®b∑óE∏ ]|í€ÓH\n¸¿˝2+[Çïíı\n€êUN~f<p}ÖÏ	‹ø∞[Èìµ˜⁄≠u01îCºÃdéÿœ≥ÔµA{=>‰Ow≥éA¡»¿=L’∏ºQ®[âºí≠$ÅIa…∑”äÕø∫≥‘dÖ“›`ò≈âcgÕœ?≠c{+ª5mu{xÌ%öÚI°îñHëóqPFsÇ={Ò\\e·ÃÚ4dbI=y=j›ﬂ⁄c%‘¢rO#95û¸gÂÏ*,‘±•Íw:t‚H§ëFrBf∫€j°¨ƒSI\"ÊAïh¿ ñ$;W\r√.ÓõπØYÁŸµ´{M(ë¢á˝\"Ìî`œ«v»ÈS~Y\\∑™9)Ôu‰µª±ò\\€X^Ø⁄L7py[¡≈Q±—ÆÓ,\ZÍ\ZH¬\rãú˜9˜Ø°um9otÂâ¬E.Â	 LÖ\0‰qY∂ﬁ⁄c€⁄L!∏_õŒÑc{p‡¬©µ\'v-V«âA\0ä°%çìsÀπÄ∞˙ï7ó+ª€Aóªv`l‰±˝*MeÂ”/ßÛ|´Ä≤ïvh»ÿ„∂?:◊Yˇ\0J}jÓ‹ÀuænB\"`Äø\\ú÷Räj„ãd\'¡∆[+\rÉF$ólíN\0}S^ùoˇ\0M∑¥X {ò‰\nõÕ$ü√¶*]6ÙJÕ;D£OGÃ;Éìı∆k°≤π˚e∏ò.˝”û£÷≥ßS[2§pû6≤ºÓÄ◊öVß-πè`p[ô1Å◊Ú™?ıùN˜K∫ù⁄geÀN*Fr§w‡Ò]áâ€I{(£◊$€ºÖB∑F dt˙U-\nà^-EanÖPO0+\0:„Ô ∂î/&nZÍ`˚\\Í—$£#\'#èÎ≈\"Îñ◊7ﬁ«˝\"R2Npä=€˙\n√±Ön›a’u%ªW.≠lÉlj≈é8Í\Z‹}.(Ì-Ï—∑èJ„ «⁄≥Ñt≥clY5±L®ÒÀ2>KÃ∏*á”™›•Ù7∂Î4[Ç±+Ü9∂ïºÛJ3JÂÿ∆OµYâcÚÇDH@H„€≠]íBπ09Æ~o«uw5ƒÛñ-ë±x«9Î˘V‘VÈoªa`ÓŸ®%§ﬁY¿»lq…sX‘õä–j)û„Ie}V‚+®»é9>F^G@q˘W9aknL≥»	ULv<c5Ìû8–SP–Æ<õtWAøx?xè^2k∆⁄Œ‚ﬁ÷B˚Q\nnÈìÉˇ\0Í¢n≠‘v‘°z◊9v»$íp\'∞Ì⁄∫ø	õgµ∫]R˘≠»@®$RA…¡#∞≈b€€(‘mñy	%Uÿ±„iÆáS≠ƒqÀ€BÖqªá\\cı¢S[1ù%ˆù£ÍˆV+e}∫Ì c,á8ŒxœrqÕgËˆöﬂäá⁄/Z	`¿å(Œ˜≤{Wk/⁄Æ‚ißH!∑¡∆q∏«Ø≠v˙ÂìÍ∑YfHÌ◊{\\7»¨{c⁄ùù”wV;ªªÅ¶h≤›€XGq9r•Ä,>PH¸x-‰ﬂl‘eë•òì∑÷∫ç_ƒÊ-&[gÀ^;˘ã:I¿#}}Îá2ßÔz’O›±)YögPñ;qj≤≤∆:ÒúVk∂Oﬁ${‘~fFrx>Ù›ƒ7µ	X§Ld¿ÎJ¨Xéy5\\‰æÁV£M™<˜¶UãJ¡\0ûåwé*RŸ\'©Ö ìœ•\Z.¿—âóÃfH$éµﬂ€€⁄®ãÏ≥‚6\nƒ3`∂zÜ˙◊ö	È¡œπa‚)°ûî+òÒÉé∏9¨Êõ)Y#¢÷#∂˛—êI,l<≤mŸ›–~◊-+aŸ……˜©¶∏Y¶i¿∆‚HPzUâçU°#‚!‰˙”¸£ø±Ïjd1»ªT˜UÎXﬁySjo√s≈;ÿMeµtå;ci5*®€•BTÒèz–‘o\"	à‘£)ÈÙ¨ıC*¥ÆOÆ}MT]…ÿ\0˝Ê@¿ŒG5h0⁄CäçV5W‰Ó^Éåp9Ù™eDy9©ÚπÔUãa±N∑9•rõ±cw8Õ8üî‰ÒPg$\Zqê`ä.	Ä<–N)†‡Ò˘S]Ël}ß<ÛUÒìäv	¶ó£c6YàÏ Á4Èπèz®èÜ53±h∆i*‰,√u?ó?ÖW`A„ÆiÎù∏Õ&]âIÖq…jE`A®ú“£V g “∞Æ,Ã1Åú’b·TÛ…ÏjY\Z´7$’ÇF3NA∏å‘i√ÅìÏ*T$.PE¡2	…˙‘[Ü}ÍF⁄IÊ£-ü®†ß=i¨H=iªœ~›)¨I(∞\\pzéLìëM\r¥~ıpE&^‰$úS{gü¬§uœNîÿŒ÷¡§K!`Áê*2dSú=ÎY.>Õπ VP˜sV.Q¸®waÏ˜u8˙„æ)´XW)iW6± Z‚ŸfA¸;∂ì¯‘W”FÛ±ÅY\"nB“∑cÌçŒÅ˝°m<≠p≤lí \n;Z•s·€ÎXdöh$ä5Ã£n·ÿ®=EW≥m]í0ƒ¡˘\'ßµ=Ã OAC∆PåÁ°ßGq!â±¸$¶°åñ;Id-µy&ë—Ì%˝‚6Òê{`‘÷wÔcuÔH∑lêpﬂZãR‘E˘wÚäæ~\\\0°.‡ Ê‡ììÄ›âÆß¬ﬁ%[HÆ,/%ˇ\0Eü∏\0Ä2p8Œké`{éwˆÙ¶  nŒ\r-ùƒŒ¡Æ¨`f‚UÜMÃ6ìéÄé’>õ°´€,67yO 2∆ÌÅúu¸´éåñ»v˙ZÌ≠<Io§h0⁄[Õ√3∞+œrßøˇ\0ZõJnÏõ€c±“~\Z3À!πªY6êYW”9¡?Öz•ïçµï¢A+A@⁄µ‚∂?.å0ü›oènÓòÁåÛÈëW£¯øwi{\"›Z¬-ó*ë/ﬁSV“∂Ñ´ﬂS÷⁄ˆ(¶í&%à‚±uçEaÜKÖøTnL∑oæ+ö◊|{¶ç%Ó◊Râí‡&qÚ;W\'c‚MOƒÛ⁄È∫T˜6‘ïî∏˛@ı≠°N)¶≈wc◊Ù;ªõÌ\Z)•í&îÉÛ° ∞Ïj•˝¥Y\\K4®“§{I*\0\\u5ÊKÆxì¬⁄T˙|pG\r≥≥<{¡wLˇ\0Ê∂<	¢GØ‘5¥œ 8\r+ÇºèÓÙ™qt•w†5us¢—uƒ≥ä‚Õ\"kπ–\r\nÂq€q˝+˝¶÷fÛ¶HÌÆ§;PHH⁄:~U‹£ŸËÚJÛyPÜCÁ\n:WöﬁÎöèäÆÓ,t[Uï<¡∫ˆAÅÈ¯–µoïn;Ÿ\\Ú8»õXP?:öﬁ¶*`„1˙{÷wüπÄl‡zS˛◊q	Ωõ~Ö>ïÊræÅa¸≈)Lëü^µßd§úûh2/òßvÏÙ&ç®ÃYè5qï∑%Ç1œΩKs0ëU}?J¨“Áh!G•jhzp÷µµ/±ﬂÑ„9>ï≤IªéÕ±,\'eç‡xÑâ ‡–˙ätÖù ¸¿{W∂¯·Óò∂w2¥Wƒ@v¡ 7¡Æcƒö.ìßj∆¬;îô∂úê9\rûáﬁπÎ÷Tù˚ö{&å˚—yßπ`ÅÌV1ùm—ª¸ﬂÌP∑¶Áí ›§$|“$“Æ¬ÀñmdekbAP¸„†®”NΩ{&û÷Ï$N€vl∆Eq j~Ú3ñíºH õ ‹Úq∞ê	ÔYœ$7WI\"nr03Q4M<”BÛåƒÿ\rÍje≥íŒHÑìÚ„r:◊U8(Î‘ÜùÓ\\“tªŸ^Mã±\0…g‡}k≠”ù·”Ã\\Årlí¸ß?ﬁ¨+Iµ!!g∏;qÄA¡?ÖdﬁL—H@∆C‰≤åPÔVVïô•}k®≠‘ã…æäÿ…Í?\ZÕóP∫¡v“Óè#ÁŒW⁄≠œ®OvgêH€B1œ<tÕFa˚Iy&$∑¶;◊L\"óƒá\'}à\"ø‹=)“ ÚïbH‡f§Q$Ä≈ u∆I∆?\nDà €TgÅ]*›vWÖLìçÿ vÕZñ—|›ˆËB‰|¨rj4ãG\"Æ¬ò¿Ú)…v\Z}^»ﬂÜ,†r=ÒMdë›Éçé9!Ü‹’ŸÓ]¶Y7n!v‰éH˜™ÛÕÁ8/ùﬂZÕ)-«%Æà\0?x¥‘ˆ‚5,ÚF:„Ù™É9ä—Ç⁄mÂ$Ü›c◊µ92∏≥ò+,+éï\\Æa¿˘@o÷•F¿ç&9åSäêÒ*ÇU€Ä:ä#-F›Ã›≤E2 ç∂E;ïá®ßƒ≤_\\≥Ó!~¯´39*ìÉûù*¸;!ô<Æﬁ˝+Yœñ>bB«n`∑íEB√êz”!µºµ”Ó$älFò‹πŒs¸™=KÌIwº¸€Ü\"ﬁl≈¥dÄÿÛ∫ìYSN‹≈\'bÑ∞»éÃŸêï„ûG·TMπ$I˙V∫ﬁ‹Cr¨™T\0AUeÄ=√4{ó{d1Z¬N˙¢ntûÉOª”U@ˇ\0JÖâ#<éx#“∂ÆûÛCq{!ÿê≤22ã€Î\\ÜëòuhâEê?áæk∂Ò$…yk%ås)êôOÈ^.3(◊Ku/¿ËSN:nä…{i5√MˆºG2‡9ûøÖFt€∂xaæ-*©%I»8ÆOå√§®ÌZ÷Qÿ„)Ω\'W„û’≥¬ ïπdÏàΩ∆È±],-‰Jﬂ9√ﬁ∆ª\'∂éÚ∆8.àft7CªEgŸŸ…gÜñlês¿Õ[ª˚aÄ$VÍæY6{JÊ≈I’íi⁄Ã“ãµ” Ü“-)o-üõM,ñãk\Z«)2	T≥€€€r+Åqhfxœﬁ©]]≠ƒaÙ¸*û÷Si´æ¨ôÚ§cãŸ≠›J6Jp	ÍG°¨˚ê\'∫yïp≤G•jÕf»ÂX|√≠G=Ñ÷ è*W˚µÔ∆0ãO´9µ(,\0säû4\0‘åò™+a	Éäz±†∂Äw°/<\Z≥nz™≤«•OzPıB4‚´@p*åO≈\\G‚π&äDÅiò…ß»§Õ@¡óä`^zS˙är.hΩÑDT‚¢ì°´l\0™ì6:UA›ÅìtvûïçxKÉå÷Õ‡-YÚC∑$◊ZÿF	äEêmœÃzW£xj¡Ïtœ.aÛπ‹¿èQ“≤<;•≠’√‹ÕhT·9˛!ﬁª\008Æ\\MU#zQÍfÍ∫uïﬁúˆ”¿¶&aê0s◊€Î^h˛‘#Ω∫ï!C^8∑çÃ3¿>¯Æ¬y/÷I4ª©ígÚ¡›≥y$ÅèÛ÷≤Ù√d∑v\ZúÌÁ€…ÂD≠˜ùq¡>˝™È©¬/óS9J.ZËpñ÷P›\\≈o$¢ŒLïêÃ√≥¿«“ΩN—Fá!∂ö˚-,&Hÿ|ªz◊/|öv£‚isdÌ…Â≈q†*∫ìÜ˙ë¡˜÷xNª’¨˚M÷KfÄG\ZëÇ0~˜≠mVVWz\"\"Ø±X¯¢€…πn¢úH`∞íΩâˆÔ\\Vª™œ©jÕ%îr¡ˆ‹EâÙ…ÈÈ]©¢}ìR∏ê‹¡m™±ÆÈv.ı≈r⁄æù´Í+Ã7&Â\'ë \r™	Ë:Ñ˙{UB0ﬁ\"m∑©•c˛Æñ≈ å√nn2\08-åqıˆÆÉ√˛[À9L˘ç§çé`ı#Ê∏}F˜¬B⁄ÔOª2y°·ëdãÄŸ‰‹wıØA∞Ò≥Y\rJı/Çtàf9_£?á”úR©œm68ﬂË7:E‘≤Èˆì›ir∆6»π}ÑuléŸ≠u∏≤◊¥—∑PI=≥<b	îo\n@;ÄÙœßCöÔ4_≥\\hñœb)£®ﬂ¬˛É‚Ô¯ph◊˙ú÷—€‹€D\\\\€ü.Ea”ëÔ¸Îô◊ª‰ÍmÏÙπ·æ3ÄŸxßPµ[è8E)R‡cû§~+r˛û‘ìÃ“ “»ÃÚ;fcíO©¢¡Ë*[ª‘§¨kEJ±ê£#Ô\Z‹≤Å3Åœj√µr´åg5•≈N	5§DH’2mäÇICzÑÀû3ÕBÃCö‘õ\nƒ≥õÎNR•π$ƒ:cﬂΩ:8ÉZ…;∫Æ\0è3zë˙S›ß¥¥i#R-§r∂p«Íy¨•7≤\ZBs#NÇD:\rﬂx˚V]…h§\\∞‰g\n~Ô◊ﬁ≠⁄‹¿å\rÀ´.LòêN1¥˙V}ﬂí˜rõb∆«f˛∏˜¨î€v-Dëw~q÷µt…-÷B◊,pò¿ÔgØÈX™H\\ëW°∂ñ]=ßÅ˜¥LKD™K*ˇ\0{>ïSï£∏¨Yøû8n[»Tí°[Æ=MS[π2ÆFÓ3∆j‚k®ÂîJôåd£6	˙z‘*ûT«Ì¶{épj9¥≥µ/µΩ‘˙ëà(í@G*2ÂÈT\'$]HÆ„pb2Ω”⁄¶¥‘eÉPY„Gª;‰Qípzı®n^º≥ºÅ›p´µyqÎè•O;æ£i•8®à ë∆}sW¨Ì÷h¡íFdÁ\núOÂO˛Àt∑πêÌh‡mØ∞¸ }qÈû¥˘÷¬±[Àå€$ãΩõ$8Ù=±R›Èó…<m$@4∏ ó>úU›QWÇÊ{XßÇ!ÇçïRxÓ;ê*∆°‚ık©†˘¶∂À}ö9\0\r@û¯&÷‚Ù1--.Ôù÷ﬁ	%e,Ã®2@Qì˘\nßπöG¡Ô‹WkÍ÷ÚÍÚ˝E∂XYe-¡î®∆9ÌY2Z∞Ò£GÁ\"Lò∞<Ì8=y‘˚X∂‚∑/óKòó6≤√ÖsÇ»cU ‰gûZ∑q,ì‹ ˜$âzp1Ç8∆)˜C§D˛h∆AÙ˙’ÛXì<nSé)rŸˆß≤Ó‰cì»«Jö4ÑDC£yÑ¸¨Í(ñ†@Uå{¿8\'è•X[)ÁA‰√$õ@±O“ö—H)Cï?sÎcD‘nLf0Ú…õò§0∆†üó8«rﬁüNi”äoQ95±œKy^b∆Í∞Xé3Èıß∫fïXl\'oß8…¸´≤Òu˛ùsdˇ\0ŸS9ÜVS$√∂H‰ÿ„÷∏uíCêY∂´∞\'øË)Œ*%¡›ånœ?Jî&ü–’`≠	ÊßÂªÁﬁ°ËéA«Úß¨e£.IŒiõH8ÕH2úÚû†SB$Áú“ÁaœzNKPUWn÷›«>∆õ=º±°-\"Â¡–˚˙äª1Nó%.ÑN0 Äê$…Ë≠f¨eéd˙Q*ºOµ∂úqP’ŸI±~—&˝·é‚ªNÓMI®l‡ú˜™¨9œn‘´∑†\'Òßk\n⁄ñ‚∏hÆV``Hıˆ•Ü˛KyﬁhæW#ÇºÁ Éÿ’Bvü©©Ì≤ `Öw<ºúdu«ÈCµµ\Zzéñ‡ŒÌ;csû:üSÔﬁ¶µ‘fµ>Ibleß\\ÒÈﬁ´KÂ$¨Ö⁄HÎ˙TDAÉêhi4N√ƒﬁ!˚M•æûcéGÅT’Å\r¿„ä‰7r~¥ˆfh<(b>µ\'?ZäT‘êÂ+±K£9ÌJ†Ùf…#öôÏÆ\"ä	ÿméSîbzÛäg ≤ïê‰gä“˙TC”<û)N‚1ízTÃQ§8∆3«(ïaíâB∏9›ú“Li&èpˆr\\aÅåÅ≥üzl6^cœµ@‹ƒsÅÎWRõÌ¨ÛJ˚pT™Ä:˚~5NGﬂ ÚÿÅ‹{TÆ`vËVÿUÿA∏´134Gº<Ì>æﬁáäWî∂Ï,€≥ø=F)ä‚í;ö—jÑOj.a≈ƒÇ§‡éH„ìè°ÎUúgì…Ù´\n/ «ëäAíF{”Í&∆≈òû\nI$˙Tãl√km»5$@<à	\n	¡-–V¬[ZCuÂœ& `ß#Ê+ï<Q{‘Ãé1˝‹WM·ùn˜F9∑XL%Ü˝„˙˝+Â ÜWé&,É$+å‰S#Ç^x4˘Tñ°™ÿ›÷ı(ı{õiQB‚\nÁo©…˙„8˜™…µƒrÀ-¿IG cÔ}\0™@ªπ t^p==RGåü/Ä›éùø≠hùâHI9«≠9$˜≈B≤±%C¬ïrs≈cF+éõÜ‡:˚”e∏]ÁÖ<UFm†;©ÎäFmŒ:û2Ege{Å≠ÓŸ\\˝¿F@Ï=Öhº—ÆúÚ¢Bvœ%±¸´&ŒŒiÌÂùôUbhaúìW¥Î∫≤À++§~b1í‹+é¥‡ØÆ≈§Ÿ´Ã÷v…IdõF?ZÜ+∏cçvªFè∫-§g8 „¸˙UÎ(öiÓ#˚TÄ[Ä•°	–ÅÔﬁ≤/º1\\ô§WÀ,Éj˚;◊ùOÔ∏¶h·dI1ÇﬁŸî2åHH$rzVdÌ\"ÀˆXôºË–»´øÂS˛=xı≠&I…%â¿gô¿˘}ÖWµ”~œx”√1~‡~á\'◊⁄∫p¯æY{Ïá£–<>óS	nÙè=∏çV6)»8woBx´˙∂ÖçÛ»≤iÚ-ÃgqπAºêFqÙ¶i˙ Ë÷Nõƒ≤»ZC#Ï^√È\\‰˛\"ÜÒ¥®≤≤O	\"yBgbáŒ·ü÷Ω\Zà÷ü∏Ù\"J ∆wâı”p∞ßõâ\02K\0w∫x¨G÷SPtKâZÓsùò\'üR“∑|E{i}c6§6;º≠0]¨‡wc∏∆—¯W!\rÉ›Hø\"ÇÀø∂‰{f∫[”AE\nñ€‚â≤Ì,‰˘@‘69©Ry¨ö;k•ZÓ-#w≥c‹UuÜ„NxÓp;Ø∑J•#óìs1$˜\'&°¢çKùWÌûJòcè…Pã∞cÅ[6ÛY.äo..·{ªâvV<¥J3¯Ò\\¥ n‰ê)‡„>¥≠qXÎ4/)ôºôˇ\0“ˆ∑ñYF„ëœ~µR˛k{Ilû/:sÛ4ÉÄ\\tœ”üŒ≤£πëp#m†\nåŒöÍœÛìíÁ◊ú“Âl≠,\"@[!s”è•U`™©¨≥IÂ∆798&™Œ±E<+	¡˙VRV.%ÅÁg	¥•æb@ÙıØS¯oyßi\Zs^ Ÿ∏eb¯<∂3ÖÁ∑≠qÈW\Z≠≤õKS,äÿ¬H˜¸çö≥€DñÇ(çñb>lwÃ‰ﬁ∆»˙|M§µîóR‹§I7á#*OAı™V-¥‘ÌÊ{åc…›#mÎ^Y<ó˛$?b≥∑[§Ym™™YæˆO°I‡ù!.¸DöhgéíÌK¡œ‹tœCWF“¯àù˙D6?óÎ∞‹Cjâ¢€Ã%2c˛>dQÇ«ÿ@ı≠πÙ…/µHÂñÿƒÖÇ∂’8‡Ó÷ç◊à¥Õ%óN≥Ñœp£	kh°à=Å«Ò•±Mn˙G}R(≠-dAôì˛√ß·ÈNiµ‰\n◊–Œ:Œü¶<∂môvòópcé«~∆ß¥k¯ÏÑí\\VbF@¿ÖKp\0ıÁ©¢AßÿÑíŒ›•…ñaÛÇ	±È”≠>4ª’\'∏Å#¥G‚=˘V≥ÍEp’Ñ†Ô–’5\"ıﬁámuuo®0Ûn≠êàûOõü\\3W¨Ìﬁ/2IêÁ†‡vTÆåmŸT\rÂN9„5œÀu•Ÿº7≥[0*´/∞ìﬂæ+hŒ…&+uFº\Ze≠ΩÕƒëDIéÊ`:ú~T©3«pˆÛÙ\02∞|w¸Egçv{gâ\\Krô¬êO◊“´…‚K!ieî0 î\0·≥ÇÈZs-Ÿ\'H§0»Ëivé√™v≤	!ÖÉÏRQëÛqV\Z@Â£F√„Æ:T©&Æáb˚±i∂›ÃÓGπÈYv–\\K™ﬁ’pú4? ^GÁÕi¡,ÑïùUpÁnzê;’[´‚∑?d;c•Dç¿$é1ÎXT®≠rífuŒ±ßh∫|ñÊvïÇÙbXñ>§◊íkPòÔ\ZÂ3¥ T0O#´∫◊‚{ÕJf¬çNÊ‡s«ÙÆYçÆcy-÷BH\'éïÖ9πJÂ5a˙ïÓ™-ˆ#@√ñ⁄«CÓ*ˆ´\nﬂ¥Î[Eé‚)B¥£¶—úsﬂëX´≠ã4ñﬁ 7Yäê29©a∏m‰Kz”4s(∆ŒCqûøZ“JLi¶aÍ÷_eºÚ‹¥Àûá<ä[YÙÀy¢ÜF	põd\0ıÅ™∫¶•5ÏõeêπSúû˛ıûI)ë¡ıÆ™i•©ÕñØ.öÊfï∫üJä8Ày]∂Äqéı\Z)Ê08Ë\r]Kˆ	Á™ÀM¨ò∆F=jØÿ\n‡Í(Ug(\'$JXï•ëU∞¡=+≠ó√siv∫^°w4f\rPÉ2Ö¡PH›(∫Hπà4©„∂[ÜLÜ@¸sÄN9Ù®∂·Nﬁ}}´”Ôıù=‰][DQR8∂[·wo√Ωy∞⁄F¡˛ÊxœCSÛ\"Ìaâ¿«zV%ézgµiiññÛ¨ﬁhìÕP6\08˜…Æ∑UØá‚∂Ç—`º8(T/œ û†qV⁄@é	âz÷óª$ÄGcVZ«Ã!ñ?,îüV™Å‰äA∂RYÉÈS{Å-‘/hOqÙ®” ùÇ∆[p\\êGzv°|”Æ8¡ÎT·ê ¬ÚzìV∂&‰Ú,à‡és–äπeqyàï’Ûä≥¶≈k´M126N€ˇ\0◊SÃ©˝ô˚∂ÑKçÂï∏Ù<Vw\ZF\\Ï˜m˚∆‰g,GZ±k¶¬ˆ0K;<q¥ﬁ[H¨Fy8ÌÅT<«h’|´êIı≠XñXÏYJÓXˇ\0ÑÒ◊ΩZïÉñÊÂ∑Ü¨^Í9•ºT≥í|&Áö q∏„◊öØ„Ù˘5.ëoãH‘FÚ/›-Í+\'ÌÔ´$YÑ*„~µ*¢Om‰ô<ŒvÁÉÓEW;F.Ï∞Ù˜ß+?¬ô2<7ÍßÊm£È\rèyÕ!qÉÕ@Œ«åÒH	<fò—a$“I(¡µ\Z1M<ìÕ\0ˆŒr00)<’…®]òÇj‰Újû§•rÿó#=9´H˘Lg≠f©Ω˝ÍÏg\0zTîÅ≤	‚ö•á ”§«ÎﬂöñYÂªO2VRBÅïP8\nC#-πEDF3R†TÁ≠+®:w§âÍ@¿‚°tŒ•XU‹‡qœJôÌÜmÎÚ„°ÎN‡ÃÊ Áì»«^¢ò≤ÚÅìûjÃ0\0ï8=*≥F–…±”ü∆ôÃ‰p3H§Ì éiÿa…Ø•4Ú•RZ√NsÔMﬂüñ•a˘‘H•°7]¶£…⁄î0\'ì“ÉÇz“*„óS<R‰\0zÊéΩ™FKm4qÃØ4~l`Úπ∆\Zªw}cqeUë≥É9ÔöÃdÎèJcB∆2·ó€<–Öc^mR ıí—Ÿa) dé}Æj\rs≈˙ñ∏—âóîç`*˙{÷gúä@πË=*‘öV#r)<˝:3+T_-Ã`Á={˛5~¬ˆ#*ñ1O:tf\'f;ñµŒ≠‹Ò[q+èTÏMK¶Í≥i”3†W\rê ÎúäÕ‹ZÜ˘ÂúÖc ®~’ï$ä∏\0cÎV/.˛‘Íw7èõ∑∞¨˜m«=hÅúÁ‚úπ|\0@…‚£+«?Ö(ê(‚ãøkiˆà§˘Çò˘…lf¨%åóh·Ó¿ÜKÆˆ3¿>¶≤ÑõF:\ZÀj§“Ëd¨≤Fq‘NVñg…cådÚk_LÇ·ëÏqi¬˝qÿ÷ x]ıX°∏¥I›ô∂≤¨{}0«µC©éÃü√∫Fó:[OàéQödúpœ\0˜ı≈zøÖ≠ô~a—¢›ßL°•bø(U?“πü\0¯jÁK∏új´·NÿJá9‡è•zƒ6—D¢∆HQ–g≠Rw‹õó⁄;Í7í≈:≈Â:Âõ?Ä™Ò3¡öLÒ‹^* %ïGsÿ˝{S<_„k_D!Él˙Éêéqı¨}¬˙∂°Æ⁄¯ì_æ∑π*	é˛‚dcé£5’Ø*u4DÚ£>“œSÒ∂¶è©¥ñ˙-≥Ú%%^oØ∑JÓtÀ8tçññV∞§\rí\0∏ˇ\0Î÷ƒêE*ïtµZ}¨,#∆‹„Ê\'≠MJÍ~K∞rüo(¨°Í)¬0ÒBK†T∑c\Zñë•Pß˜»ˆÿÿÇßjµ#ºEANdVa∞í7ñ^·€◊äÅÏßYí6‹ŒÕÄò‰\ZOïÍ6¥πqmÁªé\"∑bÓr€Ù«•oxb√Ï∆KË‰Q@£Ê\rû1Z÷>é€Nä˘o\\ÕÂí»°√YZé£j≥y°‹ºx˚è∏t«Zò÷åõåM£µg≠_¯÷-\'I∑ª∑ÉeƒÉj∆™\nøıŒkœµ7!◊ø¥%-dÛ)\'h»Ir=+üûÏﬂZYK˝•∫4®µÎ∑˝ØÛÈ[±›«f—…!\r véebA|„∑SÕsb\"÷èqT®•Óƒ“—ü˚>w˛Ÿ≤íhè\nÒêì˜X\Z›Ω÷Ï`—ßHNÒƒR|¨∞ºÛXˆ∫âø∂TäZÇÆÔòØN;Z≈÷¸≠BÛÀ≤öYbÅp¶√◊Ωr¬ı$£#´#>·¸©å\0ÜhœÃ¿`‰ı¸´Uƒ/j·à8PTıÁΩ`§R$Ö[±ÔW-«ñ„x,˘ó8Ø]BÎC6ı‘—∞ª.JHÁ$`˜©eé£m‡ïóøΩPÖT»[Ä=*‹ØBëÌ%T‰Ê≠“Íå≈äé–±ŒI‚¨©ëÌ¬† Å…\ZD“≈Ê)›\ZÙÙı©mÂ˘´CZF:]â†[oî‡”5ßcn#∂2∞˘â«“ï^fâ#0©Eq≈#›»Ï!V &Búc\"â……Y\r+nRH‘‹H8=*GEÎ”ÈPßÔnI›≥\'Ω[håp3Ó`Î‘m»#ÎZ⁄÷%ïöe∆”€•:	`Qøéy†Úå†úÄ{SRêÏëÈNJË†n~—~≥€⁄µ°«\\”ﬁIIàÑhÁ !ÈÌP⁄Asµ”Âºù«äH⁄Â˜∫ïÚ‘c\r˝+^à≠Kí\'õhfñõxYu>ıQ#\r&ÿâ*{öíK´ã®ŸÃI¸ ÖIîEEq=Õm≈j\ru%T6§«˙¬>bZê«-£∆d@YÄaª“õg~W\r”5ÿœ•«shór¡Ωc^´’áq\\ıjrµtè1»\\⁄œk1G»„v3ëÉU£PÖâËﬁï•r|…<åSTû√∂jª*¢ò…áØzËÇV%´1÷÷§ £Ã\07∑jùm%πêƒ´∏FNH˛u\n;[±n\\È[Vi≥ÚØW )Ä Á>‘I8ÍTuflˆSÿ]+,Î# \0É»«ß∏©c1VU]ã∏cq›¥”>üZ⁄ªû÷FILJ`q&Ã~ï\rÖ•Ω‹évÃ©Ú(‰))^7í4ÂW–F∂∏ù˛R¥J†ç§`”≠≠`kãvïrí6=ΩF&í4ÿ≈ñ pUxÊõ$3@´πÚÊ€¸©Ú6¨Löπ‘ãÉ	∏ ÂéG–ä®˙≠Âµ…äÓ5*A€¥u=ç]Ö⁄˜Lâ∑¥l0X˜‚≤.ÆÊ∏à«(R7zÛ0Ù]V·%~åËî¢ï÷Üï„Kj©,\\#\0VbÄ[∞©cªymdäbYé6ü•Ikf˜,Bèîu&ªîûõSËsMÛøtøa∏óÕòc‡du´\ZÑsnWhfwûÜÜ+om∂0FO#∏^WvàG\0„◊<öÁ¥ÍMIhëm®´3\nXLlTı\\¸çèZ”(ÆåK|ÿ‡÷®‹DA+èõåWØsùë1ßZäG(\r±ùJÛM%d`ç&Ãˇ\0¶Rlö≥˚MfµÜ#®©“Cëäb7bó U®‰\'Ωe[π`_èéıî¢2ÍIÔSpy™âÉS#„≠a$4I»ß#ˆ®ÀR+`‘ÿc‰|ÉTß|UâUe÷êBe)§»˜¨ÈÂœÀû*Â⁄0SÉXRKÛùƒ‰zWJŸÈ˙ûôin∞Ep6Å∏‡ìËO≠iXÍˆzâe∑êñ^°îèˇ\0]pØé!\"G±Üˇ\01#–˚◊?póÚF◊6∑“¬êπÚ≥!‡üÂü ∞ñ\Z2÷˙ó\Z≠oél“Ó=g|∆$Õé√7)‘^1¨kÕ}¨œq)mÚKΩ%sÜìÖ8ÆÒ<k©iwg˚f…÷e\n2™6<Dt#ß∏5òç¶¯´]’Ï≠‡é8Ââ\r∏H∆YÅ¬ıËyÎ[¡4î[ÿÜıΩÜ_ﬁm”¶Å-§hÂûŸﬁF˘∞O˜_∑_~ıÌ6˜vö8Ü¬ÊEI\nSÇw‘ö‰Æ</,ﬁ∏¥û)-&∂ÄaÅPn¸i∫ÖÕ¸˛\ZèY∞éK‰πÄú3Â¢…!à‡ÑVU\\jÈ}\nç„≠é⁄KÀy≠\Z‰∆v„j≥¶	œ◊∑J„Ié„]’d”Õ≈ΩÀ¬òé#¥3„9œ@y√üÍW+¢ÿ_8N<√$,dlép OQ¿ ◊A†xÓMVÚŸ¨ks!fé›àBÿR¸Ä¸hÖM;1J\\⁄≥ï÷|)≠⁄µ≠¥,∂ÓDÖ‹å√\'$´ëËs]◊Ü?µÔo-Æµ!Á	<à\0°ÂN=zÊ∑/Ù95ıy\\B/#+:\0FıQ¬úw…ŒzÒ[\Z&ü=ÖöC1fhõbùŸ˘;˜«Ω*ï¢°~£åfjÀy·õª{dG∏—‰rπ+á∂f99˘óØn+Ö¯Õ‚®LQ¯zÿí·ñ[ìåˆGøØÂ^â‚Àã{.9Ó¡˚r˘ì∞\'*∏=1ÓE|µ®]œ}y%ƒÛI4å~¸åYàÌ…ÆufîﬁÊ∫ß FNGZí√U¿ ÇR§ò≥ı£òßcEXÆÌÈW≠Óu‰ä∆IÒ«c⁄¨≈p7úU)π∫‰Úi˘R£v7tîóÑxßâŒTÓÔZ)¢5:Yn‰∂—€O˝€+ aå©œ<˙VS^Ôï\"ô±®!Wv9=ÛU¶ª,¿;bùcn˙Öÿd?u\0…8©úñÏqLK´CjÇ)âÅ!Älï#÷®‡´ÔäñyôÆﬁ=I®öAú˜¢LzÙÆØM◊∆ù•òcµÄÃbŸÊÄKm=A¯Æ=JªbF+ÿVÜñBŒCù»G/ÙÆzÍ2VëKBÚh˙}ﬁóop◊ÇyeB1år¶π…¢2G(Y2»~Ôlz◊q≠i∂ip\\‹N#ÑczÚ…«{f∏â#ÉÏ„täYäå`Ç}q≈eJ| Â4f\n‡68U€áWç≠”t¡ÜÎüaP•®x∑≥¢ÓŒ–O4Ë–€¥~|n†ê¿Åµ¿ı≥≥–õ\Zóœj˜V∂∑dNY6p9\0˛\'¨xnÈæ ≥ùWœ\\ì$n0`Ó>’õdÒãßëÉ \Z6∆9«ı˙W\\ﬁ1äM:Œ;ªxYÌßWåf\0H∆pFG◊ÈN	7a4ŒØƒö.ïqkΩOüw[´{@§\r£##øLWòOΩ‹+oäQò|ï¿uÆ˝µ›?R—Æ&E1€∫9H„mª_PÀﬂ\'ú◊<íﬁ%≈Ï6^B3,“4\r¬¬í¶k¢q˜53OS≥åÃ≤ÈWëZy\n>À\"ˇ\0≥aK‘n«NôÆ;ƒ∞…¶xÜÓcoòÂíDÖòˇ\0∑^:÷Üü‚¯Â“µ∏]ZÊ%ÚÃOÖ3åGnä\nãZ‘·’,\"[iHJçÒH†Â«8?\\Û^u:ngCi£î∏⁄n\\´……;vÛﬂäj∂3éH¡ùÒ&	SRàï@F«<ìÈ]I\\≈Ó@yaÙ©L[¿pjFÑ¨ªAÈ”∂G≠u^Ù∫ã4˘\\‹!)≠èîsìËzcÎN⁄©CB∑éyn∞ën≈›è(:={~z«¬QIp!µíXı!9hÊ\'	∞Ì»Œ„è≠c…ÿ_∫∂â¡Lt=\"ªèxàY@Ã∂≥3 Z8÷0>V‡ís‘‰zR≥NÃL…Òâo\"Gr◊–JF¯ÃP)VfŒzÛå˛5Á∂VRÍ:ƒqïO*∆ªéI≈z~π}7Ü\\/ìÊ¬ƒ…\n‹sÿ˛uÊñÆ\\¨·ˆÁÜx≈m(´‹qz\Z#”≠Ù›VkHDXŒ÷W9√Ùl„==´6ô¡⁄ººV•Ó†˜Î⁄2dH¬nI„™´ ®lë–É÷≥ïõ–/†≈∑rªÒ…ïW„ë˙’∏˜,äÕáqÅ∆F*O!Y°˘ªÒBBΩÃ–òì°Õ? ‹=3WM´mÈ“ü$8„ÈT–”E÷KwYﬁRi˜IÁ»“®V`–\n“ñ5#*Ä`åc•Dba∏\0•XG|TÚÍ>bÑê/ŸPâs)\')è∫=jRWv2*ÔŸ˜3¬å‘f1üîpi∏Ë!HËc‡g⁄¥ìO±õG{ø9¢ªèÂ1Á®«·Eú∆ƒLcçJÅw≤‰°Œx=≥“¥5´õY kk$¥ô!Uìá#©˙Ù¸´7ëÀ„-»œ≠4£g U∑ÑØAëûÊòTúéıB-ñxÂê»®c\\Ö?≈Q*ñ`£©4‡Õ8&H*1üzv(ë•ï†é$Ñ»Qû9ÌäÆ®XóÅWo¨\'≤uÏ.Å◊úÂOB*ôr§ÅÿRKM\0|q∆÷≈0•¡˝z. í›—dUV 0¡œ≥;LwC`mQ»≈OµƒVÔ2@\Z?t$eÔÌËx©€rä“oíbLåzû˘ß€Ÿ…$çUY{7sÈWG†Y\"Á9:˝\rX∞≤Ü„Ã∏{°çC(ûæÙ˘“Zä∑z]›¨^t©Úd}»‚´l(∫ïœ „®ı©ÓÆn$ÆÂwd=O≠BÓŒ3n¬ÒœOjpΩµ%ÿz ∆@e˙R«0Û:´(\'ÜÈQ0√ØB)6~SÚû’v¿ëT∫¢ÜS›á\"ÆY∫3Ñí= F;˛5F29öµæL—Ωæ‡|ƒ˙“∞µ-O\"Üe@v0y¿ÎO∑dHcs‘ûE,ˆ«oopF#ô∫duÕhm”¢”L“	\r‘ßlmüï\0aìÓqöR®¢êÏŸL2¥ÆÍpA‹=*‰öÑânêE)qf»˛Uùqtí…Ú\\p=}ÈπóÏÍÍ‡®$„Èˇ\0ÎßÆ·–ûwÇ9ÄåíªAœN{”e™ƒIìûVíUî;z“G âw∏§sﬁék $2gÛ˛zU√f#ÿ∑Sm·v©\0˜¨·t¨Q>E\',;üZ”È≤˘3êÔu$ﬂæ$b8◊ßJÊ´9-á£WOéÆ\r©π!\Z‰GΩó?/9<v¿¶Õˆï‚≠çŒ\\;\0†lT\\‡RM%úí€(û)`ú+o)∞Ç\09¿ˆ9N˛˛9û 5å$≈ÅÓ†í@œ~√Ø9) wFö$h«,÷m#yﬁ[4ÑHpÃ1ı‚≤å◊ó˜w\0grÆp†(‚Ø~Â-Iwåêw±…çQº∏∞X<Àf9p‰ın	˛•](ÆmV¢ìeuvÒo∆m°˚¯ÏX‡z“7Ò_Or3´€©BÑrHÎü πo4»ºªéHΩÛÀ¿î;;≥◊Î]50∞ñ´ré¨›H∑;·ﬂï9gaÚÅÈÔQ€∆ödÏn`ë^y0Ñ\0TÆ	<u‰Kiw\r–ƒ¡ï“&dp§ë∆}rqUue∏ôÓÁπàJp§¸¿Äc‘V¯5ÆWπ2Ó[‘„¥ö Ú•∂HBœπÉÉ‘ŸÖs∑I\ZK$pHnT Ë\0=@Ù™Ô-ƒ≤ŒÚŸ˘©¢∑uärÚ§YsÛ»Æ‘¥%€KL¢Ù;B†·c8Ê©N®ffçJ©?(\'\'bXä(? ´¨l“˜4•±H@€@‹±©ÉÉC¬C¡»<äë,%ë]ì;T…Ö	åzÙ„µXç·Ú]é„ ‡/osö•ü¿ƒ™û§kRﬂMñkW∏â]£NÖ‚¶mGq(‹[KÜIbx $â»rq]ÈZ}‘b Œ8^ÊPgyßoªÚ„h>ÑúèLs\\ı¥\0¬X|ÏÙU\' Jº˛ê}ù¨oTãà^eF~UFrøå‡‰ÓÜ§ëìeñÏìM$m&3‹qé;fªè\nZõMYlgñ9nÜ.Y◊∏ı5ƒ hÿ±}Æß©≠(ºI‚%”\r¨W3=∂Ï2Tı˘OnıœV\r≠\ra$&πwmkpˆ∫LS@•Ao8a–‰í?ûÙﬂ\rK$W÷—%€2]LÊrÖ” úµS‘“Tù\Z\'ï˜™≥ ﬂyõÔyÁ•W”Øﬁ∆˛&BÖ“E9¿…πı¨·xÍÅÎπÙÆè°È∫D[¨m¢å∏Â–r¿úÚ{÷Ö á∂ï‹§d‚º˚¬æ$∏HÊ∏∫ú∂ú |©ÂÅ^:UùO‚EäApñ—∂Ù‹GÈ¿ÎéßÈW\ZúÛ≥‹\Z≤54-l‚uÛDQì‰Fí†ûº˛uæ˙{^√Û∫àp”ê\0Féı¿⁄xÇmNÙœ5‹´ªcX‹çåWÇyÓ9®¸]8h≠Ôb…Ü‡Ç1ÇIi<{éıu˘e~¢Ö÷ÁÆ¶µh“«Ô&Oıx›F•´¨r‹˘;¢$ßò3‘`ä‚<-!≤µƒnd#ro?>3€∞©µèGpÔkqZ<f˘Å\'É¯\Z¬ù™>DımjXº∂°<õÌ.Wcú¸Õü-}j’Æùï˙√	,q€Éí:~Êô·ˇ\0[Ívmwsso&\nó€¥Á#–t””∆^±ÇTÜÚ‹§rˇ\0|Œàw#ﬁä¥ùÏ\\Yπkß-ô$‡ƒåLj‹∂iöñ±ec\"+0í·πH”Ôﬂû¬πOx„√ia+≈t˜éHeHÚSv8œn2+õ∞Ò´‚X§∑¥≥”Ü°\n©-0\'ûx\0s”Ì\\ÕIhñÖZÁ†\\ﬁ^‹îõOÚÛùáÔ–í;Û⁄•‘µÀ-2%óQö6p§àÄÃÖÄı&∏Ω7@ÒN∏dΩ:ÙömÃ(mﬁ5á◊í ÁØZØ‡Ø‹X¯∑PMVI˙≠“9m·≥í3‘é+.Owrí‘óƒ⁄û≠ØX8[?ÏΩ<»•gëIú„‘∫3œ5Áws‹BTˇ\0i}≤êô„hœßj˙Qh!∑ëÆ∂ò<ñÕ«Á^-®Xi2≠≈†\n•NAl„TÂm–•™2ÙIXﬂ§¡<Ÿ∑åÓ\'éı“xæMaÙ{Ì^8Ì◊>LhºnûGı¨›/FÍpM$±Â≥*«ÈÉí?\n”Òﬁ≠ßÍZ\\v·õ1∂Ë∂æPí9lvÆ®N-ìcÃ‰|Ú\0…¶°\0+˙:π5úVG(ô$3Úˆˆ™≈írA‰åt≠Øql]Às#ºèñsñ«sB∂A=Í\"õqÉ…Ì@9Ë(∞V—¥˘êôM€aa\0çÉ\'ís”äπ˝°≠ÍQ«y3<°V8˝\0(¿¸aC#BHÈÙ≠›:Œ’ç“Y>“—<áﬁ‡{qQ-Eõù#Rø∫vL@a·1¿œπ®/#ïm÷9TÜÄ]£¶:ÉÔ^ã‡ΩYÊÍKa–TV·èfaÎ]d^∞x¶[§Çe∏‹Ó·pw„⁄∞ˆÕ;%pz	o{<»â! √Zl7í« bw\0G∏´G]—Â“5ã´c±≈Ωå«ﬁLAÔY2.F{é†W_.óa~«[Õuß@”»´XÜ‰ízV¡	,Å:gå˙UX&ì»|ºÁÙíæÛﬁ¢qπ\rã∏Oj∆p*ª±±‰≤ÁÆ{÷å:}Lìïù›!ÚÀ9QìäÎ%ÂΩ∆ÎxÛ*ºdG:.\n8zVáiöH\n»3	9\rÄpsÇk◊ÙhfKH]ƒh¨Åà…b9œÈ\\◊nV4m$yº>\Ze¥v”™…<§7›ÌËOj£©^[X*.∆:≤î\ré;Á]èãuK¥,v—´Kíæjﬂ6=•q)cu¨j‰VÛI¬óP≈ø˙‹S◊õ}=x°2H$g9≈Zπ∂πÖÎ#oﬁÍöMñù§¯{œπ∂ÑH3øzèô≥¿˛UƒÍw∞J“≈µPÜ…\0‡¬∂∫‹îpsÓ∫Nßﬁ£f›Ä2jkê<÷ldëÓ*ëò`b¨EêGßEu™À\'R›•-ë≈+JM1ü<˜§$zo÷ÇÜíœûx¶ï9ˆ©ôqÅå}*3Î˘–$1ÛTÒ…ÚÉÈQÉ⁄û†cü¿RG9L˜5Xπ\0Ú~ÇßvzTç d∆àZHŸr3‹T¶B√ûòÏ*,”ÄõŸˆåÚz\nﬁ·¥YÅºÿÒ)&D\'\0?ØÙ™VõÂ€ºKâ\nK¥ñ›–ûÿ≠/⁄G=◊ürÒãx?xÍŒ0Ùπ≠»S√sZJb∂ùÔ•»é,£˜ZŒ÷tH‡‘ Ç+v∂íUF8Í)J◊–w∫‘≤öéõˇ\0≈ı∂¡ˆáî4M∑ÊÿOLÙ≈RáF¥øºóÕp‚›à1ólûß€ﬁ∞.ëÑIC)Ì]∆ë·˘GáÊ˛…’V[´òA∫Ç[|p	#qÈ◊Ò´•+=LÂ‰p”E/„9aë∆8™≤F\n‰˙üz–{ÀÎâaëD‰°èk\rÿ˙VwôÜ	0eRrN9ùÓ\"o∫Il`Ùı®$n8‚¶ïêèê‰gäÆN)°Xi» ˆ†í;”[û3H	ÈI°°≈≤=q@ì⁄ò\'È«\0`u®e!ÂÜ*2‰è÷óp€ﬂ4õA9=©å\'*ÁûyZúBdäY\0UD‰å˙˙TbB¨xc°®›≤ÑsÕ=…dm¥®‰ìL\nO“¶éïñ8‘ºåpw≠Ù”Ã-•xcÃë πÏO@hQr—ãs)à≈Fƒ‰˜´ó3F°äå2jß¥Ù˘Z=≈∫öAÅ‘sK‘Ù≈#ö\0\\Ô\',\n•’[$úcöjFœè-òu¿ÕHã>‚Uw∞©w∫>õ!Wªñê$Äé3^ã·ˇ\0XY≈ü-£ºâr#¿Œx;}k∆Ì-uó∂âÃm*!˚¨¸†˙vØA6ˇ\0Ÿ∫ˆû∫˜–‹Hø*êæ\\∏˚Ω¶+ëEπËÕ¨vóö≠ÆÖw-¸√jÃDçé\0\0ıπÍ=Î\'˛›g≈z©∞”õ}0êPí>@Ô∑=MqömÙ~)’°æÒ-‚ÆöÆPZ+m\'”pÙˇ\0\nÏı[ùB≤ÜM6Ë=¢0€3Û˚º◊]&”w2óëΩÅl,Ì\0+ˆ´◊$Àu?.ÁØÂÌ[⁄U∑ó`à√‰⁄†)9∆;W\rq„ç?Ï÷MvÒò§8‹íüîR{÷˝óåÙex.µç>6SÚÌòåz÷’&ﬁç›êñ¶˝ÂÃ!∑2Ó \'\nø^ı÷1; ÍÚ∑,®p†{\\≠Ô≈O≈TøY±À]‹˝k(¸GüX[ãOËWÔ∑âX`(=I„÷ú`ﬁñgŒÒÖÁ’sÃâNUOÀ–é?\ZÆs##ÉR«\"¢\0A‰ˇ\0ı´órñ¶¶ô´=§¶GÅ.àSÂ´voSä÷“‰Ç·Ÿ•∑vπ-òÿá∏≈s6s=π&0sÔÈZ}∫[Ñ∏î6ÃıÈ«µEJi≈§h∂7e÷obäÓ4M—»Ç?ÄÙÊ±ÌlZX•iU≤Ív\0Q[È$Mo ãr\0\n„Ó∑QÙ®]ÔM¿\rt≤J≤ÚÄp{JÛ‡˘Â1ìv–Âæ}ˇ\0 ;óûJªa,ìL§πbN<’®¥ÊΩæhW˝qc‘ıˆ´W66•-eÜ%I‚R“ÔÊ#¯HN¢∫%V-YÑwπz}GÏ)%î3,ë≤Éê∏(G∑µ-åó_gÀ[8I€- ^È\\‘w¨óÃ |•cÛc‘W{·˝z’u8†ïÂ0I∏®Ó6÷j2¶ªùíO]/ÏL\"eYXg8#∂*µïå∑3Ï∆2¿dv5Ëksßk*ÅÆŸÌdw‹Bº#?†ˆÌKe·ÿ≠ÔØ\"çå ‰UnHÌÜÏjÈ„9ci≠LjQ{ƒ‚Ô¥÷“Ó\Z⁄LyãÇ}EE∫5… û9Õvz-Œ≥™	F˛JffŒ{ı¶MßiQëäÓ)≤FÍq¡È˘◊•F•‡π∑2ï-Œf(|Ø€“≠5ñ\\7#µ[ÇÛô+@^”⁄¶ö∆{wYB~Ìè=\n—©&`Ÿùé†©|f•∑Ö&pÖ∆}¯#ÈWnl	s`ñ98¶Ÿ¨K?Õ«<\ZjÕ]~å†—¥7;X}≠O3O ‘\0é*w(◊jYN¬qD±I¿J~@ÿ˙V∑M+ÓK+Ei,¨±ß«äΩ.èˆ[G7P»Øì∂XŒ·ëÿÅ“®]Jaùï`\nˇ\0JíÀR1$®Ïƒ7=:ääMhTJ¬‰Gé7?7±ˆ§i\ZeHa«÷©›îíı≈æÔ,∂T∏˜≠ù.‚÷Wyb5XuÁQÙÕ9ZÊ∂°æÉíi¥ŸQ\n‡cÊ«|åTS‹«#»P0È¥ˆÕik∞∆^o3\\(Lª∞∆=™•∆î∂—G\'úéÆ†ÌSíz∆ú˘’ﬁ„íkAlƒ≥ÚãÛv˜≠ò5K¥Ñ[K;àrI@qå˜œ•eZÓHôUXØ∑jΩ	∑pÕ4o,ÖHPß=èΩT¢ûåî⁄ÿ~®†¡Ö‚*§)◊ }Íä“≈o§⁄œ∂R8$MAÛ)œLjÌ∫`(∆wÔö⁄|ªâªªñd“&âÌ*«Å∞O°™ûD±Â\n∞=¡≠€H·ñS-ÃåX…˚‹v®Ô†ÇÑiw>Í;\Z!7{2Ï≠tGß[ù±:É‰íyQû’–Æêê≈î∏)∞\\zv5CHfÇx„è\'åz’ıí$˝∞πbx\0pG•aY…ÀMãÉ≤3Øë6&Ëä.8oÔäuùæúmLìπ-ìÄ[¢⁄÷‚wÚp/\0∂·Ù™èj€ö\"ê2A=ÍÌÕ[ÿÜÏÓkÕuowgã{Ø-Ä·[øµd$ô]∏™¶Cå\Z’Hm¬(eà{\Z∫pç\rΩ∆£)¶◊BÌÜòdçdô∂´u≠ãd1…~6ìúö£hÏÍ≤¨ƒºm¥°Ï=EX[ê“\" ¿K}\Zπ™*íùõ”±≠>TÆ]ÖÑ»w(›—™ìZJR\'Ω>,˘ﬁbÛëûï¢§I~ÌËMïMÃ	\\«∆	Á5Jx⁄F˘éYF3[∑v€∑ÕÄ„®¨¨u‚ª©N˙òJ6v)¥,Ú!l6NqRX€)º˘<≠ƒ}◊Àﬁ¶UÃÉ#ΩYä‘,Î9pªr9¡ÌU9$¨Áµ˚I≠ıê¸¡ŒCm∆MPÅXÚk¨‘-ìT¥Y∑∞xŒ∆‹∏‘÷Ñ≈7êXßTÁx˘â≠I†ì`5pL∏‡÷[∑ó«Qÿ’crTı‚Øq\\éÄ‘üh…‡◊*˙èí°≥ûy©‚‘I!˜|á°• ÄÍVlı4sﬁ±\"‘Ä3öπ\r÷ÛåäáO∞\\º√\"êßÀÕ…ëCIåÊ≥‘ÀﬂòÖ\0û{U}icG\n	√.WæÈ´sñIã‘ä¬‘e∏i#êÕ«û{WDV©âú∆≠?Ÿ.›LÊçèOQü“®ZÎj⁄√¨vq•Rãé~ON{˛5≠®≈-ª…®Dø0-ª<û◊5œAmio™[IqIÛø/∑p«AÈUp[^õ®Í⁄)i{§√tóSçÂ\0té\"pWÈëëÔY^&_ÿ5ªmC√w—ÿ…%‡âOöv∆K|§qúg®Ê¥≈VZ≠o0∑Örª0RΩUòˇ\0#ÆäÛƒñ\Zûõ6°∫{⁄Uö	N“‰c8\'©√~ïOöˆ–∆|~(’¥[+Ω3«ñÛ§mDöï≤nÜM√88Ë}8Æß¡÷÷s¯2¬X\'íÊ	-R2ç!⁄00F;w¨Ôk∫n±&Ø°O<W;áŸ1LDå~…?JÊumXf°ss‡´îö≈Ô¶3o¡<úı‡˚◊;\\Õ¡hˇ\0T’πãû7¯q÷(tvXÊ-˛≠Â⁄2Oœ‘˛ï…hqYxƒvq[‹AxÒ≥dIŸ#b\0⁄{6?Öc¯É‚&ø´Ís[¬$Ç‹DUÏÆ\0l0\\1Áúı≈qVöåˆë][HVhÿ2±Á}j˝£J“w`†∑Ë}y§Nÿ∆Ï“HåIïìhaÍ?ó·V%ôt˚bZEww%Cúg\'8¸3^!‡œä76¶(/‚\r\0…éy…˝jÁà<_q™£\\µ‘PÀ\Z0H„lÑSœ<ÚH„◊µcÏo+ﬂBπÌßRß≈OjsjóZSÑ≥*°„\\dé∏>ïÂn¯\0zu©ıR„W‘Êæ∏m”Lr«Ë0?@*ôÀ∏4§÷»´5∏ÊìúsHëìÕG—∞zRì∑ÈR$2¶§ärI®U¡84π≥≈;ä∆ÇHX\0;Ù´≈FpHk:)*A*⁄Ãƒ`û3M\\V,¥˚◊û*Kk∂¥c,.È.VSÇ*íûFIÊù»oj´]ânfÁöXë•}°ïp3ñ8p==(/¡≠SC6E¥CÇ˛+ë%ƒrïöﬁNqﬂ#‘\ZdíO|Ü0™À Å”◊N›¿G,€K!ä±¨±óü˝^8(0sX‘IÇπ≈\Zù›‚≈«ñ1¸*yØ#äÊúÔBÚO©¶-!xUm1QÉ‰8≈(B—*‰F!˘ùÇê~ÈÎVbæ2O‹(è\n™›zSÑ*˘Öˇ\0y–©„÷†Xq⁄ü*blûv[≠FI-\"ÚU€(ô˚µG%√ª∑Ã¿fÕ[µ_$$ãª+LzS¢,ó˚„åïR28ËÏ\rùFü·óõ¡_⁄vZüô\Z3ΩÃ%G…≥êFy¸+ìA5√<pƒÏ¡	!3˜G$÷ﬁùeÀ´I\ZhÓ§≠ ∞Ú‹å√ÚÊßµ≥m;ZﬂuŸ\Z‹≥;:˘»Tèª¿∆zÅöËKô+3&Ïs÷–∆mÊ2dæ—Â\0ÿ;≥◊∆3R¬∂Ê\0ªŸ_y›«„å~9≠¥ﬁ— 4rd/Õí£≤öõM”¢∫∑ºóh›WpO\'ûµ=æÜKZ\0ëæÂ;¡ »Á˙Tf.3Z—ÿÕypÈlûk¢¥å˚£©®E≥\Z_*B`6>^ô4‘IÊ3Ä;◊$˝k”æZy◊ó2ã®#∏∑S\Zúngø=∏Æ\Z‰∂Ä^F≤	A]pUG Á–Á•t˛∫Åu9 ‘.E¨ê∆≠\0pT;nÉ‹ìöôE±¶u√·ÕÆgº’/•íiÜ›»6·…ÎÓ:Wüoi™{€◊ÜÔô*À«„ÿ˝+ÿ¨§πmFÒ<ƒñ5#ûF∆Ù¡Î€ö¶û—ñWΩπãdÚ#	F¸¶X[åÛ÷ó2_Ïﬁ«äx÷[∂ºÜ⁄ÊÒ•ñ%(Uc⁄ÅA˘X}G?ZM3A˚Vák;3ÔíiDh¯BÄNÆO<Vñ±¶XZæø$w∆‚<ªKS#nv9˛\0+.…Ï,-¢_26p]Xúpr2ßﬂê~ï¥ómÖ},H˙U∫?ów∫√:≤ï˘TéÉ#◊˙VYà¿⁄E^öˆ‚ÓÈÓ&ì2I‘„ÔÛöí+q(,N¿ÕÅéq«•%+ï\'˝„#êT{qOÖ\0ÏqOPS’j∑á=á≠; Ê2F\0<––∞«lw≠[hŸÅ 0‘”ûd(≠ L©‹qú0œèùOP±í# Å◊=M+@°ANΩ˙äø1ÆÏÚ{R<JA„÷ö@åø#Ô¯®ñÿ∂z~U≤ê)Npz‚ö†	ÉíGÃ1“õZç≥0D	ËH¶ÀÕªG#ú÷úêp6„ûÿ¶<C¡¶*9@∆í-›G=x®“Õ¥ﬁµÆ÷ƒØ#ı™OÜ@sèzó≈\"ÉDUœßzg;ï~Ò∆{f¨Ö2í0XRK	ç@s≥éç„±√â%fë‰@TÜ9û\0®ñ&8\'Ä}+ßÑ\Zl∫üï{§∏ƒná[#Ø◊•t> ∂∑O\r[ô≠cIÌ›†ﬁ\0Œrœø#ÈXŒ™åîKQ∫πÁ—¿Q√8·1ªépMu÷:éô¶iÒGï∫3{§ëí#Ü«Æ+õ∂)}S…‰ÄJÔRf\'éΩ≥WmloÕ⁄oÑÕÂæÀp®˜Èé)T\\ÀQ≈€cbÁ[ÇÒﬁlÅÅ◊a@§Å—á•e]ˇ\0eΩ≈ª«F$BO<ÕiÈ1i∑),wé ú…Â©ëˆ∫gë‹vÕd^,6ìœik*…êùÏ t¡ÌX¬coBùÏJ≤e7y,2§éΩ©ÏÌm9Îﬂb›#∏EÏ%/Äò˘v˝j´3DÔQ‹zWJ}‘äHn‡˘pzc•Gïnº’èô€pÎÅOU·ôzV®ëdÄzg•=p1N\r∑ï˙‚£.N{‚ò]<„h\0∂sÎH˜rR6s±I*j¨[\0t¶œ|ÅI§;í≥dÇ=)æf Q˛TÅáUÈëLv»íOJ.$ÛÉF\'ÕÍ;–ªƒeã¸πË}i©)Xô\0Qì◊“Ü$*Á\"•†∏„\"ñ ì«8\"ù\rÃàXGåπ˘Å‰\Zm¿1N·[#8Œ1ü¬ÆO™(∂∂∑é4)	2ÀÛn`˜VrW[µ›åäIÂ∏-ÊîqÛÂR	ñé‚ü∫Wé}qYÈ!ÛÄÌ ˝1RG,qìùŸÌÈP‡Ì3®UFm†zÜB¨ﬂ!mÌ‘ÂQâôÜ6çπ‡„°•gƒúäqV%à£oB8´ëZÕ2≥[∆Ï™ªõ8¶°XKÂî‰„$÷Êâƒ∏∑%eoêÇÿO∑z©IEs0J‰z]Ñ◊3ÜQº°uV=q‘~Uv˚JàC·dïÁ+µOP;’§∞˚qëp¨>P2œ$„•mÈ∂˜∫≈⁄¿€Dq&RD\0◊˘÷>⁄)Aú˝ÊÖ&ûêôÒ!2∏„uı´>\"”--‚≥∏∂;•∫å≥‡‰«‰z◊£E†}Ao§π2≤à»#?÷∞<OùrûTGb6ÚÕkT[∞›\'πÁRÈW$X”wóç¿så’›#√QﬂI\n<˛Yò·8œπÌ^©†¯Y,ÆMÍJCI!ÄlìﬂÚ≠{ΩŒY`ö8ºXÁ#Ω/oÃ\'ê”æY+ﬁ}®¨ê òÖ√ù»ﬁøùs∫¶õoß[4Ò ±±vÄBåyaÄz˙˝ÍÙ˚õõ∏.\"HëZ‘»¡˚ÿ\'\0cÛ¨\rW√ì¿Õ+ ≤[Ó>T!rA=wÁ˙÷îÂwÔ15ÿÛœ	‹«®ZZ∆Òº∑\n]OÁìÈ¿´:mÌøë.ï{˚ªåÌV#‡Ú=q^èe·â¨t£\",ó≥:øñNB≤û}+Õ5›&V÷$ä8rå>E·XúÌ›–÷È∆D›≠\r>ä⁄Ï¨¯Ñ÷-€{7QëY¯π’.„ãMI<∆r\"1®\0‡zcö≈∑6êµ®m®I›zäË|6ˆ∂≈\nIpoÚ≠EpsúüaXŒÖ‰ôI]ÍE‚›ÈVÒﬁj7û\\\ZÚ@sZ^µ“”DS†Õ©L≈—Hå\0GÃ?Z◊‘µ∏µ≠8}™Và®⁄ó?÷∏‰\0˘˙ıÁSªÿﬂøñdäLíH~ß¸ˆÆ&ßQZEË∂‚ƒ7F#2»ÆäUÄ∆‹‡Áçd\"à7E\Z§è(\núıˆ5†cö˝åí sù›˘ÕUa‰ éU[‡˜´TÏ¨4€S∑≤∑ç YGÓ»e3d	3˜Ö@˙îr⁄\"î‹ Âò±˚ƒ÷4Ã]À\0Np*¥“22ÌıÕJÇCGUß√‰KLåƒ»Ca≤£\'†¸Î∏Ü≈u+Ùé¡R8I›∂NTÇ7ŸÁ•y}ûØqn§¶Cë‘EzÖ‚8≠ÙhÌ·πy‰ ÜSêä9Ï	\'Ò„M W∏IŸ∫Å’gí(ûhÌ$ÇF\ZEÄG\0è^+/X£¨œ%ﬂ⁄¸©Ç\r™âO›#∑N}Î´“°\Z◊à^Ë[ m&∂Ÿ#1Ò∆ØJÍÏ¥∏t˚H`å≥#*´û9«¯VúëåÓ»M≥Ê¡ßóŸ…,êœ!Ãç«¬söπ†Èì[j‹√lÛÕõ”zqÖ?7±±‚ãã+=_ŒÇ≤c{áBl‡é{wÕU∫◊Âæí›¨„éà’§íU;AÙìªIöFz\\Ë<_•h⁄µ™Í…ïy9\0C	¬∂8ÓOÚÆÉ·øÜ‡“¥∂ª[mÂ‰ »ˇ\0Î\n„∞Œq^wfów◊EgÊ∂@`£±Ík”<%™«i¶©i$îÖef#å/÷∏e\'5NËË„ºM.)càKN∆8¯À¿8œﬁ«5gtzïø⁄a-à«kî√v˙StÒêΩ≤À\nó8<É˛}+#≈∫ï∆ùc6RÏñT|0¡å„ÈöÕπ5‰\r£å◊u≠UÂöﬁ˛T1.FT\0[∏>á∑Â\\ƒ∑\\€Fêüô¬Ó`6ïÁëQ¯õ^πº¥çe!õ$∆O‚+\'FÚŸÃì∞Ó©\'´Ñ\Zçÿ9t:w‘-Ï-ñ6i„Có~wÊπ\rVI\'\"c ûÅG∫◊Eû$ÚC˝ç\"ÃÑÄ‡?\\◊7s}	äULâmF©ˇ\0\ntew{aá-ÚûΩ™S˚∞d0ÁØh÷k‘@HÃ√o›\'è¯T⁄˝¢€]∂\\‰0Œv‡‡~ï’ÃØ`0fbÌπõÊ\'öñ4·IÍM+⁄ïC!u»#Âœ&úß\0pAı´∏p–Àç¿úuk_M∏∂≥ôd/ mò pˆıÌY…jÚ@”‹( gR,úÂä„®©∫bLÔ≠µH&Ü)£πÚ~Ã	2F§ÄÙ?ô≠-#‚-≈º´»eÅ[nﬁ>e˛ÜºÊﬁ\\îÑn1»Œ2:÷æüqo∏RøpgÁåÙ5öÇãπnWVgsÒS≥÷tk´H œl‡ïaÛyl?«ÊHD≤Ø:˛¢∫ì471ÀM$,Ä©8$úÙÙ≈rËÜE*Ò∂÷¥gÃ¨ƒë\'ñ`Ui[ìéqV$súvÈPH¿qëVC‹Ä1‘Ê•ÖäNá9˘áQPwÇ=j’¥LÛÓçƒg)3D¥={Gi”;X¸Ñ1Ïﬁ@b›»>ÉöÏ„rñIîó\\s¡∆k≈Ùo\\i◊>y`QI-8å]eˇ\0ƒªà·µ[FH•‚·èèªè º…”ü3∞ô•©h60H∑{õ$°¡\r¿±¸ES∞≥∂≥iLÆ∆V¨ëúÄs¿Ù™zØâ-o·0⁄…˚ù™7ÎŒ>µÇ5/˜i+,	ª\0ûπ˛µPå§¨Óo¢ä˚N\Zmº˘ürÓìœlf∏€≠!m‚˚EıÀ	ã∞)∑ñ^«⁄´C‚k·}íV-©∞û‰{“‹9‘ncí‚È÷aÊH8«†ÆòA«råo.iR}ñ¡˜+®z∆bså◊´¥±›§0h\"∂Aµ˜íÒ¸@~u«¯õ√Ú⁄‹â!çFÂ›Â(Á∏≠c;ªrÏÃp3”¶)Î¬qäå‰7∏ß‡∞Áé+A*g\'qJ#\0ı¬£ÖŒ”ü√H«ûi&$≈v«ﬁ5 ‡˛T∆lÒü÷òXÇsLd¸pA∆i°ÿ0¸Í\"‡c÷óvHÔHe†¡Å»¶2ê≈qÕ	 !\ZFb:ÈHLï£é%F	Œ\nî\\G¢\ZÚ.;gÖS€ø\0úT±¿dêÉ? Pâπ”[k÷Ò›´4bD\0ù€pA#êk;Z‘¢πªf∑íWU #πÁ\0qﬁ≤dπŸä\"¡ﬂáÅUeb™ÎﬁíçÜ›À8}Ã¿ó-ês]vâ„≤∆ê·Ÿ¶AÂ∞^üâÆÕ u˙÷î)i&ï$Õ>Ÿ—ÄXáVÕ>[ËC–Ó¥ª;[˚FÚ∑˘º±4á*çúÓ«~?*„Ô’/uô#ïdÅ_`›œaSj^*º÷4€=(F∞⁄€†QCÔüÔzÏº˝ô{t¿åÍ°ÜH\0#UÁ◊Æ∏rÚÚôªßsç∂—ÌÔl› YÊ-Õ1ó\0mÌ∑‹˙V–4nTå◊ßÈˇ\0Ÿ0jWìÃ∑InK*|£ÁUÓß≥u¸Îœ5õãIodkû;r«hë≤ÿ˜4ÍRQCåõfaÁÅQπ9…ÈO›É–fõ(„åfπçQ‡zp(”v˚“dtÌI°¢‹p˘êI.ı\0 ì…˙T;±Z∫Üµ_ôóMÄ  ]“@”Ø–’MSLõI∏L»Œ√?+dP© Q∫´ÿ®FyÕKdånﬂgY“\"—á=\rWG„≠KÕnV¡®áô#ív(Ü&/î\n~Ìw7æ’#“ ñ÷Ó[à.c2&qèVº◊§≥í8=xÆ„C¯ç}ßh“È˜R<à±l∑éπÙ≈oBiKS*âÙ ”óEµäM?^∑íä3%€9`ÄW‘úıÆ.ı‡7-ˆlòÛÚÓ5–k˜ˆ˙î—ãtYeŸáld˚◊/*27ÕÄkJÛé—ÿ ∫±å0>n\r:;if,bâﬂ`Àm¿ı4‰GôÜôâ∆95bﬁ‚[C$BFáx⁄¯8»Ù5»Ÿ¢D0]Õo((Ï•yÌZö5‘\\	±=pW#>ıóp±ûb`1‘˙‘fã£`‘5Ãäµô”›¯Æ‚+˘^—Yqê@ı®Ì¸Es{™E6≥1ñî˘q∞ !=0µÕ-√å˘|±Í∆ö˛c‡ O–T™I\r Á¨‹¸Cƒæ[hÏ§é.∆€ Åﬂ&∏ùgVµæ\\iöLê!?}€9œ•b¡-ºQ|–~pI´ó∫ø⁄cÅ!∂H\n(»OŒ@ÎZ¬n.∆m#A¯®k6CQºΩÇﬂNB<«W‹„˛Î[∂û“4Ù∑ª’\'Û ∏V´æ¿§qó«<pkÕ\"öÙóÚdì’Ç”÷∑Øn¶ºÜ5õÌow¥;F…ÖÌ{ˆÆ™u\"ñ∆n2æÁIiy§ió∂ˆ6ñf„ÕÆÿn*=≤pE{èÜ¥k}\'KåDRI$ûeﬂìö˘ZIÂæπ/ &mŸ¬å\nıO\rxß∆ˆZl6Ãê…kÂóí¡sé<‚≥˜ß.Xé…jœçX6\"∑ôÈ◊4Î{+âeÂ9a¸ d’›¯[]BÏÜ@BéÁ]4◊0Èç\r˝•ÃB@Dà	‹[úÌ>ıƒÔ°¨!•…t\r\'OÇ6èXH°ù·/nfl.sﬁ†’ıπµH-¥˚KX‚Ü&%Yœ±=™øäºIy≠Ÿ[á≤é„,úÓÒÙê∑n⁄|P∂Ï+Ó”Ëhî*_ﬁ	’çπbi¥≤õÚ€±ÚHG\')2ØÃÑ7mÿ9Æü¬W6˜–∂üNímÓaêsè¨oh∂⁄d∑SY\\©Ä`¢±Á$ëÅÎäÁp’∂bôÖ<s⁄Ç¬G\069<ÉÌVbªí[?)òT‰1ÎÉ‘UxµYZÕ¨ÂÃë±,†ˇ\0åÊ†Her¢›rÍ9ÎQ+8ŸóÎ°qbâ◊s˝Óô®\"∏û÷‡M¥lº©\ZA>ï¡ˆ5rŒ1vÍ.\n*ˆ‹x>Ÿ)”©À£!©\'vkË\Z¬AsN˛fÁ˘’æÎÛì]´¯äŒ;âd∞ï≠ÀH\0ÅT.>?^’Êˇ\0Ÿ“Epœg…\'*†ˇ\0/•kÈ÷˙ë+…Gé6wY:Ä==k≥ÿ¬£Rfë®„°ËÒÎqEys⁄£ò U|	˘:L\Z°™«i!kÑ∏b¸±ï¡ækú∞≥ë†fäU%T6Ã∞œjòÃªæc»Î[BíR∫d‘Æ‹yZ:]˝m%‹»%Pø0##=≈Ù∑`â˘{âEÎ∑&∞-.¡%T®$sZ…qnõ¢w¿Ìﬁ∑î•}NKeñ‹Ü„ëPKf…ù∑\0˜ÈÚÀïŒ€së≈FˆÏ%›\"#ÂOj∫Æ\Zô” W;WÂR=j[ΩE.aái$ÓÈVØ°Ñƒ¬$„ù√ê°É4rÉÚúÄkHÚ…\\≠âû·\'EC∑ûqÕQöuÑês÷´‹nçF1=1⁄≥ﬁWyA<‡”[Öçh%åÉ!l‘Ü„cTˆDHéK\"ÖÁüÈD±¥2!»*FCîs©;€èQñ‚äu‹XñW\rÉªéOØJ’—„äÊo%«Œ√‰∞Æv	—Upr√“¥-n0·¡¡>ï.\n÷AŒ”‘ÎÏtÎ´F\'Úõke˜c¸+¢ãB6Ûª9Qô∆dÜE˘_? ±¥π•ºπ[π]≈îbÃqì]ç´Zk∑Aà#`±∂:˙◊N~¶ÈEún´¬^bKA9NZé\r˛`¿-éMt^!æU∏í¿BﬁvÕÍ¿ÔÔ\\‰W* y>’”Ñ≠\'yÕYö2“m\nwëïœ\\Tàí2or[*Ry\0t¶›â§tx£lÖ‰é‘Îﬁ33∂GÃ§Ú~ï∫öj‰Æ≈Ì64éMì∆v:Ú}´A·é8C€∏ëUé˘Ô⁄®Õ©:HA@™¿r˛b™ãóçóÀvœ;á°¨‘%7r‘≠°ßßC‹I,åñ˘ÅQ¸ÎZ=.Ÿey`ó˚V≠Û«¿@ŸS∏gÔVYò±∏ åÚ:Q*Sr–—N6‘≥uß«Œ\"ã¸àΩ≈fœ]8+‘cØ“µ-5‰EY#ﬁ\nûWÎY≤9qÜ€¿’•(KõﬁËLßhÚÆ•}“∆U˘Ñw≠€ãxÆ 7*ÿbπÜ±òªÆ:®ÌÈS√#ºΩ«aÌWZììRã≥D¬¢I¶K≤Ì!éE][◊ﬁ\0‚«z†\0»•Q(ßπöm/\n¥Ã»ŸV\0ÒU‘Û“û\0\"å`RZ+ww$ä(æWﬂÛÉ“ßÚ…$ƒ*ÓB?L÷{≥g≠EpÌ @Ûªg®œù6ﬁÂ)!u)Æ-Oï¿Fm√h<˝sXÓK…Ûsì≈jÕˆy ∆d2\01∏‰{÷të˜«ΩoMZ$= å7sÅ“©‹ÄΩ9≠B*§Èπ~Ó+@1‰ÖÀdG°™72Ànrô\0v≠ﬂ+∏<U\rJ—fÄÇqMàœµ÷§Y¬9Cûï◊ÿ]âX◊ò‹©∑îÁ éÜ¥Ùﬂõe*Ìí*Gc’bìrÇ)Ïˇ\0/5 È~$éÍ0Çkj¡/ﬁÎKîb\\ûïôwoÊ)„Ví»Ω?*äv\"6¡=F)àÂo≠œñr7Î\\vÆñ„Ã*¿eG≠wóŒõûkÇ÷n£äpA^ äRÿiü‚;;{	lÔ¥òÓfúyr\\	fOO·≈s˙é∞gªñﬁkî$Â‘mip¨GLéúu™zùÀJ≠pŒxÃ2\0∆G@1“∞÷WéL°!Ω´	÷q–∏√©”ŸÎ∑>’ûÁK∏ÛLêÌgt+íG#†˜ˆ©º+‚[Ω?ƒ˜WÖf,Û1,FA±ﬁπØ<‹<Q‹∂T(ç[8ÿ3◊ﬂΩ\\”Âí∆˙ÄbtåêSÚ∑_ˇ\0]f™Ÿﬂ†˘t5ºexöµÍjfñÈ–<èüæ›	«nù+íö9a+Á∆ËŒ7.·åÉ‹WßÍ˛9≤Ò>õlóv©Zƒ™ˇ\0(‹[#sGÎê9π=N}Íc)9ÅPà‰~ûH„<cÅäU\Z¯ì*ËŒu.^2\nπ9÷ìÍÜÊ›√†Û\\¸Œ85BÚÃZÑhÂƒ„®>Ü£â∏„öÕT-≈cÅ˘”YôyÎJå˜§f8‰dRLıœ•∏†·Å\0RcåU!Xy8ÈœΩ41»ûFûî…’C,€Æ·åÒ⁄ÆKp‡*e\0Ù´ÍõyÍ‚C‹hà®á8Õ&;U¥Ñ»¯ŒIÈH–`˚’E¨baÙ©Ñc\0„ú`\ZôalÛ“•tÙv ´ÃÁ≥ßZ4∂ì¢Aó∆WHL˙Tø4qï»GÂáÆ*%Çec9¬ÅÈ≈Kåé•’K˚ÿ+Z2Ü¡bí YX≤8˝+z∆6}«‰8úHŒÕû©é?Z §‹√JÏ‚M´c!⁄•K\"≈K&ÿÛÇ’Ωk≠°J¢≤·Ü@89ˆ5è&4 !Û–úSΩˆ≠tîÛ¥®©-∏Òéﬂç1·ç¶O+Â	¡=ÿ?:πmo$◊ÊE˝— 0V¡+ﬁÆÿ€⁄⁄jNYVÓ›ñ.v0qœÂXMŸ˘îµE{ÒfñËÜi!πÜ=Ö]?ãæO•f[kwCsJBŒª$$gz˙~ï‹_¯BMc√ﬂ⁄0,Mx(√ê\\\0Ät»œ^ıÁ◊zsŸ;§‡«2±SNø≠káßÀ‹ô.†e\nûzy´\ZÆê@ıÈZæ”o5Kãã{Uå∑ïÛÔ≥◊Ù™ë@∞G1∑ê‹Åd/!{∞ Ù<WiøLéˇ\0K÷Âëàí`∞∆‹Æ8\' ˝HÈ]SiGRUﬁÖ94µ∞“~ﬂjÜı’ae9aé◊ÍA„∏ÆzÊ∆{{w3ôWü$(«örF\0œ?á≠vw>‘![$Ωç|ë4Q∆è9…>°Ä‹0Œzs]H’ÙIbÜO!¶CÖ,@Ñˇ\0:4J—‘Ijyµñö\"›ÂÀN∑ñ–¿Çtè!Ìù≤GOº´éAı5Õ≠˝≥»◊”BÍÒ∫„bZ6Q¡Rzå^±®[Ge¶ÍW\ZUﬂún•<´)Hß®9ÔäÛü‹Aip“Çç<§4f≠Ç«CÄ\Zkkä˝íÀ≈◊zã[≠¨¢âã9i»fÁ*A=Tè∆∞¸K„õùe‚Hfdû0À àpx˚˜ÆmÆ≠%¥µi˘HìÄêXwt’;j¢ïaÍ•‰QêG?„QÌ\"›÷ÊãDZπ[ãYdµ∫VI7m›}s˙’óˆ{pÓd¬|Ñ∫	9û:Õ∫ºñÚ‰À<ÖÊËÏNKﬁ∂ö+_±ZMbó^tÖÉ˘ä6åcÖ=˙˜¶ÆÿòGF‰\0CúÁ©Z÷\"ó0«Ω›–2\0‰ü¬≥Óq†12∏¿ı8œC“ôo;à´ÿëÛ¬ñSπYé∆∆23ÈNçˆÁ=jO.Gï	RvÉéÙÙ∂gLÖ‡y§≠v‘ [gSé¶§xò3u¿<g≠¬r?ïh=∞!e#Ê¸øJóπKb§pÓ∆F3“¨5î™pc$ûòÁöøó!ÖÊVB©åÆy¸™≈íK‘kc(}»\nÁu°I=Ö±è\n¿ÛÛv˜¢HHC.|ékBX&máÂŒG¯To$ûx´±Eàf°î^ö—hrôıÌUdN0+©ÂôcÀq«NÍŸ\n\rß-‹ö‘í‹àQ¿˚ƒèÀˇ\0◊YÛ∆ ‡zı5;çËf4r¬™F—Û„Áˇ\0’Lú¨å˚µ<ËÅ>áö§>WÂàÔ»¨ö‘iìE4ë0…>_RΩâ≠=c]ì^6∂QBñ¶ËHÓ}Î\r¶!à9´»∂»ªÜ#Êœ ˚÷S¶õÊkR‚›¨Mu£]¿ëŒ†MEd¿„ΩZ2¥b!onc-G1»Nˇ\0S˙t≠O_€€¿Hùdåèó˝z…1BÁKî}”üÂSf⁄íI-\r»Ï,ÔåK®‹‰b´ó¡˘>l˙+íø±:}Ù÷‚eëUàß ä“ª÷ê§)\n≤¶‚]áÃs€ÈXÓ˘\"µåY-í≈$õ<∞7mhœN¸RbMÍÕ‘û¶£b—0`∏\'•\'öƒÏ…#<’-v]íÎ|Ô6»ïãcjÆN†t¶oiKasﬂä®V@€6|√í=™›≠ÔŸQÅ∂Ü`√pr>î7¶Ä∑\"g8¿‡T±<\"@%˘ìÄyÕG4s+æ˚fAûÑc»ﬂfK√∏v\'=hæÉÍ#∞,F~î“UJÁú˛ï<\0HK  °^FpOJÆ«$84”∏2AÂ˘}ì?Ü)Ñbú†c÷ùåZ°UÇ∑\0Ù„≠/DœÂO,≈@ ï°‘1)T=≥…®lhÑ±9,O?ŒêÅœ≠L˚ëazr~æµ	BIfÎBb„ÅJë4ùŸû}ha«Œ:\ZQï«Q«≠-@j;.Qπ•W‹vêrZ@3íx¨[(y6¸†êpZçÅ√yj@\'èˆΩ´≠“≠œîf	∏o√zÂÌŸ¬˘úÑF\0ÖÏ{\Z’≤y%øId}‡ù“)8πÎ.ecH;3æÇ?Ï›<ô»⁄—ü5∂H$VwáÊo∂I4˛CF2˘#µ^ÍÌÆ¨%@ÚcÈû;\ZìJf«!õ#µË @ÎÙÆ“QN˝MÓØ°Ø>©®À5Ωùá “8p…»=ˇ\0ZŸ”¨ê8.≠5¡>cñËNxœ∞Ù¨?§0K%±}≤.7»N7ìÈ]dëÃÏ]$G«(z`˘TTrèªZiñûÒ,Ìf\r∏ëÚû›ø*}û£ˆÑ\'cªõßÁU.m€Rà‰\0\\u¥R…p~„B\0\"∑•vëúã8∞qﬁ©¡‹]Ω‘çòá\'ß´}OÚ˙—=‘L÷ÇdV2¸ÿ*ß¸j‘OUXŸHÄß<WUöFwE\raÆE°é‘Å$åq:ÁÙØ4∏’⁄˙tªâ5Ü∆ºñño∆Ω;X≥í˚Oxbò∆O\\w√¡‡Î€	ZÎÃNÌπ\'Âﬁ#ø“∫h <∫ôN˜8)Ùxï.ﬁËŸm˜F≈πw-êYâ¨O¶∆mb\nÀ∞(ìhrF{äÏµÎ\'µ≤[)T8$éa‘>ÔÁ\\lˆ®\0WÓÿ„∑Ωt≠Q)ìO™≠Ï0$¥^R\0·I9nÌ¯÷}Ïw\r.Ë¬1íá9ŒOZâÛ≥FHMÿœØ÷°û˙YcTi	çI¬˝yÆyE\'°¢‘∑¶\\H$ñ/v¯»n3ÅÎTÆca1U™úg•∞Sqo( ‚=‰‡ÒœµiÍ–≈ßΩÕÖÃ5‹òÖƒRØÉŒG”-iq_[cLë≠“i6¨RÇQÉÇx„ë€ëY([å>JÇEhI1ÖCÆP`‰qÙ™±∫<,ô\\Ç[qOÅ¢$S\n€çªº¬‹6zLWm·ùÀU—÷K›HYJ7-ºÑåI(~¶πKr|Üê#üôYé^*}#QM;PàJ™™ØÛø\\Ø9<sWM•-Hû⁄˜¢iWZnéëXﬁF‚Fi—ÆCÅO\\éŸ‚∂uœ0i.Õv÷Óaeÿò˘‹éJ‰º\'Æÿ^¬Ø•G5âπ∏ÿ<XË¿Ùˇ\0\ZÍı[{)≠Ób∫∑rÖÛ“«Á+”>∏¸ÎJãﬁW&/C¬Øm§’ÔdÇa0ºÛFˆ<™∆\0áˇ\0^®jöŒóq»Ì≤BBÍT2}9ÕwöåÔ•_\\Ÿ8!í‚€ph2‰©SêAËA«Â\\é•£#[y∏ut\r®œ$ˇ\0:∆¢ä–ql—–m\r§˜06¢m‰èk\0N”ÍyÓEu˙eéõiß≠‘⁄Åhì&_(nﬁ	ùèÈä·≠$∫í÷ÚŸcäWm±ôeó˝¨˙{◊G˜∫VÄˆ3DíÏŒ\n©Œ^ı√^‚6å¨uZáétù:ö ˙	£ï≤QŒº»ÔX7û*≥Ò^©imö-œô≥Œëé?/Byù˝Ë∫c≤=∞G¿ÈR√ijìZ7ó&Óz”PN634¸H÷QDê«a≤Ú99I?}GCè·5ŒÈP˝¶Â±ì∑-Ç8qìı‚†ø‘%õ˜ìŒdë€,›˝Î2KáﬁK2´\0˛µ¥!hÿ´‹ÎõZŸ•4iµπglrt}+déM™âÂòc#ê¥k+àÓ!-0m»¡±úÒ¸i!H!2	>ı<ä;›”µãK9øqnÍ˚qªvC{JáTπä˙Ò]ô˚¿û3ÎY®|º`dÁÓ˚÷Öæö◊Q4ÚH≥ÖV8…•dù…‹œ‡í•Ä\0ú’ÿh◊:uºw6ÃŒ≤ô$i\\\0x˝kèû 6Ï‹@6Ô_jï°tà!åÑSÀ{˙QRÎrëÍ∫Æï§_ÈÈo˝ÜIdv±åp\0ı{√ø4…tˆe’æ◊mêYí 8\0Á¸ÊºÆ¬Íı÷K;p\Z)É°\\ê9ıÏûéHt∏m%πL,¡8ŒüÆ?\nèv\Z2≠ÿ·|m‡÷÷¶≥Y	%±ênG˙≥›MrqﬁÛΩ\\◊—⁄ñño¨ÂÑ√4Õí¿vŒyÕxóâº%˝õ$ó6í≠‰)å«»‹‰ıQ©}úo±bﬂƒ1:$^\\k\"Ö\'R◊ÈXö§—Õ4±«à€\0û£w≠T∑”f[Yn¸ƒé4„y?J¨Ú¥gnÏåÙÌZB	;°\'bƒ¨¶5#ö¨Ï@=?:cÃp©ÈLìékbX¬Ápj“∂ï•TWe$∞Ô˘÷s©<éµ=ï—µù$Ú÷L2∞;Éöôs¶öTh‚ Úƒ0Õ«î›∆+!$O8«,jÃ£\0Á5’^ÎPÕ¢Õp‚Êï|≤ä\\I∑LWß|Æ»6åqÌYRªZâõ4+Ar•@¿sÔP˝∞+Ì∆ÂÛ™ÇE(GSËM5In√Ù≠z9wŒπÿ›ëÕu6◊ˆ”≈cça⁄\0¿˘˚d˚◊Eê2„ÿ‘Î#√wÂ®*AÁí**+´òÙõ&ôµ.b>TyÿΩ0ﬁº˝F*[ﬂi\Z}ÏFuﬂ7ì∑Â\\ÑbNzˆ\"π=#Ug∏M=ßU˘Ç¶Ï„?‚MixáH	Ka&ñ\r∆q˝ﬂZŒåÁMŸì(ÛáàÌaáSñÊÀq±∏r–π\\q«¶k π9‡åU©nÏÖπ‹¡	+ûãÎäœbŸ‚∫õÊ‘KbXﬂo©ÁÅUïÚO∑Zë§Pºu=ÈÄO∑Ω86@…¿»≠ÿçπsJÆcPyô\Zt\'=zîÀÉ,GßHDcûµR·Çˆ¢·≤)q´>)ˇ\0j!~V ˝jâlrz–	4Ï+‰∫S≥l`0OØΩC#ñÆ «$v5*ºmÀ©»#\0pÔLV6ÙÔYM£>•y´E©¬€:|Œ}3üJƒöXåÏQv!cÑ^@#…i5ËºäŸò‰}‚É˙öØq	C∏0dŒûqZIÆK!%©fﬁtê¨PqÜ#ﬁΩ\'¡öó{´*≈z∑F€ŒíHèÿ€Óq«„^_3L âôTeà«÷∫-B‘§é‚{]E-º∞®í##Ö≠‘üBenÁsÒ+U≤≤µÉLéÛŒdmÕ@\rÉ”#ß“ºÇ‚Ey∆GúÄNH≠ΩV¬8Ø.ﬁfôCöOæ@ÔX,F‚\riVn Ç1[†+ûæ§TGÉäB€FqL\'u`]Ö›ì«Jå±-÷ïæ_cL\'=˘§““µÕKEïﬁ¬ÚXÄoÿ»÷Æœ©i˜zdì‹G#Í“ŒÃÔ¸L‹◊<N)ÀÇ1T§‚¨Ü’«ÁövÏıäí;ifœì∏QìµI≈EÂ>Ú•H˙‘YÓ$âU‰\0æ–zëI\"Ìv\n¡¬údw¶l¡*«JPW‰ä»ç√*≤ØÎÉ÷§-Aµ∆ws∫†í5*ﬂ/©•KóX¸∞rπ»P$KÀ¬Ë›\0‰zäÜ‚vöRÃG\'ìKsp± %ÿÒOû¬H≥û@=j:ï±\\0nÁ‹“î9ÂçnÒëÔSE0Ç9#xïòÙc’i±6#F®™—Ü+Åí{\ZT@ÒºåÍªH¬ÁìÙ™Êfé˝j&ëç-X3c$”^S∑\0cÒ®˘<ììKåûzS∞¡x–‰¶AÈêkA5€ï∏Çfïô·PäIœÀÈ˙ö \0!»¶3qLV:K[O˚{œqgàúcÀS¬ÛÎÙÕwWﬂ4ÿ†∂∞”≠	±âvè9≤¿zn’‰éO<S◊ÜOZ∏TpwBîS,Ÿj)É€¥ôãKéw\'®¸jn\\Óò„∫ÒêO∏™\nH»4¿ê3ì”5ä∫ï nÍ«My¨Y]Ÿ€-¥Cv†¨ˇ\0>Uˇ\0∫@Ï{RÈvÈˆÖK†Ò©à~8ı¨[8|◊∆‹û[≈znó¢ﬂ\\≈h/„7#ãzÓB1¸\'®4ÎŒRNF\r(´#;W“≠°”EŒï6œ.=Ú˘é>bå˜Î”≠rBÓFVävfNpËk∂ø“gky4ÔÏ‡ªÊ>C%îÊsV¥‰∫∑Üxôv„p\'ü∫\nÒ’~H>fj©≥œ-ŸŒ|µ%Ò…´VW≤Ü⁄Ô0?(zv≠‡Ì\Z›?¥m$Ü#àô##r1Î¡Õq©ß[€*j∂WêGÄæŸPˆ`;äà÷çDkÏ•Vπé#Ã∞¨õ¿. £zSaä›¥©ÓÑªJa|≤FI5(÷Æ≠ïgíxÖ–êñôÛÁúÒèj}ñúû)πº∏?f”pr‰Ìâ8Ëø•i\nn…\\s\\⁄ò≠wpBÄX¿º/Õ¿ˆ≠=1fë˜ŸªóK(85AÙïñÚk[IZiëévîÅ‹¶°ëo4í•À\0¿lêd]¥Î•Ó≥ç¯uW…ggYî¸§~Ü∂#÷≠Æl∂Mk⁄A ‹F≈X˙ÜÈ\\◊ç=¡u»R=kF≈ã…Ê∫£+ôª£ÆÜÍˇ\0nƒt¸EiŸ]oî\rÅäınµáµ≥±~?’yÉ\nAœ˜~µ©¶⁄»	\"FÛA∆“&∑Ñ’ÏÃ§éÖgbªxÁÆjBÂÅ∏Ÿ‡÷P∏í© é£Ω\r|QUò‰÷ÓZãbÚÚ’˛Û!eÈû†÷S|ûj±¡Œ@≠-ZÆRq*´\"üº2:t>’âqv&∏y®‹O›È˘TSWìV4q≤‹´ríWÉÈP¢Fõñ\\Éå‰w4‚€üP:‘WèÉñ\0<#üŒÆn⁄!Ó\\ƒv®V»…ßµ€ÜWé	=™%C∏´&ÂbJÚr\r6u.´‹Å“¶:Ë+\"›ú˘®;ÅÎö⁄∑\0ÁöÊ≠Ÿ@Ë;éïΩ,êN;\Z’-	hﬁä˛ÔÏ\rb&gîÇÀûò5Ω¶‹j~±3y\rˆ[ÇsŒ””…C&¿¨‹w<uÆÛBæ≥º”⁄)ÊF∑V⁄˛cÚá†œz‡≈6£¢.ù»uëuzêÍiqŒãµDJS\0˜ÎX1»´ì!Ûu#ıÆﬂMµû(¶”&Ö\'¥dÕº¸6PÙR{ëÎX”ËQYôÌﬁõnËÿû=∆q÷∞√b£vEN/r6∫t∂D‹y›Í*’ù‘Jc}∏*x8ÕdAw¥∏ îËA»œ¶kr∑ÒMÿÚ»…åïaÎÏk≤ä€r-ÿ∑uS–¨C9ÀÜ»?·Uàë˜p∏≠_éHÊ–À\0cdcæ=√-‹f°zbi∆A¥‹ùØŒ˙’t™YX%ûÂ\0aÛw†≤å‡ÒYÔrÆ‰Æ\0\'8©RlÂKp+µw34ñC˜î‡˚T¡›ÿsüZ†è¥u<Wd/C◊Ï≤\0SÇÒMâ»‚£\nƒb\0>Ùı˚‹ëÅÈ@w‡SÑÜ´ñ«J√8©Âó„läê„F9∂ûjq(5õã∏Ó+/9®dáwASo›RE⁄1’¿+QÌ%qÇ+I”qÈUﬁ>∏‚µR∏ä+ËHÊâ Rá¶iÔoﬁâ ÔPß∑?Z´Î`3eÅPÙ¨´“°X÷∂ÓÎX∫åa‚ H¶#ŒºAr~÷Büó•b¨Ãœñ<èJ≥‚Ù[¶;…ªˆ¨9/T«ï8`yÕRVf±WZñâ´óibOJÙ=7QYmDõÉ\0@<◊Ö«©ä0\'éªO&∂tüò&ÿI\0ˆÕ8VéÃÌÀ|§u™∑:®D8…Æ2€ƒ»∞Óï˚z÷tû9ç$fâT∞ËO#Ú≠π¢à≥:\rKQ£»Õ¥Ü⁄Pékœ¸CyƒåbgcÅ◊ås¯U®ºE=‘∑ªRFºlì¯9ÎûﬂZ•Øÿ:]≈í€∂Ñê,cÂì:ÉÎﬁ¢~Ùo√IYòRJÚ@\"fmõ≤l’cu\0„∂*¸÷O≠ø>\\lRTgß”>ıO∞ÇÚhìõhdréÓ2+ãíMŸõ]Ä‡ç¿åz‘Û[:\rÃ„#¯Ë*∆¨Qg6Ò™ò·b®¿∞œREgdûµ\rrªtX∑πÚf §\0A2îÌF˙;ÀÔ¥¨Io˘fù´q€”öi@≠úVN)ªÅbkñ∏çQâ¿9¶@ÊÖÆ:S√c5iXO©¿\0•#ß5 \0≠P\"é1Õ7n˚T´í:bòÍ\0»\'&Ñ«q†e∆j‚⁄´\0Ízûï^&\0`ı≠[HÅPI„5i2[#ÜŸÉÙÎWƒ.´»‚ÆB\"E≈K∏I\Zƒ0B÷…4gr¨*zw´€xœA◊äµ†a∏Éz\ZP06ä“-=ÑSé>:f•H≤y´AîÕjÑ\"∆–±!e¿«P9©6‰båÌ<“hAÖb	\n3öËÙk	Z&iÜ@«í√ØZÊ7\0‡Ü#ÈW†î√wÛ[`Ï;˝+ö¥[VE≈ÆßOß≈e©\\˘íIK2‡@O 	$c8˜ÕX’¸=\rï≠ºLŒd2Ó√$ë¸\"∏˜i¨gi°e6Wi˜Í+rÁ∆≤›È¢ﬂ…Ÿ9\0<≈∑Gq«√*5TìÉ–—IlÃW\0›‹SÛ«@=x™0]ê‹—ñ‡g)ÊÂ£ùào0ú‰ûsëP⁄yR∫á;$ÁÆO•vBZô‹Ó?·\"Ü”HY†‘‰ôñ·ÙrIÔ¿≈p⁄∆†oı)ne+$í(À€»œ◊äítë§ÀE≤>H–èo ≥Æ¡%pÑ¡$ı5¨êKR;∂Ç)GŸˆ4jX1‰69JÙü¯áL“t≠Æ[-q#IL‡{ô=´Õ°≤ík+õ±Çê\rœ?1≈uZÇ/Ï¥È‹‡íIañV\\®\'Óé9œÙ¶◊2‘I?è4…ı6∂øÜKÑeàH6…ìlC\0Ií9>µb;˝R{¯4-KMv\nÕπ Ä.œëè=ésÉÈ]&ô·ªã¿ST3∆–˘W >bø¿G¶ÁR¯óP≤—§∂kºÌªsê|µ\n[8Ú:˚“U‘V¢q{ûoØ\\b›n“íI]ÓHôd}√xNy+ﬂ4√®YÍ˜\Zmæ∫,Ê#\\O≥c\nH(q–ûæA´I•Í7“Í•Ÿº…•g\n0J™@@ÓÕ…ÆB˛⁄Ë€Ÿ[Àl—¨ÄºS:m$ÛGQûıºöKR-vRº∂Gªd∑>U¨¨Ú[ô¯2qüÀv“+$ÖƒÕøniURHÛ¥.y\rÿˇ\0ıÍΩçÖÍ€Àt-%íïÉJÉÓdcüAÕ2÷ÍEµ[vUd›ÚèÛ◊ú¬π¨Óç¨ö≥#∫∂X4Ë.Uõwò—J§}÷Í?1W4ÌN„KhÊÖôd$<N› Úq¯b≥ıëÓ‰8rÂäÌ€◊æ+a¥¯¢—÷Ó‚Gï•ç>Ã 0©˝‡}y‚¥Çob^ƒóm<Æ∑”ÑËó „ìﬂÅ”≠IleFW8¨Ë‚b\0œ8Œ+f“M÷f%÷ÛëÛg¶ÙÔ¯Vâ‹ñ¨[≥b »d*ƒ’å2»˚xûıf›aíbmÌ`Ú˜LÖ∑\0ÁÉé*ÚÈíòêºq†Ûc.…=ÈÿW*GöäÅv∏˜‡‘¡&Sp8=3≈k∑î-„¥ñ5›Ï∫‡É«=≈6[qò√¨ÅOﬁSê~ï)1‹XÑ+çÖïˇ\0Ñì˘è•Eˇ\0-ù£PÉ¿4Ú\0Ùj@™ßëöJ6„(›	˘ïÄ„”5Y◊ w≈Z#åsH“©ïî…ÕWxR∏≠%A–ÙßòUÅP3 D…M „˙’ã`Ïrπ„É]\0]ùÅ™r y>¥Ï+‹‰ÓÌàs«≠dÃ™oîÚq⁄∫≠AQC*„5ÕMÏ·Kùÿ¬åö z\rêÔ*¢2_€íi §8›¿‡U∏c0LÛE(å«ñéF…‡{ÛW—√I‰@\Z`€&(HRA ˇ\0ı˚W<™µ±§crç≠≠ƒÈπïŒ\rJÒõK°∞ºrpTH:É”≠CPçd‘,º∏‰ádNçéåWÛÊµ¨-ÔºWt.Ø¢Fh’P ˘N‹`qè|÷3ƒ8ªΩãQπŒ&§mﬂ Ú„ìÂhP<‡˙‘-ß],ëÏáôëU\\1€Íq“¥ı=HofgÕ]…≤`v¸«ØÜ•I¶,ö|k%Õ°Û%.9»ÌöØnúo≈…Æ¶ˆóØÉŒÓºÉÏ:RXY‹›]≠º6≈Âu;TÒëéµπßﬂ]\\^¥ ÈÑH•Ä√¿$ıZ‹\Zb⁄j!l<£tˆÍGò\0Xè;˙g=#ßz~“V≥‹N*˙ÕŒó¨iwjô#D X	È‹~TH≤j\r-¸&$ë|Ã*Ç	««cZ˛1’ÆÖﬂˆsI¬gU√1*2	Ó\'≤¥∏§∏ô£X£ï» #∂	œe=3Rúíºä”dhÍwö+∆--ö·£èÜ∆p9∏¨ù:h≤]*p@Ä{ö’‘º8SÏÛCÛ´(2&\nÌ\09˙~µ\"xj[Î8ö“—’¸∆gf$mN\0˙‘™‘î-qÚJ‰∫ÌµÑñ–€[™Ã˘eÛd¬êπâ>@v˚◊Em° í\\Cyv»ÌïGÃvÅúÁÚ™◊:e∑⁄eò9„={÷î%Óﬁ‚ö{ô–⁄	qïSåÄ{”<≥ª,8˛u}¨B%O†ß≠æCı≈u-u3h†Pí3–R∞$úbØΩØ•5¨üo~¥ùÑf»Âæîä¨´ÛÉ≈h…h‡b†c<Tr¬#ê´Ó äéd)_/#Æq»§u ÅV‰e .Œ‚ßÇÕn%» ˘`ò…o^(ÊKV4å‘\nÓ\\é’<*äFﬂõ$pj≈‘G\Z™L^bä(‡ÿüQPãglæ”∑=ªQu%pi£fiaSˆtC˜@^7Ÿ´7	\ZG/îäck7q˛5Bﬁ+¢Äƒ«(˙˙WKß⁄€€∞˚Zy—‹EÖVËß?œ\"∏Íæ]KZâã<wµgia€1,>R6Ü«Ÿ†ö|∆·Iç·Y§Cú∏ˇ\0’fﬂT ]√%¡Xˆ(àÍW±>ò\0V‰:ô∫è 6˛KÌ »¿”ÄøZÛΩ•n}Q™Q2a–¥x.ù.#ëì``Kì”Ø·ö—≤“¥Bv˘q»Æáf	r+üªö[ãáëú¨£è¬§”ù‚∏ÛñÎÚû+±”õé˙ãü[zh:hm—<ÒÁÆ…»Á*õÈq\\_%îWwõc√ŒÊ‡ê˜qÍi–ﬂµÃ∞˛ıòÅÓj£\\Õg4Î°°úæ>Ò>¥QçD˜ö±‘√†È0ß…e©e‹O‚jC£È§ÓpÉåeW ±`÷⁄4˝ÒSé\0Ì“àuŸ£WîyB5ˇ\0ñl¸ü•tß;ë°ßq¢AÂHñ”‹[;˜éC¸çr˙’÷≠§¢€√©•¡Añ_/Ä2{’”‚¸…‰YfEœ„©ßY¯í∆i„¥∫h|˘AµF’oR}Îxs-^¶rÚ8˘a÷.íﬁ‚Í¡ÊÄ∂@8]·{cÛÆCRx•∫íHcx‡‹X(ÁhÙÆÁ≈\ZÈÚ◊O¥πIÃ“Å;GøæO·U¸;}ßË∫t˜∑ëJÖõ.¨HŒ◊ÙÆ≠ynf∑9=[X“d—WOÜY\"CÁyxb¯…üÙÆ)üÇq^Ã∂„∆7◊⁄ÇÈj4ˇ\0#UÜÊ\0\0„ÇI¸1^+tî™ÁÂ8¨ÍO±\"Lcp‡‡Æ5µ´»íﬂ•¬‹HÛHã$¶Xˆï»Ô«zÁ±ï√k–4/Ì\rcIEø“#º”æX\rÎFê(˘MD#t–‰Ì©ƒÍL\ZL!U[É$Ú8,~¥Õ68åøøóf:qúö≥ë®j<÷vÛODç˚N\0ˇ\0*ß{esdA∏äHôÄa∏c ÷3ÑëqíhÌ|/}mkq&ùˆ ù≤◊¶ÁQå\0ßﬂ8ˆ≠KØ¯bÓ–≈e◊Õ.ˇ\0(? ‹éµÊ,$ÚÉ6÷$éwdÚ=*˛è|,\ZK±*§äÖc¿À+√O∆¥ß4≠#9EÓéÔKÒdüfìLû57î»°˜ñ¯8⁄sÙÕgj\ZﬂâS\Z⁄Or±±ﬁHÿÅ˛Ë»‡ù∏„⁄πi/Ó>Ÿ*õàÂ-`3∏Hœ≠-Ü£<\ne≈§¨D	¿¡‡èqÎDÊµ∞F/©⁄⁄¡5ıÌ§™ÚÕq*ì<Œ˝ûAÇµÙ!æ‘≠ÏÆÂû8„Àñvgåé¸q\\ºF˛‚K5h·Vf7Àª–:Ëº-•ÍÂU¶∑íXKÓc#a∆p7ı´Õ©)Ω˜5å’_xr„Hä}GJ∑K≈‡≤ìÛ0tÙıhórjn<´hÅπ◊À⁄0I…$˚\n»Ò\'éß–n/Ù’Gîcèçß¶s\\ÁÜº[ΩÍ}∂$X;∆Ó˜œµe>~Tí4I&uö◊ÅÓÔ†WfµÚÇ2∂≈ÿŸ\'Ü˜∆kŒ5]º?ß;ﬁÕ∫I±Q[vˆˆ«ÛÈ]gã~\'XÕ•‹ÿËÀ2‹<§}ßÄ¨§`„øJÚ‚~€!öˆy\'ìnbMk5∏6àö	ıë–\0úzêZ2«m∑(7eO\\˙◊[·ª[°+}©¡*©Âàã9»¯´∂}FÓ≠—¢Ü v£|Ãﬁπ¢u‘FÁ\r¥æ`1)aª†Ê∫I<%\'ˆr›¡1?(.¨>Ósﬁ∂n4xtãeÃRyË|√«sœ>µÅ´ﬁ<Zã›⁄À\"⁄Ã>xU∏Œ:‚£⁄9Ï>^ÜRY»%f\0æ”ÇEiΩÆÒ‰∆Èò2†\\}i]ñ_5X∞ÀÛ»$U\rƒ˜BTï‘(ŒÂÌéï•€DÏŒç<+=‰1FÅCr”&p—ÅŒyÎ«j•™È)kr µπggÎg9ÓjÂéª\"Í9ê.ùîó›ïcÁ“•ΩöMvÙπ5å≥IpÎÀc¯Aµîg%-JF=§”È~wóíﬂ∫ëà·G®Ó\ruû◊L⁄Í–\")ﬁrN0£í~π?ùRπ”,„“ñbÎô∂àƒú∂àä¬π‘ÆÙà¸õa‰∆ÒƒË•|’œ$CµM‚ΩôÙl7‚ˇ\0O[à#Y$0ë∂Ù>µÊ<º±í⁄‚XYCƒÂ\"ÚèW„\\û.‘g≥KµO¥iµcYN	ÎìXÈ;My“»ƒ@\'é{˝kYSÊµ˙.√ﬁÊVƒo#2/E\'äÑ∞~I#äa¡^ßu0ÙÎ])Y…vÇ√–uß3`q¡¶)⁄ºı>Ω®$wÌLë Tø,jué1m\' Ÿ‹6∂*ô=≈[å<ëlf~!z‘¥4B”ÿ<®ÏMYYFë¢]äŸ˘Ë*èﬁb)w·r3Leµb\08ÊîÜ+ê:ÒO`èi T7›e±ﬂÒ®ÑÑzC$ë’@∆G\'z+yÂç.ä\rÑ∞ËΩx¸Ed±,IŒ}ÍTRPr~î⁄Vø£‹Y¿ÛMqí@πå©·H=Ík˝jÓÍ‰€∞Æ´Eå!lûG^‘M§jÃ¿ÁÅÉö≈E\'qå∏%›™r1û‚¥4»£∏’ÌmÓI…2´êpvìœ5±≠Ëö]û≤–€]∑ÿ	 ÃWpNz{’π§Ï+öKó$Åœ•p?\Zd—ã{∑ç[z© 61ëÎNåû’e.3«Aﬁô#Ä8‰˙“aúê:zTo∆F?ZD2AÛ8®ÚÅ◊•F_\'\0ÒÌOt⁄K)Ì≈b¨†tÎNwg5\\g≠HØJcHc∑© „=:‚£n¥¿pEPŸ~6CÎû¬ë‘„$‘Q£<Zq…ÔöÜHf p1“∂tù&Mh˝üOÖÓÔ[;¢*\0Q˝‡s÷≥m–πeHåéF8¿ÆèEø’Ù&YÏ≠º∏cúI&Wåt-˝⁄“öÊzì&“–Ùﬂx,È~πÇÓ 7∏π_ﬁo]O˜3œÛ\\íx[P}v”ÕH\"ó$d/ñsœ>¬ªç#∆mw·‘yô\"ª`yVÛ∞‹g“≥ı˚(<A\"5Ÿ\n–|‚Ÿ…b§såˇ\0øZÍÑ˘SR2µˆ%’<1•øá¶˛»í’eÄ%€\0YèS»Ø/õ√Hì≈b≤≈-€Í ﬂ,ã‘OÂW4ã-GX‘n≠¥Åp∫kÕµÃçŸ∏˚Ò^´Ö4Îa3¢›Z(eÛP„ì»«©¨gRÒÂZñïè‘tÈ≠Ó•GákvÙ¿™∂V/s:™úeõ(˜Æüƒó÷«TΩi#ÛÁò¸≤éy…„ÙÆqnö4ñæÏò\'éEc∂Â‹°rÖ&aùÿÔPc5y”r0\nı\'©®Œ’\'\0¬ï¡≤©‚ÄJöñVÁµ@Õ˘S\Z5ÙçbM6uxÛÇﬂ2ÁáB3Ó2+O]‘,uó∫“¥’µµP3Ïï>Êπ-˝:‘´pÍÖú7\\w¢Ì+Ñœ#‹’õûM0Ó-ÛR}÷»§#J˜Hñ∆yn&Ñ˘Ò¨™±æ‚ÈüCTåD&ÂSÉ–‘∂≤CÁ°π%¢S ÉZzû≠‹	oq¡ÿUc”öó-lê“E’-¥¨»Ap»Àª9èC¸Í«î∆$õf8⁄s”÷™¡%ê∑ïÆ\ZO=HÚïG\rÎöÇk≈ëŒÿÄ„<˛4≠®7†…g,G«Z#fíUH‘1=çVbI>¶ê^FA™∞ëµg¶Hn\Z)“ ^2TªcgÛ¨π·ÚàîècH—›d)	‰fò–ÀÄX=Íb¨ıcvp22)¶RF:T¢‘ëí√\'µ1ÌŸN?ù^Ä1XsìM2p@©\Z,&Ïéï(,7fêÄæ{Qø\"üÂÁúai\nåt†Ö7æ‹rk©—|,⁄úRÜπâ%ãÓ∆¸OÙ™~”\"æ‘„ÇU_!Amπn‹◊e˝áÆùπÿ≠‘yr¡Û{√\nüi|FSo°…^ÈRçYb±∂ñ= •b…bƒ¸É]˛ànÓ4xb’#ﬂm·6;+€∑„∏¨Ÿu7Ω“`µä?ﬁ€8Ÿ¥~Ò\\˙ˇ\0˙ÎsG’-ÿµ’’à0;mVìúr3ÿì\\ú\\†˘iÏTis´≥π“¥À+ão%`ÂAXºÊ?∏\\Ûıœ©£ƒZ`Ω±{{I¢ä1ìÚì˜Ä`=GzÛ3‚Ilµ9·i%û¬3±d\0©çI˚Æ;◊A®Í7w~\'“e±∂[í•ê·Fœs^tËŒ¨3Ík4ŒGPøéÓ÷Ó¬·‰∑ª‰<ÇæKÉ”é†◊=O%îKgi;JßlÃFW±È]◊ƒM28uyµXñ4in\\aå©Œk¬æ(¬cº\0ƒŸFÅ=s‹ä⁄1Âç“õ:;;∏ìG±”Ætﬂ¥±}Õ$ñÍd˙6yÆvˆﬂG]P⁄]ãÀH%cåÉÈû¯ÆŒÚÊ;œ.°díK	îñe G◊E|˙ÀÆßkq#¢Ä%ä‰”∞#∑÷≤XÖv™Ëá&íV8ËÌ¨Ìµl€M,*§à_iÀßNI´óñ◊c9sÊ,d.`tt˜≠ﬂÈˆ∫uù¨´f)l¨≠ªÊJ˙XCW”ç§Ò24`&‘˘éYI(=âÁ≠Jíì∫dßu©ˆUî˙T–√b|íí0√;N=k%ÜF^8‡‰WSk‚ã=º†øm≤í2∏t+$YœÓ=ÍåZﬂÃ∞Èq¥ì<LÓ&pÄˆsèÎöÙhM”ﬂc9-4!∞∏öFÏ’’i\Z¯âóÌç+mÂ][Ê∑5≈ÕrmYV@ìÙ©„∏‹TP°\'äı\"‚˜0’æ•,L…4N&±ª$}}\rfú…ï#<f≤·Ωe∆=;Ù´sÂeQÀn1 ∫†Ï¨àzÍE$K€åÛUŸ$⁄ ˜Ø≈)éŸû6\"RH»Ù¶¡k	ûR6ÉÇÄÚjπ¨Æ *ª™°@K\03üCT§ò»Ω≈Kq&«qlƒ8œ|U$e⁄AïïÓ¬∆Ö≠Œ“Åâ!9«•O(H]8\r–UH v}ÄdìÅWñ)»*C/VëJ‰∂´Í ®\0iıÏj$NA+÷¥1y8mÿj—⁄¬)œ,ëêõÉ”ÎkB∫éTXÉyW!∑+Æ„ΩbºLz/CTöKã+•∏çôÜV3£Ã¨äã≥πÓ˛ømKOGvVtOÀ¥Ø·NÒ)1ÿ∆Â¿A SüJÚÀO‹\\\\•ÃüªôP!xé`c5ª}‚w‘—‘∞∏∑;ö7˚π˙äÚ™·e-πªöj√Øm„˚wŸ£∑⁄ê¨«ªÇF)Ø§5´	ÊøH£`6†Xˆ Ëk3ƒ^#ìVXaâ%ãí2rﬂ‡+„X‘n¥¯lg%Ì·r…ïÅ>˝Îj\nΩíÿ…ÿÓ∂ÿEhaöidñ@|π‚9ÓïıÎX∑I%∫∆cùdWBƒÉå{sﬁ±c‘.^’R\'}çódRMW:≠ÃÁkYM¿∆Ua…5’M˚9Y≤%™6·æ]∏-ÕXé¯sj)ÜÚ€•>;¸∞‡ÉÈ]Èß±;∫˘py©\"π!ÚÇπÀ{“GZ–Ü‡zı¶#£l„ÛNYça≈p≈è<U∏ÁÁ”∞Õa&iÙ tÔU£}›Í`GzYG»:\Z´\ZÄ£Œj û)1ñ®58…Y0êb±í`9∫”r:Sã3M2pF=hWºÑ(Ê≥ÓeQ”•Z∫pTëX∑O¡9Ê∑ä–A5∆‘V´z±Eíp}jÏèÚú˚V©∏åØsVÄÛﬂœÁ‹0åÁ5À»ªOZÏµM;…Àõp `Ú+ï∫ÄÜ„É^}hª‹ﬁM\nÑz;S‚ºŸ⁄=(1ÔIÇπ´ócb€ﬂœÂl$“ mdµ∂ﬁp∫º˝ƒm<¸ª\nÆ´Éí3J»UŒﬁ3Z)˜!£w√ó\"-B2∞L”24j∑Œé8Ëk–•[À›VáUÜXû\'é|˛¯êΩ=≥«ΩyEçıﬁôw›§Õ\rƒMπ$N†◊M·Ô›i:ú◊◊1˝™iôK»XÉ¡ÙÈúw≈u–≠r≥¡ΩQ∑m¶6•p”j◊˝í¯∆≤Õ∏(Íÿ¡ÕUÒŒõc·vèG∑µ›)Q2›ó!à?¬W¶EI•x€OÉ\\iÆÏwE4Î#HO(Ω«9tÎToµù3P’ıo¥Føfò≥√#Ü2dgh˝›ŸÊ¥ìã^Î!)\'±»,OzFB™O4‡2sVæŒçmº±‹i\\vıÕpXËW)úg≠MYKr¡è≠4¬jπS 1ú“6qÄx©\n`Ì≈3≈†*#m\0\nUV$R 8\0‘ã˜≥éi®àc.’è¬õ¥gúTÏçÜ=™\\/&Üê—& ÚjÌ•¡F∑?Z´\Z«\\˜ÊÆ√j	ÛN+Ph’ä`»Ofµ≥ÎU°à$`7w©b|Mtnâµô™à“DX	ﬂ–\ZnÕÉÊ¿$~u-ù‰±m;∆–\0\0ÛÅI>ŸNPÄ§ìèJŒå¨K∆2*=¿0†oué5‰û2j9W8¡∆3ö›2IDò‰t¶;”S>ÿ•aÍ0¨y9‚óq,0Ni@ÈåS∂e∑·Å‡c≠H—djr™yd#&–ß\n3ÅÔÎTÀÇH\0ÅüZhÁ\0‘»§å0yÕ.Dµ≤æx<”£ ‰dz‘≤€b\"˘˛,Tf\'U˜Ëh≤‚ÍcÑ»Dg}9˛µ^pÔπ#\rÂÉªÁúu´√Â™∞;Å8)U&XÒ–K¶ÄQI\Z(%à\"∑ò\0$ˆ¡œ‘xWƒN∂K”VÌ\'î4à¿ëº´p:÷∑,8åı5∑£•ËÄG\ZÔÜ\'Û8b1ú˝)Ù‘ÀR’µ±”Ô-§0¥”m∫√aúñ˘B˚`c5ä<a~Øˆk‰IÏÌ◊zãò√I\"ÁÄObA˝+v=+Fæ–ëûIH¢´6|•\'óª\n¡‘t˚I‡û8\Z£âëH2Ç‹è†9•	)i`i£YÒﬁkOol–⁄*)Xké‡é∏\'Ωo[ –Z¥∫úfˆ»™À¬õDd±»Ìíx•\Z@ìO[V∑â g ∏ìÎªÒ™ÛZ¥Wmag3\\Eü∫œë∏Û«‚k\nŒ5bÈé*⁄ïÙÁ∂ñ\r^÷¬Y![§bû{òÁêq¿‡÷oÖ¥´Îi-/‰h Lò∆XÉúÅ€µh•å)z\'€±KêA<é?œÁY≤ÈÛBÕu*èJ%M∑dT^ÖoÈ—[œl-•Y≠ÇmV⁄:Éä√ô§;!b¡e=N=ÎzÓë#‡pë‹`b´#*°∑sµm/çÿ’¥b‘ue[\\ºl†˙Ê¥m£ln⁄J‰ÿŒ(µSr=–¬V&!∞~r\n}ÎB¬‚Xcxv\ré\0ua¡«OÁWêŸ´£˘⁄eÕΩÍ∆Y≤(Ôq–˛y≠k[o6Õ≠§‹≤	7F·ÄéNpIœqY§ƒ§\r†#Ê≈j€Œõ\0âw<ãá‹3¥Ù8˙’àõ»6≥ÉÂÇ≤ÁÛ©ÔdªgUD,2U>Ó}Ω©\"áÊ‰zzöCBÚ:Ù§ÏQ°<„£=™f*`ä@(\0c4ôû¥√ ı®%õh¶-âh2ÒYˇ\0h\0y¶õÇ@Êãfip+6iI*ﬁÙÈg ìª•CxˆÌm`ÿ˘¡9Êï«c>ÂâéBJÚ8©˙Ukâ,ØR·¢+	\\HPdÄ1ìÏiÚÃ¨r?Ó˝qYwéfã6T‡∞„äÊ≠ÆÖGFKyuπº6§äÏvxPOP;ÒRK-›Œõö#kn~—Ê˛`Hœ\'”•bØõ\n	RO/<.?àgöÍ†in#π∂∑∏áÁÅ‰`¨XQÄ>º˛ïŒ‚£dks2“yÓ_6»“	\"aqi»Áﬂè ∫˚Àìúã#nˆ&6©Y„rÒÏ?<÷=¸Sif“ÊA¥È\Z≈uo≥k7Òg ∫h5©oœù‰Ó∂Z(œﬁ\0z˝Iœ„\\òèCX+ô˜œ÷Ø4Pº\0«b–Ç±Líàd∆∫m+√6Wñ÷ñŸS∂Á®‰ÆÏûzÉ”µ`kó$9KV/*<|ò1π«Œu»ÙÆüL—m‚úzïÌ¬-¸cŒKÕ¯VïÈ‘`\reNú›≠†€KsõÒwÇÊ#Né⁄°π\0°H‹Ì⁄üm¡\\¬È∫‹\Zç¨[i éH∆∆‰„;âœÆk⁄egΩk;ó∑Eb≤ÆC|¨8ˆ¡8Æ7≈⁄V´ßFö“^Ôñ\0Wr0…˝qö⁄u“®†G.ó9CGXO®]	®@ãÄH«=Ò≈Mqgæóñí¨àGñ°;09˛cı¨ªÅw©0ff3Yê˜†˚÷’ôÜ¬ )\01]¡\"H\"vO_¬ú‘ñ∑∏”Ct	.µmF->‚\'gLÓIh¶3◊∞Æö[ÀÕ7˝Ê÷kY¡Eêπd» ûºÇ?,÷]˙¿û&∂‘~uá`-ÂÂ[$6Olë˘WEßµÆ°·Ã\\@%ÏX´då„<zıÎí¨[¥ö–÷.⁄&p˜˘1…mn]Ke\\ Û»œ•RKb«Ä\0Æ”V”ñÈZhƒQ™™íä1Œ:{öÃé√<Å≈zÿ~^Cöwπåñm€ìäz⁄ts]$6hWÀÿ7‰”üM¬d/=wz\n€⁄$ÏO+g6÷&sœ•D–I\Zo^‚∑•Ä,eä˛™(ÚÌŒé;\nnWs¬…0ª∞6s¡™G+®|ûzÒWÊI#ên‹£Ò¶4JauW=ÇÅﬁ£D;lÌ‚ñUUAﬁ0	Êµí+M\Z‰]¡rgí<a2<–zè†™#M.9\"ò˝‰nƒTˆVFwir ÿ∂=+*âK[Ë5ßC:i$π∫{ôPoëéB.‹TˆêO,çqÊcüN˝kqmbqu$õƒq≤™që∏ı˛ØÍëiÚ≠≤Xƒ¿Ï⁄Ìø«≠gÌ“j)\r«©Ö\Z:ZÌU»brsŒF+Z“)ÓÊç§õ8\n{-X∂¥Ú#t∑ùÅJêÎœNïœëﬁ`Q∞.‹cé;‘Û);€âr‚	å\0$‡«lÛWg‘$ikÂÌÚ˙Æ‹0© Dç“9ﬁ2nc\\‘˜≥Æ°yΩº·‹íﬂ^π©kﬁJ¿Ãµ√©ê3\'ø5vŸï#»c úTÚŸù+!‰Y∏GCÎQEpß:ÚáÂ‹:wÆÑÓ¥&÷‹ÿ∫3Eg;$õìÂ\nŸ+€üJ•myo¨ÉÂf»Ps⁄ØÈÔo*ë,a¢S∫\\t«∏Ù¨Õ[ 7Ø$^XF‰y}®ß+Õ¡¢•‹≠<Ôs∏CUπ®ö)’%~q–u©a∏ÚóÄ9ˆ™3\\î∫¡mŸËz◊UÌ¢ í&âòErdÚŒÏlnE3XãNéÂ≥≥R=”™πr8Ísﬂå÷ÜÖd⁄Ü¨6∆∆4Âü†Ò™˙Œªd]Ì-¥–	<´â„„Ã∆pûŸ≈]+…ë2üÜtªXÓ⁄Óˆ(›≈≥K2ÄI \r˘ˆ9ªkø[œ®K<»‰§Ñ¬S{éˇ\0„\\√[M‚-MQ¢0$êíE\'a\0.0G°# ˙Wu†=äEîkãõxs\\ˆ\'”ú\n™≠≈]\n>Û9›wE∞”ÙÈÌtΩ6‡›4^XÚ.KéÄ∞3–ˆØ’Ù˘4≠Z‚∆\\ÔâsÓ2?ù}	‚M~;∆”,ÌmjÌDq©9…ÙúWœ⁄›¨÷zµƒ2ô.øxƒÁ5*Ó\Zî¥ëùúbΩS¿£Àç∆£ˆ¸-æËû—ì‰ëzê}I+ õè\\÷ˇ\0Öµ£ir∂≥ ÎmÁ$¯\rèùsé¯‰ëú˙SßπSWG∑Èiê√˝ômnm¿XUvá\'%æùyÆ«Z^´§Èñv7w0›+‰∆®>ea¿‡ı¿5ÈZV°ÔŸÔë<í)eEãñÙb{t#<W;wx⁄‚Ó+Ω6[9,2Ò≤0.‰v„©´Û;Ì‘œ±‰∫~Åñ¥£_Ç‚UmíOÃè∑p¨k€&ñˆi,÷GÅÿî.9ﬁÁØF—º;Ø+…#3HÍÒ∂ñ«◊æp*£ipX‹˝û%Rÿ˘Œ“vút¡¸i íµÅMÓyÃq6‡pxÎ[ˆ‚|nPΩ∫b∑$–e∏fû\\¥ò\'€†§\Zl∞\0\nk8—‘æ{õ7J∫j[:°ä&$`◊®5NÎƒ⁄+Eo$ã2ı\rF∞óåÇ>ïô}(œ\\qäOÓÀSËc_Í7W7i$,Á©5H∆ÃUúÁqË\rX  åöôIFW€»b∞úWBÆQæHØñ§2ÿ<\Z¶ª˜ç§ÛÈWÆ!;è|ù›jë&»oØó&ÉΩÕõIƒ≤	&ÜRGó<gúé†äıˇ\0xãD”¸y4óÒµÃ˛Fm¨Ã@∆|öÒÉrÃP1G^p¿√tÈñ E#céN:sX∫iª≤ì75ˇ\0_kWç3ê°ÜHN»¨v∏vå+1¡„p9∆)Q	Ì«÷éUÿ.9Â`§g‰ª’À{¥ä—„åçÔ¡ˆL«ñ¡…Sﬁê⁄L»äv\'SU \"‘…≥Åé1ì]Fç5¨ˆQ•ƒæ]√KÖLeJ„í}\rs0 eé8úf58\0öπqeqgnéG-ç¨Ω1ÔSR\nH®ª}÷∫ˆp√=›¥2√qΩ .>|/›œ±œÈ\\_àÓeûH„ö-çp€∏¡\0„\\÷¨”€O¶C%”»Û(ÿ\0 ç£ˇ\0Æjé¢3§$hõÀ>ÚHåqé¯‚¢ï8¡›-BNÁ4üñ≠€1,Ì√qì€5]#›(\0ÚkUÙÚ-‡ö$|:¸≈∏˘á\\WX∫Ó h$\nYO\0‰)®ãç˘8«ÎWon€Ôßï\ZÏSo?„T—[i9¬ˆõÜ±¡Ê¢ë∑G5!R·∞ßΩ/Ÿ ∆≤v\'ù¿r Qñ=∏ ôÜÈ∆F“´w”â¬g#nO≈JÖ_òëMëJëÉ‘*kr#_;*O`E@ÚyçûôÈä°°Ò∂1œ5*ÚIÌU	 bßÜB¸)0±°`÷q\\§∑he∑\\Ôå3gé?ù-—ÄÕ˛à]£r~R9QûÂY˚…ï%µ√¡*»ò%yöÿ\r8ÏÁªh°≤∑wy§˙ü•Uïn¥˜0Àås∏eMoxrÛR:∫\\iñ…p∞`ØÖÈéΩ+~kZÌßˆÖ‹ˆÒ∆⁄êÇ˘\'∑÷úTZ◊r[iú\\Hœ®ƒ†‰ÌZö]‰V˜&[»Õ¬6wD«\nI‡◊i¬Kƒñ)%πﬂ	…o,\r¿c=|◊/©¯cP“’‰ûﬁEÉqUêÆß»˜AÃûÜ>ª†ΩâÏºáåﬁ6X‡÷a d)˙Uõ¿ÄÁ `üZ¶ªü∑õπKbU9åq¸Í]∂û~ï#í©¥f™»‰z‘àl%åüt75;å‰Áå’t\'ù†‰”‰~v˙U\0ÁåSÀé1⁄°öx„}iñÉ_÷£-¯‘Æ8»<T<gΩ0%é†ÛÔRó\0Ä3“´cåzRíÎÕ+—∑kw‰¬w9√0ÔÌO∏‘Æ•C‹#€åtÔû}k\r$p>V f¨[oô oPNHﬁÿœ„I]l+5üãeµHcx„	\nùÖcËOqT≠µÈ‰øwxûfî∂#Nπ#åTû“¥ªñ˚NØtcµIï^YÛÈéxÆ“<)·õY]oGü#£˘ÑåÂXpq‘VúÆJÚf|÷vEO__ZÍÈe©!¥≤ªft,6Ç˝9˙WMsy´Z‹]‹È≤õ˜@ÿùÿå®ÉÔä±¨ËöN´\rÆ•u2•ªßÓbÖ≤77|u\'÷∏ÌfÊ∂ËÏ–¥\n»Ê4¿(r71Ï{R‰í˜Ø†”LÁu´˚çGV3\\™ô3Û]¢¥t´\r&„Oëçÿ7ò’Y\0Ú¿…>á5ÕM,õ˜9;ΩÍ˛äö}Ó¢F•4â¿UàrÃxùú•£±]‚2›ãX›≥pËk[XF°¢ÿãõª´BH¢I7:Á¶k•∞—ç¸ó“i:tI§x.•èòsŒBzW¨Àsm}∂h„åÆçNF3ﬂﬁª}îcg©öìì´i÷vˆmπñxDí*ÆDˇ\0Ωdïı„# ]ã9‰‘cÁ≠r W5Zh0å‚õûr8ß;ÁÙ•TœZCI=MI´6±#JY¿`ßÓì÷§tEs»ìcπD∆¬ØXiÈzÏ≤OÂÄπj\'¡l¿ÎL.Íƒ£qéj[Ö«][G≈Qã®4»‚R($µZ¬™„ccÁ$g&µñÚ—R≈pÑnë»P∑=Í\\öü,©\n“•ñc). 	\'”‘sı…ˆ°Ê.˚àéÄSb7º>ì\\ãïi\"é6èÀi$]≈‰`~k;W¥íŸ’%û6¿‡%(‘Øg¥[e⁄±Ç9∆)óZl–¬ì£.ÖÅ¨íjWc2∆A4ÈH*A\'Ø5f;EÅuê\r<€∆[Ñ„˚µ≠ƒf{ìéîÃs”öº—\0ÿ¿‘2«¥r)ä‰8cﬂöRÓê8•é:‘Ñù†1⁄Ü∆oËÚ[[‹tèÂ∂Ë¯d˜m5·hÀ∫+í\ZF˘ôsﬂﬁñ⁄¡ÓÏûò©Aò™4éà¨´˚ƒu’À;3;èæ÷4˘£ív›¢X8ùp1ÉÉœjÈ<?Øiw/g≤D\"\'2-ÀaÒ◊8˙W=ú)lœ+ˇ\0´!∫s˙÷æÉ·8/\"3^;ƒÅ01ıœzÂù(/y≥X €˜çtºQmbt∏-#òFÃ”£®ÛÄQÅ«æz’OÕMEÜ—Ó\'è3Ôåı˙Vº\Zmúûπ”mï~’/n‚@¨¯¸r>ïù§•¸6ÚΩƒ\"—QÇ≥qüº9„˘W5Nföl—§ó2G9‚}~¬˙‚‚+À)bîêÄO<£üòÉÎ˛5¬_Yœe;0ﬁ÷å√*ÒœC^Ò‰ÈWzkÍ-l.`\\4Â3d{ÈXO§∆˙ªIeb#“Ø„eπÅ„!ÍÎÇGqﬁΩ6\nNÔDéZïÔ+u9è	xßO—tÈcºO¥†$(Û∂1…¡Í}ç_πÒ‘í‹Àbë§v˜q≈ e$Ù«)ı\\◊5‚?È∫nó%ƒzì¨Ê_‹ƒStnß∂Ò¸@v¨»|7´iˆ_ná…∫µ|¨®ôm£‘Ç8˙ä√ÉÖπ§_¥∫±◊ÈV∫ñ±iqkqx∆(8ëfMﬁB„åx‘U›√ÇÔLíˆ√Né˙’ï¢wƒÖ¡‡éÕ^}â/◊Sv∂w,»bò±(x\n}qÿ◊¨¯Ëiñ˚u\rI`∏*™ñΩî‡Ø#ì∆Eq:2ähqw‹ÚMfÓÚKó∑ΩéHÇò )ÌèL◊Y‡€K&ø∑˛“Ω∂öÉlí∏\r◊\"¥˛!¯bÊÛSπ’t˚uö8°JÄ·Ÿrr¡}~ıÂˇ\0⁄∑RC1ê<¨™9¡Ì]∏jº‘¨:ó‚Øÿ$wzùµ–ÅUêC:ºgqË$„‘Z>ë·ÿWn•*ªÉGÊ1Ç¨0zW∫¥øŸoi<“+´p1˙ı¶⁄√‹i-m+´+e1®ÎËœZ’Fr˜S–Üñ∆Ü©qßÑh¨m2ÓçJÚãÿ¯”¨. 1:À‹F˜œµfÈFeπI\"àˆÕ>ÍxÌ£˝ﬂﬁVÀyÁ∏ØFèªôµÿ÷2≥¨q∂–Ä@ÁÒ≠Ì¥ŸDk,Ú£`Ó˘AÌä¬∞ò\\¸Ã€Q∏\'≈töï≠›“¬géIX¸Å≥Üˆ˙ö÷ΩEìfP>ûÚ}ˆ$K;H`˛uó=úñ≥ëHe„ëäÙÌˆﬁ-LXAh»7+H7 Ú3ÈıÆ_\\âµMz·m’e|±ﬁÉjÌÊπ(‚fÍr…h\\íÂπœAµ∏aåé	´÷≤Fåúë¿5ô)	!\n«éŸ©`êÁ$‡˚W°πã7yíY»;	é1R«t∆^jî3° ∞‹{s¸ÎvŒœÌÂ“€!±ï^ﬂù\\Zä‘I6gyÛéπZÍ4@1ﬁ¥dÜFY§ã¿ıƒ‡√Âyi∏1c =F:U9>ÉL¬rtÈäR#<V≈éø—…m,PÔs˜‰l„zπ˝F·ôF1èZ”ƒñ˜Osi}f\'Y¢¿9\0®d‹W5vîö*≥Ÿ˘—Ca%¨ÍG&—¡ﬁ„û„äÃ¥¥∫m@iÛºp2H	ëÜpR=Eg¡mßjŸAvÇR|»<÷ÑzÁø*Êπq©A}m$fû·\n»ç_<‡Ø#®Æ%UÛY=ÕπÁ†i3È˙.¨÷ñs√r.\nÇWÆ1Œ3X⁄üä ≥ÜÍ8ô#ΩY⁄7êÆ–ËGPGJÂ⁄ﬂ_º\"ÊÁJ&cêßg$gÍZß™Z‹ À4Àj≥Ã°ó˜¨ÃØ5á±åÁyHMÙ&≤‹\r©∏CFHı≈Go?örOÃ}Î>ˆ“Ê+∑gí	0FL?wßn*Õö˘ánµÏPj⁄…∂ƒv}≥VÖ„E*èó=@Ïk.U∆˛3ﬁ¶∏Q\"çô›⁄∫åÕ{{¬FzVΩ§…7ÄaŒOz„Ìo<∂⁄Áäﬂ≤øÏtX˜xåÒE›¥\rôøÄÈÿä–Ü`i\0Á⁄π€}Cdº·∫åVúWK\"˙S›◊FP~S≈<»˚VBJ z’Å1n¥“§%‡“y‡f≥|‚3äé[¨fã π∞\'„¶Ivq÷±ñ¯/ﬁ5\r≈ˆ—êx£ï\nÂ€ãÆy5ó<‚F#?Jœ∫‘Nr«äŒ}MC‡û•Pn_û]π√`÷mÙå-Ãã˜ÄÎH˜ÅzTRŒ≠\0—pG\'{3<ç∏ü\\V%’∂ˆ.ßØZÈØ9ü;B∞5ô-©wo(vñl∂0sTW6ã9∑BçÍ*23û*ÙÀ∏ú}™/É\\n&…êÆFs¯TÍÖ£i…ÓJl¡∑å·é1ûïf“H§6–‹8Ïj\ZÅS‘T–¡ä|«1ëéãú‘ç˘ô=Õ]”,ÌÆn$KôôPø Xé√4^¿e¨C`;π\'ß,dú∑ÂZ76âijH§3±é[o°µPdcQwV8Ú‹≠]î,íô#EE«‹Q≈65ﬂ“•U¡Ù≠îIπ\\&9«zQì√ÔVäu¶òˆë¡¸*˘PÆT˚0\'Ê?ù=ò˘sÔWJdÛL sÈI∆‡ô\0ã	ë…§# oJ∞´«N)0I#ä-dGÕ0®∆k@˘l∏e≈WhpÍ†·O≠B‘iê∆ò’»X¶2ºôÙ§0à€a9`y¡‚§U$px§R$Ff å‡˚‘™lÔLD≈J™[sÌZ\"[-G!\0w´„ı®>8ß9©„Å∏lfõFl≥ë4Ä ¨ê≈O8≈MóÁ⁄µ »ÅmònŒ=*∫[4¨íx*˘Ä™‰.¡ë≈KOt∆3»ÿYN1ﬁ°uÕ\\h\'ú9D2yKó*8◊ÈÕ@®Ã9çiDEåJCµ=¢l‘ ºßÙ¶–⁄2∏$}) ®U#ö≥≥v†Ftß–.=@ïbâS$z˜ˆ©<»Wbë˜G†≈,i∑„5≠a`≤LûcaAı¸+)Z*„ZôQ°ä0¨I»=;v≈Llö%çw+c\råg€Î]cËñóÛà¨«ÃÜ~‹u8®!“eãj®Y\0;àzÕM5rúYŒÆîÓƒ*ç‹ê3◊\Z÷”-Á∑¥imäH≈èô\\\0pA˜…≠πl!G‹ Kl8€”5\\[Ω∏`Äàﬂè®≠S∫ê˘^…mƒí€¥Øü≥Ãº#™û‹÷B¬—)ÖO…ª ‚∫€è≥Íøf,≈]P#”ˇ\0≠PA†¥“r√fÌπSöI§µL Ü⁄·Ù¸,õê1wg∂Mm•K5ƒ~[lO1p0¡áo¿÷ÃñfåF•%ÚÚπU*Tí^˝*ïÃO¿mt¿√!„5\n	∞{±[<Ç[ôë¿(N9\'∞¸)ö‰@H¶ÃvÚTgÜ«|v´Û™≤∏‰xïUt…/ugÜDçLÄ±Ë∏…´Â÷·sùπ∂v)Ä´Èä«Úø{Ç:k´∏Äª8T\'ìúÅ⁄≤ÆÏL2\0[ÄŸSëœl÷ñ∏ä´ghv…ê«$ÂMj26ÚÏC3·âªs˘U…é£ëVbêúÛ…ÎFƒöË<È\ZFìÿt´∂—àHpÿpAõ∏_z∏ì‡–4jõÜrK∂I$ü©•ÛJÇP‡ëY¬mﬁ‘·)§2wm¿Á≠Só©•ícÕVñ\\z`1Â¡<’i%œzlíqﬁ´ó›≈+à{HΩ0I∏\Zk¸√öHˆÌl˝Ó‘ò“‰»\0®güZÖ¡jó©ÊëŒ‘Ál32xFqœ•U≤[®Ô„ko.iÔÃ7+„úﬁÆ]0»n’M¬ÕrÌo)çëw!<Òë«„YœbëB[Ñ:ïÃ◊r@≤)\"(1µ_Ø‡ΩxÌO/=ÕÃ2ŸX]$c˜HIœqúzÁä±c,p±í‚`@î$±ÌÂ£?xÉÎ¿¸Î∑–54kKî∫≈¥éÏë`2ƒá£1˛‚πj>[2‡én˙x.-.ñq™hC!öIn-˜p\0G?¬+>∆˝-\\ãØò)F∂f ûÉ>ò>ïÍ6[À‚[≠F⁄‚),&çˆ‡Üyd…#rüÆr+èÒ+™ﬁﬂOwafﬂhôêNâûJÇ∏\0>Ê¢˜ìç¥/[&Uhd3CÆZ\\lÜyàH√dÄ>>¯ı®\Zˆ‰_©ñfªµÜWTäbZ†™8ßJ©ißÀÂº6üΩf\\…û7åí∞:◊E£Mdöî≠¶≤≤Âﬁ7*1„˛}iÀ˜kôƒt˙\r÷£ßx^IÁ›xL®˚à_LÓúzØ©Î_⁄∂Ó≤ÃUØCÜÀ√”ˇ\0Ø],V˙-•ô≤”ä<r er ≠éèsß€ﬂ[›õwtñ\"´6P\0y»«˘Ô^t™™ìºñ∆ä6Z1hAµÌgíIrH∆–:m=≈^≥—nÓ†íYµ¬  ˘Öi√f¶%JHåmPG\\ı˛ïI∫æµ?gF@™[r?#hÓ˘ÎWÕ\'{1§å9„”Ô\\‚Q9‰©9Ë;÷°ânmc≤/Ä´pÀûFGZﬁ1Gq\nImfbïô˚Ù#÷Æ&ûçÅQ|≠õå„ﬂø˙’º\Zä≥&ZÏs,ÿ\\™gp\\Ù8≈ZÜ° ı™⁄i…Å∂MÃp:cﬁ¶∂&›Ç	Œ“§d\ZÏRV–ã>§vÈedeVe9\ni≥»Õ+£?(˙Sƒ°.åÉ≤F)˙Ñˆ˜\'ÕÅº≥≥òÒ”¯∂)lRq*Fn…›œJÃ‘I0âLa« \0≠+≠B—¨Ã•d∆ﬁrF+ÁTÚ¢ñ=™‚AïlÙáﬂ•BRo`vE	Êµö9cpw.<∂n>¢™ –;D±ÄªW;èBjú“Ó›ª5ê∏E<\0:ä€Ÿôπ\Zop\Z#¸èêπVÁOJEäb\rƒH“$]I√ÍESé ¸òc8Œ*˝¥≥B¨\" ìI\\≠)BÀ@ΩÀnd1¨ADiªsÆÓß÷≠⁄§rJ–¬7Ì‹xœsüjÃ\0¡/ï¡\'úˆ´ö|íœ çYÏ*‹nœ8Õe({∫\r;ª\"ómÓ˜,U∞\0…+éH¸™y∂º»“98¿™Ì\n[ìv)ÌË}*G%£ç?â~c‹–¢ùö˙-Â¬Í·qÅ« {UΩ#LäˆaÂœˆy@ yÉ*˛º’!|≠ÄI8=+ßı¶^)›TA\0bû\'ööÛˆt€OPé¨v•aΩê0ÇÌnvcí√>ïŒ _ÄHÔ]Üªogó,≈ˆÄ2Å_ ±ÏG•`È∫ˆéûóv≥+\\G.ÈéÊπ∞Uπi U:2ßﬁÜd-$l]Ü:ëOfö‡™FÜMÄÚ£<g5‘ÎVb‚’Ì4¥Å$ëƒó∏q⁄π}+Z∑“eπéw5à@Ò‡®¡‰◊E<W¥M≈jâÂ≥±$6Reêàœ*y8<ˆ•üKÜIW ë†‹c«\'∞´√ØŸ	.|«Õƒé|π0xÛÌP›kˆˆIqé‰≤îR√8Ä;“r™‰U¢ëûØÂ€_XyÆ©8[¶w´ÙûøJ’6v˙ùù§≥,â4â$ªî·¡»œ˚›MræèÌ^!±PŒ$ìñ∆„Ë?Á]°y>©´N˜≥Éo‡•∞ g\0˛<◊÷Ω\n7J∆3≥:Ø\nÈÏˆ∫ƒ\"∂ñS‰‰ò˙ΩÕY‘ı8<8—ƒë5Ê£t€aÖ8„‘˙/Ωf…„[MBI£∑ñÊ›$0++ºqÙßË\\µìÎwå.5†d∆AeåêQzœÁJJWn{Â[	.ù˝â}7àµáªøxJÑQÚ©Í€ûı‚æ0ìÎOi+»∑` ·á‹rNFzïÓ~&µº’t\\Y™€‹ºä¨Ó¯Ú∆{^{Wí¸A∑µ±öﬂL¥—Ÿ˛ÏæÏª6lèØz®Îw¥pƒu¢+vñeUñ8\0‘â	c≈ii±ΩΩ‰3° £ë÷íé•6u˛	¶±}^Xjí«\"Ø ÿ⁄;í§ÛÙÆèP‘ºU·ÕN8>Ÿ‹x2â\ræÕ·≤?JÉ¬~!õGÜUé*∑ﬁg8\'öª}&©+‹4õ•êyf2ò\nπÉZÚªŸÏfŸÜnoZÌn$ÑC?ôÊ©å`d˜>ºÛS«ôqÁÀ\'õ$£túc=*ÿ∑v⁄_\'jµ!êx»™wÑÜTÀ\0MU∫∑éLÄ\0´CF*úÓ0i!òS∆a,;V˚ë∏÷˝ÛÓ…Ì\\›·ŒÂ\'Ü¶lks+ ﬂ6Ïc€bAÂÄ«≠0‹≠Mˆwë7/Ã=köV/VeJÖ˙üAY“∆Î!Î¡ÆÓ\r\Zﬁ⁄$πoÙññh‚\\Éª8˙u¨9·Ç%ï<µ`∏W~˘œ•eŒõ–µs&9¬ŒÉ0ºcèÒ£ÀWnHÎá∏„x=™ö5eUœπ5\r\\±ŒqÄ:\nr…å(®•îI(U¿¸È™êw1»ÎIG∏ãK ¿>úbÆ√™Àî÷HT≈1‰Ø5ûÄé˙{”»H∆sﬂ“ì@ã≈◊ÌÈÅëÛ \\’âº…müpaµF’‹JüzÀÛÒ|aÄÌ≈5Øú∞r§ˆ¨Ï ∏˘ÓÛh!LÇGzÇIÂdLªaFg•6W$‰‡öBLß8≈hë$hvêF•j\riÕà∑ëUˆ>ı$t\'®˙VSeA=jIPXeVåâTÂÅøZ´\\fÓâ.ï3I{ÛNA1 (‡ÚVKÛa¬p	…® bÅüzvcYî0 w≈K) Và´8\"8$w«Zﬂ‘¸*ˆﬁ≤÷2Í\'»*ƒ=1éﬂZÁçÃ1¨ª—≤vòπ‡zÁ´cƒ˙óˆkiÊUö—ïÄç◊Ö\'∏˜™èòö‘ƒf‹}ÍuºhÏd∑\0r	„Æ*)ÌÊ∂tYêßòª◊=«ØÈU€ñˆßd4?{ÄxœJxœÀÎQÅås…©Pç§Õ64áÙ‰l`ëM$2èjAëÙ§UáÜÙ«v–a$ìÕâ\0\\~w•fn‰˜ßÉú“döˆí_|wf’ˆ¨å~cÈ«JÎ¥Mab-\ZI#å¢8$Ü=A Ù5Á;∏jêH¿ry°!3Èoxæ”Y“\"ñÍÊÆTmp\\\rƒwµnﬁ≈c{n÷∑~S«(˚åG#⁄æX≤Ωûﬁ@cïì¡≠YºAwpÍÛO#∏˛ ÿ«“ìvÿõ|g¶ãMMƒ(|Äx`0æ‹◊+$æ_åVÃ◊ülÑâ›í1ïSŒ}≥Xrÿ≥N-µ©DfFn≠Qìëé¥c\'ò« ÛL›€sÿ“¸M#}Õ0~¥∆…≤Jz18…¸™ÁJ˙–4Lq∑\rµ\"úå”Î≈+É◊ö`⁄êRE1\ZZ,÷Õ0uUN\'øµ2’ÌbΩG∏åÕ˝‰\r∑wµZ	V9>oôQûµ•$VW2°∞Y≤ÁY\09#”â≥;+\ni:∆è%Óõxw¢03a¡«<tÎ˘’}7·‘⁄ºoy.©oIÂêﬂyàÙœcÎÌX⁄\rµÃ◊íCœï#Õå6“√#Ä}k©◊bê¿÷Î5ÀY¨`B[\0àLı©îÙ≤bÂw$ÒÉ/°±i‚Ωc.UáÕ¡\0É]vïªO}I∫ªäKòî •É„ıÊ§”tÌ:M–}ºDbºåÔºJ@»zı´W^9”õNªÇ5ö	Ì◊à‘m\'úg˝ﬁï≠9NQLâZˆ<èQ¿óQ‘ ≥wπ˚6yÈ”÷±,˙U ›ã`œm\"±.W=ÅÈ]’`>æ2\\¢\\KqîOò‹˜>ï»ﬂjW≥ºìLÚH¯I‰‚µ™‚ÂÃÑØ±–ÕÒ#ƒŒKH.drÃ±∆>√⁄πiYI2ñ9…9®—3∏0Á4È‡ë–\n≈‘ì–ª$0‡∂çß8¶)=˚˙T£7Ìéı\0Fp?áöB«∑ö ÍF‡@<ähÁ©¶2EêÇJï§wg,j∫‰ëÙ©≠ ˚UÏpÜUŒqº‡p3R–£ûh<{ä“k5HôJ&Ê…G›”F+<‡dS°ªcΩ[¥∑éÌò4å°q–gÛ™l:„©©Ï\"y•£ÖvQ˝„ÈJK@π◊j˛Êü·ãmBOuÏß\rl9e˜=≈r∞ÿ‹∫ôdƒÀcÅLª\r»|ÓiVi£ã`wÿG@z‘ﬂKπÊEi/À#∏ËG›™ühñf[xÅm«@‰öf¬»Œ¿‡b¶Ü{kEÛô$Á„†FÉxg[ãO7ÚZI±8ﬁ√ç$¶2AlÔZ7~%‘n¥‘±39âry<öƒe\'Ôh¶ßˆƒ\'ûCdÛı†Œ\\aà¶îP;Êö#Á–V†Híﬁ§V5\"1ÚÅöO7⁄ìB;Ω:h@G˚Të`ÇBåëä—ª”ÂºçÔ-µnb≈∂æ~ûµ\0˝úœ$∞\\À\rø$dé{÷LÒMiy5Ωµ“JÀÊ)¿a\\˙K`4·I≠f\\Üuê‰èZø›≈•ÃíC:<ª¬‡ „Îúw®V=j->—£ã®›HVU‹Hø•`Í\Z §íG⁄6aòJ˝”ﬁπú\\•°Qz•«à¥˚ãÿ‡{vÛs$ΩB∂\0„æ=EM„\rSS7Amwˇ\0g‹@ÅâØ±«Á÷∑2ﬂH`Ie,¸®EﬁYáN+®ª÷,Óº!W◊∆=A$\n¶6;äd‰0ˆ˜≠ËaÂÃ•mÖ:ûÎFõk\Z\r≈÷èil|®ULW{â\0gæ{˙Êßá^Ω∏ª}GÜ+ü≥≥•ΩÀ»TØ`A<cÿä«∞”tK∂˙}¯.T\rÕ÷œ~º~µ≠iÆ|<‘ÌÂπåOc1˘%t‡˙Éå‡◊∞‘¢“Ëœ=$ﬂô[≈zd˙C≈´y≤‡øö–ë¿,>«´ö>ì{&ö”X3=Ñ™bﬁÔ˜âwÿ÷èâº]¶¯ìJñmñÛe\0Úﬂ™8Gä£§kö^Ö†-Êú&é‚aÂÕhe\rßπ¡ÂN:öÊˆT¶⁄ì6Êó/ôƒÍæ‘Ùí˜	Â™…ÑupIº\Zø£ﬂ[«®}πÓ∑‹!≠6sÙ™WWÒk:ôfgÑL˘kp°˜™∫æû4çL⁄â„ï6ÜáSëûÆE\r9°±¨%ﬂs¥ÒOƒõùe>œ5∫˘E]£8‹†Æﬁ(\\À$é—®^6í{UTê≤≥2ì≈[≤[kô’\'îCuv€ÔXR•+.¶éMéøµ∂∑!⁄ÂÂ,†ìéE\ZoœÚÇXc#J˘˜“}öY$∂Sà⁄AÇ√ﬁµÙõXcEw∏Ú$ ú8˘[ÿ0Æàµ´ç\\È|+=ù≠Úˇ\0h£,m—x>ÿ®ºMq›¯éÕ∑€Cîç∂ÚFsU[{x§éÓŒA$ä\rº©CÎé‚≠È∞∞›#√Ê)a¿˜ÕtR¶•7PõŸŸâ`Q\ZÍ+´—Ó^=ó\r\Z¥[√∏Œ·ÈÈY— m‚E,Ì∆Íñ“‹¬ANÊµ‰oFå§—ÿxV∏Ü{©£ÑJÚX∑ﬁ5#Eôß…åÀ}uùÔêèLˆÊ≥¥˘e≥ô¶çrÖv∏e»9äÿä-Õ≠–⁄œ∏ÜâπÏs¯˛ïú∞ Ì§\nj«s†\\Cm-”Ñ*Ø∑ÜìÌPf\\[2ãòdÑï\rñ^=+Ωº”-Ó5?67íÄLçPWvx«nj}^⁄ÁP6¶ki<‡0Láj˛îæ≥(I\'∞πnpÆqû†◊E§ﬁb°⁄EâX9\0Û\n≠wi 1œ&\n≤„Â¢ﬁkÑâóÊ‡„‘W4\'l”–Èı{ùV\r5äïÛ|Õ¿í	ÍÙˆÆ2ˆ	T»Í≠v\Z^°$s‘K≥‰#©ﬂ¥wÓ;÷N´lÚ°í˚x˚ﬁπ#ﬂ5ÖŸÚÙ*[\\„nÌ˜ƒy\0ÁÓ’8-⁄F_ùÅSÅÅ[S@p]î®SÉëK¶‹Iß_Gs™»Dôÿr=\0≠ÍØuÿQzõõJ‘ﬁÍ“ÎB2ƒ´Å,çó¿7\'ø~*À√7Ü¢ë°_¥h® c∏çyÎ˚Œ‰v»Á÷∂>⁄u;H_@¥ùoç∆LG\'qÔ¯\níÍ”ƒ:îQÿﬂEßY≈+åÏ\r(=s«æB•iF£Ëª\\ÌVq\"“5Ω*˘û6Ωö÷+áÛcxœCËüCY˙˜ÖÙ[E¬ﬁíI˘ô§úxÌ”Ω0¸/‹8µ‘ÃÕÊ‰åB√›OŒ≠∂ç§5’ÆùÆiIß]óa–¸÷Úp7ûá∂\rk\Zê∫ú©2éöû}=’õKˆs:¨Vcí>∏˙TV∑Vë èœyÜp1Z^4±¥∞’\ZﬁÕã¡\0)ñ9«∞ˆÆjïr¬ÏS‘ÆH’ÌP™•$b’Õin°Û\nE\"∏¡©íÌBrFqﬁπ˚â£äÏ¨172Ù©!í)!%ã„\0~µﬂ\n©¢KóWú6Ô•[±‘LGkñ±Âõh¬¸√ﬁ†ÜË©!áz∏Õ\\MhwP]á É÷∑-f¬ö‡l/∫d„5—⁄ﬁ·FMoôõMJÃ©í|\0kn¿^MI\r˛[⁄¨H÷ñ‡n˘∫Us89;´>Í‰∑J¶◊EW;∏§#RiÜ8™RNq◊èJ°&†Î≈RóQ\0ò\nMÿ,K{u∑9?-bO}±˜ê\r-Â»~I¨õñ‹WÆMe*ÜëF√ÍπRG4ı‘>B7`◊?§§˜©…€∆y≈bÎ3NT[í˝—…PQ»»Ê°Ö’ÊO3%3Û‹U`”œÁMéVV`WÜá=B ¬‹€ì7Ó{Ù’y#?·]ááµ•—≈ÍIßCznbÿã*Üÿ›àÆm¢›p QºÕƒëS(ﬂT5-lDä01\0úäùÆä\'ñøs∏œZÄÄ[„<RÖœNµü*∏”úìÅ‘˛TWû3S∆dî,\0 ‘L∏ÈK».ÓHdíV_1Œﬁô<‚¥I≈ÑWëœäŒP†?0«|{÷jTz\Z◊≥≤ºX~◊: aÂí§+6z”>‘≠mä‹´F&¡‡˜Õ=Ü|∏9ÔZ,<õ∂mFŸÀ|ƒ∆ﬁ‹YÓ€úëúÑ÷—ï»∞ãú‡ö\\Ù°W,\r+∞c”´&√@Õ1˘„•.x«≠#)œ=Ë®09Èﬁá«·H8„≠!lö`Dˇ\0)8Ëh⁄Úêà¬ör«üZ‘K9låO<n–∏vn^÷≤ìÂ(™mgÖ#y#*$Sé¢•HŒ2Z}Ï¬‚‡¥yÖRz\nj\0≠i›≠D…cè\'öµ[GÀXÀ7<•h4pG ÛëZ\"˚tB*	»∆kV8Ñ∂óWQ«qyÄÅ˚πŒ1Ì¡™q¿\né*‹Vÿ ıÕL°}Eqèmu“Üw|ªO•Ij≤ZNÛG2G4\\ÆFÌ«∏Ù≠]5£¥ïÑ—éAµ≤Ä‡zäªiREm1íè„S–ëÎYJMKñ⁄\rjaE8H• æ˘z®\\∆ .9≠J`Á9«4”	<„•oXñ \r\0R§Û«J_(1n+Amã	≈N∂x«J–õôf◊*NjEµ#•kãPë÷û∂¿tÀé€8ÈZˆŒa0∫íY:å~U<\\Â∆Ã{‡U‰“dR ¡ïÄ…R9¨‰‚ÙcIÙ#i⁄KîôF–Tå˙ÙÌZöHa+(L$ã∑rûï∂öZCRBÅñ≥ﬁÆ§\rg:H≠µO${‚±öçπQ¨o{≥Jm≤ –ÃA?u}~¥¡¢)±é9õ‰‡t5<nˆ±2ŒGSÎOF;≥˜∫Á±¨£Œ∑ei–¿äÿ¡p»áÆW\"∑Ç[dAúèôOz´ ]Ç¿ê<UÎ•Mõ’à$û3”ä÷nÚHãhg…<çñ‹gÔQ›#›4à$%„ı3!⁄£É≈D„jÌœ^¢¥It\"Ê$ˆhdŒ \'Ø|V3#€›≥F≈O Pk≠a∞)ÿ8…œ≠d_€#HﬁY É¡∆+D¿≈x‰w™“ZÇ#÷ı¶õ5ÃÖ#Fs‘Uı(<õÜO,†Pú‚ãÖåßŒçB@ãΩè]£ΩVÇ6É˙ä’òmâôe∆\n˙ä¶Ñ≥Áπ¢‚$Ta»Ì÷•V<ZzqÅN≈M«be eO\'c•6Y¡bG\0‘E∏5Éåıê3Z¨œºûzSX˙fòÿ#ÔÅÌT0ò.€ìÕVIvÓO¶ N„∆**«ê‹Á•-êÔ$`t®ÀÖ={‘MtH\0ûßµVí}ÑåÁûz—p/5¿cÚëUgª⁄jÑ∑<c“´<Öª‚ìãR NXìûÄv´÷&ÃZ›¿qS›ò∑\0ØııåÅû‘´<ãñß\0∂ÏÅœÁY…]\r!“ßño)‡}Ñï\r”ü∆•±èΩúíº	+\\}÷€Í?SXj€Ú∑&Êõ;â«\Z¶∞á,NF9±pr—ï{öu’Õ´]\\Evã#¡Á‰Æ2√Ä£èpE^üOø÷4Ñæ∫êòe$À8èo*0\0ÏGA¯V\nM3º&‡ôR$Åª(Ë+°∑÷Ôø≥⁄Õ‰\rq∞Ò±sú/¶MTi$√ôô∞•æõu(ﬁ\0RÏwzÅ˘◊G¶^ZAasn¸Ÿ] ÿå»ò…ﬂ>ß–◊?∑x∆ﬁs«“¶HqÄGT•\nëÂês4lï”>W≥7≤ÊToºŸÁ*8«“ù∂¨I2ª.\0»oº\0‡˚ÒKß´â Ú·V¿m√wﬁˇ\0ZpÍW B·ï€ø8Œpq˘W+¶‚ÌMæÂç˜Ig\n›Z \n?ﬁR9ˆÔD◊*≈ö2T6JØBù;˛©r6K(π…˝ﬂR*C?üÛK\ZìÄ8≈8SIÏSñÇY≥è1ò∫∫Aª®Ëkj⁄ˆ9|»wlV›Œxˆ¨”2l^	=™€,…Â1Eu«}™™B,Qb ±√*™<ä\\bM√Éˇ\0÷®ûldp0§q˘’Ài!∏ëñÚM§`\0Áê=ÖAw\0å˘;\\≤ÆYï}ˇ\0¬îdì≥E[ÄèÁ\0ïœ^+Í}πÍ≈Ì ∆h@Œ0s¸ÎûªπmÌπ≤sÎ[√R€ªºådb±Áú± \Z≤ÓÜPœ¬˛uë£&2Å¡ ‡uwHá©L+6Ûû’©ehnW…ÿ‹∞ ™ÁOÀ∞\rYÇWçÜ◊e⁄sêhömh}M?±EmÊE*a»S„ Û˙T&Kl…,0I±ÕXDñÊ7üw»dÛRÕb÷ <ØÛ1 ØqıÆxË˝Á©£’hSHï0ænW9#+F›R(∑ÌRÂXU‹„ûß≠*C…8<‚µ‰ÊZë{lh$Í9@ŒAŒiË2Ö8®?≠TSí gÇ=*‘∞§	ïôdR8aÿ‘¥êjÀ∂Íë∑ûë´îo∫«∑≠l‹4ç¶À-àéElPú˙ıÌ“πã{ˆ∑ô§Ù¿Ó*˚jñØ4ebeÖH89\nﬁ†ä„ØJM¶\\YUgÜ‚x˛–í¬„úµu∂ˆ⁄rj‹ZÕ%™Õoº™ù£å~æ¢πôÕå≠\r≠¨%$±g?)⁄y>¬ü§ﬁºíÇHa\Z0‹GΩÒXbo8^:[°§,û•Õ¶oä„Mê)a(V9»ı…ô\ZbgsìèZ€º“‘Í>TlD/ùé√\'∏≠Oivﬂ⁄%¶ìÀ`7$s(˝«+œ±◊B§(–—›ë(πH‚–›I!\"Ï«=I®º…ñ6Nì”øıÎzñüßxwM2¡ﬁZF∑.yFqÉœ†‡◊ös,Ô¬‰ú“´ã˙Àoñ…8Úëÿ‹Õo*Õ\n\0Î—≥Œ}i◊â)ô⁄H~sÀ˚à=Û¯÷ÊÅ¶%˛´ƒﬁS±Åû+nÁ√ÒXX±îL.ÓX√ å9=˚W°FÊLÛ«∑ò¿≤mî≈ªÊb§®oÒ≈tæ‘Â”ñÊfΩTQàëç≤zÙıﬂhﬁ\ZeΩ≈§Ú?íFWûàèqä “|;uÇt8üq*“lı°’è®Yô⁄Ôà!pëÀkt÷ Dìô∆6ÅçªGCì^}„mKO÷Ô-⁄«M6è>a*r+™◊4{±o2%‰Ú€√∏˘3>ı\\$ˆ ﬁ[4í%∑\nÚ\"¸ﬁ†d}i∆1∂Çm‹¡Ç»ú¯÷Óù¶á#+ﬁ¶≤≤…WMßŸÂ´J√luÜì\n€ñoº~Ë5™l\0qÖÅ–b≠ZZ*˜îsñ…>Ù6Iö-0:SZ\rπ¿≠cVu\n\r∏Ã[ÄPúû+Ú\\Ωkb˘∏5ÃÍ?*B)O?œ∆=\re]$Ñ ÚXt\"ß.\ZOò|π‰û‘‘û9é\0…∆}´û£w.)éyÍ+wM‘m4˚cˆòU‚p@∑c˘sYr‹y>n÷8«\0t™R+≤˘åx˝*9÷•ßfY{À∏\\G#(pS∫AX≥I!l‰ììWeô∂\'p˜™,víqÅö\\ñ*„é£u®\Z5=EHŒ;û!√A‰ˆ®∞\\gîär:˝i ©◊8≈I>k[úåRÀj–Mñ«‡äLHê@ﬁXpr;s“ß≤µiÆ\Z&|~oaﬁØXXK,f¡Â3™ízÄM]}\ZÊ6íÊﬁ\" W*G|}k.Öî5ç:iÑvn“∆ \nìèÈXÚ[∫JQ∆«\ZÌ_Eª∑à]y&XR2vïŒ_√5É®ƒ\ZEû8ôcuüCS\'∞⁄f; 9‡w°Œ–§T≥\"„Â8Èå…Âé1‹ìﬁ¥B yg_õ∏≈B&«∞´∆d0ú&¡‘Ûö©ºÉ\'cE®‰\'÷ûÃ•Å ïjBÿ#ßzq?√¸™Â=yYïx¿¡ˆÙ´v–∆-Ã”∆ÚF£,±∂0	∆I˙ˆ¨‚|π8&≠Gy,ì@§õn˛:‚ù≈pøæíˆhåõvƒÅ(¿™ÛU»J]C&›PGºôîrƒåÄO·TòÌ|œΩX‚«u\"•ÌüNı«TäA4ä§så„ÈA˚ß⁄òW‰}i[Üˆßa‹ÖÏiq¥„öåÒ⁄¨mÛ8Îﬁì%ëÛú’Öÿ»ÉaﬁO8¶Gb>^ï}bˇ\0G∆œò6Kœ“°ª»Ïm„Pärõé’vÔCºÑ4…Ç‹±Q#OZ∑geß≈¶§¢ˆD‘7F©ï|ˆœlV´\\Íó∂◊pH(±ô\\J€(\0˘÷NM »§q¨≤!‹Åœ≠E)$S	UàSï…‰é¢íH¢›≤2«>µ™` -¥cûï4åèCOï9V˚’v˛5hha$∑4ÃÛÌR7 öàéO•0$9†s÷õ”µ($é‹\ZÆ‚1Hx<R+`“H1R u¶ûyß}‰«zèûï@ïM‘∂≈å.T≤Ì|w8˙–†íM=/·ÓΩgg2¿ÈbWƒ“»!1–≠zn≠ß¡-†’-gÿØ≤LÌÏ@¿ÙïÛ\\\ro2 π ıØSoéW	k0hp	πyIR}@ä«ÍÒìª%∂∂&ä˙⁄Í¬⁄’Â{;ÿyí?∏≥˙gÆk#EóÌ¶ıÆµIëáoô¡\'ÄO`GJÂıØﬂÎzã^ME#ı\n8¸*ú∑7≤√ Ö]†dèz’µv;kÍÕõ7Jª÷Â∂Ωºï-T;o\0)‡8>¯‚π˘å^l±ƒﬂ\"ì∞û≠S[$^y9(o¡aﬂªoh∫â|C4Q)∂≥±b\'ﬁy◊9¡=;sı™Áè&∫ïôÁ≠π8)œΩX∂µ∫æ+mo;±˘QW%èµz≥ßhöÆª‹6ˇ\0f”åÖ1/œÄ9onkßΩïÆófÎhëJÿÃ—Ä¸Ç0ß‘éıÕ*ÒSPé•Ùπ‰¯sT∑ù\"ö tïÜ·BÅ◊ä€µ‘MÆCcw\"ÿ«&\n¥ß8»œ5Óÿ≈oˆÌGQïÌ‡å©Y%Â¯œ∑>ùkÀ|A‚ØﬁŒ≥•¶Á∂u	ë˛±G≠zË≈´…ò rËb¯Î√znÑ(Ôº˚Ω‰m¿N0ùp¡q…5Ÿﬁ‹h˙éõ6≠r6]HÂc∂åå ?∆∏˘YA»{RÆ¢≠ 86&8q@!%YU9¢iÚx§q\\∆áAq≠M®ÿZiÒY[∆a›Ûƒü<ô9‰˚VT®UépMCÌÓV ÁåTõÚ†ÓÁ=;“r`ïÑ\0wÎHIW^†ä@·\\gı©$;á∑jw)%gs∏í}i—πle\0ÔQlíx#äTM∏œZã Dœ;JˆÎä™q∆y´@vƒÔµÙ´RY€ApëA‡e≈+§ø0œjëm\Zh‰î:™∆y9Ùı≠ÌCAé∆Œ+ËßWäCÚ´ªÒâ#Ô9‡c⁄ãˆVi?(#•B¿Ø?é*¡$©¶Ö›é:’\\Ç˘≠å`“ ∂ﬁ\rXé&V¡+≈ï·yˆ¢„:Kª◊éÊTéfkfoôT„üZnüygovØsmÊ∆*d+ü¶9¨¡\'éæµÛK7\\ÒY(Ÿ\n«¥DØ°⁄\\Xi“˝úúH© ,W€\'ö„nt´´©Æ‡É√˜“Œ JdÄG5£·/[Ÿ=≠íDÀœŒ°¯>¿\Z◊Òæ´´xr˙¬Í“Ídµùï	Ÿ ı8Á∏Ê—jùv™-¿Ø–Ú{ÎK≠6ÙC&üqcy\\åPH˛µzx∂∂’Ól$ªévÃÁ∂Evöº≥¯∂Õñ¬ÿ«.J‹\\H¿¥≈Fr{Ä1¿´ñqk≥Ë6:|∆„Ï¯Xÿ…Ú™ùƒÇ;˛\"æìx*é6~g=Y∏ª\ZÒ/ÖºG·Îç5ÙÈ-Ô„âå©Cq«qèOJÉ¬˛\'v&ﬂR›t∂“*~¯d<g!N®Ø7Ò~ÜlºQzöd,àAY≠df\0˜$ıÈ÷πy\rÙ2.VH•∆Cgá∑®™ØRP|…h…åTèa◊4Øá˜Õ-≈ç¿”ı}¬c\Z>{“∏§”÷ﬁHÛ∫Xõ´sêx=8„÷Æ¯O¬>%@∫ì˝Ω¢/cÚÓ£œ‚+F˜·˝ÊÅ´§w\Zùæ>Œe˘H8Ì∑à«÷∏*“îÂŒÅMGCí‘Ïù|´Öµ0∆ÎÚ‰6:ûk…*J>—e^ô„\"ª(m./o¨,e∫íeåÌh§Ã~^y É”ÎT|[mßŸÍ◊0@\'à¶›ë±»ıÊπÂU¶∆ëmò–$ósf$‹°w∞™.ÒôJ°‹§–ó€d[»QéFÂ=èQRÈ6vWW_^õeU,!bƒvı®Ö7&Õm•ƒﬂÂÄEÁ|‰≥Ø z˝*Î¡l“:G18Âr1∏çe‹Àé1»‚¶\Zªïã-®À<Òì#±«5ﬁËZ «∑u.`Û√fºﬁ’7…éåG÷ª{{´;+6µäTöxäœÊaïõ=TˆÆüh¢‘ûäÁOj∆GÁ†ÌZPƒ¨K/j«≤ô•DdR~+vÿIªë–s^≠%usçññ·÷Ö~UlQ–ëﬁßäBÖ¿9›éj;Á©¢˘±”æïØ\"¶“õh≥∂Ô0.\r’ø¬¶÷5X>¿êë‚+ÇÕíπ»9≈g€‹X§bëd\\ÀíøOCULÆ7DÖ@qå7#Î^}\\\"úÆ˙\Z)Ÿ,º…%H%›∏Â±¥u¸+JÌñ8\'[4≠ƒX]ÃSYh¨nqôD§ê€$qéj÷ç£4wl≠∞E	wù¿ì˜r=˘Æjï!	^˚\ZFÊ_…bŒÊ=¶!åÁüÎV-µÌ¸π-£/ B¨≠–úuÆ∑X“≠.¨Ln—M%H^~Ä˜¡.ï]\"‹wêßêæ∏ÌUCJ™w–â&ôBÊﬁr°äëíwq[:õM&‡,äÇ¢PÆ=+F-2˚Y∑∂æLÒ¬#ÂÛ3–Á°‚πçJŒ˘Ôckπ6∑é≈@‡C”≠iıà‘˜+ãπ÷Ëû$∞DãNø,≤ª£é4·˜I?èÈ]S¨≤;Ögí(Am!ó£9ıÆ[O—m¨,æ◊u,óq@˛q(Äm8ÔûxÎ«ë®¯≥ƒñ∫èì,ë¨fr—I\Zèﬁ ÙÁ°\Z˘˙Ù£^£ˆ\'D]ñßye®M\r§RlYau*eâ∑(9˘zˆ#ØΩkMgkqnÒ\\¬íF w5ÊS¸D{í“˙ÕebB´)¬Ï\'úÅﬂØ4ﬂxˇ\0Sµ÷≤l	-Â1I§‡∫∞nz\0k·kEŸ¢˘◊SäÒ∆ú∫ÆVŸ§ö“P[sÅü·œ8¡Æy^:»á˜N8‚ªçK√zÁâı˚∑y,·.ªÌ‚YCÆ:Ì<”5»Í˛\Z’|5oˆõò¥ïà uR;„µz¯ZãëAΩLlK‰€ÆöÚ˝†w.ﬁÿı¨h‰í%Vœ3öiò…P‹∆\rRIIERH\0∆∫°&Øp∂ÜÃNÏÖú‡g°*ô?{π@ù√‰«o^OzYÆã I u\'÷∫c-±~9ôOûµ©k©0¡ﬂ»Ì\\ÍÕÜ¿=}iœrb<èj÷5l7;Hµêc√~4ÿµ.CÛ‡v9Æ=5/ÉH/2˝~\\÷™π<á˝ßπr[ÈU¶‘ÇÉÜÕrCT⁄ªCqQ…®w) ≤D™lË$‘Cd˛uü=˘«^j»{˜r:˙Uo¥≥ÎY:Õñ©ÿ—ñ˘ﬂ#5TL≈éj1Ç3ûh#i»ÎXπ6Uâ„êÁ$sV„Y$R√/\'ûk;w9Œ*ƒs≤sÄA-A£QÑMh°\\üò„ø•Rì10Á•I–]ª\0ﬁS“ñÍO3Á«Ãzê8´-ù∆.‚wg,¨ÒS\\Kuß]1ëö]ŒYπÂ∫ü^ıíìyS#`$UÕCQK®<∞ò˘˜‰úc•5\'}¢´Frƒm¬˜œZríxQT√åˇ\0*∞%2p9Õ=«bt»ıÎH¿åqQ‹@I¿$”ærp{u≈+\0◊eB£∑z∑m®‹[Ñ €√Ñ\'#>∏™m¥ÉBæ—≈NÉ‘Ω5˚\\LŒÃƒ¿=®Á™Aâ9©◊ÓÁ5HñãJ«=z–¿üõµ$j6ÁΩH?AZ†±Sû)IŒ)Á}Õ\"åz’ø\Zk\r˘&(B»G÷ïÜhÈ>∫’mÁù#Hsù˝¯Õ>¸_$PZ›Àæ(S‡`\0yÆá√∑6⁄MÕåR \"πBÚ\0º)È¯Ç?ïsó∑[ñå1eåïï«MŒuöñ»∑d¥)îú}jX°‹@ê)œz 2Ï± Ô^Ç–…óm í‹rŒΩ•IDO–U¶∑∏å‚xŸJ§†˙S“3∏qBÓEÀÍã=§EaXÇ·[O°ÆèL”lVÍbÎˆàa@Y–AÔıˇ\0\n√ÄÇ°H»Ì]ùr∂vÓˆ¿	J ~CGJÁ©	ÚŸöπÓñ∂E(√#rûqÿb© x∆kjŸ¸¯féDR≈r§ˆ«•TÚJ•pEkN-+H%›>Œ$r›œZUµÀcµh}úêy=©È?0‚∂π%4Ä.*ÎŸm∂YrôÍFy´P€â#9P™\'øµN÷·mô¸ßPNûA®s‘|∫+ Ä:dTÊ53yàõG˜j‹0Ì#+ëö∏,¸≈-\Z‰évé∏™mu ≤ìd»0!F7z€øo4,—éH∆\0…≈g¡fÕ\' áÅö—µåÇƒÓÇF„≈aQF˜)\\Üﬁ5h¡⁄ÿŒØ…bg¡p€ÀzüÛäé©]†„Û´FG»98}k)∑}ã”RmƒS}”Ï}* î1ÁÒ¶ü1„ ˇ\0:ãÀ;wf•˚€∞Ω∂#T‹ÃFzWP@Á$s–P>V88˙–%*·»…5zìqèÚ/l˙’)H,qWfíπ,	Í1ﬁ®¥eπB#8œj“üòôüt»_j°u«1\n€êÄU±åä‘∂	+ÖTíG‰ÏÏ)⁄Öõœo¢*ºÑâı&Øù\'f	˘{íÎ. s∆*§÷˜Œó2ëlDØéG´2 ˆ“‰|≤FŸ\0é‚¥‡\Zm Õsr„ xA|ù˘9«ßNïMÿ,q¡$Ö¿l¢t$ˆ®£åÉék∫ÉK”≥‚‘eB1s≥ úÅÔéïÀ\\mñÍIaYãbÑ”{”¶¿ säØ3ÔHQìÔLîÌ‡~4‘ë0Kg„µ6I=Ö0\ZœèÎU‰êOqCæÊ8$‚´›≈$@úÇ∆AÔR‰4C5ﬂ\'>ïFk≠ÿ>ùO≠6}Õ9Ôä´≥ø=Z\\¿\\´X|∏‡Zé`ªù·∏4ËUQ∆qèSÕA*[q$ì÷ï«b/º0XsM¡$Ê¶ä0ˇ\0 8‡˚”ÕªÒ∏uÁ•ËdëS,Y9¨-∏$aqVcÄûÉÎ@ä…{~un»\0qÔ≈Nê‘T—¬A†aCÆ¿@Ï{‘´M£’f(ÄäùaÓ(`2uy}j√[î$0 é∆ù\\Ú9´rnldÜ‡\0OZÕ∑r“lZ\n1Sû´q™Ï#$w¸j≤d0‚¨\'Pqﬂö-‘	UY£»<qû*`†b√nyı•çBBÍ@√Éﬁê´ú\0¶¢˙ïaÜcªÂ8œz-Aí\0Æ	=9íÁc¸‹`“%√+¨?ù)§–\"ÏìÜv≈ÇO=>ïiıSe⁄‹«Û`~ÙéûÅ´*ÍB6HõäÏŒ∑Ø·Wt}^‹ªY\\yQ«!%ôàÁ”ìYJ<…hZv25£≤!Ö@PÓÂ›éZÊ¶pÎ◊⁄∫]j˙¬_IîBÌ%PπI”ß ◊#5„p„«Ê˙÷VVFoQe˘Å‡\nÖÓœR=E,døjtèß÷®Ü5èÃEZ∑Å§ê/Lûæï$Q\'~\rZÖBˇ\0©∂Ì,Ñ;ïQ‘úö≥}Y%˘€ÇØª∂:TqDV@A»\'≠nÈ–%Ã>lkΩ√nêg¢˜≈sUíãÊfëW–…∂0»x≠º∞†qèJª{¶±éà¿9P«∂\nø©Ω¥3¥Ò#G$*©Å˜Omﬁ∆™^Õ<ÇAÊ._ûﬁ¨=´m5°|©hW∞É˚Nd∑Hïd#\0Ù\0uÁ÷í}<¨≤lêîW+∏å}´BŸ%∑ò••Ãq*!o9∆qË3ÔT—µÿŸ…_$ÊD`dq”ØÎ7YÛhÙUc;PãÏòY˜,¨2§`©RπPAŸÌ¯‘˙ÿX‘L$Pø+¬≥ÌòEò:≥Ç01]öpª#óﬁ:à,Â∂ºa>÷ï£›Ü‰ÄGc≠f[mME$#h…ü ıÍ*™œlÍU\\ú„äª•Ìπ\Z5‚H»,WúÉÌ€µpÕ \nRñ∆˜ã≤G\\ﬂfÇ;I§T16cm…SÌ˙’õù÷u.#·UwT”∑ÂYO•^XºgîK!ù“T$v‡~oE‘\"∫y\Zb••î∆£=Ç‰?^‘§π·+¢÷¶fµ®⁄ÍV≥€¸≠=≥eL§Çvﬁπaë…∫H¸∂~@#µt\Zï£C}0eÑG+,ÉÀ\\(qÔ⁄≥ÔgGú+£1Oóvz˝+ﬂÀ‚£…≥1®˚ñ4˝Yl<≤PóSêÍ0sﬂÙ©\Z˝‰‘£wôqŸ6vé’ñ†›I∂0Dk˜s÷µa”ÿBXaÅúıÕz∞ÂÜß;ª7ıCwcoö3\\g-ï∆ﬁ»¨ã+ã»RYQ¿é/üir9?Nµ0∆®dwU¿ vÕSñbQQH*H’∂ày±⁄ãÀr˚Ú Ä3Œ*Ñ±=…,å“}”úc\0`VÇÀ\ZÜ⁄º∞¸©–Cípµ¥v$Ç÷œiÆÇŒﬂ\0qQ[€t‚µ°ãjä°EÀ«ASïœ4≈iÒYΩX≈vP†œzŒ∫îm\"¶û`†ä…π∏ÎÕRVfﬂIç‹◊9y 9´J˙‰<÷MÃ±yAB¸Ââ‹OoLQ`2&f,UN3≈fJrI5~ÌXHFFGß5H∆pMKE!ã¿‰–OÀﬂÆGn*\"Yy≠M«qéªéj¡8«J±&‡∏«ΩBbêçÃ¨3» uı¨‰;ï›N\0≈F@¢§\'ûsäRô˚ºäÃ¢+ùÀëÕ9	2I„®=\rJ\0˙sJ»vÛí\"ßpπf◊PíhÃÅU˚ûÇ∑≠5Ëy~_qìy\\\Z‰%O”‚„iá5ú†ôI≥“?·)∞\Zz√oΩZ6\n Á˝jckƒ⁄µ¶£g:uØípÉ«L~À∆Ú©8‰ëœ“¶Çw\r¿˘	ı\"±T“wEs6W\0 á\0w™WR‰ïNAÎVÓî°$‡Áﬂ≠S!H p›x≠	π_±˘bû `3éOjñ‹ ì%π‚¶bY˜1∆:bãîò≈a\Zå\nÇGbs–S€°«Jã;≤	ÈBÙóÂ¡<u4Ê!ó ÒP(9∆r;T¬0A‰sL,\\∞π˚33c*F”ÌÔSj™n§˚xçR)[`‘ı@&»˜n\n{/≠hIwc˝ñ–mò\\íñ∆‹˚zS[ç„ÂAﬂö3œ•FåNs÷ûè‘–;íd3MnGΩ*|ÀÜË:Ræ»«Zw∆ı¸jkiº∂(~È<äÑ7_“ÜÏ„ØzEâ$ô#\\\02@§7Æ,|ﬁ°[≥∞zÙ≈(ï\0WäMÀ∑Zù‹≈w*∆c\n\01“õ-’≈Îy◊SI!$IÊØÈ˜qÃæL∂ë L~Xy?á\'Ø÷´Í:\\⁄|ÿ⁄¡\\ewpqPÏ4˚8./X‚F~√÷ª}w√Vi•⁄ﬁXŒ∑\nIC$J68ﬁ∏≠3[ìG‘ÖƒvÒ:„kƒ„*k_KÒu≈åd)&2ƒ¨˘Cˇ\0 °^ÂXÊ5{cπ‹/\\Vfw\nË‚S™Í3G0À»áÀ√\0g©?ùc_ÈÚÿLÎù»ßáÉZ∆Ka’≥ÚÙ•∆ZF\0–	 UÉ\Zxˆ˜ß‡Å⁄ëŒÂ„µ	ì¡†)94Ê!óÈL#qN–0êÒ»≈∆qﬁúy\0P\"2sı•CÉû‘å∏ÁΩ7?04\rqª°´$a‘ÄZ¨Îëê(Qª†…	õ7Wˆ˜ìäŸ`è\0sè•G<À~J¨d˚Î‘Ò¸™°WP&ÈNW\n§2éj§^¬ äÆ¶7ﬂïÁ°ÆÛ¡\ZMÂµÂÜ•»¶YLmnø}∆;É«9˝+à¥ä6/¥É»=ÎoNÒCÈå°∑E ?ƒA5çhπ.T	ûó}‡âåV≤€E*ÃŒﬁ|2øﬁ…‡t∫èh˙5Ãqj\"Cd≠√&Ï∏Ë£æEp∑Ô¢≥∂hÏÌf!!ëü úÁ\'€⁄πMs]πº7ÊˆÈÊUî4Y€9,£=˘≠hPÇ˜Ø∞•\'{\Zû3¯àﬁ$±˚,r(ï……¬ï˛+Ö\"∫LÄ9›‹ûıU<•ZMÄúíi.f∏ÿI\0cqÔ[π∑†¨!rXåéΩ®b™ü1…4à»Ê‘E≤{‚¢‡4Óœ=)y≠>F$ízz”qìö¿fú	SN@ÌäÄÍ)2ƒû¥€E13ÅAn’ ¡úcØ÷òñÎ“ö‹í)—an\'?≠L@ª@˝£ÈUêı»¿˜ßôy∆x©`]7R’ÅA–\ZçJô1¬ì…™¡Ú1é¥‡H\\äC,‹4\nõTGWı™aòë¥ÒAêÁ•<2Çi°CÉÔı´0∏<Á⁄™Fﬂ6·V°l1aŒ*Xï|∞pΩ6/ﬁ?çF˚§mäKxsOû}*˛{≠À˜‹9„z“Éo@l≤,PfÖDd)}‰ê8Ù®\'‘oudtπíIû% ÕÄæô5sQ[»4» û…ÌÄëâf-ûÿ=1YP4±$∑\"›§ÖW%IQûMeVù•y\"c4Õo\r¯∫˜√∑æ|I•∏xÂWØiü4k˚@f∂ÚÓP\r∞Ö›Ê‡zWœ%≤åñŒ)ÅÔ-Ø‘<,e=?\ZÈßä≤¥ıHRä∂á‘∫^•·î‘⁄ˆ[ynÅﬂ™PÇ=ä·>2xv¬‚Œ◊V∞ªåOÊ∂ÒÅâ„$c°ÈöÛŸ|Y=ÏvÒﬁß⁄2y• ·â#∆ß“¸]pmo,UÜxä.T1›ÿÚ>æµØ◊)Ov—öÉ[	·Ωh€ﬂ-`¥∏U+)ùI;≥‘wSÙ©5[œ?V˚:§Õª>Uƒãπ≤G@zêJ¬‘Ì.Ö¨:Ñó3=‘\rÂJ≠”wÊÔRA}®\\^G0∑}J‘ïR∏⁄qúÒXŒºj§Ø¢4ˆ+‚GA£^k◊QóOöˆ,fI3∏:tŒOLVåÆÙùKR⁄yë£¿ÀçÑw∆ï|k~ h$wh–∑ì<&NJˇ\0¥øZ≈µªö˚[I BØ,¡ÇÌœLt≈cRörN/D8∆⁄≤ä€ô2Pñ«Qﬁ¶ä0åCÇHÈÙ5Èæ0¸:>ì%√¡dóS ØFÿmüƒé8„“º˛Y∞0π^çıUjQw6»¶ô…v¬CFNÈ\0‡gß5î™güéEM5Ã∞¨∞$åŒA·Ω3O±¬0ç›ÒQÀ¢Ôd:èôûòÈöÓm-mﬂDD`\ZÊ?ö=≤<˙v´o·5Åï√E®∞GFê·psåpsQÈ∞¶çk€°VI‘‚TcÉ–„û2?ZÊß^3ñõ¶)lhÈK<qå\0?tıÆöf¡-∑$t£A≥≥h[SQ)Äêß)ù≠é˘„nÓKá&6ÚPåJ´Úê{◊øJ™ÿÂî,BQYqÎLPb„±´qYº‡ºN¶0€C2jéNUîÇ85”Ígf*Mî¡Èûî≤!)ΩF@ÎPlT˘dﬁ¨ﬂpÉ∆}Í0ÌÀC1ÉÜ„>¥¶◊@}ç€	/méDy`Üp„ü¶=)Ú≤M=≈–ø6À+É6‰!Q◊Ó‰èZ|7íj0ÜUFè5n£◊+§1[∂ñcuWkÑï¿`‰Ò–wœ•|˛&¨`Ô-∫jÁ0u÷ñ6[Ñw>zG¡»Ú ÁØ÷†Iaì[x-ˆ \\å∂ÓØ\"∫4≥[ÀìÑBø+Fü*„ÅúÁûh”º/åÀu√4ÄôôòµﬁºŸ◊Ém≈niÏŸ±l\"˚ê¡8≤1Ü«a\\>ª¶;j^©˚]§Õ˚îàÄÄ„$˚sœùÒƒ˜WvÌeeskPœµ ÀÛ±Éé¬®x\Zk›UÌÒxVÓ‹2§3®(ÒÒí∏˛!ûı6qè∂ãù›éÚœOõO“Ô¨£ëf%rÇD&<cï„¸Û^_{e}6Ø%ùµ£G:åÑ&„ëèJÙ]OTåx£O›•ƒÒN$K\'f\'njæΩr—ZçgIYKÀ/ìp#@¿Ï${åz˜™¡:ëùúnŸ3—z[‚}7Q±î5Â¬À:Æ^<| 3◊ﬁπÉy#∞2HÓ∏∆vÆ™Áƒ0Õ(E-,°ÑÜDÉÈMá¿ZÆ´§À\r±äAÛ®⁄v»∏˛µÙÒ¢îUåØπügÆ\\h\\ióçØÛ„9«5“¯◊ƒ˛|Pà¶◊âê›ÅªÈŒG‘WüI[\\<*ÒÕlu#ï#Æj[€¶∏Ú GEjÜ4`ªIRsœ‚kí¶:äiX¥Ãπ3o+LâàX¸ ?áÈDjè∞»l‡Ê§ô|¿Âz\Z¨\"1∞dÀFI»Qíæın%≠If!ÜÀ◊⁄´[Ú•π˜¶ﬁNTº\0ÇA˚¿ıØ!x„E+¸G‘˚”çÌ®â¿›¿$É¯S\ZfdNTt§F!πcúS¨É\0ûi\\b«i4∞K4h|∏T3∑`3ä©ÊúÒWZ}∫tëq∏Äx«^jä˛µRl´\n“5*À≈=*=£„÷òã<diÎ∑ÔÎP+t∑Jîy8Ω+é√À`”√\0\'>¥¬{uÙ4πŒAÓMâU∞ƒußÚÉg≠@*E%§«¶ùƒÀ2Ö=z\n|∑[a*§ı®^6ä]ÆªO•HSro*@<é3UIUüÆ&êo`0ßèAWÊº]	V◊bÅå¸Í‹:≠µæõPDRÈefi@YH`˙Z$õ‹Mæ∆@\\7Õ«zû\"ãŒ+~ˆ’n≠tÀ4û¡•ë¬	\"8#po8ÈœËk\"˜OüOæí U€$måˆ>‡˜‹m™‹åë¡¸0)≤íTêzu§pÿ‚îDO88©íp0)Lg\0ˆ>Ù‚å0≈*ÆœZi«∆ßäüÀÿ9§è∑ä≤ÀπFjídÌ‘‡dZH„8œÈR™˚v≠Æ3œZj«πΩÛV6êy40dÉÿ’XEpü6x≠\r+N\Zï¸v≈ƒj«ó˛ËÓjåÔ\'∫è>üizfæÜif‹∆π}5é\"N‹¢Æ¡oa⁄æï&ÖfeY\'T\'lsµ«∑·\\ê\\ízÁík≠Ò~¨∫∆†±€#≈gqÜ˛#äÁ“€\'\Zú$eÏ‘ßª	=t)¢1=+~“…‚Ç9ùp$ßΩi,4©/nbÇÃéqÙ˜Æ´\\≤K9lÌ\"î∫≈“§Ácw€∏≠eQ)®w%ÏeFåÁ\'ízÁπı´´j§\r¿ÄFG-µ∂TU’åêË:V÷ÏEäë€ê „±´Q©8©±¿»ß\"å˝i†&Ñí¿t>µ:°?{ìP.˛U<Eãå—`±ísS\0œÕK\ZÉ‘sVR0›x≈\nˆÖ\'Ê˛ÎÉı≠I⁄eé >TÁÅÅO∑Ü6ó8‡sÎV^—Ÿ ªqï9‡ä¬N<◊fäˆ–»Hpj˝ê\nƒïI`q«•*\"å´/_Œ¶H±\0|π™úÆ¨B‹±∆U,	#o÷•HPd(éª∫’4*qWÇ˘àpŸœzÊí±§]»¸£)PF\rKÂ∑9‰˝* ÅWåÜ©·%TÔ<˚öñ›ÅY±T*ØÎM⁄K„∑µL\0)í0è\räÑÀkKî§M≤êx}úñ \0OO&_”ä±lÈq\02WÉZ∂“πöI≥HÚ_Êî˝ﬂZàGHr€vÅú˙˝+a§Ç“Â¸ÃeîO$˚V=ƒ[ëÓ¡…RzÉœº&‰KçÖûÓHÊ&!ì 2å€&¨„˚;‹â\n‹Dw„¯Ï*®ÑñÒ›F∏r2 _h€˝kûΩªöÍVwoﬁÆÂÓ=>î‘Tê^¬Î25›∞æÚùYà€p≠€è^Ç±≠gﬁDhUëÄ%æÔ‘÷æß©Osß≈n§,+◊N~¢πtóÄ>aìÈZ≠ÅùE4~m§w€¢E∞~R	…«∂k>EÚ§hœﬁ´O,ÎrbyÖÏj)›°m¨FÏSbπe§O<Áäß3ôcê:‘&vc¥rOAN3Cc∫˘‹‡\'›8‡Tÿ\níNßjö…÷W§dìpÚ˛M N{÷c;3ÄOÊÆàÚÆv∞=Œ*\'±H¥6≈|ætI\"B€§ûN:pj	’.ârR2N∫cÍ*\rÕ	1ª\'\'ø≠-“ÃÍ∑,£úeG˜¨9YZó1§I∑Œ\rûò_‘\ZÇ4Múå±9‹*‹ÿl¸ô^pjóMµéiï\ZDB§1›Èû’[+±≠LÔ(íp;S\n∑›Î[∑P¬.%·†9€ªΩTKd\'x\'Ü=ÖTeupj¬ÈˆS6˜U\0*e∑.p=kVÏŸ].ƒÅbh’p ~˘Ô«Áäò›lê¨J<∂v„=áC÷£§í3\0W\'\"≤ÂrïŸ|÷VE4≤F@Àêp9‡‘©^:v8ÔVV\n≤ñÿ∆Â<Ù>µÆƒc∑$:TÇ‹£©Á⁄µma∑ â7nÇ:R»Qò‡qÄ0jyµ∞ÏQÙ‚ßD\0U®≠ÉØﬁ\0êqœzaP;ˆÊù≈aC«NsS€√ΩŸ	<åßH¶G*¢ù£Áœ\'⁄•3U ü«ΩCª«=∏çœ#öπé¥äŸÍiéÿjívFêÄO÷öf=ÿ’Võ®ûPIÈÈEêL‰sQ%ÔêÃYGN„5]Ó∂/@O=k6{≠ƒÂ∫\nN7–w5%‘|˘2àA˘zãqp™‡Á+ﬂ\'ΩA$˘úd’)‰‹p	o†¢1∞õπ6ˇ\02]•ˆ©<úÙ®‰çñfV!à=GCQ∆í‹Ö>’b8…»ÎTì∏á√^ÜÆ \Z.\0≈YQÅV\"h@#i\'°>’UO|‘\0cëWÏ‚2K<`g*y©ñä„äæÉ\"pÁêO#÷ª(£∑∑≤0ƒ°C(ìû}k\Z+≠(\\(ä%Xä %ós+wÎı˝*-kÃ±πQ#\"aπ?7ßÂ^}gÌ\Zé∆ÒJ*„5\rTíìHSœE	±GÚOÈSXy76ÒÀp0 €cãp„?wÒ÷´√tYÕù‘1úH“á«8¿‰}?≠M\r§7Àz˛a∂!ùN6åu#ﬂµeVJ1ÂÍTV∑/iö—…qƒ«Ê<˘m∏HpÏ{”[Nñ)§fí%-Ññ<1èò\ZÕèZüO◊∞ÉŒ2/ò@‰J°x9Î⁄≥n5K˘¶⁄$eÉ6·åÓ9‹◊\'%iJÌËSq[ıHvÎZ	˜(pæk{ü•Fê≠§LÓéT≤œ †Ωfy˘•‰ëwÚ9_Ø÷§≥6ˇ\0ŸklÌ\'òÚêg∫qﬂ©Æıuc‘®Vk¢ƒIÈìä›“Õ§\Z	#ç©ÃòSœÍïse\Z°xù¸ΩÿPpsÔZziÛÇL\\√4d*∫Æ1è∫sN∑ΩMÆ‡ïô›ÿk2ò—¶ï&vìi„nËπÔœzŒû˛+;´{àmPH‰*ÅÇA›˙ü ≤\r√\\^Fé™∞cÉ¥œΩY‘3¥ @äï#ìÔöÛi‡‚öøSG\'bkŸ≈‹íF2d4rñ„∑”¸+&Hò §ngìíÕ…´z\\2Àç¥m∆sûÇØKh÷—«+ú+®)ÍVΩ:*4ü*2≥jÂKGèç£Ô˝+N,ºoÂ©–±5Õ‚I∞´Ç†m«ßzßˆ≤7na]6î…∫D∑ãèbœ∏r}1Uÿ©nQCg(‚Ö æFN}{TÒBπÎ]çëõaˆuV]ç∏9«CÈZV∞azu§Ç‹qZP†\0\0+D!–E¥\n∂8•2\0:”ˆ|\n´4·GΩ6[åf≤Øn¬Éœ4%’ÿ¡9¨À—œ5’ˆ3Õ`›^Ó\'û)Ä˚´º±…¨Ÿf/¿\'\0”$êπÔQ≈+ïvúdsœNcéGNı+>N\"™»‰dı\råtnß!…È∆=i“˘0üÔ\ní0™Ÿ!7gÎNµöpØ1R®ró ˚Y1ìZK$“Oo\nÔ2mÚG$è¿u´7ÒOπÇK∏dX‹ÒØﬁ\'ÇÙˆ¨ôÔAêâP™Ìjπw]ß8ÎèJMË	tQNMõNIŒ8†2ñ û¢Ö}ƒ˙ä≈îO∆∆ZÇƒ˝≈F S‹g÷¶ètßì€èj⁄¬kH’cQ1;ÅÄ}Íe+W9ô	ÎöÅ#ö”Ω”˛≈$»‰HàGNUΩÎ.Añ…Îé)^Â#ê‡Ù sö≥kyˆ[ÑêDé€â éjî@å∑8ÍÏ3A˘ìq«5õ˝CH∏í˛‚ﬁÛZ2[(2§u‡˝+\"$úsä÷ö˙X€(Ãõá]›∫*Ç“$æ¿>e⁄A{ˇ\0JmÆÄäûQè¢dw4õä«◊Ø^j—ïŒÛÅízUw»ã$~Tê\"ª0”é8¶üïyœ4œ?ç1»\'ÉAfûÜG©∆gH§^Öe)œˇ\0:€Ò\'¸#‚⁄ÿiâ\"NôéÂrHËŸ˜ÆQv\nΩsÅé¶≠]⁄\\Ÿï˚JîppQ∏aı“Wª˚vâfS0‹ÄÙœo≠‹»Ò&‘$ê‰‚™oeåı∑·Ìkö•µíÃ™ÚíÃNpä99ßf«±àÍc|+r\r7~[úUÌZÀÏr[eecú˙v˝+7i∆G≠UÜã!æR{˙SÛπFzı®ér{‘™ÿ4ÜÖs∆y•R1É“õ‘cΩ 844ú9üjôV\n}jºÉêFsV!-#\0;P»f˛á\rÖÕ¯é˙‡¬é\0YòeP˜‹:Û”ä€∏–ø¥Ï\Z{&Ò.NÈ≤¨†Ì‡sú~u«´8»Q¡ÎöÓ¥(|+5ï¨Wê$7õ¬‹4ì8Røﬁ=Û»ˆß•π/π……¶_LíCÂƒ\0%õ†8?CäÑ¿©\nÌpÃy„µv˙«ÜÙ{ã©éÖ®¢ÿ≤Ì+Áíóìúúï∆HÆ:[c2D·¿Ó≥ú9v)KBº\\X‹«=´≤Ãá ØQV#‘L´-µ„*e9*±œ÷≠Z€⁄In˚nga1ÄòÌg˙V< ¨í7≈Mê\\Ã ´¥g®8¶±á=iÛ´)WP~¥ååˆ<÷®;˙”◊ÿ‘Aòw´+?6~¥1‹ÑÉìë≈(\0‡‘ÆÉœJà†„ßΩ!^ÏkqöU9„hqÇ\r4ß9œÂ@Ï8ÁüQPûºı©TyÕ4©<—påäl2y´ûô¡œ•.ÏG4Ÿ#9¡ùüR÷/ÏñÌ#Z/òkú  ‰˚qLøOÌ\ZhbH¡∏Êı™z∑-|êZÃcô˛PA¡ ˆØE6ç=ûØ4∑)≈)Ú∂»2ÆŒwc¶F8™åz…ÿ‚mtkówDSπWq›«ﬁıü|±≈4âqÜË˝k÷|UãN\Zú•˜∏® \0=}GjÚÌF⁄ˆ˜QÉ‰åÕyÜâêzq€5§®⁄7D∆Wzôﬂjë#)ª9„ØjÑ©AêƒVñ•§€ÿY@Z‰µ˘,\'Ñ#¡„û˘¨¬qé§÷2ãâ¢w≥»@;[\r–„äï4Î©`ií\'xëÇ≥‡L’Ω?ÌWçºLØÂÎû=≈v\Zõ•È±≈s#MˆâKGgg, W$÷êá1.V8h,Í˙;@ËÖŒ–Ï~\\˝k≤?	u·gor™éó+òƒmûOLû¿◊cß¸qní]œ^LõÑ%àXNAˇ\0Åz\Z‹÷5ùOH“◊NÖ€[m-\']πÈ⁄öZ›+ÖÓxm«ÜoÏ.^ﬁÊ1ÁF~x¡Œ—ÎÙ™⁄Œás¢…‹¥gÕçeBçêTÙÆΩ|ÕjIu…\Z&ÂﬁI>PÍßÖ_S\\«ä5(u;®ÁI1åo\\`)ÓÛ¸k5vı\Zf	l‡v©œîÿòÆrºî•ˇ\0:ñ2e8úöi;Å<ÒI˜}≤(A∏«Ñ0…¥ûÊòâˆˆP…Ói ™°≤z–ƒÅúS	ı¢Fæ^îå0ÄC“M∏ÔR´Üû¬´¢3ÁjìéI®+±±∫ïê…27‡j_)qír*æsﬂöûÉeë]ppØ≠$ÄrÖA∆I´6SDó”EÊFÃ§ıSÕ‰OL¨\"`≤6eè¨|í+µı∆ó{§µΩ≈¨Àr?ù\ZÜ>ù}kåªÑŸ›∫0œZÍºÆI§=Ãf›Â∑∏èwê%Òÿ“∏* qá<7DµtzÊü¨ ∂êGˆX≈	k®¶œ$î©ÁúvÆwƒ∫ƒ\n≥,æí+Cìí*y¨ºì«N‹{UmO∆\ro\ZÕe§‹ÌêyaûO(+˜yÁ¯¨´øÎz±Y5Ï≠£∂m±«wÚ¿H8¡∆{sSOÌï±\nﬁf~…≠éƒSÿﬁﬁ√yßiíi±Jª]7ÓB√ÇGqYvh∑	˜ò∂¥ãÍ\ZF©$ˆ€.‘H»≤à˜F˘Ù≥ı8√OÊ≤}£tX;X„Ô˙˙US∑»’§G4¬“gh$Ûvû1ëV,5˘bëVG€]ÅvåÄz‚®ZºFB≤\"√\nY±ÉÎQœ\ZHÿ@8¿˛ïnz1-˛-NœU∏m=f∞H´ΩÃπ2wÌ¯◊.F÷g[yB3*˘rë”®ÌY¢⁄Y$€…U›ù‹b´4ôêÄ:ú‘—√∆\rŸÈÿ’KBpÊ{üΩ≥\'åˆ£ÕX§*Á‘SQL\\Ù≠\r/OK˚ÿmÁ∏ä!#rÚé=Îy¥ñª«≠¸≥B±¥ŒÒ©˘T∂@4≈;XóÁÒQM€œ!é@»¨BúuJKâ‹FœÄçéä1˙V<ùâ*>%∫œ@O5m¢¡óúw¶i-mÁ∑⁄‚wBÑß«ﬁ¨.pP©Ë\r\\€ã∞I‹ËØ|_©œ•YXïµ[{tU)r¡zÆÉA÷◊Qºµ∑π∂à⁄êw@Úa~n‹ÙÎê+â±’$≤≥Ω∑Tå˝°g+ Ä{\Z-/åxS…»Á=+8–NÈ!IËz¥w°iZ0¨ÃJ?õùÍåÅ«≠Ò	õL˚%√cÊ*1\\•çß⁄47÷Í9\nÒK‹}i∞M®»\\˘¡∏⁄x≈wa˘\Z≥›JÏÎ‡≈Oü)<®EŒ†$@6Ìê‰w¨´gòÈR!i7âÜË∂›psÍ?≠3QVç	éﬁ®x˜ZÙ‡ˆf|≤H∑>£,™±•N9™Ú ”úc\"îc®¨ò.õ$8…=ÍKãì∏4Y¬éy™VLõw7.|Gæäñ6∂‚9§R\'î}ÊÁ÷∫O∂£ï9é)ú¶ëÜ≈\'ÆZÚ’‘•¥ô.bp≤!»»Œ\rzœÜ<Gc¨hπªΩÇ	Çè6EòF≈≥”o¯z◊ãõ≈∆ù¢¥}MÈ]≤\rsR’<>◊°§éTHÃÎ¥ï1ñ8Î¸\\ÛÕ_±ÒÅí∆·nØ≠îåd˜ciıÌ[:∆ãcÆXOk1ƒneﬂûΩOL˙wØ\0‘<w´XÎöÑ∂R,VÛ˛ÏB¿â”\0vØùU8«s¢Úåµÿõ∆∂7wc[öﬁÃÃñ3Ëpy\'9œ≠l¸?ÒæõÏqj‚h&Å\n≈«$ì◊<uÆcA∏:ïÙv‚›Ødô º¡UîÙ9ÏEnxá·ÁîÜÎI∑û;¥óì,ëÉ–dÆ{ˆØeeÆ•~Ü2®îé˚∆˛\"∑õHµæ“fµ∏Q!O8ﬂF{mÓÁÛØ1∑‘.ÙÛ∂∑evJX#∂B±ÔXÛAq§Í—√?ôdgt…¥Ó?]Lö∂ôq°€Ÿ%ã›‹¬Ì\"ø›]Ñ|›≤jiFxF≠´a&ß±Ωg,≥_\\›MdÁb∑ùo\nºqØ@}H<vÆÛ@Ò\n[Ìä8e~Qÿÿl6=:˜Ô^Ah|I·M.=V“‰˘`˚ô\0<e{}*7◊ıK≠*i£º∏fYMÂÅÂÖl‹Ωè”Ω{≈—¨¨Ã9%éª«⁄MØà4˚mJ≈mí{gdªÆ“T„Ê9Ù?Ã◊ú«h˙°sg}µâå°Úú2∂yä≥g‚›gOÇKyú›X\\ÂdéC√Æ„äÁöË#6T∞-ï˘∏Ö78t)F]Dû‡}‹úèJr ˆs	¨Ú¨å)ı5j9÷I≤F^D¿,@⁄zÁ“ñ˙(„XÂÑ§™Ò€AI+®µ-lré∏ê9=*Ë,N’“°⁄\Zp†ÎV£WÛFÆ˜•K5cV<e≤˜ÌO∑rœÉ¿fàåÏŒrπÁ\'4È#Ú‘∑›~¬§\n˜EBî_ª∏ú‘*0§”elØØ4£2Lb‡ÒK¥ëû3ÎJƒ94∏¿¿¶\"!È“§Sé·H@4t‡Ùı†	≥û¯‚•∂ÄNd\r\" E,KgáΩCÖ8•9îÉüQ≈!í¢)`2\0\'\'nËCl±ãYDä‡3ÜQïoL÷a\'ßÎRBøΩ\\÷Ñƒ’…I‹wcú‰ÛV\Z‚fÑCΩºê€ÇgÄqå‘rò˜∞AèQ‘R6ˇ\0,—vMâ#dgûjÁˆqû=ˆÒ|±®iO˙TQ6µq\"KÁÔ`~]∏Á?ç>›÷ Ê@≤†9RﬁµP}ƒ\\’¥f“•A˛h0¨•îÇ9à5ü%Õƒÿ»ÏB†cù†t⁄≠Ÿ›EÂIm4I∂BÃA-œj/lÌ‡ómµ◊⁄ˇ\0›º˝+V˚\n>e!ÇŸO\\‘»IŒI˙\n\r§Á9›*t@£o„In;åÿz–bqöú\'?Ö<EÚ˙\Z’Em#5u#$äé4œ÷≠F≠çπ¸Íí>A¥Çwg8=)LkÊ∞ÌJ±íjx„ ÄpHÔTë7!{`\Z±\'#é*uà∑Zµ0m\r=J	yH©≠á_‚ß¥∑ÃÏÿ»Œ*ƒÀÊ6\0∆ﬁ(∂§6gnIn§ı©£∂À\Z∂∞Ê≠€⁄í‹ä´•¥àC∆≈r\nE[ÚÊyÃK…Ù≠{]∏?“≠=∏e¡•\'›ƒVÖGQS™fà‡*ﬁ’q\"µV¿VXH‘ûV8´b,‘©\0\"Ä(…#nv\'#Ç*_(Œ*ÃKäLb%πe÷≠$D`b•P\n6©#=ÍÏ˚àœLu¨eR»i\\Ç⁄&‹@ÎSº#\0dñÎO˘lO\\wßO\\÷Ww»´ÂsRÖ8«jêåSÄ°»V\"˙‘™òx•‡R«µKmÇ\0ø75\")bI ÒﬁëJïÁú˛bÅ\"ÉÅ»˜©e§»,[Â#ä|≤™†›Ç;äÓ„\0÷ÜÇ2«lfßKö%°M„g∂}´ë◊û1Ù¨ª{πR‡§@≥∞˘GcZ≤‹<í…Œ@‰ª\\ﬁ¶.,eYq≥\'(À”\"∫©jöfRVÿÈ $Qπ`ÏI#={V%Ùã\r‰à®p\np	=M$zøH«&ÒÊ2‰`˝\r6˘ÉÍ!Âô 0\\\nt‡”‘Rj√cæå@í∆ÖUJ‰≥‡ÛÙ™∞)ìiëeôGñ«£˜øØ·Tn&g%∏qÈDÔ EÇPLáçú‡zV¸∂$ø‚y\":l1ƒÒê∏\0#gh∆±ª≥)bTÖ¡∆±≠{©[« 0lì»„+=#Vw›–!#Î⁄úUïÅïÆÍ	ó\0qpI*yœ*î≤1\0ìút…´3˜\\ÁûµL∆ÌüÓéßó˛èÊºÄ)RF99Ù>ï”ÖRM•èSÔVm±ÂÉÁÅ€ÈNõNñ È˜ÆU8,GÁY i;\r\"®ÑÖV‡É∆}Í‘¥9ËHt™í9yÅAÚ‡`b•T ·¯«$\Z\ZMjQVIÛ&H˘söôß3∆r@$ \0˚\n&ErõW„≠J!ÛÑ$†˘à˙\nVC*<gfjVG»ÙÎZì¨m\'Ó¡ŸÅ‘cúsPmEÍ8§∆,j√íÑ‰`V#RÚú„Ω\rsˆà„Bøp`Z±Dì¥T•¶£,,‰*Æ>ıv; ,†:Û˙‘vÒpz’±856\Z±Dª∏§+∑ä∂gêj	\0cû‘Ó[∞0zzQ$€ﬂ<•6D`˚G?JiâJûª≥ÅKôòÔ1vì∏ÓIºöñ;	ﬁVà\'Œ†∂3‘OZ-í#∏Õ∏m¡‡‡ëÌG2ÑåcÎR‡„&¨\\i˛T\"x&G¥1ÜS”r§¡Wb†P˚ﬁı—5t>Q™\0‡˚“LOóπ9Ç@≠Hl«ó\"4ÿ\'+åNsPÈ˙}‰í</òò6ÕØÎ◊8˙W<±QW‘æF`»Õ∏íO\\\n´+óëU[ØÎ]oë#¨Ê‚›\ZH–,[>PW˙Ê©Õ£∆“»∆\"ÇH˜¿˜d„”ö…„‚ô§h7±Ã^≈5ö´\\.ƒnA»&≥.YZÈ£Ü@ÍFA\'π´≠Ö‘[\"¥ënòﬁXÑ›ªìäÊ≠mZ{£∏éOv¸kzUú„vg(rª1»P±RS¶{STÖ˚ßπ5£%√EŸ~]°∑1˝3T‰⁄Âÿn==+xI≤%ãöy∑ÚŸnè»9QÔÙ©Ó\"éÄç≥êÁY®∏«Ω[MÃ7˛5JıÓE…–T @®TTÄ˛U†â∑B„ö∞“˘\ncVnpYO≠0[L-ƒåF–O\'åÊ©;∞%â¸}i5rì,á‹Ìî%èuØN∑ Ò˝∫?5cp\0¡q¿>˛’ôk}$2Æ\0|$gå◊B÷3Ib⁄µ¡yDë¸ÄúÔÁ#÷∏Ò6π∂5Çæ≈E‘(¢∑ã…$óôﬂi‹π»+Ì≈t>\'ùa∞Ç∑X£mª[¡]§Á•`üM*™¥´ˆô§UmÑñE#©«•f^Cu§\\…›¸ì[˘xIÄ‹ 9«<Wù8”≠QrΩQ≤n*Ã¢Õq£2fåØìv≠Ö\0åmıßhÚ¨í…%›¬∂¬©$ë¸áZ÷∏[I|2‚ŒıAE;∑ëªï≥t?ÅÆB‘Öf‹næ9ıÆ K⁄©#)>Vu◊vˆ3⁄Õw,°.ÿÑkƒò‡ñœ·XÈÒ#yä\0w \n™Õ4ª#f!T◊◊≠L#{qìΩK•áµkNÉÇµ…îÓƒÅ€s*∞U‰ÇkY\Z+la∑â£v0w¨òÀ&vé^*‹!›Û¥æ¶qZNï…R4CJ∞Å\Zx»ËOÛ≠(Æ°y\"›Ä<≤w*‰rs€ßJKKf˚b@–.TÄÁ€†¸kV/>∆\",ë1‹ËÁíO\\èßc\\≥ilçbõ)¨®∂\"f\"Yr≈TÅéî€´£2GÛ11®\\ølVéüx÷˘îÅ&<6.N˘ı¨ÀãydÅÆX,qºÑ*ìû‚ä2ãïª5°ñÁ.s◊=™X∆H†¿ŸŒ5bÎ-érHì8‚¥`è¶EE\'é*¸Q‡{”x‘`qV„å\nC&(√IÅUeõ®•∏¿™›pi°ÿí‚‰\0y¨;€ísEÕÊ3ŒkÍ≥\r12;ª£í3YÆrrN)”:ûΩj±ì5-çìök6F3ÅFxŒ;”ö\'ÿ¨Cgn=™\\Ü@Ô¥U§v9 ’ç≠,°Tnc∆)≤¬b H\n∂pIÌS) ±ù$≤`ØNy®ù@„ä∑u	âÅ‰dÒ˘Tèqˆã(ÌÇÖKpΩX‘›e;â˛tæaÙ‚û KúÒWÌÙËÓB\"‹FÓ…cÅÅ“•á©ò$ Á4LY^VS¥dz’òV8íDïU€¯Oß“ìÀi(@ê˘Køû˙‘u∞…-cöhYíH\nI`π\0R€)\"9ë©8ÀúSäµ§kÛiñ◊≤®x§MªYr@ˆÙÌUíÈ∆◊\r‘˝ﬂjŒIç4]‘Nù\r®äßñ‰íKcÄ=\rs≥øñqï9ÎÉZ;»Ô≤5f\'%∫ö°qipYˇ\0p¡W¸æµ*»≠«⁄›!î‡˙ï$3«ìŒ≠TTx\"&`>bx«ΩNãønÂ>‘ömÓUF}(BTG9´-o2„!èB*›∂ñ◊^{!D1Fd!€ÄÏ=ME’ÄÕi6íqÕDdf`Oô:êI˝*∏»nWÛß–±ŒG–íK`c“õ!Àj4lπÌN√DÈëü><·9ÙßMu5‘Ü[ô^IVcíi§!]«åS¶y÷öQKîÛ÷Ω\'·M≠∫¯¶Ÿe3oñ&%vÇ•{~Áf‰‰zbΩ¡∂⁄æôwk≠€⁄I%¥cÏÏ˚¬Û\'√ ä∏´ì\'°7ä|1wØxØTm*–¥i7ñªF@\0˛§W}cs¶ﬁIiwC<mµ„n™kÍO”|;§†KÜπy	s#ÚÓÃrx˙◊é¸[∂3xïØÌ‚fàFë‹HÄIzÌ‹:úbµJ3∏ìiÍy—f)â&2zS≥Œ1Q»ºı‚±4&Çÿ†Äp¿Ò–”gäêÇÌRRë¯PèÂúgÈM\0Ó#”ebT{SâÕ…$í}jS<™†±›ª°™*Ÿ50~É<éú˜°ãcwKø∑0À€l ÌSÂÇ3û˝Î£—ﬁ¬+Y·ö ¥ôFŸAèqÓkàÖ≤CcøzŸ∞ü.∑\\jr@Ó+)7Q.∆Ö˛Ë•Y≈<K\"üî)À:{ÉXzñõwBn°u ™êNÆ;◊oe¨Ÿ¶¨∑À<“yelÁ!p0@µßh:â/&Û\'XØ7\ZÅ¥ïÍƒ„ÒÎJüΩ∞7c»◊ÏqÈ˜BUw∏\\r}˙V|O∞·Ü+”µüá±og±∏Ö¢ëX¬\0œÇ{wœJ‡.tÔ,NYº≥	\0+Z‹iïà\0í:”L∏<R<ÄåPÇrIÈBB‹{HIÎäP≤‡‘mÓ)π9‡P2w|v®˜Ò”ÎMaë«>¥›•~˜!í´Ä:S∑nˆ‡@\0ÒJØ€åP4+Ûﬁò{TÑ‡g}Ó;–Ä@Ô´$d´êGj˜xˆ)<1a™O®FÆQÂ G#=´√p	9’4^T„vÌáÜ€◊jvfrW;Øxû‚Ì°Ü¡%áó∫(2ôÍßÎœ‰öMÍƒêWÖ>ÇÆ\\‹[=Èí‚ræg\'Ò™◊sµ‘Ô+ñ9¬å¿Q*ÆLQV$ûÂnïåF£¯G5T±›¿‚öú}(c∑íy®’ΩFz&ãˇ\0ç¶Öa5Ôü®≈1/fÈ∑pœ®÷ªˇ\0kﬁ◊§í÷µh‹ÑHrGUÔÎ_=«&◊\rå‡Á5`_:Ã“ÇVC»e8\"∫UwîŒT”>äÒ\'ân!Ω∂≤—~…§ç≥I(9„ï∆x„÷∏O¯éÁGÒ¥ã„≈.dyFIaÙ‡Wô•˚o!/É‹ûjÔ$ùõq\'qœ\'5^ﬁ<∂H5:YºAe®Oöïàx„çí8°}ª§\'!èµfI§OipìÍ∆(ù¢uœ•mË6~%”·‘Ê±o=Cﬁ$## {Wy‚K8ıΩZÔOKÀ“Œﬂawè`$süØjµh˚ƒÛZ^È‚73´¥¬ôH#È[◊Q€õ&∞∑[y%Vi\Z‡ÿÈ¥„Ω`∆\0~ú˜Æ9´\Z≠I\n±Î⁄ópa«A”ﬁ¢ímÕ«A@vn‹Vcb±õª<PN)π…¶Ó9„¶ó$Úy§#qN;r¸h—ÃÒ¥‡0¡°»$})≠é’,+»Gÿß¯èA@∆¢Üúq≈8!\0∆¨ΩìDë Æ¨éqë€ÎC€àx.éÑr*nÑ\rc<0G3£ÂF#Ü„gr≠¥√ r{TÇK´√ÆÚÎªljN‰ÙˆÆª√fı˛9&äF∑∑ ˘á,\0 aIÙ˛Ut¢¶Ï…õÂDzñÅacm\r‹Nì<Ä∑îÃY±–UÀV“Ù˚Xn÷i¸ƒmíEo˛±ëªè¬ª?$ímF—uèÀ§Úqúû?\nÛÔ[ÍÕÆÿ=‰+o4jVE 	cûÑˆØñ=V“⁄ªô≤ÍRKp—A=‘än<–ì∆9õæµ†<V≈\'≥˛…Ã	‰p+ZŒ€_π∫≥æû»I9èœâ7?=»ŒqëÙÆ˜ZÒFõ°]i	t±ªôG8aÉ«lÂXUú[J1øÃ´X‰4ü	l‰’¨Ó•à#≤Fﬁåç‘WÆ[›€Î∑	ÆBZË∞`âÚÆ„∞Ø^ÒEºìFuç&‰]Cl¢YñC˘L:—Ä?ùyOåµ[mgYéÈ‰Öñû\0q ÏH=\rN\ZuúÌ-Öc\ZM&Œ;vt}Óá´lŒ0TéæıVKf˝û!ÁéóïÁæ{\n◊—`≥ê˘˜3ªH%⁄0	‡Çx ˜´ﬁ(Ò-î⁄=™XH!æÿbò[F=éMv˚I©®Z‡”2.µƒãD].÷ 8gm…<·∑oÏCÓ+/I—°Ωª≈ƒåñ»3#Æ	üÆ*=\'NüU‘\"µÄ¸Údût	·õÿ‡ïºçÒ¨¬3\"?Ã?‡pkIŒ4ó*vlW±Õ_YΩ≠Î[∆≈ÜrÉ˝>¥AìÃ\"ã …˘€n1⁄¥¸G¶æë´w»—¶◊Gt(H¿œ†æ∑≥í¯;£<R\"≥1B•XéTÁ–÷±®•Àπù#;Á$‰\Z⁄X¡i7v¡ÌVÆ≠^“qΩ‘Œ™…ÑæzWE5}I[íYCó\0ÁüJøˆ7ñ)dç’<ï,€èßj°\rÎ≈ïµ0séj√]9à∞âÈ÷¶¨[ë/FWPd¡œ\'ÆjUâ÷E¿=Èl„.X2‡ä≥$.Ñ0i≠©§ùÑh⁄‹‹≈a,Bf1–	+CHø˚,˘#\' Æ@#èZƒäm∞¯√ö±`ÛünkuCv=)<Em43;√rÑ2Ïåa∏˛ÔCXáP2_Kâï¸‹∏?î±Ì∑∑•aˇ\0hJ#è/¬p=™o]§26–H¿€«JŒ’;èöÁ†€Ë67vsE$Òÿj1Gº¨év0∆ßZÂne}\'Qt3§œxõ*ﬂCÈPjﬁ!∂∏∞≥[s/⁄\n›lñaç≠üŒ∞⁄Ù†.søüöï\'SW\'ßb\\WCSW÷mnÂå≈g∂»¬CêOØ=ÎIôéË…‹9∆j´‹∆ª∆Õ≈á såTk:¶X±¡Ù™mZ≈§kßçºAh∆ß(˝—Ñá9ÎÏzzW/,≤K+;æÁbYã¶Æ›ZÑœ*∏Kñ˙u¨¬Æ[;≥”œ\npãºUç¶ñï©À§ﬁ√w\nÉ4ndÂH◊∏i_4â≠§KàÊÇ9\"í1Û	;„\'º◊œ»Yy<v≈hF∑ë‘ëï+È]P™‚≠–ŒPL€÷Æ·õU∏ïûÍÍ—òï3æ$Òû8ˇ\0ıU7’dµï\Z Wå¬0¨>V#ÔPõ«üKÊåç.wÄCé:oÎYõB∏«iÎÅ–‘Njl##r_§1°ºëˆ™[†œLS|Èfπd3ùíı#å˝k	òÇyz¬ËG*r˙\ZÕB1’c¢˛œô¢¢;\"°edqﬂÈYO\n˚¡œØ°Æ∆«_∞˚ZœÊG\"¶œ60§®«ÚÈXW´\"¿&hë‚ü;HÍH„÷™õìπ—ò;ôx?ÅÕH◊íò|íŸ^‹‘˜¶ﬁGÜa∂U‡ÇEQ‹\0=ŒqZ64Æ@8aúˆ´ëô·Wù§aÄ=EPsâU¯o%âï˜)¡»S{‘èIi¥ü∂F—úÜCeÅÚ;qY⁄µ˝µ‘6–⁄[˘^R~ÓŒˆ=˝™≈ﬁ°EŸK$SÃ≠ˆêß\nsÿJ∆¡\nk8›Ó5b7=2;“Ó‹?›äô‰V∂‚Ñ‡É≈(œsJniÿ§&Ç1ºÄ£&§ë(ı®‘∏\nL∂pO=1CIAë&vûvê £ÔN6Âa\rûJÜXÇ a¡ËA9©∫âSzp94È‚eÖ`Á<T6ÍÏ∆\"áq≥R31º8ÑÍƒ˙qﬁû§ëí8ÔäÜ7é¸˛u:0\0‡bÅ4Il\'∏<sV|ñX>”;u¡˙Ud@«=±ü•=w.HcÉ¡ÊùâÁnA˛UrÄò,oÊ3\0hı™ÒB”HDq≥2©b†ÔWlÿ¬d‰© ê\nd´Dé∏éSrVSÛé˚ääE#æ3≈K{qÆÜt˘GòY∑nnÊ°Uœ9ÌZ°\\zdı©„;ÜÎPé\0$@ÓÊ¥@[ä,U»¢*(◊ë«5q\"\'úV∂!±T˙‘—†Ï)À•]Çå”ë&⁄ªk\0y)—¡úbØCÿ∞-∆i∞EqïG~ÿß$;π´RCπÇˆQäí8qB%ëEH≠k\\s“àbŒ=kB$∆jc$ä04ÛcV¢Q∑f§ÚÉÚ(∏äIœ:¬j_/i≈L´ÌE¿ÄD›*dè¨${π‡S¬\0j\\ÄÉÀŒ8ß¨DT˚*Täá0∞ƒR*¿ó\nªIΩ0˙\nhõ‘≠âº÷fÎR)„5x»ÕJƒ`ë€ﬁ≥}ÄR¬ç„\\∂xÕ¯ÔOêE¯®Ãïîz‘m!«‘\0µàΩA˙ä∞≤[ˆË‹}k/Ã˜ÁΩ#9	ì–Ù°“∏‘¨_ÛZ\'tM¨G ì€“™›j•vô‰f°ÜF$.\0‹z”n¬€åq…œZ•M)jW3%≥∫ÚöFíL8 ∂O’mFOÌ´2ñ™¨Jùﬂ0„¶)$µh7±C\"…\\ı„⁄±ßï`åD°YÀnÛ˝ﬂaW&˘êõv±ïi?ÿÔ“Gê0åäÌ,¨≠Â≤yßé\'YI(˚∞vìﬂ–◊)qr¡à˚¶f∆¿>Ë˙’\\»#36¿s∑<ZŒ.[;ôbh.\ZWHA(Ñ≤•ÜqëÎUä>zí¿„5¢CñI`oıC\n¿`è√Ò¶´˘-µ≥íTé˛¥9´ÿ\n	$pyr«µà»c‘èJœx€9¥—5»2≥Æ\0⁄wúqYÏ£<tßp±ö—yjX£@Ç6_îæ\\É…ïq·Œ)´Cä\0† EÄCf†∏2æC9ÿzä’hÁäÆÒÖ<Ø5- («nb˘›3ëï»“êà¨x9ÍZµ\"‰Å“™H:‘4ŸW+…:;ÄÉO“ç˝pÿŒ*)£⁄Ÿ¶ÖÍ‡qûhJ√Ω…LÖŒ(+ëäX⁄\';˛ï\"ÌuPß,zäWê†»8¡≠[Do-ò˙’h°…NÉ>ıµ``é2el®ˇ\0ñc¯èøµ&Ù–hHb Ô ‡wß®∆NH©·ïîìú»Ssë∑è©©Lbå»-∑Øn*¨çå{5jP≈ä´J¨Ë™ƒı„£[èK\r∏lHUT”`ufê ƒÁ˝ú˜ß≤ôúê©5i≠“⁄·c/¡_ô«#Í*íV\ZfÜ\\óî°^˘@Ë8™/˛∞≈øx^EK$1¿ŒìÃ0º\r£?à5]‚å\\*ÖtaÛ1Œ8¨‘“*◊5bºâ˜ﬂ}à¬2‰t∆sÌ≈U∏Åƒ\"Í(¯åágˆ™b$râ#H∏«#ßj›Ω¶Øug\"˘>tl†0c∑Úı\"πÁV1÷Â®∂Kπ*€Ωƒ≠â#ÃyëHoz‹≤-ï#·ºÂ‹&\rúd~πÈ\\Êï¶≈0ô⁄C@€\\∏ﬂ\\S‰≤û*„áB»<∂ÚÅÁ;áUÔ»ÙÆ:ŒmEÍmµπÈiocwµÃ*åÙ«Q\\˛§≤áëà˚<!Ä@1$`ÁëÍ8¸™çüâë∂≈q#√øe!£|úp¿u¿ÔäüYÇYnb\r\"H»lq¥‰Ù≈\'\'$§¨Z˜vg%≠YﬁX√lÃÑÏ0‰ñ˜#ﬂ5œ€€yí Ø:[…Ç√x∆HÌ]o}k48òÇÖY$‹	QªsË2kWÜYu©¢éeπm‰áÚOÎ^∂\ZO‡l¬o[è‘¥ÔÏ˜d2C7+ôc}√ïœı˝+(vvF	\n√!$Gß•2hù0]BÇ>SÍ+∫ç‚¨›Ãg´–çFØjdê˘<eA›üJÅ9«π∆zëóh‹H˜∫73fæõ•Kyk5—ë#∑åùàÂÜ8«„UÌí9ÓDm EÓ«•Gq$∞Z√`∆…ï c©ÔSÿØô‰jÕ!=JëÇ=¯4ƒl\\Eo©ﬂGm§»7.Ïól \0ûGßíê€$“EtÏÏπUX«‘–ºVy±Öí=π`‰ éî›>Ê	5h§ä‘ò≥í§„\r€”•gRME¥\\V¶Œã¢-µ´j2*Œ 7àÅË0~VœF´˙M‹ZÖ™∆#Ú~vÄ#ÿo@=O\\÷ìIË⁄ì∂^\0»…éH<Éû„ﬁºÁW“·ßÜıﬁFôä8Œ‹aøR?\nTû*MKG–Îkë&´®x}Á∫≤‹áX7ò>Qëü®\'ë‹Wu=ıÃ˜SH»KÏs‘Z∫ˇ\0àV”m X›^X±m€âÁÒ¸k\n4%y‰ŒΩí<”^ÒÖI]Ëh}∑Ì:WŸ\Zﬁ%(r≤®¡˙ZØ\ZÁÆñﬁÀMWÇ+içƒr\0¬9ëå61»$’?-!7@Io·?«8Æ»%ÿ…∂˜(F >ÚÂ∏¡Œ1Veï¶EﬁÃJÙ‚û–»ƒ§ëÏ(7`åL“,h9œ<÷é›D¬YÜxßgÂ¿Ã§IÛ•IúcöµÇ2èÇXt˜3WEGCn8ûeâ§ñ5êpK∑$úÁ∑•h›A,ÇÖÄÛ∂ñ„®Óﬂ•d5‘ó≤ñ(Gz“∂∏ùÌÀyäNq∑”ΩpJúÔsU>É≈ßŸô÷+ñ¿<ƒ„Ü®∑°MÌ¥9¶ò$k\r∑98¡ÁÒ≠»%Ü%Úã`CgÑı˛UNöΩ∑!ÓcÍ:aél¬Ñ≈¥}Oz©8#\"∫ô-¸¯äßÃè&ı*ŸÌœ·Yì@¬f$w≈v·*∑HŒKR„¿ÈS€NT„\'µ@ÆÀíÿå’\rÏ°2IÍ*Ho\"ÉôT∏Œ\n˙ä£}¨<≠—™ÉÑ<üŒ¶˙é≈kπLlTëë◊ãsyÄFj‘“«&‡d¡€ï¿Íkõπ∏˘ÿg<’°Xu›ﬂ\\u¨ô\'%≥OñRŸÊ©±!á ú–ÿXëÀ;\095\Zπj∂Õ1NÍÄÍIÆáN˛«KvÖm^‚F@Ì$ãçõrqP9à öu+ñœ`2Moc›Èvºä∫vÛqÈ[ZñØß€⁄3Ÿ<V≥Zƒ∞¡\Z.‚·ÜIœ±&´⁄õÌCL\Zã∆“$ôqúcßø5úÓï—Q◊s\"‹L—Ñd*∏RÁn¬9…?Á≠aÎòµ&IrøyêÂsé’ﬁÈz¶ú,Ø≠ıEë€ÌW∆xˇ\0\'¬œq‹™™F§P+R˚î‚c∫≥∏ıß&ûêhÇ‡ RQ!å°aıâm>”rí\\8é&p•á<}O\n€∫3CΩJò”-çß0˜„ı°N„±ï¶iÛÍ7&xÃ≤∑\0…≠Ke}‚Ê“x£éÂì`3.pß°˜®Ù-V&ˆb˘©*yyŒ\nåÁ<u≠ØZÈ˙£Zﬂ⁄HhÃó0≥(ß∂]˚	µ±Ö≠3.∞+hTFëç∞|…ê9Ô[∫›µüÿVha∂77\0¥rD€S\0dÂ}s”Î\\º≤5û‘Ü] ~u\0ÙÁå˚’≠Lπ’ÓUdóÀ¥Sô‹ã‹˝j\'Òs—X≈fv]rπœ=jP9`¡{b¥µÎkÈ\"”ZfÖç“‡Ù>’ùir-ßﬁqÚßÕ\rﬂT2Õ•¨ÇŸnål#g⁄ç€5∏◊\"XrE≥aP>n;’{;wæàOq41∆»∆8Ä9\0§ù{‘∂È‘f\n“Kooﬁ„<cÂ‚πÍ∆˙≤¢Ï,ˆ/$“yô 6˘&3˜qÛcﬁ≥µ≠!4»†x‰%@¿£n\0˝kÆ—l”l2õ∆∑3ª«œµÅ⁄Gø∞<Sˆ_µLê¥mÎ›±…˙ç5{\r3óIép89œ„]÷ü·ŸÓtÓÔÆ¢H{Ñi¥JW$ÁüZ‡„\0π„uÆ„√˙åo¶G¶ﬁD≤vgQí¡Án};˛⁄9;∏v‹∫¸¯<Æ‡2GjÕî\0JûOc[◊Q[√4À,§ªúôï˙b±\'u\nG∑Â9?ﬁ˜§∑)1À›1I\Zí;rx§nIÙ5b‘Æ‚%$vÓj˙FË7(T!(vgÛÆ∫œ√+¨‹ŸŸÿ¨—ÀÖ˚d≤èí=«É”¶+Z”[J‘n,Ê]≠m09?Q≈\nˆ∏ì‘£\r¨óœm™@<r+¨—<G™XZd¡ò˘ﬁrâ:ñ\nvúv¡ÁÆRÊt∑i\"≥yñ&v¸n\'›©4Ë\Z˚Q∑Ñπ&I>˛”…«S“≠vCÛ:+]Q&›ı[§ä‚e7 …èìêØ=´ÿ|Co†Èû∑“ncêZﬁGÚ\\≤n*˚r$r;◊ík≤ﬂ_j6˛∂Ÿ0≤˝‹B8¬\0ÿ…˝˘ßkìxím/Oö˙é u1XD&»«sÄùtF§s\\‰%¿c¥‰◊å22j%\\Ü2∏e·áøzjíWÆy;ªö†^˛îÚ{”q–”≥ëé«µAB3sπOµ!∏Ïh›€O=)Ä’¬…É–”‘‰˚‘nISÔR\"ÜP‹„ø÷ìÿñ]≤ÖÓÑærqä”≤µçÆcIKmcèóìüÎPhQÿæß◊/ok!ƒ≤†…èO≠tZÕÜù£›DtmKÌënﬁ≤t(G \ZÜõç—7◊S¶œÄ#◊Ï..|◊∂ë`|§˜»≈MØhÚx[√∑ty5l«<yÿÒú;2J≥‡O,&ÊﬂXΩäæIu%AËztı≠àóVZóá†í=b“\"π}‡ÜÛ\0Ï1ÔZ—z-	kS«Ìºc}•apJ⁄≤(\n1Ú©‡cÛ©<]¨Ÿk+⁄Üç—òˆ\0ˆÁπÎX˙çÏ3n˚:à—õq\0u8ÎYí»ƒ„•+Ÿç°õÉI¸®`1◊•5õÂ⁄1ı§⁄y\0“\Z„ÙÕB«úÊû›ΩDN)¢á§å:R±f&òΩ¯„÷ûOΩ1†®Œ=©ƒdzRJ‡t§1È&G∞ß1Ræ§ˆÙ®«zï·ª)4.Éâ<qL›∑úıÈÏx˛U%ÜMJ3\"åÇ2\r5¬ê6ìì⁄ëx≈ ˚µ@4πÉÕ#˝ﬂsﬁÜı—ñlu¶13é‘˝ÀÇ{˚SqéÙ“y¡•`,:ïP«=≥H—òÒï ∞»ÕOùrÏÅai7!ê‰ÌMOw\n}û9ﬁD‹‰+ñ˘HÌÎZ(J◊#ôlkh˙6Æë⁄ﬁ¡±Vi6£¥°wc®œßΩ\nõ≈:\r‘Z}•Æõb◊!±2M3ê27›Î»-‰Vï#πíQ‡m9€ìŒ}˛Ê“=*€ì»A«ô&3Ü€û8≠c%mHíw–Û≠K√1[[]K|Ànm@±Â€GN8Î\\’Ñ≠#à£|ÆKÆ9P:öÙﬂà,õRæó…ó.xm‡p:◊<ñf{≥&¢õÇn_*3â	#ÂúS©t)]ns∆IÁÊr«jä.G3?.x®waN+ô≠Kè∏‚üó\'˘U`yÕ>7*›(hd¨ƒˆ¶Ø_zR‡ÁÙ§‘ÄÏÇ	î0=H¶nÁ†‚î8#Ä6N≤”Ÿ,\raóç¯∆jí∏«\'5W8«4“ƒÉé*y{w4aΩÚã.—Ü9¸©–_À	o- 3pXd\ZÃW=È€Úi§÷¬v6ı¥óR∏ö;©n£ﬂîíRw∞ı5–Y¯åjV˙}∏”ƒ⁄ç©ÿìJÂ‘ßQ¡ËA¸Îâ)4@)V\\Ù»ÎZ∫ÂÓü|∑V C\'W)êæˇ\0ZÚ*·“ç∫¢nw3¯á≈\Z=‹*K&!#Ä°Æg≈%èƒw±»IøtîD™ˇ\0¥Œ)∑^6÷µUí¬ÍÚ3m)*LëÆví\\zä÷◊¸)5Õï≠Âú÷í¢FõX»W#©„∏»ÕsBîiI:äœ∫	IÏŒfÀ_æ—n‹ZjS¨d‡ú:‡éG–ö≠®%âX^≈ß$ÆdIW°ıuÕJ–Y^à⁄x¶¿tGß±pG•ZìYÇ≠dµÖóÀãl®¯√ˇ\0ÅÆÀl‚Nåœ±íOµ,qﬁã\\ù€ÿêéïAôßîíIbyœzªmlumYTèœìWÄ3ÿWe™i⁄ãsicß†ºª<íê9\0‡Ç+y5ﬂ©™éó√ñ:&õco{wxd∏cª»Hœ>¡áFˆÈ]nìvöÌÕ“˝≤í5±(ÉúÌØÚÆ\nÏ]…\r∑ÿÏê‹€9§ÖÔSÆÊ˜+\n˜WûÓÔŒãÁ∫ƒHıØ6xW]∑} Ët˛=æñ‚Ï[ÕXãDnÜ.8‰˙v≈r+#7ñ£qœQRDÏ‰kç≤æ÷\\ÜZ¨VK[íCc$ÖuË~ïËaÈ™pˆ`÷ÖπÿÃŸêÂ◊ÇsûïQGõ Ù“I62Oﬁ\'úµoOÅ•GîùàΩ[≈u¬-![B¨Í7∑\0tß@Õ`åé¥È%ƒÓSí;ûÜï%u,r∞Á4û÷ZÌ•fÂQì‘UÁï&P	∆+Q¢ErÎü@y4s3i9j≥π<â´¢Îºj§…\'ÉÈJ≤‡F®QïâH®§`éA$gë∆k¶Vƒ$õ4‰ºÅ’√¥Ñ¡⁄‹ìÎUKóq>Ê™K\rå7‚ùπÄÌÓ)Ió +íºnÈ“õ7òbî\'ëé=ª”Y¬°Q»&ìò≠b±\'ö|¥LWi(ÿ\rÙ˛ï\"F\'èl‘Mƒ,Õ\nsÕG¥W∞&M{kˆi\"ÚÓ#N°—â?/±¸x¨ÊûGrÚ6d-íŸÎNªöÈ„é+Ü%b·AÌûj∏Œ@⁄0M[Iñã7W)q qF0	¿„Ω\"O pUÿ”©.RÑk,vÇŸÁ“∂tM*MCNºu(©Ú¶Á« «ëÙi;Ej¡¬‰ï˘‘úúP∞;å{”ºômåÎ∑8,≠ßim´M$6±¶H⁄BπÖ$z°M ZïëÑ¿Ø˛4Ëü◊<uØ@∏D\ZΩçµÂÑ∂6 Î¥Ê‰ñ.~e##Å⁄∏IÌöÿÖfW2Jûá=\roRãßπ®•±<2Öp[8œ&µN†˜\nëîFé!Öt˙÷48|b•(»¿dÁÙ¨Æ6ãWJ§\0e›\';â9…™ƒ(=9µ9£m•08$SÏ.bäÌL¨®Kc\'ÎUw»´8˝ÊvÏ…Œ)Í™˝HPnÙì∞y™·s¿8®„Ùœ·T—H~ß‡Ñèj223–”É`b•†\'⁄õÇ*Wp0=iÖNx#ap\0c’Ω6¿ﬂ^EdÌ∑(ÖéqË95SËkGIùmu+YMƒ÷ ≤“√À\'∏¥+7®ùÏ$zL”ÍI`ƒ[πm†ÃvÓs“ô{a\r≠√§wK>÷¿ué^+g≈[M´∏∑‘∆•l™6\\+#Ωû˝´ü2ƒpƒÉ∆zc“Æj+DL[vbHw|π»ÊöB?Ã9Ë*3&ÈﬁÄqJ†˛Ï∂;◊+L‘GgP›WÅé’0åß\\”!\nWqpßF6	«<J¥…c–`Ö\0TŸÿ€N·œ\"ù‰|ä…íGﬂˇ\0AWçä∫îr90jñ¢‹πŒ=≈YI¢UÇ#BÛèz©8ÎÖ´êÆrI#é1ÎL\Z$∑yb}»ÃáeN∏≠Ì3NµπµπêÀ+4(∆S9=˘¨eåÑ√÷÷ãèŒúª)TÁåUßdEå´õdY‹ mõæPzÅÔMä2*ÏØˆªô$POJj°SÏMlïƒWÚâê‡’´[sﬁüÂm¡j )\0c•iÖ«¨{=ÎBﬁ=¿’5W$J’µÑÌÔZÿíhÌÀùj‘VåqV¨¢»Öj-ÆT\Zdî!∑¬Åéj€€„†z+p∏\0z∞–~∏5=G– XÍA«J∫÷Â[‰RΩ*ÑA\n‡Ù´Ò`˙’E;N*Tì\rå–#U6Ö?7zìùµRLÄ8´(K\Z=ELãOXvÖ<‘´ ‡ÄGcP‰Ç√1VJ£*‡`ÅœΩDz‘™FÃ˜¨§∆Ö\n}i§“yÉ\"ö4XÉOlc=Í2ÿLˆ¶9ÈJ◊`€TÒêi<—≥øùEøwÒ®ùÚxÌMF‡X‹ßÍ{S$˜ÈUƒáy©ê≥F[w#≠W-Ñ#ÇsH§m!æ¢•Ug⁄¨=pq÷§6Ã∏%x=i9%£\ZLâ#ﬁ2£äI!]°Åéï®\"ä(À‡®û*ÉE±ÉTé0j#RÏß\"°FAûîŸﬂÕç	?2úûµu£3.ÂL`séïL≈ù‹˛¨Zz≤\nç+m9.∂\re‹B≈πËzVÃëv®L*ÿÍGz—[†ä⁄dâÊçLn~ÒP≈xÙ´◊⁄<®˜6Û®q◊pÎÅéÉßNµ\\ƒÄúAÎM(¡âRW#ìãΩ”\Z2§Äùπ\0éA§@Æ„Õ$)<‡VìD?âA˙‘O\nmM§yŒiı–…†`˚b©¥aZx¡ÌP»†t†)∞¡∆)YêT*	ÔéøçM	$˘é‘y±úT“⁄°±ÜUôK≥TrAØ“ò3<≤˘{∏8≈SòÂâÔZsÈÚ	\\˘â\"‡∏h˘ı«aÕf ÒòÜÉrE DF2PÓ‡èZ™√pi“NrFj¨íÇ«˘R¿ÅU˘\0©‡éƒT¨såz”v„ø9\'ú“\Z€™ku!ªS\0…¨∆ª}≥R3F“!\'~=˝ÎN4ÿ¡I˘ç¿èÎU-RO$I√F2ÿÙ5©2£Èm9∏g√ˇ\01\\Ú©gcE´í[ÿµƒ2$\0HŸ8<‡U7àB§æ‚¡äút˙÷‹V≤€F¨ä“0]ª–3Ô˛{÷=·ûI7LÕª¶jŒú•)ΩtH¨f$¸†)¡SínOJ|0Ç„#5oF\0Æ§âl¨c€Pº˙’i…R≠¥ÛÚt}∑/Aı®ﬁ À»Ê≥q◊Q‹Ã∏ò»éÂU–Öc»FKãπ‰få;§J=pæï•=õ∂Ô)I…8Èı¨ÿÓQ›≈1}§¬úÁLä¬p˛R‚˚õp]m˚1i-„∂*π q…Œ;ú˛UbÓx#≥yE„∑ D€Ûºp0>ïƒ,2,¢&∏Q!·wÒ™≠x íHf*@¬7WL\'7Sx‘I∑æ$ªî«%´˝úèæ…∆Ê3Ô⁄ªè	_\r]Ωhgû8u,˜´»ÆdØô7}‹÷œÅıs¶ÎÀ# ©äVVoNÿ˜Œ+<F\r{&‚µBçF›ôÈ◊±Y√@!ån›\"ØT<súgµrzÖ§öPYóC\rÀñC∆WûÄÙÈZ\ZÁã\rùøê-’íÍ3\"ªíçÿz`ÁäMAmo4h‡∏‘≥R#Ú¿%Ät˛5ÁQçHµ)ÏÕ›•°À[^‹>≤#øÛ0˘In1é>oNï’¶ú.-‡ªíKïõkH>^qÎœãìm™Ÿ¨êf\'CÑ‹H$q¸˙’{çSR∞h≈œô\Z´dHß\0úı#±‚Ω9≈TkëŸòÌπ&∫êΩ”≠™ßy¢∂k\ZÓ)“DKàﬁ5*Y}}1[êH∫µÃry—ÓÛy≥Çﬁ¯ß›¿˜∑“Å”ÓFá∑©Æ™SpJ2\"KõSõh›<yHÎ¡ÔI<∑«ZŸ‘bîZπ∏vêñ=∏⁄√}±¸´Wﬁÿ\nh‰g–We9Ûje%bƒ≤…µ˜\0@Ë\rhAŸÌÊï•πv…∆:˚Vr√h‘û{Hﬂ1$ŒOQ[ÿ’”Ïg÷ÆZ÷)P«-Û6“√⁄µº;jY·T€*‡éÁé“π¥Ωé;∂òB6„ÂU%@=çL\'∫ª\"‡0DF∆@ÎÌÅXWãúS±t›ôËsÈ∫M¨o$O*<ÊgHI\\Ø?Ãä‰ºGwßO¶€[≈\"…<J£ÕSíƒ\0#∑◊æ*ñ≠©]3,ÀpÒí≠\Z†nBír\r`Çrw⁄∏0ÿF\\“ëºÍß†¯„…Áë[óö€ÿC}˜ÇPXdr´∆3˘‚≤£[Ê‰]åÚ›k:|Skkb\"F2\\Ä:˚WmiJ6h )4s‹\n¸ß5–Z#ÈGuµâ˘s;èQﬁ≥÷uµx§∑\nCFÀ»`GCR¶•(“•”€LÆ¨N99≠WºC–õ\\’≠~.R%@®±ú;’T1¥!waŒsûÉ“´ÖÀ`wÔNT…#<è ≠≈	É¬Ç8˝jH¡\'˙TÜÕ“‹ºÕ±ÅéZùdû>î“BoR’¥aîßw\\Ù~y3ÖÈPGπ£cnr›Œ{Uà•ñ7X©2ãË;ñ†è…ﬁíÆKÜÙ¡Ê∂cû8ãG\nïf*ﬁˇ\0≈Yi\'ò€€í=j‹h≥¢¥ìÄ¿Ö$éq⁄∞ï>oàiö\r6|ÅêãÄÆ*,ô	…ÙÎPBÔ•ëà jÃ%[qoOz∏”PWBzïòÖ“£å# ™Ÿ\0˜´DÑÌCüSYSN–»I»⁄z’ß5÷ÄësRÅ-‰™ÁñÁìÙ¨kãÄ≥A1)899œ“¥\'πíFv*†°#Ó˚VE÷/Ô‚ëÛ#Ìg$?·€ä ú⁄—ï(ˆ4&Kw‘Eèï\0W˘DìGµ≥∞Áçyﬁ†R;© :Á5ŸÍS]≠∑ŸnnƒêE˚Õ˚A|ÉåÇyÆC]ñŒ[lLæPçAÛqù›˙WDYK»A\"¢cŒiœŒj\'“©±é262˘÷µ¥YbñFÇy‰à»6§†	#íØ˚†¨ªÜxˆ≠”•∂“≈Ûñ9ëóÀÊ˚ÿÙT˙ä∆ÕˆÉqj-§ö6â)q∏7˝zf∂‚ÜÍM$÷¢∑ÏHÌ”å(„Ê∏Æ{T◊od≈º≥õãVDU-ïŒ:¬©ﬂŸ›h/<Ëî»«hﬁy#æ:\nNI-!ëXﬁ>¨ˆv¡Ô}≥tjH~NÙ»ÕhÎ\ZíﬁÀÌR\"≈ñlåw^1≈Wáœ—≠≈ÛjI√J±‚1ñPTúè¿˛¥æ\"˚UΩòO∂	‚¬‡°„ÊÓs\\’ €∫.,√ûÓ?≤¢GßÆjº“*¬—∞˝·<ÛúTPœ,2≥&72ëœ#ëÕ9§àÖøãﬁíäC*ñqìéH‡÷ù≥^j3¡,åd!àô$p01‘‚™.ÁreîsÄ:\nËm¸N÷EZ8íX\"BøqÇê[ûÑ˜≈]–ãz:3ã©•\'|-ºÍ<Œ·«lÛXZá⁄ÌÓæ≈ ∞0ŒÿõÂÁí=+CHÛºI´òúbÖ‹í@ûΩk;]í÷ﬂSe∞.ÃåPÀ\'\rÈ»®w[\rX±´\\ôbãe‘3H#‰BáÁ\0ØJƒksë´£.‡sÈÔO≥∫∏≤ºÇˆ◊‰ñŸ’√\\µπ¶1◊ıã;i…#pÓ$ñÀzJwé÷?Y\r2€W¥ªMêCôê°;…‰?!\\ÆìçH+≈\"§§»ﬁ_¡Ù#Uèj§‹Dö|·¢RVÖâäB;Ù˛tÀMWR∏ï.t{Yç¿GÛ.ıÁìåÒäŒÕ?`È°“Í≥h≤kv∂í[ònñm¢;v6Pf=98œµsﬁ,Ω7zT3OikopÚ4j∞úñÄXûÑqÅ\\¸¢ioR}@ëÒ!√0\'ê£÷¥u®ouΩºV/e≤çñ≤æÔ)=N}sü∆© 2ã∞¨”G95≥F∞∫‰nÇ:U∏Ó0§´6TÛV˛µ[Ë+	âñvÓz ∏ÙîÆ‰œåeÃçZ.¡1ï÷)WtY\'n>Ò«ôy.ÂU†ÄrT{˜©dfUXÁæWîñAï√\Z—ëT£c …Ù´⁄D5¸@	√)8=≠Vã$èïè=ªö{ª≈qÛ)FFÂqå⁄õÿ£÷ÙØi^∫õLÅ•ªÛÑ§ñ Ü2\nü\\\\äo·ø∫ïDbg;B`ûO∑j∆{˜ô\0tFsú0 ìúìﬁ¥4ΩÁ\\kíî∆õî›º„°?Ö\rù{oíì@ÂPÄ…˜ú˜#€<SÌ¨iètn!ç„ô@àí$`AÂGß’ÌK¬∫Öç§3Œ—ïdf⁄[pÿ∆zŒª∏˚B@∆gﬁãÂF6®\0\ZqíN„z£“Ù˚Ì/I≈Œ§œˆãã§m≤ïQ42ØqÌìé;b∏-!Ôµ“ˆ≥K$±€E,∞!óhâ±íG¯UEr4©¢ù›ÇèÙtœÀíFOÂW‰“^ƒ€¶ü õŒÑxÿì∏‰2üJπ◊mhL`ëëwÕ<íHAsÜ-ån˜™˘∏Æ¢[Ki4˚uô£C!ÿvé¿äÊn√;&Âm≠åØCÙ¨!Sò’+‹M4‚\0ÔM^sûj¡è\rÄF3Ll÷Å˜è°ÈH{ÊÑ-D<û)9äR;0„ÎQ1#ø‚zzı1¥Jƒ©ΩK‘™p≠è≠AÊ\\ü∆ú©í˝jcB“÷k˘ä®¢8$ô´˜ﬁ’ÏÏ!æö	MìèñeÂO∂k)2√ .28ÔWﬂ^‘õO\ZyªîZ‹±ÁÄjn”%ôr|ªÇÉ¥w5J‡S§ô∞W?/z≠ºåå}j–N¥‡1ÛÛQ‘—ºì˘v‡dÓ˘G÷ò$6E%AQPë⁄¨HA˝‡pj«Ó;S,n@»•Á©ÎHyßßΩ0≠¡Õ( ≠F	ÎO∆;“\nå“≥<r\0;ı·Õ4ùßw\\R`H¿„$j&\'¶*MÍs∑Ä}j9Åûı+s11û=)är∞8…Ù¶π‹ƒÙ&ò\'öïnO-AﬁõI=Ωj\"NiÑq…≈41÷ßát®5}fﬁŒÓ˙->		›s7›\\˚V|P,ògî ˙fµÙÕQ◊%6⁄|/&:∆\\ìÕ\\ÿû«U•¯z[œ≈Å4≤ò§ ‹™âPu„ûûıÍ-∂ Í0o€Õ2¸Û\\≤˚*Ú≥>hSÈWBÔQfÅ‰Ñ}û›_!Å‡πép?*ı÷Pÿ»uÆöµ•M⁄*∆è6ÏΩW·]•¢âaø˚-¥Ú(X§L∫ú‡d˚’\rW¬◊˙{[Air–›¬h…#)\'\'Êc¸>ïÙ÷–‹&Ÿ¢I—ÜkÃ˛#Ëkn?¥≠dë.02WØ^3Î÷¥•QW|çjW+é∑8´oÖﬁ&’löfπ@Òπ›πXıÆY’ˇ\0áµ-öï≥R7∆·Ì^Ô‡ˇ\0kw‹çE˛“™É˜b íF¿rq¿≈\'åº.æ+∑{ìxñ©Âf_õê8>É“ï5∏T^èÃ5æÁŒç«#3l<ïìÙ¨÷\0p;WK‚mÙ-Jk&`˚zë\\Î©∆MrNõÑ¨ÕSLáØSäA≈)4”ŒjF<7QN9„∞®såzîäõ\0gìNT#Øz‰˜°Å<u≈ ≥Ä8Ÿ◊ör`ÄäGUS¡Õ+àa‚ÄΩI4∏…ˆ§r0z`v6∫ãﬁZ\'TvåÓO0d{aMÉ[û¬w!§Å]ˆÃ∂ÁnF1¿9\"¬ˇ\0eûd≥1DÄnïèŒáßÍ	Ì\\Ìƒ≤K93π\'<í1^]TÁ-]»Q–Üô‰?tûÕhY¯œW”í⁄+kè!-√ågw\\˙’mF(HÄ≈2IîÏÁ–èZß%àSπ§„Äß?ùRÂîm!Ÿ\ZzÆ©Ø≤ÈaeΩ‰‹HNDá◊Ωk,ÖñFÕ¿\n3yõCVÌlÌÂµî4èÊc‰ÿªÉZ®≈-⁄“Ë¶±<\\2s∏U¯Ó&b6aßR\n:¶XöÀˆ2‰áS–öøc+≈$r#ù9≈∫’â≥GD∂ûÊ˝≠Ñ”Cq\"ë”∑-Ë}g^XΩã…—¥r ÜÊª+[ì^¥`ëµÍ«∏¬H&i>ÇAÎYû.÷ŒΩ´œ®√µä=±òﬁL∞=3äÂÖIJ•í–W0¨ÂéxR+¬∆$8B+ìŒ*+˝>[ví¡h˛n0¡‰r*¬È±\\Y,–\\ƒ%›ìÊ\'ÿQ6©oˇ\0€XT[ë8s?v#’”wÕÓö≠L≥0›ûµ£”€√$+˜|ﬁıôÂ≠ œqù\n0/m•á¶iÛ¥OrÔ\nÏBƒ¢ú+¶SiŸ\'®∆ç√©¶£ï˙z‘æPn{*Ø&sÎPüBnL™“@ w\"\r”Å‘zTtjù†˚‘ë∞-π3Hë>3‘zT/&‚0B„≠\";ﬂüzâ√≥∞$ÑÓ3“î]•q%©`9Keq¡=\r,p<ì*Çˇ\0SäÅ&*Å1ëûûµ\'ûØ+îå∆á¢Á;jπ‰\ZÑÒ…•á\\” 1„\'≠hYﬁ⁄«m5¨…Èp≤&J{Ç9ZŸb∏πTî¥1Ì;]vOøµ\n£{†∏≈6ÎUÆSkßjñIJ∑ √Éé*ìse˘‚íOö·‘n˘.&S$Öé\0À¬íH¸ñ\ncÂOÕÍjKu∂y	ñMãûÉΩ_Ä[HÃ[ÊBv\r«~5§™8ËêjT∑ÖÆåv¶n$ëDc◊<\n—i/¥·<™ÃnØ ëıÈZ∂1C·´∆mgK˚E¬*Il•ÉDËΩé¯∆<\Z¢Ô≠q,˜2≥9l∏‡˚˜ßVPPMâ…‹»¥ä1,”H¸Ï&0æπ”5‘¯?ƒ˙áá$∫6V—]Erª$äX…‡u⁄G|X∫Ö≠ù§14HÃ$Âd›ë«Q]7áµè\rYi≥A™[ºûi‹èchò	ıß∫∞≤R˜ûÜsñÖ◊∏∂◊<3ˆ√yf.,g1¿Ê<`cìÔÌ\\Nµqi$Ê;hHÕ∆O”µ@ŒÀu7Ÿuçª≥ÄF\rUñI&ïÂëã3úñ\'$üz™’πïëPÇZçEhNTı:ND0‰˙\ZØªi#<SêF»ﬂ7Ã9÷πì4eã[√n∏åÇT˚Sgπ3E$`tœjÉ\02Òú“∑$∂0G^)‹KAU∏¡¸È\0äi åÙı_ì5Iåïrq˛4«<„<”î£ÖY∫p@Ê©\0(¡˘éjM¨£;r)™vüZîHÁØjoQ\r	Ú˚öê®T;á_“Ü]ßÒÈ@Gsœ ˆ©9/«ÁäBä\0œS˙VíŸ≥ÀöB\0¬˜=©˙¶ú4´…-º— \\e∂cüJwA©èÂê:fÄy≤~ù™¿ÇBUBìÊ}–;‘Àcµ∞fUl·ì∏ÁöL\n¡pCr<üJ∞ˇ\0ªë„IHÉa]G\rÓ3N∏∑0I$a∑™úÉLÖI∆q∑4¥…“RèïÓ9‚ûÛM4õÂÀ1\0sœí8âòê§Ûéx≠[{í.$y≤d1·\0=*’Ös:5æQ«|’Ö;Ïûµ=ΩàÃ.Ω3¥˙˙TÚ&Ê]†0qUa\\`!»˘psŒ;Võ‹Ïµ∂XTIªóæÜ†Ü.8…´Çß“¥åu!»•$#©?ï[ÚÀcéEL#UQé\r8#\'=çt¢[ŒAûı:¬π€‹”a\'9=*ÙQÇ7w˜™∞Ñ∑µ⁄ÎZˆñ«\"ã8~PH≠[t\\„Ê©\n‚€¡å’©qÕEk”“¨†€@\\∞±†èv~mÿ≈0säpb\0©„° lO+÷òUÅ«J04Õö\"ÁÇ5Iô±≈h;Ÿ∑.‡jú§±;síF\0•p-[∏€œZµG5ôÿ0Á<VÑ8|A4]°~rqV2ª±ú®5N,è≠[âøàÅèzâ!¢YvéïcÙ´E∂0„Ò™‚LHèjŒ:≠4úöM˚MH„{\r´¥b†u ß’jÃDûq›∆)è!w$öáv9©¡âÄÆz”i CZl!\\ì⁄¢m  ÿ»4Ú£Óûy´VˆƒÆTdüQIµFµ*›\'gÙ´áàÄG=~µ;[ñpõüLUØ≥≈Â·›≤Éπ¨ÂUXÆF@£p2≠\\ç‹†V8„ûı[vœîdØPiÈ?œπÜqYI\\§ÏK4§a@ÓÌöl—.–@€»„◊äVòÇ}1H“ôF\n˝*Rhm¢9F\"P6É»8õ,Mª⁄µÑ-∑°∆sM˚>Óº\n“Q!∆ÊZDAÙ©ºØîb‰öø*n˘¬êWß•7VÏ\\∫èS¿‡”L@π `\Zπ,D¸§bú∞*ØﬁÙı≠}•ë6(IlKzUi-‰\'9∏mò*©e\0ûU∫àÔg©⁄¢5.Ï;≥¬>≤:ìÎÈTd’≠qìŒ1ú˝k2Q÷µ1˘°‘Ì\0‡‰ı„”Û©\ZÍ$eKxQ][\r\'f‰’¡a∫t”™πÏËI<ÅÔTÊ∑›Elã$ÿ ¥`aà<÷öh€ª≥òFaî€√pAˇ\0ıÙ™xM¥ëà˘äÏ2r˘r;\Zì\\CkwÂ∫∫9z∑ö∆ëænH9Ëhl,£h „íMQw#ø5,ávq“ë‚]ãíw9-ïaø1Tl˝Ó>î≤	é»‰\'‰·A9Õ\\≤Ü\"»ÏõŒ¢0XJΩ7Ÿß‘%Ûô’w`ó˚ÀèQS\'eq≠ÏfE\0´QDXÓÁΩëc|n™‹£ 0ıµ<bT\\†8Î¿®mZ„÷˙ì[çí´»\'Ê+f’Aêº;ΩN„“±≠’§∏‰Û‘Ò]%í\"`=:÷n=KO°$\0á⁄Ú:©‰Ö4∫§∫ÕÛ7\0ƒÁê}\rX0ÔÈÎQ…≤ëåqëäJ)KòW)à¿\'Ÿòåˆ8¬≤ÔÌSﬁßhÈZsS{V\06G=≥Ue`™xÊØ›∆ÏsY7$íGl—p,32ÈÓ—™lø0ÎœøJ‰Áâº∆Ûx#ë˛°ss4D®sÅÈ⁄≤n•gÀI=Nk8”wlß#&Ì<∆-Ωâµü4Gê2~ï© ‹=*§®pq÷Øïs0Üµß•¡mr¨≤‹yréT7ø’NAÅåOJàz‘J7V\Zzù“•≠§{¨Ì“Dí0\\∞p«!HËA&´¡•^ÍPÀsdÚ@8◊¿¡˙û;V6ï™…M¡d∑\'ÊS˜á∫û’ÿh\Z≈¥Vq[Õ4—∞b…ÂaH\'∂OQ∆pkÀ≠\nîÓ„πºZe=+P∂\"‚ÓExú±B2vêÚÎMª˚*òZC/ïp\0√Ôcø„ú˛5WÌÜŒKñÜhå [lÌÄI?xŸ«J©˝±ÒB·Ê[àdC¸√gSè|äò¬MÛ$7.å◊óI[KiØÏHIcC\'8»ıœ°´pÎ∆∆Í’°í-ë™ÜD¿«øØ®Æ|_IuvÛE/ï∫>≠◊Æ=k¢‘•3ÿ§‰ëÂü,!<Ù ”ìq≤üRï∑FOàÓ≈ı‹∑6”˛Ê\\Ï9Æ:\ZÁ^ﬁHŒı»=AÆñÔ√§ô$î§\nÚ¯‰è πÎÖ1ÃSr∫É∑r{W^\ZqÂÂÉ\"iÓ∆E⁄ßyßæY{gØZ=è•0± u‚∫”f,sÌ(X}©Õ,r û√Ω5Ì<ÊúÄ´qëÔT–ÆM9(Î!*Ãpﬁº‘Ãõà‰ú” |‰1‰”—8∆8°+T^˝Mtv7ói¢NhÅF√ó¡Àc8¯ÄÄ‰Ò≈YåtèNzRúïò)Xïô§m√9¿Öki∫0º¥31$óÚ¨>CÍ√Òõ1ÀÓ’à<µWaí‚“˙9À<Fcø∏ÔU¢V@%ÂõY»cñ0¡rõîı˜™qÆ\rtZƒã{‰‰˛`,gê@Ó=+8Ÿl∂IøÑ}ç(Ω5	ÛŸRW\'=èJû4\0≥cÄ~0ñHqZQØﬁê|†é(z\ZàV0¿å7ßZπÂ`#ñ‹Xd˚\Zñ≥ò§\0>ÏÔ∑¶*4…PI™é®Lö#ÿu5:Æ÷ÜÔP\'©„‰U#8¿4Ï≈»à¿#”≠1¶˛¿´ZÖª€A 7(‹9Á<g¨gò3œJNÕ\\FBX‰Ù\"òˆsMπû_ﬁS◊R9§ÛÅQÛ÷§πªª˘£˚ÈIM¿ù™∆kñ¨⁄z\Z¬)Ó7Ïˆ…a$s]ym1¬ñ8„±¨Ω>‚ŒÀPú({°Ç™Gèπœjﬁ:tqA9ñhà#æ„É˘gÎVo|ãaæü≥»¿±([◊€ÁºMùçy\nQX≈.õt≥∞Gï‚x∏#ß\\bºæ˛Ü\\)GvU ‰kØ‘.üTµºä—%öÂÃvﬁ@QêzÂÓ°í=+cr	ó◊o8«◊öÙ(VOFc(ı1‰aûµ?≠ƒöÜF\0˙◊]…/Z¢µ¨ÛíñT#ÔÔ€•hCve≥.≤≈\Z°\nQ•√Ù∏ÆtL SÄ√ûz“Ã†E˘°ô≤J·˙“‘õ°©Y\\ÿZZ|à÷ÍÏœ‘»ƒÙ‚õ{z˜VàtËdñ;P≥¥¯ ì◊–V3An/0»89∆œ|˙‘2ºëÔVr	\0›~µ.√EwôÚA=˝iMÃè˜úû¿öÄìªµ\0ûx§∆X#2Äƒì“Øõ⁄4¶g	åƒW<˘™Ê?9∂ΩiZ](ªBÚ|òÂ±ìåV3mlR74çﬁx~]B⁄˙a4.√Â∂\0Á”â·BÛÌ˚Æ\"é[(LØàAp<cËk^?ÈvãKãPTñ`ﬁlë∆~_@}~µá‚Õ>\rX7ó$ﬂÕÜ¿í√ù›∫Ù•MJM‹$‘Q…È˜˜∂Úîå≈£m¨™\"Xö‡∞RCgÔAı•ñh”ë)v˙c\"†b&}›Ø•\rj	õVRÈMm;_FŸUƒ\"3ÇÕÍ}™+ªÎ¿∂±Ï$ûÄ\n e19Uê1à≠;Sû∆‡J¨˘€∑\n¯»Ù•+€A•©π=•µ¨kl˘òÉªÀ|xœæµvGR≥◊†ÉGä\'s£æ8¡Ë[ûµû◊≠<›ã⁄5iÄ„w\Z‘—¢ö€√óSŸÈW	$íé‡»™	<ÉË3\\íìQ‘´ju\'E”Ù#qwØ]≈y|b)⁄∆$™é’ŒAßE™È~.‘%óÃªπuH∫(‡rzéﬂÖcÍ◊:µˆëjí˘r-ƒÇ*≈›òûï–[ËhöŸ”ZkùB;&Fbdqì‘„ß¯“Ñe9Hm¶szî∫Çixπ¥eçé!ë◊û=3\\·`¯Èöˆ?‹€…§à µ+s(`î6É∏z:◊ç2loCUÜõúuCjƒ÷±4“¥b#∫ÅzÁÆ,’)ê‰ı„≠[µ˘Æ°Ã€2¿√û	ÆÚhó][6´≤qıïŒÿ¬íN{˚WCÿÃÛf˝‘@â	‹«(±¶K#º¨ÚπwqñlÁ\'ﬁµÓÏÏÃósCsCÑÒªéµéªüÃ˘R>„Óˆ°;ñâ,†\\F¨ie¢‰åútØR’nlº4l&A4ˆÍØÇVQ∏ﬁ\'ú\0~µ≈X=•ñ°as¿âd`≥*\r≈JëÛc‹Ú>ïΩ„´Öí“ŸÆ|À´Ìèê\0¿AÅÅ‘ÁÎWπY/qËOâÑˆ\Zç‚€≤ñ-Îåï‡&O<èZ„d≤≥]M-$πî€âú·Ä˛\";qÕ>mB[€Vòô§ùWt≤úí9«>‹éMdMtŒYèÕ#å{j œrÆXøÚDÌoi+œg(‰`ê+b Œ˝Ù9gà∫[âæYdÈ¥°¨ç&+xÊé{√∫,ú«‹˙äÙ˝@—-¥∏Ø.µH§feñ;p˚ÜÓpCÄ)®9h)N«=·πÌn≠o-.fâ.\Z2±Üx…‡Ó5 ÍñrZl&õ˝í{QÆMª[ªxäyY‘\'\0s«J∂∫±∏¥6ÌúZ#ÊÍ„ßØO÷≥pqï—¢w0ºÃ!ı®¸Ãt?ZG ∆:‘gì[ eÅ0+ÕGÜ$‚ê/ iA^ÄÁ•8ê{–µ\"ú\Z,GÇ∏5a8•S-é:ö∑óÅ¨ÿÀÜQí‡≤Á≠À;	ıxå,EÌ–≥\0@mπ‰˚÷MıªY›Iæ7 ïËiÃÁÌûßµDÀÇsä±*Ûª∂(é ‚x•ñ8ù“ »¿Œ2k@\"0»cY\n·såÊÄ∏qŒ=È—Ã	Py´◊im+A\"Ve˝ÍÌ\0)œ¸*niêD\00ëÿ˙URA≠[´XcäDÛ’‰åçåÉÂpy\'>’í‹jqw(@{\ny„üzê|…ëö†@:jê`ÅQ®ÁÎNN:ÙbñOb)•≤pZs∞n) ªq≈Kd‹`\0Á∂)Qú”∞Y∞8©5‡1\nr)«∏¬ûj7<˙Q¿u¶z`©§û¥«5r¬‘ﬁ `é2\\)`TdÒœ>‘∆ }{◊O·ç^\r?P∑íÈ‹.v1V#j∏#‘q\\˚GÂJ¡é1”#Øµ#»er¿(˙p*·\'tKWV=OHÒ¸ˆ∑1ÿh∆›n¢ñÂâçb«‹˙u5Ï>Òk0\\Gsu◊P∞lP9Í=;◊…qHc`‡Úßµt˙â\'∂‘	˛÷π≥YÃÉ$åq∆}Ä≠Ω¢®≠-Ã˘\\uG÷π¨Î›ﬁı•w-æHˆx®¿Æs√˛,≤Ω—°k©]Fäí	ÿëN>|µµ®xßL”lcªíGxùÇ©é2z÷qßR2˜JÊã‹ß/Ö·hÆ-„c\\F´%¿˚ÕÉúbü®_ÈZ}åV:Ñë…,ﬂ∏é5yïƒÍøÊ+òa∞æµH√Ö∫T»ﬁ;t‚©¡‚˚!·ª-eÓÏ^˝T´√$CÃ$nÆO≠o ”^—ìÊåﬂ¯jÃÈ›∆≥+ÇWl£ÁsﬂÍr6ﬁ”-|9yq≠ \"π„»M¯t„=;É«ÂZ6>4’5ÕVÍ≥-œ⁄€bI(%m∆sª\0VOãt6”ãÕDﬁ^‡nU?*{QX‚k˚Irˆ4ÑZZú,ÂD§\'*jûhX(lu™¯≈erêÑ‡SêÇÿ4ﬂ≠\0‚Ä,1PxÈIü¬¢\'©b•ÄCu•…„“ú\0∆qöC”é(O›∆j>~¥Ñ„Ω(e◊ö\0ı»bg∑ÜÍê”E&÷µôf\'˚√“∂S¬ö-ÕºìIh±ŒW3E,Ér{ØlW)°Í:¶ø*È»\'b˚fÁÒÙ≠¯÷»ﬁcê]√\'Œ^BU9\0Ø\\\Z˘Zäp~Û)XÛœhÊ¬ÂÊ∑á ≤µIó<u˙V≤mv\0ü«≠zåÓ4É§	ÂπòjI1a&wÁ∂∫\0Î\\|ëA‚;¯ß≥µ[Dq∏î.3ÛÙœWµGñT”çÙ*Ÿ€OqíŸ‘õåÅıß∆^ŒF1á‹>Ò∆0kbˆÁR\Z,$E∑∑d1(^{déµö⁄¥≤»ÜHë·T€¥Ç@8Îı®ø5Ì∞⁄Â—o\'Ãq˚~¯Ó=Íßò≈r{TÜEﬁG˙S∆C[Ø3>^ÂãK∂äÓ9Ic¥ÉÚûG“´‹IÊ‹»¡éâ‰‰öu™lÄsR˘	+eFXûI;X]B+Ée|¬9«ø≠Vªò9\0\09#Ωv⁄Üâ}k·{Xn¨mckóˇ\0FêÄÅìñ˜»Î\\“e€‘Ê¢Ñ„Qπ\"“±π°Mei4SﬁD&ç[Êå˜™˜◊1‹ﬂ3˘keœò¿˙Tk∏beG?JI•Û-—«¬}ÈÚ{¸¬‹∞B∫˛ÏÂONyZØˆY·	+¬JIùÑ˜«Ñ∏Hô>}‡y§ñ„Õr€äúÁß=qM&ò≠b	FN_jπnâ@7ﬁny™Ë…Y2GcRJ€‚<öRª–ùÿ’I˜:0F…Séµ Åô °oõú‚≠•ªMoj”ë.¨±>‡A#∑µ6+°A\\a‘„w^(M2ÔmäF÷C(å`1˚π8ÕN±2·‰_ïÜ?\Z}÷£=—	,¨ÒÄ–”˘‘)]˚∆UîÅè_Z—®µb•Y\"5∞3ﬁµmÊÕ¢§qÉ.¬¨¢†µéÊY€∆dp2@\\‰Q:Mﬁºk∏Ä¿c“≥íîñ√IlU∏ÜT∞«9Èää5)W%I)=\r\\giÓÀÄ9¶1∂\Z{Ô3-Ëêm^6l«>˘Œ+ZkôYâËÏQkYó»8<ÄiÍéádœ@‹@t ÜV…ËAÈ[⁄vΩ‰à-5q¶≈!\"N2ÿ«_NmÕ£a)4&ü<∂ﬁ\\◊ˆ2^AVBƒîQ∏® cß®‹Ë⁄∂¢ÛiV÷⁄Xd\rÜv€ºTzn˜Ù™âu*ÿÀü´++©…í’â+˛RGQöÊ•⁄$‡\0G°ÆâZÂz£$úùŒûıÆtœµÈzÖúQÃ¨¨Qîç¡»>‡c“ß∫”¥∆±I\"‘Õ≈–é6é$ábÄye\'πóß¯ñ˛∆ë]\'Yc1ë2;O°5•–ò«o-‹±[´NÓü/ÁCú9P‘]ısr›fwÜﬂ∆Ÿ8˜™”¨jÌÂúÉÿ‘˜w71ﬁJ∑M+ ò<p*îçæ\\™ë\\Æ˜5H\\\0®ŸvüÁ≈9∑p√íhóW=TîÄåí?ãû‘‰rŸ$Ê¢#å‡„÷Ñ8^*÷√‘üo #Ø –;”Q˜tuß∫PGC»>¥\0˚ﬁ\r/ö3Ä1Pñ\0éÇåÇ0“¥Hõ’Ü@Ù≈*9\rπx5kıÕh√j	∑<U§Kú]æ_jª\Z@êH\'E\0wˇ\0\nr&Gí{‘S)ù«∑4ún%!SµUr6Ú=è≠UúO<≈•~N	-V¬©^XÔMö1–>Ï»®µÜg&<¬Åú0ÏqZv6ÕÛƒè!âKª√¶~ïL¡Ûsçßø•n¯jˆ“÷ˆXuìÏ≤°çƒ}Í\'++°§I°ÈíÍ∫∫⁄j2îO1b?ª2é:w≠TõGÛı}AlæX`ﬁ¯ëπ\0vœzıH,Ïµ	b{mÔtë	%∏y3≤\"\0}[éïf„¿∞Í˙Z∂ï:ƒÒù¶	@Ãò9‹H˙û+ôb=˚0µ—‚–Çm⁄MáÂ#vf\"ÆC7{˜Æá≈6\Zu‰Iºq∆p¢ﬁ@QõåùΩF}ÎóçKJqÀw€=Q&¨cp∆sú’ïàKå\0Ωé*ºcÄ•vë‹VÑï√q˛ºU»b•©\0Ÿ få|≈_å£+ÉQ¥Cq ˆ≠yY\rá\nC“ïd2;√®4∆Má&î∆W§åä§ƒM…»‰\nΩ£n8Íå]…«4˜%5™zﬁÌBÅû+B	’îkèé¯.°m®¢∞qìT;;y∆@=jÿïMsñ∑Ò∞wJ∫/”#ã‹V›ﬁßQ∆k&êqÕ[q¡†éÿıN¬¢ÛÛûzUi\'∫“ƒèª‹öß#¥cz‡zå“∞å0sää‚A2Üﬁπc¿¢^e%°f	VÂw1˘óìW¨[ê√JÕ”ÌÇøÔd±¥¨-ùÂmº 8…ÔP§ácYeŒbùÊÖ*õA\nß#÷ï2ÿ=pO•RiÖö4§fñ‘?h¡™EjL≥&’;¬ûqÈP ˘é‡˙‘CMD‚d\n3íM≈§*Ñn=j®*A˘Ä#µKä∏$T‚!ÌlŒN¶y%)#=ç[I	¡∫PÏL•äÅû1SÃ«d(∞asÿfÆ[ßñ∏*6ı§∑p»A?(‡SR\0«JÊú€—ö®€TC$A∑:û£$ÌV‡`ÒW1≈1”ååÊ•Hmv!h…∆Fsœ·8‹G•V[q»4Â‹ì≈QØlÅ(Ù©j†\0:Sãbê∑ZWlvH\\“öÉ•Ñ›ƒ+ÌL)œ †å”∏úJ≤EûqQy\\8 U÷‡‘n†)´R\"≈I`7|£¶j;ÑÕ≤r0;w© :‰Å»®fÀƒ–6Áûı≤z¢Yô4@é+2x˘‰éµØ1¬ÒY≥Ä s‘tÆî\"ìj3¬ÃÇÖepƒÁë–Ûﬁñ„ƒˇ\0Ë´u{nï∂ôÇW9˘O±Î¯Vmı´≤y¡ŒW;ª‚≥ŸÓ&-‰ —å/·M§˜\0πïÆÓT§R…)p‹∂Ó:zéïó mÓH}›:`˜∑-ƒ–C,ÒUäQÀ∂XÇÂÕg+),	,wryÊÜß\Z1⁄;úfØ40¡ë∏$ˆ˜Zë-ú)\\ÅπA¿=~¥Ô!‹Ó‡\0:T–—”¥€{´&û·ÂUÖÄ˘F\nìÈÎXl¨Ûªªf9,y&∫9.Æ-†û∆∆·T≥ì¿8«ßZ≈hõ#äoa$N.g∏µé—€t0í…ü·œZπßH÷≤¸€^<=z„ﬁ®≈Ω	`XÖ—€S◊oZ¬P∫±ß1†gåMÊÚ≠ïV`2*ÿ¥1ò¡!sûπÆNH^⁄RŸ‡u≠ÎÁ˘F—≤W’¯¡®≤ä\Zãf≤).|æqÕJ—3E∑;äˆÙ§v*ÉÀ\n 0[ojàﬂpUrŸ«¸ÛSÕ}ÖkπCÿÒÌeÔLH	´3»ŒCñ…¡√q˝*Œûfq UR∏⁄A4:ú±π\\∫ô¢yÏ>’ü}j®7n»∆GΩu÷ˆÒ…0††nÜ76J´{aq Îò›X¶Ìß◊È\\ì≈Ÿﬁ≈{=ÌÓGX∞ªFÊﬁq≈dﬁ⁄˘¥>Ó8Ÿjñ–⁄ƒU]dê{ûAÜ\rrìÀ|ºÂ]4j˚EÃ∂!∆∆<ëúê*§˝«z—πRçœßıFT\'ûµ”–É6D¡9Ê°<*‹©œı™≤.2F8§;\n¨ÍE^ÜÒ¢BºdûÏk\'y8˝)7æô¨•îùç[ÕP‹[≠±ä/ê‰8$b†µWòîèqlztIòó»ÁæEMÌ‡Ωäïd;›Ít:JBY„ì#ÃáÂ`sÛgè•w∞haﬁ)íæY`Õ‹åaø:·tÿ∑ﬁ$PÃ∞«\"áÀúÄGc¯äÌ≠µõè±;´ª›¬ßqAπ0y„ıØ+7Óù4dñÂy~⁄ZXï¸€≠∏,›zıÔ“®‹xU÷{wôëP„ÃA€ûÁ‹VT∫˝˜⁄3q+í9c>ÜÆÀsw\"C,˜_∫%NT‰Åˇ\0÷≠ÈBt‚ªì9&ÃÌJ÷ßalcSåûyœ≠W∫—Ó≠ö •ÊEuU9‡Ú+∞é[]D˛˛5dëÚ·~S∑‘˝56´•Hˆ÷O:·å˚c€ÄBqÇq€ä÷û21|≥—ë(7±Á ÖIR¡¡Õ8!Ô]5∆ï¡lFP@\\¸˚≤zèZÃ{à§òò]\'ë˜y«5◊\Z–ì≤fn63’99)»†ˇ\0ÖL\"wﬁ›qñcK\r4´ùŒ\'÷ó/\nsNﬂÑ*;‘è∂ê%¬IÁ=ΩjiäJR9äƒç‰\0œ•.t	[Û \'êºëúVÏ¶ÎM∏íi~hÄ˚:ÀåÅÌä¬ëc4m«•oÿ‹5Õ¥p˝ô§Üï8\'9\'∑J°°¬ì⁄«‰ÜÛ7<Ù≠>⁄›¶QpÏb%:g€5ú¨RÊS63@}3“≠(˘2ƒí„Â«˙—f$OwlñóÚGÓã®*s≈,lpB‰‘\nd@‰ú„Ø•N±m@Ã°«Z¥ê\nÄú&≠≈3ëÿ’|éŸ≈X∑ë#ìtù8˛˜µQ\"Åôv($Á©‚rè˚Ω•îné3UÓ√[œïqº¸ﬂ\'Aû’F[ñD¡Ó03ÿR∏Õ}wR›¢âC∆âÄÀﬂ<’O.öŒ#ÖèΩaMsåÄ:£.¶ËÖCeNx5ú‚Ìd4Õãèﬂà·ì\rŒ	ÔZ∑w∂∂ÈuôÓ[‰à≥i‡c—ª◊u	dW*#fÂàÈ¯”Ô•˛–ä{ò†ì.·#ÿO 9Ì\\u·vì5ã;\r>˛’\"oød«ÛÅ˘‘\Z◊à≠g±ù≠ÁYwí≠ *@Èªè«ö·§2€Fm“&i◊>puŒÃzzTS€ﬂMdÚ^KÂ≈<µs◊>Çπ~≠+∂_;±–¯{Xí+yñﬁ…$∏r\":wœ◊÷©âÀÕ|Ï°M¿xÃ\\úèlW9\rÂ›Ñèˆw(XÉπOè˛Ω}æx¸ÊŒÂ.xœ„ﬁ∫ΩíRÊ#õK“:sPæX‚ìÃ,z”e|\nÓ[aåÿ#û¥Å∂∞\'ëQ1-öBIÈ÷ìdÿöYN‚T\0\rBŸ*p9ÌM\'\'áúTÄÉØì⁄ßXî†%‘*è%Xı<2D\"uë2[\0?˜h6π\0Á≠√sÇÖ#9ÈPm⁄•ÅGΩ5FzTµp=#Dºˆü£…q$V˜Wª	<yû:ûòŒ=˝ÑåÔ-†€ºkÂí˝ø˘÷*‹™¡ÂÏ]Ÿ»~ˇ\0JhYfc∫Ù”≥äÚ1êñË;R¶Ãüî„¥¢6BAwß*†Í≈}p+9ÑU≤ﬂw>¥è*dÄ}∆iƒ+úÁÙ®‰H\\Ç°‘Í*Fnxr“mNÚ;85ÌDåB¥áÄÿÓ?J”‘µMKGí]:Ê\Zh¡›4nY∑Òc†8¨-\'MäÒ°HÔ|πﬁB•qåuÕkk˛ª—4È$7»M(TG8yTpx¨\\êÓG·Î˚yı».µ	cH≠ò±økÁÅ˙ıØd¥ïíi≥˝°ÊT∏Eï§Û≥ìú◊àhl,ÆQıﬂŸ˘‘#±=j[˝Êû:Í˙mˇ\0∫∂ñB ãÈÌJ≠>xY2ì≥;ÌüjFÚV∞ñD]¨ÏOÀÅﬂ\0+ÖÒÌÇh˛*ªµÄ?í≈dFqç€î˙ìZv∑æ\"“l\"’≠•≥∏3eë÷E2E˝Ôî◊1≠k:û≥<óWœ$¶I8ë«B@kZiF6{ê˜3„úÆ2úı\röﬁ∫÷Ø5+Êª∫ÛYã!P†`\0\0\'¸ˆÆuNynΩπ¶˘∏»∆\0‚ÜÆ4NÏ%ør?A‹‘L—e|§!∂\0Ÿ9…ı¶$õÚ¨‹QHÍÑå—aó“O1‰ei>‚‰`(:U©»ûŸÃòx–Ñ%rœcXÈ8T<sÔMiéÃn-«J\\£%[ô‚«¨± ªd¯‘‡˛\"™åÓ‰ûú“Ü\'ÈLe8Ù™›¥¨°ÆÉºC™°¡<z÷ØÖÂ≥7˜\rsyπÚ∆Û©+ø”èjÁI8ˆ˜©-ì7™ªÚxΩ8æWpjËö˙È\'∏2*,~ªzÎ¯ıÆáB”Ì_Cw}<nü∏XòœléÑ}ÎYÖyÚQ∆åÊΩ¶€Uµ∑\\i¢∆Ì\'ïuqÇŒF3ŒG∂+H( Ìì&“–Ò]ZS=¸≤˘^Xf?.1ÕR<’›x√I∑[oaÜ¯ÃX¡eV3»#€ö·`dïäiÏjµ%U»4¡√u©¬ÜS¯SH=Ö1é‚ÇH#–”wﬂç(%ó†§¿QV,‹Ü1éùETŒzpE:7(·ÜsöCËlA7ë#1ê©(A „èJv™l∑YóÿTªÆ{Ê® ‡Åé{‘Û›%Âö,p«ç\0r8$˙‚≤q÷‰∂g$ÌÙÊµtÕZKIÌì?øRåOL¢≤¶]¨Å9)¿…2ï!èVƒljö\\÷ê-ÃQ&d`2:„˙U±û0$d=F”‘8aı≠V{[n§{kpV(â·sEö\\≈°•h‚\0;FNÑt¸Fj€Å:ìigSπKIC˘é¡#ÜO9˙T>-— –uÈÏ-Óæ”gÂì¸∏≠ØkzvóØ…®_£….‹ Î‘¸«û¯≠oã6¶ÁUèQ¥¥ôl‰àr>VœÒ≠e©˘\Z-è1Œ·ÔRF\nû∏\'µF¨A¿•Ó;öÿObGÂ∏<˝i¨„êM<∞\"´∞$í:gàuß_o\'•Cœ>‘®¡à\rMÅaNË«=j#ÚèZyM†mÕ:4TÀììÈYÄ¬§®˘p)∏∫RógêìMc∑èÁTÄc`äö ÈÌn“u‰°…£CÌPí;”wc4\\wRG;óAÇ«$Ä˙\n™N>‘‹û’÷x√W\ZÓ•Á€€¡tñd<÷˜µeôı5q\\Œ¡\'esó¬Ô\nB˙“≈3A\"»∏‹@#\"¥uÎôN©$R@ñ‚*∞ß!zVYY%MßfpHUNí∞-UÕÎjê]$Í—ô#èÀè(0úı–O„˘.¥8l.ZgôsÊ»Ìùˇ\0› v+⁄∏\0T`{öTWïˆ®…™Öy√b\\\"˜;[ﬂ€.ù˝‘ÃÌøÀ*z‰ı5 ?ôÄ∫ëé60\"¶Ü⁄0∂èˆàü|ôt‰¡˛/o•jÎﬁÍ7Ì®Mo,÷9ÚRe…C¥`\0›˙P„)Í¬Èh^”moVhÆ¸+\rÎ·cq$ä6düná•K¶i:•Û∆DK5›ƒ¢¸÷‰7∞È˘”¥-U4ˇ\0ﬁX-‘Òœ,˚ñ,·ó\0ªﬂ¶+π”ı?õ+_¥jZùú£ix∂mQ\"˜o—Ïc;6KõéàÛO¬∫ÆúÛããrDglõN@˙W/<FYj˜çK≈˛\Z«o¸6Ë„Û·èaöÒçR$?hÚ £=ÒSR1å¨ôqmÓd\ZN¥tÎG·PXù\rL¨~µ{zS„p≠ì“ìaFV£-˘äió\0„Ω\'≠MÑö\0ç(ÔOESú–4u>÷d∞€ÚòƒdíÒp[ÿ˙Vç÷´q°xäa	ºµóûaŒW˚§˙éï ®û Òó`-*¿Ä√=ß¨ÎGT∞≤µ[8£È¥¥IÉ!ı5„Níî÷óOqrˆ´M´x„ƒM4vnÚ9€\r¥C;∞—¯*WÅ/ÙAoö‚\'Vy‹*	«◊äÂÙKπ¥À¯Ælum%9Vp9N«é‚∫}.Â<7‚ü0]5‘N°§õ…√s‘ÄO?‡j´Kñü≥Üößr¨÷ëÿ¯~#)72‹e’î*˘Åı˙÷h◊ëYKz÷Ú«j§ê®\'†\'÷ªçWZ–cø÷V^t\n~m˘¬‰ˇ\0œÿ◊3s™Bon> ≤\r:Y7%ª∂üR3⁄π®T©mÖ&b≈ck*√$.Œ·õÕYWjê9>¸’;ﬂ&[ôeälåŸH≤H–\ZÎWZÅ<:tﬂ≥*\\Gv&.(Îå`˜¸´\nKIØdë¸∂(§ñ⁄:jÓå˝‚o©ùm˜Ÿ’pNTgöôÓ÷;à⁄—ÅÛ‰wßI$÷Í÷—c-ê\nåöçbi¡ÿ´øù«*õOq=ç/xí˚^äªú,`F£jé>ˆ:d”|5°_‹€\\j#K7™6ò·co\\˙ä¿æë\\†àûÃÔ]?ÖèânÏg“ÙóëÌ¶QÊ¿:G>£û‚âSp£jvE\\Ü˚GKÜYb_≥£&r«r≥∏«JÁpW(«=1]¶≥¨i∞6ÅyQywàˆÜhÛ¸!∫‚≤¥}Î\Z∫B∑«!##ªÛ¨Ë’qãsz\nÍˆ9◊#$ûò†PsÎ^ã©|<∑≤[ôÓÔ÷” C$A¿o;∏¸‚∏FFéFz\ZË•^6+qà	%èoZî≥ÕjV;rÃ≠ì\"Á8Ù5ÅÉ›¿ÌKÌÕôa•AÍh‚˜BI_Q∞R¡⁄?Ñ’≤≈á ∏ﬁõ\nµ”M,åwêqﬁßé\0-’ô≤`äŒrWïäm F*A+Í)af|(?ù<@ N‹\'äö÷».	Hâ9e‰è¬¥çö£·˚u∏÷-Ìﬁ¯ÿ˘Ãn:c¿œµvZ?Ñ¢Ω÷$”µ]MÕõ;\'ôﬁ´ÿ˝FyÆòÕÃ[¡1©±∆Etñ˝ÉVux°øÇ(ƒpJçˆéT‰Áú\ZÓ¬Jü\'æsœôΩsQ≤M:Â‚äÍ;ò$££dØ$`˙:{’£‡±Ìå˙’´ÎÀ[áõ»∑t~S#‰≠eæ‰núuÕs’äs˜M¢ùµ$î®8A«≠4>Pz”√‡1⁄=iÄÄ‹‘•b¨Lås‘„“ï¡\'n0Vò£IÁ⁄údrﬂ*ú˝(ªÿvD∞™Ö,¡ã*k)^÷Qpãåπ$M¿˛Î;â¬:Eg*w2B„öÜ~–ŸÙ«≠L[∏4∂5Ã˜ì	&ï‰~Ñπ$„ÍhéHŒÂe¡Ïs“¥¨¥Àããï,æW8S ¿cW<S§Ic}\Z‹≈Õ,(‰@∏\nOcÔäoÃ9låãïQm∆éO¡CÔı™&29Í∆q÷∂¶¸÷êA=ƒ…Äcêú˝7/QYW\n…q$bEëUàΩ∏°I=Ñ—dc–R+g ”˜cÉ≈5á éæµ`)*i<∆	Éœ4Í3ﬁò‹üZhhë\\Ÿˆ•^≈D8Œ:’àWåúf≠h4-≠fh∑à…F8›é´êé71Gl“[O,ñF1#Sπ@–Á“ñÑê«◊ﬁ©2Æö^°-£‹-ú∆¿g`º(#ÉÙ´væk≠\"Ê¸]\"À\nÜû¨;˛5ç‘ã#ZùËd⁄ÅQ∞=èµzƒZÜìFπí∆8¶∏Ö–±íV!O<ä∆≠nMí[û9k£I9ÜEFïdrªñœ\\T≤ËwjíüÕqΩP!\0/<Î”äÔÙ4πuˆ∂*∞Œ≠ÄF*´)lgØ=k\\2¯R—4¯ÙÁøû·Ü…6~Ô0@?)„®¨*Wïˆ4IXÒ(Ì.d∑ie/ÇvÁ∂j\'û(N ç∆·Œ¸öÌ|}o=Ìµ≈úik4∞/⁄Ch	∫◊ë∞VíAº7Oj∏^i6Gg·ùmtà†í8K‹ê|ŸôÛ∆z}0kRÔ«:ç’Ãˇ\0`åZ§ÃÂ8⁄„•pˆ≤ÌR∫„Ù˚ÖxF»¶\0ÁÔ¡™t!-ld€.Í⁄ÇÍöõª¨q±!d\'ùŒ$˝MSµ∑\r±ŸJ3\0´‘zÊ´XY]›$¬+fê!›#ˆ\0‚µ µ0µª3Å∏‡Ñ<Ø◊5”N)h&Ù,≠∏¡ÏÓX`ÉOP„Äxüzµ$…ûcGπGœ=*wWsûÊ∫°.Õ1≥$d“¥+úÓå“DÍ©¯‘S>‰<ÒZΩJ±$É\'ÈMxÄ:\n°”¨†ï†yzRZââkı4ÀÖÃdÉ“¶?ªlè©®gpé:’&†œ84…à*†üB)û`%∆1N@ÀœZ/r∫∂æö‹Ú;Ê¥¢‘ã¸¡æ£5ë;±NöÇ3$ljiÉWGwa®¸«ä’äÛwö‡≠µ›Å÷∫]*Â\ZBÚÀÂÏ\\ÉÍ›©…§âHÈFÖòÉwøZ≠,ÉÇps”N[‡—úª˝}j∏YJæp9„5	çñÂºàö!¥.1ûµRË„ïöHÿÆ0\nˆ™≥œ∏ê≠TY⁄7é=˘©í∫lÍ¥xﬁ˘»ç∞Ω2OOjÈƒì@…\0âƒ1ø‹HÆﬁgC!1∆‡¸ƒ`q]Ü£+€3KyÛª®Ã˘ìÚ6VgFÛ$V\\3zÙ®%í2GîI»Ê©\\3]*Hú\00Z•µ;¬±¬Ö‚µÇI\\ô>Ö€wt#gSﬂ“ñbcr3Ù‚ï]£F)Éï„⁄Æ[ü¥[˛˘71ª7mDífrÚjuÖe∑¸√µ/í\"rÑÉÔSy8_î‰Uπ\"P‘M™\n…ÇO#“•Cy«qÕF´ÕYå“¢Lc‡>[©\'É÷ÆoÂz\Z¶§ìÍiﬂw°Ô“±íª-J≈è0åéÊó{dÂπˆ¶ Üœ“êdúTYŸ*∂}sÎJ™≥ör†\0z—˜:T˙n„à»®∂¸˝*@z˙–=i-´ç€ä\\tß\ZL—p≤‹ÛJNxÉı†÷∆*=jv∆qÌÎUògë–ú\n∏ô»k9˙TwÚ Ååúˇ\0ı™B0B∂9®ÁB∏SÈ⁄¥Vπ&L¿*8aIc∏fPJß *‘Ò`öÇ+fï\\\n2ı◊U’â9…bc(Epú˝ÊË3ÎRià«}lÓ‡ ££c‡zŸóKâ¢dÜg-,†#Ç|”¢“\Zﬁ÷xncY£›øÂÍßsÌ≈qàπÖô¸ÿ`ëcP	ﬁw{Új4åœr∏ooNÇ∫€Õö?2⁄\'H œ∏?Gˇ\0^≥‘$Î∂&ﬁ°Cg‘u™∫{ßãƒÌÁ°P∏%I¡ Ù\"ï!b:pMlw\'|£j»ªÜı„#†¢–†P„åf•ç#<[£íW$∂«Nı∑‰~ï´;eV0\0È∆jª(Å‹œk~ ∂9G\'¶*˙F‡Êôt™ÆU3¿Íj_a•‘™ ⁄•ÿ\0dì⁄•∂%!ibl¶ÒπGzπßXK™	\nØñÑñby’Ii3Gs/ña◊?≈È\\í©gÍi–¥∑20!K¨NŸ µ\"\n.3øvA=˝*≥ãÑU<ÄI<Tâ*ºX`r£≠;≠…H–iZIÉª!|ÔﬂüîÒ”ÎW“È9Fq≤√œJ…GKuë%mÀÿéEA\rı™›ñü,@∏=Î	Eµ‰jµ:RÚÀ¥Xt‰®Ó\rsã}tnfJJl∆\'?–◊Pê„OdÏ‡∏o·Á≠bjRKexU¿.ﬁ£˙◊56úúl[V2Æ„Û‡Yƒ•[úcv~ïI’ﬂÃW∑‹¨•®˛U´1Dxe∑h› ` :˜ôs2G˛ò!U›ïD Ì›ÌÏkH∑¥8€¯Zc.\'ÇzÁ¸ä…î…1∆+§’ê≤FÒí»C‹åÙ¨…‹ƒÅú„ËRï„sû[ô≥…-–ˆNËB#O,6Ï|ƒöπylﬂf3ÚpÎ.@√Ô8ÎM…6b2ß®ò˝∫PÁ<)8QúIïpp0=E&\"HòñI‡NR«ì»®‡û85*O∑•+–≤ªêí*ê3Ü=~ïπ·∑Öñ⁄‚]Ñ*éÿÓséº÷6õ›\\«m\ZÚú!\'5´vÈÛF∞¨qñqé+)§Âb„¢K$‚%q!ëÅÌúZññã4p≥åGÇ6©¡$\nœ∂πŸ: vñ…%èsä›¥{Y≠cç]†õ{:ú`˝k\ZíqE$]–,„g›3\"≥*ON’–ÍÃ±€˘NUÄ%ïwñ;˚ÅYˆ\Z~Îa-≠—ƒÅã`ûFz’õa,ŒÛœzÈ1l£™c•yU§•;ˆ: íCmÙË‰Huf∏h’IX£9b{ûæïô}è¨‹]JÉÏÁCrßúèQZö§ƒYGoi3T>Çy˝9Æv[Ÿ≠n>–	êú°VÈúrkZ\nR|…ë;\\Å~Õ\r‘—,®Bd`=˛ïUlU¬ ®8#y9√Œi\ZÂ#eê¸ÛëÇºûHìmRS¨≤nè~z7íF:J∂“´À-«ÔAF>˜πÖg†ﬁXë¿ÍjûÌ<¿“7‰≥q‘‘VÿäAª\'åçºÛé+zoBYm•äY7$[0cŒ@˙\Z≥cssfÃ±À$aæV∆·ËjG∑ä\r<=¬πà·∏lÚ·öe£K3e˙ûï§^Ñµ©n7:LÀ»lïdUÿSÕ%ôÇ\088˝*úH°1ŒÒ–U»Ãä§84”kx]≤Tc\0‘Ì+Hòl\09\0\ní¿ÂÜWÄy˜¢Òq,Ç#ïŒN\0Q˚÷Zòï8 Ç)¡õ†Ÿ.X\0=3éNjêB√wÃΩx=kFÙãÒàÃÃÚ—¶O\\f≥oÓbçÀÄ6ü∫πŒ=ç[≤rÚÌ,º w.qí+õ’%6ÛºDÉŒr;W:ïÁbÌ°\rÕÿ.€séŸ™E6ÇÆ«8Ï}Í’Ñq‹ŒÅ`ÀÜ9·y‰˚qWtΩ:3©›X›)ÚFQÅÇs¡œ·öUq\n7ÚbA§≈$”:4I!âyŸÛuÈö—¥ûXmÔv»Ìæ@™>R ÌıÙ¶&åö^∞∂o$åf;ùîï˘\0<`Vı›™¡®†Ç’\'∑úc.r®?3^^\"∫~åËåFœ¶≈%Ï˜ç2nT)çvÜ»‡6~ú˚\ZÁ¸X⁄müòÅ–Ã—É‰©ﬁœÈå‘zÊ•yo9≤PÂN§0„”¸+ëfkyaÓ!∑rsûi·Ë∑i6íŸ’ﬁÜK_0[ê6ÜnOπˇ\0\nΩ•5ﬁ°h÷Ê}∞∆Ÿ]˝2{Sc”÷ÔOª∫ú<{>hﬁì ÁÿsPiw3Z≤€•‡H§lîd‹Ñ„å˜Ôé+µ…8Ÿt2Ÿïu˚x¨µy Åv™¢dn›Û¡˙÷K±-ÌÎWıÈﬁM@≥ò…⁄\01û:VjÚº◊E7Ó¢^‡zìI€Æ\r5âœj;’nGQG{‘â1≈1ú\Z‘”¶∑éÚô7™ˇ\0{ëü•\'dR≥ŸHÅLä»H»»Í)ãjE¬ßæ+zÊµ9˛›$ëyJÿ>X¬†œ•i√£…\"«ys¥£˝«®ÿ˝+ûU‘w4PπÕ‹iÕ€≥g0+¢≤çµÁÜ ‘÷g4€<g#\'ßÂ]ç∂ùcy¢√l™Zv?+≤§ı?¶km¸),ñ¨w6±ÃLmù¿zÒÓyÆeäu.£π|ñ‹œ÷¸/ck¶E<wq	#î√\"ÔVÁ±ÆUû{=—Ï1æA‰`è•tí]X;âçÚ‹π£yÌäπÀòÈëGã5¯.≠÷ﬁ⁄8Öπ˘b’Ä3◊È%x&˜9€÷»Â–˘ÆK{‰ı´gFÜC·wd∫*ÄÛ™†˘àÕ]Ü ÍH¶Ú\"ëû5ƒÔı¨eÊis2Fwl1È≈(&<‡6{ÊÆM	ä0\n2:ùÆR~ù™f∏∂ä‹¬÷˘ïà&Mÿ„ÈE«b’¶úÍÒ Oñ≤F¸s«•uﬁ¥OÍ≤\rFÊaåX∞ç‘FI ˆ=+î–≠g÷ºCkføvVŸÖ„é‡zqöÙü‹\\Ëz≈Üè®ZÜûŸY!HÜN∆$´±ò¡£ñÓËï.Ü°e¨¯ZÒ“[ÑÇ;µh◊a»»Ìêkêπ[=/Q≈ÙIz·ÙG˘w„Ê{\ZÙﬂIe‘hŸsy$¿»ë\rªî/Á‹+À<E¶ã-FUâùÌŒëár*%{ªò≤ ZBG…íH†ˆ§iúD#≈Œ‹ÒüZéBK\0{q¿¶3Åª”⁄Æ»áS√}Èï±Ä8ÙÕDÊ8ıß2Â\0\rúıÕ&RT\r™@›…®ôè5&3∆9©£Gπv‹A¬ÄXé:Qrà02~ºR»=∏©ù5…8˘≥QñoıÉ\'h¸©&2ÀåU√j≤€o‹°ë~eŒ8˛µê·y\0dÛS$>b6◊¡\0íoZMÇ(IB1úzëS€E*ÃåÉÊÅå’Ÿm.g1≈2H@$a}9?ïu\Z6Åˆe˛“CÕ≠®/u∆‰*9\0Ù=F=k’QE$gYŸΩí<Ûˇ\0´ë∞È∑øÁÕoG„πŒáèkºI\Zíï…1aœ„äÊ/µãŸ§/⁄Œ[,:/@>Ç≤bíKy›WX`ätÁ>]A§Õ;õÈ5	T]‹qÉªp„=∏Æn…OC–÷¨ª_dØ§e∞ÂGˇ\0ØQÍvlñÒ]Æ]OÍ∏P?áÒÎ˘Vî’÷É∫πúánE.“MGë∏qRg#†™ò¡îcûM+ræÙ—ÇNM&∫v‡–¿Å≈5Aµ\"±Œ;Tå∂%&\0»#Ò¶ÅÚLÉﬁ¢ﬂ∞|ßÂÌS3Ìèéå(∞¨CÊeÅ?xt≠YØßøçﬁX*Iﬁœ©ÔYS)\0u´QN\"uìÉå≠“Ü…&í`åÆ´í0Nz\Zπ™ÎÌ©GmC∂Sj¶‡9#íH‘ﬁÎ:>ΩßGooaoÇ›3ØÙ¿ÎŒF}Îè∂”&ª∫ÚÌ`{ÇÕµDjOÃ{T+IÏ±TKˆi\"íÛ©ŒEzoát[üË\rss¨Ml´â’z/\'è^+ÀÆVX$h•å©SåzV¶ç´àù!ªﬂ5†#0ôWÎ≈ãé„æÜfµßej≥⁄y©*F‰,àrÆ=A™L¿ÆWß≠}‚Ø\0i^#L:ñï€´{`–ï<:ùºuˆÔ_?»s8#ΩT*)≠°n»Õí2x†d6‹\nI\0Ç}Í—\"I¥\0G<‘j‡∑LR0«z2§Éí)∞%iâ¿Q¯”Ü‹ú‘ä|êıª$ÛQ`Cï‹˙‚ï˙Á≠4G<Rr;”\0˘±œ4:éi§í8ÎF}Èÿ…¡Î“ü\r’≈±&	Âàûæ[ï˛U∆N)≠Mh\0“39g%â<írMZGfQªl\';A‡üZ®8ÆÎ¬ø%◊¥◊ªìTãOôée?sªÿsW oBd“Zú‘÷\"1˚©<–\0‹¿cˆ®¢&a\"›#\ZÏ5-\Z}\Z‚Œ⁄áP17òœ\0ﬁ&⁄›A„µu~&–°÷RI≠¥#m®H©$Œí+G\Zû≠¡„üj◊ÍÏésü–41oyflïo¶‘b«Á€|äÃø?_‚\\k“o<3£i:E÷ôu,*Y∆rFx…Á“±|i‚=8√<6Ç˝`ÃPá (uœQ]Øßqm∑h\r…24»éN9¬˚éπÆäWøc9w<ÿi⁄†ë!kâ\'âÇ¿ä˘`:ìår\0®|Qn,“\r:?5ÂvÛ»õY≥å|ΩΩ+•÷5‘øå¢ªÇ·ÏƒËr#CÑ=¬ˇ\0çI‚´˝_∑IWQ∂öfêï#°,G„“µT“oòõΩ-ª¥áLΩnCÃÑá1ÚÙ´»∂w÷ìI6Áp†‹vƒ	ÎÔ‹WK‚(<1aaee•:\\]ƒG⁄•X˘êıÎﬂÆ:W)oówl-\"~Ÿ„_AŒkÀƒAE‹ÈÜß;p‹∫ƒwF‡„≠VÕ_ΩWëò7s∆*áCR∂(N‘ù:“ıÕP19ÁµKÊqú\ZãÊ•pì÷ì‡Ÿ÷åüL})≠Fÿe*}≈#Å@éœ≈ˆ◊ZNß$r[Clƒù¢&»+ÎTtKãÀV ÕøÃN„Ò®ºgÆ¶≥‚9ÆmdwµPÃO >µ-ñ¢ìiì…qr®¿¢§`\rÕÅ¸´»£Få\\ñ••ÿ“÷50€yöuíG+≈∂G∆I$Á\'=Íßá`∫‘ÓcÖOòqò“F\0zdÙß≥øÜ$∂Hmeâﬂ˜õ£À˙ıÎä…Ü˛;Ü[	ï≤IiSûôœ4°&”∫ΩŸ⁄x∫x÷!£J≥®ìz‹?E˚øtzıÔ^~≤Z√€ åWw,º0˙É^Åˇ\0	\"Í⁄%›û•/ÿÓ\n¨•Çoyd´dû2z◊≠K§‹È´,)ˇ\0√K  ˙Òéˇ\0Zä3’≈†ó+FDO\nI∂PJ0·«$\\WYó˙GáZ¥wzdÌÂÖÖ¿9úuW\rl¡…‹€HÈR3ÕI[®É]éîí2k±nmHJì ¥â|¬sùÀÉÿ‘“k_jTicH⁄(ÑH\"P©oSY*CH‹;TS1X,QÏ‚Ù)2H§∑}M·¿\\T‡ëûq^Àeg£_iV◊^∞‘“Ê)S|Ö◊w^x»\'Øçπ‹zÊ∑¥œÍ\Z\\>]õà\\:øòú7“û*5%IBõñ∑:Ø⁄7à<@M”Ó∆Ø)c42:ê@@Í|\ZÁ,¶ñ“˙H~Õó1mqª°„÷¢∫÷/ØıÈuÖÛ\"ù€q{rF“}\rjŸË:ùÙI}ßiwì2úŒÚØ¡Á˘ı5 †È¡)ø¯rπo©RÚ¡ñI˛≤O∑z	ÂoaéïéØ—ÏÍTùÃzΩÔãÀ∑ª€\0⁄ˆs&—;$üJÊe“#”„€®ZIiqÇÓ|6ΩiR≠YÓ+ÿÂ•ﬁévs≈D™[;óv5∑yßNóíΩöO$1|· r´◊\'U4Ö•,˛bìÀ6„å◊ljh	ıƒÏ´Ùç!6˚ÔÎÕJ@–DVF‰Ô„†™ç…wåØBN2=©(©;çª≠I„ìgÀﬂµ ó˛?ZÄ1«=˘Ÿndî†vb#]É\'†Ù˝kU≠≈kÂí5Ö]%ÃÃHt)””Ω@…+.Ê»»\'ä[{®‚4&·‹Ù˜ŸÂíEÀ6Fx…Ê™)!41biò\0@cÿ˜©Á≥6–∫œê˝ªÉÓzAóª0H é¬¨ñæ‘¢\"y“8I⁄3€⁄©ßmb∞a¡¥-,Vk`Ò∫¥≈∂àBíﬂ_J±•€›=ë‡\"˚—…¿#•Gyiq˙\\q≤DÁÂd.{Äj\\˙»RØòÅî7*N3é’°••≤Õ,ìº@!U¡ q◊éj°e∏ç<†ò%Ér*iÀ›Éu(\0¨U@…ÅÙ©w\'Q≤ﬁ4RH!Pe⁄TsÚûŸ®\"À!	«SÈQÏyª3}jÓï\"¡}w_ÒÈÊô	8 }*îlRGEøeˆ!i≠⁄Ã%áaÖ≠ühÎπzGzß}≠⁄j6VÒ≠í¡4$É2±&A€p<dzäØ‚ªkΩA˛∆ckXÜ\"táa ÛÉÎéô5ï m\'è•\'ç Â€çFÊhö$˚†ÛPEì¡@ÀÈÈJ6DúècAÚ√\ZM[bw*LPH@¡Á”•0í:U¶UbN*¨Ôu‰`t>ıiË\"õívéî¶3∞ézR<8 £gåüjTu$r:\Zªå±˝ü(¥{ïâö⁄6”ÚÓÏ*tm\\\\‘áQúŸΩö ﬂfvcœΩqU\"Ã>n)≠Aö:tÌ†A?w=j—bf9˘Y[úqY€B∞(O„VëÂÛ6 ;`Û‹VàÕù%ñ∞™6_¬.-€<t*›7Îäÿ“ºC£§íÈÂn!”Êπ¨ZœQÎ\\µ¥â±xïÿ©wAÔUºÜIÈœJäîîá{fΩ8]Iƒ.¨\"lG4@˛˜!≥ÎÕOâ<C÷∑è<q√ª…g˘¡C˘V-±>J´∂@ÁµXåØíËKpåÙ<u˙–©&¨…Ê*Î∑zﬁ®..›Z‚BhÉó≠+*9#qWÓJm¿YÊYB\0¿«Î[≤Õcs§§0∆\Zu⁄\nûæß≠99RHåxlßhD«˝_Òq–”å¥M,õâÄJÏº9•€O$b)∏\'lâ62G^sIÆx&Cc&£¶Õo%íí6§ô<{ˇ\0JÕ‘å]ò4Ìsê”.|Çci$ ŸpßÉËq]ŸÈ0Ã©n¶NIF˘∑2F}øZÂ–,óè	å–ìAªhcÅëëÉﬁ¥K[ì∫4d∏$Ì-–S†p[9Á©¨qv	èµh€J£©˜ÕuFh\Zh—7~`÷ü4Å£ \rcµ¿W8\'ÈSEr8zU›12¡6Rº˙÷åEò:˙÷k≤¥ÄÜÌWmü˜™ç¿<\Zií—jVf\nq…Ù®úÇBú¸«µ[ô—ÆX«˜¿˙S·∂i\\‹`™ßV°ÏZòWñÂ!œÀπœ”ÎP∏í›ºß»≠;ïÜk©\ZIBƒßhf=≠dﬂL≠(pŸT/ı¨÷å’«BduoîûΩÈí∞U\"®≠Üö˜[á_¬µÊDX„»ìxÏzV•∂©ΩGœ…¨gÑ¥Eœñ—¡\néaµduqÍ!‰Ty≈©°∫/‘úJ¿±(∑?È¥äF¸kf÷\'%åx⁄:Ó4)í÷ÖÂ‹y€ﬁâ¥âî‡Ù=3ÔP§¨¨C¸ß¶+[N>ôleX„+∏3åÄ}ΩÈ∑•…∂¢E#¨+hQ˜^O“ª-\Zs,O{cB∏QåÄO\\÷d–ZÕalËÒâ°MÆä>˜<\Z}ºœÅmËxÎXÚ˚HöFV6mÃ—f„…ﬂÇBÒöø®/Ê¢îﬁ1±@œ?^’è›Áë∞í±ªd∂ﬁı•…mt¨‹}jN2C∫eâ 6≤˘l‹œb+íÉjÄ }j≠¿y%Y;úsOX§\0§úgèJ—$÷§l…◊Áìq≠Lñx;ñ£ede$Á#ë“Æ€$RB H\'∏®ú¨Æ4ÆÏF™ß◊Â=≈Öv˝)«t&rß¶}*Us\"Ö=zãΩ«nÑ+«C÷•?*Ä‹èN‚•Ke={‘ç∂OCPÊÆRã\"¿H¡ÉŒ(±Ìœjw‹O\"ïWqTÅ(\nLöER‚†”†‹–OÁK”9¶0\\g8¶âzŒ~¥ù©®xßèZ;çìÎLì#8©0z‘nw|∏¶∑%Ëàãl~ú«˜xç7«\0Ú3ÈOW‡®zb©íº .º~Ò<`”LÑ.÷\0≈Yö%]\0$T\"Ì^Ì‘÷±ií’àYC©§∑DHÿ»ÿå∞cö~ﬁ1ODdE|¸•˛céü„Vﬁñ\'»í≈Â1«ﬁÜxá∑ZñXCMπo\'=˝iD29fj„ü©©dû$SπóßL◊;nÊ…+⁄å,4ıå6_9¬p<˛¨[xDó&BÃ áœpGj÷∏hg(Òπ\\.™ü\nﬁjIí£#üa]TÙçôîû§nw√\ZH@p˘+é∏™sñœnï{ÃTC»∑ı™RÇ@´DÖråá/ÕF„\"¨∫é†T¿Êò…tÈ<õ∞¿\0<¶+>Èúª;íNjt}ª≥–’Y€r˛µùµπßKYkìÿC$+ÉÚûƒ÷mÂﬂ⁄a/4ådSÖ\\v˙”Õ´îYb68\rPµæe⁄ŸŸúó≤ßw%∏µÿ´6´s4—≥HU\"*Á±9#Û´Õ|Ê 2ƒ(Y¡Ó;Uõ1≤åê;‚¢èj8Y7m„•)A[›Ïı7m¥õπcmÛ˘_(uR2H#9‚ã]\"Íy‰FïHŒH~>üù\\“\'íSû\nH¡[ ó*˜_qÕ[∂XÌÂo¥Övä`éÕ«óœ‰`uÆ)W®Æë•ëZÓmb¿,H€1ï≤§b®ﬁﬁ\\ÍôBŒøƒŒ+£’ íÊ¯≤Ï[\0ä|‚‡+AÔUÌ¨3+G\"@ô*A„Éı‚äxòÚß%®⁄oCª’ÄF∂°∞:ÌÊ†Ωπ‘ïcí‚	ﬂ~Ì°p2==+´ºí ≠b∫A.X69„∑Í)¨≤Ÿ¢ª¶ËÂ‹≠üïá`G˘ÈY}k™âj7“Áôﬂ^‰$¸£$ä©n≤\\_%º¨æiéq^ç?átÌBﬁ‚€kr~x‰ a@œC‹g5«K®¿„ª≥ˇ\0Jv-‹\'À\n√π‰÷–≈™â∆R>W©CR˝Ìç√@L$Å˜wüÎ\\ˆ°o$R.Ë–ñ¿lèL~ï–…<◊ÖÊπ…ê)!˙Äs‘˛≠RhiGûÅ|9«“ÆÀ‚∑Cî`Ã‰„–v¶m ÉäÈu=1#π	mg~1ı®L@òÆÚ[ùŸpk_jâÂf\0¸jx∏¡≈!V*\0#8¶Ü,úÔÈZÙ$∑Ô⁄0:å’®dÚ‚ÀÆ‰œ\r‹J††FÂ?ã¶sS∆Í´Û\0¿vŒ)8ı\Ze•ò2Ì,}y´ühú®\'î_ªûqT¢˚8Oò>˝ºc¶jA).≈GÀÿ“éT¬Á[o‚i\ríDë†h◊b≤H˜8‘nMπô$RÅyıÌ\\ÇH°É/ ‡’‰ócgÄzôÙÆia ∂E*åÿ˜◊∞dúïà:Ëq¯V{Œ«oÓ»$ÖbG´/uo=ä,Ê9î\rÛ·∞xÌ⁄±^‚y$¿ìrñ?√ìUNäW≤∞úã◊π≤òêARx≈Bó+u#ˇ\0\né8©⁄m2Fqçàb é;˙{÷0sÅÉeΩjîSL±–\\[õòv\"π—ïrTz\ZÕ∂çö_+c¥Åæ‡’ª+÷udw¬íU∞HÙ©-fè˚en y–\núÓ`q˙‘“ÊÊÂcv#tõÃ++uÍ3ê*›õ\")∫Ç*	eÛeg\0Üoºs‘˜ß€Ø95µàæ¶ú	µƒç*í@lb¥D§∂;ÎÈY÷qΩÃ¢1”Øˇ\0Z∫≠;GäÊÕ%ÛJ¸ˇ\0.x«‡k*≥Tıe≈\\°jå∑\ní|πlßkÑZ¢Çªd|´è¶?Jøyj∂L≤J‚I¿»8«ıœkW≤\\\\êÁÂ»«ßjàOûi≠Å´#<H^N	„ìé‘í\\FŒÈ  úaΩ*2Ôj#ûyŒ1É˝k6˜Pñ‚g∏π9ë€,¿c5”)ﬂb±Ωi%ºwÒ%¡ed≤;\0r~ºUÕ[Hé˝gºï]ôô0\0⁄FFN\0ˆ¡¸Îïé‡ﬂ¥p±bÍY}ŒF	ı’◊¶ØqehmÆ“ÊdëK˘ËUqèÊ+…≈Jqíî^ßE4ö9=Hï5Ô)∂˘`ê¡œﬁB?÷µu€{[	Y≠n	ìn¡ ”¡Íº≥]#™ï™ûß∏¸1Ißi´w,sü2I∑ 8¡å÷3≠Õ.v QV≤)jöîÖÌ.$∏ÕËå*∫ú\0ùé;]7ÖutΩKà!\"⁄ÅòÓbO=3XGDòj◊3:Å\nÍäp3úûıFÌ#¥÷\"ñﬁY£íGé\n*Áåí?˝USTÍAEÆùÕV\rc™\\i∫ºë§#/Ãëæﬁ “©ÆÉm©i2\\¥q2ô1y˚Që”æµ≤5M{R¥©iU<§a ∂;é‹‘ÿ‹iö~´∑∞qÓqúè”üZM®¡>k0O]åèj0√¶⁄È∞πÛ·@ØèÍ{ˆ¨]eΩÜ+â÷ﬂïë◊;Oø±ßﬁYé“Ífèl∏FıSÍEhº∂zM˝¨íX}™)`Vÿ˜œzÎMFù£´dΩ]Ÿâ‚óé[∏ä6ˆPC∞Á∑ØÄƒè˛Ωm¯ñÓ;˚÷πá`Ñ·Uç∏åV	…Ô]t/Ï’ÃÂ∏°âî~π¶‡z”≥Ç+dà$Ú∞™¡Å\'”µ_∞∂∫ñôbÁò„ö¢ú}\r^≥áÕ•ëF2èÚ¢[‹ëßí$tYâ,«v\rnh◊™˜±ÃnbGâ3≤e$6;q‹◊8~CÄ®ÔC1W›ﬁ≤ù(Ÿî¶”=^ﬁÍ’≥2ªGvÃdxc»XÚ0>πÌ\\^øÆBÏˆ ëê≠ÉÚÚ0x¡ÆnKÀù§,“c;∞ıLªCwÓz◊5<\ZÑÆŸr´ÃãßV∏åπÖV6nå£ï∞5.ó\ràíÈ°IÁe\\®»ÎıÎY$ûI•I7ewdqœCÎ]È€C;•À,ÖÄì¿ÆõB÷o≠mù’ÌŒ7£p=?:Á-ƒawßiÂI∆j‹7)íeãÂ…⁄ßû+\n±∫±§éä‚Úµ∏ƒ.¸îÆJ„˙\ZÂÓó|€∂Ö@ª≤!xRÈ|Îx‹H–ÀåØn*÷î∫Nª¨Ωﬁ≥uï´3≤FÄeq˜G˚Ω©Réñbúµπ/ÑÏ$≥πÉWüt:pï£(Ap‡gÂ˝3Ô^ñõq†«≠X…\ZÎ˚ÂI0CIÛd£˜ éøùqZgä4´X≈∑Ÿ·++F	«8œ|ÛV∆Ìk(Çx[tdÓE+…‰z„Ù≠¶‘,ëöªwe_ÎZ]€ZﬁZ†èRI6‹BÀÛ∆Ts–©œÚÆVÛWäÊÕÃ˚öiXóA¬üC¯sä°´ÍÍÂ‹ÇÁyƒßÇrsœÚ¨…nLƒ≥ìﬁ±úT› Z\"º¡CÓˆÕCπí»ı¢F…9ÎL…\"3™É-UkÑﬁ##é*Hï¶8QQ(ÀÉäôIåúpGJñ1Ï6æ‹ÙqLÀ&vÁﬁ¨´#s#c®Y6ìÛdT‹h∞”• ôO\n~e„üO•RÈ∏èZrHêπ.°„h8®ÜJgæiàme ‚µ,]òÑ\nd ÓQÿ¸U’8˜tÙ5÷¯f;KòÔg,b\rµˆÆ‚çå©>∆≥®ÏÄÃæ÷Ó°∏-Ó	91ÚÌ {`öŒK€π-“)›!RX™úg>æΩ+{V”#Ωπw≥ävçs*«úÔıÆcwì&⁄Õ«ZŒW+Tl$∞^BÒ£6æ„∆\0˘π=œZ  E1√3¯’ã“!∏ë©«ﬁ Ì¡Ù≈WI4° ÇI•ke∫6‚ºÇÚ¡ÏÂÅP C	É\\ı_~ï∑w™ÈO‡ª≠&⁄∂ùô\ZF_ôe*0<ÉûøZ¬ÚlGÕ…`ﬂtq⁄°d›gtˆÖ√\0S©ˆ4BnA5sú<údTÅ∆ﬁô®Âº‰c=3NCÄ{’≥D*ì–ˆ§aÅ÷ë_ÉÿAëH«ï ;p\\QH«#¶:”Iîca≠zußFw·=øZEl(Qèzkª[æqHñOJ“$*FXÌ¡8˝i%éKyäJÖXuSÌ‡íÓA+πﬂ8_\\s]=åvZﬁùeÃZé|πcπ_≤ë‹Çá†õ∑!ìÂ≠ƒz¶á(ìOπ16s–öØ5ÉCrJnåTÁ±™Ö£-»!{éï*HMt4µmcPÒ˙›jƒee¿;B(«∞®,-D˜™´ ¡]Ï\0«‘Vs∂„è~µ-ª\0˛ÁäπKôj	[c’4ˇ\0[h≠Ç=Â¥∑Ã†‰∞¿vÆƒÈc˝±-÷ò“Yÿ∫yò›ÔëıÆ˚√^¥Òçù∏7†Cvw‘„¢Nô5ï„Ü∫éôj⁄Öõ´(◊s∞P•F~ºèzÛ©Jú*Ô©¨õí<‹ÚKÅ⁄õ∏ûîÈ[\'é\0ÈQcﬁΩ4bê·˜Å5!aèîT[ªbóû‘ÅàÕ∏ÛÕF3ﬂﬁïc$ÂÖ!8ÎH∆ﬂºr)å€r\0ßn9‚£vÁÉöhõ©7`“Å∏g”HÙ¶1G=Ès≈\0éÜûi”Â¶ü{≠[[Í/$pJ‚=Òê\níp	œj˙GSá<v6iÿëÊy«ﬂê\0X˜Õ|∫í¥r+©√)»>ııá¸ak‚_YEav£RKtÛ†\n]é\0?k¢å‹e°ùE• æ!’Ì¸=¶¨û\Z” »Tˇ\0—àU\\r˝k3¬˜∫ÓØ=ÖÕ¥BÊEOwf\\zv…Î^ç©i\Zéõx[…èÊ‡ÆÔb:◊$ﬂ\rÙ›%f÷b∏πµôb;¢ÜB\0ôÎ]©	EE;37j¯∑ƒëxf!ˆ[àRfhˆn\'Â^R~&ŒìÕ3€⁄ñe\\ÑêA…«¶kö◊/§õ_ëƒÓÃÃCª1\'Ø\\ö∆πÖÂô·A∏X7S…Ô\\’Á*Rˆk¶Ï’AZÏΩ6∫5ZÓÈ-QuuÎªÀ$v\'¸ÛVÙ-\rµ\rKM¥ç“1s0äI—y!èø:V-Ö¨— ±ªm@ƒú\r’Îæ“Ù∏uA\r¶°ÁòBÃãÊŒxÒ\\”ƒM±Ÿ#¥–æÈﬁy\Z–%¡`@{ï¯#¶G•R∑ºÜÍFÇ€3∆|Û›ı€¸Î–!òJ\0˚ØÄJû¢πàA°œ$ÂÇ‡\0Ä}Ó{ü∆õ≠KT¡G]ù¸Ui¶√´‹ˇ\0f›IqÚ∫m˝+î∏U\rπsÔöŸ‘˘‰esábBûµD[ôQüÀl‚«πóBå‹fä{Æ÷ z”Z°Å≈KõWÁµG“êNE!•ôÓg$üRj\"¥+qKå∞\0u§#F˙M)ñ⁄[•I@ƒ…Û)?ﬁSË}(å¬b=®‡Ó<~9™ëGlmc8Y–åBA˘æá⁄õµdE‰á&πZ“≈ö0„d“$\"@â«QÈZOgkdûgüâP–±bÕ◊$ÄÙ»ÆpFU…blÊïã©5*;÷N	Ï≈°€E}gzük’Mº≤CÓ°\nGôÿGLuÆsVÇ]ë~˛7R8D9Ú«\\V`f^©KbE›íΩ~SY¬ó$ÆôK\0LÒ”å‘∞	U^Mü∫ËﬁÑ“0h£.Jø˚\\è≠FÚÓåì#H˘}k}Xà–ïπÛ\0\\g°—]¿#í1Œ{U‰éÂ-ô∂äN6>øZŒHöyÇ®…5§5fã`¬à◊nw¶ü.£57Ÿdá!äûß≠Hë¢Ä  [<ÆzUI;\\óc≠∂æ©kqßOlö|Ú]£:D&/å¸¿\rtﬁ ‘5Î+FñÁL±∂Û◊p0O\"ó|aäÛÇz*ßÅnÚ<EßÔΩ∑upÒ>“°nΩG∞Ô^ç‚M/U÷c≤Çﬁ«Œx!ê©ö·vç…å:Ù≈xòäè⁄%4ö.-ÿÒ(5\rZÚ’Æ¨ô!íŸÚq/Ô	=¿<öœ‘$◊ıY¸˚’} †c⁄1å”çoÈ3k~øóu§›G*∆|Òü&Cú6=∆Fi5K][R‘§∞íˆ)ÆY¸∆é˚Öœ\'ûÇª\"‚ù‚ë7LÁq¨ÿ‚ÆäG\"˘ú7 F;˛EgÖlû\'Ö≈Áôü0? W–èÎ^øc·	Ï<(˙ÅH5∂Rª$â±Ûé uÕp>:—FìØFãg=∞ö›$\"Y√1ï *Ë÷ÖF“á!,≤á¡8≈5Ó∂‰í\0¿ÕO<I⁄I«w™•F·åuØB1HZ\"ñ\"yvoqöíVÑ∆∏?L-Rn:T±r8\'9ß &-¬è,‰ﬁî–·wg⁄ßãjÚñÔÔM6€»y~òı®VÜÜÅ¢ﬁ¯Ü‚H-\"#O2^@!GR+j{‘”.!µÜg2π»ﬁ##ë˝\rbiWÈ&Mßnp\\V∑u{ù;ZµÇ[{§°›)V<˙û¶áVQ—-	înÓz/ÇÙM\'ƒZ•ﬁß´Ã¸Ωœ8x‹1¸™Øã·—.Ù´´\r›∂¬c~0TêÃAıïÁ∂ﬁ$∫”¬5û!ï£∞8ﬂüÂOìƒrÍ?⁄◊ÃñQâù…%π«ßJ‰î\')Û•åÕkJ≥¥1]È”<ê»>eu £ºÙ#5û◊T8V9 v5}ÊÊHâ;YJÖ#•fº^^X∂∫£∂†ã´•ﬁ6ù.£ªµ§L©$¿|™Õ–ThK(\0e\r¿˙}i•v÷fÿ‹9∑¿7qÄr?Z±c®5òY ‚Nwgèj“)7®7¶ÉÌ’ötπ;#9ÿ»ªâ=ÖG{-∏HﬁﬂÀeSÊ3ñ9ß-ªLç,\n“\"ÆÁ*8SÔ˘Vtá$ëë¯’KEbR∏Î…<MYCG\\Ê¢ ≤ëöE˘~^π¨“(î˜#ß“Fs÷ö«é?\ZrêFØj`8{‚ï‘„\n8iß`#\'⁄ïe\n1ú–G©Q>|Û˘“æKg$d+`åä´áBE⁄Ã†gØ ‘ˇ\03eπ 2y¶[®2Ó,Áû’©4qG é2y»«&©2»Åú„µh‹‹≠–ãj(tå)*∏Œ;üzœê«cMOõ˙˙u≠V¢eïò¥H‰u©°ê∞f$ååLÿÄÑ1ìNGNTVä6 Bá (Ê∫≠√¶Ó“Êx§›q,ëB£;˝sÙ˛µÃ	#ç∏»‚∫∆Si\ZLˆô\0H·‘ÅÜzÁY÷ÊÂ˜FºÕ˘°∞’t˘ot—<wQb9≠Êf°Œ{v¨[Î˚Õ6¥\r ¥#D@˚›y¸jæã‚x¥€ôØ^ú \nîë∫ARﬂÎZF£•[¿‚ux…ﬁx Á¯è©πΩÌ§híKCñπ∫›F2SvÏ˜Õe‹‹ÓuM‹(ÔI}0Ä;+g9€Xç1íI\'ö’1∆&¿∏…ÏGlV••»*°≥“πxÓPΩÅÕiEr-ΩU©Yç£l¥x2)ˆ∆)…*∑^ïóov¡ºÜ#csìWbù\0u‡•>vCEÙ,2©>ù*ÃfFfŒ\Z≥Là d*Ra¡ê~î[Õ∞r9Ô[”õ{ìc°éqê‰äúÍS,\rn$a9 z÷\n^Ì`HÆ¨À*ù+k¶$ArIf»™Reî\'äËt˝*ﬁ¯K$˜F/,d™ÆIIÆzgVvŸíπ˘IÎäée\'aŸ•råß,@®¡>oQÅVdãéMXµ—⁄r$.P¡\"≤õÂ\Zhç7»6éûız⁄>—◊æj˝ÆÅu!X√.H»,1O}&Ó—¿uzÇ\r‘ô1∞¡∑Á⁄pj¬¬Xe[¬•:&\nˆ≈KnêG”“∂Q jDÌ‘„÷µÌdW)µÄ¿e¶§@„Ω[Ks«À¯\næT–õ,€»wí√ÔV§A_ê8ÔÔY–ƒ€¡«≠\0\n¥≠`E∏í´–V°û9§Û\Z=º`¨ËÄ‚Æ∆^¢•≈nUÙ±rÿn æz⁄¥‡xÇ´lÌçﬁ’õ¢3†Ù≠\r© 0*ﬂê¨*.ÖGπ\r“2À◊+ÿ‚í\"»ŸR≥3ûI$Rsäkk17©lB]≤·±ÌN1ò€+í¢¶Å¡åÙ©5Œ‰Ój¢¨5@˙Rûß∞•µ%∫ÄNGΩ b^)ÏªÒMhàx—\r\'é	Õ5d∆C•ÑÛü¬Ü@Xgä4\rA€+ê‹c£$¥\0ßI)QÖ˜®…‡Ù™äô:*P¿`\ZÉ ú®≈JaöM\n-Ù]95wÌäyB1ÅüZ\\~Û8„•%†›ﬁ‰eI##öl„#µ)<–\0»?ÖTTpA¿n£å˙TR†VrEYñ2?∆¢e<ﬁï¨Y\réjS*¨Q®=˘‚£e9§<6r:U4ò∂WX[{  ÛY◊W\0ªmîè‚Í*Ì¬yÑëT&Ñéµ•4ÑŸP7#íıÊïe∞y¬ó\nπ»é*Ãûa0úH£#ä’∞Ââ=y$èJBwÇTû9ÌLŸ<éÏ I$û*&`∏œCÕ\0Ü;„ Ui$=\rZu‹8™S©PsN„!.K‡w§#dÄ∞ ˜ß[∆ZNzUπaTΩGrïƒëó&‹âÄ˘IËj≥…êW\0`Áﬁ¨ÀE‚†Ú˜P¢êÓWëIö©,y‰v≠FBßV@ß\0ÙÔä`G•‹µΩÁò	W*}+ni‘ç)bƒü‚95ëa•]j^Uöop7∞çu∫^Ç∂±;Íl»O-%IËr+\nï)A›ÓTc)-≠ß‘-óÜ,» `˜ÆÅÌû-à‡âeåÇë…8Í©ˆ§∂≥Ü◊QB\0OÀ \'êzÉÙ≠7≈2Bñ\n\0“1;6\n9Æ\n≠UöI• éW‘ûÍ„lª—\"$*∑U\'®¸Î£–‰∑û“+ñ∏êüx·\0á^¯Æ*˝ZIX≥g$ìúöÇ⁄Úk\ZH$(Ãª∆A˛ï∂#	Ì)r«C(TÂw;?DË©=ÑúJ<ßçyËs«ßQ\\xåÃ!µñ6  éòœ‹iöç¥ñ¢k≠âÄùÄtPqüZüR“≠.a∑π∂HÂ3 2`˛\0ˇ\0ûïÁRØÏ_$óÃﬁ‹«õ^Y\\ií-ÃMæ!AëúÇA„9û(‘»í«‡A√è|µ‘kö|3Í≥y◊s[8DíE+Úí–√?QëıÆgƒv∂ê…›¶`öUÀÄ¿ﬂ©∆:ÁöÓßYTI=…‰kS\ZÍ‚WuäH‰E ¡ŒÓ?≠P‘/‹ã4ìºìÖ⁄wr:sÙ©⁄ÍÓŸŸ\'í€y«≠SºhÓ.É¬Ñó¿¡ı≠£rkB;è©ˆ©@¡»˙‘b)Y±íøxOZ∆Ósı5≤}àhò0›ìOW\\√û∆™‹z„ÿ=j–ö.´éú˚\Z±®^¶≥—∫\ZóÃ\"©_jÕ¥ÖòÇ€w|πÏ>æ’ôÄd„9{Uòüºm´‹‚ãπ§h˙é±,êÿ¶cVcgÅËM\\‘ÏEï¨ñã©\ZñëIñüLäoÜµX4Ω}6]H∂Æ€\ZE^Jˆ»Ù≠üÿZæásy≈ºâqÚA`AˆÍj@‰l¢öÈD^s¨D·¿Á5°kÆ•4ªIc√3˙Ê•∑Ω}.˘`fC0‹Í;Hı™˜s!ºòCÃ{∞	98¢√1¥q◊=*Â•√€\\§ 9VŒ=j™Ã7U•>cg\'®íZÅ4eôâ…‰‰’»Å«=*ºhqëê=ÍÃ_.9≠	5Ù¥€$nÃ√@8Æ⁄=1c≥^U]≤∆7b@Ø:ém¨1êcﬁ∫Ω\'XäÍÿ§”ﬁ0BªÇè•yÿ»I∆ËË§—”∑πµÁ\0™˘y\'◊.ük&ØoÃûK…êÀí\n„=zgãmØ4˚5π7Ã∆\\G$hªPcê~µ «´jâq±]3<(ƒÁfy„5ç\nm«ô2§÷«_´Z[Am+[∆2≤)Ä∂@n0HÉ\\∂¶çoxí^P¥{QBÉåzé’GVÒ>±u41K?ûc9E\0d¬≤Æ|SsÙâe/f>ê«úìû¸’FùEª‚ÀÚCΩı™‹\rÍ¿9Úé”∞ûÑ◊°ŸÿiìiÀ5¥r%™ñ.“6Ò ?À“ºØQÒ4ZÇ€,÷_eH¢¿hG.›âœΩÎVÀqoΩ˘™ÇGä‰0B¸ep=ÚsYV°*äÏ®4ôÓ˙}Øÿ¢}Õ)“\"CÌ€«Ûˇ\0Î©‰ÇŒ\'2%Q«ﬂ$;{Wüi^%Úˆ¡	FêÄã4Rç≤7<s”∑ÂZ–jÍ1Kˆô°DÍZ#’8ÏyØ•vﬁÜ÷]	|A}§Èê…v`Q!*©¥‡Áëû;W{≠Aeû\\¬gñ0—©Â?)Ìë÷∫∏n¶öÓ‚€b2°U»ÏsÕyM‰o‰êHŸÚ€k{W°Å°-YçWc´—ıõõÀª[svC4ã‚ÿÚ◊<ê}O5◊jzÓí–^5‘èˆò»‰eâ:åz˙Wó⁄X¥˚åBdá dÅèn∆∫Ω#@µ÷X;])»v^U’¸˛ïÆ&ç%%\'–Plô§ä„Uk◊∂kô¢èr ¬Æ<„¨Ìfµ—bΩΩäÊ#~Ë∞Éé9Æ◊G”Ì4ÌFHÁí[…-ÿØö;0†/>úö‘’Ù∑’¥=E5»A?1ep~ÉäÊxéI¶∂.Pm?»Ÿcè∫}iò˜ÌWÓlnvÄBÏPd·Z£Éª´ﬁÑìZ≠\r¿<w•∆z”Çùßä\n·A≠ö-⁄ŸÕ<–™pq⁄•é›…\0uŒ1ûïì2íê«åÊ∫8†ñ“ÀŒ6®Ãp»¡ÁúÁ  Qπîˆok171E8`~µ]±ÀÖÌ[7w\n÷im=æŸ◊%§-Û1=˙V3…º` ‚ú$⁄ªíÿÆ«Ú5Än⁄OA÷∂ìLç¥„#æŸ‰eÚ¡8y…˛Uù}j#ëº∂ﬁÉ\00ËN)™âªïîê°ôDπT\'Ê«\\Q,jå|∂ﬂ?)ÔänsK‹pNπ¶1êqÉüj≥í&‰*û¥∂Úy˘±˝‰√)Î»≠Iç•Î[›…ìéﬁz/6sïœ∂*[@ëûÛ¸ª√~Òè&í÷DiDnõ£yBŸÈÄkFÀI≥∏‘ÊFyMõdG0€ûà=≥å’ùf¬÷ﬁﬂOÜ8¢∑π¬i}¡à=qÿüJØ`iöœaõfπ”$ú¥x2H‡2Àÿ®@¡Œˇ\0hC±L-Ü‰BÖ7`åg#ΩG%˝⁄∆–•«ô®˝	‡éıNKy$ãÃå3`|¯t’96¨BVeYg-ÅÅÔNDÛ qúq÷ò±Ówœ^¬ÆŸRp˛[ÚúvÔYÀMçFÑ‹Hç8*Bú„iı˜©-ÇÆËà!rÿ\'=MZª≤∫≥ºiî≤Háq„k.G\\~4∂)+ôRê±ÊSº/ÓÛœ_√äô=©B˘É∏îí£8\0*®»Í:÷úÒ≈w®LˆQ®Ö>eG‡ëTÓfYå{aXˆ(S∑πı©[@\\„5<SB¡…:ÈäØ∏Áëätr4d≤c8¡»¶¿3:≥,eñ1ó p£ﬁì\ndËqNi]ÚI9cÛcΩ9vé˘Û«•!èÇg¡má=Î©eÏg[ä∆Òñ7dG2˚zèq\\©ëîúûΩ*{\'uπY•V60Ïk)´´á∞xª√:èÜÙ©otªÔ2—SdéXê0ÔıØ%∏é⁄LÓ\\\\0Ω1ﬂﬁ∫çc∆∑∫¶î4◊\nmÖπàÓsﬁπ;Äác¬N‡;ûıç(8∑q∂Pë›‰Œ9Ùı´EÉø8>‘§`ø7sÔ^è◊√±j÷wêﬁi~tR∑¿B˜œ9´≠YRá0∑9E¶‡©S\'8wOÂZ\Zÿ≥Ç›TN≈§@¯ ˚{wÆÛZπ}ç¬Y≈∂í∫îíOôî„ÔäÚùf¯\\?ñ±()¡lb±ÖGRzlV»«‘åf`≥„\"´ñ]√njo›æ‡ÃGgöÑ\0#ík±l	ä‡2åqÙ¶*ﬁ¥Â9R2iU≤∏=©è®÷\0äp»Zkr(\rêit√zz“øÇ)O98‰S>îƒÀz}€Ÿ‹G4g√ t$w5È6Pxëà¸;¡y¨∑6Jº3¨£Î⁄ºØv“∞<äÈ<3´]h˙§zÖ£ <±ôí7⁄^,ç√5ïh9-ô◊Í◊1Î∫5ÓΩºHLÄ\\FSnX‡ø°Æ\nÊác*8‹§é¢Ω^S∂ës&ôb^∆˝ñxÖ–À6zç√Ä*ïÏ2x◊OÜ‚€MÚ’Lo¥®N:Ω´*tßãbyî∂<∆_¥E¿glOzØ:=¥¨ôî„äπ´XÀ•jO\nÔyFe∆G≠f6Á\'s`ì]	0.Yﬂ‹ZL≥[œ$RåçÉ]eüèµmd≥’gìQ”ﬁ6_ æ‹1G\'ï»≈a?ÿçﬁ–a#-∏g\'⁄õunˆì¥R=¸´9—åû®ù¨W∏e2±E*á†\'•Cöùê∑,sLÿ1ì“∂BL@• „ØJò*®‰‡äçd¿¿‡SÁ>‘ƒ›…[<j&rO4˚∏\'Ä)ªÉû*@ÖõØZa”›z‘dc≠RÂr>îeG\\ÊõìäS$vPß\'ëöhcåJô-Ù§!˘…+—˛¯ûﬂGÒ ”Ôd1Ÿ_≤°qÅ∂L¸π=á<◊ö1Á\"úím é¢©	´£ÌË<Àô⁄G\0@ß\0~˜˚G˙Vçµ∂”Ù…maÜGñTÍ \nÚù„Ü¢tÙ±ªµÉÕä\râ:óaÄ2	«÷£πÒvµ≠¯ö ”PxÌñCµ—N1ü·$Á˛’—F1RSì—…¥¨r´§õüƒ≤|ˆÛŒùzry¡Æ‡¯F1´\\O\\Âÿ\r∏QÉª5Í:~é±«orˆÀµU`E^á+Ìú˛©s§ZœÁ´\ZÃÅdÿ†¯—Vpîù˙âsKS∆t˝Ï∫êΩµ∑y\Z9HŒ‰+éÌ÷Ω#I–•fÇÊ‚÷ﬁﬁÂW\nËNY˛!ådq[ˆöeÆóf-Ù˚x‘¢íúw˙’ÿÉ˘IÊ„Ã⁄7”=ÎñJ=âL°≤⁄ê¢ì#ÄI5¿¸R‘:<±}§n⁄çO^µ◊¯ép!Ú\0òdí€Jéô◊óxÉW—≠Æfä‚f{TQˆÑQÉ3ÛÄıÆ\në˜Ω\r¢—ÂW:gï47S¥øc∏V1»íG>¥À;—\r©è…2 lÇ›Õ\Z∆∫.ë--ÃÇ—z+ûUè\\{VñÖ®∫|áO¥fél£JÎ∆„‘d’Œ\\±ºÖn∆§ Ωiû⁄‘BSêåV#\Zˆﬂ\r¸3ñ)o©txî≈µ¿,sœÈ÷º˚∆>π˛¢¿[∫€?ÕAZﬁÖH‘Vàûá)é≈/Ω#©‰v§.XÚ+A1 €[8f%äY$2J±Ì\\ØO•T5=øÕF±Ô\'ú„•µåâv ñ]é\0=çtsxI≠¥ôgöﬁÂ.b\n·p\n:ûò¡Õliãµ§ø≤ßë≠¶i‰{tÀG#5≥¶¯˚P≤◊X2∞téqîÚ¿œØ“º\Z∏∂•´µçRπ∆6É´$6≤>û ≥9Ú‚(A∆3…\"´√j..÷8†∏ï¶?<ËIQûÉ÷ΩÇ⁄Â<FaGΩY\"∑cÖ;úq∏q€8ÎZŸÔc}c{an¶‘gô<µ^ÿÈöÂ˙˚SÂí%›ëÛ˝ˆç>ùr‚Ú⁄Ê~b2ƒSp˜ÕPKy_cr85Ôæ2—ıBY“ÍÊImÂ¿XaPÍzÛŒ>ò5»œÍ¬ﬂ»å∂Ï»ƒ™»zrpëÄzWM<|yy∏ßQ#»899ÈH\"|ÁéÿÆõXèOÜ≈6h≤∆˚<‹ïb9˚√ßˇ\0™∂4{ﬂ≈¢Àq;<zç∫nâ	 π=pyÈ¡Æ∑à¥Tî[%-lŒÊbP\r‰ú`sN≤Wâímã/ïÎÅÔOé⁄mgUÚ≠b‹Úπ⁄™1èÆûÍ∆÷«L∑[Y\Zﬁ˘C«r$CÜØCﬁ∑î‘]YOMfHB$`¡≤p=Ey>Tb◊…`π8/ÔDâ9I?vLzèjÎ4π¢ºº∂∏‘÷KV∂@ÒÆÔ1Ä Ç:=*e7Dìdæ÷f“I°I\r) ë¬år3»Á#öÌ‚Æïg™%•ﬂôí≈)»2dc\'∏?•g¬˜∫eÆ´·¯„/	>sK6É∑\0pEOc·\rKƒ∫¨QÎKn≤ﬂCÖU\\Fﬁ„Ç}{◊’\Z“¥∑cwJ≈=RÊOhWZ•∂å¬sµÁ∏W\n±îŒ\0¯Æ&√S‘‚ù”MÛY¡R—ØÃA‡å˙W•xÉO◊ºm˝èjÜÔKëáïÊeÓ$8ÌÍ+ç“mf≤’7D%¥π`$Ü>Hhœ\\gìQEr)E≠:Ÿ£∫Õ˝◊átD“u•”ÓÁ`∏∫î…¡?‹˛	Ê≥æ\'kñ˜Q\'á∆úc∫”§Sœ:‰tÓH?Ö`k˜+<∞Õˆôßàƒ ƒB0AÊ∞Ôoo5;hÓÆ/ŸÆ,dlÂGJ(R¥˘Ô∏Ô°Z-jhÏçî÷∂Ú¬“3\'d#≥◊èNïÅ Wπq)b9*3ì˛tò„∫tëº”û„¥ÌJÊ´∂ñ“›mc*ÀSê9«±ØmTn6bµùÃeè<‘ë©¨ ¶:l∆9Ó)^ÂWÚ§›…™E/ù¸„?{∞®„RˆËjÃÜPè)é3ç««æ*6%ñ¥ÀÿÌo!í{uπâ[-üuá•vñ⁄á|]©Ÿ«¢ﬁù:ˆDfxÓ»`≤œCÔ\\\\vé±ñExÀ;gÒ[∑VñpÿiPÿO¡S$Ã[Âõr§è¶8¨Ê–\'°´gß&°qg{ ≥ø∑›Ñ›≥/∫dV2«\Zw)eaÑÓ}˛ï°‚ﬂÌ;«x4Ù∑ﬁÜ4RONπ<Û‘◊>§úÙ≠(¸:ÉE„p≤LYªú‘ÖÆ∑ÓÄ√7•WâVLåÖ=ç]{®-æ“bgÉwñe⁄JdékGd4fœî\"±àÒúS éF ∆z‚¥≈÷Îu¥rDÂ«ıDô¨ùîd#é2;v¶ÅãÊ…òC0V˚¿∆òpA8ˆ¶ù≈≤‹‰Sé@ßZ7ÂPFOÌLbTÒÕ?~I∫SNQ«≠OQà≤AËi†î#Ø„N-Ç9‚â0@Áö†Âéi¡\0\0ÁüJdNπ⁄FMHpFsŒjÄSùºqäjH¿ìﬁúNxÌäh\0\ZHD´!cúê{UòÁì~XÓ&©ÅåÁ≠; åÁö[’Yby»Ï„$éiÒŒ!`T‰“≤üÔT¢G€è÷¥åÑ—∂˜$*ûƒdb´E®ß,O˜™k3,`dıáÃ9Œ>ïNbÂF‘˜…6vwÌTM√˘òg8Èüj†d(‡nÊÆ[Å4ª7\'°jâO∏˘ILåuŸÌV°~˙∏è<úsS¶ì)âò ¢59g>∏™w\ZÉ[⁄IIË{äÀ⁄_ao±õ®»\ZràŸE‡Uπ4ªÛñ$ìBÁÔz÷®÷÷ªx<rï\0öãÊÜ phÿ…p8\'ê*‘WÅãq√ıÁëÔX≈∞?ïOÛ≈=ÿ¨n≈0\0dñ«≠J“‰q«“≤£êÄz∑Ãps[\'bZ.¬ŒWqQÎ[:M¥∑åÂAÚ·O2O•cGn“»±Ô⁄ò,IÌä’”#ù‡ï≠&êcôÒÅÚÚˇ\0Z=£CQ.‹Íb∆÷ÚbM˜*wtÆ>µìin”úé«◊ˆ˜Z∂Á.ñπÚ®-∑◊µ∑£Ck˛j‹4êÉézT§¢ÆDò‰—n∑∆Z3\"–u≠∑∞±ä8f˚tò^C¡œ \Z≤\\@ﬁdGÜ@˜¨Á±gl\'$cä∆QïFõ%hkµÌóŸ≥9£ˆ¨„8$m9\\u™Õ\"Á\0å˙’#rÒ¶@ Áºä!Íj∫Ô?SRCG•W≥ºWxë¡\"¥!ü8¡5—pz\Zñ±4dPAkAQr1¿¨ÿöDQªÅZ0 é∏\rÿU\"KqFv8àÌU≠ŸOA»≠ph—¶;qZñ $9»$Ç®™‰’òF—ëS%†Ó[X∑6ﬂ&qéÙ‰çΩÅß€∆œ’\0ﬁ¶[Rb,H¿VI=JÙ#Cëçπ#ΩNQ_Ω‹Tx⁄›{T´Í85:µ∞zUÇ7Ù=j≥ÂN≈9I ú÷m_Rì∂ÖÑsﬂÈ·ÅËj®|‰¥™Y9Ój\\KR,é¥\ZÅÛìR)\'9©hièQÅQÃ0πÕH8ü2„ÄsﬁÖ∏=àásûqﬁö≤N:ˆßàÿ˚vÕIµ«\nzı•ÏEÆD§ÁûµaOÀäçÇKöïpELò£∏Â‰SpNi›)ΩjMªGs⁄òi¬Ç(%´çÁ9¶∫n9©@§≈;ä≈fè⁄öR≠öc(™R%¢∏è#öå€yáqûMYaäcKÖ#<U©>Ç3.lÇÜÿA\0åûıQZNÂ˛låv≠9ÿò\\Ø›ŒH™ÖŒ“ä™A`9aﬁ∂WîlƒSyw¥åd∆¡∏»<Ù«„Ys‹ºÚ*∞\n£®å˙÷âµ olm.ÎY◊¥s79ÈÈZAYJÎP:3‰söUê®\0Uàór\r;ConÍNEXd˘j‚(Êë‚ Á÷Ä1¶á{qL[}üJ‘hÄœ]” “ü2·MQ*>lˆÈZ7	û=+6W%vˆã≥•j+ßj‹gçrcw˘8´™Oqw<≤Jq+ÜeŒßÂX«ëÈNIvÎY∫1rÊkR˘⁄V=6-J)≠û[yciQAÚòÄ=˛µSPí€[E≤çën≥ø\r∆«5¬G®òí@>Ûg–V¶ã©¥≥I‰¿_PÏà√sÇ«‹-p‘√˚$Êça>m\n:ﬁá6ôöi¢%õhà7Ã:ö√hWi˘æs“ΩO\\—€Z“ñ=‡Ií	Qñlq¯uØ.∏Ü}>˜ ùJK´ïXzŒ¢≥zë8Y‹ﬂO\"∆ﬂ%\ZHí-“¿‰1Lé3˛…8˙fµt]Q.uõ8w€¡müô‰;úg”˙◊˜Ûœs#&YÚØÅ˜≥€†ˆ◊Wû0ñHÕÆ®¡0∏P„ü•sW√Ø¥Õ©6÷áI‚ΩBHò‹FD”†S\"\0UpGØØ¬jwK®YBËõJÖçO˜»˛,~Üü´œw©]M3L^›.ë–Á“´œ8±≤NëŒ9pŒ0cœ?)÷≤•õ’ó\'≠å´Á\"8Æ•›ìgß\rd«‡“F‹;˝=ÎY≠Dì√oí·Çn±„?J´©[Ωï”€ê\'\rÉ¡˜Æ¯…lb”‹ÃöFlncÅÚé0qF@˚§t‡”\'<ózzT[àÉ–÷»ñJ[îæo8¸*\0HªQüz¢KÀ b6åUœµ§ñ‰ ≠Ö Á˙ö…S«nöRFp3¯U!2xÚOZ∑NO\\u®≠≠§ñdÜæG‡/ΩjŸÈ≤L”´‡}ôH	∆0z{’_†äë SÊ\0q÷ß∏’ÆÆëí{óí7`“.~Ò>ıByïfc„\'Â∆qPC\"ô‘H~B~céÇÜËÃ˙⁄Mì0ô°dnp‡éG¶Fk0V8n3Z÷3XH≈Åä´\"0ﬂºÁüLsäÃ∫a5Ù“\r∏f˛ÅY¶Ôbû≈õr≤2‰Ì+V“0≤ç„ß_j»ãpk†–\'W‘⁄Aπ%O≈9Àñ-é*ÏµrLtÇ®»˜™ëKæEA‘◊a.âÇxƒ±Ì⁄LäŸ]£<˛√jIfÎ,\'|@¸Ã≠ú•aFºg∞ÂF)§¿„##ΩIq;ÈGÌP∫Üf¿]˘8˜ãk≠Å∆vAéπ˛¥í]§ñÕ3∑Ã›∏ÌÎöSN„ZliÀ´M¶MÏ$BDôœÃßúW=nÏŒÃ«˜)˜»ÌUÖ‡ä1d⁄y+åÉû’Ê©ûÒ∆6ƒ„$®ÓœJÕ.]\"Ç˜‹é[ıME¶Ç, n˛≠Hl\'◊u´{6âX ûb™™…˙◊0Ú3ÕøÅú‰Ù≠ç>w7÷.ì»°Wb≤í§¸éúqQU;]â5Ì9„˚>ú˜vÌˆUbdQÎÿ˚Ò“πëˆfú∆w∆U’rGLÁıÆüX∂üV’£¥¥âíŸ≥,AàŒ…$ı=?ZÊñ¬HnÂKòeDN\\Åå\nT%hŸΩG%ÆáI°Ëö}ˆö∆K©D—»,y‹´é^=´CN“ÆaéÓHµ	–ÉΩ¢∏N9˘∑…ˆ®º3z~õ%˝≈√ƒÒ ¡˝¸„?„I}©>°\'ïk;™˛Òëÿg‹„˙WG)M§Ù4OC;S÷Æ‰êZ≈{\"∆¨	Vl\rÿÎ˙W<\'igi$˘ŸéXûın˙[ÅΩâ‹Ö√í£gÈ“≠.üß»!û;êü*â#$zÌÇç8ôjÿ∫E¸ñ&m±äT!éqê:¬ªˇ\0j∂_g{”}m˘y6¡#„\nÿ‰gæqè∆∏π,-≠eV!⁄“D!LÑå˙∞¡˜‘E¢ËóP⁄Ë⁄ô	IêÄXˆéº˙◊*Pú}Matı=“K+KKôÑ—áëåå«ŒjÊıI5-BÊ\nOhe/€r®ÿ·súÅX3xXµ’ñ°(∑í_(G)»e∆FW·/”¥Ë àZïlá£Ô£ÁFúc¨%Sk‹•§›ˇ\0fI®Gs/ÔÊõf]‹?ÄØ:º±ñ“P≤F qëå‡◊£€Îr‹Ô/Ù◊∂C&œ∂§Eì!≥ÎöÉ‚≠£ÍZe§\Zk#õrq…*s≈z8jíçE•Óc8Ëy“qå˛T÷Z~BéO4∆r‹^⁄9…-ŸñdŸ√Ú˝kj]^Ì‡XÚÜ‰ûI>π¨{Râ2ô€œJõq‰1Ír{‘N*NÏ±1In•óÃ9ÂõØ„NÜ(∑Öê8¡˘¡ü•?N1≠‚4ﬂ4Hw2n∆·Ks®Ì6û!œôîÁ8Ük6›Ï4,»£OïÑG∏]ÃyÁ∞¨ø6eâ∂´Û‹|¢∑<¶ﬁˇ\0⁄b_%¿eé/∫	ËOµ&©‰=™€Y¬—òÚf<m#çß9˜Ê≤S≥±mha[Ÿº “À*éqÔ“µ$—Z%”Ÿ\";Á„”wo†ÌÕhÈñÈe>ÈŸ∆äÍI<pF;‰\Z‹πöçµ¬$Œ”Gå(8W\\‰V51-KMá\\‚c—nÔ.dä›pÿ\nzÛV¨ÏµÌñ;	]òQÂ‰ï\r‘cØ<f∂ı»¥»-.,·é9¿(Œô€ ¿ÁÎÿ’{]r˙k˚Wâ∂›<FYpÅ9‰cÒÊ¥ÖYK^ÇqFF•a®Ÿê9—1ÜÌ€ˇ\0≠P›ﬁ›ﬂ€¬&B#Ä©ÅüsÎ]mÏw≤€‹ŸÀ~nQœ\rQ∞y>¯•s0js-Ñ∂#\")p_\0¯9≠©…Ω»íÏf\'æx5oO‘&±∏2#0GFç¿ÓßØZÜh’Kw‰böFOA[&KDí3∂—¡Ù≠}[Ω’îwí¥pDr≤uÿOZœé7 ˚T˛Q!B)$úw4r‹w;¥z^±k\rÛ¡!^PxîÂ‰ÄO´z◊õ»Uí¬b,UwqÈZwO!âR‚	$π \0ŒI!G@?\n öy|∂∂›àKn)éÜ¢Q≥çWhÅëkcu®˜G<ÛJH¿\0sÎMUÀcï,aR¶}*DÂ…ıß`ﬁ¢ûE<d\Zñ;1Ï)πqö{Äß ‘Ô≥ëò„Æ;Ràô≤hså‡w©§åÂyV$Jˆ¶¥%g©§Ï∂Óª¡ìv=kii◊S¥wógèÀfV€ùÃ9ÌüZƒT*p95m`ê+oê;z‘›-D—Ë˛≥—g÷n∑ƒ5QÁa∑1·á>µË\ZÊße·´8•”ÑqÑ6*¸∏ÎüØJÕ%ÔRÍ8‡˚Ã@Ô]°˛•sˆu‘ÓæÕnÌ∞4çë«8Á’ßTróQ∆˝õU‘[_—Ñ¨fê8√¨,…∑úıË˙ı‚∫¨Oy©‹µΩ©µÇ6%# úz˜ØG÷ÙkﬂÈíºZ†ñmíBá+œØÓÆÔ‹›M+Ï( Áh˝+ß¬-!ªò,Xñ¿&¢#iÈú’Ù∑C\"‰çç…fÈÙ´2Y€Í67w∂™c∏äAãd∆›ò‰éı‘∂d+¿c\0ÒF›≠é’IÜ„ı•Ggì$–Z&h\'ÉÕ39nùiŸ«ÈMaû})nNÛËi\n·è°ß09ÊÜ\0ÉåSç«=j›çÀ[Ã\n±Èå‘¢©„9°\\£ËhÎ>Ò∫xfÓ€GíhÁ–ﬁa1ï‚‹Ë˚øÅ÷xöÎE≥óÕ—n‡äMJëå¨cTR8a”\'ûxXù¶vÁ`„ÈVôˇ\0µ.-a{ïÄ¥ºÃv Jj£¯LÏì∏∑—]Õ\"•iiÚùòëÄzYSQéwgû+©”Ó·‘¨óJú4ì∆X[≤˝¡Î«øŒ]⁄Àôñ\"´”8„\"•…^≈ÑØ≥`cåÁ¢D◊å®Õê/åíz†—êAÏx≠ùﬂ7—‹I ($3gOzôΩ.\r¨ï≤µ{IV	Aƒäü:ëÈü~µâ{\Z¡u\"∆ß $î-◊´Æ◊µ¯5]“’ùºÎlÑP†\"åÛÓIÆ6ÂƒäºíÀJΩ¿ØúèqJ±å\ZE‰„ı©70;kVr®ÿsÇ1L(!F=Ë2‡`b£fÍ•a‹Ÿ»®$ æ@≈é‹vÑÊò$%°¶û¥„¿¶P‹d“Ù§•˜=®Ñ‚ÅN8\"öGÁ@[ \"ôYÅ*:‚ΩÀ¡?.ı$ñ‚Ó˛h£ö5f-fpFg∑•x8>µÌü˛(ﬂ√†C¢¨jæä_ìÃ=b\'ëÈäj\\∫ë(∂z≈ÖÜ≥£C$6◊ˆóƒ¬)T∆¿c\0	¿Jé‹È¶“◊T”ìÌ∂∆1N¨øØ=;Vs¯ìt¢Û˚\ZÊÊ‰Eπ⁄›ÀF02«æ{S¥Cg‚˚â^˙ŸIç√§dcŒ+e8…^J‰Y≠”i∫ÌçÏç\r¥s)Rq˚≥Ç\\≈3]ÒNü·¯–›âã…¬Gdñ>’•\rï≠ågÏGÅú\"‚∏+Îπı)o5h-Ÿ„ÜO%¢|®?ågæs“ä4ïF€ŸRqG5¨xü[ºöÊˆ◊Kéç∂§wmíFqçΩ˘¸´Ãn[RºÜ‚ﬁ{0Ûâº„! c’Ë˛<ûﬁÚ!u•ÈkÀ*<œﬁn<Á`ÈT<=©È∫%û≠&∞ÜÂˆ•º1Ã0Ây\'è≠qbÂ:z”Wl∏ZKSñ’\"‹∫}£¡eqcw	S\"Õa1»»Û?çz?Ö5\r\\˚~èmk,h“^F*¢&‡cÒÆƒ÷ÎyßC©Zì‰™o\'=GjÔ<7“i¨≠nÂº0yÂÓ¨‰*“´sÜ8Æ(´ÍÀ—/á4â“Óﬁt÷xy,¸ÿôœW‚7áN∑¶Oëô– é5ŒN9¸*&7â¥πdìL÷cû6\\Ω:r£≠6€^ÒGá,]oÙ7ö-§≠ƒ-ºÓ=3úq]∏:yπ≠ø»ŒR–˘æ˛∆k;áIbt Ùaäßék©Òûß©jöƒ”ﬂ¬bvbvl€è¬πs‘‚ª±4‘%dw@F)ªXm„ÈHƒ„5kû√=¿˜\ZéùìÈ”-‚¬∆Cleÿ:r}s^é⁄î:ˆìçQçôaâ!Äñ$˜Ì¯WûÿÑﬂã\'ï-ù-ÁBcÜ\'Ü3]ﬁá∂vπ’o¢&P3‘ {’Òx©^\\ˇ\0âpπ≥m¢X&ú-l’`LÖà«Ú∑#p9ı¡≠Yß≥ëbó2By\r–ê?ïy‡ÒJ.•x.›‚±¯ıyF∆20}çt6ìÈ∑0˝íkÈû9˘∑Àlè\\„#=´?g9¥Zïå˚°´€ÿ3â»P|ﬂ*R2ÌêN“Ωπ‚±[ƒM™»øfíVG342∏aÄ∏8˜ïË\Z|IŸnÌ£ÚÁLF˚Jª~8Ì\\óç|\'\ZÑZÖ®X P∆%˘ó∂xÁßÈV°À>ZÅ\'Ãq”È0Íw≥\\ö“”Q°¶á‰-úØ=ø\nÛüË≥hZ¨÷SnVC¿n•OC¯◊∏x¢¿‹¯U¢I»”Ï‰ëyb∏˛Ó{g÷º+Q∏π’5%ÉŒk¢çÂDÂ~f\\‡W©ñ‘îÓÔ¢ËLíπ’|+“cæÒ\n\\LB¨|©ìÑ-ËMzÿ–Ï≠ê‹hˆ÷◊Hà«ÕEœ_îåd`˜Ì\\Nù‡çF«@∂KÂ3\\ ô_+µπ∆G°Õv3x{ƒ6⁄\\PÈ˜ñ—(bÕÂf7…Í∏ü•cã¨ßUKõKíÆı8ﬂ¯OS–ØÕÌÑ·≠5 —H—Ä√s&\0u∆+\n˚√vI·‘ºá_àNÑ`»U2O◊Î]ﬂçonoˆ\"â≠\"_∂+mpQÄ]¿u»‰éı≈›]i∂zQn∑‘!,R‹∏1\\A∏d±ƒ:◊L+7¢Ÿöû\0÷Nç$/>ÆêXº§1R•∫gÊ†8≈uˇ\0KøÒ5ﬁ•¢ﬁ†1F∑JÖ∞gÊÍ3ÈÔ^f•ﬁFW\'bÓÎäÓ|i¶‹_IurKà„\r≥\'|˝”ıÙö-&˘Öv›èUìRZìË∑óÛƒ%ãœ∂πÑÍ¿ÜBHÈìˇ\0◊ÆS≈~∏‘≠Ö–sg{•¬¬5‹?{<m°‰Új[{õâ?”Ì¨a≤îà\"∫lmåÃ°qúgÄ~ÇØË⁄ﬂˆÊ•uiZ⁄\\nK;y•\\&G\'ø≈\Z≥¶ÙÈπWOs…uΩ:kHm÷“Í‚w∫‰çìn;é{ú\ZÊÁ{®‡ñ\rå¿ù«Ω}7´h—Õ·Y¥˝RÓÕ…[ó*06∏«qû{q^)‚{;õ/§∑ˆ[“=™“7)\"„ÇË1äı∞ÿòT|¢k°œÿË{.gÇ˝⁄⁄t@—¨à~b{:qYr¶Ÿ$	¡ Û⁄∫oy1ûﬁ‰»$Be}Âπ…¿ÁëäÊí#ÂŒ~µËE›jKEìpË:äê[#>wÏi±JP⁄<Os…\0ê1ëÌYIΩàwî-∆aOJb|í1aíSNVaå˙Sô7e∞\nW{\nÌñÌn˛Õ,NQ]Å⁄›\rm>Æ∫⁄ïπeµ˚8%$LÂÜ>Ó?*ÂLòpsÎR%‘ä6∂]7n*O˙’˚2„°Ω™j∂/ßZ¡efmÁX¿ñ`Hg8ÁΩby´(	 zÙ4±Œ&ê	IÙ&Ö∂yÆ\nƒÖæl9Õkr†∏Ÿb!«À¿ElZ¶•ñÕ\0íKyIVFV«∑µXáM∑æ“$õÕdø∂ŒËŸ~Y∂ﬂˆ™}>‡¡£]¨%“Rv»H?^ı3ö{±K@—∂/í\0ßsm∑r}™∑âÏl,ıâlÙÈ‰û(~Ww ¸˝¿«P*kπ•”1¡∫»-Ê)*€HÈ¸Î∑dúÚNM8)9s_BzêÜ±…÷t\'*hõû˘®I«Q»≠ä±*ézäB~Qú`öE~:SX—a\n«ìﬁÄKcäX◊?çI9ŒAÌIÅ[$bú∑5+ñëπÁä|pá†Ïh∏ 8‰ıÈN*W®Á÷úÒ≤Hp÷ì.GN3ﬁÄ@<éÙ∆vi…&©\'©ß<ÖïT`Äx8§djÃ‹üjú£üqS§q∆π€ùÀ˘Uybxÿ.O=ÛKòùƒÿ¯È≈&ÓS+ÑV…\n®,	ˆÙ§§\r§Ü#$\Zí9r«)‡S$yÇzR†/å`\0z‘ΩJ–÷∂‘.û_≥âUUÄi‚±ı+Å-…UÂSÄ}jr‚—$ëÉ∞+ı≤Ûûi∆)0åPΩ¿)ƒû«äNﬁÙç ı≠$Á=®$ì◊ä` é\r;;GΩ149W\'ÈRE√gµ1H‚•T‡SBe®ü≠	R¨»áÃ8´äÌ<÷âà◊é.Ã•Âq&ıd˛#Z∑v˙fü®Ö3	.SmæO;y÷fù#GØ pyry∏˙\Z†◊fy2ƒútˆ¶ï∆›ãQ)≥h…Ôﬁ∂lbû†Ø g≠b[M$Ráå∆‚∫÷[ãh•Ú¬\r≈r3ı≠43≥f‘∆xÄv\'±°ÊôTÅê≠∆qÄi˙mΩºÑÄíƒm\'±≠£€ ´Üp29‰b©T[XÜém⁄Qp˘Tz\nv≈w‰w8≠S \nÒ®#Ç}jªÏåÄ§tı≠,ôGÂÁ¬ê™®=+N çYŒÊcåc∑j«,È\"î\"R@$(Õh-Ùí√)∏Äóê.\\Ìÿ∑zWka≥L‹o@á˘T–üúm<÷\r¥Ó§§á÷¥°∫X¿+TÙ ﬁ∑î´ıÊµ ò‰W;kuÊÛ∑Îä÷µêdsT‹mªÎZÏòÿ‡‡ˇ\0:Œ∑eeÍ3W•´†L“∑î epjÃ,Ô Ó˙\ZÕB@n)|Ω§0&πß‚˚ñ&çwd”ê _õ&¶Ú√DÎ÷ò÷<+m,i #—ñê)∞çÔ…‚¶âHR¨:”£âcŒ(Ê∂ÅÀ}FîA¶Àr:TÂI$Ù™ÚOØzI‹OBD‹«KÇ≤sölJ¡∫Rî˘éhÍ>Ñígi\"°^æ¥Ô3o V£\'∞°!Iñg4n≈Fπ≠(•`Ê\rﬂZp£¢Ü$-.):ë¢BbäZ:RÑ≈!•4“qM›ÑÕ\rÇ=)†í‘1‡É÷ùàæÑMûsPd’¨~¢£*EiK3Æ0Ä9$`˙Tkn2yÕ]íÛå‚à‚!?ïlße†¨Q˚Öf$aG~ıBÍ\rÚ≥I\'ÆkjE Œ*õ√ª<U∆]ƒa=≤´g4™Í\\\ZΩ41\0g5U°%á+Añ°‰UÇÉg5^b$í^zR)ó5M∆z\nôÊ‹qŒ)áfÄ3Óp5ï2N+Zw\nH¨Ÿ€$‡–	‹‘Lú\ZöOΩÎUJ¸«⁄òåkB«ƒw÷\në¬·bR8\n2=p}H™X»ÕIe´\\ëv\\G∞Ì2Yª\n ¢\\∫¢‡›Ù;®f÷ÓÙ∂á9êl6◊hAr¨√®çq\Z˝Ü∏ìæ°©¬ﬂ;Ï2ÒÇGßNïË∫n£oÜÜd[Ç>FFJÎèŒ±u3P÷o%C´[Ωêí9Ñrèªë¿#∑”ﬁºU7JØ2ÿËúTëÉ‡€H.n˛–dïnUˆ†AÚÖ∆X±#ÁµµÆﬁh>,í‡•ª4∞ÄÊ˘e‡·ΩéyÆÍﬁ]#Pé˜M∑hV3 €ÃªG#≈xéß\Z«w2BÏÒ´≤°aÇW<UQX¨Â/∏mÚA$hiWËÚK»¶Yrx8ËI9ı´¨mÓßh•uà[∆#!WÔÉœ\\◊\Z·Ÿ∞†ñÙÆ´¿˜ñÁTy.eHÊVRõ‹\r√°PRsZbÈ®≈‘]	¶ÓÏÕ¥¡®iÕvÚ2´.ÈY0Ç¿˜¿ÁäÁı[iVeä9D◊Æ…Ø+Éˇ\0ÍÆˇ\0ƒ	{¢\"¥Fx≠Æ[oŸ°L1ËÙ\0Ù¿ıÆv‚)^ŒÍ˛ˆ)ÏÆ‰ôN∆à¶Wn0x‰q^uLØÃˆ6pV8ªªg∑ï =‘19Á–˙UIc√/›ëúå÷ΩÏ&y]Ãáhm™Ô˜„⁄´≤ÄaA»˘≥‘WØ\nóH¡¢ñFd	µ+ÎL+ÉÌÎV>NA(ß$f£ì8ÆÑf¡ÅÈåé*Â¥˛Icú‚´&I˙ÙnﬂOûy¸≠•nÔúcèZnIn+\\û;¶˚OòØµÀg$◊T54≤–BHÒîŸÚ2·Ä…!ÅÔ€øJ‰ç≠≈ÑÜPcgå)˜∫˚~y©byÆä¶C8BpÁ±˛É•Cö›\r.ÑwfÚÓ‚ÍF√ Â˛QÄI5l•∆Â8ˆÎS⁄Y°ªÇ;¿—ƒ‡æzcè√ﬁ∫-OH”\"πâëëtdí1(⁄[≤Éÿﬁ≠TMÿ-dGogßÆù”4fEVfà©V\'ß\'Ú™\ZÑp[ﬂ»ê!‡®cí2*}\Ze∑ûÓFñ%1F]l0ˆyÔÉU5k®\'æg∂∫⁄1ëÇ}jï˘âz¢KB≤Œ®≈ÜÓõFI=Öt\Zf™öeºÚ…4Ò |êÿ∆Ooa÷π&1ë œÀ»¡¡£Ã∫ï¬©å.‚2r@«N∆±Øeg±pmu‰⁄ÜØ¶O™⁄]%•∞èÕxTíCF‹˜œ&∏¶æº∂öD ≥¥Ç2+“¨t{∏Ù®b∑6˜K\Zêa,yÁ9«qíxÆoV–.ı+∂û“≈îﬁp\0QéŸÆz •…°ROvrSH¬i`dvláqäåJ© èòå◊o.óo™xj÷DΩ0à…I≠ùr…1?7úqëö·oÙ…¨erÈ$h	àÎäÈìW±¢µÏä1É»äŒyps≈JŒƒmÌ◊öÆ‡ˆ§ê\ri	Ænhæ ]+>tQ ™ﬁbqÛ∆:˙V÷\'\0})È\Z∞pÏÖ»œsûï3Çí≥\Z—Ën…´˘˛|ÒÜ_0»$…%≥¿QË1öÃª’%óÃHÊ@´\Z≤∑£ΩUé\"6≤æ„∏˜™≥+¨≠∏‰ìík8“äz\r…ó\"‘^(äÄ±9Í=™Óó´^ÿ‹8ÖíC0ÿcqêŸ¨0≈[ÅÕMÊ†Úÿ©2ìÉ⁄™T’∂\Zlﬂ∏∂hnØW€>‹îé=»A##ûïm ‹% [«-∫\r≥\n1Ó:éïÃ4Ú¢ôy!éﬁµÙõÑ‹íJÁc6◊@¸û:‚≤ú\Zà”=‚∆˘¥´wmâoqµ£X°Vÿ¨vëì€üÂ\\ﬁ∞5m%.^ﬁH’˜õí§dc·]Üü-Ω∆ë/ÿ˛—*€€o1Ì∆‹Áˆ‡\Z‰µ¡I.Ænç≈≈ nDVˇ\0PO˜Ω∫äÚËI∫é,ﬁ_\r—”¯vÊyÏ≠ƒbµâî±i99„ß‚MkÎ:úzyÇ;f`ç–S”>¸~u‰z‹⁄\\—é96›Ü=O÷µ/|c%ÏÇr.ƒô	˘èn}±US7RÎbU]∫ﬂR’¥u∂“-º´ê¿‰‰åÙ5 ]«i®ŸÍw-pOÇ7˘[ë∆?: ‘ºO=¸B™©é[´9ŒrMf-√:É÷ª0¯IGW£\"Uo¢(∆Nri§|‘Ù0„ﬁΩDdƒ^LåõÔÍj›ø*T8ÕPã÷¥ú3Ö~u4÷–àêÒŒz.8#µgâ⁄<êy∆*Ÿñ{“n%fBÓ*HÕR˚îéœAÇ’lö{ã•Ç›êB „ñ©«r*†—-5=}V D∂éV+\Z± ¸∏«Á÷±ØÆ»iÖëB˘å)ı∆G≠M†Î&ﬁ{ôx£+ JÅ∑:\0kœî*YŒ,ËR[3wS“Æ5\0ëªàıHÄçîÆ ‰`˛\'≠>Á¬öááÏ÷‚KÄª—óÅ›”Ù5Œ]¯óÌäŒ…,T„søÖOq‚;õ´$Ü‚e€m\Z¨Yl∑–zäÖJΩí(â©Ez-R,y∂P6˜ Ìõ®ı≈e\\…\"On%#Rä©œıµ‚/¥ãk}™ó?“Q–Z ‘un DçP„\0>e=Î™äöVhŒV5\'k≥s\Z¬Xeî`ï¶*¨∫ÉÕèb·@U¬Ä@™@q◊&îΩu∆öFW∏2n`&≠Z¢y·$m™{„5!f…‚¨«””$˜Ù≠m†ã±%¥NÌÀoÜU*v‰„Ø\"ØxrÎM”ı{Kõ«FÇ9NË§SÉÚˇ\0çd»J∆@cÙÕ%ºu\'À‹¿ı¸+KY\\î∫’oóTæÛb\rk¸íy\nI…€Ë=´ü‚;∂C\0H√ÉÔ[o±¿—ôF7yä ûïùk‹ÃqëŒHË+);îïàÁH\\C±HL>“~cìœ±®!àô	<9⁄µu;h”Qae]U˜qû›)llíÓÚYHÖY∂ó?√ì‘÷vπw–ßshˆeL1Æx#\"´8Ï;◊CÆX,\Zúñˇ\0mKÖÉ%â~S”ê+6‚¡‚Ü6 àÿ¨GZñ‘t`µFQ8‚ëõpŸ€ﬁ•xˆ±»ı®¸º|ƒıár‘VÎ=’ºV»Y•¬Ï-—èkN„G≥Ü≈3$ã|≤Iä~ÁÀ”˘Ê∞cgHHÈ]JÍÍ6“%’´µ‘àæLÇL\0Gﬁl;\nâhÖc⁄¬Y≠⁄hà¬∑‹œœ”Æ=*Kdä;»“Ìôb˚≤å`˝*≈Ω“Ω˙õócGöU∞p8ÎTı6\r®K*9tg,∂‚Aı=Î>V–\\Í•Xt©m/-◊tPó¿V\'®‡ıÆÜ˚≈ö|˚VÕŒ—~Ù∫°äÅ¿ıœzÛò5)\ZﬁHÂvt#ú„+.{óe Á9Í\re\Z*˙éÁ¢iWêO©M6≠r“ÕÇãÄ≠«W¨›Zã¶X‚ÚïXÜU9\rÕV[ïwfr“\"©4Os)˘˙ƒû’§)Ú…∞Fˇ\0Ü·∂÷n≤ÖõIup•`(ÿ√ıˇ\0*ÏÙØÜ◊z6°$ö√∂Wdçmw4õ\0ì€ì˘W#‡ËÜπ≈œù–!ö5ãâR#–ÆkROà˜≤5ÂòA4r›ºÒK À)n2}0Æ®Ú®∂…wæá+‚ÔÀ·˝Mcê.tƒO]ß±˜+xjıœâ:Üù´x>≈¶ºÛµ+f]å\"∆√ÊR›ˆ‚ºî`\Z¬ú˘’Õâsë∏T1n}jx€*i\nÅÉéıhb0 -®°ß∑*1P1‰Û@‡6ﬂZåÆJy%∞{˙R‹}Ë<\nÌÑŒ3”û’,$√,å„∏®m•Å9>ß“∫øxVj;¢◊gskVìÖñA÷<˙„çJä\nÏï±4ﬂ<\Z‘‰ÇqπX≤∆x#∞˙S¸m‚§Ò•ãçUOòä∏RIÌÌ¿¨õo±;§‡âTïtn\"≥ÿÇ≈πÁ¶j£Æ°k•ëúÆ[cµGƒ±2£jûï{L–ØuO(¡¥M çùG\0’Î›+9%∂kƒ2∆Ÿ\0)‰◊>îﬂ†+\\ƒñ6ñBIÈŒESv!∞9”]È€€â%FVë\"¢Ó»ÌútÆm’˜ûGµwÿz\rW cÅÈä9\0s…¶‡Á˘“û¶¥BhS√bò	9•8)π¡È@!›1M∆Zp‰PFh˘M/U•«„I˜z–\ZEÉ≈Èq∏{”\0<`ˆ•4ôÌ@iLqû’{H‘Ê“5[k¯Ô!}ÿœﬁ>ƒd~5G8‚éî=CcÍˇ\0kæ‘Ù´…<;ÊC\n*Õpò G#WûΩ1«•q◊ü?·\n◊oÿ`∫YîvI˛®H¸OjÚ_	¯≤Û√ìOs»∂7aVÊ4Í‡z›jÊ©yi≠ë<ñc∏≤c¢É∆?\nﬁú„\Zm3)Eπ⁄ˇ\0∆Í‰¨-î$`§#ØØ&π)5ª◊ç—/n6√2§Ñdéôı¨©[3ùπ	û§Uâ\0É+Ä\0ÉÉı¨•Z]4)E¥çP∞‘[W2ŒŒ§	9ÀïÎﬁ\rï∑à¥≠gUôﬁ˙y1¿C˘uŒk»¨¥…OòQ¢Ta∫B\0åÜ«¶;◊u·-wV–£‹M›÷ïº¨x$å:˙êMa,G,îá…uc∞≥ˆë·…>◊oÊ}ázLbìnÁ√¬¥º7Æ€&ç¶ÿX\\»!Ç&™°p¨	¿ıÁ≠axæ⁄˛}Ocp-RÊ!q5ºUÀ‡„Æ*?Ë⁄å:5åñ7ê∑\0í™∞FÓsû¸b∞Ñ£Ì\\ÓıË9_ñ«∞[jñ∑∞®$£HÚ€Üß‹K\rµò0€ÎüAY∫≠úÊ’Æ≠\"HÆë6∆°sëÓGµA°ÍqÎ7SAqGä4\"3Qœ^æÜΩ5ÀÃ∂1mÏqﬁ\'¯lﬁ äkóCoÑfé5`[lì‘bæ|’tÊ”Æûe8Ø≤oaöRŒh·C»íıÛó≈=\"“œVi≠ …í¡óNzWl%ıämOu∞óª+`›*21S0¡ ‘l8Ø5´3s“a‘u”{pE&BÆR0cå„\0ÙÆ„K’nõ+%≈£G[eÇIÄ{Í?:Åuç>MmÚ•}ë…Vt‡„¸‘:7ÜêH-Ô¥≥5¨˘˚;C:©QûC¯zW…bZö˚ç\\RVE]Z€Yøøµ≥ø{hc¡hEOúZz%€KG´˘≥€é#x˜Ì»#”Ø4œËCJ–$∞µ∑öe›\Z‰KÊ„ûø√äÂ</âf∏CoÊ√ëM!*2}N9£Rü4í≠°Í◊∫Ê£·òmØ/jp(eûH¿›ÂûÑtˇ\0\"π\rs≈+„=)„∑û+3lé˚ÃÑHÎŸÔö⁄”ı‰ñSΩm3Ωöòëíƒƒ{˜ﬂ•q:◊Ñ€VÜ}WMµhGò¡∂êè\\(Îü“µ—ªO¶ÃÜeÎ&DÕº∑íHeÕâé\n?LÒ‘}kS‡ﬁÅi™]jó è™eT‰ù«∏’Êwµäûq^¡≠•\Z<Èz<çvˇ\0,◊o6#_CÎ≈u◊ä°áó/RYÍ˜:ÖîvÔŸäXX‰Ô;p;˙qYóó;aé‚…•XÂ$cn‚ΩÛÙ5ù|”iñL.ı6∏3qúgûx˛µWHΩ∫∂“Æ†∫\"–\\π»†˘nÅ<Äz◊ã>Enå’Y-N∆ßQÉ_íÓ-ImL√;∂61ë‘W™¿ÏÈ›[À$J6»ááˇ\0>kΩÒˆ´ß>ôΩ¨rè6$!]2ª«\\w¸çy•¿.ÏÍòE‰ÅŒ ˆ∞≤rè5¨Dç+´;K[ã&Çè¥\0‰—A[?eΩ≥”ﬁﬁi‚ûƒ*N≤DA⁄9\0ÁÔ\\∆ü{¢Qx^X„ \\WßOi·∏º8\'ø+,sÑ˝˙è.T» ΩG8Í\râ®Iyô\\MV˚Åæó≠9’Q¸≥o\'+ cÚÑ»<d‰÷ñâmªÜO›>ùz“„~ú‰±=Å∆1^Ot∂Vój÷rÃ´…rõH€h⁄Ù⁄Â‘¨4Å|Îó∫7›@2ƒ±Á=Û\\’∞ˆ\\—ÎπIùÁà<oa°j¡æ;À+˚fÛ^5Œ{Î◊®\"º¬ÛƒÒ‹xuÙôŸÁ	!km‡fy˘ªÇ;\ZÊu[Ñí˛G∑»Ä91†\'‰ïpœy\'óBV∆pJË£Öåd6…Ô•é}8+ô√·ïÜræ†’98¢éXÂérò‰cŒêmD ´œFÈäí‚Í›-¨;Y„R«9`{z\nÙa+Ó	Ù)9wT`Àû\ZöwÇN*¡6ÚDÃñm‹cÓ„Œ¢ÿ“G˜I#©™îu–oQæfﬁ5)õ‰\0giËi©nÚ+B‰u◊¥:≥*«Çccü∆íÇadF¿1,3öLÂqûΩ>µkpÚ6‡dúû:UWBú‡˚b¥ı,GÖ<–F:uÊµÙõÇ(‡]≤£˘ç#s–t«•cDYê“∑m≠ÆÙÎó±ù<âN<¡!Í»˝(ñÉÿı=&˛ﬁkC*Ëp©é5∏ô‘`ÌÀ‰\ZÛ€ªœÌRÍﬂL¥ë£ùŸÅ·K†Áë”é∆ØÈ˙¸∞€‹Èˆ”´A<&-≤ˆÌ˙◊;Æ\\,w&9|\rŒ≠ê£\0b∏ÈS|Õ\r»´®^∂°rgrƒ\0ê£Ä3ÌTYÄÌÕ*…ñÁ†ÈL/ÜÈıÆ¯∆ ¿∆˘`Û€∏®§áw›Í:”öNIèJF$èLS\rH1ÅÉ÷ö<˜©$ˆ®@Á5@NÑﬂ‘°àfUÈûhQÖf4·#n+˜Üj@ù*ªW=˙T≠ç1¡lëÅO∑Fà§Å7FrÕ\'ÃJÆ<sHLç\\±À∞ 3IÖVV\'=≈8∆˚pÀüjlhœ.q∆8¶!ìƒÄ9¡Ê°pc\0cì…ÕkQ&ı™ìZÿÇ	Sﬁã;é	ñ¿8ÊúO±íÉúû\rU{v¡`3ÄEIR∂}™yF»Hi…bŸ÷/7\"D;p:ˆ®§\r»ˇ\0Núäc\"erµ&¥∞ÜÄH ìëR€Ø»»˙R`ﬂt˚å˜¶»»ë3√c\0Q¶¿Cy.˘äåmµBO ‘òœ49´Fõ÷Ç1÷îdı¸M3Õq†˜=)¿ÇI§+«=)T\Zbø1ÁÄ\rYV∆3U◊≠H2„4–Ç°œZ`ê‡ÚxÈQ3i:z”∏ã9P√˚√ölOœSP®\rê[q÷ûÉh\'ö§ƒŒ√√ñ…u—0ªúú|†Ú?2+£’/≠ÖÑñ—}˝˝ÎœÙ˝LY1vP¸t≠ÀΩWÌ”§àpç´È≈4ı˝€#†µ∏p7;Ç1åf¥Ìnq’qıÆFﬁÎ$≥qﬁµ!æH·‹«ßßj’8ò4Õã´•F,@¨F∏S3ú\Z≠w®â\0=3ÈTd∫p:\rjöB7-/-Öc∆HÕZK÷ûDéK!˘Esp›>£÷ëæ–≤,íªé)sƒ|¨€ûË4£\'$TøkuAè÷≥¢åÕe\\ïÎÌV¬2q(*Gb*‚…f∂óvE¿Wcì˘WY¶n’∆⁄@<’lìöÈ Éû*”%Ën€NT„=+Z)√\0;◊/Ï3ÉZ6SH‡úd(…#µ6#°G$qSFŒáxP}+.ﬁ‡7\n∫.∞ª¸øŒ°ÆÖ#vêTpƒåÄ8ß,ÍÚÇ†˚÷$2‡ÂO*⁄Ûå1ÁækûTí4Sf≥»ã¡<—Ó>’ú≥ú`Ú{öùf\0úVNõHÆmKµ„É€•F◊#†4’ü$ˆ©QcrEïR8`úS#f=:S«ÕúéáäõXkTE ¿‰ı®◊‘\Züsû∆†(ÀÇF\rZ3ê1O”MIäLB“än)¿“)¥Õÿ•\rH¥–Í)=ËÌHbM#4§“SDIà(8•≈\0S%!6“*LSM¨BÀú–™@ÛI#éî±ú\0GÂW≠Ñ1–cëUû<f¥dUyÊ™2òÒg5∑n∏≠&€»®∆	≈n¶ƒg(1F(ênOj≥8Œ8Î“™»ÿSÎZ-DPî\0Ê´K&⁄¨Iñl’KèªL\n21g9<v®ü…ˆ©ÄlúÚ á,cÎEÄ£$d7\"™î√úV´«Ú‘\r$ö\0ß≤´MÚû+D¬y˜™≤@rM+»#º∫XÊàH≈f@é<ëÙÈP4íﬂº|±Úy\"ß(`äç@Vœ|÷~Œ=äÊb⁄^ﬁiìôÏÂh§⁄CÌ8‚∞Ó7\\‹K,“®cπâ#©Î[W[˛b>p\0œ∞ÌXó±íç)TÁ˜ı£Ÿ§˘≠®˘∫Æ¡YdŸ∆qı5Vu8¿ÎœZ∞≠Úóî1å}‹t\rˇ\0Í™í]É!`°ã0√=Ee)kb—ŸŸx¶Íˇ\0¬Wö=€À∂º»gåÚ¨ÂO\\ˇ\0J®˙¸sh–√i%À]GÃ˛{Ó»Áú˜ÒÈ\\ä›KªA“7lπ[⁄¨YM$±õKtåº≤\0é˙˝kŒû\nÚKÃ◊ùÏ\\G*»cèv6ÁÊÈ‘˚Tqã?,«újÿÒ,\Zvû±Ei$2LÔmê8«ÛÆyI\0»º)8≠Ë58Û$CdÒëä.>lg#ΩMm`/bú§Ä<qóT«ﬂ¡‰√\'™êyÜLÖ‹«®\"ªÔÈv«Dkã•àDO»¬≥ÙŒ3Ù≈iVØ≥çƒïŸƒY*âK°›ågÅ]Uèˆq∂{®o›5¿rdl.GÊ9¨maÌ°vK%UR„èÕ”ëÙˇ\0\nd˙†Ω“¢≥√ ›ΩAÀ„å{w¢K⁄≈=Üùò∞\\¥ö¿Ú%›Áæ¡ª–˙”¢xt¬”:ï$(À’YJëê}A¨qsÂ ÆÉï]£¸˛4≤Õ-„n|íy ?*Øg}:öƒûll¡ŸôÿTˆ∞iÍ$nŒF*K{_5∂√ç∞e∞95amﬁ+îçä´É∆N\0≠¢íª\"ª≥∏≤`∑4o¥6`‡åä§ƒìú◊a≠\\‹jP}¢ÓXæ€Ú\"Ñ«Œyo¶?ZÊ/ÌÆbh§∫R≠*^1ê8˛ï¢iÏN£-Z?1Vr|£¡«QÔ[-\rù¨*÷7è$“\0¶26ùs•ˆúuÏi|‚°Tüîè∆¢qπqz··xı[Ω>º»%¥äB\nßÆ8ÈıÔ]Àòù\"IÖWgEœÆ~µœ|&ªíÁ¬ÚBÖ!∏=≤N@5ŸﬁΩΩùõâ.#∂åúô$pºìí9¨£∆V∞I∂èÒøŸ∫∑ôﬂªêñ‡çŸøçaÍ73Í.·érvÒë◊öÈºEÆxiÆfµµI3\"¿ØP}ŒkêûdömñÂR>Ü„Ò˝)VÖù≈•å©l.^S*ÉÄ1PIe$ ,ƒFJÓ\0˜ˆÆ¶WxÓæ÷±™ƒ™î…∏0«$aì¯V.≥‰ƒFÃË6Öw\\?\näsre¥¨d∞ §Ω®^BzäôÂEà¶Ibzé’RBs–å÷ƒ°ÃÂﬂ#ÈÅMy[q»å‘∞J±nrmßaçBßÃ$mÊ§∫Ó;ªëMe‰˚R„Éì÷Ç	«)àf8==+ßﬂánuñÙa-†?;¡_|Vvƒ®g˘GZÈ4OÕ•Èó6Ò⁄¡1bXyπ˘A∆{ı‡VUπú}ÕÀçØ©–Yj∑z4_Ë˜1CÀâX∑n\\gøC\\∆∑ÆIs-ÃqÏ‰…ëﬂ˙ˆÁ•g\\_‹OP»v\"ÂÇÇqíz˝jìö ñEÛ=«)Ωêo`≠&s◊Ω!‰p)‡~µŸb(qN˙“ œ^‘·◊òÖ…AìÕHJãÒß#åö¥\0O\\Ù£9\'µ+cı$«&Ü2◊í‰à‹|†é¢∫;®•±”l§ö“5Ñ∂D%L§sûˇ\0 π2\\Ìf…Åì“ª;=^∆˚Hs∞§lLÏ>b?ªä‡≈9+4Æ\\,T‘5oÌÂ¬Y¥l£s™∂p@ÂøV\\víGqsBÃ≤ë∑g;´f ˇ\0≥Âä8dR« ËSπ•hñ◊≥[]eøtÅ^5´É˝Fkù◊ç4“4Qr9K´ky¢ä÷O¥A≥Ü„P€ÈâóªYU7ÄWoO|ˆØ_m6JOgÊdèîí§g˘˜ˆÆ?ƒvÛY¿eÇIdI ∫êH,O≤£çˆèï*vW9=N÷ﬁ%ÑC0u\0ç£Ø\'©k1c\'†Ê¶íUc∆A∆>j∞¶&˘“6R@^\ZÙ·tå•eà©\\sª•çàÁ8≠ã5å| w∏Ù‡É¯÷u‡?k `éπ≠#; ¬kAë∂S¸’Îd 3n∆0p{’◊9»´–Ç‡ü\\WBDM¨-hÚÛ)¡\0ı™RíwÑ¡˚ßúˆ´/  ``‘µY¯»94Ø–rπ_0ÛíOzr@vê†t‰\ZtCk¸¿‚Æ\"§‚ìéÄôR\0eﬁ™0‹ÓÈZÍ÷˙áüjñ2Á‹	Ëh[pÏæ`!ú˜¶\\;@\Z8›Çø\\t#ﬁ†.2Î`∏s#$ôm€ît…‰\Z≠s)©UÃAp	•F“»l‡ú’{ª∆ôBÁ!F6÷5ŸIï&+ÊÄsÿTf0@¡Ô–ûÇüèóê>ß®® )9SÕJE\\ââfÁëüJ|“ºÓ3ú(¬èAIñVÁ≠Jê3ƒÛ≤¸†ÌŒ{–¿lr*ü|‘dÔrìäwgÇÆA´WˆÅ¡µêÆÿ˜:»y∏œ|ı• #>C∞c\'ëQúÍG•HHf¡‰:dd+úéáÄiM,h∂™ü0∂TÉ–wQ+´HYUé3Í;÷ı≈Êù.õQ⁄¥yå“Iû£∞≠d\\\\∆YE¥\"Œsüzï&˙\0˜ºñô3$ßÇÓ«q‡\ZØktˆì˘È∑*A˘ÜA®fêôIg1ûΩ´W√ö+Î:¢√Ü*£{Ì*É©æ:’%}Ù(ﬂﬁ^ÍãÁIÃhxD\nq◊ÖQE„ë»Î^≥‹hÎNæµ¬HƒÏÿœÃvÉË•¯›ßhzvß¶ˇ\0f√3¥?ºHî)¸-«S÷∫!EZ¬Sª±Â√{TäzÇ*◊8Ê¶SÉœz¡öàV ìäG\0‡ˆ¶8bŸ#ı\\Æ<w¶§~4£°≠!√Á•\04|\Z”≤‘Æ Ñ«¨™X>taﬂÎY∏œNîäJ±¡•(¶µ4Ø^‚yö{πÂê‹«%™åõ∑r\rn[¯s]‘|<⁄’ΩØüß@ÃíHé	åéπœzƒ\'Æ„ÛfÖë+S≥=Âîãu¶_Ííÿ≈>∆ùß$7|ûÿØlønëØËñüe∂í‹«√àπï}3˙å◊Œ6Àhl√ô6Œç∏Ì^£‡ˇ\0ä∫èá¨a≥’‡{À\0√0·îﬂÌJ“5,¨Ké∑EÌw¬˜û\Zñ∆˙/:[p™ìæﬁ3üî‡˛ºÀTµ∏õSöŒyéÎñ6Ò≤`êI»˛\\W”:â¥_¯~Ibx^7Oûò|ß—Ω·⁄Ñó/5Œü¨Ò£∑ñƒ›à={c=(ßB<Æiçœ°ã?Ñ,ü√P_ÿ]ºó†¥w∂“ïFÅÜ{q«ZÂµ]*ÎIºkK∏¬»\0<ÇBq^„‡_5ÙZ¿÷Ù÷[…‚	æS¿<˙u=\rpû6¯}Øh®óW<∂»ªàwPx“∫=ü:≤Zì	;ûv?ZS‰CÚ1ÎM tıÈ\\Ì4ÏÕÜØz3A£ìäê\Z}i§‰r) 0∆êØ9†CB˚“ÛÕ1@‰–3ë“î¯ˆ†r1F“$Q…Ö+*Ç}i•Ω)¨ÊÄêk´}∏‘&∫∂ƒfVàÑﬁ≈q‹úè•rÖ≥÷¨X›}ñÈ%¡;{ää±rçëKswTπˇ\0âtÅb\01rpTÙ˝p\rG°‹ãò\'à+ _dL†÷¥Ó<9oo§[›O3Oq~C[§R°{ÜsZæ\Z“tß◊¨¨.|ÿNT\\§‰*≥É»\rÈäÁuW#h:ûì£ÿŸj>ëÓçN⁄”° ÿ‡(ÏxˆÕ\\¥ÉÿjQ.û°4YÊ_3q.AÁ¶xÊª-9‘[Gi•¡\Z¬ëÂÜÂ<åéµqtò≠Ìû2<∆‰ÚØ”5ÑÚúSL9Ïy∆ª·ùKR–ßû›I≠Â©~V1¿N3[˛—4&“Íÿ˘ó{\0vv$´ë»Îö›◊tÁø–$µ∞QÇ\0}£‹V7Öº/®È÷v◊±à#Ú˜a[í3ûN{◊ØNî#E]Íc&˙5Ù{•ILÍ§| ¯*s÷¶µ≤KyNõ¯±Œ3ö´|ëYZ…=’€,	‘≤£”µpìxÏiéˆ›Zâ ôJû†Ï‹<Ö‘ÙSq^µ©vcŒ‹q¯ZÒèä:d∫m§ŸH›&«Œ√-«qûîÎØx™Î»\0Ì oµR“F‡Ï*èåtÕ^˚K∫ìU‘Êé⁄›∂€¨ëˇ\0¨a‘q–◊~*—›2$˚û)/2\ZàÒV.c» }Í±‡Êº˙™”fÎcÿ¥iPÿJˆ-;YîÕÀOG®Á\n€ã^”.#Y¨Gπ»±Û»˛/Û÷∏]6Ò”J€b⁄)6»Y˜{/qäìƒ~#∫Ω¥˙QÖ5\rƒ∏>ﬂù|§®9N∆óæß¶G©=Ì£Z\\¨BB≈äÄ—º8=Ú>QÔ“µlù`Çd¥∏∏‰úï`zÁ°Ø1Wãı[Øô&Ay= ò±#`„¸+⁄Â“Ùã‹X›•∏øçﬁ[lu˜\\sNXwEŸ´\\ﬂCöΩÌÖ›¥⁄î◊©pÚe“êﬁ{æıÁ⁄”Í˙=µ…π∏π∑ÜLãTÖÉ\"∑ucÎèJ◊÷/‰Ø®ikgÒ‹b[Y%!ˆ©<ÉëÕq˛:÷‡‘ÂÇ{v≥®Û≠–aQÄ∆F89©√–ó¥ÔJ}Œb€Fº’•îZ@fhë§eHúU€_K¶ºm¢‹^ÿP≥™ÀïcÏ=>µ6á5ƒñ”[Z[∑ûﬂ?ûÑÜåΩ*%“<ù\rıS\'Iv§j¿ê{Ók÷≠(∑ ≈ª:≠;≈1xáVé€_ø6ˆ√óhógû√¶·“ΩG´ß∆∫~ô∂%¢ïæfêºÙ∆;fº*∆Ê[Õjëb“>Aë`1ı¿È⁄Ω«K∞‘«ÜÁ∑¥πÛ/\"Ñ<p¥É √q€ f∏+RßÖEÎcÖí«Máƒsÿk\ZÃˆ0,ª„yP≤ï∆BNq^{©‹õÎâ÷8 ìÅÂ¶Å¿8›Î˛‘nl∆ßqu+]∫Â“LùÃ8¬ì¯c⁄µºÍ/ôµ’ä}ÅH¶»R‹ÇG≠û\"ù.m¡∑±√[kÕmw&õmZDÍŒGò.Ù,ß¶+\'‚=Õï¨…•⁄ÈˆPó2[úÁûÑv¡ÕvZÁ¸SZ≈’ﬂÖÆ¬JàwXà>SœÃ=OS¯W}®ZÎzÏ˛\"‘ÏfHGñLN>\\që¯ÛXB’+)≠âz#Äñ6ÖØŒ‡q˘“ÿ_^X8û÷ÓH%è;J1^£ÙØSÒvß·ù7C6⁄+E<zÑ9xÑ#˝ú»=GÂ·—†hAb˚Éì»ïÈ4ˆzôÛ\\cH”ÃXÄπ8ÈS%ÒÜ‹¿BÅªp`†0?^∏ˆ™ªò†e0ÎÌQ≥náﬂÙ™Â∏Æ=∑ªûªIŒ\r)Ñ±\0”K;Ìﬂµ(rÿ*H\"çBÃ∞ñÂ#?;/±®∂Õ\ZTÖc¡≈7œë~VcèCN)è%})\'%∏j[≥ïÙÎÖÛ·ïRAñ⁄pYO•\ZÑ0¶Ÿ#¿2.ÏÓ{{TrÕ2<≤3c\0◊äñWfRXryÎVØ{ï}ü≥ô7Ó`ÀQ<πP(>Ç•ÖY¢bI¸È÷ˆ3^Õ1ïﬂ!¿.¡GÊkU$∑Räo%»Ò⁄Øõ∆êór≈‹aâ9Œ*åˆÏ2aó≠ B˘}˚\Zª]\röipÎE g∂*ì«πéO^Ùãª99‚§∆hå`EåridQÂr0iÂj] T…ÈZ)ï»„èJS“ßÿ°∏#é’™X‰CL¨›HÕ PHßHÅFXÛDLGZ≤êª3êz’ÎHﬁ\\\0∏\\˚’D⁄$«µkY+:Â~Ë®µƒ\\∑Ä\"·∫\n\r≤ñ8¸8©¬≥ß\0)^0ZP≠\0ÙÔVÑB∂™√ëÕ	bã\'+R…&‹„äD∫\nAcì@	4 iäÇ˜Àíÿå+º˛µ%’ÿ#qT¶Vêñåûõç\rÇ3$êEï»8Ê≠€I«úLO \0qè_Z®Píce¡Õ]¥≤b\nû7w®ëL´4˚Ê,„ûÉ4¿¢EÀ±RΩ\r]π≤ëv;ïs∆;S?t≤±é-™@¿\'<‘±2√É0YùcÈ¸´Pû9ÊQB5E⁄pzûÊÆK)Ü›»\0v¡Îö…$Á\'1çù«!w‚ïVì\'95\"ûı©bÅ«ΩÁÅOo®¶‡å\n,!∏ıßFáΩJ±˜ÏjH„$S÷ö1\"çH(˜©ƒxnî<yw™∞à\0Û’@†¸¡•8)Ì‹{ˇ\0:Ia1ÒÈEÄà´èZôJî≈V!â‚ØXE≤Öö_-22HÈÎMäƒ^K±ê¨85r¬∞√Zu¸∞,ÂmI1\'\nOV˙’!pÂÄn ±¥ì≤Ä∑1ÔÌR$‰pIÎœ5õm:ÅñË*Wê68ÒVôπr‰ xﬂp\'s“•ä)ﬁ›%høwøÒö»|åÖà,FvxÆÁT”‡”ß˚K`eÌaÄxÍp;÷s©%∞‘SötfI,€ŒyÇ©d˛_J€“¢”µ†[≈Ç(≠F¿«É!Ïz˚◊9®∞\\∆›;Ãœ∂s≥;ó†#˛Uÿ›Go†j∫lVøjÜo.V`€òúÙˆ‰W;õrIÖëgN”¥ãhfKı\nesm‰/¶ÏrøçVª“\'ñ˛DàãeRUÉÇJè÷∫Ìbm/LµÄ≤Gmqr¨≤`G\\08Î\\éük&ª®Gib(bZRpD}≈\\%8I∂Ù¸ïõ–†ê…\náEë·Ï˝∏Î]%§∞4jÍÑ´r•øPjı˛õìˆ÷™f¥gªí6û√ÒÊ†“4âV“é9\n0#;TÅ”Û≠°ãRçÿ*m±¶2—˘´≈i#π≠>2SÃldcpŒg°=™¥∑≤ÇEªvv(\Z-ù7˚ä⁄üë}`ˆ∆F9êß@iO%	P÷≈ï≥çˆ$S$éré2=*π∑∏ÇfâëÉ(Œ1‘z◊Cmgiaâe∆«Ó©?w±\0–5($eä6\'Ü`2qÌUTãˆh…HÆ`èÃxNŒÊ§é„ ‚µvªXñ•\\íw˜ïéê4n·‘‘`ÙΩ: {ë(ÿª°á5$[ô¿œJ⁄6ï‰ÖÁ\'“¨†*@v({çjÌ–JÂ¢•y=¯ßFŸ \nb33ƒqŒGz≥-ÇsÿVvZç\"⁄ÄTR WÅSEC:7V+}Me{h4JXˆ•ÂÛìÙ®‘S‘‡’4cw‘pRåä\\ÒöBi\0ìKIJM\ZM8ú”q@FŒ{P\n‰¢îÙ¶m‚îúäìKË%å“Õ2\nZLRûúR)8®]∫‘ÜöAœ≠4&ÓGÂÜLÚM¶99#“ùï<aÜ:sO ≈;±ƒUys÷•cœΩC#`UE R1´¥€OZñy6’)ÛÆ»-	díL“6I®[√ë…«=©‚2qÖŒ*≥©g˘r@=™Ω\0e¿E‡ªú÷tÉÊ¡Á5ff˘àœÁU$`$\Z1U<≈‹π\\Ú:dSÃ§†à™ÑVœöãÃ√ºs¡ßg\'>µHî…ˆ®‰å‡ÒVÄ„4«†\n¡>_ÈUfà\' VÉ:v™sìEÄ ö=ßØZ¶Ì◊µ\\ª}Ñö…ûqŸπÙ§–\"9•=˛ïãyvÃ\n;G ≈Owt:˛\"πÎõº»H…¨jIë°o}n ñ+»À.3^Ï˙’#iY§çáÓ˛}§ı™¶rŸ»¶àc¥Ì0+ç«[ö¶]∫úÕ9ibT,·q¯˛4˘≠Ö¥p<w	)ï2¡:∆s–˚˝*åeÂ <åO\0ÈWñ\"pä Ús÷ìZË1÷imå„î\r¥Û˝)Îå&‡\0‰É≈9Ád†pΩ®∑≥ñc…<˛î’¡X””ÁÀêÓ¨W“ÆÍ≤¶ƒKÜíãsÜ„iüßAXäÍÖ[F÷Ææ™ê∞¿á12Gs‘“qª∏ã†÷lü.ˆ#úÙ©˘ÿ»‡Óı¿›xß«1%T|ÉqÁµjïâ-Ÿ€Ö∫ÜKƒ>Keπ„pÈ¸ÍÂ≠ƒqI$…\Z#ÿNH!∏∆=™t”¢Ü„∏&I&âZ\\·ry?^‘∂ˆdÊ÷2±áfGsèLÛ–µZ1÷ö›Ñ-©¥dV_Ùu%CÒÇ}∫èzØ{wq´møí8•˝⁄∆z®œzÛ≈a[´œ/óùæg\\.zzVÌï˘∏–ÓÙô>—:BAãdy(9›û¯ËqT©≈ªâ∂ëkkGjñ±òÊ—˜g^ƒt¡ÕGÒ	CjV{BV—éWh‰û√•g€‹O*€J%é¥\"5 p„9\0„ÆØ≠C‚If:äÀ 9·GEW$m∆?<ÉKŸÚª¢îõ–Áﬂ \Z`\'ï<‘ºl»ŒjpﬂZ∞;/ág^π÷%”4}KÏBhÃíª.‡\0¿»º◊§ß√.•kö≈ˆ¶˘Œ ØÛ5√|\"∂ûO4—\"ä›¸‹˜Ä\0¸ï{πÈY‘©(ª\"íV9+oÜ˛∑nòí2∂w;±?Œ≥ºCÑ¥fhÙãπ@ƒDPú∆q[⁄Ü≥m¶ô≠ƒüø‹\\l*»,O◊éx◊ƒóöïƒõ».!åÖY!]†Ò»ı<Êúc\'¨ô.Kddk\Z∑ù€b Fw^A>ıÕ sö|éXíO5∏POr*Tvπ\'>µ$·vÆ‡FqéïêO≠I0Fr8°îàC\03ˇ\0÷ß«ne∞äXT1tK1„È≠‰çÜ{˜˛ò`bÖπ˘zÒ–RDT8i*:Å‹TÍ$%–I˚ﬁï(œ÷íi\'öÈ]»›¥∞AT…∆F9ßÇA8ÈNç7d®‰ûiŸ$+ÄVp9S\nê9=Ím¯R¨ø7ÆzRlg*<T¶2 ûı2∆pTÊ›°€πC\'Ø≠0Ç9œ©;É\Zg®R#Ω)¸(Œ*ë\"Åûi›z\nèw_JPﬁºSÿ¢-ñœ≠=ÿÈQ9§1KrxœVæè•ﬂﬁ∆ˇ\0eÑæx∆‹ÓˆıÑ[#•^≥‘n,–M\"˝÷≈eQI´D•kÍzØÅV¥ø∞0°Ωè≤HøÍ¡ŒI˙\Z–”µ\r.¬[≈∏∏Tô~\\†‹ÏW∏∏ÙØ*áVF3…ô#∏u(‰ıœ<Êª-R”ÆÙ«öı`”•˘åWN∏Œ:Ò‹Êºö∏Y)9æ¶üCbˇ\0∆…y¢àQöÍ_ñ8ƒx-Œ;së÷∏Ms≈W˙å∞™óÅ`åE∞6y˛µB}vim!˚-†Ä≈ù◊	úπÌ◊ß·Yj≠31w,«ÊbOS]Xl, Ôb%6Ù≠ÊH	ÊÆ!y•X”Ä¢°∑¥íU\0 uœ≠J–…o\Z≥ÇÖÅ⁄@ÎÔ˙Wvõ‹π /Ü‘úúÛ«Zlå%ì{(—å˝jåó\"¢í>LÛ‹‰Áöz>HÊ™1÷‚lû5\0{ÊØ¡Úúû8ÌTb8´∞…»˘s≈o{\"$™“D»Å∂Éú˙’L∞\\ﬁı™´!Å≥”Ì™ï—è~’$‡cqj#4›ÜCoñ@É\0ì∆N+°áKE<êI dÇ;X0í¨6ëë[∂óF—˜aâe‰˙Á–“´&ñÉäπ^ÒZ8\"f}¡zµëst∏À(\'”5ø™ãrÑrÆ7dä‰.fè~y‚¢2∫‘]»Âïùèl’Rƒ‰»U……(®\0åÂN@‚ÆXh”]ÚÃêG*±J0(Œ‹ˆ\'µ-ˆ\rÖ$ŒÏôé–\0œ•*jKòDRù≈[p» Òäâ∞ÔëP˜)2L∆Sdõá9O¬≠Íièav∞OË¿1y2Ø«\'π™ñÚC·ÂåJÉíÑ„?ïIs«!a’u»œí‹w\'“÷©“	Óí—\nê“»π8ÈœµTΩ∑ÜHäGí2~V+å˝})÷Ò#&Èg$Òı‚´ ≈e8pvúSê}Íı∂¬ÍEªh>›Íª±f„95<åYÒÚ„‘UGpÓj\n,≈)F[ES∏;ÿê?ù*)císN*C\r›ËcDA6ÖpAØ®≠m/^º“/ ∫”ü»∏èp◊ A¯5ú€UO4˚H‚íÁk∂œΩM˙Å∑•ÎSÈrœ%û…$ó\0âc\rÛzèNµ\rÚI©Èí]]_∑⁄-B§P:íY2sÜÌÉ⁄§ÜÓ÷õb&#…çèIÔ«q⁄®GpÚF\\¸‹p√‹’{YlJKs+®8©TlAìíi˜∆⁄È‚‹¨Í¶°,r8‡Rzñÿ§∏≈H\"åı≈BYâÊõª\rÕ!\"V‰ìöå\03˙P>¥·åbá†ÓFx8ÌÎJGC˘“∂÷§E\n•âP;ìCuuFnfH_Ô\"π\nﬂQﬁ¥Ô<1©Xh—ÍóvÌ0T/¡l˜«•d¡8Üdê∆$\n¿î\'\0èO∆ΩG∏πÒ|©h∞áâj∆Ôê†ì”\0˛ï3î∫\n;Íp≥Xœj±;ÆDÉ+èJ±˝•tñki.\Zb å>È=Î“„–„3A¢j÷“=Ìõ2=√cCèïÉu⁄®j_⁄Inæ |¥ÄáxÂm•c?≈ﬂßzt„9+ÿNJ˙ú=∂ßwi«o<ÒG\'˙ƒç»\rÈê+®OC∫´…Âøî¬™‰«‰…–0˚ÀıÆf}&‚⁄&&8»Ú˛lè¬£∂∫Ú¨s+aèÃh˜£∞;3È?Ü⁄õÍ∫2]«5‘–∂RC;â\\wÙÆ«Q¥[Ì:‚’»,e2FqëÈ^·{Ì~¬$>π∑ÿ¨ZK0>wS¸M«LÒû’ﬁi>%Òí€∆◊˙P¯`g⁄[†„ „ﬁ¥ˆóíí‹Ñ¨¨xâ¥…4ΩfÓ“eehÂe˘óÛ◊Ü0I˚WmÒÍˇ\0T’£÷.öó+ÖX≥Úcå:◊¸ä€R5gŒ∫öEYJA¡ùùÎÔL95ÅB…êvß0›j5#\0¸”säëóû(∆~¥p\'¿ƒú\Z~A)3éi\0„ÉHWûzSI˜£q≈\08Ñ4“9‡“`u¶fö¬K#c\0øwûïÿi>\Zº÷ÙóΩ”/^ÊhÃπÑ˝ËŒp\'ú‚∏•8∆k›|†i\Zéó±¢I,Wñ·X¿eÂòôw>µ.— n€ò⁄oâºU·’¥Çieû—›é\\Kd‡è Ω7N¯êóñÚ¡5ú÷˜jB∆\0ﬁˆ…™ûä}mJ“ sx“NWÙ€€ˇ\0≠\\VØ{®xÍÍ√Õ;d):≥FXséyœ<5m\\J,ˆÁ∫ât»·fxûHô∞úäèBISF∂<èî¶)Ùt#<‚ºÍ√≈∫Æ∑·YÁüKUqr√ñ‡û=*=jÚÁK”£\Zå∞òÌ–©µ<`Å‘\Z”Î…Z™&|´cßÒµÃbÏÊøñ‹è5Às÷≥t˝/F”Ù‰Ç]•·8ôõÂôIŒ@=0+∆<A‚Î˝CdRO4ë∆0•˚˚÷⁄Ó£rÂ§πëà…n’“€∑+ÿîè£|MÒ√ﬁÑ\r3Ï”_2(o+c\0ö‡`◊.~\"Ír⁄Õ©≠ùúVÌ38B˝¯Ø(ñ£	ñEeo„p=«≠v^\nºö“ãπ§èÀ\\Ìãvm‰Òﬂ“µé.4¢¨æbï;ú¶±mµ‰±≈8ôUàΩÎ0ÇEzF∑°\\‹4±≈¶€√\rπ‰à\0NxÍz÷?àº+i¶È6◊0I;Oíó*¿mVÁÓë‘T p≠&„†”q—É˘W‚chﬁ3ádÊ^˘˙Rﬂ¯bÊ‘BB9¿ô¯å‰ds–\ZX„Ω”eé‡¿”¿ﬂ1u…ß™í+±“n5ΩfŒÚÀN“-WNó10∏$ÌŒH«∏ØõúÂNŒ;\Z&r~è]ãSIÙkS-ƒ\r¸*ıËzÀkwóqﬂ¯≈éê—![Y≠\n˛ÌœB¯… û)ﬁ≥¶«5‚ﬂ=î—π@ΩVN¯>ﬁı‹≥ô(ÖÂ\'Ô ö˚àı‹>ÌÎ¶ıÿ®≠◊ıùoNÇ˛ÓT7ü-ú…ì(∑ıÆRt\rÙ5Ëæ-”.|;‚IuD±µo&‰∂d¬Å˛ÔL}+è◊µmRXeµ”°±Ÿ÷HNCıÆå$Óíä–û•{Aå¶ÿJ∂˘+®„\'Ä\r6˜@ºÉJèQïÏÆÊ5uê0ÏGQLé·“—†¡\\Ç@cÉèZbáêﬁF	◊µºÈækƒõjjË˙ù¢-å-oo—H7J€øz?⁄9„—^¯˙Èı]>{yi„Ö≠ßFå Olu?·\\ﬁÖ•ZÃÛ…\"ÅBÓF∏l+)„ u\'<÷»v©cc<vMky1ò*MnIí&Á pÆ\ZæÕJ“a∞œk>&∏øo¥˝¢8†\nm+µGLÄN”V<„Ö–µWüSäY÷ÁjéY’s˙‘ö°„;µ∏Qn⁄Ç±6Ú≥ÆÏÁå¯u5ô‚o.ˆ-‚≈t€õ0	√ÕÇ\'ß◊µO≥ÖK”öBïÔsØµÒŒô¨K}£ﬁ@·n∑˘s†*œ&~RËzW≠Í:éÅ{®h≤O,∂‰àù~}ΩA˙Û[⁄èÑÌf∞”Ö∂†ZËn‹”:Ú%Cgèl◊\rÆIlnwA4Û¸†9úÂïáûG•:a{ª\r‹°ø1ÄYé:\n´0⁄‹“¶ÚN“sÿ\n$%¿Ïﬁïﬁïô≥+Jëœ$\04ﬂ2ú{Rõ\\∞T\nì°;w5nK†ó,F‹3¿®¸≈@Cfç€Ê…˘~î‚\'rÉûÙ∑zç\"5R«úr)eëìÂU!áLäñ7gûò©Y≥µvÙn)´u\Z‹™´p‹»ÉkTÒ¢‡ç∏a‹TíærtËÎIøw@©]≠»èiS∑•IK#§0∆“H«™9&ë≤Æ√Ö=;\Zµ\rÚXÃ%é’KúÁy»¸=)(îíe6ëÉ,N≤CTˆ¢IúO£<Õ*ê˘çí;ÉÔTúÇ85—ÄòqéòÎHµFå9ÚxÕ?!G ä†rì⁄¢$í\n˝‡y≠K{EuˆÕ=ÏU`Áö`e∫e≥ç§”\n»qZˇ\0fUb[úö\néq“ãÃSoºìÕ=,ÚyOÛ≠3ŒÂ\\zÒO∆‹nz‘ÖÃÂ≥}¯Qû+BŒc=´p.8¸kV&êoQúqT™_;ÅÕ^k] π8§XvÅï¡´°$Ω∆iífIf*:÷T—4gga]SBVœÈı¨çFﬂ¯¿¯§3ÿßÚ‡}ÓüZîFY ®+é’ÜI3≥∑“ì\Z5õ\\⁄µ–t¥úOÛÔEî˚~¢†$ícrv∑qS√\nô\0Œ—ÔRº¡ñ‰√«û˝+\ZÂT1#Ç;z◊B ç¢a∆Ê∏¨≠_Lí◊Lè\"|ÕµvK{äLÕ›Jdó»*A•«oŒÉ◊äh–r\'|j`†.„◊5\n∑=<æ[Ú¶Åé\'\'4ÂQûîﬁ¯>µ2ÙqTHäÿ‚ßVT…jö“G•4∏≤≈.ı ±˙UxYJzû¥ªèLÒLD—»\"À6	Õ#∏|¢¢ëÄ<Uc6¿y¶¥¬¥~`‹q¯SIƒ§)¿j©ÁdÊ¶Ésù€r*d∆ã[’GÀ÷ò†H¬¢v∞zUÀ\\§`Ö…„7#ÉÌ “,ºèòÒOú»”ov,ÃrO\\Ê©>RV≥I2^Âñ`H#≠\\ä8ã∆â-ÄI‡)˜™H¢@£µ,‰kéê#∞l±a∏0»#ÉÙ˝hw∂Äãˇ\0ÿ∫µç÷˜∂$dm1ÚÈÎ]Êã‚´yu$∂‚9|Ω¨Ì˚Ωé3Ç?J‰·Ò‘«%ÃŒ^ŸÇ¡¸™9+«Ωvkã4œ¥\\≠§zåC‚?<†å„Çp~º\Z„ú•˚≈†“ÏjxõH‘.·[˘.‚û8∆d˘îAÈœß·PË∂∑ñ÷D∆Jó>”‘v?Ö`ﬁ7â<)*⁄Õ;\\[4cπﬁåá”5ß·üY¿KlDÏ<∞	 ∏\'ú˙v§™˚&¢Ó∫\n1JzûÇ-,`”¬FingÇpH‰ïœM¨>Å∏CÂ≈rÜ9XÁæ÷ˆÎäπ¨Ím\r§P≈ïög]∏;ö6Œ‘rX√jM3I,R∂c`ªÇèFœNkÜú‰üΩ‘ﬁvO›2µ[ËØo<Ôò∆ªW\0c∑5°k¨è…¥X$ç‹ïÀÙ‰v…≈fMi—G<)√<≠ü0\r»¿ÒÓ‚∂t˚˚ Û›‹7õw6<»J‰0«cıÊ∫d‹·e±ìâï>•x∑∆Ó]≤#9¿|™©Ù‰Á5—hZÑJäUy~bÒ∞8û£÷πmwY^!∑Ä˘DÁd)∑·È≠Ù”%’Íft]äXdÇsÚÉÈ≈kKüñÃi£´Û†çbéYJ,A+∂¶∑éc4„s´1⁄Xr†S.≠-5\0PLU¡%êÌV√CßŸ˘hﬁr„r+¶ù◊©2EK	„µÛ#ëÇó:V¢˘Sn¯ õ#ë¨ôCIu(¡H‡Ù≠¥%ƒ*Q∞‰‡ÄπÈ⁄ª$∂fQ—\rﬂf∏Â¢˚‚¥ïñENA®ñ›x,Ï¿”å;IhæVÓ;\ZâKõr“±(ÌEB% ·¡SR‘X@NIöàﬁSŸ∆x†0¸iÍfÏƒ\'åSqìöëBåsLë‘iGJ\\R\ZBbû:\n\0ßRl“1∞“8Êö¸SœúöOa‘Éö`©•6L\0RRöLTö:–ÀöS“õúû)íÏ¥áÃ3–—è»RúgM#û	=2Y∑STßìöûF‚®Œÿ≠ÈƒÕï§|±5ZG«Õ∆GjY€\r-µ∏∫dåucí›qÏk´d\"õ›óê≥‰π˛,ıßº¢#∞:úØ\\cˇ\0≠Y˜∏∑ªhø∏H8˙’fºÚ€i`∏<ìLD˜‰íHÕTiL…Ç√p8π™Sﬁáv√gûæµù-„¬ìü≠;6ewäo*\\´/QÈNIrz÷ﬁ≥HYâ,y$ûµ=µÈ‹7qLW7÷P\0ÕDÛÅëûjì›)AÉTnÔƒkª4Ä”7÷©œ>=Î„YXπ-Tß÷”nwÉÌö.ê\Z7≥è\\öÁ/nHlwœJÜ„Ytb{k6YÃœºΩ≥“≤î◊B“Ó%Ì∆ìÕd	C»|‚¶∫%ü<„T!\'πg+≥DN√u>¥ãËFiTìå˛ï=º&Ip®Ã0x^µù¿rƒAœZ≥p£\0ü¬ú∂·IS\"´∏n8Œ==Î`⁄«m£.†Øç!ÿ®‹såíÊ*[∞Ïa¥ôlûµr›ÔS *ZG˜ß€2dyPïL*Ûå7≠]∆B°§!Aœ§tÿ‰ù≈3Êë≤£\'˘‘Ò\'Œ¿åw®∏ØcPË_ÒME™§¬B”ﬁ∆c\0pO◊5ü‰çπ∞≠ÒDë◊Î˚¬ﬁ´6\ZçµòùÕúR √\ndË>É◊æjÔ}Ñ∑‘ÃYYXG0fu·q∑“¨ùYçﬂ⁄ï3pßÔ9…>Á◊öéıÉM+ìÚÃ€ø¬j5dH0ÒÂè≥–ú’≈&πo##• I$SF€õ\0p	˛Œ•äﬁÓ{Î»Ó6`Àˇ\0ô¡=}Î>}A¶ä(§˘“)ÓsÇ{”Óµfô\"*62«ÂAÖ⁄;{˛5MYË$ÓhXÍV∞iZ\\Yoï¿ÿKco9»˝:oä%¸C,¨!]—ûB˜˘H„Ø‚k2⁄Ë.÷ùé–∏^¯ÊãÀ•∫úob#^◊‰›–ñõï	Ä„ı} ¥uëep\Z5¬¥|Ó4À{;iÓ^s›í3œjÜB!tœŒH¨•+Ëä=·‘Væ#∏µw˘Æ-ŒÃ˙©Œ?,˛UÌN€∂	¿Œ|¡£_^h⁄Õ∂•e•â˜\"‡·˚˝k’t›G∆û)‘ä8:Mñ2„…9QéN	Õ9Cõﬁπ\\›¯‚Ú÷Wà›@◊)èà‘ÄB≤IÎ◊˘Wé‹†Ú’Œd¸µÎû)—çÖ§ãg∂fä\"ÛLÀ±Kg€øZÒÀπHrzÚ}Í#)7©6Esœ•F„sR∆èJö˘cµF2@…¸Sc±DÇ8≈!BÿÕhD÷ﬁ`I”‰@y^èΩD¬‡W…i	ŒﬂJÕÃee˝‘ÿTØÛ©¶î0?.GÁUÀ*∂2s[ˆW∞æù4WVÊF\\òÅ=Ú:î§⁄‘§b2≤|¨qûiß+‘qÔSW∏f$Öœ~∏ß…\"Õ\n…g∏w$´∑<éïn“–≤â›∂¬cê2A#é)!âD·rÃÑ„räûK&X]°ÛôKªf◊˙‘Nih4Æ6H;ÄÔ,ûﬁ¥·$*≈Ì√/<Ü«J–kªK≈ÚØoä2â$I¥±«ΩzV>¿	¡„<TAπh∆Ù&ºπ3±⁄°PÚtS=ΩiÓs”ÈL`IœÈ[∆6 ;–TSzpx4I»?ïP„i„5aå‘–[Õq*≈\nof8\nßú’I#aÜ`ˆ£A°|‘∆$˜ÊêæôªöB8nN($gÉÕ ∏œ4£jˇ\0	œSH‰éúcú–Lç√9<˜5!E$∞9«Øz+9 ÏÔä4∞Ÿ±π{ˇ\0˜ˆ*¨-oÊ˘ÄÏÀGL˙w®Ïm\Z{Öãk[UFsPió)o$≈’	xôFÂŒ®˜˜ØR|∫%œÜ–õ(\r¸Äç¡dúÁÇ;ÁÈÈ\\8äæ¬-∆%≈s	·Ôÿ\\Eucwg$l¡^ê·∑c\rr⁄ˆëyo0K•ÚB#úù;W£Õ-Ìµ’ÌÛµ´=§øæâ˜1U„˛U√x◊UﬂÂ•‘M òA ˝”í}Îœ¬’´*◊Óm$îN,¬ Ï¨0}*D#®ÈäíIñ-È$[§#jñ?v°çˆ¸ÿ»’Ô∆G3Eï¡\\Ù´ö}»ÜCºF·ÖQerÅ¬Å≈66;ám¶¨OSººÅ≤Y¥÷¬Å(qñR;©Ï+îñ>p0H‚≠«,\Z|QâÇ˚Ä∆N~øáJçßçÔÆÑF¸êé=Ös”˜YrW*°ÚÁá\0Ú+L_à£»∆59Hœ\"©ﬁΩº≤nµFG&©2@Œ˝+°•$M⁄fº∑“Ed—•√ñaÇ	Ë=>ïŒj“¡:∆≤$Öî1⁄z⁄≠‹Ã°Hûx5AŸ§n9«Ü≈\\´Ü¡,≈_≤÷Êñÿ@⁄øõ&ùï1§∏m≈~SÉ€ß5ùﬂ ë∆ı;◊K´^C´‹∂]“ìÜúGå∆T|≠Ù«Z9˘X≠sçlô27m\'Ä}(`7é	≠yl%”eê≈∂Ê\0•KÌ·î˜ÈYs∫Ñ$)\\ıÕO2{÷\"e⁄˚ˇ\0JÌtÔ\rˇ\0jx*]v+à`˚)1¥*º∆\0í[˚§åt‚∏7õÃcﬁÆZk7∂V”[€\\4qM˜‘ÈTº√S£\Z∂çd–Í:$Ok®A%ÇÏâcór‡ÌºÁöÂ‰ÚnÿGmKâd\n±ÁÆ}œE§rIÛÉOHbyƒlbR|p	ÈÕZïï∫à‰éDvF˘H<ÛöJ‰Rn\nƒ˝·Réº¸†Ù¨€ÏPÕ•ù#Hë⁄Ø≈qmå©,AÊcÑpG ;÷t≤çΩIÊ•°†`cß÷ü20 sÈäfw\rß°?ï[Ö#iê¥‡ BŸ°Ù©z!êÉµàe√{äΩga>•®¡kfá3∏çYè?”5L°ïÀíz‰’õ[ªªòdäVÕªnèû•Ø®ùÌ°cƒ^øÂ˜ŸØ‚¡‰§ÉïêzÉXõ@˚’øØxØXÒ<êˇ\0j‹,Ü€h¸+_êëﬂß5¨˘oÓä7∂¢1»5›«Â9‡˜¢@0jK∞¡Äq∏qKï#Âl∞Ù™Ï0‘.ÈNƒñ˘∞‹TçÇzU`I9<‘õÜ3ûi46+q“∫ˇ\0Í⁄çñ®-ÏAë.0≤¬\0˘ÒÎû’«Üb∫ÔÜz‘zé¥Î´Öﬂ	s˚s¯)•}û«iØ[x•uàµVÅUÂ,Àî0(1Úí;qﬁµ•Ω÷<]Ï:’Ã∫<p &ﬁ(» ë«<ñΩ©aâc˝‹IÉÛcn2Mcxì√j÷—÷÷Ó&+Ä>Á±ı‘‹c-\"⁄!.ÁéxG@â5´fGù¨ó+$Ò>Á#Á≠¯;LâÂm>8bH’7Ó!É◊‹˙üz´£ﬂã•æ∞Û≠`øÖ¿^B¶›€ÈÌ]Ö\Zﬂ\\≤æ”ı;[).b‹õXÜ|z˛u7´M˚9\r[sƒtiß“ue-s$pØÀÁ≈êÓ®=+”c¯ÀˆàÆE≠†I‘ypƒÌÚÏÉûÌö‹ì·}ùÔÜº¥étüsªìÇAˆÌ^/™xcS—5WH¨Ác’£\'Ù˜ÈMSñ≤C∫gq/√+˚ç˙ÎTv˜mÊ€F$Fp˘=Û^=<-œãáF*√‹Ws/àımsT∂ªöFKí€1$òàÌ0z\Zƒè\n€ÈS[j˙|ëµùÚ)dW‹cì ˛9¢Ê€+ùlœ=_ïœ•6B”ÿf£sûq@≈-å\0x¶„kHO§›öc$Œz\ZLÂ∞;R.Ni›9Ñ/E«Zâ™LÊözëIa4qäxPG?Ö7nX”òœA@ROΩN+û›)π\\9•q65Qâ∆:U€;˚´&A\rƒë`ìÚ±\'É”⁄™)9ß∏uÊÑ⁄wBg∫¯ZÒYÕisks!\ní¿‰&Np1ì◊ÒT¸E·Mƒ-{®kSCcˆ|‰?%Ω\0ûıÂZ.≠s£_«wn¯ñ?∫I‡{◊¶ﬂ|kóRWV”#˘r1F9œQ÷ªË’ã—¸Ã%ûá£¯SIÚ¸å∂°Cƒ#⁄ﬂƒN0ﬁŸÕp>6—Ø|1m\'Ô\"1ªÇãÇ¸«=™¢|\\Ω¥Ìæù=¨r‹D£∏ä\\|†‰Ì“¨¯É^ÒOât≈ÚÙ‘Ú/¬∏˚∆çË	Ê∂•€]	wÍy]‘˜wáo?Öz\nﬂWÑøµÓè€,‰uñ-«bÓ˜?“Ωã·ßÇó√V∑2^ã[ãÎÜ\\´®¬.‡ûsú‰{WOu•ÈW3ﬂ[JûD[ï¡∑pÁ>ùÎùB<Ó˝s”C∆<o¢Aßi–Z«t◊h†8r£‰8∆‹èJÕú©ki\Z⁄!7r6.@aûû∆ª-}4=ŒÔLY\r˝ÕÀâ0∏›;J√ıµÆ•´™ÿ⁄lä2w¨Áj≥c®„≠eòQQßxóJw—ö-o>´b∫Yç`áÕT-4Ñù˘‰È[^%—ÙYtô¥}6Ó–«∏´>‡∏3Îíjé∞íÍ˙Ñ÷örG	\\ÀÉ”?˝zÿ–>ˇ\0f[Õs©47êK9„ú◊Éπ®ﬂS¢IZÁê«}wîqµ”„6ÆƒwÊªø\rÍó^Q≠M<3Y≤°ñ @|˜Çé∏Ô\\ááﬂGkjV“Nñ`cïWå`∑?xÁô˝ßk,wÚFÃƒ*¡0„f<{äÁ´E‘–I£‹¥ˇ\0Õ‚h€xzKx≠¬oökƒ dzZñkçSPª˚vµ\ZAgnád∂ÆHlüC◊µyóÄıI-ÆÑR_õ{XÉH‡†%áCé‰‡◊£⁄]Î»óV÷IgÇ#ñÌä≥†ÌÁ¨*S‰˝ z\n˜‘«Ò¯ÒáÊâú]YE\"ÖπÚˆÀ±œÂ∑ˆP€J±√r≥.3êÖH˙ÊªmSV∫÷•öˆ÷÷WÄ≥Ã@Dá=pz˜¸Îäùå“ó$n\'\'µv‡© ;≤< ^N=j‚€YÀ•»Î;G{œñ√Âë=èb?ZùØ≠éû-eà	ã´®‰‰t>‹VkJÉi¸+∂ÌÓÑSösµBìπsÔ≈t∫èol.Ì¥Æ.g±∑?,1π=≤{ÛÎ\\ÀÖi≤¿Öœ8•ûﬁ8‰\"6ßêqäŒ•‘VíÙ:?kv∫˝Ó©£+àÃ≠p–ÄJ\0Oq¯’{õ›_≈˙ÏíN»ogP ≥,⁄˙œ{[\\2$™UÇ∑P{\Z|Z|èz∞≥˘r∏Ó`;f≤ˆÆÈk‹LÍ4\rhwˆ\"{õ∂y“p≤€>@N7+gª¯s¿∫nî±[En™$ód§ÃπÍ√=}kŒ\'≥ÉNè […•ï◊9ÄÇÍ\rbõªãÅÂHÌ&8ÚGµ.Iæ†ùã˜˛ö∂ﬂX+Õ•A7ñóG#µc‹\"F¡»mÕ»˜´Àsrñ“K©Àxi-˜ı>†t™-∏Ï( OqW+ÍGRwàµí‹  é‘\Zé“‰Z‹¨≤[«8^©/›\"ñ⁄9¸∑0BçŒ3€ÈQA∏Û\ng\'ëTê\";ÅÚ»ÖA£åñ\\éôÊ≠±Û3)∞ÌHÍ±7À H3üJ¥Ù)ë&S;FF:S„tgPIπ¢2 p}È\nnp GæM	6%‹ë’Xútœ•é˘⁄£é¥,ëµª,ë\0√ÄV∫??ácìf¥≥Kø.Pêc¯≥ÌW⁄µÏ\rò\n¯¿Áa\"ô+L∑›^8Æ¶Ô¬÷)‚ã[}M.4Î∑] ú2˝·Í+ü÷·∑µ÷oÏÏÂ2€¡+$r0¡`3SNKö¬WL f‹†¡≠Eù jTÉ‡t4üg%TÅù«‘ö-⁄‰L¨§5YåÖ\nKqû‚£F∑ï#§ÚGcH¬FrV‡o⁄∆9©fÁÁJ— ∆	$’Ë√3n∆jÑWuiÁR$G#öøAÿ\røá≠[6ò‡©Sóπv;¡ÁΩK&ûƒ.{˝kM-ÃgÂ√éF;fÊÔÙ§*€…fB◊≠k⁄∫ÜàÄ‹cx\'\0˝*»¥;z‡z–∂åÑp@•a\\ùÃo7»áÀ˛Óz~4ë0`O\0éÿÌR§%π•õÜz\Zvê¥ƒK6N9•º—.≠√° (úqZVj,≤07ûCm…˙R_k2c˝áô§‹]èéÄTªﬂA£îìNU`¿Ì=ΩÍ+˝9Ì»ç%äb¯«îwg#ˇ\0Ø[WS«±R2W?ºk>’d]E£ÛR∆7#°èß4‰“àµπó˝ót–mx%NÊ vı†È“EÃ‰\0X®\\Ûı˙WS6π.†È*ìëáb‹?ÎRﬁºjˆˆÛÏ˚<òÃÅΩzéıäõÍÜŒvu∆?Ñg\'•bxûÚ;â°HcŸHÔì‹Û“∫PŸFáÏ{Œs±òˆ˙vÆBˆ2„Ø\'≠kmLw˘I#ú”A¬Ù‰‘èy¿ÈMszRj”ßZ\\„ûÙ`˙”qû=È†có∂j¿~{T@ûù)€±@âY±»RnV{Êöß ÁëH√	«Ri‹V$R”4é‰7^*ƒº\nkHvåûjÆÕ1f‘%ãi	…4É≠\08ê;VµΩ›≠æö ¢Qv[©∆ÕòÙÎöÀâCH2pZïTìù›Fj2k∑{ÅˆêÃô‰/\\z‘ìLæyÓh˙+ÉOK>Œ∑¨ë7À√cØ5(\0≠É»>ıV#kÜ^${äjnïÛüòûı1ç1ê=≥I\0,€p´»Õ;âñÌ £Ï%x9»≠h¢Û6‡‰“±ï9Xûx#Ωk⁄…ÑVQáq‘V∞zÓO(b•~\\Çq]ﬂ√Îñı§≥ùíÌÒªî ï#ækÑ 1,$ì]á53cë¥H˛c)Rƒç§¢≥ØI‘ÉåJß$ûß∑jV0Í\ZTÀ®EW0ÇÈ(‰z˚äÚ-N Ÿµ.—cF\0,ñÉÂ>ùk’ÏµQ}§ƒ˙§KnÿÆ«â;CÎTµ\r7Kº≤ÛoA∑B•ëv=´À£9PìÉFíW‘Û+k\rkO’¢ö≈‰πx\\®útŒ*˝œâÆ>—∂HÂçŸ∑Lìß<èj]/Q}6ÍFF\'ŒB°√a‘}kr\røà,£Ω∏Sµã∫VÀ.;∞<ü¬ªgÀùU°\r´h.ãq\r÷ÎKÑ\r¯8\'ï^ò®¨bÜ\rn„NLºe∞$_SX˜Zf°°MÁ√\"][°∆‰9«‘uß£¶^hæmú,/FVbÕÇπÓrx®t„k√T¡ W‘—º–÷ﬁÁd\r±Àôc ·óoMOv◊6kW¿$â≤\0‰Ø◊⁄ππÕÕ±Å‘8ÖŒc- nsœ=πÏkp5‘¨Ú‹ë$˘YèU qÕoNìçÆÓCjÊ÷ë%›≈ŸûL¶«<„¯Æâuõƒ±´·Fzå÷Ä.Vg@JÂN∫Å°S${ôpXπ^˛√˙’Ω$ZwCbyÜc˚≤∏8»Så©Æ pƒÔSé†÷eı‹syŒíP·á•Gå\"YÉg.=k≤	I\\¬WΩéñîö ™Ã*“ ¨õÅ„ÎXˆ“¢»ÄHU◊“íin£`sÊ8˜®pMÿµ#l·Å¸Í≥∞TR=zS-Æ’ù”!∫∞\"£ïöIYïpÂ1çùòIÈ†Áói9ÎNW…úÚ≥H8#ÎWÌŸäåé’§£dc‘úìOëV§±l¥Æ\0Rä\\Qäõö$%.y†äi84\rª\nOjaÛNŒi1ö2‘S≈4qO°ïùih§P⁄aÊûiç»5HŒCπTn‰¯=iX‚òƒ\Z¥åÓA+f≥ÊbI≠	TëT\'»∫iíÃÀ©1S-¸ötﬁYmÍ»>Êé9®&`Rk?X∫ä+UŸ$r6q¬‡®Ì¯÷÷OF+ë5ÍIwqsuN$˘UAÁ=èzVUÙ÷ød{Åq∫r‹≈∑©<‰oJûm^(4vÜ⁄Ë3∏⁄À¥´°ÎëÎ“π)ÆeÏ!ä1$ú}Ïw≠,\" ﬁ+≥`„ò;~l÷ìîr¿’Î+ãâë≠°âZY‘ºÌÍ\nìÙ©∫BÙJgñ@$E(õ∞Õçﬁ√ﬁê›,dd÷9ôÉÓ\rÜÔQ‹\\0ûqI…çoÌê¨A&≥µ\ra\\mÓ=\rs˜W.[ ‡U9dY#wÛ@#¢êrk	U.0π´=ˇ\0ò9‰Vd”ùﬂ+qP∆^T;1ï<“*ñÊ±rmïkáp…<\Z∏&\0n®Ê™Ñ\0S∂út≈cf‹xÖCÉª∏´&O,y˜≈f¡\rXKr>ÇØY£C2ÕÂπÖ „\'•E\Zíáo^ï•¶AoˆiöÂ¬ò«\nFsû+)=©6•∂“@Ú⁄¢î1∑~æïZ1ÁÕóW⁄ãïTNzb§ÛEƒé±¶B}≈«AÌZjWZ}∏Ú»{ı\nˆƒ‘ı+[˚{i-®À\"çø&>Qècﬁ±≠≠%õÂ`Õí\n®9<˜•πñk€ñ∏òon¯Ì[w¬XßÜXÓﬁEte∆=:ßxØ2∑áÊXÀ9å©\0ÕÉ∏{z’8¨§∂º*Ã0\0$éF+§∂õZº.ê⁄´7òFÄr}Î-b∫26cX›ê©g«˘ÕgNsmÛ	§?Pˇ\0eç-úŒF?î)∆9ÔŒkÏ⁄wg?ZAÊ§∏»ülPù…\'ík∂úlCwÆÃÄ1r2)\\‰95\"@3ÓiíƒW9ïmk®Ìé¢G2∑\n?¬º\nY\'í1éjyV‹¿‚ìabuÜfF1©pÉscú_•7dí°ê#mìJ€‚/Æ\nπ…¡“¢gï	åÂA‰≠CÚÍÏ†‡ü|U´Q<r§®‡}9•—Ï≠µM-Áù‡Y3µïwˆËI·ùL∂éqzí;ƒ≥π‹9⁄+ûµx”—Ó\\cs¬My‚+ºÜŸüÉåëŒ	ØN’¸Ym•ÈÚfO∑¥Ct∏˘=\ry‘3\\[∫˝ôä+íÂ»Ë£åf∫kù6]^VKò0ˆ€°-ù°v@^˛ﬁ‘Rr©•ÙΩ›N7YÒóP…n.ÂV8ÛXÙê˚›këî}¢`Trp6Åﬂ´SƒZsiWÔgπ_g;‘‰0=ˆ≠¯N]F/Æeäiÿ«3í√∞?•tFõlûec¬;HúÀqì¥›ç˘>æï-Ú-≈Ùíÿ€,¿ÒÚ€N9Ê∑5Ô\r›øóqb°Ì»cÖ^s◊\'5ï\nÀc@\0ﬂ);/◊*OjäÒî ÑìfE‘Î#Ù∞7cπ©o‹Np+WXñ3x·cE!WÓ:\n…+ì¡…¨°™)ãë∏cµt66∂WVÂ•π˚,ò∆÷‰É˝q\\^y´÷≥û2Í6‰g‹UN-≠>Âπl!I\"QuóLæ:+z*éŸ€Oñ6Ÿπ˜‰\r†‰{fµuà≠›ƒ6eé<Ÿ$˙cﬁµÙΩ„ƒ÷ÒGq<0≈f…B0_\'gÊ∞ùNX˚≈Ú‹ãC[Ì»$∏s\n¨…¡ÚÀé˘Îö±‚é€LÜﬁ6Ç`°ôä\r†1»ÆÇ]√V>{©g≈ :\0√ÃSúm‡r8‡öÛ-BÏOpÈÁ…ﬂÿ◊&´’∫Ÿ˝’bŒÖ¶6´!∂âÃr*;é·∞3è”ı™R∫≤*Ñ√£Íˆõ{ù†Ú›‡∫çŸñT‰∞ `}:’7å=»ÚéÛ…È^îπùˆ2ì–®#<út©°∂FcÊñç‰∞\\„=)¶4*y©ñÈƒ[ãp“ñÂ˜„∑ºõ∞ëö»UÒéOz7·Üs¥u¿ÊÆ	§é÷PlóÂléG9™N¿ÙÏ:ìI;ã`å 4$´Ó„’Yã_ÃŒ‡NrkBŒŸÓôò:)Aí]±QÎ>S]´≈/òYÛ∑h›ÌIIsXv–Õ#⁄ìø4†tŒG„WqXö-™¸Ú1åUóW1!e;s«ΩQ\nËEΩU]†âﬂ\"Éœ|f¢N√±BÓ‡ç<≤C≤ÂÖS.ÃwO≠iÍ÷Øet–N—4à†f\"¸HÔT·Å‹ç™Ha¡-Ç„!õÀê8Í´o¨…mw’ØÓ¶äO2<t’ïÂøöRQ¥ë∆F)“€ò_Ép Ÿ8)n;ÿÓ£Ò€Ù∑µ{õñYCKx\\ÅΩ∫(r@Ó=´êπtI0åH#&†KßåaYîëÉÉ‘R†ªëê2=Î:tU=á)6=Æ™ã±AAåÅ…˙‘∞D“¥;Sm¢ﬂpãèò∞∆z~5π`öl+,ó∞J≥oBŸ‡z„™ùE†înIßŸﬁÍP5ºQ˘í¿3Â∞«_ZƒûYÌµå\\(YQÍFGcä›}VIeídå@ë*ü/í\08˙÷&™iRÓ4+`6{\ZärmÍ6ãÓÛ•ºLå|∑0\0>Î}k®÷˜\Z$”]«ò‰ˆ9≈fÈﬂg}!¢û‡ãm≈ñH∆O”Ê®jœml,å_ovÌü¬≥ø4≠ÿ{›~· 66èª¥ˆ™Oï\0åsŒ:’3+ìÇ\rH≥˙ÇNk±7c1Ûîyé¡è›‰˚UBFG≠ô-≠Ñ6≤-¬ “(2§`Ê>O=È&≥˚:£›Éï|å≠)i∏ì(ZM\ZC*¥aù±∑\'Ó˚◊W°i…ˆ0œ)a(Áa∆‹v5Õ^À	≤0rN0	©t˝~}>Qª	Œ‰˛˜µs◊å•t¥ÏÕÕ}#≥∂\"Yô`ÖçWñ£}+Äöc#∂3èzÿ÷uÅ™4èÂ¨ à„?.+aë8Èû¥PÉå}Ì∆ı\Z¨∆3ÈJ¨æbÜnA#‘zPãµH¿œcÈMoê‡ékfı-¿∫π·Àk˚K¿öå˜±€»¿çãúÜé9œµq:…M-%“,Ó÷Ê@Ûê?Â¢‰c‹ﬂZÕ∑‘ÓmÃ>TÆ≠B=ŒGÍkY|=pÒº◊¬≤≤¨ëDí.^A‡èJWacúa¿§…€«zÙg¯iyw¶⁄\\⁄V∏∑yÃR∑¯AÓO&π›w¬W˛[yÓ=µ»ƒR‹{“°≤å≥ö„àêπ¡;WìÅ…5¡Ú+nPm‰˜©‚∏ö’€Àbªóks‘Ts‹D÷–†Él©êœüΩìöiD0y)fÉï«!Ω©÷≥òôJ®‹≠ëê\rUN\\sﬁß}®‡í:„Ω)j2ı¸QƒËm∑tÀ9S‹UO2BÄgÇ;÷ïé•%ΩµÕ∫mÚÓ’RRW,ÒOéÿ‹…8@0ﬁπ€∂‡Ã≠Ø,Éø\0K}jÒ&ˆË“EnΩîñaEMèÚØ{ÒVo MJŒdäTç ˇ\0∏˙“uπZÏ‚¡«÷û‹Äi≤∆—L»„ßP<WB◊R»üÜÔM€ÕJ√ì˙S\0$ÅLZ\0…˙RÅÅ»©Tl^@•⁄z.+¢ ;Tâ#G\"HÑ´©»#®4˙cÛÕ1Ü3üZiÖ”>Ö¯sÒF˜Sk].˙›ß`¥·Ú›:ëÈÍk’T≥˚:¥ŒdSÚ∑q_!¯B˙ﬁ«ƒ6“^HÈ∂[cm-˛Œ{fæâ—~#Ë∑7hƒ,rµ7…∏p8√t52©Ï…Â}ø¯-ıM\Z;ÕMÜ⁄Íiï√∑=sÈè÷ºsB∂÷Óıˇ\0≥È”…©+ø&›‰dëü^\r}V⁄Æùheº∑@Ìµs ‰˙Wç|Wá√ˆ:Öæ£deKˇ\05åøg%A8Îª±Õt∆q™≠.ùDÆã~Ò«à¨¢πá\\≤Ωº∑â±Ê≈vSú`˚q]Ôã<=k©j^\\K¿t&9!ƒå\0mœ`söÚox™Í¿\\YG;£‹À),€9…‹;éı“¯óƒ∫à¥˚Ü‘ŸR¨1C„Ä› =9ÁÚ´•;¥ÃÂ{Ÿò$—u-B;˝RlºòWn2qÎÙÆ^⁄˙›tKõ;˘%íRbH€ÊIGBAÌ÷¢’-‰7%ñ˘m¢rWûáﬁ±\'éhn⁄2>u8 z◊7¥j[õr›ŸªäàÇGä≥</\0‡ååäÑç£#ß•+ﬂRÜßCöh8aÈO»«z6|‹É@¿NùÈ	zuÔJOn‘ÿÙ§\"2H>‘‡;˜•a¡òÑû(X˙‘d`‘¯f¢aœ\0ä3öê 4*cú“8#µ∞»\0˙“¶∂{RÅÔ@+qúO¡ræ*¶M]Iï-î€èòS°´g.ëêÌpìçM_1∞ ∆Í{€”¸?’⁄Mq\"øªªy,2Ø¬\"‡è¬º¯˛ÚL„=Mu:&û/`T≥ô\"æâ»\nÚmÛTåëÈ⁄∫)Õ›$g(´K_¯á√öMÑR…,3E9F±ÿ˝këÒWãmÆl‰:\\ó	-¬yêÄªK0Ë}˝+∆æ¡-ﬁ≥ºäÈ ™ﬁQﬁ@œ$z◊Ö.ïØi◊ëi7s⁄¨õ`v∂AÙ\'Éﬂ¢ó\"n)∂gdÙg9¢Íz±Ò”}ï\r‰…µÃ»	\0ı<˜Æñ]a¯ÿM§Àè	€qú≥„ÔqÙÎ]UœÉ#ó≈z^¥±Mr≈¶I∆‰_lé¸WMÆÈª\rN&Ü7Örd\'íG˝+ûn§ﬁª3Xÿˇ\0ÍõÔÏØœ∑èhIxlØ_©´zøãı4–aÕ1öv˘ô[ÂD∆ëÍqú”|cß±ÙÊ⁄dˇ\0\\aAÚˆ\"π¶”oÊ∂íÚGEG÷&9»9Á€Ô^}Jpåë≤ªEµ§z§oy2≈¸Â°ÛÒ“Î)•k7rç6ÃK~de∂èÀçÄ¸æ˛’Öm6Wtdöa¡‡ü†ÆãK{€ùy/tàåCé]Fwœ≠qVáΩŒ∫ôœáuπu0-q<—Ä`êºdèQ]ƒΩΩ”‚}CWπöXŒZò°¿__z’∑∞”⁄ŸØÁ∫kÎàÈ^&√‡u\0≠Ê∂“-†_≤ÿ\\ fèró∆y98Æ:ï‹‡‰ñ√±ƒkqxsG»ö\rç”)ûuaÛcí	„ ˆØ.∑ä{õÿ‡Ç3$éﬂ*ı›¯∑_‘a”Ô≠^Ú≥÷≤GâW‘å~UÊˆzºöv≠‰$Üç√Œª0*nõ›ì”C†∏–ı.•∞kdÜBÎña”\'”ÈI´x\\“¨íÚKo6’ÿ*…o\'?Ïı≠è¯ëµsu®]∫A\"øî\nIŒ“ΩxÎNKÎ;eâî»#õÃ l8˚‹éGÚ5ÖL]xOï+â4Ù<XÃUÄ`N‡x#’FÔºA–ú\ZÔ|t`º÷n§ÿ∆ˆ9Dm4næYP8¿8«Î\\<—yeôÜpz◊•F∑µÇï¨≈‘Ç-ÒÕµN≠M,w/<ÜB£,;Tñö]Œ°<q€Ædê·˚«⁄¥Ø¨éä‚“ÚﬂÊt˝‚Ì˘„o”ú§∂Í;ô˙åöv°€0ôêÜ˘˚’=F˝ÓÓ‰∏çDO+a\ZÌ>Ät©ûŒi„ï“\"V08/nj¥Q†‹≤á›∆¬§cﬂ4í÷‚O[≤$äVB7êsÜ‰TÚÌºmπ¬Ù’fClë†é6éAù˚éC˙j†•ôõ`ŒqC‘-}IbgÅâ¸¿å‘T\n·dÉ◊ê)·≥√u≈D¿Ì ÛBÛ&òƒŒﬁQ(íπËi§`(,1MÅ>cœ◊5#BFXræùÈı±,ryVÔ“úcîéß4»£«Ø“≠∆ax∆˘ÂÁû	ˆ´Ê∂Äôb∆∆I“Pâ∏¢ó?A…«≠CY›.Y$PÍUÅ‡ˆ8ÔÌRˇ\0jn∂ä›ZEÇ2ÃåÜ#±Ù‡UiÆ\Z‚5â∞v6U±ÉÙÆuÕÃÓK;F¡◊\0Á†8¶5ÃD‹Â≥…\'≠E,Ä∂‹`éæı#ßBj˘JL∂\nƒÕ\"Æåb£I>PpZèÃx∆∑QMÿ€∑©&F∑‘d®6ª˛ßπß⁄≥Û«≠JÎº.G\0ä±ÚêNOzËßRÂ©Ìp¯ZŸ∂Éb‚±Ïì	¸´qT˝Ï\nÿl∑hå=Ä8ßL«Ãl±$ı&ú\"c…#Ç\rSv`CpGµ+°\"‘NQæSåé†‘—(/ëÇjöúÖ!∞MLé…–¸›)âóî‡x$Ù©ë‘©‡Ó\'÷≥ƒÆ§dÕ\\Aπ~Ó	¶Öbt¡ËsöõvEAn\0Îıˆ©’sLªÓn2=≥Y◊(«$g5¶ÒØ^á•FbŒhhú…\rΩøö$-rpTc {\Z∆ºYâZBŒ›Nk£π¥ﬁC’èwb“Iµ1ûI…«AY4U 1K^,»%Òê{Ù˜´o3áåÑdVz@¬eœOzËµõù;˚-¢¥±ky%pÍÊL·@¡\\g◊öVÕM(9˜{V}Œ∆åj‚)›É⁄´^õ•imåkÖ‡Øz¶ILÒö≥!;…nq“†>∏®e°Å≤x•QŒOAHø4ı8ı†\0ÛÅå¶õ◊öU9›ÔA˙R·ÿ\ZF~yË)3ÅönqM¶=y®‹Á≠;©ÕFI&öò\'••/Aı°TªË∏c∑‰ˆ…µ072‹∏àFwºjπ»s∏T+ı.˝æ·†é›ßë°åìlﬂ*ÁÆl‘j˚‘ñÌ“´ìéE\nI\'≠4Ä–≥∂˚m⁄CÊ§JzºçÖ4q˝†F$UU»ﬁz\Z®	#h?Z3èØ≠&Ç˙cók‡Ç8ÎW“Û1¡œ5ìí›0>ï$C‘‡Áäw±6π¥ìÅû8$zWAg$z•¸äŒñ“∫è,(3ÔœÖ;Z[¿•]$òçÆUâÍ:‡“Èíâu;u(J Y	Í3“£⁄ﬁ.HV‘Ót›wP—Æ⁄ ÓbÎl⁄œº/?√€Ú≠ÎÔiÚ¯~Êi~—3Ä™[ÅÔä°ØEe≠¥Ÿv»≤ªÑQ\Z˘¯˘}Îë+ˆMF?µ+â˛tÄ<‡÷tßDTûç\Z{»‹åªíp™ãù„ëëﬂÿV¶ó‚ÕN–˘v“E!∞Ìé˙„‘÷-çï∆ª$zb»À∞πNüá^î˝?Ïos-ÖŸh˜°w»Î«z⁄ß$”S‘ço°Ëöñ´ßÎz#gA*ïí\0€Ø◊◊•pz∆ïqk5¥©m‰≠¬‰\'Æq”µjŸÈ7z~†âj^⁄c8¿$åé”cUmBtkÿf∂uA+…GÚÆ:RTæ†ıkSüöÍÚK∂é¯\0¿‡Ìé3«zÍÏd-\n∆wŒ®76@ç$iy•≈s≈íÃeg|±9ÈOµkÀdºµâﬁ—F…wÄH»Ô^ç\Z–©=úñßwπggjãÊ3H†∞bpAÈÇ;÷ﬁõ≠Ÿ^¿≤¨¡‰ô∂àwd©æïÂ˙;’2eSsch‡/·ÈRi⁄â“Ô’•⁄ÒÉÖ`‹s÷úËF⁄nùùéœƒ6…d”‹F^B1èS˘äØj”î{wVIBÂïŒ1ﬂΩ3V◊ æ“\'o9¯	á\rÚ‰∏Õs!◊|˘\Zˆ÷·˜0\0˘ÉèßÈNIrçŸªù’û°∑hb\0oôO•h⁄Km}\"ê]∂éX˝xZ¯ ˆ“·^22ûµ÷xc∆]jêE6¯ùÚºmí:Vï*(¶çŸÎ2	-4ˆg∆Tu¸:VZKtwjêF·Œ3˛4∞jˆû Å†UíﬁÏ\0√Ã_La∫Ù5f‚™G;+8\'út+:3ª≥HÿmªIupK0$˜<Vƒ1ÏAﬂ5JŒ›bO,·è\\Ù ˙Ví&–+J≤Ëå¢Æ*äxKX%`¢ä)ÑR“\Z∆—úR)é¯ÈTïÃ€±&iA™~q›÷¶Y)∏¥\nzñ(ÕAÊ`ÛN23S  ÁB≥T2Ié)Û“£v≈iô7qÆ¯Zi<g<ä!rµ\Z± ÛZ$\"F;îUÅ∂Æ¬’+Éö“û‚f5¯‡ú‚π}M„y\"çTEŸÿírs‘◊WxôFlå/POZ‰50	vœÕ]Hñ:ﬁˆﬁ“œÌ0™K4,UƒäºÆ~\\zıÊ¨›…izóç\nyf;I»‰\0ù£Ûíkìôß9˘Uõ∑1Ì\rå”ä9ÉñÊ\\„Â û}©ìN‚ﬁ9ÓeOëTÁÂLd`˝I‚ñI»&ô®»≥Õ$äC`·F1Y…ö$W˚ccØ9ÎI-”+ìúıÕ@8„±•ôHNTÅéµåõëVY23˙Tw\Zî° ”ëpºåû’ã)™mË*h„Áûë{Uà‚«\'≠		ë∫z‘û^p´…jƒgnsÕH3=\r]¥(ü∫å˙”|ÜTgSÄJ±q!]s”ü≠Vf⁄ºÁ=Î)!¶Hé]\0„”Ω+FXÌV8Îö¨íîj‹L†ÚOzïÉeàIEﬁPoÏ{–Acπ∫Lí1⁄ùÊ¸õH˜œz•àª∏«qä—åﬂÆy≠ÖÜXZﬁFw\rñ˘@∆{:Ã,Yæe„∂;±ï#çH^víN\0˙‘ fâŸ˝óäÏtΩ=	ïÁ∏`§@3˜áØz‰5\r]Ø¸‘äPÔº∞˚Ÿ˙˙{Vt°uIœÃW©’~ÚŸYr2µ±ÑúñÏKËTä\0Õ#îı¡©Öπ_õÕYX¸¬}M[XTÖ\\d]—çå€)GÈ˜™7Äñ…ı≠ÿêI.\n*°#∑JÜ‚™¸ÿÙß‘.aKl%R™~s¯U7≤uEëyF%rOq÷∑ﬁ∆AîÇd)Œ3ä´K!∑Ü$º∞„8\0Jñ∫üS√∆ÆõèÕ‘uÕA,Õ)ÿñ\0ìû1äﬁ∏—Â[O∂«ô-€\0H0˝≈c]¢≈&–¨Î∏u˙T¥÷„—Ï∑\r Èù„ï*pAıÆ¢+Ü’$kái„ó9Á‘ˇ\0çqË˚NH≠m*Ó[4 1çd‡pq€ü≠sUÖ’˙îùèDµõ‚äK°Åw2MÄ0r{ı≠[’oÓÙ31ˆ»ûc.8(xÎ˝”⁄∏\r[≈w:µœö©$`QŒ—˜Ì]ûèjöÕÕô∏äY6≤$å_Âleäı‰q«÷≤√–ö|¡Rj÷9®-◊\\’ÍGYT∫è úÒ¿∆=9ﬂxS√∑È¶¬XbäﬁFëeOòä2Üx\"∫	Xæ∑5¯Ä∫∏$yjWÄ\0˙uÆ≈U#AÄ˘Wk©»¨∑&1πööMΩï° <∆8v.„í@Ì˙WåxÓ”˚&h“Y?}t∆wÅS6∆2CüÈ^Ω7äl“Â†Tw⁄≈Kc–d‡wØÒæª≠¨Ã…;»ÅŒ20”⁄¢ÚÂjCvÊ–ÂÊëôõv	\'≠D™få1rNy©V3¯–£`∏û™“§X¬Æ{ökGÁWm‘∑e®Ea/û#,√†\'∑z}û≠!Ωã|æZ˘Ö√Á	=k\ZGÁöEÂ≥X îeπJMuÔâ\ZÊ+´VHèû0Ú˝9„ZÂ\\)«∂)W=Õ<‘“£\ZJMÓ\"Ù´≈Ê´∏∞ÕF∏QÛÈS.\"æ\\º±‰˙VÃV$Kî+(˘G-û0=MLmaéŒY„πˇ\0Il¸8ŒÏ˛ï›√ C;¢Ü˛‡U2E#Ã.rcÁè≠g%&äD∑åkn1∞W!Ü>lrjÉZ»≤I.\'\'µb+‘©$‰î_·Vñ´qß]€Bˆ˜Áîüëóút\'°Ê¢RÂ\ZW‘Øf∞9\\	Álhv¸ò<úü^ïó¨Y˝éDEπéTl∂#lÌ=ÈÈw=æ÷ée\n≠å7# u«“®› à‹Ø¥‡T∆-J„{©\0ıÌQHﬂ1ÙßÇ÷£~Mt!∏zËÓ%íÔJµê&‚ë˝Ë…fŒqÛ›:W4:Z7˜V÷ì«Ô\Z9ΩL†òÆ> íŒ•ü ŸÌÔ[vˇ\0b“º´ú≠·p»`(vÅé9Æ~NWÆ0F*›©y$E@K±∆”–‘Ω\\Ò5≈Ö≈ıªiﬂp¿æh\'?ºÁ8¨©°#O4\nó%R≤+`Æ;˙S]∑·X`”¶)Û_PJ ≈}ß$c55≥bTŒﬁø≈–˚\ZGoòsÖˆ®õë¥tœ\\£~ H	FÚ’gY7sÚï¬uz§v”[≈m√$åætó<nE<m?èÂ^wâ·∂év?ªgÿøQWmuÑ∫*±2.«D≤˜Æj¥\\öíe)[BÂÈKIYã8pA*‹Ÿ„“†V•ΩªÂ¸∆RÉ?tå‰‚≥$∏i%bT(\'Ö•M⁄Dä\ng;áP*˘\ZAr¸\";S~jzÆÏ˙’w)#˛ˆB8,jπ∫,ÃA‡“…o$ã∫6ﬁ†˚U®€QnBX‡Å…ÕKf∑ãkaõëœf2N@<÷…«ÇÈ˜	˜¡ßΩÀGRsè“òø)ÍE$•p{íi∏âO!í%b¿üOJ†Ãÿ#˜5u É¿®]˜ÚéGZV±H¢cb¿.N{Vï˛ìwß¿ûteO\\Ú2Ù»5\nR≈«`W¢ik¢ÎæΩ∑ª∫äÌË©,π.\\g«QÄKœ4KiÂ@Í„Ê°πÇ[rùOJ◊öΩ>aiw[Àn⁄√úS5[HR·•Wç∫(Íµè6∂cFvü2€j”IëUfF8È¯◊k‚˚õ˝MNófˆ6÷ÎæTUÀ,}Gl◊TÊΩ\'√6	™x{Q€#AˆàUgòø!‹r{qÅÔUŒ÷àm-À^!ÒmÏöuÄ”ØÂX,HƒfpzdcûæµƒÍ∫ıÁà¶2ﬂM4œè*2Ÿı¸rj\rR⁄+9ˆAx\'á,‹å„ı¨Â∏Xv…‰ïwgØ9™∏ë^È$I1\"≤üˆÜ*/æ∏Í*ÌÓ°6©,r‹1gD	πéI∆y˝j∫° |ßÅI¥=I-löhÂpPÑ\\ê[˝=j5Ñ„£oÌW\"π[x\"S\0ÛUˇ\0÷	ï´ƒEç„uã˛[«”ÈQ)[P2!∑üÀi™¿6:äË-Ø≠¥∏¶Q˙<[∞¸rﬁ›òWL∫.ñê\\}ö‡¢¥Y\0Wt¸˚◊4+¶∏qÂ7óÓΩì<úVU4∑¨x∞Î1\"‹ƒëuB∆†ÅÏO\\u5/Ü4ùF˚˚FTó˝!2æ¬¡âø∂y¨ã[KI\'Xc,2∂¨H#ûºt˙Uç3≈7æk∏t˚Ñ?Óﬁ)P0o|RˆIªKa6˙^)”c”5si(BÄÓì¯œ®ˆ¨Tü÷∑5˚Á‘‘\\O)y¸¬[–Ë;\n∆R$V—“6*Ó¬… ÛÈQ„o\'≠=ü9õåzSD∂4»I≈&Û‘äk{S9«≠VÄJ§±ıßÄºÜ‘H€N¸i˚Å«cCÚ˛`¬¶Iv0mƒ–Ê†2\0¸‡˛;åÈ4È>›4i4r∑Ál\"Æ};’ÿo“(^ÀRóÌpeå`>T9>ùÎóÜvÑáCµáµ[í_¥ïì9êıqäçV¿_ÖlÖÃëâ$Ññ€@˚«ÛÆ™ﬂ¬zU∑áıYı;¡Ã,\r¥∞»:ê˜œZ√–|!®¯ã»+H€àBpH_“¨‹≈§È£Mª”%éÚD-Ω7G‹x#ÉN5%{	∆Â≠:mF∑h—¥#2y¨>Î0°=Ωkí‘Ø!∫3Ã∞Âñvî>r¿tüJFÜH4—tXòÊs\0Ú´:ZŸﬁ∑ˆÜ‰áfÏ™áÁ∑∞I)9öŸÏf¨◊÷-Jæ]æ]U∞8Œ?¬®ö◊Ç\r≠$Èÿ‡Ì‡˚˝+.HŸ%e#G•ovK\"€É«Zsπ•¡bIÈLs∏úVÑ0-äRrπ«5<S£`x¶R€‘¿I˝)¸Fiåv8Ù4Ü+±¸*?≠=Äûî¬}(≈¿\0}h$m&¢•94Xõ›öi¶É⁄•T=M1åAÜÁöëÿ±ËcÅMŒΩ/2NÑÈ0iw¶	gä˜t`°∑m¿í3W|9°Í ’§ÉL≤éybO7À<|£ˇ\0◊K‡çJﬁ€^∞öH†3FÍãÊÆQ≤p3˘ÚkËªM√ΩƒvP«®Á»9‹yˆœOjï?~»Mi©ÕË˛ÕÜö◊öÖí%°!Zﬁ-ÆƒÌ9‰öÎñ=6˙+õ´ô\Z4∂b±r6:‡˜ØÒàµM?≈”jO®∂\\y_√q∏cø|÷ïìM„][õ›_Ï≠y≥@cÏA=xÈ≈©;\\Áq±´¨¯›-ûﬂÃ‘\"öÕem±ån\'sÌQE‚ª}SN1›_∞û7 √˝Ÿ]ΩO©Ø7Ò\'Ö$“eäÈÆ“xßb…úˆª~U£©x*¯•¨∫S›ñ4,≤.Ã«£ﬁπ1XÆIr≠\r°kù¢Ik™¡ƒˆhOöÿ«ö√Ôü≠TÒ∑óF[À+c∑\'À≥¸«ØAÈ≈b.ç‚]÷‚	§_1Ó”»<=ÎR“5≥HÛ6eUNG5‚Õ\'.fÕˆEπÙôÌMé‚€ÕéOﬁ(à|Ã…JÙM}\Z8l\'±öwp—≤ñ‰c≥éˇ\0•rﬁºí‹y≤›An#Uâ23¿‚≥|A†‹C©‹^≈¶œcbp€d`Ey’ú™KŸ∑c>∫°s©⁄ËW±[…- îç£M I˘Ëk#OÒ<zyìCΩπ6ˆ˛^‰uaÚÛúﬂ›kœ.ç¨˙42{ô#›\ZnòáAúÇEM;⁄ﬂZ< &äÊ\r¶$v‹ä;‰ûy•G„ﬁ•7sO‚4∫lÒª-‰Õ.Dñ¿—»ß9˛^`—≥ÅöËoÔnK[{õP<∆.í2ÛÉÈû’ól¡%VeŒ»ØW	M”ß J‹ˆûHÖ§âìúÓË}EtZ,Ì≠Îj◊aE¬líy8‡ˇ\0*£®›&Æ∂‡¡eZE8Û9»Õ^ÙnÊ(áA<Ô[B	˚“ZâKõk+Ë„x¡\"˘I^Ñƒ‚πˆé∂ök¶u#àˆé≠Ëk–5OC≠oúP‹\\(Y|•\0JB;Ê∏üi/£»ÜHeL±\r«ÊgüŒîa ÿûå≈∂ûK{µûŸ⁄&FHnA≠[ΩNÊÚÓkªªñíKÖƒ¨ßìéZ«Ãê∏A?-JI‡7ﬁ≠,û„–Åï…rÃŸ˙ı®cL»´úd„\'•j=≤õuìxf\'{ÅQClcê1U áú–÷öï:0ëêúêq÷âÖ∫¶>@};÷Ω≈ëíC.—œ`1äK}´q#jP[≥IÂ˘nI`qêH˛ÓxœjŒˆ—çªËåô≠&«pc!°œZ®Ì∏êzÓó¬zÖØá.⁄ÛGÚ‰Y ∫2Õ˛ ØF#ë\\§ˆ€	0√Ür\rií’äIÀﬁ¶‹£8ÎQyl88ı2·√wÔäæU∏5•ãUo·√‚úbÛ[\0÷´íT29ÎVP	%Eëà\\Ûé+)-E≤ ï±ïN\0˝jª∂A≠+Ùä71+)∆ıÔY≤ mcU 8·éF;‘aòˆ„÷ç˘Îè≠5éÜ»≠¨2aÃÄg>ıl  Ónïû9ÕHåYÄ…Õg(∑±-2€>mÁÎZVÿêhÛ¯Ù™∞[	@˘±¯VÕù∏Psœ“™h±<·@V*bbÿ¿´‹gé¥‚cûµµ +ãí∏úfµtõ{;ôYÆÆ\Z(vúaIÀv¨áUó\0˛bŒÂêêßÂ8 û¯¢¡ceå^2¢ IWi$d/l‘ F∑2&Fœ∫Æ:g÷™œ\'öCèaOÄ6‹„5HØâBÂT9+ﬁ≠¿Ê5e\0\0F5¥q9˘ﬂg•YKrFÏ‰J¥&á©Al˚RÔŒ1Jë√π\nyö⁄ #Ì[äÌ<çßåÛU‹ñ»∑+1\0ÁÏç∏\'ËjºN\n·OÃOJú¿R#∞…8⁄x57[a≤©\0ÅÎY“úÄ√`åı´ƒÖ‰ö´r¡æU∆MÀ0E$Ï\Z!9<‚∞Æ.⁄Y@\'x5{R-	ëúc”Ò¨Cåú‘Ë\\M(Nı∆j\rB3¥”π¶BÏSØ≠9ÀÌ\n¸˙\Zc1‰∂#<qT\\·ˆ˚◊A${¢%*ƒπSêG„R E|e∞+ÿß`™‰MDrﬂ·HcÄÕ;†-ÈIåäG$åw§É∆O•Ûı‚Ü‡Qú’k¢£Œi\\Êõé)†jÕ≤Û∂q”ä¨†í\0ÍjƒeáÓœ,sÌ\nâàPg´3PÊ;18$˙P√dxs÷êúgèZÕ-IcpF*X„yäåÌ‘l?zz9LÄHÕhR∏3I28]¿så\Z3∆3ﬁò@Œrqö\0zÂ\\ì¡*M€â\'©®ÜsÕLãπ‹≠1S»‡w≠\r:Ì π…b£Â∆:˚’lu…oz±m:Uïs¬±« g®®öV”iój7-˜Æñ»2É?ÆsZ:îMdÛ-¶»`+õ=O9>˘®,4´8µ+[»Ø\"%∑Ê`åc®ˇ\0]óâÌﬂMºqéQ®H0≠êŒzµÊ ∫ßQr#TØ3œÌÔØ4ãœ2 Ì£|cÃâà‡éïßk≤i7Zå—»^9	\0>º©#‹U{€TÇ;ß[Mπ‹Uy<qV4V}÷wYí|ƒ%ç2pH\0ﬂ⁄∫jWN<…ŸÍ$∫Hai§Û8eBqÚ„äÏl~$ÿÎwki{k¬SlklÌlvaÔÎ\\•Ã:9”Æ>’o∫Ë,OÂ∫`pYHÈÎÕc≈†YﬁMkmm®*º©ôaÖç±˜}ÕCT¶îûÖ&{‹\Z~ùßæ§∑qâXc ﬁ\n©Èåt‡sIm%Öûôt‚{[òÚeT1ç√Éêy˝´…l¸!‚ir⁄[4€1\r˝yÍÆèDè≈7œ¶ﬁ[…\Z§Mπö\0_^2s≈c®ª∆E8\'–•®Í0àã[Ló∆ÂRÿÈ˛ß§È€P.«i#L3mÏHœˇ\0Z∫üxoL≤Ã∫ñßf∂˜≤3∆ZËÌ⁄Ω^ôÁÛ¨˝&ı|ØO¶ZM\r÷ì®/ô\r◊ lîë¯~ï‘±∂VFR§ë^ÁK{M=§Tµ¡ﬂÔÙ8<\Z‰Æc∫ë˛«i#^«ÇWåÎ¯Ò]ßåµ;ß¬óW\r}¨q>uoJ‚\'AdÔ™Eh¬($\\íﬂ6Xp⁄ñ&oTKÖ∂0eW{∂Öî˘†‡®ıÙÆÔ¬&\r>›d6≥ vóü#`ÒıÆN+ç?Xπªººö[K¨Éƒ¿\r¿Ò˘U›\Z˜P∏å£œ∂÷Îëº‡úû’’Ì-pM£◊lµ«∏‘D∞K\ZC\ZÅÂÏ‡®=˚÷Ùh_âU‹∆qêOz·|<B(◊ÈªúW†hhëÌﬂ°≈w∆íÇ∫9‹Óı7 Ñ*©\'ìVÄ¶∆)ıÀ\'vmdQEIaEPHM”I¶Kb5C ©‚´ª‰sWb˜ ΩS£ßLˆ™≈É\Z≠ö∫&‰Ï€∫S∞‡“Æ^î3ìRÄ@¸cå‘pM1Å ‡’$Lé¥–˚A5^g)ëé*πú9jŸCA\\∂◊R{ê*¨◊`t5üsx2ƒÛı≠RKÀÖ*y¨	!k…8ÇÔ û\\Éﬁ§ûÙ:ìœ¶k\"Wë$IV@;Çp}∫UXFl≈¶xÌ÷\"“;m»„<‡{pk3^”§“‹≈+·ô©du∫Kk¯ÏxßÑ›BW	á¿V<ÜÔì“πﬂkbˇ\0L∞±6¢9Ìã¥“ï\0 N0}{~¥‰íZÇ‹ÁÜIz“›:âbŒ—«#öc>3⁄ö~pXúüS\\ÌöçL8RFN*≈€»∞≠õ \nπtr∏.ß°œ•Bˇ\0»«ÂR$ü0i|¢3\ZácÚéÿ˙R]Ñ»<≥⁄T·Ä<éµ\"FØÅåUâ1<Ö’˜Tp)Ò¡‘ıπr‡˛%Ï* ¬ıÔR¢(_jq[&Ö	±ÒÂrF‘ízõÓ‡c9ÎÌL∏1y™d]ºúgúQ†µ+:7Ã=9™é	#5eÂLç§Ó5T˝‚s¯V2e¢-ä=qä≥ ı9®ÂÛéj—∑ÖåC‰·˘\nV∞ÿ«ÁNPÑÌ(IÌÌH¿∆„8˙U∏ÃFd`ªGâ=}j˘â∞∞ƒíÇf«#ç£ö¨  ÜtûùÒW.féyê¡ñâ¿¡Œjxc\0(˙’≈7®lD∆‚6Hˆ·@\'9‹}jx‚$`‘¢\"§q«∞ÎSà Ævê=q[E$K\Z∞ÖÎ◊µJàsåpEnf§S«L\Zª#£ÍŒùòÔA¥ÁÊ\0’9J∞∑=±Q<¯$Ù«Zô-4Ÿj∫÷ñˆ÷ÈÑ3NÁ˜àÍv˝‰+å÷µ	µW1\"≠≤˘H»6Òìå˙ı©Eƒkfcéb“1¿BΩ=¡Ï{~5Veí ˝X˛h‰˘‡ìúëèî÷<ñw4πg√WíCvmnø≥Â`&Á\0Å–Èö∆Ò\"J¬››‚Ú≤Î≈»¯ÁÛÆ«Wπ∑”lC€ƒW|a1êv+éõ±˜∞∏Æsƒ˜›xwIäñ1jœ√n»Œs◊4•;;0J˙£éu :R˘é#\\ÌŒvˆÕ5•…Ëi†‰ˇ\0ZVÓ]â¢¿qú`söˆ›OAªπ–Ù˘Ù˚Ñ3⁄ÖLBr„w*ßß„÷ºF\"3Ô]¶ë‚˘l4ﬂ≤™º©◊æ^F\nz\0*„QE$zŒó‚1¢i∞≈≠Bmfv*c%‹u∆vúrsYzﬂ≈m9<§“ \\·»ú:6–ºÚ:g÷∏õˇ\0à/q†Km1®81º€~˙z_ØnkÑ\n\0≤]Éu…˛Uî/ÕmEg°‘¯ìZæó˝1AÇ+ñ>PI≥Åå=«Â\\sÓNyıß…#;aú∂:s⁄ö£Ò•ªπD…Î˙’ÑA÷£Aï‘¡Ä8«Z§Ñ@⁄™…&r;‘íøUWlû‘n7öxLqH£-÷¶SÖ§™Á4ı\\éáÈHäzözí“ò∆êó)ìúê{’‰6Ê’£ö\rÆßpt<üE>’QK1üÔVÓç™[i•¶{¥π£ÄTúÇ2+)∂ñÉF…ñwD;9ÅU…!â`yÁ5∑˝£!Ü˝Gów;K¬´¡√dc”ìwt◊	EP(ÿ1åPõ{Öä.¿ì˘Êï„∂XA3nbNÂ””üzªò◊:e≈‘lÌ$D1â8NÏOnq˘‘≤«¶ñ<ƒ1M+»√ëåupA‚¢SMŸìH√2yXd$êxÕUxŸvÄ«ûî‡·õ<‡t=Í’ÖçΩ‘Sy≥˘2  \r§Ó>ïZ-√s0„4÷‰”ùJπò¢∞µ\ZxÈZ∫\"€œvm.v§2„tá™c∏¨±WÙH~’≠X¡Áy>d»Öœ‰„53¯X“‘Ô¥?	[Gˆ´•1^GÊcVÎÜŒóÎ]&ß·;+KL`nnÇ§vÏ†≤0ŒÊ˙U}SIø‰’gñﬁF¬ à©Ììû{‘⁄oâulÁìÏBÓH–£I\"r≠”®Ê∏)Tsm^ËπEDÊOÉ.◊ õPcŒT\\)E;A$g◊Ò¨oÈ÷Vó∂Òÿ»≤∆´π\0«®…≠MG≈:º∫i∞æôÊï[xïâ$d`ÒÔXvó7›£4~|é<∞¨π›Ë>µﬂ)F1≤1WnÏ xh;	‡SíXÑÖ¬ÿŒ3[ó˙}∆ùw≥aﬂoAˇ\0ıT˙}ì››¡Â…‰ØùÜBìú‰W7µVπ¢F4≈^…#`IBJïœj4âÖ∂ßo2Ja`ˇ\0Îw„ΩkﬂY,%ö±Öc¥é\"π˝≠ne<èÒ™ãÊZ–øÆi∞Y‹G-≠¬‹E\"ÓfS¬üOÆ9¨ÜløN1⁄Øœ4RZ¬â«Pwù‰á>∏ÌU\0¬Æ)•f&F\0\0f¶à6qÇF8≈>9∞\nÒŒ	≈_ªP∂„ljf*ú∫Õ,X„Zñ!¥Á\Z®œÆj‹0è*•…„ÅúV—bhèÊŒ9‚áFcÛUÜÖì‘ÇFFGjFè°5•’ÑA‰1Y£fèÇ¡z„æ*	ƒfgh’Çs∑w\\{’—+BQà‹0júÔûô…Ók9\rqï\'>¥±›Mi\"ºR≤Hß!áS◊h[øJâ°#Ê\' ÷/V]¥in%M“38c◊=MWi$a±ò‡c5j5◊äﬁ∫∞“ÆÙËû(Z“Ë∞\'!ø>ùÎ)>V¥ÀŒ:◊C·â.ÁöKKkè(Ì‹#…ƒû£Œ+=¨—&diÅâW%êgüJ∑¶œ˝ã≠Ÿ_¶÷X]\\Ócø2ªVE/2/≥¡sõ å@9‰Áìﬁπˆ9PH9#äËµõç&Íˇ\0Sõ|“ó∑ì±|ı#”¨KÑ›£‹°íÂ‘dUA;k∏hA±ói‰{’˚H·íTC\"∆%ü¢‘ó˜jî!„Ñ`2¶ﬁ3Åèj’πv-Õ≤âm“‚?:`Ü@«‘’ß≥î∂i/&…A}å}‘˙bÆiÔ-‹≤Y¡j”œ:˛Ìf9«~¨Ÿ±ªWr≤üõúÛÌ[æø6û&¥πÃàC6^,á\0Ç2*z0oC•ZÍ÷ÔÂ´DÚòUd´wz\n‹öˇ\0I’nn≠ÌÏ¶„Óı$;›rî8\"ª≠7¿]ºZÑ≤7%]q‹ÈúÇ}˙TöﬂÅºªª´Ì6(#àƒî™Cn$åw8Æãﬁ◊3ï⁄<◊∆ökiZ>ù∑Údà¸¿F◊PA\0„©«≠p÷ˆ“Ízô˘TÀ;a\nªª{\nÙèàWó◊vë-∆ùï%ò˝‰G†ﬂéÏGOa\\~ïj“_GJaÛùPòP;‹å/~ïüå®håΩGFí∏≥Ú∑À∑Ô¬ë…È÷πÇç<gÇ+›-íÚ[ÌÙ’ñÓÕI[˜@\0F9˘Ω»\0Wé¯àC˝Ø;[ï1Ô ìäQL®∂›å∏ÜO&á“ë3∏„•JËdûjGbÈMlOŒè®¶ê¶1û˝ÈUÄ‰—éîÑsÌﬁò»\'ÒßåA‰S\0œzö5]√ìÔH\rôD%¿uà»πìv\0‹:„JkGÑ$äﬂ)8VÍƒ6ª‘$V≤3ø›€ñ w8’ÁX≠ëb>j21¥û£™\0Ï¸„]j∆≈tÎV”ﬁ(É» —ïîπ°™~(Òú~!πÆ÷ÒITXﬁ>FI#mÕpâ+C)x§(GU≠=-Ôßƒ˜1€»2Uòd:‰÷oY]Ç–é˙Ê\'2B≠Ú;F\0o•ZÒ=•ƒwæ|ƒË°%Pø =:S<I<i´Bcä›]QKòFn‰èZ≠‘7Wenê¨L§\rá°Ïj˘R≥Es6UKÈ⁄·23$`Ñ\\πÎäd∂“ã¥8!‡SR€€‚‡a…„#äíieë›UvÉÉéÁ÷öI=fñ äku‡ÛﬁúÁ±#Ç*>ıhAå/J@psJÁÅäALc¡ÕDÏKÛR)»Êú7QF¡r<Ó«©£ÀlÙ©Ç*s◊ÜBOJÃF#$:“Ì)≈âN‘ÖπË(Õä:”ÅÎéî`¯ß*Ä\r&gÊ Q¥ÙÖà4ô$‰–íC´° éAÈ˛	Ò.Ø©jè}=¬^]Y¬3ÃÅD8\'øJÛ\08£§…iÀã®Ãä—ê∏$˝è„dÓ…í∫=íKΩ3ƒ”Õ(∞Xoge`õK’{ﬂ\'è‚ù6ÔC“\"⁄,∞‹n˝·ByòÙÙÆ´·èÉÌ5%]^ÌÓíH…Sn»Q”ûıÈ>+∞ÇÁ√ÛG$»®á¯«GΩnß7Q$f¢íπÛMæΩ÷pYﬂD—]AïYà‹ŒNG≠oÀ‚“ö K∂∫≥â\0ÿsåcëÌÉY˛/—„∑≤¥πÜÿ´8√IådéGÆsÕq÷zäÿ^,≤¬œ!—[nÒÈö¬Ω6§çìÏ{GÖº_%ÊÆ\0µ{ÑXŸ~~´ûx=Î®”†ÜÓ Xú≈KÉáÄ{ä˘Œ?‹C>ÎFñŸ˝€úè∆∫7≈öÜù‰^§í›H€∂rJØL„∑zÛ+·§ï‡hù…|7zñWÚiïólrÏÕuü⁄–^-ùµ‘óD{6eYA<fπˆkM6·n#â¡\\´¨åı{Q÷ÛMû[B®\0Q\'ûÍÏO¢wÈ\\ï©©…Jƒ=ƒÚµÉms—≈!TëWácäW∫ÛÓyQqüô‚®∆kíÀ^H˝MZñKgYïñL|°v∆	$ô;ïıKó∫õag0!>Z≥g`=≥SÿiíIe4Å7)m]«?”ÎY—ÔíuE$ÙÆíﬁ{Î(bΩ±0Ï•ò0Ùæı§Ω»⁄ Ã	«€–‘— ¡1íå8Õ\"º≈äÖ…˚£†˙SK‚\\ä“˙r6ygçwrº¯TZî◊rF íi^Ÿ\nÌû}j$õÏÚ@\n±•*@Ò≥Ü‹®#öMæÄR˚éÊÆÑ¸ 3ï>ı¢ó0ˇ\0gY7öÈµ„?0-Íµ\rºˆ¶M◊vÕ œ;N3RZ€=Õ‹ÕlÈnà§çŒ8˘˛KP	4˚´0ì‹[§i!!c\'üÀÆ)m·V?2ÛÔS›hœß\\(ö·gÛbô2UΩG4È•√>8™≠`eyb+ê:t≠\rU∞≥ómÊëg}\\IÚ˝j6’ í8ÏÓYñŸ[*Ëôaûµõtm$ù“Ã»b\'Â.0ƒz÷rJJÃ÷›x”Ï2‹=ïñÕ„A$ûbEï‡Ø¶;bºˆB˜2ªÀ˛±…,OsZ í‹û€©ì>G*:˙QNúa∞zôrB*G·U\Z=≤pºu~W!∑u¶§w‡ü“úÇ≈	œ˘˙“ìÃ…;õµ_kwBQ0zûïLJ—IÚcû=Î>öFıxÆYwêxŒW™,ÿ`ZùTêÂO8#•F-ä∆Yá=™„%alF@l``ëR`¿ÛÌQêH»Ì÷úk¥Lel¡@<w©aãh°Ω>I@ÉËi∑ò	ÎBΩ«sj÷%A»Ì÷Æ¢†»&±Ìnä¸Æx≈Z31RËQ‘˙U“;\0≈CqqÚñ´=ß……¶º‹Ú);àïNÈ	\'q5n÷6Œ{f™¡r£=+j∆,ê≠»ßîXÜ‹∞z+]√Åﬂ¨C›>úUµà)˙÷©§∂≈NEZà0R§êMM¥gÅöv’=©àÅÉb®ﬁnêñnI≠BÉJ‚3ù¿ciäƒZe‡≤úªB≥`+z—ˆ◊∏…Ω∏öàRIü“´L á)«≠G*ÊÊ›¨Os&’Œy˙÷$óœπê‰‘“^∫H>ıè®Ã–íQ∆X`ëÈMÇDw7I	$û√&®ÀÛ†˜®‰îÌ,*1<v§hj€î‰\nûGúıB⁄B´◊≠HÌ∏ÄO„@\rg¡¿ı™ó	ﬂÅı´¬$d‹HœjÄÏQ…√˙˙–]¿¬úı\0’eCÅöΩx\0U,‡ÅHh\\s–S ‰˛ÁcÅäFßa…†c_Ó‡u4ÑÌQHX\ZkıÎ@ÜÁú‚ó\nwΩ0\n|€øªR ·à*\0¿¶¬·:u#ï∆{}*‚∑≠O&YCt5“)È¡¿†≥s¿Ê¨[$+`/RJÁƒ„U⁄†Ø†‰÷¶ÀkÀuyc∫∑uGê!√úïœcN6ΩÖ“‰˜:E¥õR\"–,hí»wìnHRΩ´\nÊ#•J„or+–\\”Æµ	Ñ\r4ó{„ºa@\\FwÁ?J‡o\Z_9÷B+˝jÍ4§“&Í‰h›±O‹Çπûj8¬í†ú)<öÏ¸·≈’u°ayç\'è(ÓáßPs€5Öj±ßfRªÿÂUã33I‰ÒöñÖ≈“EπS{‹…Í}´“µØá√MÖ73Ÿôfágﬂπ‰Å«•p÷\rev#x‹©e9®5Ö<T*Øtß6iœ¶ﬁhç I°ó\0	U~e9ˇ\0ıu–¯U≤◊ÑZV™ÌÍÅ•ê˘I”Ä=z÷5•Õ‰Ú√j ◊+Üe#±Œ+nOæßßõîO±›yåT3uP22;5«RI´Tﬂπ¢≥zà<>ª+x„ö…óq⁄˛¿úW6ìgo5¨í¢Ifªáî¿ñ‹zÉ‹ÙÆÉ√û5óN”.tMe¶KéD@¸¿„Ó∑ÎÕcﬁI%ˆæÏ–m`¿Û–cÉ˝k*N§d„/Ñ¶éyŸ›‰{˜îJ£\'+ÀC˛5◊¯Fﬁ	–›I4j–»$çëÛº9«JŒ◊“Í(biT…o##:ç¡áQüL*—í¬◊Fπy≠Ñ∂È3*7…Ÿœﬁ›∆k¢rÊÜÑ(Îc—%é‚ﬁ“#áõo…˝‰¿Áo±ÎUÂÒcMßO…Zí∫D±M<≈=pjéã‚òlmnØé˙$`áÊÿ»˛ø7Ps–zUÕwQ—†Ä›}ñ&ï◊r…´0n§å‰~¬‡”‘—k±f3uycs´ßyñV®Ú‡ºdè|W7¨¬⁄Æëˆ=;OX[â’£`ÂÍNyÈ⁄ÆﬂÎíÈik´{t/eΩë]$å`∂6Ú2@#•e]¯ÔX∫”fû\r2†”é€çíbÑå)ú`u¨T€ΩÅµgsŒÔu{ªh•±öUí3µÜﬁUΩÛ◊5^ÔY∏æ∂1íﬁX\\m„ø>µoƒ\Zå7RKCµÚ_å*ú∂s◊≠s®Xø\0®ØRîSKC<&T9-hÈÛI˘	ö¨]|≈B˜≠[O#Ñ\\oÓ+∂W2w=\'¡˜/vÄíw◊=Î‘t∂Â1«‰∏˚õXçØÈ^ùß_FBú„äÔJÒ±Œ˜;4b\0ı©Õg⁄‹âT|√\"ÆÜ\0uÆ	E¶o	R)ª≤HE4æ\'•Mãr[o™í› „<Êïg7c*:öÆFgÌ5,\Za4∆û?ÔQôÅöã%±“7•Vëà•iÅ\'öc∏+Z∆6&‰aÒAqé*ê`’Sr∞Oz›F‚π¶éBÚi‰ç§÷d∑…ëQ\rIYI›KŸ∞π†ÛÑ<sQ5»¨yı$ÉP-ÛêA>ıjFµÕ¬2ry5ï,Ící;Tm6psüZ•svä»ÕZV“ﬁ®RG^üJ√æø\rïBqP]_\0ÕX7ó‡üîı°´jÎÏ¨Ó≠t∏µ{Ω¬ÓDH–cnÓwœLzäf´⁄ÿ\\…2Imøu¥´¬2ûºTæ\nö-∞¡n‚Y•,”≈!c8{Ü¿?•söÃ≥ió∑Eﬁ∆bPC*ÆÌ›=y™L,]moG“\'ä‚ÕÍÅiaó √ Œ\0#µpöùÎﬂﬁIrÁ\r#Gß=+J˝¬#¬ÖÊò|Ó –1€^µœ Ã>µïI=ää$∑∑ñÍtÇ$gw8\n£$’´;b∑RZ‹	T‡Ì]ºÁ‹St]Rm\'P[∏#éI2.p7gåT˜zÑ◊óÀx»ë W˜cÅå˝j#k€Ωä“CÂ9V# ØΩ4&Nq≈[\"Y≥3Ó|úñ>ßûjH‚,3é:N¡rc8=:’îàÁ⁄•é0Ø˝*]õy\"Æƒ‹Æc¡«µ#ÇqVô~\\Ê´;c<ˆ©ê¨Ö∑dµŒH$ë“ñf=ÜI™í6∆\0úJ≈≤ë»}¿ÒÈä<ÕçûﬂJrê§åv5îÛ>¿=2q˙÷-ñ)√`Éúü∆•InÏÑê¿êT‘\"¿m\'=jSg0î$ÉÆ^∆•ÿ,Mº„\'æ{Vƒ&9mñ%èqSΩóßL4øc[%E¬…π—ìû=}*›Ω§©.∆%¿>‘‚Æ&Ï:} [ÒÎV‚èh<`RGlb¿òúò˛u\"FI»5”¢ƒﬂ1ﬁ8Z˚Kîq¡F¿∆*¥ c;[“ë`yh„=ÍÏòâ‡dÚ„i‡ˆ®ÀÖ\'öâ¶ ûy™HAÓs⁄©…\"´Â≤G¶hù»ÁΩTñlÆsœΩ)1ÿ’—\Z–jqõ»åëì¿ÌüSÍ+J3k‚µâs?ª	˝¨NI∆r@W8uf[4ãÄQ˜#/QÎ¯Tö6∂4´Ô∑ádï	(pI«“π•RJˆ-$z.≠·È>ÕõpZ÷ÊA,S6î\"˝‹˜é3Õqû9Ç?Ÿ€£ÊCvŒUÜ÷n3èCÄx©.<W}y5√<ŸdäCÚrzÒ»‚£Ò÷µ§Î^”Â≤;•úâ¢ïn23ÎÅ\\í≠78¶ç£cœ¿ ˙“∑ÎH[Tl‡zfªnI<yŒsÄN\rYYYT˛Ü´≈ÚÆHÍxÕ»Ò‹r+jƒ«4ÑÂ≥Œx¢IZi7>	\'\' †^y5*}{Sâ0\0ˆ©‡Ö‰eT$‚°E˘π≠ù2ŒGû=Ñy›;®†EBç;\nYAN§GjÍ5m\"@ÌqqÄJbâÚìÅ–vÆJÊRƒís€4·QIh%yö`Á&õÀ1Á5(\\>µAk\n™NJïı≈$[KÄ«ÎRÇÛé‘\0.Ê8U»jX¢ÛYøx´µw|˝˝æ¥·q«¡99<˙SÆMπ¡∑ﬁx¡ﬂ◊5-ˆ«\Z¥ÖY±Œ2j˛ôk$˙ÑFõùœE#$zå˜¨°#&0y5µ·Ÿ¥‰∏O∂…$N*Î¸8ˇ\0Î‘Un0lqI≤Ì7R0≠ﬁ∆tlß 9P3¡ùaM0*ÀPŸÅ^·„{Ô\nï¥º∑\ZÑN.aMæh™É…‡◊åj:}›åå∑ê¥s;gÊ‰Û\\∏\\C™ü6Ö %≥◊nm·ºÖÿòÓcT8P9\\m¸´2˙ÚY‰Q3¥Å{ûÙ÷ å>rFH«5™©åsäﬂñ)›I\neí§åÕh«`bêyÑÑqπX\rc«æ9Fsì[˜7w&∆÷ﬁk≈í4bùÉ?•„F•óy «|ä™œ\'äπ©æ˚úñ‹@¡™á≠mÄ~sNäBééøyNA˜®¡ßÕ6Äˆ€_Íó∂¬∆ﬂK71‹D\n¨é6»\nÁﬂ=´7Géy†∫íÚ6àá*l‡ln9¡»Ù◊·=`⁄›√√  V»ÿ˚H>†ˆÆ˙⁄˜LIû[su#Uà»«Ωy)Jîü*5ãR‹ä„¿wkˆùRﬁHR– tDœÕ€ø~z\Z¥˛ë¥h£â◊%#+«=Jê:t´3¯äóqÃ3)Åëós^üÖM·=OS{∞∑3 ÷QÅµn òÖg*’î,nPéÍ”O •‹óÏ\n	\neä˜$vÎXìMßŸ$fÿ QÇ±ﬁ6í;„ÒÆ¬·^˜Vº∏íƒC™å`˝:~µ»x§≈{ˆsm#âJá,H+û,-¶ı	hs⁄ù≈¥Ú®∂\"ù¨ƒ‡ö«ôpÕå?*Ëlt6π$  à˘T‰∞§‘ÙÀu70Üé(ä¢#KzüŒΩ(Œ1|¶vm⁄)‹*“ÿªïQôq∏Ì)ˆÛ$	\"ÏVÛ8$éÉ⁄Æ%˙˘MQaH·≥ ûˇ\0Öh€Ëâ–«\'l≈TGµ>I¬≠Ê1nÎKs\Z-√ò§fN9n¥ÿ£Áëû¢≠F‚#RXÙ≠nZ8#ä<£ﬁHnß∑_À\"@qÇ*H–Ü·rz˝+d&Àd;ØŒ˘jç‘°6iT9=3œ?îJpG8´J¬πü9ﬂ»^É™≤Ì\'ÅÙÊÆÃ†›üj•2Ì…ÌÍ\rLï∆ôÅåÁ”¢t\0Óõ∑<fòbs8ÂT‚òå+RÓLÖûEN0N=\0´°ﬁ÷yB¨pW9‹?\nÇ⁄(Æ\\Gπ\"ìÁv¬üojñ]¸E*ÄÒÒπNw\nI∏∞^õWi#âsœﬁ„Æ\rfI!|‰uÌWŸÉ`«∑Fe;A‚ÖpπM¡bUTÁÈZæ“ﬂS◊`∑ô·»2≈∏ÆÙ»»»ÈQiËì^,d∞g!PÁbx\'⁄Ωc√Mb Ú·Ø\r∂£l|ï0¿Á\'Í8Õ5n\rÈb∑å¸)ßÿxf[›/MÅDŒàD.œ∞Ñ{ÙŒkœ.¨oR+H‰µö™\\; sé’ÙÕØÜÏ§“lÌ/d™˜∫`g˛ãº3ky·{»-,êÕÂ¸õ2€Ø™Â(∂ë);+\\/úÔ&\09Ë?\ZÙﬂÑznôˆÊæºœõ(\0…µó˜q\\§∫]§7c∏y-Ê]¡∑«∏n« 9Ê≠x~T[ìh.K*0r6>·¨2cì∫–˙íﬂ…™¡∑ÀQÄ†ßôß\\^Õ˛Æ,@ÔÌY>æKçmƒÀ4ñø∫ypπcÎ≈Zº∑ãSâ°íV*ßi\r”üŒ≥î„Y≤„w«<Muß¶¨è®G+œ/Õzë»DdÚWıÁ÷◊vÌ™-¸ﬂ-\\≤ ‡„∑5Ï>1–¥I¨b±ô°3∆¶?µn9âTo,@˚ƒÉä”:Ÿ∏Hd;≥å}*™”vÊæ‚åì–Ì/æ \\ßÜD≤@üﬁJ…Ûë…¡=˘=}´ÄπàmcûO<˙’˚pgú|ÍYπ9<`SumM§é;s*∂˘PQI>§u¨Ø\'‘•e±ÄŒI!OOJU%é	51!>Ω)TÌ`{VÉCòÄqé}iÑqR:ÁüZfz–1Ö±≈#7–A?\\”	Êö·∏ÕXÇÈ‚9\\s‘ö®:bú8†\rµ◊dâ“X∑E:}◊èıvR’›&Ω≤Û√∏i[k7<˚fπé∏≠[◊[Sh#Y∂y^s”°È™Æw:Qwà|bc:gÿ¥ˆà‚9f+Ü◊9Îû’»jøaKÁ\ZtoC¯Y≤A˙÷}≈§ˆ≤Ïπç£Ó∞¡§uŸ¿98¶ÂÃE¨G4ÜG9l˜…¢9lIºÊö®“I±@ÀQ∞° ä4ÿ£^¡^ˆÌbÜ=ÛHB§cíXˆ©ﬂIº#=ªGÂíp∆ÎT4â¢∑‘`ñi%â@Lê˝ÙÁ®˜Æä˙˚P7(Ò\\…y e\r*aâŒy˙◊5IJ3≤ÿj≈=K√-o·´mi% »˛\\ëï £sﬂøO÷π≤£5Ëzﬁ≠¨Yiücπ∂ök¢Ã—I»3˝“{Ò⁄∏èksZQr∑º\rÆÖviUrπ4˜Ë\r4Âà÷‰‹z(PHÎÈNV‡äh\\ûiÍ=>ï\"yÉ≈1ì1÷§/∑+è≠3Õ]∏≈;ÄÇ6cÈC„8œÅàœ≠7Ω0mëMf\'é¬ëâcöAë@XSÕ©œJ2G=®T‹}©\0ßë“ñ\'(¿©√ê}Ë#∂i§ÖÁ<”ÍüÖ˛#∂◊tWª∂Ûå¡ÄæÑû\\}ÂáŸ_¡e™Oˆ+≠ÃÜ€∏Äs¸ÎÂá~.ó¬~%ÜvëÖù«ÓÆW’¬æï”<ŸØñˆ Ï\\YL†¿]	\\c®oØÛÆà{◊ïÏ—åΩ›\n^+æåöAñÁÕŸ\Z\n<z˝kÊÌ~ÃA.ÿ î@ﬂ4lÍy∆æØû;kÎŸ≠/Ã%ƒ!O›©ÊºÁ‚~á™E°€†ªÇk8â∆cÜMu—Â¨Ωî˛&Â‘;;ïDñŸëq&9« èzË4v≥∑dH.ÊK∂GV¬dF\0Œ=ª	Ÿ:∂pıØ\\É€U–b‘¥†≤ö⁄vã˜∞ç O\\ûÁû+ŒùM≈öÛhp˙ÑÀ®^œxﬂªie-∞BÉÓiühQïÂ&sê¯ÁÈ]∂ª‡+{[i.4ΩKÌ(ë˘Ç6åÁ◊áÎ\\∞Lô\rÆEyT™Sö¥z¸À∫Ñ∂Sâ!·Ä#ØP{U{õ√;Ò\Z∆´¬ÖÙ™Ú1A”≠FÆ_≠t¬\n¸¬.√∆\'=´°“o.Ø£èKíÂM≤…Ê§R…±w‡é∂s\\⁄´µY∑e±zï©®πêôcT¥π∞∫x.#Ú‰Œx9>ÑU=ÃzÉVifÿÆÂï1Ë)Û(ë≤±™E™ÇvWBë˘úÉ¯Tüg$úT—¢™Äππ´Wn1»´∞åI$ÇLpúüJïT.Aöí ?\Z\nŸlêú`úÅN‹Y¯œjxBzPb ÓÔTƒFJñçf@cVË}*ïÂºv˜2i<ƒ\rÚ0»˙U…\\GëIÊl|Úø„T’üzC#yde\n‹Û◊∆‹I9¥b∑pˇ\0•4¿«ø&íÏ+Ga K»B˜Á«•DêInT0 ˆ5—Faä+eXÌ‰ëë\\˜ÂXw™◊J≥…#§*åÕ∏\'Ï•-∆fX‹3(låEe…lí∂‘^˘Ì[èoÊñ-¡\'û1Ht÷∂pÍ¯»‡èJN:h+.¶¥]ﬂ09±L{súû˝+rKId%¯\'©8™•<¨^EÑ¥s≤°pp∏\"£c®$˛ïΩräAÉË+xdVÈ¿°^„Wπ\n Ë„ä–äEõåsT\"çöBrkV⁄Ÿìt≠“\0§ÂS$≥Fåπ`ØååqV‡Ñ>7v≠%”“DŒ}*Ä¡‹Jöj£¨£\rkI•ï\':‘lb|ëúRhM\ZVV€’H5±km¥ÉœÂT¥Û–vÙ≠¯\0#Æ K¬‘∏$PF1≈*Á<Uàab) sÇ8¶…«8®÷P2riàôü¨∆8ßµ]ﬂœJ\0≠(‰„øz•på«f=9≈_ê‰dì⁄´\\√ÁD©fm§∑($Z1ÇY∑√µA»y\0#=+óºæÛ\n>P*ˆ∏.-∑#Çé	Ó+ùmƒ`pj\nä&[úûz\Zoògú\nÄÇ•<t§À±v;çß<è≠XKÅ\"í~˜j»g$Oé]§`:“L,k¨ŸxZYFO$öàÕ˚≥˘Ê™ºÖè^0∞˜%è^*¨NxÈN.™>¢ô∏2qä@ìÏ)Æ{z“ì¥ÿ”ñ˙S\0qL<ö0FiGny>î\0»ÈÕH™±⁄ìÓûzRØ>Ω(Ïcë–P iCgåi‰¿‡˚Tí4såSÄ ûÊ§UÁÅV≠-\ZYH¡ ÒR∆àaÀ0\0ÅÍOj±e\0íÏ^5Eârpq€ÎOû1lrƒ—∫û}ÕzVó·®uü™˘#ê.S˜πÚc{Û>§÷´*i64µ±ƒB∂4qk3I$É/åpáˇ\0ØÔYﬁ!éŒ-FAeHîŸ#éGÁöˆw”Ï<;ÁUeñBx¬Ôè!ÑNO Cu»ˆØªfi1$∑\'=®•77u∞ö≥)qïÓ+‹>ﬂÈ≤[$wq¿Ãæ^…\'#xQÚ{u‡k√ÌùVOú÷ÑóíK4{∂ïDÇh¿ËxÔQä†Î.T å˘u>Ñ÷ºEa™È\ZÜîÎ¨\'lr/(∏ËGÆ+ŒÓ4Ëµ+∑ö›`0∂V$/¥F;ú~µõ·´Ω[ƒA·Îx2I\"R0¿g$≥W•/√{€DçV@$\\KÂácªìöÒÂ	a‰”f¸ kcÑº∑«|Ò±ñ( óÛ\nT˚qBx ÔP¥H\'∂Sqú≥∆6í1ﬂ£¨xoTÉ@KÀ∑i\"CÊ≤n8√zv…M4ñ™èé\"ÍCl\ZÎ†©’é∫≥E∆GK¨iVz£%Ω´≤\\%∞ò$Ó	= ´º{˛5áßj“i2‹[›€¥∆u¿yvöèJ’¥¯dñ[‰πÛLL®–ëçÿ˘xÏnC•…‚O≠‘–\"…ÿñu‡˜øJ∂ΩõÂü¬\\/.§2¥WZeÃLìó€\'j˜üÈYW”j7Zmº∑Fcá9¡∞ˆßi⁄§öR5ÖÏaî¸»zÉÓ{©Êµçƒ◊6v©`â(1ı≠‘m”B[fà≤Cp¡§ñ;GP]ò¸™›âÁΩY”uÀO\r‹D≤i–ÍMíÃœús˜p:tÊ∂∞Øµ=!kuCnß`å®ÁúVøÜ4]!4K˚ΩZXB≥¡À	6Æ“›8Ôﬁ≤©8Ó ähÁÓ5ÌXY⁄j÷ÜDÜ%aºqü‹ÆxrH¡RƒÉÙÆˆ˙{€ôI%f-7ÊbI\'Ëí¯¬”@’Œáö´y<@I>Ò(¡¡⁄3–s˘◊#¶.üqtÌ$?Í£Œ›˚wqéΩs[RV’¢$Ô°ç\r¥Ò\"\\J	åù£qÍGN=*X”Õë¶8RO †T∑Î$g∏0eï0Ÿ8∏Ï)∂“D°òû9È]tÔr2wtJXÿG8 ÙlIQüòÜ†¬ôwÅû+•hfu:f•\ZFÑ¸Ææ˝k≤”¸O∆õ»‡◊î<Õ\Z„8=*8uô\"˘MtFµ¥d8_cËMwj¨©.Â>ı—ŸÎ—›	2GÒú◊ÉÈZƒûX`ÁbéFkvo|πI	ã±<\Z€›ö3i¶{ùïü\n¯ØçT÷5h,m§∆·ÿæ3ÙıØ:∑Òløg\0]dØU sı=ÍÑ~ í{¨Iâî6‚ëéı°k∞ÁmXÙXnM–áíÅ∂Á9ı∆*xùÓJ¢\0ú9ã·˚∏5<C ¿FÚaQÜ ÛÖı‡wÆù°é¬¬{çÀëª{ùÿˆ«≠9…EŸnW‘äÂ\rØïx›àÁ<¢§ºπé—7Œ÷_îÉœøÖ&±ÊXF±⁄f$ H…‡Á?JvπpaµÅ†pbbv2ˇ\0	«#4ï7t§]	vwn˝iÀv§„5À≈~Í6ûjtº;è<VŒ(GDŒ1û’ó} PH>ı_ã\'“≥./L™Fh\0k«i›ê=i~”ï‰÷TÆrYIÕB∑cP#AÊ%â\r≈EˆŸ#$ÜÕT3„Åﬁ†ñr2ﬁ=(DjÃÉ¡ı¨À´∂ò6*ì›b´….ı$ú—p∞ìŒrrqüZŒó,‡ı´æ‰…‡Á\Z®≤*Œìz)ÀQYIîçΩ6ÊÛKh‰¥”ÂíÚ+Ä»Ë•πQÄÁ⁄™Íoq=‹∑åÕ;4∏¡ƒy<‰~?\nÓ|<∑˙U‘WwZ[ó7\\+‚X Ì\0„¶+ïÒ÷VRj2Y],ì≠¨&P\\Nq–èzpi¶Cò[õΩ>ÌeÇeV	ìÉå©<´z˝+6W2»ÌÄ718≥NïﬁG;õqıı¶ÖÊ#öÕ ˙\Z%‘}§BI’dq\ZûÊÆ41Á9aÓ1ä≠Éı´ˆ°B]ı™ä±]Ñù£µYH6ÇJı«Jä#¥ëÉå}* H60e;à‡Á•Z UOópÎÈF7îÏÖ÷¢ﬂØjØ†$ÿ≤`πä°+Ö%x¸Íƒ≥Ó…9ı¨˘…#ﬁ≥ëHVm¸ÙÊÉap¨„R	áÆ*òf+èS÷Æ¡¢Pç!ó©ÈÉ\\”–¥àÓ–BÂma¸?“£à$£.1∆G£wß:≈Ï@˘√‚«Ú≈f»°&!Xî•e{ók≤ t8Í*¸V¬kgPpÍAV=8ı™∂„ÕD1u%súb¥£r∞gfàŒ:èzáqK§ÕgfdEg]¿n„±ZêŸÀÔ]´6zö≤Øo,\0LÓ‡/Æ==™yµâÑzn‡÷ËÊHŒ—ï$z’”rz“±OqPVMƒ„å˙S¢åêÃß!O‘H≠(i	Œ—∏ú˚‚õÁ*GRzvÆ§∫≤“Õ+ßÃ,|ç›™ ÎÀ63Ë*&r 8ıßI‚MÀüÓ˜5[nR∞5Y‹ìœ\"ö“ûvÚ*îÛ…ÕU≈†≤ ;’	úieêpMTyôz`é’úôH{0BFsP √w N=Èé˛†‰”#`\\ˇ\0ı´RE˚[≠£l`0pIÍ∆0?\Z´}o$í‡Ö\rÄq¡≠\rm>⁄Â‰æGp†·S¯è◊µ.∫#ìN≈:Ï˘vNzqÎYÏÀLÁ\0ΩE5_Î”5≥‡ˆß 8úä—î]yÄ;TD‰w«Ω+ÂÇzëM<f≥&ƒãÛN*hÜXﬂ⁄¢å¿vŒ‰≠0%Ü7∏==k∂—“Ÿ¨ﬁilﬁGÅA@‹ëÀ~ πù<%ÕŸà°+Û\02$Á€5Ø¢ﬂ˝Ç‡§åM¨  Ù‹rq…∆zVUü∫¡hij⁄´Í(Un<•|¸Œ3¿¡o¬∏+ô<…[¯@v¥Æuymñ{KtåDÏrH…¿ËA5óqtnJó9*1”Qãä)¥2öI0£8Á\0Uâ¢h‰»€∏‡åuÈM”ÓûŒ„ÃMßÇ0√9`÷∆ë=°º\rt®@u`“ê£åq˛x≠\\öw‘≈\nRRç¡Ù5<∏ù©\0ér*◊àØ\"Ω‘ZÒUùéBåSötûEh–®X¿9mŸ8‰’∆NI6\'°rÌ‚}Çñ#¶0*2í¬∏í=π¶X!∏π€ï_óç«sTûIX….(\0…˚ÿ8Õ-¥31ﬂ8«–T&Bßå–Á*cªª’ΩÑh€jW,eùúGÇø1sú⁄ª™¶Ø®˝©≠îØôì≤ÄF\0ÒêyØ?çÓhÅ∆kZ”\\PdKà7∆ÈÜè8˘±√g÷∏´“R^È¢ñöïuieø’\'ôã0ÉÖ∆ßB‚Ö˜GùÉ©5ßœî¢è3?<˛\"´\\í\0Å≤ß=´H\'ê¥e.nÁüJ%ôöBCgä_5§-˘q”äd÷Ì	\0„ûEX¨Uô[v[øZf3SH§∆AÁ5≠S–,9@J:Ò“êzSÄ‰–—9Wgä‘µº∏éEëY’ó°SÇ?*…ãÎä–¥Rg	ìÜÌåÊ¢Hw=Bm?ÏÒ;¿…2∂‚ÔÛr:ı”>†È\"˝í(§gañ\0é;\0æŸÈ\\•„G2ª+Fb\nF©¢Òˆì¬ŒDã,Z‡´AŒÈœ°{TºΩõZ∫Uò§$‰qù†cúU3OπøAmnŒb#\'#åú ëı.⁄&⁄∞¨øÎ	<1ÌÙ©ôßià\n8g)!\r¿\0uœ‘”åeŸ-AŸªò77´dçj†Üœ\'8¡¨ÀõáhQ7±U<\rŸ˜™Û…∫Cú‰ü\\‘I„äÏÖ4dÿ4Äp>¥D«°8•çRXÅ«ì¿¸k°$!YsèJ∑©àevïˆÎPÏ‹£ÕJ∆i⁄Ëcdlísì¸©–>Å◊äiS«@*P°¡ŒE	XFöZüÏÁπdSpü{ú„“°VUNr<AIÊì‹\ZìÌË¢@ÄBªx,?©°yàÆm€—\\;ûòÊØi⁄5„Ë∑¨ñ¨Y<…ìÓ∏«\0ˆ<˝*Êù0ä{õif_.‡!i£èv@‰n¬Ωk¬÷ö}˛Ä–≠êéŒÈwòŸâ√ÇA˜¿¨*W‰vfäGÅI¶MlÎj◊ çÛ‚&œ_ZØõÉ O8ÁØ„^Ûu‡]Ã;Gfë«Áq…$éŸœzÛ}W√W6“ ¬ô∆π…ÿyÆzx∏ŒMl[¶“8Ù≥2#»±±åπ;{d˛5¨Ú0$ìµ@¸JÿõNñﬁ‰ƒå¿HºÉ∆Ôj°$@oA¡^H5Ÿ)ld”E&S÷†êüz∑4nCÅäß#Ö41XÆv˘ıÆû?œd-b”&6ÒBVF.Ava◊üOjÊüLV¶õ†E®ËW◊‚y>—ÅI‡„9=∏´¶Â{Dô%‘ˆãèã:uûÜÇ;Ù»Ä-n˝A„åtœ÷∫¯ ¿±A,&rÄ≥téÅI…Ó?\n˘j›eí`#√<ÒöÙ\r*9¥Qg¨x^ÍIﬁ+e\ZäïÊ2«ëœ@j®¡Ml\'xΩŒ««~òÍÎ™´fÓÃÑO~JÛiï¸9¨≈¥ﬂd$LÉ<ëûß8Øj÷<w¶Zxt€ﬁ\\$⁄ÇïéX”I¿;æòØ#◊f”5YÔ»√4í+íø∫~Ê9˙‘Œ1tﬂ>Â\'™∂«¶x≈ê›XI≈ªDíÃJ…πvå±œ”#5€kS.ó·ŸRﬁÂaìÀƒ.«$üÍk¬˛Í?Ÿ⁄¥Õ‰+⁄»ã—∏%ví2sÿékŸ•∞èYí⁄÷7›af ≈≥√¸§`º+œ•õπ∑5ïè÷Æ‡”ıpÛOw©HO$!à\\≤˘ì\\9çr©\nùêv«“ΩÉƒèYø∫m5…∑∂,%º*§ÙAÏÊºñÛLΩ∂íh-%wØ›l{◊M^~[=âçØrï¨Pº¿±h‚«$\rÿ?J≠$m-Œ—…<ìVJõ`2A%~a]ÖÙKñ∫ç\\GóÒê=8§W2zÍQÕ\\È ∂¶UëÅâÚ¡‰\nŒ`ÇGÂ^È‚;\n∂áßÕ<üeìPâ¸±Ω£d0«π‚ºNÚ∑Ω∏∂ä£ù•á$v≠•w+ÇXt¶údq¯“g\r÷ú¿ëúsSbàÿsQëöêúbò$ÙH. “˜˜†˝(Ë1áztr›YOÃE4ûá“ÇpiX\rkÕZÁV1πö1Ä˚@cı=Î®”<™k:\\W∂÷\"xb>_ô—ª\'åé§‰◊≠äÙoÜzîiraªΩö+xÉ>≈oïIé¯4£Ãìÿâª-É¶Æí.ÌØtyrAGê24eOÕé9µ[S—Æn4»ıÿ≠d”æ“B™Gûùç{t⁄ú:Ö‚Gy:¿u?gñ◊VFÁ8¡¸ÎCãG∫ΩÓÑ—∞πÜswvÖ±≤%=HØÎBß\'+!s§µ<ñ∆ŒﬁÒÆZ+›ˇ\0.~È„[´ßÍz<hobe∂+ê›àÆç~M}Â‰R5™¶\Z›üù›˘«nŸ´˛–num#Q≥‘\rƒ˜víkgl4cRı±≠á´ºuE)«®»ıYı˝&M2gV∑⁄¢?3%I≈ŒpMqzÔÇı;LáTHmõá»ÂQ«°Î‘¸\'·]KHπëÆH6*∆2§·£$éﬂ›Á≠zÑ:õó%¢DÇ)£ÿÏNwdc©´£	FºΩâ∫˚\'∆á \nMª{‰WW„oøá<EshÍDjƒ£‘v5Àı’à£Ï•nÄù∆Hp§@„é)≤dÒ“òx5à«H‰Åﬂ4ﬁ‘†`Á≠4ÛÕœı¶ÁΩ!R1¿Ωp•«5\'<\Z~N\rß<sO?*åûiªà‚ê˜ÊêÜÁö4{–¬¿ßØ5Ù¡_›k1ﬂ]6—/ŸH¿bÉÇæ‰q¯Wœáûj˛ã©À£Î6zÑ.»–JÆJ»¸≥Cm+°5sÏ˚õ}&⁄fûÊHcï◊˜éÏqÔÌ\\OƒoY\raÇì~BLS8=)ﬁÅ<Qc%‰≤:OhD—ÇJÁëü≠y◊èogäxÙÇ\ræónŸ`´»f<‚∑√Tù’K^ﬁ{ )Ës˙Õù›˝ë∏≤”!ä+Dèœh§Ù<w‡◊u·}o¬¯6Ê;€Ø#RùõÃÖ•$±\'Â#◊Ωyéü‚—‚‘l,ˆÕ—Ω«$)88¸jı∂ëßk:]≈≈óòó–æYI·óá÷ÆX•)sH\\ùm\ZLÍÓÀQ)Ûaí2Bø?7Cå˙èj‡ux,WƒíÈ∫«ô±§*nÑÄeOøA€ÚÆWMö˙wy›K\'sf¬É‘ì⁄´kÌÂmílÜbHãÃﬁ@Ìö˘*8YFvr6‹ øâ\"æö€r#ïVı‡” è\'<ÒIÂ∂sÎVaâﬂ\nãöˆ‚πc``®yÓ*H…\0sÔOH§*Oú∂)Òßr	XB\0wgj4ﬁFX(œ$–°<ñ0ì ©œÙLÅÈöXŸ∞qÇ=È1«÷ümÂ∂VL‹cÄæÙ∆˘%+Ú∞Ç:U%m@pàí~<H∏	êëäTòˆÁê dú`TNØ…8≈v\' sNüıÌMÅDÛÄ©íGZgŸvdsè‚\rÎVñ·≠‰c#ÈHë	A\r.r3”5*Ëeepå28ˆ¶ UõäGàÔ\núT—€yd˘≤«‰%	‰Ë}\r;ÿCTC8œ>îÁ|©`F;‘S\\[I#¨™ªO9¢\\Ì<Ç§Qtê·óëüzï⁄úÅ”=™•±ÁñÁ∞´Nz˜™E8,ºÖ#B‚—è|èZ—E‹\n˛Téª~Sü≠œ\\¿Z†Ò3GA[◊1·O…ü|Ù¨âN“py¶ê\"ñ¿H¸´Z’D6ÂÖRUYFO<é’µß€°@≈\Z≥cÜ¡\0V•úËÍ\0»ˆß}ùm«È±Ÿ˘ráä§\"ÛDÆ2Ω˚UI-T©»¡=*ÏcmKÂÜ\'#\"ò±[…Åìëﬁ∂mß c<”^’[ÓsQy,ÑÛé‘ñÄk¨°á^jT9„5ô>¸7N’§É•]ƒJSr„Y†ÊÆ\'l“¥dúä°\Z,/Vd új’h≤*¥ëq@04´+BÊ1ªé√÷£∫‘¢ØaÉ>s+~ÇÆ\\Ÿ-⁄X‹´Ø\'W7}tÀn∂Â0≥nœﬁÕRi\n◊0ıiLÔñ$ˆ…¨á÷∂gçeSìÉ⁄±ÆêÌ¨ô™#R7zS[\084*ñ1Mî0ÈöñQ úÙê‘–‹`\Zz‡üJ@9é1Lœﬁ=˚P‰ëû(8ÓiÄ÷˘±è∆¢QœÊßEÁû¶ˇ\0ÀBqÙ†çÄp{“:S‘ûÙ“p)Äcß4Ì£<sQá∆©Tdòám‹1KÄ•\"ùºıÖâ¡Õ&!T…©ãn\n˘jN)—ÁéÑ‘¥®„,@^[†∑°m©≈p…Ω†`¬\":ë–\Z≈ÇFIQÉ¿‰]Váj◊◊FY•ç P<ÈëÇz9ÎRÔ∞Eı Ò±ﬂj2›ò⁄&v‹Òì˜O•CÍ3¢MeÊÏ\\!*˘¿œßa^ç¶Èˆ1Ë6˙¶∏ˆ¬+ôA!ÂeCÄÄ£\"´ÎˆÛΩ Ißi0[X_ƒß}ôƒNÑú¿<v5≠\\4î.µ2Uìv0µÎ;ÿÙìΩ‰\nsããU%€=‘ı>òÆ˙7évY∆À¡V99Ø[á√±k∑÷£T˛–}î,R™rd^ºº>á5ÊZﬁü=åçΩ£ôò√#PqöT©˛Ôù\rTNV2#‰úëZñe\'ªEîπ#Óà¿$öÃCåÚ9>ıbô%D∆2F”»¸iIh]œO&ò∫⁄j∫•≈÷õ$Ä˘éßåF+⁄S\\áTÇ;41º“çØ=G†Ø—µ]_V¯–¸À{Åw)0âddlúüœ<z◊E‡˝gQ—µœÏÒínù•SÊ??ò‡◊ÉàÑÁ)6ˆ¸çÈZÁ§¯ó¬Ì.ãˆm(§ÿoçèÀåcèJÛKˇ\0áWW≥µ≥êóP«πcàÒ\"{\'ÅéïÓ7⁄‚»…9Uàèôâ∆‹˚ˆ¨y-≠≠Ì∂¬_r)\n¿·›	\'Éﬂ∏ÁVT%zor¥ÚÙhë^GÓb∞ÏG‹¯ÆªJ◊ÌlÌ.ÙÛ+…d–∂cìg€ﬁ∫¯n÷œ≈öïXÌnIé‚DPÊ90Np;{”5_€[K÷éã{ß\\)ƒ¨›˚‹u„^≥ƒSØÕ˝3+ŸËs:IπÇ;´ÿeí◊ëÌlaπ8∑~µ>Öz˛‘y!7\Z{≤∞„ßõ©†¨¸≥mv2e)!T%ªŒ0oFÒ⁄iˆÊ&åáeVV„9ÈZ©$¨ˆ(“ªÒ¥öï¨Z^ÉjÀ,ákK0⁄=iöóÖoc–UØ¸^©n…TRcœ˜Aæïœﬂ$∫√Q”ƒvÕÉ!s¸∆zU]Kƒz•µÅ∂ûﬁH-Ô°˘ºœùd?ﬂQÿ˚“tì∑(JN«+ØÍ#Uù&h9ˆ#˘hﬂﬁˆÌYjÚ¬õë∂ì¡\0ÛK2‰ì–Ì¡<‘nÚÑÄ1ÿÅ…¸k±F ∆Z‹ÜW,I9›ﬂ5~÷¥8\0©¿q≈SX]’±πüÖ5£g§œ¨‹€[ipº≥ 6ò◊ú∞ü“ü2ä\ZW**πp®Û˜ENÛA‡Åé+∏è¬∑⁄zÑÔß∫…ˆT¡ ∫≥u‰}”¯W	x”L¶VªÊ-ÎÔJùng†J6‹k^6∆m§èßJ]=ñ{Äa ‰Ì=«zÜ€.Y`c Á“ØXY€\\‹4s‹GlJíÆI>úUŒ¢[â\"b˚˘_ #ëª4ÿ5!%Kê:÷jóár≥nPÿÎOEYÆñ5ê \'ò˝ﬂ≠i\Zùài2k√r 8í√©´6˙Ú+úJB±á≠cﬂË∆»´<ﬂ#†xüi\n„‘\Z≠gk≈ÃBkè&\"¿I&‹Ìı≈oœQ;2ybzFóØ¡o®§ê∏(UÅÛøÑv¡˛µ>°„R.\ZÔ$ñÕ˘FLåÉÌ^<W6ælﬂkÜ‚(ﬂ…˘eàqÔYSŒÓ˘b@Ù≠Â^QV±\nölıK?@[Âë∞CZW)/iÂ«1ÄÒëﬁºÜñ(ë»eGŒ÷ÏqÈZP›H»2ƒöJª{â”=&√Zi‰úÊ∂È„∆NA=kà–ôVEqÀwÆ≠ß_)I∆3]1’—Æ”<ëß®dSA9ı\"¢∑æH–#*ÉúÓÕG-œö¨r\0Ë$F9dsUÊ\n?≈H◊,oû_ç¶™˘∆^F±4ÆDé˜ıÕ)ïOëûÙ4àä\\Á?•gOp•G‹ÌHkRYNI«>ıMÂU%z\Zwú\n˝j•√ØByˆ°Ωa≤‹(„=y¢…≠Z}∑.…∏èLÛ˙U)…QÕ$L\'=Ò\\Û’ïééÔRµ“åÒÈ7äÒo(èôÜ8oaÉ˘◊1wu-‘∆Y€søÃX˜¶HA\'˙’YHÉû+(´hV‰—?ñÂÜ∆0iÒ/òNP8`pÿ¸*’∂‚Ù≠†Æ∆À±EÅ”Ò©‘Ù«4‘»≈JåV∂ s§ìO˘±ëP;‡T&vQé†–›êX∑Á‰‰jØ$≠œ≠GΩHˆ?•F“`ûxıı¨˘¡<Ã¡A∆:LoóÕDáÃ»\0üßj`ópÁÇ	®îáa≈\0|¡≥ﬁ¨YFóbÔºx¿w®¸ΩÍ©Às¿•p$z‡V2e´ö∂¢iÆ†≤ã$9==«·UgéXRhì~«oõ ‡ÒR€¿+€‹fÖYïŸ±ºzÿ‡ëä⁄∑émwNÚÇ*_#„ÕŒﬂîÚsè•a)(ÍUÙ2¥‰fà¬®IŒ+W¨ö@Å2∆À‡zUîÜ-.¬%öeíkôs«Œ’\0ÁæMTñ7≥ëƒÅ¡<+¯ÔÔE9)ΩÕI3xªº¥E py„ä¨,§hﬁA¥FùÀr‹ˆı®VÌŸBq≥∫éÜ¶;¶–≈GeÌ]0å¢Ã‹ïà≤£éqÍi•¡¿∆p:‘ƒy®@QïÍzT,åíÏÊ<{V…ÿë≠&Ì$å˙S•√)√ıÎıßºYA∏3>\0\n*º˜	™—åÌ$úé2ö{£†…≠ﬁïüÛî{u¨…⁄@N>S¸ÎN„R{§∑ç»dÑÙ<dÁö5π-eäl¬G	ô1åÉüo≠gÌ\Z‹|®ÁdrXÛQyÅNZ&8<±?ZÆÕíz„PÂqÿs}ÓΩ©ΩFÀûÙô#©Ê†{Ó◊Ã-åtóÒL,£ïôY$?\"´ÇW£∑ZâK?ˆÊõ(íSåd87@ëT∆ ™Jê3å”ÜTg=OJñY]Û»≈1T0a”ÒÎU{ö&ù∞3ú‘à\0‡ıœZè%F[∑U2Å#b03œzD2TÂÇÃ\\ˆ©FH\0.s“ï‡0>∆e?(nF\r!aºÄ‡ä:í…òïIRÄG“¨E™{i†vu+ÛÉ‘{÷Yî˝‹é:Uvìw∑=*ZπDé˚õ<Á≠Aºm«øµB\\\ZUË©1zí9Ÿ	¡«\nC3∏PåI´GI∞Ü˙R≤‹GÖoô»6	Û´‹6‘≠#ôïùÚO\\’ÕNóTÛbÖ£_,n,ÏÊ†çjM‹—|°á@{’[+ë89›ï:Ÿ§R±øc¶Õq<i#πm©ñÔ‘ˇ\0*È<G¶Cu•5·.†¬4aÚ00	∆8Îﬁπcp˜1∆`€@π˛/_∆¨[j˚§π[ã]“0Œ›ƒg=s¸Îñ¨f⁄í{\r•c\r◊\'8≈%›ù≈õûå≤ÜÜ2C[”ƒÜÁÌëyf7QÜQ˛≠èØÂGâ.oﬁŒﬁ⁄˜s>P≈A∆FpuÊ≠◊ìíHõœ⁄_8Œ8Á≠ 3Qúåú\nàÖ›‘„π®wlì*›;äŸ˘Àèp@üÁyqc™C/˜{\Zyó‚êàñïúéúöYé‡ÕH¢?%≥çÿÓ?Z©$õ>Pxı∏¡\\v®¡Ö\0dÒÎCw≠ßdt«4’SÜ1ö√£?0˙÷’∂ƒYÇÌ<äƒZΩ\r√:Ñ)∏Ù…¢H.uv∑*∑Œ^;Üe’… Áú•N#±ª\\=ÌΩπ\0ü*f „—xÁïÖùxW{±H◊)Ëj˝Ωµî`D÷ÁŒŒ|÷}ŸJ«ï^‡û§ìÍrO\nAeLx;s«“©JìAq\\‹Hb›∏Fπ¡ı5~Y‚∂üu¥¶DFK®\\û¸U´›~OMo∫ﬁ÷&¥àaäÉê:ƒ÷rìãVZu)Ù˚÷∏hB¡?øà»™E∑6kOZxwF!ê63–7|{VTyc”öÈ§ÓÆLëj(ZTf¿‰öëcÚä˜è$RB[ÀUf⁄†ìJÃYÉzw≠÷‰ñ÷q‹ãÛÖ>ï\0l®œ\\‘Dñ„∏©\"√∫©lqû∏¶ïÑ1π‡≠:>ŸÈûqLêÖ$w””hà±qëå\nKª\rè·œ§íBÓKpO•Cø<S7o`3ﬂiHH∑’≈∏& ˜ Ws‡ü›⁄«ˆ9…ñ  cß∂=+û“b≥Ç4Õ÷ÒÅ\nüô}œÂ[∂÷1cÌ1D—!åFπ?C^uyßÓ¥jôÈﬁ(”°Ä¡w0∂ûQ˜n$c°ÆﬁÍxá ∞∂›4ê∂¬rN}sTåjWê«âù‰eYeD.—ë¿Áß?“∫ÌKE∂ıÕ¨÷v…‘ƒì+ÄDú|¡{˜»˜•G¥‰Ó≈*å¡◊º?=ã˝ûˆíKíD^Ke«rk[áŸÁâlÂÛX@$ë∑\rΩ2¿{k∫ãWèQéq:∆˜∫dr2L˝`áπÔ\\Êó‚7∫πKw≥¥FbÈòªùY˚Å«˜Ô^Ö\ZQèC\'6œ:Ω≥xm˛b_iLÛ»ŒB+\"EÎéµ›j^‘,Ù{è¥⁄*Æˇ\03zÉ–uÌÔ“∏ôï1êj™Gî∏ªîõ#\'ïv5o≤¯ém.Wâmı(Zﬁå®ì™œ#ÒÆ2CÄ@&¢R»·ëä∞‰8 ÷qïù¡∆ËÙH¸7u¶xÇÊK8·ºXÂ%„çÇ≤Ì˘ã/`2*ÔãıSV‘\"õM”å&[c\r«ìÉ…Å]\'√àmı{ã’≤äTÃqÃì«;p\\7ÛËö≥¶ïijêï˘!Åúå/◊üÁ]N¢∫IjÃ¨˜gŒZñì:5¶§öÇ\\I\'˙‰T√¬¿Ü¸@≠´ù4j\ZDQµ‹gf[ê	¡(}Û¸Ío«¶È«SÜhQı).Y\\E&<∞Fx^„ﬁ∞4Îù\"w2ÿ•⁄$[Ãlß\07èß85Áb¢Â?uõA˚ßYˇ\0JøãƒÊÊâF’›ÁÙ`1∑hıÍ*ñ-.¬Xl√≈urvñ‡fibÁüjÛ˚ØŸıïí;si(/e#iÆ1Î∆ÈZ~÷Ô|E‚K-^+8Á¥Å\rº\"W√Ó#Ôû∏ËE\\a.RyígYßiﬂŸû∑“⁄I|Ëî£Ñ¿2±¸I¸´:?Üˆ7æéóxÆyí∞<ˇ\0ªÈÄ=+{ƒ§÷2Xd≠‰à\0àdr>ÑU/¯ñœ√zM÷∆6ã˜h$…sË9ÔZEKï ∫πÛÁƒ\r\"ﬂKÒ≠÷ùj `GUv ÇSVØnéõ¢ƒ\\ÆapÄ£rÿËEgZjSÍ^1ìVh!íRÔ?ï*ÓCÌä’∂–Œ•˙ñ†çoaE∑˘y]ƒ=kû•5:ãì°´vZú˙Õrû^£s#LF‚õœBy˛µáyrgò;Ú‡`üjÈ|k©ÈW◊£Féh°XHéF›˛¿W,\nx…ß™‹–âÜ*Eì$Ù„–rºéÙõ∂Ç\r~ºS1«&üéΩ©èë¡≈ûzR”qÉè îSÏ{“RÉ÷É”È@¿VÙˆñˆÒY\\i-vehU¶ßLˇ\0™Ù¨∏\"Ω+¬ø”√ˇ\0ÿ⁄•§SàõIˆ.‰¡kzä∏rﬂﬁ\"wËg¯?ƒMø:≠Âƒç7ò|º¸è–∂vﬁ#Âù’ÏF∆Ê∆wû_/ÕÀÍ@⁄>ù}ÎßΩoá¸qk:5Ãzv≠≥ÃÃ%X=2„\\-æç≠Zxã˚*˜nõx™<©˜äfQëœ@ﬂJrÑ≠zn˛DÆ]ŸÌ–”E”b∞ùC…6dïÃqúc˘X^#—ı[\rmuÌ⁄¥Ñh¶äiéŸ£Ë=ΩE]∂ó≈ör⁄<ñ–Í–≤ç” Ú‰\\Òåw˙÷mı‰\Z§œ	ª∏¥πèq6ììµÄÇ{\Z…‚%I]°˚;Í&ï´j>&ñ]Ê‚\r>˛›∂À!öHœ$g#Ê£æ:ó√Ú“´õ›%d.»“|»ßå\0}\rR“‚πíÚﬁ‚K{{y‚B ∫çøxŸÏq…«µc|A’Ó‰ºY.#ZÁaåA˜˝iQ∆Fz0tÏ¥9/âZ„Îœiz”$à¡ïB)·A»˘èSÕy˛;\nË|Bˆ∑2òÙÊòZ∆π€+‰o˛-£∑5Õ‡‰ûµΩyÛ¥Lê«%é})ò«=jGà≈FO8¨Yb˝„ÈL\'w?©¬é(Ÿûîê∆t¶ø›ÈOa¥‡ÛLcœµ0CE.y£g„K∑°≈π§Õ/>îûÙ\0ùË†ûh«Nh\0§ÌKöj\0Ù_Ö>#∫∂◊a—ö˝≠·∏ v$Ñ|ÁÎÕvæ?éΩ{Ê^^‚Ç03\"Ü‡„éµ‡Ò»ÒJ≤F≈ee8 ˙É_Mx/≈\rÒ¿ÚY‹ﬁ’mH	∑ôTtl{ˇ\0:⁄è*ï•≥3ù÷«ÑG¥⁄Ã>\\mÌ]Ä∑∞B%±∂ätó|a[Çs«5ÈânΩJ9Â€∑òYÄ$ª)˛^Éß¯KI≤”íÃÈˆ˚c·\\(‹G\\ì◊4´SßÕdÙŸÛæ£m‡˝Y≠/Uíﬁ\\H[\"h…‡Á¸Û\\ˆ≥®C}´K%≤IÆq;eï}	ß¯éMR-Z[}^7éÊ/î£Úé£ÌÕc™‡ÂzöÚh“WSÍZ]MH#úUÖ3Ç@5N‹úÉV˜¶k§Mñ¨¨ßæª[xÕs˜Tw≠D∂EIaùû;Ñ9Xí<è|ö…ÑlO5e√É¬éøùZ∑’g∑ÜHÑç±∆Õg\'.ÅtK5≥@ÌäQ‘ÚßÇ*£Ê2pFiÚ›ô‰ﬁ¸±=GzéV/åÕZm≠E‘àNK|ﬁòßóí\rFÎÄx‡Ù¶Ì ú„÷´†À|c==jU‡¸ßüz©ØñTëÏi¬R¨z¥êãõ…Òäô$lcı¨ÒwíEH∑\0˜’iﬂÇj6ùPëÀZÖ•Û8in h∞4·ëv++ÉÀg≠[≥◊\'¥≈\'Ô\"ëv≤8\rœØ5®™†Æ«8ÔUj‰„ÜèzN)°ñ‰e6Å∂Çœ èÂTbûH_êT´`A&LÙ=1OÇ(§å‰ÁØîì∞,ôëHı°ë\"Åèòwˆ™∂—ï„~4Rß“≠EG†ÛRùpˆÕ<åé¥õ≈2F5∞+Ç:äÃº”ìo 9Õmë∏{’i∞2@ÈÎF†ÆsÕiÂ?£bû^A7jäR|¬M^∑ïv∞¿ÁΩ¥à€x<˜©„#∑“†åc=jƒ*Y◊åˆ¿™aTÔSci≈,—òú@…±◊Ø<äµkl∑∞-â\0»Œ0@™I‹4)éOJê&ÓZüÏ“c0Nµv ≈ÆÁX\"R“sú\nvæÄg¨XqÕY	∆zJë‡)+D.≠ÉS‹XOgrO¥yüt…™PaÃä¿FzTË}ZbqNŒ\r≤Ê°í0FqRÉúÛN<ÉÎLFUƒ?)ÄF+î‘lÀ»xÈ“ªôXYW∂®¿ë‘R∞Ópw¸§wœ›ÓiH≈v∫ïÆÂbÆBÚ\'√ø¥S\rÅöp!«#…A\0g†§¡1åôê`“û;`”rAÙ†úìûÇòÖ»ÖyéOê|£=ËÏ3ﬁÅàÁìäh=^)X£±§∆‹w≈s¸Èçœ„¿\'ÛÕF;ö\06”µ9s“ù\Z\\∑±i:sLEtW~†≠{p~…≠k\r>ß3Z-£<lBäŒ}¨Q◊úzy™/hπœ zWY˝ã#åÄA®Â” √ÛC~çKLW0°”¶í’ÆïínÔJı?	xSPπ—∂ä÷F{∆äY§ø$c$`‰◊-¢¯~ÔUΩÇ \0YY∏ÓèRk’Ù´ó±éﬂH2ñ)|ü›r„\0z◊&§°e\r ÿÚo¯WZ€≈%‚ômÊv	¥‰ËGcÙÆœNº‘Óº7‰y@i»UdUfVçªÈå˛UÈRX\\Ka›[•√\r»KêW1”‘q\\ç˛ãüym\rÈTúì%»9èª∑‘~¢≤x⁄éû˙ëÏùØb≠Æ©u‚\nj\Z^ï•-a⁄Y\0Ù‹PGZÛ7¬˜å.d’#û<∂1JP∞$ú~µ◊ZjÊKô,¥òﬁ[rÌs$+IFpØ#ﬂÈ^xıﬂ˚pö∞À\"HL¯ü∆∂X…4¢ÙSKSÊ£¢\\DìM*Xâ\\Ì=q”Ò™[6M¥=+“ºU£xz¬á⁄ÆWéDS\0∆Œ8c”ëéá5ì®Ëv∑vñÛ≈s\Z\\ZI#aé\0»w≈t”º”wÌπÀ[Àµ‘£0êîØÆ√√~-_j1…{\nﬁZJs1+ôxÏ÷iÖ˚=¨p⁄¥çrπå!w„–~5CU–ÓÙmB[+’*°∑)∆∞´Nn‹®À™:Ø¸M‘5Ÿ%∂”Êñ”Kd\n 8èR9Ævk‚Í	ˇ\0µÆå∞!é7ﬂí™zä¬‰d7CV≠≠…êä:—O\rF1ÂHm∂ÓŒ”√≤_j˙ŸÜiã]NVSÁH…◊üC≈zU¸Vœß√¶[.Ë· H\në»\'◊ ◊ô⁄Õu\r∂ù©$¨∂ì∑â¢òÁ°«l¶Ω/Gíyıóó[∂Ü&i<¿#√D‡éüñ+á=Ü∞W—ªaÜ£d» ¬i£ÜQû„Æ∂œ¬v∑R≈k,˝¶$Yd˜	œOjË|`4∏ÏaΩ1[oÛ—ëå{∏VÅ¯f¶“/Ì”Iπ∫ãPãÏü:˘åÚ3∆GÆ(U=›7*«9‚Õ+UmVﬁ\'[{C\rÊ∆§/9Á€ﬁº≥Xä⁄“g∂7ây\Z9	,lHQéÄŸ?•{Øå)|/ŸnP%¬¸≤n\0åìÔú„ÒØ‘4Xm#ëëºÃ1\0ûπÆ™frfV7\\òŸÿaì∆>i∆ÀÏë;»ÇF€Éê~OÒ´öa{gu(ÃB„#úÒ^Éq·&“Qû%î~=¯*HÎÎˇ\0Í≠•;n$Æy\ZE:∂cÙ`H¿Æ£√\ZV∫≥JöuπÛ’7˝˝ΩFÎ]Üó§ŸZ›[N≈P£S∫9TåÆıØQ]ﬁï••ƒ°dIgî®HPØ»…Ä\0÷jÈcXA-NL∫ÒØiqß\\ÉRH¿3‹«Üqìïˇ\0xÁÇ;\n„<S†ﬁÈ$wW3©ìvËdÀúıéƒwıØ]÷\r¸◊V∑P¨wy˘lIPU≤¨ŸÓ>µÊﬁ;∫˚5≈ºwv—5≈ƒfI&å|§íx\n”ö å˝Ì;nrËZùƒPÕcdƒ9UXs˛8¨k±,ìE:4s#êË√ï Ú+WNíidÅRÒaE`ƒªÂú„#ÁøoW“≠ô.ÓdºﬂuªrXKûß8Î˛5›yŸò…´ÒiÚMi√K\ZE$æRÂπ›åÙÙ˜≠Î+mWQñÊ∂µñ%ÿIm™ªF89‰ûøZÂYQ@√˜•BªæpyÎÎ]Âµ°õMÈs§ÒE“¡x˙eùÔ⁄4’€ÂÀÂÌﬂ¿ÁøO≠dCeur¥EYA‰6@œLˆÊ†h Gπf´Ï¿9Ì‘{V§:TÒi\"ˆ4ñ“ØÔ¸≥∆ÜsÈé:˜5µ˘‰…~Í‰v∫s€C˚[πS0\0ü,åµF+iµìqnÿªx„O‡*0˜kW*Ì∑jr}±ÔZWó˙‘ÉÏ™≥xäÕ*H¡8ı©)›ÆmÅ+^€åΩç¢1[≠¬5ºh…Tf=≥÷´Et—íA<WXö[Íöu◊ä5€Ë£7cåòŒÛ\"‡„¶Të\\õl˛…SÚokìœÄ\n?NjÍBœôl8À°÷xvÂæÛÜ‡WFnwaıÆ#A∫\nJ¬◊H&ÃÈÛaÄ}´™îØ9ËÕ¥∏ÏX|ºsNôÄz˚’yt›F+apñÊX‰aÿA˘ΩΩE$rXÈÈ<≥°5¢h¡√£yà´W º±≥¬y`ÿ¡™nÃíÄAcÄΩjÌ\'évîñ™çs˚“„°»iÀK!!2ÃI¬ì»¨…ßo3Á‡’àfH¡vŒORF?∆≥Ø&_0Öl†Œ)9hR&3¸á´I>9Á5Yß∆F:´ÊÚrp+7=FërYY˛˜JdSî<df†irôú”‘§qóDÄ.25ú§=…fπ\rƒcG5 °\'≠(¯rxcñ⁄:~+ZÀDßÔM¿Áˇ\0≠Yßq⁄≈4∆„éΩ*˝∫‡ÒÎ»™◊05¥æ[\0\0HÂS≈!PN\Zﬁ,ocAYJ˚é‘‡r„ÅPÇ=i≥;€>… ·ÅSûµ±6%ü ú‰b®˘¨ÆFjv∫mÉÊ»™O6ÊÂsöŒsô9rGaäà»ƒ`”wÄ8=iéBêsûıãìcµá	qŒpHÌQ  íå1 Åú˙‘O!vFM$±π¡Ìé¥ábÍ«Z∂ë	Ú˜|«é@™∂ä≤A‘˘ô«∂*˝¨L≥)IJ‰6qäÕéƒëF˛ÑÜ‰cûæïn ıÌ.£rQ∏«≠õ=+ÌAíå;¶¸9ú}Ó}}*;≠1ù§\n≤<—¶	TŒÛûæ’å•£ä:ï˚ﬂ^5¡…\n1Ä*{´§æç	FÛS#~+◊zèZÕ˘îêA ıµ≠ÙÈÓt«ªÑé#ÛÑ?0˙äﬁ1åR±*EµéÀ∆x≠ÙÀ…¢Ycçô\0k6\"Àûz˙WW&Ωui•}ïdé{u`U ·¡#8˙UUú‚ó A+ÍbÆûŒ≤ÅΩ&år≠ﬂj$Ö„UíEÃo¿nÊí{ës+4lÎÊ∫É˘÷ïçúqf‚Ì›ë˘eFÔõ†ÙÁ≠D™8«R‘UÙ(j0ÀoR´0æP‹8Ík?ÕHrÒ´˘íìøÉä⁄◊eh¨‚G1¨Å∂íÃ3íF?\nÁ¨åwóçmpÊ8fÂò9Õg\nóçÿ⁄‘äkföŸÆ-„!S˘ÎÓ+$ªïb=Et\ZŒï{¢@†Ã≥[J†¨–6T‰qüCÕsnJ®$åúÒÈU©+°5`∏î\ré\0¿jë8»©òQ‹ÁµDTúñ„@ #öiaÅ¿Á•#‰v‡–°¿\'÷Ü\"D€µ≥«}jDîÄ;zqPÓŒF24∞H∞FŸ]çê=sP“\ZDrë;‡19¿Â∑fLï „äû“Ÿ‰∆»›Å=ÜkVÎGπUI`+\"avï»Í3–˙T:ëã≥e$ŸÖ‰0∆@œQVÌ-åíÄF)$7äπj\n<†≥F@é=\rk∑ï§ùV/∏Ü8¸µ[ô,»π≥öŒVWBç¥0uST.%›+πOptZÓªm5úz}ΩîB8ﬂûy~ú®?›„åÛ\\ïÏ±ô‰nÚ…„w\\QÌ®ﬁ•Xì”•CÄ<‘q>„>‘ıâ¡≈;ç\"¬,oí·\né:‘{à5:+…fU!U˜4£<ˆ´éÁµ	Í+¡<ôYà#á•hAﬁS/íò$·±Í:Vt,cb≠∑o#iäÈt€v[xÆlß¿ﬂ bóÉÄH>π**Õ≈]\rQC∂]∑ B„¶{q¯VZ¶/Ñ Á-Å]™Û^^H◊n¶·Hc@‡Ç8ÙÆbP…sœﬂŒh£QÕk∏Ït0ÈÚ˘N1‹P∂≤]ºÃfBãú„ötZå/ò¢#Ç2Ç;dgÛ´í¨v∆Í$rﬁgñ˚p|–y\0è^Ω+.y&Ó]Ü[ﬂÜ˚-º1,ì∑\0à¬ó9‡]ø•AÜ^\\‹§œ/ò»Õ∫<Ù¬úı˛XÆwCùéºí∆Ríy€Xrª{\nÓ|c÷∏¶9V„\rÊ\'!rG9π\'öÂƒ^3çûÅm%h¯ÍI≈@@Á=kBÊ	m&6Õ∏HÕë⁄©2|ƒcøZÙc$’—c‹≠å`\Zú+ddéï\ní†Ù¶y«Øz≤»ì≈Vêﬂ68<bî»[€“öGãhœJGBÑdÚ@52cñ∆q÷õp·›XqTÜ0éºS¡ˆ®≈<ÛU`£&ÆZ!rTá≠T_jµi!é@¿}G≠`gCeq$vÕœÚrNp*∏êºßoÕÉ«†™“]ßnA#˚T+(`‡T(íÀYñRbè<ú‡sÕ]áN{$kàfI¢ ü∏øc≈QäÍ;o0™nëó¡à(s‘ûÙê‹ô\"[ió(>Ó‹◊ÎQ5\'±Iïg√HNÓI?ójXâ\0éÁ≠F‹æ8©ê¢∑ä≤&‰ÍCZ~öâH5*øˇ\0^¥@4úgü≠>ÿ∆◊)ÊKÂ°ÍÿŒ?\näV<Ò«≠@ßs`~T6Àô‹ï…<ñ8ÍsU√\0MIV?0$t=±P»¿;cﬁ•K†Xî∞Êõ<œôÄQÎLà+±ˆå3ìÈQó9>æµOau:ˇ\0i1^H∑R]¨>Y∞ù≤qÖÛZ\ry-¨óh≥IˆÆ √Ê¡N£=3Ô\\<ó( –≥oèî+‘ŒEtÍÏÆDéŒ%y3çÁ#¶söÂú,ÓÕbÕ˚Ÿÿ°ΩK+ÑÀ ´Ú‡Xz\ZÎµØ¯û»Í\'Qû⁄dœ¯n√ÓÁﬁº ÂÌÂÇ‡B^\\å§Áÿ\Z¢K√$\"C∏)˘I»≠)…Xâ£Z˛∆}.)ÔlnQÌCo¥1‹s…8«\0äôe≤”‡ñ+´)‹nÀ6\n±\0å¯Ø.ß,øgÇ{xÇ]í©«1ı¨ùGòÀ=’…Ty3¨IÚ±\0`Ä=kh◊QZôÚ∂_÷º{û‘t€ïπûÏ∂ÀY[	”\'ﬂ\\◊ñŒ$V\"ï„8#VΩñós™^˘p∆HqéqúT> ∂{;˘m§!Ãc‹ÎD•Õ“IŸrsüJÑÒﬁ¨ÄπÁúˆ†,N‰`†Z¬L≥’~\r\\\\\\A®XZc∏àâÑ®√8Jû	$zUèÎ∑íj1ÿÎrÀ–ûUå*2\0;nµÁû	÷ot€˝ä[}°ƒ23)Ùol◊ÆE·ËuC™ﬂÍ◊\nûI-1F·ôrvÇzé?Z\'UÚ€Ò%E^Áùk⁄îöüà¶i!vw#…öÂB≥(„∑ˇ\0ÖnÍ˙uÆó·§ìK÷\"{€∏ï0†=–ÇOZ≈Òû∑ß¨[^ŸF∞ò†UTU⁄®Gß„Xé¢À3º“p[Ç«ø5ó4a∂£≥f}Ï76◊⁄R^c‘zØzÏ<)≠j::Mokk)ªi…Ú_#p…⁄TıŒhÉG—≠ÙÇ§;_Ì;À8*W„ÉìYRj∞⁄è:¡•Ñ¬#3˚Ä<Ù‰u≠b˘W1-_Cæ–†ÒoàÂ‘u.xß@ˆÃv1\0ù»	Ë:kœº[>≠izloUaè%£∑?t	?.kªéfáQòjíÌÇ‡oi?x“v<zÁöƒ¯ö˙å˙˚K®Eó∏à|£ú®ÎìÎ“¥ªîe+ﬁ”.\"-¨˘∂øfÅ¬œƒíT˜¿Í>Ü∫è¯ç5/€ZinT\\ì@à·NpßÆ‹˙◊?£2ˇ\0a›« ìÀ¬≈éJw-ë–zˇ\0ç%ñµ˝íåæB\\€G)o8\'Jï⁄sÌ˙‘¬jç›ÃH¥9V+¥ºåE<@í’ç.»ÿçôÄjı˛´ˆô‰êÇq›û”BsäÂm‹‘Ç`ûy1å#ûïP\'®ßI\'<”ûıZ±\r<ô®è9ÕH:üSMe∆H™C#Ëi@ÊÉ÷ÅLh	≈†ä8≈ í)csÜE4ÒA<–3µ“<DñM$∑Iui+F\Z	,˛@HÅÍµv∫ñπ‚KﬂYO=Œõ{ß…)EÛÈãdı\'¶?ñ+·çıñ™Ô°Î\Z}ù‰1ƒÌõ>nﬂÓ°œ_J5èO§ÎØw·ø5·Öƒâ\r¬dØ±ÉÈ[RîbÔ}LdÆv>¯ü©Ÿ(èUEû¡\0OøôTÙÓ¬µµÔÈZ≠Î‹Ana¬»”!We<1ÈÔ^q´¯ìOø”,‡ª–$”5SÛ][èóπ˚ß‘˚÷Æåˆ∫ÃSﬂ\\‹\\≤\r™í*´l`ÔïÀåïJ~ÙuL∫kC’<;•ŸHäl$òH§ô$+êº9Îë^a„+{ô<Y;H$9î$qàπp;Å^â·à.t=j+ªF#ﬁ‡6‰e=®Ì]ätOÌKE∫≥ëaΩàÜé^ÑÛœ“≥Ü\Z—ªVl|ÁÃöî–ãã¶ä‹∆0P$˜$v5Ã»éèÛ‰Õt˜∂W7Z≠ÂΩÃÂòL‰ Gﬁ ÚsYñ/ˆXò`≤ÂH[ﬁµ÷Î˙ôå3Œx®è^*VS∑=«QP’Ä)¡•g*xÁÎM#4grÛû)X†ﬁƒ‰„äi˘œµ!Ù§\0ÊöâUAfòO?JnÚ:p)3L‡ƒRìëÔH8§ÅÜ2(†“RhÕ 4£ø\0V◊Ü<A{·ùr€S∞ê§±6JˆuÓ§wâöp$\Ziâ£Ó=V∑◊tK=R’≥\rÃK ˆœQ¯+Bæm¯;Ò\n}.Î˛€π\ZK{í–uÚ‰\'†ˆ9Øo≥Ò)˚T÷◊–¥R∆ÿ¿,ìÂ/k≥Î˙‹˙ç¿⁄Úûqm£∞…™∆›·é9K£	@VŒ>æî»Ìdxç¡è0+m?69©#u* \\©$íèBôb\'¿¿95`…ÅÀUXc=®cÄs“™‚πag#=jUü,Ct™”≥sÈJ$∆x4∑ç…¿©¸¬p3¿ÔTG$Od!ıQN‚H¥áx#w”4N®¨§1 é~µÓôY6FzúäIÅ¡`ÒöÆ^£∏∆r›8\'\0ûı6W!πÙ©.∑Ä†»ÖH›±›ˇ\0Î’&O¯P¸Äùfa«ı©º„Ä6˛ïO©¨FqåRW,ƒƒ∞…≈^HŒﬂz©Dê}kB0›\0‚¨dM2±˘ΩçGãÀ8B¡Id„ö—Œúc$q)tv‰†“é® ´©;ÛV`Äl÷∆£wL\'TXòT;‘6»—å‡ö,!`ÖYq”Îﬁ§D*‹Áé‚¶Tw‡g9«aS-ÂR“!I@‡ßBh∏¨1‘ï ÄHÎQß*A§WB√‹z”^FV$öh◊Rù:zUi2‹µ#ÀÇC~b´ªÄG4≈búüß5=§;ÿ\0N„–…¶ÓRÁ#©≠--a˚b¥≤4*9V	û{g⁄™ôÿOkñ≠≠¸ïí9Ì‰…M sÇ	Ë~ï)∑ÚfÿCa@,sﬂ©.º»úá»$‡Á8>„=©Ì1kdçrùÁéEk$ñÑ£gC±ä‚¬‚Ì„ÜQ%ƒèÛï«8S◊Û®gKhÓ≠û);3 ÁµPâä€w6›€±û3W-R#  cP>\\’Û¶íH,˜Ô…\0£Åª®ËÂöaçqÜ⁄pM9cP«,H<ÙÊ≠\"x*c¿;≥¿ÕJã–∂÷ÕlÓ◊($YTŒ;\Zœê3ñ8t’+1∑•4ÇHß)i`Q\Z£±<“ıÕ)Lú”Çz‘°çî‡t©=i€)à©.qT§cú«ΩhO∆}*Ñπ&Ä1o·tÆ^ˆÀ%âˆÆ“‚1\"êEcﬁYﬁ•¢ì8kõf^0jõ©V∑≠u70‰∞ÎÊ˘{÷v.ÊTáèŒÄ3¡ÎR¥8núîé‹é¥à˜$p(˜ıß:ê0G÷òNzt†ÙÎ⁄êìöp4∆8<t†C]≤1û¶ö)ÆrÙ·≈0-⁄ÛÜ∫ù:(’◊85À⁄¶˜tÁ5“È‡Öâ4!3®≥∑Pw+J8Fyó`≈:÷G\'∑>ï¢±õ&0!NÇ≤/-≤¯=+q>Ì2X<—–ShGKŒ÷û‡Jóbu\0Åú˜ı≠ÕVÓ◊J÷”tp¥ÃõZléƒ∑Û˙äŒ“¸=ùaÊ]dŒGõG.“\0Ωy5ZUûÈÌ§x|∆LÓYyÛ$Ú{◊\rZ\nSÁ/õ°õg„Fµ’o$’ôßuR±¥cÂçå‡ïàóUÒ6ùsüô0⁄í∂\0T\0Ú¨sÕX‘-4W≥πªé’‡b6À	9ÿI8?NïN“Ò·–^ 	ÆC) v*;ØQ¯Wzãö(÷∫±Â7‹X∏wπcq VËsÇ\rvﬁ‘#“Ùª)Ñœ[ùØü¥∫ÛÚ∞?°ÆsY6—4ÆÍ∆ˆI≥∏å)uÎœJ–å⁄⁄√˘VÚO©¨{‚°£‹#ı™mŒ∞ûåÙ€Õ+¬~,ñ‚˝ÏÓÌ.îî9p*9¿œ#≥·—4õq†-^Tç+ƒÅ+cåÅí3˙Ê∏}C\\’c‘íñk2ÒN6ÉSπ˙ı”ËZ››ﬁè\r‘j≤,ó+ÚFTÆ6‰u\0qıç^tìçù/á¸ù:ÿ4‚;o8b<2åÚÀÏ1”€5Áﬁ<‘¨ıÅæP±ùÎúø¬z∑„mv·Ô°ÜÂê…d)Oõí	Ó+íæ÷-oam¬0H*ÈBSjl&ïÏéxFú\01SøÓëS<Áû{VÚi⁄cì3^)ë«Àn™AVÌì”%ñè¶œ©®º— ê#§C/∑‘W{´†±◊xvŸoÙhR›ÌÓf∑bcõÀ\nb„$?{ÿWkÉ[A$∑≥*‰;´\0Cn\0™ßá|·›/Y[›3SûÈ`\\¥9»\'œØ|VÙVˆ]Ω˝Â“E≥Åe±¥û«”≠yxÖÔ]ltB—F…”4…Ïﬁ+ªdDH‘·¿ Å¸Tç·Ì>„Eû∆$DKÄwÀ\nN{÷e˝ÎKné¶±`[h\'w˚kV‚Ó[M.!å»Ÿ √–Åﬂ≠Y≠„s«º[m´Ë:áŸn‰ök(\\5®ö2£Ä=èäÁTNUd∏B¢g%O\0u¿Ø†./4ΩRœ ∏…\Z∆\\˘∏„íG^+«ı›.(Ÿ/,‡éífX÷7‹•F0q€÷ª®J˛Ìå$¨ÃKΩ\Z›¿ñò\\Ï22„k)¶+“t}Fﬁm8¿˜2Ω¥qÇØ∆w\09\'‘9Î\\ÄEüIX.,7›HÃÈ:û[∑Cä€–Ø”C≥ö;‚Múÿ»d√é>b;JúB.üc∂>—ı’Ç¸≥áëFX6p0}+)º\r¶©o™…!Q.◊BIrO „∑÷∂4k{Üáh@÷ó\'x;˙¶8¿Ìÿ◊I\0G∑\nàB\n7µ∆£°§Ω÷y˛™≥ﬂIßêÜœxiû\"uŸ@»Áú˚äÁ|S‡fπëeèKöB∂˘8ìÁÛ\08 ˜È“Ω^∂ñT]8,o)⁄Ôˆ<˚÷<⁄∆∑£$q…m–‹Z52Ö|Áæ{s⁄≤MßtDµ>w∫∫1¥ñﬂgkg\rH˛UJIfπ!¨‹•´vÊ	µˇ\0ãkàìMíÓÊO.IÿÏ@rBÁÎ∆}Î–Ïº	£YxÕıôÌ≠$fyeºè,ÁÑ„\"Ω¨=\'PÊúπOû	#îØîÍ˝¡‰‘hJ∑®#°Æ¡4›2§Í™÷eºßΩx˛Ufé‡˜?Z∆’ÏÌ≠oûi“i ‹&ëxIq\'®È[Nó*Ωƒ¶ûÖ·éI#Dî*π\nÕ!¿RO_†Æõ√vö<¨j⁄€ÿ€odî€‰ó`˙»ÙÆHíß84‡Ÿ]áÖ\'9≈e\Zú≤ª@„Ãl›⁄XÈﬂeº˝¶9]ö) î+mR@‹1Ú∂p~ï±sˆà≠ehLw2e¶ìÕ._ß,!ª˛5Z⁄“È-ÊπÚw€FUüv}?»ßjw˜:’‘◊ìﬂn¿¿€–¬¥uSMl\n6zõ\ZûÆe—¥I<¥¢#k(\nÆHËπkç´8ìp í∏∆”ö±4±5≥«`*G$ï¿==éjúåÕ∞Bå\0)TÊ±qI¥∫kiÅ…æ+ß”ocª0Çﬂ)`gµqÓŸ$‚¥tiHª\næÏ‡µ•:Æ;äQLÙ—z¢Í«Fsqn\"π9tî‰©‡t‘”|kv«ƒ7V±G∫e*e`	w¿Á#ÿ+í∫|ﬁ®ÜvëJ%∆{˜¢{©•âU•,ó∆z1Í~ß∫V!8ôrY‹ª/üÜ~0vûzCHí±#éúU‘$1¬q∞>xìÓ{÷ùå∂≤K\'òÈ\Z\"ñ@N„”~u*IΩ’ãvw©Ωƒmní≥&–Õ¸=~µâs.∆pŸ<g•J˜Ø\Z4`Éñ8¨ô&‹s‹˜©sË5√JX@8ÁöÅ§…Õ0>Ojlå+P‰ZHùdÓNEOÊåéÇ≥’˛Sä≥ÖÄ4ØrljEx—†âvÏ¿e$éhÜr≤∆‡3˜ÜF:UB€px4÷ê‡ˆ––Äπ(Fïô	x◊Ä€qü¬õø\0`qTíbä∞§9\0`}kh¥Ìæ∑,:H¥)â7äXñÍry‡gì5“…®ÓOZe≠±ºøä—dXÃán˜8QÓO•?]”GªKaw\rÀyjŒú™ì€=ÎF€BI&V3ÄA•7ÌDÉûjì9ëKÊ`k\'©Eœ9éx§ »2[oéI´HwQúR`9\"⁄†ÉöªJ¡w±⁄ﬁîëDí¿ƒ0 ˆœ5,JÆå∞Pd`g<÷oP\"à˝ñv⁄0åpA+§≤äWi.ÀÌ«<’+-*õ»ëØÌìÃV?æb∏¿»…«~ïwPíŒ“VK%Õ„åúÏìqƒÉYI¶˘P“m\Z^Z* H‰∑då‡ó…2rsû›qäñÎXí8†√åï2Á\rúŒ=+£∏hõîNT˙˚‘edÂÿd1Ê•Qãzâ›[{ Œˇ\033nn+cL∞2€K$WÇ“B§ /¥8ÔÕ`¨õNNx,3õçñ∆X„‹;ú˜\'“∂î%%dDZNÏxø˚-ÿsm¥˝¬º*9ùMÃåøΩoînÁÈT&}í∫ÓW⁄qπOÈD7EfVê¿;AË:’8ÿ|∆î»˙|™2c.2w/Ü{TˆZ≥ŸH#πÖfå∫»úqû∆≤µ)ôÔ&ùô0Êv†X`k≈ç§fàêÆy˜¨§î£ÔõLﬂ◊o„{◊ëŸf3ÎQÑ…ˇ\0ùS‘÷√QñMJ+y≠m1è›≈Ä≠é√=*‰∂VñËÛ!{Å!ÇOn?≠hxn‚≠\"ÁK{Ωèí—åˇ\0¨\\|»AÍqúWJ™\n÷∆©_sœgø∫6ÊŸßgÑå$ëÏ@ÌTïwH™ÕÄOﬁÆì^∑”e+>ô!hBÌ(T)\réxÆm úc8W]*äq∫V3kR{ãTä·ñ)ºƒO„p™√h`NC¢†b‡+pﬁ¥¢QÇŒJ’∆ª=2iπ…œ•XÛ†6Øá2nd¡TÚN3Õ+Öã÷âe%º¶Y¸πëK\"êpÁåéùËçŸTÄt# –’\\8ıÌı´≠#òB∞˘W⁄ìL§Ïvﬁªb9eâ&dê©<cÄ}∫è∆∫Õ`impóê„…`WÚÒ∆yﬁè™‹«Q¿XÌºF6züŒ∫hô.|96ß®M¨ÑMnx;O›eıÔöÛ+a•*úÊúﬁÌä⁄d€ò2Ã∑n^O˜Hıï©b∑º	`ï‡Á•K6•ƒÜm“±f‹Ò∑ØÆE`ﬂN“ Ó√íOµw”É≤πãe9d88ÕRlÁìSºø+ ,zëœ·UK`˛<÷‚$ãñ#l¬í6ÄœAYá*ﬂ5K¨™1ë∆*\ZÕ∂Od%≈π ß!àˇ\0ı’CÚø^ïm∏$úzUÑëäë¥˜©Ÿ‹¢4´!*K9…Á5¨ów3™ü≥ìΩyh∆Hæ;qY–ÖY0>X8aûH≠›&Ê›5ÑÚSm≥\rÉvIQé~ΩÈM¶µkx¨@“›´1zåPGq‘◊?´ë.°4äÀ\r±J}ﬁ=\ruæ!èNä-=\'ÛíÎ6›•òì‘£ƒ;mÄ¸Ü…ÎÔY–›»oM*Dkâ*»“°‹ô…S»‰~µ“xw√∑Z⁄¥vÚïö7·\'˜á∞ÊπΩ28ÓD%CÆ18‡vÆ◊¡⁄£Ëz∫\\ﬂ®6íù¢QÜt»„üJœ)®æM∆∑3¸A£\\¯OR∑∑˙LäY√0m‹ˇ\0#]üÄØ·ªéKYK¡t>t ÓÔ◊È\\wãı[k˚Ÿgïç»⁄b∂eìÇGs“ªÜ–i˜öCDó>F°Ç ¿íÍGF∞ıÏkä•I}]J¢‘“:»óX–m+¶å¥≤õíÎ*\'‹R9Py ÛèjÛMoOm:‚9Oó>N”¸8=\r{\rˆ¢!-c®$q‹wE,/ÖêpCé›π_zŒè¬q¯ØJñ;{ÿ“}ÃdióÄ{m@˜¨0ÿôAﬂ†Nèó\r#lR<µ)Œq≈{∂ïìL”≠Vma⁄{µRØ6Qâ8pLSºI€H:—PaºÖLêy@û\00Ô]“Õh∆|§{\'c¡#‘äp˘èªç[¿2€ZO=©›\r¥ Õ37@§≤ÅıƒÖÎéµﬂGN™º≠SåØz&åà√(‡u§C1ú‘íe<ò5≤X{”Å«ÁM¸h†ÉR∆ÿ¡Ój‰u©Â9œ“Ä‘∂I„öis˙SCÓi\0Œiô:å˝iàlé)® H»¸*rôrËE∆}©u®›é9ÔRÖ˘x<UàÏ‰ûX÷%,Ú\"(…\'“ßÚZŸ⁄	Ì∆¸Û&ööZQW=	‚§ç0I=:˛˘-¸áEórÓ‰‰vıiÖ¥óMoß¨≥4ä©p2ıˇ\0ÎU9§+s Ÿ úìQ⁄\\-µ‰r»õïO*OQ]µÔ√Àî–÷ı.3r#Ûdâ–Ä´éôıÊ∏îíáäU√°¡¶ıçƒ∑±æ⁄ûötŸˇ\0rˇ\0kv˝–¿$ÁÎ∆+H3œ5!≥sa“ÆP±V9Ë¬†û›Ì ÇdsQ-\nhxrŸ JLÂXÄOØµDéq¡‚¶Yú.–0ßÇ}ESb6¥\rg˚ı¨‡∫â˙á\\ˆ«µ?P]”G˚ò¿`1åc>£÷±—≤¬¡«\"¥..⁄Í›w.†*‰cæ\Zõ\'∏;Ù-O´Kr»Ø+e8‹¶?PSíGêÉº„¢ÇŸ≈k&≈wM±±…?ﬁÆ)≥V·¸ÇÕÔê∏¡#‹UF)hÅ∂Õ‘¢›dCÊEÖFétwg%î•.±`Ë7ñ Áêﬁ’ƒ<åzû0 Èù¨@=yÎSRï¡3‘†‰œŒ£‚¥Ñ3˛CÇ#ØlıˆÆcƒ>ñˇ\0Vº0Õm\"Z¢≥…°ñBﬁûß÷≤Ùøõ[+ãKùÌà€vü„ÌûGw√\ZÍ[kP¡Iki#ô$EÚ¿¥„≠…ªNÁ1PBÖ¡^j±;zqÔZ∫”ôıõ©‹ÂÂïùé¿†í};VS‰Á•Dí5Ω»XÌn\ru1¯â‡–\"K]Baså<g$uÔû9Æ]Å#èJÙÑÒÿjZçˇ\0áÔ—æã0»@‹ÆπË~Ñü¬•EIÍ\rˆ9{U∏∫≤íÊO6@$\nH√ízJ÷¥&π5Ñ⁄ª⁄IüÃÑ<‡Ì˘Æ¬Á¬◊^‘%‘ı_(GÁÅn∞Æ‡Õ¥Ì$cÿùÍ-o∆zÆõb4	\"öŒ‚‡ô\'y„w1ŒÉÈ[¬Ç›êÁ≠åøxRﬂP’‚Ömn.\ZF∏πÆzÖ„ßaèZìƒØï≠oÌÏ◊ÏrH÷5+#é§≤úêzÛÌTº+ÆÍæ◊û{FV·Ã±Í?˙Wºi\Z§q\'⁄/RÍ‰íëê\0ﬂ;GJÕ(π=6\rlx˝Œë•[G4v¢‰‰d˛b†Ú:úp28ÆV’&∏π&IY¿\'q;âØyÒÜê\"XıÌ±¬—´-“\'\r$d¿=Zæw‘ö‘Í2µØôˆr«Àò}kJ±˜Sà·æ¶ñÉ˙Ωƒ∂Ç· ë«æ\\Åìåˇ\0ú”%‘¥”Qê3ôsñÎ*⁄Xí‰wlŒ[i‰äìl∑7Ì\rÜv»€cU>ßÅX8ß3KÍ6H÷YK&>l`t™≠n»#ìè•OÛ,ç°ôΩ¡ÈHv¨%PÁ$÷MX/rºˆÚ¿7HOqUèÕœqRÕ!b0=Õ:([i§ﬁ£« ã>ïka±Éêi\\qMa«„O^Aà\rÁ40˘à§Ëy¶0»Ùß\n@)§4\'Ògµ\rÿÛJsÎ@PÕT∏—ıkmB’Ÿ%Ü@ﬂ)∆FyèJÙ;Ô€çg˚B⁄˘Ô4Î¢∞)(Ëé˘œ5Â√ ‚Ω·Uı£j7\ZéÈ°fä€ëÀÆG“≤ù6‰•ƒ⁄∂ß¨ﬂ¯˚¬Ë÷Zœi$LV9mÓ°9(=xÎ\\Gâº†≈l∫üÜºGm≤ÇÊ‘\\.2H9¯5÷Í>“ım&\rWMÜHò01∆ÈÜ¡#éıBO\n…¨ìÕùp2!ôp	œﬁ»ÒÕ\\q\\≠SúIÂ∂±g!ß¯õ_´¡oZΩ¢c1\\ÂÅ?0!◊\'#ﬁ¥u?àˇ\0⁄p™Õ5ı¨ª@èŒj‰ı,0H⁄ô™¸:‘¨TÍ´ß∆ñ9$3ÁÓ1€¸k§„C¨hëÈ˙•åB	ô	w\\Pú~¥Áâç$Â-Ñ·}å?Õ¢]]√m{≠⁄Õ,ÊC>ı ±$å‰‡‰Éö⁄’<ó¶]\\È˜ì…,so∑EΩà€Úˆ‰U{ˇ\0Üæ∫∂ia7Z} ÓŒ’$œÉÈX÷~&ÒøÉn◊MmB+ãΩ\n](\"Uˇ\0eœ#”¨°âßQ+ÉÉ[a™ZÕÅÊäd-íK°PNy¨æΩ´–¸W™Î\Z¸ó1›hŒåﬂÈ\në!o+ûO–˜Ø<rUà∆Ωn›71≈>¢CM#É¯Sœ8¶c®ÌRXå”ù¥†„ “ûÙƒ2ÅKILG•äJ\\dP\0{zQA4uÄL‡Qû)){Pfù¸ÈœJ;bÄ%∂∏ñ⁄‚9·vIc`ËÍpUÅ»\"æ∞¯sØiû3‰W≤[ƒ⁄åj\"∫W;õp˛,ü^µÚQ…Êª/Üﬁ4¯ïnùZK9◊ ∏A˝“GÃ=≈eUJ◊à#-ﬂa#¶{Vùçâ∏ƒJŒ=ÆûﬂNû}vÓÎM”ﬁRFÃ2ÄN“ßß„]Nõ·D∏¢ﬂ¡e*ﬂgCªvX>\\}Es∫ç”u#≤!…^«ûjz=˛á4Qﬂ≈Â¥©Ω‡r?\n†·Y˙c]ƒ÷˜Sæ°®≤	¢eFµ1¸´ÿˇ\0∫sX∫≠≈¥⁄‹Ìˆx‚⁄J|Ä®êd·Òÿ◊=<CñèrÂ+£üπeB•¢TaÅ¥Ω3Õ‹Ÿ\0˙UÕA åFVeú∞%óú°™Ê“E|∂¸Ü#åVí∞âÉÄW÷Æ∆≠ !A;A,\0ÌTPÖî∆ß~*‹.ZÈBÄ3∆;V©\\Ë18i7ycÔﬁ§ΩöÃ»Ç”Õ(ÊÛ1ùŸ=1€ÆñÎO–t˚ÿ¢∏‘^Dx¡úC>Y+–\\◊p\"˚LÜÿ∏ÉyÚ¸Ãn€€8ÔZµhôÓ≈b≠ìäÖ◊∏<\ns>–A˙U8Ût5ôIñQrb(ãÄ0*äJ6¸ßöû	ù_©‡ähfú1ê3˝kFﬂÓÙı¨®Á*¿u«ÎZ◊ ˇ\0@i«\nº;â\\ÁG÷§H?◊ñÛ4˜mπ5`3ÜŒAöD`8È“ö±Å◊å÷ÅOìµCë“òäÎ\'îH„◊èx\rûiƒn\nzü› dúÉûîÅ‡D!ëâlsë–‘l•≥ö≤F0HÔPH@<qöH\n“GÛqU§åÖ›éq»\0„95\'ú”Qy\'ÅZ:qëgÇ@ê`ö™ëÉ ¿˙ìZ6Á ôXc+MhÓ#\\⁄ﬂ_Ÿ	Uƒãlx’æe«®4Á±Úô2KäÄÀ%≈√K ¥ü{f¶G`FÛ∏ØØ5mˆ\rX Ûé=j»E]ª[q«<t©æ‘ÌBaéwcÙ§D;ÒÚÛ÷™À†\n∏ìVÎ˛F2á±=®¶≈2,Mº» zZÜEh…›ÄG`sUvñÇ‹êêh8Ê£V‚î∞ÏjF<äx¡®AœZêz;”N;R¡¶©¿«zRFqLV\"u…ı™“B	<U¶‚ô◊å”6Hv‰\Z£<@ÇÎ[2«ûz’	óÆ:äLhÊ5\\«Œ]/8ªãà÷T Ú{\nÊÔ,d$t®e#úí2=hèí>µ•=£(ÈUö å}™FWö%1„÷≥dPÆ@Ë5©,°ÊÔYÚú‚Ä!œ\nâŒ©òqëP89∆:P1Ä\Z≥oneqE¥E‰dVıΩê¿ \0iàÜ“‘¶	±hÅòcÄ)±«ÅÇ8≠{T+ê1B&Êçî ”≠h®⁄@˝j•º{;Uƒ$qVà,)´V©æ·«\'Ωg´êy9´ˆ¿R“°aëO»\r!tÃÈù•\'Ä*‚ﬁ£€õVô#àÄ∂êQÕkeu¶Mv◊b;’lI¸∏®¨QÔÊ∂Ç8Z0AS\"úá=¿˜¶Ëÿû{ô˙µƒ2»Ò£§ìIçŒ€Ä;Àä⁄ïR_iO8Û úG<û^pºëŒ:gèZ∞ﬁi$âVRÆyd«OSüjƒÒRk0Y)íH°ãò∆H‹N:W&.ãï¨ç)ÀÃ£‚€h5Ì9f∂P“¿KÄÎµO“∞4_ﬂ¯U˝ÙßÇCFóBqí	\0c ∫-gY”!⁄Ÿ[…∫Èì|„<ıH˜Ø7∫‘Ô/û;kÀ∑˚2‰\"Õ)⁄ß=´ìF…¬{tÆûáu†x£G–¸:∑w⁄ç≈¸Ïo!ón#v#$éøw$≈jK£⁄h÷◊ ≥¥[çl \Z⁄PZ1Å¥ë«\0ÁäÒ\0Â_n”úıˆÆØJ◊uQ\r∆•<V¢5∂e+Ât‰†k¶T‘◊$∂!ﬁ˜EΩYÏu}*„R˚^ŸD òë>m§∆+ëtŒ\\:ûCä–ëÌ¥˚€àç›ì‰+®*—Öe±Ev1±ú.z”Ö>_t¥ÀV“¥2M)l∞.GJπ•Í“‰i”x\nG°Õf4ÖWÀ„ú—†óÂb¿zUŒ)´sΩ”º]°El—EG≠!\n[q~@-ÌÉè¬™Gu≠xì≈l´y5ÃûkFç˚µ¸¨+õ®\'¬€G&1‘úì]óÇ4ÈÌ¸çWO‘%èvËfç\"`Qè›∫c°ÆI(∆7e¡π;≠·Ùû+:ù™C(Ã0ó`xÏ3”µyèã|SÆ6∑qc–X-Ê!6ëÔ^ª£√=µú–]Ø⁄&X∑îV1«8Ù$◊ÅŸÈ\ZèàØd∏sã>ÁG8∆[ûO†ÆjJ:πt.¨≠¢/ÀØ]Í∑∆˙l“2Ö#$•qœÂSçd^Nêë.»¿¸[’¸;6âZ≈£T\'«ÃπxwôiØA‘7Ìcù$)˚ƒÙl˚zb∫h‘Ñæ7mN£VªXtò›aâßDQ¡œ©Ï9™∫\r§ö°ñ+ßs\nBg∆O\'9˝hãQüZﬂmﬂÊÆ’Í˙„⁄¥%ñÛKë\'1C*…$`ºáŒW#Î˙Rû∑CéöñÌµ€ù3Q≤ÖÌ§â¢ÖcA˘d\r…*9ïË∂WŒ÷ª§ugI\0}–{WìjWœ+£#ys∫rCîé°GnïØ¢À™_Ifw	SÉ∑rå„\'◊öÊqkcFÔ´;≤^jKõëﬁÕ)¡‹O•rﬁ; ‹C\0í#{\' [9)¿««‹Èç\rûô\0yÖ…#9Ù¨g¥—./$’Ó‚∑yIxë\\„vzû¸SJ1ú≠\'b$⁄GñkVˆvó+a¨Y]∂†™\\$l;7Oa”9ØWèI±º<<-r> ∏à∂y«‹≥åı®&—‰Ω”Ù\"E<L%RÀπÅ˘!˙÷ÕÌ‚i:≤òÌKÖåÀ\"˝“zêæΩk‹°Ó3öN˚ûQk·]6≈.†±∑Ü‚˘8˘úBÑ7;p«ìûVºæ˛∆“ÀXk[à.£∑I77òΩq”=+‘æ!ÈÒ¯f¬ht≈ûI5@≤‹_4•YÄ?tc®È¿È\\_Ö|&ø´YE<—≤…â%Fó,ëÇrO◊›Q)≈(Ø3˚ØRì¯sP‘<3†÷ä§∑˙4K$∏åíK‰u¡˝\rg/Ö58f∏[»^Ÿ!∂\r∏dÌnúWu‚ªπ4Oÿ.è-ÕŒóßa$çy¸√ 0ÏBÇ3Ó*≠ˇ\0≈çvÛRÛ$¥≤∑ãÀhÄí\0€ó	>‚≤≠NJåöŸv¨ty,≠Œõs\'ú	`d;r=	Îﬁ©X¡1?!^·∏dsÕi7Ü5#°¶Ω,(ñévÆ+”~ﬁªs∆k_√\ZõÂÆ∞Ôm•‹\"P0X‰aA«S⁄∏eB{õ)#ì÷Ï%∞‘÷ŒTF\n√i»!πŒ®]ƒ÷∑Û@ˇ\0)çäúsÇ+™Ò÷ügg„1e•â‰\\F≥˘éÏœJÁ5Ü∏˛’π[ÿ<´Ä˚e@ªp√É≈7XÍ4Ô©Eêëëﬁüe+[œÊ†Q$ãµUG\0u4˚e›(wû¿T]¥Q}.â@X‰Á-ıß¥°Ÿvï⁄‹u‰Uu¬ÇcÌö.ÖF\0\'p≈\nMhKEÒNÆ0≠Ää:}i˙u˘≥πéÂ\0i\"˘ó<çﬁ„ΩVŒ#$l\neIŒ‚†éÕøöëπLÌ,¿>ï¢ùù∆ˆ4µK÷Ωö[∑í/:V%÷4⁄£ÈÌYÅàLöIó ˙SK·:Á5n|⁄â+£`d˜¶;\'÷Ö`r1–gäçIg+ûqú“ÊJôf&\0’Hﬂ‘≈¡\0Ä=È‹\Z4JïR221Mê|π≈Aíﬂ3\0z¸‘ØvAläw&¬)∞8©≥¥Å‘¡¨Û&_9´Q6afc¿8”Rcd¡∞ƒÓŒF)ô»¡Î@Të≥Ö\n8œ“¢V%zú˜ßÃ⁄ŒKt•D-~¿„≠,¿41∂~H$Ù«oÎL\'\n\0Ù™Lv%OªûıjﬂÂc⁄´€E#)⁄ÊÆG)R¿ÇzSn‡^∑∑aáR¨H›å÷å6˛k;Ö\0¢ÉÖÁüÚjï≥ÏpUkZ	P€…\0å“Éå}ﬂŒïÅ!ó6–…ò∆C!<∑«\\}jöFﬁIóÃB†ÌŸ¸DsœÈZønû“I$f≤Lnªóc°Ë}ÎSL”tã¥E[Ò≈wI	‹{\0OZŒOë\\•ù∂[ò.#ç•;1Ú‰új◊í	‚‰Äx©Œ?:—üDk‚P∑Ÿ¯ﬂÔòå◊∏©t=J⁄6Km@y3∆€\\∏-Á)=«∞‚≤ˆ∑è2ã9Îè :˘Rsï∆”ÈUH A˜«jÔu-/M‘4¶üJ≥%`∏í0zÁøO ∏´tNÔ/$ÉÌWG\Zã≥!ƒ$Él>Z∆\ZIÆG∑•Tv6‰+FDä~`zWM¶≈\0∞ôÓØ8„ÄÖ≥∞∆BÁ¶8•ˇ\0ÑVÛ]µÛÌ6µ√LWÀT ë∞2Ûúr+X7SBtG,n‚wà2î$ Á9=G·NΩ∫kYZ÷›êÎûJúz’{≠2Ê÷Ó[y†dí,≥Æy\0UUëÅ`H<å˙TJ:ÿ¥t∫vØ®F≤Iœ*∫≤L†Ö„€•ej†D÷Í@‹Åâ˘ªëüZ´m´œit%èΩ\n®‡èB)◊ZµÕÏ©#»§ÉÄÖˆ…˜Ægi›\"˘¥±üÊ∫ ƒüz7ddöIŒ%aéAÁ\"ö¨˚÷‰é›˚æ	‡Êö@ﬁ	…∆z–Ç3¯Py@ﬂ›§Õ3®ÜF!ÄÌékb◊@:Ç?ê eÑh’πqœ#<\ZÀ∂∏u`ê@«≠:;Î´Yw√3∆À« pF)+ècØ÷<ea·x5KmFôp%Ñ>Êl„ê:é˘ Ã	á\n≈„S˜±ç§ˆ®Ó/Â∏˘ÖIP0Hæ¥–|ÂŒÏÁw#©kNº6§ê©œRFUÀªËÃ+æHw?<ÜÓ>ïëí´”í)ªâQ◊áM^„π†Ã–EÊ˙cÆEgœ6˘;ûÊõ%¡ Œ´<õ˛Z;çîÚÁÈPqåë…©ˆähVÁ•!åA‡”â!±ü ¶{Géﬁ9C$»\0Jâ~R\0˜»¢‡:\'€&y>µ23»˝*\'\0±luÌZñpDmAiUX‰ïû*$“‘∑y·∂ì˝\Z7éo›ÊD…V¸æı%µˇ\0Ÿ¸°I±…∏?a«ßcQ,ë«p•9˘œCı©µK9≠ÓŒd∑êó¿x2zuÙÔPÏ˜*¬\\oªc1‰Ô	Ü\\g–÷?îﬁdòÇÁ>’¶Ì,.÷Ü|™êÃ3ê¨=z©b“Kt#Û	|Ìùﬁ‘‚Ì∞4V∑,ÆUÉ0«≠uﬁ”·‘µCawpÒ[ÃåXÅ¿`2	ÆAŒÀÇ:aø*ÙO)º”^Kk@óäõ|»§⁄xÉﬂﬁ≥ƒ…™wV¶F´•Y¥í…e3Õ‹2$™ÖPé1◊°ˇ\0\nŸº⁄ª’ä¨Œ™∆ÁÅ∆·UÓûÚ	¶≤≤ÿmYÅÍ¬ß?#…Ó+¥”mƒ—NóO,≠núıGé∏Ë\ry≥≠j|≤ÍhóºzŒî∑∂ÜﬂT\n3ìÑ8ËO°Êπãà¨<%4∞+\\3\\.ﬂ>g:gáªk[áª\"6çä €/òú1«j„˛\"iSKn/wJ÷iè5 ®ÈùΩkœè,£≥4mõ⁄k_ﬁ∆∑7Ê$brëé=såw´\Z•Ω≤Yœqïèœu.“)<‰q˙Wúiøi—ı)Á7ŸQV! ¢dmÁ„Û´◊^%∫{ã®5f{h“-—CÂø9»=∞8≠]8K›é†^ìN—ÌÏÔ4˚´îXÔÅñ;yﬂi ~döÚ_Í\ZÆ´wkml-V2™ ÿ˘I¬ÄO\\ˆØ`ü∆:⁄aû‚∆‹ãjPLåG!N?Œkô—¸Ms®Ís^ÿiq\\:*C=†oﬁ4C8+üCä0ÚØCùƒŒI7©Â⁄æèy¢j\re{I–À∏f™çÕ¿$é∏ÙØ`’º7©x∂ƒªi÷7Hƒ<≤LZSå`±=Á\\éç·Ë,Ï5õõ»ûÌ⁄˝ôÁSí›k‘°ò¬P˜˛$D©Î°¿	îqﬁ¨Í6rÿ]ò¶M§®q«PySwÂ^¨d§ìF{nJß§OµCﬁû£\'=´D¡ñPùÑRêÃj%`\rZéT8?ZÜƒà‘sÕY∑î†l `√˙‘ìœj÷qG≤ÅÛ±nß=GÈQFD`0ÛÕ$Ó3SOê∆Yë$3Çlßï>¢¨]ñH˘ÚÿûK…ÛPZÃLávS#;îp=Õ!˜KmnætÃ˚T ŒÚzTi{Ä∂÷≠y∫„ÕîÑ@N\0˜&ΩS√	”l¨≠Ô#ΩKôL≠3J8¬\'\0\0⁄Á∫@˚\r‹Ww∞ìy&9aîzz‰Ò≈zﬂÜß:•ªÃa•”Ôdëè·_Œ≤≠V<Æ-ÓRã&Ò∂Ωã•¡al{≤§⁄ÚŒAØü<Aß∂ù´Kn€â\\Ã0HÏM{Øèo¢Üki`XÓ<ó_6FP¬0¬˝OZﬂ…w=˙ﬁ›πf∏R„-í£$`÷xjøb˙(ı$≥∏cm-•üô+Õm¸∆?≠Q∏]±#)∆6éπ˜©-ûÁNXo }ÜE!J∂I“´\\Õ5‹∆Y2\\åìäÈ_Ä±cSÖgEÿß=0:\ZÆ£q¬åöÏtœjBªÜíŸ’C4É)ºˆ˙äuj∆Vãe}\Zg∞ñiv—ÆÒ¢ü¶Aln„éÍ\Z#Ÿ”ﬁ∫/Î≤ÉJîæÅö9¶	Ä…ÿ{W--Ãç\Zíˇ\02|´É⁄±£9Õ]ï+-\\Œ™æ\\9	∏ëû£⁄©+m˙\Zf9Â±÷öy=“ª‚¨åXˆ äÅ€Ù°À+Éë⁄ì g`f\'∞⁄ÑLˇ\0ù:ô-ÁI°r≤!‹§v4Ü\"s∆1÷ò ®Ã‹3¡ÈY¥Æf{©YsªbzìUv#Á\'“°lv5÷…∆Í];P∏“µ{ÎWŸqo\"…z09®õÊ~µÃ`T≠\n>Ç÷öÛ«û”5Xcä9ò	5~Êœ~È]õ¯}u\r6ﬁÓˆK´ƒà‰Ã7FOßÛ◊á> jZ\r≠ç†Ü	≠Ï› Ó6«˚Àë€ú˝k“¶¯À¶+{-:›ÌÑŒI¶Ñ*z∞Q◊È]˜I@∆⁄˚«ûxﬁÂ¨5÷≤Ç?(√\Z§ò˚§ı}•z√/⁄∑Ü&±∑¥-´D	åè4ı˚«ÄkÕ¸]¨i◊¨Zmƒó$Âeöu]Ã3êW∑jÕ◊âéÄ”∞ÑKÊÖ¿nÄÉ◊ù)r∆zÍVÆ:ã/âóQéÚ_5ı¬À\0Å\0XèB∑5Ê\ZΩ†ô F6‹Á∞5›jﬁ?µ◊Ùÿ4Î(Ïßí3◊2…‘qœ⁄∏Î˝V	õ…⁄†	ê≈ŒH„ÉÈ≈jÛ;%°PVW1ÁÖP∂‚˚Ä±Õ[“¥˚õ∑/ºÔV$∆3–d‘:å—Kw!∂i\Z·iÃ~µ⁄|7’Ùÿı”µraµë›¸’b†õpq€¸k∂)ΩnÍ(·Xƒeù‹áe=FzÇ*œ∏Gá!”kÇÆ£≈v±≠¯kFGç2™cÁ˜`‡3ÁÆb‡ª£¡ÍZö—¥ÇËÀnA=Û≈1sª9˙‘Æ\nÒéj#ëöîPπ®¶Ωiÿ≈3öcó#≠4Ú\rIêﬂZååcHbRÁä(˜†h4É“îPx†nqNG*ARA¶˜†q@H|ÒÇ]¯th”»ç5øÀ\n7ÅÁØCÚ,Ælƒw÷xëÉ_Nˇ\0 æ@–uÀ≠UÇ˙Ÿ∞Ò8l√}kﬁº3ÒU<Go-Ωı†í¯0h<º.s…ÌY8æk…ô∑À°È˛c[XÖG2Ôa;\0¡«\0˚◊†À=ñ™Tö;+ˇ\04Ê–Ö2∑FR;Áµ3ƒû%”Øµ=4j±≈à¸·,wŒ›‡ıÍqZ⁄fìg‚\r—ÔbyÓ“5≈È$8 ÁÜÍ\rv:t‹=ıs;∂Ù0<S‚_ÙπRÉyO±ÅÁ=	Ï:◊3‚î“g“÷[ÈwEÚà°\\óUªbµ¸k‡¯-5KVµñC…+\"Ãô˛˜\'ö‰ÆÔóIÅ¥€òæ“‰ç≠\"d¢‡Åí{å◊¬…IM≠J]-+∆7∫à‚‘>’%‹^QÄ≥åêß‘w≈ræ*∑Å5y\'µ∫äÊ	Û*≤\r∏œPGb+™ó√a4huH\'àDÏ√+À#éôÙÕu‚ø],:|?j”Iê¨QìgÒ=O<’Cñ\nÚ—w}9\\é;\Zkı©*≈X`äk\0zsZ2ë“©»Êê—–ÒﬁÄ4—ÔRA¶`ÊÄ\Zy4‡i\rÕi1HI∏Õé(ßMËs@	@<“∞#ú—ä8\0H´¶‹ƒ™YBÓ<’$O„ö≤Ø&2y«≠Dòÿâs¨øˆúR§W2ÁÕßÀ;Ç?^˘ØBM_L±ËA{Â›¢ylÑ|ÍÿÀ{◊7s≠Y[iÇ ;ò≠%»!îÂ#a« ﬁ„äÛ/]…ß‹ëmx/RÈ3(ŒÂ#∑‚9Ø7;≈¡√›2ví∫zñÆ5;m2[€´¡Ãór4jä„ÃÉOnü≠7≈:¥:‹6˙Ñ\"DÉ£»Wnﬁ¢∏˚∏—bëêïô7+ÈLI4õ§mŒ›O≠ÇìR]çÌ©!ffl6zéA©„øöXºß Ï/˝*±Ñ£~µŸ¯2◊LÚfº∏”Ê‘%ÖÉy*Wπ-⁄ª∞¯uVVßdciöz\\É∆ﬁcTÜ«ná<UÀÕ/N”ÙÎi≈ÒñÙ±[ã]ÖL`zöÔ<A≠$7]Ë\Zy¥í›Aï1ŒxÔ⁄πkÃ´<w`Ω¿eïèÆ\0¸´ªÿFú{ò˚FﬁÜf´¨ãÎ{8¨m≠“≤FÈ?ﬁ&∞	,O¡pFt©Z@O5¿€›õÏ0¸ÿ˙U^Û0›*rŸ9#å–äœú\0ÿ‰‘6˙°Ü\0\0ÏqWU~sŒ‡j[;µÕqÉΩ∏gö—ûŒmSƒhf#ÊV?wÿé«⁄µTÂÀ~ÇÊW±F2~Î0´q\0⁄Nj†∫%Ú@ÈÉR«\'Ã>¥∆Óù;D‰>pF=´ZŸº¬zÁmÂ¡Èö÷¥õ8$fòÕ¥@W•+ RBr1^î¿œò…a˘UVl\nª:ëëäßÂÓÍM#Û#ı®e$ú~¢•í-á\'èÎP≥cÎ@àü jl8‰z’íA˜®\0‘\0‰0>µm\0«‚†ÖÅ<ıv4?\n\0≥nH\0Êß1<TCÄ00}©¡πÊ©r6Œ<TÈ(Öƒë‡„´Ù5N78≈JNıQéGsTùùƒ≈,rO\0 õÌHG85\"ØÓ“ûym·»†bØ=jUSwßÛé¥…°†êi¥“Oz†O≠4úsQ¥Ä\ZåÀÔ≈\0>F˘Me‹∞…≈]íL˜™ÚzRamJn22{U+†:Vì(\0„M–>G≠\"åYc\nü^+\"Ê2	V‡˙◊K4Aœ#÷≥. N1û’,À‹∂QTÿñ\'5´{\0Ç?\ZÕa∑#Æ)FJÅÉQ«ZÓ8Äd“z∆Pk+z\0´Õa[Cø\0VÌÖ£r1“ö≠knN;÷¨4x#ßqQZBQ@«≠gh˝jë$hq◊ Rñ+»<z”•y≈Eﬂë¸©à≥Û0;ö∑Û)∏˘ê˙’Xvr:VåWB(#DÛX`æ3ï=FÛ°‹êº&⁄d ¥ícS˝‹ûµ¨¶“ˆ›nK¨HÍ¯x… U§ñ⁄x†-æ)ÇçÂ˛ÓIÍ∏Ì[g√qK\Z}Ø‰\n2íèª\'ˇ\0Z≤u’=Y.\'Q•Î∞›Í/e¡’ﬂ`2√¿«oz¬¯áuˆY-.~d8*ŸÂAıˆ5…\\‹^i3œ[\0UòrHÍ1\\úæ&πÇËMq∫ÂïÅÚÊrWËG„]jP“HÑ§’åÌb3‰w‡Hﬁ~I@⁄ﬁ√“∞_IºπñPÉxBY∞{wØEö⁄?iqm)…Qàì?)nò?ÖfœzNÜË±πòÆ“mÎû¯\"ºz∏îßo3¶1Ïröfâqur Q&9sﬂ“§∑ä⁄›.£ΩäÂB©«Õœ5ªgu°:-¨Mu) (<Á˘+W≤ªºªû⁄⁄—∆„ÊH]6ï`F:øh§Ì∞∫òR‹-’¨1<≠æ\"USÎ¸Í%∑ŒÄO^¥∂÷eÅîdÅOu*éG\\`WT\ZB#∑í;k»eñû8‹â…\n„–‚ío)Êi#@àƒêÄÙï\'$v≈nŸxrÔTÜ/Ï‚..|∂íh1∞∆˜‡˛ß(«V ‘«çé¸∆YyØ}´°ç:[3D:˘∏f\r∆Ô¶s«“º5ÌÁ∂ò¡4^\\±∑Œ≠√/±Æ◊¿ÇkõŸ≠mßX‡%$x•ld´d}πÆ\\BÊç—•;ÛXˆ›5„∑ªTûÚ\'πñ2âÄGH«lqú◊î¯ä=*”ƒrÀ£…,Ä≥o˘ìx˛ÈÓ=Î∑Ò=ºã§\rv ˝¯¬ë@IUÒ¡`å}´«bDä~—s≤Ec∫<êÀœn’…J7‹uuz⁄≥œeow1¸Ë—≥í1éj•≈Ã˙ÆÀ¸òcXÕ(Ö„!ø\Zπ·=˚[[Xâ“-\"ª\\„ﬂ◊€¯á√v{LÔº;àÚî©aÄQÎö÷2ßOc5~ß-a‚m6y\"ÇºÑÁóe¡-ûºÛ])Òñ£\rƒ1[¨í ™™É¯π>µÂ◊∫l™dîœ˚Ë‰\nÒH6∂Ny˙W·8„ãF$l“í6H£9=Ä«Û≠&†◊:)\\≈’VÍ[ø>BÚ‰ìÉ¯b∫ÔﬂŸ˝Ç·ÑN≠ÄYUéz‹ÙÆJË	ØdKôJ$`]âÔÓ=¯´Û\\KµΩΩà)&”π_]æß∂1JI4ãF¸~?—˛ÿ—¥7-`*©åe[ø˙sVu;ù6˙Í∆K9‚.›	ŒÏ”‘Úr=ÎÀçå˙Æ∂m⁄2Å/,m˜9˙÷ÖœÖÆ¥À∏ÊkÅt¢vålÏnƒ„∂¨ù8ß£ß†⁄x¶m:ÀΩD:\\ôé»%˘c\n˙Ò˙◊ùﬂ¯õTÒÜØo*œˆÉ\"$d\0úåO^\05ºö‰≥¯=‚∞Ç]ÎILÎû3Û*±ˆÁÒ≠o\r¯√Í¨◊\ZÇK©m#¡[cé\0dûΩ˘ÆÏ®€æ∆5îQ“¯û≈‰◊Ÿ>¬5i\0°©Ô:\0GOz„õK>\'“ÊµôHê47JÃ3UΩOπØHµéˆïí1mM™sÛH:n«U„◊ûjµÒæä+Ö∂ä;;©àé2Æ	ê|¿˙ı◊ØNv˜NV∫ô◊~\ZóQ”Æ-ØbÇ⁄+àä:€¶Àªrπœ”?âØ9∑Çt˚Ñ◊bÒHÂSk*À¥„~°ÈåëöÎµ)¸E.•ˆ„öHqÊÀ4Ò´™Ï§£Ê£ö√FÒ˝ãœˆ˜!kXÑ„…xù~bqé{;U¥ÌÔ1\'mâa—¸;áµ->ÛRài◊`∂ïÿUBz¸Ÿ‰u´◊\ZÁáCΩ∂F˚LVÅf0∏UQÄÆGNGÁöÁ¥®¨,tç&=B ÷˜LäŸ#[¥îØúéπ8Á•q˜—O°O}ﬁóp∫v¶≤FàxhBêÀÛcí2}r\r*◊`õËs:Œµ&µÒu\"8-%YcÚ¬®dì€úW5™_À©Í7ó\'t˜4éqéI…™Óÿùô8¡$Te≤wMy’j_C©+\rìñˇ\0\nÏºi¢I|ó:≈‡ÅR‚8¬:WV7‚	È\\iêÉÄ:’€0Âv≤3D[<ÛäŒ‰’Ñìj«´kû∫ÍÊﬁ¬È≠ÿH±<r?â∆—«_‚œL}küÒ6ëm°X€Ÿ#¨⁄úSIŸSê†îè®5…I,∑\r∫kÉÊ\'@ƒÙ±5¢F€x•|ôx Éúìÿ’Œº\'¥LííjÏà⁄9èÃìr		UcœÃy¸*k©Cõs1Ü#†„ÆüFõ√âq\Zk´qªÀÂ°b	#8Á„j/¯ÉE’ñ”Ù(t˚§êÜh[Âtä¬)I5\'©≠ı9≠JmaÇ$∏IÂ ó)˜Fz˙˙’0SªåqNê®$XLnË2≠(∂ïä&Üwâe@™CÆ”ëús⁄òªB1*PHM«úé›©ªàΩhÊiàT#w$„µN•Bä+‡ê«ÛU]Æ<ÌE_5√ru|íFO•5âfbG‚Ñ%Aa€ØµA4åFGπ¶•p’£Í;’À9ØRcF´\nyé]±∆q«ø5N7¡esπ[Ø5Ø¶ŸiÛ&Ú¸⁄2ƒÓ	åêX`™ÒÎœÂZA›ì\'dRÑ3∏åÕú`ì[öüÖu]ˆ;;Ë\nÕ$>r;ÅO_“≥4…\'∂æKàe1<|rw‹9ÆﬂH◊$K	ıŸ⁄ÊMRTW1áç„`´0µoJ1{ë&—Œi∏÷öHb!Z!∏ÜÙˆzÒ˘VT÷3€ﬁ=≥©≠åcöÙ[ˇ\0Õ•ZI{ßKj◊z§ Åyµ9 Åı¿-–ñXqIùXç√ﬂﬂØ5£ˆiYnr{çÉÕQ2 ¿∆€5‘Ake/ábvóπp™‰Ä®∏<zíI¸´\n“›Ô%î€ƒXÇJƒπf?„ä–¥ìKi489›Ú≤∞ˇ\0#\"πÁÏÕÈˆÔqr#çA\'ÓÇzüAZÀßbÿœ ‰ØNøB÷“y\'∂?:0eÌœ◊Í+£1˘v1M˚π„Dí2:∏Ü}Znk°QW0.cW`—9e ùπÂq◊5••ÿÀ=≤N∂ﬁgñ˚~_Ω◊∑ΩG,Kq4p6ván?ã≠ÿôÆZŸßu∫å2¥I’ì®aÿ„¸*kN–SlÜŒÌÏñ˜k!ë»p@>„é*Mr…ñ·}≤∆¡ñÏgœ^=?ù.∑quoo-∞ömÊyãe#åÁ∂qR¯sQçbÖ^„dé“4Yÿ∏„Û˛ÇπÈ Îô\Z⁄˙1∂:Âíƒê ≤¡\Z7ú 2Æ20√ü«å-ÖÙj!ÄL;∞7`è\\:ß©Mu>™&eXd.YWé?^ïOMÜÓ˙˘m‚\0ÃC:pªà‡û3≈W*Wí3{ÿΩ®€J!∂1\'ó¨„OÃŸˆ≠≠ƒW˛äÂ\ZáíE;’}x=˝ÎKÛÛ Àˆçø0G8⁄ÁØLUÊTπ—bñ4›v&.FPN{Òö®TÂFrW1ı=\\\\\\, •Ú6ÓòrFÏÊ¥,º45ÎªªKªxÂBAúŒI◊πΩD ù÷7 © vÖ3K‘¶”.Öƒ\n™÷#;}≈EE9«ö/R£dı$’,ÌÌÑf/3,J±nÑågöqçß#≥uÆE©j›jQ…3»ÄnB∆1–V<çπãqÔNó5≠-∆⁄ËDA≈5r8ÔÎSÌ2í¿cTE@b\rjHåƒcÉöpëF2rjA˝”ú\ZqL÷Üˆ|¿‰åéiNGÕçπÌHòLñ<µX\n%\nr•\068Ÿ—‹.BÅüjùb%êv>µµ˝ô≈§aGötáÕ∏`√jsÜu„\"™ﬁ[Oo\"Dc)*ú© –÷ûÕ≠HRW±ö‡£ï#ï$T.Yr3åTåŸX¸˘<T0⁄9°ËUàJ„ø“£ñ>æÙ¨Nz“®ûGAéµõ`ûz‡R/Ãs”µá”Ç94Ä\0zÁ\r!§\\dxÑgÇ<¡Ï3⁄©IÇŒ‡‡ê*füs≥î∆z\08—êUà*Ç=\r8ÏTÛ˜™ÂÆÿ‰Gî/98<ëÌTcrÆA=zUÅ6N÷QèßJL:ñXâ\'f*«J∑n≤…Ìå»âÀÿúU(yŸŒ:zb∑°Ç[+qumòH]‹ñ∆yá˙Vv)+òwÓ“≥N@Rx.3I«ÿfç≠N_ÇÉSjpÏ@\n8\nUv±Á=≈F\"Qp#çaŸ®O›[TS‚≥ÇàuÕO¶ﬁÕ‹rFrÀ Çx¶Î0:»_)–ˇ\0=*+DI!Oº[~÷¬Ùs¸ÍÙp‘:ù·◊.u=•ÃQ≤ªljª≥ú‡ı…\'µz∑Ñ‰K≠Æ`V\'Ô2Ç©Áü◊öÚ}YBøg∫Û⁄⁄cès+…¸´•è∆˙mÆî∂6◊ªug\";ô	($t‡˜ÙØº%\'h#DÌπÎ∂óç.î∑!C±M¡P„Æ+T¯áß^ãH†-nc)!ïvê˘∆1‹XÒ|]“§“À5ΩƒWÜ7Xà;Ofø5Á∑:Ê°®€áíx@ÕΩ◊TˆÔX√RZOaπÆÖ˝oXk#4÷ó*¶P\n†Øbπˆ«z«‘uùOPX•ΩπwIá…UúcÙÈm≠Ó·K®‰Û&õ-*årA„Æ*≈Œî“›€Zñ>Xl#Ñg>Á€⁄ª!\ZtÏû‚ªbÈR%∆•r3[€∆≈Ñdnì¿ÊΩG¡ö~ó&¶◊\nëµ⁄ÃŒ≤©√íp J¡—¸>.¥Á‘Ö¨m4*—‚.ØúÁ˙‘÷:î˙,iu©¡µÃ#LÏ¿ç≠Ë}kéµeQÚ¢„¢‘Ôıª-/GππôÃ[ÅW`w∂I g”≠aX¯?C÷lZièõqpRRÍ6:åqéƒä©c‚-3ƒ⁄4ñ≠l∆·†_5[c∂zÉ¯qZ~æw‘ÌÉﬁ≈$kl®Î`&A»„‹+íù.Ir≈Ÿ≤Ì}O,¯…ooΩa=¥O\ZKj$`|§èŒº‹.kŸ>0Õa´iÒ›€\\C$∂óFæ|cúèÆ9Ø?-}.øb¢˙’4cÅ•ﬂÈQê})T‡s]¶dÅÿ„ö∞á,8„=*ò<÷ÇHûZÖP_◊“îÄ–∏A$¨eK9‡´Ïk^√Ggâ‚c±®ﬂí€Nq»˘◊4≤çˇ\0+a∫⁄¨[J≠(y	vÂåÁÎ\\ÛR∂å•cNFûxe[(v€¶>ﬁAÙÕjÈzdvñ\r~ÛÅt8çy¿?Å≠¡e-Ë”nf0€ÀmÒ∏OÙ‰b¨ﬁ√7⁄ïj¬ÌF\nuˇ\0ûÑˆË+ÜÆ%ØscH¡nuæ÷ó®Œ˜Åûy`Z¨ˇ\0ÚÕá\\©ÆñKÅ£IkoòŒÿ‹À∑†v˙öá@››ûäˇ\0È“}™·öI§âÓ8»ÈQ‹¯fﬁ5üÕFXÊëzOíXûO„ﬁº ≤oY=\rïÆU’Ô`”Ùôñ;Ó°íSÊâíáåÛ”öÔ€\"yç¶Dä]ªøÑÁ”¸ˆØrÒñô¸#≈#ñG∏b°\0˘ÜÓÄ~>ı‰û5—ﬂL”ÌD1¥h“FãÁ$®√ıÆåΩÚ…jECè∂ö`Ü⁄>í∞m…\'µJÜX¸€rvø›`ÀÇ1÷õ¶^-ï‹w	xÿ2Ÿ\r^ñ˛ãã€À§‚]ŒP≈±∆;w9Øq∑Õ∂ÜË7÷Z¡ÜÓ8ö6ê/ò„>^\'¯»ØZ”|C+§ñ∫Uú&» K∫ÇV4«Qû„Ø‰~∂¥øÒ$	qÂ*©3a‘È^Ê∑:mîëòÃ_e1≤<pê¡F}G?ÖyôÖ‹ï£sZmufU˜É„º€Ê»ﬁ6r\'ës$Ã H˝+íÒÖ-t	ú‹y∑A…Èc˛zWcq„8‡ÄZ:G{çë*,6ê–W‚ØN⁄;Xˆ«ÅZ`Ä|Ã:gËsSÉùyI&¨Ç|∂–Á’É[41ÆYò«∑µG2*ÅHl3ﬁ§¥”ı•E»»a‹W©Ë~\0≤∑öﬁÁÌ—\\,a%`F7g◊ÿzW≥*™6πƒCmß\\iB⁄>˝¶2+º˛Xl/ „ZÉMπÉH‘\ZÀyV ¯‹P´™Ù‹Æ0G“æÉ∫Ü#ú§+%∏›Ö 	8<jÛüâVp;J’âTª(±NÖyu# ˛è∆å>25ñ∫1Jùè2’í	ı)~œpè± Ö%GLé∆±ˆ£6÷ı≈z∑ˆ6´1G£»RŸÆ^6\0Ì=}A«Z‰ıM4˚◊ÑÀæ0¯Y\0˚√÷∫%dJ2&„Åﬁ´8<qW/ kwÿ$æ∆®≥ëäÕ≠\nDg ÒH‡zÛJﬁ§”	…œzÄqé>Ù∆luß(d‘lsút©[Äìär∂iô¡£ûÊ©±ËJFŸdä@6≤∂zåÒLËjpÑEÊeGlgöëíàdQªÀ·óp$gèZ|1œ£®√T˙◊Y‡çN“Œ˛Õçö]\\0¥-∆ıcû¸W]‚K]#∆:–”ÙxmÆŒ7óå¶vÈ[Fíí‹é{;Óâ¢⁄^%îì‹,∫ÖÀ∞KêÖ=»ÆZÚdî˘8H„ à»iœ#ﬁªÔ\n¯nÓ/i”ﬂYÀˆ@ÌeX8IWø∞œ#>µó„Ô√q‚7ÉGë&€öQ¿`ƒÚ©Õe*VçﬂB£+ª#Ã§ª…*ìÀ<èQRŒÜ9NÂ¡VçÙ6íŸ≈%æ™3wvÔèj Èëìi,äè çOÒëúT-«^N{U˚0¥?.«3Ï…P;äõ_”‡”Æ\"Üô\\B¶a)Á=qé’¢ç’–^Œ∆@·à†çÃ})πÁëëﬁ§„mID ï$\Zp$ä$–8–\n_≠!#“Ç}∏†a˝)πß“ëÖ\0)‚¥Ù∑P˛hBsÇŸÙ¨º¸µ=ëO¥(fÿF=çÕ	ûë·À≠3Zäe“˛€πÄR√¯Od◊∑È^8”/-‰äŒÿ⁄O%≠ÊO‘`◊Ñh˛6ÇœM6†Y\0Ê`â8ŒFAˇ\0\n¬üƒAß\r!,Hr9≈gÃ„§Qó+g—wZ∫ÂÍﬂHÛ}§™º{\\m@}GøµmﬁxbﬂS2®c\r-©∑vQÓ#ÚØ8¯S‚s°¨ZÓq˚®•où≥€$„Ø@◊<JöfÆ∂≈§?ËÂ’bB‹˚˚WU7V£#E©Â∫ﬁí|;wm°ﬁ¨◊VﬂhÛ˜F°s~9ŒkƒØk∑es¶≥ZIwn¬AFÂ#å˙Ò]Oåu.t}D«<:Ñ1à”8\nÕ˜éAÍ1≈yΩ‰◊Z¿1ìø$!ÈÉF:\nQV˘óIŸô\ZΩîñwyu 8‹πÓ*Äc^É‚=+Qæ—Ñ˜6m∂«-!\\d–˚˜Ø<?)¡ıÆjwq‘’1M4ìN<”H´™isö3Ç)›zw†…Ô@•#ëA‚òÑ∆iT„#Ω\'OJJ@<Úi1Õ(ˆ•Ëq⁄ÄI†SàÕ\'_¬Ä?÷§2ÂH\nÜÖÎS`;õ]VX\'o8≈#‡äEzÁ°Ô]&≥•ˇ\0h√i©⁄«fûz≥I$rçàqùªÑ◊ü¿\"í}Ï`µ‘z}kunt©%∂X—£‹IbAˇ\0k=çyÛQMI-L‘Re-OMHZ6âÊ02Ák‡˜«®™≠hëF¨åé™OJ÷∏ä⁄ À\"Ò&o4ÖåπW‘Á÷≤ÊπC$%T‹t?J∫rÊZ—›¸∏Á<‚µ¥bÁNΩS8á£Ö8 û¢≤ﬁ‡H‡n<*›Ø˙4Ézº”J\\≤M;$¨zNßÒ2–ß¥∂≥€∏Ï]À∑dëì^]{}=‰œ4Ã‹‰ê;’ÕcZüWòe#PPª±¿\'˝Î%ôál\n™µ%&”wDSá.¢!¡ÒJÏ¡∞19±MF-ËÙ¨˜5–≤É±\'\0mÌQeÎŒ8©ÉœO≠AÁÇuiÍmıÀ6|ÀΩnAÂ0:qœZÀÒ~øgØxä[ã^+EQ{ŒXÅ‹◊3∏ûÉøΩ `ºÛ‘◊EJÓqQ±\n\Z‹º#Ü¨§$ÅÉÇ*í\\d®Sú\n‘µï$e~oQXö[|ºÙ≠+PGJ¨ª3úé;UÀl3éy4–vØúcı´ƒesﬁ®¿†\0j–ìh∆z–Ré?ÖQa±∫Ê¥´T•[¥ƒWò‰\Z¢‰Ó5y” ’Y+<–g~™ø0c◊öΩÂÜ=ZQ\0Sùπ„¶h\ræYˇ\0\n—Öô@»Î“´¢\0ƒÅŒ*tW$gû¬Ä-b:ÙÙ©n#8ÿTü©´+;SÒ\'öêÆ)Åû‘ÌŸ≈P8=\rN9‚ôÁ\Z∆~Ë9‰BÓ˜ßp/Ω<-*©\rÉ‘u©BÜ<cﬁòëÉKìäñ`™\0OZÆOΩ1ﬂ∆\rFŒZkû‡‘L›yßq∂jb\r˚yÕGª#Ø4ÆFvì≈Wy2px©‹„≠Tú„÷Åàf¡∆Uí`∂j¥◊88Í*f.‹ˆ©¶6JòoJ»æáÀ$©„µh+ú’JÓ@ÍA94ÊØr\rg:Åœ_lVçËæïöÁ=˙Tî@Ë§0M28≤¯*G|\Zö$‰“˝çúÄÇ†ïÆ¢¬ÿÆ	´?J\0(ØzÈm¿\n8HMñ‡ÖJé\0>ïv5\0b†àÄ=È≈»<UI$A∏ÌUL≠ë”ΩYG=ÈÃ‚òàïx‡RÌÁ*pE.˛Ω™î©ô§ËoR©p≈T}“k™øÒQûﬁ8ÌæU⁄6á‰©„}∫Ò\\Óüæ¨‚)Y°ê·Q±Ú±Áøjä˙’ÙÀàˆ6Ù\'\nH„=≈sæYKïógbû°w#3≥±Œ:ä‰%X¶‘T\\|í~o(«ÛÆÚM-ÓÚ±#∞œ»3Õb_iwö¢≤Ì) ] zè°™îì\\©í¥:˚kI˛Öå\ZqùÂVeë|»ÿz˚s◊µCù&∑%ÂÉD\0peÿ9ÿ[∞…‡güˇ\0]rvÆXâÓ\"à)$oÎ‘û’’ã®¨ëã_3º±∆¶h¿ÃIé\0{bºj¥9%}Ÿ–¶§di∫<ﬁ’ñ;ãxùã´,Ï\nŒpG#€ı¨œ\\›=„.Ÿ‰}˛R°˜øZ|˛1ñ+ÀòØk∆!ÑNd¡Séù¯Æ?T÷/Á∫IﬁI∑DÅ\"˘1èj⁄ï)π)3ÍÏâ4´\'Ω‘`≥p÷‚GÚÀ2g”µ’¯É¿\'D”mÔ^„Œçòá!vÌ>òÓ+í˝Ì€^FVîË%ÜlˆÙ?ZÍµm^MNKkk›Oœä(∑ÜWlûçÎ¯U‘ï_hî]êíGa‡œ¯WPk}bÃ<a|À{• +˙Å]Vü·i,|E%Ù6\Zr€m*™å|≈Ì¡ÈÇ3≈yvõ‚k±⁄ZÃbÖ\0G^ò=∏»Æ”KÒˆîí∫6¢ Ú≠Ú•◊ÂëΩ9…\rr÷Ár◊SU$é+‚‘zl:ƒ6ñ_fY‘+Eç‰ûÕéıW·∂†ê‹›[\\[∆`PìºÕ&¿°OPr8Æ_≈zöÍﬁ%πæTÚº÷…;Àd˜#=è•B±Ñ∂é‚Ç~`*s¸C–◊}:n4R∏îÌ+£⁄ºY¨ŸﬂkVzkŸ{H‰=@ÒT|™\0¡=+ôÒèÑtœ∂›=æ¨±Íõ˛ÃÎ∑qœOƒWg·ù!µ/$⁄€€Ω¬	>Xî\0˘∆‡9;◊ùxìO\Z≤WV∫]BÊQø˜s1eÏW,UÍhıØπGHÒ¸#œ±l\\^ƒn∂‡ÁØΩw>Ò‘øki4‡Ò˘9IKaÓy jvÍ:+‹JsuK2ê99‡Ç{Ùçd⁄Î7ñê¬VbØ∞´›W—Ök:1û´r-gs¨Ò\Z´€œ)Yß…·ªÌ‡sÅ]Üuÿ„ÖÏ≠Çî\n¶4 }}s^o§¯ÅY‰¥ÖŒASÚèØˇ\0Zª≠¢’§I‘\"™a\ZHÄ]æôú‰\nSãä≥*-îı´»o|C#,xäD˘·ê∏„ÈNwèov˚m√[%ª‡È”5ë‚8e¥ΩV7Pµ¡rÆëìÚ„‘ë¸™›Ω„¬çˆõ√™B§`ñ«üPGı≠î}‘–”.$\ZÖ™A®ŸZFÒ	måêÏ2r=@=™¸ç=Î	åb&∑apüΩ\nÄ˚§ˇ\0{®¸kCF∫”¬$∏Ÿh\\»>I`sÓs[ÎßYà_S∑Ü	aë@X]r•!±˝Ó’åö∏ŒC[ÒÜªe%’Ωµ’ï»C⁄ƒr≤±#8#Ì>ïËæ\nıæüßçEåí›^«ªŒ£z\0º)#Ø÷πo	h\rc≠	â∑ôX≥∆3˛©œ\0≤˝==´–í˘‰∫é—\"PÓ8.GeØbú\\ir£ôµÕ©}@W9Âè9«oJÊ|Gk©ﬂ\\ŸEß≤€$sínXår◊Î]<Q$1à–£¶I?Œ±<E´\\ÈˆW_fÖ|‘ãz…#aqúú*®∑œÓéirÍdXì•«~“^K,—+}ßÊ\nƒ~a€=Îí’°áSâñ[;{…ö„Ì(ñÓbxèåôq\'Ækô÷<Qz∂B¥ﬁ[-¬´»Û(/+Ä˝ë€ÎÕ`Ízı˝æ£ Ñ∫Ã±Å;»?÷‰t«\0€ª\\£€9¨ﬁàÙ-V“≠ñ=>È-£‘†∫ÜXÃ—∑Bÿ‡˙˙\n∑ÒrÍ€MR¡∂;Ä˘EÀBÁ£É€∏«Ωx<˜í]Õ«úˇ\0hW\'8ÔúÒK©kó∑⁄TvóS˘ã±æÒ,y…Ô“π›usX¬F)%QŒ@»¡™˘ÎR»§ 9»j`\\}kâù(Aì˜ªt≠+idµ∑IëÄëÿÁ¸+1ÜMXÖ¿]å	^∏5Zd JìªÇyöX$EÓò]≠ﬂµT‹§¸Ω}È∏5D€R‡∫ñFco$`ÓÔK<·»\"%V`ØJ©ª\n≈JÑ(-€Ø®Ï3y%‘®•U«9\"ëv±\'πÔRJ’Ø·S)Xv}⁄:Á÷ûX1piÊ(ñ NV@zÜ¢ nŒÔ•-7D¡ô£‡pΩq⁄ùíÃ2¿ù∏f^sÌ≈)Èú˝(]â&.ô<ö|Ü	Yò≠πc⁄¢Ñ)\\ºM2·X3∂±˘Jäk›\Z•¡¡ÙÆû˛Ô@ö·M•ù“D÷„Yr….–?»˝kûÖYˆ \rê=:ä≤±4åßaeœ kH’≤i%v]“Ï„ûÊŸ%ñ6Û.6<&_-∂ı‹Xl◊=⁄hû	ßZÏöÏë5¨¯ëv‰®e´u1^{}iu§ ë‹ƒY.\"e`¿£äXÆÓñX…ìŒXXò“NWûµº*Úic9E∂^∏Fûs\01í2pã∑ÚW◊ÉëSÀ·KË4ÁøL1Éú1Ï=ÒÕU”≠¶öc îŒ:„π≠Ö‘b6¬	gvç‰‹FzcÄqÎSÌ5mï™Z<3©I¶ﬂ!âDR≥ÉÊêI\0v«Ωij≤_^˝•§Q4”3L≈æÒÍ;w™«Pà∞â\"#$Çxˇ\0>ı®–ZÀ\nKÊù√h‰dˆ$*%^KNÖ(›‹Ë|7¢⁄ﬁÈÛ¡»kÖRƒl˚Ñ6U≥˙cﬂ⁄≥Ùµº‘nÆØÆ≠ÿY¶„4õxv˚ï—h◊∫=ƒ7PyçÜ!àŒ“s”ÉäÁı?RFÜ›÷+tÀÂÑ{óÇ{W\n≤udû∆≠ˆ2N_@∑à—Üw1Ë3«ÈW5X\rº+yeyÁY£/‡3◊\0˝+3Qô§å…!GPv´ÜË8˜Æi∑rY6ûóaTmŒ_PHÆ˜5À®-CP’!üGH≠äùÂ7d~`,Ê≥û˘ÁªXƒˇ\0∫ ) „8´íYC}≠€ÿÈÏ\"\r“ì≠ÉÜÓ	Z°®i˜≥ﬁƒ b¡B•Iœ˙xÕfß˘Pı7µXÔÙîô\'H‰åo⁄3¿¿ëÎ◊µfÊµ?Ÿ¡j—BÆYÖëõ8ß˜‚≤‡yÏ¥¥+m&Ÿ_Y9Qü¬ãOÅÌ$í/Ó–|ªNwÚy–äÁ®Â/ÖÏ6µ9çJΩ:ı‚ªWIQäñ>ÿ‚°‚xt,‰8…œJŸ’Ó7B÷˜íÃÆœñ\0ÛÛ•áç¶jWVâqi¡cr°@wËAÍÊ∑ÊìÖ“‘Œ ˙ïÔe,ì™ÜŒ1éá˙UDv\n«`÷çÏ”ÍÛ	æÛÛHF‰ìÎ÷≥ŸJ1RGµ¨öÓLñ¢0 ûi	 t‚ó;â\'ÉËiI\\prqÉVH¯ÂT@}˙S	»…‚£-∆1¿4ÒÛ.29†e•¥àÿü¥/òØ∑…⁄rGÆzT[π¡Ë:RCópåÿÅéı•s§\\[⁄A>¿VU,\nú=}*/m∆TF]§`˘¶£òúï<z”y ÒÉNùÍ—&ûù¨O¶yÜÿú»ª$ú0Œp*é]NÚ‚›†ñÊCL}∏$é;u5G<Û≈)pô+¯äæy%arÎrù∞x…∆i≠»<”e\\Ü=«•#}—öMî\'\'∏ÊûV‰èJåpsé‹‘±†ôïTÚ«ú\nÕªL≥°rLP≈BÖŸ¥ÒöÎE±–¸È5Ç“˘j÷¶1êd∆p}0q˙◊+<Ìs;;Ö,ÃKÈYS™™;«aÿz\'Ãú©-¿±˜¶‹≈±ˆ´«\'iÈû’dÍs=áÿqy{√n7vÕUb#RFv∞ÁÎ[1/2ª∂p•(m‡Áú˜ß ™Ò.‹Zmú2‹ÀÂ∆Ö»Ï£µ…\\	m‘‰ÉùΩ∆jsq<RdNÍG›9œ˘ÎHÍ÷…÷u‹‰⁄£D{áA#©¿¨û∫Ä∑%ÊàLd2Ö¡|ıÕZ∑’%≥ñ“m#Ê\\„‹{”ûﬁ/ÏÀÇK!„úvß] \'∂∑ç|†#P>Q◊ﬂ4îìE$f›Õ%ŸñWêñ\'$“¢±ù¢ópp∏˘∞FAßÀt«pHœ≠SL´«¨RÂ∞nõ‚{´HfKH¬<àcyT‡™ø˛∫»ñoÓº´K6y	Ëá;∏®†.íîÑ∞ë◊i\0}ÏÒÅ¸´±Õƒ6IA$»í£<û£=∫ıÆZñ§π¢µ\ZMËrq€Hó&÷r–H\\∑éı\"è!≥3;8\náˆ≠}w˜ö››’≠©ä‘pKÉ˛÷O<ÒXw«f–ìùŸÎZBN§Sd⁄«Caq•Õyj~“ˆaCyåT∏`SÌuÎx·Y‚ÅÂ‘ã|Öòúæqúzkìyåí`>Çümrñ◊QÀ$FEFÆÏgÒ¨ÂÖNÏ.Ó{GÑØu)atûfôÂ\r!f¡B9¿Q◊”⁄®k6~$∏âØÃ‹\"3!>^Pxpw`wÌ\\÷ü‚õë\0û÷O±,∑2™‰Ó~Ωj-[«wﬁ#X_yñÂ¸È\"€Ö/¸YdtØ+Íµ}≠‚ëØ:Â±ø‚m>ﬁœKõM[I!P◊V‰3áÄ1åg˝kî‘<K&Ï6“€,ÆZVÁ$Û””©¨ÀÕ]uKè>Eêom◊\0æ˘ıÆü¬˙%∆ØqÚj–DÔj“4arU‡n»¿$øZÎTi–è=D\nNZ#òÇ∆ÎU≥ππKàÑQ∆”K∫NxÏ}ÕaÉû1^äûÅ4=BdΩcsÏ?$™Oáû}´Œ‰ç·ô‚qáBCq]∏ZÒ®ﬂ+3îZ‹o∞s“ç‹Û@8<Wi!”5<A›21‘‘ü˛µOlYˇ\0wï\nzÊî∂L±∫·ô@»…∆Eu∫D\ZRÿ≠¨ë˝¢˙‡åHåGïœ¯W4ä™Å≤$T˛‡üÊ8≠Ì[èMâ¶KFí¸0+!ÂzÙ\"∏±-∏hi\rË)·›I“≠ıÆ›≤ø6ÿ≤¿ÛÈÔÎÕ]”.R«GûÍ{GÛnùÃ—êÜ¿#ü_∆±tΩKQûÙÀxcÖHVñ(êNNO^ı”›K*xrM?Qà^#Æa]áíO Tècﬁº*âßjèsu™–Ìty÷}918vh∆H‰q¸Î*yEµ›ŒòÍ˜2 ®cüÁö‰tu˝E±í)Ä&@®èîg”ëÙ≈oi[÷Ê[≥p“›9Ú’X1>ôˇ\0<W<Ê‚π®µ„Æ%ûﬁŒãñ≠ŸeHï8#ë…k¡<Ow{®ÍwSÍí∫‹+TnqÉ”€Îû0÷,l^⁄∆}NTõk9˛Ïxœ?˝cÎ^\'w9‘nßwô›2Œ•˛Ò˜>ıÍeëñ≤h∆µåÌﬁˇ\0J∑\Zõâ∂∆0LUFk§“Öå\Z]’‘π3Ï1àÒ«?ƒ=Î‹ì±Åáv™ìF<åêF6üJªk¨]¡\nGŒ6∂Â%èøÙ™◊Àsë«p0UU=BûEV\rÜ£ï4MÕ/µ›õ√pìmîıt8∆z“Gl_“!\0Ûì…™ ˚Q_ ípV¨F%bJ£\'©ú—∂√ZûØ·ãÎi£ìLû%¿H£∂OªÊı√Ù#<◊nû+ˆêûM›πq,d∑qü÷ºN÷ØÙX≠Fê,¡·ﬂÚúû2”•lﬂxƒgOÜy%å≥ VDRX.8XW<bÂ=—W≤=ZÒçÉXJD|πb#˜kπÄ<s«Õ¯∂∆ÚÛJ±ò[Jê5R% óc»˙`b∏±à¥mHXO(ÇUà¢ÓP  ﬁáΩvñ\ZEıÊû◊ÔÆ¬—≈\0Y¢ëq≤A∆:„∑QZS¬¬kq:éËÕ“tk„†Õ$ë}ûB¢6-òŸîw£ßÂXö∂û≤8∏v[R-º…VŒ˜®˙‰T7◊öÆß´…eˆè64v\"8ÿ‡è@}*kØÌI±dˆ¢YpØ`±`9˛.{UF.˜bvËq≥+ª|£á<˝(\ZU‰í÷œ x<uÎ^Ω°iûµ‘m≠Ôt†yÿÀ „|x\0`Æzì\\âë__Ωù-$XÃ£˜G8céyÒ¸k¶…∆ËõªŸúcd\Z`8»ÌSŒ•íÖA‰f´úûk&äOL‚¥Ùõ+k®nö‚x„ÚHæÙø0GÁöÀ«<‘ë±_ª‹c¥ïì.ßm¶£<0»%oëÅŒGj©Œjo(∞fÙ‡˚Sû UçdaÖcÄ{Pﬁ£#BªÜÓù≈>@ç.\"Œ	‡\ZöM6ksú E›Ö‰ÅÓ)˜f\'V∂Ñ√–∏∂Hû}O4Xeç2 ˜∞€ì*JÚ™ﬂû¬∫˝Fπ∫ÒÃ∂{=¥–>ZwìÀë@?{∏Ø?Idç≤\rúÓÓ\rz/Ü<Luò∆è:[Z_ ŸãU\'\\1˜∆+j\\∑≥1®ŸÏ◊Rh˛“&òÕÊG0ﬂ\ZJ‰Ü`:‰‰‰Á≠xE∫ÍZ˛≥+ÈÓ∞Is;*!óëúûß∑Ωn¯Ó=jœÏöUÂÛ^H¨|≥’˛l›sP∑ÉÔm4Ω=Ô\0≥\0»eôéX{mÍ1D‡ﬁõçKKú’ú¢ˆX§zπ\rüQ÷™Ω≥ÄX±1ˇ\0œ\r]èá¥HÔüRíÄˇ\0gF1á˜ô»„>›´T”§±∂∏2;ÜéPv·pGPkûqist4ãË\\æôg‚e”wM†äœ¿10˛Ôcö¡º∂ñ;G3Fﬂªô¢‹[°±Z~\Z“Á’•≤ñxo-ŒÛ\"ÖLc>Ωx¸j{ÔÎ≥⁄¥”Ÿ≤î»,8\r¥rO˚\\U¬§eµöw8‡0i„ø†ß›∆#òÌV^Aı®Wá>ı—qäoıß∞%~î¿8§1‚ì®«qNÈÕ4pr:\ZB`P›)I‚î(ÃÒN€Éú‚ì7µ.ÓqLG©¯7·ñü‚oI¨>°2‹	¢‰)àÎËsV¸1‡-XÜÚ“È%MF°#Y0_ìñÌÅœ°≈sü<_áuô-Ô^Qi:¸Öà‰„út9W≠ﬂjûµæÛ-.eÉUä7h\'p•sûP„Çv≈vRPiw9•)&—…√Ô√Z5»m`_|2:∂~†„9Etö5ç›ı’÷∑g®4€ CñP9Plpj˝∂©®x•eÇ…-˛◊kô<PÏŒÓÖOpq÷´¯?R“Ù…dµ√6•( ¬Éj∆A‰n>Ω\n—FQ^Èù€’ò˛0∫óƒó∂ñ∂ˆˆ·î$ùvƒqì∏„ä„µo⁄xZ]7Q7V∑è.Ò=ºst#ûˇ\0•v>$Ω1kóˆˆìÑ7H¿—îp˘∆’#◊={å◊ü¯¥j!“ﬁ˛Œ8û Hd¡$R>ïû\"<ØUtiMõ2¯˛ãã{£rœ U‹Ñ`\0 ˙Wò_¢%À˘dîœå\Z“Ÿtlº≈…V\0ü≠t\Zæïßj>7˙{oπåÓî*@„#8Îö‡ÁQ—ù	k°¬©Õ)Íi*~îΩGz¢Üû‘8˜•«õåsﬁò\nqIJ2MqB‹å„ö\\t‚êÒJ9\0É9\'ZèÁ4Ân¥1°ißå‘Ó‘ûÙÄoÚ£4c‘RÖ›⁄Å\Zí¡4LC#!∆p‹T∂7∆”Õó\\√ßΩ[xÓn¢ÛÁ›* ˘úr@ÌödÎÓ\nWŒ„◊Æ;W2jÃ¡\">[i*√éy†πâUP≈(v#Ê\0tÆˇ\0¡˙Vë´,ëÀo,Æ©Ñ∑Ño$˙Á(Æ[S∞Xo¶>WïÜ Dß%Nz\Z¬à∫éüaµ•Ã(Ÿï∞{~ïa.Áä@ËÁ m‰Áääe√1¡‰„5\Z‰/<\nÎé§XòÀÇ1S©/ÃzU\'ì˝ûï,\'w\\ÁÎN⁄∂™ß∂)ó˚B∂0›≈J±ìÇ¨	°•b\\Ç„8§„!	 Ó`äéE qO?+v≈#»ER Å”ΩHF0x¡8»ı¶ÓcÉ≈<ÇΩè\\UuıœOZ’≥fL\rúûıBáw;èΩh≈\"ìÚú`\ZW‡≠Çx=ÍÌ¨¡g•gDÓ	V‰Ù≠êc’Wv⁄Ë:u‚¶i8ÎYHÖpPÁ‹UÉ1≈4¿∫\"°õ-ëDoø€äyRÏı¶\"≤íá°¶Hª€#≠ZdSı®dè‡˝iOpÀ≈M!Â∫é¥∆åÇI®—l–·0˘s¯‘…d~4»N;U∏¿4¿|qèZónWäE˜´(}Ò¡ÙÌTÄå¢¬ñ?QäçóÙ´L•îª8f´»285LD]MXéBãèZÆÕH;“:∂Ns≈=[Ë*Ì˙”â∆y¶!‰ÉöÜCÅJTr6xÕP™Ó˚z˜•v⁄jºídP w$d\Zjπ>µ6sä@Âx<zPéˇ\0ùT∏pTûı;>W<UI]NA˛t0(<{¡Œ9™≤Ü∑=8´Î\"´r8®Æ6J∏\rH _⁄œΩSû‰æOzäÍ\"¨AÈÎY“I œ†¢„∞Îßﬁá$f≤ŸéHÕM4≠èz≠]Õ\0gµZ¥»p\rJ∂˘QÈR≈∆‰p{“øß\\˝Etñ˚Z<ØQ\\ïõ<g√]ûÏ„ìÅMÕò€+é‚¶E…ÁΩWÖ·Ëj¸h1TâÂ‡\Z≠*¢¥ÉP»\0œ•1P§û08™“IŒjºÂJ˙V]«RA„4Ü^±‘„≥dR€ôr£Óë‹Zrº7”n≤D;ôí&}¿cÎ\\sæd‡‡˝jƒ≤∆õs¿5ãÜ∑C:Î=BÍ gxÌååIUë!Gp*Áàg]KOéYnZC´T Ó>ß•dË˙å-g$+%√J≠ù0;‰÷Ω˝å˙bòô(ëÑÆ«ÔèJ¡§Á~°dsZe∫I1RÑ xã9n’m,ı	gö„ \r0?›C˘’ç®É˝\n≤∞em›*ƒMjÏÏ˛`òízÎZŒ‘√‹È.“+Û∑$ìZ^—Ù˚ùYWF6ãÚª„;	ÈüNk®\Zd÷”â6,–;©Ûäp	Ë=æïô ∫HµX‚À%¿˝Ê≈È¥Á•C\\—≤\ZzúÁã<:˛\ZÒù2uíŒS∫a~W=é:\ZåxNÍM6ˆ˜Ì∂øË÷‚}¶Oô¡˛¥hÊΩY!’›æ…ú36ÌÁÆk⁄¥Ø¯Jk∑≤∑±ú8Ú‰ë˛bÀéø^ï¡àúÈ4∫çF˙ü>i∫êÇH‰ò8;}Ìëﬁ∂ÛMæeõRfà ¬y(\08Ì“∫ø|:”º3°â-#ª∏íi√y·rê&9^=}ÎÕºµH…ﬂπ@˘èß∑÷∫£ÀS»RB]A∑Íë…æÁÃ+Ç“µ¥õÎM7T>V≈Åä‚IÅo,éw`uÔ¡¨#2∑»™û†ı´V6M}wHÉ0QöŸ•…f$}°]ivr¿ˆñ◊Qï›#´Äå	mÑê?\n–Ò\'Çtø‹}≤ÌﬂÃà¡CÇ9¸{◊=Ñg’º)bí7ñq≤[§Ú›èuÌÈöÓÙáúi∂Q]!˚IåÁs^R∫÷ÁCWGçxìF“tΩ⁄>{…ÆâNÏg,T©Í¡És§Aß¯|Íoo$˜[ÃMΩæD\'£cπÎ˘◊§|Nñ«OöŒ7ÇÎsFÌD˚#Y?ºx˘çs\Zû5˝>Xdù ∆Õ»B»ß©Ñp\nŸ6ñ§ı<ÚÔOñ¬ˇ\0Ï„cÀ¡Vç∑°ØDÃ¢	≈QnPbgìà ı„µQŒÖo?à\ZŒÔt3B°Iì`8«π™>%≤	´º∫dZ€°*¿í£pÍ+¢rS\\ÑlÓé¶Ú‚M‰å≈Á5∫ïUsúÒ∏vôˇ\0ïŒõe¢ë¡7ò6Ï^Kt‡ı∆jøÖnÔ°ªK£nÌ;Ç$w%C(ËÂ]&Ø®À&ù4ó6‹tÜ(à´c\0vÆ{…;&Z’jdC›µ˚ñ\'í0•X/V„Ç;˜∂`∞‘µ„[òò´.Ëï±Á v<w˜¨ùƒÓê/ùf©qs U Ó!≥ﬂ”#Ωw∫%‚Í˙ï›¥»Ÿä1µ«L`wıÊ∂ßÔœïÉvF;xkP:⁄^I*)ÛyqsÚ˙Á◊ìÔ]Ωç¨„ √,cÂq¥ûN\rJ∂ü*£`(pQç«÷•∑Åm°Xîís‘◊©Õhr‹√óﬁπ-fkjç¶LÆàT©ˇ\0XπL„å˛8´”∂\"``vÁπØ4ü∆˜VWRZ]«<˜k#	≠J†BßÂ\nπ‰ÚEU6Ó∫\nmlr˙ºˆ:’ı¶ür–5ºrÆ<§åH¬q–u˝*¶£m•Ë˙,VÒj:í ŸñV ¢™gf´¯é˚NöÓ{´-.dI\09%‚›Ä¡èîÁ®ÔäÂÜ™ç®∆/	û(≥π7aI<Vıqé÷\"4Ø‘ƒøö“cê¬ÒæÃLô»\rÍÙ¨âòÌ\nŸ8È≈tI$r¡ˆTÇ6f=X|Ÿ˙÷&¶è€)MåAËkÇSÊw7QhÇ‚Â⁄ ;~<¥r„ér}Í£z‘“Æ÷⁄HŒÎP1ÙñÖ!‡å\0£åVÊü£I=£^Ç•\"∆ÙËyŒ?+N3¡Æ¢÷˙ÓM’ÂHZ¬ÕÑnå\0/∏útÂÄ˝+9‹L≈∏¿öEXÇ{u≈VÿpåSÀΩÊ˘w0œÀ«&õ$Å»˘v‡`˙P¥»ˆ‰ÄA•SÄ@#•!ëó\0`Qí0qÕ;Q¿îŒ{“ø}©dd:ª!ío\r“rïFO:Rr\r.I…5<∂2∫\"°~~Úû*√[Ë¿\0ƒ˝*∂&0‰‘¯[`ÃDls”8®wDéï–\"ymŒ>aéı\\∂Ó†åäír®X@¿8®◊Áå\0>c“ñËV±$N|ƒ√îÁÜ´Fg∂ÛÕ¨Ñ⁄8˘øœ5ûë¥e®›œJqrÖÑmÚ6xÓ?\Zk@.ñíGb™w.“˚ºÁèJòH\Z0∆\"™£Ög∆ˇ\0ºQ.vÛm<ëZZyÅöXßï‚BÑÆFwŸˆ™’ÜÑÀx–Ÿºhw,¿`é«cÌÕ$Q∆–ównnË>ïûd·Ó{VæîíOt#µÑ…©V8∆~Sëösó*∏ñ‰◊÷œbüi0IrsÏ+¢˛°÷1ôb∑/Â>”ÂÓlå‡7¯÷.ü™-Çœg´yÕ\r ysÓ>Y çæåÕ;√öçûù;	<∆Q0h•$©+Û\0§zÇ~ïî‰Ái\\‹û˙\0∂€â;X¡<@c(H√«\"°Ò?Öo¸7x&\r%Õú—ÜJºeªC“ù©>üq¶=Õ‹∆â£(bAú0<`pkùãƒ∫Ñ÷ãßÕu<ëµ’úùÿÈü\\qä¬è¥ﬁ?0íHíﬁm◊0G2Éy$ûN:û+gKøçµà\rä*0`´,ú˘è#<åW3y°IHd\\ÆZxπ«Fw ˝‹ë∞ˇ\0ì]Rè25µ{€ÎkÿeæÅ≤!Ú„%÷ s»o”5‘C‚=*ÊŒ3w„Õ≥é9πéUàd„ı®l†á]’∫Í2Àl|îó∆‚Ÿ¿Ù˛µ≈-∑ÿ/Êh∞ìòã∏09Œ3‹÷+ñzuE›£N„^∂éi≠≠Å0%$òÚ•π\'èCëV†ıÿV∫c‰±åEÃx\'èLµŒ¯L]Jıƒ≤dF	+ú<èR8‚ΩÈ⁄¥⁄Àms4vvíÑçdRÏç≠…Ù<ë€5RåWª®-NÍiÁ’î“I$qÑaêúcüZ…‘`ê_J≥™§±ù∏QÅ«o≠z&©†⁄#{qp‰Ûc*U≤ÃπÌ»8‚π[∂≥öTâK$ø÷\0:˙üSJùD•b$ù≈–Ì,µ®R’`ë\'¡˜·ª{\nO¯~=\ZÍ(~”»˘;b}‡/bHÔ◊äŒ¥æ∏ˆ±ˆõi»£èóÂïPAı¥e‘¨u]Nâ`DFê4ÅFvÅ—OııÆ∏®•uª3wπÕ‹ƒäÄr:Ê°UÓyÒ÷∑ﬂLπæñÓÚW[49g\0Ï@O&≤lîÄ™AÊö∫‹d\\v©>ÙÖWË}*[ò$á+ûø{i»®CÇÛÉé1LV$Imπ´–^J—«lŒ∆-«Ç›3˛EeÇI‡‰î˝€HÙÔCàßEäc\Z∞|HÏj5nF:j!(?Ö(mƒz˚PÖaÓr‹;ëM`≈æ^ãœ^¥Iï|»‚§¿ÚÇ„ê~ı;åßq(iòÖ€«J@‰&Œ:S§Ui	Ój0YX‰p*¥h\0Õ◊©≠˜yÎ±H\0ÁÕ%¥±$ “∆Ãò#∞jVî¡!Úúé À«„YÀ∞\"·Â⁄ÿñfäúûy¨÷X1V`pÃr€_ca≥úúSØ4Î´(≠§πMë‹¶¯éA‹π«Ûß⁄: oR®˘ò*u5<`+ç¸ØCéµ\Z∆Òê„ÂoÈZ∂ñ)6ù-ﬂùn¨á6qº˝ZŒOïò(fX∆Â `\ZõL∂∏∂‘O#€I ⁄ü);≤pzvÎ˘UùRÚ	⁄›c∂Úº®’Yîq\'˚UoRô-°”o‘LœÄ1å*cÅ∏{ÛÉY £µ≠∏˙ê‚”Y6≤«Á\"∏ﬁU∞{[±h±È;•eYï∆£duÁ?A÷¥µÎõªóÏVã#[ÏñieÀ\r¿„≠s√T∫{O∞ƒx“˚dzö‚Á©QmJ∫º®O∑∆∏X’zØΩdÖú1‰é¢íÏ‹\\»¢@…ºdgÄqV\'å≈kn\\È‘‡tÙ?≠vA(≈ e7a¬Å‘U»ì‹\Z€]2k•ï·Ú˛E\rÜp	ˆı™∂í¡:âl+˜ê‰˛Ωm	≠Ö®¯¶ŸôÿJ¨¨•û}zVƒ⁄ÃÒ[ò„ëp∫¶÷cú‡˙ÛY\n√`\nUpsLâ’YÉÆTås€ÈS()=GvZ∫÷ØÓÜ{Ü>g„–÷yó‰€¸^µ$p˘ÔçŸ¡ÁéÉ÷§û–G9â~bA≠ZÂéÇ‘™ØµyÃùÿÔèZ—≥≤âï¸…cIS¯‹IÎûÿ˜™IÊ8¬Ö¡©4ˆCíÓf Ô;AiÈë–‚ñiUê±Ωf$∞ËG“£åQ…î÷RßÊºä9U¿h;y¡Õlh~ ø—o⁄{&A$—òX:‰n¢≤K\0\0Õ8 ?JSÇú\\Z⁄g¥%ù◊Ÿmñ]JëÁHÆ&d{7*‡{\nÒã◊ﬂ{3‰úπ9=˘´P^\\€KÁC<â7\'vy5B·ãæOSﬁπpòYQìmﬁÂJw#&î\Za„°∫qÕz6 vÓjÕ§By∂>RŸoaúUjí⁄EKàŸ◊ró‘g•LØmuÈ° —Ö‰wñ¬ìÉñ…œn†\n<1e.°y-∫∫	N\0˚FG=}*Õ˜àmVŸ∆üiπôF¥GÎÈäÀ”5T”ßçö ‡∏=ÎÕä´(JÊç≈XÎÙH∑¯öﬁÚ[∞©Ê|ÒºÑÜ+êyÔ^âo4“ﬁ«‰mñﬁ8ˆ»$ÓæïÁ˙$PÃ–ﬁÀk∂Õ$€Ü\0∞$æá∂=+º≤Y\'æöﬁ0≥G;S)PÃ‘s^N!\'+æÜ–z7w#NI¸¥Û£åw„8#n?A\\ïñØu+§E“a*PÁÂRA }zVÓ£43i“YiÚíË™Ön\nsíy˙U+X¸;`í›,Q‰› œöIÂqÎÅ\\¥πÎ[ö⁄ÎC <_¶ﬂ‹¯ÜyÓ#ùÑüzy¿œÂTt›’í¨≤Jv\"°À‰ú{„≠ç[PírdëÓD˚±πâ¿œ tÌ⁄≤\'C†Ív/a$ÈrSÕRÌ∑cÉ«lW—Só54£°À%iÕ’¨ñ7í€ÀÅ$LT‡Áë]ÅPiWZä43]#˚3åü,ıqû88º◊9u#Ms$è!wv,Ã{ì‘◊S°ò≠4tπ7¬P«1≤~.:É”∂1]—OóÃ…Óbk\"ÔPíU@äpŒ–Nk<Øßj≥{uˆâY÷0™[\"ãkintçôçÏ }ißep±oJ“û˘â-iM.\\‡6ﬁ£Î]ÔÑ43W6÷rµ‘R»]ï—7+1(>ò«„]˜Ütœ·ÿo¬«Iï22Ö\nÿ\'úˆÁ˘WA·\rÀAÌ®eVü˝nTnn{ÁÉ˙÷Sá¥çÓ\nVz{‚œ\nKß∂ün&gÚÅ€∑qúûGb*Ó4+À	º0[PŸ\rπSœﬂpA«SëZ\ZÓçyÆ»1CmÚ\0∑2¸“&pﬂ‹÷,^ˇ\0ÑvÛÌñ◊-q+‰OÊ† —ÄÌËkÕØ)·‰•°—¶¨gﬁÿ_kWAfÀî±˘l◊™ÆΩäéÿ«≈Q“|ßﬂXôbùØÓ î«unÚ‡8ÜûΩÎØÇﬂRΩ”Ê∂π	∏ÁzßΩ‘ÁÙ5É·}6{‹_‹ŸOm«Âí˝œ·÷∫Ëπ7ÃˆfrVV<˜SíÎ√˛\'y÷–¬è!ä-≠ê\0#ÄGµt÷zÕéØ®°π⁄A‚W≈ÃÄìÌ÷∫ä:\\p¯zﬂQ@Ä[›¨ç∆@#<sÈ^G´Ã&∏µ}4…lgàs∏±…#◊†Æ»π#\'œf‘Õé°4≥JRL@“¬ËAeLúÌì»˙U]wE—µ}6 ˙÷”t®JIn∆n1”ÿ„ö°˛Œ‚À√7˜⁄xπ7da1∏F~Ò9˜«≥¶¶õ™xé‚e¥º≤ù{ l+œOïA#Ù≠°kYhE›œÒ∑áotÌ∑m6äﬁR˛¯5ƒÕ}7ÒHi<	©˘wK4ír`ñ⁄A¿«N;◊Ã≤HÊ≤åd£vi{±§ˆÙ†6)\0\0“O“ÿÈ∫}›Óô´ú≠ihV99ﬁƒ˜È˙’Yt´„t-De…ò?\"Æ3◊µuˇ\0~√®‹Íz6†Ï|»ºÿ<\r◊æ¸™‘Ëñ˙ü€\Z‚Ê“;Y<£ûAÅ[iqÇH«zt® RnOB\'>U°¿€‹^ñµÖ†IeåÊYXrÕ√vÈ≈cÀ.6måº1Œrﬁµ⁄¯€E∂≥◊7°çcπ_:‚\0F¿û8^+åªÑ´πYRB≥≥ÿı˙\Zsè,¨4ÓäØ!ïÀ1˘âÎR«r—B®Ä[p˛ÖMnëM\"§ës/ïnáÈUdI-Â*ÍU–‡Ç:TÍµÜΩû±2jPﬁM+À$ns±$êr+’u?ﬁÕ·πÆu\r:Ú∆¢ﬁtõ,9aåÁß|Wã!Û>‹	«J€µÒ-˝∂âq•f)mg ˛ır»G˜Oj“ù^W©ú‡ﬁ«y·OGig&õuek-∫[+$≤\r´ÇN\\˚Á∑5∆x‘ﬁOzuÖçb∫ †äLØ\0t@ÁΩU–ÆìŒ∏Üxßö)# «„ëŒHÓ3ƒ∞æ*€ÑáúÄlSî˘°®EZGGŒÎKè\\ïÆ·ôáŸY|ò≥Û„û*Ï<]Ò∆˜√èa&áq¨£1LJˇ\0¨ÏN:s¯öÛœ\n–ºUkqvÜŸ<Ø0F˘˝‡∆GÁ[:éπ°¯ß≈3ŸMt÷:Dõ@	èﬁH8V99Á⁄™ääW{éwπƒÍÖo†Y\"Ö@üΩxÚw‰üò˙u≈bt ◊K©€c›Ok§π,¨∑\03Úû=´õqá\"∞úZzö≈›åÚED„Á¿<RåÔQ∂Cw®,qÕ\0|Ω(˛T·ê8§!†ÒJÑÄA§f«=®ÎHl“Éª∂)1ä`(%2úr\rt÷ÚHaqrUŸédcúW0z‚∂º;≠ç\"‰âm„û\'emÆ>Îá˙SJÔrd¥=.ı(om‰˚T–‹GàKrS®≠ÀÑt”bÅ‚›0îºÖnî†∑Æ)∫Z¯Ω§ö≈≠‹1ñä$!I„ëé‡ÊΩV◊¬⁄l⁄Aqg\Z\\≤Õ¸AáB\rSˆõ©ËcÓΩ,rVó∫¶Äö»”dµàÅaêniU[899«ΩUº¥(∑ˆì¥wEºà◊?âŒv\Zπ{Yt…Bœ&±ü:#–ï¸H?JÁ¸SØC†[y÷íF˜G‰∞í\0A9Ùœ≠uπKñœß‰g´‹®~Õt÷¶BüL◊y‡o‡í‚ÛMâ. í7I\"+øårè≠pz¨ÚM©…r≈ªn;WÚÆ˜·ı’ΩΩ˘ö∆„Ï∑\0K¥J;Ø°»ıØ ›∫JËÛ=z±tæQè7À∑Á¶+4bΩõ‚ÓèÙ0Î66lÅlÂ\0#Îê9˙◊å∞¡È“∫`”ä±W∏`“\ZwR1“öG&®ÉN∆iüÖ=NE1\r#göy¬0sHÎÙ¶˝)Sﬁî”#sKéiÄ˜ÔN\Z@\0Ï\'“êHwqA9¿¶è≠gM\r¿LÂú+p€OZ|PKyrä2„˘%G–U{Å …Ö!±Úr∏´€ﬁ[è2ëé$#h?è·\\6Væ¡kÅ·[òtô·ki-Jøº\n˘ëy∆xéïË3¯o√óˆ∑Z$Öz‹π∑7\'>øZÒ]2ÁNñ9ÙÛ[j(3ä2ª+z}k≠à⁄¶ï·´òØ-£Wñ‚;Y¢‰c°$Á®Ö:pÖKµvDπûàÛ›N+q©‹Ekª…GeR√ÛÈT$Lb•ÖŸŒXíXÚ«ΩZdW[\0‘W{–µ±íËπ>›E$j≈¿^ß†´≠l$tÕVñúÇ7Û`…!∏*sﬂ°©í‡3˙úU1	@\'ﬂ#äπßxÔbí‰\n∞f__j∏E7π-ËJvÌ‹@&°1)<ìåˆ≠-wTµ‘µy.≠,„∂ÖÄƒQ(¿∆qTºƒ$iIYŸ]—Q◊Ê!¨@õÖI\"y EK2@4&1æHSë⁄¨«ñ∆:w4éK«ê3ÎDd\"Ì<w¶Ä–äD»œZΩ.2ëò ‚Ø«8`\0°à÷ÇBÉ≈Z»#öÃÇm£ä∏&qHq0«ayÔY±9,z÷Ñ\'<’ %ŸÇ1C.A:ë÷ëÄÎT2£¿¨9îGj¥ƒÉı®ÿt≈!≈«≈\\å`T(π9«58;G5H	„#Ò©ÉÉä´ë€ëO`\\S@XiúEÂo>^Ì¡s∆}jzqIøwzB¬õl8&å˚ÒF·”4Ñè\\P!·±R<°ë{Ì÷´Ü†∞ÌM$\'#≠F« “yÊò«5B!ìÉU\0«ö≥+Ä*£∂O÷ê\n<”së÷û$‚°w˝hƒoNú’9£«=j …◊“£óÊÊÅô“.–ME∏)ïjC‘ÕSôvëﬂ&êÓv∞<OJ»ïT1‚µ\'o ≥ß\0êE!ô˜¨:UtOJ∑(œZâ!‹yÈÌL∂ÂJÄGr3 8Á5\rº+¥\0+V–mq¡Ù§ñV0$\nË≠-qÉP€FòV¢ \0m¶Ñ…<öî”ÄÍiwy™$x%õÈLò´\0ÌÕDÓrjüoËïÃÆçéq⁄´)gl7zµ+y¨Z{⁄ïè\'Éúcä@SíÕXgFπX·xîîbƒÙÕ]çr\0<‚•6 „ sI∆Ë	ãx¬ç¬r†Ö+∑»Õ]∏÷Ô.„ä;Üp1‘˚üzŒX[ NœjïaÈÕB§∫à∑∆#\0`V≈ï¨ ëFÂsΩ∫g5ãcbnÁh¸‘à*ìó<V˛ú^Ÿ[œãpaÖ`>È˝«™I$4o˝Ä6ó%¢\0d˚—‰ú3¸˚W~.4ËolÁäHßëÅﬁá∏ ˙ÉöÔÙ£<	æTí´enæ;W?‚ıéD∑ú:ñPc#æz˛UÀFOû€¶&ögûù:·YUvıÌıÆ∑OY4´Hn⁄&(b8Pô‹Ÿ¿ÕR∞ç£åÕ\"ÏÄæ$˙Äi5MRFûX!√ZÓ‹ªπ?ùmZõ®˘M≤πË∂∫ùÊµ¢C,™Çq\nóée=Ÿ‚º≈Ç«]∏(Ò≤L≈±„o=6ˆÆ®Íó+q∞ﬂm&‡épÕÎè∆±Æ·{Ø<óƒ´L≈T”Ø•s”√ ùG&Ù+Ï&ã‡Ëµx,/mÿœ3E$jˇ\0:që≈lZ¯__á¸M\ZÿKi>Â‡∏@~ÒıŒ:ˇ\0f_-ÂûN¯õ8»é+¨”˛ ›]⁄›≠Ÿe2qµrUx#>Äf¢¥j≠bÓääπ‘i~;∫[+yßH#IWtMŒy¡\rû„5‘h~$]`«5µƒ2¨_,»ò»c”˜ØÒ$û`Õøô\npÚu;}tûÛmß∞˚9T/yŒpƒÓ¿‘\n TUπ∫ö¬IËœcÒ/á-ºQ¶•ùÃÖ\n8êG¯W®hvﬁ‘F¨å∆…cÚåeâ#8àÎ^Ö\Z˝¢5PÏ_ò„ˇ\0≠\\7åµ≠åœ$q‹Ÿ≤à¸∂¡!sù«û#®¨‰Âe}â—>!’Ì£”ÏØ¨H[î*ÒÔàûôœS[‘&ô≠Æmcµík…∏\nK\\Ò˘U	<9w™ÎÈ[í9fP‡ñ0H‰w8®Œô´Ë}üRB±∫ÜÑ±$éπÙ˜´ä]ƒµ4Ïµ)aær±ÛT´í‡·âÁèN§Wmaf◊O$Ç?1Ÿ∂#ÂQÅé;˜Æ#@”k‘Ñ#¥•üºÁ#å3^∑k+(‹BpBëÚ„µL’Ÿv8π|?ˆ}u/H—\0pÅFv·áÚ≠[ì≠µ‘”ƒ—„jÆ–6„ñ∂;◊N≈5—ú(»F8…˜≈rSZA\\À=‰q	f#˝Öı5ŸÉÇîÓ∂1´-AŒF{UYnÉ9ÖŸ¿Œ\0∆@˜¨Õ3U\Zú1∆ëNQ‚K¿Vı˙`’ÀirgGÛ\"ÃaõÇ}«±ØKìóVeÃÂ±õw•\"^K©…m(@…„o9›û:„ÚÆÛYﬁß‚EºùÁû;X74•JâH9Uˇ\0≈«ZÙm_BáZ”Á”Ógú[Nª]Tè^«Æ_≈:\ræè°ﬁﬁY[è<√‰£D·úÌËN;Ò]4j\'£zë(µ©¬¯äˇ\0√ö«ù{$Ò≠∫¬ZhÿÓYâÀÈì”å˝+é—¥ù/Uöﬁ5…∏wa$i	b@\\çæ§ë^«ßÈ⁄°3«a¶,õ„ŸpeÑπG^ΩIÍïy–Ì◊áµØ-Ì§+§d∏Yî*´dcqë◊⁄¢∫N7∂√É{≈÷èyßÈÁVé€≈t—bU˘∆\0Íæú◊#t€ÓIq∆y«ï{\ZKmgo®›k±…™8éxˆ‰™+@Í\0œ|◊ñÍ∑≥xíÊ‚ﬁ\0∂øigä\"1Ún‡~U¬›7(T•+Ÿò∑	˚∆¿8øZÖ’J‰z‡äª;oï€h\0û@Ìö©\"l4£+ª8Y]\rÜöx‚R°ùÇÇ«\0d„ì]>©m.ìmkaweñ4mó∂·>„∏d˚\\»§\\s]-µÎjœO.ê≤ÌàÉôúÒÇA„ä µÓªLóˆóJ±IñÄ*Ç0S◊˘ûæµNÈëÔdì‰ïœL÷é£∞≥¥Û»∆@ìüb}´\"V∏„çLD¸Ü¥k$á`∆;g≠1æV¡ıßEŸñ#∑Ojd°\\Ôñ=•kpCr§‡“2·rO>Çè,ﬂ⁄§H◊,x©ﬁ»vhlQá{`„ß≠.ú‡1≈;À\r)C†ëD`@c∑ﬁíwuU˚*Âæ|ÒÉ¸Èí™˘Ég#Û¢WVP™0Òz”~ÏåÚ\rK%ã úÒ˝h-Ú(R=GÛ¶ëëÉ«5bÉ\0)ÁØÕ@á.HcÚúÊï£\0ºìÿbíPÅ˛V˜Áµ3xcì˙S’ΩI\'âˆ6H»#\Zû9R=ﬂ(|Æáﬁ™®¡\\t5\"|ÌåU d…âπT…‰∑jÈ¥ù.·4üµ%‘fêÙ`v´úØ\'˚ÿ…\0vÆr¬o±Í…≤7@¿∞ër0H\"∫ãØZÕ\r∂û\"0ÿ-‡∏∏é‹ÉøÊ\'Âœ†<f∞ƒJMr≈Û6ıù	naé%F∫ßîóI—!@r=¯¡¸Îìó√˙¢EÚ#ã‰í0 ;q¡¸´sVÒΩy´\\]Ÿ¡*[™ü*,dA{éÄÒ˙÷üä|64Ω>+¡so$—ôºÜ› ô»FG≈rPØ*IBoVhñáq)ÜRLRÉ˜\0íwg£UK¥ä8‡πSª?ÎTqéO«5óÜÍm”§üò®≈$∑\'…0Ô‹åÈÈ“Ω8≈íJóWrπÁ±˛\Z∑cl˜ÚÌç„WUiÛé\0$˛ïR∆∆KõmÈm.‘?ºîr†ç_é	⁄.-Xxëcî»ªNO`?\nzlÇ∆ØáuHœ˙Àæ‘Fkwf¬F‰cs◊k7U˚pù\"ï£ÃBÄ∏Wl‡„Û˝j÷çv◊≠v◊15æ¿d∑WÀJç¡P˚√Ø·U‰äÚu6ñDwE,Äël93≈c¢ñÜõ¢/ı%éÖäŒTÛúÁˇ\0≠¯V≥x£Q”bH`ΩÛÌ”  Â>a◊øJ√ΩíÚ…Un†ÿ”ßÃ«¨úOÂ⁄£é˛ËY‹@HÚÆ\nó$d¸Ω1Z8¶Ó$Ï]Oﬂ41⁄ﬁN“Z3Ôlå∞=Œ}qR][¿€\"∂ëëÇoeuÎÈ”¨kií)wÀõ‡Y	∆·ûG∑a/›MïôH\nI…ÈÓ*g±&ÂÎΩ6cJ∞À$cÂ‹Sò»Ái¸3Xƒ0uh¡æ”åˇ\0ıÎ´õƒõkábÒﬁÕ/ò‰∆ÍO9®‚πÚº»’á˙Ã∆B„vzq⁄ï)OÌ	ÿª\'ä.M:\\W2…gπ~ÚÏ`~SéZ…cñr¿‰êW”Ò•ë\rµ¬y 6±IÕNâ+ﬁÌdÄπ ∂=3[sd$H\"$Õ*ú¶ Û–˚’)`ÿŸË¨x≈+Ep‚TN´›Ω« ÿ√T\';i´¶®ø.vûîÅû∆ûAì«=s÷ë¡\nªäˆDk…>›ÈÎÚö@psäB¿ö`NìïÅÚêpFA>ı=÷†˜RóŸaõ%c\\\0q⁄≥˚ëû)Tqﬂ÷Ä± oò±iíd∂21ÌMwûìÄ)†\0›ç˜¶ë◊÷ú∏#•b{yV;àÿ‰9ÁµHÚΩ¡ˇ\0|ìüAœa⁄´FU9îJ˙˚UÀŸ‡πºûK8æ…nÌîÉ~‡É4÷¬{éÑÃ∞§∞R\n∞∞€´#àŒÃÌ;é2k5&ïYÅmºÛÕhièosuIM3l3œù±É¸F≤íl§vŒ=Z{hm≠¨Ï|ò2‹∑… ´ZûÕÙiRÿÖu`g»·õåˆ4€´d∑öﬁu4örÜTmÍ∏\'∑\\w¨ãˆ,œNZÅ∏éıÃ®∏…]ËReâ<Eqw;QÇ∆BH⁄¯KOÉW◊¢Ç˝cµpB¥1`l`∑Ëy|(Lÿ$qÕtæÜ©@d2=Ÿl™ »\0cés◊ä™∞J:\rY©‚üµÎrXZ¿n\r©í!2«í‡qí;bük¢√}†^_Ou\nOÌÚ‰nTÄ\0\\u…ÁÚ™\Z~£ˆMfb◊ûGûåÆ¿gzı«ÆN>ıŸxû„I≥ÂìÀ£◊¥ë›¥∏}‡/Õ∆N9«5√Sô(®éJÁïfkKÄ@»Qê»55˛Æo!¨Jê´óP;*Ê£®E9VÑÖ¥esÉ∑ÉÔÈUçåM`I$¬e¯Ëkæ-h‰µ3±B/ ^ÁÅJJ∂s√˙‘!Ä Øﬁ¨âÊÃ‡ú∂Elƒ>Œ&πîlÍ9«Bk™”m~œ´€ﬂ˘i*°fëí\nı ˙\nƒÉ “Ó¢∏$àíséG±Ëû”¨ı[K´ù5ök≈àÌ$Ö<ÒŒz˜√ä©e~Ü∞W9}[FûÊ [ÿ—Q\0y0W$ÁÉﬂåW m¶Câß˚√Ù~ôkgs§«ïLÔ]ßønsÈ[¡z|Û≈≈∞ë-ÚA\r˜Åœá≈TäµÆé∫ü7YÈÛZJ…uhaïiéßü•gÍ\\7î™©–(l„◊ì_CxØ@öÁHö”Ì⁄[≥2£˘E—W#î˙ÙØ3–˛Íö¿ëû‚(cIå{±êÍﬂS‹gä÷é:.Ú´°.°¿€Fy9¡œÈB≈«ÈZ7\Z5ˆü©MßOn˛|LUî/ÎÙ≠à|™ m∞#Uô¸∂%ø’6qÜÆπbi$§Â£#ï‹‰§»ÇΩWêb0Mt~%¸⁄%˝Ω≥8ñI°Y\0ëûﬂZ¬ö∞*pæ›ÎZu°4•2ëRåıRÓ«J‹Õ)7{QÌLFΩÑhSt€à#’õb∞ÍQâ\"Sf@qÉ‹’K	¢	Gﬁ«ﬂxc¬ÚkPE/⁄bäXd%æ–Ñ\0„ûá•r‘ü-ÓRM≤=Rı„”¨,¢õ2¬™<Ârô◊è•_‡‘nØÿEy0V8â„^#ùÕ‹‡’Xk◊w0ƒÈ	˘¿oëó?¿G≠zWÜÏ,¥´]…èM¥Ò˜2=b+«Æ„¥ñÊ±Ω»ıYÂµ’‚æº¥éÇ&@K|éBÒÉ¯ÙˆÆn˚≈∞X]jŸ§]åS#*3»˘äÙΩOJéˆ[y%ˇ\0èh∆~Œ@a–◊î|Y‰ˆ÷÷∫äHñ›nº$lqÄ£ﬂ˙W&íRT‰k¨U—À¯É«6˜±]ZŸi—G*,1ÍF}kñ∏‘Ô5K·qu!ñÈ Å&\0>Äq]\rÆá†€Ë–^j‹I%ÃmÑN\n8?®∆kKä‘jhó\"CnÌå)«”5Ù8UM.Xt9Í_v?ƒ:mÓôs\0ºÄD“D\n‡`68œ÷™B”‹∂”π…\0cÙß‚ΩV}JÌÃó˚>…gèªÀ^3è ≤,.⁄÷„råÇ\nëÏkÆV˚&jˆ‘ø´[‹È—-å®™ä€√l¡lÙ9ÎäM;ƒ∫ñôßMß[ ÷ií&¿I c©=™Ω¸∑ë-‘Ì$øwr@ÌQÿX\\jw+¨fIé‘E6¨¡≥≠∑Ò>∞∫TX∆Z‚)!»©Ä≈{è√›MntC-ºçt–ÓYà›π:(-ÿÒåWâ¯«I◊º7<ip∂–l∂@Õjÿ∆HıÏ~ï—¯+∆Zæç!Æ˜AEÚÉëè(„\0`Û‘Åüzü´®¸!Œ{}¶¨/¢é&Gƒ™√[”ˇ\0ØWZ(ôYö KÆcí=+ç“|V+‹∆ñÎ;I <gÉ”∂k¨∑ø≥Ωåœkpì¢í	â√\0GQ≈fÈ€IÍ5+ÏU∂¬‚–›#…~¨§aGÚ¸™-j’Æ¡KcÂ∫èﬁ∂Jë€‘÷[Yﬁ«m40Ã]KÇ_-ê9=psWÊñ˙=]\Z_*X∆ınv∑øß•s’®”¥§c¶ß„U~	ûƒM5¬4€º¸q∑˙~Â˛ê[]≤›!é9àâ•ËTû3^ªÒG@íhù≈»o9¢V˘3›∂˜Ì^u·Õ7˛CÂ•ƒñF€¥GÊMΩ~8Æ∫RvK©ãÿ˜ç◊OÉLÇIRué 7\rêyÁsW--!Å¶ùSiõÅÏ\0¿‡\Z±}£kwæµπha∏ë¢äY0í(œ\rì˛œA‹ö˜1®%çù§7Ú4ëÖYy«C˛—≠ÁJKgπ1íÍr;{}+Mi\nl≥|·ê·∑0Â@Ó1Õ|’>Ø∑$d„È^≥Ò;ƒ”\\Œñ∞)Ç8–!äQáœ<„∑•ym≈ç‘Q$“¿È‰´ë√}\rUK§¢ÓP,3H~î¨ªI„äAÉ»¨MMè\nkCÒ>ü®9˝‘S/ö=c<7ËM}pñ\ZEÂ∫∑Ÿ‡tú	Né>ïÒq„öı/E‚¯}∂x™‚4ŸTDúG‘ï\'ÚpNZ^ƒKMNá‚Uñì·ˇ\0¶îa-~≤~ÊN@⁄[9ûïÊæ“öˆêå–*ì3¢Óÿ∏Ó>¶∫/iv“€ﬁùZ„T˚Jª/⁄ú≥Ñ« °öÎæ\ZxaÏçû¢fHå¿ô`G›RæÑgÎö÷§.ı!;#&Û·åVˆêﬂÍˆ÷”≥3ZìÁì#*	˙Å˘ıØ=÷¥Â¥{ànfÛo÷B∆PŸY~}s_C‹xsJ3¬⁄üò∆I∂ƒÁÖ\\ÁÙˇ\0Î\nÒ/âêÒΩ˙√\Z°RÇÿÎ¯÷súTmbíw‹Á4çP’DÌck-¬EiDcÓ¿&∂5ﬂ_È6V%§Ü·$áÃANz0#≠RœàØ<7®…qnÏ∆—H™ÿ‹˛áöÙΩgS]sC∞¥—ÔZ¯àrL√Êg\'ï#±˘S¢°5g∏¶⁄géF“¿˚‘¥dΩ“ôqu$¿4í3?.}kkƒVöÖÜÆt˚–ä—*´nP#øZÁ›Y\\©◊<¢‚ÏZ≥W,=‹∑K˘Æ“ ·ªØ>µQ·ÛnN›˚>,9‘”–8=˛ÇΩKPnï•xSLô|∆÷ÆBëlﬂ0|úÄ}8Ôöpº›áuÅ”|ù?YE‘-˛6Lyq @bGp˙äœ‘Ì|ôã,…í§uﬂh:%≥ÍÀ•œ÷ó≥4â$™‡∆±„#à™æ6≥∂∞éK!qíBÃì~Û+˜aéùGZ“§%\\ò…9t2iÃ†åë≈#ÈJ¨0=kq£äx°óé‘¿pÿ†l`SFbú‘‹`Áµ\0\0H˘S∫ÛHpE\0\'QÙ£∞ı°zú—å\ZhJfèπ°àƒÒ‹⁄…∂iclÄ∏ŒHÎ€≠z.ïc‚Ì¨µ	[≠:ÓI&ﬂ«cé∏Ê∏?ÇöºköÜâ>ﬂ¯ö¿&nûb‰Å¯Çk‹Ì¨ı∏4Ël°ïVH0å¨Éc/cû¸VÒå\\{≥∫êO≠XÎ\"&“ÔbãUçw,,@vO‚QûΩ:èJ∆‘t(]#∂’÷I-Óî≥Lä2ô‰ﬁ’≠‚/ßà¥Òâ\rµ‰k˚ª®2¨≠€ßj›kPÒüÖ…“üRñkp6Ñ›Ê)Ë3“ØGKG∞˘[0<Ack£sôgâXÖ-‘‚£–≠.gåMoôr(ßë‹Z±ß_[]›¥Û©CÊtV#¸Ù¶x~˛ÁFÒNÆ∞#+ef\\£èB?≠xı§ﬂ2HÈÇ=ñÚmSYQµ∑µ€CÂ¸±˝·é§cÉÙØûµ≠*ÔI‘•µªÖ£ëB1¯◊Ωxc‚*•’≠•‹≈l?wÊD‡®˙èÎT>.ËrxáLèƒ\Z|ñÛA⁄€xmùè=yÆL\"P|ì—ñ«Ç(eÁäF]¨Gzvr£÷Ωp#«8ß/ı†å”F{SÏ‚ö√öp9”Xc•\0 ‚ú[⁄õ˜∫”îcﬁÅﬂöÇ†RìH2s@\\B9ÌH∂*O/i:t4Œ˙ﬂ√ˇ\0eΩéG_¥∆ÃÏ\"L∆¯^‡üOjÈ_√ö∂´°O®kf¥Ü!\"¿Û\"©Á∑„Ò¨ÕWƒ:£œ≤:â ‹P¢å|«\'äØe‚z“9“sº«˜Ä∆q◊≈aáß∆ı7\"|Àc-º<L•ÔÂ˚;KÌ» tÁ≠`˘õç#π∆Ó’ø‚?O©∆-Xà·ã∫ç‰„€µsk˜Å‘¬ÓÂﬂBƒD£û*”Wú’^Á\"HJÚjö∏ç}?A‘o4€çB€BÍ¨ÿœ$÷©“5›)bk{eÜﬁF\"mªHŒ27t«©‡›Mg”‰“ƒ—¿œí•‚‹	#πÏ+[’ıãntß∏1[í7√Ãoéç˝kñ5j9J#ï¨eﬁ«jbÑ⁄ºÜL,rc\0é‡˜¨«à…Íi˚ÇiZ<w»Æà+\"HåD†9∆)—í:t˜©±∆u‹{\niç+3cÚ©…#`_¶EXàÄyÌÎU`eàIœ∂)ÖéÛ« 8‰t≈D‰‰Æ>¢¶⁄Ç%Bÿ\'å\n∑õUYÜ\rS∑`K4Î¬´nP:‘úµ∞µ4c∏C.3ûjÏå∂sI+#çŸµh⁄œó84¿È\"e¨«.∆≈e&J°´13ë»œ°¶ÜkG0È⁄ûÕë«„YÒûƒ’ï ÕU¿w&ùÂ6ëH›◊äë_9˙Qpê;—ªü≠+∞8«QQ3„úsUq‚É(<8§∑∏XIüj9_∫¨züßzœi~ÔS⁄´†\\øÊÛ@õ-Tñl‰*E|˝ﬁ¥Æ¡ «µ;w’?3»•2ô‚®Eç¿\nUj≠Ê¥±IÛbòã.	*´À¥ÚjŒ·èZ£t§W•0!ö‡ñ®åªªqÎUdó\rÉ⁄ëfø©∏èËr)íæF$^89®‰êáö\0 ±œJñW˘r*¥lˆ¸iì≥!#<Pdì&öJ»§Á8™Œﬂ7R*ëîå\Z\0}Ã_)¨©!Á÷¥\ZR¸j¥À∏ëå–2ñ›ƒg©´	nr)ßé1SD‡®\0@vHs“∂-∂1u™VËäqí+Bﬁ$=*nÕ∞\0qWñAé∏¨U∏hîåÙ©‚ºM1\ZÖÛœzë[#ΩRçÚ~æµvñ\0u=*Ñ1¡‰û8™ØÛåûkJÊâ¸©Ã:ä¶—0ÌÎ@ëT#E8»È»U·∫dyÓby…ÊòÏe`XÇ˚@ÈWtª9Æ§1D¿;7)I§Æ= ;0rGÈO?:ﬁΩ—naÜI!Â¬B3®«j íõˆúfàÕ5†ö±\Z(n{’ïåw\ZªÅ⁄¶S”5b±Gn’ÆÁ…µ≤EF2Cn»\"≥≠‹¨ x¡Îö’wäkh∂›	\'9˜œJ¬≤ÿÂ‰Ωä($®Û◊8Æ~ÎÕ‘\r≈Œ!\rÄÃÀû¥˝FP0ëµΩπF9^RûnT`/JòB Ëm›çΩ≤{&íª\r\n·‘rªÛÌY/8ÈÅ€—›oªéÄ∏^qYK•2ºg5¨F#:Ÿ˛ÕpÕ¸D`;ΩA®ãC\"6ôÁ¥œŸ_qn¸w4™$‡‰sÕNt∑:iπVå)m†n¡˜¢Q÷„0-l~Ÿ\n[≈ÜÒüó»px¿Z∑ˇ\0Ìı∂™4˚®ö2kÎŒ=ÍÂÖ™«0b≈dyl\nsë^¢b:ûüd ë√}¥	§í‰é›ø˚◊6\"§©≠¥4éßõk~0≈\"ãô$í26*‡˜z˝+ÔK‘<)©€K4Wà2råªÙÍ=yØ\\6∑kv¶TÅ£O%∑ÖW|˜ g∂+1tÖû‚;iL◊v‡è2Y§f\nÁ¶s”ÆGY®˚≈ln¯+∆ÍˆˆVR4b·ÅV˘…,G◊Ω=imv›,krÑÑ0I@∏=z„ä}ÆÅ§ÈMÁ¬êIqdY∂:®”Æ3\\wâ<]Œ™-¶A4pëÂ≤9˘˛æ‹ö√ôÕY\rùfâeóceπL•¢eòŒUèm›á=Î_X”?∂tÛe,À∫2ß<eN}}+Jªí˙ﬁCt°P°©»A€πÈ˘UÌO˜Z|Kßª Z>>e<„æGJÜûÂl.ómoj–6—»»ëÒí9¿9Ì“∫H\">[∆ŒéåwF\0Ë?˝uŒiPﬁMhó-2ïë|∂1∑üZÍ-•¶Ú	X”∑•iM]›ÉeiÓ≠Ì.DUBw√”ı¨/Ïç?Y∏iZgﬂûp3˙ÌWb⁄çﬂ⁄ÁR÷ŒÄ†2dnŒ>ËÔ[Ÿâ|îUIpÈ^Ü≈6‚˛FSW∞öuîvP[¿≈£åá8´¥åv© g†®\ZÓ4ö8ô∞Úd(åé£>µ◊´#DX™Zùã_XÕlÆWÕ]•∑T„Ë∏å[3›opXåç«o¶qM“dûHe3 HBo˚ÿ˝z¥ö\\»Wª≥9];¬í¯}ìÏRI,äÄ>A‹ıe=Ω«C\\ñß†]\rzÊyı&çZ_ıEFtqê:zı˘‚ÃëLåûrFÎıÌ^e‚I-ﬂ\\ππ‹§ƒŸdHŒ+õZJ◊.ú}„ÇΩ“,bå\\Os$çí…qï˛˘ˇ\0=´Õ≠b{ÌWljÃK˘FxÎ“ΩßX∂≥õG’d∫vŸogÊ&N¬†å*˚„èŒºã¬˙•ﬁó≠±FiÁç†P∏œÃ1∆käè7#í˘.©nfﬁ>À©ÅêqU§◊#≠IzÌ≥â£á!îı=*5Œ\ruEZÃµ™≥…C^@|ª∆sÈ]?á°∑π\Zí][˘qÛE‹Lg∞\0~ïr®ßDB-éN:÷’Õ›ˆõy$I FÚ÷60…πXcéGZXÖÃ¨å	Ô\"E˘Ú4lø1«˙’àÕ˚ˆ*rß#$sä∞◊ó≠\'A¥•@Pydç€Ω1QN-n\0Ál|w¡ÌQW\nPy∆‡;t†ò∑a“µ∑@∞ÂÑH:äLû˝È¿‰\naœ8‰é¥ñ‚π\"ﬁ®˚†û‘ØùÃπ‡t®è?7\0ä–”¨Ü°<ã,¬2§…ÔÅúP’µBê\\úó=ÈL,\0Á#5cÀïfP¿é*sº»<Eƒ!bFﬁœÂRÑÃE¡ÂXﬁµ1bI\'©•#é(b`G•?BêßüQ÷õí<gÍux€r∫8‡ZkQl oó¶•Sú◊<Tl„œ=\r<c¿°ïYöFbp‹˜≠*_&xV6Qt«j¥ò⁄§Ùn~µîÔå2ê}O‡ﬁ7FªvÌ#æ¥¶Ø =v˝°uΩ.œWﬁ∞€Eqà¶R\'˘6úü\\ØL˙W´]O}ß€≠Œ≠3(ˆ¿±2åév⁄:ûk\Z+±m%úûTrÆä«vcÍ8ØWª“|3w¢È	5≈Õ≠¨Ò/ÿÓ210√©>πÍ+Ãtù?{{\ZZÎC»o≠Ï‚vÚe~>‡d¡<d=ÛT\'Y@b!}©Äœ∑¶zg“ΩÚ„·Öù«Ö≠m-£∂öÈ\nÊ„q∞NN}0z{W/u·€π•ó√Û.˚IeTí˜p\núcÔqÿÙ´ßô≈Èar¥y∂Ép∑–Ÿ«r`ÜiPJO+∑=HÙ£mS‹‹¡=ˇ\0íõÿ°ë#=çnkvû¸z}îrÀq3´Crÿ/h<xŒs\\’ºr^iÎ0ù\0éLÑ«#=ÒÈ≈v”¨™≈Õ+\"ì“∆ßÜ°ÜÊÙi∑\rˆyeëJ\\7*øÔLgömıªŸÎ7v-8˚3!!‡Lås€µcÀÚOñ“J1˜]é0G£VÇ‹M1Û%ù∂6˘Tr‰˙üZ´´\\L∏∑˛…Ì∂Ü⁄ayò3#É»RyœJ≈[	∑Ï6èAÏkcM≥Kò`ûÊlDfÚŒÓú‰‰„ûΩ}3[V˛NôüuqœæÂlm`√Ü\r‹\Z∆U%M\rÍrzU≈µö‹ù≠òc‹S◊ıúT™w˛UŸÎ&“˛÷ˆÈ.\"Å„UX`è_npzùr\0H>|r$÷‘*Û´≤\Z≥\"ÍF\\¸Ω3€ÈNVf\',y95rÁ»ºEí(|©∏ πıˆ™‰r§ú©∆=ÎdÓI#π`C>Ïw&ß±øíŒxü{yHŸ*á{äu∂ú/!.≥D mg⁄y8Z≠sk5§èÀÜSÇ3E‚˝–≥3§≥9∞\'åı5BüƒqÔ÷ëTÜ¡π†±9œJ•†XîJ6`üZi`iG»;gµ&A‰i‹B/=94÷#<äF8#ö@IÕPŒq⁄§À(\0éµ9ÁΩHg,™§é3@≈êÇ†„”3JŒ\\í@ÌL/Œ1B\0ı&ïz”KÛåqNLc=˝È∞I€äô-ek8\0O•BGÀ»ØP–¸™«·K}Q<©mÓ\"&[TSÊ<lÿœLq¡¸*È√ôÿôhé-|5}\\›·∑ö&ïX∞;¬ıﬂæ*∂´ß⁄ÿ›ƒ˙}œõë¨ÄpH\'®=´†◊§xÙKfXf≥∏XbqºHﬁÀv#p‡ˇ\0z≥aº”ç˝úÚZ´∆#U{`¯ﬁ€pI=≤y≠ßN+Df¶Ôs‹<(£ P≈H9œ5\\›nó2nmÕñ ÚkoÌ÷:u≠Õú√z≥†xdF!≠‰Ù\'åuŒ<•§fleéOÎ	A\"‚€%ê)ùÇÁi?)n∏ÌW,¶˚$¬E∏x‰\nyLÉÙ∂}k06OZrªz~5ú£t\\Y∑Ây˚gµS∆M±ƒylc9ΩiùJ{ˆ‹:»Ò¿—,W\rÚî«}¡‰z÷\r≈‹í⁄€⁄rÅ±¡»\'¶~ºSnnùL*1ò‘aÄ‰˙fπ‹.UÕ]?G∏ö)f∏â£ç#,•”ªdçm˝ûÊ⁄Œª«™M≥iŒ;ëÌﬂﬁπ»ºM®¡nSÃWGE\r¥g$}*iuªçB÷8 g…ÑDrKd¯Ì≈cRùF¸Üö0&ƒs»àw(sÉÎÕJåÑ¶TÅûH4_Csf-ﬁ[r•ª”ÏmçÔÓê1qí\0´±5Àrwe¥ªaÑ∫òŸqågÒ˙◊S·-Jµ+X‰o%baâ\0˜‰qöÁÆ¸=}¶vqµª{’Â—æÀˆ[ôníXncﬁÊ&∆9¡‹W-U	¡¢ï”=Q◊‚ÉT»1‹\0ôƒ6`7∑ÆGJ¶|ywsxóks<-\00˘aàf\\Á\' ÉﬂÚ¨}_@íﬂN˚}ÆJE\ZoRÿ»€Û~§R[È˙¥Qh€∆£2À\nm∏»ÁûÑ˛UÊFÑw6nÁØËû%¥∫∑Ü€ƒô&@ °At#Ù5—G$vçˆxÌÿ@à¢2Ä`{^o\rÜÉsrÆ^(ç≥´çÚŒÃ72Ò∆Nkª”Ê∑ò†í@¨,N>P;Ìœ·\\û⁄1V)ŸìﬁX€jvW-QyÂJádÉéÑ÷<ä≈.$&ƒÓWh¿<ésÌ[≤	¡å°Àdúˇ\0Z•y5’Œù®+[»á…+L$Ç3ËhSßV—ŸìÀ©¿[I§^mÇ‹ÿÀ:KÚ<ßÄß®=πÕPÒ\'ÑÙ∏>Ÿ;;CcpòTŒp¯»\'#üÁI°¯ìM≈’€Íˆ*`·W!úˆ ÙÈ‘q]g¸$∫EÃ“˝ö\0dh…R®∏pG›cÍ8≠]5J“åòπS>baµ û«áäøÆ€M~˛Bä≥æ’Œp3ê*Å‡fæöõÊäf-XEÎÌFpÿ§æı°\'G·xÆu&GåH¿{åÛ]∂±$Ò[*ŸªÕ£∏⁄ÀÉ—ΩkÕ4€ÈtÎ≈∏Ö∞¿÷∂m5ªπ/Ê‚ÌŸœcÄ\rpW£)Oõ°IùWÜq™xä’=‰\0•â˘Go¬Ωö[ßÕˇ\0⁄d˘c˝∫súöo	k	ß¯Ç+∞ˇ\0ΩCÚdp‹„oÎ÷Ωáƒﬁ\'éÊ≈¨!ÿó{êùÚ`!»Œ}G5Â„ÊÂH÷\ZùwBB∑ØpèŒ‹sÉéïÂû#‘¨ı€ãçOPó6∂ÁÀ≤∞aÛ6HÀëﬂ=Ω´PΩ’Æıß–¨Æ’≠º°âÉ 7ˇ\0Xfπ©Õ‘ö¨—‚Q,K#7*W˘cöö89\'´‘©HÔ55–5\r\n⁄È#é\0]ò°\0òÒÙ˜ÆR@≤[\\£¢ƒÈ¥êº†‚¶e[ÌQæ—qZ» Úï\'ƒw®µ∏≠-t˚LJ$ö@ƒÖ=\08´∑NT•kﬁ‰I©+òWÑ…\' Âë˙\n”Öƒ6z⁄‹Kg„\"íêÕÇ§˙ú÷SÓïrëÌ\0gÎLµ∏h&$sêG\\W´“2v,Ísy˜” ÀWr¡;ûîX«|ë…wh$€	ù~øïVôò‡ú‰ä‹≈»Ç+§hhÂ+£dd˜ˆÙßÕev+\\≤˛&óVWmn∆MFR¨#ò C ÖÏÉŒ+:ÍÛ…ºÄ&0´ÊG‰V˙ÁΩtO<wQÿç=$é2<¥é<é˘ÎﬂΩ2ÎL±6)„πìQ!‚Dâ√ƒtÀ~Æ2r’\n…hQøÒ‚¨∂q›~·€,®˘\réô«BÒØ¶ËóØgˆ¥∑y\0íXN	5ós·I·“≠µ.\"∫ç”|Ò≈ù÷¸„\rPfUí[x.dxwåm<0ÏqÎS(§ƒµZ≠≈GøΩ”.n¡±Qq2g◊◊ÉìöÙõoh˙ÖÀç>Kãô~UäﬁxH„µ|Á£j”ÈwQü≥E{gm–H0≠∏c$ıßÂ]∂ÖÒizµ¨ó÷¶ŒŒ8|º€ÆÛ¥úéΩ˝~î£M]‹%&ñágw„yu´ªãV–ÔNïpyıÙ™ûù≠ÓtÀ Ÿ¨Õ-§”ÕÛ∏?”Ò^}©x™	<Qwt/‰Ú—º\n9„Ä√˘÷ùßƒŸaπ∂[Ä≥[EpƒÀÅ¥Ç1«¶sYZt‰Ù)⁄HÎı/[¯V¥’.¶íyÑÔ+]¥{ì\'ÓÓ„ojS„;;“öv´$?Ë•ùƒÆ&P~V∑^É“±¸SÒ<^=≈ï´#YOn#+‘F«©œqœÈ^O®Nf/p}çÅ\'˜´µWºSkS\'\rO@≤“ ¯áÒ\"v¥Ûø≤„a∫sìÖπ=Œ◊|D—≠Æ¨ß“ÌÂH~Œê[\náŒ©ˆ¨œ\0¯≥√^èŸåzÖÃõfdœﬁ<\'∞’ƒ–Í∂ˆó7ã4Wkl±˘b5Y[©$Ù\'æ\\}ˆÿKDí<·v V´êWö‹Ò6ù6ó≠Õ–4>f%E#¢∑#¸+»Æf¨Ïk{≠∏‡cäÔ˛ﬂŸÿ¯≈·∫ç‰7vœJ£wœêG¯∏\0&¶∑∏ö÷xÁÅ⁄9QÉ+)¡ÑÏƒıGº¯õ¬∑ó3ŸKQAbí\Z⁄ŸÜË∑(¿lqÍ;TSÍ#M“ZF∏k÷µTC∑b⁄v™79`1êGZ‚¥πu]r˙{˚çBK€q\nÕy‰»’såq–„•v~#∞∞∑∞“MxWTê†Û\'t∂2∆3éMu—m Ï¬vµéÆàZ|∫î\Zm‹aöº˘Â+∫06‰Ôﬁº◊≈öN•‚\rWTí›•∂l Ú»⁄ÄAœØä÷∞—ÓÏÓŒØbÀ6£à.RCõyÉ#v˛Uù‚8Ïlº7ôäÊP^Ê’\0¡\0ê¨‡Åör§ívCåùÏqZ\'ˆ‰ìÆõµùCJQÿ)ÿ9¿ı8Æ´Jé÷˛=3F˚ ≤õa2^[∂∆2={f®¸=Ü⁄„]«rciA@íGù¿‰~}\ru«¡ö›øâ”ŒÀbÀˆQ=∫ùŒ∏ŒÏÑqö‚ß^Ò5ìV≥9OF’XèIé›µ»≥µyc˙ä‚µ$ïo%Y!0∫±Våˇ\0	Ewö∑˙!öÊŒÌ‡í ]≤yéY‰v\0˜H«∏≠^ÈØı	Ó ªn ıœzö≥Zﬂq≈;ô∞|“\0ƒéx>ïÏﬁ”Ó5-wJYÆ“r÷ﬁl3ÔXŸ0@$ÒÉË:WîƒIπ∂∫x∆Ÿ8°É)»<∆ªOﬂG˝ß,sØîÊ)Ãeº¢{êÈ≈sÛ®ÍﬁÖ8∑±µ„ç[W≥¥H»≤Õq\Z≈ +\Z±a«L}kŒıòÓ¨ßí _≥ô\'\n$1ÚC¯\Z˜Øj2Èæ[—}óh|≤é´æR8œNúuØ≥∑π÷¸@djôdë«	û9ï•Z˙=nÖ¢ûØ†‹Xi÷ZÅ¡∂∫†è·u8*G≠b–W¶¯”¬K∑∏Y.à\"öÔïóú1_Lå{Wô0‚±√’ˆë7hZkwzRØLˆß2ùµ±#N)≠“ú8§#©††tÈHF9Ë)Oò\rËÿß0 Ò⁄Çö?J\0í÷‚[[òÁÜFIc`ËÍpTéAıˇ\0√œˇ\0¬_·KˆtiòÓêê√å˚d`˛5Ò–8œ÷ªˇ\0Ñ˛0ì√0∑Y%+cxD©∆9<7∂ı¢Mÿñëım„ºvs<doT$g◊·7ˆê9\ZÖı‘∑3àÿ/ÓŒÊ]›9Èﬁ2Ò4z<∞¿Ò…$Ò7W«À‹èZÚ?€ΩÏ”ñum.;ë˚π&∆“«©á‘sY’Ø\nt€ì—íµz¸M·≠%/4˚˝0[F#Å\'O1F%?{ü\\ÁÁ>*ö‚ÁQ7Ôj`çÿ®UB}áÁ“æÅ’<)ß:@∂ñÔ+l[/öv.”í£ÿÇp+ûÒøáÏ/|*m„≤í;¸4™≤Qìú˜¿¨¢⁄íµç\"ù¨q˛Okøg±Ω¥â&d;‹>÷\rÎ€é:{◊G™¸6∑íA\r¶•wõ8O, Y\0>üûq^;•Cﬂ≈o;˘`∏P˚∂ï$ıÕ{fèØ›h^Eñ†Ø>ë◊pEìúgÁ^ÿıÊ‚°8O˜l§Ïxoâ|=s·Õb}>ËÓx€±Ä√±¨U‡Û^ÀÒ~À@ªÜﬂT“Ø„öRH´.¸˜ºi∏8Î–î•M9nM’Ù”O\rO=2)≠œnï∞÷ü¥ë«Jååé*Hâ?/J6X‹1“çÄ\Zy SC‹Pë∏“JˆÎMﬁj~I<ÉCD»‡˜†dfC»§û\"+…¶êT¸£4˜ü≠Ω¿|ÔôÄ(å∏¿>¥û ímJÇD0¥n≈L0w‡ç√q˛Í>!∞ÉMÕ‘åëë|≤Ü Ìœ•|˝≠Í⁄óÚOÉ\Zg‰à™èj¬ïoq¬⁄Ñ¢‹å∂Õπ∫ûµ\\ƒ3ëÕ\\x7ˆ§hv‡û)\'eb¨W#x∆1NU<äyÖèäx∑ls˙”AcoL÷Ó0Xâ≠≤>]†AΩæßΩ]◊u=6{b¨”,åYÚCc€˙W:Æ±G˜qÔP K∂Cdöô(…lKZ‹k∞œ 0ï5O”$R“d‰g•4Äê»U9ÏiX1é¥’`±üîOJïf˘Ec°\"5 É∫ú±ç€èFÎAucú”ôâ_îˆÈH/qÿ(\0&£wr;R)\'©¶JN>¢Ñ¶µBÚ2úÉM.wmŒ\rDŸú”VÃw‡ÔZñÌÇJÀ]Ç#ÛœÆ+F—åÅUyoÓÅ“é†—ΩnN‰÷Å`†aÅ8Áµçl€Xu´… «ﬁ¶\"Íπf«8´l–sé˛µú¨ªUÉéΩ;’¯gUâ√FÆYp	?t˙äR1ÛÎS#Ä∏#ö•ºoÎ≈Né:{”È_oAPI)ÔöCú\Z≠3Ò«JbÁ⁄ò_≈W.rH¸™d==≤he‰$ı¸sOäÁ\råÙÙ¨£pI\0‰\Zz±œ\'öiÅ≥Á3úÛNÚ=Î$ »zä±¿lU≠@“ﬁ\0»®¸—ªÆ\rAÊ‡3äàæI+÷ù¿“˚IMG,õá5û\'9√g	O\\é∆ùƒ2„Ê\'µVLì¡ÈV&√ÙÎU[*x<“arA¡ÎQ∞ t¶§ƒ`„•X˘d]Ÿ˙–2Ø›‰qäI&YêÉ‘w•ï’IUd€åÙ†$bîà‡éiår›:“óèj.ªT∑«N‚ö,4Á$Òûh-ä„öE@ç”52!<„öê¬zPñÈ–‘HQÄÕB°ÈV#å»G®ÔR<≈‰vÎS[[ŸÙ§∑çïyv)„èj°R\0#®´H∆<Œ;\ZéŒ>U…†∞œ¶iâñÃÒ»!›¥8¯˜§c≤Ü„∑ı¨˜p\Z•Ö’òám†)∑qZƒÜ&ç70\0t$,ax‰ér4“Dﬁ«$«•Eú`äù’ÄÌ÷˙+ç2KWﬁë0‹Ï«;˚Ä\r`<qbE»Rº$yÁêsM≤÷\nGº—âp\\˜¶‹Oõò@	9$„‘ÙÆzt‹\r ¨L2ëúÛ»ˆ´a‘„®<}*íÇÃwqÌV\"bº]HE¨séır›ßéEà:≤Á‘˛MYv_ÛÕXµª6‰2∞»<©ËE)]†+ T±•∂Åô‘Ï$gìÈZIb˙ä√*F†∏%∂˚VÂçåqÿ†R|¿≈I∆rΩÎû•un£±íZ”ÏÍ≠&[ù≤ØP=˙‚∞n-$ÚºÁ|Çpß®œ¶j‰ˆÛG™9ós[≥ïF’\'πWÃ.˘ã?w‘˙”Év∏“πá,*A„Á≠7|ªA€Ñ^É<\n‘0$“ŒU◊‰lN	ı™d,r2∞>¬∫∏ö\"Û¶)ÌäÌ4kâWIYﬁÎdäŸX/Åè‚«ÚÆ7*ø2éΩª—’ƒ∑Ÿ›óq˘îÿ˚Vui©´c≥kÌV6£v∑∞¨`FY¬úc®©Î÷≥u-yﬂHñIíTí9˛R–é3÷≥t≠I≠Ìn⁄H¶5˘ì8|◊)s™]›€ Ft Ä˝=~É•r™-ª[bπç≠]Cgc%¨ûaÜYá»‹§cæ1L∆Ç⁄É\'uIÀ¸õ…<ÁøµAkyˆ[RàfçÉD·FpH«~ïÈ˛6¢¬{©êGÊcŒI=s«JŒ≠° áπ5ñãtÇ\'XÒï17ÕÚgßOÂV•”\rî´]€‰Ã.Ö„ú„”ı≠≠>È¸¶`•\"DﬁIR}A≠7X‹$≠¥m9‰~ï«©¢–©`‰¢¿‡+†‹ =*P∑‰ê\Zπ?>¥È°As‰∂Óáoq€ÎR\\Còedª√7öΩÿ2úí⁄YZ<™UdXó9=«µ©lÍ–°\\·ÜF„ÕQ[;y-V¬∞%Òåü\\’à±ÑÂÆvÄ=Î¶îöíhá±w ‘S[¨ 9* rzäS˚µrÃxß3ÑOå‡uØM\\œA¿`ú„÷´ ÷ˆK-Ã¨±°¡v\'ä√õ∆6êÁ}¥È”∆–‹ˆ=ÎÇÒ\'âØ.†,ósfó∆Xv‘Ï‚ıÔ±ﬂÍ⁄ƒWv¡tÀÑô÷PÆR@°Olì“º€Wûw7M!k{ë˚ßÜùùΩxÌÅXˆˆ∑€eºﬁÒmÌ$ Û∫ª®-%Ï∂€og}∆R√;2~ú^>:Ø2⁄÷:ihùŒ\'≈K4>ø∏º∞íeÜ(Aî7ÚÃ;˙Wõ¯r…Ô5êÄÀ”\'ûïÎüÔ,”@äCE<˜\0∫ë\"®89ˆ»Æ+¿Q¥kxÌÂÔ.¸ø~0£ìû√Ê©°/gár\ZÍŒÁ?jîúgyŒ>¥ã«z±™¡ˆmVÍÃÀÉ‘`’aÄ\rwßtôQ#\0	yË\rNì3b.£?(=çW»\0ı©JôîØj“g;‹{g.†ñÓOz\ZL©$s÷í9Œ1»ı§`œ T^\\„•\0≈BƒÅìJ¨‚ÜŒ(‡SO=)°ãì“êú˜\"ìv;ÒA#9nÇùâºÛ˘’»TÌ\rÄrHÏ*®*9ÉﬂΩJí9\\*¨9\0ı©êÕG∑º∆ÁMÒæ0˝GO¨˘-ÿnÕ”ˇ\0ØV>ﬂ,VÔ‰ °Jø?à˜‚£[yÊIÀbëå∂OAY∆L\nm√0Ω*e≤IÊù+®<\0™:u¶D[!AÎUæ§ÿôm‹∞\0ûÑTèãµõ$ê}™·Õç¢)!ûSΩpA∆>†äË˛À\\É}r˙£\'»õ√Œqéﬂ_Z9¨¿‰…Ÿ\'ü•5ò±˘xÌOï˜ÄÍ°pGØΩ Qò)	¸\\t™Lõ\rE…#4Ì†´úˆ≈1	\'Çi»ƒøˇ\0ØCm\0äÌî‡û\ZËÙ+øµ€æîË”,í	É°Èê?ü“π˝°≤pG8≈1$ö÷dûﬁGâ‘Ç•N¢qSçãN«“~ΩhÏ‰”uI≠6€Ä±ˇ\0;ûáûı«x∑√Zæ±‚+´ù0…®Ñ›DåõHì!J`wËsÈ\\7ªhV“Gƒ+Ç∆ˆ»‰‰ûz◊ao‚IÔ`]≤$Ãââ\0bXå‰{◊ê’)Kô\"€LÛ◊∂‘Á[•±éÃÓ›$ëœÎO]:K,#!ô>_%∑mÔû+†ô·”•kªxLªøwør8«|ˆ5Ö%‹∞]%‹8W‡{zWtjÕËëùÏDöç¬iíÈÆÏawû	ˇ\0JüG”µJ⁄ÚKHhÌS{ê’Åì¸Å¸´2w7WD∆Ö˚®Np+[A◊Ø¥;MNI§çÓU’S!Ä‹>ùki&£xÓR’Íj¯Z„JΩ“ÔÙÕWQ[Gîf⁄FèpG\'íæ\0?•dæ°®ÈÚDØ#áSìíÅI˚ß”ìX±ƒ´∏∑8Ë3VÌº≤˚¶Üq∞û\rTï˜ÿñ«yØs?Ã€∫úì[ˆ⁄5Ã\Zh‘\"õ|SFP¢·õ9)∫¯VñûSFRv∂}ÎF–ﬁDÏÛ⁄⁄2≤»ã&ﬁ3Äqﬂ“¢ß√hÖá•ºÍ,ç¢|_0Î˝{÷ªº◊Ùc‘èz€ûÓ⁄k)·$ßî˚Ì√Úÿ?√ûÿÎY„‰aíƒ1€µ\'xÎπ-2(_kåˆ<˚èJÏ,/tõõYa∫∂ﬁâ †31∆èP8Î\\aW¡ßôX™Ú£«≠MJ|Îq≈ÿíÍ!ˆáXW+ì“†\\É÷Æ[]¨\nÌœôÅåt?ZÇcÊ≥L1ísÅZE€FœnˆÌµ˘˘C=Õ@§dıˆ©D¨r™«ÊÍ*269«#‹U‹@¿!8‰TL‚¨Eó3£BÓx\n9&•Ç¬‚‚Ò-îlî∏L7\'÷Öv.•\"á∞§…\rÔöπe>ùy=¨·ñHd(‹qêpj¥ô·¿∆E1ç,›3¿4•…∞)ÑqﬁÖ«J\0U q˘“´`H@ÔöN†”∏Ó˘1‘W—~	Ò\\∂~—‚íÀâcÚÌ∂π&LOnA˝+ÁΩ¿⁄µﬁìßªx⁄Ë@éR\'C*¬ŸÂˆÉÚÉ¿ÕmE&Ï—∫W„õMVÍ)ÊAq5åê»∏)#û0\0ûúW•Eky)Ü‰òÿ!%æù´“§π‘µÔ\r]O‚x≠ÓãamÆ!®Œ7Ë«xØ6e&KÎπ\'i^9rÃ™\n≥úıˆ»5µM˘å·µájvQ1S\"ÖAÑë¸Á˛|V-ƒiÆ…<¿FN0}+N⁄÷ﬁˆóëÊÛÄVÜ%1\'Ê\'€ï)’Ãp§∑∞«0&##‡6”¡ÙÔX∏7™4M-|∑=È€π<T˜vÇ“ÊH“Eò!¡t˛µE( ∞\rÉ–÷MX¢fvê)bÈB:§Ü˛ {‘Ê5û`ëƒ¶I\n®x…Ï*õ¸§©‚≥çåÒ”“¶∑ù≠ﬂ ˜‡äéDU⁄TÓ¸çFŸ\\˛¥Ìp.ﬁ]Gw)eÅbR>ÍÁ\0„µ]ˆß˝è®}§@ì6›†;`c∏?Öbr)I\'©©pN<°”πÍów˙e‹‹¬≈8dS8q#™É…≈œ~êÜ˝·i$VÛèòv≈al∏úÒ÷òÕûHÆzX^M.7&ŒáOÒ€≈õu|Èb_.·72èÎÙÆó√\Z¨(ì[_º∆)1Â»ÏèiÁÂ˜Ë~µÁqW≠Ø¶àÖW¬Ûëû÷ï|$fùá¥ı=üBWZŸ[;∏¨∂¸è,ÉCÜ/ß„Ë+~∑xRÜÖkã+ôwEr§üõf;t<~5„⁄^≥¯‰∫àJ#lï/Ä˛üïz¥\ZÂ¶ç°±]@\\	£‹ë≈Û…ónx≈x∏å;ãQf∞íπ“Í⁄¥ñË-0|œ+qó<ÄxŒ+\Zﬂ_î[¡i,§	‘ﬁ¿m_\\üÂ^Q™›ﬁŸjÂµ;˚ç≤H¬UÓê lÄ}ÈÕ‚Ñ,—åÕ $J†±P1∑⁄¶9tí]FÍ#/[’>Ÿ‚;À¶åŸ yI¿\n8„ÚÆõCºKõHm§î⁄€´	ÄH˜œOÆ9ÆP∏I/‰xwàãÓè?ùv^\0ä«U◊îﬂ,Õ(õ\ZÙÎPQ¢∫XàÀS‚5Öïüâk7√wÃO8›–ëû«ÆG≠zg∆≤2ËsŸH¶)!ìj*ÄC:w‚ºœØ“ª0r°L∑“É“äSäÌ$P{÷≈ù§F@≥íI¨\\ÛÌ_GË\r–ºO‡M.]È‰ñ»L»£p#É«·˙W6&Ø%ópäπÕx:k-?BäÚÚÛO€¶#–Ê@Ÿ» ˚„≠[ÒD˙L∫sﬂ2≈-—\\∂FUâ9\n1¯S|_£ÿYi,∂ñ∞ ∂î[∂Ô.z‰◊jí…\n”A™òcrK±<m’‚Œè<˘‘éé^]\rÌA≠Ù$é[yWÕπo5ñïì–w¿V\'äe?iñi¸¶ªl–6Cåaâ>πÊ∫®¥]\'Q˚eÕÃW€¨{°Ú∆@#9>¸W%≠ÍpC–⁄¢¥≥∆ap@;∂≠<<πßdµA\'•é^9&íU?(;òÙ©,a∂ùf7,˚±Úm$ˇ\0ÖG´¥©õœRp:ı5°sas∆h∫Ç£ˆØe¥¥1,\\y∫ëZÌ∑@3µO_∆πpz`äŸÇÒcπÛ§∂Yï–°C«nøZ»öO2F|ªû+ZI≠…e∑X≥cq#ãù G\0VÔÑ5«“£‘mR ;óπE*\\ÅÂï=y˙◊0ß#8ß€2âFÁ+«QEJjqq`•mOB∂ä‚ˆIµçGQñgËë¡˜dì†F=∏¸ÎFb6∞BÒ«m<3ÇU\"o,ûBéôÔÙÆOΩö“Ÿ£éÂ¬À&„éÑ‘˙}Ïëﬂ¡<íHy®fãìÖT{GN6àr››ù.©Æﬁkö›≤∆#2≤˘3yp·cø·…©ØæﬁizÍß€cA!-äz0∂üNºz◊Kkÿ‹›¯ÇŸ\"ñ;†LIëΩåØ®‚Æk⁄Æ£®Ë∑±ﬂÈ—Z‹ÌGi÷N\nÅ…éƒ%R¨‚•∏¨ñÜâ< ”hRj\ZMÍ;Elí…\\yŸ?>}ß¬‹Õuu§∏Åï7(Ü‡ï9ïlK‚=_Jf∂∏øéA<[E∂w&«†˛–÷µ˜à¥9<˙D”F”Ñ2ƒÀ˜	ÓG≠t;€ﬁ‹Q8(·éÏ¡`±EÖ≤n$|nœ@{\nÜÚ kfô´\"DfNG>ı’Ëû“<HÀæ•,r¬Ô\nI ÓßÓÁ‹zWyØiZ¯Fˇ\0OK5é*∑3,;ú@GÃ8∆vè•mN<€ì)$xhôÇ„°ˆ§2◊∑J±})ππ-¥\0†\"‡¿«Û´W~ºµ”Ì/3–-Sû\\˙T∏Î†”–ß‚3ìÂ©À0ÌZÒxØV¥µ∞›»m’Xnü0¡¨ï¥∫éGO,Øñ7H3–z÷ÆóßÆ©v´yt-ÌÇ2¨¡2Åê£‹“ådûÄ⁄kS*˙Í‚¯§∑7/4õBÇÏI\0tH„◊•u\ZáÖ€M∏{}B‰Yñ¥˚D&X…8«»ÈüZÂ±“âFKq´t~∏Ë(9§œ“†g]·µπ:U√AR´1Ñ«éd»……Ì¿‚ªœ¯V‚ÎWXØ íM8ïfYWv‹Ì9Ìëä‚æ]¬⁄‘öEÃK,zåf%·…å©œ·˙◊πh˙ÌóÜÙ{â†ŸøeúÌ*»¯ŒÁèzÈ¶ﬂ≥˜w1ùπµ65?Y‹ÈâcKuî1XÜ\0<Òé‹öÚøhó:•ÉiPY3›ÈoÉ;?ﬂC”ì¿^ºz◊_„[ÿnÏ{cÂ[O*«5‡õ‰L	¡È\\lˆö≠÷•=ç´\\&•wíWw€—)˘Y}±üŒúe πg‘O]Q i∂\ZØÜ<Ua=›üîXÄí#d!„Á˘O8ÒÓj˚‘6Ò\\%ËYØ$Äè(ê~P@«\'Ú¨ˇ\0›⁄jñPŒˆP€µñ`º.7ø›⁄†LwÆ^oÍ~ÒùÌëå…0à[º|À\"„πöäIÿNÔSÜÒFô©Kt˜◊në…x€Ãl~ÍÓ⁄ø·ÈPk^M*ÿ°æ¥∏xB≥≤|Õ‹}∏¸Î™¯ë†ã+Ÿ\'TöÒâ˚9XG|Ù$ì\\˝˝î∂÷·f∏@c\"Äg$zÙ∏q-)zõBˆπ<^è]Ÿq¶E∂‘Ä™pOÔ6W◊ÆyÈVtÔjû∑õTekY‚êBm‹2!˚«ˇ\0˙’’x\'S◊|\'·9em$ÕnÛr1WA”pÂ{WE©_ˇ\0¬e•€›ZŸ‹§à¨$Ö¢ éÔÈX’£ÌiŸhk	Úª≥√W∆∑zSRπ\n¢à‰Á¡Z»—¥ÎMSS’µ,[ñöb}⁄†/që˙◊™iópZ\\Ãaí(‚»eU Œ>ùÎ—æ¯kR“¥ËÓn¶6À∞lÛ	;≥ÉÄ?:Ú•zPqπvM‹Ê|{p˙çÛ€OÖ·çv√ˆ„äÚKàº©›}	Øß¸A‡¯µszÒ≤F≤Ï˘`√ùﬂéM|ÎØŸ¨\Z•‹pªJê»T≥x8Ê∑¡T{$bÇsÌR)¿®ÚCSó ˇ\0JÙH¸\Zp9Jq\0Éä`„\"ÄbûE41ﬁóÄÿÕÊÄ\ZA¡Êúx<RÉœÁN‡3Õ\nÿ«•*ú¥∆ÈLLË‡‘µ=_ ∑ñÈ‰1®ç7Aûu>≤ör.ÿƒÑ≠åÇÎŒ0=kà–u¶Î6∑/Ãj‡H0 x=k’ÆnŒÖ‚k¢ÎIÛvñI#ÜËpk…∆∂ü\"Z2·π°a‚m{J’mdµóÌ∫;¶\r±OôF¡ÓAœJÔlu]6wök∑ç≠ˆïéI:Ì¿·Ω˘¸k?Wø“€√LVÒ¨ß-∞Ä\nÁ\'#ÎöÊÙ]6Ó˙ÓBcUé(’[Û\'dw<WòÍJÀ»ËM=+◊\"Ü€≈WP¡	14¨HÏOØBV∞∂÷≈gíhäÄ—Œîû3Ïkì¯ág=èàR‚X T0]•v‚µ<3st-&∫Å-º¢ ÌlÍH}S?JÙjKöôÖµ‘Ëº{·ù\\ækª -⁄L¨ã*Ìpﬁ^£µxTi§â˛Úí+Ë}Q±ì√∂◊Ài%»AºQíÑˆ\'Ç1^3‚˝;…ºéˆ)|Ën◊Ãﬂ=¡¸k\\&•GiÑ£±ÕØ›≈Õ3%Zü‘\ZÙà\Z0;‘Äw÷ö®©∆)‰ê£“ñÑ±Öà˜§√#q◊⁄ùª<g§gúÙ¶ ,1ÛuÄ¡ÈäF¡Î÷ë∂[òÏ<únÕ\nÛH™qC»¿§\'©Ïﬁ+Òmﬁ≠	≤§C˝f;±€È\\4âÛdZ˜ëïoîf®¨lHÔ\\‘‚¢çJ∆X¡#öTÇh¥^jÖ#ï≥8€éj¿üD“\"’u£öo*‹»¯…ﬁ¥<G†Zi\ZùºK:˝ñe≤s¿œ5:|∞Xô!∏à˘‘}Äı¨=JyŸÃR±,ù≥úVNÓJÃEk£\Z‹Hë>¯’àSÍ*\r†Åœ“ëI∆ßÄ0#ÎZΩâ—ı;∏®Yò0ÁåÛVNº‘AI\\„Å‘ÊÑl…∆p9ßr~Qì˝)w^TÇ*X$D‡íNF)7dó „•XçÛÉUô\\∏n2Ü9˘s˛–¨˘ÑXB¨y8Õ-¬™®⁄r{öØù‹Á•L´ÚÂè^‘ E)F„∆(‹≤Å∏`é‚¨º;°`p∑4ÿmöÊF`9ûµJjƒ‹\"Ü5âŸ€∞ÕKm*#!\rœz©!bª{Ê•Å#<\ZiﬂQˆÏL{‘ÒúT≤Ô¯\Z•lå·˜GSÈVÜD<Ö«≠b‹\0	?)≠kÔ-X*°,∏˘ó8˙W7§7Ãxˆ≠ò!ëÏ‰∫Gå$EARÿcû‡zU≈7∞ãÔ0ê¶ı\n£©Q…†8#Â8ıAe/∆‡3ÎMi∞:ÛEÜXöMø1#9«Z´5…\0+ÒÈäß<Â≤3U§∫y$» \n.¨\"˜ûKÖ^OjØ,˘bO•WÛ@Èü≠5ﬂs`ı•q•Më£øßµ,eF$d©\0\Z£4“,{\0⁄áØøΩ:ì˛ˆsû=j∑ZrkÇ∑Q¥SÌÿúz÷sHŒ€ô≤«©ı´p»8Áì÷™*»,k∆A&Ü\\èONj¨r‡˘\nü~Ó;’ÄÚÖ∏&°!£Î»´û«≠mÌL.Uïˆç¿‰ö´#Ó‰T≤∞1TDçÊrqÕ ,∆ÁÖ#ÍiÓÌ„°¶¶”\'un¸P2º≥Âà<`‘O ‚ô\"ç«4å~BA…ÄåKáÁ•KÊ+é;U‹¨8˜5(@TÛ@3¸ÙÂf›Í*4‹«ûß≠ZU\0\0iÄ‰sê*VêpΩ˚öÑs≈.CZñ÷B=≥V°¿b@™y¶éLÉ“ÅÌπ1“•ﬁUáU(\' z¥≠ºä†6tËZ]ÆH…+º3éîÁ	‰0‹É†œı≠d[-	lÑd9Lª8$˙èQöÁ”|å ªé’,@‡öZoqu±§˙z∂ƒÖ¸Ÿ˚ΩÎY≤)åÚNÁOKè-7£∞ì†€«ê®c¥ﬁíl,ŒäpzäÃGMV,P„9Ë?\ZEmÆKÁ`8b9≈U¬∆º÷≤√m≈J¨´ïœ•Kn9W·áPj‘\rm%º6w7,»1 ëŒ¿´¥‡èZßg3‰I\nrüƒOOz 59Æ6¨hΩÉ@ôö=˛jí•O äÅ`o/råÄ9ˆ´7s§»TAl£gøJ≥\rÑ‚dî#\réΩ3Vß°&vA¿∆‡”_8‚ñtx$!Ò«¬‚µN‚5tÊ∂π1≥(FÏzÁ´≠MœgTäBª;N85Á±†yTí…=+Ø±≥ÇÎOEäi°.H_-≤T˙ê{Wùåä‹£Z∂ºéYRˆˆ9àmÿCÅ˘V\Z »~VœrÚ(\"ÓΩ ¿‰˚’b$çÄ ´§r1]4_∫‰f%âÁ÷òó»Í:öé‚EéBú‡‘Isá/ 02+{à≥$™…Ä0A¶Ã¨àeI=™]A\Z%M Wp®OP}=k\"yÂf√d/B3“íw•‰Æ}[û¢ü´hMmgÍ›≈\'ú°¸µ8*≠0°hå°r™@<”f)s	òŒπ\0c$˙‘I;Ë∆âm˜øf∂¬âÇ§gí˘Î»Ì]~…`í;xfÚ‚T˘ì¢±Œ1¸Îå“Ø`µ∏o7v|ú\0{}é\r_É≈∂Ò†˚N˘f\0≠”Ì\\ï¢Ô‰i∫ù¨Õ}oh∑Çˆ“Jƒ≤pÉ‹v”h:îóW‰KÀˇ\0v´—AÁÈÕy≠å≥j∂&UΩp¬màÄ:cØDÕúÕp÷7Ryë8º∏!≤:vÆ9#ToÎWØQ•ªbfl‡\0N1◊åWw„õ„d-ê!∏$Ìv#ÊÁæ:qöŸÒ>†t•yñ\\»õÃÑùŒ±‘\ZÚÎã…mµGmÉ8˘A9˙÷‘aŒ€3n⁄üe‚;ôt¯ñQs#ÏìwDˇ\0Îú÷æï}spÂß) ^	ç§Â^Eg{qˆ“ÜIö9LÖ∫˚W£XkmbRU˘ﬂ)GD˜>µs§°±/c¢≥Ωπ∫æB√d@F”ÛRÍZæügxêœ2âX`Äÿ {’k˚› •∞h&$dÎ«z…÷t+[	≠noLì´ˇ\0ÆëéKIå˛\0ÙØKy´ÀC&b¯ß_\Z•ÃVˆ∆-ê∂cd9‹{eq◊⁄ÆÍûÅÌ!‘E√3Dâ∫ŸÜ¡‘ùçrÚ_⁄ŸJ. ›–ê‚A’W∑Â“ØÈ>\'∞ºé{;ÜÚÓe5≈”ƒÅåé~ïÀçïHM8l\\6:}˜H±ÚmüO›8,|¬ª∏\'ìì€•P÷|WßGØ‹€F\'ïâDôt˝\ry∑âµÊ{≠ë6«„ë£ìr∏Œ8Æ:‚bŸÜZÁ¨™W¶‚ˆfêçô–|N◊ìV˚\r•ºûdV€¸¬£«?ARxBKãmÇVIãªØñ0WÅ…=O“∏}N‡À3&“π ∞g“∫tø˚A≤[¥…‰@´\"Ä8\n9‡v\0u¨gIS¢©õ=éCPë¶‘Æﬂ{¥¨KzÛ÷™»ÿÔS\\Iô§ëæÛ1?≠Tf‹söÔ¶¥BìÂV6+*∞Í¶¨â6‡ÚEVáT›¬ÁìZe⁄	\n•x9ˆÎäU$ì1±ÑK*FÑ1q∆?≠V9PîRr#Ò≠m5·µL}†®)è∫=A⁄®1E[Ç˘ƒ¨\n|Ω@ÕD]¿ÇmÜ‹Ä≈∫“™ìÅ¯‘≤6Ä0q…®	È[E\r\08\'ﬁÇÃ=;Sz}i˘ﬂÅÉúU4\0å6ï€Œr\rYÂ\0T „„ΩUâÜL÷Óô4Q^√±ê~G„ú0}y¨™;]!˚f-û†\';}r)/u	Æn&ï¿RÏI€”¶+Ωº≤—5-6 ˆ⁄·öÙ- (H@‰‰d◊%q·˚î”\'ΩkY≈/ñÚgN:cø‘V™)ÉFqΩ˜å‰R∆K¸†úu€QéOcKÁß5’m.+ZÑö∂¢ñ»õä¸Ï?qynû’o]”Ùÿ,≠nÙÎì\'öJK˝‰aÈÍ:sSi∂Ë∫K\\F¨¶i<ëq;‚¬ÂÜPA«‡k!m»îÔ+¬íŸ≈sJ¸˜∏ö,ÌƒíÓEıOéúP…#ï-èlˆ≠;]^Ú ∆Q¡AVái∞≠…¿=9EiËz=¶©c/ùq	ªπ‹÷—£|¬E‰©œ+úv´U,Æ¬»Â *Ô∑x+–”\0dk†oKmƒ“Õ¨p¨À∏„y8˘@ı™ÒxrÍm.\rI\r¨≥˘!∑åÜ˜qÔM’ä‹ñe¨•TÖÒ1~•u?åE&£iekz\ZY£-&ˇ\0î+xºY7⁄CZ∆ÓÃT†√+ŸÈJû\"vB±ñ±	‰m#Ω\"<ú≈#˜N+B⁄‘∏@Úyq ¡ÿ˜Æá˛àm ô§ïñπÉ&LÇá‘åÒÌZ∫ë∂•§ŒRMNf*Øüî˘ı†\\	9»9cTÑMvÿ]Éh(;êy˜≈g4r[í»œ4„µt\r¡2s∑kc®¶ïdŒ2IÓ*+{≥ºûGqSC3æÌÁjm\'8‰üJN-ÆÍ‹ú‡˜µ©§ﬂAi*õÀd∫∑Á|Lvñ„å0‰JŒÍG4÷aJKôXoCVŒk-ÚG\'úäe&\06<‰w8≠ãÌKÌNí3;,õygÜˇ\0ÎW)u`ÿ¡»Æé?ˆ+iíBÖZa0ôèŒ¨√ú‘˚5{í‰Xú…Æòo^Ÿ2‚ŸÇÄ\0}ºu≈s◊vÎjŒ\"óv÷+ëWl•cs,“†ôrX¨í`3v8ÔSÀm\Zå∂ﬁX∂ø7öw„å‰\Zà˛ÔvR‘Õ\Zn•$am#ƒë˘åËªÇØ©«AU_Ógåû’Í\Z∑ÜRkdh[ò—ôSÊ‹GÌıˆÆ[ƒz≈©O<V≤[Z Dëâ1¸@q”ÈWıà^œAr≥ñBÃp:”ä4|ÛÉÌM`Q€\0êΩH≠+ãÎI¥òbÃ/é˘ãÀÿZ9v∆jd9«Q»4Ì€ü9…ÔL\'-«§˛,„≠Xãºq]yÅ[f}pkO[π∑7©%•Á⁄ƒådÚˆ2∞*.µär:û)‡éÉ÷≠I⁄¬jÓÁQs™X^i≥ñyZÂ‡çò†ù√©¸ö…Ö¨ÃF	ëædîˇ\0g®€éj[\r\Zk˚YÓ~—KœëŒã‰\r£ø#ı®#¥{¶x‘Üuå‡úu§„$µ’ÃÁçëè ˝)£¶qÕYí2\'Mº’Yyi\'r∂≠»œ≠!›ŒÈ\0<‚úä«\n2}MR™¿Etzäe—¥[˚Ñà◊Kè22#∫íáÈX&÷DÑJ¿\'Ç\r29rnÎE˚ûÚ‚kú<≥<Éèæ}±˝WSÛ	∆*Wõœ#%@‘∞ƒÇAΩœî[G\\z—Ã¬√Ì¶Ú‹πhî)˘á<ˆdj0\\∫Ω◊õ,ÇMÌ4éXı…‡ÒTHT‹F=AÔR€«#π∫f€Ÿ>\\„;xı™åŸ<∫õOîVõÃ—M%—i$DBú/†=Îñe+)˜s«5©g5£#$–<í8p™9é6‡~uJhß≤∏‚)µ±Ü^3ÈU+Àﬁ)i°yï’ ∞ËiÊÁìNë√7\0ˆ’r§„Æ1YåU,Tˇ\0w∏†úú∂MX∂∑i˜ ™]âË=Ωj)°Ÿ#\0I^°±åè\\Q‘€8ÔÕ5HìëOÚŸpH„“Äûº˝)àì1ëÑ\'ØzVâÉï ìﬂ∆X’«óúcê}koJ”d‘mexY~–ô&Fb<µU\'û;–0»ZPz\Z6ÇÃ«\'¸i=Fh¬J FN’s˚Vo±«lH2J∞·∫Á≠f«ÇHÁ±ÌQ*qñË\r;çJ9√πá6	m‰ÛÎÕFóO±ﬁzˆ‰\0z’è«Ä‡Éö4ïÄª(IÂr\0®˜≠O\rjñ∫}Ã–^¥±¡:Ìgè±Í	≈aÜ8„èzB§ääîî‚‡ˆ\Z/k⁄¨˙≈“À;áhîDÖP((ºèR1Y@◊ÉSmœ◊	ö∫PPè,v\Zaús@Á\'4∆\\ëË;S«≠¿:◊–øu{[øΩ≥\0ìiÓ ÏÿÂÊ÷æyË?•zW¡≠E≠ºGwf∂FË‹€ú\0@€∑úú◊ùõSÁ√7ÿ™n“=áX”m|Pâï°{vÊ]ºIê€ÍFs/•iˆq‹DÈ,.#0 G¿˛£ö◊‘$∂‘u>ÃÓæCàﬂí§J8S‹÷=µ≈≈Ôà$µπñbHyH ‘~uÛte)FÃÍ{\\ Ò∫∫gáôk‰sîí≈Ü„ú∑JÛ-BöÈ%∑ﬂÂ≤Üm‹ù›˙W∞G©ZkpIß˝ä/¥†êyåy¡å~‰oo<wk{›õ#ÂOB+ÿ¡={3	≤ç¥%Ù*Ã6íp9ÆÔR´hww-$l±$*Íˇ\0ysû†˛U∆Egµ#öa ãÃ«À¡œzÎÆºE ∑áEÃ◊1Gü-3íŸ‡Æ¨Cü2p{3óøi$ï†∏µX∂ ∏\0™±œΩkûñ\"éGn’›ﬂ¯vÓvóPΩ +®QÂcÂ t ı«L◊xUÆX.\0wÆº=^e°à©g ∂é·∏Öõa~∏4YE∑jìnŸÉ ’p‰dÅÈVl/$≤ºKààﬁ8‰g ˚VÚø+±*∆Óè£Em,ìyëlY@˘G=˝k†≤æÇÛNÜ≈l†ÑF·‹ÅÛ 8 èNô≠k;´6çO‚i°20ò`)00;ûE,∑0çVÚ˘m;•	\Z€)*#nzn+»çOkSﬂ—ZÀCW√ZéÇtß∑ÚnR¯;Àl…	€ü¯2=´Sƒ”√®¯{Mx‰ö‚4ôº¬®6åÜ<‰éûıc@í=7Jv§E$Ωpø2ûrŸ¸kûª÷ÌÁ”n4mF˚≤e\r∫‰Ü»é‚ª©cÈ)˚5±ì¢⁄πè‚èÜÇe‘¥x.n h’÷	»/\'s∑¶0}kê÷d∫:Mæü=¥0-≥óTU˘˛n†ì…«‹¯áYΩñ 	<?y®∂ü\0.<«ÀFÉé‹Å€5Á~)ªö˚Xkâ<≤ÿ\0ºDê«ú˙ûµ›x 7[êÆ¥fÁÄÌ.cÒ<í*≠ö°Y…	∏èî˛5hxŒ]*√U—›ZDø\0<â1;:v#9‡Éˇ\0÷¨=.˚R≤±}Nÿ	Çè≥øò°Ç”ä√ûy&eÚåt™Sj$Ú›õ:ö|3‹ﬁj6fÍ%BëEøhﬁzÏ+≠‹vZøáuXuKıÜ‚%X/ôè$1$Ä;≠y∂ÊP1“µÌÆOŸÊì§…x¯ﬁr8>ºfàK]BHÎø∞‰’`ﬂc\Z_]¨{.–í≠ª8VøùSÒuÖ…æ∂T∂∑¥ö8ï[»DÖHß•A·ø\ZM£Î∂∑:™K5†å∆ÿˇ\0Xé™}AÊ∞umVk˝RWKô&éIX!ºTúÄkg8ÿòßsµªÒbÿiÔg®,\Z•ª[»∂w∆!Êá$}‡z`‰~ÊlC»«#ìû+®“,\"æπäŒ˛≥0∏˛Ì\\ŸıŒ*ËﬂŸ≤D±ÈÚ⁄òKE3ñ‹Æ·é?L¬¶iŒ7*-\'cõ#±¶ß4˝√øgûzW5Õ[]KguÃRXò:t ÊΩ-^\r`õÀ»%}BvY!í)∂ùÃNF—‘ÒÅ≈y±\'π·Õb\r\"s4ËÃ—‰∆‰˚˛Uµ*úÆ∆u#usπ¥∏é[Kß∫ëÖÎA}F.I@Óqå◊oie§^¯˛KGñ°≥ÚÉ4Ã¨ß∏LûGNΩxﬁ≥ˆùB‚ÙOpnn»®√dd‰˚`VEû°wlê?òYÂ€¥˝OCJ§ó>Ñ∆.«“\ZÙ:/ÖdFE∫åJT ±À.Fı∆}:◊¶Ga%Æ•‚=>sô gìz¶\'üc⁄∏[MB÷÷Ê÷€T⁄dtûvÔ5s√q˙◊]ƒùiöçç§/‹ﬂ-≥Ü„o8Èê„]íÂ±ÈòzßãÁÒ∞/uE‹±acÖ€‹ı±†@ﬁ Òéüykk9†W¡uPH,=Æ!UÊùVB´)RÔ!a¥ûøáß÷∫èIgk‚›\Zk◊û4„á;IÈårA„\"º©ÛJµﬁ«BvâÔ∫vâõcybGâ\nc%Ü;Ä≠bµ´È¨-7€«s# ìDAR?∫Ct?N’”ÿ_A®Z¨ˆÂådê)Rq«zãU“‡‘¨$ÇPFFC)¡÷µîöNÂ$ô Îñ(ﬁ÷!Ω	ù¶Fu<ûGÕÅﬂéîi÷-„Yœy,à#YcQí\n{zu˛u ¯õ_‘4.ÓLè[º@7Ò3\r£?ùt˛ΩÜÈ\"ºñ	„˝¬&”íë üJÒ’jn˙◊π∑+Lèƒ∑–¬\r†ï•àÑëëL™ˇ\0xN£Ω|˜®ÕkyÆ_$1à‚îïE»?°=kÍKΩ>Ÿ4ÎâÆ…S27@ﬂP+ÁsCµºÒîv∫$ﬁbÃw&x«$R•4§Àù≠°¿ME++8 ”C\0Fk≠Òˆõk¶ÍÈ$õë˚NW±˙W#ÅöÙÈœû\nFV‘x·±⁄ö„”î‰ìÈJ‡ö∞‹®≈\03ö∏££bÅ	åRûT“6{ˆÎ@8†bÅJ√ÂÎH@\rÏiÿ»≈1ÉÎ^È™-≈æø˝Íïæ∂&E`¯$∫G”5·DH5£°Í˜Z≠Ì¨œ#\0Â{°Í=¡ïxsFÎt8ª3Ë˝\"∆ﬁ7πµ‘mçÃvä™XπÙ»<á5ÿ⁄Ÿ€Z∆Õ%ùìÓ~a«B{è≠yˆ£}•k∫\Z≠Ü§LBH@*NRù±åWO‡ÌiÆ¥ÙäI±!∆∆+¡ØùuØ£]Meæá)Ò}`∫“£W¥ân’ªæAœ\n{◊ù¯\\ƒ«J∏—¯åÌ‹W=π≈{üã°íÍ›bπ¥äuótb<	„;ª\Z˘Æ‰>á‚7TÛmö)∏˛Úå˚W}TÉÉ\'c”ÙΩf⁄∆fíc ∞…/g(›Öáø=*«â>E¨¯hﬂ¯y£ïôV‘rS©!ß±ÆNÅ„‘†∫∫˘cõ2)ŒÂ(x<áÿÛ]]é´6è&tŸÌ‰∞ Ô˘é-ÿ‰1ÿü πy˝úÔŸü?][…m3G\"≤:úzäçz]/å\"w’^ÈÚD‹‰˙˜Æd6µ{Ùßœ#6Hê∂8˛t§ì¬äC¡˜™%à≠ ÎÌN$◊ëL\r◊äbÖœ4!\0ı¶RÇG4¨=G8œ®èÛJÃH¶0Á4¡√wlLÄ¡Íµœ%AœzŸ∫ì,A\\˝+:gÿ3”´éÊÌ˘£$cË*\n_å(ÊæB6qU•πàÇ§|ﬁπ™R–ñÀ› ÄD“NøwÓüjÁ$\0≥1n’r‚@A`O“®<¿©Rä$Æ88ûÄaüjäTG\\‰/‘‘N¡±älMìŒ¡zéΩ* Ä;N‘îê]πÈJÃbT˛KQ\rsÚÙÎS≈<Û∑¶A≈5J8∆>`ja3\"†\0G=Ífù¥?≤<Ä:mºqSFôTèiF\r˜éx°n§U¬`{˙T~|ÜL≥Ø=q\\ÕN‰YíàdR\n∞˛t›Ú;êp)Q‚(7»∆C…1R*në%iù˘¿^kHªîE `§≤‡Å≈Bín*8_N¶Æ^,±.H\Z2z5E√,g‰‹èÂBWÀt^ﬁLH¶2NÌ∏\'>æ¥$à‰ˇ\0xztÕWPÓnYGØZ±ê\Z[çÀÅ¬†∆MR˜t@\\ÜyV6\nN“9≈,r∆”*Œ≈#\'Ê`2EVä·dG\nßÍ:ä±q◊0˘—∆\ngêqT‰ñ‡O$ñit–Z;4{∞í8∆GÙ´ªP»Ñ›DØQìèl\nÁHŒÓq”ö”“Óö›Ú@›¸9\\Ä\ZπuZâó≥ ëCË28§âàl;c=Õl¡k¶ Î,≥K,yçpH=Î:ıÑ3«ÅX∆®˚ﬂ_z!]IÚıÃ€óU\'úsäŒy∏y≈Ks0YC0$Œ=*µµ´ﬁoHóê/∏£ij∆XäVV»`¿éj·Hƒ?0pHœ•f€$kæc2 Ω:’ÊµÛ~CêÃÖÇû¯ÌXŒIª!68€D\"◊¿‰zU38.y*¥Û9$ÁΩ8®¡ Ò÷µß-ÿ—lO∏˚UòdèZŒT w©#õgÎaõ1ŒTë⁄ÆErß\0‚∞r´ëH	»<älô∞3û¸T2›∏ÕUY˜\03“£súÛ÷ò¨$ìûs‘‘I\'œúÊ™Œ‰1>ïS0\'€i¡Lw™•òΩÍ´\\¸i>”Ç1”–Ü!Å«ÂPÏ$MD”n=H©cìåö\0¨˘.OjzíG•I(\r”≠BÆsåP™¯Á<äôe\'Äsö´éz’à±åı≈\0Hd¬ÄhåíMWê≤±˙“@‰±57ÃåUø∆¶∂õ˘ÜTˆÄÉ◊Øz`_ùºÌ[û∑kKqÀºuQú„†¸Î2.üJÙ/h≥Õ£ª#Cõ<∂wÈI…-∆ªîµßπ`\'ò*F¿óûNx…Æ^÷˙KY⁄·£ Ì8%O~U€¯ñm˙Bâ≠m^U€\Z¥_t*úÙ\'9?J‚.Æ\"ªùd˚4PÑPªc‹˙’ÕB◊ã2åù»!ìÌêπ∫gΩh¿—\\D¬rÕ8#Àòz{Vy&‚vu@¨O\nΩ©´#Ø :ÉëYµ°fı∂ç#Ÿ»ÏPáR¡|√o|zVÂ•’ìy3!Tên_qV$Ω0‡À)y\n\rÖNNıvŸ‰’$º;%ólpKù®ºø\\V)Œ-∑∞Ï∫dÇ·`hã≥yjnl‡{VΩúopÌca	í6Äπ˘πëîgÂ8ÎÌPò§≥“ÆbπÇ\'Â<Âoõ±¸F1YÏ€√¬≈∆3ïe Ù¯‚íù–=Õª!<òâ!iïì|Ü!ñUëV#÷$HIÖ~Ebø)Î¯’]F˝¥9mÆt›AVÓdŸ*(˘„„êWΩeAˆ´+´hÿóGb dúé¶í™û‚Ql€k®Æ\\	%ÿ6¸πŒ¢u åAÈéÙ€È.dö÷í,£,sÈÌ÷≤b’8œ∑µo\nóZë∑oy\n<Ö\0∆qìﬁ§º∫π”‹¢Mpç*≠”pÌåUkêmV·¡\r˛ŒxÊ§æ“oÌ#jî™»ª„$‰5C˜•fck≥tÏÃÃg›ÖZÈtõ[xÏekô¸•ÿÃ\nH˙„ÆFÊØú 9ÕkËó≤$ó6∑nÃèD}wcëèzuåt\Z+jcH…êáfËG˙”w´¢≤@¿\n:üzÉ[∏K≠JI£b»B‡ûÁ˛µ^)•,z‡ï§.“lñh\\˝¨¨rN]Ü0ÖΩaQJ2æbéﬁ_CRÕu3E\Z ≈ï\0ÙßÀ42l}Éq‡¶0Ω]Ä≠ë™∞êñp˙ö—”·≥KyôÓ6])& FCé;ı¸´6[fÜtâÜw√Ò[ﬁ¥“Øßô/bíKÑrS\rµJˆ¸s¸ÎD˘)π\rnSøí9lY¨ÌñeRw9ê‘◊z›L\Z“7r£¡¸zfªœ]∆˜–€AŸLÕ¥(A˜Xé„Ø9¨ÌK@ö’oaû{%kIUÑÅX»¿åt«CÔ\\‘Íﬁ*O©£èC\nœ\\ª˚EΩº6áu∞∆Pú∏œVØ&ª≠>¬{ù&ﬁXn•ÃπyòìÚÇyG?/_ÆHõOK˘&∫K©\\å\0)Vœ«“ª\r“Ú∆GyRI-6|§6A\r” üzô«RïŒÇ;K›As,∑V|ﬁcIÅ∆GÆN\nÁÓ`X\ZI∑±ÃÅbèoG9ˆ˙WMi‚ä≈R8–§åßÏ\n˚÷UŒõ$“+…Ω[¶`ìÔÔ[P—ÿRFE•À≈tªé“_pÓA˜Æ∫«SíUÖÓ\'cl‹uˆ¨”É\\aÑd‰“ŒÃ\nï+–éı–‡õ Ùo[Ÿ√<íÇJü›à‹‹«•bxã«0]òcÅ„FÛ‰°ˇ\0wˇ\0Ø\\-≈‘Ä‰ìéıüsv€ÚzÙ≠·.U°eõΩEgf»\0dúúf≤öT€Ün~S–’YÂ¡2†ÁõutÌ#H§.ÓH≤û¶ëiÂ16¡d>süº}ájØ$+¥íÿ±P]8?{ö±9—$gc+ï«\0v9¨πZV4Râï:I=–?yòÄ?•i^\\gñ’û\Z\"í2øﬂ…‰vÌä∆ñfd<Jdå“&Ê…bzì…¨Áµ}ÇU;§}ÃwS1ûÙ§d“c–∂!ªñ¥¯L◊D\rø*≥|‹ÉÅZ\r∫Hn¬/ÂYñìy7*‰gΩk°]3Sπd[»åW l¡¡ÓO•s÷—Ç)Àz\"äL¶%+∞r~µY˜1ÖL4y%õú”.¢í£™¡–¸¡∫ÉRaÅUlﬂó„BVBΩä◊ZLÆG\r@¸fûÍwê=i|åö⁄: #\'&úü/Ô3»„√öAíp*Ï;èRÇT\0+{Hí9XZEéV\0£∑E∆OÊzVH]¿…÷¨Ü!*ë7D™˛fs„Ê#–“≤´÷‰3kSäÏO£o+±‰4k¬„éﬁˇ\0Œïıõ˚ÕQ≈‚∆ÖIjÁÔ‰ÅπF:=ÒV°◊•b∏ˆ∆¡cçñ>;®_Ø9Æ[Tu,∆=€O=«j‰§úùôzt*,`ÖV‡å˜©\"Å√(X‡‘pF	‹3éπ≠-6!*…!H]€æï’)Y	.RRÓ¨˜a˚˛®Ñ∆Bpò\rååÁßzs≥1!óúpzw´ˆr«ß$Ò]Z4íK	ûäƒõ‚°4˛\"[Ëf>Áâˆ¥O®©t◊ÚÆ„ïf0≤úáA¶yo)QÕÄ\0ıßIk<,ûbl\'Ê8»Œ?•SÂJ»HËo†ª’¥±}ˆè2gH§Å€Êç€#ÿÌÕn¯I4€\rJ(5yZ kSΩÁ;d.\0t„$˚ä≈“.dáOπdµÇkã◊6f˘÷Aëïø6y≠≠CHøæ‘ßK…n&óOÖZAr]ó_,º9¸´éI…¥ˆ4ÂMˇ\0àºÌ3Ttâ£rƒnhévN@#ß=«lVu∆†˜ÑÀw,“LX.sê:g‹R‹Í\n≥I«îûN=™î≤ô7Hvç«†≠£Er¢\Z‘Ÿ∫‘c∏≤ä1ÅbJÄ°â$É¯f´¡qqx%ÑÏ\n®qª∞¸≥T£,†\"∏Ue*rj˝•«óvŒ∞!e_òÚ1¡›\r\n6M\"Óe^,∂⁄Öƒò•G(À˝“;T˛`3«_zË£ÇﬁÊ+ªã¶é[…ô≤Á!ÛœCRµHaIcdb #Ë?\Z∏÷I®€Ql¡C/ß Scy\0dbqËjtêÓQ…¢h–ƒ≠º˘Öà€éﬂZÈÊÓ\"øõìûå*BIÌP:≤Áéº\Z^ÄÒEÑÀ1 Ñ®aÅ“ú¯’]Jíppi·∑dÓ˘∫CB‹ø¶ÍRX_ErÅëWz‰ÙÔWÜ•ókîÛdﬁX3N~Ôß^+¬„9\\„uK\Zóê®oü¯s‹÷Ñ[∏Ï—⁄m√kh#”/\Z6fÛ7(Ÿ»‡vÔÌ“∂4Mv-gP:v§Äí≥nÛ∏˜Ë}≈yÓõsoßn∫ömUÄuRxRy<w¢)ºõˆ˚=¡\n$;%gÉX’°√óØq≈¥Óz>”`áTﬁ2ò˜…å\0ÚH8»Ø5êÿ„ÖÏkb˜ƒ˜◊w∆yßÃ±í¢\0¡¿Ìê*îÚ§—Üd€‘ö¨<*G‚‘NÃ°û¨G4†ÜNº˙R®æn1û¥–AläÎD±¡2£◊4Ö6Çr*C¡Èœjz≤ê∞ ÒûÙ¡ù˙Â¥⁄=≥Im⁄më·ÿ√ïæÎ˜Nz˙’ﬂ\r>ô-¨ówì¡Í»wÓåå)A»8öÊQ≠ùIùX∏R£ú`ˆ?ÖZêG•»…ÊCs	9I„Äq¯t´ˆçâE|YùÙÎc{otªPâ`èÀLzÍZÂåµµ{•º\Z<ZÇåE;Ì_~2÷)8=©_[î b\rhY^à ûÇ)|—çŒ2ÀèC⁄≥«›\"§é\'e‹†‚îíí‘ìòJ™D·ïçWXÀπU©∑F!ÀÊé:ı˙‘*«vWÇ)GMb»∂Ü(‹»ÿòï1◊5	¢@‡ó+∆CÔ[∫ıâÜ“œÌK;ôd7ä!ê(„µaõY›R^°◊vz9´Â`òëY»÷Ê‡Úô€◊ø•H⁄Ö·≥kEùÖºå	çGÅÄ~µ∑úF“bÄƒÄ=M>{G∂≤äÎŒà¨å@Pˇ\02ëéHÌJÃ.à≠Ó$µ∫Y ÒúåéáÈRÍö≠ﬁ©3=Ã•ÚÂO?˛°T›‰ï⁄Iñ=O≠4˜ÌVõÿMQêtß$J \0∞Ä°,*∑&0(¡m£®<“Í6Z”ÏÄ¥I§ñ2ä§[w1Ï~á•C}v˜2≈í‡â6ıØi˝úñ?⁄…ˆy¢î~‰íG9î\\]i„EÛ.cÛÊô¿G‹AàÉí=¡®∫æ¢z#9lmîo&@í!Úôì´√Û¨i¡YèÙ≠õ„y5¨/\"ïÖA>–2>ïßmeΩπÅÂkíßœ/–ûÿ£ùF1‹Mli⁄÷£ßŸMoipbé_ıõ8,:`üJÕëB+ l®<µHàåÔ\'5Månr˜…¶≤åiw«wZ]£&Ñj1û¯ßm∆=˚P¿È≈IÚÅL,F\0iÿˆ§˚ÃqŒ*P6„ÉÕ\06éM.“:ÒJ£*NNE)âôﬁÙÑ06—éπ™¡àb*fBáÊ:‘-À˜™Hh^Ù“qJ:Rò™∞ÿg ÷œÜ5{ç\\ÇÍﬁGåú∆≈[b±qOW)\"∑j*AN/®\\ˆMrMf÷;ŸÆ†Y\"q2yl\0,p„◊äÊÆ!‘Ô#óXIfYU Ø˚G®«∏5˛±ˆ€{uxô…å.÷ÈÉÌV4ÌCÏ1XÿÜ∂ê®.˜/Ö\rúÉ˙˜Øπ:k˙^˚E∆óko‡÷’ØıMó[≥\0ã`ùΩH∆ká–ı&µÒ7FóP@Õ≤9Áå‡÷ïƒ˙mÆ¨◊3ŒuDáÕ¿ﬁGP:`kûÜVÛ§2)1úÅÅåé’µ%t¬V4ù™Í‚_.HD0»Õy¿\'ìÅÌ≈W–>’6°&¢å±¨l˜62åÎUt˚‰äG{›ÚF™—™+Ìe$pG“õ‹vñ”∫≥Çä¿dπÆãJŒ$¶∑:…ß]@Ç∆i≠XDciKÔÌünq\\^≥§À•ﬁI	uòFvºëÚªΩÔK6°su7ô90;â JõS’ÕÌ¨p™lX˙Å–Áæ=jËSù%±2íñÊT(íJÅÿÑœ$”≠‡í{Ë‡Ü6íGê*\"éXì¿Ùÿ§∏ld\nû+Åo™√qg#F…\"∫9Í¨9¸Î≤MŸÿÑèJı‰:4—%ı•›®?qÊ∂9,:Çqÿ◊®¯Z-ÊÊÊÍ´GYõ/∏Û¸÷7Ü¸Q§Î—k2EÏ#sñ#küÔ.=x‚∂nµ-Ó·Ïd“†# 1˘◊œ9•6Á~ßK€CCP±¡∏eU†≥õ%∏Ë°ÙØÒEÀÈ≤Îï◊=c$a∏5•≠^axÅØtïô~Ãp–¥ß îc†…˜Ì\\_â¸Kπr –⁄D3F[9ê˝‚=©·pÓSÊK›bî¥±ò5ª¶ò…ºƒvla⁄{éı[R‘x\"Ü=™† ãèõûO©˜™Ñ;åÚ€F8Ù¶	,àØz	GD`ıÆd@DlW#Ë¡~Äü\\TDmb;WGb\"è@êÀ¶∑ù∏ÓêÛÉ∆=k]…2¨¶í= àéÆ@e`yÆª¬\Zéô°ÍW≠Ÿ;eK\"Ñ™ﬂ¬=∫◊)`n#æD¥åI3A…Ù¡´Mvë\\[<%$r¢fu‰c±œJ∏;2dÆ\Z◊õm}5ª,,é€ÄÖ√Æ	»\0äÃXˆŒ#ëJpCq∑Î]ÜÖ≠ÈqhRhóZRI$Úå^mÀ∆IÒ∆\rt˛ ÔÜ‡:FÈn\Z˝´…QÊåÿÛ«°Ì“µ‰Ê’ÕmKK’g”$∑ÜYí8⁄EfxÿÄÍ8…#◊◊⁄∫ã˝v◊≈˛}ñﬁÓ‘SwÃ”∞$¸Ω˙k/UÂï™i˜ˆ∑PŸM/ï˜G8∆IGØQ]á√Ìu}w˚SQV∑€∏⁄ÖO/y Ü¿ÜOÁZ+≈k∞∑wGÖ2‡Äj2x5’xÎ√íxg≈W∂,ßÀÛ¬«¯êúÉ\\πÆYÆVlF]î˙\ZC(¿&§a∫´∫öÅÿ◊“”˚_V¥µÛ\0yXFÆp{û’Ÿ¯∑¡:óÉÌ\\Gmƒª&7…ÅRü@GÎXÙ›\'Y◊Öñ´+[+FZ9’±µ¡}8Õwﬁ1◊nu›$Ëˇ\0⁄B‚‚Õº»ó+p™x›ÔéIÈöËßI5ÃÃÂ+;>\'û6FﬁŸ‡ıœΩ,∑M3*ÓŒTsMëπ-åÉí*¸)¥—Õ÷r¶N\08ÆG.Ü∂EDπuìq$Ωz◊~±˝öÀCøµ’ê±í9$e@\Z’Ú2O®‰˚W±M{~Rwv$‡üRxÌ]\rîpÈ˙dÎyl“;ÜLìßß°¡ ÷î÷ÏŒg‘>mã„pQæv ŸÁ ˙É¯÷ƒ”§1≥3ÅúfºÛ·ñ≥¶Î+ ”ÓnGŸ¢E6Ûq∆[ﬂ˙W†Om§eœôsYTN÷[ï\ré‚MççŒïOÚ5Õƒ@òb/±\r«Å«≠è∞5¶ñ≤i7,∆·‹nﬁáí·äÈ]~œl≈òù£9+Y&”ÃAÛﬁ‚`Ø9ŸúÂ±^l<ñ˚ù1©c:+ãΩGHû÷[R-¶\\-í¡„Zƒl5π!µVçmÿÂ—∫¸´ËKKâ˜5îQõ[á-∫&Nˇ\0xC^Ò“};ƒ7ë›ÅÊ9œ r*0Æß5§¥	§ô»GÊ¨V÷íyÚHUâ¨ñFçä2ï`pA≈z«√8Ïat∏Úb}H…àºŸv†‡‰∑ß1È\\ƒ-.=+≈∑ë≈çí4\0˚∞OQû¸◊ßFßº·b^«.:äqÁèJàG5*úäÍdç«Œ\ZâÙßè≠5ÜÂ\'“íƒ…?çπÍ)∏¡•„<Òö`!Z≥¯P8>‘0⁄Ÿ\0é;“.ûséµpx¶ÄÔ>k7íœcàöPßÔáÓ∆Os€Î^µ‡4Ç‚Íyd∑î20l≤Ó∞„È^·kÎãkŸ!∑VëÓhçFwêA¡«ÏzéGí-lå∏‡ 72ø|O≠x∏∫|µom\r–Ù]~Ílä√tm‹îaÇ~ÄıÈ⁄º‚Üâ\rñß°kp”Gp2w.a‘W–◊z}ñ©•Kr±Ä”\'òCcè°ÊºK≈^ñˆ¿Ì29â	Ç:˝h¢˘\'œ—Üçhei∫Â•˛Çö|q«U+#Âƒüﬂ˚¶∫mK∏∞‘“⁄Ó‹:ë∏ô~XÂ#ùÄÙ èZÚÕ9“˘ÂÑ∆≠yå´( sŒ\n˙OJ}^¿öY†ùö%›\"¸∏n@ voQQã√Õ&·∞)Îfyøƒ& /∑ŸÏ#EyLÍÉ;≠˚œBÙØëv±≈}aÈ‚˜pfÊ⁄6IØ…4}cß•|Á„K+[O\\8º∏	‹äp\rkñ◊z”a5cûSê)H ˙}h]†goé·áÎ#&∆Ñ pEGÇ\r;wÈL…\'5@<\n»Õ(läPE$ ±ëHy©8êÅ∑äb=ûG⁄y¸™ç√nŒ:\Zπ>1◊µg∫ñp£üA\\∂7ftˆÌúÄN}*	-ŸF@$ıΩ\Zî L„≠KuyeïG57∂Ñ4r3Ík2Wc!«OJËÆ·¡?\'∑Jßàv$„Q&∆$›\0ÎP3Ç®≠õª$ç[±5á4%ÉVµÜ≥súÊîH√¯ªT\\ÁUà¢ÛH™ÑêËsÄxœzïdh‰√ä¥ñj™§cë“¢uÀ{TË¿µãj±‡Á\r˛4˚∏‡Ûa ‡rqU#88ßú´nSP‡ÕÑ¡êzÛ]NÖgo,)™I{on0–ú©a”9Èﬁπô¶/b2süô~ùÍÿµñﬁ4˚A⁄S<„µKéÇ,jZìﬁ]$òP±±)ÅÔ≈Wø∫{˘\'ªù•<ÖAÖc8≠mR}:„J≥k+aÅ6NAs‚<q\\‘“mMΩâÊ≥H6!∑ÿe·IB1ÚıfûôR=–≈É#Áï‡qUÃËAQQÛs˛qWé£4Ì∑ïG`◊N„w©ß-Ñ«µö√ÖP6Ì» ıßEcÊDŒÓèªªÔSZrB ãbÁ\'ÅQÓ\"|ú©p(˛!ÎX>yDùMh£±âcñaá#ï9„Qa>të»§¬¿ÏÚ=+)%öC¥Ôpgh≠€HåHK˚∆±¬‘8∏«q1≠=Õï»6π@√„\'Òı¨÷ªÛ%1ærI\'•iﬁ«uikèΩUâ»˘IÙÕs≥∏ëôâ¡\'$÷∏wÕ®”LíuFp›G•Oπ‚∑ç‚éH‚ ©~Ã}3T†úΩÀ1ö“E\rØÃ@\0å÷’∂` IñﬁÁÂ<ıÎP ƒë◊–ZZ√%ÆL¨&=GêG◊<U_%a∏U?ºâπ ’Bqo@πñ™“Hﬂ\'·ÈOHòê0j[ç÷“m^S<7≠Kcsòâ¿( TúræÑV MåÜRúv™Æ«vGJù˛`JúèJ¨¿ä§Ó4I«v>ïqdø&®*„øjö7¬s–’ydqìJgjØò8ÎR0„éÜÄ#r\\˚S|º`‚¨˘y<äØ+ÏÄ+Áπ®’ÒÇGzçﬂ-û‘–Kgû0\'-»«zzJb´`Ÿ\'äwW±@‡‡ı•‡Ù‘QÛ˜π&ß\07Ä!mŸÈ∆j‘<(¶co^y§Rƒ∂)1J® `˜¶&\0˜ß?+»‰T<ÛäZÀÅîèzñ\"W¸ı™H¯¸*ÏºÉûæ¥Ë4DûÓˆﬁ÷YdnôÌ^∫…¶]iÚ™ÀwaefØ:]î∆yÆ!ö(§ä2PHÿ∆•◊“‚¬˘—µ∏ê◊ø⁄•s‘ïÂ ã˚$û\"O\"uÑŒ≈1πèﬂ«W6≠ÂæÁkt>ﬁ¥ÌCUKÎ∑õ &\0H–∏Ô˘”lÆaf_¥ÊH”ñŒ—ÙÔZ/v$%®M2GÃ262H¡™y˘8\'É÷•’%?eï?!»FhÁÅÊO,Åûß¸j”@ZípƒãΩK;p+BœUHÙ˘4π°<√!ï>Ò„ÅÈäœKi&∂kò#ê√fG∆@©•ÉÏ@Äûiö UàÈÎäóg†—–YﬂAßŸ*ƒÚ\\I)U∫Ib8*H¬ÉÎ¯’\'Oëo≠ÁEÅáón\ZSêëN±‘Ó\'é;?-»µVúñ]‹„∞Ùã5ÙÆ^KÉ≤êK,à9…ØÚÆW	]ÿAˆ#1{∂∏3ÉÅ&C\r‹˝ÏıÌ]çæôe4í>õ©ÄV0íqÛ6FrsZ,÷\rx¬‡ò‚Hqîã={7¯”ÙÕAa∞∫D∆3Ô¡##˝ﬁı.õlß6ñÇx∑U”Øv≠§≥)∑o*1‡:Ç‰ûrHÈY:é…OÓÿç˛ı^x[tàÿ9¡j™\"%ºÁµuR¶£\"“˝¶◊ b≠…˚õx93⁄¥Xö‚Œ+w›Â†ÓsìÎ\\©Vq ë◊•iiâ-›¬@å>cçƒÙ´≤Z∞zöggx…=ÍÖÌ≥Iñëñu…8 VÃ∫M‘¥ê∫\\G˘⁄0F=z˝k\ZmATÙo•>e%†Ìb´∞h†∏€π‚ﬂFw+Á˘w®\"ß5bKÀ{≈Dxå(U$S‘ˆ»ˇ\0=ilxc¸söpn÷bb¶Á»q¡9‡t©ÖåæIùUö p*D1∏‘ê›Kh‘ïéNI‡ä–A\n\ní»AV∑u˙\ZmΩ˝Âï¸–YàÌLÚ*8aùúry©cíd∏ˇ\0G⁄å£<åˇ\0:Ÿ≥–Ì]”T‘Æå1g!éséïÖkr5!ß®öœÜd∑æ∂Û.“uêùí˚ÉåëÌìú˚U´8m4˚ôßP◊4-p“Â∫y<åÁ⁄©I=úí…qÚ¨(∏àHr¿_ÛÕnÈ◊R^È◊v∑…0MÒ≥F$ÅÈöÚﬂ?*FÒµÃ;¬Ze–óRΩr´Ú…\'»Ã;Íx≠Kª¶[*+xeµå	†Ëò |›˝j€È´•€^ºﬂc¥ﬁYÏ¡ﬁ•è+‹Ù¸´õª‘ÏÌZKªgùgåyKp·\n/1π‰í)˚G\'aª∫¬,˙uöÏ∑`sÂÕ\0Ùˇ\0ı”&éfÜ›§y€Ôg”⁄π{\rBY/0%-±…V»πÆΩ%qî∑î8;z‚ªÈFÀR7Âπ¡¿\'“≥\'ûá∏≈n\\òUÛBôÍ°¨=VUïX¢ï⁄=söËB±ÕjìÖmaIrÕíGJª©L±Ás˝k>«Ãæî«j@\'-”èsÿQ)(´≤L˘ÆÉqø<Ê™»ƒ∆p˘#úWH&‰zÓ–K&¢ÚÇŒàÜOOQ¿Áﬁ™Ë˙Aæí(3&>ZÓ∆[¿Ó:˝+ù‚õ´0Dl~nqOf&(Ω1•ƒÖe/ôú`c<∆ôÊÓM£©≠‚ÓÆÆ ñva\Z*•é—ûSQëÄ]Ñ≥dÁÆj’ºãûYéJ_õö¨Ë®°îê√ís¸´)7{1víIi§‰é*xö/úH6¸∏ı™√ìZE≤â†\\ p;◊S%’ˆêæMµÀºπväLááÈ\\¥\'9œ•[kí4ˇ\0 HÀÛghœøÁ≠cR<Ã[W7ó\r,”\rÓIfnjgñD]äËU	*Í:˛=jíîÓ\0})	⁄ßÛG),$!ÿ8\'®®‰Á∏Èäx?.X‰ì≈FK6N;÷ëªeíqI‘Á“¶Xã)ı*,pEj3g√∫\\˙ΩÃÎ≈¡	ñI$8\0t˛∏≠∂–CÛbìÕâ∞™¯Ú§ˇ\0kä¬∞gäc¥êp√±≠=[$ª_Ìy$Ñ∏çÇ±ŸÆJ±w∏-\r-jÁU‘l¥ŸÆ1_&)6„ú˙ìY∫Êùuck`nq˚¯…	¿`Ó=9Îﬁ∑µ\ro>áJî›Bo>€s\0œ_^ùÎù÷u&‘Z‹J|Ÿ!O,HG,£Ó˛Bäâ5b%{ôj™¬É“∑º3£ÆØ©õvô†èk?õ∑*§ÛXAùFÊC¥qûôØALÚ\'ÜuQge4˜ë…Œ¯‰	±@aœrø0»≠%-€∂¨¬M;ÕIÂ∫$* ï ¸≈∞3Ì◊Ù´˙ç≠›ºeoû(ßt4∆C.;∞È€ÛÆ∑ƒﬁm=≠Óû˝X›èöc˘bì´g‹3“´Î^ß«®=…í)1\0m⁄ﬂƒ†ß·\\ı\"©…)=A>mQÁëôz¢©«†œ‰j≥JÈ+3.A·ΩÎ—,º\r	—Øuµ	¨ºÖ>Z˘EÑºv˝kÇï>—>ÿ‘#`(N•éq˘“ÖXÕ¥û≈5a⁄}ıƒ™I \n]ªÇ=è•>∑™nÅd∫2õYÅ∑Å«©Áï$R⁄ êŒû[∂út ‡Ê£xºªœ,ùÍ≠…´D£‘õµ±9U\n≥0#ÉΩTg÷ñÍ·tkW2∆Tƒcúr1Zwö’ΩµÂ”g‰ÅàfmÆÍ‹p_5ç∆8ãáË0Î÷íïˆÓ5&DéDë7d|†ÒÉëœÛ©mnÀN£%9<ØlÒ˝*ÇRª\0‹G9ÔP∆‡≠kdıÀâ2BÂû=ÕÿÜ¡∆y§7J–à◊*úêπŒ*É+≈ï›ê{ä~”∑˝(pC`Ñ<úv≠y-Æ_√–ªê-Ñé»JÚ[Äp{ˆ¨|m#äÙ5˝=>ˇ\0f2@oÍDœ dQÄ¿é‡è ¥|≠jƒÔ–‡JÜ@SL6˚£fïÎN6=´jÙ”¢,ç+5€íæPll O®∆?Z∏+ıÃ€n@ÎåUµX&é=®|Â·á®≠=2‚‘höùçƒ?ºpØÅê¿Ärqúc¶)”Èà·¥Ÿy¿:08…\n}Fqä∑ÏMÃ9§ëNÕ≈Ts¥˙‘i)ﬁ	?áµ% »≥∑õøÃ\'-ºrøΩFôWŒ9<à¢ÙÛ§Ë¨#∆A¿Ì⁄´$£Ò5f+o5A\r¿˛ï\Zƒ≈Ç%ò‡\nÖdQb_4„´t‘’§>Gﬂè8*√ı™≥√-§Ì®—»≠Ç§r\r\";æUŒÔBi7}Ç≈ë)6≤¿\"èÍ·€Ô\0˙’|ê›*∞A\"å08˛™h üß–âA„ß£¥ˇ\0heÇ‹\\1ç≤Ö7eqíqÌå÷9lRCu<ÊA#∆‡π[≠Zµı%£F˚O∏µì3GÂâ*3úˇ\0ıÍ}ﬁ	/#Kˆd¥f√∏]€G~*ãﬂÕr•¶s+ÓŒÁ$ûò≠›\"ﬁ˚^û,ÌZc‡§C†ı\'”ÎI´øt6‹õƒ:$æeWv∫¥û&dN@à∂BÁ∂qŒ=Îç<ÙÌ_SÎ>äÔ¿óvzåhvªÑàø6Â\\ıËkÂó&Øë•q¶5NjHÀ7à_jDÿd…‹ék¢ìN–Ì†Üxus9ñ3∫/(Üâácœ?˝zôID£aSì ÊÅÇpºÊ§ò\'3¡ı¢ 	%ºÜ4WgvB.XìË;ökQv66˜ö∂—A∫˝ ÃÕÃà?ÖGr95cOâ¥¥ΩÇÍ)\"äÚ”áÛ/\0‡g◊°ÆÛ¿ﬁ\r÷Ù∑π’R–= ˛ÓnSa\nrÛ˘b≤µÔ	Í“î∏∫Û%ç§hù”-ÂÌèL~Çõå©Í-%°ÁS˛‚4ki\\yëë(∆;Ù˜*àNΩt:¥±¬Úhˆ¯ö⁄7›ﬁXXépz„⁄≥çÆÿAÚôFﬁΩÛRÂ`±û†í)\nÜËj Å∞:ûr	î≥CΩ¿à\0§p}}i)j14ÿ\"πøKy›£‹HqŒ8âÆ¶=˜Né\r_OºFƒ≤E2≥ÄQ‘t>ƒ\rqBWÜ·dçàu9AÆÇ ÀP’míkÜŸd%ÿÕûA úë‘åÕkubZw+ã·q–¨QÇá~Y±éz{‘PBÂÀ…∫´Ó⁄ú®Õw^m∑â&û⁄!lªÚBú¸™ΩY[±\'ùg€•œÉ|Mn5ÀYÕº2©fpSé;\Z«ô6ìÍ]¥πã∫Óˆi ∆‚>rÀÇâÿˇ\0*»∫‹©bTpßk”|g™È˙îqÿ_\"i<≈ñ8∂∞åé”±Õyå≠*´DA+€p¢—R≤%jäÄêﬂ„[2›Dl1¨QúÉÚÉÙı5éTá¡8©Ì∞Ú,Yf…¿\\˜ÌU$ö«»åb;	¿b*2vmΩkN]:ˆÂÇE;`|2dHÍßúH⁄FrŸÙ•	\'∞œ9†®lz‚Ü$cÅ@Ê¥@≈E⁄€Ω\rY»ì¢†$;“n9„åı¢◊.„˜1ﬂúTÍx‡c”5Z6\0ZúH°\0=ÁRƒ2S∏F*ë·œÈWJõâ6∆8®\'à«ä®±êè÷óÈß\'ëNÌÔV`é£Ç1“óÉéΩ(8Õ1â‡’¥ø”\\\\∑òÒ†˘I‰(Ù©/Ù‰÷µÄˆÎ!UÂ=\0Ókï˝”€¨è\r¬¡*∫Ìbÿ\'>ïËÍzmÓû¡ıáÇıîçF‹‡˝‹^πØ	B´íÍoucI¥ç\Z;]7M{Q®í£π#)2ÁÊ˝;W7‚Ô˝è_úip»,‰lÆ@=+™”ÿ\\5ê<ûT„&TÀïÌä•‚mNK}j(mÓº€Ttfçìh\\uV˜≈p”ú„=À≤±¬Mao§kéÏ·yæ<‡ë”°º—ÔÆmø¥#á1„%ÉÉÅ€é’‘kQA®›yÌ<`îiT*d∂\0˙’=K{k.ü3ÌÇ/üjr“7d„≠w™ÚÂÁÍàPª±Ã€¯kS∫WögH€Í8‹÷uÃ&“c—∞ëOÕûÂ^É§€ﬁBœ\n√=∂ÁinccÚ¨c©€Í+X[[≠Øñ4Këq&«ñV9RµkK)NœaJ	+úzÌ.‡JÉ»˚îç$_(Âp\rD~ÒÕ\'&ΩKùéë¨È©·ˇ\0%ÌäÍJLù√/∆ªm+_£√-ŸÜH’0\\Ä@‰ÒÎ≈y+›ÅB±ù°r£Øπ˜§ÇyÌúIÖNyß‚+ÇÆN˙ÿ“3±Ë˛\"◊tÌcJ€c\"çπ\r∆s”Çø¡Aß\\^_hc>aœÈ“ÆË⁄‘∂ølct∏Bí#†˙z÷∫ÈÎ´\\3˝…wüôõWAı±ç∞}áÒ≥ï∑Ç:+•uò\0W\råz˝jµÙ)‰,ÇE*\n≤˜Õt⁄Üêó^ û…%C,[ä∂0é«Î\\Ì¿è|ëò6»º«Óë]TjÛŸí—ûà¨√<Û]˜áÌ÷!-ˆ°v±FÌhÀÜÛú˙˝kí¥”.§âfKwdbF¸|ºuÊ¥ÙKào!πûhr6„8…œΩ]Z∂ãÂzä1ª‘€Ò‰êj\ZuÕ¶ë&û¢5›ó¶<‡ï-Ôåt}I†ÛÙy1‰˘W	?y60A\'π„ØΩb¯£\\∏ÒC#-#ÚêÉ÷0~_∆®Ÿ›⁄¶áwo<ÊbR ¸˙bï\nı•∏JöæÜù’›Æ£<◊∂Å-ﬁLHËºml„ÊªØ¯\\¯é)¢vxvbS3®cøù£p=\nıØ/:~gO≤Ë‡ùΩ∆Nk¶wàØlu&¥Û„H.¢Ú•ÛXÖ∆8 ˆa⁄∫„[ôô8XÏÌ˛jÀ$6öùÚG¶√wÊ!F%…#Rx¡„≠záÆÙÙ”V;h£é8\\ƒ´Õ¥é†üZ°d∂B÷Œ˙ißrçÊ;8È◊“®æâia‚∂6˛uæõ,a‰é›Œ”(?xÅ”“∑mI8»Ñ˙£ò¯È£=ﬁìc¨«lU≠›¢ôªÌ8€¯dŒºáÃs_ax∆√˚[¡Z•¨}dµbô¿»ÎÙØèÂFA‡É»©ø5$˚hm‘åÙ®‹w©q«ZçîÅX◊ﬁµo£K{ÁY˘¶‚Ÿ°I ºD˜‡j’]ë†_*%⁄7›è‰k(å}kB¡“ÿIÊ€,È2ldÆ{èz•À Ö Øq±˘77‹pxÕi]y—…mß›⁄yåí∏ûºu´ñ^πXÏıØ,‚Œà\"íOôXÚ2Â^óØËÛŸx&+›jŒ÷i¢∏V`dÉíq€”‘:N◊dÛv<·≠Ø|+≠‹ﬁŸ])ÚŸ‡YP‰6Wú« ‘@˝∞2\\œˆhôº»œñJ6{Å€•zNüug‚_ﬁiPËÈ¨ÇV,¿·N\0uc…9äÁgŒ°5≈Ôôe Ñ‹-¥mD**ÒΩîzÒÕt∫wßxê•ÆßmZU¥K´Uñ)!r]G*«ÙœÎ^«^¢¯NXtc©hí›ã´\'?iÑ1^x¿ˆ¿8˙◊≥hww◊6äo%∆¯éU∆:èQ\\µ\Z≤fêM\ZÃ°‘©`’ãx£kÖát±©*›Oø„Z¨_ﬂEi£ÃÆ¿4£`∞~¢¢ Z2üsÖ‘|y%æ©vR)!\Z«\Zæ–Qè˜Ø5ÒÖ–∫é⁄Œ˛o:·KÕ4Ö0¿ûÉwÁQjÈuß/ﬂƒwbF√¸˚‘˜˜6W˙$◊wmªòc˛YéÄ√ØΩpbi∆†¥95©«Èsò/\"ÖÃ~Gö˜¶Óüó’µ„M\ZÈt[]^[xJ€D±…íW∂W<W,˚“}»\0ı5•®jÊ˜NãD,\\/]§ˆ“ö∫öh¥Ór¡pM9OUı°‘£åéGZ·Î∑•¿YÖ‰)&‡g“ë	ÿx˜†Dy√\Zì;ñ£aû{”îÛ≈1°ƒù†–NÓ¥ùœ•Êê\nß&ë∆h#⁄î˛¥}ù√⁄‹«4lU–‰8\"Ωè·∑áV∫kÎâ]Ì3˚ÔòRFA¸}k≈z]wÜº_™ËñrEßﬁµæˇ\0Ωåä„«QùJvÜ„ãÓ}O§ŸàÌÓ,‰$ ·X7%OsÔ≈q˙ﬁ∏⁄4∆«dàã+\">Ã±»˝s\\∑Ä|M9ÜÚˇ\0R\\À+ÖWY∂ù˝q¥t\'=zWM‚òc‘Ù∑À{w ‡¨%πR\0é∆º™~‰}ú÷≈hˆ<*˙A¶¯®Œ±î	6Ìí® Ù#Ωzô‚Èˆ6˙Êèv∂◊Dtë·‚⁄pDÅq˜FyˆÆC«$ﬂËv7Ôeo±ñÖ⁄Çÿ=[ærMA·ØÍQhEeœ-∑ “âÅY„OÛÈ:ç”ºmŸê÷ß¶Ë˛+“/t◊∂÷Lh·œÔ„G)…Ât>∆∏xmâûX\\§ H≥ (Ωé‚≥a÷ÂÜe0àÌõó∑ï~Q∏Ú¿wÆé‚H\"≤µ˛ƒø˝⁄´+¬“ìú˚é;Wû‚ÈTÊá¸£+Ëœv⁄€@∆)ûjˆ∑a=Ü£$WÑl‰c°°’û£ä˜a.h¶à∞∆˙–:{”è•6¨H\0„û§‘√úäpÈöC∏‚~S˙”	•\'öNÑ–=éÓ5qUB˘kø\'ØvpY˙c‘’i·FRc|ï8¡88ÆfŸ¨û§Ï« *BëÈWﬁ¯H∆GQY“@VPWI=MGÊm8ÎG*bCÓq ›å\Z•êß? ≠= ÉP1W‰O•4ác6ıã{èz…û6<ØJﬂö ;ö≠ˆ]‹t¥÷Çf*@§–ö–”Ì 2Å+Lå„Æ=™cd°≥»5v€OÛ\'U^=Õ7%π%]JƒY›â¸»à›ëçÀÙ¨åNHÆ⁄ÎBÛtâÁIÎvÀò£≠rw*bl2ëÈöòM42†\\ÒÙ°∏E5ÿØ“ö¢Ijå˚VÇeãX˜H§˜>µ£5£*F—ÂÿÇƒu‚©+Ñ»0«zπ±yIˇ\0ﬁrkö£w\'Ã¶¡ë∑mÁ”µWÚæ“Ï™ÎQìÊ6·WKMåL#c–ä≠>òË<ÈÓ˚–™G®ÆEuˆ$µ∑0+	Ä\"mÕêNx#®cÒ»KGµÉ+œ·P‹$Ö\'h<WC·=ﬁ˙	Ø/‘˝äDëÉaìq∆@Ôéµ5ß\ZpÊ`⁄ÍW∂û-ZÓÂÁ}™∏q∏˜Uà‰Çªc÷ä/û√ñ=pÿÎ]N£‡ÎxÊXlÌæ–ˆÏ<≈ç”∆y‹Æ8™◊>Ω6ëjñ1(∂îì\ZâQŒÊœN’ç{h∑\rÇrDC MZ{´õSj≤0v∂ú6I+Èä◊ˆï{®jWn¡nŸ2í\0P‹ÛÌ\\∆ß™4qµ€¥Í2qı≠+?^€y÷¬·¨ìdÖ6û2=à\'ÉXJçGm»µı«ueßGÀâXJˇ\0∫ﬂªn;„¶\rqS\\…{p\n\'≤™Æ1]ÓΩßH∫dZú.≤5√y*Ùπ}6Ÿ-¶{ÖìI8œlb∑¢˝î}Â®héÜ	}ü√¬ˆÍb\03&„Ω}Ò€äÁÑ¶…Ÿ–É·IÁä⁄∏üTæXgrœ\n-ü8mß∑=EsMg1Ωí§=J∆ìîõsb’ó”RDÖÇ/Ô`~«=Ef€;Cm\"ìTèÏW^B6ÊAâ=7w«µPy€ÉÚéq^Ö(¶ÆãH¥“ñãoRzàúœ>’2L”√`‡÷÷≤‹óÀ6:“yÜG„†¶Ó˘∆‹÷¶ü…?2@FvéÄ”ä{ÅKé;Ê§G¿ˆ5\09^E*Òﬁ¨e£&÷©πOûﬂç<H\0„•/	É)Í¨≠ºöbH}iÓ£Ô~tXE\\Ìb	Ê•UÂWøZf3&„ö≤àÎLbKÚ(˜®<¿^¥˘ﬂÇµHøœé‘!\ZI äû7π5òØì÷ßÖ√0Å\ZJª«Ω9Ü#®„`¡52ùÁ ‘Å\'ëì¿?çA,E\\IH85ÆO·EÑCyÎöø\ZÌ«*§l…ÎV·9eÅœÂ@«áØm4ÀxÊö?¥¥á\r»e™zU=nˆ„TífJ—èû(\\í˚g•S∑‘§éÁú<√ÅÊÌÏ=j5õ…Æ≠ãDâ‰yôW\'1ågßzÁú}Î¢ëJ ÷‚gë#èpôL`ÌœÕåÅı´ö]ÖòºÜ%í)ßãn…~PÂé8>ûπ¨ÀiÆ-år¡6∆z‡˜÷üwÆﬁœ¬GI°Qã  Ì9}:“ó;v[\rZ⁄å÷¥â¥çE≠dxI$$°∂å˜>¥ÿQ.Ô-ìsL¯ïé9ß”õ»ì,≈˘…>µ÷h∫b__¡,P \"ìÁ/%1‘q»»«ÁU9r∆ÏI\\§.&7ZÖùõ¢E;\"/˙µ\0Á ˝Et◊~ö€¬V∫Ñ‡çv´£X7#ˇ\0’]Ñ∞çN©{∆€9∂A∆;\'©«ÁZˆZM§˜g∏π2ÿ\rom∏€Ë~¸◊3ìïúKÂHÛO:≈yu®I	ëV2Rq–Á©q\\≥XµıŸëŸ|≥8»Ücúz\nˆm ¬ ¯¿°Ìæfc\"ìåzzW#zèù}mee±›∏›1Àm t¸©B™sl9]é6Ú]F‰⁄yëØÀêÚxÁßΩlh∂€ÂµÇ+x˛÷¨Yô_q q–Òﬂ?ÖTæí≈Æ!ö⁄#MÆ?º<¸ﬁ‘Ì6‚ﬁMBﬂp%êÏ€#ÌvªwÆÜ€éÑÈmMË≈mb∫∏øA«1©q\0u<ú◊±ï∏ÿp9V˛ø≠K¨]bP#Ü3µ!SÚÆ8„◊éıà˚[\0É\0÷îîîu3B‹ÍcÃñZ¬^oíqƒIb ﬁiQ⁄8∑m¿»ÎÕWeÏÑ€é‡?ÜõihRFˆù‚õç*ÿŸOœn¨`ÿ u }k\'S∂öhüRäÃ•úÑcÊŒ	≠˚W√p\\≈2¨å§îlÂàŒH\'≠H‚Kœ[«kz‡£ìï‹Npæá8ı¨/˚—.◊8®Çê≠påÇ∂Ï»w»ÌHöm€Y¨KÜç\\ù :gÅ˘‚ØË˙SôìÌl∞@\\ƒf~µu)\"	£Ñ‹ŒD0$xÊ¨æü,“•øóµîï$t\'8ß[È∑v:¥Óà˘,HfËﬂAﬁ∫›\"R [îñ6cÛ,l9$˙TNØ*$Êµ_Mß⁄ãà§ÛS6x\"±`WíA\'›⁄-’Ê´rm⁄%I‡©‰zäÁÆ¢ñ¿‡É**ë*√$~ú\ZTÊ⁄¥ä≤P#ÀÂïågxêÛ¡“∑tçÛVwlÚ¬\"NOœìœÁ\\™∫E#¥çΩŸGî¿˝ﬂ≠u:^°™_‚8ëcNG\0rèˇ\0]sUåπ¥.Ss˛˚À{D[Å_g~$T‹ƒ¡…Ïqﬁ∏›JKÀ=h$w0KàU‰ÚW∑,	Ók∂óV‘Z9¥ª)\")@[x+ﬂ\'¸:W5!∫ñÊK{´Hd`1Ω°Ïr+\ZTΩÎñfYÈv∂—)H‰IwA?.=ª÷ÿ;ôG|qM”Ï%ÛWÓ6[ÔI€e §ã¥I95ËGMCw Ú¡Ê ÍzåJÊ6}ƒvÛÕoÍP∑ñVë∑F§ÑAí}>ÇºﬂTwéRXÅ◊°ÔW{ËK)ÍÌ?⁄ﬁ%CîˆFj≠¶£®Èœ≠·ä7»d!Ú0{zV˜Ö^Í«_¥‘óÏç1}´–‹0sñ«ıÌK„Tµ∂Ead±_ﬁJ˜,Í\nÖFW”≠sT´5MíŒin„¥I-·HïÇJ¡ægÁ9?áØ¶M,∑r√co:™3¨d©X«Á<ö ”¢ú˘Q,VÚyÁbó·π#°<cØΩu\rs6ò%ãMÅl/Ì]÷v3eCÄ…¡∆\rcSï;\r#úæÇ›£\rdÃúñ∑aÛ©OøÎ-⁄3#,[∂gÂ‹0\Z“Ò(‘¸Ùù‰åI$±6rXgﬁ∞ïéÓ¸◊U‹n¿ù∞√os‹‘r∆Òê$»r3‹SÇ1»®‰foºséOJ∂MàI¶úÙß”≠Eãne+åñÊ§é6ëùˆí©Uìs©‡WOw{\Z-ñùroä2“∂¿7πbN{êîÂf6ZELp™µ\0F\0È÷§3¯\n¨rzR\0	\0g¶jmv\"5RPØ\"•XF	^	ÎNXX2‡c5ßò t≠b¨§-¬†#ÔgìPOÃ8Á}j‰¡£È«„RiÒ˝ØQ∂à„«≠\rŸ\\qWeÕ4ùVH⁄(Z_ÔJõÇ1”÷∫Îá˜71‡úKsÔbGå›1ª˝9ı•’,.\'“ñ˙{ûU*9â8‹?à`˙äá¬æ/¥—ÏV÷Ktí2K¥fF Úéúˇ\0ZÛ›i=lT“ªE©¥3N¥]Oƒh‘mgV∑Ç8∞≤C\'Aìú#Üº„R±í¡í;à\'tı#◊Ù≠°©Ω÷®≥K∂DπüÕkU…E!∏¸á“≥5\0◊⁄‹·îâ^F>@=\0=lØÕdCª\"∑ΩÇ+9bx÷I%˘NÒ¬ˇ\0¥Ô^õÈ¨4ˇ\0	Æ•{p∞[Ω˚ßò©ÛD¡F“Ot=«Nï‰wGÊXJ\"49BS¯π<üzÎ4?\\Íq]≈lK0PNÓòÔû*•%N<◊∞5Ã¨z%Ôƒò\'û+≈ã2¨ÇãrüÍJëáSËrkZÒtçqq∏ío0l\0#w‰wÆVÁ}ñò¬H§ä‰æŸpI®‰gﬂ5õã±9T\'9¿˚‹ÁüÂ\\Œ>—_∞„G’<U©?ÜÌk¿Èv¬DH¢™ÚAPO\'Øn8ÆbÓI G,RàKNÆ$bÿ8„\nVπˆøªQM#¥Q©X’éBåÁ”ö’ÜÀÌ-zaíÊ‚sè(!±_ªıÎœµL(∏k}¡ÍQ‘Ø`∏∫Ç3óÇ» ¸ÃÇA>Ω©m§Ü€UU∫∑⁄ÜE|99{~F°ªµªÑ/¸Kö-∏V;N	wËx™≥!Wêâ3ík™0“ƒ≥≠Ò•a~ˆÛDó%RDLÏO…å7\\\ZÃ◊|<tôZh§Fµï€À¡Ë\0\r∑û‡U]:¸Â`∏dÉ0«<?ZËÊº:°{çf‹5à	_y\0û:Ä}Öf‰ÈË≈úΩ÷üzlw1]Fd\'\r!î˚÷q]º˜˜≠m>mIÓ<áRcèÃ&G\0ï`g©®.û&ò·6∂	9>µº/m∆Pï~ÓöT}¿q¥ZyãÃ‡`ZÄ∆¿pF5©Hó{3éô\'4÷∂A˛¥≈‡`ûjPP«å|˘˝*∂Û…´*àÿêsÉÇ={U5ìi<UÖGê®⁄AÁï/qÙ7¥M\ZÒ’o-¶àêJ $#hSÄs˘÷≠˛≥ouï%î_gú…PÉ∑<≥ﬂ˙◊3”[Z]T«,õ√˚A≠E“ÆÔÙÙæ∑<C,câÜı@vÔ€˛zV‘eQ∂¢Dí›ùgàÏ¸;‚≠:„ƒqE%Ω‹©&-‰~p ¸rxÂßOñæOî±\"3Ÿ±◊ùvPi÷◊wz2Ë˚ÆÂç<ÊvdH•,pπÌ€€öÈÖØÜ 6ó4C_ù>Õ4S‡†òˇ\0ÀTltœz÷µOgiìwdy∫%ﬁô2¬¢9ëN„œ yztÆ˙ÁC≤M\'J◊,î\\∆à…$R∆0—Æ>sé·õÄ©<3†∂ük|uá\"“ÍÏ¯ÿ†8 íX˙c«œ+Oªø“/Ê—m‰ÜÓ a±œ∑NÏ+ÑÙ˙◊ïârõRÜãÛ7É∂å_ŸhÛ•≠ÕºÍ∑≥ßù$i	Ü<Ù¿Õq;8 ≠v:∂ßa&¢ëÿŸãbëta˜_®œl˜˜Æb{f,ËÖc<z÷∏k•f)$äÉi‡sÉM\0ƒ‚E¿8˙‚§@e∏›i‚0Òü^k≠nE»\\ d⁄Iì∆\r#.‹ƒÒI∞Ù èJVÄΩ∫‚®A \0CqÈ]gÅ5Ë¥\rr;Ÿ(πá8uÙ„ﬂ Ì˘?\níd«>¢àª;íıV>π÷/Ô/<;p˙|q>˚f$ñ\'L„∏˛uÚ†án0k∑“>\"xÉB∞X¨Ó#{p¨ª&M‹Ù≈K)ffaÛ1…≠ìçê£{ÍBı©Try¶∆2¨{c•.2\0ëPÀ\'J¸#°´∫z˘\ZùìãÖWÛÅSÇ§7Øj‘÷ó§›Z\\œ™¥»êÌeT„~{gÚ´W6öA‘YÙ¯Jƒ#T>Ï0ÍyÆo¨G⁄rj>S‹|e©Mwswwu+GØ\Z#?ò\núery‡‡◊Y™ii{h>TBK\0pH é≠G·˘b∏–lÂVPeA#„Ê<ü÷µèNzWdüBR>L◊,¬kó0ƒ£dnÓπ;r£∑÷≤Êqîn≤yÄúﬂÀıØS¯ìc†A¨Cæù#^‹3ô±⁄7áÍ\ryµ•ú≥X\\~ÌIåﬁ«8 ‰“©CEbTÃÌ>«Ì˜q[Dôy_jnlsÈ]æ©‡4mÌ◊\Z¬!|RnBNWÎÅÕsz>ô4“ΩÊ‹Gnåp2∏#ê;„é+N/^Í\Z∫kJ˚^V8\'Â˘∫ÁÙ¨„.çkÍé\"‚›≠ÃRqÛsÉ‘c÷∫kkŸ!∂xì»ú)`úÙÁ5CT“.Üê5V+$“3\"úÄppø••Æ≠?ÜõLµúJó{X@@\'ûÙ‰+uÓL•c∏üäa“Ùõ¶˚I,ë»%ò∑Àêp\0†˙VÏÈ–£ìT¥˚BHÕŒ~b@√\0}9˛u√xv¬Ú+[kygïú√5´}¬:Âæº~U–Om™_\\ÕÎlïT∂ådm#Â#Ä:WóèÖE”±µ7±∆›ÿ5¥Óçm‰ÿ‹Ó˚!êê9=3‹å’9Wzú&xíA_æ⁄ph8+ª÷†éÁFüÌ–>≈\'fﬁë…‘>{yÆB H,Ì\ZÊÈ _£+EÂê2ò˚ﬁá\"∞£U…;nh‚ëƒL Úú\n—‹Õ‚$öX‚åHûO∫\0Áü ©›ºoaùÂÿÁ˝ìÌP¿ı<ÚqöÙÏÂı;ÎÈ≠u˚Î¶äÚ⁄ÜU0¨{ë\\ìÇ§û‡˛5C[å∫e£\\∆>@™Y	˘Ä#®ı∞ˇ\0≥§íIÕÃä™òù∏ı˙\Z◊”5õ¥XÏÕ5Ø˙ôUs2g†¸s\\.úÈY¡ËVÔSöÚ…¡ˆ52È˜AêyL76·ék”ÓÙù√Nñˆ ∆x‰êmh.∆\nÆ2XÏkûû˚I‘4yRÏÕm®E xK)€$x√˙˜≠cåÁ~‚Å∆Ãç¨≠˜Å«„L¡œ°´3»≥Oï]™8\0SÏ˚tÆ‘Ù‘ë®ò¡=)ÓCÇ™3ÔQÇÕÚˆ©G%zS≈õcaãì”ÂÎÔM∫óu§ëpò7 gè∆û™íGÉ¡A€äÅQ‘ı«\\‘≠¿†xÙÂRP8®«ÔM¡Î⁄É“óÙ!^Â›$[Ω˙%”˘p∞ ∑ß°ØS–Ìt}W¬V0%π‘\\œÀÉû{+»£Ã\\„Ê∫]2Ê;kΩÀsÂ sÅ⁄∏q¥}¢ﬂb·+3“|5g{lﬂQû)„∏›Â›FƒºNæ£”éµù©G˝£¨∏IÑìá!÷EÂîc\'ﬂ\"∞<?„Ï.]gDñg%FLê{\ZÈ5À¿◊Vz™9IŸ∑m^9R3^D©NóSh¥—ì‚I°”-∑Fç,jR4L¸©í77ækû”.ÓÙùR;ıÃE0∏Í}Î∑’ı{{ã0aÚ$πgÀ…û\0ˆÆ:„P≤H∑·⁄¯>ÏívØk\\<•(∏¥Tí[:øäµ+ËûV÷ßåÇÍÄH«$Ú\rqz Hó*í\\	s∏t¡Ê£π‘Áî2≥+Éë ÙÌ≈f±-Û1\'µz8l*ß™–¬s∏◊P≤9\0ı§cê1AÁäC«ZÓ354©4ÌÍöíIÂÓrzPc±O<«4•Éf%+ê√–˙\Z•ï\0årAÆÀ√ö^çym\rƒ” ◊^pS.O^†cëå◊y˚?y‹“*˙úf!o*∏q>‡QÅ˘q‹“ªM#_¥—ÙêDpK;∞›ÇA\\˛ŸÊª˚\rÓ‚YÑ*∫Ö∫bwá	\\Á8Îûyµc%éßs·pÏU¶;c€«\nê∆7	+g\rQ≠o}so,√Ê∏uŒp+/PXù£ñ5uﬂ˜Ÿªû¯™ˆBòÃÄòÅ’N	£mˆ[ÀÊﬁÏñ…πÄ<úWo≥‰d^ÊÂ∆ªk\rÑ\Z}¨H#D(Œ¨pŸ\0Ù®ıÀ[K4k{¿ÒP2ysﬂÏ÷$Ogk¶xÚ%C≥oT#°˙i±ﬁGsn∞‹·Bd£Åút5Ç£gxóÕ•ò…%çmî ©…˙zSÁ‘¢ª`æR∆ÆºÖ⁄jùî),˚dëcC0‡üz÷“¨-o&∏é·∂?ò:5—>X´æÑ+Ωz¬ëI;IÜé2¨ƒé3¿„Ω_ƒvcS7w∆xUéË¿;}k3R¸öVµˆ!pí	·#é	¿;sWØb’¸	y-Ωƒ1á∫∑dI7.”¸@èÎY&¶õÉ‹èSßÒ/ãÓØuO≤ ÷Hõ|¡1∑‹w‚ù·Ôi˙-≈ﬁ°™_›Ox≥UçâIS±‡ÛÉ^`n⁄g<§sÿvßàmŸëÖ—√XÂOıÆÿ7´3qG—Z≈?Í\Zl_kºx‰aµ„Ó?Sä˘ÎƒÇ‘xÜ¯⁄IÊ[ôò£Ì∆A9È[^m&⁄‚Èı[Vúˇ\0váÄ«9=™o⁄Y¥6Z••úvKp¶~eÏ√Ú¡≠·%(4Ök=N∞3öo^(Îœ4‹˛uïã\Z„é:äö÷I°a<, —0!ácÿ‘[∏ÈS⁄3ôLHÂVQµ±‹};‘∞Hí]NÏÍ?ly7OøÃ,¿[9È”≠X‘ºQØj¢ÍÛ‹[£¸ª˙éüïnhüµ{√˙ñ≥m\"yV/µ£aÜ`N®´ˇ\0Gæ≥∂w	+ZPœ¥ÖﬁF@ ˜¡´\\¸∑ËOªs©_çn¸3Éˆd∫Ücµ#ëA ΩY¯´ko≠È⁄å3ò⁄&Kãy\0S‘»?xbºì√ˆó\ZúÒ⁄¥ÀPÇÈ$ån9‡öÎ|a·¯oÙªmJœS∂∫ùWÊ∂ÖOòWh%…ÓxÊä~◊¢&J7‘Ùo¸F”Ô&û;KØ6r“Â|ôO<ÛYæÒV•k®K5ƒs[⁄;2‹DÒÁ˜„Ø˚π¸Î…<=yúÊÓ+[ñç,≈‰\0ˇ\0xûkzMa‚F’±»“NCº∞a“ºö—™Á$éò4ñß“\Zv•˝ê∏ÜM„\'#9¡ÙÆ‚•&)\'ç£»¬±îpG\\Ø•rzüƒá“¸D“⁄Z\\ùI-%^˝F+ÅÒóåáàØöˆVê1˘…«=;R†Îs§ˆîZ∫6µ≠B◊ƒZ⁄˘ÈN‡4≤^ß˘Tæ)“‡“ÙÙïıKKÑt(„è\r¥Ü¸kÄ“Hæ◊ WP®œí•1‘ÚknÛW“ûÊÊ XŸ#%$˚ƒèQÈÙÆ⁄ÙKI=å£.]òg∂-*‹ÔTê…Î€≠dÀ0qú‘öç‹7é÷Ò¢\'Â@rÁU	‡˛uúikrÓâ.ëHWL‡ésU∞<”ôâ ¢Œ8ÆÑ¥ìqäD\0‚öØœ<”‘‡ë@∆:qLN53rj\"∏9¿\\g4bÅ”<}(äC»•SÍ(\rHAéÙ¿G‡S†rÆ9∆{“`û)Ñ`˚“{XB≈Œ´g4ñ±\\àô∂∫#„lüü~xØP±ôdÅ£’-‚iSlõ¶·âˇ\0eÖx~ï$Çﬁ2Œ“£Î˘W°Ëów˜û µ∂x$˘%Ú∆H…Ô^.õR-2Í˜⁄“‹∆mm”ÂC\Z`y…ı5√xvA≥øó&ÈòFÅ»bp:◊–˜^\Zöe‘r®ñ»Cπ\"⁄7nŸı‡(“Æº=ÆÌ\nø)YS6;‚ØSûõV%´=M›oI’-Æ÷@˛Ò…Uu„µE?Ño≠Ùhuo9—Åycè¯që^ìßÈê¯£√ñP]\"wñ§9˘œT>Ñz˙V∂ó¢G£iów§G+pBJC„ëX<Kã◊°ß*‹-r)Æm!∏iÃ £fYp¿vÕs§{◊ª|@Æómbè§)Ò60ˇ\0|éåG≠x\\Ò4N»‡Ç5Î·*∆§=”µá\0ÉL#øjΩœ‘ÄL‡PÂH@ê8¸®˛¢ìΩ*úèzB94Ï”JWÊ8µfH≈Â›ÔSﬁ]$ëI.ú\00qœ“≥‚î±=\rs&irÃÑÒíyË*	Ñ8ÔS<†ÄF	§-Ú˘”S=-›‹‰ÒRãcs“Ø W^\r9£ﬁ\0¡ÕP RD∏\'<’tL±˘j‰∞ù§ÕT⁄Îû(@≈1Ì98„•ËFƒ2åÙ¡®â9™ª∂ÁŒi4ö∞çπâm\Z/-¸‚¿¨¢C¿Ó1ﬁ´Í÷äñ∂≤«qºH3∞åÏjX·3\0\0;±∆^M{ªtî8t\0‡·>Ü∞vãNˆ&«5∫I˜õÈO‚;[˜´≥ÈÌa≤TR+Å[^˙†f{¬≈ÜΩ9QÅv%Å©‰ájÇs∑◊R·ŸNIQ¸X•{ËI±k-ùÏÇ)X©˘è=œ◊µYí…\"∂PÒ\rÆπGòú∆±¥†èp≥O(é5?1+öÎ¸5°ﬁx°û∆8.FÖ≠Áv⁄†É ∑±œ÷∏qîZkb€+¯kK–ı{∏ÙÀ›)Ñ“H@∫ä‰8ÈäÎõ¬≤√·WC”L4gŒM…µ‰\0Ápnáé=´ò∑—µ8|P∞È∞¥v©∂ygb9ŒpZ’‘d◊º?·Îõ´KËn“Ç“»ü3F[®>«ÚØ*ªr¨¢ß€G‹®≈ı8ÎùkRñÚz%[∆!2∆¸zë˘WW¢…´¢ﬂ‹ŒËﬂg˝‹6“›î#ìéáÈﬁü´Î∂\ZœÇ#πµ”í[è0E42.YèºÑs€ø≠qñví¬¨Ú‰cﬂ“ª©π‘§‚ó%ô*]àÓmbÚÃÚ!Q,õÇØLO•G#≥ƒ•#o%NrCVXÁ≥ ˘‘„ñ‡aPõ√ˆÏaó?>H#©˙◊Ty¨;≤Òºù¥ÿï§&ï∆O^ÙiˆˆJˇ\0ÈÀp±ıo\0‹Á∏=j+€cf†M\"À ‰Ñ?(œØΩV{ÀòÌa€4Ü‹Fﬁ©T˜◊∫…~F‘qMx ∫óÀÇ3ÄvÏ~ΩqÎ]%∑ÜØ5Fø∏‘u(≠#T˝“ò¡2(Œ}8‰◊ˆ∆∫’îÔ<†)i∏#üj›ÒΩ”Ù´8§’mÆ\"û¥FŸhÜpFzÛ\\í£+˚∫\\ŒŒÁrÔ<“ç¿™1=iãç∫{‚¶Öú◊(EYí(∑ê€áÀ˜G8ØR3j…\Z7mää.M4¸ŒO8È≈a~@yœ„KûÉµuB:jUÜàÒ«ÎDü3r\0≈<∂\0˝)õÄäª\0ÉÉAu<m˙”ˆÎH94ë0OJsO•FN0O<R∞\nÁ5`…ò∞‘U@@ø\ZTcª?ù;?òΩb6UNN≠S€ñhë∞˙—`rÀÇ¿ÛT	=qS∏›èZiOñãj1≠€‡∏»∆*™≠_µ⁄#‰¸‘òKE\\¥viËªH!æ¢°‹:fù√TÅ†G°˜®_!Ò‘wßƒ„∏©\Z,|ƒÛL∆Ωˆ’Î`iKNÃ©€h…®`Fêà„]Œƒ\0=M\\ö∆‚›ºßâ£l%Ω(≥bltë∆U¬NN”Ä§`ëZsÈ∂zE≠Ÿ0˘7\\(fåg®=>µéK4‰π‹¿‡úı´ó/%≈™nU:9cí«•/vﬁÒ.˝R8b∏(Óë#ƒxqøÊˆ˙˙’i-sh,d-¬c®´∂ˆ©Ê@`Iìíƒdg”˚ª;π\ZY∑¢0‹H/ù†è˛µaÌÏã≥±Ç!#Ü\'9È^ìﬁ“;{k≠JLØñÂñ⁄éπœ5Áv±Oytñ#K4çÄ\0…&ªx<9w£Z˘Wí\"›<Ñ4LÕµÅÉé2x\"≤≈Irrﬂr†¨ı=VÚ›/¥Ÿ·∑‘^RÍXÒΩ–g†ùyæá™M§Î3\0]ƒëò¢ €∏…?wø\"∫Ω>XÂ∂∫∂≤EE Å,d·áÉÇr9Ó+:˘^Ú¬v≥∞TY#Ú‘„s)Ùæq≈rE®≤úlÓvKÊì<”£¨WeF’b1ÿû9Ì^}‚®‘!±∂‘!ºfM…±Äÿr§˛qY:áâ5e≥ä÷⁄Ó·T+¶’aÈﬁπQ<´<å≤aü ∞<úı≠È·Ó˘ÖÌCRÍF∞xëÓViDa%jÆs∑?ë¨YNd,£ÌR©Œ23ä5éΩ´∂1±õdjÿ^ZD`3Ä«ìO›Ç\\ätÆè$HKó¬ÁÒ˙U=∆§Ü÷ﬁ¬6çÒ:.Ï‰Çˇ\0O•zèÜ|/c?Ñ\ZY`∂ñÓ·§êåû9ÍGûkÄéõq´âu2àè&6¡Y	„ê{µÎˆvÒ•Ûƒ7≈‚ÕnËcÈ^>&≥U=ö_2ì<´∆^∏–tÀ;Ép”⁄ÕpL»Âã©\n;é3U≠¥π#—ß‘Veñ÷3òR>Ws{v≈uma[xDqOqpí7ªaUoN+Ä∂}Lims∞iÀy˝Ï}Ô•máõ©MjQnŒTë&Å’“YQHì\07≠Z£gù1ü\';∞xf≠B÷ìYŸì$hÖó<Ó…È˘’[}\Z„PìÃGP=	Êª£ÓKπ“iWP‹\\¿\Z·cb\028=qŒOÆkæãMÚÌ`∫ÃL \\Œ0«ﬂø¿i6â£	ädh3É”ë]mıÕﬁë<±≈,rG9∑vCdvÙ\"∞©¨¥kjSΩÑ,Ú‹@◊EÿD§ÛÓQXvÃ◊7—I7úFNÛ*∑Ã=Î{Ei\'∫ÜÅV¡«•E´^8êC\n9,0J®=l=ÀQ©Y$RJ<gqÉûúı®°2+ñR˘\'yÌ¸´väRë0åÀ3ú‰˚TZ∏v@Wh\'Ó÷©_pC÷ˆÿ]†∂s≠ºx$å;ê=I≠´}q9µä8√\0é]v÷L6íV∑MæSÃHÓ≠Kkl™À∏t„ä^…7rÀrHQKR›xÔU∂¨∞â\"\r∏Á*«˘SÓÓ÷7ﬁÍ]qÅŒ\r`]ﬂI´4e∑(¬ë‘UŸÙkçQ…iw\"EÑ$éFBÛ¡Ø\"∏¿∂∑“€$â0åñ]ºÉëúÁÈQ_xíAx oR0Œ†ÛåtÈﬁç.&‘&TgƒúæΩséiFÈ‹OSÕp ;e Ç;“#I0˚>√,í≤BIaÅ–{V∆±e,ws(ç#â[‰/„YàûVDj≤>√◊∑∏˜°≈Z‰3R/IÕÉ»-€˚$~ÁtAZeœ›8¸qY∑^\'yµ-BÒ-ê5ÓÌ·˛}π9‡ûï·ÃÑ1Œ“πæıõsk,a%ÿB∑CÎX∆ç6ÓÓÆñh„X‚HôIﬁTüõ”èoÎP\nÿ#üjåæx¿ÊÜ9%óπÈ[⁄¡b€∏0ÎéîÆ-⁄ƒ∏g˚NÛπqÚÌ«\\˙Ê©Çs∆N:”ôÜ—Çy“∞ˆ†ÅGjpM›´D2∆òÎ•m#Óÿ≤)m£$ˆ≠Õ~‚¡.ô4°\'íI;‰‰∑∑∑z√ÖZA€öô\\Õ.ON√“±ú9ßÃ&5C»£Á“ßKW¬ú˜≠k1¡SÜ«’ÑãÀbO8≠c÷-ÎÇ0}1R§^R6Ós“¥¢â]ÜR°πèh#Ú5vFÏ\'Ÿcìl’xQ•í3Ìa∆GS≈>}€Dl~L‰\nu¨l≤e2ß™-e©Kr˛è‚K˝Ú)y\ZﬂæáwÀ Ó?öŒ÷$[ÕZ[Ñè`öM‚59⁄ d{V≈ñÅ4‚9ÊÜAh“li#é}ÖbﬂYΩ•”™¨Ä£ùªîÉ◊É\\ˆè7ªπ-›ëºƒ €LQó˘Oß“†øè…ªï\"∫˚J JáÆ\rK5‹≥YeôõÀ9çHÈûº÷yb>R8#Æi¡;‹w∞F0‹Å◊©≠ËÔQt®aâB2«qŒÊÁünJ¬ÖK7\'cöΩ±ƒáÀ, é>¥Í≈1\\’‘ı6ºµÖe@$\\sﬂ‡:¢—2J≤0(≤.A#Á5IÆéÌ‹—%€»†;30¿ûÄt¨„OïYŸ°hmûmìoÇ¿éyÙ≠ÕUº˚Tÿ¥‡Zπ∏\r\n¡¿∆ÔßJ„¸«!±«cWl5)¨ÔÊ:`„4T•tg¨_k∂∑z]∆Îò“Ï\'1·‰cê€ªœQﬁºÊ˙gøûG*Uy\\∑?ØzñŒˆ¬Ú˙g‘Lç∆Ï€\rªÛ•‘µ¶o.ÿ®˝“n;1í1¸π¨©≈≈ÿOπÑ≥K…⁄√9éácQ‘.oÆeiÓ$-) nÖæüçVêí„ú“Ñb¨“áÒÆñ¢›ÿjk√ŸÙ;k°snÿï¿àÊ/CÛ„“≥ÆeI•f%ÜO÷üow6ú V<ƒäT˙gÒ®.\Z-ÚI˘Kí1ÄjzÍ•ÇåÒÉ¡Œ˜`/ÅR˘ò^ùEB˘lm# sö¥ªç2%§œl‘Ö0°áSÔDc\rŒ*ƒí#Z£ ã*Fzìﬁ©±ê‰ñ<WS·õ≠œÌGPüÏÚàÿç¿3\0€˘˛ïÀóÛIÈ⁄∂,a∑÷◊p°ñhŸåÎ!˘H<.?Z Ø√®‚ıKñÜ·	%∫€˚ß-¬ıŒG~1[zùß˝Ç˛Kõ©lØs*M≥w˜Å¡Ù≠ÀO\nŸ]iû\"“ı@Úèõ\0P<π?&?ÅÙÆW\\±’¥ãò£’†í!(*q üJ™XãMF;ë8Ëgi\Zë”/w≥L÷>`2Œﬂ0éÉ€úWG®xñ√Uë¡lL ™H˘≤›zäÎ≠<§>ìp–˝ÆÓ»<˚)ê\Zßâ}c≠r\ZØÄ⁄◊F”n-&_\\â$öp#U]‹zÒûzW]|ù§›ÏDj≠éØIÒµá√´õ`F¬˛6˚4—6Á~¯Í≠–Á“∏˝GL∫∏’4¯Æ§Üﬁk≈I!ëò¡$«†<W*LË$.™y`OÌ≈LoDDëÀ∆?ÅçsUÉj*:$h∫≥¢π±[˘˛«s∂=@!hÁåçå<:t¨M7Vñ ‚Xdç%RÑ0›å‰qÔH◊B‰6£q)Ü,H*O•g€óô«ñ	î∞∆:É€¢“‘m‹—îƒ‚îdÛwlh¬„ËOcUÔ@7„å¢?!Go•h[ñ”HÆì…πqèﬁ\0ﬂ{Ü‹|\r]M`⁄i∂ˆ”€FÚ€∑˙<ÿú¸ﬁø·Z.Ëìü\02◊EÌﬂêj’Ùà“;!À7/ÅÅüjÇﬁXóôF8¡ı≠Pà¢BŸt´Q™!¡•IUÄ˚√\"¢YÑrÂï[=èJb,¥í⁄Dƒ¶bPä1YÛVçñ+U˝jê–äv{VÜù‰K7ì1PÂO}~ïör;fç›©µt3µ±M-ÙeûÒÑ∞∞_*\"89¡˜™âaØ®	@“òƒJ~q∆r{b∞l„ﬁ\0ñ\'\næµ—€ÍwÀaye2â£í<:2ê|√–9Æ	”pìiÓUÓèFoã~¬öU•ÙÖïe$|¯*cwΩv”SMN@ˆ3G5¶g«Òz–˙\ZÚm54≠g¿\Z,:ú)jõ»Êlëåıú\ZÊ€W∏ñ≥ˆ3S∏ÅJ#$∆Oﬁ!∏_√“ª©‘åó-ÓÃúZ;øˇ\0d6°˜U‚Sÿ¯8dbπˆ‹“ºr⁄;ÑøIì%∆Ì¢LåìúsﬂVûµÆÎ6å.&ô.f$yr∏œÀípGB3É˘UÔÍö\\–%∂ªy:…nDñÌy÷3˙‡˚◊LÊ•∂±öãZê]Í0j∑P[-≥EÂZµ∞ä›w;∏\\GN9™In4]!‰ô«ˆçŒp‹æYŒsı‚∫›¬◊û ‘ØÓtÁÇ’nòÀ±LÖÁ±´∫áÖÙç\nÊ⁄ˇ\0_wù#.≥€F‚A„Ù«Õ¯‘Búyn∑)\'©»Õ=ˇ\0√+À6ª±¥∑¥d€ñ7‹1m›{0«jÁ<=‚ªX~≈|∞ß?.‚<èCÉVgÜŒÛTDâ\Z=4Ú‡6víÁû2·[_	4ù\'W÷ØÙ˚◊+;®˚;dÄNp~’ªÈf4Æô‘x‹ﬁπ‘V›~…m\"¥–Ó?1¡áø¯◊qwßiRÍI™BÔ0∞ ¿*|ö√õ@T∫ª∫Ú≈≥»B?î€VW‡êÀû=xÆí˙K!$/$r´¿ëƒ≤m¬?pÒÊº«’È¶mF‘‡|tœce“V9‚>\\qé\01*F@È˙◊ò]iè wGà˜ù¿·.ÉÎ_MjÊ–îKãXÂøñ2j1^såˆØ,Ò¢%æóxUZ÷Ì¶HÆælb<™£∏ı˙W6≥ß%´Iı<m˛tlrg•EŒí#+`©}jÌ“G<©ÑæbÇH∆zè®¨Òå‡◊øö2:ßûÈ^ïaú>e `∂yÊª;M:◊J–í˛ÿƒ”¨ëÀn3ñm≠Ûdzfº›.[ÜV<ıÕnXÍÀˆwäYH¡5‰Wz2k›4åóS–ﬂQ‘ºUwkq{\ZãQ T@0É¡Ë=™˝∆ám|◊6riûh∑]ä>Nπ9Ì◊5É£xóHXRQ$ˆ◊\0g»`dÜ«lÒ[ñ˛\'ö÷O>[ñÚÊb¢BÄ˘ÄıˆØ¨g	Z\n∆—å\\O5Ò&ÖáuA$≠ª;íU√)ˇ\0\n≈…ŒOΩ€P˛≈∫≤[ª»†ñÊ)ïÑ®Äùæá=´ <Cm€e∫ÜDy[Â¿9Ù+÷¡‚‹“å˜0ú-™9œ‚«\0˙˙“o˘JÄA©d«q»ÈQêq∫Ω#\"HŒˆ\0z‚•X¡V~jÆ‹61öC!$åú{–pO÷ìÁw≠\'’ä„OcKé2\r∑≠g@É#ä‹∞‡¢Gy$Tc$üjƒ€äÈº1iqu4M#…&@x#ÎXb\Zå.R!b÷wJgÄ¨7!O´3⁄=√‹Apﬂfëà7Â¢b3¥÷ó≈∞⁄√©&Î§öit·1∑°˜ÆLÀáQ`BkñU†§W5çÂ‘”ÃKâ°H’@BÉ°˜≈gÍ∑›\\»\rä«;TqUV	%òqÛ‰öÆÎÛ/N+jt!q96FN{~T¡zp‘…ÈÕ)Œ\0…„•têEê:Qúıß2åÙ¶ëåbòFÿxßm©Oh™ˆ§≈éÀ8\'Ò¨µ\\∞\r≈[è1>cea‘dVu\"ö≥)3]ºU©H≠∑ŸWÇÑO~•S’ı‘ÓV(B °pß9\0c\'ﬁõu®-’§Qx–«ú2XûÊ®`2Z±ßF)ﬁ÷eJW5≥AÀ‰\nÚ„Q∆Np§Éépiå!bT‚ì~és[€π-Ì…`ÿ\\Ö≈6H“5ècg#ÁÁßµUﬁF=*XCH¯úT⁄√$g\r)¶`j}:„Ï˙ÖªHåËí+<|ç¿î’ù ëLlCÄF‡)ãw∂Í9U∂H,y¸j\ZÊMcº◊|Mm‚Oi7:Mµµìlër†F‹üΩÌ⁄±ºW—kwë…Ωª+ÌÒH]~SÈ\\Â›Ãí]	$õ(\0˛≤».%idƒl8ÏMs”√{9&ûâ\r Ë⁄ãO[ü±$ˆÒŸ˝¢A\0v?õ~¢¥µ/€¯r\'ãPâŸ‘í&R\Z9W∂=:W%u®‹‹≈R»YcÂA=È.uKÎ®R9Ó^Uçv(cúJŸBm≠t%≥aÔ¢c2/œÌqñQÿfßæ1ﬁÕˆnñﬁá˜o 8‹9¡√ûkñIŸØF◊z§∞∂|ÈAXë;üAÔ[¡(;íıFvÊõåv©\'VéwFR¨¨AR1ÉQÚHÙ5E #üj#ë‚ëdF*Ír§v•#èzh‰–3◊>j:’≈∂≠§zqéKu2˝¶F_5≤Fx˛.z÷wà#’´u•ﬁZ˘IpÕ>aô8WVÏ?ïk¸∑≥’,u≠>[íÍ%Y°üv6‰è¶EoË6\ry„”µŸ¬	¢2Ck+)ËxÁåÒﬁ∑•§ZπÑóºyFµ·õ›S˚$◊ÒºûBÕîKœè´⁄ÃZ†Ç;ï¥˝»±è˜1\0›Ω…äÓºQeßYÀjm€˚>ˆ‰^îcg$Á~Ó1ﬁõ.Æn4® ‘iwqskZçº1dﬁåúöÈˆ¶Ñs7π‰⁄l5ƒ∂…p…\ZÔëQ±úw#∏ÎDÚ¥æJÕΩI7#®>ü·^π¶hˆzÆßã	!±F∑oÙ;î‚5√n˛ˆÓ«éj_x6Ç\\ChÍ÷·≠g∂MÅv‰∏aúsÌﬁπ\'Ö|ˆπ¢™ö<LÍó€„o¥øöÉáﬁr÷≥ÂbÌ˜HÁ;Ωj‹÷ûT«s\'$7ÈPﬁLÚL˚óg?w≈s∏∏≥T—]&x€Éëﬂ4I.ˆ‹@¬£ ıŒhOﬁ4Ó=ﬁ3“åÁûqﬁêîÏ\r |„Ù§Àd\ni€∑Ç)JÇ£®†°Ç§\0´öq;OØΩ!?(¿≈7†9ÊùÑKÄÎ√Hé¬ôª:RÓ«÷ê–‰Êêr}ÈKG4ÑÇ‚Å†Œi‰æîå§îÉ∂i\0‰”\\wßï≥JG-ÑÚ€›G4.Rhò<l;0‰W≥hR>µßC©«J¨äA€&p‹vØ£‰uªü¯ßQ“5#ä≈ ó˜Ç)·‘r+èKû<Àt8˘û√y>ß£€o’\Zaﬂótªîûò#®=˝+√¸Av.ıI§åíÖé2{W–6çé4SÚ†ö>^ﬁ^vdt=¡Õs÷#MAæ’ÂŒò`¯fë¡S‹Á±Ø6é\"4◊ºµçŸÊû’ı=3Q`ËﬁWÔLræÅ◊Çpz◊ø€ÍpÎv1O$%ßÓªxêGnkÊ›R¬„¬˛&íﬁd˘aóï?ƒπˇ\0\n˙?¬öE•∂ûÚŸGÂ…:,±2´⁄‹åZx™qìO∏‚—f (¶”&7pDÂî!pÿ¸z◊Å|JÛZjç}%aõ‡t>¯Øx’·’ÄÚRmê±e\\ÏÉì\\∂•·Kªã;ª;˚†…q»ŸŒXt˙W=\nˇ\0Wöczü5„kRöπ©ŸIa}-º´µ—à#ﬁ©ÉêkÈ\"‘íhÃk~¥œ&úGòz’néµ)4›‘Ï‡\n\0Ôf&I…lÛÕ@âÅ¡5$ÓÃ~nµIÚr;◊4v+©$sH_ÉVK»≠QB®´qÃã‘¸’C5mòÀu•7H	èj…{ÕÉÉ÷©=€9#<–±π=Ãy‰ÒBœØQÉÌ\\ÛI$úÌRZ≥ñc¯”∞\ZægŸÊGÇAœJﬁåËZ§%Õú±Œ©óÚÜ6˚„∏˙V4€\"∞‹TöÈÙËß’¸Ê∂vA¡·óﬂpØ;¢R⁄¬nŒÊLfﬁŒ–Yu|`⁄õ•søscº·á∏ÆöM∑6Kqƒ-†Œˆ=€éqUd±[∂W‡≤qÙ¨ıUWi#FóCüπú› ÃbTsä§l$ñö(√\0p@Í=Î¨˛Ã2ìà˛P9„ùE5¥v{n-Ÿ»*wåp§{z\ZÎõ‰ç¢fŒU!d∑u¡´Ù ÷a|#!wX€ƒ}◊ø‹[Ë∞jqB‚Ó8ãÀ–-r◊ˆ≈v€∫ pÀ–èjàŒ˙ì°ï<`H“[≤Fëí\"f·‰≤=k¶—<YÆËãlD∂Â¸∆åXu##Î\\˝¥Îm}˘jÂ[î~„“∫B_∑i∂cN%ÆD¨EöaÇ)=π?„Q:≠I)-lÿ∞Òò\Z«õ˝î–C!,v!bÍyÁ≠Ms‚⁄Kà†∂∫7HÈéΩr:ûkà]h€‡<å$|´ÉËI>µ–hû0”‚≥∫Ç˙ŸﬂÃ $ô›ºÙ¡+ÃØÑåeÌ!˛dsX€≤π—c≤ûŒ«}îóP∞_¥ßñv\0˙◊3Ü£ë&Å¶í) ÉmDá<ÆÓÄ„•upXj⁄BM	FÇ2ƒ∞*…<Ó=Îãé Hn{h„í∆#ùìMç¯8»ÔŒ+L4ó+IµÍ	îµΩ\ZÔFûÿ	)˝Ÿúé†é∆≤Kñòá$Áé1Wu+Èç·8ù™«~–{gæ=j=Â]Jè)FÈ.‚£=k’§‰°ÔjZ}ÕE∑Û¥‚ÍÚ;à›ÔäHÆf∏—éûí$Q˘ûc+ÀCå8ÌÕk]¨)¶i—]Í¿Z,≈F0£=_r{÷˙ﬁiSÈ:5óï.≠`∆XÊÚóÀîw\\ı9ÙÆ\Zïûˆ”ÚHÛY¥ÀØ*9öUâ⁄q¡≠V2Õg<Ë˘ﬁ†Ú◊È[ÚÍíêHAñ KD8R	¡«ßJ≠eumqg,)k$L3ÜCÛ‹‹}kx‘öWdËér+âT¸ÆGqÉW[ùCê¨Éåzµ©€√‰Cˆm1·ﬁ2$/∏0˙Uã8‡≤”â.<Ÿ«ß•u:—ÂÊKRõ[îaëûh“ÔsDçÈœ”4«∑o5»˘bÌcÈVµ—s7ùÄI«#äœπñV¡ìv;÷‘Â9jÙr7mœ¡„<PHÈQë”ö\\ï˙÷Â|v†gÒ(>îÅÔ@\04á „…•œsM˚«>¥\0õé¬ì8¿Á<Rwå”T$d˙S…sûîo\0∞\nvéE5éW‹“ÍrrN*RõáZ™	S˝*d|sÎÔLlb˝*ƒ@Ì\0éGSBF_ëﬂ“ØGoÖ¡‡˚“lc^sÕXé2ÇpzT—[†å’∏Ì‘ıÌR ÅH#ö∂¿Œ1“ï(√c⁄â@Ô@æ—ﬂUÒ]∞ﬁ…\'Ãë‘î~5Ÿ|D”WÌ2›¿≥˘(õ%Û>U,N=*èÅ¸?w\'áØ/cvÄM*° ·Ñc©˝JœÒﬁ°s.∑m°Ez“$\n¢Vë∏2{ÛÿSU-âí˜ëèmß1Úô·&7{ˇ\0ıÍS¥A\ZÍ	•Éïé7)“ª\r\"k6é\0ÏÈ\ZÖ}Á¯Ω}+f‚m2»|±ëò›÷<É◊∑ZÛ™WwÂe;lpˆP‹\\‘,¨¡ ƒﬂ0„π·Qº◊I±§÷À∂Â≤¯¡Ü˙Ù≠A.Ö•›⁄irJ÷∏S$â6èÓìÔ\\^£~≥GñäàaÛé;˚“åµAmi∂R€ÎøÈë¬˘¡∞\0>˛ûµÏÒY[mJ˛HÆ·%`Ã· ˆ;XvœıØ1”&ì_KxÓ°Ç;KtÚÄC∑$ûœÛØL“¨D[[Ÿ€^ΩÑNA7-ÚÔı	äÊ≈Kõ›ñÊ±á1{Sñ—-ûH—R#CQè0í9QÌÄG≠sW⁄Ï:nëu§‹+€ﬂBÀ‹ép93÷ª\'”Õ‘»ñX‹02ÄT‰`v™óà41´Y,ƒ«>\ZH€è0ˆ´8ª\'∞§ù˘O\Zπ∫û‚o¥Äµvå\0ZÀí“h˛ráo\\˚W•x£¬sÿ¬◊ÒCŸ9E‡Æ03Å˙◊\'—)9IoÃπ˙≠z™í—(∏òøÕéjpÎ!ßßº|9¶≠ÅΩíˇ\0ÀR†Í™ˇ\0›n˛ıÃôîæ›√É‘Vë®•{2r…>÷N{é’‘h>æ÷`I¥÷^|Ã0]´”<ıœ<W7=£NØ(ª3H∏U«?ÖO†Îw˙u‹f-BhR>JAŒ1˘‘Tõp|èTMß¯gT“¸@ˆëÆÚÑîwOëà}+÷¥{e∫Ç‹‹ÖF#}ú.q”ﬂÃy∑zŒöÈ\r∂G∏0ú∂	Á$î„{÷ØáBµç§qÃÃ´3»S?0„üz‹ßZIœ†„‹«ÒÜØû)ÌTèÀyå¬9X(\\ì¿\'ë⁄º‚Ó+®neëbï-£aa–6=kﬁoÏ·û—ﬁÂCe~r√$t9ùy_âÙóÜ	·KŸ¶ä6ÛYq”=3ì÷∫pUW;ÖäQ0†’Ù…Ì|¡!Qπ˘*ß•OiuqR$17¸›™ﬁìaïR√Ç‡0ÁépjmíﬁÍTçÑë©˘[¶kÿIlÑÓMm⁄F≥Õµ¥π_î˝”V¨w¡Õ0e∂no∫*Kft≤_µE+Zñ˘ÇúqëüÛﬁØiœo::¨\nëÑ»œ%O±¨Â£\'ç˛≈n‚,îr8lå„‹t®÷%í6ëÇÜ\' g8¸{‘ª2‰ú0˘àÈèÒ´ÔfÇ÷9$Ùsé¶)-,RFbFÆW*p*‚¬§.#¬˚UÿlB™∂wFŸ…¥Êãb„∏≠÷•Z≈]Åê™Ûﬁ´¨±¡\'ÃÖy‰ì–T◊N#Låg´Wív(Nw;„Î@öÆ§ëŒÍ_˜mí	«ﬁﬂª´≈ñBAÑ˛˜ø∂+O]˘vXßÉÔ]áÙÀ[BÛ√∑\r Xò∏≈3‘cöŒ•ND\rû{•ÈVwpG6¢ì·‹\0bañ$„o◊Î]ÀxJﬂE∞öÍ⁄i√à¸¿»@9˜…¿w√∂Vw◊Ü÷h·â¥Àüﬂ2∞À\0qú˜Âk3‚±6ùg.úÚH≤MÚ»>@«è≠sÛJS–].‚a:H#dìÊ¿‰V“FeÃnxËM%∆•% ¨n°c†Ôı™Ádå ™X	<W^èBZ≠›Ïà∑¥õbÛ–g8¸Íù‰◊∆™ @=	˝j6FVäØÍ;ãôß€í;„˚«4îÿhX›Rÿ‰)fıÍ**π{c5ú°.!hò¢≤´H# ’h–1 ìBiÍ>Äò„ö{Æc›∆q“û#Ú¯ 1«Zç¯R1”•+‹Hàìœ5(nò‡‘@˜5\".Ê´Hl≥Èﬁπ´ˆ∂YPO∫Tkì∫!!+Åœ›>µπma$ä∆(ô¬)f⁄:SMnIN›qåUÿ°‹yöµˆé$c∑ ÛÕXD˘1∂©#∑@ÉÅ∫≥ıÿ#üJ“;êt8≈Rº˘”Ê¸ÈÇ9ÈK‡qZ∫£‹\\]ª∫Ä‹Á\0ö¶b>aÓ;\nŸ“•K[Ç	ì™\0zVu/ ÏZg]Îh˙s4`º1:øó6E<tô•r\Z÷´ˆÎ˚ãµåys;ì=3ZÚÍf˙Q5ŸY0¨°XÇAÁﬂµcH÷ÇÂ÷B$PÑ€ª–ë˙◊)Ÿ›≠E{ú∞íeëæDQ—ú‚≥‰Ñ&Aa¯VıÏ»!\nB˝‡J√ïîûï”Ï\"«v»elnû›gXãFÌ¥ÎT”x|m%A…“Ø]jBI‹Ÿ§ñ∞0P\"Åœ\'‘‰˛44–ÃæS. é‹‘Yì«4÷|)…ı\'≠X∂≥i ﬁG=sû‘lµø+”£w;Iß…ÇŸR=®BÁø>ïI¶ÓJÉ«ÁS⁄‹à•EﬁÑÂá®Ù™´¡¡„Íx<ßﬂÊó\0!+¥Ûv⁄î¢¨P˙∆Åu¶[Lxn°äC±7#8+ëËE˜zri—§Ü∏Â∑*ÚN8Œ{rz{W&ªæf$®Ù´9hŸ89#Ên´\\ÓíÓ#GRΩ∏ºñ?=√¨i≤1Åî@N·ö†Wll†pÿ…≈L \'sÔV¡¡§ñ0ë\rù›0kh§ïêö+±\0\0Fq˙Trê	a◊“§8a…¸*)3¥qüz§ÆR\Z÷»Ëk_˚T–¶‘%ê ÿØ_ƒ¿∂3Ù¨t˚We‚mb)¸+¢iq¿πä›ÃF8‰‹TVî¢‚óRëƒÄŸ«c]wÑu£‹ô|¢∆H Î∫=§‡≥/pzwÀ™‰„+”<+a™?Ü#∫[[)¢àI$rL€dU\'ıÀü„X‚¶ï;1«rñç„G–|]™,7åtÎŸ≥4û@<Çp·Ìì≈zL\ZFìÒÆnµH]$EsÅX(˛ÚûØ“∏∂\\∫Õ˝ı’ﬁìym4ñ≥H†≤‰Hªpqûy\'éıÅ¢k˙ØÉu6{yº∆\r.@u⁄x#åW+¥ípz¢˙ùŸ≤á¬⁄≥¯^˚Yæ\ZñÏ AÕªú€»˙÷¶£‚çÀB\ZeÑ6∫ƒ£Gç∂∫Óyˆˇ\0\n„oıù3_”_Q±¥πÉTµóÄdﬁí#x?wÉ⁄≠hiˆˆ˙µ‚€Ã™ßÏÌÊ∆§[yÄç‚N˚zèQÈ^æ¨ÍGïÓéZ©-QÁ∑\ndPÁ‰é@c5ï38›ÎäÔ,º5cvYg>DÀµ6ú1b€rp2=Îãÿ-nfèÔÏfOÀå“ïÓhê+ylvrXì–ädQ˚ÜR@~R:ÊßÅVI\"0Ãp>ß•Zæ∂6a ∫8aÛ©VŒ{b±r≥∞ÏVkôßﬁ4ì;¥±Œ1≈\\eH-\0ë‹ô∆W®0∞Ùı®bDí≈Äy„\'#úVÃ-pÒ]Fè≥sΩFvéáµ\\—H59¡9À6s¡®ç´!8«≠kÍ\ZM≈ñ©-ñÕ“©‰˝*&a\0¨÷È©ß∞¨SLòˆ∑Ù»®Ç{w≠` S®ÏjÑ©Ç\0ns“¥ñÚ(&5 <uÈUªëûü≠JrWnN3Q»†G#4A\0ÀdP @„Ù•LŒpjBÖõÇ\0¢‚.iN∂ì≈{»”B¡Ñnßèµh>¶ûFÚ!›.7^F?•``®;Hœ•6>rp*%IM›éÁ`5•èGZ;√)îël§ï\0cÊ?≠QüXø’ıtv…:úÆû√ı’¯gH≤‘˛Fë1˛—{÷Fë#‹bN:˚Î\\úˆW\Zπ4L\Zkvl:7ıÈG∞‰NHNWv‹Zµ	d	ªb´ºzq˘÷◊á≠„’aHR‘ªqÊH˚∞]F_o\\”¸5·ã≠rÚymÓ#fÀÅÖ‡z˝q]ˆü⁄È≠⁄Óﬁf∂ª√E N„åıÎñ¶&˜¶û¶ëÖµf4\"‘Ù´uáJÖ·ÄπàÓm™O_z≈ø‘Ô|CÌŒ°s?ùn©Â¨@êO ìÔF´i®ÿ^µêªb¡&˚•ÿ„#=˙Ù®uÌ6}1ÌmÙ˘d\"ÛÉçÓzåı=p*Ú´EÏ≈4û§û´¯éﬂW∑ÇÌM§QÜìqË{8˙cÚÕs^’§èåRi\"é_)ö\'2?ﬁCÉ]ßÅımCF¥’¥ª§‘=±∫ÉºÚ<åöÛœ\\ﬁ‹¯ûÍ‚˝+óòóÖ9«Jı\'›Ëa˘¨zˇ\0áºQ9º777Í.\'òm/*„8˛U‹œwüdë$Çkl$åPå7P09åWêi∫•ïÃvÍÒïÑ´•‘dÁÂ1ı&ªÕ˜M‘,ÂΩÇ8E’ä*©fÍÊfS¸9Ì^\\∞ÙÊ˘dı7t0˝ñ˚S\n€3Ø;#qÉﬂè“∏èâ:«áı\r9‚∏ï≈‹D¨1 â‰´Ÿ}ΩÍñøÒ¶µæ∂ç]%œ>vÓI=9‚º«X‘Æ5}F{ôﬂté€â¨ﬁ\n“Kõa∆MÍf0ØµUe»˝*ƒjÃƒ}–:ì⁄†êaøØ≠z–≥¢–Ì¢∫“Ó!]9.nY«ó ìº1‹w¸*=GK{FÛQ?s#^pUª©{’_ÍGJ‘‚π^60cëû;˛ïßw®≈®]› à¢9•.£¶9ÙÆyÛ©›lR≥EgäﬁT,êø|7C^áˆ»5ÿÈñ>RŒ4°Ú0GÒ©<Éå{W#o›G·€i˘rr?˙’•·ˆ};S)pB¬0Z=«9 ‡{◊.!©Eªjç)ª;Êß‡ªçDD÷˜Hg ©∂~8Æs”5√¯Ü&¥[}>F∑íH∑´¥cÊ»˛˜Â^ë¶®Ì%∫ªY„éaÊÄÉdà∏Ï{„É©ÿÈ⁄•∑ˆΩ•ºû|é|«ﬁ01∏Å–◊ìB¨©…JnË©.àÚˆ∂Ö°ò¥¬9–U\'Üp=˘™\'ﬂ=k∑æ∑—\'”‰hÌú_E\'ñ˘m´åpq\\•ÌØë(\0(d`Á5ÔaÎ©òJ-ÑDÅäWå∞^¿~µ$dı«?JêÄ˝_\0◊O7c7s:E\0Ò⁄£N*ÕÃ~Y>Ä’s¿≠c∞ƒ#4ªp)sK⁄™¿\0q]œÅ48µã‚·ãƒGß=2;◊0ks√ö§ö|”,r2	Tgkc•r„!)“j;ó_R˛Ωioos¥q©ëáërwüZŒä⁄9≤ò›íN{V¨∑“jW••ë\"‹°ª\'˘ÊíM*X£õs∆—Eå…üΩ˘◊=98A&SJ˙√ˆ⁄ïÇ≈•yØvYC#Ûªé£”ã®i7zM¸ñO∑Ì∏SúWk†Àumw˛Ü\"â Péd`Yâ‰úzW3®ﬂﬁøàØn•\"‚‡oV`π9ßnj(‘ü;çÙëœƒ°Ó ∂NÊ√büt∞ƒ]\"„é{V¢ZGÛÑ1»$A&SSÈÕRö¬Ë§ì,˘(73‡ﬁª£.fKZçœ\"öy¸*Rù*&^kd@´ÕZÚ$xî®8Ê™ßÈR ÓÁ=*dÆ0d±≥¿\"¨¨1òôIÙ™‡≥y5´\0µ]8#˚I|ÜœjdÏÅí€≤Hc8,;É≈@ÀÇ3W$\0˙‘3˘S∏l»$g>¥Äêp	ÕIrJv …\'Å[Á√ÀßÈÈu©4∞œ/0≈≥!ó◊9°ª\r#üuñVqç„\"£m«íµØ%ƒwrπ»¬∑BæÜ´=±ââêøóíÌÍjc\'‘v3ÀqJŒÁnÊ$≈I!P¯È«•FG≈Y!ºqKÕ34Ï1Árﬁ⁄I-‰uÂÇ<g=©ÖvÆIÿÈ ë◊5YY¡˚ƒU≈π…·h§ﬁŒœ c•$ùı\r√œq/õ>Lá´≠Ó}Í&¬˛5b{…eä8ÂpÍÉÂ›®Üuß®Ó4ó4ôÔÈNµ&8ˆ¢„π€|\'◊?∞¸bÏ?ut~Ã¸˜∫=Ò_Ex∑…µÜœWX‚76ì)Gë	˘[Üsﬂ?Ö|ègw5çÏV“ÁÇEí7UÅ»5Ó◊áâ¸o\r≠…ÉSïv‹v\n@Ál~µ•9.dŸ—NØî:wuÎ¡2…ˆrÑñfÁ=3Œ+7¡û\Zû˙)Ô.¥,åŒ∆‚’¬¢8‰\0‰u5Ø·ªõ-#Ã‘Êr+<Xr@„ú0Æ·d@ AS»\"∑©ZQçí˘ô∆\nZ≥ÁøÕ¶E©‹X]ÍZÀd·-K¬_Å 9ûƒv¨M[‚v´©Ë\Z-‰L2S@\nl\0éq˙~5ﬁx´¡_êx˙\"ÒÌöUÿ√ ∆Fﬁp›C˘Wôœ‡ÌGO’Ê”n-${ÖFÚ`É;é=˚„–WMiI§„Ÿ2c¶q	&g	œ5ŸÈﬁOÈ÷ì⁄Y¥wVÎ˛ö·¿WE8 ‰qÅÉ‘◊u∞›∫»é1¨0AÓ©tÌV„Jô⁄&|2êSy\0˙\\Wô) 7:TQ‘xßO“¥ÎÎ˝?O”d*†Êë—‡˝Ô«•q\ní*˚___\\oífwl˝„◊ΩTí3ìÅ”≠aVÄNX¡ojh„#ΩK\Z·wdÓŒ0jõ«[\0qJHúdö∂mô°ﬁPÁnGj(;Â\r≥?1Q äï5–m2∂‚‹SÇÄ1ö$EW`åJÉ¡#—◊öª‹V‘vGjP zÁäfp)0O^3M&AœPYTu¶Ì*«ùh?Ã-¡pq≈0qﬁùíqIîÖ#=iˆ=©•é˙RpE\"Ñqﬂ∏´ZeÙ∫u˝Ω‰|ÿd.·êH=«•A«9¶ÉJIIYân}Il√Q–¨uΩ>÷(gπè1=∑N2GÛÎÈVÏıÕkI”%ûÊæTÿdoAìû;˛„ˇ\0¸W®€ÀìÁ≥€F∆hëõ cÔ\0Á]«äºeuˆ%¥–‡ó.Cªâ$Ù„•|˝L\rXT˜v+⁄+Ÿúø≈]WI◊^◊S±∏›+©Y\"u√)WasXKmYÆíD∫ëÑCí—8ÍáÿÅë¯◊ëxÇé\r≤ÛŸ∑8e⁄T„ëé‹‘û\nÒMÊèx,≠Êä8fê92ÆB∏Ë√“∫ÁMŒÇPË$“g÷q∫…ú0H¡jºñ–‚G<6‚Eyıüƒ)/,4˚È^4óÕ1‹\"6ÉÇ}@9Ô[Õ„D{ïµ1*|	˜+-r Pj“)E‹Úå˛K=Iu[p<ªÅñ∆ø„mÚ∑J˙Cƒ⁄|æ\'”Ø-¶+∏/lƒ≈y ¸WŒ◊÷œmrÒ?ﬁV\"ΩL\re:v]	íiÍB}©òÎÎJ≠∆j¡ÿ&7hÎ@„¥á¶(ΩíRrO4≈P¿33äP•_⁄§3&‹–ä¬Ã°≤ƒeÄ„ô,•OSWfŒ8ı™ÆÏ∞„5K@ŒÛ03œzïÛìT7mléΩÈd∏$Ä	û‚5!ä5}“6j‰ÇGí‹FsXIr¿`Ú:f¶ä‡´„\'•≈ﬁËf≠≠¡îÖÎ]Uï≈Ã6õ*«)ÿŸÆ*≤@vúWI•LXÛÛ)<≠e^î}‡-¨∑)5›¨nDR9p“iˆ∆TõÕ˝·}¨∏ËøZœ í&’^}zUâ∂§or2ÒY(∆◊Cµ∂/Mr¨Ó¨≠ûÉû’CW+\'â°wå∂ézö£%2gqÕ2Í_¥yeNÊúú÷s@2 I4≠“˘õ\\®]™y ˝x¨ª´5xdt$ó¯∂ù ŸÍ1«5≤Ü+ô¸´≤QÄ8˚ŸˆÙ¨Õ.¬{œIÖËãíUüêO†Æ{ Ìôu9◊±∫ªô“uÚ•çàgd#ê:~TÎ…≠l≠¨V©$ì „o=çuZçÁ⁄VˆµÒ>V‰˘CÅ¡lsÌ\\≠÷ô•†ö1´≈Ê≈&r¨1í}AäTÍ{Md\r§ÏcI]J˛Arπ\'Ê´z€¡\Z™ËØ},Mñ_)‡8=«”èŒ©iöÌÂïÑ˙xç⁄|ñVLê}G°≠À{]^\rF√Rûtl¥÷¯\' *x8Ó=ÍÍ‘útM-~ÒF-Ù\"∑”\Z÷—R˛x ¨ÑÕ…µœ∂}ÍıKKY•˚.∆ §qπ‹IÁ55∆ª=∆îÊ˝-n.\'dX‹Æ◊P3û¶;˙◊/®]<◊3(X—I¡TÈıÈRî¶˘ÖnÑ\\o,2zªio<0«;¬Î£rì¿qúd{d\Z¶ë3cç˛†’π$wö§Çx-⁄®8◊5ŸVqÇ∞ÕK+ãÌN“E(“·AêÓ⁄’Ω©x7»ø¥]2È`ì >wòwa¿e#¯OoJ‰#‘Ôóe©fLÙ9…ˆ˙~økÆCò&∫ª∫{µç£HÉéáû«êEsN2‰˜Aªô˛ö®cH…y•ÚöF==˝çm[Ë⁄ ˛JM\Z≈Å${≤YææïÅs®ÍVwëﬁ+˘hÍ@˘îg◊ﬁ¥µ›EÆlÏ.“ˆGº∏Vkí8¡«®¨j”´h≈Ω»{X}˝™ò§ñUçIåÉ˝—Y◊vkfÆë3>:Ô»4˚MBkh‚Rê]@«ÒÛÉËyÊ∫€DŒÚºê§R7…*(cli%*{≤5[úZãE2HÑªt_·≈Sñfπ$*c‘]¥ö2Í5ø⁄Q£¿m¡pPÁê•Ma¢ZËSÍy Âól∞HRs]+-ue©«sœä‡„“ëó„ä—∫Ñy≈ åîË	ÔÔTäêk”Ñîíe¶D4∆ ılFvÁ’yA»5C#œµp≠(\\SpsœJ`\'*§ëLc–èƒ‘ÑÓ\0cÒ§d–eâZs«J û√•3∏†	r‘Í \n¨µb!ñ4~5\n@œ¢°YsY´Äy9≈YlQéı\0\\⁄†u≈D”≤\rW7$\nÑ‹y4∫∑.›Õ^∞ç§∫∂\rÀ4Å@qüßZƒmu9˘3…ê+†–≈ÕÃØ©∏“m•èÌ(úñ\'oÆiK±q≤’ûí⁄‰ﬁY‚‘gkòf†∂áç≤«#™Òä·Ùª?∑ÍS^^yÿó;_ßœ‘ÉK‚OÿkW÷êiöRX¿Änéïãz—	Ü∂k#5—˝Û±8ß±Í+\Zëî=‘+Û{»ﬂÜ≠\r¶©5Ö—Å|∞¨äIÉ‘∑c˙S~\"*€[-Â§§Ap¸BG+ÎÜé3◊Ω`€iÊm*}AíaÖÑ!rË>ˆOjÉXø”Æ¥‰Ü∆ÚpÍ|2ÜÿW∂O•p∫O⁄)/ôõMœ‚]WQ≥6íL¡$å#{ø5ëwoW\'¸ÛP˘Ñp0£∏©›àô	$ØÀ¥◊†¢ñ≈[‹Ωπç£fVC∏c±ØO%ŒøØô$mR2åÁtM(\rÅË†p3^Pé√‰\'‰ŒqÔZöuŸÇˆ)-X«28!ÛÄ9¨Î—SEEŸ‹˜Èu≥›≈	õ|,¡7gnN;ö£„;ÿ,º:—Kt©+a‚^¨¯Ï?∆∏W¯Å®œ÷∑∂W*ÍSÕ(T„ÛÆWQæª∫X“iX«+ñ»AË+éû\Zm˚› ÓÁNˇ\0/€N04âîïF«…ÂëÇ•{üz‰ÆØ‰{Më∆ fI‡ú=±YÃßÔZ∫LR^ÿ]# a¥∂ç§òıﬁ{Ô≈z	YWÚü4GΩô\06ÏÇq…ßx{˚6„\\ä€WÛ~œ7Ó√ƒ·v1ËI=´.kπ∞zÇ{U˝‚(ıÕÿèb√zg\'∞πÕ>KH˜ÕB]\n¡ÙÎ%çùT?öÒ)»Á©œ$é+Ç÷4Ω*ÍY/ºè≤IÄ$Ö¢)Ü=ΩÎj/Í\ZîgÃIkÛ8˛x–0WËÙ5•xë•ÉÎ\r$S™™\0íùÊT¿¿ Ù`¿å◊œ⁄tÊÊò_C¡\ZãŸ¨nºƒâTK\rµ\\û$s^ëezyB‚+h◊%@,q‘Áì\\?á-µKçrﬂ*HÌÁmÀÓONÄW\r‹Osr$E[òîUrÿ»≈tEJMTΩüÊ4åC™Ω››‰“L¶?º$åp∑z„<O»πy`°¿©cé§Wkkx5{πw€Àn å·Lô„û˘„ÈÕb]Ë3Z\\%„ naå!ìÊ)ûƒèOZt%‘‘´Ù0¥5tÀ(&4jØ\'>¥Ò¶$”3êLaΩ1ëVeΩé‘¢WUx„“¨[»ÀkÊÜ ;Lé1ﬂ5ÎEﬂRlT‘b∏ÚaF\\¶8`84i4Ûù°Å∆+^ ˚ÃEGE¬IÎ÷ò–´LX	»´J˙àÌZ(R_1	‹8«cR£?ïÚ»|≥’}iÕkºq–‘∂∂úï~ò£îdB‚@†dÖ8ß6˘*sW\ZÃ«ßJÄDaêÁ°™HfM˙3F@0Ô\\¯gâ€,FG_zÎÆ„Pk‚›K0pqÿèZq>\"fóc\'Q«÷±[UªÇ∑åÅc!!	9#˚Wo£>ÿÿ´ìÄ≈Äø\ZèJØÓßüVæ[&që®;êê}:V%+¬I´ÿòù#ï$È!p…ëï˙V]Ó±-¸Ô=‘dJ∞˘1¢ÄT`Á9ÆãU¥é9ÊQk®•âlºl„!w†ë\\\\ÒÃÚè<`Æ{—I}¶ào°ô2f!8Œ‹÷÷ç·„™isM\r⁄-“∂qïı\'µf…nR`_Ó∞‡ıÕ8M$[V6⁄GqW&˙	0º≤{=»$ÇSr»wdˇ\0Z≠d6Øk%“ìnã˝‡9«„R§ü¿¿0ŒyıßYŸ=≈·!ë«8Qö{ßq≤ﬂàe≥ΩªX$¢«jHyQûUÜ8›˘;	ÍŸ´˜VÕmr ñ&éP£xq‹’±g6¬M€ú∂éÖ}:ò¡F) [¢.»Øvı˙\Z©{e\"AÁ4{Cî~≠ÿt€ÕR\'€\"àm—•⁄Ã(»Œ=y\"™^CÂY«πﬁ‰9ëı°G[àÊ¸≤\rI„5jH@\'*òÈ[$3wAÜKãï0nq≈oG,ñ¨Òe‹\n∞˙◊?£M$W∆H˘pﬁÎ‹Vı˝’µ≈Ù≤€√Â∆ÕïRI#Ò•}D< äŒ3SG(qúÛé+-‰Û≈»Q∆5iä∆Ïn≠RWπÄ:ú*$êÉÈS….SÆi†3\r™Ô\'ÄEj⁄,ÿº3F®a`¬L`ûZÿ$ìóï∞ÉåÁ≠u:’Öú\Z%±µ¡Â€∞r\'◊ØÂYUi#H≠.sÛ[⁄GdÔÊ2‹‡mB;Áø·ÕaI,!J…‹¨FÂnºçMuzW#;N0®¨ˆ*g]ÄcÚÛ≈DSÍK+N—Hm˚∆l`Á˙U2Ã#h’S9 ÊÆ‹moòê[=@™M◊#¢ààbFéd n\0Úπ##Ω-Ïñûr%ö≤¸É~„ëªæ=™Pæ`¡8\"†ñ\02»Ñ\0üÒ®ñåj÷ Ã¿íOÙ´6∑BYwFvˇ\0:≥{-¥±jÑ!$±\"©ylBû9˙T]Ij◊¥∑ÉPGåJë»∆„ç„Î–b©¡ß‹_Œ…k	ëîg\n:Ä)a∂˚L3:≤E‰(b3À‰ˆµn=JKk√5åè\0e#>ùçfÔÚåé«Mäarn$ç|§æÿ8ı¿Œi/tü;Rôtò¶ñÿ‰ß N—åëû¯ß$QJ$∏∫ºXÀÜh .„ª8‰vÕ;O’ØÌ†–ﬂÕQ∂ÙDÈ∏å1¸©πIF‡UKãe”~œq3$ôW^“:^pk<∏.B‰é∆∫Îˇ\0§óV±`íH@`ÑIôÓÏxŒVπdäDÛ~E\">πÙœjTßjÑMe˜ì§6È∫W<(=igYmÂx%(ƒéÙóbjÏ~\\±#[”=Èí33	˜ñ…,NI≠ïÔ‰\'∞ÕΩ94Ö2zÁ⁄îê:UãS|∫ìÈä≠V†àU<£Ωtz≠≈≠ﬂál¢Ü—ë≠£H⁄b§Ós…ˆ≠VÇL±ñï…ú}q]%ˆçwÑólhKqâN	*p1˛q\\µ§õW*Œ«- ™ñn\ZÙ≠3√∑˜>\0±ΩsZ<˛\\´˘∂npÊ=}Îâö“Bâã∑o›≈z∑ÑnVoÿÈ∑≤[ßï+EÇ°∞ráû@ıZ«\'\Zj^eEÈû$ú±∑_¥9ÉÃ.◊Iì<Eê2¸Ωm»5_«sÈ“€Ë◊ñˆÚ\\EgyÄÂ	˚∏Ìœ<˚◊]/ÉÌ§y ≥π∏Yç´îp‰3æ—ÉéùEr7:ló÷^XL\n eíÌ\nñêÉ‘˜ÔœQ\\¥!NRU#‘ˆ64_Ë^&IÔlñÊ#*3+,õP∑U# πΩ¬>*ÓòÀy+Oßœ,a‚äM≈»…Í0k3HÒÆ©†Z\\€YªãsÖd\'˝[ùÀÔ∆+≥è‚†’|=ˆ}V¡$º,‰+ÇŒ}0{wØk˘åj\\Â|%¶_O{˝£k1é“«ÃhVUﬂáÓ\n˚ÇkœY1|˝Ós^Å™k:áâ`ÖÌ¨FŸ5’∞*e\'èõ¸‚º‡ó\r¥ÁR≤n≈D∑èÃ€êjÌÛ-¸õô@V˘cÿv¨|r=\r\\Ô*aT¯÷Sç⁄h¥Ï[öh⁄4P°vå1©4€˜F6ÊB`9˘I„5Æ4Ê0=&C‰è¥¨á#ÃÔ∑ÿÒT‚¿çõqgJá¥‹ÏeõB∏“fù⁄ÓﬂRPç∑n#9,{gÅ\\ÑÍdvPŒ9]º‰u‰˙÷∞∫“·“‡íFøix›~_,è_PqY3Jûkv`ô˘K}·SBn◊%‹ä›Ÿ¡R§ë◊3B]\\§{∞?JuÅdó!πœ=ÍÌÀ™òßPTÉ∑é}+° Œ¡d —hwsijj™-¢}åKÉ«oƒVQ\\1¥M«ŒQ\\¥$Á$c?Z©:Óïéx™è7⁄nÖc∑åÁ4ıp:ıÌL+ÇrzSÁ<ÊÆƒüòÓ<Ty8ìQám∏ßFr¸”Hi«: [ÀãÊ[£\Z¿ËﬁY\rúÁ˘WE‚o@˛<ÜÚÔÕ˚‚Igú(ÚØè‘˜¨ÅZmµÏZº≥+ç„á t\'ë^Â5ºW6ÕÒ´∆ÎµïπVöGG‘ñÆÓè0–%Ü÷≥∏öIgöX2)t$û8«Næµ‘ÈwÇiWIπôíÁ\"F!6≥cí¶q˘\Z∑•ÈpY<ëx’?’ƒ=™™9◊<ûjÜ£ˆ}&KΩIaë%‹Å\\˛i$\0Îö‰´Çã©Ì)o˘ï\Z∂ç§E„\r?M‘ÌÆ,E±*æ`RE…œJ·‡ºwÚ∏Üy/$[ÿíí#„˝í0+ÆÒï••Ö÷§/cÉb,í4≤≈ó@Z„ó‚∆è•ƒ÷gPâùVÒ‹à’»\nzÚ?ZËXyJjmêÍ$öE?…£Gu£a¨<∑\0(ÃBF€OÀŒ}ΩÎ«ıFiu4í£ñle}¸k†ªÒ{M*¨vG}Ó#lçÇ7{¸’Õ]N”Ì ¡f»^I>µΩY¶¨Ö‘—ÉRh\"R\n∆ŸSéæ’dÍfÎÃH	∑ã9⁄ÆzZƒ[ÄJÌ»8‚ñﬁ7íUD @Ê∏ÂO™-Ílﬁ4Z¿`ì2»πì=¸ä´¶Ÿ5Ì¿Qìú;ÒöØuß›€\\Kopª%å·ïÜ4»Ó/,dØ¥÷jäµı[ª±í	%à∆w‡å=k:·A\nÍ\0\\÷ùˆØ&´wlÀâbÖa8lñ«S˙÷lÕæg\n—¿ßIÀNaë#`ä≥\Z4øpèJ™=Í›¨ÕÊ‘˝≥ä›à“”‰ö∆ÌfÖéı»˝yØNÌÏ:¨ãkq•BÛoåµÃoªx∆ÏÎå˚Ò^c¶Ï[∞˜R<QNÙ∞GA]ßÖuy,ı;ÎÇ—#Ã2ä…˚∑êˇ\0cÓÒú\Z‚ƒ”ÊÉ∂Ê∞ñß§^ypÈÚ2›]‹[	H¯\"@OLOc÷´h>ñﬂMºº1H±œÛCn“—Âø•S“ºicvtùf%H2ŒØ∏8…ˇ\0\nûË≥^H`Ωû≤~CeXÜ¿Í5·KSë®õF◊1ì¬ˆ÷∑”››«%¿<¥LA}xÓ+I¸\'§M2«ß¡p∂≥ÄπVFtŒp{6sﬁ¨›N˜>#S¨πä!Ω÷Ebr	»®«^ı±aa´Õ©¡9∂?fînc£o>Ä˛öiU∫÷Ã9U»Ó<\'ß¡ßH∫vãnÃÔÊ[Ê0Rµ∏Ù‡WÖxá√⁄∆ç\'ˆç®∂9!«‹<ˆ\"æç÷d∫6O¶y?ø∏©$ájÉÿÁΩ|˜‚u‚Z ˙a∑∆“gè·=Û]r©\néÔO=Ã™GCîwf±?ZçøùOÂ∏R\n`zëUâÙëiÏbÁÎ@§•\'“¨BüZí)2ê*,ÒJ≠Ü§¿‘ÖeùäØﬁ‰Åö¥¢Í41J1∆ÓÜ™DLdSª©çt\r1ªä=—D®#·CsìﬂÎÌ\\5_/B—çjÚ≈u√Â¸ﬂ1Ìäª{qqcx„>\\•0@W–˙Áäµ´C¶¡>ÀñB\0!‹c$é#öékIÔÓ“ÊÊOûeV9ûÿ¨„8…©2í{tıxÂÛ‚aú˚•C®^µ”≥<åN0ÿ8ÆèU¥{[XülG›\nãµ‘cjÊn∂HÇ$àâG8≠kJß3∏•¥)†àƒßsÁ#ïV=jw˘F ˙TÚOJÍN‰	ﬂ“¨≈óà‚]ÃFOµVë◊öËÙ´ù--‰Ço5@nŸÎ˝*j…≈]!•rë”Mµﬂë3·s«C∆x4≠˙3OΩJÜŸ∑<˝kbÚu‘aD[Ñs€€É∞Û÷±%\nß\0dπ¨ÈŒR^ˆ„i-ä≠∑$~UdCjQîM≥‰-ô~¿S†∂lå±eV<|π5z„KöıñO16∑ÄHN¢OV	19IÅÆr:’£3]‹¨op¡:#J≈∂èJíÚÕ!Ü9a20bŸ%0Ωx¡ÔUÓÓ√Z√Dã≥í‡|ƒ˚ö˘æZnU,∆B…È“O#†FbG\\f°ç∞‰±84t≈h-«ûxŒjrÖ∞Õçßå/≠BÉ Û“ÆB±¨)(ïK˘ó∏˜©î¨2Äñ∞íz`T,\núï›¯k√#Xat&h⁄Esj†Ä%q’9Ëz÷gät€}5‚ÕÊ#/$˝ÔƒvÙ¸+‚Sü!N\Z\\ÂqÕ+É=ˇ\0Z÷‘¥˚(üœ”Æ¸ÀSÖ»\rªh$c”$å’[!oq®[≈zŒñõÄráGr3]ç4Ïdûó*y20TúéÉìL¡Q˛5€èO˜∞Gt\0‡;.2˙?ïsöÌäY]«‰0<jU‘ú9y˜Õ[•$Æƒ¶õ±ñr:Ùˆ§<é¥π∆ÈHŸf»¨n]Ü≤Ûúö◊—5ôÙïªHÄu∏ãÀu*Fsﬂß·Y?6p›*˛ã®G•kvó≤¿&éUﬁ\"2A‰~T&Ô†ö∫‘Ô≠>$ŒÒõ•âÌäÎÚH!q∑«≠]‚6≥§È©–=≥ „Ï≤ï‘‘F+\n/È⁄÷∑ˆât˚[ÖÀ√‰&∆ìuXésäÂÓ⁄4ï/£ùfwòº∂Óß◊ø®5€\Zä1¥ùÃu–ˆH<[≠Î≥Zﬂƒ–Ω“ë$q\0Ly;[~G°Œ{UÌKƒ∫>á&ù™ÍûUŒØj%Wä9‰êåno^8œΩyï¨‹[›«-ªΩ¥„*Y\0PäF\'∏Á°Æ™Ö77–∂±µkn— ∑2?eœ≠u)”qZyv!\'}Œ/\\‘¶Òüâ$π∑≥XÊöC∂($‰‰˝z÷F•·Îã?¥4ƒBH#h•_$zW∑¯#¿¶√√ñZ’ºíôbëÁŸ∑z0Œ–§˝5…¯„Rüƒ>V•g\nÑ€¸¯ﬁ\\Í9¸Î)“U[ócU6ùè*åà•‹®•@?+s€›·óèj$VÛä„=1Vë’0èÇÀåöÚ*>Vt-JÎndö2H\0ı&∫õ/E®ÈÚÍI:√.¢X»,BÇ√‘\nná§¶•¨≈jdO-Gm$~?âØ{–èá¥ø oR⁄‹lt∏TÍrH«„≈y’´……B/SH§∑8K/ÈZûå°cúÃMÃ≤(»ÁÆ}k+N¯e¨ñó÷”¥V≤nKÅ\'ﬂéEŒG–‚èxÃi∞Í\ZeΩ»XûdÀ és¯‡÷-œä⁄ı£≤∫âÕöŒedF‚z„ı?çr{<D&‚ô§•åèËöVì¨yZ5√\\[à‘ªûF˛¯>ï \nÔ¸Eu‘rG§#¡£œ◊|x‹Àû?ïpENÊtØ[	6ÈŸÙ0kQáÅ◊4–}y• ‚öO5‘Öa€ÛöR{‘gí(ÈL,IêFiA˜¶\nQHc¿œiO Rﬂ“ïyœ•!àGΩdÊÇ0}çJ\0û∆Ú[;òÊåê»r1^âk‚-öÖ¶°l¶?-íVUsÛcí+ÃyµÏØû4@∏‹ô¡≈gQ]	´Ív>-Ò\rØàµSr™ò}•˛\\q\\∑ˆ<¶Âû˝⁄¸√>î∆ò1.=∏´Î©;[*Kêùﬁ¶π‘m¢\'ÉUæ≤à™¶»€+¬k©“5[Y,%ÉTéÂ\'\nﬁkt‹=¡«JÂ¨Ôﬁk_±ïFâXî/˜Ü{^è‡ãÈ≠ö‡DˆÒJZãc®=Ø?h«Tk›ööçÕºp]œr0Ü9é¯sËsﬂ“º´‚Ñ€√:‰ê≠√O¸ËÏ0H>µÌ\Z~Öe´§ªÓÂ∂ªÛ3òõcœq–ı˝+Ö¯ß·ùN¬f∏k€X…	3ßœÉé§pqQó‘q´kËÀ©±„ò©z‰\ZpM&qÕ{Ê!¸4“Gz7ﬂZR3LGs!m«Ç9®ä3ˆ5±sfgéjçó®„±ÆtÙ4hŒÚ∞∏Œ*î™|¬8«Z‘û=“‡qMñ¡à-¥ëä.Ó-LR§>\0\'“ß[?5K⁄Sú˙’ƒ±ö3π”É”ä∂¨‹B#Á<úu™[G>ëH≤|ÀëZQ€+;I\0åÅVﬁ∆E!ïI_LUõ !ù–ëûù)πYãó⁄mªCˆ∞K\0`3á?à=≈]”LVsy™ﬁtòq€Ω1úÃ˘‹Ku‡ÁaõÃEå*í;ûıÀ5)FÃf≠åœ\"3ë∫$∆}ÖjEmm©9H¿G«v¨≠2∆Y‰HWÇN\0\'€XŸ=óZâ$ò ∆rG=I®ñä¿œ5‘-ö“Ï€ï¿y#©≠K}5R5wFV\nØ5Ω™j∫}∂™…5™≥*mêàÚ¡πŒA‚≥tõ‘üQ∂∞∑õrÀ√ÔãÓ{Z ¨ú!Õmâl“’ÙÀIÏmÂy£&T\Z=•£ ckç∏’Óï<0‹ -ƒ£ÕIŒ·Œ:wÕz=èÖ òﬁ¥¶1%Wçx⁄∏õ¯u)n¢‘.Ï‰í\'b±˚®\0\0zÊπ}´ãMh•Æ°ΩEª”lımIÓÓ£∂‘◊ÂC<Ådg√v?„\\ñóóöÊÕg[BZgŒÛ¸GøZüU∑Yuø≥Er$Gê,lÂÅ=˛ïVÌ/ÂÇ‚i<®c|„∂ßndÙfmﬂsf€\\+ZÆóhó2‡,“®!8¿Í+V]NÊx-4ç¥æ≥@K≥Äd`>u˜é+œ\ZÓ•Ä-êfQâ79;œØ∞ß»∑d	ï]A<±nYáP\r)‡‚⁄kÒÓ8 PãK®ÌR˘Ôı)%0.2|ƒNõª‚™Y⁄Àqr∞Ñ;ÿ„Ê‚ÆhWdÍ∂Ô<	-ºnLã œ O9=Mu∫∂É\rªÀ&ë}g<2≥\0ﬁfﬁ;uˆ≠ÂSŸ5	¸734{[kŸÒú¨Rmƒ2ƒsézä©|±kW©a±Ÿ‹ÁbI’TÚF:uÕu^“å≤ŒbTπ˘“P òùéFzgßzƒÒØm´es≠π;¶<≤†¿?≈≈c˚JÕ=tc¸7b\ZxÔ$∑Bë‡Œv…ú1>¿◊3´j1\\jwOkp≈ÊEàí∏d◊=kƒöÌÕﬁãk´F±¶∆Eœ ÅÎ\\jÆ8‡vÆº=\'&Á!ÿ‹≥7…•gcl2ˆ9≠K{—®Û@í ¨PÏ«ßØZ¿èTëYáHŒ>A”äDö!ÅåÖò|∏Èö’”ìM∞ve¯ÇaÑÉhl2≤åê{T≤\\|à ¨wN9Ôı®°∫Ü‚»$àVuG=jkœ(iñ”G>f»Ò∑P:Ç=™;Óâîz\"Ó.mÊ,¨˚§Âæc…ı≠8~’{sÊ\\*;W9¸k{π\'E%≤»\0ıÆè¡\Z•¬Í¬…¶˘ní=˝„Â?“¢ΩZnv’…‘ß,\"Gõ*»™9cäÕπö’ä¨kùΩ\r_∫÷o ∫∏ﬁWÕg!~Î·Y»Õå9È](⁄)≤“bK+(;v„◊5Eâ\'$‰ö≥<f1ı™„¶{öÍQH§ÜÙ„¶iÑmœøjy‰ÒI¡\"ò∆*Á=≥I «ïHG H˙äâÚy\'• #r@⁄ôJƒü≠\'CÕ\0)lfß∑låú‡T\n=MZd!p8Iª/⁄Náﬁú≥‰*å\rŒÍr°»∆zTà∞“ÇÑûµ]	ñ@ƒ‡H‰ÉÌO∂-— ã∏´≈àQ~p˝O\ns¿5∏∫V´£ËjI,âﬂΩÚw(Ëq‹çA£hÔ‚\rFxïïúôd€¿2I»WcØ_]€¯FﬂCæähnÆ.U‚ö`-∫¸†g±ı‘Æ∫≤ö≤<Í⁄Ë=—íF⁄Ÿ,}+•“ÆdÈ{6◊çvò‰Í√∞Ù«•cÍ∫BZÃ≥	£Ë]9ÄÁöœKô≠Ê\'q9ıÊ≤øµWBkïûù9ã√:|7⁄∑któ1Üí6∆ı$`©\\˚öÂÓÂ∏ò-‹ë™	I√(¿b=´$p[î≥“Ø[≥ §nb@˘hQ∞û§Òßc2‰vnı,)5˝Ïv—]ƒ(…¿¶⁄Zãá#ÌSèòzfΩK¬^≤ÉSíˆKë{\n¶*€àÔ€<÷5Ò•Í$ÆÏr|>‘åç\r§±]J∏‹∏*A¸z’ãáZ√j≠ßÃ!Ö„*Œ≈≥Úû„◊•{>üio‰«âÜ0íüú~>ı°≤⁄íÍ‡¬™π\07Á\\TqU™;\\æ[# S·µÌæ≠ºóIjÁ-(;xÙÔ]üÙWúµÃBd:‰zqÙ≠ó’n]‡S,)ÜIìûÉ=3S[…nÚ=∫«!d*ÃI∆¸Û»ÍgV´˚Bi⁄Áòﬁ¸<0kKiÚHÄÜ!ó\'÷∑uo\r-◊á.¨¥à„Ü)e6Û∑±#È˙”|{‚Cm®Y¡fÃ¨ “í⁄zØˇ\0Q\\møà`õTX\\Ã-ñPÌÂ6ﬁ;Äæï|ÿá{Ë4Ù4µOMqig¨Ai\rÃ–>.’dS∫1˝Â„û+_”¥ÀΩF÷Á√∂Oe?yo∫G|ìÈ¸´–<I¶>ß·kWæeÑñïÿæ_itSë¡Ø:≤s!#0.Ku«◊µM\Zékö˚–Ë|/™˘w \ZkÖ-	VºÆ~`ÿÍ¯W£ÈQX6°um¨IpŒ˝ﬁÂ‘g–úÊº¬ Úﬁ÷‹ebC\0x|˙Wy‡In!ôÃP‚)ﬂk»FUHÏ(õÑ˝…ãAÁH‘ó≈OïÏ—…ée‡«\Zvm˜Æ∫ŸÆ“!%ÃqÚr—‚†µ”⁄◊Rºπ\r∑üöE?2úpÌ≈iè27Vëóï∆\0ÔÎPÈÚß‹R)i±ƒÍæ\'í≈ß¬%‘À≤ë≥=9‹=™Üπ¨\\§°Z≠]∆eL‡éúpEw∑ˆkp∑2AÚ¡; é295Êû\'}R’_Ì.olNÿ\0—p@OΩË•…\Z∂∏-ÀV∞√®(B\0Úœ÷•{O≥nãq#vTÅäÕ≤◊eñﬁ4iïPå6„#∂HÎZªO¥ììÓk“•§;E∆ÈÄj¸qÒÕF§2éî‡¯\nÎ@XU€≈J†Ø4»HeÊ§Œ\r\0áñ Á“™œ\"ê1⁄ñYJc]‹0qå„ﬁê≈πª\"B>\\/z´Ìπù§d¡‚ÆX¢}ÜÓYë[Õcbs¥é¯ÆSSΩÜÕå†JH„)qû∆∞î›Ï+ù5ßë{pˆBƒ\\æ¿QãvÔÄN?˝UVÊ[’k3§ºWà‰JU1Ö»˘â˙V>$}>%im÷KÑ\'ê=0=ˇ\0ïT”µª˚∆ûxÿõÖÖæel*Å…\r˘~µÉå∑k,vz˜ˆ˜\Z9‘≠ƒfTì;¸ézû9Wû≠¨˙≈¥∆“\\F€‰†Bx9˙ê\0≠®<Syw™ÃoÓ≈ºsFb/≥îûy˜≠WÒ?Ü4Ì=·”-°kÜtüsÉ≥Ö˚áﬂ?ÖjÎMEB∆vWπÉ·kõ_\rÕ®]OB‘˘lø6I\0ûßÆîºﬂõ9 s÷µıK˚ˇ\0jã)åª»p#åqÌY¨#á˝b·«N_ıπ\0P`vﬁÅê˜=k≠\\ê[Zœ{y&! Eë∆J∂==9Î\\uÀ∆BmÒÛqä”∞4|(]Õ&OÃrG”–Vù\0’÷nñ˚Xπüç¨ÿ\\åOj‘–•“ZÓÿÍ®∆’ÂéEs–+HÑ∞¿œZ∑I¥ô±ìÎNqºlÅö:ú(¨ÚƒU€‰åg!~ïÅv´ò#◊÷∑Ì·ñÓ¯*„j‡3∑!ETÒúñ3€¨3¨—º|09r>µú+Q`ñá?\"eO5_h\0d˙÷äb$\'nY∫⁄°d]¸VË¥2å∫n€êäﬁKïíÿà·@ªB<ísú˚Uo^Eß›o∏µ[´rp—7Ù´sc\"[xåq≥ìÄs¯d˙TIÍ0≈[üìªr˝j≥H∆g\'©5=ªd⁄¥OA\Z–è: √ª–d iñÚ\0\0®Êë–ÕWAlÕ#y(ÁpCåc5-ıÕ¬yV´tÂ#;◊w@«Øç%¨@∫(ã1\0\\q˙öµ´Y ⁄◊ŸdÚ£qa≤¡F6^ıçKu.œñÂÌVä+©Æbgù7†^sŒ1ıò,§ãPÚòndÇvˆ˜Æäd“ë#küÕÁé‡∆=1€äÃí˘Ì3«ó…!á=k\nRìDôZµ¢¡yòP,7\"Ô›ÅÓ:Œw⁄	\0sÌV/e&BFk1‰œb+≠j—µåœ\"∆´πŒHøÀ›Ò7ì¥á#´ŸÌbÏÉr‘◊∑…{rÛGás($„åu52IåÜ	tB˚T∏»˘ÍIûK´¶ívÓyp·ÿTpGæP¨	Áﬁ¥d¥\nñÑê†»¡á‹˘Ô\\Û|¨ù5ªZªyôV_·Ó√⁄ñﬁtñcÚ8>Ç∑ıÕ≤√%ì˝¶›F_w˙¡Ù>ú~µém\Z⁄‡…,LQ\0 ìé=)Sü:◊qîÊG⁄èÂV…Vı¡•vd`b=WÊåƒú©˘3¿ÆÎ¿ﬁ”ı&ö+ËŒŸH’’∏,πS«Ω*’=ú9ò÷∫•ûØy•ƒi9»∏`@8<r3–9h¡6ûm§Ü\'îç®ÂpÀ»Á=Û”ß◊4hÌ5ªõhf¬™nM¸r ÁËJƒïöIå°UI=`URQíÊà§]∏∂€“vˇ\0∞GZ§ P‡Òä‘¥d∏ÅÖƒ¡]FG$í8ÕUΩõå¬Ã…è‚\\s]ã∂§\\®«Ωhÿ[…8⁄âΩâ⁄uÕQS˜ÄCœCÔZ⁄4^s˘kΩd¡SÉöô∂êŒáF–&|yˆ¨¨sÃÄ®–Í6V÷û∑ﬂ;d\\`D·I\'¯ï\\∂∆ë[M3>e…ÍqÕtæ(K9|¶Z¢DÓpÃÈ‘`\ra\ZR®Ó˙\Z7k]%¥ré1ü†ÆÛJóNì¬ê≈©ƒnñàÀ&|úÁåO$Ô\\k≈Â;0˙W®xEm`§GSÖœRbùà$œ®R†´%∞•.Tqüëﬂhó\Z{Ÿ˝™‡ç‚í	¡(\\ê@\nzdzz÷‰æ$±÷ıãWTxÌ‰äÄÿ H*Ï9|„ï8«µr\ZÂÚ¶¨.˛÷nÓ·mÀ.œëô_ÇG“´j\Z§\Z™â%CÁ®aº(â9…˙VS¡¡>XÌ‹QìkQ.óOî›ñäGÃéàÒ0\\‰‰jÁßtäuH‰Û¥Áåÿˆ´∞GÂ‘1\\ ¿ÏÂUŒﬂ|w©µˇ\0\n]ËiﬁdW0Õ\n ú+r3È]tË…FÎTâîïÏƒãƒ?ÿ˙/Ÿlï„ªi’À0»¿°ÌœlW#∏ÁIœzÏº?·è|ﬁ`âô– |ç IæÄÅ˘◊7wkˆKŸm‰xd(q” êkYSíälI¶ÏU´?kF2Ï˘Ô@TH¿t›¿™»°XqüJÏ4ùBC‡XE∑.;„v;ˆŒ(ÑS‹rvGÊêÿÍ3ŒjÙ±œu0x†\n3Åé:‚£æ”•µ_8G Öécg\\jÊñ±\\[ÃÕ*©Ü=˚[ë˜}Ò\\ï%s L∆Úù]Å»Ÿ‘“Ñ8`\rhÍ“[…®À=úAnÿí8M#‹ÁΩk	]\\l÷”a∂ö‚ß∏Hé°•e»@x…™◊ÃccmÊ¨©FS¡ÕUF*Ú	‚ïŒy#üZj>ıÓHË∂òXÉé*>l¯U≠±y—à∑îlg#üqO◊-°≥‘›-dB@x€<‡ˆ>Ü∂IÓ\rÙ(Àe·ÖTÛ≈[Sêwt5…ç0z˛îÂ=j@π„Ã\0˘™Ï\0ÊU◊ı+Wïy∏çøà©Í>ôØ†N\0…<W u)tﬂZ…\0Ú+∆	«qÔ_MÿÎV◊åñÚ*Èá0æ3ﬂ”é‘‰ú∂&È3Mâ\nH8‡z◊ôxÁ≈#N“†{kD[ÈÿrZ>zÌ«êFk”$uçπ@…5«ÍûüX∏π‘7€ô∞~≈évìûI\'•iCï?xäóË|È‚msS‘Æ§Kÿˆ8m“+)ﬁ≠Åúìœ8Õ`!ifP¨ÿüôœ+⁄o¸™2}Jx˜ﬁG[à§Ã“„Ô`1Ä+Ã¸S·+Ì\0≈,êøŸgo‹»Gﬁ8‰~§‚÷©›	4Ùg0f⁄~SÔIåri“GÉí‹ìÕ$ä°àV%{1\\Ïª	º9ÕK\r”√Û)¡˙TwÒ§ÁÈäõ°®nÓu≥31íg ¸«íiÛ[_)¿…;∑u?CYhÃ>È9≠ù„\0±\'99¨‰ùƒÑí@fI-‘«Â‡åúú‘O+ºÕ.pÏI8„≠lYiRKg<Õ\ZêrÕÇπ‰J¢÷˚fxﬂ`l\rΩ3Q∆ˆE	≈]∑à\\’AI8ÎT‰PÆ¿úÅZ/˚¶\néÓá©≠Ø†E{=ªøîäÒúü-óp¥ËÆ.Drmò†î| N3˛4Yºk(iê≤…«ùznóõ¨È˜PÈ˙Tw≥5∏H!d√FI˘ò∑Cék)99(•∏6íª<Œ;ÏÇx îëù∆¶∞ÜW2¥ô	Û3åû¢´=≤<ì<,T!‡7_J’Óôs}~!∑(&(ﬂ3„êEgY∆mïY±°Í2È3Aqevfi„+uo#Ì#ïıé¢Ω;HÒ»“≠B‹´]Ôïƒ†êN0}sÈ^G‚â\"7—àfÑC±!ïñçê9$}{˜≠Õƒ6Vq>í€çΩºÜeów ~\\d–û9¸+Õön*¢FÒ◊F{ìk	™Y∆<úñ»xÉ¸ ÿ≠pZé°™¬ó6fŒgH∫Y$ãÃ%z|´ÈœËkG√˛,”5	$∞ëbI€hfA≤IN1Ë085æ-\'âÓDfFõ…ÿÑ„ï€«·⁄∏*WÂùÊW*j»Ò»⁄ñüo©=î1Ã„kx{ø÷∏	ÜŸX—∫WØÍQﬂi\ZSIˆ8PBèÄ∞%sÿ◊íﬂ.úeπ‚Ω‹Ω€-ézë≥+Ç3Hy£å‚ì99ÙØM\nZ:“¥†ˆÍhZM√ò‰1<õTÉÖœÙ≠(gä·ﬁﬁ+&2H˘àÉÇ£–WGﬂF¥’4ãôÆ.ïdÖ $H~v»¸0k§ˇ\0ÑcKπä%≤\'Ì∏HÂ^π≈xxúd!Q¶∂:i”r[úKAuêéxcMôoòÄHÙ>µ<◊wçd\nEŸÅÊñó oÒ≠ùG¿∫‘3J\Zg1§!sì*˜W3,om(äÓ\')\ZÑ^˘Ô¯‘”≠\näÒw	.RR}AÌ˛Uﬂ\ZmiÚÌ«$v®t∞M‘4ÂáL‡êx≈G¨∑\"Yï,x.Ï{”bAÃ!pÆ9Qús]±äÂÂFmÎp÷lMîÖ§L+ÊgÇs¨;’ª´õãô˜‹ Úê1ñ9™Õ…Î]4b„2[π´K ˚8å(›ª%ªüjÉ<zTÒ∆]7/$qÅ÷µbDÒ\\…\ZÆ8∏‡”ßùe;ïB˚\nÉk{P\nWjyPç›m2ißí˙Có	Æyfß.´id<˚W‹ŒÏçØÁü|ü πÜbmfåí„µa,<[m≤πéõZÒ\\WötzuÖòÜ‹î,rvë–ˆÍz◊/3¥ò.¿ê1≈Ô‚ ˆ¶4E[Ú:’R•\nJ—\r^‰ÚZO$ì ∆G~*§ù›ÌK#39˘ÿÆxÕ9ToUﬂ◊π*ı[àTx÷\'VMŒq¥Áß·Z:oˆlØ2ﬂ±Ö\'Àx◊$8ÈëÔT/m˛…r¥ë»W£!»?çV›û¸T∏©≠\Z÷Z¨∂©Q…)X‰,™ﬂÜ•÷ıÁ÷nÑÔ#†ÿ@ür{üz∆BUÚ)®6ñ…ÎKŸE;ı\Zn∆æâ°\\k⁄ÉZ@ÈHûfg8Tf∫O†Y‹œ6Æ´9Ú⁄jF<–àÄåwÆfŒ¬i#+7ñ«kymÛÙÆ”V^ëe†∆ÒﬁI£$k$17œÁÇq€¶+¢ïÔ¢πKkö⁄ûèc¶ÍëÍ\Z£æ£ßœÅj]∂Lèî∞ÍGj·uÌ\"ˆ⁄“I§∑q3òƒ¨H$ê0i⁄éï´ÈüfûK¶êVÖëã`u€ïCUø‘.Sm≈ÙÛ´ùÓØ–7≠uUúZ≥FqãNÈô;πÊÇÿ ”I=∫Ssä·6&-ª≠®®«öxa∑©§¿∑gp \'ñ≤WhrAœQÔ^Ÿ·øÜ_˝ÆÂ#kˆÄ≤≈Öë]xaÎ^Ö$ßárüqÕzˆèÒ]’|qiÓﬁÖ„ã˝l``dˆ#•iM≈;≤&õ+ﬁ¯.	|G˝üc<pE%π›Ω≤Tı⁄¿˝”ön´·Õg¡∫l:Êù®:ÈÕ∂HC7!ªQ∆MsöàZ◊ƒ®Hd~Å–ú¥É#={˙fΩ;ƒﬁ5≤Ω±µ¥óL]J `»R©>£±ª·R”cùı4<{©K‡_ÌËÆ\'ifl§m∞`ëÿvÎ^I„øh¯ûÊy¨#,aPt\0\0√ﬂäËu+˘¸)§]D∞^€Zﬁ>cåÃ≈Bˇ\0tv‚∏çgQπÒ\rÃZΩ‰H∂®À\n«(Ï?^k*òòF\r≈ÍÕa}L[ªI<˝—8ï‹JÛ˘‘fFò) nE¿>µ‘€hs[Î3iàÒ£]Æa˝ˆH\\ÇGµs˜ñÜ”zyd4gkêr3^\'∂Sïô”À°π·π.¥È-Ø€a≤iJsÖpk’%‘c÷4¶∂∏∑HÌ.U£é›sH¯ G5‰⁄ñÛ«ó3yVnÎø\'±=q”÷ΩÊ\nŸÈ˜ˆ˙•≤I<B›#çú\"_Ô3œA^v!«⁄hÆ W<;˚\n[KÖ˘?—Ó°2òuœ¶3]°ßiPŸ⁄KéWµyU%lı>£äÈºok&âkFê^K\'ò!oﬁ+`$ÉÍ+Œm5œ.€m I3ùÑ&†Á”≠%œV“eÛ-ë{P÷≠uÕ2Ê	R+2ådä”ì¡ÌÎ^{qâ√uRqöËı…Ì§0GdÆ±ƒü6ıãΩ»Í3“®Õe#iûqÑòïVœ!á5ﬂB‘∂Íbaˆ®œ•\'äàûk—B÷ó&êöv9†aﬁïzö1é‘û˝Ë‡‚ú)úÁ⁄ú:R§Ç(^Ùcé)3éîÄéqVl%XÁ\nˇ\0uèÂU¯aÓ)∏«zM]XkC∫‘<=okfóêÃgç‘|Ë>Pﬁüïs§`yÉ†=*{;•{%Ãé\n[Ç>ïb_≤˝êúÉÇ¿ˇ\0JÂqqZÉeX§ÚÊGÁÅ`;◊®	M}ok{•O\"ΩÃJŒÑú®<û„5Â7—Õg*$äT2ÜCÕz◊√€… ”¨Ónµˆ2ƒÒ˘hÀæªcÆ:\\ò®I≈J%BÃÍº\'™\\h2}ãƒVCœV	ß™Ø|öÎuK?Ëwv;É∆¡º∂zqT·é ˇ\0KiVƒ …êfW≤R	ÔÈ\\t⁄µ÷õw\"Ÿ<±∞˘·çæÔ\'””⁄π;ç·–øvˆ<Cƒ⁄-Œá≠‹Yœ+F‰|√â–{WÆ|R∞í˙;}i∂â%˘f@ ÿ„Û‰•pÿÌ^÷\ZØµ¶§˜3qq—ë…–\Zp9Õ§MC¥‡◊A≥›€åë¸™äŸñ$Ç+•∏Å[∞™B\0ûÜπQªFiÂ¶\"Lû≠Åa]¨2øJ◊µ”CKê	J”óD(„ÈN¬± òaò*ÅÉSC£Ç¿Åí;÷„h2D¿Ä°´iÊ4PG=ËW¨fC§Åîßä∆ª–d3ï1íΩÜq^Öm\Z¢èZ¥ññÚï˙P”∏hy˝áá§w#ÿ÷˝óáëe]‚∫òm·âÀÉÅU^Nx^{Sk∏ôf\nF˛[G Qúñ##ˇ\0ÌM;EûXïÀêﬂ2†,Ó;Ú*®æôÿA=ƒæ[.Fqª⁄¥Ï>…Óéﬁ(‰€ ∫„xıÆi≈\\ìÖ‘|Õv‡=ΩòÖÅbÚM’…5R∆¬ﬂM?kºÛDÖä˘»N˛Î–ß\Z]¬Ñå¢8SÖŸ∆x<é‚πM~÷Q•3#≠√í£lß>ïœ[ô«ïC¢–¥ÿ?≥µ“¶i≠ß∂a˚Ô‚r:◊®iŸjZ\\íC+C\Z¢ú±∆Ó‰~b∑¥>ìQ‹+U¿<18£®È◊Wö=¶ß®j∆ â\0ˇ\0Xƒ˝\rF&òe-Ïåπúûßîﬁº6zåì:(û9Ÿ’è‰ú\nÕ‘µ[g≥X†N˝“I‘ñnI>µ’xõJéÊ‚Êx‡kãõ5b0§q˜äüº+ÖkxÃNÊ`]H∆^˘7\ZêMêí‹ÕÖ·ä¯Kuô\'!2=Ω*h#˚\\2E.Ê`!àı…ÌöKø≤M€P∆uoª‘˙÷\\è&ÂTY}5Ë$Êá‘Íº¶¯L#”ÔHÅÿ$\0Çqê±Æ«≈vózΩÀ2;+híçÒπ$˘îÿ«ZÚÀg∫íÌ¥≤JpÅ%ø\nÏYµHÌfΩöÊËK#†ï$V\"N8,O†‚π+a¶Î*ú›6ôë5„X]≥@ß»ô6†,r=kK[Òô™h66Wr-›§ªï°⁄©∞ı	˛ÔÂW4€eÒTèoy.…aUÚÂ\n™ñ9rH9ÌäÂµK∞O±ˇ\0ã$–åëë˘WU.T˘^„ZlSºïÔ\\I$Ñï\0ö´Ä£h˘ò‘Ød úäàæÊª°+∏õF@¸Íhæ$t¶*‰T π…´µ¡í€IÂ‹¨Öw(lï=Ù´R…¬F_ïCd&rR\n@„åıß¬Bûz\Z‚∞™7\'µ\nÔÀ\"1VBHÏ}jxÄ,N;u®û\"9#ö|´`;…s#L‰≥ªnosMçÍ§t•\0Ö„äí4\rÇ‹BV—ä#µRoóÄx≠+í{„ä¢Àëœz\0É9£wÃi_Çi\0¿…¶;mÈP»pπÓiÓ2’ß\'ÿR,íp\r Û»˜ßm«Á≈5Ü‡)62{v@ﬂºl}X8›ÖœÙ¶¿(ˆ»πì«?ÖYÀ0»ﬁ≥ìë…&–™‰ñ⁄é*À⁄∫\\ŒÚ A·ÅÙ≈t^óK{6≥∫∂û[«ï\rª€Cåüqÿz‘WV∂´s=¬M$ÿK.ë1›ît<äÁˆèöÕà¬›lô<ñ3ñ˚Â˙LRÿ√s\"À=∫>€eÓºl¿?ô®ÁtiIÅ¸J∏´◊6◊ö}Ñ0le7ë	ä´g)û	«Ú≠ñ≈E˛[≠!Ó¸F—$÷ld-å;Ç∑ÀèK‚Ø+Vm÷\r!ìj.YN1ë¸Î*ˇ\0V’Ù›˛…ïÌ†.^H»¡~A¸´3D®œjN<…¶ﬂCagp;ffX	e‰cπ\"≤Â)áfq˚§P∑A∂› √\'ø≠;S’>›\"ÖÇ(QG\ZÄ3ÎDW.àõê≈p©¯V˚¿w≠õ[∑h@TÁ=küèúúé+¨≠çù˝≈ _ﬁ\r<%≥≤Hÿ⁄ÚmLZoD5®Ì>Ì“Í( ˘ëo·	‡gÆ+ÿ5}NÕm¨WJ’·±πdæC\0„Ä{Wî«¨€?âbí[8l¢H@‹©∆÷ ~f∑Ø,≠n°A\r›≥B®f∑uHé7c´r\ry∏¥õNCJÓ»ÙMƒ˙‘∂ãq´[G$ÇD2åÉÉ¸\'ö⁄ºΩK˝?≤Kêºm‡éπØ0‘<Uw6©\r¥∞<«»€¸|`ıÁ±ØGªæ)bbK]ˆ∆,âQ√,|rH~µ√U:i8u7äNZî¨>–óSZFä¿:ÉÅúg•mÈKcxbíHãHôWaåöƒKÖH¨otâ[â…∆¬rG>ùzöàµ_Ïﬂ\r›ùZŸ^NäwÇÀª∏„∑µLc≥ÍgVZŸ=„ª£q‚çD€F¬/<ÓÀnÀt»>Ü≤lÓÓ¥y‡ΩE∆‡—1ÎËjŒ°™⁄Üb1ÃõŒp¿WøJ«õV[ô$2©.NUèoØ≠{4”t‘Z–ÑÙ;ƒrCu{m¥´q~åé€¯¡9·}k—|9·\r;Wã gf3.∫∆3¡QÙÁöÚ#@ºÒ)∂9ëæÓÍ=+µ8’|£fK¢[√rç¬«ƒ{p=NOZÛ´∆<Œ’˛^d∆◊$—¥k∏M3MΩ÷\'HÜ8ÙÈ÷ªÀ∏¨m4À]>[πc∂ê~Èë~w8Èë«^yÆW√:ù≈¯EΩ”ÿO(Û≠û5\rΩq»«†ıœzÎ¸¡rcAå;c-“4^I9Ó{~√V5“}KV∏›y$çnÏ-‰iÀÉ!πìØ\0cô≠®.Ænfª˚TÂ¿¯N ëˇ\0÷§öÕm/&∫ÅÀâ§d+‘~u}fï†ÛDk&GÃÉÂ`G¯◊Råµãñ¿˜*nnd8πM †I8\0Ûú◊≠xDÍ∫ÃÀ.¨Ê;hƒë@y89Ízu˝+£æ’≠ÏÌç\0œ(_,«zœõ∆⁄Ló[J†nF0Fﬁù<=“©\rƒ :^ÖâkˆõËº÷`x>`3–„¸j§eLÏÒç©ûµHö¸∑V◊¥`,Ã£ p®1äKxTøèJÙ‘§õî˜)\\∏ÆXf•D‹=˙TIﬁÊ≠G\r±Å¡œjÏÕ•îìì¥aTrI§xŒ3ªJ[µkKÉ\ZHH¿9‚™¥€Ê9\"ç@}À+¢®RŸ<61˘’ÌöÊBR<\0π?ÖZ∑∏ÄÕÂ±‹ê@{öí„Tµµ∑ñUëòÇ	®ìh ‹≥§nÅ C“π˘D˜aJí\0È]≠ÎOxÌ#G∫B\0;Wµq˙ÄO8Öwı©ﬂq3/WºGP®£ÄyÓ~µÕ.°,1ÀÂ‹≤+—å¸‚≠ÎWõù£\\jÊ›ŸâS€µUïÑÕãˆùèòƒÒ◊÷™‰Ä≤\'sœ“ô4Ã8`=∫V§:{}ù\ZDígVh•Úãna∆Ôì≈L§ê¨Gm ù„ÉŒ⁄s¿\\Ü«\\;úUÕj¬—ıX‡“Ù˚ÎvÚ‘HóMπŸ»Î–`T:tMe∂ÏM‰¥2Yc∆‡√”Û≠€ØA>£utT‹º±çí0ÿÍ¿`éæ˛µó;Ê–MÍrvèòôv∏ÌZ:u’÷üÎxLx+úÎèJäÈÕ≈Èê!àŒM_ƒç·J\\s∆·üÂ≈m+XdV±Ã!@A⁄ÕúZÈ4Îx—Æ•TeÛ6âÈû¯Ík?Mµ∫ûs‰ØòJî\0ºq–{÷˝•ú:M√√Æ[MêÑE\0É…=˙äŒr∫≤å˚è≥⁄œ:!r≤*≤Äÿ˙ÛX∫‹È=ƒe[yT\n«¿Èˇ\0◊≠sﬂ_≥«Õﬁ∆ﬁH«N:V.¶\nﬁ»ûAÉà» ÅWÍ#0πØô·ªûîå9Ó9£éÇ∑B:mŒŒﬂÀ9fë%@X<ÛÓJŒñHcoWCrˆ©<<ñìNcΩù·ÑÂ≤™[,:?≠\Z⁄[#µ¡G<a≥–s˘ö≈Õ9rÖä$´˜‡’®ób‰Ù5R\0QÙ´™Mπ‚µ\'ÑÆ˛\rX‹„˘ä°√ÏiÊRps»„4””˜>§åÑÈ\0\'•QºñI.ﬁbÌÊn…,rx„≠>÷+ãã®“–∑öN*$πhgÌtrNÒê~†‘H∂Ù±±a£ÍWWe{fàÄ\'Û1˜P[‘Éû’[P”º—{-û«Ç›Ä,πËséºÒÉRK‚õ˚}R=Rﬂ KÜà&\0 «é8◊≠C>±®ﬂMsx°3>ﬂ5Qp§Ú«Ø&±\\◊$Ê%;é\0…™ìD\0l„&¥|ºH¡Ü:‰U±Çy5≤}ÄÇ1G!\'Ên)cTF√)‰qı¶´*DYÅ$û1ÌMiÁ\0Ò”⁄é†n;iÈ£™≈o?⁄ﬁ@LÃF≈¯Gˇ\0^ùiôZe\"\"ò ñË?≠g[Õ$ñÎv1Áq^Ÿ≠Øø≥ÌÁ∂	æ`€πÜJıË\Z∆¶∫VΩ˚k˘∑;M⁄(C\"	d˚◊=yy5ÀÛ+ïUl‰ô´◊–H—oÄ‘éõè÷≤Á$/®£V6I \'Î[÷⁄µÕòF∑ëî^Ñ)ò∞!`XÆ—œJò\\m#ûº‡¶¨≈™:ÕF[-{NIn%Ì¨0ˇ\0^ÍI˛,˘W)®iÌc\"+ê|ƒ\0ΩÅ«÷Å1N8Œj‘∑fÌY\'q!ŸÑ,ŸÿaÈJç%MY	∂Qåò§VBºr3E‘≤OtÔ(˝„sÄ0µ5GÔ\01Ÿàß®‹8Î[\\V´<,´-˜∑’≥·€Ghy…8ØŸŸ ∂Y:Üµ¨\"∑∂ê≥\\Ú*™âøΩD AŒrzÁ•PΩ‘#D;xP}ri∑ó*±1V¡˙◊1-À∞p{ìŒjR±Mÿ—yBFqûA4Êπì»∑Y¶i‹Çë∆‹Ú+\"‰(AŒ⁄∑Ï·Qóp\0®\rÈM\\ÜXx‡πΩGBå«(≠ç§ÁH¨”mp]HIqÄ\0ÎÌ]ú\Zı™ÿ{Õ&D0ä0\\w…Æj}bS≈qƒÆ¿çùW›+kA≠Ã”í2fπî∫@⁄:q^áÄ⁄ˆÜ◊ˆ◊íZΩ‹[dÑ*¨Ò©\0éΩkÄ‘,Œ+Y~“≤<Í]–uåÁ°=Ú9≠˚3P≤–ìX]jŸaé;tsæAú@ˆıÌ[Pº[Läö•bÊï}-≠ñ£·È§{a\Z¥ë´0!rF·◊<„Í+ÜX∑π-úÁØ≠j‹ªá7Ríd¿À√†˙1Uä®U¡ªä §ÆÏ\\#mJçÏÅ◊µIkxˆp^[,QsB;© äêÆ‘›ëüASY*<¨ƒ‡ï¿#÷≤ñ√#¥7⁄‘Igs<Üxôí,åëëÕM£›\\¯j˛Wàƒ∞_[≤5wS∆8Èœ™∑19bcP†º?˝tóPI-∞˝”»Íª’¡$ÎåvÆg∏rµ£)=t:èﬁÈ⁄ıåW∂\"Å $\00€{è¿◊ü2:©\0‰u’–E¶^Í±C\"nﬁPæ •<É”å\ZŒû(„àúÂƒõsêAh√•Àrdı*C(ç‰ÄFÄâ2Tw§êár@˙t•B\0>ï‘ê\r;£=Hjc9ë≤«ê:‘çÇ«vH#œJÜ\\#ê¨vaﬁÆ‚G«øJîSìÉQ≥)˘s@äk\Z^›sM#üj†:\0€ΩÁçt€T0Óïô\0ùrá(‹^õ&áÆ¯b÷ı‚π[y\\Å$!∑ $ÁG+ |~⁄wå¥{∞ªåwIï«PNÛØßµ}oın/Q.m∑∑∆Ω™‘⁄VD 79ÕRÒ⁄[M™Z\\€¿éŒ7‰â8¿øzÈtÔiw˙ƒ∂ë…m˘Ú§˚ååSuMbMH‰ÖÏ6¨lÖu\'°«“´ù*9g:Ωû—=⁄Ç d9…ˆ«ÎRµïÆ≤π’§∞Ã≈Q’é3«°ÆW\\EÆ¶¬ÊS4˜+Öào\nëÅ‹/ËM?W“ß“lRÛIûHÊç˜IrPNNGcZ-}©Kèm%‚Wâd\\\r«™ìZ∆.:≈ËKk™<√‚W√ç$ÈØ´i–-çÊE∂B∆Á\'v}¿ÙÙØöåúÚ†ëë“æóÒÆè‚ΩwMíﬂOö-„GY0ﬁ«ØpGJÒ=7√≤j©q`\'∂∂xvndìúæµN<⁄u%J⁄úpÎûﬁÙºÌ#¶0,wﬂgï¬®}¨˝@µe≠\r™˛˜kBÓ»≤°»bonGÁXKC[îQIÔZXµ»SÇv36N\0#úsﬂQJÖs¡≠;EK#\rã∆|†qû‹\n¬§öW\Z4n5	Â–¨’g/¸)6Ù˙ÒYW6≥[∫ºõSzÔPr;V÷Æ¬kQ\r™mò*óAÖç‘\0@˜<Ve‰o,0 …µH#w@q\\¥_Pl∆î¸©ß€\rì©Û6Û÷ñÊ)ÇÜ\r‹‚†F\"AŒs]ÎT\"˘hÃáí$Ó\rt˙7ãg”4÷”¨Ì·ç‹8{ìª~∆é=0¨˝5e\rß›b—%Ãr…$y¿<’kõV”ßí%mÃÆTHßÇµÆ„&êJ	ÓTgí	7ë¿<úuÆÇ€Ué‚¿[@Å.ùÅﬁ†Ô-€˙÷••`íí«>î®Z U# ´g\rcV\n¢◊r”∞ö≠‰◊7ÈAçƒd¨í1…sûˇ\0NïZ\"Ó ªâäøØ_¡™joyF/4)u8˚ÿ¡ÈY»Îês«5•5Ó%kﬁß“>¥“ÙOÈV˙å÷ﬁ|±&∆XÄOL∞ÍGLÒZ-‚kÌÈÏb;Vr|˘ˆRz◊Äh~*ø“bñﬂÕy-]\nÖ<î8‡©=9≈VüP{ãq%‘Ôx$ ´7 Tåd{◊ÇÚ⁄é´îﬂÃ›‘V–ﬁÒ∫”‹M\rª*¬F“Cﬁsúüz‚ÆŸ‰)+)¡»\råg\"‹eRÌÚéﬁî˚Î¥ö÷+u@6,<d„<vÈ^›\n^…$bÂ}Ã˛¥òßúc)òÆ¥…j)6“êqö`tæ÷ìIπïdbâ&>qŒﬂzÓl|~Õq<ó/lõ,mDW¯ÄµÂ¨që¡ÆáO”ﬁGfÚYî!b@ÈÈÕy¯¨=6€óSHM≠è]∑Ò™ÎÛ¡qˆÅd®8∫ípr}+∆:Üù\0ªK]≤M:ç“†‡Á®œÒ¨1·˝M4».Rê»ÿ<go¶·ÿ◊Eu·	ÏÙ∏öK2ÀÉ$ wÜ˙Nï‚⁄Ö.WßbÔ)fbeù<Ω€2@¶j~dí}©é2ØEX≠!∞”%∏µ€≥∞}†\r‹dZ“’4]8ﬂE™<vo¶&°n‰Å˙~ÿ± 2’ë¥y%éïq|≠∑j±.‚\08?•g‹[Fa¿B	ÂΩÎ—5´ç%l“-Â[#Ê<«ï*[ÅÓyÀkí¡$–≈2∫êÖ0{è∆∫Ëb•9]´‚ëÃÅœ5f“sõ∆AÌUè8ß«ºÂW°ÎÔ^õ’JŒYé;˙Rl$Ÿ\0‘∆Ü0ÏÑ{äIßGE\n°p∏\'÷¶˝ÖÍ0∆ªI∫‘RÂ∞¡6Ä;PÚû8Ã{Ku≈C∏¬÷⁄[ßuèÔ ›èjD≤πñdM•Kú‹˝j›çÏ≤ô\Z+6dÖa‹sÈ[GƒzùÓãñ∂ñÜ8	làF¸`Á\'€≠s‘©R2˜QI#ûπµÇ‹ Ûãæ0Í›?÷™ƒ§∏Çûπ5~ˆHÆ†Y‰ô⁄Ùæ◊MÄ.¿G~µG!Iµ≠6‹u‹a„ìﬁôÅû?ï∫êúcê1÷à†ﬁ9™Mãúcöí›»=I\Z˘Å¡À`~Ur Í[8ô@å≈\'\rπ«nΩ™e&ñÉHû€W∫—Ô-n≠‚H¶ÖÀ+ï»qÓØhﬁ.{6±{ló+)>b†ìùÀËr+/Ví\'Ú‡ÇfxcM√œQ˘“ÿXZ »ó2b= dí6ëI¡‡ıßJ§¢Æ)E3æ—¸M6≠¨YmÇÃBÚ»dÚbƒ´ºés«JÈn|◊6o5˝§p˘ŒÒúÄJÙÿ√Ω+œCÉ¬€\\C$s‹[‹Çn≠0¡‡l3@?„^€-˝î⁄j∆”†I°»bp2=ki‚9ù•°úcmèëıÕÎKvü»≤4≠\ZK∑\nƒuZ≈qÜW∞¸L≥‘4ØÆôy<3€≠¿{và˜\0Éë◊øÁ^;ª#ìYŸ≠Õ¥ËÚ9ÌF}˘†bå)ÎCÄû\riYk⁄}ºˆ–‹:√0–:V[)ÛRF‘ê2SÈR¬∆≈ç˝ì^Gˆµhc¡‚<ÉÿÛÔW,µ	„’PÜËÜ®îˇ\0}s\\¡9ÁÉÕ<HUHÏ{R∞¨uZˇ\0å5-oHM>ÍÓ9aÖæXŸ>u\'9¡Ó*•éôêƒ◊3»∂†Ä≈F6ì∆\nÁóîVΩx,çπå≤;cÆ9«zäóµ¢R%¥∞¥É^1ﬂ^H∂ÇC\Z‹√»ˇ\0bªMsM—Ê±ºûŒŒ[ãSdOnr±8$é∏?„^w•’Ï≥õ}Û\"Ÿ^+´˚ªßËò.§:|±©`ç¡¯O°<\ZÛ±˜¢˘µ6É—ËSÜ¬ÛKµµ∏D/¬M‹©Á†Ø“|I4^≤πãd“8*I˛ˆzbæ‰ÅÓMóq†-±XÊ<=+ËœÈñh—mA#Ül±\\û„≈r◊Êˆâ\'®+XÛkZ∆Ω4V?ghH;Ÿ¡\'÷ºËY≠åÊŸÜÎï|no‡ ÙékÈÕc√is‰œd…‘/Ω®`OøµxÁãº1y•º∫£ƒíµît	¥3úzQN§‚˘$ÇÀ°Áöú‡†gà¨£âx¿⁄¢:√E£Õeè*UR·ó9#””≠6ˆÊImÊg|Ô|∞=MW≤öﬁ&IÏÑ¬eÿí1#ÀÁíæ¶ΩE8ÍEå∑@#°®O<‚¥ÓÏÃd®!ìV≈g0‚ª°$—#(ÊéÜÇj¿^(4áöQH\0\Zp4ﬁÜóøZ\0z˙PGzA¡Á•8\rÿ\0dû1HbäkÉëÈS$@€êÄßúˆ¶2ìúåzC$µù¢ìh∆Éö”3Éèp*ídF\n‰Ì…´J3Û ¡Ó+*ëLKSFÛ6„nqN3≈;√˙î∫F§∑Q∑ÃΩèCL∂∏ëb¿=GÃ™∑\n\"ìÂ Ù ä∆+NV+ÿ˜œx◊˚B˛;;¥XRÌπâÜ8ÎÌû?*Ù\rk¬∞_i·mUVh∆c\'ÎÎ_>.Ωcughbè ùBátJ∑∂+ËkrÍZr≈\"yë¬äë›©˘e\0wê’p†Øg∞πÏÙ9-O¬:ûØ¢]È˜c»¬ÜåÄ\n≥ïÛ~ßa6ü}$.Iæﬂπm∞;Ö@Ë{◊Ãü¨l¢◊ö‚ÃßÔAªÛE\Z•\'oÖ˛í®•æÁósú˙”aÍC‘äcåå◊I,˙WRsQrSv8´F$<ı´F‘c‚πöf¬i≠Â8ßΩn≥FÆ¡0ı¨ò£H∆i^‚Y$y=z‚®FîéÖj%ï`\Z¢eb;–¨»»Õ\0i¸àsöû9ñ≤¿i1œe ;x4uÂ-Ö\\‰’≈“Ê|Ã3óµT∞≤ûi,Å6åÓ5•guso˜LlX„í	\rÙeôt‚Vô\n´à˛˚tÆ[Ï≤%€[Ã»]◊rª»T\'>ı›%‰&€ÀîÜ?u˘„>ï≈Íìi≤Í≤$í∫ó¿_ìÓøß∑‘◊4ü,â÷√Á6—€™>VlV…«=	ÔYrﬂ§Ç“˘Ã÷‹ úá˘Ê¢æá3»ìtåoYT`ˇ\03Å⁄ß∑æ{ãE∑ô«ì2\"~ΩÍe8Ú‹gVëÌ\ZU{gŒARX¸ù„]dﬁ$KøChU<’ë9c»ú‚±º@◊/£ZÕwi∞\\LŒì‰∆˜˜®tiLP¥0IíH«ÃWL±Ë3÷π±™*|±2úlŒs\\¥ù5∂µ‘∂]ÜwërŸP@ wÔäÊ\'µ∂:TEú¨èœôÆø≈ÎöSàŸﬁm:]éH‹çågÈåW\"˙«⁄|<∫k(fÛh†‰‚úW[1°o4´X^ﬁ˚MªQñê|€π…«•sØKt˚Yù{±…≠,Ä£>W–v§í8vçá!?ZÙi©\'v	XõHh·æÜR≈BÂN·È]ˆµs¨ÍFﬂP‘f˚çÿv\\)€ëı„ÒÆjI1∏üjö·Z(√G*∫∏‰Ø^Ω\r*SøP:Àü]xr÷+´õùˆ◊cc}îñ¿oúv}¯ÆOƒÎ©j“y<Y≈ïÅ∫ΩNqíz‘IÆ\\ZY‹[$”Å2„	)QüR;÷;»[?Z™$ü4›ÿnNDŒ;“Yπ®É±ËMOs÷ªÜ3p@‰l„⁄õ$lÇ0)ü2èsL	ÉŸœ*∏\'ûïYA$~¥˝ÿ8ÔﬁòX∂Æ;SÀÔ^qTïœB~ï*±9<”œGı§iMAÊgúÙÈLÛ6û:@Iq&‚•D5 √=Í¯<t\0˜ÿyu®ÿç∏§›∏ÒH›~¥Äç±å˜®	5$Øìé¿b°ŒFO·@√©•E±⁄åfü€ÜÍMK∆w„Éú‘ˇ\03G‰Ì\0í{‘0b>rß‘◊yccßI†Æ°s-¨sÄ#˘‰Á#Ñ«^á5å›êr‹Ø¢«¶⁄¯j{Ü≥‘\'πyv˘ñ´Å–0I#Ø=`Îe`øhÌmÓ≠‹(áÀ≥ı$˛úW†i˙éãg·¶≥óW0Fõ¶X\"C∫·ªo=∏Ë8Ø>{≥r•X\"©}¡…%á?≠r”îúﬂ2–Or=Fπ◊5ã]2	d∫ê&[Ä=I˙W°y˛–Ù\rNÜÌã|€ÓuÛ|§dsûqúˆÆKJæóJôıh†më¥eé	ùß¸+6˛‚€%∫v	që\Z¢c@Í{÷ìÊîócH…≈hPª‘%‘nÕ≈·2cÌEö√-»Y‹$d3«]c«lPèL#:nnqëÈ[Ω¨à$Ωk`‡[yÇ=£;»9n‰{UhêJÍπ√\0p*Fh\ZrJåíBí÷íÓ“[9\nH∏Ù√˙ä\"˙\0¿Jª°=2\r\\ÛÑ≈w∏å™„ u=≥Têu©„îFÀ ?º9\'4⁄VÇÊÕÂñ‡,—Éàà9<éˇ\0â4ñZµ÷ït≥Y»FﬁπËOÆ)⁄nü&™eπ$Iôv`∂›∫`w©‡gFÍ»J±)∂<∂‰Ç}«5åöµû£ÛGC¢Í2xìRÜ[õc3ZbGh◊smœ#„o<Ò^Ÿˆe”t;ÿ¥€ò	ï1ò∆‡ÿ åt≈|Õ∑˙˙ÀÔop0xükéG±ØCÔçéì•‹æØß ”N7[]Ö‹¨‡p§t≈rbhhπv=56µ≠Rˇ\0¿:ñü$Ì$∞‹…ÁÕ®QëåÌÌŒOJÂ|E‚â¸Q®J!ö„ÏÅâÜ±πAÍ8ÎÕg¯ø≈:ßâ%µmFx‰Ñ2\nêqü‚56ècmm§G®]ô#û‡îÉÕè˜LΩ	u¢£)ÕjJ≥‘ßáoµEûﬂkâIÿÖæcÉå„”ﬂ⁄∞≠Ù…Êæ0ú)Y61\'Åéº˛Î:~•q§√o©$\r*«c……E=sﬁ∞º[˝â®Höéõ≈ú◊§ö6çÅNA<cò©•çü¥Âí˜_PãW9Mƒöááıóö¬o(©)ù†åtËz◊§¯{S∑Ò5‚Õ™-¥ì€É˚Ê∆zïÈÌèzÚhÙ}B·ë†â§æ‘#´í{ı“¶ë™xJr∑ªÂZ2zp2?ZºT)9\'ˆá+^Á´È> “†–ÓÏï\Z+Å1WTR©\';ó˚†˙VéâØŸﬂC{{uqó÷ÎÖïN÷)‘8ô˙\ZÊ<7•	6Í∑Wë¨∫˘v÷ëñŸí>Rßìí\0ÈÙÆ´U”VÈmÀäV.\0ÑÇ—Úx„®…çyröo}ø2£ÆßKg|öçåóñ±JåN0Ì&¥ Q%∞íEÚŒ‹ëú`W£ΩÆÉ•[Zƒ≠å¨œ≤@]÷\\ÚÉÍ9Õk/à¨n‚Ù3:@Y#Ä)YFNA˝+J^Õ… ﬂx63Rïæ•tf[©Tê¸+ã‘<5{e⁄dè˜\"BôÓ=»ÙØP±‘-%∞@¡—1\0ÛYö≠Ïpjfﬁ˙)^’ór?AüJÓ£œM&ù”¸sÖ∞â£\0	Ø\nÌ<\nµim™mÜ‘bJØ`>µUÿ∆G•zíînÜ[ÜEYíÛŒuó\nhWı\'÷≥7íõª\nUmß5wgê˝ÍÀ∫ª6$˚bÆHÎÂì\\∆±qOë…lcÈI∞ıcŸ,XêÿJ.µx‚únÁüJÊnn⁄9AG#–ö•uy$Àñl∞ÔQq\\Î.<@a%-Â⁄Æ95»k:ö3?óÅû˘Õe‹›»ÍBûG•Pí	ò£?ÀŒqÇIŸj& Wí<Ï€2ƒdÁ€÷°≤äH“áv(BÌ?≈Ô]çƒv÷,É}¥À)$…ÍŒﬂÄ‚π˝Õ√ﬂ;_zòOô	¢ıπñÕILqá~Ó+F◊UëÏöŒÍWtP>Œ;FŸˇ\0Îö´h$æ∫Ú–ÜêÉåû¶Ø€ÈM1B68èq\nrä{àä]:ŸÏ≠ÊÂ[ öfã¶B˜(˜“y€∂ÔXìË_Œc6≤»ä—å.\0˘ö⁄”Ç•ã{qq~t~`?(U\'8Èûø•fìä Z$è~Ô\ne·Àg∆;‚¥/Ïn-‚Çy—ä ªÅ+Ä}ÅÔV|5K-‰Ú≠√6ŒC#=NÍ∑ØﬂΩÏvêôGgU8&©∑ŒêÙñˆ[nôºnkÙbx≠M~{çjºö4D›óI9∆A>ÿÆzŸÓ\Z\"*xÓ_“∂ÌÁä}@Gv^-ÓÜFcîdÙ„ßVrãR∏€0b∫}#∂◊,å*´ëè|˚÷.´´M™jS^Mè2N˛ï›x∑B&—$¥ÇŸ¨–ê∑P>U…9√s◊“ºŒta+dÛö⁄åπµdèbK»®ÉêF~È§<PrA≠ƒuöÖ®6ªo,+Œa√rI„<’ï9x˛—ïB˘y∆qŒxÆ£√ë•«ÇÓ!f«îœ&	Ó0rejVÈ˙\\\nÂÊ‡âIÓåÈ\\qõˆç1òPæiÈWYîÄ≠VÚwSàôTdWhV∆zìR 1È‘T®Öó\nt÷‚	∆‚z⁄ì`%ï·≤ygyrƒπàcÔ7O”9™ìÕ˚Ô0ÀÊ≥®v>Á±´êB¢-Ï´$èπcååÚA\0˛\nŒª∂ö¬fäx˘ÔÎÈXﬂﬁ*WºOö6UÀê7˜jÏèk˜	#ë_Â#∂?Z”¨zVñØ©jr°∏…X!RÁÊ#¶+U∏Iı+ãàT˘-çºcá{ÿEIÊ»‰`©‰÷mƒ€ÿÌËzTÛN¨ßÊ‰÷s.”úkD¨-Õª]*y¥‰ùbï· ópº)ıû∞≤IÄ3œ ˜—È>,‘¥=Ïv2!IædPJ`=à«ÂP\r|‹X}û]>”ÕÀì>“\rÌÌ⁄±rïﬁÅ+t1’º∑d@Ó‹£”⁄ûOù#Cn ÙÈ≤e»¢ûò£–UÔ®ëåÉ¥ˆı©÷4e;à¿ÈéÊ¶äuViƒôÚm=OΩDŒKå*®«J:å¨¨ÑÚQHÎÜœZ∫2Òåˆ™íÇÓ»´B™I8$Ù¡ßFbÛ◊x;;‡‘\n0¿åüßzV%õ8‚Å¢fR•á\\wË%)2ªzÛR€X…qm<·—Rd3`ê}*ìÇ\\‚ü+∞ì‘Í#‘–DcœqW˝d∂Íß…DÖï[8´+rP…6-HËØØ	UÁÇ+;yîoÛTZy%èüJøin®]‹Å«øzi	≥Vﬁ$dRp	Æû/I&ã%€FàfXÿüæ£Æ=≈r—# PG≠‰÷§:∂w$ûP\03Œ>µ•%⁄D…ªhb^Ôå·ò„vÌTX£aÿzW£_h—Í~\0ÉRñ˝\"ô§PPèîqÖ£äÛ	$M≠Ú‡‡”©OîQù«¨M3ÏçI=Ö_“ßäË\rƒ!‡OºÖà›œØj•\Z£;õÀâ∑lë∆3Å”éˇ\0„]&ç‚H,åzn°µ›©öISÓÉ¡‰sés¯RÇ◊pì≤:∏4∑m”Eg‰H“±àñãlúï=≥◊5Ê„˝ps¡Æä„I7_i∫≥êHêpô∆==œ5Ãî€íNyË*jTSñùMYíBë¿„•69ö-Ãú¡§-∏‡ÙÙßFí:˚z‘«Rôn“i%Ã®fõ\nI¿©\0∏≥3¡6ËûE$0ëœCMæ∞∏Ó£≠¡ …\nL\nûUX˙Î≠ª∑\ZÍY€ÈÍn\'í1sñ»€–Ù≈eYr|[üTp÷˜˜v∞˝úJ¬2–:åı≈Vª¥x§UŒ‡‡08ÍOjÓıãi¥˝ñ4]OOïã›∆“Ñz`Éö‡‚Q.Ò$é±™‰23ÿVTjFoö&ç4%%Ÿ*‡ÉÇh€Ë˜â‰Ÿ€I,ÖLªÂÇÅ…¢≥ôò#±Æ≥LÒ∂≠kmôäGÚƒP»Îáè9ËsZ◊ïX∆Ù’…Zúé–∞æU∂∞¡8ËsU§%QC&3Ô^ëe¶Z‹¯~Òo°1Ã\0⁄WÜ›–`}kœı?0 ÇVÀ*Ì\0é@)—Æ™;vçµ+‰˘DíÑ“´∞∏9Ñ{“gÅÕu$A ‰ÒH√h¢3¡ı§c»‚òÀz|è\r˝¥ëèù%V„úä˙YÒûù6©¶ió÷⁄Ç9A#%ª`£768∆AÛ≠ªlö6∆B∞5ı◊á[O’-ÌØ≠V0ÆÃ˘{]PvêyJ⁄õJ-¥g$€±É‚\'Pº∏–ŒùdÇ∏GydîÜe¡qé„˘◊Ienöf´(Q,À;gp\\àŸ›Ît»S´…K°§UÜ≤´èòÈëLââ‹ÉÉéJêåÇ=jÀëdèﬁ•vﬁÂ]^ YÙ´»Ïèós2aXß>πıØÒØá¥Ø¯ZS j77*»K⁄m§˚ûkﬂò‡g ‘üJÚﬂÈKy™Ÿí	ØnX<{◊+\Z)#€êOÆ+¢åùúLÍ-S>t’W‘ÂíUEg êÉ”∞®ÂŒG\'éÉ5”x˜I∫“o¨≈·ç•ñ\"˚‚Ë√wŒïi#Œ=lV\ræ¶öXÅG<÷Æùn∑7ÎëüÓπ\'\0’9-XH®qÄE^ª–µ;+{-ª%ævâ„>ïçI-õµ∆;Rö˜LW“^Ì%∑VÛ6∆¡ówÆ}jã\\¥™7ªp{Ù™¬FvÜqZWv)§W∏q&A„Ñ8ÈR¢†í{ÇW3&ê±$Uu 0 ‡äΩ<q¨h´Ãúís«µV^Mo¨‘~ º1yOÂJØ w2®bƒtÊ∑,n¨ân#p‹˘l§(=z˛ï»[4k02EΩC\r√8»Ó+b¬Kq–Õ`ÍDN[j¬¨Â&hÍY∆Ò‹Dc∏è8xîƒû„ÈY:í¥ƒ^3∂Lïì?xVÂÜüı¢´\\,7*¿EªÓ∑<ÇGzØ´/⁄t˝óvW_¬†.\0Ë;„◊ÈX™™È\r≠l*ªf§EB=™(≤ß8§œ$\ZÏµ—$•∑q–bÄfáß4‹c=ÍE‹“xœJ,&Aå„äë„o≥âH¬ìäöÍ(·}Åª\nû⁄Í‹i∑Û¿Ÿw.yS⁄âJ⁄ÇFAı•ˇ\0≠Mœ^ÙÄÒä–C≥èÈNÍ)îÂ9¿|—Ãé1ï Û“Ω4<0Èm±›*+H≤ÜsèjÛ‡öÏÏÏ.n4uñ{òÑïá¸≥>üJ‚∆E4õe¡€cØ≤ÒçÕΩÜôŸWdNVP¨òΩ≤•oøåÓg”Ã2ËÛ°e@√ÿ◊#·›*ﬁYÚÊŸ§Eéä=wwΩu÷vrÀ§Z€πÉÀ ˘K—§b8l˜·b4Ìc¢:≠LÀ€üÌ	áŸÙ’É»4ôSû˛ÁµgÎ7∑oV\r¢x∆ŸH9VR8ˇ\0ı◊C°‹X⁄Ω≠≠‰bw∂-nëÇÃÏ2y=;ö‡uΩU4˝,PïΩ~eeêíps”ö™uex° I#+Pâ¥©≈èú$º«	»Œ:V|ñ”Õ*…+$Q…∆Ê‡m=ÍnÆW»∫(evÛú˙‘ﬁÀ¥∆\'.ù∏Ønù&ΩNf åÅd @=jH~¯«Jåôß!À+±lAßu/ü±Q‰ÿëÄwë‘u∆+=◊Êœj~„ÔLg+⁄ï¨R&\\Ø„öaU#æ·˘UÁk#ß™G∆ÛvKdl«jìL”cøº)uy¨J3ü‰=Î)T≤mñëôïôUx99ËkVÔPûªÑª+%»7ƒÿ∆;u≠}√\Zv±2€¥Û«36¢Ó.r8¸â5Sƒz\"È∫àÇﬁ=ÂCJòcéºzW3ƒRú‘zï»“πÄßézöF\0@ÕK$/\Zn§ë“†q¥‡˝z◊Rk°$J\níA(\0\\Ù≈)ôùÅØbﬂMªû⁄9E¥¶bÅ8»˜´Y=©îÕeÊ†\rÛ8¡«?à¨ßV€q§Ã›åfÅ\Zé3É¿©÷Ï0†I.›zTok€≥¬“GÃËGjºPú,«rDI¿ÔOô=G™`cl±»\'äEfU,£É◊‘õkK≠\r[…Y…?4„!—±ﬂ∂9WRΩﬁÇcíıíKvPÓëJ‡z\0}jx∑ ˜Sn”≈⁄cxr}6[9#ô‚é(›Ì ±;»ıÁ.ü¨Æó|™˙ú∑6ﬁgõn—®.#;ÅÁ“∏I$Bë4]T| yÊß”/>«x≥á⁄\rÀé¢±ùÂq+ﬂƒ+œÌπñføít1Â\0g∫„µys!Fe#êkΩ7vóÛ\\ª\'ô<à≤)#ÄŸÁÆ[ƒ∞ZE®ÉdÏ—≤¸¡Üa◊èJ€€ZÉwfN0z—ìönr9§-ék§d§≥&ÏTëàÏ›G≠F≥mÛÈNdÅüZÕ‹C]>ol”¸íŸ ØúWt@É≈DÔ¿ƒ_”‰Ç’/EÃ++<xåÁîl‰P-€4äòî‰)=*}R\Ze‘∑⁄Ç»—Öîd)#á∏®n≠„I≠‰Û@ÕÚëÇzè¬≤zI‹kSß{ÈK´[}¢k§7Å\Z˘q«SÎ]ﬂçﬁ⁄=*Qcj–«y˚„π»*z`sŒz„∂+ÃÌÙõó±µΩèÓK/ñ•òcwÙ¸k¶á^htÔ∞\\È÷õ‰<Súc±Èé+ÀƒS˝Íú]Õ©À£9À/≠l$‘-∑,Aºß`pr{WÆ¸<◊ÓÆÏ≠¢öˆdÚe⁄0F„°˘Ø,öŸ†n@ÀêÂîˆ# ~µÿx.(¬ì˛¸)x√.6:“≥Ø$˝Ó¢ëÌVö‹W◊≥X¥¢+ò˛_*Bcé£EyœçÔu[À{ç¬Àv¢˘Ü;ìÕt˛≤“Ái`∫∑wΩôÿ ¨2T˜*G¯”<c°√\0˛ôi≤ˆ·<›‡Áj/R}ÛÅP◊<˘‡àãv±Û5Ê]‹Ó»≠t^\n∂ãZv–ÓÓÂm—»xÚ€π˙\ZØ‚->;Ÿ-‚Bû_ ¡ª÷∫Oi⁄é°uiq§$P4qm∫,]Ω€ÒªÂ.jVÿ“:3/≈æ\Z0ZyØlÅQ‰f•»œvÆaµ€ﬁæ£ÒwÉ‡’<\ZÔßEJcìÅ¸>ùkÊçF’Ì˜,ÄÜSÇjx\Z≤kñ{ä•∑FiÎAÈJ9É÷Ω30åbÄ9¡ÈIüzp˛T\0áØJPh4ù)√áJrüòò4Ãc4‰«L“c6I≥p©≥JXÇ€ó•Vπ¥ûI~D.ƒ‡‚¥4mi4»eé@Û)I$u‹vû¬∂ÏÙ=j˛4π“-\'óÕp\"H∆KØ<Á∑J¡\'qÓqÌo4q´H•ËH≈~ÔvÏıØHˇ\0Ñ[Rµ”“˜C¥≥d…1ìægÕœ◊õÊ§êØﬂÿ~È9‚™MZÏV≥2Yﬁ4-ÖuÁ<‰\ZÆƒ FÓÈW≠t˚Àª©aÇrÄì∑†¥W√mnPíêá∫˙ÊπùH≈Íπó•Ãmn„ëÀVœ…åÁÒÆ∑OÒ.ßøf”ÔfÑKÅÂØ›cû‡◊—5º∆9UîÉÉû’mL!§¨$œ\Z⁄˘etL°tzÍxÉƒs[[jz´[∆Sì∞ÈúuÆw∆˙Vó>î”€j2Õxf–˙ëè∆π+}JWQåY\'•h[≠Ì„-ç¢yè;|±ú|ﬂâÈ]5*Œ£VñÜIX‡dXé¥√»´öï¥÷wíE4f7r\rSÍ=È¥”6Z£Ëò\"p√#èZ–$(åÓµ+®÷∞6(∏e‚ö®AÎ◊≠»CqNÖ∑GZ@YHÉ.:S÷◊4›ÿ≈Z∑$˛4Ï%∂µÇ*“€åÖQ…Ùß« W\"∑f‰ˆ†[QòIf\nÁÊíH‹ï=+¢íË3ï_ˆ∏¨π†è/ï˝kâ´œ- Ab)T‡HΩX˚÷n°/€5R.edên‹8´ó⁄i∏WñŸ∞c“π´ã9	([ 3!…€¸kí´∏ØbiÂéﬁÔÏ+w!è©eâıóÌ0XI(ï…Bqwˇ\0ÎV©aya$k\'ò22õîå¢≥Ógûy7Õ#≥ó…ÎSNü4SN‰ª≥π◊µÎ}OJµ”ﬁ‡ãxF˝€sÛÚ\0œ–◊üﬂ•¸d?ù\")√/l˚ÒWu\rL‹iÒ⁄®\n#}»BÅëéy¨_6Y	òéúÙ≠„MΩ…∑Fmﬁj\Z•ÔÖ MulÏHç eÃ≤\'sün:÷&°wl∆8%”÷nã\Zòòrzù«ı´—4pœŒ<¬ß8=\r/äu5Qn÷ˆê€îMé±é9…=ÕM:*ÀfËsRÆ’RßÉÕVw€¿ŒO•6Yeè+¥ÛÌ“öéÿP‰=}@Æ’\rÏhiS¨±ª„a8l˚“L^9Êå™π\0äé4RQû*Y$ƒvØ$`–†π˘ë:3\"MÕ3¿P#$gπ´fXˇ\0â}™#8ÂG∏Ï	Qœzª∫ydÇ2*ìL_∑$30 @ÓZö2—Åå‚®J•öª$é{è≠Uôòûqöw%åSÜ$F·ª8®¿Áßw9¶!˘ßûzu®y“o#•0h≤™@»ÌQH‹öz>ÓO\\TR®»Î≈\0 …9Œiåƒ;=©™2Ÿ§‰*sLﬁpZû¯+ÅPHp1@»ãn&Ä;“\0:Êû:R∏\0!}j“¢Æ∂:Ê´F	b 2ASªÓZŒLıväEu8 ‰{S„∫u∫YA‹¿‰Ó‰Ù™€á9Íiπ(zÛ¸´5Æ·sX›⁄Üôg¥ÏVW)Ç{˚‚õkuin]<…Ìga˜G®˜¨áê±\0ûGz@s‘ìÈT‡öõZ≥ŸG|ÈßK$ñÿwI˙äÀy7Ï0µ1I«<“„ÂÈéi•d\rèé@Æ3éx…=È]©ebÕìœµF®éHSô∂©Q¡«8Ô@òÖAE8¡ÓsQd„ëJœì◊ß\rò=O\'“Ä,Zß⁄Ö#vîúÄ:míjçe- çì◊û‘‰∏í÷‡Ω¥Æø)M√ÇA?ùMg\Z\\JﬁjÄπ‡˙„øß„P€ZÙãzN≥˝õi:Egv$$¸òÙˇ\0\ZtsO|ÏÿñiSìÊ1\'ü◊ı´zVçpui¨\'â‡v›∏¥%ä®‰ê:Ê§ÒFä˛∫µå…	ôÅcÂ>Ïc\'”÷∞ˆêsÂ[∞‘Õ‘->»J¥¡ôN\0Á\'ˇ\0≠MãPæüO:xªaiƒ,ˇ\0(nô÷ìS‘¶‘%3‹™˘≤r»‚≥3¥Åû¢∑Kô{¡c§áƒb;ãa{k»∂»ß¡‰˜´ÁXµæ∂µY&ï~œU∞Gz·˜ï~Ñé¬Æ¶cEc»aêOÚ®ùΩIq:˚õ≠FÓﬁãÇÒ>dqê=≥¿ÊΩÇ¬ﬁ÷◊√„Qû	aí’éM˙d∂?Ô~ÛﬁùxñwbBø)„Ô^±·oà:h˛Ã”/û‚hVL;LE ÂHıÁÊ‚Ú∫≤∫–ÂuôØÌÔÖ‘qyPN∆∑RÄ7^Â}k±–Ùπı˝.€^áVÇ[˚d…∑eqå)oˆ∫ú≠u)˚?âÙ;{\r*ÀÛ$îÆ–Éû9Á˙”¸·%˝Î8æƒãÂ,JªNrI,R	‡ı≈r’≠Ó≈-%—ñ∑ —¨≠¢∏çT˘∫y∑Lsù†q◊æsÈ[ö÷°âm¥˚€€K~$æS89<ûı—¡cae$“2ÚÌñy9>á“≤µá‘%ºW0™œ0Å#*≥…?L÷º˜∏Ÿ¬ﬁx∂H‹ã‰ª∑∏Nã ÛanÉèØ„å”Á∫∞‘ı*ˆhÁûÔÀS#Z€≤ÏtÏ#ﬂ#ö€ì·}ù¥Ú…PKÊÅƒπ¿¡…$ˆœN*K-9Ì/„”ÙÛ$§∂”»àÂÜz‰qÔ≈t®∫i≈ßrìÓE\rÓß¶=¨p“»<ËöR“\"Á\0>ΩΩ*MvÚÍI¢ ¢ƒAsπÛûs˛©¯Ö‡”µœ¥Yy®¿˛á9ﬂØ<~UJ[·®O=√¿ﬁlçï;æÔ<ÁéxÆ¸=)I&Ü¢Le!∂*Ä8\n8©$d~ﬂÅ™6Ó¿}:‘Ú0«Ω≠†≈y\"S¥1Qéáπ®≈‹g\n”–Û÷™^¥⁄≤f∫Ú–úü≠+‘ª‘£è+ú≠rZùÓÁ`}*∂≠{#.¿‡ˆ5Ü.|ŸÛœÆiŸbÍRÒå∑5õ$Œún»=*kßc¿5õ+ñ˘s@à$ñEù∂É«bkFﬂƒ\r\rîÍ–,ìL¢!+ÛÑ\0Ç?Q˘V5À3\rƒéıx÷•?8$ÒQ8›\nÂÜ‘¶\r!‹	f…x8™fRyÁìLYåh π‰UÀk%∏ÿUV`HNßÅﬂ”4íQâkt—»	RßÇJÿ{”*âæ–∆SÃÑûMBtud∑∞M#J°_b‰,ù∞ò®.tçGM‘Z¬Ú\'ä·O1„-è•.x∑`π°4Q§BUπGe∆\0ŒI#?•L˙„•ºÒ¬÷∆G€Ç}G„TÀîó±„Ÿ∫,Æå’]FxçœÓATnqÿQwfË¥;®¸§çcs<ícvÚ´∑–‚¢’É[Í£ÆW˜g+üjìO.4x„Ü%é‚ e2;˝ÒËcΩ»π∏b«òìö¥õ∑“-‡:t+tfÅÆ\"- »˘ ˛˛Uío⁄+®ä@?snF3‹z◊sy6èi‡›\"πV∫±ÄQC¥$¸≈èπŒ+Õµ+»FßpÒ; íYà<ˆÙ®ãÊcnÃKÀ˘d*àŒ2√(º˝=k\Zy1q `GÕŒkA§äI9©9∆”Y3.fb¡=Mm&Ó8Á5,Qñ∆Ó?\njÆBcı´ˇ\0{q[&I≥aÊãuÖ&⁄ØúÆx§∫Ã∏.r@«4ñ“|ä\0‹Bê˛ï@ÕŒsﬁ¢ ‡H∂‰ı8©\n‡\0zw§Ü\\íOCOî8Ík@#Û\nQ⁄´\\»YK1å˛u#:†Ê™JÂπSë‹R‹dﬂy*e»‹§l»Èäß4≠u3œ4õúÂ∞«Ω:ﬁ⁄K¶eE»@YÜq≈?Ï2¥LcÑ°çs)\'ê3◊ò\"≤n)Émê	ak3ï 8Sü«?“´‹^H—∂\\ñ`˚\nÖ—ïáBO∑≠dö}£[ôMÀ3á∆–sÚÌ¸(n‡¥)£Ÿl∆§ríd„öÆ¿‹0{“£e∆	ıß@5Hí‚8DK˚ƒ^p1¿‡*0Ô<√Ä\\·AÈI0ê0\r\'À¥ cåqVæÕ‰ŸC,léNW+€5äZàF∑Ú$dyT»è¥Å»¸ÈÄ0ó ·X’®tÈ‰ç∏-¥ëÎåˇ\0*[Öä8Y\r!9›™W[Åa‘F®∆;W?{;πˇ\0<Vtä]À·Tíx´WOÖ.≠¶n2ƒ>S∏c5N‡„∑i\n‡Vﬁc‰ÛHZ92_è@)èù•qí)ë©E[•Òknötí8GlÜ>\nÄpF;Á5V!\0ä9 |‡c_≠A&‚0:zSvî ZÖ∫ïrc3à§ç[˜o˜‘JÖcRAÍtw_1—∞Jm8EWo÷≠7∞áÖe$ôÌV#á~	ÕE©#5u$q”4¿µkjÇT‹•ó# u\"∂Õ†∑π1++∆WúV~ã◊zÖºå…$ä´ı\'äÌ|S¢I¢j»ó+K2y≠∑∂…≠#≈≤[‘¡hSa…Á®™R˘†™ƒ¯vl{UßrF45©{gR°d\'ÂœRO@+&“,öﬁy¥Îõ;{˘[d2.¸© ‰‰tˆ¸+úΩ‹^ºê∂Uÿù∏˚ºÙ˜‚∫KM\n˚VÇHÓeH“vònRÑ1€≠MßËZlûﬂq≥Ì¶9L\"\'&Fp›Xv\0ZRÖy«ﬂf.qã8ÆVmÖé–›	‚û—ê«iÕhiz÷≠|∞EêÏ	P I<∆>ï%§vêÎMkÆ€œqÇí˝òe’á|\Zïk≥G-Fi˛$˛œ∑öﬂÀÛx\Zé1ûå=˙VjKπJñ%πŒ*∂´K…e∂‹`.|∂aÇGøΩ>≠Øö%\\úÂq»5\r´h$≠©&Óîåv£ÎQ˘Í˝xÕE#ñ¡ u≈R(±ww=À´M#<ÄéN;VñÖ‚˝g√r:i◊\"1!Å@ùg•¨wÔépWqF8ˆ™sHÖ6€\'˜ázôr‘Vêlu˙ÜπØ¢Õ\"é1∏`ZNsñ?^+õ∂íeö{åÇVÀ&9È«µSÜVa≥\'$c\0÷•«ŸEÑ1ﬁ»⁄ÄbíG∑¯q‘\Z 4„À39ßëë†f‹Á®b,&BÉ)‡Á•>Dû⁄Të‘ÓÌ∏u$.#q,∞ñQŒ:f∂Ë.ß™[k∫lz^õ!Y~“b∫YH⁄rwnºè÷∏oÈ/¢Î+m 0.åΩO ÷B©π`S*}j-BÚ‚˙Ekâûf@3ú‡’ÕBá≥ù”) ËÕ\"öGÙˆ∆1ﬁ£˙◊†@‰‡ÊëéM¡§cÉ@D¯ ÉÉúÊæ∂“V]C√÷í5¶§ˆêó/!€`∆Ò¸Cü≠|àßë^¡·äSÈ>\ZÖeπY\'¥HÌ„ÜLí—‰‰èp09Ù≠ Ø°2=óM‘5€r ÷¨Ñ›∫Ú›∑#–ÌÍ*˝ûΩßﬂ^ÀgÃRMUG…‹v¨‚>Ö™Y[…% √q(\'ÏÁó»8∆sÈ\\¶£•jû Òu≠Ï∑RiàÁ…∂í%Ÿ3ÄK|ˇ\0PÈä∏“Êø2±VŸû±$ÒD3$à£8À0’iµX‹«1+\\ô|á?ÌtØ7’|?‚;/2H“„VãÌ&XÛ6ŸoBGF¸1S€j∑÷⁄M‘⁄ç˝©†ñk[∞|À~ƒ˝i˝^6∫ïƒÍæ«e´_÷£ïM\\ãùÉq¡/=\0ıØ6◊ÂáJΩóUwi¸Ù&“16VÆ–é=çZ∞Ò»∫“ØˆÈ“4ﬂãÄí` /aúW©¥S€ﬁ\\ˇ\0fKÂ*∫áÛ«»Ïp¨G∑Ú5Ñ™*m∆pû.’c’oãà‰ç‘ÄW¢Ál›´k√⁄“iö<]Ëo”ﬁÇm¿ªvU∑√˜ÌV¸Oa†≈‡HÁBNÆ“#;F	F=\'°ı˜ø{E:ÁáÔcπx‰”Rg[ãg$g(\n∑˘¨©‚=¢rZ\Z∏§¨s∑QÈ∫µπ÷ÿ=¥ã\"*B√ÂpÈéÁ˘÷]ﬁ•<“£]˘íX!ﬁBÇ=œJÙ]oH¥“|<mÙôyÉïu\'!v1ü^+œı)\"ø4P;Dãπ£#[πŸÆ	’çiÛt-FÀCöëCºí\0™Ó⁄ΩµH≤ºñ¶¯\\Ó<\Zlñí§\"·ëñ&<0®Ä8„=´≠Y°lB\\8Ù‚£„&§úöç∆⁄Ÿñív‰ìŒYF›¡˚Ÿ™÷ì4S|ßÔßËk]l3w\ZÜPírÖŒ?ùg6ñ„H-.d¥ëeYà(Í‡c∏ÆﬂJÒtJ,µ(°∏ö‚@ì !}1È◊Æ>T3ÿ†1¬ûH˘H˚Œ	ÔÙ™ó79û#Ú†å*´\"„Åﬁ∏™Qçe™⁄:’\"kK%≤∏EŸ<\nªB„ßÀéæ˝Îéoæ{Û]∂ØÆi∑ˆE®ZÕupa€¢∏F«\0∆z◊))w(Ëqå◊Fr”ÂÏxQ»©£rqπxœZç0˜Œ*HÀGïaê;◊CÿE´d∂∏øä9ßTB√,‹û+B˚NÜŒÚ0Ÿo:áˆ©ÔY$)!EZºñ⁄‡ô!Ycå(UG}ƒ\Z I›°Ü„k≤Á88»ÔMÈNqá9ıÔLÔ]+bGÁ<‰fÄi01“ó©Ôöv‡ÿË◊≠-Ùe”÷c”J|¿OÀ08€◊°ÛËkœ1«Û´ömª‹‹: bBñ¿Î≈c^îgH®ª3Ë]:Ê“Yå⁄j¨m$-∏…(&A”n¡«µ.ïek-Âï¡∑ç	sÃ gÖ=≈y&è∞ª2JÚ$æ^U∫‰qÙÆûˇ\0≈xM¨M≥√4ÖB\\8\'ÔdQ^\r|<§˘i≥e.ßO„[È¥«MRŒÊ⁄+hî•ºh‡ô	ÎåWá^Í3ﬁj2‹ ÅﬁC‹*—õE÷^ [â$_*3¿/◊>Ç±£∂ππòE<å£¢åöÙ0òh—ZªôŒMê\\E,RÌêmn∏®ÜO≠Zñ2qªñÓjπ˚ÕË8ØF-”Ù;~¥–2*EÙ´@8ìI¡∆h<˝(\0íå±<IÏI≠a§»d∏ÛÑq≈Ä	Ój›ΩÜü8&÷´ó\0$®Éq›œÃ1€•V∞Ωk{{ãYcïïâ/Æ2⁄≠MWÉHWsoÅ¸º€ M»Ì»¡˙WïàumkÿËäéÖùF‘E¸sXÕ<mÊlπYXå;œ·ZÌÂ∑˚%Ã∑97J%1ˆÄGön°„Ycx5vä ÂÆ°Ÿ,`m!áBG®ıÆw[◊ıÍv±\\08o.¿\0&OL„˘◊%*ugUTö≤ENI+#˛ˆ[Ÿ√∞‡\0†€´6∫3›Èóq ªm¿gÆß≠L÷v“«o4Ó≤Ó+?…êò8»9Á÷õ%ÃvwRZŸJfÖæPƒ`dMz.~Ì©ôu‘Ω·ˇ\0ﬁÈ±3)k2	⁄Fv˙˝+2˜PöÍ‚RÛñãÃfAìﬂ¸äﬁ’bÉO”Ï·ûVèU∑Cƒ#\0û2√Ôd\Zt~ª∏ñ+Ω6÷;∏\nçÎ‰ìåÓˆ‚π„Rù‹‰¨U∫xv¡uK»ﬂRúCkqFY%Ç„åá•zl∂z]Âîq	 íRb‹H0î<ûz‰`T7◊–*Ÿ)≤\"èÚÌÁ∏>ßûµ‹¯QtŸ<7n.¸©n|åF÷ıVœﬁıÆzıeMsÙÏRäg‡ﬂ¶É©\"ﬁ€•ÕÉ7Ô°`F1∆k®m[B’Ù◊äHß>\\ÆWnG√üAûkòÒÇ¯o«7ñr¬≠πÚÅ<nT˛≠¯BÚ“˙÷ÛLí∑‘¢‹øe$ `0ÀÙ=j™*Sîg{_®ïˆ9ò4ÀBÚ,Û4rn\n®∏bŸÓ=k?˚:ÈØæÀ∞¨•ˆ™∞€ìötÒ]h⁄òÜˆI O\r¯÷Ωˇ\0à¨ÓÁäFÜI	CµQ—√$séµ◊Õ5Íâv±õ5•÷õp…tZ7ÿËx<U=F4ñR–ÁCrs]£´«©ËX∫∫yu1[aà`Ä1Àı ó⁄ŸÛ´•Ãıdï?ã≈…§*7÷ú#\0g5’Ã\Z†cû¥Å±∆)ƒ‡ÙÕ≥ú\nB,@»–∞såt„öâÿ)\'o>µ\Zæ\rJ°úÏa∆A&í-Åy’@»n∆Ω·ûÇöøà¶F≤i„âòf·pFx<Ág√ˇ\0\rÏukF˙îwìFL>I;#|ewg◊ëıÆ◊E”/|5‚;+Àÿ#¥∑∫áÀimîïy†a¸9«5«âöîM\"öw<Ô\\˚È^õ:k(Fa«ïŒz˛\\ä¿∫û‡‹√mqòU2€O ˝1^ˇ\0„O∂£mvS=§S∂Îèì Ò¡÷ºKƒ\ZŒÖ©ÑûW,(˛´ÿèlW%\ZäJ“‹o}ì¬:}Ì‘2k±_ìê@‡=áÚ≠∏bµº‘Ì•±Aj…∑ÉÚëÈ”åä¬@–ıhÌÌØ≈\'Ã≤åÚ«$©_œŸÈ˙%•ˆ•,Z>©„0ÖU˘à#=â°Æjñåõkb◊º¨wpÆô•YF≤˛ÂŒvõ=Û\\Ï!ºΩ˚v£dÉÌW≈hÂw(ç3ﬂ‹ÇjéΩ§ﬂjzZ≥ﬂfx•[]—ç£ñ ˙ı¨´®◊I{´+œóJ∂ÉªlÑgúˆŒk“é:ÑÈYFÃ∆Â	Íyû≤ìÍ⁄ÖƒÁ\nÂw≤û«Ωtü]-&ûˆK∂Öa‘ƒzqYˆ6MÆ\\F∏;#i»x‡~¥æ\'JÒMƒW2«H]wıCëú}q¯◊-Yπ¡¶löR–Ùˇ\0\nxã3…§E}opwHæJpOç‹vˆ5„üÙ9ÙØ]√\"ÌWT‹1ê˙˘Æ∑F—\ré≠-¸ y±∞U~^O©Ë0z’?ä◊q‹‹⁄˚ÊH¬»πŒ¬=˝*0ÛÂ¨îvZjy	·Ω˚”j{µ&Tz‘9 ä˜bÓÆd •äLQ”ä`;Rcöp˙“ú\n\0@ºNA˜¶dÙ£s@á≥gë]ß√ˇ\0jæ‘£[y\"ñ’‹yêŒ«n:d›kâˆ©Ì.ûŒo20ô*WÁ\\åÉI§¡H¯”∆öiÄI%®ôå`ô-§ﬁ∏#÷ºí?È3_-¥÷íAßó,Jπ,ß◊ﬁ±¨/ÙŸb{kñù7â‡‹ZXi/cs™NQ@_&÷‘|¨‹}ÛÌ¸Í*®Mr€Q§h›xÜ\rZ∂ìJæäÎOvWñ1ÂO·]{\\¯X ó0\\MÃ2Í«v¿sÚ˙s¡Ø\rìé◊xbﬁ“ÔMñIÔù%ç∂àÄO›?Nπ¸+Ã≈`“äïﬁüà+˜$ÒThu9gÄ¥êH«då∏œµc¬ÇQwl úZÎı≠In¥√ß}ê	∑Ü˜ú~\0W¶_≠∂©ïWÀfÿ˘\0ˇ\0Ö^\ZÓ:≠Ü›Œé«D‘M{ˆµ\rjs˜é3Ù˜´R<@…ëé9Í+oJ“Ôo„0€\\3¿Õ „)Î¯W¢Èﬁ≥üCy ∑í;ïPNﬁ†˙V‘Í\'>XΩL¶è\0Ò,m)[Äá—çscÇk›µè\n√ür/†(œ`éÔûµxÖ‹E√«ålW\\* •Ó≠a¡Èd} $9∆3MíFéx®¥ÙïŒå}j¸∞r:~µô“ä{Q£‹WÊ<\n∑@ØNiåÖüp∂*Ã9¶_´ë@W©BÁΩYE8¿≥a@5°\ZÂ7v™0®ëö∞f¬mJLõóﬁH⁄‘¶¿1‹uÆjÓDIôà\'⁄Ø…;Ï V%Ã•≥åzu¨ö∞ïÛ£ókÖÓÔN∞˝Ãóœ“Ösç‹1µG…i%∆ví3◊Zmfˇ\0O∏y˛dQùÂA#úw#Æ+éµü∫∑&L—Òù˙=πéKV\0<åá\0˝kÃn‰ÄπXe‹£π≠˚ˇ\0«yÀrÇ}Ãª£.A`:Å≈A£ËZ}˝Ïq_,∂±\\:îërI¯@?Ã÷xh*1∞\'cíπi7BsÍ*\r`7zz◊a¨YhˆöúÇ=-≠∆1&7∏‰n˜Ì\\d∑$3™ê yπ5Ÿ\nº˙ mn$“…$*@¿‰ı™Ø+ÖÁ©ı®Ó.ã6◊-Ú9Ë*#\"≤ûGZ÷(W%p$#Å÷°\n•¡u„=* S„ë$mÕ–v™ª%ªËZ\"n¶4*rŸ?J£$¨Úí~eQÅ≈Xi>U’MÂ1û™Ä$E,®G¯”ì8ÈVw,†ÓNO•5xÆ‚liE\0~¥{—(ié1÷¢lÑ˜>µI°‹yïèzk1r=j5lTõÄ\\ÕP\\h˚‘3`Úz”IœöO4\\Cô∏≈*ïÓ~µr\0)|∑$N„,D@#÷íQ‘‘≤sO2n¿≈$äÑØµ7?>(pı≈\081‰ˆYéÏüZï≥¥ı®Oﬁˆ§\0qÅ≈û}(=3⁄ÑRXw-å‹õIóI”,nÂ@œxÜUåéà;ü≠e3∏´ìj˜∑QZÕ;<Q\r±©?tw≥Å9$ídØ}G6∫ìuÎäfs◊µ.‚s«JPø(8Õ4MÜp;~4Ù‰ÅL#∂x©8#û¥ˆ·yÎ¡©†∑{áÚ‘®8,p)&UY\n¨ã \0rΩÙùRŸêrÏ{éï@28FÚﬁÈÅWñè¶µ€›√@àìº„ΩÛ«“°”!Ûo\"V\\‰Á¶5rÚﬁk≠F˘Ì¨⁄1í\"E$ Ù¨ß7Õ òÆÓa<í‡Ä÷∫	’ÙâÆ&∏çe≤PÄ\\ıÌÎÔXX˘\0\"Æ9Æªa#n1Ç9œ≠[“Æ≈ï¸Sºzƒ·Ãy#v=«Jâ\nÄ®˜5‘¯-nm¸Cm=†∑f@YíaïeêjkOñõmœI”¸^˛/7ˇ\0g€ŸImO≠ê˚√™ü‚\n„>%ÎVû(›®⁄Zx≠v†a2≥g$üAåW°*XÿŸ\\\\]Èﬂ`π‹úô¡(√QÌíkÑÒnåÈ¶[ÿŸ≈ª§2®\nÂ≤N„ÍyËk∆√M:äV∞Â‹‡m~◊¨œkm˜ôòFánvéÉÌÕ\ZÖç˛õ®µµ¬πç\nî%@œa–äﬂ–4;òÔ\'öKYÃjZY°p¨ß∂=H=®◊uÙ_=ﬁúÃÿ\ni˛wf«ÃzH≈zû’π⁄+A\\Á/∏£πµ∂0àURD∂N>˜>ß<U÷\"Íﬁ%bY*g™zÉﬂÆ)ó\Zï¥rJ÷ñ¡®≤∑0‹vÕe≥L€€,é{{V©6ª°5‡uô›î)œ!F\0˙UÔ›iﬂ,öúm-≤©ﬂ\Z∂q–Zµ·Ì>}y‰∑kà‚ä1Ê<íÆBûÉ‹ˆ‚®Ei-æ§±ò⁄3áV\\gæhu±{äÁ¨Îz¯‘¥˝_]L∆Œ©2@¡ıÎÙÈ]Ïæ\'˚,O~Â€U∂âUÏdåÌny`‡sıÈ÷º8ÿﬂiZ¬<≥ÚÃ˜Úy©G1^Ÿ#5‹ﬂx◊U’¨Ã∏∑í∆>eªÇŸ”ÀçÄÛ˜∫~5ÁJù‰•X=qµ9nt…§íﬁ;i#ãÃeí@W¶rÍ=ÎìñÎX∏ÅoL6ˆË†ÓêÆË¸Œõ¯Án‹˛8≠]g√öñòdé„OçZ‘n∑ï6ºkå}µs˛iÓd‘!ÇWXﬁ¬8„$çªHıÈ\\ïisTÁóBÆÕç˜]≤∑≤K¯døﬂÚÆ m¿ñnz`w5µr∂”ƒóç«tãµP∂XŸl˛º◊wqq¢k∞ã<ªX~R^}®ÏGVä≥®k:≈Ú»û_îƒ˛Ï∆Â‰0«QÔZÚ+°.•ßCy¨N¥Dñ‰+eq∆Gı¨√∑ï£S∏)¿oZló2Z⁄ò$Aw9àß#˛y5Vkòê†Öÿå|¡èC^¶È$3GÌxÔSG îV2œÊ6Û´÷“\0÷∑ôÚ»´öΩÛ0¸uÆ†·ÅÕ`ÍQÑV9°Å∆]∏p r1X“LaoòÙ≠ã˜DcÍzW7z≠ÊíV§ñYí·à!É1UZF-…í%∑èfÛ9cª\'Â«oÎQ≥≤úr=hJ≈¯npx®„å”≥ñ„ßNiåán}1C O9©†ëQ÷G]€XÓ*ç≤0\rL-Ÿ\"b\\mQúRÌmB«^|mo£∂ñè¥MºF;_n›¿p?\n¿’5ñ‘ıi/•≤8Ás¿„ü¬≥eëcHŸôπP&•ö÷Â<–»™›Âx\'“≥T·/C™<í,”ÀÊ¥X⁄%À`úUÀ¡q6»â0£1@√MW‰∫i†(9«÷¥åwù<W8”—‚o3	á	)TU~K\0Ÿ»„Ω1jÍåÃÃ\0˛¥√±ú•Tp{“QB:Ø6Û]K(û6O)<±ÂÄ7Œs‹÷[ÈÛ	∂>≈b2«ìLèPí“¿≠Ω€‚qâ#€”9¸ÍÌeö%éFê»TÇ01Ë1Pó(∆¨29é0°s¿\'•SùZ9ùN	V „•h,¸¨l‰¢gic”æ+6Íœs,çÀ;ONj‡Óƒ9HúSÃúåwY$%pWÚß3Â@ûı≠Äﬁ≤ÜQlXÄæjÊ3ëñ™.ÿ\'◊5ïèq\'Å≈*∂Ï\Z‘≠,XGŸ‘ÛSâÉ/j¶H\0ëPô≤p	…™byê∑\'†fP	ÌU¶lŒH®ƒ®…∞∂=ç\0mÈ≠mqÃì˘7,Ï¨Ï7 åå=jç’€LÃÇe@B ‹`W Ù¯<ÀíÀ\"+\ZÇQà‡«Ωe‹ßîUxÈ”9Æfó5¬‰Q›=±dB\nìπ≤88¨˚ŸDèø`\\íp;U∆\"G†ﬁ©]ﬂ´µ}+Tµ\Z+˘õîÉúˆ©\"8\0H==j&é8©-„iÊXó;ú·@≠¬7ekiùÑ*R1ç†∂s«<”ÌäßÕ>@˛FF*Ñ∂”i∑&ﬁ·\n∫ûs∆?\n∫Ò1âv‡y5íàõ\'º[®Óç√Çé:{\n¨ˇ\09›ûsAfr1$W\"Ä>ıÛM…ı°F9^6‹îû\r^}Eû»€<q±fI∑ÊÙ5\n√ÊJ ∏∆3ÕHëÓè`å>aÕ√‹ßüõvy¶Õ¥åAji!‡nû¬§Ai%î±Àî∏R\Z7!πiÙıœµ\'++Å◊3\\»ÇÓ\n™†\0`UWëé8´Ö$µï†∏Ï ¸ßß„Vc”!ìJ{Ø¥†ë_j¿√Êaå‰{cÒ<È◊3U–[≤Ä¡âœ=?˝uÌΩj¸∂R≈`.B)äB@˘≤TÇ3«nµD)c»Õi\r‹SÙ5b)pœjÄ¬A€⁄Æ[\"˜Á*ÄË|=©ej∂w˚7õyVBπ∆pkΩÒ>øß¯∑Uµö⁄éO#c‰ˇ\0s˙W†¡mq´Ÿ¡w#Eo$™≤8*=q[∫˝úPkWqiõÓ-‚@ÏÒ&Båu8ÌÔZ=)∂G⁄±R‚Úâ‚å|¿ÿÎWmö“ˇ\0XƒR‚$£ìπ«_N1ö…èH‘Õ¨wÈl^›…\nA…>¯ÙÕE$S∏  V»\'p?:‚n/fZgg=§:uÉFÊ	.Ø€ÚCË2k6œJÉGΩ‘-ı)&ä‚*$∑ÇÜˆ\'Ò¨!£1Çñ] ÏjÙ,Ì;MpÌ*ê˘$t\0˛_•u”ƒZÃ˝ùŸk¬˜ÁC÷¨ÔÖ¬ ¢]Õ˚ÿÂr?j\ZÕ¶›¯¢K›;ÕƒÃãÆﬂõ<’IÖ≤√±@ÛK`ÉÎıÙ©Ì<:Û_*¥≤UUƒ0çÃrx¿5ÑÒ	E©\r√[£]0yBÿ ÇØøÉéAÙÆy‚eΩTﬁµ‹x√D‘4ÀÔµ^√0˚GŒ„€µΩ3”5…‹#)…Í‹˝i”i´«f	ËR@À…=*ƒeèí«Ä:–\";IŒ\rB˚ìÊAï´\Z,»`é¯Ts)cï«òH&öªòd‘21-Œw◊5<°rGd K‡√ÅÏkB —o¢)Ôµ±Z„ÜØ5û6Nz„5wJº˚ÍŒ™@∆\Z¶i€Bì!{ô–à§rDy[ùæø ØÈ:m∆®$Ú»·rFGÃ3–{’kõA$Ú…båK`iê\\‹[H6 \'RΩª‘……«›‹]u{∂ó3A ⁄Ëv∏´HÄ(fl©ÙÆ¶€DmpÕpn„/Â˘≤±Ë3Ç}N+óΩµñŒsúÙŒqE9¶˘zÉEF÷=≥M»«Zs.zS@¡≈u°s⁄å{Q≈ÅéNsSD $BFW#+û¢†CÛt≠õ-(O£C˜ÅV‰@ÃG»229ıÎM&…n∆¡’mï£õK∑{x≠ˆ˛åºy<í√Ø=?\nÍmº{‚	÷‹Gq≈§Äd§R9√8…ÙÔ\\ÑÕ\rﬂíÏ´±˘/ºaH#©«ß_¬•≥”•í·ÌñÂ#9⁄≤©·èNæï^◊óRnz%è≈mYı¯fûcˆD$À\n0!˘œûîÔxãLÒ#\\O8D∏ÚäF¡YAƒG\\c8Ø<6/§›Gt\'I<¶\råOJ”ñÔL’R9$w∂∏¡Pv¸år1ülgÚ©Áõz\nI:˙À\rΩΩÏHÌP§{®9ÓqVmı]:˚√˙ºÆV‡º2[˝@8`=NJÂﬂ	+§rÓﬂ+¡™˜+hc»ˇ\0\n‚t”ùŸ¨R±T’Ñ≤N®|»LF$cpŒA«c≈l|<÷‰≥áQ”Î»[êØ˜Xó⁄y^:q\\\\·”±U≠\nGMIDl¡ú˘N	ˆı§©E¡°Ívz∆≥<Ú‹2∏RÓÿpﬁÑ\noˆ§7Ì‰ƒ¿:[íI:ìﬁ∑ˇ\0∞“=\ZÓy-#Å‡,Ä.˙~#úë\\íhR˝∫8t≈7R≤Ä¡0B±8¡Æ\rñ]Ïi¯¶∆Í-\Z¬ò—<(C∏»9Ù„˙◊sm[\n≥z‰b∫ÕgQøÜ÷”Lºl∂NpƒæsÇ”ßJÊÔ·y	1∆T˚f´	œi=Yò∏,@Á4…\0ÉíMXH]•h¬ù‡r1Õ@AT`√ú˜ØE\rÑ≤JÆ:©ÕuÚkrkMr,$qà’Q~f˜Ê∏Â}∏<◊C£\"œØﬁTëF\'\01»¨qVÊ.,ËmMà[õ4çE€ Ñ<}ì¡_z¿’t=RŒÌ‚æ∑Ú§U‹8#‘≈uè°±µõTƒ\0ò¿åDH8Ao◊ı≠Ì\"Óˆ;IÏµπ≠Ó‡HÌ\\v‡„i=Xc•yŒº©ªƒ“Kô@$ôc˚<ÖÄCùçÿ‘n#\'öÈºCm`öd7VRC7ù3mˇ\0Ω\\veÏ9ÎÌ\\„ê\\◊•Fß<y¨bKç∂NOP*7òîÈQÇTår:”É|≈Å+ëZàû$WOΩ∞Á4çE&[%{‰j8À€€5ø†ŸΩ’‰tI!3›sπ∞~Ô\\b≥úπuc‹ÊÓ¬}†îm ¿„æ*æsä◊◊Ù·ßﬁò—ï„Àm*8ÎY‡÷¥‰•–ûÇı£Ω ÈKÇzVÇ@ÎV,exØbhŸïãïÎPÄi—í#ˆR\rLµLhÌÙô5=Òu+%°må&îñ>∆ù´\\\\k7“‹]ÖäUªâF∞Æû˜NÜm%—πêBN”ªút¡W/u‘±µ¨VÁt9gmŸÎÿWâOŒﬂK©+\\◊¥W‘¥◊íÓyn1fâ\0¥˛áÅWº7•YË\ZD∫≈¯;‰‹#DôO<7˜Iœ	[Yi∫5Õ∆¨$C/Àô¬Ø„ÎöŒ◊<ew™	`cPØ eâFÈq”=ø\Z≈∫µ&·âi%sä’≈”Ïá…F˘ï	…\n}jÉ£\"·Ü*‘í|Ó…í?⁄95Y∑9˘´‹¶¨í2cf¶u¶`J3Å[¢Iq…=E0H»Í H`r§v5*©hr:Å”÷¢ÿ∆:T∑p,i‹¨ç)o1‹íÃ«$öø5’Œ∫-„PèrÀ¥∆äp8¸k\'ö¡H9<j‹ÿAf-Ó4›Dôí5yî´G&y÷π*Ú&ªöF‰ÈwÚÊGçïClêïﬂŸsÍj]Ì,u4SyJípW#*z]˝üà„—¥7}G√˛s‹[çìC.Ë˜êÃΩçy¨âm8ö‰‹1;∂ùƒü^’ÕJ¨ÍÛFj»©$íhŸπ∑∞’Xæó»ºíF/	ÂÁ9\rÈı©t=LöıWVªí⁄&F ÖŒË=ËΩ˚[M#¿Ú§Ç7FπéA≈uöNì®j\ZÊüy<]UXcÇ…#◊ˇ\0≠\\’j:wÖÏÜí!üHäÛNøµ‘bˇ\0OX“H§ƒÑq˛Œ\rm≈hﬁ”Á¥Ç·‚ç°[òfE…îm…çàË1]¥⁄Öﬁî≠´Né TÕ…mõ‘q»ÏEcÆè¨Èﬁ&i-ØÏø≥&Aè8@\0ÅŒAØ.U\\˝÷Ù‹¶è8Ω∂áS±-hëg|Ö≤6…É¡ˇ\0{˘◊A¢D&ºSk∑vê$ªV—óÔÅ«8Å‚é¬˜V”¥˘d˚»(Éø^3“≠h⁄]û°¢Ë7Q$◊iè\rı©cÖ|¨\0ÔœÈ]rè55ÆóúÔƒ]>Ó€^[˘Ôæﬂﬂrl`Ä∏¿#È]¶áˆÎ…t{v$Hûtro‹å”È◊ü•ZΩ–,uoá:µΩëõÌŒÛdã˝iPN3ÎåÉ^w·ã›RWä÷¬„&UPÆF9?„ZØﬂP≥˚\"Z=\rﬂÈ^’.≠\"YE‚∂-yÃeA∆tË85ô·˝HπF:Ö G‰∞éuÁx9o¿k–t≠z√R”a”û“HŸ`Ál ≥\0ºí£ågÚÆ[≈ûk-V[-.ö÷8ÃÊhòh»‰ûqœk ﬁ…Ë>UJ˙èÄt˚m_ÿjfxÊeh_ß A<u+œ&ÇD∏u9m≠Çsë^ß◊Ÿ|%=ØÔm\0Ï˜#ÂfŒ©ÏyÈ^}V“¨íKtëóaR2BûwbΩZ˘‚Ùÿ«©å‰ÉäL{VÕÔÜÓc—∆±Ó≥yl‡Ákvœ÷±y‡Ê∂å‘ï–thPr=M9[m)¡…ï¢bBÈÕzóÑ>\Zﬁ›•Æ´v÷Àk4BHñG¿êûãûÉ<ıØ+ „<g≠{¡Ô›]¡7Ü$åÀ6ˇ\01ﬂ\"$„Äßﬂ˘÷UπînôJ›NÉ¬ñû\ZÒ„≈e=îr…±·,p^„áø•z±{94Ÿ/Ñ´q£x‡$√÷∏;øÎ]¶•,À∑çö9êÄÒêIÁyH«l÷Ò8í“Í÷÷C¡àíŸ…\nßª/¶z˛5ÕÁ-P=ËπÜYPƒ#{4F12íI…ÙÙÁÁ?4®‡ˇ\0Ji∑òÿÑäz\Z±·+…-Ÿ‰æÚÂj∂ÊŒ“8˘zqKÒ.‚≠:%∏ôùP»Û`\n‚qJ∫ä–#+£√ÌÊ)t∂’œS⁄ΩS·˝ÆÆö¨ÜEƒWJ9˚πÎú‰`Ò¡Ø*\n≤\\è/q«5ﬁË^+‘<5ˆª;y›·îWV¡åÉ¡›k£	N<±‹πu>àµ∂¥Ωè1·ìs£.0¯Ó;ıÆ_ƒﬁHnM‰XmﬂpQ±∏é€GØÂ\\ØÜ¸kimr◊Wrﬁ4“†UÀÓ∫g’ki™k0ﬁX	e”ñÚ√m‹{ùø„\\jìÇ¥’øQ˚G-NcU—·DHD%⁄l\\+ÔÏz©?J„tõ+(|C-ù“≥€+≥‡åÇ1ÔŒ+GQ’WP÷ŒŸ•⁄	\'#i\r‹∑ÎTÆ,?≤ı¯ÌÓd3∆ƒ\"Ãáê|ø\\SŒ⁄≥Ï\\tïœN–`∞Òã5ªFu}ÆõÜËÒ¬‰«‰_¥ô4„ekwî∏ËFF+—Ïı5“o&ºöÕ…ú3 ;LÄ}ÔÒÆO∆öÖüä5\r2ªÉgÊªãÜ)ê∏‰0Æx´¬Úﬂòuπ„“\rÍÕÈ“´ér+^—ø±Ø\Z$îM≈(ykÊΩ rRWFBqÙ£fî“’®Ωi4ßØz@!‡E≠ 8Î@ácö	≈7\'4á4X	ÒöôÓ%ô@w\'h¿œaUÅßÅÇHÈ@ƒ´∫EÃ6∫ú-sº[3Å6Œª3Œ=Íìc≠&qéjfπ£f3‹l·—Ó-f˛Ãﬂ®[+â“&é>£5Ê&∞∑±÷¶KW&\rŸ]√öË<?‚Àë†Æümlâ%ö\'ãÇUèÒz˙~U[ƒ˙\\◊Zeû¨±†2°Û‡Éå∑°Ø\'\rNtÎ5=ÇZÏvˇ\0uΩF?yh 6™≈dp0„œ≠zFì˝£o™DF·†Ä;É)‰úˇ\0C^‡‹h◊≤XùÜ÷Ëç‚CÄ§t9Ì^”oØÿòm÷XÌÂA∆√Öo∆Æ+ó „æÕ’⁄ÁA‚;=CTéx\Z›p±±Rsˇ\0◊Øöºa§=ñ§Ô¥Ö\'#5Ù˙¯¢ Œ’öI“I\nå&¸ˆÈüjÒè^[kì‹bUcÛq«5ÙqßÕÕ¢G<]§ö;=:7ÑÓ„&ØÌ»Â™(∂Ï‡äùw~+Ã=1ã1ˆ´1«≥®»°\0Jû\"ÆqBäF2i˛hÌ¿ß…\ZÖ8∆j°;	cå–öMÿEÿnFÏgäµπÒqÙ¨©\n!ﬁçî\'ú“≠‡±J˜@ç\'UÿOQö•5¨ÇBX‰ê3äd3¥•π˝ÿ<ú’»·I£`/#\0Ø\'êµe4=w2íÆp8‚≤<Ak±∆∫|Ü;«\0X…‹}œ≠hﬂ∆a`ƒ3®∏ÈYZéªŸÏÿ`ñ5!:ü∆∏´&⁄qG!dì[jè§R5¡ƒåpπŒ≥oØÊëô#ñI>bﬂ)Ëßµ3Yñ©∂Ëæˆ,Òü·>πÆeÁêπ⁄ÏBTˆ≠°ıf.ÂªçNvcÃ“\"9»«ZÅn≤pÉMé›n`à~˝é‚~9™¨•}à‡÷–IhÑ>I9=ÈÅ›0KqÈQí;’ò,Ón íh†ë‚ånvU»QÍjÔm¬Ó¬£q◊≠<PÌÍi-c-ì«E[1⁄WøzU⁄√E…2sú\n∂ å~a€≠H-ˆ:∂‹ˆ8ÔCDCüìh4˘ä ¬ß\0“¨j¿ê:sÕI\"&“KÁäé&˘äéGzW∫%¢8r=E5âl®©fFâ∞À…UrO8‚F¢√c?ñ°ÅË:“+˛ÎÊ\0úu“Kí3∆*˘ôMê∫|√ ˜¶π+≈H£\rì»©1gq¸kB ›)òò¬í)¨†±9»òqû(7|›1MìHM\"úc÷ãÅ27t4£ëÕ»√œÆ)\0«n˛¥–21J‹æ;\nh\0#Ä*h‘œz`CπAœ^j{ÉÕ!LàÛ«jâ¥\"`\05‹ûO7„öi Ù®±6dN6„≠<>—éÙè¥Ì$r)å	\0Á™¿8êzu´˙FõquòWqAªn2[ê=x®$n®îÖ&ªo]ù.	A≤6ôpvn√ÄH˛uçzéún∑4ßΩN]¨nno$∂Ú∫ñfNBÁìÅ–\nÏ`¥\Zs…®_îºñF®v±Ù\r–úVâÒ¨⁄L£˚9c{ø)¢vX«»	…«Æ}káæ‘§õ 1…(h˙¸‹ú‰“π\\ÍTµ¥íLı/Ë6>dæ˛‘äT1ü5p¨•éUqêOú˚sOÒÖåZEﬁ†ç=æ¢ Õ≈EòØ,I˛Ó∆=kŒõVº’I%•é.dè‰3‘Å◊4˚?_]]XC©4s[[HÅmÂ%S†¿ÈX«.i\'©èΩsöw1ï∑ûA‚•)$Î∫8Ò¥`Å‘˚◊§€Z¯Z∆·ÓuXÆ&‘&ÛDê¥{ëÛ≥=Ûéjıÿ±–tcsß˝ô.‘F≤$`JÁ>ºåÁ÷∂ñ)≈{±πOC M¥ä©1_îÙµ–¯j[KZ+Î»ãZ®˚™¸©ıÁØ≠t÷˛∑M6ﬁ˚QúÕ•ô¬n∑\\∏HÁ©Ìı¨ù~	l[+p©¶<ûz$•7n\0:≈)‘u h—Ë∫à4üÎr‹k7Qõ{ÂŸá^FpGs÷∏ùwTãYºí9°ku_2;râºëüîp?\Z£g®ÿÀobm·hd≥-ë~Ò$ÂX˝	≈væ(“ﬂÜóUª›$å¸ÉÄd⁄2OπÁÚ5………4_Cœ_]û∞X∆¢“hXÔòíŸlÜeË0=+\'Ti¥Ár∂o|RHò,§‡∞˙‡äu˜êØ<◊»“EÖä}˝8¶]^—a≥›Ãâp]%⁄Lä08…˛oZÙ`ñ‰´ôìZyƒTê ªà^©Ï}Í‰q•∂ù,∆|9+∂ 8aÉﬂ÷¨\\_≥ÈB ;-Ö˘$?x7L˝1⁄£öÓÊ]‡ñ±!˘X\07éßæ=©ﬁLf¶õ¶Í£√∑:ïÄÜ@Gfêe∞›\0>áW\\©ßøÉá€¥πŒ•~Üq}¡2ò<xºÆ…däDÛëÃL7*n¿l”5Èöﬁjmnd›clc˛QŸr∑{ﬂ÷π±P≤ªdY¶r÷7·…ı{ÎY<Èb⁄™[ÓÁ≥Ûˇ\0ÍØN–/†ˇ\0Ü≠#Ω≥{ª[ò<ıµë∆¬I0»Âøó√x”√óZ]Ë‘Óm‚Qxπ1â(lvÁ>¯ÆRœTº”5+ﬂ5•6Œ(‰bWÉ”ïq¶™«ô=J≥>é◊^ß^Y%§1\\\\È»»…%∏Jèòé=+í”Óu\r_4,◊ãµ¨jGQ∆ÏÙ¶*ˆüÒh_ŸÿJFùıƒå≠π∂¨(vú˚t>µ©7èË¶Ó˙€m•‰¶πé>\n‰Çı»¡«≠rJìMƒj«;>°z˜◊vh#∏Ü)D◊V0«ÛÆN3¡«\0üJ–á«⁄ôÜk´Kx£ÅvFcó±pGR}+/ƒ\Zq≥ñﬁÊ=E£πº%féµæÈ‹ åqX7v—i∑¢⁄ﬁÂÓ\0/ï#k˜ˇ\0ZÍ°JõŸ¨ûá[w‚´Àπ†ªπ”≠’ÚJ∂¡Çßåc˙÷m›»πó)\n∆É8\0˚“\"€£._q\0êß \n0äLW\\!ΩAl∆ﬁ¢Ø«uÖÙ5íÚïlß^ÙŸ.F√ñÊµ≤⁄ä/ﬁ\"≤uü66ëÿ÷S‹cÛúä≠-‘ÅXn„ﬁï¿»‘dV,•Ä#Ωc‹œ·r}Iı´⁄áÃI<ú’·çó.ƒ·ΩmîcÇ{â±\nÚy‰‚≠Kn¯B∆B‡ï$‰ˇ\0ç[Ñ	Âä$rB1úz’çGFû≈ê±VåèñAú7Ø“£⁄kf$0˘éü[@È[m·•2,pﬂÔ¡9má∫‡˛î›.)“9ß[tö5$2∏„•t≈^U®”Ìl“(ä¶FﬂÛ‹„8ÕgRrË4é[T“!µÃ…r/“M≤BÎê8…9§æ¸ñ–√,W¢uôp9’bRÒjÄ‹ÕÛëù·∫gﬂΩTi^\'b“P~R|‘ß-?N”Ø‘REr Âº∞Bg\0’ùbﬂSò{ƒ∏WrUBmŒ8\'ÿUXÔ§Ñü\"Cú‰˚öí]SuÀ5º\nï\0.sÉéO?ù\'ÕÕv;€Bæ©ß^[Y¡q Å°ïr¶úR;V\\	ÁH\'∂+r4&Œ·6≥3/,\0gø≠CkjaêLÆ®Ëw}´hKAn4Z4hº#ûùi± .∆GßJ’káπa$íqììPN™>aéGOz§›µä/≈9>î#é·‘öVÄñdÌúTë;E\'ôc Á,21ÈI¥KDía{Ó=sU•\\o.CrE]S3Ét-ã[&zÅÄÒÊ≤wÓv\\¸§ûM$˚\r\\ò»ÊÕJéåáp9=*£Ò‡Ûö|rnÉë“¥@h¢<Ù)<êzS!R· gπ‡T∏⁄6ú\Z•†»öLj.	ØµI!$t«•U#†™\ZÂ9™ŒKI≈>AŒi-∆K≥\0	§∆êË¶ìpBJêª+í\\êxn3U:ÅÎÔﬁ¨G;\"î`1ÈYÏK\'U/!çTr@R«œzãSµ6w“€;£ºM¥≤6T˚ÉÈ]>ï·ÀùJ¬mMZ3k`ä”)|6B3‘f∏Îâ’ÆglÁs∆î\'w`B8Pß<˙Qk!äÈp\núÇi°˜;cäXàÛWq„π´ÿ\rYÆØ$2>˜rIl‰\Z≥j°«|Va]ò Á=+Bﬂq!Jñc”éµ	ÉFå—O2,íàTú»ZÆ—îb 0ÔJc\r‡ÅÌW°˚#óëåÖIPF©z;à§Äés‹ˆ©¨Æ~…xì~Cú¶Å)¬í[°›MZ¥—ûeyYÇ¢å∑›Ù©î‚ñ°k$€#ó\\`± zTeI`È◊ä∏mƒeX°¡$dÙî¢-˚ïôÃx≈Zj⁄¨¥a®çÅ\\ê29ÕG?+t¿¡ÎOR§aîOQI\"ê∏<íNI•ml-‹∑˙*®uŒ6∞^‡z÷[*áœÚ©õØ9®úÜ⁄Æ+ó@ GÂR⁄èõ»®ÇÉﬁ¨¬vˆƒçΩ*8ÓoÌbyA‰\n\\ûﬁªkkò<9x˙Zi≤ˇ\0hÇ<…˝ı\'ñ«85«xn÷÷˜Vä§íH‹63Ü$F\rM{%÷è‚+TπYtU,É-∞˝’Á˝öœ:.-0ã|Í∆‚Í0√}wn¢)◊qpH⁄†dûﬂQÙ≈Hûææ“Óû¬;lBC∂∞˘∏œ–ä¢ê«Ïí≈\"B&û[ÄÏÉá5“çgN†…vó3«≤‡ì&\n‚?äúc⁄º⁄qJIEù“°ewπ ;Xπ‘£˛—∑ëí7ÚKÖTı∆GfÆ\\Ÿ%ßõ∫,Ç2‰sZùEÜ›“s8®cÛê£ÅÌœ5r“+wä€S/+ù@àî0\n®∑†≈lÂZõº£°∆˘S≤g;g¶‹jåñVÒDH›&Ê„Ä2y¸)%}_G∏ö{+áia\n°G\0¿œq]:ËÚ	IYYg\nv™(-¯{‚±u;ˇ\0∞=Õß⁄⁄¿ü.C:Äwºﬁı”Ì©TäπõNÁ9‚?k:›©◊¶H<¡ áh[»ˇ\0ı’§—n4†≥„øE?19F;Ü8˙fßø≥o≥ÅÂ®9»#≠sÌÇúÉ[®˚© Z+&YA…ÌP2pN9ÕÑ7\Z\\∂NyV®√ë–\Zz¿lÑÇâ˜y«≠D‰ÈJ€åäM0F¶´ˆfÍ‰∆3Ö«=Û¯÷RÜ.\0u4ú*pV2®CñÌÔJ+ïXww5Ù¶Û\'\\∞Dqïb3èz™”Cmq#0É ûçK¶Nˆ˙ùµÃ—óH‰ó8‡Z±¨GˆÌBy°àÏy‹û’ïÌSR˜BËöÀ⁄3⁄ôÑv≥∫¥ôLÙÌÙ©<_%âï€›Ÿ…\0ÄA¡¨/(¶s∆).ŒË◊ÆGúÒT©EÕM\nÓ÷*ÓœlRªq˝)ô£–◊I\"A£ø4ÅFyÕ0ú5oË–Íö•ãÈ∂ÑΩ∫Œ≤yYˇ\0ñå08Ô“πÒ˜´Ø¯{™[iöÛµı©∏¥x»ìcÙqÙÕ :ÉW4¨<+®ﬂ\\€€[€µB°Â]€ò√ú{\nÎ¥ﬁËz‰:µ·Üˆ»H&ƒg\0ÇUìŒ\n•·≠]¢Ò‘X^∑º}©9\\1R√\0dq^±§€¶ó‚KËñ‰:Â£IÒ„Ê¡¸ø:)N/[\nqlÛﬂ¯KG∑zÍ∂Ú˝ôèÀ HŸ$†Êπ}{@“Ì¸•_A27ñdè$9¡\' ü»äıØ⁄¿æ∏k®‚agq∫Ÿ˜	@9¡„#“πÿltçGCµóV‘\Z⁄K9~—\ZC XŸzçπzu‡äÔQRçŸÃÙ<NÛN∫“Óå7p≤6–‡yOp{“ﬁ≈m:C5´∑ó \nbcñW–◊™x√˛ÌwKµkMLãÿÜ#˚Df0q ‰éŸÕy≈∫i©´€«t],VEÛdè\'ê{\ZÛj”ä©£6ÑõFq“ÓRKÖ∏å√‰&Y% cè|÷<,bπR	OpEt˙Ó•6∞ÊÌÊÀ∏€&F‹lP?W*ƒ,¯<®j¶¢ùëi∂µ=D¯Çˇ\0J/\r ;˘÷‡(¿î8«\'=≥«Êkí]I“˙IÑí¬ŒA;N;ˇ\0JnëÕæ°bÈ&≈üÓ„ »ˆ¸kº‘4;=Bhº]]Ú›± ∆Í∏¡#èòÛä¡F*Ûı∫9âÆ≠ı[;ããõ’˚KHá3s˜âŒ4{•ÿ\\üõåµ~‚¬‚)M∫∆‹ú˙Ø˜™ÄÖ£u;˘<Á≠eMY∑r∫çw1›;+íq√URÆÚùŸ‹ﬁ¥˘∑	é„Ù‚öÔπÛ…ÙÆÑ+ïYJìﬂv…ÿ!TŒù@ 3ÉNâ∂í‡j§Æ¨¬ÁAe©Io≤_ <±Ã$úûﬂê5–\\j˜vñR^Ñu˚T™‚Ì≠¿üºzä‡Uˆí\0Îﬂ“≠≠ı»ã»iù‚ ·âQ∆3é∆∏Ía˘öhµ=,tö¸Z]Õö›i∂±«29Iù&¿ó#!ñ3˜@˛uÃ W ú˛u*¥MdêqÜ…ŒO®¶ªF Bü˛ΩmN.*Õâ≤π!\\ÏÜÄ7tÕ;`„QåÙ‡÷∑É–óoR8‚¥ÙªÅm´€ô¸‘å8c˚‡{{’=5‘cWl‹ìŒ+•÷¥Åa¨⁄¢L¿4qπô”h˜ˇ\0Î◊5i§˘X˜„ÎXmE¢FééP9G9`ëì\\?ZÓºKß⁄Im\'Ÿµ!{<qô&ì¿ÅÖ\'®¡Õp›\rVw§VvpqN«ZLd“Ä3Ô]§Ì˝h#û)sÅGozA©Ë\ZMƒ˙èáaYµ%#uâU……ˇ\0Î\nªë©Èó≤°O9?0<∞ÏyÆo√∫ù’Ñ◊ë≠√€ Ã–H7*å}ÏWI©ﬁj:Æä◊Èqâ.¨ë(‡(Á©¸k¿≠NP™÷â3hjä∫Æº5U≤ΩËVƒçë`|zV4zÖ∂…‚hÅFåÄH…ÈèJ´û·ÉØ1∞=z;U[§éﬁ`U∑πÁ÷ªi“Ç\\±or	•ãïT⁄ŸÎödárCc˙‘¶…ÁèÕÖwÇ˚>S’±ûùka¸5qcßZÕr6õ¥-\ZpNÅÕt ¨ íoVBMò◊VÕ	?/ﬁ™∂3ÌVdïëZ2XgÜu™‡w≠È∑mDÏhË˜qY^,≤«ÊFQîØ‘YÓ6π¿ \Zû\rõIp≈GaÎ⁄£ïCÄ« «=™í∏\Z∫çº∑â%Û7í€¥„$úuˆÆó∆a€jÒ	à^9d¿).1í§uˇ\0Î‘∫%ïúˆøË{&ñ8æXòd;íÿ¸)æ+‘fãÌ:TV≤»Ö|ÆB°˛≥≈x’*JxÖ‰tr•û”ÔﬂLù÷C#E<;	»\0Ù\"≥dÇ⁄ÁRÚÑF(eî`rUz~5\r√Ô%YÒÜ¿«zÄ€](3¢;Fåp8ÕwBùΩÎŸô\\“∫≥º”k+K·$%ãexﬁ‡‡ÚµvæÒWˆ|?gøëÌ3ê˝”\0:Á˚«Œh˜zNß3\rfi†ë\"€»πWoˆ˙„∞ÕmODä∆H.P\\€ õîé°∞@B\\◊)sØg(‹k{ùî^&ÉQ”.uÇÊ[åA ÜwŒA*OLöƒâzÑ∑i\ZÈhël`q∏Ä1«5«ÿj	ko%Ω¸∑È!vè Ä—…‘~GΩc«o®_¨V!Áú #9luÕcOﬂ2–Æn«k}ÆkWöàπäpc ∫©` 	¡ïgA]n∂M¨ˆ®ÅÂCn£ë‹úÅö„¢æ◊Ì ºê6Ã3 {~4∫\'àµ}9gk&]å°%OÔ‹zèZ“XWÀh⁄ƒÛYû’˝≠\0–Æ^M“s¨÷mF‡é†Æ98\'Î^cqu·ÌZU&d>ÓäâØ5+›@¥ªﬁÊN2ÌÇÿ˜=ÍΩˇ\0òèyòÚC6H5¶\n©¡≈ª‹9ûÁ™¯bÊ∆ÍËj≤GlóV-√mé¨NO†‡û\ru1¯}µH.uhÁ∂s)TÿL@NOßıÊ∫V©ei\rï‹7^/2ûDÃGFﬁ®Í\"ΩkwêÓÚ”€¢ê‰„éù˚W¬ §Ù–ß=ü«⁄ê“tËl`∏∑L\nM∏›Êq√íz•yÕÃH<g°5b‚Úi¬§í3Ï]«8ïX‡QÎ^’\n*îQéª≥f“È·“/Ïö·ÑSm>V~R√°˛ùa>1œ≠YV ı„ß5]◊ﬁµµ˙\r!†êOjF⁄O\\\Z\0Á)è√sVÄF˘{˝+≥¯S≠.èÒNíGÏ`v=∑˘‚∏¶‹@¿˙QñAê0{\ZRäîl∆}y‚œ¡·£ˆmLäEÃl\0m„È^1™\\È˜V≤Ív».ÿí¯‡ÌœnïÕxRÇO*mR‰ºãê≠.Á>›x´∑Èoo|–«:ºr\0≈ì¶OaNQä3îùÕ}SXu-∑;B»Ö<÷˘ïH‰c”“ì≈\Zã«	ƒ®—ÃhƒdêG4∫U›û…!í¿u*ÿê(sé95œK^}ûÓO›+c˚ÿÎä„≠‘∫EBI‘y2Òûı≥o‹ïÎó<è•VπKE∏&9É Ó£ø„ZV∑‚ÿnÖÇ∏ÁrÛN\\Õhämœ£\\ÿÿCs*ÅôHŸp‹:ÉÈ^◊£Îì‹¯Z±YÁ∫HëY¶@†«Ω+Œ<?‚›]Ï5€@q)ï\n˝+Eºi£iöMÂµÖ€,8›EŒÒû†ùrkñR©8⁄Q’1Z)Ë>ﬂB±∫Ωøæªâñ·FËBπ\\ï˚√=Z„µ]ZÊ[Îõò!ÌÂ<nF˘N;Ù˝jÜ≠„ãª‘˘$»@›Âd+cπΩEgØ≠ƒ2At7á‹ƒ™ÇŸ„øßä°8ÀôösickS∫πº”¢øä‚Cnô\"¿,zê;zc⁄∏iuŸµ/«{?ﬁ8„ÌFØ4±ª %!aπ#V»ù¶$\"˝¡ú08\npsÉè÷∫Ë—PãlNW,j◊Fi]ô%W</∞¨yP„uk›≈\ZnFŒ‡xÕgòEuQvD∂VäC⁄ÉÚú\Z^’–Á{“ëäa=)‡ús@–îÑg8ß7L“t†sö\\‰bîän\04∆<\0:”∫Zgzu!ò3“§„åSO\\–Ω>ÍKK®‰CÅúq]÷µo}giø†ú.≠∏Ûœ°Ø;S⁄ªﬂ¯ûYÏd”5)Lñ•rÅ\nBåû’î©ß.f)lsåwd¥èJΩm™^@√˜ÆXîûﬂ˝jìƒ6ˆ—œÁÈ‹%´Å∑ÕÁúsÕC£\"j-<m*G<J»ÜpG=˚‘ î„-	N-]ùˆë‚/!µÀ«Ãc2‰zV‰\Z\"xôûk6çfQô¢º‚⁄5∑ªtç÷T\'\n≈p}èµh⁄ﬁO¶]•‹7Â$-—Nœ~;T©ﬁj5:{ß¢√3‡<zV≈¨äÀœ^‚≥lÌ≤2EXbÒ7\0bµπ◊cQBÊÜqH™P‹˜≥RyÍ«§õñ.	$&y®nÓ#ÚŒ”Œz˙äYYcRF9ÆwPæ±¿‘M\ZK#9Œ¸}MB◊€\'ö µ‘|∑ﬁ¿0ÙÕC5˙»¯øNÙØaâ© <û’$\Zì$äd»å@ÙÆz)0IÁÿ“Mq0çò8*£Ó±‰˝*d3†ª∏ÜË∫≠À™/›W<ÔYŸi|¨ã*+J∑_“™[j˜qÂß†b†ˇ\0:œ’ºG=É(Úî‹èô%„Ù«C\\ı#;Z$∂Ïs>!ä[wtêÊ=ÿå◊<°ÇmçÇÔ89´´hÌım˜R’oî]£Ç2z˙·k&Õc∂äIÆ“UIw†É‹~T”íçû‰Ÿ=L»ÌLéfF€‹\ZßÛ9ÁûırÊ8Dß»f+éIÍ©;i‰÷‘ñê∞[y◊Ip	\0◊°kﬁ“SAé}Ír@4QÂÜÂâ«æµq˙nèssi%ÍG#\"∏@GbkJ◊RΩ∞3≤nRí.~Ù¨+¡Õß	jàiÙ1ˆ\0\0¡©Ç9#úzSß0}§≤+Ù=çp<∞ÖTë¸U–¶RÛ&vëc¿„Û®|Èy›ÅNÅ˜∏Wmô?xÙ≈>·]\nò»`GQOôuë(\'i8√u…´ë[∆NA\0˜õuîÓ9Á•h Bå·∫u…ÈM…!ê]¿æfH„µSxY[8„ÈZ1~¯}ÏÁ¶jya€	»Q¡[∆\"d˝\r3;Z¨2bÿÈ∆hä‘»Ÿ%Tˆ…‚©jMô 1í:‘,∏P*˜íI⁄OÃ\r0[1nzÕ]ÏQW ;3ÈQbÆHôF^„°™åvìûqN‡BÁ&ïÒÎÎ@ﬂ=ÖKëå\n\rf«ZfÚ9•\'&òy8†@q«ZzÆH&ÖØoJïW qIç¨≠$π?*n…⁄>µ…íJcÅÔW¨ã@«ﬁ(TØˇ\0Z´I^:Tı+K√ù‹é;PÍ[⁄ü≥,OJVÖ›@«J,KEiÜ√Ç§pAoL”ÓµkËÏ≠\"2Ã˘!G†‰üaVmYZ»|Ù#ÜŒ>á˙\Z€–t9o.^\r.C#»>b[ÀtA˜≥ÌèJ%+\"£≤éãa›ƒ˜ˆÚImº(¡ @«SZS_Ÿô&é+(≈∏ó˜\\ìÄsﬁ∫œ¡a•Îøiæ+¢È∞>RÇäÔ€ÔrHÕs:“Èkw4ö]∆ËŸ…EÌ{kûküsI++óW≤∑π∏ë≠£Æ’\r∏È˘˜Î\\‰Ø∏¸™É«5§Ò!à<å§≥êG≠Aiaˆ…ƒK åÅ∏¸©F\n:ô3k¬ˆ⁄1˝é_ŒñAe\r’∫n=1≈uˇ\0Ï,ºEoß\\ﬂñHwπV€±îÂèrF–}ÍÔ¬ç*‚◊ƒ¬Gfé8[,ÖàW8#?≠u>,öOkÎ≠C§«%í≈ô\ZeR«†ı‚∏ÎKﬁºXö≤8mBŒ?¯LcéI÷kC≤_!e,T‰Â˚Ì∆?JãY”_ÏöL˛(øªçÆT¢fL¨{x‹zûzp*X<{Ñ”$∂ÜhÓ.|”ª F£;våˆ…¨\rOT’|e¨-ÂÛf⁄&ÔTbBr8¸i)÷îΩıh£4÷ÁoÔQ“ÖèˆN°=ƒì\'ìk+˛ÌŒ	FÈ¡ÁÉYÂØâ¸E!ªºâÆ|’∑@$E^˚∆~ÄS|U·ÿ¥ãÎI\"‘%tùPµŒr!\\/<{Rx]”¥oÀoõ£2µ∏∫àÌÛKúÂÉzÂSNJ≤Êã/s†’Ù-Ek€xÌ.lÃqÑñuMnŒUé2y¸ÖKk2¸=_µNe∂xÀ¬—FŒd |ºzu…≠=G«P¯“ÔE≤¥éÔÌfI*§†	Ó2Ni<9¢<“^⁄Õ®…$ÑòÚ—∆Á<\0pˆˆ¨íï){œq¶yé•·Â‘4[{ã˚¢Ä!ëb⁄Öõê\0Î«?Zƒ≥“ØtΩabITﬁ˘j…]ƒ±˛\0ÅûµÔGD‘éìe÷∞œÊ+FRãÑ\0„ÿ{W9k™hê√≠µÊñmu	%iìiÛYÇé•ªØ_z—b\Zºlhπ_S…/d’m`7¯$^¬csÂ¿¡„ı™ouu©⁄¡kssè›°‡„¶8Ù≈w∑+üTéˆÊM;:hDõÏ¡AU m=ó#8Ø:ï`KÅ)*Dø1‡Äá=uRó6ÎRW–’–ÌÏ”P7êK-“¢§\nX»<u\'8∆+—¥/\nÍÓ=6P…•D©ss\"ÒÂÇ3ÅË√ˇ\0ØXp‹iÀßÈ≠g#RªC\'+\Zñ,d$˜=±]÷Ö}ß[ÿfŸ»]∞Ó‡©,ÂÜrpH8Æ]fˆ)E=J\Zœá4≠y,ß“Æ%ù‚ùåFã–æœ‚…‚∏[ˇ\0	∆˙}Ùv„uÓû‰…qíû™˛g+∑áUö∆⁄ﬂOåYwΩ0ÃÀ!]ÁíON;ä‰ºUx∞]\\ií›‹Ôè{	îe§ﬁ†Ìo«å˙R√J§RädÍé2÷∆ı.bëÄ\Zt1}∏5”M‚çR?+Ï@G\Z™mçä\'ôŒ$eÈìì≈9°Çm\n”@ãAùµáÃ¬ir•23µ~`FMb],ê«\r¥— ∑*s4í‚Ï?,W©§∑.ŸÍàÀHLëûú◊F‚Â&fõpïÜÊ‹y9Ê≤Ï¥1k|¶‚2 bÇN q–◊Ek\Z¨ë3∆“Äﬂªfl3\0y»Ì∆)˚X≈ÿiâkÜ5|aÊ¶ú$üaV.ﬁ!#º`∆db€sûµJU,§ñ√ï§%ÃÆYZI¬pI>µVY≤ÈPﬂK±OlVs^1–˙÷År«òRŸÁΩUπùÿ:U•úÇÁLKÖ|©¡œj7+O#?§\Zö◊Kªùë¬ÔÌπ#=qP\\áS¡»>ï“Èósi6VrC#=πq4õ”ÄƒcÍ?ùe94¥Z8úZw∑twAÂù§»ÍH«ÈPÿÍﬁGí‡¸¨7mœ\\SäËı=nÁV≤o≥Dàg_À?ß„\\ïÂ¥÷ÛÌbDÄeΩEgNÚWñ‡—_Ohók›ñL1∂*[[PÜDåH2≥(>˛ïMb€øPÆ	‰ä∑e$R0,Ÿ∆›Ìö“H6.Osß®À-≈êl\rë§Kêπ=Í◊å¥Î\rU≠m3 Å3\"sé√±¨u‘§µï /ñÃ«vﬁøJØ5€›cÃvb£©=+8√T«ÃBêÄë®\0Û¿´0X+8Û\0éH\"ùe4A’^,Ç~Ò‚∫Xıo2%ä⁄@ÛÁ∑|’∞HÂÔ`6÷®QòæyÍ*¥R“«5Ø™ºm\nÏ$≤Á9Ù¨&UóÕ>Çÿ≥3≤9(F	˛ï]Ê*pH⁄{Sß\0L$´í@#€µ;äÊ¨w(ñÏ™\0π?^’•§«6°nˆí‹™¬ÉÃŸ∆p9#ö∆Élê9@R	œSQÔ)]Qà\\Òéøçs¥‰Ù]ª∏êFˆ®må•’ØJ»v\nI}Í_Ìû—m~·Xæﬂˆ™òc‘û}+hF»,<Ób2sÌJ≠µ∏®Ÿ ∂)ìüZ›l\Z\Z±Hœ\ZFƒïA¿ÙÕN·å*Ñ2j⁄…∑â°\0¨ÑFHR@Î«J®¸÷êvíÄê≠◊Í¥∞m¡≈P l¥ÛGnAv)Ã†∏>ÉöµPµ F¿ï»I•-‚còH*X‡\ZøÇO¥¥∑˚D!9±&∂Nók˝ü2§[¯ÿ±!≤•qú{˝jïº≤[ÿmñRIb\nè®¨Ô±%ˇ\0Z¬ë›œusÊ˝éi¨›äáOªèr	’ƒûY±”<V´Œ©Ÿb%`yî@Â¨Ö]¿ÁΩ:0Ksúv§ŒG#•9íB©\'ØLEàÚ+”=8≠+iYvª!múÓV∆”ûµñìlqï«‘VŒümˆ¯ïcÜRI`pO÷∞©5vªßjå·3å+#g=…5U&‡wı´◊∫\\∞!ÛÏ¸æBáC¿˙äÀ`÷¨ﬁhüê˝⁄äSN:0l◊∞ò∏áòYG∑›«SZ˚Ï9¢˚T‚EBÚsÌë\\å3§a˜Ã√Ÿ˚ß5yKC  èòg=x®©KôŸÖ’ãBy\Z?&GbÄÂwªÌQ;ΩÎSõ±=Ãyqõx¿ı6¢\n˝ÿg≠¢Ìd\"î§mÊ†/@√v„ËjïÕ∆˘∂‹ƒÖQ¿œaMò6	QÚöÉÁn8’•µ∏\\qõÄ1»˜¶ÜÀrH!àŸ$r*≥Ä=ÍÄî∏-…›¥T∆	Ë}Ë»88ÊãÅ–h∑≤⁄ﬁ$Ò∫	X©sÄ*Ï⁄˝ÓØ‚¥‘nÖª‹Jªœ8çF‹~ùkõµ  >e¬Ú7Ù„úTöúÒ\\ﬁ3¡n∞FçäIìœ©Õ6π†„pãÂíhÙ}y\"÷\r⁄«©›»ÔÂ(Ya⁄ƒ„wøÆ∫˛ëÀOquÀù–º(6ï‰d∞º„5ƒÈ>2k&ÀK∂âl£\rõ…–nkèõ üL)˙Æ£†‹^¬,ÌÓ^(w∏∏\031˚Ÿ«nüJÒ}ùEY]¨⁄;ˇ\0xãe∆ëŸï≠°∑t˚<å72H¬Oq¥j•Ã&ì}®È±‚›_mº/!`IÎÑÈÅìÕT‘d”ı+]+MF\ZQae‰Éû†‰VÜü†È˜öe¸\r}\"KßÃíÚ¢<Ú◊æ°*‘yj+iKB≠≠’≈«Ÿ∑OF5\"AÄbqúg”Éä›∑ó~ôr∆‚3æ@d\0n=∏<◊ñ^ó\ZÖﬂêLq≥∑∏#<˜©WÜ Ãw`CËkœXX©rΩR5›ı)Rkô@¡\'ßJ¡∏Öw‰)µ†Æ[9<”%à∆ª≤≤Ñ—Óì(Âú5nh~~úÊ†YŒ\n„8„äN˝]⁄yG\0ánÂzU†í∞GJ’ká6´òónpdI™R[°}¡[éiAæ¢!de#ü Å–18 ÒWv#⁄?fA«©™±D“Ö»ZiÆ£±Ë^∫≥éUÜ˜m÷üpçã∞√s€5‘x/H”oF°vÈ-¬«¥≥.‰‹ß†˜¸k∆¢{ãá2¢ÜBúQ^É‡ﬂÍ\Z~ü#«wk*â⁄⁄_íCûø0#⁄∏1f”pf–íŸï<i‰>Æ∂ÈB±!Ehá3z±≈q\ZõçÀX’0&ΩÛP≤÷o‰ûx.¨ë#..ıN;bºˇ\0Rùfµÿ6Çíu`i·%-\"–¶åsÔHG∏“qÙØPÃOz:˚PEä\npk¢d÷¯öŸµ€oúÓ$ÄQúuŒu9´∫{∆óâÊÆÂ<u∆3–“ñ◊\Z>ÄEï¶´w)K@mã3Óp\n∑=„Åé’◊jÇÊ“Gô≠ê⁄€—G…`8«=8¸ÎÇämÏ¿◊v˘Qe<;thËN:◊ÆjÈ◊Ò%ƒR8\\êß=´<ú¢”‹s—ô◊∑˙∆Äno‰ÇeÉs+ëî„ëènïÂ⁄ıæôoß]4Zµç¥R£4Hrc™Ñâ Êª)ºb÷⁄Ç[[ñû˛\'ííB¢2G*~Ñä‚ıÔkQxW˚6ÁN[ó¥Ä¥S≈Äªqú∑©8ØBú‹#dsÕ\'+ú>Ø‚W’≠mZGV∏ä?)¢Ä˛˜◊ßÂX(Ú4¬/3˜lvÙ»ı•ºé¡d≥2n`ªád8‰{ääI˝⁄Ç\nA<û’Á◊NRπ§tÿ¥4˜}B⁄)\".%bÄ≥mRÿ‡ÁÚÆ~ˆ=óMï⁄s–V˝¨ëyEq?îUºƒr	‰vˆ¨+˘˛”p\\úíI\'÷¢å•{2ÓjΩõC-¥æo3(aû÷ªÕ/«BœEH5;ÌAë¨~_ò‰}yØ5éÊ{∏„I&_‹&‘›Ë9≈\\µ‘B[4D∞-ç≈˘zVuÈ qÂc“ÂÌ[WéˆWxÉ∆YáØLzVZ‹ƒüÔIå\0GN[ÄŒÂ@P‹ê*-≈πÈÅZ”¢£\n‚…!ëÀ…¶ûôh\'ú\n1é„ﬁ∫gö¡£údR®=ËÓΩ˘4‡vå˛¥àÑû?ZïWx⁄GJA°ìÂ<\nT`A¿Õ!ÃRqÈ–‘{Ú\r+õ9ıßÄW”™€…Î÷•çâ`\04¨§v72Onà<ÿÿT÷ïÃóˆÛIk™H“”bósÚ÷h3yhÎ(`§ì“´Ω˝ÀáGê‡ûx…?ça( Lo±<∑P≠ìD™∆Cê_w«LV1…5qe\',rz’G©Í8Æäi-Ñ¶iF≠&sÎJ∏\'ö‘Z3ä``SX“Ø¯sduOEh.FÛª¯Ò’}ÛûïË∫Ω˛õovtYbÇÃbhŸªr§zu5„:F£>õ®G=¥Øé7ßﬁ\0˜ıﬁøá≠Á”<˚;ıπiAsÊõÓ~µ‚„Ë^≤úûÜêzhekòí“yÌLûXõ\nD{S£-rÚ¡ﬁﬂ6OB+©}ZÕtY¨Ó⁄uøF)\Z™Lçr≤FÏw\0pzz\nÍ¬Ï”DÀ»∑§“F&çˆm$gü_Z’øk®Ù∏Áyah≤7tCÈüZ•ÙˆˆÒ«º∫˘MB2\0\'?˝zΩ.ßc>äñØnÌ(Sóﬂåı«ÁEE\'$ÌpŸ∑*¨ëìx2}•T#+ÿ\Zµ\"ykêxÌTÀg5›\râfÜë7WKm/ò7‰\rÉ\'8„è≠u^4—¨ÙmPâ›∂¥Wá¯îÅ»9=˝+í“Ø~≈;:ê§Ä7cëÓ=\r_k«∏—æÕ;,†HÓ†¶ÔnÔœj‚Ø	∫ IËãÉ\\•Ø¯ÖtMR+ô ädå‰ñe˙UèÎ£]◊nn§}Ò∞>H\\p1¿ÆcMC,Ê4VbG!FMlæól ÇÍi¢ë« J|™1¿?•EHRçoh˜›¨`ñi„U]“9F:ö”kŸÏbkIÜa∂´taÎ˙÷S´£ÜSÜ®=*˛è£ﬁÎ˙åvv£|Úd(\'ÆkyÚ⁄ÚÿJÔDE\rÊ“Îjπnº˜≠òµ;ã-:+˚g¥…í-ÎÇGCÜÙ§ÎQÄ—⁄ª±ó Uxû{~–höV´.èÁ^≈lˆvé»À*e”=1ÎÕq◊ƒQµ”L•¥g!u5•ı‹qYZ˝ñ\0Ÿm«ÍHÎ]∆É·1ghu8e∏≤õAv∏1≥z◊÷íÚ-&ﬁ“ÀU∂µÑ≠ÅDõÀ,˛„ıÆü˚Zù&ˇ\0ƒ\nˆLÀ∞∆Ñ7ì!±C–g“∏qô 	SVE≈$ÃçkH∂E6ª•F∏!ç‘$¥$∆HÆI\'Ö¥ˇ\0ÿYô..búñ⁄´¬ó*ŸIÓF?ïu∫Fø±·ƒ±∏¥KŸ÷!w(;Ò>µÊzáÑoØ/Â‘6≥∑êy»>Ô¡«bF;z◊55*™TÊ⁄∞ÂΩ—ŸÍﬁm]•∏íƒ$oÛíbŸ\"Øs∑◊k |I°√e©OmßÃ◊KBGê∫;ÉÓ+v€≈:ç≈¸1\\kì≠‹L \'∫9âìêN1ö~õ2€jZ˝˙⁄  Ãml≥¨r8b;≠v—S√ª∑°7RV8…59Æt´m8«-Àê(\rÜÏOqU§≥πÑ\"0Lòr1€ö◊]≠•ˇ\0å,¨Ó‹CÚ…#\0‡ëúˆœ€xªJè˚s˚/K0⁄⁄ ˛K®H r2yÁü»◊]LB•USK}DíjÁ.<©∂èaõ\\Esñ\rP1–ü¿◊3wß‹⁄ﬁIk<LìF~u#ë^Âo´´xqt©R¥ÿÄ®`óÀrÉ#q‹WòjñÁIÒknö[ò„Ui\\Ø%H˛úTaq3úöêJ*⁄©Fs»„Q0 \0PnNz’ãÚØtÏåÃésí0N}™≈ûù\rƒgÌòÉ+yr0‡∞Ïk—≤fhÀw§$}iõ ¸ßÒ†“©+\0áë÷òƒ‹‘çÄ{“í\r1ùoÅ>«®^I§ÍDss˘˝?*˜à¸=6Öº–˘LSÃVÌ\"ˇ\0èµq7\rk{È’5u∫é≥}©D∑Ç7Ú\"!àŒﬂﬁ¥ãÇOòŒIÛ]+qrŒ·I∆	*Z¢ÃÃŸnı®◊ûdB–&˜«Œ#€khßÉtéŸSå\08Õ)®≤“3sÅJ≤∏Œ	Ÿ´b–y[∑7Ó*6µa”%}{QŒáaãs.Ww\"•Yfq^x…‚†⁄Tû∏ êàà ˜ÔT¸ÑêÈ67úu©≠¶u¬èSéïQXÉìù§’ÄÊ)ÑëéG<ÛQ%ufn›∏v4»IKà‰Oº¨„Ω$Ñ»Ÿ∆•»P≠•êl^∫y3Hc>t≠Ú™Ú{b≤‰íòÿa‘Zz}‰ñwQ^∆@ñ&ÅΩ}\nMJÂonÓAîèô±Ç~æı4ÓùÅµcd`w¡®◊ï5vFWåÆµRµ“∂\Z“≠\'JL˛î∆?ìëÎMµ/Ω\'BhŸı¶öq…Á°¶üˇ\0]\0&i{Rt?Z_j\0Q“ñê˝hù!â»5j q\rÃnq∞∏‚™0¡\'µ\n}Ëí∫∞\\ıòµ´C¬Ô¢œ`D<»n]ÒÜ«›«Ωy‹wQ⁄›91#É∆OQÙ´7~eàà„(~ÔsÔY◊(„˝ì»˙Rç[√ŸΩ—úcfn[NÌ8¡˛Ë<ıÌ[˜\Z+∂ñ∑%\n‹´xÇchıœØ¯÷/ÜØtÌÏó®˛bƒ…ﬂÎÙÆ›µÎC<kÚ2dn@\'ﬁº⁄Ó¨ex≠\nrä–ÌC∫6–ÿ\'òGSTVÈ2K:VªV<s¯◊s7/â{U9Ÿ¢p¿‘-tä~n1TÓÔ§ëÎJ‡ZπûVã=˝´˘dë78$ìNãT/êz{—w|≠U#†©wÃîó r	∆OZ∂∏qº0-ÔTÆ-Ó§∆ı*É°®q »^˛¥∑!\Z´qµ±ì≈[HÌî´™ñ„$‡\nÂƒìZ4Ç‹\'Œ0IPN=≥“ØŸxçLt(d-ú˙•\r1©#^ÚÊ÷œÕâ]d(H‹Ω\Zπk≤ìü1Ωjv-w<í„Ô6x<¬®ﬁB»›˝ÈzÉ‘l≤¥[ù\"LëèªöÀí·V‡º±¨π]•Yx_qÔZÛJèmÂC8√0˘≥ÈÙ¨·‘&h÷€|¡7`∏‰˛U)+ÿMÛHç˛®a\0…®Q70˙–‰7`*k8öYÇ9>µ≠πQ=N€Kk-7Jí‚A$ó  ±¢2»=Cœ ı+$‹iÕxÊ{I \r)*cm ä=3‘Ê©]YKm+âÇ0\nepG=9NYv.∆‰ÉëÕ`©≈ÍÅÈ°%¸∆Êfê\"\'≤¯U≈A©pÅ˘TL£∑ÂœSZ%c>•®$.ß$8ÕX∂òØ»¿Vz∏ÚqÿUÑ8=j‹P—jd2Ì±è∫@®$\rËŸ2√ÆMYÑáhÅl†?6;So	∏∏wE;\0$ˆ®Ê÷¬{çÅÒ¶Zπ≠\"êpxÏ:’`6BévÄx«sZNäõ∞ªÄ‡Uπv)ç≥r@¿<Sy\'æŸ≠9&çîê∏=¿ÈU[wÒü-∏Œ?œ4”` ∆!◊8œ•:UŸÁéøÖ\r L´è≠Bnwf6^‘õo@nÂI•˝·Ux’IìÀ-ü¬≠HÖé\n„\rTôX∑Ãz’≈ÙBö	„ûÙÿ¿«∑$ä‘°•∏ˆ§QêM\'ZïT◊≠\09èÂW-¢Í„5/@;V•î*\n1H=j[\ZCÕπŸ¿Ê™òyá$Á+ß\";ô¢4âN>E‰\n≠qb¨x\0äÇ⁄+C°Z?ê¬Vë‚Bß¶zÒ®ü-¥≤€ºg1ûsÈ[ñ6\n#ú!cÇ≠–WM©h÷´∑œ’!ï∞§ºCéùÆ+.gnJV‹‡Ì4©\'ì˜i¿Î[∑öX≥ä’a\"H·fô¡¡lúÅ«ÂäÈtΩ:+¥û÷“{pÕÛa_a$wª˝\rS’¥¥y„é‚Rø82±lØ3´g©jQHÁU‚‘#∫®ô⁄È∆Ô®ı˜¨ÈÏíy-t∑6öxæH`Û® !8ıœ≠s⁄∆VÒ»VE8*ç¸#“°VRz{î·≤N—´rôN	Œ;\nKK[îîI√∆„i°≠=\n˙;\rZ⁄Ì·gÚŒU:sZûû∆oÀ>°n$±…}•sÜ\' JR©%+t+Ö·ΩgVø”gi,„}IQ1Qlﬁ∏¿…\'Ø_•l˝´2ùiÌ¢è{[êBÜÏìÜ¡»¨kÿ\\X€CgrmﬁE*Î$°dFŒ›‘Á•fj⁄ÏZõqhÚ,ﬁj1ÌÖ Òπ≠yua)UΩåÊ◊Cœæ\";K‚iÔ§v∂“mXc§êê ⁄‹Iúê∞Ì¯“ÍÇÍÁÃ,gw%	Á´vz’∆údû’#VëvJ0¡¡ıΩX≈¬íãW\'r}:◊VÒ%Ï±€â&†ÛXÚ\"åqí=\0˛Uâ2yr[¨æf«#zt8Ó*d‘Æ≠Ó%ö÷W∂yrŸÿß®„∑µQE%Ÿªä“I\r+ÑÙ˘u-zX|—´…∫M©¥wŸÈı5Ì\ZŒì}=¨:ÜèßÕ`÷Úyﬁl∏Y·UËHÁØZÛØÕc£]«yÊ√vÄ£ ¬2YF”π0zˆÁÈ^Ñˇ\0Ø58óR∂“.ˇ\0≤¨ﬂe—»*¿\0I˛YÆ\ZÚuª–®ÿØ„ª˚h¸≤HŒo¢Ñ,kq6d$ú?Ó‘‡é¶ºáJ’dåCˆ7í∞«Ãëü‰tÎ¥è√ÒØQÒ≠ØÜ5ò¨ıKI¸ª´Ö&‰¬2£v0Øéá<b∏ohÃöç¬\\XªOqXãl\'=œÉ“úbù˜ç…£Òwä$Ö£Ü‘‹«í Ú»Rº\r›{’Ω≠Ù∑SOc´yj±\'vÆWÅ˘g◊yº5}·ˆä˛˚N∫Ÿ,‡!çËAœÀŒUç6ˆ÷$Ωé_C4≤√kk@•F–rcsèºAŒ~µ0öî”O@KB/Ÿiwñó6∑◊≤⁄√Ê+Ünq¡ÌÇAÆÛK≤í√^¥≥”ñu∑êÖíÎ\0Ω…n<ƒoÓ˜“º˙Âm,≠ÓØÙ€Î1#¢Ê\rÖvíyûﬂ“≤_ƒí…p≥N“Esméh% q˜Fj’“UÆ5+=n’4›CH∏$E5≈ÍØÀúŒÄsŒq˜á~’áﬁ\Zèƒ∂◊⁄î÷˙ä\\$ë…#Æ<∂=8=I˙T˛¯§uâ≠ÕÍZ√}¥@≤Hﬂ&;π=èlwı¨´œ^Æ±àKK®£æs0åHÓ2m<\0Fxˆ¨%ESõïŸW∫)¯ß√wÚƒ∑÷∞›º:≠¥¨Ï^á\\}‹t¨2KùB =JM–ŸÃY2®n3˝‚s˙W∂jû4]“ŒY4Á:\\¡‡FQH˚•HW≠ˇ\0¬*|a’É´⁄∫¶¯êgc1˛~áÎUÀKI\\çãvû{π•ëC£9Û\"m¯é0~#©∆@5_PV´›£Í4vπC1Œ‹gøÚ©5ÕBÒºMµ©æU€µ°~s∏©ø ´x¶ÊÓÔÕ^tóÒæ¿ø }”Éü_•gG⁄I›»\ZÍTµ{yÜ(í\"æx<„ﬁñD&ÿN\n‡ˆœ5À4Œ§ÇYH=˚’ÎkΩ¯YÅﬂΩT¨Ra{\Z≤∂„¿œ4û[ï*z[w“)\'#“∞.Se«ÃHiÉ#ûlÇ∏¸j¥SlpGÇjËå¯\'™öK}7ÌS‚Ñ≤ñWîÌ^9ÎE…54ª›2È•∑‘qn≤&‰∏9˘_ÌÌYø⁄3IÄ(Øì¥u„•≥k{ôjöÖº}blÌÁÈÔM6ã”ﬁN\\˛ÏvèOÈYÚE0Zö6∑3€FBÅ\"Úq»51¥1súü‚>ïN	ß}ˆÒ2mêÅ∏Ä	«ΩiâZﬁ$Ivçô‹†s˘“Ÿóm¯›-ÑëòïÀ9=Í;òà∑Té‘+[z∂r>î¬€§…Œ3öY%ç]Hî+`å1‡—\"G-,òPõî}‚i\0ﬁ»å°01ê:‘Òƒà^cÄ•øÑÁ^ÍÍ9Ú6≤åd∂sKõQu%]±‹:Ø=Ω]µª∂T›1∆Æﬁµü}v>RE*›3&Á ¥ë–èjÕ/ |íCzzS—Ï;ööÖ»3ê∏\0ˆ+)æVcå‘Orƒ‡∂}jF,…◊ 1ZX±g#p⁄}jÃ)7ŒY±åmPÇNzÛ≈_≥Äûz\Zô+åä@cBA¿\'∑Z†„vxÍ{Vº—\\0»9‡V{D‡É¥„8µ\n=ÄâÄ‰cÆ:TnÆ÷¥†åÖ*¸√ösYÒÔTÇ≈Ú… ÁÍ)Ja±ÅëZñÒÌê;G›„ÉMX7Kùºéy™“‚ T(Gi\0sÕ6T èQOÄ0Œz”˙BT)ÈNí √ßë» {w•i∞1”úS>Hˆ1„í:P√p3≈[ë7sÈRÿXòn\'˝Î…√E≤ò…bGLqY‘öäªävÚ¥/*æpÒ≤Á‹ä°4ÆcìïRJ„±5Ø©]i˜\'Ÿlö.¨øº‹m√w…Ê±‰\'8§¢∑$´4s(â∂!⁄Õé=T°\"¥//n%Öƒì3	\nóé8D0#Í·~•!§Ó÷ØiV≠,±á\"ëˆô£◊&®7\\÷ÖΩÙÌfñ¨Ì‰°fEŒ\0\'ØÚ¢•Ì†ãWñf“vM ‰3\0A‡Äq«µh[Ë“IS⁄ ©&`A¢±„WÛÅ—ª˝+†—uËg\r¶#•ï∂Ó»êØzÂü7AÙ%±◊Ó÷ˆ+]Cdq¨éA\\f®_YN ÒàÂµäF˝8/”±Ù%ÕºöÖ§Õ\Z<◊K¥§Ù#ñ˙‘v÷ÄÈp<é¡Ê|Éª+é˘«CP£ª≠÷ÜZÆ‡GÒªS¡+ª˘n1«4Ì!e´qMíxdÑUÒ◊ﬂ“∫ìLV-yûW»*zT”_˘Ây,U~aÈYi3H€ÆÓ}jO4«p≈0eHı5‘h¬E`4§+síG˝j¨RmépxÊµaÑ˝ÅX€ñÛd;$”®≈Í	¨åÂ‰ÉLöﬁR•ô\0gqÕmZŸ˘≤)Ygo¸˙sZV\ZMÊ•è1y-DnRdB¿Iç¡\néúˇ\0:ŒUíÿv93ûFÛ)˝ÏqQ¢Ü»?(Ò]<√Z≤∂∑¡g1eÒ¸õäÄ¿Á‘`˛5œÕÜ8H\Z<‚9¸)¬roQu%”-í[ıé^#*ƒú¥c≠Uó‚EFﬁ°»\r”#=i…4ã8a«#ß…\n5€PíBÁ†Ù≠u›äÊùÜâ{~ÜX!˝ ´#ù™q‘xœµkÈ⁄T⁄}‰\rsBÔÂ0òeyÈˇ\0ÎÌ[Òæâ†ËÛAΩ€HÒüëú2≥cÆ;sÌ“∑çÌúûK≠v÷ÿ}°úîä@\n∞\0¶1Í8?ZÚ´‚*›≈«Mê ÷◊⁄~ôØO¶Î◊«˜Û)F1€©!lr9÷C‚Ì5¥Ω`˘ˆ≠<aÌ„ô\n™Œ§‰~5Ê∫∆±m‚Õ—¿¥µæâô]d¿‹†|∏nΩ8Á“∏—2ÛŒá®5Í‡™5GŸ‘Frßwtt≤<H\"û5åÀ!Îêy4H|∆l±‰÷%ºÓ·Uôò/Lûï´o\'Ûö´Y‹±ƒîóÉ◊µ=…	ÎQ»1íj6òé8@:x˜&Òﬁ™5åóO∂5,¯$Tœ)lü•Xµ∏0»Æ1öô^⁄)]Èíÿ4…èﬂD$9«$cÎ≈E5πH’Ü\n∞∆s»#⁄∫+ÿ¢ΩHYﬂ	 *éNO#5âÙ“ BXƒd £ØÃ£¡5À\n⁄®ÀqÿØ·\rfÀKûË_iÎu:!«Ãç”#⁄π±+,l°>mŸ›ﬂ©¨.å:îs+\0æfYH‡sZ\Zù¨VW©*mÁÕÚ…œ OCZI(Œ˝ ﬁ%+-HF.,ﬁde\'„Ø÷∂ÙÀm2mI{àØâ+¿Ú»˝s÷∞B√u \0$ÚI¿9ˇ\0\n‘k”÷?≥L≥Ã$+$h¿©r•MUo`âﬁxRﬁ∂∂∂vÒGqçˆÜìÊ\\d˛\'µd|TµÆë∑Pç3‹ LëÇ\0ŒÑ’c¡vÚ Z˙€1]§—∂¸¨Ö∞¿÷Ô∆≈”Æ¥XgéX\r¸.ÇDSó\0‰cÿW5À_›fí÷\'É∑Ù§ ˛î§gÈK◊å◊¥b0Ò¯–O)zfÄ·LÎäí&dpÀ¡¿<S‘·áΩ&#F’äC ˘J˜9Ô^á·_h\Z,:y∫˚\\◊äK3F‰)ÄÑO ºŸî™eÄÀÅOµ±∫‘Øí“‹3;ê\Z™2Âz%}œ¢%¯≥·…u%äf∫Ö†vU,£i`úåÙÊ®kˇ\0ÙoŸK•È⁄ÉlôƒrÏ»=∆k¬µ}R—nEæ°∆Ã	Cúá\0ëê{åää⁄Ÿ§ƒç:ƒTÄ29\'¸+Wk⁄÷%wπËz◊ÑÏ<5mzí‹ôg8˚+†f›¡V9˘q÷∏+íHêÅ*79Á¸+≠ˇ\0Öy¨j÷r_⁄]ZÕg&4©8¡»œÉöÊ5õ=OKUãP”MπùwƒÚ/ÃWå`˙R©NÀ`åÆÃ€©ﬁI>sô }0*©„≠!94g9=+\ZíD¡9∆GqHÏÓ0£ÅL\'öï\\ÆnÙº¿jÖÔ÷úÀª%qIÚnœL˜ß£w\'Ω1™·©ÁûsM⁄å‚ò\nxäU˙öB∆Åœ\"Ä\'N\0‚•Xˆ® ’t8#É÷¨#ú˙˚R\rÄƒdcéN*´DcnGzº§py§ñ?22Tr TπX@¶\08&îzTÖÓqﬁöSï#”LvHÿÎ≈KÊ5`°Iqåëû*$@XÉ∆*Ã÷¢)Q“EOÈIÿV&xQë%à˘@ ÛY˜1¥sê˝z’ãyZ9Ä=3ﬂ•&§3uÖ„ÊÙGF;Ë˛tt‚é’∞Xwn)Ú•Ï)ΩÕ m¨ps]çç˙¡qïÅ`Ì~ôÓ>ï«\rt÷∂]h_⁄ Ä±ü(‡ÚÕˇ\0Í\"πqJ.*„éÖÔE”-◊ô\ZbÄF2}ã\Z´ßM˝•®⁄⁄˘j¨X\"¯˙‘ﬁQsp∂∑	\"w√6\0¡ÍOÁPÎñÊ=J‡D!X†¬#E–˙˜ÆhŸ?fÀøRÁäg–ÖÀÕgÈxd\"XH€\Zcå/z¿¥\rz€K#ø∑•V\"Id%∑<ÑÛûI≠}\n;KmF6‘ïÕ´)ﬂ∞r8˝k¶—ßu‹‰Qñ&IJÛÅ«µPpCÈ[S§Ire`ÃéÁjg∂{ö«∏¡ëò\r†úÌÎäﬁîÆCVæ[Éåéˇ\0JËÌ,%’4”$r,P4…	S‘>8\'⁄πå¸ÿ≠Ø^€≈®©ΩiíÊg8„É≈gàOñÒ‹#πX⁄œ•k[À!Çh∑{;}\rj‹x≥PΩ”ŒÍR‰`ÅÚ®ËYÒﬁ≤∫∂∑izÔ‹,*í<I∑p7ÔW-#G,£g 3…ˆ¨#U)IjS—ËX≥H^ˆ&∏.`-˚¡ﬁ5Ùwá¸·À{x/Ï‚h^R|¶g*≈Jc«95‡3EaeÆ§Z=…æ≥d\\<®∑»Á–◊†¯K‚%≤XGßÍ±,◊1*€q¬˜9˛/z·Ã°U•(+Æ≈A§v–j¬∆«U[ï0]Z4ç”∆H«*}ÕyÊ∑‚3{†}æ Im¶ñQ°eÚòsŒ>=y≠MfÔJ”ßô%æ∑πñ5o›8ˇ\0X§}—Ó;\ZÚÕBˆ	†X£Pòlì‹◊ævá:ó:;ÕS’<:˙µ“∏‹—¨®%?«ö}ûóss·+õªkí”€mÍ√3ÅïÓ}Îõ]Y€FK\'ºú™>Âåú®Ù«ßz›Œ∏⁄DÌ&cÅÿ§ÖÂ˚Æ™rTé˘ÆÍ¥Í∆-.˙ö&Ω—Ó¨VﬁŒRﬁH,∞èîÁL˙˚{WAk™,zµµøãnØ<àê˘\rl˘A»=8„ÙÆSYÒ≈’ˇ\0⁄l¢ƒzs…æ;t?*Ûëé=rjîZ‰Ë®R@BÓr$Pví¿?JQ£U´µ®‹íÿÍµˇ\0\r€Æ≤Ø5≈§˙íâR€∂s∏˙9«Ω?√v\Z§W∑k‡€tΩéböÊ·Gï2€OÙÆ7π’Ô!≥ÛÇØò¯Ò=+ÿ|‚It=:+∂¥($Úô\ZEç’˚9=∆85’JP’›˛\0¨ı<WQµ∫“5i#ë9°ì#åÉ€⁄ª≠4€À%‘Ÿí_ﬁ+‹BŸA\'\'aıÌ¯’oà∫dè<ö¨≥-\'ó¥qå‰{d„Æ[Cπ≈‹6øeñÂYèÓ‡v„¶;◊R~ﬁäüRvgΩﬁ¯M÷º?qu§Ω¬M8.Q¶…\\t¸G‰˙–≈‚ÈÀœp^FFË0«$qﬂåÒ]DóC“ﬁ-+Nπé‡Çªnb\'rˇ\0{#∏«zÛã}v[yn$Kx¸Ÿ[pêèô9 û∆≤å\'(µmZ•¨|!c©Ey5Ù∑0M gh£∞C”ØıÆ∆ûá√\ZÎ⁄Ÿﬂ}™ÕÄdb·à8‰w≠M∆Ú^ﬁ∞ÒßrˆÊ6,<∆V›–c˚˛Ãj˜íÍ\ZÑ•.ZÂ¬»„åÒEl™˚œDCf™Vfqû@†w\0tı≠}[Gø“‡∂ûÚ“HD¿Ïgk ˙é3^íï≈–õ8»®ÿ6}È‰cë∆yŒöab!ï9Ëk”<y¶è\n_%ÈÑ1Rp‹≥0a«–äÛ\\sıÆã√Zñõgk®Zjñè*‹ Ú%åç—8=yÏEg^\n§l¬◊#k∑”o¶Ã(Î(*πOJ¨óÃmãÚì˜i%ÇIL≤nSpHˆ™AôXêvÊíÑ/†jmµÀ@Ü3láÊÁØJEæYcàˆÉùŸNk\nYd‡≥ülUãKyn iå~ÒÙ•N)\\øohÜ€d{úo¿8çO©È∂piTÅ‚∏V‹~WÔëË}jOL∂ú\Zi◊I#Ï⁄„¶Èéı[ƒêjÒ^]¡pH[wê7=ÀÕ/iÀr≠ÿÁùLdØP=\r8»ßy$«πO8‰Th\nÂ[øØjÏ∫%†ﬁz{“≤ñQìœµ0ê≠Ù•Û=≤i¢GåÖ¡l„•DŒN}h-ûzfêr0:”\ZB„äÅ¯l˙‘·\nπr;Tr¶2qVòÏF^ÙîúäL‰˚’ƒô‚ê˚ÒBåÙÌN?5\0 4∏§ÍCVÅ≈ëÕ <”„IÇ3ÈHM8q@Ö3ΩH1LaÇh5¥∆Ñî\0pzı©®Å<>r†ﬁïä+~ ÚÏå.ÉÕÿW$Òè_≠s’VjHV3ln\rΩ‰o¥0°8Õzí]ÿŸDnt®‰çó‰xú7Á<Wõ»6»q]>ã¨ï¥é⁄‚yA˘®’ñ\"7I≠ä]÷Áß≥/òWú*ùq©˘∫ˆ¢ä€°°^ÍTd8˚√µbﬁ»Ò¡»qúfä)	âƒ†y\ndr¡á5óy|±H@Œ3¡4QS‘ÜT∏‘…Ñƒé√5ó%‹éÃ¢ä§\"GfŒ8=ÍÚ*®7=Ë¢•∂#wMPâªÇ=Í”?æWf\'?!ÌÈEùMQ¢v\'Vó6ÏñVÏe?u›π_¿Wro4ÕPÕ€§â∞\\t˙};QEcBÍ•á\'s.‚ío\n¸·{{S≠g≤34a…zq÷ä+ΩÍåŸcÌî˘…«Û¨Ÿ§;éÖVQZô›≤\"‰∏Û4Æ™π¬éÇä*⁄n=ä\0c∆*Tï28‚ä)t∏\"ƒ™«ï∏9»≈Líy0e‰èò∞»¢äŒ◊ZâïSs∫Ì˘˚¢Æ€óFﬁ\0œQIIßa¢mÄ(ﬁxnG“´Õ)á(«rˆ¡¢ä—n#6be\'-¥BD¡@\'ßz(™zd7Ó∞GÕY“õ≈U≈Ø∏üZcsé∆ä*∆>1ìÙ´E¡n˝®¢Ü∑oª™„98ÆÇŸ\"ä ÓI,6≈\Z˛<ü»~¥QY»“\Z:B,ëï<èZ∏±«πnyÔE1Ù+›Í6∂“.<±ÙÈı™W˛$é[Hmñ!òA\nTrrsœ≠QdgrùΩ˝Ÿu(éá8x\0˙V Íöí\"KqmÊG⁄≤c<Ê(¢∞®Kdñöππ∂ó˝|ëIπôTı\0w≠øÏ;mRŒﬁÈ¶bKáí\"øxÉ\'ß4Q^V6IƒâªlZπ—tŸu∏Úø—0≠‘˝”éôÜ∞ı;hÓaël—Ãí∏eé5Ëãê¢ä∆î‰íwÿõ±ŒﬁŸOcr–J†I∑;Q≥è«÷≤nÂπíre2eÄRIÌEÍQ|÷lhß5Æ1µ¡Ó{T&g¬èlQEt∑°KCWNÆß™[Àskg$ëƒp€HœLÙ¨©	ÇGP\nü∫CEVTÊÂ\'6Cƒ—ÇFÏ8ÕwﬁÒÏVZûù‰ºœÂ4®NvÆ›ºΩ∞{\Z(´© ÿ£πô¨ò¢º[?=S+, “nWn§Å””jz¸wös™˘Œ@â\"`∑î%ø<QEq…\'ãîùé÷ŸÌ|[~“È2Ã«Oçª∂¯‰úå(–\0‹Òå“Í+´x≤˝¥Âékêπñ=€òÅ∏)ÁÄ1ÕWã^§©ÛF; ZƒÚÌs¬◊ömy—Æö@ÒªD€ú‰˜Ìäœ”,ÏÙk…óXµïÓ\Z0bão=~πÇ(¢Ω‹-IT†•-ÿ§í#O\rj~ ª≥é⁄I÷⁄&úÖ%wFs¯gÙ5Ÿ¯[«wR‹YÈãoq?ó¬ëyÑ£1ìÅê\0…œ4Q[TI¡∑–ó±ÿxÔƒ‹xa-&€Ê\"å,ë»ÎÄ@\'ú{éEyÀßÇÒí”;)9Âp:~ —EaÖåe⁄‹7gHæ4‘núM%„≈4q“H–n#ﬂ=œ≠[ÂÙÕy Û¡ébZTô∞%¿8˙s“ä+g]≈\rïuÍvPõ…aEàêJyÉx\r»;z‡÷\Z$Û¸Ë¢∑é√Ë^∑;õ/îåÄ=*•ıåM#3J:‡qEû„(G—Ú\r¿t©‰Ö‰\nc¿+‘:(¢@ñÑ\"ÊK;Ä—(P1ª˝Í¬«Á\\âô›ŒÊoRh¢í@ãk∞Á«B*\'ÅÄ%‰8Îœj(¶ØµYK( w>ıìwÕ√1«QMÏ&@“JQÉú\Zò]$óÏ÷ê,1‹Ücí†zûÙQSdÿçYïÔ&kÇeêÄ”®¬´«Núv®&–f¥kπ·(HªŒ„ëû∏«•V2n.»ŒÜV»<V≠îi,eÉ¸&ä+¢˙ @∂-¡/“¥bÖC\0∏ä((|÷ª…+å‚≤dçƒõ@Ô“ä)!°ådepjŸU„#•U\r\0≥Ûlˆ•ä–íPéGz(¶Å°≤Z6„ë”äà¬SØ≠U|c¢Hòúä(¶	+¡5j€P∏≥µñ;yì∏©«`—ED‚ö‘L e;¡E9\'≈2˛“k{≥Ä‡ˆ¢äû¢3obx£]¸g•S^∏=h¢µé√CúqVÌ„\"584QJ¶√:ù/Jµ∫ûÃπ∑Û˘o¡c«–ô´∑ó⁄uñ£uünm·D¯;¡\0r	<dÊä+Ö˚◊Lc.[EM}≥Õíˆt	óc¿b«<f≥Ù≠mÌ4Á≤é+eÚŸü{ØŒÁ∑>Çä(åSé¢Ÿó5{\rKA˚j“Xbb#*±~>fÆyÈ\\ FV%›+ÉÜZ(™§⁄Mlõê$ÉñQ«©∆Ë^\\â.Ú€òcﬂ•VÎ·`ŸñI—ÑäY;Ø? Øi˜1ç<πVHŒÈdÅÔèj(Æy7(¥ÀZ3§ΩΩ“%ö⁄!ˇ\0◊C˚ıóÄ“}{c”ß[¬∫∂•¶Î\"íH⁄icÉ#ñ∆¡Í0(¢π„EdRﬁÂ˝SV‘aùnÏÊ⁄óxi-$\"EfQµ∏=Ù¨ΩJææñÍkãhaâúÓ˘UGoØZ(¢•iFó2‹*´leÍ˙%Œï©Im:ÑP~W\rΩH##\r‹b±ÂPπ˘NÏEWu	πFÏ…åô\n|¬pw†˘åO#\0ô;I<j(≠÷ØPf¥ñ±õnctç€hX,Xrg∑#ßΩQdhd!á4QWSIhLIcê|§pz\ZÈÌ4˜kO¥≥®\0ÅåÚ}(¢≥õ±Hé`7qÈUYà#QVÑ5Ü ‘{ ‡˙QE\r8aV!ôH%I8¡•‘o/\Z?*ÊVr:á‰Ù„4Q\\3I»rÂ¢Üı!d¿.Äıı¡Æ√FÚ|Si-ƒÛEÕç®é8ô\0Û\0Œ:u8«Z(ßà˛7R·ΩåD–ø±œóÁùë¥ú\0ﬂ·÷¥Ù¯/|?|ˆ“$&∏≥ôp#∂“zfä+.w%fid∂:Î[+	ı;»„â¢ó»ää@Û1¸è_≠qﬁ93M5ÕÀ s#úÂ∞†~bä+\Z\r∆µêÂ±¿g°æSüZ(Øp¿…•cÄ1Ei\'Òßg8ı¢ä\0∫˜[Ì—R»§Órs∏}*m*¸È∑ë›Fõ¬]I#Ç0pG÷ä)CIh)lz7É<=s‚¡ˆ´Ã\\ÈH6«#|¿1¡Í:f∂◊¿övìcukÆYZÕ,v≤kÑôÉ‰í@eıˆ¢äÙb˘ùôÀ\'cÀÁõU≤¡\r‘…k2ï@[\0èCÎ⁄≠ÍV∫Æ°¢Æ°ƒq)ü.°x≈WëéØ:m(æßTjÁ Î±∂öMµäØ›‰—Ejû√\Z∏©P)œ˛fä(`F1NhÅîÙ«ä*naò«4ò¿≈Uà:G^Ùªéh¢Ä$ä@>ÚÊ•\rìê1E1§Ä«Ù¶˘çà«J(©hd2úüQ÷£f\0ÎÉEí)l\"ç«Æjƒ23~‡»}qE=Äë„X‰√Èúäé˜s®ò›ãQEJ›DüzLÛö(ÆéÇÍ( ä=h¢Ä÷∂ÙõÊä¬H7∞˜«Z(¨™§„®\ZV¬q\"0äbÆq∆züJΩ¨à4X°*¿ÓÃÓ>ô¢äÛ$ˇ\0xç\"Ω“•Ñ6“È≥ºÅbº∑PÍÓNŸ#Ï{Ê¶∂Ω7K1∑Rëç≈\0˚«éˇ\0Z(´jÌ∂4 7Æ˜⁄õÖVYò*®‡gè}ñÛ≤J°]Nz\Z(Æ™2i®˘\"ò;\\Œ\rt\Zzi˜\Zm…û–ÊM·».@È¡¡¢äxØÑQ‹Õ’.$øTπê(r£è©´ñ˛ªó√œ¨€â§PK\0€O”ö(©m∆\n√Z≥(]œ q‘ıÈäs¿—©,«q<QÎE£ìÊ∞¨\\∑Åı;à≠Âª\n·B!îúEœjûm\nHı4≤b˚T@í‚OïªÒ˘—Es’õãvÏ4ïáÍ~ª”ÓbI 0§òQπ∑sä—ø][tK	-n‘õV c#\'¯∫˚QEs”´*êNEŒ)=ÎΩ÷#píÖìp⁄Å≤qäÕ[v[o¥	”xlyg©˜¢äË£95©\rb@ô§û4C9El„äﬂ–|W[XÍqº⁄`rdãÄA#œZ(™©N5.§ÑG‚ö+8‘›4ñÃBá∫ˆo˛µdxUó@Ò\rñ´/m(|c9«Âö(®°È8∞{ùØâ<ggu´[_is\\™∆Ã|πQ>@‹ê£”$kô—ld’ı®‚∂∏∂Ü‡πt2ú&@œßµVJ\nï\'…–kswRÎÍöH’<à“˛YÃROáRG`x<T:¶ñ€l5˚&˘™‹¿pT±„”ûh¢î$Â\rJkSW\\\\xQÆt›RKâ-	Û ñB¡è⁄;˛Üºø~	‹1é‘Q]v‹]ƒ˜Çπ»≈4ÎEΩÑ&⁄±et,Ô!üÀY<∂Q∆UΩà¢ä\Z∫∞è£4X¥ÌCGÑ]¡g%¬⁄)aë3”ÍCY,¯s°Í:PìK∑é¬‚6;àcâ∞&ä+ÂY“¨πS[ﬂC¡Óa0Œ≥d£öbƒgÆZ(Ø©NÒW2\'Ieâ¡CµóêkR›_ê◊áŒú´c—ECÑ[’5a’tÈ¸ËZ¡ Çh\08ä8y~§~µÕŒÄ$sÉEäã–$€+Ó54ºé`ñ=1E§‰‘[BKR›Æú$íXn_…ëP≤ÔÈı®Æt˘,ÓN»H¡ 6·»œZ(¨°&ﬁ•µb≥Ü_\'p¢dfà998¢ä“ÌXHé‘òﬁä+•l! xÎNŒh¢ê\r=3KŒ•S§f£€å—E\Zä\\sE	ã”áëÕP>Çt5$Rú0<w¢ä\Z∏n¢\n#pA3≈>≈–HVAï#åz—Ea%Óé;üˇŸ',NULL,'LocalBusiness',NULL,334),
(20,'kjhjkhjk','<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<script type=\"text/javascript\" src=\'https://maps.google.com/maps/api/js?sensor=false\'></script>\r\n\r\n<script>\r\nfunction initialize()\r\n{\r\nvar mapProp = {\r\n  center:new google.maps.LatLng(51.508742,-0.120850),\r\n  zoom:5,\r\n  mapTypeId:google.maps.MapTypeId.ROADMAP\r\n  };\r\nvar map=new google.maps.Map(document.getElementById(\"googleMap\"),mapProp);\r\n}\r\n\r\ngoogle.maps.event.addDomListener(window, \'load\', initialize);\r\n</script>\r\n</head>\r\n\r\n<body>\r\n<div id=\"googleMap\" style=\"width:500px;height:380px;\"></div>\r\n\r\n</body>\r\n</html>\r\n',NULL,'LocalBusiness',NULL,330),
(21,'hello','<p>Whats up</p>',740,'LocalBusiness',NULL,334),
(22,'hhi','hjkhkj',740,'company_organizations',NULL,2),
(23,'hi','kjjkljlkl',740,'company_organizations',NULL,2);
insert into `template` values 
(24,'hi','–œ‡°±\Z·\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0>\0\0˛ˇ	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0n\0\0\0\0\0\0\0\0\0\0p\0\0\0\0\0\0˛ˇˇˇ\0\0\0\0m\0\0\0ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇÏ•¡\0[Ä	\0\0ø\0\0\0\0\0\0\0\0\0\0\0\0\0Â\"\0\0\0bjbj¨˙¨˙\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\07V\0\0Œê\0Œê\0Â\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇˇ\0\0\0\0\0\0\0\0\0ˇˇ\0\0\0\0\0\0\0\0\0ˇˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0∑\0\0\0\0\0H\0\0\0\0\0\0H\0\0ã$\0\0\0\0\0\0ã$\0\0\0\0\0\0ã$\0\0\0\0\0\0ã$\0\0\0\0\0\0ã$\0\0\0\0\0\0\0\0\0\0\0\0\0ˇˇˇˇ\0\0\0\0ü$\0\0\0\0\0\0ü$\0\0\0\0\0\0ü$\0\0\0\0\0\0ü$\0\0Ñ\0\0\0#%\0\0L\0\0\0ü$\0\0\0\0\0\0ºJ\0\0\n\0\0o%\0\0L\0\0\0ª%\0\0\0\0\0\0ª%\0\0\0\0\0\0ª%\0\0\0\0\0\0ª%\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0;J\0\0\0\0\0=J\0\0\0\0\0\0=J\0\0\0\0\0\0=J\0\0\0\0\0\0=J\0\0\0\0\0\0=J\0\0\0\0\0\0=J\0\0$\0\0\0∆M\0\0¢\0\0hP\0\0F\0\0\0aJ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ã$\0\0\0\0\0\0\"\'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\'\0\0\"\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0aJ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ã$\0\0\0\0\0\0ã$\0\0\0\0\0\0ª%\0\0\0\0\0\0\0\0\0\0\0\0\0\0ª%\0\0E\0\0vJ\0\0\0\0\0 *\0\0\0\0\0\0 *\0\0\0\0\0\0 *\0\0\0\0\0\0\"\'\0\0˛\0\0ã$\0\0\0\0\0\0ª%\0\0\0\0\0\0ã$\0\0\0\0\0\0ª%\0\0\0\0\0\0;J\0\0\0\0\0\0\0\0\0\0\0\0\0\0 *\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"\'\0\0\0\0\0\0;J\0\0\0\0\0\0\0\0\0\0\0\0\0\0 *\0\0\0\0\0\0 *\0\0ä\0\0B\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0üD\0\0\0\0\0\0ª%\0\0\0\0\0\0ˇˇˇˇ\0\0\0\0PÀD~ÁŒ\0\0\0\0\0\0\0\0ü$\0\0\0\0\0\0 *\0\0.\0\0\07C\0\0í\0\0\0\0\0\0\0\0\0\0\0\'J\0\0\0\0\0åJ\0\00\0\0\0ºJ\0\0\0\0\0\0…C\0\0÷\0\0\0ÆP\0\0\0\0\0\0N*\0\0|\0\0\0ÆP\0\0D\0\0\0üD\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0üD\0\08\0\0\0ÆP\0\0\0\0\0\0\0\0\0\0\0\0\0\0ã$\0\0\0\0\0\0◊D\0\0P\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0 *\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0aJ\0\0\0\0\0\0aJ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 *\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0ºJ\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0\0\0\0\0\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ˇˇˇˇ\0\0\0\0ÆP\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0H\0\0	\0\0Q#\0\0:\0\0\0\0\0	@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \rAyush Ramola\r			     	    Contact no: +91-					\r				 Email id:  ayushramola@soarlogic.com	     	     \r						 \rObjective\r\rTo be potential resource to the organization where I can utilize my skills and knowledge which would help the organization to grow and further enhance my growth profile. It would be never ending   dedication to maintain the spectrum of integrity, honesty and character\r\rProfessional Qualification\r\rB.tech (IT) in 2011 from GRD, Institute of Management and Technology Dehradun, Uttarakhand, India.\r    \rProfessional Snapshot\r\rSoftware Development Engineer with more than Two years of professional experience in software development processes and implementations.\rExperience of developing applications using PHP, MySQL, Ajax (JQuery), in Web Technologies.\rGood in development of web application using HTML, XHTML, CSS, Java Server Pages (JSPs), Object-Oriented JavaScript.\rVery sound technically and have good ability to work in a team and can handle team of developer.\r\rProfessional Experience\r\rCurrently working as Software Engineer with Soarlogic Information Technologies Pvt. Ltd., Dehradun from 8th Aug 2011 to till date.\r.\r\rTechnical Skills\r   \rProgramming Languages 	: PHP\rFrameworks			: CakePhp (MVC)\rScripting Languages  	: JavaScript, HTML, CSS, Ajax (JQuery) and JQuery Plugins \rDatabases			: MySQL 5.0\rWeb Servers			: Apache 2.2\rIDEs				: Eclipse, Intelli J Idea 11.x\rOperating Systems             : Linux, Windows 7/VISTA/XP	\rSoftware Development Methodology	: Agile Method\r\r\r\r\r\r	\rProject Experience\r\rProject		: FERTILITY (http://www.fertility2u.com)\rClient		: Fertility\rTechnologies	: Php, MySql 5.0, Ajax (JQuery) and JQuery plugins.\rFramework	: Magento\rTeam Size	: 10. \r\rContribution:\rRole in development and database design of all modules.\rDid UI design and Integration of modules, with ajaxification of all pages in this application through JQuery wherever ajaxficaion is required.\rClearing the problem in every phase.\rDiscussing with client weekly and clearing their doubts.\r\rOverview:\r\rWelcome to Fertility2u your Online Fertility Pharmacy offering a wide range of prescription Fertility Drugs / IVF medication all delivered directly to your doorstep, normally within 24 hours of receiving your prescription. Enjoy peace of mind knowing Fertility2u is regulated by the GPhC and a member of the National Pharmacy Association. Fertility2u is considered a market leader in providing IVF Fertility Drugs as well as being an established Verified UK Pharmacy with a High Street outlet. Our aim is to provide a safe, secure and fast solution to IVF patients worldwide. We stock most brands such as Gonal F, Menopur and Puregon and only use UK Approved Fertility Drugs .\rProject		: Work-Force  ( HYPERLINK \"http://workforce-base.com/\" http://workforce-base.com/)\rClient		: Fertility\rTechnologies	: Php, MySql 5.0, Ajax (JQuery) and JQuery plugins.\rFramework	: Cakephp MVC 2.x\rTeam Size	: 10. \r\rContribution:\rWorked in development and database designing of all modules.\rDid in UI design and Integration of modules. \rBug Fixing in every phase.\rHandling client queries.\r\rOverview:\r\rWork-Force is the Apex of the Project and Workforce Outsourcing Sites on the Internet. Work-Force Freelancers are certified, having established that they have the Proper Education, Training, Experience, Skills and have time and time again proven themselves.\r\rProject		: Rvr ( HYPERLINK \"http://rvr.thewtour.com/\" http://rvr.thewtour.com/)\rClient		: Gabril\rTechnologies	: Php, MySql 5.0, Ajax (JQuery) and JQuery plugins.\rFramework	: Cakephp MVC 2.x\rFramework	: Intelli J Idea 10.x.\rTeam Size	: 2. \r\rContribution:\rHandled the designing and implementation of database.\rActively participated in UI designing and Integration of modules. Did ajaxification through JQuery, wherever ajaxficaion is required.\rFixing the problem in different phases of development.\rHandled the communication with client, in clearing the doubts and development status.\rDiscussing with client weekly and clearing their doubts.\r\rOverview:\rThis deals in conducting the survey of readability of font and size, among different  \rfont and size which is most easy readable by visitor in a museum.\r\r\rProject		: GYAPTI ( HYPERLINK \"http://www.gyapti.com/\" http://www.gyapti.com/)\rClient		: GYAPTI\rTechnologies	: Php, MySql 5.0, Ajax (JQuery) and JQuery plugins.\rFramework	: Cakephp MVC 2.x\rFramework	: Intelli J Idea 10.x.\rTeam Size	: 10. \r\rContribution:\rWorked in Development and Designing of database.\rDid UI designing and integration of modules, implement the ajaxification where every required in project.\rUse to fix the bug problems in every phase of project.\rCommunicating with client and handling clientís queries.\r\rOverview:\rGyapti is an educational web site (actually a web application). This website provides free universities, colleges, etc. information. People can get their courses information, events information and full view of them. It mainly focuses to educate people through online. \rAs we know today, online a very wide medium to aware people. We know today, most of people are still illiterate. There are various reasons for them like not having any medium for education, no facilities. \rGyapti is a very popular way to aware people by web medium. Internet medium is also a very cheapest medium. People can get it easily via satellite also if there is no other medium.\rGyapti mainly focus on worldwide education to spread new brightness of light in people life. People can get very easily any information related to Universities, Colleges. They can be local or world-wide popular Universities, Colleges.\rPeople can make their communities also and can invite other people to join here free of cost.\r\r\r\r\r\r\r\r\rProject		: Mometrosales ( HYPERLINK \"http://www.mometrosales.com/\" http://www.mometrosales.com)\rClient Name	: Govin\rTechnologies	: Php, MySql 5.0, Ajax (JQuery).\rFramework	: Wordpress\rIDE		: Intelli J Idea 11.x.\rTeam Size	: 3. \r\rContribution:\rWorked as a Software Engineer.\rCommunicated with client and team members in shorting the bugs.\rDiscussing with client weekly and clearing their doubts.\rIntegration of Hibernate Search feature which uses Lucene search also.\r\rOverview:\rMillions of people are using mobile devices to surf the web for information. It is more important than ever for companies to have a mobile website, especially one that downloads essential information quickly and displays it in a way that helps website visitors find what they are looking for while on the go. Create a home-based business with MoMetro by offering Mobile Websites to businesses. You will not only make a ton of money but you will have fun doing it. PERSONAL DETAILS    \r\rPersonal Details     \r\r\rDate of birth			30th July 1991\rFatherís Name		Mr. M.C.Ramola\rAddress     			Guru Road, Patel Nagar\r				Dehradun - 248001\rLanguages Known		Hindi, English.\r	\r						\r\r   (Ayush Ramola)\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(\0\0,\0\0-\0\02\0\07\0\0?\0\0B\0\0M\0\0[\0\0h\0\0i\0\0q\0\0z\0\0Ôﬂ“æ≠æ≠æõâtâcO≠D=/\Zh[(\0CJ\0OJ\0QJ\0^J\0aJ\0\0h≥$*\0hûZ§\0\0j\0\0\0\0h≥$*\0hûZ§\0U&h≥$*\0hæe\06Å>*CJ\0OJ\0QJ\0^J\0aJ\0\0 høt\06Å>*CJ\0OJ\0QJ\0^J\0aJ\0\0)h≥$*\0hûZ§\05Å6ÅCJ\0OJ\0QJ\0\\Å^J\0aJ\0#h≥$*\0hûZ§\06ÅCJ\0OJ\0QJ\0^J\0aJ\0#h≥$*\0hûZ§\0CJ\0OJ\0QJ\0\\Å^J\0aJ\0 h≥$*\0hûZ§\0CJ\0OJ\0QJ\0^J\0aJ\0\0&h≥$*\0hûZ§\05ÅCJ\0OJ\0QJ\0\\Å^J\0aJ\0\0høt\0CJ\0OJ\0QJ\0\\ÅaJ\0h≥$*\0hûZ§\0CJ\0OJ\0QJ\0\\ÅaJ\0h≥$*\0hÃ=W\0CJ\0OJ\0QJ\0\\ÅaJ\0\0\0\0\0\0\0\0\02\0\0h\0\0q\0\0{\0\0|\0\0â	\0\0ä	\0\0•	\0\0¶	\0\0	\n\0\0\n\0\0$\n\0\0%\n\0\0Æ\n\0\0˝\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0\0\0\0\0\0\0\0\0\0\0ﬁ\0\0\0\0\0\0\0\0\0\0\0\0Ÿ\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0≈\0\0\0\0\0\0\0\0\0\0\0\0√\0\0\0\0\0\0\0\0\0\0\0\0√\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0∑\0\0\0\0\0\0\0\0\0\0\0\0∑\0\0\0\0\0\0\0\0\0\0\0\0Æ\0\0\0\0\0\0\0\0\0\0\0\0©\0\0\0\0\0\0\0\0\0\0\0\0§\0\0\0\0\0\0\0\0\0\0\0\0ì\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$\n&\0F\r\0\r∆\0h–\0\0a$gd\"TÆ\0\0\0\0gd[(\0\0\0gd[(\0\0\0\0$Ñh^Ñha$\0\0\0$\r∆\0¬\0a$gd[(\0\0E\0\0\0\0Ñw^Ñw\0\r∆\0\0\0\0-D\0M∆\n\0\0\0ˇﬂﬂﬂ\0\0\0\0\0\0$a$\0\0\0gdü-\0\r\0\0-D\0M∆\n\0\0\0ˇˇˇˇ\0\0\0gdü-\0\0\0\0ÑpÑ–^Ñp`Ñ–gdü-\0\0\0\0\0z\0\0{\0\0|\0\0à	\0\0â	\0\0ä	\0\0§	\0\0•	\0\0¶	\0\0∞	\0\0¥	\0\0µ	\0\0π	\0\0∫	\0\0ø	\0\0Í	\0\0\0\n\0\0\n\0\0\n\0\0\n\0\0\n\0\0#\n\0\0Ô·÷ÀºÆÔ§ôã·{k^{QD^=ÔÆ\0\0\0\0\0\0\0\0\0\0\0\0\0h≥$*\0hûZ§\0\0h≥$*\0hXõ\0OJ\0QJ\0^J\0\0h≥$*\0h® >\0OJ\0QJ\0^J\0\0h≥$*\0hûZ§\0OJ\0QJ\0^J\0\0h≥$*\0hûZ§\05ÅOJ\0QJ\0\\Å^J\0\0h≥$*\0h|U7\05ÅOJ\0QJ\0\\Å^J\0\0h≥$*\0h„7\n\05ÅOJ\0QJ\0^J\0høt\05ÅOJ\0QJ\0^J\0h[(\0OJ\0QJ\0^J\0\0\Zh[(\0CJ\0OJ\0QJ\0^J\0aJ\0\0h≥$*\0høt\0CJ\0OJ\0QJ\0^J\0\0høt\0hûZ§\0CJ\0aJ\0\0høt\0høt\0CJ\0aJ\0\0h≥$*\0hûZ§\05ÅOJ\0QJ\0^J\0 h≥$*\0hûZ§\0CJ\0OJ\0QJ\0^J\0aJ\0#\n\0\0$\n\0\0%\n\0\0H\n\0\0R\n\0\0U\n\0\0V\n\0\0[\n\0\0\\\n\0\0π\n\0\0ª\n\0\0⁄\n\0\0›\n\0\0ﬁ\n\0\0Â\n\0\0Û\n\0\0ı\n\0\0\0\0\n\0\00\0\07\0\0=\0\0D\0\0I\0\0a\0\0c\0\0s\0\0ÚÎﬁ—√µßóﬁäﬁÄäÄäv—ﬁlﬁä_äﬁRE\0\0\0\0h≥$*\0hÑ7\0OJ\0QJ\0^J\0\0h≥$*\0h’	h\0OJ\0QJ\0^J\0\0h≥$*\0h%g\0OJ\0QJ\0^J\0\0h\"/p\0OJ\0QJ\0^J\0\0h⁄/r\0OJ\0QJ\0^J\0\0hÇ’\0OJ\0QJ\0^J\0\0h≥$*\0hß(¥\0OJ\0QJ\0^J\0\0h≥$*\0hûZ§\05ÅOJ\0QJ\0\\Å^J\0\0h≥$*\0hûZ§\05ÅOJ\0QJ\0^J\0h≥$*\0h‰lI\05ÅOJ\0QJ\0^J\0h≥$*\0h∆Nv\05ÅOJ\0QJ\0^J\0h≥$*\0hL-\0OJ\0QJ\0^J\0\0h≥$*\0hûZ§\0OJ\0QJ\0^J\0\0h[(\0h[(\0\0\ZhûZ§\0CJ\0OJ\0QJ\0^J\0aJ\0\ZÆ\n\0\0\n\0\0\0\0‡\0\0·\0\0˘\0\0˙\0\0}\0\0\0\0Ä\0\0ë\0\0ï\0\0≤\0\0Í\0\0\0\0\0\0\0\0\0\0\0\0Ÿ\0\0\0\0\0\0\0\0\0\0\0\0Ÿ\0\0\0\0\0\0\0\0\0\0\0\0‘\0\0\0\0\0\0\0\0\0\0\0\0œ\0\0\0\0\0\0\0\0\0\0\0\0±\0\0\0\0\0\0\0\0\0\0\0\0©\0\0\0\0\0\0\0\0\0\0\0\0†\0\0\0\0\0\0\0\0\0\0\0\0~\0\0\0\0\0\0\0\0\0\0\0\0p\0\0\0\0\0\0\0\0\0\0\0\0n\0\0\0\0\0\0\0\0\0\0\0\0n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r∆\0\0\0\0-D\0M∆\n\0\0\0ˇﬂﬂﬂ\0\0\0\"G\0$\r∆\r\0\0†p@‡∞ÄP ¿!ê$h\0ÑhÑ\0\01$^Ñh`Ñ\0\0a$gdß(¥\0\0\0\0Ñ–^Ñ–gdUx\0\0\0\n&\0F\0gd\"TÆ\0\0F\0$\r∆\r\0\0–p@‡∞ÄP ¿!ê$\0Ñ–Ñ\0\01$^Ñ–`Ñ\0\0a$\0\0gdj	”\0\0\0\0dh\0\0\0\0$\n&\0F\r\0\r∆\0h–\0\0a$gd\"TÆ\0\0\0\0$\n&\0F\r\0\r∆\0h–\0\0ÑÛˇ]ÑÛˇa$gd\"TÆ\0\0s\0\0}\0\0\0\0§\0\0´\0\0π\0\0ﬂ\0\0‡\0\0·\0\0¯\0\0˘\0\0˙\0\0\0\0 \0\0&\0\0/\0\0H\0\0R\0\0T\0\0\\\0\0b\0\0ÛÊ‹œÊ‹¬ª≠úÊâpâ\\H\\â5â\0\0$h≥$*\0hß(¥\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0\'h≥$*\0hûZ§\05ÅOJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\'h≥$*\0hß(¥\05ÅOJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\00h≥$*\0h∆Nv\00J;\05ÅB*\0CJ\0^J\0_Hˇ\0nHˇ\0ph\0\0\0ˇtHˇ\0\0$h≥$*\0hûZ§\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0 h≥$*\0hûZ§\0CJ\0OJ\0QJ\0^J\0aJ\0\0\Zh[(\0CJ\0OJ\0QJ\0^J\0aJ\0\0h≥$*\0hûZ§\0\0h≥$*\0hûZ§\0OJ\0QJ\0^J\0\0h≥$*\0h\"/p\0OJ\0QJ\0^J\0\0h\"/p\0OJ\0QJ\0^J\0\0h≥$*\0hûZ§\0OJ\0QJ\0^J\0\0h≥$*\0h’	h\0OJ\0QJ\0^J\0b\0\0c\0\0e\0\0f\0\0i\0\0n\0\0}\0\0\0\0Ä\0\0ê\0\0ë\0\0ï\0\0Æ\0\0±\0\0≤\0\0‹…∂£ê}o^N;+£\0\0\0\0\0\0\0\0\0\0\0\0hÇ’\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0ho@L\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0h≥$*\0hûZ§\05ÅOJ\0QJ\0\\Å^J\0\0 h≥$*\0hûZ§\0CJ\0OJ\0QJ\0^J\0aJ\0\0\Zh[(\0CJ\0OJ\0QJ\0^J\0aJ\0\0$h≥$*\0hß(¥\0OJ\0PJ\0\0QJ\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0hß(¥\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0hûZ§\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0hUx\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0h\"TÆ\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0\'høt\0h\"TÆ\0H*OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0h\"TÆ\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0≤\0\0¿\0\0¡\0\0»\0\0Œ\0\0œ\0\0Â\0\0Á\0\0Î\0\0¸\0\0\r\0\0\r\0\0\r\0\0\r\0\0\r\0\0\r\0\0 \r\0\0Ì⁄«∑Ì§ë§Ån[nH5H§\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$h≥$*\0hÀpÇ\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0hV|\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0h¬1ñ\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0hg>\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0h©1a\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0hÕ%Ÿ\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0hûZ§\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0hÇ’\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0h˝Pk\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0hâe \0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0h+π\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0≤\0\0œ\0\0 \r\0\08\r\0\0S\r\0\0z\r\0\0µ\r\0\0Â\r\0\0Ê\r\0\0Á\r\0\0Ë\r\0\0È\r\0\0Í\r\0\0Ï\r\0\0ˇ\r\0\0\0\0\02\0\0F\0\0á\0\0õ\0\0˝\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0Û\0\0\0\0\0\0\0\0\0\0\0\0Û\0\0\0\0\0\0\0\0\0\0\0\0Û\0\0\0\0\0\0\0\0\0\0\0\0Û\0\0\0\0\0\0\0\0\0\0\0\0Û\0\0\0\0\0\0\0\0\0\0\0\0Á\0\0\0\0\0\0\0\0\0\0\0\0Á\0\0\0\0\0\0\0\0\0\0\0\0Á\0\0\0\0\0\0\0\0\0\0\0\0Á\0\0\0\0\0\0\0\0\0\0\0\0◊\0\0\0\0\0\0\0\0\0\0\0\0◊\0\0\0\0\0\0\0\0\0\0\0\0∆\0\0\0\0\0\0\0\0\0\0\0\0Ω\0\0\0\0\0\0\0\0\0\0\0\0±\0\0\0\0\0\0\0\0\0\0\0\0®\0\0\0\0\0\0\0\0\0\0\0\0®\0\0\0\0\0\0\0\0\0\0\0\0®\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñh^ÑhgdDg\0\0\0\n&\0F\0\r∆\0h\0gdDg\0\0\0\0Ñh^Ñhgd,>\0\0\0\r∆\0\0\0-D\0M∆\n\0\0\0ˇﬂﬂﬂ\0\0\0gd[(\0\0\0\0$\r∆\0†—É\0\0\0Ñ–^Ñ–a$\0\0\0$\r∆\0†—É\0\0\0a$\0\0\0gd9\n˜\0\0\0\0gdôzÓ\0\0\0\0\0 \r\0\0,\r\0\0.\r\0\01\r\0\03\r\0\07\r\0\0A\r\0\0F\r\0\0H\r\0\0R\r\0\0S\r\0\0[\r\0\0]\r\0\0d\r\0\0e\r\0\0u\r\0\0w\r\0\0y\r\0\0ã\r\0\0ò\r\0\0ô\r\0\0Ì⁄«¥§«Ì⁄î«Ì⁄îÑ¥q^«J«\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\'h≥$*\0hûZ§\05ÅOJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0$h≥$*\0hds\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0hP±\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0h⁄/r\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0hÇ’\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0h\"TÆ\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0hr;\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0hûZ§\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0h9\n˜\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0h\rq“\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0ô\r\0\0ö\r\0\0©\r\0\0´\r\0\0±\r\0\0≥\r\0\0µ\r\0\0∂\r\0\0÷\r\0\0◊\r\0\0ÿ\r\0\0‰\r\0\0Ê\r\0\0Á\r\0\0Ë\r\0\0È\r\0\0Í\r\0\0Ï\r\0\0˛\r\0\0Îÿ≈≤¢ïà{ànàïaWJ=ï/\Zh[(\0CJ\0OJ\0QJ\0^J\0aJ\0\0h≥$*\0hBÄ\0OJ\0QJ\0^J\0\0h≥$*\0h\"/p\0OJ\0QJ\0^J\0\0hûZ§\0OJ\0QJ\0^J\0\0h≥$*\0hUx\0OJ\0QJ\0^J\0\0h≥$*\0hø2¿\0OJ\0QJ\0^J\0\0h≥$*\0h\rq“\0OJ\0QJ\0^J\0\0h≥$*\0h&^^\0OJ\0QJ\0^J\0\0h≥$*\0hûZ§\0OJ\0QJ\0^J\0\0h\"TÆ\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0h\Z]2\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0h\\2>\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0$h≥$*\0hûZ§\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0\'h≥$*\0h9\n˜\05ÅOJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0˛\r\0\0ˇ\r\0\0\0\0\0	\0\0\n\0\0\0\0\0\0\0\00\0\01\0\02\0\08\0\0E\0\0á\0\0ö\0\0≠\0\0ª\0\0ø\0\0Û\0\0ˆ\0\0\0\0\"\0\0·\0\0Í\0\0Î\0\0Ï\0\0Ô‰‘«∫‘¨•°¨óç«É«uÉ«k«k«‘^N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h≥$*\0h\"xë\05ÅOJ\0QJ\0\\Å^J\0\0hDg\05ÅOJ\0QJ\0\\Å^J\0\0h\"/p\0OJ\0QJ\0^J\0\0h≥$*\0hDg\05ÅOJ\0QJ\0^J\0høt\0OJ\0QJ\0^J\0\0hÔÚ\0OJ\0QJ\0^J\0\0hDg\0OJ\0QJ\0^J\0\0høt\0\0høt\0høt\0\0h≥$*\0hDg\0OJ\0QJ\0\\Å^J\0høt\05ÅOJ\0QJ\0\\Å^J\0\0h≥$*\0hDg\0OJ\0QJ\0^J\0\0h≥$*\0hDg\05ÅOJ\0QJ\0\\Å^J\0\0h,>\0OJ\0QJ\0\\Å^J\0 h≥$*\0hûZ§\0CJ\0OJ\0QJ\0^J\0aJ\0õ\0\0¨\0\0≠\0\0ª\0\0Û\0\0Ç\0\0ß\0\0‡\0\0·\0\0Î\0\0Ï\0\0ë\0\0\0\0\0\0E\0\0a\0\0r\0\0ˆ\0\0\0\0\0\0\0\0\0\0\0\0Ì\0\0\0\0\0\0\0\0\0\0\0\0‰\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0¥\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0Ì\0\0\0\0\0\0\0\0\0\0\0\0‰\0\0\0\0\0\0\0\0\0\0\0\0‰\0\0\0\0\0\0\0\0\0\0\0\0®\0\0\0\0\0\0\0\0\0\0\0\0ú\0\0\0\0\0\0\0\0\0\0\0\0ì\0\0\0\0\0\0\0\0\0\0\0\0ì\0\0\0\0\0\0\0\0\0\0\0\0ì\0\0\0\0\0\0\0\0\0\0\0\0ì\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñh^Ñhgdî[ä\0\0\0\n&\0F\0\r∆\0h\0gdî[ä\0\0\0\0$Ñ–^Ñ–a$gd¶H”\0\0\0$\n&\0F\0\r∆\08Ïæ\0\0\0Ñ8^Ñ8a$gdDg\0\Z\0\0$\n&\0F\0\r∆\08Ïæ\0\0\0ÑæÑ8]Ñæ^Ñ8a$gdDg\0\0\0\0Ñ–`Ñ–gdDg\0\0\0\0Ñ–^Ñ–gdDg\0\0\0\0Ñh^ÑhgdDg\0\0Ï\0\0 \0\0À\0\0ê\0\0ë\0\0ö\0\0õ\0\0ß\0\0®\0\0©\0\0™\0\0“\0\0”\0\0Ì\0\0Ó\0\0Ô\0\0\0\0\0\0s\0\0Å\0\0á\0\0§\0\0©\0\0™\0\0´\0\0≠\0\0æ\0\0¡\0\0Ï\0\0˜\0\0\0\0Â ÂΩ≠Ω†≠íäÜäÄä|írΩdZΩMZMZΩZΩZΩh≥$*\0hã^î\0OJ\0QJ\0^J\0\0hã^î\0OJ\0QJ\0^J\0\0h≥$*\0hî[ä\05ÅOJ\0QJ\0^J\0hÔÚ\0OJ\0QJ\0^J\0\0hî[ä\0\0\nhMª\00J8\0\0hMª\0\0j\0\0\0\0hMª\0Uh≥$*\0hî[ä\0OJ\0QJ\0\\Å^J\0hMª\05ÅOJ\0QJ\0\\Å^J\0\0h≥$*\0hî[ä\05ÅOJ\0QJ\0\\Å^J\0\0h≥$*\0hî[ä\0OJ\0QJ\0^J\0\04h©1a\0B*CJ\0OJ\0QJ\0^J\0aJ\0fH\0ph\0\0\0\0q \n\0\0\0ˇˇˇˇ\0\0\0\04h¶H”\0B*CJ\0OJ\0QJ\0^J\0aJ\0fH\0ph\0\0\0\0q \n\0\0\0ˇˇˇˇ\0\0\0r\0\0s\0\0Å\0\0æ\0\0Ï\0\0\0\0 \0\0!\0\0+\0\0,\0\0.\0\0/\0\0Ç\0\0ì\0\0‘\0\0\0\0\0\0!\0\0ˆ\0\0\0\0\0\0\0\0\0\0\0\0Ì\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0Ω\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0\0\0\0\0\0\0\0\0\0\0Ì\0\0\0\0\0\0\0\0\0\0\0\0Ì\0\0\0\0\0\0\0\0\0\0\0\0¥\0\0\0\0\0\0\0\0\0\0\0\0¥\0\0\0\0\0\0\0\0\0\0\0\0®\0\0\0\0\0\0\0\0\0\0\0\0ü\0\0\0\0\0\0\0\0\0\0\0\0ü\0\0\0\0\0\0\0\0\0\0\0\0ü\0\0\0\0\0\0\0\0\0\0\0\0ü\0\0\0\0\0\0\0\0\0\0\0\0ü\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñh^ÑhgdÙYÅ\0\0\0\n&\0F\0\r∆\0h\0gdÙYÅ\0\0\0\0Ñh^ÑhgdMª\0\0\0$\n&\0F\0\r∆\08Ïæ\0\0\0Ñ8^Ñ8a$gdî[ä\0\Z\0\0$\n&\0F\0\r∆\08Ïæ\0\0\0ÑæÑ8]Ñæ^Ñ8a$gdî[ä\0\0\0\0Ñ–`Ñ–gdî[ä\0\0\0\0Ñ–^Ñ–gdî[ä\0\0\0\0\0\0!\0\0*\0\0+\0\0,\0\06\0\0Ç\0\0É\0\0á\0\0û\0\0ß\0\0∞\0\0ª\0\0\"\0\0,\0\0-\0\0.\0\0/\0\08\0\09\0\0=\0\0>\0\0?\0\0ˆÈŸÃŸ¬µ´¬µûµûµëµáyi\\Li>\0\0\0\0\0h.7&\0hÙYÅ\0OJ\0QJ\0\\Å^J\0h.7&\0hı`\05ÅOJ\0QJ\0\\Å^J\0\0h.7&\0hÙYÅ\0OJ\0QJ\0^J\0\0h.7&\0hÙYÅ\05ÅOJ\0QJ\0\\Å^J\0\0h≥$*\0h©1a\0OJ\0QJ\0\\Å^J\0hî[ä\0OJ\0QJ\0^J\0\0hMª\0h©1a\0OJ\0QJ\0^J\0\0hMª\0hã^î\0OJ\0QJ\0^J\0\0h©1a\0OJ\0QJ\0^J\0\0hMª\0hMª\0OJ\0QJ\0^J\0\0hwf·\0OJ\0QJ\0^J\0\0hî[ä\05ÅOJ\0QJ\0\\Å^J\0\0h≥$*\0hî[ä\05ÅOJ\0QJ\0\\Å^J\0\0h≥$*\0hî[ä\0OJ\0QJ\0^J\0\0hã^î\0OJ\0QJ\0^J\0?\0\0@\0\0f\0\0g\0\0\0\0Ä\0\0Ç\0\0å\0\0í\0\0¸\0\0\0\0\0\0\0\0\"\0\00\0\0d\0\0f\0\0\0\0Ç\0\0á\0\0à\0\0â\0\0ã\0\0®\0\0´\0\0»\0\0…\0\0Ï\0\0\"\0\0#\0\0x\0\0≥\0\0Ω\0\0ÙÌÙ‡Ù“≈ªÆõÆëÆÉyÆyÆlylyÆyÆyÆyÆyÆ\\\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h.7&\0hÙYÅ\05ÅOJ\0QJ\0\\Å^J\0\0h.7&\0h‡|9\0OJ\0QJ\0^J\0\0h‡|9\0OJ\0QJ\0^J\0\0h.7&\0hÙYÅ\05ÅOJ\0QJ\0^J\0h.7&\0OJ\0QJ\0^J\0\0$h.7&\0hÙYÅ\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0h.7&\0hÙYÅ\0OJ\0QJ\0^J\0\0hÇ’\0OJ\0QJ\0^J\0\0h.7&\0hı`\0OJ\0QJ\0^J\0\0h.7&\0hÙYÅ\0OJ\0QJ\0\\Å^J\0h.7&\0hı`\00J8\0B*\0ph\0\0\0ˇh.7&\0hı`\0\0j\0\0\0\0h.7&\0hı`\0U\0 !\0\0\"\0\00\0\0f\0\0Ï\0\0#\0\0y\0\0≤\0\0≥\0\0Ω\0\0\0\0V\0\0W\0\0X\0\0™\0\0ª\0\0ˆ\0\0\0\0\0\0\0\0\0\0\0\0Ì\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0Ω\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0\0\0\0\0\0\0\0\0\0\0Ì\0\0\0\0\0\0\0\0\0\0\0\0±\0\0\0\0\0\0\0\0\0\0\0\0±\0\0\0\0\0\0\0\0\0\0\0\0´\0\0\0\0\0\0\0\0\0\0\0\0ö\0\0\0\0\0\0\0\0\0\0\0\0é\0\0\0\0\0\0\0\0\0\0\0\0Ö\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñh^Ñhgd©1a\0\0\0\n&\0F\0\r∆\0h\0gd©1a\0\0\0$\r∆\0\0\0Ñ]Ña$gdÁBË\0\0\0\0Ñ–^Ñ–\0\0\0$Ñ–`Ñ–a$gd.7&\0\0\0$\n&\0F\0\r∆\08Ïæ\0\0\0Ñ8^Ñ8a$gdÙYÅ\0\Z\0\0$\n&\0F\0\r∆\08Ïæ\0\0\0ÑæÑ8]Ñæ^Ñ8a$gdÙYÅ\0\0\0\0Ñ–`Ñ–gdÙYÅ\0\0\0\0Ñ–^Ñ–gdÙYÅ\0\0Ω\0\0\0\0\0\0H\0\0T\0\0V\0\0W\0\0X\0\0a\0\0b\0\0j\0\0k\0\0l\0\0ê\0\0ë\0\0ß\0\0®\0\0™\0\0$\0\07\0\0K\0\0Y\0\0â\0\0ä\0\0ÒÊÒÿÒÀ∑ßößå{ö{h{åöUöG=ö\0\0\0h‡|9\0OJ\0QJ\0^J\0\0h≥$*\0h©1a\05ÅOJ\0QJ\0^J\0$h≥$*\0h©1a\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0%h≥$*\0h©1a\00J8\0B*\0OJ\0QJ\0^J\0ph\0\0\0ˇ!j\0\0\0\0h≥$*\0h©1a\0OJ\0QJ\0U^J\0h≥$*\0h©1a\0OJ\0QJ\0\\Å^J\0h≥$*\0h©1a\0OJ\0QJ\0^J\0\0h≥$*\0h©1a\05ÅOJ\0QJ\0\\Å^J\0\0\'h≥$*\0hÁBË\05ÅOJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0h≥$*\0hï?\0OJ\0QJ\0^J\0\0h.7&\0h.7&\0OJ\0QJ\0\\Å^J\0h[(\0OJ\0QJ\0\\Å^J\0h.7&\0h—/g\0OJ\0QJ\0\\Å^J\0\0ª\0\0¸\0\0\0\09\0\0J\0\0K\0\0Y\0\0ä\0\0Ù\0\0+\Z\0\0d\Z\0\0e\Z\0\0o\Z\0\0}\0\0K\0\0\0\0\0Î\0\0I\0\0ˆ\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0\0\0\0\0\0\0\0\0\0\0Ì\0\0\0\0\0\0\0\0\0\0\0\0‰\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0¥\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0Ì\0\0\0\0\0\0\0\0\0\0\0\0‰\0\0\0\0\0\0\0\0\0\0\0\0®\0\0\0\0\0\0\0\0\0\0\0\0®\0\0\0\0\0\0\0\0\0\0\0\0®\0\0\0\0\0\0\0\0\0\0\0\0®\0\0\0\0\0\0\0\0\0\0\0\0ì\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$\r∆\0\0\0ÑÑ–]Ñ^Ñ–a$gd©1a\0\0\0\0$Ñ–^Ñ–a$gd[(\0\0\0$\n&\0F\0\r∆\08Ïæ\0\0\0Ñ8^Ñ8a$gd©1a\0\Z\0\0$\n&\0F\0\r∆\08Ïæ\0\0\0ÑæÑ8]Ñæ^Ñ8a$gd©1a\0\0\0\0Ñ–`Ñ–gd©1a\0\0\0\0Ñ–^Ñ–gd©1a\0\0\0\0Ñh^Ñhgd©1a\0\0ä\0\0Û\0\0Ù\0\0*\Z\0\0+\Z\0\0c\Z\0\0e\Z\0\0o\Z\0\0I\0\0J\0\0L\0\0M\0\0O\0\0P\0\0Q\0\0Z\0\0[\0\0\\\0\0h\0\0i\0\0j\0\0k\0\0ï\0\0ñ\0\0±\0\0≤\0\0¥\0\0«\0\0\0\0ÙÁ›Á›ÁÕÁ√πØπÁõã~ãqãc[W[Q[cπ~\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nh©1a\00J8\0\0h©1a\0\0j\0\0\0\0h©1a\0Uh≥$*\0hwsÍ\0OJ\0QJ\0\\Å^J\0h©1a\05ÅOJ\0QJ\0\\Å^J\0\0h≥$*\0hwsÍ\0OJ\0QJ\0^J\0\0h≥$*\0hwsÍ\05ÅOJ\0QJ\0\\Å^J\0\0\'h≥$*\0hwsÍ\05ÅOJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0h[(\0OJ\0QJ\0^J\0\0h©1a\0OJ\0QJ\0^J\0\0hÁBË\0OJ\0QJ\0^J\0\0h≥$*\0h©1a\05ÅOJ\0QJ\0\\Å^J\0\0h‡|9\0OJ\0QJ\0^J\0\0h≥$*\0h©1a\0OJ\0QJ\0^J\0\0h‡|9\0CJ\0OJ\0QJ\0^J\0I\0\0J\0\0K\0\0L\0\0M\0\0N\0\0O\0\0P\0\0Q\0\0¥\0\0»\0\0ˆ\0\0\0\0(\0\08\0\09\0\0G\0\0f\0\0¶\0\0ﬂ\0\0˘\0\0\0\0\0\0\0\0\0\0\0\0˘\0\0\0\0\0\0\0\0\0\0\0\0˘\0\0\0\0\0\0\0\0\0\0\0\0˘\0\0\0\0\0\0\0\0\0\0\0\0˘\0\0\0\0\0\0\0\0\0\0\0\0˘\0\0\0\0\0\0\0\0\0\0\0\0˘\0\0\0\0\0\0\0\0\0\0\0\0Ë\0\0\0\0\0\0\0\0\0\0\0\0‹\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0¡\0\0\0\0\0\0\0\0\0\0\0\0ß\0\0\0\0\0\0\0\0\0\0\0\0ß\0\0\0\0\0\0\0\0\0\0\0\0ß\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0$\n&\0F\0\r∆\08Ïæ\0\0\0ÑæÑ8]Ñæ^Ñ8a$gdwsÍ\0\0\0\0Ñ–`Ñ–gdwsÍ\0\0\0\0Ñ–^Ñ–gdwsÍ\0\0\0\0Ñh^ÑhgdwsÍ\0\0\0\n&\0F\0\r∆\0h\0gdwsÍ\0\0\0$\r∆\0\0\0Ñ]Ña$gdwsÍ\0\0\0\0Ñ–^Ñ–\0\0\0\0\0\0\0&\0\09\0\0G\0\0M\0\0S\0\0d\0\0f\0\0s\0\0u\0\0§\0\0Ó\0\0˛\0\0\' \0\01 \0\0\0\"\0\0\"\0\0\"\0\0\"\0\0(\"\0\0-\"\0\0.\"\0\0/\"\0\0ÛÊ”Ê≈ªÊ≠ÊªÊªÊ≈Êùà{ndR@nd\0\0\0\0#h©1a\0hûZ§\05ÅCJ \0OJ\0QJ\0^J\0aJ \0#h©1a\0h©1a\05ÅCJ \0OJ\0QJ\0^J\0aJ \0h©1a\0OJ\0QJ\0^J\0\0h≥$*\0hûZ§\0OJ\0QJ\0^J\0\0h≥$*\0h©1a\0OJ\0QJ\0^J\0\0)h©1a\0h©1a\0OJ\0QJ\0^J\0fH`\0q \n\0\0\0ˇ˚ˇˇ\0\0\0h≥$*\0hwsÍ\05ÅOJ\0QJ\0\\Å^J\0\0h≥$*\0hä_∆\05ÅOJ\0QJ\0^J\0hm≥\0OJ\0QJ\0^J\0\0h≥$*\0hwsÍ\05ÅOJ\0QJ\0^J\0$h≥$*\0hwsÍ\0OJ\0QJ\0^J\0_Hˇ\0nHˇ\0tHˇ\0\0h≥$*\0hwsÍ\0OJ\0QJ\0^J\0\0h≥$*\0hä_∆\0OJ\0QJ\0^J\0ﬂ\0\0& \0\0\' \0\01 \0\0\"\0\0\"\0\0-\"\0\0.\"\0\0/\"\0\0N\"\0\0l\"\0\0í\"\0\0®\"\0\0…\"\0\0À\"\0\0“\"\0\0”\"\0\0Â\"\0\0Â\0\0\0\0\0\0\0\0\0\0\0\0‹\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0¬\0\0\0\0\0\0\0\0\0\0\0\0¬\0\0\0\0\0\0\0\0\0\0\0\0¬\0\0\0\0\0\0\0\0\0\0\0\0º\0\0\0\0\0\0\0\0\0\0\0\0º\0\0\0\0\0\0\0\0\0\0\0\0∑\0\0\0\0\0\0\0\0\0\0\0\0µ\0\0\0\0\0\0\0\0\0\0\0\0µ\0\0\0\0\0\0\0\0\0\0\0\0µ\0\0\0\0\0\0\0\0\0\0\0\0µ\0\0\0\0\0\0\0\0\0\0\0\0∑\0\0\0\0\0\0\0\0\0\0\0\0µ\0\0\0\0\0\0\0\0\0\0\0\0´\0\0\0\0\0\0\0\0\0\0\0\0õ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$Ñ∞Ñ–^Ñ∞`Ñ–a$gdÁBË\0\0	\0\0Ñ Ñ–^Ñ `Ñ–\0\0\0\0\0\0gd©1a\0\0\0\0Ñ†^Ñ†\0\0$\r∆\0\0\0Ñ]Ña$gd©1a\0\0\0\0Ñ–`Ñ–gdwsÍ\0\0\0\0Ñ–^Ñ–gdwsÍ\0\Z\0\0$\n&\0F\0\r∆\08Ïæ\0\0\0ÑæÑ8]Ñæ^Ñ8a$gdwsÍ\0\0/\"\0\0?\"\0\0A\"\0\0C\"\0\0H\"\0\0K\"\0\0M\"\0\0N\"\0\0\\\"\0\0a\"\0\0k\"\0\0l\"\0\0y\"\0\0ë\"\0\0í\"\0\0ñ\"\0\0®\"\0\0◊\"\0\0„\"\0\0Â\"\0\0ÛÈ€ÈÛŒÛ¡ŒÈ∑ÛÈÛ∑ŒÛÈÛ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h©1a\0OJ\0QJ\0^J\0\0h≥$*\0h?9\0OJ\0QJ\0^J\0\0h≥$*\0hÁBË\0OJ\0QJ\0^J\0\0hm≥\0hm≥\0H*OJ\0QJ\0^J\0hm≥\0OJ\0QJ\0^J\0\0h≥$*\0hûZ§\0OJ\0QJ\0^J\05\01êh:p‡|9\0;0∞–/ ∞‡=!∞†\"∞ü#ê–$ê–%∞\0\0∞–∞–ê–\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0^O\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ò\0\0\0ò\0\0\0û\0\0\0û\0\0\0û\0\0\0û\0\0\0û\0\0\0û\0\0\0û\0\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\0v\0\0v\0\0v\0\0v\0\0v\0\0v\0\0v\0\0v\0\0v\0\06\0\06\0\06\0\06\0\06\0\06\0\08\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\0®\0\0\06\0\06\0\0\0\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\0∏\0\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\0\0\0\06\0\0h\0\0H\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\0∞\0\06\0\02\0\0\0\0\0¿\0\0–\0\0‡\0\0\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0Ä\0\0ê\0\0¿\0\0–\0\0‡\0\0\0\0\0\0\0\0\02\0\0(\0\0ÿ\0\0Ë\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0Ä\0\0ê\0\0¿\0\0–\0\0‡\0\0\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0Ä\0\0ê\0\0¿\0\0–\0\0‡\0\0\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0Ä\0\0ê\0\0¿\0\0–\0\0‡\0\0\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0Ä\0\0ê\0\0¿\0\0–\0\0‡\0\0\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0Ä\0\0ê\0\0¿\0\0–\0\0‡\0\0\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0Ä\0\0ê\0\08\0\0X\0\0¯\0\0\0\0\0\0V\0\0~\0\0\0\0\0_HmH	@nH	@sH	@tH	@\0\0\0\0D\0\0`Òˇ\0D\0\0\0\0\0\0\0\0\0\0N\0o\0r\0m\0a\0l\0\0\0\0\0\0*$\0\0CJ\0_HaJ\0mH	sH	tH\0\0x\0@\0\0x\0\0\0\0\0\0\0\0\0	\0H\0e\0a\0d\0i\0n\0g\0 \02\0\0\08\0\0$\n&F\0Ñ\0\0Ñ\0\0Ñ\0\0-D@&M∆\n\0\0\0ˇøøø\0\0\0]Ñ\0\0^Ñ\0\0`Ñ\0\0\05CJ\0OJ\0QJ\0aJ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D\0A`Úˇ°\0D\0\0\0\0\0\0\0\0\0\0D\0e\0f\0a\0u\0l\0t\0 \0P\0a\0r\0a\0g\0r\0a\0p\0h\0 \0F\0o\0n\0t\0\0\0\0\0V\0i\0Ûˇ≥\0V\0\r\0\0\0\0\0\00\0T\0a\0b\0l\0e\0 \0N\0o\0r\0m\0a\0l\0\0\0 \0:V\0ˆ\0\04÷\0\0\04÷\0\nl\0aˆ\0\0\0\0\0\0(\0k Ùˇ¡\0(\0\0\r\0\0\0\0\0\00\0N\0o\0 \0L\0i\0s\0t\0\0\0\0\0\0\0\0\02\0˛oÚˇÒ\02\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\02\0z\00\0\0\0\0OJ\0QJ\02\0˛/Úˇ2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\03\0z\00\0\0\0\0OJ\0QJ\02\0˛/Úˇ2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\03\0z\01\0\0\0\0OJ\0QJ\06\0˛/Úˇ!6\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\03\0z\02\0\0\0\0CJ\0OJ\0QJ\06\0˛/Úˇ16\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\04\0z\00\0\0\0\0CJ\0OJ\0QJ\02\0˛/ÚˇA2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\05\0z\00\0\0\0\0OJ\0QJ\06\0˛/ÚˇQ6\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\06\0z\00\0\0\0\0CJ\0OJ	\0QJ	\0:\0˛/Úˇa:\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\07\0z\00\0\0\0\0CJ\0OJ\0QJ\0aJ\02\0˛/Úˇq2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\08\0z\00\0\0\0\0OJ\0QJ\02\0˛/ÚˇÅ2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\09\0z\00\0\0\0\0OJ\0QJ\0J\0˛/ÚˇëJ\0\0\0\0\0\0\0\0\0\0\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\0\0\0\0\0P\0˛/Úˇ°P\0\0\0\0\0\0\0\0\0\0\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\0\0\0\0\0R\0˛/Úˇ±R\0\0\0\0\0\0\0\0\0\0\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\0\0\0\0\0T\0˛/Úˇ¡T\0\0\0\0\0\0\0\0\0\0\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\0\0\0\0\0V\0˛/Úˇ—V\0\0\0\0\0\0\0\0\0\0\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\0\0\0\0\0X\0˛/Úˇ·X\0\0\0\0\0\0\0\0\0\0 \0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\01\0\0\0\0\02\0˛/ÚˇÒ2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\04\0z\01\0\0\0\0OJ\0QJ\02\0˛/Úˇ2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\06\0z\01\0\0\0\0OJ\0QJ\06\0˛/Úˇ6\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\08\0z\01\0\0\0\0OJ	\0QJ	\0^J	\02\0˛/Úˇ!2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\08\0z\02\0\0\0\0OJ\0QJ\06\0˛/Úˇ16\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\09\0z\01\0\0\0\0OJ	\0QJ	\0^J	\02\0˛/ÚˇA2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\09\0z\02\0\0\0\0OJ\0QJ\04\0˛/ÚˇQ4\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\00\0z\00\0\0\0\0OJ\0QJ\04\0˛/Úˇa4\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\00\0z\01\0\0\0\0OJ	\0QJ	\04\0˛/Úˇq4\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\00\0z\02\0\0\0\0OJ\0QJ\0<\0˛/ÚˇÅ<\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\01\0z\00\0\0\0\0CJ\0OJ\0QJ\0aJ\04\0˛/Úˇë4\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\01\0z\01\0\0\0\0OJ\0QJ\04\0˛/Úˇ°4\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\01\0z\02\0\0\0\0OJ\0QJ\04\0˛/Úˇ±4\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\01\0z\03\0\0\0\0OJ\0QJ\08\0˛/Úˇ¡8\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\02\0z\00\0\0\0\0CJ\0OJ\0QJ\0D\0A Úˇ—D\0\0\0\0\0\0\0\0\0\0\0D\0e\0f\0a\0u\0l\0t\0 \0P\0a\0r\0a\0g\0r\0a\0p\0h\0 \0F\0o\0n\0t\0\0\0\0\0Z\0˛/Úˇ·Z\0\0\0\0\0\0\0\0\0\0!\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\01\01\0\0\0\0\0\\\0˛/ÚˇÒ\\\0\0\0\0\0\0\0\0\0\0\"\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\01\01\01\0\0\0\0\0^\0˛/Úˇ^\0\0\0\0\0\0\0\0\0\0#\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\01\01\01\01\0\0\0\0\0`\0˛/Úˇ`\0\0\0\0\0\0\0\0\0\0$\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\01\01\01\01\01\0\0\0\0\0b\0˛/Úˇ!b\0\0\0\0\0\0\0\0\0\0%\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\01\01\01\01\01\01\0\0\0\0\0d\0˛/Úˇ1d\0\0\0\0\0\0\0\0\0\0&\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\01\01\01\01\01\01\01\0\0\0\0\02\0˛/ÚˇA2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\07\0z\01\0\0\0\0OJ\0QJ\0f\0˛/ÚˇQf\0\0\0\0\0\0\0\0\0\0\'\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\01\01\01\01\01\01\01\01\0\0\0\0\02\0˛/Úˇa2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\01\0z\00\0\0\0\0OJ\0QJ\0J\0˛/ÚˇqJ\0\0\0\0\0\0\0\0\0\0\0W\0W\0-\0D\0e\0f\0a\0u\0l\0t\0 \0P\0a\0r\0a\0g\0r\0a\0p\0h\0 \0F\0o\0n\0t\0\0\0\0\06\0U`ÚˇÅ6\0\0\0\0\0\0\0\0\0	\0H\0y\0p\0e\0r\0l\0i\0n\0k\0\0\0\0>*B*ph\0\0ˇ\04\0˛/Úˇë4\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\02\0z\01\0\0\0\0OJ\0QJ\0N\0˛/Úˇ°N\0\0\0\0\0\0\0\0\0\0\0W\0W\0-\0D\0e\0f\0a\0u\0l\0t\0 \0P\0a\0r\0a\0g\0r\0a\0p\0h\0 \0F\0o\0n\0t\01\01\0\0\0\0\0F\0˛oÚˇ±F\0\0\0\0\0\0\0\0\0\0\0Q\0u\0i\0c\0k\0F\0o\0r\0m\0a\0t\02\0\0\0\0B*CJ\0OJ\0QJ\0ph\0\0\0\0\0:\0˛/Úˇ¡:\0\0\0\0\0\0\0\0\0\0\0N\0u\0m\0b\0e\0r\0i\0n\0g\0 \0S\0y\0m\0b\0o\0l\0s\0\0\0\0\08\0˛/Úˇ—8\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\05\0z\00\0\0\0\0CJ\0OJ	\0QJ	\0F\0V Úˇ·F\0\0\0\0\0\0\0\0\0\0F\0o\0l\0l\0o\0w\0e\0d\0H\0y\0p\0e\0r\0l\0i\0n\0k\0\0\0\0>*B*\rphÄ\0\0\0N\0˛\0N\0\0\0\0\0\0\0\0\0\0\0H\0e\0a\0d\0i\0n\0g\0\0\0\r\0?\0§\0§x\0$\0\0CJ\0OJ\0PJ\n\0QJ\0^J\0aJ\06\0B\0\06\0\0\0\0\0\0\0\0\0	\0B\0o\0d\0y\0 \0T\0e\0x\0t\0\0\0\n\0@\0§\0\0§x\0\0\0(\0/\0(\0\0\0\0\0\0\0\0\0\0L\0i\0s\0t\0\0\0\0A\0\0^J\0H\0\"\0\0\"H\0\0\0\0\0\0\0\0\0\0C\0a\0p\0t\0i\0o\0n\0\0\0\r\0B\0§x\0§x\0$\0\06CJ\0]^J\0aJ\0.\0˛\02.\0\0\0\0\0\0\0\0\0\0\0I\0n\0d\0e\0x\0\0\0\0C\0$\0\0^J\04\0 \0\0B4\0\0\0\0\0\0\0\0\0\0F\0o\0o\0t\0e\0r\0\0\0\r\0D\0\r∆\0‡¿!\0\0\0>\0P@\0R>\0\0\0\0\0\0\0\0\0\0\0B\0o\0d\0y\0 \0T\0e\0x\0t\0 \02\0\0\0\0E\0\0OJ\0QJ\0CJ\0~\0˛O\0b~\0\0\0\0\0\0\0\0\0\0\0_\0l\0e\0v\0n\0l\03\05\0\0\0O\0F\0\r∆,\0\0\0–†p@‡∞ÄP ¿!ê$\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ8Ñò˛*$1$\0]Ñ\0\0^Ñ8`Ñò˛\0\0PJ\n\0~\0˛O\0r~\0\0\0\0\0\0\0\0\0\0\0_\0l\0e\0v\0n\0l\09\05\0\0\0O\0G\0\r∆,\0\0\0–†p@‡∞ÄP ¿!ê$\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ®Ñò˛*$1$\0]Ñ\0\0^Ñ®`Ñò˛\0\0PJ\n\0~\0˛\0Ç~\0\0\0\0\0\0\0\0\0\0\0_\0l\0e\0v\0n\0l\01\05\0\0\0O\0H\0\r∆,\0\0\0–†p@‡∞ÄP ¿!ê$\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0ÑhÑò˛*$1$\0]Ñ\0\0^Ñh`Ñò˛\0\0PJ\n\0<\0˛\0í<\0\0\0\0\0\0\0\0\0\0\0T\0a\0b\0l\0e\0 \0C\0o\0n\0t\0e\0n\0t\0s\0\0\0\0I\0$\0\0\0L\0˛ë¢L\0\0\0\0\0\0\0\0\0\0\r\0T\0a\0b\0l\0e\0 \0H\0e\0a\0d\0i\0n\0g\0\0\0\0J\0$$a$\0\065]\\T\0C\0\0≤T\0\0\0\0\0\0\0\0\0\0B\0o\0d\0y\0 \0T\0e\0x\0t\0 \0I\0n\0d\0e\0n\0t\0\0\0\Z\0K\0Ñ\0\0Ñ–Ñ\0\0]Ñ\0\0^Ñ–`Ñ\0\0\0\08\0˛¢\0¡8\0\0\0\0òB\0\0\0\0a\0p\0p\0l\0e\0-\0s\0t\0y\0l\0e\0-\0s\0p\0a\0n\0\0\0\0\0J\0^\0\0“J\0	\0\0%s¿\00\0N\0o\0r\0m\0a\0l\0 \0(\0W\0e\0b\0)\0\0\0\0M\0§d\0§d\0*$\0[$\\$\0\0tH	B\0˛¢\0·B\0\0\0\0\0	Ù\0\0\0\0a\0p\0p\0l\0e\0-\0c\0o\0n\0v\0e\0r\0t\0e\0d\0-\0s\0p\0a\0c\0e\0\0\0\0\0PK\0\0\0\0\0!\0Çäº˙\0\0\0\0\0\0\0\0[Content_Types].xml¨ëÀj√0E˜Ö˛É–∂ÿr∫(•ÿŒ¢Iw},“‰±-jèÑ4	…ﬂwÏ∏P∫-t#bŒô{UÆè„†ìÛTÈU^hÖd}„®´Ù˚Ó)ª◊*1PÉ\'¨Ù	ì^◊◊WÂÓ0)ô¶TÈû9<ìlè#§‹$yi}ÅÂ\Z;¿~@áÊ∂(ÓåıƒHúÒƒ–u˘*D◊†zÉ»/0ä«∞†˚˘$ÄòX´«3aZ¢“¬‡,∞D0j~Ë3ﬂ∂Œb„Ì~i>ÉÿÕ3ø\\`ı?Í/Á[ÿ¨∂GÈ‚\\ƒ!˝-€Rk.ìs˛‘ªê..ó∑¥aÊø≠?\0\0ˇˇ\0PK\0\0\0\0\0!\0•÷ßÁ¿\0\0\06\0\0\0\0\0_rels/.relsÑèœj√0áÔÖΩÉ—}Q“√%v/•êC/£}\0·(h\"€Î€O«\nªÑ§Ô˜©=˛Æã˘·îÁ ö™√‚C?Àh·v=øÇ…Ö§ß%[xpÜ£{€µ_ºP—£<Õ1•H∂0ïàŸOºRÆBd—…“JE€4b$ßëq_◊òû‡6L”ıR◊7`Æè®…ˇ≥√0ÃûO¡Ø,ÂEn7îLi‰b°®/„SΩê®e™‘–µ∏˘÷˝\0\0ˇˇ\0PK\0\0\0\0\0!\0kyñÉ\0\0\0ä\0\0\0\0\0\0theme/theme/themeManager.xmlÃM\n√ @·}°wêŸ7cª(Eb≤ÀÆªˆ\0Cú\ZA«†“ü€◊Â„É7Œﬂ’õK\rY,ú\räeÕ.à∑|,ß®⁄H≈,l·«ÊÈx…¥çﬂI»sQ}#’êÖ≠µ› ÷µ+’!Ô,›^π$j=ãGWË”˜)‚EÎ+&\n8˝\0\0ˇˇ\0PK\0\0\0\0\0!\0ñµ≠‚ñ\0\0P\0\0\0\0\0theme/theme/theme1.xmlÏYOo€6øÿw toc\'v\Zuäÿ±õ-MƒnáiâñÿP¢@“I}⁄„Ä√∫aáÿmáa[Åÿ•˚4Ÿ:l–Ø∞GRí≈X^í6ÿä≠>$˘„˚ˇ©´◊Ó«!)O⁄^˝rÕC$Òy@ì∞Ì›ˆ/≠yH*úòÒÑ¥Ω)ëﬁµç˜ﬂªä◊UDbÇ`}\"◊q€ãîJ◊óñ§√X^Ê)I`nÃEåºäp)¯Ë∆liπV[]ä1M<î‡»ﬁ\Zè©O–PìÙ6r‚=Øâíz¿gb†IgÖ¡uçêSŸeb÷ˆÄO¿èÜ‰æÚ√R¡D€´ôü∑¥qu	ØgãòZ∞∂¥Æo~Ÿ∫lAp∞lxäpT0≠˜≠+[}`j◊Îı∫ΩzAœ\0∞ÔÉ¶Vñ2ÕF≠ﬁ…iñ@ˆqûv∑÷¨5\\|â˛ úÃ≠Nß”le≤X¢ds¯µ⁄jcsŸ¡ê≈7ÁçŒf∑ªÍ‡\r»‚WÁ˝+≠’Üã7†à—‰`≠⁄Ôg‘»ò≥ÌJ¯\Z¿◊j|ÜÇh(¢K≥ÛD-äµﬂ„¢\0\rdX—©iJ∆ÿá(Ó‚x$(÷:¡•;‰Àπ!ÕI_–TµΩS1£˜Í˘˜Øû?E«û?¯È¯·√„?ZBŒ™múÑÂU/ø˝Ïœ«£?û~ÛÚ—’xY∆ˇ˙√\'ø¸¸y5“g&Œã/ü¸ˆÏ…ãØ>˝˝ªGMÅGe¯ê∆D¢õ‰ÌÛ3Vq%\'#qæ√”ÚäÕ$î8¡öK˝ûäÙÕ)fôw9:ƒµ‡Â£\nx}rœxââ¢úw¢ÿÓrŒ:\\TZaGÛ*ôy8I¬jÊbR∆Ìc|X≈ªã«øΩI\nu3KGÒnD1˜NIB“s¸Äê\nÌÓRÍÿuó˙ÇK>VË.EL+M2§#\'öfã∂i~ôVÈ˛vl≥{u8´“zã∫H»\nÃ*ÑÊòÒ:û(Wë‚òï\r~´®J»¡T¯e\\O*tHGΩÄHYµÊñ\0}KNﬂ¡P±*›æÀ¶±ãäT—ºÅ9/#∑¯A7¬qZÖ–$*c?ê¢ÌqUﬂÂnÜËwN∫˚%éªOØ∑iËà4=3⁄óP™ù\n”‰Ô 1£Pèm\\\\9Ü¯‚Î«ëı∂‚Mÿì™2a˚D˘]Ñ;Ytª\\ÙÌØπ[xíÏÛ˘çÁ]…}WrΩˇ|…]îœg-¥≥⁄\neW˜\r∂)6-rº∞CS∆j »\riöd	˚D–áAΩŒúIqbJ#xÃÍ∫É6kê‡Í#™¢AÑSh∞Îû& åt(Q %ÏÃp%mçá&]ŸcaSl=êXÌÚ¿ØË·¸\\Pê1ªMhü9£M‡¨ÃVÆdDAÌ◊aV◊Bùô[›àfJù√≠P|8Ø\Z÷ÑA€V^ÖÛπf\rÃH†Ìn˜ﬁ‹-∆È\"·Äd>“zœ˚®núî«äπ	Äÿ©ë>‰ùbµ∑ñ&˚‹Œ‚§2ª∆vπ˜ﬁƒKyœº§ÛˆD:≤§úú,AGmØ’\\nz»«i€√ô„º.uœáYCæ6ÏOMfìÂ3o∂r≈‹$®√5Öµ˚ú¬NHÖT[XF64ÃT,—ú¨¸ÀM0ÎE)`#˝5§XYÉ`¯◊§\0;∫Æ%„1ÒUŸŸ•m;˚öïR>QD¢‡çÿDÏcpøU–\'†Æ&LE–/pè¶≠m¶‹‚ú%]˘ˆ ‡Ï8fiÑ≥r´S4œd7y\\»`ﬁJ‚Ånï≤ÂŒØäI˘R•∆ˇ3UÙ~7+ÅˆÄ◊∏#ùØmèq®BiD˝æÄ∆¡‘à∏ãÖi*∏L6ˇ9‘ˇmŒY\Z&≠·¿ßˆiàÖ˝HEÇê=(K&˙N!Vœˆ.KíeÑLDïƒï©{D	Í\Z∏™˜vEÍ¶öde¿‡N∆ü˚ûe–(‘MN9ﬂú\ZRÏΩ6˛ÈŒ«&3(Â÷a”–‰ˆ/D¨ÿUÌz≥<ﬂ{ÀäËâYõ’»≥òï∂ÇVñˆØ)¬9∑Z[±Ê4^nÊ¬ÅÁ5Ü¡¢!J·æÈ?∞ˇQ·3˚eBo®Cæµ¡áM¬¢˙ím<ê.êvpçì¥¡§IY”f≠ì∂ZæY_pß[=al-ŸY¸}NcÕôÀŒ…≈ã4vfa«÷vl°©¡≥\'SÜ∆˘A∆8∆|“*u‚£{‡Ë-∏ﬂü0%M0¡7%Å°ıò<Ä‰∑Õ“çø\0\0\0ˇˇ\0PK\0\0\0\0\0!\0\r—êü∂\0\0\0\0\0\'\0\0\0theme/theme/_rels/themeManager.xml.relsÑèM\n¬0Ñ˜Çwoo”∫ë&›à–≠‘Ñ‰5\r6?$QÏÌ\rÆ,.áaæôiªóù…c2ﬁ1h™\Z:Èïqö¡m∏Ïé@RNâŸ;d∞`Çéo7ÌgëK(M&$R(.1òr\'Jìú–äT˘ÄÆ8£èV‰\"£¶A»ª–H˜u}†Òõ|≈$Ωb{’\0ñPöˇ≥˝8\Zâg/]˛QAsŸÖ(¢∆Ã‡#õ™L [∫∫ƒﬂ\0\0\0ˇˇ\0PK-\0\0\0\0\0\0!\0Çäº˙\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[Content_Types].xmlPK-\0\0\0\0\0\0!\0•÷ßÁ¿\0\0\06\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0+\0\0_rels/.relsPK-\0\0\0\0\0\0!\0kyñÉ\0\0\0ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0theme/theme/themeManager.xmlPK-\0\0\0\0\0\0!\0ñµ≠‚ñ\0\0P\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0—\0\0theme/theme/theme1.xmlPK-\0\0\0\0\0\0!\0\r—êü∂\0\0\0\0\0\'\0\0\0\0\0\0\0\0\0\0\0\0\0õ	\0\0theme/theme/_rels/themeManager.xml.relsPK\0\0\0\0\0\0]\0\0ñ\n\0\0\0\0<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\r\n<a:clrMap xmlns:a=\"http://schemas.openxmlformats.org/drawingml/2006/main\" bg1=\"lt1\" tx1=\"dk1\" bg2=\"lt2\" tx2=\"dk2\" accent1=\"accent1\" accent2=\"accent2\" accent3=\"accent3\" accent4=\"accent4\" accent5=\"accent5\" accent6=\"accent6\" hlink=\"hlink\" folHlink=\"folHlink\"/>\0\0\0\0Â\Z\0\0\r\0\0V\0\0\0\0ˇˇˇˇ\0\0\0z\0\0#\n\0\0s\0\0b\0\0≤\0\0 \r\0\0ô\r\0\0˛\r\0\0Ï\0\0\0\0?\0\0Ω\0\0ä\0\0\0\0/\"\0\0Â\"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!\0\0\0\"\0\0\0$\0\0\0&\0\0\0(\0\0\0*\0\0\0\0\0\0Æ\n\0\0≤\0\0õ\0\0r\0\0!\0\0ª\0\0I\0\0ﬂ\0\0Â\"\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0 \0\0\0#\0\0\0%\0\0\0\'\0\0\0)\0\0\0©\n\0\0“\n\0\0Ì\n\0\0?\r\0\0f\r\0\0\r\0\0k\0\0ê\0\0ß\0\0j\0\0ï\0\0±\0\0Â\Z\0\0XˇåXˇåXˇÑXˇå\0\08\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0Ò\0\0\0ˇˇ\0\0\0\0ˇ\0ÄÄÄ\0˜\0\0\0\0¸\0\0\0\0\0\0\0\0\0\0\0\0\0ö\0\0\0\0(\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0b\0\0\0B\n\0\0\0\0\0\0\n\0\0c\0$\0\0\0D\0\0\0ø\0\0\0Àê$\0\0÷\0\0\0ˇ\0\0?\0\0\0\0\"Ò\0\0\0?\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0B\0\0\0\0\n\0\0\0\0\0\0\0\0S\0\0\0\0É\0\0\0\0ø\0\0À\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0Â\Z\0\0\0\0\0\0\0\0r\0\0\0É$\0\0r\0\0\0t\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¶\0\0¨\0\0Î\0\0Û\0\0ﬂ\0\0‰\0\0Ï\0\0Ú\0\0T\0\0\\\0\0¡\0\0»\0\0\0\0\n\0\0\0\0\0\0.\0\03\0\0f\0\0m\0\0U\0\0X\0\0Z\0\0_\0\0k\0\0q\0\0w\0\0}\0\0~\0\0Ö\0\0ì\0\0ö\0\0\"\0\0/\0\0Y\0\0_\0\0i\0\0t\0\0	\0\0	\0\0I\n\0\0N\n\0\0R\n\0\0Y\n\0\0^\n\0\0e\n\0\0\0\0\0\0\0\0\0\0)\0\0/\0\05\0\0;\0\0<\0\0C\0\0Q\0\0X\0\0:\r\0\0=\r\0\0å\r\0\0í\r\0\0ß\r\0\0¨\r\0\0‡\r\0\0Á\r\0\0¸\r\0\0\0\0¨\0\0π\0\0¬\0\0»\0\0”\0\0ﬁ\0\0 \0\0Õ\0\0œ\0\0‘\0\0‡\0\0Ê\0\0Ï\0\0Ú\0\0Û\0\0˙\0\0\0\0\0\0$\0\0+\0\0≈\0\0“\0\0o\0\0u\0\0K\0\0Q\0\0\0\0\0\0\0\\\0\0h\0\0¬\0\0«\0\0◊\0\0⁄\0\0‹\0\0·\0\0Ì\0\0Û\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0à\0\0è\0\0a\Z\0\0k\Z\0\0ñ\Z\0\0û\Z\0\0◊\Z\0\0‹\Z\0\0›\Z\0\0„\Z\0\0Á\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¶\0\0\0\0â\n\0\0ê\n\0\0\0\0\0\0Á\Z\0\0\03\0\03\0\03\0\0\0\0\0\0≠\0\0≠\0\0Æ\0\0Æ\0\0˙\0\0˙\0\0b\0\0i\0\0|\0\0|\0\0}\0\0}\0\0\0\0\0\07\0\07\0\0≥\0\0≥\0\0‰\Z\0\0Á\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇˇˇˇˇˇˇˇˇ\0\0\0\0\0\0\0\0ˇˇˇˇˇˇˇˇˇ\0\0\0\0\0\0\0ˇˇˇˇˇˇˇˇˇ\0\0\0\0\0Eòˇˇˇˇˇˇˇˇˇ\0\0\0\0\0\0\0ˇˇˇˇˇˇˇˇˇ\0\0\0\0\0\0\0\0ˇˇˇˇˇˇˇˇˇ\0\0\0\0\0\0\0ˇˇˇˇˇˇˇˇˇ\0\0\0\0\0\0\0ˇˇˇˇˇˇˇˇˇ\0	\0\0\0	\0\0\0ˇˇˇˇˇˇˇˇˇ\0\0[~©2Ônüˇˇˇˇˇˇˇˇˇ\0(TLﬁ‘VÖˇˇˇˇˇˇˇˇˇ\0±d”MÓp ^ˇˇˇˇˇˇˇˇˇ\05{‹i÷˛í≈ˇˇˇˇˇˇˇˇˇ\0PU≥w>pˇˇˇˇˇˇˇˇˇ\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0OJ\0QJ\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0OJ\0QJ\0\0l\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0OJ\0QJ\0\0Å\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0OJ\0QJ\0CJ\0\0†%\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0OJ\0QJ\0\0l\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0OJ\0QJ\0\0Å\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0OJ\0QJ\0CJ\0\0†%\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0OJ\0QJ\0\0l\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0OJ\0QJ\0\0Å\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0OJ\0QJ\0CJ\0\0†%\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0CJ\0OJ\0QJ\0CJ\0aJ\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ–Ñò˛∆\0–^Ñ–`Ñò˛OJ\0QJ\0\0∑\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÑhÑò˛∆\0h^Ñh`Ñò˛OJ\0QJ\0CJ\0\0∑\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ–Ñò˛∆\0–^Ñ–`Ñò˛CJ\0OJ\0QJ\0aJ\0\0∑\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÑÑò˛∆\0^Ñ`Ñò˛OJ\0QJ\0\0∑\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ–Ñò˛∆\0–^Ñ–`Ñò˛OJ\0QJ\0\0∑\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0Ñ\0\0∆\0\0\0^Ñ\0\0`Ñ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ–Ñò˛^Ñ–`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ†Ñò˛^Ñ†`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑpÑò˛^Ñp`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ@Ñò˛^Ñ@`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑÑò˛^Ñ`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ‡Ñò˛^Ñ‡`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ∞Ñò˛^Ñ∞`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑÄÑò˛^ÑÄ`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑPÑò˛^ÑP`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ–Ñò˛^Ñ–`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ÿ\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ†Ñò˛^Ñ†`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑpÑò˛^Ñp`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ@Ñò˛^Ñ@`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑÑò˛^Ñ`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ‡Ñò˛^Ñ‡`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ∞Ñò˛^Ñ∞`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑÄÑò˛^ÑÄ`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑPÑò˛^ÑP`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ8Ñò˛^Ñ8`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑÑò˛^Ñ`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñÿ	Ñò˛^Ñÿ	`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ®Ñò˛^Ñ®`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑxÑò˛^Ñx`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑHÑò˛^ÑH`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑÑò˛^Ñ`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑËÑò˛^ÑË`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ∏\ZÑò˛^Ñ∏\Z`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ–Ñò˛^Ñ–`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ†Ñò˛^Ñ†`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑpÑò˛^Ñp`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ@Ñò˛^Ñ@`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑÑò˛^Ñ`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ‡Ñò˛^Ñ‡`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0Ñ∞Ñò˛^Ñ∞`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑÄÑò˛^ÑÄ`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0ÑPÑò˛^ÑP`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ–Ñò˛^Ñ–`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ†Ñò˛^Ñ†`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÑpÑò˛^Ñp`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ@Ñò˛^Ñ@`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÑÑò˛^Ñ`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ‡Ñò˛^Ñ‡`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ∞Ñò˛^Ñ∞`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0∑\0\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÑÄÑò˛^ÑÄ`Ñò˛OJ	\0QJ	\0^J	\0o(\0áh\0\0\0\0àH\0\0\0o\0\0\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÑPÑò˛^ÑP`Ñò˛OJ\0QJ\0o(\0áh\0\0\0\0àH\0\0\0ß\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(TL\0\0\0\0\0\0\0\0\0\0\0\05{‹i\0\0\0\0\0\0\0\0\0\0\0\0±d”M\0\0\0\0\0\0\0\0\0\0\0\0PU≥w\0\0\0\0\0\0\0\0\0\0\0\0[~©\0\0\0\0\0\0\0\0\0\0\0\0ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ\0\0\0\0\0\0W\0W\08\0N\0u\0m\02\0\0W\0W\08\0N\0u\0m\03\0\0W\0W\08\0N\0u\0m\04\0\0W\0W\08\0N\0u\0m\05\0\0W\0W\08\0N\0u\0m\06\0\0W\0W\08\0N\0u\0m\07\0\0W\0W\08\0N\0u\0m\08\0\0W\0W\08\0N\0u\0m\09\0\0\0\0\0\0\0\0\0\0\0ˇˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0\0	\0	\0	\0	\0	\0	\0	\0	\0	\0\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0_∞\0\0\0\0\0\0\0\0\0\0\04H¬>\0\0\0\0\0\0\0\0\0\0\0ZC\Zj\0\0\0\0\0\0\0\0\0\0\0N\0\0\0\0\0\0\0\0Â\0\0\0\0\0\0\0M\0\0?9\0æe\0ê*\0rz\0≤)\0ü-\0¿F\0J;\0≠y\0û\0ºK\0k\0xh	\0¿v	\0„7\n\0Pe\n\0m\0Z\0X\"\0Û_\0\Zd\r\0MM\0%g\02\0µR\0*S\0Ñ7\0QH\0Ï\0¯=\0¬a\0L-\0”.\0≤3\0€)\Z\0oz\Z\0\0î\0}-\0¨=\0m\0_I\05p\0¡)\0·/\"\0ˆ7\"\0pA#\0òh#\0◊\0%\0.7&\0‹s\'\0[(\0+D)\0≥$*\0wZ*\0az*\0“+\0Y,\0/,\0ús,\0›-\0˜]-\0È$.\0ïR/\09n/\0©#0\0l0\0\Z]2\0o34\0\"!6\0Ú<6\0|U7\0ƒV7\0π9\0‡|9\0˛X:\0r;\0H;\0Ÿ5<\0xE<\0„L<\0g>\0® >\0,>\0Ò1>\0\\2>\0?\0ï?\0°?\0@l?\0%A\0òB\0HMB\0\"eB\0˙bC\0°nD\0tF\0xRF\0ÉSF\0G\0R&G\0QWH\01I\09I\0‰lI\0⁄K\0o@L\0E~M\0å?O\0ﬁaP\0rR\0H,S\0^U\0YV\0Ã=W\0~X\0™Y\0Û/Z\0ï	\\\0H\\\0â]\0Å^\0&^^\0L_\0\'|_\0¯p`\0©1a\0tc\0@d\0%e\0xf\0àf\0—/g\0%=g\0Dg\0]h\0’	h\0jh\0;i\0dj\0˝Pk\0=qk\0†~k\0+Wl\0uYl\0lgl\0˘qo\0Ãp\0\"/p\0TTq\0⁄/r\0¿Er\0t\\s\0øt\09v\0/Hv\0∆Nv\0tw\0wnw\0Ux\0∆px\0û<z\0g?z\0ØU|\0V|\0m|\0A%\0«=Ä\0BÄ\0Ñ_Ä\0ÙYÅ\0æoÅ\0(%Ç\0ÀpÇ\0¸cÑ\0ßyÑ\0QXÖ\0∑.Ü\0Ká\0ˇ(á\0;à\0|à\0\r\Zâ\0tkâ\0î[ä\0òzå\0ÿç\00Kç\0*é\0-Uè\0ö}è\0@ê\0‡Qê\0\"xë\0–ë\0∂ì\0≈)î\0ã^î\0‘lî\0¬1ñ\0U3ñ\0¨Dñ\0ã$ó\0Épô\0Ÿfö\0·pö\0Oõ\0Xõ\0qbõ\0swü\0Tzü\0@¢\0ûZ§\0Än¶\0ƒ ß\0Å}ß\0>\Z™\0]O´\0˘\\´\0P≠\0¢Æ\0\"TÆ\0JHØ\0ÚL∞\0P±\0$n≤\0Øy≤\0ÆO≥\0m≥\0ß(¥\0xµ\07∂\0]>∑\0Éi∑\0\n∏\0é-∏\0+π\0>aπ\0Riπ\0Ü\'∫\0œx∫\0Mª\0\"jª\0\'\nΩ\0F#Ω\0Mæ\0ªLø\0¶¿\0–0¿\0ø2¿\0%s¿\0\Z¬\0f¬\0Ë@¬\0BI¬\0„≈\0&≈\0Á9≈\0D≈\0Ï~≈\0ü∆\0ä_∆\0è]»\0i»\0˝=…\0âe \0gÀ\0‰~À\0=+Ã\0ˇJÃ\0≈gÕ\0ÄŒ\0P\\Œ\0è0œ\0ö~œ\0˛f“\0\rq“\0j	”\0¶H”\0d”\0£1‘\0Ç’\0˘;’\0\r#÷\0 ◊\0\"ÿ\0[Fÿ\0Õ%Ÿ\0l\Z⁄\0˙~⁄\0·@€\0≥\0‹\0¬U‹\0J6ﬂ\0Ì\\ﬂ\0¸G‡\0Ba‡\0wf·\0ﬂl·\0u\n‚\0Â‚\0-„\0ó{„\0¬@‰\0«|‰\0ÁKÂ\0\r3Ê\0¡<Á\0åË\0ÁBË\0«Í\0UÍ\0wsÍ\0BTÎ\0uÏ\0ôzÓ\0*Ô\0ËÔ\0ı`\01r\0ds\0ÔÚ\0\0	Ù\0Ñ<Ù\09\n˜\0÷˜\0˘˜\0y¯\0¨D˚\0äP˚\0Å6˝\0[\"˛\0Ï(˛\0^ˇ\0\0\0\0\0Â\Z\0\0Á\Z\0\0\0\0\0\0\0\0\0ˇ@Ä\0˙\0\0˙\0\0\0†/\0\0˙\0\0\0\0\0\0˙\0\0\0\0\0\0\0\0\0\0\0\0\0Â\Z\0\0h\0\0\0@\0\0ˇˇ\0\0\0\0U\0n\0k\0n\0o\0w\0n\0ˇˇ\0\0\0\0\0\0\0\0\0\0\0\0ˇˇ\0\0\0\0\0ˇˇ\0\0\0ˇˇ\0\0\0\0ˇˇ\0\0\0ˇˇ\0\0\0\0\0\0\0Gê\0\0ˇ*\0‡Ax\0¿	\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0T\0i\0m\0e\0s\0 \0N\0e\0w\0 \0R\0o\0m\0a\0n\0\0\05ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ä\0\0\0\0S\0y\0m\0b\0o\0l\0\0\03.ê\0\0ˇ*\0‡Cx\0¿	\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0A\0r\0i\0a\0l\0\0\07ê\0\0\ná\0\0\0\0\0\0\0\0\0\0\0\0\0ü\0\0\0\0\0\0\0S\0y\0l\0f\0a\0e\0n\0\0\09ê\0\0á\0\0\0\0\0\0\0\0\0\0\0\0\0\0ü\0\0\0\0\0\0\0G\0a\0r\0a\0m\0o\0n\0d\0\0\05.ê\0\0ˇ.\0·[`\0¿)\0\0\0\0\0\0\0ˇ\0\0\0\0\0T\0a\0h\0o\0m\0a\0\0\0;ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ä\0\0\0\0W\0i\0n\0g\0d\0i\0n\0g\0s\0\0\0?ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ä\0\0\0\0W\0i\0n\0g\0d\0i\0n\0g\0s\0 \02\0\0\0]ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0S\0t\0a\0r\0S\0y\0m\0b\0o\0l\0\0\0T\0i\0m\0e\0s\0 \0N\0e\0w\0 \0R\0o\0m\0a\0n\0\0\0?=ê\0\0	ˇ*\0‡Cx\0¿	\0\0\0\0\0\0\0ˇ\0\0\0\0\0\0C\0o\0u\0r\0i\0e\0r\0 \0N\0e\0w\0\0\0O.ê\0\0ˇ\n\0Äk9\0\0\0\0\0\0\0\0\0\0ø\0\0\0\0\0\0\0L\0u\0c\0i\0d\0a\0 \0S\0a\0n\0s\0 \0U\0n\0i\0c\0o\0d\0e\0\0\0Aê\0\0ˇ\0‡ˇ$\0B\0\0\0\0\0\0\0\0ü\0\0\0\0\0\0C\0a\0m\0b\0r\0i\0a\0 \0M\0a\0t\0h\0\0\0B\0\0Aà\0\0–\0\0h\0\0\0\0\0§gy¥ßzm™¶\0\0\0\0\0‚\0\0\0\r\0\0\0\0Éê0\0\0\0\0\0‚\0\0\0\r\0\0\00\0\0\0\0\0\0\0a\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\020\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Z\0\0ÿ\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0JÉq\0\0\0\0\0‹ˇˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0HP\0\0\0\0	ˇ\0	$P\0\0\0\0\0\0ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇdj\0\0\0\0≤\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0x\0\0\0x\0\0\0\0\0\0\0\0\0\0\0†\0\0ˇˇ\0\0\0\0\0\0\0\0R\0a\0j\0e\0s\0h\0\0\0\0\0\0\0\0R\0a\0j\0\0B\0o\0b\0b\0y\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\n\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0˛ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0‡ÖüÚ˘Oh´ë\0+\'≥Ÿ0\0\0\0h\0\0\0\0\0\0\0\0ê\0\0\0\0\0\0ò\0\0\0\0\0\0®\0\0\0\0\0\0¥\0\0\0\0\0\0¿\0\0\0\0\0\0Ã\0\0\0\0\0\0‹\0\0\0	\0\0\0Ï\0\0\0\0\0\0¯\0\0\0\n\0\0\0\0\0\0\0\0$\0\0\0\0\00\0\0\r\0\0\0<\0\0\0\0\0H\0\0\0\0\0P\0\0\0\0\0X\0\0\0\0\0`\0\0\0\0\0‰\0\0\0\0\0\0\0\0Rajesh\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Raj\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Normal\0\0\0\0\0\0\0\0Bobby\0\0\0\0\0\0\0\0\016\0\0\0\0\0\0\0\0Microsoft Office Word\0\0\0@\0\0\0\0TôJ\0\0\0@\0\0\0\0(Få‰Ó∆@\0\0\0\0Ñ\'w€ÂŒ@\0\0\0\0:$~ÁŒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0‚\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0˛ˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0’Õ’ú.ìó\0+,˘ÆD\0\0\0’Õ’ú.ìó\0+,˘Æ4\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0p\0\0\0\0\0\0|\0\0\0\0\0\0Ñ\0\0\0\0\0\0å\0\0\0\0\0\0î\0\0\0\0\0\0ú\0\0\0\0\0\0§\0\0\0\0\0\0¨\0\0\0\0\0\0¥\0\0\0\r\0\0\0º\0\0\0\0\0\0œ\0\0\0\0\0\0‰\0\0\0\0\0\0\0\0IT\0\0\0\0\00\0\0\0\0\0\0\r\0\0\0\0\0\0ÿ\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Rajesh\0\0\0\0\0\0\0\0\0\0\0\0Title\0\0\0\0\0\0\0\0\0\0Ù\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\08\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0_PID_HLINKS\0\0\0\0‰\0\0A\0\0\0¨\0\0\0\0\0\0\0\0J\0Z\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0t\0t\0p\0:\0/\0/\0w\0w\0w\0.\0m\0o\0m\0e\0t\0r\0o\0s\0a\0l\0e\0s\0.\0c\0o\0m\0/\0\0\0\0\0\0\0\0\0\0\0\0\0œ\0\0\0>\07\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0t\0t\0p\0:\0/\0/\0w\0w\0w\0.\0g\0y\0a\0p\0t\0i\0.\0c\0o\0m\0/\0\0\0\0\0\0\0\0\0\0\0\0\0œ\0\0\0]\0U\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0t\0t\0p\0:\0/\0/\0r\0v\0r\0.\0t\0h\0e\0w\0t\0o\0u\0r\0.\0c\0o\0m\0/\0\0\0\0\0\0\0\0\0\0\0\0\0œ\0\0\0&\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0t\0t\0p\0:\0/\0/\0w\0o\0r\0k\0f\0o\0r\0c\0e\0-\0b\0a\0s\0e\0.\0c\0o\0m\0/\0\0\0\0\0\0\0\0\0\0\0\0\0œ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0!\0\0\0\"\0\0\0#\0\0\0$\0\0\0%\0\0\0&\0\0\0\'\0\0\0(\0\0\0)\0\0\0*\0\0\0+\0\0\0˛ˇˇˇ-\0\0\0.\0\0\0/\0\0\00\0\0\01\0\0\02\0\0\03\0\0\0˛ˇˇˇ5\0\0\06\0\0\07\0\0\08\0\0\09\0\0\0:\0\0\0;\0\0\0<\0\0\0=\0\0\0>\0\0\0?\0\0\0@\0\0\0A\0\0\0B\0\0\0C\0\0\0D\0\0\0E\0\0\0F\0\0\0G\0\0\0H\0\0\0I\0\0\0J\0\0\0K\0\0\0L\0\0\0M\0\0\0N\0\0\0O\0\0\0P\0\0\0Q\0\0\0R\0\0\0S\0\0\0T\0\0\0U\0\0\0V\0\0\0W\0\0\0X\0\0\0Y\0\0\0Z\0\0\0[\0\0\0\\\0\0\0˛ˇˇˇ^\0\0\0_\0\0\0`\0\0\0a\0\0\0b\0\0\0c\0\0\0d\0\0\0˛ˇˇˇf\0\0\0g\0\0\0h\0\0\0i\0\0\0j\0\0\0k\0\0\0l\0\0\0˛ˇˇˇ˝ˇˇˇo\0\0\0˛ˇˇˇ˛ˇˇˇ˛ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇR\0o\0o\0t\0 \0E\0n\0t\0r\0y\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇˇˇˇˇˇˇˇ\0\0\0	\0\0\0\0\0¿\0\0\0\0\0\0F\0\0\0\0\0\0\0\0\0\0\0\0ê+˚D~ÁŒq\0\0\0Ä\0\0\0\0\0\0\0D\0a\0t\0a\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0ˇˇˇˇˇˇˇˇˇˇˇˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0,\0\0\0\0\0\0\0\0\0\01\0T\0a\0b\0l\0e\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇˇˇˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04\0\0\0ÚP\0\0\0\0\0\0W\0o\0r\0d\0D\0o\0c\0u\0m\0e\0n\0t\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0ˇˇˇˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\07V\0\0\0\0\0\0\0S\0u\0m\0m\0a\0r\0y\0I\0n\0f\0o\0r\0m\0a\0t\0i\0o\0n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(\0ˇˇˇˇˇˇˇˇˇˇˇˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0]\0\0\0\0\0\0\0\0\0\0\0D\0o\0c\0u\0m\0e\0n\0t\0S\0u\0m\0m\0a\0r\0y\0I\0n\0f\0o\0r\0m\0a\0t\0i\0o\0n\0\0\0\0\0\0\0\0\0\0\08\0\0\0\0ˇˇˇˇˇˇˇˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0e\0\0\0\0\0\0\0\0\0\0\0C\0o\0m\0p\0O\0b\0j\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇˇˇˇˇˇˇˇˇˇˇˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0y\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇˇˇˇˇˇˇˇˇˇˇˇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0˛ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ\0˛ˇ\n\0\0ˇˇˇˇ	\0\0\0\0\0¿\0\0\0\0\0\0F\'\0\0\0Microsoft Office Word 97-2003 Document\0\n\0\0\0MSWordDoc\0\0\0\0Word.Document.8\0Ù9≤q\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',740,'company_organizations',NULL,2),
(25,'jhhj','<p>Created by Codrops License: http://tympanus.net/codrops/licensing/ Background Pattern(s) from http://subtlepatterns.com/ http://creativecommons.org/licenses/by-sa/3.0/deed.en_US Images by Sherman Geronimo-Tan: http://www.flickr.com/people/smanography/ http://creativecommons.org/licenses/by/2.0/</p>',740,'company_organizations',NULL,2),
(27,'hiiii','<p>&nbsp;</p>\r\n<!-- base href=\"http://www.fieldrecruitment.co.uk/index.php/component/content/article/97-article/homepage/285-faq\" -->\r\n<p>Field Recruitement Job Portal</p>\r\n<script type=\"text/javascript\" src=\"Field%20Recruitement%20Job%20PortalFAQ_files/mootools-core.js\"></script>\r\n<script type=\"text/javascript\" src=\"Field%20Recruitement%20Job%20PortalFAQ_files/core.js\"></script>\r\n<script type=\"text/javascript\" src=\"Field%20Recruitement%20Job%20PortalFAQ_files/caption.js\"></script>\r\n<script type=\"text/javascript\" src=\"Field%20Recruitement%20Job%20PortalFAQ_files/jquery.js\"></script>\r\n<script type=\"text/javascript\" src=\"Field%20Recruitement%20Job%20PortalFAQ_files/jquery_004.js\"></script>\r\n<script type=\"text/javascript\" src=\"Field%20Recruitement%20Job%20PortalFAQ_files/responsive.js\"></script>\r\n<script type=\"text/javascript\" src=\"Field%20Recruitement%20Job%20PortalFAQ_files/accordion.js\"></script>\r\n<script type=\"text/javascript\" src=\"Field%20Recruitement%20Job%20PortalFAQ_files/lazyloader_002.js\"></script>\r\n<script type=\"text/javascript\" src=\"Field%20Recruitement%20Job%20PortalFAQ_files/lazyloader.js\"></script>\r\n<script type=\"text/javascript\" src=\"Field%20Recruitement%20Job%20PortalFAQ_files/lazyloader_003.js\"></script>\r\n<script type=\"text/javascript\" src=\"Field%20Recruitement%20Job%20PortalFAQ_files/lazyloader_004.js\"></script>\r\n<script type=\"text/javascript\" src=\"Field%20Recruitement%20Job%20PortalFAQ_files/twitter.js\"></script>\r\n<script type=\"text/javascript\" src=\"Field%20Recruitement%20Job%20PortalFAQ_files/mootools-more.js\"></script>\r\n<script type=\"text/javascript\" src=\"Field%20Recruitement%20Job%20PortalFAQ_files/md_stylechanger.js\" defer=\"defer\"></script>\r\n<script type=\"text/javascript\" src=\"Field%20Recruitement%20Job%20PortalFAQ_files/dinamods.js\"></script>\r\n<script type=\"text/javascript\">// <![CDATA[\r\nwindow.addEvent(\'load\', function() {\r\n				new JCaption(\'img.caption\');\r\n			});\r\nwindow[\"WIDGETKIT_URL\"]=\"/media/widgetkit\";\r\nfunction wk_ajax_render_url(widgetid){ return \"/index.php/component/widgetkit/?format=raw&amp;id=\"+widgetid}\r\n$widgetkit.load(\'/media/widgetkit/widgets/lightbox/js/lightbox.js\').done(function(){ \r\n					jQuery(function($){\r\n						$(\'a[data-lightbox]\').lightbox({\"titlePosition\":\"float\",\"transitionIn\":\"fade\",\"transitionOut\":\"fade\",\"overlayShow\":1,\"overlayColor\":\"#777\",\"overlayOpacity\":0.7});\r\n					});\r\n			});\r\n$widgetkit.trans.addDic({\"FROM_ADDRESS\":\"From address: \",\"GET_DIRECTIONS\":\"Get directions\",\"FILL_IN_ADDRESS\":\"Please fill in your address.\",\"ADDRESS_NOT_FOUND\":\"Sorry, address not found!\",\"LOCATION_NOT_FOUND\":\", not found!\"});\r\nif (!window[\'mejs\']) { $widgetkit.load(\'/media/widgetkit/widgets/mediaplayer/mediaelement/mediaelement-and-player.js\').done(function() { jQuery(function($){\r\n				mejs.MediaElementDefaults.pluginPath=\'/media/widgetkit/widgets/mediaplayer/mediaelement/\'; \r\n				$(\'video,audio\').each(function(){\r\n					var ele = $(this);\r\n					if (!ele.parent().hasClass(\'mejs-mediaelement\')) {\r\n						ele.data(\'mediaelement\',new mejs.MediaElementPlayer(this, {\"pluginPath\":\"\\/media\\/widgetkit\\/widgets\\/mediaplayer\\/mediaelement\\/\"}));\r\n\r\n						var w = ele.data(\'mediaelement\').width, h = ele.data(\'mediaelement\').height;\r\n\r\n						$.onMediaQuery(\'(max-width: 767px)\', {\r\n							valid: function(){\r\n								ele.data(\'mediaelement\').setPlayerSize(\'100%\', ele.is(\'video\') ? \'100%\':h);\r\n							},\r\n							invalid: function(){\r\n								var parent_width = ele.parent().width();\r\n\r\n								if (w>parent_width) {\r\n									ele.css({width:\'\',height:\'\'}).data(\'mediaelement\').setPlayerSize(\'100%\', \'100%\');\r\n								} else {\r\n									ele.css({width:\'\',height:\'\'}).data(\'mediaelement\').setPlayerSize(w, h);\r\n								}\r\n							}\r\n						});\r\n\r\n						if ($(window).width() <= 767) {\r\n							ele.data(\'mediaelement\').setPlayerSize(\'100%\', ele.is(\'video\') ? \'100%\':h);\r\n						}\r\n					}\r\n				});\r\n			}); });} else { jQuery(function($){\r\n				mejs.MediaElementDefaults.pluginPath=\'/media/widgetkit/widgets/mediaplayer/mediaelement/\'; \r\n				$(\'video,audio\').each(function(){\r\n					var ele = $(this);\r\n					if (!ele.parent().hasClass(\'mejs-mediaelement\')) {\r\n						ele.data(\'mediaelement\',new mejs.MediaElementPlayer(this, {\"pluginPath\":\"\\/media\\/widgetkit\\/widgets\\/mediaplayer\\/mediaelement\\/\"}));\r\n\r\n						var w = ele.data(\'mediaelement\').width, h = ele.data(\'mediaelement\').height;\r\n\r\n						$.onMediaQuery(\'(max-width: 767px)\', {\r\n							valid: function(){\r\n								ele.data(\'mediaelement\').setPlayerSize(\'100%\', ele.is(\'video\') ? \'100%\':h);\r\n							},\r\n							invalid: function(){\r\n								var parent_width = ele.parent().width();\r\n\r\n								if (w>parent_width) {\r\n									ele.css({width:\'\',height:\'\'}).data(\'mediaelement\').setPlayerSize(\'100%\', \'100%\');\r\n								} else {\r\n									ele.css({width:\'\',height:\'\'}).data(\'mediaelement\').setPlayerSize(w, h);\r\n								}\r\n							}\r\n						});\r\n\r\n						if ($(window).width() <= 767) {\r\n							ele.data(\'mediaelement\').setPlayerSize(\'100%\', ele.is(\'video\') ? \'100%\':h);\r\n						}\r\n					}\r\n				});\r\n			});; }\r\n$widgetkit.load(\'/media/widgetkit/widgets/spotlight/js/spotlight.js\').done(function(){jQuery(function($){ $(\'[data-spotlight]\').spotlight({\"duration\":300}); });});\r\n$widgetkit.trans.addDic({\"LESS_THAN_A_MINUTE_AGO\":\"less than a minute ago\",\"ABOUT_A_MINUTE_AGO\":\"about a minute ago\",\"X_MINUTES_AGO\":\"%s minutes ago\",\"ABOUT_AN_HOUR_AGO\":\"about an hour ago\",\"X_HOURS_AGO\":\"about %s hours ago\",\"ONE_DAY_AGO\":\"1 day ago\",\"X_DAYS_AGO\":\"%s days ago\"});\r\nfunction addLoadEvent(func){if(typeof window.addEvent==\'function\'){window.addEvent(\'load\',function(){func()});}else if(typeof window.onload!=\'function\'){window.onload=func;}else{var oldonload=window.onload;window.onload=function(){if(oldonload){oldonload();}func();}}}\r\naddLoadEvent(function(){\r\nvar Dinamods=new dinamods(\'dm_tabs_1\');\r\nDinamods.setpersist(true);\r\nDinamods.setselectedClassTarget(\'link\');\r\nDinamods.init(0,0);});\r\n  \r\n// ]]></script>\r\n<script type=\"text/javascript\">// <![CDATA[\r\nvar gaJsHost = ((\"https:\" == document.location.protocol) ? \"https://ssl.\" : \"http://www.\");\r\ndocument.write(unescape(\"%3Cscript src=\'\" + gaJsHost + \"google-analytics.com/ga.js\' type=\'text/javascript\'%3E%3C/script%3E\"));\r\n// ]]></script>\r\n<script type=\"text/javascript\" src=\"Field%20Recruitement%20Job%20PortalFAQ_files/ga.js\"></script>\r\n<script type=\"text/javascript\">// <![CDATA[\r\ntry {\r\nvar pageTracker = _gat._getTracker(\"UA-10690452-1\");\r\npageTracker._trackPageview();\r\n} catch(err) {}\r\n// ]]></script>\r\n<!-- BEGIN A1WebStats Activation Code -->\r\n<script type=\"text/javascript\" src=\"Field%20Recruitement%20Job%20PortalFAQ_files/pt.js\"></script>\r\n<script type=\"text/javascript\">// <![CDATA[\r\n  var ptAccount = \"0BAF8A7D-DCF8-47E8-918A-C597B32B60A8\";\r\n\r\n  try { ptInit(ptAccount); } catch (err) { }    \r\n// ]]></script>\r\n<script type=\"text/javascript\" language=\"JavaScript\">// <![CDATA[\r\nptJS = \"1\"\r\n// ]]></script>\r\n<script type=\"text/javascript\" language=\"JavaScript1.1\">// <![CDATA[\r\nptJS = \"1.1\"\r\n// ]]></script>\r\n<script type=\"text/javascript\" language=\"JavaScript1.2\">// <![CDATA[\r\nptJS = \"1.2\"\r\n// ]]></script>\r\n<script type=\"text/javascript\" language=\"JavaScript1.3\">// <![CDATA[\r\nptJS = \"1.3\"\r\n// ]]></script>\r\n<script type=\"text/javascript\" language=\"JavaScript1.4\">// <![CDATA[\r\nptJS = \"1.4\"\r\n// ]]></script>\r\n<script type=\"text/javascript\" language=\"JavaScript1.5\">// <![CDATA[\r\nptJS = \"1.5\"\r\n// ]]></script>\r\n<script type=\"text/javascript\" language=\"JavaScript1.6\">// <![CDATA[\r\nptJS = \"1.6\"\r\n// ]]></script>\r\n<script type=\"text/javascript\" language=\"JavaScript2.0\">// <![CDATA[\r\nptJS = \"2.0\"\r\n// ]]></script>\r\n<div style=\"visibility: visible; z-index: 1000;\"><a href=\"http://www.a1webstats.com/\" target=\"_new\"><img src=\"Field%20Recruitement%20Job%20PortalFAQ_files/stat.txt\" alt=\"\" width=\"1\" height=\"1\" border=\"0\" /></a></div>\r\n<noscript><a href=\"http://www.a1webstats.com/\"><img width=\"1\" height=\"1\" src=\"//www.a1webstats.com/stats/stat-nojs.aspx?ac=0BAF8A7D-DCF8-47E8-918A-C597B32B60A8\" alt=\"google analytics alternative\" /></a></noscript><!-- END A1WebStats Activation Code -->\r\n<script type=\"text/javascript\" src=\"Field%20Recruitement%20Job%20PortalFAQ_files/hide.js\"></script>\r\n<script type=\"text/javascript\" src=\"Field%20Recruitement%20Job%20PortalFAQ_files/jquery_005.js\"></script>\r\n<script type=\"text/javascript\" src=\"Field%20Recruitement%20Job%20PortalFAQ_files/jquery-latest.js\"></script>\r\n<script type=\"text/javascript\" src=\"Field%20Recruitement%20Job%20PortalFAQ_files/jquery_003.js\"></script>\r\n<script type=\"text/javascript\" src=\"Field%20Recruitement%20Job%20PortalFAQ_files/jquery_002.js\"></script>\r\n<script type=\"text/javascript\">// <![CDATA[\r\n            // Wait until the DOM has loaded before querying the document\r\n            $(document).ready(function(){\r\n                $(\'ul.tabs\').each(function(){\r\n                    // For each set of tabs, we want to keep track of\r\n                    // which tab is active and it\'s associated content\r\n                    var $active, $content, $links = $(this).find(\'a\');\r\n\r\n                    // If the location.hash matches one of the links, use that as the active tab.\r\n                    // If no match is found, use the first link as the initial active tab.\r\n                    $active = $($links.filter(\'[href=\"\'+location.hash+\'\"]\')[0] || $links[0]);\r\n                    $active.addClass(\'active\');\r\n                    $content = $($active.attr(\'href\'));\r\n\r\n                    // Hide the remaining content\r\n                    $links.not($active).each(function () {\r\n                        $($(this).attr(\'href\')).hide();\r\n                    });\r\n\r\n                    // Bind the click event handler\r\n                    $(this).on(\'click\', \'a\', function(e){\r\n                        // Make the old tab inactive.\r\n                        $active.removeClass(\'active\');\r\n                        $content.hide();\r\n\r\n                        // Update the variables with the new link and content\r\n                        $active = $(this);\r\n                        $content = $($(this).attr(\'href\'));\r\n\r\n                        // Make the tab active.\r\n                        $active.addClass(\'active\');\r\n                        $content.show();\r\n\r\n                        // Prevent the anchor\'s default click action\r\n                        e.preventDefault();\r\n                    });\r\n                });\r\n                            });\r\n        \r\n// ]]></script>\r\n<div id=\"bluetop\">&nbsp;</div>\r\n<div id=\"mid\">\r\n<div id=\"logopart\">\r\n<div id=\"emailcontact\">\r\n<div class=\"custom\">\r\n<div id=\"emailcontact\">\r\n<div class=\"contactno\">\r\n<div class=\"contactno\">01793 640204</div>\r\n</div>\r\n<div class=\"emailid\">Email Us :\r\n<script type=\"text/javascript\">// <![CDATA[\r\n var prefix = \'&#109;a\' + \'i&#108;\' + \'&#116;o\';\r\n var path = \'hr\' + \'ef\' + \'=\';\r\n var addy32762 = \'&#101;nq&#117;&#105;r&#105;&#101;s\' + \'&#64;\';\r\n addy32762 = addy32762 + \'f&#105;&#101;ldr&#101;cr&#117;&#105;tm&#101;nt\' + \'&#46;\' + \'c&#111;\' + \'&#46;\' + \'&#117;k\';\r\n var addy_text32762 = \'&#101;nq&#117;&#105;r&#105;&#101;s\' + \'&#64;\' + \'f&#105;&#101;ldr&#101;cr&#117;&#105;tm&#101;nt\' + \'&#46;\' + \'c&#111;\' + \'&#46;\' + \'&#117;k\';\r\n document.write(\'<a \' + path + \'\\\'\' + prefix + \':\' + addy32762 + \'\\\'>\');\r\n document.write(addy_text32762);\r\n document.write(\'<\\/a>\');\r\n //-->\\n \r\n// ]]></script>\r\n<a href=\"mailto:enquiries@fieldrecruitment.co.uk\">enquiries@fieldrecruitment.co.uk</a>\r\n<script type=\"text/javascript\">// <![CDATA[\r\n document.write(\'<span style=\\\'display: none;\\\'>\');\r\n// ]]></script>\r\n<span style=\"display: none;\">This email address is being protected from spambots. You need JavaScript enabled to view it.\r\n<script type=\"text/javascript\">// <![CDATA[\r\n document.write(\'</\');\r\n document.write(\'span>\');\r\n// ]]></script>\r\n</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"mainnavvv\">\r\n<div id=\"menutop\">\r\n<ul class=\"menu\">\r\n<li class=\"item-506\"><a href=\"http://www.fieldrecruitment.co.uk/\"><img src=\"Field%20Recruitement%20Job%20PortalFAQ_files/main0.jpg\" alt=\"Main\" /></a></li>\r\n<li class=\"item-507\"><a href=\"http://www.fieldrecruitment.co.uk/index.php/employers\"><img src=\"Field%20Recruitement%20Job%20PortalFAQ_files/employe1.jpg\" alt=\"Employers\" /></a></li>\r\n<li class=\"item-508\"><a href=\"http://www.fieldrecruitment.co.uk/index.php/candidates\"><img src=\"Field%20Recruitement%20Job%20PortalFAQ_files/candidate1.jpg\" alt=\"candidates\" /></a></li>\r\n<li class=\"item-509\"><a href=\"http://www.fieldrecruitment.co.uk/jobs/\"><img src=\"Field%20Recruitement%20Job%20PortalFAQ_files/jobs1.jpg\" alt=\"jobs\" /></a></li>\r\n</ul>\r\n</div>\r\n<div id=\"navigation-bar\">\r\n<div id=\"navnew\">\r\n<ul class=\"menu\">\r\n<li class=\"item-435 current\"><a href=\"http://www.fieldrecruitment.co.uk/\"><img src=\"Field%20Recruitement%20Job%20PortalFAQ_files/homeicon.png\" alt=\"Home\" /><span class=\"image-title\">Home</span> </a></li>\r\n<li class=\"item-476\"><a href=\"http://www.fieldrecruitment.co.uk/index.php/about-us\">About Us</a></li>\r\n<li class=\"item-510\"><a href=\"http://www.fieldrecruitment.co.uk/index.php/employers/297-corporate-recruitment-services\">corporate services</a></li>\r\n<li class=\"item-479\"><a href=\"http://www.fieldrecruitment.co.uk/index.php/job-posting/123-free-job-post\">Job Posting</a></li>\r\n<li class=\"item-511\"><a href=\"http://www.fieldrecruitment.co.uk/index.php/component/content/article/97-article/homepage/285-faq\">faq</a></li>\r\n<li class=\"item-480\"><a href=\"http://www.fieldrecruitment.co.uk/index.php/contact-with-field-recruitement\">Contact Us</a></li>\r\n</ul>\r\n</div>\r\n<div id=\"registernow\">&nbsp;</div>\r\n</div>\r\n<div id=\"navright\">&nbsp;</div>\r\n</div>\r\n<div id=\"frame\">&nbsp;</div>\r\n<div id=\"midgap\">&nbsp;</div>\r\n<div style=\"clear: both;\">&nbsp;</div>\r\n<div id=\"mainmid\">\r\n<div id=\"midleft\">\r\n<div id=\"midimglinkss\">\r\n<div class=\"item-page\">\r\n<div><span> <a href=\"http://www.fieldrecruitment.co.uk/\" rel=\"v:url\"> home </a> &rsaquo; </span><span><a rel=\"v:url\">faqs</a></span></div>\r\n<p><strong>&nbsp;</strong></p>\r\n<h3>Frequently Asked Questions (FAQs)</h3>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong style=\"line-height: 1.3em;\">What information do I need to provide to register for temporary work?</strong></p>\r\n<p><strong>Current CV:</strong> Detailing a minimum 5 years history (months and years are acceptable) with no gaps.</p>\r\n<p><strong>Identification:</strong> A valid UK passport, Visa or EU identification. If this is not available then you will need to provide a birth certificate along with your NI number and alternative photographic ID (driving license &amp; counterpart for example).</p>\r\n<p><strong>NI Details:</strong> We will need proof of your NI number. This can be your NI card, payslip, P45, P46. (The date of this document is not relevant).</p>\r\n<p><strong>Proof of Address:</strong> To register for certain vacancies you will need to provide proof of address for a credit check. This can be a bank statement, utility bill, Council tax bill or TV license etc. The document needs to be dated in the last 2 months to be accepted.</p>\r\n<p><strong> <br />If I have had CCJ&rsquo;s, been declared bankrupt or missed payments on my mortgage, loans or credit cards can I still apply for temporary work? </strong></p>\r\n<p>For certain vacancies we need to perform a credit check due to the nature of our clients business. Unfortunately, if you have had any of the above will you fail the credit check and therefore not eligible to work for that particular client. We do work with many organisations and would work with you to try and place you elsewhere.</p>\r\n<p><strong><br />How can I be assured of confidentiality and know that my CV will not be sent out without my permission?</strong></p>\r\n<p>We are full corporate members of the Recruitment and Employment Confederation and fully comply with the REC Code of Good Recruitment Practice giving you assurance that you&rsquo;re CV and information is dealt with in the correct manner. We will always contact you first before sending your CV to a client.</p>\r\n<p><strong><br />You have thousands of jobs on your website, are you a job board or a recruitment agency? </strong></p>\r\n<p>Were both! Traditionally we are a high street recruitment agency that has decided to offer something more. We have decided to combine the benefits of agency recruitment with an online service: We can now offer you everything from FREE vacancy posting to a full managed service encompassing skills testing and background checks. <br /><br /><strong>What industry sectors do you recruit for? </strong></p>\r\n<p>As an agency we recruit very heavily into the Commercial, Industrial and Engineering sectors covering all types of vacancies from Administration and Sales to Production and Senior engineers. Check out our industry sectors page under the Employer section of the site for more information.</p>\r\n<p><br /><strong>Do you offer additional services on top of the FREE job posting service?</strong><br />We certainly do, we are able to offer additional services such as Skills testing and candidate background checking &amp; referencing. You can add these individual services as and when or we can manage the whole process for you with all services included. Check out the Corporate Services and Employer section of the website for more information.</p>\r\n<p><strong><br />What is Pre-employment Skills testing? </strong></p>\r\n<p>A Pre-employment skills test can be an invaluable tool to assess the personality and knowledge of an applicant and explore how they meet the basic requirements of your vacancies.</p>\r\n</div>\r\n</div>\r\n<div id=\"custombottom\">&nbsp;</div>\r\n</div>\r\n<div id=\"midright\">\r\n<div id=\"right-login\">\r\n<div class=\"moduletable\">\r\n<div id=\"dm_tabs_1\">\r\n<ul class=\"dm_menu_1\">\r\n<li class=\"dm_menu_item_1 employer-login\"><a class=\"dm_selected\" href=\"#\" rel=\"dm_tab_1_1\">Employer Login</a></li>\r\n<li class=\"dm_menu_item_1 candidate-login\"><a href=\"#\" rel=\"dm_tab_1_2\">Candidate Login</a></li>\r\n</ul>\r\n</div>\r\n<br style=\"clear: left;\" />\r\n<div id=\"dm_container_1\">\r\n<div id=\"dm_tab_1_1\" class=\"dm_tabcontent\" style=\"display: block;\">\r\n<div class=\"application_login \" style=\"overflow: hidden !important;\"><form id=\"login\" action=\"/jobs/login.php\" method=\"post\" accept-charset=\"UTF-8\"><fieldset>\r\n<div class=\"user-name\"><label for=\"account_username\"><strong>User Name:</strong></label> <input id=\"account_username\" type=\"text\" name=\"account_username\" maxlength=\"50\" /></div>\r\n<div class=\"password\"><label for=\"account_password\"><strong>Password:</strong></label> <input id=\"account_password\" type=\"password\" name=\"account_password\" maxlength=\"50\" /></div>\r\n<div class=\"pass\">&nbsp;</div>\r\n<div class=\"submit-btn-div\">\r\n<div class=\"forgot-pass\"><a href=\"http://www.fieldrecruitment.co.uk/jobs/forgot_password.php\">Forgot Password?</a></div>\r\n<div class=\"submit-btn\"><input type=\"submit\" name=\"Submit\" value=\"Login\" /></div>\r\n</div>\r\n<div class=\"login-text\"><span class=\"login-text-span1\">Not Registered</span> Signing up is easy</div>\r\n<div style=\"clear: both;\">&nbsp;</div>\r\n<div class=\"register-now\"><a href=\"http://www.fieldrecruitment.co.uk/jobs/employer_registration.php\">Register Now</a></div>\r\n</fieldset></form></div>\r\n</div>\r\n<div id=\"dm_tab_1_2\" class=\"dm_tabcontent\">\r\n<div class=\"application_login \" style=\"overflow: hidden !important;\"><form id=\"login\" action=\"/jobs/login.php\" method=\"post\" accept-charset=\"UTF-8\"><fieldset>\r\n<div class=\"user-name\"><label for=\"account_username\"><strong>User Name:</strong></label> <input id=\"account_username\" type=\"text\" name=\"account_username\" maxlength=\"50\" /></div>\r\n<div class=\"password\"><label for=\"account_password\"><strong>Password:</strong></label> <input id=\"account_password\" type=\"password\" name=\"account_password\" maxlength=\"50\" /></div>\r\n<div class=\"pass\">&nbsp;</div>\r\n<div class=\"submit-btn-div\">\r\n<div class=\"forgot-pass\"><a href=\"http://www.fieldrecruitment.co.uk/jobs/forgot_password.php\">Forgot Password?</a></div>\r\n<div class=\"submit-btn\"><input type=\"submit\" name=\"Submit\" value=\"Login\" /></div>\r\n</div>\r\n<div class=\"login-text\"><span class=\"login-text-span1\">Not Registered</span> Signing up is easy</div>\r\n<div style=\"clear: both;\">&nbsp;</div>\r\n<div class=\"register-now\"><a href=\"http://www.fieldrecruitment.co.uk/jobs/candidate_registration.php\">Register Now</a></div>\r\n</fieldset></form></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"custom\">\r\n<p><a href=\"http://www.fieldrecruitment.co.uk/index.php/job-posting/123-free-job-post\"><img title=\"Recruiting - source all your candidates for free using our job posting service\" src=\"Field%20Recruitement%20Job%20PortalFAQ_files/recruiting.png\" alt=\"Free Candidate Recruiting and Job Posting\" width=\"256\" height=\"177\" /></a></p>\r\n<div class=\"midddrightgap\">&nbsp;</div>\r\n</div>\r\n<div class=\"custom\">\r\n<p><a href=\"http://www.fieldrecruitment.co.uk/jobs/\"><img title=\"Browse and search our job board containing current UK job openings\" src=\"Field%20Recruitement%20Job%20PortalFAQ_files/job_vacancies.png\" alt=\"Search job vacancies\" width=\"256\" height=\"177\" /></a></p>\r\n<div class=\"midddrightgap\">&nbsp;</div>\r\n</div>\r\n<div class=\"custom\">\r\n<p><a href=\"http://www.fieldrecruitment.co.uk/index.php/candidates\"><img title=\"help and advice for candidates looking for work and those temping for Field Recdruitment\" src=\"Field%20Recruitement%20Job%20PortalFAQ_files/candidate_help.png\" alt=\"help and advise for candidates\" width=\"256\" height=\"177\" /></a></p>\r\n<div class=\"midddrightgap\">&nbsp;</div>\r\n</div>\r\n<div class=\"custom\">\r\n<p><img src=\"Field%20Recruitement%20Job%20PortalFAQ_files/FILED-HOME_12.jpg\" alt=\"FILED-HOME 12\" width=\"265\" height=\"115\" /></p>\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"bottomgap\">&nbsp;</div>\r\n<div style=\"clear: both;\">&nbsp;</div>\r\n<div id=\"bottombg\">\r\n<div id=\"bottompart\">\r\n<div class=\"custom\">\r\n<div id=\"bottompart1\">\r\n<div class=\"listss\"><strong>JOB SEEKERS</strong>\r\n<div class=\"line\">&nbsp;</div>\r\n<ul class=\"bottomlist\">\r\n<li><a title=\"Jobs by Sector\" href=\"http://www.fieldrecruitment.co.uk/jobs/\">Jobs By Sector</a></li>\r\n<li><a title=\"Jobs by Location\" href=\"http://www.fieldrecruitment.co.uk/jobs/index.php?tab=LocationTab\">Jobs By Location</a></li>\r\n<li><a title=\"Jobs by Employer\" href=\"http://www.fieldrecruitment.co.uk/jobs/recruiters.php\">Jobs By Employer</a></li>\r\n<li><a title=\"Help &amp; Advice on Job Hunting\" href=\"http://www.fieldrecruitment.co.uk/index.php/job-posting/214-job-hunting-help\">Job Hunting Help</a></li>\r\n<li><a title=\"Career Advice and Help\" href=\"http://www.fieldrecruitment.co.uk/index.php/job-posting/110-career-advice\">Career Advice</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"listss\"><strong>SERVICES</strong>\r\n<ul class=\"bottomlist\">\r\n<li><a title=\"Free candidate soucing with Field\'s on-line job posting service\" href=\"http://www.fieldrecruitment.co.uk/index.php/job-posting/123-free-job-post\">Job Posting</a></li>\r\n<li><a title=\"Search all current job vacancies\" href=\"http://www.fieldrecruitment.co.uk/jobs/index.php?tab=SearchTab\">Job Search</a></li>\r\n<li><a title=\"Executive Jobs and Help\" href=\"http://www.fieldrecruitment.co.uk/jobs/index.php?pageType=search&amp;job_salary_range_min=50000\">Executive Jobs</a></li>\r\n<li><a href=\"http://www.fieldrecruitment.co.uk/index.php/employers/136-specialist-sectors\">Specialist Sectors</a></li>\r\n<li><a title=\"Candidate Skills Testing\" href=\"http://www.fieldrecruitment.co.uk/index.php/job-posting/151-testing-training\">Candidate Skills Testing</a></li>\r\n<li><a title=\"Background Screening\" href=\"http://www.fieldrecruitment.co.uk/index.php/job-posting/108-screening\">Background Screening</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"listss\"><strong>QUICK LINKS</strong>\r\n<ul class=\"bottomlist\">\r\n<li><a title=\"Swindon Jobs\" href=\"http://www.fieldrecruitment.co.uk/\">Home<br /></a></li>\r\n<li><a title=\"View our latest UK job vacancies\" href=\"http://www.fieldrecruitment.co.uk/jobs/\">Job Vacancies</a></li>\r\n<li><a title=\"Corporate Recruitment Services\" href=\"http://www.fieldrecruitment.co.uk/index.php/employers\">Corporate Recruitment</a></li>\r\n<li><a title=\"Candidate Recruitment Services\" href=\"http://www.fieldrecruitment.co.uk/index.php/candidates\"> Candidate Recruitment</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"custom\">\r\n<div id=\"bottompart2\">\r\n<div class=\"smobg\" style=\"text-align: justify;\"><a title=\"Connect with us on LinkedIn\" href=\"http://www.linkedin.com/company/2268728\" target=\"_blank\"><img src=\"Field%20Recruitement%20Job%20PortalFAQ_files/in.jpg\" alt=\"LinkedIn\" width=\"25\" height=\"25\" /></a>&nbsp;<a href=\"http://www.fieldrecruitment.co.uk/jobs/rss.php\"><img src=\"Field%20Recruitement%20Job%20PortalFAQ_files/r.jpg\" alt=\"r\" width=\"25\" height=\"25\" /></a>&nbsp;<a title=\"Follow us on Twitter\" href=\"http://twitter.com/FieldRecJobs\" target=\"_blank\"><img src=\"Field%20Recruitement%20Job%20PortalFAQ_files/t.jpg\" alt=\"Twitter\" width=\"25\" height=\"25\" /></a>&nbsp;<a title=\"Follow us on Facebook\" href=\"https://www.facebook.com/FieldRecruitment\" target=\"_blank\"><img src=\"Field%20Recruitement%20Job%20PortalFAQ_files/f.jpg\" alt=\"Facebook\" width=\"25\" height=\"25\" /></a>&nbsp;<a title=\"Follow us on Google Plus\" href=\"https://plus.google.com/107791755709809379429\" target=\"_blank\"><img src=\"Field%20Recruitement%20Job%20PortalFAQ_files/gplus.png\" alt=\"Google+\" width=\"25\" height=\"25\" /></a></div>\r\n<div class=\"smogap\">&nbsp;</div>\r\n<div class=\"addbg\">14 Commercial Road, Swindon, <br />Wiltshire,&nbsp;SN1 5NF, United Kingdom<br /> Tel: 01793 640204<br /> Fax: 01793 512847</div>\r\n<div class=\"smogap\">&nbsp;</div>\r\n<div class=\"pleasecall\"><a href=\"http://www.fieldrecruitment.co.uk/index.php?option=com_content&amp;view=article&amp;id=290\"><img title=\"Request a call back from Field Recruitment\" src=\"Field%20Recruitement%20Job%20PortalFAQ_files/call_back.jpg\" alt=\"call back\" width=\"287\" height=\"58\" /></a></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"bottompartcopyright\">\r\n<div class=\"custom\">\r\n<div class=\"section1\">Copyright 2013, <span style=\"color: #ffffff;\"><a style=\"text-decoration: none;\" href=\"https://plus.google.com/107791755709809379429?rel=author\"><span style=\"color: #ffffff;\">Field Recruitment Limited</span> </a> </span> (Registered as a UK company no. 564 5374)</div>\r\n<div class=\"section2\"><a href=\"http://www.fieldrecruitment.co.uk/index.php/component/content/article/97-article/homepage/98-terms-and-conditions\" rel=\"nofollow\">Terms and Conditions</a><a href=\"http://www.fieldrecruitment.co.uk/index.php/component/content/article/97-article/homepage/97-privacy-policy\" rel=\"nofollow\">Privacy</a><a href=\"http://www.fieldrecruitment.co.uk/index.php/component/content/article/97-article/homepage/95-cookie-policy\" rel=\"nofollow\">Cookies</a><a href=\"http://www.fieldrecruitment.co.uk/index.php/component/content/article/97-article/homepage/96-equal-opportunities\" rel=\"nofollow\">Equal Opportunity</a><a href=\"http://www.fieldrecruitment.co.uk/index.php/sitemap\">Sitemap</a><a href=\"http://www.fieldrecruitment.co.uk/jobs/xml_sitemap.php\">XML </a><img src=\"http://dugun.com/images/couple/2/29/v1-wp1343652771.jpg\" alt=\"\" width=\"300\" height=\"220\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div style=\"clear: both;\">&nbsp;</div>\r\n</div>\r\n<div id=\"lightbox-tmp\">&nbsp;</div>\r\n<div id=\"lightbox-loading\">&nbsp;</div>\r\n<div id=\"lightbox-overlay\" style=\"display: none;\">&nbsp;</div>',773,'local_business',NULL,340),
(28,'jiiii','kjhkjhkj',773,'local_business',NULL,340);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `text_banner_ad` */

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
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert into `user` values 
(1,'Mybuy4u_Manager','2009-05-11 22:22:53','2009-05-11 22:22:19','Manager, Dehradun, Uttarakhand','Mybuy4u_Manager','Dehradun','manager_dehradun@soarlogic.com','94a4fc548e024f1365c9f68d49c93134ff13cb5a','01352669570','09759349200','#156',5,103,1,'7e59d6fc-f6a2-4f28-9ff0-73425b77f704',0,NULL),
(32,'salman','2014-01-03 10:15:41','2014-01-03 10:15:41',NULL,'vicky','singh','vikas.singh@soarlogic.com','7c222fb2927d828af22f592134e8932480637c0d',NULL,'',NULL,1,3253,1,'52C6407537B7E1.00275814',1,NULL);

/*Table structure for table `user_image` */

DROP TABLE IF EXISTS `user_image`;

CREATE TABLE `user_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `USER_ID` bigint(10) NOT NULL,
  `IMAGE_PATH` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_USER_IMAGE_USER_ID` (`USER_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `user_image` */

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `vehicle` */

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `vehicle_accessory` */

insert into `vehicle_accessory` values 
(1,'tyuiui','hghjgj','',26565,'INR','dgfhgfhjghjg 1234567890 ,./;\'[]\\?\"{}|@#$%&','2013-08-08 13:51:34','2013-08-08 13:51:34',19),
(2,'oopkljl','pouuyu','',2365898,'INR','qwertyuiop1234567890,./;\'[]\\','2013-08-08 13:52:09','2013-08-08 13:52:09',19),
(3,'bhgh','qwe','',4568,'INR','asdfghjkl;\'//.,[]\\21234567890','2013-08-08 13:52:44','2013-08-08 13:52:44',19),
(4,'tyuu','dgfg','',2315,'INR','yuighjgbhnvbbv 1234567890 @#$%&','2013-08-08 13:53:23','2013-08-08 13:53:23',19),
(5,'yuyiu','qwee','',8956,'INR','qwertyuiop[]\\\';/.,mnbvcx1234567890','2013-08-08 13:54:11','2013-08-08 13:54:11',19),
(6,'etryty','cgfgh','',2365,'INR','adgffhjgkj;;l\'[]\\/.,1234567890','2013-08-08 13:55:07','2013-08-08 13:55:07',19),
(7,'bhuuytr','cbvn','',256,'INR','rdfhgkjlk1234567890','2013-08-08 13:55:53','2013-08-08 13:55:53',19),
(8,'dfgh','ghjgb','',235,'INR','1234567890]\\[\'/;.,','2013-08-08 13:56:37','2013-08-08 13:56:37',19);

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `vehicle_accessory_image` */

insert into `vehicle_accessory_image` values 
(1,'etfhgvhnvb','/usr/local/userPhotos/VEHICLE_ACCESSORY/1/Car_Mats.jpg','/usr/local/userPhotos/Big/VEHICLE_ACCESSORY/1/Car_Mats.jpg',1),
(2,'fhgfjyg','/usr/local/userPhotos/VEHICLE_ACCESSORY/2/Car_Side_Lights.jpg','/usr/local/userPhotos/Big/VEHICLE_ACCESSORY/2/Car_Side_Lights.jpg',2),
(3,'asdfgh','/usr/local/userPhotos/VEHICLE_ACCESSORY/3/Car_Side_Mirror.jpg','/usr/local/userPhotos/Big/VEHICLE_ACCESSORY/3/Car_Side_Mirror.jpg',3),
(4,'ewredrtf','/usr/local/userPhotos/VEHICLE_ACCESSORY/4/Car_tyres.jpg','/usr/local/userPhotos/Big/VEHICLE_ACCESSORY/4/Car_tyres.jpg',4),
(5,'vhn67/\';','/usr/local/userPhotos/VEHICLE_ACCESSORY/5/Cars_Rims.jpg','/usr/local/userPhotos/Big/VEHICLE_ACCESSORY/5/Cars_Rims.jpg',5),
(6,'erttyyug','/usr/local/userPhotos/VEHICLE_ACCESSORY/6/Car-Cover.jpg','/usr/local/userPhotos/Big/VEHICLE_ACCESSORY/6/Car-Cover.jpg',6),
(7,'rtyyj','/usr/local/userPhotos/VEHICLE_ACCESSORY/7/seat-covers.jpg','/usr/local/userPhotos/Big/VEHICLE_ACCESSORY/7/seat-covers.jpg',7),
(8,'wrtetfgf','/usr/local/userPhotos/VEHICLE_ACCESSORY/8/Seat_Belt.jpg','/usr/local/userPhotos/Big/VEHICLE_ACCESSORY/8/Seat_Belt.jpg',8);

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `vehicle_image` */
