drop table BOOKINGS;
create table BOOKINGS
(
   booking_ID	int auto_increment
        primary key,
   user_ID	int not null,
   table_ID int not null,
   booking_Date date not null,
   booking_Time time not null,
   number_of_diners int not null,
   constraint booking_user_ID_fk
        foreign key (user_ID) references USERS(user_ID),
   constraint booking_table_ID_fk
        foreign key (table_ID) references TABELS(table_ID)
);

INSERT INTO `group4`.`BOOKINGS` (booking_ID,user_ID,table_ID,booking_Date,booking_Time,number_of_diners)
VALUES
    ('1', '1', '1', '2021-12-31', '9:00', '1'),
    ('2', '2', '3', '2021-12-29', '9:30', '2'),
    ('3', '3', '5', '2021-12-31', '10:00', '3'),
    ('4', '4', '7', '2021-12-30', '10:30', '4'),
    ('5', '5', '9', '2021-12-31', '11:00', '5'),
    ('6', '6', '11', '2021-12-28', '11:30', '6'),
    ('7', '7', '13', '2021-12-26', '12:00', '7'),
    ('8', '8', '15', '2021-12-31', '12:30', '8'),
    ('9', '9', '17', '2021-12-31', '13:00', '1'),
    ('10', '10', '19', '2021-12-29', '13:30', '2'),
    ('11', '11', '21', '2021-12-27', '14:00', '3'),
    ('12', '12', '23', '2021-12-29', '14:30', '4'),
    ('13', '13', '25', '2021-12-27', '15:00', '5'),
    ('14', '14', '27', '2021-12-31', '15:30', '6'),
    ('15', '15', '29', '2021-12-30', '16:00', '7'),
    ('16', '16', '31', '2021-12-31', '16:30', '8'),
    ('17', '17', '33', '2021-12-29', '17:00', '1'),
    ('18', '18', '35', '2021-12-24', '17:30', '2'),
    ('19', '19', '37', '2021-12-31', '18:00', '3'),
    ('20', '20', '39', '2021-12-24', '18:30', '4'),
    ('21', '21', '41', '2021-12-25', '19:00', '5'),
    ('22', '22', '43', '2021-12-30', '19:30', '6'),
    ('23', '23', '45', '2021-12-31', '20:00', '7'),
    ('24', '24', '47', '2021-12-24', '20:30', '8'),
    ('25', '25', '49', '2021-12-28', '21:00', '1'),
    ('26', '26', '51', '2021-12-28', '21:30', '2'),
    ('27', '27', '53', '2021-12-24', '22:00', '3'),
    ('28', '28', '55', '2021-12-29', '9:00', '4'),
    ('29', '29', '57', '2021-12-25', '9:30', '5'),
    ('30', '30', '59', '2021-12-31', '10:00', '6'),
    ('31', '31', '61', '2021-12-29', '10:30', '7'),
    ('32', '32', '63', '2021-12-31', '11:00', '8'),
    ('33', '33', '65', '2021-12-25', '11:30', '1'),
    ('34', '34', '67', '2021-12-24', '12:00', '2'),
    ('35', '35', '69', '2021-12-28', '12:30', '3'),
    ('36', '36', '71', '2021-12-25', '13:00', '4'),
    ('37', '37', '73', '2021-12-28', '13:30', '5'),
    ('38', '38', '75', '2021-12-28', '14:00', '6'),
    ('39', '39', '77', '2021-12-24', '14:30', '7'),
    ('40', '40', '79', '2021-12-30', '15:00', '8'),
    ('41', '41', '81', '2021-12-30', '15:30', '1'),
    ('42', '42', '83', '2021-12-28', '16:00', '2'),
    ('43', '43', '85', '2021-12-29', '16:30', '3'),
    ('44', '44', '87', '2021-12-27', '17:00', '4'),
    ('45', '45', '89', '2021-12-29', '17:30', '5'),
    ('46', '46', '91', '2021-12-31', '18:00', '6'),
    ('47', '47', '93', '2021-12-29', '18:30', '7'),
    ('48', '48', '95', '2021-12-24', '19:00', '8'),
    ('49', '49', '97', '2021-12-27', '19:30', '1'),
    ('50', '50', '99', '2021-12-30', '20:00', '2'),
    ('51', '1', '101', '2021-12-30', '20:30', '3'),
    ('52', '2', '103', '2021-12-26', '21:00', '4'),
    ('53', '3', '105', '2021-12-31', '21:30', '5'),
    ('54', '4', '107', '2021-12-25', '22:00', '6'),
    ('55', '5', '109', '2021-12-30', '9:00', '7'),
    ('56', '6', '111', '2021-12-25', '9:30', '8'),
    ('57', '7', '113', '2021-12-31', '10:00', '1'),
    ('58', '8', '115', '2021-12-29', '10:30', '2'),
    ('59', '9', '117', '2021-12-31', '11:00', '3'),
    ('60', '10', '119', '2021-12-28', '11:30', '4'),
    ('61', '11', '121', '2021-12-31', '12:00', '5'),
    ('62', '12', '123', '2021-12-29', '12:30', '6'),
    ('63', '1', '125', '2021-12-31', '13:00', '7'),
    ('64', '2', '127', '2021-12-30', '13:30', '8'),
    ('65', '3', '129', '2021-12-31', '14:00', '1'),
    ('66', '4', '131', '2021-12-28', '14:30', '2'),
    ('67', '5', '133', '2021-12-26', '15:00', '3'),
    ('68', '6', '135', '2021-12-31', '15:30', '4'),
    ('69', '7', '137', '2021-12-31', '16:00', '5'),
    ('70', '8', '139', '2021-12-29', '16:30', '6'),
    ('71', '9', '141', '2021-12-27', '17:00', '7'),
    ('72', '10', '143', '2021-12-29', '17:30', '8'),
    ('73', '11', '145', '2021-12-27', '18:00', '1'),
    ('74', '12', '147', '2021-12-31', '18:30', '2'),
    ('75', '39', '149', '2021-12-30', '19:00', '3'),
    ('76', '40', '151', '2021-12-31', '19:30', '4'),
    ('77', '41', '153', '2021-12-29', '20:00', '5'),
    ('78', '42', '155', '2021-12-24', '20:30', '6'),
    ('79', '43', '157', '2021-12-31', '21:00', '7'),
    ('80', '44', '159', '2021-12-24', '21:30', '8');


SELECT count(*) as num FROM bookings;