USE Restaurant;
GO

-- Inserts for Mese Table
INSERT INTO Mese (nr_locuri, nr_scaune_copii) VALUES (4, 2);
INSERT INTO Mese (nr_locuri, nr_scaune_copii) VALUES (6, 1);
INSERT INTO Mese (nr_locuri, nr_scaune_copii) VALUES (2, 0);
INSERT INTO Mese (nr_locuri, nr_scaune_copii) VALUES (8, 2);
INSERT INTO Mese (nr_locuri, nr_scaune_copii) VALUES (4, 1);

-- Inserts for TipuriMese Table
INSERT INTO TipuriMese (tip_masa, pret_aditional, tid_masa) VALUES ('VIP', 50.0, 1);
INSERT INTO TipuriMese (tip_masa, pret_aditional, tid_masa) VALUES ('Standard', 0.0, 2);
INSERT INTO TipuriMese (tip_masa, pret_aditional, tid_masa) VALUES ('Family', 20.0, 3);
INSERT INTO TipuriMese (tip_masa, pret_aditional, tid_masa) VALUES ('Romantic', 30.0, 4);
INSERT INTO TipuriMese (tip_masa, pret_aditional, tid_masa) VALUES ('Terrace', 15.0, 5);

-- Inserts for Clienti Table
INSERT INTO Clienti (nume, prenume, data_nastere) VALUES ('Popescu', 'Ion', '1985-06-15');
INSERT INTO Clienti (nume, prenume, data_nastere) VALUES ('Ionescu', 'Maria', '1990-09-20');
INSERT INTO Clienti (nume, prenume, data_nastere) VALUES ('Dumitrescu', 'George', '1975-12-05');
INSERT INTO Clienti (nume, prenume, data_nastere) VALUES ('Marin', 'Elena', '2000-02-14');
INSERT INTO Clienti (nume, prenume, data_nastere) VALUES ('Vasilescu', 'Alexandru', '1992-08-10');

-- Inserts for Rezervari Table
INSERT INTO Rezervari (rid_client, rid_masa, data_rez, durata) VALUES (1, 1, '2024-10-28 18:30:00', 2);
INSERT INTO Rezervari (rid_client, rid_masa, data_rez, durata) VALUES (2, 2, '2024-10-29 19:00:00', 3);
INSERT INTO Rezervari (rid_client, rid_masa, data_rez, durata) VALUES (3, 3, '2024-10-30 17:00:00', 1);
INSERT INTO Rezervari (rid_client, rid_masa, data_rez, durata) VALUES (4, 4, '2024-10-31 20:00:00', 2);
INSERT INTO Rezervari (rid_client, rid_masa, data_rez, durata) VALUES (5, 5, '2024-11-01 18:00:00', 3);
INSERT INTO Rezervari (rid_client, rid_masa, data_rez, durata) VALUES (1, 1, '2024-11-28 18:30:00', 2);
INSERT INTO Rezervari (rid_client, rid_masa, data_rez, durata) VALUES (2, 2, '2024-11-29 19:00:00', 3);
INSERT INTO Rezervari (rid_client, rid_masa, data_rez, durata) VALUES (3, 3, '2024-11-30 17:00:00', 1);
INSERT INTO Rezervari (rid_client, rid_masa, data_rez, durata) VALUES (4, 4, '2024-11-31 20:00:00', 2);
INSERT INTO Rezervari (rid_client, rid_masa, data_rez, durata) VALUES (5, 5, '2024-12-01 18:00:00', 3);

-- Inserts for Mancaruri Table
INSERT INTO Mancaruri (nume, pret, gramaj, valoare_energetica) VALUES ('Pasta Carbonara', 35.0, 300, 600);
INSERT INTO Mancaruri (nume, pret, gramaj, valoare_energetica) VALUES ('Salata Caesar', 25.0, 200, 400);
INSERT INTO Mancaruri (nume, pret, gramaj, valoare_energetica) VALUES ('Burger Special', 45.0, 400, 800);
INSERT INTO Mancaruri (nume, pret, gramaj, valoare_energetica) VALUES ('Pizza Margherita', 30.0, 350, 500);
INSERT INTO Mancaruri (nume, pret, gramaj, valoare_energetica) VALUES ('Supa de Legume', 20.0, 250, 150);

