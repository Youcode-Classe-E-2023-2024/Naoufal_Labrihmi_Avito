

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `barcode` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `qty` int(10) NOT NULL DEFAULT '0',
  `image` varchar(1024) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `barcode`, `name`, `price`, `qty`, `image`, `description`) VALUES
(1, '001', 'MacBook Pro 15', 2400, 3, 'images/products/mac.jpg', 'Description MacBook Pro'),
(2, '002', 'MacBook Pro 13', 1900, 4, 'images/products/mac.jpg', 'Description MacBook Pro 13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
