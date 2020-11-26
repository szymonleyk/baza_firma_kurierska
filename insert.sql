-- adresy

INSERT INTO address (ulica, nr_domu, nr_mieszkania, kod_pocztowy, miejscowosc)
VALUE ('Zielona', '12', 2, '23-344', 'Kraków');

INSERT INTO address (ulica, nr_domu, kod_pocztowy, miejscowosc)
VALUE ('Kościuszki', '1', '43-314', 'Zamość');

INSERT INTO address (ulica, nr_domu, nr_mieszkania, kod_pocztowy, miejscowosc)
VALUE ('Podgórna', '1235', 62, '63-341', 'Warszawa');

INSERT INTO address (ulica, nr_domu, nr_mieszkania, kod_pocztowy, miejscowosc)
VALUE ('Zielona', '1', 73, '53-354', 'Gdańsk');
-- 
INSERT INTO address (ulica, nr_domu, nr_mieszkania, kod_pocztowy, miejscowosc)
VALUE ('Kwiatowa', '12', 53, '13-354', 'Gdańsk');

INSERT INTO address (ulica, nr_domu , kod_pocztowy, miejscowosc)
VALUE ('Poprzeczna', '12', '53-314', 'Toruń');

INSERT INTO address (ulica, nr_domu, nr_mieszkania, kod_pocztowy, miejscowosc)
VALUE ('Fiołkowa', '72', 53, '23-111', 'Toruń');

INSERT INTO address (ulica, nr_domu, nr_mieszkania, kod_pocztowy, miejscowosc)
VALUE ('Różana', '9', 53, '73-364', 'Tarnobrzeg');

INSERT INTO address (ulica, nr_domu, nr_mieszkania, kod_pocztowy, miejscowosc)
VALUE ('Bezowa', '12', 13, '23-954', 'Zielona Góra');


-- receiver
INSERT INTO receiver (name, surname, address_id)
VALUES ('Marek', 'Jankowski', 2);

INSERT INTO receiver (name, surname, address_id)
VALUES ('Karol', 'Nowak', 4);
--
INSERT INTO receiver (name, surname, address_id)
VALUES ('Anna', 'Nowak', 9);

INSERT INTO receiver (name, surname, address_id)
VALUES ('Anna', 'Felix', 9);

INSERT INTO receiver (name, surname, address_id)
VALUES ('Jurek', 'Anders', 7);

INSERT INTO receiver (name, surname, address_id)
VALUES ('Janek', 'Jaskulski', 6);

INSERT INTO receiver (name, surname, address_id)
VALUES ('Zenon', 'Niemen', 3);

-- couriers
INSERT INTO courier (name, surname)
VALUES ('Karol', 'Kotłowski');

INSERT INTO courier (name, surname)
VALUES ('Anna', 'Jaskulska');
--
INSERT INTO courier (name, surname)
VALUES ('Anna', 'Kowalska');

INSERT INTO courier (name, surname)
VALUES ('Andrzej', 'Nowak');


-- parcels
INSERT INTO parcel (code, receiver_id, courier_id)
VALUES (12351, 1, 1);

INSERT INTO parcel (code, receiver_id, courier_id)
VALUES (55522, 2, 1);
--
INSERT INTO parcel (code, receiver_id, courier_id)
VALUES (52453, 7, 4);

INSERT INTO parcel (code, receiver_id, courier_id)
VALUES (14734, 7, 3);

INSERT INTO parcel (code, receiver_id, courier_id)
VALUES (62835, 7, 4);

INSERT INTO parcel (code, receiver_id, courier_id)
VALUES (44266, 5, 2);

INSERT INTO parcel (code, receiver_id, courier_id)
VALUES (13462, 5, 4);

INSERT INTO parcel (code, receiver_id, courier_id)
VALUES (71453, 5, 4);

INSERT INTO parcel (code, receiver_id, courier_id)
VALUES (71345, 2, 1);

INSERT INTO parcel (code, receiver_id, courier_id)
VALUES (77733, 1, 1);

INSERT INTO parcel (code, receiver_id, courier_id)
VALUES (11135, 2, 2);

INSERT INTO parcel (code, receiver_id, courier_id)
VALUES (78144, 1, 2);

INSERT INTO parcel (code, receiver_id, courier_id)
VALUES (11116, 2, 1);


UPDATE parcel 
SET status = 'w drodze'
WHERE id = 2 OR id = 3 OR id = 4;

UPDATE parcel 
SET status = 'w drodze'
WHERE id IN(2, 5, 7);

UPDATE parcel 
SET status = 'odebrana'
WHERE id IN(4, 9);


UPDATE parcel
SET insurance = RAND() * (146-5) + 5 ;



-- DELETE FROM receiver;
TRUNCATE TABLE receiver;

SELECT * FROM address;