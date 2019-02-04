# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.16-log)
# Database: laravel_com
# Generation Time: 2019-02-04 06:35:01 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `discussion_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_user_id_foreign` (`user_id`),
  KEY `comments_discussion_id_foreign` (`discussion_id`),
  CONSTRAINT `comments_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;

INSERT INTO `comments` (`id`, `body`, `user_id`, `discussion_id`, `created_at`, `updated_at`)
VALUES
	(1,'Est eaque laboriosam aut numquam explicabo nulla sint odit. Modi nisi eos perspiciatis et dolorem. Dolores sint atque asperiores dicta. Quod omnis perspiciatis omnis cupiditate ab eveniet.',23,23,'2019-02-03 04:39:10','2019-02-03 04:39:10'),
	(2,'Labore dolorem quos placeat ipsam quam. Ullam adipisci perferendis aliquam vel. Dolor eveniet quo autem occaecati sed. Ipsum vitae voluptatem sunt ea.',1,19,'2019-02-03 04:39:10','2019-02-03 04:39:10'),
	(3,'Dignissimos assumenda eius ad corporis. Beatae consequatur voluptatem voluptatem ipsum ullam et enim. Vitae necessitatibus necessitatibus in omnis aliquid temporibus.',12,4,'2019-02-03 04:39:10','2019-02-03 04:39:10'),
	(4,'Optio sed porro quis qui optio. Dolores adipisci repellat nesciunt molestiae reprehenderit. Dolores et quod aut.',13,31,'2019-02-03 04:39:10','2019-02-03 04:39:10'),
	(5,'Natus iure et et harum aperiam. Molestiae ab quidem est. Asperiores debitis est fuga eum. Quo iure ex qui dolore similique sit.',1,1,'2019-02-03 04:39:10','2019-02-03 04:39:10'),
	(6,'Sed itaque mollitia est et quia fugit. Impedit similique modi quo minima unde nemo aliquid. Dolores quis nemo voluptate nulla quod. Culpa fugit eius fugit et.',12,18,'2019-02-03 04:39:10','2019-02-03 04:39:10'),
	(7,'Animi vel optio voluptas quam occaecati. Debitis vel eaque animi ut. Aut nihil ea libero odio. Beatae consectetur sit quasi esse tempore. Quidem dolores enim quia odio error.',4,23,'2019-02-03 04:39:10','2019-02-03 04:39:10'),
	(8,'Voluptatem ipsam officiis magni fugiat aut. Unde et eaque veritatis quos. Consequatur nesciunt mollitia eos rerum.',11,18,'2019-02-03 04:39:10','2019-02-03 04:39:10'),
	(9,'Quo neque molestias eaque et nihil ut ipsa eum. Aperiam est voluptatem eaque quia qui. Non minus at vel commodi. Veniam consequatur amet nihil nostrum sunt in. Doloremque qui enim excepturi aspernatur deserunt itaque ad.',1,27,'2019-02-03 04:39:10','2019-02-03 04:39:10'),
	(10,'Non rem quo nisi. Qui rerum facere distinctio rerum enim illo eum. Fugit qui minima iure quia provident aut voluptatem.',28,17,'2019-02-03 04:39:10','2019-02-03 04:39:10'),
	(11,'Impedit est saepe commodi amet qui. Maiores rerum dignissimos quidem dolorum error qui. Aliquid necessitatibus velit fugit voluptatibus corporis laborum.',10,8,'2019-02-03 04:39:10','2019-02-03 04:39:10'),
	(12,'Aut fuga quae voluptatem nostrum distinctio saepe. Fugit ex ut dolor. Est quibusdam sint velit ullam quos consectetur.',15,12,'2019-02-03 04:39:10','2019-02-03 04:39:10'),
	(13,'Dolorem totam vitae quos quibusdam cum. Molestias laboriosam aut sequi tenetur. Id adipisci et voluptatem deleniti. Modi deleniti et rerum dignissimos temporibus cupiditate accusantium.',12,2,'2019-02-03 04:39:10','2019-02-03 04:39:10'),
	(14,'Sit tempore voluptatem omnis. Exercitationem praesentium voluptas et aliquam omnis eos quaerat. Iusto voluptatem quae molestiae neque.',10,21,'2019-02-03 04:39:10','2019-02-03 04:39:10'),
	(15,'Saepe enim et aut ut. Repudiandae placeat laborum est quae. Neque dolorum qui assumenda autem architecto quo.',17,24,'2019-02-03 04:39:10','2019-02-03 04:39:10'),
	(16,'Rerum non ratione et similique dicta qui qui. Doloribus vitae error dolorem tempora non quo. Sequi non esse numquam officia voluptatem recusandae. Nobis libero voluptatum omnis quos possimus perspiciatis.',22,10,'2019-02-03 04:39:10','2019-02-03 04:39:10'),
	(17,'Similique a autem libero doloribus rerum est quibusdam. Ut porro consectetur voluptatibus.',16,7,'2019-02-03 04:39:10','2019-02-03 04:39:10'),
	(18,'Aliquam dolores id ducimus quas illum eos quisquam. Enim rerum alias accusamus similique minima esse explicabo. Quia harum vitae et similique error vitae aut unde.',12,24,'2019-02-03 04:39:10','2019-02-03 04:39:10'),
	(19,'Quidem sint non libero ut iste. Numquam fuga voluptas sit repudiandae ut minus enim laudantium. Sit aut tenetur at accusamus quia maxime ducimus.',27,26,'2019-02-03 04:39:10','2019-02-03 04:39:10'),
	(20,'Tempora est et nulla ab atque eius et. Et officia fuga et ab. Omnis nobis esse qui nostrum mollitia consequatur.',1,15,'2019-02-03 04:39:10','2019-02-03 04:39:10'),
	(21,'Repudiandae tempora molestiae repellendus necessitatibus. Sequi est omnis ex est eligendi. Molestias deserunt placeat voluptatem. Ut blanditiis dicta optio quis dolor.',13,11,'2019-02-03 04:39:10','2019-02-03 04:39:10'),
	(22,'Provident quos debitis minima eos voluptate quae reprehenderit ipsam. Qui magni est laborum nisi nemo iste. Deleniti dicta beatae quaerat omnis.',22,16,'2019-02-03 04:39:10','2019-02-03 04:39:10'),
	(23,'Dolorum aut tenetur adipisci voluptate mollitia aliquam tempore. Laboriosam possimus sit quam quis et error. Et sequi explicabo non. Ad minima beatae at voluptatum.',25,31,'2019-02-03 04:39:10','2019-02-03 04:39:10'),
	(24,'Aut quam voluptas officiis quo et. Illum accusantium pariatur numquam vero ratione eos.',17,30,'2019-02-03 04:39:10','2019-02-03 04:39:10'),
	(25,'Sunt quos in maxime est aut iusto perferendis. Ipsam quia consequatur expedita ut asperiores eaque. Consequatur magnam vitae odio ut. Quis itaque quia enim.',22,7,'2019-02-03 04:39:10','2019-02-03 04:39:10'),
	(26,'Ut ut ea labore recusandae id facere. Necessitatibus qui sed ipsa sed voluptas ut quae. Debitis sint voluptas dolorem quas est saepe dolor doloribus. Ad nihil officiis facere ut asperiores qui et. Et laborum impedit rerum illo quia alias ad.',17,30,'2019-02-03 04:39:10','2019-02-03 04:39:10'),
	(27,'Nam sed et nihil non totam in quo. Non suscipit eum commodi aut omnis et. Commodi iusto commodi ullam.',11,5,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(28,'Harum quidem quasi aut qui delectus eos quos. Iure inventore aliquam rerum consequatur. Quia qui ipsam in qui nisi dolor velit dolorem. Sit qui et nisi.',18,33,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(29,'Sed ad doloremque est. Est in consequatur earum itaque velit non. Ex et iure dolor ipsum.',18,21,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(30,'Est sit laboriosam non enim tempore. Est quibusdam ab ex nihil deleniti eos. Delectus recusandae culpa autem dolores ipsam.',11,3,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(31,'Voluptas nemo illo velit. Quia quia doloribus culpa aspernatur maiores ducimus aut. Sit repellendus modi aut eaque possimus et. Sunt aut ab magni possimus. Ducimus quod est aut perferendis id.',28,11,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(32,'Eligendi incidunt quo ex molestiae adipisci ad illum. Qui nemo et architecto laborum ea occaecati. Est id porro nemo explicabo.',11,18,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(33,'Assumenda sit ullam possimus sed commodi sint. Molestiae sunt commodi inventore non quis sunt maxime. Nulla ea et rerum iusto ut et modi.',8,11,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(34,'Est vel eum consequatur rem quam. Ad molestiae officia quia laborum voluptas corrupti officia. Enim laborum deleniti beatae vel. Corporis quisquam nam et voluptatum eos.',23,28,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(35,'Laboriosam repudiandae cum ab inventore. Nihil est aut quia totam dolorum nam. Aut non dolore ut omnis ut molestiae. Sint non nisi veritatis aut et.',20,33,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(36,'Sint eum recusandae nemo animi. Et ipsum quisquam sit ducimus dolor. Fugiat occaecati quas voluptas tenetur aspernatur et. Saepe magnam quod minima ipsa voluptatibus magnam velit molestiae.',20,4,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(37,'Sit dolorum consequatur beatae. Quia sed officia sit accusamus eveniet. Ab reiciendis laudantium quasi consequatur et soluta est. Hic maiores vitae harum aut.',27,18,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(38,'Consequuntur quae sint atque fuga nam voluptates. Debitis reprehenderit reprehenderit hic amet.',19,15,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(39,'Eos aut molestias officiis quo repellat consequatur. Vitae qui corrupti hic laudantium. Nobis eum tempora non aut. Nobis et deserunt eum aut a.',22,24,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(40,'Aut tenetur saepe dolor sapiente. Inventore ipsum tempore quo cupiditate cum velit maxime. Reiciendis reiciendis dolorum fuga itaque tempora. Sunt quasi magnam ipsa vel.',5,9,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(41,'Optio velit eaque ipsum perferendis. Tenetur et impedit et quis aut suscipit. Ipsa asperiores cupiditate delectus deleniti aut.',6,11,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(42,'Dignissimos eius nesciunt blanditiis porro ipsum eligendi qui laudantium. Aliquam omnis ut velit. Voluptas tempora possimus magni id quis. Aspernatur vel voluptas omnis delectus.',10,12,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(43,'Aut enim magni alias assumenda cum. Labore dolor dignissimos maxime amet. Nulla amet repellat quo praesentium nam fugit quam.',30,23,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(44,'Cum iste possimus dolorem. Quo occaecati autem nobis voluptatem alias. Provident aut consequatur veniam laudantium aliquam. Ad ut ut aut cum iste ducimus fuga labore. Facilis quae odit esse et repellendus perspiciatis.',27,17,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(45,'Dolor sed autem aliquam accusamus est. Et quia non ea aut quia est facilis. Aut est et et vitae ut.',8,22,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(46,'Voluptatem aut doloribus non qui ipsum ipsa dolores. Voluptatem earum modi et dolores. Voluptatem error a ut. Laboriosam delectus eum quia animi.',18,28,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(47,'Voluptatem quia fugiat ea architecto. Molestias et quo omnis facere sunt. Consequatur eligendi quia atque beatae nemo adipisci quae.',7,7,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(48,'Aut aut saepe maxime incidunt voluptatum quidem. Sunt accusantium corporis eum. Qui ut iste qui quibusdam repellat eaque.',24,16,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(49,'Praesentium sunt commodi rerum laborum nihil quam. Quidem eius a ut est atque. Ab quo quae distinctio inventore fugit. Placeat debitis non cupiditate inventore et.',5,3,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(50,'Et sit voluptas amet accusantium fuga dolorem. Veritatis expedita quae inventore quia. Quaerat voluptatibus sed et sapiente ullam aut excepturi. Earum officiis placeat quaerat repudiandae.',11,14,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(51,'Eligendi reprehenderit nemo in veritatis maiores. Enim quia velit iste non voluptates. Rem possimus a culpa qui.',26,14,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(52,'Unde at omnis non ea officiis. Eaque mollitia optio ea. Quibusdam dignissimos voluptatem sed aut quasi. Est est reprehenderit ipsum minus et aut. Eum sint sunt labore.',51,8,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(53,'Et architecto sit sed tempora corrupti illum optio soluta. Dolore est deserunt perspiciatis pariatur error dolore. Molestias voluptatem magnam qui esse molestias. Sint assumenda mollitia ducimus natus voluptatum minima.',12,26,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(54,'Quis eos et ut enim alias et. Magni minus accusantium hic omnis.',15,3,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(55,'Rerum non sunt consequatur id sint alias modi. Sint quis sed deleniti repellendus. Eum eaque iste veniam similique. Molestiae omnis sunt repellat veritatis illo aut accusantium et.',29,14,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(56,'Ipsa error aperiam perspiciatis aspernatur reiciendis expedita sapiente. Natus temporibus sit soluta sint tenetur excepturi error. Alias consequatur voluptatibus autem aliquid culpa error officia.',22,17,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(57,'Accusantium temporibus quidem molestias distinctio repellat et quaerat labore. Inventore quia dolorem accusamus debitis iure.',11,19,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(58,'Et fugiat consequatur quo praesentium quas possimus. Saepe nostrum totam voluptas commodi voluptatem officia deserunt. Natus impedit quia quia velit consequatur.',7,6,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(59,'Odit ut tenetur ea omnis maxime. Tempore repudiandae veniam et aut maxime. Vero sapiente iusto voluptas molestiae ipsum et.',5,1,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(60,'Necessitatibus qui et ut ex similique saepe. Eum rerum quae non qui et. Temporibus dolore voluptatibus ut temporibus facilis provident. Voluptas sapiente in numquam vel.',15,27,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(61,'Et eveniet est et placeat est occaecati. Rerum temporibus quae esse sint rerum quod rerum. Illum eos enim eos impedit earum minima. Sed et quibusdam vitae sunt repellat voluptatem doloribus.',21,11,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(62,'Quia nulla minima est perspiciatis iure. Magni in ut omnis itaque animi. Est mollitia autem cupiditate. Nihil sint excepturi in fugit fugiat fuga ratione.',15,2,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(63,'Et consectetur eaque rerum et vitae sed. Quia reprehenderit tempora et qui. Nulla totam aut quo omnis.',22,28,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(64,'Dignissimos molestias tempora autem autem. Blanditiis voluptates illo omnis et doloremque. Atque qui minima et provident. Possimus ut rerum voluptas nihil ut.',18,4,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(65,'Maxime laborum tempore possimus ullam eligendi fugit accusamus. Sequi quis cupiditate sit. Facilis quae quae enim qui libero sequi accusantium.',14,12,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(66,'Eligendi rerum occaecati aut provident in excepturi nihil qui. Tempora temporibus consequuntur impedit omnis ea voluptatibus. Amet rerum porro quia quod. Saepe deserunt porro laboriosam cumque perferendis dicta ipsa.',12,6,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(67,'Quaerat odit nostrum qui a itaque reprehenderit molestias. Et cumque hic voluptatem deserunt. Aut quia asperiores voluptas aut sunt ipsum explicabo.',23,9,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(68,'Quasi ut accusamus asperiores qui corporis sit facilis numquam. Est repellendus ipsum assumenda nobis temporibus expedita. Distinctio qui quia totam eos ipsa ut est.',26,21,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(69,'Sunt perspiciatis eos quis voluptatem non. Et sunt laudantium quia et possimus hic et. Qui praesentium fuga assumenda impedit.',17,14,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(70,'Rerum sunt et quia similique et ex cupiditate. Voluptates hic ab molestiae laudantium numquam dolor. Officia reiciendis velit reprehenderit nihil aperiam impedit.',20,14,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(71,'Reiciendis aperiam blanditiis voluptatum quibusdam natus qui. Aut quaerat nihil asperiores. Illum est dolor eos est quisquam. Exercitationem enim eos architecto rerum maxime corrupti. Ut sint quasi deserunt repellendus mollitia modi dolorum.',24,15,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(72,'Molestias unde suscipit inventore quasi aliquid ut. Fuga eveniet quis repudiandae commodi magni. Blanditiis quod quae aut saepe repudiandae sint. Aliquid nihil voluptatum magnam laboriosam ut eos sint.',6,20,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(73,'Maiores magni quia sed ducimus impedit omnis. Quam beatae corporis quibusdam a esse. Ipsam et nulla voluptatem voluptas sit rem. Saepe sunt dolor vel amet unde dolor iure dolores.',27,33,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(74,'Harum harum non id quia itaque ad explicabo et. Aliquam non numquam labore libero quasi. Occaecati rerum officiis aliquam laudantium unde et dolores voluptatem.',23,13,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(75,'Est voluptas ipsa nostrum quae commodi rem praesentium. Quos fugiat voluptatum velit veniam.',22,32,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(76,'Architecto porro quam repudiandae quos porro delectus aut qui. Molestias voluptates aut quis corporis molestiae. Nulla voluptates voluptatibus necessitatibus libero. Sit voluptatem incidunt porro.',24,17,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(77,'Non aut aut et vel. Reiciendis omnis et ad. Voluptate quae non qui nesciunt tenetur. Quis eos rerum adipisci aut quia sunt et. Vitae laudantium voluptatem nostrum sed culpa ut pariatur esse.',5,7,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(78,'Eum neque ullam nisi. A ducimus expedita distinctio ipsam autem asperiores nam. Est et ut quidem molestiae necessitatibus excepturi id.',12,18,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(79,'Hic consequatur eos ut voluptate quas occaecati. In eius et aut suscipit.',7,29,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(80,'Amet nihil eos repellendus dolorem. Autem alias odio deserunt praesentium ex. Excepturi corporis repudiandae facilis reprehenderit ducimus fugit illum.',25,29,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(81,'Ab sed ad accusamus rerum qui deserunt molestiae rem. Tempore qui itaque expedita cupiditate tenetur corporis sapiente. Provident quibusdam debitis excepturi debitis tenetur saepe earum. Voluptates ab dolorem quod delectus blanditiis recusandae iure.',51,24,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(82,'Quaerat architecto aut in dolores sed. Amet est quod consequatur error quas magni ab. Et aut in ut impedit assumenda pariatur odio. Eos est aut voluptatibus rerum. Fugiat molestiae et est est possimus aut.',26,16,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(83,'Eligendi veritatis dolor culpa est rerum ab. Qui tempore exercitationem odit veniam sit qui. Pariatur sit sint sit rerum.',3,2,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(84,'Consequatur sunt ut a numquam molestias. Voluptatibus accusamus ipsa est. Omnis molestias est molestias.',4,32,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(85,'In ipsum quibusdam exercitationem quo. Praesentium voluptas magnam quo provident suscipit voluptatem et maxime. Est consequatur aperiam non rerum quidem sed. Sed voluptatibus dolorem quo aperiam laborum repudiandae.',1,20,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(86,'Et debitis exercitationem et saepe sapiente labore. Dolore consectetur eos reprehenderit expedita dolores. Qui inventore facilis dolorem qui quia.',23,1,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(87,'In veniam eos velit nihil culpa magni autem earum. Dolorem et inventore a. Nihil similique placeat distinctio error officia adipisci.',26,13,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(88,'Voluptatem sequi aut culpa eligendi. Asperiores et soluta et ut itaque saepe. Minus quod unde qui. Tempora rerum eum officia alias nulla pariatur dolorem.',51,22,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(89,'Nesciunt debitis labore aspernatur eum esse eos. Enim accusantium aliquid perspiciatis necessitatibus aut officiis expedita iusto.',20,15,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(90,'Natus harum nihil labore est inventore. Vitae atque quibusdam officiis eum est iste enim. Tempora corporis dolore hic deserunt laboriosam dolores voluptatum. Aliquid esse ut est non quaerat voluptas.',27,2,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(91,'Dolores optio porro dolorum repellendus reprehenderit natus omnis. Error nobis earum impedit. Vel corporis est qui ipsum ipsa ea. Rerum fugit id et occaecati.',2,18,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(92,'Repudiandae perferendis sit ipsum veritatis natus delectus. Dignissimos vel sed iusto tempora non autem ut sed. Aut officia deserunt nemo vel assumenda.',28,15,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(93,'Et minus labore rerum error incidunt. Et quam aliquam quaerat cum laborum perspiciatis. Est voluptas tempore quam dolor accusamus culpa magni. Autem molestiae ducimus sit vel.',9,22,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(94,'Nemo magnam dicta voluptatibus nostrum autem. Corporis dolore sit consequatur aliquam voluptas. Tenetur in aut et et. Fugit et tenetur nobis rerum eum.',5,33,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(95,'Quo laudantium ipsam sed non. Nulla vel nesciunt eveniet magnam. Placeat at pariatur recusandae. Repellendus cupiditate blanditiis suscipit labore qui fugit fugiat.',11,27,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(96,'Facilis soluta voluptate omnis accusantium. Et itaque numquam minima.',24,33,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(97,'Dolores provident veritatis adipisci. Omnis blanditiis rerum non aliquam enim commodi eum officiis.',11,13,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(98,'Est fugiat magni ipsam voluptate quis iure at eaque. Reiciendis est quibusdam ut suscipit expedita ut. Similique alias tempora totam temporibus.',29,17,'2019-02-03 04:39:11','2019-02-03 04:39:11'),
	(99,'Incidunt exercitationem eum saepe delectus autem. Doloribus sint quis quos quo ex maiores. Ullam et aperiam illo eum tempora sint qui. Et aspernatur quas in perferendis dolorem.',13,21,'2019-02-03 04:39:12','2019-02-03 04:39:12'),
	(100,'Ullam molestias eius sapiente porro temporibus natus. Commodi molestias sapiente commodi alias quis. Quia et aut impedit modi.',8,7,'2019-02-03 04:39:12','2019-02-03 04:39:12'),
	(101,'123',51,33,'2019-02-04 01:16:53','2019-02-04 01:16:53');

/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table discussions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `discussions`;

CREATE TABLE `discussions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `last_user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `discussions_user_id_foreign` (`user_id`),
  CONSTRAINT `discussions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `discussions` WRITE;
