/*
=============================================================
Création de la base de données et des schémas
=============================================================
Objectif du script :
    Ce script crée une nouvelle base de données nommée 'DataWarehouse'.
    Il crée ensuite trois schémas dans cette base, selon
    l'architecture Medallion :
        - bronze : données brutes, importées telles quelles depuis les sources
        - silver : données nettoyées, standardisées et transformées
        - gold   : données finales, prêtes pour l'analyse et le reporting

Remarques :
    - À exécuter dans SQL Server Management Studio (SSMS),
      connecté à l'instance (ex. localhost\SQLEXPRESS).
    - Les mots-clés GO séparent les lots (batches) :
      CREATE SCHEMA doit être la première instruction de son lot.
=============================================================
*/

USE master;
GO

-- Création de la base de données 'DataWarehouse'
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Création des schémas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
