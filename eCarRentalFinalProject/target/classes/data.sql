INSERT INTO `ecar-rental-db`.`addresses` (`address_id`, `city`, `country`, `state`, `street`, `zip_code`) VALUES ('1', 'Philadelphia', 'USA', 'PA', '7518 blueRd', '19151');
INSERT INTO `ecar-rental-db`.`addresses` (`address_id`, `city`, `country`, `state`, `street`, `zip_code`) VALUES ('2', 'fairfield', 'USA', 'IA', '2000 N court', '52556');
INSERT INTO `ecar-rental-db`.`payments` (`payment_id`, `card_cvv`, `card_number`, `payment_date`,  `payment_type`, `total_price`, `address_id`) VALUES ('1', '698', '3434545445', '2020-04-03',  'credit card', '40.0', '1');
INSERT INTO `ecar-rental-db`.`categories`(`category_id`, `category_name`, `doors`, `rate_per_day`,`seats`) VALUES ('1', 'sportsCar', '2', '80','4');
INSERT INTO `ecar-rental-db`.`categories` (`category_id`, `category_name`, `doors`, `rate_per_day`,`seats`) VALUES ('2', 'SUV', '4', '85','6');
INSERT INTO `ecar-rental-db`.`vehicles` (`vehicle_id`, `make`, `model`, `plate_number`, `vehicle_number`, `year`,`category_id`) VALUES ('1', 'Toyota', 'Yaris', '53654', '354278598', '2009','1');
INSERT INTO `ecar-rental-db`.`vehicles` (`vehicle_id`, `make`, `model`, `plate_number`, `vehicle_number`, `year`,`category_id`) VALUES ('2', 'Honda', 'Accord', '89735', '985364876', '2010','2');
INSERT INTO `ecar-rental-db`.`credentials` (`credential_id`, `password`, `user_name`) VALUES ('1', '$2a$10$lpIZnDb91HgYwoxqpjWTju0cuwhCYIdyCierDcVTcV2AbUyaGRlZu', 'binireyes@gmail.com');
INSERT INTO `ecar-rental-db`.`credentials` (`credential_id`, `password`, `user_name`) VALUES ('2', '$2a$10$uIbeaLrNT3kN7RgAFSG5lenI3cZBDmM7PK7z7OYDpjGQEUr44Tcx6', 'ariva311@gmail.com');
INSERT INTO `ecar-rental-db`.`credentials` (`credential_id`, `password`, `user_name`) VALUES ('3', '$2a$10$M5zhAXcTh1w6Arx/fSK4buAx1oJWfdkf5xWsUzYcBeypXEBE8l4E2', 'etezare@gmail.com');
INSERT INTO `ecar-rental-db`.`user` (`user_id`, `date_of_birth`, `first_name`, `last_name`, `license_number`, `middle_name`) VALUES ('1', '1994-09-09', 'Essey', 'Tezare', '98765432', 'Abraham');
INSERT INTO `ecar-rental-db`.`user` (`user_id`, `date_of_birth`, `first_name`, `last_name`, `license_number`, `middle_name`) VALUES ('2', '1993-09-09', 'Dawit', 'Hailu', '98756765', 'Tesfahannes');
INSERT INTO `ecar-rental-db`.`user` (`user_id`, `date_of_birth`, `first_name`, `last_name`, `license_number`, `middle_name`) VALUES ('3', '1993-01-09', 'Biniam', 'Arefaine', '98765376', 'Tsehaye');
INSERT INTO `ecar-rental-db`.`bookings` (`booking_id`, `booking_date`, `date_of_birth`, `email`, `end_date`, `first_name`, `last_name`, `license_number`, `reference_number`, `start_date`, `total_price`, `payment_id`, `user_id`, `vehicle_id`) VALUES ('1', '2009-09-09', '1993-09-11', 'binireyes@gmail.com', '2009-09-12', 'Biniam', 'Arefaine', '123456789', '100', '2009-09-09', '320.00', '1', '1', '1');
INSERT INTO `ecar-rental-db`.`role` (`role_id`, `role_name`) VALUES ('1', 'ROLE_ADMIN');
INSERT INTO `ecar-rental-db`.`role` (`role_id`, `role_name`) VALUES ('2', 'ROLE_STAFF');
INSERT INTO `ecar-rental-db`.`role` (`role_id`, `role_name`) VALUES ('3', 'ROLE_CUSTOMER');
INSERT INTO `ecar-rental-db`.`user_roles` (`user_id`, `role_id`) VALUES ('1', '1');
INSERT INTO `ecar-rental-db`.`user_roles` (`user_id`, `role_id`) VALUES ('2', '2');
INSERT INTO `ecar-rental-db`.`user_roles` (`user_id`, `role_id`) VALUES ('3', '3');
