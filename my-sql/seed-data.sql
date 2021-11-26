USE test;

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int unsigned not null auto_increment,
  `firstname` varchar(255) not null,
  `datebirth` date not null,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT = 1 CHARACTER SET utf8;

LOAD DATA INFILE '/usr/share/mysql/sql/users.csv'
INTO TABLE `users`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(firstname, dateBirth);