-- wyświetl kurierów
SELECT *
FROM courier;


-- wyswietl imie, nazwisko kurierów
SELECT name, surname
FROM courier;

-- wyświetl nazwę kolumny w j.pol (nazwisko)
SELECT surname as 'Nazwisko'
FROM courier;

-- paczki które są w drodze i kod kończy się na 2
SELECT *
FROM parcel
WHERE status = 'w drodze' AND code LIKE '%2';


-- paczki które są w drodze i których kod rozpoczyna się na 5 i kończy na 2
SELECT *
FROM parcel
WHERE status = 'w drodze' AND code LIKE '5%2';


-- paczki których 3 liczbą w kodzie jest 1
SELECT *
FROM parcel
WHERE code LIKE '__1%';


-- adresy, które nie mają nr mieszkania
SELECT * 
FROM address
WHERE nr_mieszkania IS NULL;

-- ile jest adresów bez nr_mieszkania
SELECT COUNT(*) as 'liczba adresów bez mieszkań'
FROM address
WHERE nr_mieszkania IS NULL;

-- osatnia alfabetycznie nazwa ulicy
SELECT MAX(ulica)
FROM address;

-- łączna wartość paczek
SELECT SUM(insurance)
FROM parcel;


-- wartość paczek kuriera o id = 4
SELECT SUM(insurance)
FROM parcel
WHERE courier_id = 4;

-- średnia wartość paczek kuriera o id = 4
SELECT AVG(insurance)
FROM parcel
WHERE courier_id = 4;

-- unikalne nazwy ulic
SELECT DISTINCT ulica
FROM address;

-- unikalne imiona recieviers
SELECT DISTINCT name
FROM receiver;

-- policz liczbę paczek w każdym ze statusów
SELECT status, COUNT(*) as 'liczba paczek'
FROM parcel
GROUP BY status;

-- policz liczbę paczek w każdym ze statusów dla kuriere o id = 4
SELECT status, COUNT(*) as 'liczba paczek'
FROM parcel
WHERE courier_id = 4
GROUP BY status;

-- policz liczbę paczek w każdym ze statusów dla kuriere o id = 4, wyświetl tylko te których jest przynajmnie 2
SELECT status, COUNT(*) as 'liczba paczek'
FROM parcel
WHERE courier_id = 1
GROUP BY status
HAVING COUNT(*) >=2;

-- policz liczbę paczek w każdym ze statusów dla kuriere o id = 4, wyświetl rosnąco
SELECT status, COUNT(*) as 'liczba paczek'
FROM parcel
WHERE courier_id = 1
GROUP BY status
ORDER BY COUNT(*);

-- policz liczbę paczek w każdym ze statusów dla kuriere o id = 4, wyświetl malejąco
SELECT status, COUNT(*) as 'liczba paczek'
FROM parcel
WHERE courier_id = 1
GROUP BY status
ORDER BY COUNT(*) DESC;

-- wyświetl paczki posortowane względem insurance malejąco
SELECT *
FROM parcel
ORDER BY insurance DESC;

-- wyświetl 3 paczki o najwyżej wartości
SELECT *
FROM parcel
ORDER BY insurance DESC
LIMIT 3;


-- wyświetl 3 paczki o najniższej wartości
SELECT *
FROM parcel
ORDER BY insurance
LIMIT 3;


-- zad6 - wyświetl te paczki których wartość jest większa niż średnia wartość
SELECT *
FROM parcel
WHERE insurance > (SELECT AVG(insurance) FROM parcel);

-- wyświetl wszystkie dane o tych adresach które są z miast, w których jest więcej niż 1 adres
-- 1 - znajdź miasta które się powtarzają
SELECT miejscowosc
FROM address
GROUP BY miejscowosc
HAVING COUNT(*) > 1;


-- 2 - wyświet wszystkie dane z miast, które się powtarzają
SELECT *
FROM address
WHERE miejscowosc IN (SELECT miejscowosc
FROM address
GROUP BY miejscowosc
HAVING COUNT(*) > 1)




------------------------------------ ZADANIA
-- zad1 - wyświetl adresy których ulica rozpoczyna się na literę 'z' i nr domu jest mniejszy niż 100
-- zad2 - wyświetl nazwisko kuriera któreg imię jest na kończy się na 'a'
-- zad3 - policz ile jest adresów z każdej miejscowośc (jedno zapytanie)
-- zad4 - oblicz średnią wartość ID w adresie
-- zad5 - wyświetl paczki posortowane rosnąco po statusie