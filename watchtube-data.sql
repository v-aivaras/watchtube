-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 07, 2021 at 05:37 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `watchtube`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Film & Animation'),
(2, 'Autos & Vehicles'),
(3, 'Music'),
(4, 'Pets & Animals'),
(5, 'Sports'),
(6, 'Travel & Events'),
(7, 'Gaming'),
(8, 'People & Blogs'),
(9, 'Comedy'),
(10, 'Entertainment'),
(11, 'News & Politics'),
(12, 'Howto & Style'),
(13, 'Education'),
(14, 'Science & Technology'),
(15, 'Nonprofits & Activism');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `postedBy` varchar(50) NOT NULL,
  `videoId` int(11) NOT NULL,
  `responseTo` int(11) DEFAULT '0',
  `body` text NOT NULL,
  `datePosted` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `postedBy`, `videoId`, `responseTo`, `body`, `datePosted`) VALUES
(1, 'aivaras', 5, 0, 'Nice!', '2021-02-21 12:13:59'),
(2, 'aivaras', 8, 0, 'Funny cat!', '2021-02-21 13:24:15'),
(3, 'Cool88', 5, 0, 'That\'s cool! I\'ve been there too!', '2021-03-07 17:24:51'),
(4, 'JSmith', 5, 3, 'Awesome!', '2021-03-07 17:25:49'),
(5, 'aivaras', 5, 1, 'Some comment', '2021-03-07 17:26:32'),
(6, 'aivaras', 5, 1, 'And another', '2021-03-07 17:26:40');

-- --------------------------------------------------------

--
-- Table structure for table `dislikes`
--

CREATE TABLE `dislikes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `commentId` int(11) DEFAULT NULL,
  `videoId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `commentId` int(11) DEFAULT NULL,
  `videoId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `commentId`, `videoId`) VALUES
(2, 'aivaras', NULL, 5),
(4, 'aivaras', NULL, 7),
(5, 'aivaras', NULL, 9),
(6, 'aivaras', NULL, 6),
(7, 'JSmith', NULL, 6),
(8, 'JSmith', NULL, 9),
(9, 'Cool88', NULL, 5),
(10, 'Cool88', NULL, 16),
(11, 'MrAdam', NULL, 5),
(12, 'MrAdam', NULL, 12),
(13, 'aivaras', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `userTo` varchar(50) NOT NULL,
  `userFrom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `userTo`, `userFrom`) VALUES
(4, 'MrAdam', 'JSmith'),
(5, 'MrAdam', 'Cool88'),
(6, 'aivaras', 'Cool88'),
(7, 'MrAdam', 'aivaras'),
(9, 'JSmith', 'aivaras');

-- --------------------------------------------------------

--
-- Table structure for table `thumbnails`
--

