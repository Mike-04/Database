CREATE TABLE Versiuni(
	VersionNo int PRIMARY KEY,
	StoredProcedure varchar(100)
);

ALTER TABLE Mancaruri
ALTER COLUMN pret DECIMAL(10,2)

ALTER TABLE Mancaruri
ALTER COLUMN pret FLOAT

ALTER TABLE TipuriMancaruri
ADD CONSTRAINT NonVeganDefault DEFAULT 0 FOR vegan

ALTER TABLE TipuriMancaruri
DROP CONSTRAINT NonVeganDefault

CREATE TABLE Feedback(
	id_feedback INT PRIMARY KEY IDENTITY,
	mesaj varchar(255)
)

DROP TABLE Feedback

ALTER TABLE Feedback
ADD fid_comanda INT;

ALTER TABLE Feedback
DROP COLUMN fid_comanda

ALTER TABLE Feedback
ADD CONSTRAINT FID_PK FOREIGN KEY (fid_comanda) REFERENCES Comenzi(id_comanda);

ALTER TABLE Feedback
DROP CONSTRAINT FID_PK;

CREATE PROCEDURE PretDecimal AS
BEGIN
    ALTER TABLE Mancaruri
	ALTER COLUMN pret DECIMAL(10,2)
	PRINT 'pret shimbat in decimal';
    INSERT INTO Versiuni (VersionNo,StoredProcedure) VALUES (1,'PretDecial');
END;

CREATE PROCEDURE uPretDecimal AS
BEGIN
    ALTER TABLE Mancaruri
	ALTER COLUMN pret FLOAT
	PRINT 'pret shimbat in float';
    DELETE FROM Versiuni WHERE VersionNo = 1;
END;

CREATE PROCEDURE NonVeganDef AS
BEGIN
    ALTER TABLE TipuriMancaruri
	ADD CONSTRAINT NonVeganDefault DEFAULT 0 FOR vegan
	PRINT 'default tip mancare=nonvegan';
    INSERT INTO Versiuni (VersionNo,StoredProcedure) VALUES (2,'NonVeganDefault');
END;

CREATE PROCEDURE uNonVeganDef AS
BEGIN
    ALTER TABLE TipuriMancaruri
	DROP CONSTRAINT NonVeganDefault
	PRINT 'default tip mancare!=nonvegan';
    DELETE FROM Versiuni WHERE VersionNo = 2;
END;


CREATE PROCEDURE CrFeedback AS
BEGIN
    CREATE TABLE Feedback(
	id_feedback INT PRIMARY KEY IDENTITY,
	mesaj varchar(255)
	)
	PRINT 'created Feedback table';
    INSERT INTO Versiuni (VersionNo,StoredProcedure) VALUES (3,'CrFeedback');
END;

CREATE PROCEDURE uCrFeedback AS
BEGIN
    DROP TABLE Feedback
	PRINT 'deleted Feedback table';
    DELETE FROM Versiuni WHERE VersionNo = 3;
END;

CREATE PROCEDURE FeedbackOrder AS
BEGIN
    ALTER TABLE Feedback
	ADD fid_comanda INT;
	PRINT 'added Feedback order'
    INSERT INTO Versiuni (VersionNo,StoredProcedure) VALUES (4,'FeedbackOrder');
END;

CREATE PROCEDURE uFeedbackOrder AS
BEGIN
	ALTER TABLE Feedback
	DROP COLUMN fid_comanda
	PRINT 'removed Feedback order'
    DELETE FROM Versiuni WHERE VersionNo = 4;
END;

CREATE PROCEDURE FKFeedbackOrder AS
BEGIN
    ALTER TABLE Feedback
	ADD CONSTRAINT FID_PK FOREIGN KEY (fid_comanda) REFERENCES Comenzi(id_comanda);
	PRINT 'added Feedback order FK'
    INSERT INTO Versiuni (VersionNo,StoredProcedure) VALUES (5,'FKFeedbackOrder');
END;

CREATE PROCEDURE uFKFeedbackOrder AS
BEGIN
	ALTER TABLE Feedback
	DROP CONSTRAINT FID_PK;
	PRINT 'removed Feedback order FK'
    DELETE FROM Versiuni WHERE VersionNo = 5;
END;

CREATE PROCEDURE SchimbaVersiuneDB (@versiune_target INT) AS
BEGIN
    DECLARE @versiune_curenta INT;
    SET @versiune_curenta = ISNULL((SELECT MAX(VersionNo) FROM Versiuni), 0);
    PRINT 'Versiunea curenta: ' + CAST(@versiune_curenta AS NVARCHAR(10));

    -- Dacă versiunea curentă este mai mică decât versiunea țintă, aplicăm modificările
    IF @versiune_curenta < @versiune_target
    BEGIN
        IF @versiune_curenta < 1 AND @versiune_target >= 1
            EXEC PretDecimal;
        
        IF @versiune_curenta < 2 AND @versiune_target >= 2
            EXEC NonVeganDef;
        
        IF @versiune_curenta < 3 AND @versiune_target >= 3
            EXEC CrFeedback;

        IF @versiune_curenta < 4 AND @versiune_target >= 4
            EXEC FeedbackOrder;

        IF @versiune_curenta < 5 AND @versiune_target >= 5
            EXEC FKFeedbackOrder;
    END

    -- Dacă versiunea curentă este mai mare decât versiunea țintă, anulăm modificările
    ELSE IF @versiune_curenta > @versiune_target
    BEGIN
        IF @versiune_curenta >= 5 AND @versiune_target < 5
            EXEC uFKFeedbackOrder;
        
        IF @versiune_curenta >= 4 AND @versiune_target < 4
            EXEC uFeedbackOrder;

        IF @versiune_curenta >= 3 AND @versiune_target < 3
            EXEC uCrFeedback;

        IF @versiune_curenta >= 2 AND @versiune_target < 2
            EXEC uNonVeganDef;

        IF @versiune_curenta >= 1 AND @versiune_target < 1
            EXEC uPretDecimal;
    END

    PRINT 'Versiunea bazei de date a fost schimbată cu succes la ' + CAST(@versiune_target AS NVARCHAR(10));
END;
GO

select * from Versiuni