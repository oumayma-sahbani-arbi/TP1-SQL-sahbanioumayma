SELECT * FROM [MonEntreprise].[dbo].[Vente];
SELECT DISTINCT [ClientID] FROM [MonEntreprise].[dbo].[Vente];

SELECT  QuantitesVendues FROM [MonEntreprise].[dbo].[Vente]
WHERE [ClientID] = 'CLIENT_1';

SELECT * FROM [MonEntreprise].[dbo].[Vente]
WHERE [ClientID] in ('CLIENT_1', 'CLIENT_2');

SELECT * FROM [MonEntreprise].[dbo].[Vente]
WHERE [ClientID] NOT IN ('Client_1','Client_2','Client_3');

SELECT * FROM [MonEntreprise].[dbo].[Vente]
WHERE [VenteID] LIKE '10%';

SELECT * FROM [MonEntreprise].[dbo].[Vente]
WHERE [ClientID]='CLIENT_1' AND [ProduitID]='PROD_1'
ORDER BY [VentesEuro] DESC;

INSERT INTO [MonEntreprise].[dbo].[Vente]
([VenteID],[ClientID],[ProduitID],[DateFacturation],[QuantitesVendues],
[VentesEuro])
VALUES (101,'CLIENT_4','PROD_2','2026-01-25',10,250.00);

UPDATE [MonEntreprise].[dbo].[Vente]
SET [VentesEuro] = 300
WHERE [VenteID] = 101;

DELETE FROM [MonEntreprise].[dbo].[Vente]
WHERE [VenteID] = 101;

