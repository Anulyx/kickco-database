-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Aug 04, 2026 at 03:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kickco_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `shoe_name` varchar(255) NOT NULL,
  `shoe_price` varchar(50) NOT NULL,
  `image_url` text NOT NULL,
  `shoe_size` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_status` varchar(50) DEFAULT 'Paid',
  `paid_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `customer_name`, `total_amount`, `payment_status`, `paid_at`) VALUES
(1, 'adam', 2450.00, 'Paid', '2026-06-13 15:26:16'),
(2, 'theForest', 3120.00, 'Paid', '2026-06-13 15:26:16'),
(3, 'theForest', 560.00, 'Paid', '2026-06-13 15:30:35'),
(4, 'theForest', 75.00, 'Paid', '2026-06-13 15:41:27'),
(5, 'theForest', 115.00, 'Paid', '2026-06-13 15:53:20'),
(6, 'theForest', 115.00, 'Paid', '2026-06-13 15:54:14'),
(7, 'theForest', 115.00, 'Paid', '2026-06-13 16:03:17'),
(8, 'theForest', 180.00, 'Paid', '2026-06-13 16:04:02'),
(9, 'theForest', 75.00, 'Paid', '2026-06-19 10:35:49'),
(10, 'john pork', 115.00, 'Paid', '2026-07-06 06:53:17'),
(11, 'john pork', 115.00, 'Paid', '2026-07-06 06:53:30'),
(12, 'john pork', 115.00, 'Paid', '2026-07-06 06:54:27'),
(13, 'theForest', 145.00, 'Paid', '2026-07-06 07:37:26');

-- --------------------------------------------------------

--
-- Table structure for table `payment_items`
--

CREATE TABLE `payment_items` (
  `id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `shoe_name` varchar(255) NOT NULL,
  `shoe_price` decimal(10,2) NOT NULL,
  `shoe_size` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_items`
--

INSERT INTO `payment_items` (`id`, `payment_id`, `shoe_name`, `shoe_price`, `shoe_size`) VALUES
(1, 1, 'Adidas NMD R1 V2', 130.00, 'UK 5'),
(2, 1, 'Adidas NMD R1 V2', 130.00, 'UK 5'),
(3, 1, 'Adidas NMD R1 V2', 130.00, 'UK 5'),
(4, 1, 'Adidas NMD R1 V2', 130.00, 'UK 5'),
(5, 1, 'Adidas NMD R1 V2', 130.00, 'UK 5'),
(6, 1, 'Adidas Swift Run', 95.00, 'UK 5'),
(7, 1, 'Adidas Superstar Classic', 85.00, 'UK 5'),
(8, 1, 'Vans Sk8-Hi High Top', 75.00, 'UK 6'),
(9, 1, 'Vans Sk8-Hi High Top', 75.00, 'UK 6'),
(10, 1, 'Vans Old Skool Skate Black', 65.00, 'UK 6'),
(11, 1, 'Custom KickCo Sneaker (Stealth Matte Black)', 210.00, 'US Men 9'),
(12, 1, 'Custom KickCo Sneaker (Stealth Matte Black)', 210.00, 'US Men 9'),
(13, 1, 'Custom KickCo Sneaker (Stealth Matte Black)', 210.00, 'US Men 9'),
(14, 1, 'Custom KickCo Sneaker (Crimson Igniter Red)', 225.00, 'US Men 11'),
(15, 1, 'Custom KickCo Sneaker (Crimson Igniter Red)', 225.00, 'US Men 11'),
(16, 2, 'Adidas NMD R1 V2', 130.00, 'UK 5'),
(17, 2, 'Adidas NMD R1 V2', 130.00, 'UK 5'),
(18, 2, 'Adidas NMD R1 V2', 130.00, 'UK 5'),
(19, 2, 'Adidas NMD R1 V2', 130.00, 'UK 5'),
(20, 2, 'Adidas NMD R1 V2', 130.00, 'UK 5'),
(21, 2, 'Adidas Swift Run', 95.00, 'UK 5'),
(22, 2, 'Vans Sk8-Hi High Top', 80.00, 'UK 9'),
(23, 2, 'Vans Old Skool Skate Black', 65.00, 'UK 6'),
(24, 2, 'Vans UltraRange Rapidweld Gold', 115.00, 'UK 6'),
(25, 2, 'Vans Classic Slip-On Kids Green', 45.00, 'UK 6'),
(26, 2, 'Custom KickCo Sneaker (Stealth Matte Black)', 210.00, 'US Men 9'),
(27, 2, 'Custom KickCo Sneaker (Stealth Matte Black)', 210.00, 'US Men 9'),
(28, 2, 'Custom KickCo Sneaker (Stealth Matte Black)', 210.00, 'US Men 9'),
(29, 2, 'Custom KickCo Sneaker (Crimson Igniter Red)', 225.00, 'US Men 11'),
(30, 2, 'Custom KickCo Sneaker (Crimson Igniter Red)', 225.00, 'US Men 11'),
(31, 2, 'Custom KickCo Sneaker (Crimson Igniter Red)', 225.00, 'US Men 11'),
(32, 3, 'Vans Sk8-Hi Racing Yellow', 280.00, 'UK 6'),
(33, 3, 'Vans Sk8-Hi Racing Yellow', 280.00, 'UK 6'),
(34, 4, 'Vans Sk8-Hi Racing Yellow', 75.00, 'UK 7'),
(35, 5, 'Vans UltraRange Rapidweld Gold', 115.00, 'UK 9'),
(36, 6, 'Vans UltraRange Rapidweld Gold', 115.00, 'UK 6'),
(37, 7, 'Vans UltraRange Rapidweld Gold', 115.00, 'UK 8'),
(38, 8, 'Custom KickCo Sneaker (Crimson Igniter Red)', 180.00, 'US Men 10 / EU 43'),
(39, 9, 'Vans Sk8-Hi Racing Yellow', 75.00, 'UK 6'),
(40, 10, 'Vans UltraRange Rapidweld Gold', 115.00, 'UK 6'),
(41, 11, 'Vans UltraRange Rapidweld Gold', 115.00, 'UK 6'),
(42, 12, 'Vans UltraRange Rapidweld Gold', 115.00, 'UK 6'),
(43, 13, 'Custom KickCo Sneaker (Stealth Matte Black)', 145.00, 'US Men 9 / EU 42');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image_url` text NOT NULL,
  `gender` varchar(50) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `category` varchar(100) DEFAULT 'Sneakers',
  `color` varchar(50) DEFAULT 'white'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image_url`, `gender`, `brand`, `stock`, `category`, `color`) VALUES
