-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 01, 2022 at 03:06 PM
-- Server version: 5.7.32-0ubuntu0.18.04.1
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog1`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Deleniti dolor iure ut excepturi.', 'Sint aliquam beatae minima autem vel dolore.', '2021-11-30 09:59:38', '2021-11-30 09:59:38'),
(2, 'Perspiciatis maiores magni reiciendis deleniti eligendi sunt.', 'Laudantium dignissimos vel est soluta vel non et.', '2021-11-30 09:59:38', '2021-11-30 09:59:38'),
(3, 'Nihil consequatur vitae facere impedit pariatur deleniti.', 'At dicta laboriosam ipsum commodi iste maxime vel.', '2021-11-30 09:59:38', '2021-11-30 09:59:38'),
(4, 'Esse odio fuga accusamus debitis cupiditate optio possimus.', 'Sed fuga ea rem reprehenderit sunt dolorum.', '2021-11-30 09:59:38', '2021-11-30 09:59:38'),
(5, 'Sit ratione ut doloribus ut velit.', 'Corporis quia asperiores qui porro.', '2021-11-30 09:59:38', '2021-11-30 09:59:38'),
(6, 'Ut ullam est enim corrupti.', 'Assumenda possimus sequi repellat quam voluptates in dolores.', '2021-11-30 09:59:38', '2021-11-30 09:59:38'),
(7, 'Et ad dolorem ut.', 'Est at ipsum ut vero tenetur dolores adipisci.', '2021-11-30 09:59:38', '2021-11-30 09:59:38'),
(8, 'Unde eos vero dolor rem.', 'Earum quis qui et commodi pariatur.', '2021-11-30 09:59:38', '2021-11-30 09:59:38'),
(9, 'Id libero qui sapiente et pariatur corporis architecto.', 'Iure voluptas necessitatibus ut mollitia libero dolores itaque.', '2021-11-30 09:59:38', '2021-11-30 09:59:38'),
(10, 'Aperiam iure animi et harum sequi.', 'Dolorem molestiae praesentium dignissimos vel laboriosam possimus.', '2021-11-30 09:59:38', '2021-11-30 09:59:38'),
(11, 'In vero odio enim facilis.', 'Laborum error distinctio ex porro qui dolore consequatur.', '2021-12-01 16:45:16', '2021-12-01 16:45:16'),
(12, 'Eius debitis veritatis at eos ullam et soluta quis.', 'Eligendi deleniti sed sed eum.', '2021-12-01 16:45:16', '2021-12-01 16:45:16'),
(13, 'Odio aut nulla ratione debitis at.', 'Sequi eius quasi excepturi ratione consectetur et.', '2021-12-01 16:45:16', '2021-12-01 16:45:16'),
(14, 'Aut labore et pariatur autem est quia tempora.', 'Ut sapiente alias itaque consectetur rerum sint quis.', '2021-12-01 16:45:16', '2021-12-01 16:45:16'),
(15, 'Dignissimos temporibus accusamus voluptatibus tempora et tempore et.', 'Dolor hic veritatis necessitatibus est provident voluptatem.', '2021-12-01 16:45:17', '2021-12-01 16:45:17'),
(16, 'Est saepe mollitia consequatur sunt.', 'Dolores assumenda beatae et vitae qui.', '2021-12-01 16:45:17', '2021-12-01 16:45:17'),
(17, 'Incidunt ipsa accusamus earum dolor autem qui.', 'Porro excepturi illo dolores eveniet aliquid sit ut autem.', '2021-12-01 16:45:17', '2021-12-01 16:45:17'),
(18, 'Ut aut dolorem eveniet quia reiciendis.', 'Reiciendis cum quibusdam molestiae.', '2021-12-01 16:45:17', '2021-12-01 16:45:17'),
(19, 'Consectetur dignissimos consequatur officia vitae in in.', 'Corporis impedit architecto pariatur minima dolores.', '2021-12-01 16:45:17', '2021-12-01 16:45:17'),
(20, 'Sit doloribus numquam consequatur eum.', 'Eum illo tempore qui velit rem blanditiis maxime maxime.', '2021-12-01 16:45:18', '2021-12-01 16:45:18');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 7, 1, 'awesome !', '2021-12-26 10:45:48', '2021-12-26 10:45:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_25_151647_create_posts_table', 1),
(6, '2021_10_26_133444_create_categories_table', 1),
(7, '2021_11_27_144828_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `title`, `slug`, `excerpt`, `body`, `thumbnail`, `created_at`, `updated_at`, `published_at`) VALUES
(1, 1, 6, 'My First Post', 'my-first-post', 'my first post in this blog', 'this is my first post body this is my first post body this is my first post body this is my first post body this is my first post body this is my first post body this is my first post body this is my first post body this is my first post body this is my first post body this is my first post body this is my first post body this is my first post body this is my first post body this is my first post body this is my first post body this is my first post body', 'thumbnails/uCucgkGUI1nF8QI9O70TqEB5h8FFZvcAzZeUbVBY.jpg', '2021-11-30 10:00:36', '2021-12-01 17:02:34', NULL),
(2, 1, 1, 'second post', 'second-post', 'my second post', 'this is my second post in this blog', 'thumbnails/MFWdYJFlZAuhy1FKKGfO4XKsN81sriv1qQBEktx7.png', '2021-11-30 10:16:44', '2021-11-30 10:16:44', NULL),
(4, 3, 12, 'Nulla quia reiciendis dolores voluptatem quos.', 'Commodi officiis et quas.', '<p>Sit ut ea sed est sit dicta libero voluptas. Voluptate impedit fugit consequatur. In molestias tempore iure ut.<p><p>Fugit quidem molestiae quam sed. Alias officiis ducimus dolor beatae dolorem consequatur. Atque nihil necessitatibus corporis quia delectus.</p>', '<p>Officiis voluptatem consequuntur ut et perspiciatis. Consequatur aut cupiditate maxime ullam. Excepturi odit sed non iusto animi assumenda perferendis.<p><p>Perferendis aspernatur qui odio repellat vel alias quam. Debitis consequatur dolorem numquam dolorum iste consectetur velit. Doloremque a quod iste et. Soluta soluta rerum quia ratione.<p><p>Aliquid debitis voluptate fugiat in. Eos nam voluptas illum porro facere. Sint placeat doloremque laudantium autem vel itaque.<p><p>Sapiente minus ut magnam et commodi. Et ut quam non at necessitatibus accusantium. Saepe accusamus sed dolor molestias.<p><p>Recusandae tempora reiciendis suscipit officiis magni itaque repellat quia. Non facilis voluptatem rem eaque. Corporis architecto officia illum hic nam. Maxime sit omnis et ut.<p><p>Voluptas ut sint omnis ut. Ut alias quis accusamus in. Ut dolores commodi nam odit suscipit fugit et.</p>', NULL, '2021-12-01 16:45:18', '2021-12-01 16:45:18', NULL),
(5, 4, 13, 'Debitis quam aliquid reprehenderit et ullam officiis.', 'Voluptas est error sed illo sint doloribus.', '<p>Doloremque consequatur quo est et natus ea nesciunt. Aut dicta qui alias qui eum. Libero ut repellendus dignissimos doloribus quia nobis. Nulla ea fuga deleniti et unde.<p><p>Voluptatum consequatur officiis nisi a ea beatae repudiandae. Qui sed delectus amet veritatis enim. Quos quia enim quaerat sit est consequatur. Quae incidunt amet nobis est. Rerum voluptatem odit aut architecto.</p>', '<p>Rem animi atque quod amet ut eos praesentium. Rerum illum hic vel animi id. Itaque consequatur et fugiat beatae quaerat.<p><p>Ab rerum eaque culpa officia ratione. Delectus reprehenderit cupiditate esse recusandae est. Culpa id suscipit aut laboriosam.<p><p>At repellat ab consequatur exercitationem odit laborum magni dolorem. Rem consequuntur consequatur eaque incidunt est. Doloribus aliquid inventore molestias ipsa sit fugiat id. Veritatis est eos et tenetur.<p><p>Et quo fugiat voluptatem quo. Et qui laboriosam distinctio molestiae dicta nobis reprehenderit. Earum commodi sed corporis sunt excepturi eos.<p><p>Doloribus voluptatibus incidunt sed consectetur aut qui. Eligendi ducimus dolor vel qui voluptate deleniti fugiat. Aut recusandae placeat placeat et aliquam.<p><p>Corporis sint rerum fugit incidunt quia minima labore. Quas necessitatibus quod dolor rerum. Omnis modi aspernatur ipsum. Voluptate qui vitae expedita aut accusantium.</p>', NULL, '2021-12-01 16:45:18', '2021-12-01 16:45:18', NULL),
(6, 5, 14, 'Dolor fugit et accusamus eos asperiores nostrum.', 'Quae consequatur quaerat voluptatem nesciunt mollitia in.', '<p>Natus dolorum molestias aut et. Itaque quo eos delectus.<p><p>Facere assumenda ex exercitationem facere id est. Recusandae amet quia cupiditate qui. Deleniti quae et fugiat molestiae provident ea.</p>', '<p>Aut aperiam voluptatem excepturi quia. Esse ut saepe ut voluptate id odit. Sequi nam omnis aut in rerum.<p><p>Dicta quisquam et nobis quidem. Ut est et ut iusto. Eligendi quam repellendus veritatis facilis autem qui dolor.<p><p>Mollitia ea cum eos quae dolores et. Quia molestias dolores et officiis rem. Voluptas eaque dolorem quo esse.<p><p>Sint unde velit natus officiis consequatur consequatur eos voluptatem. Quisquam libero ut tenetur. Doloribus reprehenderit rem excepturi quisquam. Est autem dolore in tempora in nulla quos.<p><p>Delectus molestias nostrum et neque laborum. Sit et culpa distinctio aspernatur quia voluptatum. Suscipit sit consequatur necessitatibus nihil et quo.<p><p>Eum est doloremque voluptatem est neque. Dolorum similique nihil unde amet maiores. Quae recusandae officiis cupiditate molestias rerum.</p>', NULL, '2021-12-01 16:45:18', '2021-12-01 16:45:18', NULL),
(7, 6, 15, 'Iste voluptatibus sit consequatur quo rerum saepe exercitationem.', 'Et consequatur velit odio quis voluptatibus libero.', '<p>Voluptatibus molestiae et labore velit optio eum. Reiciendis totam voluptas veritatis. Aliquam ipsum nisi labore.<p><p>Sed qui cum nesciunt incidunt et. Dolore sunt libero esse maiores rem. Dolore alias amet vel illo et ea qui accusantium. Qui et rerum libero aut quia dolores laborum assumenda.</p>', '<p>Provident quia iusto quo maiores saepe. Et molestiae cupiditate saepe et quam. Alias doloremque aperiam nam vero distinctio et. Ea fuga in qui.<p><p>Vel ea at sint tempore quia. Sunt ratione praesentium quos. Beatae consequuntur quibusdam non. Vel voluptatibus quia aspernatur quisquam iusto.<p><p>Sit corporis architecto fugit unde. Itaque adipisci ex unde quia amet vero. Ut quo ut tempore sunt consectetur autem. Ut qui neque earum odit.<p><p>Est odio commodi quia. Aut expedita nihil provident saepe at tempora tempora. Error non quidem doloremque itaque dolores sed.<p><p>Sint quis accusamus quas aperiam quibusdam sapiente ut. Nihil iste quia autem tempora nulla non. Sint voluptas est ut quia unde voluptates.<p><p>Veritatis harum et quos quam reiciendis aut aut. Quasi blanditiis odit ut similique sint consequatur voluptatem. Consequatur nemo atque dolores repellat. Ea et nihil est suscipit.</p>', NULL, '2021-12-01 16:45:18', '2021-12-01 16:45:18', NULL),
(8, 7, 16, 'Eveniet culpa pariatur aut sapiente quam omnis.', 'Temporibus omnis id perferendis necessitatibus.', '<p>Debitis inventore id cupiditate autem quaerat quo omnis. Exercitationem ad qui perferendis id impedit ea consequatur. Nobis consequatur commodi eum qui magnam laboriosam quas.<p><p>Quia delectus consequuntur velit consequatur unde sit. Architecto vel magni deleniti eaque minus laboriosam. Eius totam dolore quo sed. Voluptatem necessitatibus consequatur in adipisci.</p>', '<p>Itaque rerum rerum in laudantium. Voluptatem libero possimus aliquam voluptas sunt. Doloremque molestiae molestiae repellat delectus placeat. Maxime sit molestiae voluptas iste.<p><p>Ex repellat voluptatem ipsum. Dicta eius maiores eum tempora ut dolor saepe. Id odit adipisci similique amet enim odio aperiam.<p><p>Praesentium quo dicta maxime quibusdam quibusdam. Eligendi libero omnis veniam. Velit optio ab soluta aperiam amet eum sit illum. Qui animi voluptas non blanditiis quos rerum in.<p><p>Est id voluptatem incidunt ex omnis. Ut a ut ut. Ipsum ea ad repellat quam sint sit dolores in.<p><p>A porro occaecati temporibus vero et nesciunt consequatur. Suscipit quae vero ipsum dignissimos facere. Quisquam fugiat consectetur dignissimos iure quaerat aliquid. Ab nemo enim quia debitis error cumque recusandae.<p><p>Earum qui nisi aut perspiciatis distinctio. Nemo quaerat eius est. Deleniti necessitatibus recusandae nulla aliquam nihil veniam voluptas. In nihil autem aliquid ut voluptas et harum.</p>', NULL, '2021-12-01 16:45:18', '2021-12-01 16:45:18', NULL),
(9, 8, 17, 'Quidem consequatur enim aut culpa quo veritatis similique.', 'Voluptatem et velit iure iste.', '<p>Perspiciatis officia beatae tenetur fuga maiores. Sapiente magnam voluptatum sed quis occaecati. Delectus quis eius ab et sint vel. Corporis harum et quis voluptatem saepe.<p><p>Distinctio odio ducimus sed ipsum nemo cupiditate qui. Iste deserunt et nisi. Odit explicabo est magni quo. Sunt laudantium non libero consequuntur magni rerum.</p>', '<p>Tempora qui accusantium aliquid id quia aut quas itaque. Cupiditate rerum sunt delectus laborum mollitia consequatur autem. Blanditiis aut esse vel facilis. Nihil voluptatem quo reprehenderit non quaerat consequatur atque debitis. Odit quaerat minima hic dolorum ipsam et.<p><p>Sequi sunt reprehenderit minima quo at consequatur nihil aut. Dignissimos sint modi praesentium non. Minus ut aut aut quis ut.<p><p>Rerum sequi eum vel odit aliquid voluptatem dolor. Placeat eius est aliquid sunt. Expedita cumque libero qui non accusamus. Quia et harum quos illum ut.<p><p>Vel soluta eaque excepturi qui perspiciatis harum officiis incidunt. Non ab laudantium consectetur temporibus minus repudiandae. Ea assumenda non repudiandae recusandae neque eius. Natus et laboriosam vero facilis maxime voluptas.<p><p>Nostrum sint qui consequuntur praesentium quis quaerat quidem mollitia. Delectus similique ut laboriosam et alias architecto aut. Pariatur nulla delectus cumque sunt molestiae id autem qui.<p><p>Repudiandae alias totam cupiditate quam odio est. Odit nam ut labore delectus. Qui et nobis omnis explicabo. Aut vel culpa recusandae quis.</p>', NULL, '2021-12-01 16:45:18', '2021-12-01 16:45:18', NULL),
(10, 9, 18, 'Officia aperiam in et voluptatum provident.', 'Nam consequatur sint unde aut deserunt ipsum.', '<p>Vitae aut impedit soluta ut quia. Omnis aut iusto eos debitis vero. Earum dolor vero harum saepe.<p><p>Ipsa alias in cumque deserunt provident consequatur ut. Eveniet repellendus a et optio aspernatur et labore. Dicta tenetur quasi dolor ut eius illo.</p>', '<p>Esse laudantium similique architecto in beatae hic sed. Aperiam corrupti voluptatem in voluptatem ut aut. Voluptatibus quibusdam voluptates voluptatem voluptatum quam voluptas rerum.<p><p>Qui quis perferendis voluptatibus facere saepe laudantium veniam. Id molestiae quaerat fuga.<p><p>Voluptate nemo nam velit. Pariatur tempora eos veniam ea consequatur et.<p><p>Dolorem sapiente animi facere maxime id delectus in. Et quaerat omnis dolor. Tempore minima aut placeat enim. Labore enim qui fuga quia. Odit corrupti quos sint officia.<p><p>Ullam fuga laudantium necessitatibus et officiis. Quis cumque possimus dolorum vel et quis. Adipisci labore aut asperiores eveniet laborum aut. Omnis alias vel aut.<p><p>Et dolorum id et omnis est molestias excepturi. Aut voluptatem ea accusantium saepe deleniti at. Architecto corporis sed libero ad molestias aut accusantium quam.</p>', NULL, '2021-12-01 16:45:18', '2021-12-01 16:45:18', NULL),
(11, 10, 19, 'Possimus non vero deleniti labore et omnis iure.', 'Aliquid facilis molestias temporibus ad.', '<p>Nihil porro commodi molestiae eaque fuga. Officia sed ut quis tempore et. Impedit necessitatibus at nesciunt porro recusandae nulla enim. Id laboriosam exercitationem aut sunt sed tempora natus.<p><p>Maxime inventore vel rerum. Nobis exercitationem eum aliquam recusandae blanditiis delectus. Omnis et ut aut saepe ipsum. Possimus ipsam eum aut aut. Id accusantium et aut consectetur qui.</p>', '<p>Eos ea iusto incidunt laudantium voluptatem. Qui ut sed atque reprehenderit rerum. Dolore ut molestiae aliquid odio ut. Omnis aliquam id explicabo consequatur et et velit. Corporis dolorem ratione minus debitis assumenda natus consequuntur.<p><p>Dolores sit dolor enim ut. Aut magni rerum ad neque.<p><p>Cum error unde rerum nihil qui. Sapiente amet et libero rerum voluptas. Dolore ipsam molestias eius doloremque reiciendis. Corporis quisquam similique dolore velit quia iste quo voluptatem. Cum voluptas ut molestias fugiat.<p><p>Asperiores incidunt tenetur a consequatur sed perspiciatis in. Ut dolorum recusandae earum. Deleniti repellendus eum consequatur aspernatur pariatur ex aliquid. Dolor error sapiente error consequatur enim eligendi.<p><p>Expedita vitae ipsa perferendis amet voluptatibus quam unde et. Deserunt molestiae sunt ipsum sed dolorem consequatur. Dolore est esse eos perferendis non aliquid provident. Dicta voluptas optio sunt adipisci.<p><p>Nihil doloribus tenetur veritatis ex. Corrupti quasi facere quia nobis. Velit ex quidem corporis et eos quaerat labore. Temporibus ut qui asperiores est et.</p>', NULL, '2021-12-01 16:45:18', '2021-12-01 16:45:18', NULL),
(12, 11, 20, 'Nam quis iste vero.', 'Ipsam quisquam veniam molestiae dolorem sit aspernatur.', '<p>Ullam deserunt est eveniet neque praesentium aliquam rerum. Saepe dolorum ut molestiae numquam. Nobis labore reprehenderit hic est et eos. Sed velit minus optio totam excepturi sit quo.<p><p>Nihil ea provident et dolorem explicabo fugiat vitae. Velit temporibus illo deserunt quo perferendis et. Incidunt id et saepe temporibus quaerat error. Blanditiis eius eum asperiores magni aut ipsam facilis doloremque.</p>', '<p>Ut enim quasi sed culpa sunt voluptatum. Iste animi et harum sequi dolorum. Excepturi et adipisci ex rerum quos commodi unde. Dignissimos exercitationem rerum beatae qui ad perspiciatis.<p><p>Qui qui excepturi est assumenda ea dolor. Nulla iure pariatur et inventore voluptate est velit. Atque tempore laboriosam in. Distinctio sapiente ducimus quia natus quisquam.<p><p>Doloremque sit minima labore dolores. Facilis temporibus laboriosam sed accusamus minus officiis. Expedita mollitia quae quibusdam suscipit rerum consequuntur sapiente. Quas ipsa rerum excepturi cum provident et possimus.<p><p>Enim ut in laboriosam nulla expedita ipsum. Sed architecto quia rerum non. Nihil id voluptatibus tenetur laborum voluptatibus unde ad.<p><p>Cumque odit fugiat aliquid aspernatur incidunt quia sed. Fugiat ea eos aut itaque consequatur exercitationem. Quis dolorem est sit neque itaque facilis qui. Ea aut ut aliquam qui ea omnis odio. Provident illum occaecati et fugiat inventore voluptas sequi.<p><p>Sed accusantium laboriosam aut voluptas ut optio. Adipisci iusto quisquam esse ullam. Voluptatum et sint dolor quasi suscipit perferendis sit in.</p>', NULL, '2021-12-01 16:45:18', '2021-12-01 16:45:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kamal', 'kemobyte', 'kamalkafi12@gmail.com', NULL, '$2y$10$7pLsXOLz/wnbVVUWYZ6iYuMY6VD99TdKEYyIrJc53gUANPp/SEAwG', NULL, '2021-11-30 09:56:31', '2021-11-30 09:56:31'),
(2, 'Dr. Kristoffer Graham DDS', 'sandra.mckenzie', 'rice.lila@example.org', '2021-12-01 16:45:15', '$2y$10$nxETG0spIpuEc11fSeqh8OIkGoH65waegffJrTIFdTS636lKrmU4C', 'xOu0yDgvng', '2021-12-01 16:45:15', '2021-12-01 16:45:15'),
(3, 'Jalen Beahan', 'wilhelm51', 'dawson97@example.com', '2021-12-01 16:45:16', '$2y$10$P55KVxYN8uO8RGGbplIMUOyDpWZhMto./lOW0XOkSLlNy7c7gZ.12', '5ihAY9Ooih', '2021-12-01 16:45:16', '2021-12-01 16:45:16'),
(4, 'Lambert Gerlach', 'abbie.pollich', 'emard.karlee@example.com', '2021-12-01 16:45:16', '$2y$10$UKchQ4bfxM7TDwAq6m9sDej3TeOSjhXEEdAOOw8cARkp0RxpYPlL6', 'H2nE5sf197', '2021-12-01 16:45:16', '2021-12-01 16:45:16'),
(5, 'Prof. Princess Kuhlman Jr.', 'jamarcus98', 'lambert56@example.com', '2021-12-01 16:45:16', '$2y$10$U/nqoYtFIx/GLPUmDs0Diu0JPvmp2kmuHK.WhFef9mX.0rt//7utO', 'UsEIpHOL9g', '2021-12-01 16:45:16', '2021-12-01 16:45:16'),
(6, 'Penelope Gutkowski DVM', 'elian40', 'russell.crooks@example.net', '2021-12-01 16:45:16', '$2y$10$u4ILZsGZGVkoygdivT5jjuIfQ3XsUjjG/7CuFuhXVvSce5ggeuhUC', '5hkDZBLUv3', '2021-12-01 16:45:17', '2021-12-01 16:45:17'),
(7, 'Heather Bailey PhD', 'carlotta.brakus', 'collin.parisian@example.org', '2021-12-01 16:45:17', '$2y$10$zvRzjh9dIpoEjnyKNsRxx.1h3Pwea71u1b6N5pDBxdRTGYLeNo6iy', 'CCPYG3pTrm', '2021-12-01 16:45:17', '2021-12-01 16:45:17'),
(8, 'Logan Buckridge DDS', 'gusikowski.duncan', 'kara35@example.net', '2021-12-01 16:45:17', '$2y$10$ja5gKwnlVMxAugzV4BfP7OyvXozWPRptECN2CLTRqrOqT7Wp9uPPm', 'BTBsIySUDl', '2021-12-01 16:45:17', '2021-12-01 16:45:17'),
(9, 'Henri Bartell', 'walker.elvera', 'kavon78@example.org', '2021-12-01 16:45:17', '$2y$10$wlODmMYd8oUnVw79ZL.6vuyaaDXqEwEmpvtq9u2eas.SmtN9gmFDe', 'vLRwJf9Yc7', '2021-12-01 16:45:17', '2021-12-01 16:45:17'),
(10, 'Emely Barton', 'ritchie.mariano', 'dane.boyer@example.org', '2021-12-01 16:45:17', '$2y$10$px8yuoMV5eN/sD7QHgskT.MMBMp6A3kgzp9pT7aE2kOiB4T0r9eyW', '9MpeOAWCUP', '2021-12-01 16:45:17', '2021-12-01 16:45:17'),
(11, 'Abigale Morar', 'jmills', 'ned.little@example.com', '2021-12-01 16:45:17', '$2y$10$iHW9kb3LrDMeRsPFq3jyKOgDofyN3SeSfAl5pZDhsCCAWchYKJCQC', 'Kb77KBgtwo', '2021-12-01 16:45:18', '2021-12-01 16:45:18'),
(13, 'kemobyte1', 'kemobyte1', 'kemobyte@gmail.com', NULL, '$2y$10$SUyspw8N8Azh2.J02xf5AOysPOD0y4wrutWa3W.etdTTGuIPDDe62', NULL, '2021-12-30 16:10:55', '2021-12-30 16:10:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
