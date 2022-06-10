DROP DATABASE IF EXISTS sharvani;

CREATE DATABASE sharvani;
SET default_storage_engine=InnoDB;
USE sharvani;

CREATE TABLE sharvani.user
(
    id_user int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username  varchar(255)     NOT NULL,
    pwd varchar(255)     NOT NULL,
    email      varchar(255)     NOT NULL UNIQUE,
    created_at datetime         NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

INSERT INTO sharvani.user (username, pwd, email, created_at)
VALUES ('admin', 'coucou','admin@admin.com', '2022-05-17 15:31:54'), 
       ('estelle', '123','estelle@test.com', '2022-05-18 15:38:54'), 
       ('anne', '456','anne@test.com', '2022-05-19 15:39:54'),
        ('cecilia', '789','cecilia@test.com', '2022-05-20 15:21:54'),
        ('ana', '0123','ana@test.com', '2022-05-21 15:11:54');


CREATE TABLE sharvani.class
(
    id_class int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    number_mats int NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
  
INSERT INTO sharvani.class (number_mats)
VALUES ('12'),('12'),('12'), ('12'),('12');


CREATE TABLE sharvani.calendar
(
    id_calendar int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    class_id int NOT NULL,
    date_class datetime NOT NULL DEFAULT(CURRENT_TIMESTAMP),
     CONSTRAINT fk_class_id FOREIGN KEY(class_id) REFERENCES class(id_class)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
  
INSERT INTO sharvani.calendar (class_id, date_class)
VALUES ('1','2022-06-17'),('2', '2022-06-18'),('3', '2022-06-19'), ('4', '2022-06-20'),('5', '2022-06-20');


CREATE TABLE sharvani.booking
(
    id_booking int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id int NOT NULL,
    calendar_id int NOT NULL,
    num_mat int NOT NULL,
    date_booking datetime NOT NULL DEFAULT NOW(),
    CONSTRAINT fk_user_id FOREIGN KEY(user_id) REFERENCES user(id_user),
    CONSTRAINT fk_calendar_id FOREIGN KEY(calendar_id) REFERENCES calendar(id_calendar),
    /*CONSTRAINT UQ_abc UNIQUE (calendar_id, user_id, num_mat)Facultatif*/
	CONSTRAINT UQ_NUM_mat UNIQUE (calendar_id,num_mat),
	CONSTRAINT UQ_NUm_user UNIQUE(user_id,calendar_id),
	CONSTRAINT CHK_NUMMAT CHECK(num_mat<=12 AND num_mat>0)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

INSERT INTO sharvani.booking (user_id, calendar_id, num_mat, date_booking)
VALUES ('1', '1', '1', '2022-06-17'), ('2','2','2','2022-06-18'), ('3', '3', '3', '2022-06-19'),('4', '4', '4', '2022-06-17'),
('5', '5','5', '2022-06-18');



