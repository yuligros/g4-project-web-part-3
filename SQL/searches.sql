drop table SEARCHES;
create table SEARCHES
(
search_ID	int auto_increment	PRIMARY KEY	 NOT NULL,
user_ID	int not null,
resturant_ID int not null,
search_DT datetime not null,
number_of_people int,
location_ID int not null,
constraint search_user_ID_fk
        foreign key (user_ID) references USERS (user_ID),
constraint search_resturant_ID_fk
        foreign key (resturant_ID) references RESTAURANTS(restaurants_ID),
constraint search_location_ID_fk
        foreign key (location_ID) references LOCATIONS (location_ID)
);

INSERT INTO `group4`.`searches` (`search_ID`, `user_ID`, `resturant_ID`, `search_DT`, `number_of_people`, `location_ID`) VALUES (1, 1, 2, 13/04/2021, 2, 203);