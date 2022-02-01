drop table LOCATIONS;
create table LOCATIONS
(
    location_ID   int auto_increment
        primary key,
    country         varchar(255) not null,
    city  varchar(255) not null,
    street varchar(255) not null,
    house_number  int not null
);


INSERT INTO `group4`.`locations` (`location_ID`, `country`, `city`, `street`, `house_number`) VALUES (1, 'Israel', 'Tel Aviv', 'King George', 12);
