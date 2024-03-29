/*
   vendredi 24 février 201213:16:36
   Utilisateur : 
   Serveur : NATH-PC\SQLEXPRESS
   Base de données : HR
   Application : 
*/

/* Pour éviter les problèmes éventuels de perte de données, passez attentivement ce script en revue avant de l'exécuter en dehors du contexte du Concepteur de bases de données.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_Reservations
	(
	ReservationID ntext NULL,
	Nom ntext NULL,
	Prenom ntext NULL,
	adresse ntext NULL,
	telephone ntext NULL,
	email ntext NULL,
	datedebut datetime NULL,
	duree int NULL,
	typechambre ntext NULL,
	prix int NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_Reservations SET (LOCK_ESCALATION = TABLE)
GO
IF EXISTS(SELECT * FROM dbo.Reservations)
	 EXEC('INSERT INTO dbo.Tmp_Reservations (ReservationID, Nom, Prenom, adresse, telephone, datedebut, duree, typechambre, prix)
		SELECT ReservationID, Nom, Prenom, adresse, telephone, datedebut, duree, typechambre, prix FROM dbo.Reservations WITH (HOLDLOCK TABLOCKX)')
GO
DROP TABLE dbo.Reservations
GO
EXECUTE sp_rename N'dbo.Tmp_Reservations', N'Reservations', 'OBJECT' 
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Reservations', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Reservations', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Reservations', 'Object', 'CONTROL') as Contr_Per 