   --Creazione del database
/*

        Creazione del database
        ______________________

        CREATE DATABASE nome_del_database

*/

--CREATE DATABASE ScuolaDB;
--Go 


-- chiamata(uso) del database ScuolaDB
use ScuolaDB;


/*
	Tipi di dati comuni SQL

	|tipo	  |	valore   |
	|---------|----------|
	| INT	  | INTERO   |
	|VARCHAR  | TESTO	 |
	|NVARCHAR | TESTO    |
	|DATE     | DATA     |
	|FLOAT    | DECIMALE |

	sono tipi di dati utilizzati frequentemente in SQL Server.
*/


--Per eliminare un database si usa DROP
--Drop database Studenti;

-- CREAZIONE DELLA TABELLA

CREATE TABLE Studenti
(
    StudenteId INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(50) NOT NULL,
    Cognome NVARCHAR(50) NOT NULL,
    Email NVARCHAR(150) UNIQUE NULL,
    CodiceFiscale CHAR(16) UNIQUE NOT NULL,
    DataNascita DATE NULL,
    Telefono NVARCHAR(20) UNIQUE NULL
);

--select per visualizzare il record della tabella


--selezionare tutte le colonne della tabella Studenti
select * From Studenti;



Create table Corsi
(
    Corsoid int not null primary key identity(1,1),
    NomeCorso nvarchar(100) not null,
    Descrizione nvarchar(250) null,
    Crediti int null,
    Durata int null,
);


select * From Corsi;



-- Creazione della tabella dei Docenti
 CREATE TABLE Docenti
 (
	DocentiId INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	Nome NVARCHAR(50) NOT NULL,
	Cognome NVARCHAR(50) NOT NULL,
	Email NVARCHAR(50) UNIQUE NULL,
	Specializzazione NVARCHAR(50) NOT NULL,
 );

 SELECT * FROM Docenti;


 --creazione della tabella Aule 

 create table Aule(
    Aulaid int not null primary key identity(1,1),
    NomeAula nvarchar(150)not null,
    Capacita INT not null,
 );

 Select * from Aule;


 --inserimento dei dati
 -- INSERISCO NELLA TABLE STUDENTI
 Select * from Studenti;
insert into Studenti(Nome,Cognome,Email,CodiceFiscale,DataNascita,Telefono)
 -- Rapresentano i valori da inserire
values 
       --('Paolo','Galeano','paologaleano10@gmail.com','GLNPLA012345678P','2001/11/10','+3933646195'),
       ('Marco','Castellano','castellano.marco@gmail.com','CPLMEP123456780M','1998/12/18','+3931234567');