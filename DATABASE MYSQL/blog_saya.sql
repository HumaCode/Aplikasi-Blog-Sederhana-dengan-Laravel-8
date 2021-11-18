-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Nov 2021 pada 11.04
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_saya`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programing', 'web-programing', '2021-11-16 22:18:11', '2021-11-16 22:18:11'),
(2, 'Web Design', 'web-design', '2021-11-16 22:18:11', '2021-11-16 22:18:11'),
(3, 'Personal', 'personal', '2021-11-16 22:18:11', '2021-11-16 22:18:11'),
(4, 'Ethical Hacking', 'ethical-hacking', '2021-11-17 21:29:50', '2021-11-17 21:29:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_13_051728_create_posts_table', 1),
(6, '2021_11_13_064830_create_categories_table', 1),
(7, '2021_11_18_040416_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `exerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'Sunt a consequatur amet et.', 'nesciunt-ad-consequatur-similique-ut-totam', NULL, 'Quia quae ducimus qui eos voluptates. Mollitia omnis deleniti qui est qui.', '<p?>Suscipit architecto aut ut quisquam quisquam inventore quia. Dolores ut id eius consequuntur aut iste. Reiciendis cumque quasi sint neque.</p><p?>Animi dolorum qui eum sit inventore. Et placeat nam nam molestiae consectetur. Quos neque cupiditate voluptatem blanditiis fugit nostrum officiis minima. Quia aliquam blanditiis impedit quae.</p><p?>Magnam a pariatur voluptatibus dicta. Molestiae vel beatae sed accusamus. Repudiandae doloribus quod voluptatibus nihil a quaerat accusamus. Et a nihil ducimus iusto officia quaerat.</p><p?>Aspernatur iste enim suscipit consequatur aut. Molestias in voluptatibus iusto quia asperiores est quae. Vero voluptatem laudantium illum fugit nihil.</p><p?>Non quibusdam nesciunt vero ut qui. Ab porro voluptas a veritatis est. Est nihil ut nam aliquid eos. Ab dolore fuga alias ut animi incidunt velit.</p><p?>Ea voluptas in repellat vitae suscipit sit hic ad. Doloribus corporis corrupti corrupti distinctio.</p><p?>Qui nihil repudiandae nulla sint aut. Consequatur sequi officiis minus assumenda minus. Deleniti est saepe voluptatem hic. Doloribus error et nulla enim harum molestiae.</p><p?>Et laborum temporibus mollitia provident nisi occaecati aut. Nesciunt molestiae sint velit libero omnis eius nihil. Omnis porro praesentium et et atque iusto et voluptatem.</p><p?>Aperiam nemo sed ea voluptas aut aut tenetur. Tempora ratione facere quos rem repellat praesentium illo. Et eaque quae et repellendus totam aliquam consequatur.</p><p?>Et et aliquid est perferendis quia vel. Vitae voluptatem quibusdam est qui consectetur. Ut corporis consequatur est repudiandae placeat. Occaecati voluptatem est quo in consectetur molestiae officiis et.</p>', NULL, '2021-11-16 22:18:11', '2021-11-16 22:18:11'),
(2, 1, 3, 'Molestiae et ratione molestiae expedita molestias earum.', 'nostrum-soluta-odio-sed', NULL, 'Molestiae exercitationem occaecati modi placeat nesciunt beatae enim. Eos dolores est consequatur quia vero.', '<p?>Voluptates maxime autem dolor autem in aut. Odit non dolores molestiae adipisci. Totam repellendus sit tempore sit voluptatibus. Minus ad alias qui quo. Quo et tempore et molestiae praesentium quia.</p><p?>Nemo voluptatem beatae excepturi qui voluptatum. Velit nihil quis aut saepe ut eaque qui.</p><p?>Numquam fugiat magnam suscipit et molestiae. Iusto sint nostrum totam sed adipisci nihil omnis. Animi ut sunt rerum quos nemo deserunt. Sit praesentium eligendi autem deserunt velit et sunt omnis.</p><p?>Accusantium aut repudiandae tempore et vero eveniet. Enim et molestiae nulla cupiditate. A cupiditate et rerum voluptatem assumenda beatae et. Vel iste dignissimos odit in est.</p><p?>Sed quam et velit fugiat sed soluta quasi. Fugiat voluptatem ratione suscipit dolor qui excepturi. Pariatur est ut recusandae eos necessitatibus ut. Vel aperiam ipsam eveniet dolor et.</p><p?>Vel officiis dicta aut corrupti eaque ex occaecati perferendis. Vero fugit velit rem qui eligendi repudiandae qui. Et deserunt quia est ut. Beatae quae et temporibus impedit.</p><p?>Consequatur vel sunt ut voluptatum. Harum dolorum aut ullam. Itaque quidem incidunt quo. Voluptatem necessitatibus voluptatum non eaque.</p>', NULL, '2021-11-16 22:18:11', '2021-11-16 22:18:11'),
(3, 1, 1, 'Est magnam voluptate.', 'aperiam-temporibus-ut-culpa-est', NULL, 'Aut aut natus sed dolor quia. Deleniti accusantium non dolor voluptas voluptates. Aut repellat eos eveniet quis debitis excepturi sunt voluptatibus. Voluptatem animi laborum qui rerum nihil voluptates nihil.', '<p?>Delectus similique voluptatem asperiores vel. Fuga libero in atque amet velit. Aut ut consequatur officia quas rerum. Sit et dolor aut eos.</p><p?>Maiores iste quibusdam eveniet veritatis non aperiam. Quia quae consequatur pariatur. Reiciendis consequatur nesciunt molestias quis sint odio.</p><p?>Et excepturi quaerat non error fugiat. Eligendi consequatur a praesentium mollitia voluptatem porro. Illo optio velit pariatur. Sit officiis est ex sapiente et. Eaque sunt aliquam velit quos doloribus at itaque.</p><p?>Facilis et voluptas dolor ullam culpa adipisci id voluptatibus. Rerum quia occaecati voluptatem repellendus enim. Ut deserunt laborum iste aspernatur hic. Aut voluptatem possimus expedita debitis.</p><p?>Voluptates suscipit ad eos sed iure. Tenetur cum praesentium aut dolorum. Tempore impedit incidunt illo id iste quidem ullam. Eaque eius ipsa iusto fuga quae amet distinctio.</p><p?>In maxime et assumenda animi. Unde enim qui in possimus. Occaecati soluta dicta et accusantium.</p><p?>Et quasi repellat consequatur enim sint quasi sunt. Eaque hic ipsum qui modi aliquam voluptatum rem voluptate. Et deserunt nesciunt velit a eligendi ut sed.</p><p?>Dicta incidunt enim harum eaque quis. Voluptatem quibusdam corrupti non molestiae ad sed vitae. Quibusdam non quis commodi voluptatem nisi voluptatem. Corrupti numquam deleniti ut laudantium asperiores quia minima.</p>', NULL, '2021-11-16 22:18:11', '2021-11-16 22:18:11'),
(4, 1, 1, 'Aut quae velit iste.', 'ratione-beatae-eos-maiores', NULL, 'Tenetur aut laborum quia magnam ea doloribus. Soluta odio incidunt pariatur dolores culpa in. Labore odio vel sint cumque quia qui laboriosam.', '<p?>Amet eaque aliquid laboriosam quis. Voluptatem quam quibusdam provident atque ducimus ut dolorem. Perferendis assumenda incidunt sint optio placeat deserunt error. Neque quas quia iste voluptas reiciendis.</p><p?>Consequuntur provident eum quo id dolore. Voluptate consectetur ipsa esse dolores est magnam iusto dignissimos. Explicabo blanditiis quo et enim. Explicabo culpa et dolores reiciendis praesentium nemo aut.</p><p?>Quo molestias reiciendis saepe sit. Laboriosam et rem atque consequuntur officiis. Quisquam suscipit dolore quia vero. Veniam odit nisi qui hic fuga officiis commodi temporibus.</p><p?>Nostrum et et dolorem ipsum quidem tenetur reiciendis. Ut vero quidem et consequuntur vitae. Sit sint sint et eum qui.</p><p?>Laborum alias non omnis ea. Adipisci perferendis maxime qui qui corporis.</p><p?>Aut vel repudiandae doloribus in vitae et soluta. Qui ratione animi ullam perferendis culpa nam. Quidem odit occaecati sed sed repellendus. Velit dolor ullam sapiente assumenda et aut voluptatem.</p><p?>Nihil ea beatae dicta voluptate dolor quaerat accusamus. Et consequatur et voluptas excepturi earum asperiores eos pariatur. Sunt perspiciatis inventore dolor dolores. Ratione excepturi amet impedit consequuntur ratione iusto eos.</p><p?>Dolores facilis sint dolorem architecto. Molestiae rem tempore sequi modi qui quia quis rerum. Qui accusantium est dolor aut architecto exercitationem. Aliquid ad aut similique ipsa labore et.</p><p?>Deserunt natus nesciunt fuga velit. Vitae architecto qui optio ad ad quae. In libero dignissimos quaerat voluptatum. Temporibus sed modi iusto sed.</p><p?>Veritatis expedita ea explicabo soluta est reprehenderit sit. Non est tenetur recusandae maxime et. Quas laboriosam est qui vitae laboriosam nostrum assumenda sapiente.</p>', NULL, '2021-11-16 22:18:11', '2021-11-16 22:18:11'),
(5, 3, 2, 'Aut et ullam perferendis.', 'tempore-et-tenetur-ea-alias-occaecati-veniam-qui-laudantium', NULL, 'Est dolor quia consequatur et. Eaque excepturi velit cumque laudantium quae voluptatum reprehenderit. Molestiae a error ratione ipsa. Praesentium reiciendis corporis sit voluptatem.', '<p?>Cupiditate ut ratione illo occaecati. Minima non quo natus iste cumque. Libero aliquid soluta nam alias quia id blanditiis. Maxime sit qui quasi et assumenda quas ea eveniet.</p><p?>Eius earum illum qui autem a ab. Distinctio reprehenderit provident qui vel consectetur. Non vero asperiores similique corporis. Sapiente debitis soluta non enim ex recusandae in.</p><p?>Natus deleniti est illum. Quia minus tempora ut. Officia quis nesciunt voluptas optio magni quae. Quod culpa numquam quidem nemo est. Voluptatem quo libero quod.</p><p?>Distinctio velit ea nihil. Ipsum quod et et officia illo. Nulla veritatis voluptates nam rerum vitae eius. Dicta aut autem id fugiat similique quo nihil.</p><p?>Commodi provident iure perferendis ea veniam sit. Atque dicta dolorum nisi pariatur aperiam perspiciatis cumque. Deleniti ex omnis sapiente vero. Fugiat est deserunt voluptas cupiditate distinctio cupiditate minima.</p><p?>Minima labore pariatur placeat nostrum voluptatem. Amet quia voluptatem est. Laudantium et quis iste minus velit qui.</p><p?>Vel tempora aperiam provident libero quam eveniet. Veniam amet est qui saepe illo. Veniam quo amet eos natus eveniet dolores dolorem. Et quas ducimus recusandae aut.</p><p?>Excepturi doloribus quasi et. Amet ab et id ipsam. Perferendis quae asperiores adipisci sed qui commodi quaerat. Dolores ex quis magnam et.</p>', NULL, '2021-11-16 22:18:11', '2021-11-16 22:18:11'),
(6, 2, 2, 'Est debitis.', 'odit-et-non-explicabo-soluta-ut-blanditiis-repellat', NULL, 'Maiores modi quasi quo maxime possimus optio. Qui dignissimos et repudiandae quam aut voluptate ut. Unde eligendi odio non ex est natus.', '<p?>Ex est est nulla aperiam tempore est in. Voluptas accusamus nemo voluptatem sit omnis. Veniam hic eveniet impedit.</p><p?>Quaerat itaque exercitationem voluptas rem earum qui sed. Sit sed repudiandae voluptatem nisi tempora incidunt. Quis officia non fuga omnis in. Aut dignissimos ut ea.</p><p?>Voluptas eligendi similique soluta nesciunt perspiciatis ut excepturi. Ea est voluptatem adipisci aut doloremque. Reiciendis odit est placeat harum qui quibusdam ea. Ipsa sit ut non velit placeat voluptatum et rem.</p><p?>Soluta itaque accusantium facilis consequatur officia necessitatibus illo. Molestiae reiciendis incidunt aperiam inventore maiores laboriosam enim tempora. Nesciunt ipsum natus voluptate aut quod. Sed nihil eos quam reprehenderit.</p><p?>Dolores aperiam rerum tenetur totam aut dolores earum. Id earum dolorum nesciunt est et. Tempora numquam ad qui quas corrupti recusandae.</p><p?>Et eum dolor sint et nobis. Porro quasi sint ea modi qui voluptates. Suscipit cupiditate impedit omnis.</p><p?>Debitis qui dignissimos dolorem nobis rerum sint. Et fugit ut consectetur amet qui. Quibusdam rerum adipisci voluptatum aut libero officiis suscipit. Aut harum quo perspiciatis est consequuntur.</p><p?>Assumenda illum exercitationem dolores culpa illum veniam repudiandae. Ratione dolores possimus voluptate fuga reiciendis.</p>', NULL, '2021-11-16 22:18:11', '2021-11-16 22:18:11'),
(7, 3, 2, 'Eius fugit quia odio quas praesentium ab expedita deleniti.', 'saepe-illum-est-aliquam-est-vero-ipsam', NULL, 'Voluptates facere sit et ab aliquid. Voluptatibus corporis illo cumque sequi officia. Mollitia qui quibusdam aperiam nesciunt esse. Soluta numquam perferendis omnis quibusdam.', '<p?>Doloremque ipsum non et nostrum sit. Non culpa culpa architecto consequatur a quis. Et voluptas laboriosam accusantium excepturi placeat nesciunt.</p><p?>Accusantium rerum vero porro itaque aut pariatur cum. Ipsa excepturi ut molestiae impedit. Architecto quidem id illum vitae amet.</p><p?>In qui qui asperiores. Consequatur placeat officiis est impedit adipisci dolorem. Sunt dolores enim nam.</p><p?>Et dolorem voluptas quo rerum quas. Eius perspiciatis vero et quia vero. Dolores aliquam velit nostrum eligendi pariatur est quia. Aliquam sint incidunt consequuntur delectus enim in commodi.</p><p?>Repudiandae consequatur eaque earum natus cupiditate. Quis tempore rem architecto quo vel. Culpa dolorem culpa qui aut. Velit pariatur cum ducimus debitis molestias veritatis totam.</p><p?>Labore et soluta et hic maxime praesentium. Ipsa ipsum minima quaerat odio sunt velit non. Quia magnam eum quas quia non consequatur sit.</p><p?>Dicta quia voluptatem dolorum voluptas. Dignissimos et eligendi totam velit. Itaque rerum assumenda neque ut qui aperiam. Sit ratione autem impedit maiores quis.</p><p?>Et deleniti magni autem amet. Amet eos non pariatur. Corrupti voluptas veritatis et ullam. Sequi aperiam eum eligendi voluptas eaque dicta.</p><p?>Repellendus odio expedita fuga soluta. Ex vitae non error quia dolorem deleniti porro. Ducimus optio dolores facere culpa ea aspernatur dolor optio.</p>', NULL, '2021-11-16 22:18:11', '2021-11-16 22:18:11'),
(8, 1, 2, 'Aliquid quibusdam perspiciatis tempore occaecati.', 'aut-ea-sit-sit-ducimus', NULL, 'Ut voluptatem accusamus nisi deleniti libero sapiente. Quia magnam consequatur est quidem explicabo culpa. Laudantium praesentium nobis aspernatur et. Omnis sit illo vel nobis at magni dolorem.', '<p?>Molestias est officiis alias nostrum aut. Minima ullam velit enim ipsa optio aspernatur et. Nihil libero molestiae cupiditate. Dolorem quia praesentium et tempora corrupti.</p><p?>Amet qui explicabo labore dicta nobis sed. Architecto quae a omnis ipsam illum et voluptatem. Fugit aperiam nam dolor. Aut blanditiis sed sit aut fugit.</p><p?>Aut cupiditate nihil nulla vel facilis excepturi. Natus corporis unde voluptates harum id fuga dolor. Et dignissimos aut sit non. Fuga consequuntur itaque aut doloribus.</p><p?>Autem ab ad dolorem aut qui ratione. Dicta assumenda perferendis sint blanditiis aut reiciendis eos. Voluptates corporis velit placeat minima dolor esse saepe. Eligendi repellendus eveniet quas ducimus aliquid. Amet qui aliquid consectetur corporis.</p><p?>Alias saepe ipsam quod assumenda non. Vero voluptas quis quasi. Illo autem sunt ea minima rem.</p><p?>Quibusdam dignissimos similique et eos cupiditate aut eaque. Animi modi ipsam quam soluta aperiam. Eum et placeat veritatis et similique accusantium.</p><p?>Quis cum molestiae fuga mollitia est. Numquam consequatur possimus perferendis necessitatibus distinctio repellendus. Laudantium adipisci ipsa tempore saepe. Quis consequatur suscipit cupiditate quos quas amet dolorem consequatur.</p>', NULL, '2021-11-16 22:18:11', '2021-11-16 22:18:11'),
(9, 1, 1, 'Omnis aut magnam et sit explicabo iure.', 'assumenda-assumenda-natus-et-qui', NULL, 'Nisi perspiciatis quo necessitatibus officia eum. Et ea omnis consequuntur est. Omnis ad impedit quam modi. Minima omnis voluptates praesentium sint nam inventore ut.', '<p?>Qui voluptatem voluptas eos reiciendis omnis tenetur. Corrupti eum officiis mollitia assumenda laborum. Debitis qui et qui consequuntur officiis exercitationem veniam quia.</p><p?>Non natus dolorum pariatur fuga autem sit. Asperiores ex neque ut dolore iste provident sapiente. Cupiditate consequatur in ut possimus sint unde alias autem. Et sed excepturi eum.</p><p?>Autem esse minus iste voluptas sequi accusamus. Quis aut aut voluptatem id consectetur quia.</p><p?>Ut alias error dignissimos molestiae fugit. Sed ipsa error architecto voluptas qui qui. Aperiam quaerat non quo incidunt ab. Similique voluptatibus quia placeat eaque deleniti.</p><p?>Aperiam tempora aut aliquam libero. Qui debitis nostrum voluptatem.</p><p?>Sit iusto et sit voluptatem rem laborum minus est. Saepe accusantium quaerat qui nulla. Voluptas voluptatum possimus veritatis consequatur laudantium. Autem non qui modi quasi qui pariatur.</p><p?>Neque ratione tenetur ex harum ea saepe facilis id. Eum odio consequatur quae sunt ea saepe quis. Necessitatibus perspiciatis est qui voluptates blanditiis asperiores.</p><p?>Quo voluptates non ullam voluptatem. Ipsam ut itaque et dolorem ea in. In debitis modi voluptatem consequatur. Qui nam accusamus soluta adipisci.</p>', NULL, '2021-11-16 22:18:11', '2021-11-16 22:18:11'),
(10, 3, 2, 'Sed quaerat autem assumenda velit velit atque.', 'et-natus-minima-voluptatem-qui-ut-reprehenderit', NULL, 'Quia aut quisquam hic perferendis autem. Sed aut quis quisquam. Ducimus velit fugiat est omnis.', '<p?>Est a quia saepe minima culpa. Blanditiis ut voluptate officia consectetur voluptatum placeat. Commodi amet qui adipisci incidunt.</p><p?>Adipisci occaecati tempore velit expedita est consequuntur dicta dolorem. Nesciunt ut veniam ratione magnam minus. Sunt vero saepe libero laboriosam.</p><p?>Est deleniti commodi aliquid expedita quia molestias. Architecto id totam exercitationem totam consequatur. Laborum reprehenderit consequuntur quia nemo error beatae quis.</p><p?>Ea inventore et esse. Ipsam vero non dolore veniam. Iure ea totam illo non. Tempore quia maxime quo.</p><p?>Cupiditate alias enim esse magnam. Ea libero sunt quaerat maxime dicta reprehenderit odio. Accusantium et non velit quas earum rerum repellat. Enim et eos maxime ducimus omnis quia labore rem.</p><p?>Veritatis consequatur quis dicta atque et qui. Et et cum fuga omnis. Harum et deleniti nam velit amet.</p><p?>Neque facilis pariatur esse sequi doloribus. Quasi laborum fuga error consequatur illum ipsam. Ut consequatur voluptas ipsum et.</p>', NULL, '2021-11-16 22:18:11', '2021-11-16 22:18:11'),
(11, 3, 2, 'Quo consequatur et dolores est et sed.', 'et-nostrum-qui-culpa-dolorem-accusamus-dignissimos-sit', NULL, 'Laboriosam neque nisi reiciendis temporibus impedit. Optio fuga tenetur ea qui eum consequatur et autem. Dignissimos sit fugit assumenda ea. Nemo eius corporis id fugit. Iure pariatur dolorum dolor.', '<p?>Alias a laboriosam blanditiis harum. Qui aut quas alias ut iure occaecati provident. Dolores unde eum voluptatum ut vel ipsam eius.</p><p?>Tempora mollitia dolorum quas voluptatem. Autem quam quo excepturi aut et ut necessitatibus. Sunt veritatis unde placeat aut debitis.</p><p?>Dicta velit illo ut. Porro voluptatem similique voluptatem illo.</p><p?>Nobis nihil minus ipsum dicta sequi in. Voluptatibus neque enim nemo voluptate sed.</p><p?>Corporis illo eligendi ad sed inventore. Magnam quaerat eum rerum facere. Qui dolor totam praesentium porro aut.</p>', NULL, '2021-11-16 22:18:11', '2021-11-16 22:18:11'),
(12, 3, 2, 'Sed quae dolorum qui.', 'sunt-earum-placeat-eius-et-quibusdam-labore', NULL, 'Excepturi fugiat blanditiis officiis maiores laboriosam aut voluptatem quia. Doloremque suscipit laudantium consequatur aspernatur qui consequatur. Nihil consequatur qui doloremque. Rerum molestiae quisquam maiores a ut iure omnis.', '<p?>Molestiae perspiciatis itaque amet aut. Non non qui nihil omnis non. Repellat cumque et quis nam sed ut debitis.</p><p?>Unde officiis est velit exercitationem. Quis esse incidunt laborum possimus repellendus aut ducimus tempore. Labore aut ipsa consectetur non et rerum. Sint et facilis enim.</p><p?>Non esse saepe dolores molestiae. Voluptates cum velit sequi.</p><p?>Dolor quas excepturi quia nesciunt. Porro et quia praesentium veniam. Fuga adipisci repellat qui facilis animi qui.</p><p?>Et fugit sit sunt accusantium earum praesentium. Molestiae et aut aut eum officia eaque. Enim omnis molestiae aut laborum dolor est nesciunt possimus. Id repellat enim totam officiis non.</p>', NULL, '2021-11-16 22:18:11', '2021-11-16 22:18:11'),
(13, 3, 3, 'Cumque eveniet in qui officiis qui itaque voluptatem culpa.', 'et-et-non-nihil-sint', NULL, 'Quis est qui eius quas. Tempora quo voluptate distinctio fugiat nihil.', '<p?>Tenetur sit earum aut perferendis. Omnis ut cupiditate voluptatem voluptas eos voluptas natus. Alias voluptas molestiae voluptatem ullam soluta vero. Non sint enim molestiae eos corporis distinctio iure.</p><p?>Consequuntur excepturi dolorem magnam vero libero. Non quo quidem officia quos sint quasi harum velit. Alias sit ea adipisci necessitatibus totam velit.</p><p?>Ut nostrum enim adipisci maxime ut. Voluptatem rem ratione autem voluptas quo ut. Quod consequatur nihil omnis similique sunt. Et aut omnis recusandae.</p><p?>Atque non veritatis in quod sint veniam illo. Dolorum ut ullam dolorem soluta. Alias ea sed soluta ut ipsa et et.</p><p?>Provident dolorem eos placeat quisquam nam reiciendis. Ullam optio praesentium qui dolore qui. Et nam provident suscipit incidunt.</p><p?>Inventore dolorem iste et iste veritatis est voluptatem ad. Repudiandae aspernatur corporis eos corporis sed. Non et optio vero dolor. Illum officiis iure odio iste ipsam.</p><p?>Quia reiciendis possimus quam sed. Consequatur harum eum mollitia exercitationem et rem. Velit molestiae architecto aut dolorum error fugiat.</p><p?>Itaque eligendi eaque quae occaecati eligendi. Voluptate laborum labore sint quasi omnis labore.</p><p?>Deleniti amet culpa veritatis ab ullam in. Ut necessitatibus architecto molestiae tenetur quo qui recusandae.</p>', NULL, '2021-11-16 22:18:11', '2021-11-16 22:18:11'),
(14, 2, 3, 'Autem ea cupiditate nemo et.', 'sint-dolor-praesentium-aut-exercitationem-labore-quibusdam-ipsum-ducimus', NULL, 'Sit at aliquid enim. Occaecati molestias laudantium repudiandae. Aut soluta eum quia.', '<p?>Blanditiis et modi repellendus similique rerum iure eos. Autem sit assumenda quidem veritatis. Et in optio consectetur consequatur reiciendis id. Quibusdam dignissimos expedita illo facere quisquam nihil expedita. Consequatur rem vel vero magni.</p><p?>At occaecati error ab odit voluptatem consequatur. Nobis neque in et maxime qui nostrum et pariatur. Culpa sit et inventore nesciunt magni quisquam et. Non expedita tempore soluta ullam culpa consectetur voluptatum.</p><p?>Quae et esse sed autem amet repudiandae dolorum laboriosam. Aut illum repellat velit rem ipsam. A eaque rem repudiandae deserunt quia delectus molestias nihil. Labore eos quae dolorum.</p><p?>Dolores esse nobis enim et aspernatur placeat eos. Iusto natus iste ipsam voluptatem. Dolorem aliquam reprehenderit molestias corporis tenetur dicta ratione. Cum excepturi et maiores voluptatem incidunt voluptatem et.</p><p?>Quisquam aperiam sint dolorem est aut iure omnis. Velit et sed aliquid. Quia voluptas quis nihil earum sed ipsum adipisci cum.</p><p?>Omnis et qui quidem. Ut aut dolorem corporis laudantium esse. Nobis sed aperiam eos et ut. Id sed sit ex beatae qui suscipit.</p><p?>Odit et laudantium eveniet velit. Doloremque porro natus facilis dolorem accusamus non facilis aut. Eos quis excepturi ipsum ducimus unde illum perspiciatis.</p><p?>Ad minus est accusamus provident. Soluta ad voluptatum culpa nostrum. Repellat nulla reiciendis quasi quo et nisi ut.</p><p?>Fugit minus beatae aliquam ut. Soluta aut velit unde dolorem.</p>', NULL, '2021-11-16 22:18:12', '2021-11-16 22:18:12'),
(15, 2, 2, 'Et qui voluptatem non dignissimos sed.', 'dolorum-iure-odio-culpa-eos-nulla-provident', NULL, 'Quod et quia sit sed qui sed. Eum ipsum quas iste quas. Aut tempore unde et est. Et tempora est placeat sunt qui ad quis et.', '<p?>Assumenda eum voluptatibus praesentium voluptate minima totam. Magni nobis et quia beatae reiciendis. Blanditiis iusto asperiores quidem expedita error voluptas assumenda.</p><p?>Voluptatem qui blanditiis quia sunt soluta. Praesentium est qui sed veritatis eos qui. Hic sit consequatur sed consequatur reprehenderit. Dolorem recusandae ea maxime.</p><p?>Qui et aspernatur voluptatem quis fugiat. Ipsum ut placeat voluptate alias magni. Repellendus voluptas magnam facere consequatur.</p><p?>Cum eum vitae quaerat dignissimos et ea asperiores. Omnis sunt delectus ut placeat vel nostrum optio. Velit rerum assumenda rerum quod qui.</p><p?>Et et aperiam et beatae nemo qui officia. Exercitationem ipsam velit non dicta iusto possimus qui. Distinctio iure sint impedit quasi sed. Blanditiis mollitia est officia aut minus sint ad amet.</p><p?>Et sit omnis tempora ut. Eaque sunt ratione qui deserunt nesciunt dolorem ipsum. Minima suscipit nostrum quos quo saepe ut voluptas.</p>', NULL, '2021-11-16 22:18:12', '2021-11-16 22:18:12'),
(16, 2, 1, 'Perspiciatis dolorum ratione soluta.', 'et-corrupti-qui-qui-quo', NULL, 'Iure voluptas consequatur itaque neque voluptatum provident. Ex et veniam distinctio odio dolores vero neque sit. Sed molestias qui tempore sit veritatis enim. Maiores commodi fugiat dolor incidunt. Quia nulla consequatur atque.', '<p?>Iure iusto qui illum adipisci. Et nihil ut dolore dolores at. Et et enim et totam. Eos impedit temporibus totam aut similique unde voluptatem.</p><p?>Delectus sint qui qui rerum ut. Consequatur maxime rerum nihil ad. Commodi accusantium dignissimos id itaque neque rerum qui. Non repellat numquam in omnis recusandae sunt temporibus.</p><p?>Veritatis cupiditate facere omnis amet sapiente. Voluptatem non voluptas omnis adipisci aut est. Quia nisi deleniti pariatur corrupti.</p><p?>Id voluptas veniam asperiores. Inventore cum nihil quo aut. Qui et repudiandae tenetur voluptatem quam nostrum qui. Dicta ad magni id eius dignissimos aut assumenda.</p><p?>Molestiae ratione molestiae rerum illum quidem soluta. Temporibus doloremque et consequuntur expedita. Vitae harum dolores laboriosam et. Unde voluptatum hic eum et.</p><p?>Odio eius qui cumque animi est. Accusamus eaque rem ut maxime voluptatem necessitatibus et. Delectus tempora quam exercitationem quia vero necessitatibus vel amet.</p><p?>Modi veritatis sint sed illo eum. Molestiae ratione libero deleniti mollitia voluptate est. Eligendi et laborum non suscipit ut officiis aut.</p><p?>Unde saepe et officia. Qui provident dolores suscipit in omnis. Autem repudiandae nam officia magni delectus aut. Quasi fuga porro eius quasi iste.</p><p?>Corporis dolores est quo unde. Rerum provident nihil consequatur ut velit. Dolores eaque consequatur dolorem ut eum. Totam est amet soluta at optio.</p><p?>Dolor quam velit soluta voluptatibus harum qui et. Autem iste corrupti nemo error praesentium voluptas laudantium. Necessitatibus ex consequatur animi rerum corrupti dolores ipsum.</p>', NULL, '2021-11-16 22:18:12', '2021-11-16 22:18:12'),
(17, 3, 1, 'Blanditiis aut provident placeat beatae non fugiat.', 'ut-rerum-similique-doloribus-pariatur-rerum-repellendus', NULL, 'Ipsum provident incidunt ut provident et qui consequatur rerum. Nulla quis voluptatibus quia voluptatum. Optio accusamus dolorem nesciunt totam rem sint.', '<p?>Quod explicabo excepturi libero at nihil. Nam laborum quam et qui quibusdam. Non animi possimus ea nam ipsam consequuntur.</p><p?>Molestiae expedita esse quae quos laboriosam vel rem. Vel dolor fugiat ratione officiis impedit vero. Ut architecto aut temporibus aliquam. Est quos dolorem quia adipisci recusandae unde fugit.</p><p?>Voluptas eum qui voluptate necessitatibus ut. Esse cum molestias corporis non eos. Quia laboriosam repudiandae excepturi sed rerum magnam.</p><p?>Perspiciatis ut perferendis deserunt nam quis illo. Quis praesentium tempore et voluptatem. Voluptate aliquam dolorem et facilis. Dolores deserunt qui veniam esse praesentium molestias.</p><p?>Quod a quae provident quia animi sunt nulla. Molestiae impedit doloribus tempora et facilis dolorem atque. Ipsa aut debitis accusamus. Quisquam earum quod aut architecto. Laboriosam quae animi aut velit saepe.</p><p?>Porro voluptas expedita voluptatem quia voluptas molestias a ex. Sit suscipit perspiciatis porro voluptate officiis eligendi debitis. Nesciunt eius eaque culpa fuga.</p>', NULL, '2021-11-16 22:18:12', '2021-11-16 22:18:12'),
(18, 3, 1, 'Tempora saepe excepturi et.', 'minima-et-quam-cum-quod-cum-beatae-veritatis-vel', NULL, 'Accusantium quia nostrum suscipit magnam ut. Adipisci cupiditate beatae accusantium quibusdam. Enim sunt veritatis nemo perspiciatis sed possimus. Sint tempore qui odio.', '<p?>Consequatur molestiae repudiandae quia vel quis expedita. Eum ut voluptatum ratione sint enim id asperiores. Dolores quod exercitationem voluptatibus ullam illo neque mollitia.</p><p?>Quo quidem sequi quia voluptatem qui quam tempore tenetur. Numquam rerum culpa vero quis. Fugiat esse accusamus eveniet voluptatem. Quos voluptatem voluptatem consequatur esse excepturi eum.</p><p?>Nesciunt aliquam rerum consequatur quo pariatur molestias. A aperiam odio vel.</p><p?>Est voluptatem vero molestiae impedit qui excepturi maxime. Ipsam similique placeat et et optio exercitationem. Magnam porro qui molestiae libero est labore.</p><p?>Dolores error id saepe. Hic ut reiciendis ut neque. Aut quas architecto eius nesciunt itaque aliquid. Non aut commodi quo aliquam nulla neque unde.</p><p?>Id cumque ut magni veritatis iure. Delectus consequatur expedita alias corrupti sit omnis. Earum porro fugiat ratione architecto.</p><p?>Tenetur aut doloremque ex nostrum eaque itaque nam. Placeat exercitationem sit et laudantium itaque. Aut sed doloremque consequatur vero. Molestias autem vel fugit facilis autem.</p><p?>Aliquam et velit nobis repellat neque quos. Accusamus deserunt voluptatum ea. Quos nobis provident nam ratione ipsa aut quas voluptas. Sunt aliquid eum quisquam accusamus et.</p>', NULL, '2021-11-16 22:18:12', '2021-11-16 22:18:12'),
(19, 2, 2, 'Consectetur rerum veritatis dolore qui.', 'sunt-excepturi-sunt-enim-sit-dolor-dolores', NULL, 'Quidem quod est aliquam aspernatur omnis perferendis ipsam. Fugiat et voluptas est repellat omnis illo. Omnis dolores dolore et non. Sint voluptatem quia fugit omnis inventore voluptate eum.', '<p?>Ut est ratione et excepturi magnam nostrum nostrum. Quam animi quisquam sint pariatur. Sunt omnis quidem impedit natus fuga. Numquam voluptas quibusdam natus iusto voluptatum quo.</p><p?>Voluptas fugit iure ut reiciendis sit laborum. Cum et blanditiis ea voluptas consequatur et dolor ducimus. Qui modi aliquid velit. Ducimus quam voluptatem voluptates voluptatibus est.</p><p?>Nihil sint atque sed autem. Hic dignissimos eveniet totam.</p><p?>Ipsum est ducimus quas provident doloremque. Et sit fuga vel aut quia. Veniam facere aut totam incidunt pariatur exercitationem.</p><p?>Perspiciatis voluptas iusto rerum provident voluptate. Dolores et nisi recusandae ipsa rem. Eveniet distinctio et in ut veniam. Molestiae aut quia mollitia labore id.</p><p?>Quia ut corrupti amet sint et inventore assumenda. Quasi porro molestias odit laudantium sit necessitatibus et. Alias ipsa neque eum aut eum ea et. Voluptatem eius inventore impedit.</p><p?>Aut culpa placeat ut voluptate velit. Quasi libero ratione rerum ipsum non nisi. Culpa eligendi id cum cumque amet. Fugiat voluptatum voluptatem est velit.</p>', NULL, '2021-11-16 22:18:12', '2021-11-16 22:18:12'),
(20, 1, 1, 'Magni voluptatem.', 'omnis-eos-officiis-consequatur-explicabo-esse-tempora-quia', NULL, 'Hic repudiandae officiis tenetur vero voluptatum esse qui. Modi culpa voluptatem vel voluptatem. Sint ut id quis distinctio ut.', '<p?>Consequatur soluta dolorem sit aut et. Voluptatem maiores consectetur iure autem nihil et. Repellendus alias amet ipsam quo.</p><p?>Voluptas adipisci beatae animi natus. Odit quas error laudantium quia qui deserunt. In reprehenderit aliquid eum id beatae.</p><p?>Quisquam sit est et sequi ducimus et. Suscipit doloribus id rerum quidem velit aut deleniti. Saepe eius asperiores labore facere nesciunt est. Saepe animi quae nam ut.</p><p?>Cum numquam laboriosam veritatis dolor adipisci. Et odit quasi qui incidunt velit dolor. Eveniet dolor quia quos veniam nesciunt consequatur omnis. Et omnis quibusdam voluptatem sequi dolorum aut.</p><p?>Nihil dicta ratione animi voluptas maiores hic quas. Voluptatem porro ad omnis molestias voluptatem quia. Nihil magnam aut accusamus voluptatem necessitatibus. Saepe dicta error qui exercitationem ut minima.</p><p?>Ad laborum adipisci veniam quod voluptate omnis. Assumenda laudantium qui rerum omnis sed.</p><p?>Adipisci asperiores esse corporis voluptatem quia sed est. Distinctio quisquam est deleniti suscipit iusto. Eum eius in perspiciatis. Sequi consequuntur est distinctio fuga itaque dolorem.</p>', NULL, '2021-11-16 22:18:12', '2021-11-16 22:18:12'),
(21, 3, 1, 'Post Baru Saya', 'post-baru-saya', 'post-image/15DC86QWG3oz9mbYm2gqaqDRRA8UhgXK2fj8oyXg.jpg', 'Gambar Pemandangan&nbsp;', '<div>Gambar Pemandangan&nbsp;</div>', NULL, '2021-11-16 22:39:01', '2021-11-16 22:39:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Humaidi Zakaria', 'humaidi', 'amirzakaria98@gmail.com', NULL, '$2y$10$GrbXRzSoHYWNXgCBcMzJ3.lCTJRTKsi/K8EmoNRTCF8TXl0JwLMtO', NULL, '2021-11-16 22:18:09', '2021-11-16 22:18:09', 1),
(2, 'Warji Estiono Kuswoyo S.Ked', 'safitri.cemeti', 'knashiruddin@example.com', '2021-11-16 22:18:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'U8cGstBmDErLAjLHrAi2gKGHUQAASILUR6WLxtfkDke7WFlMZXWsUwEyJxkg', '2021-11-16 22:18:10', '2021-11-16 22:18:10', 0),
(3, 'Najib Prasetya M.Farm', 'rini.lestari', 'among45@example.com', '2021-11-16 22:18:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1LOtAlW8da', '2021-11-16 22:18:10', '2021-11-16 22:18:10', 0),
(4, 'Mahesa Wacana', 'ihidayat', 'ayu.pratama@example.org', '2021-11-16 22:18:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3OJSB0Gx4V', '2021-11-16 22:18:11', '2021-11-16 22:18:11', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
