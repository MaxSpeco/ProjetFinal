-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 01, 2022 at 09:28 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projet`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `rrp` decimal(7,2) NOT NULL DEFAULT '0.00',
  `quantity` int(11) NOT NULL,
  `img` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `desc`, `price`, `rrp`, `quantity`, `img`, `date_added`) VALUES
(1, 'arbre', '<p>Erable majestique,il donnera du cachet a votre cour</p>\r\n<h3>specification</h3>\r\n<ul>\r\n<li>Pret a planter,a ete examine et ne contient pas de maldies</li>\r\n<li>un atout pour votre paysage.</li>\r\n<li>Eleve avec amour.</li>\r\n<li>tres resistant aux changements climatiques.</li>\r\n</ul>', '299.99', '0.00', 10, 'arbre.jpg', '2022-03-13 17:55:22'),
(2, 'Buisson', '', '149.99', '19.99', 34, 'buisson.jpg', '2022-03-13 18:52:49'),
(3, 'graines', '', '10.99', '0.00', 23, 'graine.jpg', '2022-03-13 18:47:56'),
(4, 'pelle', '', '25.99', '0.00', 23, 'pelle.jpg', '2022-03-13 18:47:56'),
(5, 'terreaux', '', '4.99', '0.00', 20, 'terreaux.jpg', '2022-03-13 17:42:04');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
