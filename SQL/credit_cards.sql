drop table CREDIT_CARDS;
create table CREDIT_CARDS
(
    payment_ID   int auto_increment
        primary key,
    user_ID int not null,
    card_number  integer not null,
    exp_date  date not null,
    ccv integer(255) not null,
    constraint CREDIT_CARDS_fk_1
    foreign key (user_ID) references USERS (user_ID)
);


INSERT INTO `group4`.`credit_cards` (`payment_ID`, `user_ID`, `card_number`, `exp_date`, `ccv`) VALUES (1, 1, 34762738, 09/12/2021, 123);
