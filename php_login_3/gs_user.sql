-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:3306
-- 生成日時: 2022 年 2 月 17 日 17:54
-- サーバのバージョン： 5.7.32
-- PHP のバージョン: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- データベース: `gs_user`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_users`
--

CREATE TABLE `gs_users` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_users`
--

INSERT INTO `gs_users` (`id`, `name`, `email`, `password`, `image`) VALUES
(21, '佐藤　一郎', 'xyz@xyz', '$2y$10$5mOmG7Gu1KwtD2WrA.P5le9p5KOpsYxpank2KPhcAOyxY0Vm3rKr6', ''),
(25, 'かきく', 'kakiku@kakiku', '$2y$10$dOJhwVgIc5GxzU7PI7myseJZa/txXi7..zeQJ0a9dFn.DDhTk.t1K', ''),
(26, '田中', 'ooo@ppp', '$2y$10$7DmztUV95x8lEuz2QZYUmeOzZ5RVvLANL9DH14h3tBVKwF9WG2j2e', ''),
(29, '中田', 'nakata@nakata', '$2y$10$olI16os1VTuMgYG4CbJgr.B7R2mTeCWJ8vAadmfsf9.jxgbAaBbiW', ''),
(30, '岩田', 'iwata@iwata', '$2y$10$5z1MQoJ9g8FiNwbvXgV60em.QndpPJtjXsd/ZOCpvJHyz7q71.Yle', ''),
(32, 'yamaoka', 'yamaoka@yamaoka', 'yamaokayamaoka', ''),
(33, 'okada', 'okada@okada', '$2y$10$YQCSzndcz18/Upy8PjV2NuD9GK5NEoXdb6v76J8vGoxxPjSg33Zg.', ''),
(34, '田中', 'tanaka@tanaka', '$2y$10$/P8BmSKn12LI9icIr98sqeBjInjwwwnz6lxbS8vzwad1pTShPcHdC', ''),
(35, 'mama', 'mama@mama', '$2y$10$PUFkvH6jYA1HO9lFhs8Q6Ob5j3muPLvSI4CED8zJyr8mjPabDE5me', '');

-- --------------------------------------------------------

--
-- テーブルの構造 `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `images`
--

INSERT INTO `images` (`id`, `name`) VALUES
(1, '1818377584620e33a9af97f6.62092014.jpeg'),
(2, '553513591620e34ba060bd6.64032882.jpeg'),
(3, '203791356620e35719cb326.91645698.jpeg'),
(4, '1662636752620e35bbbdbf48.98893631.jpeg'),
(5, '488499112620e35c25f9e69.01231822.jpeg'),
(6, '553488769620e35d3a24343.77553969.jpeg'),
(7, '957308030620e3719190bd7.51843214.jpeg'),
(8, '844547604620e390de21240.66832080.jpeg'),
(9, '84577761620e39fe351083.50265994.jpeg'),
(10, '377010095620e3b26663779.78431611jpeg'),
(11, '696344797620e3c568e6ca9.99345407.'),
(12, '425007119620e3d5e682516.34359839.'),
(13, '1841601673620e3d8dd49185.56909623jpeg'),
(14, '1384900638620e3da88c9af9.38501225.jpeg'),
(15, '1251262147620e4479222171.81165800.jpeg'),
(16, '40207097620e47c717afc0.83551611.jpeg'),
(17, '1227315161620e4a298352d8.90710825.png'),
(18, '470155822620e4d7f1a68a2.32487023.jpeg'),
(19, '279972083620e53967c7a75.99656375.jpeg'),
(20, '1522195467620e5659f0f3d7.73818644.jpeg'),
(21, '365114138620e56cbb9e622.68301742.jpeg'),
(22, '1727047858620e59489cb638.37541570.jpeg'),
(23, '1889560974620e5a219e1db4.21753519.jpeg'),
(24, '459489150620e5ae38970b8.67105945.jpeg'),
(25, '1756409044620e5d6916e417.27393465.jpeg'),
(26, '45162480620e5db1273c71.67365129.jpeg'),
(27, '185450697620e5e3660b951.47572770.jpeg'),
(28, '1378899900620e5f0d340390.05891476.jpeg'),
(29, '1965404330620e64ed422756.84940534.jpeg'),
(30, '819294799620e6511d68915.89567870.jpeg'),
(31, '1736710722620e6662a96983.12038818.jpeg'),
(32, '1787149301620e66880a8d63.19943580.jpeg'),
(33, '339672491620e6739516db3.23935889.jpeg'),
(34, '1964957606620e6755e7b079.91540188.jpeg'),
(35, '1515318802620e6818954d69.73577177.jpeg'),
(36, '1487032582620e685a347976.73523347.jpeg'),
(37, '2059508681620e6888167236.80454945.jpeg'),
(38, '910509256620e68cccfd262.31630176.jpeg'),
(39, '1394067395620e694cc131a4.49574805.jpeg'),
(40, '1019191033620e6b4fde9651.08422093.jpeg'),
(41, '1132679982620e6b9eddc416.65415516.jpeg'),
(42, '207755098620e6c0bd6a8d7.71448100.jpeg'),
(43, '1209109692620e6c1db30bd6.41280203.jpeg'),
(44, '1357791047620e6c99108d29.33769470.jpeg'),
(45, '1251764270620e6cadef2483.29470162.jpeg'),
(46, '406869107620e6d038bca72.96092966.jpeg'),
(47, '1449145403620e701621f5d2.09078550.png'),
(48, '282546854620e70b660ff31.11878655.png'),
(49, '1669329273620e7b1c8eff81.77486513.jpeg'),
(50, '1343171467620e7b58103ef5.11829595.jpeg'),
(51, '487689574620e7fbf76fce9.73099135.jpeg'),
(52, '1526212912620e803db71826.88578214.jpeg'),
(53, '1141561493620e810bc0d2e4.80750444.jpeg'),
(54, '1661317831620e816e53bf53.83229665.jpeg'),
(55, '1342950552620e81841a6325.70553114.jpeg'),
(56, '840563852620e829910ecd5.29750392.jpeg'),
(57, '1239186575620e82a06127b3.02656102.jpeg'),
(58, '1703444840620e83d3a1ebe2.47908544.jpeg'),
(59, '354041103620e83f4b158a8.32229978.jpeg'),
(60, '1646795986620e841c296df8.82152436.jpeg'),
(61, '959569323620e844eac79c8.96002239.jpeg'),
(62, '545697648620e846826c7a1.77958631.jpeg'),
(63, '1068408628620e853d4076d5.89325205.jpeg'),
(64, '607931818620e85523422a7.74893013.jpeg'),
(65, '244542865620e8585b114b2.50360939.jpeg'),
(66, '716588678620e85dfac5b99.93450974.jpeg'),
(67, '1192384435620e869572ea57.09296719.jpeg'),
(68, '1770468083620e876f329b63.72105220.jpeg'),
(69, '740110839620e87d174c6c9.46298736.jpeg'),
(70, '1857718624620e8800da3511.85803884.jpeg'),
(71, '1522386447620e8848b12af8.67843104.jpeg'),
(72, '2083480511620e88d0e297b7.81154835.jpeg'),
(73, '979603128620e895a054e96.05317320.jpeg'),
(74, '1226725746620e89dc433e97.21501820.jpeg'),
(75, '559578020620e89f1979a94.80048684.jpeg'),
(76, '88144538620e8a7b200b27.31111905.jpeg');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_users`
--
ALTER TABLE `gs_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- テーブルのインデックス `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_users`
--
ALTER TABLE `gs_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- テーブルの AUTO_INCREMENT `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
