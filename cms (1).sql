-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2020 at 06:33 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Bootstrap'),
(2, 'Javascript'),
(3, 'PHP'),
(4, 'JAVA'),
(9, 'Python 3'),
(13, 'Machine Learning');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(1, 3, 'Edwin Diaz', 'edwindiaz@edwindiaz.com', 'This is just an example content.', 'approved', '2020-08-13'),
(4, 2, 'Parag', 'parag@gmail.com', 'Hello Biro', 'unapproved', '2020-08-24'),
(5, 7, 'Raj', 'raj@gmailcom', 'Hey maaaaaaaaaaaaaaaaaaaan', 'unapproved', '2020-08-24'),
(6, 2, 'Peter', 'peter@gmail.com', 'jijlkjkjjioajHelobdbjkdbkEpjdosin', 'approved', '2020-08-24'),
(7, 2, 'hello', 'heallo@nd.com', 'ojosjddjosodk', 'unapproved', '2020-08-24'),
(9, 2, 'Parker', 'parker@fmal.com', 'pjkokkopLPI#POKPMlmlm', 'unapproved', '2020-08-24'),
(10, 2, 'Shivam', 'shivam@gmal.com', 'Hello Diaz!! Bro u r superb', 'unapproved', '2020-08-25'),
(11, 2, 'Edwin', 'prn@gmail.com', 'joppkk', 'unapproved', '2020-08-25'),
(12, 2, 'Prahlad', 'prahlad@gmail.com', 'Xsfndddddddddddddddd', 'unapproved', '2020-11-20');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(2, 1, 'Bootstrap 5.0', 'Edwin Diaz', '2020-08-25', 'aerial-photography-of-snow-covered-trees-1438761 (1).jpg', '                  WOOOW birrro I really really like this                                                                                          ', 'edwin, javascript, php', 9, 'published'),
(3, 1, 'Javascript Post', 'Belinda', '2020-08-25', 'img1.jpg', '         WOOOW MAAN . This is a really cool post. Elinda be careful !!!!!!!!!!!!!!!!         ', 'javascript2, course, class, belinda', 4, 'published'),
(7, 1, 'Best PHP course EVER', 'Prahlad', '2020-08-25', 'man-doing-hand-stand-on-mountain-2387866.jpg', '         Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n         ', 'PHP,best', 4, 'draft');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystrings22'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(1, 'rico', '123', 'Ricos', 'Sawas', 'ricoswary@gmail.com', '', 'admin', ''),
(2, 'kane', 'Xpsm@1330', 'Williamson', 'Kane', 'william@gmail.com', '', 'subscriber', ''),
(4, 'finchy', 'Xpsm@1330', 'Aaron', 'Finch', 'finchy@gmail.com', '', 'subscriber', ''),
(5, 'pom', 'Xspmw', 'Pom', 'Tm', 'pom@gmail.com', '', 'admin', ''),
(6, 'whatever', 'Xpsm@1330', 'Juan', 'Peta', 'whekj@gmal.com', '', 'admin', '$2y$10$iusesomecrazystring22'),
(9, 'warner', 'ks', 'David', 'Warner', 'warner@njnk', '', 'subscriber', '$2y$10$iusesomecrazystring22'),
(10, 'sriram', '123', 'Sai', 'Sriram', 'sriram@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystring22'),
(11, 'poai', '$1$Z6xDawMr$z3xwvZ0sSzMNwm12b9/j.0', '', '', 'paod@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystring22'),
(12, 'point', '$1$QXxyQhDu$gmt.NGYonKm.kO9Q75pnI/', '', '', 'poinat@mgail.cm', '', 'subscriber', '$2y$10$iusesomecrazystring22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
