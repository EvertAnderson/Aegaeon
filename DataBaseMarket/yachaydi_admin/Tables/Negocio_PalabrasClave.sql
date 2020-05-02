CREATE TABLE [yachaydi_admin].[Negocio_PalabrasClave] (
    [id_Negocio]       INT NOT NULL,
    [id_PalabrasClave] INT NOT NULL,
    CONSTRAINT [PK_Negocio_PalabrasClave] PRIMARY KEY CLUSTERED ([id_Negocio] ASC, [id_PalabrasClave] ASC),
    CONSTRAINT [AK_Negocio_NegPalCl] FOREIGN KEY ([id_Negocio]) REFERENCES [yachaydi_admin].[Negocio] ([id_Negocio]),
    CONSTRAINT [AK_PalabrasClave_NegPalCl] FOREIGN KEY ([id_PalabrasClave]) REFERENCES [yachaydi_admin].[PalabrasClave] ([id_PalabrasClave])
);

