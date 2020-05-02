CREATE TABLE [yachaydi_admin].[PalabrasClave] (
    [id_PalabrasClave]       INT           IDENTITY (1, 1) NOT NULL,
    [caracter_PalabrasClave] NCHAR (1)     NULL,
    [texto_PalabrasClave]    NVARCHAR (50) NULL,
    CONSTRAINT [PK_PalabrasClave] PRIMARY KEY CLUSTERED ([id_PalabrasClave] ASC)
);