/*!40000 ALTER TABLE `discussions` DISABLE KEYS */;

INSERT INTO `discussions` (`id`, `title`, `body`, `user_id`, `last_user_id`, `created_at`, `updated_at`)
VALUES
	(1,'Nisi ducimus rem officiis ducimus magni vel molestiae.','Rerum reprehenderit voluptatem rerum explicabo ex. Autem quaerat aut aut beatae. Autem accusamus tenetur aspernatur aspernatur.',13,10,'2019-02-02 07:48:44','2019-02-02 07:48:44'),
	(2,'Molestiae deserunt molestiae maxime ad nam dolores ipsa.','Corrupti ex maiores suscipit et consequatur earum. Tempore ut quaerat velit tempore. Consectetur beatae labore commodi voluptas et amet pariatur. Dicta et ipsam dolor delectus. Molestiae at cupiditate soluta eos est est.',9,28,'2019-02-02 07:48:44','2019-02-02 07:48:44'),
	(3,'Omnis alias veniam nobis aut facilis aliquid et corporis.','Omnis quia rerum rerum delectus illum. Dolorem voluptatibus eum dolorem nam aut facilis voluptas. Quia minima quos sit aliquam neque sed voluptas.',9,14,'2019-02-02 07:48:44','2019-02-02 07:48:44'),
	(4,'Ea maxime odit enim et quasi qui.','Sed dolorem sequi assumenda at fugiat quaerat accusantium. Sunt molestiae aut officia libero tenetur et. Blanditiis quos nihil porro qui accusantium.',7,17,'2019-02-02 07:48:44','2019-02-02 07:48:44'),
	(5,'Sed consectetur error nobis.','Quaerat neque dignissimos commodi. Debitis eius non commodi ut. Voluptatem sed architecto est et laborum quia.',13,1,'2019-02-02 07:48:44','2019-02-02 07:48:44'),
	(6,'Voluptas assumenda vitae placeat laborum suscipit ut fuga.','Fuga a sed eum est et optio consequatur. Aspernatur dolor quo et sit. Tenetur praesentium sunt qui.',24,21,'2019-02-02 07:48:44','2019-02-02 07:48:44'),
	(7,'Recusandae harum velit distinctio illo.','Ullam itaque et sunt praesentium. Quia quo nesciunt dignissimos suscipit. Voluptatem autem qui atque autem corrupti mollitia.',25,6,'2019-02-02 07:48:44','2019-02-02 07:48:44'),
	(8,'Qui doloremque voluptas dolorem facere molestiae aut quia.','Reprehenderit quia est impedit aut dolorem sint. Deserunt temporibus ab aut ut. Neque ab et quia nam velit non tempora quia.',7,9,'2019-02-02 07:48:44','2019-02-02 07:48:44'),
	(9,'Debitis atque sint corrupti accusamus ipsam et corporis tempora.','Ex illum commodi voluptatum voluptates tempore. Eaque vel ex voluptas enim quia eos. Nisi et alias et libero possimus tempora voluptatem.',7,7,'2019-02-02 07:48:44','2019-02-02 07:48:44'),
	(10,'Sed labore autem quo quaerat.','Nemo nihil omnis et commodi nobis molestias. Rerum earum quia est voluptas. Error similique est nemo quaerat consequatur. Adipisci culpa nam quo omnis nulla commodi. Velit sed voluptas blanditiis recusandae non autem.',3,16,'2019-02-02 07:48:44','2019-02-02 07:48:44'),
	(11,'Beatae ullam repellendus architecto culpa quia a sed.','Nihil dolor placeat necessitatibus numquam dolores quos minima tempora. Fuga voluptatem quam quibusdam aperiam sit et. Qui necessitatibus quisquam velit qui commodi. Ea recusandae tempora rerum eaque sed. Omnis voluptatem voluptatem at.',22,18,'2019-02-02 07:48:44','2019-02-02 07:48:44'),
	(12,'Officia placeat maiores laboriosam magnam ut architecto.','Esse ab velit deleniti iure veritatis et. Molestiae sed et ut natus aut.',5,13,'2019-02-02 07:48:44','2019-02-02 07:48:44'),
	(13,'Omnis totam et eum minima accusamus voluptatem dolores nihil.','Eligendi et dicta labore. Ut sed similique exercitationem consequuntur et nisi magnam ea.',27,16,'2019-02-02 07:48:44','2019-02-02 07:48:44'),
	(14,'Inventore fuga ut similique doloremque.','Enim cupiditate corporis consequatur maiores unde. Voluptas corporis tempore modi doloremque facilis. Rem rerum officiis vero.',12,2,'2019-02-02 07:48:44','2019-02-02 07:48:44'),
	(15,'Et non quaerat non dolorum minus quae eos.','Doloribus perspiciatis dolor alias expedita dolorum officia quia. Voluptatibus et voluptatem deleniti dolorum magnam vel quam. Est magnam magnam ut iure a perspiciatis.',16,2,'2019-02-02 07:48:44','2019-02-02 07:48:44'),
	(16,'Esse eius veniam unde dolorem.','Accusantium rerum qui deserunt ipsum corporis. Enim perferendis animi qui distinctio. Ut quasi maiores quis et cumque.',11,20,'2019-02-02 07:48:44','2019-02-02 07:48:44'),
	(17,'Illum rerum rem quia earum doloribus quam et.','Est qui porro officia doloremque. Delectus iure nihil voluptatibus deserunt nihil culpa. Ratione aut tenetur inventore provident voluptate necessitatibus officiis.',20,28,'2019-02-02 07:48:44','2019-02-02 07:48:44'),
	(18,'Provident sit sint dolores itaque ad veritatis.','Et odio voluptates veniam dolorem beatae dignissimos veniam. Nihil laboriosam natus quidem blanditiis tempore. Vel blanditiis temporibus sunt inventore nemo. Repellat nesciunt rerum est magnam nam nulla.',28,16,'2019-02-02 07:48:45','2019-02-02 07:48:45'),
	(19,'Assumenda commodi omnis in impedit nostrum et omnis.','Quibusdam ut et veniam quia sint similique. Incidunt quis et nihil accusantium voluptatem tempore est. Molestiae rerum dolorum debitis laboriosam molestiae sunt deserunt.',11,7,'2019-02-02 07:48:45','2019-02-02 07:48:45'),
	(20,'Eius facilis totam architecto aut dolores hic aliquid in.','Est quidem sed non asperiores consequatur asperiores. Autem necessitatibus qui molestias. Quod mollitia sint ea vel harum. Ut voluptas quasi vitae quo omnis rem.',17,30,'2019-02-02 07:48:45','2019-02-02 07:48:45'),
	(21,'Eum nihil distinctio quis ullam qui.','Impedit sed quo est accusantium doloribus. Id dignissimos non est maxime ut. Accusantium porro dolorem voluptates quas est.',4,20,'2019-02-02 07:48:45','2019-02-02 07:48:45'),
	(22,'Dignissimos velit ut quidem asperiores porro maiores expedita.','Quos ipsum id rem cum iste. Excepturi culpa fugiat adipisci. Maiores eveniet voluptatibus rerum natus exercitationem animi consequatur. Vitae ipsa sit facere sequi expedita. Dolorum atque earum porro velit et voluptas.',16,9,'2019-02-02 07:48:45','2019-02-02 07:48:45'),
	(23,'Et ipsa velit voluptatum eos commodi reprehenderit.','Sapiente molestias consequuntur ducimus. Dolore neque itaque voluptatem minus. Voluptas sequi sit autem sit.',14,26,'2019-02-02 07:48:45','2019-02-02 07:48:45'),
	(24,'Dolores temporibus reiciendis consequuntur sit omnis.','Dolor laborum architecto quo deserunt. Soluta at dolorum esse veniam nobis. Animi quis delectus harum aut nihil. Magni quae molestias vitae necessitatibus optio debitis id.',13,19,'2019-02-02 07:48:45','2019-02-02 07:48:45'),
	(25,'Id necessitatibus et voluptas dolorem consectetur rerum.','Consequuntur magnam saepe enim ab quos praesentium voluptas illo. Nihil sit quaerat tempora eos voluptates.',11,14,'2019-02-02 07:48:45','2019-02-02 07:48:45'),
	(26,'Et et ut nisi quo cupiditate quas.','Nulla repudiandae animi corporis. Culpa error illum porro sit eos aspernatur quidem. Non earum dolorum maxime architecto aut. Nobis quidem aut beatae accusantium hic aut animi qui. Culpa et eum quas ab odit nesciunt et.',22,17,'2019-02-02 07:48:45','2019-02-02 07:48:45'),
	(27,'Possimus aliquid sequi consequuntur eum tenetur rerum.','Nihil perspiciatis et blanditiis ea cupiditate. Quia et ex non dolorem qui exercitationem magni.',27,11,'2019-02-02 07:48:45','2019-02-02 07:48:45'),
	(28,'Dignissimos atque nostrum ut facilis qui aut.','Iure corporis et hic et voluptatem alias unde numquam. Quod labore accusantium saepe non veniam ducimus. Id libero neque quod assumenda. Et qui fugiat aut rerum accusantium nihil.',5,16,'2019-02-02 07:48:45','2019-02-02 07:48:45'),
	(29,'Hic ipsam dolor optio id veniam qui.','Et voluptatum odio atque debitis voluptatem deleniti et. Possimus qui et soluta voluptates fugiat dolor. Maiores et doloribus molestias et fugit. Architecto et et dolorum odio.',29,12,'2019-02-02 07:48:45','2019-02-02 07:48:45'),
	(30,'Quis dolorem nesciunt error et pariatur consequatur tempore.','Iusto eaque et nihil natus. Non maxime modi vero recusandae eos quasi. Laborum similique optio perspiciatis similique excepturi rerum. Deserunt fugiat et corrupti nostrum vel nam eveniet.',24,27,'2019-02-02 07:48:45','2019-02-02 07:48:45'),
	(31,'laravel5.5组件之 Forms & HTML 组件','一、\r\n\r\n因为第一次用Laravel，虽然都在说laravel好，但自己没有意识到他好在哪里的时候，只能先用他已有的工具，Forms和HTML工具同样如此，感觉用起来也不省事，而且还不符合自己曾经编写HTML表单的习惯，看着怪别扭，上网查了一些资料，说是使用这个组件会减少HTML代码量，并且会协助创建CSRF（Cross Site Request Forgery, 跨站域请求伪造）的验证token，暂时没体会到这些好处，先用起来再说，慢慢品！\r\n\r\n二、Forms&HTML组件安装配置\r\n\r\n1. 跳转到项目根目录（windows进入dos系统中操作），执行以下代码，安装组件包：\r\n\r\ncomposer require \"laravelcollective/html\":\"^5.2.0\"\r\n2. 修改配置文件/config/app.php\r\n\r\n（1）在providers中添加组件支持类\r\n\r\n\'providers\' => [\r\n    // ...\r\n    Collective\\Html\\HtmlServiceProvider::class,    // 增加这一行代码\r\n    // ...\r\n  ],\r\n（2）在aliases中添加组件类别名 \r\n\r\n\'aliases\' => [\r\n    // ...\r\n      \'Form\' => Collective\\Html\\FormFacade::class,\r\n      \'Html\' => Collective\\Html\\HtmlFacade::class,\r\n    // ...\r\n  ],\r\n三、Forms&HTML组件具体使用\r\n\r\n1. 创建表单（一般用于添加数据时使用）\r\n\r\n/*\r\n *  作用：创建表单\r\n *\r\n *  参数1：数组\r\n *       （1）url：表单提交地址；\r\n *       （2）method：表单提交方式，如果不设置，默认为post；\r\n *       （3）files：如果设置files为true，表示当前表单支持文件上传\r\n *\r\n *  参数2：数组,可以写表单所有的各种Html属性，如class、id、style等。\r\n**/\r\n \r\n{!! Form::open(array(\'url\' => \'/admin/index\', \'method\' => \'post\', \'files\' => true), [\'class\'=>\'formclass\']) !!}\r\n    //\r\n{!! Form::close() !!}\r\n2. 生成CSRF token\r\n\r\n  如果使用Form::open方式创建表单的话，laravel会自动生成token，如果自己写的html表单，要生成token，可以使用如下组件：\r\n\r\n{!! Form::token() !!}\r\n3. 表单模型绑定（一般用于修改数据时使用）\r\n\r\n  通常, 你需要想表单中填入来自数据库模型的数据. 想这样做你可以使用 Form::model 方法：\r\n\r\n/*\r\n *  作用：创建模型绑定表单\r\n *  说明：\r\n *      （1）$user：根据id获取到的用户信息数组；\r\n *      （2）route：当前表单提交的路由地址及参数值。\r\n**/\r\n{!! Form::model($user, [\'route\'=>array(\'user.update\', $user->id), \'method\'=>\'PUT\']) !!}\r\n4. 表单组件\r\n\r\n（1）文本表单\r\n\r\n/*\r\n *    参数1：name为该表单name值；\r\n *    参数2：表单默认value值\r\n *    参数3：当前表单所有的属性数组\r\n */\r\n// 文本框text\r\n{{ Form::text(\'name\', null, [\'class\'=>\'small\', \'style\'=>\'color:#333;\']) }}\r\n// 文本域textarea\r\n{{ Form::textarea(\'name\', null, [\'class\'=>\'small\', \'col\'=>\'50\', \'row\'=>\'6\']) }}\r\n// 隐藏域hidden\r\n{{ Form::hidden(\'name\', null, [\'class\'=>\'small\']) }}\r\n \r\n// 其他文本框，如email、number、date\r\n{{ Form::email($name, $value = null, $attributes = array()) }}\r\n{{ Form::number(\'name\', \'value\') }}\r\n{{ Form::date(\'name\', \\Carbon\\Carbon::now()) }}\r\n（2）密码输入框\r\n\r\n/*\r\n *    参数1: 表单参数名称\r\n *    参数2: 表单属性\r\n */\r\n{{ Form::password(\'pwd\', array(\'class\' => \'awesome\')) }}\r\n（3）文件选择表单\r\n\r\n/*\r\n *    参数1: 表单参数名称\r\n *    参数2: 表单属性\r\n *\r\n *    注意： 在使用文件选择器时，Form::open或者Form::model的属性files必须设置为true。\r\n */\r\n{{ Form::file($name, $attributes = array()) }}\r\n（4）单选和多选表单\r\n\r\n/*\r\n *   参数1：表单属性名；\r\n *   参数2：表单属性值；\r\n *   参数3: 表单是否被选中，默认为false，true为被选中状态\r\n */\r\n \r\n// 未被选择的单选表单\r\n{{ Form::radio(\'name\', \'value\') }}\r\n// 未被选择的多选表单\r\n{{ Form::checkbox(\'name\', \'value\') }}\r\n \r\n// 已被选择的单选表单\r\n{{ Form::radio(\'name\', \'value\', true) }}\r\n// 已被选择的多选表单\r\n{{ Form::checkbox(\'name\', \'value\', true) }}\r\n（5）下拉表单\r\n\r\n// 生成普通下拉列表\r\n{{ Form::select(\'size\', array(\'L\' => \'Large\', \'S\' => \'Small\')) }}\r\n \r\n// 生成有默认值的下拉列表，默认显示S键值对应数据\r\n{{ Form::select(\'size\', array(\'L\' => \'Large\', \'S\' => \'Small\'), \'S\') }}\r\n \r\n// 生成带有空占位符的下拉列表（创建一个没有任何值的 <option> 元素作为下拉列表的第一个选择值）\r\n{{ Form::select(\'size\', array(\'L\' => \'Large\', \'S\' => \'Small\'), null, [\'placeholder\' => \'Pick a size...\']) }}\r\n \r\n// 生成分组的下拉列表列表\r\n{{ Form::select(\'animal\', array(\r\n        \'Cats\' => array(\'leopard\' => \'Leopard\'),\r\n        \'Dogs\' => array(\'spaniel\' => \'Spaniel\'),\r\n    )) }}\r\n \r\n// 生成范围选择值的下拉列表\r\n{{ Form::selectRange(\'number\', 10, 20) }}\r\n \r\n// 生成有月份名称的选择值\r\n{{ Form::selectMonth(\'month\') }}\r\n（6）按钮\r\n\r\n// 生成表单提交按钮\r\n{{ Form::submit(\'Click me!\') }}\r\n \r\n// 生成表单button按钮\r\n{{ Form::button(\'Click me!\') }}\r\n \r\n--------------------- \r\n作者：追风2019 \r\n来源：CSDN \r\n原文：https://blog.csdn.net/createno_1/article/details/81748490 \r\n版权声明：本文为博主原创文章，转载请附上博文链接！',51,51,'2019-02-03 00:16:34','2019-02-03 04:17:41'),
	(32,'Sublime Text 快捷键（MAC环境）','Sublime Text 3是Sublime Text 2的升级版。Sublime Text 是一款流行的文本编辑器软件，有点类似于TextMate，跨平台，可运行在Linux，Windows和Mac OS X。\r\n本篇主要针对 MAC环境下的快捷键整理',51,51,'2019-02-03 00:27:50','2019-02-03 00:27:50'),
	(33,'axios post数据 php 无法获取','JS代码：\r\n\r\nvar params = {\r\n    username: \'admin\',\r\n    password: \'123456\'\r\n}\r\n\r\naxios.post(\'test.php\', params).then(res => console.log(res.data))\r\nphp代码：\r\n\r\n$str = $_POST[\'username\'];\r\nprint_r($str);',51,51,'2019-02-03 00:56:41','2019-02-03 00:56:41'),
	(34,'laravel5.5组件之 Forms & HTML 组件','![\\70.jpg][0.2701010358604712]\r\n\r\n  [0.2701010358604712]: http://127.0.0.1:8000/uploads/28c226916f91a9dcc42d6f3228a4f523.jpg\r\n  \r\n  5月18号发布的这个扩展，好多朋友使用起来有一些问题，好吧，都怪我安装使用说明写的不清楚└(^o^)┘... 今天给大家补一篇详细的安装说明文档',51,51,'2019-02-04 06:30:02','2019-02-04 06:30:02');

