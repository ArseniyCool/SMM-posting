-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Авг 04 2021 г., 18:59
-- Версия сервера: 5.7.21-20-beget-5.7.21-20-1-log
-- Версия PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `zamyat3e_777777`
--

-- --------------------------------------------------------

--
-- Структура таблицы `sp_account_manager`
--
-- Создание: Авг 04 2021 г., 15:49
--

DROP TABLE IF EXISTS `sp_account_manager`;
CREATE TABLE `sp_account_manager` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` mediumtext,
  `social_network` mediumtext,
  `category` mediumtext,
  `team_id` int(11) DEFAULT NULL,
  `login_type` int(11) DEFAULT NULL,
  `can_post` int(1) DEFAULT NULL,
  `pid` mediumtext,
  `name` mediumtext,
  `username` mediumtext,
  `token` mediumtext,
  `avatar` mediumtext,
  `url` mediumtext,
  `data` mediumtext,
  `proxy` text,
  `status` int(11) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_caption`
--
-- Создание: Авг 04 2021 г., 15:49
--

DROP TABLE IF EXISTS `sp_caption`;
CREATE TABLE `sp_caption` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` mediumtext,
  `team_id` int(11) DEFAULT NULL,
  `content` mediumtext,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_file_manager`
--
-- Создание: Авг 04 2021 г., 15:49
--

DROP TABLE IF EXISTS `sp_file_manager`;
CREATE TABLE `sp_file_manager` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` mediumtext,
  `team_id` int(11) DEFAULT NULL,
  `name` mediumtext,
  `file` mediumtext,
  `type` mediumtext,
  `extension` mediumtext,
  `size` float DEFAULT NULL,
  `is_image` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `note` mediumtext,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_group_manager`
--
-- Создание: Авг 04 2021 г., 15:49
--

DROP TABLE IF EXISTS `sp_group_manager`;
CREATE TABLE `sp_group_manager` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` text,
  `team_id` int(11) DEFAULT NULL,
  `name` text,
  `data` text,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_instagram_activities`
--
-- Создание: Авг 04 2021 г., 15:49
--

DROP TABLE IF EXISTS `sp_instagram_activities`;
CREATE TABLE `sp_instagram_activities` (
  `id` int(11) NOT NULL,
  `ids` text,
  `team_id` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT '0',
  `account` text,
  `action` longtext,
  `time` int(11) DEFAULT NULL,
  `data` longtext,
  `settings` longtext,
  `status` int(1) DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_instagram_activities_log`
--
-- Создание: Авг 04 2021 г., 15:49
--

DROP TABLE IF EXISTS `sp_instagram_activities_log`;
CREATE TABLE `sp_instagram_activities_log` (
  `id` int(11) NOT NULL,
  `ids` text,
  `team_id` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `action` text,
  `user_id` text,
  `media_id` text,
  `data` longtext,
  `created` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_instagram_analytics`
--
-- Создание: Авг 04 2021 г., 15:49
--

DROP TABLE IF EXISTS `sp_instagram_analytics`;
CREATE TABLE `sp_instagram_analytics` (
  `id` int(11) NOT NULL,
  `ids` text,
  `team_id` int(11) DEFAULT NULL,
  `account` text,
  `data` longtext,
  `next_action` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_instagram_analytics_stats`
--
-- Создание: Авг 04 2021 г., 15:49
--

DROP TABLE IF EXISTS `sp_instagram_analytics_stats`;
CREATE TABLE `sp_instagram_analytics_stats` (
  `id` int(11) NOT NULL,
  `ids` text,
  `team_id` int(11) DEFAULT NULL,
  `account` text,
  `data` longtext,
  `date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_instagram_sessions`
--
-- Создание: Авг 04 2021 г., 15:49
--

DROP TABLE IF EXISTS `sp_instagram_sessions`;
CREATE TABLE `sp_instagram_sessions` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `settings` mediumblob,
  `cookies` mediumblob,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_language`
--
-- Создание: Авг 04 2021 г., 15:49
-- Последнее обновление: Авг 04 2021 г., 15:49
--

DROP TABLE IF EXISTS `sp_language`;
CREATE TABLE `sp_language` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` mediumtext,
  `code` mediumtext,
  `slug` mediumtext,
  `text` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sp_language`
--

INSERT INTO `sp_language` (`id`, `ids`, `code`, `slug`, `text`) VALUES
(1, '65f21e936ea1099cb6624880b956e4d8', 'en', '505a83f220c02df2f85c3810cd9ceb38', 'Success'),
(2, 'fef6994bbc815911c04c58bf260d3f46', 'en', 'c03d53b70feba4ea842510abecd6c45e', 'Photo'),
(3, '8ca076b32c80d4d6a7a0fd2adf7e8557', 'en', '34e2d1989a1dbf75cd631596133ee5ee', 'Video'),
(4, '4ec0de8cdb7c9ccc6ed4ec2ee281e208', 'en', 'e0daf39823ec1a1a7878c9718f063d5f', 'Google Drive'),
(5, 'ad659fb52d7c2362ec96d6db674e78c6', 'en', 'f92aa92725095d5531f54b4589d99264', 'Dropbox'),
(6, '55cbc1364b05aad939124d6ab1e20588', 'en', '24d7e382be0f173f95e9ca51fe4197f6', 'One Drive'),
(7, 'cd1dfcbec63109a515db89d9d286db7f', 'en', 'b4080bdf74febf04d578ff105cce9d3f', 'Unsupported'),
(8, '2dfbdb2fd1c3f6f793f44fb56177d94e', 'en', 'b43c44d9521aed3234e05dc133b60af5', 'Scheduling & Report'),
(9, '5d8c46dca7741090844620b1e7916e47', 'en', '02563ee3c4f3f87cb86a9ba5dcb6741d', '%s scheduling & report'),
(10, '7c9c862a58e9fbf65e74aa2199fcc827', 'en', 'e8ebf38eb3ee0242e082b5666fdbc91e', 'Add up to %s social accounts'),
(11, 'b8f35b3212ad45df605eda453b6a03ca', 'en', '8b58b44ef9a84424f4acdc4214462ffb', '%s social account on each platform'),
(12, 'de4d825b6a8100d5e5677c454db2fd60', 'en', '32a016d18355655113f410218adfce16', 'Watermark support'),
(13, '1ec0239baae690a76a13d235c27398b4', 'en', '1ab67f5e7ec1634687355a5eb6bda98c', 'Image Editor support'),
(14, 'f5ae78b10601890de14063d99c609218', 'en', 'd73bf6d95906e0d6281c287d05b86241', 'Cloud import: %s'),
(15, 'cb0c7b193e4be2c9efbf55360a93780f', 'en', '69fd78fb9d96b75a675da80b618f29cb', 'File type: %s'),
(16, 'c6592a55ad54fd0b40f5c12a849cc746', 'en', '185f238a37c4b62f1480a1ae41644962', 'Storage: %sMB'),
(17, 'dc630dc06a092606e1c1c8d119da6105', 'en', '3795eec1e5ceb372d5a306a1079187d2', 'Max. file size: %sMB'),
(18, '3c5fcb891ce3ee3d83fa3010c8394db0', 'en', 'a537894111f4226b7037efa79b1ae32d', 'Easy to use'),
(19, 'aa98e95f0c45bcfed66f2534359372fe', 'en', 'f22896e823410afff658750b7b9fb295', 'The intuitive interface and clear and logical layout make it easy to use'),
(20, 'ceffe43dd8379fd2645ac3e6f33b2199', 'en', '9dc13e77c1f2a18938d4e05d131b43f8', 'Free support'),
(21, '6633ff5c1b213507bd69e3c64ce3b751', 'en', '523ea4b263ac9eeee014f9d409acdb89', 'We give you the best support throughout the use of our service.'),
(22, '6386c66c888fc2ed6ed7c2570923b2f5', 'en', 'e31f55827f6612c005f44acc3fc8a76c', '&copy; 2020-2021. All rights reserved.'),
(23, 'ebef3614f3cc39ac655afa1069b98342', 'en', 'fa2ead697d9998cbc65c81384e6533d5', 'Privacy Policy'),
(24, '029ce8aa23ee6bfdc5e851aa2fdb30bc', 'en', '9f45d62f87438db3fc4e7cba1052d9ad', 'Terms of Services'),
(25, 'c3b61507b8a0920e043c3f3f2bf5dc8d', 'en', '98f130908bdb82901f3bc905870908fb', 'Forgot password'),
(26, 'e2929addb51e0af0b239b6c0fe46fa1f', 'en', '227f1ae18fd039ffe553f5aaf6b16d35', 'Please enter your email we will to reset password'),
(27, 'fa2a9ed5df0666dda22cea1d4f37c54c', 'en', 'ce8ae9da5b7cd6c3df2929543a9af92d', 'Email'),
(28, '4f3787a40d0c2df54d0335df61c2b527', 'en', 'a4d3b161ce1309df1c4e25df28694b7b', 'Submit'),
(29, '2d0434d8e1a9a7a4c596d02500736659', 'en', '07557093cc74581a6938f62f8cbc9d95', 'Don\'t have an account yet?'),
(30, 'dbf98a5d765d72c3c4d48d21de83f646', 'en', 'd67850bd126f070221dcfd5fa6317043', 'Sign Up'),
(31, '08e1a501e4c3471adc38f2da29d9771b', 'en', '8cf04a9734132302f96da8e113e80ce5', 'Home'),
(32, '45ce303a5ea84ca45b4a9615cdf03035', 'en', '98f770b0af18ca763421bac22b4b6805', 'Features'),
(33, 'd90fbea4734e82a7241882fbceece28a', 'en', 'e22ac25b066b201473de7aa700ef5d92', 'Pricing'),
(34, '4e2d21d58fdcb651f0b6f8743c0f014d', 'en', '437e87fd55f7d33033053fb2f319859f', 'Modules & Addons'),
(35, '916e1a0b79ff31555d78ae0d2768e4f4', 'en', '99dea78007133396a7b8ed70578ac6ae', 'Login'),
(36, '3892499e741a55b239d4cb450a10f516', 'en', '2938c7f7e560ed972f8a4f68e80ff834', 'Dashboard'),
(37, '3871f738b4f700cdd6485138cf0e862b', 'en', '36c50a61062198424098cc2281636e34', '#1 Marketing Platform for Social Network'),
(38, 'a846256ef34575e42d676dd8a15b174c', 'en', 'a4acdf575ac80355f8143f9a4c10ff2c', 'All in one'),
(39, '4c9d4b90415aed5506d34d1cd08ac5dc', 'en', '770f65f00c09996d48ce01f8ed06122b', 'brand building tools'),
(40, '7b0cc26840818a63e905faba72cea72f', 'en', '3ced0c9fcf81f4b8a38804b0256acbbd', 'With our service will help you save time and optimize profile management on social networks. Visually Plan, Schedule post and automation on social networks.'),
(41, '4e98c37478a0af370350f009cbbdfaff', 'en', '5780c62ec55362fac70d8fe8b1982b56', 'Try it now'),
(42, 'd17f6f5ec09e8d6723699fbefa2e8414', 'en', 'b6d2dd18a545b11b81eb20f7511a9c8e', 'More Features'),
(43, '1da127cf575a6a63891dc8a41a35cd3a', 'en', '35a599f0a73067e8b33642b0fa08f63a', 'No downloads'),
(44, '37f8933ee9b658eba5d5d394120e554f', 'en', '191b476862fc32fc11776ab0b4655577', 'You can use our service straight from the web on all browsers. You don\'t need to download or install anything to enjoy our service'),
(45, 'bfd15d3b55669aecffdf01e11c347c3d', 'en', '5799419308504ac51e21078e644562a7', 'Saving Time'),
(46, 'adcee18cc1b5c8f38075c19ca91264a5', 'en', '1056634b3cc4659e96281768576cc161', 'Dedicating just 10-20 minutes a day on your social media strategy can dramatically improve your customer relations and interactions'),
(47, '8cf8248137afabcf3bea5df3d355903a', 'en', '777dfe12677ee343905c520f3a6093ae', 'Schedule posts'),
(48, '64796c1464bdf211b2a8a785c67f6218', 'en', '7b2f1c1838da9b5389912045046b7a6e', 'Select your date, time or whenever you want to publish on each your social accounts just need a few click to complete and enjoy'),
(49, '4321184f558df8b5748f2dbc68ab1947', 'en', '1c673827f58ce9caf3692e421991baf2', 'Analytics performance'),
(50, '96c634db6c4f7521cde44dcb19628644', 'en', 'fde77a165d758a85d9abff31d15b0561', 'You can see all your posts how it work and increase does. It will help you control your audiences and target'),
(51, '2366dd55dc3840bd3a146fe3e70d5266', 'en', '745d730613d5c5abb52b75a5c5a1b6d9', 'Influencer Marketing'),
(52, 'da8f20280eeec98c602752c9c03a5853', 'en', '4f2c2c858340379920559bdd7079d895', 'Focus on your top influencers & supporters so you don\'t miss their engagements follow them'),
(53, 'adf118d3b8d34ade773f4715998e8427', 'en', '2b69032ea36626a737438ed001ced720', 'Safe and Secure'),
(54, '5be2c65e776a601c8cff38ab5864c138', 'en', 'ae5274a9b52a0faf3c8249316c8d1a05', 'Your data is safe with us. We\'re not one of those companies that gives your personal information away'),
(55, '933505d9ad9e5992a0a35df497df7e02', 'en', 'f838f64c7e629d3105edc134c5249580', 'Streamline your social media processes & delivery for your clients'),
(56, '48a27742e835a25bb4abb2efe4d297d0', 'en', 'c338a4ee896cfb5f4941f576dbfe61b1', 'Whether focusing on a campaign for one brand or managing social across hundreds, Our service helps agency teams be more productive by managing all their client activities from a centralized hub. Our service is guaranteed to save your hours each day'),
(57, '34f70303d6e986fa63d2da26cad203c4', 'en', 'f311e14ff1b91f5693153c94826baa37', 'A complete solution for your social marketing & save your time'),
(58, '2b6a983161d2e320ea8cd12be9bc73fe', 'en', '23150f89ef560b9e2d0f35211398c0a8', 'With an intuitive interface and a lot of extra features to help you create articles that are interesting and easier'),
(59, 'cb1218173e8e289f9237518e6b58573d', 'en', 'd4ef94c16939292a84cd97e40097553e', 'Perfect for modern use'),
(60, '6db8211fdab8020d7f2f661665c1d2b0', 'en', '5f58dc8f6269bb7efd38cd6244d02acc', 'Image editing, easy uploading and watermark support'),
(61, 'b8fc2a55751ff3deb41a53d5a1a2749f', 'en', '6fd510bcf003c1a990a094fd9d206501', 'Quality design and visualization'),
(62, '09a4c0fa9c436af76d5f1ef8714d7d4f', 'en', '959af4ac143f572d5fdc48642238771e', 'Inspect Accounts'),
(63, '36f083515b07dc41e2f50b670662aa98', 'en', 'a265b9b083e4b5cd570823825b0198df', 'What we Offer'),
(64, '8fe53b5183204001f7f4d980bfe5d6d8', 'en', 'bee15c5e5356b6ed81546fe6731c73df', 'We\'re more than a scheduling tool. Explore our features, and beat the algorithm.'),
(65, 'bdd8b7872cb9bd3f03d28cdf1d45f34f', 'en', 'a632162abed09bc6d2439e913151479d', 'Visually plan and schedule your social media campaigns'),
(66, '7f43534b4189b9b86273b5f5fabd39ac', 'en', '86aaa6f8124608229aa0ff148590b414', 'Coordinate creative campaigns to drive engagement on social'),
(67, 'a55a474dc24c5e9e9c8e526fe29205f3', 'en', 'fbe058053a23f48562dca3a546aeabb3', 'Measure and report on the performance of your content'),
(68, 'aea9dfcab158bd91886e440e04918e7c', 'en', '416d850e049a3592ebdc3996f27e2f0c', 'Get in-depth insights to grow your reach, engagement, and sales'),
(69, 'ccbca99cf8c5defc95eabfd534ad6e60', 'en', '469a5192bf25d20c488af59a71716578', 'Monitor engagement across all your social channels'),
(70, 'a7c460658ecdb73f7674003e84c05222', 'en', '9539e55fce6c1e6905092562f70f9459', 'Engage with your audience & build a community that loves your brand.'),
(71, '8b1ad954cd3850c50322ad2fab824384', 'en', '14729a935fb0f0da04638b6597414af8', 'Brand Success drives business success'),
(72, '1da0f4f2aea15bad4e55e6b91b1297ce', 'en', '8cbb8b20befb4b2668b9b41ba83262eb', 'When competition for attention is fierce, and every customer is an influencer, growing an inspiring brand is a key success factor for your organization. From SMEs to large corporations, agencies and non-profits, teams of all sizes need to embrace the processes, workflows and tools that foster Brand Success.'),
(73, '873d633f61495cea044781fd800b55c9', 'en', '661adcd777f35c8f3267367ed5d5925f', 'Ready To Try?'),
(74, 'd1d24efa59ff4e3b2fae527f32b19bb8', 'en', '95d3fa6b9e69c588a333f4e78139a7cd', 'Enter your email'),
(75, '3b6bb4bb914536fff0f80f09dc2a1910', 'en', '9fc7db4a01a6f11eba471c6b7d5f627c', 'Get Start Now'),
(76, '7ed77f2986350c6862df2402395798ee', 'en', '52f1f38322f1b1165f3a4ee368a0e82f', 'Do not hesitate to try it out with just a few minutes of setup'),
(77, 'a16fa69e41f647e890939d4e5a39e997', 'en', '5cb87999f2c8c2c4ea76fd96764832b3', 'Pricing Plan'),
(78, '6ab113546d0a18673477d2072dc62ecc', 'en', '9dbc2c1ccbf3316f57661e2d884f3f6c', 'Get started today with your full stack of brand building tools'),
(79, 'f80dba6ec6a769fbeb9883704da8e305', 'en', '9030e39f00132d583da4122532e509e9', 'Monthly'),
(80, '393e63d14caedb85987cfd2858b88ee8', 'en', '10b34207c4ef4df0cf0d0cf792e61bf9', 'Annually'),
(81, 'cff0d8f654078d4a1efe9565d02820ab', 'en', '008132ddac21c4c90b7e2f57e988c16e', 'Best value'),
(82, '6a5ea60b505b4f50e77b9a151b6aa19c', 'en', '1ac4312c7f68a464862cfde0f86d2e74', '/month'),
(83, 'de708ddd9de62f850aa7d918c6462e80', 'en', '393739273b51cd92671af1d50181edb5', 'Advance features'),
(84, '2b29c9fc72a6299da4df3c4e6c17501a', 'en', 'e0c4332e8c13be976552a059f106354f', 'Get Started'),
(85, 'bc55f209f789408a5d0617a628095011', 'en', 'df96d9825d4435f2089b4f249394a8be', 'Start your free trial. Are you ready to try service reign? ! No contract. No credit card'),
(86, '74f0b8f51bf3cd41ee7da9ac01fae797', 'en', '4b9b17565e8b4d31ffaa207ded99ac38', 'Recovery password'),
(87, '32d0fa71dbb2157f4e62de35c8e9d015', 'en', 'efb40a8b0a33d5a3689dc4a56e0e3589', 'Please enter new password to reset your password'),
(88, 'fb9741bb5ec886f8529ae30496e47321', 'en', '3544848f820b9d94a3f3871a382cf138', 'New password'),
(89, '953d73eaa9d9d58c0af0205f60714214', 'en', '6ab96a5df54aa6aae2bab9ea75ab76c9', 'Confirm new password'),
(90, 'f1c91f91df0d15c3f7b7e4fb8586d701', 'en', 'dc647eb65e6711e155375218212b3964', 'Password'),
(91, '6dc7e20e4a79f0a9532d6807df8476c0', 'en', '878530871f0db73f004f5bd6591eeb76', 'Remember me'),
(92, '5a9fc48800bec8fde2e87183e39071d9', 'en', '99804d0f6c72187504e870fea7e32a3c', 'Forget password?'),
(93, 'fa27cd6274a2da28d57b32ec90434f87', 'en', 'f2fdea440d768b85591e936a803c3631', 'Sign In'),
(94, '4535b41777820b23a31f5103df200e77', 'en', 'a52217a32e47334aa2b2785269b5852f', 'Or signin using'),
(95, '11b2007230c3e23ca8baea5a1de49dfb', 'en', '4db61af3a5a290a3569fcb0c2503211b', 'Sign In with Facebook'),
(96, '1c59b3d5b8dca197c5312e36b19f99f3', 'en', '54f0f324f770292d8085bd2b5e944648', 'Sign In with Google'),
(97, 'e6d91b2fb02caf42d1ea5fb430c90af6', 'en', '1e067ac485fd2a9edad9f1b50e3a13f8', 'Sign In with Twitter'),
(98, '26254088135cb3db6c06ab682bf09a37', 'en', '5e65cf190b364020e967119fb26593c8', 'Create your account and enjoy'),
(99, 'b81309c91004419932a673f96816a682', 'en', '9993039cea3e460750a2248fd8471415', 'Fullname'),
(100, 'b4d5432a25cb32a86a6db6d831e6148b', 'en', '4c231e0da3eaaa6a9752174f7f9cfb31', 'Confirm password'),
(101, '1b053e6a49f591078fd0498182d0639d', 'en', 'cd9b0c5b928d317fa68021356dffda1d', 'I agree to all Terms of Services'),
(102, '75a630ecae8a8c362759fc4a470a8f2c', 'en', '21bdc5689c12595ae14298354d5550d5', 'Already have an account?'),
(103, '67e001284867b3e1d3d7f93def7a8364', 'en', 'a9a62e70841c4d06dd16306a85700d36', 'Activation'),
(104, '46dae130a836e7c569b40b58fbd2e62e', 'en', 'f6357dcd28326385103ae773c87137cf', 'Activate your account'),
(105, '69e9afd8c75f57b3f53f556bd0e4afc0', 'en', 'dfb45b965eb127f7dd2a2dad190dfe05', 'Your account has been activated successfully. Let\'s start experiencing the great features.'),
(106, '19a68f21c5f054efb1371e46c95af6a3', 'en', 'ee20bb60493f049175fc10c35acd2272', 'Watermark'),
(107, '4ddb11e5c5d26f60f81ff31978266a8d', 'en', 'af0e948a2c4c504c5228be51e5f4fd02', 'Cannot find the profile'),
(108, '368695dba144034ee1c45d3127c57fc7', 'en', '13348442cc6a27032d2b4aa28b75a5d3', 'Search'),
(109, '5e091b74f606d001c7796af65171f8fa', 'en', 'e92c667c78b4760df3b5673dc81e996d', 'Set default watermark for all profiles'),
(110, '4fcf331affc91778acc20d22f74a026c', 'en', 'd49dffd266fee69cc2f88435310d0298', 'Default watermark'),
(111, '439a98c3ffab444540634987adf60b50', 'en', '52f5e0bc3859bc5f5e25130b6c7e8881', 'Position'),
(112, '73a553a192bd89464235bf96508bd718', 'en', '6f6cb72d544962fa333e2e34ce64f719', 'Size'),
(113, '6fe95a396c96b10e252740757597a778', 'en', '3d971943089a3388c01fb297a32d9ba7', 'Transparent'),
(114, '8ebd0e1a8e4e7b3dc3d775dbee1406a1', 'en', '0edd8b69106cd16594aad42e3f61ecf7', 'Are you sure to delete this items?'),
(115, 'a254ef11e4c6abfdb6c3e9e4b8387a91', 'en', 'f2a6c498fb90ee345d997f888fce3b18', 'Delete'),
(116, '93ca5a7335df63cece2c1bfb0ff3f8a0', 'en', '91412465ea9169dfd901dd5e7c96dd99', 'Upload'),
(117, '2fde8c8660e8dea3817cfd90e0407303', 'en', 'c9cc8cce247e49bae79f15173ce97354', 'Save'),
(118, '2bd5b6ae0e9e2bc26f0cd707d885c663', 'en', '57fb105f28857a1e2d72b0f2922635a6', 'User manager'),
(119, 'bd8f045aa7a32efba1774ed7114210e5', 'en', '51ec703ad6d0c70405759287c2f6f409', 'This email already exists'),
(120, 'd1817f6963ebd2a7c1f6548e22f0ff9c', 'en', 'c031b1ac59b11061818f51af8b291e50', 'Your password and confirmation password do not match'),
(121, '3662aae3480bdde2e436068698561236', 'en', '8c1279db4db86553e4b9682f78cf500e', 'Expiration date'),
(122, 'ef3c65e7c0025569b55c29b2d09947d0', 'en', '236df51bb0e6416236e255b528346fca', 'Timezone'),
(123, '53e597c872fd508234e2c3c7747bdf4b', 'en', '651ed4710990f7dac47711fd8c4cc26a', 'Please select an item to delete'),
(124, '8f5e7a90138d833b303d7cf475267811', 'en', 'a6f2b2df29609876b609c318bdbdf9a1', 'Banned'),
(125, '3ee555f28b587f8e1e709d89933dfc30', 'en', '3cab03c00dbd11bc3569afa0748013f0', 'Inactive'),
(126, '77296d6d98e359c11f59ee0ec5c71d36', 'en', '4d3d769b812b6faa6b76e1a8abaece2d', 'Active'),
(127, '3efd37b44803fe43d817e42dd799e2d6', 'en', 'd85544fce402c7a2a96a48078edaf203', 'Facebook'),
(128, '14b44dac0360449b7e6ecea0bd182815', 'en', '2491bc9c7d8731e1ae33124093bc7026', 'Twitter'),
(129, '0cc20d4d90aa63c6a1850e9fc9291ede', 'en', '8b36e9207c24c76e6719268e49201d94', 'Google'),
(130, 'a660553bdf9a498039660c5cf33e097f', 'en', 'fd1dd0c603be8170f9eae0be9f2f6afb', 'Direct'),
(131, '4f4dad3f337e4dbe078cc52e6c1023fd', 'en', 'f923f903857a5387d3db70494e074632', 'List users'),
(132, '1ad48ee06cae88e8345e83ec59a8249b', 'en', '5d720aee27e4d9612eafaf0c6a9061c9', 'User report'),
(133, '048d02861518ed999e03f4e55ec72cfe', 'en', '0095a9fa74d1713e43e370a7d7846224', 'Export'),
(134, '695841247fc211cde994fa77705bf64c', 'en', 'ef61fb324d729c341ea8ab9901e23566', 'Add new'),
(135, '179fa06f4bdcc494d3b3e9d5d4fa3a3f', 'en', '2de32377e0c6ee60d03338c14986d124', 'Basic info'),
(136, '70bf532adbb82264064bfa09ecd97316', 'en', '209802fb858e2c83205027dbbb5d9e6c', 'Package'),
(137, 'c5d3776d97af64f6285a148f474544c0', 'en', 'a1413ed049a4bed0e649c409b4462b49', 'Login type'),
(138, 'b3beda691179b464344e2dde739302d8', 'en', 'ec53a8c4f07baed5d8825072c89799be', 'Status'),
(139, '1738a5193193d186c24c285d450cc6b8', 'en', '820dbd2b8f606aff866c0bbfb6b737c1', 'Changed'),
(140, '1c10efacb0dc9fd805db5522302797e7', 'en', '0eceeb45861f9585dd7a97a3e36f85c6', 'Created'),
(141, 'affe57020448ec978e8aa878c08598e2', 'en', 'f8fd5e179bf967f2c13519802552a44a', 'View as user'),
(142, 'a6b78851b08cedfc9ba6f10a3c9dcc3d', 'en', '7dce122004969d56ae2e0245cb754d35', 'Edit'),
(143, 'f410496675c6fff1d8147507de885939', 'en', '06933067aafd48425d67bcb01bba5cb6', 'Update'),
(144, '1f5aca87c72634e570f6b1e4fad4e437', 'en', '0557fa923dcee4d0f86b1409f5c2167f', 'Back'),
(145, '36ca520791c8f9e8dc609a29f66afdc8', 'en', '858ba4765e53c712ef672a9570474b1d', 'Member'),
(146, '7f85d10f0e4e0290ee9007e227595a8f', 'en', 'e3afed0047b08059d0fada10f400c1e5', 'Admin'),
(147, 'd480cb574a014c271f8d4477922ddb0e', 'en', '32036005d1f6ed59803ba3e13c80993e', 'Avatar'),
(148, 'eb548388f44ee9cba4e9efaa0209df2c', 'en', '16d2b386b2034b9488996466aaae0b57', 'History'),
(149, '9ecff9ba557ffd21661c880efe6882bf', 'en', '4649093d4d10aa95a212636f146c47fd', 'This account does not exist'),
(150, '2f500773e4a22becb13429e5be9aa518', 'en', 'f7db455c1f8c044c06d6df622a291c21', 'This account does not belong to any team'),
(151, '95dbc898f2e5248212a24427223e3b86', 'en', '9bbedb84da52a148b912871670fecc92', 'Please select a package'),
(152, '3dc7fb22a9751b7109c80836d0a6a61f', 'en', '0caffe1d763c8cca6a61814abe33b776', 'Email is required'),
(153, '62d8b565f4f8feb7d75c59b0c5d1b0c5', 'en', '47be05698f8dd87bb445ceefce6abd0d', 'Password is required'),
(154, 'e79052c4b1abce21b9c1c0e92c7f781e', 'en', 'f14e18ef93f7a70cb841b2330366f7ff', 'The account you entered does not match any account'),
(155, '1a19614771f088aa0b2aded86dcd1e38', 'en', '92e72935893c7830cdec6ce385be7fff', 'The is a problem on your account. Please try again later'),
(156, 'de432f80adcd0d1257464e7167e4d410', 'en', '63e68809cb958967be7eb29412787e68', 'Your account is not activated'),
(157, '8a3de6e5aaf314dc3dd516268628482e', 'en', '6e62bbfb3b7d4dd9bf020f9c6780bc08', 'Your account is banned'),
(158, '270454e3f5642f1ec203d4edd1f4bc89', 'en', '9c3cd291e0b8e35328a63d857beb6355', 'The password does not match the confirm password'),
(159, '72229341c2577ab36af44a4b979b21ed', 'en', 'bee6d6b09634c22aa9df4c4f09c70efd', 'You must agree to our terms of services'),
(160, 'acb616b46981f5b6b4ec529a85389f6d', 'en', '92ff6ef7b7733567c89df3c3d3a5376a', 'Timezone is required'),
(161, '9663cf1e3f30a7037a57e9b3f4a9f1ab', 'en', 'a838e5e0705aed3d7b42795febafaa48', 'Thank you please check your email to activate your subscription'),
(162, '83500310722bd7ed2136f99b77f16cb5', 'en', '9b9fd7f15f0c58da73d8b18c897b971b', 'This email not already exists'),
(163, '848abdeaf57ca3d77e71e5cbdf28491b', 'en', '8c883f09aa990e5dcfa8b9d6bc8bdb11', 'We have sent you an email please follow the link in the email to complete your password reset process'),
(164, 'd7565fac6e69dbc6d346a4862a2c6932', 'en', '2ff126000ced5065e34359cd8c11009a', 'Have a problem on your request. Please try again later'),
(165, '5a2fd74abd2b1c5093936f9a8132ed36', 'en', 'fde60b717aca6cbf9b1e1cdffe82cdf4', 'Please complete captcha'),
(166, '7d983fa5ae8ffabf5bad6cd88bd050da', 'en', '051156014e3e00388f9f5eeb3943b90c', 'Wrong captcha try again please'),
(167, '9f76e9ade95b88f7805bad975b1e9d28', 'en', '6c10cf9f5b2cb966b7a4e641a9825373', 'Current pasword is not correct'),
(168, '6727c6093f9886944c2e6bdaf783acb6', 'en', '305ff8d96466521d9c84d21041d62971', 'Active user'),
(169, '7bea99c21c29303061be22d205af828b', 'en', 'adaaee4b22041c27198d410c68d952c9', 'Percent'),
(170, 'e4dbeb753e33c6b2901114d4cdefd4fc', 'en', '2a5e64419d8ac3898a8e54b0c0468b76', 'Number of active users'),
(171, '4656a99561ba44022cf04b31a146e63f', 'en', '2cc7ee7e390eac945e7baaae2d10a9a2', 'Inactive user'),
(172, '0fc2f57ecf2bcd33330da0cba9f58360', 'en', '8eaacf51d41b1ab94da735410eddea49', 'Number of  inactive users'),
(173, '2394d9d76556a5344acec04564916f74', 'en', '493dbec7c424e581a983acf3420ea7cd', 'Banned user'),
(174, 'cbd14a43a91cc4589cd05afbdfde556e', 'en', 'ef9d9a66fa63b2dbd89801ef97a4b22c', 'Number of banned users'),
(175, 'c2b607fe8c26370293719320f9e4add7', 'en', '5cbb4a6c74b160bdd49ede71ba78718e', 'Register history'),
(176, '8140dda9bcd7b3d63e4d35a885e3d8d6', 'en', '1dd1c5fb7f25cd41b291d43a89e3aefd', 'Today'),
(177, '7bfe8da953781b097bdcf8b8b0032433', 'en', '70a6facb9d63f6ba070900c4c13df22e', 'This week'),
(178, '17ce321f8a1b22d7094ea0a0855eafd3', 'en', '96165d6df5c2fc0a2d2049848c130c1c', 'This month'),
(179, '3b6bdf2ce9b0fd1670b0a98d91d3a35e', 'en', '02a3ccb8294183b300fef7a62fc44a63', '%s users'),
(180, 'e76d8c6612e750e5ad90fad1e71cc571', 'en', 'c35890fced542f7e539ca68fa7f17d2f', 'This year'),
(181, '5f62e7ed750198db7bf6e0deb6ecd9db', 'en', '98713d5d0ab193465443f2a712a34b3a', 'Recently registered users'),
(182, '9613b8f03105fa2a636efae1d2f5bbab', 'en', '2557491405dd96ce43f55a3133cfd1fe', 'Last 30 days'),
(183, 'e96bfa585ce759f84d1990842924a21c', 'en', 'bbbabdbe1b262f75d99d62880b953be1', 'Role'),
(184, '9aaf6c00a517cf3e039d5422cb3e8fec', 'en', '47afd921e4525cb5fa1141a3b0f2f8b0', 'Select package'),
(185, '5806340c9b53202942fbfa2df5256956', 'en', '80919be0413cba91ea1c240ca12ee13a', 'Signup'),
(186, '197d2cabc3d544aa44a436ea762ee184', 'en', '2faec1f9f8cc7f8f40d521c4dd574f49', 'Enable'),
(187, '04956d26a0fb49cdc6fd28f36bdfaa3c', 'en', 'bcfaccebf745acfd5e75351095a5394a', 'Disable'),
(188, '9f2f4e4d9cfeef95e73b6f7af00cbbae', 'en', '82c873d74c55b79a0a2f909ac2a216fe', 'Require email verification'),
(189, 'db06a66a323cb89c27b11bcfebfc33ee', 'en', 'be546fa8668ed1db33bfd3dfc9d543c3', 'User can change email'),
(190, 'ae8da03a26d738c166926eba5cf32a56', 'en', 'fa5d0bdb39339051fe8f8906b4e293e3', 'Google reCaptcha'),
(191, 'fb226d8669393f24e5930770db6399a1', 'en', 'f76aa877babf08bf899a249f0123aa1b', 'Google site key'),
(192, '0b8c3616bd592906ab9a81d72964556a', 'en', '83e57b4b1895501252f9189c3c234790', 'Site secret key'),
(193, '4f2c1b04971c59dfc8d3b58dd33605cf', 'en', '37c485c8d229d4b72128bc0e06b6064f', 'Facebook login'),
(194, '9fec8ceb0c29375d2d6953c0f401bc28', 'en', 'ca81c5da8d3796beca28ff399b41ed46', 'Facebook app id'),
(195, '0fdd16179eeae1ec056dcd2490c950aa', 'en', '2a8b40ee3d3d42640abd1981fc32182b', 'Facebook app secret'),
(196, '218e98a61304d3c834614f56e133a8ea', 'en', 'a678cb25405e4db8f96fcbb8a46cbef6', 'Facebook app version'),
(197, '0881aaf5b6b8a192932ba602b458e78d', 'en', 'a22a1a7df8bae4e34a39b839da4e97d4', 'Google login'),
(198, 'fd323f1b15f12bcd47ee0c5f592eb4e6', 'en', '6d558567d9a5010faa337a3f08119282', 'Google client id'),
(199, '1a8765301961800b9f3182d0c09f3b53', 'en', '9646e959eca5aaf316fc578d3bcbffc0', 'Google client secret'),
(200, '5180a8416391f1bc1474216331c6cc30', 'en', '42e23e6fc4bb37416ea65dac1506d627', 'Twitter login'),
(201, '696068f527f5d04cab23c53430135078', 'en', 'e5ee1149da83cf11c12a8b6a9080d083', 'Twitter consumer key'),
(202, '0672f3f8a7f9fba30fa2b2c85d94849f', 'en', 'e5a4be39c3935ec602c2b7d390a4bffb', 'Twitter consumer secret'),
(203, '9972fd0e713f84862aaf900b08f88215', 'en', '7f30b9fc0df4f36acdc183c5ba4b5b1c', 'Oauth & Login'),
(204, 'c2eaf4a876c2e1edd1142cf021cf7aee', 'en', 'bf2e46a30059973d25f67373b2983a79', 'Social pages'),
(205, '2386feb0efea0557fbf7bbcf58e36232', 'en', '55f015a0c5605702f913536afe70cfb0', 'Instagram'),
(206, 'e6f68a43164618b9a939942990926ea2', 'en', '86709a608bd914b28221164e6680ebf7', 'Pinterest'),
(207, '5fd2ee20388060abedc134829aedc1a6', 'en', '970cfba66b8380fb97b742e4571356c6', 'Youtube'),
(208, '2f20421599c13fc18e4c4d6a09440f27', 'en', '0f2d5a209d1b447c2408eb16c6d8bac5', 'Social network settings'),
(209, '7a84697c5a7ecdd977bdaf9e7abc1c04', 'en', 'f4f70727dc34561dfde1a3c529b6205c', 'Settings'),
(210, 'b6d125e0fcdd40aba235ab4509c0062a', 'en', 'de62775a71fc2bf7a13d7530ae24a7ed', 'General settings'),
(211, 'b24b0d9ea8486adcaf3c8401c1bb2ac8', 'en', '0db377921f4ce762c62526131097968f', 'General'),
(212, '844bd297d3095fd3ed1f97bd9daeb9d4', 'en', '5ffade01fdaefb1ab262934f65ba66c1', 'Website title'),
(213, 'e879f26eab4be1395a6f23d2c99d2d4b', 'en', '8e517fe6f026cc2a6993b1f8b95174c2', 'Website description'),
(214, '300d8002f25676d21895a91ac2f56765', 'en', '9345b40520c58723bc8fadd985130eba', 'Website keyword'),
(215, '19d960c48b14aeba2bddec80910cea30', 'en', '6e267fa5f7cb01057142356033e8805f', 'Website favicon'),
(216, 'fa89cc3ab3f6b7dec1737d0ebee47d60', 'en', 'e5cd8f3ce698f735be83243a463fc4b5', 'Website mark'),
(217, 'a4feaec081f9a7012966e3b1e9ffdd2c', 'en', '835986c76ac73675b7b202ceca9c5817', 'Website logo white'),
(218, 'dc6d33c55959d7923f86063e57dde3b4', 'en', '9446596f724fadcb1af92ed0b5e687b5', 'Website logo black'),
(219, '9a20294a03bbe6406fabf6865b0486fa', 'en', '0615a38067b62382dc1667010669b238', 'Formats'),
(220, 'cc6fa9ee44b8b67b45f58ac7fe3175a8', 'en', '44749712dbec183e983dcd78a7736c41', 'Date'),
(221, '8306d44d3d00ee8d83d7420ca591f3db', 'en', 'a1af5f0718bfae275ce162362d0e43c5', 'Datetime'),
(222, '7095639c4b044814e593117613fd317d', 'en', '71a1c5f19c8e300d350f5f68c71e4559', 'Delete failed'),
(223, 'a673bd70b7588f1cd43b83462d98ab8e', 'en', '722ad2d05ecf4868b00c5484b82fd808', 'Queue'),
(224, '73236021a5d4ad3751e9dc49488456b5', 'en', '9b9d8a976b42e0bd66381797644943d5', 'Published'),
(225, '1df7a12ab763b857aaf85d5a4528852a', 'en', '0774e163cd7df482edd2abd498189f8b', 'Unpublished'),
(226, '2d308c43383b53abaacb512f63374c3a', 'en', '611daa739e5ea2991965ff51878f9697', 'Schedules of'),
(227, '7f19a2e28009b4cfb9deda481c82532d', 'en', '123f78413847556274afd31351529df9', 'All schedules'),
(228, '2da17d14acfc50dc340922c35b84caa9', 'en', 'f2fb0b80c2c7e171cd27b2b79806772a', 'Delete schedules'),
(229, '96489271cbbd2e286fd62cb5c945fbde', 'en', '3adbdb3ac060038aa0e6e6c138ef9873', 'Category'),
(230, '5a7154e7fb1ccf91f2ef65c7e83c2e79', 'en', 'b1c94ca2fbc3e78fc30069c8d0f01680', 'All'),
(231, '5eb1218329e4b0d8a6867676b735b158', 'en', 'f03864f046de9a6047f10ab8c818c179', 'Schedule for %s'),
(232, '8315f06e12a46237d7c4a7e4c10e6768', 'en', 'a3824eb0533064953073384a35c740e7', 'View post'),
(233, '3880e560932bd153b1e60b342ba44d7b', 'en', '8497430f75a70afd1c734149ffe6a1d3', 'Add post'),
(234, '3539fa72dbf220378d795f5e8194110f', 'en', 'ccdb7bf9d93e5652b57cabcc8c41e061', 'Schedules'),
(235, 'fd3c5a061c4dc4da46a4e1fecff46245', 'en', 'e68564f23e0e939acea76dc3d2bc01bf', 'Jan'),
(236, 'f88ca193d7b43b11278faef83459c0f6', 'en', 'ea171d540ccd5f0669171ef06d3cd848', 'Feb'),
(237, 'f4e7e28ab461f9cff75dd93ab4c0fa6d', 'en', '7ce6b2286a5396e614b8484105d277e0', 'Mar'),
(238, 'f9a2277283447304f1a7886c43c47b6f', 'en', '6d7215c4b3bc4716d026ac46c6d9ae64', 'Apr'),
(239, '11bf6759c0af2447178168be20293f39', 'en', '195fbb57ffe7449796d23466085ce6d8', 'May'),
(240, 'f189d107d0ef69bd93dd2ced60a00349', 'en', 'eb4b40c1221dad5b23fe7ef84d292be1', 'Jun'),
(241, 'dc2a24708436ff78c33f738bc46de9ce', 'en', 'a2866cd6efaa65c92278d4771a9eaec7', 'Jul'),
(242, '3c6689dfa7c97aa16878e8b2ed06a937', 'en', '22f1a4667604b8557c9b209c201b4bc6', 'Aug'),
(243, 'de81bff61df45eb761a6cc213b270af0', 'en', 'f04aa7019c490474fa3ce16e93501b57', 'Sep'),
(244, '3ca28bdffcbca4240600a3e933ae509a', 'en', '594be08882c8e9d5efb9eeb62f303744', 'Oct'),
(245, '06f04a64917c596d677eafe604fc6cf6', 'en', '343e6957be77c6247aa2b8d0deb68bd6', 'Nov'),
(246, '862877d9f60e7d5bd53a2c3386c8b69f', 'en', 'd207b4e0bce42a8f1555ce3a05e287f6', 'Dec'),
(247, '04873f96ed0f954362ede304213e7fca', 'en', 'ef6572e4cd58bb39a3f4e82fc64fe9f0', 'Sun'),
(248, '0c9799bf74e57e67b0cce9d46add9d0c', 'en', 'fd29458ae58ac32a2d8734ed90ad51ec', 'Mon'),
(249, 'f4bca3b31010aac3fd4de7881f0d0375', 'en', '2ddecde85408faf230652444db78cb72', 'Tue'),
(250, '19ac6989976967f04ff28af48b9464bb', 'en', '510c292b1686eb070d9e90a575f74106', 'Wed'),
(251, '4e0d731828a8de10c8ca42410b6bcee5', 'en', 'ed5e8353dfc585f4c6b3a55d1a9fc01d', 'Thu'),
(252, '255df1a38baa39cdc7064c24c9390287', 'en', 'ac616f844b9a5ea5a827bf7fb99b1ad5', 'Fri'),
(253, 'e0bfc2523a2e2e74f08427911bc00ede', 'en', '13c7d2d737f81f7bf89aed9fbcd0ad55', 'Sat'),
(254, 'fc53e2493bb5eafe521bcb175d40dd89', 'en', '10ac3d04253ef7e1ddc73e6091c0cd55', 'Next'),
(255, 'c2cbecdd2ea7ffca15bec1f0ae32c556', 'en', '366e1709da15a89acc57bfcbba721cbe', 'Prev '),
(256, '953d250f0118b9fd52638ff572fd04b2', 'en', 'f92965e2c8a7afb3c1b9a5c09a263636', 'Done'),
(257, '22280e9e7bb0534ad6bfcf613de93ff7', 'en', '86f5978d9b80124f509bdb71786e929e', 'January'),
(258, 'e14ac441315e16f05eac067b7585a24b', 'en', '659e59f062c75f81259d22786d6c44aa', 'February'),
(259, '5912dd9eead3e6e4464117641742fee6', 'en', 'fa3e5edac607a88d8fd7ecb9d6d67424', 'March'),
(260, 'a1d364937f6609a73a24d103eea9eb0d', 'en', '3fcf026bbfffb63fb24b8de9d0446949', 'April'),
(261, 'd9483b0e7b144d6dbf42b3f166c47f78', 'en', '688937ccaf2a2b0c45a1c9bbba09698d', 'June'),
(262, 'fc9d02fce677c674d73cf5cbb3f3d02d', 'en', '1b539f6f34e8503c97f6d3421346b63c', 'July'),
(263, 'c9b50516c8cd681df17c2b6bb3a11d70', 'en', '41ba70891fb6f39327d8ccb9b1dafb84', 'August'),
(264, 'adb4536f9ae66cbdfda88179502f2025', 'en', 'cc5d90569e1c8313c2b1c2aab1401174', 'September'),
(265, 'daf71a281e33d74d143c6e0e6d3073be', 'en', 'eca60ae8611369fe28a02e2ab8c5d12e', 'October'),
(266, 'f34c183e58fd8d30c4ffb46eed573c1a', 'en', '7e823b37564da492ca1629b4732289a8', 'November'),
(267, 'dee2eeb74fce9e56345bc2f6649b6ce9', 'en', '82331503174acbae012b2004f6431fa5', 'December'),
(268, '43d2347bcec3364471ff827e0e900d3c', 'en', '9d1a0949c39e66a0cd65240bc0ac9177', 'Sunday'),
(269, 'ade166d89bf2d3ca86d53064bc9586f5', 'en', '6f8522e0610541f1ef215a22ffa66ff6', 'Monday'),
(270, '00caf9427179e40a4bc1cc860128c483', 'en', '5792315f09a5d54fb7e3d066672b507f', 'Tuesday'),
(271, '0958301694b3354f52ebec1da222aba9', 'en', '796c163589f295373e171842f37265d5', 'Wednesday'),
(272, '0d98943372c9ad8c999076c343ef4b71', 'en', '78ae6f0cd191d25147e252dc54768238', 'Thursday'),
(273, '69507cf7e7df6800c71bf1933a40051c', 'en', 'c33b138a163847cdb6caeeb7c9a126b4', 'Friday'),
(274, '14a5e65b6136f510ef08817be409dadc', 'en', '8b7051187b9191cdcdae6ed5a10e5adc', 'Saturday'),
(275, 'b7e151ed2bfc3630c817b78eddfb6466', 'en', 'f72c915d8f575a5c0999b5f37b6d99b7', 'Su'),
(276, '7154141f9dfe16fea52b2320bcd42155', 'en', 'c08df9bb5fb44242a6291b1eee5d09ad', 'Mo'),
(277, '491eb78125c386869a72711f0bb253de', 'en', '080502c4fa636ac639bf42b6d2ba01d7', 'Tu'),
(278, 'e16af59ceb592dd8485aa1d4aeb01f42', 'en', '485c47a81eb6e3998ec05aca48eda184', 'We'),
(279, '483f655fc6399a919b3c39e9d9897304', 'en', 'eeeb9a8eb45dd351d9ec0eb4acce66ce', 'Th'),
(280, '76f7ccae56ff350e2de5cf48fb1e9360', 'en', 'fa717ba17306cd76900510df8ac8013e', 'Fr'),
(281, '830cd91393cd8de5af2f7e01f00fcd4f', 'en', 'e55bb1ae59b6a64858a85a2f48c53036', 'Sa'),
(282, '4ddc7d3995795a1d1f146af5dd28439b', 'en', '46dd4094320d81541aa9812f43f81a11', 'Wk'),
(283, 'dc7500a5e27ad3d5e5059bc03dcac725', 'en', '1e1cc9bdeb2f29f5480106aec7e9bc48', 'Now'),
(284, '8955956e56a0cab15c08ef8f6d463ef3', 'en', '3964fd83339fec5014c831822005653a', 'Choose Time'),
(285, '053f9a3c7f52471a917b94cf89c08dad', 'en', 'a76d4ef5f3f6a672bbfab2865563e530', 'Time'),
(286, '28fde28a01fb7ff11be558b5ac944b84', 'en', 'b55e509c697e4cca0e1d160a7806698f', 'Hour'),
(287, '05947e06c8a4635f3be008d61ac233a1', 'en', '62902641c38f3a4a8eb3212454360e24', 'Minute'),
(288, '929cb3bcfa7747418bbe3d16d9ddf6ba', 'en', 'c22cf8376b1893dcfcef0649fe1a7d87', 'Second'),
(289, '888a24ebd1eb560fe98ce28ddbeca726', 'en', '988bbeeb80e7e0a6b4651aab5a76b413', 'Millisecond'),
(290, 'ce05cc645f5e24a7be6a87465edaa9a8', 'en', '1f14b3811ca5de688daa740d8471249e', 'Microsecond'),
(291, '9e818ec9d7c694ceea447de86805e4ad', 'en', '45c10605e0a492fbe7a3eac258cd1e81', 'Time Zone'),
(292, '9dc2e37119527326f2804da657a89040', 'en', '11174109e63c6779f278081c8e748e50', 'Proxy manager'),
(293, '402eaf832814e954fd3382072104abbe', 'en', 'f56ec2ab97d604832d90f6394e3f341f', 'Proxy'),
(294, '7e2a257d609a767929ddb70157c877b2', 'en', 'ce5bf551379459c1c61d2a204061c455', 'Location'),
(295, 'c58f011d376222cbcb38ceef3cabd5b9', 'en', '70eea8031965da74ff0f349ffcd4e98f', 'This proxy already exists'),
(296, '1c385489e6819ac44237d629c3dcf5da', 'en', '3840b8cf9c344435a55ccb12a6cb6189', 'Invalid or bad proxy'),
(297, 'cbbbc7fd78a8580d77f2dc6b9a7a097a', 'en', '88183b946cc5f0e8c96b2e66e1c74a7e', 'Unknown'),
(298, '9ba0d4af23068c0dc86aa6c900a92870', 'en', '989d8d054c7fc7bba243a4647aacc045', 'Proxy format username:password@ip:port OR ip:port'),
(299, '3e000f4809f89308c3fea1b373163795', 'en', '553bc221e0adce6fe21ff18b8ef43db2', 'Configure proxies'),
(300, '703b5844a63e0deaf1b6057254cfee1c', 'en', '865b44009e5b9d9e322b767379ea7181', 'User can add proxies'),
(301, 'f0cb553ecbff36de231853d4fb651d41', 'en', '25d068e385d4c7b28de19de914743685', 'User can use the system proxies'),
(302, '33be7cb564589350fccf3780cb20ece3', 'en', '121be05a55b52b405c302293d6d782cc', 'Unscuccessfull'),
(303, '0f0d3e803f8ebd01be01d643abdc9279', 'en', 'cce99c598cfdb9773ab041d54c3d973a', 'Profile'),
(304, 'f26743add2bd60c872e5f8d4bfdc4a71', 'en', '08bd40c7543007ad06e4fce31618f6ec', 'Account'),
(305, 'f59b227c9c1310ffef7724d41cd22f3f', 'en', '0b39c5aca15b84b1ad53a94d6b3feb78', 'Change password'),
(306, 'c4672f90350b9b0ce0279c29747cd30e', 'en', 'd9c2d86a66aa5a45326c3757f3a272cc', 'Current password'),
(307, '53b528105820c0bf720b0024e824e55c', 'en', '39c8fef7f693688a2bf4dde48b5c910a', 'Your package'),
(308, '7850ab4f17077882bf263e1f6301cb9e', 'en', '5a787141d53b573ec9b86e900bfe0d79', 'Expire Date'),
(309, '4a6b3eec4d093790d8f311109e2f499e', 'en', '67cebfb85c019055659c9e591a0737f0', 'Cancel automatic payments'),
(310, '230f64c6ceca6afeeb061121fed66b56', 'en', 'f406b074f5a18844198f8c5807a64015', 'Renew account'),
(311, '5b85328cb195ce2b335119bb71a5ee09', 'en', '729a51874fe901b092899e9e8b31c97a', 'Are you sure?'),
(312, 'cec13c741b620645999bee4dae5a1214', 'en', 'fa02393dd2853fa7e6e0e28df30a0043', 'Hi, %s'),
(313, 'e32776443842fd67d6d135d3337b607e', 'en', '0323de4f66a1700e2173e9bcdce02715', 'Logout'),
(314, '634abbe6fd65ca859a5a7eb6b78358d8', 'en', 'ff4cff2ee8654c497934bfd04ef2c007', 'Back to admin'),
(315, '3d79615af4da71eec69a319059f4f760', 'en', '7df9726e7bad876c2819aff21946b6eb', 'Package manager'),
(316, '65813540a5390fa7032e9055d883e78d', 'en', '49ee3087348e8d44e1feda1917443987', 'Name'),
(317, '0fb624708268f16322932c1df8393315', 'en', 'b5a7adde1af5c87d7fd797b6245c2a39', 'Description'),
(318, '46d88868eedeb252d9a03e41e2bc7929', 'en', '2ebd69a77e20dfa7b449a27cb4238b19', 'Trial day'),
(319, '2cff6e6dde52385759f8f0d812666968', 'en', '7b1d92d0b605bb1ea643accd09804009', 'Number accounts'),
(320, 'c454d1bbc53d2f1c526970b7e706d2fc', 'en', '474d0324f4a5866c86779e939f9c9303', 'Price monthly'),
(321, '8305034d4f49739ff8f7ec87e302994a', 'en', 'be973957f3b826e4cb99dd686dda5ccc', 'Price annually'),
(322, '15b8f15abaf02baf29b38c4a2d9ac455', 'en', '47259eaaf0a0f806fa09ba5b06c23a1b', 'Package info'),
(323, '9bad990583bbd60bb5988093bb88f61b', 'en', 'd08ccf52b4cdd08e41cfb99ec42e0b29', 'Permissions'),
(324, '9e79173fb027a5207766211c1518491f', 'en', '2cc1943d4c0b46bfcf503a75c44f988b', 'Popular'),
(325, '20ae9cba60f1faef03e288a503bbb34d', 'en', '93cba07454f06a4a960172bbd6e2a435', 'Yes'),
(326, '0cfd3efe557747aadc5a6665e07f7ea0', 'en', 'bafd7322c6e97d25b6299b5d6fe8920b', 'No'),
(327, 'f86f5616277b9346e106092f903f9360', 'en', 'e566fe9aef1502d69ccdbe28e1957535', 'Enable/Disable'),
(328, '7d33b4ab54153b26a9357f1245154e5a', 'en', '7f1f5704865feae4a903aa65afe2bb3c', 'Save and update subscribers'),
(329, '059a01369b3392b9a63c48b6e9060b24', 'en', '5c1b6a4f7b977e2df04204f054771e95', 'Upgrade now'),
(330, '93aaed34b2910e1c590ac6d88b57c43c', 'en', '24b227c9e2d8955a7b7f851baa203ddf', 'Subscription expire: %s'),
(331, 'e5fb67acdd769f9e9db3c1702e70fb61', 'en', '06adff46e18f53c214b5efac8b99782a', 'Your subscription has expired. Renew your subscription so as not to interrupt your plan.'),
(332, '63797764e4734e08b9aab5131e7f835a', 'en', '52ef9633d88a7480b3a938ff9eaa2a25', 'Others'),
(333, '667753ec051723499457db6738392b58', 'en', '81d23a3edce834c840eb8f50cba73e2a', 'Enable HTTPS'),
(334, 'a8c02ed840d9cd56437b7b29965c6560', 'en', '46213fc975898aafc6a6ddbbaea5de73', 'Please make sure your server supported SSL before turn on it'),
(335, 'a33861a9c752c4a4bf07d3a549b8fefc', 'en', '9d282b2b887e9528cc04a9d72354e12e', 'Embed code'),
(336, '71c2214c0e28b5b4718bbb1028cd5964', 'en', 'aa4bd08f7a87bd4b56e6c9e1b532de84', 'Module & Themes'),
(337, 'dfd6aeca936648db55ab0c0a273b8a0d', 'en', '608cf8320470cd2f7580aa6b04a7ce10', 'This modules or themes is already installed'),
(338, '6e72a18441d3284b71e9882d562b7c05', 'en', '8825148caf7046078e314c129ad3f42f', 'There is a problem on your request. Please make sure your server enabled enough permission to can install.'),
(339, 'c37005cf7ef3f07a5f28fcd79ccdf828', 'en', 'd2e43cbe7328d082c658443a317b839f', 'There was a problem during installation'),
(340, '81051dd4997868737ff9e45ddca72537', 'en', '46bdb5127ea5b79f43c37c40baef7932', 'Please enable zip extension on your server to can install'),
(341, '9ed5e1679711b9565776b883994d03ef', 'en', '99cc6997b30bf20055c666ad9dab8579', 'Can\'t read input'),
(342, '375de5030babd84a1a7413883952e1c9', 'en', 'b53c9c855cccdb4c6ef09f610e38ee9f', 'Can\'t write to target'),
(343, '6472194be5e64d268cb1824c50714f80', 'en', '8a4877e343868dbf7db1b99d6111a1a3', 'This products does not exist'),
(344, 'cf8c31c39c9a16f62f438e9a2bcf12d2', 'en', '2fbcfab6e3d811fda7e7b57dde86fd49', 'Install modules & themes'),
(345, '18bb10ee090f7bad84a3d959d23bba24', 'en', '3b0649c72650c313a357338dcdfb64ec', 'Note'),
(346, '4016800b6ed24b23ccdc5bdef33e5b77', 'en', 'b35470c6737405deed82aba5e17e7f73', 'Just can install modules or themes'),
(347, 'e187fffbbadc56226baa27afc50c3382', 'en', '817676a1a16e3f0e5e51bdd08195d40b', 'Cannot use for reinstall main script'),
(348, 'd7804efdc440b1d0368ac762167675d2', 'en', '6bc39f323553744f088fee9796846e60', 'Make sure your server does not block the permissions to install'),
(349, '97289d3c1ee5bccf7a777aeb125f4ec7', 'en', 'd3d2e617335f08df83599665eef8a418', 'Close'),
(350, 'e9f78fb2f483111386928802e16d1c2c', 'en', '349838fb1d851d3e2014b9fe39203275', 'Install'),
(351, '460f59e024a5023da21016676e1afdfd', 'en', '4994a8ffeba4ac3140beb89e8d41f174', 'Language'),
(352, '23a160084c9beecde28f9909b6f450dc', 'en', 'ca0dbad92a874b2f69b549293387925e', 'Code'),
(353, '3923349e71ff5980dad6fb57990838c4', 'en', '0ba84225da76dbbff131e04071e88f73', 'This code already exists'),
(354, '4f7d83607f244619c313ec59dd77c630', 'en', '817434295a673aed431435658b65d9a7', 'Icon'),
(355, 'b558db6b5d98c3f1b5afc16b88f472ba', 'en', '3beab53b7f365bb81c4ec78cddc156dd', 'This language not exists'),
(356, '524d9d98bf36c2ee4b17d1e4227a8d84', 'en', 'deccbe4e9083c3b5f7cd2632722765bb', 'Translate'),
(357, '364611e882edc61bad3f1235626aaef1', 'en', '7a1920d61156abc05a60135aefe8bc67', 'Default'),
(358, 'aadb96c041ca4f73a7a50ff1398853e2', 'en', '72d6d7a1885885bb55a565fd1070581a', 'Import'),
(359, '853a103e4dd07b62216463ab3f085422', 'en', 'e325fb2bd63497b77c1c46ee6a4001a0', 'Import successfully'),
(360, 'd450feee2adab155a5fb43143705b24b', 'en', 'bf20dad9ee408d0d2876fb2e8c00f53f', 'Language package is invalid'),
(361, '63ecbefce6a5fd94d2ad67703d310d0d', 'en', 'f230ce7c467ab27a08261c4556e595ef', 'Group manager'),
(362, '22c883287b0433b724d101d305026dc1', 'en', '81c0674cf86bf0cabe1861867e5c9d88', 'Please select less than a profile'),
(363, 'bcdebe20d6f9677a1afcddd0395be579', 'en', 'a37ede293936e29279ed543129451ec3', 'Groups'),
(364, 'f9ced5a35077daf9d782a10333946603', 'en', 'c6155aaecccf794cd2a00fcc35898022', 'Group name'),
(365, '88072694fccf660e4b6289ced0e9c60c', 'en', '0aba78aedc6eb77ef8cdd1fed303162b', 'Drag and drop to right to select and to left to unselect'),
(366, 'df299ad343f5224158bc8c712dafa041', 'en', 'ea56a3fc8efed558154fb233fd8acbda', 'All accounts'),
(367, 'e7f21236cf317aaf6446ff1673f1d722', 'en', 'f9e5ff98b374127ff6e6c2807e9b7b4a', 'Selected accounts'),
(368, '1aa55bd185c0a5e795e2868eff190988', 'en', 'ea4788705e6873b424c65e91c2846b19', 'Cancel'),
(369, '1159b70f13cef3d16d37349f3c4df630', 'en', '2bd455d4f926e5c4478e256a8e99c836', 'Couldn\'t find the media!'),
(370, '96a9b60e0b597a08493f5140af9dccec', 'en', '004a990932b3437b9743cdcde2bc0fab', 'Couldn\'t get file type!'),
(371, '1890587efc9d10040d918e13ef68dba1', 'en', '9190ffabfd6590dab2f23dc60ab1ee8f', 'The filetype you are attempting to upload is not allowed'),
(372, '28ec1de83b3189d1698227031361ae60', 'en', '6217521cbe5a30675bbaeaa4be61f031', 'You do not have permission to upload images'),
(373, 'f0bac71d76b4e5ccfec5881dc5e70e60', 'en', '710a4fe7fdc3246f4dbe4e91f032add0', 'You do not have permission to upload videos'),
(374, 'a5f18d69ca22da2831706e24eaa09b0a', 'en', '796ccf5f676f06fe6c2a1af3a2569e1e', 'Just can use images'),
(375, '3376a1c57d6e0e4cf3275566d6af0d01', 'en', '0f07e630ffa23ff2a1faa80a732d60d1', 'Just can use videos'),
(376, '69223ecd8a89f6cfe70d6acc230bc821', 'en', '933a7ef6d483a9eb7280d934a895de5b', 'Couldn\'t download the file'),
(377, '4a9dacc9fee8e8aa0b138082f7f16789', 'en', '50ae2c31306be69a7988602390684fa6', 'Unable to upload a file larger than %sMB'),
(378, 'a57ae6f57f9d76548c633ff1acc2a596', 'en', '9e8cf9f4f22b1ddc4a97b8b7faf697ef', 'You have exceeded the storage quota allowed is %sMB'),
(379, 'dbfe203cc0ef80b4601ced03199c07b5', 'en', '73b88faaa0d42dc575085c343e1d47d0', 'You do not have permission to use Google Drive'),
(380, '3a2730ac2b5f46de55c4910e463f6a6a', 'en', 'dca9a14c4cb9344974018030dc04a0fc', 'Upload failed, Please try again later'),
(381, '9f6bc27d92372b970d41a1cf06fc1307', 'en', 'ea0404641d289fdb4e6088a3b8ddeb33', 'Media Notes'),
(382, 'edc44a4ed59f6836c0766d9bb3b65962', 'en', '2d1611effbc5ab0c1ff0c773fbe3dfe1', 'Enter keywork'),
(383, 'a9b5ad08e99ae0f018e500a65ace928c', 'en', '5ca219b54399500b176823f866ee1383', 'Media Type'),
(384, 'ac701b442afaa76bb860b55eef9f38d6', 'en', '74b3df98d5d1417597328786482b6bad', 'All Media'),
(385, 'fc7ab18fe2b600e1d4ac9e23fa672860', 'en', 'be53a0541a6d36f6ecb879fa2c584b08', 'Image'),
(386, 'fd1d06a4984f8fc868a490c81d8e512c', 'en', '4f0b453b6577ef60d9e8e57c30005b7b', 'Media info'),
(387, 'a6864fd503d78ac1c3ea877ee55cb58b', 'en', 'ef0f51603bf90b1ac8f3691833454a00', '%s MB'),
(388, '6ab98613969e1fb6fd8238f4d6988cd9', 'en', 'fff0d600f8a0b5e19e88bfb821dd1157', 'Images'),
(389, '20bbc85e30121f590c32e7299218b8a1', 'en', '554cfab3938e21d9270bd6b75931f96f', 'Videos'),
(390, '8aa9e5147b3da7f24eed24bc1467a007', 'en', '2accc9250e2d377e3c573a5e069b69e5', '%s files'),
(391, '456e129e0728ab2ca57f091f1c2bd024', 'en', 'f79cd76b16e526d536ec5f9e3a3dbe9d', 'OneDrive'),
(392, '8ffe360b2497fc119e0d151aca13e703', 'en', 'b45d4ac69bc12d5503c52d7a65cb49e3', 'Enter media url'),
(393, 'b50b46f1ada6d507717e583238c48c78', 'en', '45e96c0a422ce8a1a6ec1bd5eb9625c6', 'Select All'),
(394, '314fb4e83e9f16716814cc7a904b9ddf', 'en', 'ddda55b80f65cae4157306794a168c37', 'Deselect All'),
(395, '9d19dbdae88ee82bd573c03bde97c374', 'en', 'a254c25adc7d10d7e9c4889484f875a5', 'Detail'),
(396, '98505b7d70192cadbdfd115086084fd0', 'en', 'b7c161bb87bb0308fb25e6f68d0a5632', 'Thumbnail'),
(397, '5941776f636ce854cd52ebbdbac12a0c', 'en', 'e2638644c5de6338d3858279fd7fb8f1', 'Your browser does not support the video tag.'),
(398, 'c839153e7eb5bec95917da0fb54b4285', 'en', '86f03349e5a9b0b36155770fefcb687a', 'File manager'),
(399, '67cae687c046707398bab04f96b74a0e', 'en', 'f62ef472ce6cd891d4dfd0dc0ed926f7', 'Image Editor'),
(400, 'c2ca07fecbc33303107586992719fec7', 'en', 'ad554e604fabcafe7e35f4826c907425', 'Max. storage size (MB)'),
(401, '441261303d9b2c5c2d40b34048f702a3', 'en', '339f1fd6617fe2a634679fdabb5983f3', 'Max. file size (MB)'),
(402, '5480236a6aaf8f1cdabbad60f85cc1c2', 'en', '8dbc5fe2a0ec07ae4815a0365d40c1b3', 'Advance option'),
(403, '782deef76007ec82e171c770d08fd49b', 'en', '4131cca5ec58bc44ef23fff086a99ff2', 'File Pickers'),
(404, '77bcd450d9447e6ddd8577df7bc39556', 'en', 'e539fd665e202f536325140d87d7bf72', 'File Type'),
(405, '06fe765e37ba95d7b2e20269be1ba0c1', 'en', 'ec211f7c20af43e742bf2570c3cb84f9', 'Add'),
(406, '738ccba599470d57d1a2c18d29521593', 'en', 'b71cba76b52a1f46c33274fbd63c0778', 'Filter Media'),
(407, '210143f84c2f5dd220c24a7aa880980b', 'en', '9775658ef10431ad9862abbe5ee4e43c', '%s Media Items'),
(408, 'd71b8b5ed7d85c2c5f88e1d1159d2cf0', 'en', 'ab0a44b7763dbe3966e9c71b7f3cc558', 'Click this link to create Dropbox app:'),
(409, '09a01b5cb014be1f16763f142a61ef3b', 'en', 'e7957b29b6ec691042d91cada7a108f8', 'Design bold app id'),
(410, 'db1df01f9cef072dd9c68a86c9e84f6c', 'en', 'bb9dcf525c88efc7115dd231e18da73b', 'Click this link to create Google app:'),
(411, '908bc20bb23dcae8522112650a08a52a', 'en', '8115871db1fa2a0ce0d90f83ff9311a3', 'Dropbox API Key'),
(412, '999fffc9fef5fa519db609b9f727ef96', 'en', '3ad39fa721e4d05a13f8875ed4e24746', 'OneDrive API Key'),
(413, 'fcaa0251c03b86313b789b615dac4e0a', 'en', '849ecc67da97ed5b993c516f77a643a2', 'Click this link to create Design Bold app:'),
(414, '770c61f6847d41028db4a654b6b2eb00', 'en', 'a2606d9010e36899047fe8dc979d9a85', 'Design bold - Image editor'),
(415, '8561159c2e52aa80349ae3d15fdb6d4b', 'en', '6d5c6b52a4fbbd984bcf312eb095c9d7', 'Renewal reminders'),
(416, '75ae52a3a981666d7c9d7135174dcea5', 'en', '8624a9ad4e0acb27d41e8e6c7f74faf9', 'Once/day'),
(417, '0b2ec03bdeb69c76745db4b8a4ad61ac', 'en', '73be97858912ef87f7a91b8a1451e9f9', 'Configure mail server'),
(418, 'f8c1462812d17557aabeed0938ac7175', 'en', '13a44cb3c08c1c40a3c5b62152538ee8', 'Email template'),
(419, '75e345a554ccf4aae46f99785a35f5fe', 'en', '6077ba750e13911cdc66d4725e30087c', 'Email from'),
(420, '3c3d138c8c8eab9e8770a4d76d7436c7', 'en', '221e705c06e231636fdbccfdd14f4d5c', 'Your name'),
(421, 'd5c65cc1166c98865cd220c9a2792676', 'en', 'e082d878dd8867bacd0b6ee66f36fbf9', 'Email Protocol'),
(422, 'd1fb09eafa1841080b96b96725389c16', 'en', '4dfbb099eafd3c82e033bf92946d3ce6', 'Mail'),
(423, '0c0ce1fe268fddd56b27ab0cc42e89a5', 'en', 'c2239a92bde29f0a9f9173193cc2fe00', 'SMTP'),
(424, '7923abb70aa94b40290f558cb07bda5a', 'en', 'e88771848779176222264e08cd54f806', 'Configure SMTP'),
(425, 'e4bd3ea16ded19639683c2bc5708bdad', 'en', '2e97c522fea3ff212e662a50235bfdf5', 'SMTP Server'),
(426, '8c27e9ff75ba7ab4055fec387882dfb5', 'en', '63ede2e53d7a100acb8f97a618bb70c8', 'SMTP Port'),
(427, '1e8166fdacf9e855557c45c884aa6b8a', 'en', '336fff487168a9f8f056c92c41a7c813', 'SMTP Encryption'),
(428, '0c20c4859025d001a680cf8c026acda0', 'en', '6adf97f83acf6453d4a6a4b1070f3754', 'None'),
(429, '74574c72e0ce437d8eaa64bfce8e44c3', 'en', '58796f93f68f4a82447faac8751ed9bc', 'TSL'),
(430, '7d12db23df08009c1b5bf9d10f124268', 'en', 'ea52c36203c5f99c3ce2442d531b1a22', 'SSL'),
(431, 'b1faffc8c2a756e4071f5bc6edeafd25', 'en', 'bf4f9ce507b4480bcd90f2b0bd97cc98', 'SMTP Username'),
(432, 'a3842aefa9fb102d3caaac065cac43a9', 'en', '13dfab74d4f99be29bd6c7142135b34e', 'SMTP Password'),
(433, '5a07568b8e0262d4085e01805de84b0a', 'en', 'a67ce68ccac082ad54a552bdbcb6ecd7', 'Email notifications'),
(434, 'f6ea837fa7b20c5f3df1a93120c5dee5', 'en', 'cd398a41e889e7c964b7e15396b51dd0', 'Welcome email'),
(435, 'f21a2f8efa0c0a139c7f4e245738a167', 'en', '9b5638a72c8871a45d0499853e7e6906', 'Payment success'),
(436, 'fd10b5300180a0312fb3633798bd12dd', 'en', '0d57f6ae12faef77617cdba3884b3e1b', 'You can use following template tags within the message template:'),
(437, '89d134155f1165706990aa4d53f7bac9', 'en', '512668ffb3bdaba560c046c36a88e658', '{full_name} - displays the user\'s fullname'),
(438, '34c0b29233244379d64352977cd070e0', 'en', '87e9274be53db0b79c772ec0c41e998d', '{email} - displays the user\'s email'),
(439, '49ec16087588835331a19546031a4810', 'en', 'df23ed9f7004f969107a28e5ce3dd331', '{days_left} - displays the remaining days'),
(440, '6085d005920692d86da5b0926a6489f4', 'en', 'e05383902ccafde8d8c8ee3a8d5c93b1', '{expiration_date} - displays the expiration date'),
(441, '1479cb544062225cade7372d6895b3dc', 'en', '08d9e543e294e9242b8f3c6472b1a3ab', '{activation_link} - displays activation link'),
(442, 'bf2b2eca6455575454d5490b8239812e', 'en', '4c84eb3b96d621b49465cb2dc71bdd78', '{website_name} - displays website_name'),
(443, '0790e5bc252042406e9335dcbc222bee', 'en', 'f7f94297619a8a78c387584142f13121', '{recovery_password_link} - displays recovery password link'),
(444, '774b810931672edae5b2ac10dbb6d39d', 'en', '0274a4c63543264feaade2c4bef375c1', 'Email activation'),
(445, 'd1827eb98942fb1872c913f560ffb0e2', 'en', 'c7892ebbb139886662c6f2fc8c450710', 'Subject'),
(446, 'ad38f8366437faa835f71f1b1ed7471a', 'en', 'f15c1cae7882448b3fb0404682e17e61', 'Content'),
(447, 'ecef862c63b68ae445e449a2e94ccd67', 'en', 'eb81114f7cb909e9679b00a658133c85', 'Paypent success'),
(448, 'b48824f1999b64de770ca5757c13a2ef', 'en', '5b5a4197ca80657a8845429730156c6f', '{website_link} - get link website'),
(449, 'efb22470a5b8c8407f1d994991e300b3', 'en', '348797c854ebe35ed040f00917bc8a98', '{pricing_page} - get pricing page'),
(450, '16f3285fb46c48973bcb3db68d62c3f3', 'en', '4b1b4dc8cf38b3c64b1d657da8f5ac8c', 'Report'),
(451, 'a6e93db46c97de28a2b547d1041f3348', 'en', '7b596b44ed412bb168741e7230b03d8b', 'Cronjobs'),
(452, '26a4d4747b3487601737c3fe8b36d112', 'en', '272ba7d164aa836995be6319a698be84', 'Caption'),
(453, '7c95ea79f63622bcedabf58ea8b4bce6', 'en', '7599c66624447e81fba0b73e9f43203d', 'List captions'),
(454, 'aaa31e2e9b1fc69c4a6dbc79be92a593', 'en', 'f561aaf6ef0bf14d4208bb46a4ccb3ad', 'xxx'),
(455, '0c780631e756e4b8e483de35a56479a3', 'en', 'd380bc4996db846896ea499b9bd495dd', 'Get Beamer product id at here:'),
(456, 'f1799101ce95439bd44bb6f5beccd124', 'en', '7a262cb0d3d917313c8ba12f996fe83c', 'Important:'),
(457, '48408979694c95f12465d1b23f9b947a', 'en', 'be8d1f91bb457a932b1a4af0fcbd2373', 'Set field HTML SELECTOR is beamer-notification at here:'),
(458, '753ff7308092667a2f70e10d75005e9b', 'en', 'e7cf0c042bb35c701919d18e70bebd26', 'Beamer product id'),
(459, '4b4de083d0d10e230a2ed6f2868edc3d', 'en', '96d008db67fc0b5551a926842bbb6a71', 'Notification'),
(460, '0b510ff6ea0de46af432e607804864d2', 'en', 'b913b6a06a5769eb5ee0e1bd494b7f94', 'Notification with Beamer'),
(461, '9f6009c5cbb83b7b9c1f4abf92124519', 'en', 'a1c58e94227389415de133efdf78ea6e', 'Appearance'),
(462, '4c52b3080aeedcd0db6d528cc3afeb80', 'en', 'bd60c369a2a177b7fb40b0c56b699e8b', 'Default menu'),
(463, '8fd17aeff73fd7b9e7a5dcb10f796b29', 'en', '4970bb4b549101caa7155cd33840c0e8', 'Menu color'),
(464, '3a06da953a58bdc99773cce7489123ea', 'en', 'eee0168be69b854c20621fc6f01cc3fc', 'Hover');
INSERT INTO `sp_language` (`id`, `ids`, `code`, `slug`, `text`) VALUES
(465, 'c4fb196101b38fcce491d1865abb7719', 'en', 'd741b8147e94b397bc82ca205f9f927d', 'Full menu'),
(466, 'e309bc1e207e90303ba0917d7dc13be3', 'en', '9914a0ce04a7b7b6a8e39bec55064b82', 'Light'),
(467, 'd1b19c73312413fedce9b0a1c2e85f7f', 'en', 'a18366b217ebf811ad1886e4f4f865b2', 'Dark'),
(468, '1347faf51ecf708ff901e1c22581d061', 'en', '11beb7884b10d709fb06b932a8f03771', 'Color Icon'),
(469, '9afc6884f74ec36c03424b8dc5545296', 'en', 'ecc62f310a7f88d92b471d35ba484d4e', 'Enable landing page'),
(470, '9b8fc309e5cbf83eecc0fc41fccde07c', 'en', '4b01d143f2670ddb850fd1b03aa726be', 'Frontend Template'),
(471, 'ef42736446a636c2a90ea31f42153924', 'en', 'c9f2b66508eca21a5b6fa083268d1832', 'Your package Your package cannot add accounts'),
(472, 'ea1454eca21a3ea32f093a3a0b8f6160', 'en', '053a5873e93e7a7e07ee03775c084835', 'Your package can only add up to %s accounts on each social network'),
(473, '6bf8fe91e28b3e52bf2aea59c7ccb57f', 'en', 'bcae115a3c517d2aba3947f58ac0911e', 'Allow add profiles for'),
(474, '396684dab0aae35d2eb0013cdcfec60b', 'en', 'fd1db4ebc1768305bf1bb6b61964bf8c', 'Account manager'),
(475, '9d9e7e91444edd54a693bcd82b1082d1', 'en', '77f9467d493beef3290972d1b2e76df6', 'Relogin required'),
(476, '12a79bcd4267ffa712ee6ceea7f329ae', 'en', 'ea60dd0dd5e4278aa90a3f4905f77a19', 'Add account'),
(477, '564b8bfa511e7e889e41707829644392', 'en', '2c125cc795a12c2900fef2325c00c346', 'Twitter profiles'),
(478, '640c884e98750f1ee778da3565e95121', 'en', '54f491f46590fccdfa92ce21924c4471', 'Twitter profile'),
(479, 'd47b5a5747bc32e97db61a193f36840e', 'en', '00510c534a90a242c0d61062ef25bb96', 'Add Twitter profile'),
(480, 'd4bbcebd8a86f3181e77d8d853caa30d', 'en', 'f6f19ef7395310905371b14ab9b2a84a', 'Please select a profile to add'),
(481, '9c514947f85a0e14b369435c0be606f2', 'en', 'b6637dcd10d7684ff25faa88523af57c', 'No profile to add'),
(482, 'f28df9eb80a07e269748c662db7bf0be', 'en', '6822418f34fcba5eedad0bcb791f60e2', 'Twitter API Configuration'),
(483, 'aef03a2945c6f146607db6f2d9843e56', 'en', '600e95f3ce0908869001d0ef9817d7d3', 'Add profile'),
(484, '23d9deda17738426fb2c178926744495', 'en', '0979eb439b3be4ee2ea654fe79ba2a98', 'If you don\'t see your profiles above, you might try to reconnec, re-accept all permissions, and ensure that you\'re logged in to the correct profile.'),
(485, '671b8d95e5810cc4614436017228e252', 'en', '5114ac4fb8276738627b73f4ff4c86d9', 'Re-connect with Twitter'),
(486, '49cd1ddb7c792e116629d8ee3bfc443c', 'en', '5d7b2175cb9defc3f4e640352cd35ca4', 'Callback URL:'),
(487, 'ddbaa4ab73bebccffa63c242d824f48c', 'en', '13d24f7fe001bff2ab03441fa2658bdc', 'Click this link to create twitter app:'),
(488, '9d7873de550ba058ec7c3c567485de7f', 'en', 'e436f93debe5698cbb28faacf93ed496', 'Twitter consumer id'),
(489, '795997011540036629f271397718bba9', 'en', '914c93f15f29fd32d8a0f313a90c1c70', 'Twitter Post'),
(490, '31fa17d597042080533f30bc005531db', 'en', '97e7c9a7d06eac006a28bf05467fcc8b', 'Link'),
(491, '0de9a8db0898bc51959686488bffdd8f', 'en', '9dffbf69ffba8bc38bc4e01abf4b1675', 'Text'),
(492, 'cc1acee52d855c708b59098b5938112b', 'en', 'c9c93ba953f46753afe9b4efe1feb29e', 'Successed'),
(493, 'ae486c8a8c1ee1a22b65c090d3e710e4', 'en', 'd7c8c85bf79bbe1b7188497c32c3b0ca', 'Failed'),
(494, '5d4bd7f8028ec3a4ce5ac674a7729502', 'en', '363c969ebde35c09236f5355c6dff165', 'Post type'),
(495, 'a51c1ed9263ef7d9654e83edaf1ccde2', 'en', '96b0141273eabab320119c467cdcaf17', 'Total'),
(496, '56043f8bb7bbde43ad54bbd6d92a3d64', 'en', '1243daf593fa297e07ab03bf06d925af', 'Searching...'),
(497, '72fc65f17401faf9f28239629044a9dd', 'en', 'd2c51a3531b82662e6678b990aec8140', 'Enter location'),
(498, '25a862011784ba6b4b6a3ab108b8317b', 'en', '7079c72c21415131774625ba1d64f4b0', 'Anonymous'),
(499, '953192af87f892a282e05fb565020b64', 'en', '94b05263e503d408eb1d9eb8acbc2889', '@username'),
(500, '4c558ba384f96e4788ccd7344ebe7192', 'en', '03d947a2158373c3b9d74325850cb8b9', 'Post'),
(501, '356bdc4b0c3cddcc66558ca4010ef622', 'en', 'eca0cbb69037e18f36fb972fcc7c5ba9', 'Publish all'),
(502, 'f80cf82a365a0fc24599d03e2792cdcf', 'en', '21d6948b2c5a65af07235c1add9c33eb', 'Please select at least a profile'),
(503, '4dc9823f65daa528949607d4fbc0bcd7', 'en', '5feb207e74b4c1506e45b48d7a5c2a8e', 'Please select at least one media'),
(504, 'b463e8cd86dafdedf046afda59ba225d', 'en', '0de889146700e0d8950364c7c5c703c8', 'Please select at least one image'),
(505, 'a30ff93baaf010ed06830b8dbae8b27f', 'en', '300433e7b1799e99a4a392b4193e699a', 'Please select at least one video'),
(506, 'efede548eba3ff4e2869ccefdd9e8888', 'en', 'ab7f90c96d9b6db23985d41003163b0f', 'Please select at least 2 medias'),
(507, '403e234910a56f166e44b6384efc200a', 'en', '00d9a10351c5eb873ded844bf739a1b7', 'Time post'),
(508, '38e316275859948c3f3effe78b051d9a', 'en', '9484de11f40466685de198ad036d08f3', 'Repost frequency'),
(509, '191bfddc5db5ee615779f05f595677b3', 'en', 'cdbc7a773338998af05e797d34e421a7', 'Interval per post'),
(510, 'b8fe40dacadb8f20189ec36f10f72a70', 'en', '9acdd22bfbf262a98f0e7be933dd9d2c', 'Repost until'),
(511, '6b247965ec00d90814527a05d41eb7dc', 'en', '152bac8d22386bbdaa233468d6a34ff7', 'Time post must be smaller than repost until'),
(512, 'e364b322ad0de79f85b609c687730775', 'en', 'beea9e3aad70e5bc9721a56144541463', 'This profile not exist'),
(513, '2e3cc807c0cf389c82ccfd5bf1566989', 'en', 'b8dcb473f33eb19a4701c36ac9cd85c0', 'Can\'t post to this social network'),
(514, 'b6a6b6dd7112980a5179ff122b755853', 'en', '1cea23ad1aa140ed905864953d2cc83f', 'Content is being published on %d profiles'),
(515, 'f0c8f090e6ee50339363c2f498c608cd', 'en', 'f1de3b022dee9f99323c8ef89ef0779b', 'Content is being published on %d profiles and %d profiles unpublished'),
(516, 'a614239aa677a1e409a94d51beae6d89', 'en', 'df6d709b7e4ba811e90028cc4ff6c47b', 'Content successfully scheduled'),
(517, 'c9abce8ab6e11121c98c730fa8c47815', 'en', 'f7f7c2727473b4ee3aec679db47d5055', 'Enter your caption'),
(518, '3cb4be5c508845f31231a2bd54073c00', 'en', '8b6f56c15b8b9db83c99041bd3f49251', 'Get caption'),
(519, 'd8e3717e67bee367b159ecc3ca507a12', 'en', '0d4abcd9510b13d78a3025cdc129e58e', 'Save caption'),
(520, '7bf1e967674fc5ea51b4554ae2a06914', 'en', '7a8470bcc1cda344e4be28605c1d3e38', 'Enter your link'),
(521, 'c056bb48027bb42b88446f62c8262951', 'en', '6fe76ae3544b6d9b64d89124506b1304', 'New post'),
(522, 'c24e048aceeacf0eacb77d0e9a6169e1', 'en', '25f7347236b51a5eae4ba01a7862cb55', 'Schedule'),
(523, '8759e6304c544c46860fdb54dcfbf447', 'en', '8cb5d0f6183976e90e2f59ca20ec023c', 'Set 0 to disable repost'),
(524, 'ce9d3ecc336a9dac384a26749b6b7290', 'en', '048eacec6edf123f86282ff498e85e8e', 'Interval per post (minute)'),
(525, 'a201a244708dec031415e1a3f469ef91', 'en', '85a456b4ad86d5c37c3f2064f56d9cda', 'Repost frequency (day)'),
(526, 'af835c6e4d58f2b1c802f792a34f2a93', 'en', '613b849400cebef9690a950ffa5bf6c5', 'Post now'),
(527, '01713162259730532d9cebc31f2516df', 'en', 'fb5eb9d4f9273b723c73ef375afe2fce', 'Link url'),
(528, '0b48c7e6484f35be3758e0c9a3661a09', 'en', '27df8a01e2744fc1bdbdc2cf1dcb77d2', 'Empty schedule'),
(529, '5dc662be67609169f8ce948c7f581c3c', 'en', '49fc330528ea4789a034419de168f67e', 'Post & Schedules'),
(530, '9879ec65043e3b31223dab5bc624e0cc', 'en', '4f961d3abbc05575b9fe64941f7ddf44', 'Once/minute'),
(531, '8ab2b99f8a96156ce1cdb102b0c4b1b1', 'en', 'c3f71ac2d0b2c051eda5fb14b5c908b5', 'Missing content on the following social networks: %s'),
(532, 'c5098cc021873357dc10fd866cd7310c', 'en', 'd88d4985db7fc7c5125aada7271b8cf5', 'Can\'t update this post'),
(533, 'ceecbd1d07125de72e240248b3c247b2', 'en', '70d9be9b139893aa6c69b5e77e614311', 'Confirm'),
(534, '454e8da4d23b24a3f475c5c0d73e0b8e', 'en', '42e66dfd1037a3eeeb668c8f9e7ed27e', 'No, Cancel'),
(535, '13ddddb41ee7603d51ae8e87430426a7', 'en', '010e689d0b21f5b76baa8f6a2f8ca1a2', 'Yes, I\'m sure'),
(536, '374f3d9e055c5f299c7eea2f82a20c1d', 'en', 'ef403635000b8ada6aca41ea538eed2c', 'All report'),
(537, '773f1f8b9aa977629940563e95ea7cc0', 'en', '58038ee4a4e2d0e2f764aa223fbecfae', 'Just now'),
(538, 'd7e9d54dbaa9eb266d624eea8abb4233', 'en', 'bb9b284af99dcb275e308733026e0edc', 'Instagram profiles'),
(539, 'b011b75236a7466ca57dcc5ba978c99e', 'en', '2ac2edd9496ddbb9efcc7aece4d7b2de', 'Instagram profile'),
(540, '652da2bd51b2c535958e945714333785', 'en', '1ad9a1dc7701fc4ebd459ed59c6ba764', 'Please select a profile to ad'),
(541, '8afc0a82089a7f5e5a67fef4717b7c91', 'en', '4dd7bae0785b21bfd727800bb07c672e', 'Please enter Instagram username instead of email addres'),
(542, '876a9100dde63ea9af04551688e6dd76', 'en', 'cd2e4130badcf11d6a4c84baca76a383', 'Please login on instagram to pass checkpoint'),
(543, '7e2b917a0f13d69399cc5638cc0fff4d', 'en', '9fc6eba9ff53bef0f90d3e35e57a5fef', 'Your account has been disabled for violating instagram terms'),
(544, '3db3af85b4845b1e171e1720b108fdae', 'en', '239ab0e4052dc75a9919b80fc6ad8901', 'Your account has been banned from instagram api for spam behaviour or otherwise abusing'),
(545, '185d648a87e0c6c59de02fba2fc63300', 'en', '4c70e2ebea3122bb60da754c62c3869e', 'The password you entered is incorrect please try again'),
(546, '3d61fb7cb56b4376a481f7ea306a8b19', 'en', '52fbe7a089bf2943ff25de6dc853d223', 'Go to instagram.com login with this account and then try to add this account again'),
(547, '41a13749a580da94337dcf3bbc7ff5fc', 'en', '4393c3d94ec4931c7886bd23499c76c3', 'Oops, something went wrong please try again later'),
(548, '922d6b4d033fa84932e4539b5e976d63', 'en', '4e10e8fd81370812beaffbe27555777f', 'Enter the 6 digit code we sent to the number ending in %s'),
(549, 'd3a842d525a0968505942b2195b420c4', 'en', '626e173ffa36974bad982733707facb7', 'Could not send verification code please try again later'),
(550, '36153a3c3edfb8aea46e47a2af1d2ebc', 'en', '4ca48c5de5b15375b8d688556aff8587', 'Enter the 6 digit code we sent to the email address %s'),
(551, '643e9a50629d5a2c942b5d6e188b9fa3', 'en', 'acc2af84736cf75315cbd26c9c9b65dc', 'Could not verification code please try again later'),
(552, 'f7be76d1495d133788f4ea3cc90011b0', 'en', '869b384c9520b0187a8ffe9611dfa43d', 'There is a problem with your account please try again later'),
(553, 'a55af45ce90ccc00ae332743b0e79a98', 'en', 'ae2cecc44f8d6b8b7c9f8e4698aa1dc7', 'Add Instagram profile'),
(554, '695fd50ca6337eb1e156935f8625634e', 'en', '38c8debb9863b54f39cee380aea176ec', 'Choose the profile you\'d like to manage'),
(555, '6a8f1a7f269ac0b164371a6d911caafb', 'en', 'ff35721b3524604db5deacf738eaa49f', 'Re-connect with Facebook'),
(556, 'b3840416c345088b9fee0138e1660523', 'en', '3bc78d0a30a3d15889f5ca6e6ea92a1f', 'Username & Password'),
(557, '9a50b937dd9a0b32a09eb05a92124aea', 'en', '87b7760f14fbff78d8819291f36ab9a0', 'Button'),
(558, '31bc400ac8434af568aef59422239fd6', 'en', '460820311aba3e97af34f1ae71a6741d', 'Instagram username'),
(559, '4f57e74061f7afe10329163411771b77', 'en', '7443b5b3a0b2c96ba9a552eaa846b192', 'Instagram password'),
(560, '8388530ae2ae4c9698f97369486c94ca', 'en', '1316379096c85e48ae3c8426e1536ed4', 'Security Code'),
(561, 'c796f8e6f0119d63746591272d4a4cf5', 'en', 'dfcbc97f1d21b9867e68fa7179492c4c', 'Verification Code'),
(562, 'cfdc58b9613fa1166df2b63659eda011', 'en', 'f614b31b6a2ab565ea20c21f4c87c1ce', 'Log in to Instagram via'),
(563, 'f8924e9c9f641483ad63479ce5df75ef', 'en', 'db4bda203ad38a7eb6ae6dc0c9362ea3', 'Get Instagram security code via'),
(564, '137f1618413e64871feaab3d8b0b7808', 'en', '4cecb21b44628b17c436739bf6301af2', 'SMS'),
(565, '6409f61f79952dcbe9288a64104e1684', 'en', '00af11bc13681211addf6990f13e02ce', 'FFMPEG PATH'),
(566, '405beec7cfb52df59cc5ac4da1ff1940', 'en', 'd502f17038e6e826491f4e109c02d81b', 'Enter empty if you not change default ffmpeg path on your server'),
(567, 'b2eaaeda7bd7fcec9c9d235747e95dbd', 'en', '23c0480bbe656ce1d4f747358af030a9', 'FFPROBE PATH'),
(568, 'bf2c42a23fc9183d6be9e827d173c294', 'en', '46429aaf3f1888b5217823202f809cc7', 'Enter empty if you not change default ffprobe path on your server'),
(569, 'c82200193c2c2be5cff859b1d0623ae4', 'en', '2defae59ac884ac341c4dd699e566b7e', 'Log in to Instagram via button'),
(570, '6d59117dba5b4010a7ec98f2ef09003d', 'en', '9421f8ebedb29705c995fcf2a358ebee', 'Click this link to create Facebook app:'),
(571, '571d3430aaf344149c2b5a6a96ae2392', 'en', '466ff61f4367f43a1e2bf7656be3a022', 'Facebook App ID'),
(572, '5861c4ad371d3ebf85817990b8360a84', 'en', 'fd125f225efc3440c92a219e9b396543', 'Facebook App Secret'),
(573, '821a7843b1bd518d008982afdd2247a3', 'en', '83c754695eee55beb148d18138137e5b', 'Instagram Post'),
(574, 'a9f5c0782551aad34e04031d360a4616', 'en', '3b563524fdb17b4a86590470d40bef74', 'Media'),
(575, 'a460a6cd34349b100cedcbfced94ab6b', 'en', 'dfba89a600b608b2b724efe1f06f599a', 'Story'),
(576, '58ad05ba939f417791903ee13b78d6fa', 'en', 'e2e0c146a3eb54e8f2137dd005077b06', 'IGTV'),
(577, 'aedb37005bb5121c2d235dc3b92cb800', 'en', '225bf3d9290b5f536b2e442259e78652', 'Carousel'),
(578, 'f5674fbbec183d5288eff3ff7e6e6702', 'en', '757e22afbb4bc60c8573199ab8020e3b', 'Instagram requires an image or video'),
(579, 'bd937491e9766ddbc6b580e4f2248a0d', 'en', 'f5fafbad0c7d434bde3629be069a5f76', 'The system does not support video posting'),
(580, '0411342e3e9f8391606fd345522c337b', 'en', '901f1c70b5026c662bc67a3b07bfc20a', 'Add a first comment on your post'),
(581, '4fd8137fb2af6f06718fcdfffd3d7687', 'en', 'bf0c85bf1b5ae5e8a25d490297d2df3d', 'Enter link for story'),
(582, '48d18a80ce3fefca9e0a52d7dc1303cf', 'en', 'fb1f7c32864aa1cb6baee5b8e67e8730', 'Close friends story'),
(583, 'aa5270e22501036766ad60988f00b26f', 'en', 'c3edcf2cedbd4ce230fd6d4ea8915718', 'Add a comment'),
(584, '6b98bffb4df4294991cd2a12e7385593', 'en', '2be69105420e373c6fb90d4a73f016e2', 'Be the first to Like this'),
(585, 'fb20e3455d718347636db797d900f83e', 'en', '0cf81f9038402e85910cfad17d0051b3', '1s'),
(586, '1edfac54f85ed23f872d29c869a56aee', 'en', '5d5e8eefd0fc3292c3251672eeb30b7d', 'This social network not support post this post type'),
(587, 'c35b073c8b1813075b427128ab1d3813', 'en', 'd066dfa61c55e264ac9468c95ccf38d2', 'Facebook profiles'),
(588, 'b2ed2fb0fa837f31239b879f8b1fad33', 'en', '12b5aa7bbe5230c56aef4fe705f4bfa3', 'Facebook profile'),
(589, '8e3e593956d579aadf71d6d9e5e00be1', 'en', 'dfbd78add4c5b118fd6e2bd06f5a2689', 'Facebook API Configuration'),
(590, '1edc4521967f079336436a7601727698', 'en', 'eb7de90bcb857b31a8c74784d5c34be2', 'Add Facebook profile'),
(591, '5d5fd328aa17dbd5f25ac0ebb8e4af17', 'en', '727df25b35a7b666f54a87a2a5a78866', 'Choose the profile you\'d like to manage.'),
(592, 'ea2efcf526c6b37285393e375aa854b9', 'en', 'afe056c76ff2042bb7a0c53b64ff9c67', 'Facebook client id'),
(593, 'c86e26bd9a952c385e4d84e81ff19d67', 'en', '6afc1955cf1f83bff540cf67527945c1', 'Facebook client secret'),
(594, '5861427bc16edb6803704617f95a009c', 'en', '85cbf8bdf766779d5bc037ce39e27473', 'Facebook API Profile'),
(595, '7a9704bd33059145a173ec5ec13129f6', 'en', '7a90b73e32f0ab0fccdd9dfe38e76586', 'Login Facebook profile'),
(596, '80424868569365e3b89c654f9d2064c3', 'en', '5a66ed2a4b0678d5fa1aebef9a97ef25', 'Facebook Post'),
(597, '561b38da0de4fd000069621746e6f32b', 'en', '98b82c200a2e309b24cb481970f3fcc4', 'Like'),
(598, 'c22ddd9843bc01344e3a15cb16dd97d1', 'en', '0be8406951cdfda82f00f79328cf4efc', 'Comment'),
(599, 'd1987bcbc953867dd34e51add32ee332', 'en', '5a95a425f74314a96f13a2f136992178', 'Share'),
(600, 'd86b2d65828ebf6fa85f8c4213b363f3', 'en', 'c108b4dc8c451e1c1670add58909e6c6', 'Facebook pages'),
(601, 'f7d74857ee8645d911f4981c0d52807a', 'en', 'c3833321ea1a640947a23fbee262f9d8', 'Facebook page'),
(602, '361bc67f5e840fa19defbaac3b4c6609', 'en', '6b4143d554b6f9540807669d264aa0d4', 'Add Facebook page'),
(603, 'a7d12f168bf3b044e63c347b88bdb5c1', 'en', 'c148c2bac6ade2b12e418ad086550305', 'Facebook groups'),
(604, '2257d7c18e61688d91ecf950929b8ade', 'en', '856dfe6486adc809ec32c92e60d6ce68', 'Facebook group'),
(605, '293aa12c15445447b84261db2f9b68d9', 'en', 'ffd3b250efcb11ace6e9204fedced477', 'Add Facebook group'),
(606, 'b0a9c55ca3fa71e9627f50c696109c20', 'en', '0da6ebbcd452e676a5a90bab7c6d122b', 'You are using the monthly payment plan. Cancel it if you want to change the package or change your payment method.'),
(607, 'baba186dac2ce719d569ca3a60bfd161', 'en', 'e7f9e382dc50889098cbe56f2554c77b', 'Credit card'),
(608, 'd48b9518fb78cb15f8987bc1c73bf727', 'en', 'd930dbf4a7092e01caddb358c8f20bac', 'Recurring payment'),
(609, 'd03cd4208c7fb62d8509a0117e84dbf6', 'en', '063177afa76e5ace75cdd949e31537b3', 'Webhook URL:'),
(610, 'f0fed7c8973b63bdc9cb42acf41cb69e', 'en', '6ba5ab09fb8f1e50e1cd8cd8a5211a40', 'Signing secret'),
(611, 'e353f0e99c6650caa765f1779af46784', 'en', '20cd8258e5c60576209b7882df90b892', 'Stripe recurring'),
(612, '8687a1e9def6c8d7e1c8ad7685cea54f', 'en', '5d97f409d103a5f78ffaddd4df0a760e', 'Stripe recurring payment'),
(613, '1426259fb9b12dd60ddf793b3a00f191', 'en', 'f2c79c6a576b2bfcd959b9e3b21dc91b', 'Required events:'),
(614, '54faf0df9e867a9ce55f5f95fae85150', 'en', 'ce7566d1d08cc094b74cf283cf9c56a5', 'Stripe'),
(615, 'c985da752f79bd11144a03f6f79c14ce', 'en', '39ab9f043b9b9009ae8f7213eb7614d0', 'One-Time payment'),
(616, '7cf52ff0448b7e49bb6ca257546c36b9', 'en', '795c295850f9ab743fe152710fe3b6d2', 'Stripe one-time payment'),
(617, '8459dd8af897a4d57f6e8884ebcb2229', 'en', '30ca9973e71cc47268616e139765f5df', 'Publishable key'),
(618, '59a50bd103e1b8f03274f1f311a76b44', 'en', '952bf87c967660b7bbd4e1eb08cefc92', 'Secret key'),
(619, '1760fa4e4705a6d638eb31d7e5b59328', 'en', '53c418c0389de22440838f7afa94dd68', 'Advanced proxy manager'),
(620, 'dab0ae8ca90840eb7e244e0f89177de7', 'en', 'c4c16a3863f9be6b8403164cb9106629', 'Proxy advance manager'),
(621, '02c3a918c4aa7f1de2e0e75dc23a3f60', 'en', 'cc496651f269daaba73b0dea2895d106', 'Cannot find account to assign proxy'),
(622, '27c8a928951025d2edde386df3c0c39a', 'en', 'bd703fc9430737d460290e82a7a691cf', 'This proxy does not exist'),
(623, '6dc4387d8f97bca969219b1420e7bad4', 'en', 'eb63c9323ffcc98528e6e2a82e08fae4', 'Cannot find account to cancel assign proxy'),
(624, 'e2b81682da0664507bc6ef385c3a2b80', 'en', 'e2a1fa01d7a6184b2cad2e7530a88a15', 'Empty data'),
(625, '93c5dd72178dc0954bc5d8ce9f553c18', 'en', '7188b0826fdc14fa7ea6d3d4adc58ff7', 'Added success %d of %d proxies'),
(626, '99599a0399b254a4fba863eb7decc0c7', 'en', 'b702d617ea6183d3f4162718c0c30a11', 'Assign proxy'),
(627, '8136f3a8b98efff59495119fc63d6675', 'en', '38160901da7224d77a2c0a7948fea16c', 'Social network'),
(628, 'd854f2112a109a2fdd3402f07fa3c9b8', 'en', 'aa90c53280582695f3d4b8ac2ec17a8b', 'Account name'),
(629, 'e57c3ec5deda3c56c32bcb3f8322bb54', 'en', '3f48746290971639401880fc6aed2971', 'Account username'),
(630, '1d07a9927bcc9e6d3958c0579fa7cc5f', 'en', 'ae1dd217044633af0b0914767739da6d', 'Proxy assigned'),
(631, 'c3afc938d230270949c302308714fa09', 'en', '142fc56a04c2df7c1da84b40a6edc4b9', 'Proxy user'),
(632, 'a83338cb0c76eb1b7239c907cf209e5a', 'en', '185b7133db22230701a857c059360cc2', 'Assign'),
(633, 'be3aaf1590c634454afcd2f584e3b198', 'en', '2fecc3b97a93f12955b32ead4e826659', 'Are you sure to canncel assign for this account?'),
(634, '24bb7130c62637cd85397acb1ee0b26f', 'en', 'eb5aeb11786190726eadd8a26bd6d874', 'Select proxy'),
(635, '62f861fea2357daaea5b0850ff82f3e1', 'en', 'bd49dc941881322afda35e9b2831739d', 'Import proxy'),
(636, 'a35386826e4a3be54133197d14b3851c', 'en', '084184eaa444a10df644ccba92c4e2f2', 'Step 1: Create template import'),
(637, '5e3d03b60c44e269655bf626f6149132', 'en', '27fe4eb3edbaff8f250e2d51f7462681', 'Packages'),
(638, '20b725b9a4d1f4b731f46eaae5fff07c', 'en', '80d2677cf518f4d04320042f4ea6c146', 'Limit'),
(639, '1bae0ad67fffb02e3c89e20d82b63c86', 'en', 'c665a941d47d1f6373238fa529a7963f', 'Limit accounts can use this proxy on each social network, Set empty to unlimited'),
(640, '86f62dc617fed41c113d23366adb7404', 'en', 'ef1d00d8a237a1bbe431e1091f5715fb', 'Creator'),
(641, '3be35e0751ad27602c2da261d318a183', 'en', '7019b47c3429a9017a2c8cf01b1265a4', 'Step 2: Import proxy'),
(642, '5cfebf96b179e56fa0db7432505a615d', 'en', '9b88c95a15e018c3f8038a7d0160145c', 'Paypal'),
(643, '4d5511e722a14bcf3316af5b1d3c1f9e', 'en', '343bba3bf02c060f54134b00aabdc176', 'Paypal recurring payment'),
(644, '2f8258e204fc7531614fbe392a72c5aa', 'en', 'f8fdcf706b2295f2972e81d2d6eae33e', 'Webhook ID'),
(645, '595361ff95c24e1c06e41e8b447372fa', 'en', '5e36872c2e7cbb322d5aadbb33208a19', 'Paypal recurring'),
(646, '24ee8d28d70c0951e2f7403f4cfa5165', 'en', 'e73b6267f5e52fb65cbaedfcce14f8a4', 'Paypal one-time payment'),
(647, '23e700caf3ac908ba278c7e8f64ef4b5', 'en', '76525f0f34b48475e5ca33f71d296f3b', 'Client ID'),
(648, '63878bced801406a4cd2943309134c92', 'en', 'b099b0755ee4358378a0aee7efbe6ea6', 'Client secret key'),
(649, '27ff9331c1b77ac995655e3807e92575', 'en', '14b02fbda483f193ed3232515257c6ee', 'Payment manager'),
(650, '26a7c0d0af6a561b1e549c0792d09ab7', 'en', '5b031d9588bc9142305e6cc85745cea7', '%s payments'),
(651, 'f310f2e1d863f5db8ef71bd67d4d3501', 'en', 'f802b5e20362c90aaa218216bccae18b', 'Payment report'),
(652, 'ca234efe72441ef2a3c6bffab7dce6a4', 'en', '822f9ce71a0c9a7aac8f6a7555cde98a', 'Find Results'),
(653, '6082da46421b8efa044f1926415a5958', 'en', '7002d805a311583c3914e6c02a368848', 'Earning today'),
(654, 'b19404b97957a251407dafbd674e2552', 'en', 'dc54e41512ad584904e30f0db7269030', 'Total earning today'),
(655, 'e1d0345dc7bc85546edc6f1a868f010f', 'en', '6328ad1793f2873e2aa9ae2f1964afb6', 'Earning this month'),
(656, '5db650e0aef54bb1b81792445fa4f380', 'en', 'ff9dad3f3861fea98bb52a535af32e18', 'Total earning of this month'),
(657, 'f856316f1eebf96a225628c9ec356b4b', 'en', '267f4b0573f19cb3ca91e85bc0fa53a9', 'Earning this year'),
(658, '6761d4ab05a3e83050ccea74d14c272b', 'en', '718423462cb4edeb438b4ede039a8b02', 'Total earning of this year'),
(659, 'b8f1de19e4b5240e38e2a2efa20d44cb', 'en', '6ecdeeece7dc4ee366197ea2e4b6b778', 'Payment history'),
(660, 'f49d5c3940cd739c193313c55dce5a38', 'en', 'e1d79f804064a2d13b6d3caef638a3e1', 'Recently payments'),
(661, '8fb4f6dcf6fb3f9107a1e328179fbd91', 'en', 'd304c853c515ea96a60b5ad81330bec7', 'New payment'),
(662, '4f760ec9779adf3d09aa0c8ac1c933be', 'en', 'a1fa27779242b4902f7ae3bdd5c6d508', 'Type'),
(663, 'c7d6ca110749192a7733e39a6dbe023d', 'en', 'f23405b7f8242157f8cf3d1dcebe1d0b', 'Package name'),
(664, '322282a2003cf01195d08ee2dc36d73a', 'en', '88427ec035734b45aae9f7d8859a5008', 'Transaction ID'),
(665, '2c05070022ce2757e8cab3d8c7f447cb', 'en', '0b6cbdf7ad2928078f1600a3e8979485', 'Plan'),
(666, '374749b53757928264e5fa0e400fee67', 'en', 'b2f40690858b404ed10e62bdf422c704', 'Amount'),
(667, '09f0fdc61d3bc1dc989d77347471db27', 'en', 'a944f36e784aa5b002c5b625255aff09', 'Anually'),
(668, '329c84a2cef0527d92add4329b5c8b74', 'en', '69676703a914469feb6b23afdfeccb73', 'Monthy'),
(669, 'f7f76c798af078404b03e11064ac0bbe', 'en', 'c453a4b8e8d98e82f35b67f433e3b4da', 'Payment'),
(670, '8ae0d26a076bb76f0c8e7085a246f8e6', 'en', '5344abf359658030a2d3a0d8582939f1', 'Make a payment'),
(671, '4c377a551253a3b2b48765f02446b44c', 'en', 'f0aaaae189e9c7711931a65ffcd22543', 'Payment method'),
(672, '1e59754408d44590fd7739fab0d71bd4', 'en', '0ba29c6a1afacf586b03a26162c72274', 'Environment'),
(673, 'ead930c87e12d3aee06d65236aabf23c', 'en', '955ad3298db330b5ee880c2c9e6f23a0', 'Live'),
(674, '6281c4686b018d7efa1f958d7d934507', 'en', '2652eec977dcb2a5aea85f5bec235b05', 'Sandbox'),
(675, 'f2b29f34b5e3b8f92cdc8039be685e9a', 'en', '386c339d37e737a436499d423a77df0c', 'Currency'),
(676, 'b0a41ccc8631d1120b38b052c7d69b08', 'en', '02c86eb2792f3262c21d030a87e19793', 'Symbol'),
(677, '6f40888979b3f6b14e56633e1175b8cf', 'en', 'bd9317b7a60e68ad016948c610434536', 'Payment successfull'),
(678, 'a440f3c997013b51e11915f76cb8258f', 'en', 'a8b0b6e79906227ea301b0da9c4856fe', 'Thank you for your payment'),
(679, 'e44b7f0fb9448aa6e1b2a0ecee3794a5', 'en', '4d282591c955d8bc20dfd39697b5c858', 'Now everything is ready for you to use. Enjoy and start your plan.'),
(680, 'bd4bc2fba7b3c634c740657812e69b5d', 'en', 'd19e8ab738bcb64f6c960a6ee116b3b5', 'Go to Dashboard'),
(681, 'c11b52a2b6ac7565e61198a062b7bebb', 'en', 'be16c05ac4f3fe7dacd8c043408d2876', 'Payment unsuccessfull'),
(682, '5d426a364012959a3e673e037234ab95', 'en', '44f85b0df0968262cbcb235077ee0df0', 'The payment could not be completed'),
(683, '2268162311631f60dfeaa4f3f9f83533', 'en', 'ba4a0818e4f31cacbe54dfd5623bba24', 'An error occurred during checkout. Please try again'),
(684, '3bf8f6cf40323b4e0b53df8bc499a2ca', 'en', '220986ee8c6bf1df56d9523fc49c69de', 'Try to again'),
(685, 'a423ab1858edd62c34492c39a656bed7', 'en', '4935ede30a688b922153c6abc8d48e14', 'Total Payment'),
(686, 'b3930ebaef6d8add50f76fe4cee37bfd', 'en', 'ae0f0ee500f276dfe48da9af0e355b19', '%s Plan'),
(687, '454d49b30707011abf842f5945d1457d', 'en', '3f2b96ac98759d4f7d6322671c9c3d33', 'Instagram Direct Message'),
(688, '44f8f144b1451252c7d48f3a0f0b695e', 'en', '9e9347be97990a570ff7b452c1a12328', 'Direct Message'),
(689, '410673fc7b56642944ac19a4139ac3e3', 'en', '208195218f30693c2f50e766b08f568f', 'Cannot send the messa'),
(690, 'a82f2d52a8f5a35e7873ae6f1d5ab656', 'en', '67325c4a33aab9909d7409f999cb3c24', 'Cannot delete this message'),
(691, '209ccd1c6e3403fa7c0a7a9e1b51bdfb', 'en', '78c037a1e134ed89ff4d899a7c51090f', 'Cannot hide this message'),
(692, '2ce5b90ddc302b010ea619883e2c0ebf', 'en', '48abd7fae8de549e4271afaf506bb800', 'Enter keyword'),
(693, '2cb729e4548db5026fab3d7463553d0c', 'en', '44f0fe23a7b0a6431262f6bfd5719219', 'Select an account'),
(694, '19fafa9a0f9650934505614338f1b459', 'en', '2c38980cdda1cc30a9d4c48e82bfd485', 'Select your account'),
(695, 'b36fb7fef553685501b17310a4d0da31', 'en', 'aa4b6d96f7d56cff2d23bd9182bbd2bd', 'Message...'),
(696, '0561a23ad17b1f102ed39f19e8059cb6', 'en', '6e634d5fd198f86b8b1627d01c633000', 'Search instagram user'),
(697, '58e85816b72a6e3727830cab89320492', 'en', '62a5e490880a92eef74f167d9dc6dca0', 'Hide'),
(698, '2c21293afe2557a54ace493239fbcfb0', 'en', 'b55a2d6e1009d3881156a3495dd26de5', 'New message'),
(699, 'b33cd98abc67d820c0bb408996e3af17', 'en', '2239b6802704f5d897b9f9bf5fb3fabe', 'Instagram Analytics'),
(700, '31fa1d9f6d15e8083e36bdac5af70dc2', 'en', 'a768caa988605a2846599cf7e2d0c26a', 'Analytics'),
(701, '47504f7e5955e77828a5433a36276a05', 'en', '1f2ef7d9cc4271d2a8e264467021d79f', '%s posts'),
(702, 'bbd1b8d65fa5f8daa5a2a436e7f60931', 'en', '48e9cb36b7257957053b43aa81c2e126', '%s followers'),
(703, '58cfc75f3f18318f667d2fc90b5aea8e', 'en', '86a979b2d8ff26288db783cd2c158574', '%s following'),
(704, 'bdcfbb3ba67e5f44e3a11583b884911d', 'en', 'de26c62223ce98e23de862f4dc458dca', 'Analytic for  %s'),
(705, '5e69cb6b2eb75e078fcf392f1c757e97', 'en', 'f034ccfdba0f830ec14d37f73be77578', 'Engagement'),
(706, 'ca3a98f39ef17110a0cf91d2435550b4', 'en', 'be5a751188e4906c28d90691cbcb59c0', 'The engagement rate is the number of active likes / comments on each post'),
(707, '84a3ec82aee601c6533af2070fd91cda', 'en', 'ba7e44633dcb8142cba21a5b940bb2b3', 'Average Likes'),
(708, '9332604b41279030e3ea8a1f025e08fc', 'en', '78f864deb53680560c94f750f63c6940', 'Average likes based on the last 10 posts'),
(709, '8a14170dd6f28569ae0879de7225d2ff', 'en', 'fce901d066567bf6cbf33caad5a2eeb2', 'Average Comments'),
(710, '655d86cf1e58f25ec6afaba0c9e75bfd', 'en', '09d42d40bb146df4033e4a7afda5f70a', 'Average comments based on the last 10 posts'),
(711, '9d2785fd83aa0a64c1d3bb4187cce17e', 'en', 'd300a81dca590408259d81184156cc36', 'Profile Growth & Discovery'),
(712, '4791d4884f5838535c291cec66da4298', 'en', 'b4af86465b40eaea83304d05219ba157', 'See insights on how your profile has grown and changed over time.'),
(713, '4522d49bc5d57b5a356b8f92c810473d', 'en', '1186b8b1df309a9644c60e61b8199ccf', 'Followers evolution chart'),
(714, 'f90c83d070cfb9ae47944325d9ee25b9', 'en', 'b0dc43e93193399397e5bc88abc935d5', 'Following evolution chart'),
(715, '3a8e420fc51f392c54d10b0ac52d4df9', 'en', '212a366b71e5ca11994622fcefb8ac5f', 'Account Stats Summary'),
(716, 'b3eddc0e1e1101816315db4ce94375fa', 'en', 'bc90ec701b47bda89ac23875b3b12ca3', 'Showing last 15 entries.'),
(717, 'f907835f21a24cc61232515b540d7482', 'en', 'd32d5d6c4817b9a7b90cc4a97303eec1', 'Followes'),
(718, 'b6b598dc2c7dd06d5ca5e208456919d8', 'en', '6f796b0e6deb4f4c2c0ee0ed5e10e117', 'Following'),
(719, '530fc5960a14010bacd11d330ea5a910', 'en', '5dc52ca9ffdc26147075682c92a0a853', 'Posts'),
(720, 'cbb656214e06db42c4ca296bf19a6fb5', 'en', '305a8c69fbc7624cbd019ae899f8b1d2', 'Compare new Followers and Following evolution chart'),
(721, 'e0a4fcb439515cc0ccd521b78b035dd2', 'en', '8547083ec6267b415ff8d28ec891f51a', 'Compare total Followers and Following evolution chart'),
(722, '249f1759e15bfd1effbe94e3e6675673', 'en', '7aa2d1efbbdf84996ec87808dbf1668c', 'Average Engagement Rate'),
(723, '9bf6d6546d7c25cc9fdb94d80eb9f4fc', 'en', '6758029332db3f00822f6ab19a47777c', 'Average Engagement Rate Chart'),
(724, '844b2b982ff7a50d521d682705d11330', 'en', 'bd1e8ad172b57db051347a98f0d34eb3', 'Future Projections'),
(725, '32539d46155c1d000b6e7cf393cf595c', 'en', 'cff58f45aca7427c170f4fe0630a53d1', 'Here you can see the approximated future projections based on your previous days averages'),
(726, 'c8c6aa9075b1bfc33af0d99aeedc74c0', 'en', '1c9473c288abc0f881f70fba3c11829e', 'Time Until'),
(727, '1f36ce5554eed96aeb6ee744b7ddd13b', 'en', 'e70c8bf5237e43211d37eb95873d7fd3', 'Current Stats'),
(728, '522e7efada9ce179b2427e063b5076f8', 'en', '44fdec47036f482b68b748f9d786801b', 'days'),
(729, '68d9272abb81c05b61b4e1c4b348bd9a', 'en', 'da36cfaf48b9e19896e23e1207040d1e', 'months'),
(730, '80b63da202c3e6540dfa1232f359f7c3', 'en', '84cdc76cabf41bd7c961f6ab12f117d8', 'year'),
(731, 'e72186173022e7ced86e79b03036384c', 'en', '74d62a2c76b528f180869b562599eb5a', 'year and half'),
(732, '759cdc7fca9165d6e3631db5c348360e', 'en', '75aeb98e5241592ad6a6c2c4c78a16ef', 'years'),
(733, '8536eda2a0332955ecb89f44f128abff', 'en', '0056836c249f68da60706b3c7711d89f', 'Based on an average of'),
(734, '36e9fd1cef468c5e5a22c901946d5866', 'en', 'd1798fefbf2fd8ecb3b2c4044c148f64', '%s followers/day'),
(735, '8c8dc1ee24850cd28f5ab33a1938c007', 'en', 'fa5939681a3ef463c7cc753c89843f37', '%s posts/day'),
(736, '9b497d48a6342152acb10ffb7d2b8e9c', 'en', '84852612dcb285b647c63a1320e9a2b5', 'There is not enough data to generate future projections, please come back tomorrow.'),
(737, 'b2a02a8f3fa5857caf05498c365c171d', 'en', '65e8f01b50efb105e8de013146685760', 'Top Posts'),
(738, '755db540c873a724c155a6405ed61387', 'en', 'f554975d96353a5272fea4c95d100665', 'Top posts from the last 10 posts'),
(739, 'a2a6435341eb52b42f7d0a828f6cf080', 'en', '74b118ea1bb0f9449147032410056e57', 'Top mentions'),
(740, '6e6e5ca36215079f09e2ed328844e720', 'en', '30c3b0c9aa1b70ed6e5f42c73e302e04', 'Top mentions from the last 10 posts'),
(741, '1d4cf21604463f0ae676618264294188', 'en', '534c41f605a5da201193fd54f3ff1a18', 'Top hashtags'),
(742, '0a8af4e69b15710ec25ffb997367beb8', 'en', '1b4f6409452ca653ba6e473232bdced5', 'Top hashtags from the last 10 posts'),
(743, '6b3c6b4fd3f5ee05ef69c5bd3f099c6a', 'en', '76fdc615ef1a9999d8c444364ae305fe', 'Instagram Activity'),
(744, '90b742e1837d12dfae378aac70e48dae', 'en', 'ecfc2dffe568c10a67dbc6d3724cfde2', 'Activity'),
(745, 'faab086dc395258bc9381df8a670b29c', 'en', 'ea371969b772b2f5b6b5ec5c6df2fce2', 'There was a temporary problem with your request'),
(746, 'a903f88ddb3395e5136656d7978bb60b', 'en', '0c91ef8ddddcdca677c8fc6331358bb3', 'Please select at least one tag to get started'),
(747, '47632f46f226ac5ba1b33980687999e5', 'en', '66c58b85909b9f17711b003eae58270b', 'Please enter at least one comment to get started'),
(748, '1de217b8d046edd225998240c64e9e56', 'en', '841a27ff7006c4ad20667495fd90ff3d', 'Please enter at least one message to get started'),
(749, 'abcb4940520fa5b39c1fa1c06012fd12', 'en', 'daaf81beb14673db18bd22e25c266cb1', 'Please select at least one location to get started'),
(750, 'fe5c8b0b7ac1beab2736b52b94a3355f', 'en', '36647c065f39079d46a23197d8c685fe', 'Please select at least one username to get started'),
(751, '1b44bccd6852c53d5714e30ccafb4200', 'en', 'ba71ae2e937a6d07be93572c86f15d8a', 'Just allowed values 1-60 likes per hour'),
(752, '4efe17c6c56f3dff2c13b2fc8bcd7a63', 'en', 'ff037425be6b3df3228bc5f2e9d67808', 'Just allowed values 1-20 comments per hour'),
(753, '9ac3e4712218c4273eff8073b289901b', 'en', '5e10a30451a0b14c4831cf5639b9662e', 'Just allowed values 1-60 follows per hour'),
(754, '9530d5b304dac3e43194f0ed6deef329', 'en', '3e1ff2b0d5720def02dc41b7eb14f862', 'Just allowed values 1-40 follows per hour'),
(755, 'daf4e12f2cf43a840b633de7d69c5310', 'en', '9180a56e836704fea2723eebc260fd52', 'Just allowed values 1-40 unfollows per hour'),
(756, '45a170232a531edd9aa685a0cca35c2a', 'en', '6df1ca46dd21dcca119a31293c50e6f5', 'Just allowed values 1-20 direct messages per hour'),
(757, '9b83ee151445c180d31bd04445993562', 'en', '62c6deb31b53133fda16a3412f5385e0', 'Just allowed values 1-5 repost per day'),
(758, '3abb65be2f6bbf1092893f0232983a02', 'en', '4ffe6c783f78522a4f01d8e7324b1ed3', 'Please select at least one tags to can start repost action'),
(759, '66047a8bc08e87833fe33f76b5ce994f', 'en', 'da8a0c1733a79739a2906a1dbe78233e', 'Please select at least one locations to can start repost action'),
(760, '0d60c70ba1221a92a230755a4561629c', 'en', '51c92a4943fe8c69b52a7b0f277987e1', 'Please select at least one usernames to can start repost action'),
(761, '8eb9d34c2f36027c65d5f1ae1e647b59', 'en', '517cc37a3cae5709bc11fe3cb4599d89', 'All activities stopped when you changed. Click the Start button to continue'),
(762, '4c10b158c6fc84b160da38efb05b640b', 'en', 'bd21734fa62bc2d6f944f9dd422589bf', 'No time'),
(763, 'aaef447579523ee817dc917bcf5e58ad', 'en', '8428552d86c0d262a542a528af490afa', 'Started'),
(764, '8e663a47f2b4becba387f6c408a526ec', 'en', 'c23e2b09ebe6bf4cb5e2a9abe85c0be2', 'Stopped'),
(765, 'd8fff583394ce2db787fe6ddabb75a2b', 'en', '64a62a71194918a76e4941233abc5a6f', 'Liked media'),
(766, '6d9906e468be60600158ab6d5bb49832', 'en', 'f845b41c3616453912df33c6fb87ccec', 'Commented media'),
(767, '4fc58e6bab7f851e95c06c769573d35f', 'en', '1d549e2ae43f7d8374819b2ad2fdb942', 'Watched story'),
(768, 'df714fc12b4cb6b1f25d75df856f8e6b', 'en', 'fd3fbc65a3ef97ab0db95112d3bf58c7', 'Followed user'),
(769, '459d7d17680349ea173a7a1ffad4b199', 'en', '5756474e558cca98d41fad7590746cd1', 'Unfollowed user'),
(770, 'ae3894740ab143f6b14f191bae98b661', 'en', '1569ffe3478450a6455e7720701d274d', 'Message sent to user'),
(771, 'c5a5972b536892c3c67b8ccf3f907cef', 'en', 'b27a204d441769235e20bf0f7b64b4a9', 'Repost media'),
(772, '53a29525fa1b544be4e1491f918041cd', 'en', '33d8042bd735c559cc3206f4bc99aedc', 'Sort by'),
(773, 'bd0b4a1ffe83585e485914f332088895', 'en', '336d5ebc5436534e61d16e63ddfca327', '-'),
(774, '251d51bbc4c47b49c984c430cd11dbb4', 'en', 'f6039d44b29456b20f8f373155ae4973', 'Username'),
(775, 'd9a03ea71cb99438ce6a19be2d401097', 'en', '3a0ef7f393fdd2f83c32f3a26a89f03a', 'Medias'),
(776, 'c0bab5ce9a6a344f7ff442a5e3c3a645', 'en', '24c714ccb3857346b52bfe17e287d210', 'Followers'),
(777, '3acd594a4d399c2754b062f79b5d6977', 'en', '4e6251a059b431419f7090d66bcdc372', 'Last 7 days'),
(778, 'd9cd50cdc5ef7ebb1608a9a841cb4184', 'en', '2a5c77e820698fee4c4458ed57011699', 'Like action'),
(779, '5c15c842c816eee96122c13876de0965', 'en', 'e4acf7d05a0753c85622d9d807075557', 'Total of like actions'),
(780, 'af8ab9fa13a5dcdae80f20a4cab5a719', 'en', '35369171083869f8fad673ef6d04416b', 'Comment action'),
(781, 'b9153b5201b72dfd8be29f569e84e2b2', 'en', 'c9e8696847cfa7828a2b7ee026bbe20f', 'Total of comment actions'),
(782, '45a6b753a70e064268cfda2e5dff3dff', 'en', 'bc4cc36ce44c757885960c26734ceda0', 'Watching story action'),
(783, '0d6b6039c311a7240d2fb223602d066f', 'en', 'b686ca655eaaf18bba8a856c14ae8ccc', 'Total of watching story actions'),
(784, 'e19464679b7a05dc76b5ba7ede54d24d', 'en', '6b31786414edd0eccc4fb947e51a9e3b', 'Follow action'),
(785, '52cfa2b1ab0d1ad79b34059071d42ad0', 'en', '183f64cd635793a7352b23990a09ebe7', 'Total of follow actions'),
(786, '7a999538ca65e954a2e0b8d9c72394be', 'en', 'baa05369180bdfac6cd5e4109e4b1d16', 'Unfollow action'),
(787, '76aad992382eecf872b04a39d28ea5ec', 'en', '23f111f91155b116c2d3e274e63ca6af', 'Total of unfollow actions'),
(788, '4fcdd094bd987473bec0925b3a5fc1c3', 'en', 'f942614dc8709d0e4de5abdbf874eb07', 'Direct message action'),
(789, '134b240280078ed995924d09ecb545a7', 'en', 'd74ed1421911977755987f876e0f0347', 'Total of direct message actions'),
(790, 'e237e3efcfc45909c34fb2e09cae98b3', 'en', '084eef73ca150e2ae2370fc5bdb22b38', 'Repost media action'),
(791, '010f455305b7aaa6a3db32db12616ce9', 'en', '836847ddb978ca0d0783b2bdc9a72c9a', 'Total of repost media actions'),
(792, 'bf5602deea3f54843b9b7807df286e59', 'en', '05b5e8a57ee5fd3f3922f0ec58710561', 'Time started'),
(793, 'fed4807f6449cd177ab973c108693ad4', 'en', 'bfb6d359ed6ef0bc7b14a15498645a1e', 'Start counting from the time you press the Start button'),
(794, '4763957036c76c6ed70319a4d01497e4', 'en', '46e5852730f58fca0abbdd289af6fb85', 'Followers gained'),
(795, '0cd2ec6a29ad396c10b3c295755c5a3c', 'en', '6f643f2b44c9c9490c217cf8ea567b9b', 'Total of followers gained'),
(796, '275ebb4161e11fd9dc885c7547e84411', 'en', 'c4536eba065ee51b5ad1b9c137195262', 'Watching story'),
(797, 'e6fba2b7739e6bd2dba485d8538ed056', 'en', '3903aab323863bd2e9b68218a7a65ebd', 'Follow'),
(798, '54d57007fea5e3ba7e3499570fe2f63a', 'en', '3596c1b1f7b1dfe805432d2d2a897f29', 'Unfollow'),
(799, '7b84f66773cffd567b2acb7063b091b2', 'en', 'bb63f28d09151cdc0f3a7bc789fd28a8', 'Direct message'),
(800, 'fc19a8a81c9363d8d8a7110e3f2bc38c', 'en', '3b2998c3765b50e62906559b8ccc197c', 'Tags blacklist'),
(801, '7eadb9e342748d25913ed58ed03d3199', 'en', '0450d266974d92724ff4bacc3a51952e', 'Delete all'),
(802, '6ee906c3cc4bf3059185ad8894aea0f8', 'en', '2ad5c0ee70d387a4949e104b40ea793d', 'Search tags'),
(803, '3bb2f3c9a58b85bfe3f94fb801847b64', 'en', 'e05ebd3bd3a792e4eaa5181f8234fb8b', 'Add list tags'),
(804, 'c11426addf151e161ad298ac6c0a2c71', 'en', '006999a09a02f1df703ca7b7dda0eddc', 'Username blacklist'),
(805, '92a45b8fb23c418d3df9ce7ba3be11ba', 'en', '41fa00338cd3ba1476e9fb3c6436fd8d', 'Keyword blacklist'),
(806, 'fd27aa5ca5564d155516448d14877d29', 'en', '8e14becaa093f0a9f79d7e8ead8ea144', 'Enter keywords'),
(807, '19427f6bced621b5a44a03984588cdee', 'en', '74651dc649f4704ec47f517b58c1cc29', 'Don\'t comment same users'),
(808, 'c70947e96d4f5ed52f027305ffd9e866', 'en', '48425d0e5dc2f4f4be9fc24c960e39f8', 'When checking this box you will not comment more than one photo or video of the same user.'),
(809, 'aa2c33966a1c1fd38fd152e3ea0ff638', 'en', '4e9ce95a0f4e750b14ad77bc86d62479', 'Enter your comment'),
(810, '541c6998b0360146bcaebebdac383033', 'en', 'd967d3aa061680dd91bd32ac5d6a2e0f', 'Add at least one comment if you are turned on Comments in your to do section.'),
(811, '583c423dae00eb63113d2f01ce1ee89c', 'en', '8413c683b4b27cc3f4dbd4c90329d8ba', 'Comments'),
(812, '5e3a9211aaaa2fdc65be2bc0532de208', 'en', 'ddbf46618042b31c8597b3ed0567d7b2', 'Direct messages by'),
(813, '2147990d51e6bd4d50a73eadd55a1d0e', 'en', '099b5787cd3df91eff27c9e159969162', 'Which users to direct message?<br/><br/><b>New followers</b> — select this option if you want to direct message only your new followers<br/><br/><b>Target</b> — select this option if you want to direct message by target settings'),
(814, '4a0872b64ec7b9fee7308651ebd5fb3d', 'en', '200c8937bcf1f0e9f03a73b6d502bd63', 'New followers'),
(815, '7ca2f49a41fa85c664a38139d67d67f5', 'en', '91fadc5613280f76b916f1fd236e43e9', 'Targets'),
(816, '193cd50ac949455a340fc4a429ace2d0', 'en', '68d390535e8a7120e3f6942d8a2214a0', 'Enter your message'),
(817, '4657c0ee58feda5e57c49251e28afd4b', 'en', '018670edd0ac6e96b4c9f3baec26fc3b', 'Add at least one messsage if you are turned on Direct messsages in your to do section.'),
(818, 'e812360349ba6b5e99e20aa892400bc4', 'en', '41de6d6cfb8953c021bbe4ba0701c8a1', 'Messages'),
(819, '4b0ff10d83019a19568e32ea616933e0', 'en', '8087852f028d09dbef6c5434d8537829', 'Media age'),
(820, '92aac056b05bed5381a13f1333490df0', 'en', '82b83b71d1b935e15f6eb9c99b8a5487', 'This setting will help you to choose an age of media you want to interact with. From the newest one to the oldest.'),
(821, 'af0e32d6ce2f9026d5e91dffa0b677d9', 'en', 'ed36a1ef76a59ee3f15180e0441188ad', 'Any'),
(822, 'e945b6bd3b19399261daa62076ee227f', 'en', 'ac71d8452c267207bcf9f1c93c6419e8', 'Newest'),
(823, '15f26d2ca846aa1a03cd43bd63d6c310', 'en', '21ff05570d361fe86c0060a77c3e509b', '1 Hour'),
(824, '2ce8bb2ed3f3ee71099a4862fa7c7f98', 'en', 'a32d6f77b4cd387776263c94eaaa52ff', '12 hours'),
(825, '53715a3006a707c8a0ba3c182443d5e2', 'en', 'e3b481d5297f475abc283227bedbd9b9', '1 day'),
(826, 'ce0163f4ee4316a0e2fd5cf2e35679b1', 'en', '45fe0d3293152fa29cf10ef8a3c1871d', '3 days'),
(827, 'b619c54be8afa91a79cb0938961791f7', 'en', '705fbbd6e1667845569c00fd7523d343', '1 week'),
(828, '58059f5fc9e42618164a32f6a5b683b2', 'en', 'a9adf02fea7b0107b5a712a45e51076a', '2 weeks'),
(829, 'b4716b73fac3d42a052b07a58f1a901f', 'en', '1634e66b522edaa910370cc5581a47f1', '1 month'),
(830, '373221d4f287d6336889267b18b9e3df', 'en', 'b66930cdc16b3f509ee90c59ed296047', 'Media type'),
(831, '9d2a3aa66532741175939e9bd9c52d79', 'en', 'be87ac9b62f4bf6a9e24108df8210b5b', 'This setting lets you interact only with specific media type: Photos or Videos. Also, you can choose Any to interact with any media type.'),
(832, '0a6652bdb784c3004c5b8cf0ac6b895c', 'en', '5daaf223b01f8f3e1bd9287170826fbc', 'Photos'),
(833, '0af496956159469b90fd9894bd04a625', 'en', 'd48c9498e39c6658b28638bb05d6ad35', 'Min. likes filter'),
(834, '219a50433d4f4b9d8a79d66e21125b01', 'en', '0fe4e89d44dcf41ad8ce65599983aef7', 'Interact only with media that have minimum selected amount of likes.<br/><br/>Use it along with <b>Max. likes filter</b> to set desired range of media popularity.<br/><br/>Recommended value: 0.<br/><br/>Set to zero to disable this filter.'),
(835, '26997d2ccf7b333bbb64838d6d01d24b', 'en', '7b1aab6ab0429db9d186f13f5b0febf0', 'Max. likes filter'),
(836, '7c3f4bc38f9740ed18052c9f6ac7fcdc', 'en', '29248d01bee16c8d4744c39ebc243f94', 'Interact only with media that have maximum selected amount of likes.<br/><br/>Use it along with <b>Min. likes filter</b> to set desired range of media popularity.<br/><br/>Recommended values: 50-100.<br/><br/>Set to zero to disable this filter.'),
(837, '69ba6591213888ffc382d788e2a042df', 'en', '39f98fee04e12735407be74c5963f5bb', 'Min. comments filter'),
(838, 'a88dbcf8c6be6de37955698228e5c98f', 'en', '8f1c5319f9cd6068bb159ce8478fb8b3', 'Interact only with media that have minimum selected amount of comments.<br/><br/>Use it along with <b>Max. comments filter</b> to set desired range of media popularity.<br/><br/>Recommended value: 0.<br/><br/>Set to zero to disable this filter.'),
(839, '251dd466a9d0d38d32bf35b433017c7e', 'en', '5c8f9aa053731a3896e5779ef71eb152', 'Max. comments filter'),
(840, '30efdec81a7e7ffd8db3c2fe5f0a10ca', 'en', '33719faabd38953e2787a41a2927f610', 'Interact only with media that have maximum selected amount of comments.<br/><br/>Use it along with <b>Min. comments filter</b> to set desired range of media popularity.<br/><br/>Recommended values: 20-50.<br/><br/>Set to zero to disable this filter.'),
(841, '640e5f09669292e2bd5fa5eebc655b65', 'en', '4ed444e9e4bf2f11a47b26852683727d', 'Min. followers filter'),
(842, '4e2ed2a252416b5b02cb193623ace434', 'en', 'b01eba7c0d2bded39efebe23bad26e30', 'Interact only with users that have minimum selected amount of followers.<br/><br/>Use it along with <b>Max. followers filter</b> to set desired range of users popularity.<br/><br/>Recommended values: 0-50.<br/><br/>Set to zero to disable this filter.'),
(843, 'aab859b758557db90f6fd1020d5689b4', 'en', '671790b40cdc52acac2c41e55f8ab304', 'Max. followers filter'),
(844, 'c70e51b3d2b7a2b2347a58a9d2d60529', 'en', 'c0e9e24c340f10780ca28944921b034f', 'Interact only with users that have maximum selected amount of followers.<br/><br/>Use it along with <b>Min. followers filter</b> to set desired range of users popularity.<br/><br/>Recommended values: 500-1000.<br/><br/>Set to zero to disable this filter.'),
(845, '59ad68a9413c368f5fe10f7749ef9e82', 'en', 'df06541afe26e63e7978c3bed9b3bae3', 'Min. followings filter'),
(846, '907f37c1c46c9ef58093bb5149d068e6', 'en', '8cf24a454898a0033da7348afe3a9ef2', 'Interact only with users that have minimum selected amount of followings.<br/><br/>Use it along with <b>Max. followings filter</b> to set desired range of users popularity.<br/><br/>Recommended values: 50-100.<br/><br/>Set to zero to disable this filter.'),
(847, 'd8db557be2e800c341e78b79d5d8de47', 'en', 'dbfc9f9af9aae4967e5702abd37f9421', 'Max. followings filter'),
(848, 'dfd132b65ca4c8210e8e8a4ca099d1a1', 'en', '89943dcf5f17678544d47ffa3ed38a0b', 'Interact only with users that have maximum selected amount of followings.<br/><br/>Use it along with <b>Min. followings filter</b> to set desired range of users popularity.<br/><br/>Recommended values: 300-500.<br/><br/>Set to zero to disable this filter.'),
(849, 'c0cc10cd234fe79a53794198f7a99779', 'en', '2d56695e408ba4e9b31a63a2e9ba5fac', 'User profile filter'),
(850, '9772ef7914ebb8ec562cab11d47dd532', 'en', '8f11f3d3ec1599f12e43eca23d7aba01', 'This filter will help you to avoid inappropriate and unwanted users and their media during your activity:<br/><br/><b>Off</b> — Filter is turned off.<br/><br/><b>Low</b> — Excludes users who have no avatar or have no posted media.<br/><br/><b>Medium</b> — Excludes users who have no avatar, have less than 10 posted media or have no name in the profile.<br/><br/><b>High</b> — Excludes users who have no avatar, have less than 30 posted media, have no name in the profile or have no bio.'),
(851, '71eee42915258937082edec59f099deb', 'en', 'd15305d7a4e34e02489c74a5ef542f36', 'Off'),
(852, 'ed9893015aa8576890aa77dd27fbf60a', 'en', '28d0edd045e05cf5af64e35ae0c4c6ef', 'Low'),
(853, '896b4ea7f8ba47ad9dd76876009e47d9', 'en', '87f8a6ab85c9ced3702b4ea641ad4bb5', 'Medium'),
(854, '236f0af3eabfbc9f6785554486ed7684', 'en', '655d20c1ca69519ca647684edbb2db35', 'High'),
(855, '330537257e2749d3156107652de9f49c', 'en', 'a27afbaa827f45020f1637fd9f8468fe', 'User relation filter'),
(856, 'f82f21b950755af6b8405e6f2300a933', 'en', 'b6aad80094f5e4e63f11e0907db69798', 'This filter will help you to exclude your own followers/followings from Like, Commenting and Following activity:<br/><br/><b>Off</b> — Filter is turned off.<br/><br/><b>Followers</b> — You will not interact with your followers and their media.<br/><br/><b>Followings</b> — You will not interact with your followings and their media.<br/><br/><b>Both</b> — You will not interact with your followers and followings and their media.'),
(857, '6782404de0087c7b7f8b8183cf420de9', 'en', 'cbbcd8c0a16c7134149f9c1eae558227', 'Followings'),
(858, 'c32107617132afc34c02f3fefce44d69', 'en', '130c5b3473c57faa76e2a1c54e26f88e', 'Both'),
(859, 'df65b06fac0f901687561c5ed8380e74', 'en', '2fc156beffcff3ead6b57dda21ff030e', 'Don\'t follow private users'),
(860, 'cb42182e809ccb678b93d603ae7cf2ac', 'en', 'f58a46a594f9861dbe407e248d1cccaf', 'Don\'t follow same users'),
(861, '579058695cef409fa524700da7d886c5', 'en', '196fe4e3a79834f71130f0521484361c', 'When checking this box you will not follow the same users twice after you unfollow them.'),
(862, 'd46b1bd6305dd62581d6f6ebbedc72b9', 'en', 'fbac86a7d04775e551e82687d5894fe1', 'When checking this box you will not follow private users.'),
(863, '71e925b4c5b8b34100986ef60a920722', 'en', 'a1bdf03330a2f37677acdb9d097a3530', 'Enter location name'),
(864, '1d936eee07284d6669358ce642204f88', 'en', 'eebd338ddbd547e41e4a1296de82963a', 'Locations'),
(865, 'af2285acb2a241a6169f5aca640459b7', 'en', '452a7601dbc6f2c38aa89e68bda8b603', 'Stats'),
(866, '2a4016ad4da917d6f3580e01f45a2a75', 'en', 'ce0be71e33226e4c1db2bcea5959f16b', 'Log'),
(867, '2139afae0ac7e92f03f7df7640bbedee', 'en', 'f7ceab16b033278c6652818cd0553fc1', 'Recent activity'),
(868, 'fe334725003f743f986d58a1c78ae297', 'en', '5e4fe1e1a7154a9ed9bb00adcfd1ede1', 'Repost by'),
(869, '23998c86c98e084ee5ccbde44fbe9a6a', 'en', '189f63f277cd73395561651753563065', 'Tags'),
(870, 'ace49d50e058b562b33c686db7d9070e', 'en', '5365e5ca486b5bd5c1f3cfde52c10a19', 'Usernames'),
(871, '35a084bc9c25a3ed83678e9df5a44524', 'en', 'a6f167a4f330ba6955a2e32714b775a8', 'Leave empty to repost without a caption.'),
(872, '4d8fee3e50655d6199305eb73262e72f', 'en', '90accf4a1257228ef2121ee723d2ac85', 'You can use following variables in the caption:<br><strong>{{caption}}</strong> Original caption<br><strong>{{username}}</strong> Media owner\'s username<br><strong>{{full_name}}</strong> Media owner\'s full name. If user\'s full name is not set, username will be used.'),
(873, '33365d2b8d75ba8f0487e6bccb18e3ff', 'en', '38f9aeae39d68877b0fa85fd85d1f506', 'The schedule allows you to set up a unique schedule by time and day for your system activity to run You can manually select individual hours when your activity should be active or you can use next presets'),
(874, '12fa53a15b0e8dbd46c8d2f7bfc257c6', 'en', '9355012c662523f875599eb7fd2ac576', 'Daytime'),
(875, 'a68ee2e5dc2191ce3e94f648923534ed', 'en', '0b18b8ad701fa5711d6b1b85f032e06d', 'Nighttime'),
(876, '3e5935a9670368c6b1ac2276a61c3c4b', 'en', '37b6bd7fe61d651735cec3d3b0356c66', 'Odd'),
(877, '59bdc6acf25d1426c0f664c002b7d23f', 'en', '35537fbc25d87ffe59e4f35fefcd34b7', 'Even'),
(878, '8c982be68f1326518acf73180fc94459', 'en', 'e05189efcae04d393d4b9135c647e683', 'Alternate 1'),
(879, 'eb2ddad2439ee92865a6a933b0ba77bc', 'en', '5ccd655c067e2e9702a57ba7e853e7dc', 'Alternate 2'),
(880, '2d3016aaf4b3176295b63954ede679d1', 'en', 'efadf8f45ec82a67750ede4171df31e2', 'Activity started'),
(881, 'ccadbc585ab1b4c6a26406f27d26ea8a', 'en', 'cfb64b0fe2faa5d5f226976d0ad8f76f', 'Activity paused'),
(882, '58eb095e5144a52a8065c8b0256bf4bb', 'en', '487f0f4c1bced82394f47af70024c029', 'Activity speed'),
(883, '3b8b269a1788a6cc8d3b22b28ac4cb39', 'en', '79c6997e488f6e1e8aab1f18359b8169', '<b>Slow</b> — safe speed to do about<br/><br/><b>Normal</b> — smart speed to do about<br/><br/><b>Fast</b> — supreme speed to do about<br/><br/>Try to use <b>Slow</b> speed for the beginning and then change it to <b>Normal</b> or <b>Fast</b> after several days.'),
(884, 'ccbd4d287b7f0384810cb75011795222', 'en', 'efa5397985b8609a5dbeb430a4bcadd3', 'Slow'),
(885, '34aa2b2370d2229e9c309c4ad598d53a', 'en', '960b44c579bc2f6818d2daaf9e4c16f0', 'Normal'),
(886, '38deb73e5ad6dfc63e20ea9f8aa31bc5', 'en', 'e16b5b7f26f54214445cbe38d72c2828', 'Fast'),
(887, '1da464bcd3ac6969589e6f24e7e5ca58', 'en', '90589c47f06eb971d548591f23c285af', 'Custom'),
(888, '07458ccc8b23e91f743f2162d819b121', 'en', '796c83e8e9e6e3dcbf1f7f720d74431d', 'Likes/hour');
INSERT INTO `sp_language` (`id`, `ids`, `code`, `slug`, `text`) VALUES
(889, '0f6cb94130f5b35612849fffecc0f0ff', 'en', '279bea4c2a2ce623214de8ebf402a1fa', 'Number of like actions that your activity will try to post in an hour.<br/><br/>Allowed values: <b>1</b>-<b>60</b><br/><br/><span class=\'text-danger\'>Use with caution!</span>'),
(890, '4255980ce04a8da3192d6183d2af5136', 'en', 'aafe95f0b95767674f2612728fe10859', 'Comments/hour'),
(891, 'd8306237d38e13650a9ce4a919d89367', 'en', 'f55b9ea43c4f808ee3f185a91b523c98', 'Number of comment actions that your activity will try to post in an hour.<br/><br/>Allowed values: <b>1</b>-<b>20</b><br/><br/><span class=\'text-danger\'>Use with caution!</span>'),
(892, '7e39b3695c369897ee5547cad66d1e86', 'en', '344d316be6c4d2a1f0882353d8c7c031', 'Watching stories/hour'),
(893, '27a8abbc7d53b9e63106657f4b251484', 'en', '6e95da63ca15a2aa0ebb412722743fd7', 'Number of watching story actions that your activity will try to post in an hour.<br/><br/>Allowed values: <b>1</b>-<b>60</b><br/><br/><span class=\'text-danger\'>Use with caution!</span>'),
(894, '4224acad8b2856536d63f5540e9e1afb', 'en', '19aef75db484ba6ba77e4b1eefd12998', 'Follows/hour'),
(895, '450985c642bc2b43f1cad5ae3f85e55d', 'en', '69f9b79e3a4883a5d7907e6955c00b04', 'Number of Follow actions that your activity will try to post in an hour.<br/><br/>Allowed values: <b>1</b>-<b>40</b><br/><br/><span class=\'text-danger\'>Use with caution!</span>'),
(896, 'b1960681a6483f1281c62ebcc9499c8c', 'en', 'e4e449e2de371305ad40ec174cbba778', 'Unfollows/hour'),
(897, '37dac575c479aff5d2f297cdc9a1d8ac', 'en', '8da56588bc6626970b58f42de9136d4c', 'Number of Unfollow actions that your activity will try to post in an hour.<br/><br/>Allowed values: <b>1</b>-<b>40</b><br/><br/><span class=\'text-danger\'>Use with caution!</span>'),
(898, '09b6981d5cd8033f41ad8040bbbe23bb', 'en', '84f67628c88cea26efe7a921d347c55b', 'Direct messages/hour'),
(899, 'c905f2b9247a9b9e9cde4424d7b00627', 'en', '183f2f57781681208f0f2a8fc396ebbc', 'Number of Direct messages actions that your activity will try to post in an hour.<br/><br/>Allowed values: <b>1</b>-<b>20</b><br/><br/><span class=\'text-danger\'>Use with caution!</span>'),
(900, '86a7b87114eff997914919bbd7e8a43b', 'en', 'd7e9abbffe93b312174acb97a69f292f', 'Repost medias/day'),
(901, 'fedab0ac8535d69cd4f084f37d6cd69b', 'en', '17da44ac25eb7a4583120d92c6896859', 'Number of Repost medias actions that your activity will try to post in a day.<br/><br/> Allowed values: <b>1</b>-<b>60</b><br/><br/><span class=\'text-danger\'>Use with caution!</span>'),
(902, '80c8e53e1977d4d340063b612053abcc', 'en', 'b70006f36867a9fed002474680333d18', 'Likes counter'),
(903, '18a8032229573b0df9514dad8c3863fa', 'en', '4ddf99749e4da674e18eb57d9711832e', 'When this number of likes will be done your activity will be stopped automatically. Set to zero to disable the limit.'),
(904, '79ddedc65ca8f260862f5d3f5aec438f', 'en', '1b20e7bd7ea779d699242cb5b88b1986', 'Comments counter'),
(905, 'd6b91b46183cf85af69a934a66c32bb4', 'en', 'faa08fc8ee7a585417897ee5266e269f', 'When this number of comments will be done your activity will be stopped automatically. Set to zero to disable the limit.'),
(906, '4c81e07033f3f3775d5e34bf398db498', 'en', 'a6b234fbe237308ca89a50947570f564', 'Watching stories counter'),
(907, '6c069b8bc8ad58791b81e4873eb59c7b', 'en', '558372ceb623158ce3bc215a75f82d90', 'When this number of watching stories will be done your activity will be stopped automatically. Set to zero to disable the limit.'),
(908, 'f0abd454fb71ee5b0c74efe27dc56bde', 'en', '18c5a3552c758ceecdb31788d524956f', 'Follows counter'),
(909, '38cee068e1faff8fd8808bd1eada4a59', 'en', '2ad9a88b5d43fc8290854de7582d98da', 'When this number of follows will be done your activity will be stopped automatically. Set to zero to disable the limit.'),
(910, '414470678e2e55fbca5065da0bf3279a', 'en', 'c77f67e23ce79c1149f57d60ed52e37f', 'Unfollows counter'),
(911, '40495e2bb3b3e6acb70df0438baffe71', 'en', 'a52805d5246f0fcde818d5b43cb03c06', 'When this number of unfollows will be done your activity will be stopped automatically. Set to zero to disable the limit.'),
(912, '23fba2addff08d12f10022fa8cdbd313', 'en', '4a14c6345423e9986145ac773c723fa9', 'Direct messages counter'),
(913, '87f73d4aca003aa3769558cfcd4de84e', 'en', '4bf2315c86f66e5b218a53723497f7d7', 'When this number of Direct messages will be done your activity will be stopped automatically. Set to zero to disable the limit.'),
(914, '9c8d62a0a5aa1fc90921647c961f93ec', 'en', '56642d2b017bf53ef58f8ed7c5d3a06f', 'Repost medias counter'),
(915, '1714d6ba8c01bf20f3309133f3bdfd54', 'en', '1bced2589bb35ed34c38862351091c21', 'When this number of Repost media will be done your activity will be stopped automatically. Set to zero to disable the limit.'),
(916, 'e0efa52d82fc2ae603ab1f0afbfedee6', 'en', 'efb4777327e6f704fb1519c1882f93ec', 'Timer'),
(917, 'c4246f455e0e57e301ea5419286dcd92', 'en', 'c686dffe09b13701a4cc47577d2bec89', 'Format: HH:MM. For example, if you set it to <b>01:00</b>, then your activity will stop automatically after one hour. If you leave it empty, then activity will work infinite or while Instagram limits for your account not will be reached.'),
(918, 'e073ff67dbc7f554973e652c7e3ee295', 'en', '9ee78e45caf20b7420dfc246fcbf8bd5', 'Stop if no activity'),
(919, '44fb8240b8e323af71bc6cef081e7934', 'en', 'bd3ac5557016d59e56d7e4e19208ef89', 'Automatically stops after a while without any activity.'),
(920, '60e85dd5c43121f6bd356a8ab9d63453', 'en', '6e7b34fa59e1bd229b207892956dc41c', 'Never'),
(921, '507014250cd9d6dc96cbf0a5aa8afcf9', 'en', '72ab9d0304d3e84c6aa2dd15eda282f2', '1 hour'),
(922, '8a73b6713da6d0189117e73b9782988f', 'en', '6e9461ab087b8bcd886e3061ee588e83', '3 hours'),
(923, '91e6d63259a8d51b7923b10e030d54d1', 'en', 'f83f5f7ce557b10712eb03a544f30898', 'Based on selected Activity Actions, you can like and/or comment on media posted under <b>Tags</b> added in your settings, and/or follow users who posted those media.<br/><br/> <span class=\'text-info\'>INFO:</span> This targeting source works independently of all other targeting sources that you can select.<br/><br/> <span class=\'text-warning\'>IMPORTANT:</span> To use this source you should add at least 1 tags in the <b>Tags</b> list.'),
(924, '841d2889d8792a70019fa2d6519c2102', 'en', 'b0ac8d80b81d5b7502dd764beb3efc16', 'Based on selected Activity Actions, you can like and/or comment on media posted under <b>Locations</b> added in your settings, and/or follow users who posted those media.<br/><br/> <span class=\'text-info\'>INFO:</span> This targeting source works independently of all other targeting sources that you can select.<br/><br/> <span class=\'text-warning\'>IMPORTANT:</span> To use this source you should add at least 1 locations in the <b>Locations</b> list.'),
(925, 'a5c8bca552678e1c6bd2cf85d2065575', 'en', '49084dc4dfc5b065676e8aa3281df751', 'Based on selected Activity Actions, you can follow users who follow <b>Usernames</b> added in your settings (Followers of Usernames), and/or like or comment on 1-3 most recent media posted by those users.<br/> You can also target your own Followers (users who follow your account) by selecting <b>My Account</b> or <b>All</b>.<br/><br/> <span class=\'text-info\'>INFO:</span> This targeting source works independently of all other targeting sources that you can select.<br/><br/> <span class=\'text-warning\'>IMPORTANT:</span> To use this source you may need to add at least 2 usernames in the <b>Usernames</b> list.'),
(926, '9230b05084aa76ef1e17c5f1ea6e0897', 'en', 'd95cf4ab2cbf1dfb63f066b50558b07d', 'My account'),
(927, 'ef2214547069930ce6d0257eb9e52721', 'en', '6b3407b1e3505b0fd4a3ff8a69fca721', 'Based on selected Activity Actions, you can follow users followed by <b>Usernames</b> added in your settings (Followings of Usernames), and/or like or comment on 1-3 most recent media posted by those users.<br/> You can also target your own Followings (users you follow) by selecting <b>My Feed</b> or <b>All</b>.<br/><br/> <span class=\'text-info\'>INFO:</span> This targeting source works independently of all other targeting sources that you can select.<br/><br/> <span class=\'text-warning\'>IMPORTANT:</span> To use this source you may need to add at least 2 usernames in the <b>Usernames</b> list.'),
(928, 'cedd62be371f3d9a21028bfc2f860156', 'en', 'a15c14cd928010b78617aee34e2b61dc', 'My Feed'),
(929, '2fa6288fbd9032f843408d2ff9eeef99', 'en', 'e7e6622937c872b6b3f2b771a1014d6a', 'Likers'),
(930, '99760e1648eb69d0668c50c7a0602958', 'en', '848a3a4e195fd1997df53f7fa55f203d', 'Usernames posts'),
(931, '8d8791719dfdddf5e0d293f07fc27373', 'en', 'c98958905497d6e62d6ef8bc6bbeabe3', 'Commenters'),
(932, '1320bd399b5af66921af59068cc0584e', 'en', 'cf956c61e39d4447dfae0714ecc1af92', 'Based on selected Activity Actions, you can follow users who have commented on the media posted by <b>Usernames</b> added in your settings, and/or like or comment on 1-3 most recent media posted by those users.<br/> You can also target your own Commenters (users who have commented on your media) by selecting <b>My posts</b> or <b>All</b>.<br/><br/> <span class=\'text-info\'>INFO:</span> This targeting source works independently of all other targeting sources that you can select.<br/><br/> <span class=\'text-warning\'>IMPORTANT:</span> To use this source you may need to add at least 2 usernames in the <b>Usernames</b> list.'),
(933, '1d12bd24c9b6f40114d1fc4d92a523b2', 'en', '1cc1d5c2e9ef18d814ec2102f25c759b', 'Select what you want to do'),
(934, '189d0a5e479ffa8554ae1a89b816c743', 'en', 'ab4f6166849ce286db6ebaf17514ce3c', 'Turn this switch on to automate your likes activity.<br/><br/> The counter shows how many photos and videos you\'ve liked since your last activity start.'),
(935, '82ad5836b6dd45bdaa5045bfa9257249', 'en', '0461f0c9d3e77533e7145fb74bb8c670', 'Turn this switch on to automate your comments activity.<br/><br/> The counter shows how many photos and videos you\'ve commented since your last activity start.'),
(936, '3fb34baa463890c5631a974d61f1543c', 'en', 'c6996960a60821b9748062d0e8c48ffd', 'Turn this switch on to automate your watching story activity.'),
(937, 'd077a12c8067a2383d57478ff333e0d2', 'en', 'de06e9770b431e05325e781da889f865', 'Turn this switch on to automate your follows activity.<br/><br/> The counter shows how many users you\'ve followed since your last activity start.'),
(938, '27da023ca701f188df34e6642261a02e', 'en', '7d693bf9e58943aabbbaeafc1201a01b', 'Turn this switch on to automate your unfollows activity.<br/><br/> The counter shows how many users you\'ve unfollowed since your last activity start.'),
(939, '7726b97bcb2124a5460875b1c51787c9', 'en', '08e12a47c67500a7bbb1cbafdfba9b2e', 'Turn this switch on to automate your direct messages activity.<br/><br/> The counter shows how many users you\'ve sent direct message since your last activity start.'),
(940, '4fcf5ecb2ec35db75ce5aa49bf14f8c4', 'en', '6236091f4e8e657aad7f57f31235a6d3', 'Turn this switch on to automate your repost medias activity.<br/><br/> The counter shows how many medias you\'ve posted since your last activity start.'),
(941, '71ab2a9791efac0c76c05c0d4247f591', 'en', 'ef4fc0d7dfbf6c08a5801b475fb3d97f', 'Unfollow source'),
(942, '384698baefcb636227078cb9338e9062', 'en', 'c570fa72e856e7d2efa4d6fd3e1c991e', 'Unfollow user after (day)'),
(943, '05dfeb3b959308424c6d1dce69977f01', 'en', '085b30f3cb07a9b99f63790e58140c49', 'Don\'t unfollow my followers'),
(944, '77f55938a14547bd3a489b5a1001e9fd', 'en', '4975839e87843d3277cf36b14bb26756', 'Which users to unfollow?<br/><br/><b>Our source</b> — select this option if you want to unfollow only users that were followed by our service.<br/>This option should be used in most cases, especially if you use Follow and Unfollow actions at the same time.<br/><br/><b>All</b> — select this option if you want to unfollow all users that you follow.'),
(945, 'd6d04d264f30dfea7d3a2f9bd1c0f456', 'en', '0ffc10a2be2ec21a781e393ed9adcd3f', 'Our source'),
(946, '4c55302560fe4cece7d4e13693c87c83', 'en', 'dbeb4495bcc6c50b8c2d7e6229bd74e7', 'System will start unfollow users after 3/5/7 days after follow action.<br/><br/><span class=\'text-info\'>NOTE:</span> Just support for unfollow by our source'),
(947, '92043cd848a2020930d0a62d979b09db', 'en', 'a1ece9b329031f775f64bcb33efaa77e', 'When checking this box you will not unfollow users who follow you back.<br><br><span class=\'warning\'>WARNING:</span> If you use this setting, please expect that your Unfollow activity may be stuck at zero for a while. Our service may take some time to find the users who don\'t follow you back, and it depends on the number of the users you follow and selected unfollow source.'),
(948, '0b1a0bfd98f204070a8450289f11d2b2', 'en', 'b51d42234aca8f8b5c17aa34294b1767', 'Re-login'),
(949, '8901e0a0a8d96b93975f3c9d743d12ca', 'en', 'ea69ec28bcb1952b096267cc88060102', 'Likes'),
(950, 'cde91be0199a33d5ad29b236463f7ed8', 'en', '92e705068d7260a32e2c13c1f556b866', 'Watching stories'),
(951, '9798fe59f873b63e92cc77e52866a944', 'en', '62ca334609cd0152b2bbece090e74622', 'Follows'),
(952, '66bfe36ac933c9bde99776afde6a90af', 'en', '773336cc828aa169f15e6ee8e6d1aad2', 'Unfollows'),
(953, 'dea8e810e2a4ca104057070d90d631b2', 'en', '001fea4835020feb938d3287bf7d74bb', 'Direct messages'),
(954, 'fb66247b62744f7110e6a626308055bd', 'en', '43473f115c573d06cdd822eb545c6057', 'Repost medias'),
(955, 'fc4268c7e10d3284b8ad690d11c8c820', 'en', 'd3da97e2d9aee5c8fbe03156ad051c99', 'More'),
(956, '7dc908d7c65393ee72ccd514316a92e9', 'en', '917d465e9a9e8b16a8da50a1ca8156ca', 'Show:'),
(957, '5fd4488fd9b77a42dc541c61c4db118e', 'en', '700f620b4a705a7b364389ef84fdd1ca', 'Started on'),
(958, '0d6e8ae47e2e791782fdd5416d6ed4ea', 'en', 'cfab1ba8c67c7c838db98d666f02a132', '--'),
(959, '85f6110747d84bff9d5bba668ddaf07f', 'en', 'a6122a65eaa676f700ae68d393054a37', 'Start'),
(960, 'a29b58d671d9162837a573e9b4ac135a', 'en', '11a755d598c0c417f9a36758c3da7481', 'Stop'),
(961, '59da0a5ac955d01ad6284c596b9e11bc', 'en', '44877c6aa8e93fa5a91c9361211464fb', 'Speed'),
(962, '2a0dd3b0135ebbb586e783deaefb32e8', 'en', '78781cc1291aa54a9008720982b04563', 'Targeting'),
(963, '53f74df1a135b8dacd5d62d144f062ca', 'en', '85fffe8f5074d606fa202fa5ae90d8bb', 'Blacklist'),
(964, '88c8e25bde7f73bc25de0db4ea6401d8', 'en', 'd25cb4dba07d82855ba5b9fa299a813f', 'Auto stop'),
(965, '04b5f504657a912397b6c12356229dfd', 'en', '63c941e3c2c36d1610e26e9c5ee23995', 'Save log within (day):'),
(966, '12301ab575bf3645fb05574598be9300', 'en', 'a686fa7c381f046150872f40d37b6ea9', 'Set 0 to unlimited'),
(967, 'f1eabaecf6123d8b1d790094d9835f08', 'en', '5aec84ebfecb162ccfea0a90fb00dcc9', 'Default to do'),
(968, 'd621fe15202a3cf49f960d424a6d1edf', 'en', 'b9fa8d034ac4e37eaf215fe66737b851', 'Default target'),
(969, '61fa3a57cc663e66650fd76768398343', 'en', '45dfe01d8989f212ec29a67d4760063f', 'Default speed'),
(970, '04f54d1d2d5b023a28dbbb469f1a7aad', 'en', '43182b83d5e85455c1d455b603fb8a8c', 'Slow speed'),
(971, '9ba7e1956abdda3f3b07831ea0df1636', 'en', 'eb62925119c990ea7cd8e2d473f07f58', 'Normal speed'),
(972, '57cacc6cc5d1d9ffd589d3d3d90c96fc', 'en', '958019c604682295f7fb344b812e9031', 'Fast speed'),
(973, '52b1f9dd4b82d829d07ff13de1d62e64', 'en', '5f9f384d754bebebc289495515f6c04f', 'Default repost media caption'),
(974, '837d2c8cf98e8aa0e8b33953b5f76089', 'en', '1079955b2ffa36311da084f99c7b6e32', 'You can use following variables in the caption:'),
(975, 'df3df4c65465b32de628d50a715f0a06', 'en', '4b04963dac6b7effe431f5d9928cab97', '{{caption}} Original caption'),
(976, '3d8995086520907bf23e3b8599800b56', 'en', 'fc65758404d26ecb6108cdedb3fada58', '{{username}} Media owner\'s username'),
(977, '61a75ec648c624b9079cdc08f80d9f63', 'en', '603371c0dbef41a9b90b2c105af02d8c', '{{full_name}} Media owner\'s full name. If user\'s full name is not set, username will be used.'),
(978, 'e130bc2473e0233cd16ecbb9ab40e951', 'en', 'ff604f5c4416977b65e9d731622d48a1', 'Default comments'),
(979, 'aa3254d4c85367154c7a08c2bcfce525', 'en', '256da2c80a70a839fe0f867e86dd1edc', 'Default direct messages'),
(980, '7dd60a47d25af430b001aef7fd790629', 'en', '348f3956833141934d6cb334033ed4fb', 'Add multiple comments at the same time by using new line as delimiter. You also can use spintax spinning format in your comments'),
(981, '41ba30f1aacaa5e8683a66e70c4027cb', 'en', '7f3e097182c8a0508836d0749867babe', 'You can use following variables in the messages:'),
(982, 'a1b7265146267c8f6f2038d3cd2a1aa3', 'en', '237bdbee6521f975d7fd2727ac6d2a46', 'Default tags'),
(983, '2a14d81f913bd2f25097406d1512fe0d', 'en', '2aacc485ebbe92f89c8d307bf7f7c60b', 'Default tags blacklist'),
(984, '24e2103e95ddee5a04b38ed2d38e903b', 'en', '67eccbc3f17a1f0530654563a8bf7498', 'Default keywords blacklist'),
(985, '0759213c84d3deffc14310743b38cd49', 'en', '3c8804f76c811b866799bf7395ba0d5e', '%s must be greater than or equal to %d'),
(986, '676e619b9ee1594be6c1e54dd35da56d', 'en', 'd752d55564884bc7d2553fcb4349545e', '%s must be less than or equal to %d'),
(987, 'f7882aa2504196b3d93e0ca250381e48', 'en', 'fbb97a70df6d31b261522b4e4efd8931', '%s must be greater than or equal to %d characters'),
(988, '64494f8cddefe6796f496f0998192aaf', 'en', '174931d77057c088429293427fa55100', '%s must be less than or equal to %d characters'),
(989, '0c26cb3cc6829c2e713af10ae5453d80', 'en', '6be8d0d88059ff45ce8cb4cccdcc87d8', 'Email is not a valid email address'),
(990, '6ce6b95a05754554775deaa7d2a23d13', 'en', '7f95cd29f2c891b41cb8e897d9e12abb', 'The url is not valid'),
(991, '76864e765621f0ed86c2f4a26b34808e', 'en', '08fd023c3bb47edd3b4f479417033c66', '%s must be an string'),
(992, '30f067f477419f3e22d269a936e6044a', 'en', '53f50d262844a53a16311cd390e5592a', '%s must be an array'),
(993, '9b20d12defd40fa4e9baa69dd599ab84', 'en', 'c18874bf61b61cd1df0e05ce4de604ac', '%s must be an object'),
(994, '3d36ad9fe2d1ac611e5d41dc1389820f', 'en', '031c9ec0462b55c807d234e381c6d445', '%s must not be an string'),
(995, 'cfd5cbe72beece7d5bcbf615f81abe3d', 'en', 'b9303283aed54d71577caef6a6a23db4', '%s must not be an array'),
(996, '1465ffcfff4d9b5372c4dce0080555d6', 'en', 'eb7c06de8f198b7297b76a9d563fa9ae', '%s must not be an object'),
(997, '9179d3d675fdf0c7c325abe3d4e38ea4', 'en', 'a75e7fda54ac0884c2979fbfac5e23a5', '%s is required'),
(2663, '4ade9e1e00a1422a1bcf0f1692daca17', 'en', '30013d260a9083c427a5c67ccaeeaedd', 'Instagram Livestream'),
(2664, 'ccf9c9d8ee2ee46f616dc089576bb9e2', 'en', '9dd17948d276d5d6bd91ca20d52a79e9', 'Livestream'),
(2665, '9d26b552f82a0a986764234d9cb62d39', 'en', '3ff26e53fe489fd8a5d292c58ac232ff', 'Select video'),
(2666, 'a658e5b52750ac32f1fac68a058f1507', 'en', '89074fb5992bdad282cf0d0a6baa53b4', 'Please install FFMPEG and FFPROBE on your server'),
(2667, '12705cd344f213060d6efc769188c2f2', 'en', 'f461d4945007dadf52eca2a9e6d1e2e3', 'Pin comment on your live stream'),
(2668, 'dc568c3412d0ca84fc7f014436502dd3', 'en', 'b9be39d7edb282e6a133230dd69b57c2', 'Loop video (times)'),
(2673, 'f45b151c96d8b67e76a368734d091ba0', 'en', '106a6c241b8797f52e1e77317b96a201', 'Home'),
(2674, 'c5b5186ed2047de0186fc3257776e38c', 'en', '6a00ee984bbf50ad40002b8e5051d516', 'Copyright © 2018. All rights reserved.'),
(2675, '1d55cf9738f4a3826943353f9d06576a', 'en', '532ff634fe288b15478aad287733597d', 'Privacy Policy'),
(2676, '3a893e10686a7ca4a58c3ac1a88f8595', 'en', 'b0313631c7ee67ad897c43ddb787dd12', 'Terms of Services'),
(2677, '212c4b61f0eab2a868c78091a96fa913', 'en', 'f85b467304a3b416001b131ad35517f6', 'Our package'),
(2678, 'e90be92603846eb38ac401e778435823', 'en', 'd56b699830e77ba53855679cb1d252da', 'Login'),
(2679, 'f411bdce0d5b1532cc2d51687fbe9334', 'en', 'b9e28e42fc461436c8068ce96e6b9fc6', 'Sing up'),
(2680, '686ce6972acc3e40368d9d0acef033fa', 'en', '59aab28b54594c59dab8d19afd9478e4', 'Pricing'),
(2681, '1e495498edf7213a1fd8275afdcd7f83', 'en', '27f412fe522e0e432b1b13d2ca8be864', '#1 Marketing Platform for Social Network'),
(2682, '4a30211879de14ff55b11d8a40098f6b', 'en', 'af41a0f5e970f1fe1cd0813a201b2e3f', 'With our service will help you save time and optimize profile management on social networks. Visually Plan, Schedule post and automation on social networks.'),
(2683, 'bd41472bfa46d9ddd84244e46791d801', 'en', 'ceabfce1fcf289fcad582eeb4deefb33', 'All In One For You'),
(2684, '40789cc4a99628e752c6e3a2fd1e8501', 'en', '1198d4fa84ef4a4e4628f6ac951065a0', 'Here are some outstanding features on our service. However, there are many interesting features not yet listed here'),
(2685, '2134ebed5ded91e9c08face5cb51f627', 'en', 'bb11fb966cef98de0d99eb2df1c4f1d9', 'No downloads'),
(2686, 'e23f8b6977c7766ed85e96245b15d908', 'en', '4669da8f832d77b889841724bcf71286', 'You can use our service straight from the web on all browsers. You don\'t need to download or install anything to enjoy our service.'),
(2687, 'e290b7719136dcf304770f1f556e1514', 'en', 'e9dad8d278810a00bc0628839e1b8c86', 'Saving time'),
(2688, '4fe18c491e142114d55a6c88c69f020f', 'en', 'f8d8c134dd31a7b458ca52efb5bcfd33', 'Dedicating just 10-20 minutes a day on your social media strategy can dramatically improve your customer relations and interactions.'),
(2689, '7fec7864f36ae663a91639bedfa24ca7', 'en', '0f332aa0e36837738fd508a57afb3b6d', 'Watermark support'),
(2690, '1299aec5677793c25842772cde047f8e', 'en', '1f5277203e0128e970a40bfb08e8bd61', 'Image Editor support'),
(2691, 'd3b65935eb9983bdb38e6a4aed02400b', 'en', '1bf712896e6077fa0b708e911d8ee0b3', 'Yearly'),
(2692, '3089f5fed983ecfd74700e55aa8dbe9c', 'en', '9f034b63948763d489f944319c2eb3de', 'Features'),
(2693, '7c47457e1ee7bf2453de1e4000ddc1d7', 'en', '561b2e1da9ed5112bc0a14dcb4a472d8', 'Per active user/monthly'),
(2694, 'ea0714585e124ab1aa2ef82e027d1dbf', 'en', '98930b2c8fd81e4013ae801c2de70c62', 'Set schedule your posts'),
(2695, 'c571725b395e216d542af0ae93bd5e58', 'en', '92e4089a38792e4a0213da01d13a46bd', 'Analytics performance of your posts'),
(2696, '7b8772b8cd9c5cb6127e8064b3b4eeb5', 'en', '493e6cb29266be8493a23f671bc3c7e4', 'Influencer Marketing'),
(2697, '74c89a99c9d44f1a3cfec447e55ff970', 'en', '44d903f74b8e09600d0ce3ed0a014d45', 'Safe and Secure'),
(2698, '2c6652fba239cccfffcb8e2e63b47192', 'en', 'f1a81674c75e1da6af61705994d83a7a', 'Ready To Try?'),
(2699, 'd2d4cef8c404b3c71d29f43972fde986', 'en', '816cfd190ad1b2ee7d49873505bd72c4', 'Enter your email'),
(2700, '3080159d9a9b2558907367a3c74b2d76', 'en', '404401b0a2adfa43637279ebec7a72a2', 'Get Start Now'),
(2701, 'a10a07db4c3fb7f077a238b38f011cd9', 'en', '72e356e1aab206c36d597970d8648a4a', 'Start Now'),
(2702, '0147d3aa0f024b3dce9b973add6e50a6', 'en', 'de1b057670fee35e4a4b92d6f11e757a', 'Because we always see new design as a source of new possibilities, we focus on creating a unique image that corresponds with the company\'s very own character. We build consciously.'),
(2703, 'e3d556ecc4d6253984cca8dfecb33301', 'en', '2dc4512df3e197a90a60db76e1f834ca', 'Select your date, time or whenever you want to publish on each your social accounts.'),
(2704, 'b3cf37d450ceb7957bc5b96f8781405f', 'en', 'a6da26e5efdfacfd35ae509011ab71e0', 'You can see all your posts how it work and increase does. It will help you control your audiences and target.'),
(2705, '1fb5565d61eb8ad41d8f1c01e8f342ac', 'en', '24a792191072395ef033b2015ce55a6d', 'Focus on your top influencers & supporters so you don\'t miss their engagements follow them.'),
(2706, '8e432a2c20316104f45eb9c5e4323dc6', 'en', '0e64410705692e4337e8352d1cdaa3b5', 'Your data is safe with us. We\'re not one of those companies that gives your personal information away.'),
(2707, 'c46b41bd4e721b70fdc992aac840acbd', 'en', 'e3ca108c02bf07193de99842695abfd9', 'Save %s on annually'),
(2708, '50ef8e103de0f800aef5a68caefe1f7b', 'en', '949cf49a61d1977227a1933f4029dbb1', 'Organize All Your Photos and Videos'),
(2709, '851e9c38ddc9fdda13cc880ac5ccd794', 'en', '89d37b974468f43e10867b2058270445', 'Keep all of your media in one place and accessible on any device. Sync photos and videos from your phone, desktop, Google Drive, or Dropbox. More than that, the image editor can help you edit your images in just a few drag-and-drop operations.'),
(2710, '5265ffafa384ce80dcf6786419f6219e', 'en', '32f4ff4098208f069b950be516ad5d2e', 'Do not hesitate to try it out with just a few minutes of setup'),
(2711, '1529f005fbd4c50dba5add9c20182178', 'en', 'd9ffe050a2057190514f156a0bc4d5c2', 'Streamline your social media processes & delivery for your clients'),
(2712, '9bcfaf37cb658cf4ee7755e453a8e808', 'en', '5b3e15194bcc4823b05b42bdeecc16d5', 'Whether focusing on a campaign for one brand or managing social across hundreds, Our service helps agency teams be more productive by managing all their client activities from a centralized hub. Our service is guaranteed to save your hours each day'),
(2713, '00030bdf4d590b38fb25e93e2a1d62cf', 'en', '5f4dcc3b5aa765d61d8327deb882cf99', 'Password'),
(2714, '1e4b427e2083a3c75cfee339591d0359', 'en', 'dc3c99bb4e249a95567a2bf7d5f327ed', 'Remember'),
(2715, '60eaf43ad0d59165bac3382b13b85c24', 'en', '254908f12321708e802c4eb1727b2798', 'Forgot password?'),
(2716, 'b85253a76559979b95372e8026297fe9', 'en', 'e6c74885110b537d0fe9022f2e900aac', 'Don\'t have an account?'),
(2717, 'fd14e9bf5382edda998acd696e8af002', 'en', '8e5bc3b994866264379813658fd78afd', 'Register Now'),
(2718, '13046892a4a86e5598089f68f4d2df22', 'en', 'a00c0a2f3c077ec2653b7728986e9a4c', 'Create your account and enjoy'),
(2719, '2842ef3bdb61f5765ee3db86fae245a5', 'en', 'c315cc04ecbdbc749a09addc62016d54', 'Fullname'),
(2720, '8bd826cbe7f8109497db68efce9de825', 'en', 'deb65220cd7429d5e3ec5fa5793d9e41', 'Confirm password'),
(2721, '7eb3dcf6399410c874ab8fc639ecde3b', 'en', '7ef1936eba4e67227665d3ad82dd9b6b', 'Already have an account?'),
(2722, '81945774311e0f53227d6ced10586a86', 'en', 'c1f6f0ce60c36f89bcf0c37ee645d379', 'Sign In'),
(2723, 'dfa0f902a09a661b5fb4692e87d4b939', 'en', '166b5132148a50644cf4993ccd8db4f0', 'Recovery password'),
(2724, '73029480ec7cfb08ca2fdc358cc788ee', 'en', '2280329539fc57a1dbf1c2b89a350179', 'Enter your email to get new password and continue'),
(2725, '06afab338ba59f88d006c4cc84120cc3', 'en', 'c79bdf421714f5087fc34b7c538b6807', 'Submit'),
(2726, '3f41cb114f51e6a1787ebc7aa6039c54', 'en', 'a4f6f309f1c6906f15c9abfbdfc22bd7', 'Change password'),
(2727, 'd97d61ca2436328d89ec581af250f07f', 'en', 'f39232b88735f3e2b276174868381c26', 'Enter your new password to continue'),
(2728, 'dc976314ef5d213b99bab7ecea9e607a', 'en', '4a8a5a9c97df18a0cb504f89fdfd0416', 'Activation successfully'),
(2729, 'c635fb64dadceee8260cc38642e3822e', 'en', 'f34f4064a8a88d98565bf08e8f8a7654', 'Your account has been registered successfully'),
(2730, '7c9dd1ed53c161a2b7d92676dad16f83', 'en', 'b63a79d050421d1fd521830ee9b87a98', 'Start your free trial. Are you ready to try service reign? ! No contract. No credit card.'),
(2773, '7649d7e404c5185892c92f6a8a8f62b8', 'en', '9ff2b6c0926928b45c66dbf96e33b25c', 'Merchant Id'),
(4277, '3271c147d6bd94e831dead72793f9f95', 'en', 'b212547016fe31b3d7b3cffa9fdb815b', 'Youtube profiles'),
(4278, '3ddd6ece96e2c4e6900423e0efa10af7', 'en', 'c9f86063b018b59332a292eba9f2e0ee', 'Youtube profile'),
(4279, 'e476e0a4fc2c42c24a4320ed8426137d', 'en', 'f1cf662021b67634d732cf273d213978', 'Add Youtube channel'),
(4280, '2f688bd9e604479cc99b4a37b9c38c77', 'en', 'f1d31732b15066dcfa7113af3d2b91f7', 'Re-connect with Youtube'),
(4281, '7369917a56df6905bd391765a988f26d', 'en', '2a9fc9efe56971027f8c92eff8dc0c39', 'Google Client ID'),
(4282, 'dc52fb730f6d941927e2c52e40a89dcf', 'en', '3708118127eeeb0b1c89deca62badbfa', 'Google Client Secret'),
(4283, '6ade2a9f96bebe151fa2ce5d1524147c', 'en', 'cfa4f36bb6dd35bf435e69bfffa88df5', 'Google API Key'),
(4284, 'a32ec3bdf0dce1a2d7f1f4d23be6202d', 'en', '354d70ea411ca76adcaa9bde60b1a70b', 'Youtube Post'),
(4285, '4656bede7446c36b92f03612c7a66924', 'en', 'efed3ea5e148dd347d9810f5f4489741', 'Youtube API not support post text'),
(4286, 'acfa21ae56177490748b33e7042ad941', 'en', '51c1f0792d08b822817647e02d6a61e0', 'Youtube API not support post link'),
(4287, '6d8fdd757f622dcdfc66042e2e351100', 'en', 'fc9ebaf929d9de41251d1e757d0619ab', 'Youtube API not support post image'),
(4288, 'afb796486f0a6203104ea74f943ae664', 'en', 'd8e4922dd15f21a02528d54926dcceac', 'Enter your title'),
(4289, 'e435aab3dff47ccdf1cd37b6f0d56363', 'en', '1ef7ac2703a600fb37026e5d269aefee', 'Film & Animation'),
(4290, 'c51e258cd4ba8998d439aa5b33fcea6a', 'en', '107a99c2c1b3d81692018061d84b7ef0', 'Autos & Vehicles'),
(4291, '89e1b0171f4a96268c881ea077ae0e69', 'en', '47dcbd834e669233d7eb8a51456ed217', 'Music'),
(4292, 'af961d97c8c9482708008dd565ffaf28', 'en', '40b12d60707069285b47601ff28b4cf1', 'Pets & Animals'),
(4293, 'ef6504e024e1a2f2e36057d44f358524', 'en', '918e180e06b96c76b7193c9fcb1cb312', 'Sports'),
(4294, '9bc698a2ce9e52f27afd397172286dbe', 'en', '246cdee939b44dbc6fb17475735e4488', 'Travel & Events'),
(4295, '330b0f2e4a4b92d96547892e58aad292', 'en', '9eed85ad420e3a3c986cdc6d7e77854d', 'Gaming'),
(4296, 'd4120f3e9f549545e4a28508780085aa', 'en', '0345a0a02b6d92d0107566bbb4a675d5', 'People & Blogs'),
(4297, '2ca3199221a530c8e230b39132f58f75', 'en', 'e6b99f24d056d03f20b4651f79fc640e', 'Comedy'),
(4298, '4a335bd4d8eca128dd9780da19cd17aa', 'en', '336fdcf7d540e4b430a890b63da159c9', 'Entertainment'),
(4299, '8811ab9e42a84659ad4cf45ba5196d85', 'en', '7ff46628fd12820838bb8585b4a790d3', 'News & Politics'),
(4300, '2ddfbbe5168d95d6857b4c3dc451271b', 'en', '991db1fe8307f76162ec300af14e8d9a', 'Howto & Style'),
(4301, 'a4f3bead5140682c1bc8ce7b37e3fb8f', 'en', 'de7a22a0c94aa64ba2449e520aa20c99', 'Education'),
(4302, '99580da04f514b19c824a37ece388ad0', 'en', '801c861a4f1fafee038559acdbf13ffe', 'Science & Technology'),
(4303, 'b1a49c54cd96dc4e8e0fbb16874e03a3', 'en', 'e324d320d8d93bb36a2637d71e953e3c', 'Nonprofits & Activism'),
(4304, '998c6391e5c4a7025511039042d80618', 'en', '36dbace4f58995d6518610ec8f02e72e', 'video,funny,smile'),
(4305, 'ef6db04b28a7cfb44bfea65f20a72f08', 'en', '6d1421ccce3c624c4df855ded4f89aaa', 'Published on Mar 10, 2021'),
(4306, 'd08c59e558b846c26b496abd61e674c6', 'en', '5728e8a9af2ed5da3c0ae1cd5ecab738', 'Youtube Livestream'),
(4307, '64942968d55e7e73fc29656fb6192879', 'en', 'b78a3223503896721cca1303f776159b', 'Title'),
(4308, '24678b7649ce934458891f89a8762d5e', 'en', '30e5e4934f92c63be60a0d397fede834', 'Time post must be greater than current time can show schedule to profile'),
(4309, '736006beb0ad9fbc79bdb53c73416390', 'en', '6b0f7393212e82a5f1c7e39690776f34', 'Enter title'),
(4310, '94162fed64fe7524684a08e5e5202c20', 'en', 'b8b74c21032eaf0df1f45f8d4f2d9bc0', 'Show schedule to this profile'),
(4311, '912fba11d888b1f721a87b66ead271c8', 'en', 'b96c3139c914d2bb871ccdb6ab695334', 'Privacy status'),
(4312, 'b9436a76969f6f6cac8d4adb5a18af3e', 'en', '3d067bedfe2f4677470dd6ccf64d05ed', 'Public'),
(4313, 'f9b6417b932e3287226d7f15ce277317', 'en', '47f9082fc380ca62d531096aa1d110f1', 'Private'),
(4314, 'c29d6c816ab0301c9cb6115a6c8ab1f6', 'en', '3e2c67109cb704099f297c5471a60f37', 'Vk profiles'),
(4315, 'beab9a2d51ac8eb3a423b95d46576131', 'en', '24621fe5a6b332e2fff37507e02419b4', 'Vk profile'),
(4316, '21aaaf6d640ef5d521f3fa72790b50f2', 'en', '92a7f077170c9754c5e77e17549f14d0', 'Please enter Vk code'),
(4317, '4cb89bf4eb63e8da09500d7c337e2d76', 'en', 'fa09d6d9ef316f5f8c85f34a463544a2', 'Get access token successfully'),
(4318, 'b24be02cf2d60f0f83d7f48f84affa4d', 'en', '530a7a048bd27f6c0f3d5d86a6c52a49', 'Vk API Configuration'),
(4319, 'f9738dc2f3920aa4261531f999ba0963', 'en', 'e41e15ae46608c905013d92f7425fee5', 'Vk'),
(4320, 'f15baa1fa85bde22b2e5c9416546480a', 'en', 'a4ce29bca077c224deb03755ba7933df', 'Add Vk profile'),
(4321, '652127a3909d7cd23ead1c1d4ae69b06', 'en', '7bf5b40d2cb13670976de310e562e556', 'Re-connect with Vk'),
(4322, '5866c72ce8c6be961503946fecd37062', 'en', '5a97ec235d5c647cfbd982ce3f149043', 'Get access token'),
(4323, '7afa170e10e9b91455547cc047240a6d', 'en', '14edf80a18d1c8cd45f423878dbd9928', 'Get and enter your Vk code to get access token'),
(4324, '57ccef0fd68c07123b72c6486b4eb39f', 'en', '6145e5948ba096589dde0f2bdd6a380c', 'Get Vk code'),
(4325, 'f2e0f8cdad58cbbca44c0f8aea6fb561', 'en', '84ee307f3e7e8a33d2fcedc535e97265', 'Enter vk code'),
(4326, '6c728b5d201b59637e3f44d14f64df3f', 'en', 'f2a5164fb10ef1832dd3dc0ce4afade6', 'Click this link to create Vk app:'),
(4327, '6d44ed5f43d1bcfed0767eb5a039e2a5', 'en', 'ed265981069aa2ee5467cb59f86601bf', 'Vk app id'),
(4328, 'e1bbfc3d9f3a7be2ac51875556dad199', 'en', '960d20851f295a7a26e06d17bc691b13', 'Vk secure key'),
(4329, '2c50c56ca508ceb037632256264378a3', 'en', '2c7f0d912a075b982213505f06301d86', 'Vk Post'),
(4330, '204eafb1604c9f3ed326229899b30772', 'en', '6af987759f8dd4f428533791673ba606', 'Vk pages'),
(4331, '02557857c5cd196fdc7795243c435ad1', 'en', '73c49fdfe468c3d8839af09cb2d7d898', 'Vk page'),
(4332, '0dc1baf2625a359f8ed4a89acd260701', 'en', 'a5942712a9f66b1ab0c918d1b63b0d13', 'Add Vk page'),
(4333, '4c4dd8a71718a096fd3848bec5e38cf3', 'en', '9342ebe1d10d9ff52b81fedd89f8a1ec', 'Vk group'),
(4334, '2ad9cbc440fa1e098a392a6df7f42fa6', 'en', '699baec181e2cc53fdf622a1d2a02784', 'Add Vk group'),
(4335, 'fcadd6d5f6d5813b79b5ab98b2dcad14', 'en', 'b4141a94eb1d4887e9c6e5a3293e9405', 'Telegram Post'),
(4336, '496a65c3b7866c0301baac482860f893', 'en', 'aee9784c03b80d38d3271cde2b252b8d', 'Unknown error'),
(4337, '8bc2253c1e19434adf892bf91cf2c573', 'en', '1e97cbf69ba21f2af84f5894aad8adb7', 'Telegram groups'),
(4338, '366ccd110c661471a099ba032475c2cf', 'en', 'cc5df1e7da3df8b14877e3c5cdbadb9f', 'Telegram group'),
(4339, '456e1d563b9628782893767e55750600', 'en', '1edca48aa6dc85927ed84afbedccf719', 'Please enter access token'),
(4340, '2469d6ce636331b10302a5bb43dd0e92', 'en', 'e06d1ba70f1331e9f9a113cc2f887d3f', 'Unauthorized'),
(4341, '4e054e22d5e4069184d715980a09c9b7', 'en', 'ba82b06fa406946f78ece191edf9042d', 'Add Telegram group'),
(4342, 'b361589d937b2aec6e6e6e4386d3ba42', 'en', 'da6612098afcf6e303180b4b1f11a1f5', 'How to add groups'),
(4343, 'aa3cc07c26abdfa17f906d0c0398e097', 'en', '74ae5b8355405fb5be823ed3350189c2', 'Step 1: Add bot is an admin on your groups'),
(4344, '0eccf7f2994478816278eaeba140683f', 'en', '5898996884f77a0638ca5047bfc09fdc', 'Step 2: Send a message to groups as you want add'),
(4345, 'ca8f6c43b525a14060c5f711776f8b6f', 'en', '1484052da87ea8ca82b9da340e10067f', 'Step 3: Refresh the browser'),
(4346, '351d68fb8818f1cf3f126a2d30d813ab', 'en', '6e0993fb522c3e2e7172ded7cf4de602', 'Re-connect with Telegram'),
(4347, '459b681f32d9cb6a69057f65ded3c36c', 'en', 'c649de02d34915f1ab66208746dd7084', 'Get and enter your Telegram access token to get profile'),
(4348, '8435559c4357b66b3d83f6c3d707ba11', 'en', 'a8af80f4aa24c1cf66b61a85defee0ad', 'Create Telegram bot'),
(4349, 'd44dce61538e30816d672d47062b8817', 'en', 'a270e6a714e23a2ace11e3dfac5f4290', 'Enter access token'),
(4350, 'ae8b60c27abc2bde02364a53ce3bc5c6', 'en', '0d0ab142a9badcfea3386fe35d14d733', 'Step 1: Click button Create Telegram bot'),
(4351, '5d7cc6a9bfedd5019f118b3d77f65afd', 'en', 'ee2cd087bbbe87e8bc986c90a5631150', 'Step 2: To create a new Telegram bot, send command /newbot.'),
(4352, 'd0402956b18102ee4b33f685317e7b07', 'en', '7c17f7f717a7aaf4ef42496b3dfb5d05', 'Step 3: Give the Telegram bot a friendly name.'),
(4353, 'b16afb298a58d2a0e1d07f75c75b3443', 'en', 'a83d8ad68731a7c696ed891238aa7e66', 'Step 4: Give the Telegram bot a unique username.'),
(4354, '9a1dc26a003f5f7aaf35a5ba11543aa3', 'en', 'a569e32f14eeeeba77c0b5f37ca2b76a', 'Step 5: Copy the Telegram bot\'s access token.'),
(4355, '8668dfa4049a6cbab1eb7e599f35a4df', 'en', 'ba0ca0e27e5f09033e9db99b77ee7b96', 'Step 6: Enter the Telegram bot\'s access token'),
(4356, '8954832badef067335ea35663ae92119', 'en', 'ad3aa7e68dc04466fb5f15c32109da13', 'Telegram channels'),
(4357, 'e5d3cd783bddf1d0560b1e64a7f92e01', 'en', '98faee83f9fe1ae2285cb31baec60ee4', 'Telegram channel'),
(4358, 'a19b4164ce2320a62d4642f0149d790c', 'en', '0bd096e861d99a61561c977760fce425', 'Add Telegram channel'),
(4359, 'a3945de0f2045bb922150a156c398b12', 'en', '7106edbe93bfa49d4e0d13912cd150a9', 'Step 1: Add bot is an admin on your channels'),
(4360, '0aeac24fcfb4a4be688d4c098474aec9', 'en', '08ba3207e238b36319a9c0bb1eb1909f', 'Step 2: Send a message to channels as you want add'),
(4361, '8d9b86fae1b92fa8f781e5ba49fe29c7', 'en', '9e4b89019689aa7e6ffd268faae943c8', 'Pinterest Post'),
(4362, '9612ce2947a46ee2cc7ef3e035e33e40', 'en', 'e0c991b35c406ad6f274e07ae08bca35', 'Pinterest API not support post video'),
(4363, 'cf4733a44f1e685c21e2355a38d39fc3', 'en', '97b9d3875f1f12b9ae1842e360046918', 'Pinterest requires an image'),
(4364, 'f0b32e70c8e10d8cf415e3b73c660f07', 'en', 'ecfa50e88a7665c9faeb7e7738d5851c', 'Image does not exist'),
(4365, '174fc2df55880b50171b2a86101e70e5', 'en', '94a300b58d8c6ee1a4a557a6677332a7', 'Upload by'),
(4366, '765c2dd19ab80c79fa97d95b296d8b71', 'en', '248336101b461380a4b2391a7625493d', 'Saved'),
(4367, '6e9836330ecc3d1fa97422b16a0c5ce8', 'en', '6036d0a8b885529156168b3b69ee03cc', 'Board'),
(4368, '20115d041dbd71b2765f253f631a73a0', 'en', '636c47a2cb2525e79b6758a9c6e413f7', 'Pinterest boards'),
(4369, 'b76f4efe43c179ca5be2833efc5cced4', 'en', 'e1815e17a1d851aadc19218248a3d2ee', 'Pinterest board'),
(4370, 'f73d0fbe507921c3905dd644ef157e80', 'en', '3266bf06bbb0bcb813fab7ea489e9533', 'Could not find boards'),
(4371, '898936678c55d7748522ac9d74744352', 'en', 'b494ce60923c04e8e4c91b0d47177d95', 'Login required'),
(4372, '1129a5daf2f83f9ada7fd1a34d9311ab', 'en', '1d32847cd4369da3879054fae275f727', 'Add Pinterest board'),
(4373, '022ff562dd4e332e3af4259eb822250e', 'en', 'c5c933066d4083f1cbe0fca5561407a3', 'Pinterest login'),
(4374, '6ccdf93738647eeee92dbed6267ed205', 'en', '808c07b081aea20f042a16aa7ccd3174', 'Re-connect with Pinterest'),
(4375, '4c5d6eafb18ad2948004d0aa90f73ae1', 'en', '9529ce63d2a38eac873b8ed7e6ea85a7', 'Select option below to get pinterest boards'),
(4376, '0555275caec1139f210468b9a27dede4', 'en', '5ea2bf3eabf9707f16440dfdbf4fd5a9', 'Your app'),
(4377, 'ed045439cad1fb2abab8da21dc0d6cba', 'en', 'f3ef87de01637b1b8b484c43923da6b9', 'Connect with Pinterest'),
(4378, '328d7df1778473f935c782f1aaf5f7a4', 'en', '4530378dd1e68e136e52255661eee568', 'Pinterest app id'),
(4379, '7299166da9f210729f57e4793225be31', 'en', '7f1cb8aea0176e672c4c902d28bc816f', 'Pinterest app secret'),
(4380, '047b8c9ee938305f5e6d0f549d982d25', 'en', '58a57c391df35b0da1241e8fbbf8ede4', 'Pinterest username'),
(4381, '08482dd3c8fdd60087d1abcb59f438ab', 'en', '05a38a7d483cc1a947e9bd8919db955e', 'Pinterest password'),
(4382, 'a376e4eb4ec34075b6276b3131374bd8', 'en', '68f20162f0861472dbbcc84ee66f35e8', 'Log in to Pinterest via'),
(4383, '08d9471573d78be013544df4672ff4f5', 'en', '56eb0ef38ff81285058b5f7f6c1412b6', 'Your Pinterest app'),
(4384, 'cf48edcc27b03a76bb34dda1b464274c', 'en', '47980f0b7866d87cbd114182aaeeb557', 'Log in to Pinterest via button'),
(4385, '1919ece4fbdc5d167559e507bb5ffdcf', 'en', 'c9df9fed610efb4d343fd465c785bd2e', 'Click this link to create Pinterest app:'),
(4386, 'ea87e78e6723d64f1f0d56a62da3d9c3', 'en', 'adc9872d1baeac62b7a9b6eb62fd0f59', 'Pinterest App ID'),
(4387, 'db6ae4249a017cbae8c53dca3443540b', 'en', '2871f81f52392dc8981038a772354cb2', 'Pinterest App Secret'),
(4388, 'b83cda105428871d78767c9a06242987', 'en', 'f7cac69e1ec95cad2e34ca028864c79d', 'Format: HH:MM. For example, if you set it to <b>01:00</b>, then your activity will stop automatically after one hour. If you leave it empty, then activity will work infinite or while Pinterest limits for your account not will be reached.'),
(4389, '26c99275a9801b2b195b577d6dfce4b5', 'en', 'acfce3044cdb97f8804d38acaa3ff145', 'Which users to unfollow?<br><br><b>Our source</b> — select this option if you want to unfollow only users that were followed by our service.<br>This option should be used in most cases, especially if you use Follow and Unfollow actions at the same time.<br><br><b>All</b> — select this option if you want to unfollow all users that you follow.'),
(4390, '379589f1d3b1fa4a89f1ead796e02861', 'en', 'ca7ee5e04a36e75f988b78ac231c2e2a', 'Ok profiles'),
(4391, 'e4c4810e7884b5374f12cf02953d79a1', 'en', '305c264d1af5468b9be361dcfdf58c03', 'Ok profile'),
(4392, '2eba0c731746831eddfef171553f94c2', 'en', '456b912b09f77d2f836b2dd67dcb31c9', 'Add Ok group'),
(4393, 'b373bd5e2da707347e874fcabaa021d3', 'en', 'a60852f204ed8028c1c58808b746d115', 'Ok'),
(4394, '168dc4e056a9444ceeb2e396b3fbb62d', 'en', '08558f5ae1bba0797b293fb0f16270aa', 'Re-connect with Ok'),
(4395, 'bcb4f82171493a844bd640b447b649b1', 'en', '5a11d5e48d5496f8a51ee54388142142', 'Click this link to create Ok app:'),
(4396, 'efd174be4f6b87544813475dce54e5fd', 'en', 'eaf5b6e11af425691676d551deb5f99d', 'Ok client id'),
(4397, '97cb6348a6d5c0890f0f38c689b0c671', 'en', 'c46e0114a1692f99415a74f0dca92190', 'Ok application key'),
(4398, '67ac6fa87c91dc1c762e72ab204f229d', 'en', '7f7e6025295ce094811f38f40cc4206c', 'Ok client secret'),
(4399, 'ebadfa1b3f9bc8e5825f10927f513b42', 'en', '5cf7c27d17aba656e4359e977435243b', 'Ok Post'),
(4400, '930a646f0c12c94c852470bf4546f366', 'en', '73b151c73acc539f25ba92900c795ed7', 'Linkedin API not support post video'),
(4401, '10b9da8cf6ca21bea6853665335e1dab', 'en', 'd9ad794fc993784fa7442cce33384535', 'Unknow error'),
(4402, 'b9fcb4053d00c4e3ba3c34ce3fc46d83', 'en', 'ee439832fe8b5b24cdc46e90cd5f6849', 'Linkedin profiles'),
(4403, '606fe7982554eb06fad8632ffabeebf1', 'en', '70527e595ca1aa58aee50017fdd7c990', 'Linkedin profile'),
(4404, '3605ca8c25e2f3f8f6e51bb4f79b6c77', 'en', 'f4c4233f53883ffa2481ea65bd5032ea', 'Add Linkedin profile'),
(4405, 'a1c73d34aff597c15358eae66e4336d1', 'en', '44e2308cdc51a0a1a5350ba3937e0b5e', 'Linkedin'),
(4406, '99cc2ac32b13b7757abbaca51a123d96', 'en', '1687eec70de04b8bb7519e00efd6a8d7', 'Linkedin API Configuration'),
(4407, 'c03fc512da88a78774916815f08cdc08', 'en', '7471ed87d19f45fad7ea2a8b3c8e8607', 'Choose the profile you\'d like to manag'),
(4408, '0edcd7d0727d6fc09d8ecb3b7be3659e', 'en', '5ac0deeeb141944f9f053182ed52ce26', 'Re-connect with Linkedin'),
(4409, '163bb94cf2ce498ea3f75b89118535a8', 'en', 'df440862878089c24245890438c1d36a', 'Click this link to create Linkedin app:'),
(4410, '3f28e75f63ddc2f828b7e140f32b5390', 'en', '540d161bff6adc07ef28777eedf9ce22', 'Linkedin api id'),
(4411, 'c40c2d7a352c62542d04f0418234f448', 'en', 'a982158bfed4a54740d876c80f15d368', 'Linkedin api secret'),
(4412, 'db3f2a375cf7c9cd73d13011cf4e39cf', 'en', '4321348d79c9c30cac63ccafe50a8f09', 'Linkedin Post'),
(4413, 'f22a541c396a5851cc02d424bafa29d7', 'en', '8fe305b70f73eae1ac53cf0ad69f74a8', 'Sales Manager'),
(4414, '13e950633c26338803ee2a5546b38436', 'en', '6af03bb47eee9537d296aa1511786cca', 'Linkedin pages'),
(4415, '48d516301c716def71a8ebe829f076af', 'en', '134bf337b0e8ef284a38059e8b7de39d', 'Linkedin page'),
(4416, '03619672319475757bc7c6c215dbf494', 'en', '95896c6545c01e5034ebf6966ac214d9', 'Add Linkedin page'),
(4417, '1c1ea9ca8ba06a9cb8ab7fc20bf5cc91', 'en', '6fbacda008628fae693794ef11dd031f', 'Note:'),
(4418, '18317b6b3121cf8fb6b80f0deeaf07c1', 'en', '8e03c1b19329237294c4d47e12ba1092', 'To can add Linkedin pages you need register Marketing Developer Platform of Linkedin'),
(4419, '7da707cc1d7087814ae42dcaf70039ab', 'en', 'c55184a29f66ce9a893edd81886edfd9', 'Facebook Livestream'),
(4420, '2b48cbe198623c0e5d3a782afbf602f2', 'en', '2ad505398356d36e3f99d244484df7aa', 'Time post must be greater than current time 10 minutes to can show schedule to profile'),
(4421, '9b988843071094489fcef439469cc4f8', 'en', '827a19123d98e1152e9f62f4c87686ec', 'Live stream unpublished, Please try again later'),
(6243, '9834b55794f3ce09e194911b4f0cc3ce', 'ru-RU', 'e41e15ae46608c905013d92f7425fee5', 'Вконтакте'),
(6244, '14416c6c45adf95422472b002d6975e3', 'ru-RU', '505a83f220c02df2f85c3810cd9ceb38', 'Успешно'),
(6245, '5b50245f0bb71665a2357fe21557cdf7', 'ru-RU', 'c03d53b70feba4ea842510abecd6c45e', 'Фото'),
(6246, 'cd0821ef44bdd8a1e6292df37098a90c', 'ru-RU', '34e2d1989a1dbf75cd631596133ee5ee', 'Видео'),
(6247, '45c98468b58c1d542ad8446c13e4f2fe', 'ru-RU', 'e0daf39823ec1a1a7878c9718f063d5f', 'Google Диск'),
(6248, '43c08ca75853ab03fd9a83a168bfa30c', 'ru-RU', 'b4080bdf74febf04d578ff105cce9d3f', 'Не поддерживается'),
(6249, 'c1dc942c918b4b958021d775168988c3', 'ru-RU', 'e31f55827f6612c005f44acc3fc8a76c', '© 2020-2021. Все права защищены.'),
(6250, 'f88a39813acde05f6ae5c5b735d37df6', 'ru-RU', 'fa2ead697d9998cbc65c81384e6533d5', 'Политика конфиденциальности'),
(6251, 'cfe16abdb3c72123ed8e0f69ba81e5ee', 'ru-RU', '9f45d62f87438db3fc4e7cba1052d9ad', 'Лицензионное соглашение'),
(6252, '1d8e2214ccfc6a8800e7900f08c91173', 'ru-RU', 'a537894111f4226b7037efa79b1ae32d', 'Легко использовать'),
(6253, 'c76775681f830933b89343cfa25052b0', 'ru-RU', '9dc13e77c1f2a18938d4e05d131b43f8', 'Тех. поддержка'),
(6254, '6ef328b1b0f3d2640d3a73e253e68189', 'ru-RU', '98f130908bdb82901f3bc905870908fb', 'Сброс пароля'),
(6255, '31fc0230ad76111f30b7fa6122b37090', 'ru-RU', '227f1ae18fd039ffe553f5aaf6b16d35', 'Введите свой Email для сброса пароля'),
(6256, '11061e89a6e2bf8c6407350753d00a77', 'ru-RU', 'd67850bd126f070221dcfd5fa6317043', 'Регистрация'),
(6257, '3a459d1f2297d399bc41b1a74470d634', 'ru-RU', 'a4d3b161ce1309df1c4e25df28694b7b', 'Сохранить'),
(6258, '7303c45d95c1d443f04bd9bc297a1fbe', 'ru-RU', '8cf04a9734132302f96da8e113e80ce5', 'Главная'),
(6259, 'a6f8ca729c49a514f1e71923836386f6', 'ru-RU', '98f770b0af18ca763421bac22b4b6805', 'Возможности'),
(6260, '0ae222c2a7c39076f6473b96fcef1fb9', 'ru-RU', 'e22ac25b066b201473de7aa700ef5d92', 'Тарифы'),
(6261, 'dd2183ebdcdbc0f7648d1430d2cea787', 'ru-RU', '437e87fd55f7d33033053fb2f319859f', 'Расширения'),
(6262, '2ba0671867c74a3cb3620873ce0c1a7e', 'ru-RU', '99dea78007133396a7b8ed70578ac6ae', 'Войти'),
(6263, '3da40d0d5add9af868efeb6e1a7b6e0b', 'ru-RU', '2938c7f7e560ed972f8a4f68e80ff834', 'Кабинет'),
(6264, '9bbfd0e7403e62cc35d51219356db0c7', 'ru-RU', '36c50a61062198424098cc2281636e34', 'Постинг во все соц сети одной конопкой'),
(6265, 'c671e46756241332a91dc3266be5be6c', 'ru-RU', 'a4acdf575ac80355f8143f9a4c10ff2c', 'Все в одном'),
(6266, '4ab9cff9fe9f4942b2bac52061f9d10f', 'ru-RU', '5780c62ec55362fac70d8fe8b1982b56', 'Попробовать Бесплатно'),
(6267, 'f60001a1f9fb0f653261fe2446deaa95', 'ru-RU', 'b43c44d9521aed3234e05dc133b60af5', 'Автопостинг'),
(6268, '7aafb992bb1a4869ef89c50e467d3b87', 'ru-RU', '02563ee3c4f3f87cb86a9ba5dcb6741d', 'Автопостинг %s'),
(6269, '9f26dad9ab1e6a3169e52999d6e183e4', 'ru-RU', 'e8ebf38eb3ee0242e082b5666fdbc91e', '%s аккаунтов соц. сетей'),
(6270, '741eef0cb50fe8fac3be27026203ca39', 'ru-RU', '8b58b44ef9a84424f4acdc4214462ffb', '%s акков в каждой соц. сети'),
(6271, 'b61636c0fb70ef3b90e1b96444cfc97b', 'ru-RU', '32a016d18355655113f410218adfce16', 'Поддержка наложения логотипа'),
(6272, '403b6a6056c16d277e158cf9b0627661', 'ru-RU', '1ab67f5e7ec1634687355a5eb6bda98c', 'Поддержка графического редактора'),
(6273, '48d75abf485839942f697e41c4d5161b', 'ru-RU', 'd73bf6d95906e0d6281c287d05b86241', 'Облачный импорт: %s'),
(6274, '1843b9baefcba3e7b7c49b3eead3afcf', 'ru-RU', '69fd78fb9d96b75a675da80b618f29cb', 'Тип файла: %s'),
(6275, '7b4cc46558badfc40bd925ee2df3cadf', 'ru-RU', '185f238a37c4b62f1480a1ae41644962', 'Место под файлы: %sMB'),
(6276, '8050b8be5e256f2315806ba4230d1a7c', 'ru-RU', '3795eec1e5ceb372d5a306a1079187d2', 'Макс. размер файла: %sMB'),
(6277, '1866c367a38dbcbac8833f40f8bf534c', 'ru-RU', 'f22896e823410afff658750b7b9fb295', 'Интуитивно понятный интерфейс и четкое и логичное расположение делают его простым в использовании'),
(6278, 'edacfe17806222631708ed21ac3a9ce3', 'ru-RU', '523ea4b263ac9eeee014f9d409acdb89', 'Мы предоставляем вам наилучшую поддержку на протяжении всего использования нашего сервиса.'),
(6279, '2aba4f30652c4e74e7a431f5000902bf', 'ru-RU', '07557093cc74581a6938f62f8cbc9d95', 'У вас еще нет аккаунта?'),
(6280, 'fae6ecb984ebea713d23b7c6095deab5', 'ru-RU', '770f65f00c09996d48ce01f8ed06122b', 'инструменты для создания бренда'),
(6281, 'b0e337275a1fd4eb0690f10fc59bdcb4', 'ru-RU', '3ced0c9fcf81f4b8a38804b0256acbbd', 'С помощью нашего сервиса вы сэкономите время и получите возможность оптимизировать управление профилями в социальных сетях. Визуальное планирование, расписание публикаций постов и автоматизация в социальных сетях.'),
(6282, '365d0d04a0d9430f0a0d9b8f89538abd', 'ru-RU', 'b6d2dd18a545b11b81eb20f7511a9c8e', 'Все Возможности'),
(6283, 'dbcddcb39b5dc5e817133ca9d3119021', 'ru-RU', '35a599f0a73067e8b33642b0fa08f63a', 'Никаких загрузок'),
(6284, '8a0adfa4979bac9eb8260892f01e0990', 'ru-RU', '191b476862fc32fc11776ab0b4655577', 'Вы можете использовать наш сервис из любой точки мира, на всех браузерах и устройствах. Не нужно скачивать и устанавливать дополнительные программы, чтобы управлять сервисом.'),
(6285, '79d7df3d22d801ec416fb1dcd72673f6', 'ru-RU', '5799419308504ac51e21078e644562a7', 'Экономьте время'),
(6286, 'fd9e44425406da5d388ca7b344a5464f', 'ru-RU', '1056634b3cc4659e96281768576cc161', 'Уделяя всего 10-20 минут в день своей стратегии в социальных сетях, вы можете значительно улучшить свои отношения и взаимодействие с клиентами'),
(6287, 'ce5175b10c78abd699685c2324bd8579', 'ru-RU', '777dfe12677ee343905c520f3a6093ae', 'Авто Постинг'),
(6288, '7e40b88e4f025da251a59bd35f16566f', 'ru-RU', '7b2f1c1838da9b5389912045046b7a6e', 'Управляйте публикациями в соц сетях. всего в несколько кликов, выставив дату и время автоматического постинга'),
(6289, '8057216aaf6597fce14cbf2f641032d3', 'ru-RU', '1c673827f58ce9caf3692e421991baf2', 'Анализ производительности'),
(6290, '41dde34e9a5eb6ac3ec73834148e3465', 'ru-RU', 'fde77a165d758a85d9abff31d15b0561', 'Вы можете наблюдать как увеличивается аудитория на всех постах. Это поможет вам контролировать вашу целевую аудиторию'),
(6291, 'aee7b22463fab7998cb93286697077ca', 'ru-RU', '745d730613d5c5abb52b75a5c5a1b6d9', 'Продвижение через лидеров мнений'),
(6292, 'f901b641b83de1eb8b1307cbdb50aef1', 'ru-RU', '2b69032ea36626a737438ed001ced720', 'Безопасно и надежно'),
(6293, 'cf2f66ae3f654a426764e54271614832', 'ru-RU', 'ae5274a9b52a0faf3c8249316c8d1a05', 'Ваши данные в безопасности. Мы не разглашаем личные данные и не передаем их третьим лицам'),
(6294, '1cd2276812619b98f15d35b8e7ef0426', 'ru-RU', 'f838f64c7e629d3105edc134c5249580', 'Оптимизируйте свои процессы и предоставление услуг в социальных сетях для ваших клиентов'),
(6295, '4f6a566c8c234ec3d91c76b99d0277fe', 'ru-RU', 'c338a4ee896cfb5f4941f576dbfe61b1', 'Независимо от того, фокусируетесь ли вы на кампании для одного бренда или управляете социальными сетями сотен брендов, наш сервис помогает агентствам работать более продуктивно, управляя всеми действиями своих клиентов в рамках одного окна. Наш сервис гарантированно сэкономит ваше время');
INSERT INTO `sp_language` (`id`, `ids`, `code`, `slug`, `text`) VALUES
(6296, '449d3862ba650c6317408b5e382f488f', 'ru-RU', 'f311e14ff1b91f5693153c94826baa37', 'Комплексное решение для социального маркетинга и экономии вашего времени'),
(6297, '8ebb02ddca2bc851b3e6e0ac22c081c8', 'ru-RU', '23150f89ef560b9e2d0f35211398c0a8', 'С интуитивно понятным интерфейсом и множеством дополнительных функций, которые помогут вам создавать интересные и простые статьи'),
(6298, '75b192d1ae6958589e2ac94cad540f4d', 'ru-RU', 'd4ef94c16939292a84cd97e40097553e', 'Идеально подходит для современного использования'),
(6299, '36ad9eba6e0815fd2fd0a88ac67c63c1', 'ru-RU', '5f58dc8f6269bb7efd38cd6244d02acc', 'Редактирование изображений, простая загрузка и поддержка своего логотипа'),
(6300, '0e73c822e0d528845a4d33769091f57c', 'ru-RU', '6fd510bcf003c1a990a094fd9d206501', 'Качественный дизайн и визуализация'),
(6301, 'ebd80cdb5f15ec3d8a92c04a720a890b', 'ru-RU', '959af4ac143f572d5fdc48642238771e', 'Проверка аккаунтов'),
(6302, 'b2cac1e2b3eb2c036da77e3c23c106b6', 'ru-RU', 'a265b9b083e4b5cd570823825b0198df', 'Что мы предлагаем'),
(6303, 'c82ecc0100e253f33b92effff745fd7b', 'ru-RU', 'bee15c5e5356b6ed81546fe6731c73df', 'Наш сервис это больше, чем инструмент планирования. Изучите наши возможности и алгоритм взаимодействия.'),
(6304, '8e452091db78925706001a29439a6489', 'ru-RU', 'a632162abed09bc6d2439e913151479d', 'Планируйте и публикуйте Ваши посты во всех социальных сетях'),
(6305, '666029c337ae242ea5ae2af1f3801d46', 'ru-RU', '86aaa6f8124608229aa0ff148590b414', 'Используйте максимально большое количество социальных сетей для увеличения охвата аудитории'),
(6306, 'd45a7c1addba70edddcce711a7f8d9bc', 'ru-RU', 'fbe058053a23f48562dca3a546aeabb3', 'Измеряйте и получайте отчеты о результативности вашего контента'),
(6307, '5515ee3d9cc458ac223ad3fd86c740a0', 'ru-RU', '416d850e049a3592ebdc3996f27e2f0c', 'Получите глубокое понимание того, как увеличить охват, вовлеченность и продажи'),
(6308, 'f5a38fb95fa496487962f724bb57cd15', 'ru-RU', '469a5192bf25d20c488af59a71716578', 'Контролируйте взаимодействие по всем вашим социальным каналам'),
(6309, 'dbd201cd6e7ea1552a40f487ef6f6b3c', 'ru-RU', '9539e55fce6c1e6905092562f70f9459', 'Взаимодействуйте со своей аудиторией и создайте сообщество, которое полюбит ваш бренд.'),
(6310, '331e15bcdc2f47ebc9898516ddb2b27e', 'ru-RU', '14729a935fb0f0da04638b6597414af8', 'Успех бренда приводит к успеху бизнеса'),
(6311, 'e8fe0f4aa4a9bf7f56cb9b5b3b72c312', 'ru-RU', 'a75e7fda54ac0884c2979fbfac5e23a5', 'Требуется %s'),
(6312, 'a077b6a8cca7f0c257f5a7666f9dd8aa', 'ru-RU', 'eb7c06de8f198b7297b76a9d563fa9ae', '%s не должен быть объектом'),
(6313, '3d15457c76aba225936b1cd5b5ec2bd9', 'ru-RU', 'b9303283aed54d71577caef6a6a23db4', '%s не должен быть массивом'),
(6314, '100dea0a666a70a865be623340d5bb0b', 'ru-RU', '031c9ec0462b55c807d234e381c6d445', '%s не должен быть строкой'),
(6315, '3c9b5fa19f62714a28141ae50638cac0', 'ru-RU', 'c18874bf61b61cd1df0e05ce4de604ac', '%s должен быть объектом'),
(6316, 'bdcd4fd8ba9c7f1d197eabbcf2a15e29', 'ru-RU', '53f50d262844a53a16311cd390e5592a', '%s должен быть массивом'),
(6317, '95b550eeaced45f94b587274387eaf68', 'ru-RU', '08fd023c3bb47edd3b4f479417033c66', '%s должно быть строкой'),
(6318, 'dfabc333f79ffb780fc3a77962eecc67', 'ru-RU', '7f95cd29f2c891b41cb8e897d9e12abb', 'Url-адрес не является допустимым'),
(6319, 'da1f2ae533dfc17083f5337ffa56afab', 'ru-RU', '6be8d0d88059ff45ce8cb4cccdcc87d8', 'Неверный e-mail'),
(6320, 'b963cb1368d1c9939e61adc27db15416', 'ru-RU', '174931d77057c088429293427fa55100', '%s должно быть меньше или равно символам %d'),
(6321, '610d5f25c8e49bae68e3c6083799dc68', 'ru-RU', 'fbb97a70df6d31b261522b4e4efd8931', '%s должно быть больше или равно символам %d'),
(6322, 'e1835ef35e712cd0e1d5f2a0eb3416a8', 'ru-RU', 'd752d55564884bc7d2553fcb4349545e', '%s должно быть меньше или равно %d'),
(6323, 'b033ed6a7c56bfc20f9054cf7b214b6a', 'ru-RU', '3c8804f76c811b866799bf7395ba0d5e', '%s должно быть больше или равно %d'),
(6324, '25cb649cecf001d3a29042eed191e672', 'ru-RU', '67eccbc3f17a1f0530654563a8bf7498', 'Черный список ключевых слов по умолчанию'),
(6325, 'ab0b5433f87a19a57c7041baf25b6d1f', 'ru-RU', '2aacc485ebbe92f89c8d307bf7f7c60b', 'Черный список тегов по умолчанию'),
(6326, '6b2fc6edb64f5839106502544abae157', 'ru-RU', '237bdbee6521f975d7fd2727ac6d2a46', 'Теги по умолчанию'),
(6327, 'f0c45ee1dfc9502eedd4f34e565afee7', 'ru-RU', '7f3e097182c8a0508836d0749867babe', 'В сообщениях можно использовать следующие переменные:'),
(6328, 'e93ab17e3ad386b044e72e8b69901ece', 'ru-RU', '348f3956833141934d6cb334033ed4fb', 'Добавьте несколько комментариев одновременно, используя новую строку в качестве разделителя. Вы также можете использовать формат spintax spinning в ваших комментариях'),
(6329, '04eadb6b84cfe7d8a239061694f7211c', 'ru-RU', '256da2c80a70a839fe0f867e86dd1edc', 'Личные сообщения по умолчанию'),
(6330, '70451eeb9c90d73d7b2b7198e62a6836', 'ru-RU', 'ff604f5c4416977b65e9d731622d48a1', 'Комментарии по умолчанию'),
(6331, 'b5a55b245b0a6aae8f85bbac6768e3fc', 'ru-RU', '661adcd777f35c8f3267367ed5d5925f', 'Готовы попробовать?'),
(6332, '19fcde8512f8f770011163fc593ac987', 'ru-RU', '95d3fa6b9e69c588a333f4e78139a7cd', 'Введите свой e-mail'),
(6333, '011a0ecac02d8fcb1344b6cec5ec3425', 'ru-RU', '9fc7db4a01a6f11eba471c6b7d5f627c', 'Начните прямо сейчас'),
(6334, 'fd9aa0e8643ec2f240070fc76de981a7', 'ru-RU', '52f1f38322f1b1165f3a4ee368a0e82f', 'Вся настройка займет всего несколько минут'),
(6335, 'faae93e2f88b9cc0259b03170e4a1a23', 'ru-RU', '5cb87999f2c8c2c4ea76fd96764832b3', 'Тарифный план'),
(6336, 'af639b19dd4d63b6e25101a43179746b', 'ru-RU', '9dbc2c1ccbf3316f57661e2d884f3f6c', 'Начните уже сегодня, с полным набором инструментов.'),
(6337, 'cae6b4d3ffb6830c31d8335caa2f8a5f', 'ru-RU', '9030e39f00132d583da4122532e509e9', 'Ежемесячно'),
(6338, '865c0592666956651ea4dfe5a006088d', 'ru-RU', '10b34207c4ef4df0cf0d0cf792e61bf9', 'Ежегодно'),
(6339, '39449b6ad2b8472d453c7bb397e9151f', 'ru-RU', '008132ddac21c4c90b7e2f57e988c16e', 'Лучшее соотношение'),
(6340, 'e86eaf6348cb624b9310e8af31608cfb', 'ru-RU', '1ac4312c7f68a464862cfde0f86d2e74', '/в месяц'),
(6341, '73a7f46c01e430b3297e3c7f447528e8', 'ru-RU', '393739273b51cd92671af1d50181edb5', 'Дополнительная функция'),
(6342, '25f7bcc132aedb18c9f4188fe10589ef', 'ru-RU', 'e0c4332e8c13be976552a059f106354f', 'Выбрать Тариф'),
(6343, 'c5a4191a42c1f5e953e0890fae96b49f', 'ru-RU', '4b9b17565e8b4d31ffaa207ded99ac38', 'Восстановление пароля'),
(6344, '3aef9764b091d77e31d0dbbd0aca3961', 'ru-RU', 'efb40a8b0a33d5a3689dc4a56e0e3589', 'Пожалуйста, введите новый пароль, чтобы сбросить старый пароль'),
(6345, 'd70affcdc01aad8dc5e678979f757725', 'ru-RU', '3544848f820b9d94a3f3871a382cf138', 'Новый пароль'),
(6346, '6507a66f7cec17817a76e32289cac984', 'ru-RU', '6ab96a5df54aa6aae2bab9ea75ab76c9', 'Подтвердите новый пароль'),
(6347, 'e2ec817201c96d4d15c88fc1cab733e0', 'ru-RU', 'dc647eb65e6711e155375218212b3964', 'Пароль'),
(6348, '965e36aecbd44965c07e4b662c1f8f3a', 'ru-RU', '878530871f0db73f004f5bd6591eeb76', 'Запомнить меня'),
(6349, '63b3472a44a296369d5e2dbf541b5acd', 'ru-RU', '99804d0f6c72187504e870fea7e32a3c', 'Забыли пароль?'),
(6350, 'e118a2f0062db39985516f0a5698e010', 'ru-RU', 'f2fdea440d768b85591e936a803c3631', 'Войти'),
(6351, '10d3357de229eb405fb3298b072eb89f', 'ru-RU', 'a52217a32e47334aa2b2785269b5852f', 'Или войти с помощью'),
(6352, 'cb9971dbd701ec5079075ce20b148c54', 'ru-RU', '4db61af3a5a290a3569fcb0c2503211b', 'Войти с помощью Facebook'),
(6353, 'b6f042c4b978827017779b8d6566f3dd', 'ru-RU', '54f0f324f770292d8085bd2b5e944648', 'Войти с помощью Google'),
(6354, '030270fa9b6b290b9a3f3da11ec23c1c', 'ru-RU', '1e067ac485fd2a9edad9f1b50e3a13f8', 'Войти с помощью Twitter'),
(6355, '03ec17895c67c3c1e68552ce73cb3641', 'ru-RU', '5e65cf190b364020e967119fb26593c8', 'Создайте аккаунт'),
(6356, '98b8ab87bef59d515b062626fb9ab392', 'ru-RU', '9993039cea3e460750a2248fd8471415', 'Имя'),
(6357, '7655485a55281c1ee94edf71937f14ed', 'ru-RU', '4c231e0da3eaaa6a9752174f7f9cfb31', 'Подтвердите пароль'),
(6358, '7c9e52ee40ae7a03d6cd8aaec852fa54', 'ru-RU', 'cd9b0c5b928d317fa68021356dffda1d', 'Я согласен со всеми условиями сервиса'),
(6359, '5aabb182cacfc44db7797eade98d5e56', 'ru-RU', '21bdc5689c12595ae14298354d5550d5', 'У вас уже есть аккаунт?'),
(6360, '76d2251bea97a74067ef723388986762', 'ru-RU', 'a9a62e70841c4d06dd16306a85700d36', 'Активация'),
(6361, '51f5b18c7f3da7a1b026eedbecc5815c', 'ru-RU', 'f6357dcd28326385103ae773c87137cf', 'Активируйте свой аккаунт'),
(6362, 'b1001a04a9f5da28845cff908c5b81d7', 'ru-RU', 'dfb45b965eb127f7dd2a2dad190dfe05', 'Ваш аккаунт успешно активирован. Давайте начнем!'),
(6363, '673bfb433ab15e5255990cb306609006', 'ru-RU', 'ee20bb60493f049175fc10c35acd2272', 'Наложение логотипа'),
(6364, 'cee150d97cf5c35bf3e57eb60ce2d603', 'ru-RU', 'af0e948a2c4c504c5228be51e5f4fd02', 'Не удается найти профиль'),
(6365, '34c117bdce0dfc2b7d389b4d5e32e5f1', 'ru-RU', '13348442cc6a27032d2b4aa28b75a5d3', 'Поиск'),
(6366, '79485947db75c9c7e0f5975c26837f6a', 'ru-RU', 'e92c667c78b4760df3b5673dc81e996d', 'Установить логотип для всех профилей'),
(6367, '6b0f44e93a850ce7a53d079d4680b18e', 'ru-RU', 'd49dffd266fee69cc2f88435310d0298', 'Логотип по умолчанию'),
(6368, '6beb31e67b6511de1f40ef1dd7953b8f', 'ru-RU', '52f5e0bc3859bc5f5e25130b6c7e8881', 'Позиция'),
(6369, 'd4e44fb45312446edce9be3a6e6021cb', 'ru-RU', '6f6cb72d544962fa333e2e34ce64f719', 'Размер'),
(6370, '8304c5069a88b05b3d8266a8c85b9ea2', 'ru-RU', '3d971943089a3388c01fb297a32d9ba7', 'Прозрачность'),
(6371, '8c77728882910b6d7bfba08d6673a5b7', 'ru-RU', '0edd8b69106cd16594aad42e3f61ecf7', 'Вы уверены, что хотите удалить эти элементы?'),
(6372, '93d5607220574680c76a0e928067248a', 'ru-RU', 'f2a6c498fb90ee345d997f888fce3b18', 'Удалить'),
(6373, '9a20df136c79c7b73a5822abc690fd2c', 'ru-RU', '91412465ea9169dfd901dd5e7c96dd99', 'Загрузить'),
(6374, '7ed77bafdd3bed4e93a93a3dd5869f49', 'ru-RU', 'c9cc8cce247e49bae79f15173ce97354', 'Сохранить'),
(6375, '3c60de49a85bd865631a7be5771e470f', 'ru-RU', '57fb105f28857a1e2d72b0f2922635a6', 'Пользователи'),
(6376, 'b8c64b87ebb3489fe471573d31c5a339', 'ru-RU', '51ec703ad6d0c70405759287c2f6f409', 'Этот e-mail адрес уже существует'),
(6377, 'bb99aad8cab8fb7d35e56e0e3084699b', 'ru-RU', 'c031b1ac59b11061818f51af8b291e50', 'Пароли не совпадают'),
(6378, 'a7261aad82a491fb20cb462cd47e1a19', 'ru-RU', '8c1279db4db86553e4b9682f78cf500e', 'Срок истечения'),
(6379, '32d39701173e509218f7ac81b6622c1f', 'ru-RU', '236df51bb0e6416236e255b528346fca', 'Часовой пояс'),
(6380, 'da935f2607602ab83e4f63fb4ba663b0', 'ru-RU', '651ed4710990f7dac47711fd8c4cc26a', 'Выберите элемент который хотите удалить'),
(6381, '68f40b182992f19c3f3b254c0a334901', 'ru-RU', 'a6f2b2df29609876b609c318bdbdf9a1', 'Забанен'),
(6382, '0e92c22f76efbf149ed65c5b66f92909', 'ru-RU', '3cab03c00dbd11bc3569afa0748013f0', 'Неактивный'),
(6383, '2510963db31c83d52bb75dce1f608ce8', 'ru-RU', '4d3d769b812b6faa6b76e1a8abaece2d', 'Активный'),
(6384, '0bb2eddd410bfe351ced2fe1c39fe658', 'ru-RU', 'f923f903857a5387d3db70494e074632', 'Все пользователи'),
(6385, '3a4f53964538436c02aaaac3e0143343', 'ru-RU', '5d720aee27e4d9612eafaf0c6a9061c9', 'Сводная статистика'),
(6386, 'adccda1bee207a2da4fe39438e7c8411', 'ru-RU', '0095a9fa74d1713e43e370a7d7846224', 'Экспорт'),
(6387, '7f53d9c2d26b021de6f4b0da050e267a', 'ru-RU', 'ef61fb324d729c341ea8ab9901e23566', 'Добавить'),
(6388, '79f93889c0ec03a6d1c98a7d1939b570', 'ru-RU', '2de32377e0c6ee60d03338c14986d124', 'Основная информация'),
(6389, '57cdcb458130d99d81dfcca7a08283b0', 'ru-RU', '209802fb858e2c83205027dbbb5d9e6c', 'Тариф'),
(6390, '738621bea0497487ba8044b7f480ee33', 'ru-RU', 'a1413ed049a4bed0e649c409b4462b49', 'Способ входа'),
(6391, 'c4541814e9eb7df46b089bce1b3d3cdf', 'ru-RU', 'ec53a8c4f07baed5d8825072c89799be', 'Статус'),
(6392, '7529ec58177b504b214150c7ce921025', 'ru-RU', '820dbd2b8f606aff866c0bbfb6b737c1', 'Изменено'),
(6393, 'b6df1bed1140b5d0494b10488eab927d', 'ru-RU', '0eceeb45861f9585dd7a97a3e36f85c6', 'Создано'),
(6394, '3f1b6f2bbc6120bcb28f8593b7c24819', 'ru-RU', 'f8fd5e179bf967f2c13519802552a44a', 'Посмотреть глазами пользователя'),
(6395, '588cf40e9057f0e1e6995579b549340e', 'ru-RU', '7dce122004969d56ae2e0245cb754d35', 'Редактировать'),
(6396, 'd08de0bb6602f9db1c69aa628d151113', 'ru-RU', '06933067aafd48425d67bcb01bba5cb6', 'Обновить'),
(6397, 'cc319c456fd54b72caf1a39c518eaf54', 'ru-RU', '0557fa923dcee4d0f86b1409f5c2167f', 'Назад'),
(6398, '24f969c216907e5cfdb4e12f9e5c90a2', 'ru-RU', '858ba4765e53c712ef672a9570474b1d', 'Участник'),
(6399, '1a6026556a04e7db30049a5c4a3a20b0', 'ru-RU', 'e3afed0047b08059d0fada10f400c1e5', 'Администратор'),
(6400, '06ae6ba4452ba398c53e5ea4cee964b3', 'ru-RU', '32036005d1f6ed59803ba3e13c80993e', 'Аватар'),
(6401, '96ece2b725c669dd820aeb0b0ae6700d', 'ru-RU', '16d2b386b2034b9488996466aaae0b57', 'История'),
(6402, '864f2e6cf5a080f7f56b02e57fa03120', 'ru-RU', '4649093d4d10aa95a212636f146c47fd', 'Этот аккаунт не существует'),
(6403, '5b9bf0cb8cd09ffc3b8937463666d80c', 'ru-RU', 'f7db455c1f8c044c06d6df622a291c21', 'Этот аккаунт не принадлежит ни одной команде'),
(6404, 'bcf922670218c61beb0748b9214e0f4d', 'ru-RU', '9bbedb84da52a148b912871670fecc92', 'Выберите тариф'),
(6405, '90ee47e55c2f1c21294faacfe93ff65b', 'ru-RU', '0caffe1d763c8cca6a61814abe33b776', 'E-mail обязателен'),
(6406, 'e6cd05bba4256423a0b1b858a357e8d5', 'ru-RU', '47be05698f8dd87bb445ceefce6abd0d', 'Требуется пароль'),
(6407, 'a9682ca2e179d23d6050d5b28db3671d', 'ru-RU', 'f14e18ef93f7a70cb841b2330366f7ff', 'Введенный аккаунт не найден'),
(6408, '9b2fba9fc4c0882cfb9ec0a323b4c1db', 'ru-RU', '92e72935893c7830cdec6ce385be7fff', 'Проблема с вашим аккаунтом. Пожалуйста, повторите попытку позже'),
(6409, '375e0eb09e8328e993a096ee9ce01120', 'ru-RU', '63e68809cb958967be7eb29412787e68', 'Ваш аккаунт не активирован'),
(6410, '911750ab617621a27ef882e9f8029fa3', 'ru-RU', '6e62bbfb3b7d4dd9bf020f9c6780bc08', 'Ваш аккаунт заблокирован'),
(6411, '5e0e212c40494acae6bbe92421bdc076', 'ru-RU', '9c3cd291e0b8e35328a63d857beb6355', 'Пароли не совпадают'),
(6412, '2f7559fe17615e84c0193c57e43f26cd', 'ru-RU', 'bee6d6b09634c22aa9df4c4f09c70efd', 'Вы должны принять условия использования сервиса'),
(6413, '9a2da17effd64934906510b8234c36d2', 'ru-RU', '92ff6ef7b7733567c89df3c3d3a5376a', 'Требуется часовой пояс'),
(6414, 'b43bbe7b27ef25b72ed0326929bf7cc4', 'ru-RU', 'a838e5e0705aed3d7b42795febafaa48', 'Спасибо! Пожалуйста, проверьте ваш e-mail и активируйте подписку'),
(6415, 'cc5a3019eb7532a276fcb000ad80cf2f', 'ru-RU', '9b9fd7f15f0c58da73d8b18c897b971b', 'Данный e-mail не существует в базе'),
(6416, 'eca440c7bd2b8e323c81349e9b9eee52', 'ru-RU', '8c883f09aa990e5dcfa8b9d6bc8bdb11', 'Мы отправили вам письмо на e-mail. Пожалуйста, перейдите по ссылке в письме чтобы завершить восстановление пароля'),
(6417, '6165ccc3c04c057b74df1f8e15be5d6b', 'ru-RU', '2ff126000ced5065e34359cd8c11009a', 'Возникла проблема по вашему запросу. Пожалуйста, повторите попытку позднее'),
(6418, '1f7ddab4cb61222ef193c4c376bc5931', 'ru-RU', 'fde60b717aca6cbf9b1e1cdffe82cdf4', 'Пожалуйста, введите код с картинки'),
(6419, '82a1a627da383b93a090670319c95706', 'ru-RU', '051156014e3e00388f9f5eeb3943b90c', 'Неверный код с картинки, пожалуйста, попробуйте еще раз'),
(6420, '1bac25bf44f3e315f5c7a1bda4d8f555', 'ru-RU', '6c10cf9f5b2cb966b7a4e641a9825373', 'Вы ввели неверный пароль'),
(6421, '5b22d1f83925395be5f0cea90c2faacd', 'ru-RU', '305ff8d96466521d9c84d21041d62971', 'Активные пользователи'),
(6422, '22eb9beee293b47cbaa0f6f869498f9e', 'ru-RU', 'adaaee4b22041c27198d410c68d952c9', 'Процент'),
(6423, 'b20261883bbc209b3225b90d3a324c9e', 'ru-RU', '2a5e64419d8ac3898a8e54b0c0468b76', 'Количество активных пользователей'),
(6424, 'f24107beb9de7b0e189ef956015bfc7f', 'ru-RU', '2cc7ee7e390eac945e7baaae2d10a9a2', 'Неактивные пользователи'),
(6425, '81bbef729aa3e1ab03760982c855861a', 'ru-RU', '8eaacf51d41b1ab94da735410eddea49', 'Количество неактивных пользователей'),
(6426, '2790b35a9ef7c32627448c9507adacb6', 'ru-RU', '493dbec7c424e581a983acf3420ea7cd', 'Заблокированные пользователи'),
(6427, 'e776f5196340e6f31995fc240e17849f', 'ru-RU', 'ef9d9a66fa63b2dbd89801ef97a4b22c', 'Количество заблокированных пользователей'),
(6428, 'e65860c37d823c2cd959c54ab5ba55c5', 'ru-RU', '5cbb4a6c74b160bdd49ede71ba78718e', 'История регистрации'),
(6429, 'f2039efab26af90bd3367f2baf96c08d', 'ru-RU', '1dd1c5fb7f25cd41b291d43a89e3aefd', 'Сегодня'),
(6430, '65c634bfb51b4a576a6c86775be54429', 'ru-RU', '70a6facb9d63f6ba070900c4c13df22e', 'За неделю'),
(6431, '2f70ca84f58c68ea1ad5fa648e0cf749', 'ru-RU', '96165d6df5c2fc0a2d2049848c130c1c', 'За месяц'),
(6432, '8b01eed5b898f3d16119c5b7b1afea7a', 'ru-RU', '02a3ccb8294183b300fef7a62fc44a63', '%s'),
(6433, 'f2d6b8c59009bbf22a20bdc7a06f4803', 'ru-RU', 'c35890fced542f7e539ca68fa7f17d2f', 'За год'),
(6434, '317013c4898b12ffff6ef2ffe5b25485', 'ru-RU', '98713d5d0ab193465443f2a712a34b3a', 'Недавно зарегистрированные'),
(6435, '46c2bc74051edcd3b031441762ed90c5', 'ru-RU', '2557491405dd96ce43f55a3133cfd1fe', 'За последние 30 дней'),
(6436, 'e574d568730ffe0a5023538cc6c26642', 'ru-RU', 'bbbabdbe1b262f75d99d62880b953be1', 'Роль'),
(6437, '09152023368ad1c2ee4f5d67886913a7', 'ru-RU', '47afd921e4525cb5fa1141a3b0f2f8b0', 'Выберите тариф'),
(6438, 'afb3e10ba3b0f747d5103f34670a5e16', 'ru-RU', '80919be0413cba91ea1c240ca12ee13a', 'Регистрация'),
(6439, '6bc86d3d4c6977a6d4c506656ad029cc', 'ru-RU', '2faec1f9f8cc7f8f40d521c4dd574f49', 'Включено'),
(6440, 'af44ec6a53a61e7a8eb7fd3e35baee6b', 'ru-RU', 'bcfaccebf745acfd5e75351095a5394a', 'Отключено'),
(6441, 'c3bf626632cb4bce3912034c0b212124', 'ru-RU', '82c873d74c55b79a0a2f909ac2a216fe', 'Требуется проверка e-mail'),
(6442, '92157725f3e121ff85712b922b8bc1e9', 'ru-RU', 'be546fa8668ed1db33bfd3dfc9d543c3', 'Пользователь может изменить e-mail'),
(6443, 'cc20fa5aee5938d900da01c09e4c6c77', 'ru-RU', '83e57b4b1895501252f9189c3c234790', 'Секретный ключ сайта'),
(6444, '5734d5c565fa649560ab307b4aa68915', 'ru-RU', '37c485c8d229d4b72128bc0e06b6064f', 'Логин Facebook'),
(6445, '852731199f0e966d9393b96891ca3218', 'ru-RU', 'bf2e46a30059973d25f67373b2983a79', 'Страницы в социальной сети'),
(6446, '2a9baeebdeb36a11528c81ec9544aa04', 'ru-RU', '0f2d5a209d1b447c2408eb16c6d8bac5', 'Настройки соц. сетей'),
(6447, 'c3afc1576ba352ebded428763fbab447', 'ru-RU', 'f4f70727dc34561dfde1a3c529b6205c', 'Настройки'),
(6448, 'd2d789d462d1fbd1cdddea161b8500dd', 'ru-RU', 'de62775a71fc2bf7a13d7530ae24a7ed', 'Общие настройки'),
(6449, 'a6c6b82357c5abcfc1ec3874c0a1f5e8', 'ru-RU', '0db377921f4ce762c62526131097968f', 'Общие'),
(6450, 'fbf82d2f12c5087978f9ab5ed53d91ea', 'ru-RU', '5ffade01fdaefb1ab262934f65ba66c1', 'Название сайта'),
(6451, '5e6781ba003ac4ba7ec01002e9de5fa7', 'ru-RU', '8e517fe6f026cc2a6993b1f8b95174c2', 'Описание сайта'),
(6452, 'b4e5a2adaddefd7a2cc5e60265bdc7f5', 'ru-RU', '9345b40520c58723bc8fadd985130eba', 'Ключевое слово сайта'),
(6453, '1b996ddf5d556dfec5a0bf37e1428dfc', 'ru-RU', '6e267fa5f7cb01057142356033e8805f', 'Иконка сайта'),
(6454, '8e717316e06ed2b7b7f7b9961bb384eb', 'ru-RU', 'e5cd8f3ce698f735be83243a463fc4b5', 'Метка сайта'),
(6455, 'f49c88945dcefcc5d60ca7c0c924cb3a', 'ru-RU', '835986c76ac73675b7b202ceca9c5817', 'Белый логотип сайта'),
(6456, '04debd2c13e7aa47ad05287abb16e26f', 'ru-RU', '9446596f724fadcb1af92ed0b5e687b5', 'Черный логотип сайта'),
(6457, 'b6051e3e7d58d019409a5a5c640f981f', 'ru-RU', '0615a38067b62382dc1667010669b238', 'Форматы'),
(6458, 'd9308c2c3a307d173add82b544d3a4fb', 'ru-RU', '44749712dbec183e983dcd78a7736c41', 'Дата'),
(6459, 'e5f0587b0514d82e9f047757f8eb8c60', 'ru-RU', 'a1af5f0718bfae275ce162362d0e43c5', 'Формат Дата-время'),
(6460, '55c9f174b6fa18d099fa029654895341', 'ru-RU', '71a1c5f19c8e300d350f5f68c71e4559', 'Удалить не удалось'),
(6461, 'd74b55bab9152b645d6a22818436d3fb', 'ru-RU', '722ad2d05ecf4868b00c5484b82fd808', 'Очередь'),
(6462, '09dd939e2fad7b4553f3a3c216785761', 'ru-RU', '9b9d8a976b42e0bd66381797644943d5', 'Опубликованные'),
(6463, '463cf40c7090c8fb460bbf50272665f4', 'ru-RU', '0774e163cd7df482edd2abd498189f8b', 'Неопубликованные'),
(6464, '284e22137906b2b8ecba27751cdb21a6', 'ru-RU', '611daa739e5ea2991965ff51878f9697', 'Расписание'),
(6465, '4643fb620c02fcdc544367bdb288f412', 'ru-RU', '123f78413847556274afd31351529df9', 'Все посты'),
(6466, '96bd33780de919cb916c089c825479e7', 'ru-RU', 'f2fb0b80c2c7e171cd27b2b79806772a', 'Удаление расписаний'),
(6467, '15141c57dba3d3662d2911e39f43d5a9', 'ru-RU', '3adbdb3ac060038aa0e6e6c138ef9873', 'Категория'),
(6468, '06fdd47f157e6f96dbf46833b5407f20', 'ru-RU', 'b1c94ca2fbc3e78fc30069c8d0f01680', 'Все'),
(6469, '4cd5f4ccc093906f40ade6b05cbe9e7b', 'ru-RU', 'f03864f046de9a6047f10ab8c818c179', 'Расписание для %s'),
(6470, '6dd6f103f1a44b08f2aea9f87522d8b6', 'ru-RU', 'a3824eb0533064953073384a35c740e7', 'Посмотреть публикацию'),
(6471, 'e4e36f612130d22813ef3412f0647b91', 'ru-RU', '8497430f75a70afd1c734149ffe6a1d3', 'Добавить публикацию'),
(6472, '85632c9d63b68886765544cff627609a', 'ru-RU', 'ccdb7bf9d93e5652b57cabcc8c41e061', 'Расписание'),
(6473, '91e48daaee9499295723bd7a87e472af', 'ru-RU', 'e68564f23e0e939acea76dc3d2bc01bf', 'Янв'),
(6474, '336a362122646dab94d177d1e5c14f2e', 'ru-RU', 'ea171d540ccd5f0669171ef06d3cd848', 'Фев'),
(6475, 'b671c74bbcbd040eda5c8b722193ee6d', 'ru-RU', '7ce6b2286a5396e614b8484105d277e0', 'Мар'),
(6476, '14b1aef835496e304200b123bd653340', 'ru-RU', '6d7215c4b3bc4716d026ac46c6d9ae64', 'Апр'),
(6477, 'e8c8416fd9454d3475789685311e4566', 'ru-RU', '195fbb57ffe7449796d23466085ce6d8', 'Май'),
(6478, 'aa01b0f07daf5efe4e52947dee23284b', 'ru-RU', 'eb4b40c1221dad5b23fe7ef84d292be1', 'Июн'),
(6479, '5441dc0e4ac620ef3febc5d24ddf8e39', 'ru-RU', 'a2866cd6efaa65c92278d4771a9eaec7', 'Июл'),
(6480, '3474a20da964ff3dcfacade227a42bb2', 'ru-RU', '22f1a4667604b8557c9b209c201b4bc6', 'Авг'),
(6481, '386ee20da9c91984d94cfc27d8602732', 'ru-RU', 'f04aa7019c490474fa3ce16e93501b57', 'Сент'),
(6482, 'ea8c59730b95d89520efaef90f78989c', 'ru-RU', '594be08882c8e9d5efb9eeb62f303744', 'Окт'),
(6483, '1ce172011f3975cc9deac523744488fd', 'ru-RU', '343e6957be77c6247aa2b8d0deb68bd6', 'Ноя'),
(6484, '1614d85ddc5dbbd2616d491dbdc4c8c4', 'ru-RU', 'd207b4e0bce42a8f1555ce3a05e287f6', 'Дек'),
(6485, 'fbdc1e138eadce8aa56aa0856c61c08f', 'ru-RU', 'ef6572e4cd58bb39a3f4e82fc64fe9f0', 'Вс'),
(6486, 'cc26f498d0d7225675b111ac8c96c265', 'ru-RU', 'fd29458ae58ac32a2d8734ed90ad51ec', 'Пн'),
(6487, '253d7bb9650a7f2fa5a5aca33787f37f', 'ru-RU', '2ddecde85408faf230652444db78cb72', 'Вт'),
(6488, '55ce511d2230c3fef77ce415918afeb8', 'ru-RU', '510c292b1686eb070d9e90a575f74106', 'Ср'),
(6489, 'c70adee3427073f380db9836bf5c3648', 'ru-RU', 'ed5e8353dfc585f4c6b3a55d1a9fc01d', 'Чт'),
(6490, 'b46481434964cab3dda23e8e7f48a8b3', 'ru-RU', 'ac616f844b9a5ea5a827bf7fb99b1ad5', 'Пт'),
(6491, '5268e9d753d6fb7f67204719a9c71cd6', 'ru-RU', '13c7d2d737f81f7bf89aed9fbcd0ad55', 'Суб'),
(6492, '5738c01db5dc3d1d0082d17e26bf13dc', 'ru-RU', '10ac3d04253ef7e1ddc73e6091c0cd55', 'След.'),
(6493, '0428c878181e37888a7bf4a3a31c06ba', 'ru-RU', '366e1709da15a89acc57bfcbba721cbe', 'Пред.'),
(6494, '60d9faae0801b34625784d86692cdb49', 'ru-RU', 'f92965e2c8a7afb3c1b9a5c09a263636', 'Готово'),
(6495, '0d78e5f3dfab1dc0c8b35f8cb9561dc1', 'ru-RU', '86f5978d9b80124f509bdb71786e929e', 'Январь'),
(6496, '6ade73e9535f950a2a3df6c246b63d33', 'ru-RU', '659e59f062c75f81259d22786d6c44aa', 'Февраль'),
(6497, 'd65cbd6576d38a42541b40e9ebb2ca8f', 'ru-RU', 'fa3e5edac607a88d8fd7ecb9d6d67424', 'Март'),
(6498, 'cd75316eddfa8de37d09f0c8992975b6', 'ru-RU', '3fcf026bbfffb63fb24b8de9d0446949', 'Апрель'),
(6499, '1abab292927557f2768c1f96fddb7545', 'ru-RU', '688937ccaf2a2b0c45a1c9bbba09698d', 'Май'),
(6500, 'e558274fbf61820c887e3027bb94d243', 'ru-RU', '1b539f6f34e8503c97f6d3421346b63c', 'Июнь'),
(6501, '293f219ec5010aa6b381c8dab804bacb', 'ru-RU', '41ba70891fb6f39327d8ccb9b1dafb84', 'Июль'),
(6502, 'f30596dfcdb96c06c853e5c9a8866797', 'ru-RU', 'cc5d90569e1c8313c2b1c2aab1401174', 'Сентябрь'),
(6503, '9e69c5f34ee58f5e8e8e4bff7ea6ad01', 'ru-RU', 'eca60ae8611369fe28a02e2ab8c5d12e', 'Октябрь'),
(6504, '2b8a44914f6c370af30c3b88c06e71f0', 'ru-RU', '7e823b37564da492ca1629b4732289a8', 'Ноябрь'),
(6505, 'ee61792123ec891fc27fdd42b2040424', 'ru-RU', '82331503174acbae012b2004f6431fa5', 'Декабрь'),
(6506, '7211d7c0266831fe423ef1005000a174', 'ru-RU', '9d1a0949c39e66a0cd65240bc0ac9177', 'Воскресенье'),
(6507, 'da30d1ddd4bc290cf857c2fe5895061b', 'ru-RU', '6f8522e0610541f1ef215a22ffa66ff6', 'Понедельник'),
(6508, 'e5c3c18ff8317943b7bc6ac9e679b112', 'ru-RU', '5792315f09a5d54fb7e3d066672b507f', 'Вторник'),
(6509, 'ed418a2c7744cd36b35b7ace839a73de', 'ru-RU', '796c163589f295373e171842f37265d5', 'Среда'),
(6510, '825651974d6aaca87e683eee99d9fde3', 'ru-RU', '78ae6f0cd191d25147e252dc54768238', 'Четверг'),
(6511, 'd9dd6c5f108dec163d45683ebcb38bc9', 'ru-RU', 'c33b138a163847cdb6caeeb7c9a126b4', 'Пятница'),
(6512, '23d5f08e0e410d53088b3160d6a71e52', 'ru-RU', '8b7051187b9191cdcdae6ed5a10e5adc', 'Суббота'),
(6513, '898816eec8969bf1148c3d5e5fd658f2', 'ru-RU', 'f72c915d8f575a5c0999b5f37b6d99b7', 'Вс'),
(6514, '70e57d1f441fa56bafd8922b95028ed6', 'ru-RU', 'c08df9bb5fb44242a6291b1eee5d09ad', 'Пн'),
(6515, 'c4a279b43ab3cd43d30c3b1bcb7d0d43', 'ru-RU', '080502c4fa636ac639bf42b6d2ba01d7', 'Вт'),
(6516, 'fab8c44c98b42b969eb8fa5aa14d98cb', 'ru-RU', '485c47a81eb6e3998ec05aca48eda184', 'Ср'),
(6517, '80830f0027b247424a4962683f0f600a', 'ru-RU', 'eeeb9a8eb45dd351d9ec0eb4acce66ce', 'Чт'),
(6518, 'be4ecfab446eb4bd89d81955a0f238cd', 'ru-RU', 'fa717ba17306cd76900510df8ac8013e', 'Пт'),
(6519, '04e0366e1a571c54cf85b61f01f47977', 'ru-RU', 'e55bb1ae59b6a64858a85a2f48c53036', 'Суб'),
(6520, '55f49ae3f7847e2daf83ee4957df0ff6', 'ru-RU', '46dd4094320d81541aa9812f43f81a11', 'Нед.'),
(6521, '0ecdd65369ba6858b7569e4f47f8a3af', 'ru-RU', '1e1cc9bdeb2f29f5480106aec7e9bc48', 'Сейчас'),
(6522, '090fde702999d2134a58c7b47efb4b1b', 'ru-RU', '3964fd83339fec5014c831822005653a', 'Выберите время'),
(6523, '2d37c1decb9cdd55aa94ea7515bb8873', 'ru-RU', 'a76d4ef5f3f6a672bbfab2865563e530', 'Время'),
(6524, '4381e9cfb1bcd942cf043d9f79813003', 'ru-RU', 'b55e509c697e4cca0e1d160a7806698f', 'Часы'),
(6525, '2435e290fe5c91efbe9a2415576cca01', 'ru-RU', '62902641c38f3a4a8eb3212454360e24', 'Минуты'),
(6526, '4b1b3e1f7dc110d60cf1e94b064058a6', 'ru-RU', 'c22cf8376b1893dcfcef0649fe1a7d87', 'Секунды'),
(6527, '36c6cb239b0e8400abca3920d91819e7', 'ru-RU', '988bbeeb80e7e0a6b4651aab5a76b413', 'Миллисекунды'),
(6528, '28777019a75174039ae30d56367c3a94', 'ru-RU', '1f14b3811ca5de688daa740d8471249e', 'Микросекунды'),
(6529, 'edc7d9cdabc737a36bcc866155317d94', 'ru-RU', '45c10605e0a492fbe7a3eac258cd1e81', 'Часовой пояс'),
(6530, '304cb7b17057c79f2b9f9ce5189dc07a', 'ru-RU', '11174109e63c6779f278081c8e748e50', 'Системные прокси'),
(6531, '5e69795a8d52a1d20a267d7828eb2111', 'ru-RU', 'f56ec2ab97d604832d90f6394e3f341f', 'Прокси'),
(6532, '7c24cbe4c2786a73c7b613e5f6bc269a', 'ru-RU', 'ce5bf551379459c1c61d2a204061c455', 'Местоположение'),
(6533, '5e437ddaa9adfa5195929ad8aae5eb30', 'ru-RU', '70eea8031965da74ff0f349ffcd4e98f', 'Этот прокси уже существует'),
(6534, '1ab1ba4fba370fe95a13912409caeaa1', 'ru-RU', '3840b8cf9c344435a55ccb12a6cb6189', 'Неверный или нерабочий прокси-сервер'),
(6535, 'afd7ffc87169b1a766d2af68a574a03e', 'ru-RU', '88183b946cc5f0e8c96b2e66e1c74a7e', 'Неизвестно'),
(6536, 'e7c78e6761ccbfc3df6bd23270d19a2f', 'ru-RU', '989d8d054c7fc7bba243a4647aacc045', 'Формат прокси-сервера username:password@ip:port или ip:port'),
(6537, '5dd162f26c283b04314c70d1b832fa8f', 'ru-RU', '553bc221e0adce6fe21ff18b8ef43db2', 'Настройка прокси-серверов'),
(6538, 'a04ca71f238b38c025cb76bfa0790b51', 'ru-RU', '865b44009e5b9d9e322b767379ea7181', 'Пользователь может добавлять прокси-серверы'),
(6539, '11a27dc110b8c182e1c5746c2ca1597c', 'ru-RU', '25d068e385d4c7b28de19de914743685', 'Пользователь может использовать системные прокси-серверы'),
(6540, '8d8429175c801612399f772f952c5ef8', 'ru-RU', '121be05a55b52b405c302293d6d782cc', 'Не успешно'),
(6541, '2d52df4aa57c93408ae163c042999f47', 'ru-RU', 'cce99c598cfdb9773ab041d54c3d973a', 'Профиль'),
(6542, 'd4846ba5e98259f9007ef5ddd2cac21b', 'ru-RU', '08bd40c7543007ad06e4fce31618f6ec', 'Мой профиль'),
(6543, 'fc9516a99b92c06a6ab2133f6e12df5a', 'ru-RU', '0b39c5aca15b84b1ad53a94d6b3feb78', 'Изменить пароль'),
(6544, '4f666e9b8edd1a785ef48c959cec6999', 'ru-RU', 'd9c2d86a66aa5a45326c3757f3a272cc', 'Текущий пароль'),
(6545, '9c0582395bf79c81ed6d03878311f5bd', 'ru-RU', '39c8fef7f693688a2bf4dde48b5c910a', 'Ваш тариф'),
(6546, 'c1baf13f25a9f5d8672f60a835b54a9f', 'ru-RU', '5a787141d53b573ec9b86e900bfe0d79', 'Дата истечения срока действия'),
(6547, '6f837acf41cb0619ed21487a1f29fa23', 'ru-RU', '67cebfb85c019055659c9e591a0737f0', 'Отменить автоматические платежи'),
(6548, '9e29c728ae71d84f36634ffa6e465b92', 'ru-RU', 'f406b074f5a18844198f8c5807a64015', 'Обновить аккаунт'),
(6549, '1fbb3b511badbf6a8ba9aa29f21f8ec5', 'ru-RU', '729a51874fe901b092899e9e8b31c97a', 'Вы уверены?'),
(6550, '4eddac7c488b6f0caf2ce35844080c70', 'ru-RU', 'fa02393dd2853fa7e6e0e28df30a0043', 'Привет, %s'),
(6551, '69560394a78d963905f3c75bf9b1eda0', 'ru-RU', '0323de4f66a1700e2173e9bcdce02715', 'Выйти'),
(6552, 'd3a5ff57c642f299a16cc2a730012527', 'ru-RU', 'ff4cff2ee8654c497934bfd04ef2c007', 'Вернуться к администратору'),
(6553, '59c190e15ae51e37770b87fb0ef6d002', 'ru-RU', '7df9726e7bad876c2819aff21946b6eb', 'Настройка тарифов'),
(6554, 'b0a1e15fac0022fee1eb5d1cc1f9634d', 'ru-RU', '49ee3087348e8d44e1feda1917443987', 'Имя'),
(6555, 'e4bb926addaefe852c49807653f95153', 'ru-RU', 'b5a7adde1af5c87d7fd797b6245c2a39', 'Описание'),
(6556, '0238f0cebf99128cf8169371295cac76', 'ru-RU', '2ebd69a77e20dfa7b449a27cb4238b19', 'DEMO версия'),
(6557, '113c579a900b15a14faec4321ff158e5', 'ru-RU', '7b1d92d0b605bb1ea643accd09804009', 'Количество аккаунтов'),
(6558, '3a686a451e63f0832a000cba182bf66d', 'ru-RU', '474d0324f4a5866c86779e939f9c9303', 'Цена ежемесячно'),
(6559, '512fd0ebbfbf4447b59733520aa49ba1', 'ru-RU', 'be973957f3b826e4cb99dd686dda5ccc', 'Цена ежегодно'),
(6560, 'cebbe89b37d091765999168b6547f5f3', 'ru-RU', '47259eaaf0a0f806fa09ba5b06c23a1b', 'Информация о тарифе'),
(6561, '5029e828d5b33b40ef9d9a94bd4c49d1', 'ru-RU', 'd08ccf52b4cdd08e41cfb99ec42e0b29', 'Разрешения'),
(6562, '793649f0958b3be846059209c0a4b170', 'ru-RU', '2cc1943d4c0b46bfcf503a75c44f988b', 'Популярный'),
(6563, 'b9a9e0c346449b3f21ede537da3cccfd', 'ru-RU', '93cba07454f06a4a960172bbd6e2a435', 'Да'),
(6564, 'ed0178021d684b279d618b632cd01989', 'ru-RU', 'bafd7322c6e97d25b6299b5d6fe8920b', 'Нет'),
(6565, '9fe07005624f6d7a12aabd8e4a9a2806', 'ru-RU', 'e566fe9aef1502d69ccdbe28e1957535', 'Включить/Отключить'),
(6566, '078f7ef35a903d86846a21144303242e', 'ru-RU', '7f1f5704865feae4a903aa65afe2bb3c', 'Сохранить и обновить у Всех'),
(6567, '6dcf5b067aade2b0f88c663f865ff561', 'ru-RU', '5c1b6a4f7b977e2df04204f054771e95', 'Продлить Тариф'),
(6568, 'd7fff8604d07363a0d248392e1be4100', 'ru-RU', '24b227c9e2d8955a7b7f851baa203ddf', 'Срок действия Тарифа: %s'),
(6569, 'bd44f009a3bd0360841044d223360ace', 'ru-RU', '06adff46e18f53c214b5efac8b99782a', 'Срок действия вашей подписки истек. Продлите подписку'),
(6570, 'ec3f101d336f45d40fe7c020766a082c', 'ru-RU', '52ef9633d88a7480b3a938ff9eaa2a25', 'Другие'),
(6571, 'e6a7b8cecfa564fb32cc45fc659d1ca3', 'ru-RU', '81d23a3edce834c840eb8f50cba73e2a', 'Включить HTTPS'),
(6572, '7809192fb25d2e5234a9e83a7c24f79f', 'ru-RU', '46213fc975898aafc6a6ddbbaea5de73', 'Пожалуйста, убедитесь, что ваш сервер поддерживает SSL, прежде чем включить его'),
(6573, '8d824edde53505bed349c4f113ce30c4', 'ru-RU', '9d282b2b887e9528cc04a9d72354e12e', 'Встраиваемый код'),
(6574, '00c13f53ae803355089bdbc6414a1e3d', 'ru-RU', 'aa4bd08f7a87bd4b56e6c9e1b532de84', 'Расширения и темы'),
(6575, '2377aec460c985d9b5b5f1260d14a9fd', 'ru-RU', '608cf8320470cd2f7580aa6b04a7ce10', 'Эти расширения или темы уже установлены'),
(6576, 'e53880c41da89593c4a0d0a0f10f7897', 'ru-RU', '8825148caf7046078e314c129ad3f42f', 'Есть проблема по вашему запросу. Пожалуйста, убедитесь,что ваш сервер имеет достаточно разрешений для установки.'),
(6577, 'b6ab1a3ab05c65a295cce0cdf7ac0121', 'ru-RU', 'd2e43cbe7328d082c658443a317b839f', 'Во время установки возникла проблема'),
(6578, 'd6c32a5973a4d39440981dd11a3dde49', 'ru-RU', '46bdb5127ea5b79f43c37c40baef7932', 'Пожалуйста, включите расширение zip на вашем сервере, чтобы можно было установить'),
(6579, '7bae3d5ca1c39ccc175118f6c78b8aad', 'ru-RU', '99cc6997b30bf20055c666ad9dab8579', 'Не может считывать входные данные'),
(6580, '3653475cf4bdbb10573791aba395617c', 'ru-RU', 'b53c9c855cccdb4c6ef09f610e38ee9f', 'Не прописать цель'),
(6581, 'eefb1241fc2e471efa667e9d890a1b80', 'ru-RU', '8a4877e343868dbf7db1b99d6111a1a3', 'Эти продукты не существуют'),
(6582, '778fc24b6cf6540eca63aebb93761002', 'ru-RU', '2fbcfab6e3d811fda7e7b57dde86fd49', 'Установка модулей и тем'),
(6583, '6cca56d5e26d94d2814c8a35cd39d859', 'ru-RU', '3b0649c72650c313a357338dcdfb64ec', 'Примечание'),
(6584, 'd0b61a051b062003a5e89203ee3d4e66', 'ru-RU', 'b35470c6737405deed82aba5e17e7f73', 'Просто можно установить модули или темы'),
(6585, '309e532806c46e89dd420af27e797ad7', 'ru-RU', '817676a1a16e3f0e5e51bdd08195d40b', 'Не удается использовать для переустановки основной скрипт'),
(6586, 'bc5cead7ef755e58f3db75dec402ec5e', 'ru-RU', '6bc39f323553744f088fee9796846e60', 'Убедитесь, что ваш сервер не блокирует разрешения на установку'),
(6587, 'a77155f699f21b2b9bb9872435a9f561', 'ru-RU', 'd3d2e617335f08df83599665eef8a418', 'Закрыть'),
(6588, '4f27b89d41f9f0ab301cb001b98e22e4', 'ru-RU', '349838fb1d851d3e2014b9fe39203275', 'Установить'),
(6589, '001b721e358b6e859e614544db0bb04e', 'ru-RU', '4994a8ffeba4ac3140beb89e8d41f174', 'Язык'),
(6590, '60f20cc8477dfae458d54304c9308a64', 'ru-RU', 'ca0dbad92a874b2f69b549293387925e', 'Код'),
(6591, '4ccc89c9243dfb7a6facbad55712cda1', 'ru-RU', '0ba84225da76dbbff131e04071e88f73', 'Этот код уже существует'),
(6592, '780631b9c243351425867cba93cf3980', 'ru-RU', '817434295a673aed431435658b65d9a7', 'Иконка'),
(6593, '1c36715bfa844bbbe659f9435d4ff663', 'ru-RU', '3beab53b7f365bb81c4ec78cddc156dd', 'Этого языка не существует'),
(6594, '3093681e9d24b62cd0d253231426947b', 'ru-RU', 'deccbe4e9083c3b5f7cd2632722765bb', 'Перевести'),
(6595, 'a606149e9b84bfd7b91861c868d56406', 'ru-RU', '7a1920d61156abc05a60135aefe8bc67', 'По умолчанию'),
(6596, '1673c3cb2d1a63993c3fd4817d999c35', 'ru-RU', '72d6d7a1885885bb55a565fd1070581a', 'Импорт'),
(6597, '027fa09e1e236b79a42a2ff89245602b', 'ru-RU', 'e325fb2bd63497b77c1c46ee6a4001a0', 'Импорт успешно завершен'),
(6598, '10f03244631d1c14356798b9ad29facf', 'ru-RU', 'bf20dad9ee408d0d2876fb2e8c00f53f', 'Языковой пакет недействителен'),
(6599, '2aa4c5faa224ce44c7cde7dee1af5ecc', 'ru-RU', 'f230ce7c467ab27a08261c4556e595ef', 'Менеджер групп'),
(6600, '570aba55620df3d35a852206fc6319fe', 'ru-RU', '81c0674cf86bf0cabe1861867e5c9d88', 'Пожалуйста, выберите меньше, чем профиль'),
(6601, '9a37d024fe1aba6c7ee30ae68d9c5af7', 'ru-RU', 'a37ede293936e29279ed543129451ec3', 'Группы'),
(6602, '1f60a6416bacf5cc07df12f5de2bed59', 'ru-RU', 'c6155aaecccf794cd2a00fcc35898022', 'Имя группы'),
(6603, 'caa6d92d0dfa10cc0af2334c9941cb39', 'ru-RU', '0aba78aedc6eb77ef8cdd1fed303162b', 'Перетащите его вправо, чтобы выбрать, и влево, чтобы отменить выбор'),
(6604, '9783ea20770e7c4fd2de87546b8a7fec', 'ru-RU', 'ea56a3fc8efed558154fb233fd8acbda', 'Все аккаунты'),
(6605, 'cd0482e1cdebe54bfef4f30b1f48ab41', 'ru-RU', 'f9e5ff98b374127ff6e6c2807e9b7b4a', 'Выберите аккаунт'),
(6606, '559b63799ac1376d479a4eb0523e2187', 'ru-RU', 'ea4788705e6873b424c65e91c2846b19', 'Отменить'),
(6607, 'b7b15c35aec8ee9f30a3bb603f013edc', 'ru-RU', '2bd455d4f926e5c4478e256a8e99c836', 'Не удалось найти медиафайл!'),
(6608, '5554ed0e8ec6be5c4b5e2c8e11b43332', 'ru-RU', '004a990932b3437b9743cdcde2bc0fab', 'Не удалось получить тип файла!'),
(6609, '98626f95be4c261011a08d5ce6abdc07', 'ru-RU', '9190ffabfd6590dab2f23dc60ab1ee8f', 'Загружаемый тип файла не разрешен'),
(6610, '8f966279c802c25a0331bf10cac31040', 'ru-RU', '6217521cbe5a30675bbaeaa4be61f031', 'У вас нет разрешения на загрузку изображений'),
(6611, '05ad3ac527df7db3e793ec6b00693b3b', 'ru-RU', '710a4fe7fdc3246f4dbe4e91f032add0', 'У вас нет разрешения на загрузку видео'),
(6612, '4c2d16bcbe764cc1b7c022033f729264', 'ru-RU', '796ccf5f676f06fe6c2a1af3a2569e1e', 'Просто можете использовать изображения'),
(6613, '0446e093b2ea69e0d1660141a33d5fc6', 'ru-RU', '0f07e630ffa23ff2a1faa80a732d60d1', 'Просто можете использовать видео'),
(6614, 'eda970444cfaa2e3e9832d243dc4a423', 'ru-RU', '933a7ef6d483a9eb7280d934a895de5b', 'Не удалось загрузить файл'),
(6615, '758162bb3e020e01f7779a4ddebb2bb1', 'ru-RU', '50ae2c31306be69a7988602390684fa6', 'Невозможно загрузить файл размером более %sMB'),
(6616, '333b0e7ea524656c083d30992025c1a9', 'ru-RU', '9e8cf9f4f22b1ddc4a97b8b7faf697ef', 'Вы превысили допустимую квоту хранилища в %sMB'),
(6617, 'd40812c67e78c6ae0e02f6aca6c1e10b', 'ru-RU', '73b88faaa0d42dc575085c343e1d47d0', 'У вас нет разрешения на использование Google Диска'),
(6618, 'fd735b5b238592e7855c45f580c99fd1', 'ru-RU', 'dca9a14c4cb9344974018030dc04a0fc', 'Загрузка не удалась, повторите попытку позже'),
(6619, 'bab8416c5749cf0006804b8430cd0ff8', 'ru-RU', 'ea0404641d289fdb4e6088a3b8ddeb33', 'Заметки к медиафайлам'),
(6620, '472e16b2bcb996b1fa3a78fc61bafd48', 'ru-RU', '2d1611effbc5ab0c1ff0c773fbe3dfe1', 'Введите ключевое слово'),
(6621, '9db0910afb9b4c293773eff7a88b9fd0', 'ru-RU', '5ca219b54399500b176823f866ee1383', 'Тип медиафайла'),
(6622, 'f24debc73c8c1c00c50bc55389805a9a', 'ru-RU', '74b3df98d5d1417597328786482b6bad', 'Все медиафайлы'),
(6623, '5d7012f259383125c51687dacfe628ed', 'ru-RU', 'be53a0541a6d36f6ecb879fa2c584b08', 'Изображение'),
(6624, '1b8b5d243f584337d92e0a4c5e44d59d', 'ru-RU', '4f0b453b6577ef60d9e8e57c30005b7b', 'Информация о медиафайлах'),
(6625, 'f914f4be7468a59a6696bebfd4bb2cfa', 'ru-RU', 'fff0d600f8a0b5e19e88bfb821dd1157', 'Изображения'),
(6626, 'c6b6ff06493dcdebaae89650443bb310', 'ru-RU', '554cfab3938e21d9270bd6b75931f96f', 'Видео'),
(6627, '828b2120d357b2b818b18c80fd52b92b', 'ru-RU', '2accc9250e2d377e3c573a5e069b69e5', '%s файлы'),
(6628, 'f6e9b47a3563d668626b0342b16278ef', 'ru-RU', 'b45d4ac69bc12d5503c52d7a65cb49e3', 'Введите url медиафайла'),
(6629, 'ff69a2d582fe4dcff03fba680761dea4', 'ru-RU', '45e96c0a422ce8a1a6ec1bd5eb9625c6', 'Выбрать все'),
(6630, 'acb5965ef16ce1b2eefdc62dc08adcb4', 'ru-RU', 'ddda55b80f65cae4157306794a168c37', 'Отменить выделение всех'),
(6631, 'af54be850328950a17780705d787852e', 'ru-RU', 'a254c25adc7d10d7e9c4889484f875a5', 'Подробности'),
(6632, '71ddf1ece31e444b8835fa6b79ab0aeb', 'ru-RU', 'b7c161bb87bb0308fb25e6f68d0a5632', 'Миниатюра'),
(6633, 'ed7a98e48c2172ecb1ca4548a8bb03f8', 'ru-RU', 'e2638644c5de6338d3858279fd7fb8f1', 'Ваш браузер не поддерживает видео тег.'),
(6634, '83c6e0651c98e84f7c50ea7907b15215', 'ru-RU', '86f03349e5a9b0b36155770fefcb687a', 'Файловый менеджер'),
(6635, 'a33cfa13cfc655288c474d418e956711', 'ru-RU', 'f62ef472ce6cd891d4dfd0dc0ed926f7', 'Файловый менеджер'),
(6636, '19ff403673ec755468235f8f3197288f', 'ru-RU', 'ad554e604fabcafe7e35f4826c907425', 'Максимальный размер хранилища (MB)'),
(6637, 'de742929eb3d72bbe994beead774fa8e', 'ru-RU', '339f1fd6617fe2a634679fdabb5983f3', 'Максимальный размер файла (MB)'),
(6638, '323341db2adfa667e424f2fc716b2c7e', 'ru-RU', '8dbc5fe2a0ec07ae4815a0365d40c1b3', 'Расширенные настройки'),
(6639, '471aa863893f7322cb6e4ed6f193b208', 'ru-RU', '4131cca5ec58bc44ef23fff086a99ff2', 'Выбор файлов'),
(6640, 'ff7affe5662e480ac6ed33531df07d15', 'ru-RU', 'e539fd665e202f536325140d87d7bf72', 'Тип файла'),
(6641, 'c0a56e000082382e3e9f9880ec850d6d', 'ru-RU', 'b71cba76b52a1f46c33274fbd63c0778', 'Добавить'),
(6642, '6ce16dfd6c8930768dd60c968a429abd', 'ru-RU', '9775658ef10431ad9862abbe5ee4e43c', '%s фильтр медиафайлов'),
(6643, '5f6b0bafcf32dd8a77913a551ec7c074', 'ru-RU', 'ab0a44b7763dbe3966e9c71b7f3cc558', 'Нажмите на эту ссылку, чтобы создать приложение Dropbox:'),
(6644, 'd17896538b064a0fff74dc0393564d32', 'ru-RU', 'e7957b29b6ec691042d91cada7a108f8', 'Design bold app id'),
(6645, '954f4ae33a16ea254caf212714320c62', 'ru-RU', 'bb9dcf525c88efc7115dd231e18da73b', 'Нажмите на эту ссылку, чтобы создать приложение Google:'),
(6646, 'c2d8f8fb2af9526e0de0241400828223', 'ru-RU', '6d5c6b52a4fbbd984bcf312eb095c9d7', 'Напоминания о продлении срока действия'),
(6647, '10931fcc9cd201cb1a5cd3c519eae050', 'ru-RU', '8624a9ad4e0acb27d41e8e6c7f74faf9', 'Один раз/день'),
(6648, 'b69839039e2893a16bd3d7cdb1fcc313', 'ru-RU', '73be97858912ef87f7a91b8a1451e9f9', 'Настройка почтового сервера'),
(6649, '66f74152e07d10adce2dfd70ee4a8b1e', 'ru-RU', '13a44cb3c08c1c40a3c5b62152538ee8', 'E-mail шаблон'),
(6650, 'f74f89d1d951ca336e2ca9b7808cd7d7', 'ru-RU', '6077ba750e13911cdc66d4725e30087c', 'E-mail от'),
(6651, '18957e86971f07e9710eda58032d4c5f', 'ru-RU', '221e705c06e231636fdbccfdd14f4d5c', 'Ваше имя'),
(6652, '2f56a9ac6a28670a6ba88a231d455d40', 'ru-RU', 'e082d878dd8867bacd0b6ee66f36fbf9', 'E-mail протокол'),
(6653, '43b896725956dfa31ff311200143abbf', 'ru-RU', '4dfbb099eafd3c82e033bf92946d3ce6', 'Почта'),
(6654, 'ed1d6a36e95398fc39a8374966df2755', 'ru-RU', 'e88771848779176222264e08cd54f806', 'Настройка SMTP'),
(6655, '30a23fc02dac915caa0f53c69146c8d2', 'ru-RU', '2e97c522fea3ff212e662a50235bfdf5', 'SMTP сервер'),
(6656, 'ade738c0cbeb1e7f2f90a85931740899', 'ru-RU', '63ede2e53d7a100acb8f97a618bb70c8', 'SMTP Порт'),
(6657, '25388b76ffff5581e4b531784c650cb7', 'ru-RU', '336fff487168a9f8f056c92c41a7c813', 'SMTP шифрование'),
(6658, '76c87a8b091974a96af2d35b04886f81', 'ru-RU', '6adf97f83acf6453d4a6a4b1070f3754', 'Нет'),
(6659, '4614fc56c70f3013fe6bd940c430a6a2', 'ru-RU', 'a67ce68ccac082ad54a552bdbcb6ecd7', 'E-mail уведомления'),
(6660, '148d5ecb6b7121292d55e51df5fa6659', 'ru-RU', 'cd398a41e889e7c964b7e15396b51dd0', 'Приветственное письмо'),
(6661, '0351763a4fa5cff9d2d2955c17983187', 'ru-RU', '9b5638a72c8871a45d0499853e7e6906', 'Платеж прошел успешно'),
(6662, 'f6ef4e085f4ad584c49cef190f7ca290', 'ru-RU', '0d57f6ae12faef77617cdba3884b3e1b', 'В шаблоне сообщения можно использовать следующие теги шаблона:'),
(6663, 'fbcd1a22244aea092679295fb193fe79', 'ru-RU', '512668ffb3bdaba560c046c36a88e658', '{full_name} - отображает полное пользовательское имя'),
(6664, '2a52bb321cc829103a907e1db91c1379', 'ru-RU', '87e9274be53db0b79c772ec0c41e998d', '{email} - отображает e-mail пользователя'),
(6665, '50815f828a0c7c6e5bb53ec86fd42998', 'ru-RU', 'df23ed9f7004f969107a28e5ce3dd331', '{days_left} - отображает оставшиеся дни'),
(6666, 'a6f0f05c159667789a7f0d6a31ea9551', 'ru-RU', 'e05383902ccafde8d8c8ee3a8d5c93b1', '{expiration_date} - отображает дату истечения срока'),
(6667, '6a68e075257e0465eb8024ae645b5ac3', 'ru-RU', '08d9e543e294e9242b8f3c6472b1a3ab', '{activation_link} - отображает ссылку активации'),
(6668, 'd7d6aac14e9d64d910ec202d4b4bd264', 'ru-RU', '4c84eb3b96d621b49465cb2dc71bdd78', '{website_name} - отображает имя веб-сайта'),
(6669, '80f60e60fb308b4ca761a4fc87d186e4', 'ru-RU', 'f7f94297619a8a78c387584142f13121', '{recovery_password_link} - отображает ссылку восстановления пароля'),
(6670, '4049bde777d43cbe77b25806abf8998d', 'ru-RU', 'c7892ebbb139886662c6f2fc8c450710', 'Тема'),
(6671, 'e7718793ff6068bf40f3a5f591228493', 'ru-RU', 'f15c1cae7882448b3fb0404682e17e61', 'Содержание'),
(6672, '06f6d4f5c3f2fa7ed9f869b8df409286', 'ru-RU', 'eb81114f7cb909e9679b00a658133c85', 'Оплата прошла успешно'),
(6673, 'f1d1d973b4f8bd50c47a3727dd7c7a73', 'ru-RU', '5b5a4197ca80657a8845429730156c6f', '{website_link} - получить ссылку на сайт'),
(6674, '55cade84ce5b9a00eb1fb07e5a3bd4d1', 'ru-RU', '348797c854ebe35ed040f00917bc8a98', '{pricing_page} - получить ссылку на страницу с ценами'),
(6675, 'e899b60d936c93c175e1ec1dd5740caa', 'ru-RU', '4b1b4dc8cf38b3c64b1d657da8f5ac8c', 'Отчет'),
(6676, 'aabe983450064ff110fa749c7b56ff82', 'ru-RU', '7b596b44ed412bb168741e7230b03d8b', 'Команды крона'),
(6677, '18f9b034bf523182a8bf0aca2a5980d9', 'ru-RU', '272ba7d164aa836995be6319a698be84', 'Описание'),
(6678, 'a45c41235a4ccf015bf64054b06618eb', 'ru-RU', '7599c66624447e81fba0b73e9f43203d', 'Список заголовков'),
(6679, '7451cb1f4ca9b4efa4623e1ee0335f98', 'ru-RU', 'd380bc4996db846896ea499b9bd495dd', 'Получить идентификатор продукта Beamer можно здесь:'),
(6680, '8af183fdb718b7c1bf1458e8df405dc3', 'ru-RU', '7a262cb0d3d917313c8ba12f996fe83c', 'Важный:'),
(6681, '18895cfd9c022143474acaf189a0db3d', 'ru-RU', 'be8d1f91bb457a932b1a4af0fcbd2373', 'Установить поле HTML SELECTOR можно здесь:'),
(6682, 'e4fd4dd43c559028aa8c1ec923c7304b', 'ru-RU', 'e7cf0c042bb35c701919d18e70bebd26', 'Идентификатор продукта Beamer'),
(6683, 'd02a02490bed88128a772a6d4a27e858', 'ru-RU', '96d008db67fc0b5551a926842bbb6a71', 'Уведомление'),
(6684, 'ec17c04e15f9c3d129e05b2637298a19', 'ru-RU', 'ec211f7c20af43e742bf2570c3cb84f9', 'Добавить'),
(6685, '2103c12e7f1bd7bfc68c22218548e335', 'ru-RU', 'a2606d9010e36899047fe8dc979d9a85', 'Design bold - визуальный редактор'),
(6686, '5fda47b7582cd130a46aca8635f47f75', 'ru-RU', 'bd60c369a2a177b7fb40b0c56b699e8b', 'Стандартное меню'),
(6687, '452cf7c576e2b9a7aed69376b754b058', 'ru-RU', '4970bb4b549101caa7155cd33840c0e8', 'Цвет меню'),
(6688, 'c08c2275cafffd9c19022bc3902629b5', 'ru-RU', 'eee0168be69b854c20621fc6f01cc3fc', 'Скрывающееся'),
(6689, 'c9868c7200f33eba11f44203f35924ba', 'ru-RU', 'd741b8147e94b397bc82ca205f9f927d', 'Широкое'),
(6690, '80cf69a087cb4f0e53ec219ec1e253d9', 'ru-RU', '9914a0ce04a7b7b6a8e39bec55064b82', 'Свтелое'),
(6691, '164dc4f488583de7947556ed4465a5c9', 'ru-RU', 'a18366b217ebf811ad1886e4f4f865b2', 'Темное'),
(6692, 'e3007328d5bf427d0dcf0f0f8326d779', 'ru-RU', '11beb7884b10d709fb06b932a8f03771', 'Цветные иконки'),
(6693, 'c29f3bff49dacc5b32691dddac295a62', 'ru-RU', 'ecc62f310a7f88d92b471d35ba484d4e', 'Включить лендинг'),
(6694, '2d4377b0ed833d9b2d27bededd01c14c', 'ru-RU', '4b01d143f2670ddb850fd1b03aa726be', 'Шаблон лендинга'),
(6695, 'cc8ae723d9d9ed933a27b297b5a186d2', 'ru-RU', 'c9f2b66508eca21a5b6fa083268d1832', 'Ваш тариф не позволяет добавлять Вам больше аккаунтов'),
(6696, 'a5f048958c154ac9f013c89196cc0658', 'ru-RU', '053a5873e93e7a7e07ee03775c084835', 'На вашем тарифе вы можете добавить только %s аккаунтов соц. сетей.'),
(6697, 'e2d8526f1b6bb967ee7fe67cc4d232f8', 'ru-RU', 'fd1db4ebc1768305bf1bb6b61964bf8c', 'Ваши профили'),
(6698, '26c205f640dd07f9234e8359426e5a38', 'ru-RU', '77f9467d493beef3290972d1b2e76df6', 'Нужно перезайти'),
(6699, 'b0958194aecaf9499738773967be5316', 'ru-RU', 'ea60dd0dd5e4278aa90a3f4905f77a19', 'Добавить аккаунт'),
(6700, '08d2a1bb6bdc9e625279ec491a9a910b', 'ru-RU', 'b212547016fe31b3d7b3cffa9fdb815b', 'Youtube аккаунты'),
(6701, 'cb9644c1b2b02ce57befc3ab49dbee58', 'ru-RU', 'c9f86063b018b59332a292eba9f2e0ee', 'Youtube аккаунт'),
(6702, '76c084a55e06f59f833cc7b4eeb30479', 'ru-RU', 'b6637dcd10d7684ff25faa88523af57c', 'Нет профиля для добавления'),
(6703, '79207f663235c86786d15a0371a580d8', 'ru-RU', 'f6f19ef7395310905371b14ab9b2a84a', 'Пожалуйста выберите профиль'),
(6704, '6549b5667ae773fd96c402c68a47b862', 'ru-RU', 'f1cf662021b67634d732cf273d213978', 'Добавить Youtube канал'),
(6705, 'f213957b6e99752afe9719628f8f855c', 'ru-RU', '600e95f3ce0908869001d0ef9817d7d3', 'Добавить'),
(6706, 'eaa924f09e49c5619b73705d6c3181c9', 'ru-RU', '38c8debb9863b54f39cee380aea176ec', 'Выберите профиль, которым хотите управлять'),
(6707, '5361c83990e4803d64e6e53031145be4', 'ru-RU', '0979eb439b3be4ee2ea654fe79ba2a98', 'Если вы не видите свои профили, попытайтесь повторно подключиться, принять все разрешения и убедиться, что вы вошли в правильный профиль.'),
(6708, '1e776c338af1c1c37622ece225d251c1', 'ru-RU', 'f1d31732b15066dcfa7113af3d2b91f7', 'Перезайти в Youtube'),
(6709, 'ad847e8c4c4c5628e884f7b1ffa1e222', 'ru-RU', '5728e8a9af2ed5da3c0ae1cd5ecab738', 'Youtube Стрим'),
(6710, '816812763d0a212c6b2b1263c053b7f7', 'ru-RU', '3ff26e53fe489fd8a5d292c58ac232ff', 'Выбрать видео'),
(6711, 'c77b77a3debff0774425a2d1414c3028', 'ru-RU', '89074fb5992bdad282cf0d0a6baa53b4', 'Установите FFMPEG и FFPROBE на ваш сервер'),
(6712, '8f95de972ed3966bb495b3c2cb64fe03', 'ru-RU', '21d6948b2c5a65af07235c1add9c33eb', 'Пожалуйста, выберите хотя бы один профиль'),
(6713, '490a5208454dec6cb0a58a3085859d68', 'ru-RU', '300433e7b1799e99a4a392b4193e699a', 'Выберите видео'),
(6714, '8a767d3c29d7aa6b00bc5aa535594072', 'ru-RU', 'b78a3223503896721cca1303f776159b', 'Название'),
(6715, '264f8ac12bec0f63196c9180258cece3', 'ru-RU', '00d9a10351c5eb873ded844bf739a1b7', 'Время публикации'),
(6716, 'aed2bee17a838027c8a84a3a7f681cff', 'ru-RU', '9484de11f40466685de198ad036d08f3', 'Автоповторение поста'),
(6717, '47cf6b8c0326e5325663b19a78571588', 'ru-RU', '9acdd22bfbf262a98f0e7be933dd9d2c', 'Окончание повторения'),
(6718, '8ada218265e59f878f845f3567962548', 'ru-RU', '152bac8d22386bbdaa233468d6a34ff7', 'Время публикации должно быть меньше текущего'),
(6719, '8a7805bb665b06a47bc70c1ef57bd238', 'ru-RU', '30e5e4934f92c63be60a0d397fede834', 'Время публикации должно быть больше, чем текущее время может показать расписание в профиле'),
(6720, 'a12fe77ae6dd02f90a0b6ad393afedb5', 'ru-RU', 'beea9e3aad70e5bc9721a56144541463', 'Этот профиль не существует'),
(6721, '390758a880b983b0ea736e81d61874e9', 'ru-RU', '4f961d3abbc05575b9fe64941f7ddf44', 'Один раз в минуту'),
(6722, 'a9167e715746ec38f038a575d2132a5f', 'ru-RU', 'd88d4985db7fc7c5125aada7271b8cf5', 'Ошибка обновления поста'),
(6723, 'c068c1792508e9a2de38786aa5a70129', 'ru-RU', '1cea23ad1aa140ed905864953d2cc83f', 'Успешно опубликовано в %d профилях'),
(6724, 'd9feefb4c3a23dc53222e9bf0a619fe3', 'ru-RU', 'f1de3b022dee9f99323c8ef89ef0779b', 'Успешно опубликовано в %d профилях и НЕ опубликовано в %d'),
(6725, '4724a86c3945fb597ec3219eb0644890', 'ru-RU', 'df6d709b7e4ba811e90028cc4ff6c47b', 'Успешно запланировано'),
(6726, '920ccd29f6cba3af182a64aabe616656', 'ru-RU', 'c9c93ba953f46753afe9b4efe1feb29e', 'Успешно'),
(6727, 'efb05d9a7c2e8c707e7cf15c3d90a6d8', 'ru-RU', 'd7c8c85bf79bbe1b7188497c32c3b0ca', 'Не удалось'),
(6728, '16b85b59f2d9e21652b9271f10d3d5fb', 'ru-RU', '96b0141273eabab320119c467cdcaf17', 'Всего'),
(6729, '8268ed5c35df60d49a5209c755218d64', 'ru-RU', '6b0f7393212e82a5f1c7e39690776f34', 'Введите название'),
(6730, 'f0825922ba0490bce63009c7845b1ccd', 'ru-RU', '1ef7ac2703a600fb37026e5d269aefee', 'Фильмы и анимация'),
(6731, '4b0dbeac130db09d308daed4562f6e4f', 'ru-RU', '107a99c2c1b3d81692018061d84b7ef0', 'Автомобили'),
(6732, '4678a10a98c82b32280dbfa859bf6e51', 'ru-RU', '47dcbd834e669233d7eb8a51456ed217', 'Музыка'),
(6733, '3889a3f448ad682fe3808357e190360c', 'ru-RU', '40b12d60707069285b47601ff28b4cf1', 'Животные'),
(6734, 'aefd29d3bd4f0808e281c61849854850', 'ru-RU', '918e180e06b96c76b7193c9fcb1cb312', 'Спорт'),
(6735, '351d896dd2548fcf09d8e6faf561d0df', 'ru-RU', '246cdee939b44dbc6fb17475735e4488', 'Путешествия'),
(6736, '424fa29c725fa12ba85a18d0da8f7c75', 'ru-RU', '9eed85ad420e3a3c986cdc6d7e77854d', 'Игры'),
(6737, '599515fbf10e31df2e18b555f561689b', 'ru-RU', '0345a0a02b6d92d0107566bbb4a675d5', 'Люди и блоги');
INSERT INTO `sp_language` (`id`, `ids`, `code`, `slug`, `text`) VALUES
(6738, 'c9395e9f1192d9000afc06a3f4d4629e', 'ru-RU', 'e6b99f24d056d03f20b4651f79fc640e', 'Юмор'),
(6739, 'bed1b36c5e3575000fa5423c538ec884', 'ru-RU', '336fdcf7d540e4b430a890b63da159c9', 'Развлечения'),
(6740, 'f45ce458d61cd742cd69ad9b009f9e8a', 'ru-RU', '7ff46628fd12820838bb8585b4a790d3', 'Новости и политика'),
(6741, 'ed442585a0553322cbaf3b523d27f1aa', 'ru-RU', '991db1fe8307f76162ec300af14e8d9a', 'Стиль'),
(6742, 'acd69d6b2fe94b3951769ce641e16151', 'ru-RU', 'de7a22a0c94aa64ba2449e520aa20c99', 'Образование'),
(6743, 'f851a8d31c34093455c89cd6646d7a38', 'ru-RU', '801c861a4f1fafee038559acdbf13ffe', 'Наука и технологии'),
(6744, '7bffd81b2e63990bebcc0d053738a131', 'ru-RU', 'e324d320d8d93bb36a2637d71e953e3c', 'Некоммерческие организации'),
(6745, '66b7369e250743293c30097f62f19bd7', 'ru-RU', 'b8b74c21032eaf0df1f45f8d4f2d9bc0', 'Показать расписание этого профиля'),
(6746, 'b45291612f1ba575e9539361e322498b', 'ru-RU', 'b96c3139c914d2bb871ccdb6ab695334', 'Статус публичности'),
(6747, 'a0fe4e86688090aa947140f6a60f21b8', 'ru-RU', '3d067bedfe2f4677470dd6ccf64d05ed', 'Публичный'),
(6748, '479476f96c50cff48b5253334db282ee', 'ru-RU', '47f9082fc380ca62d531096aa1d110f1', 'Приватный'),
(6749, '06ed19ad3d496e9f248813d7d197f59d', 'ru-RU', '189f63f277cd73395561651753563065', 'Теги'),
(6750, '3d9a0b3f4f1de86ddd80a3564c2e9830', 'ru-RU', '36dbace4f58995d6518610ec8f02e72e', 'видео,смех,улыбки'),
(6751, '77061df74df140ab7b8b0664180536af', 'ru-RU', 'b9be39d7edb282e6a133230dd69b57c2', 'Зациклить видео (раз)'),
(6752, '33fef0aa38afe95f57acf8e5692f7c97', 'ru-RU', '25f7347236b51a5eae4ba01a7862cb55', 'Запланировать'),
(6753, 'e74eedc0005d8ac5a8f572b85ee94306', 'ru-RU', '85a456b4ad86d5c37c3f2064f56d9cda', 'Повторная публикация (дней)'),
(6754, '2c2c877955fc4dd8faf5dbba42d04f49', 'ru-RU', '8cb5d0f6183976e90e2f59ca20ec023c', 'Укажите 0 чтобы отключить'),
(6755, 'b15da19c1edcbc57969afef7f0d57deb', 'ru-RU', '613b849400cebef9690a950ffa5bf6c5', 'Опубликовать'),
(6756, '29cdf370234c237a4083d759bfda6b71', 'ru-RU', '7079c72c21415131774625ba1d64f4b0', 'Мой аккаунт'),
(6757, '247fda187655d0d39ce1206210977f41', 'ru-RU', '6d1421ccce3c624c4df855ded4f89aaa', 'Опубликовано 10 марта, 2021'),
(6758, '0ae80c050f32e88f5ed29ec6c86c8520', 'ru-RU', '3e2c67109cb704099f297c5471a60f37', 'Аккаунты Vk'),
(6759, '2cb7add4b928ff2b07d7908931378404', 'ru-RU', '24621fe5a6b332e2fff37507e02419b4', 'Аккаунт Vk'),
(6760, 'e52e9387f3175f9a6fa685fe4656dd39', 'ru-RU', '92a7f077170c9754c5e77e17549f14d0', 'Введите код Vk'),
(6761, '88bb5f39d79a09debbaa4204bceffd67', 'ru-RU', 'fa09d6d9ef316f5f8c85f34a463544a2', 'Токен успешно установлен'),
(6762, '5f79123583f9d40d9df07d04cf159667', 'ru-RU', '530a7a048bd27f6c0f3d5d86a6c52a49', 'Конфигурация API Vk'),
(6763, '6c2f99ff73540eca3b03ccb0506ad5f5', 'ru-RU', 'a4ce29bca077c224deb03755ba7933df', 'Добавить аккаунт Vk'),
(6764, '158cbfc9a7df192c86eed5470ae84d2d', 'ru-RU', '7bf5b40d2cb13670976de310e562e556', 'Перезайти в аккаунт'),
(6765, '3bc2b46d21c62158a38c77d620d7ea1f', 'ru-RU', '5a97ec235d5c647cfbd982ce3f149043', 'Установить код'),
(6766, 'fb5479840781203ba159213558d3cd3f', 'ru-RU', '6145e5948ba096589dde0f2bdd6a380c', 'Получить код Vk'),
(6767, 'd7c32e7831dbf30d8cadb84fddeff9c8', 'ru-RU', '14edf80a18d1c8cd45f423878dbd9928', 'Перейдите в VK и скопируйте код доступа из адресной строки после #code='),
(6768, 'e86af6721719d7bacf7a7d2fe9ae33a9', 'ru-RU', '84ee307f3e7e8a33d2fcedc535e97265', 'Ввести код VK'),
(6769, 'e82927bf64ede2e3cba5fa38464dc13f', 'ru-RU', 'f2a5164fb10ef1832dd3dc0ce4afade6', 'Создайте приложение Vk app:'),
(6770, '982901761bb6bea4b314ad0bc77d20f0', 'ru-RU', '97e7c9a7d06eac006a28bf05467fcc8b', 'Ссылка'),
(6771, 'b8f95ce52c03f5cb87159c16cc6665d3', 'ru-RU', '9dffbf69ffba8bc38bc4e01abf4b1675', 'Текст'),
(6772, '0749c407c7fa248b48bcb075d919fa9b', 'ru-RU', '363c969ebde35c09236f5355c6dff165', 'Тип поста'),
(6773, '4d4e0700da92c55ee9ee8afa0cb54d1f', 'ru-RU', '58038ee4a4e2d0e2f764aa223fbecfae', 'Только что'),
(6774, 'aebb81b3ee0f678b256c7239cb39f4e5', 'ru-RU', '03d947a2158373c3b9d74325850cb8b9', 'Постинг'),
(6775, 'c90370d7133bc5c745ef206d24975940', 'ru-RU', '6af987759f8dd4f428533791673ba606', 'Страницы Vk'),
(6776, '3fcef31f3034f6a5790c3611800d5e4f', 'ru-RU', '73c49fdfe468c3d8839af09cb2d7d898', 'Страница Vk'),
(6777, '823d13533356570e8c9f24ac707a3dce', 'ru-RU', 'a5942712a9f66b1ab0c918d1b63b0d13', 'Добавить страницу Vk'),
(6778, 'c07ae9e9238a52b90d8805d11b78b307', 'ru-RU', '9342ebe1d10d9ff52b81fedd89f8a1ec', 'Группы Vk'),
(6779, '488388b58cde8d8d664626fc31cf86b3', 'ru-RU', '699baec181e2cc53fdf622a1d2a02784', 'Добавить группу Vk'),
(6780, 'f3e99b06ef219375b7a57c6f53fb7d71', 'ru-RU', 'b4141a94eb1d4887e9c6e5a3293e9405', 'Telegram постиг'),
(6781, 'daee42b69124a0c7dfd0308e43f0557c', 'ru-RU', 'aee9784c03b80d38d3271cde2b252b8d', 'Неизвестная ошибка'),
(6782, 'c6ee3fc6ea8c53a6c8a7f71e174124aa', 'ru-RU', '1e97cbf69ba21f2af84f5894aad8adb7', 'Группы Telegram'),
(6783, '8558b83f4b39a8292432d53d88ce050e', 'ru-RU', 'cc5df1e7da3df8b14877e3c5cdbadb9f', 'Группа Telegram'),
(6784, '39363500b40c8d262004163072e1457b', 'ru-RU', '1edca48aa6dc85927ed84afbedccf719', 'Укажите код доступа'),
(6785, 'cea92c8b71c5acdbad6b8be7a6f88666', 'ru-RU', 'e06d1ba70f1331e9f9a113cc2f887d3f', 'Не авторизован'),
(6786, '90a83eaad5051279004b4c7b46e7cf2f', 'ru-RU', 'ba82b06fa406946f78ece191edf9042d', 'Добавить группу Telegram'),
(6787, '10e1a9a48ebe2443143dfa372399c090', 'ru-RU', 'da6612098afcf6e303180b4b1f11a1f5', 'Как добавить группу'),
(6788, '857c8597960599c5c5f55f4b973128cd', 'ru-RU', '74ae5b8355405fb5be823ed3350189c2', 'Шаг 1. Добавьте бота как администратора в ваши группы'),
(6789, 'bedb47ee291bc6a2865e5435d9f5520b', 'ru-RU', '5898996884f77a0638ca5047bfc09fdc', 'Шаг 2. Отправьте сообщение группам, если хотите добавить'),
(6790, '08ec832a5cf09ad2ea0c06714b7fe65f', 'ru-RU', '1484052da87ea8ca82b9da340e10067f', 'Шаг 3. Обновите браузер'),
(6791, 'e5d6f8eb1ed039c76b2d9ad935eaa4ea', 'ru-RU', '6e0993fb522c3e2e7172ded7cf4de602', 'Перезайти в Telegram'),
(6792, 'bf484c1d92567b23b6898f26accf8091', 'ru-RU', 'c649de02d34915f1ab66208746dd7084', 'Введите свой токен доступа Telegram, чтобы добавить профиль'),
(6793, '3561947066044f763a5f6e93f6e21521', 'ru-RU', 'a8af80f4aa24c1cf66b61a85defee0ad', 'Создать Telegram бота'),
(6794, 'cca8cf44d1a52aac52ec3cb7b4dbc3d9', 'ru-RU', 'a270e6a714e23a2ace11e3dfac5f4290', 'Ваш токен доступа'),
(6795, '0f0a87e633d2111e385f0360aa2cbe47', 'ru-RU', '0d0ab142a9badcfea3386fe35d14d733', 'Шаг 1. Нажмите кнопку «Создать бота Telegram».'),
(6796, 'd85747d1c07dac48f3a00112d59c4cde', 'ru-RU', 'ee2cd087bbbe87e8bc986c90a5631150', 'Шаг 2: Чтобы создать нового бота Telegram, отправьте команду /newbot'),
(6797, 'd068803d382fa4187d6e17b81f2386d8', 'ru-RU', '7c17f7f717a7aaf4ef42496b3dfb5d05', 'Шаг 3. Дайте боту Telegram понятное имя.'),
(6798, '2558b3c3ae9446653ccb3d41144482a7', 'ru-RU', 'a83d8ad68731a7c696ed891238aa7e66', 'Шаг 4. Дайте боту Telegram уникальное имя пользователя.'),
(6799, 'ada83106849f126becdc368b138d5bb0', 'ru-RU', 'a569e32f14eeeeba77c0b5f37ca2b76a', 'Шаг 5: Скопируйте токен доступа бота Telegram.'),
(6800, 'b3524195597dfa0abfc01b38cada7f39', 'ru-RU', 'ba0ca0e27e5f09033e9db99b77ee7b96', 'Шаг 6. Введите токен доступа бота Telegram'),
(6801, '6e507c74dfc739b909549131b4710321', 'ru-RU', 'ad3aa7e68dc04466fb5f15c32109da13', 'Telegram каналы'),
(6802, '8056fcd2a9d47de8926cf4c35fe881a9', 'ru-RU', '98faee83f9fe1ae2285cb31baec60ee4', 'Telegram канал'),
(6803, '16c568fabd543e680835314e6385f726', 'ru-RU', 'eca0cbb69037e18f36fb972fcc7c5ba9', 'Мульти постинг'),
(6804, '0c77e77ebdcdd9bb3d89dfd433b5a635', 'ru-RU', 'cdbc7a773338998af05e797d34e421a7', 'Интервал между постами'),
(6805, '94730ad76ad5417efef279f8fdb2479e', 'ru-RU', '0bd096e861d99a61561c977760fce425', 'Добавить Telegram канал'),
(6806, '81c855a8655746d9d5818019946ed988', 'ru-RU', '7106edbe93bfa49d4e0d13912cd150a9', 'Шаг 1. Добавьте бота-администратора на свои каналы'),
(6807, 'a4aae04e3fe6d55601e71372f5ba957b', 'ru-RU', '08ba3207e238b36319a9c0bb1eb1909f', 'Шаг 2. Отправьте сообщение каналам, которые вы хотите добавить'),
(6808, 'b4bf8acc717286ed778e6f5cd899f07f', 'ru-RU', '5feb207e74b4c1506e45b48d7a5c2a8e', 'Выберите хотя бы один файл'),
(6809, 'c65b97820daefd4ee9f2a7a92c6057bf', 'ru-RU', '0de889146700e0d8950364c7c5c703c8', 'Выберите хотя бы одну картинку'),
(6810, '944d2e2a406cedf8d2247b2feabdac50', 'ru-RU', 'ab7f90c96d9b6db23985d41003163b0f', 'Выберите хотя бы две картинки'),
(6811, '983ea23db53d5e202a157e8d662c5a02', 'ru-RU', 'b8dcb473f33eb19a4701c36ac9cd85c0', 'Нельзя опубликовать в эту социальную сеть'),
(6812, 'bfcb078ca3e5c608ebab6f4231bfb8ef', 'ru-RU', 'f7f7c2727473b4ee3aec679db47d5055', 'Описание'),
(6813, 'cbf7dbc610452b482a2223d6a36302fa', 'ru-RU', '8b6f56c15b8b9db83c99041bd3f49251', 'Выбрать шаблон'),
(6814, '55c5b5d67e1bce373c1ca930ce5ff0e3', 'ru-RU', '0d4abcd9510b13d78a3025cdc129e58e', 'Сохранить шаблон'),
(6815, 'ee4d8d2d35222febc58cebb9e10e0103', 'ru-RU', '7a8470bcc1cda344e4be28605c1d3e38', 'Укажите ссылку'),
(6816, 'da5d9cd9f22ea63cb44e052db6b76742', 'ru-RU', '6fe76ae3544b6d9b64d89124506b1304', 'Новый пост'),
(6817, 'd4c9d709ae3287b0339dcae6796b834a', 'ru-RU', '048eacec6edf123f86282ff498e85e8e', 'Интервал между постами (в минутах)'),
(6818, 'f18e6c72ab3bb4136b0b15879b09e5eb', 'ru-RU', 'fb5eb9d4f9273b723c73ef375afe2fce', 'Ссылка'),
(6819, 'fd9528e7949a141ee7615cec66afd14c', 'ru-RU', '27df8a01e2744fc1bdbdc2cf1dcb77d2', 'Пустое расписание'),
(6820, 'c1520722cc833d644af1ce1297d5f5e8', 'ru-RU', '49fc330528ea4789a034419de168f67e', 'Расписание постов'),
(6821, '22d4dfd03f88ba1414307285190add0a', 'ru-RU', 'c3f71ac2d0b2c051eda5fb14b5c908b5', 'Отсутствует контент в следующих социальных сетях: %s'),
(6822, '86660b92e0f63ca321b696a0cdeb669d', 'ru-RU', '70d9be9b139893aa6c69b5e77e614311', 'Сохранить'),
(6823, '5832a31950d280617da423ed370eef3d', 'ru-RU', '42e66dfd1037a3eeeb668c8f9e7ed27e', 'Нет, продолжить'),
(6824, '705b19d2f11afe2eb10042864367efb1', 'ru-RU', '010e689d0b21f5b76baa8f6a2f8ca1a2', 'Да, я согласен'),
(6825, '431996ed1477cb592a9fe40868a4ce35', 'ru-RU', 'ef403635000b8ada6aca41ea538eed2c', 'Все отчеты'),
(6826, 'e7f0798640f538689877e45ff606ab8b', 'ru-RU', 'ca7ee5e04a36e75f988b78ac231c2e2a', 'Профили Ok'),
(6827, 'cd389ac6e783def8e85ff6c6879ca6d2', 'ru-RU', '305c264d1af5468b9be361dcfdf58c03', 'Профиль Ok'),
(6828, 'c1eba3c1628ed7088dd41a7e053014d5', 'ru-RU', '456b912b09f77d2f836b2dd67dcb31c9', 'Добавить группу Ok'),
(6829, '08714baa05ef8e39e2e693d072842ba0', 'ru-RU', '08558f5ae1bba0797b293fb0f16270aa', 'Перезайти в Ok'),
(6830, '5278bd1c2e733681075dcd0af6d984d9', 'ru-RU', '0be8406951cdfda82f00f79328cf4efc', 'Комментинг'),
(6831, '41732b1d07e764182498b81fac981b03', 'ru-RU', '98b82c200a2e309b24cb481970f3fcc4', 'Лайкинг'),
(6832, 'a0aa9c13ba385f81cfc86c1acc8d214b', 'ru-RU', 'd9ad794fc993784fa7442cce33384535', 'Неопределенная ошибка'),
(6833, '50631800eda7b05c708b9e8801979311', 'ru-RU', 'bb9b284af99dcb275e308733026e0edc', 'Instagram профили'),
(6834, 'd7bb5ecf505ef5825ba1a7c3d527c20c', 'ru-RU', '2ac2edd9496ddbb9efcc7aece4d7b2de', 'Instagram профиль'),
(6835, '26e5bbecc6a568617c6ce537f64ee092', 'ru-RU', 'b913b6a06a5769eb5ee0e1bd494b7f94', 'Уведомления от Beamer'),
(6836, 'a30ff4179437dede30b70de205e6a9af', 'ru-RU', 'a1c58e94227389415de133efdf78ea6e', 'Внешний вид'),
(6837, 'cf401ba5efc44439b72a26f6ba31d8fd', 'ru-RU', '5d5e8eefd0fc3292c3251672eeb30b7d', 'Эта социальная сеть не поддерживает данный тип постов'),
(6838, '7c2472968ba91700cdf20e70cd956264', 'ru-RU', '1ad9a1dc7701fc4ebd459ed59c6ba764', 'Укажите профиль'),
(6839, '0128065a4f4db19c6164c613716ff09d', 'ru-RU', '4dd7bae0785b21bfd727800bb07c672e', 'Пожалуйста, введите имя пользователя Instagram вместо e-mail адреса'),
(6840, '59970f2ed759704d883e338c518be2f7', 'ru-RU', 'cd2e4130badcf11d6a4c84baca76a383', 'Войдите в Ваш аккаунт инстаграм и подтвердите авторизацию с нового устройства'),
(6841, '48e02392ccf2b808c2526ccac73228bb', 'ru-RU', '9fc6eba9ff53bef0f90d3e35e57a5fef', 'Ваша учетная запись была отключена за нарушение условий Instagram'),
(6842, '87df8f023696c3322f96762ff580e1e5', 'ru-RU', '239ab0e4052dc75a9919b80fc6ad8901', 'Ваша учетная запись заблокирована в Instagram API за спам или иное злоупотребление'),
(6843, '5246fdee4d70a921e0979595f049c75f', 'ru-RU', '4c70e2ebea3122bb60da754c62c3869e', 'Вы ввели неверный пароль, попробуйте еще раз'),
(6844, 'f9fd117a862c658c26ea38192dfc3842', 'ru-RU', '52fbe7a089bf2943ff25de6dc853d223', 'Перейдите на instagram.com, войдите в систему с этой учетной записью, а затем попробуйте добавить эту учетную запись еще раз.'),
(6845, 'adb07a59e81415a44c3ad703fb9333a5', 'ru-RU', '4393c3d94ec4931c7886bd23499c76c3', 'К сожалению, что-то пошло не так, попробуйте позже'),
(6846, '9161673d3b1b9ec20dc9662f82c1233e', 'ru-RU', '4e10e8fd81370812beaffbe27555777f', 'Введите шестизначный код отправленный на номер, заканчивающийся на %s'),
(6847, '6e8f93ea7a27ee5e0055804a7e7e0d44', 'ru-RU', '626e173ffa36974bad982733707facb7', 'Не удалось отправить код подтверждения, попробуйте еще раз позже'),
(6848, '98ac98c5b5e8ce5844526db77f621d1d', 'ru-RU', '4ca48c5de5b15375b8d688556aff8587', 'Введите 6-значный код, отправленный на e-mail %s'),
(6849, 'a7a426857934e279bac064e326b4695a', 'ru-RU', 'acc2af84736cf75315cbd26c9c9b65dc', 'Не удалось проверить код, попробуйте еще раз позже'),
(6850, 'e95c0f8136fcce22805337da65be7d50', 'ru-RU', '869b384c9520b0187a8ffe9611dfa43d', 'Возникла проблема с вашей учетной записью, попробуйте еще раз позже'),
(6851, 'f3dbd89bef85594bc627e6f8e1b44408', 'ru-RU', 'ae2cecc44f8d6b8b7c9f8e4698aa1dc7', 'Добавить профиль Instagram'),
(6852, '9d5a5b4731a6a2f2ac925ea08e3ad91b', 'ru-RU', 'ff35721b3524604db5deacf738eaa49f', 'Повторно подключитесь к Facebook'),
(6853, '3e2e9fbfa20373634e76e792fbf4463b', 'ru-RU', '3bc78d0a30a3d15889f5ca6e6ea92a1f', 'Логин и пароль'),
(6854, 'df1170d66f0bebbbf15b4b4d888fd7b9', 'ru-RU', '87b7760f14fbff78d8819291f36ab9a0', 'Кнопка'),
(6855, 'e833a7b0d9e317a702473bcff4c4b89f', 'ru-RU', '460820311aba3e97af34f1ae71a6741d', 'Instagram логин'),
(6856, 'ba14ab9e6ee5e1bd797d512dc1c39880', 'ru-RU', '7443b5b3a0b2c96ba9a552eaa846b192', 'Instagram пароль'),
(6857, '0e9fee265dc008aae2c1b44cf09e3714', 'ru-RU', '1316379096c85e48ae3c8426e1536ed4', 'Код безопасности'),
(6858, '0dae1897fcb5623c5bd0583d79b23415', 'ru-RU', 'dfcbc97f1d21b9867e68fa7179492c4c', 'Код верификации'),
(6859, 'f816b0746c597944dfb34acdc3d61a3b', 'ru-RU', 'f614b31b6a2ab565ea20c21f4c87c1ce', 'Войдите в Instagram через'),
(6860, '99f05cf65bef4b8040bb6521f13283e9', 'ru-RU', 'db4bda203ad38a7eb6ae6dc0c9362ea3', 'Получите код безопасности Instagram через'),
(6861, '6c71a623fa25746c914822e20c1a204c', 'ru-RU', '00af11bc13681211addf6990f13e02ce', 'Путь к FFMPEG'),
(6862, 'f1895eef8244f9a6a24a3fc446116391', 'ru-RU', '23c0480bbe656ce1d4f747358af030a9', 'Путь к FFPROBE'),
(6863, 'ae8ed27229e5f4d74cb31387d47e42e8', 'ru-RU', 'd502f17038e6e826491f4e109c02d81b', 'Оставьте поле пустым, если вы не изменили путь ffmpeg по умолчанию на своем сервере.'),
(6864, 'ddc9ab5aa0e5403416f6c485fe69c704', 'ru-RU', '46429aaf3f1888b5217823202f809cc7', 'Оставьте поле пустым, если вы не изменили путь ffprobe по умолчанию на своем сервере.'),
(6865, 'eedcff70efde7ab828e139ebc7174122', 'ru-RU', '2defae59ac884ac341c4dd699e566b7e', 'Авторизуйтесь в Instagram через кнопку'),
(6866, 'bc1b2ee3aceb5ea201e3f0e03d1e3c7f', 'ru-RU', '9421f8ebedb29705c995fcf2a358ebee', 'Перейдите по ссылке, чтобы создать приложение Facebook:'),
(6867, '9858825e218c98317e8fe1a2485c14f0', 'ru-RU', '83c754695eee55beb148d18138137e5b', 'Постинг в Instagram'),
(6868, '54e2b9eabef5512a2eb54e88930cdb72', 'ru-RU', '3b563524fdb17b4a86590470d40bef74', 'Пост'),
(6869, 'c42c2370f631f4a90fa3dcb9763b2d76', 'ru-RU', 'dfba89a600b608b2b724efe1f06f599a', 'Сторис'),
(6870, '8a2b334bd2d964d92559c4851915239b', 'ru-RU', '225bf3d9290b5f536b2e442259e78652', 'Карусель'),
(6871, '21e4289149378c3cfca668578b3ce532', 'ru-RU', '757e22afbb4bc60c8573199ab8020e3b', 'Для постинга требуется изображение или видео'),
(6872, '02f442bc34ce5b3298568a73c0bcbf82', 'ru-RU', 'f5fafbad0c7d434bde3629be069a5f76', 'Система не поддерживает размещение видео'),
(6873, '2a6731a212739c3c1f20d16f27c9a0ac', 'ru-RU', 'd2c51a3531b82662e6678b990aec8140', 'Укажите локацию'),
(6874, '5488465efabb354b87ed7279cb84d906', 'ru-RU', '1243daf593fa297e07ab03bf06d925af', 'Поиск...'),
(6875, '3aa198437715f54c32b41d26605f1f7f', 'ru-RU', '901f1c70b5026c662bc67a3b07bfc20a', 'Добавьте первый комментарий к посту'),
(6876, '54379304c72fcef8a2a1c76ad737b9db', 'ru-RU', 'bf0c85bf1b5ae5e8a25d490297d2df3d', 'Укажите ссылку для сторис'),
(6877, 'b0b6fa594d2c0e5e0732d6e4fc1c3359', 'ru-RU', 'c3edcf2cedbd4ce230fd6d4ea8915718', 'Добавить комментарий'),
(6878, '02dd7355e5cb5415e198968c0d784f17', 'ru-RU', 'fb1f7c32864aa1cb6baee5b8e67e8730', 'Закрыть историю для близких друзей'),
(6879, '5ed91351174f8af201d0cc5846a472bf', 'ru-RU', '0cf81f9038402e85910cfad17d0051b3', '1 сек.'),
(6880, '9d20914380bff26e200d9c86b918eff3', 'ru-RU', '3f2b96ac98759d4f7d6322671c9c3d33', 'Директ мессенджер'),
(6881, '83be321364c2a1a353637624fa6d0733', 'ru-RU', '9e9347be97990a570ff7b452c1a12328', 'Директ мессенджер'),
(6882, 'faa8266cbc82f153d092cad056eae133', 'ru-RU', '208195218f30693c2f50e766b08f568f', 'Ошибка отправки сообщения'),
(6883, 'fdcba7b8a1f5146334eaf87b242b6fbd', 'ru-RU', '67325c4a33aab9909d7409f999cb3c24', 'Ошибка удаления сообщения'),
(6884, '2c23907550b4cd833c54d765d69e96ec', 'ru-RU', '78c037a1e134ed89ff4d899a7c51090f', 'Ошибка скрытия сообщения'),
(6885, 'adab063f6172a29f34dcf9c4404256b1', 'ru-RU', '48abd7fae8de549e4271afaf506bb800', 'Введите ключевое слово'),
(6886, 'b01a8902f68fe2f9599c174b8b3b0d82', 'ru-RU', '44f0fe23a7b0a6431262f6bfd5719219', 'Выберите аккаунт'),
(6887, 'f1fd170e0d56efbd3373f3692c30cb9c', 'ru-RU', '2c38980cdda1cc30a9d4c48e82bfd485', 'Выберите Ваш аккаунт'),
(6888, '52ad1b699ad8e07832a473d6dd7b6b43', 'ru-RU', 'aa4b6d96f7d56cff2d23bd9182bbd2bd', 'Сообщение...'),
(6889, 'fe85e8288ac5d13743774994ee2a7d82', 'ru-RU', '6e634d5fd198f86b8b1627d01c633000', 'Поиск пользователя инстаграм'),
(6890, '484126b0ba0cbff8a8ed6433a77c4d0c', 'ru-RU', '62a5e490880a92eef74f167d9dc6dca0', 'Скрыть'),
(6891, '858819fa9b076a7685b45726f9eba7bd', 'ru-RU', 'b55a2d6e1009d3881156a3495dd26de5', 'Новое сообщение'),
(6892, 'fa3d7880420cf0737c37784d1522a321', 'ru-RU', '2239b6802704f5d897b9f9bf5fb3fabe', 'Аналитика аккаунта'),
(6893, '6f1174840b011649f1c88bffb972b41e', 'ru-RU', 'a768caa988605a2846599cf7e2d0c26a', 'Аналитика'),
(6894, 'd269ef1432a6b508648eae34309236ca', 'ru-RU', '1f2ef7d9cc4271d2a8e264467021d79f', '%s постов'),
(6895, 'a65975093a285ae08214fac53196ef54', 'ru-RU', '48e9cb36b7257957053b43aa81c2e126', '%s подписчиков'),
(6896, '3b7a483c88584f93b0ec821d6cc01c61', 'ru-RU', '86a979b2d8ff26288db783cd2c158574', '%s подписок'),
(6897, 'f2d8bec63ea89257c4f69009572961e6', 'ru-RU', 'de26c62223ce98e23de862f4dc458dca', 'Аналитика аккаунта %s'),
(6898, 'a6f60afbc8eab775d74e0e7dc3e19c22', 'ru-RU', 'be5a751188e4906c28d90691cbcb59c0', 'Уровень вовлеченности - это количество активных лайков / комментариев к каждой публикации.'),
(6899, '425f855be76bf7b118a6f1c8648149f5', 'ru-RU', 'f034ccfdba0f830ec14d37f73be77578', 'Вовлеченность'),
(6900, '950d6f063b7d11c81abb0a19bb95ab43', 'ru-RU', 'ba7e44633dcb8142cba21a5b940bb2b3', 'Среднее к-во Лайков'),
(6901, '4428ede3ef710f0e8cfff5531a7cafaa', 'ru-RU', 'fce901d066567bf6cbf33caad5a2eeb2', 'Среднее к-во комментов'),
(6902, '4483c6a852cc5c50083d97baaab0e2a9', 'ru-RU', '78f864deb53680560c94f750f63c6940', 'Среднее количество лайков для последних 10 постов'),
(6903, 'c25a71140aac295f3e187970e5e19412', 'ru-RU', '09d42d40bb146df4033e4a7afda5f70a', 'Среднее количество комментариев для последних 10 постов'),
(6904, 'f4a9f8588e9168b0b5082cc3b29239ba', 'ru-RU', 'b4af86465b40eaea83304d05219ba157', 'Узнайте, как ваш профиль рос и менялся с течением времени.'),
(6905, 'ca2075f78d3cff0767219f33d94e0bc3', 'ru-RU', 'd300a81dca590408259d81184156cc36', 'Графики прироста подписчиков и подписок'),
(6906, 'b781989b2f1269add5fdfda0a7f9ea50', 'ru-RU', '1186b8b1df309a9644c60e61b8199ccf', 'График прироста подписчиков'),
(6907, '70d0819bf0f7e9388e2acd3a18e5b837', 'ru-RU', 'b0dc43e93193399397e5bc88abc935d5', 'График прироста подписок'),
(6908, '994d122b3a0a0839ec60abfe26eb5acd', 'ru-RU', '212a366b71e5ca11994622fcefb8ac5f', 'Суммарная статистика аккаунта'),
(6909, '5265587674d0e941484030fb318418ec', 'ru-RU', 'bc90ec701b47bda89ac23875b3b12ca3', 'Показаны последние 15 записей.'),
(6910, 'f235335ce61e645ebcfa630e05834e90', 'ru-RU', 'd32d5d6c4817b9a7b90cc4a97303eec1', 'Подписки'),
(6911, '06803bb8af01ec1287d1808df7e0b9d2', 'ru-RU', '6f796b0e6deb4f4c2c0ee0ed5e10e117', 'Подписчики'),
(6912, '81ee07cdadc398bd57909d1e353b0bd4', 'ru-RU', '5dc52ca9ffdc26147075682c92a0a853', 'Посты'),
(6913, 'a2717f460206ba6e38947ed2a9e055ae', 'ru-RU', '305a8c69fbc7624cbd019ae899f8b1d2', 'Сравните новых подписчиков и диаграмму развития подписок'),
(6914, '3434479e4727434ac7ac4677a389bbd6', 'ru-RU', '8547083ec6267b415ff8d28ec891f51a', 'Сравните общее количество подписок и диаграмму развития подписок'),
(6915, '1d857e838f49a4e42737eed3d9f4147c', 'ru-RU', '7aa2d1efbbdf84996ec87808dbf1668c', 'Средний уровень вовлеченности'),
(6916, 'cff52d77c680024c57ac7393ecf77662', 'ru-RU', '6758029332db3f00822f6ab19a47777c', 'График средней вовлеченности'),
(6917, 'a23142914f0395799ac79edf22dcfb9a', 'ru-RU', 'bd1e8ad172b57db051347a98f0d34eb3', 'Прогнозы на будущее'),
(6918, '2cd66d2230c84194a6b0a800e2c5ed72', 'ru-RU', 'cff58f45aca7427c170f4fe0630a53d1', 'Здесь вы можете увидеть приблизительные прогнозы на будущее, основанные на средних показателях за предыдущие дни.'),
(6919, 'bd7ffd34fc896f247d0bf9cfed8634d8', 'ru-RU', '1c9473c288abc0f881f70fba3c11829e', 'Время до'),
(6920, 'abcd05d6ce747edcf464dc7bcf350cc2', 'ru-RU', 'e70c8bf5237e43211d37eb95873d7fd3', 'Текущая статистика'),
(6921, '2bdd571c2868889e146f7ac2281ebb88', 'ru-RU', '44fdec47036f482b68b748f9d786801b', 'дни'),
(6922, '16eb368f63040837bfc7ff67d32e5d49', 'ru-RU', 'da36cfaf48b9e19896e23e1207040d1e', 'месяци'),
(6923, '3aedbf6dc123ea2eda3e2794b8ddaad2', 'ru-RU', '84cdc76cabf41bd7c961f6ab12f117d8', 'год'),
(6924, '826757c0409677be6fdb7d84ebeed2d2', 'ru-RU', '74d62a2c76b528f180869b562599eb5a', 'полтора года'),
(6925, '11d99e43467baff5660393b200fd01a5', 'ru-RU', '75aeb98e5241592ad6a6c2c4c78a16ef', 'лет'),
(6926, '960650777021ff1a3219667b0159f8ec', 'ru-RU', '0056836c249f68da60706b3c7711d89f', 'На основе среднего'),
(6927, '75b7955698dd905ed78b0e7ca96c9e7b', 'ru-RU', 'd1798fefbf2fd8ecb3b2c4044c148f64', '%s подписчиков/день'),
(6928, '357440216422dcf941eb264de3fca62a', 'ru-RU', 'fa5939681a3ef463c7cc753c89843f37', '%s постов/день'),
(6929, '6dfba023760e7f6e005a8a1ccff876f2', 'ru-RU', '84852612dcb285b647c63a1320e9a2b5', 'Недостаточно данных для составления прогнозов на будущее, вернитесь завтра.'),
(6930, '75266c26f20469cd113135a3063896c3', 'ru-RU', '65e8f01b50efb105e8de013146685760', 'ТОП постов'),
(6931, 'bebd0d717f5f3708c87587c8a8e10508', 'ru-RU', 'f554975d96353a5272fea4c95d100665', 'ТОП постов из последних 10'),
(6932, '1993389200aa9bb9b8b1da94d5b62199', 'ru-RU', '74b118ea1bb0f9449147032410056e57', 'ТОП упоминаний'),
(6933, '4aeabeba40dbb0874832bfacb7d90a75', 'ru-RU', '30c3b0c9aa1b70ed6e5f42c73e302e04', 'ТОП упоминаний из последних 10 постов'),
(6934, 'c12cb99a4133be10048ffbbe4cf3d53c', 'ru-RU', '534c41f605a5da201193fd54f3ff1a18', 'ТОП хештегов'),
(6935, 'b1f084b71e3c76fd7e36f93b83031158', 'ru-RU', '1b4f6409452ca653ba6e473232bdced5', 'ТОП хештегов з последних 10 постов'),
(6936, '39fae68e486e7437dfcbc688941e6d07', 'ru-RU', '76fdc615ef1a9999d8c444364ae305fe', 'Инстаграм автоматизация'),
(6937, '4d4b302be1e2a66d41a2b204ec00b27d', 'ru-RU', 'ecfc2dffe568c10a67dbc6d3724cfde2', 'Автоматизация'),
(6938, 'ff3f7413f1b6b569eb3012d63613205b', 'ru-RU', 'ea371969b772b2f5b6b5ec5c6df2fce2', 'Возникла временная проблема с вашим запросом'),
(6939, '6dd5fc025b5c341364f8b5c44c9812b6', 'ru-RU', '0c91ef8ddddcdca677c8fc6331358bb3', 'Пожалуйста, выберите хотя бы один тег, чтобы начать'),
(6940, '84feb3c5234a58d8fba3695d46caef82', 'ru-RU', '66c58b85909b9f17711b003eae58270b', 'Пожалуйста, введите хотя бы один комментарий, чтобы начать'),
(6941, 'adc55ac4eec5dbd2ab0b02d9ed566ed5', 'ru-RU', '841a27ff7006c4ad20667495fd90ff3d', 'Пожалуйста, введите хотя бы одно сообщение, чтобы начать'),
(6942, 'f43725cd7216924a56d327bab484526c', 'ru-RU', 'daaf81beb14673db18bd22e25c266cb1', 'Пожалуйста, выберите хотя бы одно место, чтобы начать'),
(6943, '41f74f0b3f16be9521d192d8bfb915c0', 'ru-RU', '36647c065f39079d46a23197d8c685fe', 'Пожалуйста, выберите хотя бы одно имя пользователя, чтобы начать'),
(6944, '4269b3a0d6bcf002b419a45d5dddfee0', 'ru-RU', 'ba71ae2e937a6d07be93572c86f15d8a', 'Допустимые значения 1-60 лайков в час'),
(6945, '0c751a36009aee806c3cde40f02e5be8', 'ru-RU', 'ff037425be6b3df3228bc5f2e9d67808', 'Допустимые значения 1-20 комментариев в час'),
(6946, '6059584f75ab02551214a374edb95a9d', 'ru-RU', '5e10a30451a0b14c4831cf5639b9662e', 'Допустимые значения 1-60 просмотров в час'),
(6947, 'bc91365ba4448a5abf577040d45449b3', 'ru-RU', '3e1ff2b0d5720def02dc41b7eb14f862', 'Допустимые значения 1-40 подписок в час'),
(6948, '196a8db2c24c976608072b21dd6720b9', 'ru-RU', '9180a56e836704fea2723eebc260fd52', 'Допустимые значения 1-40 отписок в час'),
(6949, '81a4709913c1777efee2496b9ad66e32', 'ru-RU', '6df1ca46dd21dcca119a31293c50e6f5', 'Допустимые значения 1-20 директ сообщений в час'),
(6950, '9b449a561be068605468fb7d422131d3', 'ru-RU', '62c6deb31b53133fda16a3412f5385e0', 'Допустимые значения 1-5 репостов в день'),
(6951, '6ecd44612387c922039f83a0dd3caf27', 'ru-RU', '4ffe6c783f78522a4f01d8e7324b1ed3', 'Выберите хотя бы один тег, чтобы начать репостинг'),
(6952, 'b532792d902d22e6f60a6bbbcb0779b4', 'ru-RU', 'da8a0c1733a79739a2906a1dbe78233e', 'Выберите хотя бы одну локацию, чтобы начать репостинг'),
(6953, '885d3108a16555f94f96f2a4dc2dd778', 'ru-RU', '51c92a4943fe8c69b52a7b0f277987e1', 'Выберите хотя бы одно имя пользователя, чтобы начать репостинг'),
(6954, '3b2fef290b85d17ef52a35ee7bde0a87', 'ru-RU', '517cc37a3cae5709bc11fe3cb4599d89', 'При изменении настроек все действия прекращаются. Нажмите кнопку Запуск, чтобы продолжить.'),
(6955, '25706ab086ddbc74b39bc3810daabb21', 'ru-RU', 'bd21734fa62bc2d6f944f9dd422589bf', 'Не запущено'),
(6956, '6e4d072ba6b83ce825be9c7d4f8cf552', 'ru-RU', '8428552d86c0d262a542a528af490afa', 'Запущено'),
(6957, '315fca185645e65f522210b7881542e8', 'ru-RU', 'c23e2b09ebe6bf4cb5e2a9abe85c0be2', 'Остановлено'),
(6958, '73df930053b283ca4a2dd271d8058296', 'ru-RU', 'fd1dd0c603be8170f9eae0be9f2f6afb', 'E-mail'),
(6959, '64184e45c03988708e76bbfdb2639124', 'ru-RU', '5a11d5e48d5496f8a51ee54388142142', 'Перейдите по ссылке для создания приложения в Ok'),
(6960, '7a21748db566ee3624dfce3df18c2eff', 'ru-RU', '73b151c73acc539f25ba92900c795ed7', 'Linkedin API не поддерживает постинг видео'),
(6961, '9a5e71fc811217ea495a507d6c63cdd3', 'ru-RU', '33d8042bd735c559cc3206f4bc99aedc', 'Сортировать по'),
(6962, '90809797d5d281b890aa2c8b1eca1210', 'ru-RU', '64a62a71194918a76e4941233abc5a6f', 'Лайкинг постов'),
(6963, '9e81abb6d9f2a7faa0e53f8a3c289200', 'ru-RU', 'f845b41c3616453912df33c6fb87ccec', 'Комментарии'),
(6964, '615b53227f0db573321ff6f9807d80cd', 'ru-RU', '1d549e2ae43f7d8374819b2ad2fdb942', 'Просмотр сторис'),
(6965, '47787eb5096fdcf3deb7adcf1bb452bd', 'ru-RU', 'fd3fbc65a3ef97ab0db95112d3bf58c7', 'Подписанные'),
(6966, 'b996a79e68ee16eb402f9467a78b34d2', 'ru-RU', '5756474e558cca98d41fad7590746cd1', 'Отписанные'),
(6967, '709f8e9b07b4fcf17d3e451f05bb17ba', 'ru-RU', '1569ffe3478450a6455e7720701d274d', 'Сообщение отправлено'),
(6968, '9c0a2e111468578951d4c74a6d0f78d5', 'ru-RU', 'b27a204d441769235e20bf0f7b64b4a9', 'Авто репост'),
(6969, '649554fbecd3487e90740e093d857697', 'ru-RU', 'f6039d44b29456b20f8f373155ae4973', 'Логин'),
(6970, 'c988bcbe8a3f8c4b5280cf685ac5e4aa', 'ru-RU', '3a0ef7f393fdd2f83c32f3a26a89f03a', 'Постов'),
(6971, '84c6de5b8570ea0221ea3bf0803fecdd', 'ru-RU', '24c714ccb3857346b52bfe17e287d210', 'Подписчики'),
(6972, '12570927e4ba5a5f16c2031ac364f248', 'ru-RU', '4e6251a059b431419f7090d66bcdc372', 'Последние 7 дней'),
(6973, 'fce2c89b66a467f3b29a58e0eb6011b9', 'ru-RU', '2a5c77e820698fee4c4458ed57011699', 'Лайки'),
(6974, '25019a65de3bf258941102cde3dce64d', 'ru-RU', 'e4acf7d05a0753c85622d9d807075557', 'Всего лайков'),
(6975, '2c0339c5e744691bc09bd0f124c91ab3', 'ru-RU', '35369171083869f8fad673ef6d04416b', 'Комментарии'),
(6976, '3af94be3b673150490351bf36763a913', 'ru-RU', 'c9e8696847cfa7828a2b7ee026bbe20f', 'Всего комментариев'),
(6977, 'aa951996ea6668eef93857c1f2a017c9', 'ru-RU', 'bc4cc36ce44c757885960c26734ceda0', 'Просмотр сторис'),
(6978, '944b4b2a5c7f1459d589c0bc43f32b7a', 'ru-RU', 'b686ca655eaaf18bba8a856c14ae8ccc', 'Всего просмотрено сторис'),
(6979, '905b801397644eee9f72e6fe40f9c421', 'ru-RU', '6b31786414edd0eccc4fb947e51a9e3b', 'Подписки'),
(6980, '0a4d3f03a237bcbe8e8e055db4cd1090', 'ru-RU', '183f64cd635793a7352b23990a09ebe7', 'Всего подписок на профили'),
(6981, '8f035e4c565694473cbd713a1f3618c0', 'ru-RU', 'baa05369180bdfac6cd5e4109e4b1d16', 'Отписки'),
(6982, '0f7d3bce09ee3c5f1acdbefce16b5aa5', 'ru-RU', '23f111f91155b116c2d3e274e63ca6af', 'Всего отписок от пользователей'),
(6983, '6fed4a0a32e72da2f8b30a981e968cc0', 'ru-RU', 'f942614dc8709d0e4de5abdbf874eb07', 'Директ сообщения'),
(6984, '1c8eb89dce4e20e81a272d3a1ee9147b', 'ru-RU', 'd74ed1421911977755987f876e0f0347', 'Всего директ сообщений'),
(6985, 'b2e55d97035d99e627f25f955f15bb37', 'ru-RU', '084eef73ca150e2ae2370fc5bdb22b38', 'Авто репосты'),
(6986, 'f409e657c2da54fb3499ab3dcacd6ce0', 'ru-RU', '836847ddb978ca0d0783b2bdc9a72c9a', 'Всего репостов'),
(6987, '0599f4a1032e0586ab00e4906438f684', 'ru-RU', '05b5e8a57ee5fd3f3922f0ec58710561', 'Время старта'),
(6988, 'a02bcd459e38c6eafa5b8083ce4e82ca', 'ru-RU', 'bfb6d359ed6ef0bc7b14a15498645a1e', 'Прошло времени с момента запуска задания'),
(6989, '2d6c7605e764d06686cba40ac146a263', 'ru-RU', '46e5852730f58fca0abbdd289af6fb85', 'Всего подписчиков'),
(6990, 'a7337cf604c7f4f2221bb5273494a66f', 'ru-RU', '6f643f2b44c9c9490c217cf8ea567b9b', 'Общее количество подписчиков'),
(6991, '312fd9dc5973243c2ced309f24cdedbc', 'ru-RU', 'c4536eba065ee51b5ad1b9c137195262', 'Просмотр сторис'),
(6992, 'c2b4f664512120c0d2c32b4773fc1002', 'ru-RU', '3903aab323863bd2e9b68218a7a65ebd', 'Подписки'),
(6993, '903285d2188bf373a62f90620551a784', 'ru-RU', '3596c1b1f7b1dfe805432d2d2a897f29', 'Отписки'),
(6994, 'b6ce431b820a81b31e7f4cb81183ba3c', 'ru-RU', 'bb63f28d09151cdc0f3a7bc789fd28a8', 'Директ сообщения'),
(6995, 'b282c486b575f2872a2ae144ea2333dc', 'ru-RU', '3b2998c3765b50e62906559b8ccc197c', 'Блеклист тегов'),
(6996, '1b20b66b93a2ef691e7baa7529462e55', 'ru-RU', '0450d266974d92724ff4bacc3a51952e', 'Удалить все'),
(6997, '401e403756c1bea690ac1a899beea958', 'ru-RU', '2ad5c0ee70d387a4949e104b40ea793d', 'Поиск тегов'),
(6998, '957c8673bf69524f56c09fd25267e4c1', 'ru-RU', 'e05ebd3bd3a792e4eaa5181f8234fb8b', 'Добавить списком'),
(6999, 'be98ae8227ebf993cb50e66376bfa21b', 'ru-RU', '006999a09a02f1df703ca7b7dda0eddc', 'Блеклист профилей'),
(7000, '84caeb2789065c4440727837af3dbd85', 'ru-RU', '41fa00338cd3ba1476e9fb3c6436fd8d', 'Блеклист ключевых слов'),
(7001, '2d1ff5814022df9ae6bd657c7e7b6fe8', 'ru-RU', '8e14becaa093f0a9f79d7e8ead8ea144', 'Введите слово'),
(7002, 'daaee811541fed16fa0dd02130cef935', 'ru-RU', '74651dc649f4704ec47f517b58c1cc29', 'Не комментировать дважды'),
(7003, '653f8155620ae63f4b5baaf4bb7ced37', 'ru-RU', '48425d0e5dc2f4f4be9fc24c960e39f8', 'Не комментировать дважды один и тот же пост, или один и тот же профиль.'),
(7004, 'cc66244125d9b578c8804e2a852b4ec8', 'ru-RU', '4e9ce95a0f4e750b14ad77bc86d62479', 'Введите Ваш комментарий'),
(7005, '5163eb0cbebbd1620b6360a907c27e74', 'ru-RU', 'd967d3aa061680dd91bd32ac5d6a2e0f', 'Добавьте хотя бы один комментарий, если вы включили функцию Комментига'),
(7006, 'ba07b53e7848c7e9095f9faa714aea99', 'ru-RU', '8413c683b4b27cc3f4dbd4c90329d8ba', 'Комментарии'),
(7007, '8e30d8c51d03a7d5c41ec99e00f9126c', 'ru-RU', 'ddbf46618042b31c8597b3ed0567d7b2', 'Отправлять сообщения'),
(7008, '6c90df9133518e0da334bc85a4e99746', 'ru-RU', '200c8937bcf1f0e9f03a73b6d502bd63', 'Новым подписчикам'),
(7009, '228db24d6488e1adbdcb6e451520722b', 'ru-RU', '91fadc5613280f76b916f1fd236e43e9', 'Из таргетинга'),
(7010, '43d9b94311b700214c36a45082c19e7a', 'ru-RU', '099b5787cd3df91eff27c9e159969162', 'Кому отправлять директ сообщения?<br/><br/><b>Новым подписчикам</b> — сообщения будут отправляться сразу, тем кто на Вас подписывается<br/><br/><b>Из таргетинга</b> — сообщения будут отправляться профилям подпадающим по настройки таргетинга'),
(7011, 'd6b03505435750b143026e82a30248a3', 'ru-RU', '68d390535e8a7120e3f6942d8a2214a0', 'Введите Ваше сообщение'),
(7012, '51b2f63b113306c395714a85f018d471', 'ru-RU', '018670edd0ac6e96b4c9f3baec26fc3b', 'Добавьте хотя бы одно сообщение, если Вы включили функцию Директ Сообщений'),
(7013, '2188d5f074a524da5eadc8bb889bcebe', 'ru-RU', '41de6d6cfb8953c021bbe4ba0701c8a1', 'Сообщения'),
(7014, '05d6ac7339f5e1091fe201a0a6076747', 'ru-RU', '8087852f028d09dbef6c5434d8537829', 'Возраст постов'),
(7015, 'e043a804f263f39809fe77cb08952ff6', 'ru-RU', '82b83b71d1b935e15f6eb9c99b8a5487', 'Этот параметр поможет вам выбрать возраст постов, с которыми вы хотите взаимодействовать. От самого нового к самому старому.'),
(7016, 'ce41de69cb6f3d849875fb1226194143', 'ru-RU', 'ed36a1ef76a59ee3f15180e0441188ad', 'Все варианты'),
(7017, '18abc80cb768a5148bdbfe7fa8a94d73', 'ru-RU', 'ac71d8452c267207bcf9f1c93c6419e8', 'Новые'),
(7018, 'a74fb3c200ccc309d159a0f43b37732c', 'ru-RU', '21ff05570d361fe86c0060a77c3e509b', '1 час'),
(7019, 'd11d4720fc4d6bbf03ff4b68889dbf1c', 'ru-RU', 'a32d6f77b4cd387776263c94eaaa52ff', '12 часов'),
(7020, '1f06a6f83d61f435e53aa010b4acc46d', 'ru-RU', 'e3b481d5297f475abc283227bedbd9b9', '1 день'),
(7021, '7a522d4f2cc06f1f16995461fb65fb58', 'ru-RU', '45fe0d3293152fa29cf10ef8a3c1871d', '3 дня'),
(7022, 'ef7bcccfddde4948f453d02039407197', 'ru-RU', '705fbbd6e1667845569c00fd7523d343', '1 неделя'),
(7023, 'f953331393eabbf0bb10824fe1866838', 'ru-RU', 'a9adf02fea7b0107b5a712a45e51076a', '2 недели'),
(7024, '70bb2ecc032a31eef9cf8b95ff71f98f', 'ru-RU', '1634e66b522edaa910370cc5581a47f1', '1 месяц'),
(7025, 'e664b2d37d349d68dcd546e8a727b45b', 'ru-RU', 'b66930cdc16b3f509ee90c59ed296047', 'Тип постов'),
(7026, '817b4b2b200ec96871b820672c1b3b23', 'ru-RU', 'be87ac9b62f4bf6a9e24108df8210b5b', 'Этот параметр позволяет взаимодействовать только с определенным типом мультимедиа: фотографиями или видео.'),
(7027, 'ba6f39aa68ba1310532671252f3c91bf', 'ru-RU', '5daaf223b01f8f3e1bd9287170826fbc', 'Фото'),
(7028, '312f1209899ca83c36b264bdfcccead9', 'ru-RU', 'd48c9498e39c6658b28638bb05d6ad35', 'Минимум лайков'),
(7029, '8eceec51b9f7bd8471d23d4e3b77febc', 'ru-RU', '0fe4e89d44dcf41ad8ce65599983aef7', 'Используйте с фильтром <b>Максимум лайков</b><br/><br/>Минимальное значение: 0.<br/><br/>Укажите 0 чтобы отключить'),
(7030, '12890b3ea7d49c245cccd3d5daee8840', 'ru-RU', '7b1aab6ab0429db9d186f13f5b0febf0', 'Максимум лайков'),
(7031, '9955072370afeeb9dff40ca055d0e78c', 'ru-RU', '29248d01bee16c8d4744c39ebc243f94', 'Используйте с фильтром <b>Минимум лайков</b><br/><br/>Рекомендуется: 50-100.<br/><br/>Укажите 0 чтобы отключить'),
(7032, '79bbde51991661edff5ed57e16b27cf5', 'ru-RU', '39f98fee04e12735407be74c5963f5bb', 'Мин. комментариев'),
(7033, '08efc5a35ef359cfe672812057c90988', 'ru-RU', '5c8f9aa053731a3896e5779ef71eb152', 'Макс. комментариев'),
(7034, '31af0df47498e205088cbbaa85242a05', 'ru-RU', 'ce8ae9da5b7cd6c3df2929543a9af92d', 'E-mail'),
(7035, 'f04ead495deebad4c423dbf21445828c', 'ru-RU', '4f2c2c858340379920559bdd7079d895', 'Сфокусируйтесь на тех, кто больше всего следит за вашими постами'),
(7036, '14a1dddda49cb69eb0c006b4197c4772', 'ru-RU', '8cbb8b20befb4b2668b9b41ba83262eb', 'В эпоху жестокой конкуренции в интернете, важно использовать инструменты, которые позволят быстро и качественно взаимодействовать с вашими клиентами в социальных сетях.'),
(7037, 'a81191e266587090e9633e23010b8acf', 'ru-RU', 'df96d9825d4435f2089b4f249394a8be', 'Попробуйте абсолютно бесплатно. Данные карты вводить не нужно.'),
(7038, '9be8ff7cf5e0333a0fd144a91c7591eb', 'ru-RU', '0274a4c63543264feaade2c4bef375c1', 'Активация e-mail'),
(7039, '833f831fb701aba6da28fbb34a3df379', 'ru-RU', 'bcae115a3c517d2aba3947f58ac0911e', 'Разрешить добавлять профили для'),
(7040, '3450946826bb7c0da36bc976af057dd8', 'ru-RU', '2be69105420e373c6fb90d4a73f016e2', 'Будьте первым, кому это понравится'),
(7041, '0451e5ddd165f73527b67fca8118e499', 'ru-RU', '8f1c5319f9cd6068bb159ce8478fb8b3', 'Взаимодействуйте только с ресурсами, имеющими минимальное количество комментариев.<br/><br/>использовать его вместе с <b>Макс. фильтр комментариев</b> для установки желаемого диапазона популярности постов.<br/> <br/>рекомендуемое значение: 0.<br/> <br/>установите значение ноль, чтобы отключить этот фильтр.'),
(7042, 'c4247121eea32d69d5a019cd559d86aa', 'ru-RU', '33719faabd38953e2787a41a2927f610', 'Взаимодействуйте только со ресурсами, имеющими максимальное количество выбранных комментариев.<br/><br/>использовать его вместе с <b>мин. фильтр комментариев</b> для установки желаемого диапазона рейтинга популярности поста.<br/><br/>рекомендуемые значения: 20-50.<br/> < br/>установите значение ноль, чтобы отключить этот фильтр.'),
(7043, 'f0accbf90bf80760f9a22b8d43416ddf', 'ru-RU', '4ed444e9e4bf2f11a47b26852683727d', 'Мин. подписчиков'),
(7044, '6f3cbb769ea407e8db6bc46b70e9b718', 'ru-RU', 'd15305d7a4e34e02489c74a5ef542f36', 'Выключено'),
(7045, 'bbd7d26d6088f0b873f8d34cccfcdae8', 'ru-RU', '28d0edd045e05cf5af64e35ae0c4c6ef', 'Низкий'),
(7046, 'd2d1fae61855115f7f382c32ba4e08a1', 'ru-RU', '87f8a6ab85c9ced3702b4ea641ad4bb5', 'Средний'),
(7047, '9369bca14f6311cc8d6878284e82219a', 'ru-RU', '655d20c1ca69519ca647684edbb2db35', 'Высокий'),
(7048, '47bb9db74f0e67632dbe8c02b288c1a9', 'ru-RU', 'a27afbaa827f45020f1637fd9f8468fe', 'Подписчики/Подписки'),
(7049, 'e5cc5b7212de6c0935a1a51da0c3c7cd', 'ru-RU', 'cbbcd8c0a16c7134149f9c1eae558227', 'Подписки'),
(7050, '19078c1b6c9d370f15518de1875d72b6', 'ru-RU', '130c5b3473c57faa76e2a1c54e26f88e', 'Оба'),
(7051, '3a66125d3fc2bb4ed636c1447eda1acc', 'ru-RU', '2fc156beffcff3ead6b57dda21ff030e', 'Не подписываться на закрытые аккаунты'),
(7052, '04cda10bb6a3e4136c8f3e08b859365d', 'ru-RU', 'b01eba7c0d2bded39efebe23bad26e30', 'Взаимодействуйте только с пользователями, у которых есть минимальное выбранное количество подписчиков.<br/><br/>используйте его вместе с < b>Фильтром макс. количества подписчиков< / b > для установки желаемого диапазона популярности пользователей.<br/> < br/>рекомендуемые значения: 0-50.<br/> < br/>установите значение ноль, чтобы отключить этот фильтр.'),
(7053, 'c33a9a8b079ab9b1ee1eb5b6793113a9', 'ru-RU', '671790b40cdc52acac2c41e55f8ab304', 'Мин. подписчиков'),
(7054, '424a4b543f93c2a8659e8c0bfcfe6db0', 'ru-RU', 'c0e9e24c340f10780ca28944921b034f', 'Взаимодействуйте только с пользователями, у которых есть максимальное выбранное количество подписчиков.<br/><br/>используйте его вместе с < b>Фильтром мин. количества подписчиков</b>, чтобы установить необходимый диапазон популярность пользователей.<br/><br/>рекомендуемые значения: 300-500.<br/> < br/>установите значение ноль, чтобы отключить этот фильтр.'),
(7055, 'e998cd578004be0226a1f4d02cb8ba4f', 'ru-RU', 'df06541afe26e63e7978c3bed9b3bae3', 'Мин. подписок'),
(7056, 'd6b92f58e6fc0b7af2f341f21422fc4e', 'ru-RU', 'dbfc9f9af9aae4967e5702abd37f9421', 'Макс. подписок'),
(7057, '63d784e3c0a50a6a39280973e66620cb', 'ru-RU', '2d56695e408ba4e9b31a63a2e9ba5fac', 'Фильтр профилей'),
(7058, '7e3a414275e6686074d54a448dbf95ff', 'ru-RU', '89943dcf5f17678544d47ffa3ed38a0b', 'Взаимодействуйте только с пользователями, у которых есть максимальное выбранное количество подписчиков.<br><br>используйте его вместе с <b>Фильтр мин. количества подписчиков </b>, чтобы установить необходимый диапазон популярность пользователей.<br/><br/>рекомендуемые значения: 300-500.<br/> < br/>установите значение ноль, чтобы отключить этот фильтр.'),
(7059, 'cae21236f2c835bc4ee4ece27bf810e8', 'ru-RU', '8f11f3d3ec1599f12e43eca23d7aba01', 'Этот фильтр поможет вам избежать неуместных и нежелательных пользователей и их постов: <br/> <br/> <b> Выключено </b> - фильтр отключен. <br/> <br/> <b > Низкий </b> - исключает пользователей, у которых нет аватара или опубликованных постов. <br/> <br/> <b> Средний </b> - исключает пользователей, у которых нет аватара, опубликовано менее 10 постов или Не имеют имени в профиле. <br/> <br/> <b> Высокий </b> - исключает пользователей, у которых нет аватара, менее 30 постов, у которых нет имени в профиле или нет описания.'),
(7060, '90d7dfc01726b24f8782345ef3417966', 'ru-RU', 'b6aad80094f5e4e63f11e0907db69798', 'Этот фильтр поможет вам исключить ваших собственных подписчиков / подписок из процессов лайков, комментирования и подписки:<br/><br/><b>Off</b> —  фильтр выключен.<br/><br/><b>Подписчики</b> — вы не будете взаимодействовать со своими подписчиками и их медиафайлами .<br/><br/><b> подписки</b> — вы не будете взаимодействовать со своими подписками и их медиафайлами.<br/><br/><b> Оба </b> — вы не будете взаимодействовать со своими подписчиками и подписками и их медиафайлами'),
(7061, 'cf9aa1808b47aec16478d482ee191566', 'ru-RU', 'f58a46a594f9861dbe407e248d1cccaf', 'Не подписываться на тех же пользователей'),
(7062, '01b82e3eef081971d595955ddaea2a59', 'ru-RU', '196fe4e3a79834f71130f0521484361c', 'При установке этого флажка вы не будете подписаны на одних и тех же пользователей дважды после того, как отпишетесь от них.'),
(7063, '6df017e15cffd8472597c64cc9b2dea2', 'ru-RU', 'fbac86a7d04775e551e82687d5894fe1', 'Вы не будете подписаны на аккаунты с закрытой лентой.'),
(7064, 'a372db01ccfb946feeb36ac5bbe852f5', 'ru-RU', 'a1bdf03330a2f37677acdb9d097a3530', 'Введите имя локации'),
(7065, '597670d8765990f55b78aa9c70a4ed75', 'ru-RU', 'eebd338ddbd547e41e4a1296de82963a', 'Локации'),
(7066, 'fc44889c154562c4fb849317d89bbbfb', 'ru-RU', '452a7601dbc6f2c38aa89e68bda8b603', 'Статистика'),
(7067, '706810faf35e10022a2203afba2f8bf5', 'ru-RU', 'ce0be71e33226e4c1db2bcea5959f16b', 'Логи'),
(7068, 'ca7c231f011aa06e422c096d79f37b0b', 'ru-RU', 'f7ceab16b033278c6652818cd0553fc1', 'Недавняя деятельность'),
(7069, '952a3d8fa1899014644d4ba9c64d3523', 'ru-RU', '5e4fe1e1a7154a9ed9bb00adcfd1ede1', 'Репост от'),
(7070, '14a06975bf9a2aa473a1cf3eea3f7dcf', 'ru-RU', '5365e5ca486b5bd5c1f3cfde52c10a19', 'Аккаунты'),
(7071, 'd0b436dc2b5e129637b1b2bb06c591e1', 'ru-RU', 'a6f167a4f330ba6955a2e32714b775a8', 'Оставьте пустым для репоста без подписи.'),
(7072, 'f339ba8bb66b0c9e9afdc7914fce55c8', 'ru-RU', '90accf4a1257228ef2121ee723d2ac85', 'В заголовке можно использовать следующие переменные:<br><strong>{{caption}}</strong> оригинальная подпись<br><strong>{{username}}</strong> пользовательское имя владельца медиафайла<br><strong>{{full_name}}</strong> полное имя владельца медиафайла. Если полное пользовательское имя не задано, то будет использоваться пользовательское имя.'),
(7073, '99054f23017d0e28fd3d5525a9ba9844', 'ru-RU', '38f9aeae39d68877b0fa85fd85d1f506', 'Расписание позволяет вам настроить уникальное расписание по времени и дню для запуска вашей системной активности. Вы можете вручную выбрать отдельные часы, когда ваша активность должна быть высокой или вы можете использовать следующие пресеты'),
(7074, '758deb9ac97d9c95852443e179409bf0', 'ru-RU', '9355012c662523f875599eb7fd2ac576', 'Дневное время'),
(7075, '166c8e0f77032380c4ae0ce7d2db24d0', 'ru-RU', '0b18b8ad701fa5711d6b1b85f032e06d', 'Ночной'),
(7076, 'dacf73234c594d7c0eb5701deacf14d5', 'ru-RU', '37b6bd7fe61d651735cec3d3b0356c66', 'Нечетный'),
(7077, 'fd03f7b0a28bd3f3c15b00d4a8b67cfc', 'ru-RU', '35537fbc25d87ffe59e4f35fefcd34b7', 'Четный'),
(7078, '9241151ca95a7c705dbcad02adb222e7', 'ru-RU', 'e05189efcae04d393d4b9135c647e683', 'Альтернатива 1'),
(7079, '22fb6f78a71b474cfe5a1df5d6a53289', 'ru-RU', '5ccd655c067e2e9702a57ba7e853e7dc', 'Альтернатива 2'),
(7080, 'ba0235c7e4da25b9b9368f5d6d4f84f7', 'ru-RU', 'efadf8f45ec82a67750ede4171df31e2', 'Действие началось'),
(7081, 'f895179c80a341b17de09720f2f20cce', 'ru-RU', 'cfb64b0fe2faa5d5f226976d0ad8f76f', 'Действие приостановлено'),
(7082, 'd9e301155ceed835c9b7674ffb78df2b', 'ru-RU', '487f0f4c1bced82394f47af70024c029', 'Скорость действия'),
(7083, 'c48f020624787e58af40d5e073ef75c7', 'ru-RU', '79c6997e488f6e1e8aab1f18359b8169', '<b>Медленная</b> - безопасная скорость<br/><br/><b>Средняя</b> — нормальная скорость<br/><br/>Быстрая</b> — самая высокая скорость<br/><br/>Если вы только начинаете, используйте <b>Медленную</b> скорость, а затем через несколько дней измените на<b>Среднюю </b>или<b> Быструю </b>.'),
(7084, 'f39f96e613af29d63a8d443115b34b67', 'ru-RU', 'efa5397985b8609a5dbeb430a4bcadd3', 'Медленная'),
(7085, 'e02c846f97815f956914d57be6c08043', 'ru-RU', '960b44c579bc2f6818d2daaf9e4c16f0', 'Средняя'),
(7086, 'e491fc3a857f11cad5ef16c7027b2960', 'ru-RU', 'e16b5b7f26f54214445cbe38d72c2828', 'Быстрая'),
(7087, 'd31cafd88690a8881e4b4d706a149140', 'ru-RU', '90589c47f06eb971d548591f23c285af', 'Индивидуально'),
(7088, 'b9aaac73519b8f6fbfa083d09fd3e492', 'ru-RU', '796c83e8e9e6e3dcbf1f7f720d74431d', 'Количество лайков/час'),
(7089, '276a6af06809ee4daf9d2b7a6c84e604', 'ru-RU', '279bea4c2a2ce623214de8ebf402a1fa', 'Количество лайков, которые система попытается сделать в течение часа.<br/><br/>Возможные значения: <b>1</b>-<b>60</b><br/><br/><span class=\'text-danger\'>Используйте с осторожностью!</span>'),
(7090, 'c276357665824e477b156273548ef428', 'ru-RU', 'aafe95f0b95767674f2612728fe10859', 'Комментарии / час'),
(7091, 'a7fba78af873218874611d3dd1c092d9', 'ru-RU', 'f55b9ea43c4f808ee3f185a91b523c98', 'Количество комментариев, которые система попытается сделать в течение часа.<br/><br/>Возможные значения: <b>1</b>-<b>20</b><br/><br/><span class=\'text-danger\'>Используйте с осторожностью!</span>'),
(7092, '946480734028b10bc8f360b2d9b2a5c3', 'ru-RU', '344d316be6c4d2a1f0882353d8c7c031', 'Просмотр историй/час'),
(7093, 'ea3dd7e744cd0175acdbed8ce5ea919f', 'ru-RU', '6e95da63ca15a2aa0ebb412722743fd7', 'Количество просмотров историй, которые система попытается сделать в течение часа.<br/><br/>Возможные значения: <b>1</b>-<b>60</b><br/><br/><span class=\'text-danger\'>Используйте с осторожностью!</span>'),
(7094, 'fa547a72b71c806b1c45e61bea4ee920', 'ru-RU', '19aef75db484ba6ba77e4b1eefd12998', 'Подписки/час'),
(7095, '37bf67108f16cae3a4f25b3e1b858192', 'ru-RU', '69f9b79e3a4883a5d7907e6955c00b04', 'Количество Подписок, которые система попытается сделать в течение часа.<br/><br/>Возможные значения: <b>1</b>-<b>40</b><br/><br/><span class=\'text-danger\'>Используйте с осторожностью!</span>'),
(7096, 'ab8922074dedd1088e66ca171e732ee6', 'ru-RU', 'e4e449e2de371305ad40ec174cbba778', 'Отписки/час'),
(7097, '9b59729adf19049888ec5717a64967f9', 'ru-RU', '8da56588bc6626970b58f42de9136d4c', 'Количество Отписок, которые система попытается сделать в течение часа.<br/><br/> Возможные значения: <b>1</b>-<b>40</b><br/><br/><span class=\'text-danger\'>Используйте с осторожностью!</span>'),
(7098, '13492277388e5f55184b005d3aaf9dce', 'ru-RU', '84f67628c88cea26efe7a921d347c55b', 'Личные сообщения/час'),
(7099, '0f8d02581b86a9b95d1bfb3b62a49643', 'ru-RU', '183f2f57781681208f0f2a8fc396ebbc', 'Количество Личных сообщений, которые система попытается отправить в течение часа.<br/><br/> Возможные значения: <b>1</b>-<b>20</b><br/><br/><span class=\'text-danger\'>Используйте с осторожностью!</span>'),
(7100, '6a2e8b80c93a9e150d0e937535eb8328', 'ru-RU', 'd7e9abbffe93b312174acb97a69f292f', 'Репостов/день'),
(7101, 'afac796cfe4c1d9e6344ef4f8530789f', 'ru-RU', '17da44ac25eb7a4583120d92c6896859', 'Количество Репостов, которые система попытается сделать в течение дня.<br/><br/> Возможные значения: <b>1</b>-<b>60</b><br/><br/><span class=\'text-danger\'>Используйте с осторожностью!</span>'),
(7102, '5812074fb626834a7456172c06102ea5', 'ru-RU', 'b70006f36867a9fed002474680333d18', 'Счетчик лайков'),
(7103, '5c6688b043e09883714352e52c7fb63d', 'ru-RU', '1b20e7bd7ea779d699242cb5b88b1986', 'Счетчик комментариев'),
(7104, '2edc9ab60a75527625a615b3da92917f', 'ru-RU', '4ddf99749e4da674e18eb57d9711832e', 'Когда это количество лайков будет достигнуто, ваша активность будет автоматически остановлена. Установите нулевое значение для отключения ограничения.'),
(7105, '71911b7ae9c58782719d379145914244', 'ru-RU', 'faa08fc8ee7a585417897ee5266e269f', 'Когда это количество комментариев будет достигнуто, ваша активность будет автоматически остановлена. Установите нулевое значение для отключения ограничения.'),
(7106, 'e84aae8dc54ebe26b291d6ada318cba9', 'ru-RU', 'a6b234fbe237308ca89a50947570f564', 'Просмотр сторис'),
(7107, 'fd4b7a3cba7ec00d8330973e3d6a9cbe', 'ru-RU', '558372ceb623158ce3bc215a75f82d90', 'Когда это количество просмотров историй будет достигнуто, ваша активность будет автоматически остановлена. Установите нулевое значение для отключения ограничения.'),
(7108, '1b748f26e85b62a4755819bed4d3a117', 'ru-RU', '18c5a3552c758ceecdb31788d524956f', 'Счетчик подписок'),
(7109, '9ca95416843982d276d5eae86ee334a4', 'ru-RU', '2ad9a88b5d43fc8290854de7582d98da', 'Когда это число будет достигнуто, ваша деятельность будет автоматически остановлена. Установите нулевое значение для отключения ограничения.'),
(7110, 'b16151b2cbac5b5ab5723be41618d81b', 'ru-RU', 'c77f67e23ce79c1149f57d60ed52e37f', 'Счетчик отписок'),
(7111, '371d6b1c53b24247b253f6306335a093', 'ru-RU', 'a52805d5246f0fcde818d5b43cb03c06', 'Когда это количество отписок будет достигнуто, ваша активность будет автоматически приостановлена. Установите нулевое значение для отключения ограничения.'),
(7112, '107aca014678dbafe04025b23b6d400f', 'ru-RU', '4a14c6345423e9986145ac773c723fa9', 'Счетчик личных сообщений'),
(7113, 'a3533c55b3305d915e7a10286b82b01d', 'ru-RU', '4bf2315c86f66e5b218a53723497f7d7', 'Когда это количество личных сообщений будет сделано, ваша активность будет автоматически остановлена. Установите нулевое значение для отключения ограничения.'),
(7114, '1d16240785fc4ca63e0a8c840b3ed433', 'ru-RU', '56642d2b017bf53ef58f8ed7c5d3a06f', 'Счетчик репостов'),
(7115, '694315098a2044c677eb90bae84de26b', 'ru-RU', '1bced2589bb35ed34c38862351091c21', 'Когда это количество репостов будет сделано, ваша активность будет автоматически остановлена. Установите нулевое значение для отключения ограничения.'),
(7116, '42610af1055ba8f581d9e482643189f8', 'ru-RU', 'efb4777327e6f704fb1519c1882f93ec', 'Таймер');
INSERT INTO `sp_language` (`id`, `ids`, `code`, `slug`, `text`) VALUES
(7117, 'b6dbf38d93715cbe934f21d2c9ba0d20', 'ru-RU', 'c686dffe09b13701a4cc47577d2bec89', 'Например, если вы установите его в <b > 01: 00</b>, то ваша активность автоматически прекратится через один час. Если вы оставите его пустым, то активность будет включена бесконечно или пока не будут достигнуты лимиты Instagram для вашего аккаунта .'),
(7118, '3d7fafd3c59261bccb0be7eb034c0d75', 'ru-RU', '9ee78e45caf20b7420dfc246fcbf8bd5', 'Если нет активности'),
(7119, '86a1876ee5c07fd2b31e643ff3f69149', 'ru-RU', 'bd3ac5557016d59e56d7e4e19208ef89', 'Автоматически останавливается через некоторое время без какой-либо активности.'),
(7120, '11c591445c64d7181ee3c4d37b12befa', 'ru-RU', '6e7b34fa59e1bd229b207892956dc41c', 'Никогда'),
(7121, '8d8b8edad42e93ec6b97f478ce1b0760', 'ru-RU', '72ab9d0304d3e84c6aa2dd15eda282f2', '1 час'),
(7122, 'a06f2e06924a68c9cf09452c6f4b9e5d', 'ru-RU', '6e9461ab087b8bcd886e3061ee588e83', '3 часа'),
(7123, '23d09b065a5b7270ad5648345ed53281', 'ru-RU', 'f83f5f7ce557b10712eb03a544f30898', 'Таргетинг по Тегам будет работать для всех активных функций в данный момент.<br/><br/> <span class=\'text-info\'>INFO:</span> этот источник таргетинга работает независимо от всех других, которые тоже могут быть включены.<br/><br/><span class=\'text-warning\'>Важно: </span> чтобы использовать этот источник, вы должны добавить по крайней мере 1 тег в список<b> Теги </b>.'),
(7124, 'a5dd0969b187ed30293d7a6dff67fd96', 'ru-RU', 'b0ac8d80b81d5b7502dd764beb3efc16', 'Таргетинг по Локациям будет работать для всех активных функций в данный момент.<br/><br/> <span class=\'text-info\'>INFO:</span>  этот источник таргетинга работает независимо от всех других, которые тоже могут быть включены.<br/><br/><span class=\'text-warning\'>Важно: </span> чтобы использовать этот источник, вы должны добавить по крайней мере 1 локацию в список<b> Локации </b>.'),
(7125, '41db3b3d080e635ebcdfd202928766c4', 'ru-RU', '49084dc4dfc5b065676e8aa3281df751', 'Таргетинг по  Подписчикам позволит работать с подписчиками пользователей добавленных в поле <b>Аккаунты</b>, комментировать от 1 до 3 последних постов, опубликованных ими. Вы также можете настроить таргетинг на своих собственных подписчиков, выбрав <b>Мой Аккаунт</b> или <b>Все варианты</b>.<br/><br/> <span class=\'text-info\'>INFO:</span> этот источник таргетинга работает независимо от всех других источников.<br/><br/><span class=\'text-warning\'>Важно: </span> чтобы использовать этот источник, вы должны добавить по крайней мере 2 аккаунта в разделе <b>Аккаунты </b>.'),
(7126, '9d8f1baf8ecd1f1a7305e75ddf36970e', 'ru-RU', 'd95cf4ab2cbf1dfb63f066b50558b07d', 'Мой аккаунт'),
(7127, 'da141fd57ca39aaa53f22a754bdf2bbd', 'ru-RU', '6b3407b1e3505b0fd4a3ff8a69fca721', 'Таргетинг по  Подпискам позволит работать с подписками пользователей добавленных в поле <b>Аккаунты</b>, комментировать от 1 до 3 последних постов, опубликованных ими. Вы также можете настроить таргетинг на свои подписки, выбрав <b>Мой Аккаунт</b> или <b>Все варианты</b>.<br/><br/> <span class=\'text-info\'>INFO:</span> этот источник таргетинга работает независимо от всех других источников.<br/><br/><span class=\'text-warning\'>Важно: </span> чтобы использовать этот источник, вы должны добавить по крайней мере 2 аккаунта в разделе <b>Аккаунты </b>.'),
(7128, '550808a3f8b443d2f403fb3a11967d54', 'ru-RU', 'a15c14cd928010b78617aee34e2b61dc', 'Мои подписки'),
(7129, 'fa06520c18f558671bc0d705c0d07e15', 'ru-RU', 'e7e6622937c872b6b3f2b771a1014d6a', 'Лайки'),
(7130, '8ebfdacfed6cf72b97f7a988ef37269b', 'ru-RU', '848a3a4e195fd1997df53f7fa55f203d', 'Посты аккаунтов'),
(7131, '57d0da1eafc6f9c078ccb45b4d45c483', 'ru-RU', 'c98958905497d6e62d6ef8bc6bbeabe3', 'Комментарии'),
(7132, '5724ecd7b1316184debb682ad56141f9', 'ru-RU', 'cf956c61e39d4447dfae0714ecc1af92', 'Работайте только с пользователями комментирующими посты аккаунтов из раздела <b>Аккаунты</b>. Вы также можете настроить таргетинг на тех кто комментирует Ваши посты, выбрав <b>Мои посты</b> или <b>Все варианты</b>.<br/><br/> <span class=\'text-info\'>INFO:</span> этот источник таргетинга работает независимо от всех других.<br/><br/><span class=\'text-warning\'>Важно: </span> чтобы использовать этот источник, вы должны добавить по крайней мере 2 аккаунта в разделе <b>Аккаунты </b>.'),
(7133, 'bf6e75b4408f5e882fec7e7eac2e4015', 'ru-RU', '1cc1d5c2e9ef18d814ec2102f25c759b', 'Выберите, что вы хотите сделать'),
(7134, 'ab55a3ee6bbd789ab6df157b35e9dd5d', 'ru-RU', 'ab4f6166849ce286db6ebaf17514ce3c', 'Включите этот переключатель для автоматизации активности лайков. Счетчик показывает, сколько фотографий и видео вам понравилось с момента начала вашей последней активности.'),
(7135, '56ba35df9eca52ccdc1bc349c0b24eb9', 'ru-RU', '0461f0c9d3e77533e7145fb74bb8c670', 'Включите этот переключатель для автоматизации ваших действий с комментариями. Счетчик показывает, сколько фотографий и видео вы прокомментировали с момента начала вашей последней активности.'),
(7136, '31366515de793174e3e77eca49be2a9c', 'ru-RU', 'c6996960a60821b9748062d0e8c48ffd', 'Включите этот переключатель для автоматизации просмотров истории.'),
(7137, '4272cd952e2ef1e03a08c7b44f9ee631', 'ru-RU', 'de06e9770b431e05325e781da889f865', 'Включите этот переключатель для автоматизации свою последующую деятельность. Счетчик показывает, на какое количество пользователей вы подписались с момента начала вашей последней активности.'),
(7138, '0571ccc2c36d1020484acf8257d0a835', 'ru-RU', '7d693bf9e58943aabbbaeafc1201a01b', 'Включите этот переключатель для автоматизации свою деятельность по отмене подписок. Счетчик показывает, сколько от сколькихпользователей вы отписались с момента начала вашей последней активности.'),
(7139, '3fc9c4ebb09097c79b72c963aa77f47c', 'ru-RU', '08e12a47c67500a7bbb1cbafdfba9b2e', 'Включите этот переключатель для автоматизации работы с личными сообщениями. Счетчик показывает, скольким пользователям вы отправили личные сообщения с момента вашего последнего запуска активности.'),
(7140, '44b11797c9db07abf028e095e02b4e77', 'ru-RU', '6236091f4e8e657aad7f57f31235a6d3', 'Включите этот переключатель для автоматизации вашу деятельность по репосту медиафайорв. Счетчик показывает, сколько медиаматериалов вы разместили с момента начала вашей последней активности.'),
(7141, '704a5689be9b403be55de0d38699228f', 'ru-RU', 'ef4fc0d7dfbf6c08a5801b475fb3d97f', 'Отписывать только'),
(7142, '248fb5783bc12f29cd6e7ea092021969', 'ru-RU', 'c570fa72e856e7d2efa4d6fd3e1c991e', 'Отписываться после (дн.)'),
(7143, '11a0f990ad9f6a595f8bb5f00ec433fd', 'ru-RU', '085b30f3cb07a9b99f63790e58140c49', 'Не отписывать моих подписчиков'),
(7144, '9d7aa87195778bdbba15ff9506a593a6', 'ru-RU', '4975839e87843d3277cf36b14bb26756', 'От каких пользователей отписаться?<br/><br/><b>Подписанных сервисом</b> — выберите этот параметр, если вы хотите отписать тех кого добавил наш сервис. Лучше использовать этот параметр, особенно если вы используете одновременно функции подписки и отписки.<br/><br/><b>Все </b> — выберите этот параметр, если вы хотите описаться от всех, на которых подписаны'),
(7145, '66055c8f7ed737aaf814414870a9fc78', 'ru-RU', '0ffc10a2be2ec21a781e393ed9adcd3f', 'Подписанных сервисом'),
(7146, '4e96b03d7ac383e54ec3a3efe8d3a9d0', 'ru-RU', 'dbeb4495bcc6c50b8c2d7e6229bd74e7', 'Система начнет отписываться от пользователей через 3/5/7 дней после выполнения действия.<br/><br/><span class=\'text-info\'>Примечание:</span> Это позволит не привлекать внимание алгоритмов инстаграм'),
(7147, '927c6d26df133452c20db087037fe850', 'ru-RU', 'a1ece9b329031f775f64bcb33efaa77e', 'Вы не будете отписаны от пользователей, которые подписаны на вас.<br><br> <span class=\'warning\'>ПРЕДУПРЕЖДЕНИЕ:</span> Это может привести к снижению скорости подписки, так как системе потребуется время на поиск среди Ваших подписчиков.'),
(7148, 'b4164b977dc96c3734c7792e4cc05ef2', 'ru-RU', 'b51d42234aca8f8b5c17aa34294b1767', 'Повторный вход в систему'),
(7149, '1cc69329d5cd3c388bbb4bda514e5ca7', 'ru-RU', 'ea69ec28bcb1952b096267cc88060102', 'Лайки'),
(7150, '4fd87e64bab6de3e8725fc67fc3de7d0', 'ru-RU', '92e705068d7260a32e2c13c1f556b866', 'Просмотр историй'),
(7151, '51b883c10d712a023957233d6f4f35a1', 'ru-RU', '62ca334609cd0152b2bbece090e74622', 'Подписки'),
(7152, 'a71372071ff9746111c4609b6ab278c0', 'ru-RU', '773336cc828aa169f15e6ee8e6d1aad2', 'Отписки'),
(7153, '42979a259a4b740780e347555345ed6a', 'ru-RU', '001fea4835020feb938d3287bf7d74bb', 'Сообщения в директ'),
(7154, '883eca49d4e5d9c8a7eb9a610d18cc9e', 'ru-RU', '43473f115c573d06cdd822eb545c6057', 'Авто репост'),
(7155, 'e6d834f796213906fa5232255820da9e', 'ru-RU', 'd3da97e2d9aee5c8fbe03156ad051c99', ''),
(7156, '24cb1c91882aea8946986efdd750c315', 'ru-RU', '917d465e9a9e8b16a8da50a1ca8156ca', 'Показать:'),
(7157, '02f30b5fe8615e3765658c67c3bd90fa', 'ru-RU', '700f620b4a705a7b364389ef84fdd1ca', 'Дата и время старта:'),
(7158, '8a8e821b20926bd5695074fb316334a2', 'ru-RU', 'a6122a65eaa676f700ae68d393054a37', 'Старт'),
(7159, '1ca7303cf8bebe7d4da2022de7ffc252', 'ru-RU', '11a755d598c0c417f9a36758c3da7481', 'Стоп'),
(7160, 'fcdc09e13ad3f9ad528afec7d89661b0', 'ru-RU', '44877c6aa8e93fa5a91c9361211464fb', 'Скорость'),
(7161, 'b28e2e409ba3bc29f2ce94a9ac8e76e5', 'ru-RU', '78781cc1291aa54a9008720982b04563', 'Таргетинг'),
(7162, 'f68a3c9e4ec0fc203489bbcf07924fb0', 'ru-RU', '85fffe8f5074d606fa202fa5ae90d8bb', 'Черный список'),
(7163, 'fdf2f41251e9fd276b02f17ac302b1d7', 'ru-RU', 'd25cb4dba07d82855ba5b9fa299a813f', 'Авто-остановка'),
(7164, '8650884ae6dbfb59d41568e1a1e6f181', 'ru-RU', '63c941e3c2c36d1610e26e9c5ee23995', 'Сохранить журнал в течение (дня):'),
(7165, '064093a71db2761e6edd6e36645d8125', 'ru-RU', 'a686fa7c381f046150872f40d37b6ea9', 'Установить от 0 до неограниченного количества'),
(7166, 'de6bdd309c16eda1c5568e16eb939e12', 'ru-RU', '5aec84ebfecb162ccfea0a90fb00dcc9', 'Действие по умолчанию'),
(7167, '86153088d34d0ee70f031c19d8d2d574', 'ru-RU', 'b9fa8d034ac4e37eaf215fe66737b851', 'Цель по умолчанию'),
(7168, 'e448d528c0e99b08376428172adf80e9', 'ru-RU', '45dfe01d8989f212ec29a67d4760063f', 'Скорость по умолчанию'),
(7169, '0816593054a99d56a74bc5e2418aeda8', 'ru-RU', '43182b83d5e85455c1d455b603fb8a8c', 'Медленная скорость'),
(7170, '9cbe6bbda418d5588289c6f420fe4b0c', 'ru-RU', 'eb62925119c990ea7cd8e2d473f07f58', 'Средняя скорость'),
(7171, '5b4376976286db0bb106cd0a3b3b8529', 'ru-RU', '958019c604682295f7fb344b812e9031', 'Быстрая скорость'),
(7172, 'cd9fad8d9dc7b0232042768f44158c0c', 'ru-RU', '5f9f384d754bebebc289495515f6c04f', 'Описания для поста по умолчанию'),
(7173, '9d3fce0388ddb0776caee0a475eefa04', 'ru-RU', '1079955b2ffa36311da084f99c7b6e32', 'В заголовке можно использовать следующие переменные:'),
(7174, 'e1f6d39e50f0272e852314d11ccc59b1', 'ru-RU', '4b04963dac6b7effe431f5d9928cab97', '{{caption}} оригинальное описание'),
(7175, '9139e2b531fe8bd5c5ee9b77c3fe5a30', 'ru-RU', 'fc65758404d26ecb6108cdedb3fada58', '{{username}} пользовательское имя владельца носителя'),
(7176, 'a5b672be5cb3e1347b4c81c6fc49aef8', 'ru-RU', '603371c0dbef41a9b90b2c105af02d8c', '{{full_name}} полное имя владельца носителя. Если полное пользовательское имя не задано,то будет использоваться пользовательское имя.'),
(7177, '7befc3f7579cc16f3280381b00358361', 'ru-RU', '603371c0dbef41a9b90b2c105af02d9c', 'Фильрты'),
(7178, 'f35b4cc4c68ede6e2941b44685176a8c', 'ru-RU', '2c7f0d912a075b982213505f06301d86', 'Постинг в Vk'),
(7179, '5bd61fd0390571fbe0594925b7bd1de9', 'ru-RU', '849ecc67da97ed5b993c516f77a643a2', 'Перейдите по ссылке чтобы создать приложения Design Bold:'),
(7180, 'ab16c5a2891176620543b984ba78297d', 'ru-RU', 'bf4f9ce507b4480bcd90f2b0bd97cc98', 'SMTP Логин'),
(7181, '8e8f05f9d1324a754e97420d94745917', 'ru-RU', '13dfab74d4f99be29bd6c7142135b34e', 'SMTP Пароль'),
(7182, '45d7f9ae3420eab2c7ce45c87114fc46', 'ru-RU', 'ed265981069aa2ee5467cb59f86601bf', 'ID приложения Vk'),
(7183, '14804738f7503eb7f313defb91f65fbf', 'ru-RU', '960d20851f295a7a26e06d17bc691b13', 'Секретный ключ Vk'),
(7184, 'dcfcf7c8164f98076d80720a1f16012f', 'ru-RU', '5cf7c27d17aba656e4359e977435243b', 'Постинг в Ok'),
(7185, '3ab1ac635c77f577936c1a59d18b381f', 'ru-RU', '8cf24a454898a0033da7348afe3a9ef2', 'Взаимодействуйте только с пользователями, у которых подписчиков не меньше этого значения.<br/><br/>Используйте совместно с фильтром<b>Макс. подписчиков</b> установив диапазон количества подписчиков.<br/><br/>Рекомендуемые значения: 50-100.<br/><br/>Установите 0 чтобы отключить фильтр..'),
(7186, '7d9e86a241349c9c44d6d8c1dedd89fe', 'ru-RU', '5114ac4fb8276738627b73f4ff4c86d9', 'Переподключиться к Twitter'),
(7187, '2eb5209724e904cd62f70f70147bf1af', 'ru-RU', '914c93f15f29fd32d8a0f313a90c1c70', 'Постинг в Twitter'),
(7188, 'f11c96539a0c0e340d704bae8cbae5b0', 'ru-RU', '5a95a425f74314a96f13a2f136992178', 'Поделиться'),
(7189, '1307616d1e47a4b2e225bee927f0f1e6', 'ru-RU', 'c108b4dc8c451e1c1670add58909e6c6', 'Страницы Facebook'),
(7190, '4e685a83a33bcfdfaf1d82061e753549', 'ru-RU', 'c3833321ea1a640947a23fbee262f9d8', 'Страница в Facebook'),
(7191, '03866c7d0b700963864cebabb2e5100c', 'ru-RU', '6b4143d554b6f9540807669d264aa0d4', 'Добавить страницу Facebook'),
(7192, '93d3cb0def41be213df834a1ec56b894', 'ru-RU', 'c148c2bac6ade2b12e418ad086550305', 'Группы в Facebook'),
(7193, 'ea62238b9e786f112dfc9e2c307abd66', 'ru-RU', '856dfe6486adc809ec32c92e60d6ce68', 'Группа в Facebook'),
(7194, '422c86ffdd97605a05888a374df7f242', 'ru-RU', 'ffd3b250efcb11ace6e9204fedced477', 'Добавить группу Facebook'),
(7195, '83ebe61e22b588c405343c2644dbabc5', 'ru-RU', '0da6ebbcd452e676a5a90bab7c6d122b', 'Вы используете ежемесячный способ оплаты тарифа. Отмените его, если хотите сменить тариф или изменить способ оплаты.'),
(7196, 'a4bf035306efe942fc2713685439a48f', 'ru-RU', 'e7f9e382dc50889098cbe56f2554c77b', 'Кредитная карта'),
(7197, '8d91cbc4d4a6933efb86599b20aa2fc0', 'ru-RU', 'd930dbf4a7092e01caddb358c8f20bac', 'Автоплатежи'),
(7198, '3339b02bdd1c66e4d146bf676737f17b', 'ru-RU', '39ab9f043b9b9009ae8f7213eb7614d0', 'Единоразовый платеж'),
(7199, '27f1e4686ed2a5ae7fbf3856a48512b4', 'ru-RU', '795c295850f9ab743fe152710fe3b6d2', 'Единоразовый платеж через Stripe'),
(7200, '6cff2d15f9b8201448da3db97490fdf0', 'ru-RU', '53c418c0389de22440838f7afa94dd68', 'Прокси менеджер'),
(7201, '11e43be993fe3e9bd91aa850490d2349', 'ru-RU', 'c4c16a3863f9be6b8403164cb9106629', 'Прокси менеджер'),
(7202, 'b678a30069f7b1a1f73cb52ed6f4af9a', 'ru-RU', 'cc496651f269daaba73b0dea2895d106', 'Не могу найти учетную запись для назначения прокси'),
(7203, '661cadc43e70da56d28a4e61edf65b97', 'ru-RU', 'bd703fc9430737d460290e82a7a691cf', 'Этот прокси не существует'),
(7204, 'a6db5b3ecbd1e660ce63d4dbd1c21db5', 'ru-RU', 'eb63c9323ffcc98528e6e2a82e08fae4', 'Не удается найти учетную запись для отмены привязки прокси'),
(7205, '054ebc928962b8fb8386a6939148299c', 'ru-RU', 'e2a1fa01d7a6184b2cad2e7530a88a15', 'Есть незаполненные поля.'),
(7206, '51647ef63f838d21f3399e2ebcb41e5b', 'ru-RU', '7188b0826fdc14fa7ea6d3d4adc58ff7', 'Успешно добавлено %d из %d прокси'),
(7207, 'd4f02e91d15fe15f79d91d7851fd5274', 'ru-RU', 'b702d617ea6183d3f4162718c0c30a11', 'Привязка прокси'),
(7208, 'dbf06e6098a24a9bbdae51ce50e2bda0', 'ru-RU', '38160901da7224d77a2c0a7948fea16c', 'Соц. сеть'),
(7209, '288e83b6b1c4b6c607d29cbfac55a629', 'ru-RU', 'aa90c53280582695f3d4b8ac2ec17a8b', 'Название аккаунта'),
(7210, 'a80c9e13f3f5119217dfd2f09eb8d52d', 'ru-RU', '3f48746290971639401880fc6aed2971', 'Логин аккаунта'),
(7211, '882f5968e819d5bfe023ef44ac587ec7', 'ru-RU', 'ae1dd217044633af0b0914767739da6d', 'Привязанный прокси'),
(7212, 'ee601963c0df65b9878e0a74b1ba2e78', 'ru-RU', '142fc56a04c2df7c1da84b40a6edc4b9', 'Пользователь'),
(7213, '5ee0f851a65e7768e7db189c52cbfc03', 'ru-RU', '185b7133db22230701a857c059360cc2', 'Привязка'),
(7214, '18a6fb8cf93570e00777f1306dc89e4e', 'ru-RU', '2fecc3b97a93f12955b32ead4e826659', 'Вы уверены что хотите отменить привязку прокси к этому аккаунту?'),
(7215, 'd17ecbcd0e7c63659ce9ea21b53343e8', 'ru-RU', 'eb5aeb11786190726eadd8a26bd6d874', 'Выбрать прокси'),
(7216, '49674d0e2453ecd00d281aa081ab954d', 'ru-RU', 'bd49dc941881322afda35e9b2831739d', 'Импорт прокси'),
(7217, '5f000523a21a6c9722bba7bca64bbe85', 'ru-RU', '084184eaa444a10df644ccba92c4e2f2', 'Шаг 1: Создайте шаблон импорта'),
(7218, '1a130fed651aecc23a47361166cc4463', 'ru-RU', '27fe4eb3edbaff8f250e2d51f7462681', 'Тарифы'),
(7219, '632328a6615fc82f01e3f5a203ee6102', 'ru-RU', '80d2677cf518f4d04320042f4ea6c146', 'Лимит'),
(7220, 'dd4ab1343bdf479f510b3c5111d7f7be', 'ru-RU', 'c665a941d47d1f6373238fa529a7963f', 'Сколько всего аккаунтов, в каждой соц. сети могут использовать этот прокси. Оставьте пустым чтобы не ограничивать.'),
(7221, '9e7c346fb514e99ea1cbcbc6e37241d9', 'ru-RU', 'ef1d00d8a237a1bbe431e1091f5715fb', 'Создать шаблон'),
(7222, '223cc0cac380ea60f5cd1e2553fad0b6', 'ru-RU', '7019b47c3429a9017a2c8cf01b1265a4', 'Шаг 2: Импорт прокси'),
(7223, '2f4403faf1425df8b3e26443a337269c', 'ru-RU', '343bba3bf02c060f54134b00aabdc176', 'Автооплата через Paypal'),
(7224, '9826067338a7b7850bc1272389c383fc', 'ru-RU', 'e73b6267f5e52fb65cbaedfcce14f8a4', 'Единоразовый платеж Paypal'),
(7225, '893b2bf57f333a197612d91d75c3893d', 'ru-RU', '5e36872c2e7cbb322d5aadbb33208a19', 'Автооплата через Paypal'),
(7226, '4bcbab465919fa0f875ef23de3fbbf7c', 'ru-RU', '14b02fbda483f193ed3232515257c6ee', 'Все платежи'),
(7227, 'dfe0120eb41eb1c6aa4d1aef0fef07d7', 'ru-RU', '5b031d9588bc9142305e6cc85745cea7', '%s платежей'),
(7228, '2046f97f2ae437fe7ab31af652308d21', 'ru-RU', 'f802b5e20362c90aaa218216bccae18b', 'Отчет по платежам'),
(7229, '2306e98fe5ad13247d316e77e102689e', 'ru-RU', '822f9ce71a0c9a7aac8f6a7555cde98a', 'Поиск результаров'),
(7230, '4f86e790eb200fb5fab7f54010de0a4f', 'ru-RU', '7002d805a311583c3914e6c02a368848', 'Заработано сегодня'),
(7231, 'c21a4ee64a22dd249884bfbc301529c4', 'ru-RU', 'dc54e41512ad584904e30f0db7269030', 'Всего заработано сегодня'),
(7232, '8c9e8394b566df0e31e4020ea17196ab', 'ru-RU', '6328ad1793f2873e2aa9ae2f1964afb6', 'Заработано в этом месяце'),
(7233, '181604014157b86b48cf378c76b15e36', 'ru-RU', 'ff9dad3f3861fea98bb52a535af32e18', 'Всего заработано в этом месяце'),
(7234, 'f4d60924ae1be033d77797adae2a8d17', 'ru-RU', '267f4b0573f19cb3ca91e85bc0fa53a9', 'Заработано за год'),
(7235, '8eba128e42163c625c2b9b7c9636f7e7', 'ru-RU', '718423462cb4edeb438b4ede039a8b02', 'Всего заработано за год'),
(7236, '47ac86f9e12a20064ad5d47c2bdc481d', 'ru-RU', '6ecdeeece7dc4ee366197ea2e4b6b778', 'История платежей'),
(7237, 'd1e628ec0102d79f07d34424decbfb5b', 'ru-RU', 'e1d79f804064a2d13b6d3caef638a3e1', 'Последние выплаты'),
(7238, '502608fd76b0799de87f56944d62be1f', 'ru-RU', 'd304c853c515ea96a60b5ad81330bec7', 'Новый платеж'),
(7239, '906d12ffabaf1461f3883784e8bba4c4', 'ru-RU', 'a1fa27779242b4902f7ae3bdd5c6d508', 'Тип'),
(7240, '9b2dd42bd90015fd0caa2eed6755dd1d', 'ru-RU', 'f23405b7f8242157f8cf3d1dcebe1d0b', 'Название тарифа'),
(7241, '9b8b8170eaaf5bed77aa34f497937649', 'ru-RU', '88427ec035734b45aae9f7d8859a5008', 'ID транзакции'),
(7242, '7a8bd579d1d458f59c06269ed0bb1f74', 'ru-RU', '0b6cbdf7ad2928078f1600a3e8979485', 'Тариф'),
(7243, '734fad3a96010ed727f81341a0aa27c5', 'ru-RU', 'b2f40690858b404ed10e62bdf422c704', 'Сумма'),
(7244, '94c6f2c3a0b62ced09a1f141268a90db', 'ru-RU', 'a944f36e784aa5b002c5b625255aff09', 'Ежегодно'),
(7245, 'f89ad431cda12a063c72de770b95eb90', 'ru-RU', '69676703a914469feb6b23afdfeccb73', 'Ежемесячно'),
(7246, '935e8c68f9243faf85e47fb91eef7b4a', 'ru-RU', 'c453a4b8e8d98e82f35b67f433e3b4da', 'Оплата'),
(7247, '626e21d67bd24318c4ed4e34680d6a8a', 'ru-RU', '5344abf359658030a2d3a0d8582939f1', 'Создать платеж'),
(7248, '0472cf6a5853d8603c1a261dad15ed17', 'ru-RU', 'f0aaaae189e9c7711931a65ffcd22543', 'Метод платежа'),
(7249, '8efd62e685d0bf22cb8ee9a0030f3a52', 'ru-RU', '0ba29c6a1afacf586b03a26162c72274', 'Окружение'),
(7250, '6ded8b1a09d05b7286a06c88879e4d80', 'ru-RU', '2652eec977dcb2a5aea85f5bec235b05', 'Sandbox (Тест)'),
(7251, '8439eed865b9c37ad6c897479def9a9b', 'ru-RU', '955ad3298db330b5ee880c2c9e6f23a0', 'Live (Включено)'),
(7252, 'e17d0671d33edcaf524f52f0ff12ec73', 'ru-RU', '386c339d37e737a436499d423a77df0c', 'Валюта'),
(7253, 'b7363901013409cf5084cd12bd532ff7', 'ru-RU', '02c86eb2792f3262c21d030a87e19793', 'Символ'),
(7254, '07c50ad8dd40861d83128daee0987714', 'ru-RU', 'bd9317b7a60e68ad016948c610434536', 'Успешная оплата'),
(7255, '2def2c5a7f3b9d25a6b48ecbce0045b8', 'ru-RU', 'a8b0b6e79906227ea301b0da9c4856fe', 'Спасибо за Ваш платеж'),
(7256, '266cc9c3b400cc019c388e187a54fdb9', 'ru-RU', '4d282591c955d8bc20dfd39697b5c858', 'Все готово к использованию. Можете начинать работу.'),
(7257, '8e1951a6d0b8bf615192519258080001', 'ru-RU', 'd19e8ab738bcb64f6c960a6ee116b3b5', 'Перейти в кабинет'),
(7258, '8c5d3b2de3904cf246e5fb56c2f13022', 'ru-RU', 'be16c05ac4f3fe7dacd8c043408d2876', 'Платеж не прошел!'),
(7259, '98e324e2e339dc5502fae6d73733e08e', 'ru-RU', '44f85b0df0968262cbcb235077ee0df0', 'Платеж не может быть завершон.'),
(7260, '8e9ced25875a34461e4b45402c2774cc', 'ru-RU', 'ba4a0818e4f31cacbe54dfd5623bba24', 'Произошла ошибка во время оформления заказа. Пожалуйста, попробуйте еще раз'),
(7261, '95389d369e00bf20fe72c0ab28eb5fac', 'ru-RU', '220986ee8c6bf1df56d9523fc49c69de', 'Попробовать еще раз'),
(7262, '063be24ae946e738423ae67591446e36', 'ru-RU', '4935ede30a688b922153c6abc8d48e14', 'Всего к оплате'),
(7263, 'ecb22b3d3531eca77f7fe79586d2f3d3', 'ru-RU', 'ae0f0ee500f276dfe48da9af0e355b19', 'Тариф %s'),
(7264, '64fedf75812a84e1792ef86a8e0b0695', 'ru-RU', 'f461d4945007dadf52eca2a9e6d1e2e3', 'Комментарий к трансляции'),
(7265, '73234865bfd5a237e4f8ae9b8c5f1cd0', 'ru-RU', '9dd17948d276d5d6bd91ca20d52a79e9', 'Трансляция'),
(7266, 'f4dfd3b77b9b583f56b9d6009ad4a092', 'ru-RU', '30013d260a9083c427a5c67ccaeeaedd', 'Instagram Трансляция'),
(7267, '43b1f4bc16d75d20ad3b8ce11490d6e7', 'ru-RU', '106a6c241b8797f52e1e77317b96a201', 'Главная'),
(7268, '7f3e9982ce5b1a0be89a1be17b5b129f', 'ru-RU', '6a00ee984bbf50ad40002b8e5051d516', '© 2020. Все права защищены.'),
(7269, 'e3c528e279e7e0d856e906024212c17c', 'ru-RU', '532ff634fe288b15478aad287733597d', 'Политика Конфиденциальности'),
(7270, '71d079489604d05cf5077baf7bd0e475', 'ru-RU', 'b0313631c7ee67ad897c43ddb787dd12', 'Лицензионное Соглашение'),
(7271, '7b0a02553dc7cfbddf73e02ea00a8661', 'ru-RU', 'f85b467304a3b416001b131ad35517f6', 'Ваш Тариф'),
(7272, 'd6ae7da4bd0d645af931b6a03afb2b20', 'ru-RU', 'd56b699830e77ba53855679cb1d252da', 'Войти'),
(7273, '6f286953d062859d802465ab66b4de76', 'ru-RU', 'b9e28e42fc461436c8068ce96e6b9fc6', 'Регистрация'),
(7274, '5f8971365d8b8c016980a8cbd6fc09e8', 'ru-RU', '59aab28b54594c59dab8d19afd9478e4', 'Тарифы'),
(7275, '7eda19d4b57ccd4515217d9e25e2edaa', 'ru-RU', '27f412fe522e0e432b1b13d2ca8be864', '#1 Постинг во все соц сети одной конопкой'),
(7276, '48a082a6ab52f2d8d5b8c9846a2ddb78', 'ru-RU', '9e4b89019689aa7e6ffd268faae943c8', 'Pinterest постинг'),
(7277, '75110880930420e74b8e4944e5fc7d1c', 'ru-RU', 'e0c991b35c406ad6f274e07ae08bca35', 'API в Pinterest не поддерживает видео'),
(7278, 'c70badc5b7acda0f5d0bf7fbe1bfeab0', 'ru-RU', '97b9d3875f1f12b9ae1842e360046918', 'Для поста в Pinterest требуется картинка'),
(7279, 'cb95f31ba80d48040c21af7b89c7ceeb', 'ru-RU', 'ecfa50e88a7665c9faeb7e7738d5851c', 'Изображение не найдено'),
(7280, '85273c57fdb2fbd0c9f47b928f106978', 'ru-RU', '94a300b58d8c6ee1a4a557a6677332a7', 'Загрузить с'),
(7281, '024877583739bd9f3883111f7369fb3e', 'ru-RU', '248336101b461380a4b2391a7625493d', 'Сохранено'),
(7282, 'e6bea8dae726bd1a6c48cddb03111fff', 'ru-RU', '6036d0a8b885529156168b3b69ee03cc', 'Доска'),
(7283, '92f2266752f3e8f1056bccb25c2f8c00', 'ru-RU', '636c47a2cb2525e79b6758a9c6e413f7', 'Pinterest доски'),
(7284, '8adf744380617f5a0e8691fb55ca35d6', 'ru-RU', 'e1815e17a1d851aadc19218248a3d2ee', 'Pinterest доска'),
(7285, '7723179b311607d054419d5bd3157987', 'ru-RU', '3266bf06bbb0bcb813fab7ea489e9533', 'Доска не найдена'),
(7286, '47d251fd71a944654a6c447d42d35b17', 'ru-RU', 'b494ce60923c04e8e4c91b0d47177d95', 'Требуется логин'),
(7287, '7f8f4d939910a99e70a3e7ad15e2fd23', 'ru-RU', '1d32847cd4369da3879054fae275f727', 'Добавить доску Pinterest'),
(7288, '2e5a0995d4904b9249f84a080505bbe5', 'ru-RU', 'c5c933066d4083f1cbe0fca5561407a3', 'Pinterest вход'),
(7289, '9dd3d9798155b9dedaabafba3ea1e1bb', 'ru-RU', '808c07b081aea20f042a16aa7ccd3174', 'Перезайти в Pinterest'),
(7290, '034492c6701f58e759845cb6afba39ee', 'ru-RU', '9529ce63d2a38eac873b8ed7e6ea85a7', 'Нажмите опцию ниже чтобы подключить Pinterest'),
(7291, '8a0df0a737c2d52a99a77eab0aa82d29', 'ru-RU', '5ea2bf3eabf9707f16440dfdbf4fd5a9', 'Ваше приложение'),
(7292, '8399a91ef1c50de3f6887b8544bd89fa', 'ru-RU', 'f3ef87de01637b1b8b484c43923da6b9', 'Подключиться к Pinterest'),
(7293, '480b15c1289da0be361cb025fc7af5a6', 'ru-RU', '58a57c391df35b0da1241e8fbbf8ede4', 'Pinterest логин'),
(7294, 'b0cef0f973dd1d064008b13c5e51f888', 'ru-RU', '05a38a7d483cc1a947e9bd8919db955e', 'Pinterest пароль'),
(7295, 'cb61305b350661f8314a59d679002c1b', 'ru-RU', '68f20162f0861472dbbcc84ee66f35e8', 'Подключение к Pinterest через'),
(7296, 'f92b9089c357279d8f0a960b3dd60096', 'ru-RU', '47980f0b7866d87cbd114182aaeeb557', 'Подключение к Pinterest через кнопку'),
(7297, 'd5025e28416592ec8aea040d68230377', 'ru-RU', 'c9df9fed610efb4d343fd465c785bd2e', 'Перейдите по ссылке чтобы создать приложение Pinterest:'),
(7298, 'ed1cba549b9d301abfcc19b314df1782', 'ru-RU', 'f7cac69e1ec95cad2e34ca028864c79d', 'Формат: ЧЧ:ММ. Например, вы можете установить <b>01:00</b>, и тогда активность прекратится через час. Если вы оставите поле пустым, активность будет работать бесконечно или пока ограничения Pinterest для вашей учетной записи не будут достигнуты.'),
(7299, '9a9602cd952a62c6e2aba45e85d364ed', 'ru-RU', 'acfce3044cdb97f8804d38acaa3ff145', 'От каких пользователей отписываться<br><br><b>Подписанных сервисом</b> — отписаны будут только те, кого подписал наш сервис.<br>Этот параметр следует использовать в большинстве случаев, особенно если Вы используете функцию подписки.<br><br><b>Всех</b> — будут отписаны все пользователи на которых подписан Ваш аккаунт..'),
(7300, '8e1bc46afc212d9fedb5a2db70b8738d', 'ru-RU', 'ee439832fe8b5b24cdc46e90cd5f6849', 'Linkedin профили'),
(7301, '3c735875befdd9d959a460e87aecaf92', 'ru-RU', '70527e595ca1aa58aee50017fdd7c990', 'Linkedin профиль'),
(7302, 'edc964e071d4363b7921630e79c15565', 'ru-RU', 'f4c4233f53883ffa2481ea65bd5032ea', 'Добавить профиль Linkedin'),
(7303, '626765ab4372b471f963bef7f9fa823c', 'ru-RU', '1687eec70de04b8bb7519e00efd6a8d7', 'Linkedin API Конфигурация'),
(7304, '5be77cdbac17e5bc0d5beec86c1a1d23', 'ru-RU', '7471ed87d19f45fad7ea2a8b3c8e8607', 'Выберите профиль, с которым хотите работать'),
(7305, 'a7074e1a30d64034811f5621047a9a2e', 'ru-RU', '5ac0deeeb141944f9f053182ed52ce26', 'Перазайти в Linkedin'),
(7306, 'c3e0e81c115e7f1d6f0e72a4dd6075b0', 'ru-RU', 'df440862878089c24245890438c1d36a', 'Перейдите по ссылке для создания приложения Linkedin:'),
(7307, '284cfd23dde804ae9d1937d1c0bb5bd8', 'ru-RU', '8fe305b70f73eae1ac53cf0ad69f74a8', 'Менеджер продаж'),
(7308, '5484f1407cfa0e99d0725df5afe1eb70', 'ru-RU', '6af03bb47eee9537d296aa1511786cca', 'Linkedin страницы'),
(7309, '544610de62cf41227289063a6c741a9d', 'ru-RU', '134bf337b0e8ef284a38059e8b7de39d', 'Linkedin страница'),
(7310, 'da6fe6b0091e37bdfb82736e2d384ca3', 'ru-RU', '95896c6545c01e5034ebf6966ac214d9', 'Добавить страницу Linkedin'),
(7311, 'a6796d206b1f7714d62d3c35baf3d2e4', 'ru-RU', '6fbacda008628fae693794ef11dd031f', 'Примечание:'),
(7312, '3d723df8ea92f9525a91841330b6b9fd', 'ru-RU', '8e03c1b19329237294c4d47e12ba1092', 'Чтобы добавить страницы в Linkedin, вам необходимо зарегистрировать Платформу для разработчиков в Linkedin.'),
(7313, '6508818882135e98a1f03cc9bbe44d96', 'ru-RU', '5a66ed2a4b0678d5fa1aebef9a97ef25', 'Facebook Постинг'),
(7314, 'f4e2567e759e2cbae2cfebca2136608f', 'ru-RU', '354d70ea411ca76adcaa9bde60b1a70b', 'Youtube Публикация'),
(7315, 'ae4348727e88f7ee609d5a71a34d77a9', 'ru-RU', 'c55184a29f66ce9a893edd81886edfd9', 'Facebook Трансляция'),
(7316, '6803d85729f69b6dfeec72649206686d', 'ru-RU', '2ad505398356d36e3f99d244484df7aa', 'Время публикации должно быть больше текущего  на 10 минут, чтобы можно было показать это в расписании'),
(7317, 'cd55c4b446f9ba299c59394910194977', 'ru-RU', '827a19123d98e1152e9f62f4c87686ec', 'Прямая трансляция не опубликована. Повторите попытку позже.');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_language_category`
--
-- Создание: Авг 04 2021 г., 15:49
-- Последнее обновление: Авг 04 2021 г., 15:49
--

DROP TABLE IF EXISTS `sp_language_category`;
CREATE TABLE `sp_language_category` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` mediumtext,
  `name` mediumtext,
  `code` mediumtext,
  `icon` mediumtext,
  `is_default` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sp_language_category`
--

INSERT INTO `sp_language_category` (`id`, `ids`, `name`, `code`, `icon`, `is_default`, `status`) VALUES
(5, '15b1f6a718b9907f43a3c3efc8141042', 'Russian', 'ru-RU', 'flag-icon flag-icon-ru', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_options`
--
-- Создание: Авг 04 2021 г., 15:49
-- Последнее обновление: Авг 04 2021 г., 15:57
--

DROP TABLE IF EXISTS `sp_options`;
CREATE TABLE `sp_options` (
  `id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sp_options`
--

INSERT INTO `sp_options` (`id`, `name`, `value`) VALUES
(1, 'enable_ssl', '0'),
(2, 'website_title', 'Автоматизация соц. сетей - SMM Monster'),
(3, 'website_desc', 'Платформа для Автоматизации Соц. Сетей'),
(4, 'website_keywords', 'Автоматизация соц сетей, автопостинг, раскрутка, smm'),
(5, 'website_favicon', '/inc/themes/backend/default/assets/img/favicon.png'),
(6, 'embed_code', ''),
(7, 'website_white', '/inc/themes/backend/default/assets/img/logo-white.png'),
(8, 'signup_status', '1'),
(9, 'social_page_facebook', ''),
(10, 'social_page_instagram', ''),
(11, 'social_page_twitter', ''),
(12, 'social_page_youtube', ''),
(13, 'social_page_pinterest', ''),
(14, 'google_recaptcha_status', '0'),
(15, 'website_black', '/inc/themes/backend/default/assets/img/logo-black.png'),
(16, 'facebook_login_status', '0'),
(17, 'google_login_status', '0'),
(18, 'twitter_login_status', '0'),
(19, 'beamer_status', '0'),
(20, 'format_date', 'd/m/Y'),
(21, 'format_datetime', 'd/m/Y g:i A'),
(22, 'file_manager_google_drive_status', '0'),
(23, 'file_manager_onedrive_status', '0'),
(24, 'appearance_default_menu', '0'),
(25, 'appearance_menu_color', 'light'),
(26, 'website_mark', '/inc/themes/backend/default/assets/img/logo.png'),
(27, 'appearance_icon_color', '1'),
(28, 'file_manager_dropbox_status', '0'),
(29, 'current_verions', '2af72f100c356273d46284f6fd1dfc08'),
(30, 'payment_symbol', '₽'),
(31, 'twitter_consumer_key', ''),
(32, 'twitter_consumer_secret', ''),
(33, 'facebook_group_permissions', 'publish_to_groups'),
(34, 'facebook_page_permissions', 'pages_read_engagement,pages_manage_posts'),
(35, 'facebook_client_id', ''),
(36, 'facebook_client_secret', ''),
(37, 'facebook_app_version', 'v7.0'),
(38, 'facebook_profile_status', '0'),
(39, 'facebook_profile_permissions', ''),
(40, 'igac_save_log', '7'),
(41, 'igac_status_like', '1'),
(42, 'igac_status_comment', '1'),
(43, 'igac_status_watching_story', '0'),
(44, 'igac_status_follow', '0'),
(45, 'igac_status_unfollow', '0'),
(46, 'igac_status_direct', '0'),
(47, 'igac_status_repost', '0'),
(48, 'igac_targets_tag', '1'),
(49, 'igac_targets_location', '0'),
(50, 'igac_targets_follower', ''),
(51, 'igac_targets_following', ''),
(52, 'igac_targets_liker', ''),
(53, 'igac_targets_commenter', ''),
(54, 'igac_speeds_level', 'slow'),
(55, 'igac_speeds_slow_like', '2'),
(56, 'igac_speeds_slow_comment', '1'),
(57, 'igac_speeds_slow_watching_story', '2'),
(58, 'igac_speeds_slow_follow', '2'),
(59, 'igac_speeds_slow_unfollow', '2'),
(60, 'igac_speeds_slow_direct', '1'),
(61, 'igac_speeds_slow_repost', '1'),
(62, 'igac_speeds_normal_like', '4'),
(63, 'igac_speeds_normal_comment', '2'),
(64, 'igac_speeds_normal_watching_story', '4'),
(65, 'igac_speeds_normal_follow', '4'),
(66, 'igac_speeds_normal_unfollow', '4'),
(67, 'igac_speeds_normal_direct', '2'),
(68, 'igac_speeds_normal_repost', '2'),
(69, 'igac_speeds_fast_like', '6'),
(70, 'igac_speeds_fast_comment', '3'),
(71, 'igac_speeds_fast_watching_story', '6'),
(72, 'igac_speeds_fast_follow', '6'),
(73, 'igac_speeds_fast_unfollow', '6'),
(74, 'igac_speeds_fast_direct', '3'),
(75, 'igac_speeds_fast_repost', '3'),
(76, 'igac_default_reposts', '{{caption}}'),
(77, 'igac_default_comments', 'Made my day\nTotally rocks!\nVery nice\nVery sweet :)\nThis is great\nSo cool\nFascinating one\nNeat-o!\nGorgeous! Love it!\nThe cutest\nBreathtaking one\nThis is awesome :)\nOutstanding one!\nWhoopee!\nMy Goodness\nThis is awesome!'),
(78, 'igac_default_directs', 'Hello {{username}}, How are you?\nHi {{username}}, How are you today?\nHi {{username}}, Hey, how\'s it going?\nHello {{username}}, What\'s up?'),
(79, 'igac_default_tags', 'author\nvacation\ninstaart\nnature\ntasty\nmasterpiece\ncreative\nbestoftheday\npretty\nsiblings\nclouds\npage\nthrowbackthursday\ncuddle\ninstafollow\nlovely\nshoutout\ncute\ndraw'),
(80, 'igac_default_tags_blacklist', 'sex\nxxx\nfuckyou\nvideoxxx\nnude'),
(81, 'igac_default_keywords_blacklist', 'sex\nfuck now\nnude'),
(82, 'instagram_login_user', '1'),
(83, 'instagram_login_button', '0'),
(84, 'instagram_choice', '0'),
(85, 'instagram_ffmpeg_path', ''),
(86, 'instagram_ffprobe_path', ''),
(87, 'instagram_app_id', ''),
(88, 'instagram_app_secret', ''),
(89, 'instagram_app_version', 'v4.0'),
(90, 'linkedin_page_status', '1'),
(91, 'linkedin_api_key', ''),
(92, 'linkedin_api_secret', ''),
(93, 'pinac_save_log', '7'),
(94, 'pinac_status_comment', '1'),
(95, 'pinac_status_follow', '0'),
(96, 'pinac_status_unfollow', '0'),
(97, 'pinac_status_direct', '0'),
(98, 'pinac_status_repost', '0'),
(99, 'pinac_targets_tag', '1'),
(100, 'pinac_targets_location', '0'),
(101, 'pinac_targets_follower', ''),
(102, 'pinac_targets_following', ''),
(103, 'pinac_targets_commenter', ''),
(104, 'pinac_speeds_level', 'slow'),
(105, 'pinac_speeds_slow_comment', '1'),
(106, 'pinac_speeds_slow_follow', '2'),
(107, 'pinac_speeds_slow_unfollow', '2'),
(108, 'pinac_speeds_slow_direct', '1'),
(109, 'pinac_speeds_slow_repost', '1'),
(110, 'pinac_speeds_normal_comment', '2'),
(111, 'pinac_speeds_normal_follow', '4'),
(112, 'pinac_speeds_normal_unfollow', '4'),
(113, 'pinac_speeds_normal_direct', '2'),
(114, 'pinac_speeds_normal_repost', '2'),
(115, 'pinac_speeds_fast_comment', '3'),
(116, 'pinac_speeds_fast_follow', '6'),
(117, 'pinac_speeds_fast_unfollow', '6'),
(118, 'pinac_speeds_fast_direct', '3'),
(119, 'pinac_speeds_fast_repost', '3'),
(120, 'pinac_default_reposts', '{{caption}}'),
(121, 'pinac_default_comments', 'Made my day\nTotally rocks!\nVery nice\nVery sweet :)\nThis is great\nSo cool\nFascinating one\nNeat-o!\nGorgeous! Love it!\nThe cutest\nBreathtaking one\nThis is awesome :)\nOutstanding one!\nWhoopee!\nMy Goodness\nThis is awesome!'),
(122, 'pinac_default_directs', 'Hello {{username}}, How are you?\nHi {{username}}, How are you today?\nHi {{username}}, Hey, how\'s it going?\nHello {{username}}, What\'s up?'),
(123, 'pinac_default_tags', 'author\nvacation\ninstaart\nnature\ntasty\nmasterpiece\ncreative\nbestoftheday\npretty\nsiblings\nclouds\npage\nthrowbackthursday\ncuddle\ninstafollow\nlovely\nshoutout\ncute\ndraw'),
(124, 'pinac_default_tags_blacklist', 'sex\nxxx\nfuckyou\nvideoxxx\nnude'),
(125, 'pinac_default_keywords_blacklist', 'sex\nfuck now\nnude'),
(126, 'pinterest_login_button', '1'),
(127, 'pinterest_login_app', '1'),
(128, 'pinterest_login_user', '1'),
(129, 'pinterest_app_id', ''),
(130, 'pinterest_app_secret', ''),
(131, 'vk_app_id', ''),
(132, 'vk_secure_secret', ''),
(133, 'google_youtube_client_id', ''),
(134, 'google_youtube_api_secret', ''),
(135, 'google_youtube_api_key', ''),
(136, 'landing_page_status', '1'),
(137, 'beamer_product_id', ''),
(138, 'email_from', 'example@gmail.com'),
(139, 'email_name', 'SMM-Monster'),
(140, 'email_protocal', '1'),
(141, 'email_smtp_server', ''),
(142, 'email_smtp_port', ''),
(143, 'email_smtp_encryption', 'none'),
(144, 'email_smtp_username', ''),
(145, 'email_smtp_password', ''),
(146, 'email_welcome_status', '0'),
(147, 'email_payment_status', '0'),
(148, 'email_renewal_reminders_status', '0'),
(149, 'email_activation_subject', 'Hello {full_name}! Activation your account'),
(150, 'email_activation_content', 'Welcome to {website_name}! <br/><br/>Hello {full_name},  <br/><br/>Thank you for joining! We\'re glad to have you as community member, and we\'re stocked for you to start exploring our service. <br/>All you need to do is activate your account: <br/>{activation_link} <br/><br/>Thanks and Best Regards!'),
(151, 'email_welcome_subject', 'Hi {full_name}! Getting Started with Our Service'),
(152, 'email_welcome_content', 'Hello {full_name}! <br/><br/>Congratulations! <br/><br/>You have successfully signed up for our service. <br/>You have got a trial package, starting today. <br/>We hope you enjoy this package! We love to hear from you, <br/><br/>Thanks and Best Regards!'),
(153, 'email_forgot_password_subject', 'Hi {full_name}! Password Reset'),
(154, 'email_forgot_password_content', 'Hi {full_name}! <br/><br/>Somebody (hopefully you) requested a new password for your account. <br/>No changes have been made to your account yet. <br/><br/>You can reset your password by click this link: <br/>{recovery_password_link}. <br/><br/>If you did not request a password reset, no further action is required. <br/><br/>Thanks and Best Regards!'),
(155, 'email_renewal_reminders_subject', 'Hi {full_name}, Here\'s a little Reminder your Membership is expiring soon...'),
(156, 'email_renewal_reminders_content', 'Dear {full_name}, <br/><br/>Your membership with your current package will expire in {days_left} days. <br/><br/>We hope that you will take the time to renew your membership and remain part of our community. It couldn\'t be easier - just click here to renew: {pricing_page} <br/><br/>Thanks and Best Regards!'),
(157, 'email_payment_subject', 'Hi {full_name}, Thank you for your payment'),
(158, 'email_payment_content', 'Hi {full_name}, <br/><br/>You just completed the payment successfully on our service. <br/>Thank you for being awesome, we hope you enjoy your package. <br/><br/>Thanks and Best Regards!'),
(159, 'file_manager_medias_per_page', '36'),
(160, 'file_manager_design_bold_status', '0'),
(161, 'file_manager_design_bold_app_id', ''),
(162, 'file_manager_google_api_key', ''),
(163, 'file_manager_google_client_id', ''),
(164, 'file_manager_dropbox_api_key', ''),
(165, 'file_manager_onedrive_api_key', ''),
(166, 'terms_of_services', '&lt;p&gt;&lt;strong&gt;Terms of Service End-User License Agreement&lt;/strong&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\nYou are welcome to use the TubeTotal Community Management Service Platform (hereinafter referred to as Party A) and the members of the Linghui Digital Co., Ltd. (hereinafter referred to as Party B).&lt;br /&gt;\r\nPlease read this Terms of Service carefully before you register as a TubeTotal Community Business Service Platform or join a free or paid service (hereafter referred to as the Service).&lt;br /&gt;\r\nBy completing the registration of individual members or using the services on this site, you have read and agreed to all the contents of these Terms of Service and related activities, agree to abide by the relevant specifications, and have accepted Party A&amp;#39;s platform may be due to third parties. The social media platform is constantly updated or guarded against force majeure factors, resulting in some services not working. Party B is aware that it will not be able to request a refund.&lt;br /&gt;\r\n&lt;br /&gt;\r\nPlease read this agreement carefully before using this product.&lt;br /&gt;\r\n&lt;br /&gt;\r\nIf you agree to all of the terms of this End-User License Agreement, by checking the box or clicking the button to confirm your acceptance when you first use the web application, you are agreeing to all the terms of this agreement. Also, By Registering as TubeTotal&amp;#39;s member, you accept and agree to be bound by the terms of this End-User License Agreement, you are agreeing to all the terms of this agreement.&lt;br /&gt;\r\n&lt;br /&gt;\r\nNote: We are using the official Social Media API (Facebook, Twitter etc, except Instagram) which is available on Developer Center. That is a reason why this app depends on Social Media API (Facebook, Instagram, Twitter etc). Are not responsible if they made too many critical changes in their side. We also don&amp;#39;t guarantee that the compatibility of the app with Social Media API will be forever. We don&amp;#39;t provide any refund for all problems which are originated from Social Media API (Facebook, Instagram, Twitter, Youtube, Pinterest etc).&lt;/p&gt;'),
(167, 'privacy_policy', '&lt;p&gt;&lt;strong&gt;Privacy policy&lt;/strong&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\nYou are welcome to use the TubeTotal Community Management Service Platform (hereinafter referred to as Party A) and the members of the Linghui Digital Co., Ltd. (hereinafter referred to as Party B).&lt;br /&gt;\r\nThe following instructions are how we collect, use, disclose, transfer and store your information when you use our platform. Any questions or comments are welcome to provide us with reference, which will help us to make products, services, content, and advertising better.&lt;br /&gt;\r\n&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;strong&gt;User privacy protection instructions&lt;/strong&gt;&lt;br /&gt;\r\nParty A will protect Party B&amp;#39;s privacy rights in accordance with the law. Party A&amp;#39;s personal data registered or retained by Party B will only be used for internal filing and within the scope of services provided by Party A for publicity marketing and notification. Party A has strengthened relevant protection measures, but also solemnly reminds Party B: Do not publicly disclose Party B&amp;#39;s personal information on the Internet, as it may be collected and used by others, especially in public speaking on the Internet, such as chatting. Room, message board, should also avoid publishing personal information such as personal identity, password or email.&lt;br /&gt;\r\n&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&lt;strong&gt;Personal data collection and use&lt;/strong&gt;&lt;br /&gt;\r\nWhen Party B joins a member, subscribes to a newsletter, or participates in other activities, Party A requires Party B to log in to the personal data in order to complete the transaction and related member services.&lt;br /&gt;\r\nWhen Party B registers with the TubeTotal Community Management Service Platform, we will ask Party B for name, email, date of birth, phone number, address, etc. After Party B has registered the TubeTotal account and logged in to Party A and the service, we can identify Party B&amp;#39;s identity, allow Party B to use a more complete service, or participate in related promotions, offers and prizes.&lt;br /&gt;\r\n&lt;br /&gt;\r\n&amp;nbsp; The personal data we collect will be used to inform Party B about the latest product announcements, software updates, and upcoming events on the TubeTotal Community Operations Platform, and may also be used to help improve our services. The personal data obtained by Party A and its related websites are only for the purpose and scope of use within Party A according to the original instructions. For example: auditing, data analysis, research, etc., to improve product, service and customer communication.&lt;br /&gt;\r\n&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&lt;strong&gt;User profile&lt;/strong&gt;&lt;br /&gt;\r\nIn order to protect the rights and interests of all members, Party B can set a set of emails and passwords for themselves during the registration process. Through this account, Party B can use the related member services according to the platform/website description. Please keep the member account and password of Party B in good condition. Do not provide the above information to anyone. After using it, please log out of Party B&amp;#39;s account. If Party B shares a computer with another person or uses a public computer, please remember to close Party B&amp;#39;s browser to prevent others from seeing the above information or obtaining a way to enter Party B&amp;#39;s account.&lt;br /&gt;\r\n&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;strong&gt;Collection and use of browsing materials&lt;/strong&gt;&lt;br /&gt;\r\nParty A will automatically record Party B&amp;#39;s browsing activities and other related information in the platform, but this information is only used as a traffic analysis and network behavior survey to improve the service quality of the platform and website.&lt;br /&gt;\r\nParty A will not provide Party B&amp;#39;s personal data to third parties or for other purposes unless otherwise stated or provided by law.&lt;br /&gt;\r\n&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;strong&gt;Revision of the Privacy Policy&lt;/strong&gt;&lt;br /&gt;\r\nParty A reserves the right to change the contents of this statement. We will not separately notify the members of the changes in the platform/website announcement. Party A will amend and change the Privacy Policy from time to time, and the privacy policy will be published on this platform/webpage. If Party B has any questions about Party A&amp;#39;s privacy protection policy, please contact Party A directly.&lt;/p&gt;'),
(168, 'user_proxy', '1'),
(169, 'system_proxy', '1'),
(170, 'signup_email_verification', '0'),
(171, 'signup_change_email_status', '0'),
(172, 'google_recaptcha_site_key', ''),
(173, 'google_recaptcha_secret_key', ''),
(174, 'facebook_login_app_id', ''),
(175, 'facebook_login_app_secret', ''),
(176, 'facebook_login_app_version', 'v4.0'),
(177, 'google_login_client_id', ''),
(178, 'google_login_client_secret', ''),
(179, 'twitter_login_consumer_key', ''),
(180, 'twitter_login_consumer_secret', ''),
(181, 'paypal_status', '0'),
(182, 'paypal_client_id', ''),
(183, 'paypal_client_secret', ''),
(184, 'paypal_recurring_status', '0'),
(185, 'paypal_recurring_webhook_id', ''),
(186, 'stripe_status', '0'),
(187, 'stripe_publishable_key', ''),
(188, 'stripe_secret_key', ''),
(189, 'stripe_recurring_status', '0'),
(190, 'stripe_recurring_webhook_id', ''),
(191, 'payment_environment', '0'),
(192, 'payment_currency', 'RUB'),
(193, 'frontend_theme', 'pure'),
(194, 'ok_client_id', ''),
(195, 'ok_application_key', ''),
(196, 'ok_client_secret', ''),
(197, 'cron_key', '610ab8df8abed');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_package_manager`
--
-- Создание: Авг 04 2021 г., 15:49
-- Последнее обновление: Авг 04 2021 г., 15:49
--

DROP TABLE IF EXISTS `sp_package_manager`;
CREATE TABLE `sp_package_manager` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` mediumtext,
  `name` mediumtext,
  `description` mediumtext,
  `type` int(11) DEFAULT NULL,
  `price_monthly` float DEFAULT NULL,
  `price_annually` float DEFAULT NULL,
  `number_accounts` int(11) DEFAULT NULL,
  `trial_day` int(11) DEFAULT NULL,
  `popular` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `permissions` mediumtext,
  `data` mediumtext,
  `status` int(11) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sp_package_manager`
--

INSERT INTO `sp_package_manager` (`id`, `ids`, `name`, `description`, `type`, `price_monthly`, `price_annually`, `number_accounts`, `trial_day`, `popular`, `position`, `permissions`, `data`, `status`, `changed`, `created`) VALUES
(1, 'de39a2bd85b84b38207378229620a5f1', 'DEMO', 'Попробуйте Бесплатно', 1, 0, 0, 5, 7, 0, 0, '{\"post_enable\":\"1\",\"facebook_livestream_enable\":\"1\",\"facebook_post_enable\":\"1\",\"instagram_post_enable\":\"1\",\"instagram_activity_enable\":\"1\",\"instagram_analytics_enable\":\"1\",\"instagram_direct_message_enable\":\"1\",\"instagram_livestream_enable\":\"1\",\"twitter_post_enable\":\"1\",\"linkedin_post_enable\":\"1\",\"pinterest_post_enable\":\"1\",\"pinterest_activity_enable\":\"1\",\"telegram_post_enable\":\"1\",\"vk_post_enable\":\"1\",\"youtube_post_enable\":\"1\",\"youtube_livestream_enable\":\"1\",\"ok_post_enable\":\"1\",\"schedules_enable\":\"1\",\"file_manager_enable\":\"1\",\"file_manager_google_drive\":\"1\",\"file_manager_dropbox\":\"1\",\"file_manager_onedrive\":\"1\",\"file_manager_photo\":\"1\",\"file_manager_video\":\"1\",\"file_manager_image_editor\":\"1\",\"max_storage_size\":\"100\",\"max_file_size\":\"10\",\"watermark_enable\":\"1\",\"group_manager_enable\":\"1\",\"caption_enable\":\"1\",\"account_manager_enable\":\"1\"}', NULL, 1, '2020-10-16 19:59:39', '2019-11-20 22:11:25'),
(2, '8c0e2081734e240051ba3f9e1dee9d0d', 'Basic', 'Не плохо для начала', 2, 300, 2500, 3, 0, 0, 2, '{\"post_enable\":\"1\",\"facebook_livestream_enable\":\"1\",\"facebook_post_enable\":\"1\",\"instagram_post_enable\":\"1\",\"instagram_activity_enable\":\"1\",\"instagram_analytics_enable\":\"1\",\"instagram_direct_message_enable\":\"1\",\"instagram_livestream_enable\":\"1\",\"twitter_post_enable\":\"1\",\"linkedin_post_enable\":\"1\",\"pinterest_post_enable\":\"1\",\"pinterest_activity_enable\":\"1\",\"telegram_post_enable\":\"1\",\"vk_post_enable\":\"1\",\"youtube_post_enable\":\"1\",\"youtube_livestream_enable\":\"1\",\"ok_post_enable\":\"1\",\"schedules_enable\":\"1\",\"file_manager_enable\":\"1\",\"file_manager_google_drive\":\"1\",\"file_manager_dropbox\":\"1\",\"file_manager_onedrive\":\"1\",\"file_manager_photo\":\"1\",\"file_manager_video\":\"1\",\"file_manager_image_editor\":\"1\",\"max_storage_size\":\"100\",\"max_file_size\":\"10\",\"watermark_enable\":\"1\",\"group_manager_enable\":\"1\",\"caption_enable\":\"1\",\"account_manager_enable\":\"1\"}', NULL, 1, '2020-10-16 20:00:02', '2020-02-26 10:52:26'),
(3, 'c10f887a5185198a77094ce03f7114b2', 'Standard', 'Отличный вариант', 2, 500, 4500, 5, 0, 1, 3, '{\"post_enable\":\"1\",\"facebook_livestream_enable\":\"1\",\"facebook_post_enable\":\"1\",\"instagram_post_enable\":\"1\",\"instagram_activity_enable\":\"1\",\"instagram_analytics_enable\":\"1\",\"instagram_direct_message_enable\":\"1\",\"instagram_livestream_enable\":\"1\",\"twitter_post_enable\":\"1\",\"linkedin_post_enable\":\"1\",\"pinterest_post_enable\":\"1\",\"pinterest_activity_enable\":\"1\",\"telegram_post_enable\":\"1\",\"vk_post_enable\":\"1\",\"youtube_post_enable\":\"1\",\"youtube_livestream_enable\":\"1\",\"ok_post_enable\":\"1\",\"schedules_enable\":\"1\",\"file_manager_enable\":\"1\",\"file_manager_google_drive\":\"1\",\"file_manager_dropbox\":\"1\",\"file_manager_onedrive\":\"1\",\"file_manager_photo\":\"1\",\"file_manager_video\":\"1\",\"file_manager_image_editor\":\"1\",\"max_storage_size\":\"500\",\"max_file_size\":\"50\",\"watermark_enable\":\"1\",\"group_manager_enable\":\"1\",\"caption_enable\":\"1\",\"account_manager_enable\":\"1\"}', NULL, 1, '2020-10-16 19:58:40', '2020-02-26 10:53:34'),
(4, '6ffde698600b5eca3873c6f60a62782e', 'Permium', 'Только для избранных', 2, 700, 6500, 7, 0, 0, 4, '{\"post_enable\":\"1\",\"facebook_livestream_enable\":\"1\",\"facebook_post_enable\":\"1\",\"instagram_post_enable\":\"1\",\"instagram_activity_enable\":\"1\",\"instagram_analytics_enable\":\"1\",\"instagram_direct_message_enable\":\"1\",\"instagram_livestream_enable\":\"1\",\"twitter_post_enable\":\"1\",\"linkedin_post_enable\":\"1\",\"pinterest_post_enable\":\"1\",\"pinterest_activity_enable\":\"1\",\"telegram_post_enable\":\"1\",\"vk_post_enable\":\"1\",\"youtube_post_enable\":\"1\",\"youtube_livestream_enable\":\"1\",\"ok_post_enable\":\"1\",\"schedules_enable\":\"1\",\"file_manager_enable\":\"1\",\"file_manager_google_drive\":\"1\",\"file_manager_dropbox\":\"1\",\"file_manager_onedrive\":\"1\",\"file_manager_photo\":\"1\",\"file_manager_video\":\"1\",\"file_manager_image_editor\":\"1\",\"max_storage_size\":\"1000\",\"max_file_size\":\"100\",\"watermark_enable\":\"1\",\"group_manager_enable\":\"1\",\"caption_enable\":\"1\",\"account_manager_enable\":\"1\"}', NULL, 1, '2020-10-16 20:03:28', '2020-04-09 15:21:42');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_payment_history`
--
-- Создание: Авг 04 2021 г., 15:49
-- Последнее обновление: Авг 04 2021 г., 15:49
--

DROP TABLE IF EXISTS `sp_payment_history`;
CREATE TABLE `sp_payment_history` (
  `id` int(11) NOT NULL,
  `ids` text,
  `uid` int(11) DEFAULT NULL,
  `package` int(11) DEFAULT NULL,
  `type` text,
  `transaction_id` text,
  `plan` int(1) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_payment_subscriptions`
--
-- Создание: Авг 04 2021 г., 15:49
-- Последнее обновление: Авг 04 2021 г., 15:49
--

DROP TABLE IF EXISTS `sp_payment_subscriptions`;
CREATE TABLE `sp_payment_subscriptions` (
  `id` int(11) NOT NULL,
  `ids` text,
  `uid` int(11) DEFAULT NULL,
  `package` int(11) DEFAULT NULL,
  `type` text,
  `subscription_id` text,
  `customer_id` text,
  `plan` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_pinterest_activities`
--
-- Создание: Авг 04 2021 г., 15:49
--

DROP TABLE IF EXISTS `sp_pinterest_activities`;
CREATE TABLE `sp_pinterest_activities` (
  `id` int(11) NOT NULL,
  `ids` text,
  `team_id` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT '0',
  `account` text,
  `action` longtext,
  `time` int(11) DEFAULT NULL,
  `data` longtext,
  `settings` longtext,
  `status` int(1) DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_pinterest_activities_log`
--
-- Создание: Авг 04 2021 г., 15:49
--

DROP TABLE IF EXISTS `sp_pinterest_activities_log`;
CREATE TABLE `sp_pinterest_activities_log` (
  `id` int(11) NOT NULL,
  `ids` text,
  `team_id` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `action` text,
  `user_id` text,
  `media_id` text,
  `data` longtext,
  `created` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_posts`
--
-- Создание: Авг 04 2021 г., 15:49
--

DROP TABLE IF EXISTS `sp_posts`;
CREATE TABLE `sp_posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` text,
  `team_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `social_network` text,
  `category` text,
  `type` text,
  `data` longtext,
  `time_post` int(11) DEFAULT NULL,
  `time_delete` int(11) DEFAULT NULL,
  `delay` int(11) DEFAULT NULL,
  `repost_frequency` int(11) DEFAULT NULL,
  `repost_until` int(11) DEFAULT NULL,
  `result` text,
  `status` int(11) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_proxy_manager`
--
-- Создание: Авг 04 2021 г., 15:50
--

DROP TABLE IF EXISTS `sp_proxy_manager`;
CREATE TABLE `sp_proxy_manager` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` text,
  `address` text,
  `location` text,
  `limit` text,
  `packages` text,
  `active` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_purchase_manager`
--
-- Создание: Авг 04 2021 г., 15:50
--

DROP TABLE IF EXISTS `sp_purchase_manager`;
CREATE TABLE `sp_purchase_manager` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` text,
  `item_id` text,
  `purchase_code` text,
  `version` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_sessions`
--
-- Создание: Авг 04 2021 г., 15:49
-- Последнее обновление: Авг 04 2021 г., 15:59
--

DROP TABLE IF EXISTS `sp_sessions`;
CREATE TABLE `sp_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sp_sessions`
--

INSERT INTO `sp_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0a7da9be1f0135897a5b75135550289ca1e9ddf1', '79.173.83.74', 1628092639, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383039323633393b6c616e67756167657c733a3134353a227b226964223a2235222c22696473223a223135623166366137313862393930376634336133633365666338313431303432222c226e616d65223a225275737369616e222c22636f6465223a2272752d5255222c2269636f6e223a22666c61672d69636f6e20666c61672d69636f6e2d7275222c2269735f64656661756c74223a2231222c22737461747573223a2231227d223b74696d657a6f6e657c733a31333a224575726f70652f4d6f73636f77223b7569647c733a33323a226661383363306665653637616264396136613534363037303435323832666636223b7465616d5f69647c733a33323a226132376531663963613233343762623736366633333262383836336562653966223b),
('503e64fa3ecec6702a7ae70b4839ffe32443f07e', '79.173.83.74', 1628092765, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383039323633393b6c616e67756167657c733a3134353a227b226964223a2235222c22696473223a223135623166366137313862393930376634336133633365666338313431303432222c226e616d65223a225275737369616e222c22636f6465223a2272752d5255222c2269636f6e223a22666c61672d69636f6e20666c61672d69636f6e2d7275222c2269735f64656661756c74223a2231222c22737461747573223a2231227d223b74696d657a6f6e657c733a31333a224575726f70652f4d6f73636f77223b7569647c733a33323a226661383363306665653637616264396136613534363037303435323832666636223b7465616d5f69647c733a33323a226132376531663963613233343762623736366633333262383836336562653966223b);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_team`
--
-- Создание: Авг 04 2021 г., 15:50
-- Последнее обновление: Авг 04 2021 г., 15:50
--

DROP TABLE IF EXISTS `sp_team`;
CREATE TABLE `sp_team` (
  `id` int(11) NOT NULL,
  `ids` mediumtext,
  `owner` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `permissions` longtext NOT NULL,
  `data` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sp_team`
--

INSERT INTO `sp_team` (`id`, `ids`, `owner`, `pid`, `permissions`, `data`) VALUES
(1, 'a27e1f9ca2347bb766f332b8863ebe9f', 1, 1, '{\"post_enable\":\"1\",\"facebook_livestream_enable\":\"1\",\"facebook_post_enable\":\"1\",\"instagram_post_enable\":\"1\",\"instagram_activity_enable\":\"1\",\"instagram_analytics_enable\":\"1\",\"instagram_direct_message_enable\":\"1\",\"instagram_livestream_enable\":\"1\",\"twitter_post_enable\":\"1\",\"linkedin_post_enable\":\"1\",\"pinterest_post_enable\":\"1\",\"pinterest_activity_enable\":\"1\",\"telegram_post_enable\":\"1\",\"vk_post_enable\":\"1\",\"youtube_post_enable\":\"1\",\"youtube_livestream_enable\":\"1\",\"ok_post_enable\":\"1\",\"schedules_enable\":\"1\",\"file_manager_enable\":\"1\",\"file_manager_google_drive\":\"1\",\"file_manager_dropbox\":\"1\",\"file_manager_onedrive\":\"1\",\"file_manager_photo\":\"1\",\"file_manager_video\":\"1\",\"file_manager_image_editor\":\"1\",\"max_storage_size\":\"100\",\"max_file_size\":\"10\",\"watermark_enable\":\"1\",\"group_manager_enable\":\"1\",\"caption_enable\":\"1\",\"account_manager_enable\":\"1\"}', '{\"facebook_post_success_count\":0,\"facebook_post_error_count\":0,\"instagram_post_success_count\":0,\"instagram_post_error_count\":0,\"twitter_post_success_count\":0,\"twitter_post_error_count\":0,\"facebook_livestream_success_count\":0,\"facebook_livestream_error_count\":0,\"instagram_livestream_success_count\":0,\"instagram_livestream_error_count\":0,\"instagram_activity_success_count\":0,\"instagram_activity_error_count\":0,\"instagram_analytics_success_count\":0,\"instagram_analytics_error_count\":0,\"instagram_direct_message_success_count\":0,\"instagram_direct_message_error_count\":0,\"linkedin_post_success_count\":0,\"linkedin_post_error_count\":0,\"pinterest_post_success_count\":0,\"pinterest_post_error_count\":0,\"pinterest_activity_success_count\":0,\"pinterest_activity_error_count\":0,\"telegram_post_success_count\":0,\"telegram_post_error_count\":0,\"vk_post_success_count\":0,\"vk_post_error_count\":0,\"youtube_post_success_count\":0,\"youtube_post_error_count\":0,\"youtube_livestream_success_count\":0,\"youtube_livestream_error_count\":0,\"ok_post_success_count\":0,\"ok_post_error_count\":0,\"watermark_size\":30,\"watermark_opacity\":70,\"watermark_position\":\"lb\",\"watermark_mask\":\"\",\"facebook_post_media_count\":0,\"facebook_post_link_count\":0,\"facebook_post_text_count\":0,\"instagram_post_media_count\":0,\"instagram_post_story_count\":0,\"instagram_post_igtv_count\":0,\"instagram_post_carousel_count\":0,\"linkedin_post_media_count\":0,\"linkedin_post_link_count\":0,\"linkedin_post_text_count\":0,\"ok_post_photo_count\":0,\"ok_post_link_count\":0,\"ok_post_text_count\":0,\"pinterest_post_photo_count\":0,\"telegram_post_photo_count\":0,\"telegram_post_video_count\":0,\"telegram_post_link_count\":0,\"telegram_post_text_count\":0,\"twitter_post_photo_count\":0,\"twitter_post_video_count\":0,\"twitter_post_link_count\":0,\"twitter_post_text_count\":0,\"vk_post_photo_count\":0,\"vk_post_video_count\":0,\"vk_post_link_count\":0,\"vk_post_text_count\":0,\"youtube_post_video_count\":0}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_team_member`
--
-- Создание: Авг 04 2021 г., 15:50
--

DROP TABLE IF EXISTS `sp_team_member`;
CREATE TABLE `sp_team_member` (
  `id` int(11) NOT NULL,
  `ids` mediumtext,
  `uid` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `permissions` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_users`
--
-- Создание: Авг 04 2021 г., 15:50
-- Последнее обновление: Авг 04 2021 г., 15:50
--

DROP TABLE IF EXISTS `sp_users`;
CREATE TABLE `sp_users` (
  `id` int(11) NOT NULL,
  `ids` mediumtext,
  `pid` text,
  `role` int(11) DEFAULT NULL,
  `fullname` mediumtext,
  `email` mediumtext,
  `password` mediumtext,
  `package` int(11) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `timezone` mediumtext,
  `login_type` mediumtext,
  `data` mediumtext,
  `status` int(11) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sp_users`
--

INSERT INTO `sp_users` (`id`, `ids`, `pid`, `role`, `fullname`, `email`, `password`, `package`, `expiration_date`, `timezone`, `login_type`, `data`, `status`, `changed`, `created`) VALUES
(1, 'fa83c0fee67abd9a6a54607045282ff6', NULL, 1, 'Admin Admin', 'admin@admin.ru', '6a5be8fb198f94424ffeed351c18ddf6', 1, '2030-09-10', 'Europe/Moscow', 'direct', NULL, 2, '2020-04-10 15:12:43', '2020-04-10 15:12:43');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `sp_account_manager`
--
ALTER TABLE `sp_account_manager`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sp_caption`
--
ALTER TABLE `sp_caption`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sp_file_manager`
--
ALTER TABLE `sp_file_manager`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sp_group_manager`
--
ALTER TABLE `sp_group_manager`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sp_instagram_activities`
--
ALTER TABLE `sp_instagram_activities`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sp_instagram_activities_log`
--
ALTER TABLE `sp_instagram_activities_log`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sp_instagram_analytics`
--
ALTER TABLE `sp_instagram_analytics`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sp_instagram_analytics_stats`
--
ALTER TABLE `sp_instagram_analytics_stats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sp_instagram_sessions`
--
ALTER TABLE `sp_instagram_sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индексы таблицы `sp_language`
--
ALTER TABLE `sp_language`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sp_language_category`
--
ALTER TABLE `sp_language_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sp_options`
--
ALTER TABLE `sp_options`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sp_package_manager`
--
ALTER TABLE `sp_package_manager`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sp_payment_history`
--
ALTER TABLE `sp_payment_history`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sp_payment_subscriptions`
--
ALTER TABLE `sp_payment_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sp_pinterest_activities`
--
ALTER TABLE `sp_pinterest_activities`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sp_pinterest_activities_log`
--
ALTER TABLE `sp_pinterest_activities_log`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sp_posts`
--
ALTER TABLE `sp_posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sp_proxy_manager`
--
ALTER TABLE `sp_proxy_manager`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sp_purchase_manager`
--
ALTER TABLE `sp_purchase_manager`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sp_sessions`
--
ALTER TABLE `sp_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Индексы таблицы `sp_team`
--
ALTER TABLE `sp_team`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sp_team_member`
--
ALTER TABLE `sp_team_member`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sp_users`
--
ALTER TABLE `sp_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `sp_account_manager`
--
ALTER TABLE `sp_account_manager`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sp_caption`
--
ALTER TABLE `sp_caption`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sp_file_manager`
--
ALTER TABLE `sp_file_manager`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sp_group_manager`
--
ALTER TABLE `sp_group_manager`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sp_instagram_activities`
--
ALTER TABLE `sp_instagram_activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sp_instagram_activities_log`
--
ALTER TABLE `sp_instagram_activities_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sp_instagram_analytics`
--
ALTER TABLE `sp_instagram_analytics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sp_instagram_analytics_stats`
--
ALTER TABLE `sp_instagram_analytics_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sp_instagram_sessions`
--
ALTER TABLE `sp_instagram_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sp_language`
--
ALTER TABLE `sp_language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7318;

--
-- AUTO_INCREMENT для таблицы `sp_language_category`
--
ALTER TABLE `sp_language_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `sp_options`
--
ALTER TABLE `sp_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT для таблицы `sp_package_manager`
--
ALTER TABLE `sp_package_manager`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `sp_payment_history`
--
ALTER TABLE `sp_payment_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sp_payment_subscriptions`
--
ALTER TABLE `sp_payment_subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sp_pinterest_activities`
--
ALTER TABLE `sp_pinterest_activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sp_pinterest_activities_log`
--
ALTER TABLE `sp_pinterest_activities_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sp_posts`
--
ALTER TABLE `sp_posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sp_proxy_manager`
--
ALTER TABLE `sp_proxy_manager`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sp_purchase_manager`
--
ALTER TABLE `sp_purchase_manager`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `sp_team`
--
ALTER TABLE `sp_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `sp_team_member`
--
ALTER TABLE `sp_team_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sp_users`
--
ALTER TABLE `sp_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
