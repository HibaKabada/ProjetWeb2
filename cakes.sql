-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 17 mai 2022 à 15:55
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cakes`
--

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(129, 14, 16, 'lavendor rose', 13, 1, 'lavendor rose.jpg'),
(130, 14, 18, 'red tulipa', 11, 1, 'red tulipa.jpg'),
(131, 14, 15, 'cottage rose', 15, 1, 'cottage rose.jpg'),
(132, 15, 13, 'pink rose', 10, 1, 'pink roses.jpg'),
(133, 15, 15, 'cottage rose', 15, 1, 'cottage rose.jpg'),
(134, 15, 16, 'lavendor rose', 13, 3, 'lavendor rose.jpg'),
(139, 18, 16, 'Baked Flourless Cake', 13, 1, 'baked flourless cake');

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(14, 16, 'Kabeda Hiba', 'hibakabeda02@gmail.com', '4', 'nice shop!');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(20, 18, '', '', '', 'cash on delivery', 'flat no. , , ,  - ', ', Angel Food Cake (1) ', 15, '17-May-2022', 'pending'),
(21, 18, '', '', '', 'cash on delivery', 'flat no. , , ,  - ', ', Angel Food Cake (1) , Baked Flourless Cake (1) , Chiffon Cake (1) ', 43, '17-May-2022', 'pending');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`) VALUES
(13, 'Butter Cake', 'Many a kid\'s birthday party is celebrated with a sheet cake version of this dessert that\'s topped with billows of chocolate frosting and rainbow sprinkles.', 12, 'butter cake'),
(15, 'Angel Food Cake', 'The lightest of the light, angel food cake is made with only whipped egg whites for leavening and has no added fat. Traditionally baked in a special angel food cake pan, it should be cooled upside down in the pan to help maintain the airy texture. ', 15, 'angel food cake'),
(16, 'Baked Flourless Cake', 'This category includes both baked (think cheesecake or chocolate torte) and unbaked (like mousse or no-bake cheesecakes) varieties. Typically very rich because of the high fat content, these cakes may or may not have a bottom crumb crust.', 13, 'baked flourless cake'),
(17, 'Biscuit cake', 'Biscuit cake is a type of no bake tea cake, similar to American icebox cake, found in Irish, English, Danish, Arabic, Bulgarian and Jewish cuisine. It is made with digestive biscuits and is optionally prepared with a chocolate glaze.', 14, 'biscuit cake'),
(18, 'Carrot Cake', 'Leavened with baking soda and baking powder, this shortened cake uses oil as its main fat rather than butter. The addition of grated carrots makes the cake extra moist. Carrot cake is also flavored with warm spices and frosted with a rich cream cheese frosting.', 11, 'carrot cake'),
(19, 'Chiffon Cake', 'Chiffon cake is a cross between a sponge and oil cake. The addition of oil gives it a richness similar to a shortened cake, and whipped egg whites and baking powder make it light and airy.', 15, 'chiffon cake'),
(20, 'Genoise Cake', 'Genoise is what a sponge cake is called in Italy or France. In this cake, egg yolks, egg whites, and sugar are beaten together until mousse-like. Next, flour and either oil or butter are folded in. This type of cake is more moist and tender than its sponge cake cousin.', 24, 'genoise cake'),
(21, 'Pound Cake', 'Named because it\'s made with a pound of each of the main ingredients (flour, butter, and sugar), this cake doesn’t rise much while baking, and the texture is very dense.', 15, 'pound cake'),
(22, 'Sponge Cake', 'This is a foam-style cake that has no artificial leaveners (baking powder or baking soda). It gets its volume solely from whipped eggs—either whole eggs or simply whites. This cake takes well to being soaked in a flavored syrup (try soaking with a lemon syrup and serve with a dollop of lemon curd) or layered with whipped cream and smashed berries.', 20, 'sponge cake'),
(23, 'Red Velvet Cake', 'This is a true favorite and classic, especially in the South. Made with either butter or oil, red velvet cake\'s color traditionally comes from the reaction of buttermilk and cocoa powder. ', 20, 'red velvet cake'),
(24, 'Devil\'s Food Cake', 'Made \"devilish\" by the addition of chocolate in the form of cocoa powder. Extra baking soda causes the crumb to have more air bubbles, giving it a light and airy texture. This rich cake is frosted with either chocolate frosting or buttercream.', 23, 'devil\'s food cake'),
(26, 'Hummingbird Cake', 'The classic Southern oil cake is flavored with bananas, pineapple, pecans, and warm spices, and topped with a tangy cream cheese frosting.', 17, 'hummingbird'),
(27, 'Upside Down Cake', 'The classic version of this butter-style cake is traditionally made with pineapple but can be made with many varieties of fruits, including plums, peaches, blueberries, or pears. ', 15, 'upside down'),
(28, 'Fruit Cake', 'Universally loathed and joked about, this holiday staple is full of dried or candied fruit, nuts, and spices. ', 16, 'fruit cake');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(14, 'user A', 'user01@gmail.com', '698d51a19d8a121ce581499d7b701668', 'user'),
(15, 'user B', 'user02@gmail.com', '698d51a19d8a121ce581499d7b701668', 'user'),
(17, 'Kabeda Hiba', 'hiba.kabada@ihec.ucar.tn', '389c5ffd5aca315be4a96a7059d18767', 'user'),
(18, 'Kabeda Hiba', 'hibakabeda02@gmail.com', 'a9ba069e23a8b801aa57602751560880', 'user'),
(20, 'admin A', 'admin01@gmail.com', '698d51a19d8a121ce581499d7b701668', 'admin'),
(21, 'hiba', '123@gmail.com', '05c30a524c57ef2c2d841ce7d8058c32', 'user');

-- --------------------------------------------------------

--
-- Structure de la table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
