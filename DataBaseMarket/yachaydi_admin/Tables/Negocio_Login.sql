CREATE TABLE [yachaydi_admin].[Negocio_Login] (
    [id_Negocio] INT NOT NULL,
    [id_Usuario] INT NOT NULL,
    CONSTRAINT [PK_Negocio_Login] PRIMARY KEY CLUSTERED ([id_Negocio] ASC, [id_Usuario] ASC),
    CONSTRAINT [AK_Negocio_Login_Negocio] FOREIGN KEY ([id_Negocio]) REFERENCES [yachaydi_admin].[Negocio] ([id_Negocio])
);