('adidas_gazelle', 'Adidas Gazelle Premium', 350, 'https://cdna.lystit.com/520/650/n/photos/kickscrew/19fabd7a/adidas-WHITE-Gazelle-Gum.jpeg', 'women', 'adidas', 15, 'Sneakers', 'white'),
('adidas_gazelle_blue', 'Adidas Gazelle Retro Navy Blue', 350, 'https://cdn-images.farfetch-contents.com/20/94/65/92/20946592_50886909_600.jpg', 'women', 'adidas', 14, 'fashion', 'blue'),
('adidas_gazelle_green', 'Adidas Gazelle Clover Green', 360, 'https://assets.adidas.com/images/w_600,f_auto,q_auto/52d81e2a1ff243fca769b7666d47b8dc_9366/Gazelle_Indoor_Shoes_Green_IE6605_01_standard.jpg', 'women', 'adidas', 7, 'fashion', 'green'),
('adidas_hoops_shadow', 'Adidas Hoops 3.0 Mid Black', 320, 'https://images.stockx.com/images/adidas-Hoops-30-Low-Classic-Vintage-Core-Black-Carbon.jpg?fit=fill&bg=FFFFFF&w=480&h=320&q=60&dpr=1&trim=color&updated_at=1717119894', 'men', 'adidas', 12, 'basketball', 'black'),
('adidas_lion', 'Adidas Lion', 300, 'https://assets.adidas.com/images/w_600,f_auto,q_auto/2289c5196277438f8ec2ab88ee29d79b_9366/adidas_Disney_Lion_King_Breaknet_Shoes_Kids_White_IF1755_09_standard.jpg', 'men', 'Adidas', 5, 'kids', 'white'),
('adidas_messi', 'Adidas Messi', 480, 'https://cdn-images.farfetch-contents.com/23/02/11/32/23021132_53103821_1000.jpg', 'men', 'Adidas', 5, 'sport', 'white'),
('adidas_nmd_green', 'Adidas NMD R1 V2 Signal Green', 130, 'https://media.sivasdescalzo.com/media/catalog/product/G/Z/GZ9263_sivasdescalzo-Adidas-NMD_R1_SPECTOO-1625232290-2.jpg', 'men', 'adidas', 10, 'fashion', 'green'),
('adidas_nmd_grey', 'Adidas NMD R1 V2 Carbon Grey', 130, 'https://images.stockx.com/images/adidas-NMD-V2-Grey-Two-Silver-Metallic-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&q=90&dpr=2&trim=color&updated_at=1738193358', 'men', 'adidas', 10, 'sneakers', 'grey'),
('adidas_superstar', 'Adidas Superstar Classic', 85, 'https://images.unsplash.com/photo-1603808033192-082d6919d3e1?w=500', 'women', 'adidas', 25, 'Sneakers', 'white'),
('adidas_terrex_red', 'Adidas Terrex Trail Sport Red', 480, 'https://www.bfgcdn.com/1500_1500_90/023-2747-0311/adidas-terrex-agravic-speed-ultra-2-trail-running-shoes.jpg', 'women', 'adidas', 5, 'sport', 'red'),
('adidas_terrex_yellow', 'Adidas Terrex Trail Sport Yellow', 480, 'https://assets.ajio.com/medias/sys_master/root/20240910/opsd/66e03dbe6f60443f31696b51/-473Wx593H-469582040-yellow-MODEL.jpg', 'women', 'adidas', 5, 'sport', 'yellow'),
('adidas_ultraboost_yel', 'Adidas Ultraboost Racing Yellow', 420, 'https://images.novelship.com/product/adidas_ultraboost_22__flash_orange__hr1029_0_58624.jpeg', 'men', 'adidas', 8, 'running', 'yellow'),
('adidas_ultrabosst', 'Adidas Ultraboost Light', 450, 'https://assets.adidas.com/images/w_600,f_auto,q_auto/4f225a0bbc3e43729858af0100006731_9366/ULTRABOOST_1.0_SHOES_White_HQ4207_01_00_standard.jpg', 'men', 'adidas', 8, 'Sneakers', 'white'),
('nike_air_max_black', 'Nike Air Max 270 Triple Black', 450, 'https://i.ebayimg.com/images/g/LLUAAOSwonpjhpmG/s-l400.jpg', 'men', 'nike', 12, 'running', 'black'),
('nike_air_max_dark', 'Nike Air Max 270 Blackout', 450, 'https://static.nike.com/a/images/t_default/f8ae7907-face-43da-a4a2-21356eed3147/AIR+MAX+270+NBY.png', 'men', 'nike', 11, 'sneakers', 'black'),
('nike_blazer_kids_g', 'Nike Blazer Mid 77 Kids Green', 240, 'https://static.ftshp.digital/img/p/4/9/2/4/1/8/492418-full_product.jpg', 'women', 'nike', 15, 'sneakers', 'green'),
('nike_court_yellow', 'Nike Court Vision Classic Yellow', 290, 'https://en-qa.sssports.com/dw/image/v2/BDVB_PRD/on/demandware.static/-/Sites-akeneo-master-catalog/default/dw494281c6/sss/SSS2/N/K/C/D/5/SSS2_NKCD5463_200_194497869889_2.jpg?sw=400&sh=400&sm=fit', 'women', 'nike', 13, 'running', 'yellow'),
('nike_dunk_red', 'Nike Dunk Low Retro Red', 400, 'https://sneakernews.com/wp-content/uploads/2024/05/nike-dunk-low-retro-university-red-obsidian-7.jpg', 'women', 'nike', 30, 'Sneakers', 'red'),
('nike_jordan_green', 'Nike Air Jordan High Pine Green', 400, 'https://cdn-images.farfetch-contents.com/16/81/40/45/16814045_33345173_600.jpg', 'women', 'nike', 6, 'basketball', 'green'),
('nike_jordan_red', 'Nike Air Jordan High Retro Red', 480, 'https://www.kickslab.com/cdn/shop/products/000000018970-01.jpg?v=1690381812&width=600', 'women', 'nike', 8, 'basketball', 'red'),
('nike_michael', 'nike air michael', 500, 'https://i.ebayimg.com/images/g/2NUAAOSwRcRkFUNn/s-l1200.jpg', 'men', 'nike', 15, 'basketball', 'white'),
('nike_pegasus_yellow', 'Nike Pegasus Sport Neon Yellow', 380, 'https://productimages.footy.com/6856bcbb7c5e8cfab256b3a6/0/3840.webp?q=75', 'men', 'nike', 22, 'sneakers', 'yellow'),
('puma_cali_green', 'Puma Cali Star Mint Green', 260, 'https://images.unsplash.com/photo-1539185441755-769473a23570', 'women', 'puma', 10, 'fashion', 'green'),
('puma_lux', 'Puma Lux Premium', 499, 'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_2000,h_2000/global/402259/07/sv04/fnd/SEA/fmt/png/Tifosi-Lux-Sneakers', 'men', 'PUMA', 5, 'sneakers', 'white'),
('puma_rebound_yellow', 'Puma Rebound Basketball Gold', 350, 'https://sportuptown.com/cdn/shop/products/image_5416f614-43b5-4f98-bd8c-8d32d7e6572e.png?v=1681325904&width=1920', 'women', 'puma', 7, 'basketball', 'yellow'),
('puma_rsx_grey', 'Puma RS-X Geek Runner Grey', 390, 'https://media.karousell.com/media/photos/products/2019/05/10/puma_rsx_tracks__gray_violetcharcoal_grey_authentic_original_1557478392_b14ad34c0_progressive', 'men', 'puma', 11, 'running', 'grey'),
('puma_rsx_yellow', 'Puma RS-X Cyber Yellow', 390, 'https://images.vegnonveg.com/resized/500X500/7963/rs-x-pikachu-empire-yellow-pale-lemon-63721f3fc99ff.jpg?format=webp', 'men', 'puma', 8, 'running', 'yellow'),
('puma_suede_green', 'Puma Suede Classic Kids Green', 270, 'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_2000,h_2000/global/393325/04/sv01/fnd/THA/fmt/png/Suede-Classic-75Y-Sneakers', 'men', 'puma', 12, 'kids', 'green'),
('puma_suede_red', 'Puma Suede Classic Red', 270, 'https://s3-eu-west-1.amazonaws.com/images.linnlive.com/08b80983ce6c6328ee0291bc13099572/03f4fc3c-d327-44cd-80ac-cbe4cb661b4d.jpg', 'men', 'puma', 17, 'Sneakers', 'red'),
('puma_velocity_black', 'Puma Velocity Nitro Sport Black', 420, 'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_2000,h_2000/global/311141/01/sv01/fnd/SEA/fmt/png/Velocity-NITRO%E2%84%A2-4-Running-Shoes-Women', 'men', 'puma', 6, 'sport', 'black'),
('vans_authentic_green', 'Vans Authentic Olive Green', 220, 'https://down-my.img.susercontent.com/file/sg-11134201-824jb-mflyyp34akuh86', 'women', 'vans', 16, 'fashion', 'green'),
('vans_kids_blue', 'Vans Classic Slip-On Kids Blue', 45, 'https://assets.vans.com/images/t_img/c_fill,g_center,f_auto,h_2500,w_2000/v1753918011/VN000EYENVY-HERO/Classic-SlipOn-Shoe-VANS-Navy-Blue-White-HERO.png', 'men', 'vans', 13, 'kids', 'blue'),
('vans_kids_green', 'Vans Classic Slip-On Kids Green', 45, 'https://www.luxbmx.com/cdn/shop/files/vans-classic-slip-on-shoes-vans-club-greenwhite-shoes-accent-group-us-10.jpg?v=1747886397', 'women', 'vans', 14, 'kids', 'green'),
('vans_old_skool_core', 'Vans Old Skool Skate Black', 65, 'https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77', 'women', 'vans', 22, 'fashion', 'black'),
('vans_sk8hi_red', 'Vans Sk8-Hi Classic Red', 75, 'https://assets.vans.com/images/t_img/c_fill,g_center,f_auto,h_2500,w_2000/v1753917584/VN0A4BV6JV6-HERO/Sk8Hi-Shoe-VANS-Racing-Red-True-White-HERO.png', 'men', 'vans', 11, 'sneakers', 'red');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(50) DEFAULT 'Customer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `password`, `created_at`, `role`) VALUES
(2, 'theForest', '111111', '2026-06-13 15:29:10', 'Customer'),
(3, 'Admin', 'admin123', '2026-06-13 15:29:10', 'Admin'),
(6, 'john pork', '123456', '2026-07-06 06:42:48', 'Customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_items`
--
ALTER TABLE `payment_items`
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
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payment_items`
--
ALTER TABLE `payment_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
