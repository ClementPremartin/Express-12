DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `director` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `duration` int NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

INSERT INTO `movies` (`id`, `title`, `director`, `year`, `color`, `duration`, `user_id`) VALUES
(1, 'Citizen Kane', 'Orson Wells', '1941', '0', 120, NULL),
(2, 'The Godfather', 'Francis Ford Coppola', '1972', '1', 180, NULL),
(3, 'Pulp Fiction', 'Quentin Tarantino', '1994', '1', 180, NULL),
(4, 'Apocalypse Now', 'Francis Ford Coppola', '1979', '1', 150, NULL),
(5, '2001 a space odyssey', 'Stanley Kubrick', '1968', '1', 160, NULL),
(6, 'The Dark Knight', 'Christopher Nolan', '2008', '1', 150, NULL),
(7, 'asd', 'asd', '2000', 'red', 123123, 7);
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
    `id` int NOT NULL AUTO_INCREMENT,
    `firstname` varchar(255) NOT NULL,
    `lastname` varchar(255) NOT NULL,
    `email` varchar(255) UNIQUE NOT NULL,
    `city` varchar(255) DEFAULT NULL,
    `language` varchar(255) DEFAULT NULL,
    `hashedPassword` varchar(255) NOT NULL,
    `token` varchar(255),
    PRIMARY KEY (`id`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 7 DEFAULT CHARSET = utf8;
INSERT INTO
  `users` (firstname, lastname, email, city, language, hashedPassword)
VALUES
  (
    'John',
    'Doe',
    'john.doe@example.com',
    'Paris',
    'English',
    "$argon2id$v=19$m=16,t=2,p=1$emVmZXpmemZlemVmZWR6ZXplZg$rqZkhxu5YbqCGHPNrjJZpQ"
  ),(
    'Valeriy',
    'Appius',
    'valeriy.ppius@example.com',
    'Moscow',
    'Russian',
    '$argon2id$v=19$m=16,t=2,p=1$emVmemVmemZlemZ6ZnpmZQ$eSetR6KPUNAGW+q+wDadcw'
  ),(
    'Ralf',
    'Geronimo',
    'ralf.geronimo@example.com',
    'New York',
    'Italian',
    '$argon2id$v=19$m=16,t=2,p=1$emVmemVmemZlemZ6ZnpmZXphZGF6ZGQ$a0bg5DZB6H6v3jjQC81DXg'
  ),(
    'Maria',
    'Iskandar',
    'maria.iskandar@example.com',
    'New York',
    'German',
    '$argon2id$v=19$m=16,t=2,p=1$emVmemVmemZlenplZHpkZnpmemZlemFkYXpkZA$V1qAnJDyMuuWG7g9yoGYXA'
  ),(
    'Jane',
    'Doe',
    'jane.doe@example.com',
    'London',
    'English',
    '$argon2id$v=19$m=16,t=2,p=1$emVmemVmemZlenplZHpkZGZ6ZnpmZXphZGF6ZGQ$VCzq45PL9t8khtc44Kk5iw'
  ),(
    'Johanna',
    'Martino',
    'johanna.martino@example.com',
    'Milan',
    'Spanish',
    '$argon2id$v=19$m=16,t=2,p=1$emVmemVmemVmemZlenplZHpkZGZ6ZnpmZXphZGF6ZGQ$UKaGZ9hGFn/S5SBQDMe/Uw'
  );