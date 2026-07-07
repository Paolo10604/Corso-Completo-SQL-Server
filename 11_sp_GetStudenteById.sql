-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
uSE ScuolaDB;
GO

-- =============================================
-- Author:		Paolo
-- Create date: 07/07/2026
-- Description:	Restituisce uno studente in vase all'id passata nel parametro
-- =============================================


--ALTER PROCEDURE GetStudenteById modificare la procedure
CREATE PROCEDURE sp_GetStudenteById
    -- Add the parameters for the stored procedure here
    @studenteId INT
AS
BEGIN
    SELECT
        StudenteId as [Matricola],
        Nome + ' ' + Cognome as [Nome Completo dello studente],
        ISNULL(Email, 'Non definita') AS Email,
        CodiceFiscale,
        ISNULL(CONVERT(NVARCHAR, DataNascita, 109), 'N/D') as [Data di Nascita],
        ISNULL(Telefono, 0) as Telefono
    FROM Studenti
    WHERE StudenteId = @studenteId
END
GO

-- Esecuzione della procedure
Exec sp_GetStudenteById 5;
Exec sp_GetStudenteById @studenteId 5;