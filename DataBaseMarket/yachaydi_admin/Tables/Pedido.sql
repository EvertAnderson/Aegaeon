CREATE TABLE [yachaydi_admin].[Pedido] (
    [IdPedido]    INT            IDENTITY (1, 1) NOT NULL,
    [IdCliente]   INT            NOT NULL,
    [IdProducto]  INT            NULL,
    [Fecha]       DATETIME       NULL,
    [Nombre]      NVARCHAR (150) NOT NULL,
    [Descripcion] NVARCHAR (500) NULL,
    [Cantidad]    INT            NOT NULL,
    [Estado]      INT            NOT NULL,
    [Activo]      BIT            NOT NULL,
    CONSTRAINT [PK_Pedido] PRIMARY KEY CLUSTERED ([IdPedido] ASC)
);

