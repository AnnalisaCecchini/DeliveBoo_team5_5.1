    -- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 03, 2021 at 09:22 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deliveboo2`
--

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

DROP TABLE IF EXISTS `dishes`;
CREATE TABLE IF NOT EXISTS `dishes` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `dishtype_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `allergens` text COLLATE utf8mb4_unicode_ci,
  `price` double(4,2) NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  `vegan` tinyint(1) DEFAULT NULL,
  `path_image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dishes_restaurant_id_foreign` (`restaurant_id`),
  KEY `dishes_dishtype_id_foreign` (`dishtype_id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`id`, `restaurant_id`, `dishtype_id`, `name`, `slug`, `description`, `allergens`, `price`, `visibility`, `vegan`, `path_image`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Velit perferendis.', 'velit-perferendis', 'Minus eligendi beatae sequi et dolor at deserunt sequi. Accusantium possimus voluptate eius nam et. Ex provident et qui et veniam.\n\nQuos fugit earum esse optio consequatur odit. Ea occaecati nesciunt atque facilis. Reprehenderit ipsum voluptatibus fugiat deleniti atque cupiditate rem.', 'Mollitia reiciendis et voluptatum et.', 10.51, 1, 0, 'https://via.placeholder.com/150x150.png/006666?text=animals+non', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(2, 4, 4, 'Autem quasi.', 'autem-quasi', 'Nesciunt amet ut doloremque accusamus et. Cum explicabo corporis ut dicta. Et dolore culpa itaque.\n\nFacilis officia fugiat quia quos nobis facilis est. Qui laudantium quibusdam mollitia. Eos molestiae recusandae ut qui voluptas. Sint molestiae suscipit debitis qui aliquid officia vel.', 'Iusto quia eaque nulla culpa.', 14.02, 0, 1, 'https://via.placeholder.com/150x150.png/00ddff?text=animals+aut', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(3, 1, 1, 'At nihil saepe unde.', 'at-nihil-saepe-unde', 'Ut maxime et rem qui quia totam est. Quia velit nesciunt vitae cumque quisquam. In quasi impedit velit saepe. Sit aspernatur voluptatum dolore qui.\n\nFugit itaque consequatur itaque iusto fugit nulla numquam laborum. Aut ratione optio exercitationem error. Molestias reprehenderit quidem ipsum modi magnam totam. Ex rerum tempora ea sint reiciendis aliquam occaecati. Repellendus ut atque et ea ut occaecati.', 'Iure distinctio qui est deserunt ut.', 15.46, 0, 0, 'https://via.placeholder.com/150x150.png/007722?text=animals+aspernatur', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(4, 3, 6, 'Sed iusto maxime.', 'sed-iusto-maxime', 'Ipsa aliquam sit quidem sed. Ut fugit dolores tenetur est odit. Id aliquid qui voluptatibus voluptatem deserunt rerum. Commodi illo voluptates quas sequi voluptatem.\n\nIn amet qui optio. Eius non culpa ut quos atque. Deleniti consequuntur explicabo vero id quos.', 'Vel cupiditate quia dolor.', 16.43, 1, 0, 'https://via.placeholder.com/150x150.png/008888?text=animals+dolorem', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(5, 2, 5, 'Sunt laborum.', 'sunt-laborum', 'Magnam voluptas quam debitis quam. Assumenda ducimus aut quibusdam saepe aliquam aliquid. Voluptas quo neque unde vitae aliquid necessitatibus.\n\nNeque rerum ad exercitationem molestiae facilis similique molestiae corrupti. Vel animi et dolore magni quo natus pariatur. Reiciendis recusandae eius nihil provident provident inventore. Debitis quia nihil consequuntur ab odio illo. Rerum doloribus omnis dicta libero perferendis et est.', 'Eos odio itaque ipsa sit provident ea.', 6.63, 1, 1, 'https://via.placeholder.com/150x150.png/00bbdd?text=animals+earum', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(6, 1, 6, 'Consequuntur enim.', 'consequuntur-enim', 'Cumque occaecati sed eos optio neque. Occaecati eius ipsa qui modi cupiditate corrupti. Soluta qui dignissimos animi ea.\n\nEt quis ab nihil odit ex sit. Doloribus ut nesciunt quasi repudiandae inventore. Consequatur accusamus ea sit omnis. Sed qui corrupti id laborum vitae sed.', 'Rerum sed in suscipit ut.', 15.28, 1, 1, 'https://via.placeholder.com/150x150.png/0088aa?text=animals+in', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(7, 4, 3, 'Ut consequatur vero.', 'ut-consequatur-vero', 'Id quibusdam possimus sit eum non alias. Est libero ex rem vitae possimus suscipit omnis. Voluptas eveniet sapiente quod nam. Provident eaque qui nisi atque ut quas.\n\nMaiores vel et est. Nemo illo et a totam natus mollitia. Nihil qui ipsum aut rem asperiores itaque dolore laboriosam. Accusantium debitis ut non blanditiis nisi aliquam. Velit rerum nisi laudantium commodi.', 'Quasi soluta ad qui excepturi porro.', 14.87, 0, 1, 'https://via.placeholder.com/150x150.png/004488?text=animals+et', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(8, 3, 4, 'Rerum impedit est.', 'rerum-impedit-est', 'Molestiae molestias vel voluptatibus est nisi. Voluptatem aperiam expedita perspiciatis est reiciendis sed a illum. Eligendi quia ut voluptatem distinctio nihil provident. Ex quia voluptatem consequatur animi illo.\n\nRerum nisi enim quia praesentium vel assumenda ullam molestias. Nisi qui praesentium ab. Odio corporis deserunt vel vel ex eos. Ea inventore voluptatem at et. Officiis commodi aspernatur voluptate exercitationem debitis.', 'Dolore facilis tenetur officia.', 19.70, 0, 0, 'https://via.placeholder.com/150x150.png/004400?text=animals+sit', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(9, 5, 4, 'Qui ratione officia.', 'qui-ratione-officia', 'Est inventore consequuntur alias quisquam et. Illum aut fugiat velit voluptatem et ducimus minima eius. Dolores non repudiandae vel. Quo laboriosam non non veritatis maxime odit tempore.\n\nUt et voluptatem aut dolor est aut. Et saepe maxime ipsam consectetur odio voluptatibus. Est eaque voluptatem aut doloribus. At quae odio sed sit eos facere.', 'Et odio corrupti ut dolores.', 6.29, 1, 0, 'https://via.placeholder.com/150x150.png/00eeaa?text=animals+voluptatem', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(10, 1, 5, 'Dolore et aut.', 'dolore-et-aut', 'Et ut quod quam sed ut minus natus. Odit mollitia maiores earum autem.\n\nVelit fugit eveniet molestiae neque accusamus error. A pariatur eligendi est quia et accusamus. Ratione officia non ad amet. Quam exercitationem repellat ipsam.', 'Nostrum nisi sunt aut.', 21.93, 1, 0, 'https://via.placeholder.com/150x150.png/008888?text=animals+ratione', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(11, 2, 6, 'Non molestias.', 'non-molestias', 'Totam non natus et sint beatae quia. Qui dolorem sapiente nisi. Qui tempora veritatis distinctio debitis quis est dolores.\n\nIncidunt et doloremque incidunt aspernatur aliquam. Atque asperiores voluptas aut iure accusamus. Officia aliquid odio nisi aut. Assumenda atque voluptatem tempora sit error itaque.', 'Porro non quisquam voluptatem sed id.', 14.10, 0, 1, 'https://via.placeholder.com/150x150.png/00ee11?text=animals+doloribus', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(12, 1, 4, 'Repudiandae omnis.', 'repudiandae-omnis', 'Vitae dolorem ea sunt ratione impedit. Dolorem sit et quibusdam corporis. Impedit laboriosam incidunt eveniet suscipit voluptas. Quas est dolorem ullam eum et sapiente. Mollitia sed alias eum.\n\nSed sequi vero cumque sunt ab non libero. Ipsum voluptatem aut eligendi autem eum repellat quas. Sit minima nihil quo pariatur.', 'In facere laudantium id.', 4.26, 1, 1, 'https://via.placeholder.com/150x150.png/003388?text=animals+reiciendis', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(13, 5, 5, 'Ullam ullam maiores.', 'ullam-ullam-maiores', 'Ut qui harum quia error laborum quis eaque. Est rerum quo numquam enim sunt ut assumenda. Exercitationem cum consequuntur est et.\n\nIste voluptates esse modi ut labore tempora. Necessitatibus officiis harum ut pariatur. Saepe nulla eum rem odio ut enim repellat.', 'Autem et eum quam.', 14.06, 0, 1, 'https://via.placeholder.com/150x150.png/00ff00?text=animals+minima', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(14, 5, 2, 'Necessitatibus a.', 'necessitatibus-a', 'Deleniti quam doloremque sunt. Dolor est explicabo qui dolorem voluptate quia. Rerum sit ea libero rerum. Eaque ipsa enim accusamus quaerat aut facilis.\n\nNon impedit voluptatum placeat aut magnam impedit modi. Error eveniet illo quas. Earum omnis ipsam tempore accusantium. Omnis eum ad quo quas dolorum. Id et omnis officiis magni dicta.', 'Ipsam molestiae blanditiis cum.', 6.13, 1, 0, 'https://via.placeholder.com/150x150.png/00ff22?text=animals+et', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(15, 1, 5, 'Ea dolore nam.', 'ea-dolore-nam', 'Qui vitae nostrum ad rerum officiis. Doloribus et repellendus sint dolor. Quod illo cupiditate et rem nam.\n\nNon nesciunt consectetur eum et nihil. Amet voluptas adipisci consectetur nulla. Minima qui quos quis quo. Ipsum numquam vero ducimus velit.', 'Non id iste sint illo.', 15.43, 1, 1, 'https://via.placeholder.com/150x150.png/0033ff?text=animals+ut', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(16, 4, 2, 'Commodi aspernatur.', 'commodi-aspernatur', 'Sint cumque sit impedit enim. Fuga aliquam temporibus exercitationem ad architecto aliquid aliquid. Minima expedita consequatur placeat ipsa.\n\nQuae non corrupti qui qui. Sequi a nemo ullam tempore repudiandae. Veniam voluptatem eius rerum fuga aspernatur voluptatem.', 'Qui et iure provident ipsa alias nihil.', 13.93, 1, 0, 'https://via.placeholder.com/150x150.png/0000dd?text=animals+vitae', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(17, 2, 4, 'At suscipit in.', 'at-suscipit-in', 'Libero quia esse numquam magni. Voluptas molestiae reiciendis vitae dolore dicta. Omnis ut non nisi non.\n\nQui aut placeat et ullam perspiciatis. Facilis nam cupiditate neque voluptas. In rerum similique quasi reiciendis et temporibus.', 'Quo ea nobis tenetur doloribus soluta.', 21.85, 1, 1, 'https://via.placeholder.com/150x150.png/000099?text=animals+et', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(18, 1, 2, 'Quia quam soluta.', 'quia-quam-soluta', 'Reprehenderit odio dicta rerum doloribus voluptatum quis consequatur. Nostrum perferendis laborum maxime sit ut. Aut quisquam provident quo optio beatae dignissimos repellat. Dolorum et accusantium qui nobis corrupti unde.\n\nUt quia saepe et qui quis sit rerum. Sapiente facere repellat rerum error quas sequi laborum et. Et et qui quibusdam officia architecto fugit assumenda.', 'Quis quas unde incidunt quod aut nam.', 16.65, 1, 1, 'https://via.placeholder.com/150x150.png/00ff33?text=animals+necessitatibus', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(19, 3, 6, 'Beatae perferendis.', 'beatae-perferendis', 'Quo laboriosam adipisci et quia aut incidunt consequatur. Voluptas dicta consequatur deserunt eos accusantium magni quia. Non non sed suscipit magnam vero maiores officia dicta.\n\nPerferendis ducimus non totam quisquam. Nihil qui qui molestiae quod est qui. Est ipsa nihil molestias est. Et id sit qui. Rerum inventore odio itaque eius consequatur quae nobis.', 'Itaque voluptatem rem quo.', 7.44, 1, 1, 'https://via.placeholder.com/150x150.png/003333?text=animals+est', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(20, 4, 4, 'Sed qui est sed.', 'sed-qui-est-sed', 'Temporibus est doloribus nemo eveniet nam. Ut corrupti possimus molestiae voluptatem est eius. At sunt repudiandae aut et. Aut voluptatum omnis quod laudantium ad vero.\n\nVeniam quidem vel placeat consectetur cum dolorem. Distinctio voluptates est sed quibusdam quia. Ut libero perspiciatis debitis sapiente ex.', 'Qui unde ratione magni qui.', 4.60, 0, 1, 'https://via.placeholder.com/150x150.png/008833?text=animals+consequuntur', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(21, 7, 2, 'Kebab', 'kebab', 'Kebab con salsa piccante carne kebab,insalata,cipolla', NULL, 3.00, 1, 0, 'images/dJPWZbZhvaIMIB9I72aac5s1Tax0Cdfk8msYpnM0.jpg', '2021-02-22 23:55:04', '2021-02-22 23:55:04'),
(22, 7, 2, 'Pizza Diavola', 'pizza-diavola', 'farina,olio,mozarella,pomodoro,salame piccante', NULL, 7.00, 1, 0, 'images/MdY0UnC4EOATtPG0FnMDlnnRWdlZ3dgRy5qkNUa8.jpg', '2021-02-22 23:56:35', '2021-02-22 23:56:35'),
(23, 7, 2, 'Pizza Wurstel e Patatine', 'pizza-wurstel-e-patatine', 'farina,olio,mozarella,pomodoro,wurstel e patatine', NULL, 8.00, 1, 0, 'images/2OtJggO5Q4cQCxS0pAKW2i8qj4xQdPW6QjqmnHXy.jpg', '2021-02-22 23:57:19', '2021-02-22 23:57:19'),
(24, 7, 1, 'Pizza Quattro Formaggi', 'pizza-quattro-formaggi', 'farina,olio,mozarella,gorgonzola,provola,taleggio', NULL, 8.00, 1, 0, 'images/sAgo8T2HeaQSc7eJcVn2cufxS6odxvbSYz1RMH7h.jpg', '2021-02-22 23:58:10', '2021-02-22 23:58:10'),
(25, 7, 1, 'Patatine Fritte', 'patatine-fritte', 'Porzione di 100grammi di patatine fritte', NULL, 3.00, 1, 0, 'images/QPMa1stSIOFiLyk9DICPXZUZ57wByTCcdiXQ3r56.jpg', '2021-02-22 23:58:55', '2021-02-22 23:58:55'),
(26, 7, 2, 'Pizza Kebab', 'pizza-kebab', 'farina,olio,mozarella,pomodoro,carne kebab,salsa piccante,salsa yogurt,insalata,cipolla', NULL, 12.00, 1, 0, 'images/CgdsnJaRa814QZ3jrivVnbzwYLUAtBCICIlRJA5X.jpg', '2021-02-22 23:59:55', '2021-02-22 23:59:55'),
(27, 9, 3, 'Misto Nigiri', 'misto-nigiri', 'Quattro nigiri di salmone,tonno,gambero,seppia', NULL, 14.00, 1, 0, 'images/VrDBXjaZET62UFOnoN3yfiDBcdbM1doqY63ST6nv.jpg', '2021-02-23 00:02:48', '2021-02-23 00:02:48'),
(28, 9, 2, 'Sashimi Salmone', 'sashimi-salmone', '4 fette di sashimi al salmone', NULL, 8.00, 1, 0, 'images/LeiuMjm1DvNtNnP2Kyd9TuSdg9bTQwX4gwxzL1EC.jpg', '2021-02-23 00:03:31', '2021-02-23 00:03:31'),
(29, 9, 3, 'Sushi Misto Grande', 'sushi-misto-grande', 'Porzione di 30 di sushi,sashimi,uramaki,temaki , e fritto tempura', NULL, 35.00, 1, 0, 'images/vHWF6GzD9TIBMf6IcK9Y7eIgZeurt0YXTylZRU10.jpg', '2021-02-23 00:04:52', '2021-02-23 00:04:52'),
(30, 9, 2, 'Temaki Tonno', 'temaki-tonno', 'Temaki al tonno con avocado e salsa teriyaki', NULL, 4.00, 1, 0, 'images/RZtbW9glIjAN4NaumeomwKyXahDBcrrazjLg0lcL.jpg', '2021-02-23 00:05:34', '2021-02-23 00:05:34'),
(31, 9, 3, 'Uramaki Pollo', 'uramaki-pollo', '5 porzioni di uramaki al pollo fritto e alghe', NULL, 13.00, 1, 0, 'images/gIdMBkU6UvHxUbaxmC3dFX6zRmoC53QBu4goPSZ6.jpg', '2021-02-23 00:06:20', '2021-02-23 00:06:20'),
(32, 9, 2, 'Gnocchi di Riso', 'gnocchi-di-riso', 'Gnocchi di riso in brodo vegetale, carote e bamboo', NULL, 8.00, 1, 0, 'images/H8LrzYhwTHAradez5PALjMIMlQRxvmli0KOGroNq.jpg', '2021-02-23 00:07:25', '2021-02-23 00:07:25'),
(33, 9, 6, 'Coca Cola', 'coca-cola', 'Coca Cola 33cl', NULL, 3.00, 1, 0, 'images/RkGEElJ5fuRTXjMnl5fbOU8YTGjvRmGEASRSYBlI.jpg', '2021-02-23 00:08:33', '2021-02-23 00:08:33'),
(34, 9, 6, 'Acqua frizzante/naturale', 'acqua-frizzantenaturale', 'Acqua frizzante o naturale in bottiglia 50cl', NULL, 2.00, 1, 1, 'images/4gMmcplXUm89lI8sQXAUE3zGNxJ3CkZwjqDfXdfv.jpg', '2021-02-23 00:09:20', '2021-02-23 00:09:20'),
(35, 9, 6, 'Birra', 'birra', 'Birra Peroni 33cl', NULL, 5.00, 1, 0, 'images/r7CANQoVkWxo9H9FRpzF5Ee411jXYHCzKcS9gNGf.jpg', '2021-02-23 00:10:03', '2021-02-23 00:10:03'),
(36, 8, 6, 'Acqua', 'acqua', 'Acqua 50cl', NULL, 2.00, 1, 0, 'images/Udt0h2uUwza9mbWVHAWKqSaqqx9OJ7lrTjlYMywb.jpg', '2021-02-23 00:10:46', '2021-02-23 00:10:46'),
(37, 8, 6, 'Coca Cola', 'coca-cola', 'Coca Cola in lattina 33cl', NULL, 3.00, 1, 1, 'images/ziP79hOMJGyeLns51BwYZUhZUnV1FN5rGqClyFb1.jpg', '2021-02-23 00:11:17', '2021-02-23 00:11:17'),
(38, 8, 6, 'Birra', 'birra', 'Birra Heineken 33cl', NULL, 4.00, 1, 0, 'images/3DPF8Rcv0FNhNv5RWInwIp7vCCgHPLUHfEebLPkb.jpg', '2021-02-23 00:11:52', '2021-02-23 00:11:52'),
(39, 8, 2, 'Gnocchi Riso', 'gnocchi-riso', 'Porzione di gnocchi di riso con carote,bamboo e salsa di soia', NULL, 4.00, 1, 0, 'images/UDTbawZKuIHYoOCsx14ArXWOD4qJFC9ZEiEhHLjS.jpg', '2021-02-23 00:22:01', '2021-02-23 00:22:01'),
(40, 8, 3, 'Maiale in agrodolce', 'maiale-in-agrodolce', 'Maiale in salsa agrodolce, con peperoni', NULL, 11.00, 1, 0, 'images/bvO59JkKWtLhX7chHf75zaVnWE9TFMFjP01NdYBC.jpg', '2021-02-23 00:22:35', '2021-02-23 00:22:35'),
(41, 8, 2, 'Pollo alle mandorle', 'pollo-alle-mandorle', 'pollo alle mandorle tostate in salsa di soia con cntorno di riso al vapore', NULL, 13.00, 1, 0, 'images/6CEmQc1SIOXlJ4Vtr1BjKwpqucuxiq4qy5i1xHPx.jpg', '2021-02-23 00:23:31', '2021-02-23 00:23:31'),
(42, 8, 2, 'Yaki Udon', 'yaki-udon', 'Spaghetti in brodo di pollo con verdure e pollo', NULL, 9.00, 1, 0, 'images/WhbALcBffMuzwuCWZOhbgI9EiWGuovFvR2st1Klt.jpg', '2021-02-23 00:24:10', '2021-02-23 00:24:10'),
(43, 12, 1, 'Panino Maiale e miele', 'panino-maiale-e-miele', 'pane tostato con hamburger 200g maiale, miele e cipolle caramellate con salsa speciale Pompei', NULL, 14.00, 1, 0, NULL, '2021-02-23 00:27:00', '2021-02-23 00:27:00'),
(44, 12, 2, 'Burger Manzo e insalata', 'burger-manzo-e-insalata', 'Panino rosetta con 150 grammi di burger di manzo con insalta e cetrioli freschi', NULL, 13.00, 1, 0, 'images/tTkTjEohElUAfr4pRgyZKCbLgQHRIq9kzDFi2veH.jpg', '2021-02-23 00:28:14', '2021-02-23 00:28:14'),
(45, 12, 1, 'Mozzarella Bites', 'mozzarella-bites', 'Snack fritti con mozzarella filante', NULL, 8.00, 1, 0, 'images/IYsZoP9DuMNNtCGpSvD85AIMQ0199GAddpbP8Asn.jpg', '2021-02-23 00:29:02', '2021-02-23 00:29:02'),
(46, 12, 1, 'Patate Deep', 'patate-deep', 'Porzione per 2 persone di patate deep con salsa Pompei', NULL, 6.00, 1, 0, 'images/QfJTWrkDaRKhUcV8RqxTs1L3EmOeRpuxuRwcjO1a.jpg', '2021-02-23 00:29:43', '2021-02-23 00:29:43'),
(47, 12, 2, 'Burger Pollo e Cheddar', 'burger-pollo-e-cheddar', 'Panino soffice al timo con un burger di pollo fritto da 90 grammi, bacon croccante e cheddar', NULL, 12.00, 0, 1, 'images/0gE5dwGgtY51a0JJwJfzvdbwtgvnjJqFZU7yudyt.jpg', '2021-02-23 00:31:05', '2021-02-23 00:31:05'),
(48, 12, 2, 'Burger Triplo Manzo', 'burger-triplo-manzo', 'Pane crccante con tre burger da 90 grammi di manzo, triplo cheddar e triplo bacon. Salsa pompei abbondante', NULL, 22.00, 1, 0, 'images/b4maQZNAxMn4mLwRh8HqxBFdL7XB4ac1RAk8eM9w.jpg', '2021-02-23 00:32:32', '2021-02-23 00:32:32'),
(49, 12, 6, 'Acqua', 'acqua', 'Acqua da 50cl in bottiglia', NULL, 1.00, 1, 1, 'images/xkCqvoq8PToLto99Jl4slV1NJLBUh6UePRTZlAJL.jpg', '2021-02-23 00:33:13', '2021-02-23 00:33:13'),
(50, 12, 6, 'Coca Cola', 'coca-cola', 'Coca Cola in lattina da 33cl', NULL, 4.00, 1, 0, 'images/mnft9L6e2Xsjg9YwatfkCyOCP5SzMpVDrA6qojtk.jpg', '2021-02-23 00:33:53', '2021-02-23 00:33:53'),
(51, 12, 6, 'Birra', 'birra', 'birra heineken in bottiglia da 33cl', NULL, 5.00, 1, 0, 'images/XtATqzkbtPdRY045VqCtBHKkfesUk1TiJmPRG6RK.jpg', '2021-02-23 00:34:31', '2021-02-23 00:34:31'),
(52, 11, 2, 'Pokè Vegan', 'poke-vegan', 'Riso,Cetrioli,Rucola,Pomodorini,Olive,Piselli,Avocado', NULL, 18.00, 1, 1, 'images/eynmDZupQ7eEc1ZxTDXYsr2PtbhccOtwVIPDyKQv.jpg', '2021-02-23 01:47:48', '2021-02-23 01:47:48'),
(53, 11, 2, 'Insalata Green', 'insalata-green', 'Valeriana,Iceberg,Avocado,Arancia,Lime', NULL, 12.00, 1, 1, 'images/rZVPf5c7kkTV8t1mHxv7uutQSuk6EgjcEmEkbwtP.jpg', '2021-02-23 01:48:44', '2021-02-23 01:48:44'),
(54, 11, 3, 'Lasagne Veggie', 'lasagne-veggie', 'Lasagne, zucca, spinaci, besciamella vegana.', NULL, 23.00, 1, 1, 'images/LAjnZO9LCT4Q2wrYdasw9UZUWaQa8N1esJjJA4mr.jpg', '2021-02-23 01:49:32', '2021-02-23 01:49:32'),
(55, 11, 2, 'Melanzane', 'melanzane', 'Melanzane grigliate, pomodri, Olio, Tofu', NULL, 13.00, 1, 1, 'images/YQk9KoBs01Qp3RNuhoZuK7SuoZV6XVo2ISiPhM5D.jpg', '2021-02-23 01:50:22', '2021-02-23 01:50:22'),
(56, 11, 2, 'Burger ai Fagioli Neri', 'burger-ai-fagioli-neri', 'Hamburger di fagioli neri, tofu e noci pecan', NULL, 17.00, 1, 1, 'images/WFhn6bcdBdFyKGOtMKcNPVhQL1OEhbjaDsTfgRMR.jpg', '2021-02-23 01:51:17', '2021-02-23 01:51:17'),
(57, 11, 6, 'Acqua', 'acqua', 'Acqua 50cl', NULL, 4.00, 1, 1, 'images/SIyJa8MsayTgsLUi7nYHuC5yQUqggzf6C7TUDpBg.jpg', '2021-02-23 01:51:56', '2021-02-23 01:51:56'),
(58, 10, 6, 'Acqua', 'acqua', 'Acqua in bottiglia 50 cl', NULL, 2.00, 1, 1, 'images/BsUXheGvZRdbBbOqeZOmPOVqlKcsJEsWtG2Ar91O.jpg', '2021-02-23 01:53:25', '2021-02-23 01:53:25'),
(59, 10, 6, 'Birra', 'birra', 'Birra Heineken 33cl', NULL, 3.00, 1, 0, 'images/Q3OrgvTsqMpZOi1pXJ1QXv1YCgMzAeqxcua5RUUa.jpg', '2021-02-23 01:53:52', '2021-02-23 01:53:52'),
(60, 10, 6, 'Coca Cola', 'coca-cola', 'Coca Cola Lattina 33cl', NULL, 3.00, 1, 0, 'images/47UGBVodaThOs7mdA6HQU7dgSDd4uP3071iaihfm.jpg', '2021-02-23 01:54:21', '2021-02-23 01:54:21'),
(61, 10, 1, 'Pizza Fritta', 'pizza-fritta', 'Pizza Fritta, pomodoro , mozzarella, prosciutto cotto', NULL, 6.00, 1, 0, 'images/jxUiNUiAqN2EDbvBCJfM80A4KpLkUyxf2Dtc98GQ.jpg', '2021-02-23 01:55:04', '2021-02-23 01:55:04'),
(62, 10, 2, 'Pizza Margherita', 'pizza-margherita', 'Farina,Olio,Mozzarella,Pomodoro,Basilico', NULL, 8.00, 0, 1, 'images/DzbbdY6gHUwUwI4Zv0fUFFnr7LdYBS8Y0MCfI7UJ.jpg', '2021-02-23 01:56:05', '2021-02-23 01:56:05'),
(63, 10, 2, 'Pizza Marinara', 'pizza-marinara', 'farina,olio,pomodoro,origano,mozzarella,scampi,cozze,gamberi,coregone', NULL, 15.00, 1, 0, 'images/9KzbF3txGT5OhBoqhQ5TcKNwFm5CZfbkH4OU7evx.jpg', '2021-02-23 01:57:14', '2021-02-23 01:59:43'),
(64, 10, 2, 'Pizza Quattro Stagioni', 'pizza-quattro-stagioni', 'farina,olio,pomodoro,mozzarella,olive,carciofi,prosciutto,funghi', NULL, 8.00, 1, 0, 'images/V12zy9pRpY7Z9R5APfkUF5IZiI7XnVwdHA6eSaca.jpg', '2021-02-23 01:58:09', '2021-02-23 01:58:09'),
(65, 10, 2, 'Pizza Salsiccia e Friarielli', 'pizza-salsiccia-e-friarielli', 'farina,olio,pomodoro,mozzarella,salsiccia,friarielli', NULL, 12.00, 1, 0, 'images/2brpgHnW9mtbkI5PqoLcFMzUzUW2GM3rmkYrPkCF.jpg', '2021-02-23 02:01:22', '2021-02-23 02:01:22'),
(66, 10, 2, 'Pizza Speck e Brie', 'pizza-speck-e-brie', 'farina,olio,speck,brie', NULL, 6.00, 1, 0, 'images/lf5hGWG4r7hDAh2sjmOxCzeB1JCKCjLeUR6aP68P.jpg', '2021-02-23 02:02:05', '2021-02-23 02:02:05'),
(67, 13, 6, 'Acqua', 'acqua', 'Acqua in bottiglia 33cl', NULL, 3.00, 0, 1, 'images/B0bB7p3e9wy8HfACCIE5zaWXx6q6eIHstkvFMIuw.jpg', '2021-02-23 02:08:31', '2021-02-23 02:08:31'),
(68, 13, 6, 'Birra', 'birra', 'Birra Heineken 33cl', NULL, 4.00, 1, 0, 'images/Jk0UfkgKqRxYsF35xN3ERp5TbpcsjxMdW5lQ3ApE.jpg', '2021-02-23 02:08:59', '2021-02-23 02:08:59'),
(69, 13, 6, 'Coca-Cola', 'coca-cola', 'Coca cola da 33cl in lattina', NULL, 3.00, 1, 0, 'images/LeUPVQvxPtDUNR7MD1KLFNg2wL3m2bK7J1qSTzK8.jpg', '2021-02-23 02:09:30', '2021-02-23 02:09:30'),
(70, 13, 2, 'Casunsèi', 'casunsei', 'casoncelli alla bergamasca, burro e salvia', NULL, 10.00, 1, 0, 'images/e3xO6kP40HVxEM4dqALQ3dm1bI8JLpDZPkFU8aRL.jpg', '2021-02-23 02:10:13', '2021-02-23 02:10:13'),
(71, 13, 3, 'Cunech e patate', 'cunech-e-patate', 'Coniglio con patate arrosto', NULL, 16.00, 1, 0, 'images/1bwWMzlSs8vutEgFjF8v8Y4B9Lfi6VfIE4dLRVEi.jpg', '2021-02-23 02:10:56', '2021-02-23 02:10:56'),
(72, 13, 3, 'Polenta e osèi', 'polenta-e-osei', 'Polenta con uccellini appena cacciati al forno', NULL, 22.00, 1, 0, 'images/TMrjR66WEYTjVH4ujxQbKqspJHMOwtIHTDl3Tin3.jpg', '2021-02-23 02:12:01', '2021-02-23 02:12:01'),
(73, 13, 5, 'Polenta e osèi dolce', 'polenta-e-osei-dolce', 'Dessert a base di pan di spagna,crema e zucchero', NULL, 5.00, 1, 0, 'images/lA59VwaQgrg6xoXp8wdM3qAIPCdHOXdiWTjUNse8.jpg', '2021-02-23 02:13:06', '2021-02-23 02:13:06'),
(74, 13, 4, 'Polenta', 'polenta', 'Porzione di polenta da 100 grammi', NULL, 4.00, 1, 0, 'images/1rw7nWc1NEsfNgxqKGZzrBymJAGCBanvzaNKJd92.jpg', '2021-02-23 02:13:41', '2021-02-23 02:13:41'),
(75, 13, 5, 'Meringhe', 'meringhe', '2 meringhe fresche alla vaniglia', NULL, 4.00, 1, 0, 'images/9YqhRne4R9eFE81OZpohVRd9bUYaadPzsazRjlfs.jpg', '2021-02-23 02:14:35', '2021-02-23 02:14:35'),
(76, 13, 5, 'Torta Sacher', 'torta-sacher', 'Fetta di torta sacher', NULL, 5.00, 1, 0, 'images/d7vOnhFfSjmZXw5uFwjYOMKGOVW3njzNH0h2snk9.jpg', '2021-02-23 02:15:05', '2021-02-23 02:15:05');

-- --------------------------------------------------------

--
-- Table structure for table `dishtypes`
--

DROP TABLE IF EXISTS `dishtypes`;
CREATE TABLE IF NOT EXISTS `dishtypes` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dishtypes_status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dishtypes`
--

INSERT INTO `dishtypes` (`id`, `dishtypes_status`, `created_at`, `updated_at`) VALUES
(1, 'appetizer', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(2, 'main', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(3, 'second', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(4, 'sides', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(5, 'dessert', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(6, 'beverage', '2021-02-22 15:01:26', '2021-02-22 15:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `dish_order`
--

DROP TABLE IF EXISTS `dish_order`;
CREATE TABLE IF NOT EXISTS `dish_order` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dish_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dish_order_dish_id_foreign` (`dish_id`),
  KEY `dish_order_order_id_foreign` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_12_164339_create_restaurants_table', 1),
(5, '2021_02_12_164459_create_dishtypes_table', 1),
(6, '2021_02_12_164541_create_dishes_table', 1),
(7, '2021_02_12_164616_create_orders_table', 1),
(8, '2021_02_12_164659_create_restypes_table', 1),
(9, '2021_02_12_164746_create_restaurant_restype_table', 1),
(10, '2021_02_12_164841_create_dish_order_table', 1),
(11, '2021_02_15_083838_add_slug_to_restaurants', 1),
(12, '2021_02_15_084235_add_slug_to_dishes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tot_price` double(6,2) NOT NULL,
  `payment_status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `lastname`, `address`, `email`, `tot_price`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 'rerum', 'alias', 'Ipsa cum.', 'nroberts@gmail.com', 89.92, 1, '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(2, 'rerum', 'explicabo', 'Non.', 'donny13@yahoo.com', 13.57, 1, '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(3, 'optio', 'deserunt', 'In.', 'price.will@yahoo.com', 71.69, 0, '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(4, 'qui', 'accusamus', 'Aut.', 'derek.schmeler@hotmail.com', 67.10, 0, '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(5, 'sunt', 'asperiores', 'Nobis.', 'akirlin@yahoo.com', 71.97, 0, '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(6, 'tempore', 'voluptatem', 'Quia.', 'everette.ebert@yahoo.com', 43.42, 1, '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(7, 'ipsa', 'ea', 'Deleniti.', 'jamarcus.breitenberg@gmail.com', 13.72, 1, '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(8, 'temporibus', 'ipsa', 'Adipisci.', 'zrohan@gmail.com', 58.44, 0, '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(9, 'ut', 'non', 'Qui.', 'ywill@gmail.com', 57.85, 0, '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(10, 'qui', 'occaecati', 'Aliquid.', 'boyle.finn@gmail.com', 37.33, 1, '2021-02-22 15:01:26', '2021-02-22 15:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
CREATE TABLE IF NOT EXISTS `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_price` double(3,2) NOT NULL,
  `min_order` double(3,2) DEFAULT NULL,
  `path_image` text COLLATE utf8mb4_unicode_ci,
  `open_hours` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `restaurants_vat_unique` (`vat`),
  KEY `restaurants_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `user_id`, `name`, `slug`, `vat`, `address`, `body`, `phone`, `delivery_price`, `min_order`, `path_image`, `open_hours`, `created_at`, `updated_at`) VALUES
(1, 4, 'Adipisci laborum ea.', 'adipisci-laborum-ea', '529697656', 'Voluptatem.', 'Nobis nam optio non molestias. Deleniti rem praesentium nostrum quia et aut temporibus. Enim quibusdam molestiae in quasi.\n\nEt enim harum ab quia dicta qui quasi. Suscipit distinctio in nostrum ut. Tempore et aspernatur laudantium voluptas eveniet. Excepturi nihil placeat sunt aut.', '243245959', 2.53, 4.22, 'https://via.placeholder.com/150x150.png/00dd77?text=animals+doloremque', 'Maxime voluptate.', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(2, 4, 'Vitae autem quam.', 'vitae-autem-quam', '609428333', 'Cum aut nulla.', 'Quas laborum aut sed quia sit recusandae aut. Animi iure consequatur maiores nulla. Dolorem ea perferendis error ut.\n\nConsequatur in et quisquam est amet laborum veritatis. Voluptas omnis officiis vel dolor illo rerum qui. Autem quo aut culpa in vitae. Numquam aut voluptatem officiis reiciendis non.', '485874240', 4.81, 4.96, 'https://via.placeholder.com/150x150.png/00dd99?text=animals+ut', 'Reiciendis fugit.', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(3, 4, 'Non non sit.', 'non-non-sit', '361832454', 'Vel quisquam eos.', 'Voluptatem aut quas minima vitae autem aut quod repudiandae. Explicabo repudiandae qui quaerat amet voluptatem maiores qui. Non reprehenderit maxime amet. Ab beatae excepturi provident porro.\n\nOccaecati maiores perferendis et et ut. Ut ut quas nihil nisi quisquam voluptatem.', '536574366', 7.01, 5.47, 'https://via.placeholder.com/150x150.png/00bb11?text=animals+architecto', 'Odio quos voluptas.', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(4, 1, 'Sapiente quo harum.', 'sapiente-quo-harum', '399965052', 'Nihil earum.', 'Repellat laborum eius vitae sint repellat labore eius et. Enim incidunt fugit maiores deserunt.\n\nNon consectetur non voluptatum dolores error cupiditate in. Praesentium illo incidunt illum deleniti. Expedita est corrupti consectetur quam. Est aut aperiam optio.', '608853264', 2.33, 6.67, 'https://via.placeholder.com/150x150.png/00dd55?text=animals+quidem', 'Perspiciatis et.', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(5, 1, 'Et est corrupti sit.', 'et-est-corrupti-sit', '361272441', 'Dolores architecto.', 'Et harum est dicta ut aperiam. Sed rerum deleniti ut corrupti. Sed accusamus consequatur repellat inventore.\n\nSint dolorem corporis aut delectus velit eius nemo. Placeat soluta quo est ullam et repellat. Nihil doloremque commodi hic hic. Qui numquam aliquid ea quibusdam nulla et voluptas.', '583364352', 1.31, 4.28, 'https://via.placeholder.com/150x150.png/00ffee?text=animals+rerum', 'Provident ratione.', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(6, 6, 'Pizzeria La Sfinge', 'pizzeria-la-sfinge', '1234567890', 'via Cavour 12', 'Pizzeria La Sfinge nasce nel 2016 dal lavoro di Mohamed Guendouzi. Solo materie prime di qualità e fresche. Tutte le pizze sono cotte in forno a legna.Da noi si possono trovare le migliori pizze in stile italiano e i migliori kebab in stile egiziano.Aperti H24.', '3481143357', 2.00, 2.00, 'images/z442qWq5cUEcrgmNNcJwYg0NU0A2mqjg6EyydcE4.jpg', '24', '2021-02-22 20:58:08', '2021-02-22 20:58:08'),
(7, 6, 'Suleyman Halal', 'suleyman-halal', '8765351621', 'Via Asdrubale 134', 'Salam. Da Suleyman Halal tutta la carne e gli alimenti sono trattati secondo i dettami del Corano. Da semplici bevande al melograno fino a quarti di agnello interi, ci teniamo che tutto sia in linea con il nostro credo. No Haram.', '348110345', 4.00, 4.00, 'images/yLzNz6i0RkTlqLhz4rRPKMOtiOaVDIi3dNX7MNKV.jpg', '12', '2021-02-22 21:02:16', '2021-02-22 21:02:16'),
(8, 7, 'Ying Yang Ristorante Cinese', 'ying-yang-ristorante-cinese', '632745234', 'Viale Padova 12', 'Ristorante tradizionale cinese, perfetto per un pasto insieme con gli amici o la famiglia. Fondato nel 2011 da Jung Chen si è imposto come uno dei migliori ristoratori in città. Siamo aperti tutti i giorni a pranzo e cena. O, se preferite, possiamo portarvi tramite corriere i nostri piatti da voi.', '345221099', 5.00, 2.00, 'images/wtr6mCjNRsPgwIxsqgZGiuMWwHIsO9IXBOgETRkd.jpg', '8', '2021-02-22 21:09:02', '2021-02-22 21:09:02'),
(9, 7, 'Nippon Banzai Sushi', 'nippon-banzai-sushi', '523646462641', 'Via Guglielmo Il Losco 4', 'Sushi all-you-can-eat che effetua anche ordinazioni da asporto. Aperti tutti i giorni a pranzo e cena escluso il lunedì. Pesce trattato e lavorato con cura solo da personale esperto.', '3481143357', 3.00, 2.00, 'images/vloEgp1qVziaHkdFbrZ8u9mZt6lQslgfuHt0PjXH.jpg', '8', '2021-02-22 21:12:58', '2021-02-22 21:12:58'),
(10, 8, 'Pizzeria Napoli', 'pizzeria-napoli', '535235236321', 'Via Isidoro 32', 'Pizzeria Napoli è semplcemente la miglior pizza in città, vincitrice di numerosi premi locali e nazionali. Aperta di sera dalle 18 alle 23, è disponibile anche la consegna a domicilio tramite corriere Deliveboo.', '3286655737', 1.00, 6.00, 'images/RqkFzOto6nMxa6diRruwztNLEs3V0nYrjHjPgINc.jpg', '5', '2021-02-22 21:29:22', '2021-02-23 01:52:35'),
(11, 8, 'CapriVerde', 'capriverde', '49809327507', 'Via Leopardi 90', 'CapriVerde significa Salubre, CapriVerde significa Vita. Il nostro foodprovider è nato con un forte concept Vegan e GreenFriendly. I nostri rifornitori sono esclusivamente reseller equosolidali. I nostri dipendenti sono trattati con il metodo HappyWorker-HappyCustomer. Tutte le nostre pietanze sono Vegan al 100% e senza olio di palma. Consegna disponibile anche a domicilio.', '3286655737', 6.00, 9.00, 'images/D3bdyZX1PnWFPRd3sgPDFwckBiSmIgTnogMcqotu.jpg', '12', '2021-02-22 21:37:52', '2021-02-22 21:37:52'),
(12, 8, 'Pompei Burger', 'pompei-burger', '3546373714731', 'Via Mandela 32', 'Pompei Burger si pone come fast food di qualità. Panini e carni delicatamente selezionati. Personale con esperienza. Passione per il lavoro. Tutti elementi che contraddistinguono il nostro locale.Che aspettate?! Effetuiamo anche consegne a domicilio.', '3286655737', 3.00, 7.00, 'images/FVAvhMuK6LBqACn0TgizTENqIAn4vY4wmUDlv4zc.jpg', '24', '2021-02-22 21:44:52', '2021-02-22 21:44:52'),
(13, 9, 'Ol Giùpì', 'ol-giupi', '1242614764', 'Via San Leonardo 71', 'RistoPasticceria tradizionale bergamasca a conduzione familiare di terza generazione. Nata nel 1962 ha portato avanti la grande tradizione culinaria e pasticcera bergamasca. Da noi potete trovare i migliori Casoncelli insigniti nel 2017 del Polentino d\'Oro; così come potete trovare, in angolo pasticceria, le migliori polente e osèi. Consegniamo anche tramite DeliveBoo direttamente a casa vostra.', '3331117789', 4.00, 8.00, 'images/nAiz2RY7aaAB5YaCN8EGoCi24ds1teHxHblQ0M9r.jpg', '9', '2021-02-22 21:51:13', '2021-02-23 02:07:45');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_restype`
--

DROP TABLE IF EXISTS `restaurant_restype`;
CREATE TABLE IF NOT EXISTS `restaurant_restype` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `restype_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `restaurant_restype_restaurant_id_foreign` (`restaurant_id`),
  KEY `restaurant_restype_restype_id_foreign` (`restype_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_restype`
--

INSERT INTO `restaurant_restype` (`id`, `restaurant_id`, `restype_id`, `created_at`, `updated_at`) VALUES
(1, 6, 1, NULL, NULL),
(2, 6, 10, NULL, NULL),
(3, 7, 2, NULL, NULL),
(4, 7, 4, NULL, NULL),
(5, 8, 4, NULL, NULL),
(6, 8, 5, NULL, NULL),
(7, 8, 6, NULL, NULL),
(8, 9, 2, NULL, NULL),
(9, 9, 3, NULL, NULL),
(10, 9, 4, NULL, NULL),
(11, 10, 1, NULL, NULL),
(12, 10, 5, NULL, NULL),
(13, 11, 2, NULL, NULL),
(14, 11, 7, NULL, NULL),
(15, 12, 8, NULL, NULL),
(16, 13, 5, NULL, NULL),
(17, 13, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `restypes`
--

DROP TABLE IF EXISTS `restypes`;
CREATE TABLE IF NOT EXISTS `restypes` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `restypes_status` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restypes`
--

INSERT INTO `restypes` (`id`, `restypes_status`, `created_at`, `updated_at`) VALUES
(1, 'pizza', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(2, 'healthy', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(3, 'sushi', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(4, 'ethnic', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(5, 'traditional', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(6, 'chinese', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(7, 'vegan', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(8, 'hamburger', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(9, 'pastry', '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(10, 'kebab', '2021-02-22 15:01:26', '2021-02-22 15:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'robert.bruen', 'brekke.guy@yahoo.com', NULL, '*.|Y+qr}U8(', NULL, '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(2, 'lauriane32', 'meggie83@yahoo.com', NULL, 'wtvCL#w$W{Pg+\'SW=C&s', NULL, '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(3, 'maudie.johnston', 'schneider.dessie@yahoo.com', NULL, 'Bgo,2!?~KU&i`Gcgl;}', NULL, '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(4, 'dmann', 'johnston.kiley@yahoo.com', NULL, 'PQDVfxauG', NULL, '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(5, 'denesik.shayne', 'tpredovic@gmail.com', NULL, ']Vs5eIwi^P=AeGD', NULL, '2021-02-22 15:01:26', '2021-02-22 15:01:26'),
(6, 'mohamed', 'mohamedpizza@ali.com', NULL, '$2y$10$xs3byAOom4XGerBGf23HDOJsRFLLzKKQXGhd5W/Wvi9aoGumiP8uG', NULL, '2021-02-22 20:46:22', '2021-02-22 20:46:22'),
(7, 'Jung Chen', 'jungchen@maomail.com', NULL, '$2y$10$.PufgfvdaFhARh6XQRv2C.NK1S/ELmHa5jKC/Gj.Yp5WjSCgiLIdu', NULL, '2021-02-22 21:03:59', '2021-02-22 21:03:59'),
(8, 'Gennaro Esposito', 'gennaroesposito@gmail.com', NULL, '$2y$10$QVPTT7TreIKCVU463j28GuoM4AX46ADegT2XoUKhJ42omjPkcNUVu', NULL, '2021-02-22 21:25:18', '2021-02-22 21:25:18'),
(9, 'Walter Locatelli', 'walterloca@berghemail.com', NULL, '$2y$10$SbNFFv6rCBpCJK/hzoSvTO8YjPyHb9vi564CS/.gA2/MahWkQBrQS', NULL, '2021-02-22 21:46:03', '2021-02-22 21:46:03');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

    
