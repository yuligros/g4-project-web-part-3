drop table RESTAURANTS;
create table RESTAURANTS
(
    restaurants_ID   int auto_increment
        primary key,
    restaurants_name         varchar(255) not null,
    location_ID  int not null,
    phone_number varchar(255),
    website      varchar(255),
    cuisine      varchar(255),
    rating       decimal,
    img varchar(255),
    constraint Resturant_fk_1
        foreign key (location_ID) references LOCATIONS (location_ID)
);

INSERT INTO `group4`.`RESTAURANTS` (`restaurants_ID`, `restaurants_name`, `location_ID`, `phone_number`, `website`, `cuisine`, `rating`, `img`) VALUES (1, 'Toto', 301, '03-693-5151', 'https://toto-rest.co.il/', 'Italian', 4.3,'toto.jpg');
INSERT INTO `group4`.`RESTAURANTS` (`restaurants_ID`, `restaurants_name`, `location_ID`, `phone_number`, `website`, `cuisine`, `rating`) VALUES (2, 'Thai House', 206, '03-517-8568', 'https://www.thai-house.co.il/', 'Thai', 4.4);
INSERT INTO `group4`.`RESTAURANTS` (`restaurants_ID`, `restaurants_name`, `location_ID`, `phone_number`, `website`, `cuisine`, `rating`) VALUES (3, 'Bar 51', 208, '03-540-6680', 'https://www.bar51tlv.com/', 'Israeli', 4.2);
INSERT INTO `group4`.`RESTAURANTS` (`restaurants_ID`, `restaurants_name`, `location_ID`, `phone_number`, `website`, `cuisine`, `rating`) VALUES (4, 'Cramim', 215, '08-996-6444', 'https://www.cramimrest.co.il/', 'European', 4);
INSERT INTO `group4`.`RESTAURANTS` (`restaurants_ID`, `restaurants_name`, `location_ID`, `phone_number`, `website`, `cuisine`, `rating`) VALUES (5, 'Machneyuda', 225, '02-533-3442', 'https://www.machneyuda.co.il/', 'Israeli', 4.2);
INSERT INTO `group4`.`RESTAURANTS` (`restaurants_ID`, `restaurants_name`, `location_ID`, `phone_number`, `website`, `cuisine`, `rating`) VALUES (6, 'Maayan Habira', 220, '04-862-3193', 'https://www.facebook.com/MaayaNHabira/', 'European', 4.5);
INSERT INTO `group4`.`RESTAURANTS` (`restaurants_ID`, `restaurants_name`, `location_ID`, `phone_number`, `website`, `cuisine`, `rating`) VALUES (7, 'Haachim', 249, '03-691-7171', 'https://www.haachim.co.il/', 'Mediterranean', 4);
INSERT INTO `group4`.`RESTAURANTS` (`restaurants_ID`, `restaurants_name`, `location_ID`, `phone_number`, `website`, `cuisine`, `rating`) VALUES (8, 'Taizu', 271, '03-522-5005', 'https://www.taizu.co.il/', 'Asian', 4.5);
INSERT INTO `group4`.`RESTAURANTS` (`restaurants_ID`, `restaurants_name`, `location_ID`, `phone_number`, `website`, `cuisine`, `rating`) VALUES (9, 'Talbiye', 272, '02-581-1927', 'https://www.talbiye.com/', 'Fusion', 3.9);
INSERT INTO `group4`.`RESTAURANTS` (`restaurants_ID`, `restaurants_name`, `location_ID`, `phone_number`, `website`, `cuisine`, `rating`) VALUES (10, 'Mashya', 223, '03-750-0999', 'https://www.mashya.co.il/he/our-menu/', 'Middle Eastern', 4.1);

