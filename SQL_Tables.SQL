#
create table USERS
(
    user_ID   int auto_increment
        primary key,
    user_email         varchar(255) not null,
    user_phone_number  varchar(255) not null,
    user_name varchar(255) not null,
    user_password      varchar(255) not null
);


create table LOCATIONS
(
    location_ID   int auto_increment
        primary key,
    country         varchar(255) not null,
    city  varchar(255) not null,
    street varchar(255) not null,
    house_number  int not null
);


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


create table CREDIT_CARDS
(
    payment_ID   int auto_increment
        primary key,
    card_number         integer not null,
    exp_date  date not null,
    ccv integer(255) not null
);


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


create table BOOKINGS
(
   booking_ID	int auto_increment
        primary key,
   user_ID	int not null,
   table_ID int not null,
   booking_DT datetime not null,
   number_of_diners int not null,
   constraint booking_user_ID_fk
        foreign key (user_ID) references USERS(user_ID),
   constraint booking_table_ID_fk
        foreign key (table_ID) references TABELS(table_ID)
);


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




