-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.4.18-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for crm
CREATE DATABASE IF NOT EXISTS `crmapi` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `crmapi`;

-- Dumping structure for table crm.activity_log
CREATE TABLE IF NOT EXISTS `activity_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) unsigned DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) unsigned DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject` (`subject_type`,`subject_id`),
  KEY `causer` (`causer_type`,`causer_id`),
  KEY `activity_log_log_name_index` (`log_name`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.activity_log: ~112 rows (approximately)
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `created_at`, `updated_at`) VALUES
	(1, 'New Customer Group created.', 'Test-Group Customer Group created.', 'App\\Models\\CustomerGroup', 13, 'App\\Models\\User', 1, '[]', '2021-03-10 17:24:21', '2021-03-10 17:24:21'),
	(2, 'New Customer Group updated.', 'test 3 Customer Group updated.', 'App\\Models\\CustomerGroup', 12, 'App\\Models\\User', 1, '[]', '2021-03-10 17:26:52', '2021-03-10 17:26:52'),
	(3, 'Customer Group deleted.', 'Test-10-03-2021 Customer Group deleted.', 'App\\Models\\CustomerGroup', 10, 'App\\Models\\User', 1, '[]', '2021-03-10 17:34:11', '2021-03-10 17:34:11'),
	(4, 'New Customer created.', 'Kinatic Customer created.', 'App\\Models\\Customer', 3, 'App\\Models\\User', 1, '[]', '2021-03-10 18:01:36', '2021-03-10 18:01:36'),
	(5, 'Customer updated.', 'Big brothers Customer updated.', 'App\\Models\\Customer', 1, 'App\\Models\\User', 1, '[]', '2021-03-10 18:02:13', '2021-03-10 18:02:13'),
	(6, 'Customer deleted.', 'Kinatic Customer deleted.', 'App\\Models\\Customer', 3, 'App\\Models\\User', 1, '[]', '2021-03-10 18:06:13', '2021-03-10 18:06:13'),
	(9, 'New Member created.', 'Ahmed Salinas Member created.', 'App\\Models\\User', 34, 'App\\Models\\User', 1, '[]', '2021-03-10 20:45:39', '2021-03-10 20:45:39'),
	(10, 'Member updated.', 'Brett tets sadasa eseesfesf assadsf ghghhhg dsadfdgfterrrererer Rivers Member updated.', 'App\\Models\\User', 10, 'App\\Models\\User', 1, '[]', '2021-03-10 20:51:28', '2021-03-10 20:51:28'),
	(11, 'Member deleted.', 'Stella &amp; Dale Member deleted.', 'App\\Models\\User', 11, 'App\\Models\\User', 1, '[]', '2021-03-10 21:00:23', '2021-03-10 21:00:23'),
	(12, 'New Article Group created.', 'Test-11-03-2021 Article Group created.', 'App\\Models\\ArticleGroup', 3, 'App\\Models\\User', 1, '[]', '2021-03-11 12:25:15', '2021-03-11 12:25:15'),
	(13, 'Article Group updated.', 'Test-11-03-2021 Article Group updated.', 'App\\Models\\ArticleGroup', 3, 'App\\Models\\User', 1, '[]', '2021-03-11 12:28:04', '2021-03-11 12:28:04'),
	(14, 'New Article Group deleted.', 'Test-11-03-2021 Article Group deleted.', 'App\\Models\\ArticleGroup', 3, 'App\\Models\\User', 1, '[]', '2021-03-11 12:28:31', '2021-03-11 12:28:31'),
	(15, 'New Article created.', 'test-11-03-2021 Article created.', 'App\\Models\\Article', 3, 'App\\Models\\User', 1, '[]', '2021-03-11 12:35:51', '2021-03-11 12:35:51'),
	(16, 'Article updated.', 'test-11-03-2021 Article updated.', 'App\\Models\\Article', 3, 'App\\Models\\User', 1, '[]', '2021-03-11 18:48:40', '2021-03-11 18:48:40'),
	(17, 'New Article created.', 'testadda Article created.', 'App\\Models\\Article', 4, 'App\\Models\\User', 1, '[]', '2021-03-11 18:52:31', '2021-03-11 18:52:31'),
	(18, 'New Article created.', 'test Article created.', 'App\\Models\\Article', 5, 'App\\Models\\User', 1, '[]', '2021-03-11 18:58:29', '2021-03-11 18:58:29'),
	(19, 'Article deleted.', 'test Article deleted.', 'App\\Models\\Article', 5, 'App\\Models\\User', 1, '[]', '2021-03-11 18:58:54', '2021-03-11 18:58:54'),
	(20, 'New Tag created.', 'test-10-03-2021 Tag created.', 'App\\Models\\Tag', 9, 'App\\Models\\User', 1, '[]', '2021-03-11 19:07:54', '2021-03-11 19:07:54'),
	(21, 'Tag updated.', 'test-10-03-2021 Tag updated.', 'App\\Models\\Tag', 9, 'App\\Models\\User', 1, '[]', '2021-03-11 19:10:10', '2021-03-11 19:10:10'),
	(22, 'Tag deleted.', 'test &amp; fsesf Tag deleted.', 'App\\Models\\Tag', 7, 'App\\Models\\User', 1, '[]', '2021-03-11 19:11:29', '2021-03-11 19:11:29'),
	(23, 'New Lead Status created.', 'test Lead Status created.', 'App\\Models\\LeadStatus', 9, 'App\\Models\\User', 1, '[]', '2021-03-11 19:18:50', '2021-03-11 19:18:50'),
	(24, 'Lead Status updated.', 'test2 Lead Status updated.', 'App\\Models\\LeadStatus', 9, 'App\\Models\\User', 1, '[]', '2021-03-11 19:23:55', '2021-03-11 19:23:55'),
	(25, 'Lead Status deleted.', 'test2 Lead Status deleted.', 'App\\Models\\LeadStatus', 9, 'App\\Models\\User', 1, '[]', '2021-03-11 19:24:12', '2021-03-11 19:24:12'),
	(26, 'New Lead Source created.', 'etst Lead Source created.', 'App\\Models\\LeadSource', 15, 'App\\Models\\User', 1, '[]', '2021-03-11 19:31:51', '2021-03-11 19:31:51'),
	(27, 'Lead Source updated.', 'test Lead Source updated.', 'App\\Models\\LeadSource', 12, 'App\\Models\\User', 1, '[]', '2021-03-11 19:32:20', '2021-03-11 19:32:20'),
	(28, 'Lead Source deleted.', 'test 2 Lead Source deleted.', 'App\\Models\\LeadSource', 11, 'App\\Models\\User', 1, '[]', '2021-03-11 19:32:42', '2021-03-11 19:32:42'),
	(29, 'New Lead created.', 'Mara Crawford Lead created.', 'App\\Models\\Lead', 4, 'App\\Models\\User', 1, '[]', '2021-03-11 19:37:40', '2021-03-11 19:37:40'),
	(30, 'Lead updated.', 'Wing Pruitt Lead updated.', 'App\\Models\\Lead', 2, 'App\\Models\\User', 1, '[]', '2021-03-11 19:40:09', '2021-03-11 19:40:09'),
	(31, 'Lead deleted.', 'Mara Crawford Lead deleted.', 'App\\Models\\Lead', 4, 'App\\Models\\User', 1, '[]', '2021-03-11 19:40:28', '2021-03-11 19:40:28'),
	(32, 'New Project created.', 'test-10-03-2021 Project created.', 'App\\Models\\Project', 3, 'App\\Models\\User', 1, '[]', '2021-03-11 19:48:11', '2021-03-11 19:48:11'),
	(33, 'Project updated.', 'test project 2 Project updated.', 'App\\Models\\Project', 2, 'App\\Models\\User', 1, '[]', '2021-03-11 19:48:59', '2021-03-11 19:48:59'),
	(34, 'Project deleted.', 'test-10-03-2021 Project deleted.', 'App\\Models\\Project', 3, 'App\\Models\\User', 1, '[]', '2021-03-11 19:49:35', '2021-03-11 19:49:35'),
	(35, 'New Task created.', 'Ullamco sunt conseq Task created.', 'App\\Models\\Task', 3, 'App\\Models\\User', 1, '[]', '2021-03-11 19:58:09', '2021-03-11 19:58:09'),
	(36, 'Task updated.', 'Ullamco sunt conseq Task updated.', 'App\\Models\\Task', 3, 'App\\Models\\User', 1, '[]', '2021-03-11 20:00:26', '2021-03-11 20:00:26'),
	(37, 'Task updated.', 'test task &amp; serfsefse Task updated.', 'App\\Models\\Task', 1, 'App\\Models\\User', 1, '[]', '2021-03-11 20:00:53', '2021-03-11 20:00:53'),
	(38, 'New Ticket Priority created.', 'test Ticket Priority created.', 'App\\Models\\TicketPriority', 6, 'App\\Models\\User', 1, '[]', '2021-03-11 20:08:02', '2021-03-11 20:08:02'),
	(39, 'Ticket Priority updated.', 'test 1 Ticket Priority updated.', 'App\\Models\\TicketPriority', 6, 'App\\Models\\User', 1, '[]', '2021-03-11 20:23:02', '2021-03-11 20:23:02'),
	(40, 'Ticket Priority deleted.', 'test 1 Ticket Priority deleted.', 'App\\Models\\TicketPriority', 6, 'App\\Models\\User', 1, '[]', '2021-03-11 20:23:35', '2021-03-11 20:23:35'),
	(41, 'New Ticket Status created.', 'test Ticket Status created.', 'App\\Models\\TicketStatus', 8, 'App\\Models\\User', 1, '[]', '2021-03-11 20:31:44', '2021-03-11 20:31:44'),
	(42, 'Ticket Status updated.', 'test &amp; testing 2 Ticket Status updated.', 'App\\Models\\TicketStatus', 7, 'App\\Models\\User', 1, '[]', '2021-03-11 20:32:23', '2021-03-11 20:32:23'),
	(43, 'Ticket Status deleted.', 'test Ticket Status deleted.', 'App\\Models\\TicketStatus', 8, 'App\\Models\\User', 1, '[]', '2021-03-11 20:32:46', '2021-03-11 20:32:46'),
	(44, 'New Predefined Reply created.', ' Predefined Reply created.', 'App\\Models\\PredefinedReply', 3, 'App\\Models\\User', 1, '[]', '2021-03-11 20:44:12', '2021-03-11 20:44:12'),
	(45, 'Predefined Reply updated.', ' Predefined Reply updated.', 'App\\Models\\PredefinedReply', 2, 'App\\Models\\User', 1, '[]', '2021-03-11 20:44:38', '2021-03-11 20:44:38'),
	(46, 'Predefined Reply deleted.', ' Predefined Reply deleted.', 'App\\Models\\PredefinedReply', 2, 'App\\Models\\User', 1, '[]', '2021-03-11 20:48:39', '2021-03-11 20:48:39'),
	(47, 'New Ticket created.', 'tets Ticket created.', 'App\\Models\\Ticket', 4, 'App\\Models\\User', 1, '[]', '2021-03-11 20:53:47', '2021-03-11 20:53:47'),
	(48, 'Ticket updated.', 'Duis qui Ticket updated.', 'App\\Models\\Ticket', 2, 'App\\Models\\User', 1, '[]', '2021-03-11 20:54:28', '2021-03-11 20:54:28'),
	(49, 'Ticket deleted.', 'Duis qui Ticket deleted.', 'App\\Models\\Ticket', 2, 'App\\Models\\User', 1, '[]', '2021-03-11 20:57:56', '2021-03-11 20:57:56'),
	(50, 'New Invoice created.', 'test Invoice created.', 'App\\Models\\Invoice', 7, 'App\\Models\\User', 1, '[]', '2021-03-11 21:04:45', '2021-03-11 21:04:45'),
	(51, 'Invoice deleted.', 'test-09-03-2021 Invoice deleted.', 'App\\Models\\Invoice', 6, 'App\\Models\\User', 1, '[]', '2021-03-12 11:53:40', '2021-03-12 11:53:40'),
	(52, 'Invoice updated.', 'test 5 Invoice updated.', 'App\\Models\\Invoice', 5, 'App\\Models\\User', 1, '[]', '2021-03-12 11:57:21', '2021-03-12 11:57:21'),
	(53, 'New Credit Note created.', 'test Credit Note created.', 'App\\Models\\CreditNote', 9, 'App\\Models\\User', 1, '[]', '2021-03-12 12:09:04', '2021-03-12 12:09:04'),
	(54, 'Credit Note updated.', 'test 2 Credit Note updated.', 'App\\Models\\CreditNote', 6, 'App\\Models\\User', 1, '[]', '2021-03-12 12:12:01', '2021-03-12 12:12:01'),
	(55, 'Credit Note deleted.', 'test 23232 Credit Note deleted.', 'App\\Models\\CreditNote', 7, 'App\\Models\\User', 1, '[]', '2021-03-12 12:12:37', '2021-03-12 12:12:37'),
	(56, 'New Proposal created.', 'test Proposal created.', 'App\\Models\\Proposal', 7, 'App\\Models\\User', 1, '[]', '2021-03-12 12:20:00', '2021-03-12 12:20:00'),
	(57, 'Proposal updated.', 'test2 Proposal updated.', 'App\\Models\\Proposal', 6, 'App\\Models\\User', 1, '[]', '2021-03-12 12:21:04', '2021-03-12 12:21:04'),
	(58, 'Proposal deleted.', 'test Proposal deleted.', 'App\\Models\\Proposal', 7, 'App\\Models\\User', 1, '[]', '2021-03-12 12:21:33', '2021-03-12 12:21:33'),
	(59, 'New Estimate created.', 'test Estimate created.', 'App\\Models\\Estimate', 4, 'App\\Models\\User', 1, '[]', '2021-03-12 12:30:59', '2021-03-12 12:30:59'),
	(60, 'Estimate updated.', 'test4 Estimate updated.', 'App\\Models\\Estimate', 3, 'App\\Models\\User', 1, '[]', '2021-03-12 12:31:37', '2021-03-12 12:31:37'),
	(61, 'Estimate deleted.', 'test estimate Estimate deleted.', 'App\\Models\\Estimate', 1, 'App\\Models\\User', 1, '[]', '2021-03-12 12:32:11', '2021-03-12 12:32:11'),
	(62, 'Payment success.', '2 Payment success.', 'App\\Models\\Payment', 3, 'App\\Models\\User', 1, '[]', '2021-03-13 19:27:39', '2021-03-13 19:27:39'),
	(63, 'New Invoice created.', 'test sffsf Invoice created.', 'App\\Models\\Invoice', 8, 'App\\Models\\User', 1, '[]', '2021-03-13 19:34:27', '2021-03-13 19:34:27'),
	(64, 'Payment success.', 'Gold Payment success.', 'App\\Models\\Payment', 4, 'App\\Models\\User', 1, '[]', '2021-03-13 19:34:52', '2021-03-13 19:34:52'),
	(65, 'New Department created.', 'test Department created.', 'App\\Models\\Department', 10, 'App\\Models\\User', 1, '[]', '2021-03-13 19:42:32', '2021-03-13 19:42:32'),
	(66, 'Department updated.', 'test 2 Department updated.', 'App\\Models\\Department', 8, 'App\\Models\\User', 1, '[]', '2021-03-13 19:45:10', '2021-03-13 19:45:10'),
	(67, 'Department deleted.', 'test Department deleted.', 'App\\Models\\Department', 10, 'App\\Models\\User', 1, '[]', '2021-03-13 19:46:04', '2021-03-13 19:46:04'),
	(68, 'New Expense Category created.', 'test222 Expense Category created.', 'App\\Models\\ExpenseCategory', 13, 'App\\Models\\User', 1, '[]', '2021-03-13 19:52:57', '2021-03-13 19:52:57'),
	(69, 'Expense Category updated.', 'test Expense Category updated.', 'App\\Models\\ExpenseCategory', 13, 'App\\Models\\User', 1, '[]', '2021-03-13 19:53:34', '2021-03-13 19:53:34'),
	(70, 'Expense Category deleted.', 'test Expense Category deleted.', 'App\\Models\\ExpenseCategory', 13, 'App\\Models\\User', 1, '[]', '2021-03-13 19:58:48', '2021-03-13 19:58:48'),
	(71, 'New Expense created.', 'test Expense created.', 'App\\Models\\Expense', 4, 'App\\Models\\User', 1, '[]', '2021-03-13 20:10:09', '2021-03-13 20:10:09'),
	(72, 'Expense updated.', 'test expense 2 &amp; sfsfs Expense updated.', 'App\\Models\\Expense', 3, 'App\\Models\\User', 1, '[]', '2021-03-13 20:10:38', '2021-03-13 20:10:38'),
	(73, 'Expense deleted.', 'test Expense deleted.', 'App\\Models\\Expense', 4, 'App\\Models\\User', 1, '[]', '2021-03-13 20:10:58', '2021-03-13 20:10:58'),
	(74, 'Payment Mode deleted.', 'Test 1 Payment Mode deleted.', 'App\\Models\\PaymentMode', 4, 'App\\Models\\User', 1, '[]', '2021-03-13 20:18:11', '2021-03-13 20:18:11'),
	(75, 'Payment Mode updated.', 'test 332 Payment Mode updated.', 'App\\Models\\PaymentMode', 13, 'App\\Models\\User', 1, '[]', '2021-03-13 20:18:35', '2021-03-13 20:18:35'),
	(76, 'New Tax Rate created.', 'test Tax Rate created.', 'App\\Models\\TaxRate', 10, 'App\\Models\\User', 1, '[]', '2021-03-13 20:24:45', '2021-03-13 20:24:45'),
	(77, 'Tax Rate updated.', 'test esrse Tax Rate updated.', 'App\\Models\\TaxRate', 7, 'App\\Models\\User', 1, '[]', '2021-03-13 20:25:59', '2021-03-13 20:25:59'),
	(78, 'New Announcement created.', 'test Announcement created.', 'App\\Models\\Announcement', 10, 'App\\Models\\User', 1, '[]', '2021-03-13 20:32:58', '2021-03-13 20:32:58'),
	(79, 'Announcement updated.', 'test 44 Announcement updated.', 'App\\Models\\Announcement', 5, 'App\\Models\\User', 1, '[]', '2021-03-13 20:33:33', '2021-03-13 20:33:33'),
	(80, 'Announcement deleted.', 'testsddsd Announcement deleted.', 'App\\Models\\Announcement', 9, 'App\\Models\\User', 1, '[]', '2021-03-13 20:33:54', '2021-03-13 20:33:54'),
	(81, 'New Product created.', 'test Product created.', 'App\\Models\\Item', 3, 'App\\Models\\User', 1, '[]', '2021-03-13 20:42:04', '2021-03-13 20:42:04'),
	(82, 'Product updated.', 'test 2 Product updated.', 'App\\Models\\Item', 1, 'App\\Models\\User', 1, '[]', '2021-03-13 20:42:28', '2021-03-13 20:42:28'),
	(83, 'New Product Group created.', 'test Product Group created.', 'App\\Models\\ItemGroup', 8, 'App\\Models\\User', 1, '[]', '2021-03-13 20:48:29', '2021-03-13 20:48:29'),
	(84, 'Product Group updated.', 'test 2 Product Group updated.', 'App\\Models\\ItemGroup', 7, 'App\\Models\\User', 1, '[]', '2021-03-13 20:48:58', '2021-03-13 20:48:58'),
	(85, 'Product Group deleted.', 'test 2 Product Group deleted.', 'App\\Models\\ItemGroup', 7, 'App\\Models\\User', 1, '[]', '2021-03-13 20:49:11', '2021-03-13 20:49:11'),
	(86, 'New Contract Type created.', 'test-16-03-2021 Contract Type created.', 'App\\Models\\ContractType', 11, 'App\\Models\\User', 1, '[]', '2021-03-16 12:33:05', '2021-03-16 12:33:05'),
	(87, 'Contract Type updated.', 'test 223 Contract Type updated.', 'App\\Models\\ContractType', 10, 'App\\Models\\User', 1, '[]', '2021-03-16 12:37:30', '2021-03-16 12:37:30'),
	(88, 'Contract Type deleted.', 'test-16-03-2021 Contract Type deleted.', 'App\\Models\\ContractType', 11, 'App\\Models\\User', 1, '[]', '2021-03-16 12:38:23', '2021-03-16 12:38:23'),
	(89, 'New Contract created.', 'test-16-03-2021 Contract created.', 'App\\Models\\Contract', 3, 'App\\Models\\User', 1, '[]', '2021-03-16 12:43:18', '2021-03-16 12:43:18'),
	(90, 'Contract updated.', 'test asdsad Contract updated.', 'App\\Models\\Contract', 2, 'App\\Models\\User', 1, '[]', '2021-03-16 12:45:41', '2021-03-16 12:45:41'),
	(91, 'Contract deleted.', 'test-16-03-2021 Contract deleted.', 'App\\Models\\Contract', 3, 'App\\Models\\User', 1, '[]', '2021-03-17 11:57:20', '2021-03-17 11:57:20'),
	(92, 'New Goal created.', 'test-18-03-2021 Goal created.', 'App\\Models\\Goal', 3, 'App\\Models\\User', 1, '[]', '2021-03-18 19:19:46', '2021-03-18 19:19:46'),
	(93, 'Goal updated.', 'test goal 3 Goal updated.', 'App\\Models\\Goal', 2, 'App\\Models\\User', 1, '[]', '2021-03-18 19:22:24', '2021-03-18 19:22:24'),
	(94, 'Goal deleted.', 'test goal &amp; fsffdfd sdfsfd aserreess fdsfsdgs saweretr jfgj fghfghdhfhfhdfh adsfsfdaferareraawwrar asdadf Goal deleted.', 'App\\Models\\Goal', 1, 'App\\Models\\User', 1, '[]', '2021-03-18 19:23:00', '2021-03-18 19:23:00'),
	(95, 'New Service created.', 'test-18-03-2021 Service created.', 'App\\Models\\Service', 15, 'App\\Models\\User', 1, '[]', '2021-03-18 19:32:38', '2021-03-18 19:32:38'),
	(96, 'Service updated.', 'test &amp; Service updated.', 'App\\Models\\Service', 14, 'App\\Models\\User', 1, '[]', '2021-03-18 19:39:05', '2021-03-18 19:39:05'),
	(97, 'Service deleted.', 'test-18-03-2021 Service deleted.', 'App\\Models\\Service', 15, 'App\\Models\\User', 1, '[]', '2021-03-18 19:39:24', '2021-03-18 19:39:24'),
	(98, 'New Reminder created.', '<p>testing</p> Reminder created.', 'App\\Models\\Reminder', 6, 'App\\Models\\User', 1, '[]', '2021-03-19 11:58:26', '2021-03-19 11:58:26'),
	(99, 'Reminder updated.', '<p>testing  & </p> Reminder updated.', 'App\\Models\\Reminder', 1, 'App\\Models\\User', 1, '[]', '2021-03-19 12:11:59', '2021-03-19 12:11:59'),
	(100, 'Reminder updated.', '<p>testing</p> Reminder updated.', 'App\\Models\\Reminder', 2, 'App\\Models\\User', 1, '[]', '2021-03-19 12:13:09', '2021-03-19 12:13:09'),
	(101, 'Reminder updated.', '<p>testing 3</p> Reminder updated.', 'App\\Models\\Reminder', 6, 'App\\Models\\User', 1, '[]', '2021-03-19 12:14:48', '2021-03-19 12:14:48'),
	(102, 'Reminder deleted.', '<p>testing 2</p> Reminder deleted.', 'App\\Models\\Reminder', 2, 'App\\Models\\User', 1, '[]', '2021-03-27 12:56:17', '2021-03-27 12:56:17'),
	(103, 'New Note created.', '<p>customer note </p>Note created.', 'App\\Models\\Note', 5, 'App\\Models\\User', 1, '[]', '2021-03-27 13:05:41', '2021-03-27 13:05:41'),
	(104, 'Note updated.', '<p>Test 12212</p>Note updated.', 'App\\Models\\Note', 3, 'App\\Models\\User', 1, '[]', '2021-03-27 13:07:35', '2021-03-27 13:07:35'),
	(105, 'Note deleted.', '<p><b>test  233</b></p> Note deleted.', 'App\\Models\\Note', 1, 'App\\Models\\User', 1, '[]', '2021-03-27 13:08:56', '2021-03-27 13:08:56'),
	(106, 'New Comment created.', '<p>task comment</p> Comment created.', 'App\\Models\\Comment', 4, 'App\\Models\\User', 1, '[]', '2021-03-27 13:27:19', '2021-03-27 13:27:19'),
	(107, 'Comment updated.', '<p>Test comment in task 2</p> Comment updated.', 'App\\Models\\Comment', 2, 'App\\Models\\User', 1, '[]', '2021-03-27 13:28:07', '2021-03-27 13:28:07'),
	(108, 'Comment deleted.', '<p>task comment</p> Comment deleted.', 'App\\Models\\Comment', 4, 'App\\Models\\User', 1, '[]', '2021-03-27 13:28:30', '2021-03-27 13:28:30'),
	(109, 'New Tag created.', 'test Tag created.', 'App\\Models\\Tag', 10, 'App\\Models\\User', 1, '[]', '2021-03-27 19:23:19', '2021-03-27 19:23:19'),
	(110, 'Tag deleted.', 'test Tag deleted.', 'App\\Models\\Tag', 10, 'App\\Models\\User', 1, '[]', '2021-03-27 19:23:36', '2021-03-27 19:23:36'),
	(111, 'New Contact created.', 'Marcia Contact created.', 'App\\Models\\Contact', 20, 'App\\Models\\User', 1, '[]', '2021-03-30 12:00:51', '2021-03-30 12:00:51'),
	(112, 'Contact updated.', 'yogesh Contact updated.', 'App\\Models\\Contact', 1, 'App\\Models\\User', 1, '[]', '2021-03-30 12:02:34', '2021-03-30 12:02:34'),
	(113, 'Contact deleted.', 'Tara Contact deleted.', 'App\\Models\\Contact', 12, 'App\\Models\\User', 1, '[]', '2021-03-30 12:07:42', '2021-03-30 12:07:42'),
	(114, 'New Note created.', '<p>test expense note</p> Note created.', 'App\\Models\\Note', 6, 'App\\Models\\User', 1, '[]', '2021-03-30 12:15:42', '2021-03-30 12:15:42');
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;

