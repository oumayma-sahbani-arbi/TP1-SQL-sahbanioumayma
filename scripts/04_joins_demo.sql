--S lection de la base de donn es
USE Jointure;
GO--=====================================================--1. Cr ation des tables--TableA : contient des identifiants num riques
CREATE TABLE dbo.TableA(
TableA_ID tinyint NULL
);
GO--TableB : contient des identifiants num riques
CREATE TABLE dbo.TableB(
TableB_ID tinyint NULL
);
GO--TableC : contient ID + Prenom
CREATE TABLE dbo.TableC(
ID tinyint NULL,
Prenom varchar(50) NULL
);
GO--TableD : contient ID + Prenom
CREATE TABLE dbo.TableD(
ID tinyint NULL,
Prenom varchar(50) NULL);
GO--=====================================================--2. Insertion des donn es
INSERT INTO dbo.TableA
VALUES (’1’),(’2’),(’3’),(’50’),(’70’),(NULL);
GO
INSERT INTO dbo.TableB
VALUES (’1’),(’2’),(’3’),(’40’),(’60’);
GO
INSERT INTO dbo.TableC
VALUES
(’1’,’Victor’),
(’2’,’Marie’),
(’3’,’Pierre’),
(’4’,’Esther’);
GO
INSERT INTO dbo.TableD
VALUES
(’4’,’Esther’),
(’5’,’Jonathan’),
(’6’,’Lucie’);
GO--=====================================================--3. Jointures entre TableA et TableB--LEFT JOIN : toutes les lignes de TableA
SELECT TableA_ID, TableB_ID
FROM dbo.TableA
LEFT JOIN dbo.TableB
ON dbo.TableA.TableA_ID = dbo.TableB.TableB_ID;
--RIGHT JOIN : toutes les lignes de TableB
SELECT TableA_ID, TableB_ID
FROM dbo.TableA
RIGHT JOIN dbo.TableB
ON dbo.TableA.TableA_ID = dbo.TableB.TableB_ID;--INNER JOIN : uniquement les correspondances
SELECT TableA_ID, TableB_ID
FROM dbo.TableA INNER JOIN dbo.TableB
ON dbo.TableA.TableA_ID = dbo.TableB.TableB_ID;--FULL OUTER JOIN : toutes les lignes des deux tables
SELECT TableA_ID, TableB_ID
FROM dbo.TableA
FULL OUTER JOIN dbo.TableB
ON dbo.TableA.TableA_ID = dbo.TableB.TableB_ID;--CROSS JOIN : produit cart sien .( retourne toutes les
combinaisons possibles entre les lignes de deux tables. Il n y
a aucune condition de jointure. )
SELECT TableA_ID, TableB_ID
FROM dbo.TableA
CROSS JOIN dbo.TableB;
GO