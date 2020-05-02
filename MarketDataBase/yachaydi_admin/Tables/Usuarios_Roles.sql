CREATE TABLE [yachaydi_admin].[Usuarios_Roles] (
    [id_Usuario] INT NOT NULL,
    [id_Rol]     INT NOT NULL,
    CONSTRAINT [PK_Usuarios_Roles] PRIMARY KEY CLUSTERED ([id_Usuario] ASC, [id_Rol] ASC),
    CONSTRAINT [AK_Usuarios_Roles_Rol] FOREIGN KEY ([id_Rol]) REFERENCES [yachaydi_admin].[Roles] ([id_Rol]),
    CONSTRAINT [AK_Usuarios_Roles_Usuarios] FOREIGN KEY ([id_Usuario]) REFERENCES [yachaydi_admin].[Usuarios] ([id_Usuario])
);

