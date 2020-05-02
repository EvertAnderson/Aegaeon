CREATE TABLE [yachaydi_admin].[Usuarios] (
    [id_Usuario] INT            IDENTITY (1, 1) NOT NULL,
    [Usuario]    NVARCHAR (80)  NULL,
    [Password]   NVARCHAR (50)  NOT NULL,
    [Email]      NVARCHAR (100) NOT NULL,
    CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED ([id_Usuario] ASC),
    CONSTRAINT [UC_Usuarios] UNIQUE NONCLUSTERED ([Email] ASC)
);

