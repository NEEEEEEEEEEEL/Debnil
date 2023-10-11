-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2022 at 10:25 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(32, 'Shoes'),
(44, 'Trousers'),
(45, 'Shorts'),
(48, 'Tank'),
(49, 'Sweatshirts'),
(50, 'Jersey'),
(51, 'Bagpack'),
(52, 'Sunglasses'),
(53, 'Football'),
(54, 'Cricket Bat'),
(55, 'Badminton Racket'),
(56, 'Headband'),
(57, 'Towel'),
(60, 'Water Bottle'),
(61, 'Hat'),
(62, 'T-Shirt'),
(63, 'Jackets'),
(64, 'Socks'),
(65, 'shirt');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_amount` float NOT NULL,
  `order_transaction` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `order_currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_amount`, `order_transaction`, `order_status`, `order_currency`) VALUES
(116, 97.96, '62478787RG333230W', 'Completed', 'USD'),
(117, 250, '999604472B372801Y', 'Completed', 'USD'),
(118, 245, '6KX90739WR948761T', 'Completed', 'USD'),
(119, 450, '52W61336HH461272X', 'Completed', 'USD'),
(120, 450, '52W61336HH461272X', 'Completed', 'USD'),
(121, 975, '3P92562938316290K', 'Completed', 'USD'),
(122, 975, '3P92562938316290K', 'Completed', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `short_desc` text NOT NULL,
  `product_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_category_id`, `product_price`, `product_quantity`, `product_description`, `short_desc`, `product_image`) VALUES
(123, 'Nike air Jordan 1 ', 32, 145, 15, 'Like a breath of fresh air, this AJ2 refreshes its \\\'86 design with plenty of energetic details and the sky\\\'s-the-limit style of the Prince of Reggaeton. Puffed-up panels on the upper and cloud graphics around the heel, collar and insole are paired with rainbow stitching accents and J Balvin\\\'s signature smiley face to steal the hearts of passers-by. Premium materials and Air cushioning in the heel will keep you dancing. And when the lights go out, you don\\\'t have to stop—just power up the tongue logo to let your glow-in-the-dark outsoles shine.', 'Nubuck leather feels soft and adds durability.\\r\\nAir-Sole unit in the heel delivers lightweight, responsive cushioning.\\r\\nRubber outsole offers traction on a variety of surfaces.\\r\\nColour Shown: Celestine Blue/Multi-Colour/White\\r\\nStyle: DQ7691-419\\r\\nCountry/Region of Origin: Vietnam', 'nkt.jpg'),
(125, 'Nike Air Jordan 2  ', 32, 150, 10, 'Channel new levels of speed and power in shoes designed for Zion and built for ballers at any level. An adjustable strap up top helps lock your foot in place while a firm midsole supports high-paced play. A wider outsole provides extra stability—perfect for playing on outdoor courts. And the Zion 2 has more Air cushioning than its predecessor, so you\\\\\\\\\\\\\\\'ll get into the clouds easier and land softer.', 'Zion signature on the tongue and on the outsole\\\\\\\\r\\\\\\\\nStrap over laces for a secure fit\\\\\\\\r\\\\\\\\nColour Shown: White/Volt/Dynamic Turquoise/Black\\\\\\\\r\\\\\\\\nStyle: DM0858-107\\\\\\\\r\\\\\\\\nCountry/Region of Origin: Vietnam', 'nkty.jpg'),
(126, 'Nike Air Jordan 3', 32, 100, 30, 'Channel new levels of speed and power in shoes designed for Zion and built for ballers at any level. An adjustable strap up top helps lock your foot in place while a firm midsole supports high-paced play. A wider outsole provides extra stability—perfect for playing on outdoor courts. And the Zion 2 has more Air cushioning than its predecessor, so you\\\'ll get into the clouds easier and land softer.\\r\\n\\r\\n', 'Zion signature on the tongue and on the outsole\\r\\nStrap over laces for a secure fit\\r\\nColour Shown: White/Volt/Dynamic Turquoise/Black\\r\\nStyle: DM0858-107\\r\\nCountry/Region of Origin: Vietnam', 'download (5).jpg'),
(127, 'Nike Air Jordan 4 ', 32, 250, 5, 'Russell Westbrook is fast. These shoes match his quickness with updated cushioning, data-informed traction and a full-foot fit system to keep him in control. With a rugged utility look combined with a purposeful clash of colours and materials, this model speaks to the core of Russel\\\\\\\'s \\\\\\\"Why Not?\\\\\\\" mantra.', 'Jordan and RW logos on the tongues\\\\r\\\\nReinforced toe\\\\r\\\\nColour Shown: White/Black/Grey Fog/Bright Crimson\\\\r\\\\nStyle: DC3638-160\\\\r\\\\nCountry/Region of Origin: Vietnam', 'download (11).jpg'),
(128, 'Nike Air Jordan 5', 32, 130, 40, 'The Air Jordan Legacy 312 Low celebrates Michael Jordan\\\'s legacy with this shout-out to Chicago\\\'s 312 area code. The design creates a modern mash-up of iconic Jordan elements', 'Design combines iconic elements of the AJ3, AJ1 and Alpha Force.\\r\\nLeather, synthetic and/or textile in the upper with a midfoot strap for a secure fit.\\r\\nVisible Air-Sole unit at the heel enhances cushioning.\\r\\nColour Shown: White/Wolf Grey/Washed Teal\\r\\nStyle: CD7069-130\\r\\nCountry/Region of Origin: China', 'images (4).jpg'),
(131, 'Nike Air Force 1', 32, 340, 10, 'The radiance lives on in the Nike Air Force 1 \\\'07, the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.\\r\\n\\r\\n', 'Debuting in 1982, the AF-1 was the first basketball shoe to house Nike Air, revolutionising the game while rapidly gaining traction around the world. Today, the Air Force 1 stays true to its roots with the same soft and springy cushioning that changed sneaker history.', 'download (5).jpg'),
(138, 'Nike Air Force 2', 32, 250, 15, 'The radiance lives on in the Nike Air Force 1 \'07, the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 'Debuting in 1982, the AF-1 was the first basketball shoe to house Nike Air, revolutionising the game while rapidly gaining traction around the world. Today, the Air Force 1 stays true to its roots with the same soft and springy cushioning that changed sneaker history.', 'download (12).jpg'),
(139, 'Nike Air Jordan 6  ', 32, 150, 19, 'The radiance lives on in the Nike Air Force 1 \\\\\\\'07, the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 'Debuting in 1982, the AF-1 was the first basketball shoe to house Nike Air, revolutionising the game while rapidly gaining traction around the world. Today, the Air Force 1 stays true to its roots with the same soft and springy cushioning that changed sneaker history.\\\\r\\\\n\\\\r\\\\n', 'jo.jpg'),
(140, 'Nike Air Jordan 7       ', 32, 250, 20, 'Let classic, easy-to-wear AF-1 style rise to the occasion with the Nike Air Force 1 PLT.AF.ORM. Its elegantly shaped and lifted midsole delivers a proud, new voice to the hoops franchise. The leather on the upper breaks in easily and ages to soft perfection while the sculpted collar and pillowy heel keep it comfy. Captivate your audience.', 'Fresh details like new dubrae and super-soft liner refine the look and feel of the shoe that has captured the eyes of the streets for 40 years.\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\nPadded, low-cut collar looks sleek and feels great.\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\nRubber outsole with classic pivot circle pattern adds traction and durability.\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\nNew last with tapered toe box gives you a fit you\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\'ll fall in love with', 'download (7).jpg'),
(141, 'Trouser 1 ', 44, 25, 15, 'The Nike Dri-FIT Team Training Trousers are lightweight, flexible and designed to help you stay dry through your entire workout. Soft woven fabric feels smooth against your skin and the tapered legs are designed to help you move through your drills and lifts without distractions. This product is made from 100% recycled polyester fibres.', 'Standard fit for a relaxed, easy feel\\r\\nColour-contrast piping detail on outer leg (select colourways only)\\r\\n100% polyester\\r\\nMachine wash\\r\\nImported\\r\\nColour Shown: Black/Black/White\\r\\nStyle: DM6627-010\\r\\nCountry/Region of Origin: China', 'images (7).jpg'),
(142, 'trouser 2 ', 44, 30, 25, 'The Nike Dri-FIT Team Training Trousers are lightweight, flexible and designed to help you stay dry through your entire workout. Soft woven fabric feels smooth against your skin and the tapered legs are designed to help you move through your drills and lifts without distractions. This product is made from 100% recycled polyester fibres.', 'Standard fit for a relaxed, easy feel\\r\\nColour-contrast piping detail on outer leg (select colourways only)\\r\\n100% polyester\\r\\nMachine wash\\r\\nImported\\r\\nColour Shown: Black/Black/White\\r\\nStyle: DM6627-010\\r\\nCountry/Region of Origin: China', 'images (9).jpg'),
(143, 'Trouser 3 ', 44, 15, 50, 'The Nike Dri-FIT Team Training Trousers are lightweight, flexible and designed to help you stay dry through your entire workout. Soft woven fabric feels smooth against your skin and the tapered legs are designed to help you move through your drills and lifts without distractions. This product is made from 100% recycled polyester fibres.\\r\\n\\r\\n', 'Standard fit for a relaxed, easy feel\\r\\nColour-contrast piping detail on outer leg (select colourways only)\\r\\n100% polyester\\r\\nMachine wash\\r\\nImported\\r\\nColour Shown: Black/Black/White\\r\\nStyle: DM6627-010\\r\\nCountry/Region of Origin: China', 'download (21).jpg'),
(144, 'Trouser 4', 44, 29, 15, 'The Nike Dri-FIT Team Training Trousers are lightweight, flexible and designed to help you stay dry through your entire workout. Soft woven fabric feels smooth against your skin and the tapered legs are designed to help you move through your drills and lifts without distractions. This product is made from 100% recycled polyester fibres.\r\n\r\n\r\nBenefits\r\n\r\nNike Dri-FIT Technology moves sweat away from your skin for quicker evaporation, helping you stay dry and comfortable.\r\nSoft woven fabric is flexible, lightweight and ready to move.\r\nTapered legs keep excess fabric out of the way to help you stay distraction-free during your workout.\r\nSide pockets have a flap-over construction so you can securely store small items like your phone and keys.\r\nThe soft, stretchy waistband hugs your core. An interior waistband lets you cinch up the right fit.\r\n', 'Standard fit for a relaxed, easy feel\r\nColour-contrast piping detail on outer leg (select colourways only)\r\n100% polyester\r\nMachine wash\r\nImported\r\nColour Shown: Black/Black/White\r\nStyle: DM6627-010\r\nCountry/Region of Origin: China', 'download.jpg'),
(145, 'Trouser 5', 44, 30, 10, 'The Nike Dri-FIT Team Training Trousers are lightweight, flexible and designed to help you stay dry through your entire workout. Soft woven fabric feels smooth against your skin and the tapered legs are designed to help you move through your drills and lifts without distractions. This product is made from 100% recycled polyester fibres.\r\n\r\n\r\nBenefits\r\n\r\nNike Dri-FIT Technology moves sweat away from your skin for quicker evaporation, helping you stay dry and comfortable.\r\nSoft woven fabric is flexible, lightweight and ready to move.\r\nTapered legs keep excess fabric out of the way to help you stay distraction-free during your workout.\r\nSide pockets have a flap-over construction so you can securely store small items like your phone and keys.\r\nThe soft, stretchy waistband hugs your core. An interior waistband lets you cinch up the right fit.', 'Standard fit for a relaxed, easy feel\r\nColour-contrast piping detail on outer leg (select colourways only)\r\n100% polyester\r\nMachine wash\r\nImported\r\nColour Shown: Black/Black/White\r\nStyle: DM6627-010\r\nCountry/Region of Origin: China', 'download (6).jpg'),
(146, 'Trouser 6  ', 44, 14, 5, 'The Nike Dri-FIT Team Training Trousers are lightweight, flexible and designed to help you stay dry through your entire workout. Soft woven fabric feels smooth against your skin and the tapered legs are designed to help you move through your drills and lifts without distractions. This product is made from 100% recycled polyester fibres.\\\\r\\\\n\\\\r\\\\n\\\\r\\\\nBenefits\\\\r\\\\n\\\\r\\\\nNike Dri-FIT Technology moves sweat away from your skin for quicker evaporation, helping you stay dry and comfortable.\\\\r\\\\nSoft woven fabric is flexible, lightweight and ready to move.\\\\r\\\\nTapered legs keep excess fabric out of the way to help you stay distraction-free during your workout.\\\\r\\\\nSide pockets have a flap-over construction so you can securely store small items like your phone and keys.\\\\r\\\\nThe soft, stretchy waistband hugs your core. An interior waistband lets you cinch up the right fit.', 'Standard fit for a relaxed, easy feel\\\\r\\\\nColour-contrast piping detail on outer leg (select colourways only)\\\\r\\\\n100% polyester\\\\r\\\\nMachine wash\\\\r\\\\nImported\\\\r\\\\nColour Shown: Black/Black/White\\\\r\\\\nStyle: DM6627-010\\\\r\\\\nCountry/Region of Origin: China', 't.jpg'),
(148, 'Trouser 8', 44, 15, 30, 'The Nike Dri-FIT Team Training Trousers are lightweight, flexible and designed to help you stay dry through your entire workout. Soft woven fabric feels smooth against your skin and the tapered legs are designed to help you move through your drills and lifts without distractions. This product is made from 100% recycled polyester fibres.\r\n\r\n\r\nBenefits\r\n\r\nNike Dri-FIT Technology moves sweat away from your skin for quicker evaporation, helping you stay dry and comfortable.\r\nSoft woven fabric is flexible, lightweight and ready to move.\r\nTapered legs keep excess fabric out of the way to help you stay distraction-free during your workout.\r\nSide pockets have a flap-over construction so you can securely store small items like your phone and keys.\r\nThe soft, stretchy waistband hugs your core. An interior waistband lets you cinch up the right fit.', 'Standard fit for a relaxed, easy feel\r\nColour-contrast piping detail on outer leg (select colourways only)\r\n100% polyester\r\nMachine wash\r\nImported\r\nColour Shown: Black/Black/White\r\nStyle: DM6627-010\r\nCountry/Region of Origin: China', 'tro.jpg'),
(149, 'Nike Air Jordan 8', 32, 300, 10, 'Familiar but always fresh, the iconic Air Jordan 1 is remastered for today\'s sneakerhead culture. This Retro High OG version goes all in with premium leather, comfortable cushioning and classic design details.', 'Wings logo on side\r\nNike Air tongue label\r\nPerforated toe\r\nRubber traction\r\nFoam sole\r\nNot intended for use as Personal Protective Equipment (PPE)\r\nColour Shown: Stealth/White\r\nStyle: 555088-037\r\nCountry/Region of Origin: China', 'images (5).jpg'),
(150, 'Nike Air Jordan 9', 32, 250, 5, 'Familiar but always fresh, the iconic Air Jordan 1 is remastered for today\'s sneakerhead culture. This Retro High OG version goes all in with premium leather, comfortable cushioning and classic design details.\r\n\r\n\r\nAir Inside\r\n\r\nThe Air-Sole unit in the heel provides the same lightweight cushioning that MJ enjoyed back in his playing days.\r\n\r\n\r\nLuxe Leather\r\n\r\nGenuine leather in the upper provides durability and structure with a luxe touch. A textile tongue feels soft and comfortable over the top of your foot.\r\n\r\n\r\nClassic Cupsole\r\n\r\nWhy mess with greatness? Stable and supportive, the shoe\'s cupsole has the same profile and thick stitch detailing as the original.\r\n\r\n', 'Wings logo on side\r\nNike Air tongue label\r\nPerforated toe\r\nRubber traction\r\nFoam sole\r\nNot intended for use as Personal Protective Equipment (PPE)\r\nColour Shown: Stealth/White\r\nStyle: 555088-037\r\nCountry/Region of Origin: China', 'images (4).jpg'),
(151, 'Nike Air Jordan 10', 32, 150, 15, 'Familiar but always fresh, the iconic Air Jordan 1 is remastered for today\'s sneakerhead culture. This Retro High OG version goes all in with premium leather, comfortable cushioning and classic design details.\r\n\r\n\r\nAir Inside\r\n\r\nThe Air-Sole unit in the heel provides the same lightweight cushioning that MJ enjoyed back in his playing days.\r\n\r\n\r\nLuxe Leather\r\n\r\nGenuine leather in the upper provides durability and structure with a luxe touch. A textile tongue feels soft and comfortable over the top of your foot.\r\n\r\n\r\nClassic Cupsole\r\n\r\nWhy mess with greatness? Stable and supportive, the shoe\'s cupsole has the same profile and thick stitch detailing as the original.', 'Wings logo on side\r\nNike Air tongue label\r\nPerforated toe\r\nRubber traction\r\nFoam sole\r\nNot intended for use as Personal Protective Equipment (PPE)\r\nColour Shown: Stealth/White\r\nStyle: 555088-037\r\nCountry/Region of Origin: China', 'nk.jpg'),
(152, 'Short 1', 45, 9, 10, 'The Nike Dri-FIT Academy Shorts refuse to let sweat slow you down.Slightly stretchy fabric moves sweat off your skin, so you can focus on playing your best. This product is made from 100% recycled polyester fibres.\r\nBenefits\r\n\r\nDri-FIT Technology helps keep you dry and comfortable.\r\nMesh stripes add breathability.\r\nElastic waistband and hidden drawcord give you the perfect fit.\r\nSpeed-inspired look is modelled after training apparel worn by professional players.\r\n', 'Standard fit for a relaxed, easy feel\r\n100% polyester\r\nMachine wash\r\nImported\r\nColour Shown: Black/White/White/White\r\nStyle: CW6108-010\r\nCountry/Region of Origin: Thailand', 's1.jpg'),
(153, 'Short 2', 45, 8, 5, 'The Nike Dri-FIT Academy Shorts refuse to let sweat slow you down.Slightly stretchy fabric moves sweat off your skin, so you can focus on playing your best. This product is made from 100% recycled polyester fibres.\r\n\r\n\r\nBenefits\r\n\r\nDri-FIT Technology helps keep you dry and comfortable.\r\nMesh stripes add breathability.\r\nElastic waistband and hidden drawcord give you the perfect fit.\r\nSpeed-inspired look is modelled after training apparel worn by professional players.\r\n', 'Standard fit for a relaxed, easy feel\r\n100% polyester\r\nMachine wash\r\nImported\r\nColour Shown: Black/White/White/White\r\nStyle: CW6108-010\r\nCountry/Region of Origin: Thailand', 's2.jpg'),
(154, 'Short 3', 45, 10, 20, 'The Nike Dri-FIT Academy Shorts refuse to let sweat slow you down.Slightly stretchy fabric moves sweat off your skin, so you can focus on playing your best. This product is made from 100% recycled polyester fibres.\r\n\r\n\r\nBenefits\r\n\r\nDri-FIT Technology helps keep you dry and comfortable.\r\nMesh stripes add breathability.\r\nElastic waistband and hidden drawcord give you the perfect fit.\r\nSpeed-inspired look is modelled after training apparel worn by professional players.', 'Standard fit for a relaxed, easy feel\r\n100% polyester\r\nMachine wash\r\nImported\r\nColour Shown: Black/White/White/White\r\nStyle: CW6108-010\r\nCountry/Region of Origin: Thailand', 's3.jpg'),
(155, 'Short 4', 45, 12, 7, 'The Nike Dri-FIT Academy Shorts refuse to let sweat slow you down.Slightly stretchy fabric moves sweat off your skin, so you can focus on playing your best. This product is made from 100% recycled polyester fibres.\r\n\r\n\r\nBenefits\r\n\r\nDri-FIT Technology helps keep you dry and comfortable.\r\nMesh stripes add breathability.\r\nElastic waistband and hidden drawcord give you the perfect fit.\r\nSpeed-inspired look is modelled after training apparel worn by professional players.\r\n', 'Standard fit for a relaxed, easy feel\r\n100% polyester\r\nMachine wash\r\nImported\r\nColour Shown: Black/White/White/White\r\nStyle: CW6108-010\r\nCountry/Region of Origin: Thailand', 's4.jpg'),
(156, 'Short 5', 45, 10, 5, 'The Nike Dri-FIT Academy Shorts refuse to let sweat slow you down.Slightly stretchy fabric moves sweat off your skin, so you can focus on playing your best. This product is made from 100% recycled polyester fibres.\r\n\r\n\r\nBenefits\r\n\r\nDri-FIT Technology helps keep you dry and comfortable.\r\nMesh stripes add breathability.\r\nElastic waistband and hidden drawcord give you the perfect fit.\r\nSpeed-inspired look is modelled after training apparel worn by professional players.\r\n', 'Standard fit for a relaxed, easy feel\r\n100% polyester\r\nMachine wash\r\nImported\r\nColour Shown: Black/White/White/White\r\nStyle: CW6108-010\r\nCountry/Region of Origin: Thailand', 's5.jpg'),
(157, 'Short 6', 45, 15, 25, 'The Nike Dri-FIT Academy Shorts refuse to let sweat slow you down.Slightly stretchy fabric moves sweat off your skin, so you can focus on playing your best. This product is made from 100% recycled polyester fibres.\r\n\r\n\r\nBenefits\r\n\r\nDri-FIT Technology helps keep you dry and comfortable.\r\nMesh stripes add breathability.\r\nElastic waistband and hidden drawcord give you the perfect fit.\r\nSpeed-inspired look is modelled after training apparel worn by professional players.', 'Standard fit for a relaxed, easy feel\r\n100% polyester\r\nMachine wash\r\nImported\r\nColour Shown: Black/White/White/White\r\nStyle: CW6108-010\r\nCountry/Region of Origin: Thailand', 's6.jpg'),
(158, 'Short 7', 45, 7, 2, 'The Nike Dri-FIT Academy Shorts refuse to let sweat slow you down.Slightly stretchy fabric moves sweat off your skin, so you can focus on playing your best. This product is made from 100% recycled polyester fibres.\r\n\r\n\r\nBenefits\r\n\r\nDri-FIT Technology helps keep you dry and comfortable.\r\nMesh stripes add breathability.\r\nElastic waistband and hidden drawcord give you the perfect fit.\r\nSpeed-inspired look is modelled after training apparel worn by professional players.', 'Standard fit for a relaxed, easy feel\r\n100% polyester\r\nMachine wash\r\nImported\r\nColour Shown: Black/White/White/White\r\nStyle: CW6108-010\r\nCountry/Region of Origin: Thailand', 's7.jpg'),
(159, 'Short 8', 45, 10, 30, 'The Nike Dri-FIT Academy Shorts refuse to let sweat slow you down.Slightly stretchy fabric moves sweat off your skin, so you can focus on playing your best. This product is made from 100% recycled polyester fibres.\r\n\r\n\r\nBenefits\r\n\r\nDri-FIT Technology helps keep you dry and comfortable.\r\nMesh stripes add breathability.\r\nElastic waistband and hidden drawcord give you the perfect fit.\r\nSpeed-inspired look is modelled after training apparel worn by professional players.', 'Standard fit for a relaxed, easy feel\r\n100% polyester\r\nMachine wash\r\nImported\r\nColour Shown: Black/White/White/White\r\nStyle: CW6108-010\r\nCountry/Region of Origin: Thailand', 's8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `report_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`report_id`, `product_id`, `order_id`, `product_price`, `product_title`, `product_quantity`) VALUES
(78, 1, 110, 24.99, 'Product 1', 1),
(79, 2, 110, 23.99, 'Product 2', 1),
(80, 1, 111, 24.99, 'Product 1', 1),
(81, 2, 111, 23.99, 'Product 2', 1),
(82, 1, 112, 24.99, 'Product 1', 1),
(83, 2, 113, 23.99, 'Product 2', 1),
(84, 1, 114, 24.99, 'Product 1', 1),
(85, 1, 115, 24.99, 'Product 1', 1),
(86, 1, 116, 24.99, 'Product 1', 1),
(87, 119, 117, 250, 'Nike   ', 1),
(88, 122, 118, 245, 'Shirt', 1),
(89, 125, 119, 150, 'Nike Air Jordan 2 ', 2),
(90, 139, 120, 150, 'Nike Air Jordan 6', 1),
(91, 123, 121, 145, 'Nike air Jordan 1 ', 5),
(92, 141, 122, 25, 'Trouser 1 ', 10);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `slide_title` varchar(255) NOT NULL,
  `slide_id` int(11) NOT NULL,
  `slide_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'rico', 'rico@hotmail.com', '123'),
(10, 'tobi', 'debnilsarkar72300@gmail.com', '9932');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `slide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
