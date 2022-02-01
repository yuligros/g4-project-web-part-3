drop table BOOKINGS;
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

INSERT INTO `group4`.`bookings` (`booking_ID`, `user_ID`, `table_ID`, `booking_DT`, `number_of_diners`) VALUES (1, 1, 1, 31/12/2021, 1);
