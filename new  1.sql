
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_no` varchar(12) NOT NULL,
  `customer_name` varchar(60) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
 ) 