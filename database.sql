SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `communes` (
  `idCommune` int(11) NOT NULL,
  `name` varchar(900) NOT NULL,
  `deliveryFees` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `communes` (`idCommune`, `name`, `deliveryFees`) VALUES
(1, 'Bandalungwa', 3),
(2, 'Barumbu', 3),
(3, 'Bumbu', 3),
(4, 'Gombe', 3),
(5, 'Kalamu', 3),
(6, 'Kasa-Vubu', 3),
(7, 'Kimbanseke', 3),
(8, 'Kinshasa', 3),
(9, 'Kintambo', 3),
(10, 'Kisenso', 3),
(11, 'Lemba', 3),
(12, 'Limete', 3),
(13, 'Lingwala', 3),
(14, 'Makala', 3),
(15, 'Maluku', 3),
(16, 'Masina', 3),
(17, 'Matete', 3),
(18, 'Mont-Ngafula', 3),
(19, 'Ndjili', 3),
(20, 'Ngaba', 3),
(21, 'Ngaliema', 3),
(22, 'Ngiri-Ngiri', 3),
(23, 'Nsele', 3),
(24, 'Selembao', 3);

CREATE TABLE `countries` (
  `idCountry` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `imageUrl` varchar(500) NOT NULL,
  `timestamp` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `countries` (`idCountry`, `name`, `imageUrl`, `timestamp`) VALUES
(1, 'International', 'eu.png', 1714996494),
(2, 'France', 'france.png', 1714996494),
(3, 'Angleterre', 'angleterre.png', 1714996494),
(4, 'Espagne', 'espagne.png', 1714996494);

CREATE TABLE `customers` (
  `idCustomer` int(11) NOT NULL,
  `name` varchar(700) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phoneNumber` varchar(700) NOT NULL,
  `password` varchar(700) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `codeSended` varchar(11) NOT NULL,
  `timestamp` bigint(20) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `customers` (`idCustomer`, `name`, `gender`, `phoneNumber`, `password`, `verified`, `codeSended`, `timestamp`, `deleted`) VALUES
(1, 'Godwin Burume', 'M', '+243815461960', '$2a$10$PYrVtmgy2eeKzZddTEm31uOSCGESr4EX5BtI.4y5U7tSswKfo5Z8G', 1, '7705', 1672661350, 0);

CREATE TABLE `notificationTokens` (
  `id` int(11) NOT NULL,
  `token` varchar(500) NOT NULL,
  `platform` varchar(500) NOT NULL,
  `timestamp` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `orders` (
  `idOrder` int(11) NOT NULL,
  `idCustomer` int(11) NOT NULL,
  `idDeliverer` int(11) DEFAULT NULL,
  `orderId` varchar(100) NOT NULL,
  `nameOfCustomer` varchar(500) NOT NULL,
  `genderOfCustomer` varchar(50) NOT NULL,
  `phoneNumberOfCustomer` varchar(20) NOT NULL,
  `commune` varchar(500) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `reference` varchar(3000) NOT NULL,
  `comment` varchar(3000) DEFAULT NULL,
  `invoiceUrl` varchar(900) DEFAULT NULL,
  `creationDate` bigint(20) NOT NULL,
  `lastUpdate` bigint(20) NOT NULL,
  `total` float NOT NULL,
  `deliveryFees` float NOT NULL,
  `serviceFees` float NOT NULL,
  `whyRefused` tinyint(1) DEFAULT NULL,
  `status` varchar(50) NOT NULL COMMENT 'queued, accepted, refused, out, closed',
  `deliveryTimestamp` bigint(20) NOT NULL,
  `slot` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `orders` (`idOrder`, `idCustomer`, `idDeliverer`, `orderId`, `nameOfCustomer`, `genderOfCustomer`, `phoneNumberOfCustomer`, `commune`, `address`, `reference`, `comment`, `invoiceUrl`, `creationDate`, `lastUpdate`, `total`, `deliveryFees`, `serviceFees`, `whyRefused`, `status`, `deliveryTimestamp`, `slot`) VALUES
(1, 1, NULL, 'lqdfjqsdf', 'Godwin Burume', 'M', '+243815461960', 'Gombe', 'Avenue Justice', 'Aefqsdf', '', NULL, 1715100932, 1715100932, 200, 3, 6, NULL, 'queued', 1715100928, 'Après-midi (12h - 16h)'),
(2, 1, NULL, 'lqdfjqsdf', 'Godwin Burume', 'M', '+243815461960', 'Gombe', 'Avenue Justice', 'Aefqsdf', '', NULL, 1715110759, 1715110759, 200, 3, 6, NULL, 'queued', 1715110754, 'Matin (8h - 12h)'),
(3, 1, NULL, 'lqdfjqsdf', 'Godwin Burume', 'M', '+243815461960', 'Gombe', 'Avenue Justice', 'Aefqsdf', '', NULL, 1715111324, 1715111324, 215, 3, 6.45, NULL, 'queued', 1715543315, 'Soir (16h - 20h)'),
(4, 1, NULL, 'lqdfjqsdf', 'Godwin Burume', 'M', '+243815461960', 'Gombe', 'Avenue Justice', 'Aefqsdf', '', NULL, 1715113191, 1715113191, 215, 3, 6.45, NULL, 'queued', 1715545186, 'Après-midi (12h - 16h)');

CREATE TABLE `ordersItem` (
  `idItem` int(11) NOT NULL,
  `idOrder` int(11) NOT NULL,
  `idCustomer` int(11) NOT NULL,
  `idSupplier` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `idSize` int(11) NOT NULL,
  `nameOfProduct` varchar(500) NOT NULL,
  `nameOfSize` varchar(500) NOT NULL,
  `price` float NOT NULL,
  `number` varchar(500) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `ordersItem` (`idItem`, `idOrder`, `idCustomer`, `idSupplier`, `idProduct`, `idSize`, `nameOfProduct`, `nameOfSize`, `price`, `number`, `name`) VALUES
(1, 1, 1, 1, 8, 23, 'Maillot PSG', 'L', 100, NULL, NULL),
(2, 1, 1, 1, 8, 21, 'Maillot PSG', 'S', 100, '69', 'Godwin'),
(3, 2, 1, 1, 8, 23, 'Maillot PSG', 'L', 110, NULL, NULL),
(4, 2, 1, 1, 8, 21, 'Maillot PSG', 'S', 105, '69', 'Godwin'),
(5, 3, 1, 1, 8, 23, 'Maillot PSG', 'L', 110, NULL, NULL),
(6, 3, 1, 1, 8, 21, 'Maillot PSG', 'S', 105, '69', 'Godwin'),
(7, 4, 1, 1, 8, 23, 'Maillot PSG', 'L', 110, NULL, NULL),
(8, 4, 1, 1, 8, 21, 'Maillot PSG', 'S', 105, '69', 'Godwin');

CREATE TABLE `products` (
  `idProduct` int(11) NOT NULL,
  `idSupplier` int(11) NOT NULL,
  `idCountry` int(11) NOT NULL,
  `idTeam` int(11) NOT NULL,
  `name` varchar(700) NOT NULL,
  `nameOfCountry` varchar(500) NOT NULL,
  `nameOfTeam` varchar(500) NOT NULL,
  `imageUrl` varchar(700) NOT NULL,
  `price` float NOT NULL,
  `gender` varchar(500) NOT NULL,
  `championship` varchar(500) NOT NULL,
  `type` varchar(500) NOT NULL,
  `years` varchar(500) NOT NULL,
  `brand` varchar(500) NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `canEditNumber` tinyint(1) NOT NULL,
  `canEditName` tinyint(11) NOT NULL,
  `editPricing` float NOT NULL DEFAULT '0',
  `timestamp` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `products` (`idProduct`, `idSupplier`, `idCountry`, `idTeam`, `name`, `nameOfCountry`, `nameOfTeam`, `imageUrl`, `price`, `gender`, `championship`, `type`, `years`, `brand`, `available`, `canEditNumber`, `canEditName`, `editPricing`, `timestamp`) VALUES
(4, 1, 1, 1, 'Maillot de France', 'France', 'France', 'equipe_france.png', 85, 'Homme', 'International', 'fan', '2021-2023', 'Nike', 1, 1, 1, 5, 1714940297),
(5, 1, 1, 2, 'Maillot d\'Espagne', 'Espagne', 'Espagne', 'equipe_espagne.png', 85, 'Homme', 'International', 'fan', '2021-2023', 'Adidas', 1, 1, 1, 5, 1714940297),
(6, 1, 1, 3, 'Maillot du Portugal', 'Portugal', 'Portugal', 'equipe_portugal.png', 85, 'Homme', 'International', 'fan', '2021-2023', 'Puma', 1, 1, 1, 5, 1714940297),
(7, 1, 1, 4, 'Maillot de Belgique', 'Belgique', 'Belgique', 'equipe_belgique.png', 85, 'Homme', 'International', 'fan', '2021-2023', 'Umbro', 1, 1, 1, 5, 1714940297),
(8, 1, 2, 5, 'Maillot PSG', 'France', 'PSG', 'psg.jpg', 100, 'Homme', 'Ligue 1', 'fan', '2021-2023', 'Nike', 1, 1, 1, 5, 1714940297),
(9, 1, 2, 6, 'Maillot Lille', 'France', 'Lille', 'lille.jpg', 90, 'Homme', 'Ligue 1', 'fan', '2021-2023', 'New Balance', 1, 1, 1, 5, 1714940297),
(10, 1, 2, 7, 'Maillot Monaco', 'France', 'Monaco', 'monaco.png', 90, 'Homme', 'Ligue 1', 'fan', '2021-2023', 'Kappa', 1, 1, 1, 5, 1714940297),
(11, 1, 2, 8, 'Maillot Nantes', 'France', 'AC Nantes', 'nante.jpeg', 90, 'Homme', 'Ligue 1', 'fan', '2021-2023', 'Errea', 1, 1, 1, 5, 1714940297),
(12, 1, 3, 9, 'Maillot Arsenal', 'Angleterre', 'Arsenal', 'arsenal.jpeg', 95, 'Homme', 'Premier League', 'fan', '2021-2023', 'Adidas', 1, 1, 1, 5, 1714940297),
(13, 1, 3, 10, 'Maillot Tottenham', 'Angleterre', 'Tottenham', 'tottenham.png', 95, 'Homme', 'Premier League', 'fan', '2021-2023', 'Nike', 1, 1, 1, 5, 1714940297),
(14, 1, 3, 11, 'Maillot Man City', 'Angleterre', 'Man City', 'mancity.png', 100, 'Homme', 'Premier League', 'fan', '2021-2023', 'Puma', 1, 1, 1, 5, 1714940297),
(15, 1, 3, 12, 'Maillot Liverpool', 'Angleterre', 'Liverpool', 'liverpool.jpg', 100, 'Homme', 'Premier League', 'fan', '2021-2023', 'New Balance', 1, 1, 1, 5, 1714940297),
(16, 1, 4, 13, 'Maillot Atletico Madrid', 'Espagne', 'Atletico Madrid', 'atletico.png', 95, 'Homme', 'La Liga', 'fan', '2021-2023', 'Nike', 1, 1, 1, 5, 1714940297),
(17, 1, 4, 14, 'Maillot Real Madrid', 'Espagne', 'Real Madrid', 'realmadrid.png', 100, 'Homme', 'La Liga', 'fan', '2021-2023', 'Adidas', 1, 1, 1, 5, 1714940297),
(18, 1, 4, 15, 'Maillot FC Barcelone', 'Espagne', 'FC Barcelone', 'barca.png', 100, 'Homme', 'La Liga', 'fan', '2021-2023', 'Nike', 1, 1, 1, 5, 1714940297),
(19, 1, 4, 16, 'Maillot Getafe', 'Espagne', 'Getafe', 'getafe.jpg', 85, 'Homme', 'La Liga', 'fan', '2021-2023', 'Joma', 1, 1, 1, 5, 1714940297);

CREATE TABLE `selections` (
  `idSelection` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `nameOfUser` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL,
  `imageUrl` varchar(500) NOT NULL,
  `timestamp` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `selections` (`idSelection`, `idUser`, `nameOfUser`, `name`, `imageUrl`, `timestamp`) VALUES
(1, 1, 'Godwin Burume', 'Euro', 'euro_selection.png', 123),
(2, 1, 'Godwin Burume', 'UEFA', 'uefa_selection.png', 123);

CREATE TABLE `selectionsItem` (
  `idSelectionItem` int(11) NOT NULL,
  `idSelection` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `selectionsItem` (`idSelectionItem`, `idSelection`, `idProduct`) VALUES
(1, 1, 4),
(2, 1, 5),
(3, 1, 6),
(4, 1, 7),
(5, 2, 9),
(6, 2, 10),
(7, 2, 11),
(8, 2, 14),
(9, 2, 8),
(10, 2, 13),
(11, 2, 17);

CREATE TABLE `sizes` (
  `idSize` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sizes` (`idSize`, `idProduct`, `name`, `price`) VALUES
(1, 4, 'S', 85),
(2, 4, 'M', 85),
(3, 4, 'L', 110),
(4, 4, 'XL', 85),
(5, 4, '2XL', 85),
(6, 5, 'S', 85),
(7, 5, 'M', 85),
(8, 5, 'L', 110),
(9, 5, 'XL', 85),
(10, 5, '2XL', 85),
(11, 6, 'S', 85),
(12, 6, 'M', 85),
(13, 6, 'L', 110),
(14, 6, 'XL', 85),
(15, 6, '2XL', 85),
(16, 7, 'S', 85),
(17, 7, 'M', 85),
(18, 7, 'L', 110),
(19, 7, 'XL', 85),
(20, 7, '2XL', 85),
(21, 8, 'S', 100),
(22, 8, 'M', 100),
(23, 8, 'L', 110),
(24, 8, 'XL', 100),
(25, 8, '2XL', 100),
(26, 9, 'S', 90),
(27, 9, 'M', 90),
(28, 9, 'L', 110),
(29, 9, 'XL', 90),
(30, 9, '2XL', 90),
(31, 10, 'S', 90),
(32, 10, 'M', 90),
(33, 10, 'L', 110),
(34, 10, 'XL', 90),
(35, 10, '2XL', 90),
(36, 11, 'S', 90),
(37, 11, 'M', 90),
(38, 11, 'L', 110),
(39, 11, 'XL', 90),
(40, 11, '2XL', 90),
(41, 12, 'S', 95),
(42, 12, 'M', 95),
(43, 12, 'L', 110),
(44, 12, 'XL', 95),
(45, 12, '2XL', 95),
(46, 13, 'S', 95),
(47, 13, 'M', 95),
(48, 13, 'L', 110),
(49, 13, 'XL', 95),
(50, 13, '2XL', 95),
(51, 14, 'S', 100),
(52, 14, 'M', 100),
(53, 14, 'L', 110),
(54, 14, 'XL', 100),
(55, 14, '2XL', 100),
(56, 15, 'S', 100),
(57, 15, 'M', 100),
(58, 15, 'L', 110),
(59, 15, 'XL', 100),
(60, 15, '2XL', 100),
(61, 16, 'S', 95),
(62, 16, 'M', 95),
(63, 16, 'L', 110),
(64, 16, 'XL', 95),
(65, 16, '2XL', 95),
(66, 17, 'S', 100),
(67, 17, 'M', 100),
(68, 17, 'L', 110),
(69, 17, 'XL', 100),
(70, 17, '2XL', 100),
(71, 18, 'S', 100),
(72, 18, 'M', 100),
(73, 18, 'L', 110),
(74, 18, 'XL', 100),
(75, 18, '2XL', 100),
(76, 19, 'S', 85),
(77, 19, 'M', 85),
(78, 19, 'L', 110),
(79, 19, 'XL', 85),
(80, 19, '2XL', 85);

CREATE TABLE `suppliers` (
  `idSupplier` int(11) NOT NULL,
  `name` varchar(700) NOT NULL,
  `phoneNumber` varchar(700) DEFAULT NULL,
  `email` varchar(700) DEFAULT NULL,
  `address` varchar(700) DEFAULT NULL,
  `timestamp` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `teams` (
  `idTeam` int(11) NOT NULL,
  `idCountry` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `imageUrl` varchar(500) NOT NULL,
  `timestamp` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `teams` (`idTeam`, `idCountry`, `name`, `imageUrl`, `timestamp`) VALUES
(1, 1, 'France', 'teams_equipe_france.png', 1714996638),
(2, 1, 'Espagne', 'teams_equipe_espagne.png', 1714996638),
(3, 1, 'Portugal', 'teams_equipe_portugal.png', 1714996638),
(4, 1, 'Belgique', 'teams_equipe_belgique.png', 1714996638),
(5, 2, 'PSG', 'teams_psg.png', 1714996638),
(6, 2, 'Lille', 'teams_lille.png', 1714996638),
(7, 2, 'Monaco', 'teams_monaco.png', 1714996638),
(8, 2, 'Nantes', 'teams_nantes.png', 1714996638),
(9, 3, 'Arsenal', 'teams_arsenal.png', 1714996638),
(10, 3, 'Tottenham', 'teams_tottenham.png', 1714996638),
(11, 3, 'Man City', 'teams_mancity.png', 1714996638),
(12, 3, 'Liverpool', 'teams_liverpool.png', 1714996638),
(13, 4, 'Atletico Madrid', 'teams_atletico.png', 1714996638),
(14, 4, 'Real Madrid', 'teams_realmadrid.png', 1714996638),
(15, 4, 'FC Barcelone', 'teams_barca.png', 1714996638),
(16, 4, 'Getafe', 'teams_getafe.png', 1714996638);

CREATE TABLE `users` (
  `idUser` int(11) NOT NULL,
  `name` varchar(900) NOT NULL,
  `username` varchar(900) NOT NULL,
  `level` int(11) NOT NULL,
  `password` varchar(900) NOT NULL,
  `timestamp` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `users` (`idUser`, `name`, `username`, `level`, `password`, `timestamp`) VALUES
(1, 'Godwin Burume', 'nodewin', 1, '$2a$10$PYrVtmgy2eeKzZddTEm31uOSCGESr4EX5BtI.4y5U7tSswKfo5Z8G', 123123);


ALTER TABLE `communes`
  ADD PRIMARY KEY (`idCommune`);

ALTER TABLE `countries`
  ADD PRIMARY KEY (`idCountry`);

ALTER TABLE `customers`
  ADD PRIMARY KEY (`idCustomer`);

ALTER TABLE `notificationTokens`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `orders`
  ADD PRIMARY KEY (`idOrder`);

ALTER TABLE `ordersItem`
  ADD PRIMARY KEY (`idItem`);

ALTER TABLE `products`
  ADD PRIMARY KEY (`idProduct`);

ALTER TABLE `selections`
  ADD PRIMARY KEY (`idSelection`);

ALTER TABLE `selectionsItem`
  ADD PRIMARY KEY (`idSelectionItem`);

ALTER TABLE `sizes`
  ADD PRIMARY KEY (`idSize`);

ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`idSupplier`);

ALTER TABLE `teams`
  ADD PRIMARY KEY (`idTeam`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`);


ALTER TABLE `communes`
  MODIFY `idCommune` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

ALTER TABLE `countries`
  MODIFY `idCountry` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `customers`
  MODIFY `idCustomer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `notificationTokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `orders`
  MODIFY `idOrder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `ordersItem`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `products`
  MODIFY `idProduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

ALTER TABLE `selections`
  MODIFY `idSelection` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `selectionsItem`
  MODIFY `idSelectionItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

ALTER TABLE `sizes`
  MODIFY `idSize` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

ALTER TABLE `suppliers`
  MODIFY `idSupplier` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `teams`
  MODIFY `idTeam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
