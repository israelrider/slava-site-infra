CREATE DATABASE IF NOT EXISTS `slava_server`
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_0900_ai_ci;

USE `slava_server`;

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `role` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'customer',
  `rating` tinyint unsigned NOT NULL DEFAULT '0',
  `isEmailConfirmed` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_97672ac88f789774dd47f7c8be` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`password`,`createdAt`,`updatedAt`,`role`,`rating`,`isEmailConfirmed`) values
(1,'Demo Admin','admin@example.com','$argon2id$v=19$m=65536,t=3,p=1$QBv8w77Bc/7p8AR9wsI4Vg$gqkpq4OKWrvGpIi0JBicDiX/yUpKorcUUnwTaFdyZ7s','2025-09-23 17:41:07.209183','2025-11-18 18:11:50.000000','admin',1,1),
(2,'David Wilson','david@gmail.com','$argon2id$v=19$m=65536,t=3,p=1$QBv8w77Bc/7p8AR9wsI4Vg$gqkpq4OKWrvGpIi0JBicDiX/yUpKorcUUnwTaFdyZ7s','2025-09-23 17:41:07.209183','2025-11-19 10:05:25.000000','customer',0,0),
(3,'Sophia Martinez','sophia@gmail.com','$argon2id$v=19$m=65536,t=3,p=1$7BX5WXur9kPg0tb0K1/slw$8myBQSXFCjlpzhT3N/UWSTapvWob4qFvzbyiMP9NX8g','2025-09-23 17:41:07.209183','2025-11-18 14:07:40.000000','customer',0,0),
(7,'James Anderson','james@gmail.com','$argon2id$v=19$m=65536,t=3,p=1$rsyzy1FRH/jVud4Di3fubg$9mAeOO9PXFyOyv9puU3v05RBJ0Ak3a7vsq1VR/+ECYM','2025-09-25 18:55:05.549998','2025-11-18 14:07:52.000000','customer',0,0),
(8,'Emily Davis','emily@gmail.com','$argon2id$v=19$m=65536,t=3,p=1$fPfkQWcS8eTSkieiz6PzmA$7ZVE1/6Xours9rmu1NiHonbMzZ8alBp1L5FEk3wd/Eg','2025-11-06 13:46:44.886240','2025-11-12 10:38:46.338494','customer',0,0),
(9,'Michael Brown','michael@gmail.com','$argon2id$v=19$m=65536,t=3,p=1$iVknD7X4dF1gp0ibtevchA$NIPc4NmyOtq6ApH/XkjX6MsKfhmz7SyLdotLEgIQ/G8','2025-11-06 13:47:28.311332','2025-11-12 10:38:47.594794','customer',0,0),
(10,'Olivia Garcia','olivia@gmail.com','$argon2id$v=19$m=65536,t=3,p=1$7iRbX5urp9McLfLhyYym7w$RPiXsbyVVjtRDCWp0ncQqVxQ0mOfGmxVx/cz4HoWnWs','2025-11-06 13:48:03.363404','2025-11-12 10:38:49.234435','customer',0,0);

/*Table structure for table `diary` */

DROP TABLE IF EXISTS `diary`;

CREATE TABLE `diary` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `data` json DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `userId` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `REL_bda48d3f2d272ca20f3aa612e5` (`userId`),
  CONSTRAINT `FK_bda48d3f2d272ca20f3aa612e5c` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `diary` */

insert  into `diary`(`id`,`data`,`createdAt`,`updatedAt`,`userId`) values
(2,'{\"Nov%201\": {\"1762015336222\": {\"name\": \"aaaaaaaa\", \"coordinate\": 55}}, \"Nov%202\": {}, \"Nov%204\": {\"1762150480645\": {\"name\": \"aaaaaaaa\", \"coordinate\": 65}, \"1762150484485\": {\"name\": \"aaaaaaaa\", \"coordinate\": 150}, \"1762150487889\": {\"name\": \"aaaaaaaa\", \"coordinate\": 109}, \"1762150519704\": {\"name\": \"aaaaaaaa\", \"coordinate\": 0}}, \"Nov%207\": {\"1762531749221\": {\"name\": \"aaaaaaaa\", \"coordinate\": 122}, \"1762542645754\": {\"name\": \"чсаыв\", \"coordinate\": 448}, \"1762542653171\": {\"name\": \"чсаыв\", \"coordinate\": 14}}, \"Nov%208\": {\"1762618279811\": {\"name\": \"aaaaaaaa\", \"coordinate\": 216}, \"1762618292318\": {\"name\": \"чсаыв\", \"coordinate\": 101}, \"1762618315693\": {\"name\": \"aaaaaaaa\", \"coordinate\": 176}, \"1762618321349\": {\"name\": \"aaaaaa\", \"coordinate\": 264}, \"1762618333129\": {\"name\": \"aaaaaaaa\", \"coordinate\": 389}}, \"Nov%2013\": {\"1763040174222\": {\"name\": \"aaaaaaaa\", \"coordinate\": 155}, \"1763040179012\": {\"name\": \"чсаыв\", \"coordinate\": 40}}, \"Oct%2028\": {\"1761369942543\": {\"name\": \"Morning Meeting\", \"coordinate\": 246}, \"1761369942637\": {\"name\": \"Project Discussion\", \"coordinate\": 1}, \"1761369942749\": {\"name\": \"Client Call\", \"coordinate\": 84}, \"1761369942858\": {\"name\": \"Code Review\", \"coordinate\": 37}, \"1761485452187\": {\"name\": \"aaaaaaaa\", \"coordinate\": 404}}, \"Oct%2029\": {\"1761485485158\": {\"name\": \"aaaaaaaa\", \"coordinate\": 472}, \"1761485490019\": {\"name\": \"чсаыв\", \"coordinate\": 56}}, \"Oct%2031\": {\"1761904497532\": {\"name\": \"aaaaaaaa\", \"coordinate\": 155}, \"1761904535542\": {\"name\": \"чсаыв\", \"coordinate\": 90}, \"1761904544900\": {\"name\": \"aaaaaaaa\", \"coordinate\": 254}, \"1761904607286\": {\"name\": \"чсаыв\", \"coordinate\": 17}, \"1761904619739\": {\"name\": \"чсаыв\", \"coordinate\": 208}}}','2025-10-25 15:12:18.422448','2025-11-13 15:23:06.000000',1),
(3,'{\"Oct%2026\": {\"1761485961787\": {\"name\": \"aaaaaaaa\", \"coordinate\": 4}, \"1761485967707\": {\"name\": \"чсаыв\", \"coordinate\": 562}}, \"Oct%2027\": {\"1761485992507\": {\"name\": \"aaaaaaaa\", \"coordinate\": 84}, \"1761485996313\": {\"name\": \"чсаыв\", \"coordinate\": 575}}}','2025-10-26 15:39:21.814218','2025-10-26 15:40:05.000000',2),
(4,'{\"Oct%2031\": {\"1761904686660\": {\"name\": \"aaaaaaaa\", \"coordinate\": 114}}}','2025-10-31 11:58:06.687167','2025-10-31 11:58:06.687167',7);

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `userId` int unsigned DEFAULT NULL,
  `comment` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`),
  KEY `FK_4a39e6ac0cecdf18307a365cf3c` (`userId`),
  CONSTRAINT `FK_4a39e6ac0cecdf18307a365cf3c` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `feedback` */

insert  into `feedback`(`id`,`createdAt`,`updatedAt`,`userId`,`comment`) values
(2,'2025-11-03 13:32:49.858616','2025-11-07 18:17:12.914362',2,'Customer support was exceptional. They helped me resolve my issue within minutes!'),
(5,'2025-11-05 13:32:49.858616','2025-11-05 13:32:49.858616',3,'The team went above and beyond to ensure my satisfaction. Highly recommend their services!'),
(6,'2025-11-04 13:32:49.858616','2025-11-04 13:32:49.858616',7,'Fast response times and very knowledgeable staff. I felt valued as a customer.'),
(7,'2025-11-06 13:32:49.858616','2025-11-07 18:17:04.208477',8,'I found a few bugs in the latest update, but the team was very responsive and fixed them quickly.'),
(8,'2025-11-02 13:32:49.858616','2025-11-02 13:32:49.858616',9,'Great experience overall! The support team was friendly and efficient.'),
(9,'2025-11-01 13:32:49.858616','2025-11-01 13:32:49.858616',10,'I appreciate the prompt assistance I received. It made a big difference!'),
(14,'2025-11-07 19:01:21.793955','2025-11-07 19:01:21.793955',1,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ');