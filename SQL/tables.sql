drop table TABELS;
create table TABELS
(
	table_ID  int auto_increment
        primary key,
    number_of_diners int,
    type varchar(255) not null,
    status bit,
    restaurants_ID int,
    constraint tables_fk_1
        foreign key (restaurants_ID) references RESTAURANTS(restaurants_ID)
);


INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (1, 1, 'Bar', 0, 2);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (2, 2, 'Salon', 1, 2);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (3, 3, 'Terrace', 1, 2);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (4, 4, 'Inside', 1, 2);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (5, 5, 'Smoke Area', 1, 2);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (6, 6, 'Inside', 0, 2);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (7, 7, 'Inside', 1, 2);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (8, 8, 'Inside', 1, 2);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (9, 1, 'Salon', 0, 3);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (10, 2, 'Salon', 1, 3);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (11, 3, 'Terrace', 1, 3);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (12, 4, 'Terrace', 0, 3);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (13, 5, 'Inside', 1, 3);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (14, 6, 'Inside', 1, 3);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (15, 7, 'Smoke Area', 0, 3);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (16, 8, 'Smoke Area', 1, 3);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (17, 1, 'Inside', 1, 4);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (18, 2, 'Inside', 1, 4);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (19, 3, 'Bar', 1, 4);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (20, 4, 'Inside', 0, 4);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (21, 5, 'Terrace', 1, 4);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (22, 6, 'Terrace', 1, 4);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (23, 7, 'Salon', 0, 4);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (24, 8, 'Bar', 1, 4);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (25, 1, 'Salon', 1, 5);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (26, 2, 'Inside', 1, 5);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (27, 3, 'Inside', 1, 5);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (28, 4, 'Inside', 0, 5);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (29, 5, 'Bar', 1, 5);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (30, 6, 'Terrace', 1, 5);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (31, 7, 'Terrace', 0, 5);
INSERT INTO `group4`.`tabels` (`table_ID`, `number_of_diners`, `type`, `status`, `restaurants_ID`) VALUES (32, 8, 'Salon', 1, 5);

# to add the extra restaurant tables