CREATE TABLE `thumbnails` (
  `id` int(11) NOT NULL,
  `videoId` int(11) DEFAULT NULL,
  `filePath` varchar(250) DEFAULT NULL,
  `selected` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thumbnails`
--

INSERT INTO `thumbnails` (`id`, `videoId`, `filePath`, `selected`) VALUES
(13, 5, 'uploads/videos/thumbnails/5-603116840bdd1.jpg', 1),
(14, 5, 'uploads/videos/thumbnails/5-60311684dd95a.jpg', 0),
(15, 5, 'uploads/videos/thumbnails/5-60311686968b0.jpg', 0),
(16, 6, 'uploads/videos/thumbnails/6-603117170fc32.jpg', 0),
(17, 6, 'uploads/videos/thumbnails/6-60311717e02b3.jpg', 0),
(18, 6, 'uploads/videos/thumbnails/6-603117196caf8.jpg', 1),
(19, 7, 'uploads/videos/thumbnails/7-6032572858a21.jpg', 1),
(20, 7, 'uploads/videos/thumbnails/7-60325728ca87c.jpg', 0),
(21, 7, 'uploads/videos/thumbnails/7-6032572990e03.jpg', 0),
(22, 8, 'uploads/videos/thumbnails/8-60325755d2554.jpg', 1),
(23, 8, 'uploads/videos/thumbnails/8-6032575645c95.jpg', 0),
(24, 8, 'uploads/videos/thumbnails/8-60325756f1012.jpg', 0),
(25, 9, 'uploads/videos/thumbnails/9-603257a272ff2.jpg', 1),
(26, 9, 'uploads/videos/thumbnails/9-603257a3144ef.jpg', 0),
(27, 9, 'uploads/videos/thumbnails/9-603257a4092b6.jpg', 0),
(28, 10, 'uploads/videos/thumbnails/10-603257eb3b279.jpg', 1),
(29, 10, 'uploads/videos/thumbnails/10-603257eb96cd8.jpg', 0),
(30, 10, 'uploads/videos/thumbnails/10-603257ec2a307.jpg', 0),
(31, 11, 'uploads/videos/thumbnails/11-60325872c6eb8.jpg', 1),
(32, 11, 'uploads/videos/thumbnails/11-60325873ae9ab.jpg', 0),
(33, 11, 'uploads/videos/thumbnails/11-6032587538328.jpg', 0),
(34, 12, 'uploads/videos/thumbnails/12-60325945458f1.jpg', 1),
(35, 12, 'uploads/videos/thumbnails/12-60325948b3966.jpg', 0),
(36, 12, 'uploads/videos/thumbnails/12-6032594f337a6.jpg', 0),
(37, 13, 'uploads/videos/thumbnails/13-603259c871d79.jpg', 1),
(38, 13, 'uploads/videos/thumbnails/13-603259ca6b03b.jpg', 0),
(39, 13, 'uploads/videos/thumbnails/13-603259cdcb7b6.jpg', 0),
(40, 14, 'uploads/videos/thumbnails/14-60325ac61ce73.jpg', 1),
(41, 14, 'uploads/videos/thumbnails/14-60325ac7e29f9.jpg', 0),
(42, 14, 'uploads/videos/thumbnails/14-60325acb34968.jpg', 0),
(43, 15, 'uploads/videos/thumbnails/15-60325b78e46f2.jpg', 1),
(44, 15, 'uploads/videos/thumbnails/15-60325b795a09b.jpg', 0),
(45, 15, 'uploads/videos/thumbnails/15-60325b7a0368b.jpg', 0),
(46, 16, 'uploads/videos/thumbnails/16-60325bda1c30e.jpg', 1),
(47, 16, 'uploads/videos/thumbnails/16-60325bdae56d7.jpg', 0),
(48, 16, 'uploads/videos/thumbnails/16-60325bdc77cc9.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signUpDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `profilePic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `username`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'John', 'Smith', 'JSmith', 'john.smith@js.com', '0dd3e512642c97ca3f747f9a76e374fbda73f9292823c0313be9d78add7cdd8f72235af0c553dd26797e78e1854edee0ae002f8aba074b066dfce1af114e32f8', '2021-02-12 18:36:39', 'assets/images/profilePictures/default-male.png'),
(2, 'Adam', 'Adman', 'MrAdam', 'mr@adam.com', '72347be040d618ac128837a644191f75bd7409491e6edb006da94793fc40f82e8228d091a86788778988b5db51451306e5bfe896d89664541478bee9f484a358', '2021-02-12 18:40:38', 'assets/images/profilePictures/default-male.png'),
(3, 'Tracey', 'Bond', 'Cool88', 'cool@88.com', '0dd3e512642c97ca3f747f9a76e374fbda73f9292823c0313be9d78add7cdd8f72235af0c553dd26797e78e1854edee0ae002f8aba074b066dfce1af114e32f8', '2021-02-13 10:58:48', 'assets/images/profilePictures/default-female.png'),
(4, 'Aivaras', 'V', 'aivaras', 'aivaras@aivaras.com', '0dd3e512642c97ca3f747f9a76e374fbda73f9292823c0313be9d78add7cdd8f72235af0c553dd26797e78e1854edee0ae002f8aba074b066dfce1af114e32f8', '2021-02-20 13:52:56', 'assets/images/profilePictures/default.png');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `uploadedBy` varchar(50) NOT NULL,
  `title` varchar(70) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `privacy` int(11) NOT NULL,
  `filePath` varchar(250) NOT NULL,
  `category` int(11) NOT NULL,
  `uploadDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `views` int(11) NOT NULL DEFAULT '0',
  `duration` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `uploadedBy`, `title`, `description`, `privacy`, `filePath`, `category`, `uploadDate`, `views`, `duration`) VALUES
(5, 'JSmith', 'Hot Air Balloon Festival', 'It was very nice to see so many hot air balloons at the festival!', 1, 'uploads/videos/6031165a0a59f.mp4', 6, '2020-11-20 14:02:02', 13, '00:19'),
(6, 'MrAdam', 'Lesson How to Draw', 'In this lesson I will show You how to draw a phone!', 1, 'uploads/videos/603116f65d4a3.mp4', 12, '2020-12-14 14:04:38', 9, '00:17'),
(7, 'JSmith', 'Western Riding', 'A very nice afternoon spent at Western festival!', 1, 'uploads/videos/6032571181657.mp4', 6, '2021-02-20 12:50:25', 56, '00:06'),
(8, 'MrAdam', 'Little Kitten', 'Little Kitten Playing His Toy Mouse', 1, 'uploads/videos/603257459f377.mp4', 4, '2021-01-28 12:51:17', 19, '00:12'),
(9, 'Cool88', 'Late Evening Driving', 'Car driving towards sunset.', 1, 'uploads/videos/6032578cc1804.mp4', 2, '2021-02-21 05:52:28', 12, '00:08'),
(10, 'Cool88', 'Review of my new drone!', 'In this video I will do a quick review of my new purchase', 1, 'uploads/videos/603257e04f45b.mp4', 14, '2021-01-19 12:53:52', 11, '00:05'),
(11, 'JSmith', 'So beautiful!', 'What a beautiful and bright bird! What kind of bird is that? Comment bellow', 1, 'uploads/videos/6032584e6e39b.mp4', 4, '2021-01-11 12:55:42', 45, '00:16'),
(12, 'aivaras', 'Holiday next to this waterfall', 'Last year I had opportunity to spend my summer next to the lake and this lovely waterfall.', 1, 'uploads/videos/603258d15ae0b.mp4', 6, '2021-02-05 15:57:53', 102, '00:30'),
(13, 'MrAdam', 'Sad Pug', 'This pug is not very happy today', 1, 'uploads/videos/6032597ac921a.mp4', 4, '2020-12-21 13:00:42', 8, '00:42'),
(14, 'Cool88', 'Lesson: History of Art', 'In this lesson we will talk about the  history of art...', 1, 'uploads/videos/60325a60d6794.mp4', 13, '2021-02-01 21:04:32', 2, '00:21'),
(15, 'JSmith', 'Old phone', 'Do You remember this kind of phones?', 1, 'uploads/videos/60325b6b86ea9.mp4', 14, '2021-02-21 13:18:59', 7, '00:05'),
(16, 'MrAdam', 'Best books of the year', 'My recommendations of what to read this year', 1, 'uploads/videos/60325bbb2bbdd.mp4', 8, '2021-01-11 19:10:19', 8, '00:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dislikes`
--
ALTER TABLE `dislikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thumbnails`
--
ALTER TABLE `thumbnails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dislikes`
--
ALTER TABLE `dislikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `thumbnails`
--
ALTER TABLE `thumbnails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
