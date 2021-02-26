-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 26, 2021 at 08:43 AM
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
-- Database: `team57`
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
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`id`, `restaurant_id`, `dishtype_id`, `name`, `slug`, `description`, `allergens`, `price`, `visibility`, `vegan`, `path_image`, `created_at`, `updated_at`) VALUES
(1, 4, 2, 'Eaque aliquid.', 'eaque-aliquid', 'Non animi vel natus eos qui. Dolores ratione enim tenetur occaecati amet eaque perspiciatis. Facilis quia totam qui cum cumque quas voluptates qui.\n\nNihil sed qui repellat dolores. Blanditiis ipsum sint voluptatem aut officia. Error quos voluptatem iusto praesentium magni. Molestias et velit dignissimos est impedit sit.', 'Accusantium nostrum qui excepturi quia.', 10.93, 1, 1, 'https://via.placeholder.com/150x150.png/00ddee?text=animals+vel', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(2, 3, 6, 'Et rerum harum.', 'et-rerum-harum', 'Repellendus magni laudantium a amet quia voluptatum corporis. Eaque illo eum laborum ut in. Pariatur repellat praesentium aut et. Et magni et sed praesentium laboriosam iure.\n\nMollitia optio et ratione vel. Voluptates ut ut non molestias officia est ut. Ut ducimus perspiciatis repellat sapiente.', 'Sit voluptas aperiam non.', 19.35, 0, 0, 'https://via.placeholder.com/150x150.png/00ff22?text=animals+dicta', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(3, 2, 1, 'Quis dolor mollitia.', 'quis-dolor-mollitia', 'Inventore optio molestiae nihil similique dolores. Cupiditate distinctio consequatur totam repellendus. Rerum non necessitatibus consequatur sit.\n\nArchitecto hic reprehenderit blanditiis similique et hic explicabo. Suscipit animi eligendi repellat voluptas. Aut et autem facilis repellat illum quae. Error dolores id aspernatur animi quasi ut odit.', 'Soluta error excepturi non dicta.', 21.96, 0, 1, 'https://via.placeholder.com/150x150.png/00ff22?text=animals+fuga', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(4, 1, 4, 'Fugiat modi qui eum.', 'fugiat-modi-qui-eum', 'Ducimus est commodi fugit quidem. Ad minus optio culpa aspernatur velit. Autem in unde at qui sit soluta et veritatis. Maxime sint aut iusto aliquid aspernatur sed.\n\nDeleniti ut nostrum sit accusamus. Inventore similique hic magni nobis facilis cupiditate. Quo et explicabo animi magni blanditiis sed. Aperiam rerum vel dolorem omnis quis.', 'Corrupti aperiam veritatis facere quam.', 3.70, 1, 1, 'https://via.placeholder.com/150x150.png/00dd66?text=animals+iste', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(5, 1, 2, 'Qui enim est.', 'qui-enim-est', 'Exercitationem enim minima porro earum provident non facere. Sequi quia iste laudantium nemo. Fugit est dolore assumenda sit eum assumenda dolores vitae. Suscipit ipsa porro et iusto et totam.\n\nIste necessitatibus nemo ut ab ab ea. Velit recusandae possimus itaque deserunt minima dignissimos enim. Accusantium unde minima dolores ut. Est soluta modi explicabo explicabo suscipit deserunt.', 'Eius sunt ut non odio eius.', 7.37, 0, 1, 'https://via.placeholder.com/150x150.png/009999?text=animals+quaerat', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(6, 4, 1, 'Debitis enim dicta.', 'debitis-enim-dicta', 'Rerum aperiam qui eaque sapiente unde incidunt. Sint blanditiis voluptatibus praesentium consequatur. Deserunt aut veniam et facilis.\n\nUt eius quo ex mollitia. Et doloribus quia adipisci dolorem molestiae voluptates impedit saepe. Et enim voluptatibus dolor nam.', 'Atque minima praesentium adipisci.', 22.88, 1, 0, 'https://via.placeholder.com/150x150.png/0011aa?text=animals+deserunt', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(7, 2, 4, 'Est veniam aut.', 'est-veniam-aut', 'Beatae quia molestias enim et magni. Beatae laborum ut veniam totam perferendis laboriosam. Laboriosam quia fugiat et sunt ut aliquid esse.\n\nPraesentium molestias sunt aut nisi earum. Tempore veritatis eligendi optio debitis. Saepe at aperiam rerum reiciendis impedit odit quaerat illo.', 'Nobis officia est eligendi eum.', 19.99, 1, 1, 'https://via.placeholder.com/150x150.png/00bb22?text=animals+ea', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(8, 2, 3, 'Velit dolorem modi.', 'velit-dolorem-modi', 'Maxime sit impedit minus quasi qui officia. Neque dolores qui dolores distinctio mollitia consectetur. Explicabo est quia fuga possimus.\n\nCorrupti voluptatem nulla eveniet ipsam velit animi et. Consectetur vitae atque ut accusamus architecto aspernatur non amet. Sed nostrum perferendis nostrum eos.', 'Quis nobis saepe aut.', 16.80, 1, 1, 'https://via.placeholder.com/150x150.png/006633?text=animals+aspernatur', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(9, 1, 4, 'Eos magnam.', 'eos-magnam', 'Beatae quam voluptatibus nulla facilis ad possimus amet. Dolor labore et non perferendis sunt veniam fugit. Fugit exercitationem aliquam et ut deserunt dolores. Harum omnis inventore rerum omnis.\n\nMinima hic cum sit non voluptatum. Neque sit qui deleniti qui qui aliquid quas. Autem quia id qui deserunt delectus libero minima necessitatibus. Tempora quibusdam ad consequatur saepe accusantium.', 'Rerum veritatis aperiam sit non.', 5.59, 0, 0, 'https://via.placeholder.com/150x150.png/0044cc?text=animals+quis', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(10, 3, 2, 'Sequi numquam in a.', 'sequi-numquam-in-a', 'Impedit maiores maiores occaecati et eum cumque et blanditiis. Sint sunt nam amet molestias rerum reiciendis optio. Pariatur libero eveniet voluptates sunt.\n\nEsse accusamus placeat voluptates ex et natus maxime. Ut eveniet consequatur amet. Corrupti ipsam ut optio sint perspiciatis voluptas consequatur. Distinctio dolor deleniti consequuntur aliquam perspiciatis alias ut.', 'Eaque qui vero enim eaque veniam.', 17.37, 1, 1, 'https://via.placeholder.com/150x150.png/0088ff?text=animals+suscipit', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(11, 3, 3, 'Et et id esse quam.', 'et-et-id-esse-quam', 'Vel asperiores vitae accusamus quibusdam ex voluptatem recusandae. Iure quia totam quis ea. Id autem eum dolores. Adipisci rem fugiat voluptates occaecati ullam.\n\nCorporis totam ut nesciunt quis eum. Totam aut totam dolorem eum illum rerum. Incidunt recusandae architecto quidem libero earum.', 'Non minima ut quaerat aut.', 13.05, 1, 1, 'https://via.placeholder.com/150x150.png/00bbaa?text=animals+voluptates', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(12, 4, 1, 'Consectetur ratione.', 'consectetur-ratione', 'Reiciendis dignissimos quas reiciendis quo ipsum. Cum maxime dicta corrupti esse voluptatem dicta. Asperiores porro deleniti velit magnam. Delectus esse enim nemo autem molestiae quod asperiores.\n\nBeatae harum culpa natus qui qui. Eos quia non laudantium sapiente perferendis ex reprehenderit. Neque vel quod odit nesciunt.', 'Similique consequuntur at aut qui.', 13.02, 1, 1, 'https://via.placeholder.com/150x150.png/004444?text=animals+quis', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(13, 4, 4, 'Quidem quaerat qui.', 'quidem-quaerat-qui', 'Deleniti ipsum quae praesentium recusandae. Eveniet repellat tempore dolor sit commodi eum deleniti. Debitis aliquam deleniti autem. Similique accusantium autem nesciunt accusamus.\n\nRatione inventore reprehenderit quia occaecati eum. Reprehenderit accusantium eius ratione consequatur sint recusandae commodi fuga. Aspernatur occaecati aut dolor illo consequuntur. Magni accusamus natus commodi dolor.', 'Praesentium facere eaque iusto facilis.', 3.79, 1, 1, 'https://via.placeholder.com/150x150.png/0011aa?text=animals+eum', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(14, 3, 5, 'Ut nostrum corporis.', 'ut-nostrum-corporis', 'Repudiandae nobis velit necessitatibus. Inventore voluptatem sint sint necessitatibus nam consectetur dolorem. Velit alias aut doloribus. Culpa porro excepturi recusandae et accusamus atque fugit.\n\nIste nam dignissimos rem et repellat quo. Fugiat explicabo nulla magnam adipisci quaerat. Non dolor sint dolorum aspernatur.', 'Cupiditate voluptatem eveniet vitae et.', 18.15, 1, 1, 'https://via.placeholder.com/150x150.png/0088cc?text=animals+accusamus', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(15, 4, 5, 'Rem cumque sint sit.', 'rem-cumque-sint-sit', 'Quisquam est eveniet odio sed aut. Sapiente quia praesentium occaecati voluptatem dolorem occaecati. Nam exercitationem ab ducimus nihil.\n\nEst consectetur vero autem eveniet. Iste autem consequatur et ab autem rerum. Aut molestias id eveniet quisquam voluptas sequi.', 'Est maxime architecto voluptate sit.', 8.25, 1, 0, 'https://via.placeholder.com/150x150.png/00dd00?text=animals+adipisci', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(16, 4, 6, 'Corrupti aut amet.', 'corrupti-aut-amet', 'Sed nulla modi natus iusto reprehenderit quo ea. Autem aspernatur aut sed eligendi ut enim quo. Nihil deserunt placeat culpa optio nesciunt dolores rerum doloremque. Ipsum voluptate at qui necessitatibus. Error sed consequatur qui.\n\nEt aut delectus quia illum necessitatibus. Qui voluptatem repudiandae deserunt non fugiat aliquid. Aperiam eos totam qui consectetur voluptas nemo.', 'Quod soluta maxime non et.', 22.58, 0, 0, 'https://via.placeholder.com/150x150.png/00ffee?text=animals+qui', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(17, 2, 6, 'Id asperiores eum.', 'id-asperiores-eum', 'Minima ab sapiente ratione quaerat. Adipisci aut vero quia deserunt occaecati. Repellendus totam fugit quo ratione.\n\nAt itaque repellat voluptatem non quos porro et. Quis vel aperiam aut alias saepe nam est. Qui velit deserunt dicta reiciendis qui eaque. Quo autem veniam dolorem qui est.', 'Et velit similique quos est.', 4.06, 1, 1, 'https://via.placeholder.com/150x150.png/00dd44?text=animals+maiores', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(18, 1, 2, 'Fugiat reiciendis.', 'fugiat-reiciendis', 'Quod ea fugiat omnis quas distinctio deserunt possimus iure. Veritatis quo eos iusto sit explicabo accusantium qui et. Quis sit distinctio velit quaerat facilis aspernatur. Qui et ut in consequuntur. Aut delectus quasi qui.\n\nPlaceat qui blanditiis non eos consequatur consectetur ipsam. Sequi sapiente aut reprehenderit quidem eum non.', 'Quam ut laudantium est vel.', 22.37, 1, 0, 'https://via.placeholder.com/150x150.png/0033bb?text=animals+quia', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(19, 5, 1, 'Quo laborum autem.', 'quo-laborum-autem', 'Ut ea ea eveniet eaque distinctio incidunt aliquam. Eius et sit aspernatur vel ut sed. Quaerat nobis aut nulla unde in.\n\nEst dolor et aut. Natus vero ut ad quod. Autem ea ad quis laboriosam ea natus. Nemo ut sed et molestiae repellendus.', 'Fuga in dicta quia est ex.', 24.34, 0, 1, 'https://via.placeholder.com/150x150.png/00bb11?text=animals+aut', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(20, 1, 3, 'Accusamus voluptate.', 'accusamus-voluptate', 'Sequi aliquam quis asperiores aspernatur. Nihil autem repudiandae reiciendis doloribus eius rerum. Aspernatur aspernatur quis facere occaecati sed accusantium quis.\n\nNesciunt aut at est nihil. Consequatur illo voluptatem mollitia est blanditiis aperiam quia. Veritatis eum sed omnis alias id dicta. Et nesciunt esse quia.', 'Possimus cumque eos sint adipisci.', 15.37, 0, 1, 'https://via.placeholder.com/150x150.png/0044cc?text=animals+qui', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(21, 6, 2, 'Pasta & Pachino', 'pasta-pachino', 'Lorem ipsum dolor sit amet', NULL, 12.00, 1, 1, 'images/m5eMEUHJEiFJSL9A1EuYvvUvwJSllGi9DYUFOrhY.jpg', '2021-02-26 06:13:09', '2021-02-26 06:13:09'),
(22, 6, 3, 'Chicken alla Cacciatora', 'chicken-alla-cacciatora', 'Etiam et magna congue, pretium enim ut, vulputate nisl.', NULL, 18.00, 1, 0, 'images/qFWjYghZ7n7mioB6Gv25cjmPfpxnzcqNokksuafP.jpg', '2021-02-26 06:14:00', '2021-02-26 06:14:00'),
(23, 7, 2, 'Cantonese Rice', 'cantonese-rice', 'Vivamus nec arcu dui.', NULL, 8.00, 1, 1, 'images/nyHcNiBQj87uHdAo6MC4ikkLtXbQiPbjBsKIWCnI.jpg', '2021-02-26 06:15:40', '2021-02-26 06:18:05'),
(24, 8, 4, 'Kebab Salad', 'kebab-salad', 'Lorem ipsum dolor sit amet', NULL, 4.00, 1, 0, 'images/H9wUbgXZxad5QnWdLVyj9TtYujlguoxR3FmDFH1T.jpg', '2021-02-26 06:49:32', '2021-02-26 06:49:32'),
(25, 8, 3, 'Kebab Burgher', 'kebab-burgher', 'Lorem ipsum dolor sit amet', NULL, 5.00, 1, 0, 'images/EaoXNgLtJ25FUHUCWrXBgxrREY5zpLOm1sKP8cwU.jpg', '2021-02-26 06:49:55', '2021-02-26 06:49:55');

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
(1, 'appetizer', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(2, 'main', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(3, 'second', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(4, 'sides', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(5, 'dessert', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(6, 'beverage', '2021-02-25 20:16:28', '2021-02-25 20:16:28');

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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(49, '2014_10_12_000000_create_users_table', 1),
(50, '2014_10_12_100000_create_password_resets_table', 1),
(51, '2019_08_19_000000_create_failed_jobs_table', 1),
(52, '2021_02_12_164339_create_restaurants_table', 1),
(53, '2021_02_12_164459_create_dishtypes_table', 1),
(54, '2021_02_12_164541_create_dishes_table', 1),
(55, '2021_02_12_164616_create_orders_table', 1),
(56, '2021_02_12_164659_create_restypes_table', 1),
(57, '2021_02_12_164746_create_restaurant_restype_table', 1),
(58, '2021_02_12_164841_create_dish_order_table', 1),
(59, '2021_02_15_083838_add_slug_to_restaurants', 1),
(60, '2021_02_15_084235_add_slug_to_dishes', 1);

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
  `payment_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `lastname`, `address`, `email`, `tot_price`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 'numquam', 'dolorem', 'Illo.', 'pfahey@yahoo.com', 14.50, 0, '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(2, 'quia', 'ut', 'Ratione.', 'dillan08@yahoo.com', 60.99, 1, '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(3, 'id', 'vero', 'Et non et.', 'yessenia.casper@hotmail.com', 72.89, 1, '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(4, 'magnam', 'similique', 'Et.', 'rbergnaum@hotmail.com', 61.38, 1, '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(5, 'mollitia', 'sed', 'Animi.', 'imani.murazik@hotmail.com', 56.66, 1, '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(6, 'dolore', 'omnis', 'Dicta.', 'kristin81@gmail.com', 64.66, 0, '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(7, 'adipisci', 'iste', 'Molestiae.', 'zane.hackett@gmail.com', 55.02, 0, '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(8, 'eos', 'aut', 'Ipsa.', 'ambrose.pagac@yahoo.com', 65.33, 0, '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(9, 'consectetur', 'id', 'Tempore.', 'wiza.randall@yahoo.com', 29.86, 1, '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(10, 'debitis', 'culpa', 'Ut.', 'missouri73@yahoo.com', 18.10, 1, '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(11, 'dfdd', 'dfd', 'd', 'hj', 7.40, 0, '2021-02-25 20:22:02', '2021-02-25 20:22:02'),
(12, 'Paolo', 'Sondroi', 'Via Sondrio', 'sondrio@sondrio.it', 29.00, 0, '2021-02-26 06:53:32', '2021-02-26 06:53:32'),
(13, 'Pluto', 'PLuto', 'via pluto', 'pluto@libero.it', 17.00, 0, '2021-02-26 07:11:19', '2021-02-26 07:11:19'),
(14, 'ciao', 'ciao', 'ciao', 'ciao@ciao.it', 59.00, 0, '2021-02-26 07:41:28', '2021-02-26 07:41:28');

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `user_id`, `name`, `slug`, `vat`, `address`, `body`, `phone`, `delivery_price`, `min_order`, `path_image`, `open_hours`, `created_at`, `updated_at`) VALUES
(1, 2, 'Est et sit deleniti.', 'est-et-sit-deleniti', '891945017', 'Sit et sit ipsum.', 'Ea porro architecto ipsum id qui sapiente ea officia. Aspernatur impedit a dolorem ea. Facilis pariatur facilis ut dolore.\n\nTempora eum mollitia ut ex ex magnam. Ut autem enim iure. Quasi rem non commodi voluptatem quibusdam. Explicabo veniam sint fuga.', '830317718', 4.24, 5.18, 'https://via.placeholder.com/150x150.png/001199?text=animals+expedita', 'Molestias odit eum.', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(2, 3, 'Ipsum rem maxime.', 'ipsum-rem-maxime', '859595987', 'Similique possimus.', 'Non laudantium mollitia et dolor error corporis magni. Et et animi tempore necessitatibus veniam est esse. Sunt quia quia soluta ut eos ut sed nobis. Blanditiis aliquid temporibus voluptatum dolorum mollitia earum omnis.\n\nIpsam nemo minus esse rerum animi. Eos voluptatem quod exercitationem aut. Non sed laborum qui ducimus tenetur nihil.', '308285923', 5.69, 4.75, 'https://via.placeholder.com/150x150.png/0077dd?text=animals+aut', 'Autem excepturi.', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(3, 4, 'Delectus aut vel.', 'delectus-aut-vel', '177317458', 'Odio veniam.', 'Dolores dolorum provident dolorem modi. Atque mollitia molestiae dolorum alias non qui. Vel velit voluptatum nulla voluptatibus similique ea.\n\nEt fuga quisquam quis aliquam repellendus. Dolorum quae saepe eum ullam cumque quo beatae. Inventore qui in vel nihil ipsam veritatis. Aliquam veniam autem nulla corporis sed ullam illum.', '817404311', 3.97, 5.90, 'https://via.placeholder.com/150x150.png/005533?text=animals+tempora', 'Quis vero.', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(4, 3, 'Officia laudantium.', 'officia-laudantium', '352355054', 'Consequatur.', 'Laudantium dolor rerum aut consequatur repellat et ipsa. Temporibus provident et quia aspernatur. Tenetur consequatur aut eum ipsam praesentium sed. Explicabo qui eos consequatur. Et molestiae sit quia quis.\n\nDoloribus et quasi qui voluptatem autem consequatur magni. Dolore dignissimos sed maiores quasi. Commodi similique omnis et. Vel ducimus officia eos dolorum aut voluptatem.', '735362857', 5.17, 5.94, 'https://via.placeholder.com/150x150.png/0011cc?text=animals+laudantium', 'Ut eaque dicta.', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(5, 5, 'Esse cupiditate qui.', 'esse-cupiditate-qui', '857707111', 'Nemo ut maxime et.', 'Minus optio laborum quo quaerat. Voluptatem fugit ducimus cumque ex molestias in eaque. Quo illo error et voluptate.\n\nEst est facilis quam itaque. Sint architecto odio omnis consequatur in nulla exercitationem. Est sit voluptatum sit voluptatem et optio. Officiis tempore explicabo consequatur quia eum quia mollitia.', '969259571', 3.83, 7.22, 'https://via.placeholder.com/150x150.png/009922?text=animals+nulla', 'Nisi eum unde.', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(6, 6, 'Chez Luca', 'chez-luca', '123456789', 'Via Luca', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et magna congue, pretium enim ut, vulputate nisl. In interdum purus in erat vestibulum ornare. Sed facilisis vestibulum mi, ac posuere neque. Vivamus nec arcu dui. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', '123456789', 2.00, 2.00, 'images/HhfKc9UdXbEkpTMRCJi7iwW9kknRrykPYoM7v3Q9.png', 'h24', '2021-02-26 06:12:08', '2021-02-26 06:12:08'),
(7, 6, 'Chinese Taiwan', 'chinese-taiwan', '2233445566', 'Via Rosmini 45', 'Praesent sodales massa eget faucibus pretium. Donec finibus, ipsum vel tincidunt dictum, quam lacus vestibulum nulla, porta maximus augue ipsum id eros. Suspendisse ac magna semper erat dictum tristique ac sit amet enim. Proin pulvinar vehicula enim id viverra. Quisque aliquet velit sed enim pharetra lacinia. Nunc consectetur orci ac sem feugiat eleifend. Ut fermentum aliquam lectus, eget ultrices nisl ultricies blandit.', '02-3456789', 4.00, 2.00, 'images/ptuYGszinIIsNN7bEB6aEsog8lPykzhUbYKs2NTc.png', '12.00-18.00', '2021-02-26 06:14:50', '2021-02-26 06:14:50'),
(8, 6, 'Kebab House', 'kebab-house', '887766554', 'Via kebab', 'Donec finibus, ipsum vel tincidunt dictum, quam lacus vestibulum nulla, porta maximus augue ipsum id eros. Suspendisse ac magna semper erat dictum tristique ac sit amet enim. Proin pulvinar vehicula enim id viverra. Quisque aliquet velit sed enim pharetra lacinia. Nunc consectetur orci ac sem feugiat eleifend. Ut fermentum aliquam lectus, eget ultrices nisl ultricies blandit.', '6655337744', 3.00, 3.00, 'images/subUODOw4YjIF5ZZLLVbVumkJF09P6Pgli0IqyVK.jpg', 'h24', '2021-02-26 06:48:50', '2021-02-26 06:48:50');

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_restype`
--

INSERT INTO `restaurant_restype` (`id`, `restaurant_id`, `restype_id`, `created_at`, `updated_at`) VALUES
(1, 6, 1, NULL, NULL),
(2, 6, 5, NULL, NULL),
(3, 6, 8, NULL, NULL),
(4, 7, 3, NULL, NULL),
(5, 7, 4, NULL, NULL),
(6, 7, 6, NULL, NULL),
(7, 8, 4, NULL, NULL),
(8, 8, 8, NULL, NULL),
(9, 8, 10, NULL, NULL);

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
(1, 'pizza', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(2, 'healthy', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(3, 'sushi', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(4, 'ethnic', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(5, 'traditional', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(6, 'chinese', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(7, 'vegan', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(8, 'hamburger', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(9, 'pastry', '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(10, 'kebab', '2021-02-25 20:16:28', '2021-02-25 20:16:28');

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'felicity.hessel', 'mohr.vernice@yahoo.com', NULL, '\"&vmT!yKvO5?~7+\\qC=', NULL, '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(2, 'cwaters', 'xgislason@yahoo.com', NULL, '_x$\\Ts>+\\eq{}!WWKT', NULL, '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(3, 'ijones', 'destiny68@gmail.com', NULL, 'X)&Xr~EvdMAw%', NULL, '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(4, 'idell.deckow', 'eblick@yahoo.com', NULL, '{E!!_t<k*T`,<', NULL, '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(5, 'harvey46', 'vesta.abernathy@yahoo.com', NULL, ')kIexUn4', NULL, '2021-02-25 20:16:28', '2021-02-25 20:16:28'),
(6, 'annalisa', 'annalisa@annalisa.it', NULL, '$2y$10$S8/e6tNmUoKELkZMQcB9Qezk2dcCKSADfLCoImUh4QUwRW1ij5r/G', NULL, '2021-02-26 06:09:41', '2021-02-26 06:09:41');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
