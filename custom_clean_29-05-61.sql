-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 29, 2018 at 06:14 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `custom_clean`
--

-- --------------------------------------------------------

--
-- Table structure for table `custom_clean`
--

CREATE TABLE `custom_clean` (
  `id` int(100) NOT NULL,
  `rice_id` int(100) NOT NULL,
  `meet_id` int(100) NOT NULL,
  `vegetable_id` int(100) NOT NULL,
  `cook` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custom_clean`
--

INSERT INTO `custom_clean` (`id`, `rice_id`, `meet_id`, `vegetable_id`, `cook`) VALUES
(1, 1, 8, 4, 'Fried'),
(2, 1, 1, 1, 'Boil'),
(3, 1, 1, 1, 'Boil'),
(4, 1, 1, 1, 'Boil'),
(5, 1, 9, 5, 'Fried'),
(6, 3, 10, 3, 'Steam'),
(7, 2, 10, 6, 'Fried'),
(8, 2, 8, 2, 'Fried'),
(9, 2, 9, 2, 'Steam'),
(10, 1, 2, 6, 'Boil'),
(11, 2, 5, 5, 'Fried'),
(12, 1, 2, 2, 'Pepper'),
(13, 1, 2, 2, 'Fried'),
(14, 1, 1, 4, 'Fried'),
(15, 1, 1, 4, 'Fried'),
(16, 1, 1, 4, 'Pepper'),
(17, 1, 1, 4, 'Pepper'),
(18, 1, 1, 1, 'Steam'),
(19, 1, 2, 2, 'Fried'),
(20, 1, 8, 4, 'Fried'),
(21, 1, 1, 1, 'Pepper'),
(22, 1, 1, 1, 'Pepper'),
(23, 1, 1, 4, 'Sear'),
(24, 1, 1, 4, 'Sear'),
(25, 1, 1, 1, 'Pepper'),
(26, 1, 8, 1, 'Curry'),
(27, 2, 2, 2, 'Steam');

-- --------------------------------------------------------

--
-- Table structure for table `meet`
--

CREATE TABLE `meet` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meet`
--

INSERT INTO `meet` (`id`, `name`, `price`, `image`) VALUES
(1, 'chickenbreast', '1', 'chickenbreast.jpg'),
(2, 'chickenwing', '1', 'chickenwing.jpg'),
(3, 'drumstick', '1', 'drumstick.jpg'),
(4, 'dolly', '1', 'dolly.jpg'),
(5, 'meat', '1', 'meat.jpg'),
(6, 'pork', '1', 'pork.jpg'),
(8, 'salmon', '1', 'salmon.jpeg'),
(9, 'shrimp', '1', 'shrimp.jpg'),
(10, 'tuna', '1', 'tuna.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(100) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `price` int(255) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `price`, `detail`, `image`) VALUES
(1, 'Chicken roll with gravy sauce', 250, 'This Chicken with Gravy is a total crowd pleaser, and a great quick one for midweek! Juicy, pan seared chicken breast is smothered with a mushroom gravy that is absolutely to die for', '7.jpg'),
(2, 'Chicken roll  with spinach', 250, 'This is a spicier version of spinach stuffed chicken breasts. They are both tender and delicious, and they look good too', '8.jpg'),
(3, 'Roast chicken with lemon sauce', 250, 'Inspired by the lemon chicken served at Rao’s restaurant in New York, our version translates the dish from the restaurant kitchen to the home kitchen—and makes a few improvements at the same time. We substituted easy-to-find chicken parts that don’t requi', '9.jpg'),
(4, 'Roast chicken with scrambled eggs', 250, 'We wanted to come up with a side dish stuffing recipe that could be eaten with a variety of holiday roasts. After testing eight different kinds of bread, we settled on French for our stuffing recipe. It held up to the addition of liquid necessary for mois', '10.jpg'),
(5, 'Grilled Chicken with black pepper', 250, 'For a grilled chicken recipe with evenly cooked meat that would require much less effort and attention than a whole bird, we butterflied the chicken—a simple process in which the bird is placed on its breast and the backbone is removed. Pounding the bird ', '11.jpg'),
(6, 'Chicken in red wine sauce', 250, 'Mojo chicken is all about the citrusy, garlicky mojo marinade. So we built our version piece by piece. To mimic the juice of sour oranges, we used a combination of orange and lime juices as well as their zests. To take the raw edge off the garlic, we toas', '12.jpg'),
(7, 'Red chicken with salty cream', 250, 'We wanted a glaze recipe for our barbecued chicken that wasn’t too sweet and didn’t require too much work. So we had to find ingredients—fruit preserves, ketchup, hoisin sauce, peanut butter—thick enough to serve as a base. Building a barbecue glaze recip', '13.jpg'),
(8, 'Spicy chicken wing ', 250, 'A thin, crispy exterior and a spicy-sweet-salty sauce are the hallmarks of Korean fried chicken. The biggest challenge is preventing the sauce from destroying the crust. We dunk the wings (which cook quickly and offer a high skin-to-meat ratio for maximum', '14.jpg'),
(9, 'Teriyaki Chicken', 250, 'For a straightforward chicken teriyaki recipe that would deliver a crisp, moist, sweet, and salty glazed chicken, we decided against using breast meat, since it couldn’t stand up to the salty profile of the teriyaki sauce. We gained back some of the time ', '15.jpg'),
(10, 'Dolly with Thai herbs', 250, 'For our Dilly Garden Potato Salad recipe, we dressed the potatoes and green beans while they were still hot so that they easily absorbed the dressing. Liberally seasoning the water in which the green beans and potatoes were cooked ensured that they wouldn', '16.jpg'),
(11, 'Spicy and salty dolly', 250, 'Too often, nacho recipes produce soggy chips loaded down with bland, greasy beef; dry beans; and cold strings of cheese. To avoid this, we created an Ultimate Spicy Beef Nachos recipe that turns out crisp, flavorful, and fresh. Boldly seasoning our beef w', '17.jpg'),
(12, 'grilled dolly with salad', 250, 'For our Grilled Swordfish with Eggplant Salad recipe, we gave a flavor boost to the fish with a paste prepared from cilantro, onions, garlic, and spices. The ingredients cooked over the hot fire and lent the fish rich flavor. We cooked the fish and eggpla', '18.jpg'),
(13, 'Dolly with white cream sauce', 250, 'Fortified wines such as port and sherry start off like any other wine, but are then boosted with additional spirits (usually brandy) to achieve an 18 to 20 percent alcohol level. Traditionally, these wines were fortified to avoid spoilage during long ship', '19.jpg'),
(14, 'Boiled dolly with fruit salad', 250, 'This Stone Fruit Salad with Camembert Croutons over Mixed Greens recipe combines sweet-tart plums and peaches with pungent Camembert. The cheese is breaded and baked in the oven so that the exterior is crisp and the interior creamy soft. For the Camembert', '20.jpg'),
(15, 'Spicy dolly with American fried rice', 250, 'It’s best to use leftover cooked rice to make fried rice that doesn’t clump and isn’t mushy, but who has leftover rice just sitting around? To develop a work-around, we used the pasta method to make the rice—cooking it in lots of boiling water washes off ', '21.png'),
(16, 'Red wine chicken soup', 250, 'Making this deeply flavored, hearty winter specialty is typically a lengthy process of combining a minestrone-like soup with risotto. We eliminated the need to make two separate dishes and simplified its preparation to make one hearty risotto. Sautéed pan', '22.jpg'),
(17, 'grilled chicken with potatoes', 250, 'Potatoes grilled on a hot fire turn out burned on the outside and raw on the inside. Potatoes grilled on a moderate fire take forever to cook. We set out to find a better cooking method for our grilled potato salad recipe: We skewered and blanched sliced ', '23.jpeg'),
(18, 'Roast chicken with Thai herbs', 250, 'The traditional Thai chicken recipe produces herb-and-spice-rubbed grilled chicken served in small pieces and eaten as finger food, along with a sweet and spicy dipping sauce. After testing numerous rub combinations, the simplest version won out, made onl', '24.jpg'),
(19, 'Chicken in India style', 250, 'We found that bone-in, skin-on chicken breasts were the best choice for our grilled tandoori chicken recipe because the skin protected the top of the breast and the bone shielded the interior from the grill\'s hot, dry heat. There was also plenty of surfac', '25.jpg'),
(20, 'Grilled chicken with tomatoes sauce', 250, 'We wanted a streamlined Steak Diane recipe with the best cut of steak, a foolproof method for cooking it, a quicker stock, and a leaner sauce. We chose flavorful strip steaks and pounded them to a ½-inch thickness for even browning; made a veal stock subs', '26.jpg'),
(21, 'Meat Meet Salad', 250, 'Grilling is a terrific way to cook pork tenderloin, a tender cut of meat that benefits from the flavor boost provided by fire. We wanted a rich, browned crust and juicy, tender meat—and a quick, flavorful salad to accompany it. Using frozen corn in our Gr', '27.jpg'),
(22, 'Beef steak ', 250, 'We try to cook indoors as little as possible in the midsummer heat and are always looking for inventive dishes prepared on the grill. Chicken breasts cook in minutes, as does corn. A quick corn and tomato relish seems like the perfect match for juicy chic', '28.jpg'),
(23, 'Grilled beef with red wine', 250, 'We wanted a beef kebabs recipe that turned beef kebabs into a complete meal, with a Greek salad on the side. Flat metal skewers kept our beef cubes in place, which made it easy to brown them on each side. For our quick side Greek salad recipe, we chose co', '29.jpg'),
(24, 'Meat salad', 250, 'Cooking your own chicken is the best way to get moist, tender shredded meat for salad. In our Roast Chicken Breasts for Salad recipe, we found that seasoning the breasts with oil, salt, and pepper produced a simple but still tasty flavor that melded well ', '30.jpg'),
(25, 'Roast beef in fruit salad', 250, 'Salts infused with herbs or condiments (think mustard or Sriracha sauce) add flair and some crunch when used as a finishing touch. Buying them at specialty stores can be expensive, but it’s easy to make them on your own by following a few guidelines.\r\n\r\nC', '31.jpg'),
(26, 'Beef steak with red wine', 250, 'For a pan-seared steak recipe with a full-bodied, complex steak sauce, we cooked the steaks in a high-quality, heavy pan, reducing the heat to prevent burning and moving the steaks only once. By adding a few extra ingredients to the traditional trio of wi', '32.jpg'),
(27, 'Grilled pork with oak wood', 250, 'For a moist grilled pork loin recipe without traditional brines or sauces, we used a moist stuffing to combat dryness from the inside out. Using a short, wide roast, we opened it into a flat sheet with only four straight, short cuts. Poaching fruit for th', '33.jpg'),
(28, 'Pork steak with tomato sauce', 250, 'St. Louis BBQ Pork Steaks are little-known in other parts of America, but in St. Louis, they are so popular that pork steaks are on permanent sale in family packs at the supermarket. We found there was no substitute for pork steak, so the only option was ', '34.jpeg'),
(29, 'grilled steak with Thai herbs', 250, 'While we love crispy, crunchy fried things just as much as anyone, there are some equally delicious dishes that deliberately add supersavory liquids to fried foods to partially sog them out while flavoring them deeply (Mexican braised chicharrónes and eve', '35.jpg'),
(30, 'Pork with salty creamy sauce', 250, 'When developing our Creamy Peas with Ham and Onion recipe, we wanted to find a method for cooking and flavoring the peas at the same time. We found that simply simmering the peas in a flavorful sauce allowed them to quickly absorb the sauce’s flavor. To i', '36.jpg'),
(31, 'Roast pork with oak wood', 250, 'When developing our smoked pork chops recipe, we discovered the keys to smoke-cooking: maintaining a constant low temperature and keeping that smoke flowing. We started with a generous amount of wood chunks and chips, adding more as necessary to maintain ', '37.jpg'),
(32, 'Salmon with garlic', 250, 'Salmon is perfect for glazing and grilling, but try to do both things at once and the fish desperately wants to stick to the grate. The promise of sweet, smoky glazed grilled salmon makes this recipe very appealing, but how could we make getting there les', '38.jpg'),
(33, 'Salmon with salty sauce', 250, 'Broiling is one of the easiest and best methods we’ve found for cooking salmon. The intense heat browns the exterior, but leaves the middle moist and juicy. For our Glazed Salmon recipe, we found that soy sauce combined with mustard and honey paired perfe', '39.jpg'),
(34, 'Grilled salmon with vinegar', 250, 'Salmon is perfect for glazing and for grilling, but try to do both things at once and the fish desperately wants to stick to the grill grate. One typical way around the problem—cooking the salmon skin side down without flipping it—sacrifices the skin to t', '40.jpg'),
(35, 'Smoke Salmon with oak wood', 250, 'When developing our smoked salmon recipe, we discovered the keys to smoke-cooking: maintaining a constant low temperature and keeping that smoke flowing. We started with a generous amount of wood chunks and chips, adding more as necessary to maintain a st', '41.jpg'),
(36, 'Shrimp Salad', 250, 'We began our shrimp salad with a foolproof poaching method of boiling and shocking the shrimp in ice water to stop the cooking. For a quick, assertive Thai dressing, we simply combined mayo with fresh carrot, scallions, mint, hearty soy, tangy lime juice,', '42.jpg'),
(37, 'Salty shrimp with fruit salad', 250, 'In this summery dish, sweet watermelon is paired with salty feta and briny olives. To enhance the flavor and texture of the fresh melon, we macerate it in sugar for 30 minutes, driving off excess moisture to prevent a watery salad. A simple dressing of ri', '43.jpg'),
(38, 'Shrimp in spicy soup', 250, 'To get the right balance of hot, salty, sweet, and sour elements in our Thai-style shrimp soup, we substituted easy-to-find jalapeño peppers for traditional bird’s eye chiles. Saltiness came via fish sauce. The Thai-style shrimp soup recipe’s sourness aut', '44.jpeg'),
(39, 'barbecue shrimp', 250, 'We started by determining the best cooking method for our version of New Orleans Barbecue Shrimp; in this case, searing the shrimp first, then sautéing the aromatics before returning the shrimp to the skillet to gently finish cooking in the rich sauce pro', '45.jpg'),
(40, 'Grilled tuna with salt', 250, 'For the best grilled tuna recipe, one that produced tuna steaks beautifully seared on the outside and moist and tender on the inside, we turned to olive oil. We discovered that marinating the fish in extra-virgin olive for at least an hour produced remark', '46.jpg'),
(41, 'Tuna steak with salad', 250, 'Peanuts give the cucumber salad a crunchy contrast, and the fish sauce and lime juice in the dressing complement the tuna.', '47.jpg'),
(42, 'Tuna salad', 250, 'Tuna salad, so familiar and simple, is often watery, chalky, and/or bland. To achieve a moist and flavorful tuna salad, we first thoroughly drain chunk tuna and dry it with paper towels. We enlist the microwave to quickly cook some onions in oil and then ', '48.jpg'),
(43, 'Smoke Tuna with secret wood', 250, 'A good pot roast recipe should transform a cut of meat into a tender, rich, flavorful main course by means of a slow, moist cooking process called braising. For our best pot roast recipe, we browned the roast on all sides, then added onion, carrot, and ce', '49.jpg'),
(44, 'Grilled tuna with sesame', 250, 'We wanted to develop marinade recipes to add deep flavor to a variety of grilled foods. To keep the marinades from softening the meat during this long process, we determined that low-acid marinades (with some lemon or vinegar to balance flavors) were opti', '50.jpeg'),
(45, 'Tuna with olive salad', 250, 'For our ideal salad Niçoise recipe, we wanted to put together well-dressed, well-seasoned components that would complement rather than crowd one another. We paired fruity extra-virgin olive oil and lemon juice to create the base of the vinaigrette, then a', '51.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `order_food`
--

CREATE TABLE `order_food` (
  `id` int(100) NOT NULL,
  `menu_id` int(100) NOT NULL,
  `custom_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `total_price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_food`
--

INSERT INTO `order_food` (`id`, `menu_id`, `custom_id`, `user_id`, `total_price`, `quantity`) VALUES
(20, 2, 0, 39, 250, 1),
(21, 3, 0, 39, 750, 3),
(22, 0, 10, 39, 170, 10),
(23, 0, 11, 39, 34, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rice`
--

CREATE TABLE `rice` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rice`
--

INSERT INTO `rice` (`id`, `name`, `price`, `image`) VALUES
(1, 'riceberry', 15, 'riceberry.jpg'),
(2, 'brown rice', 15, 'brown rice.jpg'),
(3, 'Thai jasmine rice', 15, 'Thai jasmine rice.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` int(10) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `username`, `password`, `email`, `phone_number`, `address`) VALUES
(35, 'Pannawat', 'Nokket', 'nogket@gmail.com', '$2y$12$MbOc03zInDtLmSAyCZ3yve7rnpc2yABvrU4yJwsM6/syUJETXs2FS', 'nogket@gmail.com', 2324323, '60 Inter Park Thammasat Pathumthani 12120'),
(39, 'budtita', 'wongteeravit', 'gminemini', '$2y$12$ee3LncCAk4A1cXgA.hIyT.N08cfW18ntMEdFVPzqPmhZngPv6w602', 'mine@hotmail.com', 971347084, '150 m.1'),
(44, 'Pannawat', 'Nokket', '5709680044', '$2y$12$Lai9TpGYdQ8PvvOKDJnEce8GMHaTuWgkn.9Vp2Ey8JEZWeWYrXRu6', 'developer@pandasoft.co.th', 2324323, '60 Inter Park Thammasat Pathumthani 12120'),
(46, '', '', '', '$2y$12$utEg3arCMrTq4byAuP8hBubKfY9Yju8YiTwu46ZnzgjtBsc5k6HtS', '', 0, ''),
(60, 'Pannawat', 'Nokket', 'username', '$2y$12$/YdzQZB/pwyZHV6F1wglsOOxhbCWJgLn7ptZD5T3yl16x/FzAJznq', 'nogket@gmail.com', 2324323, '60 Inter Park Thammasat Pathumthani 12120'),
(61, 'Pannawat', 'Nokket', '57096800442e', '$2y$12$TMhmIkAGa2COuZM5pNkKde/O.z9JcIS.os2VuvIqss2VgUCwRWZ8a', 'nogket@gmail.com', 2324323, '60 Inter Park Thammasat Pathumthani 12120');

-- --------------------------------------------------------

--
-- Table structure for table `vegetable`
--

CREATE TABLE `vegetable` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vegetable`
--

INSERT INTO `vegetable` (`id`, `name`, `price`, `image`) VALUES
(1, 'Tomato', 1, '1.png'),
(2, 'Corn', 1, '2.jpg'),
(3, 'Carrot', 1, '3.jpg'),
(4, 'Red oak', 1, '4.jpg'),
(5, 'Green oak', 1, '5.jpg'),
(6, 'Red bean', 1, '6.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `custom_clean`
--
ALTER TABLE `custom_clean`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rice_id` (`rice_id`),
  ADD KEY `meet_id` (`meet_id`),
  ADD KEY `vegetable_id` (`vegetable_id`);

--
-- Indexes for table `meet`
--
ALTER TABLE `meet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_food`
--
ALTER TABLE `order_food`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rice`
--
ALTER TABLE `rice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `vegetable`
--
ALTER TABLE `vegetable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `custom_clean`
--
ALTER TABLE `custom_clean`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `meet`
--
ALTER TABLE `meet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `order_food`
--
ALTER TABLE `order_food`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `rice`
--
ALTER TABLE `rice`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `vegetable`
--
ALTER TABLE `vegetable`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `custom_clean`
--
ALTER TABLE `custom_clean`
  ADD CONSTRAINT `meet_id` FOREIGN KEY (`meet_id`) REFERENCES `meet` (`id`),
  ADD CONSTRAINT `rice_id` FOREIGN KEY (`rice_id`) REFERENCES `rice` (`id`),
  ADD CONSTRAINT `vegetable_id` FOREIGN KEY (`vegetable_id`) REFERENCES `vegetable` (`id`);

--
-- Constraints for table `order_food`
--
ALTER TABLE `order_food`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
