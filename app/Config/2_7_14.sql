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
) ENGINE=MyISAM AUTO_INCREMENT=3288 DEFAULT CHARSET=latin1;

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
(2371,'8',NULL,'dytghb',NULL,NULL,NULL),
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
(3218,'56','dehradun road','saharanpur','248001','98','26'),
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
(3255,'','Tilak Marg','Rohini East','110011','98',''),
(3256,'8','Shimla Bypass','ISBT','248001','98','27'),
(3257,'6','tilak road','bindaal pull','248001','98','27'),
(3266,'8','Rishikesh Road','Joligrant','248140','98','27'),
(3259,'8','Haridwar Road','Jogiwala','248001','98','27'),
(3267,'8','NH72','Jogiwala','248140',NULL,'27'),
(3270,'8','Haridwar Road','Dehradun','248001','98','27'),
(3272,'8','Khaao Gali','Vasant Vihar','248140',NULL,'27'),
(3273,'8','Tilak Marg','Rohini East','110011','98','27'),
(3274,'8','banglo road','Rani pur','546789',NULL,'27'),
(3275,'8','NH72','Dehradun','248140',NULL,'27'),
(3276,'8','NH72','dalanwala','123456',NULL,'27'),
(3286,'8','tilak marg','bindal pul','248140','98','27'),
(3287,'8','Tilak Marg','Rohini East','110011','98','27');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `apartment` */

insert into `apartment` values
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `apartment_address` */

insert into `apartment_address` values
(1,'Haridwar Road','GTA FOREST HILL','248001','98',NULL,NULL,2);

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `apartment_image` */

insert into `apartment_image` values
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
  `BUSINESS_TYPE` varchar(20) DEFAULT NULL,
  `TOTAL_PRICE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `banner_ad_image_detail` */

insert into `banner_ad_image_detail` values
(2,5,100,'2014-01-01','2014-01-29',323,'LocalBusiness',145),
(3,5,100,'2014-01-10','2014-01-31',323,'LocalBusiness',110),
(4,5,100,'2014-01-07','2014-01-30',323,'LocalBusiness',120);

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
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `banner_ad_text` */

insert into `banner_ad_text` values
(1,'<p>ASDFGHJKdhfjhfdkjadhfjkhadkjfhaskjdfhkjada</p>','2013-12-15','2014-01-17',5,100,170,19,326,'LocalBusiness'),
(2,'<p>skdlsjdl;kJ</p>','2013-12-06','2013-12-06',5,NULL,5,19,326,'LocalBusiness'),
(3,'<p>KJLKJKLKJ</p>','2013-12-06','2013-12-21',5,100,80,19,326,'LocalBusiness'),
(4,'<p>ghgjhgjhghjgjhjgjhgjh</p>','2013-12-07','2013-12-12',5,100,30,19,326,'LocalBusiness'),
(5,'<p>hjhkjhkjhkjhjhk</p>','2013-12-07','2013-12-13',5,100,35,19,326,'LocalBusiness'),
(6,'',NULL,NULL,5,100,NULL,19,326,'LocalBusiness'),
(7,'',NULL,NULL,5,100,NULL,19,326,'LocalBusiness'),
(8,'',NULL,NULL,5,100,NULL,19,326,'LocalBusiness'),
(9,'kkkkkkkkk','2013-12-12','2013-12-20',5,100,45,19,326,'LocalBusiness'),
(10,'kkkkkkkkk','2013-12-12','2013-12-20',5,100,45,19,326,'LocalBusiness'),
(11,'sdoifupdiofuqepiwuo','2013-12-12','2013-12-29',5,100,90,19,326,'LocalBusiness'),
(12,'sdoifupdiofuqepiwuo','2013-12-12','2013-12-29',5,100,90,19,326,'LocalBusiness'),
(13,'sdoifupdiofuqepiwuo','2013-12-12','2013-12-29',5,100,90,19,326,'LocalBusiness'),
(14,'discount','2013-12-12','2013-12-31',5,100,100,19,326,'LocalBusiness'),
(15,NULL,NULL,NULL,NULL,NULL,NULL,3,326,'LocalBusiness'),
(16,'fjdlkfj;alkjd;a','2013-12-14','2013-12-31',5,100,90,19,329,'LocalBusiness'),
(17,'rediff','2013-12-18','2013-12-31',5,100,70,19,326,'LocalBusiness'),
(18,'dklfajldk','2013-12-18','2013-12-28',5,100,55,19,326,'LocalBusiness'),
(19,'hi','2013-12-18','2013-12-21',5,100,0,19,326,'LocalBusiness'),
(20,'hhhhhhhhhhh','2013-12-18','2013-12-22',5,100,25,19,326,'LocalBusiness'),
(21,'hi','2013-12-21','2013-12-26',5,100,30,19,326,'LocalBusiness'),
(22,'fjdkhfgdjsafgadjfljkakdhfkjahdfkljahldkjfhalkjhflkjadhf','2013-12-21','2014-01-10',5,100,105,19,326,'LocalBusiness'),
(23,'asdfghjkqwertyuiop[]sdfghj','2013-12-23','2014-01-30',5,100,195,NULL,326,'LocalBusiness'),
(24,'asdfghjkqwertyuiop[]sdfghj','2013-12-27','2014-01-17',5,100,110,NULL,152,'LocalBusiness'),
(25,'fjdkhfgdjsafgadjfljkakdhfkjahdfkljahldkjfhalkjhflkjadhf','2013-12-24','2014-01-17',5,100,125,NULL,152,'RealEstates'),
(26,'There seems to be something incongruous about these proposals from the start.','2014-01-01','2014-01-31',5,100,155,NULL,327,'LocalBusiness'),
(27,'<p>The numbers of graminivorous animals are declining fast, leading to ecological imbalance.</p>\r\n','2014-01-08','2014-01-31',5,100,120,NULL,334,'LocalBusiness');

/*Table structure for table `banner_image` */

DROP TABLE IF EXISTS `banner_image`;

CREATE TABLE `banner_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) DEFAULT NULL,
  `IMAGE_PATH_BIG` varchar(255) DEFAULT NULL,
  `BANNER_IMAGE_DETAIL_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `banner_image` */

insert into `banner_image` values
(2,'/usr/local/userPhotos/BANNER/2/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg','/usr/local/userPhotos/Big/BANNER/2/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg',2),
(3,'/usr/local/userPhotos/BANNER/3/contact.jpg','/usr/local/userPhotos/Big/BANNER/3/contact.jpg',3),
(4,'/usr/local/userPhotos/BANNER/4/995421_593644664013109_1180970608_n.jpg','/usr/local/userPhotos/Big/BANNER/4/995421_593644664013109_1180970608_n.jpg',4);

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
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

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
(22,'2013-12-27 12:09:13','2013-12-27 12:09:13','test id','sdfghj','dogi','dog',NULL,'1212121','INR','1212121212121','2',NULL,324);

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
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

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
(20,NULL,'/usr/local/userPhotos/BOOK/20/1381690_587333221303438_1072552433_n_-_Copy.jpg','/usr/local/userPhotos/Big/BOOK/20/1381690_587333221303438_1072552433_n_-_Copy.jpg',20),
(21,NULL,'/usr/local/userPhotos/BOOK/21/1381690_587333221303438_1072552433_n_-_Copy.jpg','/usr/local/userPhotos/Big/BOOK/21/1381690_587333221303438_1072552433_n_-_Copy.jpg',21),
(22,NULL,'/usr/local/userPhotos/BOOK/22/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/BOOK/22/1476435_558998504180050_2080544610_n.jpg',22);

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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

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
(23,'kjlkjl','sdfghjk','INR','8979','898798798',330,'2014-01-31 13:44:19','2014-01-31 13:44:19'),
(12,'kdjfladjfl','kjhkjh','INR','89','98',327,'2013-11-28 16:32:49','2013-11-28 16:32:49'),
(13,'jkjl','jkhk','INR','78','67',327,'2013-11-28 16:33:20','2013-11-28 16:33:20'),
(14,'kjlkj','hkhj','INR','544','876',327,'2013-11-28 16:34:00','2013-11-28 16:34:00'),
(15,'test1','test11','INR','123','123',328,'2013-12-04 10:47:22','2013-12-04 10:47:22'),
(16,'medicins','toxic','INR','890','50ml',330,'2014-01-31 13:45:40','2014-01-31 13:45:40'),
(17,'hi','hiiiii','INR','8689','78',326,'2013-12-27 11:51:50','2013-12-27 11:51:50'),
(18,'test1','jkhjkhkjhkjhk','INR','89','87',326,'2013-12-27 11:40:08','2013-12-27 11:40:08'),
(24,'hjh','jhkhkjhkjhk','INR','8989','778',330,'2014-02-07 10:04:51','2014-02-07 10:04:51');

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
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

/*Data for the table `boutique_image` */

insert into `boutique_image` values
(1,NULL,'/usr/local/userPhotos/BOUTIQUE/2/199481255_fdfe885f87_s.jpg','/usr/local/userPhotos/Big/BOUTIQUE/2/199481255_fdfe885f87_s.jpg',2),
(2,NULL,'/usr/local/userPhotos/BOUTIQUE/5/199481255_fdfe885f87_s.jpg','/usr/local/userPhotos/Big/BOUTIQUE/5/199481255_fdfe885f87_s.jpg',5),
(3,NULL,'/usr/local/userPhotos/BOUTIQUE/7/229228324_08223b70fa_s.jpg','/usr/local/userPhotos/Big/BOUTIQUE/7/229228324_08223b70fa_s.jpg',7),
(4,NULL,'/usr/local/userPhotos/BOUTIQUE/8/199481255_fdfe885f87_s.jpg','/usr/local/userPhotos/Big/BOUTIQUE/8/199481255_fdfe885f87_s.jpg',8),
(5,NULL,'/usr/local/userPhotos/BOUTIQUE/9/199481255_fdfe885f87_s.jpg','/usr/local/userPhotos/Big/BOUTIQUE/9/199481255_fdfe885f87_s.jpg',9),
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
(39,NULL,'/usr/local/userPhotos/BOUTIQUE/23/226745_213250335359976_4542807_n.jpg','/usr/local/userPhotos/Big/BOUTIQUE/23/226745_213250335359976_4542807_n.jpg',23),
(35,NULL,'/usr/local/userPhotos/BOUTIQUE/19/100_4438.JPG','/usr/local/userPhotos/Big/BOUTIQUE/19/100_4438.JPG',19),
(21,NULL,'/usr/local/userPhotos/BOUTIQUE/12/1456639_614098435291986_1515615659_n.jpg','/usr/local/userPhotos/Big/BOUTIQUE/12/1456639_614098435291986_1515615659_n.jpg',12),
(22,NULL,'/usr/local/userPhotos/BOUTIQUE/13/1451974_613168502074267_1569905781_s.jpg','/usr/local/userPhotos/Big/BOUTIQUE/13/1451974_613168502074267_1569905781_s.jpg',13),
(23,NULL,'/usr/local/userPhotos/BOUTIQUE/14/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/BOUTIQUE/14/1476435_558998504180050_2080544610_n.jpg',14),
(24,NULL,'/usr/local/userPhotos/BOUTIQUE/15/1456639_614098435291986_1515615659_n.jpg','/usr/local/userPhotos/Big/BOUTIQUE/15/1456639_614098435291986_1515615659_n.jpg',15),
(25,NULL,'/usr/local/userPhotos/BOUTIQUE/16/61263773_ZJCdrZk2j_1390970051.jpg','/usr/local/userPhotos/Big/BOUTIQUE/16/61263773_ZJCdrZk2j_1390970051.jpg',16),
(27,NULL,'/usr/local/userPhotos/BOUTIQUE/18/add-bgyellow.jpg','/usr/local/userPhotos/Big/BOUTIQUE/18/add-bgyellow.jpg',18),
(40,NULL,'/usr/local/userPhotos/BOUTIQUE/24/1063810_495312807211507_775072561_o.jpg','/usr/local/userPhotos/Big/BOUTIQUE/24/1063810_495312807211507_775072561_o.jpg',24),
(36,NULL,'/usr/local/userPhotos/BOUTIQUE/33/add-bg.jpg','/usr/local/userPhotos/Big/BOUTIQUE/33/add-bg.jpg',33);

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
  `BUSINESS_TYPE` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_OWNER_IMAGE_OWNER` (`BUSINESS_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `business_banner_image` */

insert into `business_banner_image` values
(1,'/usr/local/userPhotos/BUSINESS_BANNER/336/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg',336,'LocalBusiness');

/*Table structure for table `business_image` */

DROP TABLE IF EXISTS `business_image`;

CREATE TABLE `business_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `BUSINESS_ID` bigint(10) NOT NULL,
  `BUSINESS_TYPE` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_OWNER_IMAGE_OWNER` (`BUSINESS_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `business_image` */

insert into `business_image` values
(1,'/usr/local/userPhotos/BUSINESS/1/1471764_557221921032032_1469736954_a.jpg',1,'RealEstates'),
(3,'/usr/local/userPhotos/BUSINESS/1/1471764_557221921032032_1469736954_a.jpg',1,'companyorganizations'),
(6,'/usr/local/userPhotos/BUSINESS/2/city-wallpaper-1.jpg',2,'EventOrPlaces'),
(5,'/usr/local/userPhotos/BUSINESS/1/1063810_495312807211507_775072561_o.jpg',1,'BrandOrProducts'),
(7,'/usr/local/userPhotos/BUSINESS/2/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg',2,'BrandOrProducts'),
(8,'/usr/local/userPhotos/BUSINESS/2/autumn-landscape-with-trees-1920x1080-wallpaper-11341.jpg',2,'companyorganizations'),
(9,'/usr/local/userPhotos/BUSINESS/3/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg',3,'EventOrPlaces'),
(10,'/usr/local/userPhotos/BUSINESS/2/city-wallpaper-1.jpg',2,'RealEstates'),
(11,'/usr/local/userPhotos/BUSINESS/100/v.jpg',100,'homes');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `company` */

insert into `company` values
(1,'2014-01-21 21:46:08','2014-01-21 21:46:08','Try It','iso certified',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
(2,'2014-01-21 21:47:52','2014-01-21 21:47:52','Jabong','50+70% OFFFFFFFFFFFFFFFFFFFFFFFFFFFF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);

/*Table structure for table `company_image` */

DROP TABLE IF EXISTS `company_image`;

CREATE TABLE `company_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `COMPANY_ID` bigint(10) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_COMPANY_IMAGE_COMPANY_ID` (`COMPANY_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `company_image` */

insert into `company_image` values
(1,'/usr/local/userPhotos/COMPANY/1/beach-wallpaper-hd-florida-condos-download-wallpaper-wallpaper.jpg',1,'/usr/local/userPhotos/Big/COMPANY/1/beach-wallpaper-hd-florida-condos-download-wallpaper-wallpaper.jpg'),
(2,'/usr/local/userPhotos/COMPANY/2/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg',2,'/usr/local/userPhotos/Big/COMPANY/2/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg');

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
  PRIMARY KEY (`ID`),
  KEY `FK_SHOP_ADDRESS` (`ADDRESS`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `company_organization` */

insert into `company_organization` values
(1,'2014-01-21 11:59:39','2014-01-21 11:59:39','Aqua Fresh','asdfghjk',3267,740,NULL,'9887676554'),
(2,'2014-01-22 22:16:40','2014-01-22 22:16:40','farzi','asdfghjk',3274,740,NULL,'9887676554');

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
(1,'2014-01-20 22:33:37','2014-01-20 22:33:37','Rohini Complex','sdfghjk','2000',8000,NULL,NULL,'INR',740,1);

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
(1,'Chakrata Road','Near Ghanta Garh','248001','98',NULL,NULL,1);

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
(1,NULL,'/usr/local/userPhotos/COMPLEX/1/city-wallpaper-1.jpg','/usr/local/userPhotos/Big/COMPLEX/1/city-wallpaper-1.jpg',1);

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
(4,NULL,'/usr/local/userPhotos/COMPUTER/4/2-láºµng-hoa-trang-trÃ­-cho-nhá»¯ng-dá»‹p-Ä‘Äƒc-biá»‡t.jpg','/usr/local/userPhotos/Big/COMPUTER/4/2-láºµng-hoa-trang-trÃ­-cho-nhá»¯ng-dá»‹p-Ä‘Äƒc-biá»‡t.jpg',4),
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
(39,NULL,'/usr/local/userPhotos/ESHOP_PRODUCT/23/Banner1.jpg','/usr/local/userPhotos/Big/ESHOP_PRODUCT/23/Banner1.jpg',23),
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `event` */

insert into `event` values
(1,'2014-01-22 00:15:18','2014-01-22 00:15:18','jhjbkk','fgdgfdgfd',NULL,NULL,NULL,'56456',456,'ddfd',740,NULL,'INR',2);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `event_image` */

insert into `event_image` values
(1,NULL,'/usr/local/userPhotos/EVENT/1/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg','/usr/local/userPhotos/Big/Event/1/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg',1);

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
  PRIMARY KEY (`ID`),
  KEY `FK_SHOP_ADDRESS` (`ADDRESS`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `event_place` */

insert into `event_place` values
(2,'2014-01-21 23:48:42','2014-01-21 23:48:42','Marathan','asdfghj',3272,740,NULL,'9887769854'),
(3,'2014-01-22 22:19:49','2014-01-22 22:19:49','barbadi','asdfghjkl',3275,740,NULL,'9887769854');

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
(1,'<p>jkdf hkjal dfhjkadhfjkl ahdfkja dslhfak</p>',5,'100','2013-12-12','2013-12-22',19,326,55,'LocalBusiness'),
(2,'<p>jkdfh kja ldfhj kadhf jkla hdfk jadslh fak ji</p>',5,'100','2014-01-01','2014-01-31',19,300,155,'LocalBusiness'),
(3,'<p>dj fie upqe uri ouq poe iru qop ieu rpq </p>',5,'100','2013-12-12','2013-12-29',19,289,90,'LocalBusiness'),
(4,'<p>jw ou r i o e wur i o weurpq oerq</p>',5,'100','2013-12-17','2013-12-22',19,307,30,'LocalBusiness'),
(5,'<p>klsjf;klsjLK;JF;lkfj</p>',5,'100','2013-12-13','2013-12-27',19,277,75,'LocalBusiness'),
(6,'<p>dfkljflkajd;falkjf;al</p>',5,'100','2013-12-18','2013-12-26',19,326,45,'LocalBusiness');

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
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `home_sale_detail` */

insert into `home_sale_detail` values
(1,'<p>l;dkf\';ldkf;</p>',5,100,'2013-12-17','2013-12-20',20,'LocalBusiness',740),
(3,'<p>jkdhfalkjf</p>',5,100,'2013-12-18','2013-12-21',20,'LocalBusiness',740),
(4,'<p>jlkjkljlkjlkjljl</p>',5,100,'2013-12-12','2013-12-29',90,'LocalBusiness',740),
(5,'<p>link</p>',5,100,'2013-12-27','2013-12-29',15,'LocalBusiness',740),
(6,'<p>link</p>',5,100,'2013-12-27','2013-12-29',15,'LocalBusiness',740),
(9,'<p>hilhlhkjhkj</p>',5,100,'2013-12-31','2014-01-23',120,'Homes',740);
insert into `home_sale_detail` values
(17,'<p>test</p>',5,100,'2014-01-01','2014-01-31',155,'Homes',740),
(18,'<p>test</p>',5,100,'2014-01-07','2014-01-31',125,'Homes',748);

/*Table structure for table `home_sale_detail_image` */

DROP TABLE IF EXISTS `home_sale_detail_image`;

CREATE TABLE `home_sale_detail_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) DEFAULT NULL,
  `IMAGE_PATH_BIG` varchar(255) DEFAULT NULL,
  `HOME_SALE_DETAIL_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `home_sale_detail_image` */

insert into `home_sale_detail_image` values
(1,'/usr/local/userPhotos/HOME_SALE_DETAIL/1/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg','/usr/local/userPhotos/Big/HOME_SALE_DETAIL/9/1480574_600682716658532_1629368238_a.jpg',1),
(2,'/usr/local/userPhotos/HOME_SALE_DETAIL/2/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg','/usr/local/userPhotos/Big/HOME_SALE_DETAIL/2/226745_213250335359976_4542807_n.jpg',2),
(3,'/usr/local/userPhotos/HOME_SALE_DETAIL/3/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg','/usr/local/userPhotos/Big/HOME_SALE_DETAIL/9/1480574_600682716658532_1629368238_a.jpg',3),
(4,'/usr/local/userPhotos/HOME_SALE_DETAIL/4/1456639_614098435291986_1515615659_n.jpg','/usr/local/userPhotos/Big/HOME_SALE_DETAIL/4/1456639_614098435291986_1515615659_n.jpg',4),
(5,'/usr/local/userPhotos/HOME_SALE_DETAIL/5/960100_371945906274477_81820131_n.jpg','/usr/local/userPhotos/Big/HOME_SALE_DETAIL/5/960100_371945906274477_81820131_n.jpg',5),
(6,'/usr/local/userPhotos/HOME_SALE_DETAIL/6/960100_371945906274477_81820131_n.jpg','/usr/local/userPhotos/Big/HOME_SALE_DETAIL/6/960100_371945906274477_81820131_n.jpg',6),
(7,'/usr/local/userPhotos/HOME_SALE_DETAIL/9/1480574_600682716658532_1629368238_a.jpg','/usr/local/userPhotos/Big/HOME_SALE_DETAIL/9/1480574_600682716658532_1629368238_a.jpg',9),
(11,'/usr/local/userPhotos/HOME_SALE_DETAIL/17/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg','/usr/local/userPhotos/Big/HOME_SALE_DETAIL/9/1480574_600682716658532_1629368238_a.jpg',17),
(12,'/usr/local/userPhotos/HOME_SALE_DETAIL/18/226745_213250335359976_4542807_n.jpg','/usr/local/userPhotos/Big/HOME_SALE_DETAIL/9/1480574_600682716658532_1629368238_a.jpg',18);

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
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;

/*Data for the table `house` */

insert into `house` values
(118,'2013-11-25 11:41:34','2013-11-25 11:41:34','hjkhjkhk',';kdjf;lkdsj',NULL,1,'7',11,8090,NULL,'INR',2,NULL,NULL,1),
(117,'2013-11-25 11:19:14','2013-11-25 11:19:14','loki','dj;flkjadklfja;lkdsjf;l',NULL,1,'7',11,8090,NULL,'INR',3,NULL,NULL,1),
(119,'2013-11-28 16:45:56','2013-11-28 16:45:56','kljlk','lkjlkjlk',NULL,1,'7878',11,98,NULL,'INR',3,NULL,NULL,1),
(120,'2013-12-30 11:05:08','2013-12-30 11:05:08','kljlk','lkjlkjlk',NULL,1,'7878',11,98,NULL,'INR',3,NULL,NULL,1),
(121,'2013-12-30 11:16:04','2013-12-30 11:16:04','test4','lkjlkjlk',NULL,1,'7878',11,98,NULL,'INR',3,NULL,NULL,1),
(124,'2014-01-31 13:57:52','2014-01-31 13:57:52','Not Available','asdfghjkl',NULL,1,'2000',1,5000,NULL,'INR',3,NULL,NULL,740),
(127,'2014-01-20 11:47:54','2014-01-20 11:47:54','Not Available','sdfghjk',NULL,1,'2000',1,5000,NULL,'INR',2,NULL,NULL,740);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `house_address` */

insert into `house_address` values
(3,'NH72','Joligrant','248140','98',NULL,NULL,127),
(4,'NH72','Joligrant','248140','98','','',124);

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
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

/*Data for the table `house_image` */

insert into `house_image` values
(57,NULL,'/usr/local/userPhotos/HOUSE/117/na_preri.gif','/usr/local/userPhotos/Big/HOUSE/117/na_preri.gif',117),
(58,NULL,'/usr/local/userPhotos/HOUSE/118/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/HOUSE/118/1476435_558998504180050_2080544610_n.jpg',118),
(59,NULL,'/usr/local/userPhotos/HOUSE/119/1456639_614098435291986_1515615659_n.jpg','/usr/local/userPhotos/Big/HOUSE/119/1456639_614098435291986_1515615659_n.jpg',119),
(60,NULL,'/usr/local/userPhotos/HOUSE/120/autumn-wallpaper-hd.jpg','/usr/local/userPhotos/Big/HOUSE/120/autumn-wallpaper-hd.jpg',120),
(61,NULL,'/usr/local/userPhotos/HOUSE/121/1471764_557221921032032_1469736954_a.jpg','/usr/local/userPhotos/Big/HOUSE/121/1471764_557221921032032_1469736954_a.jpg',121),
(63,NULL,'/usr/local/userPhotos/HOUSE/124/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg','/usr/local/userPhotos/Big/HOUSE/124/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg',124),
(66,NULL,'/usr/local/userPhotos/HOUSE/127/1480574_600682716658532_1629368238_a.jpg','/usr/local/userPhotos/Big/HOUSE/127/1480574_600682716658532_1629368238_a.jpg',127);

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `land` */

insert into `land` values
(1,'2014-01-20 18:11:25','2014-01-20 18:11:25','low price','asdfghjkl',NULL,NULL,NULL,'12000',1000,2,NULL,'INR',740,1);

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
  `LAND_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `land_address` */

insert into `land_address` values
(1,'DL Road','Navada','248001','98',NULL,NULL,1);

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `land_image` */

insert into `land_image` values
(1,NULL,'/usr/local/userPhotos/LAND/1/beach-wallpaper-hd-florida-condos-download-wallpaper-wallpaper.jpg','/usr/local/userPhotos/Big/LAND/1/beach-wallpaper-hd-florida-condos-download-wallpaper-wallpaper.jpg',1);

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
) ENGINE=MyISAM AUTO_INCREMENT=752 DEFAULT CHARSET=latin1;

/*Data for the table `owner` */

insert into `owner` values
(1,'fygedhnb','','98754328935365',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(2,'rytgujgjh',NULL,'9856231475',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(3,'fuyfjhbmn',NULL,'9846259130',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(4,'wwedfghh',NULL,'95267413890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(5,'qwertyuiop',NULL,'789654111111230',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(6,'rtyhjniojl',NULL,'9652314870',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(7,'bvjshdjs',NULL,'9856274310',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(8,'mkoiytew',NULL,'7542435620',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(9,'myuojnhg',NULL,'8241563987',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(10,'ngytees',NULL,'7415289630',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(11,'bhjgbh',NULL,'8623514790',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(12,'pokluy',NULL,'7543265189',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(13,'gypgjh',NULL,'7895263410',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(14,'bgytrdfr',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(15,'bhgyuiop',NULL,'8923641705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(16,'bhioputre',NULL,'2365897412056',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(17,'dcgfcgh',NULL,'9856247310',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(18,'riya',NULL,'0236514799',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(66,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(67,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(68,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(75,NULL,NULL,'p',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(76,NULL,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(77,NULL,NULL,'a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(78,NULL,NULL,'i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(79,NULL,NULL,'i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(80,NULL,NULL,'i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(81,NULL,NULL,'i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(82,NULL,NULL,'i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(83,NULL,NULL,'i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(84,NULL,NULL,'i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(85,NULL,NULL,'a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(86,NULL,NULL,'a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(87,NULL,NULL,'a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(88,NULL,NULL,'a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(89,NULL,NULL,'a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(90,NULL,NULL,'a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(91,NULL,NULL,'a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(92,NULL,NULL,'a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(93,NULL,NULL,'a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(94,NULL,NULL,'a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(95,NULL,NULL,'a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(96,NULL,NULL,'a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(97,NULL,NULL,'a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(98,NULL,NULL,'a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(99,NULL,NULL,'a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(100,NULL,NULL,'a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(101,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(102,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(103,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(104,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(105,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(106,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(107,NULL,NULL,'q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(108,NULL,NULL,'q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(109,NULL,NULL,'q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(110,NULL,NULL,'q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(111,NULL,NULL,'q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(112,NULL,NULL,'q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(113,NULL,NULL,'q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(114,NULL,NULL,'q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(115,NULL,NULL,'q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(116,NULL,NULL,'q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(117,NULL,NULL,'q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(118,NULL,NULL,'q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(119,NULL,NULL,'q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(120,NULL,NULL,'q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(121,NULL,NULL,'q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(122,NULL,NULL,'q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(123,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(124,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(125,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(126,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(127,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(128,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(129,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(130,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(131,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(132,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(133,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(134,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(135,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(136,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(137,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(138,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(139,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(140,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(141,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(142,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(143,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(144,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(145,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(146,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(147,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(148,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(149,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(150,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(151,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(152,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(153,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(154,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(155,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(156,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(157,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(158,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(159,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(160,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(161,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(162,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(163,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(164,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(165,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(166,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(167,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(168,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(169,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(170,NULL,NULL,'dfghjkl;\'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(171,NULL,NULL,'dfghjkl;\'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(172,NULL,NULL,'dfghjkl;\'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(173,NULL,NULL,'q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(174,NULL,NULL,'b',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(175,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(176,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(177,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(178,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(179,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(180,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(181,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(182,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(183,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(184,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(185,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(186,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(187,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(188,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(189,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(190,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(191,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(192,NULL,NULL,'c',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(193,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(194,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(195,NULL,NULL,'c',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(196,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(197,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(198,NULL,NULL,'k',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(199,NULL,NULL,'o',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(200,NULL,NULL,'o',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(201,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(202,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(203,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(204,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(205,NULL,NULL,'c',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(206,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(207,NULL,NULL,'c',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(208,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(209,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(210,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(211,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(212,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(213,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(214,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(215,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(216,NULL,NULL,'344343333333',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(217,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(218,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(219,NULL,NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(220,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(221,NULL,NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(222,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(223,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(224,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(225,NULL,NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(226,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(227,NULL,NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(228,NULL,NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(229,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(230,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(231,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(232,NULL,NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(233,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(234,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(235,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(236,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(237,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(238,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(240,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(241,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(242,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(243,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(245,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(246,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(247,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(248,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(249,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(250,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(251,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(252,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(253,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(254,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(256,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(257,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(258,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(259,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(260,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(261,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(262,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(263,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(264,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(265,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(266,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(267,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(268,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(269,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(270,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(271,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(272,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(273,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(274,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(275,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(276,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(277,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(278,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(279,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(280,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(281,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(282,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(283,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(284,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(285,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(286,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(287,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(288,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(289,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(290,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(291,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(292,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(293,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(294,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(295,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(296,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(297,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(298,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(299,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(300,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(301,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(302,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(303,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(304,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(305,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(306,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(307,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(308,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(309,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(310,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(311,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(312,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(313,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(314,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(315,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(316,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(317,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(318,'vikas',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(319,'city',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(320,'city',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(321,'city',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(322,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(323,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(324,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(325,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(326,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(327,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(328,'saloon',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(329,'saloon',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(330,'saloon',NULL,'8962314705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(331,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(332,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(333,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(334,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(335,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(336,'wert',NULL,'qwert',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(337,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(338,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(339,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(340,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(341,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(342,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(343,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(344,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(345,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(346,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(347,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(348,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(349,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(350,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(351,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(352,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(353,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(354,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(355,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(356,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(357,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(358,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(359,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(360,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(361,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(362,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(363,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(364,'qwertyuioo',NULL,'asdfghjkl;',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(365,'qwertyuioo',NULL,'asdfghjkl;',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(366,'qwertyuioo',NULL,'asdfghjkl;',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(367,'qwertyuioo',NULL,'asdfghjkl;',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(368,'qwertyuioo',NULL,'asdfghjkl;',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(369,'qwertyuioo',NULL,'asdfghjkl;',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(370,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(371,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(372,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(373,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(374,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(375,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(376,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(377,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(378,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(379,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(380,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(381,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(382,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(383,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(384,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(385,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(386,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(387,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(388,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(389,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(390,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(391,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(392,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(393,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(394,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(395,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(396,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(397,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(398,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(399,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(400,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(401,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(402,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(403,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(404,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(405,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(406,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(407,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(408,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(409,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(410,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(411,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(412,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(413,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(414,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(415,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(416,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(417,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(418,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(419,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(420,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(421,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(422,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(423,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(424,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(425,'raw',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(426,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(427,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(428,'wertyuio',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(429,'wertyuio',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(430,'wertyuio',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(431,'wertyuio',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(432,'wertyuio',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(433,'wertyuio',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(434,'wertyuio',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(435,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(436,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(437,'asdfghjkl',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(438,'asdfghjkl',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(439,'asdfghjkl',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(440,'asdfghjkl',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(441,'asdfghjkl',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(442,'asdfghjkl',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(443,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(444,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(445,'sdfgjl;',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(446,'sdfgjl;',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(447,'sdfgjl;',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(448,'sdfgjl;',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(449,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(450,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(451,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(452,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(453,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(454,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(455,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(456,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(457,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(458,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(459,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(460,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(461,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(462,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(463,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(464,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(465,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(466,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(467,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(468,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(469,'qwertyuiop[',NULL,'980888898',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(470,'city nake',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(471,'city nake',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(472,'city nake',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(473,'city nake',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(474,'city nake',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(475,'city nake',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(476,'city nake',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(477,'city nake',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(478,'city nake',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(479,'city nake',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(480,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(481,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(482,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(483,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(484,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(485,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(486,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(487,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(488,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(489,'qwertyuio',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(490,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(491,'sdfghjkl;\'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(492,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(493,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(494,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(496,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(497,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(498,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(499,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(500,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(501,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(502,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(503,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(504,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(505,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(506,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(507,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(508,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(509,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(510,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(511,NULL,NULL,'w',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(512,NULL,NULL,'w',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(513,NULL,NULL,'w',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(514,NULL,NULL,'w',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(515,NULL,NULL,'w',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(516,NULL,NULL,'w',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(517,NULL,NULL,'w',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(518,NULL,NULL,'w',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(519,NULL,NULL,'w',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(520,NULL,NULL,'w',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(521,NULL,NULL,'w',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(522,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(523,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(524,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(525,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(526,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(527,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(528,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(529,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(530,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(531,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(532,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(533,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(534,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(535,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(536,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(537,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(538,'qwertyui',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(539,'qwerty',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(540,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(541,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(542,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(543,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(544,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(545,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(546,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(547,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(548,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(549,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(550,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(551,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(552,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(553,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(554,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(555,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(556,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(557,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(558,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(559,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(560,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(561,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(562,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(563,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(564,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(565,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(566,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(567,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(568,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(569,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(570,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(571,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(572,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(573,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(574,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(575,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(576,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(577,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(578,NULL,NULL,'1232141234',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(579,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(580,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(581,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(582,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(583,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(584,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(585,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(586,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(587,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(588,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(589,NULL,NULL,'2345678',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(590,NULL,NULL,'2345678',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(591,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(592,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(593,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(594,'asdfgh',NULL,'rsdfghjk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(595,'asdfghjkl',NULL,'dfghjkl',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(596,'event_or_place_details',NULL,'asdfg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(597,'wertyuio',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(598,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(599,'asdfgh',NULL,'sdfghj',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(600,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(601,NULL,NULL,'sdfgh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(602,'wert',NULL,'12345678[',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(603,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(604,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(605,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(606,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(607,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(608,'1234567890',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(609,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(610,NULL,NULL,'12345678',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(611,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(612,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(613,'gfjhgfjhg',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(614,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(615,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(616,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(617,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(618,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(619,NULL,NULL,'1232141234',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(620,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(621,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(622,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(623,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(624,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(625,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(626,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(627,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(628,'',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(629,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(630,NULL,NULL,'sdf3456',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(631,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(632,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(633,'sdfghj',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(634,NULL,NULL,'11111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(635,NULL,NULL,'asdfgh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(636,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(637,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(638,NULL,NULL,'12345678',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(639,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(640,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(641,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(642,'786',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(643,'123',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(644,'n',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(645,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(646,'11',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(647,'123456',NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(648,'m',NULL,'sdfghj',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(649,'b',NULL,'12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(650,'qwertyu',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(651,'aa',NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(652,'aa',NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(653,'rrrr',NULL,'8888888888',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(654,'bnbnbn',NULL,'8888888888',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(655,NULL,NULL,'0000000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(656,'nnnn',NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(657,'nnn',NULL,'9555555555',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(658,NULL,NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(659,'jjj',NULL,'0000000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(660,'dd',NULL,'0000000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(661,'yuiyiuyiu',NULL,'0000000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(662,'hjkhkjk',NULL,'0000000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(663,'hjgjh',NULL,'0000000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(664,'TECK BOOK',NULL,'9898989898',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(665,'vikas',NULL,'0000000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(666,'kali',NULL,'898998988989',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(667,'kjjkjkjkjkjk',NULL,'0990909090',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(668,'kali',NULL,'0909090909',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(669,'ki',NULL,'87878787878',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(670,'don',NULL,'2323232323',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(671,'lo',NULL,'0000000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(672,'j',NULL,'77777777777',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(673,'hoony',NULL,'9898989898',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(674,NULL,NULL,'0000000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(675,NULL,NULL,'8888888888',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(676,'jjjjjjjjj',NULL,'8888888888',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(677,'dog',NULL,'10101010101',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(678,'lkjkljlkjlk',NULL,'88888888888',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(679,'HHHHHHHHH',NULL,'0000000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(680,'bbbbbbb',NULL,'9999999999',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(681,'kljlkjkljlk',NULL,'9999999999',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(682,'asdfghjk',NULL,'00000000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(683,NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(684,'adwed',NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(685,'hunter',NULL,'12121212121',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(686,'asdfgh',NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(687,'asdfghj',NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(688,'vikas',NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(689,'vikas',NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(690,'vikas',NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(691,'vikas',NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(692,'vikas',NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(693,'vikas',NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(694,'vikas',NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(695,'vikas',NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(696,'vikas',NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(697,'vikas',NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(698,'gooolu',NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(699,'DON',NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(700,'adwed',NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(701,'rose',NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(702,'hunter',NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(703,'hunter',NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(704,'hunter',NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(705,'hunter',NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(706,'hi',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(707,'obama',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(708,'goli',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(709,'goli',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(710,'goli',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(711,'goli',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(712,'goli',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(713,'goli',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(714,'goli',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(715,'obama',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(716,'goli',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(717,'goli',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(718,'ljlkjkjlkj',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(719,'hkjhjk',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(720,'jhkhkjl',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(721,'kjh',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(722,'kjh',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(723,'kjhjj',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(724,'hi',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(725,'test',NULL,'9809765432',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(726,'jack',NULL,'8967542309',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(727,'jack',NULL,'8967542309',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(728,'nikke',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(729,'hiiiu',NULL,'6789677889',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(730,'noji',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(731,'nmbmn',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(732,'test1',NULL,'9808117322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(733,'vikwwwww',NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(734,'Samrath',NULL,'9089786756',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(735,'case',NULL,'0987656798',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(736,'Alok',NULL,'09897876543',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(737,NULL,NULL,'0978908709',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(738,'Alok',NULL,'09897876543',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(739,'salman',NULL,'8909785634','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'vikas.singh1@soarlogic.com','7c222fb2927d828af22f592134e8932480637c0d',NULL,NULL,3253,1,'52C6407537B7E1.00275814',1,NULL),
(740,'vicky',NULL,'9808765423',NULL,NULL,NULL,'Vikas','Singh','vikas.singh@soarlogic.com','7c222fb2927d828af22f592134e8932480637c0d',NULL,1,3255,1,'52D37D6A63D811.10220716',1,NULL),
(751,'vicky',NULL,'9808765423',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL),
(748,'name',NULL,'0989786765',NULL,NULL,NULL,NULL,NULL,'name@gmail.com',NULL,NULL,NULL,3257,0,NULL,1,NULL),
(750,'vicky',NULL,'9808765423',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL);

/*Table structure for table `owner_image` */

DROP TABLE IF EXISTS `owner_image`;

CREATE TABLE `owner_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `OWNER_ID` bigint(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_OWNER_IMAGE_OWNER` (`OWNER_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=260 DEFAULT CHARSET=latin1;

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
(259,'/usr/local/userPhotos/OWNER/740/v.jpg',740);

/*Table structure for table `page` */

DROP TABLE IF EXISTS `page`;

CREATE TABLE `page` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `BUSINESS_TYPE` varchar(50) NOT NULL,
  `BUSINESS_TYPE_ID` bigint(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

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
(58,'menu','dfghjkl;','EventOrPlaces',2);

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
  PRIMARY KEY (`ID`),
  KEY `FK_PRODUCT_OWNER_ADMIN` (`OWNER_ADMIN`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert into `product` values
(1,'Blower','asdfghjkl;','Full',2400,NULL,NULL,NULL,'2014-01-21 22:11:31','2014-01-21 22:11:31',NULL,'INR',1,1);

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
  PRIMARY KEY (`ID`),
  KEY `FK_SHOP_ADDRESS` (`ADDRESS`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `product_brand` */

insert into `product_brand` values
(1,'2014-01-21 16:53:18','2014-01-21 16:53:18','Branded','asdfghjkl;',3270,740,NULL,'9878675654'),
(2,'2014-01-22 21:31:01','2014-01-22 21:31:01','koka kola','use it again and again',3273,740,NULL,'8374674890');

/*Table structure for table `product_image` */

DROP TABLE IF EXISTS `product_image`;

CREATE TABLE `product_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ALT` varchar(21) DEFAULT NULL,
  `IMAGE_PATH` varchar(255) NOT NULL,
  `IMAGE_PATH_BIG` varchar(255) NOT NULL,
  `PRODUCT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `product_image` */

insert into `product_image` values
(1,NULL,'/usr/local/userPhotos/PRODUCT/1/autumn-wallpaper-hd.jpg','/usr/local/userPhotos/Big/PRODUCT/1/autumn-wallpaper-hd.jpg',1);

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
  PRIMARY KEY (`ID`),
  KEY `FK_SHOP_ADDRESS` (`ADDRESS`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `real_estate` */

insert into `real_estate` values
(1,'2014-01-17 20:18:08','2014-01-17 20:18:08','Diwan Associates','asdfghjkl',3266,740,NULL,'9878676554'),
(2,'2014-01-22 22:23:46','2014-01-22 22:23:46','Chauhan Properties','qwertyuioasdfghjk',3276,740,NULL,'9878676554'),
(3,'2014-01-29 12:20:32','2014-01-29 12:20:32','Chauhan Properties',NULL,3281,740,NULL,'9878676554');

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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

/*Data for the table `sales` */

insert into `sales` values
(1,326,'hi','LocalBusiness',19),
(2,326,'','LocalBusiness',19),
(3,326,'','LocalBusiness',19),
(4,326,'','LocalBusiness',19),
(5,326,'','LocalBusiness',19),
(6,326,'','LocalBusiness',19),
(7,326,'','LocalBusiness',19),
(8,326,'kjhjkhk','LocalBusiness',19),
(9,326,'sdfghjk','LocalBusiness',19),
(10,326,'dklfjakdfjkladjflka','LocalBusiness',19),
(11,326,'jhkjhjkhj','LocalBusiness',19),
(12,326,'dlkfjalk;dsjfa','LocalBusiness',19),
(13,326,'dlkfjalk;dsjfa','LocalBusiness',19),
(14,326,'jkhfjlskfhj','LocalBusiness',19),
(15,326,'jkhfjlskfhj','LocalBusiness',19),
(16,326,'jkhfjlskfhj','LocalBusiness',19),
(17,326,'jkhfjlskfhj','LocalBusiness',19),
(18,326,'jkhfjlskfhj','LocalBusiness',19),
(19,326,'jkhfjlskfhj','LocalBusiness',19),
(20,326,'jkhfjlskfhj','LocalBusiness',19),
(21,326,'jhkhkjhk','LocalBusiness',19),
(22,326,'kljlkjlk','LocalBusiness',19),
(23,326,'dkf\';ladkf\'lf','LocalBusiness',19),
(24,326,'dkf\';ladkf\'lf','LocalBusiness',19),
(25,326,'kdljfa;ldkfj','LocalBusiness',19),
(26,326,'kljlkjlk','LocalBusiness',19),
(27,326,'ll;dk\'lakf\'a;','LocalBusiness',19),
(28,326,'ll;dk\'lakf\'a;','LocalBusiness',19),
(29,326,'ll;dk\'lakf\'a;','LocalBusiness',19),
(30,326,'JKHKJHKJHJK','LocalBusiness',19),
(31,326,'DKLLFHJKDAHFLAKJ','LocalBusiness',19),
(32,326,'DKLLFHJKDAHFLAKJ','LocalBusiness',19),
(33,326,'DKLLFHJKDAHFLAKJ','LocalBusiness',19),
(34,326,'DLFA;KLFJALKD','LocalBusiness',19),
(35,326,'L;\'KS;LKL;K\';','LocalBusiness',19),
(36,326,'L;\'KS;LKL;K\';','LocalBusiness',19),
(37,326,'L;\'KS;LKL;K\';','LocalBusiness',19),
(38,326,'L;\'KS;LKL;K\';','LocalBusiness',19),
(39,326,'L;\'KS;LKL;K\';','LocalBusiness',19),
(40,326,'L;\'KS;LKL;K\';','LocalBusiness',19),
(41,326,'L;\'KS;LKL;K\';','LocalBusiness',19),
(42,326,'lkdfjaklfja;lk','LocalBusiness',19),
(43,326,'dlsfaldfkaldl\'kf\'al','LocalBusiness',19),
(44,326,'hdklshdl','LocalBusiness',19),
(45,326,'','LocalBusiness',19),
(46,326,'hi','LocalBusiness',19);

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
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `sales_detail` */

insert into `sales_detail` values
(14,'till 31 May 2013 Dulha Bazar',5,NULL,'2013-12-21','2013-12-29',45,334),
(15,'Buy latest stylist kurtis starting @Rs.299 only.Free shiping buy now.',5,NULL,'2013-12-19','2013-12-27',45,326),
(16,'Latest 2013 summer collection.Free shiping & cash on delivery.shop now.',5,100,'2013-12-12','2013-12-27',80,326),
(17,'Weddings are the special moments in one\'s life.The hope,joyand vigor in a wedding....',5,100,'2013-12-18','2013-12-28',55,326);

/*Table structure for table `sales_detail_image` */

DROP TABLE IF EXISTS `sales_detail_image`;

CREATE TABLE `sales_detail_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) DEFAULT NULL,
  `IMAGE_PATH_BIG` varchar(255) DEFAULT NULL,
  `SALES_DETAIL_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `sales_detail_image` */

insert into `sales_detail_image` values
(1,'/usr/local/userPhotos/SALESDETAIL/14/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/SALESDETAIL/14/1476435_558998504180050_2080544610_n.jpg',14),
(2,'/usr/local/userPhotos/SALESDETAIL/15/1455142_612410932150004_1164928356_n.jpg','/usr/local/userPhotos/Big/SALESDETAIL/15/1455142_612410932150004_1164928356_n.jpg',15),
(3,'/usr/local/userPhotos/SALESDETAIL/16/1476532_571893542883063_394917734_n.jpg','/usr/local/userPhotos/Big/SALESDETAIL/16/1476532_571893542883063_394917734_n.jpg',16),
(4,'/usr/local/userPhotos/SALESDETAIL/17/American-credit-cards.jpg','/usr/local/userPhotos/Big/SALESDETAIL/17/American-credit-cards.jpg',17);

/*Table structure for table `sales_image` */

DROP TABLE IF EXISTS `sales_image`;

CREATE TABLE `sales_image` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `IMAGE_PATH` varchar(255) DEFAULT NULL,
  `IMAGE_PATH_BIG` varchar(255) DEFAULT NULL,
  `SALES_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

/*Data for the table `sales_image` */

insert into `sales_image` values
(1,'/usr/local/userPhotos/SALES/1/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/SALES/1/1476435_558998504180050_2080544610_n.jpg',1),
(2,'/usr/local/userPhotos/SALES/2/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/SALES/2/1476435_558998504180050_2080544610_n.jpg',2),
(3,'/usr/local/userPhotos/SALES/8/1455142_612410932150004_1164928356_n.jpg','/usr/local/userPhotos/Big/SALES/8/1455142_612410932150004_1164928356_n.jpg',8),
(4,'/usr/local/userPhotos/SALES/9/1455142_612410932150004_1164928356_n.jpg','/usr/local/userPhotos/Big/SALES/9/1455142_612410932150004_1164928356_n.jpg',9),
(5,'/usr/local/userPhotos/SALES/10/1455142_612410932150004_1164928356_n.jpg','/usr/local/userPhotos/Big/SALES/10/1455142_612410932150004_1164928356_n.jpg',10),
(6,'/usr/local/userPhotos/SALES/11/1455142_612410932150004_1164928356_n.jpg','/usr/local/userPhotos/Big/SALES/11/1455142_612410932150004_1164928356_n.jpg',11),
(7,'/usr/local/userPhotos/SALES/12/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/SALES/12/1476435_558998504180050_2080544610_n.jpg',12),
(8,'/usr/local/userPhotos/SALES/13/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/SALES/13/1476435_558998504180050_2080544610_n.jpg',13),
(9,'/usr/local/userPhotos/SALES/14/1476532_571893542883063_394917734_n.jpg','/usr/local/userPhotos/Big/SALES/14/1476532_571893542883063_394917734_n.jpg',14),
(10,'/usr/local/userPhotos/SALES/15/1476532_571893542883063_394917734_n.jpg','/usr/local/userPhotos/Big/SALES/15/1476532_571893542883063_394917734_n.jpg',15),
(11,'/usr/local/userPhotos/SALES/17/1476532_571893542883063_394917734_n.jpg','/usr/local/userPhotos/Big/SALES/17/1476532_571893542883063_394917734_n.jpg',17),
(12,'/usr/local/userPhotos/SALES/18/1476532_571893542883063_394917734_n.jpg','/usr/local/userPhotos/Big/SALES/18/1476532_571893542883063_394917734_n.jpg',18),
(13,'/usr/local/userPhotos/SALES/19/1476532_571893542883063_394917734_n.jpg','/usr/local/userPhotos/Big/SALES/19/1476532_571893542883063_394917734_n.jpg',19),
(14,'/usr/local/userPhotos/SALES/20/1476532_571893542883063_394917734_n.jpg','/usr/local/userPhotos/Big/SALES/20/1476532_571893542883063_394917734_n.jpg',20),
(15,'/usr/local/userPhotos/SALES/21/1456639_614098435291986_1515615659_n.jpg','/usr/local/userPhotos/Big/SALES/21/1456639_614098435291986_1515615659_n.jpg',21),
(16,'/usr/local/userPhotos/SALES/22/1476532_571893542883063_394917734_n.jpg','/usr/local/userPhotos/Big/SALES/22/1476532_571893542883063_394917734_n.jpg',22),
(17,'/usr/local/userPhotos/SALES/23/1455142_612410932150004_1164928356_n.jpg','/usr/local/userPhotos/Big/SALES/23/1455142_612410932150004_1164928356_n.jpg',23),
(18,'/usr/local/userPhotos/SALES/24/1455142_612410932150004_1164928356_n.jpg','/usr/local/userPhotos/Big/SALES/24/1455142_612410932150004_1164928356_n.jpg',24),
(19,'/usr/local/userPhotos/SALES/25/1455142_612410932150004_1164928356_n.jpg','/usr/local/userPhotos/Big/SALES/25/1455142_612410932150004_1164928356_n.jpg',25),
(20,'/usr/local/userPhotos/SALES/26/1456639_614098435291986_1515615659_n.jpg','/usr/local/userPhotos/Big/SALES/26/1456639_614098435291986_1515615659_n.jpg',26),
(21,'/usr/local/userPhotos/SALES/27/1455142_612410932150004_1164928356_n.jpg','/usr/local/userPhotos/Big/SALES/27/1455142_612410932150004_1164928356_n.jpg',27),
(22,'/usr/local/userPhotos/SALES/28/1455142_612410932150004_1164928356_n.jpg','/usr/local/userPhotos/Big/SALES/28/1455142_612410932150004_1164928356_n.jpg',28),
(23,'/usr/local/userPhotos/SALES/29/1455142_612410932150004_1164928356_n.jpg','/usr/local/userPhotos/Big/SALES/29/1455142_612410932150004_1164928356_n.jpg',29),
(24,'/usr/local/userPhotos/SALES/30/1455142_612410932150004_1164928356_n.jpg','/usr/local/userPhotos/Big/SALES/30/1455142_612410932150004_1164928356_n.jpg',30),
(25,'/usr/local/userPhotos/SALES/31/1455142_612410932150004_1164928356_n.jpg','/usr/local/userPhotos/Big/SALES/31/1455142_612410932150004_1164928356_n.jpg',31),
(26,'/usr/local/userPhotos/SALES/32/1455142_612410932150004_1164928356_n.jpg','/usr/local/userPhotos/Big/SALES/32/1455142_612410932150004_1164928356_n.jpg',32),
(27,'/usr/local/userPhotos/SALES/33/1455142_612410932150004_1164928356_n.jpg','/usr/local/userPhotos/Big/SALES/33/1455142_612410932150004_1164928356_n.jpg',33),
(28,'/usr/local/userPhotos/SALES/34/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/SALES/34/1476435_558998504180050_2080544610_n.jpg',34),
(29,'/usr/local/userPhotos/SALES/35/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/SALES/35/1476435_558998504180050_2080544610_n.jpg',35),
(30,'/usr/local/userPhotos/SALES/36/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/SALES/36/1476435_558998504180050_2080544610_n.jpg',36),
(31,'/usr/local/userPhotos/SALES/37/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/SALES/37/1476435_558998504180050_2080544610_n.jpg',37),
(32,'/usr/local/userPhotos/SALES/38/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/SALES/38/1476435_558998504180050_2080544610_n.jpg',38),
(33,'/usr/local/userPhotos/SALES/39/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/SALES/39/1476435_558998504180050_2080544610_n.jpg',39),
(34,'/usr/local/userPhotos/SALES/40/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/SALES/40/1476435_558998504180050_2080544610_n.jpg',40),
(35,'/usr/local/userPhotos/SALES/41/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/SALES/41/1476435_558998504180050_2080544610_n.jpg',41),
(36,'/usr/local/userPhotos/SALES/42/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/SALES/42/1476435_558998504180050_2080544610_n.jpg',42),
(37,'/usr/local/userPhotos/SALES/43/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/SALES/43/1476435_558998504180050_2080544610_n.jpg',43),
(38,'/usr/local/userPhotos/SALES/44/1455142_612410932150004_1164928356_n.jpg','/usr/local/userPhotos/Big/SALES/44/1455142_612410932150004_1164928356_n.jpg',44),
(39,'/usr/local/userPhotos/SALES/46/74bd49b849f3aad0e600f3f235558559.jpg','/usr/local/userPhotos/Big/SALES/46/74bd49b849f3aad0e600f3f235558559.jpg',46);

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
  `STATUS` int(6) NOT NULL,
  `MOBILE_NUMBER` varchar(21) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SHOP_ADDRESS` (`ADDRESS`),
  KEY `FK_SHOP_SHOP_CATEGORY` (`SHOP_CATEGORY`)
) ENGINE=MyISAM AUTO_INCREMENT=337 DEFAULT CHARSET=latin1;

/*Data for the table `shop` */

insert into `shop` values
(1,'2013-08-01 14:00:02','2013-08-01 14:00:02','edyfgvghb','dytfgvhnb 15456465 ,./;\'[]\\',1,NULL,0,NULL,2371,NULL,'INR',NULL,'PRODUCT',17,'FFFFFF',1,'000000',7,0,NULL),
(2,'2013-08-01 15:39:49','2013-08-01 15:39:49','Aakriti Boutique','uejgshdsbn 1254686 ,./;\'[]\\',2,NULL,0,NULL,2372,NULL,'INR',NULL,'PRODUCT',19,'FFFFFF',1,'000000',2,0,NULL),
(3,'2013-08-01 17:07:55','2013-08-01 17:07:55','Batra Enterprises',',./;\'[]\\@#$%&529763148 vjgugjbmj',3,NULL,0,NULL,2373,NULL,'INR',NULL,'PRODUCT',8,'FFFFFF',1,'',6,0,NULL),
(4,'2013-08-01 17:27:47','2013-08-01 17:27:47','Apsara Beauty Center','132465789 ,./;\'[]\\@#$%& vbsjhvshcuis ',4,NULL,0,NULL,2374,NULL,'INR',NULL,'PRODUCT',13,'',1,'',10,0,NULL),
(5,'2013-08-01 17:59:43','2013-08-01 17:59:43','Ajay Crocker House','bvhvudhvdfuhsduhd 785255895632 /.,;\'\\][',5,NULL,0,NULL,2375,NULL,'INR',NULL,'PRODUCT',5,'FFFFFF',1,'FFFFFF',6,0,NULL),
(6,'2013-08-01 18:17:01','2013-08-01 18:17:01','Asian Craft','1234567890 /\']\\[;., fyhgjhkj',6,NULL,0,NULL,2376,NULL,'INR',NULL,'PRODUCT',1,'FFFFFF',1,'000000',2,0,NULL),
(7,'2013-08-02 10:35:40','2013-08-02 10:35:40','Ajay Electronics','vbjhsbvjs 135465 ,.\\][\'/',7,NULL,0,NULL,2377,NULL,'INR',NULL,'PRODUCT',24,'FFFFFF',1,'000000',1,0,NULL),
(8,'2013-08-02 11:00:50','2013-08-02 11:00:50','Arora Flower House','vkjdkj 465436 ,.]\'[;',8,NULL,0,NULL,2378,NULL,'INR',NULL,'PRODUCT',12,'FFFFFF',1,'000000',6,0,NULL),
(9,'2013-08-02 11:23:35','2013-08-02 11:23:35','Adhunik Furniture','7646454 /;.,\'[]\\ fyfhvghyhv',9,NULL,0,NULL,2379,NULL,'INR',NULL,'PRODUCT',6,'FFFFFF',1,'000000',3,0,NULL),
(10,'2013-08-02 12:18:41','2013-08-02 12:18:41','Anand Fancy Store','1234567890 vhghjgbjuhujb /.,;\'\\][&%$#@',10,NULL,0,NULL,2380,NULL,'INR',NULL,'PRODUCT',26,'FFFFFF',1,'000000',10,0,NULL),
(11,'2013-08-02 12:44:19','2013-08-02 12:44:19','Arun Sanitary Stores','156456 1234567890 &%$#@',11,NULL,0,NULL,2381,NULL,'INR',NULL,'PRODUCT',3,'FFFFFF',1,'000000',8,0,NULL),
(12,'2013-08-02 13:13:35','2013-08-02 13:13:35','Arun Decorator','yhguygjh 1234567890 ]\'/.,;[\\',12,NULL,0,NULL,2382,NULL,'INR',NULL,'PRODUCT',20,'FFFFFF',1,'000000',4,0,NULL),
(13,'2013-08-02 16:13:33','2013-08-02 16:13:33','Ajay Jewellers','@#$%&,./;\'[]\\',13,NULL,0,NULL,2383,NULL,'INR',NULL,'PRODUCT',2,'FFFFFF',1,'000000',10,0,NULL),
(14,'2013-08-02 16:38:45','2013-08-02 16:38:45','Balaji Telecom','1234567890 .;[]\\\'/,&%$#@',14,NULL,0,NULL,2384,NULL,'INR',NULL,'PRODUCT',10,'FFFFFF',1,'000000',12,0,NULL),
(15,'2013-08-02 17:00:09','2013-08-02 17:00:09','Arora Optical Center','tyuioplkjhgy ,;[]\'/.\\@$%#&',15,NULL,0,NULL,2385,NULL,'INR',NULL,'PRODUCT',4,'FFFFFF',1,'000000',4,0,NULL),
(16,'2013-08-02 17:30:01','2013-08-02 17:30:01','Archana Silk','vghjhbn',16,NULL,0,NULL,2386,NULL,'INR',NULL,'PRODUCT',11,'FFFFFF',1,'000000',12,0,NULL),
(17,'2013-08-02 17:47:43','2013-08-02 17:47:43','Aggarwal Footwear','fthfgyhgyjhbn  /\']\\[;.,',17,NULL,0,NULL,2387,NULL,'INR',NULL,'PRODUCT',25,'FFFFFF',1,'000000',6,0,NULL),
(18,'2013-08-08 12:22:22','2013-08-08 12:22:22','rohan ','hsfbsdh 1111234567890 ,./;\'[]\\|}{\"?@#$%&',18,NULL,0,NULL,2388,NULL,'INR',NULL,'PRODUCT',21,'FFFFFF',1,'000000',10,0,NULL),
(19,'2013-08-08 13:47:10','2013-08-08 13:47:10','Adarsh Motors','fgtyfgyjhgbhjb ,./;\'[]\\@#$%& 1234567890',18,NULL,0,NULL,2388,NULL,'INR',NULL,'PRODUCT',23,'FFFFFF',1,'000000',6,0,NULL),
(27,'2013-08-22 13:22:42','2013-08-22 13:22:42','vikas enterprise',NULL,66,NULL,0,NULL,2432,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(28,'2013-08-22 13:24:10','2013-08-22 13:24:10','vikas enterprise',NULL,67,NULL,0,NULL,2433,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(38,'2013-08-22 16:17:18','2013-08-22 16:17:18','i',NULL,82,NULL,0,NULL,2448,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(39,'2013-08-22 16:18:47','2013-08-22 16:18:47','i',NULL,83,NULL,0,NULL,2449,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(40,'2013-08-22 16:19:35','2013-08-22 16:19:35','i',NULL,84,NULL,0,NULL,2450,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(41,'2013-08-22 16:20:03','2013-08-22 16:20:03','a',NULL,85,NULL,0,NULL,2451,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(42,'2013-08-22 16:21:13','2013-08-22 16:21:13','a',NULL,86,NULL,0,NULL,2452,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(43,'2013-08-22 16:22:13','2013-08-22 16:22:13','a',NULL,87,NULL,0,NULL,2453,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(37,'2013-08-22 16:15:27','2013-08-22 16:15:27','i',NULL,81,NULL,0,NULL,2447,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(44,'2013-08-22 16:23:10','2013-08-22 16:23:10','a',NULL,88,NULL,0,NULL,2454,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(45,'2013-08-22 16:23:54','2013-08-22 16:23:54','a',NULL,89,NULL,0,NULL,2455,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(46,'2013-08-22 16:26:19','2013-08-22 16:26:19','a',NULL,90,NULL,0,NULL,2456,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(47,'2013-08-22 16:27:42','2013-08-22 16:27:42','a',NULL,91,NULL,0,NULL,2457,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL);
insert into `shop` values
(48,'2013-08-22 16:29:12','2013-08-22 16:29:12','a',NULL,92,NULL,0,NULL,2458,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(49,'2013-08-22 16:36:51','2013-08-22 16:36:51','a',NULL,93,NULL,0,NULL,2459,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(50,'2013-08-22 16:45:04','2013-08-22 16:45:04','a',NULL,94,NULL,0,NULL,2460,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(51,'2013-08-22 16:45:33','2013-08-22 16:45:33','a',NULL,95,NULL,0,NULL,2461,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(52,'2013-08-22 16:46:01','2013-08-22 16:46:01','a',NULL,96,NULL,0,NULL,2462,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(53,'2013-08-22 16:47:06','2013-08-22 16:47:06','a',NULL,97,NULL,0,NULL,2463,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(54,'2013-08-22 16:48:26','2013-08-22 16:48:26','a',NULL,98,NULL,0,NULL,2464,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(55,'2013-08-22 16:48:50','2013-08-22 16:48:50','a',NULL,99,NULL,0,NULL,2465,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(56,'2013-08-22 16:58:48','2013-08-22 16:58:48','a',NULL,100,NULL,0,NULL,2466,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(57,'2013-08-22 17:07:58','2013-08-22 17:07:58','q',NULL,107,NULL,0,NULL,2473,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(58,'2013-08-22 17:10:21','2013-08-22 17:10:21','q',NULL,108,NULL,0,NULL,2474,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(59,'2013-08-22 17:11:05','2013-08-22 17:11:05','q',NULL,109,NULL,0,NULL,2475,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(60,'2013-08-22 17:11:54','2013-08-22 17:11:54','q',NULL,110,NULL,0,NULL,2476,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(61,'2013-08-22 17:12:29','2013-08-22 17:12:29','q',NULL,111,NULL,0,NULL,2477,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(62,'2013-08-22 17:15:35','2013-08-22 17:15:35','q',NULL,112,NULL,0,NULL,2478,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(63,'2013-08-22 17:15:51','2013-08-22 17:15:51','q',NULL,113,NULL,0,NULL,2479,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(64,'2013-08-22 17:16:18','2013-08-22 17:16:18','q',NULL,114,NULL,0,NULL,2480,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(65,'2013-08-22 17:16:22','2013-08-22 17:16:22','q',NULL,115,NULL,0,NULL,2481,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(66,'2013-08-22 17:16:36','2013-08-22 17:16:36','q',NULL,116,NULL,0,NULL,2482,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(67,'2013-08-22 17:19:03','2013-08-22 17:19:03','q',NULL,117,NULL,0,NULL,2483,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(68,'2013-08-22 17:19:42','2013-08-22 17:19:42','q',NULL,118,NULL,0,NULL,2484,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(69,'2013-08-22 17:23:19','2013-08-22 17:23:19','q',NULL,119,NULL,0,NULL,2485,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(70,'2013-08-22 17:24:02','2013-08-22 17:24:02','q',NULL,120,NULL,0,NULL,2486,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(71,'2013-08-22 17:24:30','2013-08-22 17:24:30','q',NULL,121,NULL,0,NULL,2487,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(72,'2013-08-22 17:24:52','2013-08-22 17:24:52','q',NULL,122,NULL,0,NULL,2488,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(73,'2013-08-22 17:31:27','2013-08-22 17:31:27','',NULL,123,NULL,0,NULL,2489,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(74,'2013-08-22 17:32:14','2013-08-22 17:32:14','',NULL,124,NULL,0,NULL,2490,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(75,'2013-08-22 17:33:13','2013-08-22 17:33:13','',NULL,125,NULL,0,NULL,2491,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(76,'2013-08-22 17:33:38','2013-08-22 17:33:38','',NULL,126,NULL,0,NULL,2492,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(77,'2013-08-22 17:34:07','2013-08-22 17:34:07','',NULL,127,NULL,0,NULL,2493,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(78,'2013-08-22 17:38:18','2013-08-22 17:38:18','',NULL,128,NULL,0,NULL,2494,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(79,'2013-08-22 17:44:33','2013-08-22 17:44:33','',NULL,131,NULL,0,NULL,2497,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(80,'2013-08-22 17:47:21','2013-08-22 17:47:21','',NULL,132,NULL,0,NULL,2498,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(81,'2013-08-22 17:47:41','2013-08-22 17:47:41','',NULL,133,NULL,0,NULL,2499,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(82,'2013-08-22 17:52:08','2013-08-22 17:52:08','',NULL,134,NULL,0,NULL,2500,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(83,'2013-08-22 17:53:16','2013-08-22 17:53:16','',NULL,135,NULL,0,NULL,2501,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(84,'2013-08-22 17:54:22','2013-08-22 17:54:22','',NULL,136,NULL,0,NULL,2502,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(85,'2013-08-22 17:55:29','2013-08-22 17:55:29','',NULL,137,NULL,0,NULL,2503,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(86,'2013-08-22 17:56:51','2013-08-22 17:56:51','',NULL,138,NULL,0,NULL,2504,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(87,'2013-08-22 17:56:57','2013-08-22 17:56:57','',NULL,139,NULL,0,NULL,2505,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(88,'2013-08-22 17:57:10','2013-08-22 17:57:10','',NULL,140,NULL,0,NULL,2506,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(89,'2013-08-22 18:03:42','2013-08-22 18:03:42','',NULL,141,NULL,0,NULL,2507,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(90,'2013-08-22 18:03:49','2013-08-22 18:03:49','',NULL,142,NULL,0,NULL,2508,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(91,'2013-08-22 18:04:06','2013-08-22 18:04:06','',NULL,143,NULL,0,NULL,2509,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(92,'2013-08-22 18:04:10','2013-08-22 18:04:10','',NULL,144,NULL,0,NULL,2510,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(93,'2013-08-22 18:04:16','2013-08-22 18:04:16','',NULL,145,NULL,0,NULL,2511,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(94,'2013-08-22 18:04:42','2013-08-22 18:04:42','',NULL,146,NULL,0,NULL,2512,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(95,'2013-08-22 18:07:17','2013-08-22 18:07:17','',NULL,147,NULL,0,NULL,2513,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(96,'2013-08-22 18:10:42','2013-08-22 18:10:42','',NULL,148,NULL,0,NULL,2514,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(97,'2013-08-22 18:11:46','2013-08-22 18:11:46','',NULL,149,NULL,0,NULL,2515,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(98,'2013-08-22 18:14:46','2013-08-22 18:14:46','',NULL,150,NULL,0,NULL,2516,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(99,'2013-08-22 18:15:45','2013-08-22 18:15:45','',NULL,151,NULL,0,NULL,2517,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(100,'2013-08-22 18:20:08','2013-08-22 18:20:08','',NULL,152,NULL,0,NULL,2518,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(101,'2013-08-22 18:21:08','2013-08-22 18:21:08','',NULL,153,NULL,0,NULL,2519,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(102,'2013-08-22 18:21:54','2013-08-22 18:21:54','',NULL,154,NULL,0,NULL,2520,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(103,'2013-08-22 18:22:27','2013-08-22 18:22:27','',NULL,155,NULL,0,NULL,2521,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(104,'2013-08-22 18:25:55','2013-08-22 18:25:55','',NULL,156,NULL,0,NULL,2522,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(105,'2013-08-22 18:29:53','2013-08-22 18:29:53','',NULL,157,NULL,0,NULL,2523,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(106,'2013-08-22 18:34:49','2013-08-22 18:34:49','',NULL,158,NULL,0,NULL,2524,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(107,'2013-08-22 18:37:03','2013-08-22 18:37:03','',NULL,159,NULL,0,NULL,2525,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(108,'2013-08-22 18:38:20','2013-08-22 18:38:20','',NULL,160,NULL,0,NULL,2526,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(109,'2013-08-22 18:40:07','2013-08-22 18:40:07','qwertyuiop[',NULL,161,NULL,0,NULL,2527,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(110,'2013-08-22 18:40:30','2013-08-22 18:40:30','qwertyuiop[',NULL,162,NULL,0,NULL,2528,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(111,'2013-08-22 18:41:37','2013-08-22 18:41:37','qwertyuiop[',NULL,163,NULL,0,NULL,2529,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(112,'2013-08-22 18:41:49','2013-08-22 18:41:49','wertyuiop[',NULL,164,NULL,0,NULL,2530,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(113,'2013-08-22 18:43:28','2013-08-22 18:43:28','dfghj',NULL,165,NULL,0,NULL,2531,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(114,'2013-08-22 18:47:30','2013-08-22 18:47:30','dfghj',NULL,166,NULL,0,NULL,2532,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(115,'2013-08-22 18:47:47','2013-08-22 18:47:47','qwertyuiop[',NULL,167,NULL,0,NULL,2533,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(116,'2013-08-22 18:48:30','2013-08-22 18:48:30','qwertyuiop[]\\',NULL,168,NULL,0,NULL,2534,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(117,'2013-08-22 19:00:52','2013-08-22 19:00:52','qwertyuiop[]',NULL,169,NULL,0,NULL,2535,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(118,'2013-08-22 19:09:11','2013-08-22 19:09:11','qwertyuiop[]',NULL,170,NULL,0,NULL,2536,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(119,'2013-08-22 19:09:40','2013-08-22 19:09:40','qwertyuiop[]',NULL,171,NULL,0,NULL,2537,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(120,'2013-08-22 19:10:18','2013-08-22 19:10:18','qwertyuiop[]',NULL,172,NULL,0,NULL,2538,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(121,'2013-08-22 21:06:24','2013-08-22 21:06:24','q',NULL,173,NULL,0,NULL,2539,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(122,'2013-08-22 21:07:53','2013-08-22 21:07:53','b',NULL,174,NULL,0,NULL,2540,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(123,'2013-08-22 21:11:21','2013-08-22 21:11:21','',NULL,175,NULL,0,NULL,2541,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(124,'2013-08-22 21:14:19','2013-08-22 21:14:19','',NULL,176,NULL,0,NULL,2542,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(125,'2013-08-22 21:15:03','2013-08-22 21:15:03','',NULL,177,NULL,0,NULL,2543,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(126,'2013-08-22 21:15:03','2013-08-22 21:15:03','',NULL,178,NULL,0,NULL,2544,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(127,'2013-08-22 21:16:01','2013-08-22 21:16:01','',NULL,179,NULL,0,NULL,2545,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(128,'2013-08-22 21:16:10','2013-08-22 21:16:10','',NULL,180,NULL,0,NULL,2546,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(129,'2013-08-22 21:16:24','2013-08-22 21:16:24','',NULL,181,NULL,0,NULL,2547,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(130,'2013-08-22 21:17:38','2013-08-22 21:17:38','',NULL,182,NULL,0,NULL,2548,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(131,'2013-08-22 21:18:28','2013-08-22 21:18:28','',NULL,183,NULL,0,NULL,2549,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(132,'2013-08-22 21:19:29','2013-08-22 21:19:29','',NULL,184,NULL,0,NULL,2550,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(133,'2013-08-22 21:21:05','2013-08-22 21:21:05','',NULL,185,NULL,0,NULL,2551,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(134,'2013-08-22 21:23:35','2013-08-22 21:23:35','asdfhk;',NULL,186,NULL,0,NULL,2552,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(135,'2013-08-22 21:25:08','2013-08-22 21:25:08','asdfhk;',NULL,187,NULL,0,NULL,2553,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(136,'2013-08-22 21:31:44','2013-08-22 21:31:44','',NULL,188,NULL,0,NULL,2554,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(137,'2013-08-22 21:33:17','2013-08-22 21:33:17','',NULL,189,NULL,0,NULL,2555,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(138,'2013-08-22 22:13:58','2013-08-22 22:13:58','',NULL,190,NULL,0,NULL,2556,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(139,'2013-08-22 22:23:03','2013-08-22 22:23:03','',NULL,191,NULL,0,NULL,2557,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(140,'2013-08-22 22:39:27','2013-08-22 22:39:27','c',NULL,192,NULL,0,NULL,2558,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(141,'2013-08-22 22:44:06','2013-08-22 22:44:06','asdfghjk',NULL,193,NULL,0,NULL,2559,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(142,'2013-08-22 22:46:26','2013-08-22 22:46:26','vikas enterprise',NULL,194,NULL,0,NULL,2560,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(143,'2013-08-22 22:54:54','2013-08-22 22:54:54','c',NULL,195,NULL,0,NULL,2561,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(144,'2013-08-22 22:58:04','2013-08-22 22:58:04','',NULL,196,NULL,0,NULL,2562,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(145,'2013-08-22 23:03:07','2013-08-22 23:03:07','',NULL,197,NULL,0,NULL,2563,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(146,'2013-08-22 23:11:04','2013-08-22 23:11:04','k',NULL,198,NULL,0,NULL,2564,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(147,'2013-08-22 23:13:19','2013-08-22 23:13:19','o',NULL,199,NULL,0,NULL,2565,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(148,'2013-08-22 23:16:14','2013-08-22 23:16:14','o',NULL,200,NULL,0,NULL,2566,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(149,'2013-08-22 23:43:02','2013-08-22 23:43:02','',NULL,201,NULL,0,NULL,2567,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(150,'2013-08-23 10:06:54','2013-08-23 10:06:54','',NULL,202,NULL,0,NULL,2568,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(151,'2013-08-23 10:07:55','2013-08-23 10:07:55','qwertyuio',NULL,203,NULL,0,NULL,2569,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(152,'2013-08-23 10:11:28','2013-08-23 10:11:28','','',204,NULL,0,NULL,2570,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(153,'2013-08-23 10:14:46','2013-08-23 10:14:46','c','<p>qwertyuiop[asdfghjkl;</p>',205,NULL,0,NULL,2571,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(154,'2013-08-23 10:29:16','2013-08-23 10:29:16','vikas enterprise','<p>à¤®à¥à¤‚à¤¬à¤ˆ: à¤­à¤¾à¤°à¤¤à¥€à¤¯ à¤•à¥à¤°à¤¿à¤•à¥‡à¤Ÿ à¤¬à¥‹à¤°à¥à¤¡ à¤•à¥€ à¤µà¤¿à¤¤à¥à¤¤à¥€à¤¯ à¤µà¤°à¥à¤· 2012-13 à¤®à¥‡à¤‚ à¤•à¥à¤² à¤†à¤¯ 350 à¤•à¤°à¥‹à¤¡à¤¼ à¤°à¥à¤ªà¤¯à¥‡ à¤œà¤¬à¤•à¤¿ à¤‰à¤¸à¤•à¤¾ à¤¸à¤•à¤² à¤°à¤¾à¤œà¤¸à¥à¤µ 950 à¤•à¤°à¥‹à¤¡à¤¼ à¤°à¥à¤ªà¤¯à¥‡ à¤°à¤¹à¤¾à¥¤ à¤¦à¥à¤¨à¤¿à¤¯à¤¾ à¤•à¤¾ à¤¸à¤¬à¤¸à¥‡ à¤§à¤¨à¥€ à¤•à¥à¤°à¤¿à¤•à¥‡à¤Ÿ à¤¬à¥‹à¤°à¥à¤¡ à¤®à¤¾à¤¨à¥‡ à¤œà¤¾à¤¨à¥‡ à¤µà¤¾à¤²à¥‡ à¤¬à¥€à¤¸à¥€à¤¸à¥€à¤†à¤ˆ à¤¨à¥‡ 2011-12 à¤®à¥‡à¤‚ 382.36 à¤•à¤°à¥‹à¤¡à¤¼ à¤°à¥à¤ªà¤¯à¥‡ à¤•à¤¾ à¤²à¤¾à¤­ à¤•à¤®à¤¾à¤¯à¤¾à¥¤ à¤¬à¥€à¤¸à¥€à¤¸à¥€à¤†à¤ˆ à¤µà¤¿à¤¤à¥à¤¤à¥€à¤¯ à¤¸à¤®à¤¿à¤¤à¤¿ à¤•à¥€ à¤¦à¤¿à¤²à¥à¤²à¥€ à¤®à¥‡à¤‚ à¤¬à¥ˆà¤ à¤• à¤•à¥‡ à¤¬à¤¾à¤¦ à¤¬à¥‹à¤°à¥à¤¡ à¤•à¥‡ à¤•à¥‹à¤·à¤¾à¤§à¥à¤¯à¤•à¥à¤· à¤°à¤µà¤¿ à¤¸à¤¾à¤µà¤‚à¤¤ à¤¨à¥‡ à¤•à¤¹à¤¾ à¤•à¤¿ à¤•à¥à¤² à¤†à¤¯ à¤•à¥€ à¤°à¤¾à¤¶à¤¿ à¤‡à¤¸ à¤¤à¤°à¤¹ à¤¸à¥‡ à¤¨à¤¿à¤•à¤¾à¤²à¥€ à¤—à¤ˆ à¤¹à¥ˆ à¤•à¤¿ à¤‰à¤¸ à¤ªà¤° à¤•à¤¿à¤¸à¥€ à¤¤à¤°à¤¹ à¤•à¥‡ à¤•à¤° à¤•à¤¾ à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤¨à¤¹à¥€à¤‚ à¤•à¤°à¤¨à¤¾ à¤¹à¥ˆà¥¤ à¤‰à¤¨à¥à¤¹à¥‹à¤‚à¤¨à¥‡ à¤•à¤¹à¤¾, \'\'à¤µà¤¿à¤¤à¥à¤¤ à¤¸à¤®à¤¿à¤¤à¤¿ à¤¨à¥‡ à¤–à¤¾à¤¤à¥‹à¤‚ à¤•à¥‹ à¤®à¤‚à¤œà¥‚à¤°à¥€ à¤¦à¥€ à¤”à¤° à¤‰à¤¨à¥à¤¹à¥‡à¤‚ à¤¬à¥‹à¤°à¥à¤¡ à¤•à¥€ à¤•à¤¾à¤°à¥à¤¯à¤•à¤¾à¤°à¤¿à¤£à¥€ à¤•à¥‡ à¤¸à¤®à¤•à¥à¤· à¤°à¤–à¤¾ à¤œà¤¾à¤à¤—à¤¾à¥¤ à¤‰à¤¸à¤•à¥€ à¤¸à¤¿à¤¤à¤‚à¤¬à¤° à¤•à¥‡ à¤ªà¤¹à¤²à¥‡ à¤¸à¤ªà¥à¤¤à¤¾à¤¹ à¤®à¥‡à¤‚ à¤¬à¥ˆà¤ à¤• à¤¹à¥‹à¤¨à¥€ à¤šà¤¾à¤¹à¤¿à¤à¥¤\'\' à¤•à¤¾à¤°à¥à¤¯à¤•à¤¾à¤°à¤¿à¤£à¥€ à¤¬à¥‹à¤°à¥à¤¡&nbsp;<strong>...</strong></p>',206,NULL,0,NULL,2572,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(155,'2013-08-23 13:01:29','2013-08-23 13:01:29','c','',207,NULL,0,NULL,2573,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(156,'2013-08-23 13:24:45','2013-08-23 13:24:45','vikas enterprise',NULL,209,NULL,0,NULL,2575,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(157,'2013-08-23 13:42:48','2013-08-23 13:42:48','vikas enterprise',NULL,210,NULL,0,NULL,2576,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(158,'2013-08-23 15:02:23','2013-08-23 15:02:23','Vijay singh bisht01','vijay singh bisht',211,NULL,0,NULL,2577,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(159,'2013-08-23 15:15:25','2013-08-23 15:15:25','vij',NULL,216,NULL,0,NULL,2582,NULL,'INR',NULL,'PRODUCT',26,NULL,1,NULL,1,0,NULL),
(160,'2013-08-23 16:09:32','2013-08-23 16:09:32','book bussiness',NULL,221,NULL,0,NULL,2586,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(161,'2013-08-23 16:14:40','2013-08-23 16:14:40','book bussiness',NULL,225,NULL,0,NULL,2590,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(162,'2013-08-23 16:16:09','2013-08-23 16:16:09','book bussiness','werty',227,NULL,0,NULL,2592,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(163,'2013-08-23 16:27:46','2013-08-23 16:27:46','local shop','qwertyui',228,NULL,0,NULL,2593,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(164,'2013-08-23 16:57:44','2013-08-23 16:57:44','book bussiness',NULL,232,NULL,0,NULL,2597,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(165,'2013-08-23 17:00:17','2013-08-23 17:00:17','book bussiness',NULL,235,NULL,0,NULL,2600,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(166,'2013-08-23 17:10:04','2013-08-23 17:10:04','vikas enterprise',NULL,0,NULL,0,NULL,2610,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(167,'2013-08-23 17:30:49','2013-08-23 17:30:49','vikas enterprise','qwertyuiop[',0,NULL,0,NULL,249,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(168,'2013-08-23 17:37:25','2013-08-23 17:37:25','vikas enterprise','qwertyuiop[',0,NULL,0,NULL,267,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(169,'2013-08-23 17:41:17','2013-08-23 17:41:17','vikas enterprise',NULL,0,NULL,0,NULL,2646,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(170,'2013-08-23 17:41:20','2013-08-23 17:41:20','vikas enterprise',NULL,0,NULL,0,NULL,2647,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(171,'2013-08-23 17:51:38','2013-08-23 17:51:38','vikas enterprise','wertyuio',0,NULL,0,NULL,273,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(172,'2013-08-23 17:54:24','2013-08-23 17:54:24','vikas enterprise',NULL,0,NULL,0,NULL,2655,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(173,'2013-08-23 18:30:44','2013-08-23 18:30:44','vikas enterprise','qwertyui',0,NULL,0,NULL,295,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(174,'2013-08-23 19:02:53','2013-08-23 19:02:53','vikas enterprise','qwertyuiop',317,NULL,0,NULL,2701,NULL,'INR',NULL,'PRODUCT',13,NULL,1,NULL,1,0,NULL),
(175,'2013-08-23 19:03:13','2013-08-23 19:03:13','vikas enterprise','qwertyuiop',318,NULL,0,NULL,2702,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(176,'2013-08-23 19:07:20','2013-08-23 19:07:20','new',NULL,0,NULL,0,NULL,2705,NULL,'INR',NULL,'PRODUCT',3,NULL,1,NULL,1,0,NULL),
(177,'2013-08-23 19:07:26','2013-08-23 19:07:26','new',NULL,0,NULL,0,NULL,2706,NULL,'INR',NULL,'PRODUCT',3,NULL,1,NULL,1,0,NULL),
(178,'2013-08-23 19:08:04','2013-08-23 19:08:04','new',NULL,0,NULL,0,NULL,2707,NULL,'INR',NULL,'PRODUCT',3,NULL,1,NULL,1,0,NULL),
(179,'2013-08-23 19:08:59','2013-08-23 19:08:59','new','qwertyuiop[]',319,NULL,0,NULL,2708,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(180,'2013-08-23 20:38:55','2013-08-23 20:38:55','vikas ','Web Address in Myby4u',0,NULL,0,NULL,2709,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL),
(181,'2013-08-23 20:40:17','2013-08-23 20:40:17','vikas ','Web Address in Myby4u',320,NULL,0,NULL,2710,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(182,'2013-08-23 20:42:25','2013-08-23 20:42:25','vikas ','Web Address in Myby4u',321,NULL,0,NULL,2711,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(183,'2013-08-23 20:47:16','2013-08-23 20:47:16','vikas ','Web Address in Myby4u',322,NULL,0,NULL,2712,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(184,'2013-08-23 20:47:58','2013-08-23 20:47:58','vikas ','Web Address in Myby4u',323,NULL,0,NULL,2713,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(185,'2013-08-23 20:52:24','2013-08-23 20:52:24','vikas enterprise','asdfghj',0,NULL,0,NULL,2714,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(186,'2013-08-23 21:10:28','2013-08-23 21:10:28','vikas enterprise','asdfghj',326,NULL,0,NULL,2717,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(187,'2013-08-23 21:10:57','2013-08-23 21:10:57','vikas enterprise','asdfghj',327,NULL,0,NULL,2718,NULL,'INR',NULL,'PRODUCT',NULL,NULL,1,NULL,1,0,NULL),
(188,'2013-08-23 21:14:52','2013-08-23 21:14:52','saloon','saloon\r\nsaloon\r\nsaloon',330,NULL,0,NULL,2722,NULL,'INR',NULL,'PRODUCT',18,NULL,1,NULL,1,0,NULL),
(189,'2013-08-23 21:32:26','2013-08-23 21:32:26','vikas enterprise','fghjkl',335,NULL,0,NULL,2729,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(190,'2013-08-24 10:35:57','2013-08-24 10:35:57','book bussiness','qwertyui',336,NULL,0,NULL,2732,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(191,'2013-08-24 10:42:37','2013-08-24 10:42:37','vikas enterprise','qwertyuio',337,NULL,0,NULL,2734,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(192,'2013-08-24 10:56:29','2013-08-24 10:56:29','book bussiness',NULL,0,NULL,0,NULL,2735,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(193,'2013-08-24 11:08:42','2013-08-24 11:08:42','vikas enterprise','asdfghjk',0,NULL,0,NULL,2737,NULL,'INR',NULL,'PRODUCT',20,NULL,1,NULL,1,0,NULL),
(194,'2013-08-24 11:38:04','2013-08-24 11:38:04','hello',NULL,0,NULL,0,NULL,2741,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL),
(195,'2013-08-24 11:48:47','2013-08-24 11:48:47','vikas enterprise',NULL,0,NULL,0,NULL,2746,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL),
(196,'2013-08-24 11:49:54','2013-08-24 11:49:54','qqqq',NULL,0,NULL,0,NULL,2748,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(197,'2013-08-24 12:02:14','2013-08-24 12:02:14','qqqq','qwertyu',362,NULL,0,NULL,2749,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(198,'2013-08-24 12:30:27','2013-08-24 12:30:27','god','asdfghjkl;',369,NULL,0,NULL,2752,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(199,'2013-08-24 13:43:45','2013-08-24 13:43:45','raw','updateasdfghjkl;',0,NULL,0,NULL,2753,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(200,'2013-08-24 13:48:18','2013-08-24 13:48:18','qwertyuio',NULL,0,NULL,0,NULL,2754,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL),
(201,'2013-08-24 13:51:13','2013-08-24 13:51:13','qwertyuio',NULL,0,NULL,0,NULL,2755,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL),
(202,'2013-08-24 13:51:50','2013-08-24 13:51:50','qwertyuio',NULL,0,NULL,0,NULL,2756,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL),
(203,'2013-08-24 13:51:53','2013-08-24 13:51:53','qwertyuio',NULL,0,NULL,0,NULL,2757,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL),
(204,'2013-08-24 13:52:23','2013-08-24 13:52:23','qwertyuio',NULL,0,NULL,0,NULL,2758,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL),
(205,'2013-08-24 13:52:43','2013-08-24 13:52:43','qwertyuio',NULL,0,NULL,0,NULL,2759,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL),
(206,'2013-08-24 13:52:46','2013-08-24 13:52:46','qwertyuio',NULL,0,NULL,0,NULL,2760,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL),
(207,'2013-08-24 13:53:27','2013-08-24 13:53:27','qwertyuio',NULL,0,NULL,0,NULL,2761,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL),
(208,'2013-08-24 13:55:50','2013-08-24 13:55:50','qwertyuio',NULL,426,NULL,0,NULL,2762,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL),
(209,'2013-08-24 14:02:51','2013-08-24 14:02:51','qwertyuio','qwertyuiop[]',0,NULL,0,NULL,2763,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL),
(210,'2013-08-24 14:03:17','2013-08-24 14:03:17','vikas enterprise',NULL,435,NULL,0,NULL,2764,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(211,'2013-08-24 14:07:39','2013-08-24 14:07:39','vikas enterprise','qwertyuio',0,NULL,0,NULL,2765,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(212,'2013-08-24 14:46:58','2013-08-24 14:46:58','vikas enterprise',NULL,443,NULL,0,NULL,2766,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(213,'2013-08-24 14:48:50','2013-08-24 14:48:50','vikas enterprise','sdfghjkl;\'',0,NULL,0,NULL,2767,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(214,'2013-08-24 14:57:24','2013-08-24 14:57:24','vikas enterprise',NULL,0,NULL,0,NULL,2768,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL),
(215,'2013-08-24 15:02:44','2013-08-24 15:02:44','vikas enterprise','asdghjkl;\'',0,NULL,0,NULL,2769,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL),
(216,'2013-08-24 15:13:25','2013-08-24 15:13:25','vikas enterprise','hk\r\nsdfghjkl;\'\r\n',456,NULL,0,NULL,2770,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(217,'2013-08-24 15:27:14','2013-08-24 15:27:14','book bussiness','wertuoasdfghjkl;\'\r\n',469,NULL,0,NULL,2771,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(218,'2013-08-24 15:35:41','2013-08-24 15:35:41','vikas enterprise','city wallpaper',2772,NULL,0,NULL,470,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(219,'2013-08-24 15:44:30','2013-08-24 15:44:30','vikas enterprise',NULL,480,NULL,0,NULL,2782,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(220,'2013-08-24 15:46:48','2013-08-24 15:46:48','vikas enterprise',NULL,481,NULL,0,NULL,2783,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(221,'2013-08-24 15:46:50','2013-08-24 15:46:50','vikas enterprise',NULL,482,NULL,0,NULL,2784,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(222,'2013-08-24 15:47:20','2013-08-24 15:47:20','vikas enterprise',NULL,483,NULL,0,NULL,2785,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(223,'2013-08-24 15:48:42','2013-08-24 15:48:42','vikas enterprise',NULL,484,NULL,0,NULL,2786,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(224,'2013-08-24 15:48:45','2013-08-24 15:48:45','vikas enterprise',NULL,485,NULL,0,NULL,2787,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(225,'2013-08-24 15:48:59','2013-08-24 15:48:59','vikas enterprise',NULL,486,NULL,0,NULL,2788,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(226,'2013-08-24 15:49:35','2013-08-24 15:49:35','vikas enterprise',NULL,487,NULL,0,NULL,2789,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(227,'2013-08-24 15:51:15','2013-08-24 15:51:15','vikas enterprise',NULL,488,NULL,0,NULL,2790,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(228,'2013-08-24 15:51:53','2013-08-24 15:51:53','vikas enterprise','qwertyuiop',2791,NULL,0,NULL,489,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(229,'2013-08-24 15:57:55','2013-08-24 15:57:55','weryi','asdfghjkl;',490,NULL,0,NULL,2792,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(230,'2013-08-25 10:39:50','2013-08-25 10:39:50','book bussiness','<p>asdfghjkl;\'</p>',491,NULL,0,NULL,2793,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(231,'2013-08-24 16:17:58','2013-08-24 16:17:58','sdfgh',NULL,497,NULL,0,NULL,2799,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(232,'2013-08-24 16:26:24','2013-08-24 16:26:24','vikas enterprise','asdfghj',503,NULL,0,NULL,2805,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(233,'2013-08-25 10:51:03','2013-08-25 10:51:03','vikas enterprise','asdfghjkasdfghjkl;\'\r\n\r\nasdfghjkl;\'',509,NULL,0,NULL,2811,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(234,'2013-08-28 09:59:47','2013-08-28 09:59:47','asdfghj','bbbbbb',570,NULL,0,NULL,2873,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(235,'2013-08-26 13:39:22','2013-08-26 13:39:22','asdfghj',NULL,571,NULL,0,NULL,2874,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(236,'2013-08-26 13:40:28','2013-08-26 13:40:28','asdfghj',NULL,572,NULL,0,NULL,2875,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(237,'2013-08-26 13:41:23','2013-08-26 13:41:23','asdfghj',NULL,573,NULL,0,NULL,2876,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(238,'2013-08-26 13:41:42','2013-08-26 13:41:42','',NULL,574,NULL,0,NULL,2877,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(239,'2013-08-26 13:45:17','2013-08-26 13:45:17','asdfghj',NULL,575,NULL,0,NULL,2878,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(240,'2013-08-26 13:55:08','2013-08-26 13:55:08','qwert',NULL,576,NULL,0,NULL,2879,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(241,'2013-08-26 14:07:01','2013-08-26 14:07:01','qwert',NULL,577,NULL,0,NULL,2880,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL),
(242,'2013-08-26 15:02:58','2013-08-26 15:02:58','aiuytrew',NULL,578,NULL,0,NULL,2881,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(243,'2013-08-26 15:04:33','2013-08-26 15:04:33','asdfgh',NULL,579,NULL,0,NULL,2882,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL),
(244,'2013-08-26 20:53:18','2013-08-26 20:53:18','ttroy','poiuytrewqazxcghjkl;/mnbvcx',588,NULL,0,NULL,2894,NULL,'INR',NULL,'PRODUCT',1,NULL,1,NULL,1,0,NULL),
(245,'2013-08-27 10:19:41','2013-08-27 10:19:41','asdfghj','',592,NULL,0,NULL,2911,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(246,'2013-08-28 23:01:49','2013-08-28 23:01:49','event_or_place_details','event_or_place_detailsevent_or_place_detailsevent_or_place_detailsevent_or_place_detailsevent_or_place_detailsevent_or_place_detailsevent_or_place_detailsevent_or_place_detailsevent_or_place_detailsevent_or_place_detailsevent_or_place_detailsv',596,NULL,0,NULL,3011,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(247,'2013-09-10 11:50:28','2013-09-10 11:50:28','asdfghj','asdfgh',599,NULL,0,NULL,3021,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(248,'2013-09-10 11:58:27','2013-09-10 11:58:27','vikas',NULL,600,NULL,0,NULL,3022,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(249,'2013-09-11 20:09:50','2013-09-11 20:09:50','djfkhal',NULL,603,NULL,0,NULL,3025,NULL,'INR',NULL,'PRODUCT',9,NULL,1,NULL,1,0,NULL),
(250,'2013-09-11 20:09:54','2013-09-11 20:09:54','djfkhal',NULL,604,NULL,0,NULL,3026,NULL,'INR',NULL,'PRODUCT',9,NULL,1,NULL,1,0,NULL),
(251,'2013-09-11 20:10:06','2013-09-11 20:10:06','djfkhal',NULL,605,NULL,0,NULL,3027,NULL,'INR',NULL,'PRODUCT',9,NULL,1,NULL,1,0,NULL),
(252,'2013-09-11 20:10:27','2013-09-11 20:10:27','djfkhal',NULL,606,NULL,0,NULL,3028,NULL,'INR',NULL,'PRODUCT',9,NULL,1,NULL,1,0,NULL),
(253,'2013-09-11 20:19:40','2013-09-11 20:19:40','lgjhg',NULL,607,NULL,0,NULL,3029,NULL,'INR',NULL,'PRODUCT',6,NULL,1,NULL,1,0,NULL),
(254,'2013-09-11 22:40:26','2013-09-11 22:40:26','hgjh','qwert',608,NULL,0,NULL,3030,NULL,'INR',NULL,'PRODUCT',13,NULL,1,NULL,1,0,NULL),
(255,'2013-09-11 22:22:46','2013-09-11 22:22:46','sdfg',NULL,609,NULL,0,NULL,3034,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(256,'2013-09-11 22:41:05','2013-09-11 22:41:05','ffhghf',NULL,610,NULL,0,NULL,3035,NULL,'INR',NULL,'PRODUCT',5,NULL,1,NULL,1,0,NULL),
(257,'2013-09-11 22:53:24','2013-09-11 22:53:24','hjgh45655',NULL,611,NULL,0,NULL,3037,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(258,'2013-09-12 10:04:10','2013-09-12 10:04:10','ertyu',NULL,612,NULL,0,NULL,3038,NULL,'INR',NULL,'PRODUCT',5,NULL,1,NULL,1,0,NULL),
(259,'2013-09-12 11:03:10','2013-09-12 11:03:10','gyutv','qwert',613,NULL,0,NULL,3039,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL),
(260,'2013-09-12 11:32:43','2013-09-12 11:32:43','eqeweq',NULL,614,NULL,0,NULL,3040,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(261,'2013-09-12 11:47:46','2013-09-12 11:47:46','www',NULL,615,NULL,0,NULL,3041,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(262,'2013-09-12 12:31:20','2013-09-12 12:31:20','asdfghj',NULL,616,NULL,0,NULL,3042,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(263,'2013-09-12 12:35:14','2013-09-12 12:35:14','asdfghj',NULL,617,NULL,0,NULL,3043,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(264,'2013-09-12 15:40:59','2013-09-12 15:40:59','asdfghj','asdfgh',618,NULL,0,NULL,3044,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(265,'2013-09-12 12:50:22','2013-09-12 12:50:22','asdfghj',NULL,619,NULL,0,NULL,3045,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(266,'2013-09-12 12:55:50','2013-09-12 12:55:50','asdfghj',NULL,620,NULL,0,NULL,3046,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(267,'2013-09-12 13:24:58','2013-09-12 13:24:58','hhh',NULL,621,NULL,0,NULL,3047,NULL,'INR',NULL,'PRODUCT',9,NULL,1,NULL,1,0,NULL),
(268,'2013-09-12 13:29:10','2013-09-12 13:29:10','aaaaa',NULL,622,NULL,0,NULL,3048,NULL,'INR',NULL,'PRODUCT',18,NULL,1,NULL,1,0,NULL),
(269,'2013-09-12 13:59:30','2013-09-12 13:59:30','qwer-',NULL,623,NULL,0,NULL,3049,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL),
(270,'2013-09-12 14:02:56','2013-09-12 14:02:56','qwer-',NULL,624,NULL,0,NULL,3050,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL),
(271,'2013-09-12 14:03:01','2013-09-12 14:03:01','qwer-',NULL,625,NULL,0,NULL,3051,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL),
(272,'2013-09-12 14:03:06','2013-09-12 14:03:06','qwer123456',NULL,626,NULL,0,NULL,3052,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL),
(273,'2013-09-12 14:26:58','2013-09-12 14:26:58','asdfghj','ssssssssss',627,NULL,0,NULL,3053,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(274,'2013-09-12 15:48:23','2013-09-12 15:48:23','asdfghj','bbb',628,NULL,0,NULL,3054,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(275,'2013-09-12 16:07:18','2013-09-12 16:07:18','asdfghj',NULL,629,NULL,0,NULL,3055,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(276,'2013-09-12 17:16:26','2013-09-12 17:16:26','qwer-',NULL,630,NULL,0,NULL,3056,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(277,'2013-09-12 17:47:29','2013-09-12 17:47:29','asdf',NULL,631,NULL,0,NULL,3057,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(278,'2013-09-12 18:10:04','2013-09-12 18:10:04','asdfghj',NULL,632,NULL,0,NULL,3058,NULL,'INR',NULL,'PRODUCT',10,NULL,1,NULL,1,0,NULL),
(279,'2013-09-12 20:12:57','2013-09-12 20:12:57','aaaa','dfghj',633,NULL,0,NULL,3059,NULL,'INR',NULL,'PRODUCT',9,NULL,1,NULL,1,0,NULL),
(280,'2013-09-13 10:00:18','2013-09-13 10:00:18','qwerty',NULL,635,NULL,0,NULL,3061,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(281,'2013-09-13 11:02:41','2013-09-13 11:02:41','asdfghj',NULL,636,NULL,0,NULL,3062,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(282,'2013-09-13 11:06:59','2013-09-13 11:06:59','test',NULL,637,NULL,0,NULL,3063,NULL,'INR',NULL,'PRODUCT',13,NULL,1,NULL,1,0,NULL),
(283,'2013-09-13 11:13:45','2013-09-13 11:13:45','gyutv',NULL,638,NULL,0,NULL,3064,NULL,'INR',NULL,'PRODUCT',10,NULL,1,NULL,1,0,NULL),
(284,'2013-09-13 11:21:37','2013-09-13 11:21:37','asdfghj',NULL,639,NULL,0,NULL,3065,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(285,'2013-09-13 11:27:41','2013-09-13 11:27:41','asdfghj',NULL,640,NULL,0,NULL,3066,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(286,'2013-09-13 11:46:23','2013-09-13 11:46:23','asdfghj',NULL,641,NULL,0,NULL,3067,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(287,'2013-09-13 14:05:22','2013-09-13 14:05:22','111','tttttt',642,NULL,0,NULL,3068,NULL,'INR',NULL,'PRODUCT',3,NULL,1,NULL,1,0,NULL),
(288,'2013-09-13 13:28:07','2013-09-13 13:28:07','123','asdfgh',643,NULL,0,NULL,3069,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(289,'2013-09-13 15:55:40','2013-09-13 15:55:40','asdfghj',' ',644,NULL,0,NULL,3070,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(290,'2013-09-13 15:56:18','2013-09-13 15:56:18','asdfghj',NULL,645,NULL,0,NULL,3071,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(291,'2013-09-13 21:10:03','2013-09-13 21:10:03','11','asdfghj',646,NULL,0,NULL,3072,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(292,'2013-09-14 13:26:16','2013-09-14 13:26:16','hello','<p>qwertyuiop[asdfghjkl;xcvbnm,.</p>',647,NULL,0,NULL,3073,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL),
(293,'2013-09-16 11:12:32','2013-09-16 11:12:32','asdfghjk','asdfghj',648,NULL,0,NULL,3074,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(327,'2013-11-28 16:31:16','2013-11-28 16:31:16','quort','hello this is test',725,NULL,0,NULL,3209,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(294,'2013-09-17 18:13:23','2013-09-17 18:13:23','aa','asdfghjkl;\'\r\nasdfghjkl;\'\r\n',651,NULL,0,NULL,3083,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(295,'2013-09-18 11:13:23','2013-09-18 11:13:23','111111111','ttttttt',653,NULL,0,NULL,3087,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(296,'2013-09-18 11:16:58','2013-09-18 11:16:58','1111','www',654,NULL,0,NULL,3088,NULL,'INR',NULL,'PRODUCT',22,NULL,1,NULL,1,0,NULL),
(297,'2013-09-18 18:10:05','2013-09-18 18:10:05','hh','bbbb',656,NULL,0,NULL,3125,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(298,'2013-09-18 18:33:23','2013-09-18 18:33:23','bb',NULL,658,NULL,0,NULL,3128,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(299,'2013-09-18 20:26:22','2013-09-18 20:26:22','n',' nnn',659,NULL,0,NULL,3129,NULL,'INR',NULL,'PRODUCT',8,NULL,1,NULL,1,0,NULL),
(300,'2013-09-19 16:16:42','2013-09-19 16:16:42','hhggh','ddd',660,NULL,0,NULL,3130,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(301,'2013-09-23 13:46:18','2013-09-23 13:46:18','hjkhjh','jkhjhjkhjk',661,NULL,0,NULL,3131,NULL,'INR',NULL,'PRODUCT',6,NULL,1,NULL,1,0,NULL),
(302,'2013-09-23 14:01:23','2013-09-23 14:01:23','ghjgjhg','hjgjhgjh',662,NULL,0,NULL,3132,NULL,'INR',NULL,'PRODUCT',3,NULL,1,NULL,1,0,NULL),
(303,'2013-09-24 12:51:15','2013-09-24 12:51:15','teertrte','hgfhgfh',663,NULL,0,NULL,3133,NULL,'INR',NULL,'PRODUCT',6,NULL,1,NULL,1,0,NULL),
(304,'2013-09-25 15:14:09','2013-09-25 15:14:09','ATRA BOOK DEPO','ALL BOOKS ARE AVAILABLE',664,NULL,0,NULL,3134,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(305,'2013-09-26 17:45:39','2013-09-26 17:45:39','gjh','jkhkjhjhjkhk',665,NULL,0,NULL,3135,NULL,'INR',NULL,'PRODUCT',1,NULL,1,NULL,1,0,NULL),
(306,'2013-09-26 22:42:31','2013-09-26 22:42:31','jkjjjkjkjkjk','kjjjkjkjkjkjkjk',666,NULL,0,NULL,3136,NULL,'INR',NULL,'PRODUCT',1,NULL,1,NULL,1,0,NULL),
(307,'2013-09-26 22:57:02','2013-09-26 22:57:02','jkjkjjk','hjhjhjgffgfgsdsddssdssdsd',667,NULL,0,NULL,3137,NULL,'INR',NULL,'PRODUCT',3,NULL,1,NULL,1,0,NULL),
(308,'2013-09-27 10:59:09','2013-09-27 10:59:09','hjhjhjhj','hjhfggfd jkhkjhhk',668,NULL,0,NULL,3138,NULL,'INR',NULL,'PRODUCT',1,NULL,1,NULL,1,0,NULL),
(309,'2013-09-27 11:40:07','2013-09-27 11:40:07','ki','ki',669,NULL,0,NULL,3139,NULL,'INR',NULL,'PRODUCT',3,NULL,1,NULL,1,0,NULL),
(310,'2013-09-27 12:04:28','2013-09-27 12:04:28','kalu','quantam',670,NULL,0,NULL,3140,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(311,'2013-09-27 12:42:46','2013-09-27 12:42:46','mo','mo',671,NULL,0,NULL,3141,NULL,'INR',NULL,'PRODUCT',22,NULL,1,NULL,1,0,NULL),
(312,'2013-09-27 13:43:23','2013-09-27 13:43:23','j','hjhhjhhjhjhjhj',672,NULL,0,NULL,3142,NULL,'INR',NULL,'PRODUCT',2,NULL,1,NULL,1,0,NULL),
(313,'2013-09-27 15:51:21','2013-09-27 15:51:21','kl','jkkkkjjjkkjkjjkkjkjkkkkkkkkkkkkkkkkkkkk',673,NULL,0,NULL,3143,NULL,'INR',NULL,'PRODUCT',6,NULL,1,NULL,1,0,NULL),
(314,'2013-09-29 10:30:48','2013-09-29 10:30:48','kljl',NULL,674,NULL,0,NULL,3144,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(315,'2013-10-02 10:09:26','2013-10-02 10:09:26','iuoi',NULL,675,NULL,0,NULL,3145,NULL,'INR',NULL,'PRODUCT',6,NULL,1,NULL,1,0,NULL),
(316,'2013-10-02 10:14:06','2013-10-02 10:14:06','iuoi','hhhh',676,NULL,0,NULL,3146,NULL,'INR',NULL,'PRODUCT',6,NULL,1,NULL,1,0,NULL),
(317,'2013-10-03 10:10:22','2013-10-03 10:10:22','book','HTML5,CSS3 ',677,NULL,0,NULL,3147,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(318,'2013-10-04 11:19:59','2013-10-04 11:19:59','iouo','llllklkklkkklkl',678,NULL,0,NULL,3148,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(319,'2013-10-10 10:13:28','2013-10-10 10:13:28','jj','bbbbbbbbbbb',680,NULL,0,NULL,3152,NULL,'INR',NULL,'PRODUCT',1,NULL,1,NULL,1,0,NULL),
(320,'2013-10-10 10:24:31','2013-10-10 10:24:31','jj','jl;dkfl\'kdf;lad',681,NULL,0,NULL,3153,NULL,'INR',NULL,'PRODUCT',1,NULL,1,NULL,1,0,NULL),
(321,'2013-10-11 13:15:32','2013-10-11 13:15:32','asdfg','vijay',682,NULL,0,NULL,3154,NULL,'INR',NULL,'PRODUCT',1,NULL,1,NULL,1,0,NULL),
(322,'2013-10-27 12:54:20','2013-10-27 12:54:20','watches',NULL,683,NULL,0,NULL,3155,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(323,'2013-11-11 11:28:15','2013-11-11 11:28:15','book','atra book depo',684,NULL,0,NULL,3156,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(324,'2013-11-12 10:32:38','2013-11-12 10:32:38','ghjh','asdfghj',686,NULL,0,NULL,3159,NULL,'INR',NULL,'PRODUCT',17,NULL,1,NULL,1,0,NULL),
(325,'2013-11-12 13:03:26','2013-11-12 13:03:26','asdfg','asdfghj',687,NULL,0,NULL,3160,NULL,'INR',NULL,'PRODUCT',1,NULL,1,NULL,1,0,NULL),
(326,'2013-11-26 10:41:54','2013-11-26 10:41:54','Classic coat pents ','lkdfgja;ldkj',708,NULL,0,NULL,3196,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(328,'2013-12-04 10:44:10','2013-12-04 10:44:10','test1','test1',732,NULL,0,NULL,3216,NULL,'INR',NULL,'PRODUCT',19,NULL,1,NULL,1,0,NULL),
(329,'2013-12-14 12:39:48','2013-12-14 12:39:48','fan','dfkjadhfjklahdlfkjashfkalhsd',733,NULL,0,NULL,3217,NULL,'INR',NULL,'PRODUCT',19,NULL,32,NULL,1,0,NULL),
(330,'2014-01-07 21:28:34','2014-01-07 21:28:34','Samraat dava khana test','better to understand the ',734,NULL,0,NULL,3218,NULL,'INR',NULL,'PRODUCT',19,NULL,740,NULL,1,0,NULL),
(333,'2014-01-09 16:00:53','2014-01-09 16:00:53','medical store','home delivery',739,NULL,0,NULL,3251,NULL,'INR',NULL,'PRODUCT',8,NULL,740,NULL,1,0,'9878766543'),
(334,'2014-01-27 18:13:35','2014-01-27 18:13:35','Lorial','Latest 2013 summer collection.Free shiping & cash on delivery.shop now.',0,NULL,0,NULL,3256,NULL,'INR',NULL,'PRODUCT',19,NULL,740,NULL,1,0,'9878766543'),
(335,'2014-01-29 13:52:03','2014-01-29 13:52:03','kira',' 8 down vote\r\n	\r\n\r\nYou can do some Javascript in the form\'s submit event.',NULL,NULL,0,NULL,3286,NULL,'INR',NULL,'PRODUCT',17,NULL,740,NULL,1,1,'9878766543'),
(336,'2014-01-31 12:48:23','2014-01-31 12:48:23','test','how is this',NULL,NULL,0,NULL,3287,NULL,'INR',NULL,'PRODUCT',19,NULL,740,NULL,1,0,'9878766543');

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
(75,NULL,'/usr/local/userPhotos/SHOP/330/add-bgblue.jpg','/usr/local/userPhotos/Big/SHOP/330/add-bgblue.jpg',330),
(104,NULL,'/usr/local/userPhotos/SHOP/333/around-sunset-1920x1080-wallpaper-10136.jpg','/usr/local/userPhotos/Big/SHOP/333/around-sunset-1920x1080-wallpaper-10136.jpg',333),
(119,NULL,'/usr/local/userPhotos/SHOP/336/beach-wallpaper-hd-florida-condos-download-wallpaper-wallpaper.jpg','/usr/local/userPhotos/Big/SHOP/336/beach-wallpaper-hd-florida-condos-download-wallpaper-wallpaper.jpg',336),
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
(105,NULL,'/usr/local/userPhotos/SHOP/334/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg','/usr/local/userPhotos/Big/SHOP/334/breaking-through-the-trees-1920x1080-wallpaper-7304.jpg',334),
(118,NULL,'/usr/local/userPhotos/SHOP/335/1476435_558998504180050_2080544610_n.jpg','/usr/local/userPhotos/Big/SHOP/335/1476435_558998504180050_2080544610_n.jpg',335);

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
  `BUSINESS_TYPE` varchar(20) DEFAULT NULL,
  `SHOP_CATEGORY_ID` bigint(10) DEFAULT NULL,
  `BUSINESS_TYPE_ID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `template` */

insert into `template` values
(2,'hell','<p>test for hello tests</p>',NULL,'LocalBusiness',19,326),
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
(17,'hjgkjhgkjhgk','ÐÏà¡±\Zá\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0>\0\0þÿ	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0n\0\0\0\0\0\0\0\0\0\0p\0\0\0\0\0\0þÿÿÿ\0\0\0\0m\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿì¥Á\0[€	\0\0ð¿\0\0\0\0\0\0\0\0\0\0\0\0\0å\"\0\0\0bjbj¬ú¬ú\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\07V\0\0Î\0Î\0å\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿ\0\0\0\0\0\0\0\0\0ÿÿ\0\0\0\0\0\0\0\0\0ÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0·\0\0\0\0\0H\0\0\0\0\0\0H\0\0‹$\0\0\0\0\0\0‹$\0\0\0\0\0\0‹$\0\0\0\0\0\0‹$\0\0\0\0\0\0‹$\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0\0\0Ÿ$\0\0\0\0\0\0Ÿ$\0\0\0\0\0\0Ÿ$\0\0\0\0\0\0Ÿ$\0\0„\0\0\0#%\0\0L\0\0\0Ÿ$\0\0\0\0\0\0¼J\0\0\n\0\0o%\0\0L\0\0\0»%\0\0\0\0\0\0»%\0\0\0\0\0\0»%\0\0\0\0\0\0»%\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0;J\0\0\0\0\0=J\0\0\0\0\0\0=J\0\0\0\0\0\0=J\0\0\0\0\0\0=J\0\0\0\0\0\0=J\0\0\0\0\0\0=J\0\0$\0\0\0ÆM\0\0¢\0\0hP\0\0F\0\0\0aJ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0‹$\0\0\0\0\0\0\"\'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\'\0\0\"\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0aJ\0\0\0\0\0\0\0\0\0\0\0\0\0\0‹$\0\0\0\0\0\0‹$\0\0\0\0\0\0»%\0\0\0\0\0\0\0\0\0\0\0\0\0\0»%\0\0E\0\0vJ\0\0\0\0\0Ê*\0\0\0\0\0\0Ê*\0\0\0\0\0\0Ê*\0\0\0\0\0\0\"\'\0\0þ\0\0‹$\0\0\0\0\0\0»%\0\0\0\0\0\0‹$\0\0\0\0\0\0»%\0\0\0\0\0\0;J\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ê*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"\'\0\0\0\0\0\0;J\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ê*\0\0\0\0\0\0Ê*\0\0Š\0\0B\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ŸD\0\0\0\0\0\0»%\0\0\0\0\0\0ÿÿÿÿ\0\0\0\0PËðD~çÎ\0\0\0\0\0\0\0\0Ÿ$\0\0\0\0\0\0 *\0\0.\0\0\07C\0\0’\0\0\0\0\0\0\0\0\0\0\0\'J\0\0\0\0\0ŒJ\0\00\0\0\0¼J\0\0\0\0\0\0ÉC\0\0Ö\0\0\0®P\0\0\0\0\0\0N*\0\0|\0\0\0®P\0\0D\0\0\0ŸD\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ŸD\0\08\0\0\0®P\0\0\0\0\0\0\0\0\0\0\0\0\0\0‹$\0\0\0\0\0\0×D\0\0P\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0Ê*\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0aJ\0\0\0\0\0\0aJ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ê*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0¼J\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0\0\0ÿÿÿÿ\0\0\0\0ÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0\0\0ÿÿÿÿ\0\0\0\0ÿÿÿÿ\0\0\0\0ÿÿÿÿ\0\0\0\0ÿÿÿÿ\0\0\0\0ÿÿÿÿ\0\0\0\0ÿÿÿÿ\0\0\0\0ÿÿÿÿ\0\0\0\0ÿÿÿÿ\0\0\0\0ÿÿÿÿ\0\0\0\0ÿÿÿÿ\0\0\0\0ÿÿÿÿ\0\0\0\0ÿÿÿÿ\0\0\0\0ÿÿÿÿ\0\0\0\0®P\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0\"\'\0\0\0\0\0\0H\0\0	\0\0Q#\0\0:\0\0\0\0\0	@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \rAyush Ramola\r			     	    Contact no: +91-					\r				 Email id:  ayushramola@soarlogic.com	     	     \r						 \rObjective\r\rTo be potential resource to the organization where I can utilize my skills and knowledge which would help the organization to grow and further enhance my growth profile. It would be never ending   dedication to maintain the spectrum of integrity, honesty and character\r\rProfessional Qualification\r\rB.tech (IT) in 2011 from GRD, Institute of Management and Technology Dehradun, Uttarakhand, India.\r    \rProfessional Snapshot\r\rSoftware Development Engineer with more than Two years of professional experience in software development processes and implementations.\rExperience of developing applications using PHP, MySQL, Ajax (JQuery), in Web Technologies.\rGood in development of web application using HTML, XHTML, CSS, Java Server Pages (JSPs), Object-Oriented JavaScript.\rVery sound technically and have good ability to work in a team and can handle team of developer.\r\rProfessional Experience\r\rCurrently working as Software Engineer with Soarlogic Information Technologies Pvt. Ltd., Dehradun from 8th Aug 2011 to till date.\r.\r\rTechnical Skills\r   \rProgramming Languages 	: PHP\rFrameworks			: CakePhp (MVC)\rScripting Languages  	: JavaScript, HTML, CSS, Ajax (JQuery) and JQuery Plugins \rDatabases			: MySQL 5.0\rWeb Servers			: Apache 2.2\rIDEs				: Eclipse, Intelli J Idea 11.x\rOperating Systems             : Linux, Windows 7/VISTA/XP	\rSoftware Development Methodology	: Agile Method\r\r\r\r\r\r	\rProject Experience\r\rProject		: FERTILITY (http://www.fertility2u.com)\rClient		: Fertility\rTechnologies	: Php, MySql 5.0, Ajax (JQuery) and JQuery plugins.\rFramework	: Magento\rTeam Size	: 10. \r\rContribution:\rRole in development and database design of all modules.\rDid UI design and Integration of modules, with ajaxification of all pages in this application through JQuery wherever ajaxficaion is required.\rClearing the problem in every phase.\rDiscussing with client weekly and clearing their doubts.\r\rOverview:\r\rWelcome to Fertility2u your Online Fertility Pharmacy offering a wide range of prescription Fertility Drugs / IVF medication all delivered directly to your doorstep, normally within 24 hours of receiving your prescription. Enjoy peace of mind knowing Fertility2u is regulated by the GPhC and a member of the National Pharmacy Association. Fertility2u is considered a market leader in providing IVF Fertility Drugs as well as being an established Verified UK Pharmacy with a High Street outlet. Our aim is to provide a safe, secure and fast solution to IVF patients worldwide. We stock most brands such as Gonal F, Menopur and Puregon and only use UK Approved Fertility Drugs .\rProject		: Work-Force  ( HYPERLINK \"http://workforce-base.com/\" http://workforce-base.com/)\rClient		: Fertility\rTechnologies	: Php, MySql 5.0, Ajax (JQuery) and JQuery plugins.\rFramework	: Cakephp MVC 2.x\rTeam Size	: 10. \r\rContribution:\rWorked in development and database designing of all modules.\rDid in UI design and Integration of modules. \rBug Fixing in every phase.\rHandling client queries.\r\rOverview:\r\rWork-Force is the Apex of the Project and Workforce Outsourcing Sites on the Internet. Work-Force Freelancers are certified, having established that they have the Proper Education, Training, Experience, Skills and have time and time again proven themselves.\r\rProject		: Rvr ( HYPERLINK \"http://rvr.thewtour.com/\" http://rvr.thewtour.com/)\rClient		: Gabril\rTechnologies	: Php, MySql 5.0, Ajax (JQuery) and JQuery plugins.\rFramework	: Cakephp MVC 2.x\rFramework	: Intelli J Idea 10.x.\rTeam Size	: 2. \r\rContribution:\rHandled the designing and implementation of database.\rActively participated in UI designing and Integration of modules. Did ajaxification through JQuery, wherever ajaxficaion is required.\rFixing the problem in different phases of development.\rHandled the communication with client, in clearing the doubts and development status.\rDiscussing with client weekly and clearing their doubts.\r\rOverview:\rThis deals in conducting the survey of readability of font and size, among different  \rfont and size which is most easy readable by visitor in a museum.\r\r\rProject		: GYAPTI ( HYPERLINK \"http://www.gyapti.com/\" http://www.gyapti.com/)\rClient		: GYAPTI\rTechnologies	: Php, MySql 5.0, Ajax (JQuery) and JQuery plugins.\rFramework	: Cakephp MVC 2.x\rFramework	: Intelli J Idea 10.x.\rTeam Size	: 10. \r\rContribution:\rWorked in Development and Designing of database.\rDid UI designing and integration of modules, implement the ajaxification where every required in project.\rUse to fix the bug problems in every phase of project.\rCommunicating with client and handling client’s queries.\r\rOverview:\rGyapti is an educational web site (actually a web application). This website provides free universities, colleges, etc. information. People can get their courses information, events information and full view of them. It mainly focuses to educate people through online. \rAs we know today, online a very wide medium to aware people. We know today, most of people are still illiterate. There are various reasons for them like not having any medium for education, no facilities. \rGyapti is a very popular way to aware people by web medium. Internet medium is also a very cheapest medium. People can get it easily via satellite also if there is no other medium.\rGyapti mainly focus on worldwide education to spread new brightness of light in people life. People can get very easily any information related to Universities, Colleges. They can be local or world-wide popular Universities, Colleges.\rPeople can make their communities also and can invite other people to join here free of cost.\r\r\r\r\r\r\r\r\rProject		: Mometrosales ( HYPERLINK \"http://www.mometrosales.com/\" http://www.mometrosales.com)\rClient Name	: Govin\rTechnologies	: Php, MySql 5.0, Ajax (JQuery).\rFramework	: Wordpress\rIDE		: Intelli J Idea 11.x.\rTeam Size	: 3. \r\rContribution:\rWorked as a Software Engineer.\rCommunicated with client and team members in shorting the bugs.\rDiscussing with client weekly and clearing their doubts.\rIntegration of Hibernate Search feature which uses Lucene search also.\r\rOverview:\rMillions of people are using mobile devices to surf the web for information. It is more important than ever for companies to have a mobile website, especially one that downloads essential information quickly and displays it in a way that helps website visitors find what they are looking for while on the go. Create a home-based business with MoMetro by offering Mobile Websites to businesses. You will not only make a ton of money but you will have fun doing it. PERSONAL DETAILS    \r\rPersonal Details     \r\r\rDate of birth			30th July 1991\rFather’s Name		Mr. M.C.Ramola\rAddress     			Guru Road, Patel Nagar\r				Dehradun - 248001\rLanguages Known		Hindi, English.\r	\r						\r\r   (Ayush Ramola)\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(\0\0,\0\0-\0\02\0\07\0\0?\0\0B\0\0M\0\0[\0\0h\0\0i\0\0q\0\0z\0\0ïßÒ¾­¾­¾›‰t‰cO­D=/\Zh[(\0CJ\0OJ\0QJ\0^J\0aJ\0\0h³$*\0hžZ¤\0\0j\0\0\0\0h³$*\0hžZ¤\0U&h³$*\0h¾e\06>*CJ\0OJ\0QJ\0^J\0aJ\0\0 h¿t\06>*CJ\0OJ\0QJ\0^J\0aJ\0\0)h³$*\0hžZ¤\056CJ\0OJ\0QJ\0\\^J\0aJ\0#h³$*\0hžZ¤\06CJ\0OJ\0QJ\0^J\0aJ\0#h³$*\0hžZ¤\0CJ\0OJ\0QJ\0\\^J\0aJ\0 h³$*\0hžZ¤\0CJ\0OJ\0QJ\0^J\0aJ\0\0&h³$*\0hžZ¤\05CJ\0OJ\0QJ\0\\^J\0aJ\0\0h¿t\0CJ\0OJ\0QJ\0\\aJ\0h³$*\0hžZ¤\0CJ\0OJ\0QJ\0\\aJ\0h³$*\0hÌ=W\0CJ\0OJ\0QJ\0\\aJ\0\0\0\0\0\0\0\0\02\0\0h\0\0q\0\0{\0\0|\0\0‰	\0\0Š	\0\0¥	\0\0¦	\0\0	\n\0\0\n\0\0$\n\0\0%\n\0\0®\n\0\0ý\0\0\0\0\0\0\0\0\0\0\0\0ð\0\0\0\0\0\0\0\0\0\0\0\0ã\0\0\0\0\0\0\0\0\0\0\0\0Þ\0\0\0\0\0\0\0\0\0\0\0\0Ù\0\0\0\0\0\0\0\0\0\0\0\0Ë\0\0\0\0\0\0\0\0\0\0\0\0Å\0\0\0\0\0\0\0\0\0\0\0\0Ã\0\0\0\0\0\0\0\0\0\0\0\0Ã\0\0\0\0\0\0\0\0\0\0\0\0Ë\0\0\0\0\0\0\0\0\0\0\0\0·\0\0\0\0\0\0\0\0\0\0\0\0·\0\0\0\0\0\0\0\0\0\0\0\0®\0\0\0\0\0\0\0\0\0\0\0\0©\0\0\0\0\0\0\0\0\0\0\0\0¤\0\0\0\0\0\0\0\0\0\0\0\0“\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$\n&\0F\r\0\rÆ\0hÐ\0\0a$gd\"T®\0\0\0\0gd[(\0\0\0gd[(\0\0\0\0$„h^„ha$\0\0\0$\rÆ\0Â\0a$gd[(\0\0E\0\0\0\0„w^„w\0\rÆ\0\0\0\0-D\0MÆ\n\0\0\0ÿßßß\0\0\0\0\0\0$a$\0\0\0gdŸ-\0\r\0\0-D\0MÆ\n\0\0\0ÿÿÿÿ\0\0\0gdŸ-\0\0\0\0„p„Ð^„p`„ÐgdŸ-\0\0\0\0\0z\0\0{\0\0|\0\0ˆ	\0\0‰	\0\0Š	\0\0¤	\0\0¥	\0\0¦	\0\0°	\0\0´	\0\0µ	\0\0¹	\0\0º	\0\0¿	\0\0ê	\0\0\0\n\0\0\n\0\0\n\0\0\n\0\0\n\0\0#\n\0\0ïáÖË¼®ï¤™‹á{k^{QD^=ï®\0\0\0\0\0\0\0\0\0\0\0\0\0h³$*\0hžZ¤\0\0h³$*\0hX›\0OJ\0QJ\0^J\0\0h³$*\0h¨ >\0OJ\0QJ\0^J\0\0h³$*\0hžZ¤\0OJ\0QJ\0^J\0\0h³$*\0hžZ¤\05OJ\0QJ\0\\^J\0\0h³$*\0h|U7\05OJ\0QJ\0\\^J\0\0h³$*\0hã7\n\05OJ\0QJ\0^J\0h¿t\05OJ\0QJ\0^J\0h[(\0OJ\0QJ\0^J\0\0\Zh[(\0CJ\0OJ\0QJ\0^J\0aJ\0\0h³$*\0h¿t\0CJ\0OJ\0QJ\0^J\0\0h¿t\0hžZ¤\0CJ\0aJ\0\0h¿t\0h¿t\0CJ\0aJ\0\0h³$*\0hžZ¤\05OJ\0QJ\0^J\0 h³$*\0hžZ¤\0CJ\0OJ\0QJ\0^J\0aJ\0#\n\0\0$\n\0\0%\n\0\0H\n\0\0R\n\0\0U\n\0\0V\n\0\0[\n\0\0\\\n\0\0¹\n\0\0»\n\0\0Ú\n\0\0Ý\n\0\0Þ\n\0\0å\n\0\0ó\n\0\0õ\n\0\0\0\0\n\0\00\0\07\0\0=\0\0D\0\0I\0\0a\0\0c\0\0s\0\0òëÞÑÃµ§—ÞŠÞ€Š€ŠvÑÞlÞŠ_ŠÞRE\0\0\0\0h³$*\0h„7\0OJ\0QJ\0^J\0\0h³$*\0hÕ	h\0OJ\0QJ\0^J\0\0h³$*\0h%g\0OJ\0QJ\0^J\0\0h\"/p\0OJ\0QJ\0^J\0\0hÚ/r\0OJ\0QJ\0^J\0\0h‚Õ\0OJ\0QJ\0^J\0\0h³$*\0h§(´\0OJ\0QJ\0^J\0\0h³$*\0hžZ¤\05OJ\0QJ\0\\^J\0\0h³$*\0hžZ¤\05OJ\0QJ\0^J\0h³$*\0hälI\05OJ\0QJ\0^J\0h³$*\0hÆNv\05OJ\0QJ\0^J\0h³$*\0hL-\0OJ\0QJ\0^J\0\0h³$*\0hžZ¤\0OJ\0QJ\0^J\0\0h[(\0h[(\0\0\ZhžZ¤\0CJ\0OJ\0QJ\0^J\0aJ\0\Z®\n\0\0\n\0\0\0\0à\0\0á\0\0ù\0\0ú\0\0}\0\0\0\0€\0\0‘\0\0•\0\0²\0\0ê\0\0\0\0\0\0\0\0\0\0\0\0Ù\0\0\0\0\0\0\0\0\0\0\0\0Ù\0\0\0\0\0\0\0\0\0\0\0\0Ô\0\0\0\0\0\0\0\0\0\0\0\0Ï\0\0\0\0\0\0\0\0\0\0\0\0±\0\0\0\0\0\0\0\0\0\0\0\0©\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0~\0\0\0\0\0\0\0\0\0\0\0\0p\0\0\0\0\0\0\0\0\0\0\0\0n\0\0\0\0\0\0\0\0\0\0\0\0n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\rÆ\0\0\0\0-D\0MÆ\n\0\0\0ÿßßß\0\0\0\"G\0$\rÆ\r\0\0 p@à°€P ðÀ!$h\0„h„\0\01$^„h`„\0\0a$gd§(´\0\0\0\0„Ð^„ÐgdUx\0\0\0\n&\0F\0gd\"T®\0\0F\0$\rÆ\r\0\0Ðp@à°€P ðÀ!$\0„Ð„\0\01$^„Ð`„\0\0a$\0\0gdj	Ó\0\0\0\0dh\0\0\0\0$\n&\0F\r\0\rÆ\0hÐ\0\0a$gd\"T®\0\0\0\0$\n&\0F\r\0\rÆ\0hÐ\0\0„óÿ]„óÿa$gd\"T®\0\0s\0\0}\0\0\0\0¤\0\0«\0\0¹\0\0ß\0\0à\0\0á\0\0ø\0\0ù\0\0ú\0\0\0\0 \0\0&\0\0/\0\0H\0\0R\0\0T\0\0\\\0\0b\0\0óæÜÏæÜÂ»­œæ‰p‰\\H\\‰5‰\0\0$h³$*\0h§(´\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0\'h³$*\0hžZ¤\05OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\'h³$*\0h§(´\05OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\00h³$*\0hÆNv\00J;\05B*\0CJ\0^J\0_Hÿ\0nHÿ\0ph\0\0\0ÿtHÿ\0\0$h³$*\0hžZ¤\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0 h³$*\0hžZ¤\0CJ\0OJ\0QJ\0^J\0aJ\0\0\Zh[(\0CJ\0OJ\0QJ\0^J\0aJ\0\0h³$*\0hžZ¤\0\0h³$*\0hžZ¤\0OJ\0QJ\0^J\0\0h³$*\0h\"/p\0OJ\0QJ\0^J\0\0h\"/p\0OJ\0QJ\0^J\0\0h³$*\0hžZ¤\0OJ\0QJ\0^J\0\0h³$*\0hÕ	h\0OJ\0QJ\0^J\0b\0\0c\0\0e\0\0f\0\0i\0\0n\0\0}\0\0\0\0€\0\0\0\0‘\0\0•\0\0®\0\0±\0\0²\0\0ðÜðÉ¶£}o^N;+£\0\0\0\0\0\0\0\0\0\0\0\0h‚Õ\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0$h³$*\0ho@L\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0h³$*\0hžZ¤\05OJ\0QJ\0\\^J\0\0 h³$*\0hžZ¤\0CJ\0OJ\0QJ\0^J\0aJ\0\0\Zh[(\0CJ\0OJ\0QJ\0^J\0aJ\0\0$h³$*\0h§(´\0OJ\0PJ\0\0QJ\0_Hÿ\0nHÿ\0tHÿ\0\0$h³$*\0h§(´\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0$h³$*\0hžZ¤\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0$h³$*\0hUx\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0$h³$*\0h\"T®\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0\'h¿t\0h\"T®\0H*OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0h\"T®\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0²\0\0À\0\0Á\0\0È\0\0Î\0\0Ï\0\0å\0\0ç\0\0ë\0\0ü\0\0\r\0\0\r\0\0\r\0\0\r\0\0\r\0\0\r\0\0 \r\0\0íÚÇ·í¤‘¤n[nH5H¤\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$h³$*\0hËp‚\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0$h³$*\0hV|\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0$h³$*\0hÂ1–\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0$h³$*\0hg>\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0h©1a\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0$h³$*\0hÍ%Ù\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0$h³$*\0hžZ¤\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0h‚Õ\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0$h³$*\0hýPk\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0$h³$*\0h‰eÊ\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0$h³$*\0h+¹\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0²\0\0Ï\0\0 \r\0\08\r\0\0S\r\0\0z\r\0\0µ\r\0\0å\r\0\0æ\r\0\0ç\r\0\0è\r\0\0é\r\0\0ê\r\0\0ì\r\0\0ÿ\r\0\0\0\0\02\0\0F\0\0‡\0\0›\0\0ý\0\0\0\0\0\0\0\0\0\0\0\0ø\0\0\0\0\0\0\0\0\0\0\0\0ó\0\0\0\0\0\0\0\0\0\0\0\0ó\0\0\0\0\0\0\0\0\0\0\0\0ó\0\0\0\0\0\0\0\0\0\0\0\0ó\0\0\0\0\0\0\0\0\0\0\0\0ó\0\0\0\0\0\0\0\0\0\0\0\0ç\0\0\0\0\0\0\0\0\0\0\0\0ç\0\0\0\0\0\0\0\0\0\0\0\0ç\0\0\0\0\0\0\0\0\0\0\0\0ç\0\0\0\0\0\0\0\0\0\0\0\0×\0\0\0\0\0\0\0\0\0\0\0\0×\0\0\0\0\0\0\0\0\0\0\0\0Æ\0\0\0\0\0\0\0\0\0\0\0\0½\0\0\0\0\0\0\0\0\0\0\0\0±\0\0\0\0\0\0\0\0\0\0\0\0¨\0\0\0\0\0\0\0\0\0\0\0\0¨\0\0\0\0\0\0\0\0\0\0\0\0¨\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„h^„hgdDg\0\0\0\n&\0F\0\rÆ\0h\0gdDg\0\0\0\0„h^„hgd,>\0\0\0\rÆ\0\0\0-D\0MÆ\n\0\0\0ÿßßß\0\0\0gd[(\0\0\0\0$\rÆ\0 Ñƒ\0\0\0„Ð^„Ða$\0\0\0$\rÆ\0 Ñƒ\0\0\0a$\0\0\0gd9\n÷\0\0\0\0gd™zî\0\0\0\0\0 \r\0\0,\r\0\0.\r\0\01\r\0\03\r\0\07\r\0\0A\r\0\0F\r\0\0H\r\0\0R\r\0\0S\r\0\0[\r\0\0]\r\0\0d\r\0\0e\r\0\0u\r\0\0w\r\0\0y\r\0\0‹\r\0\0˜\r\0\0™\r\0\0íÚÇ´¤ÇíÚ”ÇíÚ”„´q^ÇJÇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\'h³$*\0hžZ¤\05OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0$h³$*\0hdsð\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0$h³$*\0hðP±\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0hÚ/r\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0h‚Õ\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0h\"T®\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0$h³$*\0hr;\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0$h³$*\0hžZ¤\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0$h³$*\0h9\n÷\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0$h³$*\0h\rqÒ\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0™\r\0\0š\r\0\0©\r\0\0«\r\0\0±\r\0\0³\r\0\0µ\r\0\0¶\r\0\0Ö\r\0\0×\r\0\0Ø\r\0\0ä\r\0\0æ\r\0\0ç\r\0\0è\r\0\0é\r\0\0ê\r\0\0ì\r\0\0þ\r\0\0ëØÅ²¢•ˆ{ˆnˆ•aWJ=•/\Zh[(\0CJ\0OJ\0QJ\0^J\0aJ\0\0h³$*\0hB€\0OJ\0QJ\0^J\0\0h³$*\0h\"/p\0OJ\0QJ\0^J\0\0hžZ¤\0OJ\0QJ\0^J\0\0h³$*\0hUx\0OJ\0QJ\0^J\0\0h³$*\0h¿2À\0OJ\0QJ\0^J\0\0h³$*\0h\rqÒ\0OJ\0QJ\0^J\0\0h³$*\0h&^^\0OJ\0QJ\0^J\0\0h³$*\0hžZ¤\0OJ\0QJ\0^J\0\0h\"T®\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0$h³$*\0h\Z]2\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0$h³$*\0h\\2>\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0$h³$*\0hžZ¤\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0\'h³$*\0h9\n÷\05OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0þ\r\0\0ÿ\r\0\0\0\0\0	\0\0\n\0\0\0\0\0\0\0\00\0\01\0\02\0\08\0\0E\0\0‡\0\0š\0\0­\0\0»\0\0¿\0\0ó\0\0ö\0\0\0\0\"\0\0á\0\0ê\0\0ë\0\0ì\0\0ïäÔÇºÔ¬¥¡¬—ÇƒÇuƒÇkÇkÇÔ^N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h³$*\0h\"x‘\05OJ\0QJ\0\\^J\0\0hDg\05OJ\0QJ\0\\^J\0\0h\"/p\0OJ\0QJ\0^J\0\0h³$*\0hDg\05OJ\0QJ\0^J\0h¿t\0OJ\0QJ\0^J\0\0hïò\0OJ\0QJ\0^J\0\0hDg\0OJ\0QJ\0^J\0\0h¿t\0\0h¿t\0h¿t\0\0h³$*\0hDg\0OJ\0QJ\0\\^J\0h¿t\05OJ\0QJ\0\\^J\0\0h³$*\0hDg\0OJ\0QJ\0^J\0\0h³$*\0hDg\05OJ\0QJ\0\\^J\0\0h,>\0OJ\0QJ\0\\^J\0 h³$*\0hžZ¤\0CJ\0OJ\0QJ\0^J\0aJ\0›\0\0¬\0\0­\0\0»\0\0ó\0\0‚\0\0§\0\0à\0\0á\0\0ë\0\0ì\0\0‘\0\0ð\0\0\0\0E\0\0a\0\0r\0\0ö\0\0\0\0\0\0\0\0\0\0\0\0í\0\0\0\0\0\0\0\0\0\0\0\0ä\0\0\0\0\0\0\0\0\0\0\0\0Ê\0\0\0\0\0\0\0\0\0\0\0\0´\0\0\0\0\0\0\0\0\0\0\0\0Ê\0\0\0\0\0\0\0\0\0\0\0\0Ê\0\0\0\0\0\0\0\0\0\0\0\0í\0\0\0\0\0\0\0\0\0\0\0\0ä\0\0\0\0\0\0\0\0\0\0\0\0ä\0\0\0\0\0\0\0\0\0\0\0\0¨\0\0\0\0\0\0\0\0\0\0\0\0œ\0\0\0\0\0\0\0\0\0\0\0\0“\0\0\0\0\0\0\0\0\0\0\0\0“\0\0\0\0\0\0\0\0\0\0\0\0“\0\0\0\0\0\0\0\0\0\0\0\0“\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„h^„hgd”[Š\0\0\0\n&\0F\0\rÆ\0h\0gd”[Š\0\0\0\0$„Ð^„Ða$gd¦HÓ\0\0\0$\n&\0F\0\rÆ\08ì¾\0\0\0„8^„8a$gdDg\0\Z\0\0$\n&\0F\0\rÆ\08ì¾\0\0\0„¾„8]„¾^„8a$gdDg\0\0\0\0„Ð`„ÐgdDg\0\0\0\0„Ð^„ÐgdDg\0\0\0\0„h^„hgdDg\0\0ì\0\0Ê\0\0Ë\0\0\0\0‘\0\0š\0\0›\0\0§\0\0¨\0\0©\0\0ª\0\0Ò\0\0Ó\0\0í\0\0î\0\0ï\0\0ð\0\0\0\0s\0\0\0\0‡\0\0¤\0\0©\0\0ª\0\0«\0\0­\0\0¾\0\0Á\0\0ì\0\0÷\0\0\0\0åÊå½­½ ­’Š†Š€Š|’r½dZ½MZMZ½Z½Z½h³$*\0h‹^”\0OJ\0QJ\0^J\0\0h‹^”\0OJ\0QJ\0^J\0\0h³$*\0h”[Š\05OJ\0QJ\0^J\0hïò\0OJ\0QJ\0^J\0\0h”[Š\0\0\nhM»\00J8\0\0hM»\0\0j\0\0\0\0hM»\0Uh³$*\0h”[Š\0OJ\0QJ\0\\^J\0hM»\05OJ\0QJ\0\\^J\0\0h³$*\0h”[Š\05OJ\0QJ\0\\^J\0\0h³$*\0h”[Š\0OJ\0QJ\0^J\0\04h©1a\0B*CJ\0OJ\0QJ\0^J\0aJ\0fH\0ph\0\0\0\0qÊ\n\0\0\0ÿÿÿÿ\0\0\0\04h¦HÓ\0B*CJ\0OJ\0QJ\0^J\0aJ\0fH\0ph\0\0\0\0qÊ\n\0\0\0ÿÿÿÿ\0\0\0r\0\0s\0\0\0\0¾\0\0ì\0\0\0\0 \0\0!\0\0+\0\0,\0\0.\0\0/\0\0‚\0\0“\0\0Ô\0\0ð\0\0\0\0!\0\0ö\0\0\0\0\0\0\0\0\0\0\0\0í\0\0\0\0\0\0\0\0\0\0\0\0Ó\0\0\0\0\0\0\0\0\0\0\0\0½\0\0\0\0\0\0\0\0\0\0\0\0Ó\0\0\0\0\0\0\0\0\0\0\0\0Ó\0\0\0\0\0\0\0\0\0\0\0\0ö\0\0\0\0\0\0\0\0\0\0\0\0í\0\0\0\0\0\0\0\0\0\0\0\0í\0\0\0\0\0\0\0\0\0\0\0\0´\0\0\0\0\0\0\0\0\0\0\0\0´\0\0\0\0\0\0\0\0\0\0\0\0¨\0\0\0\0\0\0\0\0\0\0\0\0Ÿ\0\0\0\0\0\0\0\0\0\0\0\0Ÿ\0\0\0\0\0\0\0\0\0\0\0\0Ÿ\0\0\0\0\0\0\0\0\0\0\0\0Ÿ\0\0\0\0\0\0\0\0\0\0\0\0Ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„h^„hgdôY\0\0\0\n&\0F\0\rÆ\0h\0gdôY\0\0\0\0„h^„hgdM»\0\0\0$\n&\0F\0\rÆ\08ì¾\0\0\0„8^„8a$gd”[Š\0\Z\0\0$\n&\0F\0\rÆ\08ì¾\0\0\0„¾„8]„¾^„8a$gd”[Š\0\0\0\0„Ð`„Ðgd”[Š\0\0\0\0„Ð^„Ðgd”[Š\0\0\0\0\0\0!\0\0*\0\0+\0\0,\0\06\0\0‚\0\0ƒ\0\0‡\0\0ž\0\0§\0\0°\0\0»\0\0\"\0\0,\0\0-\0\0.\0\0/\0\08\0\09\0\0=\0\0>\0\0?\0\0öéÙÌÙÂµ«Âµžµžµ‘µ‡yi\\Li>\0\0\0\0\0h.7&\0hôY\0OJ\0QJ\0\\^J\0h.7&\0hõ`ð\05OJ\0QJ\0\\^J\0\0h.7&\0hôY\0OJ\0QJ\0^J\0\0h.7&\0hôY\05OJ\0QJ\0\\^J\0\0h³$*\0h©1a\0OJ\0QJ\0\\^J\0h”[Š\0OJ\0QJ\0^J\0\0hM»\0h©1a\0OJ\0QJ\0^J\0\0hM»\0h‹^”\0OJ\0QJ\0^J\0\0h©1a\0OJ\0QJ\0^J\0\0hM»\0hM»\0OJ\0QJ\0^J\0\0hwfá\0OJ\0QJ\0^J\0\0h”[Š\05OJ\0QJ\0\\^J\0\0h³$*\0h”[Š\05OJ\0QJ\0\\^J\0\0h³$*\0h”[Š\0OJ\0QJ\0^J\0\0h‹^”\0OJ\0QJ\0^J\0?\0\0@\0\0f\0\0g\0\0\0\0€\0\0‚\0\0Œ\0\0’\0\0ü\0\0\0\0\0\0\0\0\"\0\00\0\0d\0\0f\0\0\0\0‚\0\0‡\0\0ˆ\0\0‰\0\0‹\0\0¨\0\0«\0\0È\0\0É\0\0ì\0\0\"\0\0#\0\0x\0\0³\0\0½\0\0ôíôàôÒÅ»®›®‘®ƒy®y®lyly®y®y®y®y®\\\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h.7&\0hôY\05OJ\0QJ\0\\^J\0\0h.7&\0hà|9\0OJ\0QJ\0^J\0\0hà|9\0OJ\0QJ\0^J\0\0h.7&\0hôY\05OJ\0QJ\0^J\0h.7&\0OJ\0QJ\0^J\0\0$h.7&\0hôY\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0h.7&\0hôY\0OJ\0QJ\0^J\0\0h‚Õ\0OJ\0QJ\0^J\0\0h.7&\0hõ`ð\0OJ\0QJ\0^J\0\0h.7&\0hôY\0OJ\0QJ\0\\^J\0h.7&\0hõ`ð\00J8\0B*\0ph\0\0\0ÿh.7&\0hõ`ð\0\0j\0\0\0\0h.7&\0hõ`ð\0U\0 !\0\0\"\0\00\0\0f\0\0ì\0\0#\0\0y\0\0²\0\0³\0\0½\0\0\0\0V\0\0W\0\0X\0\0ª\0\0»\0\0ö\0\0\0\0\0\0\0\0\0\0\0\0í\0\0\0\0\0\0\0\0\0\0\0\0Ó\0\0\0\0\0\0\0\0\0\0\0\0½\0\0\0\0\0\0\0\0\0\0\0\0Ó\0\0\0\0\0\0\0\0\0\0\0\0Ó\0\0\0\0\0\0\0\0\0\0\0\0Ó\0\0\0\0\0\0\0\0\0\0\0\0ö\0\0\0\0\0\0\0\0\0\0\0\0í\0\0\0\0\0\0\0\0\0\0\0\0±\0\0\0\0\0\0\0\0\0\0\0\0±\0\0\0\0\0\0\0\0\0\0\0\0«\0\0\0\0\0\0\0\0\0\0\0\0š\0\0\0\0\0\0\0\0\0\0\0\0Ž\0\0\0\0\0\0\0\0\0\0\0\0…\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„h^„hgd©1a\0\0\0\n&\0F\0\rÆ\0h\0gd©1a\0\0\0$\rÆ\0\0\0„]„a$gdçBè\0\0\0\0„Ð^„Ð\0\0\0$„Ð`„Ða$gd.7&\0\0\0$\n&\0F\0\rÆ\08ì¾\0\0\0„8^„8a$gdôY\0\Z\0\0$\n&\0F\0\rÆ\08ì¾\0\0\0„¾„8]„¾^„8a$gdôY\0\0\0\0„Ð`„ÐgdôY\0\0\0\0„Ð^„ÐgdôY\0\0½\0\0\0\0\0\0H\0\0T\0\0V\0\0W\0\0X\0\0a\0\0b\0\0j\0\0k\0\0l\0\0\0\0‘\0\0§\0\0¨\0\0ª\0\0$\0\07\0\0K\0\0Y\0\0‰\0\0Š\0\0ñæñØñË·§š§Œ{š{h{ŒšUšG=š\0\0\0hà|9\0OJ\0QJ\0^J\0\0h³$*\0h©1a\05OJ\0QJ\0^J\0$h³$*\0h©1a\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0%h³$*\0h©1a\00J8\0B*\0OJ\0QJ\0^J\0ph\0\0\0ÿ!j\0\0\0\0h³$*\0h©1a\0OJ\0QJ\0U^J\0h³$*\0h©1a\0OJ\0QJ\0\\^J\0h³$*\0h©1a\0OJ\0QJ\0^J\0\0h³$*\0h©1a\05OJ\0QJ\0\\^J\0\0\'h³$*\0hçBè\05OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0h³$*\0h•?\0OJ\0QJ\0^J\0\0h.7&\0h.7&\0OJ\0QJ\0\\^J\0h[(\0OJ\0QJ\0\\^J\0h.7&\0hÑ/g\0OJ\0QJ\0\\^J\0\0»\0\0ü\0\0\0\09\0\0J\0\0K\0\0Y\0\0Š\0\0ô\0\0+\Z\0\0d\Z\0\0e\Z\0\0o\Z\0\0}\0\0K\0\0\0\0\0ë\0\0I\0\0ö\0\0\0\0\0\0\0\0\0\0\0\0ö\0\0\0\0\0\0\0\0\0\0\0\0ö\0\0\0\0\0\0\0\0\0\0\0\0ö\0\0\0\0\0\0\0\0\0\0\0\0í\0\0\0\0\0\0\0\0\0\0\0\0ä\0\0\0\0\0\0\0\0\0\0\0\0Ê\0\0\0\0\0\0\0\0\0\0\0\0´\0\0\0\0\0\0\0\0\0\0\0\0Ê\0\0\0\0\0\0\0\0\0\0\0\0Ê\0\0\0\0\0\0\0\0\0\0\0\0í\0\0\0\0\0\0\0\0\0\0\0\0ä\0\0\0\0\0\0\0\0\0\0\0\0¨\0\0\0\0\0\0\0\0\0\0\0\0¨\0\0\0\0\0\0\0\0\0\0\0\0¨\0\0\0\0\0\0\0\0\0\0\0\0¨\0\0\0\0\0\0\0\0\0\0\0\0“\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$\rÆ\0\0\0„„Ð]„^„Ða$gd©1a\0\0\0\0$„Ð^„Ða$gd[(\0\0\0$\n&\0F\0\rÆ\08ì¾\0\0\0„8^„8a$gd©1a\0\Z\0\0$\n&\0F\0\rÆ\08ì¾\0\0\0„¾„8]„¾^„8a$gd©1a\0\0\0\0„Ð`„Ðgd©1a\0\0\0\0„Ð^„Ðgd©1a\0\0\0\0„h^„hgd©1a\0\0Š\0\0ó\0\0ô\0\0*\Z\0\0+\Z\0\0c\Z\0\0e\Z\0\0o\Z\0\0I\0\0J\0\0L\0\0M\0\0O\0\0P\0\0Q\0\0Z\0\0[\0\0\\\0\0h\0\0i\0\0j\0\0k\0\0•\0\0–\0\0±\0\0²\0\0´\0\0Ç\0\0\0\0ôçÝçÝçÍçÃ¹¯¹ç›‹~‹q‹c[W[Q[c¹~\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nh©1a\00J8\0\0h©1a\0\0j\0\0\0\0h©1a\0Uh³$*\0hwsê\0OJ\0QJ\0\\^J\0h©1a\05OJ\0QJ\0\\^J\0\0h³$*\0hwsê\0OJ\0QJ\0^J\0\0h³$*\0hwsê\05OJ\0QJ\0\\^J\0\0\'h³$*\0hwsê\05OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0h[(\0OJ\0QJ\0^J\0\0h©1a\0OJ\0QJ\0^J\0\0hçBè\0OJ\0QJ\0^J\0\0h³$*\0h©1a\05OJ\0QJ\0\\^J\0\0hà|9\0OJ\0QJ\0^J\0\0h³$*\0h©1a\0OJ\0QJ\0^J\0\0hà|9\0CJ\0OJ\0QJ\0^J\0I\0\0J\0\0K\0\0L\0\0M\0\0N\0\0O\0\0P\0\0Q\0\0´\0\0È\0\0ö\0\0\0\0(\0\08\0\09\0\0G\0\0f\0\0¦\0\0ß\0\0ù\0\0\0\0\0\0\0\0\0\0\0\0ù\0\0\0\0\0\0\0\0\0\0\0\0ù\0\0\0\0\0\0\0\0\0\0\0\0ù\0\0\0\0\0\0\0\0\0\0\0\0ù\0\0\0\0\0\0\0\0\0\0\0\0ù\0\0\0\0\0\0\0\0\0\0\0\0ù\0\0\0\0\0\0\0\0\0\0\0\0è\0\0\0\0\0\0\0\0\0\0\0\0Ü\0\0\0\0\0\0\0\0\0\0\0\0Ó\0\0\0\0\0\0\0\0\0\0\0\0Ó\0\0\0\0\0\0\0\0\0\0\0\0Ó\0\0\0\0\0\0\0\0\0\0\0\0Ó\0\0\0\0\0\0\0\0\0\0\0\0Ó\0\0\0\0\0\0\0\0\0\0\0\0Ê\0\0\0\0\0\0\0\0\0\0\0\0Á\0\0\0\0\0\0\0\0\0\0\0\0§\0\0\0\0\0\0\0\0\0\0\0\0§\0\0\0\0\0\0\0\0\0\0\0\0§\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0$\n&\0F\0\rÆ\08ì¾\0\0\0„¾„8]„¾^„8a$gdwsê\0\0\0\0„Ð`„Ðgdwsê\0\0\0\0„Ð^„Ðgdwsê\0\0\0\0„h^„hgdwsê\0\0\0\n&\0F\0\rÆ\0h\0gdwsê\0\0\0$\rÆ\0\0\0„]„a$gdwsê\0\0\0\0„Ð^„Ð\0\0\0\0\0\0\0&\0\09\0\0G\0\0M\0\0S\0\0d\0\0f\0\0s\0\0u\0\0¤\0\0î\0\0þ\0\0\' \0\01 \0\0\0\"\0\0\"\0\0\"\0\0\"\0\0(\"\0\0-\"\0\0.\"\0\0/\"\0\0óæÓæÅ»æ­æ»æ»æÅæˆ{ndR@nd\0\0\0\0#h©1a\0hžZ¤\05CJ \0OJ\0QJ\0^J\0aJ \0#h©1a\0h©1a\05CJ \0OJ\0QJ\0^J\0aJ \0h©1a\0OJ\0QJ\0^J\0\0h³$*\0hžZ¤\0OJ\0QJ\0^J\0\0h³$*\0h©1a\0OJ\0QJ\0^J\0\0)h©1a\0h©1a\0OJ\0QJ\0^J\0fH`\0qÊ\n\0\0\0ÿûÿÿ\0\0\0h³$*\0hwsê\05OJ\0QJ\0\\^J\0\0h³$*\0hŠ_Æ\05OJ\0QJ\0^J\0hm³\0OJ\0QJ\0^J\0\0h³$*\0hwsê\05OJ\0QJ\0^J\0$h³$*\0hwsê\0OJ\0QJ\0^J\0_Hÿ\0nHÿ\0tHÿ\0\0h³$*\0hwsê\0OJ\0QJ\0^J\0\0h³$*\0hŠ_Æ\0OJ\0QJ\0^J\0ß\0\0& \0\0\' \0\01 \0\0\"\0\0\"\0\0-\"\0\0.\"\0\0/\"\0\0N\"\0\0l\"\0\0’\"\0\0¨\"\0\0É\"\0\0Ë\"\0\0Ò\"\0\0Ó\"\0\0å\"\0\0å\0\0\0\0\0\0\0\0\0\0\0\0Ü\0\0\0\0\0\0\0\0\0\0\0\0Ó\0\0\0\0\0\0\0\0\0\0\0\0Â\0\0\0\0\0\0\0\0\0\0\0\0Â\0\0\0\0\0\0\0\0\0\0\0\0Â\0\0\0\0\0\0\0\0\0\0\0\0¼\0\0\0\0\0\0\0\0\0\0\0\0¼\0\0\0\0\0\0\0\0\0\0\0\0·\0\0\0\0\0\0\0\0\0\0\0\0µ\0\0\0\0\0\0\0\0\0\0\0\0µ\0\0\0\0\0\0\0\0\0\0\0\0µ\0\0\0\0\0\0\0\0\0\0\0\0µ\0\0\0\0\0\0\0\0\0\0\0\0·\0\0\0\0\0\0\0\0\0\0\0\0µ\0\0\0\0\0\0\0\0\0\0\0\0«\0\0\0\0\0\0\0\0\0\0\0\0›\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$„°„Ð^„°`„Ða$gdçBè\0\0	\0\0„ „Ð^„ `„Ð\0\0\0\0\0\0gd©1a\0\0\0\0„ ^„ \0\0$\rÆ\0\0\0„]„a$gd©1a\0\0\0\0„Ð`„Ðgdwsê\0\0\0\0„Ð^„Ðgdwsê\0\Z\0\0$\n&\0F\0\rÆ\08ì¾\0\0\0„¾„8]„¾^„8a$gdwsê\0\0/\"\0\0?\"\0\0A\"\0\0C\"\0\0H\"\0\0K\"\0\0M\"\0\0N\"\0\0\\\"\0\0a\"\0\0k\"\0\0l\"\0\0y\"\0\0‘\"\0\0’\"\0\0–\"\0\0¨\"\0\0×\"\0\0ã\"\0\0å\"\0\0óéÛéóÎóÁÎé·óéó·Îóéó\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h©1a\0OJ\0QJ\0^J\0\0h³$*\0h?9\0OJ\0QJ\0^J\0\0h³$*\0hçBè\0OJ\0QJ\0^J\0\0hm³\0hm³\0H*OJ\0QJ\0^J\0hm³\0OJ\0QJ\0^J\0\0h³$*\0hžZ¤\0OJ\0QJ\0^J\05\01h:pà|9\0;0°Ð/ °à=!° \"°Ÿ#Ð$Ð%°\0\0°Ð°ÐÐ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0^O\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0˜\0\0\0˜\0\0\0ž\0\0\0ž\0\0\0ž\0\0\0ž\0\0\0ž\0\0\0ž\0\0\0ž\0\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\0v\0\0v\0\0v\0\0v\0\0v\0\0v\0\0v\0\0v\0\0v\0\06\0\06\0\06\0\06\0\06\0\06\0\08\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\0¨\0\0\06\0\06\0\0\0\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\0¸\0\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\0\0\0\06\0\0h\0\0H\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\0°\0\06\0\02\0\0\0\0\0À\0\0Ð\0\0à\0\0ð\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0€\0\0\0\0À\0\0Ð\0\0à\0\0ð\0\0\0\0\0\0\02\0\0(\0\0Ø\0\0è\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0€\0\0\0\0À\0\0Ð\0\0à\0\0ð\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0€\0\0\0\0À\0\0Ð\0\0à\0\0ð\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0€\0\0\0\0À\0\0Ð\0\0à\0\0ð\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0€\0\0\0\0À\0\0Ð\0\0à\0\0ð\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0€\0\0\0\0À\0\0Ð\0\0à\0\0ð\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0€\0\0\0\08\0\0X\0\0ø\0\0\0\0\0\0V\0\0~\0\0\0\0\0_HmH	@nH	@sH	@tH	@\0\0\0\0D\0\0`ñÿ\0D\0\0\0\0\0\0\0\0\0\0N\0o\0r\0m\0a\0l\0\0\0\0\0\0*$\0\0CJ\0_HaJ\0mH	sH	tH\0\0x\0@\0\0x\0\0\0\0\0\0\0\0\0	\0H\0e\0a\0d\0i\0n\0g\0 \02\0\0\08\0\0$\n&F\0„\0\0„\0\0„\0\0-D@&MÆ\n\0\0\0ÿ¿¿¿\0\0\0]„\0\0^„\0\0`„\0\0\05CJ\0OJ\0QJ\0aJ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D\0A`òÿ¡\0D\0\0\0\0\0\0\0\0\0\0D\0e\0f\0a\0u\0l\0t\0 \0P\0a\0r\0a\0g\0r\0a\0p\0h\0 \0F\0o\0n\0t\0\0\0\0\0V\0i\0óÿ³\0V\0\r\0\0\0\0\0\00\0T\0a\0b\0l\0e\0 \0N\0o\0r\0m\0a\0l\0\0\0 \0:V\0ö\0\04Ö\0\0\04Ö\0\nl\0aö\0\0\0\0\0\0(\0k ôÿÁ\0(\0\0\r\0\0\0\0\0\00\0N\0o\0 \0L\0i\0s\0t\0\0\0\0\0\0\0\0\02\0þoòÿñ\02\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\02\0z\00\0\0\0\0OJ\0QJ\02\0þ/òÿ2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\03\0z\00\0\0\0\0OJ\0QJ\02\0þ/òÿ2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\03\0z\01\0\0\0\0OJ\0QJ\06\0þ/òÿ!6\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\03\0z\02\0\0\0\0CJ\0OJ\0QJ\06\0þ/òÿ16\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\04\0z\00\0\0\0\0CJ\0OJ\0QJ\02\0þ/òÿA2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\05\0z\00\0\0\0\0OJ\0QJ\06\0þ/òÿQ6\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\06\0z\00\0\0\0\0CJ\0OJ	\0QJ	\0:\0þ/òÿa:\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\07\0z\00\0\0\0\0CJ\0OJ\0QJ\0aJ\02\0þ/òÿq2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\08\0z\00\0\0\0\0OJ\0QJ\02\0þ/òÿ2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\09\0z\00\0\0\0\0OJ\0QJ\0J\0þ/òÿ‘J\0\0\0\0\0\0\0\0\0\0\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\0\0\0\0\0P\0þ/òÿ¡P\0\0\0\0\0\0\0\0\0\0\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\0\0\0\0\0R\0þ/òÿ±R\0\0\0\0\0\0\0\0\0\0\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\0\0\0\0\0T\0þ/òÿÁT\0\0\0\0\0\0\0\0\0\0\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\0\0\0\0\0V\0þ/òÿÑV\0\0\0\0\0\0\0\0\0\0\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\0\0\0\0\0X\0þ/òÿáX\0\0\0\0\0\0\0\0\0\0 \0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\01\0\0\0\0\02\0þ/òÿñ2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\04\0z\01\0\0\0\0OJ\0QJ\02\0þ/òÿ2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\06\0z\01\0\0\0\0OJ\0QJ\06\0þ/òÿ6\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\08\0z\01\0\0\0\0OJ	\0QJ	\0^J	\02\0þ/òÿ!2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\08\0z\02\0\0\0\0OJ\0QJ\06\0þ/òÿ16\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\09\0z\01\0\0\0\0OJ	\0QJ	\0^J	\02\0þ/òÿA2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\09\0z\02\0\0\0\0OJ\0QJ\04\0þ/òÿQ4\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\00\0z\00\0\0\0\0OJ\0QJ\04\0þ/òÿa4\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\00\0z\01\0\0\0\0OJ	\0QJ	\04\0þ/òÿq4\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\00\0z\02\0\0\0\0OJ\0QJ\0<\0þ/òÿ<\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\01\0z\00\0\0\0\0CJ\0OJ\0QJ\0aJ\04\0þ/òÿ‘4\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\01\0z\01\0\0\0\0OJ\0QJ\04\0þ/òÿ¡4\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\01\0z\02\0\0\0\0OJ\0QJ\04\0þ/òÿ±4\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\01\0z\03\0\0\0\0OJ\0QJ\08\0þ/òÿÁ8\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\02\0z\00\0\0\0\0CJ\0OJ\0QJ\0D\0A òÿÑD\0\0\0\0\0\0\0\0\0\0\0D\0e\0f\0a\0u\0l\0t\0 \0P\0a\0r\0a\0g\0r\0a\0p\0h\0 \0F\0o\0n\0t\0\0\0\0\0Z\0þ/òÿáZ\0\0\0\0\0\0\0\0\0\0!\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\01\01\0\0\0\0\0\\\0þ/òÿñ\\\0\0\0\0\0\0\0\0\0\0\"\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\01\01\01\0\0\0\0\0^\0þ/òÿ^\0\0\0\0\0\0\0\0\0\0#\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\01\01\01\01\0\0\0\0\0`\0þ/òÿ`\0\0\0\0\0\0\0\0\0\0$\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\01\01\01\01\01\0\0\0\0\0b\0þ/òÿ!b\0\0\0\0\0\0\0\0\0\0%\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\01\01\01\01\01\01\0\0\0\0\0d\0þ/òÿ1d\0\0\0\0\0\0\0\0\0\0&\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\01\01\01\01\01\01\01\0\0\0\0\02\0þ/òÿA2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\07\0z\01\0\0\0\0OJ\0QJ\0f\0þ/òÿQf\0\0\0\0\0\0\0\0\0\0\'\0W\0W\0-\0A\0b\0s\0a\0t\0z\0-\0S\0t\0a\0n\0d\0a\0r\0d\0s\0c\0h\0r\0i\0f\0t\0a\0r\0t\01\01\01\01\01\01\01\01\01\01\01\0\0\0\0\02\0þ/òÿa2\0\0\0\0\0\0\0\0\0\0	\0W\0W\08\0N\0u\0m\01\0z\00\0\0\0\0OJ\0QJ\0J\0þ/òÿqJ\0\0\0\0\0\0\0\0\0\0\0W\0W\0-\0D\0e\0f\0a\0u\0l\0t\0 \0P\0a\0r\0a\0g\0r\0a\0p\0h\0 \0F\0o\0n\0t\0\0\0\0\06\0U`òÿ6\0\0\0\0\0\0\0\0\0	\0H\0y\0p\0e\0r\0l\0i\0n\0k\0\0\0\0>*B*ph\0\0ÿ\04\0þ/òÿ‘4\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\02\0z\01\0\0\0\0OJ\0QJ\0N\0þ/òÿ¡N\0\0\0\0\0\0\0\0\0\0\0W\0W\0-\0D\0e\0f\0a\0u\0l\0t\0 \0P\0a\0r\0a\0g\0r\0a\0p\0h\0 \0F\0o\0n\0t\01\01\0\0\0\0\0F\0þoòÿ±F\0\0\0\0\0\0\0\0\0\0\0Q\0u\0i\0c\0k\0F\0o\0r\0m\0a\0t\02\0\0\0\0B*CJ\0OJ\0QJ\0ph\0\0\0\0\0:\0þ/òÿÁ:\0\0\0\0\0\0\0\0\0\0\0N\0u\0m\0b\0e\0r\0i\0n\0g\0 \0S\0y\0m\0b\0o\0l\0s\0\0\0\0\08\0þ/òÿÑ8\0\0\0\0\0\0\0\0\0\0\n\0W\0W\08\0N\0u\0m\01\05\0z\00\0\0\0\0CJ\0OJ	\0QJ	\0F\0V òÿáF\0\0\0\0\0\0\0\0\0\0F\0o\0l\0l\0o\0w\0e\0d\0H\0y\0p\0e\0r\0l\0i\0n\0k\0\0\0\0>*B*\rph€\0\0\0N\0þ\0N\0\0\0\0\0\0\0\0\0\0\0H\0e\0a\0d\0i\0n\0g\0\0\0\r\0?\0¤ð\0¤x\0$\0\0CJ\0OJ\0PJ\n\0QJ\0^J\0aJ\06\0B\0\06\0\0\0\0\0\0\0\0\0	\0B\0o\0d\0y\0 \0T\0e\0x\0t\0\0\0\n\0@\0¤\0\0¤x\0\0\0(\0/\0(\0\0\0\0\0\0\0\0\0\0L\0i\0s\0t\0\0\0\0A\0\0^J\0H\0\"\0\0\"H\0\0\0\0\0\0\0\0\0\0C\0a\0p\0t\0i\0o\0n\0\0\0\r\0B\0¤x\0¤x\0$\0\06CJ\0]^J\0aJ\0.\0þ\02.\0\0\0\0\0\0\0\0\0\0\0I\0n\0d\0e\0x\0\0\0\0C\0$\0\0^J\04\0 \0\0B4\0\0\0\0\0\0\0\0\0\0F\0o\0o\0t\0e\0r\0\0\0\r\0D\0\rÆ\0àÀ!\0\0\0>\0P@\0R>\0\0\0\0\0\0\0\0\0\0\0B\0o\0d\0y\0 \0T\0e\0x\0t\0 \02\0\0\0\0E\0\0OJ\0QJ\0CJ\0~\0þO\0b~\0\0\0\0\0\0\0\0\0\0\0_\0l\0e\0v\0n\0l\03\05\0\0\0O\0F\0\rÆ,\0\0\0Ð p@à°€P ðÀ!$\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„8„˜þ*$1$\0]„\0\0^„8`„˜þ\0\0PJ\n\0~\0þO\0r~\0\0\0\0\0\0\0\0\0\0\0_\0l\0e\0v\0n\0l\09\05\0\0\0O\0G\0\rÆ,\0\0\0Ð p@à°€P ðÀ!$\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„¨„˜þ*$1$\0]„\0\0^„¨`„˜þ\0\0PJ\n\0~\0þ\0‚~\0\0\0\0\0\0\0\0\0\0\0_\0l\0e\0v\0n\0l\01\05\0\0\0O\0H\0\rÆ,\0\0\0Ð p@à°€P ðÀ!$\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„h„˜þ*$1$\0]„\0\0^„h`„˜þ\0\0PJ\n\0<\0þ\0’<\0\0\0\0\0\0\0\0\0\0\0T\0a\0b\0l\0e\0 \0C\0o\0n\0t\0e\0n\0t\0s\0\0\0\0I\0$\0\0\0L\0þ‘¢L\0\0\0\0\0\0\0\0\0\0\r\0T\0a\0b\0l\0e\0 \0H\0e\0a\0d\0i\0n\0g\0\0\0\0J\0$$a$\0\065]\\T\0C\0\0²T\0\0\0\0\0\0\0\0\0\0B\0o\0d\0y\0 \0T\0e\0x\0t\0 \0I\0n\0d\0e\0n\0t\0\0\0\Z\0K\0„\0\0„Ð„\0\0]„\0\0^„Ð`„\0\0\0\08\0þ¢\0Á8\0\0\0\0˜B\0\0\0\0a\0p\0p\0l\0e\0-\0s\0t\0y\0l\0e\0-\0s\0p\0a\0n\0\0\0\0\0J\0^\0\0ÒJ\0	\0\0%sÀ\00\0N\0o\0r\0m\0a\0l\0 \0(\0W\0e\0b\0)\0\0\0\0M\0¤d\0¤d\0*$\0[$\\$\0\0tH	B\0þ¢\0áB\0\0\0\0\0	ô\0\0\0\0a\0p\0p\0l\0e\0-\0c\0o\0n\0v\0e\0r\0t\0e\0d\0-\0s\0p\0a\0c\0e\0\0\0\0\0PK\0\0\0\0\0!\0‚Š¼ú\0\0\0\0\0\0\0\0[Content_Types].xml¬‘ËjÃ0E÷…þƒÐ¶Ørº(¥ØÎ¢Iw},Òä±-j„4	Éßwì¸Pº-t#bÎ™{U®ã “óTéU^h…d}ã¨«ôûî)»×*1Pƒ\'¬ô	“^××Wåî0)™¦Též9<“l#¤Ü$yi}å\Z;À~@‡æ¶(îŒõÄHœñÄÐuù*D× zƒÈ/0ŠÇ° ðûù$€˜X«Ç3aZ¢ÒÂà,°D0j~è3ß¶Îbãí~i>ƒØÍ3¿\\`õ?ê/ç[Ø¬¶Géâ\\Ä!ý-ÛRk.“sþÔ»..—·´aæ¿­?\0\0ÿÿ\0PK\0\0\0\0\0!\0¥Ö§çÀ\0\0\06\0\0\0\0\0_rels/.rels„ÏjÃ0‡ï…½ƒÑ}QÒÃ%v/¥C/£}\0á(h\"ÛëÛOÇ\n»„¤ï÷©=þ®‹ùá”ç šªÃâC?Ëháv=¿‚É…¤§%[xp†£{Ûµ_¼PÑ£<Í1¥H¶0•ˆÙO¼R®BdÑÉÒJEÛ4b$§‘q_×˜žà6LÓõR×7`®¨Éÿ³Ã0ÌžOÁ¯,åEn7”Liäb¡¨/ãS½¨eªÔÐµ¸ùÖý\0\0ÿÿ\0PK\0\0\0\0\0!\0ky–ƒ\0\0\0Š\0\0\0\0\0\0theme/theme/themeManager.xmlÌM\nÃ @á}¡wÙ7c»(Eb²Ë®»ö\0Cœ\ZAÇ ÒŸÛ×åãƒ7ÎßÕ›K\rY,œ\rŠeÍ.ˆ·ð|,§¨ÚHÅ,láÇæéxÉ´ßIÈsQ}#Õ…­µÝ Öµ+Õ!ï,Ý^¹$j=‹GWèÓ÷)âEë+&\n8ý\0\0ÿÿ\0PK\0\0\0\0\0!\0–µ­â–\0\0P\0\0\0\0\0theme/theme/theme1.xmlìYOoÛ6¿Øw toc\'v\ZuŠØ±›-MÄn‡i‰–ØP¢@ÒI}Úã€Ãºa‡Øm‡a[Ø¥û4Ù:lÐ¯°GR’ÅX^’6ØŠ­>$ùãûÿ©«×îÇ!)OÚ^ýrÍC$ñy@“°íÝö/­yH*œ˜ñ„´½)‘Þµ÷ß»Š×UDb‚`}\"×qÛ‹”J×—–¤ÃX^æ)I`nÌEŒ¼Šp)øèÆli¹V[]Š1M<”àÈÞ\Z©OÐP“ô6râ=¯‰’zÀgb Ig…ÁuSÙebÖö€OÀ†ä¾òÃRÁDÛ«™Ÿ·´qu	¯g‹˜Z°¶´®o~ÙºlAp°lxŠpT0­÷­+[}`j×ëõº½zAÏ\0°ïƒ¦V–2ÍF­ÞÉi–@öqžv·Ö¬5\\|‰þÊœÌ­N§Óle²X¢dsøµÚjcsÙÁÅ7çðÎf·»êà\rÈâWçðý+­Õ†‹7 ˆÑä`­ÚïgÔÈ˜³íJø\ZÀ×j|†‚h(¢K³óD-Šµßã¢\0\rdXÑ©iJÆØ‡(îâx$(Öð:Á¥;äË¹!ÍI_ÐTµ½S1£÷êù÷¯ž?EÇž?øéøáÃã?ZBÎªmœ„åU/¿ýìÏÇ£?ž~óòÑÕxYÆÿúÃ\'¿üüy5Òg&Î‹/ŸüöìÉ‹¯>ýý»GðMGeøÆD¢›äíó3Vq%\'#q¾ÃÓòŠÍ$”8ÁšKýžŠôÍ)f™w9:Äµàå£\nx}rÏx‰‰¢œw¢ØîrÎ:\\TZaGó*™y8IÂjæbRÆíc|XÅ»‹Ç¿½I\nu3KGñnD1÷NIBÒsü€\níîRêØu—ú‚K>Vè.EL+M2¤#\'šf‹¶i~™Véþvl³{u8«Òz‹ºHÈ\nÌ*„æ˜ñ:ž(W‘â˜•\r~«¨JÈÁTøe\\O*ðtHG½€HYµæ–\0}KNßÁP±*Ý¾Ë¦±‹ŠTÑ¼9/#·øA7ÂqZ…Ð$*c?¢íqUßån†èwðNºû%Ž»O¯·ièˆ4=3Ú—Pª\nÓäïÊ1£Pm\\\\9†øâëÇ‘õ¶âMØ“ª2aûDù]„;Yt»\\ôí¯¹[x’ìóùç]É}Wr½ÿ|É]”Ïg-´³Ú\neW÷\r¶)6-r¼°CSÆjÊÈ\rišd	ûDÐ‡A½ÎœIqbJ#xÌêºƒ6kàê#ª¢A„Sh°ëž&ÊŒt(QÊ%ìÌp%m‡&]ÙcaSl=XíòÀ¯èáü\\P1»MhŸ9£Mà¬ÌV®dDAí×aV×B™[ÝˆfJÃ­P|8¯\ZÖ„AÛV^…ó¹f\rÌH ín÷ÞÜ-Æé\"á€d>ÒzÏû¨nœ”ÇŠ¹	€Ø©ð‘>äbµ·–&ûÜÎâ¤2»Æv¹÷ÞÄKyÏ¼¤óöD:²¤œœ,AGm¯Õ\\nzÈÇiÛÃ™ã¼.uÏ‡YC¾6ìOMf“å3o¶rÅÜ$¨Ã5…µûœÂNH…T[XF64ÌT,Ñœ¬üËM0ëE)`#ý5¤XYƒ`ø×¤\0;º®%ã1ñUÙÙ¥m;ûš•R>QD¢àØDìcp¿UÐ\' ®&LEÐ/p¦­m¦Üâœ%]ùöÊàì8fi„³r«S4Ïd7y\\È`ÞJân•²åÎ¯ŠIùR¥Æÿ3Uô~7+ö€×¸#¯mq¨BiDý¾€ÆÁÔˆ¸‹…i*¸L6ÿ9ÔÿmÎY\Z&­áÀ§öiˆ…ýHE‚=(K&úN!VÏö.K’e„LD•Ä•©{D	ê\Z¸ª÷vEê¦šdeÀàNÆŸûžeÐ(ÔMN9ßœ\ZRì½6þéÎÇ&3(åÖaÓÐäö/D¬ØUíz³<ß{ËŠè‰Y›ÕÈ³˜•¶‚V–ö¯)Â9·Z[±æ4^næÂç5†Á¢!Já¾é?°ÿQá3ûeBo¨C¾µÁ‡MÂ¢ú’m<.vp“´Á¤IYÓf­“¶Z¾Y_p§[ð=al-ÙYü}NcÍ™ËÎÉÅ‹4vfaÇÖvl¡©Á³\'S†ÆùAÆ8Æ|Ò*uâ£{àè-¸ßŸ0%M0Á7%¡õ˜<€ä·ÍÒ¿\0\0\0ÿÿ\0PK\0\0\0\0\0!\0\rÑŸ¶\0\0\0\0\0\'\0\0\0theme/theme/_rels/themeManager.xml.rels„M\nÂ0„÷‚wooÓº‘&ÝˆÐ­Ô„ä5\r6?$Qìí\r®,.‡a¾™i»—Éc2Þ1hª\Z:é•qšÁm¸ìŽ@RN‰Ù;d°`‚Žo7íg‘K(M&$R(.1˜r\'J“œÐŠTù€®8£Vä\"£¦AÈ»ÐH÷u} ñ›|Å$½b{Õ\0–Pšÿ³ý8\Z‰g/]þQAsÙ…(¢ÆÌà#›ªLÊ[ººÄß\0\0\0ÿÿ\0PK-\0\0\0\0\0\0!\0‚Š¼ú\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[Content_Types].xmlPK-\0\0\0\0\0\0!\0¥Ö§çÀ\0\0\06\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0+\0\0_rels/.relsPK-\0\0\0\0\0\0!\0ky–ƒ\0\0\0Š\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0theme/theme/themeManager.xmlPK-\0\0\0\0\0\0!\0–µ­â–\0\0P\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ\0\0theme/theme/theme1.xmlPK-\0\0\0\0\0\0!\0\rÑŸ¶\0\0\0\0\0\'\0\0\0\0\0\0\0\0\0\0\0\0\0›	\0\0theme/theme/_rels/themeManager.xml.relsPK\0\0\0\0\0\0]\0\0–\n\0\0\0\0<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\r\n<a:clrMap xmlns:a=\"http://schemas.openxmlformats.org/drawingml/2006/main\" bg1=\"lt1\" tx1=\"dk1\" bg2=\"lt2\" tx2=\"dk2\" accent1=\"accent1\" accent2=\"accent2\" accent3=\"accent3\" accent4=\"accent4\" accent5=\"accent5\" accent6=\"accent6\" hlink=\"hlink\" folHlink=\"folHlink\"/>\0\0\0\0å\Z\0\0\r\0\0V\0\0\0\0ÿÿÿÿ\0\0\0z\0\0#\n\0\0s\0\0b\0\0²\0\0 \r\0\0™\r\0\0þ\r\0\0ì\0\0\0\0?\0\0½\0\0Š\0\0\0\0/\"\0\0å\"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!\0\0\0\"\0\0\0$\0\0\0&\0\0\0(\0\0\0*\0\0\0\0\0\0®\n\0\0²\0\0›\0\0r\0\0!\0\0»\0\0I\0\0ß\0\0å\"\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0 \0\0\0#\0\0\0%\0\0\0\'\0\0\0)\0\0\0©\n\0\0Ò\n\0\0í\n\0\0?\r\0\0f\r\0\0\r\0\0k\0\0\0\0§\0\0j\0\0•\0\0±\0\0å\Z\0\0XÿŒXÿŒXÿ„XÿŒ\0\0ð8\0\0\0\0\0ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0ñ\0\0\0ÿÿ\0\0\0\0ÿ\0€€€\0÷\0\0\0\0ðü\0\0\0\0ð\0\0\0\0\0\0\0\0\0ðš\0\0\0\0ð(\0\0\0\0	ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nð\0\0\0\0\0\0\0\0\0\0ðb\0\0\0B\nð\0\0\0\0\0\0\n\0\0c\0ð$\0\0\0D\0\0\0¿\0\0\0Ë$\0\0Ö\0\0\0ÿ\0\0?\0\0\0\0\"ñ\0\0\0?\0\0\0\0\0ð\0\0\0\0\0\0\0\0\0ð\0\0\0\0\0\0\0ðB\0\0\0\0\nð\0\0\0\0\0\0\0\0S\0ð\0\0\0ƒ\0\0\0\0¿\0\0Ë\0\0\0\0ÿ\0\0\0\0\0\0\0\0\0ð\0\0\0\0\0\0h\0\0\0å\Z\0\0\0\0\0\0\0\0r\0\0\0ƒ$\0\0r\0\0\0t\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¦\0\0¬\0\0ë\0\0ó\0\0ß\0\0ä\0\0ì\0\0ò\0\0T\0\0\\\0\0Á\0\0È\0\0\0\0\n\0\0\0\0\0\0.\0\03\0\0f\0\0m\0\0U\0\0X\0\0Z\0\0_\0\0k\0\0q\0\0w\0\0}\0\0~\0\0…\0\0“\0\0š\0\0\"\0\0/\0\0Y\0\0_\0\0i\0\0t\0\0	\0\0	\0\0I\n\0\0N\n\0\0R\n\0\0Y\n\0\0^\n\0\0e\n\0\0\0\0\0\0\0\0\0\0)\0\0/\0\05\0\0;\0\0<\0\0C\0\0Q\0\0X\0\0:\r\0\0=\r\0\0Œ\r\0\0’\r\0\0§\r\0\0¬\r\0\0à\r\0\0ç\r\0\0ü\r\0\0\0\0¬\0\0¹\0\0Â\0\0È\0\0Ó\0\0Þ\0\0Ê\0\0Í\0\0Ï\0\0Ô\0\0à\0\0æ\0\0ì\0\0ò\0\0ó\0\0ú\0\0\0\0\0\0$\0\0+\0\0Å\0\0Ò\0\0o\0\0u\0\0K\0\0Q\0\0\0\0\0\0\0\\\0\0h\0\0Â\0\0Ç\0\0×\0\0Ú\0\0Ü\0\0á\0\0í\0\0ó\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0ˆ\0\0\0\0a\Z\0\0k\Z\0\0–\Z\0\0ž\Z\0\0×\Z\0\0Ü\Z\0\0Ý\Z\0\0ã\Z\0\0ç\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¦\0\0\0\0‰\n\0\0\n\0\0\0\0\0\0ç\Z\0\0\03\0\03\0\03\0\0\0\0\0\0­\0\0­\0\0®\0\0®\0\0ú\0\0ú\0\0b\0\0i\0\0|\0\0|\0\0}\0\0}\0\0\0\0\0\07\0\07\0\0³\0\0³\0\0ä\Z\0\0ç\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿ\0\0\0\0\0E˜ÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿ\0	\0\0\0	\0\0\0ÿÿÿÿÿÿÿÿÿ\0\0[~©2ïnŸÿÿÿÿÿÿÿÿÿ\0(TLÞÔV…ÿÿÿÿÿÿÿÿÿ\0±dÓMîp ^ÿÿÿÿÿÿÿÿÿ\05{ÜiÖþ’Åÿÿÿÿÿÿÿÿÿ\0PU³w>pÿÿÿÿÿÿÿÿÿ\0\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0\0\0\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0\0\0\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0\0\0\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0\0\0\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0\0\0\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0\0\0\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0\0\0\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0\0\0\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0OJ\0QJ\0\0Øð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0OJ\0QJ\0\0lð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0OJ\0QJ\0\0ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0OJ\0QJ\0CJ\0\0 %\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0OJ\0QJ\0\0lð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0OJ\0QJ\0\0ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0OJ\0QJ\0CJ\0\0 %\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0OJ\0QJ\0\0lð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0OJ\0QJ\0\0ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0OJ\0QJ\0CJ\0\0 %\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0CJ\0OJ\0QJ\0CJ\0aJ\0\0Øð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„Ð„˜þÆ\0Ð^„Ð`„˜þOJ\0QJ\0\0·ð\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0\0\0\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0\0\0\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0\0\0\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0\0\0\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0\0\0\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0\0\0\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0\0\0\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„h„˜þÆ\0h^„h`„˜þOJ\0QJ\0CJ\0\0·ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„Ð„˜þÆ\0Ð^„Ð`„˜þCJ\0OJ\0QJ\0aJ\0\0·ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„„˜þÆ\0^„`„˜þOJ\0QJ\0\0·ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„Ð„˜þÆ\0Ð^„Ð`„˜þOJ\0QJ\0\0·ð\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0\0\0\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0\0\0\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0\0\0\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0\0\0\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0\0\0\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0\0\0\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0\0\0\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0„\0\0Æ\0\0\0^„\0\0`„\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„Ð„˜þ^„Ð`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0·ð\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„ „˜þ^„ `„˜þOJ	\0QJ	\0^J	\0o(\0‡h\0\0\0\0ˆH\0\0\0o\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„p„˜þ^„p`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0§ð\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„@„˜þ^„@`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0·ð\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„„˜þ^„`„˜þOJ	\0QJ	\0^J	\0o(\0‡h\0\0\0\0ˆH\0\0\0o\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„à„˜þ^„à`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0§ð\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„°„˜þ^„°`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0·ð\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„€„˜þ^„€`„˜þOJ	\0QJ	\0^J	\0o(\0‡h\0\0\0\0ˆH\0\0\0o\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„P„˜þ^„P`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0§ð\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„Ð„˜þ^„Ð`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0Øð\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„ „˜þ^„ `„˜þOJ	\0QJ	\0^J	\0o(\0‡h\0\0\0\0ˆH\0\0\0o\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„p„˜þ^„p`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0§ð\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„@„˜þ^„@`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0·ð\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„„˜þ^„`„˜þOJ	\0QJ	\0^J	\0o(\0‡h\0\0\0\0ˆH\0\0\0o\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„à„˜þ^„à`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0§ð\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„°„˜þ^„°`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0·ð\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„€„˜þ^„€`„˜þOJ	\0QJ	\0^J	\0o(\0‡h\0\0\0\0ˆH\0\0\0o\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„P„˜þ^„P`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0§ð\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„8„˜þ^„8`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0·ð\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„„˜þ^„`„˜þOJ	\0QJ	\0^J	\0o(\0‡h\0\0\0\0ˆH\0\0\0o\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„Ø	„˜þ^„Ø	`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0§ð\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„¨„˜þ^„¨`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0·ð\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„x„˜þ^„x`„˜þOJ	\0QJ	\0^J	\0o(\0‡h\0\0\0\0ˆH\0\0\0o\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„H„˜þ^„H`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0§ð\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„„˜þ^„`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0·ð\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„è„˜þ^„è`„˜þOJ	\0QJ	\0^J	\0o(\0‡h\0\0\0\0ˆH\0\0\0o\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„¸\Z„˜þ^„¸\Z`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0§ð\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„Ð„˜þ^„Ð`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0·ð\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„ „˜þ^„ `„˜þOJ	\0QJ	\0^J	\0o(\0‡h\0\0\0\0ˆH\0\0\0o\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„p„˜þ^„p`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0§ð\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„@„˜þ^„@`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0·ð\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„„˜þ^„`„˜þOJ	\0QJ	\0^J	\0o(\0‡h\0\0\0\0ˆH\0\0\0o\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„à„˜þ^„à`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0§ð\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„°„˜þ^„°`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0·ð\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„€„˜þ^„€`„˜þOJ	\0QJ	\0^J	\0o(\0‡h\0\0\0\0ˆH\0\0\0o\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0„P„˜þ^„P`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0§ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„Ð„˜þ^„Ð`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0·ð\0\0\0€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„ „˜þ^„ `„˜þOJ	\0QJ	\0^J	\0o(\0‡h\0\0\0\0ˆH\0\0\0o\0\0\0\0€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„p„˜þ^„p`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0§ð\0\0\0€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„@„˜þ^„@`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0·ð\0\0\0€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„„˜þ^„`„˜þOJ	\0QJ	\0^J	\0o(\0‡h\0\0\0\0ˆH\0\0\0o\0\0\0\0€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„à„˜þ^„à`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0§ð\0\0\0€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„°„˜þ^„°`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0·ð\0\0\0€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„€„˜þ^„€`„˜þOJ	\0QJ	\0^J	\0o(\0‡h\0\0\0\0ˆH\0\0\0o\0\0\0\0€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„P„˜þ^„P`„˜þOJ\0QJ\0o(\0‡h\0\0\0\0ˆH\0\0\0§ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(TL\0\0\0\0\0\0\0\0\0\0\0\05{Üi\0\0\0\0\0\0\0\0\0\0\0\0±dÓM\0\0\0\0\0\0\0\0\0\0\0\0PU³w\0\0\0\0\0\0\0\0\0\0\0\0[~©\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0W\0W\08\0N\0u\0m\02\0\0W\0W\08\0N\0u\0m\03\0\0W\0W\08\0N\0u\0m\04\0\0W\0W\08\0N\0u\0m\05\0\0W\0W\08\0N\0u\0m\06\0\0W\0W\08\0N\0u\0m\07\0\0W\0W\08\0N\0u\0m\08\0\0W\0W\08\0N\0u\0m\09\0\0\0\0\0\0\0\0\0\0\0ÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0\0	\0	\0	\0	\0	\0	\0	\0	\0	\0\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0	@\0_°\0\0\0\0\0\0\0\0\0\0\04HÂ>\0\0\0\0\0\0\0\0\0\0\0ZC\Zj\0\0\0\0\0\0\0\0\0\0\0N\0\0\0\0\0\0\0\0å\0\0\0\0\0\0\0M\0\0?9\0¾e\0*\0rz\0²)\0Ÿ-\0ÀF\0J;\0­y\0ž\0¼K\0k\0xh	\0Àv	\0ã7\n\0Pe\n\0m\0Z\0X\"\0ó_\0\Zd\r\0MM\0%g\02\0µR\0*S\0„7\0QH\0ì\0ø=\0Âa\0L-\0Ó.\0²3\0Û)\Z\0oz\Z\0\0”\0}-\0¬=\0m\0_I\05p\0Á)\0á/\"\0ö7\"\0pA#\0˜h#\0×\0%\0.7&\0Üs\'\0[(\0+D)\0³$*\0wZ*\0az*\0Ò+\0Y,\0/,\0œs,\0Ý-\0÷]-\0é$.\0•R/\09n/\0©#0\0l0\0\Z]2\0o34\0\"!6\0ò<6\0|U7\0ÄV7\0¹9\0à|9\0þX:\0r;\0H;\0Ù5<\0xE<\0ãL<\0g>\0¨ >\0,>\0ñ1>\0\\2>\0?\0•?\0¡?\0@l?\0%A\0˜B\0HMB\0\"eB\0úbC\0¡nD\0tF\0xRF\0ƒSF\0G\0R&G\0QWH\01I\09I\0älI\0ÚK\0o@L\0E~M\0Œ?O\0ÞaP\0rR\0H,S\0^U\0YV\0Ì=W\0~X\0ªY\0ó/Z\0•	\\\0H\\\0‰]\0^\0&^^\0L_\0\'|_\0øp`\0©1a\0tc\0@d\0%e\0xf\0ˆf\0Ñ/g\0%=g\0Dg\0]h\0Õ	h\0jh\0;i\0dj\0ýPk\0=qk\0 ~k\0+Wl\0uYl\0lgl\0ùqo\0Ìp\0\"/p\0TTq\0Ú/r\0ÀEr\0t\\s\0¿t\09v\0/Hv\0ÆNv\0tw\0wnw\0Ux\0Æpx\0ž<z\0g?z\0¯U|\0V|\0m|\0A%\0Ç=€\0B€\0„_€\0ôY\0¾o\0(%‚\0Ëp‚\0üc„\0§y„\0QX…\0·.†\0K‡\0ÿ(‡\0ð;ˆ\0|ˆ\0\r\Z‰\0tk‰\0”[Š\0˜zŒ\0Ø\00K\0*Ž\0-U\0š}\0@\0àQ\0\"x‘\0Ð‘\0¶“\0Å)”\0‹^”\0Ôl”\0Â1–\0U3–\0¬D–\0‹$—\0ƒp™\0Ùfš\0ápš\0O›\0X›\0qb›\0swŸ\0TzŸ\0@¢\0žZ¤\0€n¦\0Ä §\0}§\0>\Zª\0]O«\0ù\\«\0P­\0¢®\0\"T®\0JH¯\0òL°\0ðP±\0$n²\0¯y²\0®O³\0m³\0§(´\0xµ\07¶\0]>·\0ƒi·\0\n¸\0Ž-¸\0+¹\0>a¹\0Ri¹\0†\'º\0Ïxº\0M»\0\"j»\0\'\n½\0F#½\0M¾\0»L¿\0¦À\0Ð0À\0¿2À\0%sÀ\0\ZÂ\0fÂ\0è@Â\0BIÂ\0ãÅ\0&Å\0ç9Å\0DÅ\0ì~Å\0ŸÆ\0Š_Æ\0]È\0iÈ\0ý=É\0‰eÊ\0gË\0ä~Ë\0=+Ì\0ÿJÌ\0ÅgÍ\0€Î\0P\\Î\00Ï\0š~Ï\0þfÒ\0\rqÒ\0j	Ó\0¦HÓ\0dÓ\0£1Ô\0‚Õ\0ù;Õ\0\r#Ö\0 ×\0\"Ø\0[FØ\0Í%Ù\0l\ZÚ\0ú~Ú\0á@Û\0³\0Ü\0ÂUÜ\0J6ß\0í\\ß\0üGà\0Baà\0wfá\0ßlá\0u\nâ\0åâ\0-ã\0—{ã\0Â@ä\0Ç|ä\0çKå\0\r3æ\0Á<ç\0Œè\0çBè\0Çê\0Uê\0wsê\0BTë\0uì\0™zî\0*ï\0èï\0õ`ð\01rð\0dsð\0ïò\0\0	ô\0„<ô\09\n÷\0Ö÷\0ù÷\0yø\0¬Dû\0ŠPû\06ý\0[\"þ\0ì(þ\0^ÿ\0\0\0\0\0å\Z\0\0ç\Z\0\0\0\0\0\0\0\0\0ÿ@€\0ú\0\0ú\0\0\0 /\0\0ú\0\0\0\0\0\0ú\0\0\0\0\0\0\0\0\0\0\0\0\0å\Z\0\0h\0\0\0@\0\0ÿÿ\0\0\0\0U\0n\0k\0n\0o\0w\0n\0ÿÿ\0\0\0\0\0\0\0\0\0\0\0\0ÿÿ\0\0\0\0\0ÿÿ\0\0\0ÿÿ\0\0\0\0ÿÿ\0\0\0ÿÿ\0\0\0\0\0\0\0G\0\0ÿ*\0àAx\0À	\0\0\0\0\0\0\0ÿ\0\0\0\0\0\0T\0i\0m\0e\0s\0 \0N\0e\0w\0 \0R\0o\0m\0a\0n\0\0\05\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0€\0\0\0\0S\0y\0m\0b\0o\0l\0\0\03.\0\0ÿ*\0àCx\0À	\0\0\0\0\0\0\0ÿ\0\0\0\0\0\0A\0r\0i\0a\0l\0\0\07\0\0\n‡\0\0\0\0\0\0\0\0\0\0\0\0\0Ÿ\0\0\0\0\0\0\0S\0y\0l\0f\0a\0e\0n\0\0\09\0\0‡\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ÿ\0\0\0\0\0\0\0G\0a\0r\0a\0m\0o\0n\0d\0\0\05.\0\0ÿ.\0á[`\0À)\0\0\0\0\0\0\0ÿ\0\0\0\0\0T\0a\0h\0o\0m\0a\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0€\0\0\0\0W\0i\0n\0g\0d\0i\0n\0g\0s\0\0\0?\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0€\0\0\0\0W\0i\0n\0g\0d\0i\0n\0g\0s\0 \02\0\0\0]\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0S\0t\0a\0r\0S\0y\0m\0b\0o\0l\0\0\0T\0i\0m\0e\0s\0 \0N\0e\0w\0 \0R\0o\0m\0a\0n\0\0\0?=\0\0	ÿ*\0àCx\0À	\0\0\0\0\0\0\0ÿ\0\0\0\0\0\0C\0o\0u\0r\0i\0e\0r\0 \0N\0e\0w\0\0\0O.\0\0ÿ\n\0€k9\0\0\0\0\0\0\0\0\0\0¿\0\0\0\0\0\0\0L\0u\0c\0i\0d\0a\0 \0S\0a\0n\0s\0 \0U\0n\0i\0c\0o\0d\0e\0\0\0A\0\0ÿ\0àÿ$\0B\0\0\0\0\0\0\0\0Ÿ\0\0\0\0\0\0C\0a\0m\0b\0r\0i\0a\0 \0M\0a\0t\0h\0\0\0B\0\0Aˆ\0\0Ð\0\0h\0\0\0\0\0¤gy´§zmª¦\0\0\0\0\0â\0\0\0\r\0\0\0\0ƒ0\0\0\0\0\0â\0\0\0\r\0\0\00\0\0\0\0\0\0\0a\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\020\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ø\Z\0\0Ø\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Jƒq\0\0\0\0\0Üÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0HP\0\0\0\0	ðÿ\0	$P\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdj\0\0\0\0²\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0x\0\0\0x\0\0\0\0\0\0\0\0\0\0\0 \0\0ÿÿ\0\0\0\0\0\0\0\0R\0a\0j\0e\0s\0h\0\0\0\0\0\0\0\0R\0a\0j\0\0B\0o\0b\0b\0y\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\n\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0þÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0à…ŸòùOh«‘\0+\'³Ù0\0\0\0h\0\0\0\0\0\0\0\0\0\0\0\0\0\0˜\0\0\0\0\0\0¨\0\0\0\0\0\0´\0\0\0\0\0\0À\0\0\0\0\0\0Ì\0\0\0\0\0\0Ü\0\0\0	\0\0\0ì\0\0\0\0\0\0ø\0\0\0\n\0\0\0\0\0\0\0\0$\0\0\0\0\00\0\0\r\0\0\0<\0\0\0\0\0H\0\0\0\0\0P\0\0\0\0\0X\0\0\0\0\0`\0\0\0\0\0ä\0\0\0\0\0\0\0\0Rajesh\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Raj\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Normal\0\0\0\0\0\0\0\0Bobby\0\0\0\0\0\0\0\0\016\0\0\0\0\0\0\0\0Microsoft Office Word\0\0\0@\0\0\0\0T™J\0\0\0@\0\0\0\0(FŒäîÆ@\0\0\0\0„\'wÛåÎ@\0\0\0\0:$~çÎ\0\0\0\0\0\0\0\0\0\0\0\0\0\0â\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0þÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÕÍÕœ.“—\0+,ù®D\0\0\0ÕÍÕœ.“—\0+,ù®4\0\0ð\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0p\0\0\0\0\0\0|\0\0\0\0\0\0„\0\0\0\0\0\0Œ\0\0\0\0\0\0”\0\0\0\0\0\0œ\0\0\0\0\0\0¤\0\0\0\0\0\0¬\0\0\0\0\0\0´\0\0\0\r\0\0\0¼\0\0\0\0\0\0Ï\0\0\0\0\0\0ä\0\0\0\0\0\0\0\0IT\0\0\0\0\00\0\0\0\0\0\0\r\0\0\0\0\0\0Ø\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Rajesh\0\0\0\0\0\0\0\0\0\0\0\0Title\0\0\0\0\0\0\0\0\0\0ô\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\08\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0_PID_HLINKS\0\0\0\0ä\0\0A\0\0\0¬\0\0\0\0\0\0\0\0J\0Z\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0t\0t\0p\0:\0/\0/\0w\0w\0w\0.\0m\0o\0m\0e\0t\0r\0o\0s\0a\0l\0e\0s\0.\0c\0o\0m\0/\0\0\0\0\0\0\0\0\0\0\0\0\0Ï\0\0\0>\07\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0t\0t\0p\0:\0/\0/\0w\0w\0w\0.\0g\0y\0a\0p\0t\0i\0.\0c\0o\0m\0/\0\0\0\0\0\0\0\0\0\0\0\0\0Ï\0\0\0]\0U\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0t\0t\0p\0:\0/\0/\0r\0v\0r\0.\0t\0h\0e\0w\0t\0o\0u\0r\0.\0c\0o\0m\0/\0\0\0\0\0\0\0\0\0\0\0\0\0Ï\0\0\0&\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0t\0t\0p\0:\0/\0/\0w\0o\0r\0k\0f\0o\0r\0c\0e\0-\0b\0a\0s\0e\0.\0c\0o\0m\0/\0\0\0\0\0\0\0\0\0\0\0\0\0Ï\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0!\0\0\0\"\0\0\0#\0\0\0$\0\0\0%\0\0\0&\0\0\0\'\0\0\0(\0\0\0)\0\0\0*\0\0\0+\0\0\0þÿÿÿ-\0\0\0.\0\0\0/\0\0\00\0\0\01\0\0\02\0\0\03\0\0\0þÿÿÿ5\0\0\06\0\0\07\0\0\08\0\0\09\0\0\0:\0\0\0;\0\0\0<\0\0\0=\0\0\0>\0\0\0?\0\0\0@\0\0\0A\0\0\0B\0\0\0C\0\0\0D\0\0\0E\0\0\0F\0\0\0G\0\0\0H\0\0\0I\0\0\0J\0\0\0K\0\0\0L\0\0\0M\0\0\0N\0\0\0O\0\0\0P\0\0\0Q\0\0\0R\0\0\0S\0\0\0T\0\0\0U\0\0\0V\0\0\0W\0\0\0X\0\0\0Y\0\0\0Z\0\0\0[\0\0\0\\\0\0\0þÿÿÿ^\0\0\0_\0\0\0`\0\0\0a\0\0\0b\0\0\0c\0\0\0d\0\0\0þÿÿÿf\0\0\0g\0\0\0h\0\0\0i\0\0\0j\0\0\0k\0\0\0l\0\0\0þÿÿÿýÿÿÿo\0\0\0þÿÿÿþÿÿÿþÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿR\0o\0o\0t\0 \0E\0n\0t\0r\0y\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ\0\0\0	\0\0\0\0\0À\0\0\0\0\0\0F\0\0\0\0\0\0\0\0\0\0\0\0+ûD~çÎq\0\0\0€\0\0\0\0\0\0\0D\0a\0t\0a\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0ÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0,\0\0\0\0\0\0\0\0\0\01\0T\0a\0b\0l\0e\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04\0\0\0òP\0\0\0\0\0\0W\0o\0r\0d\0D\0o\0c\0u\0m\0e\0n\0t\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0ÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\07V\0\0\0\0\0\0\0S\0u\0m\0m\0a\0r\0y\0I\0n\0f\0o\0r\0m\0a\0t\0i\0o\0n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(\0ÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0]\0\0\0\0\0\0\0\0\0\0\0D\0o\0c\0u\0m\0e\0n\0t\0S\0u\0m\0m\0a\0r\0y\0I\0n\0f\0o\0r\0m\0a\0t\0i\0o\0n\0\0\0\0\0\0\0\0\0\0\08\0\0\0\0ÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0e\0\0\0\0\0\0\0\0\0\0\0C\0o\0m\0p\0O\0b\0j\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0y\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0þÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0þÿ\n\0\0ÿÿÿÿ	\0\0\0\0\0À\0\0\0\0\0\0F\'\0\0\0Microsoft Office Word 97-2003 Document\0\n\0\0\0MSWordDoc\0\0\0\0Word.Document.8\0ô9²q\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'LocalBusiness',NULL,326);
insert into `template` values
(18,'Breaking','ÿØÿà\0JFIF\0\0x\0x\0\0ÿá\0²Exif\0\0MM\0*\0\0\0\0‡i\0\0\0\0\0\0\0\Z\0\0\0\0\0’†\0\0\0\0|\0\0\0,\0\0\0\0UNICODE\0\0C\0R\0E\0A\0T\0O\0R\0:\0 \0g\0d\0-\0j\0p\0e\0g\0 \0v\01\0.\00\0 \0(\0u\0s\0i\0n\0g\0 \0I\0J\0G\0 \0J\0P\0E\0G\0 \0v\06\02\0)\0,\0 \0q\0u\0a\0l\0i\0t\0y\0 \0=\0 \01\00\00\0\n\0\0ÿÛ\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342ÿÛ\0C			\r\r2!!22222222222222222222222222222222222222222222222222ÿÀ\08€\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0âP\0à‘Ï­>DPr§9ëQ#‚G\"¦SÁ=é]nÇ=Æ*nsŽÔànÔÍíÈÏ^˜§¤LßhÏ$ö¤ä;’B»«u)SÓ}*IÓj–Q•S‚Â¢/qRÝÕÆ»¨\n=Åh[êr¬9G9ôª\n7€O ŒŠ)]¼\r¿Z‰ÁIZBwL’;x‚8Œùg¿¸ªŽ æ À‘ÎïZ²dXÛœž8\"«ùE¹<{S„UÁ1#DBà“ž«Jâ2vç­:Ø¸a\"Œ®?ýu_R2ùÂHr|®¸¨¨îÕŠZîiÚìéRQò²C©èi‡TšÛR¹»@²Çp¤J1ÁÏcSY(¼#æe	e#Ûš¡q2ÙXÈ$ÄÇöø¬êBîáÍíBK;Ï³^›—@ÇBG^+\ZíRø¢]@ÑªôaÎ*¶\"ÎZÞ6ºŒB(Ë(ïÅ-Ïˆ£¾0Â±¶»RßBšÖäñØ´ÎÖ ¾Õ\\‡=H¤‹@bÁb`î9ÃU«ÝA¡´·h@ÜGéV •‚‰‡R3×½wº%¶c•h‚0W½^„¤ÑnSÉè}j=Ció22j§…æIõ±HØÜØ\\œ`Ö’}kêjÇ¤­Õ»B\'^Jç·Ò´‡µŸ\'Ïû£ÚsŒð8­i<9¨XÜ-åœ©2(Îänô­ù<F`±™Òå#i#ÃG»¾+–¦\"t¦–é‚Zêy}îžtíF[vt¡À#£Tv²y2ïÀéŒTš„âêòi·d³dªk(FÁ<æ»ÜoIo±µ&¨ÍjÐmÈnù¬c	w8sVÖV\n©`jEŒ-ÂðÜ˜ÓšÅ(Ó½‚ãôÛæ¼ò®NÀvö©e¶ˆ<ÈV6\0\0Cþ¯šèuÝ\n[2NÒ0¢$\nã8cé\\Í´S[ùï*hÔ8Ç^+ŠHb:—ÈÕ+;£my¹	ÂœZqß¤R`üÐ¸Ã)<ê+væÝëéO.6œô+®¥MÞF{‹\"=ÖöVfFÊ?°õ®†kë(úK«g€ô5Íè÷¶št1¹¸Þ[ph‡\'Å\n–ÚäÍ©&à~B8 Zç­KiEÙ\"ì’Ôé¯¼ï³Çr«…TÂûZÇÓ-ôÉm·ª•‹)ù*ßáŠ¿c-î•hÖ·3,ðm+þ \ZË±µ†ÇS)‘É;Õ³W†Iê¶d½\n©P†\0nÀ¤ù˜˜ãM«ëZ3Ä\ZìÃ›\nò­½#Ã\rÂFòfŽ¸çW¡*”©G™èJÔå¢Ó$‘IHÙ±ÔŠ­«¤Ì2OC[óG{aWWŽ9;ŽV{°1I!_»ž;š~Ù=VÁnÅgB \0{ÔÐÉ,jÉ†5½Î3Q[][Ï–I*ŒœöúÕ†¶’HÄ¶¨eŒ’Ÿ:™v-\\\n[¹”#L?Âÿ\0oZ‹JYåQ\\ÇpÇÐø¬“Ë|ÃíéO†ùàÈSÁ¦ÛŽ-ã“ÄŒr‚!Œ¶0:uükHiŸñ0¸8Y!9/±‡LuÎ¸±~bÜQ™w(\\g<UÙ<[%”k.ÂP¨C°àŒ§×5ÍW›tmNÛ3ÛÛ¨à@ñç.™Ç>µGUÑâÖ¬d™íØ¢d˜”d€;ƒùÑiªØÏ ½Ä‹pŠyIb9ÙèXzv®»Ãdê^[ë7xgÙ‰¦Aõ9¬!9k¥¹äÚ=Íç…5Yn4{¸ä†D9Šn¨íõæ½Â~!žA<WQ,R3Ž<r	ÈõÏq\\µÆke©]ÁpÑfIq‚ÇÆ{uéSI0ŽÞá±xÁOB\r*´·Z•\n–VGysu\rÝÿ\0ÝTŒGº3Œ\0Ù9¯C¦¦¡&D7p/Ïƒ‘Ž ~æ Ôe¶hf-*oßæŸ¼G¡#µoé$töq¨s´8ÇÇ$ÿ\0s¼<©ÃA©¦ìz\Zýžka\rÌXÚÀ²øZçüG[º=¼1¬R(ŒÈP0\0ž2?­f]xÝâ»{U*(cHÇäq]«©XßÚ¢2	QØ©Îxê>•—-HÙ=‹R[K¬Ipn –XvT©Ï\0àÖÕÑóìlc•¢½²ù°sµÐ‘ßèsXÚÛ]GuJèñ7ú¶õôõ¦Cwäé­k<oùóa˜Ž¤t»ùŒZ0v»¹$0_Ç-Ä*Žðµ7”ðEtº”\Z%·ÚcK´Ïû³$‰„SÝOã\\ÿ\0…uÿ\0°Í4wž9yù~ðnÄW¥¯‰l’Ê	n­I| ÜÁ{’s]´·2–«CZ]=¯Ï=Ë4…WäN6‘Üzf®i:dÖ3O<â%¡~^ ã\'¿s£6so#C\"3[®:~x­-F«å´ò%dÎn2ÛKÃó¥vÕž‰•Öç?ã>­§¯Ù‘\0€4©)?}®:W“ø‚ÆKKµ†Kx’lœ£†W=sžÝ«ß®î%L¸h`W`åÄÀ€Øì~µàþ\"Œ®dÃE8—oƒåUúýGë[RnQ×¡œ·#Ð/tý5odž÷I•‡k``‚C^Ÿá×Ý®¢ÿ\0#Ú7c‚êW^A£MªÛÜÜÛ-ÌHÙ’<5zM¦ºú•õÅ­Œ¶±#®Ãž™\'û½+t¹¢Ò3nÎä?|7{wy>¢‘	#EUVEêl{Wë2Ú\rñÊd•¾DéÀöï^©}ªkVª±Ü/ž–Xâáã¿Æ¹O\\}´ØÄ%…oT4ŒÈvÉØ}êZ†¥\'wc‚Ú)ãŽ@B¾ò%F»cÔzúTBÁ„\"p¡Ô“•SÈ³¥\\Y}–[{£ótF’9çšdSËlˆ4ô•§Do3åÜ»R*\"Ô´czí\0…×GeÜŒO^*|™•ß%%êÀô\'Ú®\\Ld’\'Só¢’¸çÒ©Jžk\0_zÀŠÞD…YAêzÔG!‡+NÞ9^Àõ§ßAlq,MÉ]Äz·¥+hUõ3ŒJˆ¼6îHGÖš@+ŒÔÂtÜ»H$ŒgúS‚ùiÀÔÒ•\0<òNrë\0íOnŽµ5Ö†Uô44ûÅG>jFáb1ª²ú÷â¶\'‹Iº»,ŒæÃ~ðú×4!b7qš±lMÌî®k)GªcRèi>$7,bUxÃ•V\'‚*åîŠßÙfgaªw$jÀ‡Sè;UÙ‘®-ngk†GÀVU.9ÇlŠoöd\ZªZkƒhÓ°%n€ù×3ªï¹J:›\'—ù*0U³ŒñV®ÅrÀn0HèO­K—=Ì»m¢y&çm¼(îIôÛ¦®Ù“3@Ã`ž)ã!¸Óî¢û<Þ[`ºœAúSbÛ$\ZÔD©»8ÇZž0rH©`P;gð©\nçƒíT‰hhBIâšÀ\0Z“¸ÓyÁÇÖžÀè¾`=qS+`•yäò*@ùíÁ¤Ø˜Ä/¸2ðAàŠ¹-´‘ß²ªïàiïw$ÒùŒzœj\\ôD)Ëœ\Zêt{¸-Ë“\nË$ê¸äÎxÜ+˜\\°ìµ7s)äç>”Ë[»‹ÞC‚®¿Þõëž´Ubàù]ÎÊóÄ-e­\\Ü[F°<‘ˆ¤M¼ñŽG×‡o\ZÍ2q·{.1Ü\Z›ûNì\"¤œI)b¹ôª“OûËxÓäè@ÆyÎO½rÒ%ÔUŠžºÜÝ’¤»Éñò¥ÀÜýß­P0\\)\r$ˆæE$a²G|~4“O¡5¿–ï<›%Ù°GëQ_Üy-&ãÂ„\'z~_­:sì÷\r,vš$÷–öâ™Äi#vê½8õãÒ´õï:V¦èÀéž¡XÅpxŽE‚!Û\'^~fÆ}‡¥Y²Õu…wfå6s·“žõçUÂÔu=£4Œô±rÊ&µ¹m…ó\Z’Û~ñ\'¹ü\r\\1ÂÚÖ¡r}¦8‚Ýî\0ãØVv¡­#¼Òai6íÃ®qž{r:{Ô7šƒN¯mD‰·Ë0ÇÆH<÷ã¿Öµp©Q&ôa“,Å¬È¶†F O\n.Ø¶ä9n>‡¿ã[zN§g¦Ý[\\,®ÆÏ!\\O@O×¡ô®Rò{)¦An%±;w`9N)í|¶—Qµ­ËHû¹\0GEÇp+YRŒÒ²³+=N†ÏEºþÕó®\"•™ÈÈ>üUûÍZÚmb{gb#Ž2®yË7·é\\ÀÔîÝR;8&$Ï\'<gœ{RÞµÍý×™å¬rª(+cƒúþ•“ÂÎ¤Ó¨ú2KCgX»y¥‹ZÝ¶	UOÍ¸tã½ii÷ïedm<†UHW$F1øW%c¨Ég4±Ë‚åFCx9Îj6ÕgŒ’]I÷Î~µ£ÁJVDJ©gsWMƒý*Pò„ädã\"ªjçí—QÆD[ðÄdUHî$†wHJ·{{TÓÀ“<onòL¡øÁÁ>µÕìš•Ø¹î´:¯iË¤D-¼âË9ÊŒg-Ûè:V”¶ÐÊÂk¯’mÀ+©ÆHãúÕ¤p‘IûU9$_éW\"ùJÉ»cO *¤ðFrxõ®\Z‘÷®Ív‰ÐÂ¬‘*¹Ééõ‹ˆmÅ¤³\\¢9¼£Ç¿éSnZˆRumð¹ûÙ×Æk¹S“Z!sÅ5ÛÝNÖâ$·1ÇnêÄË·$0ä/ãIáíJâú	^âG,­‘òðW?OÂ³õM÷VºûLÍ\ZÈ7,œíõÀíÚµ-®l´í\"YDÁü•ùÊõqŽ+f’‚IjBzÜÝ¤¬ÝZ¶ÖíöùR§ÕMKs}F3ç.7rœŒwô¬9]ìiÌ­rÔÒˆa’R2Kô¬›=[Í¥“ÛÊÒÇqÓñ¨õ+¸u+qiorQÙ”³\0HÛßðí\\ˆuÈÑ¾É%ºÛ@êÑ¹8Õ…Jœ¶Quf—ˆo®,Ì÷ÞÈÊmQ«žÞ¾”È5¦ŽÊ’9ÖùãÌDÈ$âýEUÖï-dðæ¥/”ÁbØ²\'@äz}j-SŽ[ÛY7Gp[Ë§BåükT–ì»t;ý+P‹S°Žæ\"J°ç#¿z»Yš5Í½Ü5£›€fÒ´ë­lH×uK9GRi#•%@èÁ”÷ì¢(¸ò÷’\0xÆy¬«M^“sÂêìHb«òœf­Aµro©¿E5X:†R=§TQI@EPEPEPEPEPEPEPEPE&j¥Íò¤N`hå•GÜ2)¤ÞÂm\"Ù¯\rñÎ»ªj\Z¥äbçe’Q<žxç<þ5Õê~;¼ŽÎâ\0™Þ\"Ñy2e±Ï_F¯\'žÚòêi÷w*±äŒzúÖÉ:~¤üGUav/Äê;dƒyó#L•v9Áã¡üë£[­[JÔ{AÑ¸X­ÕÎvƒÉ{ãõ¯1Ð¯îm|ÀÅœ¸ò”œç¯â+Ðl¯t1]ê²,ªÂ?\'çƒÖ±g{¢z½Õn2É#,ªpNpNyÏ~p^/ñŽ¹§Îtö¹ˆ8,‚Ý~u^¾½óWâñ…çˆ^+OÁsŒìšò\\ vƒÔ×W¥xNÂÎ	±yÒLâYeœyÏ±ÍDj]Å%©åRé:§‹5i¯-ä°µ`ËeF9öúWw x4‹«9£xmç—ÍÝ¸y•Æ\Z»d´†9¢íÂí\n:céY>(Ô$Ótô¸XÕ£(rrN\n>ñ=1]Š³“Q‰“VF7ˆ´\r!ôYb™ûXLë \\Ž:=p1zò¹¼5©Þ\\M|Om`c;UŸû‘Ï\'É¯MµÔáóí¯u(ÚdYÛ³åWœ3ÔçJ»âƒê¬²,’ª¹Âg’=ñÅk­ùe©)Ù\\ó½ÂÒOeïXÆÊÓ4u`¼qYºåÎ•¤éñFll¯uY„Ï;b*@Ú=s×5»®K¨Xé‘­¢Kgmæ°i·eÂFÂG§<{×jV¡nRY~Ðç#ï/Ö¢iEY!Å¹;‘X–d7|BÛÈç¾0?\\T¶éw,H-b%cååÆ0sŸÆe¡I:ï¸—ËQ B:‘ôÔëzVŸ£Â±ÚÌfó á€œšâ”ììoek‰k=ÍäsÇ¬jrÎò-´g`.ã8j•¾}k4†Ú(¥HåP\ZTÈbxþugLÐnob{¢’y›ƒ#ÈÇ%zcÉ5ÝÛ[ùMÔâû4©Èp™9<†#¹çÕ•J­1¤yî§cyou$Wö¡‚•ŒOËžkºÒ--â³D¸Ñï#L1*2;=3ÍWžSR×U·0\\XY“7\0HÛ9aôÈ×Yg«Å¥ØÄBµÜ“³Hd$™Áäöõ­æÔW¶„z|¢]jSN¹ÚDÆ25R®p©äc=+cN–+{û“-µÅ³9ùL‰ò•õÈÈú×+¡ë7£Äš†¡w\n¤7yX”6xŒíëùó]ž™ªÅìbò\';p§ñéNÊâ¹}§Svõ ôç­x/‰®ŒçT+\n•šì˜Ú1¸àŠï<yo§Ùéæy$–Þö`ÍæÛ’71·èsÏÒ¼‚=J[v	–xCî)ž¦´V@®\"è×¦Ú)…³˜ß,tÀëVg´¹œÃCû ¬ß0\'¸…li\ZÂÞÃ›2«A+Éå;íGO½nÿ\0•Pñý½Ù·XU·…&V`\0OÝêjm§°Ñˆ’H©[\n1‘£“­Fã©æ‘V\'2t«1azf«D˜ãô«È„Œc‘@\\•ò9ÅkévfâéP$0xà÷¬¸”gWà›ËuØÄƒ‘I²®kÜAo\nJ«’Øàdÿ\0…dM,9$dýjçÏ:;1mÿ\01Áê)·/ž|¬•î3š\"	–qŽÕ2ÆF)«ÁÇ#2°8ìjì6„Uæ§ŒÚ\Z‚yëS¬`æšÐC~aïWm™âutb¬§ ŽÕBK\n·Xê3C`Íu=õÂ5Ì€àqèuš5é @LDd’y¹+x7c·¹®–Öê3<6Ñábà3ŒŸZ†‰:ŠB3H¸\0çônùˆÁàu¨3#w“ ³ŸJ‘\n7žæ—½-\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\07nTƒQ¬@ŠšNã¸Ð€Ð 8À\"¦7VuËOvæ8Ãlô¡&ÄW¹»ŽæsÒùp/]£;ªµÄ±˜¶XÄù^L„c§‘üÓ|ÍéÚ®ˆ#lTU_@)Ý!œÕ–ƒöÖ]Èvÿ\0uO?_»´³²„C\rº–cØdŠ×\n‘\'\0(\\ožtxÆÔY—­&ØÑ$°Æ|˜,fLdŽA¬{*@Ü¬…‹\r¨:Wf#UbÁFãÔúÐÊ€HõÓAÌsvúfœÌ1‚a—’MNšM…´@»ŒA`G~Õ¼T¢šèŒ¿2„f†î…sŒÔ/˜YO¶6àÚ¢Ó5Õ¸¹d¼rw(T$tÇc[Ú<Þ.cÚ	ýãv±.´#1Íšæ\"py¬åš&mhg¥äc!;6úf™-Ô–Ó†¶Û…%°\0?ONj¬:Ú³»ƒÊ™\n•©âðÜeÉn¶ñ²\\ä÷Æk5Þ¬ßZ,ÖBêfYH+`­bËn¬ñ;’×Ä–Þ~TŒ/¡ï[cM:Þek_2]ß*¹,Jö>•§\r…œö±áQ;°«‚¥T½Ý)é¡ÎÅ£I¬Úù—ÒK<²\0î1³Ž@ú×3¬xRKtûJH/HÂò½z´râb‚pÃùb¡Ô,ÖúÝá ldýiÆ¥µ¹ä_@ö#Kh\n\\0²òÊïíKf§A’kÓ\\²®\"a»’:×¬ÿ\0bX Ü–P‰\0`¬-oFÂeŽÞàÁÈ¬ß,—-·4RÔƒNÖ¤ƒKIe!fuóåH=1åY—¾!žõ|‰.Â¡_˜ Æî9ÅsšÚì	à!Î<œåqíéYÖ19ßSùÏÈàzŠæ†S»*Nìïtd³½¶d†Ý…‘ùo¯5GQ·†Yã¶’èÊ’0Æ8³UŽ©åi-”‘ªÀEb:f·t†·xwJŠÇÑ…D¦âL‘V/E¥E%ÓÉ¾åA9&¸yä¬°*r0À\'ŒW}>¿k<7PÎ».GÔ{W©_4SŽþSƒ‘À­)¶Û¾äZÆ²ÇûØ D%Hè*ƒ-¼·‚$nîÚéXÒkÇqfÃ\00¦£‚ï÷Ûä“ç·SZ(¸­}N§PDû ¿ÝäWªÛÜÃ¶R€(ès]„-²@.®FxÈ­súôŒ–Ž°¢˜7a]ñ¸ý*©ÔæÐ™+}Ôï#òy¢ÞV-¹8©M£²ïe#ð«ú&•s¨\\4v¼,Ä‚º]’™œqŒTžy qŽµu¡ÚØ#‚zÕ{»MŽDm¹q’ÀWL¢s€¾\ZáUˆîEB.É#\'½hé:2êHÈ³F’œíÀŽßZömÔvÓ…?vÛX“X9Æ.ÅY•ì ûh‘LÊ›W-–Àüjšv“Î\n–6³&Á“ÆE<ÃŒ”FUÕÁ¶Äônî“ùC‘Ôgõ«FÛ—\'×š¬Ñ³(e H¼Šž9šUV ž}kTº¹e!\04cå8&ŸöGòÁDÊ°àŽŸ>KyNÅ|’:®)f½}.HŽwÛ¿‘÷MLÚQ×a#!ã2Jå‹Fûpj|ÜÝÎT[9–NÆ;V½”‘^NÈ‰$ù€ÏZõ[K»XLÐ†šd®\Zµ•¥ºocÍ¼?§´WÍ­µ¼™0¸BšäµMUb-\n¨vä6FE{®£¤Y¿“+	L±<XÀdà{×øž;Igó,mDsLH•\nãkz¯±ý*hâãˆºJÌ´´Ôãmof°¼K«W1J­¹H®šñ,õKxõT¶1È?ãá@ã9ûÂ²aÑdG\r8äóŠÔŽóìñËhË…‘vô­çX^úŽ÷Ðmì‰Ž « djÓžæ4Ò¬D÷î~¥sLûâ1w#eIííLóäK¨Ö\'û‡ çŠâ£ÍÍv\rXé.áb6õÏZæ¢¶š×TÜ2¥NA®Þ×Oû}¢Ý[±iúÈÿ\0¨«ž%³·µ[	ÚØIüŒ\0Á<w­å‰‡:‡VD{ö×º“im-½ÉhÇúÔœ\\v¬™šGË33Rj+Hü½Vymå0§\'nx>Õ¿¡hí¬_,\0ì[Šèn4¢ç=‚O[àXO¹‚2c,\\žr;T÷V’ØêRÚÊ\0–)\n·§­nKáKÉtxõKWIã$‰#_¾‡×ÜUÏJœc)=69Èãdû¹§ƒ]æ¬YkRZ[êv1¸páÝàvp:ýk“Ôt»Í4@ÓÅ´L»”ûUÍ\ZÆòæê9-”\r¬	f(ú×&2«Òææ·fTl™èå ±»e¼˜%¤Ï…þ\"¸«›ñSéÑkqØXÎ·Is\n†y0X“ŽGj«§a{¨4WwfÕâbpFåÜ==ª\r{N²ºÖ »·LW îòÆcnµÁÃÓ‹P¨ÿ\0®§]ZM.dÓGªZ\\i·:!Èz‰ÀbŒ„ŒõF9çë]ž­áxmíD¶Ï¼EÎìAŒçT§CU´›\r;W´–™ÖHÉ™åqýy¯ztôg\n©¡•q-¡·†H-Ì7KÄO=~µ¥ohË¦Ey4Î²3apqë\\ì³V‰°veC-.›|÷	%µÃ±|Ðœõ>†¸àä›ŒwG[i)ß‰ÈsÉ«±èÏ©Eu$¨°ÎXœa½+–¶¼š)\0r@}«¢Ó59d‹”IârÆzqÞ´ª´÷IŠîmÝø~êÚÆ;¢Hä\nÈTõü}ýjÔz¬–ZWq1ôÜOåšlZòj;lâÙh€ïD„RHÇlúUPÚ^ íö«Ùä‰]ÛHlÿ\0“\\5*IÇ–®æ§ØÃ¾Ö§¼žHa¸Y¶œµ¼Ç¡R:ŒW\'¬__AzÂhY#VÎåF{dS§³:?Š+¹J\"8D;CÜc¨Å[ñWcS‘`Š&ŠHÀ;x£¡ ÷­¨/ur…¬õ2´}KË¿”•R—VR+mï/4í:{kIA!ŸâQí\\Í¶›z“n)êÝk¶£,ãåˆo68×]“Ü–»In.cX‹0+Õ†ïzIfÉ^½ùªfËHÇcöÅR¼r¾Oß«RqÑ‘c]î–4Üç#Ú¡‹Rv(Ä%‰¸ ÷QÎX ==«gO¾ŽÞÒ[Hà‰à™”üÃæ\0zÔ¥¨âtÔb³µ6¶¥ŽÉÏ>µÓh)–Æ42F»ÉˆÇ÷òí^dgiØwmW¬õ! ÿ\0Tèx`3»ëYû-y‘nZXô^M6òÙ 2¤7~r‚ç®â1Óû¼uúW-ÖÙ^ÞmÉ”ñšm¬ö‰v³Jû~l‚Üÿ\0Ö¨.ÊKûé[l¬pxàŽÆµz²5D‹~âàƒ&\"o•€èEohö3K|`³\rÆ![–SÈö5É1”á—9®«Ažå\"k˜-˜˜Îw\'ðñSYZ7ˆâõÔÐÖtíe\"¯¬w!ÆÉ#ã8Î>•KO¿4p%Ôœ‘¶3òí<÷=¿ÆºÇñ	Ô4õ·kx¼—FYZRw6O}Éë¶É<_g$@iVlí óƒJœ]”d9¾¨ÏÕfŠæéSw–À±us	9àŠ¯st÷¶Q[¼çÊ„áNÙkZÓe–;FZIU=}óøsUN‰t¶ñ]H1nÌ2AÎLãô­y]®G3c¬m£†	¦v+2rŒ>ëàûÖŒº¼oå°Œ¤zŽsïUmæ·Žœ˜ðAãæÚ–ŠÚî9	‘`Èa‘ùŸJÊKÞ4¾šÏá×²¿Òí•ád ûÌ|í×ƒ×8­ûâËc.ÄvýÒp+Èçñé<f)ƒˆßÍFŒcæÏÓµoxwÆqÄ–—‡$³Iãîÿ\0QKšêìK{VšÖ¢h®¡¢Þ97¬§Ž1ù×ñ,…ä³ZL\Zãz¤Š§îžOã^›g{§_ÛÇDV\"2¸Ú}¿Zò\ZérZë—&$€7˜\\Èsí]”eôV2š9ÇÓ®#™¼Ô`Å¶’C7^¿»ëOuo6óÅaˆ¼ÕLÌ	äŒŽ§ÊºmP†ïOÓìÞÔ#‡YQAKŽ¹ô#¯ÿ\0d}–ãTk;}Êe2*H\0ÃcªûòEokØÎKC;ÄÚKKCccz—0\0¬òàíNî$ñ\\…í†¯;5ÝÕ»¾ö,ÎÀØõÇJë¼U«ÛMgikhff	1\\r¿Ÿòª—ž0’ïM\ZeÅ›G\Z¦Ù¥+—ÝØŽž‚’iÇ@8„ 2(Ï¿?áVlÞXîKÆ\\’p¸ç\'=>•%àX!¶–7ŠG•rÊ3û³Û>õÖxQläŽ=Éû×C“0AûÀýk“SÙ.cH.m\"[Iæ¼}‘Ü	!ŽãYó€9ï]6º—:v³3LWæoœ§Ý$õÌHw±8ÉÉ«„ùâšY‚¿ÊAü¨oŸ\0ô¢9ÈëJã¡«B±0\0„\n­òœúý*\' ±Ù¾iÅˆõÎ1LVçÜqC0–Á\0qNŠ-Çš½±*²8$1àÈ5¡”«iY·J€ÀqÁüêSWÔcâÓ¤{$Q™!xÏÝä©,j¾Ÿio­˜Ó$\'€Ç\0î#lfºŸ\rj-å¬7Nb¹ÆÍ·åd$ò1Tõë4˜… ºYåC½JŽWØúÖ.§-^GÔ«{·DºeüéRÚÊà«\"ÄA$©ÉêkQìî£‰rñCžTàžzšè|5¢ýºÙ.ãÙ*\"˜ö‡8óÎ}«PÓg–8í‘÷C‡xìð@üéU,+rÐ•Rú¬¬&Õî$(Ï,û.ŒŽH?†kÐ4ŠÞÝ4«Ä\n—°˜†~ú1ã“Û5ƒá1šÒÇ,ÒE89ç¡Ï¸éT¼G©\\ÛLR6t¥rÎ,<)ô#ÉZ”½šèh¬•ÌísL[=Fá˜ÑÆÛÛ¾;Vx„¦*Wž{Ù7\\LÌzœž§ÔûÐÙ?(é^%%Í¹›d‘}pjÊ¶FxÍT@Aö©Ãü¸Ål@Ç89ÍF_Áâ‡È=j#À4\0ï3 þŽ\0êsÏjRr Rabq6E7ƒ\'SïPn(#¯$*Ò±ÆqQt‚Å‹Y;/ÌTeˆÝêÄ÷^s#b\\ýüc#Þª.ÐêíØýßZ™mä¼¸HíÓçs…Uæ°œ’w\Z-iÚŒG-ôAÓ’Ž½C…V’x·6Âr­Á<ñUnbxJù‘`œ€Þ¸ã5\0V¸©Áè{RŠMÝïc]u[•¹yhÈïÖ¢„ÌdoÏ\\ŠÏ\\ŒòHÇAJ%ä‘íMED’ú ¹bŠÊ9;r{u«Fp°Û¤a¾qýïÊ²£;eù‰óNŠC4ñE¿hg“Û<Põn[¬wW[´ª­;…óˆÙîqïŠ}õ¥Æ•w5µÄÉçÄÅX¯#ØÖ®ö—’G\'ßŠ’=A©ìÎd21,ýI<Šv\\£êiÙ¼WW‚3¢ã1¹ü3Zú{Ç¬¶~P¹iË@àœoÉàƒØƒXVöw6Š,Ãr¬c$ò@ã?«’^Í©[Ko·rCÅOzÂªºiv5[¤Ñ½{nñ¼íX\nÄ«ÔœsQ‰ŒƒkífÆH©®5X¯õ)fº*­¹dtCÁ–´µI4ËzÞòÒö9#»*\nýäèb¸¡ˆ”-­G(.gc6óE-ZìÎ»Baž}«9˜Hn½ëÑ\'ðô‘[Kmusç RüŽ¼£ñâ¸tÑ/¥™Ì6í ^NÁžøþuÝ„ÆBI©³9Á§¢Ó4åRGáFÐqÚ¯é÷ÎíåX·\" ó¬ù­$µ•`U¶†Ç§Ö­4¢J;Ã1 µÑ)FKMŒõGi£Ie{dñƒäÉ\Z‰{ucüCÓµbj:¥ÔR’ç*€´r!çê+ÊàN±£f&É`=A=+gW(ï•o:nüÌ§«“ŸNõË\ZiTÔÝÊñÞõ\'ðÅÂÉt®ä3a‰Î:þG‹kwu%„–âUó#Ç–r{\ZžM9bˆ””pIþb¬è2[Á«‹‰ÎœFr	>¾Ã­zPœUÔNvšÜ³k­ßi1Í,ó—¸8DRwsÜŸNÜSa[«›±yçs Iê§­ekékt²yá‘¤`á€Ëg¯ò©,u™ím\'HþRÀn\'©55âÒ¼ºšj×>Ó•Õ£È%•s·€jkÛjw2J,ÌrÊ08Ç<=k¹¿wf^vHw²Zm¤íl2¸@Ùäÿ\0/Ö¹½çrÜ•ÎÒÆèA;˜¦fÞY¤HHäLñ\\µý¸¹Ô\0ºœhÏÎœ¨Ï8üÿ\0ZÞ4Åd\\\" ØÀn¶+»²ûû	Ù÷±ù£Ïð‘\\nž¦Ñ•Í-wP–óM´Ò­í|«q>Ü†\'Ì=y•t:•áèå^(å–2\Z6ÇÎ3÷G¡®RÅàŸÄÉ¼iÎààŸóÒ½OžçP¿šß(½¾×EÆ	éŸÖ¹êûªÆ±;Ý-^;m²F\"|ÿ\0«ùGáWK\0	$\0>ÕÌÛÜÝYÍk±X.3‡gù”ßò¦x“Åb¶ž;âºž,yÐ“‚PñÇâEtÓ|èÍ»øžòÆîæ+#,­8|ªÛ¿ï?6Óš³­§O©Á¦[8¸‚XŠ²€8nùî­yžµâ[u8ÚâÈEª¤´9S„äuî?:©£kWß¥è¶i®Í#ï9n99ìkªn1I&f¹™ïª¡*Œ\00PÔoäÓÝ$1o…™Pã®I®_HñLóDÿ\0jŠVxcb…FKÉ×WIi;]À«p®¾`Ü»ðú}+“ÚÅ;nl“h†/[M·ln3 L0Çâ+e[r‚3Ï­aéš%¬*w	â7“°ëüëuF\0+IXHZ(¢¤bRÑE\0”´PEPRÑE\0”´PEPV^½¬G£iï3æ0\"0{œV­ejú-¾¯$rœœó‚;žÕP·7¼\'{hy½Ï‹üB<Ût›¸åÜJ*”*:ŒcéSXY_i¶©¬Ý[ÜÍ~¬ÒU~Wz}z{W¢ÙèVNï_;€˜äšÐÀÇJÛÛ.ˆžDy¦•áÛ½JÎf}*;ieO6©$ÄŠOf_LÊ¹›	Þiš»G=ôO¸%\nNOÓ×šõ‰õ]¬ÁÃ0aÂç¿L}+Õdº‚êßOÓ¬ÔÖÊ\'-»ý[zý:×j’F°ô(i¾Ðldº½¾šg´€oØí´žOöéYøJ{Ä®ÐYµ¦ŒXCå^\\rzôœóÚ»oØÛ]Ã©ë×[Ë—SRŸÝ$‡\0túfµ¯nìž—op3)ò—¨ÏÝÀÇÒ¹ýæ®‹ºZ	áëtðý„–„GˆÎó±v…ÍmC¬ÙÌ±È\'A±@ÌqózV.Ÿ«±Ó7ÜFe!Q¹Þ˜À?˜5ÍëÚ ÔmÖx­äŽ8˜LáIéÀª¥5‰“-v7|gâˆ4&R\'‘åh¤18öcíÖ±|?¯j\ZŽ¥jú”‰,EO“.T?\\“Ý°\nók÷Tò®`u·‰•aÉßŸéO¾µ–k}:êKÈ\ZÝ<õèß\n©-Q“„™è:ºØÃ¨Ë)¸8¹|(`G#{:µTñF˜uµHe½½!cŽÙæl¯$“ÂŽz×¡|=ñ²¶÷w›{i—!¼Ì¶Ò:šõÏønÇIÎŽI\'º“k‰%ØgúVª²µÙ>Ï¡ÂGðÛY½´&ÿ\0U0#”¶G\'©à–îjÜ^Ð<)§Ã&¤í%Îà­$yèz‚;ŽÕè÷1y±²\0¥Ç+“ŒW–øúòí\Z$¹ºò|¼ÀvëRêJJìv¶ˆaŽÂöÚ94ø“lNI}À3ñ»ÜqP]è·³jÚƒÙä£òOI?.ù«\ZSi·š\ZGždð6v³lOÇ­uz×‰mí4ãŠ{Yg‘„,…ÀÀ<t\rr9§-M-drI­cê%.|–ul¹|#×õ¬íC^šþî{©5dÀ‡z&ÏêMg]N×þ1–Ö+HMÛ°†9‘žïqÇëRË¡ÞXkk¥jQHmF>hÇ\r¸õÏÔšJ—1NZu«jEÒßKUû!(ðÄ«’åGøª0kZýçÙîbòDrn•×åÆ	ÀüÏJ¿¬Ecá›XþÓ<ÐßF«$p£|í»ŒƒØ\\~·­¶£tÐéÉ,v²¤kå°Ë»¨ÆxîI5Ð£Ë£\"Éêz¶…{§i¬³]YJ†BCÏ(Ý#yî8¬+Š°®<vPÏ\rù¹-(`äúŽ•ÍøKMÒeñ%®Ÿ=ºßÏ0Ê™	DGÇÝaßÒ»{‡–‘^3Ñda÷”ñÀö\'ô¡É%aÛ]N;]ñM×‰ošõ¡”[\0±Æ²s´ã“‘ÆI¬©à¿¶š_6Ì«ÅfR˜*oÔ~uè>$ÒgÓ4?K•c‚%“x…[Ž¬qêMWñT6³ªËeM«\"JL¹û@<yÈ³ÙêV<³÷>cÛ€2ÎƒŒñíùÓYžWQ°†nƒµi}¨iö9›* ‚àÎ:¥Q¼Ô¤Ôç–{¬0¥Õ^}^–Êí±“·§µ9u5~ÃDš÷Oº¼W‰!¶]Î]À\'Ðß5EXtíHi’\"îa·¥]Ê´`©ÚÝ\rRA·:ž\rL˜-Ïje$[NH«ƒÈJúJ§lpAò*ËËæ²±Àç(¥Ñm|ÛIïX+ÆÍ¤u\'¥_±yežeQ“´ðsŒžüÔž·¸º\\–‰bAò³Œàç¸®ò+{m*È} «°·måŽ{VZØw±ç~\"ÒÐ#DŸ:’Ó7×¦GjÁTÍzMî“%ëH±eŒ»ÙÜOAõÀÏgqfåg…£>Œ1šÚ—4‘W¹äy«HXâ«FÜâ¬E <w­,C,+0=*ä2dƒEƒD²0à8Ú}³R@Á²O·ÖšhH½¤&Üü¹Î+¤µ:]Úò¬Ì¡vž\0>¢¹DÉP;UËxÙÜ*òM&ŠhìVÁQ6Å<ˆ8È\ržjhã›q-pÞÙQÒ–ÀIö`eÆóÉÅYëYÜÉèSŠIØn8÷«ƒ 5]Ô	0dt¢C”´QRHQE\0QE\0QE\0QE\0QE\0QE\0QE\0QÒŠi¸=(¤,‡¦@ïNUUR€\0ÀéKNà‡KE !X÷H$~N8àTÔQ@Q@ŠJ\0ŠCñ³’=*­ŒMæ3«dü‹ž•6©¼Zî@2©ì*ŠØÃ,\"áÙ‚·9cŒj™¶–…#T°\\­Ð/sCª!iÛqßÒ«ÙÊ%a±‘,c!›½Yž%•@lmïUõ%™ö72Oq\"·Þ<—#·¥L4¨cF13¤¬wosŸð«qG\Z¯È½ú‘ÍKJQM6AÊ¨Œ®Ã‚@ÅëU„lTƒÔŒÔô€RåV°\\AÀëP]–iÞ©‚rIç&²µ¼ˆ«ƒŽ?QQ6Ð#ˆÖìek¦h!\råGƒs¢9YéJÈN(\'Æ½y$k¯2ÜœóÛœTÖÖBå¥’EÌ |ÄŽ¦²uRîy„pÝèÌ 0¬ÐAgô®ŽÎÒêên£¸}…Bm\0Œû]•¦Æ\0nUœãåû¢­.™oLj‡MdîÞ¨9»;«ß:y•B¼îzíàvüë‘•.§‘åf “ÐšôïøUìÎ£ÌE#jŒdw®\'S²¹ˆ8Ø@\r÷Hæº\"£¦ânèçã`IÀÎA©’9Q#ÍžÂ·aÓï.æ…–5AÆx­tÑ<€æI”q´ðsDªÅ2­v:DÎåHlÕ«.™a$¶×70¼ÖŠxºz\ZÌ“G™•œ:˜Ë+¾õÐhV3jù*A$\0Îjç•¢î™V¹©{áÍ\Z{YÆ\rùRS$ŒqZ^´ƒÃšG=¢¬²«–uäO†1S$vÖ²\\³6È¾Wb\'~/Ð$\nÍss¢¡ú;{TN¬Üv¸’ìx¬ó+Ä>\\P‰ÿ\0vU1½¸ÏôªM9*CTà«îƒ^Üš±Èñ#ÚÜß)šºmZº3€m<ûr…d=Ü×ð®Rö_´2ÊUƒž\\“œšÜÓõŽVÖà[J¹-†9séùW%h©GcH»Æ¡\nÏ·È‹¹Ã Á?QI4æâ&•\0Uy2O¯µBtË›‹cvñB2I8ÜER¶SÊ³½E:i f‹B-Ù|ØØo•ûQÜÎÝ9¿Ù>´Û›ë–·ŠÚK$2€hÖH™$]k]Hv6cœý­îhqïõ£Sum:T3`\0G_jË³”ÑJß:ô\'¸¨Þâõ\"J©ýk:´¹¶vF¶ƒa5”¥B²ç=*ô=/]	-\'–]iÃmcõ‹¦hÆm;íämãï`š#³²¸ŸÌJ½Üƒô¯¯4¤áº4q¶¬ëaÕìn¶D×+o*J\ZŽ¾ÇÐÓ5½CÖ®&µœCØPñ´C–ñêk—ñ7ƒZÛM³Ö#œÝ[¬^[%Áî§úU=\'Äyñp¸ò.0ÇäÅ„ËF=1Þ¼ºôªS©Í	lV‰]œ}äÒ­Ä¶l¬!wŒ0éN°Óá¾Ô’ÚúèZàHëÀôÏ¥tþ1Ö,ï5a)M	U”¦\n¸?Åùb¸Yeiy9µ}:ø{ËFÌå£Ðëçø{%œë$ò­ÍœãjÜEÿ\0,ØôÜ==êI¾[éëçÏ2Œ¬‡®Þ¼S<-â{»U‹M•‡˜­á•qžTú}k¨ñŒšÖ¦Ì—+g\nY÷\0ýÓé^¶¯J¯$å§sE«œ\r®¤tmLK>C|ÁIíéøWM­L5>jT‡Ä‡æéžÔ·~Óâ²’;»óû²]Jàê+ûlúeÃGÃ4ŠÆý2=¯F.–&j­=Ñ-YzŽ‡u§C\rÒÃ\'–À–n6qØ\Zè<\r©ØÛßÇ¶Vi$GÞ…p9ï\\¿öÒ]Ø}Šì†.Ž	ëŽ˜éZžÑ!¾Õ¥„JË\"D^7lq^–aRŸÕä§µŒ¢Ë\ZîÚ¤×zÆŸ ˜H–5ä©õ´ßx†m7G¼…\"‘å#rmÉÇ¯kXšÿ\0Bx%‚X¢7 ‰¸à0¬(î.oïÒˆC$­¸KÚ$Ï`kÄGV$ÕáÓäkk;õ:‹ïøJ¼\'o4Æ×¶îD°0ù—®}Å]´¾Ótÿ\0ù–òù$dŒžUñÈÇb+œ¾Ž\r6F6ÀCt‚ð7qYšÄ‘XÝÇs2¼™£T*NªJ?\nw°JÛõ5í¼=q¨éæh!óåsæeNX(àävæ¡Õ´+Í\ZX&¶wp#,êx162Tþ†ºº³ÓZk9äˆ²••á—Ÿäj]wÅ“]h\ZtÖò¾pb¸ry8àt ƒŒ×ÓûJr¦àÕŽt¦¥rõž´šöwak,p]­¶V\n$ñšåm­|Ûö‚rÉ·!¶õÍE¥Ü½¾‘}jÑ+<¥J’9Rr*di’Ñ®˜Æ%VÁÚ;W˜êrG’,ÞÈ–âïÉhÚ(Ú(ñ <gÅc&#l(ç<J–ö÷Ì”J‹´0ÃÅG$-QÏÏ—! V¸TíË-ÁùAyÎY³Ç\'=Emé²E©¹7a]xçý=ªM;ÀšÖ¥d·°ÄÝ“zÈ[‚+¥±ðÞ•…®d‘Ýµ6Ç\0†<õë¢¼}’÷‚ñ€%7×Cª®pI­™~5áI-õˆ–9có#b¹î½j¥•…™µ•¼æIã\\”q•n{\ZôRÓ­t%³7Šfb=0;WŠ¯ËãÐÚ	\'iEiá[­?Ä&ÇTd{e%ÄåG¡á]†£§iZjÛ¸¼¸®Æ²9Æ;;Œ\Zçî|Blþ ^O6Ù­§Ê•eÜ\0#ƒQZ7¼G\ZIqnñÙŸÝ4¨rŠücýÓ×ó¥	Ôi7¦€Ôm¡§¥A£Î\\Ãq¶Ðèàž™ä\nÁ¤ò<jg9àc5oXðõ×‡e‰g’;«Wÿ\0W*?#ØŽÆ²®.\\ÞIæG·€3Ðýk«UÔïr&’A\"ˆNJpG²e]ädÞ•ÐC<wãìÏå+ëêkö/˜… •ô9®–Ù’Ð’wÁòñ·n*œ%“1± S‘%“j… ÔæÛnÇ}Ø,Aö¢CDqNÑó1ŒÕˆ.TœÜ\\Ž•L©“1ã•9¯Ø¤¶¥dš6Te8m¹S‹«§èòêJÖÓÄfw}™ßk¸ÿ\0g=OµEä)ýßq¹H ©Ç#Þ«Áx\\K»$aXu^jÌšd·+Ûî•d\\ü§qÈê+evK°[]Â¶ÆaVÉ7q]ß‡ÚÉ4¶{\rQ­%1´DOßàààûúz×›…b«íWlåš9~I6nKg±¬åMKp¹¹yk=´_hÉžnîùlyàTÚsïµ’	¢ó]Át`GË‘ÔÓíšßS¾ŠÜÎ V\\3–%Xã®=jÚØÿ\0cêŠ#vŸ*7F£—“øVj£^ïQÙ=ÌkýkT7…n$9‰<°1ü?Ö¬É¯4±ÄBªÂˆ±²(ÆyÎ~¹¨õhî´Ò…©ýØr>¸¨­n`M28Ä$é!!˜pê­]”¢œ·\Z|®È|ñ[4LðËûö—‘ØÓëIs¨Ãr\"W‰7†;ð /Ðc±ÅY¿ŠÎöåŽÝ\\\rê­À8ííY’¢X]I\ZHŽ»vç‡?Ö”R`Ë\nã‘‘Ë0\0‡°5ÔZøŸO…\"Xtà·EB¿Ì6“ëŸBOZâ³îÇ\' ç­\n¾Dçx#ýÃZ:i¢Tš=2÷[œ¥»Ø-½¤!YYž|ïÆ8\'Záí-¯µ&hEÔBçÙ™$ÝÛ\'Ò †äJ²C=ËÆ¾[l‰ÿ\0ëâý—‹hÌQÎ\'/“Àÿ\0<S¥G¨Ió-\r6¿Óã+¹í§ Ï|˜çšê¯uÝXi±\\I¹¸†8Ö¸}:ÚòâéV9ÙQŸ9sÆïzÖ\ZìˆÜ¼›71õèçZJ¤ofJ‹h’÷U–m-Œ¢3s¸ÂŒ¶}xþu.¥s=¹¸2;˜¯ÌäúšÙ—ÃsXÅç›‡†-™2`ïþR÷IÉÍ½ôr@ó(ŒIÙ‘ÉÐQÙ]0¾¶fR@ÒÆÎ¹Â`°\'µ\\°¼º´½‰\n«\"±@Î:ŸÊ³âû@%Kþíx$Ô,¢9¿xûÀ?w8ÈìsYÔ‹iÜ¨»;Uî‹qqr\\º8|¨V~TƒÇµsWúOÙí>Ñ\n3¢Œ9ÇCÓšè6êVº+[]c`G—3É“·§Ê{õ¦GlòØÏo«J	®C|¹Áàã=ëŽ”Úë¡¤íÐãîVe8Ú2E–2®¤§î‘Ö½;Ã>¸U–ÚöÖÈq.¡Ž8Xž<ðî¢ÚZËh²,³¹ @HýEi,e%QSNí¡&®pîå˜œõ=©¨@#8§H‘„O.MÌFYq‚§Ò™tb\0~é®ÅfNÅûFé-í£/3dª/SŽx®†òÂâÅ†	šÜå|ÆLr=ZÎÒüÝ^Qt¬“Âr¡_$pr=tþ,Ôm¦‚ÖvŽ=©ºO/ Ç­kÊ¹H¾¦mµÌIªÛÞF†DL­ÐúñSø†at‰º­ÑÔ§Gã?CTôéàŽÏ{nå0W±úæ¤¿\r}s3ªº4(;~è	öæ¸ý“•U\'ÐÓšÊÂhúÜ¶öÙü¨1U‰Ï¯n8­Ÿ…á•­U‰ZG²åzp?\Zãâ“eÀvrA\ZØÓ.¥T¾K¨ùqü^ÞÕß}¬uº¨ºµmZØÅ\"í	)L0:{ó\\Ìúyî%fùÕŒjâsø\nô-5’êÚ¹ƒìðÌKnRFþªÏÕlmÞæ#k$Q31Üßuzpsø\ZæœW>ˆ¸½,yô1îC¬€ôc×ôâ¯½”1ÙEt&Y7äTƒÐÿ\0:¯$KŽ€‚ÊÇ$r\r1Û]B’É\\~µ²bB?/šÇo(sŠ™ü±Êô?¥B~÷ËÒ€ g%úTl_9ééVx~™«b×V¢hÐ–VÁÀ¤Ý†•Ì¦ÇNÕgNKi/bK¹Z(‰!¥;cŽà\ZˆÇ±†G^ÕbÂÌÝ_C\nÉ\ZyŒt§øŸJŠ¿ÔIjz-÷…´×{íSR•¥‚áVhšÜ`æ#ëýk‚k1É“å´gŸœdŽ£>ø¯\\±·ŠËO´I “tq„Ná–5\'\'¸þ•åzéHµ;††4D.pŠÜ{gµ|þ_‰©:²ŒÎŠ‘VL­<VñÂ–Žä %r\\þÕØèË¤I¡$È‚Öî H¹f3àeOp+ƒUg”³®A$ž˜§\\Ü—\"!P‘”\\â½\nÔ]D•Ìã+u‹ãqr¢Ž6A°„9Žÿ\0­gÉ(B=Ý°Ö«Ë6âr0IÈ¨Kd`ÍtÅr¤‘7¾¢¬çpÙÁ4ï´²nR ©GOqMŠ5šE*2N9íšlŸ!eÀlzUÝ6\"ÂˆVÝdIœÏ¸qÇ9÷Éü©ŽBùd1ßÎF1Š¬Ž @<SL‡pV<çNúŒ¼¤ÝÏ!yÑ[·HØÝÿ\0×¦[Ë‡ÀëŸZ®¸q´3Ö¦ŠÎG¤O¹¼&}é9$‡k›:}Ó‰^Y³:¨;#`JœžžÕa\ZöÖÄ^FÉ¾Gh¼ß8 »‡¥6Ë^´·ÐŽ™wbZhäb“+` =Aù“ê–óÛl-8ÀvSì?ˆýkÕ›“N:\Zidu\Z¦}omiwq¼K\ZK$£€ï&2 wã½áÍ\'H†¹­e”«‡LîbêÙVªŸþµr’øšâ}ÒÜ_±1°RŠœ S‘ƒëý+wÃI\råº]Eû«†‡Æ	>s.pÃÐ“ž=ÅyµåWÙ5\'mMNZ<ÑÍâÌ-ÛÝM #{`áNW>ƒÒé²Oidoe,¿e„èãn÷äçß“Ö¯Ú=»ÚAt‹´ÈÃ©Áv\0¿¥X–KYì§*£aT7¨®â4å}\r9Vçâ­niå®É×Ì;Tm(OËÏ~•—§\\¤ë1ãœ…=Ev~\"ÒšëA6vÑÇ=ÔJd nò×üž•Äé¶k}6ik#]´íûÀøWŒuúz×µ…ÄÁÑ¶Ö9*F\\×:»¯yöö±ÙMó‡%¦ùæFTñÔŽ•Ç]ÛÜXêžLìé\"·ßXg¯ã^¯e1Óa²±¸Ú ˆ9\0Ž?.+ÍüVö0ÊäK$×ÓJÒ\'!“µ,U`kÍÕänã©k£zÒ(uM6IU\0®T å1ž×¢y«;\'ÙYÕ÷F²á\'ŒÕ}Ä‘ØY›Y·ªïÞûö©tÝq,üÿ\0œ²£o9\'ú×¡j”•ˆ“‹H¤ÑÇô°M/\0•ËsôªSÈzäã9ÝItÍ¨Í;H%2wþuŸ5Û2°àŽµÑy5©“c^N»œ“Ž©ô©TïŒû¾¦¨ËœÖ‚]!Š(Šd“ëPÝ†‡ÞHÁ‰œH¤œÕEæ»½–Y¦Ä¬~l£¥hZÊ„–BêËÐƒÏÐU=@£DÏ·““šÉÙ²âÌû@N±<ŒÈ¹ù}Ín]_µ¶ª²-ÌŽGŒ_ëíÖ°¬ex¦Ü9,FA\ZÕg–æ=¿1Š‹Øÿ\0‘\\Õa©Ò§¥¹õ«„Ò\Zxç˜Ì­µSÌåx8ï\\íÎ¯>ózd“ÏP£q8Éÿ\0:£uzðÞÌ¯òò;f ŸRsÛ˜ÑÖuq\\‘ÏjQ.ÂµËV¹Ô/Þêò=ÆgÝ‘ÔÞ½/Ã±ÅªöÖ˜·TÂ¾ÎÀè}9¬xFÇS‹Ì–[€DlTºN0NGB	½Gèzc‚k2™‡sŒóõ®Zõ®ùQ¬U‰4HZKo´Íiä9–X‡#Œýy5¿jkx¤dù€ÈÜ:V}¦¯gsåíp ù†GQÛõ­H&†A²&hµx«„‰¨¢Šì (¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0)¥Ôu }M$²¬Q—cÀýk‘Ôu[m.FÔîý!þëwíŽäŠvÒâo[Úö·u/‹\"°±QvÙ,Š˜vðOlWWii•h°G„y$r€œ’qœy¯7Ôüx——ÐÞYÚu”˜¤”>\\sWîõ7¼ðÅ½Ó½ÅÅô	 1a•ÀëÇsÕ»Õ­‹4<]4·:6›ãmži‹lN@eî_L\Zâ šc­Ch¹_9ã½3UñêòÛ»Öì`ŠÉe$ãñ\nHTÚÌúƒ¼™bó˜`Ç#?LÕ&£]ÜJ¶µµŽÚ5’2`åÂ˜;F3×·ÖoˆuIì4[{\r>?´ê7(P[ ù“ |Î;uëNðæ½dºMÝÒIn·LûbSŽã¯ùô¬­OY—BƒQû<qÍ|ÅÞê%ÉãØb±÷^Û›tà¤z¥À×%K™c!nƒ1©Àn}OJí5«{t‡È·hmðÞdŠ‰ƒŒc\"¼ûÃ¾0–ÃO73CUöHÃ’GRßZ¹y«®©ku©{Å2‡Ž-Œž1Ç¶x­!\'~Y\noMH³6:v	I1\nF‘¯$äcÇ¯JÊÔuK‹›§Óì¥ŽÑ¼°êò»¹ä/¸â¼ÎÏÆ“hºH‡ó‚VA,Ã8Æ\0ÙÛ“šçâÔî\ZæMEÙîÀTË&pI€wÅF:³™ó7cß>Ó6›a5ÕÌâH¢rz±ì=ø¯ñ6­·p×ww›†sçFéµmÕs„ò}jôRx·Ä±<Ö÷Mman<À„ñŒñŸSþ¦>Í/O¼œˆî\\;\\»K Ör­ÜÒ4®Î	~Á\rœw)¨Ên9W€^9ô\"¬µæ”±ýºæ`óð<ˆã(sŒîôëÅGâ§ÓlîÍ¢ï¸„*É$X–ÏãÓñ¬Û+Iµk¸Rê|)\0onŠ=ëe%rùu$²Õ®Æ´—¶6Á¥WÜ¨À¿|ó]Ö¿áëSÛêúœŠ\"h‡˜,ß\\`ç¦pOzÓðÏd²1êVw	öi¤1ÈçåÎRzó^§fÚ-« >Zl ~€ûâ­_q;)ÿ\04W÷ïuar×¶±Â²½cºN¤Œõ¥Ayáa=Ä~\\2ZÜÚAæJ°Œá‹ayë“ƒ^Ës¤XFŒ‚\"†\\Èyt°ë^oªcÔ5‰É¸šc—2²ã* Q“ÇJÕ;îO¡7ÃïMçIt®’,Ù\r*e€ÁèO~•é¥Û­¼H*˜™HÛÁ8>µCÂÐ\\Ùé1¥ÄÉ$d®;œÿ\0‘øVO‹üyoáË‡‚6Ü„Œ`àžçÓ~uî6Ê><¼¶‡RµV¼X\Z``šQÏ’¹é×“^G5Å¥³ÞÂ®÷–ÙŠÀ¡ õÏqþ5§â/ßø¢Ún„1EÎ#^dl`’¥s2,f27âE *Ôw$ûqMÙ„t6µk}Jv¶MQá‡Ê·ýÖÐ\0ÙÉçÉ=êoøKUñ3Æ¶VÊ¶ñvQŸSßð¬h•ï§†?=žiÖ/À_NkÒ, }#Jò,üp°›Y2bD#·vPÅ)þ1ð¥¯†,àSp÷7S/-ª1è+‹3œpkwÄú¾§}uz•è»X×Ê.õõàV±÷¥!¢TÛ´ãŒ{SÐ.üô¡gž›HóB]M‘e{¿…ZˆÁIÈÍCŠ´Œü¸ÜE+†ç£øNM(i3Å3¤qµÜžßãZ·ºÖŸý¥*ÌÒ˜ EU‘NFãÏø×”Ãtèãæ`3’ÅjÏw	4lÌJe¾¾žõŸ%˜Xïü8ßÚw—709X<Ì„Î^Ô¾6Ò./nâåÂŸ8~¿A\\—‡µ©¬/£#+?09•éðÞA¨FÑ”Ìnƒ!ºGJ¨OÙÊâw¹âÃ>`¬(ÁÍhk¶PZjòÃk¬(põ\'½UÇ«µô-«ŽBsW\"vÁâ«ÇqW¡jWXš\"ÜUûbÑ°`y¨a¶aÚ¯ClçR¸®mØêl~YIÁîúÖ½Œç\rÈà\nÂ‚Ù²+bÒ$Pw¨\'µ+$\r-É•ËÇ¡ïVQ·:SJè)à\0\0›3lZ(¢¤¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢’–€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€€FÈªÓ:aQÉ#¥Z¨üÄ2ýî9´ZàTŽî×‘ñ†½êÅ¼‚âÝ$áƒxïTï®F›nPo•˜\0ª=MR´»šÊñÍæa·—,ˆ„=Áþu|ê€ß›¿-Ï¯µ7ÏM¹VÝ‘¸c¸ö¦ÂåfM„žEgp±=QL\'²o¯ã@	ŽNÕ%yÍkUKØìÌÀ„)óžôY5f\Zœ/ˆµ©m/ÕÌ©N+¦ð½ø¾±2»åøãÐW7scm©ÌöŽv…$úÖþ‹¥éö:),ÙÁBqÍaUÁIrô.+C¢ÝžœŠ”†Ü½zšPvž•Ÿ{ªÚÄ\n´Ê©À-žçµa9Ç–òZ˜šä†G¶…~5ç÷‚î}`Ì‚!€;×¢§ÙïRX(ÎÜƒÅsÚœf)Ðá·FÇó¬áQZæŽ,çíî^ÏV]³u-ÏáíZ÷mEÈ„H¥wÇ…4å·7e‰L™Ê€zÕ¦ÓíåÀÛ“~X¨$ãÔ\ZJ*u-Ùòê6%mã\r |Ë…Î=?­v6SiZyKµtŠ)‰Û…ê>•‹q¦ÙZ¢¸Œ2õÁŸjÊ2eXîÆs3íZVÁ¸µm*¢gK¨ëú|âîÚgÄep½HíŠò-FÞÑî™¡ÞP’NEz,º¹HüùöÕÊúú{W;¨é1ÆZÖ9\0~wÇ¥kAªk–ã’[£Ì$a!zœf¡Do)X—=G4Á#HÎî†®éÓ¼ã°l…eÈükºZXHD1OJ<ÈC\ràpH­ë\rÎãTóÝfM&G*&SÊzgñ\"²¯ÌØÇ2;}¥œïÜWWáÝE g³¸±{»iÓî÷RxÜ+	M¸ÝÕ™wYðåÕ¥‹/Û|ˆð¨~a\"ö+èj\ZL@é@ùQ¾ÍÀmßí)çòªšž­xú\\ZA/Û¢™BåN÷Œr¬?+ËÄ~\"´Õ–SHdä#q#Þ°„*5vSQê&«§Ûé–ÖÄ‰Rg$ŽHˆã±ÏJÄ,\0út5»¨øŽký6æÓRBÒîôÏ¥b»C$²Œ6>a]te4½ó9.ÄXüèùtüˆô®“ÂZ\ZÄ	=ÊÆÓ†uçÐgúSüa¦jš£Xj@ùS©T|à†íVÇ‡.<\'â6²º.ÖåY­nŒóÖ¹«c¡\Z®‹vv.4ýÞc°³Óä‰#…ä\"@ûÕe]zdûS—H;Ý@¦#rLrãk\0yÛWmî–ÇM{«ô‘cUEY>÷n0¥PñmôOá©îm5‚Y*Qþ³ÝGcô¯&uy¥Ë¸åï\"Ö“§¬Öš|±µ­ÓÊeµùÈôÈéø÷©48{çC2!ŠäàaÁ\'Ôqšò¥¹Õ/4³w&¥1[¨„¹A<sõ«’|EñVe–Häoùìëó8Æ\'¸¥ŒËq5WºÕÆœ~Ñ­âÖ·–9¡!vÈÌå€u>µ€ôý÷R6z”Ì(Ä¬£ v5Á¸Ó,ïåHÙëÆkZËZ»²û,&\'ûÌ»»c?Q^­ºQÂº\\Ú¾¦RqLôÈ^Ö}bÚÂv†Þ¸r˜ç¶?Æ®ÜZh÷^\"—K–çË•¢Þ«¿¯¨÷ÇZá/|v×6ko§¡É ):ŒoíÓ¨Ï¥söW>¾\'Õ$¸iY¸1õ\'°àÇ+ÄFRœ¥k~,µ5c¦ñ™¨i\ZÝ¾7N‹ò>9Þ;{ƒùŠÍÕ¼+o¦ÚË5ã0-Î‘Ÿz½ªøúKw·[h}jpUÉàô`k+XñŒÚÞ£ýåœm\n®álõü}ë¾œëº1º³ëæ9¤úœ¦ÍXAàÖß‡o¯âÕÄ–yžŒ\ZÌ’/µÞ²[ÆñÄOÈ„äýkkNÓ§Ò¯Y\'»:|Ícy”ª¿±\'±¯ViU§È÷k©“i3º¸Ó\"û5Ó_¢Hãmü¤÷8ì+\ZÞÙ\"Ôâóö¦˜ÿ\0ÂŒ(>†³oµ‹œCö¹Ä¤\r¸\'*ãÙ…[º¥§—“¹X€}½+çèÓ­FV5|®Ö,øÂëCÓn-± ”Ü>y”“»ßÿ\0Õ\\ºjÌ™T$„ƒŽÀJšûM¿žÖ;ùæF0 7-ð¥ÐtûKÉ\'Žî$FL{[ûçµ{´)ÁGšOR&ôD3êRIÏp#/!Îì|ÙÇLzéX^i“÷@~ì°\'Ú¶um<Û[	žffÝ±‘ÁXèš«ƒk‘Ü`ÖŽJnèm¡rWt•¡bþXËò¯Ò«Ü¥ÌåÊŒŒŽ{Sã†úÚyJ¤ˆñ²q÷}ZÔ5a{§ÛÛÊ{ˆÉ#ëSekŠ!|…9«Vèóˆáó@$¨sÇù5{IÔôõ¹¶KûO2Ñï1†sêiÉ¦Çp·z•«mŠ)£ƒ9!=·ÕN\néÜ™ö4 ñN§£E¾tEœŠÀÃ*­Ñ”óÖ¬6²÷rÃoo[]óïo—§oN+ûT[û¤ví\náÈãq÷5Ðøa­£¸73[¬.…>w—Ö±ÄËVÇI2å…å½Ä‚+ÔT I³ø±Þ¨Ége4,äR\nÈŒzTú¡Ó¢ó/tæ\\)ã.u=qþ{Ó#’Èa°™<üÂ\"Cë\\M©GU¡¤÷9kµò&rçt£î¹9â®hz•Å¨0«8ŠL‡ùÙ§ø‹L“Kº†9í§Rëd\\dv8¬·Lc6êØvNÑŒ×M8ÆpÓbocjÞ5ÙiîÂÆ7#ëŠÑT²\ZlÑE/Ún	;ŽÂp£¦8¬+{oµÜÆpªÜäœ(>•é\Zf•£.œ°Gu£ÝG‡26Nz~\'Ú‰.[$4ûžss\ZÀ‘K„—PÇm=Å	¹\0|«êk_UÒàŒ=´G…oïúœv¬é,\r»å“œ-×•\"¶Œù¶3-Ü]C\"ÛïˆÄñ7EVÔï#¹pñƒ€\0º‘V¦[V†à¾XCéY2Ç±²9â®0»–€<²û°Cãð&´´ûä‚s,ÅÙv0\n@ö#Ò³XŒäc\r$Jº±\rî)ÉXÎ‚îÊ×Ph¥µp…•C¨ìO^RI¯¬s©_-ò²‡cò©4Õ–)“Èl³ŽFwàúV¶¤òNcuµt\n˜|\nqv\'¹ÏHå›qà·ZK§Ž8©nRÛÆªª¥:6>f=ò}*&Q\Z¶ÒWž«uaz\Zz}Å´RªÏä-‘ 8e®ÓI×.ä·ŠÐ»#€ŒËœ äkÏÉ<\n»ü°˜ñ#FÈ*pk)Ò»º\Zk©ÕëAss$6qï.eg\'•ô8ÅrsÇ=Œ­``î­+ÍrK»±&pÒ³øzƒP¹¶¸´]Šæà]‡lt§¯7YX€È²K§\0ýÒ1À÷§ÜY,pÊÐ°Èlò§½M¦ÇnSÌiH§…aÁÿ\0ëÔš„Q[—P¤í`ÅHìE.d¥d;]\\ÎC3WqëZ÷Vî…gÚ»cWoßaê{pk2/)˜‡$!=¹Å(Ú„‡˜p+V®ˆNÆ…ÅäQ1…!ŒÄÅO$cÐöëUd¼ye2e•˜`œžjí¥•½Å´®å„á¾@C\n‰–\'hå_ÓŠi§§`hK+¸íîQçÞÑÆ	ñcÃ=kª°ñj‹{v¼u’TO—© gîâ¸ë„‡s}ÎÜd†ííïPFÁ]NH õœèÆ¢»*2kDzåõ®«©²‹Ô†ÚX²YÁÛ»Ó«ŽÖ¦’MIÊ‘±ÐÈN?\nÑÒNœÉ;ß\\c U^Tžøî=ª	æ²–ÅafÙ\"±!•r{ÔÓ—³\\¨rõ2\ZBªå‡z„È®ûHÀÏÐÂE“q\\€~é÷ªÒAï[Û¹™Úk^\"PÓôë†ôvWiã q_Z¯w0\n7Ø”¨Ì|\0:W1¦Þ2ÀôÍ$ºŒïÄ¬R\"å¼µ?.k—ØF\ZAÍ}ÏS°ñ…¬vP)‹å#p•øç¡çëŠ¶¶šn³¤?ö ™YÖæHNOQÎ?1^Ao«ÜÚ€±còÌe$†	ÉÀ=*Ü\ZíÚZ}†Þ$`d@Ü6?úÕÃˆÁÉ¾h»3XÔE½ZÊÏûFd¶¹GŠÕ+´È{ý~µ«£iþ¼µxåFß ?1\'1‘þ5—¨›{÷/ih#Ž•p­ß×ñ5¯\0Ú›#‘œs]´TœÙ”å©µâ{KXud6sµÔ)\nå÷s¯µGâòÙ­£…¶)‘Ï,ª3ÓÛŸÒ²bçÎ\nà\0qMS!RP”+ÆTàâºió%fîfkÚ¼—·–e\\‚Á¸g¯Ó±v~Ù¯ÃmhûÂ@#Ìgvq“øãúW3;K\0X¦GŠP¿tñÁç?-­ÌÍ‘»FãË×ÐšZ	¢K•Ù3ã+¸ïRÙî;@äsK=È”…EÃ~>öj¤22J0pÀÒ¸ýNÎÓÄZ˜‹ìq•hÂ”Øà`g½EªôÛv‚kuKI›vI$cŽk*ÖèAžfôvP^àÕ¶‘§Ó™v;Ü¼›v‘œaõ¦¬‘/Fc¨Ù²0=kRÍ,šD’ârWo#8‡g_c©]¬­ƒ‘È>”¶ë21Èè?¥g$ÙHŽïÊ–Fxb’p¾•YF\0àƒV¤ÚXìà{RòsŽ?•ZÆy =ûÕë›˜a–Ú)B$ØV¾x¨‚ bšGP¼iI\\°ºœH¦5z1´ç‘œœâ¥Ñ¬g¸óg†4ÀUŠìÜ0N9öªïHÇ’IþuÜøOM]6io&žO.R0A%º«g°®LeUN“î\\}é\r½s ˜F§ÍŸË“\nŸEô¬}~ú+ëH¡e\r$DœÐdñŸN•©â¡þÒK‰bIl¥ü“ÚŽÜwëŽy‚Ç\"u-Üöå`¨)Zf“v3˜í?+`ƒj‡,p=O54‘í9\'Š…äQÛ\0\ZöLJ“.d\'==*ø\'ŽzÔÓIÎ@ëŠ®Ü°nzâšµµ\ZÝK\06Ž¦¢-“Ž‡4ñ1ŽN™<Uy™3€=j‡Ðx²Ÿ›Þ‡oè:T!ŽìÀÓ]È\'×Û9ß;Ô‰tV9sn$ÅUFËë‘N‘ŒñÒ¡”‰„>KÏ5\"NÊûòT©Ò«¹ÝÈûØïMó8àf {š°^€XòG\\Zô¿	\\Ù\"Í&gF’q„Î\n¾~VÐ\nò«(–Gvi6¬`±?ÈVç‡µÕÒîXË™dSÌßuOqïþË‹¢êÂËr££¹é¾ ñTVÓhÐþîá\'€¼Èwd‘Øzæ´ìõu‚X¥¸3ÞY™#R§à`€G|dŠóžóP·VbQ÷†~b¼OaÏZÞÑÍž««¤$‰.8Ib}¯Àô\'¼z¸xÆ>›š©·¹³oã˜â(-£–9Ø•d3ßÒº*ÒÚt»·µ+$Ð¼¬§¤™\0àu=«‹¸Ð%±ÔìVÖEK»iÛd®>V!‡Ìßz_ÛxrÊëOŠánµ(¥â|Ç$}ªT)ÔiQ{î	5¬Ž†÷Q’ÏM¹i‘Úq–g¹\'$~¹;mµ)5{ÍFM­\n(±\01nAã°·&×†¥¢Êh^Wvè©ê1Šá&ñLê«\r¨òŒk·p9,ozìÂª©JôwÜÊ£EBêŒÁeƒëS­È*Øà};ÖT·²]ÎÒJÃ{uÀÅlxvÞÎêöu$™`¹Ü±Î‡ >ü×·:¼°æ—Cš×c´ëfÕµ,-Ätw5©âÍ£aà‘¦cFiÇÌrý+¶¶°·Ò5+{{Xà`°#~ò,3”.­ëÎqíY^*×/uV×A¶Çö€®Cg+Üný¶kÈŽe*µW&‘:=ŠQÔà[NI ŽkBÎ]@e\0’¡ü:W| Ñ-¼:³5™ó£²h¥ÈÉFîyþ,“S¶›§xs|S»‹‰ª\\#ƒôER¶×-&b\"–2\'}¿}ˆõJÊ¾*uÝá~T8Æ1ÑîyãÏ±‹¨ùweG¥@×R²˜åq’0EuÖöZø…îˆ—û0 i*£Ðž¸<þÑ\\x{LÔçIî8R\rÌŠ bu`q“øWDóÁ¤Ó!SêyÂOÄ¨¹ÆA9ødÜc%$ÜsŸ”sŸåZvúVú¤¿-l˜F92ryìà{Ó¼c¡[èÞV¡¥ÜgO›j/Îyðãõ«ž\".J=YQ™ÇÉúP\nÛ•ÛñòŸ¥wžð”…þÛÅÅÀ+äl;TóƒÞ¹ý6ê×PYíp†(Éh	`Í…A]÷…o-Äm¾â@ˆX\\dŸÎ¢´¥k#¢)#«Ñ4Û}=³c¶8†C¡ûÁ˜Ž½±UuÉ.Û[ÙÅæ*6ÉÀ>µzÁ®\ZÙ¦Vˆ™scžÝqSËh\"‰^XÃ\\¶”8íŸO­yîMÊìÐ¡¦ØEdVÎY—í˜¹õÇ§Jêm­bµdKµ~¹ªÖjqZR2[ÛíZ¥zhés90¢Š+¨€¢Š(\0¢ŠF;A\'µ\0-Šr#íK@Q@Q@Q@Q@FÓ\"ïÉû½qÍIUî–O³Éä*™OLð	÷¦µvvG3­_%ÁyYcH™†[==ùãÞ\"¿¼º‘„·Ò\\†bºcåÁÿ\0=+Ñ<g¦jw;\"Ž2êqæ›‘Œþ‚¼ËUº*\"²¸VÌí\0ðsëü«¢Pi]lDZlÅYV$*]‰=@=\rv~œÎeœÉó@yùp={×ŸÊ1*	5nÚkõ\nñTŽ3\\µ ä¬jž§l÷qÙjPÜd‰ààE6$ç·q]ôZæ€ú2Å©@‚È>åò±9éõÍyž„–÷Wv·\ZæË•v?4{ƒcI>§ŠÜ¾±Ôµ»gû¶þjÂdt]Û¹ÏÔz×D¯f]®j+CžþóTÓç…ÔmbÀê7ñXº¥®›¦G4·þlÙP`HŸØ®@>Ù#¥]Ñ|+®X¬¿¼IR\'*ñ!Øe#ÐúVÞ{s¨_-·ü#öë$n“i\0‚qÛ¶)A.}\nµ7ÒŽ•˜›S·¿Ye`U\nïžFO ÅtZÆ½mvööpM\ZÛšE‘Âœã¨9ä’+Kâe½‹Åm<Z„+0mæexð[v}«€³Žâ>Ü-¥–PÖ¹-…qí[Ê\ZÜ‹™ú’IªßK|Pemò€	øšÒ]8Ùøv;¸lðZFcrÏ‘´tùGNA­=YžæÂÝÚÞHâ)¶=¿ÆÍÉúàÿ\0:¯§XÅ-ý£u*.á¶¹CîÃ¸Í5RÊì,S»ñ‘okws-™‡(v!ä‚U\r]}…–»y¡Ùs\\™lgmŸg‰¶±\\g–ôÅ;û#L¾Ó…ôb¼‚LmŠ#°¦F8S]å’ßhöÑA9}­¼)P%î+\nµJÈÑ-,bØÛi\Z]ËZéÖÿ\0nŠB„n2nsëÞªéÞ³Òó-ó…•Îz`®•uú†^îÈ]ÊD\r3!‘~eUÏ\'=Ï½«Ù£éêÉ,û•‹J@íúÎ•9.¢lÖ´xb³·‰YvíT]£Ž•vwIr\\Ê›wî\'‘þ=*.q=œf=¹ªƒŸ˜ŽžØ­6@I<å†\rÚ»ã5mZ0üCvd²žÆÖTK™1\Z±ÏHè±®CÄ+¦ønÂÖxâ¢\0RXå#€äƒëžiž4½ŸI¼ÖwÉÐ}²|ÒÄŒ(õÁ¬\rxbïÇZ…Æ§©Í5­˜uÝ9˜õ=z~UJÅ$ÖåØuýSÅ\Zeµ†‘#Au,çÍùvE|÷ê{W9âï\nËá¶k©®üùe#ç—ïÊçï=©¯GÓ´›{\rbW¶B6F  \0ïuý*–¹áXõŸÙé÷ ²ÚÉ4ŒTž`pOßÚµ”¬¬ÈI_CÊ,´+Û=nã³gófFû†	ÇLzô­˜< šf™£®A²sˆ]ö³úcÚ»-\"ëKðµÃéš¤–÷1ÇrZ&	ˆ€>b=Gå\\—Œµ©µ]jèIv·vÖïˆ¼²68Á_Ò°FÈçn­B\\hŠ\"l²‚rpGB}©ö¶ryÐä«Æ¸ÈÇ·=kE\\ÅjÜb,®ècQ™?ÅéÓ§½Y³×,´ûØœÅçÅm¸]’;úàÕ¢]‚ûAžòÝµ;[GŽÓÌ #\'!Fï×5ˆö2B»¤†Nz&•ã3¥Xi’’‘©i.XËF$¾Ù$dûV-Í¤ºž×†ãí\nJÐ û¸8#Ú§]Ø&r`“h,0qO†ÓnFk¨×„RµœYIovàG9fcÉl÷Î\\Á=¥ÃÃ(+*}åôïTÐ÷\'Kcó~µ:DPçwÖªDXÅ¿\nœFâ‹\rh\\Hb#,jôDÃÀô¬¨¹\'“V¢<œâ‹\\¦ÎJ€I1P¡›#¡âºÔ\ZkÂRU†8‚àq¸zû×-£Í7~kJcl\0¼zð!ZÛÆ÷GÈ-,lÄèÞ¡¥pLß{”ñ\n\\Å$1yñ.Q°r\0ëÍrÞthÄlèqÒ¯\\jÇZÚ8EÉMÑýé>§½gIoq:2±é¸`*£d‚ö,%ÊŽ‹Vc¼ç@¬ôSœU˜ã\'JÌkSR+¢z\nµìk>À«Ñ.qKa2ô2¿­_ŠVäÕ8\"cü5¥\r³gON¤îMŽ{ÕØÉ#šŠ(‘G­N*dÓŠ(¨$(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢ÐKE\0QE\0QE\0QE\0QHç4´\0Ö$@Ïµ69C†ã8æ¤¨¤0P.sóg½0$ÇSH§9ÀàU+‰$y_ÂÜ¶ÓÐgš¼:p8íCV)`Y1Æâ¸¬ë´mA%²œ$y+H5¥4~`;)Á«¥¿šˆîíæt,¼dfª.Êã#²¶k]:(£#|#o#ŠIîÞÝ¡vcsËœúûUü\0sëÖ²îä2HJ·™ëYÉ&®Æ®iyñªi\0dàô¬ïí€îËå pÇüjŒ\0^‡cÜ¸eîûsVîÙ|ÖSµT¸ê}¬¥5m\nQî1563q‘ácã%½ñV§´ó¢‘&”ùDƒØÖCj>O—€D¹?J­©ê¦m8K†sÀ-×Ú²M‰—¢ÑìUžX›tŒ>VnŸ•Io§À”J|Àr\0\0Õ].àùfƒÌRP¶xéØÔSÜË¬’ÊÃi$ª7½“Z½Dš+^É¨A4“n!G\r“\\]õØšò1s,‚Ì»gQï]5åë³H’8òÙˆ\0·Zâõ`Šùb,à½‡¥(ÃWt+³¾ðý¤V‘e®X ‰–O-ž„Ð4‡h.¯.¥P‡T]qYº.¤úÕÄ¬ L˜ûÎ}ëVs<7^m¸áÿ\0‡=ë:7½š4{‘ÇQ™$Ÿk€¹äö?Jê<>-MÊÄë¾Uäb	ã¯\'×šælÍ¿ÚZ-G˜Õ†^zUüBÚ]Ô·¹HÔ” ·QÚº6Ÿ4z5©è\ZÍ½”1Ú<×a…ïŸa\\uÍ»ékqpÖà»°¿…&Ÿ«Kw©›«íÎ‘‘\"6î}†+gÄ>!²KMê±›«`~•³®¤ùfŒœ-ª9Ëa£ÒZ)%Ï YNÜâ,Ž„žâ¹ÍhÉÙÃ…Eç=ØÕ¯êöóM²Ì|ŸÅ‘Ö¸ùdË±b9íIÆ2Z!«õ)kÐÙÁªLtòM›6b\r÷¶ûÕkKƒ×8œzU»iákw‚îÜ0(T8ê;ƒU¬â‰O3kî\rÐŠÒ7Q³%êîKu²êyZöFTZÚ.¯sk(ˆ<N¤eZCŒv5•yp%Œ0t]«å…‹@³Í¼‹|*0B0V#üj-xê;v6.üKsuªYÞ†³L„sŒÿ\0*µ¯Û6ÝZjÏÆ%\n‰µÁ=~˜¬;æµžiæ³œ•B*KÃ°¯¥AóÞiËa=Æ\"ƒ/\0 u\'‘šq^ê±OÌlM,Ì;1ázäÓåaDä‡¦;úUxY‹/å`s‘R^/‘Àpêýýëk£=DƒPš£bŒ‡ ƒŒ\Zô«/hÍk©IjVÃÌ‚^…Èê¾œ®Ey<Žc¡­£D%¸$$…”ep{dzW7J¼o-\ZÙ•\ZŽ´hé×:]Žƒ	Ü·ñå8ÿ\0ŽjÖµà´Õt¨m§½òÌ	€Á3ŒWo\Z#iš”oêßiÓæt#kõdÓ¡Ñx¯TšïÀñ¥ž¢‹xB«¢pÒ{sÈ5òU©Õ£R*”ô¾ûÜœºG·’æ¦ÜŠ>Óò¸³þÒû\n‘ïÚ·t½\nîá.e‘Bý‘±<,pê=pzŠÄ¾d[ÙBp¹ãöÔ*ÆjÉÝ£šO[­‡¥Ó»©ê:óZÚŽ«Æoj¶ñÀ’TbÅÈïƒÓ­QÑ¬Vþëp‡ 1Â«ÆO¥Cx’Ùj2Áv¥fÈ_ë]*£ŠåL—êkêM†ÎÏû6Úd¿\0<Ž*qÎáþªì>\'[= Ô­íî#Cò0\\È}Ak=n-í.\"1Ë°H¥ár>é#æFô¬‹‹¸’àˆ£!‚Aï\\u¡\ZÎÓErØ™µ»ÕÅú™Cœž^;×©x\'NÐ/Qâº³G1û0í<ç¯±ö¯ÜÒ?9¶êê¼=zÓi¿eEÍœácx*Ç¿¶xük—…S ãgmu6|CáÍÄÈ,2a˜ù¶Î½€ì~•¥¬AªxƒNŒjQÅ-ÄêÚ(ðÇëŽ¢ºÙ/.$¸ƒOÕ¹’‡q÷P}¥S¹Õ44Ô¢šÚFž$GlW‰‡ÆÔuiÆ´on¨s‡òœ%ü)£Ám\rÄJì8ã=ùô#Ò«ê7Ó4\\˜â¨*Æº«­úùoµ(à\rs½D Ñ–ç¿JóYa`J;î+Á¸¾’­©ª±[˜E»YšV—æI¢†i$xbû‹>\\ýkFÅÞ©4‰qåÈÀ° môã¥s‘§¦D\rÁ5§£Ý\\¥ôgO¸e(UˆÁsÖ‡âìl›ÐÐ¸Òdº/²bö±1ËÈz69®~kHË¨+¹ûØéV\ZþêÞÜHÂ&c»ßÖ¬Ù\\Å.›4NûLGr“Óž\r(9E>b›Ð†ËV»´’~C†‹Ê0áÔ3ïïXß4ò30Ç8ô«—7 ]NÆ@£ŽxïõªÈãÃ¯z´º’ØU(AÈÏ#½Jì ´äòQN’Îcaöà€Û—ò÷ü]qŽ´‘ÜÇöØrw\0G Õ»¢orÞ™ioqg4²-ÉMØlz€zãúÖ×†kk¨®PÄB),¯ƒ•<R3šåVéŽüñ]¦ƒ«éËÅÏ#~íãm¸ç¸ï‘ÅMWtZž¯/„QÓáI\0žÀÞãè>•ÅKk\'¯.`¼mºeÚ·Ù$\n$1É×cÙçšô\r9$ðü°Ërè-ÜÄPœlLä^õËx›LƒQ³’Ôæ(c|VÎæìqýk–\n›Ñš«ØòýXê7ó¬÷ÁÉdeóÇ^=½ª4›%Ÿ*vä÷ôû›ùÌkk3%¿îÐ÷—=jÅÏö•¦œÐ]Z0·•–lq»±µ‹pvè&“F<l@!Ž9Æ=+ Ò®a[…ó&©=EgÙé¢iG›* #+“Õ\"Ëä´nc1÷F=\rkÍÎìŒÚÐÙ¹¹¸ñ/‰e¸Ž\'+x“ªðŽÆ«ºYÝ›JÀŽc#ÝØâ½wá½¥½Æˆ—o±§\0ÆÀ=\rQñç‡D\ZiúPUIœÊÐ9ã#’Àžÿ\0ýzìP‚÷ä;Úç›ÞiöîÖ÷/,w‡;±¤p@ô&¹Y@IX+n\0ö­]OLÕ!g’ç{IÚÁ›æÇÓÓšÅ’R‡f;Ôkf—¡’F¸TEÄÉPI9Ço­62X“·‚=?ZµaÈÃ¹à¨íp½‰#Sl×#ý qZÐI-Í¹û5ãŸ-BºHsŸONkÌŒNâFÑÓÓí¯>Õ\'Ù7nn	qŸ^Ô¥ÃLyÎó=ªÊÞ<p$*Î6H>½*I£¸°w‚æÛ÷Ä†p8üªÖ£ªÁr±›{eG0ùs¼vè;>ô7ªVÅ-÷d\npqþ†‰Ê¸äÆ˜¥zóœÕÜ Ö«BXÅ=úT‚GyëÔb’V¤&5Ú¤g±ïRf7\nÙ`Ý	=?\n½-:á¸G¹ ©MêÏ>†µµql–‹ugc®îQ¿Â¹µS+·9QÉoOzµl«v|,4HR­‚ÜqXÊ•ä¤ÙjvV\"ˆÆ²#r°ÆcëVõkH-c¶ò¤2;¦dlc=øÖS2A¥<ÈÎ¼¶@õí[$fË67ÒZN²#2ºÈÃ±2;ÖµÍÍµô-py¥”Û†Ï!qÆ+›.3Ç\\÷­\rÚÉ¨¢Þ³ã	÷ˆÏ8÷¥Ë­Ð\\¬èU¨ÊyÖ£1ƒÍljÖ:lVo-®¤¯ |,aHßèÞÇ¯ƒ»ûÕ5`O©+?¡ÁïO3ƒ¡ƒœ÷5À sÐQ	ŽKˆãs¶2Ã,{RµÀqy•ÑÔã¸=…Ioº™¦qÑ¹’OÒ–ú@™‚	\"’¥á‡µVŽv‰—R?ºpi¶8P¡07uÜ=*&Hã¾l·\0ÕëÔˆþþÕ”Æ¤|’œçÚ¨Êþs³ìUÝÙF\0úTŒ®FzsžjH%>J†èEOkj’¤Ùp¬¨Xã5XF\\€w&¦×Ð{Ãyqo-ÈWJúJxšF*Xý=*(Ø! ,¹äô©žíäAè¾†…„ÝÉ¦t¸’,ep[=ÈïR[Ê°v«œžd\Z¢¯‡«Üdš¨Eë»ß¶$>l`H‹†“$—ôú``TB1Ã©$tôúÒGºS¾±¤1>áè;U^ûˆšEýâ¨û§ãµOäG\rÑG§jŠ)|—ÜW‘Ò†“Ì?7\'Ö•ŸAÜšiîÒ9Nâ1¸àVœ‰q¦\\;±Ä€•ãøPEc\0õì}*I.%”,Œ}2sÛ¢ØL³5À}è`Ìÿ\09?Î©ghÏjo™´uäŠEÜüSHHœcÉ© Ô(¼`Õ„Œ¸4Ò…Q¸ñON½9¤UÇÒ”H4ì!O•Žkn?\\Ý@Ñ]Ý³;¯—æÁ\ny$‘Ö°¥_”0$Þµ\"Ð®¦D–Øîˆ&é¤a´@{†Ïós\\X¥JËÚßACÍwsœ$H¢Vf]í•ÉëÏ½3WÓáÓ’%,]œdàŒQüªcj4ëÈ~Ð¢ n;x9ôöþ”jP[FS>_šË½†~]§¦>•Ä¤”—#Ð»i©ÎLT}Ð6Æ¨J¡…=½jÔ“ˆË©P|ÎýjƒºüÙàö5Ü™™^gE\\†î}j«°#‘K3ã#9÷¤G@	Ú¤Ät¨”ŠC·|£8ç±Z@»ØƒÍHÎò*œyéÚ£;dðGìU€€N8¨I%ñ‘Šs!WÆ;sQnÃUq¤8‚ph-Ç|ŽôÖÏ^pivü™â€°%³ÚüYïBçi$qŠBHb½ˆÎ)Xdªû›\0ãÔúÓábY°GËósÞ£\'p8ÅO\n„’wv¡­^:µÃ$K’&Áü9Î?:ßð¶­¨®·6qÀÀ(óP§ûÀö5ÉFÛ˜ÛkRÝSìöòA,¢áXùxÓiËZŒ\\m¸\\õ‹Iï`¿žMEóm!óV%†|~ôóÕxËx¯N²¼¹kÛhÀžéÄ‹ƒÁÁ^†¨ÉâË„…â“k‰³æäœ†ÀÏ>þÕmï¢¿Ñb¾Xž­SÈó#ÇÊø1õåÒÃÕ¡>{}Å7}\n—K%»Emh‘ohpà6î¼ã\'¡àUï\ré¶Pê~^£ÅäÀÏ4ŒÙÁÛÎ;½+ž–ïÉ¾,“}¡@1{× Õ—XŽØâ]×‹òí‘=þ•éJpå½¯Ô•½ËÚÅµ•Ú4ÚM™·ÓíªLã™H žç\'ò¨ôf–å#¹Žaj¼±¼nÈü1[öÒÃ¢øelu\0³[¼ždÑ§;Nzg×ŒÔøŠÞÜÜØÅ;˜¤cË¸\09À¬#R£§(A^ÝF¢œ®Í]c\\‘›IºŽ6t…ÉRó` cÜ`×5&§¬®¥m®»‡)1ŒF ráY—˜§VFrXç 9ê=ºUxïåIIcœg¯­taðQ„v&S»;/x’[¸‹\0%b:ò9ëÎ¹d½ˆ¹++\"ƒµ‡AßéœU;‹¹%”·³Æ*Úe€Áî+¦Ž4ádˆrmÜìl.ü¹\Z ‚Më¸ü£\n@Éü®í7wåÞÖB‘œ©]ä|£œóÒ«ØÝÉgteˆCÃ)=ª&VbÛv1…õ¬þ­i7aóà…ön2\"6qŽ	õ­»Ë½NÒ=.ch$o1òœ¯>½¿\nÏ´ÓšáT!Ã:œîïŠnnìÜ Aƒ;H-Í*”¢ÚvÕÑè^Ñ¬ìÓËŠ;Y.mðr–ÝEO™u-¶¤ÛÇÔÅ¥‰s»%Ï*O æ²|9¨&‡¤M%ÂÄnî7HŽãç¸úu«º]½Ö®°4w	gæ±tÚä’¹úu®)&›lêZž‡£\"-„\"C\nÊ!*qÇ¥h¥Oq´õÈÿ\09¬;+jöðÛÃ½TrÍÁ<Ïã[\rKõ““•c;G5ÊÕÞ›”Ë±.[vzgŒTôÀ	ÁJ}z´¡Ë&îRw¥­DQU®î¾Í¸›j–84®Á»3ïU~Ù¸HñÆÎˆH$`r+‡Å@ß­ä·h€ád†4,ã?>kIµ;ÄAeÛy›xžE \"·Côàþ•º¢ÌÜÎ½Nå$t§V•ksmu\ZµÑ’ßÊùU[ ŸÃ»YN<®É•tQEAAEPEPEPE‘­\\ùV³<M—†2åNq^:ôª„y‰”¹UÌx‚ÚÂÄI\Z$ò«à!lÆqÏC^«0–òYUv£9*¹ÎÑž}«­Ö&žòåæšL—ò®ròÔ:p9®ÇXò£¶ÝÌG ™¦‡] +0$Ž½½iò¦Ç*Gµ9÷xP±ÍsI­‹zlÁ$ØìdV\0£¯?¥wºN©¨³G™D(ÅÝBñÝ3ôæ¼ê\'ò¥ß›ªìw²;4¬¼“œŸ•rÕ¥ÌRvžs=¬7)pc,Ø¢à²qÇcÐ×y}ya¨³FøIÜ;Œöúæ¹ø¼[7Øe¶rñ™P(‘~òãÒ°äÔJDÏ<ÎSTž¸ö«Q”t/™2ÍáR`òÛ¹>ôñ¨ý-ôødG¹‘vX„@IÎï~kR/j\ZÎŸnT¥¥“F$ûKòÍœöŸéZ‹á»(´	máŠ&™€1Îx“=÷géšršJÌj:\Z\Z\'…m¬ÒÒIõp\"ùÂ³4±è8â¶ÖÇIÖuqƒ$m*{ÿ\0wôÍq†	ÒÚÞÊö’I@@áTO¶9æ»}\'ì73Uxí¡‹k9,O¿~yÍsI]Þæ‘]Š8b‚7†+eX˜`ƒ‡óõ¨môÛûƒ(Þ]³|ès·qè¨â³l/. ¹·µ¹rºígÝ†pz¥u-¾ÒÖ²Š\"™\0ŒöõTáw©m!XgHB»\'ƒéŠeä&áM¼sØ®p@9ª—\ZÝº™$d¨p?7ãPé²\\Ü_´Æ@à(\ríŸå]V‚J(Ï]ËšeŒV(Ð¤¡ät„\02{tªÚ¿ˆ\"Ó®c³·ï5	GËD|£ûÌ„VEåþ§¬j²išD¬-„»o/QBù B~óuçœUá¥­Üvš^Ê	¹–_ÊñË7ROJÖ+Ýµ2ô_À²¾§­”¿Õds ;‰Ž<Ž‡ë[ú&ŸýžŒ£pišD<í=°{\nÕX•0åP0\0¢YË»¢V8«BlŽæK{Hêmª©bØû£½yf¥â»h“Tñ$L\rÍÞ,¬ánz±üM\\ø…â»‹xŽŸÍº$Š¢P¿3õïÀ¯1Ô®\"A%¶ÔY¢fYI>nI Ø}+[rîGÄK5åšHò¥×™rëçnH°7·Tç°æ°÷&I$g5=µ…ÍÔsÍ¼)æHøáV¢KY\n3ynAmªÀdÞ¥»²ö,ÃrÒ\\ù×ŸnÅbz8ÏµG=Á•¹‘ÎKûu«1ØÅâf+¹~a€H¦=óŠ®,¤t;P–\0çéŠ­ôwH‚ÚæçeÝÒÂKýHì=Íu\Zn¡¦éš‹%­ó‹k„Q3*`X}zt®vÓLŠåmí`óšé¤ýäL>êúÖÝÏ„ÒÖâxãÝêê\"*ÜŒŸÀdT¸÷)\"]W^‚IœX‘qŸÜs–<sY:›$–Ö—\nÏ‘[íÍœ¸cùqŠ·©ø\Zÿ\0M·¸™¦ŠC@‡=FF?k\ZthQÕFï)Èo|Õ+-†»ŒóS£7©¦ü™<¹Ü?ºr*tÁÀÏ?Zb$‡*[Ó³¤i¦ýÚ4Îý¤€{V2–2…\rÐõ³¤Kw\râ=³&xÇ¨z\"Ò4SF¹µ1=È0†8úÖ¼6—6w&8·ËÞ„=yü*]oP\ZÆŸnÑÈå£åÐö<Ç½UŠKˆ#’È¸aœgëY»b{fnšHÐ¢/*£ ª3\\ËpÀÈK``g°«ÖqÚÜ\\/ÛfØ§«zcÚªKe\rß•h‡ËAÇø½èHV¹F(º\nÐ†ÙŽ2@ª‚í\n\0å¹oï\Z¢–†¬qDŸyªÜSÂ5ˆ“gÜÕÈÛµ!\\ÚKÂ\0\nž;—sÔšÏ† 0\\Õè¥DÆÑ“E®+\ZÛ×ƒÖ­Ž\0¬¸¥–FÀ­T\0žh’±$¢Š*	\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€¥\0‚x4‘Š§+4OœÓJà]¤¦,Ñ°\\0ç Í? Òh¤¥ ŠLŠ	\0g<PÔRHÊêŠ„“ß°¤.îûP|½Üôü*@ï‘L¢ƒÈààÕ[¹\'H	ˆsƒ“ÀÅ	\\òoÜG‚I&¤º”\"ÑLe˜œT,ÜAhMÌÄ|ÒœJÏ½ÖÅÜMg	;å9ŸZ¤µrÅã¹F•cURp¾¸éÍ\\ª\Zdxuby%sÎ~µy]Y™U+Ôg¥KÜ¨n¦h\"Ü `ILÄ($ôNêúB	Ã!qÛÞ…¸	=Áû	–XÚ0IçŠÞ9mvFI8ÃÛêjªKæK:Ír²E #ƒÂJšÆhŸ³ƒòÀ\0cšÂ¤îì‹KAövp›p}HéX\ZÌóZÝº)wg#º]<—ðÇ Œ““žƒÒ¹Jî;›å6ÅQ‡$vÎx¡(¦5va^j?jŸs&à„€§½ZD‚âDÝ“ÒDjrsõ§[ÝZ¶©ÉÛIuÏú×c6E·cB8ÁÆsô¢-s-Ž2;¹Ì{¼f9\0PËÐ­1smj³¼±dl!äqè+nãLXç1\"¼˜çwOjå®§Ž-Mahƒ2å˜‚qœp8÷®™¤—4LÕÞŒçn’{ÉY‚á£Rp~Zå5Ì3³;nŸ®¦+ºšÚif˜:Þ\0K¸ž•JÓÃ-Ä‘¶UY²¡ÇÌßsûX­Yi_Ddh&öÞ$»Š6Ž4`ÀÈ=ÿ\0:ëm$›Q»žôÁæˆÓ¦ò¿6F0;ý+:þÑ,mE­¬ìÅÿ\0‡=ýé¶}j¥Ý?‰•G\\t¬’çˆÞögO\'‡c6¡öì’FÙ™Ï_Ò¼÷UÑä{ë¨m&\r¹,Ì{]\r¾³¨Þ_£\\\\M%¬Y(\nõoð øvãW»¸’6ÜY†í¼žÕÙJwŽÆmyœþžÚÍÆØÑ\"Ø\0ÆàRjŽ±q—©ÎÌ†O ï]¥ìÉ¥Ä!¹ýä±¡+ÔöÍr“Xi´GÄl’w‚XŽ´­v°û\rH‘§1*ŽzW5{áû˜%1‘–ë]ž“{u¥A›tB„‡OzU½¶h^êw\nÀíUrk(§fVú£ËÚÒHbRÒaXuíŠªöàÊ²gc`àŸJéõûX,ôˆÝ£u•ˆCe	ôÇjÖ¸’ÓVø{Ã½.tæFa¹GãŽ¦»#§snÇœ¼rÁ¸0èA4ÆšW‰…ˆu?ZëüSá»x,mu)¤È»Î	cÜJãY\nœnèk9ÁÅÙ—&‡™Y¢Qp¼†Ç_­DórGµ9îÊòAùO_­27òØÏCJÀÍ­Tµ±–W¸@Ä!Ú¥s“ý*œ÷ßjºÖM¤eAëM¹¼ŽêEaq\06‚¤–ÀÃ7hÛânãøO¡¬¥%v;•nHåß,,©!Ê“Ü{W®øþÍ7M[Û«˜VèrÉ!QŽ;ýk×½ÿ\0ƒì§‰BÉoÁút?­q±6X)9\0c¼ÊÔÞ>‹‡7-˜+nÑìš÷ŠôïêVÚ<[…˜˜n\nœðAíZ7ÞµC»yå’R€´‡%£Ç<úŠñ{;Ùôñ#[ÊÑ—R¤c Šôo|I–M3Z,ö¬»f\\”?ízŠó1™mL5$ðÏHî‡~i]”µo\rëÎmµKI¤¿´¸„fh—æÆ9W¼÷Q…­®YX2·9V]Õïˆuox‚ö×Kº§óR%;Ð£t#Óÿ\0­\\N¹¬M­êr^Ü02?\\.+ÔË½½“ir½Ÿ_˜8Ø¯ËF¬¹;[¨õ§ËrgEó]xÜO$z\Z¤iõ©¹\0b½n¤£BÆôG¶ÒÀ³E(Ç?yªŸóš®öîŒV\\†©>©°+†FHd9ú{×}àÝ?MÖ´›è.m¼Û°U·Œ&y ö5Iò.b–ºPF10\nì@ÜÜtÿ\0ëWeàß>§©#ÚHÈË	‘ÒEá½‡××µ`›ìÐ[G4‘n![oÌõÚ|5Ô¡Òn/Ë²È«³ËaÈ5ÇŽ«R8yJ–à¢îŠ~%¼½ƒV´FºmãVŒ³ràþGµW\Zãji¨_Zq\ZíI‘v¬ßïc¡µ•âMkû[\\¸c\Z¬fRU€ÇÇçÍ:IÉÓ¿rX,k†È\0÷5ËIÇÞ	Ý³´¿ñ¥qknÖzsB³Äb–h¥ÜÓdcŠáoIŠ2\"IÁÀ­UeT³i|µÛ¸³só{U-^£‘$‰[-ÌœŒŸJ×ÚÏžÓÛ ?„Í‚`ÅSñØ÷­Ë-Y.RimìïÇîÏ9<?\Z4Ý>7hn%…_*ªk¡Óã¶Ó\Zán®IµùY	lƒÓŸJs¨Ò´F¢qWÖ)8©#Ë#•ç½RŠÔýžRä +”ýþ{We©Üiís4—¶òË4çËˆ¿îö¦2­žÿ\0s©\r˜Åu$²1ò™Få?^{ûVÉ¸Çß\'F®b»b`‚ôÆe*¥XòV®\\Bˆ›€$ž•Rò¸*	q•$t5¤dšÐB²ÈF”SÎÀp\r-Äp©QW;yaÞ¦yÍÆZc€O/JiHÚ]€‚1Á©§Ì‰cì‚,ª¬ûPœ1#8­ÇÑ‘-Ökb^o3#bç+íŽ¤W:\0\r´ôë«ðŸ‰IÔm>ÐY­ “ÌÚ ¤Œf”¯tú2å‡‰µm<Ïd$fk›šG,	cž™â¯¾±¨jÚ­¼Ñ$\nUQã¯Ðžþõ›ªk¶—:ê_\"fšF_£tìEhÂ–3IÎïÂÛc¸æCÔ×®\rrTQ¿2F‘m«Þ0Òâ‚V¸Ž1‘HPÇ³/lûóPÛkÜé¢ÆVÚIÿ\0T}ªî·,—ÒÜ¤,ì£2ü\\}áê=+›ÑÚ1©DXV rHÉ¿\Z¸AN÷@½ž‡Oq ­›\\¹ŒÀ%Y†áøW95üN¢€w.{WA­ß-á’ÜZ½½ªÉ~Y	õ=éfðUäÞ}F(ýœ‡U<I\"7|vÅ^“¿3\n’¶†ï„¼UöKë9sòH<¹ NaÐ“]v¯ªXkzÃ¥Ÿï.­¡»›\n	ãžÄsŒWˆ5âÄñýŽWÚyà©=Et:\'Œ‡‡ìe–%¼¸b$Üœ¨ö5é*Š÷{œ­5 ÿ\0Z\\%ò{q(FÞ!\'±îsù{W:Ä%H9\0õ®»Tñž¤Ñ]ÝÛ\0Z\0Ž@Éç“ïŽõËÍ\n­Ê²auÜ¹â³”¹µ-FÂÃr‘*ásŽ=Å,Srz&sÚ©²àž£µ[¶ÂãåÃpIíïQv€¹4pw!G#¯\\JÒƒLkní62O%Œƒ<Gnkâ3¥^O3ªô-¥Êª„d7dÓ>þÕTâíï}ˆç½–yÄ²¾çÀ½i«3£’¤üÞ•$Ð°••Sž¸…D88s[+YYÌ0;ŒTdŽÄÓK^}©1“ÆqéM ¸ìÿ\0*UcÈ¥009¥`\n‚3V„9e*ÙíÜSÄ§ït=±ÅBx§‘NÂómÌqÉ¦d·n)0FFiWrç’@!8éƒNŠS«\"õB½FNI¦s‘ŒS°Xž{:v}ª™9\n:\n…É:ri¡wçšF#&¦àL%é‘éHø#¥B¬þT$öÏ¥&Åd(Ä”S•PÇšr6F9§mÛ‚H9í@W\nmžséLbqŒb›È8¥Æ[švÆ;GÖŒ·N1R˜óïMðz@>w–å¤™ÏÌNN?ýU| mù”u©›#îçž¼Ó6€ÀžG¥&À‰_È\"§±ÏQLåˆ‚*x,æ”°E84Ö Ù4R>ü†<úUÙ<Åò³·%ºç½W† %\\r;Z¹%Øž*Ò\'B6LàŠt(¯*	Ô,6>èÏZ¸Öã‘Ü~•=ŠÛÛÜ£Ý[}¦ñn+ŸÆ‰¶ ì$®Í­[Âw–qYéöðGrÒ;ºÜ¢òÞŠO¦GÖ¹qapdŽ?)ÔÈp™ÝÎ8¯_ðÍÎŸšÕf_³Ä\"	)Ë`gßßª^&Ñà¹—Obí\r´ § K§­xT³\Z”çìê#¦TÕ®Žj°ùì±$ÂÛ9È`~5žº]È‰¦°,qÓœWW¨ÜÃÖ,ó\ZFçGCƒS¾£š?ÙÃ|Î¡dÜ¼‚öâ»iâ1NJ÷2j\'åí##(?/µmôÔ¾”…(O™¸ôˆýji,@	J\\±ÀÇ9®ÿ\0j–†næ:ÆHïš<°£´å±’š6\02õ\0æ«<L_IÚ´SLÉ”óÁÅoiÚóKÖ÷[eœÄ©ŒûUä©=ò8æ²d‹ºt88¶¼o§«ÝjÚŽÔ[RBHÌ0ÝîpkÍÍ=•Ú¿cJi¹ho›o¶øBç±!R7{Ç?Eô®/Ä0eŒÃòŒÄàü£=‡ëVõKÇÕ–Îåà2ÊÓA8óË£øxíX\r©Ü2CaräÃ\ny*yçõ¯3Fq|ÍïÐÖm\\«u=ŸÙñ²î–àzŠËsdgµ]¹Ó\'E±RÎ{gŽìTäPk×V[ZãC\"È€e8¦`Í)+…\rÎjc´díç‘QFxÀ8©ÜiŸ”‘íÅ4²íÇSŽp?Zb•ä“ž´®[É(½ÝÓœÔŒzÌbC#œŽ•^RŠÜsØSÜÏ9QÓÞ¢cœqÎiÅjRb0Ïô¥\0Žhäw*AÏP8H‘Êt4…Ou§gn{\nr°ÉÏ\\pj’©’AÇJ³¼à¸¥F˜\0úž´ò	*GOJ¦±ÙÚëcK¹Š;y¡òcy	VVaÔª}«Y²HÕ\"ÊbrÈ{`qYÎŸ2°Í)„mj¬eÝ(r}TÐÜýšÞhÑƒ‰#®q‘×ô¬urÊÙêy52È/súÒöZY…É]€U™qÔU’ZÊ¡˜)tÞ§9 À>†©3#Ó5¯5å”–¶óŸ6M@.Ù	Ë p¿Ž\0®˜ÓN6d6U‡Q»YeÃŠUÕù#úÓS“»n0qëMóM,Š…wgç²°*9RÑ!6Ù\",ƒ{’TqBDÒÌª§%Ž0zS-ØsžFEL„²à¢šZ‰Œ)²VG2’8=Å=‘‰ÇN)R\"ÏŒçŠœ¯–ë‘»ž™ëU³W\nUN9äŠ™D(Ž¦2å€Á?Âi™9ÇÓ½\nÅNKsRõ\r{% rIØ †û§¿\0Õíà»ÄÈ`È%¹gžk1UÎBœÚš°¬&97/BH\'ž¦¹ª@Ò2/=ä×3Ë²ØÌH!YA!WÆ=lø_íSÿ\0¥[€#÷Q‚ÇårG ~¥sð^y(J¹i0BôÍv^Ö¡ÓìØÌˆ\\~ïÌ@v·n}ÎEsT‡»¢7„ÑÙhwÚ¤8ee`ÙÎîŠsœ{WYåý ‡pT¯Bjòû-Já-îƒ^Ä&I+æ-Ø~>õßèÍ<Öp£3±QûÂÇ¡ÇJà•6nš¹²÷A°Hàn8žôýù ŒsYZµ¤±Ü¡2#/SÛž•~Ô‡ß>ÇLŒÇÓúW¡OšÞñ‹jåº­-ÐŽæ8ˆ\\ãq8Áì>¦¹Ý_Ä––·ÉËÉ\'”H	½xÏ¿µr:¯uªëŸg¶’F•årÅÉÚ«Æ×­ùRÜŽfö=LÝF¦NAÁã¡÷¬{ub»žÝ‘JŽU˜ðÃ€@÷ªªXé$7O°:ü­#’KsòžøÀâ¹\r__°¸Ô¥T¡&GqÈ\np†»\r²ojV*\"K-?lí(:8ÛŒÿ\0÷¯/Š®ní6¬+<ÄÌ*8ÀîG~Õ“ko­y¹aÂ\"3ü@§ÜŠôÊ{TtQö…,ŠÙÕŠéryC4?´EgkÝ¯—;FrBà(lÒcšZæ”¹Í°QE#\n(¢€\n(¢€\n(¢€#È(*OÌIè+–Ö.¥¸¸¸´’Í”•)©9|ãÆºÂ21\\‰µ-BÃPŠÚ\\Û°x$ö®Œ>²2©±Éê6e•a¸†Dš3ó£p\'¥VžÎÊâO.\rßpdµÞµ|M¨$÷BBå¤•	cœ…”zcšÀ´IeŸ’x,O°ï]m6gcYÑ$aoó8®h<ˆTF9æ»»Ép	9Ük–»E2qÅsJ-nj¤Š‘yüÆù³ü5©o$,HüØÀ÷¬é1Ì\0«K1še~sÔŽ9¬Z¹iÜ¿ç²ržG½kiŸc½¸´Ž{O3cüå¹ó3Ûè:â²`³S#åÃ™Ôÿ\0mivDÌå\nÑòþ£½c=‹ŽŒô»MrÎîâÚØ¼–6Ñ‚Qò±\0>€•X°´(dšF…eù÷èsé‘^go¨Ge\'“ç°–t\'žIþx5oTÕì´Nìœ#uO½q:2½dÕk¡k\n%Í¤Ÿ< 4HHáGLãó©¿á6a¢GaskçLÝ*6ÜŒçŸÖ¹hD\"äy€b7ïW ´ÓäšêwW(pãÚ·T£k3.gs :´·ïÞ[EoV)eçi=«²Ó..Ö\0ó_´Á\n²Ÿ™qœëJòýRò,¬ÒÐºå0êÄÜõÅfKª^¥ÌW‰ç\rŠ?,ãÚ¥Ñ¾Å¦å¹êÚà°óâ¾¹“g—ÃgŒäß9éShVWZ„o4‚K	$,±))$£<ôãÉxnÚïUÔbÔuhËN!‰¸Un9>ü×¨[Ç,vÈ“2CÉíJå~cz+x¥ªÅeh\0c€>‚£ÓlÞÕä¦’S¹Ý†	?áŒTóÊ± .ÁøŸ8ÅU‹QIÕÚDc«¸ œÖÑnR3o@Ö5«]MkÛ‚L`€6ó’N+‘½ñf“®ÚÉ¤ó GoÎãÓßŸÂ·5M)u+IdÖwX¹X!có`õúž8ª:O„RÒê=HnáƒÅ/ ccÜ×lyb®·2i½ÎkXøu:ÅÈód½”.4™þë×$ûWáßêW7¿iŠÑnBÇaç©òÿ\0Ÿ?…}\0\\ÏçKÏÎÀg°¹ß	è?ØÚúùþdjª°®Üa	-üÉ…)O™k¹QÐä-|3›a,SºÄáÚ!ó9/ƒÆ;O\\Õï\røNæÊ8ã¼½‡û5PÎÈP`ïÓä×}>‹§ÝKæÏl²>r‰ÈïÅsºí¦©-ôBÞ!=¥©-\"nåqœõ\0öö©V–ˆg—\\ø]ÄóÚO$°[b’¬{²ëŒûÖ¨Òn4¶–ÑÊ[½Ìi}Ø`wg°çñ«\Z­ñðÏ‰Rt½F/Þ*?ð«pWß ×mý­¥ë~¹{HÔoC*À”gðÁ£”y¬-leKáˆ,ïuù¤kh[qgTË0À$Üý+?ZÒm¬íÚçíÞlWŠÄ—ÑTv®ƒQñ&›;iOw#G†i³À®k—×¼FºˆR¡$‚RÈð¿íAß?ZR÷@“g;û[¥Ï—¾7åH	Ð~5>‹áùu=@\"Çæ@»Œdÿ\0*lV€L°åFNGã^‹áùmô;\'k†Œí]ä Ë}Jæ”šØÕ-\'ÆþƒB’Çì¨@’3æÐ°ô®nvÇ±®ÃâV½ö­RÚÒ$eXcÜÛÆ[ÿ\0¬+‹ŽY‚ÇÒ×º‚=Ëð[?3\nÕÓÚº†˜Gl=…a)=ÍXŠUÔ‘\"¡¡ó\\ô}NËMÒôÄŒÞ¡y|a.GOÃšæ\Zõœœ>ñXïtÅ>)K’¸ªÑ­H5\"˜,ŠÌ7Écí-rÂ0 ®âÁ@èj´lÈýˆÆkwN´HçŠBà!|ŸÊ¥»†[é·D\\)íQ¬ïÏ\0W~n´ëKDG•$dðOá\\dû^f6áÌ ðÌ:Ô©]ÂãòjâL@ÂŒUH£É«h1šÒ)nÅÍrÄAÜòM_…U0IÉ¬ô—°«Q±&©´öšqO·*ì.Ò\ZÌ·Œ±ÏjÖ„TJÖ$˜p)iÈ¥¬DQE\0QE\0QE\0QE\0QE\0QE\0^é7.jrBŒ“T®n@èzUGq¢š8†bÌHÇN*c~FÕbIÇZ­)r8>•&Ÿ´›Œ‡p?p:©Ûp{š1É#3)\0wŠd÷\"5t$‡ïcŠ°ŒÈÀ¬ýF6Á;ÈŒœ°ë45¹\ZÞË$IJ¬OœšÐŠ6òBIƒ€3ƒÖ°¬>ÑÄ†ÝÀBß2•É>˜®‰7lþö9ª{ð=…D·1˜÷’Tg7-#\"¸Ã(#ÐŠZG%ÄqÇ¼°éÀ“ô¨¡U¸·ÈgÃHo~Õ3ÀŒ (ÚGBJÎ¿i6-”Ò\\ËÈbp#_ïSŠìçiú›!m‡ òvÏ½C¤èßbólyHÆ@©â†ÞÂ\"\0rìy,}Mê›]Ï*iÇç\0Ór²ÞGv\nÈºŒm­ArÉdRÍ\"’ÄtV·Ö®›Ø‘[y*F8êNk.åfhž7Ù‹±pÉÚ=~¦ªbµçˆíÞS?Ö*óßžÂ±nõin%-n²˜sŒ·\'Ôèôqæ›ŒÃ\n¾ÇR>gõ«æ?ìøŸÍUÀbò~”å²\ZeÈbŠ;V–F^~m­Ó¥gA®Ä„“ÌØNâHaî\r[¾¸µù –2\"„ÈÏ~Õ‹ö8n¥žÞÛæ\n74¨¼ý\rrû6Ñiš÷—ÁâI–PíÊÝ3Ûë\\Ö§5Ìä…63\"ŽªIq%´Mù\nœMW[éœ‡ugùÑ›h<qIFÏÞ.úh?OŽXu4ºØûcl‚ë€Øïï]”WÉ%¼sý¢&–NHcÐçôé\\Ö«,vãÌ(wÇ´÷Æ==++MV¹”0”\rÙÎïÎ‰Å=bG©ì‘ßC4$®089=r³jÖ–Q_¥Å·(ÅÝÔä3vZçYÚ9±Ü’\"œ.}H¬¯	âWÏ2	NîxÉúV°g©\r\ZúÏŸ/™>	Žp\0?ÎŸ?Šmã½–ÉÓ`ÆÔž~•…ì†×Î•BI!P¨ÁïœUK]÷T\'P”¨BÙËœf¹Ý¶äÆŽ­îµ#!´Ye8Ë2‘òÔW——³Gin¥Tq\'%š[›D6ð7ïgÊ±á~ úŠë[I³²Ò#Ë!»˜‡{Œ€×ÒªRva+¢ÿ\0†ô©!·ÛyF@6D7žiÚ@û\Z€C¾yn	ã q^x¾1þÌÕ\"›Í’c	 …<:àŽ¿ZŸAñD×W¥¹kÎCô\\ŸZé‹ä‹MÑ×êž¹¾„îIA¹•3¸Õ<w¥] µ’2»¹v__jí!-cmºœ»;\0:jÊÔ|G£ÛÜ¬³\\XNOSþq©îê´#•ßC†ñ&›shò\\$Ió\0pAôæ·‘Ýy ÎXFÍÆx¯[×¼o¡_Eqå;c ÆHûÞÀz×”j’ÜO ™•„.Çfï­œ$´Ü¨©-Êþ ¼ól­ŒsBñí1áƒëóg©÷¬VŠAhn	OËœóùUiå€–>žÔÙåB¦Jã¯­KõdÆÐß‡\\ž=ì±ÜEpdR¦9cù¡¡kH\nÂ³>à<úš­ó}„¨?5t¢Óo„¦œÛ¬ÌØÙ(nSÔb´Šr‹l™Z,æÖ5q×yã¥6êÜ[LÑ	Ç÷—j}Þ]šPKzšm­”—[pPào8ÅEÞÃ(…8<ã«¦jØ—Â‰Æ¡^KO³‡Ý\"B8\rš­#,’„¨úÖU\"¦¬ÊV:»kËF±´ŠGŽFÊ `}+\Zt6×\rÄÑº¬`ƒèj;[Ë:tž$FŽ§Rj7Óêw“^Ü÷¶éÔšQ¥Nœ}ÍúŠîþEˆãI^=½[†ÿ\0\ZõÍÏOðæ¼<Î¡ŽW,:jñí>æ{YÒ{|oCdÂ»7ÇWKt“Íow¸*F§c^6mB½X®O‡©I¤sšôÉr÷í[Ä]¼ x=zc®+\räŠà“4~[}:~\"½rïâG‡õ+VµÖ4± #T0úƒÔW—j’XK¨LÚdN–dåQÎJþ5¾_ˆ«%ìêSq·Ü7}îgXd©£ºÓUA4£tReûT«\"¹ùâäñ^­É±K³šòFá™ÕIÚsì}+Ò¾\ZÙ-áºòbI#,PŸ™yÁóþUæ¶o®%’â\"PíhÎ{ê+kB½Ô¼;2k:uÒoRU“<Ÿª÷…[´ÑQ=NêÎÛNiaÙÛÂ@š!7v3ÇãúW	ã?\r\\[Ïesö¨µ(3æ¹ÉÁàÂÄK­<˜ïtèæWVÜc”€Á‡÷yÏ¥qšžµs«]ï™ˆDâ(³•sÀÏNNe}ºš6¬[¸Õäk?±Í%ñ\"O±=þµ½ìÊÒBŒ0ìÀÖcF3WtÒªî qšÝÒŒS²3m½Ëð\"Ig}…@#9>•~Ñó`gÊpôöÅfØ°Ielä@<×FÞ&7¶²o¶Š)FÕC_(îsXÎ/d8¥-ÙèÞÓF¡§]Y^ˆÚéP´D×ð5iá»í.›ÄŠ`V\0[ËŸp$’=ÏLU\nø›OŠÙ¶b}Ê’E.Ùã¯×¨k7Ëwh·r]Ø¼í$M#À“Áúã­F5)ÍÊ/ÔsjQå\rZÚh¯¦ý¦{{s„.wl°ÏãUåÔ#žB©\"6îKŠ…5)\"…¢Žà¢KË©bGãPÚ°U’B¡õ_ð®©ûÚÈÅ+#R;––ÆKv†\'Þ\0Ëóqèjä6ÿ\0eØªÞpäC[Þv¨‹PÎY±öy› úÔ*¶‚Ç[-< >]ž½Á÷ŠåM*Ü‹Ôjç=m2²å“æžõ=²Áµ¤™¾aÐU[åq·ï+BÊ.%H&DÌÀ?t}k±ÇAîVûII·§4énÑ®Rhâ‘ÕW¦jíî”4ëùí¦–9L]\Z&Ü­øÖ`Eó0Ù\0Ö‘H[EÈš]ì2Í’{sW­õ7’ šr¡âÙë9²š\r£<	ÆH>ô8&+³ZÊÿ\0ìÀïV‘”æ7\'§û\'ÔSâ¸)ÑXc1Ë•U\';\\ƒê+(»È	ßÎsV#•Bd““×Š\\†¤Oö«‰mdY.›<eI$)ñë\Z’C$l£ FRr\nŽ‚«y‹+3´c•ÀÆ™ÀÇ8«°\\–Ý¶ÖI=©ZÌ¦v>ážµ6ØÄ;•²çß¥\"d®ÝÀ\03õ¨JMÝ	ŒH2q!8þU$%P…È¡ÙœäçwsëK\Z=©Ù¸ní]Ž—&ã ·ŠkŒNÂß{#ß£§éwSê+Q<»IUíëƒUîmþÃ~ñFÙUn¨ÆkzÓÅ—’˜âdˆÔã8ÁïøR•ú\0ßéÿ\0ÙÖû\'ˆn(àƒêk—EpŠvðßwŽµÔø‹V¾Ö­í¥¹·W%>I‡Aê8ãúÖ-”ÆÝ¡™É»8äzñWI6µÑ‰é±X¤‚4a Ï@ ò*,O®kNîÐ‹©eüèádUÛ“ôíP\\[pVEu ¯ùëW³…\\ž8§í!sšw–O$SÂåU1ƒœ–¦\"íÆjdÓBaˆœâ¤äGÿ\0ª¨Ú@¤\0œc­JŽü\Z’61¸mŠxÀÈªB Æâ3Ö¤XÎ8ëSyyù¸Éæœb\nß/\"€¤É†9¨ÊÕ¥µC‡*§iÉpj	bÄ€\0>”(‘Ž4×PEX’>9¢IÆ8©±CÙ©\Z.8©\"­,\\uÉ¥Ê¬ŠAÀ Œ–©©Ö‚*e€Ž@¢ÄÜ¤oéN)Ï­\\6Ù;—¯~*T´iÚ zvÊ* vçÙª“ŠÑûQ’23Ú›-¿qÏÒ‡\\ÉY8œÑ¡p§¸ŠY61í\0.8¥Š-ÝFò©åÈaˆîÁíëZÖ“=»\rëíŒQÅm“œUÄ¶aÛéZE\0Ö˜,“ØsúU˜Q@Î0jÀƒtJN8ãÖœ°Š»F#Ëd÷«VÖ²\\Ì°Ä›ŽzšrÛ:\Z³¬¬2äv©kM\0è|j ]3lIwª‚Í†P98®ŸPžU·–+{¬H«¸–]Åà`öæ¹ˆt¹$	5£‰¢fœÞF}Çõ­6žîÑ’XXy…YÕ1‚=GB\r|ö&‡´«Ì™ÕNV[•Õ¬¦÷+y$ÉGçÇjŽ[R³àcž¹¾\"€#Í†YòB°>½êƒÀÏ»8$÷½j7²F{™ÅY]š/—w\\TÖQÜ¸šeS•ç0¶+‘Ö§†Ñ¼§•$Ã£“?1¢¶šIc&s+HWïÄñêjÈ‰­ÎëÄ•\0\"U#Ã±§6íÎR>§*6³škwv“v;IçÜÐ•’‰ypÓ’Î€(Ç~õ†öÓ2³c#5Õ1»1ÏZŠæÍU@<(”SœÁÝŠÛA+ŒÛéN ;†BÄ) ëŒçúÕö³,å[Œd÷©Æž!‚6ÿ\0xc•¬¥ÞãR1/¬»YÍÐÖ%Ê”~Ç=û×Eq…FÝÉ-ùV=Â¦OÌ1úÒq±i™R™½E¸w«#éž3Þª’CúT?•–¤Œù—l×µÏ\0õ pÀÐÔ‚›qçµFÉÉÁÍYò›$Áç¦j&É\'ŽGSŠiŒa;‡ò§ÜO?…\"« iè	nF\rX\rÚH$ž”à_Ãó÷Hý)›77ø\Z¥¨´cÈã ÐncB\0:ƒŠUóœžÔÀœ·^½)70•x\rŒñQd]ÙÎ\rXˆ+¼à‘ÁÏ… =†¢\09Îiè\0`HÏ=)æ<»aÇqÐÓAhä½sÔŠ®Nñ¬ò)8äøëHŽ\n”nÝ)¡Z7êTã ƒëJ‰Ó±þuBeÂ\r£©­£8#yàP©Éüje!hâ¥ÞÚ^[7°¹ƒÎÚP·>”\\Em¿n;ycÚ£’y&†4q	=iÊî¼\02F3Š˜Æ[±‘Æ¬_å\'wµ_‰äAƒ‡BËto¥6„R€D#(ƒ\'©lðkQžÞxUåp˜F@Ùäœer=;R©RIì\\#s2EI.dŒ(\\ž)öö\n&_´°° ?lãŠ>DÙ;³Î?Zžk‰¤€!Æ_\0dýj”]‰½™Ÿ5‘F\r‘–ã\0Ô-j«ó>Kš×ã1˜îù„åIÅVUgq/Î½³JO ŒÃ\Z0iwpTJÐh§¹’ÉU7Ìq\Z`uÁã=§áI«B0êr â­C©ý’ÈÆÀ¼’¥‡Ü=ñèsY¤úu:?xqmþÖ·«¾ëpÖ@àãó¯@´Ôì´k0³Îdvw`‘^OáÍRm>íîYLð*–x°[ÐýrsŠ5+Ïµ4Ñ[NV=ÁáF9Â·Þ\\öÇ&¹Ý){K³~uË¡é\Zôrê%ã1l–1)õÇ8ìsü«‘×üot›!W”Ž23Œäg¿5ËC¨Md%IJŸí|À>Ùª1í$’°8¹É­Ôz²7#kÉYÙÔ±·ãwõ®ƒMÕæÓÊÝGG6Ö$î\Z©‡s©2yQ,,HU‰P’F:ç¥niþ\rÔ¥ÔE½Ü3¤cå$/?ŸJ§ÊTQ-Ö­&©½ÅÄ«’e\\—bz`v§ÃjóOso¸#¶7JwH¿nzq]~›¥5§§ÃgæB«±ÚD9è@ük§·±‚UŽ4Mƒ\"í£Ú5 YJhßÙúI>V%X6°dÁ$Žƒè;Ö¯…­ïVi¥™”ç‡½€õ&º’Š[$ŸjÕ!Ž\0ô©u.EVeQ@Q@Q@U\rGP¶µ…„²í9\0€yæšM»!7d]$c¯jæ¼Qo¾š/+1gysÏ#·½g\'ˆÌ-±ÃNƒp=sÓ>Õ^Y-‡—>«#–Þ‚ò\0=8®˜Spw2”¹´8»»	IÃ)$†ÓÛµW·´r,SìÝò±=³^—«6o£I5² ,£aïóœ~µÅéì-/Zã\na*ÌC¯á·¥tF\\Ä=40ïl¦‰pBpÞ¸®~xÐ™7n8<u¯AÖnm¯ç·O$C¹eË€T“Üú\nâ¯“Ëym°¤£¼}{Rª®‡©Î]²ŽsÒ£Ž@œ1ïWd¶E˜Ù-×Ú’ébb\0Ä^k³tFàQµ¹#š i^A‚Ç\'Œv4Š¥—$pjÕ³d!Ã¡}j,d™2–aÉ=êý­êÅ§Ü+mSßÚ ³™e½g½O20å\r‚xõ¦Kq¸0óÈÏqCH.XšfòálÜÀ=9ô¤Gƒ¼‡ÌµLHC®PÀ“Ò­¬	L±3F¿xíàgÞ¥ ûQyDQ¶àu\'­‹\'’Õ\"ÛX~bëü ã©ïÀíUô-\nMmf{r†xÈÂ1ê8éùÖý®—i\ZM	…PO…päîŽAÔnõ2²FŠö/hñ]jTñêJÍ&TÂÄ nsŒ£Þ¶ï<UG¾ùäŽkI$Q0`þç×úf°5‹%°‚ÛìLÛà;X£dä‘ø×vöƒÍurÍ0!baœŽAüë™ÃšWÎ’/ê:¦£L€Y[Î2ÌIêÜúà~•éZ´Ís£Ÿ±Åm-àP0²|ª3œƒë^rïd·‘ÕÎÛ›\0…çóëZºV§qi©G<·\r·fNrF\riÈ×Â£ÖìuØ.¼Gke©Ü+j²ClÆî3–$õ#WG¢ëpk)<°°Ø“4J;ü½I¯“RX_´x£B‰!›iÆrÏNãŽµR×^ÖìnÜé;+|²°†9ïÇë]KXù™Øö»´½¾º\\ C·~àKŽœzb«ù—:wŠ!’ñã^À!m‘77ê	®sJÖ<a}ogm6Á›\r,Žd|c9aÛ9£Ä^Öµ+_µj:òË$C÷0ÃÅ\'¹ëJ2KqØîäÔmRòO5|érUsØU=cÈa	mLY0läHª\\w×\r„ì5›{KÕÖuSr#îr[å Ób¹oè–Z5Œ±Líq+·ÈYöv$”EÇtÄ×C3Å7ZlºÃ=¼ñIvÜ#Œ~9ëZ:_Œ¬t«i!²ÓäžìÆV9Há[\'>‡ôª—útAfZÄò¥¸íN7rúôý+>ÒÂÍJ8Öö+Q´o›îàž éšÑ´Æ––-ÚÉ¬jJm§yÈ¹`Op×¶k©ð¾â»k¦½\Z5›\\Jß%Åã«ÈÉ!AïZ>	šÆÜ\'P×P’¥ÈÀg‚=«Ð¬LßÙèÒä09Û°®hV“¨Õ´*KM%×<+­K¬yWW0.ËåÛ¡ÂãžP_G\"íÊ¢‡ü­Éè3ÛÒ½cSK{;á«NÄ4iµTœàž+Ï/n¡¸Õá¾Ôµ½óƒeUTòqëÁükiM6$ÝŽÄš}…ÌcOº{µxÃÈÄîò‰è¤úÖ:JÄc èZ§Š´È¼;&—ˆ›æFV¡V3Øç‘Ö¸mÉç½iÌœF®Hžõ4jÄñÍ9`EÁv«: ùñ¤Ø¬Kolç$ð1WbX­×“–ªQO!1ž‡é[v–q½œŠÐ»NT:2œü½ÏøÒ.Ö²É\"¤J1ÀÏp+ù‡Í•³ŸŸ¡¬øãxØÞ¯µÀ’BÎ~g#8ì)6Tt:\'Ñ ŽÚ+‚Î¦BÙH%F3“Z²cv„Anì–g¦ó×Ÿ×šËÓn®VMñ£JTà+u<…vŽlà´CòF«ƒ´c\"²»&G\'\0´–&/\Zœn÷¨É5µ¨j<2¤0ÆŒ~!X‘)VÁê*ÓÓQ¤š.D3ŠÑ:TbíVã“¥Ì9\rHœ\0\0«q°=ë.9­XYû\n+4•Áã5(9¬ô“¥]ŒñœÐÑ$”S€R«†©°¬:ŠBÀu4š-Q@SŠIç¥\0>Šc8§@XZNô§ša$0\0ö Î3sŠÃ™ÎHÍ_¿¸1È±—\n§“UZ”·ï\0ÇOzµ¢-lg<åN\r\\Ó.PÝ€ÌA àŽõ•v;\0ràúÕE¹hd¬C‘ƒCWC±ßí§ZkE¼øeÇ~õ‘¤Ü\\Nžz³Ëàx;½*½þ·u	R‘„Éœýj,ÅË®ƒ®õ‚GŽò/\0ÆyÆkFß\\Óg\nÝ\"–à+œÖ¹äÔ-õk„Ž±Œ\0C3ÍhÉ¢éW!?3£tªV{ƒFßŸ0+*`pyÖ§oh‘÷pBó­sé X<²Ã“ùªxÊŒô&›7ƒä2š‰Àê]p\0ïÞŸ*îI¿>¯ohc>d’q\ZìzéSZ[yå~g—æ‘‡¯ öÃ^.®g‰­?~±å\"“f7q×ÿ\0¯Vì<G®[²O¦›Ù\"É‘Ñð@ü±Å?g+±¹ªi×w×‘yl\"@9Ï9÷¬ÍfÚâÊ%yNFÐÿ\0Ýü*H|[¹BßZÏfùÎà›”Š£«jÖ×\"1kx“nrcÈ9þíæ“@‘ÏÝ\\\\*¬ËpH’ÜgéL_]+¡vWdmþnß˜ñÀ\'ÐUMNeyBŒ¹I qLVt–âr¾[†$ÿ\0«jièé­<Yuö™0ÑÎó7É»¤mëÚ¶\'Ô£M!Zÿ\0dÎ2©wÄòkÍçí˜†ÜŒ§§L~4F·—Ò=Á™ÓbïÞäŒñÐUõŽŒ^ÿ\0i^,1y’¼(8n=+^yNY[Þ`L›ŽÑÏªhžLÛÊ­ptRƒ’IƒõªÑE2êN&bîFÂÇ‘ùš&’WîÌ×eo”Êò\\üÅOÊ==ëgIÑeÕmâVC‚IfÏJŸN¶µ‹Sÿ\0LQ†ŠƒŒ{b·´˜í­nŸP‰V(>m«»ïaÚ¹õ4³±{á6²ŒÆdV.2OãÒ± ðÕÃ=Á–$†8×z±lÂ½]ZÊëjË0à‘œzâ¼[wy\'“¦iå™O%¶àý>‚·¥ËQèg+£K˜l›Í28Ú§‹¨jó]D°ÊÌ¶ñ1hõÓ?…jãEt:Šß÷Æ7l¿Ö±u‹q-ùŽcg![Èÿ\0\n§EÁÜ¸ûûkÍR?µ ‹ÕñqÐÖõþ½Æ,ìÓe¬KÀî3ÛÞ—CðÝ˜H¤\'Ï”©,¡rö¬ë­R‹Î‘K4€2ö=ñÚ¹mË}‹Ø±¤Øë:òùvaŒ16<Ì·>ÿ\0…ni^[ymïoež(¢2H­À$ñŠîtï\rØAg©ò÷FO¿SX~!Š+UyãÆæ0WIäŠí„R¢µ2»oS”×<%mgoç c+Ëå R\nçÍvðÚÆ‘¼‹Á´±pT~ç5Éh6Þ#Ô¢µ–íÌfVLãnzzîõ-*çL°Í…ÌÙ@J =ûšr“©îì+r’øŒvŒÆæ8–÷\0Ãs“ë×Šòy´ÛMFo¤iKó8Üô¤Ô/¥‚µ^±ËüÑÌI=\r)Ôëù0ØEmnØuG#Ø±©•KC“±Iks*cuŠ(Äòð>^Õfõ-´Û»E»„\\È­—Žn8Zè-´è\"¶i\"\rm2eƒc—=±Yš¦Ÿö[›iõ\rÒ1ÆôaÈ¡5”!)]Ø•Ï\'w÷p¶0­Ëôë©áÅ…S÷ÿ\0ˆÿ\0õ©îìóÇº©ä©ÛÉÏcëQÜFÄ‚Wiî?­Mî ¼kkibP¬²/qÐúŠÓ³¿ŠM´øÄ+Ê+coàzƒÖ°ç\n¯…9µ%ËÙÝÇpªcg½k“×bd®Ž†óHK(à{kyÚp»ågŸ@;ëUÃ»í–%vRÍ»î··±¯EÒ5¸üQ6—ð…c!I‡{šàµÛ¤êÏn³†ÇL+Èð§V­.nHîg.¦ÚÍ<ë…¼<&qšI,]­^å1ˆÛ½ÖµuËÈî–Ù\"Œ£Ä›ï‘šnŒXîl¤?4é…>õÍV£„nŒÎÆ`ÛØÓQ³Ã\Z±=¬ö“5¼ˆC)Ç=ê\"žZ¶ä9<†«Œ“WBiqö{¨äêäZìüs«èºÜz=ö“†T·Ü¦1ó™ýy®g$ö§îã§›»I\rhKrÉ Ük“Ï<b¢^)ÀqéB±\' uVÐí-ÐéK\0mÇ9S€À0A©æ=y÷¨m¡\ZðjöðÃwiéüd`Þã¸ê*¢Íë$\nFNÖçŠlR°Êä«6qÖµ­É²Ó¥u•þ2:æ¹ç7qÆíÙ4:}ÌR4æXï˜œ\"³ŸOjÇ’Ò1›_!Ã!ïî*u¾–E1ùY`r¬ £éZXÚÝÙn‘Ìs¹b¯Ø‘Úµs”obÞ¦5µ´÷±EI!èª2*Ø‹O{‰#H Ã€7.y9ïYÐ<¶²ŽVIT•?Ê§/{yzfßûæþîŠÒWk@²-=Œ¶’²<låpEj®åè.ë\n	CŒ±l1Ïb=*+râÊÚæ+™QÜ¦6L‡p?ìžÆµo-Yíe·‹`GQƒïŸ¥r¹IhÐì–Æ~•¦Ú\\ÄâY+ÒÀÀ¬;çÐÓu\nåXµ¼Nê	Ü1ÐŽõ¸öëj-mle„É6òySž3õ¨oo/ôéî,înÕÚU;†áßÓ“­.ot\ZIjqw%f”‹Ž¡F4è•%S¶Âyç½[žËËe–<1yæŸ…Ä±nH×>æºeR<¦-Ú´ÖS¥ÄnÑ<mÃ!Á©ŸTCsæÄ’ÜJé_¨ÿ\0ëÑ$i\r£,ƒç<dzŽÕŸ.Ò€/R0ET“æ)2[)#B¢TÊ`çjÃGjms»÷3×6z{ÔK˜³\'Ï°š¨^6p €0ÀûúV­	±†y¨w<½Þ–h‘SrJlcštÑÈ0’¦ÖQŒc£Œ@lâ¨C\Z6“Ó·Ö)²7`Z²gP\Z5\\!ÆA­=6-Ré!µ™wù`‘#Ü{€O¢ö®cð€üâ§Š»ðy\\ö­›ÝÇ,/kºH%\\FçæAô\"³£_³ÊVU?/LôFj[\nÂ,EXå	sÓþ”èâS!óŒF1ŠÐšíî’gÃnPêTäõ­].	˜;=ŠÜ¤ªIÉçßÖ«™%pµÌ«M&I’R¨Û„fHÔup4ÑoÂT+mÉ<óZ“ilûnZ)T“³;qëïéUV`Tª#q»±î*”¬\r4+“Á\n™#-íÕOTñX\\L­$HJ åJºVÓ„Qae^\\vaíZ_™hI—!’æf‘°Ku¥û‰#RÁwò3ÈüjÚÀ{ù8zEÖåd¸‰&QŒ#¯c×š§¶×R³‹Í:E…àŠAØ£#_j‚iCÈfÙ²Fl‚pkÃ1XžY#vO—÷¡ySžž•› i.ä`»#ªò?\n\"Äìi[‰3\"GTà\"¹£Ö­ÛiO¦Mv\'\n.YKdçé]\"é«¤h¶w³Ø<ÂÞllË‰úã‡q%íà/nÂ+å¦;{ÖÒŠµÉR1cU]Á‡¸4›µ~aÔúÖ¤úlB/6	‰Ÿ•Æ\rW[sŽG^iY2™SËVÉ#ŸZ?ŸŒã· ¶Øl×µL¶™:Sµ‰3’lu5½c¢A\'›ç‘ˆ,‹÷›Û5µ¼QM“\rÑ‡ãJúÖäÚPµg·i¬ÄˆÉ`wsß´ŠIÙÏ=µ¢<¦6m§ý^áÓëPÆ5£5¶× zö¡b8ÛŠV›ä“WŠÉÚy®Š+Eh™ä¨é·®i¤´“F\0	¶7±éõ¡‚9¶„\" ŽsÐÖäöF9N8=GJ\"ÒÞe&4,Gj,UÌU‡iÎ*d‡$dV«iÀ\"6HÈ?…:+\\væ6PKs»ØÕ„¶ JÒŽ×=ªu³ã§4X“+É=uëJ¶Ø ŒÖÈ³ÁÎ>•(µÝ:R°#%bÊÊxèiLy* y=ñé[‚ÛÓ¥Ñ¦…¹Î-²eÎ9a€O¥4Y*¶B“Òº°ÐS~ÀÄò8£A˜émÂÕè-wš¾¶e?‡5f+qé@Óå8,VyíÍjÁh®q»Ô±ÃƒÓšRŽËåéS-§lVœpçTÆß\0R\rŒnp6¨[Ô{âšUY¼ÍÃ!¹N½êC1àRˆ.qÒ±tcÍÌR•‘F¬NPdöíPˆ‚CÞ¯ùgõ¦y$u«åH†PXMYª#Þd=1Ú§UÇëR—#–¤®€Îºˆ¸/\Zª.îBñÎ:Õií~FA8å<\Z¾-™årÜ€yç¥Mˆ9bqòûÒQ¶8C•ÍV’ÁŠ8# Ít¿f·5RòÛtLTqíVÖ€p—6RÉ)QÃ`ã\'õ¥ŽDku‰î‚ùê=(Öµ[ˆeŽ(•!Ú¤õ9íúW1qu©$Rß—º€Žp\\sÈöÈ\"¸g[’V‘J7Zµ5¶†å\rÃI\r“•#®8ü«“ß$¥ˆƒ1ÛÉ­;›ô¿c4¬Ì8=¿úÕ£e5µÍŒ7\nÀ\\+¯»Žk:Õì®‘¤c¡Ë²mûßtôç¡£h+Ðð9ö­X¬ ¸’(ä&2Ç—ðö¦ZØ$òˆÌ®Ðo*®©ÆqRª¢œL¥Pã¿½iOc\ZÙâ™õ;zã§#µY»Ó¥yŒ„&ÇØË1Ê‘Á p:Z‹LÓ¯%¸x¡w˜¥9Îzþ\nR¨­{…ŠÐHb³••ó¹JqÛ‘œûUr\0’#œWAªé·Wp˜ ‰-àUR±g‘ýî•*0Up@Ã\0ZºrRWˆ¥`{SÉ$‚s–ïŠ‰ÁÛ‚1ƒÒ§B_ž•¨í¦£Æ}zR¬G+×¥ ù»òZN@ªÖ‰ÙaŠ\0ãŠ‘8ù€éÓ½3è)ù+€q@\0ÁR¼æ€9 Pã§>´à ª€sÉõ¦àuÁà\Z˜®A#šQ¼B±³ŠÄªç€N2AMÙ\rƒZvLÐír¡ÃÜw¦¨*ÀS‘²3ÏãK!Ý´à\ZQÈo^:Õ¨e\\±;³Å@0ÈC›v«PHø\0°÷§a4M7=sÔŸz•a1¸aó¥\"0G\0ëÈõ«H€Å#Â1À# 4ïaXŽ8–gÜü\02G­#«]Àíè1W…³\"Â²X\n±{g¼;Cn$ñëzÏ™^Ág¹—;³íuhUÛV6c4|í!O¨=Eé*D%ÚvÜqš•#7rHç„-SéU-U\\¥<í+ï\0ÈÆ}W‘]†ýØ\'¶*üÖ¬¬ž8ÉÇCO¶Óå½¸ŽÞi À$Oõ¦¢­qjÌ¯\Z°ÉÈëJD®¦X¸HPq÷«¡¾Óc´ºû5¬ëqªâ¸ úU)í\\CöQ‡`#øM$“ZÄÖ¶–‚Ì}²W†hÜîr26ãZ·¢Y¼Ëht¹.§.âÉˆÀÉÇÞ9èMQ°°[Ûå&R¬Ûg@IãšõO[/öx·ˆGY#ËtùÁÆ	1\\U¦ ìÞçM5usœ²ðDºÅÍ¬ú˜EECº8bŽ˜úŸZê4Ïévì±XÀÁÇÆXc§5»kköUÙæI&r2qÅYUÚ dœzÓMµ¨ý\nŸÙ–m\rm$ñV\"…aP¨8Îy9©1ŠZ\0i\\rxôïKKI@5K¤²°yäÈ@@$c\'ªvúº-êÚÌë·Êd\'ï“Ó…3R¸ŠïO½„º‡€äƒÎqÏò®\rZ0/q:~V•8è?\Zé¥IIY˜ÊN÷Gª£¬ˆH*FA§V†â½¦[²ÊŒqëøæ·k	Ç–V5‹º¸QE#\n(¢€\n(¬Í[VM6$*ŽÎnyÇzi6ì„Ú[–®ïa³…¥•€\0tMqZ¥Äš¬á‹ÀµX¾ÿ\0‰Ýã”˜ A’¤t\0u®^[ÀŒDmÈ<\Zì¥MGÔÆr¸²¹†lƒÓŠ§4Ï \nÌHQÀ4éîL¿xäúâ«7Ýës07»ÂÙe`p¹è}j·Û§„Fªß\"B7#$b†‘yÝøU;‡A¢ÃD733œ±Éê+>á‰È;ÉÏ#8ª¾nVDÛ¸È0¤•”åÐ´»Ò©fÇ¯¥FÓ+H6œséS\\!„º?8#=+9›æàgÚ¹¤kôo“‘‚\0ê”L#¯C‘UÂL™0;Š– V,AÍ@3_L’YÉ‘J÷RÌ»pÜ‚ONqY³1ûAV\0½©a¸òcp0qŽ{{zl)ˆš}ñ’[iS×ëŠmè$µ#ITÜF¡ÈUn¸í[÷\r\rºÂÓï‰›vÕ\'9Ç¬øô[–v•ÈÉwðHõµeáÛ»‰Äª‡1êYIŽÕ„æ–æ‰3kÂ©ý•oq~mšBÃÊ1¸àg}kr×}ìIÙZE.÷R2ëŸ¥[µÖš!¾¨ªï93B7n`8àgµ@Ú¤³‡·–Ý4è\ZB|å†{Ž‹År¹7¹ªVcµ6Ó\'‹L“Î¾ó[!¾æÒ;@:W˜êº|–÷·Q¼Á°#Œäë^‹Ÿcq?™Ü]³9.ÓHqÆvÕCGÒ ŠQ\r¤kt©¸t·ŽOçS\ZÖ•Šå¹ãÖëuyyï’W`ªˆ>ñ\'¦+³±ð6´¶·Îw\0\ZE-³Žµ­¢éð[}–öÒ!óAyz²ò w­jÚÿ\0j_^Ï©«l¨”eäÝÀôWG;ž‘\"IGsb/@ðëZ¶l“Ý’eg™‹ùh8n;pMoiº¦‘5Ä\n‘¤p>×Œ¨Ä…Žw\nò¨žæÊý™2çf3•9ãâµŒ·¶ÚžËhU‹Íå»ü?¥UJ“²QÜJ*úž¥k¤Eg5ìö³I\Z]mÚŠrªqŒ\\þµ¯Ei¤‹8®jvîªwtÎ=Á©áÔÒá[ mØìpXíÉÉ>ù®_Q¶ÒÛÎ¼iUæm¬“Ësøc>µÏ*®OÞ-AÚG‰58\0yÎ™SåÀ;Ï?¯?…g¾¤Úíð7‹¥Y”`Ò–\'š!{`3•™Ôýí òqZét_ÈÚ%¼‘ÎÐÜJÅ:‚\nç9#ò®•®Ä»#;-GVfû%»Gm´”\0·×°«Ö¾\ZMìj¬­¨ì6“Ó9®ÆóLÔ¡Ömí4Ù ¶·1†dE88<€;zÖ”:MÛj¨gŠ1eÊ€äá¿­oÙjfåw¡ÇÛÛC1ºÕ´µÙue\"•ÎwFæx×¥ZHb’Æ–Ë¹BŽÝkòþÄ··úl~P¼hçû\\¡‡?­-ÿ\0Šcð¥â[][ˆíf)nŽ™út¢4Û`ÙÍø‡Åt—¢5˜\\;„2|©1Ÿsšç^$ÓäŽ{‰…ÄÎùkGsØŠéu·¼Ô[PÑì³f!+ÅÂìLw<òy®JÖèC4“ÝB—LÀ„zœzÑ8$ô*%Ë%›[Õ`´‚0·%m£’I¨5»94JK7’\'e\0þå² G5ÛÙÌïm|pWµNñ$ö_Os¶}à$L	i3Ôç§Ö…r®B{äÓÓ<g¥AaÆqØÕÆ	´ <\' §bK6òmuÝ½=+¨šòÒÕVr’Æ„2È¤‚zãÕÎqZ6°›˜Ü!&UQÜþX£E5â2m„8a…ßÎ9¡çWQJÉÉsØý=ªœ0œívÆ{VÅˆmòØº¶ÒùùA=*®ì®äŠ&¦n	^:\Zè46ŸP½/0WP¹<p;~uŸo£Kv$­X°R¡ãpO¾\ZétÍº}„qÄ¤€3–rk6K(jZzÇ3Lb	Ê¨äqÜÕ»Xmãã˜JÏËéZº‹=ÝÁ‚6TaØŽ7c§åY×J ¤>@;C9ã sŠ.T\nÊø©–\\U\"v’3šC.8Í(«›ó#MgÏCVc”õŽ’àòjÌSe¸­-¡›°>O5e®BŒf²à\"u¨Úè“Ö¢)ÜRIljý§&¬Ç0ÍbC.NsSµÆ3Uk“cLÌø…>}ëíX5rÖpGÌp)4;+\Zo-*I‘œÖcÜäžxèî9§Ë¡<¨Ñw	Ï>•IgÃã<T>{ÕV›kÕE5š]Ñõ¨c¹!±»óª«>Tâª´ø’“Ž‡ÏÂ…`iÎCÌ€z\nÈ·•ä`\"å½})\\¼z„\"C¾FÁeô¨±+ëÌ+œ\0v¨úUu\r›TýÞ2=jö¯ç]N|˜‹Æ\0^æ¹¹ƒ«Ul/SïZ%ti#nuŠðb8Ø3c°®~à˜äe\'qSÇ¨H˜Vn*µßÌÅÎy¡i¸Û7<-ªy7Me#|’òžÍÿ\0×®—R²K«gWÌÇÊMykLÑ¸e%YNAµÐ[krê0F.$raì¤[Ö²wNè–¯©ö5ÔÅ¤ÛÏ#­%¥ÅüÊ‰¼Ï˜@$`{VµÆ·såù;Ë|b@0Oÿ\0^³ÚíÝÚ0˜“_8$Þ•û ÜŽË]¸Óg¹v‚9ˆÀã˜®‚ÓV_]ˆá2%¤gW\r!Ç~Û}«™{.• œõ¾³&‡i\r’ÂÍ,‡Ì1Êƒ×4âÓz$oÜMme£!sµx8éXpjM¨Š$E·y6ù[Fà1ÔŸ­Zº¹·—JK‡ÄeNK}+’áI%™ƒÌìJ’qíŠ|ÖDØí<C}ožÑ\r…ßåØä×œÝé0 3Ã92dò8ZÔ³¸:‚IX€H<~5™{{%ˆ0F‰žFvr~µ*nÖ¬bÏ-Ä8F7¦\rU2ç)´¿÷™sV/’S\ZÍ$eDœ«÷¾•[L¶ûN¡GîùOz¥k\r2ÂÎ“Í“Ú’Šî»I¯ãSÜÞI¨Ü¼èRy1ñ­G[±Kkm&Cƒ ÝÇSX^´òÖ±Í\ZJãë‘CÑh=ç£h!-î-­lZ|†,Kãæ\\g‘Ûð­°;=ÜvÞPf=PgžCÕçÞ¾¤“Í{ö8Ñ8Ürö®‚ÓÄ×zV§-¸€ÞÛ–Â˜›HžzÖ^×uar\r¿³ŽÕÄ“L^u}¤(À^xç½2{´Ž96Î†&\\7Ìr=fx‡ÄI}.-¡p[<ûÕYžÖð¬6O¶6@Ùc\'Ò£—™\\iX×Òõ9¾ÝpBXÉû±ß?Oz±â/X¼žYVØ&Õù]	ãßëÅk]ëÏšty.áòöÍt7Þ\'µûlš{^ÁÈ‡ý¡ÆI$WVªwÐÊwf+<6V+sâ5{’êÁÃ)ìãšÇƒM¶Öµt»CF¥·ÄÜP::ð¬³÷ˆo#.qi»Vw8g#œãÒº‹Ÿèþ1Z=¬·2\0X»\07·Öµ«V÷Š`£mKk¥Kojb·fG]ÌÀd²f°.ôøg¼R²ù)¿=0ß¯jê´û­y.£¿½µ·HnÕ‹wÎ ôqïRêvvzÜì|•^	È>¿Jâ‹„ocFˆôJ=GT[WfO!Ebsß·µ­0jV»‚ý¥`éž\Zµ‡Ê–ÞlÉùÃ:Ö£ø’Ú$‘€i\n6Ò£·¹5´g(ÉIÙ3ÏBmYæi<˜øØ>wüéÒj7ÂÆI®%0AËÿ\0¼ùïR¦¼³D—	o—m¹¹è£úqYBêK÷+4^ppp¿SŒŸÆ³©%\'îîW©Èê°¥ÕÐvVh‰ûÁryüêÿ\0†tûh¯þÕ{;%¾ÀËœ‘Ðcó®ûû8í ´™cánþ¦¹ø|+\ræ¦\'–w¶´\\4`usëŠé4ãtdäï©kUXÀð;³…Î\\Âö8®[ZÖlðÚ#¤Ñ°yJó·Ðg¡ÏÛÞÅm¨BÖ–¯*Æ›eºzœŠó]oÃÞëçœ”tÔC]*\rC™=Q	¦ìÏ*±iæ¿Sn	f8{Öæ«¦jQi«¨]Ú¼v&Ã.ÜœŠg…#ŽÛU‚[›w•dDËý+Ð|M4º¶‰%­ÝÃZYÚFÌqÊíÕS§Zñ+VP’HÙ;³ÆŸwa•ìi±EO<e#GÞ0äÅHdAå»iÜ+©=w^Ö.¢W$10zùa‹ß=¾µW^FÕµ–¼fù9ŽìãŽÕ KoaÝ\\³4„mŒFrA#­iC®[ÅwöÛdxg„än,€rx<×,£jŽKqô±ÇùopÛ”£¦A*H\'Š0daûÀw+g½O¬Üi\\›¯)É—qrOR;VCFà€:ö·qç¼KEéõ	nP‡¯z®®áÆV¸{v`H‘OÝ¥6ó$BSŒg¦y¨\\‘÷Q#!ŒeÜ\0n9¡¡T‚êtÁ©L£%XŒæ–ÓO¸Ô˜Å;ä\'Ü’Wli7¢3ÊƒÈëJ¸ SÞ6FÚÃ4ª¹ÖÉ¦®=‡¨%\0TÊ¬€ð3Žæ°í’sšceðZOQôùX•Ftçø—<Öþ¥ÝÌPZN®J©p_å®EREìFy«P<Šs’£¹¬êS»º\ZEÉ!:lñËÄˆOÊyÿ\0õƒKÑÎ³ZãËYhòxFžÇ¥iYØO­G$cd~`ÉÚJCëQË¤D°1)FL©ïõ8÷¨U£~Ynh ÖÆi‚\0w©É\'Œ_ÀÖ¬6ki$‘Ï½”ŠÝùwëYV­3\\¬…DÍÙ{ÖÏÙ­o, X$»Šïs€>¢´“ÐêÊ÷A.™L‹¼ÝIúÕÛ-2îÙ£™†øð›öç·Zét¿ê²i *˜%¤ù[#Œ}j\rKC¹Ñ\\ICyeòU½Ç¥pOùS)=´+½6Úæ[¸aÍsYÏÜpw{u¬-vH%Õg‰>x Ê+&>lun):ÇrÎ¢.0±¸ÈçÞ°q!-†Áý+¦6åÌÉ•’±³ohZ%uüÃ‘ž•÷Z1Ž99î§¦)-&¸ò‚B¿¦jY#ŽbòO‡Eåh³R÷¶2\"ÓåIRX®H>aÈcÚ©É	ŠíW€Þ•2yj[äì3DR–»C·xPzzbº!;¡­ÈL3q»8jÓl³„y61Àuªªr@ëÎ*P2àƒƒZÉh×¶&é¢rÍ3sSÇá½BK–·•‘\0cž›OzÒÒÖÓWÁrZ+• 	W¸®“L&Ö·¼|ÍÌ‰7\\Œñ^]|\\éh– Õ7’Ê_6XöŒÆÄ3vâ§1<ZÜ&Ì.FÑ‚}	«úí—ön¦Ñ¤¦Bãs^z\Z¢òMxSyÜè0¹<ãÒ½\nSöRfK§–50ÄÑ˜ùfRy>§ß¶j\rí¹Îò8ù¹§ÈËRŒÙ#æÇLæ¯i¶×w.	*°\0ã$sWeóXM²ªÜÏ³Û’\n	©ö«ê×PÚ4Hë0b»¸ã¥¶iÓ¢rœÏ¡¦¤9zÒ\n3Šd]¦4‰ù„ä6IÈ©m#Ž9‘Ý7Æ•«¶°%A>c/îúc=óšjÅ‚7\0ryÅn ˜\\–ây$l1 Î6¨ëUÄ$t£öxÕ7#€OÌ ·Oj–<Í¼üÄõ=+HÃ•	»•ml¦rÊ†\\ò;R<§)àÿ\0JÒ–â`à)Æ\0¾•Æ\Z„žìKbÜº;\"µ¸wŽCóÂ<¹>ë¼Ð^$è˜}òüîúæµA+ò;¿”HÝ´õÙÒVs¿€	õ¥´õ¬Ë=ÕÀ/w·k¶ØÖ2–{ñéPM¥*[™Ê7ÈÇƒ\"çïý*!Ÿ$F ƒ»,sÁô««„d+“ë[îFÌËšÙâ}¬Càö©c¶ÿ\07Ê;qZKeæÍËÇ&§k@¤cc®:TX«™©l¥\nìÉ\'ƒéR­®ÝúÖœVÀqôÅMö~3Þ˜ÍjwtàÔËm’\0éZ‰n¤Ã·ZO²äô¦MŒñàªÊ>^àu¦­±¦N}+IàÀ÷©mÐÇ*JP0î·z\0dÚ­³Æ<²AÀ\\ýi×PÅ%¼;P#§ÊÀÔÕ‰HvnÀ3€9À42¬Ò!@T(l‚{š,3*M<©Ú]Ie“žµ\\Ú<´{ õSÁ­··äÓ~Ë“@>Km$®N~÷zXíÈí[1Øï;zR›]§”î­±V–Û=º\n²ñ’*üvÎ–Ë79 }Zc\'ÊŒR¬Y=*ëÄ€ä;R,Dž„â€+¬#)LíW¢DÈÈ$ž=jF„«„r¹ÇQH\nIm€8¥ã\'ŠÑH†9ëK$XÍh€Ñn@Üêï•ƒÈâ¯[Ãl¸bÌù;JÐ\ZMÙFÞ\0#ËcæãÞ§îbTqž*GŒ+\0§\'&¥…;ŽhO@8Êž•iT>ôÜmÁ§“ÀÆ}ê¸\rX“<\nŽQŒñS/Ë×§­T¹¹\n¡^à@÷n1õ§,áOcX÷7ÊŒÀµ:+€è[š¦+›\"%e‘ÇFOµ5/o!P|Å?˜ª°_(µ–)7nlcéþqTÖèÆÙN½>µ/aÜÒHÉ$ŒãÖ­G +µºŽJ‚+ˆe°\0ŒN_ŒZgž#¿”ev\"Ó¼ÖN§z¶ñ9ÝÛ±§Ý_…\\ƒÁí^âjkxÜÄNþ8ÍT¤”nÁ#˜×õ9ä¾\"97îuSý*•¤ww÷vöŒò0 ìG9ÛßŒûÔW¢f—íS\0­6¥iZi—Ëe\"nh%àJ3ò7¡#¡¯\ZµHß™›E[DdÎb\'Ý¤‚1Ú´[MTœOŒÿ\0«û¤v5Jkbï#s¹X“ß¸Åoê;|5.™qop³Ýµš³£dMÀÇŒVU*l£»*ÅømŽ fµfX_j˜ÙðAÀõ£³¶“PK™QFv\"æ6@ãù¢ëO¸–½i´ÄIÇ@~:sÚº¿hFÌ-äWSËbAq€c+ÀùÔû0Ç¾+*µÕ\ZW¾£I³Œ™¯-!X®âÙuWwõ÷®ûB±»¹Ñìoìnv-ºaÔ®íŽy-î§úÕˆw¶—×ãl<qC±Œ\0ã©ã×5•¡ø®î	BR6-\\+À>Þõ”½¦\"Œd•ŸR´‹7¯õ½.þÚ.LSÇ)A÷YðAçÐŒÖuÕÆu,ÖÉhÚ¯—^dlTŸQÇÔŠ¥ãM;OÒæ‚+Vó/˜´—\nÙV,s´ÀÅW“SžãÃv¶ó<jX.cýwãœ×V(SR¦´o©2Õœ½Ë#D¡T©èsÎM9Ðp}E, <ySAfEÁéÇT!LaN—j\0çôð¹àœS‚•ïÖ¨–Jz€A«À ÓÂàdžµI6mb:ãõ¡£\np8ÍJŸƒ÷j&öž¾ÔÒ à‘š™cn	SØôñ cëO1BƒNÚ®P‚2¸©*‘•\rê\rLë„ÚŠç;O¯­D0ÆsïE€w”Xd¡}{Ô±\0AÜ	\'¥Z¶·Šs´ÌÎïéNhÂüªzƒéB¶ÅZÈš\'Œ#Ö¯éúkêm.ÙR5@[zû\nÏU sŠ³hul6p@=(qmi¹=G‰$2#8mÀ\0¤úU«’²ÈÅFž9éD³yÊ‹€¡G¦¤Y\\ŒçëM.¬W,Æ¬mÝü£o~\rM´¤æ\0]á{ç ¦³Æc\nkñ¸¥Z²¹{iU•ŽÐÁ†qQ$í ×™VHË·–’{¹«zi†	²C+ã\0ŽÇ§>Õ,ÒÇ-ûÉÝ¹È2{ÔWoæÏZqMÆÌ4‹)K	óXÉUÍ% [Ý—2ùQ:Xãü*2Å‡AÜÔgå`á¹Õ£ZX”õ¹·§½ÌvŽéŸ;À\0ç8½GÆº½,\\­ï—wÔb(ÿ\0vÀ\r˜ÿ\0‡~Æ¼Å.ÚFn|=öûWn¾:ó¡¸VˆŒ(+‡9\'ÓŽ\rrT ¯Ìjªô;5k9üµ‚xÎT1¹\0ô«ÑJ$\\åO8È<g½x<Ú½Ì7Eâ!@o”¢ãüõ5«áß_5ÕœBÂ¤–BÍùè?SR©6Øý¡ìõ\rÍÔ6‘4³È¨€g$×«øäØÆ‘G™Ïßû•¬x¼jQ¢ËiäŠq¤ÛÔEÐîÄös–ky@©¸©88Ï_Êªë¾%µ·Kqm:ËºOœÆÙÀõåë|‹È£Øç ¶z¯¥3ÎvP»þ\\çÖºcF)ÜÍÍ½¥µµžòþTd˜­œqÓŸ|b© XåÁ\'\0¶:Ö3Iå³tÔ¯p8<ô­’W$õÿ\0êCP±%¥\"vâ¶+Ëü7¬%Œ2‡Ë-¸ýy¥z•|/ì’o—qêÍq×¤âù–Æðô.ÑEÎhQUZñô@Ì£#ŸâëÊšMì&ìIu8·¶’R	Ø¤àw¯,½Ö^âìL£‚wç\'=ó]Ç‰.þÏ¦É4NÅÛ¸=z×ŸÛÉo5Ä¢âLÈ¥˜dHÞžÙ®Ê²¹ŒÝÙ7öýÄRK*7—$ŠTáqÁ¬q $’p*Î¯na™còã•Š¤ò€Ž†ª\\±¶Š4‘;rN=}kt‘\'žXQTG’H²{ÕG¸(ÁnÜUa9+8íš…ÝVÀ¦4„žèœðÒªY±ÔúSåsÜT2!Œƒ»Ò•ÑIùòk8·Ìpzf®»¼ÇÊXË³._jÍ¸Ymçe–7ŒŽÌ0ky”‘\rÌoŽ¹Ü}ª¤¨J+t9íW–®™9\n1ì@J–\0u<æ°“-hIƒ€äzûÐìã†VU=A5W~¯\'°õ§—`€3HóÓÚ²w*HPg\0J‰åˆ[†Vq9cÁ)_cëM,„…Éµ^A\"\0WðÏjHi\Zf¤Ñ&Û†v 6xÏJß³¸¼Õ§•íØ,héfr¡Aè=µrðB³ùÀ«lÜ£N*Ý¥óÉc=šKåÇ1Ý&Nàð1Þ±’¾ÅÞÆõ…Ä×WaÀ\' FÙÀ\0rqõâ¯k×66EÌÆfTÛ#Ï~s„Û³°rX]LúÄSiÑbî%˜®FÐ1ÜzóÖ°’w\ZfSj×ÚeµÚ¹†]í´dÝùƒ\"´ÍòOojR–æîDòç `\"vQëŠåï­Ê5ÄQåWË>Å\\Y.,gK…TÞ 0$véøÕJ1¿™jçTÚ¥Î˜ñÛÇ*©òÍ Ø\'§Ÿ|&ÔÍÅÅÁŽO-6©RŸoZ’ÆdÕÌ³ÜIVÑ¡@O\\Œò}ÍEe+6q¨y·ƒ*È²eù8Î=+%&ž›ƒW64Û³¥ZÌ™ãEd–A£¶ß_o­\núˆ²Q…e”Œ?~3íÍ;Â:•Þ¹<V0Ê‰9gPÈ±\'#\\ñøÖÀÐ®,õNÙŒVÒ8’Ü«®xÐàÖœ“nö&éÚƒ\\\\éçOOÙÉ$ñŸ˜Úˆ<¶úp×R¥š*K³©ÆFAúrjäéea#Œ³ÝFßs‹o`OqŸÒ´åÕbµ¶†òî{u’fhwÄÙ»‘Ç§~U¥:mnz\ZøwOšÞY4Èžh#)Æ3Ó\'Üö­­\ZÞòËOŠ9¼™_½2¯§á\\µ‡ˆl®ôÖ’ß]Ž)¡ˆ(‹nÖ$g9óíV¡ñ½ªÙÐ´³<ÝÞüŠ{œ/SÞº95ØÏS¸ žõÄ±E¼ÎK1\'½bG¤jÓù2ê:äªÑ‚Y-D‡êNI¤ºÐ4ý^ßïI:ºí731þÏ8ªI_VIÈkšüÚƒÚYºKÌ®›fÍùFrz•ë\\Í¶²¯©¹½Ó†¥tp\"XÆåAŽ€w>õêx3Bµ˜´¸ˆýî[\'=óU5wM\nêÞM7N‹zäÈ± ùO>ÀV—W÷JèyÕþ½w¹n,oëˆÖ0J§—èS×¥f^ÜOqk¼v&Ýí‘¼Üõ99Éôêt–1Éâ-j]V;¦†h¤ófi‡ÉŒ\0sŠÔo\r>³âa—yÉk×ÎÕ`O\0cÔ\nÁÔ×RÒÐàtýÿ\0QF6ÖÞnr8ëŸjÓ\Z¹y§Å·K’H`vÑy\'¾}¸ë^Ÿo Zè¬‰k*-Öž£ ð\0¿§Ú-…ˆ„° I>õ*®­	ì|êÀ¬¬„AäT±®Jè|r¶Qøše³DM 	}ÝÞß‡ZçCŒ+XË™\\2°\rœfº\rÝ¦ªYÞÎ\0ˆÈCž¿)<W6¼cž{UègáA”^Â™g EÕ<>ÒÃfÌÅ¼ÁÆþp>ƒü*®‘e=òG9xÃ0$‘•aÛúóW|$·×ÖOo¢(PÎ^\ZÚÔ¬ï&ENù``bpÁGLß•KÔ‹Øßy!¶€ÈJ\"ã¯­s±Ü<\ZuÁ2…†-“ƒïÖ³í…Î¦±)m«•pdê;ãéUµTMll-`[ù…L¸Îà=þµ+]·Zˆ]>+X®–b½Ï­f%Ô€ª™	PxéïVôÍ)¯mda¸¬€dsíWS@y/\"e€˜YÊîÏý…F‹@±Ó®oã•âÃî}+:Wx¥dq†S‚=+Ð4»ìë1	ecœ’+ñLI¬LyùÆæã€jàÕµ3r»3ÖBÄb¯ÀÛ\'­fÁž§¥Lóà`\Z·©Jå×¹$à\ZE—&³üÊšÉö¢Ö­›W­G%Ç½Uy°1š¬ÓžiÙxM–ëZQJ]y¬œ— ŽÄ^K@&ËF~zÔñÜd¥fÊ’ÄvÈ¥O¡©bf;@äž0(o@L¸ÓfªÍ.XœÒÚØ#\rU¸“,Hö©R°2ìSæ¢š\\=SŠ|´³¾y\\´ô7tK¥*“ómÈ´áw»žINY£ã¾ÕÍ%Á«0]í˜HpJòX4¹±§¢Ö5˜wþ•Íß\\H“I¼¸üÊ8ü)ZêXœH­µÈÅgÍæLY‰$“’Ozµ¡Ü‚Yÿ\0xHéØU¸dY`owœÍdLJ¶)#fgÆzÓjèIêX¸ ‚EGa¨¾|—	ƒ´òÈ4Ö“ÿ\0¯TîpéYµÐÖÚ<ÚÌw:¹ˆhÉ\' ö´\'¸±¸™šÝpXñµ²\0®\Z	€FPy\'œô«×¥e>[²>Ó…UÈ5œ“$ï4øí’9ÐL»Êï$ôq©ÎÍ:Ãqˆ˜mcž‚ªiÚÅ„,“[n[Ë1â­cko*KeY@Ü67Ê}Øÿ\0JÏ›•ì\"Œ×2Í\nÆ“¾Èº3ÿ\0JÌ»»`©Ú}85vôK8X÷¨+Á€>•“pÅØ#8!GR=+H»ˆ–ÓQh$QlvIžH=j[É‘\"RùwpK¤V\\&#3o,¤·½XK™ÚÍ­\"*ÆGÅ”\0÷ôõ§ep+¾û¤fËb	Î=\0ªÐFòHÛ¤Úª¥€“VžcBÝsg.@¬é.äTŒ“œã‘O¦€\\º1›tÙ$ÞÄýïJ£,ÏQ‘Ó¦«Ís4ŠGjUŽ²ÛrTŽžÔ¬ú’kÚ;Ý(Y] )ÛšÑ¶°i\0ˆ\\´PnÉ,{ô&°må”sÚ{Öþ›¦Þjl±Z¼d·.Ò6øÖm»Ù\Z$­v?ûÊ•ã¶¸o<g=ëR+·ÓÈUŠ+·1Ø2í)‘Ø{Qý™y¡Y™¥žløêyìJÍ·×ŸYÔb´°¶ÝtÄà1pê@5-ÔOBíM¢åÌvr\\F.lŸË|.öL·Óë\\Ö¼–,î,!Úí-´­z£c!¶WÔJÆªy²ªG¿­q×&Òá`ä—oqè+E)nÑ›]Œ«}6ÌZ…k·Ý€HW8†k´ð×ƒl®eKÛŸ1‘°±$Ä¾áz£ ø6k›ô½H%(„4{€ØÇß=«ÑZ+»7ƒý·–óG€2GqZB<ÈÎRÔ²d³ŽK{}ÒmÚ£qXž&Ñ§˜·m€“£¯sUõ?Ã¦ÙÅqu%¼.’â5O™ˆêk)üGâ=z6þÈ·Û`wöË˜‚–Ï ¡SåÙÈu][OÐ´0VõEÙß–aÜV‘«Ïq¤L—¹k€qƒæ”=F;\n}ï„ãŠí†$šU¼‘Û;r;{V®áò I\"†˜ŽzŸn*föHJÅÕÒ-¤’9ð‹M^UÃn<ÿ\0	©å¸‚Ê5–Æß{ÏWçŒŠêÛN¶›JÛ\"Ä7/€ßJÀ¹Òî,t9M»Eóe·\ZcÐûVô¡kÍŽºñmŸØ#2Ï½)µ¶Ý¤ýzt§h:eÅÂ¼ÚœˆÖç„EIõõ¯=··ò&S|ò3ïf™sƒž­zMîÝjÙfCRîòU~éãÒ·œˆºš¤61LbEŒc¾+ˆ»Ón¼Cva‰#¾ÝzW¥ÞåZ5(F3ëYŒØÊOšˆ8À#“Žÿ\0†ki£î>[:iñ5²Ë´‹pÅY¸9ÇÝ~b»¸å’îMI¼½íîIžvÜ’0v·ô¯\'ˆI§ÌÊqå+	2­‘ì*UÔç2Mzò·ÚþïŒmâÊƒž©”•´4¾ Çbš¬‰o—p&l¢œ½¿ýUÈ2e\0þ,ô®Üê^jbòå¼×$íšÜÓ´ëMM.o$IcòÔ2Ïzî¥N˜¦È­<1}Ÿm©A,e&lÏÌ¸ª×1áã!¢˜0çM[þÚ¼·¹†Hæ?»<\0p2R*†»3ß_5ó°s/,Á6óŽ˜¡s9k°ºÜrÙAGŽUJŽžÕŸŒÈÍH—F8|²7ƒÙÞ£\\9Æ+U	b›‚ÇçR³™\"\nŽôÄàb¹£û§œt¬åI^è’Ky\027túV†™©d^™Ä|•ÃcÐÖdsKê=sR½Ñkw„í`Ç«‘ô5J\niÆ[1ÂN.è·}5•ì²ÈÈ¤mÙ^Æ³¤‚ÝårH¦¬yiÁ9äUÒ£È¬˜IÝÜˆFãµ/ÙóŽ9«)ä×Qáÿ\0Û^Ãö«©€·CûÅR<À=BŸ½ZÊJ\nì¹Ì[Z–¬ÞÂµ_K’;ˆç[IZÇ#;úŸ\\ã§zï.,|+¡$ÒÝ™¹UåÛƒßÐâµõ.µwõœ6î Ã\n»”gƒêkšXˆÊ-¤kÜçto°XøŠ­­‰µPd.OU#§áSkþ¶’ìÝÙ;\"0,øPF;g¶jQ ‹^ÓîmÑãvIÞ{}:ñ]uô¦åk$£™KÈR¯ÇJòkUösŒËöŠí3É¢…-4Ù¯c‰LÂŒóŸ\\\n†MOI¹·HÕ.­‰š<u)üKøumë¶Å[Æ‘DËžDCÆìðrZtßd¿Žá×pWù£¸ü«ØÃ>xó3\'-lzWƒ<QhÑéÚ•îFý°©S¹1ÓZÛ7öÐÜ\\‚f¸Ô‚fÃàÜ÷æSÙÿ\0eëª!vû;‘-¼½ŒgŸ…zMõý¹²M2k›{‡Š1+m O9>µæâð¼µ9¢·ÍÄä<EáIãžçP’9\\ùÛmÈ\'lÓl<³ZµëÜFˆ‘‡	 Às×n}qÍ^½Ô#–³I·äQ,Ä˜ÁïâSYðÞ¥¼s[L¿,Ž0Ê6ã†éô®šn¯\"IìW4dïcž6g¨ùj£zòž1V„‚æéÁBqž„CRêVñ4û…ÇšØåãð5_OX¦s@œrÜèk§•J<ÌÆÚØ¡ybb-´¨SÎFj-:%kÀ¬ÅI=«§·“M†ëÉÔay£a´²œ4g¿ÔTvhÖ—QÝÉrÁ£¸\nÉŒˆñ‘ïZF²Œu@·9˜ 3d\0ƒÀ\'3Z|ˆèÃ$WpÎáÖ½\"ûÁ^\ZûÝAª•2s#+äúW;ián­â×i<ÝŽ«Ü?\\ÔÒÆÒ©-’î7Œ*äF¯áÛî·pk~Ãý+N{MÞ\\Ò)pÄgúSõë{m+OKhmpdoõ¥zŸ¯­RÑï™â}®]¯Ñ…sU^Ö.¤Q,çî„¿j1ÊYÝNÜç9ÇMÁ6×Ë‘@È®«[·Z\"Ðvá”pMYÐô›]gPÞÉ‰UH0°ÆqÒµŽ.1§ÎÖ‚wØã’)eŒíBÊ=jÝœJy-µÀÈ÷ö®Åí#µÔn\"X#Lá×`àŠÌñ\r¬vúËìE]Uö¨àÖµÃâãZ|–Ü–hiZ®Š`ê\ZzÊU6‡Ç8¬[¤€]Èm·K|8ô¦(¶N*Ôj®±Åå\rá‰ÞÌÀö®º8hÓ“’{’çubHí£Ê|Çiëž£Ö‘ àã±â¦†EYÄ’Æd\'nìúªi\'D…Êž9Åu¥mHd–SAœ±:eÏÝ?Ò•²ýÑU#^A\0‘ØÕèÉ<V›,k–\r±HGJ|°D²ðI^ø±`Œõ2ÆC`®O|Š‹Y‚e3W€j3oƒŒs[KJ™ÆNJ\r $•<Å\nhz™‘[Éž•e @3Îr:UÄƒhìrjÃAsÜ÷ëš±	e2Ú‰D`Ãqž*RŠÑãÊPÙÈ#ÓÒˆ yç“VR=£Í\nÑÛõÀàu©ãˆù zSñŠ™T8¤+y9ê)þ@Ò¬çŠ¡lqš`Q6êÙÈÇ¥u|G€x¦”ÀàPl‘LÓ#€ç¡«í=)Ñ‘!A`{ÓXGÐ\ZpŠ§+“œuíIŒP1Ð@pþ,dSÍ˜1–þ!Ö–Š\'±§±g!Aâ£[ŒŸO´‚òëa‹	ŒõéZzŒöÊ‘ÆŠŠr¤Òì>Ím#Î˜br\0ê\0¦ê1Ë±\0†kÉÊ¦›#F­L;ø£×±ëŽ‚£·˜A2¶ÌãµYºPû§Â¨/úT.‘Ä4M `608ÁþµÑ}52#xe–DtB¥Á*qÃb–áœ¸G²AÇ\r\\·ºŠÝÖA»¦W-€=EGs2ÜI¸\0FNOsšw(˜2ŒžYò¸Á¨‘Ç^†§F;@<ÅS3ÁÈãéQ*”`ÀÕ¡°¾˜Üv¨§eY[n6çŠIôƒrþ4Ghªêß(8©r\ZM’I€¡û@õâªÞÌuVMÅÖÔÜ²cñ¥`:A(xØƒò®2kœÕ5ŽvñšÊÔµ;»XFéYc# gµ`ÞkQÉk¼¹2€ïQÍk¶èIªë/®}qÀëW¡–{V¤ùDÑ‰·•ÀÜÝÏ$ÙYFåmÃ>£¡®ÓV×?¶<9¥uiom©,»±È6Ê tÇlg¥pÖÅN#et÷-RM\\M<ë3Èv¨ª´W®—¤„ä\ZÅð¯Œ-ìuk››ËyC1”ä+}Ücš¡{¬¾¥­Æ^åmá˜å¥Û•_Ë¨Íiõ–¤î´H7dz=ŒsÝZ­×yV*Ë¸`g5ƒsâ«v¾†ÄƒçHÁ\0îXôÃÚø£XÓ¬g¶‚bŸi,Êàg\n8 f°žîexðé#Í·rÊAÈ÷°Ž&·4®•ºÙ£ÓW¶º>ZÈñ(V$nÆr?¥qZõüa¼èŠK ¨ÝÔyÅGqi-¹–â9%{v*ï\"g’FÖ÷Îy¤µ·¶×u9£»lÕ1»`FºGlã­e,MâÜ¶\Z‚Z™,‚Ñ3#g È\nôaž‡èk¡ðäsÏttènå[|yl‚HÆáéÚ­ÝAkž˜±ÆZ)…œ²ñ¸dûƒøâ²âÔ%³KpÆ¬²»ƒ,ÁB—Ò¹¹½ªµ‹KSzÃA¶’ür&U2!•~FÎOj‡SÐÎ’dH®­ZÖåDñyÃçVSÊé’Gá[/â¤GKó\"¾x;¤Q³y\0r¶îk*êâÞK+u–9æ5ÌK+†ùXòŒrws\\Ñ”ùù×Kík\"´ÚrZhKçÂ#¾ò·nB1ƒ€£ƒ×?SZšmî¡ac\nÍ†4AæÀP¹`ÿ\0´;z\ZÂKXšö\"ìæÒçpFcƒxý<zWe{¢Ï¥¥¶ë×Ôo§:]«`6â6Ó¿§4U—,µ¾ •µ(Þ›k+‹­%ìl²1Víëô u5ÎM¡Ü‡35¨€O˜Š‡~™ê9ýk¯µ†ê=E¢º±cšfšfÚTÆ¤‚±Àâ¹ÿ\0\0úŠ\\«²Û$¡DEÈ¿CÐÖØiÊ-C 5¥ÙË\\4÷2¨¸qÛ¡Qœb•dŠ+8VÊáŒªßtg¦+O\\K	î|ëVhb„Œ®sÇéšÅ\nC”`r8Áí^´\"¤Œ˜é#UPTåO¨¨£OÝàg9çÚ¦–#70 ŒŒ\Z‘-Ô@Ì\\ã µªVBô 1’<ÔÓZ›yŠ¬Ã*rÅ)]¸=iBÁ\0â¯”C@#µMP~cùS^,>#Žiáxü*’QJ¿MÁ\0{æ˜	†¦O›ƒ‘Š¤¬¦IÇáJÊrjEUò·#\02\0äw¦…rª#ùºt©Ê/’8”ãä*$\\¯ ô=êëÚy¶t[6Ò¿OåI 3ã,9Çj³jHßÐúv¡!_½ÎAéS()ŒÓ­;X,Á	”6Ò ¨\'ÓÞšU³—{iÑ’FF3“ïRHÁØA=jiêÐE\'Ë_Æ§‹;&¢ÛÒ¦UÂ‚ˆ,Dêæ©·r6Žyª«Àç5*Œq×ŠI ¹4dõ\0qJÃå÷¦«ŠqläñŠ ! ïÈíLV\nÃ)ŸcÒ¬{Tr(ažô)\\ªnù žô‘Œ\0ƒœš‘¡9ÉÎ)	Y@ê{TIÌŠâ5’RTpyüjˆ&Öpñ’NA¤¤\0r3ïUÚ×í”\r·¯^Øæ§Dµ\rHcIï.p¥ä‘É8ÎI­+-òù7)à77ç}+7OšK{Ø¥T,Pð:~UÒ&´ÐM#¹f7˜ õJäÄU«)”’{˜ú–žúeêZJàÉ±^M¼ìÏ8ªÁ_”ð85>¡©=Û¶ ÎqÉÏ©¤²¶‹‚èÃÂýƒg8üFEoJ¤£M:›…•È&s•b	ÁÈ5‰<ô­-H­ÅÂ¤‹]I^àœŠÇº…í®\Z7<ŒŽõ¼*FC±m.+‡¯bðUÊ]hÛÀùÔí-Œ¡¯7ÿ\0„;T·¹·–ÙRò&lf3Ð…ÝÎ{WªønÌYi1!\\JÃ2c¦îøö¬«TŒ ÒeAjlÑEÄn…â¸„5©Xî™°Ï»T5	ml3¨\\ÈUcM§\'Œjºm©]-ŽWOÑo%–Îáf‚£.—Œ}ù5SYðƒØJ·–“Ë!,Iè\n·\\þu©áï[Þ´î¹U‰UBœ’xÞ´ðÅ\rä—’-”¶Aá8<c¹úW[œùŒUš<®îyî\'JÌÒT´„þ?•>þÌ(ˆ©È8”Èp¤J’úYïuYmeYö†ŒF˜#‘–#éúšìît	§ÒÄ^a[8À*ïÍŒ£¿5|ÖzŽÚ~mîoç1[ÂÏ°lU^Ýè³Ñî/\"¹;’3\nå„‡on¾¡ý™$*\'”`giCw‘ÜûVn§t5-J´L,fŒýá×-Š«¢u2ŸOs\'ÊÛãS€Ãç=ªÏöj–Žæò‹>ñ§¸µÕx_Ežì‡˜©³‰ÃF„gÆxéŽ?\Z°m\"›XÚÖÅ%¶#ŒÙÉ\'<àú{Ö2»ØÑyœF“mökÏ´Lb)r¤ô8ôª—ö“jîÏ/šîNÒp28ö®§Ä¶1]Ë%‘\\.¹ÉŒÀcŽŸ•oi^¶ŽÕ.5e‹hT@ àŒä}Ma\'&õ-$y•ÎŸœ%’¹´Üƒ`˜¯ò’Tý{W7u¾a!P\"ãåùÍz÷´ŸPY³lª’;“Ð~\"¼ÊïO–é-<§ÏÌŒ1°õÁ«Jèž¦Æ*s^´Ö9\\zUÃ2—8ëUdŒ«W‚x5”•‹Bm¥r®Ÿ#eºëL•OxÀ¨°unÀÔ”½2Ôn„RÏ°ã«VŽ— \rBÿ\0ÊYíâ†6Ù$“J÷Î€²\\3†*sœõi U·YwÞqƒÔ\ZÎÖ`ÍMFk$¸&Bß¼p1Ü\nÃ¼ºs,Ê‡ \'\'ñ­¸bŽÄ²…ˆS/$uÎ{Vd±Æ0Ùc’À\n½\"÷‡ï&°¸ûPÄûV¼Úä7rÈ%²ÝŒ»#SÊ€1ŒÕ\r:K»8b‚=£yvsÏ\\ýk`øvxàq2Ê“®í¸@¹ä“Ú±œcÍvh¤í`Ò.×Ë{-J6K9Wb8pHúÖÖ‘¦\\[j]hÖ·S!AûÂ p{sÔä~•Ÿq\r¾,7øulƒ‚?\Zï¼7m5•½ªYËæ‡™?ØÀôÛYé\\nWEk\rVµÕ¢Ô!³ŠÞ9ƒy¯ça²GFàçð©u­zô[Z^]–Ê)›sž‡€L×^‘Á©Ùù<Šã) Ý‚Çÿ\0CV~Íee‡DŒ\0ù°àWUÓÕ6úœ6k©ëšñ\Zµ˜·ŠÎ1\"Á›píýïPpx÷«¶ºLZ\'ˆCÙhnÈû•p©Ž™à“ÅoèVà}£S‘‰–úMø?Â\0?Z¾¯ö‹—]¸X°Uêi¶‚æ:ëZ~Ÿq²M9í¥eÜå\"Ï •­Xõ:XŒ«y–qbØ\0gæ¹íL¿¹‘·¹6 gü¤“ÁÝŽ¢™cj“-Œzz’‡PQñüëÈ95“ª¹¬5}f}Q™\"V[ J»°ÿ\0[ì¾ÞýûVŠ\"ÆŠˆ¡UF\0\0)¬ñ@‹¹•!W<aOÏíZ6IÎ‘ÌŒäUbXœ\08¬O^[G¢Ï.üNÊbBªC1#îŠ»¨Í)Ék rb	\'\0äg>ý++VÓä¸-¨²K$k±m—”\rœ†þ]«zqWM’ÝÎj_Ae¡Á-“L·®Ã¤ÃêqÓ=q]W…#¸û2Í$2\"H›òç\'ñéœõ«\Z-½ÍÖŸ\0Ô­öT¨FçwlœûVƒÝ7˜ ´‡~ÜnláT{zÖ,å¡}ÝJ+{my5) vh À`8êÆ³¼OâÈ´Û3Ê<ªBù]aþ5‰ã-oRÒôû«ˆØ²<©|Áž$cé^i%ÓÏ*¼Žƒ–fïÏ4œnB7óñ¤Üd‘S×ëTÔäƒŠ³wt.2­#I\"¶ŽŒ1Q\\@m$Ts¸2†r*–š‡+t©–N@©©bÝx©Ðâ™GWáy´maÛý_–aíØýEw®[Þ_¥¬›Ø¤`ÆElmb?@3^Ifèx\'¯GÐî-âÓíç²[t½P\"˜n\n€F{š™;	¤tšæŠ¦HöŠ±ÎŸ99À uÕz-ž©¥Û#ˆœ®ìíü*++ÉäƒÎ™äWea<RÉ»N1··ZÍ·Ôí¢Õ¤KYOÊøèØÇµ.m,N§M¥èpi…¼§wnFæ<ãÒµ#S°eBŸ@i–ê5Á;p6ç­KFä¶Ø‘‚8¬]gM}DˆÏÊCc<ÿ\0…m0Ü1ÏáYúËYÂó¤a¶©;‰éBW`™çò“W¦*¹“ZºìW3²Þ¼E\"pNÜg¯ãX[ñõ­í¥Í/rÂ¾N*Ú«T\"99©Ì¾´›\Zó&y¸<ÔOzŠYLÔ^fi\\NÆ•»sœÕ¶¨óY¶Ç\0õ©ÞO›­H-M‹QçÄŸ©*IÇ½\\‹Lwˆ´[²\0ûÜdž˜•¡ê¿dº¹Q­Éoá8à×k@l`žzçl‰–ŒæÖ{b>×	H˜áŸÛ5£mg˜`–C´`gÇ¿>•×\\¼I´û| >mÝ+‰ÖìžÞy%…ìÜON}*£f‚*ì¢#á³¿<ŽÂ$ Ä\rd=Çï*Çžx©ØÑŽyy¥IÈvª/(œÓÄ´Þ¨Ï©fiàsÅ©lVEPª¯1eúU\'“ž}hJá\"IeßœÕi_n\0â•Ÿ<úÔ·ZaaârO\\\ZqÏ Õ\"üžyŸnEC-K”lƒN¶|¶õ}„u T&UuÆr\rB’<±È=i5 Ú:TÔ³Û+†ì(#ïéWyZsÊ×ŽŽÃ	\0Ýë“ÛÉE<‘H$]ŒqÀa?úõ\"ÞIÌÄçw&²”Q4àó¶ÒÄä–¤u7’Ì‚G¬›‹Ôšg%6r0iö·îŒéæ\r¬¸,Ü=½èQ©4öN§z°\nwgwM!0ê{Ó ¹‚¯‚=jY–7@¡\0`0\0¡°+µä²#‚t8ª&mŒ¥qµsÚ‰â•_f¤)àUd È#w	“Œ“À¦Žžv’@c5`¿1?6{Uøæ‚Y‘£f ©ÈÏâ+\"k…\'¯9äÓdØÔ·º‚\'Bå¶÷=kfßR†Hgòœç8ÀkŽ·Ê“yh88­	o4Õ„$Q|éÇ™ýïz‡;èz$“éWÖÖÞKË¹T/ÌÄ*nîyíXqhÓGz‚Ö6–BÀc`“€?Î¹«rí&&Ú	&p2ØÏOÃµné7ž,Öf‘¢Ô•²\0Ï.@éïíP”âü‹÷y|ÎïL±Ó ŽæëUºh·É×\\w¡Írk–W:ŒÎxUå#†,‡ö®ƒÃ£º–mK^77aÈòw*dÿ\0i‡Qž8¯AÓ¼?¥é±(¶Ó­¢|rV1ŸÏ­w^š‡,¿&ž‡	áýwÄW*öº6‘…\'+5ÛmD_§s]š7Šuy®El„å–Ò,~5Ò²ÛA2¹TG#º~$p·=ñšËÚF\ZA~¡«ÕœÅŸ€ô;bÅÖK«£ËMpÛÛ\'Û¥;Y´ŸN²‚=8:E¨7|Òë—†;…K{¦YTe‚ôÔš]\\›RçŸ	ù#Ü3¸¯SêsIâ9]å¨­r¬Z]Ä—\r=Í£†TùUFAúÕê6ú|%$YQUª‚çŠ×ºñI–yaŸËÍƒŸ¡®[^Š]jmñˆÌc†’HÏ>µ4ª6ì=OÃšÝÆ£«CË¼6PŸ6?˜àÕGÖ»;¹m5ÒñY]*­°Jßìx®zÛÂWv\"¶.ZA¸Å\'“ÔU¾½Ñ&žÙ]·K&Ô}Ÿ1\'¾9Ê×]*2Z¦g&}u~×wåÄ²Íªþð\0H\'Ò¦†ÚêXtè§¸R–Äû0ÇŸºyþU§¡ÝÜZÛO&¬ÊYÙHELc#Ž=ërÁ¡½·YÍº§ÌJåFqëZÎ§.ëbo¡=°f\\îO—AYwv3Eq!»è+iÁØppq×Ò¹ùn\'Kéc’Bs‚ŒQí\\æµâme³>VÓËÈ¯É˜wgo÷j´5A70ÏkÛÓ`gÇî=êã}ŽîXa*Wî–ƒôª.ìÿ\0{ð5‡³S×¡6»S6X¡<c­kÚÜM3N¹ÀÈ¬¨”««>ùéZ†x¥œ«Š6\0Öíi`l–V†æÆÙ\\W\"³&q(*r=*ÕàŽ-žS†M¸\0Ž\Z¦zg?ýjpWì<Óãˆ“Å?o~õ\"ô\"µS÷rhtn*xvî¹*iÐ2ez/j–ÕÄP+Ô~µFÝW6ÆÏÖ‘­ØG¼)ÛëMX›Œ:˜ãŠb¡Zµ2}hi ¸±Â\\ŽO­½6)¢‘Ð…9Î8=EX³°ŠîÊ9uŠEä±}«nä]Ï¦XÙ[ ’â7b’ä.ì*ç•H½\r\"–ä6­lˆYî{t‚@	=§ÅX–9Ì0ÛN+í’0NõÈúVdv\rÓûiä‰	þxÎK¦ÛKi7ÚD‰½g”Íóc¿e8+^ãØèììmÙÖÚ¤(ÄH¤É¸‚\rK¨Ä¹fX\nÁ ã9÷éUÝYL¢êX/6â6pF¥b‹µµD·Ô®åFØêÞ\\ö9÷¯5Ðu^†ÓQ²°4\rªO%Ì{‚4ûNþª t5i Ú¬Íç;;dáTqøšµ¤Þ¹´Ç)Ý¹Ï|ƒW£Õâ`#œìqƒ†Á­¤êÁòÃc–z²(\ZÛ	ô¡ƒydYí³Õ¢<²qÔV%»Âc‘eFYJ>OåŠ»ª›s2ÜDÅ.øde8Éõ§­n`[ô\0 Mí“ÛØõ¯BŸ½g¸ïuq¶Œê¯Çó C|ØáM–ÖêUiÉM®¿-´úCPÌ¦LYÕ\\ö=j½ÅèšT\"1%“¸úU(uArgªmœdgª”Ö?#Mk*º)ÉQ÷…i´­¨e‰Ý³\0¾Ð>•&™£I¦ç\rìpXSº›bµÞ…Hfž: ™ò^ëïI|\"Šö2`Ea¹IÊ?¶;RÍÖ‘xDOÉÈëÛÜUØ®4FPùaN$Làš™7¤•Ðkr\rKNºÑ$ŽS&Ï3-Yû£8Ç?çšM3^}>Úæ%Îf!·z0«~\'i[N±<ÍÑ$‘î9(ßu†\næƒ1\07E­•(Ô…¤Š–ŒÝ“ÄOw[_*É‡œTöaïüê¬\ZuÅè¸h0â.H=WÔVQÛ§5Öx;R[=D¤ªJL¥ªÃÙRnšØZ1º?ˆ¾É‚ú/>üIþ5ÒË¨ZÜéC¦•ó›ç/ŒœÍcÉáyn.%Ý#Fr|µàš4­&?ÛÙ´¥¢n™à“Ž•æTŽ£ç[­l$ÙgN°»´ž?¶I¸Dç/œîB=ýêmF=>îñ®nä}ÄaP`•§yj·½±W†áNì¸Èâ¬ˆ>Ëuq&•{*’Œ|‰Çîý*hÔU%í–íØMt3Ù­¢“0&TÍ7íÛïìÊqŠ/l¥Óçh¥î·fËdæU™Ê!êàg…}+r&ÌY¡±O´‰ûß”+/\0×#½W?4›Cc4Éü¨ŽØ¦ór8¦Â0ÜñšÙk¨£Œ+|¼z¿©\\`äõ&¡µ„ÈÕ,G<zUÕ#Ž*…ŽXGÍÞ„`\rZTÜ¡¡ÇvôÍ\\Š\0IÑ*e^˜ëRÀGh·µ7b	Æ%=HÁ©paž§.H#ûÝjÐUÀâ¥è0.>µ4k½Hô H·ô5$qEI$5LcÇ=é\Z¥L±ŽÔ$r9«C$AÉö©rHEsFÉV²\rFÀf„ÆVaÍI\rœÓ‚bP02sÆE;[=ißhh×œdb›¿AtÖŒgš›8õ¦ÑF[Ó­Ú{´ÂnD µRS…«¶×¦Ér“|*™ß•ØiÙêts9Xdd]ØSÆ{Ö4–ó‘öä¯#Ö›%ÀvÞ³‡.ŒÏp3Ž(±¼ià@Ò&[#ÔzW,!(+—))2‚aœo8^ôÛ¹n,ÀÚêPQ[®)²|ä«pâŸ=®Û@wŒvÉÎsÔ\nêi_S3#,Hc!ù¹Ú:\n¹@4ÕqÍL‰·U\0ñ.8«¾@ªû3ÖžU:ò(Æ3Ïj­rÙ9ëŠcÞ*©9õžúš;•lç¨#Ò¥»jŒg†¨î$*N3ÅVŽxü³\"0ÁíUno‚ÎO¥+ÝŽK´j6öûÀó¤	è	õ¦øšÚÞÙàëÏÚ¤’©Áû×=¨Ìžk0C(Èç­QÕ5È§€Û)\r¸o;±”=ðÇ×ƒ^~)ÔSN/Bã¶¦¦·o%Þ›ima$R+À¯1\'çÞ3•ç¦ò¯8™±v¡3a¹r2?ýUbâýSkÆÌÒ‡-¼÷´\\ÜÉ©Ê%ŽŽB¹”Æ¸q‚}³\\±UbìÝÑ¢±ÚÂKÑ€ÁˆóÁçüi~ÓÍWæˆew<`0ý?*³§é²¬«\"?,v¨9æ‹ýóN»X§–G*žùé[:R`ä‚Úâk+ˆ£ZxL`¹àáÆ\nË·š–×HÑÊË äQô þ•d*Ú\\Æg_š9hÝr5\räO©7É²S¹@cµeÊïÊÊ½ÈÅÜ0´Ð…/€ˆ™Ï1œõ§yÆÿ\0Tƒ)v)UàqŸ©ªR1Ñ•Uçæöüj4ÜÊÛFvŒœv½l©­ú…Í¹n•ä†I³ÎÒªxlp:u£LœÅ;+ t9%¦@ëRX´RBòÈ¨à¨8vÉ#ÜVšH`¼¸!cdî:Œöõ8ê:ÖU9TZ°2ÿ\0ö£ÅgÏ=»Å0òÍ¾	x•A\0àôÈn1éX—0¼1Ú¤ÈoÚGÌ2õ\rÜ’¥Þq)ŒmÇL…@düÍ#‰\0“Û•*VÕó.é1³jP1c¹øÏþÕÕê×6wSJ—HÒyacSÊsýÖSÒ¹»ô¶].Æ{)¿|ÈEÂ‚AVÏolb³­¦Ã9|ÊT“ÛŽ´{%UóöìÎ¦Ù|ëÈÒü#I$œË)ä’~•»«bêâþæÚk…[$aå‘ÂýìöÆk–‹\\h´u‹{5À”6ìtP»pOåR]k¯ä=¥¤Ž–³ ¿““×ŸLÖN”äö)KA³ø›UYAÒù¾XÙ[ªúQ}ymu\n2É.ô9wþöG¶8¨þ8žÓÌ¶†Cj¥”cvI ·©«—ú´z–£è¾HÈQ·¯§ç]J6i$Ke­.Åµio®¦{WòíÚ_-œ£!]§åã·OÀÖ&¥m%¥ó‰:±,	þ!ê\rJó¦=²At<Òß½ie‰O‘ùrÙØ¤ð9®ˆ-t3lÏdÊ’lÔG¸(/ƒØT%—·w°©‘XðJè[šhü©\Z1ƒµ°H9ÒJ·Þ¯oåC¿xsŽ£½D«“ž”ÄË²; -Àý«JÐBbžA\r±ÛnÙIÌxËøã–‹†Áa¸ð=ëR+{G´rçÊ”FáYà‚Ž2=\rTY,¡*£;<i…ì¤ç!r~•±¤Z<«\"BÒ,k&ÁèrFN~ ô¬MûÜ·AéM»ÉÁç æž¬qÉã4Àäb¥R Šqwáór\n˜+·9%F:UpÃ>µ:6ÁÀ\"¨iDEË—Á\\óÓ­#0$zgš=0i¤Ùî(ÐDìÛNAOG\'Ú«),rzŠ•[ïzSêZWÝÉíÅH3ÎËÜU4b3ÍH®yÜhÐ%~”ñ&óô¨ˆJ‚\0c4Î:Ð¯<+ägµ9³`UEny§\0úÓÐEÐØ\'ž‚š_Æ©µÆÁLó³ß‘HLÐw\rvÈÅSf8-ƒƒÒ«¼üiž~xŒŠMd.ã‚ØÈÈÅ6IZd`0?‹ê¸l+~@â£–UnYÉ$sYKq¢Å´ŒÒFá1ƒ×U™af•‚2‰:n>ôÈnLPI„bxJî&EÉ\\›ðïSé—M%üR†X¥X\\Be61ƒŸ­pÔ“»hÒ)lE¬6K<“Ì¾r¦| ~ð<ñªÓ\\CÚÆ¼a9\0wÇJeí°T/-æû½ì†-½àdU{f1j(ÐH[\0ƒíJm]°å4b™$UF… \0;žiÒir\\Z5Ä‹¸‚ät_¯áIs§Ý\"}§ìŸ½,TóÀ÷ÅmØjÁ­#‚âÐ*‡ùÕFð08ï\\ÕkM+ÓÔ¥ç£-Ý»XÄ,ÙH(_(Ž8ÓŠÓµ•Þ&óaCŒö#Ú¹íÎ\r#JBî‚VbX’>ñ=·JÛ\Z­’Ù›‰.¢dÅ¸ëëŠÃÛ”®m=,^ä\ZZË:¼rY‹}›ù‹œ\\N\nÇÓï5ViÎåŠ”¨*FJn# úŒW¢µØ‡$Ž£ÎÍ1ïÀ¯qšÁñžž—¾¹vvSlàÁã½h%„)ö„˜ùì ÜäÛµY¾·ŠêÊ[yÎ\"‘v·Ò®/–I†ëSÈt¿ê\Z”ÏiTR9|=Žq]Ö‹uh\"kÛÆ‘òvæ=øÀãð®ÏKÓ¡ÓíL\nC#61ÀÏaúVGŒb’âÄCj¯%ä£†5	¶{`WR¬Ü¬¶2p²¸ß­©Ó.nö Èñ“Œm°¦]x†%Óæ‚ELaR!“—Œ‘íŽ•ÍøsÃwïc5¶£4–dMós¸»€Hú\Zè›H·šv_šñ„e^âL)èC·3l¾‡­èâê[É¬¼\n¨¶ràVÆ‰áHgÑú^òÈ•[æóŽ9ÆzsÅkG¦!m)xËl—pÙ‰:dNJfŸÈ±XÇ6&bòd…àýÐ=AÇ5Wdètz–ºUœVÈ¥V8”Ûwñ\ZtèÜ÷wö™Ÿ)HÆÕ³ýk2×]:=ÇÙ/Ì¬$¢æcõ=†jÐžæóT·²L±ì\'ñ‚+ÌÙ{”<Qa±ä$³mUÕNqœ*ýy&™¥è³Çnš|³#*‡¯$•9üªò%ÍÕÔ²E°´Lr1À=k*kÆ/n—XžY”¹cþÃÒˆMÞÀÒJæwŠõ\'³‰`·¾œÊyaÔuèH>ÕÊÃ£_©\Z”¨²orZI9ÝrHú÷®ÂE´Õ5o4\"Éml\n(;ˆ\0œwùˆü©±^ÄtÙ¬\ZÚY.§Ä1!\\?S]{#+œ%•¬š}È¹”G $¨Û’üt®cTVf\0¸`ƒ*p3Ú»æÓ/GDµ4˜2£Ò¸ëí<Ã#6Ö\'Žâ¹§Ùªv1&AòJB…‘r\09Æ8çòªD\"àqœóW¦…;Õ&RÒ`VV.æ…ºÜÛ${£ó¢u–Ú}³G±ÀkØ¤²³žVEO•›îœàu­+S/	iE%†}	Î?,RµÅs$¹˜…$dŸÒ®ÙéKqd\'FY$yJ•ÏÜÇ¯×¯áTY<ƒ†\'ŒWcáC<\rŠÏíÄ^:ŸCQ\'e¡qEÿ\0é—÷G.±¦Õ—#\'ŸÊ½çH¶Õ^;é¥YYD€ƒ÷”ŒœŸÃ§µrv7š‡žMÎ™/™#m‘Ã`à?LSãñ*iÐÏö¸çVbŽxÆöÚF	Ï§\'ó¬\"å)+¡µØÔ½Òít{3eåÁ\"ÜÌ±DÑÌ ò~•½o«Zéòî%–N¤ŽØõÁæºÇŠ,ÖÖÙ4¨eÛk<Ž’Héi#·«ZÏÄ¶bÞÍ14÷á¤Gî7S´þ”ªE»°ŽÚža=´‘Åt‘ÿ\0¬f*Ì0A=¿JäõoÙëšÕ¦”Áà1ÊÍ<…°`r3îF++Zñ%íª<É±ÂªPÃ\0rÝ=kO½±ÖºÜ¡5’Q\0\0í÷<š(T’ZŽHïcñ:[$¬nÑàfýÛF§jã·ÔàÖÿ\0ü$:r}˜¤¥ÚàeQG\'œdç§5ä¶ö\ZÎ™xhw~óÍåu\'òæµoZ]nåí|9û\Zl\\_žCÓn;u­”î›dò¯ˆï%Ôc:^•‡¹uò†ÂÆ	Ûƒîy¦øcKÕàˆAª”k{|¬\'=Í?DÐî4¨àŒ[ÂYK4’å˜ôbsúWJ¢AÉS&9ôÍD=çv7¢²B7Çr8nyõ©ã¥DPÈc;Šž•&	|ä€1ë[S¹€Í5»4|Å0`Ùö\"®â¢šXãhÃ¶6ÜàšeÍìª<Æäà*Ž¤ž˜§«weØáTOµcÚø‚ÆãJžø¹		;ÆÜoÎ«x¶âKkß½\Z¨V‰›\0‚k‚µ¹¼Ö¢‚ÑZÓìb0‚C¹[\nÞ¿CÓÒ­CK±\\ÖñÖ“ª&Õ–â –Á£dî9èLs^W|ÑËp¾Z,hO!zkÓµìõ2\\-²«© ÏñÀþf¼êöÊ]óâß\Z6âê§OB}9Il\\EÓJEq’’Ý\\´àý~•¿®[é7±:é[šæ53°iXâÀùAî{Öl\Zl0iv÷e%™nÔ¢¸`ÀZ\Z^‡gâaal’&eißî¼‚{óY]7sC˜ð*D“\'g[Ò$Ðõi,¤‘$dÁÊô5Y9Žk@,Bì„`âµ­n¡BÌÅI)‚±õõ†ñ©Çjmr.ÎßíRêÃ¤®oeR¬s ¾øãð­›Iš ºtóDëlÊêårÄõý\0®3H½º·¿€Û¦Ûˆþééø×Tº}Í…Á¹!®†9wyõ.Ë@FëøòÉspÌò…$»ßÚ´ôíZYîcµx˜3©mÇ·±¯0’×7®èõ\0ð¿SZbâòVd%ö¡‘[—­&­°ÒG¤®¥ÚÜLåTBÌ¤nô®KÄ\ZÛÒšS\Z•,@=ÿ\0Úþ•Ïê]ÙÛ|ìï-œþ5^âòf·#°V9Q’G½5{Ü,‘ÓÞëñßhÞT¥C‘£r:5rläœZ‚æí™\"ˆ¥z•·ÔÓ!“¾x­ô»\Zq¾ÔëM2ñTÞsÐt¦™¸óH«2ËKœš`“-Šªe4#åÇ½$‚ÆÌ`PòåºÕtp­DÒŠcÐ¸&*G×9®çFñ<wQ´WXY•r¤pÿ\0¯^v%ÎMæ=©µ¡-\\ôgñ.ž,‹!<|¡sš¯¯ëzzilUÃÌêB ê2:ŸJá`ÔÄIµÔ0ÏÍØ‘éš®Z¸ó&`#å‚ç$ûT­¹R\"b~YùKb§I·!OLÕnùžÔ‘MŽýêœ›Ûdó7Ïýj#\'½2i>nµ0€h²%éUå$7Z`y¡Ü‘ô¡=F5ž¢vÏŒÙâ¢vÇ®iÜwøªÎsÛ¥Jí×šªÌ3HRc–M¿Ö¬#†áºTbœ’p9÷\"äß»AÈ%¹ÍBÒ+®,GJFËj±vSŠ–„Hì‚CÜc¯Nj\'}„r\rN&f8lñÅWu{TŠÄ‘ÌS%[µ/Ûäß’vã¿­U$¢æ¡bHÀÖ‹\"ö/ËtMÁˆÈätÍfNÄ1njE?1Í=‘XœQ°›*À’\\9U!G}ÇÕ[x3íZ}¼–’5ÔÒ¡yà°{Õ=6[iØ½Â™A.é’=p*ô:üºS^Ç¦Ê~Ï:l-(Á+œçØÒŒâ¥b]ìc_i–ö¬·+ãæù³Y†Þ ‡#3Þ­Kr&ÉwÝ!<\Z¯)ŒFýÍŽF:Q\'®‚Ô–?‘	ŽiCÃ`ãJí|á‹ËùUþÙ<‘âbÄ\\tàõáX:\rÖ—Ö¿o0¢‘\\ŒÈÏ¨<Šô3^·¸’;ÚG+\\GóK8)\réÈç¯j¸rîÙodt÷SÙÚ	^ÜÊFâÑ+Hà(Ÿ¥sÐêÞ*¿šTMZÎÒ(Îsq×#ŽØâ´ôt¸¥’Kô½I&hó‡î©ÓÒµu´ù.,ÍÄHË3ùl›7ž™üªž\"’|½AFV»\"‡YÔ® ŠA¢´ÄpÒ,‹´ŽäÍ]—P¹šØÿ\0Ä¾öŽ )?Îµ•U*€ª\0v£†è*Éò¾…jyF¹}âóžÓOh\"uÁySvìwö®F^X_@ŒÞBµáÏp;WÐÚÇq…†ÐW){à-1åß¤y$1-ÉÎkHÓ£4Ô´bs’0MªÝ–MÎ®ÎÒIè}«¡ócÒìa½ÕæÇŒ*¨9ã·&™w¤Ëgm,ìò±Û1ŒíÅC<r%Â-Ì‹åqÃp@>ŸM\Zsƒ¶äK¹²n®®l%½XBJQ[SØzÖe§‡n.n#ÔMÂÅ 9ÝŒñŸCÒ´ôýkLe”¶ Œa8ÄŒÞ;àÕ´×4éæû0¹Ì#î–ëÇoZÝJQºŠ“ÜÏÕl.näÕQY\0&Eä;b¯iNòCvŠ® ÙÓP¹Žâl­öWÉa»8Í]²Hc™Ý§M»oíJ¤½ÞVN÷5\rcjöYDÿ\0fY:zVÁäb¨jRÜÅÅi\Z<’|«¼ð=Íawbä|‘{	%ÆÒ ñ¨çåÍfD¾lÊ„íÉÁ­ÉaY&ÊÀr´Û,´It‘¶×åŠö®Zu#ê\r£~ÒÎÞÛÃ“Âò@·r¯Ê$ÀÜ=A>•Ï^[%¸*FÙÐå€ ®=T™Š~ð”œâ‰sµCÁõëZB2½îM‘Ó4Ø%@#ŒŽôÕm.77OÎ+¦(Mˆ‘íRÆsJ Rˆð½Z0¼qSÄç8n”*`Ž*EŒÀëCŠ&àäü§wj½	ó-{9=*°L¨õ¬[3UqÅc8ŠÃRÌ¨$©8)m,èxÜ1Íl”ÂòÇhPáÛû¹éQEŒ«—vIG<ôÅ%+îTSH¹[+­“Ä²FÝQúèkv;ètu(Ø<ÄyR=?úõÎÎvœž§Ö§û&â²DÅXGZÆ­ÝØögt.mõ82§’6Xš_˜sü$þµq3[^¼äM.Éþz67cŽ¦¯K«xa¥\\ð¹Àëôªòê?i»hÛs„ÀGn@Çô¬èÇ–öwï¹Ižâ)–ÕŠ¶òsŽœcœÖÚÙ-½­ÊÍnsåpêCÇùéTØ-Ú©¹È*<w«zk\\:›9óåÇÁœýjªZè/­Æ	…µ¤%-ö¡UÛ õÆqX—÷Mq)œe]¸#k5ÊÇi)ùb,€èxþužò@Ò¡•p¬?\n¸F)ó$)l6Í¢¸‡ì×i£g¡¥š)-pËF$*~òûý)í§E.\Z*Ý¹È5oOci8h$	ÎÃÑÓ¡«RWÐ•¸˜ŠkîÜr§ÈÍeM$dO¥LŒmžH‘Ù¬ÖC”=Bž2?­iM¤E¾ðä†]É\"òv\"´ºŽ ÑVÆca0”ùR+&Bä7æ*Æ•¬K¦j†xÂÇæQÐŽâª[éÒÝ+ËÈAó·@£Þ«¥¬‚à&ÒÇÐwªöqÓ+jmtÛÝ1¾³‰’\\ä«cœzŠç7:>Tœö®·OÑ¤»³”Œ/\0©nIý+/PÒÖÇb>|ÓË`ä\nš|°÷/±MÝÜ“MÓbÔt–3Ë\"˜e\0¡èt>Üæªjº,ºuÏ”FèK|³(áþµ·c¦¯-ÐË$Fâ\"¡ã~2¹õªÄ·Iö[LOö¨ƒ4\0e#ŠÂUe©Eèú8©CmNjßH‘˜†`<u­K>d»	hèYGÌîp®Zî“QºÜ2FF=ëI<=5ºÉ\"²™v—;6:ŒúŠU1i=Î}¶\'±×­,g’ÇW·2·ÇóøU‹ÇðíöÙÓQòæŒï†L`¡ô÷ÄÎ$[™¿|7Jh@ÀŠì¨IóÆM0s;›=VßWvµy€¸Á]ã£QþÉjšUÖ“|cœ–IIGãUãW…•—*GB\r]¸Ôn®¬Ò	äóQT°å\Zè¡‚•	ÞÜ—$ÑQç–`©#³é¸ô¡WƒÒ‘×ŒäSÈê+ÑŠIhA)`:µ,.	äôéU˜÷õ©¡\0Ž•hFÍÜ°Ñ¹\\8=ZÑI7Œž=«&ÝsÔV¬H0\r4‰.Ä#½\\xªPrkB1Ò˜É	*&ÞGQRD›”qVö¢Ã)”;³ÜÓ‘2EXxˆn)ë1ÅCcƒ{€N3VV!ÚÈþt±¡ÈºÕ…4›°E\n=©Áwv§•,Øž´åjÐ WéOÚÒ+nñÈ½8\rÂž‘RG u¨l\nƒƒÈÍDÇ\'ŠšA´ûUi-mD#pj6~¹¥ó3Q»\n°\0àzk6}DÏ·ša—&€\'Ž\r)“9íŠ€¿½E$„dæ»WÎjTºRB=È5ž’o*à`ƒÉëí@\Z§`³r£Œ-Uuc‚;P’nÅK»<\n[\0ÕFlqß­Ãm*xëW´ÈÕ¯BJ9ë‚(ÔŒIs°F/‚çÒ£ŸÞå´¹ñ/“Œä‘Ï=ý*ƒ®‚ßI#²ÃƒŽÕRI•ÎNãÁª[¥¨†HZEc¸zç.ï.CàãÖ¶¯o£òÝ	ã½rÍ¾èäg¡ïS\'¦ Ž†WŽÑa6÷M6õÜGaÓ¯Z£{~ã=þµ\r´’è×Çr—xHqžAõë.ïYŠile˜äc¥aF¥•ž¥ØÅÕµ	<Ö%NL\ZÈyZX¼âë³vÝ»¹•³©Gmö°bdRŸ6=}+\Zk#$‡É_—sÞ•Yól^Äž^#\rœƒÛ5­¥,«µâ;\\¤ž„}+6ÓO—Ë;‰ÿ\0tö®–Ê‚Ý\0ãÚ¦ï¸¥#FÛ›xaÓ,ÒÎF-´>Í®IR2O|n?•fj¦AåO<r a°3C•àM_2$JóyQ±d ‚>î{zÄ¿‘¤ŒÝ±xPzüWL­c5¹=²­à¹‡ìà‰a&21Ã\'9çñ¬Á\nÞŠãWXør@Ïz‚êñÌqG¸¬qö‰¨Vq¹L‹” Ž:ýk‚QwlÙ=	gÓ\"1Ãå3ËpK	c@1´\0A}JÍ0ÝYÁ\\àu¾jT™ã”Ã¾zÒ…ó9ÈääS„d·ìF¬T°_”œÀõ«q_Ïgi=¼3nŠeÃ¡_Ë×Þ šM¬Gj„¬ê¤F¿zR§qÜz±6ì229ç­G’@$’)íƒÐÐ™\nAû¹éMDWÔhvÁOJzÌV&TrªÝG­<\0GåMxÆÖÏnE>Q7©\"I’1¥ž\rWåÍ( °ŒÐ¢7¢/ZËä¶AŽ™\\ŠP0A\'½BŒ ôÈ§gå œdqO•rì“B$Œª1xrÇ!½*&rIüª¸fc¹°@bÎsw%‚‡=ýª£ÜH”ÜÀû\n’?¿€	ôæ§•eò…æÇû;1Ž7lg*1ƒô¦Ø^µ¥ïÚá€ 3ŒŒV©äù¶²íÁÇ#§ÖšxfÚ§ß\\­Õä“…™>fPsÏÖ¡S×$Ð&ØýÌÀ“É«Âæ3dá¡ŒË‘ó“ÏáYùÀè@E(}«×“ê)#HûÉrI#©¡ysŽ¢£/ß=;S•°8ïÔJMˆ°]BðI9ý*hÛ#“ß¥PX\n±H!riÅè¬€Ø*d`¿Òª‰AÆxÏZ‘rƒíWqô-,ŒO9§¹óÚ VÂÆOiÈãË8ëUq\"BHÏ<w§DØÎ«™0¡§FÌIÆÂ×-+í$ƒÍ<8\0äòk8L9ëR‰ÁQƒŒu €ç’xÅH®vœ`ñÈªPƒMip¹=)¾%ù1§Çôª&rFO<bšòð9È¢äØ¾ò\r£$ƒÖ¡y°F?:¦Óà}îi­7ËÖ•ì-4©žG¿­1¥Á8<J¦ÓdãšBäîÎE\r•bÉ›= Ô¶ï¬Âá¶¿/®k=Xs“Í*´nq9\nqYÍè4‹ñß,R3Åµ¦ÎN6ð9üi«vf\näòƒåÏaßð¬Ä–5}Ò.ñÓ¦™Õäd\\ŒŸ—\'µ`â®UÍ(Ds\\(7—àOŽôDKHÀÀe?6{ ¬v˜n!O¶irÅsÏâ³pÔzXéíµkøâ‘„Ñµ¸‘Xää·9éšuæ¾Òêž`–XÆýÍ3±½«”gËØ	={Ò´ÛWpV\r‘†ô5Â7ºB»:kÏÞÞ¬\"iÙb^‘£ú×üö«\Z6³.£}ÚÚmáçvK{ž?*â·ÇŸZµªeƒ0a¸õîjáF	ÞÂmìzO‚5hu=FçGº¥³ž\'TÜüGÉàÐžÕ×Zßhú¤tÕw²¹F\nÐîóDÚâzœŸjå,4+!á95-.Y­/-Lÿ\0hQºIÌ¼véŽ¹¬Çñ\\·šmõÜÊN¥4‡TaLÔŒgžÜWKBL÷8Äb4	·h.*4º‚k‰-ÒEicåÔu_­y.—âbÍ­&»™îc’9Ôº.p?0?Zè4ÍSZ–Xu(,í¦@[¼ÛŠ†ÚN×÷È==«JúÜ×šÇ~Tç w¬@)¾Ù!’g,ªç¯ÿ\0úÔè®oRòÒÖvÞÅæ‘mÎpÚŸªÈûXÃóI\Z6uŽ´A5+\nMX¥\rü6×w\rww\Z(Œ3na¼;z6\r^Ñ&š>çó\n•è6õ$tÂÞÉ(’à]Ædº(d¯9\ržãŸÎ±mootÍEˆŸqo‘ò8ÇR+§Ù#5&wö}ŸG¼û]ê­Ì’·˜7ïÜzêøÖ†ƒ}Ïn²Gn,·¶Ó÷~`9®\Zö’Öi¯&Òˆ‰Á)‘œ^+GK¼²\ZtM$BI°äÆç—väsùÓ”.šk3®ñP1·½Ø’$jÀàŽF8ÇãY)­ÝÉtâI‚Ú¢ð¡~ðö?gjº´E ‡Ìlýˆ˜#îŸÆ¨Øß$¢UwùIºõ›¦ÔlRÙÒjšçÚg6v°¨e`Ë>H­sÚ¶ŽÖR¤ó¸¸kÒC†ÜyÈô¦K´{WrÌÆ~cõ«ZeÜrê:tšÜ±—?$€§üiF<º¡·rÎƒj]M+³Ù\0ªwOz¹höòÞý§r­¼Mº#\'v\'¯¿B*¦­{%ÝÌújÎˆä*¨ƒ	ÿ\0=k/MºÉI\"“ÍA÷ü…†M\\›±+{n©sicnnbG•ŽüÇ§å^suk«©ÞÆ\\@v<«¸žçó§¬kku¥ –v9Ü1´)àçñ?•qÏqs5Ï™@\nO\\\nV²\ZÔ©©éþFš²0L™J¯b¹–LL3Ò»k2êOf´¢\nÀ(wrq\\›®=óÅa;\\¸³sG¹û%¥ÝÔf#,qíE“¨Ïñ/ûC\0Š°ó_ÝÀ„HåœänÇ\'=»š¡¤A\rÃ™ÌQPïŒ“ŒÕ½I®ïµÑ­yc„]vlv8íSïrùÉ³1mZí’f!”²»Tñ­½3Q’ÇOòm&k{™¬Ñªó\"‚\nçõ©4«\'ŽÛÍd’<·ÙË\0p3ÏéR*ÝÝÞÚ¹‚5¸ÞY&DØFÜ›éŒÖrIÄ«ëc¿µ›Q6:SÍIld;¸Žì\0êsRj>fº€AÏ*ÌT&í¸ã;°ïïŠ£§x¦]ÊuÔíþÕ9¤P\0Üp*üZÔì’êRZ8g_ô„W	À\0{ùóQNiü@Ó[÷¶:mÖ›5­šIí†wvÞØ;Û=H9Ç>µ…{.™ÈI8²áÙÎH$z\nh¼õK‹YÃ¯Úf2(\\\'c¸ö®KW¸D¼eä‘T•ŠO§N{â®v“Ð#~¦Åü÷ºþª¶²Å$hi‹œ\0¸-ž™?Î¶µ\'Òô¸:dvÓÞ„Ämóù<“î}©<1á?*äÜkN³Çp¥B4ŒR ã’Qô­Ë/Ÿ\\Ý\\Ù*™™ã).áƒž‡éÍO,KLÀ¹±Ön´lê³F7*G0u={Ž\rvÿ\0ìæÒÄ±]¼‘…E«°	Éä/ÐÔ–º§ªê^^\\•HØ9€ Ãàò	õÍvá…tô¢-5 6Çõ Rmù²{tê¢Š( \n·R$xfFfU;vŽrxÀ®>ëP‹EûGÚ›uë•xY˜3 ÛÏ^œƒÇ½v— g N{\nò5¸o|j²\\Ä%µ{ƒ$›—îo^Àà×MtÛ\"EmoÇrêºí´\Z…¤ðéP•ym[†—óìxâ»?&Šö0Í*n.6**.TŽØû¼T=ÄšÍÜ·:;cÍC½ø‘×ns€~ïCSØø‚Ú}{RÓ¯b‚!lFNKrm \Zu9ytw2àðåä°IimÛ$mÁå8=Gw¶Ž„¶;íÝÙZ[}²2®å™Ôp¸ü+gG·¸Ò–êKÙåfÚ“ŒnÕ}{ªÏ¨$°JåÒR²À©òmSÃðÍrÅ&ì÷4nÇ£[®§§>–ÂJ\\n\r!ùÁÏ‡r=« ¹Ò|¯ÝL­\\ñ|…d†NG#=éu;íAÖÞæÕ-åY¾y?%ÆAÏâ+˜OÇi°ËgÞ~æo$&x<w¢­6¤¹v]Îrö{‹©‰¹‘å–99ùGšˆJ¡0[ð­;Yo¬ï®-íd–â;Ê¸y#ëX+’Ù5¢Ø¶[ŽF=¸«ö©4›<¤|;mRúf“E²·ŠŽ3\ZòÜà×«Dl\'Ð&±Xa·ž8	Œƒ’0}ëÕQv$æü\rwÖeŠðÃ$‰–‹Ì`Ýð~™®§[±¹ó¢†Òçs¸Ü±!Ú;ñ\\îƒ¥éö«{©ÄÉ€_úþ5rÇÄ“E Ç–×;Ç—ž£§Óžk)7)]\nä&Õ mõ`ö¨À±uúf¶ !¶’I°é±YdÈ\'ãó¬bKÉ®¥{Ø	¸Ùó²t\\ò?VjGumh&¹f6ûÂà¾+¢*ëQÜ›PÕZòð$ÐE|±Á•6¦¶’ZG<HQBm\'ý¡×5š÷6þp¸ŠM²ÚVÎæ\'RóYžåL`yÀàûÓJÛ× y3Óž{Ô©.Äæ© $äž\r9¤ÜÁsõªcå-y¤ƒÍ\'™ÆsP3lÏ<\Z…æí×Ò¹]¾oT°6çëY‹.{ô«¶­‘ŸZ«YÍ\'“ã5MÎ)’¿APÍ+-¬™8&§2ü¸ÍgÃ}*C!ÚE&N¤&j[kÔGQs–ò3‚>•KpÁôªÓ1¦‘VÐ¿\'’Ìv>:žxãµDŒžX!òÄô¬ï4…ÅInÛ_u\r´hJIPÃŽ*«¹ÍLÏû²j¡#“Îi\"®XÝ…ëÒ‘_\'ª¸|ïNINBŸ¥=äŒ0j&\'éRÉ‚€Ž½óUŽîNin!_9¨\n’yéS,›s»T28lÐÉ!“š@v‘Žô7µÀ=x¥p\'sÉéÓ4çÃ€3UK*X¤Ç˜Ó°e€9Í5?þªšE?UwÇñ©¸\\ç§¥,P<Ó@Y‰@\'55nÂþK)–E°0Ï\"…æ\rö,Ï¥Í¤ÜˆõfFïGJ¤¬JˆÁvo”OJÔÖ|A.½9/ä‚W®sœŸ^µ@ÙÞÚ€ÍÁl2ôµrå•ÞãA2„²ýàÇŠ£pæB>n=)³NÌÄ–ÔBC‘Ç5°ÀÆA%†*À–ã$÷=ªÜÄÌw¸À¢ËJ¸Ôn|‹d/)çnqOqlT8­­+W’Ï÷s<ÒBÃR1ïI‡/öù@6ÀáY°XãÖ§OÝ•Œ‰aê&ÿ\0›ž”J“–„ó¤zÏƒõ§×¢’k…µF\00Iã¨¤½ðíûÉ:dËpÀN–ÛÓžÕçš>¨Þ»‘¶Ê/Õ*ÆÃ²?\nÑ»ñâZiòÃ7\'R‘‹<²‘û³Œ1Ú\Z*’×prmèwP\\%ÃYÄ×óÉ~ü°”¤{zVö›¯®d¶¸·1²¯ õëùW—i~%m5í./\"ó­$‹äó¥ãÐŽ{TßD:ôw–% 2$îö\'úÖ·ƒNä¾kè{œŒÇRzž3PÝ^Åi<².p\0LòO ÷¯<³Ö¥Ö,/|A-ÄÚÂ6ÛÇÙ_½ÍyÎ½«jZ»Ë%Ô²áX¾Vi+ù­_·ÕkßmÔîV8Ñ¼ˆâiÁ\'úw«þ#º²Jo*å2wnR\0nyåöXêñ´Qß¢IGqždänÆ‹<V§Š´BDCi§µ¤( ˆüÍÄVôÍt¤¥$àÌßiÚ/‡4‚ïws,—<²D~eeÇëK$š\rã=ºE%œ‘}Ù_lzâ¸\r7ÄM¢ÚÏ	žá”Ç¸ýÕãŒQM±ñ]åèŽÐÛXän¿­sJµX7îZ§Ùè:–‡¬	ãÔmõYä%#“æ±Ðæºí\ZÎâÜ‰^ê)¼ÁûÏÝm#Óqzn·=ØÇžn¦ÀQjJÆ=õ÷®ÎçZX×x‰‘‡C/Ë‘ì)Tu,›Ž£VîkÉ<Q0GußuIÁo¥A¬žy¸’f/‚Ž€zV,7±Þ{ÈÉ‡.Ë÷OµE&«w£ÆÒ3}®Ügå ß•E9©\'Ë¸í©ó7³‚Xt>´<ÌmÊ,ÒrÜ\'j„d#njç’–ŒŒw>†£’;²JVð¤®Èòyrî„Ó$ŽHßæõ©nÊ®Ü88,Zd“¶ÆPræ¶O°šö|¡:ã“Ú•T“Ïg™È|€GzÔñZ3Üý;ÓçKBXØÓ$ñéVÒ5<˜ã¥W–?&Lg#<{ÔHC¨*Aëõ«RM\\Dî‰°×½\'Ê6ƒÛ½<.öá±ž¦£ÙÔÎx4Ó¸¬[ŽÝE£mÄö©]äŒdD£Z©lÛ%è+J e‘8ýÞzÖºzŒrÅ¹²¹ôïPÉòÂŽËÎ:Ø6Éç|íºíïô¨žÞ;AÕÌP¡+±IÁÇ|v¨ƒ¸ìQ‡l€˜ç9éZÂÊöÛÅ2’HàŠ©k38ËÓ§5¡µyolÖÅüÈŠíºè\r9¶ô@­ÔAsð\'/ ääü¿…O‡w©A=ä!h¥ˆfÁ`:ãÖ±ü¦XK³qž•Ðé:µ¼’Eu#ˆÂ¨%°qoZÊ¢”bÜPŒ¨D€Q¾56G+Ua‘â’dI8sÔžÕwN‘›UØ‚-²©$<g~4j­¼a6¨”’¼ŸZJö}BÆKË3™Ñ#ÜŒÇ?SÞ©¬Ðò{JÞ¶·{d(ë‚ë»žþâ‘,\'•Ï“	“\0äÒºc+h)¼°¶œúzVüBÞûCgš3Ôï/Gãü*´ZL³C<¤¢´J]·7${Tbæa’H*½:”ÕKr„dâAæ†hv†_”ñÔ{Ö¾«>ŒÒB&³” ŒùmÙÓÓéXê£~qZÐ\"É§H¡t!•õOë].œylÅ–Á]ÄÒ\\FÂŽH×*Çû¤v5\Z^Ýé¾u¬ðÆîÜ1uùÔû\Z—K’x.ãKdYÃ8&ÞOºÇÔÆ›«Î/u‰fòdŽBã¿ãXZÓäèº6ü?â‰tÙÇo³2’øçÁ~µwSÑ\"ÕìÄ71<¦@î¥q×åúW9e¦Íq0’|¦*YXœdŽÀúÖµ•ÅÜvÏmtÆTà3`‚z?Jç­I9sSveFWÜ£ª´ØmÀ\nóC (WžAéî*;ý:2’ÝÄ…¹!?w<‘ø\Z¼§z¥ç’vF?v¹þ/ï\0i~Þ“éN·I‡$•>ÿ\0àhPq—räÈ´à‹W@°‘W\0ÔÖ’%òx“Éº—fí™é\\Ý­é·º–4“÷e²Œ¼\0ßuO©%À¿º³ÄðÇ´ÈzH:õõ®:ôÜgwmH9MFÆA©N°Ç# s‚5TÂÐÈRDdaÙ†+ÓlÒ[»{v¶·P&\\¶Nžù®Yk‰µYDÁwFÅ8ö®Ì.UeìÚØ–º”•ry¡“\0ñV!·r»¶’SŠ¶–2È¥–&aÜÅz×HÍ™J¤‘µr}1V/t¹­¢Ži6ßÃÜU¨#ò\'W8=­>÷Ï™ƒÌ¦j\'~em†a„lt§+lÕ~[Fˆ)eÀa‘PÉ\n²c>¸«^D—,¥ãÖ´r\rƒŠÅ|µ­(%Î*‰f¥»|ÀŠÔƒ$ŒŠÌ¶RH\"¶­”2*†^‚,€jÒ¦;S\"ÆÞ:ÔÂ¥°#dÏj,v©€æŸŠž`#TÁ©”qMiøÀ©l°aÈ¥ˆƒËÔPOÑ×Š]\0—=qÀô¦³c‘ÁïŠþT:±\\K¨žO”©ôª’­†î3Z²qoç€ƒòûþ‰råÝ˜õ\'&¶ƒ¸Xƒ±éQ€ ÝÎsÅE)¼Ö€O<£o\0“#=ª”íÁªþk×X†r­Dg-Ç Ô1¹wÇ8}«BïOònU@\nÅ<žÔ!ºçŠ¶¯Æ;Ô	òü¬0AÅJ@íHQ?sS†î*œr.*A&µKüjÆÞY‹ØùXIÏJ£sq,ÎZBKw«i/›\nªòá~`8Ž†¬YÚÂ±9›ÌóúIÒwƒÏ›ijÇcó\'\nHÁ sõ®[ÔÚ¹×c¡Á^˜cQ¸•ï>Ëem*ÜÚ0q“Û¯CX1·»Ó¬ífº¸ŠW¹!òùÜdý?\n¶¢ò)\\êaýÎk\Zæày‡œŠ¢×D!ËžâªµÁ|.ì{Öne¨ØÐ›VŸ`!ÎåèsÚ¨HQ¤®yaŽ‡Ò¡‘d$§­BÎÃå8\'­bïmE[\"ÌAv*Nxæ¶läXÙ8=È¨FœÒË‘§œUõÓdòÆ9íJpŒ®)3wMÓÆ§r‘G\"Æ_»øÓ¥‘m¤hrËr™>ÇÕŒf5òYŠ0î>)ÌaŒöcô®’.]s³‰ä+æYü¥F$Æ¤§ß­tw6—0AÒÛÈ8Ü¬Gzþ•‘p«+˜Æx>ÔœA#ž”wÚÃŽ\\Td3:¸ªŽõ²lrsÂ`ª¬ü@ÇsXÊ›e¹XÉX[p;rjõµŸ.\ndcÁum”®HÆ8Í„ÀÚÇCIAØžc¦Ó€9µÆ¦}€}ï^Æ­¼lÒ—ƒÒ qó+cŠ¦‹ZŠ«1Mß¼qÖ˜cØXw5${‹(TäÓ½#<óÈ¨¶¢#9,pGëJTcžôì§ÖœŸqéLvÔ€Œt¥UÇJõø³JW‘ÒªÃb¤`“JGbÈ¥Î})qœ\094™;ˆ‰Èâ¬£›+›{¨Àl6õ2CUÉ\n9É4Ö$¯SÇ<Ò(ê5ívÇRid¶Ó£¶\"¢Æ	€	aŽäçð5Ïo!F0ÄíH³—c ”\\‘ßü*&nkK’‘`mÈ>”,¸FNùÎj\0ÙÇJp)“œþ˜Éç9êz\Z—å3É#¥UÜr@éÛàÍ×Ú–¢À‚89éOW\'’ÃæëÅ\'™æ}ãÏ­G»…õ 	”¨\'8ü)êØOz€1 tãµ=>c×Ò©aBòNâx5 ”×‚1Ç¥RÞAëRFÛÏ¥UÀ°%?‡Ò§ó¶Äúæ«£*œgÜS^Bã€i© ,ÈäÐ²˜òÀàãPÊ7äíHÒgœÓ¸Z@pp=éV@séU7‚894íÄïÚŽ`±sÏÚ¸§­\'šëš©¿ÛŒ~´ä™–\'$œ¥KìLò€ûyÛž3HdO89âªnß(¿\ZI$‡‘Rä>R_3nriœJ®Í“É>”Òç<æŽ`±`± gƒGò€{ÕFvÏ^”‹)ÚsÍ\' ±hK‘ŸÊœŒž[31t8àš¨Xlá²{Š½´­duò$;J’	$sÒ¢RÐiÚ@ÝO$ÔFNHƒÞ‰Ÿ;€¹8ì)`€9˜(\'›ÒãHPrÁÊîà•$LåI\0“ŸÖ¤Ø~K¸	»rãœÔÇ;¸\'ÓÖ¢÷Ð\r8ôÄ\nÓyªªºyÎsYrdcêr~µe™Õÿ\0Ö†Pqò÷µ%¥šÏ.\\6ÅÉ$çŒõ§N¾¬L¦°±Ëm8$?#vä`ûÕÉ­cˆÇåÊÎyãNOÊÏzÔ: î¯)77,µx®ÞiuK™‘ö³¬K…I@RTu‰o¯å¼‘Æù[ Â¢ŠÔ„\'‚8ŒóW>ÇrÀ<‰:qúU\nÆÎ†³ÝåÚg1ÚH§csÁûØ÷ãŠôßXÏ\r4K2´2«¥Q‚\'ˆ5æv †O³¼¬‘ªHŠs¹±Éýk{D×nô³0·ÈNÝî3òñ€AŒÎ°ämÝ\Zs$J\ZjË’áU®Š\0î2GôÍMqˆDªe—iÜ{t5OLÖ#žØ5Ãl g{íWmï š9Ï¶œº;gð©|ÉêR³Gâ\r+YÅÃùÒùƒbªÀ\0qÛŠä.4+ˆPIä±VœÏã^³¬\\ìÓƒ¢	7²€¤uÿ\0†kŸŸGY´g»²ù¼²Æ[’WU:—ädãg¡Á\\Ù½¼Ð¨“*P1’ õU›PöóDÓ*4lwÿ\0UW¼ØÝ3¹q>ã¼7žùýj´·Ò@­\ZÈNå†Ç1í[lk3Ù]8šÜbR0Èþë.ÚtFt—9ÚBýîÕ@ÜMÏ$ä\ZžÊV7­²·ÚCe[®Nx¤Þ…$YŽîdc,jK‡¦=éfk»}³OÄ£vIëš‚k×1eVC,Üõ$þ”6§w¨ˆâHÄÅå‹ÏŸAY·Ø¤´ëRyì\"¶ñÅ´’e$–oÇÒ©®£¨ý•ìcÚŸ3‘ƒ€;\Z’¸&XAh”•w$ÄñUï }Fî3æ¨Þ½2•\'d®\ZÜ£>­3À!èGr)ÚEž¥u4÷‰ŒæIN\0ã ÷=ªÜúL1”¶†XÚVC,ÅÍÒF3ïÖ¶æ_éÎ&Oä¼Esƒ!ÿ\0gò¬ù®´/c…Ô„JðÎ¸“vH\rœqëYÃvCÝ+cPÓnK¬ïäùR8ÆãY2Iœä)äVz”›{yí-MÃ+ª¶zÜwfÒ[§¿]i±™XˆŒ‚¸Â“ë’\rnéZ3ø£Ã›\Zè;Û8\n¢mè^™ü«:ïÃ—ÚMä¶Ó¼Í ^ÑïÚ¢oÝIjw‰m:ÁnñA¼¶bNG¿OÊ±uM@Ã<×rÎs(1€€>‡“ùÕøHµÛ –òÂø`!ãl#;q‚:~}År—ºÂjwsÜÝîÌRCÈÝÛ#òªœ,ì…3¤“SmEÐ[Åmø‡\0•v\'ÿ\0JTÖ.ÞêM4Ân®ÝLTgú’x9¬­\nâk¸E£Þ-”1óò¯ÎÜä|Ý¹Å\\þÙ·Ó^K{[8¼èß‰—–<õ\'¹Ír½Q•+ÜMþÑÌ6ïåwd¨ê@õ®‡EððÔ­‘äŽV¿ÿ\0¡@HTw`†Ï|s\\l-%þ¨ÆI\0S!äž§5ëîõd‚v1ùHBË äœƒÇ§«÷“Vµ‹š¯‡|¨¼¹‘Zò(Ô‡ŠB¹\\`á=9úÖ®•|—öÞsL<åU‰Æ[ßýz“KÒŒúì³M9gD!ˆrÁƒr\0ôàÔÚ}¤zuü±É%c\nÈ¹;‰<‘Øž*k]»„^‡Io\"\\‚\'=³SÕ\\™sƒMŠ¨\réNRÄË·Ÿ\\ÕÓØLwZk£ ì)ÔUˆ)0^ôµ¨ë6–\nCÈ­(òÁÉ MØ‹_¹{M6k”½[o&6s9ôë^­ëÜ$Q[ÃµÔ–’mÜÉŸ_ë]·ÄQ\'Šó1 ÿ\0VƒŽ™¯,ªÜd ”m#i<g×ð­¡;FÈKWsNÔ/K‰â¸a.åÚ=¿ â´~ÏªiZÄsg¸rD¤ìÁ8=:“Á÷Z^—ký£ªÛnum°G´aÈûÙ\'·\"½^cI6x¦|ÐoPŠŠ‡=«šnÌÖÇ¾&¼Õu-6‹—µó¾åS•#Œ\\Ó¤ñ½Íž¥.—sjËnìÍÄ¥Tœ;“\\÷‰c:oŒpùª¦BÌÅp«ž¡=GZx»ŠÊÊñgŠG¿,~Î®¹l¸ë“Ï~ú“••Œ¯ê+¬þæÓÈT\\\rßyóÎãõÍc[€„3ª¿#\0ž+MðôÚ§Û~ÔòExˆAøÞßÝ$ôâ³õk(tû„¶WRë\Z™0Ù»×D®×0¢í¡ÓøGR:L·B¦O=•L1¯O^½1ë\\ÝîŸRt‚#¸JØˆíæºmPH£³‚Æ YˆR×$ðÄŸîš©«xÅªê(m;Ì\n\n¶C\\ð”®ËveX/N›Ú-UÔ…Ã\0a½‡ÒªnÜÉ:ÌìYÔåpk*[¹¦M¬ÿ\0)4È›\0ŒŠ|‹vKf¥Æ¥qzÅÛ˜äœU‹’6ó7ã¥eDù9®$¹@¹\0úÕ%b|Í¯í»ÅI-¢”ºÊ¥¨=rj{Ý;Q“ìÖFô\\+F%H£l…\'¶=kŸVuùã>ë­ðeœ\\5Ì÷Äñ¸ù•xQÜ“ÚªöCZœ®|¶+›¹=©Æ2¸Þ\0\'šÕ×4ë{{ùÚ™”ÃpÁäâ²P1%H9÷ëB•Ñw³HZˆ8œsNpI4Æ_Eî7 i³ÅA»&˜ù^çÚš2rjÖ‚æ,¯ÌjüU<Öj¿#oZ½`õ¡°LšI9ê0çšŒ¹Ï4ä#Öªåô$ÝÈ§—ãš‹<Ó\0Òbn£°¨eÀ>Ô¡½©²ØÅRè0Æ¬wg­°Ü=Fä®FjœõëéRÈ¹¦0ã¦*Œ§EK:ñLNâj@`‘íJ_¸àTJ0y§;ò;âÐ¬L’dc<\ZŽ]ŠNÒHõ5ò	Å+îa‘Ò•ÊHØQô<R°99¨ÉëÍ6î{Ô/×ü)wäà~4ÓÉ¤KÄúÓÆväÐP–?…!|})1#ÜØÝI$9‡Z‡Îl‚8©ÁÆj5›älŠ\0ç#žæ¥—kÍAæl9 vDK‡*ÀtQÍ[¸¹šòÉ\rÆ¨e‘r“´tÎzU6ÜœýáÎEV JäçÖ„ì ÀœäÔþZ¤	?š2Ù@äU@Å[8­(-í&¶2Íw²€J Ù§µ5¨žåóÏ8àqÈ«Ö—	R¹— õ¬‡Ç˜Dl[ð«º^—quµ¦†$ Ÿ2còäâžÁb´÷R\ræ1ÛÀ`OJ›K¾z½Ä…Ù#pHSÛÛ5Y–5v·žÍBPœí?…+…=_WûuÙhãHSv@ùëõªFàºÈwã>ÜšãÈ ç¯µ;ìà&C’OðŠr“`•†ƒ$¬vcßÖ–[)áØ$S—ÜŠßfçóv°»Ví–ntãv­9ž&\0¶ï”)þï½JzØ…£É}µ\rÁqæ€-ˆÜ¼{]çˆü+\r‚ÛCyw$ª‘çË…ªúôäö¬?\niöv×‘_ÞC#Û	˜›i$wc·C^ƒ®½ŸÛ ¾¶Y\r¬g÷íêÖ†ùd›v%Ýìp\Z7ƒu\rRFµ± Ê½™‡nk¹ÔuËáå·Ðb–æ\'b¦y‰v zàzÖŠüugª´Ëh¼«H]A®æeÈÈöâ»\rX4¶–ói÷t÷%D-Ñœœ}­o\Z‘NâqÐâ4?]ë›Úy£f$Ÿ(äydã,1^áïi>Q0[¬|Ó9Çl`Jè,¬`±‡Ë‚5QÜŒÕ=[N¸Ô0‰rñ¨8çÞ±r|Í¦4»‹v,¢¶ýÜ0”1´zæ¹=V6°…û4¾JªH>¹­èô‹•Ò†9Ï4—‹dšzG4éR`Úbõ­©ÞJÌ‡¾‡kã‹—†Å¡Ë¹%ZO—w±ü+²Ðá‚îÞeš6Ãå\\ä/¦?\nÃK;«™­[ÎQ÷NÐäž¸ö«	f, …ç½ž22ÒF“ëjÍaùgx=”ÓZŸ5FÊTäÿ\0ÂEI’X¶9­5”ÛùûØ¹çRùàÃåÂÊ$ÿ\0\ZÉ4ÅtR•RB¤Á=C³pp9íRyNËœdT‘>ÈÙ6©ÝÜŽEh´$’Ï1Ì¹—ZÉå8Ü¬ª@Á=ë*\'emÊpÞÕ=á*ò7µœãÍ!5r	Øùç\'84àÇ ƒÅW|œ;;\Z–52í+Áô­£e (mR3š¶–3]Ì.GþÕgAÓÓr¤!SzÕÑbžÞæi#eDJá—<zÔ:ÑRit+ÊÆLzâé­§GŽU`T’8ïŠÓŸM:Nž&k’ÒewD£ 9õâ¶ô¹&·Õ\Zïí‚K–‚sAª:µØ´3cq.?vÃ?a*Î¤ÔQRµìŒKy$Ä]ZFÉã>õéÚ†Æ—²s Žì\0Nìe#®}\rpš2GåµÏžþd™—` z×¤i1Ú>…åEy(š,¶\\pW¾¦(¯\'d8îpÚë+jlQ!F*Á:pzÕkÈ-YÑQd?\"ºG?ih¡˜4R&CF<q+šm>âÂXÄéŒ¯éëU	ÆI]êCI2òi©q¢<xY\n0\ná~dÿ\0YwšciÎcNÜ\r®A»ŠÓ¶‘¢|G#çï|§®:f·˜Û_i»õ;õ‡\'÷P×ëžßJÍÎP•ú¢¤ŽZÓJ±º‚i\Zåáš8‹¨Ûœ‘YÑ,÷¸®NvúÕÛð”kiFÖqÁ_j¦˜@®Ø&ÕÈnÖFåÝ­œ0½Àð:-3K¸hàºE}ŒÃ¯§­c¸`y„ã¥\\v‘›Íãæ\05gì®¬Å)\Z×ÒX1-#‰d¹Ý–sù}+Ø°‰å$(§¯µ?sÜ¤äUÈeŽe0È2ÃïcŒÖ‹¦´!ÊæJEÀõ«v³Ëgr’ Ž ô#¸«wziˆ¯•\"¸#·jKk3q*	¢·5ÓÏ‚Ð³qiåA¥n6|Á°;V¥åæ•ª[(»‰Ñ¸Ûqù£?ÔUp-à›MFyÑÉ÷Süÿ\0\n‡Kx–fÞ>P¹<×\rJk™ôØµ.Wrô\\iâ?´Æ—¶,ÁÖâ.{ŸzÒ×mtÍJ;kÛM@LŠ@x€Ãªÿ\0úë§šh¤ŠÔ7“ÉbÝ…Ekipµ¬.û~ó*çt¨;óËrœ¢öF”²j×k§°XíÙz ôèj¬öˆ&[9eÄ`ívQÊ¶zsSéS½ž¤&hÇÈ¼¦0Yz3Þ±u{™/µ¦L„c¢‡	º­-­ø‘Í¥ÙÚßh^³6¤°ü¦L}î¼ŸÇùÕÛ)î.4¸l®A;cÉqüKè}År\ZEýôv&ÚÌå†Ñí]K›ÈÒ;¥pe—Ë1œgÐ~5ãW¡8{³wÖèë”âÕãØÐŽÞêÃN\r,Á°„.cï\\eÞ™,‡í*2%%˜7U5ÜÃ&¥Ë«ÛhÕ£Œä#gß5Zý­˜Åw/ÙÜâXÀå	ïô§ƒ­:sæåß±ƒŠh¥¤éQ>™S!_4|Çâ´á±ŠâU²’ ªq‘×žëPœˆ‘v&‘ÐûSå›ìŽ¦x0ëÊ1ƒí]|µg+·fú	Å-Q™{á›9’áÚ)!78#ð¬ÍCNž]V(ÙqaŒtÅtou¨åsúR]A8€nl2ýÖÈ×ZuU”Þ¦nÛ£—×´¶†åeV\'ÐÖ,•Ç5épÛ<–9P%•GÏŽMs×1Ø»ôB¯žFk\\%Y[‘«´C9ˆ\"È$Š½ok–Í^0¬Ž6ÆÀU»kn9× “°˜¶qÆ+^EVŽ=W\0\n¤\"dlV£l‘š§œÕˆ)-[Ú;S‚àQÜ*}€ŠçnÃHƒf\rH\04í¼â‚0jop#aŠ„Žx«DqQmÅR`\n¼SA_zp\\Sd8ºŒÌº-Ž¼\nÌ™³’+Näá«.åÕT‘Ó½t­„ŠeÆîµ¬KqC¼o6b.3‚zUû+9åauo\0™!!œ7CíNê×;H·—G¸þÐÄHtrpÊ;~f¹-E\ZÊí¡-¹q•oï)èk¿Ôãµ–ÍæUŒNc÷‡*W9+ŸÎ¼Ò}F?í–XÖh£LnØÈäcÒ¢‹r»a.ÆŽ—;Å8hÐIžŽØçô®ªÈÛ\"`3û¹”\rÜ†Ïa\\F›y¼‰ AÀÃG,˜‘‚sé]™iª]H’,ƒìw$Å&Ü6ävéŒÕÍ+\\“NòÀ›cn3@¬äF7\'æ>à\ZÅXÙ¬Úr@Ã…U\'Öüzê¢i.\\ª yÁnq·ŽÄ~5Ék	.¬\\FT`üË‡Ýß5’z\'q½Q\\a†*´dŽÌí=3X¿kŠE…AOÞf\nšY¤¶ÞÁ¼ÛtÉ*	ÿ\0ëÕ´+šiòwjÚjwòC$¨ÎT&á¹‚¨ÁÇÓÚ¹Y5/9œ£¦u<\nÏ›Ta…|Ù£•ä,D\"<tÎjyn;UŠOwH¶¨¥œ«Ü±ÜçpÉ#Ö¼ƒ[½[Nr“<ˆá˜`šê®u¦ÑUÄz–n,F<ÅVŽsÐç­pS3Ë#HÍ¹Ø’ÇÔšç›ÖÆ‘B+±;sÁ«–ÖŠï’Nsš¢«–\0fµì¡v”ŠI\\¹¡¶I£ƒÏzÐKV=§ÓƒKglGÌÂ¦˜„u­c28 XÎ0õ«0}ž6Ë¿;rzÏlf©4ø<’3Ö˜’Î\rRHL·\"ïfÚBðHÉâª#Die\n>¦™$¥¸Á#\Z£p<ÆáI½ÚŸˆžëL÷áŒÀãp\0b±SsüÈ8ôÍD±)æ«°D±©9Ò¥yX?Þàg=ªg€ð+\0ç p}é¤á³Ç4Ædf“ør¥yÉô>ê‚×Ô¯&xèj³$ÙëáS=dsÛ5X@Ò—\nÀ2‚HcŠ‰1¥Üc[r`ñÏ8ªÒ!ÜWó¥hÙy\rQžsÏ¥GQŠrçvùb˜ÎY@f<3Úœ\0On†˜°½Ä`8\',Ø¬0Šr0O<óJÎÙã¸«ì’8ŒhŠñ GÀÆã“Ï×¥R‘6 cÔäóÕ©Ò1MƒŽFA5ýÓÐQ3ù±FO2R@GæÝ†iþwLu«¶â\0@íNrsÏ¸ÍS°ö\'2rIÏ½8>ïCÅBY²uïJ¯µ‰íQp-ZÝÉl’¤xEÚÄŒñQ‚3µyÈæ«oÄàçƒOßó)÷§ÌI7sŒsR+dPãŽôøä12° ãš.®G^)É1ŸJ…Ø6Ny4€ã€iˆ´ìy#ÜS3žô.d~5 d$a@ý)\\Mˆ	)úsR˜\\GæŒìsQù¡›k\0 gœVž›jnîVh<ÅFun>¢¦såW)#(ºž¬Aã·¥jjZ]½•ü%Èo-y#œžzV[ƒ’#<Q\nŠJèE…“8Àüé_%pO\'œb¢¶ùåHË„Þ@ÜGJ»¥Ù\\êÚ‚ÚBÜ²‘–Æüà\\NRQW`£r9qéJr1ÏêiÍ¹&òÎÁÇ=½kØ¡··Šæî(¤€©HÉÁ9<þF‰TI\\¤º\n6^Õ2FóFÎ£!ýzUã§Åœ/d”°·É(T²úçñ¬7iXƒRªsë4Ñ5ÄrÀÄI\'c‘ŽjŸ‘Àv«7\Z‹ËjQCe°\\±ÉcíúV}ÀTe\0ž@Îj”›Z®ÃÚb¼ÿ\0QéD“ïyúUväzæš\nçN÷M¸uÏæ˜ÎsòçŠa9`JTÞÏµA9¤\0’IâŸ\Zî8ÈS‚NMF-…;T¾S\rŒdãñ¦„s)`Z–[Ç’D\nÁB“†Æ0IÎxúÕ«-:;™¡…Ø«HØlÿ\0PÜ*$B%?(cÇcQ£e¯Ÿ\"…B0r…Æîç4°G4¬RÉ?Â9©~Ï²·²£ÆÊz·=©‹!GVN;SµôcîÙ}1RIÆpêÛ±‘ŸOZz+1%OZîümeªìµÔ÷ÊŒLªžwgëNÊ;‹V´8hâfPÃN[C5¸eŽFUl ÷ÿ\09®ÛU²³Ð._O)äm0òŒ2ˆ¤ädtì?\\ÍÛ‹ùeòÖ-í’‹ÑO|Vê=QÊ¡<æ±m\0\0@õ«ðFªû2Ì„ãŒ­5V1?˜ÊAãbÖåâª*‘\"í9ü¨µ€œD‘!¶€I¾µ*)(c…éQíÀ‡AŠ°©±C³Î¦èe›[xÃÆÏ(@~mØâ·áÒàm;Îó7ÊH+ƒŽúÕÏÄŠ7pŒ{UÙ\'kHÚ0(ÁaÓšÆO]º‰q¨O4¤4¬Ê«µG ô­ë/j˜‘d;Iê\0 dW$àíó@!ˆäæ­X¼Ñ‘*DQƒœŒð:ñß­h¬Õ‘)êv\Z¦§snÑËq>bUb`°=%ÏŠl\"³û+¼“~t]¸ãùæ¹išÂGG\rµ„ŒÀcf{ÿ\0žk-ïç\\JðVF%ÆBxïZ¨ÆÚ“rkûåšpzî£åg=»f±Þëuñ/–ÜrTrMVº€\nœžYuÖ®é0Ã\\Ëw\ZI(JH¤”‚ß^x«cIX¥w¨‚@˜\09·=ª¯ä¶a<M\"ÊhÝxÁêî§µ¿“Ñ<R\"µT~ñIá²=©ÿ\0e–;G®É\0Ç\"m+»<úPû\rhP7QíšRvK–Ü†Çÿ\0®­EqwÛÉÙÊVhZ²}i–iöÍn;3:[C’…™òª¹É\0ÒÉÌsOö/ÞZ[ÊBÌAœdþ•›zèR5-´éžÊMiÄs¶HçhêKqÅ\\{-GD·\Z´RÛjìÞ\\GîÝ¸¨b·—E¸Ê]|’ÛîH\nüÀý2+[‚ð•’õ\nÛUN~f<p}…ì	Ü¿°[é“µ÷Ú­u01”C¼ÌdŽØÏ³ïµA{=>äOw³ŽAÁÈÀ=LÕ¸¼Q¨[‰¼’­$IaÉ·ÓŠÍ¿º³Ôd…ÒÝ`˜Å‰cgÍÏ?­c{+»5mu{xí%šòI¡”–H‘—qPFs‚={ñ\\eáÌò4dbI=y=jÝßÚc%Ô¢rO#95žügåì*,Ô±¥êw:tâH¤‘FrBfºÛj¡¬ÄSI\"æA•hÀ –$ð;W\rÃ.î›¹¯YðçÙµ«{M(‘¢‡ý\"í”`ÏÇvÈéS~Y\\·ª9)ïuäµ»±˜\\ÛX^¯ÚL7py[ÁÅQ±Ñ®î,\Zê\ZHÂ\r‹œ÷9÷¯¡um9otå‰ÂE.å	 L…\0äqY¶ÞÚcÛÚL!¸_›Î„c{pàðÂ©µ\'v-VÇ‰A\0Š¡%“sË¹€°ú•7—+»ÛA—»v`lä±ý*MeåÓ/§ó|«€²•vhÈØã¶?:×ðYÿ\0J}jîÜËu¾nB\"`€¿\\œÖRŠjã‹d\'ÁÆ[+\rƒF$—l’N\0}S^oðÿ\0M·´X {˜ä\n›Í$ŸÃ¦*]6ôJÍ;D£OGÌ;ƒ“õÆk¡²¹ûe¸˜.ýÓž£Ö³§S[2¤pž6²¼ðî€×šV§-¹`p[™1×òª?õN÷KºÚgeËN*Fr¤wàñ]‡‰ÛI{(£×$Û¼…B·F dtúU-\nðˆ^-Ean…PO0+\0:ãïÊ¶”/&nZê`û\\êÑ$£#\'#ëÅ\"ë–×7ÞÇý\"R2NpŠ=Ûú\nÃ±…nÝaÕu%»W.­lƒljÅŽ8ê\ZÜ}.(í-ìÑ·Jã ÇÚ³„t³clY5±L¨ñË2>KÌ¸*‡ÓªÝ¥ô7¶ë4[‚±+†9¶•¼óJ3JåØÆOµY‰cò‚DH@HãÛ­]’B¹09®~oÇuw5Äó–-‘±xÇ9ëùVÔVéo»a`îÙ¨%¤ÞYÀÈlqÉsXÔ›ŠÐj)žãIe}Vâ+¨ÈŽ9>F^G@qùW9aknL³È	ULv<c5íž8ÐSPÐ®<›tWA¿x?x^2kÆÚÎâÞÖBûQ\nné“ƒÿ\0ê¢n­ÔvÔ¡z×9vÈ$’p\'°íÚº¿	›gµº]Rù­È@¨$RAÉÁ#°ÅbÛÛ(Ôm–y	%UØ±ãi®‡S­ÄqËÛB…q»‡\\cõ¢S[1%ö£êöV+e}ºíÊc,‡8ÎxÏrqÍgèöšßŠ‡Ú/Z	`ÀŒ(Î÷²{Wk/Ú®âi§H!·ÁÆq¸Ç¯­vúå“ê·YfHí×{\\7È¬{cÚÓwV;»»¦h²ÝÛXGq9r¥€,>PHüx-äßlÔe‘ð¥˜“·Öº_Äæ-&[gË^;ù‹:IÀ#}}ë‡2§ïzÕOÝ±)YšgP–;qj²²Æ:ñœVk¶OÞ${Ô~fFrx>ôÝÄ7µ	X¤LdÀëJ¬XŽy5\\ä¾çV£Mª<÷¦U‹JÁ\0žŒwŽ*RÙ\'ð©… “Ï¥\Z.ÀÑ‰—ÌfH$ŽµßÛÛÚ¨‹ì³â6\nÄ3`¶z†ú×š	éÁÏ¹aâ)¡ž”+˜ñƒŽ¸9¬æ›)Y#¢Ö#¶þÑI,l<²ðmÙÝÐ~×-+aÙÉÉ÷©¦¸Y¦iÀÆâHPzU‰U¡#â!äúÓü£¿±ìjd1È»T÷UëXÞySjoÃsÅ;ØMeµtŒ;ci5*¨Û¥BTñzÐÔo\"	ˆÔ£)éô¬õC*´®O®}MT]ÉØ\0ýæ@ÀÎG5h0ÚCŠV5Wäî^ƒŒp9ôªeDy9©ò¹ïU‹a±N·9¥r›±cw8Í8Ÿ”äñPg$\Zq`Š.	€<ÐN) àñùS]èl}§<óUñ“Švð	¦—£c6YˆìÊç4é¹z¨†53±hÆi*ä,Ãu?—?…W`Aã®ië¸Í&]‰I…qÉjE`A¨œÒ£V g Ò°®,Ì1œÕbáTóÉìjY\Z«7$Õ‚F3NA¸ŒÔiÃ“ì*T$.PEÁð2	ÉúÔ[†}êFÚIæ£-Ÿ¨ §=i¬H=i»Ï~Ý)¬I(°\\pzŽL“‘M\r´~õpE&^ä$œS{gŸÂ¤uÏN”ØÎÖÁ¤K!`ç*2dSœ=ëY.>Í¹ VP÷sV.Qü¨waì÷u8úã¾)«XW)iW6±ÊZâÙfAü;¶“øÔWÓFó±Y\"nBÒ·cðíÎý¡m<­p²l’ \n;Z¥sáÛëXdšh$Š5Ì£náØ¨=EW³m]’0ÄÁù\'§µ=Ì OACÆPŒç¡§Gq!‰±ü$¦¡Œ–;Id-µy&‘Ñí%ýâ6ñ{`ÔÖwïcuïH·lpßZ‹RÔEùwòŠ¾~\\\0¡.àÊæà““€Ý‰®§ÂÞ%[H®,/%ÿ\0EŸ¸\0€2p8ÎkŽ`{Žwöô¦  nÎ\r-ÄÎÁ®¬`fâU†MÌ6“Ž€ŽÕ>›¡«Û,67yO 2Æíœuü«ŽŒ–ÈvúZí­<Io¤h0Ú[ÍÃ3°+Ïr§¿ÿ\0Z›Jnì›Ûc±Ò~\Z3Ë!¹»Y6YWÓ9Á?…z¥•µ•¢A+A@Úµâ¶?.Œ0ŸÝonî˜çŒóé‘W£ø¿wi{\"ÝZÂ-—*‘/ÞSVÒ¶„«ßSÖÚö(¦’&%ˆâ±uEa†K…¿TnL·o¾+š×|{¦%î×R‰’à&qò;W\'câMOÄóÚéºT÷6Ô•”¸þ@õ­¡N)¦Åwc×ô;»›í\Z)¥’&”ƒó¡Ê°ìj¥ý´Y\\K4¨Ò¤{I*\0\\u5æK®x“ÂÚTú|pG\r³³<{ÁwLÿ\0æ¶<	¢G¯Ô5´Ï 8\r+‚¼îôªqt¥w 5us¢ÑuÄ³ŠâÍ\"k¹Ð\r\nåqÛqý+ý¦Öfó¦Hí®¤;PHHÚ:~UÜ£ÙèòJóyP†Cç\n:WšÞëšŠ®î,t[U•<ÁºöAéøÐµo•n;Ù\\ò8È›XP?:šÞ¦*`ã1ú{ÖwŸ¹€làzSþ×q	½›~…>•ær¾aüÅ)L‘Ÿ^µ§d¤œžh2/˜§vìô&¨ÌY5q•·%‚1Ï½Ks0‘U}?J¬Òçh!G¥jhzpÖµµ/±ß„ã9>•²I»ŽÍ±,\'eàx„‰ àÐúŠt…ÊüÀ{W¶øáî˜¶w2´WÄ@vÁÊ7Á®cÄš.“§jÆÂ;”™¶œ9\rž‡Þ¹ëÖTûš{&ŒûÑy§¹`íV1mÑ»üßíP·¦ç’ÊÝ¤$|Ò$Ò®ÂË–mdekbAPüã ¨ÓN½{&žÖì$NÛvlÆEqÊj~ò3–’¼H ›ÊÜòq°	ïYÏ$7WI\"nr03Q4M<ÓBóŒÄØ\rêje³’ÎH„“òãr:×U8(ëÔ†î\\Òt»Ù^M‹±\0Égà}k­ÓáÓÌ\\rl’ü§?Þ¬+Iµ!!g¸;q€AÁ?…dÞLÑH@ÆCä²ŒPïVV•™¥}k¨­Ô‹É¾ŠØÉê?\ZÍ—PºÁvÒî#çÎWÚ­Ï¨OvgHÛB1Ï<tÍFaûIy&$·¦;×L\"—Ä‡\'}ˆ\"¿Ü=)ÒÊò•bHàf¤Q$€Å uÆIÆ?\nDˆÊÛTg]*ÝvW…L“Ø vÍZ–Ñ|ÝöèBä|¬rj4‹G\"®Â˜Àò)Év\Z}^Èß†, r=ñMd‘ÝƒŽ9!†ÜÕÙî]¦Y7n!väŽH÷ªóÍç8/ßZÍ)-Ç%®ˆ\0?x´Ôöâ5,òF:ãôªƒ9ŠÑ‚Úmå$†Ýc×µ92¸³˜+,+Ž•\\®aÀù@oÖ¥FÀ&9ŒSŠñ*‚UÛ€:Š#-FÝÌÝ²E2Ê¶E;•‡¨§Ä²_\\³î!~ø«39*“ƒž*ü;!™<®Þý+YÏ–>bBÇn`·’EBÃzÓ!µ¼µÓî$ŠlF˜Ü¹Îsüª=KíIw¼üÛ†\"ÞlÅ´d€Øóº“YSNÜÅ\'b„°ÈŽÌÙ•ãžGáTM¹$IúVºÞÜCr¬ªT\0AUe€=Ã4{—{d1ZÂNú¢ntžƒO»ÓU@ÿ\0J…‰#<Žx#Ò¶®žóCq{!Ø²22‹Ûë\\†‘˜uh‰E?‡¾k¶ñ$Éyk%Œs)™Oé^.3(×Ku/ÀèSN:nŠÉ{i5ÃMö¼G2à9ž¿…FtÛ¶xa¾-*©%IÈ8®OŒÃ¤¨íZÖQØã)½\'WãžÕ³ÂÊ•¹dìˆ½Æé±],-äJß9ÃÞÆ»\'¶ŽòÆ8.ˆft7C»EgÙÙÉg†–lsÀÍ[»ûa€$Vê¾Y6{JæÅIÕ’iÚÌÒ‹µÓ †Ò-)o-Ÿ›M,–‹k\ZÇ)2	T³ÛÛÛr+qhfxÏÞ©]]­Äaôü*ðžÖSi«¾¬™ò¤c‹Ù­ÝJ6Jp	êG¡¬û\'ºy•p²G¥jÍfÈåX|Ã­G=„ÖÊ*WûµïÆ0‹O«9µ(,\0sŠž4\0ÔŒ˜ª+a	ƒŠz± ¶€w¡/<\Z³nzª²Ç¥OzPõB4â«@p*ŒOÅ\\Gâ¹&ŠDi˜É§È¤Í@Á—Š`^zSúŠr.h½„DTâ¢“¡«l\0ª“6:UAÝ“tvž•xKƒŒÖÍà-YòC·$×ZØF	ŠEmÏÌzW£xjÁìtÏ.aó¹ÜÀQÒ²<;¥­ÕÃÜÍhTá9þ!Þ»\008®\\MUð#zQêfêºu•ÞœöÓÀ¦&a0s×Ûë^hþÔ#½º•!C^8·Ì3À>ø®Ây/ÖI4»©’gòÁÝ³y$óÖ²ôÃd·v\ZœíçÛÉåD­÷qÁ>ýªé©Â/—S9J.Zèp–ÖPÝ\\Åo$¢ÎL•ÌÃ³ÀÇÒ½NÑF‡!¶šû-,&HØ|»z×/|šv£âisdíÉåÅq *º“†ú‘Á÷ÖxN»Õ¬ûMÖKf€G\Z‘‚0~÷­mVVWz\"\"¯±Xø¢ÛÉ¹n¢œH`°’½‰öï\\V»ªÏ©jÍ%”rÁöÜE‰ôÉéé]©¢}“R¸ÜÁmª±®év.õÅrÚ¾«ê+Ì7&å\'‘Ê\rª	è:„ú{UB0Þ\"m·©¥cþ®–Å ŒÃnn2\08-Œqõö®ƒÃþ[Ë9Lù¤Ž`õ#ðæ¸}F÷ÂBÚïO»2y¡á‘d‹€ÙäÜwõ¯A°ñ³Y\rJõ/‚tˆf9_£?‡ÓœR©Ïm68ßè7:EÔ²éö“ÝirÆ6È¹}„ulŽÙ­u¸²×´Ñ·PI=³<b	”o\n@;€ôÏ§Cšï4_³\\h–Ïb)£¨ßÂðþƒâïøph×úœÖÑÛÜÛD\\\\ÛŸ.EaÓ‘ïüë™×»äêmìô¹á¾3€Ùx§Pµ[8E)Ràcž¤~+rþžÔ“ÌÒÊÒÈÌò;fc’O©¢Áè*[»Ô¤¬kEJ±£#ï\ZÜ²3ÏjÃµr«Œg5¥ÅN	5¤DHÕ2mŠ‚ICz„Ëž3ÍBÌCšÔ›\nÄ³›ëNR¥¹$Ä:cß½:8ƒZÉ;º®\03z‘úSÝ§´´i#R-¤r¶pÇêy¬¥7²\ZBs#N‚D:\rßxûV]Éh¤\\°äg\n~ï×Þ­ÚÜÀŒ\rË«.L˜N1´úV}ß’÷r›bÆÇfþ¸÷¬”Ûv-D‘w~qÖµtÉ-ÖB×,p˜Àïg¯éXªH\\‘W¡¶–]=§÷´LKDªK*ÿ\0{>•S•£¸¬Y¿ž8n[ÈT’¡[®=MS[¹2®Fî3Æjâk¨å”J™Œd£6	úzÔ*žTÇí¦{Žpj9´³µ/µ½Ôú‘ˆ(’@G*2åéT\'$]H®ãpb2½ÓÚ¦´ÔeƒPYãG»;äQ’pzõ¨n^¼³¼Ýp«µyqë¥O;¾£i¥8¨ˆ ‘Æ}sW¬íÖhÁ’Fdç\nœOåOþËt·¹íhàm¯°üÊ}qéž´ùÖÂ±[ËŒÛ$‹½›$8ô=±RÝé—É<m$@4¸ —>œUÝQW‚æ{X§‚!‚•Rxî;*Æ¡âõk© ù¦¶Ë}š9\0\r@žø&Öâô1--.ïÖÞ	%e,Ì¨2@Q“ù\n§¹šGÁïÜWkðêÖòêòýE¶XYe-Á”¨Æ9íY2Z°ñ£Gç\"L˜°<í8=yÔûX¶â·/—K˜—6²Ã…s‚ÈcUÊägžZ·q,“ÜÊ÷$‰zp1‚8Æ)÷C¤DþhÆAôúÕóX“<nSŽ)rÙö§²îäc“ÈÇJš4„DC£y„ü¬ê(– @UŒ{À8\'¥X[)çAäÃ$›@±OÒšÑH)C•?sëcDÔnLf0òÉ›˜¤0Æ Ÿ—8ÇrÞŸNiÓŠoQ95±ÏKy^bÆê°XŽ3éõ§ºf•Xl\'o§8Éü«²ñuþsdÿ\0ÙS9†VS$Ã¶HäØãÖ¸u’CY¶«°\'¿è)Î*%ÁÝŒnÏ?J”&ŸÐÕ`­	æ§å»çÞ¡èŽAÇò§¬e£.IÎi›H8ÍH2œòž SB$çœÒçaÏzNKPUWnÖÝÇ>Æ›=¼±¡-\"åÁÐûúŠ»1N—%.„N0Ê€$Éè­f¬eŽdúQ*¼Oµ¶œqPÕÙI±~Ñ&ýáŽâ»NîMI¨làœ÷ª¬9ÏnÔ«· \'ñ§k\nÚ–â¸h®V``Hõö¥†þKyÞh¾W#‚¼ç ƒØÕBvŸ©©í²Ê`…w<¼œduÇéCµµ\ZzŽ–àÎí;csž:ŸSïÞ¦µÔfµ>Ible§\\ñéÞ«Kå$¬…ÚHëúTDAƒhi4NÃÄÞ!ûM¥¾žcŽGTÕ\rÀãŠä7r~´öfh<(b>µ\'?ZŠTÔå+±K£9íJ ôfÉ#š™ì®\"Š	ØmŽS”bzóŠgÊ²•ägŠÒúTCÓ<ž)Nâ1’zTÌQ¤8Æ3Ç(•a’‰B¸9ÝœÒLi&pör\\aŒ³Ÿzl6^cÏµ@ÜÄsëWR›í¬óJûpTª€:û~5NGß òØÜ{T®`vèVØUØA¸«134G¼<í>¾Þ‡ŠW”¶ì,Û³¿=F)Šâ’;šÑj„Oj.aÅÄ‚¤àŽHã“¡ëUœg“Éô«\n/ÊÇ‘ŠA’F{Óê&ÆÅ˜ž\nI$úT‹lÃkmÈ5$@<ˆ	\n	Á-ÐVÂ[ZCuåÏ& `§#æ+•<Q{ÔÌŽ1ýÜWMán÷F9·XL%†ýãúý+å †WŽ&,ƒ$+ŒäS#‚^x4ùT–¡ªØÝÖõ(õ{›iQBâ\nço©Éúã8÷ªÉµÄrË-ÀIG cï}\0ª@»¹ t^p==RGŒŸ/€ÝŽ¿­h‰HI9Ç­9$÷ÅB²±%CÂ•rsÅcF+Ž›†à:ûÓe¸]ç…<UFm ;©ëŠFmÎ:ž2Ege{­îÙ\\ýÀF@ì=…h¼Ñ®œò¢BvÏ%±ü«&ÎÎiíå™Ubhaœ“W´ëº²Ë++¤~b1’Ü+Ž´à¯®Å¤Ù«ÌÖvÉId›F?Z†+¸cv»Fº-¤g8 ãüúUë(šiî#ûT€[€¥¡	ÐïÞ²/¼1\\™¤WË,ƒjû;×Oï¸¦hádI1‚ÞÙ”2ŒHH$rzVdí\"ËöX™¼èÐÈ«¿åSþ=xõ­&IÉ%‰Àg™Àù}…WµÓ~ÏxÓÃ1~à~‡\'×Úºpø¾Y{ì‡£Ð<>—S	nôð=¸V6)È8woBx«ú¶…óÈ²iò-Ìgq¹A¼Fqô¦iúÊèÖN›Ä²ÈZC#ì^Ãé\\äþ\"†ñ´¨²²O	\"yBgb‡ÎáŸÖ½\ZˆÖŸ¸ô\"JÊÆw‰õÓp°§›‰\02K\0wºx¬GÖSPtK‰Zîs˜\'ŸRÒ·|E{i}c6¤6;¼­0]¬àwc¸ÆÑøW!\rƒÝH¿\"‚Ë¿¶ä{fº[ÓAE\n–Ûâ‰²í,äù@Ô69©Ry¬š;k¥Zî-#w³cÜUu†ãNxîp;¯·J¥#—“s1$÷\'&¡¢KWížJ˜cÉP‹°c[6óY.Šo..á{»‰vV<´J3øñ\\´ nä)àã>´­qXë4/)™¼™ÿ\0Òö·–YFã‘Ï~µRþk{Ilž/:só4ƒ€\\tÏÓŸÎ²£¹‘p#m \nŒÎšêÏó“’ç×œÒål­,\"@[!sÓ¥U`ª©¬³IåÆ798&ªÎ±E<+	ÁúVRV.%çg	´¥¾b@ôõ¯Søoy§i\Zs^ÊÙ¸ebø<¶3…ç·­qéW\Z­²›KS,ŠØÂH÷üš³ÛD–‚(–b>lwÌäÞÆÈú|M¤µ”—RÜ¤I7‡#*OAõªV-´Ôíæ{ŒcÉÝ#më^Y<—þ$?b³·[¤YmªªY¾öO¡Ià!.üDšhgŽ’íKÁÏÜtÏCWFÒøˆúD6?ð—ë°ÜCj‰¢ÛÌ%2cþ>dQ‚ÇØ@õ­¹ôÉ/µHå–ØÄ…‚¶Õ8àîÖ×ˆ´Í%—N³„Ïp£	kh¡ˆ=Çñ¥±MnúG}R(­-dA™“þÃ§áéNiµä\n×ÐÎ:ÎŸ¦<¶m™v˜—pcŽÇ~Æ§´køì„’\\VbF@À…Kp\0õç©¢A§Ø„’ÎÝ¥É–aó‚	±éÓ­>4»Õ\'¸#´Gâ=ùV³êEpÕ„ ïÐÕ5\"õÞ‡muuo¨0ón­ˆžO›Ÿ\\3W¬íÞ/2Iç àvT®ŒmÙT\råN9ã5ÏËu¥Ù¼7³[0*«/°“ß¾+hÎÉ&+uF¼\Ze­½ÍÄ‘DIŽæ`:œ~T©3Çpöóô\02°|wüEgv{g‰\\Kr™ÂO×Ò«ÉâK!ie”0 ”\0á³‚éZs-Ù\'H¤0ÈèivŽÃªv²	!…ƒìRQ‘óqV\Z@å£FÃã®:T©&®‡bû±i¶ÝÌîG¹éYvÐ\\KªÞÕpœ4? ^GçÍiÁ,„•Upçnz;Õ[«â·?d;c¥DÀ$Ž1ëXT¨­r’fuÎ±§hº|–æv•‚ôbX–>¤×’kP˜ï\Zå3´ÊT0O#«º×â{ÍJfÂNæàsÇô®Y®cy-ÖBH\'Ž•…9¹Jå5aú•îª-ö#@Ã–ÚÇCî*ö«\nß´ë[EŽâ)B´£¦Ñœsß‘X«­‹4–ÞÊ7YŠ29©a¸mäKzÓ4s(ÆÎCqž¿ZÒJLi¦aêÖ_e¼òÜ´Ëž‡<Š[YôËy¢†F	p›d\0õªº¦¥5ì›e¹SœžþõžI)‘Áõ®ªi¥©Í–¯.šæf•ºŸJŠ8Ëy]¶€qŽõ\Z)æ08è\r]Kö	çªËM¬˜ÆF=j¯Ø\nàê(Ug(\'$JX•¥‘U°Á=+­—Ãsivº^¡w4f\rPƒ2…ÁPHÝ(ºH¹ˆ4©ã¶[†L†@üs€N9ô¨¶áNÞ}}«Óïõ=ä][DQR8¶[áwoÃ½y°ÚFÁþæxÏCSó\"ía‰ÀÇzV%Žzgµii––ó¬Þh“ÍP6\08÷É®·U¯‡â¶‚Ñ`¼8(T/Ï ž qVÚ@Ž	‰zÖ—»$€GcVZÇÌ!–?,”ŸVªäŠA¶RYƒéS{-Ô/hOqô¨ÓÊ‚Æ[p\\Gzv¡|Ó®8ÁëTá Âòz“V¶&äò,ˆàŽsÐŠ¹eqyˆ•ÕóŠ³¦Åk«M126NÛÿ\0×SÌ©ý™û¶„Kå•¸ô<Vw\ZF\\ì÷mûÆäg,GZ±k¦Âö0K;<q´Þ[H¬Fy8íT<ÇhÕ|«Iõ­X–XìYJîXÿ\0„ñ×½Z•ƒ–æå·†¬^ê9¥¼T³’|&çš q¸ã×š¯ãôù5.‘o‹HÔFò/Ý-ê+\'íï«$Y„*ã~µ*¢Omä™<ÎvçƒîEW;F.ì°ô÷§+?Â™2<7ê§æm£é\ryÍ!qƒÍ@ÎÇŒñH	<f˜Ña$ÒI(Áµ\Zð1M<“Í\0öÎr00)<ÕÉ¨]˜‚jäòjž¤¥rØ—#=9«HùLg­f©½ýêìg\0zT”²	âš¥‡ Ó¤Çëßš–Yå»O2VRB•P8\nC#-¹EDF3R Tç­+¨:w¤‰ê@Àâ¡tÎ¥XUÜàqÏJ™í†mëòã¡ëNàÌæÊç“ÈÇ^¢˜²ò“žjÌð0\0•8=*³FÐÉ±ÓŸÆ™Ìäp3H¤í ŽiØaÉ¯¥4ò¥RZÃNsïMßŸ–¥aùÔH¥¡7]¦£ÉÚ”0\'“Òƒ‚zÒ*ã—S<Rä\0zæŽ½ªFKm4qÌ¯4~l`ò¹Æ\Z»w}cqeU‘³ƒ9ïšÌdëJcBÆ2á—Û<Ð…c^mRÊõ’ÑÙa)ÊdŽ}®j\rsÅú–¸Ñ‰—”`*ú{ÖgœŠ@¹è=*ÔšV#r)<ý:3+T_-Ì`ç={þ5~Âö#*–1O:tf\'f;–µÎ­Üñ[q+TìMK¦ê³iÓ3 W\rÊëœŠÍÜZ†ùåœ…cÊ¨~Õ•$Š¸\0cëV/.þÔêw7›·°¬÷mÇ=hœçâœ¹|\0@Éâ£+Ç?…((â‹¿kiöˆ¤ù‚˜ùÉlf¬%Œ—háîÀ†K®ö3À>¦²„›F:\ZËj¤Òèd¬²FqÔNV–gÉcŒdòk_L‚á‘ìqiÂýqØÖÊx]õX¡¸´IÝ™¶²¬{}0ÇµC©ŽÌŸÃºF—:[OˆŽQšdœpÏ\0÷õÅz¿…­™~aÑ¢Ý§L¡¥b¿(U?Ò¹Ÿ\0øjçK¸œj«áNØJ‡9à¥zÄ6ÑD¢ÆHQÐg­RwÜ›—Ú;ê7’Å:Åå:å›?€ªñ3ÁšLñÜ^* %•GsØý{S<_ãk_D!ƒlúƒðŽqõ¬}Âú¶¡®Úø“_¾·¹*	ŽþâdcŽ£5Õ¯*u4Dò£>ÒÏSñ¶¦©´–ú-³ò%%^o¯·JîtË8t––V°¤\r’\0¸ÿ\0ëÖÄE*•tµZ}¬,#ÆÜãæ\'­MJê~K°rŸo(¬¡ê)Â0ñBK T·c\Z–‘¥P§÷ÈöØØ‚§jµ#¼EANdVa°’7–^áÛ×Šì§Y’6ÜÎÍ€˜ä\ZO•ê6´¹qmç»Ž\"·bîrÛôÇ¥oxbÃìÆKèäQ@£æ\rž1ZÖ>ŽÛNŠùo\\Íå’È¡ÃYZŽ£j³y¡Ü¼xû¸tÇZ˜ÖŒ›ŒM£µg­_øÖ-\'I·»·ƒeÄƒjÆª\n¿õÎkÏµ7!×¿´%-dó)\'hÈIr=+ŸžìßZYKý¥º4¨µë·ý¯óé[±ÝÇfÑÉ!\r vŽebA|ã·SÍsb\"ÖqT¨¥îÄÒÑŸû>wþÙ²’h\nñ“÷X\ZÝ½Öì`Ñ§HNñÄR|¬°¼óXöº‰¿¶TŠZ‚®ï˜¯N;ZÅÖü­BóË²šYbp¦Ã×½rÂõ$£#«#>áü©Œ\0†hÏÌÀ`äõü«UÄ/jáˆ8PTõç½`¤R$…[±ïW-Ç–ãx,ù—8¯]BëC6õÔÑ°».JHç$`÷©eŽ£mà•—¿½P…TÈ[€=*Ü¯B‘í%Täæ­ÒêŒÅŠŽÐ±ÎIâ¬©‘íÂ ÊÉ\ZDÒÅæ)Ý\Zôôõ©måùð«CZF:]‰ [o”àÓ5§cn#¶2°ù‰ÇÒ•^f‰#0©EqÅ#ÝÈì!VÊ&Bœc\"‰ÉÉY\r+nRHÔÜH8=*GEëÓéP§ïnIÝ³\'½[hŒp3î`ëÔmÈ#ëZÚÖ%•šeÆÓÛ¥:	`Q¿Žy òŒ œ€{SRì‘éNJè n~Ñ~³ÛÚµ¡Ç\\ÓÞIIˆ„hç !éíPÚAsµÓå¼ÇŠHÚå÷º•òÔc\rý+^ˆ­K’\'›hf–›xYu>õQ#\r&Ø‰*{š’K«‹¨ÙÌIü …I”EEq=ÍmÅj\ru%T6¤ÇúÂ>bZÇ-£Æd@Y€a»Ò›g~W\rÓ5ØÏ¥Çsh—rÁ½c^«Õ‡q\\õjrµt1È\\ÚÏk1GÈãv3‘ƒU£P…‰èÞ•¥r|É<ŒSTžÃ¶j»*¢˜É‡¯zè‚V%«1ÖÖ¤Ê£Ì\07·jm%¹Ä«¸FNHþu\n;[±n\\é[Vi³ò¯WÊ)€ ç>ÔI8êTuflöSØ]+,ë# \0ƒÈÇ§¸©c1VU]‹¸cqÝ´Ó>ŸZÚ»žÖFILJ`q&Ì~•\r…¥½ÜŽvÌ©ò(ä))^7’4åWÐF¶¸þR´J ¤`Ó­­`k‹v•r’6=½F&’4ØÅ– pUxæ›$3@«¹òæÛü©ò6¬Lš¹Ô‹ƒ	¸ åŽGÐŠ¨ú­åµÉŠî5*AÛ´u=]…Ú÷L‰·´l0X÷â².®æ¸ˆÇ(R7zó0ô]Vá%~Œè”¢•Ö†•ãKj©,\\#\0Vb€[°©c»ymdŠbYŽ6Ÿ¥Ikf÷,B”u&»ð”ž›SèsMó¿t¿a¸—Í˜càdu«\Z„snWhfwž††+om¶0FO#¸^WvˆG\0ã×<šç´êMIh‘m¨«3\nXLlTõ\\üZÓ(®ŒK|ØàÖ¨ÜDA+›ŒW¯s‘1§ZŠG(\r±JóM%d`&Ìÿ\0¦Rlš³ûMfµ†#¨©ÒC‘Šb7b— U¨ä\'½e[¹`_Žõ”¢2êIïSpyª‰ƒS#ã­a$4IÈ§#ö¨ËR+`ÔØcä|ƒT§|U‰UeÖBe)¤È÷¬éåÏËž*åÚ0SƒXRKóÄäzWJÙéúž™in°Ep6¸à“èO­iXêöz‰e·–^¡”ÿ\0]p¯Ž!\"G±†ÿ\01#Ðû×?p—òF×6·ÒÂ¹ò³!àŸåŸÊ°–\Z2Öú—\Z­oŽlÒî=g|Æ$ÍŽÃ7)Ô^1¬kÍ}¬Ïq)mòK½%s†“…8®ñ<k©iwgûfÉÖe\n2ª6<Dt#§¸5˜¦ø«]Õì­àŽ8å‰\r¸HÆYÂõèyë[Á4”[Ø†õ½†_ÞmÓ¦-¤håžÙÞFù°O÷_·_~õí6÷vš8†ÂæEI\nS‚wÔšä®</,Þ¸´ž)-&¶€aPnüiº…Íüþ\ZY°ŽKä¹€œ3å¢É!ˆà„VU\\jé}\nã­ŽÚKËy­\ZäÆvãj³¦	Ï×·JãIŽã]ÕdÓÍÅ½ËÂ˜Ž#´3ã9Ï@yÃŸêW+¢Ø_8N<Ã$,dlŽpÊOQÀ ×A xîMVòðÙ¬ks!fŽÝˆBØRü€üh…M;1J\\Ú³•Ö|)­Úµ­´,¶îD…ÜŒÃ\'$«‘ès]×†?µïo-®µ!ç	<ˆ\0¡åN=zæ·/ô95õy\\B/#+:\0FõQÂœwÉÎzñ[\Z&Ÿ=…šC1fh›bÙù;÷Ç½*•¢¡~£ŒfjËyá›»{dG¸Ñär¹+‡¶f99ù—¯n+…øÍâ¨LQøzØ’á–[“ŒöG¿¯å^‰âË‹{.9îÁûrù“°\'*¸=1îE|µ¨]Ï}y%ÄóI4Œ~üŒYˆíÉ®uf”Þæº§ÊFNGZ’ÃUÀ ‚R¤˜³õ£˜§cEX®íéW­îuäŠÆIñÇcÚ¬Åp7œU)¹ºäòiùR£v7t”—„x§‰ÎTîïZ)¢5:Ynä¶ÑÛOýÛ+ aŒ©Ï<úVS^ï•\"™±¨!Wv9=óU¦»,À;bcnú…Ød?u\0É8©œ–ìqLK«Cj‚)‰!€l•#Ö¨à«ïŠ–y™®Þ=I¨šAœ÷¢Lzô®¯M×Æ¥˜cµ€ÌbÙæ€Km=Aø®=J»bF+ØV†–BÎCÈG/ô®zê2V‘KBòhú}Þ—op×‚yeB1Œr¦¹É¢2G(Y2È~ïlz×q­i¶ðip\\ÜN#„czòÉÇ{f¸‰#ƒìãtŠYŠŒ`‚}qÅeJ|Êå4f\nà68UÛ‡W­ÓtÁ†ëŸaP¥¨x·³¢îÎÐO4èÐÛ´~|n ÀµÀõ³³Ð›\Z—Ïj÷V¶·dNY6p9\0þ\'¬xnðé¾ ³WÏ\\“$n0`î>Õ›dñ‹§‘ƒÊ\Z6Æ9ÇõúW\\Þ1ŠM:Î;»xYí§WŒf\0HÆpFG×éN	7a4Î¯Äš.•qk½OŸw[«{@¤\r£##¿LW˜O½Ü+oŠQ˜|•Àu®ýµÝ?RÑ®&E1Ûº9Hãm»_PËß\'œ×<’Þ%Åì6^B3,Ò4\rÂÂ’¦k¢q÷53OS³ðŒÌ²éW‘Zy\n>Ë\"ÿ\0³aKÔnÇN™®;Ä°É¦x†îco˜å’D…˜ÿ\0·^:Ö†ŸâøåÒµ¸]Zæ%òÌO…3ŒGnŠ\n‹ZÔáÕ,\"[iHJñH åÇ8?\\ó^u:ngCi£”¸Ún\\«ÉÉ;vóßŠj¶3ŽHÁñ&	SRˆ•@FÇ<“é]I\\Åî@yaô©L[ÀpjF„¬»AéÓ¶G­u^ðôº‹4ù\\Ü!)­”s“èzcëNÚ©CB·Žyn°‘nÅÝ(:={~zÇÂQIp!µ’Xõ!9hæ\'	°íÈÎã­cÉØ_º¶‰ÁLt=\"»xˆY@Ì¶³3ÊZ8Ö0>Và’sÔäzR³NÌLÉñ‰o\"Gr×ÐJFøÌP)VfÎzóŒþ5ç¶VRê:Äq•O*Æ»ŽIÅz~¹}7†\\/“æÂÄÉ\nÜsØþuæ–®ð\\¬áöç†xÅm(«Üqz\Z#Ó­ôÝVkHDXÎÖW9Ãôlã==«6™ÁÚ¼¼V¥î ÷ëÚ2dHÂnIãª« ¨l‘ÐƒÖ³•›Ð/ Å·r»ñÉ•Wã‘úÕ¸÷,ŠÍ‡qÆF*O!Y¡ù»ñBB½ÌÐ˜“¡Í?ÊÜ=3WM«méÒŸ$8ãéTÐÓEÖKwYÞRi÷IçÈÒ¨V`Ð\nÒ–5#*€`Œc¥Dba¸\0¥XG|Tòê>b„/ÙP‰s)\')º=jRWv2*ïÙ÷3ÂŒÔf1Ÿ”pi¸è!HècàgÚ´“O±›G{¿9¢»å1ç¨ÇáEœÆÄLcJw²ä¡Îx=³Ò´5«›Y kk$´™!U“‡#©úôü«7‘Ëã-ÈÏ­4£g U·„¯A‘žæ˜TœŽõB-–xåÈ¨c\\…?ÅQ*–`£©4àÍ8&H*1Ÿzv(‘¥• Ž$„ÈQž9íŠ®¨X—Wo¬\'²uì.×œåOB*™r¤ØRKM\0|qÆÖÅ0¥Áýz. ’ÝÑdUV 0ÁÏ³;LwC`mQÈÅOµÄVï2@\Z?t$eïíèx©ÛrŠÒo’bLŒzžù§ÛÙÉ$UY{7séWG Y\"ç9:ý\rX°²†ãÌ¸{¡C(ž¾ôùÒZŠ·z]Ý¬^t©òd}Èâ«l(º•Ï ã¨õ©î®n$®åwd=O­BîÎ3nÂñÏOjp½µ%ØzÊÆ@eúRÇ0ó:«(\'†éQ0Ã¯B)6~SòžÕvÀ‘Tº¢†SÝ‡\"®Yº3„’=ÊF;þ5F29šµ¾LÑ½¾ðà|ÄúÒ°µ-O\"†e@v0yÀëO·dHðcsÔžE,öÇoopF#™ºduÍhmÓ¢ÓLÒ	\rÔ§lmŸ•\0a“îqšR¨¢ìÙL2´®êpAÜ=*äš„‰nE)qfÈþUqt’Éò\\p=}é¹—ìêêà¨$ãéÿ\0ë§®áÐžw‚9€Œ’»AÏN{ÓeªÄI“žV’U”;zÒG ‰w¸¤sÞŽk $2góþzUÃf#Ø·Smáv©\0÷¬át¬Q>E\',;ŸZÓé²ù3ïu$ß¾$b8×§Jæ«9-‡£WOŽ®\r©¹!\ZäG½—?/9<vÀ¦Íö•â­Î\\;\0 lT\\àRM%œ’Û(ž)`œ+o)°‚\09Àö9Nþþ9žÊ5Œ$Åî ’@Ï~Ãð¯9)ÊwFš$hÇ,Öm#yÞ[4„HpÌ1õâ²Œ×—÷w\0gr®p (â¯~å-IwŒw±ÉQ¼¸°X<Ëf9päõn	þ¥](®mV¢“euvñoÆm¡ûøìXàzÒ7ñ_Or3«Û©B„rHëŸÊ¹o4È¼»ŽH½óËÀ”;;³×ë]50°–«rŽ¬ÝH·;áß•9gaòéïQÛÆšdìn`‘^y0„\0T®	<uäKiw\rÐÄÁ•Ò&dp¤‘Æ}rqUue¸™îç¹ˆJp¤üÀ€cÔVø5®W¹2î[Ôã´šÊò¥¶HBÏ¹ƒƒÔÙ…s·I\ZK$pHnT è\0=@ôªï-Ä²ÎòÙù©¢·uŠrò¤YsóÈ®Ô´%ÛKL¢ô;B ác8æ©N¨ffJ©?(\'\'bXŠ(?Ê«¬lÒ÷4¥±H@Û@Ü±©ƒƒCÂCÁÈ<Š‘,%‘]“;TÉ…	ŒzôãµXáò]Žã à/osš¥ŸÀÄªž¤kRßM–kW¸‰]£N…â¦mGq(Ü[K†IbxÊ$‰Èrq]éZ}ÔbÊÎ8^æPgy§o»òãh>„œLs\\õ´\0ÂX|ìôU\' J¼þ}¬oT‹ˆ^eF~UFr¿Œàäî†¤‘“e–ì“M$m&3ÜqŽ;f»\nZ›MYlg–9n†.Y×¸õ5Ä hØ±}®§©­(¼Iâ%Ó\r¬W3=¶ì2TõùOnõÏV\r­\ra$&¹wmkpöºLS@¥Ao8aÐä’?žôß\rK$WÖÑ%Û2]Lær…Ó œµSÔÒT\Z\'•÷ª³Êßy›ïyç¥WÓ¯ÞÆþ&B…ÒE9ÀÉ¹õ¬áxêë¹ô®¡éºD[¬m¢Œ¸åÐrÀœò{Ö…Ê‡¶•Ü¤dâ¼ûÂ¾$¸Hæ¸ºœ¶œÊ|©å^:UOâEŠAp–Ñ¶ôÜGéÀëŽ§éW\Zœó³Ü\Z²54-lâuóDQ“äF’ ž¼þu¾ú{^ÃóºˆpÓ\0FŽõÀÚx‚mNôÏ5Ü«»cXÜŒW‚yî9¨ü]8h­ïbÉ†à‚1‚Ii<{Žõuùe~¢…Öç®¦µhÒÇï&OõxÝF¥«¬rÜù;¢$§˜3Ô`Šâ<-!²µÄnd#ro?>3Û°©µGpïkqZ<fù\'ƒø\ZÂª>DõmjX¼ð¶¡<›í.WcœüÍŸ-}jÕ®•úÃ	,qÛƒ’:~æ™áÿ\0[êvmwsso&\n—Û´ç#ÐtÓÓÆ^±‚T†òÜ¤rÿ\0|Îˆw#ÞŠ´ì\\Y¹k§-™$àÄŒLjÜ¶iš–±ec\"+0’á¹HÓïßžÂ¹OxãÃia+Åt÷ŽHeHòSv8Ïn2+›°ñ«âX¤·´³Ó†¡\n©-0\'žx\0sÓí\\ÍIh–…Zç \\Þ^Ü”›Oòó‡ïÐ’;óÚ¥ÔµË-2%—Qš6p¤ˆ€Ì…€õ&¸½7@ñN¸d½:ôšmÌ(mÞ5‡×’ ç¯Z¯à¯ÜXø·PMVIú­Ò9má³’3ÔŽ+.Owr’Ô—ÄÚž­¯X8[?ì½<È¥g‘IœãÔº3Ï5çwsÜBTÿ\0i}²™ãhÏ§júQh!·‘®¶˜<–ÍÇç^-¨Xi2­Å \n¥NAlãðTåmÐ¥ª2ôIXß¤Á<Ù·Œî\'ŽõÒx¾Maô{í^8í×>Lh¼nžGõ¬Ý/FêpM$±å³*Çéƒ’?\nÓñÞ­§êZ\\vá›1¶è¶¾P’9lv®¨N-“cÌä|ò\0É¦¡\0+ú:¹5œVðG(™$3òööªÅ’rAäŒt­¯ql]Ës#¼–s–ÇsB¶A=ê\"›qƒÉí@9è(°VÑ´ù™MÛaa\0ƒ\'’sÓŠ¹ý¡­êQÇy3<¡V8ý\0(ÀüaC#BHéô­Ý:ÎÕÒY>ÒÑ<‡Þà{qQ-E›#R¿ºvL@aá1ÀÏ¹¨/#•mÖ9T†€]£¦:ƒï^‹à½YæêKaÐTVáfaë]d^°x¦[¤‚e¸ÜîápwãÚ°öÍ;%pz	o{<È‰! ÃZl7’Ç bw\0G¸«G]ÑåÒ5‹«c±Å½ŒÇÞLðAïY2.F{Ž W_.—a~Ç[Íu§@ÓÈ«X†ä’zVÁ	,:gŒúUX&“È|¼çô’¾óÞ¢q¹\r‹¸OjÆp*»±±ä²ç®{ÖŒ:}L“•Ý!òË9Q“Šë%ðå½Æëxó*¼dG:.\n8zV‡išH\nÈ3	9\r€ps‚k×ôhfKH]Äh¬ˆÉb9Ïé\\×nV4m$y¼>\Ze´vÓªÉ<¤7ÝíèOj£©^[X*.Æ:²”\rŽ;ç]‹uK´,vÑ«K’¾jß6=¥q)cu¬jäVóIÂ—PÅ¿úÜS×›}=x¡2H$g9ÅZ¹¶¹…ë#oÞêšM–¤ø{Ï¹¶„H3¿z™³ÀþUÄêw°JÒÅµP†É\0àÂ¶ºÜ”psîºN§Þ£fÝ€2jk<Öld‘î*‘˜`b¬EG§EuªË\'RÝ¥-‘Å+JM1Ÿ<÷¤$zoÖ‚†’Ïžx¦•9ö©™qŒ}*3ëùÐ$1óTñÉòƒéQƒÚž cŸÀRG9L÷5X¹\0ò~‚§vzT dÆˆZHÙr3ÜT¦BÃž˜ì*,Ó€›ÙöŒòz\nÞðá´Y¼Øñ)&D\'\0?¯ôªV›åÛ¼K‰\nK´–ÝÐžØ­/ÚG=×Ÿrñ‹x?xêÎ0ô¹­ÈSÃsZJb¶ï¥ÈŽ,£÷ZÎÖtHàÔ ‚+v¶’UF8ê)J×ÐwºÔ²šŽ›ÿ\0Åõ¶Áö‡”4M·æØOLôÅR‡F´¿ð¼—ÍpâÝˆ1—lž§ÛÞ°.‘„IC)í]Æ‘áùG‡æþÉÕV[«˜Aº‚[|p	#qé×ñ«¥+=LåäpÓE/ã9a‘Æ8ª²F\näúŸzÐ{Ëë‰a‘Dä¡k\rØúVw™†	0eRrN9î\"oºIl`ôõ¨$n8â¦•ägŠ®N)¡XiÈ ö ’;Ó[ž3H	éI¡¡Å²=q@“Ú˜\'éÇ\0`u¨e!å†*2äÖ—pÛß4›A9=©Œ\'*çžyZœBdŠY\0UDäŒúúTbB¬xc¡¨Ý²„sÍ=Édm´¨ä“L\nOÒ¦Ž•–8Ô¼Œpw­ôÓÌ-¥xcÌ‘Ê¹ìO@hQrÑ‹s)ˆÅFÄä÷«—3F¡ŠŒ2j§´ôùZ=ÅºšAÔsKÔôÅ#š\0\\ï\',\n¥Õ[$œcšjFÏ-˜uÀÍH‹>âUw°©wº>›!W»–$€Ž3^‹áÿ\0XYÅŸ-£¼‰r#ÀÎx;}kÆí-u—¶‰Ìm*!û¬ü úv¯A6ÿ\0Ùºöžº÷ÐÜH¿*¾\\¸û½¦+‘E¹èÍ¬v—š­®…w-üÃjÌDŽ\0\0õ¹ê=ë\'þÝgÅz©°ðÓ›}0P’>@ï·=Mqšmô~)Õ¡¾ñ-â®š®PZ+m\'Ópôÿ\0\nìõ[B²†M6è=¢0Û3óû¼×]&Ów2—‘½l,í\0+ö«×$Ëu?.ç¯åí[ÚU·—`ˆÃäÚ )9Æ;W\rqã?ìÖMvñ˜¤8Ü’Ÿ”R{Öý—Œôex.µ>6Sòí˜ŒzÖÕ&ÞÝ–¦ýåÌð!·2î \'\n¿^õÖ1;Êêò·,¨p {\\­ïÅOÅT¿Y±Ë]Üýk(üGŸX[‹OèWï·‰X`(=IãÖœ`Þ–gÎñ…çÕsÌ‰NUOËÐŽ?\Z®s##ƒRÇ\"¢\0Aäÿ\0õ«—r–¦¦™«=¤¦G.ˆSå«voSŠÖÒä‚áÙ¥·v¹-˜Ø‡¸Ås6s=¹&0sïéZ}º[„¸”6ÌõéÇµEJiÅ¤h¶7eÖobŠî4MÑÈ‚?€ôæ±ílZX¥iU²êv\0Q[é$MoÊ‹r\0\nãî·Qô¨]ïMÀ\rt²J²ò€p{Jóàùå1“vÐå¾}ÿ\0 ;—žJ»a,“L¤¹bN<Õ¨´æ½¾hWýqcÔõö«W66¥-e†%IâRÒïæ#øHN¢º%V-Y„w¹z}Gì)%”3,‘²ƒ¸(G·µ-Œ—_gË[8IÛ- ^é\\Ôw¬—ÌÊ|¥cócÔW{áýzÕu8 •å0I¸¨î6Öj2¦»’O]/ìL\"eYXg8#¶*µ•Œ·3ìÆ2Àdv5èks§k*®ÙídwÜB¼#? öíKeáØ­ï¯\"ŒÊäUnHí†ìjéã9ci­LjQ{Äâï´ÖÒî\ZÚLy‹‚}EEº5É ž9Ívz-Î³ª	FþJffÎ{õ¦M§iQ‘Šî)²FêqÁéù×¥F¥à¹·2•-Îf(|¯ÛÒ­5–\\7#µ[‚ó™+@^ÓÚ¦šÆ{wYB~í=\nÑ©&`ÙŽ ©|f¥·…&p…Æ}ø#éWnl	s`–98¦Ù¬K?ÍÇ<\ZjÍ]~Œ Ñ´7;X}­O3O Ô\0Ž*w(×jYNÂqD±IÀJ~@ØúV·M+îK+Ei,¬±§ÇŠ½.ö[G7PÈ¯“¶XÎá‘ØÒ¨]Ja•`\nÿ\0J’ËR1$¨ìÄ7=:ŠŠMhTJÂäGŽ7?7±ö¤i\ZeHaÇÖ©Ý”’õÅ¾ï,¶T¸÷­.âÖWyb5XuçQôÍ9Zæ¶¡¾ƒ’i´ÙQ\nàcæÇ|ŒTSÜÇ#ÈP0é´öÍik°Æ^o3\\(L»°Æ=ª¥Æ”¶ÑG\'œŽ® íS’zÆœùÕÞã’kAlÄ³ò‹óv÷­˜5K´„[K;ˆrI@qŒ÷Ï¥eZîH™UX¯·j½	·pÍ4o,…HP§=½T¢žŒ”ÚØ~¨ Á…â*¤)× }êŠÒÅo¤ÚÏ¶R8$ðMAó)ÏLjíº`(ÆwïšÚ|»‰»»–dÒ&‰í*Ç°O¡ªžD±å\n°=Á­ÛHá–S-ÌŒXÉûÜv¨ï ‚„iw>ðê;\Z!7{2ì­tG§[±:ƒä’yQžÕÐ®Å”¸)°\\zv5CHf‚xã\'ŒzÕõ’$ý°¹bx\0pG¥aYÉËM‹ƒ²3¯‘6&èŠ.8oïŠu¾œmL“¹-“€[¢ÚÖâwòp/\0¶áôªjÛš\"2A=êíÍ[Ø†ìîkÍuowg‹{¯-€á[¿µd$™]¸ª¦CŒ\ZÕHmÂ(eˆ{\Zºp\r½Æ£)¦×Bí†˜dd™¶«u­‹d1É~6“œš£hìê²¬Ä¼m´¡ì=EX[Ò\"ÊÀK}\Z¹ª*’›Ó±­>T®]…„Èw(ÝÑª“ZJR\'½>,ùÞbó‘ž•¢¤I~íèM•MÌ	\\ÇÆ	ç5JxÚFùŽYF3[·vÛ·Í€ã¨¬¬uâ»©Nú˜J6v)´,ò!l6NqRXÛ)¼ù<­Ä}×ËÞ¦UÌƒ#½YŠÔ,ë9p»r9ÁíU9$¬çµûI­õüÁÎCmÆMPXòk¬Ô-“T´Y·°xÎÆÜ¸ÔÖ„Å7X§Tçxù‰­I “`5pL¸àÖ[·—ÇQØÕcrTõâ¯q\\Ž€ÔŸhÉà×*ú’¡³žy©âÔI!÷|‡¡¥Ê€êVlõ4ðsÞ±\"Ô€3š¹\rÖóŒŠ‡O°\\¼Ã\"§ËÍÉ‘CIŒæ³ÔËß˜…\0ž{U}icG\n	Ã.W¾é«s–I‹ÔŠÂÔe¸i#ÍÇž{WDV©‰œÆ­?Ù.ÝLæOQŸÒ¨ZëjÚÃ¬vq¥R‹Ž~ON{þ5­¨Å-»É¨D¿0-»<ž×5ÏAmioª[IqIó¿/·pÇAéUp[^›¨êÚ)i{¤Ãt—Så\0tŽ\"pWé‘‘ïY^&ð_Ø5»mCÃwÑØÉ%à‰OšvÆK|¤qœg¨æ´ÅVZ­o0·…r»0R½U˜ÿ\0#®ŠóÄ–\Zž›6¡º{ÚUš	NÒäc8\'©Ã~•OšöÐÆ|~(Õ´[+½3Ç–ó¤mDš•²n†MÃ88è}8®§ÁÖÖsø2ÂX\'’æ	-R2!Ú00F;w¬ïkºn±&¯¡O<W;‡Ù1LDŒ~ðÉ?JæumXðf¡ssà«”šÅðï¦3oÁ<œõàû×;\\ÍÁhÿ\0TÕ¹‹ž7øqÖ(tvXæ-þ­åÚ2OÏÔþ•ÉhqYxÄvq[ÜAxñ³dIÙ#b\0Ú{6?…cøƒâ&¿«ês[Â$‚ÜDUì®\0l0\\1çœõÅqVšŒö‘][HVhØ2±ç}jý£JÒw` ·è}y¤NØÆìÒHŒI•“haê?—áV%™tûbZEww%Cœg\'8ü3^!àÏŠ76¦(/â\r\0ÉŽyÉýjçˆ<_qª£\\µÔPË\Z0Hãl„SÏ<òHã×µcìo+ßB¹í§R§ÅOjsj—ZS„³*¡ã\\dŽ¸>•ånø\0zu©õRãWÔæ¾¸mÓLrÇè0?@*™Ë¸4¤ÖÈ«5¸æ“œsH‘“ÍGÑ°zR“·éR$2¦¤ŠrI¨UÁ84¹³Å;ŠÆ‚HX\0;ô«ÅFpHk:)*A*ÚÌÄ`ž3M\\V,´û×ž*Kk¶´c,.é.VS‚*’žFIæÈoj«]‰nfçšX‘¥}¡•p3–8p==(/Á­SC6E´C‚þ+‘%Är•šÞNqß#Ô\Zd’O|†0ªËÊÓ×NÝÀG,ÛK!Š±¬±—Ÿý^8(0sXÔI‚¹Å\ZÝâÅÇ–1ü*y¯#ŠæœïBòO©¦-!xUm1Qƒä8Å(BÑ*äF!ù‚~éëVb¾2OÜ(\nªÝzS„*ðù…ÿ\0yÐ©ãÖ XqÚŸ*blžv[­FI-\"òUÛ(™ûµG%Ã»·ÌÀfÍ[µ_$$‹»+LzS¢,—ûãŒ•R28èì\rFŸá—›Á_ÚvZŸ™\Z3½Ì%GÉ³Fyü+“A5Ã<pÄìÁ	!3÷G$ÖÞeË«I\Zhî¤­Ê°òÜŒðÃòæ§µ³m;ZßuÙ\ZÜ³;:ùÈT»ÀÆzšèK™+3&ìsÖÐÆmæ2d¾Ñå\0Ø;³×Æ3RÂ¶æ\0»Ù_yÝÇðãŒ~9­´ÞÑÊ4rd/Í’£²š›MÓ¢º·¼—hÝWpO\'žµ=¾†KZ\0‘¾å;Á ÈçúTf.3ZÑØÍypélžk¢´Œû£©¨E³\Z_*B`6>^™4ÔIæ3€;×$ýkÓ¾Zy×—2‹¨#¸·S\Zœng¿=¸®\Zä¶€^F²	A]pUG çÐç¥tþºu9 Ô.E¬Æ­\0pT;nƒÜ“š™E±¦uÃáÍ®g¼Õ/¥’i†ÝÈ6áÉëî:WŸoiª{Û×†ï™*ËÇãØý+Ø¬¤¹mFñ<Ä–5#žFÆôÁëÛš¦žÑ–W½¹‹dò#	Fü¦X[ŒóÖ—2_ìÞÇŠxÖ[¶¼†Úæñ¥–%(UcÚAùX}G?ZM3AûV‡k;3ï’iDhøB€N®O<V–±¦XZ¾¿$wÆâ<»KS#nv9þ\0+.Éì,-¢_26p]Xœpr2§ß~•´—m…},HúUº?—wºÃ:²•ùTŽƒ#×úVYˆÀÚE^šöâîéî&“2IÔãïóš’+q(,NÀÍŽqÇ¥%+•\'ýã#T{qO…\0ìqOPSÕj·‡=‡­;Êæ2F\0<ÐÐ°Çlw­[hÙ 0ÔÓžd(­ L©Üqœ0ÏOP±’#Ê×=M+@¡AN½úŠ¿1®ìò{R<JAãÖš@Œ¿#ïø¨–Ø¶z~U²)Npzâšð 	ƒ’GÌ1Ò›Z³0D	èH¦ËÍ»G#œÖœp6ãžØ¦<CÁ¦*9@Æ’-ÝG=x¨ÒÍ´ðÞµ®ÖÄ¯#õªO†@sz—Å\"ƒDUÏ§zg;•~ñÆ{f¬…2’0XRK	@s³Žã±Ã‰%f‘ä@T†9ž\0¨–&8\'€}+§ð„\ZlºŸ•{¤¸Än‡[#¯×¥t> ¶·O\r[™­cIíÝ Þ\0ÎrÏ¿#éXÎªŒ”KQº¹çÑÀQÃ8á1»ŽpMuÖ:Ž™¦iñG•º3{¤‘’#†Ç®+›¶)}SÉä€JïRf\'Ž½³WmloÍÚo„Íå¾Ëp¨÷éŽ)T\\ËQÅÛcbç[‚ñÞl×a@¤Ñ‡¥e]ÿ\0e½Å»ÇF$BO<Íié1i·),wŽ œÉå©‘öºg‘ÜvÍd^,6“Ïik*Éì tÁíXÂcoBìJ²e7y,2¤Ž½©ìím9ëßbÝ#¸Eì%/€˜ùvýj«3DïQÜzWJ}ÔŠHnàùpzc¥G•n¼Õ™ÛpëOUá™zV¨‘d€zg¥=p1N\r·•úâ£.N{â˜]<ãh\0¶sëH÷rR6s±I*j¬[\0t¦Ï|I¤;’³d‚=)¾f QþT‡Ué‘LvÈ’OJ.$óƒF\'Íê;Ð»Äe‹ü¹è}i©)X™\0Q“×Ò†$*ç\"¥ ¸ã\"–Ê“Ç8\"\rÌˆXGŒ¹ùä\ZmÀ1Ná[#8Î1ŸÂ®Oª(¶¶·Ž4)	2Ëón`÷VrW[µÝŒŠIå¸-æ”qóåR	–ŽâŸºWŽ}qYé!ó€í ý1RG,q“ÙíéPàí3¨UFm ðz†B¬ß!míÔåQ‰™†6¹àã¡¥gÄœŠqV%ˆ£oB8«‘ZÍ2³[Æìª»›8¦¡XKå”äã$Öæ‰Ä¸·%eo‚ØO·z©IEs0Jäz]„×3†Q¼¡uV=qÔ~UvûJˆCád•ç+µOP;Õ¤°ûq‘p¬>P2Ï$ã¥mé¶÷ºÅÚÀÛDq&RD\0×ùÖ>Ú)Aœýæ…&ž™ñ!2¸ãuõ«>\"Ó--â³¸¶;¥ºŒ³àäÇäz×£E }Ao¤¹2²ˆÈ#?Ö°<OržTGb6òÍkT[°Ý\'¹çRéW$XÓw—ÀsŒÕÝ#ÃQßI\n<þY˜á8Ï¹í^© øY,®MêJCI!€l“ßò­{½ÎY`š8¼Xç#½/oÌ\'Ó¾Y+Þ}¨¬Ê˜…ÃÈÞ¿sº¦›o§[4ñÊ±±v€BŒya€zúýêôû››¸.\"H‘ZÔÈÁûØ\'\0có¬\rWÃ“ÀÍ+Ê²[î>T!rA=wçúÖ”åwï15ØóÏ	ÜÇ¨ZZÆñ¼·\n]Oç“éÀ«:mí¿‘.•{û»ŒíV#àò=q^eá‰¬t£\",—³:¿–NB²ž}+Í5Ý&VÖ$Š8rŒ>EáXœíÝÐÖéÆDÝ­\r>ŠÚì¬ø„Ö-Ûð{7Q‘Yø¹Õ.ã‹MI<Ær\"1¨\0àzcšÅ·6µ¨m¨IÝðzŠè|6ö¶Å\nIpoò­EpsœŸaXÎ…ä™I]êEâÝéVñÞj7ž\\\Zò@sZ^µÒÓDS Í©LÅÑHŒ\0GÌ?Z×Ôµ¸µ­8}ªVˆ¨Ú—?Ö¸ä\0ùúõçS»Øß¿–dŠL’H~§üö®&§QZEè¶âÄ7F#2È®ŠU€ÆÜàçd\"ˆ7E\Z¤(\nœõö5 cšýŒ’ÊsÝùÍUaäÊŽU[à÷«Tì¬4ÛS·²· YGîÈe3d	3÷…@ú”rÚ\"”ÜÊå˜±ûÄÖ4Ì]Ë\0Np*´Ò22íõÍJ‚CGU§ÃäKLŒÄÈCa²£\' üë¸†Åu+ôŽÁR8IÝ¶NT‚7Ùç¥y}ž¯qn¤¦C‘ÔEz…â8­ôhíá¹yä †SŠ9ì	\'ñãMÊW¸IÙºÕg’(žhí$‚F\ZE€G\0^+/Xð£¬Ï%ßÚü©‚\rª‰OÝ#·N}ë«Ò¡\Z×ˆ^è[Êm&¶Ù#1ñÆ¯Jêì´¸tûH`Œ³#*«ž9ÇøVœ‘ŒîÈM³æÁ§—ÙÉ,Ï!ÌÇÂsš¹ é“[jÜÃlóÍ›Ózq…?7±±â‹‹+=_Î‚²c{‡BlàŽ{wÍUº×å¾’Ý¬ãŽˆÕ¤’U;Aô“»IšFz\\è<_¥hÚµªêÉ•y9\0C	Â¶8îOò®ƒá¿†àÒ´¶»[måäÊÈÿ\0ë\nã°Îq^wf—w×Egæ¶@`£±êkÓ<%ªÇi¦©i$”…ef#Œ/Ö¸e\'5Nèèã¼M.)cˆKNÆ8øËÀ8ÏÞÇ5gtz•¿Úa-ˆÇk”ÃvúStñ½²Ë\n—8<ƒþ}+#Åº•Æc6Rì–T|0ÁŒãéšÍ¹5ä\r£Œ×u­UåšÞþT1.FT\0[¸>‡·å\\Ä·ð\\ÛFŸ™Âî`6•ç‘Qø›^¹¼´e!›$ÆOâ+\'FòÙÌ“°î©\'«„\ZØ9t:wÔ-ì-–6iãC—~wæ¹\rVI\'\"cÊžGº×Ež$òCý\"Ì„€à?\\×7s}	ŠUL‰mF©ÿ\0\ntew{a‡-òž½ªSû°d0ç¯hÖkÔ@HÌÃoÝ\'øTÚý¢Û]¶\\ä0Îvàà~•ÕÌ¯`0fbí¹›æ\'š–4áIêM+Ú•C!uÈ#åÏ&œ§\0pAõ«¸pÐËÀœuðk_M¸¶³™d/ m˜ pöõíYÉjò@ÓÜ( gR,œåŠã¨©ºbLï­µH&†)£¹ò~Ì	2F¤€ô?™­-#â-Å¼«Èe[nÞ>eþ†¼æÞ\\”„n1ÈÎ2:Ö¾Ÿqo¸R¿pgçŒô5š‚‹¹nWVgsñS³Ötk«HÊÏlà•aóyl?ÇæHD²¯:þ¢º“471ËM$,€©8$œôôÅrè†E*ñ¶Ö´gÌ¬Ä‘\'–`Ui[“ŽqV$sœvéPHÀq‘VCÜ€1Ôæ¥…ŠN‡9ù‡QPw‚=jÕ´LóîÄg)3D´={GiÓ;Xü„1ìÞ@bÝÈ>ƒšìãr–I”—\\sÁÆkÅôo\\i×>y`QI-8Œ]eÿ\0Ä»ˆáµ[FH¥âá»Ê¼ÉÓŸ3°™¥©h60H·{›$¡Á\rÀ±üES°³¶³iL®ÆV¬‘œ€sÀôªz¯‰-oá0ÚÉûª7ëÎ>µ‚5/÷i+,	»\0ž¹þµPŒ¤¬îo¢ŠûN\Zm¼ùŸrî“Ïlf¸Û­!mâûEõË	‹°)·–^ÇÚ«Câká}’V-©°žä{ÒÜ9Ônc’âéÖaæH8Ç ®˜AÇrŒo.iR}–Á÷+¨zÆbsŒ×«´±Ý¤0h\"¶Aµ÷’ñü@~uÇø›ÃòÚÜ‰!FåÝå(ç¸­c;»rìÌp3Ó¦)ëÂqŠŒä7¸§à°çŽ+A*g\'qJ#\0õÂ£…ÎÓŸÃHÇži&$ÅvÇÞ5 àþTÆlñŸÖ˜X‚sLdüpAÆi¡Ø0üê\"àcÖ—vHïHe ÁÈ¦2ÅqÍ	 !\ZFb:éHL•£Ž%F	Î\n”\\G¢\Zò.;g…SÛ¿\0œT±Àdƒ? P‰¹Ó[kÖñÝ«4bD\0ÛpA#k;ZÔ¢¹»f·’WU #¹ç\0qÞ²d¹ÙŠ\"Áß‡UebªëÞ’†ÝË8}ÌÀ—-s]v‰ã²ÆáÙ¦Aå°^Ÿ‰®Í uúÖ”)i&•$Í>ÙÑ€X‡VÍ>[èCÐî´»;[ûFò·ù¼±4‡*œîÇ~?*ãïÕ/u™#•d_`ÝÏaSj^*¼Ö4Û=(F°ÚÛ QCïŸïzì¼ý™{tÀŒê¡†H\0#Uç×®¸ròò™»§s¶ÑíïlÝ Yæ-Í1—\0mí·ÜúVÐ4nTŒ×§éÿ\0Ù0jW“Ì·InK*|£çUî§³uüëÏ5›‹Iodkž;rÇh‘²Ø÷4êRQCŒ›façQ¹9ÉéOÝƒÐf›(ãŒf¹Qàzp(ÓvûÒdtíI¡¢ÜpùI.õ\0Ê“ÉúT;±Zº†µ_™—M€Ê ]Ò@Ó¯ÐÕMSL›I¸LÈÎÃ?+dP©ÊQº«Ø¨FyÍKdŒnßgYÒ\"Ñ‡=\rWGã­KÍnVÁ¨‡™#’v(†&/”\n~íw7¾Õ#Ò –Öî[ˆ.c2&qV¼×¤³’8=x®ãCø}§hÒé÷R<ˆ±l·Ž¹ôÅoBiKS*‰ô Ó—EµŠM?^·’Š3%Û9`€WÔœõ®.õà7-öl˜óòî5Ðk÷öú”Ñ‹tYeÙ‡ldû×/*27Í€kJóŽÑØ º±Œ0>n\r:;if,b‰ß`ËmÀõ4äG™†™‰Æ95bÞâ[C$BF‡xÚø8Èô5ÈÙ¢D0]Ío((ì¥yíZš5Ô\\	±=pW#>õ—p±žb`1ÔúÔf‹£`Ô5ÌŠµ™ÓÝø®â+ù^ÑYq@õ¨íüEs{ªE6³1–”ùq°Ê!=0µÍ-ÃŒù|±êÆšþcàÊOÐTªI\rÊç¬ÜüCðÄ¾[hì¤Žð.ÆÛ ß&¸gVµ¾\\išL!?}Û9Ï¥bÁ-¼Q|Ð~pI«—º¿Úc!¶H\n(ÈOÎ@ëZÂn.Æm#Aø¨k6CQ¼½‚ßNB<ÇWÜãþë[¶žÒ4ô·»Õ\'ó ¸V«¾À¤q—Ç<pkÍ\"šô—òd“Õ‚ÓÖ·¯n¦¼†5›íow´;FÉ…í{ö®ªu\"–Æn2¾çIiy¤i—¶ö6–fãÍ®Øn*=²pE{†´k}\'KŒDRI$žeß“šùZIå¾¹/ &mÙÂŒ\nõO\rx§ÆöZl6ÌÉkå—’ÁsŽ<â³÷§.XŽÉjÏX6\"·™é×4ë{+‰eå9aü dÕÝø[]Bì†@BŽç]4×0é\rý¥ÌB@Dˆ	Ü[œí>õÄï¡¬!¥Ét\r\'O‚6XH¡á/nfl.sÞ Õõ¹µH-´ûKXâ†&%YÏ±=ª¿Š¼Iy­Ù[‡²Žã,œîñô·nÚ|P¶ì+îÓèh”*_Þ	Õ¹bi´²›òÛ±òHG\')2¯Ì„7mØ9®ŸÂW6÷Ð¶ŸN’mîasð¬oh¶Úd·SY\\©€`¢±ç$‘ëŠçpÕ¶b™…<sÚ‚ÂG\069<ƒíVb»’[?)˜Tä1ëƒÔUxµYZÍ¬åÌ‘±, ÿ\0Œæ Her¢Ýrê9ëQ+8Ù—ë¡qb‰×sýî™¨\"¸žÖàM´l¼©\ZA>•Áö5rÎ1vê.\n*öÜx>Ù)Ó©Ë£!©\'vkè\ZÂAsNþfçùÕ¾ëó“]«øŠÎ;‰d°•­ËH\0T.>ð?^Õæÿ\0ÙÒEpÏgÉ\'* ÿ\0/¥kéÖú‘+ÉGŽ6wY:€==k³ØÂ£Rf‘¨ã¡èñëqEysÚ£˜ÊU|ð	ù:ðL\Z¡ªÇi!k„¸bü±•Á¾kœ°³‘ fŠU%T6Ì°Ïj˜Ì»¾cÈë[B’RºdÔ®ÜyZ:]ým%ÜÈ%P¿0##=Åô·`‰ù{‰Eë·&°-.Á%T¨$sZÉqn›¢wÀíÞ·”¥}NKe–Ü†ã‘PKfÉ·\0÷éòË•ÎÛs‘ÅFöì%Ý\"#åOjº®\Z™ÓÊW;WåR=j[½E.a‡i$îéV¯¡„ÄÂ$ãÃ¡ƒ4rƒòœ€kHòÉ\\­‰žá\'EC·žqÍQšu„sÖ«ÜnF1=1Ú³ÞWyA<àÓ[…h%Œƒ!lÔ†ãcTöDHŽK\"…çŸéD±´2!È*FC”s©;ÛQ–âŠuÜX–W\rƒ»ŽO¯JÕÑãŠæo%ÇÎÃä°®v	ÑUprÃÒ´-n0áÁÁ>•.\nÖAÎÓÔëìtë«F\'ò›ke÷cðü+¢‹B6ó»9Q™Æd†Eù_?Ê±´¹¥¼¹[¹]Å”bÌq“]«Zk·Aˆ#`±¶:ú×N~¦éEœn«Â^bKA9NZŽ\rþ`À-ŽMt^!¾U¸’ÀBÞvÍêÀïï\\äW*Êy>ÕÓ„­\'yÍYš2Òm\nw‘•Ï\\Tˆ’2or[*Ry\0t¦Ý‰¤tx£l…äŽÔëÞ33¶GÌ¤ò~•ºšjä®Åí64ŽM“Æv:ò}«AáŽ8CÛ¸‘UŽùïÚ¨Í©:HA@ªÀrþbª‹——ËvÏ;‡¡¬Ô%7rÔ­¡§§CÜI,Œ–ùQüëZ=.Ùey`—ûV­óÇÀ@ÙS¸gïVY˜±¸ Œò:Q*SrÐÑN6Ô³u§ÇÎ\"‹üˆ½ÅfÏ]8+Ôc¯Òµ-5äEY#Þ\nžWëY²9q†ÛÀÕ¥(K›ÞèL§hò®¥}ÒÆUù„w­Û‹x® 7*Øb¹†±˜»®:¨íéSÃ#¼½ÇaíWZ““R‹³DÂ¢I¦K²í!ŽE][×Þ\0âÇz \0È¥Q(§¹šm/\n´ÌÈÙV\0ñUÔóÒž\0\"Œ`RZ+ww$Š(¾WßóƒÒ§òÉ$Ä*îB?LÖ{³g­Epí @ó»g¨Ï6Þå)!u)®-O•ÀFmÃh<ýsXîKÉóðs“ÅjÍöy Æd2\01¸ä{Öt‘÷Ç½oMZ$=ÊŒ7sÒ©Ü€½9­B*¤é¹~î+@1ä…ËdG¡ª72Ënr™\0v­ß+¸<U\rJÑf€‚qMˆÏµÖ¤YÂ9Cž•×Ø]‰X×˜Ü©·”ç Ž†´ôß›e*í’*GcÕb“r‚)ìÿ\0/5Êé~$Žê0‚kjÁ/ÞëK”b\\ž•™woæ)ãV’È½?*Šv\"6Á=F)ˆåo­Ï–r7ë\\v®–ãÌ*ÀeG­w—Î›žk‚Ön£ŠpA^ ŠRØiŸâ;;{	lï´˜îfœyr\\	fOOáÅsúŽ°g»–Þk”$åÔmip¬GLŽœuªzËJ­pÎxÌ2\0ÆG@1Ò°ÖWŽL¡!½«	ÖqÐ¸Ã©ÓÙë·>ÕžçK¸óLígt+’G# ÷ö©¼+â[½?Ä÷W…f,ó1,FA±Þ¹¯<Ü<QÜ¶T([8Ø3×ß½\\Óå’Æú€btŒSò·_ÿ\0]fªÙß ùt5¼exšµêjf–éÐ<Ÿ¾Ý	Çn+’š9a+çÆèÎ7.áŒƒÜW§êþ9²ñ>›l—v©ZÄªÿ\0(Ü[#sGë9¹=N}êc)9Pˆä~žHã<cŠU\Zø“*èÎu.^2\n¹9Ö“ê†æÝÃ ó\\üÎ85BòÌZ„håÄã¨>†£‰¸ãšÍT-ÅcùÓY™yëJŒ÷¤f8ädRLõÏ¥¸ á\0RcŒU!Xy8éÏ½41ÈžFž”ÉÕC,Û®áŒñÚ®Kpà*e\0ô«ê›yêâCÜhˆ¨‡8Í&;U´„ÈøÎIéHÐ`ûÕE¬baô©„c\0ãœ`\Z™alóÒ¥tôvÊ«Ìç³§Z4¶“¢A—ÆWHLúT¿4q•ÈGå‡®*%‚ec9ÂéÅKŒŽ¥ÕKûØ+Z2†Áb’ YX²8ý+zÆ6}Çä8œHÎÍž©Ž?ZÊ¤ÜÃJìâM«c!Ú¥K\"ÅK&Øó‚Õ½k­¡J¢²á†@89ö5&4 !óÐœS½ö­t”ó´¨©-¸ñŽß1á¦O+å	Á=Ø?:¹mo$×æEýÑ 0VÁ+Þ®ØÛÚÚjNYVîÝ–.v0qÏåXMÙù”µE{ñf–è†i!¹†=…]?‹¾O¥f[kwCsJBÎ»$$gzú~•Ü_øBMcÃßÚ0,Mx(Ã\\\0€tÈÏ^õç×zsÙ;¤àÇ2±SN¿­k‡§ËÜ™. e\nžzy«\Z®@õéZ¾Óo5K‹‹{UŒ·•óï³×ôª‘@°G1·Üd/!{° ô<Wið¿LŽÿ\0KÖå‘ˆ’`°ÆÜ®8\' ýHé]SiGRUÞ…94µ°Ò~ßj†õÕae9aŽ×êAã¸®zæÆ{{w3™WŸ$(ÇšrF\0Ï?‡­vw>Ô![$½|‘4QÆ9É>¡€Ü0Îzs]HÕôIb†O!¦C…,@„ÿ\0:4JÑÔIjyµ–š\"ðÝåËN·–ÐÀ‚t!í²GO¼«ŽAõ5Í­ý³È×ÓBêñºãbZ6QÁRzŒ^±¨[Ge¦êW\ZUßœn¥<«)H§¨9ïŠóŸÜAipÒ‚<¤4f­‚ÇC€\ZkkŠý’ËÅ×z‹[­¬¢‰‹9iÈfç*A=TÆ°üKã›eâHfdž0Ë ˆpxû÷®m®­%´µiùH“€XwtÕ;j¢•aê¥äQG?ãQí\"ÝÖæ‹DZ¹[‹YdµºVI7mÝ}súÕ—ö{pîdÂ|„º	9ž:Íº¼–òäË<…æèìNKÞ¶š+_±ZMb—^t…ƒùŠ6Œc…=ú÷¦®Ø˜GFä\0Cœç©ZÖ\"—0Ç½ÝÐ2\0äŸÂ³îq 12¸Àõ8ÏCÒ™o;ˆ«Ø‘óÂ–S¹YŽÆÆ23éNöç=jO.G•	RvƒŽôô¶gL…ày¤­vÔÊ[gSŽ¦¤x˜3uÀ<g­Âr?•h=°!e#æü¿J—¹Kb¤pîÆF3Ò¬5”ªpc$ž˜çš¿—!…æVB©Œ®yüªÅ’KÔkc(}È\nçu¡I=…±\nÀóóv÷¢HHC.|ŽkBX&m‡åÎGøTo$žx«±Eˆf¡”^šÑhr™õíUdN0+©å™cËqÇNêÙ\n\r§-ÜšÔ’ÜˆQÀûÄËÿ\0×YóÆÊàzõ5;èf4rÂªFÑóãçÿ\0ÕLœ¬Œûµ<è>‡š¤>WåˆïÈ¬šÔi“E4‘0É>_R½‰­=c]“^6¶QB–ð¦èHî}ë\r¦!ˆ9«È¶È»†#æÏ ûÖS¦›ækRâÝ¬Mu£]À‘Î MEdÀã½Z2´b!onc-G1ÈNÿ\0Sút­O_ÛÛðÀHdŒ—ýzÉ1BçK”}ÓŸåSfÚ’I-\rÈì,ïŒK¨Üäb«—Áù>lúð+’¿±:}ôÖâe‘Uˆ§ ŠÒ»Ö¤)\n²¦â]‡ÌsÛéXîù\"µŒY-’Å$›<°7mhÏNüRbMêÍÔž¦£bÑ0`¸\'¥\'šÄìÉ#<Õ-v]’ë|ï6È•‹cj®N t¦oiKasßŠ¨V@Û6|Ã’=ªÝ­ïÙQ¶†`Ãpr>”7¦€·\"g8ÀàT±<\"@%ù“€yÍG4s+¾ûfAž„cÈßfKÃ¸v\'=h¾ƒê#°,F~”ÒUJçœþ•<\0HK  ¡^FpOJ®Ç$84Ó¸2Aåù}“?†)„bœ cÖŒZ¡U‚·\0ôã­/DÏåO,Å@ •¡Ô1)T=³É¨lh„±9,O?ÎÏ­Lû‘azr~¾µ	BIfëBbãJ‘4Ùž}haÇÎ:\ZQ•ÇQÇ­-@j;.Q¹¥WÜvrZ@3’x¬[(y6ü pZÃyj@\'ö½«­Ò­Ï”f	¸oÃzåíÙÂùœ„F\0…ì{\ZÕ²y%¿Id}àÒ)8¹ë.ecH;3¾‚?ìÝ<™ÈÚÑŸ5¶H$Vw‡æo¶I4þCF2ù#ðµ^êí®¬%@òcéž;\Z“JfÇ!›#µèÊ@ëô®ÒQNýMî¯¡¯>©¨Ë5½‡ÊÒ8pÉÈ=ÿ\0ZÙÓ¬8.­5Á>c–èNxÏ°ô¬?¤0K%±}².7ÈN7“é]d‘Ìì]$GÇ(z`ùTTr»Zi–žñ,íf\r¸‘òžÝ¿*}ž£ö„\'c»›§çU.mÛRˆä\0\\u´RÉp~ãB\0\"·¥v‘œ‹8°qÞ©ÁÜ]½Ô˜‡\'§«}OòúÑ=ÔLÖ‚dV2üØ*§üjÔOUXÙH€§<WUšFwE\ra®E¡ŽÔ$Œq:çô¯4¸ÕÚút»‰5†Æ¼––oÆ½;X³’ûOxb˜ÆO\\wÃÁàëÛ	ZëÌNí¹\'åÞ#¿ÒºhÊ<º™N÷8)ôx•.ÞèÙm÷FÅ¹w-Y‰¬O¦Æmb\nË°(“hrF{Šìµë\'µ²[)T8$ŽaÔ>ïç\\lö¨\0WîØã·½t­Q)“Oª­ì0$´^R\0áI9níøÖ}ìw\r.èÂ1’‡9ÎOZ‰ó³FHMØÏ¯Ö¡žúYcTi	IÂýy®yE\'¡¢Ô·¦\\H$–/vøÈn3ëT®ca1Uªœg¥°Sqo(Êâ=äàñÏµiêÐÅ§½Í…Ì5Ü˜…ÄR¯ƒÎGÓ-iq_[cL‘­Òi6¬R‚Qƒ‚xã‘Û‘Y([Œ>J‚EhI1…C®P`äqôª±º<,™\\‚[qO¢$S\nÛ»¼ÂÜ6zLWmáËUÑÖKÝHYJ7-¼„ŒI(~¦¹Kr|†#Ÿ™YŽ^*}#QM;PˆJªª¯ó¿\\¯9<sWM¥-HžÚ÷¢iWZnŽ‘XÞFâFiÑ®CO\\ŽÙâ¶uÏ0i.ÍvÖîaeØ˜ùÜŽJä¼\'®Ø^Â¯¥G5‰¹¸Ø<ðXèÀôÿ\0\Zêõ[{)­îbº·r…óÒÇç+Ó>¸üëJ‹ÞW&/CÂ¯m¤Õïd‚a0¼óFö<ªÆ\0‡ÿ\0^¨jšÎ—qÈí²BBêT2}9ÍwšŒï¥_\\Ù8!’âÛph2ä©SAèAÇå\\Ž¥£#[y¸ut\r¨Ï$ÿ\0:Æ¢ŠÐqlÑÐm\r¤÷06¢mäk\0NÓêyîEuúeŽ›i§­ÔÚh“&_(nÞ	éŠá­$º’ÖòÙcŠWm±™e—ý¬ú{×G÷ºV€ö3D’ìÎ\n©Î^õÃ^â6Œ¬uZ‡Žt:šÊú	£•²QÎ¼ÈïX7ž*³ñ^©imš-Ï™³Î‘Ž?/Byýèºc²=°GÀéRÃij“Z7—&îzÓPN634üHÖQDÇa²ò99I?}GCá5ÎéPý¦å±“·-‚8q“õâ ¿Ô%›÷“Îd‘Û,Ýýë2K‡ÞK2«\0þµ´!hØ«Üë›ZÙ¥4iµ¹glrt}+dŽMª‰å˜c#´k+ˆî!-0mÈÁ±œñüði!H!2	>õ<Š;ÝÓµ‹K9¿qnêûq»vC{J‡T¹Šúñ]™ûÀž3ëY¨|¼`dçîûÖ…¾š×Q4òH³…V8É¥dÉÜÏà’¥€\0œÕØh×:u¼w6ÌÎ²™$i\\\0xýkž 6ìÜ@6ï_j•¡tˆ!Œ„SË{úQRër‘êº®•¤_ééoý†Idv±Œp\0õ{Ã¿4ÉtöeÕ¾×mY’ 8\0çüæ¼®ÂêõÖK;p\Z)ƒ¡\\9õìžŽHt¸m%¹L,Á8ÎŸ®?\nv\Z2­Øá|màÖðÖ¦³Y	%±nGú³ÝMrqÞó½\\×ÑÚ––o¬å„Ã4Í’ÀvÎyÍx—‰¼%ý›$—6’­ä)ŒÇÈÜäõQ©}œo±bßÄ1:$^\\k\"…\'R×éXš¤ÑÍ4±ÇˆÛ\0ž£w­T·Óf[YnüÄŽ4ãy?J¬ò´gnìŒôíZB	;¡\'bÄ¬¦5#š¬ì@=?:cÌp©éL“ŽkbXÂçpjÒ¶•¥TWe$°ïùÖs©<Žµ=•Ñµ$òÖL2°;ƒš™s¦šThâÊòÄ0ÍÇ”ÝÆ+!$O8Ç,jÌ£\0ç5Õ^ëPÍ¢Ípâæ•|²Š\\I·LW§|®È6ŒqíYR»Z‰›4+Ar¥@ÀsïPý°+íÆåóª‚E(GSèM5InÃô­z9wÎ¹ØÝ‘Íu6×öÓÅcaÚ\0Àùûdû×E2ãØÔë#Ãwå¨*Aç’**+«˜ô›&™µ.b>TyØ½0Þ¼ýF*[ßi\Z}ìFuß7“·å\\„bNzö\"¹=#Ug¸M=§Uù‚¦ìã?âMix‡H	Ka&–\rÆqýßZÎŒçMÙ“(ó‡ˆía‡S–æËq±¸rÐ¹\\qÇ¦k ¹9àŒU©nì…¹ÜÁ	+ž‹ëŠÏbÙâº›æÔKbXßo©çU•òO·Z‘¤P¼u=é€O·½86@ÉÀÈ­Ø¹sJ®cPy™\Zt\'=z”Ëƒ,G§HDcžµRá‚ö¢á²)q«>)ÿ\0j!~V ýj‰lrzÐ	4ì+äºS³l`0O¯½C#–® Ç$v5*¼mË©È#\0pïLV6ôïYM£>¥y«E©ÂÛ:|Î}3ŸJÄšXŒìQv!c„^@#Éi5è¼ŠÙ˜ä}âƒúš¯q	C¸0dÎžqZI®K!%©fÞt¬Pq†#Þ½\'Áš—{«*Åz·FÛÎ’HØÛîqÇã^_3LÊ‰™TeˆÇÖº-BÔ¤Žâ{]E-¼°¨’##…­ÔŸBençsñ+U²²µƒLŽóÎdmÍ@\rƒÓ#§Ò¼‚âEyÆGœ€NH­½VÂ8¯.Þf™CšO¾@ïX,Fâ\riVnÊ‚1[ +ž¾¤TGƒŠBÛFqL\'u`]…Ý“ÇJŒ±-Ö•¾_cL\'=ù¤ÒÒµÍKE•ÞÂòX€oØÈÖ®Ï©i÷zd“ÜG#êÒÎÌïüLÜ×<N)Ë‚1T¤â¬†ÕÇçšvìõŠ’;ifÏ“¸Q“µIÅEå>ò¥HúÔYî$‰Uä\0¾Ðz‘I\"ív\nÁÂœdw¦lÁ*ÇJPWäŠÈÃ*²¯ëƒÖ¤-AµÆwsº ’5*ß/©¥K—Xü°r¹ÈP$KËÂèÝ\0äzŠ†âvšRÌG\'“Ksp± %ØñOžÂH³ž@=j:•±\\0nçÜÒ”9ånñ‘ïSE0‚9#x•˜ôcÕi±6#F¨ªÑ†+’{\ZT@ñ¼Œê»HÂç“ôªæfŽýj&‘-X3c$Ó^S·\0cñ¨ù<““KŒžzS°ÁxÐä¦AékA5Û•¸‚f•™áPŠIÏËéúšÊ\0!È¦3qLV:K[Oû{ÏqgˆœcËSÂóëôÍwWß4Ø ¶°Ó­	±‰v9²ÀznÕäŽO<S×†OZ¸TpwB”S,Ùj)ƒÛ´™‹KŽw\'¨üjn\\î˜ãºñO¸ª\nHÈ4À3“Ó5Šº•ÊnêÇMy¬Y]ÙÛ-´Cv ¬ÿ\0>Uÿ\0º@ì{Révéö…K ñ©ˆ~8õ¬[8|×ÆÜž[Åzn—¢ß\\Åh/ã7#‹zîB1ü\'¨4ëÎRNF\r(«#;WÒ­¡ÓEÎ•6Ï.=òùŽ>bŒ÷ëÓ­rBîFVŠvfNpèk¶¿Ògky4ïìà»æ>C%”æsV´äº·†x™vãp\'Ÿº\nñÕ~H>fj©³Ï-ÙÎ|µ%ñÉ«VW²†Úï0?(zv­àí\ZÝ?´m$†#ˆ™##r1ëÁÍq©§[Û*j¶WG€¾ÙPö`;ŠˆÖDkì¥V¹Ž#Ì°¬›À. £zSaŠÝ´©î„»Ja|²FI5(Ö®­•g’x…Ð–™óçœñj}–œž)¹¼¸?fÓpräí‰8è¿¥i\nnÉ\\s\\Ú˜­wpB€XÀ¼/ÍÀö­=1f‘÷Ù»—K(85Aô•–òk[IZi‘Žv”Ü¦¡‘o4’¥Ë\0Àld]´ë¥î³øuWÉggY”ü¤ð~†¶#Ö­®l¶MkÚAÊÜFÅXú†é\\×=ÁuÈR=kFÅ‹Éæº£+™»£®†êÿ\0nÄtüEiÙ]o”\rŠõnµ‡µ³±~?Õyƒ\nAÏ÷~µ©¦ÚÈ	\"FóAÆÒ&·„ÕìÌ¤Ž…gb»xç®jBå¸ÙàÖP¸’© Ž£½\r|QU˜äÖîZ‹bòòÕþó!eéž ÖS|žj±ÁÎ@­-Z®Rq*«\"Ÿ¼2:t>Õ‰qv&¸y¨ÜOÝéùTSW“V4q²Ü«r’WƒéP¢F›–\\ƒŒäw4âÛŸP:ÔWƒ–\0<#ŸÎ®nÚ!î\\Äv¨VÈÉ§µÛ†WŽ	=ª%C¸«&åbJòr\r6u.«ÜÒ¦:è+\"Ýœù¨;ëšÚ·\0çšæ­Ù@è;Ž•½,N;\ZÕ-	hÞŠþïì\rb&g”‚Ëž˜5½¦Üj~±3y\rö[‚sÎÓÓÉC&À¬Üw<u®óB¾³¼ÓÚ)æF·VÚþcò‡ ÏzàÅ6£¢.Èu‘uzêiqÎ‹µDJS\0÷ëX1È«“!óu#õ®ßMµž(¦Ó&…\'´dÍ¼ü6PôR{‘ëXÓèQY™íÞ›nèØž=ÆqÖ°Ãb£vEN/r6ºt¶DÜyÝê*ÕÔJc}¸*x8ÍdAw´¸ ”èAÈÏ¦kr·ñMØòÈÉŒ•aëìk²ðŠÛr-Ø·uSÐ¬C9Ë†È?áUˆ‘÷p¸­_ŽHæÐË\0cdc¾=Ã-Üf¡zbiÆA´Ü¯ÎúÕtªYX%žå\0aów ²ŒàñYïr®ä®\0\'8©RlåKp+µw34–C÷”àûTÁÝØsŸZ ´u<Wd/C×ì²\0S‚ñM‰Èâ£\nÄb\0>ôõûÜ‘é@wàS„†«–ÇJÃ8©å—ãlŠãF9¶žjq(5›‹¸î+/9¨d‡wASoÝREÚ1ÕÀ+Qí%q‚+IÓqéUÞ>¸âµR¸Š+èHæ‰ R‡¦iïoÞ‰ÊïP§·?Z«ë`3ePô¬«Ò¡XÖ¶îëXºŒaâ H¦#Î¼Ar~ÖBŸ—¥b¬ÌÏ–<J³âô[¦;É»ö¬9/TÇ•8`yÍRVf±WZ–‰«—ibOJô=7QYmD›ƒ\0@<×…Ç©Š0\'Ž»O&¶tŸ˜&ØI\0öÍ8VŽÌíË|¤uª·:¨D8É®2ÛÄÈ°î•ûzÖtž9$f‰T°èO#ò­¹¢ˆ³:\rKQ£ÈÍ´†ÚPŽkÏüCyÄŒbgc×ŒsøU¨¼E=Ô·»RF¼l“ø9ëžßZ¥¯Ø:]Å’Û¶„,cå“:ƒëÞ¢~ôoÃIY˜RJò@\"fm›²lÕcu\0ã¶*üÖO­¿>\\lRTg§Ó>õO°‚òh“›hdrŽî2+‹’MÙ›]€àÀŒzÔó[:\rÌã#øè*Æ¬Qg6ñª˜áb¨À°ÏREgdžµ\rr»tX·¹òfÊ¤\0A2”íFú;Ëï´¬Ioùf«qÛÓši@­œVN)»bk–¸Q‰À9¦@æ…®:SÃc5iXO©À\0¥#§5 \0­P\"Ž1Í7nûT«’:b˜ê\0È\'&„Çq eÆjâÚ«\0êzž•^&\0`õ­[HPIã5i2[#†ÙƒôëWÄ.«Èâ®B\"EÅK¸I\ZÄ0BÖÉ4gr¬*zw«ÛxÏA×Šµ a¸ƒz\ZP06ŠÒ-=„SŽ>:f¥H²y«A”Íj„\"ÆÐ±!eÀÇP9©6äbŒí<ÒhA…b	\n3šèôk	Z&i†@Ç’Ã¯Zæ7\0à†#éW ”Ãwó[`ì;ý+š´[VEÅ®§O§Åe©\\ù’IK2à@OÊ	$c8÷ÍXÕü=\r•­¼LÎd2îÃ$‘ü\"¸÷i¬gi¡e6Wi÷ê+rçÆ²Ýé¢ßÉÙ9\0<Å·GqÇÃ*5T“ƒÐÑIlÌW\0ÝÜSóÇ@=xª0]ÜÑ–àg)æå£ˆo0œäžs‘PÚyRº‡;$ç®O¥vBZ™Üî?á\"†ÓHY Ôä™–áôrIïÀÅpÚÆ oõ)ne+$’(ËÛÈÏ×Š’t‘¤ËE²>HÐoÊ³®Á%p„Á$õ5¬KR;¶‚)GÙö4jX1ä69JôŸø‡LÒt­®[-q#ILà{™=«Í¡²’k+›±‚\rÏ?1ÅuZ‚/ì´éÜà’Ia–V\\¨\'îŽ9Ïô¦×2ÔI?4Éõ6¶¿†K„eˆH6É“lC\0I’9>µb;ýR{ø4-KMv\nÍ¹Ê€.Ï‘=Žsƒé]&™á»‹ÀST3ÆÐùWÊ>b¿ÀG¦çRø—P²Ñ¤¶k¼í»s|µ\n[8ò:ûÒUÔV¢q{žo¯\\bÝnÒ’I]îH™d}ÃxNy+ß4Ã¨Yê÷\Zm¾º,æ#\\O³c\nH(qÐž¾A«I¥ê7Òê¥Ù¼É¥g\n0Jª@@îÍÉ®BþÚèÛÙ[ËlÑ¬€¼S:m$óGQžõ¼šKR-vR¼¶G»d·>U¬¬ò[™ø2qŸËvÒ+$ð…ÄÍ¿niURHó´.y\rØÿ\0õê½…êÛËt-%’•ƒJƒîdcŸAÍ2ÖêEµ[vUdÝòó×œÂ¹¬î¬š³#º¶X4è.U›w˜ÑJ¤}Öê?1W4íNãKhæ…™d$<NÝ òqøb³õ‘îä8råŠíÛ×¾+a´ø¢ÑÖîâG•¥>ÌÊ0©ýà}yâ´‚ob^Ä—m<®·Ó„è—Êã“ßÓ­IleFW8¬èâb\0Ï8Î+fÒMÖf%Öó‘óg¦ôïøV‰Ü–¬[³bÊÈd*ÄÕŒ2ÈûxžõfÝa’bmí`ò÷L…·\0çƒŽ*òé’˜¼q óc.É=éØW*GšŠv¸÷àÔðÁ&Sp8=3Åk·”-ã´–5ÝìºàƒÇ=Å6[q˜Ã¬OÞS~•)1ÜX„+…•ÿ\0„“ù¥Eÿ\0-£PƒÀ4ò\0ôj@ª§‘šJ6ã(Ý	ù•€ãÓ5Y× wÅZ#ŒsHÒ©•”ÉÍWxR¸­%AÐô§˜UP3 DÉMÊãúÕ‹`ìr¹ãƒ]\0]ªr y>´ì+ÜäîíˆsÇ­dÌªo”òqÚº­AQC*ã5ÍMìáKØÂŒšÊz\rï*¢2_Û’iÊ¤8ÝÀàU¸c0LóE(ŒÇ–ŽFÉà{óWÑÃIä@\Z`Û&(HRAÊÿ\0õûW<ªµ±¤cr­­Äé¹•Î\rJñ›K¡°¼rpTH:ƒÓð­CPdÔ,¼¸ä‡dNŽŒWóæµ¬-ï¼Wt.¯¢FhÕP ùNÜ`q|Ö3Ä8»½‹Q¹Î&¤mßÊòã“åhðP<àúÔ-§],‘ì‡™‘U\\1ÛêqÒ´õ=HofgÍ]É²`vüÇ¯†¥I¦,š|k%Í¡ó%.9Èíš¯nœoÅÉ®¦ö—¯ƒÎî¼ƒì:RXYÜÝ]­¼6Ååu;Tñ‘Žµ¹§ß]\\^´ é„H¥€ÃÀ$õZÜ\ZbÚj!l<£töêG˜\0X;úg=#§z~ÒV³ÜN*úÍÎ—¬iwj™#DÊX	éÜ~TH²j\r-ü&$‘|Ì*‚	ÇÇcZþ1Õ®…ßösIÂgUÃ1*2	î\'²´¸¤¸™£X£•È #¶	Ïe=3Rœ’¼ŠÓdhêwš+Æ--šá£†Æp9¸¬:h²]*p@€{šÕÔ¼8SìóCó«(2&\ní\09ú~µ\"xj[ë8šÒÑÕüÆgf$mN\0úÔªÔ”-qòJäºíµ„–ÐÛ[ªÌùeódÂ¹‰>@vû×Em¡Ê’\\CyvÈí•GÌvœçòª×:e·Úeð˜9ã={Ö”%îÞâš{™ÐÚ	q•SŒ€{Ó<³»,8þu}¬B%O §­¾CõÅu-u3h P’3ÐR°$œb¯½¯¥5¬Ÿo~´„fÈå¾”Š¬«óƒÅhÉhàb c<TrÂ#«îÊŠŽd)_/#®qÈ¤uÊVäe .Îâ§‚Ín%È ù`˜Éo^(æKV4ŒÔ\nî\\ŽÕ<*ŠFß›$pjÅÔG\ZªL^bŠ(àØŸQP‹gl¾Ó·=»Qu%pi£fiaSötC÷@^7Ù«7	\ZG/”Šck7qþ5BÞ+¢€ÄÇ(úúWK§ÚÛÛ°ûZyÑÜE…Vè§?Ï\"¸ê¾]KZ‰‹<wµgiaÛ1,>R6†ÇÙ š|ÆáIáY¤Cœ¸ÿ\0ÕfßT ]Ã%ÁXö(ˆêW±>˜\0Vä:™ºÊ6þKíÊÈÀÓ€¿Zó½¥n}QªQ2aÐ´x..#‘“``K“Ó¯ášÑ²Ò´BvùqÈ®‡f	r+Ÿ»š[‹‡‘œ¬£Â¤Óâ¸ó–ëòž+±Ó›Žú‹Ÿ[zh:hmÑ<ñç®ÉÈç*›éq\\_%”Ww›cÃÎæà÷qêiÐßµÌ°þõ˜îj£\\Íg4ë¡¡œ¾>ñ>´QD÷š±ÔÃ é0§Ée©eÜOâjC£é¤îpƒŒeWÊ±`ÖÚ4ýñSŽ\0íÒˆuÙ£W”yB5ÿ\0–lüŸ¥t§;‘¡§q¢AåH–ÓÜ[;÷ŽCürúÕÖ­¤¢ÛÃ©¥ÁA–_/€2{ÕÓâüÉäYfEÏã©§Yø’Æiã´ºh|ùAµFÕoR}ëxs-^¦rò8ùaÖ.’ÞâêÁæ€¶@8]á{có®CRx¥º’HcxàÜX(çhô®çÅ\Zéò×O´¹IÌÒ;G¿¾OáUü;}§èºt÷·‘J…›.¬HÎ×ô®­ynf·9=[XÒdÑWO†Y\"CçyxbøÉŸô®)Ÿ‚q^Ì¶ãÆ7×Ú‚éj4ÿ\0#U†æ\0\0ã‚Iü1^+t”ªçå8¬êO±\"Lcpàà®5µ«È’ß¥ÂÜHóH‹$¦Xö•ÈïÇzç±•ÃkÐ4/í\rcIE¿Ò#¼Ó¾X\rëF(ùMD#tÐäí©ÄêL\ZL!U[ƒ$ò8,~´Í68Œ¿¿—f:qœš³‘¨j<ÖvóODûN\0ÿ\0*§{esdA¸ŠH™€a¸c Ö3„‘q’hí|/}mkq&ö ²×¦çQŒ\0§ß8ö­K¯øbîÐÅe×Í.ÿ\0(?ÊðÜŽµæ,$òƒ6Ö$Žwdò=*þ|,\ZK±*¤Š…cÀË+ÃOÆ´§4­#9EîŽïKñdŸf“Lž57”È¡÷–ø8ÚsôÍgj\Zß‰S\ZÚOr±±ÞHØþèÈà¸ãÚ¹i/î>Ù*›ˆå-`3¸HÏ­-†£<\nðeÅ¤¬D	ÀÁàqëDæµ°F/©ÚÚÁ5õí¤ªòÍq*“<ÎýžA‚µô!¾Ô­ì®åž8ãË–vgŒŽüq\\¼FþâK5háVf7Ë»Ð:è¼-¥êåU¦·’XKîc#aÆp7õ«Í©)½÷5ŒÕ_xrãHŠ}GJ·KÅà²“ó0tôõh—rjn<«h¹×ËÚ0IÉ$û\nÈñ\'Ž§Ðn/ôÕG”c§¦s\\ç†¼[½ê}¶$X;Æî÷Ïµe>~T’4I&uš×îï Wfµò‚2¶ÅØÙ\'†÷ÆkÎ5]¼?§;ÞÍºI±Q[vööÇóé]g‹~\'XÍ¥ÜØèË2Ü<¤}§€¬¤`ã¿Jòâ~Û!šöy\'“nbMk5¸6ˆš	õ‘Ð\0œzZ2Çm·(7eO\\ú×[á»[¡+}©Á*©åˆ‹9Èø«¶}Fî­Ñ¢† v£|ÌÞ¹¢uÔFç\r´¾`1)a» æºI<%\'örÝÁ1?(.¬>îsÞ¶n4xt‹eÌRyè|ÃÇsÏ>µ«Þ<Z‹ÝÚË\"ÚÌ>xU¸Î:â£Ú9ì>^†RYÈ%f\0¾Ó‚Ei½®ñäÆé˜2 \\}i]–_5X°ËóÈ$U\rÄ÷BT•Ô(ÎåíŽ•¥ÛDìÎ<+=ä1FCrÓ&pÑÎyëÇj¥ªé)kr µ¹ggëg9îjåŽ»\"ê9.”—Ý•cçÒ¥½šMvô¹5Œ³IpëËcøAµ”g%-JF=¤Óé~w—’ßº‘ˆáG¨î\ruž×LÚêÐ\")ÞrN0£’~¹?R¹Ó,ãÒ–bë™¶ˆÄœ¶ˆŠÂ¹Ô®ôˆü›aäÆñÄè¥|ÕÏ$CµMâ½™ôl7âÿ\0O[ˆ#Y$0‘¶ô>µæ<¼±’ÚâXYCÄå\"òWã\\ž.Ôg³KµO´iµcYN	ë“Xé;MyÒÈÄ@\'Ž{ýkYSæµú.ÃÞæVÄo#2/E\'Š„°~I#ŠaÁ^§u0ôë])YÉv‚ÃÐu§3`qÁ¦)Ú¼õ>½¨$wíL‘ÊT¿,juŽ1m\'ÊÙÜ6¶*™=Å[Œ<‘lf~!zÔ´4BÓØ<¨ìMYYF‘¢]ŠÙùè*Þb)wár3Leµb\08æ”†+:ñO`iÊT7Ýe±ßñ¨„„zC$‘Õ@ÆG\'z+yå.Š\r„°è½xüEd±,IÎ}êTRPr~”ÚV¿£ÜYÀóMq’@¹Œ©áH=êkýjîêäÛ°®«EŒ!lžG^ÔM¤jÌÀçƒšÅE\'qŒ¸%Ýªr1žâ´4È£¸ÕímîIÉ2«pv“Ï5±­èš]ž²ÐÛ]·Ø	 ÌWpNz{Õ¹¤ì+šK—$Ï¥p?\ZdÑ‹{·[z© 61‘ëNŒžÕe.3ÇAÞ™#€8äúÒaœ:zToÆF?ZD2Aó8¨ò×¥F_\'\0ñíOtÚK)íÅb¬ tëNwg5\\g­H¯JcHc·© ã=:â£n´ÀpEPÙ~6CëžÂ‘Ôã$ÔQð£<ZqÉïš†Hf p1Ò¶t&MhýŸO…îï[;¢*\0QýàsÖ³mÐ¹eHŒŽF8À®E¿Õô&Yì­¼¸cœI&WŒt-ýÚÒšæz“&ÒÐôßx,é~¹‚îÊ7¸¹_Þo]O÷3Ïó\\’x[P}vÓÍH\"—$d/–sÏ>Â»#ÆmwáÔy™\"»`yVó°ÜgÒ³õû(<A\"5Ù\nÐ|âÙÉb¤sŒÿ\0¿Zê„ùSR2µö%Õ<1¥¿‡¦þÈ’Õe€%Û\0YSÈ¯/›ÃH“Åb²Å-ÛêÊß,‹ÔOåW4‹-GXÔn­´pºkÍµÌÙ¸ûñ^«…4ëa3¢ÝZ(eóPã“ÈÇ©¬gRñåZ–•Ôté­î¥G‡kvôÀª¶V/s:ªœe›(÷®ŸÄ—ÖÇT½i#óç˜ü²ŽyÉãô®qnš4–¾ì˜\'ŽEc¶åÜ¡r…&aØïPc5yÓr0\nõ\'©¨ÎÕ\'\0Â•Á²©â€Jš–Vçµ@ÍùS\Z5ôbM6uxó‚ß2ç‡B3î2+O]Ô,u—ºÒ´ÕµµP3ì•>æ¹-ý:Ô«pê…œ7\\w¢í+„Ï#ÜÕ›žM0î-óR}ÖÈ¤#J÷H–Æyn&„ùñ¬ª±¾âéŸCTŒD&åSƒÐÔ¶²Cç¡¹%¢SÊƒZzž­Ü	oqÁØUcÓš—-lÒEÕ-´¬ÈApÈË»9CüêÇ”Æ$›f8ÚsÓÖªÁ%·•®\ZO=Hò•G\rëš‚kÅ‘ÎØ€ã<þ4­¨7 Ég,GÇZ#f’UHÔ1=VbI>¦^FAª°‘µg¦Hn\Z)Ò ^2T»cgó¬¹áòˆ”cHÑÝd)	äf˜ÐË€X=êb¬õcvp22)¦RF:T¢Ô‘’Ã\'µ1íÙN?^€1Xs“M2p@©\Z,&ìŽ•(,7f€¾{Q¿\"Ÿåçœai\nŒt …7¾Ürk©Ñ|,ÚœR†¹‰%‹îÆüOôª~Ó\"¾Ôã‚U_!Am¹nÜ×eý‡®¹Ø­ÔyrÁó{Ã\nŸi|FSo¡É^éRYb±¶–=Ê¥bÉbÄüƒ]þˆnî4xbÕ#ßmá6;+Û·ã¸¬Ùu7½Ò`µŠ?ÞÛ8Ù´~ñ\\úÿ\0úësGÕ-ØµÕÕˆ0;mV“œr3Ø“\\œ\\ ùiìTis«³¹Ò´Ë+‹o%`åAX¼æ?¸\\óõÏ©£ÄZ`½±{{I¢Šð1“ò“÷€`=Gzó3âIlµ9ái%žÂ3±d\0©Iû®;×A¨ê7w~\'Òe±¶[’¥áFÏs^tèÎ¬3êk4ÎGP¿ŽîÖîÂáä·»ä<‚¾KƒÓŽ ×=O%”Kgi;J§lÌFW±é]×ÄM28uyµX–4in\\aŒ©ÎkÂ¾(Âc¼\0ÄÙF=sÜŠÚ1åÒ›:;;¸“G±Ó®tß´±}Í$–êdú6y®vößG]PÚ]‹ËH%cŒƒéžø®Îòæ;Ï.¡d’K	”–e ðG×E|úË®§kq#¢€%ŠäÓ°#·Ö²X…vªè‡&’V8èí¬íµlÛM,*¤ˆ_iË§NI«—–×c9sæ,d.`tt÷­ßéöºu¬«f)l¬­»æJúXCWÓ¤ñ24`&ÔùŽYI(=‰ç­J’“ºd§u©öU”úTÐÃb|’’0Ã;N=k%†F^8àäWSkâ‹=¼ ¿m²’2¸t+$YÏî=êŒZßÌ°éq´“<Lî&p€ösëšôhMÓßc9-4!°¸šFìÕÕi\Zø‰—í+må][æ·5ÅÍrmYV@“ô©ã¸ÜTP¡\'Šõ\"â÷0Õ¾¥,LÉ4N&±»$}}\rfœÉ•#<f²á½eÆ=;ô«såeQËn1Êº ì¬ˆzêE$KÛŒóUÙ$Ú ÷¯Å)ŽÙž6\"RHÈô¦Ák	žR6ƒ‚€òj¹¬®Ê*»ª¡@K\03ŸCT¤˜È½ÅKq&ÇqlÄ8Ï|U$eÚA••îÂÆ…­ÎÒ‰!9Ç¥O(H]8\rÐUH v}€d“W–)È*C/V‘Jä¶«êÊ¨\0iõìj$NA+Ö´1y8mØjÑÚÂ)Ï,‘›ƒÓëkBºŽTXƒyW!·+®ã½b¼Lz/CTšK‹+¥¸™†V3£Ì¬Š‹³¹îþ¿mKOGvVtOË´¯áNñ)1ØÆåÀA SŸJòËOÜ\\\\¥ÌŸ»™P!xŽ`c5»}âwÔÑÔ°¸·;š7û¹úŠòªáe-¹»šjÃ¯mãûwÙ£·Ú¬Ç»‚F)¯¤5«	æ¿H£`6 Xö èk3Ä^#“VXa‰%‹’2rßà+ãXÔn´ølg%íárÉ•>ýëj\n½’ØÉØî¶ØEhašid–@|¹â9î•õëX·I%ºÆcdWBÄƒŒ{sÞ±cÔ.^ÕR\'}—dRMW:­ÌçkYMÀÆUaÉ5ÕMû9Y²%ª6á¾]¸-ÍXŽøsj)†òÛ¥>;ü°àƒé]é§±;ºùpy©\"¹!ò‚¹Ë{ÒGZÐ†àzõ¦#£lãóNYaÅpÅ<U¸ççÓ°Ía&iô tïU£}Ýê`GzYGÈ:\Z«\Z€£ÎjÊž)1–¨58ÉY0b±’`9ºÓr:S‹3M2pF=hW¼„(æ³îeQÓ¥ZºpT‘X·OÁ9æ·ŠÐA5ÆÔV«z±E’p}jìòœûV©¸Œ¯sV€óßÏçÜ0Œç5ËÈ»OZìµM;ÉË›p `ò+•º€†ãƒ^}h»ÜÞM\n„zð;Sâ¼ÙÚ=(1ïI‚¹«—cbÛßÏål$ÒÊmdµ¶Þpº¼ýÄm<ü»\n®«ƒ’3JÈUÎÞ3Z)÷!£wÃ—\"-B2°LÓ24jð·ÎŽ8èkÐ¥[ËÝV‡U†Xž\'Ž|þø½=³Ç½yEõÞ™wÝ¤Í\rÄM¹$N ×MáïÝi:œ××1ýªi™KÈXƒÁôéœwÅuÐ­r³Á½Q·m¦6¥pÓj×ý’øÆ²Í¸(êØÁÍUñÎ›cávG·µÝ)Q2Ý—!ˆ?ÂW¦EI¥xÛOƒ\\i®ìwE4ë#HO(½Ç9tëToµ3PÕõo´F¿f˜³Ã#†2dghýÝÙæ´“‹^ë!)\'±È,OzFBªO4à2sV¾Îm¼±Üi\\võÍpXèW)œg­MYKrÁ­4Âj¹S 1œÒ6q€x©\n`íÅ3Å *#m\0\nUV$R 8\0Ô‹÷³Ži¨ˆc.ÕÂ›´gœTì†=ª\\/&†Ñ& òjí¥ÁF·?Z«\ZÇ\\÷æ®Ãj	óN+PhÕŠ`ÈOfµ³ëU¡ˆ$`7w©b|Mtn‰µ™ªˆÒDX	ßÐ\ZnÍƒæÀ$~u-ä±m;ÆÐ\0\0óI>ÙNP€¤“JÎŒ¬KÆ2*=À0 ouŽ5äž2j9W8ÁÆ3šÝ2ID˜ät¦;ÓS>Ø¥aê0¬y9â—q,0Ni@éŒS¶e·áàc­HÑdjrªyd#&Ð§\n3ïëTË‚H\0ŸZhç\0ÔÈ¤Œ0yÍ.Dµ²¾x<Ó£ ädzÔ²Ûb\"ùþ,Tf\'U÷èh²âêc„ÈDg}9þµ^pï¹#\råƒ»çœu«Ãåª°;8)U&XñÐK¦€QI\Z(%ˆ\"·˜\0$öÁÏÔxWÄN¶KÓVí\'”4ˆÀ‘¼«p:Ö·,8Œõ5·£¥è€G\Zï†\'ó8b1œý)ôÔËRÕµ±Óï-¤0´ÓmºÃaœ–ùBû`c5Š<a~¯ökäIìí×z‹˜ÃI\"ç€ObAý+v=+F¾Ð‘žIH¢«6|¥\'—»\nÁÔtûIàž8\Z£‰‘H2‚Ü 9¥	)i`i£YñÞkOolÐÚ*)XkŽàŽ¸\'½o[ÊÐZ´ºœföÈªËÂ›Dd±Èí’x¥\Z@“O[V·‰ gÊ¸“ë»ñªóZ´Wmag3\\EŸºÏ‘¸óÇâk\nÎ5béŽ*Ú•ôç¶–\r^ÖÂY![¤bž{˜çqÀàÖo…´«ëi-/ähÊL˜ÆXƒœÛµh¥Œ)z\'Û±KA<Ž?ÏçY²éóBÍu*J%M·dT^…oéÑ[Ïl-¥Y­‚mVÚ:ƒŠÃ™¤;!bÁe=N=ëzî‘#àp‘Ü`b«#*¡·sµm/ØÕ´bÔue[\\¼l úæ´m£lnÚJäØÎ(µSr=ÐÂV&!°~r\n}ëBÂâXcxv\rŽ\0uaÁÇOçWÙ«£ùÚeÍ½êÆY²(ïqÐþy­k[o6Í­¤Ü²	7Fá€ŽNpIÏqY¤Ä¤\r #æÅjÛÎ›\0‰w<‹‡Ü3´ô8úÕˆ›È6³ƒå‚²çó©ïd»gUD,2U>î}½©\"‡æäzzšCBò:ô¤ìQ¡<ã£=ªf*`Š@(\0c4™ž´Ã õ¨%›h¦-‰h2ñYÿ\0h\0y¦›‚@æ‹fip+6iI*ÞôégÊ“»¥Cxöím`ØùÁ9æ•Çc>å‰ŽBJò8©úUk‰,¯Rá¢+	\\HPd€1“ìiòÌ¬r?îýqYwŽf‹6Tà°ãŠæ­®…GFKyu¹¼6ð¤ŠìvxPOP;ñRK-ÝÎ›š#kn~Ñæþ`HÏ\'Ó¥b¯›\n	RO/<.?ˆgšê in#¹¶·¸‡çä`¬XQ€>¼þ•Îâ£dks2Òyî_6ÈÒ	\"aqiÈçßÊºûË“œ‹#nö&6©Yãrñì?<Ö=üSifÒæA´é\ZÅuo³k7ñgÊºh5©oÏäî¶Z(ÏÞ\0zýIÏã\\˜CX+™÷ÏÖ¯4P¼\0ÇbÐ‚±Lð’ˆdÆºm+Ã6W–Ö–ÙS¶ç¨ä®ìžzƒÓµ`k—$9KV/*<|˜1¹ÇÎuÈô®ŸLÑmâðœz•íÂ-ücÎKÍøV•éÔ`\reNœÝ­ ÛKs›ñw‚æ#NŽÚ¡¹\0¡HÜíÚŸmÁ\\ÂéºÜ\Z¬[i ŽHÆÆäã;‰Ï®kÚeg½k;—·Eb²®C|¬8öÁ8®7ÅÚV«§FšÒ^ï–\0Wr0ÉýqšÚuÒ¨ G.—9CGXO¨]	¨@‹€HÇ=ñÅMqg¾—–’¬ˆG–¡;09þcõ¬»w©0ff3Y÷ ûÖÕ™†ÂÊ)\01]Á\"H\"vðO_ÂœÔ–·¸ÓCt	.µmF->â\'gLîIh¦3×°®š[ËÍ7ýæÖkYÁE¹dÈÊž¼‚?,Ö]úÀž&¶Ô~u‡`-åå[$6Ol‘ùWE§µ®¡áÌ\\@%ìX«dŒã<zõë’¬[´šÐÖ.Ú&p÷ù1Émn]Ke\\ÊóÈÏ¥RKbÇ€\0®ÓVÓ–éZhÄQªª’Š1Î:{šÌŽÃ<ÅzØ~^Cšw¹Œ–mÛ“ŠzÚts]$6hWËØ7äÓŸMÂd/=wz\nÛÚ$ìO+g6Ö&sÏ¥DÐI\Zo^â·¥€,eŠþª(òíÎŽ;\nnWsÂÉ0»°6sÁªG+¨|žzñWæI#nÜ£ñ¦4JauW=‚Þ£D;líâ–UUAÞ0	æµ’+M\Zä]Árg’<a2<Ðz ª#M.9\"˜ýänÄTöVFwirÊØ¶=+*‰K[è5§C:i$¹º{™Po‘ŽB.ÜTöO,qæcŸNýkqmbqu$›Äq²ªq‘¸õþ¯ê‘iò­²XÄÀìÚí¿Ç­gíÒj)\rÇ©…\Z:ZíUÈbrsÎF+ZÒ)îæ¤›8\n{-X¶´ò#t·JëÏN•Ï‘Þ`Q°.ÜcŽ;Ôó);Û‰râ	Œ\0$àÇlóWgÔ$ikåíòú®Ü0© DÒ9Þ2nc\\Ô÷³®¡y½¼áÜ’ß^¹©kÞJÀÌµÃ©3\'¿5vÙ•#ÈcÊœTòÙ+!äY¸GCëQEp§:ò‡åÜ:w®„î´&ÖÜØº3Eg;$›“å\nÙ+ÛŸJ¥myo¬ƒåfÈPsÚ¯éïo*‘,a¢Sº\\tÇ¸ô¬Í[Ê7¯$^XFäy}¨§+ÍÁ¢¥Ü­<ïs¸CU¹¨š)Õ%~qÐu©a¸ò—€9öª3\\”ºÁmÙèz×Uí¢ ’&‰˜ErdòÎìlnE3X‹NŽå³³R=Óª¹r8êsßŒÖ†…dÚ†¬6ÆÆ4åŸ ñªúÎ»d]í-´ðÐ	<«‰ããÌÆpžÙÅ]+É‘2Ÿ†t»XîÚîö(ÝÅ³K2€I \rùö9»k¿[Ï¨K<Èä¤„ÂS{Žÿ\0ã\\Ã[Mâ-MQ¢0$’E\'a\0.0G¡# úWu =ŠE”k‹›xðs\\ö\'Óœ\nª­Å]\n>ó9ÝwE°Óôéít½6àÝ4^Xò.KŽ€°3Ðö¯Õôù4­ZâÆ\\ï‰ðsî2?}	âM~;ÆÓ,ímjíDq©9ÉôœWÏÚÝ¬ÖzµÄ2™.¿xÄç5*î\Z”´‘œb½SÀ£ËðÆ£öü-¾èžÑ“ä‘z}I+Ê›\\Öÿ\0…µ£ir¶³Êëmç$ø\rsŽøä‘œúS§¹SWG·éiÃý™mnmÀXUv‡\'%¾y®ÇZ^«¤é–v7w0Ý+äÆ¨>eaÀàõÀ5éZV¡ïÙï‘<’)eE‹–ôb{t#<W;wxÚâî+½6[9,2ñ²0.ävã©«ó;íÔÏ±äº~–´£_‚âUm’OÌ·p¬kÛ&–öi,ÖGØ”.9Þç¯FÑ¼;¯+É#3Hêñ¶–Ç×¾p*£ipXÜýž%RØùÎÒvœtÁüiÊ’µMîyÌq6àpxë[öâ|nP½ºb·$Ðe¸fž\\´˜\'Û ¤\Zl°\0\nðk8ÑÔ¾{›7Jºj[:¡Š&$`×¨5NëÄÚ+Eo$‹2õ\rF°—Œ‚>•™}(Ï\\qŠOîËSèc_ê7W7i$,ç©5HÆÌUœçqè\rX  Œš™IFWÛÈb°œWB®Q¾H¯–¤2ðØ<\Z¦»÷¤óéW®!;|Ýj‘&Èo¯—&ƒ½Í›IÄ²	&†RG—<gœŽ Šõÿ\0x‹DÓüy4—ñµÌþFm¬Ì@Æ|šñƒrÌP1G^pÀÃté–ÊE#cŽN:sXºi»²“75ÿ\0_kW3¡†HNÈ¬v¸vŒ+1Áãp9Æ)Q	íÇÖŽUØ.9å`¤gä»ÕË{´ŠÑãŒïÁöLÇ–ÁÉSÞÚLÈŠv\'SUÊ\"ÔÉ³Ž1“]F5¬öQ¥Ä¾]ÃK…LeJã’}\rs0ÊeŽ8œf58\0š¹qeqgnŽG-¬½1ïSR\nH¨»}ÖºöpÃ=Ý´2Ãq½ .>|/ÝÏ±Ïé\\_ˆîežHãš-pÛ¸Á\0ã\\Ö¬ÓÛO¦C%ÓÈó(Ø\0 £ÿ\0®jŽ¢3¤$h›Ë>òHŒqŽøâ¢•8ÁÝ-BNç4Ÿ–­Û1,íÃq“Û5]#Ý(\0òkUôò-àš$|:üÅ¸ù‡\\WXºî h$\nYO\0ä)¨‹ù8ÇëWonÛï§•\ZìSo?ãTÑ[i9Âö›†±Áæ¢‘·G5!Rá°§½/ÙÊÆ²v\'Àr Q–=¸ ™†éÆFÒ«wÓ‰Âg#nOÅJ…_˜‘M‘J‘ƒÔ*kr#_;*O`E@òyž™éŠ¡¡ñ¶1Ï5*òIíU	 b§†Bü)0±¡`Öq\\¤·he·\\ïŒ3gŽ?-Ñ€Íþˆ]£r~R9QžåYûÉ•%µÃÁ*È˜%yšØ\r8ìç»h¡²·wy¤úŸ¥U•n´÷0ËŒs¸eMoxróR:º\\i–Épð°`¯…éŽ½+~kZí§ö…ÜöñÆÚ‚ù\'·ÖœTZ×r[iœ\\HÏ¨Ä äíZš]äV÷&[ÈÍÂ6wDÇ\nIà×iÂKÄ–)%¹ß	Éo,\rÀc=|×/©øcPÒÕäžÞEƒqU®§È÷AÌž†>» ½‰ì¼‡ŒÞ6XàÖa d)úU›À€ç `ŸZ¦»Ÿ·›¹KbU9Œqüê]¶ž~•#’©´fªÈäzÔˆl%ŒŸt75;ŒäçŒÕt\' äÓä~vúU\0çŒSËŽ1Ú¡šxã}i–ƒ_Ö£-øÔ®8È<T<g½0%Ž óïR—\0€3Ò«cŒzR’ëÍ+Ñ·kwäÂw9Ã0ïíO¸Ô®¥CÜ#ÛŒtïž}k\r$p>V f¬[o™ÊoPNHÞØÏãI]l+5Ÿ‹eµHcxã	\n…cèOqT­µéä¿wxžf”¶#N¹#ŒTžÒ´»–ûN¯tcµI•^YóéŽx®Ò<)á›Y]oGŸ#£ù„ŒåXpqÔVœ®Jòf|ÖvEO__Zêée©!´²»ft,6‚ý9úWMsy«ZÜ]Üé²›÷@ØØŒ¨ƒïŠ±¬èšN«\r®¥u2¥»§îb…²77|u\'Ö¸ífæ¶èìÐ´\nÈæ4À(r71ì{Rä’÷¯ ÓLçu«ûGV3\\ª™3ó]¢´t«\r&ãO‘Ø7˜ÕY\0òÀÉ>‡5ÍM,›÷9;½êþŠš}î¢F¥4‰ÀUˆrÌxœ¥£±]â2Ý‹XÝ³pèk[XðF¡¢Ø‹›»«BH¢I7:ç¦k¥°Ñü—Òi:tI¤x.¥˜sÎBzW¬Ësm}¶hãŒ®NF3ßÞ»}”cg©š““«iÖvömð¹–xD’*®Dÿ\0½d•õã#Ê]‹9äÔcç­rÊW5Zh0Œâ›žr8§;çðô¥TÏZCI=MI«6±#JYÀ`§î“Ö¤tEsÈ“c¹DÆÂ¯Xiézì²Oå€¹j\'ÁlÀëL.êÄ£qŽj[…Ç][GÅQ‹¨4ÈâR($µZÂðªãccç$g&µ–òÑRÅp„n‘ÈP·=ê\\šŸ,©\nÒ¥–c).Ê	\'ÓÔsõÉö¡æ.ûˆŽ€Sb7¼>“\\‹•i\"Ž6Ëi$]Åä`~k;W´’ÙÕ%ž6Àà%(Ô¯g´[eÚ±‚9Æ)—ZlÐÂ“£.…¬’jWc2ÆA4éH*A\'¯5f;Eu\r<ÛÆ[„ãûµ­Äf{“Ž”ÌsÓš¼Ñ\0ØÀÔ2Ç´r)Šä8cßšRî8¥Ž:Ô„ 1Ú†Æoèò[[Ütå¶èød÷m5áhËº+’\ZFù™sßÞ–ÚÁîìž˜©A˜ª4Žˆ¬«ûÄuÕË;3;¾Ö4ù£’vÝ¢X8p1ƒƒÏjé<?¯iw/g²D\"\'2-Ëañ×8úW=œ)lÏ+ÿ\0«!ºsúÖ¾ƒá8/\"3^;Ä01õÏzå(/y³XÊÛ÷t¼Qmbt¸-#˜FÌÓ£¨ó€QÇ¾zÕOÍME†Ñî\'3ïŒõúV¼\Zmœž¹Óm•~Õ/nâ@¬øür>•¤¥ü6ò½Ä\"ÑQ‚³qŸ¼9ãùW5NfšlÑ¤—2G9â}~Âúââ+Ë)b”€O<£Ÿ˜ƒëþ5Â_YÏe;0ÞÖŒÃ*ñÏC^ñäéWzkê-l.`\\4å3d{éXO¤Æú»Ieb#Ò¯ãe¹ã!êë‚GqÞ½6\nNïDŽZ•ï+u9	x§OÑtéc¼O´ $(ó¶1ÉÁê}_¹ñÔ’ÜËb‘¤v÷qÅ e$ôÇ)õ\\×5â?éºn—%Äz“¬æ_ÜÄStn§¶ñü@v¬È|7«iö_n‡Éºµ|¬¨™m£Ô‚8úŠÃƒ…¹¤_´º±×éVº–±iqkqxÆ(8‘fMÞBãŒxÔUÝÃ‚ïL’öÃNŽúÕ•¢wÄ…ÁàŽÍ^}‰/×Sv¶w,Èb˜±(x\n}qØ×¬øèi–ûu\rI`¸*ª–½”à¯#“ÆEq:2ŠhqwÜòMfîòK—·½ŽH‚˜Ê)íL×YàÛK&¿·þÒ½¶šƒl’¸\r×\"´þ!øbæóS¹Õtûuš8¡J€áÙrrÁ}~õåÿ\0Ú·RC1<¬ª9Áí]¸j¼Ô¬:—â¯Ø$wzµÐUC:¼gqè$ãÔZ>‘áØWn¥*»ƒGæ1‚¬0zWº´¿Ùoi<Ò+«p1úõ¦ÚÃÜi-m+«+e1¨ëèÏZÕFr÷SÐ†–Æ†©q§„h¬m2îJò‹ØøÓ¬. 1:ËÜF÷ÏµféFe¹I\"ˆöÍ>êxí£ýßÞVËyç¸¯F»™µØÖ2³¬q¶Ð€@çñ­í´ÙDk,ò£`îùAíŠÂ°˜\\üÌÛQ¸\'Åtš•­ÝÒÂgŽIXü³†öúšÖ½E“fP>žò}ö$K;H`þu—=œ–³‘Heã‘ŠôíöÞ-LXAhÈ7+H7 ò3éõ®_\\‰µMzámÕe|±Þƒjíæ¹(âfêrÉh\\’å¹ÏAµ¸aŒŽ	«Ö²FŒœ‘À5™)	!\nÇŽÙ©`ç$àûW¡¹‹7y’YÈ;	Ž1RÇtÆ^j”3¡ °Ü{süëvÎÏíåÒÛ!±•^ß\\ZŠÔI6gyóŽ¹Zê4@1Þ´d†FY¤‹ÀõÄàÃåyi¸1c =F:U9>ƒLÂrtéŠR#<VÅŽ¿ÑÉm,Pïs÷älãz¹ýFá™F1ZÓðÄ–÷Osi}f\'Y¢À9\0¨dÜW5v”š*³ÙùÑCa%¬êG&ÑÁÞãžãŠÌ´´ºm@ió¼p2H	‘†pR=EgÁm§jðÙAv‚R|È<Ö„zç¿*æ¹q©A}m$fžá\nÈ_<à¯#¨®%UóY=Í¹ç i3éú.¬Ö–sÃr.\n‚W®1Î3XÚŸŠ ³†ê8™#½YÚ7®ÐèGPGJåÚß_¼\"æçJ&c§g$gêZ§ªZÜÊË4Ëj³Ì¡—÷¬Ì¯5‡±ŒçyHMô&²Ü\r©¸CFHõÅGo?šrOÌ}ë>öÒæ+·g’	0FL?w§n*Íšù‡nµìPjÚÉ¶Äv}³V…ãE*—=@ìk.UÆþ3Þ¦¸Q\"™ÝÚºŒÍ{{ÂFzV½¤É7€aÎOzãío<¶ÚçŠß²¿ìtX÷xŒñEÝ´\r™¿€éØŠÐ†`i\0çÚ¹Û}Cd¼áºŒVœWK\"úSÝ×FP~SÅ<ÈûVBJÊzÕ1n´Ò¤%àÒyàf³|â3ŠŽ[¬f‹ ¹°\'ã¦IvqÖ±–ø/Þ5\rÅöÑx£•\nåÛ‹®y5—<âF#?JÏºÔNrÇŠÎ}MCàž¥Pn_ž]¹Ã`ÖmôŒ-Ì‹÷€ëH÷ðzTRÎ­\0ÑpG\'{3<¸Ÿ\\V%Õ¶ö.§¯Zé¯9Ÿ;B°5™-©wo(v–l¶0sTW6‹9·Bê*23ž*ôË¸œ}ª/ƒ\\n&É®FsøTê…£iÉîJlÁ·ŒáŽ1ž•fÒH¤6ÐÜ8ìj\ZSÔTÐÁŠ|Ç1‘Ž‹œÔù™=Í]Ó,í®n$K™™P¿ÊXŽÃ4^Àe¬C`;¹\'§,dœ·åZ76‰ijH¤3±Ž[o¡µPdcQwV8òÜ­]”,’™#EEÇÜQÅ65ßÒ¥UÁô­”I¹\\&9ÇzQ“ÃïVŠu¦˜ö‘Áü*ùP®Tû0\'æ?=˜ùsïWJdóL séIÆà™\0‹	‘É¤# oJ°«ÇN)0I#Š-dGÍ0¨Æk@ùl¸eÅWhpê áO­BÔiÆ˜ÕÈX¦2¼™ô¤0ˆÛa9`yÁâ¤U$px¤R$FfÊŒàûÔªlïLDÅJª[síZ\"[-G!\0w«ãõ¨>8§9©ã¸lf›Fl³‘4€Ê¬ÅO8ÅM—çÚµÊÈm˜nÎ=*º[4¬’x*ù€ªä.Á‘ÅKOtÆ3ÈØYN1Þ¡uÍ\\h\'œ9D2yK—*8×éÍ@¨Ì9iDEŒJCµ=¢lÔÊ¼§ô¦ÐÚ2¸$})Ê¨U#š³³v Ft§Ð.=@•b‰S$z÷ö©<ÈWb‘÷G Å,i·ã5­a`²LžcaAõü+)Z*ãZ™Q¡Š0¬IÈ=;vÅLlš%w+c\rŒgÛë]cè–—óˆ¬ÇÌ†~Üu8¨!Òe‹j¨Y\0;ˆzÍM5rœYÎ®”îÄ*Ü3×\ZÖÓ-ç·´imŠHÅ™\\\0pA÷É­¹l!GÜÊKl8ÛÓ5\\[½¸`€ˆß¨­Sºù^ÉmÄ’Û´¯Ÿ³Ì¼#ªžÜÖBÂÑ)…OÉ» âºÛ³ê¿f,Å]P#Óÿ\0­PA ´ÒrÃfí¹SšI¤µLÊ†Úáôü,›1wg¶Mm¥K5Ä~[lO1p0Á‡oÀÖÌ–fŒF¥%òò¹U*T’^ý*•ÌOÀmtÀÃ!ã5\n	°{±[<‚[™‘À(N9\'°ü)šä@H¦ÌvòTg†Ç|v«óª²¸äx•UtÉ/ug†DL€±è¸É«åÖás¹¶v)€«éŠÇò¿{‚:k«¸€»8T\'“œÚ²®ìL2\0[€ÙS‘ÏlÖ–¸Š«ghvÉÇ$åMj26òìC3á‰»sùUÉŽ£‘VbœóÉëFÄšè<é\ZF“Øt«¶ÑˆHpØpA›¸_z¸“àÐ4j›†rK¶I$Ÿ©¥óJ‚Pà‘YÂmÞÔá)¤2wmÀç­S—©¥’cÍV–\\z`1åÁ<Õi%Ïzl’qÞ«—ÝÅ+ˆ{H½0I¸\ZküÃšHöílýîÔ˜ÒäÈ\0¨gŸZ…Áj—©æ‘ÎÔçl32xFqÏ¥U²[¨ïãko.iïÌ7+ãœÞ®]0ÈnÕMÂÍrío)‘w!<ñ‘ÇãYÏb‘B[„:•Ì×r@²)\"(1µ_¯à½xíO/=ÍÌ2ÙX]$c÷HIÏqœzçŠ±c,p±’â`@”$±íå£?xƒëÀüë·Ð54kK”ºÅ´Žì‘`2Ä‡£1þðâ¹j>[2àŽnúx.-.–qªhC!šIn-÷p\0G?Â+>Æý-\\‹¯˜)F¶f žƒ>˜>•ê6[Ëâ[­FÚâ),&öà†ydÉ#rŸ®r+ñ+ªÞßOwafßh™N‰žJ‚¸\0>æ¢÷“´/[&Uhd3C®Z\\l†yˆHÃd€>ð>øõ¨\Zöä_©–f»µ†WTŠbZ ª8§J©i§Ëå¼6Ÿ½f\\Éž7Œ’°:×E£Mdš”­¦²²åÞ7*1ãþ}iË÷k™Ätú\rÖ£§x^IçÝxL¨ûˆ_Lîœz¯©ë_Ú¶î²ÌU¯C†ËÃÓÿ\0¯],Vú-¥™²ÓŠ<r erÊ­Žs§Ûß[Ý›wt–\"«6P\0yÈÇùï^tªª“¼–ÆŠ6Z1hAµíg’IrHÆÐ:m=Å^³Ñnî ’YµÂ  ù…iÃf¦%JHŒmPG\\õþ•Iº¾µ?gF@ª[r?#hîùëWÍ\'{1¤Œ9ãÓï\\âQ9ä©9è;Ö¡‰nmc²/€«pËžFGZÞ1Gq\nImfb•™ûô#Ö®&žQ|­›Œãß¿úÕ¼\ZŠ³&Zìs,Ø\\ªgp\\ô8ÅZ†¡ õªÚiÉ¶MÌp:cÞ¦¶&Ý‚	ÎÒ¤d\ZìRVÐ‹>¤véedeVe9\ni³ÈÍ+£?(úSÄ¡.Œƒ²F)ú„ö÷\'Í¼³³˜ñÓø¶)lRq*FnÉÝÏJÌÔI0‰LaÇÊ\0­+­BÑ¬Ì¥dÆÞrF+çTò¢–=ªâA•lô‡ß¥BRo`vE	æµš9cpw.<¶n>¢ªÊÐ;D±€»W;BjœÒîÝ»5¸E<\0:ŠÛÙ™¹\Zop\Z#ü¹VçOJEŠb\rÄHÒ$]IÃêESŽ ü˜c8Î*ý´³B¬\"Ê“I\\­)BË@½Ënd1¬ADi»s®î§Ö­Ú¤rJÐÂ7íÜxÏsŸjÌ\0Á/•Á\'œö«š|’Ï Yì*ÜnÏ8Íe({º\r;»\"—mî÷,U°\0É+ŽHüªy¶¼ÈÒ98Àªí\n[“v)íè}*G%£?‰~cÜÐ¢šú-åÂêáqÇ {U½#LŠöaåÏöy@Êyƒ*þ¼Õ!|­€I8=+§ðõ¦^)ÝTA\0bž\'ššóötÛOPŽ¬v¥a½0‚ínvc’Ã>•ÎÊ_€Hï]†»og—,Åö€2_ ±ìG¥`éºöŽž—v³+\\G.éŽæ¹°U¹iÊU:2§Þ†d-$l]†:‘OfšàªF†M€ò£<g5ÔëVbâÕí4´$‘Ä—¸qÚ¹}+Z·Òe¹Žw5ˆ@ñà¨Áä×E<W´MÅj‰å³±$6ReˆÏ*y8<ö¥ŸK†IWÊ‘ ÜcÇ\'°«Ã¯Ù	.|ÇÍÄŽ|¹0xóíPÝkööIqŽä²”RÃ8€;ÒrªäU¢‘ž¯åÛ_Xy®©8[¦w«ôž¿JÕ6vú¤³,‰4‰$»”áÁÈÏûÝMr¾í^!±PÎ$“–Æãè?ç]¡y>©«N÷³ƒoà¥° g\0þ<×Ö½\n7JÆ3³:¯\néìöºÄ\"¶–Sää˜ú½ÍYÔõ8<8ÑÄ‘5æ£tÛa…8ãÔú/½fÉã[MBI£·–æÝ$0++¼qô§è\\µ“ëwŒ.5 dÆAeŒQzÏçJJWn{å[	.ý‰}7ˆµ‡»¿xJ„Qò©êÛžõâ¾0“ëOi+È·`Êá‡ÜrNFz•î~&µ¼Õt\\YªÛÜ¼Š¬îøòÆ{^{W’üA·µ±šßL´ÑÙþì¾ì»6l¯z¨ëw´pÄu¢+v–eU–8\0Ô‰	cÅii±½½ä3¡ £‘Ö’Ž¥6uþ	ð¦±}^Xj’Ç\"¯ÊØÚ;’¤óô®PÔ¼UáÍN8>ÙÜx2‰\r¾Íá²?JƒÂ~!›G†UŽ*·Þg8\'š»}&©+Ü4›¥yf2˜\n¹ƒZò»ÙìfÙ†noZín$„C?™æ©Œ`d÷>¼óSÇ™qçË\'›$£tœc=*Ø·vÚ_\'jµ!xÈªw„†TË\0MUº·ŽL€\0«CF*œî0i!˜SÆa,;Vû‘¸ÖýóîÉí\\ÝáÎå\'†¦lks+Êß6ìcÛbAå€Ç­0Ü­Möw‘7/Ì=kšV/VeJ…úŸAYÒÆë!ëÁ®î\r\ZÞÚ$¹oô––hâ\\ƒ»8úu¬9á‚%•<µ`¸W~ùÏ¥eÎ›Ðµs&9ÂÎƒ0¼cñ£ËWnHë‡¸ãx=ªš5eUÏ¹5\r\\±Îq€:\nrÉŒ(¨¥”I(UÀüéðªw1ÈëIG¸‹K À>œb®ÃªË”ÖHTÅ1ä¯5ž€Žú{ÓÈHÆsßÒ“@‹Å×íé‘ó \\Õ‰¼ÉmŸpaµFÕÜJŸzËóñ|a€íÅ5¯œ°r¤ö¬ìÊ¸ùîóh!L‚Gz‚IådL»aFg¥6W$äàšBL§8Åh‘$hvF¥j\riÍˆ·‘Uö>õ$t\'¨úVSeA=jIPXeVŒ‰Tå¿Z«\\fî‰.•3I{óNA1 (àòVKóaÂp	É¨ bŸzvcY”0 wÅK) Vˆ«8\"8$wÇZßÔü*öÞ²Ö2ê\'È*Ä=1ŽßZçÌ1¬»Ñ²v˜¹àzçð«cÄú—ökiæUšÑ•€×…\'¸÷ª˜šÔÄfÜ}êu¼hìd·\0r	ã®*)íæ¶tY§˜»×=Ç¯éUÛ–ö§d4?{€xÏJxÏËëQŒsÉ©P¤Í64‡ôäl`‘M$2jA‘ô¤U‡†ôÇvÐa$“Í‰\0\\~w¥fnä÷§ƒœÒdšö’_|wfÕö¬Œ~céÇJë´Mab-\ZI#Œ¢8$†=A ô5ç;¸jHÀry¡!3éox¾ÓYÒ\"–êæ®Tmp\\\rÄwµnÞÅc{nÖ·~SÇ(ûŒG#Ú¾X²½žÞ@c•“Á­Y¼AwpêóO#¸þ ØÇÒ“vØ›|g¦‹MMÄ(|€x`0¾Ü×+$¾_ŒVÌ×Ÿl„‰Ý’1•SÎ}³XrØ³N-µ©DfFn­Q“‘Ž´c\'˜Ç óLÝÛsØÒüM#}Í0~´ÆÉ²Jz18ÉüªçJúÐ4Lq·\rµ\"œŒÓëÅ+ƒ×š`ÚRE1\ZZ,ÖÍ0uUN\'¿µ2Õíb½G¸ŒÍýä\r·wµZ	V9>o™Qžµ¥$VW2¡°Y²çY\09#Ó‰³;+\ni:Æ%î›xw¢03aÁÇ<tëùÕ}7áÔÚ¼oy.©oIåßyˆôÏcëíXÚ\rµÌ×’CÏ•#ÍŒ6ÒÃ#€}k©×bÀÖë5ËY¬`B[\0ðˆLõ©”ô²båw$ñƒ/¡±iâ½c.U‡ÍÁ\0ƒ]v•ð»O}Iº»ŠK˜”Ê¥ƒãõæ¤Ótí:MÐ}¼Db¼Œï¼J@Èzõ«W^9Ó›N»‚5š	í×ˆÔm\'œgýÞ•­9NQL‰Zö<QðÀ—QÔ ³w¹û6yéÓÖ±,úUÊÝ‹`Ïm\"±.W=é]Õ`>¾2\\¢\\Kq”O˜Ü÷>•ÈßjW³¼“LòHøIäâµªâåÌ„¯±ÐÍñ#ÄÎKH.drÌ±Æ>ÃÚ¹iYI2–9É9¨Ñ3¸0ç4éà‘Ð\nÅÔ“Ð»$0à¶§8¦)=ûúT£7íŽõ\0Fp?‡šBÇ·šÊêFà@<Šhç©¦2E‚J•¤wg,jºä‘ô©­ ûUìp†UÎq¼àp3RÐ£žh<{ŠÒk5H™J&æÉGÝÓF+<àdS¡»c½[´·Ží˜4Œ¡qÐgóªl:ã©©ì\"y¥£…vQýãéJK@¹×jþðæŸá‹mBOuì§\rl9e÷=År°ØÜº™dÄËcL»\rÈ|îiVi£‹`wØG@zÔßK¹æEi/Ë#¸èGÝªŸh–f[xmÇ@äšfÂÈÎÀàb¦†{kEó™$çã Fƒxg[‹O7òZI±8ÞÃ$¦2AlïZ7~%Ôn´Ô±39‰ry<šÄe\'ïh¦§öÄ\'žCdóõ Î\\aˆ¦”P;æš#çÐV H’Þ¤V5\"1òšO7Ú“B;½:h@GûT‘`‚BŒ‘ŠÑ»Óå¼ï-µnbÅ¶¾~žµ\0ðýœÏ$°\\Ë\r¿$dŽ{ÖLñMiy5½µÒJËæ)Àa\\úK`4áI­f\\†uäZ¿ÝÅ¥Ì’C:<»ÂàÊãëœw¨V=j->Ñ£‹¨ÝHVUÜH¿¥`ê\ZÊ¤’GÚ6a˜JýÓÞ¹œ\\¥¡Qz¥Çˆ´û‹Øà{vós$½B¶\0ã¾=EMã\rSS7Amwÿ\0gÜ@‰¯±ÇçÖ·2ßH`Ie,ü¨EÞY‡N+¨»Ö,î¼!W×Æ=A$\n¦6;Šdä0ö÷­èaåÌ¥m…:žëF›k\Z\rÅÖil|¨ULW{‰\0g¾{úæ§‡^½¸»}G†+Ÿ³³¥½ËÈT¯`A<cØŠÇ°ÓtKð¶ú}ø.T\rÍÖÏ~¼~µ­i®|<Ôíå¹ŒOc1ù%tàúƒŒà×°Ô¢ÒèÏ=$ß™[ÅzdúCÅ«y²à¿šÐ‘À,>ðÇ«š>“{&šÓX3=„ªbÞï÷‰wØÖ‰¼]¦ø“J–m–óe\0òßª8GŠ£¤kš^… -æœ&ŽâaåÍhe\r§¹ÁåN:šæöT¦Ú“6æ—/™Äê¾Ôô’÷	åªÉ„upI¼\Z¿£ß[Ç¨}¹î·Ü!­6sôªWWñk:™fg„Lùkp¡÷ªº¾ž4LÚ‰ã•6†‡S‘ž®E\r9¡±¬%ßs´ñOÄ›e>Ï5ºùE]£8Ü ®Þ(\\Ë$ŽÑ¨^6’{UT²³2“Å[²[k™Õ\'”CuvÛïXR¥+.¦ŽMŽ¿µ¶·!Úåå, “ŽE\ZoÏò‚Xc#Jù÷Ò}šY$¶SˆÚA‚ÃÞµô›XcEw¸ò$ œ8ù[Ø0®ˆµ«\\é|+=­òÿ\0h£,mÑðx>Ø¨¼MqÝøŽÍ·ÛC”¶òFsU[{x¤ŽîÎA$Š\r¼©CëŽâ­é°°Ý#Ãæ)aÀ÷ÍtR¦¥7P›ÙÙ‰`Q\Zê+«Ñî^=—\r\Z´[Ã¸ÎáééYÑ mâE,íÆê–ÒÜÂANæµäoFŒ¤ÑØxV¸†{©£„JòX·Þ5#E™§ÉŒË}uïLöæ³´ùe³™¦r…v¸eÈ9ŠØŠð-Í­ÐÚÏ¸†‰¹ìsøþ•œ°Êí¤\njÇs \\Cm-Ó„*¯·†“íPf\\[2‹˜d„•\r–^=+½¼Ó-î5?67’€LPWvxÇnj}^ÚçP6¦ki<à0L‡jþ”¾³(I\'°¹np®qž ×E¤Þb¡ÚE‰X9\0ó\n­wi 1Ï&\n²ãå¢Þk„‰—æàãÔW4\'lÓÐéõ{V\r5Š•ó|ÍÀ’	êôö®2ö	TÈê­v\Z^¡$sÔK³ä#©ß´wî;ÖN«lò¡’ûxûÞ¹#ß5…Ùòô*[\\ãní÷Äy\0çîÕ8-ÚF_S[S@p]”¨Sƒ‘K¦ÜI§_GsªÈD™Ør=\0­ê¯uØQz››JÔÞêÒëB2Ä«,—À7\'¿~*ËÃ7†¢‘¡_´h¨Êc¸yëûÎävÈçÖ¶>Úu;H_@´oÆLG\'qïø\n’êÓÄ:”QØßE§YÅ+Œì\r(=sÇ¾B¥iF£è»\\íVq\"Ò5½*ùž6½šÖ+‡ócxÏCèŸCYú÷…ô[EÂÞ’Iù™¤œxíÓ½0ü/Ü8µÔÌÍæäŒBÃÝOÎ­¶¤5Õ®®iI§]—aÐüÖòp7ž‡¶\rk\Zºœ©2Žšž}=Õ›Kös:¬Vc’>¸úTV·V‘ Ïy†p1Z^4±´°Õ\ZÞÍ‹Á\0)–9Ç°ö®j•rÂìSÔ®HÕíPª¥$bÕÍin¡ó\nE\"¸Á©’íBrFqÞ¹û‰£Šì¬172ô©!’)!%‹ã\0~µß\n©¢K—Wœ6ï¥[±ÔLGk–±å›hÂüÃÞ †è©!‡z¸Í\\MhwP]‡ ƒÖ·-fÂšàl/ºdã5ÑÚÞáFMo™›MJÌ©’|\0knÀ^MI\rþ[Ú¬HÖ–ànùºUs89;«>êä·J¦×EW;¸¤#Ri†8ªRNq×J¡& ëÅR—Q\0˜\nMØ,K{u·9?-bO}±÷\r-åÈ~I¬›–ÜW®Me*†‘FÃê¹RG4õÔ>B7`×?¤¤÷©ÉÛÆyÅbë3NT[’ýÑÉPQÈÈæ¡…ÕæO3%3óÜU`ÓÏçMŽVV`W†‡=BÊÂÜÛ“7î{ôÕy#?á]‡‡µ¥ÑÅêI§CznbØ‹*†ØÝˆ®m¢ÝpÊQ¼ÍÄ‘S(ßT5-lDŠ01\0œŠ®Š\'–¿s¸ÏZ€€[ã<R…ÏNµŸ*¸Óœ“ÔþTWž3SÆd”,\0 ÔL¸éKÈ.îHd’V_1ÎÞ™<â´IÅ„W‘ÏŠÎP ?0Ç|{ÖjTz\Z×³²¼X~×: aå’¤+6zÓ>Ô­mŠÜ«F&Áà÷Í=†|¸9ïZ,<›¶mFÙË|ÄÆÞÜYîÛœ‘œ„ÖÑ•È°‹œàš\\ô¡W,\r+°cÓ«&Ã@Í1ùã¥.xÇ­#)Ï=è¨09éÞ‡ÇáH8ã­!lš`Dÿ\0)8èhÚòˆÂšrÇŸZÔK9lŒO<nÐ¸vn^Ö²“å(ªmg…#y#*$SŽ¢¥HÎ2Z}ìÂâà´y…Rz\nj\0­iÝ­DÉc\'šµ[GËXË7<¥h4pG ó‘Z\"ûtB*	ÈÆkV8„¶—WQÇqy€û¹Î1íÁªqÀ\nŽ*ÜVØÊõÍL¡}EqmuÒ†w|»O¥Ij²ZNóG2G4\\®FíÇ¸ô­]5£´•„ÑŽAµ²€àzŠ»iREm1’ãSÐ‘ëYJMK–Ú\rjaE8H¥ ¾ùz¨\\Æ .9­J`ç9Ç4Ó	<ã¥oX–Ê\r\0R¤óÇJ_(1n+Am‹	ÅN¶xÇJÐ›™f×*NjEµ#¥k‹P‘Öž¶ÀtËŽÛ8éZöÎa0º’Y:Œ~U<\\åÆÌ{àUäÒdRÊÁ•€ÉR9¬äâôcIô#iÚK”™FÐTŒúôíZšHa+(L$‹·rž•¶šZCRB–³Þ®¤\rg:H­µO${â±š¹Q¬o{³Jm²ÊÐÌA?u}~´Á¢)±Ž9›äàt5<nö±2ÎGSëOF;³÷ºç±¬£Î·eiÐÀŠØÁpÈ‡®W\"·‚[dAœ™Oz« ]‚À<Uë¥M›Õˆ$ž3ÓŠÖnòH‹hgÉ<–ÜgïQÝ#Ý4ˆ$%ãõ3!Ú£ƒÅDãjíÏ^¢´It\"æ$öhdÎÊ\'¯|V3#ÛÝ³FÅO Pk­a°)Ø8ÉÏ­d_Û#HÞYÊƒÁÆ+DÀÅxäwªÒZ‚#Öõ¦›5Ì…#FsÔUõ(<›†O, Pœâ‹…Œ§ÎB@‹½]£½V‚6ƒúŠÕ˜m‰™eÆ\núŠ¦„³ç¹¢â$TaÈíÖ¥V<ZzqNÅMÇbe eO\'c¥6YÁbG\0ÔE¸5ƒŒõ3Z¬Ï¼žzSXúf˜Ø#ïíT0˜.Û“ÍVIvîO¦ÊNãÆ**ÇÜç¥-ï$`t¨Ë…={ÔMtH\0ž§µV’}„ŒçžzÑp/5Àcò‘Ug»Új„·<cÒ«<…»â“‹RÊNX“ž€v«Ö&ÌZÝÀqSÝ˜·\0¯õõŒžÔ«<‹–§\0¶ìÏçYÉ]\r!Ò§–o)à}„•\rÓŸÆ¥±½œ’¼	+\\}ÖÛê?SXjÛò·&æ›;‰Ç\Z¦°‡,NF9±prÑ•{šuÕÍ«]\\Ev‹#Áçä®2Ã€£pE^ŸO¿Ö4„¾º˜e$Ë8o*0\0ìGAøV\nM3¼&à™R$»(è+¡·Öï¿³ÚÍä\rq°ñ±sœ/¦MTi$Ã™™°¥¾›u(Þ\0Rìwzù×G¦^ZAasnüÙ]ÊØŒÈ˜Éß>§Ð×?·xÆÞsÇÒ¦Hq€GT¥\n‘ås4l•Ó>W³7²æTo¼Ùç*8ÇÒ¶¬I2».\0Èo¼\0àûñK§«‰ òáVÀmÃwÞÿ\0ZpêW Bá•Û¿8ÎpqùW+¦âíM¾å÷Ig\nÝZÊ\n?ÞR9öïD×*Åš2T6J¯B;þ©r6K(¹ÉýßR*C?ŸóK\Z“€8Å8SIìS–‚Y³1˜ººA»¨èkjÚö9|ÈwlVÝÎxö¬Ó2l^	=ªÛ,Éå1EuÇ}ªªB,QbÊ±Ã*ª<Š\\bMÃƒÿ\0Ö¨žldp0¤qùÕËi!¸‘–òM¤`\0ç=…Aw\0Œù;\\²®Y•}ÿ\0Â”d“³E[€ç\0•Ï^+ê}¹êÅíÊÆh@Î0süëž»¹mí¹²së[ÃRÛ»¼Œdb±çœ± \Z²î†PÏÂþu‘£&2ÁÊàuwH‡©L+6óžÕ©ehnWÉØÜ° ªçOË°\rY‚W†×eÚshšmh}M?±EmæE*aÈSã óúT&KlÉ,0I±ÍXD–æ7ŸwÈdóRÍbÖ <¯ó1 ¯qõ®xèýç©£ÕhSH•0¾nW9#+FÝR(·íRåXUÜãž§­*CÉ8<âµäæZ‘{lh$ê9@ÎAÎiè2…8¨?­TS’ g‚=*Ô°¤	•™dR8aØÔ´jË¶ê‘·ž‘«”oºÇ·­lÜ4¦Ë-ˆŽElPœúõíÒ¹‹{ö·™¤ôÀî*ûj–¯4ebe…H89\nÞ Šã¯JM¦\\YUg†âxþÐ’Âãœµu¶öÚrjÜZÍ%ªÍo¼ª£Œ~¾¢¹™ÍŒ­\r­¬%$±g?)Úy>ÂŸ¤Þ¼’‚Ha\Z0ÜG½ñXbo8^:[¡¤,ž¥Í¦oŠãM)a(V9ÈõÉ™\Zbgs“ZÛ¼ÒÔê>TlD/ŽÃ\'¸­OivßÚ%¦“Ë`7$s(ýðÇ+Ï±×B¤(ÐÑÝ‘(¹HâÐÝI!\"ìÇ=I¨¼É–6N“Ó¿õëz–Ÿ§xwM2ÁÞZF·.yFqƒÏ à×šs,ïÂäœÒ«‹úËo–É8ò‘ØÜÍo*Í\n\0ëÑ³Î}i×‰)™ÚH~sËûˆ=óøÖæ¦%þ«ÄÞS±ž+nçÃñXX±”L.îXÃ Œ9=ûW¡FæLóÇ·˜À²m”Å»æb¤¨oñÅt¾ÔåÓ–æf½TQˆ‘²zôõßhÞ\Ze½Å¤ò?’FWžˆqŠ Ò|;u‚t8Ÿq*Òlðõ¡Õ¨Y™Úïˆ!p‘ËktÖÊD“™Æ6»GC“^}ãmKOÖï-ÚÇM6>a*r+ª×4{±o2%äòÛÃ¸ù3>õ\\$öÊÞ[4’%·\nò\"üÞ d}iÆ1¶‚mÜÁ‚ÈœøÖî¦‡#+Þ¦²²ÉWM§Ùå«JÃlu†“\nÛ–o¼~è5ªl\0q…Ðb­ZZ*÷”s–É>ô6Iš-0:SZ\r¹À­cVu\n\r¸Ì[€Pœž+ò\\½kbù¸5Ìê?*B)O?ÏÆ=\re]$„ÊòXt\"§.\ZO˜|¹äžÔÔž9Ž\0ÉÆ}«ž£w.)Žyê+wMÔm4ûcö˜Uâp@·cùsYrÜy>nÖ8Ç\0tªR+²ùŒxý*9Ö¥§fY{Ë¸\\G#(pSºAX³I!lä““We™¶\'p÷ª,v’qš\\–*ãŽ£u¨\Z5=EHÎ;ž!ÃAäö¨°\\g”Šr:ýiÊ©×8ÅI>k[œŒRËjÐM–ÇàŠLH@ÞXpr;sÒ§²µi®\Z&|~oaÞ¯XXK,fÁå3ª’z€M]}\Zæ6’æÞ\" W*G|}k.…”5:i„vnÒÆÊ\n“éXò[ºJQÆÇ\Zí_E»·ˆ]y&XR2v•Î_Ã5ƒ¨Ä\ZEž8™cuŸCS\'°Úf; 9àw¡ÎÐ¤T³\"ãå8éŒÉåŽ1Ü“Þ´B yg_›¸ÅB&Ç°«Æd0œ&ÁÔóš©¼ƒ\'cE¨ä\'ÖžÌ¥ •jBØ#§zq?Ãüªå=yY•xÀÁöô«vÐÆ-ÌÓÆòF£,±¶0	ÆIúö¬â|¹8&­Gy,“@¤›nþ:âÅp¿¾’öhŒ›vÄ(ÀªóUÈJ]C&ÝPG¼™”rÄŒ€OáT˜í|Ï½XâÇu\"¥íŸNõÇTŠA4Š¤sŒãéAû§Ú˜Wä}i[†ö§aÜ…ìiq´ãšŒñÚ¬mó8ëÞ“%‘óœÕ…ØÈƒaÞO8¦Gb>^•}bÿ\0GÆÏ˜6KÏÒ¡»ÈìmãPŠr›ŽÕvïC¼„4É‚Ü±Q#OZ·ge§Å¦¤¢öDÔ7F©•|öÏlV«\\ê—¶×pH(±™\\JÛ(\0ùÖNMÊÈ¤q¬²!ÜÏ­E)$S	UˆS•ÉäŽ¢’H¢Ý²2Ç>µª`Ê-´cž•4ŒCO•9VûÕvþ5hha$·4ÌóíR7 šˆŽO¥0$9 sÖ›Óµ($ŽÜ\Z®â1Hx<R+`ÒH1R u¦žy§}äÇzž•@•MÔ¶ÅŒ.T²í|w8úÐ ’M=/áî½gg2ÀébWÄÒÈ!1Ð­zn­§Á- Õ-gØ¯²Líì@Àô•ó\\\ro2Ê¹Êõ¯SoŽW	k0hp	¹yIR}@ŠÇêñ“»%¶¶&ŠúÚêÂÚÕå{;Øy’?¸³úg®k#E—í¦õ®µI‘‡o™Á\'€O`GJåõ¯ßëz‹^ME#õ\n8ü*œ·7²ÃÊ…] dzÕµv;kêÍ›7J»Öå¶½¼•-T;o\0)à8>øâ¹ùŒ^l±Äß\"“°ž­S[$^y9(oÁaß»ohº‰|C4Q)¶³±b\'Þy×9Á=;sõªç&º•™ç­¹8)Ï½X¶µº¾+mo;±ùQW%µz³§hš®»Ü6ÿ\0fÓŒ…1/Ï€9onk§ð½•®—fëh‘JØÌÑ€ü‚0§ÔŽõÍ*ñSPŽ¥ô¹äøsT·\"šÊt•†áB×ŠÛµðÔM®Ccw\"ØÇ&\n´§8ÈÏ5îØÅoöíGQ•íàŒ©Y%åøÏ·>kË|Aâ¯ÞÎ³¥¦ç¶u	‘þ±G­zèÅ«É˜ÊrèbøëÃzn„(ï¼û½ämÀN0pÁqÉ5ÙÞÜhúŽ›6­r6]Håc¶ŒŒ ?Æ¸ùYAÈ{R®¢­Ê86&8q@!%YU9¢iòx¤q\\Æ‡Aq­M¨ØZiñY[ÆaÝóÄŸ<™9äûVT¨UŽpMCíîV çŒT›ò îç=;Òr`•„\0wëHIW^ Š@á\\gõ©$;‡·jw)%gs¸’}iÑ¹leð\0ïQl’x#ŠTM¸ÏZ‹ DÏ;JöëŠªqÆy«@vÄïµô«RYÛAp‘AàeÅ+¤¿0Ïj‘m\Zhä”:ªÆy9ôõ­íCAŽÆÎ+è§WŠCò«»ñ‰#ï9àcÚ‹öVi?(#¥BÀ¯?Ž*Á$©¦…ÝŽ:Õ\\‚ù­Œ`ÒÊ¶Þ\rXŽ&VÁ+Å•áyö¢ã:K»×ŽæTŽfkfo™TãŸZnŸygov¯smæÆ*d+Ÿ¦9¬Á\'ðŽ¾µóK7\\ñY(Ù\nÇ´D¯¡Ú\\XiÒýœœH© ,WÛ\'šãnt««©®àƒÃ÷ÒÎÊJd€G5£á/[Ù=­’DËÏÎ¡ø>À\Z×ñ¾««xrúÂêÒêdµ•	ÙÊõ8ç¸æÑjvª-À¯Ðò{ëK­6ôC&Ÿqcy\\ŒPHþµzx¶¶Õîl$»ŽvÌç¶Evš¼³ø¶Í–ÂØÇ.JÜ\\HÀ´ÅFr{€1À«–qk³è6:|ÆãìøXØÉòªÄ‚;þ\"¾“x*Ž6~g=Y¸»\Zñ/…¼Gáë5ôé-ïã‰Œ©CqÇqOJƒÂþ\'v&ßRÝt¶Ò*~ød<g!N¨¯7ñ~†l¼Qzšd,ˆAY­df\0÷$õéÖ¹y\rô2.VH¥ÆCg‡·¨ª¯RP|ÉhÉŒTa×4¯‡÷Í-ÅÀÓõ}Âc\Z>{ðÒ¸¤ÓÖÞHóºX›«sx=8ãÖ®øOÂ>%@º“ý½¢/còî£Ïâ+F÷áýæ«¤w\Z¾>ÎeùH8í·ˆÇÖ¸*Ò”åÎMGC’Ôì|«…µ0Æëòä6:žkÉ*J>Ñe^™ã\"»(m./o¬,eº’eŒíh¤Ì~^y ƒÓëT|[m§Ùê×0@\'ˆ¦Ý‘±Èõæ¹åU¦Æ‘m˜Ð$—sf$Ü¡w°ª.ñ™J¡Ü¤Ð—Ûd[ÈQŽFå=QRé6vWW_^›eU,!bÄvõ¨…7&Ím¥Äßå€Eç|ä³¯ zý*ëÁlÒ:G18år1¸eÜËŽ1Èâ¦\Z»•‹-¨Ë<ñ“#±Ç5ÞèZÊÇ·u.`óÃf¼ÞÕ7ÉŽŒGÖ»{{«;+6µŠTšxŠÏæa•›=Tö®Ÿh¢ÔžŠçOjÆGç íZPÄ¬K/jÇ²™¥DdR~+vØI»‘Ðs^­%us––áÖ…~UlQÐ‘Þ§ŠB…À9ÝŽj;ç©¢ù±Ó¾•¯\"¦Ò›h³¶ï0.\rÕ¿Â¦Ö5X>À‘â+‚Í’¹È9ÅgÛÜX¤b‘d\\Ë’¿OCUL®7D…@qŒ7#ë^}\\\"œ®ú\Z)Ù,¼É%H%Ý¸å±´uü+Jí–8\'[4­ÄX]ÌSYh¬nq™D¤Û$qŽjÖ£4wl­°E	wÀ“÷r=ù®j•!	^û\ZFæ_ÉbÎæ=¦!ŒçŸëV-µíü¹-£/ B¬­Ðœu®·XÒ­.¬LnÑM%H^~€÷Á.•]\"Üw§¾¸íUCJªwÐ‰&™BæÞr¡Š‘’wq[:›M&à,Š‚¢P®=+F-2ûY·¶¾LñÂ#åó3Ðç¡â¹JÎùïck¹6·ŽÅ@àCÓ­iõˆÔ÷+‹¹Öèž$°D‹N¿,²»£Ž4á÷I?é]S¬²;…g’(Am!—£9õ®[OÑm¬,¾×u,—q@þq(€m8ïžxëÇ‘¨ø³Ä–º“,‘¬frÑI\ZÞ ôç¡\Zùúô£^£ö\'D]–§ye¨M\r¤RlYau*e‰·(9ùzö#¯½kMgkqnñ\\Â’FÊw5æSüD{’ÒúÍebB«)Âì\'œß¯4ßxÿ\0SµÖ²l	-å1I¤àº°nz\0kákEÙ¢ù×SŠñÆœº®VÙ¤šÒP[sŸáÏ8Á®y^:È‡÷N8â»KÃzç‰õû·y,á.»íâYC®:í<Ó5Èêþ\ZÕ|5oö›˜´•ˆ uR;ãµzøZ‹‘A½LlKäÛ®šòý w.ÞØõ¬hä’%VÏ3ši˜ÉPÜÆ\rRIIERH\0Æº¡&¯p¶†ÌNì…œàg¡*™?{¹@ÃäÇo^OzY®‹ÊI u\'Öºc-±~9™Ožµ©k©0ÁßÈí\\êÍ†À=}iÏrb<jÖ5l7;HµcÃ~4Øµ.Cóàv9®=5/ƒH/2ý~\\Öª¹<‡ý§¹r[éU¦Ô‚ƒ†ÍrCTÚ»CqQÉ¨w)Ê²Dªlè$ÔCdþuŸ=ùÇ^jÈ{÷r:úUo´³ëY:Í–©ØÑ–ùß#5TLÅŽj1‚3žh#iÈëX¹6U‰ãç$sVãY$RÃ/\'žk;w9Î*Äs²s€A-A£Q„Mh¡\\Ÿ˜ã¿¥R“10ç¥IÐ]»\0ÞSÒ–êO3çÇÌz8«-Æ.âwg,¬ñS\\Ku§]1‘š]ÎY¹åºŸ^õ’“yS#`$UÍCQK¨<°˜ù÷äœc¥5\'}¢«FrÄmÂ÷ÏZr’xQTÃŒÿ\0*°%2p9Í=ÇbtÈõëHÀŒqQÜ@IÀ$Ó¾rp{uÅ+\0×eB£·z·m¨Ü[„ÊÛÃ„\'#>¸ªm´ƒB¾ÑÅNƒÔ½5û\\LÎÌÄÀ=¨çðªA‰9©×îç5H–‹JÇ=zÐÀŸ›µ$j6ç½H?AZ ±Sž)IÎ)ç}Í\"ŒzÕ¿\Zk\rù&(BÈGÖ•†hé>ºÕmç#HsýøÍ>ü_$PZÝË¾(Sà`\0y®‡Ã·6ÚMÍŒRÊ\"¹Bò\0¼)éø‚?•s—·[–Œ1eŒ••ÇMÎuš–È·d´)”œ}jX¡Ü@)ÏzÊ2ì± ï^‚ÐÉ—m ’ÜrÎ½¥IDOÐU¦·¸ŒâxÙJ¤ úSÒ3¸qBîEËê‹=¤EaX‚á[O¡®LÓlVêbëöˆa@YÐðAïõÿ\0\nÃ€‚¡HÈí]r¶vîöÀ	J ~CGJç©	òÙš¹î–¶ðE(Ã#ržqØb© xÆkjÙüøfŽDRÅr¤öÇ¥TòJ¥pEkN-+H%Ý>Î$rÝÏZUµËcµh}œy=©é?0â¶¹%4€.*ëÙm¶Yr™êFy«PÛ‰#9Pª\'¿µNÖám™ü§PNžA¨sÔ|º+ €:dTæ53yˆ›G÷jÜ0í#+‘š¸,üÅ-\ZäŽvŽ¸ªmu ²“dðÈ0!F7zÛ¿o4,ÑŽHÆ\0ÉÅgÁfÍ\'Ê‡šÑµŒ‚Äî‚FãÅaQF÷)\\†Þ5hÁÚØÎ¯ÉbgÁpÛËzŸóŠŽ©] ãó«FGÈ98}k)·}‹ÓRmÄS}Óì}*Ê”1çñ¦Ÿ1ãÊÿ\0:‹Ë;wf¥ûÛ°½¶#TÜÌFzWP@ç$sÐP>V88úÐ%*áÈÉ5z“qò/lúÕ)H,qWf’¹,	ê1Þ¨´e¹B#8ÏjÒŸ˜™ŸtÈ_j¡uÇ1\nÛ€U±ŒŠÔ¶	+…T’Gäìì)Ú…›Ïo¢*¼„‰õ&¯\'f	ù{’ë.ÊsÆ*¤Ö÷Î—2‘lD¯ŽG«2ÊöÒä|²FÙ\0Žâ´à\ZmÊÍsrãÊxA|ù9Ç§N•MØ,qÁ$…Àl¢t$ö¨£ŒƒŽkºƒKÓ³âÔeB1s³ œïŽ•Ë\\m–êIaY‹b„Ó{Ó¦À sŠ¯3ïHQ“ïL”íà~4Ô‘0Kgãµ6I=…0\ZÏëUäOqC¾æ8$â«ÝÅ$@œ‚ÆAïRä4C5ß\'>•Fk­Ø>O­6}Í9ïŠ«³¿=Z\\À\\«X|¸àZŽ`»á¸4èUQÆqSÍA*[q$“Ö•Çb/¼0XsMÁ$æ¦Š0ÿ\0 8àûÓÍ»ñ¸uç¥èd‘S,Y9¬-¸$aqVc€žƒë@ŠÉ{~unÈ\0qïÅNÔTÑÂA aC®À@ì{Ô«M£Õf(€Šaî(`2uy}jÃ[”$0 ŽÆ\\ò9«rnld†à\0OZÍ·rÒlZ\n1Sž«qªì#$wüj²d0â¬\'Pqßš-Ô	UY£È<qž*` bÃnyõ¥BBê@ÃƒÞ«œ\0¦¢ú•a†c»å8Ïz-A’\0®	=9’çcüÜ`Ò%Ã+¬?)¤Ð\"ì“†vÅ‚O=>•iõSeÚÜÇó`~ôŽž«*êB6H›ŠìÎ·¯áWt}^Ü»Y\\yQÇ!%™ˆçÓ“YJ<ÉhZv25£²!…@PîåÝŽZæ¦pë×Úº]júÂ_I”Bí%P¹IÓ§ ×#5ãpãÇæúÖðVVFoQeùà\n…îÏR=E,d¿ðjt§Ö¨†5ÌEZ·¤/Lž¾•$Q\'~\rZ…Bÿ\0©¶í,„;•QÔœš³}Y%ùÛ‚¯»¶:TqDV@AÈ\'­néÐ%Ì>lk½Ãng¢÷ÅsU’‹æf‘WÐÉ¶0Èx­¼° qJ»{¦±ŽˆÀ9PÇ¶\n¿©½´3´ñ#G$*©÷OmÞÆª^Í<‚Aæ._žÞ¬=«m5¡|©hW°ƒûNd·H•d#\0ô\0uçÖ’}<¬²l”W+¸Œ}«BÙ%·˜¥¥Ìq*!o9Æqè3ïTÑµØÙÉ_$æD`dqÓ¯ë7YóhôUc;P‹ì˜Y÷,¬2¤`©R¹PAÙíøÔúØXÔL$P¿+Â³í˜E˜:³‚01]šp»#—Þ:ˆ,å¶¼a>Ö•£Ý†ä€Gc­f[mME$#hÉŸ õê*ªÏlêU\\œãŠ»¥í¹\Z5âHÈ,WœƒíÛµpÍÊ\nR–Æ÷‹²G\\ßf‚;I¤T16cmÉSíúÕ›Öu.#áUwTÓ·åYO¥^X¼g”K!ÒT$và~oEÔ\"ºy\Zb¥¥”Æ£=‚ä?^Ô¤¹á+¢Ö¦fµ¨ÚêV³Ûü­=³eL¤‚vÞ¹a‘ÉºHü¶~@#µt\Z•£C}0e„G+,ƒË\\(qïÚ³ïgGœ+£1O—vzý+ßËâ£É³1¨û–4ýYl<²P—Sê0sßô©\ZýäÔ£w™qÙ6vŽÕ– ÝI¶0Dk÷sÖµaÓØBXaœõÍz°å†§;»7õCwcoš3\\g-•ÆÞÈ¬‹+‹ÈRYQÀŽ/Ÿir9?Nµ0Æ¨dwUÀ vÍS–bQQH*HÕ¶ˆy±Ú‹Ërûò €3Î*„±=É,ŒÒ}Óœc\0`V‚Ë\Z†Ú¼°ü©ÐC’pµ´v$‚ÖÏi®‚Îß\0qQ[Ûtâµ¡‹jŠ¡EËÇAS•Ï4ÅiñY½XÅvP ÏzÎº”m\"¦ž` ŠÉ¹¸ëÍRVfßIÜ×9y 9«Júä<ÖMÌ±yABüå‰ÜOoLQ`2&f,UN3ÅfJrI5~íXHFFG§5HÆpMKE!‹ÀäÐOËß®Gn*\"Yy­MÇqŽ»ŽjÁ8ÇJ±&à¸Ç½BbÌ¬3È uõ¬ä;•ÝN\0ÅF@¢¤\'žsŠR™û¼ŠÌ¢+Ë‘Í9	2Iã¨=\rJ\0úsJÈvó’\"§p¹f×P’hÌUûž‚·­5èy~_q“y\\\Zä%OÓâãi‡5œ ™I³Ò?á)°\ZzÃo½Z6\nÊçýjckÄÚµ¦£g:u¯’pƒÇL~ËÆò©8ä‘ÏÒ¦‚w\rÀù	õ\"±TÒwEs6W\0 ‡\0wªWRä•NAëVî”¡$àçß­S!H pÝx­	¹_±ùbž `3ŽOj–Ü “%¹â¦bY÷1Æ:b‹”˜Åa\ZŒ\n‚GbsÐSÛ¡ÇJ‹;²	éBô—åÁ<u4æ!— ñP(9Ær;TÂ0AäsL,\\°¹û33c*FÓíïSjªn¤ûxR)[`Ôõ@&È÷n\n{/­hIwcý–Ðm˜\\’–ÆÜûzS[ãåAßš3Ï¥FŒNsÖžÔÐ;’d3MnG½*|Ë†è:R¾ÈÇZwÆõüjki¼¶(~é<Š„7_Ò†ìã¯zE‰$™#\\\02@¤7®,|Þ¡[³°zôÅ(•\0WŠMË·ZÜÅw*Æc\n\01Ò›-ÕÅëy×SI!$Iæ¯é÷qÌ¾L¶‘ÊL~Xy?‡\'¯Ö«ê:\\Ú|ØÚÁ\\ewpqPì4û8./XâF~ÃÖ»}wÃVi¥ÚÞXÎ·\nIC$J6ð8Þ¸­3[“GÔ…Ävñ:ãkÄã*k_KñuÅŒd)&2Ä¬ùCÿ\0Ê¡^åXæ5{c¹Ü/\\Vfw\nèâSªê3G0ËÈ‡ËÃ\0g©?c_éòØLëÈ§‡ƒZÆKaÕ³òô¥ÆZF\0Ð	 Uƒ\Zxö÷§àÚ‘Îåãµ	“Á )94æ!—éL#qNÐ0ñÈÅÆqÞœy\0P\"2sõ¥CƒžÔŒ¸ç½7?04\rq»¡«$aÔ€Z¬ë‘(Q» É	›7Wö÷“ŠÙ`\0s¥G<Ë~J¬dûëÔñüª¡WP&éNW\n¤2Žj¤^ÂÊŠ®¦7ß•ç¡®óÁ\ZMåµå†¥È¦YLmn¿}Æ;ƒÇ9ý+ˆ´Š6/´ƒÈ=ëoNñCéŒ¡·EÊ?ÄA5h¹.T	ž—}à‰ŒV²ÛE*ÌÎÞ|2¿ÞÉàtºhú5Ìqj\"Cd­Ã&ì¸è£¾Ep·ï¢³¶hìíf!!‘Ÿ œç\'ÛÚ¹Ms]¹¼7æöéæU”4YÛ9,£=ù­hP‚÷¯°¥\'{\Zž3øˆÞ$±û,r(•ÉÉÂ•þ+…\"ºL€9ÝÜžõU<¥ZM€œ’i.f¸ØI\0cqï[¹· ¬!rXŒŽ½¨bªŸ1É4ˆÈæÔE²{â¢à4îÏ=)y­>F$’zzÓq“šÀfœ	SN@íŠ€ê)2Äž´ðÛE13AnÕ Áœc¯Ö˜–ëÒšÜ’)Ñan\'?­L@»@ý£éUõÈÀ÷§™yÆx©`]7RÕAÐ\ZJ™1Â“ÉªÁò1Ž´àH\\ŠC,Ü4\n›TGWõªa˜‘´ñAç¥<2‚i¡Cƒïõ«0¸<çÚªFß6áV¡l1aÎ*X•|°p½6/Þ?Fû¤mŠKxsOž}*þ{­Ë÷Ü9ãzÒƒo@l²,Pf…Dd)}ä8ô¨\'Ôoudt¹’Iž%ÊÍ€¾™5sQ[È4È žÉí€‘‰f-žØ=1YP4±$·\"Ý¤…W%IQžMeV¥y\"c4Ío\røº÷Ã·¾|I¥¸xåW¯iŸ4kû@f¶òîP\r°…ÝæàzWÏ%²Œ–Î)ï-¯Ô<,e=?\Zé§Š²´õHRŠ¶‡Ôº^¥á”ÔÚö[ynßªP‚=Šá>2xvÂâÎ×V°»ŒOæ¶ñ‰ã$c¡éšóÙ|Y=ìvñÞ§Ú2y¥Êá‰#Æ§Òü]pmo,U†xŠ.T1ÝØò>¾µ¯×)OvÑšƒ[	á½hÛß-`´¸U+)I;³ÔwSô©5[Ï?Vû:¤Í»>UÄ‹¹²G@zJÂÔí.…¬:„—3=Ô\råJ­ÓwæïRA}¨\\^G0·}JÔ•R¸ÚqœñXÎ¼j¤¯¢4ö+âGA£^k×Q—Ošö,fI3¸:tÎOLVŒ®ôKRÚy‘£ÀË„wÆ•|k~ h$whÐ·“<&NJÿ\0´¿ZÅµ»šû[IÊB¯,Á‚íÏLtÅcRšrN/D8ÆÚ²ŠÛ™2P–ÇQÞ¦Š0ŒC‚Héô5é¾0ðü:>“%ÃÁd—SÊ¯FØmŸÄŽ8ãÒ¼þY°0¹^õUjQw6È¦™ÉvÂCFNé\0àg§5”ªgŸŽEM5Ì°¬°$ŒÎAá½3O±Â0ÝñQË¢ïd:™ž˜éšîm-mßDD`\Zæ?š=²<úv«oá5ð•ÃE¨°GFápsŒpsQé°¦kÛ¡VIÔâTcƒÐãž2?Zæ§^3–›¦)lhéK<qŒ\0?tõ®šfÁ-·$t£A³³h[SQ)€§)­ŽùãnîK‡&6òPŒJ«ò{×¿JªØå”,BQYqëLPbã±«qY¼à¼N¦0ÛC2jŽNU”‚85Óêgf*M”Áéž”²!)½F@ëPlTùdÞ¬ßpƒÆ}ê0íËC1ƒ†ã>´¦×@}Û	/mŽDy`†pãŸ¦=)ò²M=ÅÐ¿6Ë+ƒ6ä!Q×îäZ|7’j0†UF5n£×+¤1[¶–cuWk„•À`äñÐwÏ¥|þ&¬`ï-ºjç0uÖ–6[„w>zGÁÈòÊç¯Ö Ia“[x-öÊ\\Œ¶î¯\"º4³[Ë“„B¿+FŸ*ãœçžhÓ¼/ŒËuÃ4€™™˜µÞ¼Ù×ƒmÅniìÙ±l\"ûÁ8²1†Ça\\>»¦;jð^©û]¤Íû”ˆ€€ã$ûsÏñÄ÷WvíeeskPÏµÊËó±ƒŽÂ¨x\ZkÝUíñxVîÜ2¤3¨(ññ’¸þ!žõ6q¶‹ÝŽòÏO›OÒï¬£‘f%r‚D&<c•ãüó^_{e}6¯%µ£G:Œ„&ã‘Jô]OTŒx£OðÝ¥ÄñN$K\'f\'nj¾½rÑZgIYKË/“p#@Àì${Œz÷ªÁ:‘œnÙ3Ñz[â}7Q±”5åÂË:®^<|Ê3×Þ¹ƒy#°2Hî¸Æv®ªçÄ0Í(E-,¡„†DƒéM‡ÀZ®«¤Ë\r±ŠAó¨ÚvÈ¸þµôñ¢”UŒ¯¹Ÿg®\\h\\i—¯óã9Ç5Òø×Äþ|Pˆ¦×‰Ý»éÎGÔWŸI[\\<*ñÍlu#•#®j[Û¦¸ò GEj†4`»IRsÏâk’¦:ŠiX´Ì¹3o+L‰ˆXüÊ?‡éDj°Èlàæ¤™|Àåz\Z¬\"1°dËFIÈQ’¾õn%­If!†Ë×Ú«[ò¥¹÷¦ÞNT¼\0‚AûÀõ¯!xãE+üGÔûÓí¨‰ÀÝÀ$ƒøS\ZfdNTt¤F!¹cœSð¬ƒ\0ži\\bÇi4°K4h|¸T3·`3Š©æœñWZ}ºt‘q¸€xÇ^jŠþµRl«\nÒ5*ËÅ=*=£ãÖ˜‹<dðië·ïëP+t·J”y8½+ŽÃË`ÓÃð\0\'>´Â{uô4¹ÎAîM‰U°Äu§òƒg­@*E%¤Ç¦ÄË2…=z\n|·[a*¤õ¨^6Š]®»O¥HSro*@<Ž3UIUŸ®&o`0§AWæ¼]	V×bŒüêÜ:­µ¾›PDRéefi@YH`úZ$›ÜM¾Æ@\\7ÍÇzž\"‹Î+~öÕn­tË4žÁ¥‘Â	\"8#po8éÏèk\"÷OŸO¾’ÊUÛ$mŒö>à÷ÜmªÜŒ‘Áü0)²’Tzu¤pØâ”DO88©’p0)Lg\0ö>ôâŒ0Å*®ÏZiÇÆ§ŠŸËØ9¤·Š²Ë¹Fj’díÔàdZHã8ÏéRªûv­®3ÏZjÇ¹½óV6y40dƒØÕXEpŸ6x­\r+N\Z•üvÅÄjÇ—þèîjŒï\'º>Ÿizf¾†ifÜÆ¹}5Ž\"NÜ¢®ÁoaÚ¾•&…feY\'T\'lsµÇ·á\\\\’zç’k­ñ~¬ºÆ ±Û#Ågq†þ#ŠçÒÛ\'\Zœ$eìÔ§»	=t)¢1=+~ÒÉâ‚9p$§½i,4©/nb‚ÌŽqô÷®«\\²K9lí\"”ºÅÒ¤çcwÛ¸­eQ)¨w%ìeFŒç\'’zç¹õ««j¤\rÀ€FG-µ¶TUÕŒè:VÖìEŠ‘Û ã±«Q©8©±ÀÈ§\"Œýi &„’Àt>µ:¡?{“P.þU<E‹ŒÑ`±’sS\0ÏÍK\ZƒÔsVR0ÝxÅ\nöð…\'æþëƒõ­IÚeŽ >TçO·†6—8àsëV^ÑÙÊ»q•9àŠÂN<×fŠöÐÈHpjý\nÄ•I`qÇ¥*\"Œ«/_Î¦H±\0|¹ªœ®¬BÜ±ÆU,	#oÖ¥HPd(Ž»ºÕ4*qW‚ùˆpÙÏzæ’±¤]Èü£)PF\rKå·9äý* WŒ†©á%Tï<ûš–ÝY±T*¯ëMÚKã·µL\0)’0\rŠ„ËkK”¤M²x}œ– \0OO&ð_ÓŠ±léq\02WƒZ¶Ò¹šI³Hò_æ”ýßZˆGHrÛvœúý+a¤‚ÒåüÌe”O$ûV=Ä[‘îÁÉRzƒÏ¼&äK…žîHæ&!“ 2ŒÛ&¬ãû;Ü‰\nÜDwãøì*¨„–ñÝF¸r2Ê_hÛýkž½»šêVwoÞ®åî=>”ÔT^Âë25Ý°¾òYˆÛp­Û^‚±­gÞDhU‘€%¾ïÔÖ¾§©Os§Ån¤,+×N~¢¹t—€>a“éZ­E4~m¤wÛ¢E°~R	ÉÇ¶k>Eò¤hÏÞ«O,ërby…ìj)Ý¡m¬FìSb¹e¤O<çŠ§3™c:Ô&vc´rOAN3CcºùÜà\'Ý8àTØ\n’N§jšÉÖW¤d“pòþMÊN{Öc;3€Oæ®ˆò®v°=Î*\'±H´6Å|¾tI\"BÛ¤žN:pj	Õ.‰rR2Nºcê*\rÍ	1»\'\'¿­-ÒÌê·,£œeG÷¬9YZ—1¤I·Î\rž˜_Ô\Z‚4MœŒ±9Ü*ÜØlü™^pj—MµŽi•\ZDB¤1ÝéžÕ[+±­Lï(’p;S\n·Ýë[·PÂ.%á 9Û»½TKd\'x\'†=…TeupjÂéöS6÷U\0*e·.p=kVìÙ].ÄbhÕpÊ~ùïÇçŠ˜Ýl¬J<¶vã=‡CÖ£¤’3\0W\'\"²år•Ù|ÖVE4²F@Ëp9àÔ©^:v8ïVV\n²–ØÆå<ô>µ®Äc·$:T‚Ü£©çÚµma· ‰7n‚:RÈQ˜àq€0jyµ°ìQôâ§D\0U¨­ƒ¯Þ\0qÏzaP;öæÅaCÇNsSÛÃ½Ù	<Œ§H¦G*¢£çÏ\'Ú¥3U ŸÇ½C»Ç=¸Ï#š¹Ž´ŠÙêiŽØj’vF€OÖšf=ØÕV›¨žPIééELäsQ%ïÌYGNã5]î¶/@O=k6{­Äåº\nN7Ðw5%Ô|ù2ˆAùz‹qpªàç+ß\'½A$ùœdÕ)äÜp	o ¢1°›¹6ÿ\02]¥ö©<œô¨ä–fV!ˆ=GCQÆ’Ü…>Õb8ÉÈëT“¸‡Ã^†® \Z.\0ÅYQV\"h@#i\'¡>ÕUO|Ô\0c‘Wìâ2K<`g*y©–ŠãŠ¾ƒ\"pçO#Ö»(£··²0Ä¡C(“ž}k\Z+­(\\(Š%XŠ %—s+wëõý*-kÌ±¹Q#\"a¹?7§å^}gí\ZŽÆñJ*ã5\rT’“HSÏE	±GòOéSXy76ñËp0ÊÛc‹pã?wñÖ«ÃtYÍÔ1œHÒ‡Ç8Àä}?­M\r¤7Ëzþa¶!N6Œu#ßµeVJ1åêTV·/išÑÉqÄÇæ<ùm¸Hpì{Ó[N–)¤f’%-„–<ð1˜\ZÍZŸO×°ƒÎ2/˜@äJ¡x9ëÚ³n5Kù¦Ú$eƒ6áŒî9Ü×\'%iJíèSq[õHvëZ	÷(p¾k{Ÿ¥F­¤LîŽT²ÏÊ ½fyù¥ä‘wò9_¯Ö¤³6ÿ\0Ùklí\'˜ògºqß©®õucÔ¨Vk¢ÄIé“ŠÝðÒÍ¤\Z	#©Ì˜SÏê•se\Z¡xü½ØPpsïZzió‚L\\Ã4d*º®1ºsN·½M®à•™ÝØk2˜Ñ¦•&v“iãnè¹ïÏzÎžþ+;«{ˆmPHä*‚AÝúŸÊ²\rÃ\\^FŽª°cƒ´Ï½YÔ3´ @Š•#“ïšóiàâš¿SG\'bkÙÅÜ’F2d4r–ã·Óü+&H˜Ê¤ng“’ÍÉ«z\\2Ë´mÆsž‚¯KhÖÑÇ+œ+¨)êV½:*4Ÿ*2³jåKG£ïý+N,¼oå©Ð±5ÍâI°«‚ mÇ§z§ö²7na]6”ÉºD·‹bÏ¸r}1UØ©nQCg(â… ¾FN}{TñB¹ë]‘›aöuV]¸9ÇCéZV°azu¤‚ÜqZP \0\0+D!ÐE´\n¶8¥2\0:Óö|\n«4áG½6[Œf²¯nÂƒÏ4%ÕØÁ9¬ËÑÏ5Õö3Í`Ý^î\'ž)€û«¼±É¬Ùf/À\'\0Ó$¹ïQÅ+•vœdsÏNcŽGNõ+>N\"ªÈädõ\rŒtn§!ÉéÆ=iÒù0Ÿï\n’0ªÙ!7gëNµšp¯1R¨r— ûY1“ZK$ÒOo\nï2mòG$Àu«7ñO¹‚K¸dXÜñ¯Þ\'‚ôö¬™ïA‰Pªíj¹w]§8ëJMè	tQNM›NIÎ8 2– ž¢…}ÄúŠÅ”OÆÆZ‚ÄýÅFÊSÜgÖ¦t§“ÛjÚÂkHÕcQ1;€}êe+W9™	ëš#šÓ½ÓþÅ$ÈäHˆGNU½ë.A–ÉëŽ)^å#àô sš³kyö[„DŽÛ‰ Žj”@Œ·8êì3Aù“qÇ5›ýCH¸’þâÞóZ2[(2¤uàý+\"$œsŠÖšúXÛ(Ì›‡]Ýº*‚Ò$¾À>eÚA{ÿ\0Jm®€ŠžQ¢dw4›ŠÇ×¯^jÑ•Îó’zUwÈ‹$~T\"»0ÓŽ8¦Ÿ•yÏ4Ï?1È\'ƒAfž†ðG©ÆgH¤^…e)Ïÿ\0:Ûñ\'ü#âÚØi‰\"N™ŽårHèÙ÷®Qv\n½sŽ¦­]Ú\\Ù•ûJ”ppQ¸aõÒW»ûv‰fS0Ü€ôÏo­ÜÈñ&Ô$äâªoeŒõ·áíkš¥µ’Ìªò’ÌNpŠ99§fÇ±ˆêc|+r\r7~[œUíZËìr[eecœúvý+7iÆG­U†‹!¾R{úSó¹Fzõ¨Žr{ÔªØ4†…sÆy¥R1ƒÒ›Ôc½ 844œ9Ÿj™V\n}j¼ƒFsV!-#\0;PÈfþ‡\r…ÍøŽúàÂŽ\0Y˜eP÷Ü:óÓŠÛ¸Ð¿´ì\Z{&ñ.Né²¬ íàsœ~uÇ«8ÈQÁëšî´(|+5•¬W$7›ÂÜ4“8R¿Þ=óÈö§¥¹/¹ÉÉ¦_L’CåÄ\0%› 8?CŠ„À©\nípÌyãµvúÇ†ô{‹©Ž…¨¢Ø²í+ç’—“œœ•ÆH®:[c2DáÀî³œ9v)KB¼\\XÜÇ=«²Ì‡ ¯QV#ÔL«-µã*e9*±ÏÖ­ZÛÚInûnga1€˜ígúV<Ê¬’7ÅM\\Ì «´g¨8¦±‡=ió«)WP~´ŒŒö<Ö¨;úÓ×ØÔA˜w«+?6~´1Ü„ƒ“‘Å(\0àÔ®ƒÏJˆ ã§½!^ìkqšU9ãhq‚\r4§9Ïå@ì8çŸQPž¼õ©TðyÍ4©<ÑpŒŠl2y«ž™ÁÏ¥.ìG4Ù#9ÁŸRÖ/ì–í#Z/˜kœ  äûqL¿Oí\ZhbHÁ¸æõªz·-|ZÌc™þPAÁ ö¯Eð6=ž¯4·)Å)ò¶È2®Îwc¦F8ªŒzÉØâmtk—wDS¹WqÝÇÞõŸ|±Å4‰q†èýkÖ|U‹N\Zœ¥÷¸¨ \0=}GjòíFÚö÷QƒäŒÍy†‰zqÛ5¤¨Ú7DÆWz™ßj‘#)»9ã¯j„©AÄV–¥¤ÛØY@Zäµù,\'„#Áãžù¬ÂqŽ¤Ö2‹‰¢w³È@;[\rÐãŠ•4ë©`i’\'x‘‚³àLÕ½?íW¼L¯åëž=Åv\Z›¥é±Ås#Mö‰KGgg,ÊW$Ö‡1.V8h,êú;@è…ÎÐì~\\ýk²?	uágorªŽ—+˜ÄmžOLžÀ×c§üqn’]Ï^L›„%ˆXNAÿ\0z\ZÜÖ5OHÒ×N…Û[m-\']¹éÚšZÝ+…îxmÇ†oì.^Þæ1çF~xÁÎÑëôªÚÎ‡s¢ÉÜ´gÍeBTô®½|ÍjIuÉ\Z&åÞI>Pê§…_S\\ÇŠ5(u;¨çI1Œo\\`)îóük5võ\Zf	làv©Ï”Ø˜®r¼”¥ÿ\0:–2e8œši;<ñI÷}²(A¸Ç„0É´žæ˜‰ööPÉîiÊª¡²zÐÄœS	õ¢F¾^”Œ0€CÒM¸ïR«†žÂ«¢3çj“ŽI¨+±±º•É27àðj_)q’r*¾sßšžƒe‘]pp¯­$€r…AÆI«6SD—ÓEæFÌ¤õSÍäOL¬\"`²6e¬|’+µðõÆ—{¤µ½Å¬Ër?\Z†>}kŒ»„ÙÝº0ÏZê¼®I¤=ÌfÝå·¸w%ñØÒ¸*Êq‡<7DµtzæŸ¬Ê¶GöXÅ	k¨¦Ï$”©çœv®wÄºÄ\n³,¾’+C“’*y¬¼“ÇNÜ{UmOÆ\ro\ZÍe¤ÜíyažO(+÷yçø¬«¿ëz±Y5ì­£¶m±ÇwòÀðH8ÁÆ{sSOí•±\nÞf~É­ŽÄSØÞÞÃy§i’i±J»]7îBÃ‚GqYvh·	÷˜¶´‹ê\ZF©$öÛ.ÔHÈ²ˆ÷Fùô³õ8ÃOæ²}£tX;XãïúúUS·ÈÕ¤G4ÂÒgh$óvž1‘V,5ùb‘VGÛ]vŒ€zâ¨Z¼FB²\"Ã\nY±ƒëQÏ\ZHØ@8Àþ•nz1-þ-NÏU¸m=f°H«½Ì¹2wíø×.FÖg[yB3*ùr‘Ó¨íY¢ÚY$ÛÉUÝÜb«4™€:œÔÑÃÆ\rÙéØÕKBpæ{Ÿ½³\'Œö£ÍX¤*çÔSQL\\ô­\r/OKûØmç¸Š!#ròŽ=ëy´–»Ç­ü³B±´Îñ©ùT¶@4Å;X—çñQMÛÏ!Ž@È¬BœuJK‰ÜFÏ€ŽŠ1úV<‰*>%ºÏ@O5m¢Á—œw¦i-mç·ÚâwB„§ÇÞ¬.pP©è\r\\Û‹°IÜè¯|_©Ï¥YX•µ[{tU)rÁz®ƒAÖ×Q¼µ·¹¶ˆÚw@òa~nÜôë+‰±Õ$²³½·TŒý¡g+Ê€{\Z-/ŒxSÉÈç=+8ÐNé!Ièz´w¡iZ0¬ÌJ?›êŒÇ­ñ	›Lû%Ãcæ*1\\¥§Ú47Öê9\nñKÜ}i°M¨È\\ùÁ¸ÚxÅwaù\Z³ÝJìëàÅOŸ)<¨EÎ $@6íäw¬«g˜éR!i7‰†è¶ðÝpsê?­3QV	ŽÞ¨x÷Zôàöf|²H·>£,ª±¥N9ªòÊÓœc\"”c¨¬˜.›$8É=êK‹“¸4YÂŽyªVL›w7.|G¾Š–6¶â9¤R\'”}æçÖºO¶£•9Ž)œ¦‘†Å\'®ZòÕÔ¥´™.bp²!ÈÈÎ\rzÏ†<Gc¬h¹»½‚	‚6E˜FÅ³Óoøz×‹›ÅÆ¢´}Mé]²\rsRÕ<>×¡¤ŽTHÌë´•1–8ëü\\óÍ_±ñ’Æán¯­”Œd÷ciõí[:Æ‹c®XOk1Äneßž½OLúw¯\0Ô<w«Xëš„¶R,VóþìBÀ‰Ó\0v¯U8Çs¢òŒµØ›Æ¶7wc[šÞÌÌ–3èpy\'9Ï­lü?ñ¾›ìqjâh&\nÅÇ$“×<u®cA¸:•ôvâÝ¯d™Ê¼ÁU”ô9ìEnx‡áç”†ëI·ž;´—“,‘ƒÐd®{ö¯ee®¥~†2¨”ŽûÆþ\"·›Hµ¾Òfµ¸Q!O8ßF{mîçó¯1·Ô.ôó¶·evJX#¶B±ïXóAq¤êÑÃ?™dgtÉ´î?]Lš¶™q¡ÛÙ%‹ÝÜÂí\"¿Ý]„|Ý²jiFxF­«a&§±½g,³_\\ÝMdçb·o\n¼q¯@}H<v®ó@ñ\n[íŠ8e~QØØl6=:÷ï^Ah|IáM.=VÒäù`û™\0<e{}*7×õK­*i£¼¸fYMåå…lÜ½Ó½{ÅÑ¬¬Ì9%Ž»ÇÚM¯ˆ4ûmJÅm’{gd»®ÒTãæ9ô?Ì×œÇhú¡sg}µ‰Œ¡òœ2¶yŠ³gâÝgO‚KyœÝX\\ådŽCÃ®ãŠçšè#6T°-•ù¸…78t)F]Džà}ÜœJrÊös	¬ò¬Œ)õ5j9ÖI²F^DÀ,@ÚzçÒ–ú(ãXå„¤ªñÛAI+¨µ-lrŽ¸ð9=*è,NÕÒ¡Ú\Zp ëV£WóF®÷¥K5cV<e²÷íO·rÏƒÀfˆŒìÎr¹ç\'4é#òÔ·Ý~Â¤\n÷EB”_»¸œÔ*0¤Óel¯¯4£2LbàñK´‘ž3ëJÄ94¸ÀÀ¦\"!éÒ¤SŽáH@4tàôõ 	³žøâ¥¶€Nd\r\" E,Kg‡½C…8¥9”ƒŸQÅ!’¢)`2\0\'\'nèCl±‹YDŠà3†Q•oLÖa\'§ëRB¿½\\ðÖ„ÄÕÉIÜwcœäóV\Zâf„C½¼Û‚g€qŒÔr˜÷°AQÔR6ÿ\0,ÑvM‰#dgžjçöqž=öñ|±¨iðOúTQ6µq\"Kçï`~]¸ç?>ÝÖÊæ@² 9RÞµP}Ä\\Õ´fÒ¥Aþh0¬¥”‚9ˆ5Ÿ%ÍÄØÈìB c tÚ­ÙÝEåIm4I¶BÌA-Ïj/líà—mµ×Úÿ\0Ý¼ý+Vû\n>e!‚ÙO\\ÔÈIÎIú\n\r¤ç9Ý*t@£oãIn;ŒØzÐbqšœ\'?…<Eòú\ZÕEm#5u#$ŠŽ4ÏÖ­F­¹üê’>A´‚wg8=)Lkæ°íJ±’jxã €pHïT‘7!{`\Z±\'#Ž*uˆ·Zµ0m\r=J	yH©­‡_â§´·ÌìØÈÎ*ÄËæ6\0ÆÞ(¶¤6gnIn¤õ©£¶Ë\Z¶°æ­ÛÚ’ÜŠ«¥´ˆCÆÅr\nðE[òæyÌKÉô­{]¸?Ò­=¸eÁ¥\'ÝÄV…GQSªfˆà*ÞÕq\"µVÀVXHÔžV8«b,Ô©\0\"€(É#nv\'#‚*_(Î*ÌKŠLb%¹eÖ­$D`b¥P\n6©#=êìûˆÏLu¬eRÈi\\‚Ú&Ü@ëS¼#\0d–ëOùlO\\w§O\\ÖWwÈ«åsR…8ÇjŒS€¡ÈV\"úÔª˜x¥àRÇµKm‚\0¿75\")bI ñÞ‘J•çœþb\"ƒÈ÷©e¤È,[å#Š|²ª Ý‚;Šîã\0Ö†‚2Çlf§Kš%¡Mãg¶}«‘×ž1ô¬»{¹Rà¤@³°ùGcZ²Ü<’ÉÎ@ä»\\Þ¦.,eYq³\'(ËÓ\"º©jšfRVØéÊ$Q¹`ìI#={V%ô‹\räˆ¨p\np	=M$zð¿HÇ&ñæ2ä`ý\r6ùƒê!å™ ð0\\\ntàÓÔRjÃc¾Œ@’Æ…UJä³àóôª°)“i‘e™G–Ç£÷¿¯áTn&g%¸qéDï E‚PL‡œàzVü¶$¿ây\":l1Äñ¸\0#ghÆ±»³)bT…ÁÆ±­{©[Ç 0l“Èã+=#VwÝÐ!#ëÚœU••®ê	—\0qpI*yÏ*”²1\0“œtÉ«3÷\\çžµLÆíŸîŽ§—þæ¼€)RF99ô>•Ó…RM¥SïVm±åƒçÛéN›N–Êé÷®U8,GçYÊi;\r\"¨„…VàƒÆ}êÔ´9èHtª’9yAòà`b¥T áøÇ$\Z\ZMjQVIó&Hùsš™§3Ær@$ \0û\n&Er›Wã­J!ó„$ ùˆú\nVC*<gfjVGÈôëZ“¬m\'îÁÙÔcœsPmEê8¤Æ,jÃ’„ä`V#Ròœã½\rsöˆãB¿p`Z±D“´T¥¦£,,ä*®>õv; , :óúÔvñpzÕ±856\Z±D»¸¤+·Š¶gj	\0cžÔî[°0zzQ$Ûß<¥6D`ûG?Ji‰Jž»³K™˜ï1v“¸îI¼š–;	ÞVˆ\'Î ¶3ÔOZ-’#¸Í¸mÁàà‘íG2„ŒcëRàã&¬\\iþT\"x&G´1†SÓr¤ÁWb PûÞõÑ5t>Qª\0àûÒLO—¹9‚@­HlÇ—\"4Ø\'+ŒNsPéú}ä’</˜˜6Í¯ë×8úW<±QWÔ¾F`ÈÍ¸’O\\\n«+—‘U[¯ë]o‘#¬æâÝ\ZHÐ,[>PWúæ©Í£ÆÒÈÆ\"‚H÷À÷dãÓšÉãâ™¤h7±Ì^Å5š«\\.ÄnAÈ&³.YZé£†@êFA\'¹«­…Ô[\"´‘n˜ÞX„Ý»“Šæ­mZ{£¸ŽOvükzUœãvg(r»1ÈP±RS¦{ST…û§¹5£%ÃEÙ~]¡·1ý3TäÚåØn==+xI²%‹šy·òÙnÈ9Qïô©î\"Ž€³çY¨¸Ç½[MÌ7þ5JõîEÉÐTÊ@¨TT€þU ‰·Bãš°Òù\ncVnpYO­0[L-ÄŒFÐO\'Œæ©;°%‰ü}i5r“,‡Üí”%u¯N·Êñýº?5cp\0ÁqÀ>þÕ™k}$2®\0|$gŒ×BÖ3IbÚµÁyD‘ü€œïç#Ö¸ñ6¹¶5‚¾ÅEÔ(¢·‹É$—™ßiÜ¹È+íÅt>\'a°‚·X£m»[Á]¤ç¥`ŸM*ª´«ö™¤Um„–E#©Ç¥f^Cu¤\\ÉÝü“[ùxI€Ü 9Ç<W8Ó­Qr½Q²n*Ì¢Íq£2fŒ¯“v­…\0Œmõ§hò¬’É%ÝÂ¶Â©$‘ü‡ZÖ¸[I|2âÎõAE;·‘»•³t?®BÔ…fÜn¾9õ®ÊKÚ©#)>Vu×vö3ÚÍw,¡.Ø„kÄ˜à–ÏáXéñ#yŠ\0w \nªÍ4»#f!T××­L#{q“½K¥‡µkNƒ‚µÉ”îÄÛs*°Uä‚kY\Z+la·‰£v0w¬˜Ë&vŽ^*Ü!Ýó´¾¦qZN•ÉR4CJ°\ZxÈèOó­(®¡y\"Ý€<²w*ärsÛ§JKKfûb@Ð.T€çÛ ükV/>Æ\",‘1Üèç’O\\§c\\³ilb›)¬¨¶\"f\"YrÅTŽ”Û«£2Gó11¨\\¿lVŽŸxÖù”&<6.Nùõ¬Ë‹yd®X,q¼„*“žâŠ2‹•»5¡–ç.s×=ªXÆH ÀÙÎ5bë-ŽrH“8â´`¦EE\'Ž*üQà{ÓxÔ`qVãŒ\nC&(ÃIUe›¨¥¸ÀªÝpi¡Ø’âä\0y¬;Û’sEÍæ3Îkêð³\r12;»£’3Y®rrN)Ó:ž½j±“5-“šk6F3FxÎ;Óš\'Ø¬Cgn=ª\\†@ï´U¤v9 Õ­,¡TncÆ)²ÂbÊH\n¶pIíS) ±$²`¯Ny¨@ãŠ·u	‰ädñùTqö‹(í‚…Kp½XÔÝe;‰þt¾aôâžÊKœñWíôèîB\"ÜFîÉcÒ¥‡©˜$ ç4LY^VS´dzÕ˜V8’D•UÛøO§Ò“Ëi(@ùK¿žúÔu°É-cšhY’H\nI`¹\0RÛ)\"9‘©8ËœSŠµ¤kói–×²¨x¤M»Yr@öôíU’éÆ×\rÔýßjÎI4]ÔN\r¨Š§–ä’Kc€=\rs³¿–q•9ëƒZ;Èï²5f\'%ºš¡qipYÿ\0pÁWü¾µ*È­ÇÚÝ!”àú•$3Ç“Î­TTx\"&`>bxÇ½N‹¿nå>ÔšmîUF}(BTG9«-o2ã!B*Ý¶–×^{!D1Fd!Û€ì=MEÕ€Íi6’qÍDdf`O™:Iý*¸ÈnWó§Ð±ÎGÐ’K`cÒ›!Ëj4l¹íNÃDé‘Ÿ><á9ô§Mu5Ô†[™^IVc’i¤!]ÇŒS¦yÖšQK”óÖ½\'áM­ºø¦Ùe3o–&%v‚¥{~çfääðzb½Á¶Ú¾™wk­ÛÚI%´cììûÂó\'Ã Š¸«“\'¡7Š|1w¯x¯Tm*Ð´i7–»F@\0þ¤W}cs¦ÞIiwC<mµãnªkêOÓ|;¤ K†¹y	s#òîÌrxú×Žü[¶3x•¯íâfˆF‘ÜH€IzíÜ:œbµJ3¸“iêyÑf)‰&2zS³Î1QÈ¼õâ±4&‚Ø €pÀñÐÓgŠ‚íRR‘øPåœgéM\0î#ÓebT{S‰ÍÉ$’}jS<ª ±Ý»¡ª*Ù50~ƒ<Žœ÷¡‹cwK¿·0ËÛlÊíSå‚3žýë£ÑÞÂ+YášÊ´™FÙðAqîkˆ…²Cc¿zÙ°Ÿ.·\\jr@î+)7Q.Æ…þè¥YÅ<K\"Ÿ”)Ë:{ƒXz–›wBn¡uÊªN®;×oe¬Ù¦¬·Ë<Òyelç!p0@µ§h:‰/&ó\'X¯7\Z´•êÄãñëJŸ½°7cÈ×ìqé÷BUw¸\\ðr}úV|O°á†+ÓµŸ‡±og±¸…¢‘XÂ\0Ï‚{wÏJà.tï,NY¼³	\0+ZÜi•ˆ\0’:ÓL¸<R<€ŒP‚rIéBBÜ{HIëŠP²àÔmî)¹9àP2w|v¨÷ñÓëMa‘Ç>´Ý¥~÷!’«€:S·nöà@\0ñJ¯ÛŒP4+óÞ˜{T„àg}î;Ð€@ï«$d«Gj÷xö)<1aªO¨F®Qå G#=«Ãp	9Õ4^Tãví‡†Û×jvfrW;¯xžâí¡†Á%‡—º(ð2™ê§ëÏäšMêÄW…>‚®\\Ü[=é’âr¾g\'ñª×sµÔï+–9ÂŒÀQ*®LQV$žån•ŒF£øG5T±ÝÀâšœ}(c·’y¨Õ½Fz&‹ÿ\0¦…a5ïŸ¨Å1/fé·pÏ¨Ö»ÿ\0kÞ×¤’ÖµhÜ„HrGUïë_=Ç&×\rŒàç5`_:ÌÒ‚VCÈe8\"ºUw”ÎTÓ>Šñ\'‰n!½¶²Ñ~É¤³I(9ã•ÆxãÖ¸OøŽçGñ´‹ãÅ.dyFIaôàW™¥ûo!/ƒÜžjï$›q\'qÏ\'5^Þ<¶H5:Y¼Ae¨Oš•ˆxã’8¡}»¤\'!µfI¤Oip“êÆ(¢uÏ¥mè6~%ÓáÔæ±o=CÞ$## {WyâK8õ½ZïOKËÒÎßaw`$sŸ¯jµhûÄóZ^éâ73«´Â™H#é[×QÛ›&°·[y%Vi\ZàðØé´ã½`Æ\0~œ÷®9«\Z­I\n±ëÚ—paÇAÓÞ¢’mÍÇA@vnÜVcb±›»<PN)¹É¦î9ã¦—$òy¤#qN;rühÑÌñ´à0Á¡È$})­ŽÕ,+ÈGØ§øA@Æ¢†œqÅ8!\0Æ¬½“D‘Ê®¬Žq‘ÛëCÛˆx.Ž„r*n„\rc<0G3£åF#†ãgr­´Ã r{T‚K«Ã®òë»ljNäôö®»Ãfõþ9&ŠF·· ù‡,\0 aIôþUt¢¦ìÉ›åDz–acm\rÜN“<€·”ÌY±ÐUËVÒôûXnÖiüÄm’Eoþ±‘»Â»?$’mFÑuË¤òqœž?\nóï[êÍ®Ø=ä+o4jVE 	cž„ö¯–=VÒÚ»™²êRKpÑA=ÔŠn<Ð“Æ9›¾µ <VÅ\'³þÉÌ	äp+ZÎÛ_¹º³¾žÈI9Ï‰7?=ÈÎq‘ô®÷ZñF›¡]i	t±»™G8aƒÇlåXUœ[J1¿Ì«Xä4Ÿ	läÕ¬î¥ˆ#²FÞŒÔW®[ÝÛë·	®BZè°`‰ò®ã°¯^ñE¼“Fu&ä]Cl¢Y–CùL:Ñ€?yOŒµ[mgYŽéä…–ž\0q ìH=\rN\Zuœí-…c\ZM&Î;vt}î‡«lÎ0TŽ¾õVKfýž!çŽ—•ç¾{\n×Ñ`³ù÷3»H%Ú0	à‚x ÷«Þ(ñ-”Ú=ªXH!¾Øb˜[F=ŽMvûI©¨ZàÓ2.µÄ‹D].ÖÊ8gmÉ<á·oìCî+/IÑ¡½»ÅÄŒ–È3#®	Ÿ®*=\'NŸUÔ\"µ€üòdžt	á›Øà•¼ñ¬Â3\"?Ì?àpkIÎ4—*vlW±Í_Y½­ë[ÆÅ†rƒý>´A“Ì\"‹ ÉùÛn1Ú´üG¦¾‘«wÈÑ¦×Gt(HÀÏ ¾·³’ø;£<R\"³1B¥XŽTçÐÖ±¨¥Ë¹#;ç$ä\ZÚXÁi7vÁíV®­^Òq½ÔÎªÉ„¾zWE5}I[’YC—\0çŸJ¿ö7–)dÕ<•,Û§j¡\rëÅ•µ0sŽjÃ]9ˆ°‰éÖ¦¬[‘/FWPdÁÏ\'®jU‰ÖEÀ=élã.X2àŠ³$.„0i­©¤„hÚÜÜÅa,Bf1Ð	+CH¿û,ù#\' ®@#ZÄŠm°øÃš±`óŸnkuCv=)<Em43;Ãr„2ìŒa¸þïCX‡P2_K‰•üÜ¸?”±í··¥aÿ\0hJ#/Âp=ªo]¤26ÐHÀÛÇJÎÕ;šç Ûè67vsE$ñØj1G¼¬Žv0Æ§Zåne}\'Qt3¤Ïx›*ßCéPjÞ!¶¸°³[s/Ú\nÝl–a­ŸÎ°Úô .s¿Ÿš•\'SW\'§b\\WCSWÖmnåŒÅg¶ÈÂCO¯=ëI™ŽèÉÜ9Æj«ÜÆ»ÆÍÅ‡ÊsŒTk:¦X±ÁôªmZÅ¤k§¼AhÆ§(ýÑ„‡9ëìzzW/,²K+;¾çbY‹¦®ÝZ„Ï*¸K–úu¬Â®[;³ÓÏ\np‹¼U¦–•©Ë¤ÞÃw\nƒ4ndåH×¸i_4‰­¤Kˆæ‚9\"’1ó	;ã\'¼×ÏÈYy<vÅhF·‘Ô‘•+é]Pªâ­ÐÎPLÛÖ®á›U¸•žêêÑ˜•3¾$ñž8ÿ\0õU7Õdµ•\ZÊWŒÂ0¬>V#ðïP›ÇŸKæŒ.w€CŽ:oëY›B¸ÇiëÐÔNjl##r_¤1¡¼‘öðª[ ÏLS|éf¹d3’õ#Œýk	˜‚yzÂèG*rú\ZÍB1Õc¢þÏ™¢¢;\"¡edqßéYO\nûÁÏ¯¡®ÆÇ_°ûZÏæG\"¦Ï60¤¨ÇòéXW«\"À&h‘âŸ;HêHãÖª›“¹Ñ˜;™x?ÍH×’˜|’Ù^ÜÔ÷¦ÞG†a¶Uà‚EQÜ\0=ÎqZ64®@8aœö«‘™áW¤a€=EPs‰Uøo%‰•÷)ÁÈS{ÔIi´Ÿ¶FÑœ†Ceò;qYÚµýµÔ6ÐÚ[ù^R~ðîÎö=ýªÅÞ¡EÙK$SÌ­ö§\nsØJÆÁ\nk8Ýî5b7=2;ÒîÜ?ÝŠ™äV¶â„àƒÅ(ÏsJniØ¤&‚1¼€£&¤‘(õ¨Ô¸\nL¶pO=1CIA‘&vžvÊ£ïN6åa\ržJ†X‚ aÁèA9©º‰Szp94éâe…`ç<T6êìÆ\"‡q³R31¼ð8„êÄúqÞž¤‘’8ïŠ†7Žüþu:0\0àb4Il\'¸<sV|–X>Ó;uÁúUd@Ç=±Ÿ¥=w.HcƒÁæ‰çnAþUr€˜,oæ3\0hõªñBÓHDq³2©b ïWlØÂdä© \ndð«DŽ¸ŽSrVSóŽûŠŠE#¾3ÅK{q®†tùG˜Y·nnæ¡UÏ9íZ¡\\zdõ©ã;†ëPŽ\0$@îæ´@[Š,UÈ¢*(×‘Ç5q\"\'œV¶!±TúÔÑ ì)Ë¥]‚ŒÓ‘&Ú»k\0y)ÑÁœb¯CØ°-Æi°Eq•G~Ø§$;¹«RC¹‚öQŠ’8qB%‘EH­k\\sÒˆbÎ=kB$Æjc$Š04ócV¢Q·f¤òƒò(¸ŠIÏ:Âj_/iÅL«íEÀ€DÝ*d¬${¹àSÂ\0j\\€ƒËÎ8§¬DTû*TŠ‡0°ÄR*À—\n»I½0ú\nh›Ô­‰¼ÖfëR)ã5xÈÍJÄ`‘ÛÞ³}€RÂã\\¶xÍøïOEø¨Ì•”zÔm!ÇÔ\0µˆ½AúŠ°²[öèÜ}k/Ì÷ç½#9	“Ðô¡Ò¸Ô¬_óZ\'tM¬G “ÛÒªÝj¥v™äf¡†F$.\0ÜzÓnÂÛŒqÉÏZ¥M)jW3%³ºòšF’L8 ¶OðÕmFOí«2–ª¬Jß0ã¦)$µh7±C\"É\\õãÚ±§•`ŒD¡YËnóýßaW&ù›v±•i?ØïÒG0ŒŠí,¬­å²y§Ž\'YI(û°v“ßÐ×)qrÁˆû¦fÆÀ>èúÕ\\È#36Às·<ZÎ.[;™bh.\ZWHA(„²¥†q‘ëUŠ>z’Àã5¢C–I`oõC\nÀ`Ãñ¦«ù-µ³’TŽþ´9«Ø\n	$pyrÇµˆÈcÔJÏxÛ9´Ñ5È2³®\0ÚwœqYì£<t§p±šÑyjX£@‚6_”¾\\ƒÉ•qáÎ)«CŠ\0  E€Cf ¸2¾C9ØzŠÕhçŠ®ñ…<¯5- (ÇnbùÝ3‘•ÈÒˆ¬x9êZµ\"äÒªH:Ô4ÙW+É:;€ƒOÒýpØÎ*)£ÚÙ¦…êàqžhJÃ½ÉL…Î(+‘ŠXÚ\';þ•\"íuP§,zŠW È8Á­[Do-˜úÕh¡ÉNƒ>õµ``Ž2el¨ÿ\0–cø¿µ&ôÐhHbÊï àw§¨ÆNH©á•”“œÈSs‘·©©LbŒÈ-·¯n*¬Œ{5jPÅŠ«J¬èªÄõã£[K\r¸lHUTÓ`ufÊÄçýœ÷§²™œ©5i­ÒÚác/Á_™Ç#ê*’V\Zf†\\—”¡^ù@è8ª/þ°Å¿x^EK$1ÀÎ“Ì0¼\r£?ˆ5]âŒ\\*…taó1Î8¬ÔÒ*×5b¼‰÷ß}ˆÂ2ätÆsíÅU¸Ä\"ê(øŒ‡göªb$r‰#H¸Ç#§jÝ½¦¯ug\"ù>tl 0c·òõ\"¹çV1Öå¨¶K¹*Û½Ä­‰#Ìy‘HozÜ²-•#á¼åÜ&\rœd~¹é\\æ•¦Å0™ÚC@Û\\¸ß\\Sä²ž*ã‡BÈ<¶òç;‡UïÈô®:ÎmEêmµ¹éiocwµÌ*ŒôÇQ\\þ¤²‡‘ˆû<!€@1$`ç‘ê8üªŸ‰‘¶Åq#Ã¿e!£|œpÀuÀïŠŸY‚Ynb\r\"HÈlq´äôÅ\'\'$¤¬Z÷vg%­YÞXÃlÌ„ì0ä–÷#ß5ÏÛÛy’Ê¯:[É‚ÃxÆHí]o}k48˜‚…Y$Ü	Q»sè2kW†Yu©¢Že¹mä‡òOë^¶\ZOàlÂo[Ô´ïì÷d2C7+™c}Ã•Ïõý+(vvF	\nÃ!$G§¥2h0]B‚>Sê+ºâ¬ÝÌg«ÐF¯jdù<eAÝŸJ9Ç¹Æz‘—hÜH÷º73f¾›¥Kyk5Ñ‘#·Œˆå†8ÇãUí’9îDm EîÇ¥Gq$°ZÃ`ÆÉ• c©ïSØ¯™äjÍ!=J‘‚=ø4Äl\\Eo©ßGm¤È7.ì—l \0žG§’Û$ÒEtìì¹UXÇÔÐ¼Vy±…’=¹`ä Ž”Ý>æ	5h¤ŠÔ˜³’¤ã\rÛÓ¥gRME´\\V¦Î‹¢-µ«j2*ÎÊ7ˆè0~VÏF«úMÜZ…ªÆ#ò~v€#Øo@=O\\Ö“IèÚ“¶^\0ÈÉŽH<ƒžãÞ¼çWÒá§†õÞF™Š8ÎÜa¿R?\nðTž*MKGÐëk‘&«¨x}çº²Ü‡X7˜ð>Q‘Ÿ¨\'‘ÜWu=õÌ÷SHÈKìsÔZºÿ\0ˆVÓm XÝ^X±mÛ‰çñük\n4%yäÎ½’<Ó^ñ…I]èh}·í:WÙ\ZÞ%(r²¨ÁúZ¯\Zç®–ÞËMW‚+iÄr\0Â9‘Œ61È$Õ?-!7@Ioá?Ç8®È%ØÉ¶÷(FÊ>òå¸ÁÎ1Ve•¦EÞÌJôâžÐÈÄ¤‘ì(7`ŒLÒ,h9Ï<ÖŽÝDÂY†x§gåÀÌ¤Ióð¥Iœcšµ‚2‚Xt÷3WEGCn8že‰¤–5pK·$œç·¥hÝA,‚…€ó¶–ã¨îß¥d5Ô—²–(GzÒ¶¸íËyŠNq·Ó½pJœïsU>ƒÅ§Ù™Ö+–À<Äã†¨·¡Mí´9¦˜$k\r·98Áçñ­È%†%ò‹`Cg„õþUNš½·!îcê:aŽlÂ„Å´}Oz©8#\"º™-üøŠ§Ì&õ*ÙíÏáY“@Âf$wÅvá*·HÎKRãÀéSÛNTã\'µ@®Ë’ØŒÕ\rì¡2Iê*Ho\"ƒ™T¸Î\núŠ£}¬<­Ñªƒ„<ŸÎ¦úŽÅk¹LlT‘‘×‹sy€FjÔÒÇ&àdÁÛ•Àêk›¹¸ùØg<Õ¡XuÝß\\u¬™\'%³O–RÙæ©±!‡ œÐØX‘Ë;\095\Z¹j¶Í1Nê€êI®‡NþÇKv…m^âF@í$‹›rqP9ˆ šu+–Ï`2MocÝév¼Šºvóqé[Z–¯§ÛÚ3Ù<V³ZÄ°Á\Z.âá†IÏ±&«Ú›íCL\Z‹ÆÒ$™qœc§¿5œî•ÑQ×s\"ÜLÑ„d*¸RçnÂ9É?ç­aë˜µ&Ir¿yåsŽÕÞéz¦œ,¯­õE‘ÛíWÆxÿ\0\'ÂÏqÜªªF¤P+Rû”âcº³¸õ§&žh‚àÊRQ!Œ¡aõ‰m>Ór’\\8Ž&p¥‡<}O\nÛº3C½J˜Ó-§0÷ãõ¡Nã±•¦ióê7&xÌ²·\0É­Ke}âæÒx£Žå“`3.p§¡÷¨ô-V&öbðù©*yyÎ\nŒç<u­¯Zéú£ZßÚHhÌ—0³(ð§¶]û	µ±…­3.°+hTF‘°|É9ï[ºÝµŸØVha¶77\0´rDÛS\0då}sÓë\\¼²5žÔ†]Ê~u\0ôçŒûÕ­L¹ÕîUd—Ë´S™Ü‹Üýj\'ñsÑXÅfv]r¹Ï=jP9`Á{b´µëké\"ÓZf…Òàô>Õir-§Þqò§Í\rßT2Í¥¬‚ÙnŒl#gÚÛ5¸×\"XrE³aP>n;Õ{;w¾ˆOq41ÆÈÆ8€9\0¤{Ô¶éÔf\nÒKooÞã<cåâ¹êÆú²¢ì,ö/$Òy™ 6ù&3÷qócÞ³µ­!4È xä%@À£n\0ýk®ÑlÓl2›Æ·3»ÇÏµÚG¿°<Sö_µL´mëÝ±Éú5{\r3—IŽp89Ïã]ÖŸáÙîtîï®¢H{„i´JW$çŸZàã\0¹ãu®ãÃúŒo¦G¦ÞD²vgQ’Áçn};þÚ9;¸vÜºüø<®à2GjÍ”\0JžOc[×Q[Ã4Ë,¤»œ™•úb±\'u\nG·å9?Þ÷¤·)1ËÝ1I\Z’;rx¤nIô5bÔ®â%$vîjúFè7(T!(vgó®ºÏÃ+¬ÜÙÙØ¬ÑË…ûd²’=ÇƒÓ¦+ZÓ[JÔn,æ]­m09?QÅ\nö¸“Ô£\r¬—Ïmª@<r+¬Ñ<GªXZdÁ˜ùÞr‰:–\nvœvÁçð®Ræt·i\"³y–&vün\'Ý©4è\ZûQ·„¹&I>þÓÉÇSÒ­vCó:+]Q&Ýõ[¤Šâe7 É“¯=«Ø|Co éž·ÒncZÞGò\\²n*ûr$r;×’k²ß_j6þ¶Ù0²ýÜB8Â\0ØÉýù§k“x’m/OšúŽÊu1XD&ÈÇs€tF¤s\\ä%Àc´ä×Œ22j%\\†2¸eá‡¿zj’W®y;»š ^þ”ò{ÓqÐÓ³‘ŽÇµAB3s¹Oµ!¸ìhÝÛO=)€ÕÂÉƒÐÓÔäûÔnISïR\"†PÜã¿Ö“Ø–]²…î„¾rqŠÓ²µ®cIKmc—“ŸëPhQØ¾§×/ok!Ä² ÉO­tZÍ†£ÝDtmKí‘nÞ²t(G \Z†›Ñ7×S¦ðÏ€#×ì..|×¶‘`|¤÷ÈÅM¯hòx[Ã·ty5lÇ<yØñœ;2J³àO,&æßX½Šð¾Iu%Aèztõ­ˆ—VZ—‡ ’=bÒ\"¹}à†ó\0ì1ïZÑz-	kSÇí¼c}¥apJÚ²(\n1ò©àcó©<]¬Ùk+Ú†Ñ˜ö\0öç¹ëXúì3nû:ˆÑ›q\0u8ëY’ÈÄã¥+Ù¡›ƒIü¨`1×¥5›åÚ1õ¤Úy\0Ò\ZãôÍBÇœæžÝ½DN)¢‡¤Œ:R±f&˜½øãÖžO½1 ¨Î=©ÄdzRJàt¤1é&G°§1R¾¤öô¨Çz•á»)4.ƒ‰<qLÝ·œõéìxþU%†MJ3\"Œ‚2\r5Â6““Ú‘ðxÅ ûµ@4¹ƒÍ#ýßsÞ†õÑ–lu¦13ŽÔýË‚{ûSqŽôÒyÁ¥`,:•PÇ=³HÑ˜ñ• °ÈÍOrìai7!äíMOw\n}ž9ÞDÜä+–ùHíëZ(J×#™lkhú6®‘ÚÞÁ±Vi6£´¡wc¨Ï§½\n›Å:\rÔZ}¥®›b×!±2M327ÝëÈ-äV•#¹’Qàm9Û“Î}ðþæÒ=*Û“ÈAÇ™&3†Ûž8­c%mH’wÐó­KÃ1[[]K|Ënm@±åÛGN8ë\\Õ„­#ˆ£|®K®9P:šôßˆ,›R¾—É—.xmàp:×<–f{³&¢›‚n_*3‰	#åœS©t)]nsÆIçærÇjŠ.G3?.x¨waN+™­K¸âŸ—\'ùU`yÍ>7*Ý(hd¬Äö¦¯_zRàçô¤Ô€ì‚	”0=H¦nç â”8#€6N²ÓÙ,\ra—øÆj’¸Ç\'5W8Ç4ÒÄƒŽ*y{w4a½ò‹.Ñ†9ü©Ð_Ë	o-Ê3pXd\ZÌW=éÛòi¤ÖÂv6õ´—R¸š;©n£ß”’Rw°õ5ÐYøŒjVú}¸ÓÄÚ©Ø“JåÔ§QÁèAüë‰)4@)V\\ôÈëZºåîŸ|·VÊC\'W)¾ÿ\0Zò*áÒº¢nw3ø‡Å\Z=Ü*K&!#€¡®gÅ%Äw±ÈI¿t”Dªÿ\0´Î)·^6ÖµU’Âêò3m)*L‘®v’\\zŠÖ×ü)5Í•­åœÖ’¢F›XÈW#©ã¸ÈÍsB”iI:ŠÏº	IìÎfË_¾ÑnÜZjS¬dàœ:àŽGÐš­¨%‰X^Å§$®dIW¡õuÍJÐY^ˆÚx¦ÀtG§±pG¥Z“Y‚­dµ…—Ë‹l¨øÃÿ\0®ËlâNŒÏ±’Oµ,qÞ‹\\ÛØŽ•A™§”’IbyÏz»mlumYTÏ“W€3ØWeªiÚ‹sic§ ¼»<’9\0à‚+y5ß©ªŽ—Ã–:&›co{wxd¸c»ÈHÏ>Á‡Föé]n“všíÍÒý²’5±(ƒœí¯ò®\nì]É\r·ØìÜÛ9¤…ïS®æ÷+\n÷WžîïÎ‹çºÄHõ¯6xW]·} ètþ=¾–âì[ÍX‹Dn†.8äúvÅr+#7–£qÏQRDìäk²¾Ö\\†Z¬VK[’Cc$…uè~•èaéªpö`Ö…¹ØÌÙå×‚sž•QG› ôÒI62OÞ\'œµoO¥G”ˆ½[ÅuÂ-![B¬ê7·\0t§@Í`ŒŽ´é%ÄîS’;ž†•%u,r°ç4žÖZí¥fåQ“ÔUç•&P	Æ+Q¢ErëŸ@y4s3i9j³¹<‰«¢ë¼j¤É\'ƒéJ²àF¨Q•‰H¨¤`ŽA$g‘Æk¦VÄ$›4ä¼ÕÃ´„ÁÚÜ“ëUK—q>æªK\rŒ7â¹€íî)I—Ê+’¼néÒ›7˜b”\'‘Ž=»ÓYÂ¡QÈ&“˜­b±\'š|´LWi(Ø\rôþ•\"F\'lÔMÄ,Í\nsÍG´W°&M{köi\"òî#N¡Ñ‰?/±üx¬æžGrò6d-’ÙëN»šéãŽ+†%báAížj¸Î@Ú0M[I–‹7W)q qF0	Àã½\"O pUØÓ©.R„k,v‚ÙçÒ¶tM*MCN¼u(©ò¦çÇÊÇ‘ôi;EjÁÂä•ùÔœœP°;Œ{Ó¼™mŒë·8,­§im«M$6±¦HÚB¹…$zð¡MÊZ•‘„À¯þ4èŸ×<u¯@¸ðD\Z½µå„¶6Êë´æä–.~e##Ú¸IíšØ…fW2Jž‡=\roR‹§¹¨¥±<2…p[8Ï&µN ÷\n‘”FŽ!…túÖ48|b¥(ÈÀdçô¬®6‹WJ¤\0eÝ\';‰9ÉªÄ(=9µ9£m¥ð08$Sì.bŠíLð¬¨Kc\'ëUwÈ«8ýævìÉÎ)êªýHPnô“°yªásÀ8¨ãôÏáTÑH~§à„j223ÐÓƒ`b¥ \'Ú›‚*Wp0=i…Nx#ap\0cÕ½6Àß^Edí·(…Žqè95SèkGImu+YMÄÖÊ²ÒÃË\'¸´+7¨ì$zLÓêI`Ä[¹m ÌvîsÒ™{a\r­Ã¤wK>ÖÀuŽ^+gÅ[M«¸·ÔÆ¥lª6\\+#½žý«Ÿ2ÄpÄƒÆzcÒ®j+DL[vbHw|¹ÈæšB?Ì9è*3&éÞ€qJ þì¶;×+LÔGgPÝWŽÕ0Œð§\\Ó!\nWqp§F6	Ç<J´ÉcÐ`…\0TÙØÛNáÏ\"ä|ŠÉ’Gßÿ\0AWŠº”r90j–¢Ü¹Î=ÅYI¢U‚#Bóz©8ë…«®rI#Ž1ëL\Z$·yb}ÈÌ‡eN¸­í3Nµ¹µ¹Ë+4(ÆS9=ù¬eŒ„ÃÖÖ‹Îœ»)TçŒU§dEŒ«›dYÜ m›¾PzïMŠ2*ì¯ö»™$POJj¡SìMl•ÄWò‰àÕ«[sÞŸåmÁjÊ)\0c¥i…Ç¬{=ëBÞ=ÀÕ5W$JÕµ„íïZØ’híËjÔVŒqV¬¢È…j-®T\Zd”!·ÂŽjÛÛã z+p¸\0z°Ð~¸5=GÐÊXêAÇJºÖå[äRð½*„A\nàô«ñ`úÕE;N*T“\rŒÐ#U6…?7z“µRL€8«(K\Z=EL‹OXv…<Ô« à€GcPä‚Ã1VJ£*à`Ï½DzÔªFÌ÷¬¤Æ…\n}i¤Òyƒ\"š4XƒOlc=ê2ØLö¦9éJ×`ÛTñi<Ñ³¿E¿wñ¨òxíMFàXÜ§ê{S$÷éUÄ‡y©³F[w#­W-„#‚sH¤m!¾¢¥UgÚ¬=pqÖ¤6Ì¸%x=i9%£\ZL‰#Þ2£ŠI!]¡Ž•¨\"Š(Ëà¨ž*ƒE±ƒTŽ0j#Rì§\"¡FAž”ÙßÍ	?2œžµu£3.åL`sŽ•LÅÜþ¬Zz²\n+m9.¶\reÜBÅ¹èzVÌ‘v¨L*ØêGzÑ[ ŠÚd‰æLn~ñPÅxô«×Ú<¨÷6ó¨q×pëŽƒ§Nµ\\Ä€œAëM(Á‰RW#“‹½Ó\Z2¤€¹\0ŽA¤@®ãÍ$)<àV“D?‰AúÔO\nmM¤yÎiõÐÉ `ûb©´aZxÁíPÈ t )°ÁÆ)YT*	ïŽ¿M	$ùŽÔy±œTÒÚ¡±†U™K³TrA¯Ò˜3<²ù{¸8ÅS˜å‰ïZséò	\\ù‰\"à¸hùõÇaÍfÊñ˜†ƒrE DF2PîàZªÃpiÒNrFj¬’‚ÇùRÀUù\0©àŽÄT¬sŒzÓvã¿9\'œÒ\ZÛªku!»S\0É¬Æ»}³R3FÒ!\'~=ýëN4ØÁIùÀëU-RO$IÃF2Øô5©2£éðm9¸gÃÿ\01\\ò©gcE«’[ØµÄ2$\0HÙ8<àU7ˆB¤¾âÁŠœtúÖÜV²ÛF¬ŠÒ0]»Ð3ïþ{Ö=ážI7LÍ»¦jÎœ¥)½tH¬f$ü )ÁS’nOJ|0‚ã#5oF\0®¤‰l¬cÛP¼úÕiÉR­´óòt}·/Aõ¨Þ ËÈæ³q×QÜÌ¸˜ÈŽåUÐ…cÈFK‹¹äfŒ;¤J=p¾•¥=›¶ï)IÉ8éõ¬ØîQÝÅ1}¤ÂœçLŠÂpþRâû›p]mû1i-ã¶*¹ qÉÎ;œþUbîx#³yEã· DÛó¼p0>•Ä,2,¢&¸Q!áwñª­x ’Hf*@Â7WL\'7SxÔI·¾$»”Ç%«ýœ¾ÉÆæ3ïÚ»	_\r]½hgž8u,÷«È®d¯™7}ÜÖÏõs¦ëË#Ê©ŠVVoNØ÷Î+<F\r{&âµBFÝ™é×±YÃ@!ŒnÝ\"¯T<sœgµrz…¤šPY—C\rË–CÆWž€ôéZ\Zç‹\r¿-Õ’ê3\"»’Øz`çŠMAmo4hà¸Ô³R#òÀ%€tþ5çQHµ)ìÍÝ¥¡Ë[^Ü>²#¿ó0ùIn1Ž>oN•Õ¦œ.-à»’K•›kH>^qëÏ‹“mªÙ¬f\'C„ÜH$qüúÕ{SR°hÅÏ™\Z«dH§\0œõ#±â½9ÅTk‘Ù˜í¹&º½Ó­ª§y¢¶k\Zî)ÒDKˆÞ5*Y}}1[HºµÌryÑîóy³‚Þø§ÝÀ÷·ÒÓîF‡·©®ªSpJ2\"K›S›hÝ<yHëÁïI<·ÇZÙÔb”Z¹¸v–=¸ÚÃ}±ü«WÞØ\nhägÐWe9óje%bÄ²Éµ÷\0@è\rhAÙíæ•¥¹vÉÆ:ûVrÃhÔž{Hß1$ÎOQ[ØÕÓìgÖ®ZÖ)PÇ-ó6ÒÃÚµ¼;jYáTÛ*àŽçŽÒ¹´½Ž;¶˜B6ãåU%@=L\'º»\"à0DFÆ@ëíXW‹œS±tÝ™èséºM¬o$O*<ægHI\\¯?ÌŠä¼Gw§O¦Û[Å\"É<J£ÍS’Ä\0#·×¾*–­©]3,Ëpñ’­\Z nB’r\r`‚rwÚ¸0ØF\\Ò‘¼ê§ øãÉç‘[—šÛØC}÷‚PXdr«Æ3ùâ²£[æä]ŒòÝk:|Skkb\"F2\\€:ûWmiJ6hÊ)4sÜ\nü§5ÐZ#éGuµ‰ùs;QÞ³Öuµx¤·\nCFËÈ`GCR¦¥(Ò¥ÓÛL®¬N99­W¼CÐ›\\Õ­~.R%@¨±œ;ÕT1´!waÎsžƒÒ«…Ë`wïNTÉ#<Ê­Å	ƒÂ‚8ýjHÁ\'úT†ÍÒÜ¼Í±ŽZdž>”ÒBoRÕ´a”§w\\ô~y3…éPG¹£cnrÝÎ{Uˆ¥–7X©2‹è;– ÉÞ’®K†ôÁæ¶cž8‹G\n•f*Þÿ\0ÅYi\'˜ÛÛ’=jÜh³¢´“€À…$ŽqÚ°•>oˆiš\r6|‹€®*,™	ÉôëPBï¥‘ˆ ðjÌ%[qoOz¸ÓPWBz•˜…Ò£Œ#ÊªÙ\0÷«D„íCŸSYSNÐÈIÈÚzÕ§5Ö€‘sR-äðªç–ç“ô¬k‹€³A1)899ÏÒ´\'¹’Fv* ¡#îûVEÖ/ïâ‘ó#íg$?áÛŠÊœÚÑ•(ö4&KwÔE•\0WùD“Gµ³°çyÞ R;©Ê:ç5ÙêS]­·ÙnnÄEûÍûA|ƒŒ‚y®C]–Î[ðlL¾PAóqÝúWDYKÈA\"¢cÎiÏÎj\'Ò©±Ž262ùÖµ´Yb–F‚yäˆÈ6¤ ð	#’¯û ¬»†xö­Ó¥¶ÒÅó–9‘—ËæûØôTúŠÆÍöƒqj-¤š6‰)q¸7ýzf¶â†êM$Ö¢·ìHíÓŒ(ãæ¸®{T×odÅ¼³›‹VDU-•Î:Â©ßÙÝh/<è”ÈÇhÞy#¾:\nNI-!‘XÞ>¬övÁï}³tjH~NôÈÍhë\Z’ÞËíR\"Å–lŒw^1ÅW‡ÏÑ­ÅójIÃJ±â1–PTœÀþ´¾\"ûU½˜O¶	âÂà¡ãæîs\\Õ Ûº.,Ãžî?²¢G§®j¼Ò*ÂÑ°ýá<óœTPÏ,2³&72‘Ï#‘Í9¤ˆ…¿‹Þ’ŠC*–q“ŽHàÖ³^j3Á,Œd!ˆ™$p01Ôâª.çre”s€:\nèmüNÖEZ8’X\"B¿q‚[ž„÷Å]Ð‹z:3‹©¥\'|-¼ê<ÎáÇlóXZ‡Úíî¾ÅÊ°0ÎØ›åç’=+CHó¼I«˜œb…Ü’@ž½k;]’ÖßSe°.ÌŒPË\'\réÈ¨w[\rX±«\\™b‹eÔ3H#äB‡ç\0¯JÄks‘«£.àséïO³º¸²¼‚ö×ä–ÙÕÃ\\µ¹¦1×õ‹;iÉ#pî$–ËzJwŽÖ?Y\r2ÛW´»MC™¡;Éä?!\\®“H+Å\"¤¤ÈÞ_Áô#Uj¤ÜDš|á¢RV…‰ŠB;ôþtËMWR¸•.t{YÀGó.õç“ŒñŠÎÍ?`é¡Òê³h²kv¶’[˜n–m¢;v6Pf=98ÏµsÞ,½7zT3Oikopò4j°œ–€Xž„q\\ü¢ioR}@‘ñ!Ã0\'£Ö´u¨ou½¼V/e²–²¾ï)=N}sŸÆ©Ê2‹°¬ÓG95³F°ºän‚:U¸î0¤«6TóVþµ[è+	‰–vîðzÊ¸ô”®äÏŒeÌZ.Á1•Ö)WtY\'n>ñÇ™y.åU €rT{÷©dfUXç¾W”–A•Ã\ZÑ‘T£c Éô«ÚD5ü@	Ã)8=­V‹$•=»š{»Åqó)FFåqŒÚ›Ø£Öô¯i^º›L¥»ó„¤– †2\nŸ\\\\Šoá¿º•Dbg;B`žO·jÆ{÷™\0tFsœ0 “œ“Þ´4½ç\\k’”Æ›”Ý¼ã¡?…\r{o’“@åP€É÷œ÷#Û<Sí¬itn!ã™@ˆ’$`AåG§ÕíKÂº…¤3ÎÑ•dfÚ[pØÆzÎ»¸ûB@ÆgÞ‹åF6¨\0\Zq’Nãz£Òôûí/IðÅÎ¤Ïö‹‹¤m²•Q42¯qí“Ž;b¸-!ïµÒö³K$±ÛE,°!—h‰±’GøUEr4©¢Ý‚ôtÏË’FOåWäÒ^ÄÛ¦Ÿ ›Î„xØ“¸ä2ŸJ¹×mhL`‘‘wÍ<’HAs†-Œn÷ªù¸®¢[Ki4ûu™£C!ØvŽÀŠænÃ;&åm­Œ¯Cô¬!S˜Õ+ÜM4â\0ïM^sžjÁ\r€F3LlÖ÷¡éH{æ„-D<ž)ð9ŠR;0ãëQ1#¿âzzõ1´JÄ©½KÔªp­­Aæ\\ŸÆœ©’ýjcBÒÖkùŠ¨¢8$™«÷ÞÕìì!¾š	M“–eåO¶k)2Ã .28ïWß^Ô›O\Zy»”ZÜ±ç€jnÓ%™r|»‚ƒ´w5JàS¤™°W?/z­¼ŒŒ}jÐN´à1óóQÔÑ¼“ùvàdîùGÖ˜$6E%AQP‘Ú¬HAýàpjÇî;S,n@È¥ç©ëHy§§½0­ÁÍ( ­F	ëOÆ;Ò\nŒÒ³<r\0;õáÍ4§w\\R`HÀã$j&\'¦*Mês·€}j9žõ+s11ž=)Šr°8Éô¦¹ÜÄô&˜\'š•nO-AÞ›I=½j\"Ni„qÉÅ41Ö§‡t¨5}fÞÎîú->		Ýs7Ý\\ûV|P,˜g” úfµôÍQ×%6Ú|/&:Æ\\“Í\\ØžÇU¥øz[ÏÅ4²˜¤ Üª‰Puãžžõê-ð¶Êê0oÛÍ2üó\\²û*ò³>hSéWBïQfä„}žÝ_!à¹Žp?*õÖPØÈu®šµ¥MÚ*Æ6ìð½Wá]¥¢‰a¿û-´ò(X¤LºœàdûÕ\rWÂ×ú{[AirÐÝÂhÉ#)\'\'æcü>•ôÖÐÜ&Ù¢IÑ†kÌþ#èkn?´­d‘.02W¯^3ëÖ´¥QW|jW+Ž·8«o…Þ&Õlšf¹@ñ¹Ý¹Xõ®YðÕÿ\0‡µ-š•³R7Æáí^ïàÿ\0kwÜEþÒªƒ÷b ’FÀrqÀÅ\'Œ¼.¾+·{“x–©åf_›8>ƒÒ•5¸T^Ì5¾çÎÇ#3l<•“ô¬Ö\0p;WKâmô-Jk&`ûz‘\\ë©ÆMrN›„¬ÍSL‡¯SŠAÅ)4ÓÎjF<7QN9ã°¨sŒz”Š›\0g“NT#¯zä÷¡<uÅ ³€8Ù×šr`€ŠGUSÁÍ+ˆaâ€½I4¸Éö¤r0z`v6º‹ÞZ\'TvŒîO0d{aMƒ[žÂw!¤]öÌ¶çnF1À9\"Âÿ\0ežd³1D€n•Î‡§ê	í\\íÄ²K93¹\'<’1^]Tç-]ÈQÐ†ð™ä?tžÍhYøÏWÓ’Ú+k!-ÃŒgw\\úÕmF(H€Å2I”ìçÐZ§%ˆS¹¤ã€§?Rå”m!Ù\Zz®©¯²éae½äÜHND‡×½k,…–FÍÀ\n3y›CVílíåµ”4æcäØ»ƒZ¨Å-ÚÒè¦±<\\2s¸Uøî&b6a§R\n:¦XšËö2ä‡SÐš¿c+Å$r#9ÅºÕ‰³GD¶žæý­„ÓCq\"‘Ó·-è}g^X½‹ÉÑ´r †æ»+[“^´`‘µêÇ¸ÂH&i>ð‚AëYž.ÖÎ½«Ï¨ÃµŠ=±˜ÞL°=3Šå…IJ¥’ÐW0¬åŽxR+ÂÆ$8B+“Î*+ý>[v’Áhþn0Áär*Âé±\\Y,Ð\\Ä%Ý“æ\'ØQ6©oÿ\0ÛXT[‘8s?v#ÕÓwÍîš­L³0Ýžµ£ÓÛÃ$+÷|Þõ™å­ÊÏq\n0/m¥‡¦ió´Orï\nìBÄ¢œð+¦SiÙ\'¨ÆÃ©¦£•úzÔ¾Pn{*¯&sëPŸBnLªÒ@ w\"\rÓÔzTtj ûÔ‘°-¹3H‘>3ÔzT/&â0Bã­\";ßŸz‰Ã³°$„î3Ò”]¥q%©`9KeqÁ=\r,p<“*‚ÿ\0SŠ&*1‘žžµ\'ž¯+”ŒÆ‡¢ç;j¹ä\Z„ñÉ¥‡\\ÓÊ1ã\'­hYÞÚÇm5¬Éép²&J{‚9ZÙb¸¹T”´1í;]vO¿µ\n£{ ¸Å6ëU®Sk§j–IJ·ÊÃƒŽ*“seùâ’OšáÔnù.&S$…Ž\0ËÂ’Hü–\ncåOÍêjKu¶y	–M‹žƒ½_€[HÌ[æBv\rÇ~5¤ª8èjT·…®Œvð¦n$‘Dc×<\nÑi/´á<ªÌn¯Ê‘õéZ¶1Cá«ÆmgKûEÂ*Il¥ƒDè½ŽøÆ<\Z¢ï­q,÷2³9l¸àû÷§VPPM‰ÉÜÈ´Š1,ÓHüì&0¾¹Ó5Ôø?Äú‡‡$º6VÑ]Er»$ŠXÉàuÚG|Xº…­¤14HÌ$ådÝ‘ÇQ]7‡µ\rYi³Aª[¼žiÜch˜	õ§º°²R÷ž†s–…×¸¶×<3öÃyf.,g1Àæ<`c“ïí\\Nµqi$æ;hHÍÆOÓµ@ÎËu7Ùu»³€F\rU–I&•å‘‹3œ–\'$ŸzªÕ¹•‘P‚ZEhNTõ:ND0äú\Z¯»i#<SFÈß7Ì9Ö¹“4e‹[Ãn¸Œ‚TûSg¹3E$`tÏjƒ\02ñœÒ·$¶0G^)ÜKAU¸Áüé\0Ši Œôõ_“5IŒ•rqþ4Ç<ã<Ó”£…Yºp@æ©\0(ÁùŽjM¬£;r)ªvŸZ”Hç¯joQ\r	òûš¨T;‡_Ò†]§ñé@GsÏ ö©9/ÇçŠBŠ\0ÏSúV’Ù³ËšB\0Â÷=©ú¦œ4«É-¼Ñ \\e¶cŸJwA©å:f€y²~ªÀ‚BUB“æ}Ð;ÔËcµ°fUlá“¸çšL\nÁpCr<ŸJ°ÿ\0»‘ãIHƒa]G\rî3N¸·0I$a·ªœƒL…IÆq·4´ÉÒR•î9âžóM4›åË1\0sÏ’8‰˜¤óŽx­[{’.$y²d1á\0=*Õ…s:5¾QÇ|Õ…;ìžµ=½ˆÌ.½3´úúTò&æ] 0qUa\\`!ÈùpsÎ;V›Üìµ¶XTI»—¾† †.8É«‚§Ò´Œu!È¥$#©?•[òËcŽEL#UQŽ\r8#\'=t¢[ÎAžõ:Â¹ÛÜÓa\'9=*ôQ‚7w÷ª°„·µÚëZö–Ç\"‹8~PH­[t\\ãæ©\nâÛÁŒÕ©qÍEkÓÒ¬ Û@\\°± v~mØÅ0sŠpb\0©ã¡ lO+Ö˜ðUÇJ04Íš\"ç‚5I™±Åh;Ù·.àjœ¤±;s’F\0¥p-[¸ÛÏZµG5™Ø0ç<V„8|A4]¡~rqV2»±œ¨5N,­[‰¿ˆz‰!¢YvŽ•cô«E¶0ãñªâLHjÎ:­4œšMûMHã{\r«´b u §ÕjÌDžqÝÆ)!w$š‡v9©Á‰€®zÓi CZl!\\“Ú¢mÊÊØÈ4ò£îžy«VöÄ®TdŸQIµFµ*Ý\'gô«‡ˆ€G=~µ;[–p›ŸLU¯³ÅåáÝ²ƒ¹¬åUX®F@£p2­\\Ü V8ãžõ[vÏ”d¯Pié?Ï¹†qYI\\¤ìK4¤a@îíšlÑ.Ð@ÛÈã×ŠV˜‚}1HÒ™F\ný*Rhm¢9F\"P6ƒÈ8›,M»Úµ„-·¡ÆsMû>î¼\nÒQ!ÆæZDAô©¼¯”bäš¿*nùÂW§¥7Vì\\ºSÀàÓL@¹ `\Z¹,Dü¤bœ°*¯Þôõ­}¥‘6(IlKzUi-ä\'9¸m˜*©e\0žUºˆïg©Ú¢5.ì;³Â>²:“ëéTdÕ­q“Î1œýk2QÖµ1ù¡Ôí\0àäõãÓó©\Zê$eKxQ][\r\'fäÕÁaºtÓª¹ìèI<ïTæ·ÝEl‹$Ø ´`aˆ<ÖšhÛ»³˜Fa”ÛÃpAÿ\0õôªxM´‘ˆùŠì2rùr;\Z“\\Ckwåºº9z·ðšÆ‘¾nH9èhl,£h ã’MQw#¿5,‡vqÒ‘â]‹’w9-•a¿1Tlýî>”²	ŽÈä\'äáA9Í\\²†\"Èì›Îð¢0XJ½7Ù§Ô%ó™Õw`—ûËQS\'eq­ìfE\0«QDXîç½‘c|nªÜ£ 0õµ<bT\\ 8ëÀ¨mZãÖú“[’«È\'æ+fÕA¼;½NãÒ±­Õ¤¸äóÔñ]%’\"`=:Ön=KO¡$\0‡Úò:©ä…4º¤ºÍó7\0Äç}\rX0ïéëQÉ²‘Œq‘ŠJ)K˜W)ˆÀ\'Ù˜Œö8Â²ïíSÞ§héZsS{V\06G=³Ue`ªxæ¯ÝÆìsY7$’GlÑp,32éîÑªl¿0ëÏ¿Jäç‰¼Æóx#‘þ¡ss4D¨séÚ²n¥gËI=Nk8Ówl§#&í<Æ-½‰µŸ4G2~•© Ü=*¤¨pqÖ¯•s0†µ§¥Ámr¬²ÜyrŽT7¿ÕNAŒðOJˆzÔJ7V\ZzÒ¥­¤{¬íÒD’0\\°pÇ!HèA&«Á¥^êPËsdò@8×ÀÁúž;V6•ªÉMÁd·\'æS÷‡ºžÕØh\ZÅ´Vq[Í4Ñ°bÉåaH\'¶OQÆpkË­\n”îã¹¼Ze=+P¶\"âîExœ±B2vòëM»û*˜ZC/•p\0Ãïc¿ãœþ5Wí†ÎK–†hŒÊ[lí€I?xÙÇJ©ý±ñBáæ[ˆdCüÃgS|Š˜ÂMó$7.Œ×—I[Ki¯ìHIcC\'8ÈõÏ¡«pëÆÆêÕ¡’-‘ª†DÀÇ¿¯¨®|_IuvóE/•º>­×®=k¢Ô¥3Ø¤ä‘åŸ,!<ôÊÓ“q²ŸR•·FOˆîÅõÜ·6Óþæ\\ì9®:\Zç^ÞHÎõÈ=A®–ïÃ¤™$”¤\nòøäÊ¹ë…1ÌSrºƒ·r{W^\Zqååƒ\"iîÆEÚ§ðy§¾Y{g¯Z=¥0± uâºÓf,sí(X}©ðÍ,r žÃ½5í<æœ€«q‘ïTÐ®M9(ë!*ÌpÞ¼ÔÌ›ˆäœÓÊ|ä1äÓÑ8Æ8¡+T^ýMtv7—i¢NhFÃ—ÁËc8ø€€äñÅYŒtNzRœ•˜)X•™¤mÃ9À…kiº0¼´31$—òð¬>CêÃñ›1ËîÕˆ<µWa’âÒú9Ë<Fc¿¸ïU¢V@%å›YÈc–0Ár›”õ÷ªq®\rtZÄ‹{ääþð`,g@î=+8Ùl¶I¿„ð}(½5	óÙRW\'=Jž4\0³c€~ð0–ðHqZQ¯Þ| Ž(z\ZˆV0ÀŒ7§Z¹å`#–ÜXdû\Z–³˜¤\0>ìï·¦*4ÉPIªŽ¨Lš#Øu5:®Ö†ïP\'©ãäU#8À4ìÅÈˆÀ#Ó­1¦þÀ«Z…»ÛAÊ7(Ü9ç<gð¬g˜3ÏJNÍ\\FBXäô\"˜ösM¹ž_ÞS×R9¤óQóÖ¤¹»»ù£ûéIMÀªÆk–¬Úz\ZÂ)î7ìöÉa$s]ym1Â–8ã±¬½>âÎËPœ({¡‚ªG¹ÏjÞ:tqA9–hˆ#¾ãƒùgëVo|‹a¾Ÿ³ÈÀ±([×Ûç¼My\nQXÅ.›t³°G•âxð¸#§\\b¼¾þ†\\)GvU äk¯Ô.ŸTµ¼ŠÑ%šåÌvÞ@Qzåî¡’=+cr	—×o8Ç×šô(VOFc(õ1äažµ?­Äš†F\0ú×]É/Z¢µ¬ó’–T#ïïÛ¥hCve³.²Å\Z¡\nQ¥Ãô¸®tLÊS€ÃžzÒÌ Eù¡™²JáúÒÔ›¡©Y\\ØZZ|ˆÖêìÏÔÈÄôâ›{z÷Vˆtèd–;P³´øÊ“×ÐV3An/0È89ÆÏ|úÔ2¼‘ïVr	\0ðÝ~µ.ÃEw™òA=ýiMÌ÷œžÀš€“»µ\0žx¤ÆX#2€Ä“Ò¯›Ú4¦g	ŒÄW<ùªæ?9¶½iZ](»Bò|˜å±“ŒV3mlR74Þx~]BÚúa4.Ãå¶\0çÓ‰áBóíû®\"Ž[(L¯ˆAp<cèk^?év‹K‹PT–`Þl‘Æ~_@}~µ‡âÍ>\rX7—$ßÍ†À’ÃÝºô¥MJMÜ$ÔQÉé÷÷¶ò”ŒÅ£m¬ª\"Xšà°RCgïAõ¥–hÓ‘)vúc\" b&}Ý¯¥\rj	›VRéMm;_FÙUÄ\"3‚Íê}ª+»ëÀ¶±ì$ž€\nÊe19U1ˆ­;SžÆàJ¬ùÛ·\nøÈô¥+ÛA¥©¹=¥µ¬klù˜ƒ»Ë|ðxÏ¾µvGR³× ƒGŠ\'s£¾8Áè[žµž×­<Ý‹Ú5i€ãw\ZÔÑ¢šÛÃ—SÙéW	$’ŽàÈª	<ƒè3\\’“QÔ«ju\'EÓô#qw¯]Åy|b)ÚÆ$ªŽÕÎA§Eªé~.Ô%—Ì»¹uHº(àrzŽß…cê×:µö‘j’ùr-Ä‚*ÅÝ˜ž•Ð[èðhšÙÓZkB;&Fbdq“Ôã§øÒ„e9Hm¦sz”º‚ix¹´eŽ!‘×ž=3\\á`øéšö?ÜÛÉ¤ˆ µ+s(`”6ƒ¸z:×2loCU†›œuCjÄÖ±4Ò´b#ºzç®,Õ)äõã­[µù®¡ÌÛ2ÀÃž	®òh—][6«²qõ•ÎØÂ’N{ûWCØÌófýÔ@‰	ÜÇ(±¦K#¼¬ò¹wq–lç\'ÞµîììÌ—sCsC„ñ»ŽµŽ»ŸÌùR>ãîö¡;–‰, \\F¬ie¢äŒœt¯RÕnl¼4l&A4öê¯‚VQ¸Þ\'ðœ\0~µÅX=¥–¡asÀ‰d`³*\rÅJ‘ócÜò>•½ã«…’ÒÙ®|Ë«í\0ÀAÔçëW¹Y/qèO‰„ö\ZâÛ²–-ëŒ•à&O<Zãd²³]M-$¹”Û‰œá€þ\";qÍ>mB[ÛV˜™¤Wt²œ’9Ç>ÜŽMdMtÎYÍ#Œ{jÊÏr®X¿òDíoi+Ïg(ä`+bÊÎýô9gˆº[‰¾Yðdé´¡¬&+xæŽ{Ãº,œÇÜúŠôý@Ñ-´¸¯.µH¤fe–;pû†îpC€)¨9h)NÇ=á¹ín­o-.f‰.\Z2±†xÉàî5Êê–rZl&›ý’{Q®M»[»xŠyYÔ\'\0sÇJ¶º±¸´6íœZ#æêã§¯OÖ³pq•Ñ¢w0¼Ì!õ¨üÌt?ZGÊÆ:Ôg“[ e0+ÍG†$â/ÊiA^€ç¥8{Ðµ\"œ\Z,G‚¸5a8¥S-Ž:š·—¬ØË†Q’à²ç­Ë;	õxŒ,EíÐ³\0@m¹äûÖMõ»YÝI¾7 •èiÌçíž§µDË‚sŠ±*ó»¶(ŽÊâx¥–8Ò ÈÀÎ2k@\"0ÈcY\násŒæ€¸qÎ=éÑÌ	Py«×im+A\"Veýêí\0)Ïü*niD\00‘ØúURA­[«XcŠDóÕäŒŒƒåpy\'>Õ’Üjqw(@{\nyãŸz|É‘š @:j`Q¨çëNN:ôb–Ob)¥²pZs°n)Ê»qÅKdÜ`\0ç¶)QœÓ°Y°8©5à1\nr)Ç¸Âžj7<úQÀu¦z`©¤ž´Ç5rÂÔÞÊ`Ž2\\)`TdñÏ>ÔÆÊ}{×Oá^\r?P·’éÜ.v1V#j¸#Ôq\\ûGåJÁŽ1Ó#¯µ#ÈerÀ(úp*á\'tKWV=OHñüö·1ØhÆÝn¢–å‰bÇÜúu5ì>ñk0\\Gsu×P°lP9ê=;×ÉqHc`àò§µtú‰\'¶Ô	þÖ¹³YÌƒ$ŒqÆ}€­½¢¨­-Ìù\\uGÖ¹¬ëÝÞõ¥w-¾Höx¨À®sÃþ,²½Ñ¡k©]FŠ’	Ø‘N>|µµ¨x§LÓlc»’Gx‚©Ž2zÖq§R2÷Jæ‹Ü§/…áh®-ãc\\F«%ÀûÍƒœbŸ¨_éZ}ŒV:„‘É,ß¸Ž5y•Äê¿æ+˜a°¾µHÃ…ºTÈÞ;tâ©Áâû!á»-eîì^ýT«Ã$CÌ$n®O­oÊÓ^Ñ“æŒßøjÌéÝÆ³+‚Wl£çsßêr6ÞÓ-|9yq­Ê\"¹ãÈMøtã=;ƒÇåZ6>4Õ5ÍVê³-ÏÚÛbI(%mÆs»\0VO‹t6Ó‹ÍDÞ^ànU?*{QXâkûIrö4„ZZœ,åD¤\'*jžhX(luªøÅer„àS‚Ø4ß­\0â€,1PxéIŸÂ¢\'©b¥€Cu¥ÉãÒœ\0ÆqšCÓŽ(OÝÆj>~´„ã½(e×š\0õÈbg·†êÓE&Öµ™f\'ûÃÒ¶SÂš-Í¼“Ih±ÎW3E,ƒr{¯lW)¡ê:¦¿*éÈ\'bûfçñô­øÖÈÞc]Ã\'Î^BU9\0¯\\\ZùZŠp~ó)XóÏhæÂåæ·‡Ê²µI—<uúV²mv\0ŸÇ­zŒî4ƒ¤	å¹˜jI1a&wç¶º\0ë\\|‘Aâ;ø§³µ[Dq¸”.3óôÏWµG–TÓô*ÙÛOq’ÙÔ›Œõ§Æ^ÎF1‡Ü>ñÆ0kböçR\Z,$E··d1(^{dŽµšÚ´²È†H‘áTÛ´‚@8ëõ¨¿5í°ÚåÑo\'Ìqûð~øî=ê§˜År{T†EÞGðúSÆC[¯3>^å‹K¶Šî9Ic´ƒòžGÒ«ÜIæÜÈÁŽ‰ääšuªl€sRù	+eFXžI;X]B+ƒe|Â9Ç¿­V»˜9\0\09#½vÚ†‰}ká{Xn¬mck—ÿ\0F€“–÷Èë\\ÒeÛÔæ¢„ãQ¹\"Ò±¹¡Mei4SÞD&[æŒ÷ª÷×1Üß3ùkeÏ˜ÀúTk¸beG?JI¥ó-ÑÇÂ}éò{üÂÜ°BºþìåONyZ¯öYá	+ÂJI„÷Ç„¸H™>}ày¤–ãÍrÛŠœç§=qM&˜­b	FN_j¹n‰@7ÞnyªèÉY2GcRJÛâ<šR»ÐØÕI÷:0FÉSŽµ ™Ê¡o›œâ­¥»MojÓ‘.¬±>àA#·µ6+¡A\\aÔãw^(M2ïmŠFÖC(Œ`1û¹8ÍN±2áä_•†?\Z}Ö£=Ñ	,¬ñ€ÐÓùÔ)]ûÆU”_ZÑ¨µb¥Y\"5°3ÞµmæÍ¢¤qƒ.Â¬¢ µŽæYÛÆdp2@\\äQ:MÞð¼k¸€ÀcÒ³’”–ÃIlU¸†T°Ç9éŠŠ5)W%I)=\r\\giîË€9¦1¶\Z{ï3-èm^6lÇ>ùÎ+Zk™Y‰èìQkY—È8<€iêŽ‡dÏ@Ü@t †VÉèAé[Úv½äˆ-5q¦Å!\"N2ØÇ_NmÍ£a)4&Ÿ<¶Þ\\×ö2^AVBÄ”Q¸¨ c§¨ÜèÚ¶¢óiVÖÚXd\r†vÛ¼Tzn÷ôª‰u*ØËŸ«++©É’Õ‰+þRGQšæ¥Ú$à\0G¡®‰Zåz£$œÎžõ®tÏµéz…œQÌ¬¬Q”ÁÈ>àcÒ§ºÓ´Æ±I\"ÔÍÅÐŽ6Ž$‡b€ye\'¹—§ø–þÆ‘]\'Yc1‘2;O¡5¥Ð˜Ço-Ü±[«NîŸ/çCœ9PÔ]õsrÝfw†ßÆÙ8÷ªÓ¬jíåœƒØÔ÷w71ÞJ·M+Ê˜<p*”¾\\ª‘\\®÷5H\\\0¨ÙvŸçÅ9·pÃ’h—W=T”€Œ’?‹žÔärÙ$æ¢#ŒàãÖ„8^*ÖÃÔŸoÊ#¯ Ð;ÓQ÷tu§ºPGCÈ>´\0ðûÞ\r/š3€1P–\0Ž‚Œ‚0Ò´H›Õ†@ôÅ*9\r¹x5kõÍhÃj	·<U¤Kœ]¾_j»\Z@H\'E\0wÿ\0\nr&G’{ÔS)Ç·4œn%!SµUr6ò=­UœO<Å¥~N	-VÂ©^XïMš1Ð>ìÈ¨µ†g&<ðÂœ0ìqZv6ÍóÄ!‰K»Ã¦~•LÁós§¿¥nøjöÒÖöXu“ì²¡Ä}ê\'++¡¤I¡é’êººÚj2”O1b?»2Ž:w­T›Góõ}Al¾X`Þø‘¹\0vÏzõH,ìµ	b{mït‘	%¸y3²\"\0}[Ž•fãÀ°êúZ¶•:Äñ¦	@Ì˜9ÜHúž+™b=û0µÑâÐ‚mÚM‡å#vf\"®C7{÷®‡Å6\ZuäðI¼qÆp¢Þ@Q›Œ½F}ë—KJqËwÛ=Q&¬cpÆsœÕ•ˆKŒ\0½Ž*¼c€¥v‘ÜV„•Ãqþ¼UÈb¥©\0Ù fŒ|Å_Œ£+ƒQ´Cq ö­yY\r‡\nCÒ•d2;Ã¨4ÆM‡&”ÆW¤ŒŠ¤ÄMÉÈä\n½£n8êŒ]ÉÇ4÷%5ªzÞíBž+B	Õ”kŽø.¡m¨¢°q“T;;yÆ@=jØ•Ms–·ñ°wJº/Ó#‹ÜVÝÞ§QÆk&qÍ[qÁ ŽØõNÂ¢óóžzUi\'ºÒÄ»Üš§#´czàzŒÒ°Œ0sŠŠâA2†Þ¹cÀ¢^e%¡f	Våw1ù—“W¬[ÃJÍÓí‚¿ïd±´¬-åm¼ 8ÉïP¤‡cYeÎbæ…*›A\n§#Ö•2Ø=pO¥Ri…š4¤f–Ô?hÁªEðjL³&Õ;ÂžqéPÊùŽàúÔCMDâd\n3’MÅ¤*„n=j¨*Aù€#µKŠ¸$Tâ!ílÎN¦y%)#=[I	ÁºPìL¥Šž1SÌÇd(°asØf®[§–¸*6õ¤·pÈA?(àSR\0ÇJæœÛÑš¨ÛTC$A·:ž£$íVà`ñW1Å1ÓŒŒæ¥Hmv!hÉÆFsÏá8ÜG¥V[qÈ4åÜ“ÅQ¯l(ô©j \0:S‹b·ZWlvH\\Òšƒ¥„ÝÄ+íL)Ï  ŒÓ¸œJ²EžqQy\\8 UÖàÔn )«R\"ÅI`7|£¦j;„Í²r0;w©Ê:äÈ¨fËÄÐ6çžõ²z¢Y™4@Ž+2xùäŽµ¯1ÂñY³€ÊsÔt®”\"“j3ÂÌ‚…epÄç‘ÐóÞ–ãÄÿ\0è«u{n•¶™‚W9ùO±ëøVmõ«²yÁÎW;»â³Ùî&-äÊÑŒ/áM¤÷\0¹•®îT¤RÉ)pÜ¶î:zŽ•— mîH}Ý:`÷·-ÄÐC,ñUŠQË¶X‚åÍg+),	,wryæ†§\Z1Ú;œf¯40Á‘¸$ö÷Z‘-œ)\\¹AÀ=~´ï!Üîà\0:TÐÑÓ´Û{«&žáåU…€ùF\n“éëXl¬ó»»f9,y&º9.®- žÆÆáT³“À8Ç§ZÅh›#Šoa$N.g¸µŽÑÛt0’ÉŸáÏZ¹§HÖ²üÛ^<=zãÞ¨Å½	`X…ÑÛS×oZÂPº±§1 gŒMæò­•V`2*Ø´1˜Á!sž¹®NH^ÚRÙàu­ëçùFÑ²WÕøÁ¨²Š\Z‹f²).|¾qÍJÑ3E·;Šöô¤v*ƒË\nÊ0[ojˆßpUrÙÇüóSÍ}…k¹CØñíeïLH	«3ÈÎC–ÉÁÃqý*Îžfq UR¸ÚA4:œ±¹\\º™¢yì>ÕŸ}j¨7nÈÆG½uÖöñÉ0  n†76J«{aqÊë˜ÝX¦í§×é\\“ÅÙÞÅ{=íîGX°»FæÞqÅdÞÚù´>î8Ùj–ÐÚÄU]d{žA†\rr“Ë|¼å]4jûEÌ¶!ÆÆ<‘œ*¤ýÇzÑ¹RÏ§õFT\'žµÓÐƒ6DÁ9æ¡<*Ü©Ïõª².2F8¤;\n¬êE^†ñ¢B¼džìk\'y8ý)7¾™¬¥”[ÍPÜ[­±Š/ä8$b µW˜”qlztI˜—Èç¾EMíà½Š•d;Ýêt:JBYã“#Ì‡å`sóg¥w°haÞ)’¾Y`ÍÜŒa¿:átØ·Þ$PÌ°Ç\"‡Ëœ€GcøŠí­µ›±;«»ÝÂ§qA¹0yãõ¯+7î4d–åy~ÚZX•üÛ­¸,ÝzõïÒ¨ÜxUÖ{w™‘PãÌAÛžçÜVTºý÷Ú3q+’9c>†®Ësw\"C,÷_º%NTäÿ\0Ö­éBtâ»“9&ÌíJÖ§alcSŒžyÏ­WºÑî­šÊ¥æEuU9àò+°Ž[]Dþþ5d‘òá~S·Ôý56«¥HöÖO:áŒûcÛ€Bq‚qÛŠÖž21|³Ñ‘(7±çÊ…IRÁÁÍ8!ï]5Æ•ÁlFP@\\üû²zZÌ{ˆ¤˜˜]\'‘÷yÇ5×\ZÐ“²fn63Õ99)È ÿ\0…L\"wÞÝq–cK\r4«Î\'Ö—/\nsNß„*;Ô¶%ÂIç=½jiŠJR9ŠÄä\0Ï¥.t	[ó \'¼‘œVì¦ëM¸’i~h€û:ËŒíŠÂ‘c4mÇ¥oØÜ5Í´pý™¤†•8\'9\'·J¡¡Â“ÚÇä†ó7<ô­>ÚÝ¦Qpìb%:gÛ5œ¬RæS63@}3Ò­(ù2Ä’ãåÇúÑf$Owl–—òGî‹¨*sÅ,lpBäÔ\nd@äœã¯¥N±m@Ì¡ÇZ´\n€œ&­ðÅ3‘ØÕ|ŽÙÅX·‘#“t8þ÷µQ\"™v($ç©ârû½¥”nŽ3UîÃ[Ï•q¼üß\'AžÕF[–DÁî03ØR¸Í}wRÝ¢‰CÆ‰€Ëß<ÕO.šÎ#…½aMsŒ€:£.¦è…CeNx5œâíd4Í‹ßˆá“\rÎ	ïZ·w¶¶éu™î[äˆ³iàcÑ»×u	dW*#fåˆéøÓï¥þÐŠ{˜ “.á#ØOÊ9í\\uáv“5‹;\r>þÕ\"o¿dÇóùÔ\Z×ˆ­g±­çYw’­ *@é»Çšá¤2ÛFmÒ&i×>puÎÌzzTSÛßMdò^KåÅ<µs×>‚¹~­+¶_;±Ðø{X’+y–ÞÉ$¸r\":wÏ×Ö©‰ËÍ|ì¡MÀxÌ\\œlW9\råÝ„öw(Xƒ¹Oþ½}¾xüæÎå.xÏãÞº½’Ræ#›KÒ:sP¾Xâ“Ì,zÓe|\nî[aŒØ#ž´¶°\'‘Q1-šBIéÖ“dØšYNâT\0\rBÙ*p9íM\'\'‡œT€ƒ¯“Ú§X” %Ô*%Xõ<2D\"u‘2[\0?÷h6¹\0ç­Ãs‚…#9éPmÚ¥G½5FzTµp=#D¼ðöŸ£Éq$V÷W»	<yž:ž˜Î=ý„Œï- Û¼kå’ý¿ùÖ*ÜªÁåì]ÙÈ~ÿ\0JhYfcºôÓ³Šò1–è;R¦ÌŸ”ã´¢6BAw§* êÅ}p+9„U²ßw>´*d€}ÆiÄ+œçô¨äH\\‚¡Ôê*FnxrÒmNò;85íDŒB´‡€Øî?JÓÔµMKG’]:æ\ZhÁÝ4nY·ñc 8¬-\'MŠñ¡Hï|¹ÞB¥qŒuÍkkþ»Ñ4é$7ÈðM(TG8yTpx¬\\îGáëûyõÈ.µ	cH­˜±¿kçúõ¯d´ð•’i³ý¡æT¸E•¤ó³“œ×ˆhl,®QõßÙùÔ#±=j[ýæž:êúmÿ\0º¶–BÊ‹éíJ­>xY2“³;íŸjFòV°–D]¬ìOËß\0+…ñí‚hþ*»µ€?’ÅdFqÛ”ú“Zv·¾\"Òl\"Õ­¥³¸3e‘ÖE2Eýï”×1­k:ž³<—WÏ$¦I8‘ÇB@kZiF6{÷3ãœ®2œõ\ršÞºÖ¯5+æ»ºóY‹!P `\0\0\'üö®uNyn½¹¦ù¸ÈÆ\0â†®4Nì%¿r?AÜÔLÑe|¤!¶\0Ù9Éõ¦$›ò¬ÜQHê„ŒÑa—ÒO1äei>âä`(:U©ÈžÙÌ˜xÐ„%rÏcXé8T<sïMiŽÌn-ÇJ\\£%[™âÇ¬±Ê»døÔàþ\"ªŒîäžœÒ†\'éLe8ôªÝ´ð¬¡®ƒ¼Cª¡Á<zÖ¯…å³7÷\rsy¹òÆó©+¿ÓjçI8ö÷©-“7ª»òx½8¾Wpjèšúé\'¸2*,~»zëøõ®‡BÓí_Cw}<nŸ¸X˜ÏlŽ„}ëY…yòQÆŒæ½¦ÛUµ·ð\\i¢Æí\'•uq‚ÎF3ÎG¶+H(Êí“&ÒÐñ]ZS=ü²ù^Xf?.1ÍR<ÕÝxÃI·[oa†øÌXÁeV3È#Ûšá`d•Šiìjµ%UÈ4ÁÃu©Â†SøSH=…1Žâ‚H#ÐÓwß(%— ¤ÀQV,Ü†1ŽETÎzpE:7(á†sšCèlA7‘#1©(A ãJvªl·Y—ØT»®{æ¨ÊàŽ{ÔóÝ%åš,pÇ\0r8$úâ²qÖä¶g$íôæµtÍZKIí“?¿RŒOL¢²¦]¬9)ÀÉ2•!VÄljš\\Ö-ÌQ&d`2:ãúU±ž0$d=FÓÔ8aõ­V{[n¤{kpV(‰ásEš\\Å¡¥hâ\0;FN„tüFjÛ:“igS¹KICùŽÁ#†O9úT>-Ñ Ðuéì-î¾Ógå“ü¸­¯kzv—¯É¨_£É.Ü ëÔüÇžø­o‹6¦çUQ´´™läˆr>VÏñ­e©ù\Z-1ÎáïRF\nž¸\'µF¬AÀ¥î;šØObGå¸<ýi¬ãM<°\"«°$’:gˆu§_o\'¥CÏ>Ô¨Áˆ\rMaNèÇ=j#òZyM mÍ:4TË““éY€Â¤¨ùp)¸ºR—g“Mc·çT€c`ŠšÊéínÒuä¡É£CíP’;Ówc4\\wRG;—A‚Ç$€ú\nªN>ÔÜžÕÖxÃW\Zî¥çÛÛÁt–d<Ö÷µe™õ5q\\ÎÁ\'es—Âï\nBúÒÅ3A\"È¸Ü@#\"´uë™N©$R@–â*°§!zVYY%M§fpHUN’°-UÍëj]$êÑ™#Ë(0œõÐOãù.´8l.Zg™sæÈíÿ\0Ý v+Ú¸\0T`{šTW•ö¨Éª…yÃb\\\"÷;[ßÛ.ýÔÌí¿Ë*zäõ5Ê?™€º‘Ž60\"¦†Ú0¶öˆŸ|™täÁþ/o¥jëÞê7í¨Mo,Ö9òReÉC´`\0ÝúPã)êÂéh^ÓmoVh®ü+\rëácq$Š6dŸn‡¥K¦i:¥óÆDK5ÝÄ¢üÖä7°éùÓ´-U4ÿ\0ÞX-ÔñÏ,û–,á—\0»ß¦+¹Óõ?›+_´jZœ£ix¶mQ\"÷oÑìc;6K›ŽˆóOÂº®œó‹‹rDgl›N@úW/<FYj÷KÅþ\ZÇoü6èãóáašñR$?hòÊ£=ñSR1Œ¬™qmîd\ZN´tëGáPX\rL¬~µ{zSãp­“Ò“aFV£-ùŠi—\0ã½\'­M„š\0(ïOESœÐ4u>Öd°Ûò˜Äd’ñp[ØúVÖ«q¡xŠa	¼µ—žaÎWû¤úŽ•Ê¨žÊñ—`-*À€Ã=§¬ëGT°²µ[8£é´´Iƒ!õ5ãN’”Ö—Oqrö«M«xãÄM4vnò9Û\r´C;°Ñø*W/ôAošâ\'VyÜ*	Ç×ŠåôK¹´Ëø®lum%9Vp9NÇŽâº}.å<7âŸ0]5ÔN¡¤›ÉÃsÔ€O?àj«K–Ÿ³†š§r¬Ö‘Øø~#)72ÜeÕ”*ùõúÖh×‘YKzÖòÇj¤¨\' \'Ö»WZÐc¿ÖV^t\n~mùÂäÿ\0ÏØ×3sªBon>Ê²\r:Y7%»¶ŸR3Ú¹¨T©m…&bÅck*Ã$.Îá›ÍYWj9>üÕ;ß&[™eŠlŒÙH²HÐ\ZëWZ<:tß³*\\Gv&.(ëŒ`÷ü«\nKI¯d‘ü¶(¤–Ú:jîŒýâo©m÷ÙÕpNTgš™îÖ;ˆÚÑóäw§I$ÖêÖÑc-\nŒšbiÁØ«¿Ç*›Oq=/x’û^Š»œ,`F£jŽ>ö:dÓ|5¡_ÜÛ\\j#K7ª6˜áco\\úŠÀ¾‘\\ ˆžÌï]?…‰nìgÒô—‘í¦QæÀ:G>£žâ‰Sp£jvE\\†ûGK†Yb_³£&rÇr³¸ÇJçpW(Ç=1]¦³¬i°6yQywˆö†hóü!ºâ²´}ë\ZºB·Ç!##»ó¬èÕq‹sz\nêö9×#$ž˜ Psë^‹©|<·²[™îïÖÓÊC$AÀo;¸üâ¸FFŽFz\Zè¥^6+qˆ	%oZ”³ÍjV;rÌ­“\"ç8ô5ƒÝÀíKíÍ™a¥Aêhâ÷BI_Q°RÁÚ?„Õ²Å‡Ê¸Þ›\nµÓM,ŒwqÞ§Ž\0-Õ™²`ŠÎrW•Šm F*A+ê)af|(?<@ÊNÜ\'ŠšÖÈ.	H‰9eäÂ´š£áûu¸Ö-íÞøØùÌn:cÀÏµvZ?„¢½Ö$Óµ]MÍ›;\'™Þ«ØýFy®˜ÍÌ[Á1©±ÆEtð–ýƒVux¡¿‚(ÄpJöŽTäçœ\ZîÂJŸ\'¾sÏ™½sQ²M:åâŠê;˜$££d¯$`ú:{Õ£à±íŒúÕ«ëË[‡›È·t~S#ä­e¾änœuÍsÕŠs÷M¢µ$”¨8AÇ­4>PzÓÃà1Ú=i€€ÜÔ¥b¬LŒsÔãÒ•Á\'n0V˜£IçÚœdrß*œý(»ØvD°ª…,Á‹*k)^ÖQp‹Œ¹$MÀþë;‰Â:Eg*w2Bãš†~ÐÙôÇ­L[¸4¶5Ì÷“	&•ä~„¹$ãêhŽHÎåeÁìsÒ´¬´Ë‹‹•,¾W8S ÀcW<S¤Ic}\ZÜÅÍ,(ä@¸\nOcïŠoÌ9lŒ‹•QmÆŽOÁCïõª&29êÆqÖ¶¦ðüÖA=ÄÉ€cœý7/QYW\nÉq$bE‘Uˆ½¸¡I=„ÑdcÐR+g Ó÷cƒÅ5‡ Ž¾µ`)*i<Æ	ƒÏ4ê3Þ˜ÜŸZhh‘\\Ùö¥^ÅD8Î:ÕˆWŒœf­h4-­fh·ˆÉF8ÝŽ«Ž71GlÒ[O,–F1#S¹@ÐçÒ–„Ç×Þ©2®š^¡-£Ü-œÆÀg`¼(#ƒô«v¾k­\"æü]\"Ë\n†ž¬;þ5Ô‹#ZèdÚQ°=µzÄZ†“F¹’Æ8¦¸…Ð±’V!O<ŠÆ­nM’[ž9k£I9†EF•dr»–Ï\\T²èwj’ŸÍq½P!\0/<ëÓŠïô4¹uö¶*°Î­€F*«)lg¯=k\\2øRÑ4øôç¿žá†É6~ï0@?)ã¨¬*W•ö4IXñ(í.d·ie/‚vç¶j\'ž(N ÆáÎüší|}o=íµÅœik4°/ÚCh	º×‘°V’A¼7Oj¸^i6Ggámtˆ ’8KÜ|Ù™óÆz}0kRïÇ:ÕÌÿ\0`ŒZ¤Ìå8Úã¥pö²íRºãôû…xFÈ¦\0çïÁªt!-ldÛ.êÚ‚êš›»¬q±!d\'Î$ýMSµ·\r±ÙJ3\0«Ôzæ«XY]Ý$Â+f!Ý#ö\0âµ µ0µ»3¸à„<¯×5ÓN)h&ô,­¸ÁìîX`ƒOPã€xŸzµ$ÉžcG¹GÏ=*wWsžæº¡.Í1³$dÒ´+œîŒÒDê©øÔS>ä<ñZ½J±$ƒ\'éMx€:\n¡Ó¬ • yzRZ‰‰kõ4Ë…ÌdƒÒ¦?»l©¨gpŽ:Õ& Ï84Éˆ* ŸB)ž`%Æ1N@ËÏZ/rº¶¾šÜò;æ´¢Ô‹üÁ¾£5‘;±Nš‚3$ljiƒWGwa¨üÇŠÕŠówšà­µÝÖº]*å\ZBòËåì\\ƒêÝ©É¤‰HéF…˜ƒw¿Z­,ƒ‚psÓN[àÑœ»ý}j¸YJ¾p9ã5	–å¼ˆš!´.1žµRèã•šHØ®0\nöª³Ï¸­TYÚ7Ž=ù©’ºlê´xÞùÈ°½2OOjéÄ“@É\0‰Ä1¿ÜH®ÞgC!1ÆàüÄ`q]†£+Û3Kyó»¨Ìù“ò6VgFó$V\\3zô¨%’2G”IÈæ©\\3]*Hœ\00Z¥µ;Â±Â…âµ‚I\\™>…Ûwt#gSßÒ–bcr3ôâ•]£F)ƒ•ãÚ®[Ÿ´[þù71»7mD’fròju…e·üÃµ/’\"r„ƒïSy8_”äU¹\"PÔMª\nÉ‚O#Ò¥CyÇqÍF«ÍYŒÒ¢Lcà>[©\'ƒÖ®oåz\Z¦¤“êißw¡ïÒ±’»-JÅ0ŒŽæ—{då¹ö¦Ê†ÏÒdœTYÙ*¶}sëJª³šr \0zÑ÷:TúnãˆÈ¨¶üý*@zúÐ=i-«ÛŠ\\t§\ZLÑp²ÜóJNxƒõ ÖÆ*=jvÆqíëU˜g‘Ðœ\n¸™Èk9úTwòÊŒœÿ\0õªB0B¶9¨çB¸SéÚ´V¹&LÀ*8aIc¸fPJ§Ê*Ôñ`š‚+f•\\\n2õ×UÕ‰9Ébc(Epœýæè3ëRiˆðÇ}lîàÊ££càzÙ—K‰¢d†g-, #‚|Ó¢Ò\ZÞÖxncY£Ý¿åê§síÅqˆ¹…™üØ`‘cP	Þw{òj4ŒÏr¸ooN‚ºÛÍš?2Ú\'HÊÏ¸?Gÿ\0^³Ô$ë¶&Þ¡CgÔuªº{§‹Äíç¡P¸%IÁ ô\"•!b:pMlw\'|£jÈ»†õã# ¢Ð PãŒf¥#<[£’W$¶ÇNõ·ä~•«;eV0\0éÆj»(ÜÏk~ ¶9G\'¦*úFàæ™tª®U3Àêj_a¥Ôª Ú¥Ø\0d“Ú¥¶%!ibl¦ñ¹Gz¹§XKª	\n¯–„–byÕIi3Gs/–a×?Åé\\’©gêiÐ´·20!K¬NÙ µ\"\n.3¿vA=ý*³‹„U<€I<T‰*¼X`r£­;­ÉHÐiZIƒ»!|ïßŸ”ñÓëWÒé9Fq²ÃÏJÉGKu‘%mËØŽEA\rõªÝ–Ÿ,@¸=ë	Eµäjµ:RòË´Xtä¨î\rs‹}tnfJJlÆ\'?Ð×PãOdìà¸oáç­bjRKexUÀ.Þ£ú×56œœl[V2®ãóàYÄ¥[œcv~•IÕßÌW·Ü¬¥¨þU«1Dxe·hÝÊ`Ê:÷™s2Gþ˜!UÝ•D íÝíìkH·´8ÛøZc.\'‚zçüŠÉ”É1Æ+¤Õ²Fñ’ÈCÜŒô¬ÉÜÄœãèR•ãsž[™³É-ÐöNèB#O,6ì|Äš¹ylßf3òpë.@Ãï8ëMÉ6b2§¨˜ýºPç<)8QœI•pp0=E&\"H˜–IàNRÇ“È¨àž85*O·¥+Ð²»’*3†=~•¹á·…–Úâ]„*ŽØîsŽ¼Ö6›Ý\\Çm\Zòœ!\'5«véóF°¬q–qŽ+)¤åbã¢ðK$â%q!‘íœZ––‹4p³ŒG‚6©Á$\nÏ¶¹Ù:Êv–É%sŠÝ´{Y­c] ›{:œ`ýk\Z’qE$]Ð,ãgÝ3\"³*ONÕÐêÌ±ÛùNU€%•w–;ûYö\Z~ëa-­ÑÄ‹`žFzÕ›a,ÎóÏzé1l£ªc¥yU¤¥;ö: ’CmôèäHuf¸hÕIX£9b{ž¾•™}¬Ü]JƒìçCr§œQZš¤ÄYGoi3T>‚yý9®v[Ù­n>Ð	œ¡VéœrkZ\nR|É‘;\\~Í\rÔÑ,¨Bd`=þ•UlUÂÊ¨8#y9ÃÎi\Zå#eüó‘‚¼žH“mRS¬²n~z7’F:J¶Ò«Ë-ÇïAF>÷¹…g ÞX‘Àêjží<ÀÒ7ä³qÔÔVØŠA»\'Œ¼óŽ+zoBYm¥ŠY7$[0cÎ@ú\Z³cssfÌ±Ë$a¾ðVÆáèjG·Š\r<=Â¹ˆá¸lòáše£K3eúž•¤^„µ©n7:LËÈl•dUØSÍ%™‚\088ý*œH¡1ÎñÐUÈÌŠ¤84Ókx]²Tc\0Ôí+H˜l\09\0\n’Àå†W€y÷¢ñq,‚#•ÎN\0QûÖZ˜•8 ‚)Á› Ù.X\0=3ŽNjBÃwÌ½x=kFô‹ñˆÌÌòÑ¦O\\f³oîbË€6Ÿº¹Î=[²ròí,¼Êw.q’+›Õ%6ó¼DƒÎr;W:•çbí¡\rÍØ.ÛsŽÙªE6‚®Ç8ì}êÕ„qÜÎ`Ë†9áyäûqWt½:3©ÝXÝ)òFQ‚sÁÏášUq\n7òbA¤Å$Ó:4I!‰yÙóuéšÑ´žXmïvÈí¾@ª>R íõô¦&Œš^°¶o$Œf;”•ù\0<`VõÝªÁ¨ ‚Õ\'·œc.r¨?3^^\"º~ŒèŒFÏ¦Å%ì÷2nT)v†Èà6~œû\ZçüXÚmŸ˜ÐÌÑƒä©ÞÏéŒÔzæ¥yo9²PåN¤0ãÓü+‘fkyaî!·rsžiáè·i6’ÙÕÞ†K_0[6†nO¹ÿ\0\n½¥5Þ¡hÖæ}°ÆÙ]ý2{ScÓÖïO»ºœ<{>hÞ“ÊçØsPiw3Z²Û¥àH¤l”dÜ„ãŒ÷ïŽ+µÉ8Ùt2Ù•uûx¬µy vª¢dnÝóÁúÖK±-íëWõéÞM@³˜ÉÚ\01ž:Vjò¼×E7î¢^àz“IÛ®\r5‰Ïj;ÕnGQG{Ô‰1Å1œ\ZÔÓ¦·Žò™7ªÿ\0{‘Ÿð¥\'dR³ÙHLŠÈHÈÈê)‹jEÂ§¾+zæµ9þÝ$‘yJØ>XÂ Ï¥iÃ£É\"Çys´£ýÇ¨Øý+žUÔw4P¹ÍÜiÍÛ³g0+¢²ðµç† ÔÖg4Û<g#\'§å]¶cy¢ÃlªZv?+²ð¤õ?¦kmü),–¬w6±ÌLmÀzñîy®eŠu.£¹|–ÜÏÖü/ck¦E<wq	#”Ã\"ïVç±®Už{=Ñì1¾Aä`¥t’]X;‰òÜ¹£yíŠ¹Ë˜é‘G‹5ø.­ÖÞÚ8…¹ùbÕ€3×é%x&÷9ÛÖÈåÐù®K{äõ«gF†Cáwdº*€óª ùˆÍ]†ÊêH¦ò\"‘ž5Äïõ¬eæis2Fwl1éÅ(&<à6{æ®M	Š0\n2:®R~ªf¸¶ŠÜÂÖù•ˆ&MØãéEÇbÕ¦œêñÊO–²FüsÇ¥uÞ´Oê²\rFæaŒX°ÔFI ö=+”Ð­gÖ¼Ckf¿vVÙ…ãŽàzqšôŸÜ\\èzÅ†¨Z†žÙY!H†NÆ$«±˜Á£–îè•.†¡e¬øZñÒ[„‚;µh×aÈÈík¹[=/QÅôIzáôGùwãæ{\ZôßIeÔhÙsy$ÀÈ‘\r»”/çÜ+Ë<E¦‹-FU‰íÎ‘‡r*%{»˜²ÊZBGÉ’H ö¤iœD#ÅÎÜñŸZŽBK\0{qÀ¦3»ÓÚ®È‡SÃ}é•±€8ôÍDæ8õ§2å\0\rœõÍ&RT\rª@ÝÉ¨™5&3Æ9©£G¹vÜAÂ€XŽ:Qrˆ02~¼RÈ=¸©5É8ù³Q–oõƒ\'hü©&2ËŒUÃj²ÛoÜ¡‘~eÎ8þµáy\0dóS$>b6×Á\0’oZM‚(IB1œz‘SÛE*ÌŒƒæŒÕÙm.g1Å2H@$a}9?•u\Z6öeþÒCÍ­¨/uÆä*9\0ô=F=kÕQE$gYÙ½’<óÿ\0«‘°é·¿çÍoGã¹Î‡k¼I\Z’•É1aÏãŠæ/µ‹Ù¤/ÚÎ[,:/@>‚²b’KyÝWX`Štç>]A¤Í;›é5	T]Üqƒ»pã=¸®nÉOCÐÖ¬»_d¯¤e°åGÿ\0¯Qêvl–ñ]®]Oê¸P?‡ñëùV”ÕÖƒº¹œ‡nE.ÒMG‘¸qRg# ª˜Á”cžM+r¾ôÑ‚NM&ºvàÐÀÅ5Aµ\"±Î;TŒ¶%&\0È#ñ¦òLƒÞ¢ß°|§åíS3íŽŒ(°¬Cæe?xt­Y¯§¿ÞX*IÞÏ©ïYS)\0u«QN\"u“ƒŒ­Ò†É&’`Œ®«’0Nz\Z¹ªëí©GmC¶Sj¦à9#’HÔÞë:>½§Gooao‚Ý3¯ôÀëÎF}ë¶Ó&»ºòí`{‚ÍµDjOÌ{T+Iì±TKöi\"’ó©ÎEzo‡t[Ÿè\rss¬Ml«‰Õz/\'^+Ë®VX$h¥Œ©SŒzV¦«ˆ!»ß5 #0™WëÅ‹Žã¾†fµ§ej³Úy©*Fä,ˆr®=AªLÀ®W§­}â¯\0i^#ðL:–•Û«{`Ð•<:¼uöï_?Ès8#½T*)­¡nÈÍ’2x d6Ü\nI\0‚}êÑ\"I´\0G<Ôjà·LR0Çz2¤ƒ’)°%i‰ÀQøÓ†ÜœÔŠ|õ»$óQ`C•Üúâ•úç­4G<Rr;Ó\0ù±Ï4:Ži¤’8ëF}éØÉÁëÒŸ\rÕÅ±&	åˆž¾[•þUÆN)­Mh\0Ò39g%‰<’rMZGfQ»l\';AàŸZ¨8®ëÂ¿%×´×»“T‹O™Že?s»ØsWÊoBdÒZœÔÖ\"1û©<Ð\0ÜÀcö¨¢&a\"Ý#\Zì5-\Z}\ZâÎÚ‡P17˜Ï\0Þ&ÚÝAãµu~&Ð¡ÖRI­´#m¨H©$Î’+G\Zž­ÁãŸj×êìŽsŸÐ41oyfl•o¦ÔbÇçÛ|ŠÌ¿?_â\\ðkÒo<3£i:EÖ™u,*YÆrFxÉçÒ±|iâ=8Ã<6‚ý`ÌP‡ (uÏQ]¯§qm·h\rÉ24ÈŽN9ÂûŽ¹®ŠW¿c9w<ØiÚ ‘!k‰\'‰‚ÀŠù`:“Œr\0¨|Qn,Ò\r:?5åvóÈ›Y³Œ|½½+¥Ö5Ôð¿Œ¢»‚áìÄèr#C„=Âÿ\0Iâ«ý_·IWQ¶šf•#¡,GãÒµTÒo˜›½-»´‡L½nCÌ„‡1òô«È¶wÖ“I6çp ÜvÄ	ëïÜWKâ(<1aaee¥:\\]ÄGÚ¥Xùõëß®:W)o—wl-\"~Ùã_AÎkËÄAEÜé†§;pÜºÄwFàã­VÍ_½W‘˜7sÆ*‡CR¶(NÔ:ÒõÍP19çµKæqœ\Z‹æ¥p“Ö“àÙÖŒŸL})­FØe*}Å#@ŽÏÅö×ZN§$r[ClÄ¢&È+ëTtK‹ËVð Í¿ÌNãñ¨¼g®¦³â9®mdwµPÌOÊ>µ-–¢“i“Éqr¨À¢¤`\rÍü«È£FŒ\\–¥¥ØÒÖ50Ûyšu’G+Å¶GÆI$ç\'=ê§‡`ºÔîc…O˜q˜ÒF\0zdô§³¿†$¶Hme‰ß÷›£ËúõëŠÉ†þ;†[	•²IiSž™Ï4¡&Óº½ÙÚxºxÖ!£J³¨“zÜ?Eû¿tðzõï^~²ZÃÛÊŒWw,¼0úƒ^ÿ\0	\"êÚ%Ýž¥/Øî\n¬¥‚oyd«dž2z×­K¤Üé«,)ÿ\0ÃK ÊúñŽÿ\0ZŠ3ÕÅ —+FDO\nI¶PJ0áÇ$\\WY—úG‡Zð´wzdíå……À9œuW\rlÁÉÜÛHéR3ÍI[¨ƒ]Ž”’2k±nmHJ“ ´‰|ÂsËƒØÔÒk_jTicHÚ(„H\"P©oSY*CHÜ;TS1X,Qìâô)2H¤·}MáÀ\\Tà‘žq^Ëeg£_iV×^°ÔÒæ)S|…×w^xÈ\'ð¯¹Üzæ·´Ïê\Z\\>]›ˆ\\:¿˜œ7Òž*5%IB›–·:¯Ú7ˆ<@MÓîÆ¯)c42:@@ê|\Zç,¦–ÒúH~Í—1mq»¡ãÖ¢ºÖ/¯õéu…ó\"Ûq{rFÒ}\rjÙè:ôI}§iw“2œÎò¯Áçùõ5Ê éÁ)¿ør¹o©RòÁ–Iþ²O·z	åoaŽ•Ž¯ÑìêTÌzð½ï‹Ë·»Û\0Úös&Ñ;$ŸJæeÒ#ÓãÛ¨ZIiq‚î|6½iR­Yî+Øå¥ÞŽvsÅDª[;—v5·y§N—’½šO$1|áÊr«×\'U4…¥,þb“Ë6ãŒ×ljh	õÄì«ô!6ûïëÍJð@ÐDVFäïã ªÉwŒ¯BN2=©(©;»­Iã“gËßµÊ—þ?Z€1Ç=ùÙnd” vb#]ƒ\' ôýkU­Åkå’5…]%ÌÌHt)ÓÓ½@É+.æÈÈ\'Š[{¨â4&áÜô÷Ùå’EË6FxÉæª)!41bi˜\0@cØ÷©ç³6ÐºÏý»ƒîzA—»0H ŽÂ¬–¾Ô¢\"yÒ8IÚ3ÛÚ©§mb°aÁ´-,Vk`ñº´Å¶ˆB’ß_J±¥ÛÝ=ð‘à\"ûÑÉÀ#¥Gyiqú\\q²Dçåd.{€j\\úÈR¯˜”7*N3ŽÕ¡¥¥²Í,“¼@!UÁ q×Žj¡e¸< ˜%ƒr*iËÝƒu(\0ð¬U@Éô©w\'Q²Þ4RH!PeÚTsòžÙ¨\"Ë!	ÇSéQìy»3}jî•\"Á}w_ñéæ™	8 }*”lRGE¿eö!i­ÚÌ%‡a…­Ÿhë¹zGz§}­Új6Vñ­’Á4$ƒ2±&AÛp<dzŠ¯â»k½AþÆckX†\"t‡a óƒëŽ™5• m\'¥\'ÊåÛFæhš$û óPE“Á@ËééJ6DœcAòÃ\ZM[bw*LPH@ÁçÓ¥0’:U¦UbN*¬ïuä`t>õiè\"›’vŽ”¦3°ŽzR<8 £gŒŸjTu$r:\Z»Œ±ýŸ(´{•‰šÚ6Óòîì*tm\\\\Ô‡QœÙ½šÊßfvcÏ½qU\"Ì>n)­Aš:tí A?w=jÑbf9ùY[œqYÛB°(OãV‘åó6Ê;`óÜVˆÍ%–°ª6_Â.-Û<t*Ý7ëŠØÒ¼C£¤’éån!Óæ¹¬ZÏQë\\µ´‰±x•Ø©wAïU¼†IéÏJŠ””‡{f½8]IÄ.¬\"lG4@þ÷!³ëÍO‰<CÖ·<qÃ»ÉgùÁCùV-±>J«¶@çµXŒ¯’èKpŒô<uúÐ©&¬Éæ*ë·zÞ¨..ÝZâBhƒ—­+*9#qWîJmÀYæYB\0ÀÇë[²Ícs¤¤0Æ\ZuÚ\nž¾§­99RHŒxl§hDÇý_ñqÐÓŒ´M,›‰€Jì¼9¥ÛO$b)¸\'l‰62G^sI®x&Cc&£¦Ío%’’6¤™<{ÿ\0JÍÔŒ]˜4ísÓ.|‚ci$ÊÙp§ƒèq]Ùé0Ì©n¦NIFù·2F}¿ZåÐ,—	ŒÐ“A»hc‘‘ƒÞ´K[“º4d¸$í-ÐS p[9ç©¬qv	µhÛJ£©÷ÍuFh\ZhÑ7~`ÖŸ4£ \rcµÀW8\'éSEr8zUÝ12Á6R¼úÖŒE˜:úÖk²´€†íWmŸ÷ªÀ<\Zi’ÑjVf\nqÉô¨œ‚BœüÇµ[™Ñ®XÇ÷ÀúSá¶i\\Ü`ª§V¡ìZ˜W–å!ÏË¹ÏÓëP¸’Ý¼§Èð­;•†k©\ZIBÄ§hf=­dßL­(pÙT/õ¬ÖŒÕÇBduo”ž½é’°U\"¨­†š÷[‡_ÂµæDXãÈ“xìzV¥¶©½GÏÉ¬g„´EÏ–ÑÁ\nŽaµduqê!äTyÅ©¡º/ÔœJÀ±(·?é´ŠFükfÖ\'%ŒxÚ:î4)’Ö…åÜyÛÞ‰´‰”àô=3ïP¤¬¬Cü§¦+[N>™leXã+¸3Œ€}½é·¥É¶¢E#¬+hQ÷^OÒ»-\Zs,O{cB¸QŒ€O\\ÖdÐZÍalèñ‰¡M®Š>÷<\Z}¼ÏmèxëXòûHšFV6mÌÑfãÉß‚Bñš¿¨/æ¢”Þ1±@Ï?^ÕÝç‘°’±»d¶Þõ¥Émt¬Ü}jN2Cºe‰ 6²ùlÜÏb+’ƒj€Ê}j­Ày%Y;œsOX¤\0¤œgJÑ$Ö¤lÉ×ç“q­L–x;–£ede$ç#‘Ò®Û$RBÊH\'¸¨œ¬®4®ìFª§×å=Å…vý)Çt&r§¦}*Us\"…=z‹½Çn„+ÇCÖ¥?*€ÜNâ¥Ke={Ô¶OCPæ®R‹\"ÀHÁƒÎ(±íÏjwÜO\"•WqT(\nLšERâ Ó ÜÐOçKÓ9¦0\\g8¦‰zÎ~´©¨x§Z;“ëL“#8©0zÔnw|¸¦·%èˆ‹l~œÇ÷x7Ç\0ò3éOWà¨zb©’¼Ê.¼~ñ<`ÓL„.Ö\0ÅYš%]\0$T\"í^íÔÖ±i’ÕˆYC©¤·DHØÈØŒ°cš~Þ1ODdE|ü¥þcŽŸãVÞ–\'È’Åå1ÇÞ†x‡·Z–XCM¹ðo\'=ýiD29fjãŸ©©dž$S¹—§L×;næÉ+ÚŒ,4õŒ6_9Âp<þ¬[xD—&BÌ ‡ÏpGjÖ¸hg(ñ¹\\.ªŸ\nÞjI’£#Ÿa]Tô™”ž¤nwÃ\ZH@pù+Ž¸ªs–Ïn•{ÌTCÈ·õªR‚@«D…rŒ‡/ÍFã\"¬ºŽ TÀæ˜Été<›°À\0<¦+>éœ»;’Njt}»³ÐÕYÛrþµµ¹§KYk“ØC$+ƒòžÄÖmåßÚa/4ŒdS…\\vúÓÍ«”Yb68\rPµ¾eÚÙÙœ—²§w%¸µØ«6«s4Ñ³HU\"*ç±9#ó«Í|æÊ2Ä(YÁî;U›1²Œ;â¢j8Y7mã¥)A[Ýìõ7m´›¹cmóù_(uR2H#9â‹]\"êyäF•HÎH~>Ÿ\\Ò\'’Sž\nHÁ[Ê—*÷_qÍ[¶Xíåo´…vŠ`ŽÍÇ—Ïä`u®)W¨®‘¥‘ZîmbÀ,HÛ1•²¤b¨ÞÞ\\ê™BÎ¿ÄÎ+£Õ ’æø²ì[\0Š|âà+AïUí¬3+G\"@™*AãƒõâŠx˜ò§%¨ÚoC»Õ€F¶¡°:íæ ½¹Ô•c’â	ß~í¡p2==+«¼’Ê­bºA.X69ã·ê)ð¬²Ù¢»¦èåÜ­Ÿ•‡`GùéY}kª‰j7Òç™ß^ä$ü£$Š©n²\\_%¼¬¾iŽq^?‡tíBÞâÛkr~xä a@ÏCÜg5ÇK¨Àã»³ÿ\0Jv-Ü\'Ë\nÃ¹äÖÐÅª‰ÆR>W©CRðýíÃ@L$÷wŸë\\ö¡o$R.èÐ–ÀlL~•ÐÉ<×…æ¹É)!ú€sÔþ­RhiGž|9ÇÒ®Ëâ·C”`ÌäãÐv¦m ƒŠéu=1#¹	mg~1õ¨L@˜®ò[Ùpk_j‰åf\0üjx¸ÁÅ!V*\0#8¦†,œïéZô$·ïÚ0:ŒÕ¨dòâË®äÏ\rÜJ  Få?‹¦sSÆê«ó\0ÀvÎ)8õ\Ze¥˜2í,}y«Ÿhœ¨\'”_»žqT¢û8O˜>ý¼c¦jA).ÅGËØÒŽTÂç[oâi\r’D‘ h×b²ðH÷8ÔnM¹™$Ryõí\\‚H¡ƒ/ àÕä—cg€z™ô®ia ¶E*ŒØ÷×°dœ•ˆ:èqøV{ÎÇoîÈ$…bG«/uo=Š,æ9”\róá°xíÚ±^ây$À“r–?Ã“UNŠW²°œ‹×¹²˜ARxÅB—+u#ÿ\0\nŽ8©Úm2Fqˆb Ž;ú{Ö0sƒe½j”SL±Ð\\[›˜v\"¹Ñ•rTz\ZÍ¶š_+c´¾àÕ»+ÖudwÂ’U°Hô©-fûen yÐ\nœî`qúÔÒææåcv#t›Ì++uê3*Ý›\")º‚*	eóeg\0†o¼sÔ÷§Û¯95µˆ¾¦œ	µÄ*’@lb´D¤¶;ëéYÖq½Ì¢1Ó¯ÿ\0Zº­;GŠæÍ%óJüÿ\0.xÇàk*³TõeÅ\\¡jŒ·\n’|¹l§k„Z¢‚»d|«¦?J¿yj¶L²JâIÀÈ8ÇõÏkW²\\\\çåÈÇ§jˆOži­«#<H^N	ã“ŽÔ’\\FÎé  œa½*2ïj#žyÎ1ƒýk6÷P–âg¸¹9‘Û,Àc5Ó)ßb±½i%¼wñ%Áed²;\0r~¼UÍ[HŽýg¼•]™™0\0ÚFFN\0öÁüë•Žàß´p±bêY}ÎF	õÕ×¦¯qehm®Òæd‘KùèUqæ+ÉÅJq’”^§E4š9=H•5ï)¶ù`ÁÏÞB?ÖµuÛ{[	Y­n	“nÁÊÓÁê¼³]#ª•ªž§¸ü1I§i«w,sŸ2I·Ê8ÁŒÖ3­Í.vÊQV²)jš”…í.$¸ÍèŒ*ºœ\0Ž;]7…ut½Kˆ!\"Ú˜îbO=3XGD˜j×3:\nêŠp3œžõFí#´Ö\"–ÞY£’GŽ\n*çŒ’?ýUSTêAE®ÍV\rcª\\iº¼‘¤#/Ì‘¾ÞÊÒ©®ƒm©i2\\´q2™1yûQ‘Ó¾µ²5M{R´©iU<¤aÊ¶;ŽÜÔðØÜiš~«·°qîqœÓŸZM¨Á>k0O]Œj0Ã¦Úé°¹óá@¯ê{ö¬]e½†+‰Öß•‘×;O¿±§ÞYŽÒêfl¸FõSêEh¼¶zMý¬’X}ª)`VØ÷ÏzëMF£«d½]Ù‰â—Ž[¸Š6öPC°ç·¯€Äþ½mø–î;ûÖ¹‡`„áU¸ŒV	Éï]t/ìÕÌå¸¡‰”~¹¦àzÓ³‚+dˆ$ò°ªÁ\'Óµ_°¶º–™bç˜ãš¢œ}\r^³‡Í¥‘F2ò¢[Ü‘§’$tY‰,Çv\rnh×ª÷±ÌnbG‰3²e$6;qÜ×8~C€¨ïC1WÝÞ²(Ù”¦Ó=^ÞêÕ³2»GvÌdxcÈXò0>¹í\\^¿®BìöÊ‘­ƒòò0xÁ®nKË¤,Òc;°õL»Cwîz×5<\Z„®Ùr«Ì‹§V¸Œ¹…V6nŒ£•°5.—\rˆ’é¡Içe\\¨ÈëõëY$žI¥I7ewdqÏCë]éÛC;¥Ë,…€“À®›BÖo­mÕíÎ7£p=?:ç-Äaw§iåIÆjÜ7)’e‹åÉÚ§ž+\n±º±¤ŽŠâòµ¸Ä.ü”®Jãú\Zåî—|Û¶…@»²!xRé|ëxÜHÐËŒ¯n*Ö”ºN»¬½Þ³u•«3²F€eq÷Gû½©RŽ–bœµ¹/„ì$³¹ƒWŸt:p•£(Apàgåý3ï^–›q Ç­XÉ\ZëûåI0CIód£÷ Ž¿qZgŠ4«XÅ·Ùá++F	Ç8Ï|óVÆík(‚x[tdîE+Éäzãô­¦Ô,‘š»we_ëZ]ÛZÞZ RI6ÜBËóÆTsÐ©Ïò®VóWŠæÍÌûšiX—AÂŸCøsŠ¡«êêåÜ‚çyÄ§‚rsÏò¬ÉnLÄ³“Þ±œTÝÊZ\"¼ÁCîöÍC¹’Èõ¢FÉ9ëLÉ\"3ªðƒ-Uk„Þ##Ž*H•¦8QQ(ËƒŠ™IŒœpGJ–1ì6¾ÜôqLË&vçÞ¬«#s#cð¨Y6“ódTÜh°Ó¥Ê™O\n~eãŸO¥Ré¸ZrH¹.¡ãh8¨†Jg¾iˆme âµ,]˜„\nd îQØüUÕ8÷tô5Öøf;K˜ïg,b\rµö®âŒ©>Æ³¨ì€Ì¾Öî¡¸-î	91òí {`šÎKÛ¹-Ò)Ý!RXªœg>¾½+{VÓ#½¹w³Švs*Çœïõ®cw“&ÚÍÇZÎW+Tl$°^Bñ£6¾ãÆ\0ù¹=ÏZÊ E1Ã3øÕ‹Ò!¸‘©ÇÞÊíÁôÅWI4¡Ê‚I¥keº6â¼‚òÁìåPÊC	ƒ\\õ_~•·wªéOà»­&Ú¶™\ZF_™e*0<ƒž¿ZÂòlGÍÉ`ßtqÚ¡dÝgtö…Ã\0S©ö4BnA5sœ<œdTÆÞ™¨å¼äc=3NC€{Õ³D*“Ðö¤aÖ‘_ƒØA‘HÇ• ;p\\QHÇ#¦:ÓI”ca­zu§Fwá=¿ZEl(Qzk»[¾qH–OJÒ$*FXíÁ8ýi%ŽKyŠJ…XuSíà’îA+¹ß8_\\s]=ŒvZÞeÌZŽ|¹c¹_²‘Ü‚‡ ›·!“å­Äz¦‡(“O¹16sÐš¯5ƒCrðJnŒTç±ª…£-È!{Ž•*HMt4µmcPñúÝjÄeeÀ;B(Ç°¨,-D÷ª« Á]ì\0ÇÔVs¶ã~µ-»\0þçŠ¹K™j	[cÕ4ÿ\0[h­‚=å´·Ì ä°Àv®Äécý±-Ö˜ÒYØºy˜Ýï‘õ®ûÃ^´ñ¸7 CvwÔã¢N™5•ã†ºŽ™jÚ…›«(×s°P¥F~¼zó©Jœ*ï©¬›’<ÜòKÚ›¸ž”é[\'Ž\0éQcÞ½4bá÷5!a”T[»b—žÔˆÍ¸óÍF3ßÞ•c$å…!8ëHÆß¼r)ŒÛr\0§n9â£vçƒšh›©7`Ò¸gÓHô¦1G=ésÅ\0Ž†žiÓðå¦Ÿ{­[[ê/$pJâ=ñ\n’p	ÏjúGSð‡<v6iØ‘æyÇß\0X÷Í|º’´r+©Ã)È>õõ‡üakâ_YEav£RKtó \n]Ž\0?k¢ŒÜe¡E¥Ê¾!Õíü=¦¬ž\ZÓÊÈTÿ\0ÑˆU\\rýk3Â÷ºî¯=…Í´BæEOwf\\zvÉë^©i\ZŽ›x[Éæà®ïb:×$ß\rôÝ%fÖb¸¹µ™b;¢†B\0™ë]©	EE;37jø·Ä‘xf!ö[ˆRfhön\'å^R~&Î“Í3ÛÚ–e\\„AÉÇ¦kš×/¤›_‘ÄîÌÌC»1\'¯\\šÆ¹…å™áA¸X7SÉï\\Õç*Rök¦ìÕAZì½6º5Zîé-Quuë»Ë$v\'üóVô-\rµ\rKM´Ò1s0ŠIÑy!¿:V-…¬ÑÊ±»m@Äœ\rÕë¾Òô¸uA\r¦¡ç˜BÌ‹æÎxñ\\ÓÄM±Ù#´Ð¾éÞy\ZÐ%Á`@{•ø#¦G¥R·ð¼†êF‚Û3Æ|óÝõÛüëÐ!˜J\0û¯€Jž¢¹ˆA¡Ï$å‚à\0€}î{ŸÆ›­KTÁG]üUi¦Ã«Üÿ\0fÝIqòºmý+”¸U\r¹sïšÙÔùäes‡bBžµD[™QŸËlâÇ¹—BŒÜfŠ{®Ö zÓZ¡ÅK›WçµGÒNE!¥™îg$ŸRj\"´+qKŒ°\0u¤#FúM)–Ú[¥I@ÄðÉó)?ÞSè}(ŒÂðb=¨àî<~9ª‘Glmc8YÐŒBAù¾‡Ú›µdEä‡&¹ZÒÅš0ãdÒ$\"@‰ÇQéZOgkdžgŸ‰PÐ±bÍ×$€ôÈ®pFUÉblæ•‹©5*;ÖN	ìÅ¡ÛE}gzŸkÕM¼²Cî¡\nG™ØGLu®sV‚]‘~þ7R8D9òÇ\\V`f^©KbEÝ’½~SYÂ—$®™K\0LñÓŒÔ°	U^MŸºèÞ„Ò0h£.J¿û\\­FòîŒ“#Hù}k}XˆÐ•¹ó\0\\g¡Ñ]À#’1Î{UäŽå-™¶ŠN6>¿ZÎHšy‚¨É5¤5f‹`Âˆ×nw¦Ÿ.£57Ùd‡!Šž§­H‘¢€ÊÊ[<®zUI;\\—c­¶ð¾©kq§Olš|ò]£:D&/ŒüÀ\rtÞ Ô5ë+F–çL±¶ó×p0O\"—|aŠó‚z*§nò<E§ï½·upñ>Ò¡n½G°ï^âM/UÖc²‚ÞÇÎx!©šávÉŒ:ôÅx˜ŠÚ%4š.-Øñ(5\rZòÕ®¬™!’Ùòq/ï	=À<šÏÔ$×õYüûÕ}Ê cÚ1ŒÓoé3k~¿—u¤ÝG*Æ|ñŸ&Cœ6=ÆFi5K][RÔ¤°’ö)®YüÆŽû…Ï\'ž‚»\"ââ‘7Lçq¬Øâ®ŠG\"ùœ7ÊF;þEg…lž\'…Åç™Ÿ0?ÊWÐë^¿cá	ì<(úH5¶R»$‰±óŽ uÍp>:ÑF“¯F‹g=°šÝ$\"YÃ1• *èÖ…FÒ‡!,²‡Á8Å5î¶ä’\0ÀÍO<IÚIÇwª¥FáŒu¯B1HZ\"–\"yvoqš’V„Æ¸?L-Rn:T±r8\'9§ &-Â,äÞ”ÐáwgÚ§‹jò–ïïM6ÛÈy~˜õ¨V††¢Þø†âH-\"#O2^@!GR+j{ÔÓ.!µ†g2¹ÈÞ##‘ý\rbiWé&M§np\\V·u{;Zµ‚[{¤¡Ý)V<úž¦‡VQÑ-	”nîz/‚ôM\'ÄZ¥Þ§«Ìü½Ï8ðxÜ1üª¯‹áÑ.ô««\rÝ¶Âc~0TÌAõ•ç¶Þ$ºÓÂ5ž!•£°8ßŸåO“Ärê?Ú×Ì–Q‰É%¹Ç§Jä”\')ó¥ŒÍkJ³´1]éÓ<È>eu £¼ô#5ž×T8V9 v5}ææH‰;YJ…#¥f¼^^X¶º£¶ ‹«¥Þ6.£»µ¤L©$À|ªÍÐThK(\0e\rÀú}i¥vÖfØÜ9·À7q€r?Z±c¨5˜Y âNwgjÒ)7¨7¦ƒíÕšt¹;#9ØÈ»‰=…G{-¸HÞßËeSæ3–9§-»L,\nÒ\"®ç*8SïùVt‡$‘‘øÕKEbR¸ðëÉ<MYCG\\æ¢ ²‘šEù~^¹¬Ò(”÷#§ÒFsÖšÇŽ?\ZrF¯j`8{â•Ôã\n8i§`#\'Ú•e\n1œÐG©Q>|óùÒ¾Kg$d+`ŒŠ«‡BEÚÌ g¯ Ôÿ\03e¹ 2y¦[¨2î,çžÕ©4qG Ž2yÈÇ&©2ÈœãµhÜÜ­Ð‹j(tŒ)*¸Î;ŸzÏÇcMO›úúu­V¢e•˜´Häu©¡°f$ŒŒLØ€„1“NGNTVŠ6 B‡ (æº­Ã¦îÒæx¤Ýq,‘B£;ýsôþµÌ	#¸ÈâºÆSi\ZLö™\0HáÔ†zçYÖæå÷F¼Íù¡°ÕtùotÑ<wQb9­æf¡Î{v¬[ëûÍ6´\r ´#D@ûÝyüj¾‹âx´Û™¯^œÊ\n”‘ºARßëZF£¥[ÀâuxÉÞx çø©¹½í¤h’KC–¹ºÝF2Svì÷ÍeÜÜîuMÜ(ïI}0€;+g9ÛX1’I\'šÕ1Æ&À¸ÉìGlV¥¥È*¡³Ò¹xîP½ÍiEr-½U©Y£l´x2)öÆ)É*·^•—ovÁ¼†#cs“Wb\0uà¥>vCEô,2©>*ÌfFfÎ\Z³Lˆ d*RaÁ~”[Í°r9ï[Ó›{“c¡ŽqäŠœêS,\rn$a9 zÖ\n^í`H®¬Ë*+k¦$ArIfÈªRe”\'Šètý*ÞøK$÷F/,dª®II®zgVvÙ’¹ùIëŠŽe\'aÙ¥rŒ§,@¨Á>oQVd‹ŽMXµÑÚr$.PÁ\"²›å\Zh7È6ŽžõzÚ>Ñ×¾jý®u!XÃ.HÈ,1O}&îÑÀuz‚\rÔ™1°Á·çÚpjÂÂXe[Â¥:&\nöÅKnGÓÒ¶Q jDíÔãÖµídW)µ€Àe¦¤@ã½[KsÇËø\n¾TÐ›,ÛÈw’ÃïV¤A_8ïïYÐÄÛÁÇ­\0\n´­`E¸’«ÐV¡ž9¤ó\Z=¼`¬è€â®Æ^¢¥ÅnUô±rØn ¾zÚ´àx‚«líÞÕ›¢3 ô­\r© 0*ß¬*.…G¹\rÒ2Ë×+Øâ’\"ÈÙR³3žI$RsŠkk17©lB]²á±íN1˜Û+’¢¦ÁŒô©5Îäîj¢¬5@úRž§°¥µ%º€NG½ b^)ì»ñMhˆxÑ\r\'Ž	Í5dÆC¥„óŸÂ†@XgŠ4\rAÛ+Üc£$´\0§I)Q…÷¨ÉàôªŠ™:*PÀ`\Zƒ œ¨ÅJašM\n-ô]95wíŠyB1ŸZ\\~ó8ã¥% ÝÞäeI##šlã#µ)<Ð\0È?…TTpAÀn£ŒúTR VrEY–2?Æ¢e<Þ•¬Y\rŽjS*¬Q¨=ùâ£e9¤<6r:U4˜¶WX[{  óY×W\0»m”âê*íÂy„‘T&„Žµ¥4„ÙP7#’õæ•e°yÂ—\n¹ÈŽ*Ìža0œH£#ŠÕ°å‰=y$JBw‚Tž9íLÙ<ŽìÊI$ž*&`¸ÏCÍ\0†;ã Ui$=\rZuÜ8ªS©PsNã!.Kàw¤#d€°Ê÷§[ÆZNzU¹aT½Gr•Ä‘—&Ü‰€ùIèj³ÉW\0`çÞ¬ËEâ ò÷P¢îW‘Iš©,yäv­FB§V@§\0ôïŠ`G¥Üµ½ç˜	W*}+niÔ)bÄŸâ95‘a¥]j^Ušop7°uº^‚¶±;êlÈO-%Ièr+\n•)AÝîTc)-­§Ô-—†,È `÷®íž-ˆà‰eŒ‚‘É8ê©ö¤¶³†×QB\0OË \'zƒô­7Å2B–\n\0Ò1;6\n9®\n­UšI¥ÊŽWÔžêãl»Ñ\"$*·U\'¨üë£Ðä·žÒ+–¸Ÿxá\0‡^ø®*ýZIX³g$“œš‚Úòk\ZH$(Ì»ÆAþ•¶#	í)rÇC(Tåw;?Dè©=„œJ<§yèsÇ§Q\\xŒÌ!µ–6 ÊŽ˜ÏÜiš´–¢k­‰€€tPqŸZŸRÒ­.a·¹¶Hå3Ê2`þ\0ÿ\0ž•çR¯ì_$—ÌÞÜÇ›^Y\\i’-ÌM¾!A‘œ‚Aã9ž(ÔÈ’ÇàAÃ|µÔkš|3ê³y×s[8D’E+ò’ÐÃ?Q‘õ®gÄv¶ÉÝ¦`šUË€Àß©Æ:çšî§YTI=ÉäkS\ZêâWuŠHäE ÁÎî?­PÔ/Ü‹4“¼“…Úwr:sô©ÚêîÙÙ\'’ÛyÇ­S¼hî.ƒÂ„—ÀÁõ­£rkB;©ö©@ÁÈúÔb)Y±’¿xOZÆîsõ5²}ˆh˜0Ý“OW\\ÃžÆªÜzãðØ=jÐš.«Žœû\Z±¨^¦³Ñº\Z—Ì\"©_jÍ´…˜‚Ûw|¹ì>¾Õ™€dã9{U˜Ÿ¼m«Üâ‹¹¤húŽ±,Ø¦cVcgèM\\ÔìE•¬–‹©\Z–‘I–ŸLŠo†µX4½}6]H¶®Û\ZE^JöÈô­ŸØZ¾‡syÅ¼‰qòA`Aöêj@äl¢šéD^s¬DáÀç5¡k®¥4»IcÃð3úæ¥·½}.ù`fC0Üê;Hõª÷s!¼˜CÌ{°	98¢Ã1´q×=*å¥ÃÛ\\¤Ê9VÎ=jªÌ7U¥>cg\'¨’Z4e™‰ÉääÕÈÇ=*¼hq‘=êÌ_.9­	5ô´Û$nÌÃ@8®Ú=1c³^U]²Æ7b@¯:Žm¬1cÞº½\'XŠêØ¤ÓÞ0B»‚¥yØÈIÆèè¤ÑÓ·¹µç\0ªùy\'×.Ÿk&¯oÌžKÉË’\nã=zg‹m¯4û5¹7ÌÆ\\G$h»Pc~µÊÇ«j‰q±]3<(Äçfyã5\nmÇ™2¤ÖÇ_«Z[Am+[Æ2²)€¶@n0Hƒ\\¶¦ox’^P´{QBƒŒzŽÕGVñ>±u41K?žc9E\0dÂ²®|Ssô‰e/f>Çœ“žüÕFE»âËòC½õªÜ\rêÀ9òŽÓ°ž„×¡ÙØi“iË5´r%ª–.Ò6ñ ?ËÒ¼¯Qñ4Z‚Û,Ö_eH¢ÀhG.Ý‰Ï½ëVËqo½ùª‚GŠä0Büep=òsYV¡*Šì¨4™îú}¯Ø¢}Í)Ò\"CíÛÇóÿ\0ë©ä‚Î\'2%QÇß$;{WŸi^%òöÁ	F€‹4R²7<sÓ·åZÐjê1Kö™¡DêZ#Õ8ìy¯¥vÞ†Ö]	|A}¤éÉv`Q!*©´àç‘ž;W{­Aež\\Âg–0Ñ©å?)í‘Öº¸n¦šîâÛb2¡UÈìsÍyMäoäHÙòÛk{W¡¡-YWc«Ñõ››Ë»[svC4‹âØò×<}O5×jzî’Ð^5Ôö˜Èäe‰:ŒzúW—ÚX´ûŒBd‡ dnÆº½#@µÖX;])Èv^UÕüþ•®&%%\'ÐPl™¤ŠãUk×¶k™¢r Â®<ã¬ífµÑb½½Šæ#~è°ƒŽ9®×GÓí4íFHç’[É-Ø¯š;0 />œšÔÕô·Õ´=E5ÈA?1ep~ƒŠæxŽI¦¶.Pm?ÈÙcº}i˜÷íWîlnv€BìPdáZ£ƒ»«Þ„“Z­\rÀ<w¥ÆzÓ‚§Š\náA­š-ÚÙÍ<ÐªpqÚ¥ŽÝÉ\0uÎ1ž•“2’ÇŒæº8 –ÒËÎ6¨ÌpÈÁçœçÊÊQ¹”öok171E8`~µ]±Ë…í[7w\nÖim=¾Ù×%¤-ó1=úV3É¼` âœ$Ú»’Ø®Çò5€nÚOAÖ¶“L´ã#¾ÙäeòÁ8yÉþU}j#‘¼¶Þƒ\00èN)ª‰»•”¡™D¹T\'æÇ\\Q,jŒ|¶ß?)ïŠnsKÜpN¹¦1qƒŸj³’&ä*ž´¶òyù±ýäÃ)ëÈ­I¥ë[ÝÉ“ŽÞz/6s•Ï¶*[@‘žóü»Ã~ñ&’ÖDiDn›£yBðÙé€kFËI³¸ÔæFyM›dG0Ûžˆ=³ŒÕfÂÖÞßO†8¢·¹Âi}Áˆ=qØŸJ¯`išÏa›f¹Ó$œ´x2Hà2ËØ¨@ÁÎÿ\0hC±L-†äB…7`Œg#½G%ýÚÆÐ¥Ç™¨ý	àŽõNKy$‹ÌŒ3`|øtÕ96¬BVeYg-ïNDó qœqÖ˜±îwÏ^Â®ÙRpþ[òœvïYËMF„ÜH8*Bœãiõ÷©-‚®èˆ!rØ\'=MZ»²º³¼i”²H‡qãk.G\\~4¶)+™R±æS¼/îóÏ_ÃŠ™=©Bùƒ¸”’£8\0*¨Èê:ÖœñÅw¨LöQ¨…>eGà‘TîfYŒ{aXö(S·¹õ©[@\\ã5<SBÁÉ:éŠ¯¸ç‘Štr4d²c8ÁÈ¦À3:³,e–1— p£Þ“\ndèqNi]òI9cóc½9vŽùóÇ¥!‚gÁm‡=ë©ðeìg[ŠÆñ–7dG2ûzq\\©‘”œž½*{\'u¹Y¥V60ìk)««‡°x»Ã:†ô©ot»ï2ÑSdŽX0ïõ¯%¸ŽÚLî\\\\0½1ßÞºcÆ·º¦”4×\nm…¹ˆîsÞ¹;€‡cÂNà;žõ(8·q¶P‘ÝäÎ9ôõ«Eƒ¿8>Ô¤`¿7sï^ð×Ã±jÖwÞi~tRð·ÀBð÷Ï9«­YR‡0·9E¦à©S\'8wOåZ\ZØ³‚ÝTNÅ¤@ø û{w®óZð¹ð}ÂYÅ¶’º”’O™”ãïŠòfø\\?–±()Álb±…GRzlVÈÇÔŒf`ð³ã\"«–]ÃnjoÝ¾àÌGgš„\0#’k±l	Šà2Œqô¦*Þ´å9R2iU²¸=©¨Ö\0ŠpÈZkr(\ritÃzzÒ¿‚)O98äS>”ÄËz}ÛÙÜG4gÃ t$w5é6Px‘ˆü;Áy¬·6J¼3¬£ëÚ¼¯vÒ°<Šé<3«]hú¤z…£Ê<±™’7Ú^,Ã5•h9-™×ê×1ëº5î½¼HL€\\FSnXà¿¡®\næ‡c*8Ü¤Ž¢½^S¶‘s&™b^Æý–x…ÐË6zÃ€*•ì2x×O†âÛMòÕLo´¨N:½«*t§‹by”¶<Æ_´EÀglOz¯:=´¬™”ãŠ¹«XË¥jO\nïyFeÆG­f6ç\'s`“]	0.YßÜZL³[Ï$RŒƒ]eŸµmd³Õg“QÓÞ6_ ¾Ü1G\'•ÈÅa?ØÞÐa#-¸g\'Ú›unö“´R=ü«9ÑŒž¨¬W¸e2±E*‡ \'¥Cš·,sLØ1“Ò¶BL@¥Êã¯J˜*¨äàŠdÀÀàSç>ÔÄÝÉ[<ðj&rO4ðû¸\'€)»ƒž*@…›¯ZaÓÝzÔdc­Rår>”eG\\æ›“ŠS$vP§\'‘šhcŒJ™-ô¤!ùÉ+ÑþøžßGñ Óïd1Ù_²¡q¶Lü¹=‡<×š1ç\"œ’m Ž¢©	«£íè<Ë™ÚG\0@§\0~÷ûGúVµ¶ÓôÉma†G–Tê \nòã†¢tô±»µƒÍŠ\r‰:—a€2	ÇÖ£¹ñvµ­øšÊÓPxí–CµÑN1Ÿá$çþÕÑF1RS“ÑÉ´¬r«¤›ŸÄ²|öóÎzryÁ®àøF1«\\O\\åØ\r¸Qƒ»5ê:~Ž±ÇoröËµU`E^‡+íœþ©s¤ZÏç«\ZÌdØ øÑVp”ú‰sKSÆtýìº½µ·y\Z9HÎä+ŽíÖ½#IÐ¥f‚æâÖÞÞåW\nèNYþ!Œdq[öše®—f-ôûxÔ¢’œwúÕØƒùIæãÌÚ7Ó=ë–J=‰L¡²Ú¢“#€I5ÀüRÔ:<±}¤nÚO^µ×øŽp!ò\0˜d’ÛJŽ™×—xƒWÑ­®fŠâf{TQö„Qƒ3ó€õ®\n‘÷½\r¢ÑåW:g•47S´¿c¸V1È’G>´Ë;Ñ\r©É2 l‚ÝÍ\ZÆº.‘--Ì‚Ñz+žU\\{V–…¨º|‡O´fŽl£JëÆãÔdÕÎ\\±¼…nÆ¤ ½ižÚÔBSŒV#\Zöß\rü3–)o©tx”ÅµÀ,sÏéÖ¼ûÆ>¹ðþ¢À[ºÛ?ÍAZÞ…HÔVˆž‡)ŽÅ/½#©äv¤.Xò+A1ÊÛ[8f%ŠY$2J±í\\¯O¥T5=¿ÍF±ï\'œã¥µŒ‰v –]Ž\0=tsxI­´™gšÞå.b\náp\n:ž˜ÁÍli‹µ¤¿²§‘­¦iä{tËG#5³¦øûP²×X2°tŽq”òÀÏ¯Ò¼\Z¸¶¥«µR¹Æ6ƒ«$6²>žÊ³9òâ(AÆ3É\"«Ãj..Ö8 ¸•¦?<èIQžƒÖ½‚Úå<FaG½Y\"·c…;œq¸qÛ8ëZÙïc}c{an¦Ôg™<µ^ØéšåúûSå’%Ý‘óýö>râòÚæ~b2ÄSp÷ÍPKy_cr85ï¾2ÑõBYÒêæImåÀXaPêzóÎ>˜5ÈÏðêÂßÈŒ¶ìÈÄªÈzrp‘€zWM<|yy¸§Q#È899éH\"|çŽØ®›XO†Å6h²Æû<Ü•b9ûÃ§ÿ\0ª¶4{ßÅ¢Ëq;<zºn‰	Ê¹=pyéÁ®·ˆ´T”[%-lÎæbP\räœ`sN²W‰’m‹/•ëïOŽÚmgUò­bÜò¹Úª1ð®žêÆÖÇL·[Y\ZÞùCÇr$C†¯CÞ·”Ô]YOMfHB$`Á²p=Ey>Tb×É`¹8/ïD‰9I?vLzjë4¹¢¼¼¶¸ÔÖKV¶@ñ®ï1€Ê‚:=*e7D“d¾ÖfÒI¡I\r) ‘ÂŒr3Èç#šíâ®•gª%¥ß™’Å)È2dc\'¸?¥gÂ÷ºe®«áøã/	>sK6ƒ·\0pEOcá\rKÄº¬QëKn²ßC…U\\FÞã‚}{×Õ\ZÒ´·cwJÅ=RæOhWZ¥¶ŒÂsµç¸W\n±”Î\0ø®&ÃSÔâÓMóYÁRÑ¯ÌAàŒúW¥xƒO×¼mýj†ïK‘‡•æeî$8íê+Òmf²Õ7D%´¹`$†>HhÏ\\g“QEr)E­:Ù£ºðÍý×‡tDÒu¥Óîç`¸º”ÉÁ?Üþ	æ³¾\'k–÷Q\'‡ÆœcºÓ¤SÏ:ätîH?…`k÷+<°Íö™§ˆÄÊÄB0Aæ°ïoo5;hî®/Ù®,dlåGJ(R´ùï¸ï¡Z-jhì”Ö¶òÂÒ3\'d#³×N• W¹q)b9*3“þt˜ãºt‘¼Óžã´íJæ«¶–ÒÝmc*ËS9Ç±¯mTn6bµÌe<Ô‘©¬ ¦:lÆ9î)^åWò¤ÝÉªE/üã?{°¨ãRöèjÌ†P)Ž3ÇÇ¾*6%–´ËØío!’{u¹‰[-Ÿu‡¥v–Ú‡|]©ÙÇ¢Þ:öDfxîÈ`²ÏCï\\\\vŽ±–ExË;gñ[·V–pØiPØOÁS$Ì[å›r¤¦8¬æÐ\'¡«g§&¡qg{ ³¿·Ý„Ý³/ºdV2Ç\Zw)ea„î}þ•¡âßí;Çx4ô·Þ†4RON¹<óÔ×>¤œô­(ü:ƒEãp²LY»œÔ…®·î€Ã7¥W‰VLŒ…=]{¨-¾Òbgƒw–eÚJdŽkGd4fÏ”\"±ˆñœS ŽFÊÆzâ´ÅÖëu´rDåÇõD™¬”d#Ž2;v¦‹æÉ˜C0VûÀÆ˜pA8ö¦Å²ÜäSŽ@§Z7åPFOíLbTñÍ?~IºSNQÇ­OQˆ²Aèi ”#¯ãN-‚9â‰0@çš åŽiÁ\0\0çŸJdN¹ÚFMHpFsÎj€S¼qŠjHÀ“ÞœNxíŠh\0\ZHD«!cœ{U˜ç“~Xî&©Œç­; Œçš[ÕYbyÈìã$ŽiñÎ!`TäÒ²ŸïT¢GÛÖ´Œ„Ñ¶÷$*žÄdb«E¨§,O÷ªk3,`dõ‡Ì9Î>•NbåFÔ÷É6vwíTMÃù˜g8éŸj d(ànæ®[4»7\'¡j‰O¸ùILŒuÙíV¡~ú¸<œsS¦“)‰˜Ê¢59g>¸ªw\Zƒ[ÚIIè{ŠËÚ_ao±›¨È\ZrˆÙEàU¹4»ó–$“BçïzÖ¨ÖÖ»x<r•\0š‹æ† phØÉp8\'*ÔW‹qÃõç‘ïXÅ°?•OóÅ=Ø¬nÅ0\0d–Ç­JÒäqÇÒ²£€z·Ìps[\'bZ.ÂÎWqQë[:M´·ŒåAòáO2O¥cGnÒÈ±ïÚ˜,IíŠÕÓ#à•­&c™ñòòÿ\0Z=£CQ.ÜêbÆÖòbM÷*wt®>µ“inÓœŽÇ×ö÷Z¶ç.–¹ò¨-·×µ·£CkþjÜ4ƒŽzT¤¢®D˜äÑn·ÆZ3\"Ðu­·°±Š8fût˜^CÁÏ \Z²\\@ÞdG†@÷¬ç±gl\'$cŠÆQ•F›%hkµí—Ù³9£ö¬ã8$m9\\uªÍ\"ç\0ŒúÕ#rñ¦@ ç¼Š!êjºï?SRCG¥W³¼Wx‘Á\"´!Ÿ8Á5Ñpz\Z–±4dPAkAQr1À¬ØšDQ»Z0ÊŽ¸\rØU\"KqFv8ˆíU­ÙOAÈ­phÑ¦;qZ–Ê$9È$‚¨ªäÕ˜FÑ‘S% î[X·6ðß&qŽôðä½§ÛÆÏÕ\0Þ¦[Rb,HÀVI=Jô#C‘¹#½NQ_½ÜTxÚÝ{T«ê85:µ°zU‚7ô=j³åNÅ9I œÖm_R“¶…„sßéáèj¨|ä´ªY9îj\\KR,Ž´\Zó“R)\'9©hiQQÌ0¹ÍH8Ÿ2ã€sÞ…¸=ˆ‡sžqÞš²N:ö§ˆØûvÍIµÇ\nzõ¥ìE®D¤çžµaOËŠ‚Kš•pEL˜£¸åäSpNiÝ)½jM»GsÚ˜iÂ‚(%«ç9¦ºn9©@¤Å;ŠÅfÚšR­šc(ªR%¢¸#šŒÛy‡qžMYaŠcK…#<U©>‚3.l‚†ØA\0ŒžõQZNåþlŒv­9Ø˜\\¯ÝÎHª…ÎÒŠªA`9aÞ¶W”lÄSyw´ŒdÆÁ¸È<ôÇãYsÜ¼ò*°\n£¨ŒúÖ‰µÊolm.ëY×´s79ééZAYJëP:3äsšU¨\0Uˆ—r\r;ConêNEXdùjâ(æ‘âÊçÖ€1¦‡{qL[}ŸJÔh€Ï]Ó ÒŸ2áMQ*>löéZ7	ž=+6W%vö‹³¥j+§jÜgrcwù8«ªOqw<²Jq+†eÎ§åXÇ‘éNIvëYº1rækRùÚV=6-J)­ž[yciQAò˜€=þµSP’Û[E²‘n³¿\rÆÇ5ÂG¨˜’@>ógÐV¦‹©´³IäÀ_PìˆÃs‚ÇÜ-pÔÃû$æa>m\n:Þ‡6™ši¢%›hˆ7Ì:šÃhWiù¾sÒ½O\\ÑÛZÒ–=àI’	Q–lqøu¯.¸†}>÷ÊJK«•XzÎ¢³z‘8YÜßO\"Æß%\ZH’-ÒÀä1LŽ3þÉ8úfµt]Q.u›8wÛÁmŸ™ä;œgÓú×÷óÏs#&Yò¯÷³Û ö×Wž0–HÍ®¨Á0¸PãŸ¥sWÃ¯´Í©6Ö‡Iâ½BH˜ÜFDÓ S\"\0UpG¯¯ÂjwK¨YBè›J…O÷Èþ,~†Ÿ«Ïw©]M3L^Ý.‘ÐçÒ«Ï8±²N‘Î9pÎ0cÏ?)Ö²¥›Õ—\'­Œ«ç\"8®¥Ý“g§\rdÇàÒFÜ;ý=ëY­D“Ão’á‚n±ã?J«©[½•ÓÛ\'\rƒÁ÷®øÉlbÓÜÌšFlncòŽ0qF@û¤tàÓ\'<—zzT[ˆƒÐÖÈ–J[”¾o8ü*\0H»QŸz¢KË b6ŒUÏµ¤–äÊ­… çúšÉSÇnšRFp3øU!2xòOZ·NO\\u¨­­¤–d†¾Gà/½jÙé²LÓ«à}™H	Æ0z{Õ_ Š‘ÊSæ\0qÖ§¸Õ®®‘’{—’7`Ò.~ñ>õBy•fcã\'åÆqPC\"™ÔH~B~cŽ‚†èÌúÚM“0™¡dnpàŽG¦Fk0V8n3ZÖ3XHÅŠ«\"0ß¼çŸLsŠÌºa5ôÒ\r¸fþY¦ïbžÅ›r²2äí+VÒ0²ã§_jÈ‹pk Ð\'WÔÚA¹%OÅ9Ë–-Ž*ìµrLt‚¨È÷ª‘K¾EAÔ×a.‰‚xÄ±íÚLŠÙ]£<þÃjIfë,\'|@üÌ­œ¥aF¼g°åF)¤Àã##½Iq;éGíPº†fÀ]ù8÷‹k­ÆvAŽ¹þ´’]¤–Í3·ÌÝ¸íëšSNãZliË«M¦Mì$BD™ÏÌ§œW=nìÎÌÇ÷)÷ÈíU…àŠð1dÚy+ŒƒžÕæ©žñÆ6Äã$¨îÏJÍ.]\"‚÷ÜŽ[õME¦‚, nþ­Hl\'×u«{6‰XÊžbªðªÉú×0ò3Í¿œäô­>w7Ö.“È¡Wb²’¤üŽœqQU;]‰5í9ãû>œ÷víöUbdQëØûñÒ¹‘öfœÆwÆUÕrGLçõ®ŸX¶ŸVÕ£´´‰’Ù³,AˆÎÉ$õ=?Zæ–ÂHnåK˜eDN\\Œ\nT%hÙ½G%®‡I¡èš}öšÆK©DÑÈ,yÜ«Ž^=«CNÒ®aŽîHµ	Ðƒ½¢¸N9ù·Éö¨¼3z~›%ýÅÃÄñÊÁýüã?ãI}©>¡\'•k;ªþñ‘ØgÜãúWG)M¤ô4OC;SÖ®äZÅ{\"Æ¬	Vl\rØëúW<\'igi$ùÙŽXžõnú[½‰Ü…Ã’£géÒ­.Ÿ§È!ž;Ÿ*‰#$zí‚8™jØºEü–&m±ŠT!Žq:Â»ÿ\0j¶_g{Ó}mùy6Á#ã\nØäg¾qÆ¸¹,-­eV!ÚÒD!L„Œú°Á÷ÔE¢è—PÚèÚ™	I€XöŽ¼ú×*Pœ}Matõ=ÒK+KK™„Ñ‡‘ŒŒÇÎjæõI5-Bæ\nOhe/Ûr¨ØásœX3xðXµÕ–¡(·’_(G)ÈeÆFWá/Ó´è ˆZ•lð‡£ï£çFœc¬%SkÜ¥¤Ýÿ\0fI¨Gs/ïæ›f]Ü?€¯:¼±–ÒP²FÊq‘Œà×£ÛërÜï/ô×¶C&Ï¶¤E“!³ëšƒâ­£êZe¤\Zk#›rqÉ*sÅz8j’E¥îc8èyÒqŒþTÖZ~BŽO4ÆrÜ^Ú9É-Ù–dÙÃòýkj]^íàXò†äžI>¹¬{R‰2™ÛÏJ›qä1êr{ÔN*Nì±1In¥—Ì9å›¯ãN†(·…8ÁùÁŸ¥?N1­â4ß4Hw2nÆáKs¨í6ž!Ï™”ç8†k6Ýì4,È£O•„G¸]Ìyç°¬¿6e‰¶«óÜ|¢·<¦Þÿ\0Úb_%ÀeŽ/º	èOµ&©ä=ªÛYÂÑ˜òf<m#§9÷æ²S³±mha[Ù¼ÊÒË*ŽqïÒµ$ÑZ%ÓÙ\";çãÓwo íÍhé–ée>éÙÆŠêI<pF;ä\ZÜ¹šµÂ$ÎÓGŒ(8W\\äV51-KM‡\\âcÑnï.dŠÝpØ\nzóV¬ìµí–;	]˜Qåä•\rÔc¯<f¶õÈ´È-.,áŽ9À(Î™Û ÀçëØÕ{]rúkûW‰¶Ý<FYp9äcñæ´…YK^‚qFF¥a¨Ù9Ñ1†íÛÿ\0­PÝÞÝßÛÂ&B#€©Ÿsë]mìw²ÛÜÙË~nQÏ\rQ°y>ø¥s0js-„¶#\")p_\0ø9­©É½È’ìf\'¾x5oOÔ&±¸2#0GFÀî§¯Z†hÕKwäbšFðOA[&KD’3¶ÑÁô­}[½Õ”w’´pDr²uØOZÏŽ7 ûTþQ!B)$œw4rÜw;´z^±k\róÁ!^Px”åä€O«z×›ÈU’Âb,UwqéZwO!‰Râ	$¹ \0ÎI!G@?\nÊšy|¶¶ÝˆKn)Ž†¢Q³Wh‘kcu¨÷G<óJHÀ\0sëMUËc•,aR¦}*DåÉõ§`Þ¢žE<d\Z–;1ì)¹qš{€§ Ôï³‘˜ã®;Rˆ™²hsŒàw©¤ŒåyV$Jö¦´%g©¤ì¶î»Á“v=kii×S´w—gËfVÛÌ9íŸZÄT*p95m`+o;zÔÝ-DÑèþ³ÑgÖn·Ä5Qça·1á‡>µè\Zæ§eá«8¥Ó„q„6*ü¸ëŸ¯JðÍ%ïRê8àûÌ@ï]¡ðþ¥söuÔî¾Íní°4‘Ç8çÕ§Tr—QÆý›UÔ[_Ñ„¬f8Ã¬,É·œõèúõâº¬Oy©Üµ½©µ‚6%# œz÷¯GÖôkßé’¼Z –m’B‡+Ï¯î®ïÜÝM+ì( çhý+§Â-!»˜,X–À&¢#iéœÕô·C\"äÉféô«2YÛê67w¶ªc¸ŠA‹dÆÝ˜äŽõÔ¶d+Àc\0ñFÝ­ŽÕI†ãõ¥Gg“$ÐZ&h\'ƒÍ39niÙÇéMaž})nNóèi\ná¡§09æ†\0ƒŒSÇ=jÝË[Ì\n±éŒÔ¢©ã9¡\\£èhë>ñºxfîÛG’hçÐÞa1•âÜèû¿ÖxšëE³—ÍÑnàŠMJ‘Œ¬cTR8aÓ\'žxX¦vç`ãéV™ÿ\0µ.-a{•€´¼Ìv Jj£øLì“¸·Ñ]Í\"¥iiò˜‘€zYSQŽwgž+©ÓîáÔ¬—Jœ4“ÆX[²ýÁëÇ¿Î]ÚË™–\"«Ó8ã\"¥É^Å„¯³`cŒç¢D×Œ¨Í/ðŒ’z ÑAìx­ß7ÑÜIÊ($3gOz™½.\r¬•²µ{IV	AÄŠŸ:‘éŸ~µ‰{\ZÁu\"Æ§Ê$”-×«®×µø5]ÒÕ¼ël„P \"ŒóîI®6åÄŠ¼’ËJ½À¯œqJ±Œ\ZEäãõ©70;kVr¨Øs‚1L(!F=è2à`b£fê¥aÜÙÈ¨$ ¾@ÅŽÜv„æ˜$%¡¦ž´ãÀ¦PÜdÒô¤¥÷=¨„âN8\"šGç@[Ê\"™Y*:â½ËÁ?.õ$–âîþh£š5f-fpFg·¥x8>µíŸþ(ßÃ C¢¬j¾Š_“Ì=b\'‘éŠj\\º‘(¶zÅ…†³£C$6×ö—ÄÂ)TÆÀc\0	ÀJŽÜé¦Ò×TÓ“í¶Æ1N¬¿¯=;Vsø“t¢óû\ZææäE¹ÚÝËF02Ç¾{S´Cgâû‰^úÙIÃ¤dcÎ+e8É^JäY­Óiºíì\r´s)Rqû³‚\\Å3]ñNŸáøÐÝ‰‹ÉÂGd–>Õ¥\r•­ŒgìðGœ\"â¸+ë¹õ)o5h-Ùã†O%¢|¨?Œg¾sÒŠ4•FÛÙRqG5¬xŸ[¼šæö×KŽ¶¤wm’Fq½ùü«Ìn[R¼†âÞ{0ó‰¼ã! cÕèþ<žÞò!u¥ékË*<ÏÞn<ç`éT<=©éº%ž­&°†åö¥¼1Ì0åy\'­qbå:zÓWl¸ZKS–Õ\"ðÜº}£Áeqcw	S\"Ía1ÈÈó?z?…5\r\\û~mk,hÒ^F*¢&àcñ®ÄÖëy§C©Z“äªo\'=Gjï<7ðÒi¬­nå¼0yðåî¬ä*Ò«s†8®(«êËÑ/‡4‰ÒîÞtÖxy,üØ™ÏWâ7‡N·¦O‘™Ð Ž5ÎN9ü*&ð7‰´¹d“LÖcž6\\½:r£­6Û^ñG‡,]oô7š-¤­Ä-¼î=3œq]¸:y¹­¿ÈÎRÐù¾þÆk;‡Ibt ôaŠ§Žk©ñž§©jšÄÓßÂbvbvlÛÂ¹sÔâ»±4Ô%dw@F)»XmãéHÄã5kžÃ=À÷\ZŽ“éÓ-âÂÆCleØ:r}s^ŽÚ”:ö“Q™a‰!€–$÷íøWžØ„ðß‹\'•--çBc†\'†3]Þ‡¶v¹Õo¢&P3Ô {Õñx©^\\ÿ\0‰p¹³m¢X&œ-lÕ`L…ˆÇò·#p9õÁ­Y§³‘b—2By\rÐ?•yàñJ.¥x.Ýâ±øõyFÆ20}t6“é·0ý’kéž9ù·Ël\\ã#=«?g9´Z•Œû¡«ÛØ3‰ÈP|ß*R2íNÒ½¹â±[ÄMªÈ¿f’VG342¸a€¸8÷•è\Z|IÙní£òçLFûJ»~8í\\—|\'\Z„Z…¨X PÆ%ù—¶xç§éV¡Ë>Z\'ÌqÓé0êw³\\šÒÓQ¡¦‡ä-œ¯=¿\nóŸè³hZ¬ÖSnVCÀn¥OCø×¸x¢ÀÜøU¢IÈÓìä‘yb¸þî{gÖ¼+Q¸¹Õ5%ƒÎk¢åDå~f\\àW©–Ô”îï¢èL’¹Õ|+Òc¾ñ\n\\LB¬|©“„-èMzØÐì­ÜhöÖ×HˆÇÍEÏ_”Œd`÷í\\NàFÇ@¶Kå3\\ ™_+µ¹ÆG¡Ív3x{Ä6Ú\\Pé÷–Ñ(bÍåf7Éê¸Ÿ¥c‹¬§UK›K’®õ8ßøOSÐ¯Íí„á­5 ÑHÑ€Ãs&\0uÆ+\nûÃvIáÔ¼‡_ˆN„`ÈUð2O×ë]ßonoö\"‰­\"_¶+mpQ€]ÀuÈäŽõÅÝ]i¶zQn·Ô!,RÜ¸1\\A¸d±Ä:×L+7¢Ùšž\0ÖN$/>®X¼¤1R¥ºgæ 8Åuÿ\0K¿ñ5Þ¥¢Þ 1F·J…°gæê3éï^f¥ÞFW\'bîëŠî|i¦Ü_IurKˆã\r³\'|ýÓõôš-&ù…vÝU“RZ“è·—óÄ%‹Ï¶¹„ðêÀ†BHé“ÿ\0×®SÅ~¸Ô­…Ðsg{¥ÂÂ5Ü?{<m¡äòj[{›‰?Óí¬a²”ˆ\"ºlmŒÌ¡qœg€~‚¯èÚßöæ¥uiZÚ\\nK;y¥\\&G\'¿Å\Z³¦ôé¹WOsÉu½:kHmÖÒêâwºä“n;Ž{œ\Zæç{¨à–\rŒÀÇ½}7«hÑÍáY´ýRîÍÉ[—*06¸Çqž{q^)â{;›/¤·ö[Ò=ªÒ7)\"ã‚è1Šõ°Ø˜T|¢k¡ÏØè{.g‚ýÚÚt@Ñ¬ˆ~b{:qYr¦Ù$ð	Á óÚºoy1žÞäÈ$Be}å¹ÉÀç‘Šæ’#åÎ~µèEÝjKE“pè:Š[#>wìi±JPÚ<OsÉ\01‘íYI½ˆw”-ÆaOJb|’1a’SNVaŒúS™7e°\nW{\ní–ínþÍ,NQ]ÚÝ\rm>®ºÚ•¹eµû8%$Lå†>î?*åL˜psëR%ÔŠ6¶]7n*OúÕû2ã¡½ªj¶/§ZÁefmçXÀ–`Hg8ç½by«(	 zô4±Î&	Iô&…¶y®\nÄ…¾l9Íkr ¸Ùb!ÇËÀElZ¦¥–Í\0’KyIVFVÇ·µX‡M·¾Ò$›Íd¿¶ÎèÙ~Y¶ßöª}>àÁ£]¬%ÒRvÈH?^õ3š{±K@Ñ¶/’\0§sm·r}ª·‰ìl,õ‰lôéäž(~Ww üýÀÇP*k¹¥Ó1ÁºÈ-æ)*ÛHéüë·dœòNM8)9s_Bz†±ÉÖt\'*h›žù¨IÇQÈ­Š±*ŽzŠB~Qœ`šE~:SXÑa\nÇ“Þ€KcŠX×?I9ÎAíI[$bœ·5+–‘¹çŠ|p‡ ìh¸ 8äõéN*W¨çÖœñ²HpÖ“.GN3Þ€@<ŽôÆviÉ&©\'©§<…•T`€x8¤djÌÜŸjœ£ŸqS¤qÆ¹ÛËùUybxØ.O=óK˜ÄØøéÅ&îS+„VÉ\n¨,	öô¤¤\r¤†#$\Z’9rÇ)àS$y‚zR /Œ`\0zÔ½JÐÖ¶Ô.ž_³‰UU€iâ±õ+-ÉUåS€}jrâÑ$‘ƒ°+õ²óžiÆ)0ŒP½À)ÄžÇŠNÞôÊõ­$ç=¨$“×Š`ÊŽ\r;;G½149W\'éREÃgµ1Hâ¥TàSBe¨Ÿ­	R¬È‡Ì8«Ší<Ö‰ˆ×Ž.Ì¥åq&õdþ#Z·vúfŸ¨…3	.Sm¾O;yÖf#G¯ pyry¸ú\Z ×fy2Äœtö¦•ÆÝ‹Q)³hÉïÞ¶lbž ¯ g­b[M$R‡ŒÆâºÖ[‹h¥òÂ\rÅr3õ­43³fÔÆx€v\'±¡æ™T­Æq€iúm½¼„€’Äm\'±­£ÛÊ«†p29äb©T[X†ŽmÚQpùTz\nvÅwäw8­S \nñ¨#‚}j»ìŒ€¤tõ­,™GåçÂª¨ð=+N YÎæcŒc·jÇ,é\"”\"R@$(Íh-ô’Ã)¸€—.\\íØ·zWka³LÜo@‡ùTÐŸœm<Ö\r´î¤¤‡Ö´¡ºXÀ+Tô Þ·”«õæµ ˜äW;kuæó·ëŠÖµdsTÜm»ëZì˜Øààÿ\0:Î·eeê3W¥« LÒ·” epjÌ,ï îú\ZÍB@n)|½¤0&¹§âû–&wdÓ _›&¦òÃDëÖ˜Ö<+m,iÊ#Ñ–)°ïÉâ¦‰HR¬:Ó£‰cÎ(æ¶Ë}F”A¦Ër:TåI$ôªòO¯zIÜOBDÜÇK‚²sšlJÁºR”ùŽhê>„’gi\"¡^¾´ï3oÊV£\'°¡!I–g4nÅF¹­(¥`æ\rßZp£¢†$-.):‘¢BbŠZ:R„Å!¥4ÒqMÝ„Í\r‚=) ’Ô1àƒÖˆ¾„MžsPdÕ¬~¢£*EiK3®0€9$`úTkn2yÍ]’óŒâˆâ!?•l§e ¬Qû…f$aG~õBê\rò³I\'®kjE Î*›Ã»<UÆ]Äa=²«g4ªê\\\Z½41\0g5U¡%‡+A–¡äU‚ƒg5^b$’^zR)—5MÆz\n™æÜqÎ)‡f€3îp5•2N+Zw\nH¬ÙÛ$àÐ	ÜÔLœ\ZšO½ëUJüÇÚ˜ŒkBÇÄwÖ\n‘ÂábR8\n2=p}HªXÈÍIe«\\‘v\\G°í2Y»\nÊ¢\\º¢àÝô;¨fÖîô¶‡9l6×hAr¬Ã¨q\Zý†¸“¾¡©Âß;ì2ñ‚G§N•èºn£o††d[‚>FFJëÎ±u3PÖo%C«[½’9„r»‘À#·ÓÞ¼U7J¯2ØèœT‘ƒàÛH.nþÐd•nUö Aò…ÆX±#çµµ®Þh>,’à¥»4°€æùeàá½Žy®êÞ]#PŽ÷M·hV3 ÛðÌ»G#ÅxŽ§\ZÇw2Bìñ«²¡a‚W<UQX¬å/¸mòA$hiWèòKÈ¦Yrx8èI9õ«¬mî§h¥uˆ[Æ#!WïƒÏ\\×\ZáÙ° –ô®«À÷–çTy.eHæVR›Ü\rÃ¡PRsZbé¨ÅÔ]	¦îìÍ´Á¨iÍvò2«.éY0‚À÷ÀçŠçõ[iVeŠ9D×®É¯+ƒÿ\0ê®ÿ\0Ä	{¢\"´Fx­®[oÙ¡L1èô\0ôÀõ®vâ)^Îêþö)ì®ä™NÆˆ¦Wn0xäq^uL¯Ìö6pV8»»g·• =Ô19çÐúUIcÃ/Ý‘œŒÖ½ì&y]Ì‡hmªï÷ãÚ«²€aAÈù³ÔW¯\n—HÁ¢–Fd	µ+ëL+ƒíëV>NA(§$f£“ð8®„fÁéŒŽ*å´þIcœâ«&IúônßOžyü­¥nïœcZnIn+\\ž;¦ûO˜¯µËg$×T54²ÐBHñ”Ùò2á€É!ïÛ¿Jä­Å„†PcgŒ)÷ºû~y©by®Š¦C8Bpç±þƒ¥CšÝ\r.„wfòîâêFÃÊåþQ€I5l¥Æå8öëSÚY¡»‚;ÀÑÄà¾zcÃÞº-OHÓ\"¹‰‘‘td’1(Ú[²ƒØÞ­TMØ-dGog§®Ó4fEVfˆ©V\'§\'òª\Z„p[ßÈ!à¨c’2*}\Ze·žîF–%1F]l0öyïƒU5k¨\'¾g¶ºÚ1‘‚}j•ù‰z¢KB²Î¨Å†î›FI=…t\Zfªše¼òÉ4ñÊ|ØÆOoaÖ¹&1‘ ÏËÈÁÁ£Ìº•Â©Œ.â2r@ÇNÆ±¯eg±pmuäÚ†¯¦OªÚ]%¥°ÍxT’CFÜ÷Ï&¸¦¾¼¶šDÊ³´‚2+Ò¬t{¸ô¨b·6÷K\Za,yç9Çq’x®oVÐ.õ+¶žÒÅ”Þp\0QŽÙ®z ¥É¡ROvrSHÂi`dvl‡qŠŒJ© ˜Œ×o.—oªxjÖD½0ˆÉI­rÉ1?7œq‘šáoôÉ¬eré$h	ˆëŠé“W±¢µìŠ1ƒÈŠÎypsÅJÎÄmí×š®àö¤\ri	®nh¾ ]+>tQÊªÞbqóÆ:úVÖ\'\0})é\Z°pì…ÈÏsž•3‚’³\ZÑènÉ«ùþ|ñ†_0È$É%³ÀQè1šÌ»Õ%—ÌHæ@«\Z²·£½UŽ\"6²¾ã¸÷ª³+¬­¸ä“’k8ÒŠz\rÉ—\"Ô^(Š€±9ê=ªî—«^ØÜ8…’C0ØcqÙ¬0Å[ÍMæ òØ©2“ƒÚªTÕ¶\Zlß¸¶hn¯WÛ>Ü”Ž=ÈA##ž•m Ü%Ê[Ç-º\r³\n1î:Ž•Ì4ò¢™y!ŽÞµô›„Ü’Jçc6×@üž:â²œ\ZˆÓ=âÆù´«wm‰oqµ£X¡VØ¬v‘“ÛŸå\\Þ°5m%.^ÞHÕ÷›’¤dcá]†Ÿ-½Æ‘/ØþÑ*ÛÛo1íÆÜçöà\ZäµÁI.®nÅÅÊnDVÿ\0PO÷½ºŠòèIºŽ,Þ_\rÑÓøvæyì­Äbµ‰”±i99ã§âMkë:œzy‚;f`ÐSÓ>ü~uäzÜÚ\\ÑŽ96Ý†=OÖµ/|c%ì‚r.Ä™	ùn}±US7RëbU]ºßRÕ´u¶Ò-¼«ÀääŒô5Ê]Çi¨Ùêw-pO‚7ù[‘Æ?:ÊÔ¼O=üBª©Ž[«9ÎrMf-Ã:ƒÖ»0øIGW£\"Uo¢(ÆNri¤|Ôðô0ãÞ½DdÄ^LŒ›ïêjÝ¿*T8ÍP‹Öð´œ3…~u4ÖÐˆñÎz.8#µg‰Ú<yÆ*Ù–{Òn%fBî*HÍRû”ŽÏA‚Õlš{‹¥‚ÝBÊã–©Çr* Ñ-5=}VÊD¶ŽV+\Z±Êü¸ÇçÖ±¯®Èi…‘BùŒ)õÆG­M ë&Þ{™x£+ J·:\0kÏ”*YÎ,èR[3wSÒ®5\0‘»ˆõH€”® ä`þ\'­>çÂš‡‡ìÖâK€»Ñ—ÝÓô5Î]ø—íŠÎÉ,Tãs¿…Oqâ;›«$†âeÛm\Z¬Yl·ÐzŠ…J½’(‰©Ez-R,y¶P6÷Êí›¨õÅe\\É\"On%#RŠð©Ïõµâ/´‹k}ª—?ÒQÐZÊÔun DPã\0>e=ëªŠšVhÎV5\'k³s\ZÂXe”`•¦*¬ºƒÍbá@UÂ€@ª@q×&”½uÆšFW¸2n`&­Z¢yá$mª{ã5!fÉâ¬ÇÓÓ$÷ô­m ‹±%´NíËo†U*väã¯\"¯xrëMÓõ{K›ÇF‚9Nè¤Sƒòÿ\0dÈJÆ@côÍ%¼u\'ËÜÀõü+KY\\”ºÕo—T¾ób\rkü’y\nIÉÛè=«Ÿâ;¶C\0HÃƒï[o±ÀÑ™F7yŠ ž•kÜÌq‘ÎHè+);”•ˆçH\\C±HL>Ò~c“Ï±¨!ˆ™	<9Úµu;hÓQae]U÷qžÝ)ll’îòYH…Y¶—?Ã“ÔÖv¹wÐ§shöeL1®x#\"«8ì;×C®X,\Zœ–ÿ\0mK…ƒ%‰~SÓ+6âÁâ†6 ˆØ¬GZ–Ôt`µFQ8â‘›pÙÛÞ¥xö±Èõ¨ü¼|Äõ‡rÔVë=Õ¼VÈY¥Âì-ÑkNãG³†Å3$‹|²IŠ~çËÓùæ°cgHHé]Jêê6Ò%Õ«µÔˆ¾L‚L\0GÞl;\n‰h…cÚÂY­ÚhˆÂ·ÜÏÏÓ®=*KdŠ;ÈÒí™bû²Œ`ý*Å½Ò½ú›—cGšU°p8ëTõ6\r¨K*9tg,¶âAõ=ë>VÐ\\ê¥Xt©m/-×tP—ÀV\'¨àõ®†ûÅš|ûVÍÎÑ~ôº¡ŠÀõÏzó˜5)\ZÞHåvt#œã+.{—eÊç9ê\re\Z*úŽç¢iWO©M6­rÒÍ‚‹€­ÇW¬ÝZ‹¦Xâò•X†U9\rÍV[•wfrÒ\"©4Os)ùúÄžÕ¤)òÉ°Fÿ\0†á¶Ön²…›Iup¥`(ØÃõÿ\0*ìô¯†×z6¡$šÃ¶Wdmw4›\0“Û“ùW#àè†¹ÅÏÐ!š5‹‰R#Ð®kROˆ÷²5å˜A4rÝ¼ñK Ë)n2}0®¨ò¨¶Éw¾‡+âïËáýMc.tÄO]§±÷+xjõÏ‰:†«x>Å¦¼óµ+f]Œ\"ÆðÃæRÝöâ¼”`\ZÂœùÕÍ‰s‘¸T1n}jxÛ*i\nƒŽõhb0 -¨¡§·*1P1äó@à6ßZŒ®Jy%°{úRÜ}è<\ní„Î3ÓžÕ,$Ã,Œã¸¨m¥9>§Òº¿xVj;¢×gskV“…–AÖ<úãJŠ\nì•±4ß<\ZðÔä‚q¹X²Æx#°úSümâ¤ñ¥‹UO˜Š¸RIííÀ¬›o±;¤à‰T•tn\"³Ø‚Å¹ç¦j£®¡k¥‘œ®[cµGÄ±2£jž•{LÐ¯uO(Á´M G\0ÕëÝ+9%¶kÄ2ÆÙ\0)ä×>”ß +\\Ä–6–BIéÎESv!°9Ó]éÛÛ‰%FV‘\"¢îÈíœt®mÕ÷žGµwØz\rW céŠ9\0sÉ¦àçùÒž¦´BhSÃb˜	9¥8)¹Áé@!Ý1MÆZpäPFhùM/U¥ÇãI÷zÐ\ZEƒÅéq¸{Ó\0<`ö¥4™í@iLqžÕ{HÔæÒ5[køï!}ØÏÞ>Äd~5G8âŽ”=Ccêÿ\0k¾Ôô«É<;æC\n*Íp˜ G#Wž½1Ç¥q×Ÿ?á\n×oØ`ºY”vIþ¨HüOjò_	ø²óÃ“OsÈ¶7aVæ4êàzÝjæ©yi­‘<–c¸²c¢ƒÆ?\nÞœã\Zm3)E¹Úÿ\0Æêä¬-”$`¤#¯¯&¹)5»×Ñ/n6Ã2¤„dŽ™õ¬©[3¹	ž¤U‰\0ƒ+€\0ƒƒõ¬¥Z]4)E´P°Ô[W2ÎÎ¤	9Ë•ëÞ\rð•·ˆ´­gU™Þúy1ÀCùuÎkÈ¬´ÉO˜Q¢TaºB\0Œ†Ç¦;×uá-wVÐ£ÜMÝÖ•¼¬x$Œ:úMa,G,”‡Éuc°³ðö‘áÉ>×oæ}‡zLb“nçÃÂ´¼7®Û&¦ØX\\È!‚&ª¡p¬	Àõç­ax¾Úþ}Ocp-Ræ!q5¼UËàã®*?èÚŒ:5Œ–7·\0’ª°Fîsžüb°„£í\\îõè9_–Ç°[j–·°¨$£HòÛ†§ÜK\rµ˜0ÛëŸAYº­œæÕ®­\"H®‘6Æ¡s‘îGµA¡êqë7SAqGŠ4\"3QÏ^¾†½5ËÌ¶1mìqÞ\'ølÞ Šk—Co„fŽ5`[l“Ôb¾|ÕtæÓ®že8¯²oašRÎháCÈ’õó—Å=\"ÒÏVi­ÊÉ’Á—NzWl%õŠmOu°—»+`Ý*21S0Á Ôl8¯5«3sÒaÔuÓ{pE&B®R0cŒã\0ô®ãKÕn›+%Å£G[e‚I€{ê?:u>Mmò¥}‘ÉVtàãüÔ:7†H-ï´³5¬ùû;C:©QžCøzWÉbZšû\\RVE]ZÛY¿¿µ³¿{hcÁhEOœZz%ÛKG«ù³ÛŽ#x÷íÈ#Ó¯4ÏèCJÐ$°µ·šeÝ\ZäKæãž¿ÃŠå</‰f¸CoæÃ‘M!*2}N9£RŸ4’­¡ê×ºæ£á˜m¯/jp(ežHÀÝåž„tÿ\0\"¹\rsÅ+ã=)ã·ž+3lŽûÌ„HëÙïšÚÓõä–S½m3½š˜‘’ÄÄ{÷ß¥q:×„ÛV†}WMµhG˜Á¶\\(ëŸÒµÑ»O¦Ì†eë&DðÍ¼·’HeÍ‰Ž\n?LñÔ}kSàÞiª]j—ÊªeTäÇ¸ÕæwµŠžq^Áð­¥\Z<ðéz<vÿ\0,×o6#_CëÅu×Š¡‡—/RYê÷:…”vïÙŠXXäï;p;úqY——;aŽâÉ¥Xå$cnâ½óô5|Ói–L.õ6¸3qœgžxþµWH½º¶Ò® º\"Ð\\¹È ùn<€z×‹>EnŒÕY-NÆ§Qƒ_’î-ImLÃ;¶61‘ÔWªÀìéÝ[Ë$J6È‡‡ÿ\0>k½ñö«§>™½¬r6$!]2»Ç\\wüy¥À.ìê˜EäÎÊö°²r5¬D+«;K[‹&‚´\0äÑA[?e½³ÓÞÞiâžÄ*N²DAÚ9\0çï\\ÆŸ{¢Qx^Xã \\W§Oiá¸¼8\'¿+,s„ýú.TÈ ½ðG8ê\r‰¨Iy™\\MVû¾—­9ÕQü³o\'+ cò„È<däÖ–‰m»†OÝ>zÒã~œä±=Æ1^Ot¶V—jÖrÌ«Ér›HÛhÚôÚåÔ¬4|ë—º7Ý@2Ä±ç=ó\\Õ°ö\\Ñë¹Içˆ<oa¡jÁ¾;Ë+ûfó^5Î{ë×¨\"¼ÂóÄñÜxuô™Ùç	!kmàfyù»‚;\Zæu[„’þG·È€91 \'ä•pÏy\'—BVÆpJè£…Œd6Éï¥Ž}8+™Ãá•†r¾ Õ98¢ŽXåŽr˜äcÎmD «ÏFéŠ’âêÝ-¬;YãRÇ9`{z\nôa+î	ô)9wT`Ëž\Zšw‚N*Á6òDÌ–mÜcîãÎ¢ØÒG÷I#©ª”uÐoQ¾fÞ5)›ä\0gièi©nò+Bäu×´:³*Ç‚ccŸÆ’‚adFÀ1,3šLåqž½>µkpò6àdœž:UWBœàûb´õ,G…<ÐF:uæµô›‚(à]²£ù#sÐtÇ¥cDYÒ·m­®ôë—±<‰N<Á!êÈý(–ƒØõ=&þÞkC*èp©Ž5¸™Ô`íËä\ZóÛ»ÏíRêßL´‘£ÙáK ç‘ÓŽÆ¯éúü°ÛÜéöÓ«A<&-²öíú×;®\\,w&9|\rÎ­£\0b¸éS|Í\rÈ«¨^¶¡rgrÄ\0£€3íTY€íÍ*É–ç éL/†éõ®øÆÊÀÆù`óÛ¸¨¤‡wÝê:ÓšNIJF$LS\rH1ƒÖš<÷©$ö¨@ç5@N„ßÔ¡ˆfUéžhQ…f4á#n+÷†j@*»W=úT­1Ál‘O·Fˆ¤7FrÍ\'ÌJ®<sHL\\±Ë° 3I…VV\'=Å8ÆûpËŸjlhÏ.qÆ8¦!“Ä€9Áæ¡pc\0c“ÉÍkQ&õª“ZØ‚	SÞ‹;Ž	–À8æœO±’ƒœž\rU{vÁ`3€EIR¶}ªyFÈHiÉbÙÖ/7\"D;p:ö¨¤\rÈÿ\0NœŠc\"erµ&´°†€H “‘RÛ¯ÈÈúR`ßtûŒ÷¦ÈÈ‘3Ãc\0Q¦ÀCy.ùŠŒmµBO Ô˜Ï49«F›Ö‚1Ö”dõüM3Íq ÷=)À‚I¤+Ç=)T\Zb¿1ç€\rYVÆ3U×­H2ã4Ð‚¡ÏZ`àòxéQ3i:zÓ¸‹9PÃûÃšlOÏSP¨\r[qÖžƒh\'š¤ÄÎÃÃ–ÉuÑ0»œœ| ò?2+£Õ/­…„–Ñð}ýýëÏôýLY1vPüt­Ë½WíÓ¤ˆp«éÅ4õýÛ# µ¸p7;‚1Œf´ínqÕqõ®FÞë$³ðqÞµ!¾HáÜÇ§§jÕ8˜4Í‹«¥F,@¬F¸S3œ\Z­w¨‰\0=3éTdºp:\rjšB7-/-…cÆHÍZKðÖžDŽK!ùEspÝ>£Ö‘¾Ð²,’»Ž)sÄ|¬Ûžè4£\'$T¿kuAÖ³¢ŒÍe\\•ëíVÂ2q(*Gb*âÉf¶—vEÀWc“ùWY¦nÕÆÚ@<Õl“šé ƒž*Ó%ènÛNTã=+Z)Ã\0;×/ì3ƒZ6SHàœd(É#µ6#¡G$qSFÎ‡xP}+.Þà7\nº.°»ü¿Î¡®…#vTpÄŒ€8§,êò‚ ûÖ$2àåO*ÚóŒ1ç¾kžT’4Sf³È‹Á<Ñî>Õœ³œ`ò{šf\0œVN›H®mKµãƒÛ¥F×# 4ÕŸ$ö©QcrE•R8`œS#f=:SÇÍœŽ‡Š›XkTE Àäõ¨×Ô\ZŸsžÆ (Ë‚F\rZ3ð1OÓMIŠLBÒŠn)ÀÒ)´ÍØ¥\rH´Ðê)=èíHbM#4¤ÒSDIˆ(8¥Å\0S%!6Ò*LSM¬BËœÐª@óI#Ž”±œ\0GåW­„1Ðc‘Už<f´dUyæª2˜ñg5·n¸­&ÛÈ¨Æ	Ån¦Äg(1ðF(nOj³8Î8ëÒªÈØSëZ-DP”\0æ«K&Ú¬I–lÕK»L\n21g9<v¨ŸÉö©€lœò ‡,cëE€£$d7\"ª”ÃœV«ÇòÔ\r$š\0§²«Mòž+DÂy÷ª²@rM+È#¼ºXæˆHÅf@Ž<‘ôéP4’ß¼|±òy\"§(`Š@VÏ|Ö~Î=ŠæbÚ^Þi“™ìåh¤ÚCí8â°î7\\ÜK,Ò¨c¹‰#©ë[W[þb>p\0Ï°íX—±’)Tç÷õ£Ù¤ù­¨ùº®ÁYdÙÆqõ5Vu8ÀëÏZ°­ò—”1Œ}Üt\rÿ\0êª’]ƒ!`¡‹0Ã=Ee)kbÑÙÙx¦êÿ\0ÂWš=ÛË¶¼ÈgŒò¬åO\\ÿ\0J¨úüshÐÃi%Ë]GÌþ{îÈçœ÷ñé\\ŠÝK»AÒ7l¹[Ú¬YM$±›KtŒ¼²\0ŽúýkÎž\nòKÌ×ì\\G*Ècv6çæéÔûTq‹?,ÇœjØñ,\Zvž±Ei$2Lïm8Çó®yI\0È¼)8­è58ó$Cdñ‘Š.>lg#½Mm`/bœ¤€<q—TÇßÁäÃ\'ðªy†L…ÜÇ¨\"»ïévÇDk‹¥ˆDOÈÂ³ôÎ3ôÅiV¯³Ä•ÙÄY*‰K¡ÝŒg]Uöq¶{¨oÝ5Àrdl.Gæ9¬maí¡vK%URãÍÓ‘ôÿ\0\ndú ½Ò¢³Ã Ý½AËãŒ{w¢KÚÅ=†˜°\\´šÀò%Ýç¾Á»ÐúÓ¢xtÂÓ:•$(ËÕYJ‘}A¬qsåÊ®ƒ•]£üþ4²Í-ãn|’y ?*¯g}:šÄžllÁÙ™ØðTö°iê$nÎF*K{_5¶Ã°e°95amÞ+”Š«ƒÆN\0­¢’»\"»³¸²`·4o´6`àŒŠ¤Ä“œ×a­\\ÜjP}¢îX¾Ûò\"„ÇÎyo¦?Zæ/í®bh¤ºR­*^18þ•¢iìN£-Z?1Vr|£ÁÇQï[-\r¬*Ö7$Ò\0¦26ðs¥öœuìi|â¡TŸ”Æ¢q¹qzááxõ[½>¼È%´ŠB\n§®8éõï]Ë˜\"I…WgEÏ®~µÏ|&»’çÂòB…!¸=²N@5ÙÞ½½›‰.#¶Œœ™$p¼“’9¬£ÆV°I¶ñ¿Ùº·™ß»–àÙ¿aê73ê.áŽrvñ‘×šé¼E®xi®fµµI3\"À¯P}Îkždšm–åR>†ãñý)V…Å¥Œ©l.^S*ƒ€1PIe$ ,ÄFJî\0÷ö®¦Wxî¾Ö±ªÄª”É¸0Ç$a“øV.³äÄFÌè6…w\\?\nŠsre´¬d° ¤½¨^BzŠ™åEˆ¦IbzŽÕRBsÐŒÖÄ¡Ìåß#éMy[qÈŒÔ°J±nrm§aB§Ì$mæ¤ºî;»‘MeäûRãƒ“Ö‚	Ç)ˆf8==+§ðß‡nu–ôa- ?;Á_|VvÄ¨gùGZé4OÍ¥é—6ñÚÁ1bXy¹ùAÆ{õàVU¹œ}ÍË¯©ÐYj·z4_è÷1CË‰X·n\\g¿C\\Æ·®Is-ÌqìäÉ‘ßúöç¥g\\_ÜOPÈv\"å‚‚q’zýj“šÊ–Eó=Ç)½o`­&s×½!äðp)à~µÙb(qNúÒ Ï^Ôá×˜…ÉA“ÍHJ‹ñ§#Œš´\0O\\ô£9\'µ+cõ$Ç&†2×’äˆÜ| Ž¢º;¨¥±Ól¤šÒ5„¶D%L¤sžÿ\0Ê¹2\\ífÉ“Ò»;=^ÆûHs°¤lLì>b?»ŠàÅ9+4®\\,TÔ5oíåÂY´l£sª¶p@å¿V\\v’GqsBÌ²‘·g;«fÊÿ\0³åŠ8dRÇ èS¹¥h–×³[]e¿t^5«ƒýFk×4Ò4Qr9K«ky¢ŠÖO´A³†ãPÛé‰—»YU7€WoO|ö¯_m6JOgæd”’¤gù÷ö®?ÄvóYÀe‚IdI ºH,O²£ö•*vW9=NÖÞ%„C0u\0£¯\'©k1c\' æ¦’UcÆAÆ>j°¦&ùÒ6R@^\ZôátŒ¥eˆ©\\s»¥ˆç8­‹5Œ|Êw¸ôàƒøÖuà?k `Ž¹­#;ÊÂkA‘¶SüÕëdÊ3nÆ0p{Õ×9È«Ð‚àŸ\\WBDM¬-hòó)Á\0õªR’w„Áû§œö«/  ``ÔµYøÈ94¯Ðr¹_0ó’Ozr@v tä\ZtCküÀâ®\"¤â“Ž€™R\0eÞª0ÜîéZêÖú‡Ÿj–2çÜ	èh[pì¾`!œ÷¦\\;@\Z8Ý‚¿\\t#Þ .2ë`¸s#$™mÛ”tÉä\Z­s)©UÌAp	¥FÒÈlàœÕ{»Æ™Bç!F6Ö5ÙI•&+æ€sØTf0@ÁïÐž‚Ÿ—>§¨¨Ê)9SÍJE\\‰‰fç‘ŸJ|Ò¼î3œ(ÂAI–Vç­J3Äó²ü íÎ{ÐÀlr*Ÿ|Ôdïr“Šwg‚®A«WöÁµ®Ø÷:Èy¸Ï|õ¥Ê#>C°c\'‘QœêG¥HHfÁä:dd+œŽ‡€iM,h¶ªŸ0¶TƒÐwQ+«HYUŽ3ê;ÖõÅæ.›QÚ´yŒÒIž£°­d\\\\ÆYE´\"ÎsŸz•&ú\0÷¼–™3$§‚îÇqà\Z¯ktö“ùé·*Aù†A¨f™Ig1ž½«WÃš+ë:¢Ã†*£{í*ƒ©¾:Õ%}ô(ßÞ^ê‹çIÌhxD\nq×…QEã‘Èë^³ðÜhëN¾µÂHÄìØÏÌvƒè¥øÝ§hzv§¦ÿ\0fÃ3´?¼H”)ü-ÇSÖº!EZÂS»±åÃ{TŠz‚*×8æ¦SƒÏzÁšˆV “ŠG\0àö¦8bÙ#ðõ\\®<w¦¤~4£¡­!Ãç¥\04|\ZÓ²Ô® „Ç¬ªX>taßëY¸ÏN”ŠJ±Á¥(¦µ4¯^âyš{¹åÜÇ%ªŒ›·r\rn[øs]Ô|<ÚÕ½¯Ÿ§@Ì’HŽ	ŒŽ¹ÏzÄ\'®ãóf…‘+S³ð=å”‹u¦_ê’ØÅ>Æ§$7|žØ¯l¿ðn‘¯è–Ÿe¶’ÜÇÃˆ¹•}3úŒ×Î6ËhlÃ™6Î¸í^£àÿ\0Šº‡¬a³Õà{Ë\0Ã0á”ßíJÒ5,¬KŽ·EíwÂ÷ž\Z–Æú/:[pª“¾Þ3Ÿ”àþ¼ËTµ¸›SšÎyŽë–6ñ²`IÈþ\\WÓ:‰´_ø~Ibx^7Ož˜|§Ñ½áÚ„—/5ÎŸ¬ñ£·–ÄÝˆ={c=(§B<®iÏ¡‹?„,ŸÃP_Ø]¼— ´w¶Ò•F†{qÇZåµ]*ëI¼kK¸ÂÈ\0<‚Bq^ãà_5ôZÀÖôÖ[Éâ	¾SÀ<úu=\rpž6ø}¯h¨—W<¶È»ˆwPxÒº=Ÿ:²Z“	;žv?ZSäCò1ëM tõé\\í4ìÍ†¯z3A£“Š\Z}i¤är)Ê0Æ¯9 CBûÒóÍ1@äÐ3‘Ò”øö r1FÒ$QÉ…+*‚}i¥½)¬æ€k«ð}¸Ô&º¶ÄfVˆ„ÞÅqÜœ¥r…³Ö¬XÝ}–é%Á;{ŠŠ±r‘KswT¹ÿ\0‰tb\01rpTôýp\rG¡Ü‹˜\'ˆ+Ê_dL Ö´î<9oo¤[ÝO3Oq~C[¤R¡{†sZ¾\ZÒt§×¬¬.|ØNT\\¤ä*³ƒÈ\réŠçuW#h:ž“£ØÙj>‘îNÚÓ¡ÊØà(ìxöÍ\\´ðƒØjQ.ž¡4Yæ_3q.Aç¦xæ»-9Ô[Gi¥Á\ZÂ‘å†å<ŒŽµqt˜­íž2<Æäò¯Ó5„ðòœSL9ìyÆ»áKRÐ§žÝI­å©~V1ÀN3[þÑ4&ÒêØù—{\0vv$«‘ÈëšÝ×tç¿Ð$µ°Q‚\0}£ÜV7…¼/¨éÖv×±ˆ#ò÷a[’3žN{×¯N”#E]êc&ú5ô{¥ILê¤|Êø*sÖ¦µ²KyN›ø±Î3š«|‘YZÉ=ÕÛ,	Ô²ð£Óµp“xìiŽöÝZ‰Ê™Jž ìÜ<…ÔôSq^µ©vcÎÜqøZñŠ:dºm¤ÙHÝ&ÇÎÃ-Çqž”ë¯xªëÈ\0í oµRÒFàì*ŒtÍ^ûKº“UÔæŽÚÝ¶Û¬‘ÿ\0¬aÔqÐ×~*ÑÝ2$ûž)/2\ZˆñV.cÈÊ}ê±àæ¼úªÓfëcØ´iPØJö-;Y”ÍËOG¨ç\nÛ‹^Ó.#Y¬G¹È±óÈþ/óÖ¸]6ñÓJÛbÚ)6ÈY÷{/qŠ“Ä~#º½´úQ…5\rÄ¸>ß|¤¨9NÆ—¾§¦G©=í£Z\\¬BBÅŠ€Ñ¼8=ò>QïÒµl`‚d´¸¸äœ•`zç¡¯1ðW‹õ[¯™&Ay=Ê˜±#`ãü+ÚåÒô‹ÜXÝ¥¸¿Þ[lu÷\\sNXwEÙ«\\ßCš½ðí…Ý´Ú”×©pòeÒÞ{¾õçÚÓêú=µÉ¹¸¹·†L‹T…ƒ\"·ucëJ×Ö/äð¯¨ikgñÜb[Y%!ö©<ƒ‘Íqþ:ÖàÔå‚{v³¨ó­ÐaQ€ÆF89©ÃÐ—´ïJ}ÎbÛF¼Õ¥”Z@fh‘¤eHœUÛ_K¦¼m¢Ü^ØP³ªË•cì=>µ6‡5Ä–Ó[Z[·žß?ž„†Œ½*%Ò<\rõS\'Iv¤jÀ{îkÖ­(·ÊÅ»:­;Å1x‡VŽÛ_¿6öÃ—h—gžÃ¦áÒ½G«§Æº~™¶%¢•¾f¼ôÆ;f¼*Ææ[Íj‘bÒ>A‘`1õÀéÚ½ÇK°ÔÇ†ç·´¹ó/\"„<p´ƒÊÃqÛ f¸+R§…Eëc…’ÇM‡ÄsØk\ZÌö0,»ãyP²•ÆBNq^{©Ü›ë‰Ö8Ê“å¦À8ÝëþÔnlÆ§qu+]ºåÒLÌ8Â“øcÚµ¼ðê/™µÕŠ}H¦ÈRÜ‚G­ž\".mÁ·±Ã[kÍmw&›mZDêÎG˜.ô,§¦+\'â=Í•¬É¥ÚéöP—2[œçž„vÁÍvZçüSZÅÕß…®ÂJˆwXˆ>SÏÌ=OSøW}¨Zëzìþ\"ÔìfHG–LN>\\q‘øóXBÕ+)­‰z#€–6…¯ÎàqùÒØ_^X8žÖîH%;J1^£ô¯Sñv§á7C6Ú+E<z„9x„#ýœÈ=GåáÑ hAbûƒ“È•é4öz™ó\\cHÓÌX€¹8éS%ñ†ÜÀB»p` 0?^¸öª»˜ e0ëíQ³n‡ßôªå¸®=·»ž»IÎ\r)„±\0ÓK;íßµ(rØ*H\"BÌ°–å#?;/±¨¶Í\ZT…cÁÅ7Ï‘~VcCN)%})\'%¸j[³•ôë…óá•RA–ÚpYO¥\Z„0¦Ù#À2.ìî{{TrÍ2<²3c\0×Š–WfRXryëV¯{•}Ÿ³™7î`ËQ<¹P(>‚¥…Y¢bIüéÖö3^Í1•ß!À.ÁGækU$·RŠo%ÈñÚ¯›Æ—rÅÜa‰9Î*Œöì2a—­ÊBù}û\Z»]\ršipëE g¶*“Ç¹ŽO^ô‹»99â¤ÆhŒ`EŒridQår0iåj]ÊTÉéZ)•ÈãJSÒ§Ø¡¸#ŽÕªXäCL¬ÝHÍ PH§HFXóDLGZ²»3zÕëHÞ\\\0¸\\ûÕDÚ$ÇµkY+:å~è¨µÄ\\·€\"áº\n\r²–8ü8©Â³§\0)^0ZP­\0ôïV„B¶ªÃ‘Í	b‹\'+RÉ&ÜãŠDº\nAc“@	4 ðiŠ‚÷Ë’ØŒ+¼þµ%ÕØ#qT¦V–Œž›\r‚3$E•È8æ­ÛIÇœLOÊ\0q_Z¨P’ceÁÍ]´²b\nž7w¨‘L«4ûæ,ãžƒ4À¢EË±R½\r]¹²‘v;•sÆ;S?t²±Ž-ª@À\'<Ô±2Ãƒ0Ycéü«Pž9æQB5EÚpzžæ®K)†ÝÈ\0vÁëšÉ$ç\'1Ç!wâ•V“\'95\"žõ©bÇ½çOo¨¦àŒ\n,!¸õ§F‡½J±÷ìjHã$SÖš1\"H(÷©Äxn”<ywª°ˆ\0óÕ@ üÁ¥8ð)íÜ{ÿ\0:Ia1ñéE€ˆ«Z™J”ÅV!‰â¯XE²…š_-22HéëMŠÄ^K±¬85rÂ°ÃZuü°,åmI1\'\nOVúÕ!på€n ±´“²€·1ïíR$äpIëÏ5›m:–è*W68ñV™¹rä xßp\'sÒ¥Š)ÞÝ%h¿w¿ñšÈ|Œ…ˆ,Fvx®çTÓàÓ§ûK`eía€xêp;Ös©%°ÔSštfI,ÛÎy‚©dþ_JÛÒ¢Óµ [Å‚(­FÀÇƒ!ìzû×9¨°\\ÆðÝ;ÌÏ¶s³;— #ðþUØÝGo jºlV¿j†o.V`Û˜œôöäW;›rI…‘gNÓ´‹hfKõ\nesmä/¦ìr¿V»Ò\'–þDˆ‹eRUƒ‚JÖºíbm/Lµ€²Gmqr¬²`G\\08ë\\ŽŸk&»¨Gib(bZRpD}Å\\%8I¶ôü•›Ð É\n‡E‘áìý¸ë]%¤°4jê„«r¥¿Pjõþ›“öÖªf´g»’6žÃñæ Ò4‰VÒŽ9\n0#;TÓó­¡‹RØ*m±¦2Ñù«Åi#¹­>2SÌldcpÎg¡=ª´·²‚E»vv(\Z-7ûŠÚðŸ‘}`öÆF9§@iO%	PÖÅ•³ö$S$ŽrŽ2=*¹·¸‚f‰‘ƒ(Î1Ôz×Cmgia‰eÆÇî©?w±\0Ð5($eŠ6\'†`2qíUT‹öhÉH®`ÌxNÎæ¤Žã âµv»X–¥\\’w÷•Ž4náÔÔ`ô½:Ê{‘(Ø»¡‡5$[™ÀÏJÚ6•ä…ç\'Ò¬ *@v({jíÐJå¢¥y=ø§FÙ \nb33ÄqÎGz³-‚sØVvZ\"Ú€TRÊWSEC:7V+}Me{h4JXö¥åó“ô¨ÔSÔàÕ4cwÔpRŒŠ\\ñšBi\0“KIJM\ZM8œÓq@FÎ{P\nä¢”ô¦mâ”œŠ“Kè%ŒÒÍ2\nZLRžœR)8¨]ºÔ†šAÏ­4&îGå†LòM¦99#Ò•<a†:sO Å;±ÄUysÖ¥cÏ½C#`UEÊR1«´ÛOZ–y6Õ)ó®È-	d’LÒ6I¨[Ã‘ÉÇ=©â2q…Î*³©gùr@=ª½\0eÀEà»œÖtƒæÁç5ffùˆÏçU$`$\Z1U<ÅÜ¹\\ò:dSÌ¤ ˆª„VÏš‹ÌÃ¼sÁ§g\'>µH”Éö¨äŒàñV€ã4Ç \nÁ>_éUfˆ\' Vƒ:vªs“E€Êš=§¯Z¦í×µ\\»}„šÉžqÙ¹ô¤Ð\"9¥=þ•‹yvÌ\n;G ÅOwt:þ\"¹ë›¼ÈHÉ¬jI‘¡o}n –+ÈË.3^ìúÕ#iY¤‡îþ}¤õª¦rÙÈ¦ˆc´í0+Ç[š¦]ºœÍ9ibT,áqøþ4ù­…´p<w	)•2Á:ÆsÐûý*Œeå <ŒO\0éW–\"pŠ òsÖ“Zè1ÖimŒã”\r´óý)ëŒ&à\0äƒÅ9çd p½¨·³–cÉ<þ”ÕÁXÓÓçËî¬WÒ®ê²¦ÄK†’‹s†ãiŸ§AXŠê…[FÖ®¾ª°À‡12GsÔÒq»¸‹ ÖlŸ.ö#œô©ùØÈàîõÀÝx§Ç1%T|ƒqçµj•‰-ÙÛ…º†KÄ>Ke¹ãpéüêå­ÄqI$É\Z#ØNH!¸Æ=ªtÓ¢†ã¸&I&‰Z\\áry?^Ô¶ödæÖ2±‡fGsLóÐµZ1ÖšÝ„-©´dV_ôu%Cñ‚}ºz¯{wq«m¿’8¥ýÚÆz¨ÏzóÅa[«Ï/—¾g\\.zzVí•ù¸Ðîô™>Ñ:BA‹dy(9ÝžøèqT©Å»‰¶‘kkGj–±˜æÑ÷g^ÄtÁÍGñ	CjV{BVÑŽWhäžÃ¥gÛÜO*ÛJ%Ž´\"5Êpã9\0ã®¯­CâIf:ŠË 9áGEW$mÆ?<ƒKÙò»¢”›Ðçß \Z`\'•<Ô¼lÈÎjpßZ°;/‡g^¹Ö%Ó4}KìBhÌ’».à\0ÀÈ¼×¤§Ã.¥kšÅö¦ùÎÊ¯ó5Ã|\"¶žO4Ñ\"ŠÝüÜ÷€\0ü•{¹éYÔ©(»\"’V9+o†þ·n˜’2¶w;±?Î³¼C„´fhô‹¹@ÄDPœÆq[Ú†³m¦™­ÄŸ¿Ü\\l*È,Oð×Žx×Ä—š•Äð›È.!Œ…Y!] ñÈõ<æœc\'¬™.Kddk\Z·ÛbÊFw^A>õÍÊsš|ŽX’O5¸POr*Tv¹\'>µ$áv®àFqŽ•O­I0Fr8¡”ˆC\03ÿ\0Ö§Çne°ŠXT1tK1ãé­ä†{÷þ˜`b…¹ùzñÐRDT8i*:ÜTê$%ÐIûÞ•(ÏÖ’i\'šé]ÈÝ´°ATÉÆF9§‚A8éN7d¨äžiÙ$+€Vp9S\n9=êmøR¬¿7®zRlg*<T¦2 žõ2ÆpTæÝ¡Û¹C\'¯­0‚9Ï©;ƒ\Zg¨R#½)ü(Î*‘\"žiÝz\nw_JPÞ¼SØ¢-–Ï­=ØéQ9¤1KrxÏV¾¥ßÞÆÿ\0e„¾xÆÜîöõ„[#¥^³Ôn,ðÐM\"ýÖÅeQI«D¥kêz¯V´¿°0¡½²H¿êÁÎIú\ZÐÓµ\r.Â[Å¸¸T™~\\ ÜìW¸¸ô¯*‡VF3É™#¸u(äõÏ<æ»-RÓ®ôÇšõ`Ó¥ùŒWN¸Î:ñÜæ¼š¸Y)9¾¦ðŸCbÿ\0ÆÉy¢ˆQšê_–8Äx-Î;s‘Ö¸MsÅWúŒ°ª—`ŒE°6yþµB}vim!û- €Å×	œ¹í×§áYj­31w,ÇæbOS]Xl, ïb%6ô­æH	æ®!y¥XÓ€¢¡·´’U\0 uÏ­JÐÉo\Z³‚…Ú@ëïúWv›Ü¹ /†ÔœœóÇZlŒ%“{(ÑŒýjŒ—\"¢’>LóÜäçšz>Hæª1Öâlž5\0{æ¯Áòœž8íTb8«°ÉÈùsÅo{\"$ªÒDÈ¶ƒœúÕL°\\Þõª«!³Óíª•Ñ~Õ$àcqj#4Ý†Co–@ƒ\0“ÆN+¡‡KE<I d‚;X0’¬6‘‘[¶—FÑ÷a‰eäúçÐÒ«&–ƒŠ¹^ñZ8\"f}Ázµ‘st¸Ë(\'Ó5¿ª‹r„r®7dŠä.f~yâ¢2ºÔ]Èå•lÕRÄäÈUÉÉ(¨\0ŒåN@â®XhÓ]òÌG*±J0(ÎÜö\'µ-ö\r…$Îì™ŽÐ\0Ï¥*ðjK˜DRÅ[pÈ ñŠ‰°ï‘P÷)2LÆSd›‡9OÂ­êiav°OèÀ1y2¯Ç\'¹ª–òCáåŒJƒ’„ã?•IsÇ!aÕuÈÏ’Üw\'ÒÖ©Ò	î’Ñ\nÒÈ¹8éÏµT½·†HŠG’2~V+Œý})Öñ#&ég$ñõâ«ÊÅe8pvœS}êõ¶ÂêE»h>Ýê»±fã95<ŒYñòãÔUGpîj\n,Å)F[ES¸;Ø?*)c’sN*C\rÝècDA6…pA¯¨­m/^¼Ò/ ºÓŸÈ¸p× ðAø5œÛUO4ûHâ’çk¶Ï½Mú·¥ëSérÏ%žÉ$—\0‰c\rózNµ\ròI©é’]]_·Ú-B¤P:’Y2s†íƒÚ¤†îÖ›b&#ÉIïÇqÚ¨GpòF\\üÜpÃÜÕ{YlJKs+¨8©TlA“’i÷ÆÚéâÜ¬ê¦¡,r8àRz–Ø¤¸ÅH\"ŒõÅBY‰æ›»\rÍ!\"Vä“šŒ\03úP>´áŒb‡ îFx8íëJGCùÒ¶Ö¤E\n¥‰P;“CuuFnfH_ï\"¹\nßQÞ´ï<1©XhÑê—ví0T/Ál÷Ç¥dÁ8†dÆ$\nÀ”\'\0OÆ½G¸¹ñ|©h°‡‰jÆï “Ó\0þ•3”º\n;êp³XÏj±;®Dƒ+J±ý¥t–ki.\ZbÊŒ>é=ëÒãÐã3A¢jÖÒ=í›2=ÃcC•ƒuÚ¨j_ÚIn¾Ê|´€‡xåm¥c?Åß§ztã9+ØNJúœ=¶§wiÇo<ñG\'úÄÈ\ré+¨OCº«Éå¿”ÂªäÇäÉÐ0ûËõ®f}&âÚ&&8ÈòþlÂ£¶ºò¬s+aÌh÷£°;3é?†Ú›êº2]Ç5ÔÐ¶RC;‰\\wô®ÇQ´[í:âÕÈ,e2Fq‘é^á{í~Â$>¹·Ø¬ZK0>wSüMÇLñžÕÞi>%ñ’ÛÆ×úPø`gÚ[ ã ãÞ´ö—’’Ü„¬¬x‰´É4½fîÒeehåeù—ó×†0IûWmñêÿ\0TÕ£Ö.š—+…X³òcŒ:×üŠÛR5gÎºšEYJAÁëïL95BÉv§0Ýj5#\0üÓsŠ‘—ž(Æ~´p\'ÀÄœ\Z~A)3Ži\0ãƒHWžzSI÷£qÅ\08„4Ò9àÒ`u¦fšÂK#c\0¿wž•Øi>\Z¼Öô—½Ó/^æhÌ¹„ýèÎp\'œâ¸¥8ÆkÝ| i\ZŽ—±¢I,W–áXÀeå˜™w>µ.Ñ nÛ˜Úo‰¼UáÕ´‚iežÑÝŽ\\KdàÊ½7Nø—–òÁ5œÖ÷jBÆ\0ÞöÉªžŠ}mJÒÊsxÒNWôÛÛÿ\0­\\V¯{¨xêêÃÍ;d):³FXsŽyÏ<5m\\J,öçº‰tÈáfxžH™°œŠBISF¶<”¦)ôt#<â¼êÃÅº®·áYçŸKUqrÃ–àž=*=jòçKÓ£\ZŒ°˜íÐ©µ<`Ô\ZÓëÉZª&|«c§ñµÌbìæ¿–Ü5ËsÖ³tý/FÓôä‚]¥á8™›å™IÎ@=0+Æ<AâëýCdRO4‘Æ0¥ûûÖÚî£rå¤¹‘ˆÉnÕÒÛ·+Ø”£|MñÃÞ„\r3ìÓ_2(o+c\0šà`×.~\"êrÚÍ©­œVí38Býø¯(–£	–Eeoãp=Ç­v^\nð¼šÒ‹¹¤Ë\\í‹vmäñßÒµŽ.4¢¬¾b•;œ¦±mµä±Å8™Uˆ½ë0‚EzF·¡\\Ü4±Å¦ÛÃ\r¹äˆ\0NxêzÖ?ˆ¼+i¦é6×0I;O’—*ÀmVçî‘ÔTÊp­&ã ÓqÑƒùWâchÞ3‡dæ^ùúRßøbæÔBB9À™øŒädsÐ\ZXã½ÓeŽàÀÓÀß1uÉ§ª’+±Òn5½fÎòËNÒ-WN—10¸$íÎHÇ¸¯›œåNÎ;\Z&r~]‹SIôkS-Ä\rü*õèzËkw—qßøÅŽÑ![Y­\nþíÏBøÉ ž)Þð³¦Ç5âß=”Ñ¹@½VNø>ÞõÜ³™(…å\'ï šûˆõÜ>íë¦õØ¨­×õoN‚þîT7Ÿ-œÉ“(·õ®Rt\rô5è¾-Ó.|;âIuD±µo&ä¶dÂþïL}+×µmRXeµÓ¡±ÙÖHNCõ®Œ$î’ŠÐž¥{AŒ¦ØJ¶ù+¨ã\'€\r6÷@¼ƒJQ•ì®æ5u0ìGQLŽáÒÑ Á\\‚@cƒZb‡ÞF	×µ¼é¾kÄ›jjèú¢-Œ-ooÑH7JÛ¿z?Ú9ãÑ^øúéõ]>{yiã…­§FŒÊOlu?á\\Þ…¥ZÌóÉ\"BîF¸l+)ã u\'<ÖÈðv©cc<vMky1˜*MnI’&ç p®\Z¾ÍJÒa°Ïk>&¸¿o´ý¢8 \nm+µGL€NÓV<ã…ÐµWŸSŠYÖçjŽYÕsúÔš¡ã;µ¸QnÚ‚±6ò³®ìçŒøu5™âo.ö-âÅtÛ›0	ÃÍ‚\'§×µO³…KÓšB•ïs¯µñÎ™¬K}£Þ@án·ùs *Ï&~RèzW­ê:Ž{¨h²O,¶äˆ~}½Aúó[Ú„íf°Ó…¶ ZènÜÓ:ò%Cgl×\r®IlnwA4óü 9œå•‡žG¥:a{»\rÜ¡¿1€YŽ:\n«0ÚÜÒ¦òNÒsØ\n$%ÀìÞ•Þ•™³+J‘Ï$\04ß2œ{R›\\°T\n“¡;w5nK —,FÜ3À¨üÅ@CfÛæÉù~”â\'rƒžô·z\"5RÇœr)e‘“åU!‡LŠ–7gž˜©Y³µvôn)«u\ZÜª«pÜÈƒkTñ¢à¸aÜT’¾rtèëI¿w@©]­ÈiS·¥IK#¤0ÆÒHÇª9&‘²®Ã…=;\Zµ\ròXÌ%ŽÕKœçyÈü=)(”’e6‘ƒ,N²CTö¢IœO£<Í*ù’;ƒïTœ‚85Ñ€˜qŽ˜ëHµFŒ9òxÍ?!G Š r“Ú¢$’\nýày­K{EuöÍ=ìU`çš`eºe³¤Ó\nÈqZÿ\0fUb[œš\nŽqÒ‹ÌSo¼“Í=,òyOó­3Îå\\zñOÆÜnzÔ…Ìå³}øQž+BÎc=«p.8ükV&oQœqTª_;Í^k]Ê¹8¤Xv•Á«¡$½Æi’fIf*:ÖTÑ4gga]SBVÏéõ¬FßøÀø¤3Ø§òà}îŸZ”FYÊ¨+ŽÕ†I3³·Ò“\Z5›\\ÚµÐt´œOóïE”û~¢ $’crv·qSÃ\n™\0ÎÑïR¼Á–äÃÇžý+\ZåT1#‚;z×B ¢aÆæ¸¬­_L’×L\"|ÍµvK{ŠLÍÝJd—È*A¥ÇoÎƒ×ŠhÐr\'|j` .ã×5\n·=<¾[ò¦Ž\'\'4åQž”Þø>µ2ôqTHŠØâ§VTÉjšÒG¥4¸²Å.õ ±úUxYJzž´»LñLDÑÈ\"Ë6	Í#¸|¢¢‘€<Uc6Ày¦´Â´~`ÜqøSIÄ¤)Àj©çdæ¦ƒsÛr*dÆ‹[ÕGËÖ˜ HÂ¢v°zUË\\¤`…Éã7#ƒí Ò,¼˜ñOœÈÓov,ÌrO\\æ©>RV³I2^å–`H#­\\Š8‹Æ‰-€Ià)÷ªH¢@£µ,äkŽ#°l±a¸0È#ƒôýhw¶€‹ÿ\0ØºµÖ÷¶$dm1òéë]æ‹â«yu$¶â9|½¬íû½Ž3‚?JäáñÔðÇ%ÌÎ^Ù‚Áüª9+Ç½vk‹4Ï´\\­¤zŒCâ?< Œã‚p~¼\Zãœ¥ûÅ Òìjx›HÔ.á[ù.âž8Ædù”AéÏ§áPè¶·–ÖDÆJ—>ÓÔv?…`Þ7‰<)*ÚÍ;\\[4c¹ÞŒ‡Ó5§áŸYÀKlDì<°	Ê¸\'œúv¤ªû&¢îº\n1Jzž‚-,`ÓÂFing‚pHä•ÏM¬>¸CåÅr†9Xç¾ÖöëŠ¹¬êm\r¤PÅ•šg]¸;š6ÎðÔrXÃjðM3I,R¶c`»‚FÏNk†œäŸ½ÔÞvOÝ2µ[è¯o<ï˜Æ»W\0c·5¡k¬É´X$Ü•ËôävÉÅfMiÑG<)Ã<­Ÿ0\rÈÀñîâ¶tûû óÝÜ7›w6<ÈJä0ÇcõæºdÜáe±“‰•>¥x·Æî]²#9À|ª©ôäç5ÑhZ„JŠUy~bñ°8ž£Ö¹mwY^!·€ùDçd)·áé­ôÓ%Õêft]ŠXd‚sòƒéÅkKŸ–Ìi£«ó bŽYJ,A+¶¦·Žc4ãs«1ÚXr S.­-5\0PLUÁ%ðíVÃC§ÙùhÞrãr+¦×©2EK	ãµó#‘‚—:V¢ùSnøÊ›#‘¬™CIu(ÁHàô­´%Ä*Q°äà€¹éÚ»$¶fQÑ\rßf¸å¢ûâ´•–ENA¨–Ýx,ìÀÓŒ;Ih¾Vî;\Z‰K›rÒ±(íEB% áÁSRÔX@NIšˆÞSÙÆx 0üiêfìÄ\'ŒSq“š‘BŒsL‘ÔiGJ\\R\ZBbž:\n\0§RlÒ1°Ò8æšüSÏœšOaÔƒš`©¥6L\0RRšLTš:ÐËšSÒ›œž)’ì´‡Ì3ÐÑÈRœgM#ž	=2Y·ST§“šžFâ¨ÎØ­éÄÍ•¤|±5ZGÇÍÆGjYÛ\r-µ¸ºdŒuc’Ýqìk«d\"›Ý—³ä¹þ,õ§¼¢#°:œ¯\\cÿ\0­Y÷¸·»h¿¸H8úÕf¼òÛi`¸<“LD÷ä’HÍTiLÉ‚Ãp8¹ªSÞ‡vÃgž¾µ-ãÂ“Ÿ­;6ewŠo*\\«/QéNIrzÖÞ³HY‰,y$žµ=µéÜ7qLW7ÖP\0ÍDó‘žj“Ý)AƒTnïÄk»4€Ó7Ö©Ï>=ëãYX¹-T§ÖÓnwƒíš.\Z7³\\šç/nHlwÏJ†ãYtb{k6YÌÏ¼½³Ò²”×BÒî%íÆ“Íd	CÈ|â¦º%Ÿ<ãT!\'¹g+³DNÃu>´‹èFiT“Œþ•=¼&Ip¨Ì0x^µÀrÄAÏZ³p£\0ŸÂœ¶áIS\"«¸n8Î==ë`ÚÇm£. ¯!Ø¨ÜsŒ’æ*[°ìa´™lžµrÝïS *ZG÷§Û2dyP•L*óŒ7­]ÆB¡¤!AÏ¤tØäÅ3æ‘²£\'ùÔñ\'ÎÀŒw¨¸¯cPè_ñMEª¤ÂBÓÞÆc\0pO×5Ÿä¹°­ñD‘×ëûÂÞ«6\Zµ˜ÍœRÊÃ\ndè>ƒ×¾jï}„·ÔÌYYXG0fuáq·Ò¬YßÚ•3p§ï9É>ç×šŽõƒM+“òÌÛð¿Âj5dH0ñå³ÐœÕÅ&¹o##¥ÊI$SFÛ›\0p	þÎ¥ŠÞî{ëÈî6`Ëÿ\0™Á=}ë>}A¦Š(¤ùÒ)îs‚{Óîµf™\"*62ÇåA…Ú;{þ5MYè$îhXêV°iZ\\Yo•ÀØKco9Èý:oŠ%üC,¬!]ÑžB÷ùHã¯âk2Úè.ÖŽÐ¸^øæ‹Ë¥ºœob#^×äÝÐ–›•	€ãõ} ´u‘ep\Z5Â´|î4Ë{;iî^sÝ’3Ïj†B!tÏÎH¬¥+èŠ=áÔV¾#¸µwù®-ÎÌú©Î?,þUíNÛ¶	ÀÎ|Á£_^hÚÍ¶¥e¥‰÷\"àáûýkÕtÝGÆž)ÔŠ8:M–2ãÉ9QŽN	Í9C›Þ¹\\ÝøâòÖWˆÝ@×)ˆÔ€B²ðIë×ùWŽÜ òÕÎdüµëž)Ñ…¤‹g¶fŠ\"óLË±KgÛ¿ZñË¹Hrzò}ê#)7©6EsÏ¥FãsRÆJšùcµF2@ÉüSc±D‚8Å!BØÍhDÖÞ`IÓä@y^½DÂàWÉi	ÎßJÍÌeeýÔØT¯ó©¦”0?.GçUË*¶2s[öW°¾4WVæF\\˜=ò:”¤ÚÔ¤b2²|¬qži§+ÔqïSW¸f$…Ï~¸§É\"Í\nÉg¸w$«·<Ž•nÒÐ²‰Ý¶Âc2A#Ž)!‰DárÌ„ãrŠžK&X]¡ó™K»f×úÔNih4®6H;€ï,žÞ´á$*ÅíÃ/<†ÇJÐk»KÅò¯oŠ2‰$I´±Ç½zV>À	Áã<TA¹hÆô&¼¹3±Ú¡PòtS=½iîsÓéL`IÏé[Æ6 ;ÐTSzpx4IÈ?•Pãiã5aŒÔÐ[Íq*Å\nof8\n§œÕI#a†`ö£A¡|ÔÆ$÷æ¾™»šB8nN($gƒÍ ¸Ï4ð£jÿ\0	ÏSHäŽœcœÐLÃ9<÷5!E$°9Ç¯z+9ÊìïŠ4°Ù±¹{ÿ\0÷ö*¬-oæù€ìËGLúw¨ìm\Z{…‹k[UFsPi—)o$ÅÕ	x™FåÎ¨÷÷¯Rð|º%Ï†Ð›(\rü€Ádœç‚;çéé\\8Š¾Â-Æ%Ås	áïØ\\Eucwg$lÁ^á·c\rrÚö‘yo0K¥òB#œ;W£Í-íµÕíóµ«=¤¿¾‰÷1UãþUÃx×Ußå¥ÔMÊ˜AÊýÓ’}ëÏÂÕ«*×îm$”N,ÂÊì¬0}*D#¨éŠ’I–-é$[¤#j–?v¡öüØÈÕïÆG3E•Á\\ô«š}È†C¼Fá…QerÂÅ66;‡m¦¬OS¼¼²Y´ÖÂ(q–R;©ì+”–>p0Hâ­Ç,\Z|Q‰‚û€ÆN~¿‡J§ï®„FüŽ=…sÓ÷YrW*¡òç‡\0ò+L_ˆ£ÈÆ59HÏ\"©Þ½¼²nµFG&©2@Îý+¡¥$MÚf¼·ÒEdÑ¥Ã–a‚	è=>•ÎjÒÁ:Æ²$…”1ÚzÚ­ÜÌ¡Hžx5AÙ¤n9Ç†Å\\«†Á,Å_²Öæ–Ø@Ú¿›&•1¤¸mÅ~SƒÛ§5ß ‘Æõ;×K«^C«Ü¶]Ò“†œGŒÆT|­ôÇZ9ùX­sl™27m\'€}(`7Ž	­yl%ÓeÅ¶æ\0¥Kíá”÷éYsº„$)\\õÍO2{Ö\"eÚûÿ\0Jítï\rÿ\0jx*]v+ˆ`û)1´*¼Æ\0’[û¤Œtâ¸7›ÌcÞ®Zk7¶VÓ[Û\\4qM÷ÔéT¼ÃS£\Z¶dÐê:$Ok¨A%‚ì‰c—ràí¼çšåäònØGmK‰d\n±ç®}ÏE¤rIóƒOHbyÄlbR|p	éÍZ••ºˆäŽDvFùH<óšJäRn\nÄýáRŽ¼ü ô¬ÛìPÍ¥#H‘Ú¯ÅqmŒ©,Aæc„pGÊ;Öt²½Iæ¥¡ `c§ÖŸ20 séŠfw\r§¡?•[…#i´à BÙ¡ô©z!ƒµˆeÃ{Š½ga>¥¨Ákf‡3¸Y?Ó5L¡•Ë’zäÕ›[»»˜dŠVÍ»nž¥¯¨í¡cÄ^¿ðå÷Ù¯âÁä¤ƒ•zƒX›@ûÕ¿¯x¯Xñ<ÿ\0jÜ,†Ûhü+_‘ß§5¬ùoîŠ7¶¢1È5ÝÇå9à÷¢@0jK°Á€q¸qK•#ål°ôªì0Ô.éNÄ–ù°ÜT‚zU`I9<Ô›†3ži46+qÒºÿ\0êÚ–¨-ìA‘.0²Â\0ùñëžÕÇ†bºï†zÔzŽ´ë«…ß	sûsø)¥}žÇi¯[x¥uˆµVUå,Ë”0(1ò’;qÞµ¥½Ö<]ì:ÕÌº<p &Þ(ÈÊ‘Ç<–½©a‰cýÜIƒócn2Mcx“ÃðjÖÑÖÖî&+€>ç±õÔÜc-\"Ú!.çŽxG@‰5«fG¬—+$ñ>ç#ðç­ø;L‰åm>8bHÕ7î!ƒ×ÜúŸz«£ß‹¥¾°ó­`¿…À^B¦ÝÛéí]…\Zß\\²¾Óõ;[).bÜ›X†|zþu7«Mû9\r[sÄti§Òue-s$p¯ËçÅî¨=+ÓcøËöˆ®E­ IÔypÄíòìƒžíšÜ“á}ï†¼´ŽtŸs»ð“‚Aöí^/ªxcSÑ5WH¬çcÕ£\'ô÷éMS–²Cºgq/Ã+ûúëTv÷mæÛF$Fpù=ó^=<-Ï‹‡F*ÃÜWs/ˆõmsT¶»šFK’Û1$˜ˆí0z\ZÄ\nÛéS[jú|‘µò)dWÜc“ þ9¢æÛ+lÏ=_•Ï¥6BÓØf£sžq@Å-Œ\0x¦ãkHO¤Ýšc$Îz\ZLå°;R.NiÝ9„/EÇZ‰ªLæšz‘Ia4qŠxPG?…7nXÓ˜ÏA@RO½N+žÝ)¹\\ð9¥q65Q‰Æ:UÛ;û«&A\rÄ‘`“ò±\'ƒÓÚª)9§¸uæ„ÚwBgºøZñYÍisks!\n’Àä&Np1“×ñTüEáMÄ-{¨kSCcö|ä?%½\0žõåZ.­s£_Çwnø–?ºIà{×¦ß|k—RWVÓ#ùr1F9ÏQÖ»èÕ‹ÑüÌ%ž‡£øSIòüŒ¶¡CÄ#ÚßÄN0ÞÙÍp>6Ñ¯|1m\'ï\"1»‚‹‚üÇ=ª¢|\\½´ðí¾=¬rÜD£¸Š\\| äíÒ¬øƒ^ñO‰tÅòôÔò/Â¸ûÆè	æ¶¥Û]	wêy]Ô÷w‡o?…z\nßðW„¿µîÛ,äu–-Çbî÷?Ò½‹á§‚—ÃV·2^‹[‹ë†\\«¨Â.àžsœä{WOu¥éW3ß[JžD[•Á·pç>ëB<îýsÓCÆ<o¢A§iÐZÇt×h 8r£ä8ÆÜJÍðœ©ki\ZÚ!7r6.@ažžÆ»-}4=ÎïLY\rýÍË‰0¸Ý;JÃðõµ®¥«ªØÚlŠ2w¬çj³c¨ã­e˜QQ§x—JwÑš-o>«bºY`‡ÍT-4„ùäé[^%ÑôYt™´}6îÐÇ¸«>à¸3ë’jŽ°’êú„ÖšrG	\\ËƒÓ?ýzØÐ>ÿ\0f[Ís©47K9ãœ×ƒ¹¨ßS¢IZçÇ}w”qµÓã6®Äwæ»¿\rê—^Q­M<3Y²¡– @|÷‚Ž¸ï\\‡‡ßGkjVÒNð–`c•WŒ`·?xç™ý§k,wòFÌÄ*Á0ãf<{Šç«EÔÐI£Ü´ÿ\0ÍâhÛxzKx­ÂoškÄ dzZ–kSP»ûvµ\ZAgn‡d¶®HlŸC×µy—€õI-®„R_›{XƒHà %‡CŽäà×£Ú]ëÈ—VÖIg‚#–íŠ³ íç¬*SäýÊz\n÷ÔÇñøñ‡æ‰œ]YE\"…¹òöË±Ïå·öPÛJ±Ãr³.3…Húæ»mSVºÖ¥šöÖÖW€³Ì@D‡=pz÷üëŠŒÒ—$n\'\'µvà©Ê;²<Ê^N=jâÛYË¥Èë;G{Ï–Ãå‘=b?Z¯­Žž-eˆ	‹«¨äät>ÜVkJƒiü+¶íî„SšsµB“¹sïÅtºol.í´®.g±·?,1¹=²{óë\\Ë…i²À…Ï8¥žÞ8ä\"6§qŠÎ¥ÔV’ô:?kvºýî©£+ˆÌ­pÐ€J\0OqøÕ{›Ý_Åúì’NÈogPÊ³,ÚúÏ{[\\2$ªU‚·P{\Z|Z|z°³ùr¸î`;f²ö®ékÜLê4\rhwö\"{›¶yÒp²Û>@N7+g»øsÀºn”±[Enª$—d¤Ì¹êÃ=}kÎ\'³ƒNÊ[É¥•×9€‚ê\rb›»‹åHí&8òGµ.I¾ ‹÷þš¶ßX+Í¥A7–—G#µcÜ\"FÁÈmÍÈ÷«Ësr–ÒK©Ëxi-÷õ> tª-¸ì(ÊOqW+êGRwˆµ’Ü ÊŽÔ\ZŽÒäZÜ¬²[Ç8^©/Ý\"–Ú9ü·0BÎ3ÛéQA¸ó\ng\'‘T\";òÈ…A£Œ–\\Ž™æ­±ó3)°íHê±7ËÊH3ŸJ´ô)‘&S;FF:SãtgPI¹¢2Êp}é\nnpÊG¾M	6%Ü‘ÕXœtÏ¥ŽùÚ£Ž´,‘µ»,‘\0Ã€Vº??‡c“f´³K¿.Pcø³íWÚµì\r˜\nøÀça\"™+L·Ý^8®¦ïÂÖ)â‹[}M.4ë·]Êœ2ýáê+ŸÖá·µÖoììå2ÛÁ+$r0Á`3SNKšÂWLÊfÜ Á­EÊjTƒàt4Ÿg%TÇÔš-ÚäL¬¤5YŒ…\nKqžâ£F·•#¤òGcHÂFrVàoÚÆ9©fççJÑÊÆ	$ÕèÃ3nÆj„WuiçR$G#š¿AØ\r¿‡­[6˜à©S—¹v;Áç½K&žÄ.{ýkM-ÌgåÃŽF;fæïô¤*ÛÉfB×­kÚº†ˆ€Ücx\'\0ý*È´;zàzÐ¶Œ„p@¥a\\Ìo7È‡Ëþîz~4‘0`O\0ŽØíR¤%¹¥›†z\Zv´ÄK6N9¥¼Ñ.­Ã¡ (œqZVj,²07žCmÉúR_k2cý‡™¤Ü]ðŽ€T»ßA£”“NU`Àí=½ê+ý9íÈ%ŠbøÇ”wg#ÿ\0¯[WSÇ±R2W?¼k>Õd]E£óRÆ7#¡§4äÒˆµ¹—ý—tÐmx%NæÊvõ éÒEÌä\0X¨\\óõúWS6¹. é*“‘‡bÜ?ëRÞ¼jööóìû<˜Ì½zŽõŠ›ê†ÎvuÆ?„g\'¥bxžò;‰¡HcÙHï“ÜóÒºPÙF‡ì{Îs±˜öúv®Bö2ã¯\'­kmLwùI#œÓAÂôäÔyÀéMszRjÓ§Z\\ãžô`úÓqž=é c—¶jÀ~{T@ž)Û±@‰Y±ÈRnV{æš§ ç‘HÃ	ÇRiÜV$RÓ4Žä7^*Ä¼\nkHvŒžj®Í1fÔ%‹i	É4ƒ­\08;Vµ½Ý­¾šÊ¢Qv[©ÆÍ˜ôëšË‰CH2pZ•T“ÝFj2k·{öÌ™ä/\\zÔ“L¾yîhú+ƒOK>Î·¬‘7ËÃc¯5(\0­ƒÈ>õV#k†^${Šjn•óŸ˜žõ11=³I\0,Ûp«ÈÍ;‰–íÊ£ì%x9È­h¢ó6àäÒ±•9Xžx#½kÚÉ„VQ‡qÔV°zîO(b¥~\\‚q]ßÃë–õ¤³’íñ»” •#¾k„Ê1,$“]‡53c‘´Hþc)RÄ¤¢³¯IÔƒŒJ§$ž§·jV0ê\ZTË¨EW0‚é(äzûŠò-NÊÙµ.ÑcF\0,–ƒå>kÕìµQ}¤Äú¤KnØ®Ç‰;CëTµ\r7K¼²óoA·B¥‘v=«Ë£9P“ƒF’WÔó+k\rkOÕ¢šÅä¹x\\¨œtÎ*ýÏ‰®>Ñ¶HåÙ·L“§<j]/Q}6êFF\'ÎB¡ÃaÔ}kr\r¿ˆ,£½¸Sµ‹ºVË.;°<ŸÂ»gËU¡\r«h.‹q\rÖëK„\rø8\'•^˜¨¬b†\rnãNL¼e°$_SX÷Zf¡¡MçÃ\"][¡Æä9ÇÔu§£¦^h¾mœ,/FVbÍ‚¹îrx¨tãkÃTÁÊWÔÑ¼ÐÖÞçd\r±Ë™c á—oMOv×6kWÀ$‰²\0ä¯×Ú¹¹ÍÍ±Ô8…Îc- nsÏ=¹ìkp5Ô¬òÜ‘$ùYU qÍoN“®îCjæÖ‘%ÝÅÙžL¦Ç<ãø®‰u›Ä±«áFzŒÖ€.Vg@JðåNº¡S${™pX¹^þÃúÕ½$ZwCby†cû²¸8ÈSŒ©®ÊpÄïSŽ ÖeõÜsyÎ’Pá‡¥GŒ\"Yƒg.=k²	I\\ÂW½Ž–”š ªÌð*ÒÊ¬›ãëXöÒ¢È€HU×Ò’in£`sæ8÷¨pMØµ#láüê³°TR=zS-®ÕÓ!º°\"£•šIY•på1˜Ié ç—i9ëNWÉœò³H8#ëWíÙŠŒŽÕ¤£dcÔœ“O‘V¤±l´®\0RŠ\\QŠ›š$%.y Ši84\r»\nOjaóNÎi1š2ÔSÅ4qO¡•ih¤PÚaæžiÈ5HÎC¹Tnäø=iXâ˜Ä\Z´ŒîA+f³æbI­	T‘T\'Èºi’ÌË©1S-üštÞYmêÈ>æŽ9¨&`Rk?XºŠ+UÙ$r6qÂà¨íøÖÖOF+‘5êIwqsuN$ùUAç=zVUôÖ¿d{qºrÜÅ·©<äoJžm^(4v†Úè3¸ÚË´«¡ë‘ëÒ¹)®eì!Š1$œ}ìw­,\"ÊÞ+³`ã˜;~lÖ“”rÀÕë+‹‰‘­¡‰ZYÔ¼íê\n“ô©ºBôJg–@$E(›°ÍÞÃÞÝ,ddÖ9™ƒî\r†ïQÜ\\0žqIÉoí¬A&³µ\ra\\mî=\rs÷W.[ àU9dY#wó@#¢rk	U.0¹«=ÿ\0˜9äVdÓß+qPÆ^T;1•<Ò*–æ±rm•k‡pÉ<\Z¸&\0n¨æª„\0S¶œtÅcfÜx…Cƒ»¸«&O,y÷ÅfÁ\rXKr>‚¯Y£C2Íå¹… ã\'¥E\Z’‡o^•¥¦AoöišåÂ˜Ç\nFsž+)=©6¥¶Ò@òÚ¢”1·~¾•Z1çÍ—WÚ‹•TNzb¤óEÄŽ±¦B}ÅÇAíZjWZ}¸òÈ{õ\nöÄÔõ+[û{i-¨Ë\"¿&>QcÞ±­­%›å`Í’\n¨9<÷¥¹–kÛ–¸˜onøí[wÂX§†XîÞEteÆ=:§x¯2·‡æXË9Œ©\0Íƒ¸{zÕ8¬¤¶¼*Ì0\0$ŽF+¤¶›Z¼.Ú«7˜Fð€r}ë-bº26cXÝ©gÇùÍgNsmó	¤?Pÿ\0e-œÎF?”)Æ9ïÎkìÚwg?ZAæ¤¸ÈŸlPÉ\'’k¶œlCw®Ì€1r2)\\ä95\"@3îi’ÄW9•mk¨íŽ¢G2·\n?Â¼\nY\'’1ŽjyVÜÀâ“abu†fF1©pƒscœ_¥7d’¡#m“JÛâ/®\n¹ÉÁÒ¢g•	ŒåAä­Còêì àŸ|U«Q<r¤¨à}9¥Ñì­µM-çàY3µ•wöèIáL¶Žqz’;Ä³¹Ü9Ú+žµxÓÑî\\csÂðMyâ+¼†ÙŸƒŒ‘Î	¯NÕüYm¥éòfO·´Ct¸ù=\ryÔ3\\[ºý™Š+’åÈè£Œfºk6]^VK˜0öÛ¡-¡vð@^þÞÔRr©¥ô½ÝN7Yñ—PÉn.åV8óXôûÝk‘”}¢`Trp6ß«SÄZsiWïg¹_g;Ôä0=ö­øN]F/®eŠiØÇ3’Ã°?¥tF›lžecÂ;HœËq“´Ýù>¾•-ò-Åô’ØÛ,ÀñòÛN9æ·5ï\rÝ¿—qb¡íÈc…^s×\'5•\nËc@\0ß);/×*OjŠñ”Ê„“fEÔë#ô°7c¹©oÜNp+WX–3xácE!Wî:\nÉ+“ÁÉ¬¡ª)‹‘¸cµt66¶WVå¥¹û,˜ÆÖäƒýq\\ð^y«Ö³ž2ê6ägÜUN-­>å¹l!I\"Qu—L¾:+z*ŽÙÛO–6Ù¹÷ä\r ä{fµuˆ­ÝÄ6eŽ<Ù$úcÞµô½ãÄÖñGq<0ÅfÉB0_\'gðæ°NXûÅòÜ‹C[íÈ$¸s\n¬ÉÁòËŽùëš±âŽÛL†Þ6‚`¡™Š\r 1È®‚]ÃV>{©gÅÊ:\0ÃÌSœmàr8àšó-BìOpéçÉßØ×&«ÕºÙýÕbÎ…¦6«!¶‰Ìr*;Žá°3ÓõªRº²*„Ã£êö›{ òÝàºÙ–Tä° `}:Õ7Œ=ÈòŽóÉé^”¹ö2“Ð¨#<œt©¡¶Fcæ–ä°\\ã=)¦4*y©–éÄ[‹pÒ–å÷ã·¼›°‘šÈUñŽOz7á†s´uÀæ®	¤ŽÖPl—ålŽG9ªNÀôì:“I;‹`ŒÊ4$«îãÕY‹_ÌÎàNrkBÎÙî™˜:)A’]±Që>S]«Å/˜Yó·hÝíIIsXvÐÍ#Ú“¿4 tÎGãWqXš-ªüò1ŒU—W1!e;sÇ½Q\nèE½U] ‰ß\"ƒÏ|f¢NÃ±Bîà<²C²å…S.ÌwO­iêÖ¯etÐNÑ4ˆ f\"üHïTáÜªHaÁ-‚ã!›Ë8ê«o¬ÉmwÕ¯î¦ŠO2<tÕ•å¿šRQ´‘ÆF)ÒÛ˜_ƒpÊÙ8)n;Øî£ñÛô·µ{›–YCKx\\½º(r@î=«¹tI0ŒH#& K§ŒaY”‘ƒƒÔR »‘2=ë:tU=‡)6=®ª‹±AAŒÉúÔ°DÒ´ð;Sm¢ßp‹˜°Æz~5¹`šl+,—°J³oBÙàzãªE ”nI§ÙÞêP5¼Qù’À3å°Ç_ZÄžYíµŒ\\(YQðêFGcŠÝ}VIe’dŒ@‘*Ÿ/’\08úÖ&ªiRî4+`6{\ZŠrmê6‹îó¥¼LŒ|·0\0>ë}k¨Ö÷\Z$Ó]Ç˜äö9Åféßg}!¢žà‹mÅ–HÆOÓæ¨jÏml,Œ_ovíŸÂ³¿4­Ø{Ý~áÊ66»´öªO•\0ŒsÎ:Õ3+“‚\rH³ú‚Nk±7c1ó”yŽÁÝäûUBFG­™-­„6²-ÂÊÒ(2¤`æ>O=é&³û:£Ýƒ•|Œ­)i¸“(ZM\ZC*´a±·\'îû×W¡iÉö0Ï)a(çaÆÜv5Í^Ë	²0rN0	©tý~}>Q»	Îäþ÷µs×Œ¥t´ìÍÍ}#³¶\"Y™`…W–£}+€šc#¶3zØÖuª4å¬ ˆã?.+a‘8éž´PƒŒ}íÆõ\Z¬Æ3éJ¬¾b†nA#ÔzP‹µHÀÏcéMoàŽkfõ-Àº¹áËkûKÀšŒ÷±ÛÈÀ‹œ†Ž9Ïµq:ÉM-%Ò,îÖæ@ó?å¢äcÜßZÍ·ÔîmÌ>T®­B=ÎGêkY|=pñ¼×Â²²¬‘D’.^AàJWacœaÀ¤ÉÛÇzôgøiyw¦Ú\\ÚV¸·yÌR·øAîO&¹ÝwÂWþ[yî=µÈÄRÜ{Ò¡²Œ³šãˆ¹Á;W“É5Áò+nPmä÷©â¸šÕÛËb»—ksÔTsÜDÖÐ ƒl©ÏŸ½“šiD0y)fƒ•Ç!½©Ö³˜™J¨Ü­‘\rUN\\sÞ§}¨à’:ã½)j2õüQÄèm·tË9SÜUO2B€g‚;Ö•Ž¥%½µÍºmòîÕRRW,ñOŽØÜÉ8@0Þ¹Û¶àÌ­¯,ƒ¿\0K}jñ&öèÒEn½”–aEMò¯{ñVo MJÎdŠT ÿ\0¸úÒu¹ZìâÁÇÖžÜ€i²ÆÑLÈã§P<WB×RÈŸ†ïMÛÍJÃ“úS\0$LZ\0ÉúRÈ©Tl^@¥Úz.+¢ ;T‰#G\"H„«©È#¨4úcóÍ1†3ŸZi…Ó>…øsñF÷Sk].úÝ§`´áòÝ:‘éêkÕT³û:´ÎdSò·q_!øBúÞÇÄ6Ò^Hé¶[cm-þÎ{f¾‰Ñ~#è·7ðhÄ,rµ7É¸p8Ãt52©ìÉå}¿ø-õM\Z;ÍM†Úêi•Ã·=séÖ¼sB¶Öîõÿ\0³éÓÉ©+¿&Ýäd‘Ÿ^\r}VÚ®he¼·@íµs äúW|W‡Ãö:…¾£deKÿ\05Œ¿g%A8ë»±ÍtÆqª­.D®‹~ñÇˆ¬¢¹‡\\²½¼·‰±æÅvSœ`ûq]ï‹<=k©j^\\KÀt&9!ÄŒ\0mÏ`sšòoxªêÀ\\YG;£ÜË),Û9ÉÜ;ŽõÒø—Äºˆ´û†ÔÙR¬1Cã€Ý =9çò«¥;´Ìå{Ù˜$Ñu-B;ýRl¼˜Wn2qëô®^ÚúÝtK›;ù%’RbHÛæIGBAíÖ¢Õ-ä7%–ùm¢rWž‡Þ±\'ŽhnÚ2>u8 z×7´j[›rÝÙ»Šˆ‚GŠ³</\0àŒŒŠ„£#§¥+ßR†§Cšh8aéOÈÇz6|Üƒ@ÀNé	zuïJOnÔØô¤\"2H>Ôà;÷¥aÁ˜„ž(XúÔd`Ôøf¢aÏ\0Š3š 4*cœÒ8#µ°È\0úÒ¦¶{Rï@+qœOÁr¾*¦M]I•-”Û˜S¡«g.‘íp“M_1° Æê{ÛÓü?ÕÚMq\"¿»»y,2¯Â\"àÂ¼øþòLã=Mu:&ž/`T³™\"¾‰È\nòmóTŒ‘éÚº)ÍÝ$g(«K_ø‡ÃšM„RÉ,3E9F±Øýk‘ñW‹m®lä:\\—	-Ây€»K0è}ý+Æ¾Á-Þ³¼ŠéÊªÞQÞ@Ï$z×….•¯i×‘i7sÚ¬›`v¶Aô\'ƒß¢—\"n)¶gdôg9¢êz±ñÓ}•\räÉµÌÈ	\0õ<÷®–]aøØM¤Ë	Ûqœ³ãïqôë]UÏƒ#—Åz^´±MrÅ¦IÆä_lŽüWM®é»\rN&†7…rd\'’Gðý+žn¤Þ»3XØðÿ\0ê›ïì¯Ï·hIxl¯_©«z¿‹õ4ÐaÍ1švù™[åDÆ‘êqœÓ|c§±ôæÚdÿ\0\\aAòö\"¹¦Óoæ¶’òGEGÖ&9È9çÛï^}JpŒ‘²»Eµ¤z¤oy2Åüå¡óñÒë)¥k7r6ÌK~de¶Ë€ü¾þÕ…m6WtdšaÁàŸ ®‹K{Ûy/tˆŒCŽ]FwÏ­qV‡½Îº™Ï‡u¹u0-q<Ñ€`¼dQ]Ä½½Óâ}CW¹šXÎZ˜¡À__zÕ·°ÓÚÙ¯çºkëˆé^&Ãàu\0­æ¶Ò- _²Ø\\Êfr—Æy98®:•Üàä–Ã±ÄkqxsGðÈš\rÓ)žuaóc’	ã ö¯.·Š{›Øà‚3$Žß*õÝø·_ÔaÓï­^ò³Ö²G‰WÔŒ~Uæöz¼šv­ä$†ÃÎ»0*n›Ý“ÓC ¸Ðõ.¥°kd†Bë–aÓ\'ÓéI«x\\Ò¬’òKo6ÕØ*Éo\'?ìõ­ø‘µsu¨]ºA\"¿”\nIÎÒ½xëNKë;e‰”È#›ÌÊl8ûÜŽGò5…L]xO•+‰4ô<XÌU€`Nàx#ÕFï¼AÐœ\Zï|t`¼Ön¤ØÆö9Dm4n¾YP8À8Çë\\<Ñye™†pz×¥F·µ‚•¬ÅÔ‚-ñÍµN­M,w/<†B£,;T–š]Î¡<qÛ®dáûÇÚ´¯¬ŽŠâÒòßætýâíùãoÓœ¤¶ê;™úŒšv¡Û0™†ùûÕ=Fýîîä¸DO+a\Zí>€t©žÎiã•Ò\"V08/nj´Q Ü²‡ÝÆÂ¤cß4’ÖâO[²$ŠVB7s†äTòí¼m¹ÂôÕfCl‘ Ž6ŽAûŽCúj ¥™›`ÎqCÔ-}Ibg‰üÀŒÔT\nádƒ×)á³ÃuÅDÀí óBó&˜ÄÎÞQ(’¹èi¤`(,1M>cÏ×5#BFXr¾éõ±,ryVïÒœc”Ž§4È£Ç¯Ò­ÆaxÆùåçž	ö«æ¶€™bÆÆIÒP‰¸¢—?AÉÇ­CYÝ.Y$PêUàö8ïíRÿ\0jn¶ŠÝZE‚2ÌŒ†#±ôàUi®\Zâ5‰°v6U±ƒô®uÍÌîK;FÁ×\0ç 8¦5ÌDÜå³É\'­E,€¶Ü`Ž¾õ#§BjùJL¶\nÄÍ\"®Œb£I>PpZÌxÆ·QMØÛ·©&F·Ôd¨6»þ§¹§Ú³óÇ­Jë¼.G\0Š±òNOzè§Rå©ípøZÙ¶ƒbâ±ì“	ü«qTýì\nØl·hŒ=€8§LÇÌl±$õ&œ\"cÉ#‚\rSv`CpGµ+¡\"ÔNQ¾SŒŽ ÔÑ(/‘‚jšœ…!°MLŽÉÐüÝ)‰—”àx$ô©‘Ô©àî\'Ö³Ä®¤dÍ\\A¹~î	¦…btÁèsš›vEAn\0ëõö©ÕsL»în2=³Y×(Ç$g5¦ñ¯^‡¥FbÎhhœÉ\r½¿š$-rpTc {\ZÆ¼Y‰ZBÎÝNk£¹´ÞCÕwbÒIµ1žIÉÇAY4UÊ1K^,È%ñ{ô÷«o3‡Œ„dVz@ÂeÏOzèµ›;û-¢´±ky%pêæLá@Á\\g×šVÍM(9÷{V}ÎÆŒjâ)ÝƒÚ«^›¥imŒk…à¯z¦ILñš³!;ÉnqÒ >¸¨e¡²x¥QÎOAH¿4õ8õ \0óŒ¦›×šU9ÝïAúRáØ\ZF~yè)3šnqM¦=y¨Üç­;©ÍFI&š˜\'¥¥/Aõ¡T»è¸c·äöÉµ072Ü¸ˆFw¼j¹Ès¸T+õ.ý¾á ŽÝ§‘¡Œ“lß*ç®lÔjûÔ–íÒ«“ŽE\nI\'­4€Ð³¶ûmÚCæ¤Jz¼…4qý F$UUÈÞz\Z¨	#h?Z3¯­&‚úc—kà‚8ëWÒó1ÁÏ5“’Ý0>•$CÔàçŠw±6¹´“ž8$zWAg$z¥üŠÎ–Òº,(3ïÏ…;Z[À¥]$˜®U‰ê:àÒé’‰u;u(JÊY	ê3Ò£ÚÞ.HVÔîtÝwPÑ®ÚÊîbëlÚÏ¼/?ÃÛò­ëïiòø~æi~Ñ3€ª[ïŠ¡¯Ee­´ÙvÈ²»„Q\Zùøù}ë‘+öMF?µ+‰þt€<àÖt§DTž\Z{ÈÜŒ»’pª‹ã‘‘ßØV¦—âÍNÐùvÒE!°íŽúãÔÖ-•Æ»$zbÈË°¹NŸ‡^”ý?ìos-…Ùh÷¡wÈëÇzÚ§$ÓSÔo¡èš–«§ëz#gA*•’\0Û¯××¥pzÆ•qk5´©mä­Âä\'®qÓµjÙé7z~ ‰jð^Úc8À$ŒŽÓcUmBtkØf¶uA+ÉGò®:RT¾ õkSŸšêòK¶Žø\0ÀàíŽ3Çzêìd-\nÆwÎ¨76@$iy¥ÅsÅ’Ìeg|±9éOµkËd¼µ‰ÞÑFÉw€HÈï^\ZÐ©=œ–§w¹ggj‹æ3H °bpAé‚;ÖÞ›­Ù^À²¬Áä™¶ˆwd©¾•åú;Õ2eSschà/áéRiÚ‰ÒïÕ¥Úñƒ…`ÜsÖœèFÚnŽÏÄ6ÉdÓÜF^B1SùŠ¯jÓ”{wVIBå•Î1ß½3V× ¾Ò\'o9ø	‡\ròä¸Ís!×|ù\ZöÖá÷0\0ùƒ§éNIrÙ»Õž¡·hb\0o™O¥hÚKm}\"]¶ŽXýxZøÊöÒá^22žµÖxcÆð]jE6øò¼m’:V•*(¦Ùë2	-4ögÆTuü:VZKtwjFáÎ3þ4°jöž  U’Þì\0ÃÌ_Laºô5fâªG;+8\'œt+:3»³HØm»IupK0$÷<VÄ1ìAß5JÎÝbO,á\\ô úV’&Ð+J²èŒ¢®*ŠxKX%`¢Š)„RÒ\ZÆÑœR)ŽøéT•ÌÛ±&iAª~qÝÖ¦Y)¸´\nz–(ÍAæ`óN23SÊÊçB³T2IŽ)óÒ£vÅi™7q®øZi<g<Š!rµ\Z± óZ$\"F;”U¶®ÂÕ+ƒšÒžâf5øàœâ¹}Mãy\"TEÙØ’rsÔ×Wx™FlŒ/POZä50	vÏÍ]H–:ÞöÞÒÏí0ªK4,UÄŠ¼®~\\zõæ¬ÝÉiz—\nyf;IÈä\0£ó’k“™ð§9ùU›·1í\rŒÓŠ9ƒ–æ\\ãå ž}©“NâÞ9îeO‘TçåLd`ýIâ–IÈ&™¨È³Í$ŠC`áF1YÉš$Wûcc¯9ëI-Ó+“œõÍ@8ã±¥™HNTŽµŒ›‘VY23úTw\Z”¡ Ó‘p¼ŒžÕ‹)ªmè*hãçž‘{UˆâÇ\'­		‘ºzÔž^p«ÉjÄgnsÍH3=\r]´(ŸºŒúÓ|†TgS€J±q!]sÓŸ­VfÚ¼ç=ë)!¦HŽ]\0ãÓ½+FXíV8ëš¬’”ðjÜL òOz•ƒeˆIEÞPoì{ÐAc¹ºL’1Úæü›H÷Ïz¥ˆ»¸ÇqŠÑŒß®y­…†XZÞFw\r–ù@Æ{:Ì,Y¾eã¶;±•#H^v’N\0úÔÊf‰Ùý—Šìt½=	•ç¸`¤@3÷‡¯zä5\r]¯üÔŠPï¼°ûÙúú{Vt¡uIÏÌW©Õ~òÙYðr2µð±„œ–ìKèTŠ\0Í#”õÁ©…¹_›ÍYXüÂ}M[XT…\\d]ÑŒÛ)Gé÷ª7€–Éõ­ØI.\n*¡#·J†âªüØô§Ô.aKl%Rª~søU7²uE‘yF%rOqÖ·ÞÆA”‚d)Î3Š«K!·†$¼°ã8\0J–ºŸSÃÆ®›ÍÔuÍA,Í)Ø–\0“ž1ŠÞ¸Ñå[O¶Ç™-Û\0H0ýÅc]¢Å&Ð¬ë¸uúT´ÖãÑì·\rÊéã•*pAõ®¢+†Õ$k‡iã—9çÔÿ\0qèûNH­m*î[4 1dàpqÛŸ­sU…Õú”Dµ›âŠK¡w2M€0r{õ­[Õoîô31öÈžc.8(xëýÓÚ¸\r[Åw:µÏš©$`QÎÑ÷í]žjšÍÍ™¸ŠY6²$Œ_åleŠõäqÇÖ²ÃÐš|ÁRjÖ9¨-×\\ÕêGYTº œñÀÆ=9ßxSÃ·é¦ÂXbŠÞF‘eO˜Š2†x\"º	X¾·5ø€º¸$yjW€\0úu®ÅU#A€ùWk©È¬·&1¹ššM½•¡ <Æ8v.ã’@íúWŒxîÓû&hÒY?}tÆwS6Æ2CŸé^½7ŠlÒå TwÚÅKcÐdàw¯ñ¾»­¬ÌÉ;ÈÎ20ÓÚ¢òåjCvæÐåæ‘™›v	\'­DªfŒ1rNy©V3øÐ£`¸žªÒ¤XÂ®{škGçWmÔ·e¨Ea/ž#,Ã \'·z}ž­!½‹|¾Zù…Ãç	=k\ZGçšEå³XÊ”e¹JMuï‰\Zæ+«VHž0òý9ãZå\\)Ç¶)W=Í<ÔÒ£\ZJMî\"ô«Åæ«¸°ÍF¸QóéS.\"¾\\¼±äúVÌV$K”+(ùG-ž0=MLmaŽÎYã¹ÿ\0Ilü8Îìþ•ÝÃÊC;¢†þàU2E#Ì.rcç­g%&ŠD·Œkn1°W!†>lrjƒZÈ²I.\'\'µb+Ô©$ä”_áV–«q§]ÛBö÷ç”Ÿ‘—œt\'¡æ¢Rå\ZWÔ¯f°9\\	çlhvü˜<œŸ^•—¬YýŽDE¹ŽTl¶#lí=ééw=¾ÖŽe\n­Œ7# uÇÒ¨ÝÊˆÜ¯´àTÆ-Jã{©\0õíQHß1ô§‚Ö£~Mt!¸zèî%’ïJµ&â‘ýèÉfÎqóÝ:W4:Z7÷VÖ“Çï\Z9½L ˜®> ’Î¥Ÿ ðÙíï[vÿ\0bÒ¼«œ­ápÈ`(vŽ9®~NW®0F*Ý©y$E@K±ÆÓÐÔ½\\ñ5Å…Åõ»ißpÀ¾h\'?¼ç8¬©¡#O4\n—%R²+`®;úS]·áX`Ó¦)ó_PJÊÅ}§$c55³bTÎÞ¿ÅÐû\ZGo˜s…ö¨›‘´tÏ\\£~ÊH	FòÕgY7sò•Âuz¤vÓ[ÅmÃ$Œ¾t—<nE<m?å^w‰á¶Žv?»gØ¿QWmu„º*±2.ÇD²÷®j´\\š’e)[BåéKIY‹8pA*ÜÙãÒ V¥½»åüÆRƒ?tŒäâ³$¸i%bT(\'…¥MÚDŠ\ng;‡P*ù\ZArü\";S~jz®ìúÕw)#þöB8,j¹º,ÌAàÒÉo$‹º6Þ ûU¨ÛQnBXàÉÍKf·‹ka›‘Ïf2N@<ÖÉÇ‚é÷	÷Á§½ËGRsÒ˜¿)êE$¥p{’i¸‰O!’%bÀŸOJ ÌØ#÷5uÊƒÀ¨]÷òŽGZV±H¢cbÀ.N{V•þ“w§ÀžteO\\ò2ôÈ5\nRÅÇ`W¢ik¢ë¾½·»ºŠíè©,¹.\\gÇQ€KÏ4Kiå@êãæ¡¹‚[rOJ×š½>aiw[ËnÚÃœS5[HRá¥Wº(êµ6¶cFvŸ2ÛjÓI‘UfF8éø×kâû›ýMN—fö6Öë¾TUË,}Gl×Tæ½\'Ã6	ªx{QÛ#AöˆUg˜ð¿!Ür{qïUÎÖˆm-Ë^!ñmìšu€Ó¯åX,HÄfpzdcž¾µÄêºõçˆ¦2ßM4Ï*2Ùõürj\rRÚ+9öAx\'‡,ÜŒãõ¬å¸XvÉä•wg¯9ª¸‘^é$I1\"²Ÿö†*/¾¸ê*íî¡6©,rÜ1gD	¹ŽIÆyýjº¡ |§I´=I-lšhåpP„\\[ý=j5„ã£oíW\"¹[x\"S\0óUÿ\0Ö	•«ÄEãu‹þ[ÇÓðéQ)[P2!·ŸËiªÀ6:Šè-¯­´¸¦Qú<[°ürÞÝ˜WLº.–\\}šà¢´Y\0Wtüû×4+¦¸qå7—î½“<œVU4·¬x°ë1\"ÜÄ‘uBÆ ìO\\u5/†4FûûFT—ý!2¾ÂÁ‰¿¶y¬‹[KI\'Xc,2¶¬H#ž¼túU3Å7¾k¸tû„?îÞ)P0o|RöI»Ka6ú^)ÓcÓ5si(B€î“øÏ¨ö¬TŸÖ·5ûçÔÔ\\O)yüÂ[Ðè;\nÆR$VÑÒ6*îÂÉ óéQão\'­=Ÿ9›ŒzSD¶4ÈIÅ&óÔŠk{S9Ç­V€J¤±õ§€¼†ÔHÛNüiûÇcCòþ`Â¦Iv0mÄÐæ 2\0üàþ;Œé4é>Ý4i4r·çl\"®};ÕØoÒ(^ËR—ípeŒ`>T9>ë—†v„‡Cµ‡µ[’_´•“9õqŠVÀ_…l…Ì‘‰$„–Û@ûÇó®ªßÂzU·‡õYõ;ÁÌ,\r´°È:÷ÏZÃÐ|!¨ø‹È+HÛˆBpH_Ò¬ÜÅ¤é£M»Ó%ŽòD-½7GÜx#ƒN5%{	Æå­:mF·hÑ´#2y¬>ë0¡=½k’Ô¯!º3Ì°å–v”>rÀtŸJF†H4ÑtX˜æs\0ò«:ZÙÞ·ö†ä‡fìª‡ç·°I)9šÙìf¬×Ö-J¾]¾]U°8Î?Â¨š×‚\r­$éØàíàûý+.HÙ%e#G¥ovK\"ÛƒÇZs¹¥ÁbIéLs¸œV„0-ŠRr¹Ç5<S£`x¦RÛÔÀIý)üFiŒv8ô4†+±ü*?­=€ž”Â}(ÅÀ\0}h$m&¢¥94X›Ýši¦ƒÚ¥T=M1ŒA†çš‘Ø±ècMÎ½/2N„é0iw¦	gŠ÷t`¡·mÀ’3W|9¡ê Õ¤ƒL²ŽybO7Ë<|£ÿ\0×KàJÞÛ^°šH 3Fê‹æ®Q²p3ùòkè»MÃ½ÄvPÇ¨çÈ9ÜyöÏOj•?~ÈMi©ÍèþÍ†š×š…’%¡!ZÞ-®Äí9äšë–=6ú+›«™\Z4¶b±r6:à÷¯ñˆµM?ÅÓjO¨¶\\y_Ãq¸c¿|Ö•“Mã][›Ý_ì­y³@cìA=xéÅ©;\\çq±«¬øÝ-žßÌÔ\"šÍem±Œn\'síQEâ»}SN1Ý_°ž7ÊÃýÙ]½O©¯7ñ\'…$ÒeŠé®Òx§bÉœö»~U£©x*ø¥¬ºSÝ–4,².ÌÇ£Þ¹1X®Ir­\r¡k¢IkªÁÄöhOšØÇšÃïŸ­Tñ·—F[Ë+c·\'Ë³üÇ¯AéÅb.â]Öâ	¤_1îÓÈ<=ëRÒ5³Hó6eUNG5âÍ\'.fÍöE¹ô™íMŽâÛÍŽOÞ(ˆ|ÌÉJôM}\Z8l\'±šwpÑ²–äc³Žÿ\0¥rÞ¼ð’Üy²ÝAn#U‰23Àâ³|A ÜC©Ü^Å¦ÏcbpÛd`EyÕœªKÙ·c>º¡s©ÚèW±[É-Ê”£MÊIùèk#Oñ<zy“C½¹6öþ^äuaòóœßÝkÏ.¬ú42{™#Ý\Zn˜‡Aœ‚EM;ÚßZ<Ê&Šæ\r¦$vÜŠ;äžy¥GãÞ¥7sOâ4ºlñ»-äÍ.D–ÀÑÈ§9þ^`Ñ³šèoïnK[{›P<Æ.’2óƒéžÕ—lÁ%VeÎÈ¯W	MÓ§ÊJÜöžH…¤‰“œîè}EtZ,í­ëj×aEÂl’y8àÿ\0*£¨Ý&®¶àÁeZE8ó9ÈÍ^ðônæ(‡A<ï[B	ûÒZ‰K›k+èãxÁ\"ùI^„Äâ¹öŽ¶šk¦u#ˆöŽ­èkÐ5OC­oœPÜ\\(Y|¥\0JB;æ¸Ÿi/£È†HeL±\rÇægŸÎ”aÊØžŒÅ¶žK{µžÙÚ&FHnA­[½Næòîk»»–’K…Ä¬§“ŽZÇÌ¸A?-JIà7Þ­,žãÐ•ÉrÌÙúõ¨cLÈ«œdã\'¥j=²›u“xf\'{QClc1U ‡œÐÖš•:0‘œqÖ‰…º¦>@};Ö½Å‘’C.ÑÏ`1ŠK}«q#jP[³IåùnI`qHþîxÏjÎöÑ»èŒ™­&Çpc!¡ÏZ¨í¸zî—Âz…¯‡.ÚóGòäYÊº2ÍþÊ¯F#‘\\¤öÛ	0Ã†r\ri’ÕŠIËÞ¦Ü£8ëQyl88õ2áÃwïŠ¾U¸5¥‹UoáÃâœbó[\0Ö«’T29ëVP	%E‘ˆ\\óŽ+)-E² •±•N\0ýj»¶A­+ôŠ71+)ÆõïY² mcU 8áŽF;Ôa˜öãÖùë­5Ž†È­¬2aÌ€g>õl Êîn•ž9ÍHŒY€ÉÍg(·±-2Û>mçëZVØhóøôª°[	@ù±øVÍ¸PsÏÒªh±<á@V*bbØÀ«ÜgŽ´âcžµµÊ+‹’¸œfµt›{;™Y®®\Z(vœaIËv¬‡U—\0þbÎå§å8Êžø¢ÁceŒ^2¢ IWi$d/lÔ F·2&FÏº®:gÖªÏ\'šCaO€6Üã5H¯‰BåT9+Þ­Àæ5e\0\0F5´q9ùßg¥YKrFìäJ´&‡©AlûRïÎ1J‘ðÃ¹\nyšÚ #í[Ší<§ŒóUÜ–È·+1\0çì¸\'èj¼N\náOÌOJœÀR#°É8Úx57[a²©\0ëYÒœ€Ã`Œõ«Ä…äš«rÁ¾UÆMË0E$ì\Z!9<â°®.ÚY@\'x5{R-	‘œcÓñ¬CŒœÔè\\M(NõÆj\rB3´Ó¹¦BìS¯­9Ëí\nüú\Zc1ä¶#<qT\\áöû×A${¢%*Ä¹SGãRÊE|e°+Ø§`ªäðMDrßáHc€Í; -éIŒŠG$Œw¤ƒÆO¥óõâ†àQœÕk¢£Îi\\æ›Ž) jÍ²ó¶qÓŠ¬ ’\0êjÄe‡îÏ,sí\n‰ˆPg«3Pæ;18$úPÃdxsÖœgZÍ-IcpF*XãyŠŒíÔl?zz9L€HÍhR¸3I28]ÀsŒ\Z3Æ3Þ˜@Îrqš\0zå\\“Á*MÛ‰\'©¨†sÍL‹¹Ü­1SÈàw­\r:í ¹Éb£åÆ:ûÕluÉoz±m:U•sÂ±Ç g¨¨šVÓi—j7-÷®–È2ƒ?®sZ:”Mdó-¦È`+›=O9>ù¨,4«8µ+[È¯\"%·æ`Œc¨ÿ\0]—‰íßMð¼qŽQ¨H0­ÎzµæÊº§Qr#T¯3Ïíï¯4‹Ï2Êí£|cÌ‰ˆàŽ•§k²i7ZŒÑÈ^9	\0>¼©#ÜU{ÛT‚;§[M¹ÜUy<qV4V}ÖwY’|Ä%2pH\0ßÚºjWN<ÉÙê$ºHai¤ó8eBqòãŠìl~$Øëwki{kÂSlklílvaïë\\¥Ì:9Ó®>Õoºè,Oåº`pYHéëÍcÅ YÞMkmm¨*¼©™a…±÷}ÍCT¦”ž…&{Ü\Z~§¾¤·q‰XcÊÞ\n©éŒtàsIm%…ž™tâ{[˜òeT1Ãƒyý«Élü!âirÚ[4Û1\rýyê®DÅ7ðÏ¦Þ[É\Z¤M¹š\0_^2sÅc¨»ÆE8\'Ð¥¨ê0ˆ‹[L—ÆåRØéþ§¤éÛP.Çi#L3mìHÏÿ\0ZºŸxoL²ðÌº–§f¶÷²3ÆZèíÚ½^™çó¬ý&õ|¯O¦ZM\rÖ“¨/™\r×Êl”‘ø~•Ô±¶VFR¤‘^çK{M=¤TµÁßïô8<\Zä®cº‘þÇi#^Ç‚WŒëøñ]§Œµ;§Â—W\r}¬q>uoJâ\'AdïªEhÂ($\\’ß6XpÚ–&oTK…¶0eW{¶…”ù à¨õô®ïÂ&\r>Ýd6ð³Êv—Ÿ#`ñõ®N+?X¹»¼¼š[K¬ƒÄÀ\rÀñùUÝ\Z÷P¸Œ£Ï¶Öë‘¼àœžÕÕí-pM£×lµÇ¸ÔD°K\ZC\Zåìà¨=ûÖôh_‰UÜÆqOzá|<B(×é»œW hh‘íß¡ÅwÆ’‚º9Üîõ7 „*©\'“V€¦Æ)õË\'vmdQEIaEPHMÓI¦Kb5C ©â«»äsWb÷ ½S£§LöªÅƒ\Z­šº&äìÛºS°àÒ®^”3“R€@ücŒÔpM1 àÕ$LŽ´ÐûA5^g)‘Ž*¹œ9jÙCA\\¶×R{*¬×`t5Ÿsx2Äóõ­RKË…*y¬	!kÉ8‚ï ž\\ƒÞ¤žô:“Ï¦k\"W‘$IV@;‚p}ºUXFlÅ¦xíÖ\"Ò;mÈã<à{pk3^Ó¤ÒÜÅ+á™©duºKkøìx§„ÝBW	‡ÀV<†ï“Ò¹ßkbÿ\0L°±6¢9í‹´Ò•\0ÊN0}{~´ä’Z‚Üç†IzÒÝ:‰bÎÑÇ#šc>3Úš~pXœŸS\\íšL8RFN*ÅÛÈ°­› \n¹tr¸.§¡Ï¥Bÿ\0ÈÇåR$Ÿ0i|¢3\Z‡còŽØúR]„È<³ÚTá€<Žµ\"F¯ŒU‰1<…Õ÷Tp)ñÁÔõ¹ràþ%ì*ÊÂõïR¢(_jq[&…	±ñårFÔ’z›îàc9ëíL¸1yªd]¼œgœQ µ+:7Ì=9ªŽ	#5eåL¤î5TýâsøV2e¢-Š=qŠ³Êõ9¨åóŽjÑ·…ŒCäáù\nV°ØÇçNP„í(IííHÀÆã8úU¸ÌFd`»G‰=}jù‰°°Ä’‚fÇ#£š¬  †tžñW.fŽyÁ–‰ÀÁÎjxðc\0(úÕÅ7¨lDðÆâ6Höá@\'9Ü}jxâ$`Ô¢\"¤qÇ°ëSˆÊ®v=q[E$K\Z°…ë×µJˆsŒpEnf¤SÇL\Z»#£êÎ˜ïA´çæ\0Õ9J°·=±Q<ø$ôÇZ™-4ÙjºÖ–öÖé„3Nç÷ˆêvýä+ŒÖµ	µW1\"­²ùHÈ6ñ“Œúõ©EÄkfcŽbÒ1ÀB½=Áì{~5Ve’ÊýXþhäùà“œ‘”Ö<–w4¹gÃW’Cvmn¿³å`&ç\0ÐéšÆñ\"JÂÝÝâò²ëÅÈøçó®ÇW¹·ÓlCÛÄW|a1v+Ž›±÷°¸®sÄ÷ðÝxwIŠ–1jÏÃnÈÎs×4¥;;0Jú£Žu :RùŽ#\\íÎvöÍ5¥Éèi äÿ\0ZVî]‰¢Àqœ`sšöÝOA»¹Ðôùôû„3Ú…LBrãw*§§ãÖ¼F\"3ï]¦‘âùl4ß²ª¼©×¾^F\nz\0*ãQE$zÎ—â1¢i°Å­Bmfv*c%ÜuÆvœrsYzßÅm9<¤ÒÊ\\áÈœ:6Ð¼ò:gÖ¸›ÿ\0ˆ/q Km1¨81¼Û~úz_¯nk„\n\0²]ƒuÉþU”/ÍmEg¡Ôø“Z¾—ý1A‚+–>PI³Œ=Çå\\sîNyõ§É#;aœ¶:sÚš£ñ¥»¹DÉëúÕ„AÖ£A•ÔÁ€8ÇZ¤„@ÚªÉ&r;Ô’¿UWlžÔn7šxLqH£-Ö¦S…¤ªç4õ\\Ž‡éHŠzšz’Ò˜Æ—)“œ{Õä6æÕ£š\r®§pt<ŸE>ÕQK1ŸïVîª[i¥¦{´¹£€Tœ‚2+)¶–ƒFÉ–wD;9UÉ!‰`yç5·ý£!†ýG—w;KÂ«ÁÃdcÓ“wt×	EP(Ø1ŒP›{…Š.À“ùæ•ã¶XA3nbNåÓÓŸz»˜×:eÅÔlí$D1‰8NìOnqùÔ²Ç¦–<Ä1M+ÈÃ‘ŒupAâ¢SMÙ“HÃ2yXd$xÍUxÙv€Çž”àá›<àt=êÕ…½ÔSy³ù2 Ê\r¤î>•Z-Ãs0ã4ÖäÓJ¹˜¢°µ\ZxéZº\"ÛÏvm.v¤2ãt‡ªc¸¬±WôH~Õ­XÁçy>dÈ…Ïðäã53øXÒÔï´?	[Gö«¥1^GæcVë†Î—ë]&§á;+KL`nn‚¤vì ²0ÎæúU}SI¿ðäÕg–ÞFÂÊˆ©í“ž{ÔÚo‰ulç“ìBîHÐ£I\"r­Ó¨æ¸)Tsm^è¹EDæOƒ.×Ê›PcÎT\\)E;A$g×ñ¬oéÖV—¶ñØÈ²Æð«¹\0ðÇ¨É­MGÅ:¼ºi°¾™æ•[x•‰$d`ñïXv—7Ý£4~|Ž<°¬¹Ýè>µß)F1²1WnìÊxh;	àS’X„…ÂØÎ3[—ú}Æw³aßoAÿ\0õTú}“ÝÝÁåÉä¯†B“œäW7µV¹¢F4Å^É#`IBJ•Ïj4‰…¶§o2Ja`ÿ\0ëwã½kßY,%š±…c´Ž\"¹ý­ne<ñª‹æZÐ¿®i°YÜG-­ÂÜE\"îfSÂŸO®9¬†l¿N1Ú¯Ï4RZÂ‰ÇPwä‡>¸íU\0Â®)¥f&F\0\0f¦ˆ6q‚F8Å>9°\nñÎ	Å_»P¶ãljf*œºÍ,XãZ–!´ç\Z¨Ï®jÜ0*¥ÉãœVÑbhæÎ9â‡FcóU†…“Ô‚FFGjF¡5¥Õ„Aä1Y£f‚Ázã¾*	ÄfghÕ‚s·w\\{ÕÑ+BQˆÜ0jœïž™Éîk9\rq•\'>´±ÝMi\"¼R²H§!‡S×h[¿J‰¡#æ\' Ö/V]´in%MÒ38c×=MWi$a±˜àc5j5×ŠÞº°Ò®ôèž(ZÒè°\'!¿>ë)>V´ËÎ:×Cá‰.çšKKk(íÜ#ÉÄž£Î+=¬Ñ&di‰W%gŸJ·¦Ïý‹­Ù_¦ÖX]\\îc¿2»VE/2/³Ás› Œ@9äç“Þ¹ö9PH9#Šèµ›&êÿ\0S›|Ò—·“±|õ#Ó¬K„Ý£Ü¡’åÔdUA;k¸hA±—iä{ÕûHá’TC\"Æ%Ÿ¢Ô—÷j”!ã„`2¦Þ3jÕ¹v-Í²‰mÒâ?:`†@ÇÔÕ§³”¶i/&ÉA}Œ}Ôúb®iï-Ü²YÁjÓÏ:þíf9Ç~¬Ù±»Wr²Ÿ›œóí[¾¿6ž&´¹ÌˆC6^,‡\0‚2*z0oC¥ðZêÖïå«Dò˜Ud«wz\nÜšÿ\0IÕnn­íì¦ãîõ$;Ýr”8\"»­7À]¼Z„²7%]qÜéœ‚}úTšß¼»»«í6(#ˆÄ”ªCn$Œw8®‹Þ×3•Ú<×ÆškiZ>·òdˆüÀF×PA\0ã©Ç­pÖöÒêz™ùTË;a\n»»{\nôˆW—×v‘-Æ•%˜ýäG ßŽìGOa\\~•jÒ_GJaóP˜P;ÜŒ/~•ŸŒ¨hŒ½GF’¸³ò·Ë·ïÂ‘ÉéÖ¹‚<g‚+Ý-’ò[íôÕ–îÍI[÷@\0F9ù½È\0WŽøˆCý¯;[•1ï “ŠQL¨¶ÝŒ¸†O&‡Ò‘3¸ã¥JèdžjGbéMlOÎ¨¦¦1žýéU€äÑŽ”„síÞ˜È\'ñ§ŒðAäS\0Ïzš5]Ã“ïH\r™D%ÀuˆÈ¹“v\0Ü:ãJkG„$Šß)8VêÄ6»Ô$V²3¿ÝÛ– w8ÕçX­‘b>j21´ž£ª\0ìüã]jÆÅtëVÓÞ(ƒÈÊÑ•”¹¡ª~(ñœ~!¹®ÖñITXÞ>FI#mÍp‰+C)x¤(GU­=-ï§Ä÷1ÛÈ2U˜d:äÖoY]‚ÐŽúæ\'2B­ò;F\0o¥Zñ=¥Äw¾|Äè¡%P¿Ê=:S<I<i«BcŠÝ]QK˜FnäZ­Ô7Wen¬L¤\r‡¡ìjùR³Es6UKéÚá23$`„\\ð¹ëŠd¶Ò‹´8!àSRÛÛâàaÉã#Š’ie‘ÝUvƒƒŽçÖšI=f– ŠkuàóÞœç±#‚*>õhAŒ/J@psJçŠALcÁÍDìKóR)Èæœ7QFÁr<îÇ©£Ëlô©‚*s×†BOJÌF#$:Òí)Å‰NÔ…¹è(ÍŠ:ÓëŽ”`ø§*€\r&gæ Q´ô…ˆ4™$äÐ’C«¡ ŽAéþ	ñ.¯©j}=Â^]YÂ3ÌD8\'¿Jó\08£¤ÉiË‹¨ÌŠÑ¸$ýãdîÉ’º=’K½3ÄÓÍ(°Xoge`›KÕ{ß\'â6ïCÒ\"Ú,°ÜnýáBy˜ôô®«áƒí5%]^íî’HÉSnÈQÓžõé>+°‚çÃóG$È¨‡øÇG½n§7Q$f¢’¹óM¾½ÖpYßDÑ]A•YˆÜÎNG­oËâÒšÊK¶º³‰\0ØsŒc‘íƒYþ/Ñã·²´¹†Ø«8ÃIŒdŽG®sÍqÖzŠØ^,²ÂÏ!Ñ[nñéšÂ½6¤“ì{G…¼_%æ®\0µ{„XÙ~~«žx=ë¨Ó †îÊXœÅKƒ‡€{ŠùÎ?ÜC>ëF–ÙýÛœÆº7Åš†ä^¤’ÝHÛ¶rJ¯Lã·zó+á¤•àhÉ|7z–Wòi•—lrìÍuŸÚÐ^-µÔ—D{6eYA<f¹ökM6án#‰Á\\«¬Œõ{QÖóMž[B¨\0Q\'žêìO¢wé\\•©©ÉJÄ=ÄòµƒmsÑÅ!T‘W‡cŠWºóîyQqŸ™â¨Æk’Ë^HýMZ–KgY•–L|¡vÆ	$™;•õK—º›ag0!>Z³g`=³SØi’Ie47)m]Ç?ÓëYÑï’uE$ô®’Þ{ë(b½±0ì¥˜0ô¾õ¤½ÈÚ Ì	ÇÛÐÔÑÊÁ1’Œ8Í\"¼ÅŠ…Éû£ úSKâ\\ŠÒúr6ygwr¼øTZ”×rF ’i^Ù\níž}j$›ìò@\n±¥*@ñ³†Ü¨#šM¾€RûŽæ®„üÊ3•>õ¢—0ÿ\0gY7šéµã?0-êµ\r¼ö¦M×vÍ Ï;N3RZÛ=ÍÜÍlénˆ¤Î8ùþKP	4û«0“Ü[¤i!!c\'ŸË®)máV?2óïSÝhÏ§\\(šágób™2U½G4é¥Ã>8ª­`eyb+:t­\rU°³—mæ‘g}\\Iòýj6Õ ’8ìîY–Ù[*è™ažµ›tm$ÒÌÈb\'å.0ÄzÖrJJÌÖÝxÓì2Ü=•–ÍãA$žbE•à¯¦;b¼öB÷2»Ëþ±É,OsZ ’ÜžÛ©“>G*:úQNœa°z™rB*GáU\Z=²p¼u~W!·u¦¤wàŸÒœ‚Å	ÏùúÒ“ÌÉ;›µ_kwBQð0zž•LJÑIòcž=ë>šFõx®YwxÎWª,Ø`ZTåO8#¥F-ŠÆY‡=ªã%alF@l``‘R`ÀóíQHÈíÖœk´LelÁ@<w©a‹h¡½>I@ƒèi·˜	ëB½ÇsjÖ%AÈíÖ®¢ È&±ínŠü®xÅZ31RèQÔúUÒ;\0ÅCqqò–«=§ÉÉ¦¼Üò);ˆ•Né	\'q5nÖ6Î{fªÁr£=+jÆ,­È§”X†Ü°z+]Ãß¬CÝ>œUµˆ)úÖ©¤¶ÅNEZˆ0R¤MM´gšvÕ=©ˆƒb¨Þn–nI­BƒJâ3ÀciŠÄZeà²œ»B³`+zÑö×¸É½¸šˆRIŸÒ«LÊ‡)Ç­G*ææÝ¬Os&ÕÎyúÖ$—Ï¹äÔÒ^ºH>õ¨ÌÐ’QÆX`‘éM‚Dw7I	$žÃ&¨Ëó ÷¨ä”í,*1<v¤hjÛ”ä\nžGœõBÚB«×­Hí¸€Oã@\rgÁÀõª—	ßõ«Â$dÜHÏj€ìQÉÃúúÐ]ÀÂœõ\0ÕeCš½x\0U,àHh\\sÐS äþçcŠF§aÉ c_îàu4„íQHX\Zkõë@†çœâ—\nw½0\n|Û¿»RÊáˆ*\0À¦Âá:u#•Æ{}*â·­O&YCt5Ò)éÁÀ ³sÀæ¬[$+`/RJçÄãUÚ ¯ äÖ¦ËkËuycº·uG!Ãœ•ÏcN6½…Òä÷:E´›R\"Ð,h’Èw“nHR½«\næ#¥Jãor+Ð\\Ó®µ	„\r4—{ã¼a@\\Fwç?Jào\Z_9ÖB+ýjê4¤Ò&êähÝ±OÜ‚¹žj8Â’ œ)<šìüáÅÕu¡ay\'(î‡§PsÛ5…j±§fR»ØåU‹33Iäñš–…ÅÒE¹S{ÜÉê}«Òµ¯‡ÃM…73Ù™f‡gß¹äÇ¥pÖ\revð#xÜ©e9¨5…<T*¯t§6iÏ¦Þh I¡—\0	U~e9ÿ\0õuÐøU²×„ZVªíê¥ùIÓ€=zÖ5¥ÍäòÃjÊ×+†e#±Î+nO¾§§›”O±ÝyŒT3uP22;5ÇRI«Tß¹¢³zˆ<>»+xãšÉ—qÚþÀœW6“go5¬’¢If»‡”À–ÜzƒÜô®ƒÃž5—NÓ.tMe¦KŽD@üÀãî·ëÍcÞI%ö¾ìÐm`ÀóÐcƒýk*N¤dã/„¦ŽyÙÝä{÷”J£\'+ËCþ5×øFÞ	ÐÝI4jÐÈ$‘ó¼9ÇJÎ×Òê(biTÉo##:Á‡QŸL*Ñ’Â×F¹y­„¶é3*7ÉÙÏÞÝÆk¢ræ†„(ëcÑ%ŽâÞÒ#‡›oÉýäÀço±ëUåñcM§OÉZ’ºD±M<Å=pjŽ‹â˜lmn¯Žú$`‡æØÈþ¿7PsÐzUÍwQÑ €Ý}–&•×rÉ«0n¤Œä~ÂàÓÔÑk±f3uycs«§y–V¨òà¼d|W7¬ÂÚ®‘ö=;OX[‰Õ£`åêNyéÚ®ßë’éik«{t/e½‘]$Œ`¶6ò2@#¥e]øïXºÓfž\r2 ÓŽÛ’b„Œ)œ`u¬TÛ½µgsÎïu{»h¥±šU’3µ†ÞU½ó×5^ïY¸¾¶1’ÞX\\mã¿>µoÄ\ZŒ7RKCµò_Œ*œ¶s×­s¨X¿\0ð¨¯R”SKC<&T9-héóIù	š¬]|ÅB÷­[O#„\\oî+¶W2w=\'Á÷/v€’w×=ëÔt¶å1Çä¸û›X¯é^§_FBœãŠïJñ±Î÷;4b\0õ©ÍgÚÜ‰T|Ã\"®†\0u®	E¦o	R)»²HE4¾\'¥M‹r[oª’Ý ã<æ•g7c*:š®Fgí5,\Za4Æž?ïQ™š‹%±Ò7¥V‘ˆ¥i\'šc¸+ZÆ6&äañAqŽ*`ÕSr°OzÝFâ¹¦ŽBòiä¤Öd·É‘Q\rIYIÝKÙ°¹ ó„<sQ5È¬yõ$ƒP-óA>õjFµÍÂ2ry5•,êc’;Tm6psŸZ¥svŠÈÍZVÒÞ¨RG^ŸJÃ¾¿\r•BqP]_\0ÍX7—àŸ”õ¡«jëì¬î­t¸µ{½ÂîDHÐcnîwÏLzŠf«ÚØ\\É2Im¿u´«Â2ž¼T¾\nš-°ÁnâY¥,ÓÅ!c8{†À?¥sšÌ³i—·EÞÆbPC*®íÝ=yªL,]moGÒ\'ŠâÍêia— Ã Î\0#µpšëßÞIrç\r#G§=+JýÂ#Â…æ˜|îÊÐ1Û^µÏÊÌ>µ•I=ŠŠ$··–êt‚$gw8\n£$Õ«;b·RZÜ	Tàí]¼çÜSt]Rm\'P[¸#ŽI2.p7gŒT÷z„×—ËxÈ‘ÊW÷cŒýj#kÛ½ŠÒCå9V# ¯½4&NqÅ[\"Y³3î|œ–>§žjHâ,3Ž:NÁrc8=:Õ”ˆçÚ¥Ž0¯ý*]›y\"®ÄÜ®cÁÇµ#‚qV™~\\æ«;c<ö©¬…·dµÎH$‘Ò–f=†Iª’6Æ\0œJÅ²‘È}ÀñéŠ<ÍžßJr¤Œv5”ó>À=2qúÖ-–)Ã`ƒœŸÆ¥Inì„ÀTÔ\"Àm\'=jSg0”$ƒ®^Æ¥Ø,M¼ã\'¾{VÄ&9m–%qS½—§L4¿c[%EÂÉ¹Ñ“ž=}*Ý½¤©.Æ%À>Ôâ®&ì:}Ê[ñëVâh<`RGlbÀ˜œ˜þu\"FIÈ5Ó¢Äß1Þ8ZûK”qÁFÀÆ*´Êc;[Ò‘`yhã=êì˜‰àdòãiàö¨Ë…\'š‰¦ žyªHAîsÚ©É\"«å²G¦hÈç½T–l®sÏ½)1ØÕÑ\ZÐjq›ÈŒ‘“ÀíŸSê+J3kâµ‰s?»	ý¬NIÆr@W8uf[4‹€Q÷#/QëøTš6¶4«ï·‡d•	(pIÇÒ¹¥RJö-$z.­áé>Í›pZÖæA,S6”\"ýÜ÷Ž3Íqž9‚?ÙÛ£æCvÎU†Ön3C€x©.<W}y5Ã<ÙdŠCòrzñÈâ£ñÖµ¤ë^Óå²;¥œ‰¢•n23ë\\’­78¦£cÏÀ úÒ·ëH[Tlàzf»nI<yÎs€N\rYYYTþ†«Åò®HêxÍÈñÜr+jÄÇ4„å³Îx¢IZi7>	\'\'Ê ^y5*}{S‰0\0ö©à…äeT$â¡Eù¹­2ÎGž=„yÝ;¨ EB;\nYAN¤Gjê5m\"@íqq€Jb‰ò“Ðv®JæRÄ’sÛ4áQIh%yš`ç&›Ë1ç5(\\ð>µAk\nªNJ•õÅ$[K€ÇëR‚óŽÔ\0.æ8UÈjX¢óY¿x«µw|ýý¾´áqÇÁ99<úS®M¹Á·ÞxÁß×5-öÇ\Z´…Y±Î2jþ™k$ú„F›ÏE#$zŒ÷¬¡#&0y5µáÙ´ä¸O¶É$N*ëü8ÿ\0ëÔUn0lqI²í7R0­ÞÆtl§Ê9P3ÁaM0*ËPÙ^áã{ï\n•´¼·\Z„N.aM¾hªƒÉà×Œj:}ÝŒŒ·´s;gæäó\\¸\\CªŸ6…Ê%³×nmá¼…Ø˜îcT8P9\\mü«2úòYäQ3´{žôÖÊŒ>rFHÇ5ª©ŒsŠß–)ÝI\ne’¤ŒÍhÇ`by„„q¹X\rcÇ¾9Fs“[÷7w&ÆÖÞkÅ’4bƒ?¥ãF¥—y Ç|ŠªÏ\'Š¹©¾ûœ–Ü@Áª‡­m€~sNŠBŽŽ¿yNA÷¨Á§Í6€öÛ_ê—¶ÂÆßK71ÜD\n¬Ž6È\nçß=«7GŽy º’ò6ˆ‡*làln9ÁÈô×á=`ÚÝÃÃÊ VÈØûH> ö®úÚ÷LIž[su#UˆÈÇ½y)J”Ÿ*5‹RÜŠãÀwköRÞHRÐ tDÏÍÛ¿~z\Z´þ‘´h£‰×%#+Ç=J:t«3øŠ—qÌ3)‘—s^Ÿ…Má=OS{°·3ÊÖQµn ˜…g*Õ”,nPŽêÓOðÊ¥Ü—ì\n	\neŠ÷$vëX“M§Ù$fØÊQ‚±Þ6’;ãñ®Âá^÷V¼¸’ÄCªŒ`ý:~µÈx¤Å{ösm#‰J‡,H+ž,-¦õ	hsÚÅ´ò¨¶\"¬ÄàšÇ™pÍŒ?*èlt6¹$ÊÊˆùTä°¤ÔôËu70†Ž(Š¢#KzŸÎ½(Î1|¦vmÚ)Ü*ÒØ»•Q™q¸í)öó$	\"ìVó8$ŽƒÚ®%úùMQaHá³Êžÿ\0…hÛè‰ÐÇ\'lÅTGµ>IÂ­æ1nëKs\Z-Ã˜¤fN9n´Ø£ç‘ž¢­Fâ#RXô­nZ8#Š<£ÞHn§·_Ë\"@q‚*HÐ†árzý+d&Ëd;¯ÎùjÔ¡6iT9=3Ï?”JpG8«JÂ¹Ÿ9ßÈ^ƒª²í\'ôæ®Ì ÝŸj¥2íÉíê\rL•Æ™ŒçÓ¢t\0î›·<f˜bs8åTâ˜Œ+RîL…žEN0N=\0«¡ÞÖyB¬pW9Ü?\n‚Ú(®\\G¹\"“çvÂŸoj–]üE*€ññ¹Nw\nI¸°^›Wi#‰sÏÞã®\rfI!|äuíWÙƒ`Ç·Fe;Aâ…p¹MÁbUTçéZ¾ÒßS×`·™áÈ2Å¸®ôÈÈÈéQiè“^,d°g!Pçbx\'Ú½cÃMbÊòá¯\r¶£l|•0Àç\'ê8Í5n\réb·Œü)§Øxf[Ý/MDÎˆD.Ï°„{ôÎkÏ.¬oR+Häµšª\\;ÊðsŽÕôÍ¯†ì¤Òlí/dª÷º`gþ‹¼3kyá{È-,Íåü›2Û¯ªå(¶‘);+\\/œï&\09è?\Zôß„zn™öæ¾¼Ï›(\0Éµ—÷q\\¤º]¤7c¸y-æ]Á·Ç¸nÇÊ9æ­x~T[“h.K*0r6>á¬2c“ºÐú’ßÉªÁ·ËQ€ §™§\\^Íþ®,@ïíY>¾KmÄË4–¿ºyp¹cëÅZ¼·‹S‰¡’V*§i\rÓŸÎ³”ãY²ãwÇ<Mu§¦¬¨G+Ï/Íz‘ÈDdòWõçÖ×víª-üß-\\² àã·5ì>1Ð´I¬b±™¡3Æ¦?µn9‰To,@ûÄƒŠðÓ:Ù¸Hd;³Œ}*ªÓvæ¾âŒ“Ðí/¾ \\§†D²@ŸÞJÉó‘ÉÁ=ù=}«€¹ˆmcžO<úÕûpgœ|êY¹9<`SumM¤Ž;s*¶ùPQI>¤u¬¯\'Ô¥e±€ÎI!OOJU%Ž	51!>½)Tí`{VƒC˜€qŽ}i„qR:çŸZfzÐ1…±Å#7ÐA?\\Ó	æšá¸ÍX‚éâ9\\sÔš¨:bœ8 \rµ×d‰ÒX·E:}×õvRÕÝ&½²óÃ¸i[k7<ûf¹Ž¸­[×[Sh#Y¶y^sÓ¡éª®w:Qðwˆ|bc:gØ´öˆâ9f+†×9ëžÕÈj¿aKç\ZtoCøY²AúÖ}Å¤ö²ì¹£î°Á¤uÙÀ98¦åÌE¬G4†G9l÷É¢9lI¼æš¨ÒI±@ËQ°¡ Š4Ø£^Á^öíb†=óHB¤c’Xö©ßI¼#=»Gå’pÆëT4‰¢·Ô`–i%‰@Lýôç¨÷®ŠúûP7(ñ\\ÉyÊe\r*a‰Îyú×5IJ3²ØjÅ=KÃ-oá«mi%ÊÈþ\\‘• £sß¿OÖ¹²£5èzÞ­¬YiŸc¹¶šk¢ÌÑIÈ3ýÒ{ñÚ¸ksZQr·¼\r®…viUr¹4÷è\r4åˆÖäÜz(PHëéNVàŠh\\žiê=>•\"yƒÅ1“1Ö¤/·+­3Í]¸Å;€‚6céCã8ÏˆÏ­7½0m‘Mf\'ŽÂ‘‰cšA‘@XSÍ©ÏJ2G=¨TÜ}©\0§‘Ò–\'(À©Ã}è#¶i¤…ç<ÓêŸ…þ#¶×tW»¶óŒÁ€¾„ž\\}å‡Ù_ÁeªOö+­Ì†Û¸€süëå‡~.—Â~%†v‘…Çî®WÕÂ¾•Ó<Ù¯–öÊì\\YL À]	\\c¨o¯ó®ˆ{×•ìÑŒ½Ý\n^+ð¾ŒšA–çÍÙ\Z\n<zýkæí~ÌA.Ø ”@ß4lêyÆ¾¯ž;këÙ­/Ì%Ä!OÝ©æ¼çâ~‡ªE¡Û »‚k8‰Æc†MuÑå¬½”þ&åÔð;;•D–Ù‘q&9Ç zè4v³·dH.æK¶GVÂdF\0Î=»	Ù:¶põ¯\\ðƒÛUÐbÔ´ ²šÚv‹÷°ÊO\\žçž+ÎMÅšóhpú„Ë¨^Ïxß»ie-°BƒîiŸhQ•å&søçé]¶»à+{[i.4½Kí(‘ù‚6Œç×‡ë\\°L™\r®EyTªSš´züËº„¶S‰!á€#¯P{U{›Ã;ñ\ZÆ«Â…ôªò1AÓ­F®_­tÂ\nüÂ.ÃÆ\'=«¡Òo.¯£K’åM²Éæ¤RÉ±wàŽ¶s\\Ú«µY·e±z•©¨¹™cT´¹°ºx.#òäÎx9>„U=ÌzƒVifØ®å•1è)ó(‘²±ªEª‚vWB‘ùœƒøTŸg$œTÑ¢ª€¹¹«Wn1È«°ŒI$‚LpœŸJ•T.Aš’ ?\Z\nÙlœ`œNÜYøÏjxBzPb îïTÄFJ–f@cVè}*•å¼v÷2i<Ä\rò0ÈúUÉ\\G‘Iæl|ò¿ãTÕŸzC#yde\nÜó×ÆÜI9´b·pÿ\0¥4ÀÇ¿&’ì+GaÊKÈB÷çÇ¥DInT0 ö5ÑFaŠ+eXíä‘‘\\÷åXwª×J³É#¤*ŒÍ¸\'ì¥-ÆfXÜ3(lŒEeÉl’¶Ô^ùí[oæ–-Á\'ž1HtÖ¶pêøÈàJN:h+.¦´]ß09±L{sœžý+rKId%ø\'©8ª¥<¬^E„´s²¡pp¸\"£c¨$þ•½rŠAƒè+xdVéÀ¡^ãW¹\nÊèãŠÐŠE›ŒsT\"šBrkVÚÙ“t­Ò\0¤åS$³FŒ¹`¯ŒŒðqVà„>7v­%ÓÒDÎ}*€ÁÜJšj£¬£\rkI¥•\':Ôlb|‘œRhM\ZVVÛÕH5±km´ƒÏåT´óÐvô­ø\0#® KÂÔ¸$PF1Å*ç<Uˆab)Ês‚8¦ÉÇ8¨ÖP2riˆ™Ÿ¬Æ8§µ]ßÏJ\0­(äã¿z¥pŒÇf=9Å_äd“Ú«\\ÃçD©fm¤·($Z1‚Y·ÃµAÈy\0#=+—¼¾ó\n>P*ö¸.-·#‚Ž	î+mÄ`pj\nŠ&[œžz\Zo˜gœ\n€‚¥<t¤Ë±v;§<­XK\"’~÷jÈg$OŽ]¤`ð:ÒL,k¬ÙxZYFO$šˆÍû³ùæª¼…^0°÷%^*¬NxéN.ª>¢™¸2ðqŠ@“ì)®{zÒ“´ØÓ–úS\0qL<š0FiGny>”\0ÈéÍHª±Ú“îžzR¯>½(ìc‘ÐP iCgŒiäÀàûT’4sŒS€ žæ¤UçV­-\ZYHÁ ñRÆˆaË0\0êOj±e\0’ì^5E‰rpqÛëOž1lrÄÑºž}ÍzV—á¨uŸªù#.S÷¹òc{ó>¤Ö«*i64µ±ÄB¶4qk3I$ƒ/Œp‡ÿ\0¯ïYÞ!ŽÎ-FAeH”Ù#ŽGçšöwÓì<;ðçUe–BxÂï!„NOÊCuÈö¯»fi1$·\'=¨¥77u°š³)q•î+Ü>ßé²[$wqÀÌ¾^É\'#xQòð{uàkÃíVOœÖ„—’K4{¶•D‚hÀèxïQŠ ë.TÊŒùu>„Ö¼Eaªé\Z†”ë¬\'lr/(¸èG®+Îî4èµ+·šÝ`0¶V$/´F;œ~µ›á«½[ÄAáëx2I\"R0Àg$³W¥/Ã{ÛDV@$\\Kå‡c»“šñå	aäÓfüÊkc„¼·Ç|ñ±–(Ê—ó\nTûqBxÊïP´H\'¶Sqœ³Æ6’1ß£¬xoTƒ@KË·i\"Cæ²n8ÃzvÉM4–ªŽ\"êCl\Zë ©ÕŽº³EÆGK¬iVz£%½«²\\%°˜$î	=Ê«¼{þ5‡§jÒi2Ü[ÝÛ´ÆuÀyvšJÕ´ød–[ä¹óLL¨Ð‘ØùxìnC¥ÉâO­ÔÐ\"ÉØ–uà÷¿J¶½›åŸÂ\\/.¤2´WZeÌL“—Û\'j÷ŸéYWÓj7Zm¼·Fc‡9Á°ö§iÚ¤šR5…ìa”üðÈzƒî{©æµÄ×6v©`‰(1õ­ÔmÓB[fˆ²CpÁ¤–;GP]˜üªÝ‰ç½YÓuËO\rÜD²iÐêM’ÌÏœs÷p:tæ¶°¯µ=!kuCn§`Œ¨çœV¿†4]!4Kû½ZXB³ÁË	6®ÒÝ8ïÞ²©8îÊŠhçî5íXYÚjÖ†D†%a¼qŸÜ®xrHÁRÄƒô®öú{Û™I%f-7æbI\'è’øÂÓ@ðÕÎ‡š«y<@I>ñ(ÁÁÚ3Ðsù×#¦.Ÿqtí$?ê£ÎÝûwqŽ½s[RVÕ¢$ï¡\r´ñ\"\\J	Œ£qêGN=*XÓÍ‘¦8ROÊ T·ë$g¸0e•0Ù8¸ì)¶ÒD¡˜ž9é]tïr2wtJXØG8 ôlIQŸ˜† Â™wž+¥hfu:f¥\ZF„ü®¾ýk²ÓüOÆ›Èà×”<Í\Zã8=*8u™\"ùðMtFµ´d8_cèMwj¬©.å>õÑÙëÑÝ	2Gñœ×ƒéZÄžX`çbŽFkvo|¹I	‹±<\ZÛÝš3i¦{•ðŸ\nø¯TÖ5h,m¤ÆáØ¾3ôõ¯:·ñl¿g\0]d¯U sõ=ê„~ ’{¬I‰”6â‘Žõ¡k°çmXôXnMÐ‡’¶ç9õÆ*xîJ¢\0œ9‹áû¸5<CÊÀFòaQ† ó…õàw®¡ŽÂÂ{Ë‘»{ØöÇ­9ÉEÙnWÔŠå\r¯•xÝˆç<¢¤¼¹ŽÑ7ÎÖ_”ƒÏ¿…&±æXF±Úf$ÊHÉàç?Jv¹paµ pbbv2ÿ\0	Ç#4•7t¤]	vwnýiËv¤ã5ËÅ~ê6žjt¼;<VÎ(GDÎ1žÕ—} PH>õ_‹\'Ò³./LªFh\0kÇiÝ=i~Ó•äÖT®rYIÍB·cP#Aæ%‰\rÅEöÙ#$†ÍT3ãÞ –r2Þ=(DjÌƒÁõ¬Ë«¶˜6*“Ýb«É.õ$œÑp°“ÎrrqŸZÎ—,àõ«¾äÉàç\Z¨²*Î“z)ËQYI”½6æóKhä´Óå’ò+€Èè¥¹Q€çÚªêoq=Ü·ŒÍ;4¸ÁÄy<ä~?\nî|<·úUÔWwZ[—7\\+âXÊí\0ã¦+•ñÖVRj2Y],“­¬&P\\ðNqÐzpi¦C˜[›½>íe‚eV	“ƒŒ©<«zý+6W2Èí€718³N•ÞG;›qõõ¦…æ#šÍÊú\Z%Ô}¤BIÕdq\Zžæ®41ç9aî1Š­ƒõ«öð¡B]ðõªŠ±]„£µYHð6‚JõÇJŠ#´‘ƒŒ}*ÊH60e;ˆàç¥Z UO—pëéF7”ì…Ö¢ß¯j¯ $Ø²`¹Š¡+…%xüêÄ³îÉ9õ¬ùÉ#Þ³‘HVmüôæƒap¬ãR	‡®*˜f+SÖ®Á¢P!—©éƒ\\ÓÐ´ˆîÐBåmaü?Ò£ˆ$£.1ÆG£w§:Åì@ùÃâÇòÅfÈ¡&!X”¥e{—k²Êt8ê*üVÂkgPpêAV=8õª¶ãÍD1u%sœb´£r°gfˆÎ:z‡qK¤ÍgfdEg]Ànã±ZÙËï]«6zš²¯o,\0Lîà/®==ªyµ‰„znàÖèæHÎÑ•$zÕÓrzÒ±OqPVMÄãŒúS¢ŒÌ§!OÔH­(i	ÎÑ¸œûâ›ç*GRzv®¤º²ÒÍ+§Ì,|Ýª ëË63è*&rÊ8õ§IâMËŸî÷5[nR°5YÜ“Ï\"šÒžvò*”óÉÍUÅ ²Ê;Õ	œiepMTy™z`ŽÕœ™H{0BFsPÊÃwÊN=éŽþ äÓ#`\\ÿ\0õ«REû[­£l`0pIêÆ0?\Z«}o$’à…\r€qÁ­\rm>Úåä¾Gp áSø×µ.º#“NÅ:ìùvNzqëYìËLç\0½E5_ëÓ5³àö§ 8œŠÑ”]y€;TDäwÇ½+å‚z‘M<f³&Ä‹óN*h†XßÚ¢ŒÀvÎä­0%†7¸==k¶ÑÒÙ¬ÞilÞGA@Ü‘Ë~Ê¹<%ÍÙˆ¡+ó\02$çÛ5¯¢ßý‚à¤ŒM¬ÊÊôÜrqÉÆzVUŸºÁhijÚ«ê(Un<¥|üÎ3ÀÁoÂ¸+™<É[ø@v´®uym–{KtŒDìrHÉÀèA5—qtnJ—9*1ÓQ‹Š)´2šI0£8ç\0U‰¢häÈÛ¸àŒuéMÓîžÎãÌM§‚0Ã9`ÖÆ‘=¡¼\rt¨@u`Ò£Œqþx­\\šwÔÅ\nRRÁô5<¸©\0Žr*×ˆ¯\"½ÔZñUŽBŒSštžEhÐ¨XÀ9mÙ8äÕÆNI6\'¡ríâ}‚–#¦0*2’Â¸’=¹¦X!¸¹Û•_—ÇsTžIXÉ.(\0ÉûØ8Í-´31ß8ÇÐT&B§ŒÐç*c»»Õ½„hÛjW,eœG‚¿1sœÚ»ª¦¯¨ý©­”¯™“²€F\0ñy¯?îhÆkZÓ\\PdKˆ7Æé†8ù±ÃgÖ¸«ÒR^é¢–š•uie¿Õ\'™‹0ƒ…Æ§Bâ…÷Gƒ©5§Ï”¢3?<þ\"«\\’\0²§=«H\'´e.nçŸJ%™šBCgŠ_5¤-ùqÓŠdÖí	\0ãžEX¬U™[v[¿Zf3SH¤ÆAç5­SÐ,9@J:ñÒzS€äÐÑ9WgŠÔµ¼¸ŽE‘YÕ—¡S‚?*É‹ëŠÐ´Rg	“†íŒæ¢Hw=Bm?ìñ;ÀÉ2¶âïór:õÓ> é\"ý’(¤ga–\0Ž;\0¾Ùé\\¥ãG2»+Fb\nF©¢ñö“ÂÎD‹,Zà«AÎéÏ¡{T¼½›ZºU˜¤$äq cœU3O¹¿AmnÎb#\'#ŒœÊ‘õ.Ú&Ú°¬¿ë	<1íô©™§iˆ\n8g)!\rÀ\0uÏÔÓŒeÙ-AÙ»˜77«dj †Ï\'8Á¬Ë›‡hQ7±U<\rÙ÷ªóÉºCœäŸ\\ÔIãŠì…4dØ4€p>´DÇ¡8¥RXÇ“Àük¡$!YsJ·©ˆev•öëPìÜ£ÍJÆiÚècdl’s“ü©Ð>×ŠiSÇ@*P¡ÁÎE	XFšZŸìç¹dSpŸ{œãÒ¡VUNr<AIæ“Ü\Z“íè¢@€B»x,?©¡yˆ®mÛÑ\\;ž˜æ¯iÚ5ãè·¬–¬Y<É“î¸Ç\0ö<ý*æ0Š{›if_.à!i£v@änÂ½kÂÖš}þ€Ð­ŽÎéw˜Ù‰Ã‚A÷À¬*WävfŠGI¦Mlëj×Êóâ&Ï_Z¯›ƒÊO8ç¯ã^óuà]Ì;Gf‘ÇçqÉ$ŽÙÏzó}WÃW6ÒÊðÂ™Æ¹ÉØy®zx¸ÎMl[¦Ò8ô³2#È±±Œ¹;{dþ5¬ò0$“µ@üJØ›N–ÞäÄŒÀH¼ƒÆïj¡$@oAÁ^H5Ù)ldÓE&SÖ Ÿz·4nCŠ§#…41X®vùõ®ž?Ïd-bÓ&6ñBVF.Ava×ŸOjæŸLV¦› E¨èW×ây>ÑIàã9=¸«¦å{D™%Ôö‹‹:už†‚;ôÈ€-nýAãŒtÏÖºøÊÀ±A,&r€³tŽIÉî?\nùjÝe’`#Ã<ñšô\r*9´Qg¬x^êIÞ+e\ZŠ•æ2Ç‘Ï@j¨ÁMl\'x½ÎÇÇ~˜êëª«fîÌ„O~Jói•ü9¬Å´ßd$Lƒ<‘ž§8¯jÖ<w¦ZxtÛÞ\\$Ú‚•ŽXÓIÀ;¾˜¯#×fÓ5YïÈÃ4’+’¿º~æ9úÔÎ1tß>å\'ª¶Ç¦xÅÝXIÅ»D’ÌJÉ¹vŒ±ÏÓ#5ÛkS.—áÙRÞåa“ËÄ.Ç$ŸêkÂþê?ÙÚ´Íä+ÚÈ‹Ñ¸%v’2sØŽkÙ¥°Y’ÚÖ7ÝafÊÅ³Ãü¤`¼+Ï¥›¹·5•Ö®àÓõpóOw©HO$!ðˆ\\²ù“\\9r©\nvÇÒ½ƒÄY¿ºm5É·¶,%¼*¤ôAìæ¼–óL½¶’h-%w¯Ýl{×M^~[=‰¯r•¬P¼À±hâÇ$\rØ?J­$m-ÎÑÉ<“VJ›`2A%~a]…ôK–º\\G—ñ=8¤W2zêQÍ\\éÊ¶¦U‘‰òÁä\nÎ`‚Gå^éâ;\n¶‡§Í<Ÿe“P‰ü±½£d0Ç¹â¼Nò·½¸¶Š£¥‡$v­¥w+‚Xt¦œdqøÒg\rÖœÀ‘œsSbˆØsQ‘šœb˜$ôH. Ò÷÷ ý(è1‡ztrÝYOÌE4ž‡Ò‚piX\rkÍZçV1¹š1€û@cõ=ë¨Ó<ªk:\\W¶Ö\"xb>_™Ñ»\'ŒŽ¤ä×­Šôo†z”ira»½š+xƒ>Åo•IŽø4£Ì“Ø‰»-ƒ¦®’.í¯tyrAG24eOÍŽ9µ[SÑ®n4ÈõØ­dÓ¾ÒBªGž{tÚœ:…âGy:Àu?g–×VFç8ÁüëC‹Gºð½î„Ñ°¹†swv…±²%=H¯ëB§\'+!s¤µ<–ÆÎÞñ®Z+Ýÿ\0.~éã[«§êz<hobe¶+Ýˆ®~M}åäR5ª¦\ZÝŸÝùÇnÙ«þÐnum#Q³Ô\rÄ÷v’kgl4cRõ±­‡«¼uE)Ç¨ÈõYõý&M2gV·Ú¢?3%IÅÎpMqzï‚õ;L‡THm›‡ÈåQÇ¡ëÔü\'á]KH¹‘®H6*Æ2¤á£$ŽßÝç­z„:›—%¢D‚)£ØìNwdc©«£	F¼½‰ºû\'Æ‡ \nM»{äWWão¿‡<EshêDjÄ£Ôv5ËõÕˆ£ì¥n€ÆHp¤@ãŽ)²dñÒ˜x5ˆÇHäß4ÞÔ `ç­4óÍÏõ¦ç½!R1À½p¥Ç5\'<\Z~N\r§<sO?*Œži»ˆâ÷æ†çš4{ÐÂÀ§¯5ôÁ_Ýk1ß]6Ñ/ÙHÀbƒ‚¾äqøWÏ‡žjþ‹©Ë£ë6z„.ÈÐJ®JÈü³Cm+¡5sìû›}&ÚfžæHc•×÷Žìqïí\\OÄoY\ra‚“~BLS8=)Þ<Qc%ä²:OhDÑ‚Jç‘Ÿ­y×ogŠxô‚\r¾—nÙ`«Èf<â·ÃTÕK^Þ{Ê)èsúÍÝý‘¸²Ó!Š+DÏh¤ô<wà×uá}oÂø6æ;Û¯#R›Ì…¥$±\'å#×½yŽŸâÑâÔl,öÍÑ½Ç$)88üjõ¶‘§k:]ÅÅ—˜—Ð¾YIá—‡Ö®X¥)sH\\m\ZLêîËQ)óa’2B¿?7CŒújàux,WÄ’éºÇ™±¤*n„€eO¿AÛò®WMšúwyÝK\'sfÂƒÔ“Ú«kíåm’l†bH‹ÌÞ@íšù*8YFvr6ÜÊ¿‰\"¾šÛr#•VõàÓ \'<ñIå¶sëVa‰ß\n‹šöâ¹c``¨yî*HÉ\0sïOH¤*Oœ¶)ñ§r	XB\0wgj4ÞFX(Ï$Ð¡<–0“ ©ÏôLéšXÙ°q‚=é1ÇÖŸmå¶VLÜc€¾ôÆù%+ò°‚:U%m@pˆ’~<H¸	‘ŠT˜öçÊdœ`TN¯É8Åv\' sNŸõíMDó€©’GZgÙvdsâ\rëV–á­äc#éH‘	A\r.r3Ó5*èeepŒ28ö¦ÊU›ŠGˆï\nœTÑÛydù²Çä%	äè}\r;ØCTC8Ï>”ç|©`F;ÔS\\[I#¬ª»O9¢\\í<‚¤Qtá—‘Ÿz•ÚœÓ=ª¥±ç–ç°«Nz÷ªE8,¼…#BâÑ|ZÑEÜ\nþTŽ»~SŸ­Ï\\ÀZ ñ3GA[×1áOÉŸ|ô¬‰NÒpy¦\"–ÀHü«ZÕD6å…RUYFO<ŽÕµ§Û¡@Å\Z³c†Á\0V¥œèê\0Èö§}mÇé±Ùùr‡Š¤\"óD®2½ûUI-T©ÈÁ=*ìcmKå†\'#\"˜±[É“‘Þ¶m§ c<Ó^Õ[îðsQy,„óŽÔ–€k¬¡‡^jT9ã5™>ü7NÕ¤ƒ¥]ÄJSrãY æ®\'lÒ´dœŠ¡\Z,/VdÊœjÕh²*´‘q@04«+Bæ1»ŽÃÖ£ºÔ¢¯aƒ>s+~‚®\\Ù-ÚXÜ«¯\'W7}tËn¶å0³nÏÞÍRi\n×0õiLï–$öÉ¬‡Ö¶geS“ƒÚ±®í¬™ª#R7zS[\084*–1M”0éš–Q œôÔÐÜ`\ZzàŸJ@9Ž1LÏÞ=ûPä‘ž(8îi€Öù±Æ¢QÏæ§Eçž¦ÿ\0ËBqô €p{Ò:SÔžôÒp)€c§4í£<sQ‡Æ©Td˜‡mÜ1K€¥\"¼õ…‰ÁÍ&!TÉ©‹n\nùjN)ÑçŽ„Ô´¨ã,@^[ ·¡m©ÅpÉ½ `Â\":‘Ð\ZÅ‚FIQƒÀä]V‡j××FY¥ P<é‘‚z9ëRï°Eõ ñ±ßj2Ý˜Ú&vÜñ“÷O¥Cê3¢Meæì\\!*ùÀÏ§a^¦éö1è6ú¦¸öÂ+™A!åeC€€£\"«ëöó½ÊI§i0[X_Ä§}™ÄN„œÀ<v5­\\4”.µ2U“v0µë;Øô“½ä\ns‹‹U%Û=Ôõ>˜®ú7ŽvYÆËÁV99¯[‡Ã±k·Ö£TþÐ}”,Rªrd^¼¼>‡5æZÞŸ=Œ½£™˜Ã#PqšT©þï\rTNV2#äœ‘Z–e\'»E”¹#îˆÀ$šÌCŒò9>õb™%DÆ2FÓÈüiIh]ÏOð&˜ºÚjº¥ÅÖ›$€ùŽ§ŒF+ÚS\\‡T‚;41¼Ò¯=G ¯Ñµ]_VðøÐüË{w)0‰ddlœŸÏ<z×EàýgQÑµÏìñ’n¥Sæ??˜à×ƒˆ„ç)6öüéZç¤ø—Âí.‹öm(¤ØoËŒcJóKÿ\0‡WW³µ³—PÇ¹cˆñ\"{\'Ž•î7ÚâÈÉ9Uˆ™‰ÆÜûö¬y-­­í¶Â_r)\nÀáÝ	\'ƒß¸çVT%zor´òôh‘^Gîb°ìGÜø®»J×ílí.ôó+ÉdÐ¶c“gÛÞºønÖÏÅš•ðXínIŽâDPæ90Np;{Ó5_Û[KÖŽ‹{§\\)Ä¬ÝûÜuã^³ÄS¯Íý3+Ùès:I¹‚;«Øe’×‘íla¹8·~µ>…zþÔy!7\Z{²°ã§›© ¬ü³mv2e)!T%»Î0oFñÚiöæ&Œ‡eVVã9éZ©$¬ö(Ò»ñ´š•¬Z^ƒjË,‡kK0Ú=iš—…ocÐU¯ü^©nÉTRcÏ÷A¾•Ïß$ºÃQÓÄvÍƒ!süÆzU]KÄz¥µ¶žÞH-ï¡ù¼Ïd?ßQØûÒt“·(JNÇ+¯ê#U&h9ö#ùhßÞöíYjòÂ›‘¶“Á\0óK2ä“ÐíÁ<Ônò„€1ØÉük±FÊÆZÜ†W,I9Ýß5~Ö´8\0©ÀqÅSX]Õ±¹Ÿ…5£g¤Ï¬ÜÛ[ip¼³Ê6˜×œ°ŸÒŸ2Š\ZW**¹p¨ó÷ENóAàŽ+¸Â·Úz„ï§ºÉöTÁ º³uä}ÓøW	xÓL¦V»æ-ëïJng J6Ük^6Æm¤§J]=–{€aÊäí=Çz†Û.Y`c çÒ¯XYÛ\\Ü4sÜGlJ’®I>œUÎ¢[‰\"bûù_ #‘»4Ø5!%K:Öj—‡r³nPØëOEY®–5 \'˜ýß­i\Zˆi2kÃr 8’Ã©«6úò+œJB±‡­cßèÆÈ«<ß# xŸi\nãÔ\Z­gkÅÌBk&\"ÀI&ÜíõÅoÏQ;2ybzF—¯Áo¨¤¸(Uó¿„vÁþµ>¡ãR.\Zï$–ÍùFLŒƒí^<W6¾lßk†â(ßÉùeˆqïYSÎîùb@ô­å^QV±\nšlõK?@[å‘°CZW)/iåÇ1€ñ‘Þ¼†–(‘ÈeGÎÖìqéZPÝHÈ2ÄšJ»{‰Ó=&ÃZiäœæ¶éãÆNA=kˆÐ™VEqËw®­§_)IÆ3]1ÕÑ®Ó<‘§ð¨dSA9õ\"¢·¾HÐ#*ƒœîÍG-Ïš¬r\0è$F9dsUæ\n?ÅH×,ož_¦ªùÆ^F±4®DŽ÷õÍ)•O‘žô4ˆŠ\\ç?¥gOp¥GÜíHkRYNIÇ>õMåU%z\Zwœ\nýj¥Ã¯Byö¡½a²Ü(ã=y¢É­Z}·.É¸LóúU)ÉQÍ$L\'=ñ\\óÕ•ŽŽïRµÒŒñé7Šño(™†8oaƒù×1wu-ÔÆYÛs¿ÌX÷¦HA\'úÕYHƒž+(«hVäÑ?–å†Æ0iñ/˜NP8`pØü*Õ¶âô­ ®ÆË±EÓñ©ÔôÇ4ÔÈÅJŒV¶ s¤“Où±‘P;àT&vQŽ ÐÝX·çääj¯$­Ï­G½Hö?¥FÒ`žxõõ¬ùÁ<ÌÁAÆ:Lo—ÍD‡ÌÈ\0Ÿ§j`—pç‚	¨”‡aÅ\0|Á³Þ¬YF—bï¼xÀw¨ü½ê©ËsÀ¥p$zàV2e«š¶¢i® ²‹$9==ÇáUgŽXRh“~Ço› àñRÛÀ+ÛÜf…Y•Ù±¼zØà‘ŠÚ·ŽmwNò‚*_#ãÍÎß”òs¥a)(êUô2´äfˆÂ¨IÎ+W¬š@2ÆËàzU”†-.Â%še’k™sÇÎÕ\0ç¾MT–7³‘ÄÁ<+øïïE9)½ÍI3x»¼´E pyãŠ¬,¤hÞA´FËrÜöõ¨VíÙBq³ºŽ†¦;¦ÐÅGeí]0Œ¢ÌÜ•ˆ²£Žqêi¥ÁÀÆp:ÔÄy¨@Q•êzT,Œ’ìæ<{VÉØ‘­&í$ŒúS¥Ã)Ãõëõ§¼YA¸3>\0\n*¼÷	ªÑŒí$œŽ2š{£ É­Þ•Ÿó”{u¬ÉÚ@N>SüëNãR{¤·Èd„ô<dçš5¹-eŠlÂG	™1ŒƒŸo­gí\ZÜ|¨çdrXóQyNZ&8<±?Z®Í’zãPåqØs}î½©½FËžô™#©æ {î×Ì-Œt—ñL,£•™Y$?\"«‚W£·Z‰K?öæ›(’SŒdð87@‘TÆÊªJ3ŒÓ†Tg=OJ–Y]óÈÅ1T0aÓñëU{š&°3œÔˆ\0àõÏZ%F[·U2#b03ÏzD2Tå‚Ì\\ö©FH\0.sÒ•à0>Æe?(nF\r!a¼€àŠ:’É˜•IR€GÒ¬Eª{i vu+óƒÔ{ÖY”ýÜŽ:Uv“w·=*Z¹DŽû›<ç­A¼mÇ¿µB\\\ZUè©1z’9Ù	ÁÇ\nC3¸PŒI«GI°†úR²ÜG…o™È6	ó«Ü6Ô­#™•òO\\ÕÍN—Tób…£_,n,ìðæ jMÜÑ|¡‡@{Õ[+‘89Ý•:Ù¤R±¿c¦Íq<i#¹m©–ïÔÿ\0*é<G¦Cu¥5á. Â4aò00	Æ8ëÞ¹cp÷1Æ`Û@¹þ/_Æ¬[jû¤¹[‹]Ò0ÎÝÄg=süë–¬fÚ’{\r¥c\r×\'8Å%ÝÅ›žŒ²††2C[ÓÄ†çí‘yf7Q†Qþ­¯åG‰.oÞÎÞÚ÷s>PÅAÆFpuæ­×“’H›ÏÚ_8Î8ç­ 3QœŒœ\nˆ…ÝÔã¹¨wl“*Ý;ŠÙùËp@ŸçyqcªC/÷{\Zy—âˆ–•œŽœšYŽàÍH¢?%³Øî?Z©$›>Pxõ¸Á\\v¨Á…\0dñëCw­§dtÇ4ÕS†1šÃ£?0úÖÕ¶ÄY‚í<ŠÄZ½\rÃ:„)¸ôÉ¢H.uv·*·Î^;†eÕÉ çœ¥N#±»\\=í½¹\0Ÿ*f ãÑxç•…xW{±H×)èjý½µ”`DÖçÎÎ|Ö}ÙJÇ•^àž¤“êrO\nAeLx;sÇÒ©J“Aq\\ÜHbÝ¸F¹Áõ5~Yâ¶Ÿu´¦DFK¨\\žüU«Ý~OMoºÞÖ&´ˆaŠƒ:ÄÖr“‹VZu)ôûÖ¸hBÁ?¿ˆÈªE·6kOZxwF!63Ð7|{VTycÓšé¤î®L‘j(ZTfÀäš‘còŠ÷$RB[ËUfÚ “JÌYƒzw­Öä–ÖqÜ‹ó…>•\0l¨Ï\\ÔD–ã¸©\"Ãº©lqž¸¦•„1¹à­:>ÙéžqL…$wÓÓhˆ±q‘Œ\nK»\ráÏ¤’BîKpO¥C¿<S7o`3ßiHH·ÕÅ¸& ÷ WsàŸÝÚÇö9É–  c§¶=+žÒb³‚4ÍÖñ\nŸ™}Ïå[¶Ö1cí1DÑ!ŒF¹?C^uy§î´j™éÞ(Ó¡€Áw0¶žQ÷n$c¡®Þêx‡Ê°¶Ý4¶ÂrN}sTŒjWÇ‰äeYeD.Ñ‘Àç§?ÒºíKE¶ðõÍ¬ÖvÉÔÄ“+€Dœ|Á{÷È÷¥G´äîÅ*ŒÁ×¼?=‹ýžö’K’D^KeÇrk[ð‡Ùç‰låóX@$‘·\r½2À{ðkº‹WQŽq:Æ÷ºdr2Lý`‡¹ï\\æ—â7º¹Kw³´Fbé˜»YûÇ÷ï^…\ZQC\'6Ï:½³xmþb_iLóÈÎB+\"EëŽµÝj^Ô,ô{´Ú*®ÿ\03zƒÐuíïÒ¸™•1jªG”¸»”›#\'•v5o²øŽm.W‰mõ(ZÞŒ¨“ªÏ#ñ®2C€@&¢RÈá‘Š°ä8 Öq•ÁÆèôHü7u¦x‚æK8á¼Xå%ã‚²íù‹/`2*ï‹õSVÔ\"›MÓŒ&[c\rÇ“ƒÉ]\'Ãˆmõ{‹Õ²ŠTÌqÌ“Ç;p\\7óèš³¦•ij•ù!œŒ/×Ÿç]N¢ºIjÌ¬÷gÎZ–“:5¦¤š‚\\I\'úäTÃÂÀ†ü@­«4j\ZDQµÜgf[	Á(}óüêoÇ¦éÇS†hQõ).Y\\E&<°Fx^ãÞ°4ë\"w2Ø¥Ú$[Ìl§\07§85çb¢å?u›Aû§Yðÿ\0J¿‹Äææ‰FÕÝçô`1·hõê*–-.ÂXlÃÅurv–àfibçŸjóû¯Ùõ•’;si(/e#i®1ëÆéZ~Öï|EâK-^+8ç´\r¼\"WÃî#ïž¸èE\\a.Ry’gY§ißÙž·ÒÚI|è”£„À2±üIü«:?†ö7¾Ž—x®y’°<ÿ\0»é€=+{Ä¤Ö2Xd­äˆ\0ˆdr>„U/ø–ÏÃzMÖÆ6‹÷h$Ésè9ïZEK• º¹óçÄ\r\"ßKñ­ÖjÊ`GUvÊ‚SV¯nŽ›¢Äð\\®ap€£rØèEgZjSê^1“Vh!’Rï?•*îCíŠÕ¶ÐÎ¥ú– oaE·ùy]Äð=kž¥5:‹“¡«vZœúÍrž^£s#LFâ›ÏByþµ‡yrg˜;òà`Ÿjé|k©éW×£FŽh¡XHŽFÝþÀW,\nxÉ§ªÜÐ‰†*E“$ôãÐr¼Žô›¶‚\r~¼S1Ç&ŸŽ½©‘ÁÅžzRÓqƒÊ”Sì{ÒRƒÖƒÓé@ÀVôö–öñY\\i-vehU¦§Lÿ\0ªô¬¸\"½+Â¿ÓÃÿ\0ØÚ¥¤Sˆ›Iö.äÁkzŠ¸rßÞ\"wègø?ÄM¿:­åÄ7˜|¼üÐ¶vÞ#ðåÕìFÆæÆwž_/ÍËê@Ú>}ë§½ðo‡üqk:5Ìzv­³ÌÌ%X=2ã\\-¾­Zx‹û*÷n›xª<©÷ŠfQ‘Ï@ßJr„­znþD®]ÙíÐÓEÓb°CÉ6d•ÌqœcùX^#Ñõ[\rmuíÚ´„h¦ŠiŽÙ£è=½E]¶—ÅšrÚ<–ÐêÐ²Ó òä\\ñŒwúÖmõä\Z¤Ï	»¸´¹q6““µ€‚{\ZÉâ%I]¡û;ê&•«j>&–]æâ\r>þÝ¶Ë!šHÏ$g#æ£¾:—ÃòÒ«›Ý%d.ÈÒ|È§Œ\0}\rRÒâ¹’òÞâK{{yâB º¿xÙìqÉÇµc|AÕîä¼Y.#ZçaŒA÷ýiQÆFz0tì´9/‰ZãëÏizÓ$ˆÁ•B)áAÈùSÍyþ;\nè|Bö·2˜ôæ˜ZÆ¹Û+äoþ-£·5Íàäžµ½yó´LÇ%Ž})˜Ç=jGˆÅFO8¬YbýãéL\'w?©ÂŽ(Ùž”Æt¦¿ÝéOa´àóLcÏµ0CE.y£gãK·¡Å¹¤Í/>”žô\0è žhÇNh\0¤íKšj\0ô_…>#º¶×aÑšý­á¸ v$„|çëÍv¾?ðŽ½{æ^^â‚03\"†àãŽµàñÈñJ²FÅee8 úƒ_Mx/Å\rñÀòYÜÞÕmH	·™Ttl{ÿ\0:Ú*•¥³3ÖÇ„G´ÚÌ>\\mí]€·°B%±¶Št—|a[‚sÇ5é‰ðn½J9åÛ·˜Y€$»)þ^ƒ§øKI²Ó’Ìéöûcá\\(ÜG\\“×4«S§ÍdôÙó¾£màýY­/U’Þ\\H[\"hÉàçüó\\ö³¨C}«K%²I®q;e•}	§øŽMR-Z[}^7Žæ/”£òŽ£íÍcªàåzšòhÒWSêZ]MH#œU…3‚@5NÜœƒV÷¦k¤M–¬¬§¾»[xÍs÷Tw­D¶EIaž;„9X’<|šÉ„lO5eÃƒÂŽ¿Z·Õg·†H„±ÆÍg\'.tK5³@íŠQÔò§‚*£æ2pFiòÝ™äÞü±=GzŽV/ŒÍZm­EÔˆNK|Þ˜§—’\rFë€xàô¦íÊœãÖ« Ë|c==jUàü§Ÿz©¯–T‘ìiÂR¬z´‹›ÉñŠ™$lcõ¬ñw’EH·\0÷Õiß‚j6P‘ËZ…¥ó8in h°4á‘v++ƒËg­[³×\'´Å\'ï\"‘v²8\rÏ¯5¨ª ®Ç8ïUjäã†zN)¡–äe6¶‚Ï åTbžH_T«`A&Lô=1O‚(¤Œäç¯”“°,™‘Hõ¡‘\"˜wöª¶Ñ•ã~4R§Ò­EG óRpöÍ<ŒŽ´›Å2F5°+‚:ŠÌ¼Ó“oÊ9Ím‘¸{Õi°2@éëF ®sÍiå?£bž^A7jŠR|ÂM^·•v°Àç½´ˆÛx<÷©ã#·Ò Œc=jÄ*Y×ŒöÀªaTïSciÅ,Ñ˜œ@É±×¯<Šµkl·°-‰\0ÈÎ0@ªIÜ4)ŽOJ&îZŸìÒc0NµvÊÅ®çX\"RÒsœ\nv¾€g¬XqÍY	ÆzJ‘à)+D.­ƒSÜXOgrO´yŸtÉªPaÌŠÀFzTè}ZbqNÎ\r²æ¡’0FqRƒœóN<ƒëLFUÄ?)€F+”ÔlËÈxéÒ»™XYW¶¨À‘ÔR°îpwü¤wÏÝîiHÅvº•®åb®Bò\'Ã¿´S\ršp!Ç#ÉA\0g ¤Á1Œ™`Òž;`ÓrAô œ“ž‚˜…È…yŽO|£=èì3Þˆç“Šh=^)X£±¤ÆÜwÅsüéÏãÀ\'óÍF;š\06Óµ9sÒ\Z\\·±i:sLEtW~ ­{p~ðÉ­k\r>§3Z-£<lBŠÎ}¬Q×œzyª/hð¹Ï zWYý‹#Œ€A¨åÓ ÃóC~KLW0¡Ó¦’Õ®•’nïJõ?	xSP¹ðÑ¶ŠÖF{ÆŠY¤¿$c$`ä×-¢ø~ïU½‚Ê\0YY¸îRkÕô«—±ŽßH2–)|ŸÝrã\0z×&¤¡e\rÊØòoøWZðÛÅ%â™mæv	´äèGcô®ÏN¼Ôî¼7äy@iÈUdUfV»éŒþUéRX\\KaÝ[¥Ã\rÈKW1ÓÔq\\þ‹Ÿym\réTœ“%È9»·Ô~¢²xÚŽžú‘ì¯b­®©uâ\nj\Z^•¥-aÚY\0ôÜPGZó7Â÷Œ.dÕ#ž<¶1JP°$œ~µ×ZjæK™,´˜Þ[rís$+IFp¯#ßé^xõßûpš°Ë\"HLøŸÆ¶XÉ4¢ôSKSæ£¢\\D“M*X‰\\í=qÓñª[6M´ð=+Ò¼U£xzÂ‡Ú®WŽDS\0ÆÎ8cÓ‘Ž‡5“¨èv·v–óÅs\Z\\ZI#aŽ\0ÈwÅtÓ¼Ówí¹Ë[ËµÔ£0”¯®ÃÃ~-_j1É{\nÞZJs1+™xìÖið…û=¬pÚ´r¹Œ!wãÐ~5CUÐîômB[+Õ*¡·)Æ°«NnÜ¨Ëª:¯üMÔ5Ù%¶Óæ–ÓKd\n 8R9®vkâê	ÿ\0µ®Œ°!Ž7ß’ªzŠÂäd7CV­­ÉŠ:ÑO\rF1åHm¶îÎÓÃ²_júÙ†i‹]NVSçHÉ×ŸCÅzUüVÏ§Ã¦[.èá H\n‘È\'× ×™ÚÍu\r¶©$ð¬¶“·‰¢˜ç¡Çl¦½/G’yõ——[¶†&i<À#ÃDàŽŸ–+‡=†°WÑ»a†£dÈÊÂi£†Qžãð®¶ÏÂv·RÅk,ý¦$Yd÷	ÏOjè|`4¸ìa½1[oóÑ‘Œ{¸Vøf¦Ò/íÓI¹º‹P‹ìŸ:ùŒò3ÆG®(U=Ý7*Ç9âÍ+UmVÞ\'[{C\ræÆ¤/9çÛÞ¼³XŠÚÒg¶7‰y\Z9	,lHQŽ€Ù?¥{¯Œ)|/ÙnP%Âü²n\0Œ“ïœãñ¯Ô4Xm#‘‘¼Ì1\0ž¹®ªfrfV7\\˜ÙØa“Æ>iÆËì‘;È‚FÛƒ~Oñ«ša{gu(ÌBã#œñ^ƒqá&ÒQž%”~=ø*Hëëÿ\0ê­¥;n$®y\ZE:¶cô`HÀ®£Ã\ZVº³Jšu¹óÕ7ýý½Fë]†—¤ÙZÝ[NÅP£Sº9TŒ®õ¯Q]Þ•¥¥Ä¡dIg”¨HP¯ÈÉ€\0ÖjécXA-NLºñ¯iq§\\ƒRHÀ3ÜÇ†q“•ÿ\0xç‚;\nã<S Þé$wW3©“vèdËœõŽÄwõ¯]Ö\rü×V·P¬wyùlIPU²¬Ùî>µæÞ;ºû5Å¼wvÑ5ÅÄfI&Œ|¤’x\nÓšÊŒýí;nrðèZÄPÍcdÄ9UXsþ8¬k±,“E:4s#èÃ• ò+WN’idRñaE`Ä»åœã#ç¿oWÒ­™.îd¼ßu»rXKž§8ëþ5ÝyÙ˜É«ñiòMiÃK\ZE$¾Rå¹ÝŒôô÷­ë+mWQ–æ¶µ–%ØImª»F89äž¿ZåYQ@Ã÷¥B»¾pyëë]åµ¡›Més¤ñEÒÁxúeïÚ4ÕÛåËåíßÀç¿O­dCeur´EYAä6@ÏLöæ hÊG¹f«ìÀ9íÔ{V¤:Tñi\"ö4–Ò¯ïü³Æ†séŽ:÷5µùäÉ~êävºsÛCû[¹S0\0Ÿ,ŒµF+iµ“qnØ»xãOà*0÷kW*í·jr}±ïZW—úÔƒìª³xŠÍ*HÁ8õ©)Ý®m+^ÛŒ½¢1[­Â5¼hÉTf=³Ö«EtÑ’A<WXš[êšu×Š5Ûè£7cŒ˜Îó\"àã¦T‘\\›lþÉSòok“Ï€\n?NjêBÏ™l8Ë¡Öxvå¾ó†àWFnwaõ®#Aº\nJÂ×H&Ìéóa€}«ª”¯9èÍ´¸ìX|¼sN™€zûÕytÝF+ap–æXäaØAù½½E$rXéé<³¡5¢hÁÃ£yˆ«W ¼±³Ây`ØÁªnÌ’€Ac€½jí\'Žv”–ªsûÒã¡ÈiËK!!2ÌIÂ“È¬É§o3çàÕˆfHÁvÎORF?Æ³¯&_0…l Î)9hR&3ü‡«I>ð9ç5Y§ÆF:«æòrp+7=F‘rYYþ÷JdS”<df ir™œÓÔ¤q—D€.25œ¤=Éf¹\rÄcG5 ¡\'­(ørxc–Ú:~+ZËD§ïMÀçÿ\0­Y§qÚÅ4ÆãŽ½*ýºàñëÈª×05´¾[\0\0HåSÅ!PN\ZÞ,ocAYJûŽÔàrãP‚=i³;Û>É áSžµ±6%Ÿ œäb¨ù¬®FjvºmƒæÈªO6æåsšÎs™9rGaŠˆÈÄ`Ów€8=iŽBsžõ‹“cµ‡	qÎpHíQÊÊ’Œ1 œúÔO!vFM$±¹ÁíŽ´‡bêÇZ¶‘	ò÷|ÇŽ@ª¶Š²AÔù™Ç¶*ý¬L³)IJä6qŠÍŽÄ‘Fþ„†äcž¾•nÊõí.£rQ¸Ç­›=+íA’Œ;¦ü9œ}î}}*;­1¤\n²<Ñ¦	TÎóž¾ÕŒ¥£Š:•ûß^5ÁÉ\n1€*{«¤¾	FóS#~+×zZÍù”AÊõµ­ôéîtÇ»„Ž#ó„?0úŠÞ1ŒR±*EµŽËÆx­ôËÉ¢Yc™\0k6\"ËžzúWW&½ui¥}•dŽ{u`UÊáÁ#8úUUœâ— A+êb®žÎ²½&Œr­ßj$…ãU’EÌoÀnæ’{‘s+4lëæºƒùÖ•œqfâíÝ‘ùeFï› ôç­Dª8ÇRÔUô(j0ËoR«0¾PÜ8êk?ÍHrñ«ù’“¿ƒŠÚ×eh¬âG1¬¶’Ì3’F?\nç¬Œw—mpæ8få˜9Íg\n—ØÚÔŠkfšÙ®-ã!Sùëî+$»•b=Et\ZÎ•{¢@ Ì³[J ¬Ð6TäqŸCÍsnJ¨$ŒœñéU©+¡5`¸”\rŽ\0Àj‘8È©˜QÜçµDTœ–ã@ #šiaÀç¥#ävàÐ¡À\'Ö†\"DÛµ³Ç}jD”€;zqPîÎF24°H°FÙ]=sPÒ\ZDr‘;à19Àå·fL• ãŠžÒÙäÆÈÝ=†kVëG¹UI`+\"av•Èê3ÐúT:‘‹³e$Ù…ä0Æ@ÏQVí-Œ’€F)$7Š¹j\n< ³F@Ž=\rk·•¤V/¸†8üµ[™,È¹³šÎVWB´0uST.%Ý+¹OptZî»m5œz}½”B8ßžy~œ¨?ÝãŒó\\•ì±™änòÉãw\\Qí¨Þ¥X“Ó¥C€<Ôq>ã>Ôõ‰ÁÅ;\"Â,o’á\nŽ:Ô{ˆ5:+ÉfU!U÷4£<ö«Žçµ	ê+Á<™Yˆ#‡¥hAÞS/’˜$á±ê:Vt,cb­·o#iŠétÛv[x®l§Àß b—ƒ€H>¹**ÍÅ]\rQC¶]·ÊBã¦{qøVZ¦/„ ç-]ªó^^H×n¦áHc@à‚8ô®bPÉsÏßÎh£QÍk¸ìt0éòùN1ÜP¶²]¼ÌfB‹œãštZŒ/˜¢#‚2‚;dgó«’¬vÆê$rÞg–ûp|Ðy\0^½+.y&î]†[ß†û-¼1,“·\0ˆÂ—9à]¿¥A†^\\Ü¤Ï/˜ÈÍº<ôÂœõþX®wCŽ¼’ÆR’yÛXr»{\nî|cÖ¸¦9Vã\ræ\'!rG9¹\'šåÄ^3žm%høêIÅ@@ç=kBæ	m&6Í¸HÍ‘Ú©2|Äc¿Zôc$ÕÑcÜ­Œ`\Zœ+ddŽ•\n’ ô¦yÇ¯z²È“ÅVß68<b”È[ÛÒšG‹hÏJGB„dò@52c–ÆqÖ›páÝXqT†0Ž¼SÁö¨Å<óU`£&®Z!rT‡­T_jµi!Ž@À}G­`gCeq$vÍÏòrNp*¸¼§oÍƒÇ ªÒ]§nA#ûT+(`àT(’ËY–Rb<œàsÍ]‡N{$kˆfI¢ÊŸ¸¿cÅQŠê;o0ªn‘—Áˆ(sÔžôÜ™\"[i—(>îÜ×ëQ5\'±I•gÃHNîI?—jX‰\0Žç­FÜ¾8©¢·Š²&äêCZ~š‰H5*¿ÿ\0^´@4œgŸ­>ØÆ×)æKå¡êØÎ?\nŠV<ñÇ­@§s`~T6Ë™Ü•É<–8êsUÃ\0MIV?0$t=±PÈÀ;cÞ¥K X”°æ›<Ï™€QëLˆ+±öŒ3“éQ—9>¾µOau:ÿ\0i1^H·R]¬>Y°²q…óZ\ry-¬—h³Iö®ÊÃæÁN£=3ï\\<—(ÊÐ³o”+ÔÎEtðêì®DŽÎ%y3ç#¦sšåœ,îÍbÍûÙØ¡½K+„ËÊ«òàXz\Zëµ¯øžÈê\'QžÚdÏønÃîçÞ¼Êåíå‚àB^\\Œ¤çØ\Z¢KÃ$\"C¸)ùIÈ­)ÉX‰£ZþÆ}.)ïlnQíCo´1ÜsÉ8Ç\0Š™e²Óà–+«)ÜnË6\n±\0Œø¯.§,¿g‚{x‚]’©Ç1õ¬G˜Ë=ÕÉTy3¬Iò±\0`€=kh×QZ™ò¶_Ö¼{žÔtÛ•¹žì¶ËY[	Ó\'ß\\×–Î$V\"•ã8#V½–—sª^ùpÆHqŽqœT> ¶{;ùm¤!ÌcÜëD¥ÍÒIÙrsŸJ„ñÞ¬€¹çœö ,Nä` ZÂL³Õ~\r\\\\\\A¨XZc¸ˆ‰„¨Ã8Jž	$zUë·’j1ØërËÐžUŒ*2\0;nµçž	ÖotÛýŠð[}¡Ä23)ôol×®EáèuCªßê×\nžI-1Fá™rv‚zŽ?Z\'UòÛñ%E^çkÚ”šŸˆ¦i!vw#ÉšåB³(ã·ÿ\0…nêúu®—á¤“KÖ\"{Û¸•0 =Ð‚OZÅñž·§¬[^ÙF°˜ UTUÚ¨G§ãXŽ¢Ë3¼Òp[‚Ç¿5—4a¶£³f}ì76×ÚR^cÔz¯zì<)­j::Mokk)»iÉò_#pÉÚTõÎhƒGÑ­ô‚¤;_í;Ë8*Wãƒ“YRj°Ú:Á¥„Â#3û€<ôäu­bùW1-_C¾Ð ñoˆåÔu.x§@öÌv1\0È	è:ðkÏ¼[>­izloUa%£·?t	?.k»ðŽf‡Q˜j’í‚àoi?xÒv<zçšÄøšúŒúûK¨E—¸ˆ|£œ¨ë“ëÒ´»”e+ÞÓ.\"-¬ù¶¿fÂÏÄ’T÷Àê>†ºø5/ÛZinT\\“@ˆáNp§®Üú×?£2ÿ\0aÝÇÊ“ËÂÅŽJw-‘Ðzÿ\0%–µý’Œ¾B\\ÛG)o8\'J•ÚsíúÔÂjÝÌH´9V+´¼ŒE<@’Õ.ÈØ™€jõþ«ö™ä‚qÝžÓBsŠåmÜÔ‚`žy1Œ#ž•P\'¨§I\'<ÓžõZ±\r<™¨9ÍH:ŸSMeÆHªC#èi@æƒÖLh	Å Š8Å ’)cs†E4ñA<Ð3µÒ<D–M$·Iui+F\Z	,þ@Hêµvº–¹âKßYO=Î›{§É)Eóé‹dõ\'¦?–+áõ–ªï¡ë\Z}ä1Äí›>nßî¡Ï_J5O¤ë¯wá¿5á…Ä‰\rÂd¯±ƒé[R”bï}Ld®v>øŸ©Ù(UEžÁ\0O¿™TôîÂµµïéZ­ëÜAnaÂÈÓ!We<1éï^q«ø“O¿Ó,à»Ð$Ó5Só][—¹û§ÔûÖ®ŒöºÌSß\\Ü\\²\rª’*«l`ï•ËŒ•J~ôuLºkCÕ<;¥ÙHŠl$˜H¤™$+¼ð9ë‘^aã+{™<Y;H$9”$qˆ¹p;^‰áˆ.t=j+»F#Þà6äe=¨í]ŠtOíKEº³‘a½ˆ†Ž^„óÏÒ³†\ZÑ»Vl|çÌš”Ð‹‹¦ŠÜÆ0P$÷$v5ÌÈŽóäÍt÷¶W7Z­å½Ìå˜LäÊGÞ òsY–/öX˜`²åH[ÞµÖëú™Œ3Îx¨^*VS·=ÇQPÕ€)Á¥g*xçëM#4gróž)X ÞÄäãŠiùÏµ!ô¤\0æš‰UAf˜O?Jnò:p)3LàÄR“‘ïH8¤†2( ÒRhÍ 4£¿\0V×†<A{árÛS°¤±6Jöuî¤w‰šp$\Zi‰£î=V·×tK=RÕ³\rÌK öÏQø+B¾mø;ñ\n}.ëþÛ¹\ZK{’Ðuòä\' ö9¯o³ñ)ûTÖ×Ð´RÆØÀ,“å/k³ëúÜúÀÚòžqm£°ÉªÆÝáŽ9K£	@VÎ>¾”ÈídxÁ0+m?69©#u* \\©$’B™b\'ÀÀ95`ÉËUXc=¨c€sÒªâ¹ag#=jUŸ,CtªÓ³séJ$Æx4·ÉÀ©üÂp3ÀïTG$Od!õQNâH´‡x#wÓ4N¨¬¤1 Ž~µî™Y6FzœŠIÁ`ñš®^£¸ÆrÝ8\'\0žõ6W!¹ô©.·€ È…HÝ±Ýÿ\0ëÕ&OøPü€faÇõ©¼ã€6þ•O©¬FqŒRW,ÄÄ°ÉÅ^HÎßz©D}kB0Ý\0â¬dM2±ù½G‹Ë8BÁIdãšÑÎœc$q)tvä ÒŽ¨ «©;óV`€lÖÆ£wL\'TX˜ðT;Ô6ÈÑŒàš,!`…YqÓëÞ¤D*ÜçŽâ¦Twàg9ÇaS-åRÒ!I@à§Bh¸¬1Ô•Ê€HëQ§*A¤WBÃÜzÓ^FV$šh×R:zUi2Üµ#Ë‚C~b«»€G4ÅbœŸ§5=¤;Ø\0NãÐÉ¦îRç#©­--aûb´²4*9V	ž{gÚª™ØOk–­­ü•’9íäÉMÊs‚	è~•)·òfØCa@,sß©.¼Èœ‡È$àç8>ã=©í1kdrçŽEk$–„£gC±ŠâÂâíã†Q%Äó•Ç8S×ó¨gKhî­ž);3ÊçµP‰ŠÛw6ÝÛ±ž3W-R# ÊcP>ð\\Õó¦’H,÷ïÉ\0£»¨èåšaq†ÚpM9cPÇ,H<ôæ­\"x*cÀ;³ÀÍJ‹Ð¶ÖÍlî×($YTÎ;\ZÏ3–8tÕ+1·¥4‚H§)i`Q\Z£±<ÒõÍ)LœÓ‚zÔ¡”àt©=iÛ)ˆ©.qT¤cœÇ½hOÆ}*„¹&€1oát®^öË%‰ö®Òâ1\"EcÞYÞ¥¢“8k›f^0j›©V·­u70ä°ëæù{Öv.æT‡Î€3ÁëR´8nœ”ŽÜŽ´ˆ÷$p(÷õ§:0GÖ˜Nzt ôëÚ“šp4Æ8<t C]²1ž¦š)®rôáÅ0-Úó†º:(Õ×85ËÚ¦÷tç5Òéà…‰4!3¨³·Pw+J8Fy—`Å:ÖG\'·>•¢±›&0!N‚²/-²ø=+q>í2X<ÑÐShGKðÎÖžàJ—bu\0œ÷õ­ÍVî×JÖÓtp´Ì›ZlŽÄ·óúŠÎÒü=aæ]dÎG›G.Ò\0½y5ZUžéí¤x|ÆLîYyó$ò{×\rZ\nSç/›¡›gãFµÕo$Õ™§uR±´cåŒà•ˆ—Uñ6sŸ™0Ú’¶\0T\0ò¬sÍXÔ-4W³¹»ŽÕàb6Ë	9ØI8?N•NÒñáÐ^Ê	®C) v*;¯QøWz‹š(Öº±å7ÜX¸w¹cqÊVès‚\rvÞÔ#Òô»)„Ï[¯Ÿ´ºóò°?¡®sY6Ñ4®êÆöI³¸Œ)uëÏJÐðŒÚÚÃùVòO©¬{â¡£Ü#õªmÎ°žŒôÛÍ+Â~,–âýìîí.””9p*9ÀÏ#³áÑ4›q -^T+Ä+cŒ’3úæ¸}C\\ÕcÔ’–k2ñN6ƒS¹úõÓèZÝÝÞ\rÔj²,—+òFT®6äu\0qõ^t“/‡ü:Ø4â;o8b<2ŒòËì1ÓÛ5çÞ<Ô¬õ¾P±ëœ¿Âz·ãmváï¡†åÉd)O›’	î+’¾Ö-oamÂ0H*éBSjl&•ìŽxFœ\01S¿î‘S<çž{VòiÚc“3^)‘ÇËnªAVí“Ó%–¦Ï©¨¼Ñ #¤C/·ÔW{« ±×xvÙoôhRÝíîf·bc›Ë\nbã$?{ØWkƒ[A$·³*ä;«\0Cn\0ª§‡|áÝ/Y[Ý3Sžé`\\´9È\'Ï¯|VôVö]½ýåÒE³e±´žÇÓ­yx…ï]ltBÑFÉÓ4ÉìÞ+»dDHÔáÀÊüTáí>ãEžÆ$DK€wË\nN{ÖeýëKnŽ¦±`[h\'wûkVâî[M.!ŒÈÙ ÃÐß­Y­ãsÇ¼[m«è:‡Ùnäšk(\\5¨š2£€=ŠçTNUd¸B¢g%O\0uÀ¯ ./4½RÏÊ¸É\ZÆ\\ù¸ã’G^+ÇõÝ.(Ù/,àŽ’fXÖ7Ü¥F0qÛÖ»¨JþíŒ$¬ÌK½\ZÝÀ–˜\\ì22ãk)¦+Òt}FÞm8À÷2½´q‚¯Æw\09\'Ô9ë\\€EŸIX.,7ÝHÌé:ž[·CŠÛÐ¯ÓC³š;âMœØÈdÃŽ>b;JœB.Ÿc¶>ÑõÕ‚ü³‡‘FX6p0}+)¼\r¦©oªÉ!Q.×BIrO ã·Ö¶4k{†‡h@Ö—\'x;ú¦8ÀíØ×I\0G·\nˆB\n7µÆ£¡¤½Öyþª³ßI§†Ïxiž\"uÙ@ÈçœûŠç|Sàf¹‘eKšB¶ù8“çó\08 ÷éÒ½^¶–T]8,o)Úïö<ûÖ<ÚÆ·£$qÉmÐÜZ52…|ç¾{sÚ²M§tDµ>wºº1´–ßgkg\rHþUJIf¹!¬Üð¥«væ	µÿ\0‹kˆ“M’îæO.IØì@rBçëÆ}ëÐì¼	£YxÍõ™í­$fye¼,ç„ã\"½¬=\'Pæœ¹Ož	#”¯”êýÁäÔhJ·¨#¡®Á4Ý2¤êªÖe¼§½xþUfŽà÷?ZÆÕìí­ožiÒi Ü&‘xIq\'¨é[N—*½Ä¦ž…áŽI#D”*¹\nÍ!ÀRO_ ®›Ãvš<¬ðjÚÛØÛod”Ûä—`úÈô®H’§84àÙ]‡…\'9Åe\Zœ²»@ãÌlÝÚXéße¼ý¦9]š) ”+mR@Ü1ò¶p~•±söˆ­ehLw2e¦“Í._§,!»þ5ZÚÒé-æ¹òwÛFUŸv}?È§jw÷:ÕÔ×“ßnÀÀÛÐÂ´uSMl\n6z›\Zž®eÑ´I<´¢#k(\n®Hè¹k«8“p ’¸ÆÓš±4±5³Ç`*G$•À==ŽjœŒÍ°BŒ\0)Tæ±qI´ºkiÉ¾+§Óoc»0‚ß)`gµqîÙ$â´tiH»\n¾ìàµ¥:®;ŠQLôÑz¢êÇFsqn\"¹9t”ä©àtÔÓ|kvÇÄ7V±Gºe*e`	wÀç#Ø+’º|Þ¨†v‘J%Æ{÷¢{©¥‰U¥,—Æz1ê~§ºV!8™rYÜ»/Ÿ†~0vžzCH’±#ŽœUÔ$1Âq°>x“î{ÖŒ¶²K\'˜é\Z\"–@NãÓ~u*I½Õ‹vw©½Ämn’³&ÐÍü=~µ‰s.ÆpÙ<g¥J÷¯\Z4`ƒ–8¬™&ÜsÜ÷©sè5ÃJX@8çš¤ÉÍ0>OjlŒ+PäZHdîNEOæŒŽ‚³ÕþSŠ³…€4¯rljExÑ ‰vìÀe$Žh†r²Æà3÷†F:UBÛpx4ÖàöÐÐ€¹(F•™	x×€ÛqŸÂ›¿\0`qT’bŠ°¤9\0`}kh´í¾·,:H´)‰7ŠX–êryàg“5ÒÉ¨îOZe­±¼¿ŠÑdXÌ‡n÷8QîO¥?]ÓG»Kaw\rËyjÎðœª“Û=ëFÛBI&V3€A¥7íDƒžj“9‘Kæ`k\'©EÏ9Žx¤ È2[oŽI«HwQœR`9\"Ú ƒš»JÁw±ÚÞ”‘D’ÀÄ0ÊöÏ5,J®Œ°Pd`g<ÖoP\"ˆý–vÚ0ŒpA+¤²ŠWi.ËíÇ<Õ+-*›È‘¯í“ÌV?¾b¸ÀÈÉÇ~•wP’ÎÒVK%ÍãŒœì“qÄƒYI¦ùPÒm\Z^Z* Hä·dŒà—É2rsžÝqŠ–ëX’8 ÃŒ•2ç\rœÎ=+£¸h›”NTúûÔedåØd1æ¥Q‹z‰Ý[{ÊÎÿ\033nn+cL°2ÛK$W‚ÒB¤ /´8ïÍ`¬›NNx,3›–ÆXãÜ;œ÷\'Ò¶”%%dDZNìx¿û-Øsm´ýÂ¼*9MÌŒ¿½o”nçéT&}’ºîWÚq¹OéD7EfVÀ;Aè:Õ8Ø|Æ”Èú|ª2c.2w/†{TöZ³ÙH#¹…fŒºÈœqžÆ²µ)™ï&™0æv X`kÅ¤fˆ®y÷¬¤”£ï›Lß×oã{×‘Ùf3ëQ„Éÿ\0SÔÖÃQ–MJ+y­m1ÝÅ€­ŽÃ=*ä¶V–èó!{!‚On?­hxnâ­\"çK{½’ÑŒÿ\0¬\\|ÈAêqœWJª\nðÖÆ©_sÏg¿º6æÙ§g„Œ$‘ì@íT•wHªÍ€OÞ®“^·Óe+>™!hBí(T)\rŽx®mÊœc8W]*ŠqºV3kR{‹TŠá–)¼ÄOãpªÃh`NC¢ bà+pÞ´¢Q‚ÎJÕÆ»=2i¹ÉÏ¥Xó 6¯‡2ndÁTòN3Í+…‹Ö‰e%¼¦Yü¹‘K\"pçŒŽèÙT€t# ÐÕ\\8õíõ«­#˜B°ùWÚ“L¤ìvÞ»b9e‰&d©<c€}ºÆºÍ`imp—ãÉ`WòñÆyÞªÜÇQÀXí¼F6zŸÎºh™.|96§¨M¬„Mnx;OÝeõïšó+a¥*œæœÞíŠÚdÛ˜2Ì·n^O÷Hõ•©b·¼	`•àç¥K6¥Ä†mÒ±fÜñ·¯®E`ßNÒÊîÃ’OµwÓƒ²¹‹e9d88ÍRlç“S¼¿+ ,z‘ÏáUK`þ<Öâ$‹–#lÂ’6€ÏAY‡*ß5K¬ª1‘Æ*\ZÍ¶Od%Å¹ §!ˆÿ\0õÕCò¿^•m¸$œzU„‘Š‘´÷©ÙÜ¢4«!*K9Éç5¬—w3ªŸ³“½yhÆH¾;qYÐ…Y0>X8ažH­Ý&æÝ5„òSm³\rƒvIQŽ~½éM¦µkx¬@ÒÝ«1zŒPGqÔ×?«‘.¡4ŠË\r±J}Þ=\ru¾!NŠ-=\'ó’ë6Ý¥˜“Ô£Ä;m€ü†ÉëïYÐÝÈoM*Dk‰*ÈÒ¡Ü™ÉSÈä~µÒxwÃ·ZÚ´vò•š7á\'÷‡°æ¹½28îD%C®18àv®×ÁÚ£èzº\\ß¨6’¢Q†tÈãŸJÏ)¨¾MÆ·3üA£\\øOR··úLŠYÃ0mÜÿ\0#]Ÿ€¯á»ŽKYKÁt>t îï×é\\w‹õ[kûÙg•ÈÚb¶e“‚GsÒ»†Ði÷šCD—>F¡‚ÊÀ’êGF°õìkŠ¥I}]J¢ÔÒ:È—XÐm+¦Œ´²›’ë*\'ÜR9PyÊójóMoOm:â9O—>NÓü8=\r{\rö¢!-c¨$qÜwE,/…pCŽÝ¹_zÎÂqø¯J–;{ØÒ}Ìdi—€{m@÷¬0Ø™Aß N—\r#lR<µ)ÎqÅ{¶•ð“LÓ­VmaÚ{µR¯6Q‰8pLS¼IðÛH:ÑPa¼…Ly@ž\00ï]ÒÍhÆ|¤{\'cÁ#ÔŠpù»[À2ÛZO=©Ý\r´ Í37@¤²õÄ…ëŽµßGNª¼­SŒ¯z&ŒˆÃ(àu¤C1œÔ’e<˜5²X{ÓÇçMüh ƒRÆØÁîjäu©å9ÏÒ€Ô¶IãšisúSCîi\0Îi™:ŒýiˆlŽ)¨ÊHÈü*r™rèEÆ}©u¨ÝŽ9ïR…ùx<UˆìäžXÖ%,ò\"(É\'Ò§òZÙÚ	íÆüó&ššZQW=	â¤0I=:þù-ü‡E—rîäävõi…´—Mo§¬³4Š©p2õÿ\0ëU9¤+sÊÙ œ“QÚ\\-µärÈ›•O*OQ]µïÃË”ÐÖõ.3r#ód‰Ð€«Ž™õæ¸”’‡ŠUÃ¡Á¦õÄ·±¾ÚžštÙÿ\0rÿ\0kvýÐÀ$çëÆ+H3Ï5!³saÒ®P±V9èÂ žÝíÊ‚dsQ-\nhxrÙ JLåX€O¯µDŽqÁâ¦Yœ.Ð0§‚}ESb6´\rgûõ¬àº‰ú‡\\öÇµ?P]ÓGû˜À`1Œc>£Ö±Ñ²ÂÁÇ\"´..ÚêÝw. *äc¾\Z›\'¸;ô-O«KrÈ¯+e8Ü¦?PS’Gƒ¼ã¢‚ÙÅk&ÅwM±±É?Þ®)³Váü‚Íï¸Á#ÜUF)h¶ÍÔ¢ÝdCæE…FŽtwg%”¥.±`è7– çÞÕÄ<Œzž0Êé¬@=yëSR•Á3Ô ðäÏÎ£â´„3þC‚#¯lõö®cÄ>–ÿ\0V¼0Ím\"Z¢³É¡–BÞž§Ö²ô¿›[+‹KíˆÛvŸãížGwÃ\Zê[kPÁIki#™$EòÀ´ã­É»Nç1PB…Á^j±;zqïZºÓ™õ›©Üåå•ŽÀ ’};VSäç¥D’5½ÈXín\ru1ø‰àÐ\"K]BasŒ<g$uïž9®]#Jô„ñØjZÿ\0‡ïÑ¾‹0È@Ü®¹è~„ŸÂ¥EIê\rö9{U¸º²’æO6@$\nHÃ’zJÖ´ð&¹5„Ú»ÚIŸÌ„<àíù®ÂçÂ×^Ô%Ôõ_(Gçn°®àÍ´í$cØê-oÆz®›b4	\"šÎâà™\'yãw1Îƒé[Â‚Ýç­Œ¿xRßPÕâ…mn.\ZF¸¹ð®z…ã§aZ“Ä¯•­oíì×ìrHÖ5+#Ž¤²œzóíT¼+®ê¾×ž{FVáÌ±ê?úW¼i\Z¤q\'Ú/Rêä’‘\0ß;GJÍ(¹=6\rlxýÎ‘¥[G4v¢äädþb ò:œp28®VÕ&¸¹&IYÀ\'q;‰¯yñ†\"Xõí±ÂÑ«-Ò\'\r$dÀ=Z¾wÔšÔê2µ¯™örÇË˜}kJ±÷Sˆá¾¦–ƒú½Ä¶‚á ‘Ç¾\\“Œÿ\0œÓ%Ô´ÓQ3™s–ë*ÚX’äwlÎ[iäŠ“l·7í\r†vÈÛcU>§X8§3Kê6HÖYK&>l`tª­nÈ#“¥Oó,¡™½ÁéHv¬%Pç$ÖMX/r¼öòÀ7HOqUÍÏqRÍ!b0=Í:([i¤Þ£ÇÊ‹>•ka±ƒi\\qMaÇãO^Aˆ\rç40ùˆ¤èy¦0Èô§\n@)¤4\'ñgµ\rØóJsë@PÍT¸ÑõkmBÕÙ%†@ß)ÆFyJô;ïÛgûBÚùï4ë¢°)(èŽùÏ5åÃ â½áUõ£j7\ZŽé¡fŠÛ‘Ë®GÒ²6ä¥ÄÚ¶§¬ßøûÂèÖðZÏi$LV9mî¡9(=xë\\G‰¼ ÅlºŸ†¼Gm²‚æÔ\\.2H9ø5Öê>Òõm&\rWM†H˜01Æé†Á#ŽõBO\nÉ¬“Íp2!™p	ÏÞÈñÍ\\q\\­SœIå¶±g!§ø›_ð«ÁoZ½¢c1\\å?0!×\'#Þ´u?ˆÿ\0ÚpªÍ5õ¬»@Îjäõ,0HÚ™ªü:Ô¬Tê«§Æ–9$3çî1Ûük¤ðãC¬h‘éú¥ŒB	™	w\\Pœ~´ç‰$å-„á}Œ?Í¢]]Ãm{­ÚÍ,æC>õÊ±$ŒäàäƒšÚÕ<—¦]\\é÷“É,so·E½ˆÛòöäU{ÿ\0†¾º¶ia7Z}ÊîÎÕ$ÏƒéXÖ~&ñ¿ƒn×MmB+‹½\n](\"Uÿ\0eÏ#Ó¬¡‰§Q+ƒƒ[aªZÍæŠd-’K¡PNy¬¾½«ÐüWªë\Zü—1ÝhÎŒßé\n‘!o+žOÐ÷¯<rUˆÆ½nÝ7ð1Å>¢CM#ƒøSÏ8¦c¨íRXŒÓ´ ã ÒžôÄ2KILG¥ŠJ\\dP\0{zQA4u€LàQž)){PfüéÏJ;b€%¶¸–Úâ9ávIc`èêpUÈ\"¾°øs¯iž3ðäW²[ÄÚŒj\"ºW;›pþ,Ÿ^µòQÉæ»/†Þ4ø•nZK9×Ê¸AýÒGÌ=ÅeUJ×ˆ#-ßa#¦{V‰¸ÄJÎ=®žßNž}vîëMÓÞRFÌ2€NÒ§§ã]N›áD¸ð¢ßÁe*ßgC»vX>\\}EsºÓu#²!É^Çžjz=þ‡4QßÅå´©½àr?\n áYðúc]ÄÖ÷S¾¡¨²	¢eFµ1ü«Øÿ\0ºsXº­Å´ÚÜíöxâÚJ|€¨dáñØ×=<C–rå+£Ÿ¹eB¥¢Ta´½3ÍÜÙ\0úUÍA ŒFVeœ°%—œ¡ªæÒE|¶ü†#ŒVð’°‰ƒ€WÖ®Æ­ !A;A,\0íTP…”Æ§~*Ü.ZéB€3Æ;V©\\è18i7ycïÞ¤½šÌÈ‚ÓÍ(æó1Ù=1Û®–ëOÐtûØ¢¸Ô^DxÁœC>Y+Ð\\×p\"ûL†Ø¸ƒyòüÌnÛÛ8ïZµh™îÅb­“Š…×¸<\ns>ÐAúU8ót5™I–Qrb(‹€0*ŠJ6ü§šž	_©àŠhfœ13ýkFßîôõ¬¨ç*ÀuÇëZ× ÿ\0@iÇ\n¼;‰\\çGÖ¤H?×–ó4÷m¹5`3†ÎAšD`8éÒš±×ŒÖO“µC‘Ò˜Šë\'”Hã×x\ržiÄn\nzŸÝ dœƒž”àD!‘‰ls‘ÐÔl¥³š²F0HïPH@<qšH\nÒGóqU¤Œ…ÝŽqÈ\0ã95\'œÓQy\'Z:q‘g‚@`šª‘ƒ Àú“Z6çÊ™Xc+Mhî#\\Úß_Ù	UÄ‹lxÕ¾eÇ¨4ç±ò™2KŠ€Ë%ÅÃKÊ´Ÿ{f¦G`Fó¸¯¯5mö\rXÊóŽ=jÈE]»[qÇ<t©¾ÔíBaŽwcô¤D;ñòóÖªË \n¸“VëþF2‡±=¨¦Å2,M¼È zZ†EhÉÝ€G`sUv–‚Üh8æ£Vâ”°ìjF<ŠxÁ¨AÏZz;ÓN;RÁ¦©ÀÇzRFqLV\"uÉõªÒB	<U¦â™×ŒÓ6Hvä\Z£<@‚ë[2ÇžzÕ	—®:ŠLhæ5\\ÇÎ]/8»‹ˆÖT ò{\næï,d$t¨e#œ’2=h’>µ¥=£(éUš Œ}ªFWš%1ãÖ³dP®@è5©,¡æïYòœâ€!Ï\n‰Î©˜q‘P89Æ:P1€\Z³oneqE´EädVõ½À \0iˆ†ÒÔ¦	±h˜c€)±Ç‚8­{T+1B&æ” Ó­h¨Ú@ýj¥¼{;UÄ$qVˆ,)«V©¾áÇ\'½g«y9«öÀRÒ¡a‘OÈ\r!tÌé¥\'€*âÞ£Û›V™#ˆ€¶QÍkeu¦Mv×b;ÕlIü¸¨¬Qïæ¶‚8Z0AS\"œ‡=À÷¦èØž{™úµÄ2Èñ£¤“IÎÛ€;ËŠÚ•R_iO8ó œG<ž^p¼‘Î:gZ°Þi$‰VR®ydÇOSŸjÄñRk0Y)’H¡‹˜ÆHÜN:W&.‹•¬)ËÌ£âÛh5í9f¶PÒÀK€ëµOÒ°4_ßøUýô§‚CF—Bq’	\0cÊº-gYÓ!ðÚÙ[Éºé“|ã<õH÷¯7ºÔï/ž;kË·û2ä\"Í)Ú§=«“FÉÂ{t®ž‡u x£GÐü:·wÚÅüìo!—n#v#$Ž¿w$ÅjK£ÚhÖ× ³´[lÊ\ZÚPZ1´‘Ç\0çŠñ\0å_nÓœõö®¯J×uQ\rÆ¥<V¢5¶e+åtä k¦TÔ×$¶!Þ÷E½Yìu}*ãRû^ÙDÊ˜‘>m¤Æ+‘tÎ\\:žCŠÐ‘í´ûÛˆÝ“ä+¨*Ñ…e±Ev1±œ.zÓ…>_t´ËVÒ´2M)l°.GJ¹¥êÒäiÓx\nG¡Íf4…WËãœÑ —åbÀzUÎ)«s½Ó¼]¡ElÑEG­!\n[q~@-íƒÂªGu­x“Ål«y5ÌžkFûµü¬+›¨\'ÂÛG&1Ôœ“]—‚4éíüWOÔ%vèf\"`QÝºc¡®I(Æ7eÁ¹;­áôž+:ªC(Ì0—`xì3Óµy‹|S®6·qcÐX-æ!6‘ï^»£Ã=µœÐ]¯Ú&X·”V1Ç8ô$×Ùé\Zˆ¯d¸s‹>çG8Æ[žO ®jJ:¹t.¬­¢/Ë¯]ê·ÆúlÒ2…#$¥qÏåSd^N‘.ÈðÀü[Õü;6‰ZÅ£T\'ÇÌ¹xw™i¯AÔ7íc$)ûÄôlûzbºhÔ„¾7mN£V»Xt˜Ýa‰§DQÁÏ©ì9ªº\r¤š¡–+§s\nBgÆO\'9ýh‹QŸZßmßæ®ÕêúãÚ´%–óK‘\'1C*É$`¼‡ÎW#ëúRž·CŽš–íµÛ3Q²…í¤‰¢…cAùd\rÉ*9•è¶WÎÖ»¤ugI\0}Ð{W“jWÏ+£#ysºrC”Ž¡Gn•¯¢Ëª_Ifw	Sƒ·rŒã\'×šæqkcFï«;²^jK›‘ÞÍ)ÁÜO¥rÞ;ÊÜC\0’#{\'Ê[9)ÀÇÇÜé\rž™\0y…É#9ô¬g´Ñ./$Õîâ·yIx‘\\ãvzžüSJ1œ­\'b$ÚG–kVöv—+a¬Y]¶ ª\\$l;7OaÓ9¯WI±¼ð<<-r>Ê¸ˆ¶yÇÜ³Œõ¨&Ñä½Óô\"E<L%RË¹ù!úÖÍíâi:²˜íK…ŒË\"ýÒz¾½kÜ¡î3šNûžQká]6Å. ±·†âù8ùœB„7;pÇ“žV¼¾þÆÒËXk[ˆ.£·I77˜½qÓ=+Ô¾!éñøfÂhtÅžI5@²Ü_4¥Y€?tc¨éÀé\\_…|&¿«YE<Ñ²É‰%F—,‘‚rO×ÝQ)Å(¯3û¯R“øsPÔ<3 ÖŠ¤·ú4K$¸Œ’KäuÁý\rg/…58f¸[È^Ù!¶\r¸dínœWuâ»¹4OØ.-ÍÎ—§a$yüÃ 0ìB‚3î*­ÿ\0ÅvóRó$´²·‹Ëh€’\0Û—	>â²­NJŒšÙv¬ty,­Î›s\'œ	`d;r=	ëÞ©XÁ1?!^á¸dsÍi7†5#¡¦½,(–Žv®+Ó~Þ»sÆk_Ã\Z›å®°ïm¥Ü\"P0XäaAÇSÚ¸eB{›)#“Öì%°ÔÖÎTF\nÃiÈ!¹Î¨]ÄÖ·ó@ÿ\0)Šœs‚+ªñÖŸggã1e¥‰ä\\F³ùŽìÏJç5†¸þÕ¹[Ø<«€ûe@»pÃƒÅ7Xê4ï©E‘‘ÞŸe+[Ïæ Q$‹µUG\0u4ûeÝ(wžÀT]´Q}.‰@Xäç-õ§´¡Ùv•ÚÜuäUuÂ‚cíš.…F\0\'pÅ\nMhKEñN®0­€Š:}iúuù³¹Žå\0i\"ù—<Þã½VÎ#$l\neIÎâ ŽÍ¿š‘¹Lí,À>•¢Æö4µKÖ½š[·’/:V%Ö4Ú£éíYˆLšI— úSKá:ç5n|Ú‰+£`d÷¦;\'Ö…`r1ÐgŠIg+žqœÒæJ™f&\0ÕHßÔÅÁ\0€=éÜ\Z4J•R221M|¹ÅA’ß3\0züÔ¯vAlŠw&Â)°8©³´ÔÁ¬ó&_9«Q6afcÀ8ÓRcdÁ°ÄîÎF)™ÈÁë@T‘³…\n8ÏÒ¢V%zœ÷§ÌÚÎKt¥D-~Àã­,À41¶~H$ôÇoëL\'\n\0ôªLv%O»žõjßåcÚ«ÛE#)Úæ®G)RÀ‚zSnà^··a‡R¬HÝŒÖŒ6þk;…\0¢ƒ…çŸòj•³ìpUkZ	PÛÉ\0ŒÒƒŒ}ßÎ•!—6ÐÉ˜ÆC!<·Ç\\}jšFÞI—ÌB íÙüDsÏéZ¿nžÒI$f²Ln»—c¡è}ëSLÓt‹´E[ñÅwI	Ü{\0OZÎO‘\\¥¶[˜.#¥;1òäœj×’	âä€x©Î?:ÑŸDkâP·Ùøßï˜Œ×¸©t=JÚ6Km@y3ÆÛ\\¸-ç)=Ç°â²ö·2‹9ë :ùRs•ÆÓéUHÊA÷Çjïu-/MÔ4¦ŸJ³%`¸’0zç¿OÊ¸«tNï/$ƒíWG\Z‹³!Ä$ƒl>ZÆ\ZI®G·¥Tv6ä+FDŠ~`zWM¦Å\0°™î¯8ã€…³°ÆBç¦8¥ÿ\0„Vó]µóí6µÃLWËT ‘°2óœr+X7SBtG,nâwˆ2”$ ç9=GáN½ºkYZÖÝëžJœzÕ{­2æÖî[y d’,³®y\0UU‘`H<ŒúTJ:Ø´tºv¯¨F²IÏ*º²L …ãÛ¥ej ðDÖê@Ü‰ù»‘ŸZ«m«Ïit%½\n¨àB)×ZµÍì©#È¤ƒ€…öÉ÷®giÝ\"ù´±ŸæºÊÄŸz7ddšIÎ%aŽAç\"š¬ûÖäŽÝû¾	àæš@Þ	ÉÆzÐ‚3øPy@ßÝ¤Í3¨†F!€íŽkb×@:‚?Êe„hÕ¹qÏ#<\ZË¶¸u`@Ç­:;ë«YwÃ3ÆËÇÊpF)+c¯Ö<eaáx5KmF™p%„>ælã:ŽùÊÌ	‡\nÅãS÷±¤ö¨î/å¸ù…IP0H¾´Ð|åÎìçw#©kN¼6¤©ÏRFUË»èÌ+¾Hw?<†î>•‘’«Ó’)»‰Q×‡M^ã¹ ÌÐEæúc®EgÏ6ù;žæ›%Á Î«<›þZ;”òçéPqŒ‘É©öŠhVç¥!ŒAàÓ‰!±ŸÊ¦{GŽÞ9C$È\0J‰~R\0÷È¢à:\'Û&y>µ23Èý*\'\0±luíZ–pDmAiUXä•ž*$ÒÔ·yá¶“ý\Z7ŽoÝæDÉVü¾õ%µÿ\0Ùü¡I±É¸?aÇ§cQ,‘Çp¥9ùÏCõ©µK9­îÎd·—Àx2zuôïPì÷*Â\\o»c1äï	†\\gÐÖ?”Þd˜‚ç>Õ¦í,.Ö†|ªÌ3¬=z©bÒKt#ó	|íÞÔâí°4V·,®Uƒ0Ç­uÞÓáÔµCawpñ[ÌŒXÀ`2	®AÎË‚:a¿*ôO)¼Ó^Kk@—Š›|È¤ÚxƒßÞ³ÄÉªwV¦F«¥Y´’Ée3ÍÜ2$ª…PŽ1×¡ÿ\0\nÙð¼Ú»ÕŠ¬ÎªÆçÆáUîžò	¦²²ØmYêÂ§?ð#Éî+´ÓmÄÑN—O,­nœõGŽ¸è\ry³­j|²êh—¼zÎ”·¶†ßT\n3“„8èO¡æ¹‹ˆ¬<%4°+\\3\\.ß>g:g‡»k[‡»\"6Š Û/˜œ1Çjãþ\"iSKn/wJÖi5Ê¨é½kÏ,£³4m›Úk_ÞÆ·7æ$br‘Ž=sŒw«\Z¥½²YÏq•Ïu.Ò)<äqúWœi¿iÑõ)ç7ÙQV!Ê¢dmçãó«×^%º{‹¨5f{hÒ-ÑCå¿9È=°8­]8KÝŽ ^“NÑíìï4û«”Xï–;yßi ~dšò_ê\Z®«wkml-V2ªÊØùIÂ€O\\ö¯`ŸÆ:ÚažâÆÜ‹jPLŒG!N?Îk™ÑüMs¨ês^Øiq\\:*C= oÞ4C8+ŸCŠ0ò¯CÄÎI7©åÚ¾y¢j\re{IÐË¸fªÍÀ$Ž¸ô¯`Õ¼7©x¶Ä»iÖ7HÄ<²LZSŒ`±=ç\\Žáè,ì5››ÈžíÚý™çS’ÝkÔ¡˜ÂP÷þ$D©ë¡À	”qÞ¬ê6rØ]˜¦M¤¨qÇPySwå^¬d¤“F{nJ§¤OµCÞž£\'=«DÁ–P„RÌj%`\rZŽT8?Z†ÄˆÔsÍY·” l `ÃúÔ“ÏjÖqG²ó±n§=GéQFD`0óÍ$î3SOÆY‘$3‚l§•>¢¬]–HùòØžKÉóPZÌL‡vS#;”p=Í!÷Kmn¾tÌûT ÎòzTi{€¶Ö­yºãÍ”„@N\0÷&½SÃ	Ól¬­ï#½K™L­3J8Â\'\0\0Úçº@û\rÜWw°“y&9a”zzäñÅzß†§:¥»Ìa¥Óïd‘á_Î²­V<®-îR‹&ñ¶½‹¥Áal{²¤ÚòÎA¯Ÿ<A§¶«KnÛ‰\\Ì0HìM{¯o¢†ki`Xî<—_6FPÂ0ÂýOZðßÉw=úÞÝ¹f¸Rã-’£$`Öxj¿bú(õ$³¸cm-¥Ÿ™+ÍmüÆ?­Q¸]±#)Æ6Ž¹÷©-žçNXo }†E!J¶IÒ«\\Í5ÜÆY2\\Œ“Šé_€±cS…gEØ§=0:\Z®£qÂŒšìtÏjB»†’ÙÕC4ƒ)¼öúŠujÆV‹e}\Zg°–ivÑ®ñ¢Ÿ¦AlnãŽê\Z#ÙÓÞº/ë²ƒJ”¾š9¦	€ÉØ{W--Ì\Z’ÿ\02|«ƒÚ±£9Í]•+-\\Îª¾\\9	¸‘ž£Ú©+mú\Zf9å±Öšy=Ò»â¬ŒXö ŠÛô¡Ë+ƒ‘Ú“Êg`f\'°Ú„Lÿ\0:™-çI¡r²!Ü¤v4†\"sÆ1Ö˜Ê¨ÌÜ3ÁéY´®f{©Ys»bz“Uv#ç\'Ò¡lv5ÖÉÆê];P¸Òµ{ëWÙqo\"Éz09¨›æ~µÌ`T­\n>‚ÖšóÇžÓ5XcŠ9˜	5~æÏ~é]›ø}u\r6ÞîöK«ÄˆäÌ7FO§ó×‡> jZ\r­ †	­ìÝÊî6ÇûË‘ÛœýkÒ¦øË¦+{-:Ýí„ÎI¦„*z°Q×é]÷I@ÆÚûÇžxÞå¬5Ö²‚?(Ã\Z¤˜û¤õ}¥zÃ/Ú·†&±·´-«D	Œ4õûÇ€kÍü]¬i×¬ZmÄ—$åešu]Ì3W·jÍð×‰Ž€Ó°„Kæ…Àn€ƒ×)rÆzêV®:‹/‰—QŽò_5õÂË\0\0XB·5æ\Z½ ™ F6Üç°5ÝjÞ?µ×ôØ4ë(ì§’3×2ÉÔqÏÚ¸ëýV	›ÉÚ 	ÅÎHãƒéÅjó;%¡PVW1ç…P¶âû€±Í[Ò´û›·/¼ïV$Æ3ÐdÔ:ŒÑKw!¶i\ZáiÌ~µÚ|7ÕôØõÓµraµ‘ÝüÕb ›pqÛük¶)½nê(áXÄeÜ‡e=Fz‚*Ï¸G‡!Ók‚®£Åv±­økFG2ªcç÷`à3ç®bà»£ÁêZšÑ´‚èËnA=óÅ1s»9úÔ®\nñŽj#‘š”P¹¨¦½iØÅ3šc—#­4ò\rIßZŒŒcHbRçŠ(÷ h4ƒÒ”Px nqNG*ARA¦÷ q@H|ñ‚]øthÓÈ5¿Ë\n7ç¯Cò,®lÄwÖx‘ƒ_Nÿ\0Ê¾@ÐuË­U‚úÙ°ñ8lÃ}kÞ¼3ñU<Go-½õ ’ø0h<¼.sÉíY8¾kÉ™·Ë¡éþc[X…G2ïa;\0ÁÇ\0û× Ë=–ªTš;+ÿ\04æÐ…2·FR;çµ3Äž%Ó¯µ=4j±Åˆüá,wÎÝàõêqZÚf“gâ\rÑïbyîÒ5Åé$8 ç†ê\rv:tÜ=õs;¶ô0<Sâ_ô¹RƒyO±ç=	ì:×3â”ÒgÒÖ[éwEòˆ¡\\—U»bµükàø-5KVµ–CÉ+\"Ì™þ÷\'šä®ï—I´Û˜¾Òä­\"d¢à’{Œ×ÂÉIM­J]-+Æ7ºˆâÔ>Õ%Ü^Q€³Œ§ÔwÅr¾*·5y\'µºŠæ	ó*²\r¸ÏPGb+ª—Ãa4huH\'ˆDìÃ+Ë#Ž™ôÍuâ¿],:|?jÓI¬Q“gñ=O<ÕC–\nòÑw}9\\Ž;\Zkõ©*ÅX`Šk\0zsZ2‘Ò©ÈæÑÐñÞ€4ÑïRA¦`æ€\Zy4ài\rÍi1HI¸ÍŽ(§Mès@	@<Ò°#œÑŠ8\0H«¦ÜÄªYBî<Õ$Oãš²¯&2yÇ­D˜Ø‰s¬¿öœR¤W2çÍ§Ë;‚?^ù¯BM_L±ðèA{åÝ¢yl„|êØË{×7s­Y[i‚Ê;˜­%È!”å#aÇÊÞãŠó/]É§Ü‘mx/Ré3(Îå#·â9¯7;ÅÁÃÝ2v’ºz–®5;m2[Û«ÁÌ—r4jŠãÌƒOnŸ­7Å:´:Ü6ú„\"Dƒ£ÈWnÞ¢¸û¸Ñb‘•™7+éLI4›¤mÎÝO­‚“R]í©!ffl6zŽA©ã¿šX¼§ ì/ý*±„£~ðµÙø2×Lòf¼¸ÓæÔ%…ƒy*W¹-Ú»°øuVV§dcišz\\ƒÆÞcT†Çn‡<UËÍ/NÓôëiÅñ–ô±[‹]…L`zšï<A­$7ð]è\Zy´’ÝA•1ÎxïÚ¹kÌ«<w`½Àe•®\0ü«»ØFœ{˜ûFÞ†f«¬‹ë{8¬m­Ò²Fé?Þ&°	,OÁpFt©Z@O5ÀÛÝ›ì0üØúU^ó0Ý*rÙ9#ŒÐŠÏœ\0ØäÔ6ú¡†\0\0ìqWU~sÎàj[;µÍqƒ½¸gšÑžÎmSÄhf#æV?wØŽÇÚµTåË~‚æW±F2~ë0«q\0ÚNj º%ò@éƒRÇ\'Ì>´Æî;Dä>pF=«ZÙ¼ÂzçmåÁéšÖ´›8$f˜Í´@W¥+ RBr1^”ÀÏ˜ÉaùUVl\n»:‘‘Š§åîêM#ó#õ¨e$œ~¢¥’-‡\'ëP³cë@ˆŸ jl8äzÕ’A÷¨\0Ô\0ä0>µm\0Çâ …<õv4?\n\0³nH\0æ§1<TC€00}©Á¹æ©r6Î<Té(…Ä‘àã«ô5N78ÅJNõQŽGsTÄÅ,rO\0Ê›íHG85\"¯îÒžymáÈ b¯=jUSw§óŽ´É¡ i´ÒOz O­4œsQ´€\ZŒËïÅ\0>FùMeÜ°ÉÅ]’L÷ªòzRamJn22{U+ :V“(\0ãMÐ>G­\"ŒYc\nŸ^+\"æ2	Vàú×K4AÏ#Ö³. N1žÕ,ËÜ¶QTØ–\'5«{\0‚?\ZÍa·#®)FJƒQÇZî8€dÒzÆPk+z\0«Ía[C¿\0Ví…£r1Òš­knN;Ö¬4x#§qQZBQ@Ç­ghýj‘$hq× R–+È<zÓ¥yÅEß‘ü©ˆ³ó0;š·ó)¸ùúÕXvr:VŒWB(#DóX`¾3•=Fó¡Ü¼&Úd ´’cSýÜžµ¬¦ÒöÝnK¬HêøxÉ U¤–Úx -¾)‚åþîIê¸í[gÃqK\Z}¯ä\n2’»\'ÿ\0Z²uÕ=Y.\'Q¥ë°Ýê/eÁÕß`2ÃÀÇozÂø‡uöY-.~d8*ÙåAõö5É\\Ü^i3Ï[\0U˜rHê1\\œ¾&¹‚èMqºå•òærWèGã]jPÒH„¤ÕŒíb3äwàHÞ~I@ÚÞÃÒ°_I¼¹–PƒxBY°{w¯EšÚ?iqm)ÉQˆ“?)n˜?…fÏzN†è±¹˜®Òmëžø\"¼z¸”§o3¦1ìršf‰qurÊQ&9sßÒ¤·ŠÚÝ.£½ŠåB©ÇÍÏ5»gu¡:-¬Mu) (<çù+W²»¼»žÚÚÑÆãæH]6•`F:¿h¤í°º˜RÜ-Õ¬1<­¾\"USëüê%·Î€O^´¶Öe”dOu*ŽG\\`WT\ZB#·’;kÈe–ž8Ü‰É\nãÐâ’o)æi#@ˆÄ€ô•\'$vÅnÙxrïT†/ìâ..|¶’h1°Æ÷àþ§(ÇVÊÔÇŽüÆYy¯}ð«¡:[3D:ù¸f\rÆï¦sÇÒ¼5íç¶˜Á4^\\±·Î­Ã/±®×À‚k›Ù­m§Xà%$x¥ld«d}¹®\\BæÑ¥;óXöÝ5ã·»Tžò\'¹–2‰€GHÇlqœ×”øŠ=*ÓÄrË£É,€³où“xþéî=ë·ñ=¼‹¤\rvÊýøÂð‘@IUñÁ`Œ}«ÇbDŠ~Ñs²Ecº<ËÏnÕÉJ7ÜuuzÚ³Ïeow1üèÑ³’1Žj¥ÅÌú®Ëü˜cXÍ(…ã!¿\Z¹á=û[[X‰Ò-\"»\\ãß×Ûø‡Ãv{Lï¼;ˆò”©a€QëšÖ2§Oc5~§-aâm6y\"‚¼„ç—eÁ-ž¼ó])ñ–£\rÄ1[¬’Êªªƒø¹>µå×ºlªd”Ïûèä\nñH6¶NyúWá8ã‹F$lÒ’6H£9=€Çó­& ×:)\\ÅÕVê[¿>Bòä“ƒøbºïßÙý‚á„N­€YUŽzÜô®Jè	¯dK™J$`]‰ïî=ø«ó\\Kµ½½ˆ)&Ó¹_]¾§¶1JI4‹Fü~?ÑþØÑ´7-`*©Œe[¿úsVu;6úêÆK9â.Ý	ÎìÓÔòr=ëËŒú®¶mÚ2/,m÷9úÖ…Ï…®´Ë¸ækt¢vŒlìnÄã¶¬8§£§ Úx¦m:Ë½D:\\™ŽÈ%ùc\núñú×ßø›Tñ†¯o*Ïöƒ\"$d\0œŒO^\05¼šä³ø=â°‚]ëILëž3ó*±öçñ­o\røÃê¬×\Z‚K©m#Á[cŽ\0dž½ù®ì¨Û¾Æ5”QÒøžÅäð×Ù>Â5i\0¡©ï:\0GOzã›K>\'Òæðµ™H47JÌ3U½O¹¯HµŽöð•’1mMªsóH:nÇUã×žjµñ¾Š+…¶Š;;©ˆŽ2®	|Àúõ×¯Nv÷NVº™×~\Z—QÓ®-¯b‚Ú+ˆŠ:Û¦Ë»r¹ÏÓ?‰¯9ð·‚tû„×bñHåSk*Ë´ã~¡éŒ‘šëµ)üE.¥öãšHqæË4ñ«ªì¤£æ£šÃFñý‹Ïö÷!kX„ãÉx~bqŽ{;U´íï1\'m‰aÑü;‡µ->óRˆi×`¶•ØUBzüÙäu«×\Zç‡C½¶FûLVf0¸UQ€®GNGçšç´¨¬,t&=BÊÖ÷LŠÙ#[´”¯œŽ¹8ç¥q÷ÑO¡O}Þ—pºv¦²FˆxhBËóc’2}r\r*×`›ès:Îµ&µñu\"8-%YcòÂ¨d“ÛœW5ª_Ë©ê7—\'t÷4ŽqŽIÉªîØ™8Á$Te²wMyÕj_C©+\r“–ÿ\0\nì¼i¢I|—:ÅàRâ8Â:WV7â	é\\iƒ€:ÕÛ0åv²3D[<óŠÎäÕ„“jÇ«kžðºêæÞÂé­ØH±<r?‰ÆÑÇ_âÏL}kŸñ6‘m¡XÛÙ#¬ÚœSIÙS ”¨5ÉI,·\rºkƒæ\'@Äô±5¢FÛx¥|™xÊƒœ“ØÕÎ¼\'´L’’jìˆÚ9Ì“r		UcÏÌyü*k©C›s1†# ã®ŸF›Ã‰q\Zk«q»Ëå¡b	#8çãj/øƒEÕ–Óô(tû¤†h[åtŠÂ)I5\'©­õ9­Jma‚$¸Iå —)÷FzúúÕ0S»ŒqN¨$XLnè2­(¶•Š&†w‰e@ªC®Ó‘œsÚ˜»B1*PHMÇœŽÝ©»ˆ½hæiˆT#w$ãµN¥BŠ+àÇóU]®<íE_5Ãru|’FO¥5‰fbGâ„%AaÛ¯µA4ŒFG¹¦¥pÕ£ê;ÕË9¯RcF«\nyŽ]±ÆqÇ¿5N7Áes¹[¯5¯¦Ùió&òüÚ2Äî	ŒX`ªñëÏåZAÝ“\'dR„3¸ŒÍœ`“[šŸ…u]ö;;è\nÍ$>r;O_Ò³4É\'¶¾Kˆe1<|rwÜ9®ßH×$K	õÙÚæMRTW1‡ã`«0µoJ1{‘&ÑÎi¸ÖšHb!Z!¸†ôözñùVTÖ3ÛÞ=³©­Œcšô[ÿ\0Í¥ZI{§Kj×z¤Êyµ9 õÀ-Ð–XqIXÃßß¯5£öiYnr{ƒÍQ2 ÀÆÛ5ÔAke/‡bv—¹pªä€¨¸<z’Iü«\nÒÝï%”ÛÄX‚JÄ¹f?ãŠÐ´“Ki489Ýò²°ÿ\0#\"¹çìÍéöïqr#A\'î‚zŸAZË§bØÏÊä¯N¿BÖÒy\'¶?:0eíÏ×ê+£1ùv1Mû¹ãD’2:¸†}Znk¡QW0.cW`Ñ9e ¹åq×5¥¥ØË=²N¶Þg–û~_½×·½G,Kq4p6v‡n?‹­Ø™®ZÙ§uºŒ2´IÕ“¨aØãü*kNÐSl†Îíì–÷k!‘Èp@>ãŽ*MrÉ–á}²ÆÁ–ìgÏ^=?.·quoo-°šmæy‹e#Œç¶qRøsQb…^ãdŽÒ4YØ¸ãóþ‚¹éÊë™\ZÚú1¶:å’ÄÊ²Á\Z7œÊ2®20ÃŸÇŒ-…ôj!€L;°ð7`\\:§©Mu>ª&eXd.YWŽ?^•OM†îúùmâ\0ÌC:p»ˆàž3ÅW*W’3{Ø½¨ÛJ!¶1\'—¬ãOÌÙö­­ÄWþŠå\Z‡’E;Õ}x=ýëKóóÊËö¿0G8Úç¯LUæT¹Ñb–4Ýv&.FPN{ñš¨TåFrW1õ=\\\\\\,Ê¥ò6î˜rFìæ´,¼45ë»»K»xåBAœÎI×¹½D Ö7Ê© v…3KÔ¦Ó.…Ä\nªÖ#;}ÅEE9Çš/R£dõ$Õ,íí„f/3,J±n„Œgšq§#³u®E©jÝjQÉ3È€nBÆ1ÐV<¹‹qïN—5­-ÆÚèDAÅ5r8ïëSí2’ÀcTE@b\rjHŒÄcƒšp‘F2rjAýÓœ\ZqLÖ†ö|ÀäŒŽiNGÍ¹íH˜L–<µX\n%\nr¥\068ÙÑÜ.BŸjb%v>µµý™Å¤aGšt‡Í¸`Ãjs†uã\"ªÞ[Oo\"Dc)*œ© ÐÖžÍ­HRW±šà£•#•$T.Yr3ŒTŒÙXüù<T0Ú9¡èUˆJã¿Ò£–>¾ô¬NzÒ¨žGAŽµ›`žzàR/ÌsÓµ‡Ó‚94€\0zç\r!¤\\dx„g‚<Áì3Ú©I‚Îàà*fŸs³”Æz\08ÑUˆ*‚=\r8ìTó÷ªå®ØäG”/98<‘íTcr®A=zU6NÖQ§JL:–X‰\'f*ÇJ·n²ÉíŒÈ‰ËØœU(yÙÎ:zb·¡‚[+qum˜H]Ü–Æy‡úVv)+˜wîÒ³N@Rx.3IÇØf­N_‚ƒSjpì@\n8\nUv±ç=ÅF\"Qp#aÙ¨OÝ[TSâ³‚ˆuÍO¦ÞÍÜrFrËÊ‚x¦ë0:È_)Ðÿ\0=*+DI!O¼[~ÖÂôsüêôpÔ:á×.u=¥ÌQ²»lj»³œàõÉ\'µz·„äK­®`V\'ï2‚©çŸ×šò}YB¿gºóÚÚcs+Éü«¥Æúm®”¶6×»ug\";™	($tà÷ô¯¼%\'h#Dí¹ë¶—.”·!C±MÁPãð®+Tø‡§^‹H -nc)!•vùÆ1ÜXñ|]Ò¤ÒË5½ÄW†7Xˆ;Of¿5ç·:æ¡¨Û‡’x@Í½×TöïXÃRZOa¹®…ýoXk#4Ö—*¦P\n ¯b¹öÇzÇÔuOPX¥½¹wI‡ÉUœcôém­îáK¨äó&›-*ŒrAã®*ÅÎ”ÒÝÛZ–>Xl#„g>çÛÚ»!\Ztìžâ»béR%Æ¥r3[ÛÆÅ„dn“Àæ½GÁš~—&¦×\n‘µÚÌÎ²©Ã’p JÁÑü>.´çÔ…¬m4*Ñâ.¯ðœçúÔÖ:”ú,iu©ÁµÌ#LìÀ­è}kŽµeQò¢ã¢Ôïõ»-/G¹¹™Ì[W`w¶I gÓ­aXø?CÖlZi›qpRRê6:ŒqŽÄŠ©câ-3ÄÚ4–­lÆá _5[c¶zƒøqZ~¾wÔíƒÞÅ$kl¨ë`&AÈãÜ+’.IrÅÙ²í}O,øÉoo½a=´O\ZKj$`|¤Î¼Ü.kÙ>0Ía«iñÝÛ\\C$¶—F¾|cœ®9¯?-}.¿b¢úÕ4cð¥ßéQ})Tàs]¦dØãš°‡,8ã=*˜<Ö‚HžZ…P_×Ò”€Ð¸A$¬eK9à«ìk^ÃGg‰âc±¨ß’ÛNqÈù×4²ÿ\0+aºÚ¬[J­(y	våŒçë\\óR¶Œ¥cNFžxe[(vÛ¦>ÞAôÍjézdv–\r~ót8yÀ?­Áe-èÓnf0ÛËmñ¸Oôäb¬ÞÃ7Ú•jÂíF\nuÿ\0ž„öè+†®%¯scHÁnu¾ðÖ—¨Î÷žy`Z¬ÿ\0òÍ‡\\©®–K£Iko˜ÎØÜË· vúš‡@ðÝÝžŠÿ\0éÒ}ªášI¤‰î8ÈéQÜøfÞ5ŸÍFXæ‘zO’XžOãÞ¼Ê²oY=\r•®UÕï`Óô™–;î¡’Sæ‰’‡ŒóÓšðïÛ\"y¦DŠ]»¿„çÓüö¯rñ–™ü#Å#–G¸b¡\0ù†î€~>õäž5ÑßLÓíD1´hÒF‹ç$¨Ãõ®Œ½òÉjEC¶š`†Ú>’°mÉ\'µJ†XüÛrv¿Ý`Ë‚1Ö›¦^-•Üw	xØ2Ù\r^–þ‹‹ÛË¤â]ÎPÅ±Æ;w9¯q·Í¶†è7ÖZÁ†î8š6/˜ã>^\'øÈ¯ZÓ|C+¤–ºUœ&ÈÊKº‚V4ÇQžã¯ä~¶´¿ñ$	qå*©3aÔé^æ·:m”‘˜Ì_e1²<pÁF}G?…y™…Ü•£sZmufU÷ƒã¼ÛæÈÞ6r\'‘s$ÌÊHý+’ñ…-t	œÜy·AÉécþzWcqã8à€Z:G{‘*,6ÐWâ¯NÚ;XöÇZ`€|Ì:gèsSƒyI&¬‚|¶ÐçÕƒ[41®Y˜Ç·µG2*Hl3Þ¤´Óõ¥EÈÈaÜW©è~\0²·šÞçíÑ\\,a%`F7g×ØzW³*ª6¹ÄCm§\\iBÚ>ý¦2+¼þXl/ ãZƒM¹ƒHÔ\ZËyV øÜP«ªôÜ®0GÒ¾ƒº†#œ¤+%¸Ý… 	8<jóŸ‰Vp;JÕ‰T»(±N…yu# þÆŒ>25–º1J2Õ’	õ)~Ïp±Ê…%GLŽÆ±ö£6ÖõÅz·ö6«1G£ÈRÙ®^6\0í=}AÇZäõM4û×„Ë¾0øY\0ûÃÖº%dJ2&ãÞ«8<qW/ kwØ$¾Æ¨³‘ŠÍ­\nDg ñHàzóJÞ¤Ó	ÉÏz€qŽ>ôÆlu§(dÔlsœt©[€“Šr¶i™Á£žæ©±èJFÙdŠ@6²¶zŒñLèjp„EæeGlgš‘’ˆdQ»Ëá—p$gZ|1Ï£¨ÃTú×YàNÒÎþÍš]\\0´-ÆõcžüW]âK]#Æ:ÐÓôxm®Î7—Œ¦vé[F’’ÜŽ{;î‰¢Ú^%”“Ü,º…Ë°K…=È®Zòd”ù8HãÊˆÈiÏ#Þ»ï\nønî/iÓßYËö@íeX8IW¿°Ï#>µ—ãïÃqâ7ƒG‘&ÛšQÀ`Äò©Íe*VßB£+»#Ì¤»É*“Ë<QRÎ†9NåÁVô6’ÙÅ%¾ª3wvïjÊé‘“i,Š Oñ‘œT-Ç^N{Uû0´?.Ç3ìÉP;Š›_ÓàÓ®\"†™\\B¦a)ç=qŽÕ¢ÕÐ^ÎÆ@áˆ Ì})¹ç‘‘Þ¤ãmID •$\Zp$Š$Ð8Ð\n_­!#Ò‚}¸ aý)¹§Ò‘…\0)â´ô·PþhBs‚Ùô¬¼üµ=‘O´(fØF=Í	ž‘áË­3ZŠeÒþÛ¹€RÃøOd×·é^8Ó/-äŠÎØÚO%­æOÔ`×„hþ6‚ÏM6 Y\0æ`‰8ÎFAÿ\0\nÂŸÄA§\r!,Hr9ÅgÌã¤Q—+gÑwZºåêßHó}¤ª¼{\\m@}G¿µmÞxbßS2¨c\r-©·vQî#ò¯8øSâs¡¬Zîqû¨¥o³Û$ãð¯@×<Jšf®¶Å¤?èåÕbBÜûûWU7V£#E©åºÞ’|;wm¡Þ¬×Vßhó÷F¡s~9ÎkÄ¯k·es¦³ZIwnÂAFå#Œúñ]OŒu.t}DÇ<:„1ˆÓ8\nÍ÷ŽAê1Åy½ä×ZÀ1“¿$!éƒF:\nQVù—IÙ™\Z½”–wyu 8Ü¹î*€c^ƒâ=+Q¾Ñ„÷6m¶Ç-!\\dÐû÷¯<?)Áõ®jwqÔÕ1M4“N<ÓH«ªisš3‚)Ýzw Éï@¥#‘Aâ˜„ÆiTã#½\'OJJ@<òi1Í(ö¥èqÚ€I SˆÍ\'_Â€?Ö¤2åH\n†…ëS`;›]VX\'o8Å#àŠEzç¡ï]&³¥ÿ\0hÃi©ÚÇfžz³I$rˆq»„×ŸÀ\"’}ì`µÔz}kunt©%¶XÑ£ÜIbAÿ\0k=yóQMI-LÔRe-OMHZ6‰æ02çkà÷Ç¨ª­h‘F¬ŒŽªOJÖ¸ŠÚÊË\"ñ&o4…Œ¹WÔçÖ²æ¹C$%TÜt?JºræZÑÝü¸ç<âµ´bçN½S8‡£…8Êž¢²ÞàHàn<*Ý¯ú4ƒz¼ÓJ\\²M;$¬zN§ñ2Ð§´¶³Û¸ì]Ë·d‘“^]{}=äÏ4ÌÜä;ÕÍcZŸW˜e#PP»±À\'ýë%™‡l\nªµ%&ÓwDS‡.¢!ÁñJìÁ°19±MF-èô¬÷5Ð²ƒ±\'\0míQeëÎ8©ƒÏO­Aç‚uiêmõË6|Ë½nAå0:qÏZËñ~¿g¯xŠ[‹^+EQ{ÎXÜ×3¸žƒ¿½ `¼óÔ×EJîqQ±\n\ZÜ¼#†¬¤$ƒ‚*’\\d¨Sœ\nÔµ•$e~oQXš[|¼ô­+PGJ¬»3œŽ;UËl3Žy4Ðv¯œcõ«ÄesÞ¨À \0jÐ“hÆzÐRŽ?…Qa±ºæ´«T¥[´ÄW˜ä\Z¢äî5yÓ ÕY+<Ðg~ª¿0c×š½å†=ZQ\0S¹ã¦h\r¾Yÿ\0\nÑ…™@ÈëÒ«¢\0ÄÎ*tW$gžÂ€-b:ôô©n#8ØTŸ©«+;Sñ\'š®)žÔíÙÅP8=\rN9â™ç\ZÆ~è9äBî÷§p/½<-*©\rƒÔu©B†<cÞ˜‘ƒK“Š–`ª\0OZ®O½1ßÆ\rFÎZkžàÔLÝy§q¶jb\rûyÍG»#¯4®Fv“ÅWy2px©Üã­TœãÖˆfÁÆU’`¶j´×88ê*f.Üö©¦6J˜oJÈ¾‡Ë$©ãµh+œÕJî@êA94æ¯r\rg:Ï_lVè¾•šç=úT”@è¤ð0M28²ø*G|\Zš$äÒýœ€‚ •®¢ÂØ®	«?J\0(¯zémÀ\n8HM–à…JŽ\0>•v5\0b ˆ€=éÅÈ<UI$A¸íUL­‘Ó½YG=éÌâ˜ˆ•xàRíç*pE.þ½ª”©™¤èoR©pÅT}Òkª¿ñQžÞ8í¾UÚ6‡ä©ã}ºñ\\îŸ¾¬â)Y¡áQ±ò±ç¿jŠúÕôËˆö6ô\'\nHã=Ås¾YK•—gbž¡w#3³±Î:Šä%X¦ÔT\\|’~o(Çó®òM-îò±#°ÏÈ3Íb_iwš¢²í) ]Êz¡ª”“\\©’´:ûkIðþ…Œ\ZqåVe‘|ÈØzûs×µC&·%åƒD\0peØ9Ø[°ÉàgŸÿ\0]rv®X‰î\"ˆ)$oëÔžÕÕ‹¨¬‘‹_3¼±Æ¦hÀÌIŽ\0{b¼j´9%}ÙÐ¦¤diº<ÞÕ–;‹x‹«,ì\nÎpG#Ûõ¬Ï\\Ý=ã.Ùä}þR¡÷¿Z|þ1–+Ë˜¯kÆ!„NdÁSŽø®?TÖ/çºIÞI·D\"ù1jÚ•)¹)3êì‰4«\'½Ô`³pÖâGòË2gÓµÕøƒÀ\'DÓmï^ãÎ˜‡!ví>˜î+’ðýíÛ^FV”è%†löô?Zêµm^MNKkkÝOÏŠ(·†WlžëøUÔ•_h”]’GaàÏøWPk}bÌ<a|Ë{¥Ê+ú]VŸái,|E%ô6\ZrÛm*ªŒ|ÅíÁé‚3Åyv›âkð±ÚZÌb…\0G^˜=¸È®ÓKñö”’º6¢ ò­ò¥×å‘½9É\rrÖçr×SU$Ž+âÔzl:Ä6–_fYÔ+EäžÍŽõWá¶ ÜÝ[\\[Æ`P“¼Í&À¡OPr8®_ÅzšêÞ%¹¾Tò¼ÖÉ;Ëd÷#=¥B±„¶Žâ‚~`*süCÐ×}:n4R¸”í+£Ú¼Y¬ÙßkVzkÙ{Hä=@ñT|ª\0Á=+™ñ„tÏ¶Ý=¾¬±ê›þÌë·qÏOÄWgá!µ/$ÚÛÛ½Â	>X”\0ùÆà9;×x“O\Z²WVº]BæQ¿÷s1eìW,Uêhõ¯¹GHñü#Ï±l\\^Än¶àç¯½w>ñÔ¿ki4àñù9IKaîyÊjvê:+ÜJsuK299à‚{ôdÚë7–ÂVb¯°«ÝWÑ…k:1ž«r-gs¬ñ\Z«ÛÏ)Y§Éá»íàs]†uØã…ì­‚”\n¦4 }}s^o¤øYä´…ÎASò¯ÿ\0Z»­¢Õ¤IÔ\"ªa\ZH€]¾™œä\nS‹Š³*-”õ«Èo|C#,xŠDùá¸ãéNwovûmÃ[%»àéÓ5‘â8e´½V7PµÁr®‘“òãÔ‘üªÝ½ãÂö›ÃªB¤`–ÇŸPGõ­”}ÔÐÓ.$\Z…ªA¨ÙZFñ	mŒì2r=@=ªü=ë	Œb&·apŸ½\n€û¤ÿ\0{¨ükCFºÓÂ$¸Ùh\\È>I`sîs[ë§Yˆ_S·†	a‘@X]r¥!±ýîÕŒš¸ÎC[ñ†»e%Õ½µÕ•ÈCÚÄr²±#8#í>•è¾\nðõ¾Ÿ§EŒ’Ý^Ç»Î£z\0¼)#¯Ö¹o	h\rc­	‰·™X³Æ3þ©Ï\0²ý==«Ð’ùäºŽÑ\"Pî8.Ge¯bœ\\ir£™µÍ©}@W9å9ÇoJæ|Gk©ß\\ÙE§²Û$s’nXŒr×ë]<Q$1ˆÐ£¦I?Î±<E«\\éöW_f…|Ô‹zÉ#aqœœð*¨·ÏîŽirêdX“¥Ç~Ò^K,Ñ+}§æ\nÄ~aÛ=ë’Õ¡‡S‰–[;{Éšãí(–îbxŒ™q\'®k™Ö<Qz¶B´Þ[-Â«Èó(/+€ý‘ÛëÍ`êzõý¾£ „ºÌ±;È?ÖätÇ\0Û»\\£Û9¬Þˆô-VÒ­–=>é-£Ô º†XÌÑ·BØàúú\n·ñrêÛMðRÁ¶;€ùEËBç£ƒÛ¸Ç½x<÷’]ÍÇœÿ\0hW\'8ïœñK©k—·ÚTv—Sù‹±¾ñ,yÉïÒ¹ÝusXÂF)%QÎ@ÈÁªùëRÈ¤ 9Èj`\\}k‰(A“÷»t­+idµ·I‘€‘Øçü+1†MX…À]Œ	^¸5ZdÊJ“»‚yšX$Eî˜]­ßµTÜ¤ü½}é¸5DÛRàº–Fco$`îïK<áÈ\"%V`¯J©»\nÅJ„(-Û¯¨ì3y%Ô¨¥UÇ9\"‘v±\'¹ïRJÕ¯áS)Xv}Ú:çÖžX1piæ(– NV@z†¢ nÎï¥-7DÁ™£àp½qÚ’Ì2À¸f^síÅ)éœý(]‰&.™<š|†	Y˜ð­¹cÚ¢„)\\¼M2áX3¶±ùJŠkÝ\Zð¥ÁÁô®žþï@šáM¥ÒDÖãYrÉ.Ð?Èýkž…Yö \r=:Š²±4Œ§aeÏ kHÕ²i%v]ÒìãžæÙ%–6ó.6<&_-¶õÜXðl×=Úhž	§Zìšì‘5¬ø‘vä¨e«u1^{}iu¤Ê‘ÜÄY.\"e`À£ŠX®î–XÉ“ÎXX˜ÒNWžµ¼*òic9E¶^¸Fžs\01’2p‹·òW×ƒ‘SËáKè4ç¿L1ƒœ1ì=ñÍUÓ­¦šc ”Î:ã¹­…Ôb6Â	gväÜFzc€qëSí5m•ªZ<3©I¦ß!‰DR³ƒæI\0vÇ½ij²_^ý¥¤Q4Ó3LÅ¾ñê;wªÇPˆ°‰\"#$‚xÿ\0>õ¨ÐZË\nKæÃhädö$*%^KN…(ÝÜè|7¢ÚÞéóÁÈk…RÄlû„6U³úcßÚ³ôµ¼Ôn®¯®­ØY¦ã4›xvû•Ñh×º=Ä7Py†!ˆÎÒsÓƒŠçõ?RF†ÝÖ+tËå„{—‚{W\n²udžÆ­ö2N_@·ˆÑ†w1è3ÇéW5X\r¼+yeyçY£/à3×\0ý+3Q™¤ŒÉ!GPv«†è8÷®i·rY6ž—aTmÎ_PH®÷5Ë¨-CPÕ!ŸGH­Šå7d~ð`,æ³žùç»XÄÿ\0º )Êã8«’YC}­ÛØéì\"\rÒ“­ƒ†î	Z¡¨i÷³ÞÄ bÁB¥IÏúxÍf§ùPõ7µXïô”™\'HäŒoÚ3ÀÀ‘ë×µfæµ?ÙÁjÑB®Y…‘›8§÷â²àyì´´+m&Ù_Y9QŸÂ‹Oí$’/îÐ|»NwòyÐŠç¨å/…ì6µ9J½:õâ»WIQŠ–>Øâ¡âxt,ä8ÉÏJÙÕî7BÖ÷’Ì®Ï–\0óó¥‡¦jWV‰qiÁcr¡@wèAêæ·æ“…ÒÔÎÊú•ïe,“ª†Î1Ž‡úUDv\nÇ`ÖìÓêó	¾óóHFä“ëÖ³ÙJ1RGµ¬šîL–¢0 ži	 tâ—;‰\'ƒèiI\\prqƒVHøåT@}úS	ÈÉâ£-Æ1À4ñó.29 e¥´ˆØŸ´/˜¯·ÉÚrG®zT[¹Áè:RC—pŒØŽõ¥s¤\\[ÚA>ÀVU,\nœð=}*/mÆTF]¤`ù¦£˜œ•<zÓyÊñƒNêÑ&ž¬O¦y†ØœÈ»$œ0Îp*Ž]NòâÝ –æCL}¸$Ž;u5G<óÅ)p™+øŠ¾y%arër°xÉÆi­È<Óe\\†=Ç¥#}ÑšM”\'\'¸æžVäJŒpsŽÜÔ± ™•TòÇœ\nÍ»L³¡rLPÅB…Ù´ñšëE±Ðüé5‚ÒùjÖ¦1dÆp}0qú×+<ís;;…,ÌKéYSªª;ÇaØz\'Ìœ©-À±÷¦ÜÅ±ö«Ç\'iéžÕdês=‡Øqy{Ãn7vÍUb#RFv°çë[1/2»¶p¥(màçœ÷§Êªñ.ÜZmœ2ÜËåÆ…Èì£µÉ\\	mÔäƒ½Æjsq<RdNêGÝ9ÏùëHêÖÉÖuÜäÚ£D{‡A#©À¬žº€·%æˆLd2…Á|õÍZ·Õ%³–Òm#æ\\ãÜ{ÓžÞ/ìË‚K!ãœv§]Ê\'¶·| #P>Q×ß4”“E$fÝÍ%Ù–W–\'$Ò¢±¢—pp¸ù°FA§ËtÇpHÏ­SL«Ç¬Rå°n›â{«HfKHÂ<ˆcyTàª¿þºÈ–oî¼«K6y	è‡;¸¨ .’”„°‘×i\0}ìñü«±ðÍÄ6IA$È’£<ž£=ºõ®Z–¤¹¢µ\ZMèrqÛH—&ÖrÐH\\·Žõ\"!³3;8\n‡ö­}w÷šÝÝÕ­©ŠÔpKƒþÖO<ñXwÇfÐ“ÙëZBN¤SdÚÇCaq¥Íyj~ÒöaCyŒT¸`SíuëxáYâåÔ‹|…˜œ¾qœzk“yŒ’`>‚Ÿmr–×QË$FEF®ìgñ¬å…Nì.î{G„¯u)atžf™å\r!fÁB9ÀQ×ÓÚ¨k6~$¸‰¯ÌÜ\"3!>^Pxpw`wí\\ÖŸâ›‘\0žÖO±,·2ªäî~½j-[ÇwðÞ#X_y–åüé\"Û…/üYdt¯+êµ}­â‘¯:å±¿âm>ÞÏK›M[I!P×Vä3‡€1Œgýk”Ô<K&ì6ÒÛ,®ZVç$óÓÓ©¬ËÍ]uK>Eom×\0¾ùõ®ŸÂú%Æ¯qòjÐDïjÒ4arUànÈÀ$¿ZëTiÐ=D\nNZ#˜‚ÆëU³¹¹Kˆ„QÆÓKºNxì}Íaƒž1^Šž4=Bd½csì?$ªO‡ž}«Îäá™âq‡BCq]¸Zñ¨ß+3”ZÜo°sÒÜó@8<Wi!Ó5<AÝ21ÔÔŸþµOlYÿ\0w•\nzæ”¶L±ºá™@ÈÉÆEuºD\ZRØ­¬‘ý¢úàŒHŒG•ÏøW4Šª²$TþàŸæ8­í[M‰¦KF’ü0+!åzô\"¸±-¸hi\rè)áÝIÒ­õ®Ý²¿6Ø²ÀóéïëÍ]Ó.RÇGžê{GónÌÑ†À#Ÿ_Æ±t½KQžôËxc…HV–(NNO^õÓÝK*xrM?Qˆ^#®a]‡’OÊTcÞ¼*‰§jsuªÐítyÖ}918vhÆHäqüë*yEµÝÎ˜ê÷2Ê¨cŸçšätuýE±’)€&@¨”gÓ‘ôÅoi[Öæ[³pÒÝ9òÕX1>™ÿ\0<W<æâ¹¨µã®%žÞÎ‹–­ÙeH•8#‘ÉkÁ<Ow{¨êwSê’ºÜ+TnqƒÓÛëž0Ö,l^ÚÆ}NT›k9þìxÏ?ýcë^\'w9Ôn§w™Ý2Î¥þñ÷>õêe‘–²hÆµŒíÞÿ\0J·\Z›‰¶Æ0LUFk¤Ò…Œ\Z]ÕÔ¹3ì1ˆñÇ?Ä=ëÜ“±‡vª“F<ŒF6ŸJ»k¬]Á\nGÎ6¶å%¿ôª×Ës‘Çp0UU=BžEV\r†£•4MÍ/µÝ›Ãp“m”õt8ÆzÒGl_Ò!\0ó“ÉªÊûQ_ ’pV¬F%bJ£\'©œÑ¶ÃZž¯á‹ëi£“Lž%ÀH£¶O»æõÃô#<×nž+ðöžMÝ¹q,d·qŸÖ¼NÖ¯ôX­F,Ááßòœž2Ó¥lßxÄgO†y%Œ³ÊVDRX.8XW<bå=ÑW²=ZñƒXJðD|¹b#÷k¹€<sÇÍø¶ÆòóJ±˜[J5R% —cÈú`b¸±ˆ´mHXO(‚Uˆ¢îPÊÊÞ‡½v–\ZEõæž×ï®ÂÑÅ\0Y¢‘q²AÆ:ã·QZSÂÂkq:ŽèÍÒtkã Í$‘}žB¢6-˜Ù”w£§åXš¶ž²8¸v[R-¼ÉVÎ÷¨úäT7×š®§«Éeö64v\"8Øà@}*k¯íI±dö¢Yp¯`±`9þ.{UF.÷bvèq³+»|£‡<ý(\ZUä’ÖÏÊx<uë^½¡ižµÔm­ït yØËÊã|x\0`®z“\\‰‘__½-$XÌ£÷G8cŽyñük¦ÉÆè›»Ùœcd\Z`8ÈíSÎ¥’…Aäf«œžk&ŠOLâ´ô›+k¨nšâxãòH¾ô¿0GçšËÇ<Ô‘±_»Üc´•“.§m¦£<0È%o‘ÎGj©Îjo(°fôàûSžÊUda…c€{PÞ£#B»†îÅ>@.\"Î	à\ZšM6ksœÊEÝ…äî)÷f\'V¶„ÃÐ¸¶Hž}O4Xe2 ÷°Û“*JòªßžÂºýF¹ºñÌ¶{=´Ð>Zw“Ë‘@?{¸¯?Id²\rœîî\rz/†<Lu˜Æ:[Z_ÊÙ‹U\'\\1÷Æ+j\\·³1¨Ùì×RhþÒ&˜ÍæG0ß\ZJä†`:äääç­xEºêZþ³+éî°Is;*!—‘œž§·½nøî=jÏìšUåó^H¬|³ÕþlÝsP·ƒïm4½=ï\0³\0Èe™ŽX{mê1DàÞ›KKœÕœ¢öX¤z¹\rŸQÖª½³€X±1ÿ\0Ï\r]‡´HïŸR’€ÿ\0gF1‡÷™Èã>Ý«TÓ¤±¶¸2;†ŽPvápGPkžqist4‹è\\ð¾™gâeÓwM ŠÏÀ10þïcšÁ¼¶–;G3Fß»™¢Ü[¡±Z~\ZÒçÕ¥²–xo-Îó\"…Lc>½xüj{ïë³Ú´ÓÙ²”È,8\r´rOû\\UÂ¤eµšw8à0iã¿ §ÝÆ#˜íV^Aõ¨W‡>õÑqŠoõ§°%~”À8¤1â“¨ÇqNéÍ4pr:\ZB`PÝ)Iâ”(ÌñNÛƒœâ“7µ.îqLG©ø7á–ŸâoI¬>¡2Ü	¢ä)ˆëèsVü1à-X†òÒé%MF¡#Y0_“–íÏ¡ÅsŸ<_‡u™-ï^Qi:ü…ˆäãœt9W­ßjžµ¾ó-.eƒUŠ7h\'p¥sžPã‚vÅvRPiw9¥)&ÑÉÃðïÃZ5Èm`_|2:¶~ ã9Etš5ÝõÕÖ·g¨4ðÛ C–P9Plpjý¶©¨x¥e‚É-þ×k™<PìÎî…OpqÖ«ø?RÒôÉdµÃ6¥( ÂƒjÆAän>½\nÑFQ^éÛÕ˜þ0º—Ä—¶–¶ööá”$vÄq“¸ãŠãµoÚxZ]7Q7V·.ñ=¼st#žÿ\0¥v>$½1k—öö“„7HÀÑ”pùÆÕ#×={Œ×Ÿø´j!ÒÞþÎ8ž HdÁ$R>•ž\"<¯UtiM›2øþ‹‹{£rÏ UÜ„`\0 úW˜_¢%Ëùd”ÏŒ\ZÒÙtl¼ÅÉV\0Ÿ­t\Z¾•§j>7ú{o¹Œî”*@ã#8ëšàçQÑ	k¡Â©Í)êi*~”½Gz¢†žÔ8÷¥Ç›ŒsÞ˜\nqIJ2MqBÜŒãš\\tâñJ9\0ƒ9\'Zç4ån´1¡i§ŒÔîÔžô€oò£4cÔR…ÝÚ\Z’Á4LC#!ÆpÜT¶7ÆÓÍ—\\Ã§½[xîn¢óçÝ* ùœr@íšdëî\nWÎã×®;W2jÌÁ\">[i*ÃŽy ¹‰UPÅ(v#æ\0t®ÿ\0ÁúV‘«,‘Ëo,®©„·„o$úç(®[S°Xo¦>W•† D§%Nz\ZÂˆºŽŸaµ¥Ì(Ù•°{~•a.çŠ@èç mäçŠŠeÃ1Áäã5\Zä/<\nëŽ¤X˜Ë‚1S©/ÌzU\'“ýž•,\'w\\çëNÚ¶ª§¶)—ûB¶0ÝÅJ±“‚¬	¡¥b\\‚ã8¤ã!	Êî`ŠŽE qO?+vÅ#ÈERÊÓ½HF0xÁ8Èõ¦îcƒÅ<‚½\\UuõÏOZÕ³fL\rœžõB‡w;½hÅ\"“òœ`\ZWà­‚x=êí¬Ág¥gDî	Väô­cÕWvÚè:uâ¦i8ëYH…pPçÜUƒ1Å4Àº\"¡›-‘Do¿ÛŠyRìõ¦\"²’‡¡¦H»Û#­ZdSõ¨dàýiOpËÅM!åºŽ´ÆŒ‚I¨ÑlÐá0ùsøÔÉd~4ÈN;U¸À4À|qZ—nWŠE÷«(}ñÁôíT€Œ¢Â–?QŠ—ô«L¥”»8f«È285LD]MXŽB‹Z®ÍH;Ò:¶NsÅ=[è*íúÓ‰Æy¦!äƒš†CJTr6xÍPªîûz÷¥vÚj¼’dP w$d\Zj¹>µ6sŠ@åx<zPŽÿ\0T¸pTžõ;>W<UI]NAþt0(<{ÁÎ9ª²†·=8«ë\"«r8¨®6J¸\rHÊ_ÚÏ½Sžä¾OzŠê\"¬AéëYÒI Ï ¢ã°ë§Þ‡$f²ÙŽHÍM4­z­]Í\0gµZ´Èp\rJ¶ùQéRÅÆäp{Ò¿§\\ýEt–ûZ<¯Q\\•›<gÃ]žìã“MÍ˜Û+Žâ¦EÉç½W…áèjüh1T‰åà\Z­*¢´ƒPÈ\0Ï¥1P¤ž08ªÒIÎj¼åJúV]ÇRAã4†^±Ôã³dRÛ™r£î‘ÜZr¼7Ón²D;™’&}Àcë\\s¾dààýjÄ²Æ›sÀ5‹†·C:ë=BêÊgxíŒŒIU‘!Gp*çˆg]KOŽYnZC«T î>§¥dèúŒ-g$+%ÃJ­0;äÖ½ýŒúb˜™(‘„®ÇïJÁ¤ç~¡dsZeºI1R„Êx‹9nÕm,õ	gšãÊ\r0?ÝCùÕ¨ƒý\n²°emÝ*ÄMjììþ`˜’zëZÎÔÃÜé.Ò+ó·$“Z^ÑôûYWF6‹ò»ã;	éŸNk¨\ZdÖÓ‰6,Ð;©óŠp	è=¾•™ ºHµXâË%ÀýæÅé´ç¥C\\Ñ²\Zzœç‹<:þ\Zñ2u’ÎSºa~W=Ž:\ZŒxNêM6ö÷í¶¿èÖâ}¦O™Áþ´hæ½Y!ÕÝ¾Éœ36íç®kÚ´¯øJk·²·±œ8òä‘þbËŽ¿^•Áˆœé4ºFúŸ>iº‚Hä˜8;}í‘Þ¶óM¾e›Rfˆ Ây(\08íÒº¿|:Ó¼3¡‰-#»¸’iÃyár&9^=}ëÍ¼µHÉß¹@ù§·Öº£ËSÈRB]A·ê‘É¾çÌ+‚Òµ´›ëM7T>VÅŠâIo,Žw`uïÁ¬#2·Èªž õ«V6M}wHƒ0QšÙ¥Éf$}¡]ivrÀö–×Q•Ý#«€Œ	m„?\nÐñ\'‚t¿Ü}²íßÌˆÁC‚9ü{×=„gÕ¼)b’7–q²[¤òÝuíéšîô‡œi¶Q]!ûIŒçs^RºÖçCWGx“FÒt½Ú>{É®‰Nìg,T©êÁƒs¤A§ø|êoo$÷[ÌM½¾D\'£c¹ëù×¤|N–ÇOšÎ7‚ësFíDû#Y?¼xùs\Zž5ý>XdÊÆÍÈBÈ§©„p\nÙ6–¤õ<òïO–Âÿ\0ìãcËÁV·¡¯DðÌ¢	ÅQnPbg“ˆ õãµQðÎ…o?ˆ\ZÎït3B¡I“`8Ç¹ª>%²	«¼ºdZÛ¡*À’£pê+¢rS\\„lîŽ¦òâMäŒÅç5º•Usœñ¸v™ÿ\0•Î›e¢‘Á7˜6ì^KtàõÆj¿…nï¡»K£ní;‚$w%C(èå]&¯¨Ë&4—6Üt†(ˆ«c\0v®{É;&ZÕjdCÝµû–\'’0¥X/Vã‚;÷¶`°Ôµã[˜˜«.è•±ç v<w÷¬Äî/f©qs UÊî!³ßÓ#½wº%âêú•Ý´ÈÙŠ1µÇL`wõæ¶§ïÏ•ƒvF;xkP:Ú^I*)óyqsòúç×“ï]½¬ãÊÃ,cåq´žN\rJ¶Ÿ*£`(pQÇÖ¥·m¡X”’sÔ×©ÍhrÜÃ—Þ¹-fkj¦L®ˆT©ÿ\0X¹LãŒþ8«Ó¶\"``vç¹¯4ŸÆ÷VWRZ]Ç<÷k#	­J B§å\n¹äòEU6îº\nmlrú¼ö:Õõ¦ŸrÐ5¼r®<¤ŒHÂqÐuý*¦£m¥èú,Vñj:’ÊÙ–VÊ¢ªgf«øŽûNšî{«-.dI\09%âÝ€Á”ç¨ïŠå†ª¨Æ/	ž(³¹7aI<VõqŽÖ\"4¯ÔÄ¿šÒcÂñ¾ÌL™È\rêô¬‰˜í\nÙ8éÅtI$rÁöT‚6f=X|ÙúÖ&¦Û)MŒAèk‚Sæw7Qh‚âåÚÊ;~<´rãŽr}ê£zÔÒ®ÖÚHÎëP1ô–…!àŒ\0£ŒVæŸ£I=£^‚¥\"ÆôèyÎ?+N3Á®¢ÖúîMÕåHZÂÍ„nŒ\0/¸œtå€ý+9ÜLÅ¸ÀšEX‚{uÅVØpŒSË½æùw0ÏËÇ&›$Èùvà`úP´Èöä€A¥S€@#¥!‘—\0`Q’0qÍ;QÀ”Î{Ò¿}©dd:»!’o\rÒr•FO:Rr\r.IÉ5<¶2º\"¡~~òž*Ã[èÀ\0Äý*¶&0äðÔø[`ÌDlsÓ8¨wDŽ•Ð\"ymÎ>aŽõ\\¶î ŒŠ’r¨X@À8¨×çŒ\0>cÒ–èV±$N|ÄÃ”ç†«Fg¶óÍ¬„Ú8ù¿Ï5ž‘´e¨ÝÏJqr…„mò6xî?\Zk@.–’Gbªw.Òû¼çJ˜H\Z0Æ\"ª£…gÆÿ\0¼Q.vóm<‘ZZyšX§•âB„®FwÙöªÕ†„ËxÐÙ¼hw,À`ŽÇcíÍ$QÆÐ—wnnè>•ždáî{V¾”’Ot#µ„É©V8Æ~S‘šs—*¸–ä×ÖÏbŸi0Irsì+¢ðþ¡Ö1™b·/å>ÓåîlŒà7øÖ.Ÿª-‚Ïg«yÍ\rÊysî>Y ¾ŒÍ;Ãšž;	<ÆQ0h¥$©+ó\0¤z‚~•”äçi\\Üžú\0¶Û‰;XÁ<@c(HÃÇ\"¡ñ?…oü7x&\r%ÍœÑ†J¼e»CÒ©>Ÿq¦=ÍÜÆ‰£(bAœ0<`pk‹Äº„Ö‹§Íu<‘µÕœØéŸ\\qŠÂ´Þ?0’H’Þm×0G2ƒy$žN:ž+gK¿µˆ\rŠ*0`«,œù#<ŒW3y¡IHd\\®Zx¹ÇFw ýÜ‘°ÿ\0“]R25µ{ÛëkØe¾²!òã%Ö sÈoÓ5ÔCâ=*æÎ3wãÍ³Ž9¹ŽUˆdãõ¨l ‡]ðÕºê2Ël|”—ÆâÙÀôþµÅ-·Ø/æh°“˜‹¸09Î3ÜÖ+–zuEÝ£Nã^¶Ži­­0%$˜ò¥¹\'C‘V ðõØVºcä±ŒEÌx\'LµÎøL]JõÄ²dF	+œ<R8â½éÚ´ÚËms4vv’„dRì­Éô<‘Û5RŒW»¨-NêiçÕ”ÒI$q„aœcŸZÉÔ`_J³ª¤±¸QÇo­z&© Ú#{qpäóc*U²Ì¹íÈ8â¹[¶³šT‰K$¿Ö\0:úŸSJD¥b$ÅÐí,µ¨RÕ`‘\'Á÷á»{\nOø~=\Zê(~ÓÈù;b}à/bHï×ŠÎ´¾¸ðö±ö›iÈ£—å•PAõ´eÔ¬u]N‰`DF4FvÑOõõ®¸¨¥u»3w¹ÍÜÄŠ€r:æ¡UîyñÖ·ßL¹¾–îòW[49g\0ì@O&²l”€ªAæšºÜd\\v©>ô…Wè}*[˜$‡+ž¿{iÈ¨C‚óƒŽ1LV$Im¹«Ð^JÑÇlÎÆ-Ç‚Ý3þEe‚Iàä”ýÛHôïCˆ§EŠc\Z°|Hìj5nF:j!(?…(mÄzûP…aîrÜ;‘M`Å¾^‹Ï^´I•|Èâ¤Àò‚ã~õ;Œ§q(i˜…ÛÇJ@ä&Î:S¤Ui	îj0YXäp*´h\0Í×ð©­÷yë±H\0çÍ%´±$ÊÒÆÌ˜#°jV”Á!òœŽÊËÇãYË°\"áåÚØ–fŠœžy¬ÖX1V`pÌrÛ_ca³œœS¯4ë«(­¤¹M‘Ü¦øŽAÜ¹Çó§Ú: oR¨ù˜*u5<`+ü¯CŽµ\ZÆñãåoéZ¶–)6-ßn¬‡6q¼ýZÎO•˜ð(fXÆå `\Z›L¶¸¶ÔO#ÛI ÚŸ);²pzvëùURò	ÚÝc¶ò¼¨ÕY”q\'ûUoR™-¡ÓoÔLÏ€1Œ*c¸{óƒYÊ£µ­¸úâÓY6²Çç\"¸ÞU°{[±h±é;¥eY•Æ£duç?AÖ´µë›»—ìV‹#[ì–ieË\rÀã­sÃTº{O°ÄxÒûdzšâç©QmJº¼¨ðO·Æ¸XÕz¯½d…œ1äŽ¢’ìÜ\\È¢@É¼dg€qV\'ŒÅkn\\éÔàtô?­vA(Å e7aÂÔUÈ“Ü\ZÛ]2k¥•áòþE\r†p	öõª¶’Á:‰l+÷äþ½m	­…¨ø¦Ù™ØJ¬¬¥ž}zVÄÚÌñ[˜ã‘pº¦ÖcœàúóY\nÃ`\nUpsL‰ÕYƒ®TŒsÛéS()=GvZºÖ¯î†{†>gãÐÖy—äÛü^µ$pùïÙÁçŽƒÖ¤žÐG9‰~bA­ZåŽ‚Ôª¯µðyðÌØïZÑ³²‰•üÉcISøÜIëžØ÷ªIæ8Â…Á©4öC’îfÊï;Aié‘Ðâ–iU±½f$°èGÒ£ŒQÉ”ÖR§æ¼Š9UÀh;yÁÍlh~ ¿ÑoÚ{&A$Ñ˜X:än¢²K\0\0Í8 ?JS‚œ\\ZÚg´%×Ùm–]J‘çH®&d{7*à{\nñ‹×ß{3äœ¹9=ù«P^\\ÛKçC<‰7\'vy5Bá‹¾OSÞ¹p˜YQ“mÞåJw#&”\Zaã¡ºqÍz6 vîjÍ¤By¶>RÙoaœUj’ÚEKˆÙ×r—Ôg¥L¯mué¡ Ñ…äw–Â“ƒ–ÉÏn \n<1e.¡y-ºº	N\0ûFG=}*Í÷ˆmVÙÆŸi¹™F´GëéŠËÓ5TÓ§š à¸=ëÍŠ«(JæÅXëôH·øšÞò[°©æ|ñ¼„†+yï^‰o4ÒÞÇäm–Þ8öÈ$î¾•çú$PÌÐÞËk¶Í$Û†\0°$¾‡¶=+¼²Y\'¾šÞ0³G;S)PÌÔs^N!\'+¾†Ðz7w#NIü´ó£Œwã8#n?A\\•–¯u+¤EÒa*PçåRA }zVî£43iÒYiò’èª…n\ns’yúU+Xü;`’Ý,QäÝ ÏšIåqë\\´¹ë[šÚëCÊ<_¦ßÜø†yî#„ŸzyÀÏåTtÝÕ’¬²Jv\"¡Ëäœ{ãð­[P’rd‘îDû±¹‰ÀÏ tíÚ²\'C êv/a$érSÍRí·cƒÇlWÑS—54£¡Ë%iÍÕ¬–7’ÛË$LTàç‘]PiWZŠ43]#û3ŒŸ,õqž88¼×9u#Ms$!wv,Ì{“Ô×S¡˜­4t¹7ÂPÇ1²~ð.:ƒÓ¶1]ÑO—ÌÉîbk\"ïP’U@ŠpÎÐNk<¯§j³{uö‰YÖ0ª[\"‹kint™ì }i§ep±oJÒžù‰-iM.\\à6Þ£ë]ï„43W6ÖrµÔRÈ]•Ñ7+1(>˜Çã]÷†tÏáØoÂÇI•22…\nØ\'œöçùWAá\rËAðí¨eVŸýnTnn{çƒúÖS‡´î\nVz{âÏ\nK§¶Ÿn&gòÛ·qœžGb*î4+Ë	¼0[PÙ\r¹SÏßpAÇS‘Z\Zîy®È1Cmò\0·2üÒ&pßÜÖ,^ÿ\0„vóí–×-q+äOæ  Ñ€íèkÍ¯)áä¥¡Ñ¦¬gÞØ_kWAfË”±ùl×ª®½ŠŽØÇÅQÒ|§ßX™b¯î ”Çunòà8†ž½ë¯‚ßR½Óæ¶¹	¸çz§½Ôçô5ƒá}6{Ü_ÜÙOmÇå’ýÏáÖºè¹7ÌöfrVV<÷S’ëÃþ\'yÖÐÂ!Š-­\0#€GµtÖzÍŽ¯¨¡¹ÚAâWÅÌ€“íÖºŠ:\\pøzßQ@€[Ý¬Æ@#<sé^G«Ì&¸µ}4Élgˆs¸±É#× ®È¹#\'ÏfÔÍŽ¡4³JRL@ÒÂèAeLœí“ÈúU]wEÑµ}6ÊúÖÓt¨JInÆn1ÓØãš¡ðþÎâËÃ7÷Úx¹7da1¸F~ñ9÷Ç³¦¦›ªxŽâe´¼²{ l+ÏO•A#ô­¡kYhEÝÏñ·‡otí·m6ŠÞRþø5ÄÍ}7ñHi<	©ùwK4’r`–ÚAÀÇN;×Ì²Hæ²Œd£vi{±¤öô 6)\0\0ÒOÒØéº}Ýî™«œ­ihV99ÞÄ÷éúÕYt«ãt-DeÉ˜?\"®3×µuÿ\0~Ã¨Üêz6 ì|È¼Ø<\r×¾üªÔè–úŸÛ\ZâæÒ;Y<£žA[iq‚HÇzt¨ÊRnOB\'>U¡ÀÛÜ^–µ… IeŒæYXrÍÃvéÅcË.6mŒ¼1ÎrÞµÚøÛE¶³×7¡c¹_:â\0FÀž8^+Œ»„«¹YRB³³Øõú\Zs,¬4îŠ¯!•Ë1ù‰ëRÇrÑB¨€[pþ…Mn‘M\"¤‘s/•n‡éUdI-å*êUÐà‚:Têµ†½ž±2jPÞM+Ë$ns±$r+Õu?ÞÍá¹®u\r:òÆ¢Þt›,9aŒç§|W‹!ó>Ü	ÇJÛµñ-ý¶‰q¥f)mg þõrÈG÷OjÒ^W©œàÞÇyáOGig&›uek-º[+$²\r«‚N\\ûç·5ÆxÔÞOzu…bº  ŠL¯\0t@ç½UÐ®“Î¸†x§š)# Çã‘ÎHî3Ä°¾*Û„‡œ€lS”ù¡¨EZGGðÎëK\\•®á™‡ÙY|˜³óãž*ì<]ñÆ÷Ãa&‡q¬£1LJÿ\0¬ìN:søšóÏ\nÐ¼Ukqv†Ù<¯0FùýàÆGç[:Ž¹¡ø§Å3ÙMtÖ:D›@	ÞH8V99çÚªŠŠW{Žw¹Äê…o Y\"…@Ÿ½xòwäŸ˜úuÅbt ×K©ÛcÝOk¤¹,¬·\03òž=«›q‡\"°œZzšÅÝŒòEDãçÀ<RŒïQ¶Cw¨,qÍ\0|½(þTá8¤! ñJ„€A¤fÇ=¨ëHlÒƒ»¶)1Š`(%2œr\rtÖòHaqrUÙŽdcœW0zâ¶¼;­\"ä‰mãž\'em®>ë‡úSJïrd´=.õ(omäûTÐÜGˆKrS¨­Ë„tÓbâÝ0”¼…n” ·®)ºZø½¤šÅ­Ü1–Š$!Iã‘Žàæ½V×ÂÚlÚAqg\Z\\²ÍüA‡B\rSö›©ècî½,rV—º¦€šÈÓdµˆaniU[899Ç½U¼ð´(ð·ö“´wE¼ˆ×?‰Îv\Z¹{YtÉBÏ&±Ÿ:#Ð•üH?JçüS¯C [yÖ’F÷Gä°’\0A9ôÏ­u¹K–Ï§äg«Üð¨~ÍtÖ¦BŸL×yàoà’âóM‰. ’7I\"+¿Œr­pz¬òM©ÉrÅ»n;Wò®÷áõÕ½½ùšÆãì·\0K´J;¯¡Èõ¯ÊÝºJèó=z±t¾Q7Ë·ç¦+4b½›âîô0ë66llå\0#ë9ú×Œ°ÁéÒº`ÓŠ±W¸`Ò\ZwR1ÒšG&¨ƒNÆiŸ…=NE1\r#gšyÂ0sHëô¦ý)SÞ”Ó#sKŽi€÷ïN\Z@\0ì\'ÒHwqA9À¦­gM\rÀLåœ+pÛOZ|PKyrŠ2ãù%GÐU{ÊÉ…!±òr¸«ÛÞ[2‘Ž$#h?á\\6V¾Áká[˜t™áki-J¿¼\nù‘yÆxŽ•è3øoÃ—ö·Z$…zÜ¹·7\'>¿Zñ]2çN–9ôó[j(3Š2»+z}k­ˆÚ¦•á«˜¯-£W–â;Y¢äc¡$ç¨…:p…KµvD¹žˆóÝN+q©ÜEk»ÉGeRÃóéT$Lb¥…ÙÎX’XòÇ½ZdW[\0ÔW{Ðµ±’è¹>ÝE$jÅÀ^§ «­l$tÍV–œ‚7ó`É!¸*sß¡©’à3úœU1	@\'ß#Š¹§xïb’ä\n°f__j¸E7¹-èJvíÜ@&¡1)<“Œö­-wTµÔµy.­,ã¶…€ÄQ(ÀÆqT¼Ä$iIYÙ]ÑQ×æ!¬@›…I\"y EK2@4&1¾HS‘Ú¬Ç–Æ:w4ŽKÇ3ëDd\"í<w¦€ÐŠDÈÏZ½.2‘˜ â¯Ç8`\0¡ˆÖ‚BƒÅZÈ#šÌ‚m£Š¸&qHq0ÇayïY±9,zÖ„\'<Õ %Ù‚1C.A:‘Ö‘€ëT2£À¬9”Gj´Äƒõ¨ØtÅ!ÅÇÅ\\Œ`T(¹9Ç58;G5H	ã#ñ©ƒƒŠ«‘Û‘O`\\S@XiœEåo>^íÁsÆ}jzqI¿wzBÂ›l8&ŒûñFáÓ4„\\P!á±R<¡‘{íÖ«† °íM$\'#­FÇ Òyæ˜Ç5B!“ƒU\0Çš³+€*£¶OÖ\n<Ós‘Öž$â¡wýhÄoNœÕ9£Ç=jÊÉ×Ò£—ææ™Ò.ÐME¸)•jCÔÍS™v‘ß&îv°<OJÈ•T1âµ\'oÊ³§\0E!™÷¬:UtOJ·(ÏZ‰!ÜyéíL¶åJ€Gr3 8ç5\r¼+´\0+VÐmqÁô¤–V0$\nè­-qƒPÛF˜V¢ \0m¦„É<š”Ó€êiwyª$x%›éL˜«\0íÍDîrjŸoè•Ì®ŽqÚ«)gl7zµ+y¬Z{Ú•\'ƒœcŠ@S’ÍXgF¹Xáx””bÄôÍ]r\0<â¥6Êã sIÆè	‹xÂÂr …+·ÈÍ]¸Öï.ãŠ;†p1ÔûŸzÎX[ NÏj•aéÍB¤ºˆ·Æ#\0`VÅ•¬Ê‘Fås½ºg5‹cbnçhüÔˆ*“—<Vþœ^Ù[Ï‹pa…`>éýÇªI$4oý€6—%¢\0dûÑäœ3üûW~.4èolçŠH§‘Þ‡¸ úƒšïô£<	¾T’«en¾;W?âõŽD·œ:–Pc#¾zþUËFOžÛ¦&šgž:áYUvõíõ®·OY4«HnÚ&(b8P™ÜÙÀÍR°£ŒÍ\"ì€¾$ú€i5MRFžX!ÃZîÜ»¹?mZ›¨ùM²¹è¶ºæµ¢C,ª‚q\n—Že=Ùâ¼Å‚Ç]¸(ñ²LÅ±ão=6ö®¨ê—+q°ßm&àŽpÍëÆ±®á{¯<—Ä«LÅTÓ¯¥sÓÃÊG&ô+ì&‹àèµx,/mØÏ3E$jÿ\0:q‘ÅlZø__ð‡üM\ZØKi>åà¸@~ñõÎ:ÿ\0f_-åžNø›8ÈŽ+¬Óþ Ý]ÚÝ­Ùe2qµrUx#>€f¢´j­bîŠŠ¹Ôi~;º[+y§H#IWtMÎyÁ\ržã5Ôh~$]`Ç5µÄ2¬_,È˜ÈcÓð÷¯ñ$ž`Í¿™\npòu;}tžóm§°û9T/yÎpÄîÀÔ\nÊTU¹ºšÂIèÏcñ/‡-¼Q¦¥Ì…\n8GøW¨hvÞÔF¬ŒÆÉcòŒe‰#8ˆë^…\Zý¢5Pì_˜ãÿ\0­\\7Œµ­ŒÏ$qÜÙ²ˆü¶Á!sÇž#¨¬äåe}‰Ñ>!Õí£Óì¯¬H[”*ñïˆž™ÏS[Ô&™­®mcµ’kÉ¸\nK\\ñùU	<9wªëé[’9fPà–0Häw8¨Î™«è}ŸRB±º†„±$Ž¹ô÷«Š]Äµ4ìµ)a¾r±óT«’àá‰çN¤Wmaf×O$‚?1Ù¶#åQŽ;÷®#@ÓkÔ„#´¥Ÿ¼ç#Œ3^·k+(ÜBpB‘òãµLÕÙv8¹|?ö}u/HÑ\0pFvá‡ò­[“­µÔÓÄÑãj®Ð6ã–¶;×NÅ5Ñœ(ÈF8É÷ÅrSZA\\Ë=äq	f#ý…õ5Ùƒ‚”î¶1«-AÎF{UYnƒ9…ÙÀÎ\0Æ@÷¬Í3U\Zœ1Æ‘NQâKÀVõú`ÕËirgGó\"Ìa›‚}Ç±¯K“—VeÌå±›w¥\"^K©Ém(@Éão9Ýž:ãò®óYðÞ§âE¼çž;X74¥J‰H9Uÿ\0ÅÇZôm_B‡ZÓçÓîgœ[N»]T^Ç®_Å:\r¾¡ÞÞY[<Ãä£DáœíèN;ñ]4j\'£z‘(µ©ÂøŠÿ\0ÃšÇ{$ñ­ºÂZhØîY‰Ëé“ÓŒý+ŽÑ´/UšÞ5É¸wa$i	b@\\¾¤‘^Ç§éÚ¡3Ça¦,›ãÙpe„¹G^½Iê•yÐðí×‡µ¯-í¤+¤d¸Y”*«dcq‘×Ú¢ºN7¶Ãƒ{ÅÖy§éçVŽÛÅtÑbUùÆ\0ê¾œ×#tÛîIqÆyÇ•{\ZKmgo¨Ýk±Éª8Žxöäª+@ê\0Ï|×–ê·³x’æâÞ\0¶¿igŠ\"1ònà~UÂÝ7(T¥+Ù˜·	ûÆÀ8¿Z…ÕJäzàŠ»;o•Ûh\0ž@íš©\"l4£+»8Y]\r†šxâR¡‚‚Ç\0dã“]>©m.“mkawe–4m—¶á>ã¸dû\\È¤\\s]-µëjÏO.²íˆƒ™œñ‚AãŠÊµî»L—ö—ðJ±I–€*‚0S×ùž¾µNé‘ïd“ä•ÏLÖŽ£°³´óÈÆ@“Ÿb}«\"V¸ãLDü†´k$‡`Æ;g­1¾VÁõ§EÙ–#·Ojd¡\\ï–=¥kpCr¤àÒ2árO>‚,ßÚ¤H×,x©ÞÈvhlQ‡{`ã§­.œà1Å;Ë\r)C ‘D`@c·Þ’wuUû*å¾|ñƒüé’ªùƒg#ó¢WVPª0ñzÓ~ìŒò\rK%‹ œñýh-ò(R=Gó¦‘‘ƒÇ5bƒ\0)ç¯Í@‡.Hcòœæ•£\0¼“Øb’PþV÷çµ3xc“úSÕ½I\'‰ö6HÈ#\Zž9R=ß(|®‡Þª¨Á\\t5\"|íŒU dÉ‰ð¹TÉä·jé´.á4Ÿµ%Ôfô`v«œ¯\'ûØÉ\0v®rÂo±êÉ²7@À°‘r0H\"º‹¯ZÍ\r¶ž\"0Ø-à¸¸ŽÜƒ¿æ\'åÏ <f°ÄJMrÅó6õ	naŽ%Fº§”—IÑ!@r=øÁüë“—Ãú¢Eò#‹ä’0Ê;qÁü«sVñ½y«\\]ÙÁ*[ªŸ*,dA{Ž€ñúÖŸŠ|64½>+Áso$Ñ™¼†Ý ™ÈFGÅrP¯*IBoVh–‡q)†RLRƒ÷\0’wg£UK´Š8à¹S»?ëTqŽOðÇ5—†êmÓ¤Ÿ˜¨Å$·\'É0ïÜŒééÒ½8Å’J—Wr¹ç±þ\Z·cl÷òíãWUióŽ\0$þ•RÆÆK›mém.Ô?¼”r _Ž	Ú.-Xx‘c”È»NO`?\nzl‚Æ¯‡uHÏúË¾ÔFkwfÂFäcs×k7Uûp\"•£ÌB€¸WlàãóýjÖv×­v×15¾Àd·WËJÁPûÃ¯áUäŠòu6–DwE,€‘l93Åc¢–†›¢/õ%Ž…ŠÎTóœçÿ\0­øV³x£QÓbH`½óíÓ  å>a×¿JÃ½’òÉUn ØÓ§ÌÇ¬œðOåÚ£ŽþèYÜ@Hò®\n—$dü½1Z8¦î$ì]Oß41ÚÞNÒZ3ïlŒ°=Î}qR][ÀÛ\"¶‘‘‚oeuëéÓð¬ki’)wË›àY	ÆážG·a/ÝM•™H\nIÉéî*g±&åë½6cJ°Ë$cåÜS˜Èçiü3XÄ0uhÁ¾ÓŒÿ\0õë«›Ä›k‡bñÞÍ/˜äÆêO9¨â¹ò¼ÈÕ‡úÌÆBãvzqÚ•)Oí	Ø»\'Š.M:\\W2Ég¹~òì`~SŽZÉc–rÀäWÓñ¥‘\rµÂyÊ6±IÍN‰+Þíd€¹Ê¶=3[sd$H\"$Í*œ¦ð óÐûÕ)`ØÙè¬xÅ+EpâTN«Ý½ÇÊØÃT\';i«¦¨¿.vž”žÆžA“Ç=sÖ‘Á\n»ŠöDkÉ>Ýéëòš@psŠBÀš`N“•òpFA>õ=Ö ÷R—Ùa›%c\\\0qÚ³û‘ž)TqßÖ€± o˜±i’d¶21íMwž“€) \0Ý÷¦‘×Öœ¸#¥b{yV;ˆØä9çµHò½Áÿ\0|“ŸAÏaÚ«FU9”JúûUËÙà¹¼žK8¾Éní”ƒ~àƒ4ÖÂ{Ž„Ì°¤°R\n°°Û«#ˆÎÌí;Ž2k5&•Ym¼óÍhiosuIM3l3Ï±ƒüF²’l¤vÎ=Z{hm­¬ì|˜2Ü·É «ZžÍôiRØ…u`gÈá›Œö4Û«d·šÞu4šr†Tmê¸\'·\\w¬‹ö,ÏNZ¸ŽõÌ¨¸É]èRe‰<Eqw;Q‚ÆBðHÚøKOƒW×¢‚ýcµpB´1`l`·èy|(LØ$qÍt¾†©@d2=Ùlª È\0cŽs×Šª°J:\rY©âŸµërXZÀn\r©’!2Ç’àq’;bŸk¢Ã} ^_Ou\nOíòänT€\0\\uÉçòª\Z~£öMfb×žGžŒ®ÀgzõÇ®N>õÙxžãI³ðå“Ë£×ð´‘Ý´¸}à/ÍÆN9Ç5ÃS™(¨ŽJç•fkK€@ÈQÈ55þ®o!¬J«—P;*æ£¨E9V„…´esƒ·ƒïéUŒM`I$Âeøèk¾-häµ3±B/ ^çJJ¶sÃúÔ!€ ¯Þ¬‰æÌàœ¶ElÄ>Î&¹”lê9ÇBkªÓm~Ï«Ûßùi*¡f‘’\nõÊú\nÄƒÊÒî¢¸$ˆ’sŽG±èžÓ¬õ[K«5škÅˆí$…<ñÎz÷ÃŠ©e~†°W9}[FžæÊ[ØÑQ\0y0W$çƒßŒW m¦C‰§ûÃô~™kgs¤Ç•Lï]§¿nsé[Áz|óÅÅ°‘-òðA\r÷Ï‡ÅTŠµ®ŽºŸ7YéóZJÉuha•iŽ§Ÿ¥gê\\7”ª©Ð(lã×“_Cx¯@šçHšÓíÚ[³2£ùEÑW#”úô¯3ÐþêšÀ‘žâ(cIŒ{±êßSÜgŠÖŽ:.ò«¡.¡ÀÛFy9ÁÏéBÅÇéZ7\Z5öŸ©M§Onþ|LU”/ëô­ˆ|ªÊm°#U™ü¶%¿Õ6q†®¹bi$¤å£#•Üä¤È‚½Wb0Mt~%ðüÚ%ý½³8–I¡Y\0‘žßZÂš°*p¾ÝëZu¡4¥2‘RŒõRîÇJÜÍ)7{QíLF½„hStÛˆ#Õ›b°êQ‰\"Sf@qƒÜÕK	¢	GÞÇßxcÂòkPE/ÚbŠXd%¾Ð„\0ãž‡¥rÔŸ-îRM²=RõãÓ¬,¢›2Âª<år™×¥_ðàÔn¯ØEy0V8‰ã^#ÍÜàÕXk×w0Äé	ùÀo‘—?ÀG­zW†ì,´«]ÉM´ñ÷2=b+Ç®ã´–æ±½ÈõYåµÕâ¾¼´Ž‚&@K|ŽBñƒøôö®nûÅ°X]jÙ¤]ŒS#*3ÈùŠô½OJŽö[y%ÿ\0hÆ~Î@aÐ×”|YðäöÖÖºŠH–Ýn¼$lq€£ßúW&’RTäk¬UÑËøƒÇ6÷±]ZÙiÑG*,1êF}k–¸Ôï5Káqu!–éÊ&\0>€q]\r®‡ ÛèÐ^jÜI%Ìm„N\n8?¨ÆkKŠÔjh—\"CníŒ)ÇÓ5ô8UM.Xt9ê_v?Ä:mî™s\0¼€DÒD\nà`68ÏÖªBÓÜ¶Ó¹É\0cô§â½V}JíÌ—û>Ég»Ë^3Ê²,.ÚÖãrŒ‚\n‘ìk®Vû&jöÔ¿«[ÜéÑ-Œ¨ªŠÛÃlÁlô9ëŠM;Äº–™§M§[ÊÖi’&ÀI c©=ª½ü·‘-Ôí$¿wr@íQØX\\jw+¬fIðŽÔE6¬Á³­·ñ>°ºTðXÆZâ)!È©€Å{ÃÝMntC-¼tÐîYˆÝ¹:(-ØñŒW‰øÇI×¼7<ip¶Ðl¶@ÍjØÆHõì~•Ñø+ÆZ¾!®÷AEòƒ‘(ã\0`óÔŸzŸ«¨ü!Î{}¦¬/¢Ž&GÄªÃ[Óÿ\0¯WZ(™Yš K®c’=+Ò|V+ÜÆ–ë;I <gƒÓ¶k¬·¿³½ŒÏkp“¢’	‰Ã\0GQÅféÛIê5+ìU¶ÂâÐÝ#É~ð¬¤aGòüª-jÕ®ÁKcåºÞ¶J‘ÛÔÖ[YÞÇm40Ì]K‚_-9=psWæ–ú=]\Z_*XÆõnv·¿§¥sÕ¨Ó´¤c¦§ãU~	žÄM5Â4Û¼üðq·ú~åþ[]²Ý!Ž9ˆ‰¥èTž3^»ñG@’hÅÈo9¢Vù3Ý¶÷í^uáÍ7þCå¥Ä–FÛ´GæM½~8®ºRvK©‹Ø÷×OƒL‚IRuŽ 7\ryçsW--!¦Si›ì\0Àà\Z±}£kw¾µ¹ha¸‘¢ŠY0’(Ï\r“þÏAÜš÷1¨%¤7ò4‘…YyÇCþÑ­çJKg¹1’êr;{}+Mi\nl³|áá·0å@î1Í|Õ>¯·$dãé^³ñ;ÄÓ\\Î–°)‚8Ð!ŠQ‡Ï<ã·¥ymÅÔQ$ÒÀéä«‘Ã}\rUK¤¢îP,3H~”¬»IãŠAƒÈ¬MM\nkCñ>Ÿ¨9ýÔS/š=c<7èM}p–\ZEåº·Ùàtœ	NŽ>•ñqãšõ/Eâø}¶xªâ4ÙTDœGÔ•\'òpNZ^ÄKMN‡âU–“áÿ\0¦”a-~²~æN@Ú[9ž•æ¾ÒšöðŒÐ*“3¢îØ¸î>¦º/ivÒÛÞZãTûJ»/Úœ³„ÇÊ¡šë¾\Zxaìž¢fHŒÀ™`GÝR¾„gëšÖ¤.õ!;#&óáŒVößêöÖÓ³3Z“ç“#*	úùõ¯=Ö´å´{ˆnfóoÖBÆPÙY~}s_CÜxsJ3ÂÚŸ˜ÆI¶Äç…\\çôÿ\0ë\nñ/‰ñ½úÃ\Z¡R‚ØëøÖsœTmb’wÜç4PÕDíck-ÂEiDcîÀ&¶5ß_é6V%¤†á$‡ÌANz0#­RðÏˆ¯<7¨ÉqnìÆÑHªØÜþ‡šô½gS]sC°´ÑïZøˆrLÃæg\'•#±ùS¢¡5g¸¦ÚgŽFÒÀûÔ´d½Ò™qu$À4’3?.}kkÄVš…†®tûÐŠÑ*«nP#¿ZçÝY\\©×<¢âìZ³W,=Ü·Kù®Ò á»¯>µQáónNÝû>ð,9ÔÓÐ8=þ‚½KPðn•¥xSL™|ÆÖ®B‘lß0|œ€}8ïšp¼Ý‡uÓ|?YEÔ-þ6LyqÊ@bGpúŠÏÔí|™‹,É’¤ußh:%³êË¥ÏÖ—³4‰$ªàÆ±ã#ˆª¾6³¶°ŽK!q’BÌ“~ó+÷aŽGZÒ¤%\\˜É9t2iÌ Œ‘Å#éJ¬0=kq£Šx¡—ŽÔÀpØ l`SFbœÔÜ`çµ\0\0HùSºóHpE\0\'Qô£°õ¡zœÑŒ\ZhJðf¹¡ˆÄñÜÚÉ¶icl€¸ÎHëÛ­z.•câí¬µ	[­:îI&ßÇcŽ¸æ¸?‚š¼kš†‰>ßøšÀ&nžbäø‚kÜí¬õ¸4èl¡•VH0Œ¬ƒc/cžüVñŒ\\{³ºO­Xë\"&Òïb‹Uw,,@vOâQž½:JÆÔt(]#¶ÕÖI-î”³LŠ2™äÞÕ­â/§ˆ´ñ‰\rµäkû»¨2¬­Û§jðÝkPñŸ…ÉÒŸR–kp6„Ýæ)è3Ò¯GKG°ù[0<Ack£s™g‰X…-Ôâ£Ð­.gŒMo™r(§‘ÜZ±§_[]Ý´ó©CætV#üô¦x~þçFñN®°#+ef\\£B?­xõ¤ß2Hé‚=–òmSYðQµ·µÛCåü±ýáŽ¤cƒô¯žµ­*ïIÔ¥µ»…£‘B1ø×½xcâ*¥Õ­¥ÜÅl?wæDà¨úëT>.èrx‡LÄ\Z|–óAÚÛxm=y®L\"P|“Ñ–Ç‚(eçŠF]¬Gzvr£Ö½p#Ç8§/õ ŒÓF{SìâšÃšp9ÓXc¥\0 âœ[Ú›÷ºÓ”cÞßš‚ R“H2s@\\B9íH¶*O/i:t4ÎúßÃÿ\0e½ŽG_´ÆÌì\"LÆø^àŸOjé_Ãš¶«¡O¨kf´†!\"Àó\"©ç·ãñ¬ÍWÄ:£Ï²:‰ ÜP¢Œ|Ç\'Š¯eâzÒ9Òs¼Ç÷€Æq×Åa‡§Æõ7\"|Ëc-¼<L¥ïåû;KíÈ tç­`ù›ð#¹ÆîÕ¿â?O©Æ-Xˆá‹ºäãÛµsk÷ÔÂîåßBÄD£ž*ÓWœÕ^ç\"HJòjš¸}?AÔo4ÛBÛBê¬ØÏ$Ö©Ò5Ý)bk{e†ÞF\"m»HÎ27tÇ©àÝMgÓäÒÄÑÀÏ’¥âÜ	#¹ì+[Õõ‹nt§¸1[’7ÃÌoŽýk–5j9J#•¬eÞÇjb„Ú¼†L,rc\0Žà÷¬ÇˆÉêiû‚iZ<wÈ®ˆ+\"HŒD 9Æ)Ñ’:t÷©±ÆuÜ{\ni+3cò©É#`_¦EXˆ€yíëU`eˆIÏ¶)…ŽóÇ 8ätÅDää®>¢¦Ú‚%BØ\'Œ\n·›UY†\rS·`K4ëÂ«nP:Ôœµ°µ4c¸C.3žjìŒ¶sI+#ÙµhÚÏ—84Àé\"e¬Ç.ÆÅe&J¡«13‘ÈÏ¡¦†kG0éÚžÍ‘ÇãYñžÄÕ• ÍUÀw&å6‘HÝ×Š‘_9úQp;Ñ»Ÿ­+°8ÇQQ3ãœsUqâƒ(<8¤·¸XIŸj9_º¬zŸ§zÏi~ïSÚ« \\¿æó@›-T–lä*E|ýÞ´®Á Çµ;wÕ?3È¥2™â¨EÀ\nUj­æ´±Iób˜‹.	*«Ë´òjÎáZ£t¤W¥0!šà–¨Œ»»qëUd—\rƒÚ‘f¿©¸èr)’¾F$^89¨ä‡š\0Ê±ÏJ–Wùr*´löüi“³!#<Pd“&šJÈ¤ç8ªÎß7R*‘”Œ\Z\0}Ì_)¬©!çÖ´\ZRüj´Ë¸‘ŒÐ2–ÝÄg©«	nr)§Ž1SDà¨\0@vHsÒ¶-¶1uªVèŠq’+BÞ$=*nÍ°\0qW–AŽ¸¬U¸h”Œô©â¼M1\Z…óÏz‘[#½Rò~¾µv–\0u=*„1Áäž8ª¯óŒžkJæ‰ü©Ì:Š¦Ñ0íë@‘T#E8ÈéÈUáºdyîbyÉæ˜ìe`X‚û@éWt»9®¤1DÀ;ð7)I¤®=Ê;0rGéO?:Þ½Ñna†I!åÂB3¨ÇjÊ’›öœfˆÍ5 š±\Z(n{Õ•Œw\Z»Ú¦SÓ5b±GnÕ®çÉµ²EF2CnÈ\"³­Ü¬ÊxÁëšÕwŠkh¶Ý	\'9÷ÏJÂ²Øåä½Š($¨óð×8®~ëÍÔ\rÅÎ!\r€ÌËž´ýFP0ð‘µ½¹F9^RžnT`/J˜BÊèmÝ½²{&’»\r\náÔr»óíY/8éÛÑÝo»Ž€¸^ðqYK¥2¼g5¬F#:ÙþÍpÍüD`;½A¨‹C\"6™ç´ÏÙ_qnüw4ª$àäsÍNt·:i¹VŒ)m nÁ÷¢QÖã0-l~Ù\n[Å†ñŸ—ÈpxÀZ·ÿ\0íõ¶ª4û¨š2këÎ=êå…ªÇ0bÅdyl\ns‘^¢b:žŸdÊ‘Ã}´	¤’äŽÝ¿û×6\"¤©­´4Ž§›k~0Å\"‹™$’26*à÷zý+ïKÔ<)©ÛK4Wˆ2rŒ»ôê=y¯\\6·kv¦T£O%·…W|÷ g¶+1t…žâ;iL×và2Y¤f\nç¦sÓð®GY¨ûÅlnø+ÆðêööVR4báVùÉ,G×½=imvÝ,kr„„0I@¸=zãŠ}®¤éMçÂIqdY¶:¨Ó®3\\w‰<]Îª-¦A4p‘å²9ùþ¾ÜšÃ™ÍY\rf‰e—ce¹L¥¢e˜ÎUmÝ‡=ë_XÓ?¶tóe,Ëº2§<eN}}+J»’úÞCt¡P¡©ÈAÛ¹éùUíO÷Z|K§»ÊZ>>e<ã¾GJ†žål.—mojÐ6ÑÈÈ‘ñ’9À9íÒºH\">[ÆÎŽŒwF\0è?ýuÎiPÞMh—-2•‘|¶1·ŸZê-¥¦ò	XÓ·¥iM]Ýƒeiî­í.DUBwÃÓõ¬/ì?Y¸iZgßžp3úíWbÚßÚçRÖÎ€ 2dnÎ>èï[Ù‰|”UIpé^†Å6âþFSW°šu”vP[ÀÅ£Œ‡8«´Œv© g ¨\Zî4š8™°òd(ŒŽ£>µ×«#DXªZ‹_XÍl®WÍ]¥·Tãè¸Œ[3ÝopXŒÇo¦qMÒdžHe3 HBoûØýz´š\\ÈW»³9];Â’ø}“ìRI,Š€>AÜõe=½ÇC\\–§ ]\rzæyõ&Z_õEFtq:zõùâÌ‘LŒžrFëõí^eâI-ß\\¹¹Ü¤ÄÙdHÎ+›ZJ×.œ}ã‚½Ò,bŒ\\Os$’Éq•þùÿ\0=«Í­b{íWljÌKùFxëÒ½§X¶³›GÕdºvÙogæ&NÂ Œ*ûãÎ¼‹Âú¥Þ—­±Fiç P¸ÏÌ1ÆkŠ7#’ù.©nfÞ>Ë©qU¤×#­Izí³‰£‡!”õ=*5Î\ruEZÌµª³ÉC^@|»Æsé]?‡¡·¹\Z’][ùqóEÜLg°\0~•r¨§DB-ŽN:ÖÕÍÝö›y$I FòÖ60É¹XcŽGZX…Ì¬Œ	ï\"Eùò4l¿1ÇúÕˆÍûö*r§#$sŠ°×—­\'A´¥@PydÛ½1QN-n\0çl|wÁíQW\nPyÆà;t ˜·aÒµ·@°å„H:ŠLžýéÀä\naÏ8äŽ´–â¹\"Þ¨û žÔ¯Ì¹àt¨?7\0ŠÐÓ¬†¡<‹,Â2¤ÉïœPÕµB\\œ—=éL,\0ç#5cË•fPÀŽ*s¼È<EÄ!bFÞÏåR„ÌEÁåXÞµ1bI\'©¥#Ž(b`G¥?B§ŸQÖ›’<gêuxÛrº8àZkQl o—¦¥Sœ×<TlãÏ=\r<cÀ¡•YšFbpÜ÷­*_&xV6QtÇj´˜Ú¤ôn~µ”ïŒ2}OàÞ7F»ví#¾´¦¯ =vý¡u½.ÏWÞ°ÛEqˆ¦R\'ù6œŸ\\¯LúW«]O}§Û­Î­3(öÀ±2ŒŽvÚ:žk\Z+±m%œžTr®ŠÇvcê8¯W»Ò|3w¢é	5ÅÍ­¬ñ/Øî210Ã©>¹ê+Ìt?{{\ZZëCÈo­ìâvòe~>àdÁ<d=óT\'Y@b!}©€Ï·¦zgÒ½òãá…Ç…­m-£¶šé\næãq°NN}0z{W/uáÛ¹¥—Ãó.ûIeT’÷p\nœcïqØô«§™Åéar´y¶ƒp·ÐÙÇr`†iPJO+·=Hô£mSÜÜÁ=ÿ\0’›Ø¡‘#=nkvžðüz}”rËq3«CrØ/h<xÎs\\Õ¼r^ië0\0ŽL„Ç#=ñéÅvÓ¬ªÅÍ+\"“ÒÆ§†¡†æôi·\röye‘J\\7*¿ïLgšmõ»Ùë7v-8û3!!àLŒðsÛµcËòO–ÒJ1÷]Ž0G£V‚ÜM1ó%¶6ùTräúŸZ««\\L¸·þÉí¶†Úay˜3#ƒÈRyÏJÅ[	·ì6ðAìkcM³K˜`žælDfòÎîœääãž½}3[VþN™ŸuqÏ¾ålm`Ã†\rÜ\ZÆU%M\rêrzUÅµšÜ­˜cÜS×õœTªwþUÙë&ÒþÖöé.\"ãUX`_npzðr\0H>|r$ÖÔ*ó«²\Z³\"êF\\ü½3ÛéNVf\',y95rçÈ¼E’(|©¸Ê¹õöªär¤œ©Æ=ëdîI#¹`C>ìw&§±¿’ÎxŸ{yHÙ*‡{Šu¶œ/!.³D mgÚy8Z­sk5¤Ë†S‚3EâýÐ³3¤³9°\'Œõ5BŸÄqïÖ‘T†Á¹ ±9ÏJ¥ X”J6`ŸZi`iGÈ;gµ&AäiÜB/=94Ö#<ŠF8#š@IÍPÎqÚ¤Ë(\0Žµ9ç½Hg,ª¤Ž3@Å‚ ãÓ3JÎ\\’@íL/Î1B\0õ&•zÓKóŒqNLc=ýé°IÛŠ™-ek8\0O¥BGËÈ¯PÐüªÇáK}Q<©mî\"&[TSæ<lØÏLqÁü*éÃ™Ø™hŽ-|5}\\Ýá·š&•X°;Âõß¾*¶«§ÚØÝÄú}Ï›‘¬€pH\'¨=« ×¤xôKfXf³¸Xbq¼HÞËv#pàÿ\0z³a¼ÓýœòZ«Æ#U{`øÞÛpI=²y­§N+Df¦ïsÜ<(£ÊPÅH9Ï5\\Ýn—2nmÍ– òkoíÖ:u­ÍœðÃz³ xdF!­äô\'ŒuÎ<¥¤fleŽOë	A\"âÛ%)‚çi?)n¸íW,¦û$ÂE¸xä\nyLƒô¶}k06OZr»z~5œ£t\\Y·åyûgµSÆM±Äylc9½iJ{öÜ:ÈñÀÑ,W\rò”Ç}ÁäzÖ\rÅÜ’ÚÛÚr±ÁÈ\'¦~¼SnnL*1˜Ôa€äúf¹Ü.UÍ]?G¸š)f¸‰£#,¥Ó»dmýžæÚÎ»ÇªM³iÎ;‘íßÞ¹È¼M¨ÁnSÌWGE\r´g$}*iu»BÖ8ÊgÉ„DrKdøíÅcRFü†š0&ÄsÈˆw(sƒëÍJŒ„¦TžH4_Csf-Þ[r¥»Óìmïî1q’\0«±5Ërwe´»a„º˜ÙqŒgñú×Sá-Jµ+Xäo%ba‰\0÷äqšç®ü=}¦vqµ»{ÕåÑ¾Ëö[™n’XncÞæ&Æ9ÁÜW-U	Á¢•Ó=Q×âƒTÈ1Ü\0™Ä6`7·®GJ¦|ywsx—ks<-\00ùaˆf\\ç\' ƒßò¬}_@’ßNû}®JE\ZoRØÈÛó~¤R[éú´QhÛÆ£2Ë\nm¸Èçž„þUæF„w6nç¯èž%´º·†ÛÄ™&@Ê¡At#ô5ÑG$vöxíØ@ˆ¢2€`{^o\r†ƒsr®^(³«òÎÌ72ñÆNk»Óæ·˜ ’@¬,N>P;íÏá\\žÚ1V)Ù“ÞXÛjvW-QyåJ‡dƒŽ„Ö<ŠÅ.$&ÄîWhÀ<Žsí[²	ÁŒ¡Ëdœÿ\0Z¥y5ÕÎ¨+[È‡É+L$‚3èhS§VÑÙ“Ë©À[I¤^m‚ÜØË:Kò<§€§¨=¹ÍPñ\'„ô¸>Ù;;Ccp˜TÎpøÈ\'#ŸçI¡ø“MðÅÕÛêö*`áW!œö ôéÔq]gü$ºEÌÒýš\0dhÉR¨¸pGÝcê8­]5JÒŒ˜¹S>baµÊžÇ‡Š¿®ÛM~þBŠ³¾ÕÎp3*àf¾š›æŠf-XEëíFpØ¤¾õ¡\'Gáx®u&GŒHÀ{Œó]¶±$ñ[*Ù»Í£¸ÚËƒÑ½kÍ4ÛétëÅ¸…°ÀÖ¶m5»¹/æâíÙÏc€\rpW£)O›¡IW†qªxŠÕ=ä\0¥‰ùGoÂ½š[§Íÿ\0Údùcýºsœšðo	k	§ø‚+°ÿ\0½CòdpÜãoëÖ½‡ÄÞ\'ŽæÅ¬!Ø—{ò`!ÈÎ}G5åãæåHÖ\ZwBB·¯pÎÜsƒŽ•åž#Ô¬õÛ‹OP—6¶çË²°aó6HË‘ß=½«P½Õ®õ§Ð¬®Õ­¼¡‰ƒ 7ÿ\0Xf¹©ÍÔš¬ÑâQ,K#7*Wùcšš89\'«Ô©Hï55Ð5\r\nÚé#Ž\0]˜¡\0˜ñô÷®R@²[\\£¢Äé´¼ â¦e[íQ¾ÑqZÈÊò•\'Äw¨µ¸­-tûLJ$š@Ä…=\08«·NT¥kÞäI©+˜W„É\'Êå‘ú\nÓð…Ä6zÚÜKgã\"’Í‚¤úœÖSî•r‘í\0gëLµ¸h&$sG\\W«Ò2v,êsy÷ÓÊËWrÁ;ž”XÇ|‘Éwh$Û	~¿•V™˜àœäŠÜðÅÈ‚+¤hhå+£dd÷öô§Íev+\\²þ&—VWmnÆMFR¬#˜ÊC …ìƒÎ+:êóÉ¼€&0«æGäVúç½tO<wQØ=$Ž2<´Ž<Žùëß½2ëL±6)ã¹“Q!âD‰ÃÄtË~®2rÕ\nÉhQ¿ñâ¬¶qÝ~áÛ,¨ù\rŽ™ÇBñ¯¦è—¯gö´·y\0’XN	5—sáIáÒ­µ.\"ºÓ|ñÅÖüã\rPfU’[x.dxwŒm<0ìqëS(¤ÄµZ­ÅG¿½Ó.nÁ±Qq2g××ƒ“šô›ohú…Ë>K‹™~UŠÞxHãµ|ç£jÓéwQŸ³E{gmÐH0­¸c$õ§å]¶…ñizµ¬—Ö¦ÎÎ8|¼Û®ó´œŽ½ý~”£M]Ü%&–‡gwãyu«»‹VÐïN•pyõôªž­îtË Ù¬Í-¤ÓÍó¸?Óñ^}©xª	<Qwt/äòÑ¼\n9ã€ÃùÖ§ÄÙa¹¶[€³[EpÄË´‚1Ç¦sYZtäô)ÚHëõ/[øV´Õ.¦’y„ï+]´{“\'îîãojSã;;Òšv«$?è¥Ä®&P~V·^ƒÒ±üSñ<^=Å•«#YOn#+ÔFÇ©ÏqÏé^O¨Nf/p}\'÷«µW¼SkS\'\rO@²Ò ø‡ñ\"v´ó¿²ãaºs“…¹=Î×|DÑ­®¬§ÒíåH~Î[\n‡Î©ö¬Ï\0ø³Ã^ðÙŒz…Ì›fdÏÞ<\'°ÕÄÐê¶ö—7‹4Wkl±ùb5Y[©$ô\'¾\\}öØKD’<ávÊV«WšÜñ66—­ÍÐ4>f%E#¢·#ü+È®f¬ìk{­¸àcŠïþßÙØøÅáºä7vÏJ£wÏGø¸\0&¦·¸šÖxçÚ9Qƒ+)Á„ìÄõG¼ø›Â·—3ÙKQAb’\ZÚÙ†è·(Àlqê;TSê#MÒZF¸kÖµTC·bÚvª79`1GZâ´¹u]rú{ûBKÛq\nÍyäÈÕsŒqÐã¥v~#°°·°ÒMxWT ó\'t¶2Æ3ŽMuÑmÊìÂvµŽ®ˆZ|º”\ZmÜaš¼ùå+º06äïÞ¼×ÅšN¥â\rWT’Ý¥¶l òÈÚ€AÏ¯ŠÖ°ÑîìîÎ¯bË6£ˆ.RC›yƒ#vþUâ8ìl¼7™ŠæP^æÕ\0Á\0¬àšr¤’vCŒìqZ\'öä“®›µCJQØ)Ø9Àõ8®«JŽÖþ=3Fû ²›a2^[¶Æ2={f¨ü=†Úã]ÇrciA@’GÀä~}\ruÇÁšÝ¿‰ÓÎËbËöQ=ºÎ¸Îì„qšâ§^ñ5“V³9OFÕXIŽÝµÈ³µðycúŠâµ$•o%Y!0º±VŒÿ\0	Ewš·ú!šæÎíà’Ê]²yŽYäv\0÷HÇ¸­^é¯õ	î »n õÏzš³ZßqÅ;™°|Ò\0ÄŽx>•ìÞÓî5-wJY®ÒrÖÞl3ïXÙ0@$ñƒè:W”ÄI¹¶ºxÆÙ8¡ƒ)È<Æ»OßGý§,s¯”æ)Ìe¼¢{éÅsó¨êÞ…8·±µã[W³´HÈ²Íq\ZÅ +\Z±aÇL}kÎõ˜î¬§’Ê_³™\'\n$1òCø\Z÷¯j2é¾[Ñ}—h|²Ž«¾R8ÏNœu¯³·¹Öü@dj™d‘Ç	ž9•¥Zú=n…¢ž¯ ÜXiÖZÁ¶º áu8*G­bÐW¦øÓÂK·¸Y.ˆ\"šï•—œ1_LŒ{W™0â±ÃÕö‘7hZkwzR¯Lö§2µ±#N)­Òœ8¤#©  téHF9è)O˜\rèØ§0ÊñÚ‚š?J\0’Öâ[[˜ç†FIc`èêpTŽAõÿ\0ÃÏÿ\0Â_áKöti˜îÃŒûd`þ5ñÐ8ÏÖ»ÿ\0„þ0“Ã0·Y%+cxD©Æ9<7¶õ¢MØ–‘õmã¼vs<doT$g×á7ö9\Z…õÔ·3ˆØ/îÎæ]Ý9éÞ2ñ4z<°ÀñÉ$ñ7WÇËÜZò?Û½ìÓ–um.;‘û¹&ÆÒÇ©‡ÔsYÕ¯\ntÛ“Ñ’µzüMá­%/4ûý0[F#\'O1F%?{Ÿ\\çç>*šâçQ7ïj`Ø¨UB}‡çÒ¾Õ<)§:@¶–ï+l[/šv.Ó’£Ø‚p+žñ¿‡ì/|*mã²’;ü4ª²Q“œ÷À¬¢Ú’µ\"¬qþOk¿g±½´‰&d;Ü>Ö\rëÛŽ:{×Gªü6·’A\r¦¥w›8O,ÊY\0>Ÿžq^;¥CßÅo;ù`¸Pû¶•$õÍ{f¯Ýh^E– ¯>‘×pE“œgç^Øõæâ¡8O÷l¤ìxo‰|=sáÍb}>èîxÛ±€Ã±¬Uàó^Ëñ~Ë@»†ßTÒ¯ãšRH«.ü÷¼i¸8ëÐ”¥M9nMÕôÓO\rO=2)­Ïn•°ÖŸ´‘ÇJŒŒŽ*H‰?/J6XÜ1Ò€\Zy SCÜP‘¸ÒJöëMÞj~I<ƒCDÈà÷ dfCÈ¤ž\"+É¦Tü£4÷Ÿ­½À|ï™€(Œ¸À>´ž ’mJ‚D0´nÅL0wàÃqþê>!°ƒMðÍÔŒ‘‘|²† íÏ¥|ý­êÚ—òOƒ\ZgäˆªjÂ•oqÂÚ„¢ÜŒ¶Í¹ºžµ\\Ä3‘Í\\x7ö¤hvàž)\'eb¬W#xÆ1NU<Šy…Šx·lsúÓAcoLÖî0X‰­²>] A½¾§½]×u=6{b¬Ó,ŒYòCcÛúW:®±G÷qïPÊK¶Cdš™(ÉlKZÜk°ÏÊ0•5OÓ$RÒdäg¥4€ÈUð9ìiX1Ž´Õ`±Ÿ”OJ•fùEc¡\"5 ƒºœ±ÛFëAucœÓ™‰_”öéH/qØ(\0&£wr;R)\'©¦JN>¢„¦µBò2œƒM.wmÎ\rDÙœÓVÌwàïZ–í‚JË]‚#óÏ®+FÑŒUyoîÒŽ Ñ½nNäÖ` a8çµlÛXu«É ÇÞ¦\"ê¹fÇ8«lÐsŽþµœ¬»UƒŽ½;ÕøgU‰ÃF®Yp	?túŠR1óëS#€¸#š¥¼oëÅNŽ:{Óé_oAPI)ïšCœ\Z­3ñÇJbçÚ˜_ÅW.rHüªd==²heä$õüsOŠç\rŒôô¬£pI\0ä\Zz±Ï\'ši³ç3œóNò=ë$ÊÈzŠ±ÀlU­@ÒÞ\0È¨üÑ»®\rAæà3Šˆ¾I+ÖÀÒûIMG,›‡5ž\'9Ãg	O\\ŽÆÄ2ãæ\'µVL“ÁéV&ÃôëU[*x<ÒarAÁëQ° t¦¤Ä`ã¥Xùd]ÙúÐ2¯ÝäqŠI&YƒÔw¥•ÕIUdÛŒô $b”ˆàŽiŒrÝ:Ò—j.»T·ÇNâš,4ç$ñžh-ŠãšE@Ó52!<ãšÂzP–éÐÔðHQ€ÍB¡éV#ŒÈG¨ïRð<ÅävëS[[Ùô¤·•yv)ãj¡R\0#¨«HÆ<Î;\ZŽÎ>UÉ °Ï¦i‰–ÌñÈ!Ý´8ø÷¤c²†ã·õ¬÷p\Z¥…Õ˜‡m )·qZÄ†&70\0t$,axäŽr4ÒDÞÇ$Ç¥Eœ`ŠÕ€íÖú+2KWÞ‘0ÜìÇ;û€\r`<qbEÈR¼$yçsM²Ö\nG¼Ñ‰p\\÷¦ÜO›˜@	9$ãÔô®ztÜ\rÊ¬L2‘œóÈö«aÔã¨<}*’‚ÌwqíV\"b¼]HE¬sŽõrÝ§ŽEˆ:²çÔþMYv_óÍXµ»6ä2°È<©èE)] +ÊT±¥¶™Ôì$g“éZIbúŠÃ*F ¸%¶ûVåŒqØ R|ÀÅIÆr½ëž¥un£±’ZÓìê­&[²¯P=úâ°n-$ò¼ç|‚p§¨Ï¦jäöóGª9—s[³•FÕ\'¹WÌ.ù‹?wÔúÓƒv¸Ò¹‡,*Aãç­7|»AÛ„^ƒ<\nÔ0$ÒÎU×älN	õªd,r2°>Âº¸š\"ó¦)íŠí4k‰WIYÞëdŠÙX/âÇò®7*¿2Ž½»ÑÕÄ·ÙÝ—qù”ØûVui©«c³kíV6£v·°¬`FYÂœc¨©ëÖ³u-yßH–I’T’9þRÐŽ3Ö³t­I­ínÚH¦5ù“8|×)sª]ÝÛÊFtÊ€ý=~ƒ¥rª-»[b¹­]Cgc%¬ža†Y‡ÈÜ¤c¾1LðÆ‚Úƒ\'uIËü›É<ç¿µAkyö[RˆfƒDáðFpHÇ~•éþ6¢Â{©GæcÎI=sÇJÎ­¡Ê‡¹5–‹t‚\'Xñ•17Íòg§OåV¥Ó\r”«]ÛäÌ.…ãœãÓõ­­>éü¦`¥\"DÞIR}A­7XÜ$­´m9äð~•Ç©¢Ð©`ä¢Àà+ ÜÊ=*P·ä\Z¹?>´é¡Asä¶î‡oqÛëR\\C˜ed»Ã7š½Ø2œ’ÚYZ<ªUdX—9=Çµ©lêÐ¡\\á†FãÍQ[;y-VÂ°%ñŒŸ\\Õˆð±„å®v€=ë¦”š’h‡±w ÔS[¬Ê9*ÊrzŠSûµrÌx§3„OðŒàu¯M\\ÏAÀ`œãÖ«ÊÖöK-Ì¬±¡Áv\'ŠÃ›Æ6ç}´éÓÆÐÜö=ë‚ñ\'‰¯. ,—sf—ÆXvÔìâõï±ßêÚÄWvÁtË„™ÖP®R@¡Ol“Ò¼ÛWžw7M!k{‘û§†½xíXöö·Ûe¼Þñmí$ óº»¨-%ì¶Ûog}ÆRÃ;2~œ^>:¯2ÚÖ:ihÎ\'ÅK4>¿¸¼°’e†(A”7òÌ;úW›ørÉï5€ËÓ\'ž•ëŸï,Ó@ŠCE<÷\0º‘\"¨89öÈ®+ÀQ´kxíåï.ü¿~0£“žÃæ©¡/g‡r\ZêÎç?j”œgyÎ>´‹Çz±ªÁömVêÌËƒÔ`Õa€\rw§t™Q#\0	yè\rN“3b.£?(=WÈ\0õ©J™”¯jÒg;Ü{g. –îOz\ZL©$sÖ’9Î1Èõ¤`Ï T^\\ã¥\0ÅBÄ“J¬â†Î(àSO=)¡‹“Òœ÷\"“v;ñA#9n‚‰¼óùÕÈTí\r€rHì*¨*9ƒß½J’9\\*¬9\0õ©ÍG·¼ÆçMñ¾0ýGOð¬ù-ØnÍÓÿ\0¯V>ß,VïäÊ¡J¿?ˆ÷â£[yæIËb‘Œ¶OAYÆL\nmÃ0½*e²Iæ+¨<\0ª:u¦D[!AëU¾¤Ø™mÜ°\0ž„T‹µ›$}ªáÍ¢)!žS½pAÆ> ŠèþË\\ƒ}rú£\'È›ÃÎqŽß_Z9¬ÀäÉÙ\'Ÿ¥5˜±ùxíO•÷€ê¡pG¯½ Q˜)	ü\\tªL›\rEÉ#4í «œöÅ1	\'‚iÈÄ¿ÿ\0¯Cm\0Ší”àž\Zèô+¿µÛ¾”èÓ,’	ƒ¡é?ŸÒ¹ý¡²pG8Å1$šÖdžÞG‰Ô‚¥N¢qS‹NÇÒ~½hìäÓuI­6Û€±ÿ\0;ž‡žõÇx·ÃZ¾±â+«0É¨„ÝDŒ›H“!J`wèsé\\7»hVÒGÄ+‚ÆöÈääžz×aoâIï`]²$Ì‰‰\0bXŒä{×ðÕ)K™\"ÛLó×¶Ôç[¥±ŽÌîÝ$‘ÏëO]:K,#!™>_%·mïž+ ™áÓ¥k»xL»¿w¿r8Ç|ö5…%Ü°]%Ü8Wà{zWtjÍè‘ìDšÂi’é®ìawž	ÿ\0JŸGÓµJÚòKHhíS{Õ“üü«2w7WDÆ…û¨Np+[A×¯´;MNI¤îUÕS!€Ü>ki&£xîRÕêjøZãJ½ÒïôÍWQ[G”fÚFpG\'’¾\0?¥d¾¡¨éòD¯#‡S“’Iû§Ó“X±Ä«¸·8è3Ví¼²û¦†q°ž\rT•÷Ø–Çy¯s?ÌÛºœ“[öÚ5Ì\ZhÔ\"›|SFP¢á›9)ºøV–žSFRv¶}ëFÐÞDìóÚÚ2²È‹&Þ3€qßÒ¢§Ãh…‡¥¼ê,¢|_0ëý{Ö»¼×ôcÔzÛžîÚk)á$§”ûíÃòØ?ÃžØëYãäa’Ä1Ûµ\'xë¹-2(_kŒö<ûJì,/t››Yaº¶Þ‰Ê 31ÆP8ë\\aWÁ§™Xªò£Ç­MJ|ëqÅØ’ê!ö‡XW+“Ò \\ƒÖ®[]¬\níÏ™Œt?Z‚cæ³L1’sZEÛFÏnöíµùùC=Í@¤dõö©D¬rªÇæê*269Ç#ÜUÜ@À!8äTLâ¬E—3£Bîx\n9&¥‚Âââñ-”l”¸L7\'Ö…v.¥\"‡°¤É\rïš¹e>y=¬á–Hd(Üqpj´™áÀÆE1,Ý3À4¥É°)„qÞ…ÇJ\0U qùÒ«`H@ïšN Ó¸îù1ÔWÑ~	ñ\\¶~Ñâ’Ë‰còí¶¹&LOnAý+ç½ÀÚµÞ“§»xÚè@ŽR\'C*ÂÙåöƒòƒÀÍmE&ìÑºWã›MVê)æAq5ŒÈ¸)#ž0\0žœW¥Eky)†ä˜Ø!%¾«Ò¤¹Ôµï\r]Oâx­î‹am®!¨Î7èÇx¯6e&Kë¹\'i^9rÌª\n³œõöÈ5µMùŒáµ‡jvQ1S\"…A„‘üçþ|V-Äi®É<ÀFN0}+NÚÖÞö—‘æó€V†%1\'æ\'Û•)ðÕÌp¤·°Ç0&##à6ÓÁôïX¸7ª4M-|·=éÛ¹<T÷v‚ÒæHÒE˜!ÁtþµE( °\rƒÐÖMX¢fv)béB:¤†þ {Ôæ5ž`‘Ä¦I\n¨xÉì*›ü¤©â³ŒñÓÒ¦·­ß ÷àŠŽDUÚTîüFÙ\\þ´íp.Þ]Gw)ebR>êç\0ãµ]ðö§ý¨}¤@“6Ý ;`c¸?…br)I\'©©pN<¡Ó¹ê—wúeÜÜÂÅ8dS8q#ªƒÉÅÏ~†ýái$Vó˜vÅal¸œñÖ˜ÍžH®zX^M.7&Î‡OñÛÅ›u|éb_.á72ëô®—Ã\Z¬(“[_¼Æ)1åÈìiçå÷è~µçqW­¯¦ˆ…WÂó‘žÖ•|$f‡´õ=ŸBWZÙ[;¸¬¶ü,ƒC†/§ãè+~·xR†…k‹+™wEr¤Ÿ›f;t<~5ãÚ^³øäºˆJ#l•/€þŸ•z´\Zå¦¡±]@\\	£Ü‘ÅóÉ—nxÅx¸Œ;‹Qf°’¹ÒêÚ´–è-0|Ï+q—<€xÎ+\Zß_”[Ái,¤	ÔÞÀm_\\Ÿå^QªÝÞÙjåµ;û²HÂUî l€}éÍâ„,ÑŒÍÊ$J ±P1·Ú¦9t’]Fê#/[Õ>Ùâ;Ë¦ŒÙÊyIÀ\n8ãò®›C¼K›Hm¤”ÚÛ«	€H÷ÏO®9®P¸I/äxwˆ‹î?v^\0ŠÇU×”ß,Í(›\ZôëPQ¢ºXˆËSâ5…•Ÿ‰k7ÃwÌO8ÝÐ‘žÇ®G­zgÆ²2èsÙH¦)!“j*€C:wâ¼Ï¯Ò»0r¡L·ÒƒÒŠSŠí$P{ÖÅ¤F@³’I¬\\óí_Gè\rÐ¼OàM.]éä–ÈLÈ£p#ƒÇáúW6&¯%—pŠ¹Íx:k-?BŠòòóOÛ¦#Ðæ@ÙÈ ûã­[ñDúLºsß2Å-Ñ\\¶FU‰9\n1øS|_£ØYi,¶–° ¶”[¶ï.zä×j’É\nÓAª˜crK±<mÕâÎ<ùÔŽŽ^]\ríA­ô$Ž[yWÍ¹o5–•“ÐwÀV\'Še?i–iü¦»lÐ6CŒa‰>¹æº¨´]\'QûeÍÌWÛ¬{¡òÆ@#9>üW%­êpCÐÚ¢´³Æap@;¶­<<¹§dµA\'¥Ž^9&’U?(;˜ô©,a¶f7,û±òm$ÿ\0…G«´©›ÏRp:õ5¡sasÆhº‚£ö¯e´´1,\\yº‘Zí·@3µO_Æ¹pz`ŠÙ‚ñc¹ó¤¶Y•Ð¡CÇn¿ZÈšO2F|»ž+ZI­Ée·X³cq#‹ÊG\0Vï„5ÇÒ£ÔmRÊ;—¹E*\\å•=yú×0§#8§Û2‰Fç+ÇQEJjqq`¥mOB¶ŠâöIµGQ–gè‘Á÷d“ F=¸üëFb6°BñÇm<3‚U\"o,žBŽ™ïô®O½šÒÙ£ŽåÂË&ãŽ„Ôú}ì‘ßÁ<’Hðy¨f‹“…T{GN6ˆrÝÝ.©®ÞkšÝ²Æ#2²ù3ypác¿áÉ©¯¾Þizê§ÛcA!-Šz0¶ŸN¼z×KkØÜÝø‚Ù\"–; LI‘½Œ¯¨â®kÚ®£¨è·±ßéÑZÜíGiÖN\nÉŽÄ%R¬â¥¸¬–†‰< ÓhRj\ZMê;El’É\\yÙ?>}§ÂÜÍuu¤¸•7(†à•9•lKâ=_Jf¶¸¿ŽA<[E¶w&Ç þÐÖµ÷ˆ´9<úDÓFÓ„2ÄË÷	îG­t;ÛÞÜQ8(áŽìÁ`±E…²n$|nÏ@{\n†òÊkf™«\"DfNG>õÕèžÒ<HË¾¥,rÂï\nIÊî§îçÜzWy¯iZøFÿ\0OK5Ž*·3,;œ@GÌ8Æv¥mN<Û“)$xh™‚ã¡ö¤2×·J±})¹¹-´\0 \"àÀÇó«W~¼µÓí/3Ð-Sž\\úT¸ë ÓÐ§â3“å©Ë0íZñx¯V´µ°ÝÈmÕXnŸ0Á¬•´ºŽGO,¯–7H3ÐzÖ®—§®©v«yt-í‚2¬Á2£ÜÒŒdž€ÚkS*úêâø¤·7/4›B‚ìI\0tHã×¥u\Z‡…ÛM¸{}BäY–´ûD&XÉ8ÇÈéŸZå±Ò‰FKq«t~¸è(9¤ÏÒ g]áµ¹:UÃAR«1„ÇŽdÈÉÉíÀâ»ÏøVâëWX¯ ’M8•fYWvÜí9í‘Šâ¾]ÂÚÔšEÌK,zŒf%áÉŒ©Ïáú×¹húí—†ô{‰ Ù¿eœí*ÈøÎçzé¦ß³÷w1¹µ65?YÜé‰cKu”1X†\0<ñŽÜšò¿h—:¥ƒiPY3Ýéoƒ;?ßCÓ“À^¼z×_ã[Ønì{cå[O*Ç5à›äL	Áé\\löš­Ö¥=«\\&¥w’WwÛÑ)ùY}±ŸÎœeÊ¹gÔO]QÊi¶\Z¯†<Ua=ÝŸ”X€’#d!ãçùO8ñîjûÔ6ñ\\%èY¯$€(~P@Ç\'ò¬ÿ\0ÝÚj–PÎöPÛµ–`¼.7¿ÝÚ Lw®^oê~ñí‘ŒÉ0ˆ[¼|Ë\"ã¹šŠIØNïS†ñF™©Kt÷×n‘ÉxÛÌl~êîÚ¿áéPk^M*Ø¡¾´¸xB³²|ÍÜð}¸üëªø‘ ‹+Ù\'Tšñ‰û9XG|ô$“\\ýý”¶Öáf¸@c\"€g$zô¸q-)z›Bö¹<^]Ùq¦E¶Ô€ªpOï6W×®yéVtïjž·›TekYâBmÜ2!ûÇÿ\0úÕÕx\'S×|\'á9em$Ínór1WAÓpå{WE©_ÿ\0Âe¥ÛÝZÙÜ¤ˆ¬$…¢ÊŽïéXÕ£íiÙhk	ò»³ÃWðÆ·zSR¹\n¢ˆäçÁZÈÑ´ëMSSÕµ,[–šb}Ú /q‘ú×ªi—pZ\\Ìa’(âÈeU Î>ëÑ¾økRÒ´èîn¦6Ë°ló	;³ƒ€?:ò¥zPq¹vMÜæ|{púóÛO…ávÃöãŠòKˆ¼©Ý}	¯§üAàøµszñ²F²ìù`ÃßŽM|ë¯Ù¬\Z¥Üp»JÈT³x8æ·ÁT{$b‚síR)À¨òCS— ÿ\0JôHü\Zp9Jq\0ƒŠ`ã\"€bžE41Þ—€ØÍæ€\ZAÁæœx<RƒÏçNà3Í\nØÇ¥*œ´ÆéLLèàÔµ=_Ê·–éä1¨7Ažu>²šr.ØÄ„­Œ‚ëÎ0=kˆÐu¦ë6·/ÌjàH0Êx=kÕ®nÎ…âkð¢ëIóv–I#†èpkÉÆ¶Ÿ\"Z2á¹¡aâm{JÕmdµ—íº;¦\r±O™FÁîAÏJïlu]6wšk·­ö•ŽI:íÀá½ùük?W¿ÒÛÃLVñ¬§-°€\nç\'#ëšæô]6îúîBcUŽ(Õ[ó\'dw<W˜êJËÈèM=+×\"†ÛÅWPÁ	14¬HìO¯BðV°¶ÖÅg’hŠ€ÑÎ”ž3ìk“ø‡g=ˆRâXÊT0]¥vâµ<3st-&º-¼¢ÊílêH}S?JôjKš™…µÔè¼{á\\¾k» -ÚL¬‹*ípÞ^£µxTði¤‰þò’+è}Q±“Ã¶×Ëi%ÈA¼Q’„ö\'‚1^3âý;É¼Žö)|èn×Ìß=Áük\\&¥Gi„£±Í¯ÝÅÍ3%ZŸÔ\Zôˆ\Z0;Ô€wÖš¨©Æ)ä£Ò–„±…ˆ÷¤Ã#q×Ú»<g¤gœô¦ ,1óu€ÁéŠFÁëÖ‘¶ð[˜ì<œnÍ\nóHªqCÈÀ¤\'©ìÞ+ñmÞ­	²¤Cýf;±Ûé\\4‰ódZ÷‘•o”f¨¬lHï\\Ôâ¢JÆXÁ#šT‚h´^j…#•³8ÛŽjÀŸDÒ\"Õu£šo*ÜÈøÉÞ´<G Zi\Z¼K:ý–e²sÀÏ5:|°X™!¸ˆùÔð}€õ¬=JyÙÌR±,³œVNîJÌEk£\ZÜH‘>øÕˆSê*\r ÏÒ‘IÆ§€0#ëZ½‰Ñõ;¸¨Y˜0çŒóVN¼ÔAI\\ãÔæ„lÉÆp9§r~Q“ý)w^T‚*X$Dà’NF)7d— ã¥XóƒU™\\¸n2†9ùsþÐ¬ù„XB¬y8Í-Âª¨Úr{š¯Üç¥L«òå^ÔÊE)FãÆ(Ü²¸`Žâ¬¼;¡`p·4ØmšæF`9žµJjÄÜ\"†5‰ÙÛ°ÍKm*#!\rÏz©!b»{æ¥#<\ZißQöìL{ÔñœT²ïø\Z¥lŒá÷GSéV†D<…Ç­bÜ\0	?)­kï-X*¡,¸ù—8úW7¤7Ìxö­˜!‘ìäºGŒ$EARØcžàzUÅ7°‹ï0¦õ\n£©QÉ 8#å8õAe/Æà3ëMi°:óE†XšM¿1#9ÇZ«5É\0+ñéŠ§<å²3U¤ºy$È \n.¬\"÷žK…^Oj¯,ùbO¥Wó@éŸ­5ßs`õ¥q¥M‘£¿§µ,eF$d©\0\Z£4Ò,{\0Ú‡¯¿½:“þösž=j·Zrk‚·Q´SíØœzÖsHÎÛ™²Ç©õ«pÈ8ç“Öª*È,kÆA&†\\ONj¬ràù\nŸ~î;Õ€ò…¸&¡!£ëÈ«žÇ­míL.U•öÀäš«#îäT²°1TDærqÍ ,Æç…#êiîíã¡¦¦Ó\'unüP2¼³åˆ<`ÔO â™\"Ç4Œ~BAÉ€ŒK‡ç¥Kæ+Ž;UÜ¬8÷5(@Tó@3üôåfÝê*4ÜÇž§­ZU\0\0i€äs*Vp½ûš„sÅ.CZ–ÖB=³V¡Àb@ªy¦ŽLƒÒí¹1Ò¥ÞU‡U(\' z´­¼Š 6tèZ]®HÉ+¼ð3Ž”ç	ä0Üƒ Ïõ­d[-	l„d9L»8$úQšçÓ|ŒÊ»ŽÕ,@àšZoqu±¤úz¶Ä…üÙû½ëY²)ŒòNçOK-7£°“ ÛÇ¨c´Þ’l,ÎŠpzŠÌGMV,Pã9è?\ZEm®Kç`8b9ÅUÂÆ¼Ö²ÃmÅJ¬«•Ï¥Kn9Wá‡PjÔ\rm%¼6w7,È1 ‘ÎÀ«´àZ§g3äI\nrŸÄOOzÊ59®6¬h½ƒ@™š=þj’¥O Š`o/rŒ€9ö«7s¤ÈTAl£g¿J³\r„âd”#\rŽ½3V§¡&vAÀÆàÓ_8â–tx$!ñÇÂâµNâ5tæ¶¹1³(Fìzç«­MÏgTŠB»;N85ç± yT’É=+¯±³‚ëOEŠi¡.H_-²Tú{WŒŠÜ£Z¶¼ŽYRöö9ˆmØCùV\ZÊÈ~VÏrò(\"î½ÊðÀäûÕb$€ «¤r1]4_ºäf%‰çÖ˜—Èê:šŽâEŽBœàÔIs‡/Ê02+{ˆ³$ªÉ€0A¦Ì¬ˆeI=ª]A\Z%MÊWp¨OP}=k\"yåfÃd/B3Ò’w¥ä®}[ž¢Ÿ«hMmgêÝÅ\'œ¡üµ8*­0¡hŒ¡rª@<Óf)s	˜Î¹\0c$úÔI;èÆ‰m÷¿f¶Â‰‚¤g’ùëÈí]~É`’;xfòâTù“¢±Î1üëŒÒ¯`µ¸o7v|œ\0{}Ž\r_ƒÅ¶ñ ûNùf\0­Óí\\•¢ïäiº¬Í}oh·‚öÒJÄ²pƒÜvÓh:”—WäKËÿ\0v«ÑAçéÍy­Œ³j¶&U½pÂmˆ€:cð¯DðÍœÍpÖ7Ry‘8¼¸!²:v®9#ToëW¯Q¥»bflà\0N1×ŒWwã›ãd-!¸$ív#æç¾:qšÙñ> t¥y–\\È›Ì„Î±Ô\Zòë‹ÉmµGmƒ8ùA9úÖÔaÎÛ3nÚŸeâ;™tø–Qs#ì“wDÿ\0ëœÖ¾•}spå§) ^	¤å^Eg{qöÒ†Iš9L…ºûW£XkmbRUùß)GD÷>µs¤¡±/c¢³½¹º¾BÃd@FÓóRêZ¾ŸgxÏ2‰X`€Ø {ÕkûÝ ¥°h&$dëÇzÉÖt+[	­noL“«ÿ\0®‘ŽKIŒþ\0ô¯Ky«ËC&bø§_\Z¥ÌVöÆ-¶cd9Ü{eq×Ú®êží!ÔEÃ3D‰ºÙ†ÁÔrò_ÚÙJ. ÝÐâAÕW·åÒ¯é>\'°¼Ž{;†òîe5ÅÓÄŒŽ~•Ë•HM8l\\6:}÷H±òmŸOÝ8,|Â»¸\'““Û¥PÖ|W§G¯ÜÛF\'•‰D™tý\ry·‰µæ{­‘6Çã‘£“r¸Î8®:âbÙ†Zç¬ªW¦âöf™Ð|N×“Vû\r¥¼ždVÛüÂ£Ç?ARxBK‹m‚VI‹»¯–0WÉ=OÒ¸}NàË3&Ò¹ °gÒºt¿ûA²[´Éä@«\"€8\n9àv\0u¬gIS¢©›=ŽCP‘¦Ô®ß{´¬KzóÖªÈØïS\\I™¤‘¾ó1?­TfÜsšï¦´B“åV6+*°ê¦¬‰6àòEV‡TÝÂç“ZeÚ	\n¥x9öëŠU$“1±„K*F„1qÆ?­V9P”Rr#ñ­m5áµL} ¨)º=AÚ¨1E[‚ùÄ¬\n|½@ÍD]À‚m†Ü€ÅºÒª“øÔ²6€0qÉ¨	é[E\r\08\'Þ‚Ì=;Sz}iùßƒœU4\0Œ6•ÛÎr\rYå\0T ãã½U‰†ðLÖî™4Q^Ã±~Gãœ0}y¬ª;]!ûf-ž \';}r)/u	®n&•ÀRìIÛÓ¦+½¼²Ñ5-6ÊöÚášô- (H@ääd×%qáû”Ó\'½kYÅ/–ògN:c¿ÔVª)ƒFq½÷ŒäRÆKü œuÛQŽOcKç§5Õm.+Z„š¶¢–È›Šüì?qynžÕo]ÓôØ,­nôë“\'šJKýäaéê:sSi¶èºK\\F¬¦i<‘q;âÂå†PAÇàk!mÈ”ï+Â’ÙÅsJü÷¸š,íÄ’îEõOŽœPÉ#•-lö­;]^òÊÆQÁAV‡i°­ÉÀ=9Eièz=¦©c/q	»¹ÜÖÑ£|ÂEä©Ï+œv«U,®ÂÈåÊ*ï·x+ÐÓ\0dk oKmÄÒÍ¬p¬Ë¸ãy8ù@õªñxrêm.\rI\r¬³ù!·Œ†÷qïMÕŠÜ–e¬¥T…ñ1~¥u?ðŒE&£iekz\ZY£-&ÿ\0”+x¼Y7ÚCZÆîÌT Ã+ÙéJž\"vB±–±	äm#½\"<ðœÅ#÷N+BÚÔ¸@òyqÊÁØ÷®‡þˆm ™¤•–¹ƒ&L‚‡ÔŒñíZº‘¶¥¤ÎRMNf*¯Ÿ”ùõ \\	9È9cT„MvØ]ƒh(;y÷Åg4r[’ÈÏ4ãµt\rÁ2s·kc¨¦•dÎ2Iî*+{³¼žGqSC3¾íçjm\'8äŸJN-®êÜœà÷µ©¤ßAi*›Ëdº·ç|Lv–ãŒ0äJÎêG4ÖaJK™XoCVÎk-òG\'œŠe&\06<äw8­‹íKíN’3;,›yg†ÿ\0ëW)u`ØÁÈ®Ž?ö+i’B…Za0™Î¬ÃœÔû5{’äXœÉ®˜o^Ù2âÙ‚€\0}¼uÅs×vëjÎ\"—vÖ+‘Wl¥cs,Ò ™rX¬’`3v8ïSËm\ZŒ¶ÞX¶¿7šwãŒä\ZˆþïvRÔÍ\Zn¥$am#Ä‘ùŒè»‚¯©ÇAU_îgŒžÕê\Z·†Rkdh[˜Ñ™SæÜGíõö®[ÄzÅ©O<V²[ZÊD‘‰1ü@qÓéWõˆ^ÏAr³–BÌp:ÓŠ4|óƒíM`QÛ\0½H­+‹ëI´˜bÌ/Žù‹ðËØZ9vÆjd9ÇQÈ4íÛŸ9ÉïL\'-Ç¤þ,ã­X‹¼q]y[f}pkO[¹·7©%¥çÚÄŒdòö2°*.µŠr:ž)àŽƒÖ­IÚÂjîçQsªX^i³–yZåà˜ Ã©üšÉ…¬ÌF	‘¾d”ÿ\0g¨ÛŽj[\r\ZkûYî~ÑKÏ‘Î‹ä\r£¿#õ¨#´{¦xÔ†uŒàœu¤ã$µÕÌç‘ ý)£¦qÍY’2\'M¼ÕYyi\'r¶­ÈÏ­!ÝÎéð\0<âœŠÇ\n2}MRªÀEtzŠeÑ´[û„ˆ×K22#º’‡éX&ÖD„JÀ\'‚\r29rnëEûžòâkœ<³<ƒ¾}±ýWSó	Æ*W›Ï#%@Ô°Ä‚A½Ï”[G\\zÑÌÂÃí¦òÜ¹h”)ù‡<ödj0\\º½×›,‚Mí4ŽXõÉàñTHTÜF=AïRÛÇ#¹ºfÛÙ>\\ã;xõªŒÙ<º›O”V›ÌÑM%Ñi$DBœ/ =ë–e+)÷sÇ5©g5£#$Ð<’8pª9Ž6à~uJh§²¸â)µ±†^3éU+ËÞ)i¡y•ÕÊ°èiæç“N‘Ã7\0öÕr¤ã®1YŒU,Tÿ\0w¸ œœ¶MX¶·i÷Êª]‰è=½j)¡Ù#\0I^¡±Œ\\QÔÛ8ïÍ5H“‘OòÙpHãÒ€ž¼ý)ˆ“1‘„\'¯zV‰ƒ• “ßÆXÕÇ—œc}koJÓdÔmexY~Ð™&Fb<µU\'ž;Ð0ÈZPz\Z6‚ÌÇ\'üi=FhÂJÊFNÕsûVo±ÇlH2J°áºç­fÇ‚Hç±íQ*q–è\r;J9Ã¹‡6	mäóëÍF—O±Þzöä\0zÕÇ€àƒš4•€»(Iår\0¨÷­O\rj–º}ÌÐ^´±Á:íg±ê	Åa†8ãzB¤ŠŠ””âàö\Z/kÚ¬úÅÒË;‡h”D…P((¼R1Y@×ƒSmÏ×	šºPP,v\Zaœs@ç\'4Æ\\‘è;SÇ­À:×Ð¿u{[¿½³\0“iîÊìØåæÖ¾yè?¥zWÁ­E­¼Gwf¶FèÜÛœ\0@Û·œœ×›SçÃ7ØªnÒ=‡XÓm|P‰•¡{væ]¼IÛêFs/¥iöqÜDé,.#0ÊGÀþ£š×Ô$¶Ôu>Ìî¾Cˆß’¤J8SÜÖ=µÅÅïˆ$µ¹–bHyH Ô~uóte)FÌê{\\Êñººg‡™käs”’Å†ãœ·Jó-Bšé%·ßå²†mÜÝúW°G©ZkpI§ýŠ/´ yŒyÁŒ~äoo<wk{Ý›#åOB+ØÁ={3	²´%ô*Ì6’p9®ïRð«hww-$l±$*êÿ\0ysž þUÆEgµ#ša ‹ÌÇËÁÏzë®¼E ·‡EÌ×1GŸ-3’Ùà®¬CŸ2p{3—¿i$• ¸µX¶Ê¸\0ª±Ï½kž–\"ŽGnÕÝßøvîv—P½ +¨Qåcå t õÇL×xU®X.\0w®¼=^e¡ˆ©g ¶Žá¸…›a~¸4YE·j“nÙƒÊÕpädéVl/$²¼KˆˆÞ8äg ûVò¿+±*Æî£Em,“y‘lY@ùG=ýk ²¾‚óN†Ål „FáÜóÊ8ÊN™­k;«6Oâi¡20˜`)00;žE,·0Vòùm;¥	\ZÛ)*#nzn+ÈOkSßÑZËCWÃZŽ‚t§·ònRø;ËlÉ	ÛŸø2=«SÄÓÃ¨ø{Mxäšâ4™¼Â¨6Œ†<äŽžõc@’=7Jv¤E$½p¿2žrÙükž»ÖíçÓn4mFû²e\rºä†ÈŽâ»©cé)û5±“¢Ú¹â†‚eÔ´x.n hÕÖ	È/\'s·¦0}kÖdº:M¾Ÿ=´0-³—TUùþn “ÉÇÜø‡Y½–Ê	<?y¨¶Ÿ\0.<ÇËFƒŽÜÛ5ç~)»šûXk‰<²Ø\0¼DÇœúžµÝxÊ7[®´fç€í.cñ<’*­š¡YÉ	¸”þ5hxÎ]*ÃUÑÝZD¿\0<‰1;:v#9àƒÿ\0Ö¬=.ûR²±}NØ	‚³¿˜¡‚ÓŠÃžy&eòŒtªSj$òÝ›:š|3ÜÞj6fê%B‘E¿hÞzì+­ðÜvZ¿‡uXuKõ†â%X/™$1$€;­y¶æP1Òµí®OÙæ“¤ÉxøÞr8>¼fˆK]BHë¿°äÕ`ßc\Z_]¬{.Ð’­»8V¿Sñu…É¾¶T¶·´š8•[ÈD…H§¥Aá¿\ZM£ë¶·:ªK5 ŒÆØÿ\0XŽª}Aæ°umVkýRWK™&ŽIX!¼Tœ€kg8Ø˜§sµ»ñbØiïg¨,\Z¥»[È¶wÆ!æ‡$}àz`ä~ælCÈÇ#“ž+¨Ò,\"¾¹ŠÎþ³0¸þí\\ÙõÎ*èßÙ²D±éòÚ˜KE3–Ü®áŽ?LÂ¦iÎ7*-\'c›#±¦§4ýÃ¿gžzW5Í[]KguÌRX˜:t æ½-^\r`›ËÈ%}BvY!’)¶ÌNFÑÔñÅy±\'¹áÍb\r\"s4èÌÑäÆäûþUµ*œ®Æu#us¹´¸Ž[K§º‘…ëA}F.I@îqŒ×oie¤^øþKG–¡³òƒ4Ì¬§¸LžGN½xÞ³öBâôOpnnÈ¨Ãddäû`VEž¡wl?˜YåÛ´ýOCJ¤—>„Æ.ÇÒ\Zô:/…dFEºŒJTÊ±Ë.FõÆ}:×¦Ga%®¥â=>s™ g“z¦\'ŸcÚ¸[MBÖÖæÖÛTÚdtžvï5sÃqú×]Äiš¤/Üß-³†ão8éã]’å±é˜z§‹çñ°/uEÜ±ac…ÛÜõ± @Þ ñŽŸykk9 WÁuPH,=®!UæVB«)Rï!a´ž¿‡§ÖºIgkâÝ\Zk×ž4ã‡;IéŒrAã\"¼©óJµÞÇBv‰ïºv‰›cybG‰\nc%†;€­bµ«é¬-7ÛÇs#Ê“DAR?ºCt?NÕÓØ_A¨Z¬öåŒd)RqÇz‹UÒàÔ¬$‚PFFC)ÁÖµ”šNå$™Êë–(ÞÖ!½	¦Fu<žGÍßŽ”iÖ-ãYÏy,ˆ#YcQ’\n{zuþuÊø›_Ô4.îL[¼@7ñ3\r£?tþ½†é\"¼–	ãýÂ&Ó’‘ÊŸJñÕjnú×¹·+LÄ·ÐÂ\r •¥ˆ„‘‘Lªÿ\0xN£½|÷¨Íky®_$1ˆâ”•EÈ?¡=kêK½>Ù4ë‰®ÉS27@ßP+çsCµ¼ñ”vº$ÞbÌw&xÇ$R¥4¤Ë­¡ÀME++8 ÓC\0Fk­ñö›k¦êé$›‘ûNW±úW#šôéÏž\nFVÔxá±ÚšãÓ”ä“éJàš°Ü¨Å\03š¸££b	ŒRžTÒ6{öë@8 bJÃåëH@\rìiØÈÅ1ƒë^éðª-Å¾¿ðýê•¾¶&E`ø$ºGÓ5áDH5£¡ê÷Z­í¬Ï#\0å{¡ê=Á•xsFët8»3èý\"ÆÞ7¹µÔmÌvŠªX¹ôÈ<‡5ØÚÙÛZÆÍ%“î~aÇB{­yö£}¥kº\Z­†¤LBH@*NR±ŒWOàíi®´ôŠI±!ÆÆ+Á¯u¯£]Me¾‡)ñ}`ºÒ£W´‰nÕ»¾AÏ\n{×ø\\ÄÇJ¸ÑøŒíÜW=¹Å{Ÿ‹¡’êÝb¹´Šu—tb<	ã;»\Zù®ä>‡â7Tómš)¸þòŒûW}Tƒƒ\'cÓô½fÚÆf’c °É/g(Ý…‡¿=*Ç‰>E¬øhßøy£•™VÔrS©!§±®NãÔ ººùc›2)Îå(x<‡Øó]]Ž«6&tÙíä° ïùŽ-Øä1ØŸÊ¹yýœïÙŸ?][Ém3G\"²:œzŠz]/Œ\"wÕ^éòDÜäú÷®d6µ{ô§Ï#6H¶8þt¤“ÂŠCÁ÷ª%ˆ­ ëíN$×‘L\r×Šb…Ï4!\0õ¦R‚G4¬=G8Ï¨óJÌH¦0ç4ÁÃwlL€ÁêµÏ%AÏzÙº“,A\\ý+:gØ3Ó«Žæíù£$cè*\n_Œ(æ¾B6qU¥¹ˆ‚¤|Þ¹ªRÐ–ËÝ €DÒN¿wîŸjç$\0³1nÕrâ@A`OÒ¨<À©RŠ$®88ž€aŸjŠTG\\ä/ÔÔNÁ±ŠlM“ÎÁzŽ½*Ê€;NÔ”]¹éJÌbTþKQ\rsòôëSÅ<ó·¦AÅ5J8Æ>`ja3\" \0G=êf´?²<€:m¼qSF™TiF\r÷Žx¡n¤UÂ`{úT~|†L³¯=q\\ÍNäY’ˆðdR\n°þtÝò;p)Qâ(7ÈÆCÉ1R*n‘%iùÀ^kH»”E `¤²àÅB’n*8_N¦®^,±.H\Z2z5EÃ,gäÜåBWËt^ÞLH¦2Ní¸\'>¾´$ˆäÿ\0xztÍWPînYG¯Z±\Z[ËÂ ÆMR÷t@\\†yV6\nNÒ9Å,rÆÓ*ÎÅ#\'æ`2EVŠádG\n§ê:Š±q×0ùÑÆ\ngqTä–àO$–itÐZ;4{°’8ÆGô«»PÈ„ÝD¯Q“l\nçHÎîqÓšÓÒîšÝò@Ýü9\\€\Z¹uZ‰—³ ‘Cè28¤‰ˆl;c=ÍlÁk¦Êë,³K,ypH=ë:õ„3ÇXÆ¨ûß_z!]IòõÌÛ—U\'œsŠÎy¸yÅKs0YC0$Î=*µµ«ÞoH—/¸£ijÆXŠVVÈ`ÀŽjáHÄ?0pHÏ¥fÛ$k¾c2Ê½:Õæµó~CÌ…‚žøíXÎI»!68ÛD\"×ÀäzU38.y*´ó9$ç½8¨ÁÊñÖµ§-ØÑlO¸ûU˜dZÎT w©#›gëa›1ÎT‘Ú®Er§\0â°r«‘H	È<Šl™°3žüT2Ý¸ÍUY÷\03Ò£sœóÖ˜¬$“žsÔÔI\'ÏœæªÎä1>•S0\'ÛiÁLwª¥˜½ê«\\üi>Ó‚1ÓÐ†!ÇåPì$ðMDÓn=H©c“Œš\0¬ù.Ojz’G¥I(\rÓ­B®sŒPªøç<Š™e\'€sš«ŽzÕˆ±ŒõÅ\0HdÂ€hŒ’MW²±úÒ@ä±57ÌŒU¿Æ¦¶›ù†Tö€ƒ×¯z`_¼í[ž·kKqË¼uQœã üë2.ŸJô/h³Í£»#C›<¶wéIÉ-Æ»”µ§¹`\'˜*FÀ—žNxÉ®^ÖúKYÚá£ í8%O~UÛø–múB‰­m^UÛ\Z´_t*œô\'9?Jâ.®\"»dû4P„P»cÜúÕÍB×‹2ŒÈ!“í¹ºg½hÀÑ\\DÂrÍ8#Ë˜z{Vy&âvu@¬O\n½©«#¯Ê:ƒ‘Yµ¡fõ¶#ÙÈìP‡RÁ|Ão|zVå¥Õ“y3!Tn_qV$½0àË)y\n\r…NNõvÙäÕ$¼;%—lpK¨¼¿\\V)Î-·°ìºd‚á`h‹³yjnlà{V½œopíca	’6€¹ù¹‘”gå8ëíP˜¤³Ò®b¹‚\'å<åo›±üF1YìÛÃÂÅÆð3•e ôøâ’Ð=Í»!<˜‰!i•“|†!–U‘V#Ö$HI…~Eb¿)ëøÕ]Fý´9m®tÝAVîdÙ*(ùããW½eAö«+«hØ—GbÊdœŽ¦’ªžâQlÛk¨®\\	%Ø6ü¹Î¢u ŒAéŽôÛé.dšÖ’,£,séíÖ²bÕ8Ï·µo\n—Z‘·oy\n<…\0Æq“Þ¤¼º¹ÓÜ¢Mp*­ÓpíŒUkmVáÁ\rþÎxæ¤¾Òoí#j”ªÈ»ã$ä5C÷¥fck³tìÌÌgÝ…Zét›[xìek™ü¥ØÌ\nHúãð®Fæ¯œ 9Íkè—²$—6·nÌD}wc‘zuŒt\Z+jcHÉ‡fèGðúÓw«¢²ð@À\n:Ÿzƒ[¸K­JI£bÈBàžçþµ^)¥,zà•¤.Òl–h\\ý¬¬rN]†0…½aQJ2¾bŽÞ_CRÍu3E\ZÊÅ•\0ô§Ë42l}ƒqà¦0½]€­‘ª°–púšÑÓá³Ky™î6])& FCŽ;õü«6[f†t‰†wÃñ[Þ´Ò¯§™/b’K„rS\rµJöüsüëDù)¹\rnS¿’9lY¬í–eRw9Ô×zðÝL\ZÒ7r£Áüzf»Ï]Æ÷ÐÛAÙLÍ´(A÷XŽã¯9¬íK@šÕoaž{%kIU„XÈÀŒtÇCï\\ÔêÞ*O©£C\nÏ\\»ûE½¼6‡u°ÆPœ¸ÏV¯&»­>Â{&ÞXn¥Ì¹y˜“ò‚yG?/_ð®H›OKù&ºK©\\Œ\0)VÏÇÒ»\rÒòÆGyRI-6|¤6A\rÓ Ÿz™ÇR•Î‚;KÝAs,·V|ÞcIÆG®N\nçî`X\ZI·±ÌboG9öúWMiâŠÅR8Ð¤Œ§ì\nûÖUÎ›$Ò+É½[¦`“ïï[PÑØRFE¥ËÅt»ŽÒ_pîA÷®ºÇS’U…î\'clÜuö¬Óƒ\\að„däÒÎÌ\n•+ÐŽõÐà› ôo[ÙÃ<’‚JŸÝˆÜÜÇ¥bx‹Ç0]˜cãFóä¡ÿ\0wÿ\0¯\\-ÅÔ€ä“ŽõŸsvÛòzô­á.U¡e›½EgfÈ\0dœœf²šTÛ†n~SÐÕYåÁ2 ç›utí#H¤.îH²ž¦‘iå16Ád>sŸ¼}‡j¯$+´’Ø±P]8?{š±9Ñ$gc+•Ç\0v9¬¹ZV4R‰•:I=Ð?y˜€?¥i^\\g–Õž\Z\"’2¿ßÉävíŠÆ–fd<JdŒÒ&æÉbz“É¬çµ}‚U;¤}ÌwS1žô¤dÒcÐ¶!»–´øL×D\r¿*³|ÜƒZ\rºHðnÂ/åY–“y7*äg½k¡]3S¹d[ÈŒW lÁÁîO¥sÖÑ‚)Ëz\"ŠL¦%+°r~µY÷1…L4y%›œÓ.¢’£ªÁÐüÁºƒRaUlß—ãBVB½Š×ZL®G\r@üfžêw=i|ŒšÚ: #\'&œŸ/ï3ÈãÃšA’p*ì;R‚T\0+{H’9XZEŽV\0£·EÆOæzVH]ÀÉÖ¬†!*‘7Dªþfsãæ#ÐÒ²«Öä3kSŠìO£o+±ä4kÂãŽÞÿ\0Î•õ›ûÍQÅâÆ…Ijçïä¹F:ð=ñV¡×¥b¸öÆÁc–>;¨_¯9®[Tu,Æ=ÛO=Çjä¤œ™zt*,`…VàŒ÷©\"Ã(XàÔpF	Ü3Ž¹­-6!*É!H]Û¾•Õ)Y	.RRî¬÷aûþ¨„ÆBp˜\rŒŒç§zs³1!—œpzw«örÇ§$ñ]Z4’K	žŠÄ›ðâ¡4þ\"[èf>ç‰ö´O¨©t×ò®ã•f0²œ‡A¦yo)QÍ€\0õ§Ik<,žbl\'æ8ÈÎ?¥SåJÈHèo »Õ´±}ö2gH¤ÛæÛ#ØíÍnøI4Û\rJ(5yZÊkS½ç;d.\0tã$ûŠÅÒ.d‡O¹dµ‚k‹×6fùÖA‘•¿6y­­CH¿¾Ô§KÉn&—O…ZAr]—_,¼9ü«ŽIÉ´ö4åMÿ\0ˆ¼í3Tt‰£rÄnhŽvN@#§=ÇlVuÆ ÷„Ëw,ÒLX.s:gÜRÜê\n³IÇ”žN=ª”²™7HvÇ ­£Er¢\ZÔÙºÔc¸²Š1bJ€¡‰$ƒøf«Áqqx%„ì\n¨q»°ü³T£, \"¸Ue*rjý¥Ç—vÎ°!e_˜ò1ÁÝ\r\n6M\"îe^,¶Ú…Ä˜¥G(ËýÒ;Tþ`3Ç_zè£‚Þæ+»‹¦Ž[É™²ç!óÏCRµHaIcdbÊ#è?\Z¸ÖI¨ÛQlÁC/§ Scy\0dbqèjtîQÉ¢hÐÄ­¼ù…ˆÛŽßZéæî\"¿›“žŒ*BIíP:²çŽ¼\Z^€ñE„Ë1Ê„¨aÒœøÕ]J’ppiá·dîùºCBÜ¿¦êRX_Er‘WzäôïW†¥—k”ódÞX3N~ï§^+Âã9\\ãuK\Z—¨oŸøsÜÖ„[¸ìÑÚmÃkh#Ó/\Z6fó7(ÙÈàvïíÒ¶4Mv-gP:v¤€’³nó¸÷è}Åyî›so§nºšmU€uRxRy<w¢)¼›öû=Á\n$;%gƒXÕ¡Ã—¯qÅ´îz>Ó`‡TÞ2˜÷ÉŒ\0òH8È¯5Øã…ìkb÷Ä÷×wÆy§Ì±’¢\0ÁÀí*”ò¤Ñ†dÛÔš¬<*GâÔNÌ¡ž¬G4 †N¼úR¨¾n1ž´ÐAlŠëD±Á2£×4…6‚r*CÁéÏjz²° ñžôÁúå´Ú=³ImÚm‘áØÃ•¾ë÷NzúÕß\r>™-¬—w“ÁêÈwîŒŒ)AÈ8šæQ­IX¸R£œ`ö?…ZG¥ÈÉæCs	9Iã€qøt«ö‰E|Yôëc{ot»P‰`ËLzêZåŒµµ{¥¼\Z<Z‚ŒE;í_~2Ö)8=©_[” b\rhY^ˆ ž‚)|ÑÎ2ËCÚ³ÇÝ\"¤Ž\'eÜ â”’’Ô“˜JªDá•WXË¹U©·F!ËæŽ:õúÔ*ÇvW‚)GMbÈ¶†(ÜÈØ˜•1×5	¢@à—+ÆCï[ºõ‰†ÒÏíK;™d7Š!(ãµa›YÝR^¡×vzð9«å`˜‘YÈÖæàò™Û×¿¥HÚ…á³kE…¼Œ	G€~µ·œFÒb€Ä€=M>{G¶²ŠëÎˆ¬Œ@Pÿ\02‘ŽHíJÌ.ˆ­î$µºYÊñœŒŽ‡éRêš­Þ©3=Ì¥òåðO?þ¡TÝä•ÚI–=O­4÷íV›ØMQt§$J \0°€¡,*·&0(Ám£¨<Òê6ZÓì€´I¤–2Š¤[w1ì~‡¥C}v÷2Å’à‰6õ¯iýœ–?ÚÉöy¢”~ä’G9”\\]iãEó.cóæ™ÀGÜAˆƒ’=Á¨º¾¢z#9lm”o&@’!ò™“«Ãó¬iÁYô­›ãy5¬/\"•…A>Ð2>•§me½¹åk’§Ï/ÐžØ£F1ÜMliÚÖ£§ÙMoipbŽ_õ›8,:`ŸJÍ‘B+ l¨<µHˆŒï\'ð5MŒnr÷É¦²ŒiwÇwZ]£&„j1žø§mÆ=ûPÀéÅIòL,F\0iØö¤ûÌqÎ*P6ãƒÍ\06ŽM.Ò:ñJ£*NNE)‰™Þô„06ÑŽ¹ªÁˆb*fB‡æ:Ô-Ë÷ªHh^ôÒqJ:R˜ª°Øg ÖÏ†5{\\‚êÞGŒœÆÅ[b±qOW)\"·j*AN/¨\\öMrMfÖ;Ù® Y\"q2yl\0,pã×Šæ®!Ôï#—XIfYUÊ¯ûG¨Ç¸5þ±öÛ{ux™ÉŒ.ÖéƒíV4íCì1XØ†¶¨.÷/…\rœƒú÷¯¹:kú^ûEÆ—koàÖÕ¯õM—[³\0‹`½HÆk‡Ðõ&µñ7F—P@Í²9çŒàÖ•Äúm®¬×3ÎuD‡ÍÀÞGP:`kž†Vó¤2)1œŒŽÕµ%tÂV4ªêâ_.HD0ÈÍyÀ\'“íÅWÐ>Õ6¡&¢Œ±¬l÷62ŒëUtûäŠG{ÝòFªÑª+íe$pGÒ›Üv–Óº³‚ŠÀd¹®‹JÎ$¦·:É§]@‚Æi­XDciKïíŸnq\\^³¤Ë¥ÞI	u˜Fv¼‘ò»½ïK6¡su7™90;‰ J›SÕÍí¬pªlXúÐç¾=jèS%±2’–æT(’JØ„Ï$Ó­à’{èà†6’G*\"ŽX“ÀôØ¤¸ld\nž+oªÃqg#FÉ\"º9ê¬9üë²MÙØ„Jðõä:4Ñ%õ¥Ý¨?qæ¶9,:‚qØ×¨øZ-æææê«GY›/¸óüÖ7†üQ¤ëÑk2Eì#s–#kŸï.=xâ¶nµ-îáìdÒ #Ê1ù×Ï9¥6ç~§KÛCCP±Á¸eU ³›%¸è¡ô¯ñEËé²ë•×=c$a¸5¥­^ax¯t•™~ÌpÐ´§Ê”c É÷í\\_‰üK¹rÊÐÚD3F[9ýâ=©ápîSæKÝb”´±˜5»¦˜É¼ÄvlaÚ{Žõ[RÔx\"†=ª Ê‹›žO©÷ª„;ŒòÛF8ô¦	,ˆ¯z	GD`õ®d@DlW#èÁ~€Ÿ\\TDmb;WGb\"@Ë¦·¸îóƒÆ=k]É2¬¦’=ÊˆŽ®@e`y®»Â\ZŽ™¡êW­Ù;eK\"„ªßÂ=º×)`n#¾D´ŒI3AÉôÁ«Mv‘\\[<%$r¢fuäc±ÏJ¸;2d®\Z×›m}5»,,ŽÛ€…Ã®	È\0ŠÌXöÎ#‘JpCq·ë]†…­éqhRh—ZRI$òŒ^mËÆIñÆ\rtþ ðï†à:Fén\Zý«ÉQæŒØóÇ¡íÒµäæÕÍmKKÕgÓ$·†Y’8ÚEfxØ€ê8É#××Úº‹ýv×Åþ}–ÞîÔSwÌÓ°$ü½úk/Uðå•ªi÷ö·PÙM/•÷G8ÆIG¯Q]‡Ãíu}wûSQV·Û¸Ú…O/y †À†OçZ+Åk°·wG…2à€j2x5ÕxëÃ’xgÅW¶,§ËóÂÇøœƒ\\¹®Y®VlF]”ú\ZC(À&¤aº«ºšØ×ÒÓû_V´µó\0yXF®p{žÕÙø·Á:—ƒí\\GmÄ»&7ÉRŸ@GëXôÝ\'Y×…–«+[+FZ9Õ±µÁ}8ÍwÞ1×nuÝ$èÿ\0ÚBââÍ¼È—+pªxÝïŽIéšè§I5ÌÌå+;>\'ž6FÞÙàõÏ½,·M3*îÎTsM‘¹-Œƒ’*ü)´ÑÍÖr¦N\08®G.†¶ED¹u“q$½z×~±ýšËC¿µÕ±’9$e@\ZÕò2O¨äûW±M{~Rwv$àŸRxí]\r”péúdëylÒ;†L“§§¡Á Ö”ÖìÎgÔ>m‹ãpQ¾v Ùç úƒøÖÄÓ¤1³3œf¼óá–³¦ë+ ÓînGÙ¢E6óqÆ[ßúW Om¤eÏ™sYTNÖ[•\rŽâMÎ•Oò5ÍÄ@˜b/±\rÇÇ­°5¦–²i7,ÆáÜnÞ‡’áŠé]~ÏlÅ˜£9+Y&ÓÌAóÞâ`¯9Ùœå±^l<–û1©c:+‹½GHžÖ[R-¦\\-’ÁãZðÄl5¹!µVmØåÑºü«èKK‰÷5”Q›[‡-º&Nÿ\0xC^ñÒ};Ä7‘Ýæ9ÏÊr*0®§5¤´	¤™ÈGæ¬VÖ’yòHU‰¬–FŠ2•`pAÅzÇÃ8ìat¸òb}HÉˆ¼Ùv àä·§1é\\Ä-.=+Å·‘Å’4\0û°OQžü×§F§¼áb^Ç.:ŠqçJˆG5*œŠêdÇÎ\Z‰ô§­5†å\'Ò’ÄÉ?¹ê)¸Á¥ã<ñš`!Z³øP8>Ô0ÚÙ\0Ž;Ò.žsŽµpx¦€ï>k7’ÏcˆšP§ï‡îÆOsÛë^µà4‚âêyd·”20l²î°ãé^ákë‹kÙ!·V‘îhFwAÁÇìzŽG’-lŒ¸àÊ72¿|O­x¸º|µom\rÐô]~êlŠÃtmÜ”a‚~€õéÚ¼â†‰\r–§¡kpÓGp2w.aÔWÐ×z}–©¥Kr±€Ó\'˜Cc¡æ¼KÅ^–öÀí29‰	‚:ýh¢ù\'ÏÑ†heiºå¥þ‚š|qÇU+#åÄŸßû¦ºmK¸°ÔÒÚîÜ:‘¸™~Xå#€ô ZòÍ9Òùå„Æ­yŒ«( sÎ\núOJ}^ðÀšY š%Ý\"ü¸n@ voQQ‹ÃÍ&á°)ëfy¿Ä&Ê/·Ùì#EyLêƒ;­ûÏBô¯‘v±Å}aéâ÷pfæÚ6I¯É4}c§¥|çãK+[O\\8¼¸	ÜŠp\rk–×zÓa5cžS)HÊú}h] goŽá‡ë#&Æ„ pEG‚\r;wéLÉ\'5@<\nÈÍ(lŠPE$Ê±‘Hy©8·Šb=žGÚyüªÃnÎ:\Z¹>1×µgº–p£ŸA\\¶7ftöíœ€N}*	-ÙF@$õ½\Z” Lã­Kuye•G57¶„4r3êk2Wc!ÇOJè®áÁ?\'·J§ˆv$ãQ&Æ$Ý\0ëP3‚¨­›»$[±5‡4%ƒVµ†³sœæ”HÃø»T\\çUˆ¢óHª„ès€xÏz•dhäÃŠ´–jª¤c‘Ò¢uË{TèÀµ‹j±àç\rþ4û¸àóa àrqU#88§œ«nSPàÍ„Ázó]N…go,)ªI{on0Ðœ©aÓ9éÞ¹™¦/b2sŸ™~êØµ–Þ4ûAÚS<ãµKŽ‚,jZ“Þ]$˜P±±)ïÅW¿º{ù\'»¥<…A…c8­mR}:ãJ³k+a6NAsâ<q\\ÔÒmM½‰æ³H6!·ØeáIB1òõfž™R=ÐÅƒ#ç•àqUÌèAQQósþqWŽ£4í·•G`×Nãw©§-„ÇµšÃ…P6íÈ õ§EcæDÎî»»ïSZrB ‹bç\'Qî\"|œ©p(þ!ëX>yDMh£±‰c–a‡#•9ãQa>t‘È¤ÂÀìò=+)%šC´ïpgh­ÛHŒHKûÆ±ÂÔ8¸Çq1­=Í•È6¹@Ãã\'ñõ¬Ö»ó%1¾rI\'¥iÞÇuik½U‰ÈùIôÍs³¸‘™‰Á\'$Ö¸wÍ¨ÓL’uFpÝG¥O¹â·âŽHâ ©~Ì}3T œ½Ë1šÒE\r¯Ì@\0ŒÖÕ¶`ÊI–Þçå<õëPÊÄ‘×ÐZðZÃ%®L¬&=GG×<U_%a¸U?¼‰¹ÊÕBqo@¹–ªÒHß\'áéOH˜0j[ÖÒm^S<7­Kcs˜‰À(ÊTœr¾„VÊMŒ†Rœvª®ÇvGJþ`JœJ¬ÀŠ¤î4IÇv>•qd¿&¨*ã¿jš7ÂsÐÕydq“Jgj¯˜8ëR0ãŽ†€#r\\ûS|¼`â¬ùy<Š¯+ì€+ç¹¨Õñ‚Gzß-žÔÐKgž0\'-ÈÇzzJb«`Ù\'ŠwW±@ààõ¥àôÔQó÷¹&§\07€!mÙéÆjÔ<(¦co^y¤RÄ¶)1J¨ `÷¦&\0÷§?+ÈäT<óŠZË”z–\"WüõªHøü*ì¼ƒž¾´è4DžîöÞÖYdn™í^ºÉ¦]iòªËwaef¯:ð]”Æy®!š(¤Š2PHØÆ¥×ÒâÂðùÑµ¸×¿Ú¥sÔ•åÊ‹û$ž\"O\"u„ÎÅ1¹ßÇW6­å¾çkt>Þ´íCUKë·›Ê&\0HÐð¸ïùÓl®af_´æHÓ–ÎÑôïZ/v$%¨M2GÌ262HÁªyù8\'ƒÖ¥Õ%?e•?!ÈFhçæO,ž§ðüjÓ@Z’pÄ‹½K;p+BÏUHôù4¹¡<Ã!•>ñãéŠÏKi&¶k˜#ÃfGÆ@©¥ƒì@€žiš UˆéëŠ—g ÑÐYßA§Ù*Äò\\I)UºIb8*HÂƒëøÕ\'O‘o­çE‡—n\ZS‘N±Ôî\'Ž;?-ÈµVœ–]Üã°ô‹5ô®^Kƒ²K,ˆ9É¯ò®W	]ØAö#1{¶¸3ƒ&C\rÜýìõí]¾™e4’>›©€V0’qó6FrsZ,Ö\rxÂà˜âHq”‹={7øÓôÍAa°ºDÆ3ïÁ##ýÞõ.›l§6–‚x·UÓ¯v­¤³)·o*1à:‚äžrHéY:ŽÉOîØþõ^x[tˆØ9Ájª\"%ð¼çµuR¦£\"Òý¦×Êb­Éû›x93Ú´XšâÎ+wÝå îs“ë\\©VqÊ‘×¥ii‰-ÝÂ@Œ>cÄô«²Z°zšggxÉ=ê…í³I–‘–uÉ8 VÌºMÔ´º\\GùÚ0F=zýk\ZmATôo¥>e% íb«°h ¸Û¹âßFw+çùw¨\"§5bKË{ÅDxŒ(U$SÔöÈÿ\0=iðlxcüsšpnÖbb¦çÈqÁ9àt©…Œ¾IUš p*D1¸ÔÝKhÔ•ŽNIàŠÐA\n\n’ÈAV·uú\Zm½ýå•üÐYˆíLò*8aœðry©c’d¸ÿ\0GÚŒ£<Œÿ\0:Ù³Ðí]ÓTÔ®Œ1g!ŽsŽ•…kr5!§¨šÏ†d·¾¶ó.Òu’ûƒŒ‘í“œûU«8m4û™§P×4-pÒåºy<ŒçÚ©I=œ’Éqò¬(¸ˆHrÀ_óÍné×R^é×v·É0Mñ³F$éšòß?*FñµÌ;ÂZeÐ—R½r«òÉ\'ÈÌ;êx­K»¦[*+xeµŒ	 è˜ |ÝýjÛé«¥Û^¼ßc´ÞYìÁÞ¥+Üôü«›»ÔìíZK»ggŒyKpá\n/1¹ä’)ûG\'a»ºÂ,úušì·`såÍ\0ôÿ\0õÓ&Žf†Ý¤yÛïgÓÚ¹{\rBY/0%-±ÉVÈ¹®½%q”·”8;zâ»éFËR7å¹ÁÀ\'Ò³\'ž‡¸Ån\\˜UóB™ê¡¬=VU•X¢•Ú=sšèB±Íj“…maIrÍ’GJ»©L±çsýk>ÇÌ¾”Çj@\'-ÓsØQ)(«²Lù®ƒq¿<æªÈÄÆpù#œWH&ðäzîÐK&¢ò‚Îˆ†OOQÀçÞªèúA¾’(3&>ZîÆ[Àî:ý+â›«0Dl~nqOf&(½1¥Ä…e/™œ`c<Æ™æîM£©­âî®® –va\Z*¥ŽÑžSQ‘€]„³dç®jÕ¼‹žYŽJ_›š¬è¨¡”Ã’sü«)7{1v’Ii¤äŽ*xš/œH6ü¸õªÃ“ZE²‰ \\Êp;×S%Õö¾MµË¼¹vŠL‡‡é\\´\'9Ï¥[k’4ÿ\0 HËóghÏ¿ç­cR<Ì[W7—\r,Ó\rîIfnjg–D]ŠèU	*ê:þ=j’”î\0})	Ú§óG),$!Ø8\'¨¨äç¸éŠx?.Xä“ÅFK6N;Ö‘»e’qIÔçÒ¦X‹)õ*,pEj3gÃº\\ú½ÌëÅÁ	–I$8\0tþ¸­¶ÐCób“Í‰°ªøò¤ÿ\0kŠÂ°gŠc´pÃ±­=[$»_íy$„¸‚±Ù®J±w¸-\r-jçUÔl´Ù®1_&)6ãœú“Yºæuck`nqûøÉ	À`î=9ëÞ·µ\ro>‡J”ÝBo>Ûs\0Ï_^ëÖu&ÔZÜJ|Ù!O,HG,£îþBŠ‰5b%{™jªÂƒÒ·¼3£®¯©›v™ k?›·*¤óXAFæC´qž™¯AðLò\'†uQge4÷‘ÉÎøä	±@aÏr¿0È­%-Û¶¬ÂM;ÍIåº$* • üÅ°3í×ô«ú­Ý¼eož(§t4ÆC.;°éÛó®·ÄÞm=­îžýXÝšcùb“«gÜ3Ò«ë^§Ç¨=É’)1\0mÚßÄ §á\\õ\"©É)=A>mQç‘™z¢©Ç Ïäj³Jé+3.ðAá½ëÑ,¼\r	Ñ¯uµ	¬¼…>ZùE„¼výk‚•>Ñ>ØÔ#`(N¥ŽqùÒ…XÍ´žÅ5aÚ}õÄªI \n]»‚=¥>·ªndº2›Y·Ç©ç•$RÚÊÎž[¶œt àæ£x¼»Ï,ê­É«D£Ô›µ±9U\n³0#ƒ½TgÖ–êátkW2ÆTÄcœr1ZwšÕ½µåÓgäˆfm®êÜp_ð5Æ8‹‡è0ëÖ’•öî5&DŽD‘7d| ñƒ‘Ïó©mnËN£%9<¯lñý*‚R»\0ÜG9ïPÆà­kdõË‰2Båž=ÍØ†ÁÆy¤7JÐˆ×*œ¹Î*ƒ+Å•Ý{Š~Ó·ý(pC`„<œv­y-®_ÃÐ»-„ŽÈJò[€p{ö¬|m#Šô5ý=>ÿ\0f2@oêDÏÊdQ€ÀŽàÊ´|­jÄïÐàJ†@SL6û£f•ëN6=«jôÓ¢,+5Û’¾Pll ðO¨Æ?Z¸+õÌÛn@ëŒUµX&Ž=¨|åá‡¨­=2âÔhšÄ?¼p¯À€rqœc¦)Óéˆá´ÙyÀ:08É\n}FqŠ·ìMÌ9¤‘NÍÅTs´úÔi)Þ	?‡µ%ÊÈ³·›¿Ì\'-¼r¿½F™WÎ9<ˆ¢ôó¤è¬#ÆAÀíÚ«$£ñ5f+o5A\rÀþ•\ZÄÅ‚%˜à\n…dQb_4ã«tÔÕ¤>Gß8*Ãõª³Ã-¤í¨ÑÈ­‚¤r\r\";¾UÎïBi7}‚Å‘)6²À\"êáÛï\0úÕ|Ý*°A\"Œ08þªh Ÿ§Ð‰Aã§£´ÿ\0he‚Ü\\1²…7eq’qíŒÖ9lRCu<æA#Æà¹[­Zµõ%£FûO¸µ“3Gå‰*3œÿ\0õê}Þ	/#Köd´fÃ¸]ÛG~*‹ßÍr¥¦s+îÎç$ž˜­Ý\"Þû^ž,íZcà¤C õ\'ÓëI«¿t6Ü›Ä:$¾eWvº´ž&dN@ˆ¶Bç¶qÎ=ë<ôí_Së>ŠïÀ—vzŒhv»„ˆ¿6å\\õèkå—&¯‘¥q¦5NjHË7ˆ_jDØdÉÜŽk¢“NÐí †xus9–3º/(†‰‡cÏ?ýz™ID£aS“Êæ‚p¼æ¤˜\'ð3Áõ¢Ê	%¼†4WgvB.X“è;škQv66÷š¶ÑAºýÊÌÍÌˆ?…Gr95cO‰´´½‚ê)\"ŠòÓ‡ó/\0àg×¡®óÀÞ\rÖô·¹ÕRÐ=ÊþînSa\nróùb²µï	êÒ”¸ºó%¤hÓ-åíL~‚›Œ©ê-%¡çSþâ4ki\\y‘‘(Æ;ô÷*ˆN½t:´±ÂòhöøšÚ7ÝÞXXŽpzãÚ³®ØAò™FÞ½óRå`±ž ’)\n†èjÊ°:žr	”³C½Àˆ\0¤p}}i)j14Ø\"¹¿KyÝ£ÜHqÎ8‰®¦=÷NŽ\r_O¼FÄ²E2³€QÔt>Ä\rqBW†ádˆu9A®‚ÊËPÕm’k†Ùd%ØÍžA œ‘ÔŒÍkubZw+‹áqÐ¬Q‚‡~Y±Žz{ÔPBåËÉº«îÚœ¨Íw^ðm·‰&žÚ!l»òBœüª½Y[±\'gÛ¥Ïƒ|Mn5ËYÍ¼2©fpSŽ;\ZÇ™6“ê]´¹‹ºîöiÊÆâ>rË‚‰Øÿ\0*ÈºÜ©bTp§kÓ|gªéú”qØ_\"i<Å–8¶°ŒŽÓ±ÍyŒ­*«DA+Ûp¢ÑR²%jŠ€ßã[2ÝDl1¬Qœƒòƒôõ5ŽT‡Á8©í°ò,YfÉÀ\\÷íU$šÇÈŒb;	Àb*2vm½kN]:öå‚E;`|2dðHê§œHÚFrÙô¥	\'°Ï9 ¨lzâ†$c@æ´@ÅEÚÛ½\rYÈ“¢ $;Òn9ãŒõ¢×.ã÷1ßœTêxàcÓ5Z6\0ZœH¡\0=çRÄ2S¸F*‘áÏéWJ›‰6Æ8¨\'ˆÇŠ¨±Ö—é§\'‘NíïV`Ž£‚1Ò—ƒŽ½(8Í1‰àÕ´¿Ó\\\\·˜ñ ùIä(ô©/ôäÖµ€öë!Uå=\0îk•ðýÓÛ¬\rÂÁ*ºíbØ\'>•èêzmîžÁõ‡‚õ”FÜàýÜ^¹¯	B«’êoucI´\Z;]7M{Q¨’£¹#)2çæý;W7âïý_œipÈ,äl®@=+ªÓØ\\5<žTã&TË•íŠ¥âmNK}j(mî¼ÛTtf“h\\uV÷ÅpÓœã=Ë²±ÂMao¤kŽìáy¾<à‘Ó¡¼Ñï®m¿´#‡1ã%ƒƒÛŽÕÔkQA¨Ýyí<`”iT*d¶\0úÕ=K{k.Ÿ3í‚/ŸjrÒ7dã­wªòåçêˆP»±ÌÛøkSºWšgHÛê8ÜÖuÌ&ÒcÑ°‘OÍžå^ƒ¤ÛÞBÏ\nÃ=¶çinccò¬c©Ûê+X[[­¯–4K‘q&ðÇ–V9RµkK)NÏaJ	+œzí.àJƒÈû”$_(åp\rD~ñÍ\'&½KŽ‘¬é©áÿ\0%íŠêJLÃ/Æ»m+_ð£Ã-Ù†HÕ0\\€@äñëÅy+ÝB±¡r£¯¹÷¤‚yíœI…Ny§â+‚®NúØÒ3±èþ\"×tícJÛc\"¹\rÆsÓ‚¿ÁA§\\^_hc>aÏéÒ®èÚÔ¶¿lct¸B’# úzÖºéë«\\3ýÉwŸ™›WAõ±ð°}‡ñ³•·‚:+¥u˜\0W\rŒzýjµô)ä,‚E*\n²÷ÍtÚ†—^ žÉ%C,[Š¶0ŽÇë\\íÀ|‘˜6È¼Çî‘]TjóÙ’Ñžˆ¬Ã<ó]÷‡íÖ!-ö¡v±FíhË†óœúýk’´Ó.¤‰fKwdbFü|¼uæ´ôKˆo!¹žhr6ã8ÉÏ½]Z¶‹åzŠ1»ÔÛñäj\ZuÍ¦‘&ž¢5Ý—¦<à•-ïŒt}I óôy1äùW	?y60A\'¹ã¯½bø£\\¸ñC#-#òƒÖ0~_Æ¨ÙÝÚ¦‡wo<æbRÊüúb•\nõ¥¸Jš¾†ÕÝ®£<×¶-ÞLHè¼mlãðæ»¯ø\\øŽ)¢vxvbS3¨c¿£p=\nõ¯/:~gO²èà½ÆNk¦ðwˆ¯lu&´óãH.¢ò¥óX…Æ8 öaÚºã[™™8XìíþjË$6šòG¦Ãwæ!F%É#RxÁã­z‡®ôôÓV;h£Ž8\\Ä«Í´Ž ŸZ¡d¶BÖÎúi§ræ;8é×Ò¨¾‰iaâ¶6þu¾›,aäŽÝÎÓ(?xÓÒ·mI8È„ú£˜øé£=Þ“c¬ÇlU­Ý¢™»í8ÛødÎ¼‡Ìs_axÆÃû[ÁZ¥¬}dµb™ÀÈëô¯åFAàƒÈ©¿5$ûhmÔŒô¨Üw©qÇZ”X×ðÞµo£K{çYù¦âÙ¡IÊ¼D÷àjÕ]‘ _*%Ú7Ýäk(Œ}kBÁÒØIæÛ,é2ld®{z¥ËÊ…Ê¯q±ù77ÜpxÍi]yÑÉm§ÝÚyŒ’¸ž¼u«–^¹Xìõ¯,âÎˆ\"’O™Xò2å^—¯èóÙx&+ÝjÎÖi¢¸V`dƒ’qÛÓÔ:N×dóv<á­¯|+­ÜÞÙ])òÙàYPä6WœÇ Ô@ý°2\\Ïöh™¼ÈÏ–J6{Û¥zNŸugâ_ÞiPèé¬‚V,ÀáN\0ucÉ9ŠçgðÎ¡5Åï™e „Ü-´mD**ñ½”zñÍtºw§x¥®§mðZU´K«U–)!r]G*ÇôÏë^Ç^¢øNXtc©h’Ý‹«\'?i„1^xÀöÀ8ú×³hww×6Šo%ÆøŽUÆ:Q\\µ\Z²fM\ZÌ¡Ô©`Õ‹x£k…‡t±©*ÝO¿ãZ¬_ßEi£Ì®À4£`°~¢¢ÊZ2Ÿs…Ô|y%¾©vR)!\ZÇ\Z¾ÐQ÷¯5ñ…ÐºŽÚÎþo:áKÍ4…0ÀžƒwçQjéu§/ßÄwbFÃüûÔ÷÷6Wú$×wm»˜cþYŽ€Ã¯½pbiÆ ´95©Çés˜/\"…Ì~Gš÷¦îŸ—ÕµãM\Zét[]^[xJÛD±É’W¶W<W,ûÒ}È\0õ5¥¨jæ÷N‹D,\\/]¤öÒšºšh´îrÁpM9OUõ¡Ô£ŒŽGZáë·¥ÀY…ä)&àgÒ‘	Øx÷ DyÃ\Z“;–£až{Ó”óÅ1¡Ä ÐNî´Ï¥æ\n§&‘Æh#Ú”þ´}ÃÚÜÇ4lUÐä8\"½á·‡Vºkë‰]í3ûï˜RFAü}kÅz]w†¼_ªè–rE§Þµ¾ÿ\0½ŒŠãÇQJv†ã‹î}O¤Ùˆíî,ä$ áX7%OsïÅqúÞ¸Ú4ÆÇdˆ‹+\">Ì±Èýs\\·€|M9†òÿ\0R\\Ë+…WY¶ýq´t\'=zWMâ˜cÔô·Ë{wÊà¬%¹R\0ŽÆ¼ª~ä}œÖÅhö<*úA¦ø¨Î±”	6í’¨ ô#½z™ðâéö6úæv¶×Dt‘áâÚpDq÷Fyö®CÇ$ßèv7ïeo±–…Ú‚Ø=[¾rMAá¯êQhEeÏ-·ÊÒ‰YãOóé:Ó¼mÙÖ§¦èþ+Ò/t×¶ÖLháÏïãG)Éåt>Æ¸xm‰žX\\¤ H³ (½Žâ³aÖå†e0ˆí›—·•~Q¸òÀw®ŽâH\"²µþÄ¿ýÚ«+ÂÒ“œûŽ;WžâéTæ‡ü£+èÏvÚÛ@Æ)žjö·a=†£$W„läc¡¡Õž£Š÷a.h¦ˆ°ÆúÐ:{Ó¥6¬H\0ãž¤ÔÃœŠpéšC¸â~SúÓ	¥\'šN„Ð=Žî5qUBùk¿\'¯vpYúcÔÕiáFRc|•8Á88®fÙ¬ž¤ìÇ *B‘éWÞøHÆGQYÒ@VPWI=MGæm8ëG*bCîq ÝŒ\Z¥§?Ê­=ÊƒP1WäO¥4‡c6õ‹{zÉž6<¯Jßš ;š­ö]Üt´Ö‚f*@¤ÐšÐÓí 2+LŒã®=ªcd¡³È5vÛOó\'U^=Í7%¹%]JÄYÝ‰üÈˆÝ‘Ëô¬ðŒNH®ÚëBót‰çIëvË˜£­rw*bl2‘éš˜M42 \\ñô¡¸E5Ø¯Òš¢IjŒûV‚e‹X÷H¤÷>µ£5£*FÑåØ‚Äuâ©+„È0Çz¹±yIÿ\0Þrkš£w\'Ì¦Á‘·mçÓµWò¾ÒìªëQ“æ6áWKMŒL#cÐŠ­>˜è<éîûÐªG¨®Euö$µ·0+	€\"mÍNx#ð¨cñÈKGµƒ+ÏáPÜ$…\'h<WCá=Þú	¯/ÔýŠD‘ƒa“qÆ@ïŽµ5§\Zpæ`ÚêW¶ž-Zîåç}ª¸q¸÷Uˆä‚»cÖŠ/žÃ–=pØë]N£àëxæXlí¾Ðöì<ÅðÓÆyÜ®8ª×>½6‘j–1(¶”“\Z‰QÎæÏNÕ{h·\r‚rDCÊMZ{«›Sj²0v¶œ6I+éŠ×ðö•{¨jWnÁnÙ2’\0PÜóí\\Æ§ª4qµÛ´ê2qõ­+?^ÛyÖÂá¬“d…6ž2=ˆ\'ƒXJGmÈµõÇue§GË‰XJÿ\0ºß»n;ã¦\rqS\\É{p\n\'²ª®1]î½§HºdZœ.²5Ãy*ô¹}6Ù-¦{…“I8Ïlb·¢ý”}å¨hŽ†	}ŸÃÂöêb\03&ã½}ñÛŠç„¦ÉÙÐƒáIçŠÚ¸ŸT¾XgrÏ\n-Ÿ8m§·=EsMg1½’¤=JÆ“”›sbÕ—ÓRD…‚/ï`~Ç=EfÛ;Cm\"“TìW^B6æA‰=7wÇµPyÛƒòŽq^…(¦®‹H´Ò–‹oRzˆœÏ>Õ2LÓÃ`àÖÖ²Ü—Ë6:Òy†Gã ¦îùÆÜÖ¦ŸÉ?2@FvŽ€ÓŠ{KŽ;æ¤GÀö5\09^E*ñÞ¬e£&Ö©¹Ožß<H\0ã¥/	ƒ)ê¬­¼šbH}iî£ï~tXE\\íb	æ¥UåW¿Zf3&ãš²ˆëLbKò(÷¨<À^´ùß‚µH¿ÏŽÔ!\ZI Šž7¹5˜¯“Ö§…Ã0\ZJ»Ç½9†#¨ã`Á52ç Ô\'‘“À?A,E\\IH85®OáE„Cyëš¿\ZíÇ*¤lÉëVá9eÏå@Ç‡¯m4Ëxæš?´´‡\rÈeªzU=nöãT’fJÑž(\\’ûg¥S·Ô¤Žçœ<Ãæíì=j5›É®­‹D‰äy™W\'1Œg§zçœ}ë¢‘JÊÖâg‘#p™L`íÏÍŒõ«š]…˜¼†%’)§‹nÉ~PåŽ8>ž¹¬Ëi®-ŒrÁ6Æzà÷ÖŸw®ÞÏÂGI¡Q‹ Êí9}:Ò—;v[\rZÚŒÖ´‰´E­dxI$$¡¶Œ÷>´ØQ.ï-“sLø•Ž9§Ó›È“,ÅùÉ>µÖhºb__Á,PÊ\"“ç/%1ÔqÈÈÇçU9rÆìI\\¤.&7Z…›¢E;\"/úµ\0ç ýEt×~šÛÂVº„àv«£X7#ÿ\0Õ]„°N©{ÆÛ9¶AÆ;\'©ÇçZöZM¤÷g¸¹2Ø\rom¸Ûè~ü×3“•œKåHóO:Åyu¨I	‘V2RqÐç©q\\³XµõÙ‘Ù|³8È†cœz\nömÊÂÊøÀ¡í¾fc\"“ŒðzzW#z}mee±Ý¸Ý1Ëm tü©Bªsl9]Ž6ò]FäÚy‘¯Ëòxç§½lh¶Ûåµ‚+xþÖ¬Y™_q qÐñß?…T¾’Å®!šÚ#M®?¼<üÞÔí6âÞMBßp%ìÛ#ív»w®†ÛŽ„émMèÅmbº¸¿AÇ1©q\0u<œ×±•¸Øp9Vþ¿­K¬]bP#†3µ!Sò®8ã×Žõˆû[\0ƒ\0Ö”””u3BÜêcÌ–ZÂ^o’qÄIbÊÞiQÚ8·mÀÈëÍWeì„ÛŽà?†›ihRFöâ›*ØÙOÏn¬`Ø u }k\'S¶šhŸRŠÌ¥œ„cæÎ	­ûWÃp\\Å2¬Œ¤”låˆÎH\'ð­HâKÏ[Çkzà£“•ÜNp¾‡8õ¬/ûÑ.×8¨‚­pŒ‚¶ìÈwÈíHšmÛY¬K†\\Ê:gùâ¯èúS™“íl°@\\Äf~µu)\"	£„ÜÎD0$xæ¬¾Ÿ,Ò¥¿—µ”•$t\'8§[é·v:´ðîˆù,HfèßAÞºÝ\"RÊ[”–6có,l9$úTN¯*$æµ_M§Ú‹ˆ¤óS6x\"±`W’A\'ÝÚ-Õæ«rmÚ%Ià©äzŠç®¢–Ààƒ**‘*Ã$~œ\ZTæÚ´Š²P#Ëå•ŒgxóÁÒ·tóVwlòÂ\"NOÏ“Ïç\\ªºE#´½ÙG”Àýß­u:^¡ª_â8‘cNG\0rÿ\0]sUŒ¹´.SsþûË{D[_g~$TÜÄÁÉìqÞ¸ÝJKË=h$w0KˆUäòW·,	îk¶—VÔZ9´»)\")@[x+ß\'ü:W5!º–æK{«Hd`1½¡ìr+\ZT½ë–fYév¶Ñ)HäIwA?.=»ÖØ;™G|qMÓì%óWî6[ïIÛeÊ¤‹´I95èGMCw òÁæÊêzŒJæ6}ÄðvóÍoêP·–V‘·F¤„A’}>‚¼ßTwŽRX×¡ïW{èK)êí?ÚÞ%C”öFj­¦£¨éðÏ­áŠ7Èd!ò0{zV÷…^êÇ_´Ô—ì1}«ÐÜ0s–ÇõíKãTµ¶Ead±_ÞJ÷,ê\n…FWÓ­sT«5M’Îinã´I-áH•‚JÁ¾gç9?‡¯¦M,·rÃco:ª3¬d©XÇç<šÊÓ¢œùQ,Vòyçb—á¹#¡<c¯½u\rs6˜%‹Ml/í]Öv3eC€ÉÁÆ\rcS•;\r#œ¾‚Ý£\rdÌœ–·aó©O¿ë-Ú3#,[¶gåÜ0\ZÒñ(ÔüôäŒI$±6rXgÞ°•Žîü×UÜnÀ°ÃosÜÔrÆñ$Èr3ÜS‚1È¨äfo¼sŽOJ¶MˆI¦œô§Ó­E‹ne+Œ–æ¤Ž6‘ö’©U“s©àWOw{\Z-–roŠ2Ò¶À7¹bN{”åf6ZELpªµ\0F\0éÖ¤3ø\n¬rzR\0	\0g¦jmv\"5RP¯\"¥XF	^	ëNXX2àc5§˜ t­b¬¤-Â #ïg“POÌ8ç}jäÁ£éÇãRiñý¯Q¶ˆãÇ­\rÙ\\qWeÍ4VHÚ(Z_ïJ›‚1ÓÖºë‡÷71àœKsïbGŒÝ1»ý9õ¥Õ,.\'Ò–ú{žU*9‰8Ü?ˆ`úŠ‡Â¾/´ÑìVÖKt’2K´fFÊòŽœÿ\0ZóÝi=lTÒ»E©´3N´]OÄhÔmgV·‚8°²C\'A“œ#†¼ãR±’Á’;ˆ\'tõ#×ô­¡©½Ö¨³K¶D¹ŸÍkUÉE!¸ü‡Ò³5\0×ÚÜá”‰^F>@=\0=l¯ÍdC»\"·½‚+9bxÖI%ùNñÂÿ\0´ï^›ðé¬4ÿ\0	®¥{p°[½û§˜©óDÁFÒOt=ÇN•äwGæXJ\"49BSø¹<Ÿzë4?\\êq]ÅlK0PNî˜ïž*¥%N<×°5Ì¬z%ïÄ˜\'ž+Å‹2¬‚‹rŸêJ‘‡SèrkZñtqq¸’o0l\0#wäw®Vç}–˜ÂH¤Šä¾ÙpI¨ägß5›‹±9T\'9ÀûÜçŸå\\Î>Ñ_°ãGÕ<U©?†íkÀévÂDH¢ªòAPO\'¯n8®bîI G,RˆKN®$bØ8ã\nV¹ö¿»QM#´Q©XÕŽBŒçÓšÕ†Ëí-za’æâs(!±_»õëÏµL(¸k}ÁêQÔ¯`¸º‚3—‚È üÌ‚A>½©m¤†ÛUUº·Ú†E|99{~F¡»µ»„/üKš-¸V;N	wèxª³!W‰3’kª0ÒÄ³­ñ¥a~öóD—%RDLìOÉŒ7\\\ZÌ×|<t™Zh¤Fµ•ÛËÁè\0\r·žàU]:üå`¸dƒ0Ç<?Zèæ¼:¡{fÜ5ˆ	_y\0ž:€}…fäéèÅœ½ÖŸzlw1]Fd\'\r!”ûÖq]¼÷÷­m>mIî<‡RcÌ&G\0•`g©¨.ž&˜á6¶	9>µ¼/mÆP•~îšT}Àq´Zy‹Ìà`Z€ÆÀpF5©H—{3Ž™\'4Ö¶Aþ´Åà`žjPPÇŒ|ùý*¶óÉ«*ˆØsƒ‚={U5“i<U…G¨ÚAç•/qô7´M\ZñÕo-¦ˆJÊ$#hS€sùÖ­þ³ou•%”_gœÉPƒ·<³ßú×3Ó[Z]TÇ,›ÃûA­EÒ®ïôô¾·<C,c‰†õ@vïÛþzVÔeQ¶¢D’Ýgˆìü;â­:ãÄqE%½Ü©&-ä~pÊürxå§O–¾O”±\"3Ù±×vPiÖ×wz2èû®å<ævdH¥,p¹íÛÛšé…¯†Ê6—4C_>Í4Sà ˜ÿ\0ËTltÏzÖµOgi“wdyº%Þ™2Â¢9‘NãÏÊyzt®úçC²M\'J×,”\\ÆˆÉ$RÆ0Ñ®>sŽá›€©<3 ¶Ÿk|u‡\"ÒêìøØ 8 ’XúcÇÏ+O»¿Ò/æÑmä†îÊa±Ï·Nì+„ôú×•‰r›R†‹ó7ƒ¶Œ_Ùhó¥­Í¼ê·³§$i	†<ôÀÍq;8 ­v:¶§a&¢‘ØÙ‹b‘ta÷_¨Ïl÷÷®b{f,è…c<zÖ¸k¥f)$ŠƒiàsƒM\0ÄâEÀ8úâ¤@e¸Ýiâ0ñŸ^k­nEÈ\\ dÚI“Æ\r#.ÜÄñI°ô JV€½ºâ¨AÊ\0Cqé]g5è´\rr;Ù(¹‡8uôãßÊíù?\n’dÇ>¢ˆ»;’õV>¹Ö/ï/<;pú|q>ûf$–\'Lã¸þuò ‡n0k·Ò>\"xƒB°X¬î#{p¬»&MÜôÅK)ffaó1É­“£{êBõ©Try¦Æ2¬{c¥.2\0‘PË\'Jü#¡«ºzù\Z“‹…WóS‚¤7¯jÔðÖ—¤ÝZ\\Ïª´ÈíeTã~{gò«W6šAÔYôøJÄ#T>ì0êy®o¬GÚrj>SÜ|e©Mwswwu+G¯\Z#?˜\nœeryàà×Yªii{h>TBK\0pH Ž­Gáùb¸ÐlåVPeA#ãæ<ŸÖµNzWdŸBR>L×,Âk—0Ä£dnî¹;r£·Ö²æq”n²y€œßËõ¯Sø“c A¬C¾#^Ü3™±Ú7‡ê\ryµ¥œ³X\\~íIŒÞÇ8 äÒ©CEbTÌí>Çí÷q[D™y_jnlsé]¾©à4mí×\ZÂ!|RnBNWëÍsz>™4Ò½æÜGnŒp2¸#;ãŽ+N/^ê\ZºkJû^V8\'åùºçô¬ã.kêŽ\"âÝ­ÌRqósƒÔcÖºkkÙ!¶x“Èœ)`œôç5CTÒ.†5V+$Ò3\"œ€pp¿¥¥®­?†›LµœJ—{X@@\'žôä+uîL¥c¸ðŸŠaÒô›¦ûI,‘È%˜·Ëp\0 úVìéÐ£“T´ûBHÍÎ~b@Ã\0}9þuÃxvÂò+[kyg•œÃ5«}Â:å¾¼~UÐOmª_\\Íël•T¶Œdm#å#€:W—…EÓ±µ7±ÆÝØ5´îmäØÜîû!9=3ÜŒÕ9Wzœ&x’A_¾Úph8ð+»Ö ŽçFŸíÐ>Å\'fÞ‘ÉÔ>{y®BÊH,í\ZæéÊ_£+Eå2˜ûÞ‡\"°£UÉ;nhâ‘ÄLÊòœ\nÑðÜÍâ$šXâŒHžOº\0çŸÊ©Ý¼oaåØçý“íPÀõ<òqšôìåõ;ëé­uûë¦ŠòÚ†U0¬{‘\\“‚¤žàþ5C[ðŒºe£\\Æ>@ªY	ù€#¨õ°ÿ\0³¤’IÍÌŠª˜¸õú\Z×Ó5›´XìÍ5¯ú™Us2g üs\\.œéYÁèVïSšòÉÁö52é÷AyL76áŽkÓîôÃN–öÊÆxämh.Æ\n®2XìkžžûIÔ4yRìÍm¨E xK)Û$xÃú÷­cŒç~âÆÌ¬­÷ÇãLÁÏ¡«3È³O•]ª8\0Sìût®ÔôÔ‘¨˜Á=)îC‚ª3ïQ‚Íòö©G%zSÅ›ca‹“ÓåëïMº—u¤‘p˜7 gÆžª’GƒÁAÛŠðQÔõÇ\\Ô­À xôåRP8¨ÇïMÁëÚƒÒ—ô!^åÝ$[½ú%Óùp° ·§¡¯SÐít}WÂV0%¹Ô\\ÏËƒž{+È£Ì\\ãæº]2æ;k½ËsåÊsÚ¸q´}¢ßbá+3Ò|5g{lßQž)ã¸ÝåÝFÄ¼N¾£ÓŽµ©Gý£¬¸I„“‡!ÖEå”c\'ß\"°<?ãì.]gD–g%FL{\Zé5ËÀ×Vzª9IÙ·m^9R3^D©N—Sh´Ñ“âI¡Ó-·F,jR4Lü©’77¾kžÓ.îôR;õÌE0¸ê}ë·Õõ{{‹0aò$¹gËÉž\0ö®:ãP²H·áÚø>ì’v¯k\\<¥(¸´T’[:¿Šµ+èžVÖ§Œ‚ê€HÇ$ò\rqzÊH—*’\\	s¸tÁæ£¹Ôç”2³+ƒ‘ÊôíÅf±-ó1\'µz8l*§ªÐÂs¸×P²9\0õ¤c1AçŠCÇZî354©4íêš’IåîrzPc±O<Ç4¥ƒf%+ÃÐú\Z¥•\0ŒrA®ËÃš^ym\rÄÓÊ×^pS.O^ c‘Œ×yû?yÜÒ*úœf!o*¸q>àQùqÜÒ»M#_´ÑôDpK;°Ý‚A\\þÙæ»û\rîâY„*º…ºbw‡	\\ç8ëžyµc%Ž§sápìU¦;cÛÇ\nÆ7	+g\rQ­o}so,Ãæ¸uÎp+/PX£–5uß÷Ù»žøªöB˜Ì€˜ÕN	£mö[ËæÞì–É¹€<œWo³äd^æåÆ»k\r„\Z}¬H#D(Î¬pÙ\0ô¨õË[K4k{ÀñP2ysßìÖ$Ogk¦xò%C³oT#¡úi±ÞGsn°ÜáBd£œt5‚£gx—Í¥˜É%m” ©ÉúzSçÔ¢»`¾RÆ®¼…Új”),ûd‘cC0àŸzÖÒ¬-o&¸Žá¶?˜:5Ñ>X«¾„+½zÂ‘I;I†Ž2¬ÄŽ3Àã½_ðÄvcS7wÆxUŽèÀ;}k3RðüšVµö!p’	á#Ž	À;sW¯bÕü	y-½Ä1‡º·dI7.Óü@ëY&¦›ƒÜS§ñ/‹î¯uO²ÊÖH›|Á1·Üwâáïiú-ÅÞ¡ª_ÝOx³U‰IS±àóƒ^`nÚg<¤sØv§ˆmÙ‘…ÑÃXåOõ®Ø7«3qGÑZÅ?ê\Zl_k¼xäaµãî?SŠùëÄ‚Ôx†øÚIæ[™˜£íÆA9é[^m&Úâéõ[Vœÿ\0v‡€Ç9=ªoÚY´6Z¥¥œvKp¦~eìÃòÁ­á%(4…k=N°3šo^(ëÏ4Üþu•‹\ZãŽ:ŠšÖI¡a<,ÊÑ0!‡cØÔ[¸éSÚ3™LHåVQµ±Ü};Ô°H’]Nìê?ly7O¿Ì,À[9éÓ­XÔ¼Q¯jð¢êóÜ[£ü»úŽŸ•nhŸµ{Ãú–³m\"yV/µ£a†`N¨«ÿ\0G¾³¶w	+ZPÏ´…ÞF@ ÷Á«\\ü·èO»s©ð_nü3ƒödº†cµ#‘A ½Yø«ko­éÚŒ3˜Ú&K‹y\0SÔÈ?xb¼“Ãö—\ZœñÚ´ËP‚é$Œn9àšë|aáøoô»mJÏS¶ºWæ¶…O˜Wh%ÉîxæŠ~×¢&J7ÔôoüFÓï&ž;K¯6rÒå|™O<óY¾ñV¥k¨K5Äs[Ú;2ÜDñç÷ã¯û¹üëÉ<=yœæî+[–,Åä\0ÿ\0xžkzMaâFÕ±ÈÒNC¼°aÒ¼šÑªç$Ž˜4–§Ò\Zv¥ý¸†Mã\'#9Áô®â¥&)\'£ÈÂ±”pG\\¯¥rzŸÄ‡ÒüDÒÚZ\\I-%^ýF+ñ—Œ‡ˆ¯šöV1ùÉÇ=;R ës¤ö”Zº6µ­B×ÄZÚùéNà4²^§ùT¾)ÒàÒôô•õKK„t(ã\r´†ük€ÒH¾× WP¨Ï’¥ð1ÔòknóWÒžææ XÙ#%$ûÄQéô®ÚôKI=Œ£.]˜g¶-*ÜïTÉëÛ­dË0qœÔšÜ7ŽÖñ¢\'å@rçU	àþuœikrî‰.‘HWLàŽsU°<Ó™‰Ê¢Î8®„´“qŠD\0âš¯Ï<ÓÔà‘@Æ:ðqLN53rj\"¸9À\\g4bÓ<}(ŠCÈ¥Sê(\rHAŽôÀGàS r®9Æ{Ò`ž)„`ûÒ{XBðÅÎ«g4–±\\ˆ™¶º#ãlŸŸ~x¯P±™d£Õ-âiSl›¦á‰ÿ\0e…x~•$‚Þ2ÎÒ£ëùW¡è—w÷ž µ¶x$ù%òÆHÉï^.›R-2ê÷ÚÒÜÆmmÓåC\Z`yÉõ5ÃxvA³¿—&é˜FÈbp:×Ð÷^\ZšeÔr¨–ÈC¹\"Ú7nÙõà(Ò®¼=®í\n¿)YS6;â¯Sž›V%«=MÝoIÕ-®Ö@þñÉUuãµE?„o­ôhuo9Ñycøq‘^“§éø£Ã–P]\"w–¤9ùÏT>„zúV¶—¢G£i—w¤G+pBJCã‘X<K‹×¡§*Üð-r)®m!¸iÌÊ£fYpÀvÍs¤{×»|@ð®—mb¤)ñ60ÿ\0|ŽŒG­x\\ñ4NÈà‚5ëá*Æ¤=Óµ‡\0ƒL#¿j½ÏÔ€LàPåH@ð8ü¨þ¢“½*œzB94ìÓJWæ8µfHÅåÝïSÞ]$‘I.œ\00qÏÒ³â”±=\rs&irÌ„ñ’yè*	„8ïS< €F	¤-òùÓS=-ÝÜäñR‹csÒ¯ W^\r9£Þ\0ÁÍPÊRD¸\'<ÕtL±ùjä°¤ÍTÚëž(@Å1í98ã¥èFÄ2ŒôÁ¨‰9ª»¶çÎi4š°¹‰m\Z/-üâÀ¬¢CÀî1Þ«êÖŠ–¶²Çq¼H3°ŒìjXá3\0\0;±Æ^M{»t”8t\0àá>†°v‹Nö&Ç5ºI÷›éOâ;[÷«³éía²TR+[^ú f{ÂÅ†½9Qv%©ä‡j‚s·×RáÙNIQüX¥{èI±k-ì‚)X©ù=Ï×µY’É\"¶Pñ\r®¹G˜œÆ±´ p³O(Ž5?1+šëü5¡Þx¡žÆ8.F…­çvÚ ƒÊ·±ÏÖ¸q”ZkbÛ+økKÐõ{¸ôËÝ)„ÒH@ºŠä8éŠë›Â²ÃáWCÓL4gÎMÉµä\0çpn‡Ž=«˜·Ñµ8|P°é°´v©¶ygb9ÎpZÕÔd×¼?áë›«KènÒ‚ÒÈŸ3F[¨>Çò¯*»r¬¢§ÛGÜ¨Åõ8ëkR–òz%[Æ!2Æüz‘ùWW¢É«¢ßÜÎèßgýÜ6ÒÝ”#“Ž‡éÞŸ«ë¶\ZÏ‚#¹µÓ’[0E42.Y¼„sÛ¿­q–v’Â¬òäcßÒ»©¹Ô¤â—%™*]ˆîmbòÌò!Q,›‚¯LO¥G#³Ä¥#o%NrCVXç³ ùÔã–àaP›Ãöìa—?>H#©ú×Ty¬;²ñ¼´Ø•¤&•ÆO^ôiööJÿ\0éËp±õo\0Üç¸=j+Ûcf M\"Ë ä„?(Ï¯½V{Ë˜íaÛ4†ÜFÞ©T÷×ºÉ~FÔqMx º—Ë‚3€vì~½që]%·†¯5F¿¸Ôu(­#TýÒ˜Á2(Î}8ä×öÆºÕ”ï< )i¸#ŸjÝñ½Óô«8¤Õm®\"ž´FÙh†pFzó\\’£+ûº\\ÎÎçrï<ÒÀª1=i‹ºð{â¦…œ×(EY’(·Û‡Ë÷G8¯R3jÉ\Z7mŠŠ.M4üÎO8éÅa~@yÏãKžƒµuB:jU†ˆñÇëDŸ3r\0Å<¶\0ý)›€Š»\0ƒƒAu<múÓöëH94‘0OJsO¥FN0O<R°\nç5`É˜°ÔU@@¿\ZTc»?;?˜½b6UNN­SÛ–ðh‘°úÑ`rË‚ÀóT	=qS¸ÝZiO–‹j1­Ûà¸ÈÆ*ª­_µÚ#äüÔ˜KE\\´viè»H!¾¢¡Ü:fÃT G¡÷¨_!ñÔw§Äã¸©\Z,|ÄóLÆ½öÕë`iKNÌ©ÛhÉ¨`Fˆã]ÎÄ\0=M\\šÆâÝ¼§‰£l%½(³blt‘ÆUÂNNÓ€¤`‘Zsé¶zE­Ù0ù7\\(fŒg¨=>µŽK4ä¹ÜÀàœõ«—/%ÅªnU:9c’Ç¥/vÞñ.ýR8b¸(î‘#Äxq¿æöúúÕi-sh,d-Âc¨«¶ö©æ@`I“’ÄdgÓû»;¹\ZY·¢0ÜH/ þµaíì‹³±‚!#†\'9é^“ðÞÒ;{k­JL¯–å–ÚŽ¹Ï5çv±Oyt–ð#K4€\0É&»x<9w£ZùW’\"Ý<„4LÍµƒŽ2x\"²ÅIrrßr ¬õ=VòÝ/´Ùá·Ô^RêXñ½Ðg y¾‡ªM¤ë3\0]Ä‘˜¢ÊÛ¸É?w¿\"º½>Xå¶º¶²EEÊ,dá‡ƒ‚r9î+:ù^òÂv³°TY#òÔãs)ô¾qÅrE¨²œlîvKæ“<Ó£¬WeFÕb1Øž9í^}â¨Ô!±¶Ô!¼fMÉ±€Ør¤þqY:‡‰5e³ŠÖÚîáT+¦ÕaéÞ¹Q<«<Œ²aŸ °<œõ­éáîù…íCRêF°x‘îViDa%j®s·?‘¬YNd,£íR©Î23Š5Ž½«¶1±›djØ^ZD`3€Ç“OÝ‚\\Št®$HK—ÂçñúU=Æ¤†ÖÞÂ6ñ:.ìä‚ÿ\0O¥z†|/c?„\ZY`¶–îá¤Œž9êGžk€ðŽ›q«‰u2ˆ&6ÁY	ã{µëövñ¥óÄ7ÅâÍnècé^>&³U=š_2“<«Æ^¸ÐtË;ƒpÓÚÍpLÈå‹©\n;Ž3U­´¹#Ñ§ÔVe–Ö3˜R>Ws{vÅuma[xDqOqp’7»aUoN+€¶}Lims°iËyýì}ï¥m‡›©MjQnÎT‘&ÕÒYQH“\07­Z£g1Ÿ\';°xf­BÖ“YÙ“$h…—<îÉéùÕ[}\ZãP“ÌGP=	æ»£îK¹ÒiWPÜ\\À\Zácb\028=qÎO®k¾‹Mòí`ºÌL \\Î0Çß¿Ài6‰£	Šdh3ƒÓ‘]mõÍÞ‘<±Å,rG9·vCdvô\"°©¬´kjS½„,òÜ@×EØD¤óîQXvÌ×7ÑI7œFNó*·Ì=ë{Ei\'º†VÁÇ¥E«^8C\n9,0J¨=l=ËQ©Y$RJ<gqƒžœõ¨¡2+–Rù\'yíü«vŠR‘0ŒË3œäûTZ¸v@Wh\'îÖ©_pCÖöØ] ¶s­¼x$Œ;=I­«}q9µŠ8Ã\0Ž]vÖL6’V·M¾SÌHî­KklªË¸tãŠ^É7rËrHQKRÝxïU¶¬°‰\"\r¸ç*ÇùSîîÖ7Þê]qÎ\r`]ßI«4e·(Â‘ÔUÙôkQÉiw\"E„$ŽFBóÁ¯\"¸À¶·ÒÛ$‰0Œ–]¼ƒ‘œçéQ_x’Ax oR0Î óŒtéÞ.&Ô&TgÄœ¾½sŽiFéÜOSÍp ;e ‚;Ò#I0û>Ã,’²BIaÐ{VÆ±e,ws(#‰[ä/ãYˆžVDj²>Ã×·¸÷¡ÅZä3R/IÍƒÈ-Ûû$~çtAZeÏÝ8üqY·^\'yµ-Bñ-5îíáþ}¹9àž•ðáÌ„1ÎÒ¹¾õ›sk,a%ØB·CëXÆ6îî®–hãXâH™IÞTŸ›ÓoëP\nØ#ŸjŒ¾xÀæ†9%—¹é[ÚÁbÛ¸0ëŽ”®-ÚÄ¸gûNó¹qòíÇ\\úæ©‚sÆN:Ó™†Ñ‚yÒ°ö GjpMÝ«D2Æ˜ë¥m#îØ²)m£$ö­Í~âÁ.™4¡\'’I;ää···zÃ…ZAÛš™\\Í.ONÃÒ±œ9§Ì&5CÈ£çÒ§KWÂœ÷­k1ÁS†ÇÕ„‹ËbO8­cÖ-ë‚0}1R¤^R6îsÒ´¢‰]†R¡¹h#ò5vFì\'Ùc“lÕxQ¥’3íaÆGSÅ>}ÛDl~Lä\nu¬l²e2§ª-e©KrþâKýò)y\Zß¾‡wË î?šÎÖ$[ÍZ[„`šMâ59Ú d{VÅ–4â9æ†AhÒli#Ž}…bßY½¥Óª¬€£»”ƒ×ƒ\\ö7»¹-Ý‘¼ÄÊÛLQ—ùO§Ò ¿É»•\"ºûJ J‡®\rK5Ü³Ye™›Ë9Héž¼Öyb>R8#®iÁ;Üw°F0Ü×©­èïQt¨a‰B2ÇqÎæçŸnJÂ…K7\'cš½±Ä‡Ë, Ž>´êÅ1\\ÕÔõ6¼µ…e@$\\sßà:¢Ñ2J²0(².A#ç5I®ŽíÜÑ%ÛÈ ;30Àž€t¬ãO•YÙ¡hmžm“o‚ÀŽyô­ÍU¼ûTØ´àZ¹¸\r\nÁÀÆï§JãüÇ!±ÇcWl5)¬ïæ:`ã4T¥tg¬_k¶·z]Æë˜Òì\'1áäcÛ»ÏQÞ¼æúg¿žG*Uy\\·?¯z–ÎöÂòúgÔLÆìÛ\r»ó¥Ôµ¦o.Ø¨ýÒn;1’1ü¹¬©ÅÅØO¹„³KÉÚÃ9Ž‡cQÔ.o®eiî$-) n…¾ŸV’ãœÒ„b¬Ò‡ñ®–¢ÝØjkÃÙô;k¡snØ•Àˆæ/CóãÒ³®eI¥f%†OÖŸow6œÊV<ÄŠTúgñ¨.\Z-òIùK’1€jzê¥‚ŒñƒÁÎ÷`/Rù˜^EBùlm# sš´»2%¤ÏlÔ…0¡‡SïDc\rÎ*Ä’#Z£ ‹*Fz“Þ©±ä–<WSá›­ÏíGPŸìòˆØÀ3\0Ûùþ•Ë—óIéÚ¶,a·Ö×p¡–hÙŒë!ùH<.?ZÊ¯Ã¨âõK–†á	%ºÛû§-ÂõÎG~1[z§ý‚þK›©l¯s*M³w÷Áô­ËO\nÙ]iž\"Òõ@ò›\0P<¹?&?ô®W\\±Õ´‹˜£Õ ’!(*qÊŸJªX‹MF;‘8ègi\Z‘Ó/w³LÖ>`2Îß0ŽƒÛœWG¨x–ÃU‘ÁlL ªHù²ÝzŠë­<¤>“pÐý®îÈ<û)\Z§‰}c­r\Z¯€Ú×FÓn-&_\\‰$šp#U]ÜzñžzW]|¤ÝìDj­Ž¯Iñµ‡Ã«›`FÂþ6û4Ñ6ç~øê­ÐçÒ¸ýGLº¸Õ4ø®¤†ÞkÅI!‘˜Á$Ç <W*Lè$.ªy`OíÅLoDD‘ËÆ?sUƒj*:$hº³¢¹±[ùþÇs¶=@!hçŒŒ<:t¬M7V–ÊâXd%R„0ÝŒäqïH×Bä6£q)†,H*O¥gÛ—™Ç–	”°Æ:ƒÛ¢ÒÔmÜÑ”Äâ”dówlhÂãèOcUï@7ãŒ¢?!Go¥h[–ÓH®“É¹qÞ\0ß{†Ü|\r]M`Úi¶öÓÛFòÛ·ú<ØœüÞ¿áZ.è“Ÿ\02×EíßjÕôˆÒ;!Ë7/Ÿj‚ÞX—™ðF8Áõ­Pˆ¢BÙt«Qª!Á¥IU€ûÃ\"¢Y„rå•[=Jb,´’ÚDÄ¦bPŠ1YóV–+UýjÐŠv{V†äK7“1PåO}~•šr;fÝ©µt3µ±M-ôežñ„°°_*\"89Á÷ª‰a¯¨	@Ò˜ÄJ~qÆr{b°lãÞ\0–\'\n¾µÑÛêwËaye2‰£’<:2|ÃÐð9®	Óp“iîUîFðo‹~ÂšU¥ô…•e$|ø*cw½vÓSMN@ö3G5¦gÇñzÐú\Zòm54­gÀ\Z,:œ)j›Èæl‘Œõœ\ZæÛW¸ð–³ö3S¸J#$ÆOÞ!¸_ÃÒ»©ÔŒ—-îÌœZ;¿ÿ\0d6¡÷UâSØø8db¹öÜÒ¼rÚ;„¿I“%Æí¢LŒ“œsßVžµ®ë6Œ.&™.f$yr¸ÏË’pGB3ƒùUïêš\\Ð%¶»y:ÉnD–íyÖ3úàû×Læ¥¶±š‹Z]ê0j·P[-³EåZµ°ŠÝw;¸\\GN9ªIn4]!ä™ÇöÎpÜ¾YÎsõâºÝÂ×ž Ô¯îtç‚Õn˜Ë±L…ç±«º‡…ô\næÚÿ\0_w#.³ÛFâAãôÇÍøÔBœyn·)\'©ÈÍ=ÿ\0Ã+Ë6»±´·´dÛ–7Ü1mÝ{0Çjç<=â»X~Å|°§?.â<CƒVg†ÎóTD‰\Z=4òà6v’çž2á[_	4\'WÖ¯ôû×+;¨û;d€Np~Õ»éf4®™ÔxÜÞ¹ÔVÝ~Ém\"´Ðî?1Á‡¿ø×qw§iRêIªBï0° À*|šÃ›@Tº»ºòÅ³ÈB?”ÛVWàËž=x®’úK!$/$r«À‘Ä²mÂ?pñæ¼ÇÕé¦mFÔà|tÏceÒV9â>\\qŽ\01*F@éú×˜]i wGˆ÷Àá.ƒë_MjæÐ”K‹Xå¿–2j1^sŒö¯,ñ¢%¾—xUZÖí¦H®¾lb<ª£¸õúW6³§%«Iõ<mþtlrg¥EÎ’#+`©}jíÒG<©„¾b‚HÆz¨¬ñŒà×¿š2:§žé^•aœ>e `¶yæ»;M:×JÐ’þØÄÓ¬‘Ën3–m­ódzf¼Ý.[†V<õÍnXêËöwŠYHÁ5äWz2kÝ4Œ—SÐßQÔ¼Uwkq{\Z‹Q T@0ƒÁè=ªýÆ‡m|×6rižh·]Š>N¹9í×5ƒ£x—HXRQ$ö×\0gÈ`d†Çlñ[–þ\'šÖO>[–òæb¢B€ù€õö¯¬g	Z\nÆÑŒ\\O5ñ&…‡uA$­»;’UÃ)ÿ\0\nÅÉÎO½ÛPþÅº²[»È –æ)•„¨€¾‡=«Ê<CmÛeº†Dy[åÀ9ô+ÖÁâÜÒŒ÷0œ-ª9ÏâÇ\0úúÒoùJ€A©dÇqÈéQqº½#\"HÎö\0zâ¥XÁV~j®Ü61šC!$Œœ{ÐpOÖ“çw­\'ðÕŠãOcKŽ2\r·­g@ƒ#ŠÜ°à¢Gy$Tc$ŸjÄÛŠé¼1iqu4M#É&@x#ëXb\ZŒ.R!bÖwJg€¬7!O«3Ú=ÃÜApßf‘ˆ7å¢b3´Ö—Å°ÚÃ©&ë¤šitá1·¡÷®LË‡Q`Bk–U ¤W5åÔÓÌK‰¡HÕ@Bƒ¡÷Ågê·ðÝ\\Èð\rŠÇ;TqUV	%˜qóäš®ëó/N+jt!q96FN{~TÁzpÔÉéÍ)Î\0Éã¥tE:Qœõ§2Œô¦‘Œb˜FØx§m©Ohªö¤ÅŽË8\'ñ¬µ\\°\rÅ[1>ceaÔdVu\"š³)3]¼U©H­·ÙW‚„ðO~¥SÕõÔîV(BÊ¡p§9\0c\'Þ›u¨-Õ¤QxÐÇœ2ðXžæ¨`2Z±§F)ÞÖeJW5³AËä\nòãQÆNp¤ƒŽpiŒ!bTâ“~Žs[Û¹-íÉ`Ø\\…Å6HÒ5cg#çç§µUÞF=*XCHøœTÚÃ$g\r)¦`j}:ãìú…»HŒè’+<|À”Õ ‘LlC€Fà)‹w¶ê9U¶H,yüj\ZæMc¼×|MmâOi7:Mµµ“l‘r FÜŸ½íÚ±¼WÑkw‘É½»+íñH]~Sé\\åÝÌ’]	$›(\0þ²È.%idÄl8ìMsÓÃ{9&ž‰\rÊèÚ‹O[Ÿ±$öñÙý¢A\0v?›~¢´µ/Ûør\'‹P‰ÙÔ’&R\Z9W¶=:W%u¨ÜÜÅRÈYcåA=é.uKë¨R9î^Uv(cœJÙBm­t%³aï¢c2/Ïíq–QØf§¾1ÞÍön–Þ‡÷o 8Ü9ÁÃžk–IÙ¯F×z¤°¶|éAX‘;ŸAï[Á(;’õFvæ›Œv©\'VŽwFR¬¬AR1ƒQòHô5E #Ÿj#‘â‘dF*êr¤v¥#zhäÐ3×>j:ÕÅ¶­¤zqŽKu2ý¦F_5²Fxþ.zÖwˆ#Õ«u¥ÞZùIpÍ>a™8WVì?•kü·³Õ,u­>[’ê%Y¡Ÿv6ä¦Eoè6\ryãÓµÙÂ	¢2Ck+)èxçŒñÞ·¥¤Z¹„—¼yFµá›ÝSû$×ñ¼žBÍ”KÏðð«ÚÌZ ‚;•´ýÈ±÷ð1\0Ý½ÉŠî¼Qe§YËjmÛû>öä^”cg$ç~î1Þ›.®n4¨ ðÔiwqskZ¼1dÞŒœšéö¦„s7¹äÚl5Ä¶ÉpÉ\Zï‘Q±œw#¸ëDò´¾JÍ½I7#¨>Ÿá^¹¦höz®§‹	!±F·oô;”â5ÃnþöîÇŽj_x6‚\\ChêÖá­g¶Mvä¸aœsíÞ¹\'…|ö¹¢ªš<Lê—Ûão´¿šƒ‡ÞrÖ³åbí÷Hç;½jÜÖžTÇs\'$7éPÞLòLû—g?wÅs¸¸³TÑ]&xÛƒ‘ß4I.öÜ@Â£ õÎhOÞ4î=Þ3ÒŒçžqÞ”ì\r |ãô¤Ëd\niÛ·‚)J‚£¨ ¡‚¤\0«šq;O¯½!?(ÀÅ7 9æ„K€ëÃHŽÂ™»:RîÇÖÐäær}éKG4„‚â Îiä¾”Œ¤”ƒ¶i\0äÓ\\w§•³JG-„òÛÝG4.Rh˜<l;0äW³hR>µ§C©ÇJ¬ŠAÛ&pÜv¯£äu»Ÿø§QÒ5#ŠÅ —÷‚)áÔr+Kž<Ët8ùžÃy>§£ÛoÕ\Zaß—t»”ž˜#¨=ý+ÃüAv.õI¤Œ’…Ž2{WÐ6Ž4Sò š>^Þ^vdt=ÁÍsÖ#MA¾ÕåÎ˜`øf‘ÁSÜç±¯6Ž\"4×¼µÙæžÕõ=3Q`èÞWïLr¾×‚pz×¿Ûêpëv1O$%§î»xGnkæÝRÂãÂþ&’Þdùa—•?Ä¹ÿ\0\nú?ÂšE¥¶žòÙGåÉ:,±2«ÚÜŒZxªq“O¸âÑfÊ(¦Ó&7pDå”!pØüz×|JðóZj}%a›àt>ø¯xÕáÕ€òRm±e\\ìƒ“\\¶¥áK»‹;»;û ÉqÈÙÎXtúW=\nÿ\0WšczŸ5ãkRš¹©ÙIa}-¼«µÑˆ#Þ©ƒké\"Ô’hÌk~´Ï&œG˜zÕnŽµ)4ÝÔìà\n\0ïf&IÉlóÍ@‰Á5$îÌ~nµIòr;×4v+©$sH_ƒVKÈ­QB¨«qÌ‹ÔüÕC5m˜Ëu¥7H	jÉ{ÍƒƒÖ©=Û9#<Ð±¹=ÌyäñBÏ¯Qƒí\\óI$œíRZ³–cøÓ°\Z¾gÙæG‚AÏJÞŒèZ¤%Íœ±Î©—ò†6ûã¸úV4Û\"°ÜTšéôè§Õüæ¶vAÁá—ßp¯;¢RÚÂnÎæLfÞÎÐYu|`Ú›¥s¿sc¼á‡¸®šM·6KqÄ- Îö=ÛŽqUd±[¶Wà²qô¬ðõUWi#F—CŸ¹œÝÊÌbTsŠ¤l$–š(Ã\0p@ê=ë¬þÌ2“ˆþP9ãE5´v{n-ÙÈ*wŒp¤{z\Zë›ä¢fÎU!d·uÁ«ô Öa|#!wXÛÄ}×¿Ü[è°jqBâî8‹ËÐ-r×öðÅvðÛºÊpËÐjˆÎú“¡•<`HÒ[²F‘’\"fáä²=k¦Ñ<Y®è‹lD¶åüÆŒXu##ë\\ý´ëm}ùjå[”~ãÒºB_·i¶cN%®D¬Eša‚)=¹?ãQ:­I)-lØ°ñ˜\ZÇ›ý”ÐC!,v!bêyç­MsâÚKˆ ¶º7HéŽ½r:žkˆ]hÛà<Œ$|«ƒèI>µÐhž0Óâ³º‚úÙßÌ $™Ý¼ôÁ+Ì¯„Œeí!þdsXÛ²¹Ñc²žÎÇ}”—P°_´§–v\0ú×3†£‘&¦’)ÊƒmD‡<®î€ã¥upXjÚBM	F‚2Ä°*É<î=ë‹ŽÊHn{hã’Æ#“Mø8ÈïÎ+L4—+Iµê	”µ½\ZïFžØ	)ýÙœŽ ŽÆ²K–˜‡$çŽ1Wu+éá8ªÇ~Ð{g¾=j=å]J)Fé.â£=kÕ¤ä¡ïjZ}ÍE·ó´âêò;ˆÝïŠH®f¸ÑŽž’$Qùžc+ËCŒ8íÍk]¬)¦iÑ]êÀZ,ÅF0£=_r{ÖúÞiSé:5—•.­`ÆXæò—Ë”w\\õ9ô®\Z•žöÓòHóY´Ë¯*9šU‰ÚqÁ­V2Íg<èùÞ ò×é[òê’HA– KD8R	ÁÇ§J­eumqg,)k$L3†CóÜÜ}kxÔšWdèŽr+‰Tü®GqƒW[C¬ƒŒzµ©ÛÃäCöm1áÞ2$/¸0úU‹8à²Ó‰.<ÙÇ§¥u:ÑåæKR›[”a‘žhÒïsDéÏÓ4Ç·o5ÈùbícéVµÑs7€IÇ#ŠÏ¹–VÁ“v;ÖÔå9jôr7mÏÁã<PHéQ‘Óš\\•úÖå|v gñ(>”ï@\04‡ ãÉ¥ÏsMûÇ>´\0›ŽÂ“8Àç<RwŒÓT$dúSÉsž”o\0°\nvŽE5ŽWÜÒêrrN*R›‡Zª	Sý*d|sëïLlbý*Ä@í\0ŽGSBF_‘ßÒ¯Go…ÁàûÒlc^sÍXŽ2‚pzTÑ[ ŒÕ¸íÔõíR H#š¶ÀÎ1Ò•(ÃcÚ‰@ï@¾ÑßUñ]°ÞÉ\'Ì‘Ô”~5Ù|DÓWí2ÝÀ³ù(›%ó>U,N=*ü?w\'‡¯/cv€M*¡ á„c©ýJÏñÞ¡s.·m¡EzÒ$\n¢V‘¸2{óØSU-‰’÷‘m§1ò™á&7{ÿ\0õêS´A\Zê	¥ƒ•Ž7)Ò»\r\"k6Ž\0ìé\Z…}çø½}+fâm2È|±‘˜ÝÖ<ƒ×·ZóªWwåe;lpöPÜ\\Ô,¬Á Äß0ã¹áQ¼×I±¤ÖË¶å²øÁ†úô­A.…¥ÝÚirJÖ¸S$‰6î“ï\\^£~³G–ŠˆaóŽ;ûÒŒµAmi¶RÛë¿é‘ÂùÁ°\0>þžµìñY[mJþH®á%`ÌáÊö;XvÏõ¯1Ó&“_Kxî¡‚;Ktò€C·$žÏó¯LÒ¬D[[ÙÛ^½„NA7-òïõ	ŠæÅK›Ý–æ±‡1{S–Ñ-žHÑR#CQ0’9Qí€G­sWÚì:n‘u¤Ü+ÛßBËÜŽp93Ö»\'ÓÍÔÈ–XÜ02€Tä`vª—ˆ41«Y,ÄÇ>\ZHÛ0ö«8»\'°¤ùO\Z¹ºžâo´€µvŒ\0ZË’Òhþr‡o\\ûW¥x£ÂsØÂ×ñCÙ9Eà®03ú×\'Ñ)9IoÌ¹ú­zðª’Ñ(¸˜¿ÍŽjpë!§§¼|9¦­½’ÿ\0ËR êªÿ\0ÝnþõÌ™”¾ÝÃƒÔV‘¨¥{2rÉ>ÖN{ŽÕÔh>¾Ö`I´Ö^|Ì0]«Ó<õÏ<W7=£N¯(»3H¸UÇ?…O ëwúuÜf-BhR>JAÎ1ùÔT›p|TM§øgTÒü@ö‘®ò„”wO‘ˆ}+Ö´{eº‚ÜÜ…F#}œ.qÓßÌy·zÎšé\rð¶G¸0œ¶	ç$”ã{Ö¯‡Bµ¤qÌÌð«3ÈS?0ãŸzðÜ§ZIÏ ãÜÇñ†¯ž)íTËyŒÂ9X(\\“À\'‘Ú¼âî+¨ne‘b•-£aaÐ6=kÞoìážÑÞåCe~rÃ$t9y_‰ô—†	áKÙ¦Š6óYqÓ=3“ÖºpUW;…ŠQ0 ÕôÉí|Á!Q¹ù*§¥OiuqR$17üÝªÞ“a•RÃ‚à0çŽpjm’ÞêT„‘©ù[¦kØIl„îMmÚF³Íµ´¹_”ýÓV¬wÁÍ0e¶noº*Kft²_µE+Z–ù‚œq‘ŸóÞ¯iÏo::¬\n‘„ÈÏ%O±¬å£\'þÅnâ,”r8lŒãÜt¨Ö%’6‘‚†\' g8ü{Ô»2äœ0ùˆéñ«ïf‚Ö9$ôsŽ¦)-,RFbF®W*p*âÂ¤.#ÂûUØlBª¶wFÙÉ´æ‹bã¸­Ö¥ZÅ]ªóÞ«¬±Á\'Ì…yä“ÐT×N#LŒg«W’v(Nw;ãë@š®¤‘Îê_÷m’	ÇÞß»«Å–BA„þ÷¿¶+O]ùvX§ƒï]‡ôË[BóÃ·\r X˜¸Å3ÔcšÎ¥ND\rž{¥éVwpG6¢“áÜ\0ba–$ão×ë]ËxJßE°šêÚiÃˆüÀÈ@9÷ÉÀwÃ¶Vw×†Öhá‰´ËŸß2°Ë\0qœ÷åk3â±6g.œòH²MòÈ>@Ç­sóJSÐ].âa:H#d“æÀäVÒFeÌnxèM%Æ¥%Ê¬n¡c ïõªçdŒÊªX	<W^BZ­Ýìˆ·´›bóÐg8üêä×ÆªÊ@=	ýj6FVŠ¯ê;‹™§Û’;ãûÇ4”ØhXÝRØä)fõê**¹{c5œ¡.!h˜¢²«H# ÕhÐ1 “Biê>€˜ãš{®cÝÆqÒž#òø 1ÇZøR1Ó¥+ÜHˆ“Ï5(n˜àÔ@÷5\".æ«Hl³éÞ¹«ö¶YPOºTk“º!!+ÏÝ>µ¹ma$ŠÆ(™Â)fÚ:SMnINÝqŒUØ¡ÜyšµöŽ$c·ÊóÍXDù1¶©#·@ƒº³õØ#ŸJÒ;t8ÅR¼ùÓæüé‚9éKàqZº£Ü\\]»º€Üç\0š¦b>aî;\nÙÒ¥K[‚	“ª\0zVu/ÊìZg]ëhús4`¼1:¿—6E<t™¥r\ZÖ«öëû‹µŒys;“=3ZòêfúQ5ÙY0¬¡X‚AçßµcHÖ‚åÖB$P„Û»Ð‘ú×)ÙÝ­E{œð°’e‘¾DQÑœâ³ä„&AaøVõìÈ!\nBýàJÃ•”ž•Óì\"ÇvÈelnžÝgX‹Fí´ëTÓx|m%AÉÒ¯]jBIÜÙ¤–°0P\"Ï\'Ôäþ44ÐÌ¾S. ŽÜÔY“Ç4Ö|)Éõ\'­X¶³i ÞG=sžÔlµ¿+Ó£w;I§É‚ÙR=¨Bç¿>•I¦îJƒÇçSÚÜˆ¥EÞ„å‡¨ôª«ÁÁãêx<§ßæ—\0!+´óvÚ”¢¬PúÆu¦[Lxn¡ŠC±7#8+‘èE÷zriÑ¤ð†¸å·*òN8Î{rz{W&»¾f$¨ô«9hÙ89#æn«\\î’î#GR½¸¼–?=Ã¬i²1”@Náš Wll pØÉÅL \'sïVÁÁ¤–0‘\rÝ0kh¤•š+±\0\0FqúTr	a×Ò¤8aÉü*)3´qŸz¤®R\ZÖÈèk_ûTÐ¦Ô% Ø¯_ÄÀ¶3ô¬tûWeâmb)ü+¢iqÀ¹ŠÝÌF8äÜTV”¢â—R‘Ä€ÙÇc]w„u£Ü™|¢ÆHÊëº=¤à³/pzwËªäã+Ó<+aª?†#º[[)¢ˆI$rLÛdU\'õËŸãXâ¦•;1Çr–ãGÐ|]ª,7ŒtëÙ³4ž@<‚páí“ÅzL\ZF“ñ®nµH]$EsX(þòž¯Ò¸¶ð\\ºÍýõÕÞ“ym4–³H ²äH»pqžy\'Žõ¢kú¯ƒu6{y¼Æ\r.@uÚx#ŒW+´’pz¢úÙ²‡ÂÚ³ø^ûY¾\Z–ìÊAÍ»œÛÈúÖ¦£âËB\Ze„6ºÄ£G¶ºîyöÿ\0\nãoõ3_Ó_Q±´¹ƒTµ—€dÞ’#x?wƒÚ­hiööúµâÛÌª§ìíæÆ¤[y€âNûzQé^¾¬êG•îŽZ©-Qç·\ndPçäŽ@c5•38ÝëŠï,¼5cvYg>DËµ6œ1bÛrp2=ë‹Ø-nfïìfOËŒÒ•îh+ylvrX“ÐŠdQû†R@~R:æ§VI\"0Ìp>§¥Z¾¶6a º8aó©VÎ{b±r³°ìVk™§Þ4“;´±Î1Å\\eH-\0‘Ü™ÆW¨0°ôõ¨bD’Å€yã\'#œVÌ-pñ]F³s½FvŽ‡µ\\ÑH59Á9Ë6sÁ¨«!8Ç­kê\ZMÅ–©-–ÍÒ©äý*&a\0¬Öé©§°¬SL˜ö·ðôÈ¨‚{w­`ÊS¨ìj„©‚\0nsÒ´–ò(&5 <uéU»‘žŸ­JrWnN3QÈ G#4A\0ËdPÊ@ãô¥LÎpjB…›‚\0¢â.iN¶“Å{ÈÓBÁ„n§µh>¦žFò!Ý.7^F?¥``¨;HÏ¥6>rp*%IMÝŽç`5¥GZ;Ã)”‘l¤•\0cæ?­QŸX¿ÕõtvÉ:œ®žÃõÕøgH²ÔþF‘1þÑ{ÖF‘#ÜbN:ûë\\œöW\Z¹4L\Zkvl:7õéG°äNHNWvÜZµ	d	»b«¼zqùÖ×‡­ãÕaHRÔ»qæHû°]F_o\\Óü5á‹­ròymî#fË…àzýq]öŸðÚé­ÚîÞf¶»ÃE NãŒõë–¦&÷¦ž¦‘…µf4\"Ôô«u‡J…á€¹ˆîmªO_zÅ¿Ôï|CíÎ¡s?n©å¬@O “ïF«i¨Ø^µ»bÁ&û¥Øã#=úô¨uí6}1ímôùd\"óƒîzŒõ=p*ðò«EìÅ4ž¤žð«øŽßW·‚íM¤Q†“qè{8úcòÍs^Õ¤ðŒRi\"Ž_)š\'2?ÞCƒ]§õmCF´Õ´»¤Ô=±ºƒ¼ò<ŒšóÏ\\ÞÜøžêâý+—˜—…9ÇJõ\'Ýèaù¬zÿ\0‡¼Q9¼777ê.\'˜m/*ã8þUÜÏwŸd‘$‚kl$ŒPŒ7P09ŒWiº¥•Ìvðêñ•„«¥Ôdçå1õ&»Í÷MÔ,å½‚8EÕŠ*©fêæfSü9í^\\°ôæùdõ7t0ý–ûS\nÛ3¯;#qƒßÒ¸‰:Ç‡õ\r9â¸•ÅÜD¬1 ‰ä«Ù}½ê–¿ñ¦µ¾¶]%Ï>vîI=9â¼ÇXÔ®5}F{™ßtŽÛ‰¬Þ\nÒK›aÆMêf0¯µUeÈý*ÄjÌÄ}Ð:“Ú a¿¯­zÐ³¢Ðí¢ºÒî!]9.nYÇ— “¼1Üwü*=GK{FóQ?s#^pU»©{Õ_êGJÔâ¹^60c‘ž;þ•§w¨Å¨]ÝÊˆ¢9¥.£¦9ô®yó©ÝlR³EgŠÞT,¿|7C^‡öÈ5Øé–>RÎ4¡ò0Gñ©<ƒŒ{W#oÝGáÛiùrr?úÕ¥áö};S)pBÂ0Z=Ç9Êà{×.!©E»j)»;æ§à»DDÖ÷HgÊ©¶~8®sÓ5Ãø†&´[}>F·’H·«´cæÈþ÷å^‘¦¨í%º»YãŽaæ€ƒdˆ¸ì{ãƒ©ØéÚ¥·ö½¥¼ž|Ž|ÇÞ01¸Ð×“B¬©ÉJnè©.ˆòö¶…¡˜´Â9ÐU\'†p=ùª\'ß=k·¾·Ñ\'Óähíœ_E\'–ùm«Œpq\\¥í¯‘(\0(d`ç5ïaë©˜J-„DŠWŒ°^À~µ$dõÇ?J€ý_\0×O7c7s:E\0ñÚ£N*ÍÌ~Y>€ÕsÀ­c°Ä#4»p)sKÚªÀ\0q]Ï48µ‹âá‹ÄGð§=2;×0ksÃš¤š|Ó,r2	Tgkc¥rã!)Òj;—_Rþ½ioos´q©‘‡‘rwŸZÎŠÚ9²˜Ý’N{V¬·ÒjW¥¥‘\"Ü¡»\'ùæ’M*X£›sÆÑEŒÉŸ½ù×=98A&SJúÃöÚ•‚Å¥y¯vYC#ó»Ž£Ó‹¨i7zMü–O·í¸SœWk Ëumwþ†\"‰ PŽd`Y‰äœzW3¨ßÞ¿ˆ¯n¥\"âàoV`¹9§nj(ÔŸ;ô‘ÏÄ¡îÊ¶NæÃbŸt°Ä]\"ãŽ{V¢ZGó„1È$A&SSéÍRšÂè¤“,ù(73àÞ»£.fKZÏ\"šyü*R*&^kd@«ÍZò$x”¨8æª§éR îç=*d®0d±³À\"¬¬1˜™Iôªà³y5«\0µ]8#ûI|†Ïjdì’Û²Hc8,;ƒÅ@Ë‚3W$\0úÔ3ùS¸lÈ$g>´€p	ÍIrJv É\'[çÃË§ééu©4°Ï/0Å³!—×9¡»\r#Ÿu–Vqã\"£mÇ’µ¯%Äwr¹ÈÂ·B¾†«=±‰‰¿—’íêjc\'Ôv3ËqJÎçnæ$ÅI!PøéÇ¥FGÅY!¼qKÍ34ì1çrÞÚI-äuå‚<g=©…v®IØéÊ‘×5YYÁûÄUÅ¹Éáh¤ÞÎÏ c¥$õ\rÃÏq/›>L‡«­î}ê&Âþ5b{ÉeŠ8åpêƒåÝ¨†u§¨î4—4™ïéNµ&8ö¢ã¹Û|\'×?°übì?ut~Ìü÷º=ñ_Ex·Éµ†ÏWXâ76“)G‘	ù[†sß?…|gw5ìVÒç‚E’7UÈ5î×‡‰üo\r­ÉƒS•vÜv\n@çðl~µ¥9.dÙÑN¯”:wuëÁ2Éör„–fç=3Î+7Áž\Zžú)ï.´,ŒÎÆâÕÂ¢8ä\0äu5¯á»›-#ÌÔær+<Xr@ãœ0®ád@ÊASÈ\"·©ZQ’ù™Æ\nZ³ç¿Í¦E©ÜX]êZËdá-KÂ_Ê9žÄv¬M[âv«©è\Z-äL2S@\nl\0Žqú~5Þx«Á_ðxú\"ñíšUØÃÊÆFÞpÝCùW™ÏàíGOÕæÓn-${…Fò`ƒ;Ž=ûãÐWMiI¤ãÙ2c¦q	&gð	Ï5ÙéÞOéÖ“ÚY´wVëþšáÀWE8ÊäðqƒÔ×u°ÝºÈŽ1¬0Aî©tíVãJ™Ú&|2Sy\0ú\\W™)Ê7:TQÔx§OÒ´ëëý?OÓd* æ‘ðÑàýïÇ¥q\n’*û___\\o’fwlýã×½T’3“Ó­aV€NXÁojhã#½K\ZáwdîÎ0j›Ç[\0qJHœdš¶m™¡ÞPçnGj(;å\r³?1QÊŠ•5Ðm2¶âÜS‚€1š$EW`ŒJƒÁ#Ñ×š»ÜVÔvGjPÊzçŠfp)0O^3M&AÏPYTu¦í*Çh?Ì-ÁpqÅ0qÞ’qI”…#=iö=©¥ŽúRpE\"„qß¸«Zeôºuý½ä|Ød.áH=Ç¥AÇ9¦ƒJIIY‰n}IlÃQÐ¬u½>Ö(g¹1=·N2GóëéVìõÍkIÓ%žæ¾TØdoA“ž;þãÿ\0üW¨ÛË“ç³ÛFÆh‘› cï\0ç]ÇŠ¼euö%´Ðà—.C»‰$ôã¥|ýL\rXT÷v+Ú+Ùœ¿Å]WI×^×S±¸Ý+©Y\"uÃ)WaðsXKmY®’Dº‘„C’Ñ8ê‡Ø‘ø×‘x‚Ž\r²óÙ·8eÚTã‘ŽÜÔž\nñMæx,­æŠ8f92®B¸èÃÒºçMÎ‚Pè$ÒgÖqºÉœ0HÁj¼–ÐâG<6âEyõŸÄ)/,4ûé^4—Í1Ü\"6ƒ‚}@9ï[ÍãD{•µ1*|	÷+-rÊPjÒ)EÜòŒþK=Iu[p<»–Æ¿ãmò·JúCÄÚ|¾\'Ó¯-¦+¸/lÄðÅy üWÎ×ÖÏmrñ?ÞV\"½L\re:v]	’iêB}©˜ëëJ­ÆjÁØ&7hë@ã´‡¦(½’RrO4ÅPÀ33ŠP¥_Ú¤3&ÜÐŠÂÌ¡²Äe€ã™,¥OSWfÎ8õª®ì°ã5K@Îó03Ïz•ó“T7mlŽ½éd¸$€	žâ5!Š5}Ò6jä‚G’ÜFsXIrÀ`ò:f¦Šà«ã\'¥ÅÞèf­­Á”…ë]U•ÅÌ6›*Ç)ØÙ®*²@vœWI¥LXóó)<­e^”}à-¬·)5Ý¬nDR9pÒiöÆT›Íýá}¬¸è¿ZÏÊ’&Õ^}zU‰¶¤or2ñY(Æ×Cµ¶/Mr¬î¬­žƒžÕCW+\'‰¡wŒ¶Žzš£%ð2gqÍ2ê_´yeNæœœÖs@2ÊI4­Òù›\\¨]ªy ýx¬»«5xdt$—ø¶ÊÙê1Ç5²†+™ü«²Q€8ûÙöô¬Í.Â{ÏI…è‹’UŸO ®{Êí™u9×±º»™Òuò¥ˆgd#:~TëÉ­l­¬V©$“Êão=uZçÚVöµñ>VäùCÁlsí\\­Ö™¥ š1«ÅæÅ&r¬1’}AŠTê{Md\r¤ìcI]JþAr¹\'æ«zÛÁ\Zªè¯},M–_)à8=ÇÓÎ©išíå•„úxÚ|–VL}G¡­Ë{]^\rFÃRžtl´Öø\'Ê*x8î=êêÔœtM-~ñF-ô\"·Ó\ZÖÑRþxÊ¬„ÍÉµÏ¶}êõKKY¥û.Æ ¤q¹ÜIç55Æ»=Æ”æý-n.\'dXÜ®×P3ž¦;ú×/¨]<×3(XÑIÁTéõéR”¦ù…n„\\o,2z»io<0Ç;Âë£r“Àqœd{d\Z¦‘3cþ Õ¹$wš¤‚x-Ú¨8×5ÙVq‚°ÍK+‹íNÒE(ÒáAîÚÕ½©x7È¿´]2é`“Ê>w˜waÀe#øOoJä#Ôï—e©fLô9Éöú~¿k®C˜&º»º{µ£HƒŽ‡žÇEsN2ä÷A»™þš¨cHÉy¥òšF==ým[èðÚÊþJM\ZÅ${²Y¾¾•s¨êVw‘Þ+ùhê@ù”g×Þ´µÝE®lì.ÒöG¼¸Vk’8ÁÇ¨¬jÓ«hÅ½È{X}ýª˜¤–UIŒƒýÑY×vkf®‘3>:ïÈ4ûMBkhâR]@ÇñóƒèyæºÛDÎò¼¤R7É*(cli%*{²5[œZ‹E2H„»t_áÅS–f¹$*cÔ]´š2ê5¿ÚQ£ÀmÁpPç¥Ma¢ZèSêyÊå—l°HRs]+-ue©ÇsÏŠàãÒ‘—ãŠÑº„yÅ Œ”è	ïïTŠkÓ„”’e¦D4Æ õlFvçÕyAÈ5C#Ïµp­(\\SpsÏJ`\'*¤‘LcÐÄÔ„î\0cñ¤dÐe‰ZsÇJ žÃ¥3¸ 	rÔê \n¬µb!–4~5\n@Ï¢¡YsY«€y9ÅYlQŽõ\0\\Ú uÅDÓ²\rW7$\n„Üy4º·.ÝÍ^°¤º¶\rË4@qŸ§ZÄmu9ù3É+ ÐÅÍÌ¯©¸Òm¥í(œ–\'o®iK±q²Õž’ÚäÞYâÔgk˜f ¶‡²Ç#ªñŠáô»?·êS^^yØ—;_§ÏÔƒKâOØkWÖišRXÀ€nŽ•‹zÑ	†¶k#5Ñýó±8§±ê+\Z‘”=Ô+ó{Èßð†­\r¦©5…Ñ|°¬ŠIƒÔ·cúS~\"*Û[-å¤¤ApüBG+ë†Ž3×½`Ûiæm*}A’a…„!rè>öOjƒX¿Ó®´ä†Æòpê|2†ØW¶O¥pºOÚ)/™›MÏâ]WQ³6’LÁ$Œ#{¿5‘woW\'üóPù„p0£¸©Ýˆ™	$¯Ë´× ¢–Å[Ü½¹£fVC¸c±¯Oð%Î¿¯™$mR2ŒçtM(\rè p3^PŽÃä\'äÎqïZšuÙ‚ö)-XÇ28!ó€9¬ëÑSEEÙÜ÷éu³ÝÅ	›|,Á7gnN;š£ã;Ø,¼:ÑKt©+aâ^¬øì?Æ¸Wø¨ÏÖ·¶W*êSÍ(Tãó®WQ¾»ºXÒiXÇ+–ÈAè+Žž\ZmûÝÊîçNÿ\0/ÛN04‰”•FÇÉå‘‚¥{Ÿzä®¯ä{M‘ÆÊfIàœð=±YÌ§ïZºLR^Ø]#Êa´¶¤˜õÞ{ïÅz	YWòŸ4G½™\06ì‚qÉ§x{û6ã\\ŠÛWó~Ï7îÃÄáv1èI=«.k¹°z‚{Uýâ(õÍØbÃzg\'°¹Í>KH÷ÍB]\nÁôë%T?šñ)Èç©Ï$Ž+‚Ö4½*êY/¼²I€$…¢)†=½ëj/ê\Z”gÌIkó8þxÐð0Wèô5¥x‘¥ƒë\r$Sªª\0’æTÀÀ ô`ÀŒ×ÏÚtææ˜_CÁ\Z‹Ù¬n¼Ä‰TK\rµ\\ž$s^‘ezyBâ+h×%@,qÔç“\\?‡-µKrß*HíçmËîON€W\rÜOsr$E[˜”UrØÈÅtEJMT½Ÿæ4ŒCª½ÝÝäÒL¦?¼$Œp·zã<OÈ¹y`¡À©cŽ¤Wkkx5{¹wÛËnÊŒáL™ãžùãéÍb]è3Z\\%ãÊnaŒ!“æ)žÄOZt%ÔÔ«ô0´5tË(&4j¯\'>´ñ¦$Ó3La½1‘Ve½ŽÔ¢WUxãÒ¬[ÈËkæ† ;LŽ1ß5ëEßRlTÔb¸òaF\\¦8`84ið4ó¡Æ+^ÊûÌEGEÂðIëÖ˜Ð«LX	È«JúˆíZ(R_1	Ü8ÇcR£?•òÈ|³Õ}iÍk¼qÐÔ¶¶œ•~˜£”dBâ@ d…8§6ù*sW\ZÌÇ§J€Daç¡ªHfMú3F@0ï\\øg‰Û,FG_zë®ãPkâÝK0pqØZq>\"f—c\'QÇÖ±[U»‚·Œc!!	9#ûWo£>ØØ«“€Å€¿\ZJð¯î§ŸV¾[&q‘¨;}:V%+ÂI«Ø˜#•$é!pÉ‘•úV]î±-üï=ÔdJ°ù1¢€T`ç9®‹U´Ž9æQk¨¥‰l¼lã!w ‘\\\\ñÌò<`®{ÑI}¦ˆo¡™2f!8ÎÜÖÖáãªisM\rÚ-Ò¶q•õ\'µfÉnR`_î°àõÍ8M$[V6ÚGqW&ú	0¼²{=È$‚SrÈwdÿ\0Z­dð6¯k%Ò“n‹ýà9ÇãR¤ŸÀÀ0Îyõ§YÙ=Åá!‘Ç8Qš{§q²ßˆe³½»X$¢ÇjHyQžU†8Ýù;	êÙ«÷VÍmr –&ŽP£xqÜÕ±g6ÂMÛœ¶Ž…}:˜ÁF) [¢.È¯võú\Z©{e\"Aç4{C”~­ØtÛÍR\'Û\"ˆmÑ¥ÚÌ(ÈÎ=y\"ª^CåYÇ¹Þä9‘õ¡G[ˆæü²\rIã5jH@\'*˜é[$3wA†K‹•0nqÅoG,–¬ñeÜ\n°ú×?£M$WÆHùpÞëÜVõýÕµÅô²ÛÃåÆÍ•RI#ñ¥}D<ÊŠÎ3SG(qœóŽ+-äóÅÈQÆ5iŠÆìn­RW¹€:œ*$ƒéSÉ.S®i 3\rªï\'€EjÚ,Ø¼3F¨a`ÂL`žZØ$“—•°ƒŒç­u:Õ…œ\Z%±µÁåÛ°r\'×¯åYUi#H­.só[ÚGdïæ2ÜàmB;ç¿áÍaI,!JÉÜ¬Fån¼MuzW#;N0¨¬ö*g]€còóÅDSêK+NÑHmûÆl`çúU2Ì#hÕS9Êæ®Ümo˜[=@ªM×#¢ˆˆbFŽdÊn\0ò¹##½-ì–žr%š²üƒ~ã‘»¾=ªP¾`Á8\" –\02È„\0Ÿñ¨–ŒjÖ ÌÀ’Oô«6·BYwFvÿ\0:³{-´±j„!$±\"©ylBž9úT]Ij×´·ƒPGŒJ‘ÈÆããëÐb©Á§Ü_ÎÉk	‘”g\n:€)a¶ûL3:²Eä(b3Ëäöµn=JKkÃ5Œ\0e#>fïòŒŽÇMŠarn$|¤¾Ø8õÀÎi/tŸ;R™t˜¦–Øä§ÊNÑŒ‘žø§$QJ$¸º¼XË†hÊ.ã»8ävÍ;OÕ¯í ÐßÍQ¶ôDé¸Œ1ü©¹IFàUK‹eÓ~Ïq3$™W^Ò:^pk<¸.BäŽÆºëÿ\0¤—V±`’H@`„I™îìxÎV¹dŠDó~E\">¹ôÏjT§j„Me÷“¤6éºW<(=igYmåx%(ÄŽô—bjì~\\±#[Ó=é’33	÷–É,NI­•ïä\'°Í½94…2zçÚ”:U‹S|º“éŠ­V ˆU<£½tz­Å­ß‡l¢†Ñ‘­£HÚb¤îsÉö­V‚L±–•Éœ}q]%öw„—lhðKq‰N	*p1þq\\µ¤›W*ÎÇ-Êª–n\Zô­3Ã·÷>\0±½sZ<þ\\«ù¶npæ=}ë‰šÒB‰‹·oÝÅz·„nVoØé·²[§•+E‚¡°r‡ž@õZÇ\'\Zj^eEéž$œ±·_´9ƒÌ.×I“<E2ü½mÈ5_ÇséÒÛè×–öò\\Egy€å	û¸íÏ<û×]/ƒí¤y ³¹¸Y«”pä3¾ÑƒŽEr7:l—Ö^XL\nÊe’í\n–ƒÔ÷ïÏQ\\´!NRU#Ôö64_è^&Iïl–æ#*3+,›P·U#Ê¹½Â>*ðî˜Ëy+O§Ï,aâŠMÅÈÉê0k3Hñ®© Z\\ÛY»‹s…d\'ý[ËïÆ+³â Õ|=ö}VÁ$¼,ä+‚Î}0{w¯kùŒj\\å|%¦_O{ý£k1ŽÒÇÌhVUß‡î\nû‚kÏY1|ýîs^ªk:‡‰`…í¬FÙ5Õ°*e\'›üâ¼à—\r´çR²nÅD·ÌÛjíó-ü›™@VùcØv¬|r=\r\\ï*aTøÖSÚh´ì[šhÚ4P¡vŒ1©4Û÷F6æB`9ùIã5®4æ0=&Cä´¬‡#Ìï·ØñTâÀ›qgJ‡´Üìe›B¸ÒfÚîßRP·n#9,{g\\„êdvPÎ9]¼äuäúÖ°ºÒáÒà’F¿ixÝ~_,_PqY3Jžkv`™ùK}áSBn×%ÜŠÝÙÁR¤‘×3B]\\¤{°?Jud—!¹Ï=êíËª˜§PTƒ·Ž}+¡ÊÎÁdÊÑhwsijjª-¢}ŒKƒÇoÄVQ\\1´MÇÎQ\\´$ç$c?Z©:î•Žxª7Ún…c·Œç4õp:õíL+‚rzSç<æ®ÄŸ˜î<Ty8“Q‡m¸§FrüÓHiÇð:Ê[Ë‹æ[£\ZÀèÞY\rœçùWEâo@þ<†òïÍûâIgœ(ò¯Ô÷¬ZmµìZ¼³+ã‡ t\'‘^å5¼W6Íñ«Æëµ•¹VšGGÔ–®î0Ð%†Ö³¸šIgšX2)t$ž8ÇN¾µÔéw‚iWI¹™’ç\"F!6³c’¦qù\Z·¥épY<‘xÕ?ÕÄ=ªª9×<žj†£ö}&K½Ia‘%Ü\\þi$\0ëšä«‚‹©í)où•\Z¶¤Eã\r?MÔí®,E±*¾`REÉÏJáàð¼wò¸†y/$[Ø’’#ãý’0+®ñ•¥¥…Ö¤/cƒb,’4²Å—@Zã—âÆ¥ÄÖgP‰VñÜˆÕÈ\nzò?ZèXyJjmê$šE?É£Gu£a¬<·\0(ÌBFÛOËÎ}½ëÇõFiu4’£–le}ük »ñ{M*¬vðG}î#l‚7{üÕÍ]NÓí ÁfÈ^I>µ½Y¦¬…ÔÑƒRh\"R\nÆÙSŽ¾ÕdêfëÌH	·‹9Ú®zZÄ[€JíÈ8â–Þ7’UD @æ¸åOª-êlÞ4ZÀ`“2È¹“=üŠ«¦Ù5íÀQ“œð;ñš¯u§ÝÛ\\Kop»%Œá•†4Èî/,d¯´ÖjŠµõ[»±’	%ˆÆwàŒð=k:áA\nê\0\\Öö¯&«wlË‰b…a8l–ÇSúÖlÍ¾g\nÑÀ§IËNa‘#`Š³\Z4¿pJª=êÝ¬ÍæÔðý³ŠÝˆÒÓäšÆíf…ŽõÈýy¯Nðíì:¬‹kq¥BóoŒµÌo»xÆìëŒûñ^c¦ì[°÷R<QNô°GA]§…uy,õ;ë‚Ñ#Ì2ŠÉû·ÿ\0cîñœ\ZâÄÓæƒ¶æ°–§¤^ypéò2Ý]Ü[	Hø\"@OLOcÖ«h>–ßM¼¼1H±ÏóCnÒÑå¿¥SÒ¼icvtf%H2Î¯¸8Éÿ\0\nžè³^H`½ž²~CeX†Àê5áKS‘¨›F×1“ÂöÖ·ÓÝÝÇ%À<´LA}xî+Iü\'¤M2Ç§Áp¶³€¹VFtÎp{6sÞ¬ÝN÷>#S¬¹Š!½ÖEbr	È¨Ç^õ±aa«Í©Á9¶?f”nc£o>€þšiUºÖÌ9UÈî<\'§Á§Hºv‹nÌïæ[æ0Rµ¸ôàW…x‡ÃÚÆ\'ö¨¶9!ÇÜ<ö\"¾Ödº6O¦y?¿¸©$‡jƒØç½|÷âuâZÊúa·ÆÒgá=ó]r©\nŽïO=ÌªGC”wf±?Z¿Oå¸R\n`z‘U‰ô‘iìbçë@¤¥\'Ò¬BŸZ’)2*,ñJ­†¤ÀÔ…eŠ¯Þäš´¢ê41J1Æî†ªDLdS»©t\r1»Š=ÑD¨#áCs“ßëí\\5_/BÑjòÅuÃåüß1íŠ»{qqcxã>\\¥0@WÐúçŠµ«C¦Á>Ë–B\0!Üc$Ž#šŽkIïîÒææOžeV9žØ¬ã8É©2’{tõxåóâaœû¥C¨^µÓ³<ŒN0Ø8ð®U´{[XŸlGÝ\n‹µÔcjæn¶H‚$ˆ‰G8­kJ§3¸¥´) ˆÄ§sç#•V=jwùF úTòOJêNä	ßÒ¬Å—ˆâ]ÌFOµV‘×šèô«--ä‚o5@nÙëý*jÉÅ]!¥r‘ÓMµß‘3ásÇCÆx4­ú3O½J†Ù·<ýkbòuÔaD[„sÛÛƒ°óÖ±%\n§\0d¹¬éÎR^öãi-Š­·$~UdCjQ”M³ä-™~ÀS ¶lŒ±eV<|¹5zãKšõ–O16·€HN¢OV	19I®r:Õ£3]Ü¬opÁ:#JÅ¶J’òÍ!†9a20bÙ%0½xÁïUîîÃZÃD‹³’à|Äûšù¾ZnU,ÆBÉéÒO# FbG\\f¡°ä±84tÅh-ÇžxÎjr…°Í§Œ/­Bƒ óÒ®B±¬)(•Kù—¸÷©”¬2€–°’z`T,\nœ•ÝøkÃ#Xat&hÚEsj €%qÕ9èzÖgŠtÛ}5âÍæ#/$ýïÄvôü+âSŸ!N\Z\\åqÍ+ƒ=ÿ\0ZÖÔ´û(ŸÏÓ®üËS…È\r»h$cÓ$ŒÕ[!oq¨[ÅzÎ–›€r‡Gr3]4ìdž—*y20TœŽƒ“LÁQþ5ÛOð÷°Gt\0à;.2ú?•sšíŠY]Çä0<jUÔœ9y÷Í[¥$®Ä¦›±–r:ôö¤<Ž´¹ÆéHÙfÈ¬n]†²óœš×Ñ5™ô•»H€u¸‹Ëu*Fsß§áY?6pÝ*þ‹¨G¥kv—²À&ŽUÞ\"2Aä~T&ï šºÔï­>$Îñ›¥‰íŠëòH!q·Ç­]â6³¤é©Ð=³Êãì²•ÔÔF+\n/éÚÖ·ö‰tû[…ËÃä&Æ“uXŽsŠåîÚ4•/£fw˜¼¶î§×¿¨5Û\ZŠ1´ÌuÐöH<[­ë³ZßÄÐ½Ò‘$q\0Ly;[~G¡Î{UíKÄº>‡&ªêžUÎ¯j%WŠ9äŒno^8Ï½y•¬Ü[ÝÇ-»½´ã*Y\0PŠF\'¸ç¡®ª…77Ð¶±µknÑÊ·2?eÏ­u)ÓqZyv!\'}Î/\\Ô¦ñŸ‰$¹·³XæšC¶($ääýzÖF¥áë‹?´4ÄBðH#h¥_$zW·ø#À¦ÃÃ–ZÕ¼’™b‘çÙ·z0ÎÐ¤ý5ÉøãRŸÄ>V¥g\n„ÛüøÞ\\ê9üë)ÒU[—cU6*Œˆ¥Ü¨¥@?+sÛÝá—j$VóŠã=1V‘Õ0‚ËŒšò*>Vt-Jëndš2H\0õ&º›/E¨éòêI:Ã.¢XÈ,B‚ÃÔ\nn‡¤¦¥¬ÅjdO-Gm$~?‰¯{Ð‡´¿ÊoRÚÜlt¸TêrHÇãÅyÕ«ÉÉB/SH¤·8K/éZžŒ¡cœÌMÌ²(Èç®}k+Nøe¬–—ÖÓ´V²nK\'ßŽEÎGÐâxÌi°ê\Ze½ÈXždËÊŽsøàÖ-ÏŠÚõ£²º‰ÍšÎedFâzãõ?r{<D&â™¤¥ŒèšV“¬yZ5Ã\\[ˆÔ»žFþø>•Ê\nïüEuÔrG¤#Á£Ï×|xÜËž?•pENæt¯[	6éÙô0kQ‡×4Ð}y¥ âšO5Ô…aÛóšR{Ôg’(éL,IFiA÷¦\nQHcÀÏiO RßÒ•yÏ¥!ˆG½dæ‚0}J\0žÆò[;˜æŒÈr1^‰kâ-š…¦¡l¦?-’VUsóc’+Ìyµì¯ž4@¸Ü™ÁÅgQ]	«êv>-ñ\r¯ˆµSrª˜}¥þ\\q\\·ö<¦åžýÚüÃ>”Æ˜1.=¸«ë©;[*KÞ¦¹Ôm¢\'ƒU¾²ˆª¦ÈÛ+Âðk©Ò5[Y,%ƒTŽå\'\nÞktÜ=ÁÇJå¬ïÞk_±•F‰X”/÷†{^à‹é­šàDöñJZ‹c¨=¯?hÇTkÝššÍ¼p]Ïrð0†9ŽøsèsßÒ¼«â„ÛÃ:ä­ÃOüèì0H>µí\Z~…e«¤»îå¶»ó3˜›cÏqÐõý+…ø§áNÂf¸kÛXÉ	3§ÏƒŽ¤pqQ—Ôq«kèË©±ã˜©zä\ZpM&qÍ{æ!ü4ÒGz7ßZR3LGs!mÇ‚9¨Š3ö5±sfgŽj—¨ã±®tô4hÎò°¸Î*”ª|Â8ÇZÔž=ÒàqM–Áˆ-´‘Š.î-LR¤>\0\'Ò§[?5KÚSœúÕÄ±š3¹ÓƒÓŠ¶¬ÜB#ç<œuª[G>‘H²|Ë‘ZQÛ+;I\0ŒVÞÆE!•I_LU› !Ð‘ž)¹Y‹—Úm»Cö°K\0`3‡?ˆ=Å]ÓLVsyªÞt˜qÛ½1œÌùÜKuàça›ÌEŒ*’;žõË5)FÌf­ŒÏ\"3‘º$Æ}…jEmm©9HÀGÇv¬­2ÆYäHW‚N\0\'ÛXÙ=—Z‰$˜ÊÆrG=I¨–ŠÀÏ5Ô-šÒìÛ•Ày#©­K}5R5wFV\n¯5½ªjº}¶ªÉ5ª³*mˆòÁ¹ÎAâ³t›ÔŸQ¶°·›rËÃï‹î{ZÊ¬œ!Ím‰lÒÕôËIìmåy£&T\Z=¥£ ck¸ðÕî•<0ÜÊ-Ä£ÍIÎáÎ:wÍz=… ˜Þ´¦1%WðxÚ¸›øu)n¢Ô.ìä’\'b±û¨\0\0zæ¹}«‹Mh¥®¡ð½E»ÓlõmIîî£¶Ô×åC<dgÃv?ã\\–——šæÍg[BZgÎóüG¿ZŸU·Yu¿³Er$G,lå=þ•Ví/å‚âi<¨c|ã¶§ndôfmßsfÛ\\+Z®—h—2à,Ò¨!8Àê+V]Næx-4´¾³@K³€d`>u÷Ž+Ï\Zî¥€-fQ‰79;Ï¯°§È·d	•]A<±nY‡P\r)àâÚkñî8ÊP‹K¨íRùïõ)%0.2|ÄN›»âªYÚËqr°„;Øãæâ®hWdê¶ï<	-¼nL‹ ÏÊO9=Muº¶ƒ\r»Ë&‘}g<2³\0ÞfÞ;uö­åSÙ5	ü734{[kÙñœ¬RmÄ2ÄsŽzŠ©|±kW©a±ÙÜçbIÕTòF:uÍu^ÒŒ²ÎbT¹ùÒPÊ˜ŽFzg§zÄñ¯m«es­¹;¦<² À?ÅÅcûJÍ=tcü7b\Zxï$·B‘àÎvÉœ1>À×3«j1\\jwOkpÅæEˆ’¸d×=kÄšíÍÞ‹k«F±¦ÆEÏ ë\\j®8àv®¼=\'&ç!ØÜ³7É¥gcl2ö9­K{Ñ¨ó@’ ¬PìÇ§¯ZÀT‘Y‡HÎ>AÓŠDš!Œ…˜|¸éšÕÓ“M°veø‚a„ƒhl2²Œ{T²\\|ˆÊ¬wN9ïõ¨¡º†âÈ$ˆVuG=jkÏ(i–ÓG>fÈñ·P:‚=ª;î‰”z\"î.mæ,¬û¤å¾cÉõ­8~Õ{sæ\\*;W9ük{¹\'E%²È\0õ®Á\Z¥ÂêÂÉ¦ùn’=ýãå?Ò¢½ZnvÕÉÔ§,\"G›*Èª9cŠÍ¹šÕŠ¬k½\r_ºÖo º¸ÞWÍg!~ëáYÈÍŒ9é](Ú)²ÒbK+(;vã×5E‰\'$äš³<f1õªã¦{šêQH¤†ôã¦i„mÏ¿jyäñIÁ\"˜Æ*ç=³I Ç•HGÊHúŠ‰òy\'¥ #r@Ú™JÄŸ­\'CÍ\0)lf§·lŒœàT\n=MZd!p8I»/ÚN‡Þœ³ä*Œ\rÎêr¡ÈÆzTˆ°Ò‚„žµ]	–@ÄàHäƒíO¶-ÑÊ‹¸«ÅˆQ~pýO\nsÀ5¸ºV«£èðjI,‰ß½òw(èqÜA£hïâ\rFx••œ™dÛÀ2IÈWc¯_]ÛøFßC¾Šhn®.Uâš`-ºü g±õÔ®º²š²<êÚè=Ñ’FÚÙ,}+¥Ò®dé{6×v˜äêÃ°ôÇ¥cêºBZÌ³	£è]9€çšÏK™­æ\'q9õæ²¿µWBk•ž9‹Ã:|7Ú·kt—1†’6Æõ$`©\\ûšåîå¸˜-Ü‘ª	IÃ(Àb=«$p[”³Ò¯[³Ê¤nb@ùhQ°ž¤ñ§c2ävnõ,)5ýìvÑ]Ä(ÉÀ¦ÚZ‹‡#íS˜zf½KÂ^²ƒS’öK‘{\n¦*ÛˆïÛ<Ö5ñ¥ê$®ìr|>ÔŒ\r¤±]J¸Ü¸*AüzÕ‹‡ZÃj­§Ì!…ã*ÎÅ³òžã×¥{>ŸioäÇ‰†0’Ÿœ~>õ¡²Ú’êàÂª¹\07ç\\TqUª;\\¾[#ÊSáµí¾­¼—Ijç-(;xôï]ŸôWœµÌBd:äzqô­—Õn]àS,)†I“žƒ=3S[Énò=ºÇ!d*ÌIÆüóÈêgV«ûBiÚç˜Þü<0kKiòH€†!—\'Ö·uo\r-×‡.¬´ˆã†)e6ó·±#éúÓ|{âCm¨YÁfÌ¬ÊÒ’Úz¯ÿ\0Q\\m¿ˆ`›TX\\Ì-–Píå6Þ;€¾•|Ø‡{è4ô4µOMqig¬Ai\rÌÐ>.ÕdSº1ýåãž+_Ó´Ë½FÖçÃ¶Oe?yoºG|“éü«Ð<I¦>§ákWð¾e„–•Ø¾_itS‘Á¯:²s!#0.KuÇ×µM\ZŽkšûÐè|/ªùwÊ\Zk…-	V¼®~`ØêøW£éQX6¡um¬IpÎýÞåÔgÐœæ¼ÂÊòÞÖÜebC\0x|úWyàIn!™ÌPâ)ßkÈFUHì(›„ýÉ‹AçHÔ—ÅO•ìÑÉŽeàÇ\Zvm÷®ºÙ®Ò!%ÌqòrÑâ µÓÚ×R¼¹\r·ŸšE?2œpíÅi27V‘—•Æ\0ïëPéò§ÜR)i±Äê¾\'’Å§Â%ÔË²‘³=9Ü=ª†¹¬\\¤¡Z­]ÆeLàŽœpEw·ökp·2AòÁ;ÊŽ295æž\'}RÕ_í.olNØ\0Ñp@O½è¥É\Z¶¸-ËV°Ã¨(B\0òÏÖ¥{O³n‹q#vTŠÍ²×e–Þ4i•PŒ6ã#¶HëZ»O´““îkÒ¥¤;EÆé€jüqñÍF¤2Ž”àø\në@XUÛÅJ ¯4ÈHeæ¤Î\r\0‡–ÊçÒªÏ\"1Ú–YJc]Ü0qŒãÞÅ¹»\"B>\\/z«í¹¤dÁâ®X¢}†îY‘[Ícbs´Žø®SS½†ÍŒ JHã)qžÆ°”Ýì+5§‘{pöBÄ\\¾ÀQ‹vï€N?ýUVæ[Õk3¤¼WˆäJU1…Èù‰úV>$}>%imÖK„\'=0=ÿ\0•TÓµ»ûÆžxØ›……¾el*É\rù~µƒŒ·k,vz÷ö÷\Z9Ô­ÄfT“;üŽzž9Wž­¬úÅ´ÆÒ\\FÛä Bx9ú\0­¨<SywªÌoîÅ¼sFb/³”žy÷­Wñ?†4í=áÓ-¡k†tŸsƒ³…û‡ß?…jëMEBÆvW¹ƒák›_\rÍ¨]OBÔùl¿6I\0ž§ð®”¼ß›9 sÖµõKûÿ\0j‹)Œ»Èp#ŒqíY¬#‡ýbáÇðN_õ¹\0P`vÞ÷=k­ð\\[ZÏ{y&! E‘ÆJ¶==9ë\\uËÆBmñóqŠÓ°4|(]Í&OÌrGÓÐV\0ÕÖn–ûX¹Ÿ¬Ø\\ŒOjÔÐ¥ÒZîØê¨ÆÕåŽEsÐ+H„°ÀÏZ·I´™±“ëNq¼lš:œ(¬òÄUÛäŒg!~•v«˜#×Ö·íá–îø*ãjà3·!ETñœ–3Û¬3¬Ñ¼|09r>µœ+Q`–‡?\"eO5_h\0dúÖŠb$\'nYºÚ¡d]üVè´2ŒºnÛŠÞK•’Øˆá@»B<’sœûUo^E§Ýo¸µ[«rpÑ7ô«sc\"[xŒq³“€sødúTIê0Å[Ÿ“»rýj³HÆg\'©5=»dÚ´OA\ZÐ: Ã»Ðd ði–ò\0\0¨æ‘ÐÍWAlÍ#y(çpCŒc5-õÍÂyV«tå#;×w@Ç¯%¬@º(‹1\0\\qúšµ«YÊÚ×Ùdò£qa²ÁF6^õKu.Ï–åíVŠ+©®bg7 ^sÎ1õ˜,¤‹Pò˜nd‚vö÷®ŠdÒ‘#kŸÍçŽàÆ=1ÛŠÌ’ùí3Ç—É!‡=k\nR“D™Zµ¢Áy˜P,7\"ïÝî:ÎwÚ	\0síV/e&BFk1äÏb+­jÑµŒÏ\"Æ«¹ÎH¿ËÝñ7“´‡#«ÙíbìƒrÔ×·É{róG‡s($ãŒu52IŒ†	tBûT¸ÈùêIžK«¦’vîypáØTpG¾P¬	çÞ´d´\n–„ ÈÁ‡Üùï\\ó|¬5»Z»y™V_áîÃÚ–Þt–cò8>‚·õÍ²Ã%“ý¦ÝF_wúÁô>œ~µŽm\ZÚàÉ,LQ\0Ê“Ž=)SŸ:×q”æGÚåVÉVõÁ¥vd`b=WæŒÄœ©ù3À®ëÀÞÓõ&š+èÎÙHÕÕ¸,¹SÇ½*Õ=œ9˜Öº¥ž¯y¥Äi9È¸`@8<r3Ðð9hÁ6žm¤†\'”¨åpËÈç=óÓ§×4hí5»›hfÂªnMür çèJÄ•šIŒ¡UI=`URQ’æˆ¤]¸¶ÛÒvÿ\0°GZ¤ÊPàñŠÔ´d¸…ÄÁ]FG$’8ÍU½›ŒÂÌÉâ\\s]‹¶¤\\¨Ç½hØ[É8Ú‰½‰ÚuÍQS÷€CÏCïZÚ4^sùk½dÁSƒš™¶Î‡FÐ&|yö¬¬sÌ€¨Ðê6VÖž·ß;d\\`DáI\'ø•\\¶Æ‘[M3>eÉêqÍt¾(K9|¦Z¢DîpÌéÔ`\ra\ZR¨îú\Z7k]%´rŽ1Ÿ ®óJ—N“ÂÅ©Än–ˆË&|œçŒO$ï\\kÅå;0úW¨xEm`ð¤GS…ÏRbˆ$Ï¨R «%°¥.TqŸð‘ßh—\Z{Ùýªàâ’	Á(\\@\nzdzzÖä¾$±Öõ‹WTxíäŠ€ØÊH*ì9|ã•8Çµr\Zåò¦¬.þÖnîámË.Ï‘™_‚GÒ«j\Z¤\Zª‰%Cç¨a¼(‰9ÉúVSÁÁ>XíÜQ“kQ.—O”Ý–ŠGÌŽˆñ0\\ääjç§tŠuHäó´çŒØö«°GåÔ1\\ÊðÀìåUÎß|w©µÿ\0\n]èiÞdW0Í\nÊœ+r3é]tèÉFëT‰”•ìÄ‹Ä?Øú/Ùl•ã»iÕË0ÈÀ¡íÏlW#¸çIÏzì¼?á|Þ`‰™Ð |ÊI¾€ù×7wköKÙmäxd(qÓ kYS’ŠlI¦ìU«?kF2ìùïð@THÀtÝÀªÈ¡XqŸJì4BCàXE·.ð;ãv;öÎ(„SÜrvGæØê3Îjô±Ïu0x \n3Ž:â£¾Ó¥µ_8G …Žcg\\ðjæ–±\\[ÌÍ*©†=û[‘÷}ñ\\•%s LÆò]ÈÙÔÒ„8`\rhêÒ[É¨Ë=œAnØ’8M#Üç½k	]\\lÖÓa¶šâ§¸HŽ¡¥eÈ@xÉª×Ìccmæ¬©FSÁÍUF*ò	â•Îy#ŸZj>õîHè¶˜XƒŽ*>løU­±yÑˆ·”lg#ŸqO×-¡³ÔÝ-dB@xÛ<àö>†¶Iî\rô(Ëeá…TóÅ[Swt5É0zþ”å=j@¹ãÌ\0ùªì\0æU×õ+W•y¸¿ˆ©ê>™¯ N\0É<WÊu)tßZÉ\0ò+Æ	Çqï_MØëV×Œ–ò*é‡0¾3ßÓŽÔäœ¶&é3M‰\nH8àz×™xçÅ#NÒ {kD[éØrZ>zíÇFkÓ$u¹@É5ÇêžŸX¸¹Ô7Û™°~ÅŽv“žI\'¥iC•?xŠ—è|éâmsSÔ®¤KØö8mÒ+)Þ­œ“Ï8Í`!ifP¬ØŸ™Ï+Úoüª2}Jx÷ÞG[ˆ¤ÌÒãï`1€+ÌüSá+í\0Å,¿ÙgoÜÈGÞ8ä~¤âÖ©Ý	4ôg0fÚ~SïIŒriÒGƒ’Ü“Í$Š¡ˆV%{1\\ì»	¼9ÍK\rÓÃó)ÁúTwñ¤çéŠ›¡¨nîu³31’g üÇ’ió[_)ÀÉ;·u?CYhÌ>é9­ã\0±\'99¬äÄ„’@fI-ÔÇåàŒœœÔO+¼Í.pìI8ã­lYiRKg<Í\ZrÍ‚¹äJ¢Öûfxß`l\r½3QÆöE	Å]·ˆ\\ÕAI8ëTäP®ÀœZ/û¦\nŽî‡©­¯ E{=»¿”ŠñœŸ-—p´è®.Drm˜ ”|ÊN3þ4Y¼k(i²ÉÇzn—›¬é÷PéúTw³5¸H!dÃFIù˜·CŽk)99(¥¸6’»<Î;ì‚xÊ”‘Æ¦°†W2´™	ó3Œž¢«=²<“<,T!à7_JÕðî™s}~!·(&(ß3ãEgYÆm•Y±¡ê2é3Aqevfiã+uo#í#•õŽ¢½;HñÈÒ­BÜ«]ï•Äð N0}sé^Gâ‰\"7Ñˆf„C±!•–9$}{÷­ÍÄ6Vq>’Û½¼†e—wÊ~\\dÐž9ü+Íšn*¢Fñ×F{“k	ªYÆ<œ–ÈxƒüÊØ­pZŽ¡ªÂ—6fÎgHºY$‹Ì%z|«éÏèkGÃþ,Ó5	$°‘bIÛhfA²IN1è085¾-\'‰îDfF›ÉØ„ã•ÛÇáÚ¸*WåæW*jÈñÈÚ–Ÿo©=”1Ìãkx{¿Ö¸	†ÙXÑºW¯êQßi\ZSIö8PB€°%sØ×’ß.œe¹â½Ü½Û-Žz‘³+‚3Hy£Œâ“99ô¯M\nZ:Ò´ öêhZMÃ˜ä1<›Tƒ…Ïô­(gŠáÞÞ+&2Hùˆƒ‚£ÐWGðßF´Õ4‹™®.•d…Ê$H~vÈü0k¤ÿ\0„cK¹Š%²\'í¸Hå^¹Åxxœd!Q¦¶:iÓr[œKAuŽxcM™o˜€Hô>µ<×wd\nEÙæ–— oñ­GÀºÔ3J\Zg1¤!s“*÷W3,om(Šî\')\Z„^ùïøÔÓ­\nŠñw	.RR}AíþUß\ZmiòíÇ$v¨t°MÔ4å‡LàxÅG¬·\"Y•,x.ì{ÓbAÌ!p®9Qœs]±ŠååFmëpÖlM”…¤L+æg‚s¬;Õ»«›‹™÷ÜÊò1–9ªÍÉë]4bã2[¹«K û8Œ(Ý»%»Ÿjƒ<zTñÆ]7/$qÖµbDñ\\É\Z®8¸àÓ§e;•Bû\nƒk{P\nWjyPÝm2i§’úC—	®yf§.«id<ûWÜÎì¯çŸ|ŸÊ¹†bmfŒ’ãµa,<[m²¹Ž›Zñ\\Wštzu…˜†Ü”,rv‘Ðöêz×/3´˜.À1Åïâ ö¦4E[ò:ÕR¥\nJÑ\r^äòZO$“ ÆG~*¤ÝíK#39ùØ®xÍ9ToUß×¹*õ[ˆTxÖ\'VMÎq´ç§áZ:oöl¯2ß±…\'Ëx×$8é‘ïT/mþÉrð´‘ÈW£!È?VÝžüT¸©­\ZÖZ¬¶©QÉ)Xä,ªß†¥ÖõçÖn„ï# Ø@Ÿr{ŸzÆBUò)¨6–ÉëKÙE;õ\ZnÆ¾‰¡\\kÚƒZ@éHžfg8TfºO YÜÏ6®«9òÚjF<Ðˆ€Œw®fÎÂi#+7–Çkymóô®ÓVð^‘e ÆñÞI£$k$17Ïç‚qÛ¦+¢•ï¢¹KkšÚžc¦ê‘ê\Z£¾£§Ïj]¶L”°êGjáuí\"öÚÒI¤·q3˜Ä¬H$0iÚŽ•«éŸfžK¦V…‘‹`uÛ•CU¿Ô.SmÅôó«î¯Ð7­uUœZ³Fq‹Né™;¹æ‚Ø ÓI=ºSsŠá6&-»­¨¨Çšxa·©¤À·gp \'–²WhrAÏQï^Ùá¿†_ý®å#kö€²Å…‘]xaë^…$§‡rŸqÍzöñ]Õ|qiîÞ…ã‹ýl``dö#¥iMÅ;²&›+Þø.	|GýŸc<pE%¹Ý½²TõÚÀýÓšn«áÍgÁºl:æ¨:éÍ¶HC7!»QÆMsšˆZ×Ä¨Hd~Ðœ´ƒ#={úf½;ÄÞ5²½±µ´—L]JÊ`ÈR©>£±»áRÓcõ4<{©Kà_íè®\'ifl¤m°`‘Øvë^Iã¿høžæy¬#,aPt\0\0ÃßŠèu+ùü)¤]D°^ÛZÞ>cŒÌÅBÿ\0tvâ¸gQ¹ñ\rÌZ½äH¶¨Ë\nÇ(ì?^k*˜˜F\rÅêÍa}L[»I<ýÑ8•ÜJóùÔfF˜) nEÀ>µÔÛhs[ë3iˆñ£]®aýöH\\‚Gµs÷–†Ózyd4gkr3^\'¶S•™ÓË¡¹á¹.´é-¯Ûa²iJs…pkÕ%ÔcÖ4¦¶¸·Hí.U£ŽÝsHøÊG5äÚ–óÇ—3yVnë¿\'±=qÓÖ½æ\nÙé÷öú¥²I<BÝ#œ\"_ï3ÏA^v!ÇÚh®ÊW<;û\n[K…ù?Ñî¡2˜uÏ¦3]¡§iPÙÚKŽWµyU%lõ>£Šé¼ok&‰kF^K\'˜!oÞ+`$ƒê+Îm5Ï.ÛmÊI3„& çÓ­%ÏVÒeó-‘{PÖ­uÍ2æ	R+2ŒdŠÓ“Áíë^{q‰ÃuRqšèõÉí¤0Gd®±ÄŸ6õ‹½Èê3Ò¨Íe#ižq„˜•VÏ!‡5ßBÔ¶êbaö¨Ï¥\'ŠˆžkÑBÖ—&šv9 aÞ•zš1ŽÔžýèàâœ)œçÚœ:R¤‚(^ôcŽ)3Ž”€ŽqVl%Xç\nÿ\0uåUøaî)¸ÇzM]XkCºÔ<=okf—ÌgÔ|è>PÞŸ•s¤`yƒ =*{;¥{%ÌŽ\n[‚>•b_²ýœƒ‚Àÿ\0JåqqZƒeX¤òæGç`;×¨	M}ok{¥O\"½ÌJÎ„œ¨<žã5å7ÑÍg*$ŠT2†CÍz×ÃÛÉ Ó¬înµö2ÄñùhË¾»c®:\\˜¨IÅJ%BÌê¼\'ª\\h2}‹ÄVCÏV	§ª¯|šëuK?èwv;ƒÆÁ¼¶zqTáŽÊÿ\0KiVÄÊÉfW²R	ïé\\tÚµÖ›w\"Ù<±°ùá¾ï\'ÓÓÚ¹;áÐ¿vö<CÄÚ-Î‡­ÜYÏ+Fä|Ã‰Ð{W®|R°’ú;}i¶‰%ùf@ÊØãóä¥pØí^Ö\Z¯µ¦¤÷3qqÑ‘ÉÐ\Zp9Í¤MC´à×A³ÝÛŒ‘üªŠÙ–$‚+¥¸[°ªB\0ž†¹Q»Fiå¦\"Lž­a]¬2¿J×µÓCK	JÓ—D(ãéNÂ±Ê˜a˜*ƒSC£‚À’;Öãh2DÀ€¡«ðiæ4PG=èW¬fC¤”§ŠÆ»Ðd3•1’½†q^…m\Z¢Z´––ò•úPÓ¸hyý‡‡¤w#ØÖý—‡‘e]âº˜má‰ËƒU^Nx^{Sk¸™f\nFþ[G Qœ–##ÿ\0íM;EžX•Ëß2 ,î;ò*¨¾™ØA=Ä¾[.Fq»Ú´ì>ÉîŽÞ(äÛÊºãxõ®iÅ\\“…Ô|Ívà=½˜…bòMÕÉ5RÆÂßM?k¼óD…ŠùÈNþëÐ§\Z]Â„Œ¢8S…ÙÆx<Žâ¹M~ÖQ¥3#­Ã’£l§>•Ï[™Ç•C¢Ð´Ø?³µÒ¦i­§¶aûïâr:×¨iÙjZ\\’C+C\Z¢œ±Æîä~b·´>“QÜ+UÀ<18£¨é×Wš=¦§¨jÆ ‰\0ÿ\0XÄý\rF&˜e-ìŒ¹œž§”Þ¼6zŒ“:(ž9ÙÕäœ\nÍÔµ[g³X NýÒIÔ–nI>µÕx›JŽæâæxàk‹›5b0¤q÷ŠŸ¼+…kxÌNæ`]HÆ^ù7\ZM’ÜÍ…áŠøKu™\'!2=½*h#û\\2E.æ`!ˆõÉíšK¿²MÛPÆuo»ÔúÖ\\&åTY}5è$æ‡Ôê¼¦øL#ÓïHØ$\0‚q±®ÇÅv—z½Ë2;+h’ñ¹$ù”ØÇZòËgº’í´²Jp%¿\nìYµHíf½šæèK# •$V\"N8,O â¹+a¦ë*œÝ6™‘5ãX]³@§È™6 ,r=kK[ñ™ªh66Wr-Ý¤»•¡Ú©°õ	þïåW4ÛeñToy.ÉaUòå\nª–9rH9íŠåµK°O±ÿ\0‹$ÐŒ‘‘ùWU.Tù^ãZlS¼•ï\\I$„•\0š«€£hù˜Ô¯dÊœŠˆ¾æ»¡+¸›F@üêh¾ð$t¦*äTÊ¹É«µÁ’ÛIåÜ¬…w(l•=ô«RÉÂF_•Cd&rR\n@ãŒõ§ÂBžz\Zâ°ª7\'µ\nïË\"1VBHì}jx€,N;u¨ž\"9#š|«`;És#Lä³»nosMðê¤t¥\0…ãŠ’4\r‚ÜBVÑŠð#µRo—€x­+’{ãŠ¢Ë‘Ïz\0ƒ9£wÌi_‚i\0ÀÉ¦;méPÈp¹îiî2Õ§\'ØR,’p\r óÈ÷§mÇçÅ5†à)62{v@ß¼l}X8Ý…Ïô¦À(öÈ¹“Ç?…YË0ÈÞ³“‘É&Ðªä–ÚŽ*ËÚº\\ÎòÊAáôÅt^—K{6³º¶ž[Ç•\r»ÛCŒŸqØzÔWV¶«s=ÂM$ØK.‘1Ý”t<ŠçöšÍˆÂÝl™<–3–ûåúLRØÃs\"Ë=º>Ûeî¼lÀ?™¨çtiIüJ¸«×6×š}„0le7‘	Š«g)ž	Çò­–ÅEþ[­!îüFÑ$Öld-Œ;‚·ËKâ¯+VmÖ\r!“j.YN1‘üë*ÿ\0VÕôÝþÉ•í .^HÈÁ~Aü«3D¨ÏjN<É¦ßCagp;ffX	eäc¹\"²å)‡fqû¤P·A¶ÝÊÃ\'¿­;SÕ>Ý\"…‚(QG\Z€3ëDW.ˆ›Åpð©øVûÀw­›[·h@Tç=kŸœœŽ+¬ð­ýÅÊ_Þ\r<%³²HØÚòmLZoD5¨í>íÒê(Êù‘oá	àg®+Ø5}NÍm¬WJÕá±¹d¾C\0ã€{W”Ç¬Û?‰b’[8l¢H@Ü©ÆÖ ~f·¯,­n¡A\rÝ³B¨f·uHŽ7c«r\ry¸´›NCJîÈôMÄúÔ¶‹q«[G$‚D2Œƒƒü\'šÚ¼½Ký?²K¼màŽ¹¯0Ô<Uw6©\r´°<ÇÈÛü|`õç±¯G»¾)bbK]öÆ,‰QÃ,|rH~µÃU:i8u7ŠNZ”¬>Ð—SZFŠÀ:ƒœg¥méðKcxb’H‹H™WaŒšÄK…H¬ot‰[‰ÉÆÂrG>zšˆµ_ìß\rÝZÙ^NŠw‚Ë»¸ã·µLc³êgVZÙ=ã»£qâDÛFÂ/<îËnËtÈ>†²lîî´yà½EÆàÑð1ëèjÎ¡ªÚ†b1Ì›ÎpÀðW¿JÇ›V[™$2©.NUo¯­{4ÓtÔZÐ„ô;ÄrCu{m´«q~ŒŽÛøÁ9á}kÑ|9á\r;Wð‹Êgf3.ºÆ3ÁQôçšò#@¼ñ)¶9‘¾îê=+µ8Õ|£fK¢[ÃrÂÇÄ{p=NOZó«Æ<ÎÕþ^dÆ×$Ñ´k¸M3M½Ö\'H†8ôéÖ»Ë¸¬m4Ë]>[¹c¶~é‘~w8é‘Ç^y®WÃ:ÅøE½ÓØO(ó­ž5\r½qÈÇ õÏzëüÁrcAŒ;c-Ò4^I9î{~ÃV5Ò}KV¸Ýy$nì-äiËƒ!¹“¯\0c™­¨.®nf»ûTåÀøNÊ‘ÿ\0Ö¤šÍm/&ºË‰¤d+Ô~u}f• óDk&GÌƒå`Gø×RŒµ‹–À÷*nnd8¹MÊ I8\0óœ×­xDêºÌË.¬æ;hÄ‘@y89êzuý+£¾Õ­ìí\0Ï(_,ÇzÏ›ÆÚL—[J nF0FÞ<=Ò©\rÄÊ:^…‰kö›è¼Ö`x>`3Ðãüj¤eLìñ©žµHšü·V×´`,Ì£ p¨1ŠKxT¿JôðÔ¤›”÷)\\¸®Xf¥DÜ=úTIÞæ­G\r±ÁÏjìÍ¥”““´aTrI¤xÎ3»J[µkKƒ\ZHHÀ9âª´Ûæ9\"@}Ë+¢¨RÙ<61ùÕíšæBR<\0¹?…Z·¸€Íå±Ü@{š’ãTµµ·–U‘˜‚	¨“hÊÜ³¤nÊCÒ¹ùD÷aJ’\0é]­ëOxí#GºB\0;Wµqú€O8…wõ©ßq3/W¼GP¨£€yî~µÍ.¡,1ËåÜ²+ðÑŒüâ­ëW›£\\jæÝÙ‰SÛµU•„Í‹ö˜Äñ×Öªä€²\'sÏÒ™4Ì8`=ºV¤:{}\ZD’gVh¥ò‹naÆï“ÅL¤¬Gm ãƒÎÚsÀ\\†Ç\\;œUÍjÂÑõXàÒôûëvòÔH—M¹ÙÈëÐ`T:tMe¶ìMä´2YcÆàÃÓó­Û¯A>£utTÜ¼±’0ØêÀ`Ž¾þµ—;æÐMêrv˜™v¸íZ:uÕÖŸëxLx+œëJŠéÍÅé!ˆÎM_ÄáJ\\sÆáŸåÅm+XdV±Ì!@AÚÍœZé4ëxÑ®¥Teó6‰éžøêk?Mµºžsä¯˜J”\0¼qÐ{Öý¥œ:MÃÃ®[M„E\0ƒÉ=úŠÎrº²Œû³ÚÏ:!r²*²€ØúóXºÜé=Äe[yT\nÇÀéÿ\0×­sß_³ÇÍÞÆÞHÇN:V.¦\nÞÈžAƒˆÈ Wê#0¹¯™á»ž”Œ9î9£Ž‚·B:mÎÎßË9f‘%@X<óîJÎ–HcoWCrö©<<–“Nc½á„å²ª[,:?­\ZÚ[#µÁG<a³ÐsùšÅÍ9r…Š$«÷àÕ¨—bäô5R\0Qô«ªM¹âµ\'„®þ\rXÜãùŠ¡ÃìiæRpsÈã4ÓÓ÷>¤Œ„é\0\'¥Q¼–I.ÞbíænÉ,rxã­>Ö+‹‹¨ÒÐ·šN*$¹hgítrNñ~ ÔH¶ô±±a£êWWe{fˆ€\'ó1÷Pð[ÔƒžÕ[PÓ¼Ñ{-žÇ‚Ý€,¹èsŽ¼ñƒRKâ›û}R=RßÊK†ˆ&\0ÊÇŽ8×­C>±¨ßMsx¡3>ß5Qp¤òÇ¯&±\\×$æ%;Ž\0Éª“D\0lã&´|¼HÁ†:äU±‚y5²}€‚1G!\'æn)cTFÃ)äqõ¦«*DY$ž1íMiç\0ñÓÚŽ n;ié£ªÅo?ÚÞ@LÌFÅøGÿ\0^i™Ze\"\"˜ –è?­g[Í$–ëv1çq^Ù­¯¿³íç¶	¾`Û¹†Jõè\ZÆ¦ºV½ûkù·;MÚ(C\"	dû×=yy5Ëó+•Ulä™«×ÐHÑo€ÔŽ›Ö²ç$/¨£V6I \'ë[ÖÚµÍ˜F·‘”^„)˜°!`X®ÑÏJ˜\\m#ž¼à¦¬Åª:ÍF[-{NIn%í¬0ÿ\0^êIþ,ùW)¨iíc\"+|Ä\0½ÇÖ1N8ÎjÔ·fíY\'q!Ù„,ÙØaéJ%MY	¶QŒ˜¤VB¼r3EÔ²Otï(ýãs€0µ5Gï\01Ùˆ§¨Üð8ë[\\V«<,«-÷·Õ³áÛGhyÉ8¯ÙÙ ¶Y:†µ¬\"·¶³\\ò*ª‰¿½DÊAÎrzç¥P½Ô#D;xP}ri·—*±1VÁú×1-Ë°p{“ÎjR±MØÑyBFqžA4æ¹“È·Y¦iÜ‚‘ÆÜò+\"ä(AÎÚ·ìáQ—p\0¨\réM\\†Xxà¹½GBŒÇ(­¤çH¬Ómp]HIq€\0ëí]œ\ZõªØ{Í&D0Š0\\wÉ®j}bSÅqÄ®ÀWÝ+kA­ÌÓ’2f¹”º@Ú:q^‡€Úö†×ö×’Z½Ü[d„*¬ñ©\0Ž½k€Ô,Î+Y~Ò²<ê]ÐuŒç¡=ò9­û3P²Ð“X]jÙaŽ;ts¾Aœ@öõí[P¼[LŠš¥bæ•}-­–£áé¤{a\Z´‘«0!rFá×<ãê+†X·¹-œç¯­jÜ»‡7R’dÀËÃ ú1UŠ¨UÁ»ŠÊ¤®ì\\#mJì×µIkxöp^[,QsB;© Š®ÔÝ‘ŸASY*<¬Äà•À#Ö²–Ã#´7ÚÔIgs<†x™’,Œ‘‘ÍM£Ý\\øjþWˆÄ°_[²5wSÆ8éÏª·19bcP ¼?ýt—PI-°ýÓÈê»ÕÁ$ëŒv®g¸rµ£)=t:ÞéÚõŒW¶\" $\00Û{À×Ÿ2:©\0äuÕÐE¦^ê±C\"nÞP¾Ê¥<ƒÓŒ\ZÎž(ãˆœåÄ›sAhÃ¥Ërdõ*C(ðä€F€‰2Tw¤‡r@út¥B\0>•Ô\r;£=Hjc9‘²Ç:Ô‚ÇvH#ÏJ†\\#¬vaÞ®âGÇ¿J”S“ƒQ³)ùs@Šk\Z^ÝsM#Ÿj :\0Û½çtÛT0î•™\0r‡(Ü^›&‡®øbÖõâ¹[y\\$!·Ê$çG+Ê|~ÚwŒ´{°»ŒwI•ÇPNó¯§µ}oõn/Q.m··Æ½ªÔÚVDÊ79ÍRñÚ[MªZ\\ÛÀŽÎ7ä‰8À¿zétïiwúÄ¶‘Émùò¤ûŒŒSuMbMHä…ì6¬l…u\'¡ÇÒ«*9g:½žÑ=Ú‚ d9ÉöÇëRµ•®²¹Õ¤°ÌÅQÕŽ3Ç¡®W\\ðE®¦ÂæS4÷+…ˆo\n‘Ü/èM?WÒ§ÒlRóIžHæ÷IrPNNGcZ-}©Km%âW‰d\\\rÇª“ZÆ.:ÅèKkª<ÃâWÃ$é¯«iÐ-æE¶BÆç\'v}Àôô¯šŒœò ‘‘Ò¾—ñ®â½wM’ßOš-ãGY0ÞÇ¯pGJñ=7Ã²j©q`\'¶¶xvnd“œ¾µN<Úu%JÚœpëžÞô¼í#¦0,wßg•Â¨}¬ý@µe­\rªþ÷kBîÈ²¡ÈbonGçXKC[”QIïZXµÈS‚v36N\0#œsßQJ…sÁ­;EK#\r‹Æ| qžÜ\nÂ¤šW\Z4n5	åÐ¬Õg/ü)6ôúñYW6³[º¼›SzïPr;VÖ®ÂkQ\rªm˜*—A…Ô\0@÷<Veäo,0ÊÉµH#w@q\\´_PlÆ”ü©§Û\r“©ó6óÖ–æ)‚†\rÜâ F\"AÎs]ëT\"ùhÌ‡’$î\rtú7‹gÓ4ÖÓ¬íáÜ8{“»~ÆŽ=0¬ý5e\r§ÝbÑ%ÌrÉ$yÀ<Õk›VÓ§’%mÌ®TH§‚µ®ã&J	îTg’	7‘À<œu®‚ÛUŽâÀ[@.Þ ï-ÛúÖ¥¥`’’Ç>”¨ZÊU# «g\rcV\n¢×rÓ°š­ä×7éAÄd¬’1Ésžÿ\0N•Z\"îÊ»‰Š¿¯_ÁªjoyF/4)u8ûØÁéYÈësÇ5¥5î%kÞ§Ò>´ÒôOéVúŒÖÞ|±&ÆX€OL°êGLñZ-âkíéìb;Vr|ùöRz×€h~*¿Òb–ßÍy-]\n…<”8à©=9ÅVŸP{‹q%Ôïx$ «7ÊTŒd{×‚òÚŽ«”ßÌÝÔVÐÞñºÓÜM\r»*ÂFÒCÞsœŸzâ®Ùä)+)ÁÈ\rŒg\"ÜeRíòŽÞ”ûë´šÖ+u@6,<dã<vé^Ý\n^É$bå}Ìþ´˜§œc)˜®´Éj)6Òqš`t¾Ö“I¹•db‰&>qÎßzîl|~Íq<—/l›,mDWø€µå¬q‘Á®‡OÓÞGfòY”!b@ééÍyø¬=6Û—SHM­]·ñªëóÁqöd¨8º’pr}+Æ:†\0»K]²M:Ò àç¨Ïñ¬1áýM4È.RÈØ<go¦áØ×Euá	ìô¸šK2Ëƒ$Êw†úN•âÚ….W§bï)fbe<½Û2@¦j~d’}©Ž2¯EX­!°Ó%¸µÛ³°} \rÜdZÒÕ4]8ßEª<vo¦&¡näú~Ø±Ê2Õ‘´y%Ž•q|­·j±.â\08?¥gÜ[FaÀB	å½ëÑ5«%lÒ-å[#æ<Ç•*[îyËk’Á$ÐÅ2º…0{Æºèb¥9]«â‘ÌÏ5fÒs›ÆAíU8§Ç¼åW¡ëï^›ÕJÎYŽ;úRl$Ù\0ÔÆ†0ì„{ŠI§GE\n¡p¸\'Ö¦ý…ê0Æ»IºÔRå°Á6€;Pòž8Ì{KuÅC¸ÂÖÚ[§uï ÝjD²¹–dM¥KœÜýjÝì²™\Z+ð6d…aÜsé[GÄzî‹–¶–†8	lˆFü`ç\'Û­sÔ©R2÷QI#ž¹µ‚Ü ó‹¾0êÝ?ÖªÄ¤¸‚ž¹5~öH® Yä™Úô¾×M€.ÀG~µG!Iµ­6ÜuÜaã“Þ™ž?•ºœc1Öˆ Þ9ªM‹œcš’ÝÈ=I\ZùÁË`~UrÊê[8™@ŒÅ\'\r¹Çn½ªe&–ƒHžÛWºÑï-n­âH¦…Ë+•Èqî¯hÞ.{6±{l—+)>b “Ëèr+/V’\'òà‚fxcMÃÏQùÒØXZÊÈ—2b=Êd’6‘IÁàõ§J¤¢®)E3¾ÑüM6­¬Ym‚ÌBòÈdòbÄ«¼ŽsÇJén|×6o5ý¤pùÎñœ€JôØÃ½+ÏCƒÂðÛ\\C$sÜ[Ü‚n­0Áàl3@?ã^Û-ý”ÚjÆÓ I¡Èbp2=kiâ9¥¡œcm‘õÍëKvŸÈ²4­\ZK·\nÄuZÅq†W°üL³Ô4¯®™y<3Û­À{vˆ÷\0ƒ‘×¿ç^;»#“YÙ­Í´èò9íF}ù bŒ)ëC€ž\riYkÚ}¼öÐÜ:Ã0Ð:V[)óRFÔ2SéRÂÆÅý“^GöµhcÁâ<ƒØóïW,µ	ãÕP†è†¨”ÿ\0}s\\Á9çƒÍ<HUHì{R°¬uZÿ\0Œ5-oHM>êî9a…¾XÙ>u\'9Áî*¥Ž™Ä×3È¶ €ÅF6“Æ\nç—”Vð½x,¹Œ²;c®9ÇzŠ—µ¢R%´°´ƒ^1ß^H¶‚C\ZÜÃÈÿ\0b»MsMÑæ±¼žÎÎ[‹SdOnr±8$Ž¸?ã^w¥Õì³›}ó\"Ù^+«û»§è˜.¤:|±©`ÁøO¡<\Zó±÷¢ùµ6ƒÑèS†ÂóKµµ¸D/ÂMÜ©ç ¯Ò|I4^²¹‹dÒ8*Iþözb¾ðäîM—q -±Xæ<=+èÏé–hÑmA#†l±\\žãðÅr×æö‰\'¨+XókZÆ½4V?ghH;ÙÁ\'Ö¼èY­ŒæÙ†ë•|noà ôŽkéÍcÃisäÏdÉÔ/½¨`O¿µxç‹¼1y¥¼º£Ä’µ”t	´3œzQN¤âù$‚Ë¡çšœà gˆ¬£‰xÀÚ¢:ÃE£Íe*URá—9#ÓÓ­6öæImæg|ï|°=MW²šÞ&Iì„ÂeØ’1#Ëç’¾¦½E8êEŒ·@#¡¨O<â´îìÌd¨!“VÅg0â»¡$Ñ#(æŽ†‚jÀ^(4‡šQH\0\Zp4Þ†—¿Z\0zúPGzAÁç¥8\rØ\0dž1HbŠkƒ‘éS$@Û€§œö¦2“œŒzC$µ¢“hÆƒšÓ3ƒp*’dF\näíÉ«J3ó Áî+*‘LKSFó6ãnqN3Å;Ãú”ºF¤·Q·Ì½CL¶¸‘bÀ=GÌª·\n\"“å ô ŠÆ+NV+Ø÷Ïx×ûBþ;;´XRí¹‰†8ëíž?*ô\rkÂ°_iámUVhÆc\'ëë_>.½cughbÊB‡tJ·¶+èkrêZrÅ\"y‘ÂŠ‘Ý©ùe\0wÕp ¯g°¹ìô9-OÂ:ž¯¢]é÷cÈÂ†Œ€\n³•ó~§a6Ÿ}$.I¾ß¹m°;…@è{×ÌŸ¬l¢×šâÌ§ïA»óE\Z¥\'o…þ’¨¥¾ç—sœúÓaêCÔŠcŒŒ×I,úWRsQrSv8«F$<õ«FÔcâ¹šfÂi­å8§½n³F®Á0õ¬˜£HÆi^âY$y=zâ¨F”Ž…j%•`\Z¢eb;Ð¬ÈÈÍ\0iüˆsšž9–²Ài1Ïe ;x4uå-…\\äÕÅÒæ|Ì3—µT°²ži,6Œî5¥guso÷LlXã’	\rôe™tâV™\n«ˆþût®[ì²%Û[ÌÈ]×r»ÈT\'>õÝ%ä&ÛË”†?uùã>•Åê“i²ê²$’º—À_“î¿§·Ô×4Ÿ,‰ÖÃç6ÑÛª>VlVÉÇ=	ïYrß¤‚ÒùÌÖÜÊœ‡ùæ¢¾‡3È“tŒoYT`ÿ\03Ú§·¾{‹E·™Ç“2\"~½êe8òÜgV‘í\ZU{gÎARXüã]dÞ$K¿ChU<Õ‘9cÈœâ±¼@×/£ZÍwi°\\LÎ“äÆ÷÷¨tiLP´0I’HÇÌWL±è3Ö¹±ª*|±2œlÎs\\´5¶µÔ¶ð]†w‘rÙP@ wïŠæ\'µ¶:TEœ¬Ï™®¿ÅëšSˆÙÞm:]ŽHÜŒgéŒW\"úÇÚ|<ºk(fóh äâœW[1¡o4«X^ÞûM»Q–|Û¹ÉÇ¥s¯KtûY{±É­,€£>WÐv¤’8v‡!?Zôi©\'v	X›Hhá¾†RÅBåNáé]öµs¬êFßPÔfûØv\\)Û‘õãñ®jI1¸ŸjšáZ(ÃG*º¸ä¯^½\r*S¿P:ËŸ]xrÖ+«›ö×cc}”–Àoœv}ø®OÄë©jÒy<YÅ•º½Nq’zÔI®\\ZYÜ[$Ó2ã	)QŸR;Ö;È[?Zª$Ÿ4ÝØnNDÎ;ÒY¹¨ƒ±èMOsÖ»†3p@älãÚ›$l‚0)Ÿ2sL	ƒÙÏ*¸\'ž•YA$~´ýØ8ïÞ˜X¶®;SËï^qT•ÏB~•*±9<ÓÏGõ¤iMAægœôéLó6ž:@Iq&â¥D5ÊÃ=êø<t\0÷Øyu¨Ø¸¤Ý¸ñHÝ~´€±Œ÷¨	5$¯“ŽÀb¡ÎFOá@Ã©¥E±ÚŒfŸÛ†êMKÆwãƒœÔÿ\03Gäí\0’{Ô0b>r§Ô×ycc§I ®¡s-¬s€#ùäç#„Ç^‡5ŒÝrÜ¯¢Ç¦Úøj{†³Ô\'¹yvù–«Ð0I#¯=`ëe`¿hímî­Ü(‡Ë³õ$þœW iúŽ‹gá¦³—W0F›¦X\"Cºá»o=¸è8¯>{³r¥X\"©}ÁÉ%‡?­rÓ”œß2ÐOr=F¹×5‹]2	dº&[€=IúW¡yþÐô\rN†í‹|Ûîuó|¤dsžqœö®KJ¾—J™õh m‘´eŽ	§ü+6þâÛ%ºv	q‘\Z¢c@ê{Ö“æ”—cHÉÅhP»Ô%ÔnÍÅá2cíEšÃ-ÈYÜ$d3Ç]cÇlPL#:nnq‘é[½¬ˆ$½k`à[y‚=£;È9nä{UhJê¹Ã\0p*Fh\ZrJŒ’B’Ö’îÒ[9\nH¸ôÃúŠ\"ú\0ÀJ»¡=2\r\\ó„Åw¸Œªã u=³Tu©ã”FË ?¼9\'4ÚV‚æÍå–à,Ñƒˆˆ9<Žÿ\0‰4–ZµÖ•t³YÈFÞ¹èO®)ÚnŸ&ªe¹$I™v`¶Ýº`w©àgFêÈJ±)¶<¶ä‚}Ç5Œšµž£óGC¢ê2x“R†[›c3ZbGh×smÏ#ão<ñ^ÙöeÓt;Ø´Û˜	•1˜ÆàØÊŒtÅ|Í·úúËïop0xŸkŽG±¯CðïŽ“¥Ü¾¯§ÊÓN7[]…Ü¬àp¤tÅrbhh¹v=56µ­Rÿ\0À:–Ÿ$í$°ÜÉçÍ¨Q‘ŒííÎOJå|Eâ‰üQ¨J!šãì‰†±¹Aê8ëÍgø¿Å:§‰%µmFxä„2\nqŸâ56cmm¤G¨]™#žà”ƒÍ÷L½	u¢£)ÍjJ³Ô§‡oµEžßk‰IØ…¾cƒŒãÓßÚ°­ôÉæ¾0œ)Y61\'Ž¼þë:~¥q¤Ão©$\r*ÇcÉÉE=sÞ°¼[ý‰¨HšŽ›Åœ×¤š6NA<c˜©¥Ÿ´å’÷_P‹W9MÄš‡‡õ—šÂo(©) Œtèz×¤ø{S·ñ5âÍª-´“ÛƒûæÆz•éízòhô}Bá‘ ‰¤¾Ô#«’{õÒ¦‘ªxJr·»åZ2zp2?Z¼T)9\'ö‡+^ç«é> Ò Ðîì•\Z+1WTR©\';—û úVŽ‰¯ÙßC{{uq—Öë…•NÖ)Ô8™ú\Zæ<7¥	6ê·W‘¬ºùvÖ‘–Ù’>R§“’\0éô®«UÓVémËŠV.\0„‚Ñòxã¨Éyršo}¿2£®§Kg|šŒ—–±JŒN0í&´ Q%°’EòÎÜ‘œ`W£½®ƒ¥[ZÄ­Œ¬Ï²@]Ö\\òƒê9Ík/ˆ¬nâô3:@Y#€)YFNAý+J^ÍÉÊßx63Rð•¾¥tf[©Tü+‹Ô<5{eÚd÷\"B™î=Èô¯P±Ô-%°@ÁÑ1\0óYš­ìpjfÞú)^Õ—r?AŸJî£ÏM&Óüs…°‰£\0	¯\ní<\nµimªm†ÔbJ¯`>µUØÆG¥z’”n†[†EY’óÎu—\nhWõ\'Ö³7’›»\nUm§5wgýêËº»6$ûb®Hëå“\\Æ±qO‘ÉlcéI°õcÙ,XØJ.µxâœnçŸJænnÚ9AG#Ðš¥uy$Ë–l°ïQq\\ë.<@a%-åÚ®95Èk:š3?—žùÍeÜÝÈêBžG¥P’	˜£?ËÎq‚IÙj&ÊW’<ìÛ2ÄdçÛÖ¡²ŠHÒ‡v(Bí?Åï]ÄvÖ,ƒ}´Ë)$ÉêÎß€â¹ýÍÃß;_z˜O™	¢õ¹–ÍILq‡~î+F×U‘ìšÎêWtP>Î;FÙÿ\0ëš«h$¾ºòÐ†ƒŒž¦¯ÛéM1B68q\nrŠ{ˆŠ]:Ùì­æå[ šf‹¦B÷(÷ÒyÛ¶ïX“è_Îc6²ÈŠÑŒ.\0ùšÚÓ‚¥‹{qq~t~`?(U\'8éž¿¥f“ŠÊZ$~ï\neáËgÆ;â´/ìn-â‚yÑŠÊ»+€}ïV|5K-äò­Ã6ÎC#=Nê·¯ß½ìv™GgU8&©·Îðô–ö[n™¼nkôbx­M~{j¼š4DÝ—I9ÆA>Ø®zÙî\Z\"*xî_Ò¶íçŠ}@Gv^-î†Fc”dôã§Vr‹R¸Û0bº}#¶×,Œ*«‘|ûÖ.««MªjS^M2Nþ•Ýx·B&Ñ$´‚Ù¬Ð·P>UÉ9Ãs×Ò¼Îta+dóšÚŒ¹µdbKÈ¨ƒF~é¤<PrA­Äuš…¨6»o,+ÎaÃrIã<Õ•9xþÑ•BùyÆqÎx®£Ã‘¥Ç‚î!fÇ”Ï&	î0rejVéú\\\nåæà‰IîŒé\\q›ö1˜P¾iéWY”€­VòwSˆ™TdWhVÆz“R 1éÔT¨…—\ntÖâ	ÆâzÚ“`%•á²ygyrÄ¹ˆcï7OÓ9ª“Íûï0Ëæ³¨v>ç±«B¢-ì«$¹cŒŒòA\0þ\nÎ»¶šÂfŠxðùïëéXßÞ*W¼Oš6UË7÷jìk÷	#‘_å#¶?ZÓð¬zV–¯©jr¡¸ÉX!Rçæ#¦+U¸Iõ+‹ˆTù-¼c‡{ØEIæÈä`©äÖmÄÛØíèzTóN¬§æäÖs.ÓœðkD¬-Í»]*y´äb•á —p¼)õž°²I€3Ï ÷Ñé>,Ô´=ìv2!I¾dPJ`=ˆÇåP\r|ÜX}ž]>ÓÍË“>Ò\rííÚ±r•Þ+t1Õ¼·d@îÜ£ÓÚžO#Cn ôé²eÈ¢ž˜£ÐUï¨‘Œƒ´öõ©Ö4e;ˆÀéŽæ¦ŠuViÄ™òm=O½DÎKŒ*¨ÇJ:Œ¬¬„òQHë†ÏZº2ñŒöª’‚îÈ«BªI8$ôÁ§Fbó×x;;àÔ\n0ÀŒŸ§zV%›8â¢fR¥‡\\wè%)2»zóRÛXÉqm<áÑRd3`}*“‚\\âŸ+°“Ôê#ÔÐDcÏqWýd¶ê§ÉD…•[8«+rPÉ6-Hè¯¯	Uç‚+;y”oóTZy%ŸJ¿in¨]ÜÇ¿zi	³VÞ$dRp	®ž/I&‹%ÛFˆfXØŸ¾£®=ÅrÑ# PG­äÖ¤:¶w$žP\03Î>µ¥%ÚDÉ»hb^ïŒá˜ãvíTX£aØzW£_hÑê~\0ƒR–ý\"™¤PP”q…£Šó	$M­òààÓ©O”QÇ¬M3ìI=…_Ò§Šè\rÄ!àO¼…ˆÝÏ¯j¥\Z£;›Ë‰·l‘Æ3ÓŽÿ\0ã]&âH,Œzn¡µÝ©šISîƒÁäsŽsøR‚×p“²:¸4·ðmÓEgäHÒ±ˆ–‹lœ•=³×5æãýpsÁ®ŠãI7_iº³Hp™Æ==Ï5Ì”Û’Nyè*jTS–MY’B‘Àã¥69š-ÌœÁ¤-¸àôô§F’:ûzÔÇR™nÒi%Ì¨f›\nIÀ©\0¸³3Á6èžE$0‘ÏCM¾°¸ðî£­Á É\nL\nžUXúë­»·\ZêYÛéên\'’1s–ÈÛÐôÅeYr|[ŸTpÖ÷÷v°ýœJÂ2Ð:ŒõÅV»´x¤UÎàà08êOjîõ‹i´ý–4]OO•‹ÝÆÒ„z`ƒšàâQ.ñ$Ž±ªä23ØVTjFoš&4%%Ù*àƒ‚hÛè÷‰äÙÛI,…L»å‚É¢³™˜#±®³Lñ¶­km™ŠGòÄPÈë‡9èsZ×•XÆôÕÉZœŽÐ°¾U¶°Á8èsU¤%QC&3ï^‘e¦ZÜø~ño¡1Ì\0ÚW†ÝÐ`}kÏõ?0Ê‚VË*í\0Ž@)Ñ®ª;vµ+äùD’„Ò«°¸9„{ÒgÍu$A äñHÃh¢3Áõ¤cÈâ˜Ëz|\rý´‘%VãœŠúYñž6©¦i—ÖÚ‚9A#%»`£768ÆAó­»lš6ÆB°5õ×‡[OÕ-í¯­V0®Ìù{]PvyJÚ›J-´g$Û±ƒâ\'P¼¸ÐÎd‚¸Gyd”†eÁqŽãù×Ienšf«(Q,Ë;gp\\ˆÙÝëtÈS«ÉK¡¤U†²«˜é‘L‰‰ÜƒƒŽJŒ‚=jË‘dÞ¥vÞå]^ÊYô«Èì—s2aX§>¹õ¯ñ¯‡´¯øZS j77*ÈKÚm¤ûžkß˜àg ÔŸJòßéKyªÙ’	¯nX<{×+\Z)#ÛO®+¢ŒœLê-S>tÕWÔå’UEg ƒÓ°¨åÎG\'Žƒ5Óx÷IºÒo¬Åá¥–\"ûâèÃwÎ•i#Î=lV\r¾¦šXG<Ö®n·7ë‘Ÿî¹\'\0Õ9-XH¨q€E^»Ðµ;+{-»%¾v‰ã>•I-›µÆ;Rš÷LWÒ^í%·Vó6ÆÁ—w®}j‹\\´ª7»p{ôªÂFv†qZWv)¤W¸q&Aã„8éR¢ ’{‚W3&±$Uu 0 àŠ½<q¬h«Ìœ’sÇµV^Mo¬Ô~ ¼1yOåJ¯ w2¨bÄtæ·,n¬‰n#pÜùl¤(=zþ•È[4k02E½C\rÃ8Èî+bÂKqÐÍ`êDN[jÂ¬å&hêYÆñÜDc¸8x”ÄžãéY:’´Ä^3¶L•“?xVå†Ÿõ¢«\\,7*ÀE»î·<‚Gz¯«/Útý—vW_Â .\0è;ã×éXªªé\r­l*»f¤EB=ª(²§8¤Ï$\ZìµÑ$¥·qÐb€f‡§4Üc=êEÜÒxÏJ,&AŒãŠ‘ão³‰HÂ“Ššê(á}»\nžÚêÜi·óÀÙw.ySÚ‰JÚ‚FAõ¥ÿ\0­MÏ^ô€ñŠÐC³éNê)”å9À|ÑÌŽ1• óÒ½4<0ém±Ý*+H²†sjóàšììì.n4u–{˜„•‡ü³>ŸJâÆE4›eÁÛc¯²ñÍ½†™ÙWdNVP¬˜½²¥o¿ŒîgÓÌ2èó¡e@ÃØ×#áÝ*ÞYòæÙ¤EŽŠ=ww½uÖvrË¤ZÛ¹ƒË ùKÑ¤b8l÷áb4íc¢:­LËÛŸí	‡ÙôÕƒÈ4™Sžþçµgë7·oV\r¢xÆÙH9VR8ÿ\0õ×C¡ÜXÚ½­­äbw¶-n‘‚Ìì2y=;šàu½U4ý,P•½~ee’psÓšªuex¡ÊI#+P‰´©Åœ$¼Ç	ÈÎ:V|–ÓÍ*É+$QÉÆæàm=ên®WÈº(evóœúÔÞË´Æ\'.¸¯n&½NfÊŒd @=jH~øÇJŒ™§!Ë+±lA§u/Ÿ±QäØ‘€w‘ÔuÆ+=×æÏj~ãïLg+Ú•¬R&\\¯ãšaU#¾áùUçk#§ªGÆóvKdlÇj“LÓc¿¼)uy¬J3Ÿä=ë)T²m–‘™•™Ux99èkVïPž»„»+%È7ÄØÆ;u­}Ã\Zv±2Û´óÇ36¢î.r8ü‰5SÄz\"éºˆ‚Þ=åCJ˜cŽ¼zW3ÄRœÔz•ÈÒ¹€§ŽzšF\0@ÍK$/\Zn¤‘Ò q´àýz×Rk¡$J\n’A(\0\\ôÅ)™¯bßM»žÚ9E´¦b8È÷«ðY=©”Íeæ \ró8ÁÇ?ˆ¬§VÛq¤ÌÝŒf\ZŽ3ƒÀ©Öì0 I.ÝzTokÛ³ÂÒGÌèGj¼Pœ,ÇrDIÀïO™=Gª`cl±È\'ŠEfU,£ƒ×Ô›kK­\r[ÉYÉ?4ã!Ñ±ß¶9WRð½Þ‚c’õ’KvPî‘Jàz\0}jx·Ê÷SnÓÅÚcxr}6[9#™âŽ(ÝíÊ±;Èõç.Ÿ¬®—|ªúœ·6Þg›nÑ¨.#;çÒ¸I$B‘4]T|Êyæ§Ó/>Çx³‡Ú\rËŽ¢±åq+ßÄ+Ïí¹–f¿’t1å\0gºãµys!Fe#k½7v—ó\\»\'™<ˆ²)#€Ùçð®[Ä°ZE¨ƒdìÑ²üÁ†a×JÛÛZƒwfN0zÑ“šnr9¤-Žk¤d¤³&ìT‘ˆìÝG­F³móéNdŸZÍÜC]>olÓü’Ù ¯œWt@ƒÅDïÀÄ_Óä‚Õ/EÌ++<xŒç”läP-Û4Š˜”ä)=*}R\ZeÔ·Ú‚ÈÑ…”d)#‡¸¨n­ãI­äó@Íò‘‚zÂ²zIÜkS§ð{éK«[}¢k¤7\ZùqÇSë]ßÞÚ=*QcjÐÇyûã¹È*z`sÎzã¶+Ìíô›—±µ½îK/–¥˜cwôük¦‡^htï°\\éÖ›ä<Sœc±éŽ+ËÄSýêœ]Í©Ë£9Ë/­l$Ô-·,A¼§`pr{W®ü<×î®ì­¢šödòeÚ0Fã¡ù¯,šÙ n@Ëå”ö# ~µØx.(ðÂ“þü)xÃ.6:Ò³¯$ýî¢‘íVšÜW×³X´¢+˜þ_*BcŽ£EyÏïu[Ë{ÂËv¢ù†ð;“Ítþ²Òçi`º·w½™ØÊ¬2T÷*GøÓ<c¡Ã\0ðþ™i²öá<Ýàçj/R}óP×<ùàˆ‹v±ó5æ]ÜîÈ­t^\n¶‹ZvÐîîåmÑÈxòÛ¹ú\Z¯â->;Ù-âBž_ÊÁ»ÖºOiÚŽ¡uiq¤$P4qmº,]½Ûñ»å.jVØÒ:3/Å¾\Z0Zy¯lQäf¥ÈÏv®aµÛÞ¾£ñwƒàÕ<\Zï§EJc“ü>kæFÕí÷,€†S‚jx\Z²k–{Š¥·FiëAéJ9ƒÖ½30Œb€9ÁéIŸzpþT\0‡¯JPh4)Ã‡JrŸ˜˜4Ìc4äÇLÒc6I³p©³JX‚Û—¥V¹´žI~D.Äàâ´4mi4ÈeŽ@ó)I$uÜvžÂ¶ìô=jþ4¹Ò-\'—Íp\"HÆK¯<ç·JÁ\'qîqío4q«H¥èHÅ~ïvìõ¯Hÿ\0„[RµÓÒ÷C´³dÉ1“¾gÍÏ×›æ¤¯ßØ~é9âªMZìV³2YÞ4-…uç<ä\Z®ÄÊFîéW­tûË»©a‚r€“· ´WÃmnP’‡ºúæ¹HÅê¹—¥Ìmnã‘ËVÏÉŒçñ®·Oñ.§¿fÓïf„Kå¯Ýcžà×Ñ5¼Æ9U”ƒƒžÕmL!¤¬$Ï\ZÚùetL¡tzêxƒÄs[[jz«[ÆS“°éœu®wÆúV—>”ÓÛj2ÍxfÐú‘Æ¹+}JWQŒY\'¥h[­íã-¢y;|±œ|ß‰é]5*Î£V–†IXàdXŽ´ÃÈ«š•´Öw’E4f7r\rSê=é´Ó6Z£è˜\"pÃ#ZÐ$(Œîµ+¨Ö°6(¸eâš¨Aë×­ÈCqN…·GZ@YHƒ.:SÖ×4ÝØÅZ·$þ4ì%¶µ‚*ÒÛŒ…QÉô§Ç W\"·fäö [Q˜If\nçæ’HÜ•=+¢’è3•_ö¸¬¹ /•ýk‰«Ï-ÊAb)TàH½XûÖn¡/Û5R.ednÜ8«—Úi¸W–Ù°cÒ¹«‹9	([ 3!ÉÛük’«¸¯biåŽÞïì+w!©e‰õ—í0XI(•ÉBqwÿ\0ëV©aya$k\'˜22›”Œ¢³îgžy7Í#³—ÉëSNŸ4SNä»³¹×µë}OJµÓÞà‹xFýÛsóò\0ÏÐ×Ÿß¥üd?\")Ã/lûñWu\rLÜiñÚ¨\n#}ÈB‘Žy¬_6Y	˜Žœô­ãM½É·FmÞj\Z¥ï…ÊMulìH eÌ²\'sŸn:Ö&¡wlÆ8%ÓÖn‹\Z˜˜rzÇõ«Ñ4pÏÎ<Â§8=\r/Šu5QnÖöÛ”MŽ±Ž9É=ÍM:*ËfèsR®ÕR§ƒÍVwÛÀÎO¥6Ye+´óíÒšŽØPä=}@®Õ\rìhiS¬±»ãa8lûÒL^9æŒª¹\0ŠŽ4RQž*Y$Äv¯$`Ð ¹ù‘:3\"MÍ3ÀP#$g¹«fXÿ\0‰}ª#8åG¸ì	QÏz»ºyd‚2*“L_·$30 @îZš2ÑŒâ¨J¥š»$Ž{­U™˜žqšw%ŒS†$Fá»8¨Àç§w9¦!ù§žzu¨yÒo#¥0h²ª@ÈíQHÜšz>îO\\TR¨ÈëÅ\0 É9ÎiŒÄð;=©ª2Ù¤ä*sLÞpZžø+PHp1@È‹n&€;Ò\0:æž:R¸\0!}jÒ¢®¶:æ«F	bÊ2AS»îZÎLõvŠEu8 ä{SãºuºYAÜÀäîäôªÛ‡9êi¹(zóü«5®ásXÝÚ†™g´ìVW)‚{ûâ›kuin]<Éíga÷G¨÷¬‡±\0žGz@sÔ“éTàš›Z³ÙG|é§K$–ØwIúŠËy7ì0µ1IÇ<ÒãåéŽi¥d\rŽ@®3ŽxÉ=é]©ebÍ“ÏµF¨ŽHS™¶©QÁÇ8ï@˜…AE8ÁîsQdã‘JÏ“×ð§\r˜=O\'Ò€,Z§Ú…#v”œ€:m’je- “×žÔä¸’Öà½´®¿)MÃ‚A?Mg\Z\\JÞj€¹àúã¿§ãPÛZô‹zN³ý›i:Egv$$ü˜ôÿ\0\ZtsO|ìØ–iS“æ1\'Ÿ×õ«zVpui¬\'‰àvÝ¸´%Š¨ä:æ¤ñFŠþºµŒÉ	™cå>ìc\'ÓÖ°öså[°ÔÍÔ->ÈJ´Á™N\0ç\'ÿ\0­M‹P¾ŸO:x»aiÄ,ÿ\0(n™Ö“SÔ¦Ô%3Üªù²rÈâ³3´ž¢·K™{Ác¤‡Äb;‹a{kÈ¶È§Áä÷«çXµ¾¶µY&•~ÏU°Gzá÷•~„ŽÂ®¦cEcÈaOò¨½Iq:û›­FîÞ‹‚ñ>dq=³Àæ½‚ÂÞÖ×ÃãQž	a’ÕŽMúd¶?ï~óÞx–wbB¿)ãï^±áoˆ:hþÌÓ/žâhVL;LE åHõçæâðòº²ºÐåu™¯íï…ÔqyPNÆ·R€7^å}k±Ðô¹õý.Û^‡V‚[ûdÉ·eqŒ)oöºœ­u)û?‰ô;{\r*Ëó$”®Ðƒž9çúÓüá%ðýë8¾Ä‹å,J»NrI,R	àõÅrÕ­îÅ-%Ñ–· Ñ¬­¢¸Tùºy·Ls q×¾sé[šÖ¡‰m´ûÛÛK~$¾S89<žõÑÁcae$Ò2òí–y9>‡Ò²µ‡Ô%¼W0ªÏ0#*³É?LÖ¼÷¸ÙÂÞx¶HÜ‹ä»·¸N‹ óanƒ¯ãŒÓçº°Ôõ*öhçžïËS#ZÛ²ìtì#ß#šÛ“á}´òÉPKæÄ¹ÀÁÉ$öÏN*K-9í/ãÓôó$¤¶ÓÈˆå†zäqïÅt¨ºiÅ§r“îE\rî§¦=¬pÒÈ<èšRÒ\"ç\0>½½*MvòêI¢ ¢ÄAs¹óžsþ©ø…àÓµÏ´Yy¨Àþð‡9ß¯<~UJ[á¨O=ÃÀÞl•;¾ï<çŽx®ü=)I&†¢Le!¶*€8\n8©$d~ßª6îÀ}:Ôò0Ç½­ Åy\"S´1QŽ‡¹¨ÅÜg\nÓÐóÖª^´Ú²fºòÐœŸ­+Ô»Ô£+œ­rZîç`}*¶­{#.ðÀàö5†.|ÙóÏ®iÙbêRñŒ·5›$ÎœnÈ=*k§cÀ5›+–ùs@ˆ$–E¶ƒÇbkFßÄ\r\r”êÐ,“L¢!+ó„\0‚?QùV5Ë3\rÄŽõxÖ¥?8$ñQ8Ý\nå†Ô¦\r!Ü	fÉx8ªfRyç“LYŒhÊ¹äUËk%¸ØUV`HN§ßÓ4’Q‰ktÑÈ	R§‚JØ{Ó*‰¾ÐÆSÌ„žMBtud·°M#J¡_bä,°˜¨.tGMÔZÂò\'ŠáO1ã-¥.x·`¹¡4Q¤BU¹GeÆ\0ÎI#?¥Lúã¥¼ñÂÖÆGÛ‚}GãTË”—±ãÙº,®ŒÕ]FxÏîATnqØQwfè´;¨ü¤cs<’cvò«·Ðâ¢Õƒ[ê£ð®W÷g+Ÿj“O.4xã†%Žâ e2;ýñèc½È¹¸bÇ˜“š´›·Ò-à:t+tf®\"-ÊÈù þþU’oÚ+¨Š@?snF3Üz×sy6iàÝ\"¹Vº±€QC´$üÅ¹Î+Íµ+ÈF§pñ;Ê’Yˆ<öô¨‹æcnÌKËùd*ˆÎ2Ã(¼ý=k\Zy1q `GÍÎkA¤ŠI9©9ÆÓY3.fbÁ=Mm&î8ç5,Q–Æî?\nj®Bcõ«ÿ\0{q[&I³aæ‹u…&Ú¯œ®x¤ºÌ¸.r@Ç4–Ò|Š\0ÜBþ•@ÍÎsÞ¢ÊàH¶äõ8©\nà\0zw¤†\\’OCO”8êk@#ó\nQÚ«\\ÈYK1Œþu#: æªJå¹S‘ÜRÜdðßy*eÈÜ¤lÈéŠ§4­u3Ï4›œå°Ç½:ÞÚK¦eEÈ@Y†qÅ?ì2´Lc„¡s)\'3×˜\"²n)ƒm	ak3• 8SŸÇ?Ò«Ü^HÑ¶\\–`û\n…Ñ•‡BO·­dš}£[™MË3‡ÆÐsòíü(nà´)£ÙlÆ¤r’dãš®ÀÜ0{Ò£eÆ	õ§@5H’â8DKûÄ^p1Àà*0ï<Ã€\\áAéI00\r\'Ë´ cŒqV¾ÍäÙC,lŽNW+Û5ŠZˆF·ò$dyTÈ´Èüé€0— áXÕ¨téä¸-´‘ëŒÿ\0*[…Š8Y\r!9ÝªW[aÔF¨Æ;W?{;¹ÿ\0<VtŠ]ËáT’x«WO….­¦n2Ä>S¸c5Nàã·i\nàVÞcäóHZ92_@)¥q’)‘©E[¥ñknšt’8Gl†>\n€pF;ç5V!\0Š9 |àc_­A&â0:zSv” Z…º•rc3ˆ¤[÷o÷ÔJ…cRAêtw_1Ñ°Jm8EWoÖ­7°‡…e$™íV#‡~	ÍE©#5u$qÓ4Àµkj‚TÜ¥—# u\"¶Í ·¹1++ÆWœV~‹×z…¼ŒÉ$Š«õ\'Ší|S¢I¢jÈ—+K2y­·¶É­#Å²[ÔÁhSaÉç¨ªRù ªÄøvl{U§rF45©{gR¡d\'åÏRO@+&Ò,šÞy´ë›;{ù[d2.ü© äätöü+œ½Ü^¼¶UØ¸û¼ô÷âºKM\nûV‚HîeHÒv˜nR„1Û­M§èZlžßq³í¦9L\"\'&FpÝXv\0ZR…yÇßf.q‹8®Vm…ŽÐÝ	âžÑÇiÍhizÖ­|°Eì	PÊI<Æ>•%¤vëMk®ÛÏq‚’ý˜eÕ‡|\Z•k³G-Fiþ$þÏ·šßËóx\ZŽ1žŒ=úVjK¹J–%¹Î*¶«KÉe¶Ü`.|¶a‚G¿½>­¯š%\\œåqÈ5\r«h$­©&î”Œv£ëQùêýxÍE#–Á uÅR(±ww=Ë«M#<€ŽN;V–…âýgÃr:i×\"1!@g¥¬wïŽpWqF8öªsH…6Û\'÷‡z™rÔVluú†¹¯¢Í\"Ž1¸`ZNs–?^+›¶’eš{Œ‚VË&9éÇµS†Va³\'$c\0Ö¥ÇÙE„1ÞÈÚ€b’G·øqÔ\ZÊ4ãË39§‘‘ fÜç¨b,&Bƒ)àç¥>DžÚT‘Ôîí¸u$.#q,°–QÎ:f¶è.§ª[kºlz^›!Y~ÒbºYHÚrwn¼Ö¸oé/¢ë+m 0.Œ½O ÖB©¹`S*}j-BòâúEk‰žf@3œàÕÍB‡³Ó)ÊèÍ\"šGôöÆ1Þ£ú× @äàæ‘ŽMÁ¤cƒ@Dø ƒƒœæ¾¶ÒV]CÃÖ’5¦¤ö—/!Û`ÆñüCŸ­|ˆ§‘^ÁáŠSé>\Z…e¹Y\'´Híã†L’Ñääp09ô­ ¯¡2=—MÔ5Ûr Ö¬„ÝºòÝ·#Ðíê*ýž½§ß^ËgÌRMUGÉÜv¬â>…ªY[É%ÊÃq(\'ìç—È8Æsé\\¦£¥jž ñu­ì·RiˆçÉ¶’%Ù3€K|ÿ\0PéŠ¸Òæ¿2±VÙž±$ñD3$ˆ£8Ë0ÕiµXÜÇ1+\\™|‡?ít¯7Õ|?â;/2HÒãV‹í&Xó6ÙoBGFü1SÛj·ÖÚMÔÚý© –k[°|Ë~Äýiý^6º•Äê¾Çe«_Ö£•M\\‹ƒqÁ/=\0õ¯6×å‡J½—Uwiüô&Ò16V®ÐŽ=Z°ñÈºÒ¯öéÒ4ß‹€’` /aœW©´SÛÞ\\ÿ\0fKå*º‡óÇÈìp¬G·ò5„ª*mÆpž.ÕcÕo‹ˆäÔ€W¢çlÝ«kÃÚÒiš<]èoÓÞ‚mÀ»vU·Ã÷íVüOa ÅàHçBN®Ò#;F	F=\'¡õ÷¿ð{E:ç‡ïc¹xäÓRg[‹g$g(\n·ù¬©â=¢rZ\Z¸¤¬s·Qéºµ¹ÖØ=´‹\"*BÃåpéŽçùÖ]Þ¥<Ò£]ù’X!ÞB‚=ÏJô]oH´Ò|<mô™yƒ•u\'!v1Ÿ^+Ïõ)\"¿4P;D‹¹£#[¹Ù®	Õiót-FËCš‘C¼’\0ªîÚ½µH²¼–¦ø\\î<\Zl–’¤\"á‘–&<0¨€8ã=«­Y¡lB\\8ôâ£ã&¤œšÆÚÙ–’vä“ÎYFÝÁûÙªÖ“4S|§ï§èk]l3w\Z†P’r…Î?g6–ãH-.d´‘eYˆ(êàc¸®ßJñtJ,µ(¡¸šâ@“ !}1é×®>T3Ø 1ÂžHùHûÎ	ïôª—79ž#ò Œ*«\"ãÞ¸ªQeªÚ:Õ\"kK%²¸EÙ<\n»Bã§ËŽ¾ýëŽo¾{ó]¶¯®i·öE¨ZÍupaÛ¢¸FÇ\0Æz×))w(èqŒ×FrÓåìxQÈ©£rq¹xÏZ0÷Î*HËG•a;×CØE«d¶¸¿Š9§TBÃ,Üž+BûN†Îò0Ùo:‡ö©ïY$)!ðEZ¼–Úà™!YcŒ(UG}Ä\ZÊIÝ¡†ãk²ç88ÈïMéNq‡9õïLï]+bGç<äf€i01Ò—©ïšvàØè×­-ôeÓÖcÓJ|ÀOË08Û×¡óèkÏ1Çó«šm»ÜÜ: bB–ÀëÅc^”gH¨»3è]:æÒYŒÚj¬m$-¸É(&AÓnÁÇµ.•ek-å•Á·	sÌ g…=Åy&°»2Jò$¾^Uºäqô®žÿ\0ÅxM¬M³Ã4…B\\8\'ïdQ^\r|<¤ùi³e.§Oã[é´ÇMRÎæÚ+h”¥¼hà™	ëŒW‡^ê3Þj2ÜÊÞCÜ*Ñ›EÖ^Ê[‰$_*3À/×>‚±£¶¹¹˜E<Œ£¢Œšô0˜hÑZ»™ÎM\\E,Rímn¸¨†O­Z–2q»–îj¹ûÍè8¯F-Óô;~´Ð2*Eô«@8“IÁÆh<ý(\0’Œ±<IìI­a¤Èd¸ó„qÅ€	îjÝ½†Ÿ8&Ö«—\0$¨ƒqÝÏÌ1Û¥V°½k{{‹Yc••‰/®2Ú­MWƒHWsoü¼Û MÈíÈÁúW•ˆumkØèŠŽ…FÔEüsXÍ<mæl¹YXŒ;ÏáZíå·û%Ì·97J%1ö€Gšn¡ãYcx5vŠÊå®¡Ù,`m!‡BG¨õ®w[×õêv±\\08o.À\0&OLãù×%*ugUTš²ENI+#þö[ÙÃ°à\0 Ûð«6º3Ýé—qÊ»mÀg®§­LÖvÒÇo4î²î+?É˜8È9çÖ›%ÌvwRZÙJf…¾PÄ`dðMz.~í©™uÔ½áÿ\0Þé±3)k2	ÚFvúý+2÷PšêâRó–‹ÌfA“ßüŠÞÕbƒOÓìážVU·CÄ#\0ž2Ãïd\Zt~»¸–+½6Ö;¸\nëä“Œîöâ¹ãRÜä¬UºxvÁuKÈßRœCkqFY%‚ãŒ‡¥zl¶z]å”q	 ’RbÜH0”<žzä`T7×Ð*Ù)²\"òíç¸>§žµÜøQtÙ<7n.ü©n|ŒFÖõVÏÞõ®zõeMsôìRŠgàß¦ƒ©\"ÞÛ¥Íƒ7ï¡`F1Æk¨m[BÕô×ŠH§>\\®WnGÃŸAžk˜ñ‚øoÇ7–rÂ­¹ò<nTþ­øBòÒúÖóL’·Ô¢Ü¿e$ `0Ëô=jª*S”g{_¨•ö9˜4ËBò,ó4rn\n¨¸bÙî=k?û:é¯¾Ë°¬¥öª°Û“štñ]hÚ˜†öIÊO\røÖ½ÿ\0ˆ¬îçŠF†I	CµQðÑÃ$sŽµ×Í5ðê‰v±›5¥Ö›pÉtZ7Øèx<U=F4–RÐçCrs]£«Ç©èXººyu1[aˆ`€1ËõÊ—ÚÙó«¥Ìõd•?‹ÅÉ¤*7Öœ#\0g5ÕÌ\Z cž´±Æ)ÄàôÍ³œ\nB,@ÈÐ°sŒtãš‰Ø)\'o>µ\Z¾\rJ¡œìaÆA&’-yÕ@ÈnÆ½áž‚š¿ˆ¦F²iã‰˜fápFx<çgÃÿ\0\rìukFú”w“FL>I;#|ewg×‘õ®×EÓ/|5â;+ËØ#´·º‡Ëim”•y aü9Ç5Ç‰š”M\"šw<ï\\ðûé^›:k(FaÇ•Îzþ\\ŠÀºžàÜÃmq˜U2ÛO ý1^ÿ\0ãO¶£mvS=¤S¶ë“ ñÁÖ¼KÄ\ZÎ…©„žW,(þ«ØlW%\ZŠJÒÜo}“Â:}íÔ2k±_“@à=‡ò­¸bµ¼Ôí¥±AjðÉ·ƒò‘éÓŒŠÂð@Ðõhíí¯Å\'Ì²ŒòÇ$©_ÏÙéú%¥ö¥,Z>©ã0…Uùˆ#=‰¡®j–Œ›kb×¼¬wp®™¥YF²þåðÎv›=ó\\ì!¼½ûv£dƒíWÅhåw(3ßÜ‚jŽ½¤ßjzZ³ßfx¥[]Ñ£–Êúõ¬«¨×I{«+Ï—J¶ƒ»l„gœöÎkÒŽ:„éYFÌÆå	êyž²“êÚ…Äç\nåw²žÇ½tŸ]-&žöK¶…aÔÄzqYö6M®\\F¸;#iÈxà~´¾\'JñMÄW2ÇH]wõC‘œ}qø×-Y¹Á¦lšRÐôÿ\0\nx‹3É¤E}opwH¾JðpOÜvö5ãŸô9ô¯]Ã\"íWTÜ1úù®·FÑ\rŽ­-ü y±°U~^O©è0zÕ?Š×qÜÜÚûæHÂÈ¹ÎÂ=ý*0óå¬”vZjy	á½ûÓj{µ&TðzÔ9ÊŠ÷bî®d ¥ŠLQÓŠ`;RcšpúÒœ\n\0@¼NA÷¦dô£s@‡³g‘]§Ãÿ\0j¾Ô£[y\"–ÕÜyÎÇn:dÝk‰ö©í.žÎo20™*Wç\\ŒƒI¤ÁHøÓÆši€I%¨™Œ`™-¤Þ¸#Ö¼’?é3_-´Ö’A§—,J¹,§×Þ±¬/ôÙb{k–7‰àÜZXi/csªNQ@_&ÖÔ|¬Ü}óíüê*¨MrÛQ¤hÝx†\rZ¶“J¾ŠëOvW–1åOá]{\\øXÊ—0\\MÌ2êÇvÀsòúsÁ¯\r“Ž×xbÞÒïM–Iï%¶ˆ€OÝ?N¹ü+ÌÅ`ÒŠ•ÞŸˆ+÷$ñThu9g€´HÇdŒ¸ÏµcÂ‚Qwl œZëõ­In´Ã§}	·†÷œ~\0W¦_­¶©•WËfØù\0ÿ\0…^\Zî:­†ÝÎŽÇDÔM{öµ\rjs÷Ž3ô÷«R<@É‘Ž9ê+oJÒïoã0Û\\3ÀÍÊã)ëøW¢éÞ³ŸCy ·’;•PNÞ úVÔê\'>X½L¦\0ñ,m)[€‡Ñsc‚kÝµ\nÃŸr/ (Ï`Žïžµx…ÜEÃÇŒlW\\*Ê¥î­aÁéd} $9Æ3M’FŽx¨´ô•ÎŒ}jü°r:~µ™ÒŠ{Q£ÜWæ<\n·@¯NiŒ…Ÿp¶*Ì9¦_«‘@W©Bç½YE8À³a@5¡\Zå7vª0¨‘š°fÂmJL›—ÞHÚÔ¦À1Üu®jîDI™ˆ\'Ú¯É;ì V%Ì¥³Œzu¬š°•ó£—k…îïN°ðýÌ—ÏÒ…sÜ1µGÉi%Æv’3×Zmfÿ\0O¸yþdQåA#œw#®+ŽµŸº·&LÑñú=¹ŽKV\0<Œ‡\0ýkÌnä€¹XeÜ£¹­ûÿ\0ÇyËr‚}Ì»£.A`:ÅA£èZ}ýìq_,¶±\\:”‘rIø@?ÌÖxh*1°\'c’¹i7Bsê*\r`7zz×a¬Yhöšœ‚=-­Æ1&7¸än÷í\\d·$3ªÊy¹5Ù\n¼ú mn$ÒÉ$*@Àäõª¯+…ç©õ¨î.‹6×-òð9è*#\"²žGZÖ(W%p$#Ö¡\n¥Áuã=*ÊSã‘$mÍÐvª»%»èZ\"n¦4*rÙ?J£$¬ò’~eQÅXið>UÕMå1žª€$E,¨GøÓ“8éVw, îNO¥5x®âliE\0~´{Ñ(iŽ1Ö¢l„÷>µI¡Üy•zk1r=j5lT›€\\ÍP\\hûÔ3`òzÓIÏšO4\\C™¸Å*•î~µr\0)|·$Nã,D@#Ö’QÔÔ²sO2nÀÅ$Š„¯µ7?>(põÅ\081äöYŽìŸZ•³´õ¨OÞö¤\0qÅž}(=3Ú„RXw-ŒÜ›I—IÓ,nå@Ïx†UŒŽˆ;Ÿ­e3¸«“j÷·QZÍ;<Q\r±©?tw³9$’d¯}G6º“uëŠfs×µ.âsÇJP¿(8Í4M†p;~4ôäL#¶x©8#ž´öáyëÁ© ·{‡òÔ¨8,p)&UY\n¬‹ \0r½ôRÙrì{Ž•@28FòÞéW–¦µÛÝÃ@ˆ“¼ã½óÇÒ¡Ó!óo\"V\\äç¦5ròÞk­Fùí¬Ú1’\"E$ ô¬§7ÍÊ˜®îa<’à€Öº	Õô‰®&¸e²P€\\õíëïXXù\0\"®9®»a#n1‚9Ï­[Ò®Å•üS¼zÄáÌy#v=ÇJ‰\n€¨÷5Ôø-nmüCm= ·f@Y’a•ejkO–›mÏIÓü^þ/7ÿ\0gÛÙImO­ûÃªŸâ\nã>%ëVž(Ý¨ÚZx­v a2³g$ŸAŒW¡*XØÙ\\\\]éß`¹Üœ™Á(ÃQí’k„ñnŒé¦[ØÙÅ»¤2¨\nå²NãêyèkÆÃM:ŠV°åÜàm~×¬Ïkm÷™˜F‡nvŽƒíÍ\Z…þ›¨µµÂ¹\n”%@ÏaÐŠßÐ4;˜ï\'šKYÌjZY¡p¬§¶=H=¨×uô_=ÞœÌØ\niþwfÇÌzHÅzžÕ¹Ú+A\\ç/¸£¹µ¶0ˆURD¶N>÷>§<UÖ\"êÞ%bY*gªzƒß®)—\Z•´rJÖ–Á¨²·0ÜvÍe³LÛÛ,Ž{{V©6»¡5àu™Ý”)Ï!F\0úUïÝiðß,šœm-²©ß\Z¶qÐZµáí>}yä·kˆâŠ1æ<’®BžƒÜöâ¨Ei-¾¤±˜Ú3‡V\\g¾hu±{Šç¬ëzøÔ´ý_]LÆÎ©2@Áõëôé]ì¾\'û,O~åÛU¶‰UìdŒíny`àsõéÖ¼8ØßiZÂ<³òÌ÷òy©G1^Ù#5Üßx×UÕ¬Ì¸·’Æ>e»‚ÙÓË€ó÷º~5çJä¥X=qµ9ntÉ¤’Þ;i#‹Ìe’@W¦rê=ë“–ëX¸oL6öè î®èüÎ›øçnÜþ8­]gÃš–˜dŽãOZÔn·•6¼kŒ}µsþiîdÔ!‚WXÞÂ8ã$»Hõé\\•isTç—B®Í÷]²·²Kød¿ßò® mÀ–nz`w5µr¶ÓÄ—Çt‹µP¶XÙlþ¼×wqq¢k°‹<»X~R^}¨ìGVŠ³¨k:ÅòÈž_”ÄþìÆåä0ÇQïZò+¡.¥§Cy¬N´D–ä+eqÆGõ¬Ã·•£S¸)ÀoZl—2ZÚ˜$Aw9ˆ§#þy5Vk˜ …ØŒ|ÁC^¦é$3GíxïSG ”V2Ïæ6ó«ÖÒ\0Ö·™òÈ«š½ó0üu® áÍ`êQ„V9¡Æ]¸pÊr1XÒLao˜ô­‹÷DcêzW7z­æ’V¤–Y’áˆ!ƒ1UZF-É’%·fó9c»\'åÇoëQ³²œr=hJÅønpx¨ãŒÓ³–ã§NiŒ‡n}1CÊO9© ‘QÖG]ÛXî*²0\rL-Ù\"b\\mQœRímBÇ^|mo£¶–´M¼F;_nÝÀp?\nÀÕ5–Ôõi/¥²8çsÀãŸÂ³e‘cHÙ™¹P&¥šÖå<ÐÈªÝåx\'Ò³Tá/Cª<’,ÓËæ´XÚ%Ë`œUËÁq6È‰0£1@ÃMWäºi (9ÇÖ´Œw<W8ÓÑâo3	‡	)TU~K\0ÙÈã½1jêŒÌÌ\0þ´Ã±œ¥Tp{ÒQB:¯6ó]K(ž6O)<±å€7ÎsÜÖ[éó	¶>Åb2Ç“LP’ÒÀ­½Ûâq‰#ÛÓ9üêíeš%ŽFÈT‚01è1P—(Æ¬29Ž0¡sÀ\'¥SZ9N	V ã¥h,ü¬lä¢gicÓ¾+6êðÏs,Ë;ONjàîÄ9HœSÌœŒwY$%pWò§3å@žõ­€Þ²†QlX€¾jæ3‘–ª.Ø\'×5•q\'Å*¶ì\ZÔ­,XGÙÔóS‰ƒ/j¦H\0‘P™²p	Éªby·\' fP	íU¦lÎH¨Ä¨É°¶=\0mé­mqÌ“ù7,ì¬ì7 ŒŒ=jÕÛLÌ‚e@BÊÜ`WÊôø<Ë’Ë\"+\Z‚QˆàÇ½eÜ§”UxéÓ9®f—5ÂäQÝ=±dB\n“¹²88¬ûÙD¿`\\’p;UÆ\"G Þ©]ß«µ}+Tµ\Z+ù›”ƒœö©\"8\0ðH==j&Ž8©-ãiæX—;œá@­Â7eki„*R1 ¶sÇ<ÓíŠ§Í>@þFF*„¶Ói·&Þá\nºžsÆ?\nºñ1‰vày5’ˆ›\'¼[¨îÃ‚Žð:{\n¬ÿ\09ÝžsAfr1$W\"€>õóMÉõ¡F9^6Ü”ž\r^}EžÈÛ<q±fI·æô5\nÃæJÊ¸Æ3ÍH‘î`Œ>aÍÃÜ§Ÿ›vy¦Í´ŒAji!ànžÂ¤Ai%”±Ë”¸R\Z7!¹iôõÏµ\'++×3\\È‚î\nª \0`UW‘Ž8«…$µ• ¸ìÊü§§ãVcÓ!“J{¯´ ‘_jÀÃæaŒä{cñ<é×3UÐ[²€Á‰Ï=?ýuí½jü¶RÅ`.B)ŠB@ù²T‚3ÇnµD)cÈÍi\rÜSô5b)pÏj€ÂAÛÚ®[\"÷ç*€è|=©ej¶wû7›yVB¹Æpk½ñ>¿§ø·UµšÚŽO#cäÿ\0súW Ámq«ÙÁw#Eo$ª²8*=q[ºýœPkWqi›î-â@ìñ&BŒu8íïZ=)¶GÚ±Râò‰âŒ|ÀðØëWmšÒÿ\0XÄRâ$£“¹Ç_N1šÉHÔÍ¬wél^ÝÉ\nAÉ>øôÍE$S¸Ê VÈ\'p?:ân/fZgg=¤:uƒFæ	.¯ÛòCè2k6ÏJƒG½Ô-õ)&Šâ*$·‚†ö\'ñ¬!£1‚–]Êìjô,í;Mpí*ù$t\0þ_¥uÓÄZÌýÙkÂ÷çCÖ¬ï…ÂÊ¢]ÍûØår?j\ZÍ¦Ýø¢KÝ;ÍÄÌ‹®ß›<ÕI…²Ã±@óK`ƒëõô©í<:ó_*´²UUÄ0ÌrxÀ5„ñ	E©\rÃ[£]0yBØ ‚¯¿ƒŽAô®yâe½TÞµÜxÃDÔ4Ëïµ^Ã0ûGÎãÛµ½3Ó5ÉÜ#)ÉêÜýiÓi«Çf	èR@ËÉ=*Äe’Ç€:Ð\";IÎ\rBû“æA•«\Z,È`ŽøTs)c•Ç˜H&š»˜dÔ21-Îw×5<¡rGd KàÃìkBÊÑo¢)ïµ±Zã†¯5ž6Nzã5wJ¼ûêÎª@Æ\Z¦iÛB“!{™Ðˆ¤rDy[¾¿Ê¯é:mÆ¨$òÈárFGÌ3Ð{Õk›A$òÉbŒK`i\\Ü[H6 \'R½»ÔÉÉÇÝÜ]u{¶—3A Úèv¸«H€(fl©ô®¦ÛDmpÍpnã/åù²±è3‚}N+—½µ–ÎsœôÎqE9¦ùzƒEFÖ=³MÈÇZs.zS@ÁÅu¡sÚŒ{QÅŽNsSDÊ$BFW#+ž¢ Cót­›-(O£C÷Vä@ÌGÈ229õëM&ÉnÆÁÕm•£›K·{x­öþðŒ¼y<’Ã¯=?\nêm¼{â	ÖÜGqÅ¤€d¤R9Ã8Éôï\\„Í\rß’ì«±ù/¼aH#©Ç§_Â¥³Ó¥’áí–å#9Ú²©áN¾•^×—Rnz%ÅmYõøfžcöD$Ë\n0!ùÏž”ïx‹Lñ#\\O8D¸òŠFÁYAÄG\\c8¯<6/¤ÝGt\'I<¦\rŒOJÓ–ïLÕR9$w¶¸ÁPvüŒr1Ÿlgò©ç›z\nI:úË\r½½ìHíP¤{¨9îqVmõ]:ûÃú¼®Và¼2[ý@8`=NJåß	+¤rîß+Áª÷+hcÈÿ\0\nâtÓÙ¬R±TÕ„²N¨|ÈLF$cpÎAÇcÅl|<Öä³‡QÓëÈ[¯÷X—Úy^:q\\\\áÓ±U­\nGMIDlÁœùN	öõ¤©EÁ¡êvzÆ³<òÜ2¸RîØpÞ„\noö¤7íäÄÀ:[’I:“Þ·ÿ\0°Ò=\Zîy-#à,€.ú~#œ‘\\’hRýº8tÅ7R²€Á0B±8Á®\r–]ìiø¦Æê-\ZÂ˜Ñ<(C¸È9ôãú×sm[\n³zäbºÍgQ¿†ÖÓL¼l¶NpÄ¾s‚Ó§Jæïáy	1ÆTûf«	Ïi=Y˜¸,@ç4É\0ƒ’MXH]¥hÂàr1Í@AT`Ãœ÷¯E\r„²J®:©ÍuòkrkMr,$qˆÕQ~f÷æ¸å}¸<×C£\"Ï¯ÞT‘F\'\01È¬qVæ.,èmMˆ[›4EÛ „<}“Á_zÀÕt=RÎíâ¾·ò¤UÜ8#ÔÅu¡±µ›TÄ\0˜ÀŒDH8Ao×õ­í\"îö;Iìµ¹­îàHí\\vàãi=Xc¥yÎ¼©»ÄÒK™@$™cû<…€CØÔn#\'šé¼Cm`šd7VRC73mÿ\0½\\veì9ëí\\ã\\×¥F§<y¬bK¶NOP*7˜”éQ‚TŒr:Óƒ|Å+‘Zˆž$WO½°ç4E&[%{äj8ËÛÛ5¿ Ù½ÕätI!3Ýs¹°~ï\\b³œ¹ucÜæîÂ} ”mÊÀã¾*¾sŠ××ôá§Þ˜Ñ•ãËm*8ëYàÖ´ä¥Ðž‚õ£½ éK‚zV‚@ëV,ex¯bhÙ•‹•ëP€iÑ’#öR\rLµLhíô™5=ñu+%¡mŒ&”–>Æ«\\\\k7ÒÜ]…ŠU»‰F°®ž÷N†m%Ñ¹BNÓ»œtÁW/uÔ±µ¬Vçt9gmÙëØW‰OÎßK©+\\×´WÔ´×’îyn1f‰\0´þ‡W¼7¥Yè\ZDºÅø;äÜ#D™O<7÷IÏ	[Yiº5ÍÆ¬$C/Ë™Â¯ãëšÎ×<ewª	`cP¯Êe‰FéqÓ=¿\ZÅºµ&á‰i%sŠÕÅÓì‡ÉFù•	É\n}jƒ£\"á†*Ô’|îÉ’?Ú95Y·9ù«Ü¦¬’2cf¦u¦`J3[¢IqÉ=E0HÈêÊH`r¤v5*©hr:ÓÖ¢ØÆ:T·p,iÜ¬)o1Ü’ÌÇ$š¿5ÕÎº-ãPrË´ÆŠp8ük\'šÁH9<jÜØAf-î4ÝD™’5y”«G&yÖ¹*ò&»šFäéwòæG•Cl•ßÙsêj]í,u4SyJ’pW#*z]ýŸˆãÑ´7}GÃþsÜ[“C.è÷Ì½y¬‰m8šäÜ1;¶ÄŸ^ÕÍJ¬êóFjÈ©$’hÙ¹·°ÕX¾—È¼’F/	åç9\réõ©t=LšõWV»’Ú&F …Îè=èð½û[M#Àò¤‚7F¹ŽAÅušN“¨j\ZæŸy<]UXc‚É#×ÿ\0­\\Õj:w…ì†’!ŸHŠóN¿µÔbÿ\0OXÒH¤Ä„qþÎ\rmÅhÞÓç´‚áâ¡[˜fEÉ”mÉˆè1]´Ú…Þ”­«NŽ TÍÉm›ÔqÈìEc®¬éÞ&i-¯ì¿³&A8@\0ÎA¯.U\\ýÖôÜ¦8½¶‡S±-h‘g|…²6ÉƒÁÿ\0{ù×A¢D&ð¼Sk·v$»VÑ—ïÇ8âŽÂ÷VÓ´ùdûÈ(ƒ¿^3Ò­hÚ]ž¡¢è7Q$×i\rõ©c…|¬\0ïÏé]r55®—œïÄ]>îÛ^[ùï¾ßßrl`€¸À#é]¦‡öëÉt{v$HžtroÜŒÓé×Ÿ¥Z½Ð,uo‡:µ½‘›íÎód‹ýiPN3ëŒƒ^wá‹ÝRWŠÖÂã&UP®F9?ãZ¯ßP³û\"Z=\rßé^Õ.­\"YEâ¶-yÌeAÆtè85™áýH¹F:…ÊGä°Žuçx9oÀðkÐt­zÃRÓaÓžÒHÙ`çlÊ³\0¼’£Œgò®[Åžk-V[-.šÖ8Ìæh˜hÈäžqÏkÊÞÉè>UJú€tûm_Øjfxæeh_§ÊA<u+Ï&‚D¸u9m­‚s‘^§×Ù|%=¯ïm\0ì÷#åfÎ©ìyé^}VÒ¬’Kt‘—aR2Bžwb½ZùâôØÇ©ŒäƒŠL{VÍï†îcÑÆ±î³ylàçkvÏÖ±yàæ¶ŒÔ•ÐthPr=M9[m)ÁÉ•¢bBéÍz—„>\ZÞÝ¥®«vÖËk4BH–GÀž‹žƒ<õ¯+ ã<g­{ÁïÝ]Á7†$ŒË6ÿ\01ß\"$ã€§ßùÖU¹”n™JÝNƒÂ–ž\ZñãÅe=”rÉ±á,p^ã‡¿¥z±{94Ù/„«q£xà$ÃÖ¸;¿ë]¦¥,Ë·š9€ñIçyHÇlÖñ8’ÒêÖÖCÁˆ’ÙÉ\n§»/¦zþ5Íç-P=è¹†YPÄ#{4F12’IÉôôçç?4¨àÿ\0Ji·˜Ø„Šz\Z±á+É-Ùä¾òåj¶æÎÒ8ùzqKñ.â­:%¸™PÈó`\nâqJºŠÐ#+£Ãíæ)t¶ÕÏSÚ½Sáý®®š¬†EÄWJ9û¹ëœä`ñÁ¯*\n²\\/qÇ5Þè^+Ô<5ö»;yÝá”WVÁŒƒÁÝk£	N<±Ü¹u>ˆµ¶´½1á“s£.0øî;õ®_ÄÞHnMäðXmßpQ±¸ŽÛG¯å\\¯†ükimr×WrÞ4Ò UËîºgÕkiªk0ÞX	eÓ–òÃmÜ{¿ã\\j“‚´Õ¿QûG-NcUÑáDHD%Úl\\+ïìz©?Jãt›+(|C-Ò³Û+³àŒ‚1ïÎ+GQÕWPÖÎÙ¥Ú	\'#i\rÜ·ëT®,?²õøíîd3ÆÄ\"Ì‡|¿\\SÎÚ³ì\\t•ÏNÐ`°ñ‹5»Fu}®›†èñÂäÇä_´™4ãekw”¸èFF+Ñìõ5Òo&¼šÍÉœ3 ;L€}ïñ®OÆš…ŸŠ5\r2»ƒgæ»‹†)¸ä0®x«Âòß˜u¹ãÒ\rêÍéÒ«Žr+^Ñ¿±¯\Z$”MÅ(ykðæ½ÊrRWFBqô£f”ÒÕ¨½i4§¯z@!àE­ 8ë@‡cš	Å7\'4‡4X	ñš™î%™@w\'hÀÏaU§‚Hé@Ä«ºEÌ6ºœ-s¼[36Î»3Î=ê“c­&qŽjf¹£f3ÜláÑî-fþÌß¨[+‰Ò&Ž>£5æ&°·±Ö¦KW&\rÙ]Ãšè<?âË‘ ®Ÿml‰%š\'‹‚Uñzú~U[Äú\\×Zež¬± 2¡óàƒŒ·¡¯\'\rNtë5=‚Zìvÿ\0u½F?yh 6ªÅdp0ãÏ­zF“ý£oªDFá €;ƒ)äœÿ\0C^àÜh×²X†ÖèâC€¤t9í^Óo¯Ø˜mÖXíåAÆÃ…oÆ®+—Êã¾ÍÕÚçAâ;=CTŽx\ZÝp±±Rsÿ\0×¯š¼a¤=–¤ï´…\'#5ôúø¢ÊÎÕšIÒI\nŒ&üöéŸjñ^[k“ÜbUcóqÇ5ôq§ÍÍ¢G<]¤š;=:7„îã&¯íÈåª(¶ìàŠw~+Ì=1‹1ö«1Ç³¨È¡\0Jž\"®qBŠF2iþhíÀ§É\Z…8Æj¡;	cŒÐšMØEØnFìgŠµ¹ñqô¬©\n!Þ”\'œÒ­à±J÷@\'UØOQš¥5¬‚BXä3Šd3´¥¹ýØ<œÕÈáI£`/#\0¯\'µe4=w2’®p8â²<Ak±Æº|†;Ç\0XÉÜ}Ï­hßÆa`Ä3¨¸éYZŽ»ÙìØ`–5!:ŸÆ¸«&ÚqG!d“[j¤R5ÁÄŒp¹Î³o¯æ‘™#–I>bß)è§µ3Y–©¶è¾ö,ñŸá>¹®eç¹ÚìBTö­¡õf.å»NvcÌÒ\"ð9ÈÇZn²pƒMŽÝn`ˆ~ýŽâ~9ª¬¥}ˆàÖÐIh„>I9=éÝ0KqéQ’;Õ˜,în ’h ‘âŒnvUÈQêjïmÂîÂ£q×­<Píêi-c-“ÇE[1ÚW¿zUÚÃEÉ2sœ\n¶ÊŒ~aÛ­H-ö:¶Üö8ïCDCŸ“h4ùŠ Â§\0Ò¬jÀ:sÍI\"&ÒKçŠŽ&ùŠŽGzWº%¢8r=E5‰l¨©fF‰°ËÉUrO8âF¢Ãc?–¡è:Ò+þëæ\0œuÒK’3Æ*ù™Mº|Ã ÷¦¹+ÅH£\r“È©1gqükBÊÝ)˜˜Â’)¬ ±9È˜qž(7|Ý1M“HM\"œcÖ‹27t4£‘ÍÈÃÏ®)\0Çnþ´Ð21JÜ¾;\nh\0#€*hÔÏz`C¹AÏ^j{ƒÍ!LˆóÇj‰´\"`\05ÜžO7ãši ô¨±6dN6ã­<>ÑŽô´í$r)Œ	\0çªÀ8zu«úF›qu˜WqA»n2[=x¨$n¨”…&»o].	A²6™pvnÃ€HþuzŽœn·4§½N]¬nno$¶òº–fNBç“Ð\nì`ð´\ZsÉ¨_”¼–ðF¨v±ô\rÐœV‰ñ¬ÚL£û9c{¿)¢vXÇÈ	ÉÇ®}k‡¾Ô¤›Ê1É(húüÜœäÒ¹\\êTµ´’Lõ/è6>d¾þÔŠT1Ÿ5p¬¥ŽUqOœûsOñ…ŒZEÞ =¾¢ÊÍÅE˜¯,IþîÆ=kÎ›V¼ÕI%¥Ž.dä3Ô×4û?_]]XC©4s[[Hmå%S ÀéXÇ.i\'©½sšw1•·žAâ¥)$ëº8ñ´`Ôû×¤ÛZøZÆáîuX®&Ô&óD´{‘ó³=óŽjõØ±Ðtcs§ý™.ÔF²$`Jç>¼ŒçÖ¶–)Å{±¹OCÊM´Š©1_”ôµÐøj[KZ+ëÈ‹Z¨ûªü©õç¯­tÖþ·M6ÞûQœÍ¥™Ân·\\¸Hç©íõ¬~	l[+p©¦<žz$¥7n\0:Å)Ôu hÑèºˆ4ŸërÜk7Q›{åÙ‡^ðFpGsÖ¸wT‹Y¼’9¡ku_2;r‰¼‘Ÿ”p?\Z£g¨ØËobmáhd³-‘~ñ$åXý	Åv¾(Òß†—U»Ý$Œüƒ€dÚ2O¹çò5ÉÉÉ4_CÏ_]ž°XÆ¢ÒhXï˜’Ùl†eè0=+\'Ti´çrð¶o|RH˜,¤à°úàŠu÷¯<×ÈÒE…Š}ý8¦]^Ña³ÝÌ‰p]%ÚLŠ08ÉþoZô`–ä«™“ZyÄTÊ»ˆ^©ì}êäq¥¶,Æ|9+¶ 8aƒßÖ¬\\_³éBÊ;-…ù$?x7Lý1Ú£šîæ]à–±!ùX\07Ž§¾=©ÞLf¦›¦ê£Ã·:•€†@Gfe°Ý\0>‡W\\©§¿ƒ‡Û´¹Î¥~†q}Á2˜<x¼®ÉdŠDó‘ÌL7*nÀlðÓ5éšÞjmndÝclcþQÙr·{ßÖ¹±P²»dY¦rÖ7áÉõ{ëY<ébÚª[îç³óÿ\0ê¯NÐ/ ðÿ\0†­#½³{»[˜<õµ‘ÆÂI0Èå¿—ÃxÓÃ—Z]èÔîmâQx¹1‰(lvç>ø®RÏT¼Ó5+ß5¥6Î(äbWƒÓ•q¦ªÇ™=J³>Ž×^§^Y%¤1\\\\éÈÈÉ%¸J˜Ž=+’Óîu\r_4,×‹µ¬jGQÆìô¦*öŸñh_ÙØJFõÄŒ­¹¶¬(vœût>µ©7è¦îúÛm¥ä¦¹Ž>\nä‚õÈÁÇ­rJ“MÄjÇ;>¡z÷×vh#¸†)D×V0Çó®N3ÁÇ\0ŸJÐ‡ÇÚ™†k«Kx£vFc—±pGR}+/Ä\Zq³–Þæ=E£¹¼%fŽµ¾éÜ ŒqX7vÑi·¢ÚÞåî\0/•#k÷ÿ\0Zê¡J›Ù¬ž‡[wâ«Ë¹ »¹Ó­ÕòJ¶Á‚§ŒcúÖmÝÈ¹—)\nÆƒ8\0ûÒ\"Û£._q\0§ \n0ŠLW\\!½AlÆÞ¢¯Çu…ô5’ò•l§^ôÙ.FÃ–æµ²ÚŠ/Þ\"²uŸ66‘ØÖSÜcóœŠ­-ÔXnãÞ•ÀÈÔdV,¥€#½cÜÏár}Iõ«Ú‡ÌI<œÕá—.Äá½m”c‚{‰±\nòyäâ­KnøBÆBà•$äÿ\0[„	åŠ$rB1œzÕGFžÅ±VŒ–Aœ7¯Ò£Úkf$0ùŽŸ[@é[má¥2,pßïÁ9m‡ºàþ”Ý.)Ò9§[tš5$2¸ã¥tÅ^U¨ÓílÒ(Š¦FßóÜã8ÍgRrè4Ž[TÒ!µÌÉr/ÒM²Bë8É9¤¾ðü–ÐÃ,W¢u™p9ÕbRñj€ÜÍó‘áºgß½Ti^\'bÒP~R|Ô§-?NÓ¯ÔRErÊå¼°Bg\0ÕbßS˜{Ä¸WrUBmÎ8\'ØUXï¤„Ÿ\"Cœäûš’]SuË5¼\n•\0.sƒŽO?\'ÍÍv;ÛB¾©§^[YÁq ¡•r¦œR;V\\	çH\'¶+r4&Îá6³3/,\0g¿­CkjaL®¨èw}«hKAn4Z4h¼#ži± .ÆG§JÕk‡¹a$’q““PNª>aŽGOz¤ÝµŠ/Å9>”#ŽáÔšV€–díœT‘;E\'™c ç,21éI´KD’a{î=sU¥\\o.CrE]S3ƒt-‹[&z€ñæ²wîv\\ü¤žM$û\r\\˜ÈæÍJŽŒ‡p9=*£ñàóš|rnƒ‘Ò´@h¢<ô)<zS!Rá g¹àT¸Ú6œ\Z¥ ÈšLj.	¯µI!$tÇ¥U# ª\Zå9ªÎKIÅ>AÎi-ÆK³\0	¤Æè¦“pBJ»+’\\xn3U:ëïÞ¬G;\"”`1éYìK\'U/!Tr@RÇÏz‹Sµ6wÒÛ;£¼M´²6Tûƒé]>•áËJÂmMZ3k`ŠÓ)|6B3Ôf¸ë‰Õ®glçsÆ”\'w`B8P§<úQk!Šép\nœ‚i¡÷;cŠXˆóWqã¹«Ø\rY®¯$2>÷rIlä\Z³j¡Ç|Va]˜ ç=+Bßq!J–cÓŽµ	ƒFŒÑO2,’ˆTœÈZ®Ñ”b 0ïJc\ràíW¡û#—‘Œ…IPF©z;ˆ¤€ŽsÜö©¬®~Éx“~Cœ¦)Â’[¡ÝMZ´ÑžeyY‚¢Œ·Ýô©”â–¡k$Û#—\\`± zTeI`é×Š¸mÄeX¡Á$dô”¢-û•™ÌxÅZjÚ¬´a¨\\29ÍG?+tÀÁëOR¤a”OQI\"¸<’NI¥ml-Ü·ú*¨uÎ6°^àzÖ[*‡Ïò©›¯9¨œ†Ú®+—@ GåRÚ›È¨‚ƒÞ¬ÂvöÄ½*8îoíbyAä\n\\žÞ»kk˜<9xúZi²ÿ\0h‚<Éýõ\'–Ç85ÇxnÖÖ÷VŠ¤’HÜ63†$F\rM{%Öâ+T¹YtU,ƒ-°ýÕçýšÏ:.-0‹|êÆâê0Ã}wn¢)×qpHÚ džßQôÅHž¾¾ÒîžÂ;lBC¶°ù¸ÏÐŠ¢Çì’Å\"B&ž[€ìƒ‡5ÒgðN Év—3Ç²à“&\nâ?ŠœcÚ¼ÚqJIEÒ¡ew¹Ê;X¹Ô£þÑ·‘’7òK…TõÆGf®\\Ù%§›º,‚2äsZE†ÝÒs8¨có£íÏ5rÒ+wŠÛS/+@ˆ”0\n¨· ÅlåZ›¼£¡ÆùS²g;g¦ÜjŒ–VñDHÝ&æã€2yü)%}_G¸š{+‡ia\n¡G\0ÀÏq]:èò	IYYg\nvª(-ø{â±u;ÿ\0°=Í§ÚÚÀŸ.C:€w¼ÞõÓí©TŠ¹›Nç9â?k:Ý©×¦H<Á ‡h[Èÿ\0õÕ¤Ñn4 ³ã¿E?19F;†8úf§¿³o³å¨9È#­sí‚œƒ[¨û© Z+&YAÉíP2pN9Í„7\Z\\¶NyV¨Ã‘Ð\ZzÀl„‚‰÷ðyÇ­DäéJÛŒŠM0F¦«öfêäÆ3…Ç=óøÖR†.\0u4œ*pV2¨C–íïJ+•Xww5ô¦ó\'\\°Dq•b3zªÓCmq#0ƒÊžK¦NöúµÌÑ—Hä—8àZ±¬GöíBy¡ˆìyÜžÕ•íSR÷BèšËÚ3Ú™„v³º´™Lôíô©<_%‰•ÛÝÙÉ\0€AÁ¬/(¦sÆ).Îè×®GœñT©EÍM\nîÖ*îÏlR»qý)™£Ð×I\"A£¿4FyÍ0œ5oèÐêš¥‹é¶„½ºÎ²yYÿ\0–Œ08ïÒ¹ñ÷«¯ø{ª[išóµõ©¸´xÈ“côqôÍÊ:ƒW4¬<+¨ß\\ÛÛ[ÛµB¡å]Û˜Ãœ{\në´Þèzä:µá†öÈH&Äg\0‚U“Î\n¥á­]¢ñÔðX^·¼}©9\\1RÃ\0dq^±¤Û¦—âKè–ä:å£IñãæÁü¿:)N/[\nqlóßøKG·ðzê¶òý™Ë HÙ$ æ¹}{@Òíü¥_A27–d$9Á\' ŸÈŠõ¯ÚÀ¾¸k¨âagqºÙ÷	@9Áã#Ò¹ØltGCµ—VÔ\ZÚK9~Ñ\ZC XÙz¹ðzuàŠïQRÙÌô<NóNºÒîŒ7p²6ÐàyOp{ÒÞÅm:C5«·— \nbc–WÐ×ªxÃþíwKµkML‹Ø†#ûDf0qÊäŽÙÍyÅºi©«ÛÇt],VEód\'{\ZójÓŠ©£6„›FqÒîRK…¸ŒÃä&Y% c|Ö<,b¹R	OpEtúî¥6°æíæË¸Û&FÜlP?W*Ä,ø<¨j¦¢‘i¶µ=Dø‚ÿ\0J/\rÊ;ùÖà(À”8Ç\'=³Çæk’]IÒúI„’ÂÎA;N;ÿ\0Jn‘Í¾¡bé&ÅŸîã Èöük¼Ô4;=Bh¼]]òÝ± Æê¸Á#˜óŠÁF*óõº9‰®­õ[;‹‹›ÕûKH‡3s÷‰Î4{¥Ø\\Ÿ›Œµ~âÂâ)MºÆÜœú¯÷ª€…£u;ù<ç­eMY·rºw1Ý;+’qÃUR®òÙÜÞ´ù·	Žãôâšï¹óÉô®„+•YJ“ßvÉØ!TÎ@Ê3ƒN‰¶’àðj¤®¬ÂçAe©Io²_Ê<±Ì$œžß5Ð\\j÷v–R^„uûTªâí­ÀŸ¼zŠàUö’\0ëßÒ­­õÈ‹Èiâ á‰QÆ3ŽÆ¸êaùšhµ=,tšüZ]ÍšÝi¶±Ç29I&À—#!–3÷@þuÌ WÊœþu*´Mdq†ÉÎO¨¦»FÊBŸþ½mN.*Í‰²¹!\\ì†€7tÍ;`ãQŒôàÖ·ƒÐ—oR8â´ô»m«Û™üÔŒ8cûà{{Õ=5ÔcWlÜ“Î+¥Ö´a¬Ú¢LÀ4q¹™Óh÷ÿ\0ë×5i¤ùX÷ãëXmE¢FŽŽP9G9`‘“\\?Zî¼K§ÚIm\'Ùµ!{<q™&“À…\'¨ÁÍpÝ\rVw¤VvpqNÇZLdÒ€3ï]¤íýh#ž)sGozA©è\ZMÄú‡aYµ%#u‰UÉÉÿ\0ë\n»‘©é—²¡O9?0<°ìy®oÃºÕ„×‘­ÃÛÊÌÐH7*Œ}ìWI©Þj:®Š×éq‰.¬‘(à(ç©ükÀ­NPªÖ‰3hjŠº®¼5U²½èVÄ‘`|zV4z…¶ÉâhFŒ€HÉéJ«žáƒ¯1°=z;U[¤ŽÞ`U·¹çÖ»iÒ‚\\±or	¥‹•TÚÙëšd‡rCcúÔ¦ÉçÍ…w‚û>SÕ±žkaü5qc§ZÍr6›´-\ZpNÍtÊ¬ ’oVBM˜×VÍ	?/Þª¶3íVd•‘Z2Xg†uªàw­é·mDìhè÷qY^,²ÇæFQ”¯ÔYî6¹À \Zž\r›IpÅGaëÚ£•C€Ç Ç=ª’¸\Zº¼·‰%ó7’Û´ã$œuö®—ÆaÛjñ	ˆ^9dÀ).1’¤uÿ\0ëÔº%•œö¿è{&–8¾X˜d;’Øü)¾+Ôf‹í:TV²È…|®B¡þð³ÅxÕ*Jx…ätr¥žÓïßLÖC#E<;	È\0ô\"³d‚ÚçRò„F(e”`rUz~5\rÃï%Yñ†ÀÇz€Û](3¢;FŒp8ÍwB½ëÙ™\\Òº³¼Ók+Ká$%‹exÞààòµv¾ñWö|?g¿‘í3ýÓ\0:çûÇÎh÷zN§3\rfi ‘\"ÛÈ¹Woöúã°ÍmODŠÆH.P\\ÛÊ›”Ž¡°@B\\×)s¯g(Ük{”^&ƒQÓ.u‚æ[ŒAÊ†wÎA*OLšÄ‰z„·i\Zéh‘l`q¸€1Ç5ÇØj	ko%½ü·é!v €ÑÉÔ~G½cÇo¨_¬V!çœÊ#9luÍcOß2Ð®nÇk}®kWšˆ¹Špc º©`Ê	Á•gA]n¶M¬ö¨åCn£‘Üœšã¢¾×íÊ¼6Ì3Ê{~4º\'ˆµ}9gk&]Œ¡%OïÜzZÒXWËhÚÄóYžÕý­\0Ð®^MÒs¬ÖmFàŽ ®98\'ë^cquáíZU&d>îŠ‰¯5+Ý@´»ÞæN2í‚Ø÷=ê½ÿ\0˜y˜òC6H5¦\n©ÁÅ»Ü9žçªøbæÆêèj²Gl—V-ÃmŽ¬NO àž\ru1ø}µH.uhç¶s)TØL@NO§õæºV©ei\r•Ü7^/2žDÌGFÞ¨ê\"½kwîòÓÛ¢äãŽûWÂÊ¤ôÐ§=ŸÇÚÒtèl`¸·L\nM¸ÝæqÃ’z¥yÍÌH<g¡5bâòiÂ¤’3ì]Ç8•XàQë^Õ\n*”QŽ»³fÒéáÒ/ìšá„Sm>V~RÃ¡þa>1Ï­YVÊõã§5]×Þµµú\r! OjFÚO\\\Z\0ç)ÃsV€Fù{ý+³øS­.ñN’Gì`v=·ùâ¸¦Ü@ÀúQ–A0{\ZRŠ”lÆ}yâÏÁá£ömLŠEÌl\0mãé^1ª\\é÷V²êvÈ.Ø’øàíÏn•ÍxR‚O*mRä¼‹­.ç>Ýx«·éoo|ÐÇ:¼r\0Å“¦OaNQŠ3”Í}SXu-·;BÈ…<Öù•HäcÓÒ“Å\Z‹Ç	Ä¨ÑÌhÄdG4ºUÝžÉ!’Àu*Ø(sŽ95ÏK^}žîOÝ+cûØëŠã­ÔºEBIÔy2ñžõ³oÜ•ë—<¥V¹KE¸&9ƒ î£¿ãZV·âØn…‚¸çróN\\ÍhŠmÏ£\\ØØCs*™HÙpÜ:ƒé^×£ë“ÜøZ±YçºH‘Y¦@ Ç½+Î<?âÝ]ì5Û@q)•\ný+E¼i£išMåµ…Û,8ÝEÎñž rk–R©8ÚQÕ1Z)è>ßB±º½¿¾»‰–áFèB¹\\•ûÃ=Zãµ]Zæ[ë›˜!íå<nFùN;ôýj†­ã‹»Ôù$È@Ýåd+c¹½Eg¯­Ä2At7‡ÜÄª‚Ùã¿§Š¡8Ë™šsickSº¹¼Ó¢¿ŠâCn™\"À,z;zcÚ¸iuÙµ/Ç{?Þ8ãíF¯4±» %!a¹#VÈ¦$\"ýÁœ08\npsƒÖºèÑP‹lNW,j×Fi]™%W</°¬yPãukÝÅ\ZnFÎàxÍg˜EuQvD¶VŠCÚƒòœ\Z^ÕÐç{Ò‘Ša=)àœs@Ð”„g8§7LÒt sš\\äb”Šn\04Æ<\0:ÓºZgzu!˜3Ò¤ãŒSO\\Ð½>êKK¨äCœq]Öµo}gi¿ œ.­¸óÏ¡¯;SÚ»ßøžYìdÓ5)L–¥r\nBŒžÕ”©§.f)lsŒwd´J½mª^@Ã÷®X”žßýj“Ä6öÑÏçéðÜ%«·ÍçœsÍC£\"j-<m*G<JÈ†pG=ûÔÊ”ã-	N-]ö‘â/!µËÇÌc2äzVä\Z\"x™žk6fQ™¢¼âÚ5·»tÖT\'\nÅp}µhÚÞO¦]¥Ü7å$-ÑNÏ~;T©Þj5:{§¢Ã3à<zVÅ¬ŠËÏ^â³lí²2EXbñ7\0bµ¹×cQBæ†qHªPÜ÷³RyêÇ¤›–.	$&y¨nî#òÎÓÎzúŠYYcRF9®wP¾±ÀÔM\ZK#9Îü}MB×Û\'šÊµÔ|·ÞÀ0ôÍC5úÈø¿Nô¯a‰© <žÕ$\Z“$ŠdÈŒð@ô®z)0IçØÒMq0˜8*£î±äý*d3 »¸†èº­Ëª/ÝW<ïYÙi|¬‹*+J·_Òª[j÷qå§ b ÿ\0:ÏÕ¼G=ƒ(ò”Ü™%ãôÇC\\õ#;Z$¶ìs>!Š[wtæ=ØŒ×<¡‚m‚ï89««híõm÷RÕo”]£‚2zúák&Íc¶ŠI®ÒUIw ƒÜ~TÓ’žäÙ=LÈíLŽfFÛÜ\Z§ó9çžõræ8D§Èf+ŽIê©;iäÖðÔ–°[y×Ip	\0×¡kÞÒSAŽ}êr@4Qå†å‰Ç¾µqúnssi%êG#\"¸@GbkJ×R½°3²nR’.~ðô¬+ÁÍ§	jˆiô1ö\0\0Á©‚9#œzS§0}¤²+ô=p<°…T‘üUÐ¦Ró&v‘cÀãó¨|éyÝN÷¸Wm™?xôÅ>á]\n˜È`GQO™u‘(\'i8ÃuÉ«‘[ÆNA\0÷›u”î9ç¥h BŒáºuÉéMÉ!]À¾fHãµSxY[8ãéZ1~ø}ìç¦jyaÛ	ÈQÁ[Æ\"dý\r3;Z¬2bØéÆhŠÔÈÙ%TöÉâ©jM™ 1’:Ô,¸P*÷’IÚOÌ\r0[1nzÍ]ìQWÊ;3éQb®H™F^ã¡ªŒv“žqNàBç&•ñëë@ß=…K‘Œ\n\rfÇZfò9¥\'&˜y8 @qÇZz®H&…¯oJ•W qI¬­$¹?*nÉÚ>µÉ’JcïW¬‹@ÇÞ(T¯ÿ\0Z«I^:Tõ+KÃÜŽ;Pê[ÚŸ³,OJV…Ý@ÇJ,KEi†Ã‚¤pAoLÓîµkèì­\"2Ìù!G äŸaVmYZÈ|ô#†Î>‡ú\ZÛÐt9o.^\r.C#È>b[ËtA÷³íJ%+\"£²Ž‹aÝÄ÷öòIm¼(Á @ÇSZS_Ù™&Ž+(Å¸—÷\\“€sÞºÏÁa¥ë¿i¾+¢é°>R‚ŠïÛïrHÍs:Òékw4š]ÆèÙÉEí{kžkŸsI++—W²·¹¸‘­£®Õ\r¸éù÷ë\\ä¯¸üªƒÇ5¤ñ!ˆ<Œ¤³G­AiaöÉÄK Œ¸ü©F\n:™3kÂöÚ1ýŽ_Î–Ae\rÕºn=1Åuÿ\0ì,¼Eo§\\ß–Hw¹VÛ±”årFÐ}êïÂ*â×ÄÂGfŽ8[,…ˆW8#?­u>,šOkë­C¤Ç%’Å™\ZeRÇ õâ¸ëKÞ¼Xš²8mBÎ?øLcŽIÖkC²_!e,TäåûíÆ?J‹YÓ_ìšLþ(¿»®T¢fL¬{xÜzžzp*X<{„Ó$¶†hî.|Ó» F£;vŒöÉ¬\rOTÕ|e¬-åófÚ&ïTbBr8üi)Ö”½õh£4ÖçoðïQÒ…öN¡=Ä“\'“k+þíÎ	FéÁçƒYðå¯‰üE!»¼‰®|Õ·@$E^ûÆ~€S|UáØ´‹ëI\"Ô%tPµÎr!\\/<{Rx]Ó´oËo›£2µ¸ºˆíóKœåƒzåSNJ²æ‹/s Õô-EkÛxí.lÌq„–uMðnÎUŽ2yü…Kk2ü=_µNe¶xËÂÑFÎd |¼zuÉ­=GÇPøÒïE²´ŽïífI*¤ ð	î2Ni<9¢<Ò^ÚÍ¨É$„˜òÑÆç<\0pöö¬’•){Ïq¦yŽ¥áåÔ4[{‹û¢€!‘bÚ…›\0ëÇ?ZÄ³Ò¯t½abITÞùjÉ]Ä±þ\0žµïGDÔŽ“eÖ°ðÏæ+FR‹„\0ãØ{W9kªhÃ­µæ–mu	%i“ióY‚Ž¥»¯_zÑb\Z¼lh¹_SÉ/dÕm`7ø$^ÂcsåÀÁãõªouu©ÚÁkssÝ¡àã¦8ôÅw·+ŸTŽöæM;:hD›ìÁAU m=—#8¯:•`K)*D¿1à€‡=uR—6ëRWÐÕÐíìÓP7K-Ò¢¤\nXÈ<u\'8Æ+Ñ´/\nêî=6PÉ¥D©ss\"ñå‚3èÃÿ\0¯XpÜiË§é­g#R»C\'+\Z–,d$÷=±]Ö…}§[ØfÙÈ]°îà©,å†rpH8®]fö)E=J\ZÏ‡4­y,§Ò®%âŒFð‹Ð¾ÏâÉâ¸[ÿ\0	Æú}ôvãuîžäÉq’žªþg+·‡UšÆÚßOŒYw½0ÌË!]ç’ON;Šä¼Ux°]\\i’ÝÜï{	”e¤Þ íoÇŒúRÃJ¤RŠdêŽ2ÖÆõ.b‘€\Zt1}¸5ÓMâR?+ì@G\ZªmŠ\'™Î$eé““Å9¡‚m\nÓ@‹Aµ‡ÌÂir¥23µ~`FMb],Ç\r´ÑÊ·*s4’âì?,W©¤·.ÙêˆËHL‘žœ×Fâå&f›p•†æÜy9æ²ì´1k|¦â2Êb‚N qÐ×Ek\Z¬‘3ÆÒ€ß»fl3\0yÈíÆ)ûXÅØi‰k†5|aæ¦œ$ŸaV.Þ!#¼`ÆdbÛsžµJU,¤–Ã•¤%Ì®YZIÂpI>µVY²éPßK±OlVs^1ÐúÖrÇ˜RÙç½U¹Ø:U¥œ‚çLK…|©ÁÏj7+O#?¤\Zš×K»‘Âïí¹#=qP\\‡SÁÈ>•Òé—si6VrC#=¹q4›Ó€Äcê?e94´Z8œZw·twAå¤ÈêHÇéPØêÞG’àü¬7mÏ\\SŠèõ=nçV²o³Dˆg_Ë?§ã\\•å´ÖóíbD€e½EgNòW–àÑ_Oh—kÝ–L1¶*[[P†DŒH2³(>þ•MbÛ¿P®	äŠ·e$R0,ÙÆÝíšÒH6.Os§¨Ë-Ål\r‘¤K¹=ê×Œ´ë\rU­m3 3\"sŽÃ±¬uÔ¤µ•Ê/–ÌÇvÞ¿J¯5ÛÝcÌvb£©=+8ÃTÇÌB€‘¨\0óÀ«0X+8ó\0ŽH\"e4AÕ^,‚~ñâºXõo2%ŠÚ@óç·|Õ°Håï`6Ö¨Q˜¾yê*´RÒÇ5¯ª¼m\nì$²ç9ô¬&U—Í>‚Ø³3²9(F	þ•]æ*pHÚ{S§\0L$«’@#Ûµ;Šæ¬w(–ìª\0¹?^Õ¥¤Ç6¡nö’ÜªÂƒÌÙÆp9#šÆƒl9@R	ÏSQï)]Qˆ\\ñŽ¿s´äô]»¸Fö¨mŒ¥Õ¯JÈv\nI}ê_ížÑm~áX¾ßöª˜cÔž}+hFÈ,<îb2síJ­µ¸¨ÙÊ¶)“ŸZÝl\Z\Z±HÏ\ZFÄ•AÀôÍNáŒ*„2jÚÉ·‰¡\0¬„FHR@ëÇJ¨üÖv’€­×ê´°mÁÅPÊl´óGnAv)Ì ¸>ƒšµPµÊFÀ•ÈI¥-âc˜H*Xà\Z¿‚O´´·ûD!9±&¶N—kýŸ2¤[øØ±!²¥qœ{ýj•¼²[Øm–RIb\n¨¬ï±%ÿ\0ZÂ‘ÝÏusæýŽi¬ÝŠ‡O»r	ÕÄžY±Ó<V«Î©Ùb%`y”@å¬…]Àç½:0Ksœv¤ÎG#¥9’B©\'¯LEˆò+Ó=8­+iYv»!mœîVÆÓžµ–“lq•ÇÔVÎŸmöø•c†RI`pOÖ°©5v»§jŒá3Œ+#g=É5U&àwõ«×º\\°!óìü¾B‡CÀúŠË`Ö¬ÞhŸýÚŠSN:0l×°˜¸‡˜YGð·ÝÇSZûì9¢ûTâEBòsí‘\\Œ3¤a÷ÌÃÙû§5yKC  ˜g=x¨©K™Ù…Õ‹By\Z?&Gb€åw»íQ;½ëS›±=Ìyq›xÀõ6¢\nýØg­¢íd\"”¤mæ /@Ãvãèj•ÍÆù¶ÜÄ…QÀÏaM˜6	Qòšƒçn8Õ¥µ¸\\q›€1È÷¦†ËrH!ˆÙ$r*³€=ê€”¸-ÉÝ´TÆ	è}èÈ88æ‹Ðh·²ÚÞ$ñº	X©s€*ìÚýî¯â´Ôn…»ÜJ»Ï8FÜ~k›µ Ê>eÂò7ôãœTšœñ\\Þ3Án°FŠI“Ï©Í6¹ ãp‹å’hô}y\"Ö\rÚÇ©ÝÈïå(YaÚÄãw¿®ºþ‘ËOquËÐ¼(6•äd°¼ã5Äé>2k&ËK¶‰l£\r›ÉÐnk› ŸL)ú®£ Ü^Â,íî^(w¸¸\031ûÙÇnŸJñ}EY]¬Ú;ÿ\0x‹eÆ‘Ù•­¡·tû<Œ72HÂOq´j¥Ì&“}¨é±âÝ_m¼/!`Ië„é“ÍTÔdÓõ+]+MF\ZQaeäƒž äV†Ÿ é÷šeü\r}\"K§Ì’ò¢<ò×¾¡*Ôyj+iKB­­ÕÅÇÙ·OF5\"A€bqœgÓƒŠÝ·—~™rÆâ3¾@d\0n=¸<×–^—\Z…ßLq³·¸#<÷©W†ÊÌw`CèkÏXX©r½R5Ýõ)Rk™@Á\'§JÁ¸…wä)µ ®[9<Ó%ˆÆ»²²„Ñî“(åœ5nh~~œæ YÎ\nã8ãŠNý]ÚyG\0‡nåzU ’°GJÕk‡6«˜—npdIªR[¡}Á[ŽiA¾¢!de#ŸÊÐ18 ñWv#Ú?fAÇ©ª±DÒ…ÈZi®£±è^º³ŽU†÷mÖŸp‹°ÃsÛ5Ôx/HÓoF¡vé-ÂÇ´³.äÜ§ ÷ükÆ¢{‹‡2¢†BœQ^ƒàßê\Z~Ÿ#Çwk*‰ÚÚ_’Cž¿0#Ú¸1fÓpfÐ’Ù•<iä>®¶ðéðB±!Eh‡3z±Åq\Z›ËXÕ0&½óP²Öoäžx.¬‘#..õN;b¼ÿ\0RfµØ6‚’u`iá%-\"Ð¦ŒsïHG¸Òqô¯PÌOz:ûPEŠ\npk¢ðdÖøšÙµÛoœî$€QœuÎu9«º{Æ—‰æ®å<uÆ3ÐÒ–×\Z>€ðE•¦«w)K@m‹3îp\n·=ãŽÕ×j‚æÒG™­ÚÛÑGÉ`8Ç=8üë‚ðŠmìÀ×vùQe<;thèN:×®jé×ñ%ÄR8\\§=«<œ¢ÓÜsÑ™×·úÆ€noä‚eƒs+‘”ã‘n•åÚõ¾™o§]4Zµ´R£4Hrcª„‰ æ»)¼bÖÚ‚[[–žþ\'’’B¢2G*~„ŠâõïkQxWû6çN[—´€´SÅ€»qœ·©8¯BœÜ#dsÍ\'+œ>¯âWÕ­mZGV¸Š?)¢€þ÷×§åX(ò4Â/3÷lvôÈõ¥¼ŽÁd³2n`»‡d8ä{ŠŠIýÚ‚\nA<žÕç×NR¹¤tØ´4÷}BÚ)\".%b€³mRØàçò®~ö=—M•ÚsÐVý¬‘yEq?”U¼Är	ävö¬+ùþÓp\\œ’I\'Ö¢Œ¥{2îj½›C-´¾o3(ažÖ»Í/ÇBÏEH5;íA‘¬~_˜ä}y¯5Žæ{¸ãI&_Ü&ÔÝè9Å\\µÔB[4D°-ÅùzVuéÊqåcÒåí[WŽöWxƒÆY‡¯LzVZÜÄŸïIŒ\0GN[€Îå@PÜ*-Å¹éZÓ¢£\nâÉ!‘ËÉ¦ž™h\'œ\n1ŽãÞºgšÁ£œdR¨=èî½ù4àvŒþ´ˆ„ž?Z•WxÚGJA¡“å<\nT`AÀÍ!ÌRqéÐÔ{ò\r+›9õ§€WÓªÛÉëÖ¥‰`\04¬¤v72Onˆ<ØØTÖ•Ì—öóIkªHÒÓb—sòÖh3yhë(`¤“Ò«½ýË‡GàžxÉ?a(ÊLo±<·P­“DªÆC_wÇLV1É5qe\',rzÕG©ê8®Ši-„¦iF­&sëJ¸\'šÔZ3Š``SXÒ¯øsduOEh.Fó»øñÕ}óž•èº½þ›ovtYb‚ÌbhÙ»r¤zu5ã:F£>›¨G=´¯Ž7§Þ\0÷õÞ¿‡­çÓ<û;õ¹iAsæ›î~µâãè^²œž†zhek˜’ÒyíLžX›\nD{S£-ròÁÞß6OB+©}ZÍtY¬îÚu¿F)\ZªLr²Fìw\0pzz\nêÂìÓDËÈ·¤ÒF&öm$gŸ_ZÕ¿k¨ô¸çyah²7tCéŸZ¥ôööñÇ¼ºùMB2\0\'?ýz½.§c>Š–¯ní(S—ßŒõÇçEE\'$ípÙ·*¬‘“x2}¥T#+Ø\Zµ\"ykxíTËg5Ý\r‰f†‘7WKm/˜7ä\rƒ\'8ã­u^4Ñ¬ômP‰Ý¶´W‡ø”È9=ý+’Ò¯~Å;:¤€7c‘î=\r_kÇ¸Ñ¾Í;, Hî ¦ïnïÏjâ¯	ºÊIè‹ƒ\\¥¯ø…tMR+™ ŠdŒä–eúUë£]×nn¤}ñ°>H\\p1À®cMC,æ4VbG!FMl¾—lÊ‚êi¢‘ÇÊJ|ª1À?¥EHRoh÷Ý¬`–iãU]Ò9F:šÓkÙìbkI†a¶«taëúÖS«£†S†¨=*þ£ÞëúŒvv£|òd(\'®kyòÚòØJïDE\ræÒëj¹n¼÷­˜µ;‹-:+ûg´É’-ë‚GC†ô¤ëQ€ÑÚ»±—ÊUxž{~ÐhšV«.ç^ÅlövŽÈË*eÓ=1ëÍq×ÄQµÓL¥´g!u5¥õÜqYZý–\0ÙmÇêHë]Æƒá1ghu8e¸²›Av¸1³z×Ö’ò-&ÞÒËU¶µ„­D›Ë,þãõ®ŸûZ&ÿ\0Ä\nöLË°Æ„7“!±CÐgÒ¸q™Ê	SVEÅ$ÌkH¶E6»¥F¸!Ô$´$ÆH®I\'…´ÿ\0ØY™..bœ–Ú«Â—*ÙIîF?•uºF¿±áÄ±¸´KÙÖ!w(;ñ>µæz‡„o¯/åÔ6³·yÈ>ïÁÇbF;z×55*ªTæÚ°å½ÑÙêÞm]¥¸’Ä$oó’bÙ\"¯s·×kÊ|I¡Ãe©Om§Ì×KBGº;ƒî+vÛÅ:Åü1\\k“­ÜLÊ\'º9‰“N1š~›2ÛjZýúÚÊ Ìml³¬r8b;­vÑSÃ»·¡7RV8É59®t«m8Ç-Ë(\r†ìOqU¤³¹„\"0L˜r1Ûš×ð]­¥ÿ\0Œ,¬îÜCòÉ#\0à‘œöÏÛx»Jûsû/K0ÚÚÊþK¨HÊr2yçŸÈ×]LB¥USK}D’jç.<©¶a›\\Es–\rP1ÐŸÀ×3w§ÜÚÞIk<L“F~u#‘^åo««xqt©R´Ø€¨`—Ërƒ#qÜW˜j–çIñknš[˜ãUi\\¯%HþœTaq3œšJ*Ú©FsÈãQ0 \0PnNzÕ‹ò¯tìŒÌŽs’0N}ªÅž\rÄgí˜ƒ+yr0à°ìkÑ²fhËw¤$}i›Êü§ñ Ò©+\0‡‘Ö˜ÄÜÔ€{Ò’\r1o>Ç¨^I¤êDssùý?*÷ˆü=6…¼ÐùLSÌVí\"ÿ\0µq7\rk{éÕ5uºŽ³}©D·‚7ò\"!ˆÎßÞ´‹‚O˜ÎIó]+qrÎáIÆ	*Z¢ÌÌÙnõ¨×ždBÐ&÷ÇÎ#Ûkh§ƒtŽÙSŒ\08Í)¨²Ò3sJ²¸Î	Ù«bÐy[·7î*6µaÓ%}{QÎ‡a‹s.Ww\"¥Yfq^xÉâ ÚTž¸ ˆˆ ÷ïTü„é67œu©­¦uÂSŽ•QXƒ“¤Õ€æ)„‘ŽG<óQ%ufnÝ¸v4ÈIKˆäO¼¬ã½$„ÈÙÆ¥ÈP­¥l^ºy3Hc>t­òªò{b²ä’˜ØaÔZz}ä–wQ^Æ@–&½}\nMJåonîA”™±‚~¾õ4îµcd`wÁ¨×•5vFWŒ®µRµÒ¶\ZÒ­\'JLþ”Æ?“‘ëMµ/½\'BhÙõ¦šqÉç¡¦Ÿÿ\0]\0&i{Rt?Z_j\0QÒ–ýh!‰È5jÊq\rÌnq°¸âª0Á\'µ\n}è’º°\\õ˜µ«CÂï¢Ï`D<Èn]ñ†ÇÝÇ½yÜwQÚÝ91#ƒÆOQô«7~eˆˆã(~ïsïY×(ãý“ÈúR[ÃÙ½Ñœcfn[Ní8Áþè<õí[÷\Z+¶–·%\nÜ«x‚chõÏ¯øÖ/†¯tíì—¨þbÄÉßëô®ÝµëC<kò2dn@\'Þ¼Úî¬ex­\nrŠÐíCº6ÐØ\'˜GSTVé2K:V»V<sø×s7/‰{U9Ù¢pÀÔ-tŠ~n1Tîïð¤‘ëJàZ¹žV‹=ý«ùd‘78$“N‹T/z{Ñw|­U# ©wÌ”—Êr	ÆOZ¶¸q¼0-ïT®-î¤Æõ*ƒ¡¨q È^þ´·!\Z«qµ±“Å[Hí”«ª–ã$à\nåÄ“Z4‚Ü\'Î0IPN=³Ò¯ÙxLt(d-œú¥\r1©#^òæÖÏÍ‰]d(HÜ½\Z¹k²“Ÿ1½jv-w<’ãï6x<Â¨ÞBÈÝýézƒÔl²´[\"L‘»šË’áVà¼±¬¹]¥Yx_qïZóJmåC8Ã0ù³éô¬áÔ&hÖÛ|Á7`¸äþU)+ØMóHþ¨a\0É¨Q70úÐä7`*k8šY‚9>µ­¹Q=NÛKk-7J’âA$—ÊÊ±¢2È=CÏ õ+$ÜiÍxæ{I \r)*cmÊŠ=3Ôæ©]YKm+‰‚0\nepG=9NYv.Æäƒ‘Í`©Åêé¡%üÆæf\"\'²øUÅA©pùTL£·åÏSZ%c>¥¨$.§$8ÍX¶˜¯ÈÀVz¸òqØU„8=jÜPÑjd2í±º@¨$\rèÙ2Ã®MY„‡hl ?6;So	¸¸wE;\0$ö¨æÖÂ{ñ¦Z¹­\"pxì:Õ`6BŽv€xÇsZNŠ›°»€àU¹v)³r@À<Sy\'¾Ù­9&”¸=ÀéU[wñŸ-¸Î?Ï4Ó`ÊÆ!×8Ï¥:UÙçŽ¿…\r L«­Bnwf6^Ô›o@nåI¥ýáUxÕI“Ë-ŸÂ­H…Ž\nã\rT™X·ÌzÕÅôBš	ãžôðØÀÇ·$ŠÔ¡¥¸ö¤QM\'Z•T×­\09åW-¢êã5/@;V¥”*\n1H=j[\ZCÍ¹ÙÀæª˜y‡$ç+§\";™¢4‰N>Eä\n­qb¬x\0Š‚Ú+C¡Z?ÂV‘âB§¦zñ¨Ÿ-´²Û¼g1žsé[–6\n#œ!c‚­ÐWM©hÖ«·ÏÕ!•°¤¼CŽ®+.gnJVÜàí4©\'“÷iÀë[·šX³ŠÕa\"Háf™ÁÁlœÇåŠét½:+´žÖÒ{pÍóa_a$w»ý\rSÕ´´yãŽâR¿82±l¯3«g©jQHçUâÔ#º¨™ÚéÆï¨õ÷¬éì’y-t·6šx¾H`ó¨ !8õÏ­sÚÆVñÈVE8*ü#Ò¡VRz{”á²NÑ«r™N	Î;\nKK[””IÃÆãi¡­=\nú;\rZÚíágòÎU:sZžžÆoË>¡n$±É}¥s†\' JR©%+t+…á½gV¿Ógi,ã}IQ1QlÞ¸ÀÉ\'¯_¥lý«2ií¢{[B†ì“†ÁÈ¬kØ\\XÛCgrmÞE*ë$¡dFÎÝÔç¥fjÚìZ›qhò,Þj1í… ñ¹­yua)U½Œæ×CÏ¾\";Kâiï¤v¶ÒmXc¤ÊÚÜIœ°íøÒê‚êçÌ,gw%	çð«vzÕÆœdžÕ#V‘vJ0ÁÁõ½XÅÂ’‹W\'r}:×Vñ%ì±Û‰& óXò\"Œq’=\0þU‰2yr[¬¾fÇ#zt8î*dÔ®­î%šÖW¶yrÙØ§¨ã·µQE%Ù»ŠÒI\r+„ôùu-zX|Ñ«ÉºM©´wÙéõ5í\ZÎ“}=¬:†§Í`ÖòyÞl¸YáUèHç¯Zó¯Íc£]ÇyæÃv€£ÊÂ2YFÓ¹0zöçé^„ÿ\0¯58—R¶Ò.ÿ\0²¬ßeÑÈ*Àð\0IþY®\Zòu»Ð¨Ø¯ã»ûhü²HÎo¢„,kq6d$œ?îÔàŽ¦¼‡JÕdŒCö7’°ÇÌ‘Ÿätë´Ãñ¯Qñ­¯†5˜¬õKIü»«…&äÂ2£v0¯Ž‡<b¸ohÌšÂ\\X»OqX‹l\'=ÏƒÒœb÷É£ñwŠ$…£†ÔÜÇ’ÊòÈR¼\rÝ{Õ½­ô·SOc«yj±\'v®Wùg×y¼5}áöŠþûNºÙ,à!ðèAÏËÎU6öÖ$½Ž_C4²Ãkk@¥FÐrcs¼AÎ~µ0š”ÓO@KB/Ùiw–—6·×²ÚÃæ+†nqÁí‚A®óK²’Ã^´³Ó–u·…’ë\0½Én<Äoî÷Ò¼úåm,­î¯ôÛë1#¢æ\r…v’yžßÒ²_Ä’Ép³NÒEsmŽh% q÷FjÕÒU®5+=nÕ4ÝCH¸$E5Åê¯ËœÎ€sÎq÷‡~Õ‡Þ\ZÄ¶×Ú”ÖúŠ\\$‘É#®<¶=8=IúTþø¤u‰­ÍêZÃ}´@²Hß&;¹=lwõ¬«Ï^®±ˆKK¨£¾s0ŒHî2m<\0Fxö¬%ES›•ÙWº)ø§ÃwòÄ·Ö°Ý¼:­´¬ì^‡\\}Üt¬2KBÊ=JMÐÙÌY2¨n3ýâsúW¶jž4]ÒÎY4ç:\\ÁàFQHû¥HW­ÿ\0Â*|aÕƒ«Úº¦øgc1þ~‡ëUËKI\\‹vž{¹¥‘C£9ó\"møŽ0~ð#©Æ@5_PðV«Ý£ê4v¹C1ÎÜg¿ò©5ÍBñ¼Mµ©¾UÛµ¡~s¸©¿Ê«x¦æîïÍ^t—ñ¾À¿ }ÓƒŸ_¥gGÚIÝÈ\ZêTµ{y†(’\"¾x<ãÞ–D&ØN\nàöÏ5Ë4Î¤‚YH=ûÕëk½øYß½T¬Ra{\Z²¶ãÀÏ4ž[•*z[wÒ)\'#Ò°.SeÇÌHiƒ#žl‚¸üj´SlpG‚jèŒðø\'ªšK}7íSâ„²–W”í^9ëEÉ54»Ý2é¥·Ôqn²&ä¸9ù_ðííY¿Ú3I€(¯“´uã¥³k{™jš…¼}blíçéïM6‹ÓÞN\\þìvOéYòE0Zš6·3ÛFB\"òqÈ51´1sœŸâ>•N	§}öñ2m¸€	Ç½i‰ZÞ$Iv™Ü sùÒÙ—møÝ-„‘˜•Ë9=ê;˜ˆ·TŽÔ+[z¶r>”ÂÛ¤ÉÎ3šY%]H”+`Œ1àÑ\"G-,˜P›”}âi\0ÞÈŒ¡01:ÔñÄˆ^c€¥¿„ç^êê9ò6²Œd¶sK›Qu%]±Ü:¯=½]µ»¶TÝ1Æ®ÞµŸ}v>RE*Ý3&ç ´‘ÐjÍ/ |’CzzSÑì;šš…È3¸\0ö+)¾VcŒÔOrÄà¶}jF,É× 1ZX±g#pÚ}jÌ)7ÎY±ŒmP‚NzóÅ_³€žz\Z™+ŒŠ@cBAÀ\'·Z ãvxê{V¼Ñ\\0È9àV{Dàƒ´ã8µ\n=€‰€äc®:Tn®Ö´ Œ…*üÃšsYñïT‚ÅòÉÊçê)Ja±‘Z–ñí;GÝãƒMX7K¼ŽyªÒâ T(Gi\0sÍ6T QO€0ÎzÓúBT)éN’ Ã§‘ÈÊ{w¥i°1ÓœS>Hö1ã’:PÃp3Å[‘7séRØX˜n\'ýëÉÃE²˜ÉbGLqYÔšŠ»Švò´/*¾pñ²çÜŠ¡4®c“•RJã±5¯©]i÷\'Ùlš.¬¿¼ÜmÃwÉæ±ä\'8¤¢·$«4s(‰¶!ÚÍŽ=T¡\"´//n%…Ä“3	\n—Ž8D0#êá~¥!¤îÖ¯iV­,±‡\"‘ö™£×&¨7\\Ö…½ôíf–¬íä¡fEÎ\0\'¯ò¢¥í ‹W–fÒvMÊä3\0Aà€qÇµh[èÒISÚÊ©&`A¢±ãWóÑ»ý+ Ñuèg\r¦#¥•¶îÈ¯zåŸ7Aô%±×îÖö+]Cdq¬ŽA\\f¨_YNðÊñˆåµŠFýð8/Ó±ô%Í¼š…¤Í\Z<×K´¤ô#–úÔvÖ€ép<ŽÁæ|ƒ»+ŽùÇCP£»­Ö†Z®àGñ»SÁ+»ùn1Ç4í!e«qM’xd„Uñ×ßÒº“LV-yžWÈ*zTÓ_ùåy,U~aéYi3HÛ®î}jO4ÇpÅ0eHõ5ÔhÂE`4¤+s’Gýj¬RmŽpxæµa„ýXÛ–ód;$Ó¨Åê	¬ŒåäƒLšÞR¥™\0gqÍmZÙù²)YgoüúsZV\ZMæ¥1y-DnRdBÀIÁ\nŽœÿ\0:ÎU’Øv93žFó)ýìqQ¢†È?(ñ]<ÃZ²¶·Ág1eñü›Š€ÀçÔ`þ5ÏÍ†8H\Z<â9ü)ÂroQu%Ó-’[õŽ^#*Äœ´c­U—âEFÞ¡È\rÓ#=iÉ4‹8aÇ#§É\n5ÛP’Bç ô­uÝŠæ†‰{~†X!ýÊ«#ªqÔxÏµkéÚTÚ}ä\rsBïå0˜eyéÿ\0ëí[ñ¾‰ èóA½ÛHñŸ‘œ2³c®;síÒ·íœžK­vÖØ}¡œ”Š@\n°\0¦1ê8?Zò«â*ÝÅÇMÊÖ×Ú~™¯O¦ë×Ç÷ó)F1Û©!lr9ÖCâí5´½`ùö­<aíã™\nªÎ¤ä~5æºÆ±mâÍÑÀ´µ¾‰™]dÀÜ |¸n½8çÒ¸Ñ2óÎ‡¨5êàª5GÙÔFr§wtt²<ðH\"ž5ŒË!ëy4H|Æl±äÖ%¼îáU™˜/Lž•«o\'ðóš«YÜ±Ä”—ƒ×µ=É	ëQÈ1’j6˜Ž8@:x÷&ñÞª5Œ—O¶5,ø$TÏ)lŸ¥Xµ¸0È®1š™^Ú)]é’Ø4ÉßD$9Ç$cëÅE5¹HÕ†\n°ÆsÈ#Úº+Ø¢½HYß	Ê*ŽNO#5‰ôÒ BXÄdÊ£¯Ì£Á5Ë\nÚ¨ËqØ¯á\rfËKžè_iëuð:!ÇÌÓ#Ú¹±+,l¡>mÙÝß©¬.Œ:”s+\0¾fYHàsZ\Z¬VW©*mçÍòÉÏÊOCZI(ÎýÊÞ%+-HF.ð,Þde\'ã¯Ö¶ôËm2mI{ˆ¯‰+ÀòÈýsÖ°BÃu \0$òIÀ9ÿ\0\nÔkÓÖ?³L³Ì$+$hÀ©r¥MUo`‰ÞxRÞ¶¶¶vñGqö†“æ\\dþ\'µd|Tðµ®‘·P3ÜÊL‘‚\0Î„ÕcÁvòÊZúÛ1]¤Ñ¶ü¬…°ÀÖïÆÅÓ®´XgŽX\rü.‚DS—\0äcØW5Ë_Ýf’Ö\'ƒ·ô¤ þ”¤géK×Œ×´b0ñøÐO)zf€áLëŠ’&dpËÁÀ<SÔá‡½&#FÕŠC ùJ÷9ï^‡á_h\Z,:yºû\\×ŠK3Fä)€„OÊ¼Ù”ªe€ËOµ±ºÔ¯’ÒÜ3;\Zª2åz%}Ï¢%ø³áÉu%Šfº… vU,£i`œŒôæ¨kÿ\0ôoÙK¥éÚƒl™ÄrìÈ=ÆkÂµ}RÑnE¾¡ÆÌ	Cœ‡\0‘{ŒŠŠÚÙ¤Ä:ÄT€29\'ü+WkÚÖ%w¹èz×„ì<5mz’Ü™g8û+ fÝÁV9ùqÖ¸+’H*79çü+­ÿ\0…y¬jÖr_Ú]ZÍg&4©8ÁÈÏƒšæ5›=OKU‹PÓM¹wÄò/ÌWŒ`úR©NË`Œ®ÌÛ©ÞI>s™Ê}0*©ã­!94g9=+\Z’DÁ9ÆGqHìî0£L\'š•\\®nô¼Àj…ïÖœË»%qIònÏL÷§£w\'½1ªá©çžsMÚŒâ˜\nxŠUúšBÆÏ\"€\'N\0â¥Xö¨ Õt8#ƒÖ¬#œúûR\r€ÄdcŽN*«DcnGz¼¤py¤–?22Tr T¹X@¦\08&”zT…îqÞšS•#ÓLvHØëÅKæ5`¡IqŒ‘ž*$@XƒÆ*ÌÖ¢)QÒEOéIØV&xQ‘%ˆù@ óY÷1´sýzÕ‹yZ9€=3ß¥&¤3u…ãæôGF;èþttâŽÕ°Xwn)ò¥ì)½Í m¬ps]úÁq•`í~™î>•Ç\rtÖ¶]h_Ú €±Ÿ(àòÍÿ\0ê\"¹qJ.*ãŽ…ïEÓ-×™\Zb€F2}‹\Z«§Mý¥¨ÚÚùj¬X\"øúÔÞQsp¶·	\"wÃ6\0ÁêOçPë–æ=JàD!X Â#EÐú÷®hÙ?fË¿RçŠgÐ…ËÍgéxd\"XHÛ\ZcŒ/zÀ´\rzÛK#¿·¥V\"Id%·<„óžI­}\n;KmF6Ô•Í«)ß°r8ýk¦Ñ§uÜäQ–&IJóÇµPpCé[S¤Ire`ÌŽçjg¶{šÇ¸Á‘˜\r œíëŠÞ”®CV¾[ƒŒŽÿ\0Jèí,%Õ4Ó$r,P4É	SÔ>8\'Ú¹ŒüØ­¯^ÛÅ¨©½i’æg8ãƒÅgˆO–ñÜ#¹XÚÏ¥k[Ë!‚h·{;}\rjÜx³P½ÓÎêRä`ò¨èYñÞ²º¶·izïÜ,*’<I·p7ïW-#G,£gÊ3Éö¬#U)IjSÑèX³H^ö&¸.`-ûÁÞ5ôw‡üáË{x/ìâh^R|¦g*ÅJcÇ95à3Eae®¤Z=É¾³d\\<¨·ÈçÐ× øKâ%²XG§ê±,×1*ÛqÂ÷9þ/záÌ¡U¥(+®ÅA¤vÐjÂÆÇU[•0]Z4ÓÆHÇ*}Íyæ·â3{ }¾ÊIm¦–Q¡eò˜sÎ>ð=y­MfïJÓ§™%¾·¹–5oÝ8ÿ\0X¤}Ñî;\ZòÍBö	 X£P˜l“Ü×¾v‡:—:;ÍSÕ<:úµÒ¸ÜÑ¬¨%?Çš}ž—ssá+›»k’ÓÛmêÃ3•î}ë›]YÛFK\'¼œª>åŒœ¨ôÇ§zÝðÎ¸ÚDí&cØ¤…åû®ªrTŽù®ê´êÆ-.úš&½Ñî¬VÞðÎRÞH,°”çLúû{WAkª,zµµ¿‹n¯<ˆù\rlùAÈ=8ãô®SYñÅÕÿ\0Úl¢ÄzsÉ¾;t?*ó‘Ž=rj”Zäè¨R@Bîr$Pv’À?JQ£U«µ¨Ü’Øêµÿ\0\rÛ®²¯5Å¤ú’‰RÛ¶s¸ú9Ç½?Ãv\Z¤W·kàÛt½ŽbšæáG•2ÛOô®7¹Õï!³óð‚¯˜øñ=+Ø|âIt=:+¶´($ò™\ZEÕû9=Æ85ÕJPÕÝþ\0¬õ<WQµºÒ5i#‘9¡“#ŒƒÛÚ»­4ÛË%ÔÙ’_Þ+ÜBÙA\'\'aõíøÕoˆºd<š¬³-\'—´qŒä{dãð®[C¹ÅÜ6¿e–åYîàvã¦;×R~ÞŠŸRvg½ÞøMÖ¼?qu¤½ÂM8.Q¦É\\tüGäúÐÅâéËÏp^FFè0Ç$qßŒñ]D—CÒÞ-+N¹Žà‚»nb\'rÿ\0{#¸Çzó‹}v[yn$KxüÙ[p™9ÊžÆ²Œ\'(µmZ¥¬|!c©Ey5ô·0M gh£°CÓ¯õ®Æž‡Ã\ZëÚÙß}ªÍ€dbáˆ8äw­MÆò^Þ°ñ§röæ6,<ÆVÝÐcûþÌj÷’ê\Z„¥.ZåÂÈãŒñElªûÏDCfªVfqž@ w\0tõ­}[G¿Òà¶žòÒHDÀìgk úŽ3^’•ÅÐ›8È¨Ø6}éäc‘ÆyÎšab!•9èkÓ<y¦\n_%é„1RpÜ³0aÇÐŠó\\sõ®‹ÃZ–›gk¨Zj–*Ü ò%ŒÑ8=yìEg^\n¤lÂ×#k·Óo¦Ì(ë(*¹OJ¬—Ìm‹ò“÷i%‚IL²nSpHöªA™Xvæ’„/ jmµË@†3l‡æç¯JE¾YcˆöƒÙNk\nYdà³ŸlU‹Kyn iŒ~ñô¥N)\\¿oh†Ûd{œoÀ8O©é¶piTâ¸VÜ~Wï‘è}jOL¶œ\Zi×I#ìÚã¦éŽõ[Äjñ^]ÁpH[w7=ËÍ/iËr­ØçLd¯P=\r8È§y$Ç¹O8äTh\nå[¿¯jìº% Þz{Ò²–Q“Ïµ0­ô¥ó=²i¢GŒ…Álã¥DÎN}h-žzfr0:Ó\ZBãŠølúÔá\n¹r;Tr¦2qV˜ìF^ô”œŠLäûÕÄ™âûñBŒôíN?5\0 4¸¤êCVÅ‘Í <ÓãI‚3éHM8q@…3½H1La‚h5´Æ„”\0pzõ©¨<>r Þ•Š+~ÊòìŒ.ƒÍØW$ñ_­sÕVjHV3ln\r½äo´0¡8Íz’]ØÙDnt¨ä—äxœ7ç<W›È6Èq]>‹¬•´ŽÚâyAù¨Õ–\"7I­Š]Öç§³/˜Wœ*q©ùºö¢ŠÛ¡¡^êTd8ûÃµbÞÈñÁÈqœfŠ)	‰Ä y\ndrÁ‡5—y|±H@Î3Á4QSÔ†T¸ÔÉ„ÄŽÃ5—%ÜŽÌ¢Š¤\"GfÎ8=êò*¨7=è¢¥¶#wMP‰»‚=êÓ?¾Wf\'?!íéEMQ¢v\'V—6ì–Vìe?uÝ¹_ÀWro4ÍPÍÛ¤‰°\\tú};QEcBê¥‡\'s.â’o\nüá{{S­g²34aÉzqÖŠ+½êŒÙcí”ùÉÇó¬Ù¤;Ž…VQZ™Ý²\"ä¸ó4®ª¹ÂŽ‚Š*Ún=Š\0cÆ*T•28âŠ)t¸\"ÄªÇ•¸9ÈÅL’y0eä˜°È¢ŠÎ×Z‰•Ssºíùû¢®Û—FÞ\0ÏQII§a¢m€(ÞxnGÒ«Í)‡(ÇröÁ¢ŠÑn#6be\'-´BDÁ@\'§z(ªzd7î°GÍYÒ›ÅUÅ¯¸ŸZcsŽÆŠ*Æ>1“ô«EÁný¨¢†·o»ªã98®‚Ù\"ŠÊîI,6Å\Zþ<ŸÈ~´QYÈÒ\Z:B,‘•<Z¸±Ç¹nyïE1ô+Ýê6¶Ò.<±ôéõªWþ$Ž[Hm–!˜A\nTrrsÏ­Qdgr½ýÙu(Ž‡8x\0úVÊêš’\"KqmæGÚ²c<æ(¢°¨Kd–š¹¹¶—ý|‘I¹™Tõ\0w­¿ì;mRÎÞé¦bK‡’\"¿xƒ\'§4Q^V6ðIÄ‰»lZ¹ÑtÙu¸ò¿Ñ0­ÔýÓŽ™†°õ;hîa‘lÑÌ’¸eŽ5è‹¢ŠÆ”ä’wØ›±ÎÞÙOcrÐJ I·;Q³ÇÖ²nå¹’re2e€RIíEêQ|Ölh§5®1µÁî{T&gÂlQEt·¡KCWNð®§ª[Ëskg$‘ÄpÛHÏLô¬©	‚GP\nŸºCEVTæå\'6CÄÑ‚Fì8ÍwÞñìVZžä¼Ïå4¨Nv®Ý¼½°{\Z(«©ÊØ£¹™¬˜¢¼[?=S+,ÊÒnWn¤ÓÓjzüwšsªùÎ@‰\"`·”%¿<QEqÉ\'‹”ŽÖÙí|[~Òé2ÌÇO»¶øäœŒ(Ð\0ÜñŒÒê+«x²ý´åŽk¹–=Û˜¸)ç€1ÍW‹^¤©óF; ZÄòísÂ×šmyÑ®š@ñ»DÛœä÷íŠÏÓ,ìôkÉ—Xµ•î\Z0b‹o=~¹‚(¢½Ü-IT ¥-Ø¤’#O\rj~ »³ŽÚIÖÚ&œ…%wFsøgô5Ùø[ÇwRÜYé‹oq?—Â‘y„£1“\0ÉÏ4Q[TIÁ·Ð—±ØxïÄÜxa-&Ûæ\"Œ,‘Èë€@\'œ{ŽEyË§‚ñ’Ó;)9åp:~ ÑEa…ŒeÚÜ7gH¾4ÔnœM%ãÅ4qÒHÐn#ß=Ï­[ðåôÍy óÁŽbZT™°%À8úsÒŠ+g]Å\r•uêvP›ÉaEˆJyƒx\rÈ;zàÖ\Z$óüè¢·ŽÃè^·;›/”Œ€=*¥õŒM#3J:àqEžã(GÑò\rÀt©ä…ä\ncÀ+Ô:(¢@–„\"æK;€Ñ(P1»ýêÂÇç\\‰™ÝÎæoRh¢’@‹k°çÇB*\'€%ä8ëÏj(¦¯µYK( w>õ“wÍÃ1ÇQMì&@ÒJQƒœ\Z˜]$—ìÖ,1Ü†c’ zžôQSdØY•ï&k‚e€Ó¨Â«ÇNœv¨&Ðf´k¹á(H»Îã‘ž¸Ç¥V2n.ÈÎ†VÈ<V­”i,eƒü&Š+¢ú @¶-Á/Ò´b…C\0¸Š((|Ö»É+Œâ²dÄ›@ïÒŠ)!¡ŒdepjÙUã#¥U\r\0³ólö¥ŠÐ’PŽGz(¦¡²Z6ã‘ÓŠˆÂS¯­U|c¢H˜œŠ(¦	+Á5jÛP¸³µ–;y“¸©Ç`ÑEDâšÔLÊe;ÁE9\'Å2þÒk{³€àö¢Šž¢3obx£]üg¥S^¸=h¢µŽÃCœqVíã\"584QJ¦Ã:/JµºžÌ¹·óùoÁcÇÐ™«·—Úu–£uŸnmáDø;Á\0r	<dæŠ+…û×Lc.[EM}³Í’öt	—cÀbÇ<f³ô­mí4ç²Ž+eòÙŸ{¯Îç·>‚Š(ŒSŽ¢Ù—5{\rKAûjÒXbb#*±~>f®yé\\ÊFV%Ý+ƒ†Z(ª¤ÚMl›$ƒ–QÇ©Æè^\\‰.òÛ˜cß¥Vëá`Ù–IÑ„ŠY;¯?Ê¯i÷1<¹VHÎédïj(®y7(´ËZ3¤½½Ò%šÚ!ÿ\0×Cûõ—€Ò}{cÓ§[Âº¶¥¦ë\"’HÚicƒ#–ÆÁê0(¢¹ãEdRÞåýSVÔanìæÚ—xi-$\"EfQµ¸=ô¬½J¾¾–êk‹ha‰œîùUGo¯Z(¢¥iF—2Ü*«leêú%Î•©Im:„P~W\r½H##\rÜb±åP¹ùNìðEWu	¹FìÉŒ™\n|Âpw ùŒO#\0™;I<j(­Ö¯Pf´–±›nctÛhX,Xrg·#§½Qdhd!‡4QWSIhLIc|¤pz\Zéí4÷kO´³¨\0Œò}(¢³›±HŽ`7qéUYˆ#QV„5† Ô{ÊàúQE\r8aV!™H%I8Á¥Ôo/\Z?*æVr:‡äôã4Q\\3IÈrå¢†õ!dÀ.€õõÁ®ÃFò|Si-ÄóEÍ¨Ž8™\0ó\0Î:u8ÇZ(§ˆþ7Rá½ŒDÐ¿±Ï—ç‘´œ\0ßáÖ´ôø/|?|öÒ$&¸³™p#¶ÒzfŠ+.w%fid¶:ë[+	õ;Èã‰¢—ÈŠŠ@ó1ü_­qÞ93M5ÍË s#œå° ~bŠ+\Z\rÆµå±Àg¡¾SŸZ(¯pÀÉ¥c€1Ei\'ñ§g8õ¢Š\0º÷[íÑRÈ¤îrs¸}*m*üé·‘ÝF›Â]I#‚0pGÖŠ)CIh)lz7ƒ<=sâÁö«Ì\\éðH6Ç#|À1Áê:f¶×Àšv“cuk®YZÍ,v²k„™ƒä’@eõö¢Šôbù™Ë\'cËç›U²Á\rÔÉk2•@[\0CëÚ­êVº®¡¢®¡Äq)Ÿ.¡xÅW‘Ž¯:m(¾§Tjç ë±¶šMµŠ¯ÝäÑEjžÃ\Z¸©P)ÏþfŠ(`Fð1Nh”ôÇŠ*na˜Ç4˜ÀÅUˆ:G^ô»Žh¢€$Š@>òæ¥\r“1E1¤€Çô¦ùˆÇJ(©hd2œŸQÖ£f\0ëƒE’)l\"Ç®jÄ23~àÈ}qE=€‘ãXäÃéœŠŽ÷s¨˜Ý‹QEJÝDŸzLóš(®Ž‚ê( Š=h¢€Ö¶ô›æŠÂH7°÷ÇZ(¬ª¤ã¨\ZVÂq\"0Šb®qÆzŸJ½¬ˆ4X¡*ÀîÌî>™¢Šó$ÿ\0x\"½Ò¥„6Òé³¼b¼·PêîNÙ#ì{æ¦¶½7K1·R‘Å\0ûÇŽÿ\0Z(«jí¶4Ê7®÷Ú›…VY˜*¨àg}–ó²J¡]Nz\Z(®ª2i¨ù\"˜;\\Î\rt\Zzi÷\ZmÉžÐæMáÈ.@éÁÁ¢Šx¯„QÜÍÕ.$¿T¹(r£©«–þ»—ÃÏ¬Û‰¤PK\0ÛOÓš(©mÆ\nÃZ³(]ÏÊqÔõéŠsÀÑ©,Çq<QëE£“æ°¬\\·õ;ˆ­å»\náB!”œEÏjžm\nHõ4²bûT@’âO•»ñùÑEsÕ›‹vì4•‡ê~»ÓîbI 0¤˜Q¹·sŠÑ¿][tK	-nÔ›V c#\'øºûQEsÓ«*NEÎ)=ë½Ö#p’…“pÚ²qŠÍ[v[o´	Óxlyg©÷¢Šè£95©\rb@™¤ž4C9ElãŠßÐ|W[Xêq¼Ú`rd‹€A#ÏZ(ª©N5.¤„Gâš+8ÔÝ4–ÌB‡ºöoþµdxU—@ñ\r–«/m(|c9Çåš(¨¡é8°{¯‰<ggu«[_is\\ªÆÌ|¹Q>@Ü£Ó$ðk™ÑldÕõ¨â¶¸¶†à¹t2œ&@Ï§µVJ\n•\'ÉÐkswRðëêšHÕ<ˆÒþYÌRO‡RG`x<T:¦–Ûl5û&ùªÜÀpT±ãÓžh¢”$å\rJkSW\\ð\\xQ®tÝRK‰-	ó –BÁÚ;þ†¼¿~	Ü1ŽÔQ]vÜ]Ä÷‚¹ÈÅ4ëE½„&Ú±et,ï!ŸËY<¶QÆU½ˆ¢Š\Zº°£4X´íCG„]Ág%ÂÚ)a‘3ÓêCY,øs¡ê:P“K·ŽÂâ6;ˆc‰°&Š+åYÒ¬¹S[ßCÁîa0Îð³d£šbÄg®Z(¯©NñW2\'Ie‰ÁCµ—kRÝ_×‡Îœ«cÑEC„[Õ5aÕtéüèZÁ ‚h\08Š8y~¤~µÍÎ€$sƒEŠ‹Ð$Û+î54¼Ž`–=1E¤äÔ[BKRÝ®œ$’Xn_É‘P²ïéõ¨®tù,îNÈHÁÊ6áÈÏZ(¬¡&Þ¥µb³†_\'p¢dfˆ998¢ŠÒíXHŽÔ˜ÞŠ+¥l!ÊxëNÎh¢\r=3KÎ¥S¤f£ÛŒÑE\ZŠ\\sE	‹Ó‡‘ÍP>‚t5$Rœ0<w¢Š\Z¸n¢\n#pA3Å>ÅÐHVA•#ŒzÑEa%îŽ;ŸÿÙ',NULL,'LocalBusiness',NULL,334),
(20,'kjhjkhjk','<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<script type=\"text/javascript\" src=\'https://maps.google.com/maps/api/js?sensor=false\'></script>\r\n\r\n<script>\r\nfunction initialize()\r\n{\r\nvar mapProp = {\r\n  center:new google.maps.LatLng(51.508742,-0.120850),\r\n  zoom:5,\r\n  mapTypeId:google.maps.MapTypeId.ROADMAP\r\n  };\r\nvar map=new google.maps.Map(document.getElementById(\"googleMap\"),mapProp);\r\n}\r\n\r\ngoogle.maps.event.addDomListener(window, \'load\', initialize);\r\n</script>\r\n</head>\r\n\r\n<body>\r\n<div id=\"googleMap\" style=\"width:500px;height:380px;\"></div>\r\n\r\n</body>\r\n</html>\r\n',NULL,'LocalBusiness',NULL,330);

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
