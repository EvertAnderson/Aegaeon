CREATE TABLE [yachaydi_admin].[Producto] (
    [id_Producto] INT            IDENTITY (1, 1) NOT NULL,
    [Nombre]      NVARCHAR (150) NULL,
    CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED ([id_Producto] ASC)
);

