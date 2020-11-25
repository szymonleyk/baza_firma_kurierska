-- adresy

INSERT INTO address (ulica, nr_domu, nr_mieszkania, kod_pocztowy, miejscowosc)
VALUE ('Zielona', '12', 2, '23-344', 'Kraków');

INSERT INTO address (ulica, nr_domu, kod_pocztowy, miejscowosc)
VALUE ('Kościuszki', '1', '43-314', 'Zamość');

INSERT INTO address (ulica, nr_domu, nr_mieszkania, kod_pocztowy, miejscowosc)
VALUE ('Podgórna', '1235', 62, '63-341', 'Warszawa');

INSERT INTO address (ulica, nr_domu, nr_mieszkania, kod_pocztowy, miejscowosc)
VALUE ('Zielona', '1', 73, '53-354', 'Gdańsk');

-- receiver
INSERT INTO receiver (name, surname, address_id)
VALUES ('Marek', 'Jankowski', 2);

INSERT INTO receiver (name, surname, address_id)
VALUES ('Karol', 'Nowak', 4);

-- couriers
INSERT INTO courier (name, surname)
VALUES ('Karol', 'Kotłowski');

INSERT INTO courier (name, surname)
VALUES ('Anna', 'Jaskulska');

-- parcels
INSERT INTO parcel (code, receiver_id, courier_id)
VALUES (12351, 1, 1);

INSERT INTO parcel (code, receiver_id, courier_id)
VALUES (55522, 2, 1);


-- DELETE FROM receiver;
TRUNCATE TABLE receiver;

SELECT * FROM address;