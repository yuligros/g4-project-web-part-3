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
    constraint Resturant_fk_1
        foreign key (location_ID) references LOCATIONS (location_ID)
);

INSERT INTO `group4`.`restaurants` (`restaurants_ID`, `restaurants_name`, `location_ID`, `phone_number`, `website`) VALUES (1, 'Toto', 301, '03-693-5151', 'https://toto-rest.co.il/');
