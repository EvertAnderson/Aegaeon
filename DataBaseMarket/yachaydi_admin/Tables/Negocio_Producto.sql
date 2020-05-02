CREATE TABLE [yachaydi_admin].[Negocio_Producto] (
    [id_Negocio]  INT            NOT NULL,
    [id_Producto] INT            NOT NULL,
    [Precio]      DECIMAL (8, 2) NOT NULL,
    CONSTRAINT [PK_Negocio_Producto] PRIMARY KEY CLUSTERED ([id_Negocio] ASC, [id_Producto] ASC),
    CONSTRAINT [AK_Negocio_NP] FOREIGN KEY ([id_Negocio]) REFERENCES [yachaydi_admin].[Negocio] ([id_Negocio]),
    CONSTRAINT [AK_Producto_NP] FOREIGN KEY ([id_Producto]) REFERENCES [yachaydi_admin].[Producto] ([id_Producto])
);

