CREATE TABLE [yachaydi_admin].[Horario_Negocio] (
    [id_Negocio]     INT           NOT NULL,
    [dia_Laboral]    TINYINT       NOT NULL,
    [dia_nombre]     NVARCHAR (10) NULL,
    [Hora_Inicio]    TINYINT       NOT NULL,
    [Minutos_Inicio] TINYINT       NOT NULL,
    [Hora_Fin]       TINYINT       NOT NULL,
    [Minutos_Fin]    TINYINT       NOT NULL,
    CONSTRAINT [PK_Horario_Negocio] PRIMARY KEY CLUSTERED ([id_Negocio] ASC, [dia_Laboral] ASC),
    CONSTRAINT [AK_Horario_Negocio] FOREIGN KEY ([id_Negocio]) REFERENCES [yachaydi_admin].[Negocio] ([id_Negocio])
);

