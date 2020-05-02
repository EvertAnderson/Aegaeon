CREATE TABLE [yachaydi_admin].[Roles] (
    [id_Rol]     INT           IDENTITY (1, 1) NOT NULL,
    [nombre_Rol] NVARCHAR (14) NULL,
    CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED ([id_Rol] ASC)
);

