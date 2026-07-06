USE ScuolaDb;


/*
    =====================================================
        FUNZIONI DI AGGREGAZIONE
    =====================================================

    Le funzioni di aggreazione servono per:
        - contare i dati       (COUNT)
        - calcolare la media   (AVG)
        - sommare il numero    (SUM)
        - trovare il minimo    (MIN)
        - trovare il mazzimo   (MAX)
*/

-- Numero totale degli studenti 
SELECT
    COUNT(*) as [Totale Studenti]
FROM Studenti;


-- Media dei crediti
SELECT 
    AVG(Crediti) AS Media
FROM Corsi;


-- Somma totale dei crediti della tabella Corsi
SELECT
    -- COUNT(*) no
    SUM(Crediti) as [Totale dei Cretidi]
FROM Corsi;

-- La durata minima dei corsi
SELECT 
    MIN(Durata) AS [Durata minima dei corsi]
FROM Corsi;

SELECT 
    MAX(Durata) AS [Durata massima dei corsi]
FROM Corsi;


-- Report del corso
SELECT 
    COUNT(*) AS [Totale corsi],
    SUM(Crediti) AS [Totale Crediti],
    AVG(Crediti) AS [Media dei Crediti],
    MIN(Crediti) AS [Credito minimo],
    MAX(Crediti) AS [Credito massimo],
    AVG(Durata) AS [Durata media],
    SUM(Durata) AS [Totale Durata]
FROM Corsi;