USE ScuolaDb;

-- Iscrizione di uno studente ad un corso
select * from corsi;
select * from Iscrizioni; --1,2
select * from Studenti where StudenteId = '42'; --52

insert into Studenti
	(Nome, Cognome, Email, CodiceFiscale, DataNascita, Telefono)
values
	('Nathaly', 'Ornella', 'n.ornella@gmail.com', 'NTOL136569OPE0P', '1988/05/05', '+39325698741')


--Iscrizione di uno studente al corso (1 SQL Base, 2 SQL Avanzato)
insert into Iscrizioni
	(StudenteId,CorsoId, DataIscrizione)
Values
	(42,1, GETDATE()), 
	(42,2, GETDATE());


SELECT 
	s.StudenteId,
	s.Nome,
	s.Cognome,
	s.CodiceFiscale,
	isnull (CONVERT(NVARCHAR, s.DataNascita, 103), 'N/D') AS DataNascita,--serve a sostituire un valore se il campo è nullo
	isnull (CONVERT(NVARCHAR, YEAR(s.DataNascita), 103), 'N/D') AS Anno, --restituisce solo l'anno della data, in una colonno assestante
	isnull (CONVERT(NVARCHAR, MONTH(s.DataNascita), 103), 'N/D') AS Mese,
	isnull (CONVERT(NVARCHAR, DAY(s.DataNascita), 103), 'N/D') AS Giorno,
	isnull (c.Nome_Corso,'N/S') as Nome_Corso,
	isnull (c.Descrizione,'N/S') AS Descrizione
FROM Studenti as s
INNER JOIN Iscrizioni as i
	ON s.StudenteId = i.StudenteId
INNER JOIN Corsi as c
	ON i.CorsoId = c.CorsoId
Order by s.Nome asc;


-- DISTINCT serve per rimuovere dupplicati

SELECT DISTINCT -- CorsoId, quando c'è l'id non funziona dato che è diverso per ogni corso
	NomeCorso,
	Descrizione,
	Crediti,
	Durata
FROM Corsi;

INSERT INTO Corsi
	(Nome_Corso, Descrizione, Crediti, Durata)
VALUES
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120);


--update per modificare

/*
	update tabella
	set colonna = nuovo valore
	where condizione = vecchio valore
*/
select * from Corsi
where Corsoid = 50;

update Corsi
set Nome_Corso = 'Corso Base R',
	Descrizione = 'Corso programmazione in ML'
where Corsoid IN(60, 61);

update Corsi
set Nome_Corso = 'Corso Base R',
	Descrizione = 'Corso programmazione in ML'
where Corsoid >= 32;

update Corsi
set Nome_Corso = 'Corso Base R',
	Descrizione = 'Corso programmazione in ML'
where Corsoid IN(60, 61); -- in si intende una lista


update Corsi
set Durata = '200'
where Corsoid = 47;

update Corsi
set Nome_Corso = 'Corso di excel'
where Corsoid = 50;

--Comando per eliminare una riga o una tabella
/*

 DELETE from tabella   non eseguire mai delete senza la condizione
 where condizione

*/