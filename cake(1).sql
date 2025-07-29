-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2025 at 01:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cake`
--

-- --------------------------------------------------------

--
-- Table structure for table `custom_orders`
--

CREATE TABLE `custom_orders` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `flavor` varchar(50) DEFAULT NULL,
  `frosting` varchar(50) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `delivery_option` varchar(50) NOT NULL,
  `order_date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `delivery_time` time NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `name`, `address`, `city`, `phone`, `email`, `delivery_option`, `order_date`, `delivery_date`, `delivery_time`, `created_at`) VALUES
(1, 'gayani wathsala', 'nikaweratiya', 'kurunegala', '0717116424', 'gayaniwathsala011@gmail.com', 'Pickup', '2025-09-07', '2026-09-09', '08:00:00', '2025-07-29 08:49:56');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `category`, `price`, `image`) VALUES
(18, 'bento cake ', 'small cake', 'vanila', 2000.00, '1751520753652.jpg'),
(19, 'chocolate cake', 'for birthday ', 'chocolate', 2000.00, '1751521966577.jpg'),
(20, 'chocolate cake', 'include chocolate', 'chocolate', 3000.00, '1753594376939.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(2, 'user', 'user@gmail.com', '$2b$10$X1HaB6TBIJA8H3tU84nHVOhWJ42ggGE8BzO2oJ0unv7DvjptysLzi'),
(3, 'Gayani Wathsala', 'gayaniwathsala011@gmail.com', '$2b$10$ap7zoSikKg9345FIQAOIMONW8WWgcaoGedeLwOIgwR4f5hGp.rkiK'),
(5, 'chamodi', 'chamodi@gmail.com', '$2b$10$SYhYQaRdhmRRtVJJ2UJTSest6rhpoai9FdHUQ/VVVN6D2Cjoelq0q'),
(6, 'dulakshi', 'dulakshi@gmail.com', '$2b$10$LfN0AHaES1UsB3MRdvOQtO.ihZa6mzrlm47WNxxkaq74JSfv9BFMW'),
(7, 'adeeesha', 'adeesha@gmail.com', '$2b$10$Zr26ObMMIysmXHQYLuCseeHNYsreGRP7nqXIqUc2.Mr8UJcJ9BCCm'),
(9, 'nimali', 'nimali123@gmail.com', '$2b$10$8pfjf6I2N5hGpPFeSjNI8.DWtARAiC3bBBFEvZNEhasXylXVdusN2'),
(10, 'gayani', 'gayani011@gmail.com', '$2b$10$QYJHoCVCwwwPG7peVtMAs.JjWaFkGikv9zwJPn5BSKmlH/cmGNf5.'),
(11, 'sugath', 'sugath@gmail.com', '$2b$10$V8C.mwljx4Wld7ezom0MReiCSghUpl2c/kpxKBkdaY262cLjWhD5q'),
(12, 'sisira', 'sisira@gmail.com', '$2b$10$i28pZkMxsINH7PBoYKRXLO9C7RXZEnHnp1WLvUVD/onaiN7jA/s6O'),
(13, 'poornima', 'poornima@gmail.com', '$2b$10$2SqdSkM2igV5CGl4eFMK2.BY/Ky4hU/X.XqySb8mGfEXsWaP8ohnq'),
(14, 'chamindika', 'chamindika@gmail.com', '$2b$10$WgzO0FJW.4v5l7ACjDUMM.8HDJrbJPsGq5U6COkbNXlQL5PE2L00a'),
(15, 'asanka', 'asanka@gmail.com', '$2b$10$ZJXvN/9EGV6VmxHhTXOGievN.2vIOXwaVM./0ifjkl4A3ztNQtTyO'),
(16, 'dinidu', 'dinidu@gmail.com', '$2b$10$mRBLO5pOeUTLK8uNLNhEqu30wMxmgeiW6PJ.tA0YOo96WbSCiWU8K'),
(17, 'jagath', 'jagath@gmail.com', '$2b$10$ii55..W6FYpuHvmQqFgCDes/hV3nndBkMHgoEAohYYhm99GQVPruS'),
(18, 'poorna', 'poorna@gmail.com', '$2b$10$AKvsevEBMAguK.5Q9u0M4OUZfjvZ0bXuGvdwEWHVPGbJBX5aR7wr2'),
(20, 'samadhi', 'samadhi@gmail.com', '$2b$10$rfma/BILabsBvYMuQuChEevdXi/UFtAqX38tJlT1L6qbMICqNpcUW'),
(22, 'vipul', 'vipul@gmail.com', '$2b$10$M7oaq0tNTSQD3KVlQuuzvejQUeRioQZdFzmTmBhpnRJSWLBi0FVoS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `custom_orders`
--
ALTER TABLE `custom_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `custom_orders`
--
ALTER TABLE `custom_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