-- Dumping structure for table crm.addresses
CREATE TABLE IF NOT EXISTS `addresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `owner_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.addresses: ~0 rows (approximately)
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;

-- Dumping structure for table crm.announcements
CREATE TABLE IF NOT EXISTS `announcements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_to_clients` tinyint(1) DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.announcements: ~8 rows (approximately)
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` (`id`, `subject`, `date`, `message`, `show_to_clients`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'tests 222', '2021-03-10 00:00:00', '<p>testing eewewe</p>', 1, 1, '2021-02-17 14:14:56', '2021-03-02 13:05:40'),
	(2, 'test announcment', '2021-03-05 12:50:55', 'testing', 1, 1, '2021-02-18 17:22:41', '2021-02-22 13:47:12'),
	(3, 'test 3', '2021-02-18 00:00:00', NULL, 1, 0, '2021-02-18 18:33:45', '2021-02-22 14:36:27'),
	(4, 'test 32332', '2021-03-03 00:00:00', NULL, 1, 0, '2021-02-18 18:33:58', '2021-02-18 18:33:58'),
	(5, 'test 44', '2021-03-11 00:00:00', NULL, 1, 0, '2021-02-18 18:34:18', '2021-03-13 20:33:33'),
	(7, 'test 1541', '2021-02-24 00:00:00', NULL, 1, 1, '2021-02-18 18:58:22', '2021-03-10 12:42:00'),
	(8, 'testsdsad', '2021-02-23 00:00:00', 'ddsdsds', 1, 1, '2021-02-18 18:58:37', '2021-02-22 14:36:39'),
	(10, 'test', '2021-03-13 00:00:00', '<p>dsds</p>', 1, 0, '2021-03-13 20:32:58', '2021-03-13 20:32:58');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;

-- Dumping structure for table crm.articles
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  `internal_article` tinyint(1) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `articles_group_id_foreign` (`group_id`),
  CONSTRAINT `articles_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `article_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.articles: ~0 rows (approximately)
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;

-- Dumping structure for table crm.article_groups
CREATE TABLE IF NOT EXISTS `article_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `article_groups_group_name_unique` (`group_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.article_groups: ~0 rows (approximately)
/*!40000 ALTER TABLE `article_groups` DISABLE KEYS */;
INSERT INTO `article_groups` (`id`, `group_name`, `color`, `description`, `order`, `created_at`, `updated_at`) VALUES
	(1, 'test 22332 &amp; dffdf', '#3F51B5', '<p>test &amp; fdff</p>', 4, '2021-02-17 18:23:47', '2021-03-02 17:49:49');
/*!40000 ALTER TABLE `article_groups` ENABLE KEYS */;

-- Dumping structure for table crm.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) NOT NULL,
  `owner_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.comments: ~3 rows (approximately)
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`id`, `description`, `owner_id`, `owner_type`, `added_by`, `created_at`, `updated_at`) VALUES
	(1, '<p><b>test comments</b></p>', 1, 'App\\Models\\Task', 1, '2021-02-27 19:08:04', '2021-02-27 19:08:04'),
	(2, '<p>Test comment in task 2</p>', 2, 'App\\Models\\Task', 1, '2021-03-08 16:33:26', '2021-03-27 13:28:07'),
	(3, 'test', 3, 'App\\Models\\Expense', 1, '2021-03-08 17:26:40', '2021-03-08 17:26:40');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

