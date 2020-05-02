CREATE TABLE [yachaydi_admin].[Negocio] (
    [id_Negocio]         INT             IDENTITY (1, 1) NOT NULL,
    [email_Negocio]      NVARCHAR (100)  NULL,
    [Nombre]             NVARCHAR (100)  NOT NULL,
    [Telefono]           BIGINT          NULL,
    [Celular]            BIGINT          NULL,
    [Direccion_texto]    NVARCHAR (200)  NOT NULL,
    [Referencia]         NVARCHAR (300)  NULL,
    [Direccion_Latitud]  NVARCHAR (50)   NULL,
    [Direccion_Longitud] NVARCHAR (50)   NULL,
    [Descripcion]        NVARCHAR (1000) NULL,
    CONSTRAINT [PK_Negocio] PRIMARY KEY CLUSTERED ([id_Negocio] ASC)
);

