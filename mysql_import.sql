
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` tinytext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_code` (`product_code`)
) AUTO_INCREMENT=1 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `price`) VALUES
(1, 'PD1001', 'Queen', 'Queen is a 2014 Indian comedy-drama film directed by Vikas Bahl and produced by Anurag Kashyap, Vikramaditya Motwane, and Madhu Mantena. The film stars Kangana Ranaut in the lead role, with Lisa Haydon and Rajkummar Rao playing supporting roles.Rani, an under-confident Punjabi girl from New Delhi embarks on her honeymoon to Paris and Amsterdam by herself after her fiancé calls off their wedding.', 'queen.jpg', 500.00),
(2, 'PD1002', 'Bewakoofiyaan', 'Bewakoofiyaan is a 2014 Indian romantic comedy film directed by Nupur Asthana, written by Habib Faisal and produced by Aditya Chopra under the banner of Yash Raj Films. It features Ayushmann Khurrana, Sonam Kapoor and Rishi Kapoor in lead roles. The film released on 14 March 2014.', 'bewakoofiyaan.jpg', 300.00),
(3, 'PD1003', 'Shaadi Ke Side Effects', 'Shaadi Ke Side Effects is a 2014 Bollywood romantic comedy film directed by Saket Chaudhary and starring Farhan Akhtar alongside Vidya Balan in lead roles. It is the sequel of 2006 film Pyaar Ke Side Effects. It was released on 28 February 2014. The film is about a young couple who experience many comic events after their marriage.', 'shaadi.jpg', 400.00),
(4, 'PD1004', 'Sabotage', 'Sabotage is a 2014 American action film written and directed by David Ayer, co-written by Skip Woods, and starring Arnold Schwarzenegger, Sam Worthington, Olivia Williams, Mireille Enos and Terrence Howard. The film was released in the United States on March 28, 2014.', 'wrist-watch.jpg', 600.00);



CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_no` varchar(12) NOT NULL,
  `customer_name` varchar(60) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
 ); 
 
 