-- Inserts for TipuriMancaruri Table
INSERT INTO TipuriMancaruri (tid_mancare, tip, fel, regiune, vegan) VALUES (1, 'Main Course', 'Pasta', 'Italian', 0);
INSERT INTO TipuriMancaruri (tid_mancare, tip, fel, regiune, vegan) VALUES (2, 'Salad', 'Appetizer', 'American', 0);
INSERT INTO TipuriMancaruri (tid_mancare, tip, fel, regiune, vegan) VALUES (3, 'Main Course', 'Burger', 'American', 0);
INSERT INTO TipuriMancaruri (tid_mancare, tip, fel, regiune, vegan) VALUES (4, 'Main Course', 'Pizza', 'Italian', 0);
INSERT INTO TipuriMancaruri (tid_mancare, tip, fel, regiune, vegan) VALUES (5, 'Soup', 'Appetizer', 'Romanian', 1);

-- Inserts for Ingrediente Table
INSERT INTO Ingrediente (nume, tara_origine) VALUES ('Parmesan', 'Italy');
INSERT INTO Ingrediente (nume, tara_origine) VALUES ('Chicken', 'Romania');
INSERT INTO Ingrediente (nume, tara_origine) VALUES ('Beef', 'Argentina');
INSERT INTO Ingrediente (nume, tara_origine) VALUES ('Tomato', 'Spain');
INSERT INTO Ingrediente (nume, tara_origine) VALUES ('Basil', 'Italy');
INSERT INTO Ingrediente (nume, tara_origine) VALUES ('Mozzarella', 'Italy');
INSERT INTO Ingrediente (nume, tara_origine) VALUES ('Olive Oil', 'Greece');
INSERT INTO Ingrediente (nume, tara_origine) VALUES ('Garlic', 'China');
INSERT INTO Ingrediente (nume, tara_origine) VALUES ('Salt', 'Worldwide');
INSERT INTO Ingrediente (nume, tara_origine) VALUES ('Pepper', 'India');
INSERT INTO Ingrediente (nume, tara_origine) VALUES ('Lettuce', 'France');
INSERT INTO Ingrediente (nume, tara_origine) VALUES ('Croutons', 'USA');
INSERT INTO Ingrediente (nume, tara_origine) VALUES ('Egg', 'Romania');
INSERT INTO Ingrediente (nume, tara_origine) VALUES ('Pasta', 'Italy');
INSERT INTO Ingrediente (nume, tara_origine) VALUES ('Bacon', 'USA');

-- Inserts for Alergeni Table
INSERT INTO Alergeni (aid_ingredient, nume_alergen) VALUES (1, 'Lactose');
INSERT INTO Alergeni (aid_ingredient, nume_alergen) VALUES (6, 'Lactose');
INSERT INTO Alergeni (aid_ingredient, nume_alergen) VALUES (13, 'Egg');
INSERT INTO Alergeni (aid_ingredient, nume_alergen) VALUES (15, 'Sulfites');
INSERT INTO Alergeni (aid_ingredient, nume_alergen) VALUES (12, 'Gluten');
INSERT INTO Alergeni (aid_ingredient, nume_alergen) VALUES (14, 'Gluten');

-- Inserts for Retete Table
INSERT INTO Retete (rid_mancare, rid_ingredient, gramaj) VALUES (1, 1, 30);
INSERT INTO Retete (rid_mancare, rid_ingredient, gramaj) VALUES (1, 14, 100);
INSERT INTO Retete (rid_mancare, rid_ingredient, gramaj) VALUES (1, 15, 50);
INSERT INTO Retete (rid_mancare, rid_ingredient, gramaj) VALUES (1, 13, 20);
INSERT INTO Retete (rid_mancare, rid_ingredient, gramaj) VALUES (1, 10, 5);

INSERT INTO Retete (rid_mancare, rid_ingredient, gramaj) VALUES (2, 11, 50);
INSERT INTO Retete (rid_mancare, rid_ingredient, gramaj) VALUES (2, 12, 20);
INSERT INTO Retete (rid_mancare, rid_ingredient, gramaj) VALUES (2, 1, 15);
INSERT INTO Retete (rid_mancare, rid_ingredient, gramaj) VALUES (2, 8, 5);
INSERT INTO Retete (rid_mancare, rid_ingredient, gramaj) VALUES (2, 13, 10);

INSERT INTO Retete (rid_mancare, rid_ingredient, gramaj) VALUES (3, 3, 150);
INSERT INTO Retete (rid_mancare, rid_ingredient, gramaj) VALUES (3, 4, 30);
INSERT INTO Retete (rid_mancare, rid_ingredient, gramaj) VALUES (3, 10, 5);
INSERT INTO Retete (rid_mancare, rid_ingredient, gramaj) VALUES (3, 9, 3);
INSERT INTO Retete (rid_mancare, rid_ingredient, gramaj) VALUES (3, 8, 5);

