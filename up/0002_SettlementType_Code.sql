ALTER TABLE SettlementType
ADD Code CHAR(1) NULL
GO

UPDATE SettlementType
SET Code = LEFT(Name, 1)
GO

ALTER TABLE SettlementType
ALTER COLUMN Code CHAR(1) NOT NULL
