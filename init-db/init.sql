-- Set up database (optional if created via .env)
CREATE DATABASE IF NOT EXISTS team_polls_db;
USE team_polls_db;

-- Create `vote` table
CREATE TABLE `vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `expiresAt` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert seed data into `vote`
INSERT INTO `vote` (`id`, `description`, `created_at`, `expiresAt`) VALUES
(1, 'What is your favorite color', '2025-05-17 13:05:12', '2025-05-17 13:20:36'),
(5, 'Favourite Meat', '2025-05-17 13:05:12', '2025-05-17 13:20:36'),
(6, 'Favourite Sport', '2025-05-17 13:26:40', '2025-05-17 13:26:40'),
(7, 'Favourite Code', '2025-05-17 13:33:00', '2025-05-31 10:00:00'),
(8, 'Visual Tool', '2025-05-17 13:35:13', '2025-05-17 09:34:53'),
(9, 'IO', '2025-05-17 15:43:45', '2025-05-17 15:43:45'),
(10, '1', '2025-05-17 16:53:23', '2025-05-17 13:00:00');

-- Create `vote_options` table
CREATE TABLE `vote_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL,
  `description` varchar(11),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert seed data into `vote_options`
INSERT INTO `vote_options` (`id`, `vote_id`, `name`, `description`) VALUES
(1, 1, 'Green', ''),
(2, 1, 'Red', ''),
(3, 5, 'Beef', NULL),
(4, 5, 'Chicken', NULL),
(5, 5, 'Mutton', NULL),
(6, 6, 'Cricket ', 'Soccer'),
(7, 7, 'VCS', 'VSSSSS'),
(8, 8, 'One', NULL),
(9, 8, 'Two', NULL),
(10, 8, 'Three', NULL),
(11, 9, 'one', NULL),
(12, 9, 'Two', NULL),
(13, 10, '1', '2'),
(14, 10, '3', NULL);

-- Create `votes_cast` table
CREATE TABLE `votes_cast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` CHAR(36) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert seed data into `votes_cast`
INSERT INTO `votes_cast` (`id`, `user_id`, `option_id`) VALUES
(1, NULL, 2),
(2, NULL, 1),
(3, NULL, 3),
(4, NULL, 10),
(5, NULL, 9),
(6, NULL, 8),
(7, NULL, 10),
(8, NULL, 10),
(9, NULL, 9),
(10, NULL, 8),
(11, NULL, 9),
(12, NULL, 9),
(13, NULL, 10),
(14, NULL, 9),
(15, NULL, 8),
(16, NULL, 9),
(17, NULL, 11),
(18, NULL, 12),
(19, NULL, 11),
(20, NULL, 12),
(21, NULL, 12),
(22, NULL, 11),
(23, NULL, 12),
(24, NULL, 11),
(25, NULL, 13),
(26, NULL, 14),
(27, NULL, 13),
(28, NULL, 14);

