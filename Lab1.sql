CREATE DATABASE Restaurant;
GO
USE Restaurant;
GO

CREATE TABLE Mese(
	id_masa INT PRIMARY KEY IDENTITY,
	nr_locuri INT,
	nr_scaune_copii INT,
);

CREATE TABLE TipuriMese(
	tip_masa VARCHAR(100) PRIMARY KEY,
	pret_aditional FLOAT,
	tid_masa INT FOREIGN KEY REFERENCES Mese(id_masa),
);

CREATE TABLE Clienti(
	id_client INT PRIMARY KEY IDENTITY,
	nume VARCHAR(100),
	prenume VARCHAR(100),
	data_nastere DATE
);

CREATE TABLE Rezervari(
	rid_client INT FOREIGN KEY REFERENCES Clienti(id_client),
	rid_masa INT FOREIGN KEY REFERENCES Mese(id_masa),
	data_rez DATETIME,
	durata INT,
	CONSTRAINT PK_Rezervari PRIMARY KEY (rid_client,rid_masa,data_rez) 
);

CREATE TABLE Mancaruri(
	id_mancare INT PRIMARY KEY IDENTITY,
	nume VARCHAR(100),
	pret FLOAT,
	gramaj FLOAT,
	valoare_energetica FLOAT,
);

CREATE TABLE TipuriMancaruri(
	tid_mancare INT FOREIGN KEY REFERENCES Mancaruri(id_mancare),
	tip VARCHAR(100),
	fel VARCHAR(100),
	regiune VARCHAR(100),
	vegan INT,
);

CREATE TABLE Ingrediente(
	id_ingredient INT PRIMARY KEY IDENTITY,
	nume VARCHAR(100),
	tara_origine VARCHAR(100),
);

CREATE TABLE Alergeni(
	id_alergen INT PRIMARY KEY IDENTITY,
	aid_ingredient INT FOREIGN KEY REFERENCES Ingrediente(id_ingredient),
	nume_alergen VARCHAR(100),
);

CREATE TABLE Retete(
	rid_mancare INT FOREIGN KEY REFERENCES Mancaruri(id_mancare),
	rid_ingredient INT FOREIGN KEY REFERENCES Ingrediente(id_ingredient),
	gramaj FLOAT,
	CONSTRAINT PK_Retete PRIMARY KEY (rid_mancare,rid_ingredient)
);

CREATE TABLE Comenzi(
	id_comanda INT PRIMARY KEY IDENTITY,
	cid_mancare INT FOREIGN KEY REFERENCES Mancaruri(id_mancare),
	cid_masa INT FOREIGN KEY REFERENCES Mese(id_masa),
	cantitate int NOT NULL,
	data_comenzii DATETIME NOT NULL,
	observatii VARCHAR(255)
);