-- Dumping structure for table crm.contacts
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_contact` tinyint(1) NOT NULL DEFAULT 0,
  `send_welcome_email` tinyint(1) NOT NULL DEFAULT 0,
  `send_password_email` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contacts_customer_id_foreign` (`customer_id`),
  KEY `contacts_user_id_foreign` (`user_id`),
  CONSTRAINT `contacts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `contacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.contacts: ~0 rows (approximately)
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;

-- Dumping structure for table crm.contact_email_notifications
CREATE TABLE IF NOT EXISTS `contact_email_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contact_id` int(10) unsigned NOT NULL,
  `email_notification_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contact_email_notifications_contact_id_foreign` (`contact_id`),
  KEY `contact_email_notifications_email_notification_id_foreign` (`email_notification_id`),
  CONSTRAINT `contact_email_notifications_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `contact_email_notifications_email_notification_id_foreign` FOREIGN KEY (`email_notification_id`) REFERENCES `email_notifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.contact_email_notifications: ~0 rows (approximately)
/*!40000 ALTER TABLE `contact_email_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_email_notifications` ENABLE KEYS */;

-- Dumping structure for table crm.contracts
CREATE TABLE IF NOT EXISTS `contracts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `contract_value` double DEFAULT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `contract_type_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contracts_subject_unique` (`subject`),
  KEY `contracts_customer_id_foreign` (`customer_id`),
  KEY `contracts_contract_type_id_foreign` (`contract_type_id`),
  CONSTRAINT `contracts_contract_type_id_foreign` FOREIGN KEY (`contract_type_id`) REFERENCES `contract_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `contracts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.contracts: ~2 rows (approximately)
/*!40000 ALTER TABLE `contracts` DISABLE KEYS */;
INSERT INTO `contracts` (`id`, `subject`, `description`, `start_date`, `end_date`, `contract_value`, `customer_id`, `contract_type_id`, `created_at`, `updated_at`) VALUES
	(1, 'test', 'testing', '2021-02-22 00:00:00', '2021-02-28 00:00:00', 5000, 1, 4, '2021-02-22 15:06:16', '2021-02-22 15:06:16'),
	(2, 'test asdsad', '<p>test</p>', '2021-02-27 00:00:00', '2021-03-10 00:00:00', 25620, 1, 10, '2021-02-27 18:55:02', '2021-03-16 12:45:41');
/*!40000 ALTER TABLE `contracts` ENABLE KEYS */;

-- Dumping structure for table crm.contract_types
CREATE TABLE IF NOT EXISTS `contract_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contract_types_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.contract_types: ~10 rows (approximately)
/*!40000 ALTER TABLE `contract_types` DISABLE KEYS */;
INSERT INTO `contract_types` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'Contract under Seal', NULL, '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(2, 'Express Contracts', NULL, '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(3, 'Implied Contracts', NULL, '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(4, 'Executed and Executory Contracts', NULL, '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(5, 'Bilateral and Unilateral Contracts', NULL, '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(6, 'Unconscionable Contracts', NULL, '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(7, 'Adhesion Contracts', NULL, '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(8, 'Aleatory Contracts', NULL, '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(9, 'Void and Voidable Contracts', NULL, '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(10, 'test 223', 'dsd', '2021-03-02 20:48:40', '2021-03-16 12:37:30');
/*!40000 ALTER TABLE `contract_types` ENABLE KEYS */;

-- Dumping structure for table crm.credit_notes
CREATE TABLE IF NOT EXISTS `credit_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `credit_note_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit_note_date` datetime NOT NULL,
  `currency` int(11) NOT NULL,
  `discount_type` int(11) DEFAULT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `admin_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` int(11) NOT NULL,
  `client_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `term_conditions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `adjustment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `total_amount` double DEFAULT NULL,
  `payment_status` int(11) DEFAULT NULL,
  `discount_symbol` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `credit_notes_customer_id_foreign` (`customer_id`),
  CONSTRAINT `credit_notes_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.credit_notes: ~7 rows (approximately)
/*!40000 ALTER TABLE `credit_notes` DISABLE KEYS */;
INSERT INTO `credit_notes` (`id`, `title`, `customer_id`, `credit_note_number`, `credit_note_date`, `currency`, `discount_type`, `reference`, `discount`, `admin_text`, `unit`, `client_note`, `term_conditions`, `sub_total`, `adjustment`, `total_amount`, `payment_status`, `discount_symbol`, `created_at`, `updated_at`) VALUES
	(1, 'test credit notes', 1, 'DIDV7I', '2021-02-17 00:00:00', 0, 0, NULL, 0, 'This is the admin note of the InfyCRM project.', 1, 'This is the client note of the InfyCRM project.', 'This Infycrm project is follow all term and conditions and privacy.', 1000, '0', 1000, 3, NULL, '2021-02-17 16:35:06', '2021-02-18 13:13:23'),
	(2, 'credit notes 2', 1, 'FS7KRA', '2021-02-17 00:00:00', 0, 0, NULL, 0, 'This is the admin note of the InfyCRM project.', 1, 'This is the client note of the InfyCRM project.', 'This Infycrm project is follow all term and conditions and privacy.', 3000, '0', 3060, 0, NULL, '2021-02-17 17:47:34', '2021-02-17 17:47:34'),
	(3, 'test ewewew', 1, 'D1X80T', '2021-02-18 00:00:00', 0, 0, NULL, 0, 'This is the admin note of the InfyCRM project.', 1, 'This is the client note of the InfyCRM project.', 'This Infycrm project is follow all term and conditions and privacy.', 2000, '0', 2000, 1, NULL, '2021-02-20 12:31:30', '2021-02-20 12:31:30'),
	(4, 'test credit notes', 1, 'BOQEKU', '2021-02-22 00:00:00', 0, 0, NULL, 0, 'This is the admin note of the InfyCRM project.', 1, 'This is the client note of the InfyCRM project.', 'This Infycrm project is follow all term and conditions and privacy.', 3000, '0', 3000, 1, NULL, '2021-02-22 19:08:17', '2021-02-22 19:08:17'),
	(5, 'test credit note 2', 1, 'MFCO1Z', '2021-02-22 00:00:00', 0, 0, NULL, 0, 'This is the admin note of the InfyCRM project.', 1, 'This is the client note of the InfyCRM project.', 'This Infycrm project is follow all term and conditions and privacy.', 3000, '0', 3060, 1, NULL, '2021-02-22 19:16:48', '2021-02-22 19:16:48'),
	(6, 'test 2', 1, 'XRHDIG', '2021-02-22 00:00:00', 0, 0, NULL, 0, 'This is the admin note of the InfyCRM project.', 1, 'This is the client note of the InfyCRM project.', 'This Infycrm project is follow all term and conditions and privacy.', 2000, '0', 2000, 1, 0, '2021-02-22 19:55:07', '2021-03-12 12:12:01'),
	(9, 'test', 1, 'E3VKWK', '2021-03-12 00:00:00', 0, 0, NULL, 0, 'This is the admin note of the InfyCRM project.', 1, 'This is the client note of the InfyCRM project.', 'This Infycrm project is follow all term and conditions and privacy.', 5000, '0', 5150, 1, NULL, '2021-03-12 12:09:04', '2021-03-12 12:09:04');
/*!40000 ALTER TABLE `credit_notes` ENABLE KEYS */;

-- Dumping structure for table crm.credit_note_addresses
CREATE TABLE IF NOT EXISTS `credit_note_addresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `credit_note_id` int(10) unsigned NOT NULL,
  `type` int(11) NOT NULL,
  `street` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `credit_note_addresses_credit_note_id_foreign` (`credit_note_id`),
  CONSTRAINT `credit_note_addresses_credit_note_id_foreign` FOREIGN KEY (`credit_note_id`) REFERENCES `credit_notes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.credit_note_addresses: ~0 rows (approximately)
/*!40000 ALTER TABLE `credit_note_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `credit_note_addresses` ENABLE KEYS */;

-- Dumping structure for table crm.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.customers: ~2 rows (approximately)
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`id`, `company_name`, `vat_number`, `phone`, `website`, `currency`, `country`, `default_language`, `created_at`, `updated_at`) VALUES
	(1, 'Big brothers', NULL, '+911234567890', NULL, '0', '1', 'en', '2021-02-17 14:04:18', '2021-03-10 18:02:12'),
	(2, 'test customer &amp; fsffawdaw', NULL, NULL, NULL, NULL, '1', 'en', '2021-02-23 13:23:15', '2021-03-02 19:55:46');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Dumping structure for table crm.customer_groups
CREATE TABLE IF NOT EXISTS `customer_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_groups_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.customer_groups: ~8 rows (approximately)
/*!40000 ALTER TABLE `customer_groups` DISABLE KEYS */;
INSERT INTO `customer_groups` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'High Budget', 'This is High Budget', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(2, 'Wholesaler', 'This is Wholesaler', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(3, 'VIP', 'This is VIP', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(4, 'Low Budget', 'This is Low Budget', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(5, 'Wisoky-Robel', 'This is Wisoky-Robel', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(6, 'test &amp; testing', '<p>test &amp; testing</p>', '2021-03-02 17:37:40', '2021-03-10 16:18:38'),
	(12, 'test 3', 'test', '2021-03-10 16:54:00', '2021-03-10 17:26:52'),
	(13, 'Test-Group', NULL, '2021-03-10 17:24:21', '2021-03-10 17:24:21');
/*!40000 ALTER TABLE `customer_groups` ENABLE KEYS */;

-- Dumping structure for table crm.customer_to_customer_groups
CREATE TABLE IF NOT EXISTS `customer_to_customer_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `customer_group_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_to_customer_groups_customer_id_foreign` (`customer_id`),
  KEY `customer_to_customer_groups_customer_group_id_foreign` (`customer_group_id`),
  CONSTRAINT `customer_to_customer_groups_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `customer_to_customer_groups_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.customer_to_customer_groups: ~2 rows (approximately)
/*!40000 ALTER TABLE `customer_to_customer_groups` DISABLE KEYS */;
INSERT INTO `customer_to_customer_groups` (`id`, `customer_id`, `customer_group_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 2, '2021-02-17 14:04:18', '2021-02-17 14:04:18'),
	(2, 2, 2, '2021-02-23 13:23:15', '2021-02-23 13:23:15');
/*!40000 ALTER TABLE `customer_to_customer_groups` ENABLE KEYS */;

-- Dumping structure for table crm.departments
CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `departments_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.departments: ~7 rows (approximately)
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Marketing Department', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(2, 'Operations Department', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(3, 'Finance Department', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(4, 'Sales Department', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(5, 'Human Resource Department', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(6, 'Purchase Department', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(8, 'test 2', '2021-03-02 14:05:59', '2021-03-13 19:45:10');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;

-- Dumping structure for table crm.email_notifications
CREATE TABLE IF NOT EXISTS `email_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.email_notifications: ~0 rows (approximately)
/*!40000 ALTER TABLE `email_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_notifications` ENABLE KEYS */;

-- Dumping structure for table crm.email_templates
CREATE TABLE IF NOT EXISTS `email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_type` int(11) NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_plain_text` tinyint(1) NOT NULL DEFAULT 0,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `email_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.email_templates: ~0 rows (approximately)
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;

-- Dumping structure for table crm.estimates
CREATE TABLE IF NOT EXISTS `estimates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `status` int(11) NOT NULL,
  `currency` int(11) NOT NULL,
  `estimate_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sales_agent_id` int(10) unsigned DEFAULT NULL,
  `discount_type` int(11) DEFAULT NULL,
  `estimate_date` datetime NOT NULL,
  `estimate_expiry_date` datetime DEFAULT NULL,
  `admin_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `unit` int(11) NOT NULL,
  `sub_total` double DEFAULT NULL,
  `adjustment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `client_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `term_conditions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `discount_symbol` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `estimates_customer_id_foreign` (`customer_id`),
  KEY `estimates_sales_agent_id_foreign` (`sales_agent_id`),
  CONSTRAINT `estimates_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `estimates_sales_agent_id_foreign` FOREIGN KEY (`sales_agent_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.estimates: ~3 rows (approximately)
/*!40000 ALTER TABLE `estimates` DISABLE KEYS */;
INSERT INTO `estimates` (`id`, `title`, `customer_id`, `status`, `currency`, `estimate_number`, `reference`, `sales_agent_id`, `discount_type`, `estimate_date`, `estimate_expiry_date`, `admin_note`, `discount`, `unit`, `sub_total`, `adjustment`, `client_note`, `term_conditions`, `total_amount`, `discount_symbol`, `created_at`, `updated_at`) VALUES
	(2, 'estimate', 1, 0, 0, 'ATYVWV', NULL, NULL, 0, '2021-02-11 00:00:00', '2021-02-24 00:00:00', 'This is the admin note of the InfyCRM project.', 0, 1, 3000, '0', 'This is the client note of the InfyCRM project.', 'This Infycrm project is follow all term and conditions and privacy.', 3060, NULL, '2021-02-17 17:35:23', '2021-02-17 17:35:23'),
	(3, 'test4', 2, 1, 0, 'ROZUYW', NULL, NULL, 0, '2021-02-23 00:00:00', '2021-02-24 00:00:00', 'This is the admin note of the InfyCRM project.', 0, 1, 8000, '0', 'This is the client note of the InfyCRM project.', 'This Infycrm project is follow all term and conditions and privacy.', 8160, 0, '2021-02-23 19:48:03', '2021-03-12 12:31:37'),
	(4, 'test', 1, 1, 0, '5VG02S', NULL, NULL, 0, '2021-03-12 00:00:00', '2021-03-23 00:00:00', 'This is the admin note of the InfyCRM project.', 0, 1, 5000, '0', 'This is the client note of the InfyCRM project.', 'This Infycrm project is follow all term and conditions and privacy.', 5100, NULL, '2021-03-12 12:30:59', '2021-03-12 12:30:59');
/*!40000 ALTER TABLE `estimates` ENABLE KEYS */;

-- Dumping structure for table crm.estimate_addresses
CREATE TABLE IF NOT EXISTS `estimate_addresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `estimate_id` int(10) unsigned NOT NULL,
  `type` int(11) NOT NULL,
  `street` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `estimate_addresses_estimate_id_foreign` (`estimate_id`),
  CONSTRAINT `estimate_addresses_estimate_id_foreign` FOREIGN KEY (`estimate_id`) REFERENCES `estimates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.estimate_addresses: ~0 rows (approximately)
/*!40000 ALTER TABLE `estimate_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `estimate_addresses` ENABLE KEYS */;

-- Dumping structure for table crm.expenses
CREATE TABLE IF NOT EXISTS `expenses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expense_category_id` int(10) unsigned NOT NULL,
  `expense_date` datetime NOT NULL,
  `amount` double NOT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `tax_applied` tinyint(1) NOT NULL DEFAULT 0,
  `tax_1_id` int(10) unsigned DEFAULT NULL,
  `tax_2_id` int(10) unsigned DEFAULT NULL,
  `tax_rate` double DEFAULT NULL,
  `payment_mode_id` int(10) unsigned DEFAULT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billable` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `expenses_expense_category_id_foreign` (`expense_category_id`),
  KEY `expenses_customer_id_foreign` (`customer_id`),
  KEY `expenses_tax_1_id_foreign` (`tax_1_id`),
  KEY `expenses_tax_2_id_foreign` (`tax_2_id`),
  KEY `expenses_payment_mode_id_foreign` (`payment_mode_id`),
  CONSTRAINT `expenses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `expenses_expense_category_id_foreign` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `expenses_payment_mode_id_foreign` FOREIGN KEY (`payment_mode_id`) REFERENCES `payment_modes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `expenses_tax_1_id_foreign` FOREIGN KEY (`tax_1_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `expenses_tax_2_id_foreign` FOREIGN KEY (`tax_2_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.expenses: ~0 rows (approximately)
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;

-- Dumping structure for table crm.expense_categories
CREATE TABLE IF NOT EXISTS `expense_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `expense_categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.expense_categories: ~12 rows (approximately)
/*!40000 ALTER TABLE `expense_categories` DISABLE KEYS */;
INSERT INTO `expense_categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'Advertising', 'Advertising', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(2, 'Contractors', 'Contractors', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(3, 'Education and Training', 'Education and Training', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(4, 'Employee Benefits', 'Employee Benefits', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(5, 'Office Expenses & Postage', 'Office Expenses & Postage', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(6, 'Other Expenses', 'Other Expenses', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(7, 'Personal', 'Personal', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(8, 'Rent or Lease', 'Rent or Lease', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(9, 'Professional Services', 'Professional Services', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(10, 'Supplies', 'Supplies', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(11, 'Travel', 'Travel', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(12, 'Utilities', 'Utilities', '2021-02-17 13:31:42', '2021-02-17 13:31:42');
/*!40000 ALTER TABLE `expense_categories` ENABLE KEYS */;

-- Dumping structure for table crm.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table crm.goals
CREATE TABLE IF NOT EXISTS `goals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `goal_type` int(11) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `achievement` double DEFAULT NULL,
  `is_notify` tinyint(1) DEFAULT NULL,
  `is_not_notify` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `goals_subject_unique` (`subject`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.goals: ~2 rows (approximately)
/*!40000 ALTER TABLE `goals` DISABLE KEYS */;
INSERT INTO `goals` (`id`, `subject`, `description`, `goal_type`, `start_date`, `end_date`, `achievement`, `is_notify`, `is_not_notify`, `created_at`, `updated_at`) VALUES
	(2, 'test goal 3', '<p>test</p>', 4, '2021-02-24 00:00:00', '2021-02-28 00:00:00', 6, 1, 1, '2021-02-24 17:27:29', '2021-03-18 19:22:24'),
	(3, 'test-18-03-2021', NULL, 4, '2021-03-18 00:00:00', '2021-03-25 00:00:00', 15, 0, 0, '2021-03-18 19:19:46', '2021-03-18 19:19:46');
/*!40000 ALTER TABLE `goals` ENABLE KEYS */;

-- Dumping structure for table crm.goal_members
CREATE TABLE IF NOT EXISTS `goal_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `goal_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goal_members_user_id_foreign` (`user_id`),
  KEY `goal_members_goal_id_foreign` (`goal_id`),
  CONSTRAINT `goal_members_goal_id_foreign` FOREIGN KEY (`goal_id`) REFERENCES `goals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `goal_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.goal_members: ~0 rows (approximately)
/*!40000 ALTER TABLE `goal_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `goal_members` ENABLE KEYS */;

-- Dumping structure for table crm.goal_types
CREATE TABLE IF NOT EXISTS `goal_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `goal_types_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.goal_types: ~0 rows (approximately)
/*!40000 ALTER TABLE `goal_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `goal_types` ENABLE KEYS */;

-- Dumping structure for table crm.invoices
CREATE TABLE IF NOT EXISTS `invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `invoice_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_date` date NOT NULL,
  `due_date` date DEFAULT NULL,
  `sales_agent_id` int(10) unsigned DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `discount_type` int(11) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `admin_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` int(11) NOT NULL,
  `client_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `term_conditions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `adjustment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `total_amount` double DEFAULT NULL,
  `payment_status` int(11) DEFAULT NULL,
  `discount_symbol` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoices_customer_id_foreign` (`customer_id`),
  KEY `invoices_sales_agent_id_foreign` (`sales_agent_id`),
  CONSTRAINT `invoices_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoices_sales_agent_id_foreign` FOREIGN KEY (`sales_agent_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.invoices: ~6 rows (approximately)
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` (`id`, `title`, `customer_id`, `invoice_number`, `invoice_date`, `due_date`, `sales_agent_id`, `currency`, `discount_type`, `discount`, `admin_text`, `unit`, `client_note`, `term_conditions`, `sub_total`, `adjustment`, `total_amount`, `payment_status`, `discount_symbol`, `created_at`, `updated_at`) VALUES
	(1, 'test invoice', 1, 'RXCUL8', '2021-02-17', '2021-02-24', NULL, 0, 0, 0, 'This is the admin note of the InfyCRM project.', 1, 'This is the client note of the InfyCRM project.', 'This Infycrm project is follow all term and conditions and privacy.', 3000, '0', 3000, 4, NULL, '2021-02-17 14:22:48', '2021-02-18 14:52:11'),
	(2, 'test invoice 2', 1, 'YXJWE6', '2021-02-17', '2021-02-23', NULL, 0, 0, 0, 'This is the admin note of the InfyCRM project.', 1, 'This is the client note of the InfyCRM project.', 'This Infycrm project is follow all term and conditions and privacy.', 3000, '0', 3030, 2, NULL, '2021-02-17 16:33:35', '2021-02-20 15:21:30'),
	(3, 'test invoice 4', 1, 'CZ1UB7', '2021-02-17', '2021-02-23', NULL, 0, 0, 0, 'This is the admin note of the InfyCRM project.', 1, 'This is the client note of the InfyCRM project.', 'This Infycrm project is follow all term and conditions and privacy.', 2000, '0', 2020, 0, NULL, '2021-02-17 17:10:02', '2021-02-17 17:10:02'),
	(4, 'test sasas &amp; dsreseafds asaerea fgfsggdsgs 5', 1, '9HZNVY', '2021-02-23', '2021-02-25', NULL, 0, 0, 0, 'This is the admin note of the InfyCRM project.', 1, 'This is the client note of the InfyCRM project.', 'This Infycrm project is follow all term and conditions and privacy.', 7000, '0', 7140, 2, 0, '2021-02-23 19:47:08', '2021-03-08 19:02:38'),
	(5, 'test 5', 2, 'WZLUO6', '2021-02-11', '2021-02-24', NULL, 0, 0, 0, NULL, 1, NULL, NULL, 8000, '0', 8100, 2, 0, '2021-03-08 17:04:47', '2021-03-13 19:27:39'),
	(8, 'test sffsf', 1, 'WQ7DUQ', '2021-03-13', '2021-03-24', NULL, 0, 0, 0, 'This is the admin note of the InfyCRM project.', 1, 'This is the client note of the InfyCRM project.', 'This Infycrm project is follow all term and conditions and privacy.', 5000, '0', 5150, 2, NULL, '2021-03-13 19:34:27', '2021-03-13 19:34:52');
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;

-- Dumping structure for table crm.invoice_addresses
CREATE TABLE IF NOT EXISTS `invoice_addresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int(10) unsigned NOT NULL,
  `type` int(11) NOT NULL,
  `street` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_addresses_invoice_id_foreign` (`invoice_id`),
  CONSTRAINT `invoice_addresses_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.invoice_addresses: ~0 rows (approximately)
/*!40000 ALTER TABLE `invoice_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_addresses` ENABLE KEYS */;

-- Dumping structure for table crm.invoice_payment_modes
CREATE TABLE IF NOT EXISTS `invoice_payment_modes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_mode_id` int(10) unsigned NOT NULL,
  `invoice_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_payment_modes_payment_mode_id_foreign` (`payment_mode_id`),
  KEY `invoice_payment_modes_invoice_id_foreign` (`invoice_id`),
  CONSTRAINT `invoice_payment_modes_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoice_payment_modes_payment_mode_id_foreign` FOREIGN KEY (`payment_mode_id`) REFERENCES `payment_modes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.invoice_payment_modes: ~14 rows (approximately)
/*!40000 ALTER TABLE `invoice_payment_modes` DISABLE KEYS */;
INSERT INTO `invoice_payment_modes` (`id`, `payment_mode_id`, `invoice_id`, `created_at`, `updated_at`) VALUES
	(1, 3, 1, NULL, NULL),
	(2, 3, 2, NULL, NULL),
	(3, 3, 3, NULL, NULL),
	(5, 2, 4, NULL, NULL),
	(6, 1, 5, NULL, NULL),
	(7, 2, 5, NULL, NULL),
	(8, 5, 5, NULL, NULL),
	(9, 6, 5, NULL, NULL),
	(10, 7, 5, NULL, NULL),
	(11, 8, 5, NULL, NULL),
	(12, 9, 5, NULL, NULL),
	(13, 10, 5, NULL, NULL),
	(14, 11, 5, NULL, NULL),
	(17, 2, 8, NULL, NULL);
/*!40000 ALTER TABLE `invoice_payment_modes` ENABLE KEYS */;

-- Dumping structure for table crm.items
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` double NOT NULL,
  `tax_1_id` int(11) DEFAULT NULL,
  `tax_2_id` int(11) DEFAULT NULL,
  `item_group_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `items_item_group_id_foreign` (`item_group_id`),
  CONSTRAINT `items_item_group_id_foreign` FOREIGN KEY (`item_group_id`) REFERENCES `item_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.items: ~3 rows (approximately)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`id`, `title`, `description`, `rate`, `tax_1_id`, `tax_2_id`, `item_group_id`, `created_at`, `updated_at`) VALUES
	(1, 'test 2', '<p>testing &amp; sfefse</p>', 5000, 2, 2, 3, '2021-02-25 17:17:26', '2021-03-13 20:42:28'),
	(2, 'test esee', '<p>test</p>', 5000, 1, 2, 6, '2021-03-08 18:46:50', '2021-03-08 18:46:50'),
	(3, 'test', NULL, 45100, 1, 2, 3, '2021-03-13 20:42:04', '2021-03-13 20:42:04');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Dumping structure for table crm.item_groups
CREATE TABLE IF NOT EXISTS `item_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_groups_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.item_groups: ~7 rows (approximately)
/*!40000 ALTER TABLE `item_groups` DISABLE KEYS */;
INSERT INTO `item_groups` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'Consultant Services', 'Pain find that follow. I feel more than that, but that\'s dishonor, with a grief and\r\n        a lot.It is extremely quite right that that.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(2, 'LCD TV ', ' Born to those who discovered it.Present suffering is nothing more than that.It is the pleasure of him\r\n        who is willing, or.', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(3, 'MacBook Pro &amp;\r\nIphone\r\n', '<p>The distinction, however, is easier, to the accepted indeed. Seeks to provide for them.</p>', '2021-02-17 13:31:42', '2021-03-02 18:37:42'),
	(4, 'Marketing Services', 'Thus was born and will never interfere either. And to explain how he desires.', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(5, 'SEO Optimization', 'He who does not, therefore, the body itself in. Or they are rejecting it.', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(6, 'USB Stick', 'All but one reason. We regard any who are in a assumenda that he would consent. And it is because of it.', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(8, 'test', NULL, '2021-03-13 20:48:29', '2021-03-13 20:48:29');
/*!40000 ALTER TABLE `item_groups` ENABLE KEYS */;

-- Dumping structure for table crm.languages
CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.languages: ~9 rows (approximately)
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'en', 'English', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(2, 'es', 'Spanish', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(3, 'fr', 'French', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(4, 'de', 'German', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(5, 'ru', 'Russian', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(6, 'pt', 'Portuguese', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(7, 'ar', 'Arabic', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(8, 'zh', 'Chinese', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(9, 'tr', 'Turkish', '2021-02-17 13:31:42', '2021-02-17 13:31:42');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;

-- Dumping structure for table crm.leads
CREATE TABLE IF NOT EXISTS `leads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status_id` int(10) unsigned NOT NULL,
  `source_id` int(10) unsigned NOT NULL,
  `assign_to` int(10) unsigned DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_budget` double DEFAULT NULL,
  `default_language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publicc` int(11) DEFAULT NULL,
  `lead_convert_customer` tinyint(1) NOT NULL DEFAULT 0,
  `lead_convert_date` date DEFAULT NULL,
  `contacted_today` int(11) DEFAULT NULL,
  `date_contacted` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leads_status_id_foreign` (`status_id`),
  KEY `leads_source_id_foreign` (`source_id`),
  KEY `leads_assign_to_foreign` (`assign_to`),
  CONSTRAINT `leads_assign_to_foreign` FOREIGN KEY (`assign_to`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `leads_source_id_foreign` FOREIGN KEY (`source_id`) REFERENCES `lead_sources` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `leads_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `lead_statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.leads: ~0 rows (approximately)
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;

-- Dumping structure for table crm.lead_sources
CREATE TABLE IF NOT EXISTS `lead_sources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lead_sources_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.lead_sources: ~12 rows (approximately)
/*!40000 ALTER TABLE `lead_sources` DISABLE KEYS */;
INSERT INTO `lead_sources` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Google AdWords', '2021-02-17 13:31:42', '2021-02-23 12:36:03'),
	(2, 'Other Search Engines', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(3, 'Google (organic)', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(4, 'Social Media (Facebook, Twitter etc)', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(5, 'Cold Calling/Telemarketing', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(6, 'Advertising', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(7, 'Custom Referral', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(8, 'Expo/Seminar', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(12, 'test', '2021-02-23 12:51:45', '2021-03-11 19:32:20'),
	(13, 'test 4 &amp; sdgss\r\n', '2021-02-23 12:52:01', '2021-03-02 18:10:53'),
	(14, 'test 5', '2021-02-23 12:52:17', '2021-02-23 12:52:17'),
	(15, 'etst', '2021-03-11 19:31:51', '2021-03-11 19:31:51');
/*!40000 ALTER TABLE `lead_sources` ENABLE KEYS */;

-- Dumping structure for table crm.lead_statuses
CREATE TABLE IF NOT EXISTS `lead_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.lead_statuses: ~7 rows (approximately)
/*!40000 ALTER TABLE `lead_statuses` DISABLE KEYS */;
INSERT INTO `lead_statuses` (`id`, `name`, `color`, `order`, `created_at`, `updated_at`) VALUES
	(1, 'Attempted', '#FF2D42', 2, '2021-02-17 13:31:42', '2021-03-02 16:47:22'),
	(2, 'Not Attempted', '#84C529', 1, '2021-02-17 13:31:42', '2021-03-02 16:37:35'),
	(3, 'Contacted', '#0000FF', 6, '2021-02-17 13:31:42', '2021-03-02 16:50:26'),
	(4, 'New Opportunity', '#c0c0c0', 4, '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(5, 'Additional Contact', '#03a9f4', 5, '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(6, 'In Progress', '#9C27B0', 3, '2021-02-17 13:31:42', '2021-03-02 16:50:40'),
	(8, 'test &amp; ysdd\r\n', '#3F51B5', 9, '2021-03-02 20:18:23', '2021-03-02 20:18:23');
/*!40000 ALTER TABLE `lead_statuses` ENABLE KEYS */;

-- Dumping structure for table crm.media
CREATE TABLE IF NOT EXISTS `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsive_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.media: ~7 rows (approximately)
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
	(1, 'App\\Models\\User', 2, 'profile', 'green-nature-hd-free-wallpaper-download', 'green-nature-hd-free-wallpaper-download.jpg', 'image/jpeg', 'public', 1113515, '[]', '[]', '[]', 1, '2021-02-22 18:25:17', '2021-02-22 18:25:17'),
	(2, 'App\\Models\\User', 26, 'profile', 'Beautiful-nature-house-HD-wallpapers-photo', 'Beautiful-nature-house-HD-wallpapers-photo.jpg', 'image/jpeg', 'public', 638382, '[]', '[]', '[]', 2, '2021-02-23 17:32:55', '2021-02-23 17:32:55'),
	(3, 'App\\Models\\Ticket', 1, 'tickets', 'PRO-WR1JRU', 'PRO-WR1JRU.pdf', 'application/pdf', 'public', 497462, '[]', '[]', '[]', 3, '2021-02-27 12:54:06', '2021-02-27 12:54:06'),
	(4, 'App\\Models\\Ticket', 1, 'tickets', 'PRO-X5LFW9', 'PRO-X5LFW9.pdf', 'application/pdf', 'public', 458072, '[]', '[]', '[]', 4, '2021-02-27 12:54:06', '2021-02-27 12:54:06'),
	(5, 'App\\Models\\Ticket', 1, 'tickets', 'INV-WFT2RJ', 'INV-WFT2RJ.pdf', 'application/pdf', 'public', 460101, '[]', '[]', '[]', 5, '2021-02-27 12:54:06', '2021-02-27 12:54:06'),
	(6, 'App\\Models\\Expense', 2, 'expense', 'INV-WFT2RJ', 'INV-WFT2RJ.pdf', 'application/pdf', 'public', 460101, '[]', '[]', '[]', 6, '2021-02-27 12:57:49', '2021-02-27 12:57:49'),
	(8, 'App\\Models\\Expense', 3, 'expense', 'green-nature-river-image-download-free-hd-photo-wallpaper', 'green-nature-river-image-download-free-hd-photo-wallpaper.jpg', 'image/jpeg', 'public', 616022, '[]', '[]', '[]', 7, '2021-03-06 15:05:49', '2021-03-06 15:05:49');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;

-- Dumping structure for table crm.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.migrations: ~79 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_05_03_000001_create_customer_columns', 1),
	(4, '2019_05_03_000002_create_subscriptions_table', 1),
	(5, '2019_05_03_000003_create_subscription_items_table', 1),
	(6, '2019_08_19_000000_create_failed_jobs_table', 1),
	(7, '2020_03_30_113645_create_languages_table', 1),
	(8, '2020_03_31_072201_create_tags_table', 1),
	(9, '2020_03_31_101748_create_customer_groups_table', 1),
	(10, '2020_04_02_120049_create_permission_tables', 1),
	(11, '2020_04_03_042555_create_article_groups_table', 1),
	(12, '2020_04_03_045459_create_predefined_replies_table', 1),
	(13, '2020_04_03_063710_create_customers_table', 1),
	(14, '2020_04_03_064745_create_address_table', 1),
	(15, '2020_04_03_080033_create_ticket_priorities_table', 1),
	(16, '2020_04_03_091117_create_expense_categories_table', 1),
	(17, '2020_04_03_113351_create_customer_to_customer_groups_table', 1),
	(18, '2020_04_03_123515_create_services_table', 1),
	(19, '2020_04_04_035019_create_ticket_statuses_table', 1),
	(20, '2020_04_06_040305_create_lead_statuses_table', 1),
	(21, '2020_04_06_054337_create_lead_sources_table', 1),
	(22, '2020_04_06_055647_create_item_groups_table', 1),
	(23, '2020_04_06_064803_create_tax_rates_table', 1),
	(24, '2020_04_06_065009_create_announcements_table', 1),
	(25, '2020_04_06_083033_create_articles_table', 1),
	(26, '2020_04_06_095554_create_payment_modes_table', 1),
	(27, '2020_04_07_042816_create_items_table', 1),
	(28, '2020_04_07_055247_create_contacts_table', 1),
	(29, '2020_04_08_042058_create_contract_types_table', 1),
	(30, '2020_04_08_060610_create_departments_table', 1),
	(31, '2020_04_08_061359_create_tickets_table', 1),
	(32, '2020_04_08_094756_add_type_column_into_permissions_table', 1),
	(33, '2020_04_08_113224_create_invoices_table', 1),
	(34, '2020_04_09_052358_create_invoice_addresses_table', 1),
	(35, '2020_04_09_084032_create_taggables_table', 1),
	(36, '2020_04_09_095706_create_invoice_payment_modes_table', 1),
	(37, '2020_04_09_114622_create_sales_items_table', 1),
	(38, '2020_04_10_043112_create_media_table', 1),
	(39, '2020_04_10_070725_create_email_notifications_table', 1),
	(40, '2020_04_10_103613_create_user_departments_table', 1),
	(41, '2020_04_14_063726_create_notes_table', 1),
	(42, '2020_04_14_065429_create_contact_email_notifications_table', 1),
	(43, '2020_04_15_092420_create_reminders_table', 1),
	(44, '2020_04_15_112744_create_sales_items_taxes_table', 1),
	(45, '2020_04_16_054536_create_projects_table', 1),
	(46, '2020_04_16_075039_create_sales_taxes_table', 1),
	(47, '2020_04_17_101231_create_project_members_table', 1),
	(48, '2020_04_20_051641_create_expenses_table', 1),
	(49, '2020_04_20_082756_create_comments_table', 1),
	(50, '2020_04_20_090457_add_goal_types_table', 1),
	(51, '2020_04_20_111756_add_goals_table', 1),
	(52, '2020_04_20_124358_create_leads_table', 1),
	(53, '2020_04_21_114258_add_contracts_table', 1),
	(54, '2020_04_22_082049_create_payments_table', 1),
	(55, '2020_04_22_085449_add_settings_table', 1),
	(56, '2020_04_23_060014_create_credit_notes_table', 1),
	(57, '2020_04_23_060243_create_credit_note_addresses_table', 1),
	(58, '2020_04_24_054022_create_email_templates_table', 1),
	(59, '2020_04_27_045332_create_proposals_table', 1),
	(60, '2020_04_27_061619_create_estimates_table', 1),
	(61, '2020_04_27_100038_create_estimate_addresses_table', 1),
	(62, '2020_04_28_122023_create_proposal_addresses_table', 1),
	(63, '2020_07_06_045925_add_new_fields_into_users_table', 1),
	(64, '2020_07_14_134831_create_tasks_table', 1),
	(65, '2020_07_31_095218_add_image_field_in_articles_table', 1),
	(66, '2020_08_24_052215_create_project_contacts_table', 1),
	(67, '2020_09_02_130829_create_goal_members_table', 1),
	(68, '2020_12_10_062217_add_status_field_to_announcements_table', 1),
	(69, '2020_12_10_114422_add_status_filed_to_reminders_table', 1),
	(70, '2020_12_19_061159_add_country_to_leads_table', 1),
	(71, '2020_12_25_074509_drop_predefine_relation_on_tickets_table', 1),
	(72, '2020_12_25_093030_drop_department_relation_on_tickets_table', 1),
	(73, '2020_12_25_111608_drop_foreign_key_to_invoices_table', 1),
	(74, '2020_12_25_111700_drop_foreign_key_to_estimates_table', 1),
	(75, '2020_12_26_045434_drop_member_id_foreign_key_on_tasks_table', 1),
	(76, '2021_01_04_090933_add_stripe_id_and_meta_fields_in_payments_table', 1),
	(77, '2021_01_19_124232_make_start_date_nullable_in_tasks_table', 1),
	(78, '2021_01_20_050318_make_priority_and_service_field_nullable_in_tickets_table', 1),
	(79, '2021_03_10_054614_create_activity_log_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table crm.model_has_permissions
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.model_has_permissions: ~246 rows (approximately)
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
	(1, 'App\\Models\\User', 1),
	(1, 'App\\Models\\User', 3),
	(1, 'App\\Models\\User', 5),
	(1, 'App\\Models\\User', 6),
	(1, 'App\\Models\\User', 9),
	(1, 'App\\Models\\User', 10),
	(1, 'App\\Models\\User', 12),
	(1, 'App\\Models\\User', 13),
	(1, 'App\\Models\\User', 34),
	(2, 'App\\Models\\User', 1),
	(2, 'App\\Models\\User', 6),
	(2, 'App\\Models\\User', 9),
	(3, 'App\\Models\\User', 1),
	(3, 'App\\Models\\User', 3),
	(3, 'App\\Models\\User', 6),
	(3, 'App\\Models\\User', 10),
	(3, 'App\\Models\\User', 12),
	(4, 'App\\Models\\User', 1),
	(4, 'App\\Models\\User', 9),
	(4, 'App\\Models\\User', 10),
	(4, 'App\\Models\\User', 12),
	(5, 'App\\Models\\User', 1),
	(5, 'App\\Models\\User', 3),
	(5, 'App\\Models\\User', 9),
	(5, 'App\\Models\\User', 10),
	(5, 'App\\Models\\User', 12),
	(6, 'App\\Models\\User', 1),
	(6, 'App\\Models\\User', 3),
	(6, 'App\\Models\\User', 5),
	(6, 'App\\Models\\User', 9),
	(6, 'App\\Models\\User', 12),
	(7, 'App\\Models\\User', 1),
	(7, 'App\\Models\\User', 3),
	(7, 'App\\Models\\User', 9),
	(7, 'App\\Models\\User', 10),
	(7, 'App\\Models\\User', 34),
	(8, 'App\\Models\\User', 1),
	(8, 'App\\Models\\User', 3),
	(8, 'App\\Models\\User', 5),
	(8, 'App\\Models\\User', 12),
	(8, 'App\\Models\\User', 13),
	(9, 'App\\Models\\User', 1),
	(9, 'App\\Models\\User', 5),
	(9, 'App\\Models\\User', 12),
	(9, 'App\\Models\\User', 13),
	(10, 'App\\Models\\User', 1),
	(10, 'App\\Models\\User', 9),
	(10, 'App\\Models\\User', 12),
	(10, 'App\\Models\\User', 13),
	(10, 'App\\Models\\User', 34),
	(11, 'App\\Models\\User', 1),
	(11, 'App\\Models\\User', 5),
	(11, 'App\\Models\\User', 9),
	(11, 'App\\Models\\User', 12),
	(11, 'App\\Models\\User', 34),
	(12, 'App\\Models\\User', 1),
	(12, 'App\\Models\\User', 3),
	(12, 'App\\Models\\User', 5),
	(12, 'App\\Models\\User', 9),
	(12, 'App\\Models\\User', 12),
	(12, 'App\\Models\\User', 13),
	(12, 'App\\Models\\User', 34),
	(13, 'App\\Models\\User', 1),
	(13, 'App\\Models\\User', 3),
	(13, 'App\\Models\\User', 5),
	(13, 'App\\Models\\User', 6),
	(13, 'App\\Models\\User', 10),
	(13, 'App\\Models\\User', 12),
	(13, 'App\\Models\\User', 13),
	(14, 'App\\Models\\User', 1),
	(14, 'App\\Models\\User', 9),
	(14, 'App\\Models\\User', 13),
	(14, 'App\\Models\\User', 34),
	(15, 'App\\Models\\User', 1),
	(15, 'App\\Models\\User', 6),
	(15, 'App\\Models\\User', 12),
	(15, 'App\\Models\\User', 13),
	(15, 'App\\Models\\User', 34),
	(16, 'App\\Models\\User', 1),
	(16, 'App\\Models\\User', 3),
	(16, 'App\\Models\\User', 5),
	(16, 'App\\Models\\User', 6),
	(16, 'App\\Models\\User', 9),
	(17, 'App\\Models\\User', 1),
	(17, 'App\\Models\\User', 10),
	(17, 'App\\Models\\User', 12),
	(17, 'App\\Models\\User', 34),
	(18, 'App\\Models\\User', 1),
	(18, 'App\\Models\\User', 5),
	(18, 'App\\Models\\User', 6),
	(18, 'App\\Models\\User', 10),
	(19, 'App\\Models\\User', 1),
	(19, 'App\\Models\\User', 3),
	(19, 'App\\Models\\User', 5),
	(19, 'App\\Models\\User', 6),
	(19, 'App\\Models\\User', 12),
	(19, 'App\\Models\\User', 13),
	(19, 'App\\Models\\User', 34),
	(20, 'App\\Models\\User', 1),
	(20, 'App\\Models\\User', 3),
	(20, 'App\\Models\\User', 5),
	(20, 'App\\Models\\User', 10),
	(20, 'App\\Models\\User', 12),
	(20, 'App\\Models\\User', 13),
	(21, 'App\\Models\\User', 1),
	(21, 'App\\Models\\User', 6),
	(21, 'App\\Models\\User', 9),
	(21, 'App\\Models\\User', 34),
	(22, 'App\\Models\\User', 1),
	(22, 'App\\Models\\User', 3),
	(22, 'App\\Models\\User', 5),
	(22, 'App\\Models\\User', 6),
	(22, 'App\\Models\\User', 9),
	(22, 'App\\Models\\User', 10),
	(22, 'App\\Models\\User', 12),
	(22, 'App\\Models\\User', 34),
	(23, 'App\\Models\\User', 1),
	(23, 'App\\Models\\User', 5),
	(23, 'App\\Models\\User', 6),
	(23, 'App\\Models\\User', 9),
	(23, 'App\\Models\\User', 10),
	(23, 'App\\Models\\User', 13),
	(24, 'App\\Models\\User', 1),
	(24, 'App\\Models\\User', 3),
	(24, 'App\\Models\\User', 5),
	(24, 'App\\Models\\User', 6),
	(24, 'App\\Models\\User', 9),
	(24, 'App\\Models\\User', 34),
	(25, 'App\\Models\\User', 1),
	(25, 'App\\Models\\User', 10),
	(25, 'App\\Models\\User', 12),
	(26, 'App\\Models\\User', 1),
	(26, 'App\\Models\\User', 5),
	(26, 'App\\Models\\User', 6),
	(26, 'App\\Models\\User', 9),
	(26, 'App\\Models\\User', 12),
	(26, 'App\\Models\\User', 13),
	(26, 'App\\Models\\User', 34),
	(27, 'App\\Models\\User', 1),
	(27, 'App\\Models\\User', 5),
	(27, 'App\\Models\\User', 6),
	(27, 'App\\Models\\User', 10),
	(28, 'App\\Models\\User', 1),
	(28, 'App\\Models\\User', 3),
	(28, 'App\\Models\\User', 12),
	(28, 'App\\Models\\User', 34),
	(29, 'App\\Models\\User', 1),
	(29, 'App\\Models\\User', 3),
	(29, 'App\\Models\\User', 5),
	(29, 'App\\Models\\User', 6),
	(29, 'App\\Models\\User', 10),
	(29, 'App\\Models\\User', 13),
	(30, 'App\\Models\\User', 1),
	(30, 'App\\Models\\User', 6),
	(30, 'App\\Models\\User', 9),
	(30, 'App\\Models\\User', 10),
	(30, 'App\\Models\\User', 13),
	(30, 'App\\Models\\User', 34),
	(31, 'App\\Models\\User', 1),
	(31, 'App\\Models\\User', 3),
	(31, 'App\\Models\\User', 5),
	(31, 'App\\Models\\User', 6),
	(31, 'App\\Models\\User', 9),
	(31, 'App\\Models\\User', 10),
	(31, 'App\\Models\\User', 12),
	(31, 'App\\Models\\User', 34),
	(32, 'App\\Models\\User', 1),
	(32, 'App\\Models\\User', 3),
	(32, 'App\\Models\\User', 12),
	(33, 'App\\Models\\User', 1),
	(33, 'App\\Models\\User', 3),
	(33, 'App\\Models\\User', 9),
	(33, 'App\\Models\\User', 10),
	(33, 'App\\Models\\User', 13),
	(34, 'App\\Models\\User', 1),
	(34, 'App\\Models\\User', 3),
	(34, 'App\\Models\\User', 9),
	(34, 'App\\Models\\User', 10),
	(34, 'App\\Models\\User', 12),
	(34, 'App\\Models\\User', 13),
	(34, 'App\\Models\\User', 34),
	(35, 'App\\Models\\User', 1),
	(35, 'App\\Models\\User', 2),
	(35, 'App\\Models\\User', 15),
	(35, 'App\\Models\\User', 16),
	(35, 'App\\Models\\User', 17),
	(35, 'App\\Models\\User', 20),
	(35, 'App\\Models\\User', 21),
	(35, 'App\\Models\\User', 22),
	(35, 'App\\Models\\User', 24),
	(35, 'App\\Models\\User', 26),
	(35, 'App\\Models\\User', 27),
	(35, 'App\\Models\\User', 28),
	(35, 'App\\Models\\User', 29),
	(35, 'App\\Models\\User', 30),
	(35, 'App\\Models\\User', 31),
	(35, 'App\\Models\\User', 36),
	(36, 'App\\Models\\User', 1),
	(36, 'App\\Models\\User', 2),
	(36, 'App\\Models\\User', 16),
	(36, 'App\\Models\\User', 17),
	(36, 'App\\Models\\User', 21),
	(36, 'App\\Models\\User', 23),
	(36, 'App\\Models\\User', 24),
	(36, 'App\\Models\\User', 25),
	(36, 'App\\Models\\User', 27),
	(36, 'App\\Models\\User', 31),
	(36, 'App\\Models\\User', 36),
	(37, 'App\\Models\\User', 1),
	(37, 'App\\Models\\User', 2),
	(37, 'App\\Models\\User', 16),
	(37, 'App\\Models\\User', 18),
	(37, 'App\\Models\\User', 19),
	(37, 'App\\Models\\User', 24),
	(37, 'App\\Models\\User', 25),
	(37, 'App\\Models\\User', 27),
	(37, 'App\\Models\\User', 29),
	(37, 'App\\Models\\User', 31),
	(38, 'App\\Models\\User', 1),
	(38, 'App\\Models\\User', 2),
	(38, 'App\\Models\\User', 15),
	(38, 'App\\Models\\User', 16),
	(38, 'App\\Models\\User', 18),
	(38, 'App\\Models\\User', 19),
	(38, 'App\\Models\\User', 20),
	(38, 'App\\Models\\User', 23),
	(38, 'App\\Models\\User', 26),
	(38, 'App\\Models\\User', 27),
	(38, 'App\\Models\\User', 28),
	(38, 'App\\Models\\User', 29),
	(38, 'App\\Models\\User', 30),
	(38, 'App\\Models\\User', 31),
	(38, 'App\\Models\\User', 36),
	(39, 'App\\Models\\User', 1),
	(39, 'App\\Models\\User', 2),
	(39, 'App\\Models\\User', 15),
	(39, 'App\\Models\\User', 17),
	(39, 'App\\Models\\User', 19),
	(39, 'App\\Models\\User', 22),
	(39, 'App\\Models\\User', 23),
	(39, 'App\\Models\\User', 24),
	(39, 'App\\Models\\User', 25),
	(39, 'App\\Models\\User', 28),
	(39, 'App\\Models\\User', 29),
	(39, 'App\\Models\\User', 31),
	(39, 'App\\Models\\User', 36);
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;

-- Dumping structure for table crm.model_has_roles
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.model_has_roles: ~28 rows (approximately)
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(1, 'App\\Models\\User', 1),
	(2, 'App\\Models\\User', 3),
	(2, 'App\\Models\\User', 5),
	(2, 'App\\Models\\User', 6),
	(2, 'App\\Models\\User', 9),
	(2, 'App\\Models\\User', 10),
	(2, 'App\\Models\\User', 12),
	(2, 'App\\Models\\User', 13),
	(2, 'App\\Models\\User', 34),
	(3, 'App\\Models\\User', 2),
	(3, 'App\\Models\\User', 15),
	(3, 'App\\Models\\User', 16),
	(3, 'App\\Models\\User', 17),
	(3, 'App\\Models\\User', 18),
	(3, 'App\\Models\\User', 19),
	(3, 'App\\Models\\User', 20),
	(3, 'App\\Models\\User', 21),
	(3, 'App\\Models\\User', 22),
	(3, 'App\\Models\\User', 23),
	(3, 'App\\Models\\User', 24),
	(3, 'App\\Models\\User', 25),
	(3, 'App\\Models\\User', 26),
	(3, 'App\\Models\\User', 27),
	(3, 'App\\Models\\User', 28),
	(3, 'App\\Models\\User', 29),
	(3, 'App\\Models\\User', 30),
	(3, 'App\\Models\\User', 31),
	(3, 'App\\Models\\User', 36);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;

-- Dumping structure for table crm.notes
CREATE TABLE IF NOT EXISTS `notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `owner_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notes_added_by_foreign` (`added_by`),
  CONSTRAINT `notes_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.notes: ~0 rows (approximately)
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;

-- Dumping structure for table crm.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table crm.payments
CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `owner_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_received` double NOT NULL,
  `payment_date` datetime NOT NULL,
  `payment_mode` int(10) unsigned NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_mail_to_customer_contacts` tinyint(1) DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payments_payment_mode_foreign` (`payment_mode`),
  CONSTRAINT `payments_payment_mode_foreign` FOREIGN KEY (`payment_mode`) REFERENCES `payment_modes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.payments: ~4 rows (approximately)
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` (`id`, `owner_id`, `owner_type`, `amount_received`, `payment_date`, `payment_mode`, `transaction_id`, `note`, `send_mail_to_customer_contacts`, `stripe_id`, `meta`, `created_at`, `updated_at`) VALUES
	(1, 2, 'App\\Models\\Invoice', 3030, '2021-02-20 07:51:18', 3, '1234567890', '<p>test</p>', 0, NULL, NULL, '2021-02-20 15:21:30', '2021-02-20 15:21:30'),
	(2, 4, 'App\\Models\\Invoice', 7140, '2021-03-08 11:32:16', 2, '1234567890', '<p>Test &amp; testing\r\n</p>', 0, NULL, NULL, '2021-03-08 19:02:38', '2021-03-08 19:02:38'),
	(3, 5, 'App\\Models\\Invoice', 8100, '2021-03-13 11:57:27', 2, '1234567890', '<p>assasa</p>', 0, NULL, NULL, '2021-03-13 19:27:39', '2021-03-13 19:27:39'),
	(4, 8, 'App\\Models\\Invoice', 5150, '2021-03-13 12:04:40', 2, '1234567890', NULL, 0, NULL, NULL, '2021-03-13 19:34:52', '2021-03-13 19:34:52');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;

-- Dumping structure for table crm.payment_modes
CREATE TABLE IF NOT EXISTS `payment_modes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `payment_modes_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.payment_modes: ~11 rows (approximately)
/*!40000 ALTER TABLE `payment_modes` DISABLE KEYS */;
INSERT INTO `payment_modes` (`id`, `name`, `description`, `active`, `created_at`, `updated_at`) VALUES
	(1, 'Bank', NULL, 1, '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(2, 'Gold', NULL, 1, '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(3, 'Stripe', NULL, 0, '2021-02-17 13:31:44', '2021-02-24 12:47:33'),
	(5, 'test 2', '<p>eese</p>', 1, '2021-02-24 13:21:14', '2021-02-24 13:21:14'),
	(6, 'test', '<p>fsdfdsf</p>', 1, '2021-02-24 13:23:03', '2021-02-24 13:23:03'),
	(7, 'test 4', '<p>rerrsrrer</p>', 1, '2021-02-24 13:27:06', '2021-02-24 13:27:06'),
	(8, 'test 6', 'testing', 1, '2021-02-24 13:27:28', '2021-02-24 13:27:28'),
	(9, 'test 7', '<p>test</p>', 1, '2021-02-24 17:02:16', '2021-02-24 17:02:16'),
	(10, 'test 8', 'testing eweew', 1, '2021-02-24 17:03:11', '2021-02-24 17:03:11'),
	(11, 'test 9', 'test', 1, '2021-02-24 17:06:22', '2021-02-24 17:06:22'),
	(13, 'test 332', 'tettts', 0, '2021-02-24 17:06:55', '2021-03-13 20:18:35');
/*!40000 ALTER TABLE `payment_modes` ENABLE KEYS */;

-- Dumping structure for table crm.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.permissions: ~39 rows (approximately)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `type`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'manage_customer_groups', 'Manage Customer Groups', NULL, 'Customers', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(2, 'manage_customers', 'Manage Customers', NULL, 'Customers', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(3, 'manage_staff_member', 'Manage Staff Member', NULL, 'Members', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(4, 'manage_article_groups', 'Manage Article Groups', NULL, 'Articles', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(5, 'manage_articles', 'Manage Articles', NULL, 'Articles', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(6, 'manage_tags', 'Manage Tags', NULL, 'Tags', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(7, 'manage_leads', 'Manage Leads', NULL, 'Leads', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(8, 'manage_lead_status', 'Manage Lead Status', NULL, 'Leads', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(9, 'manage_tasks', 'Manage Tasks', NULL, 'Tasks', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(10, 'manage_ticket_priority', 'Manage Ticket Priority', NULL, 'Tickets', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(11, 'manage_ticket_statuses', 'Manage Ticket Statuses', NULL, 'Tickets', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(12, 'manage_tickets', 'Manage Tickets', NULL, 'Tickets', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(13, 'manage_invoices', 'Manage Invoices', NULL, 'Invoices', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(14, 'manage_payments', 'Manage Payments', NULL, 'Payments', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(15, 'manage_payment_mode', 'Manage Payment Mode', NULL, 'Payments', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(16, 'manage_credit_notes', 'Manage Credit Note', NULL, 'Credit Note', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(17, 'manage_proposals', 'Manage Proposals', NULL, 'Proposals', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(18, 'manage_estimates', 'Manage Estimates', NULL, 'Estimates', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(19, 'manage_departments', 'Manage Departments', NULL, 'Departments', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(20, 'manage_predefined_replies', 'Manage Predefined Replies', NULL, 'Predefined Replies', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(21, 'manage_expense_category', 'Manage Expense Category', NULL, 'Expenses', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(22, 'manage_expenses', 'Manage Expenses', NULL, 'Expenses', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(23, 'manage_services', 'Manage Services', NULL, 'Services', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(24, 'manage_items', 'Manage Items', NULL, 'Items', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(25, 'manage_items_groups', 'Manage Items Groups', NULL, 'Items', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(26, 'manage_tax_rates', 'Manage Tax Rates', NULL, 'TaxRate', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(27, 'manage_announcements', 'Manage Announcements', NULL, 'Announcements', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(28, 'manage_calenders', 'Manage Calenders', NULL, 'Calenders', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(29, 'manage_lead_sources', 'Manage Lead Sources', NULL, 'Leads', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(30, 'manage_contracts_types', 'Manage Contract Types', NULL, 'Contracts', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(31, 'manage_contracts', 'Manage Contracts', NULL, 'Contracts', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(32, 'manage_projects', 'Manage Projects', NULL, 'Projects', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(33, 'manage_goals', 'Manage Goals', NULL, 'Goals', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(34, 'manage_settings', 'Manage Settings', NULL, 'Settings', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(35, 'contact_projects', 'Contact Projects', NULL, 'Contacts', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(36, 'contact_invoices', 'Contact Invoices', NULL, 'Contacts', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(37, 'contact_proposals', 'Contact Proposals', NULL, 'Contacts', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(38, 'contact_contracts', 'Contact Contracts', NULL, 'Contacts', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(39, 'contact_estimates', 'Contact Estimates', NULL, 'Contacts', 'web', '2021-02-17 13:31:42', '2021-02-17 13:31:42');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Dumping structure for table crm.predefined_replies
CREATE TABLE IF NOT EXISTS `predefined_replies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reply_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.predefined_replies: ~0 rows (approximately)
/*!40000 ALTER TABLE `predefined_replies` DISABLE KEYS */;
INSERT INTO `predefined_replies` (`id`, `reply_name`, `body`, `created_at`, `updated_at`) VALUES
	(1, 'test &amp; testing\r\n', '<p>testing</p>', '2021-02-23 20:48:07', '2021-03-02 20:30:07');
/*!40000 ALTER TABLE `predefined_replies` ENABLE KEYS */;

-- Dumping structure for table crm.projects
CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `calculate_progress_through_tasks` tinyint(1) DEFAULT NULL,
  `progress` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `estimated_hours` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date NOT NULL,
  `deadline` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_email` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `projects_customer_id_foreign` (`customer_id`),
  CONSTRAINT `projects_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.projects: ~2 rows (approximately)
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` (`id`, `project_name`, `customer_id`, `calculate_progress_through_tasks`, `progress`, `billing_type`, `status`, `estimated_hours`, `start_date`, `deadline`, `description`, `send_email`, `created_at`, `updated_at`) VALUES
	(1, 'test project &amp; fsfdfs\r\n', 1, 0, '56', 1, 1, NULL, '2021-02-17', '2021-02-24', NULL, 0, '2021-02-17 14:54:28', '2021-03-02 18:40:11'),
	(2, 'test project 2', 2, 1, '0', 1, 1, NULL, '2021-02-17', '2021-02-26', NULL, 0, '2021-02-17 14:59:10', '2021-03-11 19:48:58');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;

-- Dumping structure for table crm.project_contacts
CREATE TABLE IF NOT EXISTS `project_contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contact_id` int(10) unsigned NOT NULL,
  `project_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_contacts_contact_id_foreign` (`contact_id`),
  KEY `project_contacts_project_id_foreign` (`project_id`),
  CONSTRAINT `project_contacts_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `project_contacts_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.project_contacts: ~0 rows (approximately)
/*!40000 ALTER TABLE `project_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_contacts` ENABLE KEYS */;

-- Dumping structure for table crm.project_members
CREATE TABLE IF NOT EXISTS `project_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `owner_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_members_user_id_foreign` (`user_id`),
  CONSTRAINT `project_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.project_members: ~0 rows (approximately)
/*!40000 ALTER TABLE `project_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_members` ENABLE KEYS */;

-- Dumping structure for table crm.proposals
CREATE TABLE IF NOT EXISTS `proposals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `proposal_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `related_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime NOT NULL,
  `open_till` datetime DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `discount_type` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `assigned_user_id` int(11) DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `unit` int(11) NOT NULL,
  `sub_total` double DEFAULT NULL,
  `adjustment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `total_amount` double DEFAULT NULL,
  `payment_status` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `owner_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_symbol` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `proposals_proposal_number_unique` (`proposal_number`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.proposals: ~2 rows (approximately)
/*!40000 ALTER TABLE `proposals` DISABLE KEYS */;
INSERT INTO `proposals` (`id`, `proposal_number`, `title`, `related_to`, `date`, `open_till`, `currency`, `discount_type`, `status`, `assigned_user_id`, `phone`, `discount`, `unit`, `sub_total`, `adjustment`, `total_amount`, `payment_status`, `owner_id`, `owner_type`, `discount_symbol`, `created_at`, `updated_at`) VALUES
	(5, 'LVLQ4Y', 'test proposal', '2', '2021-02-20 00:00:00', '2021-02-25 00:00:00', 0, 0, 2, 3, NULL, 0, 1, 3000, '0', 3060, 1, 1, 'App\\Models\\Customer', NULL, '2021-02-20 15:09:51', '2021-02-20 15:09:51'),
	(6, 'QIWL1H', 'test2', '2', '2021-02-11 00:00:00', '2021-02-24 00:00:00', 0, 0, 2, 3, NULL, 0, 1, 8000, '0', 8160, 1, 2, 'App\\Models\\Customer', 0, '2021-02-23 19:49:00', '2021-03-12 12:21:04');
/*!40000 ALTER TABLE `proposals` ENABLE KEYS */;

-- Dumping structure for table crm.proposal_addresses
CREATE TABLE IF NOT EXISTS `proposal_addresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `proposal_id` int(10) unsigned NOT NULL,
  `type` int(11) NOT NULL,
  `street` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `proposal_addresses_proposal_id_foreign` (`proposal_id`),
  CONSTRAINT `proposal_addresses_proposal_id_foreign` FOREIGN KEY (`proposal_id`) REFERENCES `proposals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.proposal_addresses: ~0 rows (approximately)
/*!40000 ALTER TABLE `proposal_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `proposal_addresses` ENABLE KEYS */;

-- Dumping structure for table crm.reminders
CREATE TABLE IF NOT EXISTS `reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `owner_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notified_date` datetime NOT NULL,
  `reminder_to` int(10) unsigned NOT NULL,
  `added_by` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_notified` tinyint(1) DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reminders_reminder_to_foreign` (`reminder_to`),
  CONSTRAINT `reminders_reminder_to_foreign` FOREIGN KEY (`reminder_to`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.reminders: ~0 rows (approximately)
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;

-- Dumping structure for table crm.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.roles: ~3 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `guard_name`, `is_default`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'Admin', NULL, 'web', 1, '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(2, 'staff_member', 'Staff Member', NULL, 'web', 1, '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(3, 'client', 'Client', NULL, 'web', 1, '2021-02-17 13:31:43', '2021-02-17 13:31:43');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table crm.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.role_has_permissions: ~39 rows (approximately)
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
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
	(17, 1),
	(18, 1),
	(19, 1),
	(20, 1),
	(21, 1),
	(22, 1),
	(23, 1),
	(24, 1),
	(25, 1),
	(26, 1),
	(27, 1),
	(28, 1),
	(29, 1),
	(30, 1),
	(31, 1),
	(32, 1),
	(33, 1),
	(34, 1),
	(35, 1),
	(36, 1),
	(37, 1),
	(38, 1),
	(39, 1);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;

-- Dumping structure for table crm.sales_items
CREATE TABLE IF NOT EXISTS `sales_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `owner_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.sales_items: ~22 rows (approximately)
/*!40000 ALTER TABLE `sales_items` DISABLE KEYS */;
INSERT INTO `sales_items` (`id`, `owner_id`, `owner_type`, `item`, `description`, `quantity`, `rate`, `total`, `created_at`, `updated_at`) VALUES
	(3, 1, 'App\\Models\\Invoice', 'test item', NULL, 2, 1500, 3000, '2021-02-17 14:22:48', '2021-02-17 14:22:48'),
	(4, 2, 'App\\Models\\Invoice', 'test item 2', NULL, 2, 1500, 3000, '2021-02-17 16:33:35', '2021-02-17 16:33:35'),
	(5, 1, 'App\\Models\\CreditNote', 'test item', NULL, 2, 500, 1000, '2021-02-17 16:35:06', '2021-02-17 16:35:06'),
	(7, 3, 'App\\Models\\Invoice', 'test item 2', NULL, 2, 1000, 2000, '2021-02-17 17:10:02', '2021-02-17 17:10:02'),
	(8, 2, 'App\\Models\\Estimate', 'test item', NULL, 2, 1500, 3000, '2021-02-17 17:35:23', '2021-02-17 17:35:23'),
	(10, 2, 'App\\Models\\CreditNote', 'stationary', NULL, 2, 1500, 3000, '2021-02-17 17:47:34', '2021-02-17 17:47:34'),
	(13, 3, 'App\\Models\\CreditNote', 'test item', NULL, 2, 1000, 2000, '2021-02-20 12:31:30', '2021-02-20 12:31:30'),
	(14, 5, 'App\\Models\\Proposal', 'stationary', NULL, 2, 1500, 3000, '2021-02-20 15:09:51', '2021-02-20 15:09:51'),
	(15, 4, 'App\\Models\\CreditNote', 'stationary', NULL, 2, 1500, 3000, '2021-02-22 19:08:17', '2021-02-22 19:08:17'),
	(16, 5, 'App\\Models\\CreditNote', 'stationary', NULL, 2, 1500, 3000, '2021-02-22 19:16:48', '2021-02-22 19:16:48'),
	(29, 4, 'App\\Models\\Invoice', 'Computer Hard Disk, RAM &amp; Pen\r\nDrives', NULL, 2, 1000, 2000, '2021-03-08 18:58:11', '2021-03-08 18:58:11'),
	(30, 4, 'App\\Models\\Invoice', 'test &amp; resrsae\r\n', 'testing &amp; sfefse\r\n', 1, 5000, 5000, '2021-03-08 18:58:11', '2021-03-08 18:58:11'),
	(47, 5, 'App\\Models\\Invoice', 'test item', NULL, 2, 1500, 3000, '2021-03-12 11:57:21', '2021-03-12 11:57:21'),
	(48, 5, 'App\\Models\\Invoice', 'test &amp; resrsae\r\n', 'testing &amp; sfefse\r\n', 1, 5000, 5000, '2021-03-12 11:57:21', '2021-03-12 11:57:21'),
	(49, 9, 'App\\Models\\CreditNote', 'test esee', 'test', 1, 5000, 5000, '2021-03-12 12:09:04', '2021-03-12 12:09:04'),
	(50, 6, 'App\\Models\\CreditNote', 'stationary', NULL, 2, 1000, 2000, '2021-03-12 12:12:01', '2021-03-12 12:12:01'),
	(52, 6, 'App\\Models\\Proposal', 'test item', NULL, 2, 1500, 3000, '2021-03-12 12:21:04', '2021-03-12 12:21:04'),
	(53, 6, 'App\\Models\\Proposal', 'test &amp; resrsae\r\n', 'testing &amp; sfefse\r\n', 1, 5000, 5000, '2021-03-12 12:21:04', '2021-03-12 12:21:04'),
	(54, 4, 'App\\Models\\Estimate', 'test &amp; resrsae\r\n', 'testing &amp; sfefse\r\n', 1, 5000, 5000, '2021-03-12 12:30:59', '2021-03-12 12:30:59'),
	(55, 3, 'App\\Models\\Estimate', 'test item 2', NULL, 2, 1500, 3000, '2021-03-12 12:31:37', '2021-03-12 12:31:37'),
	(56, 3, 'App\\Models\\Estimate', 'test &amp; resrsae\r\n', 'testing &amp; sfefse\r\n', 1, 5000, 5000, '2021-03-12 12:31:37', '2021-03-12 12:31:37'),
	(57, 8, 'App\\Models\\Invoice', 'test esee', 'test', 1, 5000, 5000, '2021-03-13 19:34:28', '2021-03-13 19:34:28');
/*!40000 ALTER TABLE `sales_items` ENABLE KEYS */;

-- Dumping structure for table crm.sales_item_taxes
CREATE TABLE IF NOT EXISTS `sales_item_taxes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sales_item_id` int(10) unsigned NOT NULL,
  `tax_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sales_item_taxes_tax_id_foreign` (`tax_id`),
  KEY `sales_item_taxes_sales_item_id_foreign` (`sales_item_id`),
  CONSTRAINT `sales_item_taxes_sales_item_id_foreign` FOREIGN KEY (`sales_item_id`) REFERENCES `sales_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sales_item_taxes_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.sales_item_taxes: ~18 rows (approximately)
/*!40000 ALTER TABLE `sales_item_taxes` DISABLE KEYS */;
INSERT INTO `sales_item_taxes` (`id`, `sales_item_id`, `tax_id`, `created_at`, `updated_at`) VALUES
	(3, 4, 1, '2021-02-17 16:33:35', '2021-02-17 16:33:35'),
	(4, 7, 1, '2021-02-17 17:10:02', '2021-02-17 17:10:02'),
	(5, 8, 2, '2021-02-17 17:35:23', '2021-02-17 17:35:23'),
	(7, 10, 2, '2021-02-17 17:47:34', '2021-02-17 17:47:34'),
	(9, 14, 2, '2021-02-20 15:09:51', '2021-02-20 15:09:51'),
	(10, 16, 2, '2021-02-22 19:16:48', '2021-02-22 19:16:48'),
	(20, 29, 2, '2021-03-08 18:58:11', '2021-03-08 18:58:11'),
	(21, 30, 2, '2021-03-08 18:58:11', '2021-03-08 18:58:11'),
	(37, 48, 2, '2021-03-12 11:57:21', '2021-03-12 11:57:21'),
	(38, 49, 1, '2021-03-12 12:09:04', '2021-03-12 12:09:04'),
	(39, 49, 2, '2021-03-12 12:09:04', '2021-03-12 12:09:04'),
	(42, 52, 2, '2021-03-12 12:21:04', '2021-03-12 12:21:04'),
	(43, 53, 2, '2021-03-12 12:21:04', '2021-03-12 12:21:04'),
	(44, 54, 2, '2021-03-12 12:30:59', '2021-03-12 12:30:59'),
	(45, 55, 2, '2021-03-12 12:31:37', '2021-03-12 12:31:37'),
	(46, 56, 2, '2021-03-12 12:31:37', '2021-03-12 12:31:37'),
	(47, 57, 1, '2021-03-13 19:34:28', '2021-03-13 19:34:28'),
	(48, 57, 2, '2021-03-13 19:34:28', '2021-03-13 19:34:28');
/*!40000 ALTER TABLE `sales_item_taxes` ENABLE KEYS */;

-- Dumping structure for table crm.sales_taxes
CREATE TABLE IF NOT EXISTS `sales_taxes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `owner_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.sales_taxes: ~14 rows (approximately)
/*!40000 ALTER TABLE `sales_taxes` DISABLE KEYS */;
INSERT INTO `sales_taxes` (`id`, `owner_id`, `owner_type`, `tax`, `amount`, `created_at`, `updated_at`) VALUES
	(3, 2, 'App\\Models\\Invoice', '1', 30, '2021-02-17 16:33:35', '2021-02-17 16:33:35'),
	(4, 3, 'App\\Models\\Invoice', '1', 20, '2021-02-17 17:10:02', '2021-02-17 17:10:02'),
	(6, 2, 'App\\Models\\CreditNote', '2', 60, '2021-02-17 17:47:34', '2021-02-17 17:47:34'),
	(8, 5, 'App\\Models\\Proposal', '2', 60, '2021-02-20 15:09:51', '2021-02-20 15:09:51'),
	(9, 5, 'App\\Models\\CreditNote', '2', 60, '2021-02-22 19:16:48', '2021-02-22 19:16:48'),
	(19, 4, 'App\\Models\\Invoice', '2', 140, '2021-03-08 18:58:11', '2021-03-08 18:58:11'),
	(29, 5, 'App\\Models\\Invoice', '2', 100, '2021-03-12 11:57:21', '2021-03-12 11:57:21'),
	(30, 9, 'App\\Models\\CreditNote', '1', 50, '2021-03-12 12:09:04', '2021-03-12 12:09:04'),
	(31, 9, 'App\\Models\\CreditNote', '2', 100, '2021-03-12 12:09:04', '2021-03-12 12:09:04'),
	(34, 6, 'App\\Models\\Proposal', '2', 160, '2021-03-12 12:21:04', '2021-03-12 12:21:04'),
	(35, 4, 'App\\Models\\Estimate', '2', 100, '2021-03-12 12:30:59', '2021-03-12 12:30:59'),
	(36, 3, 'App\\Models\\Estimate', '2', 160, '2021-03-12 12:31:37', '2021-03-12 12:31:37'),
	(37, 8, 'App\\Models\\Invoice', '1', 50, '2021-03-13 19:34:28', '2021-03-13 19:34:28'),
	(38, 8, 'App\\Models\\Invoice', '2', 100, '2021-03-13 19:34:28', '2021-03-13 19:34:28');
/*!40000 ALTER TABLE `sales_taxes` ENABLE KEYS */;

-- Dumping structure for table crm.services
CREATE TABLE IF NOT EXISTS `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `services_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.services: ~14 rows (approximately)
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Empathy', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(2, 'Communication skills', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(3, 'Product knowledge', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(4, 'Patience', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(5, 'Positive attitude', '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(6, 'Positive language', '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(7, 'Personal responsibility', '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(8, 'Confidence', '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(9, 'Listening skills', '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(10, 'Adaptability', '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(11, 'Attentiveness', '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(12, 'Professionalism', '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(13, 'Acting ability', '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(14, 'test &amp;\r\n', '2021-03-02 20:50:25', '2021-03-18 19:39:05');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;

-- Dumping structure for table crm.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.settings: ~19 rows (approximately)
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `key`, `value`, `group`, `created_at`, `updated_at`) VALUES
	(1, 'logo', 'http://local.crm.com/img/infyom-logo.png', 1, '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(2, 'favicon', 'http://local.crm.com/img/infyom-favicon.png', 1, '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(3, 'company_name', 'InfyCRM', 1, '2021-02-17 13:31:43', '2021-02-17 13:31:44'),
	(4, 'company_domain', '127.0.0.1', 1, '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(5, 'file_type', '.png,.jpg,.pdf,.doc,.docx,.xls,.xlsx,.zip,.rar,.txt', 1, '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(6, 'term_and_conditions', 'This Infycrm project is follow all term and conditions and privacy.', 1, '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(7, 'company', 'InfyOmLabs', 2, '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(8, 'address', '446, Tulsi Arcade, Nr. Sudama Chowk, Mota Varachha, Surat - 394101, Gujarat, India', 2, '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(9, 'city', 'Surat', 2, '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(10, 'state', 'Gujarat', 2, '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(11, 'country_code', 'India [IN]', 2, '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(12, 'zip_code', '394101', 2, '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(13, 'phone', '+91 70963 36561', 2, '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(14, 'vat_number', '1234567890', 2, '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(15, 'current_currency', 'inr', 2, '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(16, 'website', 'infyom.com', 2, '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(17, 'company_information_format', '{company_name}\r\n                        {address}\r\n                        {city} {state}\r\n                        {country_code} {zip_code}\r\n                        {vat_number_with_label}', 2, '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(18, 'admin_note', 'This is the admin note of the InfyCRM project.', 3, '2021-02-17 13:31:43', '2021-02-17 13:31:43'),
	(19, 'client_note', 'This is the client note of the InfyCRM project.', 3, '2021-02-17 13:31:43', '2021-02-17 13:31:43');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Dumping structure for table crm.subscriptions
CREATE TABLE IF NOT EXISTS `subscriptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.subscriptions: ~0 rows (approximately)
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;

-- Dumping structure for table crm.subscription_items
CREATE TABLE IF NOT EXISTS `subscription_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `subscription_id` bigint(20) unsigned NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscription_items_subscription_id_stripe_plan_unique` (`subscription_id`,`stripe_plan`),
  KEY `subscription_items_stripe_id_index` (`stripe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.subscription_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `subscription_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription_items` ENABLE KEYS */;

-- Dumping structure for table crm.taggables
CREATE TABLE IF NOT EXISTS `taggables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `taggable_id` int(11) NOT NULL,
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `taggables_tag_id_foreign` (`tag_id`),
  CONSTRAINT `taggables_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.taggables: ~11 rows (approximately)
/*!40000 ALTER TABLE `taggables` DISABLE KEYS */;
INSERT INTO `taggables` (`id`, `taggable_id`, `taggable_type`, `tag_id`, `created_at`, `updated_at`) VALUES
	(2, 1, 'App\\Models\\Invoice', 2, NULL, NULL),
	(3, 1, 'App\\Models\\Lead', 6, NULL, NULL),
	(6, 1, 'App\\Models\\Ticket', 2, NULL, NULL),
	(7, 1, 'App\\Models\\Ticket', 4, NULL, NULL),
	(8, 1, 'App\\Models\\Ticket', 5, NULL, NULL),
	(9, 1, 'App\\Models\\Ticket', 6, NULL, NULL),
	(17, 2, 'App\\Models\\Lead', 2, NULL, NULL),
	(23, 3, 'App\\Models\\Lead', 4, NULL, NULL),
	(26, 4, 'App\\Models\\Lead', 5, NULL, NULL),
	(31, 4, 'App\\Models\\Estimate', 2, NULL, NULL),
	(32, 8, 'App\\Models\\Invoice', 4, NULL, NULL);
/*!40000 ALTER TABLE `taggables` ENABLE KEYS */;

-- Dumping structure for table crm.tags
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.tags: ~6 rows (approximately)
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'Bug', 'Bugs', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(2, 'Follow Up', 'Follow Up', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(4, 'Logo', 'Logo', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(5, 'Todo', 'Todo', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(6, 'Tomorrow', 'Tomorrow', '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(8, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong>Lorem Ipsum</strong><span> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '2021-02-18 19:10:41', '2021-02-18 19:11:14');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;

-- Dumping structure for table crm.tasks
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned DEFAULT NULL,
  `publicc` tinyint(1) DEFAULT NULL,
  `billable` tinyint(1) DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `hourly_rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_to` int(11) DEFAULT NULL,
  `owner_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tasks_member_id_foreign` (`member_id`),
  CONSTRAINT `tasks_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.tasks: ~2 rows (approximately)
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` (`id`, `member_id`, `publicc`, `billable`, `subject`, `status`, `hourly_rate`, `start_date`, `due_date`, `priority`, `description`, `related_to`, `owner_type`, `owner_id`, `created_at`, `updated_at`) VALUES
	(2, NULL, 0, 0, 'Test task', 4, '520.00', '2021-03-08 00:00:00', '2021-03-22 00:00:00', 2, '<p>testing </p>', 2, 'App\\Models\\Customer', 2, '2021-03-08 16:32:28', '2021-03-09 14:33:20'),
	(3, NULL, 0, 0, 'Ullamco sunt conseq', 1, '5000.00', '2021-03-11 00:00:00', '2021-03-31 00:00:00', 4, NULL, 8, 'App\\Models\\Contract', 1, '2021-03-11 19:58:09', '2021-03-11 20:00:25');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;

-- Dumping structure for table crm.tax_rates
CREATE TABLE IF NOT EXISTS `tax_rates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tax_rates_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.tax_rates: ~8 rows (approximately)
/*!40000 ALTER TABLE `tax_rates` DISABLE KEYS */;
INSERT INTO `tax_rates` (`id`, `name`, `tax_rate`, `created_at`, `updated_at`) VALUES
	(1, 'Madera', 1, '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(2, 'Fernado', 2, '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(3, 'Agow', 5, '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(4, 'Moon', 10, '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(5, 'Agxm', 15, '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(6, 'County', 20, '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(7, 'test esrse', 5, '2021-02-23 16:35:05', '2021-03-13 20:25:59'),
	(10, 'test', 18, '2021-03-13 20:24:44', '2021-03-13 20:24:44');
/*!40000 ALTER TABLE `tax_rates` ENABLE KEYS */;

-- Dumping structure for table crm.tickets
CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` int(10) unsigned DEFAULT NULL,
  `cc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assign_to` int(10) unsigned DEFAULT NULL,
  `priority_id` int(10) unsigned DEFAULT NULL,
  `service_id` int(10) unsigned DEFAULT NULL,
  `predefined_reply_id` int(10) unsigned DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_status_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tickets_priority_id_foreign` (`priority_id`),
  KEY `tickets_service_id_foreign` (`service_id`),
  KEY `tickets_ticket_status_id_foreign` (`ticket_status_id`),
  KEY `tickets_predefined_reply_id_foreign` (`predefined_reply_id`),
  KEY `tickets_contact_id_foreign` (`contact_id`),
  KEY `tickets_department_id_foreign` (`department_id`),
  KEY `tickets_assign_to_foreign` (`assign_to`),
  CONSTRAINT `tickets_assign_to_foreign` FOREIGN KEY (`assign_to`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tickets_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tickets_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tickets_predefined_reply_id_foreign` FOREIGN KEY (`predefined_reply_id`) REFERENCES `predefined_replies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tickets_priority_id_foreign` FOREIGN KEY (`priority_id`) REFERENCES `ticket_priorities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tickets_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tickets_ticket_status_id_foreign` FOREIGN KEY (`ticket_status_id`) REFERENCES `ticket_statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.tickets: ~1 rows (approximately)
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` (`id`, `subject`, `contact_id`, `name`, `email`, `department_id`, `cc`, `assign_to`, `priority_id`, `service_id`, `predefined_reply_id`, `body`, `ticket_status_id`, `created_at`, `updated_at`) VALUES
	(1, 'Aperiam tempor &amp; sint', NULL, NULL, 'mezesoje@gmail.com', 6, 'depom@mailinator.com', NULL, 3, 12, NULL, NULL, 1, '2021-02-17 16:18:24', '2021-03-02 20:32:04');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;

-- Dumping structure for table crm.ticket_priorities
CREATE TABLE IF NOT EXISTS `ticket_priorities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ticket_priorities_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.ticket_priorities: ~4 rows (approximately)
/*!40000 ALTER TABLE `ticket_priorities` DISABLE KEYS */;
INSERT INTO `ticket_priorities` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Low', 1, '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(2, 'Medium', 1, '2021-02-17 13:31:42', '2021-03-02 15:07:44'),
	(3, 'High', 1, '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(4, 'Urgent', 0, '2021-02-17 13:31:42', '2021-02-17 13:31:42');
/*!40000 ALTER TABLE `ticket_priorities` ENABLE KEYS */;

-- Dumping structure for table crm.ticket_statuses
CREATE TABLE IF NOT EXISTS `ticket_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pick_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ticket_statuses_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.ticket_statuses: ~6 rows (approximately)
/*!40000 ALTER TABLE `ticket_statuses` DISABLE KEYS */;
INSERT INTO `ticket_statuses` (`id`, `name`, `pick_color`, `is_default`, `created_at`, `updated_at`) VALUES
	(1, 'Open', '#fc544b', 1, '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(2, 'In Progress', '#6777ef', 1, '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(3, 'Answered', '#3abaf4', 1, '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(4, 'On Hold', '#ffa426', 1, '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(5, 'Closed', '#47c363', 1, '2021-02-17 13:31:42', '2021-02-17 13:31:42'),
	(7, 'test &amp; testing 2', '#673AB7', 0, '2021-03-02 20:29:14', '2021-03-11 20:32:23');
/*!40000 ALTER TABLE `ticket_statuses` ENABLE KEYS */;

-- Dumping structure for table crm.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `owner_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_member` tinyint(1) DEFAULT NULL,
  `send_welcome_email` tinyint(1) DEFAULT NULL,
  `default_language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_stripe_id_index` (`stripe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `owner_id`, `owner_type`, `is_enable`, `image`, `facebook`, `linkedin`, `skype`, `staff_member`, `send_welcome_email`, `default_language`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`) VALUES
	(1, '', 'ad', '', 'dd', '', NULL, 'dd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table crm.user_departments
CREATE TABLE IF NOT EXISTS `user_departments` (
  `user_id` int(10) unsigned NOT NULL,
  `department_id` int(10) unsigned NOT NULL,
  KEY `user_departments_user_id_foreign` (`user_id`),
  KEY `user_departments_department_id_foreign` (`department_id`),
  CONSTRAINT `user_departments_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_departments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table crm.user_departments: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_departments` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
