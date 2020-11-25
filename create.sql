-- SQL - (CREATE, DROP, ALTER)

--CREATE DATABASE courier-db;

CREATE TABLE address
(
    id int PRIMARY KEY AUTO_INCREMENT,
    ulica varchar(255) NOT NULL,
    nr_domu varchar(5) NOT NULL,
    nr_mieszkania int,
    kod_pocztowy varchar(6) NOT NULL,
    miejscowosc varchar(150) NOT NULL
);

CREATE TABLE courier
(
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    surname varchar(155) NOT NULL
);

CREATE TABLE receiver
(
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    surname varchar(155) NOT NULL,
    address_id int NOT NULL,
    CONSTRAINT FK_receiver_address FOREIGN KEY (address_id) REFERENCES address(id)
);

CREATE TABLE parcel
(
    id int PRIMARY KEY AUTO_INCREMENT,
    code int(5) NOT NULL UNIQUE,
    status ENUM('nadana', 'w drodze', 'do obioru', 'odebrana'),
    receiver_id int NOT NULL,
    courier_id int,
    CONSTRAINT FK_parcel_receiver FOREIGN KEY (receiver_id) REFERENCES receiver(id),
    CONSTRAINT FK_parcel_courier FOREIGN KEY (courier_id) REFERENCES courier(id)
);



-- DROP TABLE receiver;

ALTER TABLE parcel ALTER COLUMN status SET DEFAULT 'nadana';

