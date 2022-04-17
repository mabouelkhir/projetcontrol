-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 18 avr. 2022 à 01:21
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `control1`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(2, NULL, 1, 'Category 2', 'category-2', '2022-04-01 15:28:21', '2022-04-01 15:28:21');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 1, 1, 0, 0, 0, '{}', 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '{}', 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(72, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(73, 8, 'nom', 'text', 'Nom de specialite', 0, 1, 1, 1, 1, 1, '{}', 2),
(74, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(75, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(91, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(92, 10, 'Type', 'text', 'Type', 0, 1, 1, 1, 1, 1, '{}', 2),
(94, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(95, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(98, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(99, 1, 'two_factor_secret', 'text', 'Two Factor Secret', 0, 1, 1, 1, 1, 1, '{}', 8),
(100, 1, 'two_factor_recovery_codes', 'text', 'Two Factor Recovery Codes', 0, 1, 1, 1, 1, 1, '{}', 9),
(101, 1, 'two_factor_confirmed_at', 'timestamp', 'Two Factor Confirmed At', 0, 1, 1, 1, 1, 1, '{}', 10),
(102, 1, 'prenom', 'text', 'Prenom', 0, 1, 1, 1, 1, 1, '{}', 15),
(103, 1, 'photo', 'image', 'Photo', 0, 1, 1, 1, 1, 1, '{}', 16),
(104, 1, 'cin', 'text', 'Cin', 0, 1, 1, 1, 1, 1, '{}', 17),
(105, 1, 'drpp', 'text', 'Drpp', 0, 1, 1, 1, 1, 1, '{}', 18),
(106, 1, 'date_recrutement', 'date', 'Date Recrutement', 0, 1, 1, 1, 1, 1, '{}', 19),
(107, 1, 'tel', 'text', 'Tel', 0, 1, 1, 1, 1, 1, '{}', 20),
(108, 1, 'naissance', 'date', 'Naissance', 0, 1, 1, 1, 1, 1, '{}', 21),
(109, 1, 'prof_ensaj', 'checkbox', 'Prof Ensaj', 0, 1, 1, 1, 1, 1, '{\"on\":\"OUI\",\"off\":\"NON\",\"checked\":true}', 22),
(110, 1, 'specialite', 'text', 'Specialite', 0, 1, 1, 1, 1, 1, '{}', 23),
(111, 1, 'structure_de_recherche', 'text', 'Structure De Recherche', 0, 1, 1, 1, 1, 1, '{}', 24),
(112, 1, 'directeur_structure', 'text', 'Directeur Structure', 0, 1, 1, 1, 1, 1, '{}', 25),
(113, 1, 'dossier', 'text', 'Dossier', 0, 1, 1, 1, 1, 1, '{}', 26),
(114, 1, 'user_belongsto_dossier_relationship', 'relationship', 'dossiers', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Dossier\",\"table\":\"dossiers\",\"type\":\"belongsTo\",\"column\":\"dossier\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 27),
(116, 1, 'user_belongsto_specialite_relationship', 'relationship', 'specialites', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Specialite\",\"table\":\"specialites\",\"type\":\"belongsTo\",\"column\":\"specialite\",\"key\":\"nom\",\"label\":\"nom\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 28),
(118, 10, 'etat', 'radio_btn', 'Etat', 0, 1, 1, 1, 0, 0, '{\"default\":\"en attent\",\"options\":{\"valide\":\"valide\",\"en attent\":\"en attent\",\"non valide\":\"non valide\",\"checked\":true}}', 6),
(120, 10, 'dossier', 'file', 'Dossier', 0, 1, 1, 1, 1, 1, '{}', 3),
(122, 10, 'dossier_belongsto_user_relationship', 'relationship', 'users', 0, 0, 0, 0, 0, 0, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"name\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(123, 10, 'user_id', 'text', 'Nom du Professeur', 0, 1, 1, 0, 0, 0, '{}', 7),
(124, 1, 'user_belongsto_specialite_relationship_1', 'relationship', 'specialites', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Specialite\",\"table\":\"specialites\",\"type\":\"belongsTo\",\"column\":\"specialite\",\"key\":\"nom\",\"label\":\"nom\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 29);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-04-01 15:28:20', '2022-04-15 04:36:32'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-04-01 15:28:20', '2022-04-17 17:28:30'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(8, 'specialites', 'specialites', 'Specialite', 'Specialites', 'voyager-company', 'App\\Specialite', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-04-01 16:04:08', '2022-04-01 16:04:08'),
(10, 'dossiers', 'dossiers', 'Dossier', 'Dossiers', 'voyager-folder', 'App\\Dossier', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":\"currentUser\"}', '2022-04-13 18:03:35', '2022-04-17 18:42:41');

-- --------------------------------------------------------

--
-- Structure de la table `dossiers`
--

CREATE TABLE `dossiers` (
  `id` int(10) UNSIGNED NOT NULL,
  `Type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dossier` blob DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `etat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `dossiers`
--

INSERT INTO `dossiers` (`id`, `Type`, `dossier`, `created_at`, `updated_at`, `etat`, `user_id`) VALUES
(13, 'Scientifique', 0x5b7b22646f776e6c6f61645f6c696e6b223a22646f7373696572735c5c417072696c323032325c5c3954546a514f516b6c474c55434645714b4f49352e6a7067222c226f726967696e616c5f6e616d65223a224d656e74616c2d5374726f6e672d576f6d656e2d6d696e2e6a7067227d5d, '2022-04-17 17:45:00', '2022-04-17 18:44:28', 'en attent', 'mohamed'),
(14, 'Pédagogique', 0x5b7b22646f776e6c6f61645f6c696e6b223a22646f7373696572735c5c417072696c323032325c5c714b645a6b4948587646414851566172734c67632e6a706567222c226f726967696e616c5f6e616d65223a224c4f474f312e6a706567227d5d, '2022-04-17 18:47:35', '2022-04-17 18:47:35', NULL, 'Lachgar'),
(15, 'Pédagogique', 0x5b7b22646f776e6c6f61645f6c696e6b223a22646f7373696572735c5c417072696c323032325c5c346b7a4b4939597330454f657445386f544154632e706e67222c226f726967696e616c5f6e616d65223a226169736c6f676f2e706e67227d5d, '2022-04-17 18:49:29', '2022-04-17 18:49:29', NULL, 'mohamed'),
(16, 'Pédagogique', 0x5b7b22646f776e6c6f61645f6c696e6b223a22646f7373696572735c5c417072696c323032325c5c377239554e4e7745797465506d487a6c4a477a332e6a706567222c226f726967696e616c5f6e616d65223a224c4f474f2e6a706567227d5d, '2022-04-17 18:50:00', '2022-04-17 18:51:02', 'valide', 'mohamed');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-04-01 15:28:20', '2022-04-01 15:28:20');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-04-01 15:28:20', '2022-04-01 15:28:20', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2022-04-01 15:28:20', '2022-04-15 21:56:57', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2022-04-01 15:28:20', '2022-04-01 15:28:20', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2022-04-01 15:28:20', '2022-04-01 15:28:20', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2022-04-01 15:28:20', '2022-04-15 21:56:57', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-04-01 15:28:20', '2022-04-15 21:56:57', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2022-04-01 15:28:20', '2022-04-15 21:56:57', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-04-01 15:28:20', '2022-04-15 21:56:57', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-04-01 15:28:20', '2022-04-15 21:56:57', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 9, '2022-04-01 15:28:20', '2022-04-15 21:57:17', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 7, '2022-04-01 15:28:21', '2022-04-15 21:56:57', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 5, '2022-04-01 15:28:21', '2022-04-15 21:56:57', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 6, '2022-04-01 15:28:21', '2022-04-15 21:56:57', 'voyager.pages.index', NULL),
(15, 1, 'Specialites', '', '_self', 'voyager-company', NULL, NULL, 10, '2022-04-01 16:04:08', '2022-04-16 00:07:27', 'voyager.specialites.index', NULL),
(17, 1, 'Dossiers', '', '_self', 'voyager-folder', NULL, NULL, 11, '2022-04-13 18:03:35', '2022-04-16 00:07:27', 'voyager.dossiers.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(29, '2014_10_12_200000_add_two_factor_columns_to_users_table', 3),
(30, '2022_04_07_114422_create_sessions_table', 3);

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2022-04-01 15:28:21', '2022-04-01 15:28:21');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('mohamedabouelkhir34@gmail.com', '$2y$10$aERevL0.X5XNexA9efm8Wu30gJC7allJyoFalgQ.SS6MMkQ/KWirO', '2022-04-15 16:45:36');

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(2, 'browse_bread', NULL, '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(3, 'browse_database', NULL, '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(4, 'browse_media', NULL, '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(5, 'browse_compass', NULL, '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(6, 'browse_menus', 'menus', '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(7, 'read_menus', 'menus', '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(8, 'edit_menus', 'menus', '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(9, 'add_menus', 'menus', '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(10, 'delete_menus', 'menus', '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(11, 'browse_roles', 'roles', '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(12, 'read_roles', 'roles', '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(13, 'edit_roles', 'roles', '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(14, 'add_roles', 'roles', '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(15, 'delete_roles', 'roles', '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(16, 'browse_users', 'users', '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(17, 'read_users', 'users', '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(18, 'edit_users', 'users', '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(19, 'add_users', 'users', '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(20, 'delete_users', 'users', '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(21, 'browse_settings', 'settings', '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(22, 'read_settings', 'settings', '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(23, 'edit_settings', 'settings', '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(24, 'add_settings', 'settings', '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(25, 'delete_settings', 'settings', '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(26, 'browse_categories', 'categories', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(27, 'read_categories', 'categories', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(28, 'edit_categories', 'categories', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(29, 'add_categories', 'categories', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(30, 'delete_categories', 'categories', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(31, 'browse_posts', 'posts', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(32, 'read_posts', 'posts', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(33, 'edit_posts', 'posts', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(34, 'add_posts', 'posts', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(35, 'delete_posts', 'posts', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(36, 'browse_pages', 'pages', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(37, 'read_pages', 'pages', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(38, 'edit_pages', 'pages', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(39, 'add_pages', 'pages', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(40, 'delete_pages', 'pages', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(46, 'browse_specialites', 'specialites', '2022-04-01 16:04:08', '2022-04-01 16:04:08'),
(47, 'read_specialites', 'specialites', '2022-04-01 16:04:08', '2022-04-01 16:04:08'),
(48, 'edit_specialites', 'specialites', '2022-04-01 16:04:08', '2022-04-01 16:04:08'),
(49, 'add_specialites', 'specialites', '2022-04-01 16:04:08', '2022-04-01 16:04:08'),
(50, 'delete_specialites', 'specialites', '2022-04-01 16:04:08', '2022-04-01 16:04:08'),
(56, 'browse_dossiers', 'dossiers', '2022-04-13 18:03:35', '2022-04-13 18:03:35'),
(57, 'read_dossiers', 'dossiers', '2022-04-13 18:03:35', '2022-04-13 18:03:35'),
(58, 'edit_dossiers', 'dossiers', '2022-04-13 18:03:35', '2022-04-13 18:03:35'),
(59, 'add_dossiers', 'dossiers', '2022-04-13 18:03:35', '2022-04-13 18:03:35'),
(60, 'delete_dossiers', 'dossiers', '2022-04-13 18:03:35', '2022-04-13 18:03:35');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 1),
(2, 3),
(2, 5),
(3, 1),
(3, 3),
(3, 5),
(4, 1),
(4, 3),
(4, 5),
(5, 1),
(5, 3),
(5, 5),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 5),
(17, 1),
(17, 5),
(18, 1),
(19, 1),
(20, 1),
(46, 1),
(46, 2),
(46, 3),
(46, 4),
(46, 5),
(47, 1),
(47, 2),
(47, 3),
(47, 4),
(47, 5),
(48, 1),
(48, 2),
(48, 4),
(49, 1),
(49, 2),
(49, 4),
(50, 1),
(50, 4),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(58, 1),
(59, 2),
(60, 1),
(60, 2);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
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
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-04-01 15:28:21', '2022-04-01 15:28:21');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(2, 'user', 'Normal User', '2022-04-01 15:28:20', '2022-04-01 15:28:20'),
(3, 'Super Admin', 'Super Admin', '2022-04-01 18:09:53', '2022-04-01 18:09:53'),
(4, 'Professeur', 'Professeur', '2022-04-01 18:13:58', '2022-04-01 18:13:58'),
(5, 'Admin1', 'Admin1', '2022-04-01 18:19:57', '2022-04-01 18:19:57');

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6yq1zlpVUwQ4Clak7ctHbzstGoK6iIrrjlTBQGZj', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiaHBMeE5NakNKVEFmU2Iwb2ZpRFNiNmFpczdtUkpnQzRHSkxsYkFhciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkLlJjbDY0bVUxeE9MLklENm9iSmpDdTczQ1FrdjlpZ1daOEZCRzVuVXJQWld5N0RsOEJsRlMiO30=', 1649334104),
('bZb7ve8IWBmTmeWRhwj8gcny09QSIGltIZNlaA76', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZWJ1aUlZRU9EVE55c0FObUo1M1Q5TkgyM1hUd1VtUTRud1FieXJOSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1649334810);

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\April2022\\qboTNbKWm9SPKqEnuCKx.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Ensaj', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Ensaj Administartion system', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `specialites`
--

CREATE TABLE `specialites` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `specialites`
--

INSERT INTO `specialites` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'Specialite1', '2022-04-01 16:39:29', '2022-04-01 16:39:29'),
(2, 'Specialite2', '2022-04-01 16:39:44', '2022-04-01 16:39:44'),
(3, 'sp3', '2022-04-16 00:04:21', '2022-04-16 00:04:21'),
(4, 'specialite3', '2022-04-16 03:15:05', '2022-04-16 03:15:05'),
(5, 'SPECIAITE4', '2022-04-16 05:06:15', '2022-04-16 05:06:15');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-04-01 15:28:21', '2022-04-01 15:28:21'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-04-01 15:28:21', '2022-04-01 15:28:21');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `prenom` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cin` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drpp` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_recrutement` date DEFAULT NULL,
  `tel` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `naissance` date DEFAULT NULL,
  `prof_ensaj` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialite` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `structure_de_recherche` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `directeur_structure` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dossier` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `settings`, `created_at`, `updated_at`, `prenom`, `photo`, `cin`, `drpp`, `date_recrutement`, `tel`, `naissance`, `prof_ensaj`, `specialite`, `structure_de_recherche`, `directeur_structure`, `dossier`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$.Rcl64mU1xOL.ID6obJjCu73CQkv9igWZ8FBG5nUrPZWy7Dl8BlFS', NULL, NULL, NULL, 'WOVHzronqQtu0Q9yv6PSZNE6OosNaq2v8JBhQUWz7KziriyqrnSSJTQoyUCQ', '{\"locale\":\"fr\"}', '2022-04-01 15:28:21', '2022-04-15 21:17:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL),
(2, 4, 'HAMID', 'hamid@gmail.com', 'users/default.png', NULL, '$2y$10$y8TgnwMfMc9QOzxMNeH13.YUyq3sj7/4ganbWVe9wHX90kXYKNo9.', NULL, NULL, NULL, NULL, '{\"locale\":\"en\"}', '2022-04-01 18:33:10', '2022-04-05 13:44:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 'Mohamed', 'mohamed@mohamed.com', 'users/default.png', NULL, '$2y$10$UmVc4DnW3maBl.t4Ra/dg.BX8SIcBLy8Vt2e8QuC27nZsEc1WVdT.', NULL, NULL, NULL, NULL, '{\"locale\":\"en\"}', '2022-04-07 11:58:17', '2022-04-07 13:27:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 4, 'test', 'test@pr.com', 'users/default.png', NULL, '$2y$10$CRrYCcMFRKQzHJuo3qZ5VOv1Z.fAWEBK9SqK19E8LVENDDnONfYi.', NULL, NULL, NULL, NULL, '{\"locale\":\"en\"}', '2022-04-07 13:48:08', '2022-04-07 13:48:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 2, 'mohamed', 'abouelkhir@gmail.com', 'users/default.png', NULL, '$2y$10$nD687QFgXgOHnG27Z.57NOyKg2KMsTDbh53pNZw3HVNctUilu42AO', NULL, NULL, NULL, NULL, '{\"locale\":\"fr\"}', '2022-04-13 23:51:56', '2022-04-15 21:19:16', 'abouelkhir', 'users\\April2022\\XhCGs0yPhWyalE2xUEUc.jpg', 'bw17899', '343', '2024-01-11', '+212694848302', '2000-09-17', '1', NULL, NULL, NULL, NULL),
(7, 2, 'ABOUELKHIR', 'mohamedabouelkhir34@gmail.com', 'users/default.png', NULL, '$2y$10$/W/U7N0D/6DybklPBbzISOKHQFJq3GLj.LP/mkWLbuqCJrZU8QA3m', NULL, NULL, NULL, NULL, NULL, '2022-04-15 01:07:29', '2022-04-15 01:07:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 2, 'aa', 'aaaaa@gmail.com', 'users/default.png', NULL, '$2y$10$qidKVx.AKolY9lE1B5SfTOkTBMvYq0Ea7j0wl2gq0en3o4GvnOF0C', NULL, NULL, NULL, NULL, NULL, '2022-04-15 01:13:01', '2022-04-15 01:13:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 2, 'aa', 'aaaaaa@gmail.com', 'users/default.png', NULL, '$2y$10$C0BdRXMvJ/LbMm0Ru/eKU.h/zew3g6.V/r6NTTi5X2kP7pg.8n27C', NULL, NULL, NULL, NULL, NULL, '2022-04-15 01:15:25', '2022-04-15 01:15:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 2, 'aa', 'aaaaarat@gmail.com', 'users/default.png', '2022-04-15 01:23:02', '$2y$10$OiUm.7WO17aIQJUJnG58kuOzNhoZYfnPzcZy1yxAPm5k03Yfz49ny', NULL, NULL, NULL, NULL, NULL, '2022-04-15 01:22:26', '2022-04-15 01:23:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 2, 'mohamed', 'aba@gmail.com', 'users/default.png', NULL, '$2y$10$QLXvjQBey/A6jIVx6ZSuzeVp7F6.4frCaoDHW6pO3wuUuaUU.7GNW', NULL, NULL, NULL, NULL, NULL, '2022-04-15 16:51:50', '2022-04-15 16:51:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 2, 'houda', 'houda@gmail.com', 'users/default.png', '2022-04-15 17:00:19', '$2y$10$sgi0qoA/Fu6BpmTclAdjG.XFfdHRypYCDoRMD7Jc29SeoUq23wv9.', NULL, NULL, NULL, NULL, NULL, '2022-04-15 16:59:43', '2022-04-15 17:00:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 2, 'ahhhhh', 'kjxn@gmail.com', 'users/default.png', NULL, '$2y$10$6teObbfPfE6os5U/hmyzkeWC3clztTBcVfs5QYnRTB2AJ7przwpLS', NULL, NULL, NULL, NULL, NULL, '2022-04-15 17:02:58', '2022-04-15 17:02:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 2, 'abouelkhir', 'mohamed@gmail.com', 'users/default.png', NULL, '$2y$10$.QVNoi8UYQzxd4udP/F7b.zMuUp3ePB2KoWnlafo9wPvbo9iT/z/6', NULL, NULL, NULL, NULL, '{\"locale\":\"fr\"}', '2022-04-16 03:11:45', '2022-04-16 03:13:59', 'mohamed', 'users\\April2022\\B4bluQWEAVlYoTPHS4L8.jpeg', 'bw17899', '312', '2022-04-04', '+212694848302', '2000-09-17', '1', 'specite1', 'structure1', 'Monsieur Hajjaji', NULL),
(15, 2, 'abouelkhir', 'abou@gmail.com', 'users/default.png', NULL, '$2y$10$SyCpZJjldO7QpZWXKy6ADu06h4uSX.8OB1JXTTFrrcoLqDYRzpnY2', NULL, NULL, NULL, NULL, '{\"locale\":\"en\"}', '2022-04-16 05:04:02', '2022-04-16 05:05:45', 'mohamed', 'users\\April2022\\zNmjROkvaKVQrRS9lYVl.jpeg', 'bw17899', '543', '2022-04-05', '0021287565876', '2022-04-04', '1', 'sp1', 'sC1', 'Monsieur Hajjaji', NULL),
(16, 2, 'Lachgar', 'lachgar@gmail.com', 'users\\April2022\\5bhbsfsjDcZfoZvuFZAP.jpeg', NULL, '$2y$10$Kuvh6m7qYTBXSe4sHBRvzuZCRqlLqmn3e5qSfyKbT7KfAxKFwoMb.', NULL, NULL, NULL, NULL, '{\"locale\":\"fr\"}', '2022-04-17 18:46:31', '2022-04-17 18:46:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `dossiers`
--
ALTER TABLE `dossiers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `specialites`
--
ALTER TABLE `specialites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `dossiers`
--
ALTER TABLE `dossiers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `specialites`
--
ALTER TABLE `specialites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