/*!40000 ALTER TABLE `discussions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(4,'2014_10_12_000000_create_users_table',1),
	(5,'2014_10_12_100000_create_password_resets_table',1),
	(6,'2019_02_02_032146_create_discussions_table',1),
	(7,'2019_02_03_042458_create_comments_table',2);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirm_code` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_confirmed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `avatar`, `confirm_code`, `is_confirmed`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Carolyne Graham DVM','https://lorempixel.com/256/256/?35730','7eFYFgxGxhTQobmIdGsYc9ZoH8w15TpHV2tEElAce7HfKPEl','0','alphonso.becker@example.org','2019-02-02 07:48:32','$2y$10$yAQbYeFMMVqPQ6lq1Vl6wuOcMp4Sk28BZiasMUtjzDnyS8Q5C50D.','gxSyoYJmsW','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(2,'Kirsten Schoen DDS','https://lorempixel.com/256/256/?59290','7ox7SKF1bp4GXtBkZJxsi2QJJ3Ag6znuloZHNFM6DVTrFIMf','0','verdie.boyer@example.net','2019-02-02 07:48:32','$2y$10$A3KTjLLXzykm8fTq2O2KUOziF/Ifs2.y/K4SJ6D0fOTsBASkAR2/u','Em3gDTXBnm','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(3,'Maverick Kovacek','https://lorempixel.com/256/256/?37809','630m5kl4QucXBqkaG3slPGReK3tLb7feO892RvOuLMlekSg4','0','oran.weber@example.org','2019-02-02 07:48:32','$2y$10$UAXg4YWoDuzvKdf.i/bMj.V1ttTHIOCzOsxD.hddNWqe9O7rbyeGu','qaCO07dMTQ','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(4,'Kiley Christiansen PhD','https://lorempixel.com/256/256/?67536','rPr1nqT6ZK50oVFB2w0f5O6fvo0vd4zn5vqBTbahsHVjsg6d','0','schinner.serena@example.com','2019-02-02 07:48:32','$2y$10$Ij6.T/TfvHfHBe/0wO7Ff.gA0.HPevKDRX5JjO11TBlxIQubv5p.y','fsCNt8qS1W','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(5,'Ms. Amira Kirlin Sr.','https://lorempixel.com/256/256/?47944','d8cSPIyn7m9DBSRYXp9CucCYUJzCJ9zNMjGxNN4cyGsGXNT6','0','zdaugherty@example.net','2019-02-02 07:48:32','$2y$10$PJixXpPTGuEcSC7rWeYEN.t8zBu1gPhFO6BFvoy6Bnxt11EZ6LHb6','JFRzdmKpFQ','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(6,'Miss Georgiana Wisoky DDS','https://lorempixel.com/256/256/?99429','EnTP2iwoxNWMzdKsowfCgXnRHvO6nNlrNQ99qbUMOcP0haUd','0','bailey.gutkowski@example.com','2019-02-02 07:48:32','$2y$10$pDrpt/Ud0X7QEddgAstOzu6KTYjZ4LkbqKM7ws8wrZmwuruwvOTry','hGCJIdUnAB','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(7,'Thomas Kuhn','https://lorempixel.com/256/256/?13907','dkoVQIetzmXHQlDd1knqre24tHyXiluDyzwegNiXydi9pnQW','0','barbara89@example.org','2019-02-02 07:48:32','$2y$10$mwmU4CaZ9utOmgBUx0znjO6owJ20rW.eSfBuZEOKCvGmVvn/6fWEm','gpAKdGrGLP','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(8,'Ms. Monique Romaguera','https://lorempixel.com/256/256/?65959','5EL9sv9kW2L8HVA3HNJuxaTipxlOamFozml2KNNOWqqwTqR2','0','drath@example.org','2019-02-02 07:48:32','$2y$10$SANq9pu0xR9JGuKiTVKRHuFNCvHG4heh92yQpQUdm602CMN542yCm','BfDgYSGZ46','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(9,'Della Quigley','https://lorempixel.com/256/256/?24594','UYfdw8bLAMeYHrmpe96dNbKaxFAlz9W2nZxGOIPlqfnFMDZj','0','vincent72@example.org','2019-02-02 07:48:32','$2y$10$NUonDVX2qh3s7QHB8cl/ZuYrqWNmPE8XRbzLutKNRuij748YSUjC2','yFMsLnhAuX','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(10,'Mr. Eladio Reilly','https://lorempixel.com/256/256/?24028','RR2YBJGY1UYv98GOsYbcHzcQf5vPp5UTNhx4QGQvAGatut3f','0','mohamed.romaguera@example.org','2019-02-02 07:48:33','$2y$10$xo/dVxojWyp5I.nEGRf7lenA6LPCQUbT2O3JItdCrQC5oEOxajJ1e','pv9N5bfKqy','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(11,'Silas O\'Conner','https://lorempixel.com/256/256/?24853','Oa4rRV3xRXve5lylzNfkjlcZYjCEGzAXX5SEPJA6RvsHuZv4','0','orutherford@example.org','2019-02-02 07:48:33','$2y$10$RzobwJlAE1maQfmjIelkEuBLLml1gXO65d0MNBMRcfihKg/GAJeX.','9UHBST03kl','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(12,'Katherine Hodkiewicz','https://lorempixel.com/256/256/?45894','0RUpRMjOBj1HELxcJe5COVSqmi69hm71k4ajwLOwwq1gL27W','0','oma66@example.com','2019-02-02 07:48:33','$2y$10$dl8vD4kKJcSInOxOCAr2XuDMLqeextWymiclHV64zsgcTJMlMYcca','PhJXTi2MRH','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(13,'Mrs. Chasity Considine II','https://lorempixel.com/256/256/?85599','o75Cr1BGtYxOmWrabJPr67Zcca7RZHX1usgQGnhHbaZJUgJa','0','kutch.cassandra@example.org','2019-02-02 07:48:33','$2y$10$/UXMKmEYKqb2CMrKVM2kG.iFbzMxUE7HRXxL.BfDRtY2XE/0zZmkK','opcKC61OWB','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(14,'Flossie Senger','https://lorempixel.com/256/256/?98772','BmtFOXfli3jA68hnSS4YFx5NWdK5o0Es1DZt0E95BZPEHM94','0','stefanie.weissnat@example.net','2019-02-02 07:48:33','$2y$10$yyl2s250aueMt2u7TklBNuIFr/Ht9vgynRO2YitFKxF9FuNTTgSk.','g7urVWEiHe','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(15,'Angel Zemlak','https://lorempixel.com/256/256/?95609','fJgqFaz2Ca4VP8CRzrg0Srx2aau6JTogQudw9ZqJ30wcIM79','0','fadel.ned@example.net','2019-02-02 07:48:33','$2y$10$AwenyrwEAytZTBxHSGfE8eVdxaJ1y7neAcIUJVcOUpWzw7Xbgb7z.','n64URHjdv4','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(16,'Dr. Dayton Mueller','https://lorempixel.com/256/256/?95075','CaYYykCnjq3t1WKsXwlCu7SbEOM1RpTSViUqAnLIIa387SAy','0','vivian.padberg@example.net','2019-02-02 07:48:33','$2y$10$F8HOEMklckAP71W7YgRle.xbnhWAQQa8phXj3YhapVPPu9hfI811e','2jR3CjZIRS','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(17,'Chase Mueller','https://lorempixel.com/256/256/?74064','pbI2Bv62hXd3e3ur9IKXS1uPtJSNzso5QArFbLJzLKv2LJ4G','0','amiya28@example.net','2019-02-02 07:48:33','$2y$10$ALKDx/bF7NolepcZ8t9pYuM60l9qlt.nGeNFiavniTnrvZGnyx2ri','dJHp4poofG','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(18,'Alessia Frami','https://lorempixel.com/256/256/?98319','TCrXPHgAmnfKk3kX0nRS3CvbtQNcHrHOiNJdeVj98KwDZ7J6','0','hbeatty@example.com','2019-02-02 07:48:33','$2y$10$XK50Fz7lMHWyhW5rMOs8XevY.DH8i4e/mN7U2/YfBzHgMk73PY9ya','Hhi6T3uIp7','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(19,'Maverick Robel','https://lorempixel.com/256/256/?21492','SGqySTdZr5CLa5JlFV7lgUBgySrowl42og4NKPT43jtH1Ki3','0','willard21@example.net','2019-02-02 07:48:33','$2y$10$5ZUmk3s3UjwWqnHKSRBmUO/sndfcMfU2oGyojarKtKn998wdSs3L.','2X7eFzLfGm','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(20,'Trevor Eichmann','https://lorempixel.com/256/256/?82866','IZBYNenB2XllhNauj8EItvnbMZnMIYr9ZZ6az5jM1bNnJiNN','0','lenny.kris@example.com','2019-02-02 07:48:33','$2y$10$VACtz11dA6rz2Isaldrdy.nCVC8c1V.oq8X5B/p.wjPI5Ks0U4NDm','Z369YJ93V9','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(21,'Leonor Harber','https://lorempixel.com/256/256/?62933','Ww55X2tEmiHhohy0KxCandx9Nx9xl92SvVKI1cNGPkBVYGnX','0','oberbrunner.daron@example.com','2019-02-02 07:48:33','$2y$10$dhpo.apaLfFD5Hjav2HSkudroC/5uqIOxPFONS1ukf9lwtRzL2F2u','MYqAoQBjsE','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(22,'Thomas Wisozk','https://lorempixel.com/256/256/?72778','6MxihictUYNdJsrfeC1UNnDr5HkPpAH9xevAWMzxx9jOQZKy','0','oconnell.janiya@example.com','2019-02-02 07:48:33','$2y$10$TQuvKKtnZ.Hss7dS0H9NduDuk1fLzrFHHmwnCIDRh9oCWRQRAvq.q','KzfASl6uoM','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(23,'Dexter Wiza','https://lorempixel.com/256/256/?20965','ZnM7PpqU7vkfyryQwxaW1ATq8jwHsneQpJ8RB5zyxprojqNg','0','kara48@example.com','2019-02-02 07:48:33','$2y$10$Kf8gi1BkXcLu4IBmHT0YSejmEYEV41Bxzg5awQLWPNCvmDxEX7jGG','O5bwDc8xYM','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(24,'Dasia Rippin','https://lorempixel.com/256/256/?94936','L4wxmhRAml2zjniItztoqR6Q3MQyvhwnj5DNFzsfzwxI9zIh','0','schowalter.bernice@example.com','2019-02-02 07:48:33','$2y$10$81vj.kraTdcfkuV6UzmkTOF0f.gKJ1B7f2xGKuBShnYTLoPndzDxO','2QyXS8Jc9n','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(25,'Bernice Schmidt','https://lorempixel.com/256/256/?47033','Pv7xJK3b6Yq79bWLajNTVfPjZFkMUBvLL81GxSIzQJd7rpUL','0','mitchell.moises@example.org','2019-02-02 07:48:34','$2y$10$sM8JcX0WnrRjeh8V4Z.EfemMh0t4ATmHguqVOYKKqytplaubUorCm','wzym9rT8cH','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(26,'Mitchel Wuckert','https://lorempixel.com/256/256/?71520','gHawJnhQQlioWMVlfRzRscVlmKbaVVGUpmCPofgulbt50hHT','0','orie72@example.net','2019-02-02 07:48:34','$2y$10$65M8w8L53uYxw9c/OT.5.O8lHOG4WejkgbTysZVqVLPct.AaXsdYi','2weLt55KpV','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(27,'Guiseppe Hegmann','https://lorempixel.com/256/256/?59278','KOaOpx5bevrTgyQJehNj3q43MyEjL8LIRmjgutFzoZ0ct4qZ','0','lon.dubuque@example.org','2019-02-02 07:48:34','$2y$10$xiraQSWuopavkaEORYSGyuByfp0nDOzC2aJ45mnSSvqTBxrPnGLfm','rJqWni6b0D','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(28,'Katrina Fahey','https://lorempixel.com/256/256/?42621','Br5VgxB0ydshpf4fXBFdkTWjXkRxXj37b1vm8p9fHOGxNV4c','0','timothy92@example.com','2019-02-02 07:48:34','$2y$10$4aMfzpGzGcBUYcqxQVyg9.Qqv86RPpV5eNSHZGfAYRuOaXhscEQ2S','OucyBzncdt','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(29,'Neil Collins','https://lorempixel.com/256/256/?83489','OFGqAc6Ika3ngRvfZI8sHouk2u523ZcjOO7SXpL1WXttDqZ1','0','eve.beer@example.net','2019-02-02 07:48:34','$2y$10$z2SzKNyqWNJbHYo695qwveChukQ65DMS/09EotbTDvgwFei.pG.oO','RE2s8I4jpM','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(30,'Dr. Newton Walter','https://lorempixel.com/256/256/?51747','qKVdZ4hVQOhVb8MasAHHPaYjojzOZHWXpT1TDYjUtpUnxP7n','0','rex.carroll@example.net','2019-02-02 07:48:34','$2y$10$bdsjZH5.jav8lOKyRBG79uiyDi8llVGpCpB9rd6S7YFmE/16tHPuq','DjRyi6kP6b','2019-02-02 07:48:34','2019-02-02 07:48:34'),
	(51,'DevinBooker','http://127.0.0.1:8000/uploads/51_15492603412223661.jpg','O1a04rrtUfi3iIW64T9uydhM1CziyVtpOVNEQQX79ISdrOyV','1','785019257@qq.com',NULL,'$2y$10$yuW93FgArZVyFmXAwPNE7uDqGdBsLouSVQ24x5S8Dtp4Jzsj9cVki',NULL,'2019-02-02 21:17:14','2019-02-04 06:05:46');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
