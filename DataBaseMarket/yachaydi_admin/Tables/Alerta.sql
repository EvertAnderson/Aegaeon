CREATE TABLE [yachaydi_admin].[Alerta] (
    [IdAlerta]    INT            IDENTITY (1, 1) NOT NULL,
    [IdCliente]   INT            NOT NULL,
    [IdNegocio]   INT            NULL,
    [IdProducto]  INT            NULL,
    [Fecha]       DATETIME       NULL,
    [Nombre]      NVARCHAR (150) NOT NULL,
    [Descripcion] NVARCHAR (500) NULL,
    [Cantidad]    INT            NOT NULL,
    [Tomado]      BIT            NULL,
    [Estado]      BIT            NULL,
    CONSTRAINT [PK_Alerta] PRIMARY KEY CLUSTERED ([IdAlerta] ASC),
    CONSTRAINT [FK_Alerta_Negocio] FOREIGN KEY ([IdNegocio]) REFERENCES [yachaydi_admin].[Negocio] ([id_Negocio])
);

