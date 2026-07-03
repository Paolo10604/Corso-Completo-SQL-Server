USE ScuolaDb;


select * from Studenti;

-- Restituisce uno studente con l'id passata nel parametro
SELECT 
	*
FROM Studenti
WHERE StudenteId = 3;

/*
	Gli operatori di confronto in SQL
	Servono per confrontare valori:
	| Operatore		| Significato   |
	|---------------|---------------|
	|		=		| Uguale	    |
	|		!=		| Diverso       |
	|		<>		| Diverso       |
	|		<		| Minore	    |
	|		>		| Maggiore	    |
	|		<=		| Minore uguale |
	|		>=		|Maggiore uguale|
*/


---------------------------------------------------------------------

/*	Operatori logici (booleano)
	| Operatore     | Significato   		|
	|---------------|-----------------------|
	|		AND		| tutte vere    		|
	|		OR		| almeno un vera        |
	|		NOT		| nega la condizione    |
	|   IS NULL		| Valore nullo  		|



-- L'istruzione Where Filtra i date basati sulle condizione 

Es:
	SELECT 
		colonne
	FROM tabella
	WHERE condizione 
*/

SELECT 
	Nome,
	Cognome,
	Telefono
FROM Studenti
WHERE StudenteId = 2;


-- La concatenazione(+) 
SELECT 
	Nome + ' ' + Cognome,
	Telefono
FROM Studenti
WHERE StudenteId = 2;

-- Aliass con la concatenazione 

SELECT 
	Nome + ' ' + Cognome AS Nome_Completo_dello_studente,
	Telefono
FROM Studenti;

SELECT 
	Nome + ' ' + Cognome AS 'Nome Completo dello studente',
	Telefono
FROM Studenti;

SELECT 
	Nome + ' ' + Cognome AS [Nome Completo dello studente],
	Telefono
FROM Studenti
Where DataNascita is not null; --imporre una condizione

SELECT 
	Top 10 -- comando per selezionare i primi 10 studenti
	Nome + ' ' + Cognome AS [Nome Completo dello studente],
	CodiceFiscale,
	DataNascita 
FROM Studenti
Where DataNascita is not null and DataNascita >= '2000';

-- ORDER BY (Per ordinare colonne) (ASC/DESC)
SELECT
	TOP 10
	Nome + ' ' + Cognome AS [Nome Completo dello studente],
	CodiceFiscale,
	DataNascita as [Data Nascita]
FROM Studenti
WHERE DataNascita IS NOT NULL AND DataNascita >= '2000-01-01'
ORDER BY Email ASC;