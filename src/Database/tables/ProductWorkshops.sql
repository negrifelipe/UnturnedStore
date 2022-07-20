﻿CREATE TABLE dbo.ProductWorkshops
(
	Id INT IDENTITY(1, 1) NOT NULL CONSTRAINT PK_ProductWorkshops PRIMARY KEY,
	ProductId INT NOT NULL CONSTRAINT FK_ProductWorkshops_ProductId FOREIGN KEY REFERENCES dbo.Products(Id),
	WorkshopFileId BIGINT NOT NULL CONSTRAINT UK_ProductWorkshops_WorkshopFileId DEFAULT 0,
	IsRequired BIT NOT NULL CONSTRAINT DF_ProductWorkshops_IsRequired DEFAULT 0,
	UNIQUE (ProductId, WorkshopFileId)
)
