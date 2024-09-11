-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 11, 2024 at 11:19 AM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `corporus_amax_mobile`
--

-- --------------------------------------------------------

--
-- Table structure for table `communes`
--

CREATE TABLE `communes` (
  `idCommune` int(11) NOT NULL,
  `name` varchar(900) NOT NULL,
  `deliveryFees` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `communes`
--

INSERT INTO `communes` (`idCommune`, `name`, `deliveryFees`) VALUES
(4, 'Gombe', 3);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `idCountry` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `imageUrl` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`idCountry`, `name`, `imageUrl`) VALUES
(2, 'PACO RABANNE', 'https://1000logos.net/wp-content/uploads/2021/05/Paco-Rabanne-logo.png'),
(3, 'ETAT LIBRE D\'ORANGE', 'http://bluebellgroup.com/wp-content/uploads/2022/05/%EC%97%90%EB%94%B0%EB%A6%AC%EB%B8%8C%EB%A5%B4%EB%8F%84%EB%9E%91%EC%A5%AC-BLACK_JPG%ED%99%94%EC%9D%B4%ED%8A%B8-%EB%B0%B0%EA%B2%BD-1-1024x283.jpg'),
(4, 'MFK', 'https://www.olfastory.com/sites/www.olfastory.com/files/styles/400x400/public/maison-francis-kurkdjian.jpg?itok=7N6vKSr7'),
(5, 'BYREDO', 'https://fimgs.net/mdimg/dizajneri/o.390.jpg'),
(6, 'ARMANI', 'https://upload.wikimedia.org/wikipedia/commons/4/42/Giorgio_Armani_logo.jpg'),
(8, 'MONTALE', 'https://seeklogo.com/images/M/montale-paris-logo-184BE3CDF7-seeklogo.com.png'),
(10, 'VAN CLEEF & ARPELS', 'https://findvectorlogo.com/wp-content/uploads/2019/08/van-cleef-and-arpels-vector-logo.png'),
(11, 'MIZENSIR', 'https://www.nobilis-group.com/wp-content/uploads/2024/02/Linksbuendig_0005_Nobilis_Logo_1000x1000_Mizensir.png'),
(12, 'SALVATORE FERRAGAMO', 'https://1000logos.net/wp-content/uploads/2021/06/Salvatore-Ferragamo-logo.png'),
(13, 'AMOUAGE', 'https://1000logos.net/wp-content/uploads/2020/09/Amouage-Logo.png'),
(14, 'KILIAN', 'https://seeklogo.com/images/K/kilian-perfume-logo-FCFC8FE20E-seeklogo.com.png'),
(16, 'ISSEY MIYAKE', 'https://1000logos.net/wp-content/uploads/2020/04/Issey-Miyake-Logo.png'),
(17, 'PRADA', 'https://media.designrush.com/inspirations/129357/conversions/_1513769276_486_Prada-Logo-preview.jpg'),
(18, 'LE LABO', 'https://www.bloor-yorkville.com/wp-content/uploads/2022/11/Lelabologo.jpg'),
(20, 'AZZARO', 'https://1000logos.net/wp-content/uploads/2020/04/Azzaro-logo.jpg'),
(21, 'MARC ANTOINE BARROIS', 'https://www.shymimosa.co.uk/img/brand-imgs/marc-antoine-barrois.jpg'),
(22, 'XERJOFF', 'https://www.xerjoff.com/img/cms/LOGHI/Schermata%202022-03-16%20alle%2014-22-36.png'),
(23, 'ZARA', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Zara_Logo.svg/1280px-Zara_Logo.svg.png'),
(24, 'VERSACE', 'https://cdn.sanity.io/images/kts928pd/production/ede876838fea33f3023070c103a055edf6ed65a0-1140x620.png'),
(25, 'JO MALONE', 'https://upload.wikimedia.org/wikipedia/commons/d/d1/JoMalone_Logo.jpg'),
(26, 'JEAN PAUL GAULTIER', 'https://logos-world.net/wp-content/uploads/2020/12/Jean-Paul-Gaultier-Logo.png'),
(27, 'CACHAREL', 'https://1000logos.net/wp-content/uploads/2020/04/Cacharel-Logo-1958.png'),
(28, 'GOUTAL', 'https://www.kennethgreen.com/wp-content/uploads/2021/02/Goutal-Logo-scaled.jpg'),
(29, 'ELIE SAAB', 'https://vectorlogoseek.com/wp-content/uploads/2019/05/elie-saab-vector-logo.png'),
(30, 'LOLITA', 'https://images.getbento.com/accounts/730a54b4c6084d6454367c87c5fb1011/media/images/4618Lolita_Logo_white.png'),
(31, 'KENZO', 'https://1000logos.net/wp-content/uploads/2020/03/Kenzo-Logo.png'),
(32, 'FREDERIC MALLE', 'https://fimgs.net/mdimg/dizajneri/o.140.jpg'),
(33, 'ZADIG & VOLTAIRE', 'https://fbi.cults3d.com/uploaders/28951487/illustration-file/77e8cbcc-880a-4db0-9c15-45d26370e161/Capture-d\'%C3%A9cran-2024-06-24-135543.png'),
(34, 'GUCCI', 'http://assets.designhill.com/design-blog/wp-content/uploads/2023/07/4-1.jpg'),
(35, 'PARFUMS DE MARLY', 'https://upload.wikimedia.org/wikipedia/en/5/5d/ParfumsDeMarly_Logo.jpg'),
(36, 'L\'ARTISAN PARFUMEUR', 'https://upload.wikimedia.org/wikipedia/en/8/87/LArtisan-Logo.jpg'),
(37, 'JIMMY CHOO', 'https://1000logos.net/wp-content/uploads/2022/07/Jimmy-Choo-logo.png'),
(38, 'LES EAUX PRIMORDIALES', 'https://www.jovoyparis.com/img/m/374.jpg'),
(39, 'MAISON LACOME', 'https://mir-s3-cdn-cf.behance.net/project_modules/fs/2a3d5245573075.6018191dd34f4.jpg'),
(40, 'PROFUNUM ROMA', 'https://fimgs.net/mdimg/dizajneri/o.428.jpg'),
(41, 'THAMEEN LONDON', 'https://pbs.twimg.com/profile_images/917432472031424514/6JJRtrcz_400x400.jpg'),
(42, 'PIERRE GUILLAUME PARIS', 'https://lachambredumarais.com/_novaimg/galleria/1466778.jpg'),
(43, 'BOUCHERON', 'https://cdn.cookielaw.org/logos/72e2ae3c-b320-4c9d-b3cd-ef7c6019f984/d062c465-3959-4e62-81bc-cb823e5fd184/1d1f7de6-2bbc-4923-84ac-68d840574a7b/LOGO_BOUCHERON_2019___sans_taille_%C3%A9meraude.png'),
(44, 'SERGE LUTENS', 'https://fimgs.net/mdimg/dizajneri/o.93.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

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

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`idCustomer`, `name`, `gender`, `phoneNumber`, `password`, `verified`, `codeSended`, `timestamp`, `deleted`) VALUES
(2, 'Godwin Burume', 'M', '+243815461960', '$2b$10$2H8rDLOxL4iAQ2/pgtRijeTeCto8.SqX2mgN0oV9nTW7.Ucii8num', 1, '2591', 1722618525, 0),
(3, 'Patient Burume', 'M', '+243810001904', '$2b$10$O5DsxiJWqVxSvF8FigNaleDtrPlp3cnpjOWU/kQ7ywX28JoN6ZF9W', 1, '1321', 1724412935, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notificationTokens`
--

CREATE TABLE `notificationTokens` (
  `id` int(11) NOT NULL,
  `token` varchar(500) NOT NULL,
  `platform` varchar(500) NOT NULL,
  `timestamp` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

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
  `slot` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`idOrder`, `idCustomer`, `idDeliverer`, `orderId`, `nameOfCustomer`, `genderOfCustomer`, `phoneNumberOfCustomer`, `commune`, `address`, `reference`, `comment`, `invoiceUrl`, `creationDate`, `lastUpdate`, `total`, `deliveryFees`, `serviceFees`, `whyRefused`, `status`, `deliveryTimestamp`, `slot`) VALUES
(1, 1, NULL, 'lqdfjqsdf', 'Godwin Burume', 'M', '+243815461960', 'Gombe', 'Avenue Justice', 'Aefqsdf', '', NULL, 1715100932, 1715100932, 200, 3, 6, NULL, 'queued', 1715100928, 'Après-midi (12h - 16h)'),
(2, 1, NULL, 'lqdfjqsdf', 'Godwin Burume', 'M', '+243815461960', 'Gombe', 'Avenue Justice', 'Aefqsdf', '', NULL, 1715110759, 1715110759, 200, 3, 6, NULL, 'queued', 1715110754, 'Matin (8h - 12h)'),
(3, 1, NULL, 'lqdfjqsdf', 'Godwin Burume', 'M', '+243815461960', 'Gombe', 'Avenue Justice', 'Aefqsdf', '', NULL, 1715111324, 1715111324, 215, 3, 6.45, NULL, 'queued', 1715543315, 'Soir (16h - 20h)'),
(4, 1, NULL, 'lqdfjqsdf', 'Godwin Burume', 'M', '+243815461960', 'Gombe', 'Avenue Justice', 'Aefqsdf', '', NULL, 1715113191, 1715113191, 215, 3, 6.45, NULL, 'queued', 1715545186, 'Après-midi (12h - 16h)'),
(5, 2, NULL, 'lqdfjqsdf', 'Godwin Burume', 'M', '+243815461960', 'Gombe', 'Dqdfqs', 'Qsdfqsdf', '', NULL, 1722948117, 1722948117, 170, 3, 5.1, NULL, 'queued', 1723207298, 'Matin (8h - 12h)'),
(6, 3, NULL, 'lqdfjqsdf', 'Patient Burume', 'M', '+243810001904', 'Gombe', 'Ici', 'Là bas', '', NULL, 1725736057, 1725736057, 280, 3, 8.4, NULL, 'queued', 1726081657, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordersItem`
--

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

--
-- Dumping data for table `ordersItem`
--

INSERT INTO `ordersItem` (`idItem`, `idOrder`, `idCustomer`, `idSupplier`, `idProduct`, `idSize`, `nameOfProduct`, `nameOfSize`, `price`, `number`, `name`) VALUES
(1, 1, 1, 1, 8, 23, 'Maillot PSG', 'L', 100, NULL, NULL),
(2, 1, 1, 1, 8, 21, 'Maillot PSG', 'S', 100, '69', 'Godwin'),
(3, 2, 1, 1, 8, 23, 'Maillot PSG', 'L', 110, NULL, NULL),
(4, 2, 1, 1, 8, 21, 'Maillot PSG', 'S', 105, '69', 'Godwin'),
(5, 3, 1, 1, 8, 23, 'Maillot PSG', 'L', 110, NULL, NULL),
(6, 3, 1, 1, 8, 21, 'Maillot PSG', 'S', 105, '69', 'Godwin'),
(7, 4, 1, 1, 8, 23, 'Maillot PSG', 'L', 110, NULL, NULL),
(8, 4, 1, 1, 8, 21, 'Maillot PSG', 'S', 105, '69', 'Godwin'),
(9, 5, 2, 1, 4, 1, 'Chanel No 5.', 'S', 85, NULL, NULL),
(10, 5, 2, 1, 7, 16, 'Bleu de Chanel', 'S', 85, NULL, NULL),
(11, 6, 3, 1, 4, 2, 'A LA ROSE EDP 70ML', 'M', 280, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

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
  `timestamp` bigint(20) NOT NULL,
  `size` varchar(500) NOT NULL DEFAULT '100ml',
  `mainNote` varchar(500) NOT NULL DEFAULT 'Rose'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`idProduct`, `idSupplier`, `idCountry`, `idTeam`, `name`, `nameOfCountry`, `nameOfTeam`, `imageUrl`, `price`, `gender`, `championship`, `type`, `years`, `brand`, `available`, `canEditNumber`, `canEditName`, `editPricing`, `timestamp`, `size`, `mainNote`) VALUES
(1, 1, 2, 1, '1MILLION ELIXIR PARF INT 100ML', 'PACO RABANNE', 'Team', 'https://i.ebayimg.com/images/g/lOkAAOSwAU9mf7CN/s-l1200.jpg', 205, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(2, 1, 2, 1, '1MILLION ROYAL PARF 100ML', 'PACO RABANNE', 'Team', 'https://us-i.makeupstore.com/i/il/ill9sg3dm5yd.jpg', 207, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(3, 1, 3, 1, '500 YEARS EDP 100 ML', 'ETAT LIBRE D\'ORANGE', 'Team', 'https://img.ssensemedia.com/images/231130M787004_1/etat-libre-dorange-500-years-eau-de-parfum-100-ml.jpg', 300, 'Unisex', 'fqsdf', 'parfum', '3034', 'ETAT LIBRE D\'ORANGE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(4, 1, 4, 1, 'A LA ROSE EDP 70ML', 'MFK', 'Team', 'https://decantboutique.com/wp-content/uploads/2018/01/MFK-A-La-Rose-EDP.jpg', 280, 'Unisex', 'fqsdf', 'parfum', '3034', 'MFK', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(5, 1, 5, 1, 'ACCORD OUD EDP 100ML', 'BYREDO', 'Team', 'https://www.byredo.com/cdn-cgi/image/format=auto,quality=70/https://www.byredo.com/media/catalog/product/cache/c5a89872cc52c0f5e6106953800b3b5c/m/o/mob_accordoud_edp-50_b.jpg', 300, 'Unisex', 'fqsdf', 'parfum', '3034', 'BYREDO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(6, 1, 6, 1, 'ACQUA DI GIO ABSOLU 125ML', 'ARMANI', 'Team', 'https://m.media-amazon.com/images/I/61ygEfBi6iL._AC_UF1000,1000_QL80_.jpg', 205, 'Unisex', 'fqsdf', 'parfum', '3034', 'ARMANI', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(7, 1, 6, 1, 'ACQUA DI GIO ABSOLU 75ML', 'ARMANI', 'Team', 'https://m.media-amazon.com/images/I/61ygEfBi6iL._AC_UF1000,1000_QL80_.jpg', 155, 'Unisex', 'fqsdf', 'parfum', '3034', 'ARMANI', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(8, 1, 6, 1, 'ACQUA DI GIO EDP 125 ML', 'ARMANI', 'Team', 'https://www.samorybeauty.com/staging/9208/wp-content/uploads/2023/05/G.ARMANI-ACQUA-DI-GIO-EDP-125ML.jpg', 205, 'Unisex', 'fqsdf', 'parfum', '3034', 'ARMANI', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(9, 1, 6, 1, 'ACQUA DI GIO HOMME EDT 100ML', 'ARMANI', 'Team', 'https://venerafragrances.com/image/cache/catalog/data/products/armani-acqua-di-gio-homme-set-19-600x600.jpg', 160, 'Unisex', 'fqsdf', 'parfum', '3034', 'ARMANI', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(10, 1, 7, 1, 'ALEKSANDER EDP 100ML', 'ARQUISTE PARFUMEUR', 'Team', 'https://fimgs.net/himg/o.87341.png', 270, 'Unisex', 'fqsdf', 'parfum', '3034', 'ARQUISTE PARFUMEUR', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(11, 1, 8, 1, 'AMBER ET SPICES 100ML', 'MONTALE', 'Team', 'https://www.scentbox.com/images/product/Amber_and_Spices_w.jpg', 183, 'Unisex', 'fqsdf', 'parfum', '3034', 'MONTALE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(12, 1, 8, 1, 'AMBER MUSK EDP 100ML', 'MONTALE', 'Team', 'https://venerafragrances.com/image/cache/catalog/data/products/Montale-Amber-Musk-600x600.jpg', 217, 'Unisex', 'fqsdf', 'parfum', '3034', 'MONTALE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(13, 1, 8, 1, 'AMBER SPICES EDP 50ML', 'MONTALE', 'Team', 'https://venerafragrances.com/image/cache/catalog/data/products/Montale-Amber-Spices-Tester-600x600.jpg', 133, 'Unisex', 'fqsdf', 'parfum', '3034', 'MONTALE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(14, 1, 9, 1, 'AMBRE ELIXIRE PRECIEUX 3ML', 'DIOR PRIVÉE', 'Team', 'https://i.ebayimg.com/images/g/bwIAAOSww6RlWjV9/s-l1200.jpg', 500, 'Unisex', 'fqsdf', 'parfum', '3034', 'DIOR PRIVÉE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(15, 1, 10, 1, 'AMBRE IMPERIAL EDP', 'VAN CLEEF & ARPELS', 'Team', 'https://m.media-amazon.com/images/I/51t7Kml0WJL._AC_UF1000,1000_QL80_.jpg', 180, 'Unisex', 'fqsdf', 'parfum', '3034', 'VAN CLEEF & ARPELS', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(16, 1, 11, 1, 'AMBRE MAGIQUE EDP 100ML', 'MIZENSIR', 'Team', 'https://i.ytimg.com/vi/L-7yq8wLA1k/maxresdefault.jpg', 314, 'Unisex', 'fqsdf', 'parfum', '3034', 'MIZENSIR', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(17, 1, 12, 1, 'AMO FERRAGAMO 50ML', 'SALVATORE FERRAGAMO', 'Team', 'https://m.media-amazon.com/images/I/71cZqHewNQL._AC_UF1000,1000_QL80_.jpg', 144, 'Unisex', 'fqsdf', 'parfum', '3034', 'SALVATORE FERRAGAMO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(18, 1, 12, 1, 'AMO FERRAGAMO FLOWERFUL 50ML', 'SALVATORE FERRAGAMO', 'Team', 'https://m.media-amazon.com/images/I/71cZqHewNQL._AC_UF1000,1000_QL80_.jpg', 135, 'Unisex', 'fqsdf', 'parfum', '3034', 'SALVATORE FERRAGAMO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(19, 1, 13, 1, 'AMOUAGE EPIC SET EDP 100ML', 'AMOUAGE', 'Team', 'https://image.harrods.com/amouage-epic-56-woman-exceptional-extrait-100ml_18963688_41706993_2048.jpg', 550, 'Unisex', 'fqsdf', 'parfum', '3034', 'AMOUAGE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(20, 1, 14, 1, 'ANGELS SHARE EDP 100ML', 'KILIAN', 'Team', 'https://m.media-amazon.com/images/I/71Pu2cKMFQL._AC_UF1000,1000_QL80_.jpg', 350, 'Unisex', 'fqsdf', 'parfum', '3034', 'KILIAN', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(21, 1, 15, 1, 'AMBRE DESIR EDP 100ML', 'MAUBOUSSIN', 'Team', 'https://fimgs.net/mdimg/perfume/375x500.78406.jpg', 174, 'Unisex', 'fqsdf', 'parfum', '3034', 'MAUBOUSSIN', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(22, 1, 2, 1, '1MILLION PARFUM 100ML', 'PACO RABANNE', 'Team', 'https://us-i.makeupstore.com/q/qy/qy1fchxzhxle.jpg', 200, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(23, 1, 16, 1, 'ADROP DISSEY', 'ISSEY MIYAKE', 'Team', 'https://images.milledcdn.com/2021-04-24/hOD3QHxDH2dHcihP/XKGKc13-iUQE.png', 197, 'Unisex', 'fqsdf', 'parfum', '3034', 'ISSEY MIYAKE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(24, 1, 17, 1, 'AMBER PRADA 50ML', 'PRADA', 'Team', 'https://m.media-amazon.com/images/I/511geUkSG4L._AC_UF1000,1000_QL80_.jpg', 143, 'Unisex', 'fqsdf', 'parfum', '3034', 'PRADA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(25, 1, 18, 1, 'Another 13', 'LE LABO', 'Team', 'https://uspto.report/TM/90749471/mark.png', 0, 'Unisex', 'fqsdf', 'parfum', '3034', 'LE LABO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(26, 1, 8, 1, 'AOUD JASMIN EDP 100ML', 'MONTALE', 'Team', 'https://venerafragrances.com/image/cache/catalog/data/products/Montale-Aoud-Jasmine-600x600.jpg', 217, 'Unisex', 'fqsdf', 'parfum', '3034', 'MONTALE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(27, 1, 8, 1, 'AOUD LEGEND EDP 100ML', 'MONTALE', 'Team', 'https://prod-admin-images.s3.amazonaws.com/PeZho1KcxJ6lLWV8SlDT/product/Montale%20Aoud%20Legend.jpg', 217, 'Unisex', 'fqsdf', 'parfum', '3034', 'MONTALE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(28, 1, 8, 1, 'AOUD LEGEND EDP 50ML', 'MONTALE', 'Team', 'https://i.ebayimg.com/images/g/0aMAAOSw9Z9mVh2a/s-l1600.jpg', 135, 'Unisex', 'fqsdf', 'parfum', '3034', 'MONTALE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(30, 1, 4, 1, 'AQUA CELESTIA EDT 200ML', 'MFK', 'Team', 'https://www.franciskurkdjian.com/on/demandware.static/-/Sites-mfk-master-catalog/default/dw1f64456a/AquaCelestia/PDP-triptych-AC-1-840x840.jpg', 400, 'Unisex', 'fqsdf', 'parfum', '3034', 'MFK', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(31, 1, 4, 1, 'AQUA UNIVERSALIS EDT 200ML', 'MFK', 'Team', 'https://media.lanecrawford.com/B/V/U/BVU533_in_xl.jpg', 400, 'Unisex', 'fqsdf', 'parfum', '3034', 'MFK', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(32, 1, 4, 1, 'AQUA UNIVERSALIS EDT 70ML', 'MFK', 'Team', 'https://image.harrods.com/maison-francis-kurkdjian-aqua-universalis-eau-de-toilette-70ml_15086065_32485556_2048.jpg', 235, 'Unisex', 'fqsdf', 'parfum', '3034', 'MFK', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(33, 1, 4, 1, 'AQUA UNIVERSALIS FORTE EDP 70M', 'MFK', 'Team', 'https://m.media-amazon.com/images/I/515kUrYp-HL._AC_UF1000,1000_QL80_.jpg', 300, 'Unisex', 'fqsdf', 'parfum', '3034', 'MFK', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(34, 1, 4, 1, 'AQUA VITAE CREME PARF 250ML', 'MFK', 'Team', 'https://m.media-amazon.com/images/I/51y-shvZOTL._AC_UF1000,1000_QL80_.jpg', 120, 'Unisex', 'fqsdf', 'parfum', '3034', 'MFK', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(35, 1, 4, 1, 'AQUA VITAE FORTE EDP 70ML', 'MFK', 'Team', 'https://m.media-amazon.com/images/I/71nJ79mgJ2L.jpg', 260, 'Unisex', 'fqsdf', 'parfum', '3034', 'MFK', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(36, 1, 8, 1, 'ARABIANS EDP 100ML', 'MONTALE', 'Team', 'https://venerafragrances.com/image/cache/catalog/data/products/Montale-Arabians-600x600.jpg', 223, 'Unisex', 'fqsdf', 'parfum', '3034', 'MONTALE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(37, 1, 6, 1, 'ARMANI CODE PROFUMO PARF', 'ARMANI', 'Team', 'https://m.media-amazon.com/images/I/71yN7vfvftL.jpg', 170, 'Unisex', 'fqsdf', 'parfum', '3034', 'ARMANI', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(38, 1, 6, 1, 'ARMANI PRIV� SABLE NUIT EDPI 100ML', 'ARMANI', 'Team', 'https://yakymour.wordpress.com/wp-content/uploads/2022/07/louis-vuitton-fleur-du-desert_002.jpg', 430, 'Unisex', 'fqsdf', 'parfum', '3034', 'ARMANI', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(39, 1, 20, 1, 'AZZARO CHROME 50ML', 'AZZARO', 'Team', 'https://venerafragrances.com/image/cache/data/azzaro-chrome-600x600.jpg', 100, 'Unisex', 'fqsdf', 'parfum', '3034', 'AZZARO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(40, 1, 20, 1, 'AZZARO CHROME EDT 100ML', 'AZZARO', 'Team', 'https://i.pinimg.com/736x/67/92/fd/6792fdd972594bdf76d34783f8f975ca.jpg', 150, 'Unisex', 'fqsdf', 'parfum', '3034', 'AZZARO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(41, 1, 20, 1, 'AZZARO POUR HOMME 50ML', 'AZZARO', 'Team', 'https://res.cloudinary.com/azzaro-parfums/image/upload/c_fill,w_1050,h_590/Pillar/APH/bg-aph-limited-jpg_jxegko.jpg', 123, 'Unisex', 'fqsdf', 'parfum', '3034', 'AZZARO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(42, 1, 20, 1, 'AZZARO POUR HOMME EDT 100ML', 'AZZARO', 'Team', 'https://res.cloudinary.com/azzaro-parfums/image/upload/c_fill,w_1000,h_1117/products/57ea6122ee747_57179f6093604-aph-100ml-face-png.png', 165, 'Unisex', 'fqsdf', 'parfum', '3034', 'AZZARO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(43, 1, 20, 1, 'AZZARO WANTED GIRL BY NIGHT', 'AZZARO', 'Team', 'https://res.cloudinary.com/azzaro-parfums/image/upload/c_fill,w_1050,h_590/flanker/wanted%20girl%20by%20night/Azzaro_univers_Wanted_Girl_update2022_export2.jpg', 145, 'Unisex', 'fqsdf', 'parfum', '3034', 'AZZARO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(44, 1, 21, 1, 'B683 Marc antoine barrois Edp 100ml', 'MARC ANTOINE BARROIS', 'Team', 'https://co.nice-cdn.com/upload/image/product/large/default/marc-antoine-barrois-b683-eau-de-parfum-100-ml-507181-en.jpg', 300, 'Unisex', 'fqsdf', 'parfum', '3034', 'MARC ANTOINE BARROIS', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(45, 1, 21, 1, 'B683 Marc antoine barrois ext 50ml', 'MARC ANTOINE BARROIS', 'Team', 'https://co.nice-cdn.com/upload/image/product/large/default/marc-antoine-barrois-b683-extrait-377748-en.jpg', 400, 'Unisex', 'fqsdf', 'parfum', '3034', 'MARC ANTOINE BARROIS', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(46, 1, 5, 1, 'BACK TO BLACK EDP 50ML', 'BYREDO', 'Team', 'https://m.media-amazon.com/images/I/61EJ9kjWHVL._AC_UF894,1000_QL80_.jpg', 320, 'Unisex', 'fqsdf', 'parfum', '3034', 'BYREDO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(47, 1, 8, 1, 'BAKHOOR EDP', 'MONTALE', 'Team', 'https://venerafragrances.com/image/cache/catalog/data/products/Montale-Bakhoor-Poster-1-600x600.jpg', 223, 'Unisex', 'fqsdf', 'parfum', '3034', 'MONTALE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(48, 1, 6, 1, 'BECAUSE ITS YOU 50ML', 'ARMANI', 'Team', 'https://bigfivedutyfree.co.za/wp-content/uploads/2020/10/Emporio-Armani-Because-Its-You-EDPS-50ml.png', 159, 'Unisex', 'fqsdf', 'parfum', '3034', 'ARMANI', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(49, 1, 22, 1, 'BIBLIOTEQUE 50ML', 'XERJOFF', 'Team', 'https://us-i.makeupstore.com/b/bu/buagjwtuxzj5.jpg', 230, 'Unisex', 'fqsdf', 'parfum', '3034', 'XERJOFF', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(50, 1, 5, 1, 'BIBLIOTHEQUE EDP 100ML', 'BYREDO', 'Team', 'https://www.byredo.com/cdn-cgi/image/format=auto,quality=70/https://www.byredo.com/media/catalog/product/cache/c5a89872cc52c0f5e6106953800b3b5c/m/o/mob_bibliotheque_edp-100_d.jpg', 410, 'Unisex', 'fqsdf', 'parfum', '3034', 'BYREDO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(51, 1, 14, 1, 'BLACK PHANTOM EDP 50ML', 'KILIAN', 'Team', 'https://image.harrods.com/kilian-paris-black-phantom-memento-mori-eau-de-parfum-50ml_18907756_41892401_2048.jpg', 300, 'Unisex', 'fqsdf', 'parfum', '3034', 'KILIAN', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(52, 1, 17, 1, 'BLACK PRADA 100ML', 'PRADA', 'Team', 'https://m.media-amazon.com/images/I/51yCP76JXzL._AC_UF1000,1000_QL80_.jpg', 226, 'Unisex', 'fqsdf', 'parfum', '3034', 'PRADA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(53, 1, 5, 1, 'BLACK SAFFRON EDP 100ML', 'BYREDO', 'Team', 'https://m.media-amazon.com/images/I/615EtyFlCtL._SL1500_.jpg', 410, 'Unisex', 'fqsdf', 'parfum', '3034', 'BYREDO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(54, 1, 2, 1, 'BLACK XS EDP FEMME 30ML', 'PACO RABANNE', 'Team', 'https://m.media-amazon.com/images/I/51-nr81q4HL._AC_UF1000,1000_QL80_.jpg', 113, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(55, 1, 2, 1, 'BLACK XS EDP FEMME 50ML', 'PACO RABANNE', 'Team', 'https://m.media-amazon.com/images/I/51-nr81q4HL._AC_UF1000,1000_QL80_.jpg', 140, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(56, 1, 2, 1, 'BLACK XS EDP FEMME 80ML', 'PACO RABANNE', 'Team', 'https://m.media-amazon.com/images/I/51-nr81q4HL._AC_UF1000,1000_QL80_.jpg', 164, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(57, 1, 5, 1, 'BLANCHE', 'BYREDO', 'Team', 'https://m.media-amazon.com/images/I/61gB98ZzamL.jpg', 410, 'Unisex', 'fqsdf', 'parfum', '3034', 'BYREDO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(58, 1, 6, 1, 'BLEU LAZULI EDP 100 ML', 'ARMANI', 'Team', 'https://www.armani.com/variants/images/38063312420500665/F/w400.jpg', 430, 'Unisex', 'fqsdf', 'parfum', '3034', 'ARMANI', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(59, 1, 6, 1, 'BLEU TURQUOISE EDP 100ML', 'ARMANI', 'Team', 'https://galanibottega.com/wp-content/uploads/2019/02/237347367alt2-e1550601866878.jpeg', 400, 'Unisex', 'fqsdf', 'parfum', '3034', 'ARMANI', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(60, 1, 23, 1, 'BLUE SPIRIT EDT 100 ML', 'ZARA', 'Team', 'https://m.media-amazon.com/images/I/41CdOOySaZL._AC_UF1000,1000_QL80_.jpg', 30, 'Unisex', 'fqsdf', 'parfum', '3034', 'ZARA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(61, 1, 10, 1, 'BOIS DAMANDE EDP 75 ML', 'VAN CLEEF & ARPELS', 'Team', 'https://fimgs.net/mdimg/perfume/375x500.60167.jpg', 202, 'Unisex', 'fqsdf', 'parfum', '3034', 'VAN CLEEF & ARPELS', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(62, 1, 10, 1, 'BOIS DORE EDP 75', 'VAN CLEEF & ARPELS', 'Team', 'https://www.aromak.no/863-superlarge_default/van-cleef-arpels-bois-dore.jpg', 202, 'Unisex', 'fqsdf', 'parfum', '3034', 'VAN CLEEF & ARPELS', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(63, 1, 7, 1, 'BOUTONIERE N�7 EDP 100ML', 'ARQUISTE PARFUMEUR', 'Team', 'https://cdn.shoplightspeed.com/shops/643429/files/60630528/image.jpg', 270, 'Unisex', 'fqsdf', 'parfum', '3034', 'ARQUISTE PARFUMEUR', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(64, 1, 24, 1, 'BRIGHT CRYSTAL EDT 90 ML', 'VERSACE', 'Team', 'https://m.media-amazon.com/images/I/51L9VLzskhS._AC_UF1000,1000_QL80_.jpg', 165, 'Unisex', 'fqsdf', 'parfum', '3034', 'VERSACE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(65, 1, 25, 1, 'BRONZA WOOD ET LEATHER', 'JO MALONE', 'Team', 'https://m.media-amazon.com/images/I/71ag5L53onL.jpg', 225, 'Unisex', 'fqsdf', 'parfum', '3034', 'JO MALONE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(68, 1, 17, 1, 'CANDY 50ML', 'PRADA', 'Team', 'https://crivellishopping.com/image/cache/data/Prodotti/prada/candy-edpv-50ml-prada-800x800.jpg', 200, 'Unisex', 'fqsdf', 'parfum', '3034', 'PRADA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(69, 1, 17, 1, 'CANDY 80ML', 'PRADA', 'Team', 'https://m.media-amazon.com/images/I/61xEew-g5jL._AC_UF1000,1000_QL80_.jpg', 238, 'Unisex', 'fqsdf', 'parfum', '3034', 'PRADA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(70, 1, 17, 1, 'CANDY FLORAL 50ML', 'PRADA', 'Team', 'https://m.media-amazon.com/images/I/61aoNSBUwOL._AC_UF1000,1000_QL80_.jpg', 144, 'Unisex', 'fqsdf', 'parfum', '3034', 'PRADA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(71, 1, 17, 1, 'CARBON LUNA ROSA 100ML', 'PRADA', 'Team', 'https://www.prada-beauty.com/on/demandware.static/-/Sites-prada-us-Library/default/dwd3595cd9/images/pdp/MPL01367/PRADA_LUNA_ROSSA_CARBON-alt2.jpg', 209, 'Unisex', 'fqsdf', 'parfum', '3034', 'PRADA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(72, 1, 17, 1, 'CARBON LUNA ROSA 50ML', 'PRADA', 'Team', 'https://www.prada-beauty.com/on/demandware.static/-/Sites-prada-us-Library/default/dwd3595cd9/images/pdp/MPL01367/PRADA_LUNA_ROSSA_CARBON-alt2.jpg', 127, 'Unisex', 'fqsdf', 'parfum', '3034', 'PRADA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(73, 1, 5, 1, 'CASABLANCA LILY EXT 50 ML', 'BYREDO', 'Team', 'https://www.byredo.com/cdn-cgi/image/format=auto,quality=70/https://www.byredo.com/media/catalog/product/cache/c5a89872cc52c0f5e6106953800b3b5c/m/o/mob-casablancalily.jpg', 485, 'Unisex', 'fqsdf', 'parfum', '3034', 'BYREDO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(74, 1, 15, 1, 'CAVIAR ADDICTION EDP 100 ML', 'MAUBOUSSIN', 'Team', 'https://piimages.parfumo.de/7/2/194619_522927d10c66822e952d428935f79287_capsule-d-emotion-caviar-addiction.jpg', 174, 'Unisex', 'fqsdf', 'parfum', '3034', 'MAUBOUSSIN', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(75, 1, 20, 1, 'CHROME EDP 100ML', 'AZZARO', 'Team', 'https://res.cloudinary.com/azzaro-parfums/image/upload/c_fill,w_1000,h_1117/products/AZZARO_CHROME_EDP_100ml_MONTAGE.jpg', 174, 'Unisex', 'fqsdf', 'parfum', '3034', 'AZZARO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(77, 1, 26, 1, 'CLASSIQUE COF EDT 50ML', 'JEAN PAUL GAULTIER', 'Team', 'https://m.media-amazon.com/images/I/51nx2T26UAL._AC_UF1000,1000_QL80_.jpg', 145, 'Unisex', 'fqsdf', 'parfum', '3034', 'JEAN PAUL GAULTIER', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(78, 1, 26, 1, 'CLASSIQUE EDP 50ML', 'JEAN PAUL GAULTIER', 'Team', 'http://in.ozcosmetics.com/syimages/202103/232451.jpg', 141, 'Unisex', 'fqsdf', 'parfum', '3034', 'JEAN PAUL GAULTIER', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(79, 1, 26, 1, 'CLASSIQUE EDT 100ML', 'JEAN PAUL GAULTIER', 'Team', 'https://m.media-amazon.com/images/I/51YO-ti01LL._AC_UF1000,1000_QL80_.jpg', 191, 'Unisex', 'fqsdf', 'parfum', '3034', 'JEAN PAUL GAULTIER', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(80, 1, 27, 1, 'COFFRET NOA 50ML', 'CACHAREL', 'Team', 'https://cdn2.tendance-parfums.com/media/catalog/product/cache/23bb21750342584be4864873512ab5cc/c/o/coffret-noa-eau-de-toilette-50-ml-lait-corps.jpg', 130, 'Unisex', 'fqsdf', 'parfum', '3034', 'CACHAREL', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(81, 1, 24, 1, 'CRYSTAL NOIR EDT 90ML', 'VERSACE', 'Team', 'https://venerafragrances.com/image/cache/catalog/data/products/versace-crystal-noir-edt-90ml-new-box-600x600.jpg', 165, 'Unisex', 'fqsdf', 'parfum', '3034', 'VERSACE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(82, 1, 9, 1, 'CUIR CANNAGE 125ML', 'DIOR PRIVÉE', 'Team', 'https://www.alinjazperfumes.com/wp-content/uploads/2023/05/2-229.jpg', 370, 'Unisex', 'fqsdf', 'parfum', '3034', 'DIOR PRIVÉE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(83, 1, 24, 1, 'DYLAN BLUE 50ML', 'VERSACE', 'Team', 'https://m.media-amazon.com/images/I/61xeSu5nITL._AC_UF1000,1000_QL80_.jpg', 129, 'Unisex', 'fqsdf', 'parfum', '3034', 'VERSACE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(84, 1, 24, 1, 'DYLAN BLUE COF EDT 50ML', 'VERSACE', 'Team', 'https://m.media-amazon.com/images/I/61xeSu5nITL._AC_UF1000,1000_QL80_.jpg', 125, 'Unisex', 'fqsdf', 'parfum', '3034', 'VERSACE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(85, 1, 24, 1, 'DYLAN TURQUOISE EDT 100 ML', 'VERSACE', 'Team', 'https://m.media-amazon.com/images/I/61oO4OhuyrL._AC_UF1000,1000_QL80_.jpg', 174, 'Unisex', 'fqsdf', 'parfum', '3034', 'VERSACE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(86, 1, 24, 1, 'DYLAN TURQUOISE EDT 50 ML', 'VERSACE', 'Team', 'https://static.beautytocare.com/media/catalog/product/v/e/versace-pour-femme-dylan-turquoise-eau-de-toilette-50ml.jpg', 149, 'Unisex', 'fqsdf', 'parfum', '3034', 'VERSACE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(87, 1, 28, 1, 'EAU D\'HADRIEN COFFRET', 'GOUTAL', 'Team', 'https://m.media-amazon.com/images/I/51-9HDaQ7mL.jpg', 300, 'Unisex', 'fqsdf', 'parfum', '3034', 'GOUTAL', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(88, 1, 27, 1, 'EDEN EDP 50ML', 'CACHAREL', 'Team', 'https://crivellishopping.com/image/cache/data/Prodotti/cacharel/eden-edpv-50ml-800x800.jpg', 154, 'Unisex', 'fqsdf', 'parfum', '3034', 'CACHAREL', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(89, 1, 29, 1, 'ELIE SAAB EDP 90ML', 'ELIE SAAB', 'Team', 'https://m.media-amazon.com/images/I/51oUaXjqhkL._AC_UF1000,1000_QL80_.jpg', 218, 'Unisex', 'fqsdf', 'parfum', '3034', 'ELIE SAAB', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(90, 1, 29, 1, 'ELIE SAAB ELIXIR EDP 100ML', 'ELIE SAAB', 'Team', 'https://m.media-amazon.com/images/I/51lGt6b3GBL._AC_UF1000,1000_QL80_.jpg', 218, 'Unisex', 'fqsdf', 'parfum', '3034', 'ELIE SAAB', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(91, 1, 30, 1, 'ELIXIR SUBLIME 50ML', 'LOLITA', 'Team', 'https://parisgalleryksa.com/media/catalog/product/cache/61b4159968f525577dd21a1235fa3a73/3/7/3760269848344.jpg', 159, 'Unisex', 'fqsdf', 'parfum', '3034', 'LOLITA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(92, 1, 24, 1, 'EROS EDP 100ML', 'VERSACE', 'Team', 'https://m.media-amazon.com/images/I/81Q9LJmIZ3L._AC_UF1000,1000_QL80_.jpg', 165, 'Unisex', 'fqsdf', 'parfum', '3034', 'VERSACE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(93, 1, 24, 1, 'EROS FEMME EDP 100ML', 'VERSACE', 'Team', 'https://m.media-amazon.com/images/I/81Q9LJmIZ3L._AC_UF1000,1000_QL80_.jpg', 189, 'Unisex', 'fqsdf', 'parfum', '3034', 'VERSACE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(94, 1, 24, 1, 'EROS FLAME EDP 100ML', 'VERSACE', 'Team', 'https://m.media-amazon.com/images/I/61FlTEEizZL._AC_UF1000,1000_QL80_.jpg', 165, 'Unisex', 'fqsdf', 'parfum', '3034', 'VERSACE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(95, 1, 3, 1, 'ETAT LIBRE D\'ORANGE EXPERIMENTUM CRUCIS EDP 100ML', 'ETAT LIBRE D\'ORANGE', 'Team', 'https://m.media-amazon.com/images/I/71FEtQLDTNL._AC_UF1000,1000_QL80_.jpg', 326, 'Unisex', 'fqsdf', 'parfum', '3034', 'ETAT LIBRE D\'ORANGE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(98, 1, 3, 1, 'Exit the king edp 100ml', 'ETAT LIBRE D\'ORANGE', 'Team', 'https://m.media-amazon.com/images/I/71KtyeSMFcL._AC_UF1000,1000_QL80_.jpg', 280, 'Unisex', 'fqsdf', 'parfum', '3034', 'ETAT LIBRE D\'ORANGE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(99, 1, 2, 1, 'FAME EDP 80 ML', 'PACO RABANNE', 'Team', 'https://i.pinimg.com/736x/f4/bf/eb/f4bfebca2c2b199ab0c72cbaca3a92da.jpg', 203, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(100, 1, 31, 1, 'FLOWER LABSOLUE EDP 100ML', 'KENZO', 'Team', 'https://perfumestoreth.com/wp-content/uploads/2023/06/Kenzo-Flower-LAbsolue-Edp-For-Women.jpg', 213, 'Unisex', 'fqsdf', 'parfum', '3034', 'KENZO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(101, 1, 31, 1, 'FLOWER LELIXIR 30ML', 'KENZO', 'Team', 'https://cdn.cosmostore.org/cache/front/shop/products/199/532461/350x350.jpg', 144, 'Unisex', 'fqsdf', 'parfum', '3034', 'KENZO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(102, 1, 31, 1, 'FLOWER LELIXIR 50ML', 'KENZO', 'Team', 'https://mobilefragrance.com/wp-content/uploads/2021/08/E9EB6601-9FC1-44B6-BD2C-9D8031B56FB8-rotated.jpeg', 169, 'Unisex', 'fqsdf', 'parfum', '3034', 'KENZO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(103, 1, 23, 1, 'FOR HIM GREEN EDP 100ML', 'ZARA', 'Team', 'https://i.ebayimg.com/images/g/QGoAAOSwy6xktb5i/s-l400.jpg', 50, 'Unisex', 'fqsdf', 'parfum', '3034', 'ZARA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(104, 1, 11, 1, 'FOR YOUR LOVE EDP 100ML', 'MIZENSIR', 'Team', 'https://image.harrods.com/mizensir-for-your-love-eau-de-parfum-100ml_16336961_31234306_2048.jpg', 310, 'Unisex', 'fqsdf', 'parfum', '3034', 'MIZENSIR', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(105, 1, 32, 1, 'FREDERIC MALLE EN PASSANT EDP 100ML', 'FREDERIC MALLE', 'Team', 'https://cdn4.beautinow.com/wp-content/uploads/2023/08/FMEnPassantBox.jpg', 290, 'Unisex', 'fqsdf', 'parfum', '3034', 'FREDERIC MALLE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(106, 1, 32, 1, 'FREDERIC MALLE JURASIC FLOWER BOUGIE PARFUM�E', 'FREDERIC MALLE', 'Team', 'https://s3.amazonaws.com/markhotel-shops-prod/app/uploads/2018/02/candle2.jpg', 130, 'Unisex', 'fqsdf', 'parfum', '3034', 'FREDERIC MALLE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(107, 1, 32, 1, 'FREDERIC MALLE LIPSTICK ROSE 50ML', 'FREDERIC MALLE', 'Team', 'https://m.fredericmalle.com/media/images/products/630x615/fm_sku_H4F901_630x615_0.jpg', 230, 'Unisex', 'fqsdf', 'parfum', '3034', 'FREDERIC MALLE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(108, 1, 32, 1, 'FREDERIC MALLE SUPERSTITIOUS EDP 50ML', 'FREDERIC MALLE', 'Team', 'https://image.harrods.com/edition-de-parfums-frederic-malle-superstitious-alber-elbaz-par-frederic-malle-eau-de-parfum-50-ml_15107841_25320522_2048.jpg', 300, 'Unisex', 'fqsdf', 'parfum', '3034', 'FREDERIC MALLE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(109, 1, 32, 1, 'FREDERIC MALLE THE NIGHT 50ML', 'FREDERIC MALLE', 'Team', 'https://m.fredericmalle.com/media/images/products/630x615/fm_sku_H3WK01_630x615_1.jpg', 1076, 'Unisex', 'fqsdf', 'parfum', '3034', 'FREDERIC MALLE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(110, 1, 32, 1, 'FREDERIC MALLE UNCUT GEM EDP 100ML', 'FREDERIC MALLE', 'Team', 'https://m.media-amazon.com/images/I/61T1kNzw9VL._AC_UF1000,1000_QL80_.jpg', 465, 'Unisex', 'fqsdf', 'parfum', '3034', 'FREDERIC MALLE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(111, 1, 32, 1, 'FREDERIC MALLE VETIVER EXTRAORDINAIRE EDP 50ML', 'FREDERIC MALLE', 'Team', 'https://m.fredericmalle.com/media/images/products/630x615/fm_sku_H4FG01_630x615_0.jpg', 275, 'Unisex', 'fqsdf', 'parfum', '3034', 'FREDERIC MALLE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(112, 1, 16, 1, 'FUSION DISSEY EDT 100 ML', 'ISSEY MIYAKE', 'Team', 'https://m.media-amazon.com/images/I/51nHDjXGs1L._AC_UF1000,1000_QL80_.jpg', 168, 'Unisex', 'fqsdf', 'parfum', '3034', 'ISSEY MIYAKE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(113, 1, 21, 1, 'Ganymede Marc Antoine Barrois edp 100 ml', 'MARC ANTOINE BARROIS', 'Team', 'https://co.nice-cdn.com/upload/image/product/large/default/marc-antoine-barrois-ganymede-eau-de-parfum-2-ml-507221-en.jpg', 300, 'Unisex', 'fqsdf', 'parfum', '3034', 'MARC ANTOINE BARROIS', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(114, 1, 26, 1, 'GAULTIER DIVINE EDP 100 ML', 'JEAN PAUL GAULTIER', 'Team', 'https://m.media-amazon.com/images/I/61xTF0Ci9JL._AC_UF1000,1000_QL80_.jpg', 197, 'Unisex', 'fqsdf', 'parfum', '3034', 'JEAN PAUL GAULTIER', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(115, 1, 26, 1, 'GAULTIER DIVINE EDP REFIL 200M', 'JEAN PAUL GAULTIER', 'Team', 'https://media.theperfumeshop.com/medias/sys_master/prd-images/hd1/h9f/9241511690270/prd-extra2-1297709_300x300/jean-paul-gaultier-gaultier-divine-eau-de-parfum-refill-300x300.jpg', 220, 'Unisex', 'fqsdf', 'parfum', '3034', 'JEAN PAUL GAULTIER', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(116, 1, 26, 1, 'GAULTIER DIVINE GEL DO 200 ML', 'JEAN PAUL GAULTIER', 'Team', 'https://m.media-amazon.com/images/I/6175c2m-sfL._AC_UF1000,1000_QL80_.jpg', 90, 'Unisex', 'fqsdf', 'parfum', '3034', 'JEAN PAUL GAULTIER', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(117, 1, 4, 1, 'GENTLE FLUIDITY GOLD EDP 200ML', 'MFK', 'Team', 'https://image.harrods.com/maison-francis-kurkdjian-gentle-fluidity-gold-eau-de-parfum-200ml_15412961_47585167_2048.jpg', 450, 'Unisex', 'fqsdf', 'parfum', '3034', 'MFK', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(118, 1, 5, 1, 'GIPSY WATER EDP 100ML', 'BYREDO', 'Team', 'https://fimgs.net/mdimg/perfume/375x500.3575.jpg', 410, 'Unisex', 'fqsdf', 'parfum', '3034', 'BYREDO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(119, 1, 29, 1, 'GIRL OF NOW FOREVER 50ML', 'ELIE SAAB', 'Team', 'https://m.media-amazon.com/images/I/81IwmAXTqyL._AC_UF1000,1000_QL80_.jpg', 138, 'Unisex', 'fqsdf', 'parfum', '3034', 'ELIE SAAB', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(120, 1, 29, 1, 'GIRL OF NOW FOREVER 90ML', 'ELIE SAAB', 'Team', 'https://m.media-amazon.com/images/I/81IwmAXTqyL._AC_UF1000,1000_QL80_.jpg', 205, 'Unisex', 'fqsdf', 'parfum', '3034', 'ELIE SAAB', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(121, 1, 33, 1, 'GIRLS CAN DO ANYTHING EDP 50ML', 'ZADIG & VOLTAIRE', 'Team', 'https://m.media-amazon.com/images/I/41FSPon193L.jpg', 145, 'Unisex', 'fqsdf', 'parfum', '3034', 'ZADIG & VOLTAIRE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(122, 1, 33, 1, 'GIRLS CAN DO ANYTHING EDP 90ML', 'ZADIG & VOLTAIRE', 'Team', 'https://mobilefragrance.com/wp-content/uploads/2020/09/14EE56AB-1589-4961-9B34-5B7225C09E82-rotated.jpeg', 191, 'Unisex', 'fqsdf', 'parfum', '3034', 'ZADIG & VOLTAIRE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(123, 1, 28, 1, 'GOUTAL �TOILE D\'UNE NUIT EDP 100ML', 'GOUTAL', 'Team', 'https://www.lojaglamourosa.com/resources/medias/shop/products/thumbnails/shop-brand-large/shop-pf-03867-02-toile-dune-nuit-edp---100ml--1.jpg', 280, 'Unisex', 'fqsdf', 'parfum', '3034', 'GOUTAL', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(124, 1, 28, 1, 'GOUTAL MUSC NOMADE EDP 100ML', 'GOUTAL', 'Team', 'https://m.media-amazon.com/images/I/611h0QNN8-L._AC_UF1000,1000_QL80_.jpg', 240, 'Unisex', 'fqsdf', 'parfum', '3034', 'GOUTAL', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(125, 1, 4, 1, 'GRAND SOIR EDP 200ML', 'MFK', 'Team', 'https://www.franciskurkdjian.com/on/demandware.static/-/Sites-mfk-master-catalog/default/dwadc47ab8/PMGS2024_Triptych_visuel-secondaire_03_Grand-Soir_70ml_1080X1080.jpg', 477, 'Unisex', 'fqsdf', 'parfum', '3034', 'MFK', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(126, 1, 4, 1, 'GRAND SOIR EDP 70ML', 'MFK', 'Team', 'https://www.franciskurkdjian.com/on/demandware.static/-/Sites-mfk-master-catalog/default/dwadc47ab8/PMGS2024_Triptych_visuel-secondaire_03_Grand-Soir_70ml_1080X1080.jpg', 250, 'Unisex', 'fqsdf', 'parfum', '3034', 'MFK', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(127, 1, 23, 1, 'GREEN SAVAGE EDT 100 ML', 'ZARA', 'Team', 'https://m.media-amazon.com/images/I/514BAUmzNLL._AC_UF1000,1000_QL80_.jpg', 30, 'Unisex', 'fqsdf', 'parfum', '3034', 'ZARA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(128, 1, 34, 1, 'GUCCI BAMBOO 50ml EDP', 'GUCCI', 'Team', 'https://m.media-amazon.com/images/I/71MWz+v1bJL.jpg', 155, 'Unisex', 'fqsdf', 'parfum', '3034', 'GUCCI', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(129, 1, 34, 1, 'GUILTY EDP', 'GUCCI', 'Team', 'https://m.media-amazon.com/images/I/61sCA7sYWYL.jpg', 174, 'Unisex', 'fqsdf', 'parfum', '3034', 'GUCCI', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(130, 1, 35, 1, 'HEROD EDP 125ML', 'PARFUMS DE MARLY', 'Team', 'https://m.media-amazon.com/images/I/61Pe9oDceIL._AC_UF1000,1000_QL80_.jpg', 350, 'Unisex', 'fqsdf', 'parfum', '3034', 'PARFUMS DE MARLY', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(131, 1, 36, 1, 'HISTOIRE D\'ORANGERS EDP 100ML', 'L\'ARTISAN PARFUMEUR', 'Team', 'https://image.harrods.com/lartisan-parfumeur-histoire-dorangers-eau-de-parfum-100ml_19049368_45379233_2048.jpg', 235, 'Unisex', 'fqsdf', 'parfum', '3034', 'L\'ARTISAN PARFUMEUR', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(132, 1, 8, 1, 'HONEY AOUD EDP 100ML', 'MONTALE', 'Team', 'https://m.media-amazon.com/images/I/717D7WGz9GL._AC_UF1000,1000_QL80_.jpg', 205, 'Unisex', 'fqsdf', 'parfum', '3034', 'MONTALE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(133, 1, 37, 1, 'I WANT OUD EDP 125ML', 'JIMMY CHOO', 'Team', 'https://media.jimmychoo.com/image/upload/c_fit,dpr_2.0,f_auto,h_900,q_auto:best,w_900/USPROD_PRODUCT/images/original/IWANTOUD125MLFLGG_121645_PACK_vg01.jpg', 288, 'Unisex', 'fqsdf', 'parfum', '3034', 'JIMMY CHOO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(134, 1, 13, 1, 'INTERLUDE COFFRRET', 'AMOUAGE', 'Team', 'https://cdn.cosmostore.org/cache/front/shop/products/113/270652/350x350.jpg', 500, 'Unisex', 'fqsdf', 'parfum', '3034', 'AMOUAGE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(135, 1, 13, 1, 'INTERLUDE WOMAN EDP', 'AMOUAGE', 'Team', 'https://image.harrods.com/amouage-interlude-woman-eau-de-parfum-100ml_18963702_41682138_2048.jpg', 470, 'Unisex', 'fqsdf', 'parfum', '3034', 'AMOUAGE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(136, 1, 2, 1, 'INVICTUS EDT COFF 100ML', 'PACO RABANNE', 'Team', 'https://m.media-amazon.com/images/I/71Z2c6TKGMS.jpg', 183, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(137, 1, 2, 1, 'INVICTUS PLATINUM EDP 100ML', 'PACO RABANNE', 'Team', 'https://m.media-amazon.com/images/I/518knFpeT5L._AC_UF1000,1000_QL80_.jpg', 188, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(138, 1, 2, 1, 'INVICTUS VIC ELIXIR PARF INT 1', 'PACO RABANNE', 'Team', 'https://m.media-amazon.com/images/I/712u3iU3OrL._AC_UF1000,1000_QL80_.jpg', 200, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(139, 1, 2, 1, 'INVICTUS VICT ELIXIR EDPI 50 M', 'PACO RABANNE', 'Team', 'https://fimgs.net/mdimg/perfume/375x500.69000.jpg', 166, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(140, 1, 15, 1, 'IRIS PASSION EDP 100 ML', 'MAUBOUSSIN', 'Team', 'https://fimgs.net/mdimg/perfume/375x500.78405.jpg', 174, 'Unisex', 'fqsdf', 'parfum', '3034', 'MAUBOUSSIN', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(141, 1, 15, 1, 'JE LE VEUX AMBRE EDP 100 ML', 'MAUBOUSSIN', 'Team', 'https://piimages.parfumo.de/3/9/194613_f0b4daabba19e798d17f743f7fb83094_je-le-veux-ambre-capsule-d-emotion-ambre-desir.jpg', 229, 'Unisex', 'fqsdf', 'parfum', '3034', 'MAUBOUSSIN', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(142, 1, 15, 1, 'JE LE VEUX CAVIAR EDP 100 ML', 'MAUBOUSSIN', 'Team', 'https://assets.goldenscent.com/catalog/product/cache/18/small_image/750x750/9df78eab33525d08d6e5fb8d27136e95/3/7/3760048798839-mauboussin-mauboussin-collection-privee-caviar-edp-100ml-sp.png', 229, 'Unisex', 'fqsdf', 'parfum', '3034', 'MAUBOUSSIN', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(143, 1, 15, 1, 'JE LE VEUX OUD EDP 100 ML', 'MAUBOUSSIN', 'Team', 'https://piimages.parfumo.de/8/6/194610_8cb1a968ec2499011cbedc974e2aa01c_je-le-veux-oud-capsule-d-emotion-obsession-oud.jpg', 229, 'Unisex', 'fqsdf', 'parfum', '3034', 'MAUBOUSSIN', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(144, 1, 15, 1, 'JE LE VEUX SANTAL EDP 100 ML', 'MAUBOUSSIN', 'Team', 'https://piimages.parfumo.de/1/2/194625_1a596e1500bb594371cf42eef2caacdc_je-le-veux-santal-capsule-d-emotion-santal-attraction.jpg', 229, 'Unisex', 'fqsdf', 'parfum', '3034', 'MAUBOUSSIN', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(145, 1, 31, 1, 'JEU DAMOUR 50ML', 'KENZO', 'Team', 'https://i.ebayimg.com/images/g/GFkAAOSwrnhhJUIH/s-l1600.jpg', 137, 'Unisex', 'fqsdf', 'parfum', '3034', 'KENZO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(146, 1, 31, 1, 'JEU DAMOUR EDP 30 ML', 'KENZO', 'Team', 'https://statics.promofarma.com/static/promofarma/prod/product_images/mr/Y2RVP_es_ES_0.jpeg', 133, 'Unisex', 'fqsdf', 'parfum', '3034', 'KENZO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(147, 1, 31, 1, 'JEU DAMOUR ELIXIR 50ML', 'KENZO', 'Team', 'https://venerafragrances.com/image/cache/catalog/data/products/Kenzo-Jeu-d-Amour-L-Elixir-600x600.jpg', 145, 'Unisex', 'fqsdf', 'parfum', '3034', 'KENZO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(148, 1, 37, 1, 'JIMMY CHOO FLORAL 60ML', 'JIMMY CHOO', 'Team', 'https://static.beautytocare.com/media/catalog/product/j/i/jimmy-choo-floral-eau-de-toilette-60ml.jpg', 117, 'Unisex', 'fqsdf', 'parfum', '3034', 'JIMMY CHOO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(149, 1, 37, 1, 'JIMMY CHOO FLORAL 90ML', 'JIMMY CHOO', 'Team', 'https://m.media-amazon.com/images/I/61ZjioJ3NlL.jpg', 148, 'Unisex', 'fqsdf', 'parfum', '3034', 'JIMMY CHOO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(150, 1, 37, 1, 'JIMMY CHOO L EAU 60ML', 'JIMMY CHOO', 'Team', 'https://media.jimmychoo.com/image/upload/c_fit,dpr_2.0,f_auto,h_900,q_auto:best,w_900/ROWPROD_PRODUCT/images/original/JCLEAUEDT60MLFLTP_0C5121_PACKAGING_vg01.jpg', 117, 'Unisex', 'fqsdf', 'parfum', '3034', 'JIMMY CHOO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(151, 1, 37, 1, 'JIMMY CHOO L EAU 90ML', 'JIMMY CHOO', 'Team', 'https://media.jimmychoo.com/image/upload/c_fit,dpr_2.0,f_auto,h_900,q_auto:best,w_900/USPROD_PRODUCT/images/original/JCLEAUEDT90MLFLTP_0C5121_PACK_vg79.jpg', 151, 'Unisex', 'fqsdf', 'parfum', '3034', 'JIMMY CHOO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(152, 1, 37, 1, 'JIMMY CHOO MAN 100ML', 'JIMMY CHOO', 'Team', 'https://media.jimmychoo.com/image/upload/c_fit,dpr_2.0,f_auto,h_900,q_auto:best,w_900/USPROD_PRODUCT/images/original/JCMAN100MLFSGY_100544_BOTTLE_vg05.jpg', 150, 'Unisex', 'fqsdf', 'parfum', '3034', 'JIMMY CHOO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(153, 1, 37, 1, 'JIMMY CHOO MAN 50ML', 'JIMMY CHOO', 'Team', 'https://media.jimmychoo.com/image/upload/c_fit,dpr_2.0,f_auto,h_900,q_auto:best,w_900/USPROD_PRODUCT/images/original/MAN-PACKAGING_vg01.jpg', 113, 'Unisex', 'fqsdf', 'parfum', '3034', 'JIMMY CHOO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(154, 1, 37, 1, 'JIMMY CHOO MAN BLUE 100ML', 'JIMMY CHOO', 'Team', 'https://media.jimmychoo.com/image/upload/c_fit,dpr_2.0,f_auto,h_900,q_auto:best,w_900/ROWPROD_PRODUCT/images/original/MANBLUE100MLFBDS_042987_BOTTLE_vg31.jpg', 151, 'Unisex', 'fqsdf', 'parfum', '3034', 'JIMMY CHOO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(155, 1, 37, 1, 'JIMMY CHOO MAN BLUE 50ML', 'JIMMY CHOO', 'Team', 'https://media.jimmychoo.com/image/upload/c_fit,dpr_2.0,f_auto,h_900,q_auto:best,w_900/ROWPROD_PRODUCT/images/original/MANBLUE50MLFBDS_042987_PACKAGING_vg01.jpg', 130, 'Unisex', 'fqsdf', 'parfum', '3034', 'JIMMY CHOO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(156, 1, 37, 1, 'JIMMY CHOO MAN ICE 100ML', 'JIMMY CHOO', 'Team', 'https://media.jimmychoo.com/image/upload/c_fit,dpr_2.0,f_auto,h_900,q_auto:best,w_900/GBPROD_PRODUCT/images/original/JCMANICE100MLFWMD_0C5795_PACKAGING_vg01.jpg', 136, 'Unisex', 'fqsdf', 'parfum', '3034', 'JIMMY CHOO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(157, 1, 37, 1, 'JIMMY CHOO MAN ICE 50ML', 'JIMMY CHOO', 'Team', 'https://1.bp.blogspot.com/-rUVSeVJ8vk0/WePHHa3s8SI/AAAAAAAAbic/ZtHY55FpgbUn5SxeXOHKtjfqMrq4LZdQQCLcBGAs/s1600/Jimmy%2BChoo%2BMan%2BIce.jpg', 100, 'Unisex', 'fqsdf', 'parfum', '3034', 'JIMMY CHOO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(158, 1, 37, 1, 'JIMMY CHOO MAN INTENSE 50ML', 'JIMMY CHOO', 'Team', 'https://media.jimmychoo.com/image/upload/c_fit,dpr_2.0,f_auto,h_900,q_auto:best,w_900/GBPROD_PRODUCT/images/original/MINTENSE50MLFDBG_101224_FRONT_vg01.jpg', 116, 'Unisex', 'fqsdf', 'parfum', '3034', 'JIMMY CHOO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(159, 1, 13, 1, 'JUBILATION 25 FEMME EDP 100ML', 'AMOUAGE', 'Team', 'https://i.ebayimg.com/images/g/RTIAAOSwUjVkrXto/s-l1200.jpg', 470, 'Unisex', 'fqsdf', 'parfum', '3034', 'AMOUAGE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(160, 1, 31, 1, 'KENZO AMOUR EDP', 'KENZO', 'Team', 'https://m.media-amazon.com/images/I/41HJf-LoZ0L._AC_UF1000,1000_QL80_.jpg', 138, 'Unisex', 'fqsdf', 'parfum', '3034', 'KENZO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(161, 1, 31, 1, 'KENZO EAU DE LUMIERE 100ML', 'KENZO', 'Team', 'https://i.ebayimg.com/images/g/mUUAAOSw931eanks/s-l400.jpg', 151, 'Unisex', 'fqsdf', 'parfum', '3034', 'KENZO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(162, 1, 31, 1, 'KENZO EAU DE LUMIERE 50ML', 'KENZO', 'Team', 'https://i.ebayimg.com/images/g/mUUAAOSw931eanks/s-l400.jpg', 123, 'Unisex', 'fqsdf', 'parfum', '3034', 'KENZO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(163, 1, 31, 1, 'KENZO EAU DE VIE 50ML', 'KENZO', 'Team', 'https://i.ebayimg.com/images/g/eXUAAOSwFOpf42ys/s-l1600.jpg', 128, 'Unisex', 'fqsdf', 'parfum', '3034', 'KENZO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(164, 1, 31, 1, 'KENZO HOMME EDT 110ML', 'KENZO', 'Team', 'https://i.ebayimg.com/images/g/ksQAAOSwk~5lPMya/s-l1200.jpg', 168, 'Unisex', 'fqsdf', 'parfum', '3034', 'KENZO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(165, 1, 31, 1, 'KENZO PARF DETE EDP 75 ML', 'KENZO', 'Team', 'https://cdn.fragrancenet.com/images/photos/900x900/127016.jpg', 181, 'Unisex', 'fqsdf', 'parfum', '3034', 'KENZO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(166, 1, 31, 1, 'KENZO POWER 60ML', 'KENZO', 'Team', 'https://i.ebayimg.com/images/g/CFMAAOSwt41hS0SN/s-l1600.jpg', 115, 'Unisex', 'fqsdf', 'parfum', '3034', 'KENZO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(167, 1, 31, 1, 'KENZO WORLD 75ML', 'KENZO', 'Team', 'https://m.media-amazon.com/images/I/71Jjy0eGV+L.jpg', 144, 'Unisex', 'fqsdf', 'parfum', '3034', 'KENZO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(168, 1, 31, 1, 'KENZO WORLD EDP 30ML', 'KENZO', 'Team', 'https://cdn.vesira.com/media/catalog/product/cache/5/image/650x/040ec09b1e35df139433887a97daa66f/k/e/kenzo-world-intense-eau-de-parfum-30-ml.jpg', 111, 'Unisex', 'fqsdf', 'parfum', '3034', 'KENZO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(169, 1, 31, 1, 'KENZO WORLD EDP 50ML', 'KENZO', 'Team', 'https://images.squarespace-cdn.com/content/v1/532cddfde4b0ed181e2301c2/1569890155637-LOFKWPDTCDRUVGFG74AL/%40_NathalieMartin%2C+Kenzo+World+Power+Eau+de+Parfum+review%2C+Jonathan+Adler+Le+Wink+coasters%2C+Kate+Moss+book%2C+Chanel+CC+Cream+30+beige%2C+La+Creme+Main%2C+Le+Vernis+Pure+Black+and+White+nail+polish%2C+woahstyle.com+beauty+blog_3125.jpg', 136, 'Unisex', 'fqsdf', 'parfum', '3034', 'KENZO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(170, 1, 31, 1, 'KENZO WORLD EDP 50ML', 'KENZO', 'Team', 'https://images.squarespace-cdn.com/content/v1/532cddfde4b0ed181e2301c2/1569890155637-LOFKWPDTCDRUVGFG74AL/%40_NathalieMartin%2C+Kenzo+World+Power+Eau+de+Parfum+review%2C+Jonathan+Adler+Le+Wink+coasters%2C+Kate+Moss+book%2C+Chanel+CC+Cream+30+beige%2C+La+Creme+Main%2C+Le+Vernis+Pure+Black+and+White+nail+polish%2C+woahstyle.com+beauty+blog_3125.jpg', 139, 'Unisex', 'fqsdf', 'parfum', '3034', 'KENZO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(171, 1, 31, 1, 'KENZO WORLD EDP 75ML', 'KENZO', 'Team', 'https://m.media-amazon.com/images/I/71Jjy0eGV+L.jpg', 156, 'Unisex', 'fqsdf', 'parfum', '3034', 'KENZO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(172, 1, 14, 1, 'KILIAN BAMBOO HARMANY EDP 50ML', 'KILIAN', 'Team', 'https://static.luckyscent.com/images/products/42546.jpg?width=400&404=product.png', 300, 'Unisex', 'fqsdf', 'parfum', '3034', 'KILIAN', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(173, 1, 14, 1, 'KILIAN CAVIAR CASPIA BOUGIE', 'KILIAN', 'Team', 'https://m.bykilian.com/media/images/products/833x968/kl_sku_N4J701_833x968_0.jpg', 145, 'Unisex', 'fqsdf', 'parfum', '3034', 'KILIAN', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(174, 1, 22, 1, 'KILIAN PEARL OUD EDP 50ML', 'XERJOFF', 'Team', 'https://www.tryasample.eu/images/KILIAN-PEARL-OUD-p.jpg', 430, 'Unisex', 'fqsdf', 'parfum', '3034', 'XERJOFF', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(175, 1, 36, 1, 'L\'EAU D\'AMBRE ETREME EDP 100ML', 'L\'ARTISAN PARFUMEUR', 'Team', 'https://www.artisanparfumeur.com/images/product/main/Ambre_ext__1.5ml_sample_600x600-2-3.jpg', 235, 'Unisex', 'fqsdf', 'parfum', '3034', 'L\'ARTISAN PARFUMEUR', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(176, 1, 22, 1, 'L\'OUDH EDP 100ML', 'XERJOFF', 'Team', 'https://m.media-amazon.com/images/I/616A-Ex1rML._AC_UF1000,1000_QL80_.jpg', 314, 'Unisex', 'fqsdf', 'parfum', '3034', 'XERJOFF', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(177, 1, 26, 1, 'LA BELLE 100ML', 'JEAN PAUL GAULTIER', 'Team', 'https://m.media-amazon.com/images/I/71qtW2ZKD-L.jpg', 200, 'Unisex', 'fqsdf', 'parfum', '3034', 'JEAN PAUL GAULTIER', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(178, 1, 26, 1, 'LA BELLE EDPI 100ML', 'JEAN PAUL GAULTIER', 'Team', 'https://assets.goldenscent.com/catalog/product/cache/1/small_image/750x750/9df78eab33525d08d6e5fb8d27136e95/8/4/8435415049542_jean_paul_gaultier_jpg_la_belle_edpi_100ml.png', 219, 'Unisex', 'fqsdf', 'parfum', '3034', 'JEAN PAUL GAULTIER', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(179, 1, 36, 1, 'LA CHASSE AUX PAPILLONS EDT 100ML', 'L\'ARTISAN PARFUMEUR', 'Team', 'https://www.artisanparfumeur.com/images/product/main/Lachasse-Papillons.jpg', 215, 'Unisex', 'fqsdf', 'parfum', '3034', 'L\'ARTISAN PARFUMEUR', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(180, 1, 9, 1, 'LA COLLE NOIRE 125ML', 'DIOR PRIVÉE', 'Team', 'https://www.dior.com/on/demandware.static/-/Sites-master_dior/default/dw97def80c/Y0767550/Y0767550_F076755009_E01_GHC.jpg', 380, 'Unisex', 'fqsdf', 'parfum', '3034', 'DIOR PRIVÉE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(181, 1, 9, 1, 'LA COLLE NOIRE EDP 250ML', 'DIOR PRIVÉE', 'Team', 'https://i.ebayimg.com/images/g/c0kAAOSwlYdmEC47/s-l400.jpg', 460, 'Unisex', 'fqsdf', 'parfum', '3034', 'DIOR PRIVÉE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(182, 1, 17, 1, 'LA FEMME PRADA 50ML', 'PRADA', 'Team', 'https://m.media-amazon.com/images/I/51UUdJsZRAL.jpg', 217, 'Unisex', 'fqsdf', 'parfum', '3034', 'PRADA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(183, 1, 17, 1, 'LA FEMME PRADA INTENSE 50ML', 'PRADA', 'Team', 'https://m.media-amazon.com/images/I/51b2nrRLDhL._AC_UF1000,1000_QL80_.jpg', 172, 'Unisex', 'fqsdf', 'parfum', '3034', 'PRADA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(184, 1, 2, 1, 'LADY MILLION EDP 80ML', 'PACO RABANNE', 'Team', 'https://i.ytimg.com/vi/wrs9dEBOlVg/maxresdefault.jpg', 197, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(185, 1, 2, 1, 'LADY MILLION EDP COF 50ML', 'PACO RABANNE', 'Team', 'https://venerafragrances.com/image/cache/catalog/data/products/Paco-Rabanne-Lady-Million-Set-23-600x600.jpg', 165, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(186, 1, 2, 1, 'LADY MILLION EMPIRE EDP', 'PACO RABANNE', 'Team', 'https://m.media-amazon.com/images/S/aplus-media/sota/cb3a13d0-a470-4b6f-af06-05e5cf21268d.__CR0,0,970,300_PT0_SX970_V1___.jpg', 177, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(187, 1, 2, 1, 'LADY MILLION LUCKY 80ML', 'PACO RABANNE', 'Team', 'https://m.media-amazon.com/images/I/61QCVJqW4RL._AC_UF1000,1000_QL80_.jpg', 168, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(188, 1, 26, 1, 'LE BEAU EDPI 125 ML', 'JEAN PAUL GAULTIER', 'Team', 'https://m.media-amazon.com/images/I/51FZP233GBL._AC_UF1000,1000_QL80_.jpg', 209, 'Unisex', 'fqsdf', 'parfum', '3034', 'JEAN PAUL GAULTIER', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(190, 1, 26, 1, 'LE MALE COF EDT 75ML', 'JEAN PAUL GAULTIER', 'Team', 'https://m.media-amazon.com/images/I/51xDJzq1oqL._AC_UF1000,1000_QL80_.jpg', 160, 'Unisex', 'fqsdf', 'parfum', '3034', 'JEAN PAUL GAULTIER', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(191, 1, 26, 1, 'LE MALE EDPI 125ML', 'JEAN PAUL GAULTIER', 'Team', 'https://m.media-amazon.com/images/I/51FZP233GBL._AC_UF1000,1000_QL80_.jpg', 200, 'Unisex', 'fqsdf', 'parfum', '3034', 'JEAN PAUL GAULTIER', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(192, 1, 26, 1, 'LE MALE EDT 125ML', 'JEAN PAUL GAULTIER', 'Team', 'https://venerafragrances.com/image/cache/catalog/data/products/Jean-Paul-Gaultier-Le-Male-In-The-Navy-600x600.jpg', 180, 'Unisex', 'fqsdf', 'parfum', '3034', 'JEAN PAUL GAULTIER', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(193, 1, 26, 1, 'LE MALE EDT 75ML', 'JEAN PAUL GAULTIER', 'Team', 'https://m.media-amazon.com/images/I/51xDJzq1oqL._AC_UF1000,1000_QL80_.jpg', 148, 'Unisex', 'fqsdf', 'parfum', '3034', 'JEAN PAUL GAULTIER', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(194, 1, 26, 1, 'LE MALE ELIXIR PARF 75 ML', 'JEAN PAUL GAULTIER', 'Team', 'https://m.media-amazon.com/images/I/51M3ig2cbHL._AC_UF1000,1000_QL80_.jpg', 154, 'Unisex', 'fqsdf', 'parfum', '3034', 'JEAN PAUL GAULTIER', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(195, 1, 16, 1, 'LEAU D ISSEY 200ML', 'ISSEY MIYAKE', 'Team', 'https://m.media-amazon.com/images/I/51DqBo7Tc1L._AC_UF1000,1000_QL80_.jpg', 207, 'Unisex', 'fqsdf', 'parfum', '3034', 'ISSEY MIYAKE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(196, 1, 16, 1, 'LEAU D ISSEY 75ML', 'ISSEY MIYAKE', 'Team', 'https://m.media-amazon.com/images/I/512XZjxI+vL._AC_UF1000,1000_QL80_.jpg', 167, 'Unisex', 'fqsdf', 'parfum', '3034', 'ISSEY MIYAKE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(197, 1, 16, 1, 'LEAU DISSEY H CEDRE EDT 100ML', 'ISSEY MIYAKE', 'Team', 'https://us-i.makeupstore.com/0/0n/0nypz8glmppr.jpg', 176, 'Unisex', 'fqsdf', 'parfum', '3034', 'ISSEY MIYAKE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(198, 1, 16, 1, 'LEAU DISSEY MAGNOLIA EDTI 100M', 'ISSEY MIYAKE', 'Team', 'https://m.media-amazon.com/images/I/61iTVrfjUsL.jpg', 0, 'Unisex', 'fqsdf', 'parfum', '3034', 'ISSEY MIYAKE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(199, 1, 16, 1, 'LEAU DISSEY PURE 90ML', 'ISSEY MIYAKE', 'Team', 'https://i.ebayimg.com/images/g/aMsAAOSw82tlFiAj/s-l1600.jpg', 167, 'Unisex', 'fqsdf', 'parfum', '3034', 'ISSEY MIYAKE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(200, 1, 31, 1, 'LEAU KENZO FEMME 100ML', 'KENZO', 'Team', 'https://baahy-live.s3.amazonaws.com/wp-content/uploads/2023/09/24135914/1552217_-1.jpg', 133, 'Unisex', 'fqsdf', 'parfum', '3034', 'KENZO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose');
INSERT INTO `products` (`idProduct`, `idSupplier`, `idCountry`, `idTeam`, `name`, `nameOfCountry`, `nameOfTeam`, `imageUrl`, `price`, `gender`, `championship`, `type`, `years`, `brand`, `available`, `canEditNumber`, `canEditName`, `editPricing`, `timestamp`, `size`, `mainNote`) VALUES
(201, 1, 31, 1, 'LEAU KENZO FEMME 50ML', 'KENZO', 'Team', 'https://m.media-amazon.com/images/I/61NxM+0Q9zL.jpg', 111, 'Unisex', 'fqsdf', 'parfum', '3034', 'KENZO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(202, 1, 30, 1, 'LEMPICKA GREEN LOVER 100ML', 'LOLITA', 'Team', 'https://m.media-amazon.com/images/I/81vd3dL1pBL._AC_UF350,350_QL80_.jpg', 130, 'Unisex', 'fqsdf', 'parfum', '3034', 'LOLITA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(203, 1, 30, 1, 'LEMPICKA GREEN LOVER 50ML', 'LOLITA', 'Team', 'https://m.media-amazon.com/images/I/81vd3dL1pBL._AC_UF350,350_QL80_.jpg', 110, 'Unisex', 'fqsdf', 'parfum', '3034', 'LOLITA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(204, 1, 30, 1, 'LEMPICKA HOMME 50ML', 'LOLITA', 'Team', 'https://venerafragrances.com/image/cache/catalog/data/products/Lolita-Lempicka-Lempicka-Homme-600x600.jpg', 110, 'Unisex', 'fqsdf', 'parfum', '3034', 'LOLITA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(205, 1, 30, 1, 'LEMPICKA HOMME COFFRET 100ML', 'LOLITA', 'Team', 'https://cdn.fragrancenet.com/images/photos/600x600/354054.jpg', 150, 'Unisex', 'fqsdf', 'parfum', '3034', 'LOLITA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(206, 1, 30, 1, 'LEMPLICKA HOMME 100ML', 'LOLITA', 'Team', 'https://venerafragrances.com/image/cache/catalog/data/products/Lolita-Lempicka-Lempicka-Homme-600x600.jpg', 130, 'Unisex', 'fqsdf', 'parfum', '3034', 'LOLITA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(207, 1, 38, 1, 'LES EAUX PRIMORDIALES SUPEROSE EDP 100ML', 'LES EAUX PRIMORDIALES', 'Team', 'https://image.harrods.com/les-eaux-primordiales-superose-eau-de-parfum-100ml_19176340_42404162_2048.jpg', 362, 'Unisex', 'fqsdf', 'parfum', '3034', 'LES EAUX PRIMORDIALES', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(208, 1, 12, 1, 'LES INFUSIONS DE PRADA 100ML', 'SALVATORE FERRAGAMO', 'Team', 'https://i.sa.makeupstore.com/y/yc/ycf8fecsk2yo.jpg', 187, 'Unisex', 'fqsdf', 'parfum', '3034', 'SALVATORE FERRAGAMO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(209, 1, 17, 1, 'LHOMME PRADA 50ML', 'PRADA', 'Team', 'https://m.media-amazon.com/images/I/71u9dxf5sxL._SL1500_.jpg', 169, 'Unisex', 'fqsdf', 'parfum', '3034', 'PRADA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(210, 1, 30, 1, 'LOLITA LEMPICKA EDP', 'LOLITA', 'Team', 'https://m.media-amazon.com/images/I/71hHsz8J2qL._AC_UF1000,1000_QL80_.jpg', 131, 'Unisex', 'fqsdf', 'parfum', '3034', 'LOLITA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(211, 1, 14, 1, 'LOVE DONT BE SHY EDP SET 50ML', 'KILIAN', 'Team', 'https://m.bykilian.com/media/images/products/833x968/kl_sku_N4NW01_833x968_0.jpg', 400, 'Unisex', 'fqsdf', 'parfum', '3034', 'KILIAN', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(212, 1, 17, 1, 'LUNA ROSA 100ML', 'PRADA', 'Team', 'https://m.media-amazon.com/images/I/51Rsmtbl2hL.jpg', 153, 'Unisex', 'fqsdf', 'parfum', '3034', 'PRADA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(213, 1, 17, 1, 'LUNA ROSA 50ML', 'PRADA', 'Team', 'https://m.media-amazon.com/images/I/51rqF8E9pGL.jpg', 127, 'Unisex', 'fqsdf', 'parfum', '3034', 'PRADA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(214, 1, 20, 1, 'MADEMOISELLE AZ FLORALE 30ML', 'AZZARO', 'Team', 'https://m.media-amazon.com/images/I/41bRl8XmUJL._AC_SY580_.jpg', 99, 'Unisex', 'fqsdf', 'parfum', '3034', 'AZZARO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(215, 1, 20, 1, 'MADEMOISELLE AZ FLORALE 50ML', 'AZZARO', 'Team', 'https://m.media-amazon.com/images/I/41bRl8XmUJL._AC_SY580_.jpg', 118, 'Unisex', 'fqsdf', 'parfum', '3034', 'AZZARO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(216, 1, 20, 1, 'MADEMOISELLE AZZARO 30ML', 'AZZARO', 'Team', 'https://res.cloudinary.com/azzaro-parfums/image/upload/c_fill,w_1000,h_1117/products/MADEMOISELLE_INTENSE_50ml_BOTTLE_OUTER_2000x2000px.jpg', 100, 'Unisex', 'fqsdf', 'parfum', '3034', 'AZZARO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(217, 1, 20, 1, 'MADEMOISELLE AZZARO 50ML', 'AZZARO', 'Team', 'https://res.cloudinary.com/azzaro-parfums/image/upload/c_fill,w_1000,h_1117/products/MADEMOISELLE_INTENSE_50ml_BOTTLE_OUTER_2000x2000px.jpg', 120, 'Unisex', 'fqsdf', 'parfum', '3034', 'AZZARO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(218, 1, 4, 1, 'MAISON FRANCIS KURKDJIAN AQUA CELESTIA EDP 70ML', 'MFK', 'Team', 'https://m.media-amazon.com/images/I/61gb9nB++vL.jpg', 270, 'Unisex', 'fqsdf', 'parfum', '3034', 'MFK', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(219, 1, 39, 1, 'MAISON LANCOME L\'AUTRE OUD EDP 100ML', 'MAISON LACOME', 'Team', 'https://fimgs.net/mdimg/perfume/375x500.39740.jpg', 314, 'Unisex', 'fqsdf', 'parfum', '3034', 'MAISON LACOME', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(220, 1, 39, 1, 'MAISON LANCOME MILLE ET UNE ROSES EDP 100ML', 'MAISON LACOME', 'Team', 'https://fimgs.net/mdimg/perfume/375x500.39740.jpg', 314, 'Unisex', 'fqsdf', 'parfum', '3034', 'MAISON LACOME', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(221, 1, 21, 1, 'MARC ANTONIE BARROIS GANYMEDE EXT 50ML', 'MARC ANTOINE BARROIS', 'Team', 'https://i.ebayimg.com/images/g/MnkAAOSwJxpkpYf~/s-l1200.jpg', 400, 'Unisex', 'fqsdf', 'parfum', '3034', 'MARC ANTOINE BARROIS', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(222, 1, 15, 1, 'MAUBOUSSIN 100ML', 'MAUBOUSSIN', 'Team', 'https://m.media-amazon.com/images/I/61D0zbnEXiL.jpg', 151, 'Unisex', 'fqsdf', 'parfum', '3034', 'MAUBOUSSIN', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(223, 1, 15, 1, 'MAUBOUSSIN POUR LUI 100ML', 'MAUBOUSSIN', 'Team', 'https://m.media-amazon.com/images/I/61tU8s5+0FL.jpg', 160, 'Unisex', 'fqsdf', 'parfum', '3034', 'MAUBOUSSIN', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(224, 1, 35, 1, 'MELIORA EDP 75ML', 'PARFUMS DE MARLY', 'Team', 'https://i.ebayimg.com/images/g/4YoAAOSw0gtlRmfY/s-l400.jpg', 350, 'Unisex', 'fqsdf', 'parfum', '3034', 'PARFUMS DE MARLY', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(225, 1, 11, 1, 'MIZENSER CELEBES WOOD EDP 100ML', 'MIZENSIR', 'Team', 'https://cafleurebon.com/wp-content/uploads/2021/08/Mizensir-Eau-de-Gingembre-Celebes-Wood-and-Perfect-Oud-reviews-525x700.jpg', 310, 'Unisex', 'fqsdf', 'parfum', '3034', 'MIZENSIR', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(226, 1, 11, 1, 'MIZENSIR GOLDEN OUD EDP 100ML', 'MIZENSIR', 'Team', 'https://image.harrods.com/mizensir-golden-oud-eau-de-parfum-100ml_15310952_27088264_2048.jpg', 435, 'Unisex', 'fqsdf', 'parfum', '3034', 'MIZENSIR', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(227, 1, 11, 1, 'MIZENSIR LUXURY EDP 100Ml', 'MIZENSIR', 'Team', 'https://image.harrods.com/mizensir-luxury-eau-de-parfum-100ml_14799774_23617607_1000.jpg', 280, 'Unisex', 'fqsdf', 'parfum', '3034', 'MIZENSIR', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(228, 1, 11, 1, 'MIZENSIR MUSC ETERNEL 100ML', 'MIZENSIR', 'Team', 'https://image.harrods.com/mizensir-musc-eternel-eau-de-parfum-100ml_14799762_23617604_2048.jpg', 280, 'Unisex', 'fqsdf', 'parfum', '3034', 'MIZENSIR', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(229, 1, 11, 1, 'MIZENSIR PERFECT OUD EDP 100ML', 'MIZENSIR', 'Team', 'https://image.harrods.com/mizensir-perfect-oud-eau-de-parfum-100ml_14799765_23617610_2048.jpg', 314, 'Unisex', 'fqsdf', 'parfum', '3034', 'MIZENSIR', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(230, 1, 30, 1, 'MON EAU 30ML', 'LOLITA', 'Team', 'https://www.sobelia.com/32531-47601-thickbox/mon-eau-lolita-lempicka-eau-de-parfum-spray-30ml.jpg', 105, 'Unisex', 'fqsdf', 'parfum', '3034', 'LOLITA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(231, 1, 30, 1, 'MON EAU 50ML', 'LOLITA', 'Team', 'https://venerafragrances.com/image/cache/catalog/data/products/Lolita-Lempicka-Mon-Premier-Parfum-600x600.jpg', 129, 'Unisex', 'fqsdf', 'parfum', '3034', 'LOLITA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(232, 1, 8, 1, 'MONTALE CHOCOLATE GREEDY EDP 100ML', 'MONTALE', 'Team', 'https://m.media-amazon.com/images/I/81bdXwep3vL._AC_UF1000,1000_QL80_.jpg', 181, 'Unisex', 'fqsdf', 'parfum', '3034', 'MONTALE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(233, 1, 10, 1, 'MOONLIGHT PATCHOULI', 'VAN CLEEF & ARPELS', 'Team', 'https://image.harrods.com/van-cleef-arpels-moonlight-patchouli-parfum-75ml_19199779_42403741_2048.jpg', 180, 'Unisex', 'fqsdf', 'parfum', '3034', 'VAN CLEEF & ARPELS', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(234, 1, 10, 1, 'MOONLIGHT ROSE EDP 75ML', 'VAN CLEEF & ARPELS', 'Team', 'https://image.harrods.com/van-cleef-arpels-moonlight-rose-eau-de-parfum-75ml_19701941_44327349_2048.jpg', 202, 'Unisex', 'fqsdf', 'parfum', '3034', 'VAN CLEEF & ARPELS', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(235, 1, 9, 1, 'MUSC �LIXIR PR�CIEUX 3ML', 'DIOR PRIVÉE', 'Team', 'https://www.aeliadutyfree.fr/media/catalog/product/cache/small_image/250x/17f82f742ffe127f42dca9de82fb58b1/e/7/e7bc56a32f267560a2d08f0de67622d0d84e27a5_8005610255668_2.jpg', 600, 'Unisex', 'fqsdf', 'parfum', '3034', 'DIOR PRIVÉE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(236, 1, 6, 1, 'MUSC SHAMAL 100ML', 'ARMANI', 'Team', 'https://image.harrods.com/armani-prive-musc-shamal-eau-de-parfum-100ml_15098075_25295190_2048.jpg', 400, 'Unisex', 'fqsdf', 'parfum', '3034', 'ARMANI', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(237, 1, 32, 1, 'MUSIC FOR A WHILE EDP 100ML', 'FREDERIC MALLE', 'Team', 'https://www.fredericmalle.com/media/images/products/630x615/fm_sku_H4PK01_630x615_0.jpg', 400, 'Unisex', 'fqsdf', 'parfum', '3034', 'FREDERIC MALLE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(238, 1, 6, 1, 'MY WAY COF EDP 50ML', 'ARMANI', 'Team', 'https://www.giorgioarmanibeauty-usa.com/on/demandware.static/-/Sites-armani-us-Library/default/dwa8d7ed5d/images/pdp/2023-05-02_15-40-39.jpg', 170, 'Unisex', 'fqsdf', 'parfum', '3034', 'ARMANI', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(239, 1, 6, 1, 'MY WAY EDP 90ML', 'ARMANI', 'Team', 'https://www.giorgioarmanibeauty-usa.com/on/demandware.static/-/Sites-armani-us-Library/default/dwa8d7ed5d/images/pdp/2023-05-02_15-40-39.jpg', 229, 'Unisex', 'fqsdf', 'parfum', '3034', 'ARMANI', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(240, 1, 8, 1, 'NEPAL AOUD EDP 100ML', 'MONTALE', 'Team', 'https://i.ebayimg.com/images/g/w40AAOSwFWRkww0P/s-l1600.jpg', 205, 'Unisex', 'fqsdf', 'parfum', '3034', 'MONTALE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(241, 1, 8, 1, 'NEPAL AOUD EDP 50ML', 'MONTALE', 'Team', 'https://cdn.cosmostore.org/cache/front/shop/products/209/574220/350x350.jpg', 135, 'Unisex', 'fqsdf', 'parfum', '3034', 'MONTALE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(242, 1, 22, 1, 'NEROLI A LA CARDAMONE DU GUATE', 'XERJOFF', 'Team', 'https://cdn4.beautinow.com/wp-content/uploads/2023/08/7640177367440_87812d91913744368a5f72a8e19a2a44.jpg', 340, 'Unisex', 'fqsdf', 'parfum', '3034', 'XERJOFF', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(243, 1, 23, 1, 'NIGHT POUR HOMME EDP 100ML', 'ZARA', 'Team', 'https://m.media-amazon.com/images/I/41hMExkBroL._AC_UF1000,1000_QL80_.jpg', 35, 'Unisex', 'fqsdf', 'parfum', '3034', 'ZARA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(244, 1, 23, 1, 'NOBODY KNOWS EDP 100 ML', 'ZARA', 'Team', 'https://i.redd.it/yaq763vdd3jb1.jpg', 50, 'Unisex', 'fqsdf', 'parfum', '3034', 'ZARA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(245, 1, 6, 1, 'NOIR KOGANE EDP 100 ML', 'ARMANI', 'Team', 'https://image.harrods.com/armani-x-prive-noir-kogane-eau-de-parfum-100ml_22545898_48355196_2048.jpg', 430, 'Unisex', 'fqsdf', 'parfum', '3034', 'ARMANI', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(246, 1, 17, 1, 'OCEAN LUNA ROSA EDT 50 ML', 'PRADA', 'Team', 'https://www.prada-beauty.com/on/demandware.static/-/Sites-prada-us-Library/default/dw4d10b002/images/pdp/MPL01651/luna-rossa-content-tile-1.jpg', 173, 'Unisex', 'fqsdf', 'parfum', '3034', 'PRADA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(247, 1, 2, 1, 'OLYMPEA   COF EDP 50ML', 'PACO RABANNE', 'Team', 'https://i.ebayimg.com/images/g/m~AAAOSwziRjm7oK/s-l1600.jpg', 165, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(248, 1, 2, 1, 'OLYMPEA AQUA 50ML', 'PACO RABANNE', 'Team', 'https://www.mytrendylady.com/public/images/products/511/grey/Paco-Rabanne-Olympea-Aqua-Eau-de-Toilette-80-ml-3349668536511-12499-800-800.jpg', 139, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(249, 1, 2, 1, 'OLYMPEA AQUA 80ML', 'PACO RABANNE', 'Team', 'https://i.ebayimg.com/images/g/m~AAAOSwziRjm7oK/s-l1600.jpg', 196, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(250, 1, 2, 1, 'OLYMPEA BLOSSOM EDP', 'PACO RABANNE', 'Team', 'https://m.media-amazon.com/images/I/71-hOExonkL._AC_UF1000,1000_QL80_.jpg', 179, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(251, 1, 2, 1, 'OLYMPEA LEGEND 30ML', 'PACO RABANNE', 'Team', 'https://cdn.cosmostore.org/cache/front/shop/products/478/1424081/350x350.jpg', 116, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(252, 1, 2, 1, 'OLYMPEA LEGEND 50ML', 'PACO RABANNE', 'Team', 'https://mobilefragrance.com/wp-content/uploads/2020/09/B143BD89-FF74-4ACE-B501-85FD2948672B-rotated.jpeg', 144, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(253, 1, 2, 1, 'OLYMPEA LEGEND 80ML', 'PACO RABANNE', 'Team', 'https://mobilefragrance.com/wp-content/uploads/2020/09/B143BD89-FF74-4ACE-B501-85FD2948672B-rotated.jpeg', 172, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(256, 1, 2, 1, 'ONE MILLION COF EDT 100ML', 'PACO RABANNE', 'Team', 'https://m.media-amazon.com/images/I/71a5K5rY2FL._AC_UF1000,1000_QL80_.jpg', 180, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(257, 1, 2, 1, 'ONE MILLION EDT 100ML', 'PACO RABANNE', 'Team', 'https://i.pinimg.com/736x/e7/da/0c/e7da0c78ce288225245a658f5d059ccf.jpg', 153, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(258, 1, 2, 1, 'ONE MILLION EDT 200ML', 'PACO RABANNE', 'Team', 'https://m.media-amazon.com/images/I/71a5K5rY2FL._AC_UF1000,1000_QL80_.jpg', 190, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(259, 1, 2, 1, 'ONE MILLION EDT 50ML', 'PACO RABANNE', 'Team', 'https://m.media-amazon.com/images/I/71a5K5rY2FL._AC_UF1000,1000_QL80_.jpg', 127, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(260, 1, 2, 1, 'ONE MILLION GEL DOUCHE 150ML', 'PACO RABANNE', 'Team', 'https://cdn2.tendance-parfums.com/media/catalog/product/cache/23bb21750342584be4864873512ab5cc/1/-/1-illion-gel-douche_2.jpg', 83, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(261, 1, 22, 1, 'OPERA EDP 100ML', 'XERJOFF', 'Team', 'https://www.xerjoff.com/4775-large_default/opera-eau-de-parfum-100ml.jpg', 445, 'Unisex', 'fqsdf', 'parfum', '3034', 'XERJOFF', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(262, 1, 10, 1, 'ORCHID LEATHER EDP 75 ML', 'VAN CLEEF & ARPELS', 'Team', 'https://image.harrods.com/van-cleef-arpels-orchid-leather-eau-de-parfum-75ml_16802511_48769672_2048.jpg', 202, 'Unisex', 'fqsdf', 'parfum', '3034', 'VAN CLEEF & ARPELS', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(263, 1, 8, 1, 'OUD DREAM EDP 100ML', 'MONTALE', 'Team', 'https://venerafragrances.com/image/cache/catalog/data/products/Montale-Oud-Dream-Poster-1-600x600.jpg', 223, 'Unisex', 'fqsdf', 'parfum', '3034', 'MONTALE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(264, 1, 25, 1, 'OUD ET BERGAMOT', 'JO MALONE', 'Team', 'https://www.jomalone.com/media/export/cms/products/1000x1000/jo_sku_LGX301_1000x1000_0.png', 270, 'Unisex', 'fqsdf', 'parfum', '3034', 'JO MALONE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(265, 1, 5, 1, 'OUD IMMORTEL EDP 100ML', 'BYREDO', 'Team', 'https://m.media-amazon.com/images/I/51-l6hDLVeL._AC_UF1000,1000_QL80_.jpg', 410, 'Unisex', 'fqsdf', 'parfum', '3034', 'BYREDO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(266, 1, 6, 1, 'OUD ROYAL EDP 100ML', 'ARMANI', 'Team', 'https://image.harrods.com/armani-oud-royal-eau-de-parfum-100ml_15675262_28529788_2048.jpg', 400, 'Unisex', 'fqsdf', 'parfum', '3034', 'ARMANI', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(267, 1, 4, 1, 'OUD SATIN MOOD CREME PARF 250M', 'MFK', 'Team', 'https://fimgs.net/mdimg/perfume/375x500.91974.jpg', 130, 'Unisex', 'fqsdf', 'parfum', '3034', 'MFK', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(268, 1, 32, 1, 'OUTRAGEOUS EDP 100ML', 'FREDERIC MALLE', 'Team', 'https://m.media-amazon.com/images/I/51tDkKUhOKL._AC_UF1000,1000_QL80_.jpg', 330, 'Unisex', 'fqsdf', 'parfum', '3034', 'FREDERIC MALLE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(269, 1, 11, 1, 'PALISSANDRE NIGHT EDP 100ML', 'MIZENSIR', 'Team', 'https://image.harrods.com/mizensir-palissandre-night-eau-de-parfum-100ml_21734193_47813404_2048.jpg', 435, 'Unisex', 'fqsdf', 'parfum', '3034', 'MIZENSIR', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(270, 1, 17, 1, 'PARADOXE EDP 90 ML', 'PRADA', 'Team', 'https://m.media-amazon.com/images/I/417Oaf3bthL._AC_UF1000,1000_QL80_.jpg', 220, 'Unisex', 'fqsdf', 'parfum', '3034', 'PRADA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(271, 1, 36, 1, 'PASSAGER D\'ENFER EXTREME EDP 100ML', 'L\'ARTISAN PARFUMEUR', 'Team', 'https://www.artisanparfumeur.com/images/product/main/PDP_PDE_800x800.jpg', 235, 'Unisex', 'fqsdf', 'parfum', '3034', 'L\'ARTISAN PARFUMEUR', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(272, 1, 36, 1, 'PASSAGER DE L\'ENFER EDT 100ML', 'L\'ARTISAN PARFUMEUR', 'Team', 'https://www.artisanparfumeur.com/images/product/main/Collector_100ml-2-2.png', 215, 'Unisex', 'fqsdf', 'parfum', '3034', 'L\'ARTISAN PARFUMEUR', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(273, 1, 10, 1, 'PATCHOULI BLANC EDP 75 ML', 'VAN CLEEF & ARPELS', 'Team', 'https://fimgs.net/mdimg/perfume/375x500.71670.jpg', 202, 'Unisex', 'fqsdf', 'parfum', '3034', 'VAN CLEEF & ARPELS', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(274, 1, 40, 1, 'PATCHOULI EDP 100ML', 'PROFUNUM ROMA', 'Team', 'https://www.profumum.com/wp-content/uploads/2023/06/profumum-patchouly.jpeg', 350, 'Unisex', 'fqsdf', 'parfum', '3034', 'PROFUNUM ROMA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(275, 1, 28, 1, 'PETITE CHERIE EDP 100ML', 'GOUTAL', 'Team', 'https://m.media-amazon.com/images/I/61Y5rwjUGsL._AC_UF1000,1000_QL80_.jpg', 245, 'Unisex', 'fqsdf', 'parfum', '3034', 'GOUTAL', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(276, 1, 2, 1, 'PHANTOM EDT 150ML', 'PACO RABANNE', 'Team', 'https://m.media-amazon.com/images/I/71iw494B+YL._AC_UF1000,1000_QL80_.jpg', 203, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(277, 1, 42, 1, 'PIERRE GUILLAUME ISPARTA 100ML', 'PIERRE GUILLAUME PARIS', 'Team', 'https://www.sensuniqueparis.com/1242-large_default/26-isparta-pierre-guillaume-paris.jpg', 245, 'Unisex', 'fqsdf', 'parfum', '3034', 'PIERRE GUILLAUME PARIS', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(278, 1, 31, 1, 'POPPY BOUQUET 100ML', 'KENZO', 'Team', 'https://i.ytimg.com/vi/maeLoLCh7eY/maxresdefault.jpg', 201, 'Unisex', 'fqsdf', 'parfum', '3034', 'KENZO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(279, 1, 31, 1, 'POPPY BOUQUET 50ML', 'KENZO', 'Team', 'https://dimg.dillards.com/is/image/DillardsZoom/mainProduct/kenzo-flower-by-kenzo-poppy-bouquet-eau-de-parfum/00000001_zi_20065867.jpg', 141, 'Unisex', 'fqsdf', 'parfum', '3034', 'KENZO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(280, 1, 11, 1, 'POUDRE D\'OR EDP 100ML', 'MIZENSIR', 'Team', 'https://image.harrods.com/mizensir-poudre-dor-eau-de-parfum-100ml_14983036_24793022_2048.jpg', 280, 'Unisex', 'fqsdf', 'parfum', '3034', 'MIZENSIR', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(281, 1, 15, 1, 'POUR ELLE 50ML', 'MAUBOUSSIN', 'Team', 'https://m.media-amazon.com/images/I/61cVSz+n2pL.jpg', 117, 'Unisex', 'fqsdf', 'parfum', '3034', 'MAUBOUSSIN', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(282, 1, 15, 1, 'POUR ELLE ROSE 100ML', 'MAUBOUSSIN', 'Team', 'https://m.media-amazon.com/images/I/51rEC8bA3hL.jpg', 153, 'Unisex', 'fqsdf', 'parfum', '3034', 'MAUBOUSSIN', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(283, 1, 17, 1, 'PRADA CANDY KISS EDP 80ML', 'PRADA', 'Team', 'https://m.media-amazon.com/images/I/614n7pgyPXL._AC_UF1000,1000_QL80_.jpg', 150, 'Unisex', 'fqsdf', 'parfum', '3034', 'PRADA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(284, 1, 8, 1, 'PRETTY FRUITTY', 'MONTALE', 'Team', 'https://us-i.makeupstore.com/w/w6/w6picfbwpy3q.jpg', 205, 'Unisex', 'fqsdf', 'parfum', '3034', 'MONTALE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(285, 1, 40, 1, 'PRO FUMUM ROMA ROSAE MUNDI 100ML', 'PROFUNUM ROMA', 'Team', 'https://www.profumum.com/wp-content/uploads/2023/06/profumum-rosa-mundi.jpeg', 350, 'Unisex', 'fqsdf', 'parfum', '3034', 'PROFUNUM ROMA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(286, 1, 40, 1, 'PRO FUMUM ROMA VANITAS PARFUM 100ML', 'PROFUNUM ROMA', 'Team', 'https://www.profumum.com/wp-content/uploads/2023/06/profumum-vanitas.jpeg', 350, 'Unisex', 'fqsdf', 'parfum', '3034', 'PROFUNUM ROMA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(287, 1, 2, 1, 'PURE XS EDP 50ML', 'PACO RABANNE', 'Team', 'https://m.media-amazon.com/images/I/51Guo+qUQVL._AC_UF1000,1000_QL80_.jpg', 164, 'Unisex', 'fqsdf', 'parfum', '3034', 'PACO RABANNE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(288, 1, 43, 1, 'QUATRE 50ML', 'BOUCHERON', 'Team', 'https://us-i.makeupstore.com/h/hb/hbj24zqty98g.jpg', 112, 'Unisex', 'fqsdf', 'parfum', '3034', 'BOUCHERON', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(289, 1, 43, 1, 'QUATRE EN ROSE', 'BOUCHERON', 'Team', 'https://fimgs.net/mdimg/perfume/375x500.49833.jpg', 112, 'Unisex', 'fqsdf', 'parfum', '3034', 'BOUCHERON', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(290, 1, 43, 1, 'QUATRE FEMME EDP 100ML', 'BOUCHERON', 'Team', 'https://us-i.makeupstore.com/h/hb/hbj24zqty98g.jpg', 142, 'Unisex', 'fqsdf', 'parfum', '3034', 'BOUCHERON', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(291, 1, 43, 1, 'QUATRE ICONIC EDP 100ML', 'BOUCHERON', 'Team', 'https://www.poloavenue.com/wp-content/uploads/boucheron-quatre-iconic-eau-de-parfum-for-women-100ml_2.jpg', 157, 'Unisex', 'fqsdf', 'parfum', '3034', 'BOUCHERON', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(292, 1, 8, 1, 'RED AOUD EDP 100 ML', 'MONTALE', 'Team', 'https://venerafragrances.com/image/cache/catalog/data/products/Montale-Red-Aoud-EDP-100ml-600x600.jpg', 205, 'Unisex', 'fqsdf', 'parfum', '3034', 'MONTALE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(293, 1, 41, 1, 'REGENT LEATHER EXT 50ML', 'THAMEEN LONDON', 'Team', 'https://decantboutique.com/wp-content/uploads/2023/11/Thameen-Regent-Leather-Ext.DP_.jpg', 410, 'Unisex', 'fqsdf', 'parfum', '3034', 'THAMEEN LONDON', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(294, 1, 5, 1, 'REINE DE NUIT EXT 50ML', 'BYREDO', 'Team', 'https://www.byredo.com/cdn-cgi/image/format=auto,quality=70/https://www.byredo.com/media/catalog/product/cache/c5a89872cc52c0f5e6106953800b3b5c/m/o/mob-reinedenuit.jpg', 380, 'Unisex', 'fqsdf', 'parfum', '3034', 'BYREDO', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(295, 1, 3, 1, 'RIEN EDP 100ML', 'ETAT LIBRE D\'ORANGE', 'Team', 'http://lilitheva.com/wp-content/uploads/2021/07/ELDO-RIEN-photo-by-Nicoleta-1-1119x2000.jpg', 220, 'Unisex', 'fqsdf', 'parfum', '3034', 'ETAT LIBRE D\'ORANGE', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(297, 1, 6, 1, 'ROUGE MALACHITE 100ML', 'ARMANI', 'Team', 'https://www.armani.com/variants/images/38063312420498065/F/w350.jpg', 430, 'Unisex', 'fqsdf', 'parfum', '3034', 'ARMANI', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(298, 1, 30, 1, 'SO SWEET 50ML', 'LOLITA', 'Team', 'https://i.ebayimg.com/images/g/KcQAAOSwIpJlvLSh/s-l1600.jpg', 129, 'Unisex', 'fqsdf', 'parfum', '3034', 'LOLITA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose'),
(299, 1, 23, 1, 'TOBACCO COLLECTION EDT 100 ML', 'ZARA', 'Team', 'https://i.ebayimg.com/images/g/3wMAAOSwGr1lbKQV/s-l1200.jpg', 40, 'Unisex', 'fqsdf', 'parfum', '3034', 'ZARA', 1, 1, 1, 0, 20240823110218, '100ml', 'Rose');

-- --------------------------------------------------------

--
-- Table structure for table `selections`
--

CREATE TABLE `selections` (
  `idSelection` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `nameOfUser` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL,
  `imageUrl` varchar(500) NOT NULL,
  `timestamp` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `selections`
--

INSERT INTO `selections` (`idSelection`, `idUser`, `nameOfUser`, `name`, `imageUrl`, `timestamp`) VALUES
(1, 1, 'Godwin Burume', 'Euro', 'euro_selection.png', 123),
(2, 1, 'Godwin Burume', 'UEFA', 'uefa_selection.png', 123);

-- --------------------------------------------------------

--
-- Table structure for table `selectionsItem`
--

CREATE TABLE `selectionsItem` (
  `idSelectionItem` int(11) NOT NULL,
  `idSelection` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `selectionsItem`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `idSize` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sizes`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `idSupplier` int(11) NOT NULL,
  `name` varchar(700) NOT NULL,
  `phoneNumber` varchar(700) DEFAULT NULL,
  `email` varchar(700) DEFAULT NULL,
  `address` varchar(700) DEFAULT NULL,
  `timestamp` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `idTeam` int(11) NOT NULL,
  `idCountry` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `imageUrl` varchar(500) NOT NULL,
  `timestamp` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teams`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idUser` int(11) NOT NULL,
  `name` varchar(900) NOT NULL,
  `username` varchar(900) NOT NULL,
  `level` int(11) NOT NULL,
  `password` varchar(900) NOT NULL,
  `timestamp` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `communes`
--
ALTER TABLE `communes`
  ADD PRIMARY KEY (`idCommune`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`idCountry`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`idCustomer`);

--
-- Indexes for table `notificationTokens`
--
ALTER TABLE `notificationTokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`idOrder`);

--
-- Indexes for table `ordersItem`
--
ALTER TABLE `ordersItem`
  ADD PRIMARY KEY (`idItem`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`idProduct`);

--
-- Indexes for table `selections`
--
ALTER TABLE `selections`
  ADD PRIMARY KEY (`idSelection`);

--
-- Indexes for table `selectionsItem`
--
ALTER TABLE `selectionsItem`
  ADD PRIMARY KEY (`idSelectionItem`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`idSize`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`idSupplier`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`idTeam`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `communes`
--
ALTER TABLE `communes`
  MODIFY `idCommune` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `idCountry` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `idCustomer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notificationTokens`
--
ALTER TABLE `notificationTokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `idOrder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ordersItem`
--
ALTER TABLE `ordersItem`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `idProduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT for table `selections`
--
ALTER TABLE `selections`
  MODIFY `idSelection` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `selectionsItem`
--
ALTER TABLE `selectionsItem`
  MODIFY `idSelectionItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `idSize` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `idSupplier` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `idTeam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
