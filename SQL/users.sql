drop table USERS;
create table USERS
(
    user_ID   int auto_increment
        primary key,
    user_email         varchar(255) not null,
    user_phone_number  varchar(255) not null,
    user_name varchar(255) not null,
    user_password      varchar(255) not null
);

INSERT INTO `group4`.`users` (`user_ID`, `user_email`, `user_phone_number`, `user_name`, `user_password`) VALUES (1, 'alordon1d@vkontakte.ru', '346-945-4898', 'Aylmer', '54562');