INSERT INTO Retete (rid_mancare, rid_ingredient, gramaj) VALUES (4, 6, 100);
INSERT INTO Retete (rid_mancare, rid_ingredient, gramaj) VALUES (4, 4, 50);
INSERT INTO Retete (rid_mancare, rid_ingredient, gramaj) VALUES (4, 5, 10);
INSERT INTO Retete (rid_mancare, rid_ingredient, gramaj) VALUES (4, 7, 5);
INSERT INTO Retete (rid_mancare, rid_ingredient, gramaj) VALUES (4, 9, 3);

INSERT INTO Retete (rid_mancare, rid_ingredient, gramaj) VALUES (5, 4, 100);
INSERT INTO Retete (rid_mancare, rid_ingredient, gramaj) VALUES (5, 5, 10);
INSERT INTO Retete (rid_mancare, rid_ingredient, gramaj) VALUES (5, 9, 2);
INSERT INTO Retete (rid_mancare, rid_ingredient, gramaj) VALUES (5, 10, 1);
INSERT INTO Retete (rid_mancare, rid_ingredient, gramaj) VALUES (5, 8, 5);

-- Inserts for Comenzi Table
INSERT INTO Comenzi (cid_mancare, cid_masa, cantitate, data_comenzii, observatii) VALUES (1, 1, 2, '2024-10-28 18:45:00', 'Extra cheese');
INSERT INTO Comenzi (cid_mancare, cid_masa, cantitate, data_comenzii, observatii) VALUES (2, 2, 1, '2024-10-29 19:15:00', 'No croutons');
INSERT INTO Comenzi (cid_mancare, cid_masa, cantitate, data_comenzii, observatii) VALUES (3, 3, 3, '2024-10-30 17:05:00', 'Add bacon');
INSERT INTO Comenzi (cid_mancare, cid_masa, cantitate, data_comenzii, observatii) VALUES (4, 4, 2, '2024-10-31 20:10:00', 'Gluten-free crust');
INSERT INTO Comenzi (cid_mancare, cid_masa, cantitate, data_comenzii, observatii) VALUES (5, 5, 1, '2024-11-01 18:20:00', 'Extra garlic');
INSERT INTO Comenzi (cid_mancare, cid_masa, cantitate, data_comenzii, observatii) VALUES (1, 1, 2, '2024-11-28 18:45:00', 'Extra cheese');
INSERT INTO Comenzi (cid_mancare, cid_masa, cantitate, data_comenzii, observatii) VALUES (2, 2, 1, '2024-11-29 19:15:00', 'No croutons');
INSERT INTO Comenzi (cid_mancare, cid_masa, cantitate, data_comenzii, observatii) VALUES (3, 3, 3, '2024-11-30 17:05:00', 'Add bacon');
INSERT INTO Comenzi (cid_mancare, cid_masa, cantitate, data_comenzii, observatii) VALUES (4, 4, 2, '2024-11-31 20:10:00', 'Gluten-free crust');
INSERT INTO Comenzi (cid_mancare, cid_masa, cantitate, data_comenzii, observatii) VALUES (5, 5, 1, '2024-12-01 18:20:00', 'Extra garlic');

--rezervari intr-o anumita data
SELECT Clienti.nume, Clienti.prenume, Rezervari.data_rez, Mese.nr_locuri
FROM Rezervari
JOIN Clienti ON Rezervari.rid_client = Clienti.id_client
JOIN Mese ON Rezervari.rid_masa = Mese.id_masa
WHERE Rezervari.data_rez BETWEEN '2024-10-28' AND '2024-10-28 23:59:59';

--ingrediente din mancaruri vegane
SELECT DISTINCT Ingrediente.nume AS ingredient, Ingrediente.tara_origine
FROM Ingrediente
JOIN Retete ON Ingrediente.id_ingredient = Retete.rid_ingredient
JOIN Mancaruri ON Retete.rid_mancare = Mancaruri.id_mancare
JOIN TipuriMancaruri ON Mancaruri.id_mancare = TipuriMancaruri.tid_mancare
WHERE TipuriMancaruri.vegan = 1;

--clienti care au rezervat mese vip cu scaune de copii
SELECT Clienti.nume, Clienti.prenume, Mese.nr_scaune_copii, TipuriMese.tip_masa
FROM Rezervari
JOIN Clienti ON Rezervari.rid_client = Clienti.id_client
JOIN Mese ON Rezervari.rid_masa = Mese.id_masa
JOIN TipuriMese ON Mese.id_masa = TipuriMese.tid_masa
WHERE TipuriMese.tip_masa = 'VIP' AND Mese.nr_scaune_copii > 0;

--mancaruri care contin gluten
SELECT Mancaruri.nume AS mancare, Mancaruri.pret, Mancaruri.valoare_energetica
FROM Mancaruri
JOIN Retete ON Mancaruri.id_mancare = Retete.rid_mancare
JOIN Ingrediente ON Retete.rid_ingredient = Ingrediente.id_ingredient
JOIN Alergeni ON Ingrediente.id_ingredient = Alergeni.aid_ingredient
WHERE Alergeni.nume_alergen = 'Gluten';

