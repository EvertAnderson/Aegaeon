CREATE TABLE [yachaydi_admin].[Pedido_Propuesta] (
    [IdPedido]   INT             NOT NULL,
    [IdNegocio]  INT             NOT NULL,
    [IdProducto] INT             NULL,
    [Cantidad]   INT             NOT NULL,
    [Precio]     DECIMAL (18, 4) NOT NULL,
    CONSTRAINT [PK_Pedido_Propuesta] PRIMARY KEY CLUSTERED ([IdPedido] ASC, [IdNegocio] ASC),
    CONSTRAINT [FK_Pedido_Propuesta_Negocio] FOREIGN KEY ([IdNegocio]) REFERENCES [yachaydi_admin].[Negocio] ([id_Negocio]),
    CONSTRAINT [FK_Pedido_Propuesta_Pedido] FOREIGN KEY ([IdPedido]) REFERENCES [yachaydi_admin].[Pedido] ([IdPedido])
);

