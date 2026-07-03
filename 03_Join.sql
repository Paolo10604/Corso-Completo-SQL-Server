-- JOIN / INNER JOIN
/*
SELECT
	colonne
FROM tabella1
JOIN tabella2
	ON tablella1.colonna_tablella1_Id  = tablella2.colonna_tablella2_Id


	Studenti
		studenteId = 1;

	Iscrizioni
		studenteId = 1;
*/

-- Esempio1:
SELECT 
	*
FROM Studenti AS s
JOIN Iscrizioni AS i
	ON s.StudenteId = i.StudenteId;

	-- Restituire la lista degli studenti scritti senza data di nascita
SELECT 
	*
FROM Studenti AS s
JOIN Iscrizioni AS i
	ON s.StudenteId = i.StudenteId
WHERE s.DataNascita is  NULL	 ;

--Restituire la lista degli studenti scritti almeno ad un corso 
-- Campi da visualizzare: (Nome completo dello studente, Codice Fiscale, Data di Nascita, Nome del Corso e la descrizione del corso)

SELECT
    s.Nome + ' ' + s.Cognome AS [Nome completo dello studente],
    s.CodiceFiscale AS [Codice Fiscale], 
    s.DataNascita AS [Data di Nascita], 
    c.NomeCorso AS [Nome del Corso], 
    c.Descrizione AS [descrizione del corso]
FROM Studenti AS s
INNER JOIN Iscrizioni AS i
    ON s.StudenteId = i.StudenteId
INNER JOIN Corsi AS c
    ON c.CorsoId = i.CorsoId;