--clienti care au rezervat mese cu mai mult de 4 locuri
SELECT distinct Clienti.nume, Clienti.prenume, Mese.nr_locuri
FROM Rezervari
JOIN Clienti ON Rezervari.rid_client = Clienti.id_client
JOIN Mese ON Rezervari.rid_masa = Mese.id_masa
WHERE Mese.nr_locuri > 4;

--total pe mese si nr de feluri consumate
SELECT Mese.id_masa, SUM(Mancaruri.pret * Comenzi.cantitate) AS total_comanda, COUNT(DISTINCT Comenzi.cid_mancare) AS numar_feluri
FROM Comenzi
JOIN Mancaruri ON Comenzi.cid_mancare = Mancaruri.id_mancare
JOIN Mese ON Comenzi.cid_masa = Mese.id_masa
GROUP BY Mese.id_masa;

--nr de feluri vegane si nevegane pentru fiecare client
SELECT Clienti.nume, Clienti.prenume, 
       SUM(CASE WHEN TipuriMancaruri.vegan = 1 THEN 1 ELSE 0 END) AS feluri_vegane,
       SUM(CASE WHEN TipuriMancaruri.vegan = 0 THEN 1 ELSE 0 END) AS feluri_nevegane
FROM Comenzi
JOIN Clienti ON Comenzi.cid_masa IN (
    SELECT rid_masa 
    FROM Rezervari 
    WHERE Rezervari.rid_client = Clienti.id_client
)
JOIN Mancaruri ON Comenzi.cid_mancare = Mancaruri.id_mancare
JOIN TipuriMancaruri ON Mancaruri.id_mancare = TipuriMancaruri.tid_mancare
GROUP BY Clienti.nume, Clienti.prenume;

--nr de ingrediente folosite pentru fiecare tip de mancare
SELECT TipuriMancaruri.vegan, COUNT(DISTINCT Retete.rid_ingredient) AS numar_ingrediente
FROM Mancaruri
JOIN Retete ON Mancaruri.id_mancare = Retete.rid_mancare
JOIN TipuriMancaruri ON Mancaruri.id_mancare = TipuriMancaruri.tid_mancare
GROUP BY TipuriMancaruri.vegan;

--lista de clienti care au comandat mancaruri cu alergeni
SELECT DISTINCT Clienti.nume, Clienti.prenume
FROM Comenzi
JOIN Mancaruri ON Comenzi.cid_mancare = Mancaruri.id_mancare
JOIN Retete ON Mancaruri.id_mancare = Retete.rid_mancare
JOIN Ingrediente ON Retete.rid_ingredient = Ingrediente.id_ingredient
JOIN Alergeni ON Ingrediente.id_ingredient = Alergeni.aid_ingredient
JOIN Clienti ON Comenzi.cid_masa IN (
    SELECT rid_masa 
    FROM Rezervari 
    WHERE Rezervari.rid_client = Clienti.id_client
);

--lista de tipuri de mancaruri comandate si regiune din care provin
SELECT DISTINCT TipuriMancaruri.tip, TipuriMancaruri.regiune
FROM Comenzi
JOIN Mancaruri ON Comenzi.cid_mancare = Mancaruri.id_mancare
JOIN TipuriMancaruri ON Mancaruri.id_mancare = TipuriMancaruri.tid_mancare;

--clienti care au rezervat mese vip mi mult de 1 data
SELECT Clienti.nume, Clienti.prenume, COUNT(*) AS numar_rezervari
FROM Rezervari
JOIN Clienti ON Rezervari.rid_client = Clienti.id_client
JOIN Mese ON Rezervari.rid_masa = Mese.id_masa
JOIN TipuriMese ON Mese.id_masa = TipuriMese.tid_masa
WHERE TipuriMese.tip_masa = 'VIP'
GROUP BY Clienti.nume, Clienti.prenume
HAVING COUNT(*) > 1;

--tipuri de mancare vegana comandata mai mult de 3 ori
SELECT TipuriMancaruri.tip, COUNT(Comenzi.id_comanda) AS numar_comenzi
FROM Comenzi
JOIN Mancaruri ON Comenzi.cid_mancare = Mancaruri.id_mancare
JOIN TipuriMancaruri ON Mancaruri.id_mancare = TipuriMancaruri.tid_mancare
WHERE TipuriMancaruri.vegan = 1
GROUP BY TipuriMancaruri.tip
HAVING COUNT(Comenzi.id_comanda) > 1;