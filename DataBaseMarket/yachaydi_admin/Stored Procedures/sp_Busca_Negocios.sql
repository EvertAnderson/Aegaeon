CREATE PROCEDURE [yachaydi_admin].[sp_Busca_Negocios]  @Latitud FLOAT, @Longitud FLOAT, @Palabra VARCHAR(50)
AS

DECLARE @nvPalabra NVARCHAR(50)

SET @nvPalabra = Cast( @Palabra as NVARCHAR(50) )
--SET @nvPalabra = CONVERT(NVARCHAR(50), @Palabra )

select DISTINCT
	--N.id_Negocio
	 N.Nombre
	, N.Direccion_Latitud
	, N.Direccion_Longitud
	, N.nvPalabra
FROM
	(
		SELECT
			B.id_Negocio
			, B.Nombre
			, B.Direccion_Latitud
			, B.Direccion_Longitud
			, @nvPalabra as nvPalabra
		FROM
			(
				SELECT
					id_Negocio
					, Nombre
					, Direccion_Latitud
					, Direccion_Longitud
					, ( 6371 * acos( cos( radians(@Latitud) )  
					* cos( radians( CAST(Direccion_Latitud as float) ) ) 
					* cos( radians( CAST(Direccion_Longitud as float) ) - radians(@Longitud) ) + sin( radians(@Latitud) ) 
					* sin(radians(CAST(Direccion_Latitud as float))) ) ) AS distancia 
				FROM
					Negocio
			) B
		WHERE
			B.distancia <= 1.5
	) N
	LEFT join Negocio_PalabrasClave NPC ON N.id_Negocio = NPC.id_Negocio
	LEFT join PalabrasClave PC ON PC.[id_PalabrasClave] = NPC.[id_PalabrasClave]
	LEFT join Negocio_Producto NP ON NP.id_Negocio = N.id_Negocio
	LEFT join Producto P ON P.id_Producto = NP.id_Producto
WHERE
	--(lower(PC.[texto_PalabrasClave]) LIKE '%bodega%' or lower(N.Nombre) like '%bodega%' or P.Nombre like '%bodega%')
	(lower(PC.[texto_PalabrasClave]) LIKE '%' + N.nvPalabra + '%' or lower(N.Nombre) like '%' + N.nvPalabra + '%' or P.Nombre like '%' + N.nvPalabra + '%')
	--lower(N.Nombre) like  '%' + N.nvPalabra + '%'
	--','+@InList+',' LIKE '%,'+CAST(Id AS varchar)+',%'
--SELECT @@TRANCOUNT

